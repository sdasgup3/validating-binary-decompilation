; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x618d80_type = type <{ [8 x i8] }>
%G__0x415970_type = type <{ [8 x i8] }>
%G__0x415992_type = type <{ [8 x i8] }>
%G__0x4159ae_type = type <{ [8 x i8] }>
%G__0x4159de_type = type <{ [8 x i8] }>
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
@G_0x618d80 = local_unnamed_addr global %G_0x618d80_type zeroinitializer
@G__0x415970 = global %G__0x415970_type zeroinitializer
@G__0x415992 = global %G__0x415992_type zeroinitializer
@G__0x4159ae = global %G__0x4159ae_type zeroinitializer
@G__0x4159de = global %G__0x4159de_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_402380.mainQSort3(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404f20.BZ2_bz__AssertH__fail(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @mainSort(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -3512
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 3504
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
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i1036 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  %41 = add i64 %7, 8
  %42 = add i64 %10, 14
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %41 to i64*
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %RAX.i1036, align 8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %RDI.i1575 = getelementptr inbounds %union.anon, %union.anon* %45, i64 0, i32 0
  %46 = add i64 %7, -16
  %47 = load i64, i64* %RDI.i1575, align 8
  %48 = add i64 %10, 18
  store i64 %48, i64* %3, align 8
  %49 = inttoptr i64 %46 to i64*
  store i64 %47, i64* %49, align 8
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i1998 = getelementptr inbounds %union.anon, %union.anon* %50, i64 0, i32 0
  %51 = load i64, i64* %RBP.i, align 8
  %52 = add i64 %51, -16
  %53 = load i64, i64* %RSI.i1998, align 8
  %54 = load i64, i64* %3, align 8
  %55 = add i64 %54, 4
  store i64 %55, i64* %3, align 8
  %56 = inttoptr i64 %52 to i64*
  store i64 %53, i64* %56, align 8
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i2023 = getelementptr inbounds %union.anon, %union.anon* %57, i64 0, i32 0
  %58 = load i64, i64* %RBP.i, align 8
  %59 = add i64 %58, -24
  %60 = load i64, i64* %RDX.i2023, align 8
  %61 = load i64, i64* %3, align 8
  %62 = add i64 %61, 4
  store i64 %62, i64* %3, align 8
  %63 = inttoptr i64 %59 to i64*
  store i64 %60, i64* %63, align 8
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i2020 = getelementptr inbounds %union.anon, %union.anon* %64, i64 0, i32 0
  %65 = load i64, i64* %RBP.i, align 8
  %66 = add i64 %65, -32
  %67 = load i64, i64* %RCX.i2020, align 8
  %68 = load i64, i64* %3, align 8
  %69 = add i64 %68, 4
  store i64 %69, i64* %3, align 8
  %70 = inttoptr i64 %66 to i64*
  store i64 %67, i64* %70, align 8
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i2017 = bitcast %union.anon* %71 to i32*
  %72 = load i64, i64* %RBP.i, align 8
  %73 = add i64 %72, -36
  %74 = load i32, i32* %R8D.i2017, align 4
  %75 = load i64, i64* %3, align 8
  %76 = add i64 %75, 4
  store i64 %76, i64* %3, align 8
  %77 = inttoptr i64 %73 to i32*
  store i32 %74, i32* %77, align 4
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D.i2014 = bitcast %union.anon* %78 to i32*
  %79 = load i64, i64* %RBP.i, align 8
  %80 = add i64 %79, -40
  %81 = load i32, i32* %R9D.i2014, align 4
  %82 = load i64, i64* %3, align 8
  %83 = add i64 %82, 4
  store i64 %83, i64* %3, align 8
  %84 = inttoptr i64 %80 to i32*
  store i32 %81, i32* %84, align 4
  %85 = load i64, i64* %RBP.i, align 8
  %86 = add i64 %85, -48
  %87 = load i64, i64* %RAX.i1036, align 8
  %88 = load i64, i64* %3, align 8
  %89 = add i64 %88, 4
  store i64 %89, i64* %3, align 8
  %90 = inttoptr i64 %86 to i64*
  store i64 %87, i64* %90, align 8
  %91 = load i64, i64* %RBP.i, align 8
  %92 = add i64 %91, -40
  %93 = load i64, i64* %3, align 8
  %94 = add i64 %93, 4
  store i64 %94, i64* %3, align 8
  %95 = inttoptr i64 %92 to i32*
  %96 = load i32, i32* %95, align 4
  %97 = add i32 %96, -4
  %98 = icmp ult i32 %96, 4
  %99 = zext i1 %98 to i8
  store i8 %99, i8* %14, align 1
  %100 = and i32 %97, 255
  %101 = tail call i32 @llvm.ctpop.i32(i32 %100)
  %102 = trunc i32 %101 to i8
  %103 = and i8 %102, 1
  %104 = xor i8 %103, 1
  store i8 %104, i8* %21, align 1
  %105 = xor i32 %97, %96
  %106 = lshr i32 %105, 4
  %107 = trunc i32 %106 to i8
  %108 = and i8 %107, 1
  store i8 %108, i8* %27, align 1
  %109 = icmp eq i32 %97, 0
  %110 = zext i1 %109 to i8
  store i8 %110, i8* %30, align 1
  %111 = lshr i32 %97, 31
  %112 = trunc i32 %111 to i8
  store i8 %112, i8* %33, align 1
  %113 = lshr i32 %96, 31
  %114 = xor i32 %111, %113
  %115 = add nuw nsw i32 %114, %113
  %116 = icmp eq i32 %115, 2
  %117 = zext i1 %116 to i8
  store i8 %117, i8* %39, align 1
  %118 = icmp ne i8 %112, 0
  %119 = xor i1 %118, %116
  %.v220 = select i1 %119, i64 41, i64 10
  %120 = add i64 %93, %.v220
  store i64 %120, i64* %3, align 8
  br i1 %119, label %entry.block_.L_401734_crit_edge, label %block_401715

entry.block_.L_401734_crit_edge:                  ; preds = %entry
  %.pre209 = bitcast %union.anon* %40 to i32*
  br label %block_.L_401734

block_401715:                                     ; preds = %entry
  store i64 ptrtoint (%G__0x415970_type* @G__0x415970 to i64), i64* %RSI.i1998, align 8
  %121 = load i64, i64* bitcast (%G_0x618d80_type* @G_0x618d80 to i64*), align 8
  store i64 %121, i64* %RDI.i1575, align 8
  %AL.i2002 = bitcast %union.anon* %40 to i8*
  store i8 0, i8* %AL.i2002, align 1
  %122 = add i64 %120, -3557
  %123 = add i64 %120, 25
  %124 = load i64, i64* %6, align 8
  %125 = add i64 %124, -8
  %126 = inttoptr i64 %125 to i64*
  store i64 %123, i64* %126, align 8
  store i64 %125, i64* %6, align 8
  store i64 %122, i64* %3, align 8
  %127 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %2)
  %EAX.i1995 = bitcast %union.anon* %40 to i32*
  %128 = load i64, i64* %RBP.i, align 8
  %129 = add i64 %128, -3460
  %130 = load i32, i32* %EAX.i1995, align 4
  %131 = load i64, i64* %3, align 8
  %132 = add i64 %131, 6
  store i64 %132, i64* %3, align 8
  %133 = inttoptr i64 %129 to i32*
  store i32 %130, i32* %133, align 4
  %.pre = load i64, i64* %RBP.i, align 8
  %.pre159 = load i64, i64* %3, align 8
  br label %block_.L_401734

block_.L_401734:                                  ; preds = %entry.block_.L_401734_crit_edge, %block_401715
  %EAX.i1973.pre-phi = phi i32* [ %.pre209, %entry.block_.L_401734_crit_edge ], [ %EAX.i1995, %block_401715 ]
  %134 = phi i64 [ %120, %entry.block_.L_401734_crit_edge ], [ %.pre159, %block_401715 ]
  %135 = phi i64 [ %91, %entry.block_.L_401734_crit_edge ], [ %.pre, %block_401715 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry.block_.L_401734_crit_edge ], [ %127, %block_401715 ]
  %136 = add i64 %135, -52
  %137 = add i64 %134, 7
  store i64 %137, i64* %3, align 8
  %138 = inttoptr i64 %136 to i32*
  store i32 65536, i32* %138, align 4
  %.pre160 = load i64, i64* %3, align 8
  br label %block_.L_40173b

block_.L_40173b:                                  ; preds = %block_401745, %block_.L_401734
  %139 = phi i64 [ %199, %block_401745 ], [ %.pre160, %block_.L_401734 ]
  %140 = load i64, i64* %RBP.i, align 8
  %141 = add i64 %140, -52
  %142 = add i64 %139, 4
  store i64 %142, i64* %3, align 8
  %143 = inttoptr i64 %141 to i32*
  %144 = load i32, i32* %143, align 4
  store i8 0, i8* %14, align 1
  %145 = and i32 %144, 255
  %146 = tail call i32 @llvm.ctpop.i32(i32 %145)
  %147 = trunc i32 %146 to i8
  %148 = and i8 %147, 1
  %149 = xor i8 %148, 1
  store i8 %149, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %150 = icmp eq i32 %144, 0
  %151 = zext i1 %150 to i8
  store i8 %151, i8* %30, align 1
  %152 = lshr i32 %144, 31
  %153 = trunc i32 %152 to i8
  store i8 %153, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %154 = icmp ne i8 %153, 0
  %.v68 = select i1 %154, i64 35, i64 6
  %155 = add i64 %142, %.v68
  store i64 %155, i64* %3, align 8
  br i1 %154, label %block_.L_401762, label %block_401745

block_401745:                                     ; preds = %block_.L_40173b
  %156 = add i64 %140, -32
  %157 = add i64 %155, 4
  store i64 %157, i64* %3, align 8
  %158 = inttoptr i64 %156 to i64*
  %159 = load i64, i64* %158, align 8
  store i64 %159, i64* %RAX.i1036, align 8
  %160 = add i64 %155, 8
  store i64 %160, i64* %3, align 8
  %161 = load i32, i32* %143, align 4
  %162 = sext i32 %161 to i64
  store i64 %162, i64* %RCX.i2020, align 8
  %163 = shl nsw i64 %162, 2
  %164 = add i64 %163, %159
  %165 = add i64 %155, 15
  store i64 %165, i64* %3, align 8
  %166 = inttoptr i64 %164 to i32*
  store i32 0, i32* %166, align 4
  %167 = load i64, i64* %RBP.i, align 8
  %168 = add i64 %167, -52
  %169 = load i64, i64* %3, align 8
  %170 = add i64 %169, 3
  store i64 %170, i64* %3, align 8
  %171 = inttoptr i64 %168 to i32*
  %172 = load i32, i32* %171, align 4
  %173 = add i32 %172, -1
  %174 = zext i32 %173 to i64
  store i64 %174, i64* %RAX.i1036, align 8
  %175 = icmp ne i32 %172, 0
  %176 = zext i1 %175 to i8
  store i8 %176, i8* %14, align 1
  %177 = and i32 %173, 255
  %178 = tail call i32 @llvm.ctpop.i32(i32 %177)
  %179 = trunc i32 %178 to i8
  %180 = and i8 %179, 1
  %181 = xor i8 %180, 1
  store i8 %181, i8* %21, align 1
  %182 = xor i32 %172, 16
  %183 = xor i32 %182, %173
  %184 = lshr i32 %183, 4
  %185 = trunc i32 %184 to i8
  %186 = and i8 %185, 1
  store i8 %186, i8* %27, align 1
  %187 = icmp eq i32 %173, 0
  %188 = zext i1 %187 to i8
  store i8 %188, i8* %30, align 1
  %189 = lshr i32 %173, 31
  %190 = trunc i32 %189 to i8
  store i8 %190, i8* %33, align 1
  %191 = lshr i32 %172, 31
  %192 = xor i32 %189, %191
  %193 = xor i32 %189, 1
  %194 = add nuw nsw i32 %192, %193
  %195 = icmp eq i32 %194, 2
  %196 = zext i1 %195 to i8
  store i8 %196, i8* %39, align 1
  %197 = add i64 %169, 9
  store i64 %197, i64* %3, align 8
  store i32 %173, i32* %171, align 4
  %198 = load i64, i64* %3, align 8
  %199 = add i64 %198, -34
  store i64 %199, i64* %3, align 8
  br label %block_.L_40173b

block_.L_401762:                                  ; preds = %block_.L_40173b
  %200 = add i64 %140, -16
  %201 = add i64 %155, 4
  store i64 %201, i64* %3, align 8
  %202 = inttoptr i64 %200 to i64*
  %203 = load i64, i64* %202, align 8
  store i64 %203, i64* %RAX.i1036, align 8
  %204 = add i64 %155, 7
  store i64 %204, i64* %3, align 8
  %205 = inttoptr i64 %203 to i8*
  %206 = load i8, i8* %205, align 1
  %207 = zext i8 %206 to i64
  %208 = shl nuw nsw i64 %207, 8
  store i64 %208, i64* %RCX.i2020, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %209 = icmp eq i8 %206, 0
  %210 = zext i1 %209 to i8
  store i8 %210, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %ECX.i1961 = bitcast %union.anon* %64 to i32*
  %211 = add i64 %140, -56
  %212 = trunc i64 %208 to i32
  %213 = add i64 %155, 13
  store i64 %213, i64* %3, align 8
  %214 = inttoptr i64 %211 to i32*
  store i32 %212, i32* %214, align 4
  %215 = load i64, i64* %RBP.i, align 8
  %216 = add i64 %215, -36
  %217 = load i64, i64* %3, align 8
  %218 = add i64 %217, 3
  store i64 %218, i64* %3, align 8
  %219 = inttoptr i64 %216 to i32*
  %220 = load i32, i32* %219, align 4
  %221 = add i32 %220, -1
  %222 = zext i32 %221 to i64
  store i64 %222, i64* %RCX.i2020, align 8
  %223 = icmp eq i32 %220, 0
  %224 = zext i1 %223 to i8
  store i8 %224, i8* %14, align 1
  %225 = and i32 %221, 255
  %226 = tail call i32 @llvm.ctpop.i32(i32 %225)
  %227 = trunc i32 %226 to i8
  %228 = and i8 %227, 1
  %229 = xor i8 %228, 1
  store i8 %229, i8* %21, align 1
  %230 = xor i32 %221, %220
  %231 = lshr i32 %230, 4
  %232 = trunc i32 %231 to i8
  %233 = and i8 %232, 1
  store i8 %233, i8* %27, align 1
  %234 = icmp eq i32 %221, 0
  %235 = zext i1 %234 to i8
  store i8 %235, i8* %30, align 1
  %236 = lshr i32 %221, 31
  %237 = trunc i32 %236 to i8
  store i8 %237, i8* %33, align 1
  %238 = lshr i32 %220, 31
  %239 = xor i32 %236, %238
  %240 = add nuw nsw i32 %239, %238
  %241 = icmp eq i32 %240, 2
  %242 = zext i1 %241 to i8
  store i8 %242, i8* %39, align 1
  %243 = add i64 %215, -52
  %244 = add i64 %217, 9
  store i64 %244, i64* %3, align 8
  %245 = inttoptr i64 %243 to i32*
  store i32 %221, i32* %245, align 4
  %ESI.i1921 = bitcast %union.anon* %50 to i32*
  %EDX.i1918 = bitcast %union.anon* %57 to i32*
  %DIL.i1752 = bitcast %union.anon* %45 to i8*
  %R8W.i1748 = bitcast %union.anon* %71 to i16*
  %.pre161 = load i64, i64* %3, align 8
  br label %block_.L_401778

block_.L_401778:                                  ; preds = %block_401782, %block_.L_401762
  %246 = phi i64 [ %863, %block_401782 ], [ %.pre161, %block_.L_401762 ]
  %247 = load i64, i64* %RBP.i, align 8
  %248 = add i64 %247, -52
  %249 = add i64 %246, 4
  store i64 %249, i64* %3, align 8
  %250 = inttoptr i64 %248 to i32*
  %251 = load i32, i32* %250, align 4
  %252 = add i32 %251, -3
  %253 = icmp ult i32 %251, 3
  %254 = zext i1 %253 to i8
  store i8 %254, i8* %14, align 1
  %255 = and i32 %252, 255
  %256 = tail call i32 @llvm.ctpop.i32(i32 %255)
  %257 = trunc i32 %256 to i8
  %258 = and i8 %257, 1
  %259 = xor i8 %258, 1
  store i8 %259, i8* %21, align 1
  %260 = xor i32 %252, %251
  %261 = lshr i32 %260, 4
  %262 = trunc i32 %261 to i8
  %263 = and i8 %262, 1
  store i8 %263, i8* %27, align 1
  %264 = icmp eq i32 %252, 0
  %265 = zext i1 %264 to i8
  store i8 %265, i8* %30, align 1
  %266 = lshr i32 %252, 31
  %267 = trunc i32 %266 to i8
  store i8 %267, i8* %33, align 1
  %268 = lshr i32 %251, 31
  %269 = xor i32 %266, %268
  %270 = add nuw nsw i32 %269, %268
  %271 = icmp eq i32 %270, 2
  %272 = zext i1 %271 to i8
  store i8 %272, i8* %39, align 1
  %273 = icmp ne i8 %267, 0
  %274 = xor i1 %273, %271
  %.v221 = select i1 %274, i64 289, i64 10
  %275 = add i64 %246, %.v221
  store i64 %275, i64* %3, align 8
  br i1 %274, label %block_.L_401899, label %block_401782

block_401782:                                     ; preds = %block_.L_401778
  %276 = add i64 %247, -24
  %277 = add i64 %275, 4
  store i64 %277, i64* %3, align 8
  %278 = inttoptr i64 %276 to i64*
  %279 = load i64, i64* %278, align 8
  store i64 %279, i64* %RAX.i1036, align 8
  %280 = add i64 %275, 8
  store i64 %280, i64* %3, align 8
  %281 = load i32, i32* %250, align 4
  %282 = sext i32 %281 to i64
  store i64 %282, i64* %RCX.i2020, align 8
  %283 = shl nsw i64 %282, 1
  %284 = add i64 %283, %279
  %285 = add i64 %275, 14
  store i64 %285, i64* %3, align 8
  %286 = inttoptr i64 %284 to i16*
  store i16 0, i16* %286, align 2
  %287 = load i64, i64* %RBP.i, align 8
  %288 = add i64 %287, -56
  %289 = load i64, i64* %3, align 8
  %290 = add i64 %289, 3
  store i64 %290, i64* %3, align 8
  %291 = inttoptr i64 %288 to i32*
  %292 = load i32, i32* %291, align 4
  %293 = sext i32 %292 to i64
  %294 = ashr i64 %293, 7
  %295 = lshr i64 %294, 1
  %296 = trunc i64 %294 to i8
  %297 = and i8 %296, 1
  %298 = trunc i64 %295 to i32
  %299 = and i64 %295, 4294967295
  store i64 %299, i64* %RDX.i2023, align 8
  store i8 %297, i8* %14, align 1
  %300 = and i32 %298, 255
  %301 = tail call i32 @llvm.ctpop.i32(i32 %300)
  %302 = trunc i32 %301 to i8
  %303 = and i8 %302, 1
  %304 = xor i8 %303, 1
  store i8 %304, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %305 = icmp eq i32 %298, 0
  %306 = zext i1 %305 to i8
  store i8 %306, i8* %30, align 1
  %307 = lshr i64 %294, 32
  %308 = trunc i64 %307 to i8
  %309 = and i8 %308, 1
  store i8 %309, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %310 = add i64 %287, -16
  %311 = add i64 %289, 10
  store i64 %311, i64* %3, align 8
  %312 = inttoptr i64 %310 to i64*
  %313 = load i64, i64* %312, align 8
  store i64 %313, i64* %RAX.i1036, align 8
  %314 = add i64 %287, -52
  %315 = add i64 %289, 14
  store i64 %315, i64* %3, align 8
  %316 = inttoptr i64 %314 to i32*
  %317 = load i32, i32* %316, align 4
  %318 = sext i32 %317 to i64
  store i64 %318, i64* %RCX.i2020, align 8
  %319 = add i64 %313, %318
  %320 = add i64 %289, 18
  store i64 %320, i64* %3, align 8
  %321 = inttoptr i64 %319 to i8*
  %322 = load i8, i8* %321, align 1
  %323 = zext i8 %322 to i64
  %324 = shl nuw nsw i64 %323, 8
  store i64 %324, i64* %RSI.i1998, align 8
  %325 = or i64 %324, %299
  %326 = trunc i64 %325 to i32
  store i64 %325, i64* %RDX.i2023, align 8
  store i8 0, i8* %14, align 1
  %327 = and i32 %326, 255
  %328 = tail call i32 @llvm.ctpop.i32(i32 %327)
  %329 = trunc i32 %328 to i8
  %330 = and i8 %329, 1
  %331 = xor i8 %330, 1
  store i8 %331, i8* %21, align 1
  %332 = icmp eq i32 %326, 0
  %333 = zext i1 %332 to i8
  store i8 %333, i8* %30, align 1
  %334 = lshr i32 %326, 31
  %335 = trunc i32 %334 to i8
  store i8 %335, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %336 = trunc i64 %325 to i32
  %337 = add i64 %289, 26
  store i64 %337, i64* %3, align 8
  store i32 %336, i32* %291, align 4
  %338 = load i64, i64* %RBP.i, align 8
  %339 = add i64 %338, -32
  %340 = load i64, i64* %3, align 8
  %341 = add i64 %340, 4
  store i64 %341, i64* %3, align 8
  %342 = inttoptr i64 %339 to i64*
  %343 = load i64, i64* %342, align 8
  store i64 %343, i64* %RAX.i1036, align 8
  %344 = add i64 %338, -56
  %345 = add i64 %340, 8
  store i64 %345, i64* %3, align 8
  %346 = inttoptr i64 %344 to i32*
  %347 = load i32, i32* %346, align 4
  %348 = sext i32 %347 to i64
  store i64 %348, i64* %RCX.i2020, align 8
  %349 = shl nsw i64 %348, 2
  %350 = add i64 %349, %343
  %351 = add i64 %340, 11
  store i64 %351, i64* %3, align 8
  %352 = inttoptr i64 %350 to i32*
  %353 = load i32, i32* %352, align 4
  %354 = add i32 %353, 1
  %355 = zext i32 %354 to i64
  store i64 %355, i64* %RDX.i2023, align 8
  %356 = and i32 %354, 255
  %357 = tail call i32 @llvm.ctpop.i32(i32 %356)
  %358 = trunc i32 %357 to i8
  %359 = and i8 %358, 1
  %360 = xor i8 %359, 1
  store i8 %360, i8* %21, align 1
  %361 = xor i32 %354, %353
  %362 = lshr i32 %361, 4
  %363 = trunc i32 %362 to i8
  %364 = and i8 %363, 1
  store i8 %364, i8* %27, align 1
  %365 = icmp eq i32 %354, 0
  %366 = zext i1 %365 to i8
  store i8 %366, i8* %30, align 1
  %367 = lshr i32 %354, 31
  %368 = trunc i32 %367 to i8
  store i8 %368, i8* %33, align 1
  %369 = lshr i32 %353, 31
  %370 = xor i32 %367, %369
  %371 = add nuw nsw i32 %370, %367
  %372 = icmp eq i32 %371, 2
  %373 = zext i1 %372 to i8
  store i8 %373, i8* %39, align 1
  %374 = add i64 %340, 16
  store i64 %374, i64* %3, align 8
  store i32 %354, i32* %352, align 4
  %375 = load i64, i64* %RBP.i, align 8
  %376 = add i64 %375, -24
  %377 = load i64, i64* %3, align 8
  %378 = add i64 %377, 4
  store i64 %378, i64* %3, align 8
  %379 = inttoptr i64 %376 to i64*
  %380 = load i64, i64* %379, align 8
  store i64 %380, i64* %RAX.i1036, align 8
  %381 = add i64 %375, -52
  %382 = add i64 %377, 7
  store i64 %382, i64* %3, align 8
  %383 = inttoptr i64 %381 to i32*
  %384 = load i32, i32* %383, align 4
  %385 = add i32 %384, -1
  %386 = zext i32 %385 to i64
  store i64 %386, i64* %RDX.i2023, align 8
  %387 = and i32 %385, 255
  %388 = tail call i32 @llvm.ctpop.i32(i32 %387)
  %389 = trunc i32 %388 to i8
  %390 = and i8 %389, 1
  %391 = xor i8 %390, 1
  store i8 %391, i8* %21, align 1
  %392 = xor i32 %385, %384
  %393 = lshr i32 %392, 4
  %394 = trunc i32 %393 to i8
  %395 = and i8 %394, 1
  store i8 %395, i8* %27, align 1
  %396 = icmp eq i32 %385, 0
  %397 = zext i1 %396 to i8
  store i8 %397, i8* %30, align 1
  %398 = lshr i32 %385, 31
  %399 = trunc i32 %398 to i8
  store i8 %399, i8* %33, align 1
  %400 = lshr i32 %384, 31
  %401 = xor i32 %398, %400
  %402 = add nuw nsw i32 %401, %400
  %403 = icmp eq i32 %402, 2
  %404 = zext i1 %403 to i8
  store i8 %404, i8* %39, align 1
  %405 = sext i32 %385 to i64
  store i64 %405, i64* %RCX.i2020, align 8
  %406 = shl nsw i64 %405, 1
  %407 = add i64 %380, %406
  %408 = add i64 %377, 18
  store i64 %408, i64* %3, align 8
  %409 = inttoptr i64 %407 to i16*
  store i16 0, i16* %409, align 2
  %410 = load i64, i64* %RBP.i, align 8
  %411 = add i64 %410, -56
  %412 = load i64, i64* %3, align 8
  %413 = add i64 %412, 3
  store i64 %413, i64* %3, align 8
  %414 = inttoptr i64 %411 to i32*
  %415 = load i32, i32* %414, align 4
  %416 = sext i32 %415 to i64
  %417 = ashr i64 %416, 7
  %418 = lshr i64 %417, 1
  %419 = trunc i64 %417 to i8
  %420 = and i8 %419, 1
  %421 = trunc i64 %418 to i32
  %422 = and i64 %418, 4294967295
  store i64 %422, i64* %RDX.i2023, align 8
  store i8 %420, i8* %14, align 1
  %423 = and i32 %421, 255
  %424 = tail call i32 @llvm.ctpop.i32(i32 %423)
  %425 = trunc i32 %424 to i8
  %426 = and i8 %425, 1
  %427 = xor i8 %426, 1
  store i8 %427, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %428 = icmp eq i32 %421, 0
  %429 = zext i1 %428 to i8
  store i8 %429, i8* %30, align 1
  %430 = lshr i64 %417, 32
  %431 = trunc i64 %430 to i8
  %432 = and i8 %431, 1
  store i8 %432, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %433 = add i64 %410, -16
  %434 = add i64 %412, 10
  store i64 %434, i64* %3, align 8
  %435 = inttoptr i64 %433 to i64*
  %436 = load i64, i64* %435, align 8
  store i64 %436, i64* %RAX.i1036, align 8
  %437 = add i64 %410, -52
  %438 = add i64 %412, 13
  store i64 %438, i64* %3, align 8
  %439 = inttoptr i64 %437 to i32*
  %440 = load i32, i32* %439, align 4
  %441 = add i32 %440, -1
  %442 = zext i32 %441 to i64
  store i64 %442, i64* %RSI.i1998, align 8
  %443 = and i32 %441, 255
  %444 = tail call i32 @llvm.ctpop.i32(i32 %443)
  %445 = trunc i32 %444 to i8
  %446 = and i8 %445, 1
  %447 = xor i8 %446, 1
  store i8 %447, i8* %21, align 1
  %448 = xor i32 %441, %440
  %449 = lshr i32 %448, 4
  %450 = trunc i32 %449 to i8
  %451 = and i8 %450, 1
  store i8 %451, i8* %27, align 1
  %452 = icmp eq i32 %441, 0
  %453 = zext i1 %452 to i8
  store i8 %453, i8* %30, align 1
  %454 = lshr i32 %441, 31
  %455 = trunc i32 %454 to i8
  store i8 %455, i8* %33, align 1
  %456 = lshr i32 %440, 31
  %457 = xor i32 %454, %456
  %458 = add nuw nsw i32 %457, %456
  %459 = icmp eq i32 %458, 2
  %460 = zext i1 %459 to i8
  store i8 %460, i8* %39, align 1
  %461 = sext i32 %441 to i64
  store i64 %461, i64* %RCX.i2020, align 8
  %462 = add i64 %436, %461
  %463 = add i64 %412, 22
  store i64 %463, i64* %3, align 8
  %464 = inttoptr i64 %462 to i8*
  %465 = load i8, i8* %464, align 1
  %466 = zext i8 %465 to i64
  %467 = shl nuw nsw i64 %466, 8
  store i64 %467, i64* %RSI.i1998, align 8
  %468 = or i64 %467, %422
  %469 = trunc i64 %468 to i32
  store i64 %468, i64* %RDX.i2023, align 8
  store i8 0, i8* %14, align 1
  %470 = and i32 %469, 255
  %471 = tail call i32 @llvm.ctpop.i32(i32 %470)
  %472 = trunc i32 %471 to i8
  %473 = and i8 %472, 1
  %474 = xor i8 %473, 1
  store i8 %474, i8* %21, align 1
  %475 = icmp eq i32 %469, 0
  %476 = zext i1 %475 to i8
  store i8 %476, i8* %30, align 1
  %477 = lshr i32 %469, 31
  %478 = trunc i32 %477 to i8
  store i8 %478, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %479 = load i64, i64* %RBP.i, align 8
  %480 = add i64 %479, -56
  %481 = trunc i64 %468 to i32
  %482 = add i64 %412, 30
  store i64 %482, i64* %3, align 8
  %483 = inttoptr i64 %480 to i32*
  store i32 %481, i32* %483, align 4
  %484 = load i64, i64* %RBP.i, align 8
  %485 = add i64 %484, -32
  %486 = load i64, i64* %3, align 8
  %487 = add i64 %486, 4
  store i64 %487, i64* %3, align 8
  %488 = inttoptr i64 %485 to i64*
  %489 = load i64, i64* %488, align 8
  store i64 %489, i64* %RAX.i1036, align 8
  %490 = add i64 %484, -56
  %491 = add i64 %486, 8
  store i64 %491, i64* %3, align 8
  %492 = inttoptr i64 %490 to i32*
  %493 = load i32, i32* %492, align 4
  %494 = sext i32 %493 to i64
  store i64 %494, i64* %RCX.i2020, align 8
  %495 = shl nsw i64 %494, 2
  %496 = add i64 %495, %489
  %497 = add i64 %486, 11
  store i64 %497, i64* %3, align 8
  %498 = inttoptr i64 %496 to i32*
  %499 = load i32, i32* %498, align 4
  %500 = add i32 %499, 1
  %501 = zext i32 %500 to i64
  store i64 %501, i64* %RDX.i2023, align 8
  %502 = and i32 %500, 255
  %503 = tail call i32 @llvm.ctpop.i32(i32 %502)
  %504 = trunc i32 %503 to i8
  %505 = and i8 %504, 1
  %506 = xor i8 %505, 1
  store i8 %506, i8* %21, align 1
  %507 = xor i32 %500, %499
  %508 = lshr i32 %507, 4
  %509 = trunc i32 %508 to i8
  %510 = and i8 %509, 1
  store i8 %510, i8* %27, align 1
  %511 = icmp eq i32 %500, 0
  %512 = zext i1 %511 to i8
  store i8 %512, i8* %30, align 1
  %513 = lshr i32 %500, 31
  %514 = trunc i32 %513 to i8
  store i8 %514, i8* %33, align 1
  %515 = lshr i32 %499, 31
  %516 = xor i32 %513, %515
  %517 = add nuw nsw i32 %516, %513
  %518 = icmp eq i32 %517, 2
  %519 = zext i1 %518 to i8
  store i8 %519, i8* %39, align 1
  %520 = add i64 %486, 16
  store i64 %520, i64* %3, align 8
  store i32 %500, i32* %498, align 4
  %521 = load i64, i64* %RBP.i, align 8
  %522 = add i64 %521, -24
  %523 = load i64, i64* %3, align 8
  %524 = add i64 %523, 4
  store i64 %524, i64* %3, align 8
  %525 = inttoptr i64 %522 to i64*
  %526 = load i64, i64* %525, align 8
  store i64 %526, i64* %RAX.i1036, align 8
  %527 = add i64 %521, -52
  %528 = add i64 %523, 7
  store i64 %528, i64* %3, align 8
  %529 = inttoptr i64 %527 to i32*
  %530 = load i32, i32* %529, align 4
  %531 = add i32 %530, -2
  %532 = zext i32 %531 to i64
  store i64 %532, i64* %RDX.i2023, align 8
  %533 = icmp ugt i32 %530, 1
  %534 = zext i1 %533 to i8
  store i8 %534, i8* %14, align 1
  %535 = and i32 %531, 255
  %536 = tail call i32 @llvm.ctpop.i32(i32 %535)
  %537 = trunc i32 %536 to i8
  %538 = and i8 %537, 1
  %539 = xor i8 %538, 1
  store i8 %539, i8* %21, align 1
  %540 = xor i32 %530, 16
  %541 = xor i32 %540, %531
  %542 = lshr i32 %541, 4
  %543 = trunc i32 %542 to i8
  %544 = and i8 %543, 1
  store i8 %544, i8* %27, align 1
  %545 = icmp eq i32 %531, 0
  %546 = zext i1 %545 to i8
  store i8 %546, i8* %30, align 1
  %547 = lshr i32 %531, 31
  %548 = trunc i32 %547 to i8
  store i8 %548, i8* %33, align 1
  %549 = lshr i32 %530, 31
  %550 = xor i32 %547, %549
  %551 = xor i32 %547, 1
  %552 = add nuw nsw i32 %550, %551
  %553 = icmp eq i32 %552, 2
  %554 = zext i1 %553 to i8
  store i8 %554, i8* %39, align 1
  %555 = sext i32 %531 to i64
  store i64 %555, i64* %RCX.i2020, align 8
  %556 = shl nsw i64 %555, 1
  %557 = add i64 %526, %556
  %558 = add i64 %523, 19
  store i64 %558, i64* %3, align 8
  %559 = inttoptr i64 %557 to i16*
  store i16 0, i16* %559, align 2
  %560 = load i64, i64* %RBP.i, align 8
  %561 = add i64 %560, -56
  %562 = load i64, i64* %3, align 8
  %563 = add i64 %562, 3
  store i64 %563, i64* %3, align 8
  %564 = inttoptr i64 %561 to i32*
  %565 = load i32, i32* %564, align 4
  %566 = sext i32 %565 to i64
  %567 = ashr i64 %566, 7
  %568 = lshr i64 %567, 1
  %569 = trunc i64 %567 to i8
  %570 = and i8 %569, 1
  %571 = trunc i64 %568 to i32
  %572 = and i64 %568, 4294967295
  store i64 %572, i64* %RDX.i2023, align 8
  store i8 %570, i8* %14, align 1
  %573 = and i32 %571, 255
  %574 = tail call i32 @llvm.ctpop.i32(i32 %573)
  %575 = trunc i32 %574 to i8
  %576 = and i8 %575, 1
  %577 = xor i8 %576, 1
  store i8 %577, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %578 = icmp eq i32 %571, 0
  %579 = zext i1 %578 to i8
  store i8 %579, i8* %30, align 1
  %580 = lshr i64 %567, 32
  %581 = trunc i64 %580 to i8
  %582 = and i8 %581, 1
  store i8 %582, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %583 = add i64 %560, -16
  %584 = add i64 %562, 10
  store i64 %584, i64* %3, align 8
  %585 = inttoptr i64 %583 to i64*
  %586 = load i64, i64* %585, align 8
  store i64 %586, i64* %RAX.i1036, align 8
  %587 = add i64 %560, -52
  %588 = add i64 %562, 13
  store i64 %588, i64* %3, align 8
  %589 = inttoptr i64 %587 to i32*
  %590 = load i32, i32* %589, align 4
  %591 = add i32 %590, -2
  %592 = zext i32 %591 to i64
  store i64 %592, i64* %RSI.i1998, align 8
  %593 = icmp ugt i32 %590, 1
  %594 = zext i1 %593 to i8
  store i8 %594, i8* %14, align 1
  %595 = and i32 %591, 255
  %596 = tail call i32 @llvm.ctpop.i32(i32 %595)
  %597 = trunc i32 %596 to i8
  %598 = and i8 %597, 1
  %599 = xor i8 %598, 1
  store i8 %599, i8* %21, align 1
  %600 = xor i32 %590, 16
  %601 = xor i32 %600, %591
  %602 = lshr i32 %601, 4
  %603 = trunc i32 %602 to i8
  %604 = and i8 %603, 1
  store i8 %604, i8* %27, align 1
  %605 = icmp eq i32 %591, 0
  %606 = zext i1 %605 to i8
  store i8 %606, i8* %30, align 1
  %607 = lshr i32 %591, 31
  %608 = trunc i32 %607 to i8
  store i8 %608, i8* %33, align 1
  %609 = lshr i32 %590, 31
  %610 = xor i32 %607, %609
  %611 = xor i32 %607, 1
  %612 = add nuw nsw i32 %610, %611
  %613 = icmp eq i32 %612, 2
  %614 = zext i1 %613 to i8
  store i8 %614, i8* %39, align 1
  %615 = sext i32 %591 to i64
  store i64 %615, i64* %RCX.i2020, align 8
  %616 = add i64 %586, %615
  %617 = add i64 %562, 23
  store i64 %617, i64* %3, align 8
  %618 = inttoptr i64 %616 to i8*
  %619 = load i8, i8* %618, align 1
  %620 = zext i8 %619 to i64
  %621 = shl nuw nsw i64 %620, 8
  store i64 %621, i64* %RSI.i1998, align 8
  %622 = or i64 %621, %572
  %623 = trunc i64 %622 to i32
  store i64 %622, i64* %RDX.i2023, align 8
  store i8 0, i8* %14, align 1
  %624 = and i32 %623, 255
  %625 = tail call i32 @llvm.ctpop.i32(i32 %624)
  %626 = trunc i32 %625 to i8
  %627 = and i8 %626, 1
  %628 = xor i8 %627, 1
  store i8 %628, i8* %21, align 1
  %629 = icmp eq i32 %623, 0
  %630 = zext i1 %629 to i8
  store i8 %630, i8* %30, align 1
  %631 = lshr i32 %623, 31
  %632 = trunc i32 %631 to i8
  store i8 %632, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %633 = load i64, i64* %RBP.i, align 8
  %634 = add i64 %633, -56
  %635 = trunc i64 %622 to i32
  %636 = add i64 %562, 31
  store i64 %636, i64* %3, align 8
  %637 = inttoptr i64 %634 to i32*
  store i32 %635, i32* %637, align 4
  %638 = load i64, i64* %RBP.i, align 8
  %639 = add i64 %638, -32
  %640 = load i64, i64* %3, align 8
  %641 = add i64 %640, 4
  store i64 %641, i64* %3, align 8
  %642 = inttoptr i64 %639 to i64*
  %643 = load i64, i64* %642, align 8
  store i64 %643, i64* %RAX.i1036, align 8
  %644 = add i64 %638, -56
  %645 = add i64 %640, 8
  store i64 %645, i64* %3, align 8
  %646 = inttoptr i64 %644 to i32*
  %647 = load i32, i32* %646, align 4
  %648 = sext i32 %647 to i64
  store i64 %648, i64* %RCX.i2020, align 8
  %649 = shl nsw i64 %648, 2
  %650 = add i64 %649, %643
  %651 = add i64 %640, 11
  store i64 %651, i64* %3, align 8
  %652 = inttoptr i64 %650 to i32*
  %653 = load i32, i32* %652, align 4
  %654 = add i32 %653, 1
  %655 = zext i32 %654 to i64
  store i64 %655, i64* %RDX.i2023, align 8
  %656 = and i32 %654, 255
  %657 = tail call i32 @llvm.ctpop.i32(i32 %656)
  %658 = trunc i32 %657 to i8
  %659 = and i8 %658, 1
  %660 = xor i8 %659, 1
  store i8 %660, i8* %21, align 1
  %661 = xor i32 %654, %653
  %662 = lshr i32 %661, 4
  %663 = trunc i32 %662 to i8
  %664 = and i8 %663, 1
  store i8 %664, i8* %27, align 1
  %665 = icmp eq i32 %654, 0
  %666 = zext i1 %665 to i8
  store i8 %666, i8* %30, align 1
  %667 = lshr i32 %654, 31
  %668 = trunc i32 %667 to i8
  store i8 %668, i8* %33, align 1
  %669 = lshr i32 %653, 31
  %670 = xor i32 %667, %669
  %671 = add nuw nsw i32 %670, %667
  %672 = icmp eq i32 %671, 2
  %673 = zext i1 %672 to i8
  store i8 %673, i8* %39, align 1
  %674 = add i64 %640, 16
  store i64 %674, i64* %3, align 8
  store i32 %654, i32* %652, align 4
  %675 = load i64, i64* %RBP.i, align 8
  %676 = add i64 %675, -24
  %677 = load i64, i64* %3, align 8
  %678 = add i64 %677, 4
  store i64 %678, i64* %3, align 8
  %679 = inttoptr i64 %676 to i64*
  %680 = load i64, i64* %679, align 8
  store i64 %680, i64* %RAX.i1036, align 8
  %681 = add i64 %675, -52
  %682 = add i64 %677, 7
  store i64 %682, i64* %3, align 8
  %683 = inttoptr i64 %681 to i32*
  %684 = load i32, i32* %683, align 4
  %685 = add i32 %684, -3
  %686 = zext i32 %685 to i64
  store i64 %686, i64* %RDX.i2023, align 8
  %687 = icmp ugt i32 %684, 2
  %688 = zext i1 %687 to i8
  store i8 %688, i8* %14, align 1
  %689 = and i32 %685, 255
  %690 = tail call i32 @llvm.ctpop.i32(i32 %689)
  %691 = trunc i32 %690 to i8
  %692 = and i8 %691, 1
  %693 = xor i8 %692, 1
  store i8 %693, i8* %21, align 1
  %694 = xor i32 %684, 16
  %695 = xor i32 %694, %685
  %696 = lshr i32 %695, 4
  %697 = trunc i32 %696 to i8
  %698 = and i8 %697, 1
  store i8 %698, i8* %27, align 1
  %699 = icmp eq i32 %685, 0
  %700 = zext i1 %699 to i8
  store i8 %700, i8* %30, align 1
  %701 = lshr i32 %685, 31
  %702 = trunc i32 %701 to i8
  store i8 %702, i8* %33, align 1
  %703 = lshr i32 %684, 31
  %704 = xor i32 %701, %703
  %705 = xor i32 %701, 1
  %706 = add nuw nsw i32 %704, %705
  %707 = icmp eq i32 %706, 2
  %708 = zext i1 %707 to i8
  store i8 %708, i8* %39, align 1
  %709 = sext i32 %685 to i64
  store i64 %709, i64* %RCX.i2020, align 8
  %710 = shl nsw i64 %709, 1
  %711 = add i64 %680, %710
  %712 = add i64 %677, 19
  store i64 %712, i64* %3, align 8
  %713 = inttoptr i64 %711 to i16*
  store i16 0, i16* %713, align 2
  %714 = load i64, i64* %RBP.i, align 8
  %715 = add i64 %714, -56
  %716 = load i64, i64* %3, align 8
  %717 = add i64 %716, 3
  store i64 %717, i64* %3, align 8
  %718 = inttoptr i64 %715 to i32*
  %719 = load i32, i32* %718, align 4
  %720 = sext i32 %719 to i64
  %721 = ashr i64 %720, 7
  %722 = lshr i64 %721, 1
  %723 = trunc i64 %721 to i8
  %724 = and i8 %723, 1
  %725 = trunc i64 %722 to i32
  %726 = and i64 %722, 4294967295
  store i64 %726, i64* %RDX.i2023, align 8
  store i8 %724, i8* %14, align 1
  %727 = and i32 %725, 255
  %728 = tail call i32 @llvm.ctpop.i32(i32 %727)
  %729 = trunc i32 %728 to i8
  %730 = and i8 %729, 1
  %731 = xor i8 %730, 1
  store i8 %731, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %732 = icmp eq i32 %725, 0
  %733 = zext i1 %732 to i8
  store i8 %733, i8* %30, align 1
  %734 = lshr i64 %721, 32
  %735 = trunc i64 %734 to i8
  %736 = and i8 %735, 1
  store i8 %736, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %737 = add i64 %714, -16
  %738 = add i64 %716, 10
  store i64 %738, i64* %3, align 8
  %739 = inttoptr i64 %737 to i64*
  %740 = load i64, i64* %739, align 8
  store i64 %740, i64* %RAX.i1036, align 8
  %741 = add i64 %714, -52
  %742 = add i64 %716, 13
  store i64 %742, i64* %3, align 8
  %743 = inttoptr i64 %741 to i32*
  %744 = load i32, i32* %743, align 4
  %745 = add i32 %744, -3
  %746 = zext i32 %745 to i64
  store i64 %746, i64* %RSI.i1998, align 8
  %747 = icmp ugt i32 %744, 2
  %748 = zext i1 %747 to i8
  store i8 %748, i8* %14, align 1
  %749 = and i32 %745, 255
  %750 = tail call i32 @llvm.ctpop.i32(i32 %749)
  %751 = trunc i32 %750 to i8
  %752 = and i8 %751, 1
  %753 = xor i8 %752, 1
  store i8 %753, i8* %21, align 1
  %754 = xor i32 %744, 16
  %755 = xor i32 %754, %745
  %756 = lshr i32 %755, 4
  %757 = trunc i32 %756 to i8
  %758 = and i8 %757, 1
  store i8 %758, i8* %27, align 1
  %759 = icmp eq i32 %745, 0
  %760 = zext i1 %759 to i8
  store i8 %760, i8* %30, align 1
  %761 = lshr i32 %745, 31
  %762 = trunc i32 %761 to i8
  store i8 %762, i8* %33, align 1
  %763 = lshr i32 %744, 31
  %764 = xor i32 %761, %763
  %765 = xor i32 %761, 1
  %766 = add nuw nsw i32 %764, %765
  %767 = icmp eq i32 %766, 2
  %768 = zext i1 %767 to i8
  store i8 %768, i8* %39, align 1
  %769 = sext i32 %745 to i64
  store i64 %769, i64* %RCX.i2020, align 8
  %770 = add i64 %740, %769
  %771 = add i64 %716, 23
  store i64 %771, i64* %3, align 8
  %772 = inttoptr i64 %770 to i8*
  %773 = load i8, i8* %772, align 1
  store i8 %773, i8* %DIL.i1752, align 1
  %774 = zext i8 %773 to i16
  store i16 %774, i16* %R8W.i1748, align 2
  %775 = zext i8 %773 to i64
  %776 = shl nuw nsw i64 %775, 8
  store i64 %776, i64* %RSI.i1998, align 8
  %777 = or i64 %776, %726
  %778 = trunc i64 %777 to i32
  store i64 %777, i64* %RDX.i2023, align 8
  store i8 0, i8* %14, align 1
  %779 = and i32 %778, 255
  %780 = tail call i32 @llvm.ctpop.i32(i32 %779)
  %781 = trunc i32 %780 to i8
  %782 = and i8 %781, 1
  %783 = xor i8 %782, 1
  store i8 %783, i8* %21, align 1
  %784 = icmp eq i32 %778, 0
  %785 = zext i1 %784 to i8
  store i8 %785, i8* %30, align 1
  %786 = lshr i32 %778, 31
  %787 = trunc i32 %786 to i8
  store i8 %787, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %788 = load i64, i64* %RBP.i, align 8
  %789 = add i64 %788, -56
  %790 = trunc i64 %777 to i32
  %791 = add i64 %716, 43
  store i64 %791, i64* %3, align 8
  %792 = inttoptr i64 %789 to i32*
  store i32 %790, i32* %792, align 4
  %793 = load i64, i64* %RBP.i, align 8
  %794 = add i64 %793, -32
  %795 = load i64, i64* %3, align 8
  %796 = add i64 %795, 4
  store i64 %796, i64* %3, align 8
  %797 = inttoptr i64 %794 to i64*
  %798 = load i64, i64* %797, align 8
  store i64 %798, i64* %RAX.i1036, align 8
  %799 = add i64 %793, -56
  %800 = add i64 %795, 8
  store i64 %800, i64* %3, align 8
  %801 = inttoptr i64 %799 to i32*
  %802 = load i32, i32* %801, align 4
  %803 = sext i32 %802 to i64
  store i64 %803, i64* %RCX.i2020, align 8
  %804 = shl nsw i64 %803, 2
  %805 = add i64 %804, %798
  %806 = add i64 %795, 11
  store i64 %806, i64* %3, align 8
  %807 = inttoptr i64 %805 to i32*
  %808 = load i32, i32* %807, align 4
  %809 = add i32 %808, 1
  %810 = zext i32 %809 to i64
  store i64 %810, i64* %RDX.i2023, align 8
  %811 = icmp eq i32 %808, -1
  %812 = icmp eq i32 %809, 0
  %813 = or i1 %811, %812
  %814 = zext i1 %813 to i8
  store i8 %814, i8* %14, align 1
  %815 = and i32 %809, 255
  %816 = tail call i32 @llvm.ctpop.i32(i32 %815)
  %817 = trunc i32 %816 to i8
  %818 = and i8 %817, 1
  %819 = xor i8 %818, 1
  store i8 %819, i8* %21, align 1
  %820 = xor i32 %809, %808
  %821 = lshr i32 %820, 4
  %822 = trunc i32 %821 to i8
  %823 = and i8 %822, 1
  store i8 %823, i8* %27, align 1
  %824 = zext i1 %812 to i8
  store i8 %824, i8* %30, align 1
  %825 = lshr i32 %809, 31
  %826 = trunc i32 %825 to i8
  store i8 %826, i8* %33, align 1
  %827 = lshr i32 %808, 31
  %828 = xor i32 %825, %827
  %829 = add nuw nsw i32 %828, %825
  %830 = icmp eq i32 %829, 2
  %831 = zext i1 %830 to i8
  store i8 %831, i8* %39, align 1
  %832 = add i64 %795, 17
  store i64 %832, i64* %3, align 8
  store i32 %809, i32* %807, align 4
  %833 = load i64, i64* %RBP.i, align 8
  %834 = add i64 %833, -52
  %835 = load i64, i64* %3, align 8
  %836 = add i64 %835, 3
  store i64 %836, i64* %3, align 8
  %837 = inttoptr i64 %834 to i32*
  %838 = load i32, i32* %837, align 4
  %839 = add i32 %838, -4
  %840 = zext i32 %839 to i64
  store i64 %840, i64* %RAX.i1036, align 8
  %841 = icmp ult i32 %838, 4
  %842 = zext i1 %841 to i8
  store i8 %842, i8* %14, align 1
  %843 = and i32 %839, 255
  %844 = tail call i32 @llvm.ctpop.i32(i32 %843)
  %845 = trunc i32 %844 to i8
  %846 = and i8 %845, 1
  %847 = xor i8 %846, 1
  store i8 %847, i8* %21, align 1
  %848 = xor i32 %839, %838
  %849 = lshr i32 %848, 4
  %850 = trunc i32 %849 to i8
  %851 = and i8 %850, 1
  store i8 %851, i8* %27, align 1
  %852 = icmp eq i32 %839, 0
  %853 = zext i1 %852 to i8
  store i8 %853, i8* %30, align 1
  %854 = lshr i32 %839, 31
  %855 = trunc i32 %854 to i8
  store i8 %855, i8* %33, align 1
  %856 = lshr i32 %838, 31
  %857 = xor i32 %854, %856
  %858 = add nuw nsw i32 %857, %856
  %859 = icmp eq i32 %858, 2
  %860 = zext i1 %859 to i8
  store i8 %860, i8* %39, align 1
  %861 = add i64 %835, 9
  store i64 %861, i64* %3, align 8
  store i32 %839, i32* %837, align 4
  %862 = load i64, i64* %3, align 8
  %863 = add i64 %862, -284
  store i64 %863, i64* %3, align 8
  br label %block_.L_401778

block_.L_401899:                                  ; preds = %block_.L_401778
  %864 = add i64 %275, 5
  %SIL.i1683 = bitcast %union.anon* %50 to i8*
  %DI.i1678 = bitcast %union.anon* %45 to i16*
  br label %block_.L_40189e

block_.L_40189e:                                  ; preds = %block_4018a8, %block_.L_401899
  %865 = phi i64 [ %247, %block_.L_401899 ], [ %.pre162, %block_4018a8 ]
  %storemerge = phi i64 [ %864, %block_.L_401899 ], [ %1019, %block_4018a8 ]
  %866 = add i64 %865, -52
  %867 = add i64 %storemerge, 4
  store i64 %867, i64* %3, align 8
  %868 = inttoptr i64 %866 to i32*
  %869 = load i32, i32* %868, align 4
  store i8 0, i8* %14, align 1
  %870 = and i32 %869, 255
  %871 = tail call i32 @llvm.ctpop.i32(i32 %870)
  %872 = trunc i32 %871 to i8
  %873 = and i8 %872, 1
  %874 = xor i8 %873, 1
  store i8 %874, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %875 = icmp eq i32 %869, 0
  %876 = zext i1 %875 to i8
  store i8 %876, i8* %30, align 1
  %877 = lshr i32 %869, 31
  %878 = trunc i32 %877 to i8
  store i8 %878, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %879 = icmp ne i8 %878, 0
  %.v69 = select i1 %879, i64 89, i64 6
  %880 = add i64 %867, %.v69
  store i64 %880, i64* %3, align 8
  br i1 %879, label %block_.L_4018fb, label %block_4018a8

block_4018a8:                                     ; preds = %block_.L_40189e
  %881 = add i64 %865, -24
  %882 = add i64 %880, 4
  store i64 %882, i64* %3, align 8
  %883 = inttoptr i64 %881 to i64*
  %884 = load i64, i64* %883, align 8
  store i64 %884, i64* %RAX.i1036, align 8
  %885 = add i64 %880, 8
  store i64 %885, i64* %3, align 8
  %886 = load i32, i32* %868, align 4
  %887 = sext i32 %886 to i64
  store i64 %887, i64* %RCX.i2020, align 8
  %888 = shl nsw i64 %887, 1
  %889 = add i64 %888, %884
  %890 = add i64 %880, 14
  store i64 %890, i64* %3, align 8
  %891 = inttoptr i64 %889 to i16*
  store i16 0, i16* %891, align 2
  %892 = load i64, i64* %RBP.i, align 8
  %893 = add i64 %892, -56
  %894 = load i64, i64* %3, align 8
  %895 = add i64 %894, 3
  store i64 %895, i64* %3, align 8
  %896 = inttoptr i64 %893 to i32*
  %897 = load i32, i32* %896, align 4
  %898 = sext i32 %897 to i64
  %899 = ashr i64 %898, 7
  %900 = lshr i64 %899, 1
  %901 = trunc i64 %899 to i8
  %902 = and i8 %901, 1
  %903 = trunc i64 %900 to i32
  %904 = and i64 %900, 4294967295
  store i64 %904, i64* %RDX.i2023, align 8
  store i8 %902, i8* %14, align 1
  %905 = and i32 %903, 255
  %906 = tail call i32 @llvm.ctpop.i32(i32 %905)
  %907 = trunc i32 %906 to i8
  %908 = and i8 %907, 1
  %909 = xor i8 %908, 1
  store i8 %909, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %910 = icmp eq i32 %903, 0
  %911 = zext i1 %910 to i8
  store i8 %911, i8* %30, align 1
  %912 = lshr i64 %899, 32
  %913 = trunc i64 %912 to i8
  %914 = and i8 %913, 1
  store i8 %914, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %915 = add i64 %892, -16
  %916 = add i64 %894, 10
  store i64 %916, i64* %3, align 8
  %917 = inttoptr i64 %915 to i64*
  %918 = load i64, i64* %917, align 8
  store i64 %918, i64* %RAX.i1036, align 8
  %919 = add i64 %892, -52
  %920 = add i64 %894, 14
  store i64 %920, i64* %3, align 8
  %921 = inttoptr i64 %919 to i32*
  %922 = load i32, i32* %921, align 4
  %923 = sext i32 %922 to i64
  store i64 %923, i64* %RCX.i2020, align 8
  %924 = add i64 %918, %923
  %925 = add i64 %894, 18
  store i64 %925, i64* %3, align 8
  %926 = inttoptr i64 %924 to i8*
  %927 = load i8, i8* %926, align 1
  store i8 %927, i8* %SIL.i1683, align 1
  %928 = zext i8 %927 to i16
  store i16 %928, i16* %R8W.i1748, align 2
  %929 = zext i8 %927 to i64
  %930 = shl nuw nsw i64 %929, 8
  store i64 %930, i64* %RDI.i1575, align 8
  %931 = or i64 %930, %904
  %932 = trunc i64 %931 to i32
  store i64 %931, i64* %RDX.i2023, align 8
  store i8 0, i8* %14, align 1
  %933 = and i32 %932, 255
  %934 = tail call i32 @llvm.ctpop.i32(i32 %933)
  %935 = trunc i32 %934 to i8
  %936 = and i8 %935, 1
  %937 = xor i8 %936, 1
  store i8 %937, i8* %21, align 1
  %938 = icmp eq i32 %932, 0
  %939 = zext i1 %938 to i8
  store i8 %939, i8* %30, align 1
  %940 = lshr i32 %932, 31
  %941 = trunc i32 %940 to i8
  store i8 %941, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %942 = load i64, i64* %RBP.i, align 8
  %943 = add i64 %942, -56
  %944 = trunc i64 %931 to i32
  %945 = add i64 %894, 38
  store i64 %945, i64* %3, align 8
  %946 = inttoptr i64 %943 to i32*
  store i32 %944, i32* %946, align 4
  %947 = load i64, i64* %RBP.i, align 8
  %948 = add i64 %947, -32
  %949 = load i64, i64* %3, align 8
  %950 = add i64 %949, 4
  store i64 %950, i64* %3, align 8
  %951 = inttoptr i64 %948 to i64*
  %952 = load i64, i64* %951, align 8
  store i64 %952, i64* %RAX.i1036, align 8
  %953 = add i64 %947, -56
  %954 = add i64 %949, 8
  store i64 %954, i64* %3, align 8
  %955 = inttoptr i64 %953 to i32*
  %956 = load i32, i32* %955, align 4
  %957 = sext i32 %956 to i64
  store i64 %957, i64* %RCX.i2020, align 8
  %958 = shl nsw i64 %957, 2
  %959 = add i64 %958, %952
  %960 = add i64 %949, 11
  store i64 %960, i64* %3, align 8
  %961 = inttoptr i64 %959 to i32*
  %962 = load i32, i32* %961, align 4
  %963 = add i32 %962, 1
  %964 = zext i32 %963 to i64
  store i64 %964, i64* %RDX.i2023, align 8
  %965 = icmp eq i32 %962, -1
  %966 = icmp eq i32 %963, 0
  %967 = or i1 %965, %966
  %968 = zext i1 %967 to i8
  store i8 %968, i8* %14, align 1
  %969 = and i32 %963, 255
  %970 = tail call i32 @llvm.ctpop.i32(i32 %969)
  %971 = trunc i32 %970 to i8
  %972 = and i8 %971, 1
  %973 = xor i8 %972, 1
  store i8 %973, i8* %21, align 1
  %974 = xor i32 %963, %962
  %975 = lshr i32 %974, 4
  %976 = trunc i32 %975 to i8
  %977 = and i8 %976, 1
  store i8 %977, i8* %27, align 1
  %978 = zext i1 %966 to i8
  store i8 %978, i8* %30, align 1
  %979 = lshr i32 %963, 31
  %980 = trunc i32 %979 to i8
  store i8 %980, i8* %33, align 1
  %981 = lshr i32 %962, 31
  %982 = xor i32 %979, %981
  %983 = add nuw nsw i32 %982, %979
  %984 = icmp eq i32 %983, 2
  %985 = zext i1 %984 to i8
  store i8 %985, i8* %39, align 1
  %986 = add i64 %949, 17
  store i64 %986, i64* %3, align 8
  store i32 %963, i32* %961, align 4
  %987 = load i64, i64* %RBP.i, align 8
  %988 = add i64 %987, -52
  %989 = load i64, i64* %3, align 8
  %990 = add i64 %989, 3
  store i64 %990, i64* %3, align 8
  %991 = inttoptr i64 %988 to i32*
  %992 = load i32, i32* %991, align 4
  %993 = add i32 %992, -1
  %994 = zext i32 %993 to i64
  store i64 %994, i64* %RAX.i1036, align 8
  %995 = icmp ne i32 %992, 0
  %996 = zext i1 %995 to i8
  store i8 %996, i8* %14, align 1
  %997 = and i32 %993, 255
  %998 = tail call i32 @llvm.ctpop.i32(i32 %997)
  %999 = trunc i32 %998 to i8
  %1000 = and i8 %999, 1
  %1001 = xor i8 %1000, 1
  store i8 %1001, i8* %21, align 1
  %1002 = xor i32 %992, 16
  %1003 = xor i32 %1002, %993
  %1004 = lshr i32 %1003, 4
  %1005 = trunc i32 %1004 to i8
  %1006 = and i8 %1005, 1
  store i8 %1006, i8* %27, align 1
  %1007 = icmp eq i32 %993, 0
  %1008 = zext i1 %1007 to i8
  store i8 %1008, i8* %30, align 1
  %1009 = lshr i32 %993, 31
  %1010 = trunc i32 %1009 to i8
  store i8 %1010, i8* %33, align 1
  %1011 = lshr i32 %992, 31
  %1012 = xor i32 %1009, %1011
  %1013 = xor i32 %1009, 1
  %1014 = add nuw nsw i32 %1012, %1013
  %1015 = icmp eq i32 %1014, 2
  %1016 = zext i1 %1015 to i8
  store i8 %1016, i8* %39, align 1
  %1017 = add i64 %989, 9
  store i64 %1017, i64* %3, align 8
  store i32 %993, i32* %991, align 4
  %1018 = load i64, i64* %3, align 8
  %1019 = add i64 %1018, -88
  %1020 = add i64 %1018, 5
  store i64 %1020, i64* %3, align 8
  %.pre162 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40189e

block_.L_4018fb:                                  ; preds = %block_.L_40189e
  %1021 = add i64 %880, 7
  store i64 %1021, i64* %3, align 8
  store i32 0, i32* %868, align 4
  %DL.i1628 = bitcast %union.anon* %57 to i8*
  %.pre163 = load i64, i64* %3, align 8
  br label %block_.L_401902

block_.L_401902:                                  ; preds = %block_40190c, %block_.L_4018fb
  %1022 = phi i64 [ %1181, %block_40190c ], [ %.pre163, %block_.L_4018fb ]
  %1023 = load i64, i64* %RBP.i, align 8
  %1024 = add i64 %1023, -52
  %1025 = add i64 %1022, 4
  store i64 %1025, i64* %3, align 8
  %1026 = inttoptr i64 %1024 to i32*
  %1027 = load i32, i32* %1026, align 4
  %1028 = add i32 %1027, -34
  %1029 = icmp ult i32 %1027, 34
  %1030 = zext i1 %1029 to i8
  store i8 %1030, i8* %14, align 1
  %1031 = and i32 %1028, 255
  %1032 = tail call i32 @llvm.ctpop.i32(i32 %1031)
  %1033 = trunc i32 %1032 to i8
  %1034 = and i8 %1033, 1
  %1035 = xor i8 %1034, 1
  store i8 %1035, i8* %21, align 1
  %1036 = xor i32 %1028, %1027
  %1037 = lshr i32 %1036, 4
  %1038 = trunc i32 %1037 to i8
  %1039 = and i8 %1038, 1
  store i8 %1039, i8* %27, align 1
  %1040 = icmp eq i32 %1028, 0
  %1041 = zext i1 %1040 to i8
  store i8 %1041, i8* %30, align 1
  %1042 = lshr i32 %1028, 31
  %1043 = trunc i32 %1042 to i8
  store i8 %1043, i8* %33, align 1
  %1044 = lshr i32 %1027, 31
  %1045 = xor i32 %1042, %1044
  %1046 = add nuw nsw i32 %1045, %1044
  %1047 = icmp eq i32 %1046, 2
  %1048 = zext i1 %1047 to i8
  store i8 %1048, i8* %39, align 1
  %1049 = icmp ne i8 %1043, 0
  %1050 = xor i1 %1049, %1047
  %.v222 = select i1 %1050, i64 10, i64 70
  %1051 = add i64 %1022, %.v222
  store i64 %1051, i64* %3, align 8
  br i1 %1050, label %block_40190c, label %block_.L_401948

block_40190c:                                     ; preds = %block_.L_401902
  %1052 = add i64 %1023, -16
  %1053 = add i64 %1051, 4
  store i64 %1053, i64* %3, align 8
  %1054 = inttoptr i64 %1052 to i64*
  %1055 = load i64, i64* %1054, align 8
  store i64 %1055, i64* %RAX.i1036, align 8
  %1056 = add i64 %1051, 8
  store i64 %1056, i64* %3, align 8
  %1057 = load i32, i32* %1026, align 4
  %1058 = sext i32 %1057 to i64
  store i64 %1058, i64* %RCX.i2020, align 8
  %1059 = add i64 %1055, %1058
  %1060 = add i64 %1051, 11
  store i64 %1060, i64* %3, align 8
  %1061 = inttoptr i64 %1059 to i8*
  %1062 = load i8, i8* %1061, align 1
  store i8 %1062, i8* %DL.i1628, align 1
  %1063 = add i64 %1051, 15
  store i64 %1063, i64* %3, align 8
  %1064 = load i64, i64* %1054, align 8
  store i64 %1064, i64* %RAX.i1036, align 8
  %1065 = add i64 %1023, -36
  %1066 = add i64 %1051, 18
  store i64 %1066, i64* %3, align 8
  %1067 = inttoptr i64 %1065 to i32*
  %1068 = load i32, i32* %1067, align 4
  %1069 = zext i32 %1068 to i64
  store i64 %1069, i64* %RSI.i1998, align 8
  %1070 = add i64 %1051, 21
  store i64 %1070, i64* %3, align 8
  %1071 = load i32, i32* %1026, align 4
  %1072 = add i32 %1071, %1068
  %1073 = zext i32 %1072 to i64
  store i64 %1073, i64* %RSI.i1998, align 8
  %1074 = icmp ult i32 %1072, %1068
  %1075 = icmp ult i32 %1072, %1071
  %1076 = or i1 %1074, %1075
  %1077 = zext i1 %1076 to i8
  store i8 %1077, i8* %14, align 1
  %1078 = and i32 %1072, 255
  %1079 = tail call i32 @llvm.ctpop.i32(i32 %1078)
  %1080 = trunc i32 %1079 to i8
  %1081 = and i8 %1080, 1
  %1082 = xor i8 %1081, 1
  store i8 %1082, i8* %21, align 1
  %1083 = xor i32 %1071, %1068
  %1084 = xor i32 %1083, %1072
  %1085 = lshr i32 %1084, 4
  %1086 = trunc i32 %1085 to i8
  %1087 = and i8 %1086, 1
  store i8 %1087, i8* %27, align 1
  %1088 = icmp eq i32 %1072, 0
  %1089 = zext i1 %1088 to i8
  store i8 %1089, i8* %30, align 1
  %1090 = lshr i32 %1072, 31
  %1091 = trunc i32 %1090 to i8
  store i8 %1091, i8* %33, align 1
  %1092 = lshr i32 %1068, 31
  %1093 = lshr i32 %1071, 31
  %1094 = xor i32 %1090, %1092
  %1095 = xor i32 %1090, %1093
  %1096 = add nuw nsw i32 %1094, %1095
  %1097 = icmp eq i32 %1096, 2
  %1098 = zext i1 %1097 to i8
  store i8 %1098, i8* %39, align 1
  %1099 = sext i32 %1072 to i64
  store i64 %1099, i64* %RCX.i2020, align 8
  %1100 = add i64 %1064, %1099
  %1101 = add i64 %1051, 27
  store i64 %1101, i64* %3, align 8
  %1102 = inttoptr i64 %1100 to i8*
  store i8 %1062, i8* %1102, align 1
  %1103 = load i64, i64* %RBP.i, align 8
  %1104 = add i64 %1103, -24
  %1105 = load i64, i64* %3, align 8
  %1106 = add i64 %1105, 4
  store i64 %1106, i64* %3, align 8
  %1107 = inttoptr i64 %1104 to i64*
  %1108 = load i64, i64* %1107, align 8
  store i64 %1108, i64* %RAX.i1036, align 8
  %1109 = add i64 %1103, -36
  %1110 = add i64 %1105, 7
  store i64 %1110, i64* %3, align 8
  %1111 = inttoptr i64 %1109 to i32*
  %1112 = load i32, i32* %1111, align 4
  %1113 = zext i32 %1112 to i64
  store i64 %1113, i64* %RSI.i1998, align 8
  %1114 = add i64 %1103, -52
  %1115 = add i64 %1105, 10
  store i64 %1115, i64* %3, align 8
  %1116 = inttoptr i64 %1114 to i32*
  %1117 = load i32, i32* %1116, align 4
  %1118 = add i32 %1117, %1112
  %1119 = zext i32 %1118 to i64
  store i64 %1119, i64* %RSI.i1998, align 8
  %1120 = icmp ult i32 %1118, %1112
  %1121 = icmp ult i32 %1118, %1117
  %1122 = or i1 %1120, %1121
  %1123 = zext i1 %1122 to i8
  store i8 %1123, i8* %14, align 1
  %1124 = and i32 %1118, 255
  %1125 = tail call i32 @llvm.ctpop.i32(i32 %1124)
  %1126 = trunc i32 %1125 to i8
  %1127 = and i8 %1126, 1
  %1128 = xor i8 %1127, 1
  store i8 %1128, i8* %21, align 1
  %1129 = xor i32 %1117, %1112
  %1130 = xor i32 %1129, %1118
  %1131 = lshr i32 %1130, 4
  %1132 = trunc i32 %1131 to i8
  %1133 = and i8 %1132, 1
  store i8 %1133, i8* %27, align 1
  %1134 = icmp eq i32 %1118, 0
  %1135 = zext i1 %1134 to i8
  store i8 %1135, i8* %30, align 1
  %1136 = lshr i32 %1118, 31
  %1137 = trunc i32 %1136 to i8
  store i8 %1137, i8* %33, align 1
  %1138 = lshr i32 %1112, 31
  %1139 = lshr i32 %1117, 31
  %1140 = xor i32 %1136, %1138
  %1141 = xor i32 %1136, %1139
  %1142 = add nuw nsw i32 %1140, %1141
  %1143 = icmp eq i32 %1142, 2
  %1144 = zext i1 %1143 to i8
  store i8 %1144, i8* %39, align 1
  %1145 = sext i32 %1118 to i64
  store i64 %1145, i64* %RCX.i2020, align 8
  %1146 = shl nsw i64 %1145, 1
  %1147 = add i64 %1108, %1146
  %1148 = add i64 %1105, 19
  store i64 %1148, i64* %3, align 8
  %1149 = inttoptr i64 %1147 to i16*
  store i16 0, i16* %1149, align 2
  %1150 = load i64, i64* %RBP.i, align 8
  %1151 = add i64 %1150, -52
  %1152 = load i64, i64* %3, align 8
  %1153 = add i64 %1152, 3
  store i64 %1153, i64* %3, align 8
  %1154 = inttoptr i64 %1151 to i32*
  %1155 = load i32, i32* %1154, align 4
  %1156 = add i32 %1155, 1
  %1157 = zext i32 %1156 to i64
  store i64 %1157, i64* %RAX.i1036, align 8
  %1158 = icmp eq i32 %1155, -1
  %1159 = icmp eq i32 %1156, 0
  %1160 = or i1 %1158, %1159
  %1161 = zext i1 %1160 to i8
  store i8 %1161, i8* %14, align 1
  %1162 = and i32 %1156, 255
  %1163 = tail call i32 @llvm.ctpop.i32(i32 %1162)
  %1164 = trunc i32 %1163 to i8
  %1165 = and i8 %1164, 1
  %1166 = xor i8 %1165, 1
  store i8 %1166, i8* %21, align 1
  %1167 = xor i32 %1156, %1155
  %1168 = lshr i32 %1167, 4
  %1169 = trunc i32 %1168 to i8
  %1170 = and i8 %1169, 1
  store i8 %1170, i8* %27, align 1
  %1171 = zext i1 %1159 to i8
  store i8 %1171, i8* %30, align 1
  %1172 = lshr i32 %1156, 31
  %1173 = trunc i32 %1172 to i8
  store i8 %1173, i8* %33, align 1
  %1174 = lshr i32 %1155, 31
  %1175 = xor i32 %1172, %1174
  %1176 = add nuw nsw i32 %1175, %1172
  %1177 = icmp eq i32 %1176, 2
  %1178 = zext i1 %1177 to i8
  store i8 %1178, i8* %39, align 1
  %1179 = add i64 %1152, 9
  store i64 %1179, i64* %3, align 8
  store i32 %1156, i32* %1154, align 4
  %1180 = load i64, i64* %3, align 8
  %1181 = add i64 %1180, -65
  store i64 %1181, i64* %3, align 8
  br label %block_.L_401902

block_.L_401948:                                  ; preds = %block_.L_401902
  %1182 = add i64 %1023, -40
  %1183 = add i64 %1051, 4
  store i64 %1183, i64* %3, align 8
  %1184 = inttoptr i64 %1182 to i32*
  %1185 = load i32, i32* %1184, align 4
  %1186 = add i32 %1185, -4
  %1187 = icmp ult i32 %1185, 4
  %1188 = zext i1 %1187 to i8
  store i8 %1188, i8* %14, align 1
  %1189 = and i32 %1186, 255
  %1190 = tail call i32 @llvm.ctpop.i32(i32 %1189)
  %1191 = trunc i32 %1190 to i8
  %1192 = and i8 %1191, 1
  %1193 = xor i8 %1192, 1
  store i8 %1193, i8* %21, align 1
  %1194 = xor i32 %1186, %1185
  %1195 = lshr i32 %1194, 4
  %1196 = trunc i32 %1195 to i8
  %1197 = and i8 %1196, 1
  store i8 %1197, i8* %27, align 1
  %1198 = icmp eq i32 %1186, 0
  %1199 = zext i1 %1198 to i8
  store i8 %1199, i8* %30, align 1
  %1200 = lshr i32 %1186, 31
  %1201 = trunc i32 %1200 to i8
  store i8 %1201, i8* %33, align 1
  %1202 = lshr i32 %1185, 31
  %1203 = xor i32 %1200, %1202
  %1204 = add nuw nsw i32 %1203, %1202
  %1205 = icmp eq i32 %1204, 2
  %1206 = zext i1 %1205 to i8
  store i8 %1206, i8* %39, align 1
  %1207 = icmp ne i8 %1201, 0
  %1208 = xor i1 %1207, %1205
  %.v223 = select i1 %1208, i64 41, i64 10
  %1209 = add i64 %1051, %.v223
  store i64 %1209, i64* %3, align 8
  br i1 %1208, label %block_.L_401971, label %block_401952

block_401952:                                     ; preds = %block_.L_401948
  store i64 ptrtoint (%G__0x415992_type* @G__0x415992 to i64), i64* %RSI.i1998, align 8
  %1210 = load i64, i64* bitcast (%G_0x618d80_type* @G_0x618d80 to i64*), align 8
  store i64 %1210, i64* %RDI.i1575, align 8
  %AL.i1579 = bitcast %union.anon* %40 to i8*
  store i8 0, i8* %AL.i1579, align 1
  %1211 = add i64 %1209, -4130
  %1212 = add i64 %1209, 25
  %1213 = load i64, i64* %6, align 8
  %1214 = add i64 %1213, -8
  %1215 = inttoptr i64 %1214 to i64*
  store i64 %1212, i64* %1215, align 8
  store i64 %1214, i64* %6, align 8
  store i64 %1211, i64* %3, align 8
  %1216 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.0)
  %1217 = load i64, i64* %RBP.i, align 8
  %1218 = add i64 %1217, -3464
  %1219 = load i32, i32* %EAX.i1973.pre-phi, align 4
  %1220 = load i64, i64* %3, align 8
  %1221 = add i64 %1220, 6
  store i64 %1221, i64* %3, align 8
  %1222 = inttoptr i64 %1218 to i32*
  store i32 %1219, i32* %1222, align 4
  %.pre164 = load i64, i64* %RBP.i, align 8
  %.pre165 = load i64, i64* %3, align 8
  br label %block_.L_401971

block_.L_401971:                                  ; preds = %block_401952, %block_.L_401948
  %1223 = phi i64 [ %1209, %block_.L_401948 ], [ %.pre165, %block_401952 ]
  %1224 = phi i64 [ %1023, %block_.L_401948 ], [ %.pre164, %block_401952 ]
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.0, %block_.L_401948 ], [ %1216, %block_401952 ]
  %1225 = add i64 %1224, -52
  %1226 = add i64 %1223, 7
  store i64 %1226, i64* %3, align 8
  %1227 = inttoptr i64 %1225 to i32*
  store i32 1, i32* %1227, align 4
  %.pre166 = load i64, i64* %3, align 8
  br label %block_.L_401978

block_.L_401978:                                  ; preds = %block_401985, %block_.L_401971
  %1228 = phi i64 [ %1362, %block_401985 ], [ %.pre166, %block_.L_401971 ]
  %1229 = load i64, i64* %RBP.i, align 8
  %1230 = add i64 %1229, -52
  %1231 = add i64 %1228, 7
  store i64 %1231, i64* %3, align 8
  %1232 = inttoptr i64 %1230 to i32*
  %1233 = load i32, i32* %1232, align 4
  %1234 = add i32 %1233, -65536
  %1235 = icmp ult i32 %1233, 65536
  %1236 = zext i1 %1235 to i8
  store i8 %1236, i8* %14, align 1
  %1237 = and i32 %1234, 255
  %1238 = tail call i32 @llvm.ctpop.i32(i32 %1237)
  %1239 = trunc i32 %1238 to i8
  %1240 = and i8 %1239, 1
  %1241 = xor i8 %1240, 1
  store i8 %1241, i8* %21, align 1
  %1242 = xor i32 %1234, %1233
  %1243 = lshr i32 %1242, 4
  %1244 = trunc i32 %1243 to i8
  %1245 = and i8 %1244, 1
  store i8 %1245, i8* %27, align 1
  %1246 = icmp eq i32 %1234, 0
  %1247 = zext i1 %1246 to i8
  store i8 %1247, i8* %30, align 1
  %1248 = lshr i32 %1234, 31
  %1249 = trunc i32 %1248 to i8
  store i8 %1249, i8* %33, align 1
  %1250 = lshr i32 %1233, 31
  %1251 = xor i32 %1248, %1250
  %1252 = add nuw nsw i32 %1251, %1250
  %1253 = icmp eq i32 %1252, 2
  %1254 = zext i1 %1253 to i8
  store i8 %1254, i8* %39, align 1
  %1255 = icmp ne i8 %1249, 0
  %1256 = xor i1 %1255, %1253
  %.demorgan = or i1 %1246, %1256
  %.v224 = select i1 %.demorgan, i64 13, i64 57
  %1257 = add i64 %1228, %.v224
  store i64 %1257, i64* %3, align 8
  br i1 %.demorgan, label %block_401985, label %block_.L_4019b1

block_401985:                                     ; preds = %block_.L_401978
  %1258 = add i64 %1229, -32
  %1259 = add i64 %1257, 4
  store i64 %1259, i64* %3, align 8
  %1260 = inttoptr i64 %1258 to i64*
  %1261 = load i64, i64* %1260, align 8
  store i64 %1261, i64* %RAX.i1036, align 8
  %1262 = add i64 %1257, 7
  store i64 %1262, i64* %3, align 8
  %1263 = load i32, i32* %1232, align 4
  %1264 = add i32 %1263, -1
  %1265 = zext i32 %1264 to i64
  store i64 %1265, i64* %RCX.i2020, align 8
  %1266 = icmp eq i32 %1263, 0
  %1267 = zext i1 %1266 to i8
  store i8 %1267, i8* %14, align 1
  %1268 = and i32 %1264, 255
  %1269 = tail call i32 @llvm.ctpop.i32(i32 %1268)
  %1270 = trunc i32 %1269 to i8
  %1271 = and i8 %1270, 1
  %1272 = xor i8 %1271, 1
  store i8 %1272, i8* %21, align 1
  %1273 = xor i32 %1264, %1263
  %1274 = lshr i32 %1273, 4
  %1275 = trunc i32 %1274 to i8
  %1276 = and i8 %1275, 1
  store i8 %1276, i8* %27, align 1
  %1277 = icmp eq i32 %1264, 0
  %1278 = zext i1 %1277 to i8
  store i8 %1278, i8* %30, align 1
  %1279 = lshr i32 %1264, 31
  %1280 = trunc i32 %1279 to i8
  store i8 %1280, i8* %33, align 1
  %1281 = lshr i32 %1263, 31
  %1282 = xor i32 %1279, %1281
  %1283 = add nuw nsw i32 %1282, %1281
  %1284 = icmp eq i32 %1283, 2
  %1285 = zext i1 %1284 to i8
  store i8 %1285, i8* %39, align 1
  %1286 = sext i32 %1264 to i64
  store i64 %1286, i64* %RDX.i2023, align 8
  %1287 = shl nsw i64 %1286, 2
  %1288 = add i64 %1261, %1287
  %1289 = add i64 %1257, 16
  store i64 %1289, i64* %3, align 8
  %1290 = inttoptr i64 %1288 to i32*
  %1291 = load i32, i32* %1290, align 4
  %1292 = zext i32 %1291 to i64
  store i64 %1292, i64* %RCX.i2020, align 8
  %1293 = add i64 %1257, 20
  store i64 %1293, i64* %3, align 8
  %1294 = load i64, i64* %1260, align 8
  store i64 %1294, i64* %RAX.i1036, align 8
  %1295 = add i64 %1257, 24
  store i64 %1295, i64* %3, align 8
  %1296 = load i32, i32* %1232, align 4
  %1297 = sext i32 %1296 to i64
  store i64 %1297, i64* %RDX.i2023, align 8
  %1298 = shl nsw i64 %1297, 2
  %1299 = add i64 %1294, %1298
  %1300 = add i64 %1257, 27
  store i64 %1300, i64* %3, align 8
  %1301 = inttoptr i64 %1299 to i32*
  %1302 = load i32, i32* %1301, align 4
  %1303 = add i32 %1302, %1291
  %1304 = zext i32 %1303 to i64
  store i64 %1304, i64* %RCX.i2020, align 8
  %1305 = icmp ult i32 %1303, %1291
  %1306 = icmp ult i32 %1303, %1302
  %1307 = or i1 %1305, %1306
  %1308 = zext i1 %1307 to i8
  store i8 %1308, i8* %14, align 1
  %1309 = and i32 %1303, 255
  %1310 = tail call i32 @llvm.ctpop.i32(i32 %1309)
  %1311 = trunc i32 %1310 to i8
  %1312 = and i8 %1311, 1
  %1313 = xor i8 %1312, 1
  store i8 %1313, i8* %21, align 1
  %1314 = xor i32 %1302, %1291
  %1315 = xor i32 %1314, %1303
  %1316 = lshr i32 %1315, 4
  %1317 = trunc i32 %1316 to i8
  %1318 = and i8 %1317, 1
  store i8 %1318, i8* %27, align 1
  %1319 = icmp eq i32 %1303, 0
  %1320 = zext i1 %1319 to i8
  store i8 %1320, i8* %30, align 1
  %1321 = lshr i32 %1303, 31
  %1322 = trunc i32 %1321 to i8
  store i8 %1322, i8* %33, align 1
  %1323 = lshr i32 %1291, 31
  %1324 = lshr i32 %1302, 31
  %1325 = xor i32 %1321, %1323
  %1326 = xor i32 %1321, %1324
  %1327 = add nuw nsw i32 %1325, %1326
  %1328 = icmp eq i32 %1327, 2
  %1329 = zext i1 %1328 to i8
  store i8 %1329, i8* %39, align 1
  %1330 = add i64 %1257, 30
  store i64 %1330, i64* %3, align 8
  store i32 %1303, i32* %1301, align 4
  %1331 = load i64, i64* %RBP.i, align 8
  %1332 = add i64 %1331, -52
  %1333 = load i64, i64* %3, align 8
  %1334 = add i64 %1333, 3
  store i64 %1334, i64* %3, align 8
  %1335 = inttoptr i64 %1332 to i32*
  %1336 = load i32, i32* %1335, align 4
  %1337 = add i32 %1336, 1
  %1338 = zext i32 %1337 to i64
  store i64 %1338, i64* %RAX.i1036, align 8
  %1339 = icmp eq i32 %1336, -1
  %1340 = icmp eq i32 %1337, 0
  %1341 = or i1 %1339, %1340
  %1342 = zext i1 %1341 to i8
  store i8 %1342, i8* %14, align 1
  %1343 = and i32 %1337, 255
  %1344 = tail call i32 @llvm.ctpop.i32(i32 %1343)
  %1345 = trunc i32 %1344 to i8
  %1346 = and i8 %1345, 1
  %1347 = xor i8 %1346, 1
  store i8 %1347, i8* %21, align 1
  %1348 = xor i32 %1337, %1336
  %1349 = lshr i32 %1348, 4
  %1350 = trunc i32 %1349 to i8
  %1351 = and i8 %1350, 1
  store i8 %1351, i8* %27, align 1
  %1352 = zext i1 %1340 to i8
  store i8 %1352, i8* %30, align 1
  %1353 = lshr i32 %1337, 31
  %1354 = trunc i32 %1353 to i8
  store i8 %1354, i8* %33, align 1
  %1355 = lshr i32 %1336, 31
  %1356 = xor i32 %1353, %1355
  %1357 = add nuw nsw i32 %1356, %1353
  %1358 = icmp eq i32 %1357, 2
  %1359 = zext i1 %1358 to i8
  store i8 %1359, i8* %39, align 1
  %1360 = add i64 %1333, 9
  store i64 %1360, i64* %3, align 8
  store i32 %1337, i32* %1335, align 4
  %1361 = load i64, i64* %3, align 8
  %1362 = add i64 %1361, -52
  store i64 %1362, i64* %3, align 8
  br label %block_.L_401978

block_.L_4019b1:                                  ; preds = %block_.L_401978
  %1363 = add i64 %1229, -16
  %1364 = add i64 %1257, 4
  store i64 %1364, i64* %3, align 8
  %1365 = inttoptr i64 %1363 to i64*
  %1366 = load i64, i64* %1365, align 8
  store i64 %1366, i64* %RAX.i1036, align 8
  %1367 = add i64 %1257, 7
  store i64 %1367, i64* %3, align 8
  %1368 = inttoptr i64 %1366 to i8*
  %1369 = load i8, i8* %1368, align 1
  %1370 = zext i8 %1369 to i64
  %1371 = shl nuw nsw i64 %1370, 8
  store i64 %1371, i64* %RCX.i2020, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1372 = icmp eq i8 %1369, 0
  %1373 = zext i1 %1372 to i8
  store i8 %1373, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %DX.i1519 = bitcast %union.anon* %57 to i16*
  %1374 = trunc i64 %1371 to i16
  store i16 %1374, i16* %DX.i1519, align 2
  %1375 = add i64 %1229, -3418
  %1376 = add i64 %1257, 20
  store i64 %1376, i64* %3, align 8
  %1377 = inttoptr i64 %1375 to i16*
  store i16 %1374, i16* %1377, align 2
  %1378 = load i64, i64* %RBP.i, align 8
  %1379 = add i64 %1378, -36
  %1380 = load i64, i64* %3, align 8
  %1381 = add i64 %1380, 3
  store i64 %1381, i64* %3, align 8
  %1382 = inttoptr i64 %1379 to i32*
  %1383 = load i32, i32* %1382, align 4
  %1384 = add i32 %1383, -1
  %1385 = zext i32 %1384 to i64
  store i64 %1385, i64* %RCX.i2020, align 8
  %1386 = icmp eq i32 %1383, 0
  %1387 = zext i1 %1386 to i8
  store i8 %1387, i8* %14, align 1
  %1388 = and i32 %1384, 255
  %1389 = tail call i32 @llvm.ctpop.i32(i32 %1388)
  %1390 = trunc i32 %1389 to i8
  %1391 = and i8 %1390, 1
  %1392 = xor i8 %1391, 1
  store i8 %1392, i8* %21, align 1
  %1393 = xor i32 %1384, %1383
  %1394 = lshr i32 %1393, 4
  %1395 = trunc i32 %1394 to i8
  %1396 = and i8 %1395, 1
  store i8 %1396, i8* %27, align 1
  %1397 = icmp eq i32 %1384, 0
  %1398 = zext i1 %1397 to i8
  store i8 %1398, i8* %30, align 1
  %1399 = lshr i32 %1384, 31
  %1400 = trunc i32 %1399 to i8
  store i8 %1400, i8* %33, align 1
  %1401 = lshr i32 %1383, 31
  %1402 = xor i32 %1399, %1401
  %1403 = add nuw nsw i32 %1402, %1401
  %1404 = icmp eq i32 %1403, 2
  %1405 = zext i1 %1404 to i8
  store i8 %1405, i8* %39, align 1
  %1406 = add i64 %1378, -52
  %1407 = add i64 %1380, 9
  store i64 %1407, i64* %3, align 8
  %1408 = inttoptr i64 %1406 to i32*
  store i32 %1384, i32* %1408, align 4
  %AX.i1483 = bitcast %union.anon* %40 to i16*
  %.pre167 = load i64, i64* %3, align 8
  br label %block_.L_4019ce

block_.L_4019ce:                                  ; preds = %block_4019d8, %block_.L_4019b1
  %1409 = phi i64 [ %2111, %block_4019d8 ], [ %.pre167, %block_.L_4019b1 ]
  %1410 = load i64, i64* %RBP.i, align 8
  %1411 = add i64 %1410, -52
  %1412 = add i64 %1409, 4
  store i64 %1412, i64* %3, align 8
  %1413 = inttoptr i64 %1411 to i32*
  %1414 = load i32, i32* %1413, align 4
  %1415 = add i32 %1414, -3
  %1416 = icmp ult i32 %1414, 3
  %1417 = zext i1 %1416 to i8
  store i8 %1417, i8* %14, align 1
  %1418 = and i32 %1415, 255
  %1419 = tail call i32 @llvm.ctpop.i32(i32 %1418)
  %1420 = trunc i32 %1419 to i8
  %1421 = and i8 %1420, 1
  %1422 = xor i8 %1421, 1
  store i8 %1422, i8* %21, align 1
  %1423 = xor i32 %1415, %1414
  %1424 = lshr i32 %1423, 4
  %1425 = trunc i32 %1424 to i8
  %1426 = and i8 %1425, 1
  store i8 %1426, i8* %27, align 1
  %1427 = icmp eq i32 %1415, 0
  %1428 = zext i1 %1427 to i8
  store i8 %1428, i8* %30, align 1
  %1429 = lshr i32 %1415, 31
  %1430 = trunc i32 %1429 to i8
  store i8 %1430, i8* %33, align 1
  %1431 = lshr i32 %1414, 31
  %1432 = xor i32 %1429, %1431
  %1433 = add nuw nsw i32 %1432, %1431
  %1434 = icmp eq i32 %1433, 2
  %1435 = zext i1 %1434 to i8
  store i8 %1435, i8* %39, align 1
  %1436 = icmp ne i8 %1430, 0
  %1437 = xor i1 %1436, %1434
  %.v225 = select i1 %1437, i64 416, i64 10
  %1438 = add i64 %1409, %.v225
  store i64 %1438, i64* %3, align 8
  br i1 %1437, label %block_.L_401b6e, label %block_4019d8

block_4019d8:                                     ; preds = %block_.L_4019ce
  %1439 = add i64 %1410, -3418
  %1440 = add i64 %1438, 7
  store i64 %1440, i64* %3, align 8
  %1441 = inttoptr i64 %1439 to i16*
  %1442 = load i16, i16* %1441, align 2
  %1443 = zext i16 %1442 to i64
  %1444 = lshr i64 %1443, 8
  %1445 = lshr i16 %1442, 7
  %1446 = trunc i16 %1445 to i8
  %1447 = and i8 %1446, 1
  %1448 = trunc i64 %1444 to i32
  store i64 %1444, i64* %RAX.i1036, align 8
  store i8 %1447, i8* %14, align 1
  %1449 = tail call i32 @llvm.ctpop.i32(i32 %1448)
  %1450 = trunc i32 %1449 to i8
  %1451 = and i8 %1450, 1
  %1452 = xor i8 %1451, 1
  store i8 %1452, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1453 = icmp eq i32 %1448, 0
  %1454 = zext i1 %1453 to i8
  store i8 %1454, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1455 = add i64 %1410, -16
  %1456 = add i64 %1438, 14
  store i64 %1456, i64* %3, align 8
  %1457 = inttoptr i64 %1455 to i64*
  %1458 = load i64, i64* %1457, align 8
  store i64 %1458, i64* %RCX.i2020, align 8
  %1459 = add i64 %1438, 18
  store i64 %1459, i64* %3, align 8
  %1460 = load i32, i32* %1413, align 4
  %1461 = sext i32 %1460 to i64
  store i64 %1461, i64* %RDX.i2023, align 8
  %1462 = add i64 %1458, %1461
  %1463 = add i64 %1438, 22
  store i64 %1463, i64* %3, align 8
  %1464 = inttoptr i64 %1462 to i8*
  %1465 = load i8, i8* %1464, align 1
  %1466 = zext i8 %1465 to i64
  %1467 = shl nuw nsw i64 %1466, 8
  store i64 %1467, i64* %RSI.i1998, align 8
  %1468 = or i64 %1467, %1444
  %1469 = trunc i64 %1468 to i32
  store i64 %1468, i64* %RAX.i1036, align 8
  store i8 0, i8* %14, align 1
  %1470 = and i32 %1469, 255
  %1471 = tail call i32 @llvm.ctpop.i32(i32 %1470)
  %1472 = trunc i32 %1471 to i8
  %1473 = and i8 %1472, 1
  %1474 = xor i8 %1473, 1
  store i8 %1474, i8* %21, align 1
  %1475 = icmp eq i32 %1469, 0
  %1476 = zext i1 %1475 to i8
  store i8 %1476, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1477 = trunc i64 %1468 to i16
  store i16 %1477, i16* %DI.i1678, align 2
  %1478 = add i64 %1438, 37
  store i64 %1478, i64* %3, align 8
  store i16 %1477, i16* %1441, align 2
  %1479 = load i64, i64* %RBP.i, align 8
  %1480 = add i64 %1479, -32
  %1481 = load i64, i64* %3, align 8
  %1482 = add i64 %1481, 4
  store i64 %1482, i64* %3, align 8
  %1483 = inttoptr i64 %1480 to i64*
  %1484 = load i64, i64* %1483, align 8
  store i64 %1484, i64* %RCX.i2020, align 8
  %1485 = add i64 %1479, -3418
  %1486 = add i64 %1481, 11
  store i64 %1486, i64* %3, align 8
  %1487 = inttoptr i64 %1485 to i16*
  %1488 = load i16, i16* %1487, align 2
  %1489 = zext i16 %1488 to i64
  store i64 %1489, i64* %RAX.i1036, align 8
  %1490 = zext i16 %1488 to i64
  store i64 %1490, i64* %RDX.i2023, align 8
  %1491 = shl nuw nsw i64 %1490, 2
  %1492 = add i64 %1484, %1491
  %1493 = add i64 %1481, 16
  store i64 %1493, i64* %3, align 8
  %1494 = inttoptr i64 %1492 to i32*
  %1495 = load i32, i32* %1494, align 4
  %1496 = add i32 %1495, -1
  %1497 = zext i32 %1496 to i64
  store i64 %1497, i64* %RAX.i1036, align 8
  %1498 = icmp eq i32 %1495, 0
  %1499 = zext i1 %1498 to i8
  store i8 %1499, i8* %14, align 1
  %1500 = and i32 %1496, 255
  %1501 = tail call i32 @llvm.ctpop.i32(i32 %1500)
  %1502 = trunc i32 %1501 to i8
  %1503 = and i8 %1502, 1
  %1504 = xor i8 %1503, 1
  store i8 %1504, i8* %21, align 1
  %1505 = xor i32 %1496, %1495
  %1506 = lshr i32 %1505, 4
  %1507 = trunc i32 %1506 to i8
  %1508 = and i8 %1507, 1
  store i8 %1508, i8* %27, align 1
  %1509 = icmp eq i32 %1496, 0
  %1510 = zext i1 %1509 to i8
  store i8 %1510, i8* %30, align 1
  %1511 = lshr i32 %1496, 31
  %1512 = trunc i32 %1511 to i8
  store i8 %1512, i8* %33, align 1
  %1513 = lshr i32 %1495, 31
  %1514 = xor i32 %1511, %1513
  %1515 = add nuw nsw i32 %1514, %1513
  %1516 = icmp eq i32 %1515, 2
  %1517 = zext i1 %1516 to i8
  store i8 %1517, i8* %39, align 1
  %1518 = add i64 %1479, -56
  %1519 = add i64 %1481, 22
  store i64 %1519, i64* %3, align 8
  %1520 = inttoptr i64 %1518 to i32*
  store i32 %1496, i32* %1520, align 4
  %1521 = load i64, i64* %RBP.i, align 8
  %1522 = add i64 %1521, -56
  %1523 = load i64, i64* %3, align 8
  %1524 = add i64 %1523, 3
  store i64 %1524, i64* %3, align 8
  %1525 = inttoptr i64 %1522 to i32*
  %1526 = load i32, i32* %1525, align 4
  %1527 = zext i32 %1526 to i64
  store i64 %1527, i64* %RAX.i1036, align 8
  %1528 = add i64 %1521, -32
  %1529 = add i64 %1523, 7
  store i64 %1529, i64* %3, align 8
  %1530 = inttoptr i64 %1528 to i64*
  %1531 = load i64, i64* %1530, align 8
  store i64 %1531, i64* %RCX.i2020, align 8
  %1532 = add i64 %1521, -3418
  %1533 = add i64 %1523, 14
  store i64 %1533, i64* %3, align 8
  %1534 = inttoptr i64 %1532 to i16*
  %1535 = load i16, i16* %1534, align 2
  %1536 = zext i16 %1535 to i64
  store i64 %1536, i64* %RSI.i1998, align 8
  %1537 = zext i16 %1535 to i64
  store i64 %1537, i64* %RDX.i2023, align 8
  %1538 = shl nuw nsw i64 %1537, 2
  %1539 = add i64 %1531, %1538
  %1540 = add i64 %1523, 19
  store i64 %1540, i64* %3, align 8
  %1541 = inttoptr i64 %1539 to i32*
  store i32 %1526, i32* %1541, align 4
  %1542 = load i64, i64* %RBP.i, align 8
  %1543 = add i64 %1542, -52
  %1544 = load i64, i64* %3, align 8
  %1545 = add i64 %1544, 3
  store i64 %1545, i64* %3, align 8
  %1546 = inttoptr i64 %1543 to i32*
  %1547 = load i32, i32* %1546, align 4
  %1548 = zext i32 %1547 to i64
  store i64 %1548, i64* %RAX.i1036, align 8
  %1549 = add i64 %1542, -8
  %1550 = add i64 %1544, 7
  store i64 %1550, i64* %3, align 8
  %1551 = inttoptr i64 %1549 to i64*
  %1552 = load i64, i64* %1551, align 8
  store i64 %1552, i64* %RCX.i2020, align 8
  %1553 = add i64 %1542, -56
  %1554 = add i64 %1544, 11
  store i64 %1554, i64* %3, align 8
  %1555 = inttoptr i64 %1553 to i32*
  %1556 = load i32, i32* %1555, align 4
  %1557 = sext i32 %1556 to i64
  store i64 %1557, i64* %RDX.i2023, align 8
  %1558 = shl nsw i64 %1557, 2
  %1559 = add i64 %1558, %1552
  %1560 = add i64 %1544, 14
  store i64 %1560, i64* %3, align 8
  %1561 = inttoptr i64 %1559 to i32*
  store i32 %1547, i32* %1561, align 4
  %1562 = load i64, i64* %RBP.i, align 8
  %1563 = add i64 %1562, -3418
  %1564 = load i64, i64* %3, align 8
  %1565 = add i64 %1564, 7
  store i64 %1565, i64* %3, align 8
  %1566 = inttoptr i64 %1563 to i16*
  %1567 = load i16, i16* %1566, align 2
  %1568 = zext i16 %1567 to i64
  %1569 = lshr i64 %1568, 8
  %1570 = lshr i16 %1567, 7
  %1571 = trunc i16 %1570 to i8
  %1572 = and i8 %1571, 1
  %1573 = trunc i64 %1569 to i32
  store i64 %1569, i64* %RAX.i1036, align 8
  store i8 %1572, i8* %14, align 1
  %1574 = tail call i32 @llvm.ctpop.i32(i32 %1573)
  %1575 = trunc i32 %1574 to i8
  %1576 = and i8 %1575, 1
  %1577 = xor i8 %1576, 1
  store i8 %1577, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1578 = icmp eq i32 %1573, 0
  %1579 = zext i1 %1578 to i8
  store i8 %1579, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1580 = add i64 %1562, -16
  %1581 = add i64 %1564, 14
  store i64 %1581, i64* %3, align 8
  %1582 = inttoptr i64 %1580 to i64*
  %1583 = load i64, i64* %1582, align 8
  store i64 %1583, i64* %RCX.i2020, align 8
  %1584 = add i64 %1562, -52
  %1585 = add i64 %1564, 17
  store i64 %1585, i64* %3, align 8
  %1586 = inttoptr i64 %1584 to i32*
  %1587 = load i32, i32* %1586, align 4
  %1588 = add i32 %1587, -1
  %1589 = zext i32 %1588 to i64
  store i64 %1589, i64* %RSI.i1998, align 8
  %1590 = icmp eq i32 %1587, 0
  %1591 = zext i1 %1590 to i8
  store i8 %1591, i8* %14, align 1
  %1592 = and i32 %1588, 255
  %1593 = tail call i32 @llvm.ctpop.i32(i32 %1592)
  %1594 = trunc i32 %1593 to i8
  %1595 = and i8 %1594, 1
  %1596 = xor i8 %1595, 1
  store i8 %1596, i8* %21, align 1
  %1597 = xor i32 %1588, %1587
  %1598 = lshr i32 %1597, 4
  %1599 = trunc i32 %1598 to i8
  %1600 = and i8 %1599, 1
  store i8 %1600, i8* %27, align 1
  %1601 = icmp eq i32 %1588, 0
  %1602 = zext i1 %1601 to i8
  store i8 %1602, i8* %30, align 1
  %1603 = lshr i32 %1588, 31
  %1604 = trunc i32 %1603 to i8
  store i8 %1604, i8* %33, align 1
  %1605 = lshr i32 %1587, 31
  %1606 = xor i32 %1603, %1605
  %1607 = add nuw nsw i32 %1606, %1605
  %1608 = icmp eq i32 %1607, 2
  %1609 = zext i1 %1608 to i8
  store i8 %1609, i8* %39, align 1
  %1610 = sext i32 %1588 to i64
  store i64 %1610, i64* %RDX.i2023, align 8
  %1611 = add i64 %1583, %1610
  %1612 = add i64 %1564, 27
  store i64 %1612, i64* %3, align 8
  %1613 = inttoptr i64 %1611 to i8*
  %1614 = load i8, i8* %1613, align 1
  %1615 = zext i8 %1614 to i64
  %1616 = shl nuw nsw i64 %1615, 8
  store i64 %1616, i64* %RSI.i1998, align 8
  %1617 = or i64 %1616, %1569
  %1618 = trunc i64 %1617 to i32
  store i64 %1617, i64* %RAX.i1036, align 8
  store i8 0, i8* %14, align 1
  %1619 = and i32 %1618, 255
  %1620 = tail call i32 @llvm.ctpop.i32(i32 %1619)
  %1621 = trunc i32 %1620 to i8
  %1622 = and i8 %1621, 1
  %1623 = xor i8 %1622, 1
  store i8 %1623, i8* %21, align 1
  %1624 = icmp eq i32 %1618, 0
  %1625 = zext i1 %1624 to i8
  store i8 %1625, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1626 = trunc i64 %1617 to i16
  store i16 %1626, i16* %DI.i1678, align 2
  %1627 = load i64, i64* %RBP.i, align 8
  %1628 = add i64 %1627, -3418
  %1629 = add i64 %1564, 42
  store i64 %1629, i64* %3, align 8
  %1630 = inttoptr i64 %1628 to i16*
  store i16 %1626, i16* %1630, align 2
  %1631 = load i64, i64* %RBP.i, align 8
  %1632 = add i64 %1631, -32
  %1633 = load i64, i64* %3, align 8
  %1634 = add i64 %1633, 4
  store i64 %1634, i64* %3, align 8
  %1635 = inttoptr i64 %1632 to i64*
  %1636 = load i64, i64* %1635, align 8
  store i64 %1636, i64* %RCX.i2020, align 8
  %1637 = add i64 %1631, -3418
  %1638 = add i64 %1633, 11
  store i64 %1638, i64* %3, align 8
  %1639 = inttoptr i64 %1637 to i16*
  %1640 = load i16, i16* %1639, align 2
  %1641 = zext i16 %1640 to i64
  store i64 %1641, i64* %RAX.i1036, align 8
  %1642 = zext i16 %1640 to i64
  store i64 %1642, i64* %RDX.i2023, align 8
  %1643 = shl nuw nsw i64 %1642, 2
  %1644 = add i64 %1636, %1643
  %1645 = add i64 %1633, 16
  store i64 %1645, i64* %3, align 8
  %1646 = inttoptr i64 %1644 to i32*
  %1647 = load i32, i32* %1646, align 4
  %1648 = add i32 %1647, -1
  %1649 = zext i32 %1648 to i64
  store i64 %1649, i64* %RAX.i1036, align 8
  %1650 = icmp eq i32 %1647, 0
  %1651 = zext i1 %1650 to i8
  store i8 %1651, i8* %14, align 1
  %1652 = and i32 %1648, 255
  %1653 = tail call i32 @llvm.ctpop.i32(i32 %1652)
  %1654 = trunc i32 %1653 to i8
  %1655 = and i8 %1654, 1
  %1656 = xor i8 %1655, 1
  store i8 %1656, i8* %21, align 1
  %1657 = xor i32 %1648, %1647
  %1658 = lshr i32 %1657, 4
  %1659 = trunc i32 %1658 to i8
  %1660 = and i8 %1659, 1
  store i8 %1660, i8* %27, align 1
  %1661 = icmp eq i32 %1648, 0
  %1662 = zext i1 %1661 to i8
  store i8 %1662, i8* %30, align 1
  %1663 = lshr i32 %1648, 31
  %1664 = trunc i32 %1663 to i8
  store i8 %1664, i8* %33, align 1
  %1665 = lshr i32 %1647, 31
  %1666 = xor i32 %1663, %1665
  %1667 = add nuw nsw i32 %1666, %1665
  %1668 = icmp eq i32 %1667, 2
  %1669 = zext i1 %1668 to i8
  store i8 %1669, i8* %39, align 1
  %1670 = add i64 %1631, -56
  %1671 = add i64 %1633, 22
  store i64 %1671, i64* %3, align 8
  %1672 = inttoptr i64 %1670 to i32*
  store i32 %1648, i32* %1672, align 4
  %1673 = load i64, i64* %RBP.i, align 8
  %1674 = add i64 %1673, -56
  %1675 = load i64, i64* %3, align 8
  %1676 = add i64 %1675, 3
  store i64 %1676, i64* %3, align 8
  %1677 = inttoptr i64 %1674 to i32*
  %1678 = load i32, i32* %1677, align 4
  %1679 = zext i32 %1678 to i64
  store i64 %1679, i64* %RAX.i1036, align 8
  %1680 = add i64 %1673, -32
  %1681 = add i64 %1675, 7
  store i64 %1681, i64* %3, align 8
  %1682 = inttoptr i64 %1680 to i64*
  %1683 = load i64, i64* %1682, align 8
  store i64 %1683, i64* %RCX.i2020, align 8
  %1684 = add i64 %1673, -3418
  %1685 = add i64 %1675, 14
  store i64 %1685, i64* %3, align 8
  %1686 = inttoptr i64 %1684 to i16*
  %1687 = load i16, i16* %1686, align 2
  %1688 = zext i16 %1687 to i64
  store i64 %1688, i64* %RSI.i1998, align 8
  %1689 = zext i16 %1687 to i64
  store i64 %1689, i64* %RDX.i2023, align 8
  %1690 = shl nuw nsw i64 %1689, 2
  %1691 = add i64 %1683, %1690
  %1692 = add i64 %1675, 19
  store i64 %1692, i64* %3, align 8
  %1693 = inttoptr i64 %1691 to i32*
  store i32 %1678, i32* %1693, align 4
  %1694 = load i64, i64* %RBP.i, align 8
  %1695 = add i64 %1694, -52
  %1696 = load i64, i64* %3, align 8
  %1697 = add i64 %1696, 3
  store i64 %1697, i64* %3, align 8
  %1698 = inttoptr i64 %1695 to i32*
  %1699 = load i32, i32* %1698, align 4
  %1700 = add i32 %1699, -1
  %1701 = zext i32 %1700 to i64
  store i64 %1701, i64* %RAX.i1036, align 8
  %1702 = icmp eq i32 %1699, 0
  %1703 = zext i1 %1702 to i8
  store i8 %1703, i8* %14, align 1
  %1704 = and i32 %1700, 255
  %1705 = tail call i32 @llvm.ctpop.i32(i32 %1704)
  %1706 = trunc i32 %1705 to i8
  %1707 = and i8 %1706, 1
  %1708 = xor i8 %1707, 1
  store i8 %1708, i8* %21, align 1
  %1709 = xor i32 %1700, %1699
  %1710 = lshr i32 %1709, 4
  %1711 = trunc i32 %1710 to i8
  %1712 = and i8 %1711, 1
  store i8 %1712, i8* %27, align 1
  %1713 = icmp eq i32 %1700, 0
  %1714 = zext i1 %1713 to i8
  store i8 %1714, i8* %30, align 1
  %1715 = lshr i32 %1700, 31
  %1716 = trunc i32 %1715 to i8
  store i8 %1716, i8* %33, align 1
  %1717 = lshr i32 %1699, 31
  %1718 = xor i32 %1715, %1717
  %1719 = add nuw nsw i32 %1718, %1717
  %1720 = icmp eq i32 %1719, 2
  %1721 = zext i1 %1720 to i8
  store i8 %1721, i8* %39, align 1
  %1722 = add i64 %1694, -8
  %1723 = add i64 %1696, 10
  store i64 %1723, i64* %3, align 8
  %1724 = inttoptr i64 %1722 to i64*
  %1725 = load i64, i64* %1724, align 8
  store i64 %1725, i64* %RCX.i2020, align 8
  %1726 = add i64 %1694, -56
  %1727 = add i64 %1696, 14
  store i64 %1727, i64* %3, align 8
  %1728 = inttoptr i64 %1726 to i32*
  %1729 = load i32, i32* %1728, align 4
  %1730 = sext i32 %1729 to i64
  store i64 %1730, i64* %RDX.i2023, align 8
  %1731 = shl nsw i64 %1730, 2
  %1732 = add i64 %1731, %1725
  %1733 = add i64 %1696, 17
  store i64 %1733, i64* %3, align 8
  %1734 = inttoptr i64 %1732 to i32*
  store i32 %1700, i32* %1734, align 4
  %1735 = load i64, i64* %RBP.i, align 8
  %1736 = add i64 %1735, -3418
  %1737 = load i64, i64* %3, align 8
  %1738 = add i64 %1737, 7
  store i64 %1738, i64* %3, align 8
  %1739 = inttoptr i64 %1736 to i16*
  %1740 = load i16, i16* %1739, align 2
  %1741 = zext i16 %1740 to i64
  %1742 = lshr i64 %1741, 8
  %1743 = lshr i16 %1740, 7
  %1744 = trunc i16 %1743 to i8
  %1745 = and i8 %1744, 1
  %1746 = trunc i64 %1742 to i32
  store i64 %1742, i64* %RAX.i1036, align 8
  store i8 %1745, i8* %14, align 1
  %1747 = tail call i32 @llvm.ctpop.i32(i32 %1746)
  %1748 = trunc i32 %1747 to i8
  %1749 = and i8 %1748, 1
  %1750 = xor i8 %1749, 1
  store i8 %1750, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1751 = icmp eq i32 %1746, 0
  %1752 = zext i1 %1751 to i8
  store i8 %1752, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1753 = add i64 %1735, -16
  %1754 = add i64 %1737, 14
  store i64 %1754, i64* %3, align 8
  %1755 = inttoptr i64 %1753 to i64*
  %1756 = load i64, i64* %1755, align 8
  store i64 %1756, i64* %RCX.i2020, align 8
  %1757 = add i64 %1735, -52
  %1758 = add i64 %1737, 17
  store i64 %1758, i64* %3, align 8
  %1759 = inttoptr i64 %1757 to i32*
  %1760 = load i32, i32* %1759, align 4
  %1761 = add i32 %1760, -2
  %1762 = zext i32 %1761 to i64
  store i64 %1762, i64* %RSI.i1998, align 8
  %1763 = icmp ult i32 %1760, 2
  %1764 = zext i1 %1763 to i8
  store i8 %1764, i8* %14, align 1
  %1765 = and i32 %1761, 255
  %1766 = tail call i32 @llvm.ctpop.i32(i32 %1765)
  %1767 = trunc i32 %1766 to i8
  %1768 = and i8 %1767, 1
  %1769 = xor i8 %1768, 1
  store i8 %1769, i8* %21, align 1
  %1770 = xor i32 %1761, %1760
  %1771 = lshr i32 %1770, 4
  %1772 = trunc i32 %1771 to i8
  %1773 = and i8 %1772, 1
  store i8 %1773, i8* %27, align 1
  %1774 = icmp eq i32 %1761, 0
  %1775 = zext i1 %1774 to i8
  store i8 %1775, i8* %30, align 1
  %1776 = lshr i32 %1761, 31
  %1777 = trunc i32 %1776 to i8
  store i8 %1777, i8* %33, align 1
  %1778 = lshr i32 %1760, 31
  %1779 = xor i32 %1776, %1778
  %1780 = add nuw nsw i32 %1779, %1778
  %1781 = icmp eq i32 %1780, 2
  %1782 = zext i1 %1781 to i8
  store i8 %1782, i8* %39, align 1
  %1783 = sext i32 %1761 to i64
  store i64 %1783, i64* %RDX.i2023, align 8
  %1784 = add i64 %1756, %1783
  %1785 = add i64 %1737, 27
  store i64 %1785, i64* %3, align 8
  %1786 = inttoptr i64 %1784 to i8*
  %1787 = load i8, i8* %1786, align 1
  %1788 = zext i8 %1787 to i64
  %1789 = shl nuw nsw i64 %1788, 8
  store i64 %1789, i64* %RSI.i1998, align 8
  %1790 = or i64 %1789, %1742
  %1791 = trunc i64 %1790 to i32
  store i64 %1790, i64* %RAX.i1036, align 8
  store i8 0, i8* %14, align 1
  %1792 = and i32 %1791, 255
  %1793 = tail call i32 @llvm.ctpop.i32(i32 %1792)
  %1794 = trunc i32 %1793 to i8
  %1795 = and i8 %1794, 1
  %1796 = xor i8 %1795, 1
  store i8 %1796, i8* %21, align 1
  %1797 = icmp eq i32 %1791, 0
  %1798 = zext i1 %1797 to i8
  store i8 %1798, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1799 = trunc i64 %1790 to i16
  store i16 %1799, i16* %DI.i1678, align 2
  %1800 = load i64, i64* %RBP.i, align 8
  %1801 = add i64 %1800, -3418
  %1802 = add i64 %1737, 42
  store i64 %1802, i64* %3, align 8
  %1803 = inttoptr i64 %1801 to i16*
  store i16 %1799, i16* %1803, align 2
  %1804 = load i64, i64* %RBP.i, align 8
  %1805 = add i64 %1804, -32
  %1806 = load i64, i64* %3, align 8
  %1807 = add i64 %1806, 4
  store i64 %1807, i64* %3, align 8
  %1808 = inttoptr i64 %1805 to i64*
  %1809 = load i64, i64* %1808, align 8
  store i64 %1809, i64* %RCX.i2020, align 8
  %1810 = add i64 %1804, -3418
  %1811 = add i64 %1806, 11
  store i64 %1811, i64* %3, align 8
  %1812 = inttoptr i64 %1810 to i16*
  %1813 = load i16, i16* %1812, align 2
  %1814 = zext i16 %1813 to i64
  store i64 %1814, i64* %RAX.i1036, align 8
  %1815 = zext i16 %1813 to i64
  store i64 %1815, i64* %RDX.i2023, align 8
  %1816 = shl nuw nsw i64 %1815, 2
  %1817 = add i64 %1809, %1816
  %1818 = add i64 %1806, 16
  store i64 %1818, i64* %3, align 8
  %1819 = inttoptr i64 %1817 to i32*
  %1820 = load i32, i32* %1819, align 4
  %1821 = add i32 %1820, -1
  %1822 = zext i32 %1821 to i64
  store i64 %1822, i64* %RAX.i1036, align 8
  %1823 = icmp eq i32 %1820, 0
  %1824 = zext i1 %1823 to i8
  store i8 %1824, i8* %14, align 1
  %1825 = and i32 %1821, 255
  %1826 = tail call i32 @llvm.ctpop.i32(i32 %1825)
  %1827 = trunc i32 %1826 to i8
  %1828 = and i8 %1827, 1
  %1829 = xor i8 %1828, 1
  store i8 %1829, i8* %21, align 1
  %1830 = xor i32 %1821, %1820
  %1831 = lshr i32 %1830, 4
  %1832 = trunc i32 %1831 to i8
  %1833 = and i8 %1832, 1
  store i8 %1833, i8* %27, align 1
  %1834 = icmp eq i32 %1821, 0
  %1835 = zext i1 %1834 to i8
  store i8 %1835, i8* %30, align 1
  %1836 = lshr i32 %1821, 31
  %1837 = trunc i32 %1836 to i8
  store i8 %1837, i8* %33, align 1
  %1838 = lshr i32 %1820, 31
  %1839 = xor i32 %1836, %1838
  %1840 = add nuw nsw i32 %1839, %1838
  %1841 = icmp eq i32 %1840, 2
  %1842 = zext i1 %1841 to i8
  store i8 %1842, i8* %39, align 1
  %1843 = add i64 %1804, -56
  %1844 = add i64 %1806, 22
  store i64 %1844, i64* %3, align 8
  %1845 = inttoptr i64 %1843 to i32*
  store i32 %1821, i32* %1845, align 4
  %1846 = load i64, i64* %RBP.i, align 8
  %1847 = add i64 %1846, -56
  %1848 = load i64, i64* %3, align 8
  %1849 = add i64 %1848, 3
  store i64 %1849, i64* %3, align 8
  %1850 = inttoptr i64 %1847 to i32*
  %1851 = load i32, i32* %1850, align 4
  %1852 = zext i32 %1851 to i64
  store i64 %1852, i64* %RAX.i1036, align 8
  %1853 = add i64 %1846, -32
  %1854 = add i64 %1848, 7
  store i64 %1854, i64* %3, align 8
  %1855 = inttoptr i64 %1853 to i64*
  %1856 = load i64, i64* %1855, align 8
  store i64 %1856, i64* %RCX.i2020, align 8
  %1857 = add i64 %1846, -3418
  %1858 = add i64 %1848, 14
  store i64 %1858, i64* %3, align 8
  %1859 = inttoptr i64 %1857 to i16*
  %1860 = load i16, i16* %1859, align 2
  %1861 = zext i16 %1860 to i64
  store i64 %1861, i64* %RSI.i1998, align 8
  %1862 = zext i16 %1860 to i64
  store i64 %1862, i64* %RDX.i2023, align 8
  %1863 = shl nuw nsw i64 %1862, 2
  %1864 = add i64 %1856, %1863
  %1865 = add i64 %1848, 19
  store i64 %1865, i64* %3, align 8
  %1866 = inttoptr i64 %1864 to i32*
  store i32 %1851, i32* %1866, align 4
  %1867 = load i64, i64* %RBP.i, align 8
  %1868 = add i64 %1867, -52
  %1869 = load i64, i64* %3, align 8
  %1870 = add i64 %1869, 3
  store i64 %1870, i64* %3, align 8
  %1871 = inttoptr i64 %1868 to i32*
  %1872 = load i32, i32* %1871, align 4
  %1873 = add i32 %1872, -2
  %1874 = zext i32 %1873 to i64
  store i64 %1874, i64* %RAX.i1036, align 8
  %1875 = icmp ult i32 %1872, 2
  %1876 = zext i1 %1875 to i8
  store i8 %1876, i8* %14, align 1
  %1877 = and i32 %1873, 255
  %1878 = tail call i32 @llvm.ctpop.i32(i32 %1877)
  %1879 = trunc i32 %1878 to i8
  %1880 = and i8 %1879, 1
  %1881 = xor i8 %1880, 1
  store i8 %1881, i8* %21, align 1
  %1882 = xor i32 %1873, %1872
  %1883 = lshr i32 %1882, 4
  %1884 = trunc i32 %1883 to i8
  %1885 = and i8 %1884, 1
  store i8 %1885, i8* %27, align 1
  %1886 = icmp eq i32 %1873, 0
  %1887 = zext i1 %1886 to i8
  store i8 %1887, i8* %30, align 1
  %1888 = lshr i32 %1873, 31
  %1889 = trunc i32 %1888 to i8
  store i8 %1889, i8* %33, align 1
  %1890 = lshr i32 %1872, 31
  %1891 = xor i32 %1888, %1890
  %1892 = add nuw nsw i32 %1891, %1890
  %1893 = icmp eq i32 %1892, 2
  %1894 = zext i1 %1893 to i8
  store i8 %1894, i8* %39, align 1
  %1895 = add i64 %1867, -8
  %1896 = add i64 %1869, 10
  store i64 %1896, i64* %3, align 8
  %1897 = inttoptr i64 %1895 to i64*
  %1898 = load i64, i64* %1897, align 8
  store i64 %1898, i64* %RCX.i2020, align 8
  %1899 = add i64 %1867, -56
  %1900 = add i64 %1869, 14
  store i64 %1900, i64* %3, align 8
  %1901 = inttoptr i64 %1899 to i32*
  %1902 = load i32, i32* %1901, align 4
  %1903 = sext i32 %1902 to i64
  store i64 %1903, i64* %RDX.i2023, align 8
  %1904 = shl nsw i64 %1903, 2
  %1905 = add i64 %1904, %1898
  %1906 = add i64 %1869, 17
  store i64 %1906, i64* %3, align 8
  %1907 = inttoptr i64 %1905 to i32*
  store i32 %1873, i32* %1907, align 4
  %1908 = load i64, i64* %RBP.i, align 8
  %1909 = add i64 %1908, -3418
  %1910 = load i64, i64* %3, align 8
  %1911 = add i64 %1910, 7
  store i64 %1911, i64* %3, align 8
  %1912 = inttoptr i64 %1909 to i16*
  %1913 = load i16, i16* %1912, align 2
  %1914 = zext i16 %1913 to i64
  %1915 = lshr i64 %1914, 8
  %1916 = lshr i16 %1913, 7
  %1917 = trunc i16 %1916 to i8
  %1918 = and i8 %1917, 1
  %1919 = trunc i64 %1915 to i32
  store i64 %1915, i64* %RAX.i1036, align 8
  store i8 %1918, i8* %14, align 1
  %1920 = tail call i32 @llvm.ctpop.i32(i32 %1919)
  %1921 = trunc i32 %1920 to i8
  %1922 = and i8 %1921, 1
  %1923 = xor i8 %1922, 1
  store i8 %1923, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1924 = icmp eq i32 %1919, 0
  %1925 = zext i1 %1924 to i8
  store i8 %1925, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1926 = add i64 %1908, -16
  %1927 = add i64 %1910, 14
  store i64 %1927, i64* %3, align 8
  %1928 = inttoptr i64 %1926 to i64*
  %1929 = load i64, i64* %1928, align 8
  store i64 %1929, i64* %RCX.i2020, align 8
  %1930 = add i64 %1908, -52
  %1931 = add i64 %1910, 17
  store i64 %1931, i64* %3, align 8
  %1932 = inttoptr i64 %1930 to i32*
  %1933 = load i32, i32* %1932, align 4
  %1934 = add i32 %1933, -3
  %1935 = zext i32 %1934 to i64
  store i64 %1935, i64* %RSI.i1998, align 8
  %1936 = icmp ult i32 %1933, 3
  %1937 = zext i1 %1936 to i8
  store i8 %1937, i8* %14, align 1
  %1938 = and i32 %1934, 255
  %1939 = tail call i32 @llvm.ctpop.i32(i32 %1938)
  %1940 = trunc i32 %1939 to i8
  %1941 = and i8 %1940, 1
  %1942 = xor i8 %1941, 1
  store i8 %1942, i8* %21, align 1
  %1943 = xor i32 %1934, %1933
  %1944 = lshr i32 %1943, 4
  %1945 = trunc i32 %1944 to i8
  %1946 = and i8 %1945, 1
  store i8 %1946, i8* %27, align 1
  %1947 = icmp eq i32 %1934, 0
  %1948 = zext i1 %1947 to i8
  store i8 %1948, i8* %30, align 1
  %1949 = lshr i32 %1934, 31
  %1950 = trunc i32 %1949 to i8
  store i8 %1950, i8* %33, align 1
  %1951 = lshr i32 %1933, 31
  %1952 = xor i32 %1949, %1951
  %1953 = add nuw nsw i32 %1952, %1951
  %1954 = icmp eq i32 %1953, 2
  %1955 = zext i1 %1954 to i8
  store i8 %1955, i8* %39, align 1
  %1956 = sext i32 %1934 to i64
  store i64 %1956, i64* %RDX.i2023, align 8
  %1957 = add i64 %1929, %1956
  %1958 = add i64 %1910, 27
  store i64 %1958, i64* %3, align 8
  %1959 = inttoptr i64 %1957 to i8*
  %1960 = load i8, i8* %1959, align 1
  %1961 = zext i8 %1960 to i64
  %1962 = shl nuw nsw i64 %1961, 8
  store i64 %1962, i64* %RSI.i1998, align 8
  %1963 = or i64 %1962, %1915
  %1964 = trunc i64 %1963 to i32
  store i64 %1963, i64* %RAX.i1036, align 8
  store i8 0, i8* %14, align 1
  %1965 = and i32 %1964, 255
  %1966 = tail call i32 @llvm.ctpop.i32(i32 %1965)
  %1967 = trunc i32 %1966 to i8
  %1968 = and i8 %1967, 1
  %1969 = xor i8 %1968, 1
  store i8 %1969, i8* %21, align 1
  %1970 = icmp eq i32 %1964, 0
  %1971 = zext i1 %1970 to i8
  store i8 %1971, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1972 = trunc i64 %1963 to i16
  store i16 %1972, i16* %DI.i1678, align 2
  %1973 = load i64, i64* %RBP.i, align 8
  %1974 = add i64 %1973, -3418
  %1975 = add i64 %1910, 42
  store i64 %1975, i64* %3, align 8
  %1976 = inttoptr i64 %1974 to i16*
  store i16 %1972, i16* %1976, align 2
  %1977 = load i64, i64* %RBP.i, align 8
  %1978 = add i64 %1977, -32
  %1979 = load i64, i64* %3, align 8
  %1980 = add i64 %1979, 4
  store i64 %1980, i64* %3, align 8
  %1981 = inttoptr i64 %1978 to i64*
  %1982 = load i64, i64* %1981, align 8
  store i64 %1982, i64* %RCX.i2020, align 8
  %1983 = add i64 %1977, -3418
  %1984 = add i64 %1979, 11
  store i64 %1984, i64* %3, align 8
  %1985 = inttoptr i64 %1983 to i16*
  %1986 = load i16, i16* %1985, align 2
  %1987 = zext i16 %1986 to i64
  store i64 %1987, i64* %RAX.i1036, align 8
  %1988 = zext i16 %1986 to i64
  store i64 %1988, i64* %RDX.i2023, align 8
  %1989 = shl nuw nsw i64 %1988, 2
  %1990 = add i64 %1982, %1989
  %1991 = add i64 %1979, 16
  store i64 %1991, i64* %3, align 8
  %1992 = inttoptr i64 %1990 to i32*
  %1993 = load i32, i32* %1992, align 4
  %1994 = add i32 %1993, -1
  %1995 = zext i32 %1994 to i64
  store i64 %1995, i64* %RAX.i1036, align 8
  %1996 = icmp eq i32 %1993, 0
  %1997 = zext i1 %1996 to i8
  store i8 %1997, i8* %14, align 1
  %1998 = and i32 %1994, 255
  %1999 = tail call i32 @llvm.ctpop.i32(i32 %1998)
  %2000 = trunc i32 %1999 to i8
  %2001 = and i8 %2000, 1
  %2002 = xor i8 %2001, 1
  store i8 %2002, i8* %21, align 1
  %2003 = xor i32 %1994, %1993
  %2004 = lshr i32 %2003, 4
  %2005 = trunc i32 %2004 to i8
  %2006 = and i8 %2005, 1
  store i8 %2006, i8* %27, align 1
  %2007 = icmp eq i32 %1994, 0
  %2008 = zext i1 %2007 to i8
  store i8 %2008, i8* %30, align 1
  %2009 = lshr i32 %1994, 31
  %2010 = trunc i32 %2009 to i8
  store i8 %2010, i8* %33, align 1
  %2011 = lshr i32 %1993, 31
  %2012 = xor i32 %2009, %2011
  %2013 = add nuw nsw i32 %2012, %2011
  %2014 = icmp eq i32 %2013, 2
  %2015 = zext i1 %2014 to i8
  store i8 %2015, i8* %39, align 1
  %2016 = add i64 %1977, -56
  %2017 = add i64 %1979, 22
  store i64 %2017, i64* %3, align 8
  %2018 = inttoptr i64 %2016 to i32*
  store i32 %1994, i32* %2018, align 4
  %2019 = load i64, i64* %RBP.i, align 8
  %2020 = add i64 %2019, -56
  %2021 = load i64, i64* %3, align 8
  %2022 = add i64 %2021, 3
  store i64 %2022, i64* %3, align 8
  %2023 = inttoptr i64 %2020 to i32*
  %2024 = load i32, i32* %2023, align 4
  %2025 = zext i32 %2024 to i64
  store i64 %2025, i64* %RAX.i1036, align 8
  %2026 = add i64 %2019, -32
  %2027 = add i64 %2021, 7
  store i64 %2027, i64* %3, align 8
  %2028 = inttoptr i64 %2026 to i64*
  %2029 = load i64, i64* %2028, align 8
  store i64 %2029, i64* %RCX.i2020, align 8
  %2030 = add i64 %2019, -3418
  %2031 = add i64 %2021, 14
  store i64 %2031, i64* %3, align 8
  %2032 = inttoptr i64 %2030 to i16*
  %2033 = load i16, i16* %2032, align 2
  %2034 = zext i16 %2033 to i64
  store i64 %2034, i64* %RSI.i1998, align 8
  %2035 = zext i16 %2033 to i64
  store i64 %2035, i64* %RDX.i2023, align 8
  %2036 = shl nuw nsw i64 %2035, 2
  %2037 = add i64 %2029, %2036
  %2038 = add i64 %2021, 19
  store i64 %2038, i64* %3, align 8
  %2039 = inttoptr i64 %2037 to i32*
  store i32 %2024, i32* %2039, align 4
  %2040 = load i64, i64* %RBP.i, align 8
  %2041 = add i64 %2040, -52
  %2042 = load i64, i64* %3, align 8
  %2043 = add i64 %2042, 3
  store i64 %2043, i64* %3, align 8
  %2044 = inttoptr i64 %2041 to i32*
  %2045 = load i32, i32* %2044, align 4
  %2046 = add i32 %2045, -3
  %2047 = zext i32 %2046 to i64
  store i64 %2047, i64* %RAX.i1036, align 8
  %2048 = icmp ult i32 %2045, 3
  %2049 = zext i1 %2048 to i8
  store i8 %2049, i8* %14, align 1
  %2050 = and i32 %2046, 255
  %2051 = tail call i32 @llvm.ctpop.i32(i32 %2050)
  %2052 = trunc i32 %2051 to i8
  %2053 = and i8 %2052, 1
  %2054 = xor i8 %2053, 1
  store i8 %2054, i8* %21, align 1
  %2055 = xor i32 %2046, %2045
  %2056 = lshr i32 %2055, 4
  %2057 = trunc i32 %2056 to i8
  %2058 = and i8 %2057, 1
  store i8 %2058, i8* %27, align 1
  %2059 = icmp eq i32 %2046, 0
  %2060 = zext i1 %2059 to i8
  store i8 %2060, i8* %30, align 1
  %2061 = lshr i32 %2046, 31
  %2062 = trunc i32 %2061 to i8
  store i8 %2062, i8* %33, align 1
  %2063 = lshr i32 %2045, 31
  %2064 = xor i32 %2061, %2063
  %2065 = add nuw nsw i32 %2064, %2063
  %2066 = icmp eq i32 %2065, 2
  %2067 = zext i1 %2066 to i8
  store i8 %2067, i8* %39, align 1
  %2068 = add i64 %2040, -8
  %2069 = add i64 %2042, 10
  store i64 %2069, i64* %3, align 8
  %2070 = inttoptr i64 %2068 to i64*
  %2071 = load i64, i64* %2070, align 8
  store i64 %2071, i64* %RCX.i2020, align 8
  %2072 = add i64 %2040, -56
  %2073 = add i64 %2042, 14
  store i64 %2073, i64* %3, align 8
  %2074 = inttoptr i64 %2072 to i32*
  %2075 = load i32, i32* %2074, align 4
  %2076 = sext i32 %2075 to i64
  store i64 %2076, i64* %RDX.i2023, align 8
  %2077 = shl nsw i64 %2076, 2
  %2078 = add i64 %2077, %2071
  %2079 = add i64 %2042, 17
  store i64 %2079, i64* %3, align 8
  %2080 = inttoptr i64 %2078 to i32*
  store i32 %2046, i32* %2080, align 4
  %2081 = load i64, i64* %RBP.i, align 8
  %2082 = add i64 %2081, -52
  %2083 = load i64, i64* %3, align 8
  %2084 = add i64 %2083, 3
  store i64 %2084, i64* %3, align 8
  %2085 = inttoptr i64 %2082 to i32*
  %2086 = load i32, i32* %2085, align 4
  %2087 = add i32 %2086, -4
  %2088 = zext i32 %2087 to i64
  store i64 %2088, i64* %RAX.i1036, align 8
  %2089 = icmp ult i32 %2086, 4
  %2090 = zext i1 %2089 to i8
  store i8 %2090, i8* %14, align 1
  %2091 = and i32 %2087, 255
  %2092 = tail call i32 @llvm.ctpop.i32(i32 %2091)
  %2093 = trunc i32 %2092 to i8
  %2094 = and i8 %2093, 1
  %2095 = xor i8 %2094, 1
  store i8 %2095, i8* %21, align 1
  %2096 = xor i32 %2087, %2086
  %2097 = lshr i32 %2096, 4
  %2098 = trunc i32 %2097 to i8
  %2099 = and i8 %2098, 1
  store i8 %2099, i8* %27, align 1
  %2100 = icmp eq i32 %2087, 0
  %2101 = zext i1 %2100 to i8
  store i8 %2101, i8* %30, align 1
  %2102 = lshr i32 %2087, 31
  %2103 = trunc i32 %2102 to i8
  store i8 %2103, i8* %33, align 1
  %2104 = lshr i32 %2086, 31
  %2105 = xor i32 %2102, %2104
  %2106 = add nuw nsw i32 %2105, %2104
  %2107 = icmp eq i32 %2106, 2
  %2108 = zext i1 %2107 to i8
  store i8 %2108, i8* %39, align 1
  %2109 = add i64 %2083, 9
  store i64 %2109, i64* %3, align 8
  store i32 %2087, i32* %2085, align 4
  %2110 = load i64, i64* %3, align 8
  %2111 = add i64 %2110, -411
  store i64 %2111, i64* %3, align 8
  br label %block_.L_4019ce

block_.L_401b6e:                                  ; preds = %block_.L_4019ce
  %2112 = add i64 %1438, 5
  br label %block_.L_401b73

block_.L_401b73:                                  ; preds = %block_401b7d, %block_.L_401b6e
  %2113 = phi i64 [ %1410, %block_.L_401b6e ], [ %.pre168, %block_401b7d ]
  %storemerge50 = phi i64 [ %2112, %block_.L_401b6e ], [ %2284, %block_401b7d ]
  %2114 = add i64 %2113, -52
  %2115 = add i64 %storemerge50, 4
  store i64 %2115, i64* %3, align 8
  %2116 = inttoptr i64 %2114 to i32*
  %2117 = load i32, i32* %2116, align 4
  store i8 0, i8* %14, align 1
  %2118 = and i32 %2117, 255
  %2119 = tail call i32 @llvm.ctpop.i32(i32 %2118)
  %2120 = trunc i32 %2119 to i8
  %2121 = and i8 %2120, 1
  %2122 = xor i8 %2121, 1
  store i8 %2122, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2123 = icmp eq i32 %2117, 0
  %2124 = zext i1 %2123 to i8
  store i8 %2124, i8* %30, align 1
  %2125 = lshr i32 %2117, 31
  %2126 = trunc i32 %2125 to i8
  store i8 %2126, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2127 = icmp ne i8 %2126, 0
  %.v70 = select i1 %2127, i64 112, i64 6
  %2128 = add i64 %2115, %.v70
  store i64 %2128, i64* %3, align 8
  br i1 %2127, label %block_.L_401be7, label %block_401b7d

block_401b7d:                                     ; preds = %block_.L_401b73
  %2129 = add i64 %2113, -3418
  %2130 = add i64 %2128, 7
  store i64 %2130, i64* %3, align 8
  %2131 = inttoptr i64 %2129 to i16*
  %2132 = load i16, i16* %2131, align 2
  %2133 = zext i16 %2132 to i64
  %2134 = lshr i64 %2133, 8
  %2135 = lshr i16 %2132, 7
  %2136 = trunc i16 %2135 to i8
  %2137 = and i8 %2136, 1
  %2138 = trunc i64 %2134 to i32
  store i64 %2134, i64* %RAX.i1036, align 8
  store i8 %2137, i8* %14, align 1
  %2139 = tail call i32 @llvm.ctpop.i32(i32 %2138)
  %2140 = trunc i32 %2139 to i8
  %2141 = and i8 %2140, 1
  %2142 = xor i8 %2141, 1
  store i8 %2142, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2143 = icmp eq i32 %2138, 0
  %2144 = zext i1 %2143 to i8
  store i8 %2144, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2145 = add i64 %2113, -16
  %2146 = add i64 %2128, 14
  store i64 %2146, i64* %3, align 8
  %2147 = inttoptr i64 %2145 to i64*
  %2148 = load i64, i64* %2147, align 8
  store i64 %2148, i64* %RCX.i2020, align 8
  %2149 = add i64 %2128, 18
  store i64 %2149, i64* %3, align 8
  %2150 = load i32, i32* %2116, align 4
  %2151 = sext i32 %2150 to i64
  store i64 %2151, i64* %RDX.i2023, align 8
  %2152 = add i64 %2148, %2151
  %2153 = add i64 %2128, 22
  store i64 %2153, i64* %3, align 8
  %2154 = inttoptr i64 %2152 to i8*
  %2155 = load i8, i8* %2154, align 1
  %2156 = zext i8 %2155 to i64
  %2157 = shl nuw nsw i64 %2156, 8
  store i64 %2157, i64* %RSI.i1998, align 8
  %2158 = or i64 %2157, %2134
  %2159 = trunc i64 %2158 to i32
  store i64 %2158, i64* %RAX.i1036, align 8
  store i8 0, i8* %14, align 1
  %2160 = and i32 %2159, 255
  %2161 = tail call i32 @llvm.ctpop.i32(i32 %2160)
  %2162 = trunc i32 %2161 to i8
  %2163 = and i8 %2162, 1
  %2164 = xor i8 %2163, 1
  store i8 %2164, i8* %21, align 1
  %2165 = icmp eq i32 %2159, 0
  %2166 = zext i1 %2165 to i8
  store i8 %2166, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %2167 = trunc i64 %2158 to i16
  store i16 %2167, i16* %DI.i1678, align 2
  %2168 = add i64 %2128, 37
  store i64 %2168, i64* %3, align 8
  store i16 %2167, i16* %2131, align 2
  %2169 = load i64, i64* %RBP.i, align 8
  %2170 = add i64 %2169, -32
  %2171 = load i64, i64* %3, align 8
  %2172 = add i64 %2171, 4
  store i64 %2172, i64* %3, align 8
  %2173 = inttoptr i64 %2170 to i64*
  %2174 = load i64, i64* %2173, align 8
  store i64 %2174, i64* %RCX.i2020, align 8
  %2175 = add i64 %2169, -3418
  %2176 = add i64 %2171, 11
  store i64 %2176, i64* %3, align 8
  %2177 = inttoptr i64 %2175 to i16*
  %2178 = load i16, i16* %2177, align 2
  %2179 = zext i16 %2178 to i64
  store i64 %2179, i64* %RAX.i1036, align 8
  %2180 = zext i16 %2178 to i64
  store i64 %2180, i64* %RDX.i2023, align 8
  %2181 = shl nuw nsw i64 %2180, 2
  %2182 = add i64 %2174, %2181
  %2183 = add i64 %2171, 16
  store i64 %2183, i64* %3, align 8
  %2184 = inttoptr i64 %2182 to i32*
  %2185 = load i32, i32* %2184, align 4
  %2186 = add i32 %2185, -1
  %2187 = zext i32 %2186 to i64
  store i64 %2187, i64* %RAX.i1036, align 8
  %2188 = icmp eq i32 %2185, 0
  %2189 = zext i1 %2188 to i8
  store i8 %2189, i8* %14, align 1
  %2190 = and i32 %2186, 255
  %2191 = tail call i32 @llvm.ctpop.i32(i32 %2190)
  %2192 = trunc i32 %2191 to i8
  %2193 = and i8 %2192, 1
  %2194 = xor i8 %2193, 1
  store i8 %2194, i8* %21, align 1
  %2195 = xor i32 %2186, %2185
  %2196 = lshr i32 %2195, 4
  %2197 = trunc i32 %2196 to i8
  %2198 = and i8 %2197, 1
  store i8 %2198, i8* %27, align 1
  %2199 = icmp eq i32 %2186, 0
  %2200 = zext i1 %2199 to i8
  store i8 %2200, i8* %30, align 1
  %2201 = lshr i32 %2186, 31
  %2202 = trunc i32 %2201 to i8
  store i8 %2202, i8* %33, align 1
  %2203 = lshr i32 %2185, 31
  %2204 = xor i32 %2201, %2203
  %2205 = add nuw nsw i32 %2204, %2203
  %2206 = icmp eq i32 %2205, 2
  %2207 = zext i1 %2206 to i8
  store i8 %2207, i8* %39, align 1
  %2208 = add i64 %2169, -56
  %2209 = add i64 %2171, 22
  store i64 %2209, i64* %3, align 8
  %2210 = inttoptr i64 %2208 to i32*
  store i32 %2186, i32* %2210, align 4
  %2211 = load i64, i64* %RBP.i, align 8
  %2212 = add i64 %2211, -56
  %2213 = load i64, i64* %3, align 8
  %2214 = add i64 %2213, 3
  store i64 %2214, i64* %3, align 8
  %2215 = inttoptr i64 %2212 to i32*
  %2216 = load i32, i32* %2215, align 4
  %2217 = zext i32 %2216 to i64
  store i64 %2217, i64* %RAX.i1036, align 8
  %2218 = add i64 %2211, -32
  %2219 = add i64 %2213, 7
  store i64 %2219, i64* %3, align 8
  %2220 = inttoptr i64 %2218 to i64*
  %2221 = load i64, i64* %2220, align 8
  store i64 %2221, i64* %RCX.i2020, align 8
  %2222 = add i64 %2211, -3418
  %2223 = add i64 %2213, 14
  store i64 %2223, i64* %3, align 8
  %2224 = inttoptr i64 %2222 to i16*
  %2225 = load i16, i16* %2224, align 2
  %2226 = zext i16 %2225 to i64
  store i64 %2226, i64* %RSI.i1998, align 8
  %2227 = zext i16 %2225 to i64
  store i64 %2227, i64* %RDX.i2023, align 8
  %2228 = shl nuw nsw i64 %2227, 2
  %2229 = add i64 %2221, %2228
  %2230 = add i64 %2213, 19
  store i64 %2230, i64* %3, align 8
  %2231 = inttoptr i64 %2229 to i32*
  store i32 %2216, i32* %2231, align 4
  %2232 = load i64, i64* %RBP.i, align 8
  %2233 = add i64 %2232, -52
  %2234 = load i64, i64* %3, align 8
  %2235 = add i64 %2234, 3
  store i64 %2235, i64* %3, align 8
  %2236 = inttoptr i64 %2233 to i32*
  %2237 = load i32, i32* %2236, align 4
  %2238 = zext i32 %2237 to i64
  store i64 %2238, i64* %RAX.i1036, align 8
  %2239 = add i64 %2232, -8
  %2240 = add i64 %2234, 7
  store i64 %2240, i64* %3, align 8
  %2241 = inttoptr i64 %2239 to i64*
  %2242 = load i64, i64* %2241, align 8
  store i64 %2242, i64* %RCX.i2020, align 8
  %2243 = add i64 %2232, -56
  %2244 = add i64 %2234, 11
  store i64 %2244, i64* %3, align 8
  %2245 = inttoptr i64 %2243 to i32*
  %2246 = load i32, i32* %2245, align 4
  %2247 = sext i32 %2246 to i64
  store i64 %2247, i64* %RDX.i2023, align 8
  %2248 = shl nsw i64 %2247, 2
  %2249 = add i64 %2248, %2242
  %2250 = add i64 %2234, 14
  store i64 %2250, i64* %3, align 8
  %2251 = inttoptr i64 %2249 to i32*
  store i32 %2237, i32* %2251, align 4
  %2252 = load i64, i64* %RBP.i, align 8
  %2253 = add i64 %2252, -52
  %2254 = load i64, i64* %3, align 8
  %2255 = add i64 %2254, 3
  store i64 %2255, i64* %3, align 8
  %2256 = inttoptr i64 %2253 to i32*
  %2257 = load i32, i32* %2256, align 4
  %2258 = add i32 %2257, -1
  %2259 = zext i32 %2258 to i64
  store i64 %2259, i64* %RAX.i1036, align 8
  %2260 = icmp ne i32 %2257, 0
  %2261 = zext i1 %2260 to i8
  store i8 %2261, i8* %14, align 1
  %2262 = and i32 %2258, 255
  %2263 = tail call i32 @llvm.ctpop.i32(i32 %2262)
  %2264 = trunc i32 %2263 to i8
  %2265 = and i8 %2264, 1
  %2266 = xor i8 %2265, 1
  store i8 %2266, i8* %21, align 1
  %2267 = xor i32 %2257, 16
  %2268 = xor i32 %2267, %2258
  %2269 = lshr i32 %2268, 4
  %2270 = trunc i32 %2269 to i8
  %2271 = and i8 %2270, 1
  store i8 %2271, i8* %27, align 1
  %2272 = icmp eq i32 %2258, 0
  %2273 = zext i1 %2272 to i8
  store i8 %2273, i8* %30, align 1
  %2274 = lshr i32 %2258, 31
  %2275 = trunc i32 %2274 to i8
  store i8 %2275, i8* %33, align 1
  %2276 = lshr i32 %2257, 31
  %2277 = xor i32 %2274, %2276
  %2278 = xor i32 %2274, 1
  %2279 = add nuw nsw i32 %2277, %2278
  %2280 = icmp eq i32 %2279, 2
  %2281 = zext i1 %2280 to i8
  store i8 %2281, i8* %39, align 1
  %2282 = add i64 %2254, 9
  store i64 %2282, i64* %3, align 8
  store i32 %2258, i32* %2256, align 4
  %2283 = load i64, i64* %3, align 8
  %2284 = add i64 %2283, -111
  %2285 = add i64 %2283, 5
  store i64 %2285, i64* %3, align 8
  %.pre168 = load i64, i64* %RBP.i, align 8
  br label %block_.L_401b73

block_.L_401be7:                                  ; preds = %block_.L_401b73
  %2286 = add i64 %2128, 7
  store i64 %2286, i64* %3, align 8
  store i32 0, i32* %2116, align 4
  %.pre169 = load i64, i64* %3, align 8
  br label %block_.L_401bee

block_.L_401bee:                                  ; preds = %block_401bfb, %block_.L_401be7
  %2287 = phi i64 [ %2371, %block_401bfb ], [ %.pre169, %block_.L_401be7 ]
  %2288 = load i64, i64* %RBP.i, align 8
  %2289 = add i64 %2288, -52
  %2290 = add i64 %2287, 7
  store i64 %2290, i64* %3, align 8
  %2291 = inttoptr i64 %2289 to i32*
  %2292 = load i32, i32* %2291, align 4
  %2293 = add i32 %2292, -255
  %2294 = icmp ult i32 %2292, 255
  %2295 = zext i1 %2294 to i8
  store i8 %2295, i8* %14, align 1
  %2296 = and i32 %2293, 255
  %2297 = tail call i32 @llvm.ctpop.i32(i32 %2296)
  %2298 = trunc i32 %2297 to i8
  %2299 = and i8 %2298, 1
  %2300 = xor i8 %2299, 1
  store i8 %2300, i8* %21, align 1
  %2301 = xor i32 %2292, 16
  %2302 = xor i32 %2301, %2293
  %2303 = lshr i32 %2302, 4
  %2304 = trunc i32 %2303 to i8
  %2305 = and i8 %2304, 1
  store i8 %2305, i8* %27, align 1
  %2306 = icmp eq i32 %2293, 0
  %2307 = zext i1 %2306 to i8
  store i8 %2307, i8* %30, align 1
  %2308 = lshr i32 %2293, 31
  %2309 = trunc i32 %2308 to i8
  store i8 %2309, i8* %33, align 1
  %2310 = lshr i32 %2292, 31
  %2311 = xor i32 %2308, %2310
  %2312 = add nuw nsw i32 %2311, %2310
  %2313 = icmp eq i32 %2312, 2
  %2314 = zext i1 %2313 to i8
  store i8 %2314, i8* %39, align 1
  %2315 = icmp ne i8 %2309, 0
  %2316 = xor i1 %2315, %2313
  %.demorgan210 = or i1 %2306, %2316
  %.v226 = select i1 %.demorgan210, i64 13, i64 53
  %2317 = add i64 %2287, %.v226
  store i64 %2317, i64* %3, align 8
  br i1 %.demorgan210, label %block_401bfb, label %block_.L_401c23

block_401bfb:                                     ; preds = %block_.L_401bee
  %2318 = add i64 %2317, 4
  store i64 %2318, i64* %3, align 8
  %2319 = load i32, i32* %2291, align 4
  %2320 = sext i32 %2319 to i64
  store i64 %2320, i64* %RAX.i1036, align 8
  %2321 = add nsw i64 %2320, -1360
  %2322 = add i64 %2321, %2288
  %2323 = add i64 %2317, 12
  store i64 %2323, i64* %3, align 8
  %2324 = inttoptr i64 %2322 to i8*
  store i8 0, i8* %2324, align 1
  %2325 = load i64, i64* %RBP.i, align 8
  %2326 = add i64 %2325, -52
  %2327 = load i64, i64* %3, align 8
  %2328 = add i64 %2327, 3
  store i64 %2328, i64* %3, align 8
  %2329 = inttoptr i64 %2326 to i32*
  %2330 = load i32, i32* %2329, align 4
  %2331 = zext i32 %2330 to i64
  store i64 %2331, i64* %RCX.i2020, align 8
  %2332 = add i64 %2327, 7
  store i64 %2332, i64* %3, align 8
  %2333 = load i32, i32* %2329, align 4
  %2334 = sext i32 %2333 to i64
  store i64 %2334, i64* %RAX.i1036, align 8
  %2335 = shl nsw i64 %2334, 2
  %2336 = add i64 %2325, -1104
  %2337 = add i64 %2336, %2335
  %2338 = add i64 %2327, 14
  store i64 %2338, i64* %3, align 8
  %2339 = inttoptr i64 %2337 to i32*
  store i32 %2330, i32* %2339, align 4
  %2340 = load i64, i64* %RBP.i, align 8
  %2341 = add i64 %2340, -52
  %2342 = load i64, i64* %3, align 8
  %2343 = add i64 %2342, 3
  store i64 %2343, i64* %3, align 8
  %2344 = inttoptr i64 %2341 to i32*
  %2345 = load i32, i32* %2344, align 4
  %2346 = add i32 %2345, 1
  %2347 = zext i32 %2346 to i64
  store i64 %2347, i64* %RAX.i1036, align 8
  %2348 = icmp eq i32 %2345, -1
  %2349 = icmp eq i32 %2346, 0
  %2350 = or i1 %2348, %2349
  %2351 = zext i1 %2350 to i8
  store i8 %2351, i8* %14, align 1
  %2352 = and i32 %2346, 255
  %2353 = tail call i32 @llvm.ctpop.i32(i32 %2352)
  %2354 = trunc i32 %2353 to i8
  %2355 = and i8 %2354, 1
  %2356 = xor i8 %2355, 1
  store i8 %2356, i8* %21, align 1
  %2357 = xor i32 %2346, %2345
  %2358 = lshr i32 %2357, 4
  %2359 = trunc i32 %2358 to i8
  %2360 = and i8 %2359, 1
  store i8 %2360, i8* %27, align 1
  %2361 = zext i1 %2349 to i8
  store i8 %2361, i8* %30, align 1
  %2362 = lshr i32 %2346, 31
  %2363 = trunc i32 %2362 to i8
  store i8 %2363, i8* %33, align 1
  %2364 = lshr i32 %2345, 31
  %2365 = xor i32 %2362, %2364
  %2366 = add nuw nsw i32 %2365, %2362
  %2367 = icmp eq i32 %2366, 2
  %2368 = zext i1 %2367 to i8
  store i8 %2368, i8* %39, align 1
  %2369 = add i64 %2342, 9
  store i64 %2369, i64* %3, align 8
  store i32 %2346, i32* %2344, align 4
  %2370 = load i64, i64* %3, align 8
  %2371 = add i64 %2370, -48
  store i64 %2371, i64* %3, align 8
  br label %block_.L_401bee

block_.L_401c23:                                  ; preds = %block_.L_401bee
  %2372 = add i64 %2288, -3428
  %2373 = add i64 %2317, 10
  store i64 %2373, i64* %3, align 8
  %2374 = inttoptr i64 %2372 to i32*
  store i32 1, i32* %2374, align 4
  %.pre170 = load i64, i64* %RBP.i, align 8
  %.pre171 = load i64, i64* %3, align 8
  br label %block_.L_401c2d

block_.L_401c2d:                                  ; preds = %block_.L_401c2d, %block_.L_401c23
  %2375 = phi i64 [ %2436, %block_.L_401c2d ], [ %.pre171, %block_.L_401c23 ]
  %2376 = phi i64 [ %2406, %block_.L_401c2d ], [ %.pre170, %block_.L_401c23 ]
  %2377 = add i64 %2376, -3428
  %2378 = add i64 %2375, 7
  store i64 %2378, i64* %3, align 8
  %2379 = inttoptr i64 %2377 to i32*
  %2380 = load i32, i32* %2379, align 4
  %2381 = mul i32 %2380, 3
  %2382 = add i32 %2381, 1
  %2383 = zext i32 %2382 to i64
  store i64 %2383, i64* %RAX.i1036, align 8
  %2384 = icmp eq i32 %2381, -1
  %2385 = icmp eq i32 %2382, 0
  %2386 = or i1 %2384, %2385
  %2387 = zext i1 %2386 to i8
  store i8 %2387, i8* %14, align 1
  %2388 = and i32 %2382, 255
  %2389 = tail call i32 @llvm.ctpop.i32(i32 %2388)
  %2390 = trunc i32 %2389 to i8
  %2391 = and i8 %2390, 1
  %2392 = xor i8 %2391, 1
  store i8 %2392, i8* %21, align 1
  %2393 = xor i32 %2382, %2381
  %2394 = lshr i32 %2393, 4
  %2395 = trunc i32 %2394 to i8
  %2396 = and i8 %2395, 1
  store i8 %2396, i8* %27, align 1
  %2397 = zext i1 %2385 to i8
  store i8 %2397, i8* %30, align 1
  %2398 = lshr i32 %2382, 31
  %2399 = trunc i32 %2398 to i8
  store i8 %2399, i8* %33, align 1
  %2400 = lshr i32 %2381, 31
  %2401 = xor i32 %2398, %2400
  %2402 = add nuw nsw i32 %2401, %2398
  %2403 = icmp eq i32 %2402, 2
  %2404 = zext i1 %2403 to i8
  store i8 %2404, i8* %39, align 1
  %2405 = add i64 %2375, 16
  store i64 %2405, i64* %3, align 8
  store i32 %2382, i32* %2379, align 4
  %2406 = load i64, i64* %RBP.i, align 8
  %2407 = add i64 %2406, -3428
  %2408 = load i64, i64* %3, align 8
  %2409 = add i64 %2408, 10
  store i64 %2409, i64* %3, align 8
  %2410 = inttoptr i64 %2407 to i32*
  %2411 = load i32, i32* %2410, align 4
  %2412 = add i32 %2411, -256
  %2413 = icmp ult i32 %2411, 256
  %2414 = zext i1 %2413 to i8
  store i8 %2414, i8* %14, align 1
  %2415 = and i32 %2412, 255
  %2416 = tail call i32 @llvm.ctpop.i32(i32 %2415)
  %2417 = trunc i32 %2416 to i8
  %2418 = and i8 %2417, 1
  %2419 = xor i8 %2418, 1
  store i8 %2419, i8* %21, align 1
  %2420 = xor i32 %2412, %2411
  %2421 = lshr i32 %2420, 4
  %2422 = trunc i32 %2421 to i8
  %2423 = and i8 %2422, 1
  store i8 %2423, i8* %27, align 1
  %2424 = icmp eq i32 %2412, 0
  %2425 = zext i1 %2424 to i8
  store i8 %2425, i8* %30, align 1
  %2426 = lshr i32 %2412, 31
  %2427 = trunc i32 %2426 to i8
  store i8 %2427, i8* %33, align 1
  %2428 = lshr i32 %2411, 31
  %2429 = xor i32 %2426, %2428
  %2430 = add nuw nsw i32 %2429, %2428
  %2431 = icmp eq i32 %2430, 2
  %2432 = zext i1 %2431 to i8
  store i8 %2432, i8* %39, align 1
  %2433 = icmp ne i8 %2427, 0
  %2434 = xor i1 %2433, %2431
  %2435 = or i1 %2424, %2434
  %.v227 = select i1 %2435, i64 -16, i64 16
  %2436 = add i64 %2408, %.v227
  store i64 %2436, i64* %3, align 8
  br i1 %2435, label %block_.L_401c2d, label %block_401c4d

block_401c4d:                                     ; preds = %block_.L_401c2d
  %2437 = add i64 %2436, 5
  store i64 %2437, i64* %3, align 8
  %2438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  br label %block_.L_401c52

block_.L_401c52:                                  ; preds = %block_.L_401d81, %block_401c4d
  %2439 = phi i64 [ %2406, %block_401c4d ], [ %2493, %block_.L_401d81 ]
  %2440 = phi i64 [ %2437, %block_401c4d ], [ %2979, %block_.L_401d81 ]
  %MEMORY.11 = phi %struct.Memory* [ %MEMORY.5, %block_401c4d ], [ %2478, %block_.L_401d81 ]
  store i64 3, i64* %RAX.i1036, align 8
  %2441 = add i64 %2439, -3428
  %2442 = add i64 %2440, 11
  store i64 %2442, i64* %3, align 8
  %2443 = inttoptr i64 %2441 to i32*
  %2444 = load i32, i32* %2443, align 4
  %2445 = zext i32 %2444 to i64
  store i64 %2445, i64* %RCX.i2020, align 8
  %2446 = add i64 %2439, -3468
  %2447 = add i64 %2440, 17
  store i64 %2447, i64* %3, align 8
  %2448 = inttoptr i64 %2446 to i32*
  store i32 3, i32* %2448, align 4
  %2449 = load i32, i32* %ECX.i1961, align 4
  %2450 = zext i32 %2449 to i64
  %2451 = load i64, i64* %3, align 8
  store i64 %2450, i64* %RAX.i1036, align 8
  %2452 = sext i32 %2449 to i64
  %2453 = lshr i64 %2452, 32
  store i64 %2453, i64* %2438, align 8
  %2454 = load i64, i64* %RBP.i, align 8
  %2455 = add i64 %2454, -3468
  %2456 = add i64 %2451, 9
  store i64 %2456, i64* %3, align 8
  %2457 = inttoptr i64 %2455 to i32*
  %2458 = load i32, i32* %2457, align 4
  %2459 = zext i32 %2458 to i64
  store i64 %2459, i64* %RCX.i2020, align 8
  %2460 = add i64 %2451, 11
  store i64 %2460, i64* %3, align 8
  %2461 = sext i32 %2458 to i64
  %2462 = shl nuw i64 %2453, 32
  %2463 = or i64 %2462, %2450
  %2464 = sdiv i64 %2463, %2461
  %2465 = shl i64 %2464, 32
  %2466 = ashr exact i64 %2465, 32
  %2467 = icmp eq i64 %2464, %2466
  br i1 %2467, label %2470, label %2468

; <label>:2468:                                   ; preds = %block_.L_401c52
  %2469 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2460, %struct.Memory* %MEMORY.11)
  %.pre172 = load i64, i64* %RBP.i, align 8
  %.pre173 = load i32, i32* %EAX.i1973.pre-phi, align 4
  %.pre174 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit

; <label>:2470:                                   ; preds = %block_.L_401c52
  %2471 = srem i64 %2463, %2461
  %2472 = and i64 %2464, 4294967295
  store i64 %2472, i64* %RAX.i1036, align 8
  %2473 = and i64 %2471, 4294967295
  store i64 %2473, i64* %RDX.i2023, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2474 = trunc i64 %2464 to i32
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %2470, %2468
  %2475 = phi i64 [ %.pre174, %2468 ], [ %2460, %2470 ]
  %2476 = phi i32 [ %.pre173, %2468 ], [ %2474, %2470 ]
  %2477 = phi i64 [ %.pre172, %2468 ], [ %2454, %2470 ]
  %2478 = phi %struct.Memory* [ %2469, %2468 ], [ %MEMORY.11, %2470 ]
  %2479 = add i64 %2477, -3428
  %2480 = add i64 %2475, 6
  store i64 %2480, i64* %3, align 8
  %2481 = inttoptr i64 %2479 to i32*
  store i32 %2476, i32* %2481, align 4
  %2482 = load i64, i64* %RBP.i, align 8
  %2483 = add i64 %2482, -3428
  %2484 = load i64, i64* %3, align 8
  %2485 = add i64 %2484, 6
  store i64 %2485, i64* %3, align 8
  %2486 = inttoptr i64 %2483 to i32*
  %2487 = load i32, i32* %2486, align 4
  %2488 = zext i32 %2487 to i64
  store i64 %2488, i64* %RAX.i1036, align 8
  %2489 = add i64 %2482, -52
  %2490 = add i64 %2484, 9
  store i64 %2490, i64* %3, align 8
  %2491 = inttoptr i64 %2489 to i32*
  store i32 %2487, i32* %2491, align 4
  %.pre175 = load i64, i64* %3, align 8
  br label %block_.L_401c7d

block_.L_401c7d:                                  ; preds = %block_.L_401d62, %routine_idivl__ecx.exit
  %2492 = phi i64 [ %2953, %block_.L_401d62 ], [ %.pre175, %routine_idivl__ecx.exit ]
  %2493 = load i64, i64* %RBP.i, align 8
  %2494 = add i64 %2493, -52
  %2495 = add i64 %2492, 7
  store i64 %2495, i64* %3, align 8
  %2496 = inttoptr i64 %2494 to i32*
  %2497 = load i32, i32* %2496, align 4
  %2498 = add i32 %2497, -255
  %2499 = icmp ult i32 %2497, 255
  %2500 = zext i1 %2499 to i8
  store i8 %2500, i8* %14, align 1
  %2501 = and i32 %2498, 255
  %2502 = tail call i32 @llvm.ctpop.i32(i32 %2501)
  %2503 = trunc i32 %2502 to i8
  %2504 = and i8 %2503, 1
  %2505 = xor i8 %2504, 1
  store i8 %2505, i8* %21, align 1
  %2506 = xor i32 %2497, 16
  %2507 = xor i32 %2506, %2498
  %2508 = lshr i32 %2507, 4
  %2509 = trunc i32 %2508 to i8
  %2510 = and i8 %2509, 1
  store i8 %2510, i8* %27, align 1
  %2511 = icmp eq i32 %2498, 0
  %2512 = zext i1 %2511 to i8
  store i8 %2512, i8* %30, align 1
  %2513 = lshr i32 %2498, 31
  %2514 = trunc i32 %2513 to i8
  store i8 %2514, i8* %33, align 1
  %2515 = lshr i32 %2497, 31
  %2516 = xor i32 %2513, %2515
  %2517 = add nuw nsw i32 %2516, %2515
  %2518 = icmp eq i32 %2517, 2
  %2519 = zext i1 %2518 to i8
  store i8 %2519, i8* %39, align 1
  %2520 = icmp ne i8 %2514, 0
  %2521 = xor i1 %2520, %2518
  %.demorgan211 = or i1 %2511, %2521
  %.v213 = select i1 %.demorgan211, i64 13, i64 260
  %2522 = add i64 %2492, %.v213
  store i64 %2522, i64* %3, align 8
  br i1 %.demorgan211, label %block_401c8a, label %block_.L_401d81

block_401c8a:                                     ; preds = %block_.L_401c7d
  %2523 = add i64 %2522, 4
  store i64 %2523, i64* %3, align 8
  %2524 = load i32, i32* %2496, align 4
  %2525 = sext i32 %2524 to i64
  store i64 %2525, i64* %RAX.i1036, align 8
  %2526 = shl nsw i64 %2525, 2
  %2527 = add i64 %2493, -1104
  %2528 = add i64 %2527, %2526
  %2529 = add i64 %2522, 11
  store i64 %2529, i64* %3, align 8
  %2530 = inttoptr i64 %2528 to i32*
  %2531 = load i32, i32* %2530, align 4
  %2532 = zext i32 %2531 to i64
  store i64 %2532, i64* %RCX.i2020, align 8
  %2533 = add i64 %2493, -3424
  %2534 = add i64 %2522, 17
  store i64 %2534, i64* %3, align 8
  %2535 = inttoptr i64 %2533 to i32*
  store i32 %2531, i32* %2535, align 4
  %2536 = load i64, i64* %RBP.i, align 8
  %2537 = add i64 %2536, -52
  %2538 = load i64, i64* %3, align 8
  %2539 = add i64 %2538, 3
  store i64 %2539, i64* %3, align 8
  %2540 = inttoptr i64 %2537 to i32*
  %2541 = load i32, i32* %2540, align 4
  %2542 = zext i32 %2541 to i64
  store i64 %2542, i64* %RCX.i2020, align 8
  %2543 = add i64 %2536, -56
  %2544 = add i64 %2538, 6
  store i64 %2544, i64* %3, align 8
  %2545 = inttoptr i64 %2543 to i32*
  store i32 %2541, i32* %2545, align 4
  %.pre176 = load i64, i64* %RBP.i, align 8
  %.pre177 = load i64, i64* %3, align 8
  br label %block_.L_401ca1

block_.L_401ca1:                                  ; preds = %block_.L_401d58, %block_401c8a
  %2546 = phi i64 [ %2904, %block_.L_401d58 ], [ %.pre177, %block_401c8a ]
  %2547 = phi i64 [ %2863, %block_.L_401d58 ], [ %.pre176, %block_401c8a ]
  %2548 = add i64 %2547, -32
  %2549 = add i64 %2546, 4
  store i64 %2549, i64* %3, align 8
  %2550 = inttoptr i64 %2548 to i64*
  %2551 = load i64, i64* %2550, align 8
  store i64 %2551, i64* %RAX.i1036, align 8
  %2552 = add i64 %2547, -56
  %2553 = add i64 %2546, 7
  store i64 %2553, i64* %3, align 8
  %2554 = inttoptr i64 %2552 to i32*
  %2555 = load i32, i32* %2554, align 4
  %2556 = zext i32 %2555 to i64
  store i64 %2556, i64* %RCX.i2020, align 8
  %2557 = add i64 %2547, -3428
  %2558 = add i64 %2546, 13
  store i64 %2558, i64* %3, align 8
  %2559 = inttoptr i64 %2557 to i32*
  %2560 = load i32, i32* %2559, align 4
  %2561 = sub i32 %2555, %2560
  %2562 = zext i32 %2561 to i64
  store i64 %2562, i64* %RCX.i2020, align 8
  %2563 = icmp ult i32 %2555, %2560
  %2564 = zext i1 %2563 to i8
  store i8 %2564, i8* %14, align 1
  %2565 = and i32 %2561, 255
  %2566 = tail call i32 @llvm.ctpop.i32(i32 %2565)
  %2567 = trunc i32 %2566 to i8
  %2568 = and i8 %2567, 1
  %2569 = xor i8 %2568, 1
  store i8 %2569, i8* %21, align 1
  %2570 = xor i32 %2560, %2555
  %2571 = xor i32 %2570, %2561
  %2572 = lshr i32 %2571, 4
  %2573 = trunc i32 %2572 to i8
  %2574 = and i8 %2573, 1
  store i8 %2574, i8* %27, align 1
  %2575 = icmp eq i32 %2561, 0
  %2576 = zext i1 %2575 to i8
  store i8 %2576, i8* %30, align 1
  %2577 = lshr i32 %2561, 31
  %2578 = trunc i32 %2577 to i8
  store i8 %2578, i8* %33, align 1
  %2579 = lshr i32 %2555, 31
  %2580 = lshr i32 %2560, 31
  %2581 = xor i32 %2580, %2579
  %2582 = xor i32 %2577, %2579
  %2583 = add nuw nsw i32 %2582, %2581
  %2584 = icmp eq i32 %2583, 2
  %2585 = zext i1 %2584 to i8
  store i8 %2585, i8* %39, align 1
  %2586 = sext i32 %2561 to i64
  store i64 %2586, i64* %RDX.i2023, align 8
  %2587 = shl nsw i64 %2586, 2
  %2588 = add nsw i64 %2587, -1104
  %2589 = add i64 %2588, %2547
  %2590 = add i64 %2546, 23
  store i64 %2590, i64* %3, align 8
  %2591 = inttoptr i64 %2589 to i32*
  %2592 = load i32, i32* %2591, align 4
  %2593 = add i32 %2592, 1
  %2594 = shl i32 %2593, 8
  %2595 = zext i32 %2594 to i64
  store i64 %2595, i64* %RCX.i2020, align 8
  %2596 = lshr i32 %2593, 24
  %2597 = trunc i32 %2596 to i8
  %2598 = and i8 %2597, 1
  store i8 %2598, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2599 = icmp eq i32 %2594, 0
  %2600 = zext i1 %2599 to i8
  store i8 %2600, i8* %30, align 1
  %2601 = lshr i32 %2593, 23
  %2602 = trunc i32 %2601 to i8
  %2603 = and i8 %2602, 1
  store i8 %2603, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2604 = sext i32 %2594 to i64
  store i64 %2604, i64* %RDX.i2023, align 8
  %2605 = load i64, i64* %RAX.i1036, align 8
  %2606 = shl nsw i64 %2604, 2
  %2607 = add i64 %2605, %2606
  %2608 = add i64 %2546, 35
  store i64 %2608, i64* %3, align 8
  %2609 = inttoptr i64 %2607 to i32*
  %2610 = load i32, i32* %2609, align 4
  %2611 = zext i32 %2610 to i64
  store i64 %2611, i64* %RCX.i2020, align 8
  %2612 = load i64, i64* %RBP.i, align 8
  %2613 = add i64 %2612, -32
  %2614 = add i64 %2546, 39
  store i64 %2614, i64* %3, align 8
  %2615 = inttoptr i64 %2613 to i64*
  %2616 = load i64, i64* %2615, align 8
  store i64 %2616, i64* %RAX.i1036, align 8
  %2617 = add i64 %2612, -56
  %2618 = add i64 %2546, 42
  store i64 %2618, i64* %3, align 8
  %2619 = inttoptr i64 %2617 to i32*
  %2620 = load i32, i32* %2619, align 4
  %2621 = zext i32 %2620 to i64
  store i64 %2621, i64* %RSI.i1998, align 8
  %2622 = add i64 %2612, -3428
  %2623 = add i64 %2546, 48
  store i64 %2623, i64* %3, align 8
  %2624 = inttoptr i64 %2622 to i32*
  %2625 = load i32, i32* %2624, align 4
  %2626 = sub i32 %2620, %2625
  %2627 = zext i32 %2626 to i64
  store i64 %2627, i64* %RSI.i1998, align 8
  %2628 = icmp ult i32 %2620, %2625
  %2629 = zext i1 %2628 to i8
  store i8 %2629, i8* %14, align 1
  %2630 = and i32 %2626, 255
  %2631 = tail call i32 @llvm.ctpop.i32(i32 %2630)
  %2632 = trunc i32 %2631 to i8
  %2633 = and i8 %2632, 1
  %2634 = xor i8 %2633, 1
  store i8 %2634, i8* %21, align 1
  %2635 = xor i32 %2625, %2620
  %2636 = xor i32 %2635, %2626
  %2637 = lshr i32 %2636, 4
  %2638 = trunc i32 %2637 to i8
  %2639 = and i8 %2638, 1
  store i8 %2639, i8* %27, align 1
  %2640 = icmp eq i32 %2626, 0
  %2641 = zext i1 %2640 to i8
  store i8 %2641, i8* %30, align 1
  %2642 = lshr i32 %2626, 31
  %2643 = trunc i32 %2642 to i8
  store i8 %2643, i8* %33, align 1
  %2644 = lshr i32 %2620, 31
  %2645 = lshr i32 %2625, 31
  %2646 = xor i32 %2645, %2644
  %2647 = xor i32 %2642, %2644
  %2648 = add nuw nsw i32 %2647, %2646
  %2649 = icmp eq i32 %2648, 2
  %2650 = zext i1 %2649 to i8
  store i8 %2650, i8* %39, align 1
  %2651 = sext i32 %2626 to i64
  store i64 %2651, i64* %RDX.i2023, align 8
  %2652 = shl nsw i64 %2651, 2
  %2653 = add nsw i64 %2652, -1104
  %2654 = add i64 %2653, %2612
  %2655 = add i64 %2546, 58
  store i64 %2655, i64* %3, align 8
  %2656 = inttoptr i64 %2654 to i32*
  %2657 = load i32, i32* %2656, align 4
  %2658 = shl i32 %2657, 8
  %2659 = zext i32 %2658 to i64
  store i64 %2659, i64* %RSI.i1998, align 8
  %2660 = lshr i32 %2657, 24
  %2661 = trunc i32 %2660 to i8
  %2662 = and i8 %2661, 1
  store i8 %2662, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2663 = icmp eq i32 %2658, 0
  %2664 = zext i1 %2663 to i8
  store i8 %2664, i8* %30, align 1
  %2665 = lshr i32 %2657, 23
  %2666 = trunc i32 %2665 to i8
  %2667 = and i8 %2666, 1
  store i8 %2667, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2668 = sext i32 %2658 to i64
  store i64 %2668, i64* %RDX.i2023, align 8
  %2669 = shl nsw i64 %2668, 2
  %2670 = add i64 %2616, %2669
  %2671 = add i64 %2546, 67
  store i64 %2671, i64* %3, align 8
  %2672 = inttoptr i64 %2670 to i32*
  %2673 = load i32, i32* %2672, align 4
  %2674 = sub i32 %2610, %2673
  %2675 = zext i32 %2674 to i64
  store i64 %2675, i64* %RCX.i2020, align 8
  %2676 = icmp ult i32 %2610, %2673
  %2677 = zext i1 %2676 to i8
  store i8 %2677, i8* %14, align 1
  %2678 = and i32 %2674, 255
  %2679 = tail call i32 @llvm.ctpop.i32(i32 %2678)
  %2680 = trunc i32 %2679 to i8
  %2681 = and i8 %2680, 1
  %2682 = xor i8 %2681, 1
  store i8 %2682, i8* %21, align 1
  %2683 = xor i32 %2673, %2610
  %2684 = xor i32 %2683, %2674
  %2685 = lshr i32 %2684, 4
  %2686 = trunc i32 %2685 to i8
  %2687 = and i8 %2686, 1
  store i8 %2687, i8* %27, align 1
  %2688 = icmp eq i32 %2674, 0
  %2689 = zext i1 %2688 to i8
  store i8 %2689, i8* %30, align 1
  %2690 = lshr i32 %2674, 31
  %2691 = trunc i32 %2690 to i8
  store i8 %2691, i8* %33, align 1
  %2692 = lshr i32 %2610, 31
  %2693 = lshr i32 %2673, 31
  %2694 = xor i32 %2693, %2692
  %2695 = xor i32 %2690, %2692
  %2696 = add nuw nsw i32 %2695, %2694
  %2697 = icmp eq i32 %2696, 2
  %2698 = zext i1 %2697 to i8
  store i8 %2698, i8* %39, align 1
  %2699 = load i64, i64* %RBP.i, align 8
  %2700 = add i64 %2699, -32
  %2701 = add i64 %2546, 71
  store i64 %2701, i64* %3, align 8
  %2702 = inttoptr i64 %2700 to i64*
  %2703 = load i64, i64* %2702, align 8
  store i64 %2703, i64* %RAX.i1036, align 8
  %2704 = add i64 %2699, -3424
  %2705 = add i64 %2546, 77
  store i64 %2705, i64* %3, align 8
  %2706 = inttoptr i64 %2704 to i32*
  %2707 = load i32, i32* %2706, align 4
  %2708 = add i32 %2707, 1
  %2709 = shl i32 %2708, 8
  %2710 = zext i32 %2709 to i64
  store i64 %2710, i64* %RSI.i1998, align 8
  %2711 = lshr i32 %2708, 24
  %2712 = trunc i32 %2711 to i8
  %2713 = and i8 %2712, 1
  store i8 %2713, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2714 = icmp eq i32 %2709, 0
  %2715 = zext i1 %2714 to i8
  store i8 %2715, i8* %30, align 1
  %2716 = lshr i32 %2708, 23
  %2717 = trunc i32 %2716 to i8
  %2718 = and i8 %2717, 1
  store i8 %2718, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2719 = sext i32 %2709 to i64
  store i64 %2719, i64* %RDX.i2023, align 8
  %2720 = shl nsw i64 %2719, 2
  %2721 = add i64 %2703, %2720
  %2722 = add i64 %2546, 89
  store i64 %2722, i64* %3, align 8
  %2723 = inttoptr i64 %2721 to i32*
  %2724 = load i32, i32* %2723, align 4
  %2725 = zext i32 %2724 to i64
  store i64 %2725, i64* %RSI.i1998, align 8
  %2726 = add i64 %2546, 93
  store i64 %2726, i64* %3, align 8
  %2727 = load i64, i64* %2702, align 8
  store i64 %2727, i64* %RAX.i1036, align 8
  %2728 = add i64 %2546, 99
  store i64 %2728, i64* %3, align 8
  %2729 = load i32, i32* %2706, align 4
  %2730 = shl i32 %2729, 8
  %2731 = zext i32 %2730 to i64
  store i64 %2731, i64* %RDI.i1575, align 8
  %2732 = lshr i32 %2729, 24
  %2733 = trunc i32 %2732 to i8
  %2734 = and i8 %2733, 1
  store i8 %2734, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2735 = icmp eq i32 %2730, 0
  %2736 = zext i1 %2735 to i8
  store i8 %2736, i8* %30, align 1
  %2737 = lshr i32 %2729, 23
  %2738 = trunc i32 %2737 to i8
  %2739 = and i8 %2738, 1
  store i8 %2739, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2740 = sext i32 %2730 to i64
  store i64 %2740, i64* %RDX.i2023, align 8
  %2741 = shl nsw i64 %2740, 2
  %2742 = add i64 %2727, %2741
  %2743 = add i64 %2546, 108
  store i64 %2743, i64* %3, align 8
  %2744 = inttoptr i64 %2742 to i32*
  %2745 = load i32, i32* %2744, align 4
  %2746 = sub i32 %2724, %2745
  %2747 = zext i32 %2746 to i64
  store i64 %2747, i64* %RSI.i1998, align 8
  %2748 = lshr i32 %2746, 31
  %2749 = load i32, i32* %ECX.i1961, align 4
  %2750 = sub i32 %2749, %2746
  %2751 = icmp ult i32 %2749, %2746
  %2752 = zext i1 %2751 to i8
  store i8 %2752, i8* %14, align 1
  %2753 = and i32 %2750, 255
  %2754 = tail call i32 @llvm.ctpop.i32(i32 %2753)
  %2755 = trunc i32 %2754 to i8
  %2756 = and i8 %2755, 1
  %2757 = xor i8 %2756, 1
  store i8 %2757, i8* %21, align 1
  %2758 = xor i32 %2746, %2749
  %2759 = xor i32 %2758, %2750
  %2760 = lshr i32 %2759, 4
  %2761 = trunc i32 %2760 to i8
  %2762 = and i8 %2761, 1
  store i8 %2762, i8* %27, align 1
  %2763 = icmp eq i32 %2750, 0
  %2764 = zext i1 %2763 to i8
  store i8 %2764, i8* %30, align 1
  %2765 = lshr i32 %2750, 31
  %2766 = trunc i32 %2765 to i8
  store i8 %2766, i8* %33, align 1
  %2767 = lshr i32 %2749, 31
  %2768 = xor i32 %2748, %2767
  %2769 = xor i32 %2765, %2767
  %2770 = add nuw nsw i32 %2769, %2768
  %2771 = icmp eq i32 %2770, 2
  %2772 = zext i1 %2771 to i8
  store i8 %2772, i8* %39, align 1
  %2773 = or i1 %2763, %2751
  %.v249 = select i1 %2773, i64 188, i64 116
  %2774 = add i64 %2546, %.v249
  store i64 %2774, i64* %3, align 8
  br i1 %2773, label %block_.L_401d5d, label %block_401d15

block_401d15:                                     ; preds = %block_.L_401ca1
  %2775 = load i64, i64* %RBP.i, align 8
  %2776 = add i64 %2775, -56
  %2777 = add i64 %2774, 3
  store i64 %2777, i64* %3, align 8
  %2778 = inttoptr i64 %2776 to i32*
  %2779 = load i32, i32* %2778, align 4
  %2780 = zext i32 %2779 to i64
  store i64 %2780, i64* %RAX.i1036, align 8
  %2781 = add i64 %2775, -3428
  %2782 = add i64 %2774, 9
  store i64 %2782, i64* %3, align 8
  %2783 = inttoptr i64 %2781 to i32*
  %2784 = load i32, i32* %2783, align 4
  %2785 = sub i32 %2779, %2784
  %2786 = zext i32 %2785 to i64
  store i64 %2786, i64* %RAX.i1036, align 8
  %2787 = icmp ult i32 %2779, %2784
  %2788 = zext i1 %2787 to i8
  store i8 %2788, i8* %14, align 1
  %2789 = and i32 %2785, 255
  %2790 = tail call i32 @llvm.ctpop.i32(i32 %2789)
  %2791 = trunc i32 %2790 to i8
  %2792 = and i8 %2791, 1
  %2793 = xor i8 %2792, 1
  store i8 %2793, i8* %21, align 1
  %2794 = xor i32 %2784, %2779
  %2795 = xor i32 %2794, %2785
  %2796 = lshr i32 %2795, 4
  %2797 = trunc i32 %2796 to i8
  %2798 = and i8 %2797, 1
  store i8 %2798, i8* %27, align 1
  %2799 = icmp eq i32 %2785, 0
  %2800 = zext i1 %2799 to i8
  store i8 %2800, i8* %30, align 1
  %2801 = lshr i32 %2785, 31
  %2802 = trunc i32 %2801 to i8
  store i8 %2802, i8* %33, align 1
  %2803 = lshr i32 %2779, 31
  %2804 = lshr i32 %2784, 31
  %2805 = xor i32 %2804, %2803
  %2806 = xor i32 %2801, %2803
  %2807 = add nuw nsw i32 %2806, %2805
  %2808 = icmp eq i32 %2807, 2
  %2809 = zext i1 %2808 to i8
  store i8 %2809, i8* %39, align 1
  %2810 = sext i32 %2785 to i64
  store i64 %2810, i64* %RCX.i2020, align 8
  %2811 = shl nsw i64 %2810, 2
  %2812 = add nsw i64 %2811, -1104
  %2813 = add i64 %2812, %2775
  %2814 = add i64 %2774, 19
  store i64 %2814, i64* %3, align 8
  %2815 = inttoptr i64 %2813 to i32*
  %2816 = load i32, i32* %2815, align 4
  %2817 = zext i32 %2816 to i64
  store i64 %2817, i64* %RAX.i1036, align 8
  %2818 = add i64 %2774, 23
  store i64 %2818, i64* %3, align 8
  %2819 = load i32, i32* %2778, align 4
  %2820 = sext i32 %2819 to i64
  store i64 %2820, i64* %RCX.i2020, align 8
  %2821 = shl nsw i64 %2820, 2
  %2822 = add i64 %2775, -1104
  %2823 = add i64 %2822, %2821
  %2824 = add i64 %2774, 30
  store i64 %2824, i64* %3, align 8
  %2825 = inttoptr i64 %2823 to i32*
  store i32 %2816, i32* %2825, align 4
  %2826 = load i64, i64* %RBP.i, align 8
  %2827 = add i64 %2826, -56
  %2828 = load i64, i64* %3, align 8
  %2829 = add i64 %2828, 3
  store i64 %2829, i64* %3, align 8
  %2830 = inttoptr i64 %2827 to i32*
  %2831 = load i32, i32* %2830, align 4
  %2832 = zext i32 %2831 to i64
  store i64 %2832, i64* %RAX.i1036, align 8
  %2833 = add i64 %2826, -3428
  %2834 = add i64 %2828, 9
  store i64 %2834, i64* %3, align 8
  %2835 = inttoptr i64 %2833 to i32*
  %2836 = load i32, i32* %2835, align 4
  %2837 = sub i32 %2831, %2836
  %2838 = zext i32 %2837 to i64
  store i64 %2838, i64* %RAX.i1036, align 8
  %2839 = icmp ult i32 %2831, %2836
  %2840 = zext i1 %2839 to i8
  store i8 %2840, i8* %14, align 1
  %2841 = and i32 %2837, 255
  %2842 = tail call i32 @llvm.ctpop.i32(i32 %2841)
  %2843 = trunc i32 %2842 to i8
  %2844 = and i8 %2843, 1
  %2845 = xor i8 %2844, 1
  store i8 %2845, i8* %21, align 1
  %2846 = xor i32 %2836, %2831
  %2847 = xor i32 %2846, %2837
  %2848 = lshr i32 %2847, 4
  %2849 = trunc i32 %2848 to i8
  %2850 = and i8 %2849, 1
  store i8 %2850, i8* %27, align 1
  %2851 = icmp eq i32 %2837, 0
  %2852 = zext i1 %2851 to i8
  store i8 %2852, i8* %30, align 1
  %2853 = lshr i32 %2837, 31
  %2854 = trunc i32 %2853 to i8
  store i8 %2854, i8* %33, align 1
  %2855 = lshr i32 %2831, 31
  %2856 = lshr i32 %2836, 31
  %2857 = xor i32 %2856, %2855
  %2858 = xor i32 %2853, %2855
  %2859 = add nuw nsw i32 %2858, %2857
  %2860 = icmp eq i32 %2859, 2
  %2861 = zext i1 %2860 to i8
  store i8 %2861, i8* %39, align 1
  %2862 = add i64 %2828, 12
  store i64 %2862, i64* %3, align 8
  store i32 %2837, i32* %2830, align 4
  %2863 = load i64, i64* %RBP.i, align 8
  %2864 = add i64 %2863, -56
  %2865 = load i64, i64* %3, align 8
  %2866 = add i64 %2865, 3
  store i64 %2866, i64* %3, align 8
  %2867 = inttoptr i64 %2864 to i32*
  %2868 = load i32, i32* %2867, align 4
  %2869 = zext i32 %2868 to i64
  store i64 %2869, i64* %RAX.i1036, align 8
  %2870 = add i64 %2863, -3428
  %2871 = add i64 %2865, 9
  store i64 %2871, i64* %3, align 8
  %2872 = inttoptr i64 %2870 to i32*
  %2873 = load i32, i32* %2872, align 4
  %2874 = add i32 %2873, -1
  %2875 = zext i32 %2874 to i64
  store i64 %2875, i64* %RDX.i2023, align 8
  %2876 = lshr i32 %2874, 31
  %2877 = sub i32 %2868, %2874
  %2878 = icmp ult i32 %2868, %2874
  %2879 = zext i1 %2878 to i8
  store i8 %2879, i8* %14, align 1
  %2880 = and i32 %2877, 255
  %2881 = tail call i32 @llvm.ctpop.i32(i32 %2880)
  %2882 = trunc i32 %2881 to i8
  %2883 = and i8 %2882, 1
  %2884 = xor i8 %2883, 1
  store i8 %2884, i8* %21, align 1
  %2885 = xor i32 %2874, %2868
  %2886 = xor i32 %2885, %2877
  %2887 = lshr i32 %2886, 4
  %2888 = trunc i32 %2887 to i8
  %2889 = and i8 %2888, 1
  store i8 %2889, i8* %27, align 1
  %2890 = icmp eq i32 %2877, 0
  %2891 = zext i1 %2890 to i8
  store i8 %2891, i8* %30, align 1
  %2892 = lshr i32 %2877, 31
  %2893 = trunc i32 %2892 to i8
  store i8 %2893, i8* %33, align 1
  %2894 = lshr i32 %2868, 31
  %2895 = xor i32 %2876, %2894
  %2896 = xor i32 %2892, %2894
  %2897 = add nuw nsw i32 %2896, %2895
  %2898 = icmp eq i32 %2897, 2
  %2899 = zext i1 %2898 to i8
  store i8 %2899, i8* %39, align 1
  %2900 = icmp ne i8 %2893, 0
  %2901 = xor i1 %2900, %2898
  %.demorgan212 = or i1 %2890, %2901
  %.v250 = select i1 %.demorgan212, i64 20, i64 25
  %2902 = add i64 %2865, %.v250
  store i64 %2902, i64* %3, align 8
  br i1 %.demorgan212, label %block_401d53, label %block_.L_401d58

block_401d53:                                     ; preds = %block_401d15
  %2903 = add i64 %2902, 15
  br label %block_.L_401d62

block_.L_401d58:                                  ; preds = %block_401d15
  %2904 = add i64 %2902, -183
  store i64 %2904, i64* %3, align 8
  br label %block_.L_401ca1

block_.L_401d5d:                                  ; preds = %block_.L_401ca1
  %2905 = add i64 %2774, 5
  store i64 %2905, i64* %3, align 8
  %.pre178 = load i64, i64* %RBP.i, align 8
  br label %block_.L_401d62

block_.L_401d62:                                  ; preds = %block_.L_401d5d, %block_401d53
  %2906 = phi i64 [ %2863, %block_401d53 ], [ %.pre178, %block_.L_401d5d ]
  %storemerge56 = phi i64 [ %2903, %block_401d53 ], [ %2905, %block_.L_401d5d ]
  %2907 = add i64 %2906, -3424
  %2908 = add i64 %storemerge56, 6
  store i64 %2908, i64* %3, align 8
  %2909 = inttoptr i64 %2907 to i32*
  %2910 = load i32, i32* %2909, align 4
  %2911 = zext i32 %2910 to i64
  store i64 %2911, i64* %RAX.i1036, align 8
  %2912 = add i64 %2906, -56
  %2913 = add i64 %storemerge56, 10
  store i64 %2913, i64* %3, align 8
  %2914 = inttoptr i64 %2912 to i32*
  %2915 = load i32, i32* %2914, align 4
  %2916 = sext i32 %2915 to i64
  store i64 %2916, i64* %RCX.i2020, align 8
  %2917 = shl nsw i64 %2916, 2
  %2918 = add i64 %2906, -1104
  %2919 = add i64 %2918, %2917
  %2920 = add i64 %storemerge56, 17
  store i64 %2920, i64* %3, align 8
  %2921 = inttoptr i64 %2919 to i32*
  store i32 %2910, i32* %2921, align 4
  %2922 = load i64, i64* %RBP.i, align 8
  %2923 = add i64 %2922, -52
  %2924 = load i64, i64* %3, align 8
  %2925 = add i64 %2924, 3
  store i64 %2925, i64* %3, align 8
  %2926 = inttoptr i64 %2923 to i32*
  %2927 = load i32, i32* %2926, align 4
  %2928 = add i32 %2927, 1
  %2929 = zext i32 %2928 to i64
  store i64 %2929, i64* %RAX.i1036, align 8
  %2930 = icmp eq i32 %2927, -1
  %2931 = icmp eq i32 %2928, 0
  %2932 = or i1 %2930, %2931
  %2933 = zext i1 %2932 to i8
  store i8 %2933, i8* %14, align 1
  %2934 = and i32 %2928, 255
  %2935 = tail call i32 @llvm.ctpop.i32(i32 %2934)
  %2936 = trunc i32 %2935 to i8
  %2937 = and i8 %2936, 1
  %2938 = xor i8 %2937, 1
  store i8 %2938, i8* %21, align 1
  %2939 = xor i32 %2928, %2927
  %2940 = lshr i32 %2939, 4
  %2941 = trunc i32 %2940 to i8
  %2942 = and i8 %2941, 1
  store i8 %2942, i8* %27, align 1
  %2943 = zext i1 %2931 to i8
  store i8 %2943, i8* %30, align 1
  %2944 = lshr i32 %2928, 31
  %2945 = trunc i32 %2944 to i8
  store i8 %2945, i8* %33, align 1
  %2946 = lshr i32 %2927, 31
  %2947 = xor i32 %2944, %2946
  %2948 = add nuw nsw i32 %2947, %2944
  %2949 = icmp eq i32 %2948, 2
  %2950 = zext i1 %2949 to i8
  store i8 %2950, i8* %39, align 1
  %2951 = add i64 %2924, 9
  store i64 %2951, i64* %3, align 8
  store i32 %2928, i32* %2926, align 4
  %2952 = load i64, i64* %3, align 8
  %2953 = add i64 %2952, -255
  store i64 %2953, i64* %3, align 8
  br label %block_.L_401c7d

block_.L_401d81:                                  ; preds = %block_.L_401c7d
  %2954 = add i64 %2493, -3428
  %2955 = add i64 %2522, 12
  store i64 %2955, i64* %3, align 8
  %2956 = inttoptr i64 %2954 to i32*
  %2957 = load i32, i32* %2956, align 4
  %2958 = add i32 %2957, -1
  %2959 = icmp eq i32 %2957, 0
  %2960 = zext i1 %2959 to i8
  store i8 %2960, i8* %14, align 1
  %2961 = and i32 %2958, 255
  %2962 = tail call i32 @llvm.ctpop.i32(i32 %2961)
  %2963 = trunc i32 %2962 to i8
  %2964 = and i8 %2963, 1
  %2965 = xor i8 %2964, 1
  store i8 %2965, i8* %21, align 1
  %2966 = xor i32 %2958, %2957
  %2967 = lshr i32 %2966, 4
  %2968 = trunc i32 %2967 to i8
  %2969 = and i8 %2968, 1
  store i8 %2969, i8* %27, align 1
  %2970 = icmp eq i32 %2958, 0
  %2971 = zext i1 %2970 to i8
  store i8 %2971, i8* %30, align 1
  %2972 = lshr i32 %2958, 31
  %2973 = trunc i32 %2972 to i8
  store i8 %2973, i8* %33, align 1
  %2974 = lshr i32 %2957, 31
  %2975 = xor i32 %2972, %2974
  %2976 = add nuw nsw i32 %2975, %2974
  %2977 = icmp eq i32 %2976, 2
  %2978 = zext i1 %2977 to i8
  store i8 %2978, i8* %39, align 1
  %.v228 = select i1 %2970, i64 18, i64 -303
  %2979 = add i64 %2522, %.v228
  store i64 %2979, i64* %3, align 8
  br i1 %2970, label %block_401d93, label %block_.L_401c52

block_401d93:                                     ; preds = %block_.L_401d81
  %2980 = add i64 %2493, -3416
  %2981 = add i64 %2979, 10
  store i64 %2981, i64* %3, align 8
  %2982 = inttoptr i64 %2980 to i32*
  store i32 0, i32* %2982, align 4
  %2983 = load i64, i64* %RBP.i, align 8
  %2984 = add i64 %2983, -52
  %2985 = load i64, i64* %3, align 8
  %2986 = add i64 %2985, 7
  store i64 %2986, i64* %3, align 8
  %2987 = inttoptr i64 %2984 to i32*
  store i32 0, i32* %2987, align 4
  %2988 = getelementptr inbounds %union.anon, %union.anon* %71, i64 0, i32 0
  %2989 = getelementptr inbounds %union.anon, %union.anon* %78, i64 0, i32 0
  %R10.i696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %2990 = bitcast i64* %6 to i32**
  %AL.i723 = bitcast %union.anon* %40 to i8*
  %.pre179 = load i64, i64* %3, align 8
  br label %block_.L_401da4

block_.L_401da4:                                  ; preds = %block_.L_40231c, %block_401d93
  %2991 = phi i64 [ %.pre179, %block_401d93 ], [ %5369, %block_.L_40231c ]
  %MEMORY.15 = phi %struct.Memory* [ %2478, %block_401d93 ], [ %MEMORY.36, %block_.L_40231c ]
  %2992 = load i64, i64* %RBP.i, align 8
  %2993 = add i64 %2992, -52
  %2994 = add i64 %2991, 7
  store i64 %2994, i64* %3, align 8
  %2995 = inttoptr i64 %2993 to i32*
  %2996 = load i32, i32* %2995, align 4
  %2997 = add i32 %2996, -255
  %2998 = icmp ult i32 %2996, 255
  %2999 = zext i1 %2998 to i8
  store i8 %2999, i8* %14, align 1
  %3000 = and i32 %2997, 255
  %3001 = tail call i32 @llvm.ctpop.i32(i32 %3000)
  %3002 = trunc i32 %3001 to i8
  %3003 = and i8 %3002, 1
  %3004 = xor i8 %3003, 1
  store i8 %3004, i8* %21, align 1
  %3005 = xor i32 %2996, 16
  %3006 = xor i32 %3005, %2997
  %3007 = lshr i32 %3006, 4
  %3008 = trunc i32 %3007 to i8
  %3009 = and i8 %3008, 1
  store i8 %3009, i8* %27, align 1
  %3010 = icmp eq i32 %2997, 0
  %3011 = zext i1 %3010 to i8
  store i8 %3011, i8* %30, align 1
  %3012 = lshr i32 %2997, 31
  %3013 = trunc i32 %3012 to i8
  store i8 %3013, i8* %33, align 1
  %3014 = lshr i32 %2996, 31
  %3015 = xor i32 %3012, %3014
  %3016 = add nuw nsw i32 %3015, %3014
  %3017 = icmp eq i32 %3016, 2
  %3018 = zext i1 %3017 to i8
  store i8 %3018, i8* %39, align 1
  %3019 = icmp ne i8 %3013, 0
  %3020 = xor i1 %3019, %3017
  %.demorgan214 = or i1 %3010, %3020
  %.v229 = select i1 %.demorgan214, i64 13, i64 1419
  %3021 = add i64 %2991, %.v229
  store i64 %3021, i64* %3, align 8
  br i1 %.demorgan214, label %block_401db1, label %block_.L_40232f

block_401db1:                                     ; preds = %block_.L_401da4
  %3022 = add i64 %3021, 4
  store i64 %3022, i64* %3, align 8
  %3023 = load i32, i32* %2995, align 4
  %3024 = sext i32 %3023 to i64
  store i64 %3024, i64* %RAX.i1036, align 8
  %3025 = shl nsw i64 %3024, 2
  %3026 = add i64 %2992, -1104
  %3027 = add i64 %3026, %3025
  %3028 = add i64 %3021, 11
  store i64 %3028, i64* %3, align 8
  %3029 = inttoptr i64 %3027 to i32*
  %3030 = load i32, i32* %3029, align 4
  %3031 = zext i32 %3030 to i64
  store i64 %3031, i64* %RCX.i2020, align 8
  %3032 = add i64 %2992, -64
  %3033 = add i64 %3021, 14
  store i64 %3033, i64* %3, align 8
  %3034 = inttoptr i64 %3032 to i32*
  store i32 %3030, i32* %3034, align 4
  %3035 = load i64, i64* %RBP.i, align 8
  %3036 = add i64 %3035, -56
  %3037 = load i64, i64* %3, align 8
  %3038 = add i64 %3037, 7
  store i64 %3038, i64* %3, align 8
  %3039 = inttoptr i64 %3036 to i32*
  store i32 0, i32* %3039, align 4
  %.pre180 = load i64, i64* %3, align 8
  br label %block_.L_401dc6

block_.L_401dc6:                                  ; preds = %block_.L_401f1c, %block_401db1
  %3040 = phi i64 [ %.pre180, %block_401db1 ], [ %3588, %block_.L_401f1c ]
  %MEMORY.16 = phi %struct.Memory* [ %MEMORY.15, %block_401db1 ], [ %MEMORY.20, %block_.L_401f1c ]
  %3041 = load i64, i64* %RBP.i, align 8
  %3042 = add i64 %3041, -56
  %3043 = add i64 %3040, 7
  store i64 %3043, i64* %3, align 8
  %3044 = inttoptr i64 %3042 to i32*
  %3045 = load i32, i32* %3044, align 4
  %3046 = add i32 %3045, -255
  %3047 = icmp ult i32 %3045, 255
  %3048 = zext i1 %3047 to i8
  store i8 %3048, i8* %14, align 1
  %3049 = and i32 %3046, 255
  %3050 = tail call i32 @llvm.ctpop.i32(i32 %3049)
  %3051 = trunc i32 %3050 to i8
  %3052 = and i8 %3051, 1
  %3053 = xor i8 %3052, 1
  store i8 %3053, i8* %21, align 1
  %3054 = xor i32 %3045, 16
  %3055 = xor i32 %3054, %3046
  %3056 = lshr i32 %3055, 4
  %3057 = trunc i32 %3056 to i8
  %3058 = and i8 %3057, 1
  store i8 %3058, i8* %27, align 1
  %3059 = icmp eq i32 %3046, 0
  %3060 = zext i1 %3059 to i8
  store i8 %3060, i8* %30, align 1
  %3061 = lshr i32 %3046, 31
  %3062 = trunc i32 %3061 to i8
  store i8 %3062, i8* %33, align 1
  %3063 = lshr i32 %3045, 31
  %3064 = xor i32 %3061, %3063
  %3065 = add nuw nsw i32 %3064, %3063
  %3066 = icmp eq i32 %3065, 2
  %3067 = zext i1 %3066 to i8
  store i8 %3067, i8* %39, align 1
  %3068 = icmp ne i8 %3062, 0
  %3069 = xor i1 %3068, %3066
  %.demorgan215 = or i1 %3059, %3069
  %.v231 = select i1 %.demorgan215, i64 13, i64 361
  %3070 = add i64 %3040, %.v231
  store i64 %3070, i64* %3, align 8
  br i1 %.demorgan215, label %block_401dd3, label %block_.L_401f2f

block_401dd3:                                     ; preds = %block_.L_401dc6
  %3071 = add i64 %3070, 3
  store i64 %3071, i64* %3, align 8
  %3072 = load i32, i32* %3044, align 4
  %3073 = zext i32 %3072 to i64
  store i64 %3073, i64* %RAX.i1036, align 8
  %3074 = add i64 %3041, -64
  %3075 = add i64 %3070, 6
  store i64 %3075, i64* %3, align 8
  %3076 = inttoptr i64 %3074 to i32*
  %3077 = load i32, i32* %3076, align 4
  %3078 = sub i32 %3072, %3077
  %3079 = icmp ult i32 %3072, %3077
  %3080 = zext i1 %3079 to i8
  store i8 %3080, i8* %14, align 1
  %3081 = and i32 %3078, 255
  %3082 = tail call i32 @llvm.ctpop.i32(i32 %3081)
  %3083 = trunc i32 %3082 to i8
  %3084 = and i8 %3083, 1
  %3085 = xor i8 %3084, 1
  store i8 %3085, i8* %21, align 1
  %3086 = xor i32 %3077, %3072
  %3087 = xor i32 %3086, %3078
  %3088 = lshr i32 %3087, 4
  %3089 = trunc i32 %3088 to i8
  %3090 = and i8 %3089, 1
  store i8 %3090, i8* %27, align 1
  %3091 = icmp eq i32 %3078, 0
  %3092 = zext i1 %3091 to i8
  store i8 %3092, i8* %30, align 1
  %3093 = lshr i32 %3078, 31
  %3094 = trunc i32 %3093 to i8
  store i8 %3094, i8* %33, align 1
  %3095 = lshr i32 %3072, 31
  %3096 = lshr i32 %3077, 31
  %3097 = xor i32 %3096, %3095
  %3098 = xor i32 %3093, %3095
  %3099 = add nuw nsw i32 %3098, %3097
  %3100 = icmp eq i32 %3099, 2
  %3101 = zext i1 %3100 to i8
  store i8 %3101, i8* %39, align 1
  %.v245 = select i1 %3091, i64 329, i64 12
  %3102 = add i64 %3070, %.v245
  store i64 %3102, i64* %3, align 8
  br i1 %3091, label %block_.L_401f1c, label %block_401ddf

block_401ddf:                                     ; preds = %block_401dd3
  %3103 = add i64 %3102, 3
  store i64 %3103, i64* %3, align 8
  %3104 = load i32, i32* %3076, align 4
  %3105 = shl i32 %3104, 8
  %3106 = zext i32 %3105 to i64
  store i64 %3106, i64* %RAX.i1036, align 8
  %3107 = lshr i32 %3104, 24
  %3108 = trunc i32 %3107 to i8
  %3109 = and i8 %3108, 1
  store i8 %3109, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3110 = icmp eq i32 %3105, 0
  %3111 = zext i1 %3110 to i8
  store i8 %3111, i8* %30, align 1
  %3112 = lshr i32 %3104, 23
  %3113 = trunc i32 %3112 to i8
  %3114 = and i8 %3113, 1
  store i8 %3114, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3115 = add i64 %3102, 9
  store i64 %3115, i64* %3, align 8
  %3116 = load i32, i32* %3044, align 4
  %3117 = add i32 %3116, %3105
  %3118 = zext i32 %3117 to i64
  store i64 %3118, i64* %RAX.i1036, align 8
  %3119 = icmp ult i32 %3117, %3105
  %3120 = icmp ult i32 %3117, %3116
  %3121 = or i1 %3119, %3120
  %3122 = zext i1 %3121 to i8
  store i8 %3122, i8* %14, align 1
  %3123 = and i32 %3117, 255
  %3124 = tail call i32 @llvm.ctpop.i32(i32 %3123)
  %3125 = trunc i32 %3124 to i8
  %3126 = and i8 %3125, 1
  %3127 = xor i8 %3126, 1
  store i8 %3127, i8* %21, align 1
  %3128 = xor i32 %3116, %3117
  %3129 = lshr i32 %3128, 4
  %3130 = trunc i32 %3129 to i8
  %3131 = and i8 %3130, 1
  store i8 %3131, i8* %27, align 1
  %3132 = icmp eq i32 %3117, 0
  %3133 = zext i1 %3132 to i8
  store i8 %3133, i8* %30, align 1
  %3134 = lshr i32 %3117, 31
  %3135 = trunc i32 %3134 to i8
  store i8 %3135, i8* %33, align 1
  %3136 = lshr i32 %3104, 23
  %3137 = and i32 %3136, 1
  %3138 = lshr i32 %3116, 31
  %3139 = xor i32 %3134, %3137
  %3140 = xor i32 %3134, %3138
  %3141 = add nuw nsw i32 %3139, %3140
  %3142 = icmp eq i32 %3141, 2
  %3143 = zext i1 %3142 to i8
  store i8 %3143, i8* %39, align 1
  %3144 = add i64 %3041, -68
  %3145 = add i64 %3102, 12
  store i64 %3145, i64* %3, align 8
  %3146 = inttoptr i64 %3144 to i32*
  store i32 %3117, i32* %3146, align 4
  %3147 = load i64, i64* %RBP.i, align 8
  %3148 = add i64 %3147, -32
  %3149 = load i64, i64* %3, align 8
  %3150 = add i64 %3149, 4
  store i64 %3150, i64* %3, align 8
  %3151 = inttoptr i64 %3148 to i64*
  %3152 = load i64, i64* %3151, align 8
  store i64 %3152, i64* %RCX.i2020, align 8
  %3153 = add i64 %3147, -68
  %3154 = add i64 %3149, 8
  store i64 %3154, i64* %3, align 8
  %3155 = inttoptr i64 %3153 to i32*
  %3156 = load i32, i32* %3155, align 4
  %3157 = sext i32 %3156 to i64
  store i64 %3157, i64* %RDX.i2023, align 8
  %3158 = shl nsw i64 %3157, 2
  %3159 = add i64 %3158, %3152
  %3160 = add i64 %3149, 11
  store i64 %3160, i64* %3, align 8
  %3161 = inttoptr i64 %3159 to i32*
  %3162 = load i32, i32* %3161, align 4
  %3163 = and i32 %3162, 2097152
  %3164 = zext i32 %3163 to i64
  store i64 %3164, i64* %RAX.i1036, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %.lobit216 = lshr exact i32 %3163, 21
  %3165 = trunc i32 %.lobit216 to i8
  %3166 = xor i8 %3165, 1
  store i8 %3166, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3167 = icmp eq i8 %3166, 0
  %.v246 = select i1 %3167, i64 285, i64 25
  %3168 = add i64 %3149, %.v246
  store i64 %3168, i64* %3, align 8
  br i1 %3167, label %block_.L_401f08, label %block_401e04

block_401e04:                                     ; preds = %block_401ddf
  %3169 = add i64 %3168, 4
  store i64 %3169, i64* %3, align 8
  %3170 = load i64, i64* %3151, align 8
  store i64 %3170, i64* %RAX.i1036, align 8
  %3171 = add i64 %3168, 8
  store i64 %3171, i64* %3, align 8
  %3172 = load i32, i32* %3155, align 4
  %3173 = sext i32 %3172 to i64
  store i64 %3173, i64* %RCX.i2020, align 8
  %3174 = shl nsw i64 %3173, 2
  %3175 = add i64 %3174, %3170
  %3176 = add i64 %3168, 11
  store i64 %3176, i64* %3, align 8
  %3177 = inttoptr i64 %3175 to i32*
  %3178 = load i32, i32* %3177, align 4
  %3179 = and i32 %3178, -2097153
  %3180 = and i32 %3178, -2097153
  %3181 = zext i32 %3180 to i64
  store i64 %3181, i64* %RDX.i2023, align 8
  store i8 0, i8* %14, align 1
  %3182 = and i32 %3178, 255
  %3183 = tail call i32 @llvm.ctpop.i32(i32 %3182)
  %3184 = trunc i32 %3183 to i8
  %3185 = and i8 %3184, 1
  %3186 = xor i8 %3185, 1
  store i8 %3186, i8* %21, align 1
  %3187 = icmp eq i32 %3179, 0
  %3188 = zext i1 %3187 to i8
  store i8 %3188, i8* %30, align 1
  %3189 = lshr i32 %3178, 31
  %3190 = trunc i32 %3189 to i8
  store i8 %3190, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %3191 = add i64 %3147, -3432
  %3192 = add i64 %3168, 23
  store i64 %3192, i64* %3, align 8
  %3193 = inttoptr i64 %3191 to i32*
  store i32 %3180, i32* %3193, align 4
  %3194 = load i64, i64* %RBP.i, align 8
  %3195 = add i64 %3194, -32
  %3196 = load i64, i64* %3, align 8
  %3197 = add i64 %3196, 4
  store i64 %3197, i64* %3, align 8
  %3198 = inttoptr i64 %3195 to i64*
  %3199 = load i64, i64* %3198, align 8
  store i64 %3199, i64* %RAX.i1036, align 8
  %3200 = add i64 %3194, -68
  %3201 = add i64 %3196, 7
  store i64 %3201, i64* %3, align 8
  %3202 = inttoptr i64 %3200 to i32*
  %3203 = load i32, i32* %3202, align 4
  %3204 = add i32 %3203, 1
  %3205 = zext i32 %3204 to i64
  store i64 %3205, i64* %RDX.i2023, align 8
  %3206 = icmp eq i32 %3203, -1
  %3207 = icmp eq i32 %3204, 0
  %3208 = or i1 %3206, %3207
  %3209 = zext i1 %3208 to i8
  store i8 %3209, i8* %14, align 1
  %3210 = and i32 %3204, 255
  %3211 = tail call i32 @llvm.ctpop.i32(i32 %3210)
  %3212 = trunc i32 %3211 to i8
  %3213 = and i8 %3212, 1
  %3214 = xor i8 %3213, 1
  store i8 %3214, i8* %21, align 1
  %3215 = xor i32 %3204, %3203
  %3216 = lshr i32 %3215, 4
  %3217 = trunc i32 %3216 to i8
  %3218 = and i8 %3217, 1
  store i8 %3218, i8* %27, align 1
  %3219 = zext i1 %3207 to i8
  store i8 %3219, i8* %30, align 1
  %3220 = lshr i32 %3204, 31
  %3221 = trunc i32 %3220 to i8
  store i8 %3221, i8* %33, align 1
  %3222 = lshr i32 %3203, 31
  %3223 = xor i32 %3220, %3222
  %3224 = add nuw nsw i32 %3223, %3220
  %3225 = icmp eq i32 %3224, 2
  %3226 = zext i1 %3225 to i8
  store i8 %3226, i8* %39, align 1
  %3227 = sext i32 %3204 to i64
  store i64 %3227, i64* %RCX.i2020, align 8
  %3228 = shl nsw i64 %3227, 2
  %3229 = add i64 %3199, %3228
  %3230 = add i64 %3196, 16
  store i64 %3230, i64* %3, align 8
  %3231 = inttoptr i64 %3229 to i32*
  %3232 = load i32, i32* %3231, align 4
  %3233 = and i32 %3232, -2097153
  %3234 = add i32 %3233, -1
  %3235 = zext i32 %3234 to i64
  store i64 %3235, i64* %RDX.i2023, align 8
  %3236 = icmp eq i32 %3233, 0
  %3237 = zext i1 %3236 to i8
  store i8 %3237, i8* %14, align 1
  %fold306 = add i32 %3232, 255
  %3238 = and i32 %fold306, 255
  %3239 = tail call i32 @llvm.ctpop.i32(i32 %3238)
  %3240 = trunc i32 %3239 to i8
  %3241 = and i8 %3240, 1
  %3242 = xor i8 %3241, 1
  store i8 %3242, i8* %21, align 1
  %3243 = xor i32 %3234, %3232
  %3244 = lshr i32 %3243, 4
  %3245 = trunc i32 %3244 to i8
  %3246 = and i8 %3245, 1
  store i8 %3246, i8* %27, align 1
  %3247 = icmp eq i32 %3234, 0
  %3248 = zext i1 %3247 to i8
  store i8 %3248, i8* %30, align 1
  %3249 = lshr i32 %3234, 31
  %3250 = trunc i32 %3249 to i8
  store i8 %3250, i8* %33, align 1
  %3251 = lshr i32 %3232, 31
  %3252 = xor i32 %3249, %3251
  %3253 = add nuw nsw i32 %3252, %3251
  %3254 = icmp eq i32 %3253, 2
  %3255 = zext i1 %3254 to i8
  store i8 %3255, i8* %39, align 1
  %3256 = load i64, i64* %RBP.i, align 8
  %3257 = add i64 %3256, -3436
  %3258 = add i64 %3196, 31
  store i64 %3258, i64* %3, align 8
  %3259 = inttoptr i64 %3257 to i32*
  store i32 %3234, i32* %3259, align 4
  %3260 = load i64, i64* %RBP.i, align 8
  %3261 = add i64 %3260, -3436
  %3262 = load i64, i64* %3, align 8
  %3263 = add i64 %3262, 6
  store i64 %3263, i64* %3, align 8
  %3264 = inttoptr i64 %3261 to i32*
  %3265 = load i32, i32* %3264, align 4
  %3266 = zext i32 %3265 to i64
  store i64 %3266, i64* %RDX.i2023, align 8
  %3267 = add i64 %3260, -3432
  %3268 = add i64 %3262, 12
  store i64 %3268, i64* %3, align 8
  %3269 = inttoptr i64 %3267 to i32*
  %3270 = load i32, i32* %3269, align 4
  %3271 = sub i32 %3265, %3270
  %3272 = icmp ult i32 %3265, %3270
  %3273 = zext i1 %3272 to i8
  store i8 %3273, i8* %14, align 1
  %3274 = and i32 %3271, 255
  %3275 = tail call i32 @llvm.ctpop.i32(i32 %3274)
  %3276 = trunc i32 %3275 to i8
  %3277 = and i8 %3276, 1
  %3278 = xor i8 %3277, 1
  store i8 %3278, i8* %21, align 1
  %3279 = xor i32 %3270, %3265
  %3280 = xor i32 %3279, %3271
  %3281 = lshr i32 %3280, 4
  %3282 = trunc i32 %3281 to i8
  %3283 = and i8 %3282, 1
  store i8 %3283, i8* %27, align 1
  %3284 = icmp eq i32 %3271, 0
  %3285 = zext i1 %3284 to i8
  store i8 %3285, i8* %30, align 1
  %3286 = lshr i32 %3271, 31
  %3287 = trunc i32 %3286 to i8
  store i8 %3287, i8* %33, align 1
  %3288 = lshr i32 %3265, 31
  %3289 = lshr i32 %3270, 31
  %3290 = xor i32 %3289, %3288
  %3291 = xor i32 %3286, %3288
  %3292 = add nuw nsw i32 %3291, %3290
  %3293 = icmp eq i32 %3292, 2
  %3294 = zext i1 %3293 to i8
  store i8 %3294, i8* %39, align 1
  %3295 = icmp ne i8 %3287, 0
  %3296 = xor i1 %3295, %3293
  %3297 = or i1 %3284, %3296
  %.v247 = select i1 %3297, i64 201, i64 18
  %3298 = add i64 %3262, %.v247
  store i64 %3298, i64* %3, align 8
  br i1 %3297, label %block_.L_401f03, label %block_401e4c

block_401e4c:                                     ; preds = %block_401e04
  %3299 = add i64 %3260, -40
  %3300 = add i64 %3298, 4
  store i64 %3300, i64* %3, align 8
  %3301 = inttoptr i64 %3299 to i32*
  %3302 = load i32, i32* %3301, align 4
  %3303 = add i32 %3302, -4
  %3304 = icmp ult i32 %3302, 4
  %3305 = zext i1 %3304 to i8
  store i8 %3305, i8* %14, align 1
  %3306 = and i32 %3303, 255
  %3307 = tail call i32 @llvm.ctpop.i32(i32 %3306)
  %3308 = trunc i32 %3307 to i8
  %3309 = and i8 %3308, 1
  %3310 = xor i8 %3309, 1
  store i8 %3310, i8* %21, align 1
  %3311 = xor i32 %3303, %3302
  %3312 = lshr i32 %3311, 4
  %3313 = trunc i32 %3312 to i8
  %3314 = and i8 %3313, 1
  store i8 %3314, i8* %27, align 1
  %3315 = icmp eq i32 %3303, 0
  %3316 = zext i1 %3315 to i8
  store i8 %3316, i8* %30, align 1
  %3317 = lshr i32 %3303, 31
  %3318 = trunc i32 %3317 to i8
  store i8 %3318, i8* %33, align 1
  %3319 = lshr i32 %3302, 31
  %3320 = xor i32 %3317, %3319
  %3321 = add nuw nsw i32 %3320, %3319
  %3322 = icmp eq i32 %3321, 2
  %3323 = zext i1 %3322 to i8
  store i8 %3323, i8* %39, align 1
  %3324 = icmp ne i8 %3318, 0
  %3325 = xor i1 %3324, %3322
  %.v248 = select i1 %3325, i64 72, i64 10
  %3326 = add i64 %3298, %.v248
  store i64 %3326, i64* %3, align 8
  br i1 %3325, label %block_.L_401e94, label %block_401e56

block_401e56:                                     ; preds = %block_401e4c
  store i64 ptrtoint (%G__0x4159ae_type* @G__0x4159ae to i64), i64* %RSI.i1998, align 8
  %3327 = load i64, i64* bitcast (%G_0x618d80_type* @G_0x618d80 to i64*), align 8
  store i64 %3327, i64* %RDI.i1575, align 8
  %3328 = add i64 %3260, -64
  %3329 = add i64 %3326, 21
  store i64 %3329, i64* %3, align 8
  %3330 = inttoptr i64 %3328 to i32*
  %3331 = load i32, i32* %3330, align 4
  %3332 = zext i32 %3331 to i64
  store i64 %3332, i64* %RDX.i2023, align 8
  %3333 = add i64 %3260, -56
  %3334 = add i64 %3326, 24
  store i64 %3334, i64* %3, align 8
  %3335 = inttoptr i64 %3333 to i32*
  %3336 = load i32, i32* %3335, align 4
  %3337 = zext i32 %3336 to i64
  store i64 %3337, i64* %RCX.i2020, align 8
  %3338 = add i64 %3260, -3416
  %3339 = add i64 %3326, 31
  store i64 %3339, i64* %3, align 8
  %3340 = inttoptr i64 %3338 to i32*
  %3341 = load i32, i32* %3340, align 4
  %3342 = zext i32 %3341 to i64
  store i64 %3342, i64* %2988, align 8
  %3343 = add i64 %3326, 37
  store i64 %3343, i64* %3, align 8
  %3344 = load i32, i32* %3264, align 4
  %3345 = zext i32 %3344 to i64
  store i64 %3345, i64* %RAX.i1036, align 8
  %3346 = add i64 %3326, 43
  store i64 %3346, i64* %3, align 8
  %3347 = load i32, i32* %3269, align 4
  %3348 = sub i32 %3344, %3347
  %3349 = lshr i32 %3348, 31
  %3350 = add i32 %3348, 1
  %3351 = zext i32 %3350 to i64
  store i64 %3351, i64* %RAX.i1036, align 8
  %3352 = icmp eq i32 %3348, -1
  %3353 = icmp eq i32 %3350, 0
  %3354 = or i1 %3352, %3353
  %3355 = zext i1 %3354 to i8
  store i8 %3355, i8* %14, align 1
  %3356 = and i32 %3350, 255
  %3357 = tail call i32 @llvm.ctpop.i32(i32 %3356)
  %3358 = trunc i32 %3357 to i8
  %3359 = and i8 %3358, 1
  %3360 = xor i8 %3359, 1
  store i8 %3360, i8* %21, align 1
  %3361 = xor i32 %3350, %3348
  %3362 = lshr i32 %3361, 4
  %3363 = trunc i32 %3362 to i8
  %3364 = and i8 %3363, 1
  store i8 %3364, i8* %27, align 1
  %3365 = zext i1 %3353 to i8
  store i8 %3365, i8* %30, align 1
  %3366 = lshr i32 %3350, 31
  %3367 = trunc i32 %3366 to i8
  store i8 %3367, i8* %33, align 1
  %3368 = xor i32 %3366, %3349
  %3369 = add nuw nsw i32 %3368, %3366
  %3370 = icmp eq i32 %3369, 2
  %3371 = zext i1 %3370 to i8
  store i8 %3371, i8* %39, align 1
  store i64 %3351, i64* %2989, align 8
  store i8 0, i8* %AL.i723, align 1
  %3372 = add i64 %3326, -5414
  %3373 = add i64 %3326, 56
  %3374 = load i64, i64* %6, align 8
  %3375 = add i64 %3374, -8
  %3376 = inttoptr i64 %3375 to i64*
  store i64 %3373, i64* %3376, align 8
  store i64 %3375, i64* %6, align 8
  store i64 %3372, i64* %3, align 8
  %3377 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.16)
  %3378 = load i64, i64* %RBP.i, align 8
  %3379 = add i64 %3378, -3472
  %3380 = load i32, i32* %EAX.i1973.pre-phi, align 4
  %3381 = load i64, i64* %3, align 8
  %3382 = add i64 %3381, 6
  store i64 %3382, i64* %3, align 8
  %3383 = inttoptr i64 %3379 to i32*
  store i32 %3380, i32* %3383, align 4
  %.pre181 = load i64, i64* %3, align 8
  %.pre182 = load i64, i64* %RBP.i, align 8
  br label %block_.L_401e94

block_.L_401e94:                                  ; preds = %block_401e56, %block_401e4c
  %3384 = phi i64 [ %3260, %block_401e4c ], [ %.pre182, %block_401e56 ]
  %3385 = phi i64 [ %3326, %block_401e4c ], [ %.pre181, %block_401e56 ]
  %MEMORY.17 = phi %struct.Memory* [ %MEMORY.16, %block_401e4c ], [ %3377, %block_401e56 ]
  store i64 2, i64* %RAX.i1036, align 8
  %3386 = add i64 %3384, -8
  %3387 = add i64 %3385, 9
  store i64 %3387, i64* %3, align 8
  %3388 = inttoptr i64 %3386 to i64*
  %3389 = load i64, i64* %3388, align 8
  store i64 %3389, i64* %RDI.i1575, align 8
  %3390 = add i64 %3384, -16
  %3391 = add i64 %3385, 13
  store i64 %3391, i64* %3, align 8
  %3392 = inttoptr i64 %3390 to i64*
  %3393 = load i64, i64* %3392, align 8
  store i64 %3393, i64* %RSI.i1998, align 8
  %3394 = add i64 %3384, -24
  %3395 = add i64 %3385, 17
  store i64 %3395, i64* %3, align 8
  %3396 = inttoptr i64 %3394 to i64*
  %3397 = load i64, i64* %3396, align 8
  store i64 %3397, i64* %RDX.i2023, align 8
  %3398 = add i64 %3384, -36
  %3399 = add i64 %3385, 20
  store i64 %3399, i64* %3, align 8
  %3400 = inttoptr i64 %3398 to i32*
  %3401 = load i32, i32* %3400, align 4
  %3402 = zext i32 %3401 to i64
  store i64 %3402, i64* %RCX.i2020, align 8
  %3403 = add i64 %3384, -3432
  %3404 = add i64 %3385, 27
  store i64 %3404, i64* %3, align 8
  %3405 = inttoptr i64 %3403 to i32*
  %3406 = load i32, i32* %3405, align 4
  %3407 = zext i32 %3406 to i64
  store i64 %3407, i64* %2988, align 8
  %3408 = add i64 %3384, -3436
  %3409 = add i64 %3385, 34
  store i64 %3409, i64* %3, align 8
  %3410 = inttoptr i64 %3408 to i32*
  %3411 = load i32, i32* %3410, align 4
  %3412 = zext i32 %3411 to i64
  store i64 %3412, i64* %2989, align 8
  %3413 = add i64 %3384, -48
  %3414 = add i64 %3385, 38
  store i64 %3414, i64* %3, align 8
  %3415 = inttoptr i64 %3413 to i64*
  %3416 = load i64, i64* %3415, align 8
  store i64 %3416, i64* %R10.i696, align 8
  %3417 = load i32*, i32** %2990, align 8
  %3418 = add i64 %3385, 45
  store i64 %3418, i64* %3, align 8
  store i32 2, i32* %3417, align 4
  %3419 = load i64, i64* %6, align 8
  %3420 = add i64 %3419, 8
  %3421 = load i64, i64* %R10.i696, align 8
  %3422 = load i64, i64* %3, align 8
  %3423 = add i64 %3422, 5
  store i64 %3423, i64* %3, align 8
  %3424 = inttoptr i64 %3420 to i64*
  store i64 %3421, i64* %3424, align 8
  %3425 = load i64, i64* %RBP.i, align 8
  %3426 = add i64 %3425, -3476
  %3427 = load i32, i32* %EAX.i1973.pre-phi, align 4
  %3428 = load i64, i64* %3, align 8
  %3429 = add i64 %3428, 6
  store i64 %3429, i64* %3, align 8
  %3430 = inttoptr i64 %3426 to i32*
  store i32 %3427, i32* %3430, align 4
  %3431 = load i64, i64* %3, align 8
  %3432 = add i64 %3431, 1204
  %3433 = add i64 %3431, 5
  %3434 = load i64, i64* %6, align 8
  %3435 = add i64 %3434, -8
  %3436 = inttoptr i64 %3435 to i64*
  store i64 %3433, i64* %3436, align 8
  store i64 %3435, i64* %6, align 8
  store i64 %3432, i64* %3, align 8
  %call2_401ecc = tail call %struct.Memory* @sub_402380.mainQSort3(%struct.State* nonnull %0, i64 %3432, %struct.Memory* %MEMORY.17)
  %3437 = load i64, i64* %RBP.i, align 8
  %3438 = add i64 %3437, -3436
  %3439 = load i64, i64* %3, align 8
  %3440 = add i64 %3439, 6
  store i64 %3440, i64* %3, align 8
  %3441 = inttoptr i64 %3438 to i32*
  %3442 = load i32, i32* %3441, align 4
  %3443 = zext i32 %3442 to i64
  store i64 %3443, i64* %RAX.i1036, align 8
  %3444 = add i64 %3437, -3432
  %3445 = add i64 %3439, 12
  store i64 %3445, i64* %3, align 8
  %3446 = inttoptr i64 %3444 to i32*
  %3447 = load i32, i32* %3446, align 4
  %3448 = sub i32 %3442, %3447
  %3449 = lshr i32 %3448, 31
  %3450 = add i32 %3448, 1
  %3451 = zext i32 %3450 to i64
  store i64 %3451, i64* %RAX.i1036, align 8
  %3452 = icmp eq i32 %3448, -1
  %3453 = icmp eq i32 %3450, 0
  %3454 = or i1 %3452, %3453
  %3455 = zext i1 %3454 to i8
  store i8 %3455, i8* %14, align 1
  %3456 = and i32 %3450, 255
  %3457 = tail call i32 @llvm.ctpop.i32(i32 %3456)
  %3458 = trunc i32 %3457 to i8
  %3459 = and i8 %3458, 1
  %3460 = xor i8 %3459, 1
  store i8 %3460, i8* %21, align 1
  %3461 = xor i32 %3450, %3448
  %3462 = lshr i32 %3461, 4
  %3463 = trunc i32 %3462 to i8
  %3464 = and i8 %3463, 1
  store i8 %3464, i8* %27, align 1
  %3465 = zext i1 %3453 to i8
  store i8 %3465, i8* %30, align 1
  %3466 = lshr i32 %3450, 31
  %3467 = trunc i32 %3466 to i8
  store i8 %3467, i8* %33, align 1
  %3468 = xor i32 %3466, %3449
  %3469 = add nuw nsw i32 %3468, %3466
  %3470 = icmp eq i32 %3469, 2
  %3471 = zext i1 %3470 to i8
  store i8 %3471, i8* %39, align 1
  %3472 = add i64 %3437, -3416
  %3473 = add i64 %3439, 21
  store i64 %3473, i64* %3, align 8
  %3474 = inttoptr i64 %3472 to i32*
  %3475 = load i32, i32* %3474, align 4
  %3476 = add i32 %3475, %3450
  %3477 = zext i32 %3476 to i64
  store i64 %3477, i64* %RAX.i1036, align 8
  %3478 = icmp ult i32 %3476, %3450
  %3479 = icmp ult i32 %3476, %3475
  %3480 = or i1 %3478, %3479
  %3481 = zext i1 %3480 to i8
  store i8 %3481, i8* %14, align 1
  %3482 = and i32 %3476, 255
  %3483 = tail call i32 @llvm.ctpop.i32(i32 %3482)
  %3484 = trunc i32 %3483 to i8
  %3485 = and i8 %3484, 1
  %3486 = xor i8 %3485, 1
  store i8 %3486, i8* %21, align 1
  %3487 = xor i32 %3475, %3450
  %3488 = xor i32 %3487, %3476
  %3489 = lshr i32 %3488, 4
  %3490 = trunc i32 %3489 to i8
  %3491 = and i8 %3490, 1
  store i8 %3491, i8* %27, align 1
  %3492 = icmp eq i32 %3476, 0
  %3493 = zext i1 %3492 to i8
  store i8 %3493, i8* %30, align 1
  %3494 = lshr i32 %3476, 31
  %3495 = trunc i32 %3494 to i8
  store i8 %3495, i8* %33, align 1
  %3496 = lshr i32 %3475, 31
  %3497 = xor i32 %3494, %3466
  %3498 = xor i32 %3494, %3496
  %3499 = add nuw nsw i32 %3497, %3498
  %3500 = icmp eq i32 %3499, 2
  %3501 = zext i1 %3500 to i8
  store i8 %3501, i8* %39, align 1
  %3502 = load i64, i64* %RBP.i, align 8
  %3503 = add i64 %3502, -3416
  %3504 = add i64 %3439, 27
  store i64 %3504, i64* %3, align 8
  %3505 = inttoptr i64 %3503 to i32*
  store i32 %3476, i32* %3505, align 4
  %3506 = load i64, i64* %RBP.i, align 8
  %3507 = add i64 %3506, -48
  %3508 = load i64, i64* %3, align 8
  %3509 = add i64 %3508, 4
  store i64 %3509, i64* %3, align 8
  %3510 = inttoptr i64 %3507 to i64*
  %3511 = load i64, i64* %3510, align 8
  store i64 %3511, i64* %RDX.i2023, align 8
  %3512 = add i64 %3508, 7
  store i64 %3512, i64* %3, align 8
  %3513 = inttoptr i64 %3511 to i32*
  %3514 = load i32, i32* %3513, align 4
  store i8 0, i8* %14, align 1
  %3515 = and i32 %3514, 255
  %3516 = tail call i32 @llvm.ctpop.i32(i32 %3515)
  %3517 = trunc i32 %3516 to i8
  %3518 = and i8 %3517, 1
  %3519 = xor i8 %3518, 1
  store i8 %3519, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3520 = icmp eq i32 %3514, 0
  %3521 = zext i1 %3520 to i8
  store i8 %3521, i8* %30, align 1
  %3522 = lshr i32 %3514, 31
  %3523 = trunc i32 %3522 to i8
  store i8 %3523, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3524 = icmp ne i8 %3523, 0
  %.v = select i1 %3524, i64 6, i64 11
  %3525 = add i64 %3512, %.v
  store i64 %3525, i64* %3, align 8
  br i1 %3524, label %block_401ef9, label %block_.L_401efe

block_401ef9:                                     ; preds = %block_.L_401e94
  %3526 = add i64 %3525, 1140
  store i64 %3526, i64* %3, align 8
  br label %block_.L_40236d

block_.L_401efe:                                  ; preds = %block_.L_401e94
  %3527 = add i64 %3525, 5
  store i64 %3527, i64* %3, align 8
  br label %block_.L_401f03

block_.L_401f03:                                  ; preds = %block_.L_401efe, %block_401e04
  %3528 = phi i64 [ %3260, %block_401e04 ], [ %3506, %block_.L_401efe ]
  %3529 = phi i64 [ %3298, %block_401e04 ], [ %3527, %block_.L_401efe ]
  %MEMORY.18 = phi %struct.Memory* [ %MEMORY.16, %block_401e04 ], [ %call2_401ecc, %block_.L_401efe ]
  %3530 = add i64 %3529, 5
  store i64 %3530, i64* %3, align 8
  br label %block_.L_401f08

block_.L_401f08:                                  ; preds = %block_.L_401f03, %block_401ddf
  %3531 = phi i64 [ %3168, %block_401ddf ], [ %3530, %block_.L_401f03 ]
  %3532 = phi i64 [ %3147, %block_401ddf ], [ %3528, %block_.L_401f03 ]
  %MEMORY.19 = phi %struct.Memory* [ %MEMORY.16, %block_401ddf ], [ %MEMORY.18, %block_.L_401f03 ]
  %3533 = add i64 %3532, -32
  %3534 = add i64 %3531, 4
  store i64 %3534, i64* %3, align 8
  %3535 = inttoptr i64 %3533 to i64*
  %3536 = load i64, i64* %3535, align 8
  store i64 %3536, i64* %RAX.i1036, align 8
  %3537 = add i64 %3532, -68
  %3538 = add i64 %3531, 8
  store i64 %3538, i64* %3, align 8
  %3539 = inttoptr i64 %3537 to i32*
  %3540 = load i32, i32* %3539, align 4
  %3541 = sext i32 %3540 to i64
  store i64 %3541, i64* %RCX.i2020, align 8
  %3542 = shl nsw i64 %3541, 2
  %3543 = add i64 %3542, %3536
  %3544 = add i64 %3531, 11
  store i64 %3544, i64* %3, align 8
  %3545 = inttoptr i64 %3543 to i32*
  %3546 = load i32, i32* %3545, align 4
  %3547 = or i32 %3546, 2097152
  %3548 = zext i32 %3547 to i64
  store i64 %3548, i64* %RDX.i2023, align 8
  store i8 0, i8* %14, align 1
  %3549 = and i32 %3546, 255
  %3550 = tail call i32 @llvm.ctpop.i32(i32 %3549)
  %3551 = trunc i32 %3550 to i8
  %3552 = and i8 %3551, 1
  %3553 = xor i8 %3552, 1
  store i8 %3553, i8* %21, align 1
  store i8 0, i8* %30, align 1
  %3554 = lshr i32 %3546, 31
  %3555 = trunc i32 %3554 to i8
  store i8 %3555, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %3556 = add i64 %3531, 20
  store i64 %3556, i64* %3, align 8
  store i32 %3547, i32* %3545, align 4
  %.pre183 = load i64, i64* %3, align 8
  %.pre184 = load i64, i64* %RBP.i, align 8
  br label %block_.L_401f1c

block_.L_401f1c:                                  ; preds = %block_.L_401f08, %block_401dd3
  %3557 = phi i64 [ %3041, %block_401dd3 ], [ %.pre184, %block_.L_401f08 ]
  %3558 = phi i64 [ %3102, %block_401dd3 ], [ %.pre183, %block_.L_401f08 ]
  %MEMORY.20 = phi %struct.Memory* [ %MEMORY.16, %block_401dd3 ], [ %MEMORY.19, %block_.L_401f08 ]
  %3559 = add i64 %3557, -56
  %3560 = add i64 %3558, 8
  store i64 %3560, i64* %3, align 8
  %3561 = inttoptr i64 %3559 to i32*
  %3562 = load i32, i32* %3561, align 4
  %3563 = add i32 %3562, 1
  %3564 = zext i32 %3563 to i64
  store i64 %3564, i64* %RAX.i1036, align 8
  %3565 = icmp eq i32 %3562, -1
  %3566 = icmp eq i32 %3563, 0
  %3567 = or i1 %3565, %3566
  %3568 = zext i1 %3567 to i8
  store i8 %3568, i8* %14, align 1
  %3569 = and i32 %3563, 255
  %3570 = tail call i32 @llvm.ctpop.i32(i32 %3569)
  %3571 = trunc i32 %3570 to i8
  %3572 = and i8 %3571, 1
  %3573 = xor i8 %3572, 1
  store i8 %3573, i8* %21, align 1
  %3574 = xor i32 %3563, %3562
  %3575 = lshr i32 %3574, 4
  %3576 = trunc i32 %3575 to i8
  %3577 = and i8 %3576, 1
  store i8 %3577, i8* %27, align 1
  %3578 = zext i1 %3566 to i8
  store i8 %3578, i8* %30, align 1
  %3579 = lshr i32 %3563, 31
  %3580 = trunc i32 %3579 to i8
  store i8 %3580, i8* %33, align 1
  %3581 = lshr i32 %3562, 31
  %3582 = xor i32 %3579, %3581
  %3583 = add nuw nsw i32 %3582, %3579
  %3584 = icmp eq i32 %3583, 2
  %3585 = zext i1 %3584 to i8
  store i8 %3585, i8* %39, align 1
  %3586 = add i64 %3558, 14
  store i64 %3586, i64* %3, align 8
  store i32 %3563, i32* %3561, align 4
  %3587 = load i64, i64* %3, align 8
  %3588 = add i64 %3587, -356
  store i64 %3588, i64* %3, align 8
  br label %block_.L_401dc6

block_.L_401f2f:                                  ; preds = %block_.L_401dc6
  %3589 = add i64 %3041, -64
  %3590 = add i64 %3070, 4
  store i64 %3590, i64* %3, align 8
  %3591 = inttoptr i64 %3589 to i32*
  %3592 = load i32, i32* %3591, align 4
  %3593 = sext i32 %3592 to i64
  store i64 %3593, i64* %RAX.i1036, align 8
  %3594 = add nsw i64 %3593, -1360
  %3595 = add i64 %3594, %3041
  %3596 = add i64 %3070, 12
  store i64 %3596, i64* %3, align 8
  %3597 = inttoptr i64 %3595 to i8*
  %3598 = load i8, i8* %3597, align 1
  store i8 0, i8* %14, align 1
  %3599 = zext i8 %3598 to i32
  %3600 = tail call i32 @llvm.ctpop.i32(i32 %3599)
  %3601 = trunc i32 %3600 to i8
  %3602 = and i8 %3601, 1
  %3603 = xor i8 %3602, 1
  store i8 %3603, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3604 = icmp eq i8 %3598, 0
  %3605 = zext i1 %3604 to i8
  store i8 %3605, i8* %30, align 1
  %3606 = lshr i8 %3598, 7
  store i8 %3606, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v232 = select i1 %3604, i64 28, i64 18
  %3607 = add i64 %3070, %.v232
  store i64 %3607, i64* %3, align 8
  br i1 %3604, label %block_.L_401f4b, label %block_401f41

block_401f41:                                     ; preds = %block_.L_401f2f
  store i64 1006, i64* %RDI.i1575, align 8
  %3608 = add i64 %3607, 12255
  %3609 = add i64 %3607, 10
  %3610 = load i64, i64* %6, align 8
  %3611 = add i64 %3610, -8
  %3612 = inttoptr i64 %3611 to i64*
  store i64 %3609, i64* %3612, align 8
  store i64 %3611, i64* %6, align 8
  store i64 %3608, i64* %3, align 8
  %call2_401f46 = tail call %struct.Memory* @sub_404f20.BZ2_bz__AssertH__fail(%struct.State* nonnull %0, i64 %3608, %struct.Memory* %MEMORY.16)
  %.pre185 = load i64, i64* %RBP.i, align 8
  %.pre186 = load i64, i64* %3, align 8
  br label %block_.L_401f4b

block_.L_401f4b:                                  ; preds = %block_401f41, %block_.L_401f2f
  %3613 = phi i64 [ %3607, %block_.L_401f2f ], [ %.pre186, %block_401f41 ]
  %3614 = phi i64 [ %3041, %block_.L_401f2f ], [ %.pre185, %block_401f41 ]
  %MEMORY.21 = phi %struct.Memory* [ %MEMORY.16, %block_.L_401f2f ], [ %call2_401f46, %block_401f41 ]
  %3615 = add i64 %3614, -56
  %3616 = add i64 %3613, 7
  store i64 %3616, i64* %3, align 8
  %3617 = inttoptr i64 %3615 to i32*
  store i32 0, i32* %3617, align 4
  %.pre187 = load i64, i64* %3, align 8
  br label %block_.L_401f52

block_.L_401f52:                                  ; preds = %block_401f5f, %block_.L_401f4b
  %3618 = phi i64 [ %3843, %block_401f5f ], [ %.pre187, %block_.L_401f4b ]
  %3619 = load i64, i64* %RBP.i, align 8
  %3620 = add i64 %3619, -56
  %3621 = add i64 %3618, 7
  store i64 %3621, i64* %3, align 8
  %3622 = inttoptr i64 %3620 to i32*
  %3623 = load i32, i32* %3622, align 4
  %3624 = add i32 %3623, -255
  %3625 = icmp ult i32 %3623, 255
  %3626 = zext i1 %3625 to i8
  store i8 %3626, i8* %14, align 1
  %3627 = and i32 %3624, 255
  %3628 = tail call i32 @llvm.ctpop.i32(i32 %3627)
  %3629 = trunc i32 %3628 to i8
  %3630 = and i8 %3629, 1
  %3631 = xor i8 %3630, 1
  store i8 %3631, i8* %21, align 1
  %3632 = xor i32 %3623, 16
  %3633 = xor i32 %3632, %3624
  %3634 = lshr i32 %3633, 4
  %3635 = trunc i32 %3634 to i8
  %3636 = and i8 %3635, 1
  store i8 %3636, i8* %27, align 1
  %3637 = icmp eq i32 %3624, 0
  %3638 = zext i1 %3637 to i8
  store i8 %3638, i8* %30, align 1
  %3639 = lshr i32 %3624, 31
  %3640 = trunc i32 %3639 to i8
  store i8 %3640, i8* %33, align 1
  %3641 = lshr i32 %3623, 31
  %3642 = xor i32 %3639, %3641
  %3643 = add nuw nsw i32 %3642, %3641
  %3644 = icmp eq i32 %3643, 2
  %3645 = zext i1 %3644 to i8
  store i8 %3645, i8* %39, align 1
  %3646 = icmp ne i8 %3640, 0
  %3647 = xor i1 %3646, %3644
  %.demorgan217 = or i1 %3637, %3647
  %.v218 = select i1 %.demorgan217, i64 13, i64 105
  %3648 = add i64 %3618, %.v218
  %3649 = add i64 %3619, -32
  %3650 = add i64 %3648, 4
  store i64 %3650, i64* %3, align 8
  %3651 = inttoptr i64 %3649 to i64*
  %3652 = load i64, i64* %3651, align 8
  store i64 %3652, i64* %RAX.i1036, align 8
  br i1 %.demorgan217, label %block_401f5f, label %block_.L_401fbb

block_401f5f:                                     ; preds = %block_.L_401f52
  %3653 = add i64 %3648, 7
  store i64 %3653, i64* %3, align 8
  %3654 = load i32, i32* %3622, align 4
  %3655 = shl i32 %3654, 8
  %3656 = zext i32 %3655 to i64
  store i64 %3656, i64* %RCX.i2020, align 8
  %3657 = lshr i32 %3654, 24
  %3658 = trunc i32 %3657 to i8
  %3659 = and i8 %3658, 1
  store i8 %3659, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3660 = icmp eq i32 %3655, 0
  %3661 = zext i1 %3660 to i8
  store i8 %3661, i8* %30, align 1
  %3662 = lshr i32 %3654, 23
  %3663 = trunc i32 %3662 to i8
  %3664 = and i8 %3663, 1
  store i8 %3664, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3665 = add i64 %3619, -64
  %3666 = add i64 %3648, 13
  store i64 %3666, i64* %3, align 8
  %3667 = inttoptr i64 %3665 to i32*
  %3668 = load i32, i32* %3667, align 4
  %3669 = add i32 %3668, %3655
  %3670 = zext i32 %3669 to i64
  store i64 %3670, i64* %RCX.i2020, align 8
  %3671 = icmp ult i32 %3669, %3655
  %3672 = icmp ult i32 %3669, %3668
  %3673 = or i1 %3671, %3672
  %3674 = zext i1 %3673 to i8
  store i8 %3674, i8* %14, align 1
  %3675 = and i32 %3669, 255
  %3676 = tail call i32 @llvm.ctpop.i32(i32 %3675)
  %3677 = trunc i32 %3676 to i8
  %3678 = and i8 %3677, 1
  %3679 = xor i8 %3678, 1
  store i8 %3679, i8* %21, align 1
  %3680 = xor i32 %3668, %3669
  %3681 = lshr i32 %3680, 4
  %3682 = trunc i32 %3681 to i8
  %3683 = and i8 %3682, 1
  store i8 %3683, i8* %27, align 1
  %3684 = icmp eq i32 %3669, 0
  %3685 = zext i1 %3684 to i8
  store i8 %3685, i8* %30, align 1
  %3686 = lshr i32 %3669, 31
  %3687 = trunc i32 %3686 to i8
  store i8 %3687, i8* %33, align 1
  %3688 = lshr i32 %3654, 23
  %3689 = and i32 %3688, 1
  %3690 = lshr i32 %3668, 31
  %3691 = xor i32 %3686, %3689
  %3692 = xor i32 %3686, %3690
  %3693 = add nuw nsw i32 %3691, %3692
  %3694 = icmp eq i32 %3693, 2
  %3695 = zext i1 %3694 to i8
  store i8 %3695, i8* %39, align 1
  %3696 = sext i32 %3669 to i64
  store i64 %3696, i64* %RDX.i2023, align 8
  %3697 = shl nsw i64 %3696, 2
  %3698 = add i64 %3652, %3697
  %3699 = add i64 %3648, 19
  store i64 %3699, i64* %3, align 8
  %3700 = inttoptr i64 %3698 to i32*
  %3701 = load i32, i32* %3700, align 4
  %3702 = and i32 %3701, -2097153
  %3703 = and i32 %3701, -2097153
  %3704 = zext i32 %3703 to i64
  store i64 %3704, i64* %RCX.i2020, align 8
  store i8 0, i8* %14, align 1
  %3705 = and i32 %3701, 255
  %3706 = tail call i32 @llvm.ctpop.i32(i32 %3705)
  %3707 = trunc i32 %3706 to i8
  %3708 = and i8 %3707, 1
  %3709 = xor i8 %3708, 1
  store i8 %3709, i8* %21, align 1
  %3710 = icmp eq i32 %3702, 0
  %3711 = zext i1 %3710 to i8
  store i8 %3711, i8* %30, align 1
  %3712 = lshr i32 %3701, 31
  %3713 = trunc i32 %3712 to i8
  store i8 %3713, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %3714 = add i64 %3648, 29
  store i64 %3714, i64* %3, align 8
  %3715 = load i32, i32* %3622, align 4
  %3716 = sext i32 %3715 to i64
  store i64 %3716, i64* %RAX.i1036, align 8
  %3717 = load i64, i64* %RBP.i, align 8
  %3718 = shl nsw i64 %3716, 2
  %3719 = add i64 %3717, -2384
  %3720 = add i64 %3719, %3718
  %3721 = add i64 %3648, 36
  store i64 %3721, i64* %3, align 8
  %3722 = inttoptr i64 %3720 to i32*
  store i32 %3703, i32* %3722, align 4
  %3723 = load i64, i64* %RBP.i, align 8
  %3724 = add i64 %3723, -32
  %3725 = load i64, i64* %3, align 8
  %3726 = add i64 %3725, 4
  store i64 %3726, i64* %3, align 8
  %3727 = inttoptr i64 %3724 to i64*
  %3728 = load i64, i64* %3727, align 8
  store i64 %3728, i64* %RAX.i1036, align 8
  %3729 = add i64 %3723, -56
  %3730 = add i64 %3725, 7
  store i64 %3730, i64* %3, align 8
  %3731 = inttoptr i64 %3729 to i32*
  %3732 = load i32, i32* %3731, align 4
  %3733 = shl i32 %3732, 8
  %3734 = zext i32 %3733 to i64
  store i64 %3734, i64* %RCX.i2020, align 8
  %3735 = lshr i32 %3732, 24
  %3736 = trunc i32 %3735 to i8
  %3737 = and i8 %3736, 1
  store i8 %3737, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3738 = icmp eq i32 %3733, 0
  %3739 = zext i1 %3738 to i8
  store i8 %3739, i8* %30, align 1
  %3740 = lshr i32 %3732, 23
  %3741 = trunc i32 %3740 to i8
  %3742 = and i8 %3741, 1
  store i8 %3742, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3743 = add i64 %3723, -64
  %3744 = add i64 %3725, 13
  store i64 %3744, i64* %3, align 8
  %3745 = inttoptr i64 %3743 to i32*
  %3746 = load i32, i32* %3745, align 4
  %3747 = add i32 %3746, %3733
  %3748 = lshr i32 %3747, 31
  %3749 = add i32 %3747, 1
  %3750 = zext i32 %3749 to i64
  store i64 %3750, i64* %RCX.i2020, align 8
  %3751 = icmp eq i32 %3747, -1
  %3752 = icmp eq i32 %3749, 0
  %3753 = or i1 %3751, %3752
  %3754 = zext i1 %3753 to i8
  store i8 %3754, i8* %14, align 1
  %3755 = and i32 %3749, 255
  %3756 = tail call i32 @llvm.ctpop.i32(i32 %3755)
  %3757 = trunc i32 %3756 to i8
  %3758 = and i8 %3757, 1
  %3759 = xor i8 %3758, 1
  store i8 %3759, i8* %21, align 1
  %3760 = xor i32 %3749, %3747
  %3761 = lshr i32 %3760, 4
  %3762 = trunc i32 %3761 to i8
  %3763 = and i8 %3762, 1
  store i8 %3763, i8* %27, align 1
  %3764 = zext i1 %3752 to i8
  store i8 %3764, i8* %30, align 1
  %3765 = lshr i32 %3749, 31
  %3766 = trunc i32 %3765 to i8
  store i8 %3766, i8* %33, align 1
  %3767 = xor i32 %3765, %3748
  %3768 = add nuw nsw i32 %3767, %3765
  %3769 = icmp eq i32 %3768, 2
  %3770 = zext i1 %3769 to i8
  store i8 %3770, i8* %39, align 1
  %3771 = sext i32 %3749 to i64
  store i64 %3771, i64* %RDX.i2023, align 8
  %3772 = load i64, i64* %RAX.i1036, align 8
  %3773 = shl nsw i64 %3771, 2
  %3774 = add i64 %3772, %3773
  %3775 = add i64 %3725, 22
  store i64 %3775, i64* %3, align 8
  %3776 = inttoptr i64 %3774 to i32*
  %3777 = load i32, i32* %3776, align 4
  %3778 = and i32 %3777, -2097153
  %3779 = add i32 %3778, -1
  %3780 = zext i32 %3779 to i64
  store i64 %3780, i64* %RCX.i2020, align 8
  %3781 = icmp eq i32 %3778, 0
  %3782 = zext i1 %3781 to i8
  store i8 %3782, i8* %14, align 1
  %fold305 = add i32 %3777, 255
  %3783 = and i32 %fold305, 255
  %3784 = tail call i32 @llvm.ctpop.i32(i32 %3783)
  %3785 = trunc i32 %3784 to i8
  %3786 = and i8 %3785, 1
  %3787 = xor i8 %3786, 1
  store i8 %3787, i8* %21, align 1
  %3788 = xor i32 %3779, %3777
  %3789 = lshr i32 %3788, 4
  %3790 = trunc i32 %3789 to i8
  %3791 = and i8 %3790, 1
  store i8 %3791, i8* %27, align 1
  %3792 = icmp eq i32 %3779, 0
  %3793 = zext i1 %3792 to i8
  store i8 %3793, i8* %30, align 1
  %3794 = lshr i32 %3779, 31
  %3795 = trunc i32 %3794 to i8
  store i8 %3795, i8* %33, align 1
  %3796 = lshr i32 %3777, 31
  %3797 = xor i32 %3794, %3796
  %3798 = add nuw nsw i32 %3797, %3796
  %3799 = icmp eq i32 %3798, 2
  %3800 = zext i1 %3799 to i8
  store i8 %3800, i8* %39, align 1
  %3801 = load i64, i64* %RBP.i, align 8
  %3802 = add i64 %3801, -56
  %3803 = add i64 %3725, 35
  store i64 %3803, i64* %3, align 8
  %3804 = inttoptr i64 %3802 to i32*
  %3805 = load i32, i32* %3804, align 4
  %3806 = sext i32 %3805 to i64
  store i64 %3806, i64* %RAX.i1036, align 8
  %3807 = shl nsw i64 %3806, 2
  %3808 = add i64 %3801, -3408
  %3809 = add i64 %3808, %3807
  %3810 = add i64 %3725, 42
  store i64 %3810, i64* %3, align 8
  %3811 = inttoptr i64 %3809 to i32*
  store i32 %3779, i32* %3811, align 4
  %3812 = load i64, i64* %RBP.i, align 8
  %3813 = add i64 %3812, -56
  %3814 = load i64, i64* %3, align 8
  %3815 = add i64 %3814, 3
  store i64 %3815, i64* %3, align 8
  %3816 = inttoptr i64 %3813 to i32*
  %3817 = load i32, i32* %3816, align 4
  %3818 = add i32 %3817, 1
  %3819 = zext i32 %3818 to i64
  store i64 %3819, i64* %RAX.i1036, align 8
  %3820 = icmp eq i32 %3817, -1
  %3821 = icmp eq i32 %3818, 0
  %3822 = or i1 %3820, %3821
  %3823 = zext i1 %3822 to i8
  store i8 %3823, i8* %14, align 1
  %3824 = and i32 %3818, 255
  %3825 = tail call i32 @llvm.ctpop.i32(i32 %3824)
  %3826 = trunc i32 %3825 to i8
  %3827 = and i8 %3826, 1
  %3828 = xor i8 %3827, 1
  store i8 %3828, i8* %21, align 1
  %3829 = xor i32 %3818, %3817
  %3830 = lshr i32 %3829, 4
  %3831 = trunc i32 %3830 to i8
  %3832 = and i8 %3831, 1
  store i8 %3832, i8* %27, align 1
  %3833 = zext i1 %3821 to i8
  store i8 %3833, i8* %30, align 1
  %3834 = lshr i32 %3818, 31
  %3835 = trunc i32 %3834 to i8
  store i8 %3835, i8* %33, align 1
  %3836 = lshr i32 %3817, 31
  %3837 = xor i32 %3834, %3836
  %3838 = add nuw nsw i32 %3837, %3834
  %3839 = icmp eq i32 %3838, 2
  %3840 = zext i1 %3839 to i8
  store i8 %3840, i8* %39, align 1
  %3841 = add i64 %3814, 9
  store i64 %3841, i64* %3, align 8
  store i32 %3818, i32* %3816, align 4
  %3842 = load i64, i64* %3, align 8
  %3843 = add i64 %3842, -100
  store i64 %3843, i64* %3, align 8
  br label %block_.L_401f52

block_.L_401fbb:                                  ; preds = %block_.L_401f52
  %3844 = add i64 %3619, -64
  %3845 = add i64 %3648, 7
  store i64 %3845, i64* %3, align 8
  %3846 = inttoptr i64 %3844 to i32*
  %3847 = load i32, i32* %3846, align 4
  %3848 = shl i32 %3847, 8
  %3849 = zext i32 %3848 to i64
  store i64 %3849, i64* %RCX.i2020, align 8
  %3850 = lshr i32 %3847, 24
  %3851 = trunc i32 %3850 to i8
  %3852 = and i8 %3851, 1
  store i8 %3852, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3853 = icmp eq i32 %3848, 0
  %3854 = zext i1 %3853 to i8
  store i8 %3854, i8* %30, align 1
  %3855 = lshr i32 %3847, 23
  %3856 = trunc i32 %3855 to i8
  %3857 = and i8 %3856, 1
  store i8 %3857, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3858 = sext i32 %3848 to i64
  store i64 %3858, i64* %RDX.i2023, align 8
  %3859 = shl nsw i64 %3858, 2
  %3860 = add i64 %3652, %3859
  %3861 = add i64 %3648, 16
  store i64 %3861, i64* %3, align 8
  %3862 = inttoptr i64 %3860 to i32*
  %3863 = load i32, i32* %3862, align 4
  %3864 = and i32 %3863, -2097153
  %3865 = and i32 %3863, -2097153
  %3866 = zext i32 %3865 to i64
  store i64 %3866, i64* %RCX.i2020, align 8
  store i8 0, i8* %14, align 1
  %3867 = and i32 %3863, 255
  %3868 = tail call i32 @llvm.ctpop.i32(i32 %3867)
  %3869 = trunc i32 %3868 to i8
  %3870 = and i8 %3869, 1
  %3871 = xor i8 %3870, 1
  store i8 %3871, i8* %21, align 1
  %3872 = icmp eq i32 %3864, 0
  %3873 = zext i1 %3872 to i8
  store i8 %3873, i8* %30, align 1
  %3874 = lshr i32 %3863, 31
  %3875 = trunc i32 %3874 to i8
  store i8 %3875, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %3876 = add i64 %3648, 25
  store i64 %3876, i64* %3, align 8
  store i32 %3865, i32* %3622, align 4
  %.pre188 = load i64, i64* %3, align 8
  br label %block_.L_401fd4

block_.L_401fd4:                                  ; preds = %block_.L_40205d, %block_.L_401fbb
  %3877 = phi i64 [ %4138, %block_.L_40205d ], [ %.pre188, %block_.L_401fbb ]
  %3878 = load i64, i64* %RBP.i, align 8
  %3879 = add i64 %3878, -56
  %3880 = add i64 %3877, 3
  store i64 %3880, i64* %3, align 8
  %3881 = inttoptr i64 %3879 to i32*
  %3882 = load i32, i32* %3881, align 4
  %3883 = zext i32 %3882 to i64
  store i64 %3883, i64* %RAX.i1036, align 8
  %3884 = add i64 %3878, -64
  %3885 = add i64 %3877, 7
  store i64 %3885, i64* %3, align 8
  %3886 = inttoptr i64 %3884 to i32*
  %3887 = load i32, i32* %3886, align 4
  %3888 = sext i32 %3887 to i64
  store i64 %3888, i64* %RCX.i2020, align 8
  %3889 = shl nsw i64 %3888, 2
  %3890 = add nsw i64 %3889, -2384
  %3891 = add i64 %3890, %3878
  %3892 = add i64 %3877, 14
  store i64 %3892, i64* %3, align 8
  %3893 = inttoptr i64 %3891 to i32*
  %3894 = load i32, i32* %3893, align 4
  %3895 = sub i32 %3882, %3894
  %3896 = icmp ult i32 %3882, %3894
  %3897 = zext i1 %3896 to i8
  store i8 %3897, i8* %14, align 1
  %3898 = and i32 %3895, 255
  %3899 = tail call i32 @llvm.ctpop.i32(i32 %3898)
  %3900 = trunc i32 %3899 to i8
  %3901 = and i8 %3900, 1
  %3902 = xor i8 %3901, 1
  store i8 %3902, i8* %21, align 1
  %3903 = xor i32 %3894, %3882
  %3904 = xor i32 %3903, %3895
  %3905 = lshr i32 %3904, 4
  %3906 = trunc i32 %3905 to i8
  %3907 = and i8 %3906, 1
  store i8 %3907, i8* %27, align 1
  %3908 = icmp eq i32 %3895, 0
  %3909 = zext i1 %3908 to i8
  store i8 %3909, i8* %30, align 1
  %3910 = lshr i32 %3895, 31
  %3911 = trunc i32 %3910 to i8
  store i8 %3911, i8* %33, align 1
  %3912 = lshr i32 %3882, 31
  %3913 = lshr i32 %3894, 31
  %3914 = xor i32 %3913, %3912
  %3915 = xor i32 %3910, %3912
  %3916 = add nuw nsw i32 %3915, %3914
  %3917 = icmp eq i32 %3916, 2
  %3918 = zext i1 %3917 to i8
  store i8 %3918, i8* %39, align 1
  %3919 = icmp ne i8 %3911, 0
  %3920 = xor i1 %3919, %3917
  %.v233 = select i1 %3920, i64 20, i64 156
  %3921 = add i64 %3877, %.v233
  store i64 %3921, i64* %3, align 8
  br i1 %3920, label %block_401fe8, label %block_.L_402070

block_401fe8:                                     ; preds = %block_.L_401fd4
  %3922 = add i64 %3878, -8
  %3923 = add i64 %3921, 4
  store i64 %3923, i64* %3, align 8
  %3924 = inttoptr i64 %3922 to i64*
  %3925 = load i64, i64* %3924, align 8
  store i64 %3925, i64* %RAX.i1036, align 8
  %3926 = add i64 %3921, 8
  store i64 %3926, i64* %3, align 8
  %3927 = load i32, i32* %3881, align 4
  %3928 = sext i32 %3927 to i64
  store i64 %3928, i64* %RCX.i2020, align 8
  %3929 = shl nsw i64 %3928, 2
  %3930 = add i64 %3929, %3925
  %3931 = add i64 %3921, 11
  store i64 %3931, i64* %3, align 8
  %3932 = inttoptr i64 %3930 to i32*
  %3933 = load i32, i32* %3932, align 4
  %3934 = add i32 %3933, -1
  %3935 = zext i32 %3934 to i64
  store i64 %3935, i64* %RDX.i2023, align 8
  %3936 = icmp eq i32 %3933, 0
  %3937 = zext i1 %3936 to i8
  store i8 %3937, i8* %14, align 1
  %3938 = and i32 %3934, 255
  %3939 = tail call i32 @llvm.ctpop.i32(i32 %3938)
  %3940 = trunc i32 %3939 to i8
  %3941 = and i8 %3940, 1
  %3942 = xor i8 %3941, 1
  store i8 %3942, i8* %21, align 1
  %3943 = xor i32 %3934, %3933
  %3944 = lshr i32 %3943, 4
  %3945 = trunc i32 %3944 to i8
  %3946 = and i8 %3945, 1
  store i8 %3946, i8* %27, align 1
  %3947 = icmp eq i32 %3934, 0
  %3948 = zext i1 %3947 to i8
  store i8 %3948, i8* %30, align 1
  %3949 = lshr i32 %3934, 31
  %3950 = trunc i32 %3949 to i8
  store i8 %3950, i8* %33, align 1
  %3951 = lshr i32 %3933, 31
  %3952 = xor i32 %3949, %3951
  %3953 = add nuw nsw i32 %3952, %3951
  %3954 = icmp eq i32 %3953, 2
  %3955 = zext i1 %3954 to i8
  store i8 %3955, i8* %39, align 1
  %3956 = add i64 %3878, -60
  %3957 = add i64 %3921, 17
  store i64 %3957, i64* %3, align 8
  %3958 = inttoptr i64 %3956 to i32*
  store i32 %3934, i32* %3958, align 4
  %3959 = load i64, i64* %RBP.i, align 8
  %3960 = add i64 %3959, -60
  %3961 = load i64, i64* %3, align 8
  %3962 = add i64 %3961, 4
  store i64 %3962, i64* %3, align 8
  %3963 = inttoptr i64 %3960 to i32*
  %3964 = load i32, i32* %3963, align 4
  store i8 0, i8* %14, align 1
  %3965 = and i32 %3964, 255
  %3966 = tail call i32 @llvm.ctpop.i32(i32 %3965)
  %3967 = trunc i32 %3966 to i8
  %3968 = and i8 %3967, 1
  %3969 = xor i8 %3968, 1
  store i8 %3969, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3970 = icmp eq i32 %3964, 0
  %3971 = zext i1 %3970 to i8
  store i8 %3971, i8* %30, align 1
  %3972 = lshr i32 %3964, 31
  %3973 = trunc i32 %3972 to i8
  store i8 %3973, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3974 = icmp ne i8 %3973, 0
  %.v73 = select i1 %3974, i64 6, i64 15
  %3975 = add i64 %3962, %.v73
  store i64 %3975, i64* %3, align 8
  br i1 %3974, label %block_402003, label %block_.L_40200c

block_402003:                                     ; preds = %block_401fe8
  %3976 = add i64 %3959, -36
  %3977 = add i64 %3975, 3
  store i64 %3977, i64* %3, align 8
  %3978 = inttoptr i64 %3976 to i32*
  %3979 = load i32, i32* %3978, align 4
  %3980 = zext i32 %3979 to i64
  store i64 %3980, i64* %RAX.i1036, align 8
  %3981 = add i64 %3975, 6
  store i64 %3981, i64* %3, align 8
  %3982 = load i32, i32* %3963, align 4
  %3983 = add i32 %3982, %3979
  %3984 = zext i32 %3983 to i64
  store i64 %3984, i64* %RAX.i1036, align 8
  %3985 = icmp ult i32 %3983, %3979
  %3986 = icmp ult i32 %3983, %3982
  %3987 = or i1 %3985, %3986
  %3988 = zext i1 %3987 to i8
  store i8 %3988, i8* %14, align 1
  %3989 = and i32 %3983, 255
  %3990 = tail call i32 @llvm.ctpop.i32(i32 %3989)
  %3991 = trunc i32 %3990 to i8
  %3992 = and i8 %3991, 1
  %3993 = xor i8 %3992, 1
  store i8 %3993, i8* %21, align 1
  %3994 = xor i32 %3982, %3979
  %3995 = xor i32 %3994, %3983
  %3996 = lshr i32 %3995, 4
  %3997 = trunc i32 %3996 to i8
  %3998 = and i8 %3997, 1
  store i8 %3998, i8* %27, align 1
  %3999 = icmp eq i32 %3983, 0
  %4000 = zext i1 %3999 to i8
  store i8 %4000, i8* %30, align 1
  %4001 = lshr i32 %3983, 31
  %4002 = trunc i32 %4001 to i8
  store i8 %4002, i8* %33, align 1
  %4003 = lshr i32 %3979, 31
  %4004 = lshr i32 %3982, 31
  %4005 = xor i32 %4001, %4003
  %4006 = xor i32 %4001, %4004
  %4007 = add nuw nsw i32 %4005, %4006
  %4008 = icmp eq i32 %4007, 2
  %4009 = zext i1 %4008 to i8
  store i8 %4009, i8* %39, align 1
  %4010 = add i64 %3975, 9
  store i64 %4010, i64* %3, align 8
  store i32 %3983, i32* %3963, align 4
  %.pre203 = load i64, i64* %RBP.i, align 8
  %.pre204 = load i64, i64* %3, align 8
  br label %block_.L_40200c

block_.L_40200c:                                  ; preds = %block_401fe8, %block_402003
  %4011 = phi i64 [ %3975, %block_401fe8 ], [ %.pre204, %block_402003 ]
  %4012 = phi i64 [ %3959, %block_401fe8 ], [ %.pre203, %block_402003 ]
  %4013 = add i64 %4012, -16
  %4014 = add i64 %4011, 4
  store i64 %4014, i64* %3, align 8
  %4015 = inttoptr i64 %4013 to i64*
  %4016 = load i64, i64* %4015, align 8
  store i64 %4016, i64* %RAX.i1036, align 8
  %4017 = add i64 %4012, -60
  %4018 = add i64 %4011, 8
  store i64 %4018, i64* %3, align 8
  %4019 = inttoptr i64 %4017 to i32*
  %4020 = load i32, i32* %4019, align 4
  %4021 = sext i32 %4020 to i64
  store i64 %4021, i64* %RCX.i2020, align 8
  %4022 = add i64 %4016, %4021
  %4023 = add i64 %4011, 11
  store i64 %4023, i64* %3, align 8
  %4024 = inttoptr i64 %4022 to i8*
  %4025 = load i8, i8* %4024, align 1
  store i8 %4025, i8* %DL.i1628, align 1
  %4026 = add i64 %4012, -3409
  %4027 = add i64 %4011, 17
  store i64 %4027, i64* %3, align 8
  %4028 = inttoptr i64 %4026 to i8*
  store i8 %4025, i8* %4028, align 1
  %4029 = load i64, i64* %RBP.i, align 8
  %4030 = add i64 %4029, -3409
  %4031 = load i64, i64* %3, align 8
  %4032 = add i64 %4031, 7
  store i64 %4032, i64* %3, align 8
  %4033 = inttoptr i64 %4030 to i8*
  %4034 = load i8, i8* %4033, align 1
  %4035 = zext i8 %4034 to i64
  store i64 %4035, i64* %RSI.i1998, align 8
  %4036 = zext i8 %4034 to i64
  store i64 %4036, i64* %RAX.i1036, align 8
  %4037 = add nsw i64 %4036, -1360
  %4038 = add i64 %4037, %4029
  %4039 = add i64 %4031, 17
  store i64 %4039, i64* %3, align 8
  %4040 = inttoptr i64 %4038 to i8*
  %4041 = load i8, i8* %4040, align 1
  store i8 0, i8* %14, align 1
  %4042 = zext i8 %4041 to i32
  %4043 = tail call i32 @llvm.ctpop.i32(i32 %4042)
  %4044 = trunc i32 %4043 to i8
  %4045 = and i8 %4044, 1
  %4046 = xor i8 %4045, 1
  store i8 %4046, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %4047 = icmp eq i8 %4041, 0
  %4048 = zext i1 %4047 to i8
  store i8 %4048, i8* %30, align 1
  %4049 = lshr i8 %4041, 7
  store i8 %4049, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v244 = select i1 %4047, i64 23, i64 64
  %4050 = add i64 %4031, %.v244
  store i64 %4050, i64* %3, align 8
  br i1 %4047, label %block_402034, label %block_.L_40205d

block_402034:                                     ; preds = %block_.L_40200c
  %4051 = add i64 %4029, -60
  %4052 = add i64 %4050, 3
  store i64 %4052, i64* %3, align 8
  %4053 = inttoptr i64 %4051 to i32*
  %4054 = load i32, i32* %4053, align 4
  %4055 = zext i32 %4054 to i64
  store i64 %4055, i64* %RAX.i1036, align 8
  %4056 = add i64 %4029, -8
  %4057 = add i64 %4050, 7
  store i64 %4057, i64* %3, align 8
  %4058 = inttoptr i64 %4056 to i64*
  %4059 = load i64, i64* %4058, align 8
  store i64 %4059, i64* %RCX.i2020, align 8
  %4060 = add i64 %4050, 14
  store i64 %4060, i64* %3, align 8
  %4061 = load i8, i8* %4033, align 1
  %4062 = zext i8 %4061 to i64
  store i64 %4062, i64* %RDX.i2023, align 8
  %4063 = zext i8 %4061 to i64
  store i64 %4063, i64* %RSI.i1998, align 8
  %4064 = shl nuw nsw i64 %4063, 2
  %4065 = add nsw i64 %4064, -2384
  %4066 = add i64 %4065, %4029
  %4067 = add i64 %4050, 23
  store i64 %4067, i64* %3, align 8
  %4068 = inttoptr i64 %4066 to i32*
  %4069 = load i32, i32* %4068, align 4
  %4070 = zext i32 %4069 to i64
  store i64 %4070, i64* %RDX.i2023, align 8
  %4071 = add i32 %4069, 1
  %4072 = zext i32 %4071 to i64
  store i64 %4072, i64* %RDI.i1575, align 8
  %4073 = icmp eq i32 %4069, -1
  %4074 = icmp eq i32 %4071, 0
  %4075 = or i1 %4073, %4074
  %4076 = zext i1 %4075 to i8
  store i8 %4076, i8* %14, align 1
  %4077 = and i32 %4071, 255
  %4078 = tail call i32 @llvm.ctpop.i32(i32 %4077)
  %4079 = trunc i32 %4078 to i8
  %4080 = and i8 %4079, 1
  %4081 = xor i8 %4080, 1
  store i8 %4081, i8* %21, align 1
  %4082 = xor i32 %4071, %4069
  %4083 = lshr i32 %4082, 4
  %4084 = trunc i32 %4083 to i8
  %4085 = and i8 %4084, 1
  store i8 %4085, i8* %27, align 1
  %4086 = zext i1 %4074 to i8
  store i8 %4086, i8* %30, align 1
  %4087 = lshr i32 %4071, 31
  %4088 = trunc i32 %4087 to i8
  store i8 %4088, i8* %33, align 1
  %4089 = lshr i32 %4069, 31
  %4090 = xor i32 %4087, %4089
  %4091 = add nuw nsw i32 %4090, %4087
  %4092 = icmp eq i32 %4091, 2
  %4093 = zext i1 %4092 to i8
  store i8 %4093, i8* %39, align 1
  %4094 = add i64 %4029, -2384
  %4095 = add i64 %4094, %4064
  %4096 = add i64 %4050, 35
  store i64 %4096, i64* %3, align 8
  %4097 = inttoptr i64 %4095 to i32*
  store i32 %4071, i32* %4097, align 4
  %4098 = load i32, i32* %EDX.i1918, align 4
  %4099 = load i64, i64* %3, align 8
  %4100 = sext i32 %4098 to i64
  store i64 %4100, i64* %RSI.i1998, align 8
  %4101 = load i64, i64* %RCX.i2020, align 8
  %4102 = shl nsw i64 %4100, 2
  %4103 = add i64 %4101, %4102
  %4104 = load i32, i32* %EAX.i1973.pre-phi, align 4
  %4105 = add i64 %4099, 6
  store i64 %4105, i64* %3, align 8
  %4106 = inttoptr i64 %4103 to i32*
  store i32 %4104, i32* %4106, align 4
  %.pre205 = load i64, i64* %3, align 8
  %.pre206 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40205d

block_.L_40205d:                                  ; preds = %block_.L_40200c, %block_402034
  %4107 = phi i64 [ %.pre206, %block_402034 ], [ %4029, %block_.L_40200c ]
  %4108 = phi i64 [ %.pre205, %block_402034 ], [ %4050, %block_.L_40200c ]
  %4109 = add i64 %4107, -56
  %4110 = add i64 %4108, 8
  store i64 %4110, i64* %3, align 8
  %4111 = inttoptr i64 %4109 to i32*
  %4112 = load i32, i32* %4111, align 4
  %4113 = add i32 %4112, 1
  %4114 = zext i32 %4113 to i64
  store i64 %4114, i64* %RAX.i1036, align 8
  %4115 = icmp eq i32 %4112, -1
  %4116 = icmp eq i32 %4113, 0
  %4117 = or i1 %4115, %4116
  %4118 = zext i1 %4117 to i8
  store i8 %4118, i8* %14, align 1
  %4119 = and i32 %4113, 255
  %4120 = tail call i32 @llvm.ctpop.i32(i32 %4119)
  %4121 = trunc i32 %4120 to i8
  %4122 = and i8 %4121, 1
  %4123 = xor i8 %4122, 1
  store i8 %4123, i8* %21, align 1
  %4124 = xor i32 %4113, %4112
  %4125 = lshr i32 %4124, 4
  %4126 = trunc i32 %4125 to i8
  %4127 = and i8 %4126, 1
  store i8 %4127, i8* %27, align 1
  %4128 = zext i1 %4116 to i8
  store i8 %4128, i8* %30, align 1
  %4129 = lshr i32 %4113, 31
  %4130 = trunc i32 %4129 to i8
  store i8 %4130, i8* %33, align 1
  %4131 = lshr i32 %4112, 31
  %4132 = xor i32 %4129, %4131
  %4133 = add nuw nsw i32 %4132, %4129
  %4134 = icmp eq i32 %4133, 2
  %4135 = zext i1 %4134 to i8
  store i8 %4135, i8* %39, align 1
  %4136 = add i64 %4108, 14
  store i64 %4136, i64* %3, align 8
  store i32 %4113, i32* %4111, align 4
  %4137 = load i64, i64* %3, align 8
  %4138 = add i64 %4137, -151
  store i64 %4138, i64* %3, align 8
  br label %block_.L_401fd4

block_.L_402070:                                  ; preds = %block_.L_401fd4
  %4139 = add i64 %3878, -32
  %4140 = add i64 %3921, 4
  store i64 %4140, i64* %3, align 8
  %4141 = inttoptr i64 %4139 to i64*
  %4142 = load i64, i64* %4141, align 8
  store i64 %4142, i64* %RAX.i1036, align 8
  %4143 = add i64 %3921, 7
  store i64 %4143, i64* %3, align 8
  %4144 = load i32, i32* %3886, align 4
  %4145 = add i32 %4144, 1
  %4146 = shl i32 %4145, 8
  %4147 = zext i32 %4146 to i64
  store i64 %4147, i64* %RCX.i2020, align 8
  %4148 = lshr i32 %4145, 24
  %4149 = trunc i32 %4148 to i8
  %4150 = and i8 %4149, 1
  store i8 %4150, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %4151 = icmp eq i32 %4146, 0
  %4152 = zext i1 %4151 to i8
  store i8 %4152, i8* %30, align 1
  %4153 = lshr i32 %4145, 23
  %4154 = trunc i32 %4153 to i8
  %4155 = and i8 %4154, 1
  store i8 %4155, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4156 = sext i32 %4146 to i64
  store i64 %4156, i64* %RDX.i2023, align 8
  %4157 = shl nsw i64 %4156, 2
  %4158 = add i64 %4142, %4157
  %4159 = add i64 %3921, 19
  store i64 %4159, i64* %3, align 8
  %4160 = inttoptr i64 %4158 to i32*
  %4161 = load i32, i32* %4160, align 4
  %4162 = and i32 %4161, -2097153
  %4163 = add i32 %4162, -1
  %4164 = zext i32 %4163 to i64
  store i64 %4164, i64* %RCX.i2020, align 8
  %4165 = icmp eq i32 %4162, 0
  %4166 = zext i1 %4165 to i8
  store i8 %4166, i8* %14, align 1
  %fold = add i32 %4161, 255
  %4167 = and i32 %fold, 255
  %4168 = tail call i32 @llvm.ctpop.i32(i32 %4167)
  %4169 = trunc i32 %4168 to i8
  %4170 = and i8 %4169, 1
  %4171 = xor i8 %4170, 1
  store i8 %4171, i8* %21, align 1
  %4172 = xor i32 %4163, %4161
  %4173 = lshr i32 %4172, 4
  %4174 = trunc i32 %4173 to i8
  %4175 = and i8 %4174, 1
  store i8 %4175, i8* %27, align 1
  %4176 = icmp eq i32 %4163, 0
  %4177 = zext i1 %4176 to i8
  store i8 %4177, i8* %30, align 1
  %4178 = lshr i32 %4163, 31
  %4179 = trunc i32 %4178 to i8
  store i8 %4179, i8* %33, align 1
  %4180 = lshr i32 %4161, 31
  %4181 = xor i32 %4178, %4180
  %4182 = add nuw nsw i32 %4181, %4180
  %4183 = icmp eq i32 %4182, 2
  %4184 = zext i1 %4183 to i8
  store i8 %4184, i8* %39, align 1
  %4185 = load i64, i64* %RBP.i, align 8
  %4186 = add i64 %4185, -56
  %4187 = add i64 %3921, 31
  store i64 %4187, i64* %3, align 8
  %4188 = inttoptr i64 %4186 to i32*
  store i32 %4163, i32* %4188, align 4
  %.pre189 = load i64, i64* %3, align 8
  br label %block_.L_40208f

block_.L_40208f:                                  ; preds = %block_.L_402118, %block_.L_402070
  %4189 = phi i64 [ %4453, %block_.L_402118 ], [ %.pre189, %block_.L_402070 ]
  %4190 = load i64, i64* %RBP.i, align 8
  %4191 = add i64 %4190, -56
  %4192 = add i64 %4189, 3
  store i64 %4192, i64* %3, align 8
  %4193 = inttoptr i64 %4191 to i32*
  %4194 = load i32, i32* %4193, align 4
  %4195 = zext i32 %4194 to i64
  store i64 %4195, i64* %RAX.i1036, align 8
  %4196 = add i64 %4190, -64
  %4197 = add i64 %4189, 7
  store i64 %4197, i64* %3, align 8
  %4198 = inttoptr i64 %4196 to i32*
  %4199 = load i32, i32* %4198, align 4
  %4200 = sext i32 %4199 to i64
  store i64 %4200, i64* %RCX.i2020, align 8
  %4201 = shl nsw i64 %4200, 2
  %4202 = add nsw i64 %4201, -3408
  %4203 = add i64 %4202, %4190
  %4204 = add i64 %4189, 14
  store i64 %4204, i64* %3, align 8
  %4205 = inttoptr i64 %4203 to i32*
  %4206 = load i32, i32* %4205, align 4
  %4207 = sub i32 %4194, %4206
  %4208 = icmp ult i32 %4194, %4206
  %4209 = zext i1 %4208 to i8
  store i8 %4209, i8* %14, align 1
  %4210 = and i32 %4207, 255
  %4211 = tail call i32 @llvm.ctpop.i32(i32 %4210)
  %4212 = trunc i32 %4211 to i8
  %4213 = and i8 %4212, 1
  %4214 = xor i8 %4213, 1
  store i8 %4214, i8* %21, align 1
  %4215 = xor i32 %4206, %4194
  %4216 = xor i32 %4215, %4207
  %4217 = lshr i32 %4216, 4
  %4218 = trunc i32 %4217 to i8
  %4219 = and i8 %4218, 1
  store i8 %4219, i8* %27, align 1
  %4220 = icmp eq i32 %4207, 0
  %4221 = zext i1 %4220 to i8
  store i8 %4221, i8* %30, align 1
  %4222 = lshr i32 %4207, 31
  %4223 = trunc i32 %4222 to i8
  store i8 %4223, i8* %33, align 1
  %4224 = lshr i32 %4194, 31
  %4225 = lshr i32 %4206, 31
  %4226 = xor i32 %4225, %4224
  %4227 = xor i32 %4222, %4224
  %4228 = add nuw nsw i32 %4227, %4226
  %4229 = icmp eq i32 %4228, 2
  %4230 = zext i1 %4229 to i8
  store i8 %4230, i8* %39, align 1
  %4231 = icmp ne i8 %4223, 0
  %4232 = xor i1 %4231, %4229
  %4233 = or i1 %4220, %4232
  %.v234 = select i1 %4233, i64 156, i64 20
  %4234 = add i64 %4189, %.v234
  store i64 %4234, i64* %3, align 8
  br i1 %4233, label %block_.L_40212b, label %block_4020a3

block_4020a3:                                     ; preds = %block_.L_40208f
  %4235 = add i64 %4190, -8
  %4236 = add i64 %4234, 4
  store i64 %4236, i64* %3, align 8
  %4237 = inttoptr i64 %4235 to i64*
  %4238 = load i64, i64* %4237, align 8
  store i64 %4238, i64* %RAX.i1036, align 8
  %4239 = add i64 %4234, 8
  store i64 %4239, i64* %3, align 8
  %4240 = load i32, i32* %4193, align 4
  %4241 = sext i32 %4240 to i64
  store i64 %4241, i64* %RCX.i2020, align 8
  %4242 = shl nsw i64 %4241, 2
  %4243 = add i64 %4242, %4238
  %4244 = add i64 %4234, 11
  store i64 %4244, i64* %3, align 8
  %4245 = inttoptr i64 %4243 to i32*
  %4246 = load i32, i32* %4245, align 4
  %4247 = add i32 %4246, -1
  %4248 = zext i32 %4247 to i64
  store i64 %4248, i64* %RDX.i2023, align 8
  %4249 = icmp eq i32 %4246, 0
  %4250 = zext i1 %4249 to i8
  store i8 %4250, i8* %14, align 1
  %4251 = and i32 %4247, 255
  %4252 = tail call i32 @llvm.ctpop.i32(i32 %4251)
  %4253 = trunc i32 %4252 to i8
  %4254 = and i8 %4253, 1
  %4255 = xor i8 %4254, 1
  store i8 %4255, i8* %21, align 1
  %4256 = xor i32 %4247, %4246
  %4257 = lshr i32 %4256, 4
  %4258 = trunc i32 %4257 to i8
  %4259 = and i8 %4258, 1
  store i8 %4259, i8* %27, align 1
  %4260 = icmp eq i32 %4247, 0
  %4261 = zext i1 %4260 to i8
  store i8 %4261, i8* %30, align 1
  %4262 = lshr i32 %4247, 31
  %4263 = trunc i32 %4262 to i8
  store i8 %4263, i8* %33, align 1
  %4264 = lshr i32 %4246, 31
  %4265 = xor i32 %4262, %4264
  %4266 = add nuw nsw i32 %4265, %4264
  %4267 = icmp eq i32 %4266, 2
  %4268 = zext i1 %4267 to i8
  store i8 %4268, i8* %39, align 1
  %4269 = add i64 %4190, -60
  %4270 = add i64 %4234, 17
  store i64 %4270, i64* %3, align 8
  %4271 = inttoptr i64 %4269 to i32*
  store i32 %4247, i32* %4271, align 4
  %4272 = load i64, i64* %RBP.i, align 8
  %4273 = add i64 %4272, -60
  %4274 = load i64, i64* %3, align 8
  %4275 = add i64 %4274, 4
  store i64 %4275, i64* %3, align 8
  %4276 = inttoptr i64 %4273 to i32*
  %4277 = load i32, i32* %4276, align 4
  store i8 0, i8* %14, align 1
  %4278 = and i32 %4277, 255
  %4279 = tail call i32 @llvm.ctpop.i32(i32 %4278)
  %4280 = trunc i32 %4279 to i8
  %4281 = and i8 %4280, 1
  %4282 = xor i8 %4281, 1
  store i8 %4282, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %4283 = icmp eq i32 %4277, 0
  %4284 = zext i1 %4283 to i8
  store i8 %4284, i8* %30, align 1
  %4285 = lshr i32 %4277, 31
  %4286 = trunc i32 %4285 to i8
  store i8 %4286, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4287 = icmp ne i8 %4286, 0
  %.v71 = select i1 %4287, i64 6, i64 15
  %4288 = add i64 %4275, %.v71
  store i64 %4288, i64* %3, align 8
  br i1 %4287, label %block_4020be, label %block_.L_4020c7

block_4020be:                                     ; preds = %block_4020a3
  %4289 = add i64 %4272, -36
  %4290 = add i64 %4288, 3
  store i64 %4290, i64* %3, align 8
  %4291 = inttoptr i64 %4289 to i32*
  %4292 = load i32, i32* %4291, align 4
  %4293 = zext i32 %4292 to i64
  store i64 %4293, i64* %RAX.i1036, align 8
  %4294 = add i64 %4288, 6
  store i64 %4294, i64* %3, align 8
  %4295 = load i32, i32* %4276, align 4
  %4296 = add i32 %4295, %4292
  %4297 = zext i32 %4296 to i64
  store i64 %4297, i64* %RAX.i1036, align 8
  %4298 = icmp ult i32 %4296, %4292
  %4299 = icmp ult i32 %4296, %4295
  %4300 = or i1 %4298, %4299
  %4301 = zext i1 %4300 to i8
  store i8 %4301, i8* %14, align 1
  %4302 = and i32 %4296, 255
  %4303 = tail call i32 @llvm.ctpop.i32(i32 %4302)
  %4304 = trunc i32 %4303 to i8
  %4305 = and i8 %4304, 1
  %4306 = xor i8 %4305, 1
  store i8 %4306, i8* %21, align 1
  %4307 = xor i32 %4295, %4292
  %4308 = xor i32 %4307, %4296
  %4309 = lshr i32 %4308, 4
  %4310 = trunc i32 %4309 to i8
  %4311 = and i8 %4310, 1
  store i8 %4311, i8* %27, align 1
  %4312 = icmp eq i32 %4296, 0
  %4313 = zext i1 %4312 to i8
  store i8 %4313, i8* %30, align 1
  %4314 = lshr i32 %4296, 31
  %4315 = trunc i32 %4314 to i8
  store i8 %4315, i8* %33, align 1
  %4316 = lshr i32 %4292, 31
  %4317 = lshr i32 %4295, 31
  %4318 = xor i32 %4314, %4316
  %4319 = xor i32 %4314, %4317
  %4320 = add nuw nsw i32 %4318, %4319
  %4321 = icmp eq i32 %4320, 2
  %4322 = zext i1 %4321 to i8
  store i8 %4322, i8* %39, align 1
  %4323 = add i64 %4288, 9
  store i64 %4323, i64* %3, align 8
  store i32 %4296, i32* %4276, align 4
  %.pre190 = load i64, i64* %RBP.i, align 8
  %.pre191 = load i64, i64* %3, align 8
  br label %block_.L_4020c7

block_.L_4020c7:                                  ; preds = %block_4020a3, %block_4020be
  %4324 = phi i64 [ %4288, %block_4020a3 ], [ %.pre191, %block_4020be ]
  %4325 = phi i64 [ %4272, %block_4020a3 ], [ %.pre190, %block_4020be ]
  %4326 = add i64 %4325, -16
  %4327 = add i64 %4324, 4
  store i64 %4327, i64* %3, align 8
  %4328 = inttoptr i64 %4326 to i64*
  %4329 = load i64, i64* %4328, align 8
  store i64 %4329, i64* %RAX.i1036, align 8
  %4330 = add i64 %4325, -60
  %4331 = add i64 %4324, 8
  store i64 %4331, i64* %3, align 8
  %4332 = inttoptr i64 %4330 to i32*
  %4333 = load i32, i32* %4332, align 4
  %4334 = sext i32 %4333 to i64
  store i64 %4334, i64* %RCX.i2020, align 8
  %4335 = add i64 %4329, %4334
  %4336 = add i64 %4324, 11
  store i64 %4336, i64* %3, align 8
  %4337 = inttoptr i64 %4335 to i8*
  %4338 = load i8, i8* %4337, align 1
  store i8 %4338, i8* %DL.i1628, align 1
  %4339 = add i64 %4325, -3409
  %4340 = add i64 %4324, 17
  store i64 %4340, i64* %3, align 8
  %4341 = inttoptr i64 %4339 to i8*
  store i8 %4338, i8* %4341, align 1
  %4342 = load i64, i64* %RBP.i, align 8
  %4343 = add i64 %4342, -3409
  %4344 = load i64, i64* %3, align 8
  %4345 = add i64 %4344, 7
  store i64 %4345, i64* %3, align 8
  %4346 = inttoptr i64 %4343 to i8*
  %4347 = load i8, i8* %4346, align 1
  %4348 = zext i8 %4347 to i64
  store i64 %4348, i64* %RSI.i1998, align 8
  %4349 = zext i8 %4347 to i64
  store i64 %4349, i64* %RAX.i1036, align 8
  %4350 = add nsw i64 %4349, -1360
  %4351 = add i64 %4350, %4342
  %4352 = add i64 %4344, 17
  store i64 %4352, i64* %3, align 8
  %4353 = inttoptr i64 %4351 to i8*
  %4354 = load i8, i8* %4353, align 1
  store i8 0, i8* %14, align 1
  %4355 = zext i8 %4354 to i32
  %4356 = tail call i32 @llvm.ctpop.i32(i32 %4355)
  %4357 = trunc i32 %4356 to i8
  %4358 = and i8 %4357, 1
  %4359 = xor i8 %4358, 1
  store i8 %4359, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %4360 = icmp eq i8 %4354, 0
  %4361 = zext i1 %4360 to i8
  store i8 %4361, i8* %30, align 1
  %4362 = lshr i8 %4354, 7
  store i8 %4362, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v235 = select i1 %4360, i64 23, i64 64
  %4363 = add i64 %4344, %.v235
  store i64 %4363, i64* %3, align 8
  br i1 %4360, label %block_4020ef, label %block_.L_402118

block_4020ef:                                     ; preds = %block_.L_4020c7
  %4364 = add i64 %4342, -60
  %4365 = add i64 %4363, 3
  store i64 %4365, i64* %3, align 8
  %4366 = inttoptr i64 %4364 to i32*
  %4367 = load i32, i32* %4366, align 4
  %4368 = zext i32 %4367 to i64
  store i64 %4368, i64* %RAX.i1036, align 8
  %4369 = add i64 %4342, -8
  %4370 = add i64 %4363, 7
  store i64 %4370, i64* %3, align 8
  %4371 = inttoptr i64 %4369 to i64*
  %4372 = load i64, i64* %4371, align 8
  store i64 %4372, i64* %RCX.i2020, align 8
  %4373 = add i64 %4363, 14
  store i64 %4373, i64* %3, align 8
  %4374 = load i8, i8* %4346, align 1
  %4375 = zext i8 %4374 to i64
  store i64 %4375, i64* %RDX.i2023, align 8
  %4376 = zext i8 %4374 to i64
  store i64 %4376, i64* %RSI.i1998, align 8
  %4377 = shl nuw nsw i64 %4376, 2
  %4378 = add nsw i64 %4377, -3408
  %4379 = add i64 %4378, %4342
  %4380 = add i64 %4363, 23
  store i64 %4380, i64* %3, align 8
  %4381 = inttoptr i64 %4379 to i32*
  %4382 = load i32, i32* %4381, align 4
  %4383 = zext i32 %4382 to i64
  store i64 %4383, i64* %RDX.i2023, align 8
  %4384 = add i32 %4382, -1
  %4385 = zext i32 %4384 to i64
  store i64 %4385, i64* %RDI.i1575, align 8
  %4386 = icmp ne i32 %4382, 0
  %4387 = zext i1 %4386 to i8
  store i8 %4387, i8* %14, align 1
  %4388 = and i32 %4384, 255
  %4389 = tail call i32 @llvm.ctpop.i32(i32 %4388)
  %4390 = trunc i32 %4389 to i8
  %4391 = and i8 %4390, 1
  %4392 = xor i8 %4391, 1
  store i8 %4392, i8* %21, align 1
  %4393 = xor i32 %4382, 16
  %4394 = xor i32 %4393, %4384
  %4395 = lshr i32 %4394, 4
  %4396 = trunc i32 %4395 to i8
  %4397 = and i8 %4396, 1
  store i8 %4397, i8* %27, align 1
  %4398 = icmp eq i32 %4384, 0
  %4399 = zext i1 %4398 to i8
  store i8 %4399, i8* %30, align 1
  %4400 = lshr i32 %4384, 31
  %4401 = trunc i32 %4400 to i8
  store i8 %4401, i8* %33, align 1
  %4402 = lshr i32 %4382, 31
  %4403 = xor i32 %4400, %4402
  %4404 = xor i32 %4400, 1
  %4405 = add nuw nsw i32 %4403, %4404
  %4406 = icmp eq i32 %4405, 2
  %4407 = zext i1 %4406 to i8
  store i8 %4407, i8* %39, align 1
  %4408 = add i64 %4342, -3408
  %4409 = add i64 %4408, %4377
  %4410 = add i64 %4363, 35
  store i64 %4410, i64* %3, align 8
  %4411 = inttoptr i64 %4409 to i32*
  store i32 %4384, i32* %4411, align 4
  %4412 = load i32, i32* %EDX.i1918, align 4
  %4413 = load i64, i64* %3, align 8
  %4414 = sext i32 %4412 to i64
  store i64 %4414, i64* %RSI.i1998, align 8
  %4415 = load i64, i64* %RCX.i2020, align 8
  %4416 = shl nsw i64 %4414, 2
  %4417 = add i64 %4415, %4416
  %4418 = load i32, i32* %EAX.i1973.pre-phi, align 4
  %4419 = add i64 %4413, 6
  store i64 %4419, i64* %3, align 8
  %4420 = inttoptr i64 %4417 to i32*
  store i32 %4418, i32* %4420, align 4
  %.pre192 = load i64, i64* %3, align 8
  %.pre193 = load i64, i64* %RBP.i, align 8
  br label %block_.L_402118

block_.L_402118:                                  ; preds = %block_.L_4020c7, %block_4020ef
  %4421 = phi i64 [ %.pre193, %block_4020ef ], [ %4342, %block_.L_4020c7 ]
  %4422 = phi i64 [ %.pre192, %block_4020ef ], [ %4363, %block_.L_4020c7 ]
  %4423 = add i64 %4421, -56
  %4424 = add i64 %4422, 8
  store i64 %4424, i64* %3, align 8
  %4425 = inttoptr i64 %4423 to i32*
  %4426 = load i32, i32* %4425, align 4
  %4427 = add i32 %4426, -1
  %4428 = zext i32 %4427 to i64
  store i64 %4428, i64* %RAX.i1036, align 8
  %4429 = icmp ne i32 %4426, 0
  %4430 = zext i1 %4429 to i8
  store i8 %4430, i8* %14, align 1
  %4431 = and i32 %4427, 255
  %4432 = tail call i32 @llvm.ctpop.i32(i32 %4431)
  %4433 = trunc i32 %4432 to i8
  %4434 = and i8 %4433, 1
  %4435 = xor i8 %4434, 1
  store i8 %4435, i8* %21, align 1
  %4436 = xor i32 %4426, 16
  %4437 = xor i32 %4436, %4427
  %4438 = lshr i32 %4437, 4
  %4439 = trunc i32 %4438 to i8
  %4440 = and i8 %4439, 1
  store i8 %4440, i8* %27, align 1
  %4441 = icmp eq i32 %4427, 0
  %4442 = zext i1 %4441 to i8
  store i8 %4442, i8* %30, align 1
  %4443 = lshr i32 %4427, 31
  %4444 = trunc i32 %4443 to i8
  store i8 %4444, i8* %33, align 1
  %4445 = lshr i32 %4426, 31
  %4446 = xor i32 %4443, %4445
  %4447 = xor i32 %4443, 1
  %4448 = add nuw nsw i32 %4446, %4447
  %4449 = icmp eq i32 %4448, 2
  %4450 = zext i1 %4449 to i8
  store i8 %4450, i8* %39, align 1
  %4451 = add i64 %4422, 14
  store i64 %4451, i64* %3, align 8
  store i32 %4427, i32* %4425, align 4
  %4452 = load i64, i64* %3, align 8
  %4453 = add i64 %4452, -151
  store i64 %4453, i64* %3, align 8
  br label %block_.L_40208f

block_.L_40212b:                                  ; preds = %block_.L_40208f
  %4454 = add i64 %4234, 4
  store i64 %4454, i64* %3, align 8
  %4455 = load i32, i32* %4198, align 4
  %4456 = sext i32 %4455 to i64
  store i64 %4456, i64* %RAX.i1036, align 8
  %4457 = shl nsw i64 %4456, 2
  %4458 = add i64 %4190, -2384
  %4459 = add i64 %4458, %4457
  %4460 = add i64 %4234, 11
  store i64 %4460, i64* %3, align 8
  %4461 = inttoptr i64 %4459 to i32*
  %4462 = load i32, i32* %4461, align 4
  %4463 = add i32 %4462, -1
  %4464 = zext i32 %4463 to i64
  store i64 %4464, i64* %RCX.i2020, align 8
  %4465 = icmp eq i32 %4462, 0
  %4466 = zext i1 %4465 to i8
  store i8 %4466, i8* %14, align 1
  %4467 = and i32 %4463, 255
  %4468 = tail call i32 @llvm.ctpop.i32(i32 %4467)
  %4469 = trunc i32 %4468 to i8
  %4470 = and i8 %4469, 1
  %4471 = xor i8 %4470, 1
  store i8 %4471, i8* %21, align 1
  %4472 = xor i32 %4463, %4462
  %4473 = lshr i32 %4472, 4
  %4474 = trunc i32 %4473 to i8
  %4475 = and i8 %4474, 1
  store i8 %4475, i8* %27, align 1
  %4476 = icmp eq i32 %4463, 0
  %4477 = zext i1 %4476 to i8
  store i8 %4477, i8* %30, align 1
  %4478 = lshr i32 %4463, 31
  %4479 = trunc i32 %4478 to i8
  store i8 %4479, i8* %33, align 1
  %4480 = lshr i32 %4462, 31
  %4481 = xor i32 %4478, %4480
  %4482 = add nuw nsw i32 %4481, %4480
  %4483 = icmp eq i32 %4482, 2
  %4484 = zext i1 %4483 to i8
  store i8 %4484, i8* %39, align 1
  %4485 = add i64 %4234, 18
  store i64 %4485, i64* %3, align 8
  %4486 = load i32, i32* %4198, align 4
  %4487 = sext i32 %4486 to i64
  store i64 %4487, i64* %RAX.i1036, align 8
  %4488 = shl nsw i64 %4487, 2
  %4489 = add nsw i64 %4488, -3408
  %4490 = add i64 %4489, %4190
  %4491 = add i64 %4234, 25
  store i64 %4491, i64* %3, align 8
  %4492 = inttoptr i64 %4490 to i32*
  %4493 = load i32, i32* %4492, align 4
  %4494 = sub i32 %4463, %4493
  %4495 = icmp ult i32 %4463, %4493
  %4496 = zext i1 %4495 to i8
  store i8 %4496, i8* %14, align 1
  %4497 = and i32 %4494, 255
  %4498 = tail call i32 @llvm.ctpop.i32(i32 %4497)
  %4499 = trunc i32 %4498 to i8
  %4500 = and i8 %4499, 1
  %4501 = xor i8 %4500, 1
  store i8 %4501, i8* %21, align 1
  %4502 = xor i32 %4493, %4463
  %4503 = xor i32 %4502, %4494
  %4504 = lshr i32 %4503, 4
  %4505 = trunc i32 %4504 to i8
  %4506 = and i8 %4505, 1
  store i8 %4506, i8* %27, align 1
  %4507 = icmp eq i32 %4494, 0
  %4508 = zext i1 %4507 to i8
  store i8 %4508, i8* %30, align 1
  %4509 = lshr i32 %4494, 31
  %4510 = trunc i32 %4509 to i8
  store i8 %4510, i8* %33, align 1
  %4511 = lshr i32 %4493, 31
  %4512 = xor i32 %4511, %4478
  %4513 = xor i32 %4509, %4478
  %4514 = add nuw nsw i32 %4513, %4512
  %4515 = icmp eq i32 %4514, 2
  %4516 = zext i1 %4515 to i8
  store i8 %4516, i8* %39, align 1
  %.v236 = select i1 %4507, i64 84, i64 31
  %4517 = add i64 %4234, %.v236
  store i64 %4517, i64* %3, align 8
  br i1 %4507, label %block_.L_40217f, label %block_40214a

block_40214a:                                     ; preds = %block_.L_40212b
  %4518 = add i64 %4517, 4
  store i64 %4518, i64* %3, align 8
  %4519 = load i32, i32* %4198, align 4
  %4520 = sext i32 %4519 to i64
  store i64 %4520, i64* %RAX.i1036, align 8
  %4521 = shl nsw i64 %4520, 2
  %4522 = add i64 %4458, %4521
  %4523 = add i64 %4517, 12
  store i64 %4523, i64* %3, align 8
  %4524 = inttoptr i64 %4522 to i32*
  %4525 = load i32, i32* %4524, align 4
  store i8 0, i8* %14, align 1
  %4526 = and i32 %4525, 255
  %4527 = tail call i32 @llvm.ctpop.i32(i32 %4526)
  %4528 = trunc i32 %4527 to i8
  %4529 = and i8 %4528, 1
  %4530 = xor i8 %4529, 1
  store i8 %4530, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %4531 = icmp eq i32 %4525, 0
  %4532 = zext i1 %4531 to i8
  store i8 %4532, i8* %30, align 1
  %4533 = lshr i32 %4525, 31
  %4534 = trunc i32 %4533 to i8
  store i8 %4534, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v237 = select i1 %4531, i64 18, i64 43
  %4535 = add i64 %4517, %.v237
  store i64 %4535, i64* %3, align 8
  br i1 %4531, label %block_40215c, label %block_.L_402175

block_40215c:                                     ; preds = %block_40214a
  %4536 = add i64 %4535, 4
  store i64 %4536, i64* %3, align 8
  %4537 = load i32, i32* %4198, align 4
  %4538 = sext i32 %4537 to i64
  store i64 %4538, i64* %RAX.i1036, align 8
  %4539 = shl nsw i64 %4538, 2
  %4540 = add i64 %4190, -3408
  %4541 = add i64 %4540, %4539
  %4542 = add i64 %4535, 11
  store i64 %4542, i64* %3, align 8
  %4543 = inttoptr i64 %4541 to i32*
  %4544 = load i32, i32* %4543, align 4
  %4545 = zext i32 %4544 to i64
  store i64 %4545, i64* %RCX.i2020, align 8
  %4546 = add i64 %4190, -36
  %4547 = add i64 %4535, 14
  store i64 %4547, i64* %3, align 8
  %4548 = inttoptr i64 %4546 to i32*
  %4549 = load i32, i32* %4548, align 4
  %4550 = add i32 %4549, -1
  %4551 = zext i32 %4550 to i64
  store i64 %4551, i64* %RDX.i2023, align 8
  %4552 = lshr i32 %4550, 31
  %4553 = sub i32 %4544, %4550
  %4554 = icmp ult i32 %4544, %4550
  %4555 = zext i1 %4554 to i8
  store i8 %4555, i8* %14, align 1
  %4556 = and i32 %4553, 255
  %4557 = tail call i32 @llvm.ctpop.i32(i32 %4556)
  %4558 = trunc i32 %4557 to i8
  %4559 = and i8 %4558, 1
  %4560 = xor i8 %4559, 1
  store i8 %4560, i8* %21, align 1
  %4561 = xor i32 %4550, %4544
  %4562 = xor i32 %4561, %4553
  %4563 = lshr i32 %4562, 4
  %4564 = trunc i32 %4563 to i8
  %4565 = and i8 %4564, 1
  store i8 %4565, i8* %27, align 1
  %4566 = icmp eq i32 %4553, 0
  %4567 = zext i1 %4566 to i8
  store i8 %4567, i8* %30, align 1
  %4568 = lshr i32 %4553, 31
  %4569 = trunc i32 %4568 to i8
  store i8 %4569, i8* %33, align 1
  %4570 = lshr i32 %4544, 31
  %4571 = xor i32 %4552, %4570
  %4572 = xor i32 %4568, %4570
  %4573 = add nuw nsw i32 %4572, %4571
  %4574 = icmp eq i32 %4573, 2
  %4575 = zext i1 %4574 to i8
  store i8 %4575, i8* %39, align 1
  %.v243 = select i1 %4566, i64 35, i64 25
  %4576 = add i64 %4535, %.v243
  store i64 %4576, i64* %3, align 8
  br i1 %4566, label %block_.L_40217f, label %block_.L_402175

block_.L_402175:                                  ; preds = %block_40214a, %block_40215c
  %4577 = phi i64 [ %4576, %block_40215c ], [ %4535, %block_40214a ]
  store i64 1007, i64* %RDI.i1575, align 8
  %4578 = add i64 %4577, 11691
  %4579 = add i64 %4577, 10
  %4580 = load i64, i64* %6, align 8
  %4581 = add i64 %4580, -8
  %4582 = inttoptr i64 %4581 to i64*
  store i64 %4579, i64* %4582, align 8
  store i64 %4581, i64* %6, align 8
  store i64 %4578, i64* %3, align 8
  %call2_40217a = tail call %struct.Memory* @sub_404f20.BZ2_bz__AssertH__fail(%struct.State* nonnull %0, i64 %4578, %struct.Memory* %MEMORY.21)
  %.pre194 = load i64, i64* %RBP.i, align 8
  %.pre195 = load i64, i64* %3, align 8
  br label %block_.L_40217f

block_.L_40217f:                                  ; preds = %block_.L_402175, %block_40215c, %block_.L_40212b
  %4583 = phi i64 [ %4517, %block_.L_40212b ], [ %.pre195, %block_.L_402175 ], [ %4576, %block_40215c ]
  %4584 = phi i64 [ %4190, %block_.L_40212b ], [ %.pre194, %block_.L_402175 ], [ %4190, %block_40215c ]
  %MEMORY.30 = phi %struct.Memory* [ %MEMORY.21, %block_.L_40212b ], [ %call2_40217a, %block_.L_402175 ], [ %MEMORY.21, %block_40215c ]
  %4585 = add i64 %4584, -56
  %4586 = add i64 %4583, 7
  store i64 %4586, i64* %3, align 8
  %4587 = inttoptr i64 %4585 to i32*
  store i32 0, i32* %4587, align 4
  %.pre196 = load i64, i64* %3, align 8
  br label %block_.L_402186

block_.L_402186:                                  ; preds = %block_402193, %block_.L_40217f
  %4588 = phi i64 [ %4713, %block_402193 ], [ %.pre196, %block_.L_40217f ]
  %4589 = load i64, i64* %RBP.i, align 8
  %4590 = add i64 %4589, -56
  %4591 = add i64 %4588, 7
  store i64 %4591, i64* %3, align 8
  %4592 = inttoptr i64 %4590 to i32*
  %4593 = load i32, i32* %4592, align 4
  %4594 = add i32 %4593, -255
  %4595 = icmp ult i32 %4593, 255
  %4596 = zext i1 %4595 to i8
  store i8 %4596, i8* %14, align 1
  %4597 = and i32 %4594, 255
  %4598 = tail call i32 @llvm.ctpop.i32(i32 %4597)
  %4599 = trunc i32 %4598 to i8
  %4600 = and i8 %4599, 1
  %4601 = xor i8 %4600, 1
  store i8 %4601, i8* %21, align 1
  %4602 = xor i32 %4593, 16
  %4603 = xor i32 %4602, %4594
  %4604 = lshr i32 %4603, 4
  %4605 = trunc i32 %4604 to i8
  %4606 = and i8 %4605, 1
  store i8 %4606, i8* %27, align 1
  %4607 = icmp eq i32 %4594, 0
  %4608 = zext i1 %4607 to i8
  store i8 %4608, i8* %30, align 1
  %4609 = lshr i32 %4594, 31
  %4610 = trunc i32 %4609 to i8
  store i8 %4610, i8* %33, align 1
  %4611 = lshr i32 %4593, 31
  %4612 = xor i32 %4609, %4611
  %4613 = add nuw nsw i32 %4612, %4611
  %4614 = icmp eq i32 %4613, 2
  %4615 = zext i1 %4614 to i8
  store i8 %4615, i8* %39, align 1
  %4616 = icmp ne i8 %4610, 0
  %4617 = xor i1 %4616, %4614
  %.demorgan219 = or i1 %4607, %4617
  %.v238 = select i1 %.demorgan219, i64 13, i64 55
  %4618 = add i64 %4588, %.v238
  store i64 %4618, i64* %3, align 8
  br i1 %.demorgan219, label %block_402193, label %block_.L_4021bd

block_402193:                                     ; preds = %block_.L_402186
  %4619 = add i64 %4589, -32
  %4620 = add i64 %4618, 4
  store i64 %4620, i64* %3, align 8
  %4621 = inttoptr i64 %4619 to i64*
  %4622 = load i64, i64* %4621, align 8
  store i64 %4622, i64* %RAX.i1036, align 8
  %4623 = add i64 %4618, 7
  store i64 %4623, i64* %3, align 8
  %4624 = load i32, i32* %4592, align 4
  %4625 = shl i32 %4624, 8
  %4626 = zext i32 %4625 to i64
  store i64 %4626, i64* %RCX.i2020, align 8
  %4627 = lshr i32 %4624, 24
  %4628 = trunc i32 %4627 to i8
  %4629 = and i8 %4628, 1
  store i8 %4629, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %4630 = icmp eq i32 %4625, 0
  %4631 = zext i1 %4630 to i8
  store i8 %4631, i8* %30, align 1
  %4632 = lshr i32 %4624, 23
  %4633 = trunc i32 %4632 to i8
  %4634 = and i8 %4633, 1
  store i8 %4634, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4635 = add i64 %4589, -64
  %4636 = add i64 %4618, 13
  store i64 %4636, i64* %3, align 8
  %4637 = inttoptr i64 %4635 to i32*
  %4638 = load i32, i32* %4637, align 4
  %4639 = add i32 %4638, %4625
  %4640 = zext i32 %4639 to i64
  store i64 %4640, i64* %RCX.i2020, align 8
  %4641 = icmp ult i32 %4639, %4625
  %4642 = icmp ult i32 %4639, %4638
  %4643 = or i1 %4641, %4642
  %4644 = zext i1 %4643 to i8
  store i8 %4644, i8* %14, align 1
  %4645 = and i32 %4639, 255
  %4646 = tail call i32 @llvm.ctpop.i32(i32 %4645)
  %4647 = trunc i32 %4646 to i8
  %4648 = and i8 %4647, 1
  %4649 = xor i8 %4648, 1
  store i8 %4649, i8* %21, align 1
  %4650 = xor i32 %4638, %4639
  %4651 = lshr i32 %4650, 4
  %4652 = trunc i32 %4651 to i8
  %4653 = and i8 %4652, 1
  store i8 %4653, i8* %27, align 1
  %4654 = icmp eq i32 %4639, 0
  %4655 = zext i1 %4654 to i8
  store i8 %4655, i8* %30, align 1
  %4656 = lshr i32 %4639, 31
  %4657 = trunc i32 %4656 to i8
  store i8 %4657, i8* %33, align 1
  %4658 = lshr i32 %4624, 23
  %4659 = and i32 %4658, 1
  %4660 = lshr i32 %4638, 31
  %4661 = xor i32 %4656, %4659
  %4662 = xor i32 %4656, %4660
  %4663 = add nuw nsw i32 %4661, %4662
  %4664 = icmp eq i32 %4663, 2
  %4665 = zext i1 %4664 to i8
  store i8 %4665, i8* %39, align 1
  %4666 = sext i32 %4639 to i64
  store i64 %4666, i64* %RDX.i2023, align 8
  %4667 = shl nsw i64 %4666, 2
  %4668 = add i64 %4622, %4667
  %4669 = add i64 %4618, 19
  store i64 %4669, i64* %3, align 8
  %4670 = inttoptr i64 %4668 to i32*
  %4671 = load i32, i32* %4670, align 4
  %4672 = or i32 %4671, 2097152
  %4673 = zext i32 %4672 to i64
  store i64 %4673, i64* %RCX.i2020, align 8
  store i8 0, i8* %14, align 1
  %4674 = and i32 %4671, 255
  %4675 = tail call i32 @llvm.ctpop.i32(i32 %4674)
  %4676 = trunc i32 %4675 to i8
  %4677 = and i8 %4676, 1
  %4678 = xor i8 %4677, 1
  store i8 %4678, i8* %21, align 1
  store i8 0, i8* %30, align 1
  %4679 = lshr i32 %4671, 31
  %4680 = trunc i32 %4679 to i8
  store i8 %4680, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %4681 = add i64 %4618, 28
  store i64 %4681, i64* %3, align 8
  store i32 %4672, i32* %4670, align 4
  %4682 = load i64, i64* %RBP.i, align 8
  %4683 = add i64 %4682, -56
  %4684 = load i64, i64* %3, align 8
  %4685 = add i64 %4684, 3
  store i64 %4685, i64* %3, align 8
  %4686 = inttoptr i64 %4683 to i32*
  %4687 = load i32, i32* %4686, align 4
  %4688 = add i32 %4687, 1
  %4689 = zext i32 %4688 to i64
  store i64 %4689, i64* %RAX.i1036, align 8
  %4690 = icmp eq i32 %4687, -1
  %4691 = icmp eq i32 %4688, 0
  %4692 = or i1 %4690, %4691
  %4693 = zext i1 %4692 to i8
  store i8 %4693, i8* %14, align 1
  %4694 = and i32 %4688, 255
  %4695 = tail call i32 @llvm.ctpop.i32(i32 %4694)
  %4696 = trunc i32 %4695 to i8
  %4697 = and i8 %4696, 1
  %4698 = xor i8 %4697, 1
  store i8 %4698, i8* %21, align 1
  %4699 = xor i32 %4688, %4687
  %4700 = lshr i32 %4699, 4
  %4701 = trunc i32 %4700 to i8
  %4702 = and i8 %4701, 1
  store i8 %4702, i8* %27, align 1
  %4703 = zext i1 %4691 to i8
  store i8 %4703, i8* %30, align 1
  %4704 = lshr i32 %4688, 31
  %4705 = trunc i32 %4704 to i8
  store i8 %4705, i8* %33, align 1
  %4706 = lshr i32 %4687, 31
  %4707 = xor i32 %4704, %4706
  %4708 = add nuw nsw i32 %4707, %4704
  %4709 = icmp eq i32 %4708, 2
  %4710 = zext i1 %4709 to i8
  store i8 %4710, i8* %39, align 1
  %4711 = add i64 %4684, 9
  store i64 %4711, i64* %3, align 8
  store i32 %4688, i32* %4686, align 4
  %4712 = load i64, i64* %3, align 8
  %4713 = add i64 %4712, -50
  store i64 %4713, i64* %3, align 8
  br label %block_.L_402186

block_.L_4021bd:                                  ; preds = %block_.L_402186
  %4714 = add i64 %4589, -64
  %4715 = add i64 %4618, 4
  store i64 %4715, i64* %3, align 8
  %4716 = inttoptr i64 %4714 to i32*
  %4717 = load i32, i32* %4716, align 4
  %4718 = sext i32 %4717 to i64
  store i64 %4718, i64* %RAX.i1036, align 8
  %4719 = add nsw i64 %4718, -1360
  %4720 = add i64 %4719, %4589
  %4721 = add i64 %4618, 12
  store i64 %4721, i64* %3, align 8
  %4722 = inttoptr i64 %4720 to i8*
  store i8 1, i8* %4722, align 1
  %4723 = load i64, i64* %RBP.i, align 8
  %4724 = add i64 %4723, -52
  %4725 = load i64, i64* %3, align 8
  %4726 = add i64 %4725, 7
  store i64 %4726, i64* %3, align 8
  %4727 = inttoptr i64 %4724 to i32*
  %4728 = load i32, i32* %4727, align 4
  %4729 = add i32 %4728, -255
  %4730 = icmp ult i32 %4728, 255
  %4731 = zext i1 %4730 to i8
  store i8 %4731, i8* %14, align 1
  %4732 = and i32 %4729, 255
  %4733 = tail call i32 @llvm.ctpop.i32(i32 %4732)
  %4734 = trunc i32 %4733 to i8
  %4735 = and i8 %4734, 1
  %4736 = xor i8 %4735, 1
  store i8 %4736, i8* %21, align 1
  %4737 = xor i32 %4728, 16
  %4738 = xor i32 %4737, %4729
  %4739 = lshr i32 %4738, 4
  %4740 = trunc i32 %4739 to i8
  %4741 = and i8 %4740, 1
  store i8 %4741, i8* %27, align 1
  %4742 = icmp eq i32 %4729, 0
  %4743 = zext i1 %4742 to i8
  store i8 %4743, i8* %30, align 1
  %4744 = lshr i32 %4729, 31
  %4745 = trunc i32 %4744 to i8
  store i8 %4745, i8* %33, align 1
  %4746 = lshr i32 %4728, 31
  %4747 = xor i32 %4744, %4746
  %4748 = add nuw nsw i32 %4747, %4746
  %4749 = icmp eq i32 %4748, 2
  %4750 = zext i1 %4749 to i8
  store i8 %4750, i8* %39, align 1
  %4751 = icmp ne i8 %4745, 0
  %4752 = xor i1 %4751, %4749
  %.v239 = select i1 %4752, i64 13, i64 339
  %4753 = add i64 %4725, %.v239
  store i64 %4753, i64* %3, align 8
  br i1 %4752, label %block_4021d6, label %block_.L_40231c

block_4021d6:                                     ; preds = %block_.L_4021bd
  %4754 = add i64 %4723, -32
  %4755 = add i64 %4753, 4
  store i64 %4755, i64* %3, align 8
  %4756 = inttoptr i64 %4754 to i64*
  %4757 = load i64, i64* %4756, align 8
  store i64 %4757, i64* %RAX.i1036, align 8
  %4758 = add i64 %4723, -64
  %4759 = add i64 %4753, 7
  store i64 %4759, i64* %3, align 8
  %4760 = inttoptr i64 %4758 to i32*
  %4761 = load i32, i32* %4760, align 4
  %4762 = shl i32 %4761, 8
  %4763 = zext i32 %4762 to i64
  store i64 %4763, i64* %RCX.i2020, align 8
  %4764 = lshr i32 %4761, 24
  %4765 = trunc i32 %4764 to i8
  %4766 = and i8 %4765, 1
  store i8 %4766, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %4767 = icmp eq i32 %4762, 0
  %4768 = zext i1 %4767 to i8
  store i8 %4768, i8* %30, align 1
  %4769 = lshr i32 %4761, 23
  %4770 = trunc i32 %4769 to i8
  %4771 = and i8 %4770, 1
  store i8 %4771, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4772 = sext i32 %4762 to i64
  store i64 %4772, i64* %RDX.i2023, align 8
  %4773 = shl nsw i64 %4772, 2
  %4774 = add i64 %4757, %4773
  %4775 = add i64 %4753, 16
  store i64 %4775, i64* %3, align 8
  %4776 = inttoptr i64 %4774 to i32*
  %4777 = load i32, i32* %4776, align 4
  %4778 = and i32 %4777, -2097153
  %4779 = and i32 %4777, -2097153
  %4780 = zext i32 %4779 to i64
  store i64 %4780, i64* %RCX.i2020, align 8
  store i8 0, i8* %14, align 1
  %4781 = and i32 %4777, 255
  %4782 = tail call i32 @llvm.ctpop.i32(i32 %4781)
  %4783 = trunc i32 %4782 to i8
  %4784 = and i8 %4783, 1
  %4785 = xor i8 %4784, 1
  store i8 %4785, i8* %21, align 1
  %4786 = icmp eq i32 %4778, 0
  %4787 = zext i1 %4786 to i8
  store i8 %4787, i8* %30, align 1
  %4788 = lshr i32 %4777, 31
  %4789 = trunc i32 %4788 to i8
  store i8 %4789, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %4790 = add i64 %4723, -3440
  %4791 = add i64 %4753, 28
  store i64 %4791, i64* %3, align 8
  %4792 = inttoptr i64 %4790 to i32*
  store i32 %4779, i32* %4792, align 4
  %4793 = load i64, i64* %RBP.i, align 8
  %4794 = add i64 %4793, -32
  %4795 = load i64, i64* %3, align 8
  %4796 = add i64 %4795, 4
  store i64 %4796, i64* %3, align 8
  %4797 = inttoptr i64 %4794 to i64*
  %4798 = load i64, i64* %4797, align 8
  store i64 %4798, i64* %RAX.i1036, align 8
  %4799 = add i64 %4793, -64
  %4800 = add i64 %4795, 7
  store i64 %4800, i64* %3, align 8
  %4801 = inttoptr i64 %4799 to i32*
  %4802 = load i32, i32* %4801, align 4
  %4803 = add i32 %4802, 1
  %4804 = shl i32 %4803, 8
  %4805 = zext i32 %4804 to i64
  store i64 %4805, i64* %RCX.i2020, align 8
  %4806 = lshr i32 %4803, 24
  %4807 = trunc i32 %4806 to i8
  %4808 = and i8 %4807, 1
  store i8 %4808, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %4809 = icmp eq i32 %4804, 0
  %4810 = zext i1 %4809 to i8
  store i8 %4810, i8* %30, align 1
  %4811 = lshr i32 %4803, 23
  %4812 = trunc i32 %4811 to i8
  %4813 = and i8 %4812, 1
  store i8 %4813, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4814 = sext i32 %4804 to i64
  store i64 %4814, i64* %RDX.i2023, align 8
  %4815 = shl nsw i64 %4814, 2
  %4816 = add i64 %4798, %4815
  %4817 = add i64 %4795, 19
  store i64 %4817, i64* %3, align 8
  %4818 = inttoptr i64 %4816 to i32*
  %4819 = load i32, i32* %4818, align 4
  %4820 = and i32 %4819, -2097153
  %4821 = and i32 %4819, -2097153
  %4822 = zext i32 %4821 to i64
  store i64 %4822, i64* %RCX.i2020, align 8
  store i8 0, i8* %14, align 1
  %4823 = and i32 %4819, 255
  %4824 = tail call i32 @llvm.ctpop.i32(i32 %4823)
  %4825 = trunc i32 %4824 to i8
  %4826 = and i8 %4825, 1
  %4827 = xor i8 %4826, 1
  store i8 %4827, i8* %21, align 1
  %4828 = icmp eq i32 %4820, 0
  %4829 = zext i1 %4828 to i8
  store i8 %4829, i8* %30, align 1
  %4830 = lshr i32 %4819, 31
  %4831 = trunc i32 %4830 to i8
  store i8 %4831, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %4832 = add i64 %4793, -3440
  %4833 = add i64 %4795, 31
  store i64 %4833, i64* %3, align 8
  %4834 = inttoptr i64 %4832 to i32*
  %4835 = load i32, i32* %4834, align 4
  %4836 = sub i32 %4821, %4835
  %4837 = zext i32 %4836 to i64
  store i64 %4837, i64* %RCX.i2020, align 8
  %4838 = icmp ult i32 %4821, %4835
  %4839 = zext i1 %4838 to i8
  store i8 %4839, i8* %14, align 1
  %fold304 = sub i32 %4819, %4835
  %4840 = and i32 %fold304, 255
  %4841 = tail call i32 @llvm.ctpop.i32(i32 %4840)
  %4842 = trunc i32 %4841 to i8
  %4843 = and i8 %4842, 1
  %4844 = xor i8 %4843, 1
  store i8 %4844, i8* %21, align 1
  %4845 = xor i32 %4835, %4819
  %4846 = xor i32 %4845, %4836
  %4847 = lshr i32 %4846, 4
  %4848 = trunc i32 %4847 to i8
  %4849 = and i8 %4848, 1
  store i8 %4849, i8* %27, align 1
  %4850 = icmp eq i32 %4836, 0
  %4851 = zext i1 %4850 to i8
  store i8 %4851, i8* %30, align 1
  %4852 = lshr i32 %4836, 31
  %4853 = trunc i32 %4852 to i8
  store i8 %4853, i8* %33, align 1
  %4854 = lshr i32 %4819, 31
  %4855 = lshr i32 %4835, 31
  %4856 = xor i32 %4855, %4854
  %4857 = xor i32 %4852, %4854
  %4858 = add nuw nsw i32 %4857, %4856
  %4859 = icmp eq i32 %4858, 2
  %4860 = zext i1 %4859 to i8
  store i8 %4860, i8* %39, align 1
  %4861 = load i64, i64* %RBP.i, align 8
  %4862 = add i64 %4861, -3444
  %4863 = add i64 %4795, 37
  store i64 %4863, i64* %3, align 8
  %4864 = inttoptr i64 %4862 to i32*
  store i32 %4836, i32* %4864, align 4
  %4865 = load i64, i64* %RBP.i, align 8
  %4866 = add i64 %4865, -3448
  %4867 = load i64, i64* %3, align 8
  %4868 = add i64 %4867, 10
  store i64 %4868, i64* %3, align 8
  %4869 = inttoptr i64 %4866 to i32*
  store i32 0, i32* %4869, align 4
  %.pre197 = load i64, i64* %3, align 8
  br label %block_.L_402221

block_.L_402221:                                  ; preds = %block_40223a, %block_4021d6
  %4870 = phi i64 [ %4965, %block_40223a ], [ %.pre197, %block_4021d6 ]
  %4871 = load i64, i64* %RBP.i, align 8
  %4872 = add i64 %4871, -3444
  %4873 = add i64 %4870, 6
  store i64 %4873, i64* %3, align 8
  %4874 = inttoptr i64 %4872 to i32*
  %4875 = load i32, i32* %4874, align 4
  %4876 = zext i32 %4875 to i64
  store i64 %4876, i64* %RAX.i1036, align 8
  %4877 = add i64 %4871, -3448
  %4878 = add i64 %4870, 12
  store i64 %4878, i64* %3, align 8
  %4879 = inttoptr i64 %4877 to i32*
  %4880 = load i32, i32* %4879, align 4
  %4881 = zext i32 %4880 to i64
  store i64 %4881, i64* %RCX.i2020, align 8
  %4882 = add i64 %4870, 14
  store i64 %4882, i64* %3, align 8
  %4883 = trunc i32 %4880 to i5
  switch i5 %4883, label %4887 [
    i5 0, label %routine_sarl__cl___eax.exit163
    i5 1, label %4884
  ]

; <label>:4884:                                   ; preds = %block_.L_402221
  %4885 = shl nuw i64 %4876, 32
  %4886 = ashr i64 %4885, 33
  br label %4894

; <label>:4887:                                   ; preds = %block_.L_402221
  %4888 = and i32 %4880, 31
  %4889 = zext i32 %4888 to i64
  %4890 = add nsw i64 %4889, -1
  %4891 = sext i32 %4875 to i64
  %4892 = ashr i64 %4891, %4890
  %4893 = lshr i64 %4892, 1
  br label %4894

; <label>:4894:                                   ; preds = %4887, %4884
  %4895 = phi i64 [ %4893, %4887 ], [ %4886, %4884 ]
  %4896 = phi i64 [ %4892, %4887 ], [ %4876, %4884 ]
  %4897 = trunc i64 %4896 to i8
  %4898 = and i8 %4897, 1
  %4899 = trunc i64 %4895 to i32
  %4900 = and i64 %4895, 4294967295
  store i64 %4900, i64* %RAX.i1036, align 8
  store i8 %4898, i8* %14, align 1
  %4901 = and i32 %4899, 255
  %4902 = tail call i32 @llvm.ctpop.i32(i32 %4901)
  %4903 = trunc i32 %4902 to i8
  %4904 = and i8 %4903, 1
  %4905 = xor i8 %4904, 1
  store i8 %4905, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %4906 = icmp eq i32 %4899, 0
  %4907 = zext i1 %4906 to i8
  store i8 %4907, i8* %30, align 1
  %4908 = lshr i32 %4899, 31
  %4909 = trunc i32 %4908 to i8
  store i8 %4909, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4910 = trunc i64 %4895 to i32
  br label %routine_sarl__cl___eax.exit163

routine_sarl__cl___eax.exit163:                   ; preds = %4894, %block_.L_402221
  %4911 = phi i32 [ %4910, %4894 ], [ %4875, %block_.L_402221 ]
  %4912 = add i32 %4911, -65534
  %4913 = icmp ult i32 %4911, 65534
  %4914 = zext i1 %4913 to i8
  store i8 %4914, i8* %14, align 1
  %4915 = and i32 %4912, 255
  %4916 = tail call i32 @llvm.ctpop.i32(i32 %4915)
  %4917 = trunc i32 %4916 to i8
  %4918 = and i8 %4917, 1
  %4919 = xor i8 %4918, 1
  store i8 %4919, i8* %21, align 1
  %4920 = xor i32 %4911, 16
  %4921 = xor i32 %4920, %4912
  %4922 = lshr i32 %4921, 4
  %4923 = trunc i32 %4922 to i8
  %4924 = and i8 %4923, 1
  store i8 %4924, i8* %27, align 1
  %4925 = icmp eq i32 %4912, 0
  %4926 = zext i1 %4925 to i8
  store i8 %4926, i8* %30, align 1
  %4927 = lshr i32 %4912, 31
  %4928 = trunc i32 %4927 to i8
  store i8 %4928, i8* %33, align 1
  %4929 = lshr i32 %4911, 31
  %4930 = xor i32 %4927, %4929
  %4931 = add nuw nsw i32 %4930, %4929
  %4932 = icmp eq i32 %4931, 2
  %4933 = zext i1 %4932 to i8
  store i8 %4933, i8* %39, align 1
  %4934 = icmp ne i8 %4928, 0
  %4935 = xor i1 %4934, %4932
  %4936 = or i1 %4925, %4935
  %.v240 = select i1 %4936, i64 45, i64 25
  %4937 = add i64 %4870, %.v240
  %4938 = add i64 %4937, 6
  store i64 %4938, i64* %3, align 8
  br i1 %4936, label %block_.L_40224e, label %block_40223a

block_40223a:                                     ; preds = %routine_sarl__cl___eax.exit163
  %4939 = load i32, i32* %4879, align 4
  %4940 = add i32 %4939, 1
  %4941 = zext i32 %4940 to i64
  store i64 %4941, i64* %RAX.i1036, align 8
  %4942 = icmp eq i32 %4939, -1
  %4943 = icmp eq i32 %4940, 0
  %4944 = or i1 %4942, %4943
  %4945 = zext i1 %4944 to i8
  store i8 %4945, i8* %14, align 1
  %4946 = and i32 %4940, 255
  %4947 = tail call i32 @llvm.ctpop.i32(i32 %4946)
  %4948 = trunc i32 %4947 to i8
  %4949 = and i8 %4948, 1
  %4950 = xor i8 %4949, 1
  store i8 %4950, i8* %21, align 1
  %4951 = xor i32 %4940, %4939
  %4952 = lshr i32 %4951, 4
  %4953 = trunc i32 %4952 to i8
  %4954 = and i8 %4953, 1
  store i8 %4954, i8* %27, align 1
  %4955 = zext i1 %4943 to i8
  store i8 %4955, i8* %30, align 1
  %4956 = lshr i32 %4940, 31
  %4957 = trunc i32 %4956 to i8
  store i8 %4957, i8* %33, align 1
  %4958 = lshr i32 %4939, 31
  %4959 = xor i32 %4956, %4958
  %4960 = add nuw nsw i32 %4959, %4956
  %4961 = icmp eq i32 %4960, 2
  %4962 = zext i1 %4961 to i8
  store i8 %4962, i8* %39, align 1
  %4963 = add i64 %4937, 15
  store i64 %4963, i64* %3, align 8
  store i32 %4940, i32* %4879, align 4
  %4964 = load i64, i64* %3, align 8
  %4965 = add i64 %4964, -40
  store i64 %4965, i64* %3, align 8
  br label %block_.L_402221

block_.L_40224e:                                  ; preds = %routine_sarl__cl___eax.exit163
  %4966 = load i32, i32* %4874, align 4
  %4967 = add i32 %4966, -1
  %4968 = zext i32 %4967 to i64
  store i64 %4968, i64* %RAX.i1036, align 8
  %4969 = icmp eq i32 %4966, 0
  %4970 = zext i1 %4969 to i8
  store i8 %4970, i8* %14, align 1
  %4971 = and i32 %4967, 255
  %4972 = tail call i32 @llvm.ctpop.i32(i32 %4971)
  %4973 = trunc i32 %4972 to i8
  %4974 = and i8 %4973, 1
  %4975 = xor i8 %4974, 1
  store i8 %4975, i8* %21, align 1
  %4976 = xor i32 %4967, %4966
  %4977 = lshr i32 %4976, 4
  %4978 = trunc i32 %4977 to i8
  %4979 = and i8 %4978, 1
  store i8 %4979, i8* %27, align 1
  %4980 = icmp eq i32 %4967, 0
  %4981 = zext i1 %4980 to i8
  store i8 %4981, i8* %30, align 1
  %4982 = lshr i32 %4967, 31
  %4983 = trunc i32 %4982 to i8
  store i8 %4983, i8* %33, align 1
  %4984 = lshr i32 %4966, 31
  %4985 = xor i32 %4982, %4984
  %4986 = add nuw nsw i32 %4985, %4984
  %4987 = icmp eq i32 %4986, 2
  %4988 = zext i1 %4987 to i8
  store i8 %4988, i8* %39, align 1
  %4989 = add i64 %4871, -56
  %4990 = add i64 %4937, 12
  store i64 %4990, i64* %3, align 8
  %4991 = inttoptr i64 %4989 to i32*
  store i32 %4967, i32* %4991, align 4
  %.pre198 = load i64, i64* %3, align 8
  br label %block_.L_40225a

block_.L_40225a:                                  ; preds = %block_.L_4022de, %block_.L_40224e
  %4992 = phi i64 [ %5243, %block_.L_4022de ], [ %.pre198, %block_.L_40224e ]
  %4993 = load i64, i64* %RBP.i, align 8
  %4994 = add i64 %4993, -56
  %4995 = add i64 %4992, 4
  store i64 %4995, i64* %3, align 8
  %4996 = inttoptr i64 %4994 to i32*
  %4997 = load i32, i32* %4996, align 4
  store i8 0, i8* %14, align 1
  %4998 = and i32 %4997, 255
  %4999 = tail call i32 @llvm.ctpop.i32(i32 %4998)
  %5000 = trunc i32 %4999 to i8
  %5001 = and i8 %5000, 1
  %5002 = xor i8 %5001, 1
  store i8 %5002, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %5003 = icmp eq i32 %4997, 0
  %5004 = zext i1 %5003 to i8
  store i8 %5004, i8* %30, align 1
  %5005 = lshr i32 %4997, 31
  %5006 = trunc i32 %5005 to i8
  store i8 %5006, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5007 = icmp ne i8 %5006, 0
  %.v72 = select i1 %5007, i64 147, i64 6
  %5008 = add i64 %4995, %.v72
  store i64 %5008, i64* %3, align 8
  br i1 %5007, label %block_.L_4022f1, label %block_402264

block_402264:                                     ; preds = %block_.L_40225a
  %5009 = add i64 %4993, -8
  %5010 = add i64 %5008, 4
  store i64 %5010, i64* %3, align 8
  %5011 = inttoptr i64 %5009 to i64*
  %5012 = load i64, i64* %5011, align 8
  store i64 %5012, i64* %RAX.i1036, align 8
  %5013 = add i64 %4993, -3440
  %5014 = add i64 %5008, 10
  store i64 %5014, i64* %3, align 8
  %5015 = inttoptr i64 %5013 to i32*
  %5016 = load i32, i32* %5015, align 4
  %5017 = zext i32 %5016 to i64
  store i64 %5017, i64* %RCX.i2020, align 8
  %5018 = add i64 %5008, 13
  store i64 %5018, i64* %3, align 8
  %5019 = load i32, i32* %4996, align 4
  %5020 = add i32 %5019, %5016
  %5021 = zext i32 %5020 to i64
  store i64 %5021, i64* %RCX.i2020, align 8
  %5022 = icmp ult i32 %5020, %5016
  %5023 = icmp ult i32 %5020, %5019
  %5024 = or i1 %5022, %5023
  %5025 = zext i1 %5024 to i8
  store i8 %5025, i8* %14, align 1
  %5026 = and i32 %5020, 255
  %5027 = tail call i32 @llvm.ctpop.i32(i32 %5026)
  %5028 = trunc i32 %5027 to i8
  %5029 = and i8 %5028, 1
  %5030 = xor i8 %5029, 1
  store i8 %5030, i8* %21, align 1
  %5031 = xor i32 %5019, %5016
  %5032 = xor i32 %5031, %5020
  %5033 = lshr i32 %5032, 4
  %5034 = trunc i32 %5033 to i8
  %5035 = and i8 %5034, 1
  store i8 %5035, i8* %27, align 1
  %5036 = icmp eq i32 %5020, 0
  %5037 = zext i1 %5036 to i8
  store i8 %5037, i8* %30, align 1
  %5038 = lshr i32 %5020, 31
  %5039 = trunc i32 %5038 to i8
  store i8 %5039, i8* %33, align 1
  %5040 = lshr i32 %5016, 31
  %5041 = lshr i32 %5019, 31
  %5042 = xor i32 %5038, %5040
  %5043 = xor i32 %5038, %5041
  %5044 = add nuw nsw i32 %5042, %5043
  %5045 = icmp eq i32 %5044, 2
  %5046 = zext i1 %5045 to i8
  store i8 %5046, i8* %39, align 1
  %5047 = sext i32 %5020 to i64
  store i64 %5047, i64* %RDX.i2023, align 8
  %5048 = shl nsw i64 %5047, 2
  %5049 = add i64 %5012, %5048
  %5050 = add i64 %5008, 19
  store i64 %5050, i64* %3, align 8
  %5051 = inttoptr i64 %5049 to i32*
  %5052 = load i32, i32* %5051, align 4
  %5053 = zext i32 %5052 to i64
  store i64 %5053, i64* %RCX.i2020, align 8
  %5054 = add i64 %4993, -3452
  %5055 = add i64 %5008, 25
  store i64 %5055, i64* %3, align 8
  %5056 = inttoptr i64 %5054 to i32*
  store i32 %5052, i32* %5056, align 4
  %5057 = load i64, i64* %RBP.i, align 8
  %5058 = add i64 %5057, -56
  %5059 = load i64, i64* %3, align 8
  %5060 = add i64 %5059, 3
  store i64 %5060, i64* %3, align 8
  %5061 = inttoptr i64 %5058 to i32*
  %5062 = load i32, i32* %5061, align 4
  %5063 = zext i32 %5062 to i64
  store i64 %5063, i64* %RCX.i2020, align 8
  %5064 = add i64 %5057, -3448
  %5065 = add i64 %5059, 9
  store i64 %5065, i64* %3, align 8
  %5066 = inttoptr i64 %5064 to i32*
  %5067 = load i32, i32* %5066, align 4
  %5068 = zext i32 %5067 to i64
  store i64 %5068, i64* %RSI.i1998, align 8
  %5069 = add i64 %5057, -3480
  %5070 = add i64 %5059, 15
  store i64 %5070, i64* %3, align 8
  %5071 = inttoptr i64 %5069 to i32*
  store i32 %5062, i32* %5071, align 4
  %5072 = load i32, i32* %ESI.i1921, align 4
  %5073 = zext i32 %5072 to i64
  %5074 = load i64, i64* %3, align 8
  store i64 %5073, i64* %RCX.i2020, align 8
  %5075 = load i64, i64* %RBP.i, align 8
  %5076 = add i64 %5075, -3480
  %5077 = add i64 %5074, 8
  store i64 %5077, i64* %3, align 8
  %5078 = inttoptr i64 %5076 to i32*
  %5079 = load i32, i32* %5078, align 4
  %5080 = zext i32 %5079 to i64
  store i64 %5080, i64* %RSI.i1998, align 8
  %5081 = add i64 %5074, 10
  store i64 %5081, i64* %3, align 8
  %5082 = trunc i32 %5072 to i5
  %5083 = trunc i32 %5079 to i16
  switch i5 %5082, label %5087 [
    i5 0, label %routine_sarl__cl___esi.exit
    i5 1, label %5084
  ]

; <label>:5084:                                   ; preds = %block_402264
  %5085 = shl nuw i64 %5080, 32
  %5086 = ashr i64 %5085, 33
  br label %5094

; <label>:5087:                                   ; preds = %block_402264
  %5088 = and i32 %5072, 31
  %5089 = zext i32 %5088 to i64
  %5090 = add nsw i64 %5089, -1
  %5091 = sext i32 %5079 to i64
  %5092 = ashr i64 %5091, %5090
  %5093 = lshr i64 %5092, 1
  br label %5094

; <label>:5094:                                   ; preds = %5087, %5084
  %5095 = phi i64 [ %5093, %5087 ], [ %5086, %5084 ]
  %5096 = phi i64 [ %5092, %5087 ], [ %5080, %5084 ]
  %5097 = trunc i64 %5096 to i8
  %5098 = and i8 %5097, 1
  %5099 = trunc i64 %5095 to i32
  %5100 = and i64 %5095, 4294967295
  store i64 %5100, i64* %RSI.i1998, align 8
  store i8 %5098, i8* %14, align 1
  %5101 = and i32 %5099, 255
  %5102 = tail call i32 @llvm.ctpop.i32(i32 %5101)
  %5103 = trunc i32 %5102 to i8
  %5104 = and i8 %5103, 1
  %5105 = xor i8 %5104, 1
  store i8 %5105, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %5106 = icmp eq i32 %5099, 0
  %5107 = zext i1 %5106 to i8
  store i8 %5107, i8* %30, align 1
  %5108 = lshr i32 %5099, 31
  %5109 = trunc i32 %5108 to i8
  store i8 %5109, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5110 = trunc i64 %5095 to i16
  br label %routine_sarl__cl___esi.exit

routine_sarl__cl___esi.exit:                      ; preds = %5094, %block_402264
  %5111 = phi i16 [ %5110, %5094 ], [ %5083, %block_402264 ]
  store i16 %5111, i16* %DI.i1678, align 2
  %5112 = add i64 %5075, -3454
  %5113 = add i64 %5074, 20
  store i64 %5113, i64* %3, align 8
  %5114 = inttoptr i64 %5112 to i16*
  store i16 %5111, i16* %5114, align 2
  %5115 = load i64, i64* %RBP.i, align 8
  %5116 = add i64 %5115, -3454
  %5117 = load i64, i64* %3, align 8
  %5118 = add i64 %5117, 7
  store i64 %5118, i64* %3, align 8
  %5119 = inttoptr i64 %5116 to i16*
  %5120 = load i16, i16* %5119, align 2
  store i16 %5120, i16* %DI.i1678, align 2
  %5121 = add i64 %5115, -24
  %5122 = add i64 %5117, 11
  store i64 %5122, i64* %3, align 8
  %5123 = inttoptr i64 %5121 to i64*
  %5124 = load i64, i64* %5123, align 8
  store i64 %5124, i64* %RAX.i1036, align 8
  %5125 = add i64 %5115, -3452
  %5126 = add i64 %5117, 18
  store i64 %5126, i64* %3, align 8
  %5127 = inttoptr i64 %5125 to i32*
  %5128 = load i32, i32* %5127, align 4
  %5129 = sext i32 %5128 to i64
  store i64 %5129, i64* %RDX.i2023, align 8
  %5130 = shl nsw i64 %5129, 1
  %5131 = add i64 %5130, %5124
  %5132 = add i64 %5117, 22
  store i64 %5132, i64* %3, align 8
  %5133 = inttoptr i64 %5131 to i16*
  store i16 %5120, i16* %5133, align 2
  %5134 = load i64, i64* %RBP.i, align 8
  %5135 = add i64 %5134, -3452
  %5136 = load i64, i64* %3, align 8
  %5137 = add i64 %5136, 7
  store i64 %5137, i64* %3, align 8
  %5138 = inttoptr i64 %5135 to i32*
  %5139 = load i32, i32* %5138, align 4
  %5140 = add i32 %5139, -34
  %5141 = icmp ult i32 %5139, 34
  %5142 = zext i1 %5141 to i8
  store i8 %5142, i8* %14, align 1
  %5143 = and i32 %5140, 255
  %5144 = tail call i32 @llvm.ctpop.i32(i32 %5143)
  %5145 = trunc i32 %5144 to i8
  %5146 = and i8 %5145, 1
  %5147 = xor i8 %5146, 1
  store i8 %5147, i8* %21, align 1
  %5148 = xor i32 %5140, %5139
  %5149 = lshr i32 %5148, 4
  %5150 = trunc i32 %5149 to i8
  %5151 = and i8 %5150, 1
  store i8 %5151, i8* %27, align 1
  %5152 = icmp eq i32 %5140, 0
  %5153 = zext i1 %5152 to i8
  store i8 %5153, i8* %30, align 1
  %5154 = lshr i32 %5140, 31
  %5155 = trunc i32 %5154 to i8
  store i8 %5155, i8* %33, align 1
  %5156 = lshr i32 %5139, 31
  %5157 = xor i32 %5154, %5156
  %5158 = add nuw nsw i32 %5157, %5156
  %5159 = icmp eq i32 %5158, 2
  %5160 = zext i1 %5159 to i8
  store i8 %5160, i8* %39, align 1
  %5161 = icmp ne i8 %5155, 0
  %5162 = xor i1 %5161, %5159
  %.v241 = select i1 %5162, i64 13, i64 40
  %5163 = add i64 %5136, %.v241
  store i64 %5163, i64* %3, align 8
  br i1 %5162, label %block_4022c3, label %block_.L_4022de

block_4022c3:                                     ; preds = %routine_sarl__cl___esi.exit
  %5164 = add i64 %5134, -3454
  %5165 = add i64 %5163, 7
  store i64 %5165, i64* %3, align 8
  %5166 = inttoptr i64 %5164 to i16*
  %5167 = load i16, i16* %5166, align 2
  store i16 %5167, i16* %AX.i1483, align 2
  %5168 = add i64 %5134, -24
  %5169 = add i64 %5163, 11
  store i64 %5169, i64* %3, align 8
  %5170 = inttoptr i64 %5168 to i64*
  %5171 = load i64, i64* %5170, align 8
  store i64 %5171, i64* %RCX.i2020, align 8
  %5172 = add i64 %5163, 17
  store i64 %5172, i64* %3, align 8
  %5173 = load i32, i32* %5138, align 4
  %5174 = zext i32 %5173 to i64
  store i64 %5174, i64* %RDX.i2023, align 8
  %5175 = add i64 %5134, -36
  %5176 = add i64 %5163, 20
  store i64 %5176, i64* %3, align 8
  %5177 = inttoptr i64 %5175 to i32*
  %5178 = load i32, i32* %5177, align 4
  %5179 = add i32 %5178, %5173
  %5180 = zext i32 %5179 to i64
  store i64 %5180, i64* %RDX.i2023, align 8
  %5181 = icmp ult i32 %5179, %5173
  %5182 = icmp ult i32 %5179, %5178
  %5183 = or i1 %5181, %5182
  %5184 = zext i1 %5183 to i8
  store i8 %5184, i8* %14, align 1
  %5185 = and i32 %5179, 255
  %5186 = tail call i32 @llvm.ctpop.i32(i32 %5185)
  %5187 = trunc i32 %5186 to i8
  %5188 = and i8 %5187, 1
  %5189 = xor i8 %5188, 1
  store i8 %5189, i8* %21, align 1
  %5190 = xor i32 %5178, %5173
  %5191 = xor i32 %5190, %5179
  %5192 = lshr i32 %5191, 4
  %5193 = trunc i32 %5192 to i8
  %5194 = and i8 %5193, 1
  store i8 %5194, i8* %27, align 1
  %5195 = icmp eq i32 %5179, 0
  %5196 = zext i1 %5195 to i8
  store i8 %5196, i8* %30, align 1
  %5197 = lshr i32 %5179, 31
  %5198 = trunc i32 %5197 to i8
  store i8 %5198, i8* %33, align 1
  %5199 = lshr i32 %5173, 31
  %5200 = lshr i32 %5178, 31
  %5201 = xor i32 %5197, %5199
  %5202 = xor i32 %5197, %5200
  %5203 = add nuw nsw i32 %5201, %5202
  %5204 = icmp eq i32 %5203, 2
  %5205 = zext i1 %5204 to i8
  store i8 %5205, i8* %39, align 1
  %5206 = sext i32 %5179 to i64
  store i64 %5206, i64* %RSI.i1998, align 8
  %5207 = shl nsw i64 %5206, 1
  %5208 = add i64 %5171, %5207
  %5209 = add i64 %5163, 27
  store i64 %5209, i64* %3, align 8
  %5210 = inttoptr i64 %5208 to i16*
  store i16 %5167, i16* %5210, align 2
  %.pre199 = load i64, i64* %3, align 8
  %.pre200 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4022de

block_.L_4022de:                                  ; preds = %routine_sarl__cl___esi.exit, %block_4022c3
  %5211 = phi i64 [ %5134, %routine_sarl__cl___esi.exit ], [ %.pre200, %block_4022c3 ]
  %5212 = phi i64 [ %5163, %routine_sarl__cl___esi.exit ], [ %.pre199, %block_4022c3 ]
  %5213 = add i64 %5211, -56
  %5214 = add i64 %5212, 8
  store i64 %5214, i64* %3, align 8
  %5215 = inttoptr i64 %5213 to i32*
  %5216 = load i32, i32* %5215, align 4
  %5217 = add i32 %5216, -1
  %5218 = zext i32 %5217 to i64
  store i64 %5218, i64* %RAX.i1036, align 8
  %5219 = icmp ne i32 %5216, 0
  %5220 = zext i1 %5219 to i8
  store i8 %5220, i8* %14, align 1
  %5221 = and i32 %5217, 255
  %5222 = tail call i32 @llvm.ctpop.i32(i32 %5221)
  %5223 = trunc i32 %5222 to i8
  %5224 = and i8 %5223, 1
  %5225 = xor i8 %5224, 1
  store i8 %5225, i8* %21, align 1
  %5226 = xor i32 %5216, 16
  %5227 = xor i32 %5226, %5217
  %5228 = lshr i32 %5227, 4
  %5229 = trunc i32 %5228 to i8
  %5230 = and i8 %5229, 1
  store i8 %5230, i8* %27, align 1
  %5231 = icmp eq i32 %5217, 0
  %5232 = zext i1 %5231 to i8
  store i8 %5232, i8* %30, align 1
  %5233 = lshr i32 %5217, 31
  %5234 = trunc i32 %5233 to i8
  store i8 %5234, i8* %33, align 1
  %5235 = lshr i32 %5216, 31
  %5236 = xor i32 %5233, %5235
  %5237 = xor i32 %5233, 1
  %5238 = add nuw nsw i32 %5236, %5237
  %5239 = icmp eq i32 %5238, 2
  %5240 = zext i1 %5239 to i8
  store i8 %5240, i8* %39, align 1
  %5241 = add i64 %5212, 14
  store i64 %5241, i64* %3, align 8
  store i32 %5217, i32* %5215, align 4
  %5242 = load i64, i64* %3, align 8
  %5243 = add i64 %5242, -146
  store i64 %5243, i64* %3, align 8
  br label %block_.L_40225a

block_.L_4022f1:                                  ; preds = %block_.L_40225a
  %5244 = add i64 %4993, -3444
  %5245 = add i64 %5008, 6
  store i64 %5245, i64* %3, align 8
  %5246 = inttoptr i64 %5244 to i32*
  %5247 = load i32, i32* %5246, align 4
  %5248 = add i32 %5247, -1
  %5249 = zext i32 %5248 to i64
  store i64 %5249, i64* %RAX.i1036, align 8
  %5250 = icmp eq i32 %5247, 0
  %5251 = zext i1 %5250 to i8
  store i8 %5251, i8* %14, align 1
  %5252 = and i32 %5248, 255
  %5253 = tail call i32 @llvm.ctpop.i32(i32 %5252)
  %5254 = trunc i32 %5253 to i8
  %5255 = and i8 %5254, 1
  %5256 = xor i8 %5255, 1
  store i8 %5256, i8* %21, align 1
  %5257 = xor i32 %5248, %5247
  %5258 = lshr i32 %5257, 4
  %5259 = trunc i32 %5258 to i8
  %5260 = and i8 %5259, 1
  store i8 %5260, i8* %27, align 1
  %5261 = icmp eq i32 %5248, 0
  %5262 = zext i1 %5261 to i8
  store i8 %5262, i8* %30, align 1
  %5263 = lshr i32 %5248, 31
  %5264 = trunc i32 %5263 to i8
  store i8 %5264, i8* %33, align 1
  %5265 = lshr i32 %5247, 31
  %5266 = xor i32 %5263, %5265
  %5267 = add nuw nsw i32 %5266, %5265
  %5268 = icmp eq i32 %5267, 2
  %5269 = zext i1 %5268 to i8
  store i8 %5269, i8* %39, align 1
  %5270 = add i64 %4993, -3448
  %5271 = add i64 %5008, 15
  store i64 %5271, i64* %3, align 8
  %5272 = inttoptr i64 %5270 to i32*
  %5273 = load i32, i32* %5272, align 4
  %5274 = zext i32 %5273 to i64
  store i64 %5274, i64* %RCX.i2020, align 8
  %5275 = add i64 %5008, 17
  store i64 %5275, i64* %3, align 8
  %5276 = trunc i32 %5273 to i5
  switch i5 %5276, label %5280 [
    i5 0, label %routine_sarl__cl___eax.exit
    i5 1, label %5277
  ]

; <label>:5277:                                   ; preds = %block_.L_4022f1
  %5278 = shl nuw i64 %5249, 32
  %5279 = ashr i64 %5278, 33
  br label %5287

; <label>:5280:                                   ; preds = %block_.L_4022f1
  %5281 = and i32 %5273, 31
  %5282 = zext i32 %5281 to i64
  %5283 = add nsw i64 %5282, -1
  %5284 = sext i32 %5248 to i64
  %5285 = ashr i64 %5284, %5283
  %5286 = lshr i64 %5285, 1
  br label %5287

; <label>:5287:                                   ; preds = %5280, %5277
  %5288 = phi i64 [ %5286, %5280 ], [ %5279, %5277 ]
  %5289 = phi i64 [ %5285, %5280 ], [ %5249, %5277 ]
  %5290 = trunc i64 %5289 to i8
  %5291 = and i8 %5290, 1
  %5292 = trunc i64 %5288 to i32
  %5293 = and i64 %5288, 4294967295
  store i64 %5293, i64* %RAX.i1036, align 8
  store i8 %5291, i8* %14, align 1
  %5294 = and i32 %5292, 255
  %5295 = tail call i32 @llvm.ctpop.i32(i32 %5294)
  %5296 = trunc i32 %5295 to i8
  %5297 = and i8 %5296, 1
  %5298 = xor i8 %5297, 1
  store i8 %5298, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %5299 = icmp eq i32 %5292, 0
  %5300 = zext i1 %5299 to i8
  store i8 %5300, i8* %30, align 1
  %5301 = lshr i32 %5292, 31
  %5302 = trunc i32 %5301 to i8
  store i8 %5302, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5303 = trunc i64 %5288 to i32
  br label %routine_sarl__cl___eax.exit

routine_sarl__cl___eax.exit:                      ; preds = %5287, %block_.L_4022f1
  %5304 = phi i32 [ %5303, %5287 ], [ %5248, %block_.L_4022f1 ]
  %5305 = add i32 %5304, -65535
  %5306 = icmp ult i32 %5304, 65535
  %5307 = zext i1 %5306 to i8
  store i8 %5307, i8* %14, align 1
  %5308 = and i32 %5305, 255
  %5309 = tail call i32 @llvm.ctpop.i32(i32 %5308)
  %5310 = trunc i32 %5309 to i8
  %5311 = and i8 %5310, 1
  %5312 = xor i8 %5311, 1
  store i8 %5312, i8* %21, align 1
  %5313 = xor i32 %5304, 16
  %5314 = xor i32 %5313, %5305
  %5315 = lshr i32 %5314, 4
  %5316 = trunc i32 %5315 to i8
  %5317 = and i8 %5316, 1
  store i8 %5317, i8* %27, align 1
  %5318 = icmp eq i32 %5305, 0
  %5319 = zext i1 %5318 to i8
  store i8 %5319, i8* %30, align 1
  %5320 = lshr i32 %5305, 31
  %5321 = trunc i32 %5320 to i8
  store i8 %5321, i8* %33, align 1
  %5322 = lshr i32 %5304, 31
  %5323 = xor i32 %5320, %5322
  %5324 = add nuw nsw i32 %5323, %5322
  %5325 = icmp eq i32 %5324, 2
  %5326 = zext i1 %5325 to i8
  store i8 %5326, i8* %39, align 1
  %5327 = icmp ne i8 %5321, 0
  %5328 = xor i1 %5327, %5325
  %5329 = or i1 %5318, %5328
  %.v242 = select i1 %5329, i64 38, i64 28
  %5330 = add i64 %5008, %.v242
  store i64 %5330, i64* %3, align 8
  br i1 %5329, label %block_.L_402317, label %block_40230d

block_40230d:                                     ; preds = %routine_sarl__cl___eax.exit
  store i64 1002, i64* %RDI.i1575, align 8
  %5331 = add i64 %5330, 11283
  %5332 = add i64 %5330, 10
  %5333 = load i64, i64* %6, align 8
  %5334 = add i64 %5333, -8
  %5335 = inttoptr i64 %5334 to i64*
  store i64 %5332, i64* %5335, align 8
  store i64 %5334, i64* %6, align 8
  store i64 %5331, i64* %3, align 8
  %call2_402312 = tail call %struct.Memory* @sub_404f20.BZ2_bz__AssertH__fail(%struct.State* nonnull %0, i64 %5331, %struct.Memory* %MEMORY.30)
  %.pre201 = load i64, i64* %3, align 8
  %.pre202.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_402317

block_.L_402317:                                  ; preds = %block_40230d, %routine_sarl__cl___eax.exit
  %.pre202 = phi i64 [ %4993, %routine_sarl__cl___eax.exit ], [ %.pre202.pre, %block_40230d ]
  %5336 = phi i64 [ %5330, %routine_sarl__cl___eax.exit ], [ %.pre201, %block_40230d ]
  %MEMORY.35 = phi %struct.Memory* [ %MEMORY.30, %routine_sarl__cl___eax.exit ], [ %call2_402312, %block_40230d ]
  %5337 = add i64 %5336, 5
  store i64 %5337, i64* %3, align 8
  br label %block_.L_40231c

block_.L_40231c:                                  ; preds = %block_.L_4021bd, %block_.L_402317
  %5338 = phi i64 [ %4723, %block_.L_4021bd ], [ %.pre202, %block_.L_402317 ]
  %5339 = phi i64 [ %4753, %block_.L_4021bd ], [ %5337, %block_.L_402317 ]
  %MEMORY.36 = phi %struct.Memory* [ %MEMORY.30, %block_.L_4021bd ], [ %MEMORY.35, %block_.L_402317 ]
  %5340 = add i64 %5338, -52
  %5341 = add i64 %5339, 8
  store i64 %5341, i64* %3, align 8
  %5342 = inttoptr i64 %5340 to i32*
  %5343 = load i32, i32* %5342, align 4
  %5344 = add i32 %5343, 1
  %5345 = zext i32 %5344 to i64
  store i64 %5345, i64* %RAX.i1036, align 8
  %5346 = icmp eq i32 %5343, -1
  %5347 = icmp eq i32 %5344, 0
  %5348 = or i1 %5346, %5347
  %5349 = zext i1 %5348 to i8
  store i8 %5349, i8* %14, align 1
  %5350 = and i32 %5344, 255
  %5351 = tail call i32 @llvm.ctpop.i32(i32 %5350)
  %5352 = trunc i32 %5351 to i8
  %5353 = and i8 %5352, 1
  %5354 = xor i8 %5353, 1
  store i8 %5354, i8* %21, align 1
  %5355 = xor i32 %5344, %5343
  %5356 = lshr i32 %5355, 4
  %5357 = trunc i32 %5356 to i8
  %5358 = and i8 %5357, 1
  store i8 %5358, i8* %27, align 1
  %5359 = zext i1 %5347 to i8
  store i8 %5359, i8* %30, align 1
  %5360 = lshr i32 %5344, 31
  %5361 = trunc i32 %5360 to i8
  store i8 %5361, i8* %33, align 1
  %5362 = lshr i32 %5343, 31
  %5363 = xor i32 %5360, %5362
  %5364 = add nuw nsw i32 %5363, %5360
  %5365 = icmp eq i32 %5364, 2
  %5366 = zext i1 %5365 to i8
  store i8 %5366, i8* %39, align 1
  %5367 = add i64 %5339, 14
  store i64 %5367, i64* %3, align 8
  store i32 %5344, i32* %5342, align 4
  %5368 = load i64, i64* %3, align 8
  %5369 = add i64 %5368, -1414
  store i64 %5369, i64* %3, align 8
  br label %block_.L_401da4

block_.L_40232f:                                  ; preds = %block_.L_401da4
  %5370 = add i64 %2992, -40
  %5371 = add i64 %3021, 4
  store i64 %5371, i64* %3, align 8
  %5372 = inttoptr i64 %5370 to i32*
  %5373 = load i32, i32* %5372, align 4
  %5374 = add i32 %5373, -4
  %5375 = icmp ult i32 %5373, 4
  %5376 = zext i1 %5375 to i8
  store i8 %5376, i8* %14, align 1
  %5377 = and i32 %5374, 255
  %5378 = tail call i32 @llvm.ctpop.i32(i32 %5377)
  %5379 = trunc i32 %5378 to i8
  %5380 = and i8 %5379, 1
  %5381 = xor i8 %5380, 1
  store i8 %5381, i8* %21, align 1
  %5382 = xor i32 %5374, %5373
  %5383 = lshr i32 %5382, 4
  %5384 = trunc i32 %5383 to i8
  %5385 = and i8 %5384, 1
  store i8 %5385, i8* %27, align 1
  %5386 = icmp eq i32 %5374, 0
  %5387 = zext i1 %5386 to i8
  store i8 %5387, i8* %30, align 1
  %5388 = lshr i32 %5374, 31
  %5389 = trunc i32 %5388 to i8
  store i8 %5389, i8* %33, align 1
  %5390 = lshr i32 %5373, 31
  %5391 = xor i32 %5388, %5390
  %5392 = add nuw nsw i32 %5391, %5390
  %5393 = icmp eq i32 %5392, 2
  %5394 = zext i1 %5393 to i8
  store i8 %5394, i8* %39, align 1
  %5395 = icmp ne i8 %5389, 0
  %5396 = xor i1 %5395, %5393
  %.v230 = select i1 %5396, i64 62, i64 10
  %5397 = add i64 %3021, %.v230
  store i64 %5397, i64* %3, align 8
  br i1 %5396, label %block_.L_40236d, label %block_402339

block_402339:                                     ; preds = %block_.L_40232f
  store i64 ptrtoint (%G__0x4159de_type* @G__0x4159de to i64), i64* %RSI.i1998, align 8
  %5398 = load i64, i64* bitcast (%G_0x618d80_type* @G_0x618d80 to i64*), align 8
  store i64 %5398, i64* %RDI.i1575, align 8
  %5399 = add i64 %2992, -36
  %5400 = add i64 %5397, 21
  store i64 %5400, i64* %3, align 8
  %5401 = inttoptr i64 %5399 to i32*
  %5402 = load i32, i32* %5401, align 4
  %5403 = zext i32 %5402 to i64
  store i64 %5403, i64* %RDX.i2023, align 8
  %5404 = add i64 %2992, -3416
  %5405 = add i64 %5397, 27
  store i64 %5405, i64* %3, align 8
  %5406 = inttoptr i64 %5404 to i32*
  %5407 = load i32, i32* %5406, align 4
  %5408 = zext i32 %5407 to i64
  store i64 %5408, i64* %RCX.i2020, align 8
  %5409 = add i64 %5397, 30
  store i64 %5409, i64* %3, align 8
  %5410 = load i32, i32* %5401, align 4
  %5411 = zext i32 %5410 to i64
  store i64 %5411, i64* %RAX.i1036, align 8
  %5412 = add i64 %5397, 36
  store i64 %5412, i64* %3, align 8
  %5413 = load i32, i32* %5406, align 4
  %5414 = sub i32 %5410, %5413
  %5415 = zext i32 %5414 to i64
  store i64 %5415, i64* %RAX.i1036, align 8
  %5416 = icmp ult i32 %5410, %5413
  %5417 = zext i1 %5416 to i8
  store i8 %5417, i8* %14, align 1
  %5418 = and i32 %5414, 255
  %5419 = tail call i32 @llvm.ctpop.i32(i32 %5418)
  %5420 = trunc i32 %5419 to i8
  %5421 = and i8 %5420, 1
  %5422 = xor i8 %5421, 1
  store i8 %5422, i8* %21, align 1
  %5423 = xor i32 %5413, %5410
  %5424 = xor i32 %5423, %5414
  %5425 = lshr i32 %5424, 4
  %5426 = trunc i32 %5425 to i8
  %5427 = and i8 %5426, 1
  store i8 %5427, i8* %27, align 1
  %5428 = icmp eq i32 %5414, 0
  %5429 = zext i1 %5428 to i8
  store i8 %5429, i8* %30, align 1
  %5430 = lshr i32 %5414, 31
  %5431 = trunc i32 %5430 to i8
  store i8 %5431, i8* %33, align 1
  %5432 = lshr i32 %5410, 31
  %5433 = lshr i32 %5413, 31
  %5434 = xor i32 %5433, %5432
  %5435 = xor i32 %5430, %5432
  %5436 = add nuw nsw i32 %5435, %5434
  %5437 = icmp eq i32 %5436, 2
  %5438 = zext i1 %5437 to i8
  store i8 %5438, i8* %39, align 1
  store i64 %5415, i64* %2988, align 8
  store i8 0, i8* %AL.i723, align 1
  %5439 = add i64 %5397, -6665
  %5440 = add i64 %5397, 46
  %5441 = load i64, i64* %6, align 8
  %5442 = add i64 %5441, -8
  %5443 = inttoptr i64 %5442 to i64*
  store i64 %5440, i64* %5443, align 8
  store i64 %5442, i64* %6, align 8
  store i64 %5439, i64* %3, align 8
  %5444 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.15)
  %5445 = load i64, i64* %RBP.i, align 8
  %5446 = add i64 %5445, -3484
  %5447 = load i32, i32* %EAX.i1973.pre-phi, align 4
  %5448 = load i64, i64* %3, align 8
  %5449 = add i64 %5448, 6
  store i64 %5449, i64* %3, align 8
  %5450 = inttoptr i64 %5446 to i32*
  store i32 %5447, i32* %5450, align 4
  %.pre207 = load i64, i64* %3, align 8
  br label %block_.L_40236d

block_.L_40236d:                                  ; preds = %block_402339, %block_.L_40232f, %block_401ef9
  %5451 = phi i64 [ %5397, %block_.L_40232f ], [ %.pre207, %block_402339 ], [ %3526, %block_401ef9 ]
  %MEMORY.37 = phi %struct.Memory* [ %MEMORY.15, %block_.L_40232f ], [ %5444, %block_402339 ], [ %call2_401ecc, %block_401ef9 ]
  %5452 = load i64, i64* %6, align 8
  %5453 = add i64 %5452, 3504
  store i64 %5453, i64* %6, align 8
  %5454 = icmp ugt i64 %5452, -3505
  %5455 = zext i1 %5454 to i8
  store i8 %5455, i8* %14, align 1
  %5456 = trunc i64 %5453 to i32
  %5457 = and i32 %5456, 255
  %5458 = tail call i32 @llvm.ctpop.i32(i32 %5457)
  %5459 = trunc i32 %5458 to i8
  %5460 = and i8 %5459, 1
  %5461 = xor i8 %5460, 1
  store i8 %5461, i8* %21, align 1
  %5462 = xor i64 %5452, 16
  %5463 = xor i64 %5462, %5453
  %5464 = lshr i64 %5463, 4
  %5465 = trunc i64 %5464 to i8
  %5466 = and i8 %5465, 1
  store i8 %5466, i8* %27, align 1
  %5467 = icmp eq i64 %5453, 0
  %5468 = zext i1 %5467 to i8
  store i8 %5468, i8* %30, align 1
  %5469 = lshr i64 %5453, 63
  %5470 = trunc i64 %5469 to i8
  store i8 %5470, i8* %33, align 1
  %5471 = lshr i64 %5452, 63
  %5472 = xor i64 %5469, %5471
  %5473 = add nuw nsw i64 %5472, %5469
  %5474 = icmp eq i64 %5473, 2
  %5475 = zext i1 %5474 to i8
  store i8 %5475, i8* %39, align 1
  %5476 = add i64 %5451, 8
  store i64 %5476, i64* %3, align 8
  %5477 = add i64 %5452, 3512
  %5478 = inttoptr i64 %5453 to i64*
  %5479 = load i64, i64* %5478, align 8
  store i64 %5479, i64* %RBP.i, align 8
  store i64 %5477, i64* %6, align 8
  %5480 = add i64 %5451, 9
  store i64 %5480, i64* %3, align 8
  %5481 = inttoptr i64 %5477 to i64*
  %5482 = load i64, i64* %5481, align 8
  store i64 %5482, i64* %3, align 8
  %5483 = add i64 %5452, 3520
  store i64 %5483, i64* %6, align 8
  ret %struct.Memory* %MEMORY.37
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
define %struct.Memory* @routine_subq__0xdb0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -3504
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 3504
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
define %struct.Memory* @routine_movq_0x10__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
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
define %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movl__r8d__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i32, i32* %R9D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_cmpl__0x4__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_jl_.L_401734(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x415970___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x415970_type* @G__0x415970 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x618d80___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x618d80_type* @G_0x618d80 to i64*), align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0xd84__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -3460
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x10000__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 65536, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_jl_.L_401762(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40173b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movzbl___rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %8 = zext i8 %7 to i64
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_shll__0x8___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %.tr = trunc i64 %3 to i32
  %6 = shl i32 %.tr, 8
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__ecx__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl__ecx__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_jl_.L_401899(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movw__0x0____rax__rcx_2_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  store i16 0, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x38__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_sarl__0x8___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 32
  %7 = ashr i64 %6, 39
  %8 = lshr i64 %7, 1
  %9 = trunc i64 %7 to i8
  %10 = and i8 %9, 1
  %11 = trunc i64 %8 to i32
  %12 = and i64 %8, 4294967295
  store i64 %12, i64* %RDX, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %11, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %11, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %25 = lshr i64 %7, 32
  %26 = trunc i64 %25 to i8
  %27 = and i8 %26, 1
  store i8 %27, i8* %24, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl___rax__rcx_1____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i64
  store i64 %10, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_shll__0x8___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %.tr = trunc i64 %3 to i32
  %6 = shl i32 %.tr, 8
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %RSI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_orl__esi___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i32, i32* %ESI, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = or i64 %6, %4
  %10 = trunc i64 %9 to i32
  %11 = and i64 %9, 4294967295
  store i64 %11, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__edx__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_incl__edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = and i32 %7, 255
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = xor i32 %7, %6
  %16 = lshr i32 %15, 4
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %18, i8* %19, align 1
  %20 = icmp eq i32 %7, 0
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %21, i8* %22, align 1
  %23 = lshr i32 %7, 31
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %6, 31
  %27 = xor i32 %23, %26
  %28 = add nuw nsw i32 %27, %23
  %29 = icmp eq i32 %28, 2
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %30, i8* %31, align 1
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
define %struct.Memory* @routine_movl_MINUS0x34__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_decl__edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = and i32 %7, 255
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = xor i32 %7, %6
  %16 = lshr i32 %15, 4
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %18, i8* %19, align 1
  %20 = icmp eq i32 %7, 0
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %21, i8* %22, align 1
  %23 = lshr i32 %7, 31
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %6, 31
  %27 = xor i32 %23, %26
  %28 = add nuw nsw i32 %27, %26
  %29 = icmp eq i32 %28, 2
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %30, i8* %31, align 1
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
define %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_decl__esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
  %9 = and i32 %7, 255
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = xor i32 %7, %6
  %16 = lshr i32 %15, 4
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %18, i8* %19, align 1
  %20 = icmp eq i32 %7, 0
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %21, i8* %22, align 1
  %23 = lshr i32 %7, 31
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %6, 31
  %27 = xor i32 %23, %26
  %28 = add nuw nsw i32 %27, %26
  %29 = icmp eq i32 %28, 2
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %30, i8* %31, align 1
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0xfffffffe___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp ugt i32 %6, 1
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0xfffffffe___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
  %9 = icmp ugt i32 %6, 1
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0xfffffffd___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -3
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp ugt i32 %6, 2
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0xfffffffd___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -3
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
  %9 = icmp ugt i32 %6, 2
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
define %struct.Memory* @routine_movzbl__dil___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DIL = bitcast %union.anon* %3 to i8*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i8, i8* %DIL, align 1
  %5 = zext i8 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__si___r8w(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SI = bitcast %union.anon* %3 to i16*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8W = bitcast %union.anon* %4 to i16*
  %5 = load i16, i16* %SI, align 2
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i16 %5, i16* %R8W, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzwl__r8w___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8W = bitcast %union.anon* %3 to i16*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i16, i16* %R8W, align 2
  %5 = zext i16 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 4
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
define %struct.Memory* @routine_jmpq_.L_401778(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40189e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jl_.L_4018fb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb___rax__rcx_1____sil(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
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
  store i8 %10, i8* %SIL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl__sil___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i8, i8* %SIL, align 1
  %5 = zext i8 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di___r8w(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8W = bitcast %union.anon* %4 to i16*
  %5 = load i16, i16* %DI, align 2
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i16 %5, i16* %R8W, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzwl__r8w___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8W = bitcast %union.anon* %3 to i16*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i16, i16* %R8W, align 2
  %5 = zext i16 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_shll__0x8___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %.tr = trunc i64 %3 to i32
  %6 = shl i32 %.tr, 8
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %RDI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_orl__edi___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i32, i32* %EDI, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = or i64 %6, %4
  %10 = trunc i64 %9 to i32
  %11 = and i64 %9, 4294967295
  store i64 %11, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__0x0__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x22__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -34
  %10 = icmp ult i32 %8, 34
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
define %struct.Memory* @routine_jge_.L_401948(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb___rax__rcx_1____dl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, %4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i8*
  %10 = load i8, i8* %9, align 1
  store i8 %10, i8* %DL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x24__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_addl_MINUS0x34__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movb__dl____rax__rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, %4
  %7 = load i8, i8* %DL, align 1
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i8*
  store i8 %7, i8* %10, align 1
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
define %struct.Memory* @routine_jmpq_.L_401902(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jl_.L_401971(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x415992___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x415992_type* @G__0x415992 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xd88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -3464
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x10000__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -65536
  %10 = icmp ult i32 %8, 65536
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
define %struct.Memory* @routine_jg_.L_4019b1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
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
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_addl___rax__rdx_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = trunc i64 %3 to i32
  %11 = inttoptr i64 %7 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i32 %12, %10
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__ecx____rax__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %ECX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401978(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__cx___dx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CX = bitcast %union.anon* %3 to i16*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DX = bitcast %union.anon* %4 to i16*
  %5 = load i16, i16* %CX, align 2
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i16 %5, i16* %DX, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__dx__MINUS0xd5a__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DX = bitcast %union.anon* %3 to i16*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -3418
  %6 = load i16, i16* %DX, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jl_.L_401b6e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movzwl_MINUS0xd5a__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3418
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = zext i16 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_sarl__0x8___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 32
  %7 = ashr i64 %6, 39
  %8 = lshr i64 %7, 1
  %9 = trunc i64 %7 to i8
  %10 = and i8 %9, 1
  %11 = trunc i64 %8 to i32
  %12 = and i64 %8, 4294967295
  store i64 %12, i64* %RAX, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %11, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %11, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %25 = lshr i64 %7, 32
  %26 = trunc i64 %25 to i8
  %27 = and i8 %26, 1
  store i8 %27, i8* %24, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
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
define %struct.Memory* @routine_movzbl___rcx__rdx_1____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %10 = zext i8 %9 to i64
  store i64 %10, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_orl__esi___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i32, i32* %ESI, align 4
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
define %struct.Memory* @routine_movw__ax___di(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AX = bitcast %union.anon* %3 to i16*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %4 to i16*
  %5 = load i16, i16* %AX, align 2
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i16 %5, i16* %DI, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__MINUS0xd5a__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -3418
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl___rcx__rdx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
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
  store i64 %11, i64* %RAX, align 8
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
define %struct.Memory* @routine_movzwl_MINUS0xd5a__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3418
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = zext i16 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EAX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
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
define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_subl__0x1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_movslq__esi___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x2___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
  %9 = icmp ult i32 %6, 2
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 2
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x3___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -3
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
  %9 = icmp ult i32 %6, 3
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x3___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -3
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 3
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
define %struct.Memory* @routine_jmpq_.L_4019ce(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401b73(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jl_.L_401be7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xff__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -255
  %10 = icmp ult i32 %8, 255
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
define %struct.Memory* @routine_jg_.L_401c23(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_movb__0x0__MINUS0x550__rbp__rax_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %3, -1360
  %6 = add i64 %5, %4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i8*
  store i8 0, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x450__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1104
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401bee(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0xd64__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3428
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__0x3__MINUS0xd64__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3428
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = mul nsw i64 %9, 3
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967295
  store i64 %12, i64* %RAX, align 8
  %13 = mul i64 %9, 12884901888
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
define %struct.Memory* @routine_movl__eax__MINUS0xd64__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -3428
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x100__MINUS0xd64__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3428
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -256
  %10 = icmp ult i32 %8, 256
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
define %struct.Memory* @routine_jle_.L_401c2d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_401c52(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 3, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xd64__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3428
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
define %struct.Memory* @routine_movl__eax__MINUS0xd8c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -3468
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
define %struct.Memory* @routine_movl_MINUS0xd8c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3468
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xd64__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3428
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
define %struct.Memory* @routine_jg_.L_401d81(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x450__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1104
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0xd60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -3424
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x38__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_subl_MINUS0xd64__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -3428
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
define %struct.Memory* @routine_movl_MINUS0x450__rbp__rdx_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1104
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_subl_MINUS0xd64__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -3428
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x450__rbp__rdx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1104
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl___rax__rdx_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = trunc i64 %3 to i32
  %11 = inttoptr i64 %7 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = sub i32 %10, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
  %15 = icmp ult i32 %10, %12
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %13, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %12, %10
  %25 = xor i32 %24, %13
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %13, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %13, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %10, 31
  %37 = lshr i32 %12, 31
  %38 = xor i32 %37, %36
  %39 = xor i32 %33, %36
  %40 = add nuw nsw i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xd60__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3424
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xd60__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3424
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
define %struct.Memory* @routine_movslq__edi___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %EDI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl___rax__rdx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = trunc i64 %3 to i32
  %11 = inttoptr i64 %7 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = sub i32 %10, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RSI, align 8
  %15 = icmp ult i32 %10, %12
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %13, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %12, %10
  %25 = xor i32 %24, %13
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %13, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %13, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %10, 31
  %37 = lshr i32 %12, 31
  %38 = xor i32 %37, %36
  %39 = xor i32 %33, %36
  %40 = add nuw nsw i32 %39, %38
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
define %struct.Memory* @routine_jbe_.L_401d5d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %.v, %3
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0xd64__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -3428
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x450__rbp__rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1104
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
define %struct.Memory* @routine_movl__eax__MINUS0x450__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1104
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EAX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xd64__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3428
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__edx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_jg_.L_401d58(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_401d62(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401ca1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xd60__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3424
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
define %struct.Memory* @routine_jmpq_.L_401c7d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401d86(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0xd64__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3428
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
define %struct.Memory* @routine_jne_.L_401c52(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0xd58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3416
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_40232f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xff__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -255
  %10 = icmp ult i32 %8, 255
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
define %struct.Memory* @routine_jg_.L_401f2f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_MINUS0x40__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -64
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
define %struct.Memory* @routine_je_.L_401f1c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_shll__0x8___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %.tr = trunc i64 %3 to i32
  %6 = shl i32 %.tr, 8
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x38__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
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
define %struct.Memory* @routine_movslq_MINUS0x44__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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
define %struct.Memory* @routine_andl__0x200000___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 2097152
  store i64 %6, i64* %RAX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %8, align 1
  %.lobit = lshr exact i64 %6, 21
  %9 = trunc i64 %.lobit to i8
  %10 = xor i8 %9, 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %10, i8* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
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
define %struct.Memory* @routine_jne_.L_401f08(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x44__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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
define %struct.Memory* @routine_andl__0xffdfffff___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = and i32 %6, -2097153
  %8 = and i64 %3, 4292870143
  store i64 %8, i64* %RDX, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %6, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = icmp eq i32 %7, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i32 %6, 31
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0xd68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -3432
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl__edx__MINUS0xd6c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -3436
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xd6c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3436
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
define %struct.Memory* @routine_cmpl_MINUS0xd68__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -3432
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
define %struct.Memory* @routine_jle_.L_401f03(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jl_.L_401e94(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4159ae___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4159ae_type* @G__0x4159ae to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x40__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_movl_MINUS0xd58__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -3416
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
define %struct.Memory* @routine_movl_MINUS0xd6c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3436
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
define %struct.Memory* @routine_subl_MINUS0xd68__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -3432
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0xd90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -3472
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xd68__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -3432
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
define %struct.Memory* @routine_movl_MINUS0xd6c__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -3436
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
define %struct.Memory* @routine_movq_MINUS0x30__rbp____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2____rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = bitcast i64* %RSP to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 2, i32* %4, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r10__0x8__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %R10, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xd94__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -3476
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.mainQSort3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl_MINUS0xd58__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -3416
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
define %struct.Memory* @routine_movl__eax__MINUS0xd58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -3416
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0____rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RDX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = and i32 %7, 255
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %15, align 1
  %16 = icmp eq i32 %7, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i32 %7, 31
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_401efe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40236d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401f03(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401f08(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_orl__0x200000___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = or i64 %3, 2097152
  %7 = trunc i64 %6 to i32
  %8 = and i64 %6, 4294967295
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_jmpq_.L_401f21(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401dc6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x40__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_cmpb__0x0__MINUS0x550__rbp__rax_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %3, -1360
  %6 = add i64 %5, %4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i8*
  %10 = load i8, i8* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %11, align 1
  %12 = zext i8 %10 to i32
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = icmp eq i8 %10, 0
  %20 = zext i1 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %20, i8* %21, align 1
  %22 = lshr i8 %10, 7
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_401f4b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x3ee___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1006, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.BZ2_bz__AssertH__fail(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_401fbb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl_MINUS0x40__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0xffdfffff___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = and i32 %6, -2097153
  %8 = and i64 %3, 4292870143
  store i64 %8, i64* %RCX, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %6, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = icmp eq i32 %7, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i32 %6, 31
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_movl__ecx__MINUS0x950__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -2384
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0xd50__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -3408
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401f52(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x40__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_movslq_MINUS0x40__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_cmpl_MINUS0x950__rbp__rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, -2384
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %4, %13
  %15 = icmp ult i32 %4, %13
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %14, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %13, %4
  %25 = xor i32 %24, %14
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %14, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %14, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %4, 31
  %37 = lshr i32 %13, 31
  %38 = xor i32 %37, %36
  %39 = xor i32 %33, %36
  %40 = add nuw nsw i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_402070(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_40200c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_addl_MINUS0x3c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_movb__dl__MINUS0xd51__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -3409
  %6 = load i8, i8* %DL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_MINUS0xd51__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3409
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RSI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40205d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movzbl_MINUS0xd51__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3409
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x950__rbp__rsi_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -2384
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0x950__rbp__rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -2384
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EDI, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__edx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax____rcx__rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EAX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_402062(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401fd4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0xd50__rbp__rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, -3408
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %4, %13
  %15 = icmp ult i32 %4, %13
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %14, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %13, %4
  %25 = xor i32 %24, %14
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %14, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %14, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %4, 31
  %37 = lshr i32 %13, 31
  %38 = xor i32 %37, %36
  %39 = xor i32 %33, %36
  %40 = add nuw nsw i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_40212b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4020c7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_402118(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0xd50__rbp__rsi_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -3408
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0xffffffff___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl__edi__MINUS0xd50__rbp__rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -3408
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EDI, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40211d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40208f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x950__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -2384
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0xd50__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = load i64, i64* %RAX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, -3408
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %4, %13
  %15 = icmp ult i32 %4, %13
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %14, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %13, %4
  %25 = xor i32 %24, %14
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %14, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %14, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %4, 31
  %37 = lshr i32 %13, 31
  %38 = xor i32 %37, %36
  %39 = xor i32 %33, %36
  %40 = add nuw nsw i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_40217f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x950__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -2384
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %12, align 1
  %13 = and i32 %11, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
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
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_402175(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0xd50__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -3408
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x24__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_movl__0x3ef___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1007, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_4021bd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_orl__0x200000___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = or i64 %3, 2097152
  %7 = trunc i64 %6 to i32
  %8 = and i64 %6, 4294967295
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_jmpq_.L_402186(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x1__MINUS0x550__rbp__rax_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %3, -1360
  %6 = add i64 %5, %4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i8*
  store i8 1, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_40231c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0xd70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -3440
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0xd70__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -3440
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
define %struct.Memory* @routine_movl__ecx__MINUS0xd74__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -3444
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0xd78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3448
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xd74__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3444
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
define %struct.Memory* @routine_movl_MINUS0xd78__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3448
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
define %struct.Memory* @routine_sarl__cl___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i8, i8* %CL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  %8 = trunc i8 %5 to i5
  switch i5 %8, label %12 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
    i5 1, label %9
  ]

; <label>:9:                                      ; preds = %block_400488
  %10 = shl i64 %4, 32
  %11 = ashr i64 %10, 33
  br label %20

; <label>:12:                                     ; preds = %block_400488
  %13 = and i8 %5, 31
  %14 = zext i8 %13 to i64
  %15 = add nsw i64 %14, -1
  %16 = shl i64 %4, 32
  %17 = ashr exact i64 %16, 32
  %18 = ashr i64 %17, %15
  %19 = lshr i64 %18, 1
  br label %20

; <label>:20:                                     ; preds = %12, %9
  %21 = phi i64 [ %19, %12 ], [ %11, %9 ]
  %22 = phi i64 [ %18, %12 ], [ %4, %9 ]
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = trunc i64 %21 to i32
  %26 = and i64 %21, 4294967295
  store i64 %26, i64* %RAX, align 8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %24, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %29 = and i32 %25, 255
  %30 = tail call i32 @llvm.ctpop.i32(i32 %29)
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 1
  %33 = xor i8 %32, 1
  store i8 %33, i8* %28, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %36 = icmp eq i32 %25, 0
  %37 = zext i1 %36 to i8
  store i8 %37, i8* %35, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %39 = lshr i32 %25, 31
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %38, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %41, align 1
  br label %_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit

_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit: ; preds = %20, %block_400488
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xfffe___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -65534
  %8 = icmp ult i32 %4, 65534
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
define %struct.Memory* @routine_jle_.L_40224e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0xd78__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3448
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
define %struct.Memory* @routine_movl__eax__MINUS0xd78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -3448
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_402221(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jl_.L_4022f1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0xd70__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3440
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
define %struct.Memory* @routine_addl_MINUS0x38__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
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
define %struct.Memory* @routine_movl__ecx__MINUS0xd7c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -3452
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xd78__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3448
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
define %struct.Memory* @routine_movl__ecx__MINUS0xd98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -3480
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xd98__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3480
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
define %struct.Memory* @routine_sarl__cl___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i8, i8* %CL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  %8 = trunc i8 %5 to i5
  switch i5 %8, label %12 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
    i5 1, label %9
  ]

; <label>:9:                                      ; preds = %block_400488
  %10 = shl i64 %4, 32
  %11 = ashr i64 %10, 33
  br label %20

; <label>:12:                                     ; preds = %block_400488
  %13 = and i8 %5, 31
  %14 = zext i8 %13 to i64
  %15 = add nsw i64 %14, -1
  %16 = shl i64 %4, 32
  %17 = ashr exact i64 %16, 32
  %18 = ashr i64 %17, %15
  %19 = lshr i64 %18, 1
  br label %20

; <label>:20:                                     ; preds = %12, %9
  %21 = phi i64 [ %19, %12 ], [ %11, %9 ]
  %22 = phi i64 [ %18, %12 ], [ %4, %9 ]
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = trunc i64 %21 to i32
  %26 = and i64 %21, 4294967295
  store i64 %26, i64* %RSI, align 8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %24, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %29 = and i32 %25, 255
  %30 = tail call i32 @llvm.ctpop.i32(i32 %29)
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 1
  %33 = xor i8 %32, 1
  store i8 %33, i8* %28, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %36 = icmp eq i32 %25, 0
  %37 = zext i1 %36 to i8
  store i8 %37, i8* %35, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %39 = lshr i32 %25, 31
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %38, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %41, align 1
  br label %_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit

_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit: ; preds = %20, %block_400488
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__si___di(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SI = bitcast %union.anon* %3 to i16*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %4 to i16*
  %5 = load i16, i16* %SI, align 2
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i16 %5, i16* %DI, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__MINUS0xd7e__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -3454
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw_MINUS0xd7e__rbp____di(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -3454
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  store i16 %9, i16* %DI, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xd7c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3452
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
define %struct.Memory* @routine_movw__di____rax__rdx_2_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 1
  %7 = add i64 %6, %4
  %8 = load i16, i16* %DI, align 2
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i16*
  store i16 %8, i16* %11, align 2
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x22__MINUS0xd7c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3452
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -34
  %10 = icmp ult i32 %8, 34
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
define %struct.Memory* @routine_jge_.L_4022de(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movw_MINUS0xd7e__rbp____ax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AX = bitcast %union.anon* %3 to i16*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -3454
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  store i16 %9, i16* %AX, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xd7c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3452
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
define %struct.Memory* @routine_addl_MINUS0x24__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
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
define %struct.Memory* @routine_movw__ax____rcx__rsi_2_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AX = bitcast %union.anon* %3 to i16*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 1
  %7 = add i64 %6, %4
  %8 = load i16, i16* %AX, align 2
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i16*
  store i16 %8, i16* %11, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4022e3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40225a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xffff___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -65535
  %8 = icmp ult i32 %4, 65535
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
define %struct.Memory* @routine_jle_.L_402317(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x3ea___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1002, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40231c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_402321(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401da4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jl_.L_40236d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4159de___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4159de_type* @G__0x4159de to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xd58__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3416
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
define %struct.Memory* @routine_subl_MINUS0xd58__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -3416
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0xd9c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -3484
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0xdb0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 3504
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -3505
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
