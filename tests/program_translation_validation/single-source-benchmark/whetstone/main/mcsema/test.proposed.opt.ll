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

declare %struct.Memory* @sub_4006b0.strncmp_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400730.atol_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400710.fprintf_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400720.time_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4015e0.POUT(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401650.PA(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400740.sin_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400700.cos_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4006d0.atan_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401780.P3(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401800.P0(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4006f0.log_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4006c0.exp_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400750.sqrt_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4006e0.printf_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @main(%struct.State* noalias, i64, %struct.Memory* noalias readnone) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -328
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 320
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
  %39 = add i64 %7, -12
  %40 = add i64 %10, 17
  store i64 %40, i64* %3, align 8
  %41 = inttoptr i64 %39 to i32*
  store i32 0, i32* %41, align 4
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %42 to i32*
  %43 = load i64, i64* %RBP.i, align 8
  %44 = add i64 %43, -8
  %45 = load i32, i32* %EDI.i, align 4
  %46 = load i64, i64* %3, align 8
  %47 = add i64 %46, 3
  store i64 %47, i64* %3, align 8
  %48 = inttoptr i64 %44 to i32*
  store i32 %45, i32* %48, align 4
  %RSI.i1211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %49 = load i64, i64* %RBP.i, align 8
  %50 = add i64 %49, -16
  %51 = load i64, i64* %RSI.i1211, align 8
  %52 = load i64, i64* %3, align 8
  %53 = add i64 %52, 4
  store i64 %53, i64* %3, align 8
  %54 = inttoptr i64 %50 to i64*
  store i64 %51, i64* %54, align 8
  %55 = load i64, i64* %RBP.i, align 8
  %56 = add i64 %55, -184
  %57 = load i64, i64* %3, align 8
  %58 = add i64 %57, 11
  store i64 %58, i64* %3, align 8
  %59 = inttoptr i64 %56 to i64*
  store i64 100000, i64* %59, align 8
  %60 = load i64, i64* %RBP.i, align 8
  %61 = add i64 %60, -208
  %62 = load i64, i64* %3, align 8
  %63 = add i64 %62, 10
  store i64 %63, i64* %3, align 8
  %64 = inttoptr i64 %61 to i32*
  store i32 0, i32* %64, align 4
  %65 = load i64, i64* %RBP.i, align 8
  %66 = add i64 %65, -172
  %67 = load i64, i64* %3, align 8
  %68 = add i64 %67, 10
  store i64 %68, i64* %3, align 8
  %69 = inttoptr i64 %66 to i32*
  store i32 1, i32* %69, align 4
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i1202 = getelementptr inbounds %union.anon, %union.anon* %70, i64 0, i32 0
  %EAX.i1199 = bitcast %union.anon* %70 to i32*
  %RDX.i1192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RCX.i1188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI.i1185 = getelementptr inbounds %union.anon, %union.anon* %42, i64 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_400888

block_.L_400888:                                  ; preds = %block_.L_40095d, %entry
  %71 = phi i64 [ %.pre, %entry ], [ %293, %block_.L_40095d ]
  %72 = load i64, i64* %RBP.i, align 8
  %73 = add i64 %72, -172
  %74 = add i64 %71, 6
  store i64 %74, i64* %3, align 8
  %75 = inttoptr i64 %73 to i32*
  %76 = load i32, i32* %75, align 4
  %77 = zext i32 %76 to i64
  store i64 %77, i64* %RAX.i1202, align 8
  %78 = add i64 %72, -8
  %79 = add i64 %71, 9
  store i64 %79, i64* %3, align 8
  %80 = inttoptr i64 %78 to i32*
  %81 = load i32, i32* %80, align 4
  %82 = sub i32 %76, %81
  %83 = icmp ult i32 %76, %81
  %84 = zext i1 %83 to i8
  store i8 %84, i8* %14, align 1
  %85 = and i32 %82, 255
  %86 = tail call i32 @llvm.ctpop.i32(i32 %85)
  %87 = trunc i32 %86 to i8
  %88 = and i8 %87, 1
  %89 = xor i8 %88, 1
  store i8 %89, i8* %21, align 1
  %90 = xor i32 %81, %76
  %91 = xor i32 %90, %82
  %92 = lshr i32 %91, 4
  %93 = trunc i32 %92 to i8
  %94 = and i8 %93, 1
  store i8 %94, i8* %26, align 1
  %95 = icmp eq i32 %82, 0
  %96 = zext i1 %95 to i8
  store i8 %96, i8* %29, align 1
  %97 = lshr i32 %82, 31
  %98 = trunc i32 %97 to i8
  store i8 %98, i8* %32, align 1
  %99 = lshr i32 %76, 31
  %100 = lshr i32 %81, 31
  %101 = xor i32 %100, %99
  %102 = xor i32 %97, %99
  %103 = add nuw nsw i32 %102, %101
  %104 = icmp eq i32 %103, 2
  %105 = zext i1 %104 to i8
  store i8 %105, i8* %38, align 1
  %106 = icmp ne i8 %98, 0
  %107 = xor i1 %106, %104
  %.v = select i1 %107, i64 15, i64 233
  %108 = add i64 %71, %.v
  store i64 %108, i64* %3, align 8
  br i1 %107, label %block_400897, label %block_.L_400971

block_400897:                                     ; preds = %block_.L_400888
  store i64 4200760, i64* %RSI.i1211, align 8
  store i64 2, i64* %RAX.i1202, align 8
  store i64 2, i64* %RDX.i1192, align 8
  %109 = add i64 %72, -16
  %110 = add i64 %108, 21
  store i64 %110, i64* %3, align 8
  %111 = inttoptr i64 %109 to i64*
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %RCX.i1188, align 8
  %113 = add i64 %108, 28
  store i64 %113, i64* %3, align 8
  %114 = load i32, i32* %75, align 4
  %115 = sext i32 %114 to i64
  store i64 %115, i64* %RDI.i1185, align 8
  %116 = shl nsw i64 %115, 3
  %117 = add i64 %116, %112
  %118 = add i64 %108, 32
  store i64 %118, i64* %3, align 8
  %119 = inttoptr i64 %117 to i64*
  %120 = load i64, i64* %119, align 8
  store i64 %120, i64* %RDI.i1185, align 8
  %121 = add i64 %108, -487
  %122 = add i64 %108, 37
  %123 = load i64, i64* %6, align 8
  %124 = add i64 %123, -8
  %125 = inttoptr i64 %124 to i64*
  store i64 %122, i64* %125, align 8
  store i64 %124, i64* %6, align 8
  store i64 %121, i64* %3, align 8
  %call2_4008b7 = tail call %struct.Memory* @sub_4006b0.strncmp_plt(%struct.State* nonnull %0, i64 %121, %struct.Memory* %2)
  %126 = load i32, i32* %EAX.i1199, align 4
  %127 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %128 = and i32 %126, 255
  %129 = tail call i32 @llvm.ctpop.i32(i32 %128)
  %130 = trunc i32 %129 to i8
  %131 = and i8 %130, 1
  %132 = xor i8 %131, 1
  store i8 %132, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %133 = icmp eq i32 %126, 0
  %134 = zext i1 %133 to i8
  store i8 %134, i8* %29, align 1
  %135 = lshr i32 %126, 31
  %136 = trunc i32 %135 to i8
  store i8 %136, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v160 = select i1 %133, i64 36, i64 9
  %137 = add i64 %127, %.v160
  store i64 %137, i64* %3, align 8
  %.pre125 = load i64, i64* %RBP.i, align 8
  br i1 %133, label %block_.L_4008e0, label %block_4008c5

block_4008c5:                                     ; preds = %block_400897
  %138 = add i64 %.pre125, -16
  %139 = add i64 %137, 4
  store i64 %139, i64* %3, align 8
  %140 = inttoptr i64 %138 to i64*
  %141 = load i64, i64* %140, align 8
  store i64 %141, i64* %RAX.i1202, align 8
  %142 = add i64 %.pre125, -172
  %143 = add i64 %137, 11
  store i64 %143, i64* %3, align 8
  %144 = inttoptr i64 %142 to i32*
  %145 = load i32, i32* %144, align 4
  %146 = sext i32 %145 to i64
  store i64 %146, i64* %RCX.i1188, align 8
  %147 = shl nsw i64 %146, 3
  %148 = add i64 %147, %141
  %149 = add i64 %137, 15
  store i64 %149, i64* %3, align 8
  %150 = inttoptr i64 %148 to i64*
  %151 = load i64, i64* %150, align 8
  store i64 %151, i64* %RAX.i1202, align 8
  %152 = add i64 %137, 18
  store i64 %152, i64* %3, align 8
  %153 = inttoptr i64 %151 to i8*
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i64
  %156 = and i64 %155, 4294967295
  store i64 %156, i64* %RDX.i1192, align 8
  %157 = sext i8 %154 to i32
  %158 = add nsw i32 %157, -99
  %159 = icmp ult i8 %154, 99
  %160 = zext i1 %159 to i8
  store i8 %160, i8* %14, align 1
  %161 = and i32 %158, 255
  %162 = tail call i32 @llvm.ctpop.i32(i32 %161)
  %163 = trunc i32 %162 to i8
  %164 = and i8 %163, 1
  %165 = xor i8 %164, 1
  store i8 %165, i8* %21, align 1
  %166 = xor i32 %158, %157
  %167 = lshr i32 %166, 4
  %168 = trunc i32 %167 to i8
  %169 = and i8 %168, 1
  store i8 %169, i8* %26, align 1
  %170 = icmp eq i32 %158, 0
  %171 = zext i1 %170 to i8
  store i8 %171, i8* %29, align 1
  %172 = lshr i32 %158, 31
  %173 = trunc i32 %172 to i8
  store i8 %173, i8* %32, align 1
  %174 = lshr i32 %157, 31
  %175 = xor i32 %172, %174
  %176 = add nuw nsw i32 %175, %174
  %177 = icmp eq i32 %176, 2
  %178 = zext i1 %177 to i8
  store i8 %178, i8* %38, align 1
  %.v161 = select i1 %170, i64 27, i64 42
  %179 = add i64 %137, %.v161
  store i64 %179, i64* %3, align 8
  br i1 %170, label %block_.L_4008e0, label %block_.L_4008ef

block_.L_4008e0:                                  ; preds = %block_400897, %block_4008c5
  %180 = phi i64 [ %179, %block_4008c5 ], [ %137, %block_400897 ]
  %181 = add i64 %.pre125, -208
  %182 = add i64 %180, 10
  store i64 %182, i64* %3, align 8
  %183 = inttoptr i64 %181 to i32*
  store i32 1, i32* %183, align 4
  %184 = load i64, i64* %3, align 8
  %185 = add i64 %184, 115
  br label %block_.L_40095d

block_.L_4008ef:                                  ; preds = %block_4008c5
  %186 = add i64 %179, 4
  store i64 %186, i64* %3, align 8
  %187 = load i64, i64* %140, align 8
  store i64 %187, i64* %RAX.i1202, align 8
  %188 = add i64 %179, 11
  store i64 %188, i64* %3, align 8
  %189 = load i32, i32* %144, align 4
  %190 = sext i32 %189 to i64
  store i64 %190, i64* %RCX.i1188, align 8
  %191 = shl nsw i64 %190, 3
  %192 = add i64 %191, %187
  %193 = add i64 %179, 15
  store i64 %193, i64* %3, align 8
  %194 = inttoptr i64 %192 to i64*
  %195 = load i64, i64* %194, align 8
  store i64 %195, i64* %RDI.i1185, align 8
  %196 = add i64 %179, -447
  %197 = add i64 %179, 20
  %198 = load i64, i64* %6, align 8
  %199 = add i64 %198, -8
  %200 = inttoptr i64 %199 to i64*
  store i64 %197, i64* %200, align 8
  store i64 %199, i64* %6, align 8
  store i64 %196, i64* %3, align 8
  %call2_4008fe = tail call %struct.Memory* @sub_400730.atol_plt(%struct.State* nonnull %0, i64 %196, %struct.Memory* %2)
  %201 = load i64, i64* %RAX.i1202, align 8
  %202 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %203 = trunc i64 %201 to i32
  %204 = and i32 %203, 255
  %205 = tail call i32 @llvm.ctpop.i32(i32 %204)
  %206 = trunc i32 %205 to i8
  %207 = and i8 %206, 1
  %208 = xor i8 %207, 1
  store i8 %208, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %209 = icmp eq i64 %201, 0
  %210 = zext i1 %209 to i8
  store i8 %210, i8* %29, align 1
  %211 = lshr i64 %201, 63
  %212 = trunc i64 %211 to i8
  store i8 %212, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %213 = icmp ne i8 %212, 0
  %214 = or i1 %209, %213
  %.v162 = select i1 %214, i64 42, i64 10
  %215 = add i64 %202, %.v162
  store i64 %215, i64* %3, align 8
  br i1 %214, label %block_.L_40092d, label %block_40090d

block_40090d:                                     ; preds = %block_.L_4008ef
  %216 = load i64, i64* %RBP.i, align 8
  %217 = add i64 %216, -16
  %218 = add i64 %215, 4
  store i64 %218, i64* %3, align 8
  %219 = inttoptr i64 %217 to i64*
  %220 = load i64, i64* %219, align 8
  store i64 %220, i64* %RAX.i1202, align 8
  %221 = add i64 %216, -172
  %222 = add i64 %215, 11
  store i64 %222, i64* %3, align 8
  %223 = inttoptr i64 %221 to i32*
  %224 = load i32, i32* %223, align 4
  %225 = sext i32 %224 to i64
  store i64 %225, i64* %RCX.i1188, align 8
  %226 = shl nsw i64 %225, 3
  %227 = add i64 %226, %220
  %228 = add i64 %215, 15
  store i64 %228, i64* %3, align 8
  %229 = inttoptr i64 %227 to i64*
  %230 = load i64, i64* %229, align 8
  store i64 %230, i64* %RDI.i1185, align 8
  %231 = add i64 %215, -477
  %232 = add i64 %215, 20
  %233 = load i64, i64* %6, align 8
  %234 = add i64 %233, -8
  %235 = inttoptr i64 %234 to i64*
  store i64 %232, i64* %235, align 8
  store i64 %234, i64* %6, align 8
  store i64 %231, i64* %3, align 8
  %call2_40091c = tail call %struct.Memory* @sub_400730.atol_plt(%struct.State* nonnull %0, i64 %231, %struct.Memory* %2)
  %236 = load i64, i64* %RBP.i, align 8
  %237 = add i64 %236, -184
  %238 = load i64, i64* %RAX.i1202, align 8
  %239 = load i64, i64* %3, align 8
  %240 = add i64 %239, 7
  store i64 %240, i64* %3, align 8
  %241 = inttoptr i64 %237 to i64*
  store i64 %238, i64* %241, align 8
  %242 = load i64, i64* %3, align 8
  %243 = add i64 %242, 53
  store i64 %243, i64* %3, align 8
  br label %block_.L_40095d

block_.L_40092d:                                  ; preds = %block_.L_4008ef
  store i64 4200763, i64* %RSI.i1211, align 8
  %244 = load i64, i64* inttoptr (i64 6299776 to i64*), align 128
  store i64 %244, i64* %RDI.i1185, align 8
  %AL.i1126 = bitcast %union.anon* %70 to i8*
  store i8 0, i8* %AL.i1126, align 1
  %245 = add i64 %215, -541
  %246 = add i64 %215, 25
  %247 = load i64, i64* %6, align 8
  %248 = add i64 %247, -8
  %249 = inttoptr i64 %248 to i64*
  store i64 %246, i64* %249, align 8
  store i64 %248, i64* %6, align 8
  store i64 %245, i64* %3, align 8
  %call2_400941 = tail call %struct.Memory* @sub_400710.fprintf_plt(%struct.State* nonnull %0, i64 %245, %struct.Memory* %2)
  %250 = load i64, i64* %RBP.i, align 8
  %251 = add i64 %250, -4
  %252 = load i64, i64* %3, align 8
  %253 = add i64 %252, 7
  store i64 %253, i64* %3, align 8
  %254 = inttoptr i64 %251 to i32*
  store i32 1, i32* %254, align 4
  %255 = load i64, i64* %RBP.i, align 8
  %256 = add i64 %255, -212
  %257 = load i32, i32* %EAX.i1199, align 4
  %258 = load i64, i64* %3, align 8
  %259 = add i64 %258, 6
  store i64 %259, i64* %3, align 8
  %260 = inttoptr i64 %256 to i32*
  store i32 %257, i32* %260, align 4
  %261 = load i64, i64* %3, align 8
  %262 = add i64 %261, 3197
  store i64 %262, i64* %3, align 8
  br label %block_.L_4015d0

block_.L_40095d:                                  ; preds = %block_40090d, %block_.L_4008e0
  %storemerge = phi i64 [ %185, %block_.L_4008e0 ], [ %243, %block_40090d ]
  %263 = load i64, i64* %RBP.i, align 8
  %264 = add i64 %263, -172
  %265 = add i64 %storemerge, 6
  store i64 %265, i64* %3, align 8
  %266 = inttoptr i64 %264 to i32*
  %267 = load i32, i32* %266, align 4
  %268 = add i32 %267, 1
  %269 = zext i32 %268 to i64
  store i64 %269, i64* %RAX.i1202, align 8
  %270 = icmp eq i32 %267, -1
  %271 = icmp eq i32 %268, 0
  %272 = or i1 %270, %271
  %273 = zext i1 %272 to i8
  store i8 %273, i8* %14, align 1
  %274 = and i32 %268, 255
  %275 = tail call i32 @llvm.ctpop.i32(i32 %274)
  %276 = trunc i32 %275 to i8
  %277 = and i8 %276, 1
  %278 = xor i8 %277, 1
  store i8 %278, i8* %21, align 1
  %279 = xor i32 %268, %267
  %280 = lshr i32 %279, 4
  %281 = trunc i32 %280 to i8
  %282 = and i8 %281, 1
  store i8 %282, i8* %26, align 1
  %283 = zext i1 %271 to i8
  store i8 %283, i8* %29, align 1
  %284 = lshr i32 %268, 31
  %285 = trunc i32 %284 to i8
  store i8 %285, i8* %32, align 1
  %286 = lshr i32 %267, 31
  %287 = xor i32 %284, %286
  %288 = add nuw nsw i32 %287, %284
  %289 = icmp eq i32 %288, 2
  %290 = zext i1 %289 to i8
  store i8 %290, i8* %38, align 1
  %291 = add i64 %storemerge, 15
  store i64 %291, i64* %3, align 8
  store i32 %268, i32* %266, align 4
  %292 = load i64, i64* %3, align 8
  %293 = add i64 %292, -228
  store i64 %293, i64* %3, align 8
  br label %block_.L_400888

block_.L_400971:                                  ; preds = %block_.L_400888
  %294 = add i64 %108, 5
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %296 = bitcast [32 x %union.VectorReg]* %295 to i8*
  %297 = bitcast [32 x %union.VectorReg]* %295 to double*
  %298 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %295, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %300 = bitcast i64* %299 to double*
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %302 = bitcast %union.VectorReg* %301 to double*
  %303 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %301, i64 0, i32 0, i32 0, i32 0, i64 0
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %305 = bitcast i64* %304 to double*
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %307 = bitcast %union.VectorReg* %306 to double*
  %308 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %306, i64 0, i32 0, i32 0, i32 0, i64 0
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %310 = bitcast i64* %309 to double*
  %RCX.i642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX.i587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %312 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %311, i64 0, i32 0, i32 0, i32 0, i64 0
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %314 = bitcast i64* %313 to double*
  %315 = bitcast %union.VectorReg* %311 to <2 x i32>*
  %316 = bitcast i64* %313 to <2 x i32>*
  %317 = bitcast [32 x %union.VectorReg]* %295 to i32*
  %318 = getelementptr inbounds i8, i8* %296, i64 4
  %319 = bitcast i8* %318 to i32*
  %320 = bitcast i64* %299 to i32*
  %321 = getelementptr inbounds i8, i8* %296, i64 12
  %322 = bitcast i8* %321 to i32*
  %323 = bitcast %union.VectorReg* %301 to <2 x i32>*
  %324 = bitcast i64* %304 to <2 x i32>*
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  %AL.i = bitcast %union.anon* %70 to i8*
  br label %block_.L_400976

block_.L_400976:                                  ; preds = %block_4015c4, %block_.L_400971
  %326 = phi i32 [ %76, %block_.L_400971 ], [ %2779, %block_4015c4 ]
  %327 = phi i64 [ %77, %block_.L_400971 ], [ %.pre91, %block_4015c4 ]
  %storemerge29 = phi i64 [ %294, %block_.L_400971 ], [ %2777, %block_4015c4 ]
  %MEMORY.3 = phi %struct.Memory* [ %2, %block_.L_400971 ], [ %call2_4015ac, %block_4015c4 ]
  %328 = zext i32 %326 to i64
  %329 = xor i64 %328, %327
  %330 = trunc i64 %329 to i32
  %331 = and i64 %329, 4294967295
  store i64 %331, i64* %RAX.i1202, align 8
  store i8 0, i8* %14, align 1
  %332 = and i32 %330, 255
  %333 = tail call i32 @llvm.ctpop.i32(i32 %332)
  %334 = trunc i32 %333 to i8
  %335 = and i8 %334, 1
  %336 = xor i8 %335, 1
  store i8 %336, i8* %21, align 1
  %337 = icmp eq i32 %330, 0
  %338 = zext i1 %337 to i8
  store i8 %338, i8* %29, align 1
  %339 = lshr i32 %330, 31
  %340 = trunc i32 %339 to i8
  store i8 %340, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %341 = and i64 %329, 4294967295
  store i64 %341, i64* %RDI.i1185, align 8
  %342 = add i64 %storemerge29, -598
  %343 = add i64 %storemerge29, 9
  %344 = load i64, i64* %6, align 8
  %345 = add i64 %344, -8
  %346 = inttoptr i64 %345 to i64*
  store i64 %343, i64* %346, align 8
  store i64 %345, i64* %6, align 8
  store i64 %342, i64* %3, align 8
  %call2_40097a = tail call %struct.Memory* @sub_400720.time_plt(%struct.State* nonnull %0, i64 %342, %struct.Memory* %MEMORY.3)
  %347 = load i64, i64* %3, align 8
  %348 = add i64 %347, 3961
  %349 = add i64 %347, 8
  store i64 %349, i64* %3, align 8
  %350 = inttoptr i64 %348 to i64*
  %351 = load i64, i64* %350, align 8
  store i64 %351, i64* %298, align 1
  store double 0.000000e+00, double* %300, align 1
  %352 = add i64 %347, 3969
  %353 = add i64 %347, 16
  store i64 %353, i64* %3, align 8
  %354 = inttoptr i64 %352 to i64*
  %355 = load i64, i64* %354, align 8
  store i64 %355, i64* %303, align 1
  store double 0.000000e+00, double* %305, align 1
  %356 = add i64 %347, 3977
  %357 = add i64 %347, 24
  store i64 %357, i64* %3, align 8
  %358 = inttoptr i64 %356 to i64*
  %359 = load i64, i64* %358, align 8
  store i64 %359, i64* %308, align 1
  store double 0.000000e+00, double* %310, align 1
  %360 = load i64, i64* %RBP.i, align 8
  %361 = add i64 %360, -192
  %362 = load i64, i64* %RAX.i1202, align 8
  %363 = add i64 %347, 31
  store i64 %363, i64* %3, align 8
  %364 = inttoptr i64 %361 to i64*
  store i64 %362, i64* %364, align 8
  %365 = load i64, i64* %3, align 8
  %366 = load i64, i64* %308, align 1
  store i64 %366, i64* inttoptr (i64 6299800 to i64*), align 8
  %367 = load i64, i64* %303, align 1
  store i64 %367, i64* inttoptr (i64 6299808 to i64*), align 32
  %368 = load i64, i64* %298, align 1
  store i64 %368, i64* inttoptr (i64 6299824 to i64*), align 16
  %369 = load i64, i64* %RBP.i, align 8
  %370 = add i64 %369, -184
  %371 = add i64 %365, 34
  store i64 %371, i64* %3, align 8
  %372 = inttoptr i64 %370 to i64*
  %373 = load i64, i64* %372, align 8
  store i64 %373, i64* %RAX.i1202, align 8
  %374 = add i64 %369, -168
  %375 = add i64 %365, 41
  store i64 %375, i64* %3, align 8
  %376 = inttoptr i64 %374 to i64*
  store i64 %373, i64* %376, align 8
  %377 = load i64, i64* %RBP.i, align 8
  %378 = add i64 %377, -172
  %379 = load i64, i64* %3, align 8
  %380 = add i64 %379, 10
  store i64 %380, i64* %3, align 8
  %381 = inttoptr i64 %378 to i32*
  store i32 1, i32* %381, align 4
  %382 = load i64, i64* %RBP.i, align 8
  %383 = add i64 %382, -176
  %384 = load i64, i64* %3, align 8
  %385 = add i64 %384, 10
  store i64 %385, i64* %3, align 8
  %386 = inttoptr i64 %383 to i32*
  store i32 1, i32* %386, align 4
  %.pre92 = load i64, i64* %3, align 8
  %.pre93 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4009db

block_.L_4009db:                                  ; preds = %block_40158b, %block_.L_400976
  %387 = phi i64 [ %.pre93, %block_.L_400976 ], [ %2703, %block_40158b ]
  %388 = phi i64 [ %.pre92, %block_.L_400976 ], [ %2736, %block_40158b ]
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.3, %block_.L_400976 ], [ %MEMORY.27, %block_40158b ]
  %389 = add i64 %388, 3893
  %390 = add i64 %388, 8
  store i64 %390, i64* %3, align 8
  %391 = inttoptr i64 %389 to i64*
  %392 = load i64, i64* %391, align 8
  store i64 %392, i64* %298, align 1
  store double 0.000000e+00, double* %300, align 1
  %393 = add i64 %388, 3901
  %394 = add i64 %388, 16
  store i64 %394, i64* %3, align 8
  %395 = inttoptr i64 %393 to i64*
  %396 = load i64, i64* %395, align 8
  store i64 %396, i64* %303, align 1
  store double 0.000000e+00, double* %305, align 1
  %397 = add i64 %387, -32
  %398 = add i64 %388, 24
  store i64 %398, i64* %3, align 8
  %399 = inttoptr i64 %397 to i64*
  store i64 0, i64* %399, align 8
  %400 = load i64, i64* %RBP.i, align 8
  %401 = add i64 %400, -168
  %402 = load i64, i64* %3, align 8
  %403 = add i64 %402, 8
  store i64 %403, i64* %3, align 8
  %404 = inttoptr i64 %401 to i64*
  %405 = load i64, i64* %404, align 8
  %406 = sext i64 %405 to i128
  %407 = and i128 %406, -18446744073709551616
  %408 = zext i64 %405 to i128
  %409 = or i128 %407, %408
  %410 = mul nsw i128 %409, 12
  %411 = trunc i128 %410 to i64
  store i64 %411, i64* %RAX.i1202, align 8
  %412 = sext i64 %411 to i128
  %413 = icmp ne i128 %412, %410
  %414 = zext i1 %413 to i8
  store i8 %414, i8* %14, align 1
  %415 = trunc i128 %410 to i32
  %416 = and i32 %415, 252
  %417 = tail call i32 @llvm.ctpop.i32(i32 %416)
  %418 = trunc i32 %417 to i8
  %419 = and i8 %418, 1
  %420 = xor i8 %419, 1
  store i8 %420, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %421 = lshr i64 %411, 63
  %422 = trunc i64 %421 to i8
  store i8 %422, i8* %32, align 1
  store i8 %414, i8* %38, align 1
  %423 = add i64 %400, -40
  %424 = add i64 %402, 12
  store i64 %424, i64* %3, align 8
  %425 = inttoptr i64 %423 to i64*
  store i64 %411, i64* %425, align 8
  %426 = load i64, i64* %RBP.i, align 8
  %427 = add i64 %426, -168
  %428 = load i64, i64* %3, align 8
  %429 = add i64 %428, 8
  store i64 %429, i64* %3, align 8
  %430 = inttoptr i64 %427 to i64*
  %431 = load i64, i64* %430, align 8
  %432 = sext i64 %431 to i128
  %433 = and i128 %432, -18446744073709551616
  %434 = zext i64 %431 to i128
  %435 = or i128 %433, %434
  %436 = mul nsw i128 %435, 14
  %437 = trunc i128 %436 to i64
  store i64 %437, i64* %RAX.i1202, align 8
  %438 = sext i64 %437 to i128
  %439 = icmp ne i128 %438, %436
  %440 = zext i1 %439 to i8
  store i8 %440, i8* %14, align 1
  %441 = trunc i128 %436 to i32
  %442 = and i32 %441, 254
  %443 = tail call i32 @llvm.ctpop.i32(i32 %442)
  %444 = trunc i32 %443 to i8
  %445 = and i8 %444, 1
  %446 = xor i8 %445, 1
  store i8 %446, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %447 = lshr i64 %437, 63
  %448 = trunc i64 %447 to i8
  store i8 %448, i8* %32, align 1
  store i8 %440, i8* %38, align 1
  %449 = add i64 %426, -48
  %450 = add i64 %428, 12
  store i64 %450, i64* %3, align 8
  %451 = inttoptr i64 %449 to i64*
  store i64 %437, i64* %451, align 8
  %452 = load i64, i64* %RBP.i, align 8
  %453 = add i64 %452, -168
  %454 = load i64, i64* %3, align 8
  %455 = add i64 %454, 11
  store i64 %455, i64* %3, align 8
  %456 = inttoptr i64 %453 to i64*
  %457 = load i64, i64* %456, align 8
  %458 = sext i64 %457 to i128
  %459 = and i128 %458, -18446744073709551616
  %460 = zext i64 %457 to i128
  %461 = or i128 %459, %460
  %462 = mul nsw i128 %461, 345
  %463 = trunc i128 %462 to i64
  store i64 %463, i64* %RAX.i1202, align 8
  %464 = sext i64 %463 to i128
  %465 = icmp ne i128 %464, %462
  %466 = zext i1 %465 to i8
  store i8 %466, i8* %14, align 1
  %467 = trunc i128 %462 to i32
  %468 = and i32 %467, 255
  %469 = tail call i32 @llvm.ctpop.i32(i32 %468)
  %470 = trunc i32 %469 to i8
  %471 = and i8 %470, 1
  %472 = xor i8 %471, 1
  store i8 %472, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %473 = lshr i64 %463, 63
  %474 = trunc i64 %473 to i8
  store i8 %474, i8* %32, align 1
  store i8 %466, i8* %38, align 1
  %475 = add i64 %452, -56
  %476 = add i64 %454, 15
  store i64 %476, i64* %3, align 8
  %477 = inttoptr i64 %475 to i64*
  store i64 %463, i64* %477, align 8
  %478 = load i64, i64* %RBP.i, align 8
  %479 = add i64 %478, -168
  %480 = load i64, i64* %3, align 8
  %481 = add i64 %480, 11
  store i64 %481, i64* %3, align 8
  %482 = inttoptr i64 %479 to i64*
  %483 = load i64, i64* %482, align 8
  %484 = sext i64 %483 to i128
  %485 = and i128 %484, -18446744073709551616
  %486 = zext i64 %483 to i128
  %487 = or i128 %485, %486
  %488 = mul nsw i128 %487, 210
  %489 = trunc i128 %488 to i64
  store i64 %489, i64* %RAX.i1202, align 8
  %490 = sext i64 %489 to i128
  %491 = icmp ne i128 %490, %488
  %492 = zext i1 %491 to i8
  store i8 %492, i8* %14, align 1
  %493 = trunc i128 %488 to i32
  %494 = and i32 %493, 254
  %495 = tail call i32 @llvm.ctpop.i32(i32 %494)
  %496 = trunc i32 %495 to i8
  %497 = and i8 %496, 1
  %498 = xor i8 %497, 1
  store i8 %498, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %499 = lshr i64 %489, 63
  %500 = trunc i64 %499 to i8
  store i8 %500, i8* %32, align 1
  store i8 %492, i8* %38, align 1
  %501 = add i64 %478, -64
  %502 = add i64 %480, 15
  store i64 %502, i64* %3, align 8
  %503 = inttoptr i64 %501 to i64*
  store i64 %489, i64* %503, align 8
  %504 = load i64, i64* %RBP.i, align 8
  %505 = add i64 %504, -168
  %506 = load i64, i64* %3, align 8
  %507 = add i64 %506, 7
  store i64 %507, i64* %3, align 8
  %508 = inttoptr i64 %505 to i64*
  %509 = load i64, i64* %508, align 8
  %510 = shl i64 %509, 5
  store i64 %510, i64* %RAX.i1202, align 8
  %511 = lshr i64 %509, 59
  %512 = trunc i64 %511 to i8
  %513 = and i8 %512, 1
  store i8 %513, i8* %14, align 1
  %514 = trunc i64 %510 to i32
  %515 = and i32 %514, 224
  %516 = tail call i32 @llvm.ctpop.i32(i32 %515)
  %517 = trunc i32 %516 to i8
  %518 = and i8 %517, 1
  %519 = xor i8 %518, 1
  store i8 %519, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %520 = icmp eq i64 %510, 0
  %521 = zext i1 %520 to i8
  store i8 %521, i8* %29, align 1
  %522 = lshr i64 %509, 58
  %523 = trunc i64 %522 to i8
  %524 = and i8 %523, 1
  store i8 %524, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %525 = add i64 %504, -72
  %526 = add i64 %506, 15
  store i64 %526, i64* %3, align 8
  %527 = inttoptr i64 %525 to i64*
  store i64 %510, i64* %527, align 8
  %528 = load i64, i64* %RBP.i, align 8
  %529 = add i64 %528, -168
  %530 = load i64, i64* %3, align 8
  %531 = add i64 %530, 11
  store i64 %531, i64* %3, align 8
  %532 = inttoptr i64 %529 to i64*
  %533 = load i64, i64* %532, align 8
  %534 = sext i64 %533 to i128
  %535 = and i128 %534, -18446744073709551616
  %536 = zext i64 %533 to i128
  %537 = or i128 %535, %536
  %538 = mul nsw i128 %537, 899
  %539 = trunc i128 %538 to i64
  store i64 %539, i64* %RAX.i1202, align 8
  %540 = sext i64 %539 to i128
  %541 = icmp ne i128 %540, %538
  %542 = zext i1 %541 to i8
  store i8 %542, i8* %14, align 1
  %543 = trunc i128 %538 to i32
  %544 = and i32 %543, 255
  %545 = tail call i32 @llvm.ctpop.i32(i32 %544)
  %546 = trunc i32 %545 to i8
  %547 = and i8 %546, 1
  %548 = xor i8 %547, 1
  store i8 %548, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %549 = lshr i64 %539, 63
  %550 = trunc i64 %549 to i8
  store i8 %550, i8* %32, align 1
  store i8 %542, i8* %38, align 1
  %551 = add i64 %528, -80
  %552 = add i64 %530, 15
  store i64 %552, i64* %3, align 8
  %553 = inttoptr i64 %551 to i64*
  store i64 %539, i64* %553, align 8
  %554 = load i64, i64* %RBP.i, align 8
  %555 = add i64 %554, -168
  %556 = load i64, i64* %3, align 8
  %557 = add i64 %556, 11
  store i64 %557, i64* %3, align 8
  %558 = inttoptr i64 %555 to i64*
  %559 = load i64, i64* %558, align 8
  %560 = sext i64 %559 to i128
  %561 = and i128 %560, -18446744073709551616
  %562 = zext i64 %559 to i128
  %563 = or i128 %561, %562
  %564 = mul nsw i128 %563, 616
  %565 = trunc i128 %564 to i64
  store i64 %565, i64* %RAX.i1202, align 8
  %566 = sext i64 %565 to i128
  %567 = icmp ne i128 %566, %564
  %568 = zext i1 %567 to i8
  store i8 %568, i8* %14, align 1
  %569 = trunc i128 %564 to i32
  %570 = and i32 %569, 248
  %571 = tail call i32 @llvm.ctpop.i32(i32 %570)
  %572 = trunc i32 %571 to i8
  %573 = and i8 %572, 1
  %574 = xor i8 %573, 1
  store i8 %574, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %575 = lshr i64 %565, 63
  %576 = trunc i64 %575 to i8
  store i8 %576, i8* %32, align 1
  store i8 %568, i8* %38, align 1
  %577 = add i64 %554, -88
  %578 = add i64 %556, 15
  store i64 %578, i64* %3, align 8
  %579 = inttoptr i64 %577 to i64*
  store i64 %565, i64* %579, align 8
  %580 = load i64, i64* %RBP.i, align 8
  %581 = add i64 %580, -96
  %582 = load i64, i64* %3, align 8
  %583 = add i64 %582, 8
  store i64 %583, i64* %3, align 8
  %584 = inttoptr i64 %581 to i64*
  store i64 0, i64* %584, align 8
  %585 = load i64, i64* %RBP.i, align 8
  %586 = add i64 %585, -168
  %587 = load i64, i64* %3, align 8
  %588 = add i64 %587, 8
  store i64 %588, i64* %3, align 8
  %589 = inttoptr i64 %586 to i64*
  %590 = load i64, i64* %589, align 8
  %591 = sext i64 %590 to i128
  %592 = and i128 %591, -18446744073709551616
  %593 = zext i64 %590 to i128
  %594 = or i128 %592, %593
  %595 = mul nsw i128 %594, 93
  %596 = trunc i128 %595 to i64
  store i64 %596, i64* %RAX.i1202, align 8
  %597 = sext i64 %596 to i128
  %598 = icmp ne i128 %597, %595
  %599 = zext i1 %598 to i8
  store i8 %599, i8* %14, align 1
  %600 = trunc i128 %595 to i32
  %601 = and i32 %600, 255
  %602 = tail call i32 @llvm.ctpop.i32(i32 %601)
  %603 = trunc i32 %602 to i8
  %604 = and i8 %603, 1
  %605 = xor i8 %604, 1
  store i8 %605, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %606 = lshr i64 %596, 63
  %607 = trunc i64 %606 to i8
  store i8 %607, i8* %32, align 1
  store i8 %599, i8* %38, align 1
  %608 = add i64 %585, -104
  %609 = add i64 %587, 12
  store i64 %609, i64* %3, align 8
  %610 = inttoptr i64 %608 to i64*
  store i64 %596, i64* %610, align 8
  %611 = load i64, i64* %RBP.i, align 8
  %612 = add i64 %611, -112
  %613 = load i64, i64* %3, align 8
  %614 = add i64 %613, 5
  store i64 %614, i64* %3, align 8
  %615 = load i64, i64* %303, align 1
  %616 = inttoptr i64 %612 to i64*
  store i64 %615, i64* %616, align 8
  %617 = load i64, i64* %RBP.i, align 8
  %618 = add i64 %617, -120
  %619 = load i64, i64* %3, align 8
  %620 = add i64 %619, 5
  store i64 %620, i64* %3, align 8
  %621 = load i64, i64* %298, align 1
  %622 = inttoptr i64 %618 to i64*
  store i64 %621, i64* %622, align 8
  %623 = load i64, i64* %RBP.i, align 8
  %624 = add i64 %623, -128
  %625 = load i64, i64* %3, align 8
  %626 = add i64 %625, 5
  store i64 %626, i64* %3, align 8
  %627 = load i64, i64* %298, align 1
  %628 = inttoptr i64 %624 to i64*
  store i64 %627, i64* %628, align 8
  %629 = load i64, i64* %RBP.i, align 8
  %630 = add i64 %629, -136
  %631 = load i64, i64* %3, align 8
  %632 = add i64 %631, 8
  store i64 %632, i64* %3, align 8
  %633 = load i64, i64* %298, align 1
  %634 = inttoptr i64 %630 to i64*
  store i64 %633, i64* %634, align 8
  %635 = load i64, i64* %RBP.i, align 8
  %636 = add i64 %635, -24
  %637 = load i64, i64* %3, align 8
  %638 = add i64 %637, 8
  store i64 %638, i64* %3, align 8
  %639 = inttoptr i64 %636 to i64*
  store i64 1, i64* %639, align 8
  %.pre94 = load i64, i64* %3, align 8
  br label %block_.L_400a89

block_.L_400a89:                                  ; preds = %block_400a97, %block_.L_4009db
  %640 = phi i64 [ %822, %block_400a97 ], [ %.pre94, %block_.L_4009db ]
  %641 = load i64, i64* %RBP.i, align 8
  %642 = add i64 %641, -24
  %643 = add i64 %640, 4
  store i64 %643, i64* %3, align 8
  %644 = inttoptr i64 %642 to i64*
  %645 = load i64, i64* %644, align 8
  store i64 %645, i64* %RAX.i1202, align 8
  %646 = add i64 %641, -32
  %647 = add i64 %640, 8
  store i64 %647, i64* %3, align 8
  %648 = inttoptr i64 %646 to i64*
  %649 = load i64, i64* %648, align 8
  %650 = sub i64 %645, %649
  %651 = icmp ult i64 %645, %649
  %652 = zext i1 %651 to i8
  store i8 %652, i8* %14, align 1
  %653 = trunc i64 %650 to i32
  %654 = and i32 %653, 255
  %655 = tail call i32 @llvm.ctpop.i32(i32 %654)
  %656 = trunc i32 %655 to i8
  %657 = and i8 %656, 1
  %658 = xor i8 %657, 1
  store i8 %658, i8* %21, align 1
  %659 = xor i64 %649, %645
  %660 = xor i64 %659, %650
  %661 = lshr i64 %660, 4
  %662 = trunc i64 %661 to i8
  %663 = and i8 %662, 1
  store i8 %663, i8* %26, align 1
  %664 = icmp eq i64 %650, 0
  %665 = zext i1 %664 to i8
  store i8 %665, i8* %29, align 1
  %666 = lshr i64 %650, 63
  %667 = trunc i64 %666 to i8
  store i8 %667, i8* %32, align 1
  %668 = lshr i64 %645, 63
  %669 = lshr i64 %649, 63
  %670 = xor i64 %669, %668
  %671 = xor i64 %666, %668
  %672 = add nuw nsw i64 %671, %670
  %673 = icmp eq i64 %672, 2
  %674 = zext i1 %673 to i8
  store i8 %674, i8* %38, align 1
  %675 = icmp ne i8 %667, 0
  %676 = xor i1 %675, %673
  %.demorgan = or i1 %664, %676
  %.v136 = select i1 %.demorgan, i64 14, i64 205
  %677 = add i64 %640, %.v136
  store i64 %677, i64* %3, align 8
  br i1 %.demorgan, label %block_400a97, label %block_.L_400b56

block_400a97:                                     ; preds = %block_.L_400a89
  store i64 -9223372036854775808, i64* %RAX.i1202, align 8
  %678 = add i64 %641, -112
  %679 = add i64 %677, 15
  store i64 %679, i64* %3, align 8
  %680 = inttoptr i64 %678 to i64*
  %681 = load i64, i64* %680, align 8
  store i64 %681, i64* %298, align 1
  store double 0.000000e+00, double* %300, align 1
  %682 = add i64 %641, -120
  %683 = add i64 %677, 20
  store i64 %683, i64* %3, align 8
  %684 = bitcast i64 %681 to double
  %685 = inttoptr i64 %682 to double*
  %686 = load double, double* %685, align 8
  %687 = fadd double %684, %686
  store double %687, double* %297, align 1
  store i64 0, i64* %299, align 1
  %688 = add i64 %641, -128
  %689 = add i64 %677, 25
  store i64 %689, i64* %3, align 8
  %690 = inttoptr i64 %688 to double*
  %691 = load double, double* %690, align 8
  %692 = fadd double %687, %691
  store double %692, double* %297, align 1
  store i64 0, i64* %299, align 1
  %693 = add i64 %641, -136
  %694 = add i64 %677, 33
  store i64 %694, i64* %3, align 8
  %695 = inttoptr i64 %693 to double*
  %696 = load double, double* %695, align 8
  %697 = fsub double %692, %696
  %698 = load double, double* inttoptr (i64 6299800 to double*), align 8
  %699 = fmul double %697, %698
  store double %699, double* %297, align 1
  store i64 0, i64* %299, align 1
  %700 = add i64 %677, 47
  store i64 %700, i64* %3, align 8
  %701 = inttoptr i64 %678 to double*
  store double %699, double* %701, align 8
  %702 = load i64, i64* %RBP.i, align 8
  %703 = add i64 %702, -112
  %704 = load i64, i64* %3, align 8
  %705 = add i64 %704, 5
  store i64 %705, i64* %3, align 8
  %706 = inttoptr i64 %703 to i64*
  %707 = load i64, i64* %706, align 8
  store i64 %707, i64* %298, align 1
  store double 0.000000e+00, double* %300, align 1
  %708 = add i64 %702, -120
  %709 = add i64 %704, 10
  store i64 %709, i64* %3, align 8
  %710 = bitcast i64 %707 to double
  %711 = inttoptr i64 %708 to double*
  %712 = load double, double* %711, align 8
  %713 = fadd double %710, %712
  store double %713, double* %297, align 1
  store i64 0, i64* %299, align 1
  %714 = add i64 %702, -128
  %715 = add i64 %704, 15
  store i64 %715, i64* %3, align 8
  %716 = inttoptr i64 %714 to double*
  %717 = load double, double* %716, align 8
  %718 = fsub double %713, %717
  store double %718, double* %297, align 1
  store i64 0, i64* %299, align 1
  %719 = add i64 %702, -136
  %720 = add i64 %704, 23
  store i64 %720, i64* %3, align 8
  %721 = inttoptr i64 %719 to double*
  %722 = load double, double* %721, align 8
  %723 = fadd double %718, %722
  %724 = load double, double* inttoptr (i64 6299800 to double*), align 8
  %725 = fmul double %723, %724
  store double %725, double* %297, align 1
  store i64 0, i64* %299, align 1
  %726 = add i64 %704, 37
  store i64 %726, i64* %3, align 8
  %727 = inttoptr i64 %708 to double*
  store double %725, double* %727, align 8
  %728 = load i64, i64* %RBP.i, align 8
  %729 = add i64 %728, -112
  %730 = load i64, i64* %3, align 8
  %731 = add i64 %730, 5
  store i64 %731, i64* %3, align 8
  %732 = inttoptr i64 %729 to i64*
  %733 = load i64, i64* %732, align 8
  store i64 %733, i64* %298, align 1
  store double 0.000000e+00, double* %300, align 1
  %734 = add i64 %728, -120
  %735 = add i64 %730, 10
  store i64 %735, i64* %3, align 8
  %736 = bitcast i64 %733 to double
  %737 = inttoptr i64 %734 to double*
  %738 = load double, double* %737, align 8
  %739 = fsub double %736, %738
  store double %739, double* %297, align 1
  store i64 0, i64* %299, align 1
  %740 = add i64 %728, -128
  %741 = add i64 %730, 15
  store i64 %741, i64* %3, align 8
  %742 = inttoptr i64 %740 to double*
  %743 = load double, double* %742, align 8
  %744 = fadd double %739, %743
  store double %744, double* %297, align 1
  store i64 0, i64* %299, align 1
  %745 = add i64 %728, -136
  %746 = add i64 %730, 23
  store i64 %746, i64* %3, align 8
  %747 = inttoptr i64 %745 to double*
  %748 = load double, double* %747, align 8
  %749 = fadd double %744, %748
  %750 = load double, double* inttoptr (i64 6299800 to double*), align 8
  %751 = fmul double %749, %750
  store double %751, double* %297, align 1
  store i64 0, i64* %299, align 1
  %752 = add i64 %730, 37
  store i64 %752, i64* %3, align 8
  %753 = inttoptr i64 %740 to double*
  store double %751, double* %753, align 8
  %754 = load i64, i64* %RBP.i, align 8
  %755 = add i64 %754, -112
  %756 = load i64, i64* %3, align 8
  %757 = add i64 %756, 5
  store i64 %757, i64* %3, align 8
  %758 = inttoptr i64 %755 to i64*
  %759 = load i64, i64* %758, align 8
  %760 = load i64, i64* %RAX.i1202, align 8
  %761 = xor i64 %760, %759
  store i64 %761, i64* %RCX.i1188, align 8
  store i8 0, i8* %14, align 1
  %762 = trunc i64 %761 to i32
  %763 = and i32 %762, 255
  %764 = tail call i32 @llvm.ctpop.i32(i32 %763)
  %765 = trunc i32 %764 to i8
  %766 = and i8 %765, 1
  %767 = xor i8 %766, 1
  store i8 %767, i8* %21, align 1
  %768 = icmp eq i64 %761, 0
  %769 = zext i1 %768 to i8
  store i8 %769, i8* %29, align 1
  %770 = lshr i64 %761, 63
  %771 = trunc i64 %770 to i8
  store i8 %771, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 %761, i64* %298, align 1
  store i64 0, i64* %299, align 1
  %772 = add i64 %754, -120
  %773 = add i64 %756, 23
  store i64 %773, i64* %3, align 8
  %.cast = bitcast i64 %761 to double
  %774 = inttoptr i64 %772 to double*
  %775 = load double, double* %774, align 8
  %776 = fadd double %.cast, %775
  store double %776, double* %297, align 1
  store i64 0, i64* %299, align 1
  %777 = add i64 %754, -128
  %778 = add i64 %756, 28
  store i64 %778, i64* %3, align 8
  %779 = inttoptr i64 %777 to double*
  %780 = load double, double* %779, align 8
  %781 = fadd double %776, %780
  store double %781, double* %297, align 1
  store i64 0, i64* %299, align 1
  %782 = add i64 %754, -136
  %783 = add i64 %756, 36
  store i64 %783, i64* %3, align 8
  %784 = inttoptr i64 %782 to double*
  %785 = load double, double* %784, align 8
  %786 = fadd double %781, %785
  %787 = load double, double* inttoptr (i64 6299800 to double*), align 8
  %788 = fmul double %786, %787
  store double %788, double* %297, align 1
  store i64 0, i64* %299, align 1
  %789 = add i64 %756, 53
  store i64 %789, i64* %3, align 8
  %790 = inttoptr i64 %782 to double*
  store double %788, double* %790, align 8
  %791 = load i64, i64* %RBP.i, align 8
  %792 = add i64 %791, -24
  %793 = load i64, i64* %3, align 8
  %794 = add i64 %793, 4
  store i64 %794, i64* %3, align 8
  %795 = inttoptr i64 %792 to i64*
  %796 = load i64, i64* %795, align 8
  %797 = add i64 %796, 1
  store i64 %797, i64* %RAX.i1202, align 8
  %798 = icmp eq i64 %796, -1
  %799 = icmp eq i64 %797, 0
  %800 = or i1 %798, %799
  %801 = zext i1 %800 to i8
  store i8 %801, i8* %14, align 1
  %802 = trunc i64 %797 to i32
  %803 = and i32 %802, 255
  %804 = tail call i32 @llvm.ctpop.i32(i32 %803)
  %805 = trunc i32 %804 to i8
  %806 = and i8 %805, 1
  %807 = xor i8 %806, 1
  store i8 %807, i8* %21, align 1
  %808 = xor i64 %797, %796
  %809 = lshr i64 %808, 4
  %810 = trunc i64 %809 to i8
  %811 = and i8 %810, 1
  store i8 %811, i8* %26, align 1
  %812 = zext i1 %799 to i8
  store i8 %812, i8* %29, align 1
  %813 = lshr i64 %797, 63
  %814 = trunc i64 %813 to i8
  store i8 %814, i8* %32, align 1
  %815 = lshr i64 %796, 63
  %816 = xor i64 %813, %815
  %817 = add nuw nsw i64 %816, %813
  %818 = icmp eq i64 %817, 2
  %819 = zext i1 %818 to i8
  store i8 %819, i8* %38, align 1
  %820 = add i64 %793, 12
  store i64 %820, i64* %3, align 8
  store i64 %797, i64* %795, align 8
  %821 = load i64, i64* %3, align 8
  %822 = add i64 %821, -200
  store i64 %822, i64* %3, align 8
  br label %block_.L_400a89

block_.L_400b56:                                  ; preds = %block_.L_400a89
  %823 = add i64 %641, -176
  %824 = add i64 %677, 6
  store i64 %824, i64* %3, align 8
  %825 = inttoptr i64 %823 to i32*
  %826 = load i32, i32* %825, align 4
  %827 = zext i32 %826 to i64
  store i64 %827, i64* %RAX.i1202, align 8
  %828 = add i64 %641, -172
  %829 = add i64 %677, 12
  store i64 %829, i64* %3, align 8
  %830 = inttoptr i64 %828 to i32*
  %831 = load i32, i32* %830, align 4
  %832 = sub i32 %826, %831
  %833 = icmp ult i32 %826, %831
  %834 = zext i1 %833 to i8
  store i8 %834, i8* %14, align 1
  %835 = and i32 %832, 255
  %836 = tail call i32 @llvm.ctpop.i32(i32 %835)
  %837 = trunc i32 %836 to i8
  %838 = and i8 %837, 1
  %839 = xor i8 %838, 1
  store i8 %839, i8* %21, align 1
  %840 = xor i32 %831, %826
  %841 = xor i32 %840, %832
  %842 = lshr i32 %841, 4
  %843 = trunc i32 %842 to i8
  %844 = and i8 %843, 1
  store i8 %844, i8* %26, align 1
  %845 = icmp eq i32 %832, 0
  %846 = zext i1 %845 to i8
  store i8 %846, i8* %29, align 1
  %847 = lshr i32 %832, 31
  %848 = trunc i32 %847 to i8
  store i8 %848, i8* %32, align 1
  %849 = lshr i32 %826, 31
  %850 = lshr i32 %831, 31
  %851 = xor i32 %850, %849
  %852 = xor i32 %847, %849
  %853 = add nuw nsw i32 %852, %851
  %854 = icmp eq i32 %853, 2
  %855 = zext i1 %854 to i8
  store i8 %855, i8* %38, align 1
  %.v137 = select i1 %845, i64 18, i64 58
  %856 = add i64 %677, %.v137
  store i64 %856, i64* %3, align 8
  br i1 %845, label %block_400b68, label %block_.L_400b90

block_400b68:                                     ; preds = %block_.L_400b56
  %857 = add i64 %856, 4
  store i64 %857, i64* %3, align 8
  %858 = load i64, i64* %648, align 8
  store i64 %858, i64* %RDI.i1185, align 8
  %859 = add i64 %856, 8
  store i64 %859, i64* %3, align 8
  %860 = load i64, i64* %648, align 8
  store i64 %860, i64* %RSI.i1211, align 8
  %861 = add i64 %856, 12
  store i64 %861, i64* %3, align 8
  %862 = load i64, i64* %648, align 8
  store i64 %862, i64* %RDX.i587, align 8
  %863 = add i64 %641, -112
  %864 = add i64 %856, 17
  store i64 %864, i64* %3, align 8
  %865 = inttoptr i64 %863 to i64*
  %866 = load i64, i64* %865, align 8
  store i64 %866, i64* %298, align 1
  store double 0.000000e+00, double* %300, align 1
  %867 = add i64 %641, -120
  %868 = add i64 %856, 22
  store i64 %868, i64* %3, align 8
  %869 = inttoptr i64 %867 to i64*
  %870 = load i64, i64* %869, align 8
  store i64 %870, i64* %303, align 1
  store double 0.000000e+00, double* %305, align 1
  %871 = add i64 %641, -128
  %872 = add i64 %856, 27
  store i64 %872, i64* %3, align 8
  %873 = inttoptr i64 %871 to i64*
  %874 = load i64, i64* %873, align 8
  store i64 %874, i64* %308, align 1
  store double 0.000000e+00, double* %310, align 1
  %875 = add i64 %641, -136
  %876 = add i64 %856, 35
  store i64 %876, i64* %3, align 8
  %877 = inttoptr i64 %875 to i64*
  %878 = load i64, i64* %877, align 8
  store i64 %878, i64* %325, align 1
  store double 0.000000e+00, double* %314, align 1
  %879 = add i64 %856, 2680
  %880 = add i64 %856, 40
  %881 = load i64, i64* %6, align 8
  %882 = add i64 %881, -8
  %883 = inttoptr i64 %882 to i64*
  store i64 %880, i64* %883, align 8
  store i64 %882, i64* %6, align 8
  store i64 %879, i64* %3, align 8
  %call2_400b8b = tail call %struct.Memory* @sub_4015e0.POUT(%struct.State* nonnull %0, i64 %879, %struct.Memory* %MEMORY.4)
  %.pre95 = load i64, i64* %3, align 8
  %.pre96 = load i64, i64* %RBP.i, align 8
  br label %block_.L_400b90

block_.L_400b90:                                  ; preds = %block_.L_400b56, %block_400b68
  %884 = phi i64 [ %.pre96, %block_400b68 ], [ %641, %block_.L_400b56 ]
  %885 = phi i64 [ %.pre95, %block_400b68 ], [ %856, %block_.L_400b56 ]
  %886 = add i64 %885, 3456
  %887 = add i64 %885, 8
  store i64 %887, i64* %3, align 8
  %888 = inttoptr i64 %886 to i64*
  %889 = load i64, i64* %888, align 8
  store i64 %889, i64* %298, align 1
  store double 0.000000e+00, double* %300, align 1
  %890 = add i64 %885, 3464
  %891 = add i64 %885, 16
  store i64 %891, i64* %3, align 8
  %892 = inttoptr i64 %890 to i64*
  %893 = load i64, i64* %892, align 8
  store i64 %893, i64* %303, align 1
  store double 0.000000e+00, double* %305, align 1
  store i64 %893, i64* inttoptr (i64 6299848 to i64*), align 8
  store i64 %889, i64* inttoptr (i64 6299856 to i64*), align 16
  store i64 %889, i64* inttoptr (i64 6299864 to i64*), align 8
  store i64 %889, i64* inttoptr (i64 6299872 to i64*), align 32
  %894 = add i64 %884, -24
  %895 = add i64 %885, 60
  store i64 %895, i64* %3, align 8
  %896 = inttoptr i64 %894 to i64*
  store i64 1, i64* %896, align 8
  %.pre97 = load i64, i64* %3, align 8
  br label %block_.L_400bcc

block_.L_400bcc:                                  ; preds = %block_400bda, %block_.L_400b90
  %897 = phi i64 [ %1010, %block_400bda ], [ %.pre97, %block_.L_400b90 ]
  %898 = load i64, i64* %RBP.i, align 8
  %899 = add i64 %898, -24
  %900 = add i64 %897, 4
  store i64 %900, i64* %3, align 8
  %901 = inttoptr i64 %899 to i64*
  %902 = load i64, i64* %901, align 8
  store i64 %902, i64* %RAX.i1202, align 8
  %903 = add i64 %898, -40
  %904 = add i64 %897, 8
  store i64 %904, i64* %3, align 8
  %905 = inttoptr i64 %903 to i64*
  %906 = load i64, i64* %905, align 8
  %907 = sub i64 %902, %906
  %908 = icmp ult i64 %902, %906
  %909 = zext i1 %908 to i8
  store i8 %909, i8* %14, align 1
  %910 = trunc i64 %907 to i32
  %911 = and i32 %910, 255
  %912 = tail call i32 @llvm.ctpop.i32(i32 %911)
  %913 = trunc i32 %912 to i8
  %914 = and i8 %913, 1
  %915 = xor i8 %914, 1
  store i8 %915, i8* %21, align 1
  %916 = xor i64 %906, %902
  %917 = xor i64 %916, %907
  %918 = lshr i64 %917, 4
  %919 = trunc i64 %918 to i8
  %920 = and i8 %919, 1
  store i8 %920, i8* %26, align 1
  %921 = icmp eq i64 %907, 0
  %922 = zext i1 %921 to i8
  store i8 %922, i8* %29, align 1
  %923 = lshr i64 %907, 63
  %924 = trunc i64 %923 to i8
  store i8 %924, i8* %32, align 1
  %925 = lshr i64 %902, 63
  %926 = lshr i64 %906, 63
  %927 = xor i64 %926, %925
  %928 = xor i64 %923, %925
  %929 = add nuw nsw i64 %928, %927
  %930 = icmp eq i64 %929, 2
  %931 = zext i1 %930 to i8
  store i8 %931, i8* %38, align 1
  %932 = icmp ne i8 %924, 0
  %933 = xor i1 %932, %930
  %.demorgan126 = or i1 %921, %933
  %.v138 = select i1 %.demorgan126, i64 14, i64 270
  %934 = add i64 %897, %.v138
  store i64 %934, i64* %3, align 8
  br i1 %.demorgan126, label %block_400bda, label %block_.L_400cda

block_400bda:                                     ; preds = %block_.L_400bcc
  store i64 -9223372036854775808, i64* %RAX.i1202, align 8
  %935 = load double, double* inttoptr (i64 6299848 to double*), align 8
  %936 = load double, double* inttoptr (i64 6299856 to double*), align 16
  %937 = fadd double %935, %936
  %938 = load double, double* inttoptr (i64 6299864 to double*), align 8
  %939 = fadd double %937, %938
  %940 = load double, double* inttoptr (i64 6299872 to double*), align 32
  %941 = fsub double %939, %940
  %942 = load double, double* inttoptr (i64 6299800 to double*), align 8
  %943 = fmul double %941, %942
  store double %943, double* inttoptr (i64 6299848 to double*), align 8
  %944 = load double, double* inttoptr (i64 6299856 to double*), align 16
  %945 = fadd double %943, %944
  %946 = load double, double* inttoptr (i64 6299864 to double*), align 8
  %947 = fsub double %945, %946
  %948 = load double, double* inttoptr (i64 6299872 to double*), align 32
  %949 = fadd double %947, %948
  %950 = load double, double* inttoptr (i64 6299800 to double*), align 8
  %951 = fmul double %949, %950
  store double %951, double* inttoptr (i64 6299856 to double*), align 16
  %952 = load double, double* inttoptr (i64 6299848 to double*), align 8
  %953 = fsub double %952, %951
  %954 = load double, double* inttoptr (i64 6299864 to double*), align 8
  %955 = fadd double %953, %954
  %956 = load double, double* inttoptr (i64 6299872 to double*), align 32
  %957 = fadd double %955, %956
  %958 = load double, double* inttoptr (i64 6299800 to double*), align 8
  %959 = fmul double %957, %958
  store double %959, double* inttoptr (i64 6299864 to double*), align 8
  %960 = load i64, i64* inttoptr (i64 6299848 to i64*), align 8
  %961 = load i64, i64* %RAX.i1202, align 8
  %962 = xor i64 %961, %960
  store i64 %962, i64* %RCX.i1188, align 8
  store i8 0, i8* %14, align 1
  %963 = trunc i64 %962 to i32
  %964 = and i32 %963, 255
  %965 = tail call i32 @llvm.ctpop.i32(i32 %964)
  %966 = trunc i32 %965 to i8
  %967 = and i8 %966, 1
  %968 = xor i8 %967, 1
  store i8 %968, i8* %21, align 1
  %969 = icmp eq i64 %962, 0
  %970 = zext i1 %969 to i8
  store i8 %970, i8* %29, align 1
  %971 = lshr i64 %962, 63
  %972 = trunc i64 %971 to i8
  store i8 %972, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %.cast36 = bitcast i64 %962 to double
  %973 = load double, double* inttoptr (i64 6299856 to double*), align 16
  %974 = fadd double %.cast36, %973
  %975 = fadd double %974, %959
  %976 = load double, double* inttoptr (i64 6299872 to double*), align 32
  %977 = fadd double %975, %976
  %978 = load double, double* inttoptr (i64 6299800 to double*), align 8
  %979 = fmul double %977, %978
  store double %979, double* %297, align 1
  store i64 0, i64* %299, align 1
  store double %979, double* inttoptr (i64 6299872 to double*), align 32
  %980 = load i64, i64* %RBP.i, align 8
  %981 = add i64 %980, -24
  %982 = add i64 %934, 243
  store i64 %982, i64* %3, align 8
  %983 = inttoptr i64 %981 to i64*
  %984 = load i64, i64* %983, align 8
  %985 = add i64 %984, 1
  store i64 %985, i64* %RAX.i1202, align 8
  %986 = icmp eq i64 %984, -1
  %987 = icmp eq i64 %985, 0
  %988 = or i1 %986, %987
  %989 = zext i1 %988 to i8
  store i8 %989, i8* %14, align 1
  %990 = trunc i64 %985 to i32
  %991 = and i32 %990, 255
  %992 = tail call i32 @llvm.ctpop.i32(i32 %991)
  %993 = trunc i32 %992 to i8
  %994 = and i8 %993, 1
  %995 = xor i8 %994, 1
  store i8 %995, i8* %21, align 1
  %996 = xor i64 %985, %984
  %997 = lshr i64 %996, 4
  %998 = trunc i64 %997 to i8
  %999 = and i8 %998, 1
  store i8 %999, i8* %26, align 1
  %1000 = zext i1 %987 to i8
  store i8 %1000, i8* %29, align 1
  %1001 = lshr i64 %985, 63
  %1002 = trunc i64 %1001 to i8
  store i8 %1002, i8* %32, align 1
  %1003 = lshr i64 %984, 63
  %1004 = xor i64 %1001, %1003
  %1005 = add nuw nsw i64 %1004, %1001
  %1006 = icmp eq i64 %1005, 2
  %1007 = zext i1 %1006 to i8
  store i8 %1007, i8* %38, align 1
  %1008 = add i64 %934, 251
  store i64 %1008, i64* %3, align 8
  store i64 %985, i64* %983, align 8
  %1009 = load i64, i64* %3, align 8
  %1010 = add i64 %1009, -265
  store i64 %1010, i64* %3, align 8
  br label %block_.L_400bcc

block_.L_400cda:                                  ; preds = %block_.L_400bcc
  %1011 = add i64 %898, -176
  %1012 = add i64 %934, 6
  store i64 %1012, i64* %3, align 8
  %1013 = inttoptr i64 %1011 to i32*
  %1014 = load i32, i32* %1013, align 4
  %1015 = zext i32 %1014 to i64
  store i64 %1015, i64* %RAX.i1202, align 8
  %1016 = add i64 %898, -172
  %1017 = add i64 %934, 12
  store i64 %1017, i64* %3, align 8
  %1018 = inttoptr i64 %1016 to i32*
  %1019 = load i32, i32* %1018, align 4
  %1020 = sub i32 %1014, %1019
  %1021 = icmp ult i32 %1014, %1019
  %1022 = zext i1 %1021 to i8
  store i8 %1022, i8* %14, align 1
  %1023 = and i32 %1020, 255
  %1024 = tail call i32 @llvm.ctpop.i32(i32 %1023)
  %1025 = trunc i32 %1024 to i8
  %1026 = and i8 %1025, 1
  %1027 = xor i8 %1026, 1
  store i8 %1027, i8* %21, align 1
  %1028 = xor i32 %1019, %1014
  %1029 = xor i32 %1028, %1020
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
  %1037 = lshr i32 %1014, 31
  %1038 = lshr i32 %1019, 31
  %1039 = xor i32 %1038, %1037
  %1040 = xor i32 %1035, %1037
  %1041 = add nuw nsw i32 %1040, %1039
  %1042 = icmp eq i32 %1041, 2
  %1043 = zext i1 %1042 to i8
  store i8 %1043, i8* %38, align 1
  %.v139 = select i1 %1033, i64 18, i64 71
  %1044 = add i64 %934, %.v139
  store i64 %1044, i64* %3, align 8
  br i1 %1033, label %block_400cec, label %block_.L_400d21

block_400cec:                                     ; preds = %block_.L_400cda
  %1045 = add i64 %1044, 4
  store i64 %1045, i64* %3, align 8
  %1046 = load i64, i64* %905, align 8
  store i64 %1046, i64* %RDI.i1185, align 8
  %1047 = add i64 %898, -48
  %1048 = add i64 %1044, 8
  store i64 %1048, i64* %3, align 8
  %1049 = inttoptr i64 %1047 to i64*
  %1050 = load i64, i64* %1049, align 8
  store i64 %1050, i64* %RSI.i1211, align 8
  %1051 = add i64 %1044, 12
  store i64 %1051, i64* %3, align 8
  %1052 = load i64, i64* %905, align 8
  store i64 %1052, i64* %RDX.i587, align 8
  %1053 = load i64, i64* inttoptr (i64 6299848 to i64*), align 8
  store i64 %1053, i64* %298, align 1
  store double 0.000000e+00, double* %300, align 1
  %1054 = load i64, i64* inttoptr (i64 6299856 to i64*), align 16
  store i64 %1054, i64* %303, align 1
  store double 0.000000e+00, double* %305, align 1
  %1055 = load i64, i64* inttoptr (i64 6299864 to i64*), align 8
  store i64 %1055, i64* %308, align 1
  store double 0.000000e+00, double* %310, align 1
  %1056 = load i64, i64* inttoptr (i64 6299872 to i64*), align 32
  store i64 %1056, i64* %325, align 1
  store double 0.000000e+00, double* %314, align 1
  %1057 = add i64 %1044, 2292
  %1058 = add i64 %1044, 53
  %1059 = load i64, i64* %6, align 8
  %1060 = add i64 %1059, -8
  %1061 = inttoptr i64 %1060 to i64*
  store i64 %1058, i64* %1061, align 8
  store i64 %1060, i64* %6, align 8
  store i64 %1057, i64* %3, align 8
  %call2_400d1c = tail call %struct.Memory* @sub_4015e0.POUT(%struct.State* nonnull %0, i64 %1057, %struct.Memory* %MEMORY.4)
  %.pre98 = load i64, i64* %RBP.i, align 8
  %.pre99 = load i64, i64* %3, align 8
  br label %block_.L_400d21

block_.L_400d21:                                  ; preds = %block_.L_400cda, %block_400cec
  %1062 = phi i64 [ %1044, %block_.L_400cda ], [ %.pre99, %block_400cec ]
  %1063 = phi i64 [ %898, %block_.L_400cda ], [ %.pre98, %block_400cec ]
  %MEMORY.8 = phi %struct.Memory* [ %MEMORY.4, %block_.L_400cda ], [ %call2_400d1c, %block_400cec ]
  %1064 = add i64 %1063, -24
  %1065 = add i64 %1062, 8
  store i64 %1065, i64* %3, align 8
  %1066 = inttoptr i64 %1064 to i64*
  store i64 1, i64* %1066, align 8
  %.pre100 = load i64, i64* %3, align 8
  br label %block_.L_400d29

block_.L_400d29:                                  ; preds = %block_400d37, %block_.L_400d21
  %1067 = phi i64 [ %1141, %block_400d37 ], [ %.pre100, %block_.L_400d21 ]
  %1068 = load i64, i64* %RBP.i, align 8
  %1069 = add i64 %1068, -24
  %1070 = add i64 %1067, 4
  store i64 %1070, i64* %3, align 8
  %1071 = inttoptr i64 %1069 to i64*
  %1072 = load i64, i64* %1071, align 8
  store i64 %1072, i64* %RAX.i1202, align 8
  %1073 = add i64 %1068, -48
  %1074 = add i64 %1067, 8
  store i64 %1074, i64* %3, align 8
  %1075 = inttoptr i64 %1073 to i64*
  %1076 = load i64, i64* %1075, align 8
  %1077 = sub i64 %1072, %1076
  %1078 = icmp ult i64 %1072, %1076
  %1079 = zext i1 %1078 to i8
  store i8 %1079, i8* %14, align 1
  %1080 = trunc i64 %1077 to i32
  %1081 = and i32 %1080, 255
  %1082 = tail call i32 @llvm.ctpop.i32(i32 %1081)
  %1083 = trunc i32 %1082 to i8
  %1084 = and i8 %1083, 1
  %1085 = xor i8 %1084, 1
  store i8 %1085, i8* %21, align 1
  %1086 = xor i64 %1076, %1072
  %1087 = xor i64 %1086, %1077
  %1088 = lshr i64 %1087, 4
  %1089 = trunc i64 %1088 to i8
  %1090 = and i8 %1089, 1
  store i8 %1090, i8* %26, align 1
  %1091 = icmp eq i64 %1077, 0
  %1092 = zext i1 %1091 to i8
  store i8 %1092, i8* %29, align 1
  %1093 = lshr i64 %1077, 63
  %1094 = trunc i64 %1093 to i8
  store i8 %1094, i8* %32, align 1
  %1095 = lshr i64 %1072, 63
  %1096 = lshr i64 %1076, 63
  %1097 = xor i64 %1096, %1095
  %1098 = xor i64 %1093, %1095
  %1099 = add nuw nsw i64 %1098, %1097
  %1100 = icmp eq i64 %1099, 2
  %1101 = zext i1 %1100 to i8
  store i8 %1101, i8* %38, align 1
  %1102 = icmp ne i8 %1094, 0
  %1103 = xor i1 %1102, %1100
  %.demorgan127 = or i1 %1091, %1103
  %.v140 = select i1 %.demorgan127, i64 14, i64 46
  %1104 = add i64 %1067, %.v140
  store i64 %1104, i64* %3, align 8
  br i1 %.demorgan127, label %block_400d37, label %block_.L_400d57

block_400d37:                                     ; preds = %block_.L_400d29
  store i64 6299840, i64* %RDI.i1185, align 8
  %1105 = add i64 %1104, 2329
  %1106 = add i64 %1104, 15
  %1107 = load i64, i64* %6, align 8
  %1108 = add i64 %1107, -8
  %1109 = inttoptr i64 %1108 to i64*
  store i64 %1106, i64* %1109, align 8
  store i64 %1108, i64* %6, align 8
  store i64 %1105, i64* %3, align 8
  %call2_400d41 = tail call %struct.Memory* @sub_401650.PA(%struct.State* nonnull %0, i64 %1105, %struct.Memory* %MEMORY.8)
  %1110 = load i64, i64* %RBP.i, align 8
  %1111 = add i64 %1110, -24
  %1112 = load i64, i64* %3, align 8
  %1113 = add i64 %1112, 4
  store i64 %1113, i64* %3, align 8
  %1114 = inttoptr i64 %1111 to i64*
  %1115 = load i64, i64* %1114, align 8
  %1116 = add i64 %1115, 1
  store i64 %1116, i64* %RAX.i1202, align 8
  %1117 = icmp eq i64 %1115, -1
  %1118 = icmp eq i64 %1116, 0
  %1119 = or i1 %1117, %1118
  %1120 = zext i1 %1119 to i8
  store i8 %1120, i8* %14, align 1
  %1121 = trunc i64 %1116 to i32
  %1122 = and i32 %1121, 255
  %1123 = tail call i32 @llvm.ctpop.i32(i32 %1122)
  %1124 = trunc i32 %1123 to i8
  %1125 = and i8 %1124, 1
  %1126 = xor i8 %1125, 1
  store i8 %1126, i8* %21, align 1
  %1127 = xor i64 %1116, %1115
  %1128 = lshr i64 %1127, 4
  %1129 = trunc i64 %1128 to i8
  %1130 = and i8 %1129, 1
  store i8 %1130, i8* %26, align 1
  %1131 = zext i1 %1118 to i8
  store i8 %1131, i8* %29, align 1
  %1132 = lshr i64 %1116, 63
  %1133 = trunc i64 %1132 to i8
  store i8 %1133, i8* %32, align 1
  %1134 = lshr i64 %1115, 63
  %1135 = xor i64 %1132, %1134
  %1136 = add nuw nsw i64 %1135, %1132
  %1137 = icmp eq i64 %1136, 2
  %1138 = zext i1 %1137 to i8
  store i8 %1138, i8* %38, align 1
  %1139 = add i64 %1112, 12
  store i64 %1139, i64* %3, align 8
  store i64 %1116, i64* %1114, align 8
  %1140 = load i64, i64* %3, align 8
  %1141 = add i64 %1140, -41
  store i64 %1141, i64* %3, align 8
  br label %block_.L_400d29

block_.L_400d57:                                  ; preds = %block_.L_400d29
  %1142 = add i64 %1068, -176
  %1143 = add i64 %1104, 6
  store i64 %1143, i64* %3, align 8
  %1144 = inttoptr i64 %1142 to i32*
  %1145 = load i32, i32* %1144, align 4
  %1146 = zext i32 %1145 to i64
  store i64 %1146, i64* %RAX.i1202, align 8
  %1147 = add i64 %1068, -172
  %1148 = add i64 %1104, 12
  store i64 %1148, i64* %3, align 8
  %1149 = inttoptr i64 %1147 to i32*
  %1150 = load i32, i32* %1149, align 4
  %1151 = sub i32 %1145, %1150
  %1152 = icmp ult i32 %1145, %1150
  %1153 = zext i1 %1152 to i8
  store i8 %1153, i8* %14, align 1
  %1154 = and i32 %1151, 255
  %1155 = tail call i32 @llvm.ctpop.i32(i32 %1154)
  %1156 = trunc i32 %1155 to i8
  %1157 = and i8 %1156, 1
  %1158 = xor i8 %1157, 1
  store i8 %1158, i8* %21, align 1
  %1159 = xor i32 %1150, %1145
  %1160 = xor i32 %1159, %1151
  %1161 = lshr i32 %1160, 4
  %1162 = trunc i32 %1161 to i8
  %1163 = and i8 %1162, 1
  store i8 %1163, i8* %26, align 1
  %1164 = icmp eq i32 %1151, 0
  %1165 = zext i1 %1164 to i8
  store i8 %1165, i8* %29, align 1
  %1166 = lshr i32 %1151, 31
  %1167 = trunc i32 %1166 to i8
  store i8 %1167, i8* %32, align 1
  %1168 = lshr i32 %1145, 31
  %1169 = lshr i32 %1150, 31
  %1170 = xor i32 %1169, %1168
  %1171 = xor i32 %1166, %1168
  %1172 = add nuw nsw i32 %1171, %1170
  %1173 = icmp eq i32 %1172, 2
  %1174 = zext i1 %1173 to i8
  store i8 %1174, i8* %38, align 1
  %.v141 = select i1 %1164, i64 18, i64 71
  %1175 = add i64 %1104, %.v141
  store i64 %1175, i64* %3, align 8
  br i1 %1164, label %block_400d69, label %block_.L_400d9e

block_400d69:                                     ; preds = %block_.L_400d57
  %1176 = add i64 %1175, 4
  store i64 %1176, i64* %3, align 8
  %1177 = load i64, i64* %1075, align 8
  store i64 %1177, i64* %RDI.i1185, align 8
  %1178 = add i64 %1068, -40
  %1179 = add i64 %1175, 8
  store i64 %1179, i64* %3, align 8
  %1180 = inttoptr i64 %1178 to i64*
  %1181 = load i64, i64* %1180, align 8
  store i64 %1181, i64* %RSI.i1211, align 8
  %1182 = add i64 %1175, 12
  store i64 %1182, i64* %3, align 8
  %1183 = load i64, i64* %1180, align 8
  store i64 %1183, i64* %RDX.i587, align 8
  %1184 = load i64, i64* inttoptr (i64 6299848 to i64*), align 8
  store i64 %1184, i64* %298, align 1
  store double 0.000000e+00, double* %300, align 1
  %1185 = load i64, i64* inttoptr (i64 6299856 to i64*), align 16
  store i64 %1185, i64* %303, align 1
  store double 0.000000e+00, double* %305, align 1
  %1186 = load i64, i64* inttoptr (i64 6299864 to i64*), align 8
  store i64 %1186, i64* %308, align 1
  store double 0.000000e+00, double* %310, align 1
  %1187 = load i64, i64* inttoptr (i64 6299872 to i64*), align 32
  store i64 %1187, i64* %325, align 1
  store double 0.000000e+00, double* %314, align 1
  %1188 = add i64 %1175, 2167
  %1189 = add i64 %1175, 53
  %1190 = load i64, i64* %6, align 8
  %1191 = add i64 %1190, -8
  %1192 = inttoptr i64 %1191 to i64*
  store i64 %1189, i64* %1192, align 8
  store i64 %1191, i64* %6, align 8
  store i64 %1188, i64* %3, align 8
  %call2_400d99 = tail call %struct.Memory* @sub_4015e0.POUT(%struct.State* nonnull %0, i64 %1188, %struct.Memory* %MEMORY.8)
  %.pre101 = load i64, i64* %3, align 8
  %.pre102 = load i64, i64* %RBP.i, align 8
  br label %block_.L_400d9e

block_.L_400d9e:                                  ; preds = %block_.L_400d57, %block_400d69
  %1193 = phi i64 [ %1068, %block_.L_400d57 ], [ %.pre102, %block_400d69 ]
  %1194 = phi i64 [ %1175, %block_.L_400d57 ], [ %.pre101, %block_400d69 ]
  %MEMORY.10 = phi %struct.Memory* [ %MEMORY.8, %block_.L_400d57 ], [ %call2_400d99, %block_400d69 ]
  store i32 1, i32* inttoptr (i64 6299792 to i32*), align 16
  %1195 = add i64 %1193, -24
  %1196 = add i64 %1194, 19
  store i64 %1196, i64* %3, align 8
  %1197 = inttoptr i64 %1195 to i64*
  store i64 1, i64* %1197, align 8
  %.pre103 = load i64, i64* %3, align 8
  br label %block_.L_400db1

block_.L_400db1:                                  ; preds = %block_.L_400e3a, %block_.L_400d9e
  %1198 = phi i64 [ %1321, %block_.L_400e3a ], [ %.pre103, %block_.L_400d9e ]
  %1199 = load i64, i64* %RBP.i, align 8
  %1200 = add i64 %1199, -24
  %1201 = add i64 %1198, 4
  store i64 %1201, i64* %3, align 8
  %1202 = inttoptr i64 %1200 to i64*
  %1203 = load i64, i64* %1202, align 8
  store i64 %1203, i64* %RAX.i1202, align 8
  %1204 = add i64 %1199, -56
  %1205 = add i64 %1198, 8
  store i64 %1205, i64* %3, align 8
  %1206 = inttoptr i64 %1204 to i64*
  %1207 = load i64, i64* %1206, align 8
  %1208 = sub i64 %1203, %1207
  %1209 = icmp ult i64 %1203, %1207
  %1210 = zext i1 %1209 to i8
  store i8 %1210, i8* %14, align 1
  %1211 = trunc i64 %1208 to i32
  %1212 = and i32 %1211, 255
  %1213 = tail call i32 @llvm.ctpop.i32(i32 %1212)
  %1214 = trunc i32 %1213 to i8
  %1215 = and i8 %1214, 1
  %1216 = xor i8 %1215, 1
  store i8 %1216, i8* %21, align 1
  %1217 = xor i64 %1207, %1203
  %1218 = xor i64 %1217, %1208
  %1219 = lshr i64 %1218, 4
  %1220 = trunc i64 %1219 to i8
  %1221 = and i8 %1220, 1
  store i8 %1221, i8* %26, align 1
  %1222 = icmp eq i64 %1208, 0
  %1223 = zext i1 %1222 to i8
  store i8 %1223, i8* %29, align 1
  %1224 = lshr i64 %1208, 63
  %1225 = trunc i64 %1224 to i8
  store i8 %1225, i8* %32, align 1
  %1226 = lshr i64 %1203, 63
  %1227 = lshr i64 %1207, 63
  %1228 = xor i64 %1227, %1226
  %1229 = xor i64 %1224, %1226
  %1230 = add nuw nsw i64 %1229, %1228
  %1231 = icmp eq i64 %1230, 2
  %1232 = zext i1 %1231 to i8
  store i8 %1232, i8* %38, align 1
  %1233 = icmp ne i8 %1225, 0
  %1234 = xor i1 %1233, %1231
  %.demorgan128 = or i1 %1222, %1234
  %.v142 = select i1 %.demorgan128, i64 14, i64 159
  %1235 = add i64 %1198, %.v142
  store i64 %1235, i64* %3, align 8
  br i1 %.demorgan128, label %block_400dbf, label %block_.L_400e50

block_400dbf:                                     ; preds = %block_.L_400db1
  %1236 = load i32, i32* inttoptr (i64 6299792 to i32*), align 16
  %1237 = add i32 %1236, -1
  %1238 = icmp eq i32 %1236, 0
  %1239 = zext i1 %1238 to i8
  store i8 %1239, i8* %14, align 1
  %1240 = and i32 %1237, 255
  %1241 = tail call i32 @llvm.ctpop.i32(i32 %1240)
  %1242 = trunc i32 %1241 to i8
  %1243 = and i8 %1242, 1
  %1244 = xor i8 %1243, 1
  store i8 %1244, i8* %21, align 1
  %1245 = xor i32 %1237, %1236
  %1246 = lshr i32 %1245, 4
  %1247 = trunc i32 %1246 to i8
  %1248 = and i8 %1247, 1
  store i8 %1248, i8* %26, align 1
  %1249 = icmp eq i32 %1237, 0
  %1250 = zext i1 %1249 to i8
  store i8 %1250, i8* %29, align 1
  %1251 = lshr i32 %1237, 31
  %1252 = trunc i32 %1251 to i8
  store i8 %1252, i8* %32, align 1
  %1253 = lshr i32 %1236, 31
  %1254 = xor i32 %1251, %1253
  %1255 = add nuw nsw i32 %1254, %1253
  %1256 = icmp eq i32 %1255, 2
  %1257 = zext i1 %1256 to i8
  store i8 %1257, i8* %38, align 1
  %.v157 = select i1 %1249, i64 14, i64 30
  %1258 = add i64 %1235, %.v157
  %1259 = add i64 %1258, 11
  store i64 %1259, i64* %3, align 8
  br i1 %1249, label %block_400dcd, label %block_.L_400ddd

block_400dcd:                                     ; preds = %block_400dbf
  store i32 2, i32* inttoptr (i64 6299792 to i32*), align 16
  %1260 = add i64 %1258, 27
  store i64 %1260, i64* %3, align 8
  br label %block_.L_400de8

block_.L_400ddd:                                  ; preds = %block_400dbf
  store i32 3, i32* inttoptr (i64 6299792 to i32*), align 16
  br label %block_.L_400de8

block_.L_400de8:                                  ; preds = %block_.L_400ddd, %block_400dcd
  %1261 = phi i32 [ 1, %block_.L_400ddd ], [ 0, %block_400dcd ]
  %1262 = phi i64 [ %1259, %block_.L_400ddd ], [ %1260, %block_400dcd ]
  store i8 0, i8* %14, align 1
  %1263 = tail call i32 @llvm.ctpop.i32(i32 %1261)
  %1264 = trunc i32 %1263 to i8
  %1265 = xor i8 %1264, 1
  store i8 %1265, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1266 = icmp eq i32 %1261, 0
  %1267 = trunc i32 %1261 to i8
  %1268 = xor i8 %1267, 1
  store i8 %1268, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v158 = select i1 %1266, i64 30, i64 14
  %1269 = add i64 %1262, %.v158
  %1270 = add i64 %1269, 11
  store i64 %1270, i64* %3, align 8
  br i1 %1266, label %block_.L_400e06, label %block_400df6

block_400df6:                                     ; preds = %block_.L_400de8
  store i32 0, i32* inttoptr (i64 6299792 to i32*), align 16
  %1271 = add i64 %1269, 27
  store i64 %1271, i64* %3, align 8
  br label %block_.L_400e11

block_.L_400e06:                                  ; preds = %block_.L_400de8
  store i32 1, i32* inttoptr (i64 6299792 to i32*), align 16
  br label %block_.L_400e11

block_.L_400e11:                                  ; preds = %block_.L_400e06, %block_400df6
  %1272 = phi i32 [ 1, %block_.L_400e06 ], [ 0, %block_400df6 ]
  %1273 = phi i64 [ %1270, %block_.L_400e06 ], [ %1271, %block_400df6 ]
  %1274 = add nsw i32 %1272, -1
  %1275 = trunc i32 %1272 to i8
  %1276 = xor i8 %1275, 1
  store i8 %1276, i8* %14, align 1
  %1277 = and i32 %1274, 255
  %1278 = tail call i32 @llvm.ctpop.i32(i32 %1277)
  %1279 = trunc i32 %1278 to i8
  %1280 = and i8 %1279, 1
  %1281 = xor i8 %1280, 1
  store i8 %1281, i8* %21, align 1
  %1282 = lshr i32 %1274, 4
  %1283 = trunc i32 %1282 to i8
  %1284 = and i8 %1283, 1
  store i8 %1284, i8* %26, align 1
  %1285 = icmp eq i32 %1274, 0
  %1286 = zext i1 %1285 to i8
  store i8 %1286, i8* %29, align 1
  %1287 = lshr i32 %1274, 31
  %1288 = trunc i32 %1287 to i8
  store i8 %1288, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1289 = icmp ne i8 %1288, 0
  %.v159 = select i1 %1289, i64 14, i64 30
  %1290 = add i64 %1273, %.v159
  %1291 = add i64 %1290, 11
  store i64 %1291, i64* %3, align 8
  br i1 %1289, label %block_400e1f, label %block_.L_400e2f

block_400e1f:                                     ; preds = %block_.L_400e11
  store i32 1, i32* inttoptr (i64 6299792 to i32*), align 16
  %1292 = add i64 %1290, 27
  store i64 %1292, i64* %3, align 8
  br label %block_.L_400e3a

block_.L_400e2f:                                  ; preds = %block_.L_400e11
  store i32 0, i32* inttoptr (i64 6299792 to i32*), align 16
  br label %block_.L_400e3a

block_.L_400e3a:                                  ; preds = %block_.L_400e2f, %block_400e1f
  %1293 = phi i64 [ %1291, %block_.L_400e2f ], [ %1292, %block_400e1f ]
  %1294 = add i64 %1293, 9
  store i64 %1294, i64* %3, align 8
  %1295 = load i64, i64* %1202, align 8
  %1296 = add i64 %1295, 1
  store i64 %1296, i64* %RAX.i1202, align 8
  %1297 = icmp eq i64 %1295, -1
  %1298 = icmp eq i64 %1296, 0
  %1299 = or i1 %1297, %1298
  %1300 = zext i1 %1299 to i8
  store i8 %1300, i8* %14, align 1
  %1301 = trunc i64 %1296 to i32
  %1302 = and i32 %1301, 255
  %1303 = tail call i32 @llvm.ctpop.i32(i32 %1302)
  %1304 = trunc i32 %1303 to i8
  %1305 = and i8 %1304, 1
  %1306 = xor i8 %1305, 1
  store i8 %1306, i8* %21, align 1
  %1307 = xor i64 %1296, %1295
  %1308 = lshr i64 %1307, 4
  %1309 = trunc i64 %1308 to i8
  %1310 = and i8 %1309, 1
  store i8 %1310, i8* %26, align 1
  %1311 = zext i1 %1298 to i8
  store i8 %1311, i8* %29, align 1
  %1312 = lshr i64 %1296, 63
  %1313 = trunc i64 %1312 to i8
  store i8 %1313, i8* %32, align 1
  %1314 = lshr i64 %1295, 63
  %1315 = xor i64 %1312, %1314
  %1316 = add nuw nsw i64 %1315, %1312
  %1317 = icmp eq i64 %1316, 2
  %1318 = zext i1 %1317 to i8
  store i8 %1318, i8* %38, align 1
  %1319 = add i64 %1293, 17
  store i64 %1319, i64* %3, align 8
  store i64 %1296, i64* %1202, align 8
  %1320 = load i64, i64* %3, align 8
  %1321 = add i64 %1320, -154
  store i64 %1321, i64* %3, align 8
  br label %block_.L_400db1

block_.L_400e50:                                  ; preds = %block_.L_400db1
  %1322 = add i64 %1199, -176
  %1323 = add i64 %1235, 6
  store i64 %1323, i64* %3, align 8
  %1324 = inttoptr i64 %1322 to i32*
  %1325 = load i32, i32* %1324, align 4
  %1326 = zext i32 %1325 to i64
  store i64 %1326, i64* %RAX.i1202, align 8
  %1327 = add i64 %1199, -172
  %1328 = add i64 %1235, 12
  store i64 %1328, i64* %3, align 8
  %1329 = inttoptr i64 %1327 to i32*
  %1330 = load i32, i32* %1329, align 4
  %1331 = sub i32 %1325, %1330
  %1332 = icmp ult i32 %1325, %1330
  %1333 = zext i1 %1332 to i8
  store i8 %1333, i8* %14, align 1
  %1334 = and i32 %1331, 255
  %1335 = tail call i32 @llvm.ctpop.i32(i32 %1334)
  %1336 = trunc i32 %1335 to i8
  %1337 = and i8 %1336, 1
  %1338 = xor i8 %1337, 1
  store i8 %1338, i8* %21, align 1
  %1339 = xor i32 %1330, %1325
  %1340 = xor i32 %1339, %1331
  %1341 = lshr i32 %1340, 4
  %1342 = trunc i32 %1341 to i8
  %1343 = and i8 %1342, 1
  store i8 %1343, i8* %26, align 1
  %1344 = icmp eq i32 %1331, 0
  %1345 = zext i1 %1344 to i8
  store i8 %1345, i8* %29, align 1
  %1346 = lshr i32 %1331, 31
  %1347 = trunc i32 %1346 to i8
  store i8 %1347, i8* %32, align 1
  %1348 = lshr i32 %1325, 31
  %1349 = lshr i32 %1330, 31
  %1350 = xor i32 %1349, %1348
  %1351 = xor i32 %1346, %1348
  %1352 = add nuw nsw i32 %1351, %1350
  %1353 = icmp eq i32 %1352, 2
  %1354 = zext i1 %1353 to i8
  store i8 %1354, i8* %38, align 1
  %.v143 = select i1 %1344, i64 18, i64 66
  %1355 = add i64 %1235, %.v143
  store i64 %1355, i64* %3, align 8
  br i1 %1344, label %block_400e62, label %block_.L_400e92

block_400e62:                                     ; preds = %block_.L_400e50
  %1356 = add i64 %1355, 4
  store i64 %1356, i64* %3, align 8
  %1357 = load i64, i64* %1206, align 8
  store i64 %1357, i64* %RDI.i1185, align 8
  %1358 = load i32, i32* inttoptr (i64 6299792 to i32*), align 16
  %1359 = sext i32 %1358 to i64
  store i64 %1359, i64* %RSI.i1211, align 8
  store i64 %1359, i64* %RDX.i587, align 8
  %1360 = add i64 %1199, -112
  %1361 = add i64 %1355, 25
  store i64 %1361, i64* %3, align 8
  %1362 = inttoptr i64 %1360 to i64*
  %1363 = load i64, i64* %1362, align 8
  store i64 %1363, i64* %298, align 1
  store double 0.000000e+00, double* %300, align 1
  %1364 = add i64 %1199, -120
  %1365 = add i64 %1355, 30
  store i64 %1365, i64* %3, align 8
  %1366 = inttoptr i64 %1364 to i64*
  %1367 = load i64, i64* %1366, align 8
  store i64 %1367, i64* %303, align 1
  store double 0.000000e+00, double* %305, align 1
  %1368 = add i64 %1199, -128
  %1369 = add i64 %1355, 35
  store i64 %1369, i64* %3, align 8
  %1370 = inttoptr i64 %1368 to i64*
  %1371 = load i64, i64* %1370, align 8
  store i64 %1371, i64* %308, align 1
  store double 0.000000e+00, double* %310, align 1
  %1372 = add i64 %1199, -136
  %1373 = add i64 %1355, 43
  store i64 %1373, i64* %3, align 8
  %1374 = inttoptr i64 %1372 to i64*
  %1375 = load i64, i64* %1374, align 8
  store i64 %1375, i64* %325, align 1
  store double 0.000000e+00, double* %314, align 1
  %1376 = add i64 %1355, 1918
  %1377 = add i64 %1355, 48
  %1378 = load i64, i64* %6, align 8
  %1379 = add i64 %1378, -8
  %1380 = inttoptr i64 %1379 to i64*
  store i64 %1377, i64* %1380, align 8
  store i64 %1379, i64* %6, align 8
  store i64 %1376, i64* %3, align 8
  %call2_400e8d = tail call %struct.Memory* @sub_4015e0.POUT(%struct.State* nonnull %0, i64 %1376, %struct.Memory* %MEMORY.10)
  %.pre104 = load i64, i64* %3, align 8
  %.pre105 = load i64, i64* %RBP.i, align 8
  br label %block_.L_400e92

block_.L_400e92:                                  ; preds = %block_.L_400e50, %block_400e62
  %1381 = phi i64 [ %1199, %block_.L_400e50 ], [ %.pre105, %block_400e62 ]
  %1382 = phi i64 [ %1355, %block_.L_400e50 ], [ %.pre104, %block_400e62 ]
  %MEMORY.15 = phi %struct.Memory* [ %MEMORY.10, %block_.L_400e50 ], [ %call2_400e8d, %block_400e62 ]
  store i32 1, i32* inttoptr (i64 6299792 to i32*), align 16
  store i32 2, i32* inttoptr (i64 6299820 to i32*), align 4
  store i32 3, i32* inttoptr (i64 6299816 to i32*), align 8
  %1383 = add i64 %1381, -24
  %1384 = add i64 %1382, 41
  store i64 %1384, i64* %3, align 8
  %1385 = inttoptr i64 %1383 to i64*
  store i64 1, i64* %1385, align 8
  %.pre106 = load i64, i64* %3, align 8
  br label %block_.L_400ebb

block_.L_400ebb:                                  ; preds = %block_400ec9, %block_.L_400e92
  %1386 = phi i64 [ %1527, %block_400ec9 ], [ %.pre106, %block_.L_400e92 ]
  %1387 = load i64, i64* %RBP.i, align 8
  %1388 = add i64 %1387, -24
  %1389 = add i64 %1386, 4
  store i64 %1389, i64* %3, align 8
  %1390 = inttoptr i64 %1388 to i64*
  %1391 = load i64, i64* %1390, align 8
  store i64 %1391, i64* %RAX.i1202, align 8
  %1392 = add i64 %1387, -64
  %1393 = add i64 %1386, 8
  store i64 %1393, i64* %3, align 8
  %1394 = inttoptr i64 %1392 to i64*
  %1395 = load i64, i64* %1394, align 8
  %1396 = sub i64 %1391, %1395
  %1397 = icmp ult i64 %1391, %1395
  %1398 = zext i1 %1397 to i8
  store i8 %1398, i8* %14, align 1
  %1399 = trunc i64 %1396 to i32
  %1400 = and i32 %1399, 255
  %1401 = tail call i32 @llvm.ctpop.i32(i32 %1400)
  %1402 = trunc i32 %1401 to i8
  %1403 = and i8 %1402, 1
  %1404 = xor i8 %1403, 1
  store i8 %1404, i8* %21, align 1
  %1405 = xor i64 %1395, %1391
  %1406 = xor i64 %1405, %1396
  %1407 = lshr i64 %1406, 4
  %1408 = trunc i64 %1407 to i8
  %1409 = and i8 %1408, 1
  store i8 %1409, i8* %26, align 1
  %1410 = icmp eq i64 %1396, 0
  %1411 = zext i1 %1410 to i8
  store i8 %1411, i8* %29, align 1
  %1412 = lshr i64 %1396, 63
  %1413 = trunc i64 %1412 to i8
  store i8 %1413, i8* %32, align 1
  %1414 = lshr i64 %1391, 63
  %1415 = lshr i64 %1395, 63
  %1416 = xor i64 %1415, %1414
  %1417 = xor i64 %1412, %1414
  %1418 = add nuw nsw i64 %1417, %1416
  %1419 = icmp eq i64 %1418, 2
  %1420 = zext i1 %1419 to i8
  store i8 %1420, i8* %38, align 1
  %1421 = icmp ne i8 %1413, 0
  %1422 = xor i1 %1421, %1419
  %.demorgan129 = or i1 %1410, %1422
  %.v144 = select i1 %.demorgan129, i64 14, i64 259
  %1423 = add i64 %1386, %.v144
  store i64 %1423, i64* %3, align 8
  br i1 %.demorgan129, label %block_400ec9, label %block_.L_400fbe

block_400ec9:                                     ; preds = %block_.L_400ebb
  %1424 = load i32, i32* inttoptr (i64 6299792 to i32*), align 16
  %1425 = load i32, i32* inttoptr (i64 6299820 to i32*), align 4
  %1426 = sub i32 %1425, %1424
  %1427 = sext i32 %1424 to i64
  %1428 = sext i32 %1426 to i64
  %1429 = mul nsw i64 %1428, %1427
  %1430 = load i32, i32* inttoptr (i64 6299816 to i32*), align 8
  %1431 = sub i32 %1430, %1425
  %1432 = shl i64 %1429, 32
  %1433 = ashr exact i64 %1432, 32
  %1434 = sext i32 %1431 to i64
  %1435 = mul nsw i64 %1434, %1433
  %1436 = trunc i64 %1435 to i32
  store i32 %1436, i32* inttoptr (i64 6299792 to i32*), align 16
  %1437 = load i32, i32* inttoptr (i64 6299820 to i32*), align 4
  %1438 = mul i32 %1437, %1436
  store i32 %1438, i32* inttoptr (i64 6299820 to i32*), align 4
  %1439 = load i32, i32* inttoptr (i64 6299816 to i32*), align 8
  %1440 = sub i32 %1439, %1438
  %1441 = load i32, i32* inttoptr (i64 6299792 to i32*), align 16
  %1442 = add i32 %1441, %1438
  %1443 = zext i32 %1442 to i64
  store i64 %1443, i64* %RCX.i642, align 8
  %1444 = mul i32 %1442, %1440
  store i32 %1444, i32* inttoptr (i64 6299816 to i32*), align 8
  %1445 = load i32, i32* inttoptr (i64 6299792 to i32*), align 16
  %1446 = load i32, i32* inttoptr (i64 6299820 to i32*), align 4
  %1447 = add i32 %1446, %1445
  %1448 = add i32 %1444, %1447
  %1449 = sitofp i32 %1448 to double
  %1450 = add i32 %1444, -1
  %1451 = sext i32 %1450 to i64
  %1452 = shl nsw i64 %1451, 3
  %1453 = add nsw i64 %1452, 6299840
  %1454 = add i64 %1423, 179
  store i64 %1454, i64* %3, align 8
  %1455 = inttoptr i64 %1453 to double*
  store double %1449, double* %1455, align 8
  %1456 = load i64, i64* %3, align 8
  %1457 = load i32, i32* inttoptr (i64 6299792 to i32*), align 16
  %1458 = load i32, i32* inttoptr (i64 6299820 to i32*), align 4
  %1459 = sext i32 %1457 to i64
  %1460 = sext i32 %1458 to i64
  %1461 = mul nsw i64 %1460, %1459
  %1462 = load i32, i32* inttoptr (i64 6299816 to i32*), align 8
  %1463 = shl i64 %1461, 32
  %1464 = ashr exact i64 %1463, 32
  %1465 = sext i32 %1462 to i64
  %1466 = mul nsw i64 %1465, %1464
  %1467 = trunc i64 %1466 to i32
  %1468 = sitofp i32 %1467 to double
  store double %1468, double* %297, align 1
  %1469 = add i32 %1458, -1
  %1470 = zext i32 %1469 to i64
  store i64 %1470, i64* %RAX.i1202, align 8
  %1471 = icmp eq i32 %1458, 0
  %1472 = zext i1 %1471 to i8
  store i8 %1472, i8* %14, align 1
  %1473 = and i32 %1469, 255
  %1474 = tail call i32 @llvm.ctpop.i32(i32 %1473)
  %1475 = trunc i32 %1474 to i8
  %1476 = and i8 %1475, 1
  %1477 = xor i8 %1476, 1
  store i8 %1477, i8* %21, align 1
  %1478 = xor i32 %1469, %1458
  %1479 = lshr i32 %1478, 4
  %1480 = trunc i32 %1479 to i8
  %1481 = and i8 %1480, 1
  store i8 %1481, i8* %26, align 1
  %1482 = icmp eq i32 %1469, 0
  %1483 = zext i1 %1482 to i8
  store i8 %1483, i8* %29, align 1
  %1484 = lshr i32 %1469, 31
  %1485 = trunc i32 %1484 to i8
  store i8 %1485, i8* %32, align 1
  %1486 = lshr i32 %1458, 31
  %1487 = xor i32 %1484, %1486
  %1488 = add nuw nsw i32 %1487, %1486
  %1489 = icmp eq i32 %1488, 2
  %1490 = zext i1 %1489 to i8
  store i8 %1490, i8* %38, align 1
  %1491 = sext i32 %1469 to i64
  store i64 %1491, i64* %RDX.i587, align 8
  %1492 = shl nsw i64 %1491, 3
  %1493 = add nsw i64 %1492, 6299840
  %1494 = add i64 %1456, 49
  store i64 %1494, i64* %3, align 8
  %1495 = inttoptr i64 %1493 to double*
  store double %1468, double* %1495, align 8
  %1496 = load i64, i64* %RBP.i, align 8
  %1497 = add i64 %1496, -24
  %1498 = load i64, i64* %3, align 8
  %1499 = add i64 %1498, 4
  store i64 %1499, i64* %3, align 8
  %1500 = inttoptr i64 %1497 to i64*
  %1501 = load i64, i64* %1500, align 8
  %1502 = add i64 %1501, 1
  store i64 %1502, i64* %RAX.i1202, align 8
  %1503 = icmp eq i64 %1501, -1
  %1504 = icmp eq i64 %1502, 0
  %1505 = or i1 %1503, %1504
  %1506 = zext i1 %1505 to i8
  store i8 %1506, i8* %14, align 1
  %1507 = trunc i64 %1502 to i32
  %1508 = and i32 %1507, 255
  %1509 = tail call i32 @llvm.ctpop.i32(i32 %1508)
  %1510 = trunc i32 %1509 to i8
  %1511 = and i8 %1510, 1
  %1512 = xor i8 %1511, 1
  store i8 %1512, i8* %21, align 1
  %1513 = xor i64 %1502, %1501
  %1514 = lshr i64 %1513, 4
  %1515 = trunc i64 %1514 to i8
  %1516 = and i8 %1515, 1
  store i8 %1516, i8* %26, align 1
  %1517 = zext i1 %1504 to i8
  store i8 %1517, i8* %29, align 1
  %1518 = lshr i64 %1502, 63
  %1519 = trunc i64 %1518 to i8
  store i8 %1519, i8* %32, align 1
  %1520 = lshr i64 %1501, 63
  %1521 = xor i64 %1518, %1520
  %1522 = add nuw nsw i64 %1521, %1518
  %1523 = icmp eq i64 %1522, 2
  %1524 = zext i1 %1523 to i8
  store i8 %1524, i8* %38, align 1
  %1525 = add i64 %1498, 12
  store i64 %1525, i64* %3, align 8
  store i64 %1502, i64* %1500, align 8
  %1526 = load i64, i64* %3, align 8
  %1527 = add i64 %1526, -254
  store i64 %1527, i64* %3, align 8
  br label %block_.L_400ebb

block_.L_400fbe:                                  ; preds = %block_.L_400ebb
  %1528 = add i64 %1387, -176
  %1529 = add i64 %1423, 6
  store i64 %1529, i64* %3, align 8
  %1530 = inttoptr i64 %1528 to i32*
  %1531 = load i32, i32* %1530, align 4
  %1532 = zext i32 %1531 to i64
  store i64 %1532, i64* %RAX.i1202, align 8
  %1533 = add i64 %1387, -172
  %1534 = add i64 %1423, 12
  store i64 %1534, i64* %3, align 8
  %1535 = inttoptr i64 %1533 to i32*
  %1536 = load i32, i32* %1535, align 4
  %1537 = sub i32 %1531, %1536
  %1538 = icmp ult i32 %1531, %1536
  %1539 = zext i1 %1538 to i8
  store i8 %1539, i8* %14, align 1
  %1540 = and i32 %1537, 255
  %1541 = tail call i32 @llvm.ctpop.i32(i32 %1540)
  %1542 = trunc i32 %1541 to i8
  %1543 = and i8 %1542, 1
  %1544 = xor i8 %1543, 1
  store i8 %1544, i8* %21, align 1
  %1545 = xor i32 %1536, %1531
  %1546 = xor i32 %1545, %1537
  %1547 = lshr i32 %1546, 4
  %1548 = trunc i32 %1547 to i8
  %1549 = and i8 %1548, 1
  store i8 %1549, i8* %26, align 1
  %1550 = icmp eq i32 %1537, 0
  %1551 = zext i1 %1550 to i8
  store i8 %1551, i8* %29, align 1
  %1552 = lshr i32 %1537, 31
  %1553 = trunc i32 %1552 to i8
  store i8 %1553, i8* %32, align 1
  %1554 = lshr i32 %1531, 31
  %1555 = lshr i32 %1536, 31
  %1556 = xor i32 %1555, %1554
  %1557 = xor i32 %1552, %1554
  %1558 = add nuw nsw i32 %1557, %1556
  %1559 = icmp eq i32 %1558, 2
  %1560 = zext i1 %1559 to i8
  store i8 %1560, i8* %38, align 1
  %.v145 = select i1 %1550, i64 18, i64 79
  %1561 = add i64 %1423, %.v145
  store i64 %1561, i64* %3, align 8
  br i1 %1550, label %block_400fd0, label %block_.L_40100d

block_400fd0:                                     ; preds = %block_.L_400fbe
  %1562 = add i64 %1561, 4
  store i64 %1562, i64* %3, align 8
  %1563 = load i64, i64* %1394, align 8
  store i64 %1563, i64* %RDI.i1185, align 8
  %1564 = load i32, i32* inttoptr (i64 6299792 to i32*), align 16
  %1565 = sext i32 %1564 to i64
  store i64 %1565, i64* %RSI.i1211, align 8
  %1566 = load i32, i32* inttoptr (i64 6299820 to i32*), align 4
  %1567 = sext i32 %1566 to i64
  store i64 %1567, i64* %RDX.i587, align 8
  %1568 = load i64, i64* inttoptr (i64 6299848 to i64*), align 8
  store i64 %1568, i64* %298, align 1
  store double 0.000000e+00, double* %300, align 1
  %1569 = load i64, i64* inttoptr (i64 6299856 to i64*), align 16
  store i64 %1569, i64* %303, align 1
  store double 0.000000e+00, double* %305, align 1
  %1570 = load i64, i64* inttoptr (i64 6299864 to i64*), align 8
  store i64 %1570, i64* %308, align 1
  store double 0.000000e+00, double* %310, align 1
  %1571 = load i64, i64* inttoptr (i64 6299872 to i64*), align 32
  store i64 %1571, i64* %325, align 1
  store double 0.000000e+00, double* %314, align 1
  %1572 = add i64 %1561, 1552
  %1573 = add i64 %1561, 61
  %1574 = load i64, i64* %6, align 8
  %1575 = add i64 %1574, -8
  %1576 = inttoptr i64 %1575 to i64*
  store i64 %1573, i64* %1576, align 8
  store i64 %1575, i64* %6, align 8
  store i64 %1572, i64* %3, align 8
  %call2_401008 = tail call %struct.Memory* @sub_4015e0.POUT(%struct.State* nonnull %0, i64 %1572, %struct.Memory* %MEMORY.15)
  %.pre107 = load i64, i64* %3, align 8
  %.pre108 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40100d

block_.L_40100d:                                  ; preds = %block_.L_400fbe, %block_400fd0
  %1577 = phi i64 [ %1387, %block_.L_400fbe ], [ %.pre108, %block_400fd0 ]
  %1578 = phi i64 [ %1561, %block_.L_400fbe ], [ %.pre107, %block_400fd0 ]
  %MEMORY.17 = phi %struct.Memory* [ %MEMORY.15, %block_.L_400fbe ], [ %call2_401008, %block_400fd0 ]
  %1579 = add i64 %1578, 2323
  %1580 = add i64 %1578, 8
  store i64 %1580, i64* %3, align 8
  %1581 = inttoptr i64 %1579 to i64*
  %1582 = load i64, i64* %1581, align 8
  store i64 %1582, i64* %298, align 1
  store double 0.000000e+00, double* %300, align 1
  %1583 = add i64 %1577, -144
  %1584 = add i64 %1578, 16
  store i64 %1584, i64* %3, align 8
  %1585 = inttoptr i64 %1583 to i64*
  store i64 %1582, i64* %1585, align 8
  %1586 = load i64, i64* %RBP.i, align 8
  %1587 = add i64 %1586, -152
  %1588 = load i64, i64* %3, align 8
  %1589 = add i64 %1588, 8
  store i64 %1589, i64* %3, align 8
  %1590 = load i64, i64* %298, align 1
  %1591 = inttoptr i64 %1587 to i64*
  store i64 %1590, i64* %1591, align 8
  %1592 = load i64, i64* %RBP.i, align 8
  %1593 = add i64 %1592, -24
  %1594 = load i64, i64* %3, align 8
  %1595 = add i64 %1594, 8
  store i64 %1595, i64* %3, align 8
  %1596 = inttoptr i64 %1593 to i64*
  store i64 1, i64* %1596, align 8
  %.pre109 = load i64, i64* %3, align 8
  br label %block_.L_40102d

block_.L_40102d:                                  ; preds = %block_40103b, %block_.L_40100d
  %1597 = phi i64 [ %1966, %block_40103b ], [ %.pre109, %block_.L_40100d ]
  %1598 = load i64, i64* %RBP.i, align 8
  %1599 = add i64 %1598, -24
  %1600 = add i64 %1597, 4
  store i64 %1600, i64* %3, align 8
  %1601 = inttoptr i64 %1599 to i64*
  %1602 = load i64, i64* %1601, align 8
  store i64 %1602, i64* %RAX.i1202, align 8
  %1603 = add i64 %1598, -72
  %1604 = add i64 %1597, 8
  store i64 %1604, i64* %3, align 8
  %1605 = inttoptr i64 %1603 to i64*
  %1606 = load i64, i64* %1605, align 8
  %1607 = sub i64 %1602, %1606
  %1608 = icmp ult i64 %1602, %1606
  %1609 = zext i1 %1608 to i8
  store i8 %1609, i8* %14, align 1
  %1610 = trunc i64 %1607 to i32
  %1611 = and i32 %1610, 255
  %1612 = tail call i32 @llvm.ctpop.i32(i32 %1611)
  %1613 = trunc i32 %1612 to i8
  %1614 = and i8 %1613, 1
  %1615 = xor i8 %1614, 1
  store i8 %1615, i8* %21, align 1
  %1616 = xor i64 %1606, %1602
  %1617 = xor i64 %1616, %1607
  %1618 = lshr i64 %1617, 4
  %1619 = trunc i64 %1618 to i8
  %1620 = and i8 %1619, 1
  store i8 %1620, i8* %26, align 1
  %1621 = icmp eq i64 %1607, 0
  %1622 = zext i1 %1621 to i8
  store i8 %1622, i8* %29, align 1
  %1623 = lshr i64 %1607, 63
  %1624 = trunc i64 %1623 to i8
  store i8 %1624, i8* %32, align 1
  %1625 = lshr i64 %1602, 63
  %1626 = lshr i64 %1606, 63
  %1627 = xor i64 %1626, %1625
  %1628 = xor i64 %1623, %1625
  %1629 = add nuw nsw i64 %1628, %1627
  %1630 = icmp eq i64 %1629, 2
  %1631 = zext i1 %1630 to i8
  store i8 %1631, i8* %38, align 1
  %1632 = icmp ne i8 %1624, 0
  %1633 = xor i1 %1632, %1630
  %.demorgan130 = or i1 %1621, %1633
  %.v146 = select i1 %.demorgan130, i64 14, i64 503
  %1634 = add i64 %1597, %.v146
  store i64 %1634, i64* %3, align 8
  br i1 %.demorgan130, label %block_40103b, label %block_.L_401224

block_40103b:                                     ; preds = %block_.L_40102d
  %1635 = add i64 %1634, 2269
  %1636 = add i64 %1634, 8
  store i64 %1636, i64* %3, align 8
  %1637 = inttoptr i64 %1635 to i64*
  %1638 = load i64, i64* %1637, align 8
  store i64 %1638, i64* %298, align 1
  store double 0.000000e+00, double* %300, align 1
  %1639 = load i64, i64* inttoptr (i64 6299800 to i64*), align 8
  store i64 %1639, i64* %303, align 1
  store double 0.000000e+00, double* %305, align 1
  %1640 = load i64, i64* inttoptr (i64 6299824 to i64*), align 16
  store i64 %1640, i64* %308, align 1
  store double 0.000000e+00, double* %310, align 1
  %1641 = add i64 %1598, -144
  %1642 = add i64 %1634, 34
  store i64 %1642, i64* %3, align 8
  %1643 = inttoptr i64 %1641 to i64*
  %1644 = load i64, i64* %1643, align 8
  store i64 %1644, i64* %312, align 1
  store double 0.000000e+00, double* %314, align 1
  %1645 = add i64 %1598, -224
  %1646 = add i64 %1634, 42
  store i64 %1646, i64* %3, align 8
  %1647 = inttoptr i64 %1645 to i64*
  store i64 %1638, i64* %1647, align 8
  %1648 = load i64, i64* %3, align 8
  %1649 = load <2 x i32>, <2 x i32>* %315, align 1
  %1650 = load <2 x i32>, <2 x i32>* %316, align 1
  %1651 = extractelement <2 x i32> %1649, i32 0
  store i32 %1651, i32* %317, align 1
  %1652 = extractelement <2 x i32> %1649, i32 1
  store i32 %1652, i32* %319, align 1
  %1653 = extractelement <2 x i32> %1650, i32 0
  store i32 %1653, i32* %320, align 1
  %1654 = extractelement <2 x i32> %1650, i32 1
  store i32 %1654, i32* %322, align 1
  %1655 = load i64, i64* %RBP.i, align 8
  %1656 = add i64 %1655, -232
  %1657 = add i64 %1648, 11
  store i64 %1657, i64* %3, align 8
  %1658 = load i64, i64* %308, align 1
  %1659 = inttoptr i64 %1656 to i64*
  store i64 %1658, i64* %1659, align 8
  %1660 = load i64, i64* %RBP.i, align 8
  %1661 = add i64 %1660, -240
  %1662 = load i64, i64* %3, align 8
  %1663 = add i64 %1662, 8
  store i64 %1663, i64* %3, align 8
  %1664 = load i64, i64* %303, align 1
  %1665 = inttoptr i64 %1661 to i64*
  store i64 %1664, i64* %1665, align 8
  %1666 = load i64, i64* %3, align 8
  %1667 = add i64 %1666, -2360
  %1668 = add i64 %1666, 5
  %1669 = load i64, i64* %6, align 8
  %1670 = add i64 %1669, -8
  %1671 = inttoptr i64 %1670 to i64*
  store i64 %1668, i64* %1671, align 8
  store i64 %1670, i64* %6, align 8
  store i64 %1667, i64* %3, align 8
  %call2_401078 = tail call %struct.Memory* @sub_400740.sin_plt(%struct.State* nonnull %0, i64 %1667, %struct.Memory* %MEMORY.17)
  %1672 = load i64, i64* %RBP.i, align 8
  %1673 = add i64 %1672, -232
  %1674 = load i64, i64* %3, align 8
  %1675 = add i64 %1674, 8
  store i64 %1675, i64* %3, align 8
  %1676 = inttoptr i64 %1673 to double*
  %1677 = load double, double* %1676, align 8
  %1678 = load double, double* %297, align 1
  %1679 = fmul double %1677, %1678
  store double %1679, double* %302, align 1
  store i64 0, i64* %304, align 1
  %1680 = add i64 %1672, -144
  %1681 = add i64 %1674, 20
  store i64 %1681, i64* %3, align 8
  %1682 = inttoptr i64 %1680 to i64*
  %1683 = load i64, i64* %1682, align 8
  store i64 %1683, i64* %298, align 1
  store double 0.000000e+00, double* %300, align 1
  %1684 = add i64 %1672, -248
  %1685 = add i64 %1674, 28
  store i64 %1685, i64* %3, align 8
  %1686 = inttoptr i64 %1684 to double*
  store double %1679, double* %1686, align 8
  %1687 = load i64, i64* %3, align 8
  %1688 = add i64 %1687, -2457
  %1689 = add i64 %1687, 5
  %1690 = load i64, i64* %6, align 8
  %1691 = add i64 %1690, -8
  %1692 = inttoptr i64 %1691 to i64*
  store i64 %1689, i64* %1692, align 8
  store i64 %1691, i64* %6, align 8
  store i64 %1688, i64* %3, align 8
  %call2_401099 = tail call %struct.Memory* @sub_400700.cos_plt(%struct.State* nonnull %0, i64 %1688, %struct.Memory* %MEMORY.17)
  %1693 = load i64, i64* %RBP.i, align 8
  %1694 = add i64 %1693, -248
  %1695 = load i64, i64* %3, align 8
  %1696 = add i64 %1695, 8
  store i64 %1696, i64* %3, align 8
  %1697 = inttoptr i64 %1694 to double*
  %1698 = load double, double* %1697, align 8
  %1699 = load double, double* %297, align 1
  %1700 = fmul double %1698, %1699
  store double %1700, double* %302, align 1
  store i64 0, i64* %304, align 1
  %1701 = add i64 %1693, -144
  %1702 = add i64 %1695, 20
  store i64 %1702, i64* %3, align 8
  %1703 = inttoptr i64 %1701 to i64*
  %1704 = load i64, i64* %1703, align 8
  store i64 %1704, i64* %298, align 1
  store double 0.000000e+00, double* %300, align 1
  %1705 = add i64 %1693, -152
  %1706 = add i64 %1695, 28
  store i64 %1706, i64* %3, align 8
  %1707 = bitcast i64 %1704 to double
  %1708 = inttoptr i64 %1705 to double*
  %1709 = load double, double* %1708, align 8
  %1710 = fadd double %1707, %1709
  store double %1710, double* %297, align 1
  store i64 0, i64* %299, align 1
  %1711 = add i64 %1693, -256
  %1712 = add i64 %1695, 36
  store i64 %1712, i64* %3, align 8
  %1713 = inttoptr i64 %1711 to double*
  store double %1700, double* %1713, align 8
  %1714 = load i64, i64* %3, align 8
  %1715 = add i64 %1714, -2498
  %1716 = add i64 %1714, 5
  %1717 = load i64, i64* %6, align 8
  %1718 = add i64 %1717, -8
  %1719 = inttoptr i64 %1718 to i64*
  store i64 %1716, i64* %1719, align 8
  store i64 %1718, i64* %6, align 8
  store i64 %1715, i64* %3, align 8
  %call2_4010c2 = tail call %struct.Memory* @sub_400700.cos_plt(%struct.State* nonnull %0, i64 %1715, %struct.Memory* %MEMORY.17)
  %1720 = load i64, i64* %RBP.i, align 8
  %1721 = add i64 %1720, -144
  %1722 = load i64, i64* %3, align 8
  %1723 = add i64 %1722, 8
  store i64 %1723, i64* %3, align 8
  %1724 = inttoptr i64 %1721 to i64*
  %1725 = load i64, i64* %1724, align 8
  store i64 %1725, i64* %303, align 1
  store double 0.000000e+00, double* %305, align 1
  %1726 = add i64 %1720, -152
  %1727 = add i64 %1722, 16
  store i64 %1727, i64* %3, align 8
  %1728 = bitcast i64 %1725 to double
  %1729 = inttoptr i64 %1726 to double*
  %1730 = load double, double* %1729, align 8
  %1731 = fsub double %1728, %1730
  store double %1731, double* %302, align 1
  store i64 0, i64* %304, align 1
  %1732 = add i64 %1720, -264
  %1733 = add i64 %1722, 24
  store i64 %1733, i64* %3, align 8
  %1734 = load i64, i64* %298, align 1
  %1735 = inttoptr i64 %1732 to i64*
  store i64 %1734, i64* %1735, align 8
  %1736 = load i64, i64* %3, align 8
  %1737 = load <2 x i32>, <2 x i32>* %323, align 1
  %1738 = load <2 x i32>, <2 x i32>* %324, align 1
  %1739 = extractelement <2 x i32> %1737, i32 0
  store i32 %1739, i32* %317, align 1
  %1740 = extractelement <2 x i32> %1737, i32 1
  store i32 %1740, i32* %319, align 1
  %1741 = extractelement <2 x i32> %1738, i32 0
  store i32 %1741, i32* %320, align 1
  %1742 = extractelement <2 x i32> %1738, i32 1
  store i32 %1742, i32* %322, align 1
  %1743 = add i64 %1736, -2527
  %1744 = add i64 %1736, 8
  %1745 = load i64, i64* %6, align 8
  %1746 = add i64 %1745, -8
  %1747 = inttoptr i64 %1746 to i64*
  store i64 %1744, i64* %1747, align 8
  store i64 %1746, i64* %6, align 8
  store i64 %1743, i64* %3, align 8
  %call2_4010e2 = tail call %struct.Memory* @sub_400700.cos_plt(%struct.State* nonnull %0, i64 %1743, %struct.Memory* %MEMORY.17)
  %1748 = load i64, i64* %RBP.i, align 8
  %1749 = add i64 %1748, -264
  %1750 = load i64, i64* %3, align 8
  %1751 = add i64 %1750, 8
  store i64 %1751, i64* %3, align 8
  %1752 = inttoptr i64 %1749 to double*
  %1753 = load double, double* %1752, align 8
  %1754 = load double, double* %297, align 1
  %1755 = fadd double %1753, %1754
  store double %1755, double* %302, align 1
  store i64 0, i64* %304, align 1
  %1756 = add i64 %1748, -224
  %1757 = add i64 %1750, 20
  store i64 %1757, i64* %3, align 8
  %1758 = inttoptr i64 %1756 to i64*
  %1759 = load i64, i64* %1758, align 8
  store i64 %1759, i64* %298, align 1
  store double 0.000000e+00, double* %300, align 1
  %.cast41 = bitcast i64 %1759 to double
  %1760 = fsub double %1755, %.cast41
  store double %1760, double* %302, align 1
  store i64 0, i64* %304, align 1
  %1761 = add i64 %1748, -256
  %1762 = add i64 %1750, 32
  store i64 %1762, i64* %3, align 8
  %1763 = inttoptr i64 %1761 to double*
  %1764 = load double, double* %1763, align 8
  %1765 = fdiv double %1764, %1760
  store double %1765, double* %307, align 1
  store i64 0, i64* %309, align 1
  %.cast43 = bitcast double %1765 to <2 x i32>
  %1766 = extractelement <2 x i32> %.cast43, i32 0
  store i32 %1766, i32* %317, align 1
  %1767 = extractelement <2 x i32> %.cast43, i32 1
  store i32 %1767, i32* %319, align 1
  store i32 0, i32* %320, align 1
  store i32 0, i32* %322, align 1
  %1768 = add i64 %1750, -2583
  %1769 = add i64 %1750, 44
  %1770 = load i64, i64* %6, align 8
  %1771 = add i64 %1770, -8
  %1772 = inttoptr i64 %1771 to i64*
  store i64 %1769, i64* %1772, align 8
  store i64 %1771, i64* %6, align 8
  store i64 %1768, i64* %3, align 8
  %call2_40110e = tail call %struct.Memory* @sub_4006d0.atan_plt(%struct.State* nonnull %0, i64 %1768, %struct.Memory* %MEMORY.17)
  %1773 = load i64, i64* %3, align 8
  %1774 = add i64 %1773, 2053
  %1775 = add i64 %1773, 8
  store i64 %1775, i64* %3, align 8
  %1776 = inttoptr i64 %1774 to i64*
  %1777 = load i64, i64* %1776, align 8
  store i64 %1777, i64* %303, align 1
  store double 0.000000e+00, double* %305, align 1
  %1778 = load i64, i64* %RBP.i, align 8
  %1779 = add i64 %1778, -240
  %1780 = add i64 %1773, 16
  store i64 %1780, i64* %3, align 8
  %1781 = inttoptr i64 %1779 to double*
  %1782 = load double, double* %1781, align 8
  %1783 = load double, double* %297, align 1
  %1784 = fmul double %1782, %1783
  %1785 = add i64 %1778, -144
  %1786 = add i64 %1773, 28
  store i64 %1786, i64* %3, align 8
  %1787 = inttoptr i64 %1785 to double*
  store double %1784, double* %1787, align 8
  %1788 = load i64, i64* %3, align 8
  %1789 = load i64, i64* inttoptr (i64 6299800 to i64*), align 8
  store i64 %1789, i64* %298, align 1
  store double 0.000000e+00, double* %300, align 1
  %1790 = load i64, i64* inttoptr (i64 6299824 to i64*), align 16
  store i64 %1790, i64* %308, align 1
  store double 0.000000e+00, double* %310, align 1
  %1791 = load i64, i64* %RBP.i, align 8
  %1792 = add i64 %1791, -152
  %1793 = add i64 %1788, 26
  store i64 %1793, i64* %3, align 8
  %1794 = inttoptr i64 %1792 to i64*
  %1795 = load i64, i64* %1794, align 8
  store i64 %1795, i64* %312, align 1
  store double 0.000000e+00, double* %314, align 1
  %1796 = add i64 %1791, -272
  %1797 = add i64 %1788, 34
  store i64 %1797, i64* %3, align 8
  %1798 = inttoptr i64 %1796 to i64*
  store i64 %1789, i64* %1798, align 8
  %1799 = load i64, i64* %3, align 8
  %1800 = load <2 x i32>, <2 x i32>* %315, align 1
  %1801 = load <2 x i32>, <2 x i32>* %316, align 1
  %1802 = extractelement <2 x i32> %1800, i32 0
  store i32 %1802, i32* %317, align 1
  %1803 = extractelement <2 x i32> %1800, i32 1
  store i32 %1803, i32* %319, align 1
  %1804 = extractelement <2 x i32> %1801, i32 0
  store i32 %1804, i32* %320, align 1
  %1805 = extractelement <2 x i32> %1801, i32 1
  store i32 %1805, i32* %322, align 1
  %1806 = load i64, i64* %RBP.i, align 8
  %1807 = add i64 %1806, -280
  %1808 = add i64 %1799, 11
  store i64 %1808, i64* %3, align 8
  %1809 = load i64, i64* %303, align 1
  %1810 = inttoptr i64 %1807 to i64*
  store i64 %1809, i64* %1810, align 8
  %1811 = load i64, i64* %RBP.i, align 8
  %1812 = add i64 %1811, -288
  %1813 = load i64, i64* %3, align 8
  %1814 = add i64 %1813, 8
  store i64 %1814, i64* %3, align 8
  %1815 = load i64, i64* %308, align 1
  %1816 = inttoptr i64 %1812 to i64*
  store i64 %1815, i64* %1816, align 8
  %1817 = load i64, i64* %3, align 8
  %1818 = add i64 %1817, -2596
  %1819 = add i64 %1817, 5
  %1820 = load i64, i64* %6, align 8
  %1821 = add i64 %1820, -8
  %1822 = inttoptr i64 %1821 to i64*
  store i64 %1819, i64* %1822, align 8
  store i64 %1821, i64* %6, align 8
  store i64 %1818, i64* %3, align 8
  %call2_401164 = tail call %struct.Memory* @sub_400740.sin_plt(%struct.State* nonnull %0, i64 %1818, %struct.Memory* %MEMORY.17)
  %1823 = load i64, i64* %RBP.i, align 8
  %1824 = add i64 %1823, -288
  %1825 = load i64, i64* %3, align 8
  %1826 = add i64 %1825, 8
  store i64 %1826, i64* %3, align 8
  %1827 = inttoptr i64 %1824 to double*
  %1828 = load double, double* %1827, align 8
  %1829 = load double, double* %297, align 1
  %1830 = fmul double %1828, %1829
  store double %1830, double* %302, align 1
  store i64 0, i64* %304, align 1
  %1831 = add i64 %1823, -152
  %1832 = add i64 %1825, 20
  store i64 %1832, i64* %3, align 8
  %1833 = inttoptr i64 %1831 to i64*
  %1834 = load i64, i64* %1833, align 8
  store i64 %1834, i64* %298, align 1
  store double 0.000000e+00, double* %300, align 1
  %1835 = add i64 %1823, -296
  %1836 = add i64 %1825, 28
  store i64 %1836, i64* %3, align 8
  %1837 = inttoptr i64 %1835 to double*
  store double %1830, double* %1837, align 8
  %1838 = load i64, i64* %3, align 8
  %1839 = add i64 %1838, -2693
  %1840 = add i64 %1838, 5
  %1841 = load i64, i64* %6, align 8
  %1842 = add i64 %1841, -8
  %1843 = inttoptr i64 %1842 to i64*
  store i64 %1840, i64* %1843, align 8
  store i64 %1842, i64* %6, align 8
  store i64 %1839, i64* %3, align 8
  %call2_401185 = tail call %struct.Memory* @sub_400700.cos_plt(%struct.State* nonnull %0, i64 %1839, %struct.Memory* %MEMORY.17)
  %1844 = load i64, i64* %RBP.i, align 8
  %1845 = add i64 %1844, -296
  %1846 = load i64, i64* %3, align 8
  %1847 = add i64 %1846, 8
  store i64 %1847, i64* %3, align 8
  %1848 = inttoptr i64 %1845 to double*
  %1849 = load double, double* %1848, align 8
  %1850 = load double, double* %297, align 1
  %1851 = fmul double %1849, %1850
  store double %1851, double* %302, align 1
  store i64 0, i64* %304, align 1
  %1852 = add i64 %1844, -144
  %1853 = add i64 %1846, 20
  store i64 %1853, i64* %3, align 8
  %1854 = inttoptr i64 %1852 to i64*
  %1855 = load i64, i64* %1854, align 8
  store i64 %1855, i64* %298, align 1
  store double 0.000000e+00, double* %300, align 1
  %1856 = add i64 %1844, -152
  %1857 = add i64 %1846, 28
  store i64 %1857, i64* %3, align 8
  %1858 = bitcast i64 %1855 to double
  %1859 = inttoptr i64 %1856 to double*
  %1860 = load double, double* %1859, align 8
  %1861 = fadd double %1858, %1860
  store double %1861, double* %297, align 1
  store i64 0, i64* %299, align 1
  %1862 = add i64 %1844, -304
  %1863 = add i64 %1846, 36
  store i64 %1863, i64* %3, align 8
  %1864 = inttoptr i64 %1862 to double*
  store double %1851, double* %1864, align 8
  %1865 = load i64, i64* %3, align 8
  %1866 = add i64 %1865, -2734
  %1867 = add i64 %1865, 5
  %1868 = load i64, i64* %6, align 8
  %1869 = add i64 %1868, -8
  %1870 = inttoptr i64 %1869 to i64*
  store i64 %1867, i64* %1870, align 8
  store i64 %1869, i64* %6, align 8
  store i64 %1866, i64* %3, align 8
  %call2_4011ae = tail call %struct.Memory* @sub_400700.cos_plt(%struct.State* nonnull %0, i64 %1866, %struct.Memory* %MEMORY.17)
  %1871 = load i64, i64* %RBP.i, align 8
  %1872 = add i64 %1871, -144
  %1873 = load i64, i64* %3, align 8
  %1874 = add i64 %1873, 8
  store i64 %1874, i64* %3, align 8
  %1875 = inttoptr i64 %1872 to i64*
  %1876 = load i64, i64* %1875, align 8
  store i64 %1876, i64* %303, align 1
  store double 0.000000e+00, double* %305, align 1
  %1877 = add i64 %1871, -152
  %1878 = add i64 %1873, 16
  store i64 %1878, i64* %3, align 8
  %1879 = bitcast i64 %1876 to double
  %1880 = inttoptr i64 %1877 to double*
  %1881 = load double, double* %1880, align 8
  %1882 = fsub double %1879, %1881
  store double %1882, double* %302, align 1
  store i64 0, i64* %304, align 1
  %1883 = add i64 %1871, -312
  %1884 = add i64 %1873, 24
  store i64 %1884, i64* %3, align 8
  %1885 = load i64, i64* %298, align 1
  %1886 = inttoptr i64 %1883 to i64*
  store i64 %1885, i64* %1886, align 8
  %1887 = load i64, i64* %3, align 8
  %1888 = load <2 x i32>, <2 x i32>* %323, align 1
  %1889 = load <2 x i32>, <2 x i32>* %324, align 1
  %1890 = extractelement <2 x i32> %1888, i32 0
  store i32 %1890, i32* %317, align 1
  %1891 = extractelement <2 x i32> %1888, i32 1
  store i32 %1891, i32* %319, align 1
  %1892 = extractelement <2 x i32> %1889, i32 0
  store i32 %1892, i32* %320, align 1
  %1893 = extractelement <2 x i32> %1889, i32 1
  store i32 %1893, i32* %322, align 1
  %1894 = add i64 %1887, -2763
  %1895 = add i64 %1887, 8
  %1896 = load i64, i64* %6, align 8
  %1897 = add i64 %1896, -8
  %1898 = inttoptr i64 %1897 to i64*
  store i64 %1895, i64* %1898, align 8
  store i64 %1897, i64* %6, align 8
  store i64 %1894, i64* %3, align 8
  %call2_4011ce = tail call %struct.Memory* @sub_400700.cos_plt(%struct.State* nonnull %0, i64 %1894, %struct.Memory* %MEMORY.17)
  %1899 = load i64, i64* %RBP.i, align 8
  %1900 = add i64 %1899, -312
  %1901 = load i64, i64* %3, align 8
  %1902 = add i64 %1901, 8
  store i64 %1902, i64* %3, align 8
  %1903 = inttoptr i64 %1900 to double*
  %1904 = load double, double* %1903, align 8
  %1905 = load double, double* %297, align 1
  %1906 = fadd double %1904, %1905
  store double %1906, double* %302, align 1
  store i64 0, i64* %304, align 1
  %1907 = add i64 %1899, -280
  %1908 = add i64 %1901, 20
  store i64 %1908, i64* %3, align 8
  %1909 = inttoptr i64 %1907 to i64*
  %1910 = load i64, i64* %1909, align 8
  store i64 %1910, i64* %298, align 1
  store double 0.000000e+00, double* %300, align 1
  %.cast48 = bitcast i64 %1910 to double
  %1911 = fsub double %1906, %.cast48
  store double %1911, double* %302, align 1
  store i64 0, i64* %304, align 1
  %1912 = add i64 %1899, -304
  %1913 = add i64 %1901, 32
  store i64 %1913, i64* %3, align 8
  %1914 = inttoptr i64 %1912 to double*
  %1915 = load double, double* %1914, align 8
  %1916 = fdiv double %1915, %1911
  store double %1916, double* %307, align 1
  store i64 0, i64* %309, align 1
  %.cast50 = bitcast double %1916 to <2 x i32>
  %1917 = extractelement <2 x i32> %.cast50, i32 0
  store i32 %1917, i32* %317, align 1
  %1918 = extractelement <2 x i32> %.cast50, i32 1
  store i32 %1918, i32* %319, align 1
  store i32 0, i32* %320, align 1
  store i32 0, i32* %322, align 1
  %1919 = add i64 %1901, -2819
  %1920 = add i64 %1901, 44
  %1921 = load i64, i64* %6, align 8
  %1922 = add i64 %1921, -8
  %1923 = inttoptr i64 %1922 to i64*
  store i64 %1920, i64* %1923, align 8
  store i64 %1922, i64* %6, align 8
  store i64 %1919, i64* %3, align 8
  %call2_4011fa = tail call %struct.Memory* @sub_4006d0.atan_plt(%struct.State* nonnull %0, i64 %1919, %struct.Memory* %MEMORY.17)
  %1924 = load i64, i64* %RBP.i, align 8
  %1925 = add i64 %1924, -272
  %1926 = load i64, i64* %3, align 8
  %1927 = add i64 %1926, 8
  store i64 %1927, i64* %3, align 8
  %1928 = inttoptr i64 %1925 to double*
  %1929 = load double, double* %1928, align 8
  %1930 = load double, double* %297, align 1
  %1931 = fmul double %1929, %1930
  store double %1931, double* %302, align 1
  store i64 0, i64* %304, align 1
  %1932 = add i64 %1924, -152
  %1933 = add i64 %1926, 20
  store i64 %1933, i64* %3, align 8
  %1934 = inttoptr i64 %1932 to double*
  store double %1931, double* %1934, align 8
  %1935 = load i64, i64* %RBP.i, align 8
  %1936 = add i64 %1935, -24
  %1937 = load i64, i64* %3, align 8
  %1938 = add i64 %1937, 4
  store i64 %1938, i64* %3, align 8
  %1939 = inttoptr i64 %1936 to i64*
  %1940 = load i64, i64* %1939, align 8
  %1941 = add i64 %1940, 1
  store i64 %1941, i64* %RAX.i1202, align 8
  %1942 = icmp eq i64 %1940, -1
  %1943 = icmp eq i64 %1941, 0
  %1944 = or i1 %1942, %1943
  %1945 = zext i1 %1944 to i8
  store i8 %1945, i8* %14, align 1
  %1946 = trunc i64 %1941 to i32
  %1947 = and i32 %1946, 255
  %1948 = tail call i32 @llvm.ctpop.i32(i32 %1947)
  %1949 = trunc i32 %1948 to i8
  %1950 = and i8 %1949, 1
  %1951 = xor i8 %1950, 1
  store i8 %1951, i8* %21, align 1
  %1952 = xor i64 %1941, %1940
  %1953 = lshr i64 %1952, 4
  %1954 = trunc i64 %1953 to i8
  %1955 = and i8 %1954, 1
  store i8 %1955, i8* %26, align 1
  %1956 = zext i1 %1943 to i8
  store i8 %1956, i8* %29, align 1
  %1957 = lshr i64 %1941, 63
  %1958 = trunc i64 %1957 to i8
  store i8 %1958, i8* %32, align 1
  %1959 = lshr i64 %1940, 63
  %1960 = xor i64 %1957, %1959
  %1961 = add nuw nsw i64 %1960, %1957
  %1962 = icmp eq i64 %1961, 2
  %1963 = zext i1 %1962 to i8
  store i8 %1963, i8* %38, align 1
  %1964 = add i64 %1937, 12
  store i64 %1964, i64* %3, align 8
  store i64 %1941, i64* %1939, align 8
  %1965 = load i64, i64* %3, align 8
  %1966 = add i64 %1965, -498
  store i64 %1966, i64* %3, align 8
  br label %block_.L_40102d

block_.L_401224:                                  ; preds = %block_.L_40102d
  %1967 = add i64 %1598, -176
  %1968 = add i64 %1634, 6
  store i64 %1968, i64* %3, align 8
  %1969 = inttoptr i64 %1967 to i32*
  %1970 = load i32, i32* %1969, align 4
  %1971 = zext i32 %1970 to i64
  store i64 %1971, i64* %RAX.i1202, align 8
  %1972 = add i64 %1598, -172
  %1973 = add i64 %1634, 12
  store i64 %1973, i64* %3, align 8
  %1974 = inttoptr i64 %1972 to i32*
  %1975 = load i32, i32* %1974, align 4
  %1976 = sub i32 %1970, %1975
  %1977 = icmp ult i32 %1970, %1975
  %1978 = zext i1 %1977 to i8
  store i8 %1978, i8* %14, align 1
  %1979 = and i32 %1976, 255
  %1980 = tail call i32 @llvm.ctpop.i32(i32 %1979)
  %1981 = trunc i32 %1980 to i8
  %1982 = and i8 %1981, 1
  %1983 = xor i8 %1982, 1
  store i8 %1983, i8* %21, align 1
  %1984 = xor i32 %1975, %1970
  %1985 = xor i32 %1984, %1976
  %1986 = lshr i32 %1985, 4
  %1987 = trunc i32 %1986 to i8
  %1988 = and i8 %1987, 1
  store i8 %1988, i8* %26, align 1
  %1989 = icmp eq i32 %1976, 0
  %1990 = zext i1 %1989 to i8
  store i8 %1990, i8* %29, align 1
  %1991 = lshr i32 %1976, 31
  %1992 = trunc i32 %1991 to i8
  store i8 %1992, i8* %32, align 1
  %1993 = lshr i32 %1970, 31
  %1994 = lshr i32 %1975, 31
  %1995 = xor i32 %1994, %1993
  %1996 = xor i32 %1991, %1993
  %1997 = add nuw nsw i32 %1996, %1995
  %1998 = icmp eq i32 %1997, 2
  %1999 = zext i1 %1998 to i8
  store i8 %1999, i8* %38, align 1
  %.v147 = select i1 %1989, i64 18, i64 75
  %2000 = add i64 %1634, %.v147
  store i64 %2000, i64* %3, align 8
  br i1 %1989, label %block_401236, label %block_.L_40126f

block_401236:                                     ; preds = %block_.L_401224
  %2001 = add i64 %2000, 4
  store i64 %2001, i64* %3, align 8
  %2002 = load i64, i64* %1605, align 8
  store i64 %2002, i64* %RDI.i1185, align 8
  %2003 = load i32, i32* inttoptr (i64 6299792 to i32*), align 16
  %2004 = sext i32 %2003 to i64
  store i64 %2004, i64* %RSI.i1211, align 8
  %2005 = load i32, i32* inttoptr (i64 6299820 to i32*), align 4
  %2006 = sext i32 %2005 to i64
  store i64 %2006, i64* %RDX.i587, align 8
  %2007 = add i64 %1598, -144
  %2008 = add i64 %2000, 28
  store i64 %2008, i64* %3, align 8
  %2009 = inttoptr i64 %2007 to i64*
  %2010 = load i64, i64* %2009, align 8
  store i64 %2010, i64* %298, align 1
  store double 0.000000e+00, double* %300, align 1
  %2011 = add i64 %2000, 36
  store i64 %2011, i64* %3, align 8
  %2012 = load i64, i64* %2009, align 8
  store i64 %2012, i64* %303, align 1
  store double 0.000000e+00, double* %305, align 1
  %2013 = add i64 %1598, -152
  %2014 = add i64 %2000, 44
  store i64 %2014, i64* %3, align 8
  %2015 = inttoptr i64 %2013 to i64*
  %2016 = load i64, i64* %2015, align 8
  store i64 %2016, i64* %308, align 1
  store double 0.000000e+00, double* %310, align 1
  %2017 = add i64 %2000, 52
  store i64 %2017, i64* %3, align 8
  %2018 = load i64, i64* %2015, align 8
  store i64 %2018, i64* %325, align 1
  store double 0.000000e+00, double* %314, align 1
  %2019 = add i64 %2000, 938
  %2020 = add i64 %2000, 57
  %2021 = load i64, i64* %6, align 8
  %2022 = add i64 %2021, -8
  %2023 = inttoptr i64 %2022 to i64*
  store i64 %2020, i64* %2023, align 8
  store i64 %2022, i64* %6, align 8
  store i64 %2019, i64* %3, align 8
  %call2_40126a = tail call %struct.Memory* @sub_4015e0.POUT(%struct.State* nonnull %0, i64 %2019, %struct.Memory* %MEMORY.17)
  %.pre110 = load i64, i64* %3, align 8
  %.pre111 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40126f

block_.L_40126f:                                  ; preds = %block_.L_401224, %block_401236
  %2024 = phi i64 [ %1598, %block_.L_401224 ], [ %.pre111, %block_401236 ]
  %2025 = phi i64 [ %2000, %block_.L_401224 ], [ %.pre110, %block_401236 ]
  %MEMORY.19 = phi %struct.Memory* [ %MEMORY.17, %block_.L_401224 ], [ %call2_40126a, %block_401236 ]
  %2026 = add i64 %2025, 1705
  %2027 = add i64 %2025, 8
  store i64 %2027, i64* %3, align 8
  %2028 = inttoptr i64 %2026 to i64*
  %2029 = load i64, i64* %2028, align 8
  store i64 %2029, i64* %298, align 1
  store double 0.000000e+00, double* %300, align 1
  %2030 = add i64 %2024, -144
  %2031 = add i64 %2025, 16
  store i64 %2031, i64* %3, align 8
  %2032 = inttoptr i64 %2030 to i64*
  store i64 %2029, i64* %2032, align 8
  %2033 = load i64, i64* %RBP.i, align 8
  %2034 = add i64 %2033, -152
  %2035 = load i64, i64* %3, align 8
  %2036 = add i64 %2035, 8
  store i64 %2036, i64* %3, align 8
  %2037 = load i64, i64* %298, align 1
  %2038 = inttoptr i64 %2034 to i64*
  store i64 %2037, i64* %2038, align 8
  %2039 = load i64, i64* %RBP.i, align 8
  %2040 = add i64 %2039, -160
  %2041 = load i64, i64* %3, align 8
  %2042 = add i64 %2041, 8
  store i64 %2042, i64* %3, align 8
  %2043 = load i64, i64* %298, align 1
  %2044 = inttoptr i64 %2040 to i64*
  store i64 %2043, i64* %2044, align 8
  %2045 = load i64, i64* %RBP.i, align 8
  %2046 = add i64 %2045, -24
  %2047 = load i64, i64* %3, align 8
  %2048 = add i64 %2047, 8
  store i64 %2048, i64* %3, align 8
  %2049 = inttoptr i64 %2046 to i64*
  store i64 1, i64* %2049, align 8
  %.pre112 = load i64, i64* %3, align 8
  br label %block_.L_401297

block_.L_401297:                                  ; preds = %block_4012a5, %block_.L_40126f
  %2050 = phi i64 [ %2133, %block_4012a5 ], [ %.pre112, %block_.L_40126f ]
  %2051 = load i64, i64* %RBP.i, align 8
  %2052 = add i64 %2051, -24
  %2053 = add i64 %2050, 4
  store i64 %2053, i64* %3, align 8
  %2054 = inttoptr i64 %2052 to i64*
  %2055 = load i64, i64* %2054, align 8
  store i64 %2055, i64* %RAX.i1202, align 8
  %2056 = add i64 %2051, -80
  %2057 = add i64 %2050, 8
  store i64 %2057, i64* %3, align 8
  %2058 = inttoptr i64 %2056 to i64*
  %2059 = load i64, i64* %2058, align 8
  %2060 = sub i64 %2055, %2059
  %2061 = icmp ult i64 %2055, %2059
  %2062 = zext i1 %2061 to i8
  store i8 %2062, i8* %14, align 1
  %2063 = trunc i64 %2060 to i32
  %2064 = and i32 %2063, 255
  %2065 = tail call i32 @llvm.ctpop.i32(i32 %2064)
  %2066 = trunc i32 %2065 to i8
  %2067 = and i8 %2066, 1
  %2068 = xor i8 %2067, 1
  store i8 %2068, i8* %21, align 1
  %2069 = xor i64 %2059, %2055
  %2070 = xor i64 %2069, %2060
  %2071 = lshr i64 %2070, 4
  %2072 = trunc i64 %2071 to i8
  %2073 = and i8 %2072, 1
  store i8 %2073, i8* %26, align 1
  %2074 = icmp eq i64 %2060, 0
  %2075 = zext i1 %2074 to i8
  store i8 %2075, i8* %29, align 1
  %2076 = lshr i64 %2060, 63
  %2077 = trunc i64 %2076 to i8
  store i8 %2077, i8* %32, align 1
  %2078 = lshr i64 %2055, 63
  %2079 = lshr i64 %2059, 63
  %2080 = xor i64 %2079, %2078
  %2081 = xor i64 %2076, %2078
  %2082 = add nuw nsw i64 %2081, %2080
  %2083 = icmp eq i64 %2082, 2
  %2084 = zext i1 %2083 to i8
  store i8 %2084, i8* %38, align 1
  %2085 = icmp ne i8 %2077, 0
  %2086 = xor i1 %2085, %2083
  %.demorgan131 = or i1 %2074, %2086
  %.v148 = select i1 %.demorgan131, i64 14, i64 59
  %2087 = add i64 %2050, %.v148
  store i64 %2087, i64* %3, align 8
  br i1 %.demorgan131, label %block_4012a5, label %block_.L_4012d2

block_4012a5:                                     ; preds = %block_.L_401297
  %2088 = add i64 %2051, -160
  store i64 %2088, i64* %RDI.i1185, align 8
  %2089 = add i64 %2051, -144
  %2090 = add i64 %2087, 15
  store i64 %2090, i64* %3, align 8
  %2091 = inttoptr i64 %2089 to i64*
  %2092 = load i64, i64* %2091, align 8
  store i64 %2092, i64* %298, align 1
  store double 0.000000e+00, double* %300, align 1
  %2093 = add i64 %2051, -152
  %2094 = add i64 %2087, 23
  store i64 %2094, i64* %3, align 8
  %2095 = inttoptr i64 %2093 to i64*
  %2096 = load i64, i64* %2095, align 8
  store i64 %2096, i64* %303, align 1
  store double 0.000000e+00, double* %305, align 1
  %2097 = add i64 %2087, 1243
  %2098 = add i64 %2087, 28
  %2099 = load i64, i64* %6, align 8
  %2100 = add i64 %2099, -8
  %2101 = inttoptr i64 %2100 to i64*
  store i64 %2098, i64* %2101, align 8
  store i64 %2100, i64* %6, align 8
  store i64 %2097, i64* %3, align 8
  %call2_4012bc = tail call %struct.Memory* @sub_401780.P3(%struct.State* nonnull %0, i64 %2097, %struct.Memory* %MEMORY.19)
  %2102 = load i64, i64* %RBP.i, align 8
  %2103 = add i64 %2102, -24
  %2104 = load i64, i64* %3, align 8
  %2105 = add i64 %2104, 4
  store i64 %2105, i64* %3, align 8
  %2106 = inttoptr i64 %2103 to i64*
  %2107 = load i64, i64* %2106, align 8
  %2108 = add i64 %2107, 1
  store i64 %2108, i64* %RAX.i1202, align 8
  %2109 = icmp eq i64 %2107, -1
  %2110 = icmp eq i64 %2108, 0
  %2111 = or i1 %2109, %2110
  %2112 = zext i1 %2111 to i8
  store i8 %2112, i8* %14, align 1
  %2113 = trunc i64 %2108 to i32
  %2114 = and i32 %2113, 255
  %2115 = tail call i32 @llvm.ctpop.i32(i32 %2114)
  %2116 = trunc i32 %2115 to i8
  %2117 = and i8 %2116, 1
  %2118 = xor i8 %2117, 1
  store i8 %2118, i8* %21, align 1
  %2119 = xor i64 %2108, %2107
  %2120 = lshr i64 %2119, 4
  %2121 = trunc i64 %2120 to i8
  %2122 = and i8 %2121, 1
  store i8 %2122, i8* %26, align 1
  %2123 = zext i1 %2110 to i8
  store i8 %2123, i8* %29, align 1
  %2124 = lshr i64 %2108, 63
  %2125 = trunc i64 %2124 to i8
  store i8 %2125, i8* %32, align 1
  %2126 = lshr i64 %2107, 63
  %2127 = xor i64 %2124, %2126
  %2128 = add nuw nsw i64 %2127, %2124
  %2129 = icmp eq i64 %2128, 2
  %2130 = zext i1 %2129 to i8
  store i8 %2130, i8* %38, align 1
  %2131 = add i64 %2104, 12
  store i64 %2131, i64* %3, align 8
  store i64 %2108, i64* %2106, align 8
  %2132 = load i64, i64* %3, align 8
  %2133 = add i64 %2132, -54
  store i64 %2133, i64* %3, align 8
  br label %block_.L_401297

block_.L_4012d2:                                  ; preds = %block_.L_401297
  %2134 = add i64 %2051, -176
  %2135 = add i64 %2087, 6
  store i64 %2135, i64* %3, align 8
  %2136 = inttoptr i64 %2134 to i32*
  %2137 = load i32, i32* %2136, align 4
  %2138 = zext i32 %2137 to i64
  store i64 %2138, i64* %RAX.i1202, align 8
  %2139 = add i64 %2051, -172
  %2140 = add i64 %2087, 12
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
  %.v149 = select i1 %2156, i64 18, i64 75
  %2167 = add i64 %2087, %.v149
  store i64 %2167, i64* %3, align 8
  br i1 %2156, label %block_4012e4, label %block_.L_40131d

block_4012e4:                                     ; preds = %block_.L_4012d2
  %2168 = add i64 %2167, 4
  store i64 %2168, i64* %3, align 8
  %2169 = load i64, i64* %2058, align 8
  store i64 %2169, i64* %RDI.i1185, align 8
  %2170 = load i32, i32* inttoptr (i64 6299792 to i32*), align 16
  %2171 = sext i32 %2170 to i64
  store i64 %2171, i64* %RSI.i1211, align 8
  %2172 = load i32, i32* inttoptr (i64 6299820 to i32*), align 4
  %2173 = sext i32 %2172 to i64
  store i64 %2173, i64* %RDX.i587, align 8
  %2174 = add i64 %2051, -144
  %2175 = add i64 %2167, 28
  store i64 %2175, i64* %3, align 8
  %2176 = inttoptr i64 %2174 to i64*
  %2177 = load i64, i64* %2176, align 8
  store i64 %2177, i64* %298, align 1
  store double 0.000000e+00, double* %300, align 1
  %2178 = add i64 %2051, -152
  %2179 = add i64 %2167, 36
  store i64 %2179, i64* %3, align 8
  %2180 = inttoptr i64 %2178 to i64*
  %2181 = load i64, i64* %2180, align 8
  store i64 %2181, i64* %303, align 1
  store double 0.000000e+00, double* %305, align 1
  %2182 = add i64 %2051, -160
  %2183 = add i64 %2167, 44
  store i64 %2183, i64* %3, align 8
  %2184 = inttoptr i64 %2182 to i64*
  %2185 = load i64, i64* %2184, align 8
  store i64 %2185, i64* %308, align 1
  store double 0.000000e+00, double* %310, align 1
  %2186 = add i64 %2167, 52
  store i64 %2186, i64* %3, align 8
  %2187 = load i64, i64* %2184, align 8
  store i64 %2187, i64* %325, align 1
  store double 0.000000e+00, double* %314, align 1
  %2188 = add i64 %2167, 764
  %2189 = add i64 %2167, 57
  %2190 = load i64, i64* %6, align 8
  %2191 = add i64 %2190, -8
  %2192 = inttoptr i64 %2191 to i64*
  store i64 %2189, i64* %2192, align 8
  store i64 %2191, i64* %6, align 8
  store i64 %2188, i64* %3, align 8
  %call2_401318 = tail call %struct.Memory* @sub_4015e0.POUT(%struct.State* nonnull %0, i64 %2188, %struct.Memory* %MEMORY.19)
  %.pre113 = load i64, i64* %3, align 8
  %.pre114 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40131d

block_.L_40131d:                                  ; preds = %block_.L_4012d2, %block_4012e4
  %2193 = phi i64 [ %2051, %block_.L_4012d2 ], [ %.pre114, %block_4012e4 ]
  %2194 = phi i64 [ %2167, %block_.L_4012d2 ], [ %.pre113, %block_4012e4 ]
  %MEMORY.21 = phi %struct.Memory* [ %MEMORY.19, %block_.L_4012d2 ], [ %call2_401318, %block_4012e4 ]
  %2195 = add i64 %2194, 1547
  %2196 = add i64 %2194, 8
  store i64 %2196, i64* %3, align 8
  %2197 = inttoptr i64 %2195 to i64*
  %2198 = load i64, i64* %2197, align 8
  store i64 %2198, i64* %298, align 1
  store double 0.000000e+00, double* %300, align 1
  %2199 = add i64 %2194, 1499
  %2200 = add i64 %2194, 16
  store i64 %2200, i64* %3, align 8
  %2201 = inttoptr i64 %2199 to i64*
  %2202 = load i64, i64* %2201, align 8
  store i64 %2202, i64* %303, align 1
  store double 0.000000e+00, double* %305, align 1
  %2203 = add i64 %2194, 1531
  %2204 = add i64 %2194, 24
  store i64 %2204, i64* %3, align 8
  %2205 = inttoptr i64 %2203 to i64*
  %2206 = load i64, i64* %2205, align 8
  store i64 %2206, i64* %308, align 1
  store double 0.000000e+00, double* %310, align 1
  store i32 1, i32* inttoptr (i64 6299792 to i32*), align 16
  store i32 2, i32* inttoptr (i64 6299820 to i32*), align 4
  store i32 3, i32* inttoptr (i64 6299816 to i32*), align 8
  store i64 %2206, i64* inttoptr (i64 6299848 to i64*), align 8
  store i64 %2202, i64* inttoptr (i64 6299856 to i64*), align 16
  store i64 %2198, i64* inttoptr (i64 6299864 to i64*), align 8
  %2207 = add i64 %2193, -24
  %2208 = add i64 %2194, 92
  store i64 %2208, i64* %3, align 8
  %2209 = inttoptr i64 %2207 to i64*
  store i64 1, i64* %2209, align 8
  %.pre115 = load i64, i64* %3, align 8
  br label %block_.L_401379

block_.L_401379:                                  ; preds = %block_401387, %block_.L_40131d
  %2210 = phi i64 [ %2284, %block_401387 ], [ %.pre115, %block_.L_40131d ]
  %2211 = load i64, i64* %RBP.i, align 8
  %2212 = add i64 %2211, -24
  %2213 = add i64 %2210, 4
  store i64 %2213, i64* %3, align 8
  %2214 = inttoptr i64 %2212 to i64*
  %2215 = load i64, i64* %2214, align 8
  store i64 %2215, i64* %RAX.i1202, align 8
  %2216 = add i64 %2211, -88
  %2217 = add i64 %2210, 8
  store i64 %2217, i64* %3, align 8
  %2218 = inttoptr i64 %2216 to i64*
  %2219 = load i64, i64* %2218, align 8
  %2220 = sub i64 %2215, %2219
  %2221 = icmp ult i64 %2215, %2219
  %2222 = zext i1 %2221 to i8
  store i8 %2222, i8* %14, align 1
  %2223 = trunc i64 %2220 to i32
  %2224 = and i32 %2223, 255
  %2225 = tail call i32 @llvm.ctpop.i32(i32 %2224)
  %2226 = trunc i32 %2225 to i8
  %2227 = and i8 %2226, 1
  %2228 = xor i8 %2227, 1
  store i8 %2228, i8* %21, align 1
  %2229 = xor i64 %2219, %2215
  %2230 = xor i64 %2229, %2220
  %2231 = lshr i64 %2230, 4
  %2232 = trunc i64 %2231 to i8
  %2233 = and i8 %2232, 1
  store i8 %2233, i8* %26, align 1
  %2234 = icmp eq i64 %2220, 0
  %2235 = zext i1 %2234 to i8
  store i8 %2235, i8* %29, align 1
  %2236 = lshr i64 %2220, 63
  %2237 = trunc i64 %2236 to i8
  store i8 %2237, i8* %32, align 1
  %2238 = lshr i64 %2215, 63
  %2239 = lshr i64 %2219, 63
  %2240 = xor i64 %2239, %2238
  %2241 = xor i64 %2236, %2238
  %2242 = add nuw nsw i64 %2241, %2240
  %2243 = icmp eq i64 %2242, 2
  %2244 = zext i1 %2243 to i8
  store i8 %2244, i8* %38, align 1
  %2245 = icmp ne i8 %2237, 0
  %2246 = xor i1 %2245, %2243
  %.demorgan132 = or i1 %2234, %2246
  %.v150 = select i1 %.demorgan132, i64 14, i64 36
  %2247 = add i64 %2210, %.v150
  store i64 %2247, i64* %3, align 8
  br i1 %.demorgan132, label %block_401387, label %block_.L_40139d

block_401387:                                     ; preds = %block_.L_401379
  %2248 = add i64 %2247, 1145
  %2249 = add i64 %2247, 5
  %2250 = load i64, i64* %6, align 8
  %2251 = add i64 %2250, -8
  %2252 = inttoptr i64 %2251 to i64*
  store i64 %2249, i64* %2252, align 8
  store i64 %2251, i64* %6, align 8
  store i64 %2248, i64* %3, align 8
  %call2_401387 = tail call %struct.Memory* @sub_401800.P0(%struct.State* nonnull %0, i64 %2248, %struct.Memory* %MEMORY.21)
  %2253 = load i64, i64* %RBP.i, align 8
  %2254 = add i64 %2253, -24
  %2255 = load i64, i64* %3, align 8
  %2256 = add i64 %2255, 4
  store i64 %2256, i64* %3, align 8
  %2257 = inttoptr i64 %2254 to i64*
  %2258 = load i64, i64* %2257, align 8
  %2259 = add i64 %2258, 1
  store i64 %2259, i64* %RAX.i1202, align 8
  %2260 = icmp eq i64 %2258, -1
  %2261 = icmp eq i64 %2259, 0
  %2262 = or i1 %2260, %2261
  %2263 = zext i1 %2262 to i8
  store i8 %2263, i8* %14, align 1
  %2264 = trunc i64 %2259 to i32
  %2265 = and i32 %2264, 255
  %2266 = tail call i32 @llvm.ctpop.i32(i32 %2265)
  %2267 = trunc i32 %2266 to i8
  %2268 = and i8 %2267, 1
  %2269 = xor i8 %2268, 1
  store i8 %2269, i8* %21, align 1
  %2270 = xor i64 %2259, %2258
  %2271 = lshr i64 %2270, 4
  %2272 = trunc i64 %2271 to i8
  %2273 = and i8 %2272, 1
  store i8 %2273, i8* %26, align 1
  %2274 = zext i1 %2261 to i8
  store i8 %2274, i8* %29, align 1
  %2275 = lshr i64 %2259, 63
  %2276 = trunc i64 %2275 to i8
  store i8 %2276, i8* %32, align 1
  %2277 = lshr i64 %2258, 63
  %2278 = xor i64 %2275, %2277
  %2279 = add nuw nsw i64 %2278, %2275
  %2280 = icmp eq i64 %2279, 2
  %2281 = zext i1 %2280 to i8
  store i8 %2281, i8* %38, align 1
  %2282 = add i64 %2255, 12
  store i64 %2282, i64* %3, align 8
  store i64 %2259, i64* %2257, align 8
  %2283 = load i64, i64* %3, align 8
  %2284 = add i64 %2283, -31
  store i64 %2284, i64* %3, align 8
  br label %block_.L_401379

block_.L_40139d:                                  ; preds = %block_.L_401379
  %2285 = add i64 %2211, -176
  %2286 = add i64 %2247, 6
  store i64 %2286, i64* %3, align 8
  %2287 = inttoptr i64 %2285 to i32*
  %2288 = load i32, i32* %2287, align 4
  %2289 = zext i32 %2288 to i64
  store i64 %2289, i64* %RAX.i1202, align 8
  %2290 = add i64 %2211, -172
  %2291 = add i64 %2247, 12
  store i64 %2291, i64* %3, align 8
  %2292 = inttoptr i64 %2290 to i32*
  %2293 = load i32, i32* %2292, align 4
  %2294 = sub i32 %2288, %2293
  %2295 = icmp ult i32 %2288, %2293
  %2296 = zext i1 %2295 to i8
  store i8 %2296, i8* %14, align 1
  %2297 = and i32 %2294, 255
  %2298 = tail call i32 @llvm.ctpop.i32(i32 %2297)
  %2299 = trunc i32 %2298 to i8
  %2300 = and i8 %2299, 1
  %2301 = xor i8 %2300, 1
  store i8 %2301, i8* %21, align 1
  %2302 = xor i32 %2293, %2288
  %2303 = xor i32 %2302, %2294
  %2304 = lshr i32 %2303, 4
  %2305 = trunc i32 %2304 to i8
  %2306 = and i8 %2305, 1
  store i8 %2306, i8* %26, align 1
  %2307 = icmp eq i32 %2294, 0
  %2308 = zext i1 %2307 to i8
  store i8 %2308, i8* %29, align 1
  %2309 = lshr i32 %2294, 31
  %2310 = trunc i32 %2309 to i8
  store i8 %2310, i8* %32, align 1
  %2311 = lshr i32 %2288, 31
  %2312 = lshr i32 %2293, 31
  %2313 = xor i32 %2312, %2311
  %2314 = xor i32 %2309, %2311
  %2315 = add nuw nsw i32 %2314, %2313
  %2316 = icmp eq i32 %2315, 2
  %2317 = zext i1 %2316 to i8
  store i8 %2317, i8* %38, align 1
  %.v151 = select i1 %2307, i64 18, i64 79
  %2318 = add i64 %2247, %.v151
  store i64 %2318, i64* %3, align 8
  br i1 %2307, label %block_4013af, label %block_.L_4013ec

block_4013af:                                     ; preds = %block_.L_40139d
  %2319 = add i64 %2318, 4
  store i64 %2319, i64* %3, align 8
  %2320 = load i64, i64* %2218, align 8
  store i64 %2320, i64* %RDI.i1185, align 8
  %2321 = load i32, i32* inttoptr (i64 6299792 to i32*), align 16
  %2322 = sext i32 %2321 to i64
  store i64 %2322, i64* %RSI.i1211, align 8
  %2323 = load i32, i32* inttoptr (i64 6299820 to i32*), align 4
  %2324 = sext i32 %2323 to i64
  store i64 %2324, i64* %RDX.i587, align 8
  %2325 = load i64, i64* inttoptr (i64 6299848 to i64*), align 8
  store i64 %2325, i64* %298, align 1
  store double 0.000000e+00, double* %300, align 1
  %2326 = load i64, i64* inttoptr (i64 6299856 to i64*), align 16
  store i64 %2326, i64* %303, align 1
  store double 0.000000e+00, double* %305, align 1
  %2327 = load i64, i64* inttoptr (i64 6299864 to i64*), align 8
  store i64 %2327, i64* %308, align 1
  store double 0.000000e+00, double* %310, align 1
  %2328 = load i64, i64* inttoptr (i64 6299872 to i64*), align 32
  store i64 %2328, i64* %325, align 1
  store double 0.000000e+00, double* %314, align 1
  %2329 = add i64 %2318, 561
  %2330 = add i64 %2318, 61
  %2331 = load i64, i64* %6, align 8
  %2332 = add i64 %2331, -8
  %2333 = inttoptr i64 %2332 to i64*
  store i64 %2330, i64* %2333, align 8
  store i64 %2332, i64* %6, align 8
  store i64 %2329, i64* %3, align 8
  %call2_4013e7 = tail call %struct.Memory* @sub_4015e0.POUT(%struct.State* nonnull %0, i64 %2329, %struct.Memory* %MEMORY.21)
  %.pre116 = load i64, i64* %3, align 8
  %.pre117 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4013ec

block_.L_4013ec:                                  ; preds = %block_.L_40139d, %block_4013af
  %2334 = phi i64 [ %2211, %block_.L_40139d ], [ %.pre117, %block_4013af ]
  %2335 = phi i64 [ %2318, %block_.L_40139d ], [ %.pre116, %block_4013af ]
  %MEMORY.23 = phi %struct.Memory* [ %MEMORY.21, %block_.L_40139d ], [ %call2_4013e7, %block_4013af ]
  store i32 2, i32* inttoptr (i64 6299792 to i32*), align 16
  store i32 3, i32* inttoptr (i64 6299820 to i32*), align 4
  %2336 = add i64 %2334, -24
  %2337 = add i64 %2335, 30
  store i64 %2337, i64* %3, align 8
  %2338 = inttoptr i64 %2336 to i64*
  store i64 1, i64* %2338, align 8
  %.pre118 = load i64, i64* %3, align 8
  br label %block_.L_40140a

block_.L_40140a:                                  ; preds = %block_401418, %block_.L_4013ec
  %2339 = phi i64 [ %2441, %block_401418 ], [ %.pre118, %block_.L_4013ec ]
  %2340 = load i64, i64* %RBP.i, align 8
  %2341 = add i64 %2340, -24
  %2342 = add i64 %2339, 4
  store i64 %2342, i64* %3, align 8
  %2343 = inttoptr i64 %2341 to i64*
  %2344 = load i64, i64* %2343, align 8
  store i64 %2344, i64* %RAX.i1202, align 8
  %2345 = add i64 %2340, -96
  %2346 = add i64 %2339, 8
  store i64 %2346, i64* %3, align 8
  %2347 = inttoptr i64 %2345 to i64*
  %2348 = load i64, i64* %2347, align 8
  %2349 = sub i64 %2344, %2348
  %2350 = icmp ult i64 %2344, %2348
  %2351 = zext i1 %2350 to i8
  store i8 %2351, i8* %14, align 1
  %2352 = trunc i64 %2349 to i32
  %2353 = and i32 %2352, 255
  %2354 = tail call i32 @llvm.ctpop.i32(i32 %2353)
  %2355 = trunc i32 %2354 to i8
  %2356 = and i8 %2355, 1
  %2357 = xor i8 %2356, 1
  store i8 %2357, i8* %21, align 1
  %2358 = xor i64 %2348, %2344
  %2359 = xor i64 %2358, %2349
  %2360 = lshr i64 %2359, 4
  %2361 = trunc i64 %2360 to i8
  %2362 = and i8 %2361, 1
  store i8 %2362, i8* %26, align 1
  %2363 = icmp eq i64 %2349, 0
  %2364 = zext i1 %2363 to i8
  store i8 %2364, i8* %29, align 1
  %2365 = lshr i64 %2349, 63
  %2366 = trunc i64 %2365 to i8
  store i8 %2366, i8* %32, align 1
  %2367 = lshr i64 %2344, 63
  %2368 = lshr i64 %2348, 63
  %2369 = xor i64 %2368, %2367
  %2370 = xor i64 %2365, %2367
  %2371 = add nuw nsw i64 %2370, %2369
  %2372 = icmp eq i64 %2371, 2
  %2373 = zext i1 %2372 to i8
  store i8 %2373, i8* %38, align 1
  %2374 = icmp ne i8 %2366, 0
  %2375 = xor i1 %2374, %2372
  %.demorgan133 = or i1 %2363, %2375
  %.v152 = select i1 %.demorgan133, i64 14, i64 122
  %2376 = add i64 %2339, %.v152
  store i64 %2376, i64* %3, align 8
  br i1 %.demorgan133, label %block_401418, label %block_.L_401484

block_401418:                                     ; preds = %block_.L_40140a
  %2377 = load i32, i32* inttoptr (i64 6299792 to i32*), align 16
  %2378 = load i32, i32* inttoptr (i64 6299820 to i32*), align 4
  %2379 = add i32 %2378, %2377
  store i32 %2379, i32* inttoptr (i64 6299792 to i32*), align 16
  %2380 = load i32, i32* inttoptr (i64 6299820 to i32*), align 4
  %2381 = add i32 %2380, %2379
  store i32 %2381, i32* inttoptr (i64 6299820 to i32*), align 4
  %2382 = load i32, i32* inttoptr (i64 6299792 to i32*), align 16
  %2383 = sub i32 %2381, %2382
  %2384 = lshr i32 %2383, 31
  store i32 %2383, i32* inttoptr (i64 6299792 to i32*), align 16
  %2385 = load i32, i32* inttoptr (i64 6299820 to i32*), align 4
  %2386 = sub i32 %2385, %2383
  %2387 = lshr i32 %2386, 31
  %2388 = sub i32 %2386, %2383
  %2389 = zext i32 %2388 to i64
  store i64 %2389, i64* %RAX.i1202, align 8
  %2390 = icmp ult i32 %2386, %2383
  %2391 = zext i1 %2390 to i8
  store i8 %2391, i8* %14, align 1
  %2392 = and i32 %2388, 255
  %2393 = tail call i32 @llvm.ctpop.i32(i32 %2392)
  %2394 = trunc i32 %2393 to i8
  %2395 = and i8 %2394, 1
  %2396 = xor i8 %2395, 1
  store i8 %2396, i8* %21, align 1
  %2397 = xor i32 %2383, %2386
  %2398 = xor i32 %2397, %2388
  %2399 = lshr i32 %2398, 4
  %2400 = trunc i32 %2399 to i8
  %2401 = and i8 %2400, 1
  store i8 %2401, i8* %26, align 1
  %2402 = icmp eq i32 %2388, 0
  %2403 = zext i1 %2402 to i8
  store i8 %2403, i8* %29, align 1
  %2404 = lshr i32 %2388, 31
  %2405 = trunc i32 %2404 to i8
  store i8 %2405, i8* %32, align 1
  %2406 = xor i32 %2384, %2387
  %2407 = xor i32 %2404, %2387
  %2408 = add nuw nsw i32 %2407, %2406
  %2409 = icmp eq i32 %2408, 2
  %2410 = zext i1 %2409 to i8
  store i8 %2410, i8* %38, align 1
  store i32 %2388, i32* inttoptr (i64 6299820 to i32*), align 4
  %2411 = load i64, i64* %RBP.i, align 8
  %2412 = add i64 %2411, -24
  %2413 = add i64 %2376, 95
  store i64 %2413, i64* %3, align 8
  %2414 = inttoptr i64 %2412 to i64*
  %2415 = load i64, i64* %2414, align 8
  %2416 = add i64 %2415, 1
  store i64 %2416, i64* %RAX.i1202, align 8
  %2417 = icmp eq i64 %2415, -1
  %2418 = icmp eq i64 %2416, 0
  %2419 = or i1 %2417, %2418
  %2420 = zext i1 %2419 to i8
  store i8 %2420, i8* %14, align 1
  %2421 = trunc i64 %2416 to i32
  %2422 = and i32 %2421, 255
  %2423 = tail call i32 @llvm.ctpop.i32(i32 %2422)
  %2424 = trunc i32 %2423 to i8
  %2425 = and i8 %2424, 1
  %2426 = xor i8 %2425, 1
  store i8 %2426, i8* %21, align 1
  %2427 = xor i64 %2416, %2415
  %2428 = lshr i64 %2427, 4
  %2429 = trunc i64 %2428 to i8
  %2430 = and i8 %2429, 1
  store i8 %2430, i8* %26, align 1
  %2431 = zext i1 %2418 to i8
  store i8 %2431, i8* %29, align 1
  %2432 = lshr i64 %2416, 63
  %2433 = trunc i64 %2432 to i8
  store i8 %2433, i8* %32, align 1
  %2434 = lshr i64 %2415, 63
  %2435 = xor i64 %2432, %2434
  %2436 = add nuw nsw i64 %2435, %2432
  %2437 = icmp eq i64 %2436, 2
  %2438 = zext i1 %2437 to i8
  store i8 %2438, i8* %38, align 1
  %2439 = add i64 %2376, 103
  store i64 %2439, i64* %3, align 8
  store i64 %2416, i64* %2414, align 8
  %2440 = load i64, i64* %3, align 8
  %2441 = add i64 %2440, -117
  store i64 %2441, i64* %3, align 8
  br label %block_.L_40140a

block_.L_401484:                                  ; preds = %block_.L_40140a
  %2442 = add i64 %2340, -176
  %2443 = add i64 %2376, 6
  store i64 %2443, i64* %3, align 8
  %2444 = inttoptr i64 %2442 to i32*
  %2445 = load i32, i32* %2444, align 4
  %2446 = zext i32 %2445 to i64
  store i64 %2446, i64* %RAX.i1202, align 8
  %2447 = add i64 %2340, -172
  %2448 = add i64 %2376, 12
  store i64 %2448, i64* %3, align 8
  %2449 = inttoptr i64 %2447 to i32*
  %2450 = load i32, i32* %2449, align 4
  %2451 = sub i32 %2445, %2450
  %2452 = icmp ult i32 %2445, %2450
  %2453 = zext i1 %2452 to i8
  store i8 %2453, i8* %14, align 1
  %2454 = and i32 %2451, 255
  %2455 = tail call i32 @llvm.ctpop.i32(i32 %2454)
  %2456 = trunc i32 %2455 to i8
  %2457 = and i8 %2456, 1
  %2458 = xor i8 %2457, 1
  store i8 %2458, i8* %21, align 1
  %2459 = xor i32 %2450, %2445
  %2460 = xor i32 %2459, %2451
  %2461 = lshr i32 %2460, 4
  %2462 = trunc i32 %2461 to i8
  %2463 = and i8 %2462, 1
  store i8 %2463, i8* %26, align 1
  %2464 = icmp eq i32 %2451, 0
  %2465 = zext i1 %2464 to i8
  store i8 %2465, i8* %29, align 1
  %2466 = lshr i32 %2451, 31
  %2467 = trunc i32 %2466 to i8
  store i8 %2467, i8* %32, align 1
  %2468 = lshr i32 %2445, 31
  %2469 = lshr i32 %2450, 31
  %2470 = xor i32 %2469, %2468
  %2471 = xor i32 %2466, %2468
  %2472 = add nuw nsw i32 %2471, %2470
  %2473 = icmp eq i32 %2472, 2
  %2474 = zext i1 %2473 to i8
  store i8 %2474, i8* %38, align 1
  %.v153 = select i1 %2464, i64 18, i64 66
  %2475 = add i64 %2376, %.v153
  store i64 %2475, i64* %3, align 8
  br i1 %2464, label %block_401496, label %block_.L_4014c6

block_401496:                                     ; preds = %block_.L_401484
  %2476 = add i64 %2475, 4
  store i64 %2476, i64* %3, align 8
  %2477 = load i64, i64* %2347, align 8
  store i64 %2477, i64* %RDI.i1185, align 8
  %2478 = load i32, i32* inttoptr (i64 6299792 to i32*), align 16
  %2479 = sext i32 %2478 to i64
  store i64 %2479, i64* %RSI.i1211, align 8
  %2480 = load i32, i32* inttoptr (i64 6299820 to i32*), align 4
  %2481 = sext i32 %2480 to i64
  store i64 %2481, i64* %RDX.i587, align 8
  %2482 = add i64 %2340, -112
  %2483 = add i64 %2475, 25
  store i64 %2483, i64* %3, align 8
  %2484 = inttoptr i64 %2482 to i64*
  %2485 = load i64, i64* %2484, align 8
  store i64 %2485, i64* %298, align 1
  store double 0.000000e+00, double* %300, align 1
  %2486 = add i64 %2340, -120
  %2487 = add i64 %2475, 30
  store i64 %2487, i64* %3, align 8
  %2488 = inttoptr i64 %2486 to i64*
  %2489 = load i64, i64* %2488, align 8
  store i64 %2489, i64* %303, align 1
  store double 0.000000e+00, double* %305, align 1
  %2490 = add i64 %2340, -128
  %2491 = add i64 %2475, 35
  store i64 %2491, i64* %3, align 8
  %2492 = inttoptr i64 %2490 to i64*
  %2493 = load i64, i64* %2492, align 8
  store i64 %2493, i64* %308, align 1
  store double 0.000000e+00, double* %310, align 1
  %2494 = add i64 %2340, -136
  %2495 = add i64 %2475, 43
  store i64 %2495, i64* %3, align 8
  %2496 = inttoptr i64 %2494 to i64*
  %2497 = load i64, i64* %2496, align 8
  store i64 %2497, i64* %325, align 1
  store double 0.000000e+00, double* %314, align 1
  %2498 = add i64 %2475, 330
  %2499 = add i64 %2475, 48
  %2500 = load i64, i64* %6, align 8
  %2501 = add i64 %2500, -8
  %2502 = inttoptr i64 %2501 to i64*
  store i64 %2499, i64* %2502, align 8
  store i64 %2501, i64* %6, align 8
  store i64 %2498, i64* %3, align 8
  %call2_4014c1 = tail call %struct.Memory* @sub_4015e0.POUT(%struct.State* nonnull %0, i64 %2498, %struct.Memory* %MEMORY.23)
  %.pre119 = load i64, i64* %3, align 8
  %.pre120 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4014c6

block_.L_4014c6:                                  ; preds = %block_.L_401484, %block_401496
  %2503 = phi i64 [ %2340, %block_.L_401484 ], [ %.pre120, %block_401496 ]
  %2504 = phi i64 [ %2475, %block_.L_401484 ], [ %.pre119, %block_401496 ]
  %MEMORY.25 = phi %struct.Memory* [ %MEMORY.23, %block_.L_401484 ], [ %call2_4014c1, %block_401496 ]
  %2505 = add i64 %2504, 1130
  %2506 = add i64 %2504, 8
  store i64 %2506, i64* %3, align 8
  %2507 = inttoptr i64 %2505 to i64*
  %2508 = load i64, i64* %2507, align 8
  store i64 %2508, i64* %298, align 1
  store double 0.000000e+00, double* %300, align 1
  %2509 = add i64 %2503, -144
  %2510 = add i64 %2504, 16
  store i64 %2510, i64* %3, align 8
  %2511 = inttoptr i64 %2509 to i64*
  store i64 %2508, i64* %2511, align 8
  %2512 = load i64, i64* %RBP.i, align 8
  %2513 = add i64 %2512, -24
  %2514 = load i64, i64* %3, align 8
  %2515 = add i64 %2514, 8
  store i64 %2515, i64* %3, align 8
  %2516 = inttoptr i64 %2513 to i64*
  store i64 1, i64* %2516, align 8
  %.pre121 = load i64, i64* %3, align 8
  br label %block_.L_4014de

block_.L_4014de:                                  ; preds = %block_4014ec, %block_.L_4014c6
  %2517 = phi i64 [ %2616, %block_4014ec ], [ %.pre121, %block_.L_4014c6 ]
  %2518 = load i64, i64* %RBP.i, align 8
  %2519 = add i64 %2518, -24
  %2520 = add i64 %2517, 4
  store i64 %2520, i64* %3, align 8
  %2521 = inttoptr i64 %2519 to i64*
  %2522 = load i64, i64* %2521, align 8
  store i64 %2522, i64* %RAX.i1202, align 8
  %2523 = add i64 %2518, -104
  %2524 = add i64 %2517, 8
  store i64 %2524, i64* %3, align 8
  %2525 = inttoptr i64 %2523 to i64*
  %2526 = load i64, i64* %2525, align 8
  %2527 = sub i64 %2522, %2526
  %2528 = icmp ult i64 %2522, %2526
  %2529 = zext i1 %2528 to i8
  store i8 %2529, i8* %14, align 1
  %2530 = trunc i64 %2527 to i32
  %2531 = and i32 %2530, 255
  %2532 = tail call i32 @llvm.ctpop.i32(i32 %2531)
  %2533 = trunc i32 %2532 to i8
  %2534 = and i8 %2533, 1
  %2535 = xor i8 %2534, 1
  store i8 %2535, i8* %21, align 1
  %2536 = xor i64 %2526, %2522
  %2537 = xor i64 %2536, %2527
  %2538 = lshr i64 %2537, 4
  %2539 = trunc i64 %2538 to i8
  %2540 = and i8 %2539, 1
  store i8 %2540, i8* %26, align 1
  %2541 = icmp eq i64 %2527, 0
  %2542 = zext i1 %2541 to i8
  store i8 %2542, i8* %29, align 1
  %2543 = lshr i64 %2527, 63
  %2544 = trunc i64 %2543 to i8
  store i8 %2544, i8* %32, align 1
  %2545 = lshr i64 %2522, 63
  %2546 = lshr i64 %2526, 63
  %2547 = xor i64 %2546, %2545
  %2548 = xor i64 %2543, %2545
  %2549 = add nuw nsw i64 %2548, %2547
  %2550 = icmp eq i64 %2549, 2
  %2551 = zext i1 %2550 to i8
  store i8 %2551, i8* %38, align 1
  %2552 = icmp ne i8 %2544, 0
  %2553 = xor i1 %2552, %2550
  %.demorgan134 = or i1 %2541, %2553
  %.v154 = select i1 %.demorgan134, i64 14, i64 71
  %2554 = add i64 %2517, %.v154
  store i64 %2554, i64* %3, align 8
  br i1 %.demorgan134, label %block_4014ec, label %block_.L_401525

block_4014ec:                                     ; preds = %block_.L_4014de
  %2555 = add i64 %2518, -144
  %2556 = add i64 %2554, 8
  store i64 %2556, i64* %3, align 8
  %2557 = inttoptr i64 %2555 to i64*
  %2558 = load i64, i64* %2557, align 8
  store i64 %2558, i64* %298, align 1
  store double 0.000000e+00, double* %300, align 1
  %2559 = add i64 %2554, -3580
  %2560 = add i64 %2554, 13
  %2561 = load i64, i64* %6, align 8
  %2562 = add i64 %2561, -8
  %2563 = inttoptr i64 %2562 to i64*
  store i64 %2560, i64* %2563, align 8
  store i64 %2562, i64* %6, align 8
  store i64 %2559, i64* %3, align 8
  %call2_4014f4 = tail call %struct.Memory* @sub_4006f0.log_plt(%struct.State* nonnull %0, i64 %2559, %struct.Memory* %MEMORY.25)
  %2564 = load i64, i64* %3, align 8
  %2565 = load double, double* %297, align 1
  %2566 = load double, double* inttoptr (i64 6299808 to double*), align 32
  %2567 = fdiv double %2565, %2566
  store double %2567, double* %297, align 1
  %2568 = add i64 %2564, -3641
  %2569 = add i64 %2564, 14
  %2570 = load i64, i64* %6, align 8
  %2571 = add i64 %2570, -8
  %2572 = inttoptr i64 %2571 to i64*
  store i64 %2569, i64* %2572, align 8
  store i64 %2571, i64* %6, align 8
  store i64 %2568, i64* %3, align 8
  %call2_401502 = tail call %struct.Memory* @sub_4006c0.exp_plt(%struct.State* nonnull %0, i64 %2568, %struct.Memory* %MEMORY.25)
  %2573 = load i64, i64* %3, align 8
  %2574 = add i64 %2573, -3511
  %2575 = add i64 %2573, 5
  %2576 = load i64, i64* %6, align 8
  %2577 = add i64 %2576, -8
  %2578 = inttoptr i64 %2577 to i64*
  store i64 %2575, i64* %2578, align 8
  store i64 %2577, i64* %6, align 8
  store i64 %2574, i64* %3, align 8
  %call2_401507 = tail call %struct.Memory* @sub_400750.sqrt_plt(%struct.State* nonnull %0, i64 %2574, %struct.Memory* %MEMORY.25)
  %2579 = load i64, i64* %RBP.i, align 8
  %2580 = add i64 %2579, -144
  %2581 = load i64, i64* %3, align 8
  %2582 = add i64 %2581, 8
  store i64 %2582, i64* %3, align 8
  %2583 = load i64, i64* %298, align 1
  %2584 = inttoptr i64 %2580 to i64*
  store i64 %2583, i64* %2584, align 8
  %2585 = load i64, i64* %RBP.i, align 8
  %2586 = add i64 %2585, -24
  %2587 = load i64, i64* %3, align 8
  %2588 = add i64 %2587, 4
  store i64 %2588, i64* %3, align 8
  %2589 = inttoptr i64 %2586 to i64*
  %2590 = load i64, i64* %2589, align 8
  %2591 = add i64 %2590, 1
  store i64 %2591, i64* %RAX.i1202, align 8
  %2592 = icmp eq i64 %2590, -1
  %2593 = icmp eq i64 %2591, 0
  %2594 = or i1 %2592, %2593
  %2595 = zext i1 %2594 to i8
  store i8 %2595, i8* %14, align 1
  %2596 = trunc i64 %2591 to i32
  %2597 = and i32 %2596, 255
  %2598 = tail call i32 @llvm.ctpop.i32(i32 %2597)
  %2599 = trunc i32 %2598 to i8
  %2600 = and i8 %2599, 1
  %2601 = xor i8 %2600, 1
  store i8 %2601, i8* %21, align 1
  %2602 = xor i64 %2591, %2590
  %2603 = lshr i64 %2602, 4
  %2604 = trunc i64 %2603 to i8
  %2605 = and i8 %2604, 1
  store i8 %2605, i8* %26, align 1
  %2606 = zext i1 %2593 to i8
  store i8 %2606, i8* %29, align 1
  %2607 = lshr i64 %2591, 63
  %2608 = trunc i64 %2607 to i8
  store i8 %2608, i8* %32, align 1
  %2609 = lshr i64 %2590, 63
  %2610 = xor i64 %2607, %2609
  %2611 = add nuw nsw i64 %2610, %2607
  %2612 = icmp eq i64 %2611, 2
  %2613 = zext i1 %2612 to i8
  store i8 %2613, i8* %38, align 1
  %2614 = add i64 %2587, 12
  store i64 %2614, i64* %3, align 8
  store i64 %2591, i64* %2589, align 8
  %2615 = load i64, i64* %3, align 8
  %2616 = add i64 %2615, -66
  store i64 %2616, i64* %3, align 8
  br label %block_.L_4014de

block_.L_401525:                                  ; preds = %block_.L_4014de
  %2617 = add i64 %2518, -176
  %2618 = add i64 %2554, 6
  store i64 %2618, i64* %3, align 8
  %2619 = inttoptr i64 %2617 to i32*
  %2620 = load i32, i32* %2619, align 4
  %2621 = zext i32 %2620 to i64
  store i64 %2621, i64* %RAX.i1202, align 8
  %2622 = add i64 %2518, -172
  %2623 = add i64 %2554, 12
  store i64 %2623, i64* %3, align 8
  %2624 = inttoptr i64 %2622 to i32*
  %2625 = load i32, i32* %2624, align 4
  %2626 = sub i32 %2620, %2625
  %2627 = icmp ult i32 %2620, %2625
  %2628 = zext i1 %2627 to i8
  store i8 %2628, i8* %14, align 1
  %2629 = and i32 %2626, 255
  %2630 = tail call i32 @llvm.ctpop.i32(i32 %2629)
  %2631 = trunc i32 %2630 to i8
  %2632 = and i8 %2631, 1
  %2633 = xor i8 %2632, 1
  store i8 %2633, i8* %21, align 1
  %2634 = xor i32 %2625, %2620
  %2635 = xor i32 %2634, %2626
  %2636 = lshr i32 %2635, 4
  %2637 = trunc i32 %2636 to i8
  %2638 = and i8 %2637, 1
  store i8 %2638, i8* %26, align 1
  %2639 = icmp eq i32 %2626, 0
  %2640 = zext i1 %2639 to i8
  store i8 %2640, i8* %29, align 1
  %2641 = lshr i32 %2626, 31
  %2642 = trunc i32 %2641 to i8
  store i8 %2642, i8* %32, align 1
  %2643 = lshr i32 %2620, 31
  %2644 = lshr i32 %2625, 31
  %2645 = xor i32 %2644, %2643
  %2646 = xor i32 %2641, %2643
  %2647 = add nuw nsw i32 %2646, %2645
  %2648 = icmp eq i32 %2647, 2
  %2649 = zext i1 %2648 to i8
  store i8 %2649, i8* %38, align 1
  %.v155 = select i1 %2639, i64 18, i64 75
  %2650 = add i64 %2554, %.v155
  store i64 %2650, i64* %3, align 8
  br i1 %2639, label %block_401537, label %block_.L_401570

block_401537:                                     ; preds = %block_.L_401525
  %2651 = add i64 %2650, 4
  store i64 %2651, i64* %3, align 8
  %2652 = load i64, i64* %2525, align 8
  store i64 %2652, i64* %RDI.i1185, align 8
  %2653 = load i32, i32* inttoptr (i64 6299792 to i32*), align 16
  %2654 = sext i32 %2653 to i64
  store i64 %2654, i64* %RSI.i1211, align 8
  %2655 = load i32, i32* inttoptr (i64 6299820 to i32*), align 4
  %2656 = sext i32 %2655 to i64
  store i64 %2656, i64* %RDX.i587, align 8
  %2657 = add i64 %2518, -144
  %2658 = add i64 %2650, 28
  store i64 %2658, i64* %3, align 8
  %2659 = inttoptr i64 %2657 to i64*
  %2660 = load i64, i64* %2659, align 8
  store i64 %2660, i64* %298, align 1
  store double 0.000000e+00, double* %300, align 1
  %2661 = add i64 %2650, 36
  store i64 %2661, i64* %3, align 8
  %2662 = load i64, i64* %2659, align 8
  store i64 %2662, i64* %303, align 1
  store double 0.000000e+00, double* %305, align 1
  %2663 = add i64 %2650, 44
  store i64 %2663, i64* %3, align 8
  %2664 = load i64, i64* %2659, align 8
  store i64 %2664, i64* %308, align 1
  store double 0.000000e+00, double* %310, align 1
  %2665 = add i64 %2650, 52
  store i64 %2665, i64* %3, align 8
  %2666 = load i64, i64* %2659, align 8
  store i64 %2666, i64* %325, align 1
  store double 0.000000e+00, double* %314, align 1
  %2667 = add i64 %2650, 169
  %2668 = add i64 %2650, 57
  %2669 = load i64, i64* %6, align 8
  %2670 = add i64 %2669, -8
  %2671 = inttoptr i64 %2670 to i64*
  store i64 %2668, i64* %2671, align 8
  store i64 %2670, i64* %6, align 8
  store i64 %2667, i64* %3, align 8
  %call2_40156b = tail call %struct.Memory* @sub_4015e0.POUT(%struct.State* nonnull %0, i64 %2667, %struct.Memory* %MEMORY.25)
  %.pre122 = load i64, i64* %RBP.i, align 8
  %.pre123 = load i64, i64* %3, align 8
  br label %block_.L_401570

block_.L_401570:                                  ; preds = %block_.L_401525, %block_401537
  %2672 = phi i64 [ %2650, %block_.L_401525 ], [ %.pre123, %block_401537 ]
  %2673 = phi i64 [ %2518, %block_.L_401525 ], [ %.pre122, %block_401537 ]
  %MEMORY.27 = phi %struct.Memory* [ %MEMORY.25, %block_.L_401525 ], [ %call2_40156b, %block_401537 ]
  %2674 = add i64 %2673, -176
  %2675 = add i64 %2672, 6
  store i64 %2675, i64* %3, align 8
  %2676 = inttoptr i64 %2674 to i32*
  %2677 = load i32, i32* %2676, align 4
  %2678 = add i32 %2677, 1
  %2679 = zext i32 %2678 to i64
  store i64 %2679, i64* %RAX.i1202, align 8
  %2680 = icmp eq i32 %2677, -1
  %2681 = icmp eq i32 %2678, 0
  %2682 = or i1 %2680, %2681
  %2683 = zext i1 %2682 to i8
  store i8 %2683, i8* %14, align 1
  %2684 = and i32 %2678, 255
  %2685 = tail call i32 @llvm.ctpop.i32(i32 %2684)
  %2686 = trunc i32 %2685 to i8
  %2687 = and i8 %2686, 1
  %2688 = xor i8 %2687, 1
  store i8 %2688, i8* %21, align 1
  %2689 = xor i32 %2678, %2677
  %2690 = lshr i32 %2689, 4
  %2691 = trunc i32 %2690 to i8
  %2692 = and i8 %2691, 1
  store i8 %2692, i8* %26, align 1
  %2693 = zext i1 %2681 to i8
  store i8 %2693, i8* %29, align 1
  %2694 = lshr i32 %2678, 31
  %2695 = trunc i32 %2694 to i8
  store i8 %2695, i8* %32, align 1
  %2696 = lshr i32 %2677, 31
  %2697 = xor i32 %2694, %2696
  %2698 = add nuw nsw i32 %2697, %2694
  %2699 = icmp eq i32 %2698, 2
  %2700 = zext i1 %2699 to i8
  store i8 %2700, i8* %38, align 1
  %2701 = add i64 %2672, 15
  store i64 %2701, i64* %3, align 8
  store i32 %2678, i32* %2676, align 4
  %2702 = load i32, i32* %EAX.i1199, align 4
  %2703 = load i64, i64* %RBP.i, align 8
  %2704 = add i64 %2703, -172
  %2705 = load i64, i64* %3, align 8
  %2706 = add i64 %2705, 6
  store i64 %2706, i64* %3, align 8
  %2707 = inttoptr i64 %2704 to i32*
  %2708 = load i32, i32* %2707, align 4
  %2709 = sub i32 %2702, %2708
  %2710 = icmp ult i32 %2702, %2708
  %2711 = zext i1 %2710 to i8
  store i8 %2711, i8* %14, align 1
  %2712 = and i32 %2709, 255
  %2713 = tail call i32 @llvm.ctpop.i32(i32 %2712)
  %2714 = trunc i32 %2713 to i8
  %2715 = and i8 %2714, 1
  %2716 = xor i8 %2715, 1
  store i8 %2716, i8* %21, align 1
  %2717 = xor i32 %2708, %2702
  %2718 = xor i32 %2717, %2709
  %2719 = lshr i32 %2718, 4
  %2720 = trunc i32 %2719 to i8
  %2721 = and i8 %2720, 1
  store i8 %2721, i8* %26, align 1
  %2722 = icmp eq i32 %2709, 0
  %2723 = zext i1 %2722 to i8
  store i8 %2723, i8* %29, align 1
  %2724 = lshr i32 %2709, 31
  %2725 = trunc i32 %2724 to i8
  store i8 %2725, i8* %32, align 1
  %2726 = lshr i32 %2702, 31
  %2727 = lshr i32 %2708, 31
  %2728 = xor i32 %2727, %2726
  %2729 = xor i32 %2724, %2726
  %2730 = add nuw nsw i32 %2729, %2728
  %2731 = icmp eq i32 %2730, 2
  %2732 = zext i1 %2731 to i8
  store i8 %2732, i8* %38, align 1
  %2733 = icmp ne i8 %2725, 0
  %2734 = xor i1 %2733, %2731
  %.demorgan135 = or i1 %2722, %2734
  %.v156 = select i1 %.demorgan135, i64 12, i64 17
  %2735 = add i64 %2705, %.v156
  store i64 %2735, i64* %3, align 8
  br i1 %.demorgan135, label %block_40158b, label %block_.L_401590

block_40158b:                                     ; preds = %block_.L_401570
  %2736 = add i64 %2735, -2992
  store i64 %2736, i64* %3, align 8
  br label %block_.L_4009db

block_.L_401590:                                  ; preds = %block_.L_401570
  store i64 0, i64* %RAX.i1202, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 0, i64* %RDI.i1185, align 8
  %2737 = add i64 %2735, -3696
  %2738 = add i64 %2735, 9
  %2739 = load i64, i64* %6, align 8
  %2740 = add i64 %2739, -8
  %2741 = inttoptr i64 %2740 to i64*
  store i64 %2738, i64* %2741, align 8
  store i64 %2740, i64* %6, align 8
  store i64 %2737, i64* %3, align 8
  %call2_401594 = tail call %struct.Memory* @sub_400720.time_plt(%struct.State* nonnull %0, i64 %2737, %struct.Memory* %MEMORY.27)
  %2742 = load i64, i64* %3, align 8
  store i64 4200789, i64* %RDI.i1185, align 8
  %2743 = load i64, i64* %RBP.i, align 8
  %2744 = add i64 %2743, -200
  %2745 = load i64, i64* %RAX.i1202, align 8
  %2746 = add i64 %2742, 17
  store i64 %2746, i64* %3, align 8
  %2747 = inttoptr i64 %2744 to i64*
  store i64 %2745, i64* %2747, align 8
  %2748 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i, align 1
  %2749 = add i64 %2748, -3786
  %2750 = add i64 %2748, 7
  %2751 = load i64, i64* %6, align 8
  %2752 = add i64 %2751, -8
  %2753 = inttoptr i64 %2752 to i64*
  store i64 %2750, i64* %2753, align 8
  store i64 %2752, i64* %6, align 8
  store i64 %2749, i64* %3, align 8
  %call2_4015ac = tail call %struct.Memory* @sub_4006e0.printf_plt(%struct.State* nonnull %0, i64 %2749, %struct.Memory* %call2_401594)
  %2754 = load i64, i64* %RBP.i, align 8
  %2755 = add i64 %2754, -208
  %2756 = load i64, i64* %3, align 8
  %2757 = add i64 %2756, 7
  store i64 %2757, i64* %3, align 8
  %2758 = inttoptr i64 %2755 to i32*
  %2759 = load i32, i32* %2758, align 4
  store i8 0, i8* %14, align 1
  %2760 = and i32 %2759, 255
  %2761 = tail call i32 @llvm.ctpop.i32(i32 %2760)
  %2762 = trunc i32 %2761 to i8
  %2763 = and i8 %2762, 1
  %2764 = xor i8 %2763, 1
  store i8 %2764, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2765 = icmp eq i32 %2759, 0
  %2766 = zext i1 %2765 to i8
  store i8 %2766, i8* %29, align 1
  %2767 = lshr i32 %2759, 31
  %2768 = trunc i32 %2767 to i8
  store i8 %2768, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2769 = add i64 %2754, -316
  %2770 = load i32, i32* %EAX.i1199, align 4
  %2771 = add i64 %2756, 13
  store i64 %2771, i64* %3, align 8
  %2772 = inttoptr i64 %2769 to i32*
  store i32 %2770, i32* %2772, align 4
  %2773 = load i64, i64* %3, align 8
  %2774 = load i8, i8* %29, align 1
  %2775 = icmp ne i8 %2774, 0
  %.v201 = select i1 %2775, i64 11, i64 6
  %2776 = add i64 %2773, %.v201
  store i64 %2776, i64* %3, align 8
  %cmpBr_4015be = icmp eq i8 %2774, 1
  br i1 %cmpBr_4015be, label %block_.L_4015c9, label %block_4015c4

block_4015c4:                                     ; preds = %block_.L_401590
  %2777 = add i64 %2776, -3150
  %2778 = add i64 %2776, 5
  store i64 %2778, i64* %3, align 8
  %.pre91 = load i64, i64* %RAX.i1202, align 8
  %2779 = trunc i64 %.pre91 to i32
  br label %block_.L_400976

block_.L_4015c9:                                  ; preds = %block_.L_401590
  %2780 = load i64, i64* %RBP.i, align 8
  %2781 = add i64 %2780, -4
  %2782 = add i64 %2776, 7
  store i64 %2782, i64* %3, align 8
  %2783 = inttoptr i64 %2781 to i32*
  store i32 0, i32* %2783, align 4
  %.pre124 = load i64, i64* %3, align 8
  br label %block_.L_4015d0

block_.L_4015d0:                                  ; preds = %block_.L_4015c9, %block_.L_40092d
  %2784 = phi i64 [ %.pre124, %block_.L_4015c9 ], [ %262, %block_.L_40092d ]
  %MEMORY.28 = phi %struct.Memory* [ %call2_4015ac, %block_.L_4015c9 ], [ %call2_400941, %block_.L_40092d ]
  %2785 = load i64, i64* %RBP.i, align 8
  %2786 = add i64 %2785, -4
  %2787 = add i64 %2784, 3
  store i64 %2787, i64* %3, align 8
  %2788 = inttoptr i64 %2786 to i32*
  %2789 = load i32, i32* %2788, align 4
  %2790 = zext i32 %2789 to i64
  store i64 %2790, i64* %RAX.i1202, align 8
  %2791 = load i64, i64* %6, align 8
  %2792 = add i64 %2791, 320
  store i64 %2792, i64* %6, align 8
  %2793 = icmp ugt i64 %2791, -321
  %2794 = zext i1 %2793 to i8
  store i8 %2794, i8* %14, align 1
  %2795 = trunc i64 %2792 to i32
  %2796 = and i32 %2795, 255
  %2797 = tail call i32 @llvm.ctpop.i32(i32 %2796)
  %2798 = trunc i32 %2797 to i8
  %2799 = and i8 %2798, 1
  %2800 = xor i8 %2799, 1
  store i8 %2800, i8* %21, align 1
  %2801 = xor i64 %2792, %2791
  %2802 = lshr i64 %2801, 4
  %2803 = trunc i64 %2802 to i8
  %2804 = and i8 %2803, 1
  store i8 %2804, i8* %26, align 1
  %2805 = icmp eq i64 %2792, 0
  %2806 = zext i1 %2805 to i8
  store i8 %2806, i8* %29, align 1
  %2807 = lshr i64 %2792, 63
  %2808 = trunc i64 %2807 to i8
  store i8 %2808, i8* %32, align 1
  %2809 = lshr i64 %2791, 63
  %2810 = xor i64 %2807, %2809
  %2811 = add nuw nsw i64 %2810, %2807
  %2812 = icmp eq i64 %2811, 2
  %2813 = zext i1 %2812 to i8
  store i8 %2813, i8* %38, align 1
  %2814 = add i64 %2784, 11
  store i64 %2814, i64* %3, align 8
  %2815 = add i64 %2791, 328
  %2816 = inttoptr i64 %2792 to i64*
  %2817 = load i64, i64* %2816, align 8
  store i64 %2817, i64* %RBP.i, align 8
  store i64 %2815, i64* %6, align 8
  %2818 = add i64 %2784, 12
  store i64 %2818, i64* %3, align 8
  %2819 = inttoptr i64 %2815 to i64*
  %2820 = load i64, i64* %2819, align 8
  store i64 %2820, i64* %3, align 8
  %2821 = add i64 %2791, 336
  store i64 %2821, i64* %6, align 8
  ret %struct.Memory* %MEMORY.28
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
define %struct.Memory* @routine_subq__0x140___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -320
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 320
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
define %struct.Memory* @routine_movq__0x186a0__MINUS0xb8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 11
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 100000, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0xd0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0xac__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -172
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xac__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -172
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
define %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -8
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
define %struct.Memory* @routine_jge_.L_400971(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x401938___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4200760, i64* %RSI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xac__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -172
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rcx__rdi_8____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDI, align 8
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
define %struct.Memory* @routine_je_.L_4008e0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0xac__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -172
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
define %struct.Memory* @routine_movsbl___rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RAX to i8**
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x63___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -99
  %8 = icmp ult i32 %4, 99
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
define %struct.Memory* @routine_jne_.L_4008ef(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0xd0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40095d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_callq_.atol_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_40092d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_400958(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x40193b___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4200763, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x602080___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* inttoptr (i64 6299776 to i64*), align 128
  store i64 %5, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0xd4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -212
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4015d0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0xac__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -172
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400888(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400976(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0xf71__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 3961
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
define %struct.Memory* @routine_movsd_0xf71__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 3961
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0xf71__rip____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 3961
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xc0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm2__0x602098(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* inttoptr (i64 6299800 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__0x6020a0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* inttoptr (i64 6299808 to i64*), align 32
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x6020b0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* inttoptr (i64 6299824 to i64*), align 16
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xb8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xa8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0xb0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0xf2d__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 3893
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
define %struct.Memory* @routine_movsd_0xf2d__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 3893
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x0__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 0, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0xc__MINUS0xa8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = sext i64 %8 to i128
  %10 = and i128 %9, -18446744073709551616
  %11 = zext i64 %8 to i128
  %12 = or i128 %10, %11
  %13 = mul nsw i128 %12, 12
  %14 = trunc i128 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = sext i64 %14 to i128
  %16 = icmp ne i128 %15, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = trunc i128 %13 to i32
  %20 = and i32 %19, 252
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %27, align 1
  %28 = lshr i64 %14, 63
  %29 = trunc i64 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %17, i8* %31, align 1
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0xe__MINUS0xa8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = sext i64 %8 to i128
  %10 = and i128 %9, -18446744073709551616
  %11 = zext i64 %8 to i128
  %12 = or i128 %10, %11
  %13 = mul nsw i128 %12, 14
  %14 = trunc i128 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = sext i64 %14 to i128
  %16 = icmp ne i128 %15, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = trunc i128 %13 to i32
  %20 = and i32 %19, 254
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %27, align 1
  %28 = lshr i64 %14, 63
  %29 = trunc i64 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %17, i8* %31, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x159__MINUS0xa8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 11
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = sext i64 %8 to i128
  %10 = and i128 %9, -18446744073709551616
  %11 = zext i64 %8 to i128
  %12 = or i128 %10, %11
  %13 = mul nsw i128 %12, 345
  %14 = trunc i128 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = sext i64 %14 to i128
  %16 = icmp ne i128 %15, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = trunc i128 %13 to i32
  %20 = and i32 %19, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %27, align 1
  %28 = lshr i64 %14, 63
  %29 = trunc i64 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %17, i8* %31, align 1
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0xd2__MINUS0xa8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 11
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = sext i64 %8 to i128
  %10 = and i128 %9, -18446744073709551616
  %11 = zext i64 %8 to i128
  %12 = or i128 %10, %11
  %13 = mul nsw i128 %12, 210
  %14 = trunc i128 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = sext i64 %14 to i128
  %16 = icmp ne i128 %15, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = trunc i128 %13 to i32
  %20 = and i32 %19, 254
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %27, align 1
  %28 = lshr i64 %14, 63
  %29 = trunc i64 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %17, i8* %31, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xa8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x5___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 5
  store i64 %6, i64* %RAX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 59
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 224
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
  %23 = lshr i64 %3, 58
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x383__MINUS0xa8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 11
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = sext i64 %8 to i128
  %10 = and i128 %9, -18446744073709551616
  %11 = zext i64 %8 to i128
  %12 = or i128 %10, %11
  %13 = mul nsw i128 %12, 899
  %14 = trunc i128 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = sext i64 %14 to i128
  %16 = icmp ne i128 %15, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = trunc i128 %13 to i32
  %20 = and i32 %19, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %27, align 1
  %28 = lshr i64 %14, 63
  %29 = trunc i64 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %17, i8* %31, align 1
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x268__MINUS0xa8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 11
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = sext i64 %8 to i128
  %10 = and i128 %9, -18446744073709551616
  %11 = zext i64 %8 to i128
  %12 = or i128 %10, %11
  %13 = mul nsw i128 %12, 616
  %14 = trunc i128 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = sext i64 %14 to i128
  %16 = icmp ne i128 %15, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = trunc i128 %13 to i32
  %20 = and i32 %19, 248
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %27, align 1
  %28 = lshr i64 %14, 63
  %29 = trunc i64 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %17, i8* %31, align 1
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x0__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 0, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x5d__MINUS0xa8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = sext i64 %8 to i128
  %10 = and i128 %9, -18446744073709551616
  %11 = zext i64 %8 to i128
  %12 = or i128 %10, %11
  %13 = mul nsw i128 %12, 93
  %14 = trunc i128 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = sext i64 %14 to i128
  %16 = icmp ne i128 %15, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = trunc i128 %13 to i32
  %20 = and i32 %19, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %27, align 1
  %28 = lshr i64 %14, 63
  %29 = trunc i64 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %17, i8* %31, align 1
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
define %struct.Memory* @routine_movsd__xmm1__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x1__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 1, i64* %7, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq_MINUS0x20__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
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
define %struct.Memory* @routine_jg_.L_400b56(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x8000000000000000___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 -9223372036854775808, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
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
define %struct.Memory* @routine_addsd_MINUS0x78__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -120
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_MINUS0x80__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -128
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_MINUS0x88__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -136
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_0x602098___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* inttoptr (i64 6299800 to double*), align 8
  %9 = fmul double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
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
define %struct.Memory* @routine_subsd_MINUS0x80__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -128
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_MINUS0x88__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -136
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_MINUS0x78__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -120
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__xmm0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* %RCX, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorq__rax___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = xor i64 %4, %3
  store i64 %7, i64* %RCX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = trunc i64 %7 to i32
  %10 = and i32 %9, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = icmp eq i64 %7, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i64 %7, 63
  %20 = trunc i64 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %3, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 0, i64* %7, align 1
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
define %struct.Memory* @routine_jmpq_.L_400a89(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xb0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
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
define %struct.Memory* @routine_cmpl_MINUS0xac__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -172
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
define %struct.Memory* @routine_jne_.L_400b90(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
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
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x88__rbp____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.POUT(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0xd78__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 3456
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
define %struct.Memory* @routine_movsd_0xd78__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 3456
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__0x6020c8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* inttoptr (i64 6299848 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x6020d0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* inttoptr (i64 6299856 to i64*), align 16
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x6020d8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* inttoptr (i64 6299864 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x6020e0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* inttoptr (i64 6299872 to i64*), align 32
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq_MINUS0x28__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
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
define %struct.Memory* @routine_jg_.L_400cda(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x6020c8___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* inttoptr (i64 6299848 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_0x6020d0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* inttoptr (i64 6299856 to double*), align 16
  %9 = fadd double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_0x6020d8___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* inttoptr (i64 6299864 to double*), align 8
  %9 = fadd double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_0x6020e0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* inttoptr (i64 6299872 to double*), align 32
  %9 = fsub double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x6020c8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* inttoptr (i64 6299848 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_0x6020d8___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* inttoptr (i64 6299864 to double*), align 8
  %9 = fsub double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_0x6020e0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* inttoptr (i64 6299872 to double*), align 32
  %9 = fadd double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_0x6020d0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* inttoptr (i64 6299856 to double*), align 16
  %9 = fsub double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400bcc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_400d21(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
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
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x6020d0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* inttoptr (i64 6299856 to i64*), align 16
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x6020d8___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* inttoptr (i64 6299864 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x6020e0___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* inttoptr (i64 6299872 to i64*), align 32
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq_MINUS0x30__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
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
define %struct.Memory* @routine_jg_.L_400d57(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x6020c0___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 6299840, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.PA(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_400d29(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_400d9e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0x602090(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* inttoptr (i64 6299792 to i32*), align 16
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq_MINUS0x38__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
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
define %struct.Memory* @routine_jg_.L_400e50(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0x602090(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* inttoptr (i64 6299792 to i32*), align 16
  %6 = add i32 %5, -1
  %7 = icmp eq i32 %5, 0
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = and i32 %6, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = xor i32 %6, %5
  %17 = lshr i32 %16, 4
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i32 %6, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = lshr i32 %6, 31
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %5, 31
  %28 = xor i32 %24, %27
  %29 = add nuw nsw i32 %28, %27
  %30 = icmp eq i32 %29, 2
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %31, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_400ddd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x2__0x602090(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 2, i32* inttoptr (i64 6299792 to i32*), align 16
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400de8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3__0x602090(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 3, i32* inttoptr (i64 6299792 to i32*), align 16
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__0x602090(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* inttoptr (i64 6299792 to i32*), align 16
  %6 = add i32 %5, -2
  %7 = icmp ult i32 %5, 2
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = and i32 %6, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = xor i32 %6, %5
  %17 = lshr i32 %16, 4
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i32 %6, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = lshr i32 %6, 31
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %5, 31
  %28 = xor i32 %24, %27
  %29 = add nuw nsw i32 %28, %27
  %30 = icmp eq i32 %29, 2
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %31, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_400e06(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__0x602090(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* inttoptr (i64 6299792 to i32*), align 16
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400e11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_400e2f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_400e3a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400e3f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400db1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_400e92(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_0x602090___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* inttoptr (i64 6299792 to i32*), align 16
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x602090___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* inttoptr (i64 6299792 to i32*), align 16
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2__0x6020ac(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 2, i32* inttoptr (i64 6299820 to i32*), align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3__0x6020a8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 3, i32* inttoptr (i64 6299816 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq_MINUS0x40__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
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
define %struct.Memory* @routine_jg_.L_400fbe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x602090___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* inttoptr (i64 6299792 to i32*), align 16
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x6020ac___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* inttoptr (i64 6299820 to i32*), align 4
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_0x602090___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* inttoptr (i64 6299792 to i32*), align 16
  %8 = sub i32 %6, %7
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  %10 = icmp ult i32 %6, %7
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
  %19 = xor i32 %7, %6
  %20 = xor i32 %19, %8
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %8, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %8, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %6, 31
  %32 = lshr i32 %7, 31
  %33 = xor i32 %32, %31
  %34 = xor i32 %28, %31
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i32, i32* %ECX, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = shl i64 %4, 32
  %9 = ashr exact i64 %8, 32
  %10 = sext i32 %5 to i64
  %11 = mul nsw i64 %10, %9
  %12 = trunc i64 %11 to i32
  %13 = and i64 %11, 4294967295
  store i64 %13, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl_0x6020a8___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* inttoptr (i64 6299816 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_0x6020ac___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* inttoptr (i64 6299820 to i32*), align 4
  %8 = sub i32 %6, %7
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  %10 = icmp ult i32 %6, %7
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
  %19 = xor i32 %7, %6
  %20 = xor i32 %19, %8
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %8, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %8, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %6, 31
  %32 = lshr i32 %7, 31
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
define %struct.Memory* @routine_movl__eax__0x602090(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* inttoptr (i64 6299792 to i32*), align 16
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x6020a8___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* inttoptr (i64 6299816 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_0x6020ac___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  %6 = load i32, i32* inttoptr (i64 6299820 to i32*), align 4
  %7 = shl i64 %3, 32
  %8 = ashr exact i64 %7, 32
  %9 = sext i32 %6 to i64
  %10 = mul nsw i64 %9, %8
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967295
  store i64 %12, i64* %RAX, align 8
  %13 = shl i64 %10, 32
  %14 = ashr exact i64 %13, 32
  %15 = icmp ne i64 %14, %10
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
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %25, align 1
  %26 = lshr i32 %11, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %16, i8* %29, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_0x6020ac___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  %6 = load i32, i32* inttoptr (i64 6299820 to i32*), align 4
  %7 = shl i64 %3, 32
  %8 = ashr exact i64 %7, 32
  %9 = sext i32 %6 to i64
  %10 = mul nsw i64 %9, %8
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967295
  store i64 %12, i64* %RCX, align 8
  %13 = shl i64 %10, 32
  %14 = ashr exact i64 %13, 32
  %15 = icmp ne i64 %14, %10
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
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %25, align 1
  %26 = lshr i32 %11, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %16, i8* %29, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i32, i32* %ECX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = sub i32 %9, %5
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
  %12 = icmp ult i32 %9, %5
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %10, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %6, %4
  %22 = trunc i64 %21 to i32
  %23 = xor i32 %22, %10
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %10, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %10, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %9, 31
  %35 = lshr i32 %5, 31
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
define %struct.Memory* @routine_movl__eax__0x6020ac(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* inttoptr (i64 6299820 to i32*), align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_0x6020ac___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* inttoptr (i64 6299820 to i32*), align 4
  %8 = sub i32 %6, %7
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  %10 = icmp ult i32 %6, %7
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
  %19 = xor i32 %7, %6
  %20 = xor i32 %19, %8
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %8, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %8, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %6, 31
  %32 = lshr i32 %7, 31
  %33 = xor i32 %32, %31
  %34 = xor i32 %28, %31
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x602090___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* inttoptr (i64 6299792 to i32*), align 16
  %8 = add i32 %7, %6
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  %10 = icmp ult i32 %8, %6
  %11 = icmp ult i32 %8, %7
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
  %21 = xor i32 %7, %6
  %22 = xor i32 %21, %8
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %8, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %6, 31
  %34 = lshr i32 %7, 31
  %35 = xor i32 %30, %33
  %36 = xor i32 %30, %34
  %37 = add nuw nsw i32 %35, %36
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x6020a8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* inttoptr (i64 6299816 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x6020ac___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* inttoptr (i64 6299820 to i32*), align 4
  %8 = add i32 %7, %6
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  %10 = icmp ult i32 %8, %6
  %11 = icmp ult i32 %8, %7
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
  %21 = xor i32 %7, %6
  %22 = xor i32 %21, %8
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %8, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %6, 31
  %34 = lshr i32 %7, 31
  %35 = xor i32 %30, %33
  %36 = xor i32 %30, %34
  %37 = add nuw nsw i32 %35, %36
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x6020a8___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* inttoptr (i64 6299816 to i32*), align 8
  %8 = add i32 %7, %6
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  %10 = icmp ult i32 %8, %6
  %11 = icmp ult i32 %8, %7
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
  %21 = xor i32 %7, %6
  %22 = xor i32 %21, %8
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %8, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %6, 31
  %34 = lshr i32 %7, 31
  %35 = xor i32 %30, %33
  %36 = xor i32 %30, %34
  %37 = add nuw nsw i32 %35, %36
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdl__eax___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = load i32, i32* %EAX, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = sitofp i32 %5 to double
  %9 = bitcast %union.VectorReg* %4 to double*
  store double %8, double* %9, align 1
  ret %struct.Memory* %2
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
define %struct.Memory* @routine_movslq__eax___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x6020c0___rdx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = shl i64 %3, 3
  %5 = add i64 %4, 6299840
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 9
  store i64 %7, i64* %PC, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %9 = load i64, i64* %8, align 1
  %10 = inttoptr i64 %5 to i64*
  store i64 %9, i64* %10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_0x6020a8___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  %6 = load i32, i32* inttoptr (i64 6299816 to i32*), align 8
  %7 = shl i64 %3, 32
  %8 = ashr exact i64 %7, 32
  %9 = sext i32 %6 to i64
  %10 = mul nsw i64 %9, %8
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967295
  store i64 %12, i64* %RAX, align 8
  %13 = shl i64 %10, 32
  %14 = ashr exact i64 %13, 32
  %15 = icmp ne i64 %14, %10
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
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %25, align 1
  %26 = lshr i32 %11, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %16, i8* %29, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x6020ac___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* inttoptr (i64 6299820 to i32*), align 4
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400ebb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40100d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x6020ac___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* inttoptr (i64 6299820 to i32*), align 4
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x90b__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2323
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq_MINUS0x48__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
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
define %struct.Memory* @routine_jg_.L_401224(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x8d5__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2269
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
define %struct.Memory* @routine_movsd_0x602098___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* inttoptr (i64 6299800 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x6020b0___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* inttoptr (i64 6299824 to i64*), align 16
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0xe0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm3___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = extractelement <2 x i32> %9, i32 0
  %14 = bitcast [32 x %union.VectorReg]* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = extractelement <2 x i32> %9, i32 1
  %16 = getelementptr inbounds i8, i8* %5, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %12, i32 0
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm2__MINUS0xe8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -232
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0xf0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.sin_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_MINUS0xe8__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -232
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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
define %struct.Memory* @routine_movsd__xmm1__MINUS0xf8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -248
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.cos_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_MINUS0xf8__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -248
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_MINUS0x98__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -152
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x100__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -256
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_MINUS0x98__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -152
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x108__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -264
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = extractelement <2 x i32> %9, i32 0
  %14 = bitcast [32 x %union.VectorReg]* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = extractelement <2 x i32> %9, i32 1
  %16 = getelementptr inbounds i8, i8* %5, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %12, i32 0
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x108__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -264
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fadd double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0xe0__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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
define %struct.Memory* @routine_subsd__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x100__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -256
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd__xmm1___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
define %struct.Memory* @routine_movaps__xmm2___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = extractelement <2 x i32> %9, i32 0
  %14 = bitcast [32 x %union.VectorReg]* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = extractelement <2 x i32> %9, i32 1
  %16 = getelementptr inbounds i8, i8* %5, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %12, i32 0
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.atan_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x7fd__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2053
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0xf0__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd__xmm0___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
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
define %struct.Memory* @routine_movsd__xmm2__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x602098___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* inttoptr (i64 6299800 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x98__rbp____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x110__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -272
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x118__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -280
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm2__MINUS0x120__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -288
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x120__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -288
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x98__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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
define %struct.Memory* @routine_movsd__xmm1__MINUS0x128__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -296
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x128__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -296
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x130__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -304
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x138__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -312
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x138__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -312
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x118__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -280
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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
define %struct.Memory* @routine_movsd_MINUS0x130__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -304
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x110__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -272
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40102d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40126f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x48__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x98__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x6a1__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1705
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0xa0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq_MINUS0x50__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
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
define %struct.Memory* @routine_jg_.L_4012d2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0xa0__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x98__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.P3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_401297(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40131d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0xa0__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0xa0__rbp____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x603__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1547
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
define %struct.Memory* @routine_movsd_0x5cb__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1491
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x5e3__rip____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1515
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm2__0x6020c8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* inttoptr (i64 6299848 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__0x6020d0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* inttoptr (i64 6299856 to i64*), align 16
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq_MINUS0x58__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
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
define %struct.Memory* @routine_jg_.L_40139d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.P0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_401379(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4013ec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x58__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3__0x6020ac(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 3, i32* inttoptr (i64 6299820 to i32*), align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq_MINUS0x60__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
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
define %struct.Memory* @routine_jg_.L_401484(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_0x602090___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* inttoptr (i64 6299792 to i32*), align 16
  %8 = sub i32 %6, %7
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  %10 = icmp ult i32 %6, %7
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
  %19 = xor i32 %7, %6
  %20 = xor i32 %19, %8
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %8, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %8, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %6, 31
  %32 = lshr i32 %7, 31
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
define %struct.Memory* @routine_jmpq_.L_40140a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4014c6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x462__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1130
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq_MINUS0x68__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -104
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
define %struct.Memory* @routine_jg_.L_401525(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.log_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_divsd_0x6020a0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* inttoptr (i64 6299808 to double*), align 32
  %9 = fdiv double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.exp_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.sqrt_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4014de(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_401570(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xb0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -176
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_401590(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4009db(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x401955___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4200789, i64* %RDI, align 8
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
define %struct.Memory* @routine_callq_.printf_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0xd0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
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
define %struct.Memory* @routine_movl__eax__MINUS0x13c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -316
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4015c9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x140___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 320
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -321
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
