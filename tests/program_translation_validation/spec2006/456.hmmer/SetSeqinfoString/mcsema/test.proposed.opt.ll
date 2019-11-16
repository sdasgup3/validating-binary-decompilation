; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x676f80_type = type <{ [4 x i8] }>
%G__0x45a10a_type = type <{ [8 x i8] }>
%G__0x45a2e6_type = type <{ [8 x i8] }>
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
@G_0x676f80 = local_unnamed_addr global %G_0x676f80_type zeroinitializer
@G__0x45a10a = global %G__0x45a10a_type zeroinitializer
@G__0x45a2e6 = global %G__0x45a2e6_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @atoi(i64)

declare extern_weak x86_64_sysvcc i64 @strlen(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_401710.__ctype_b_loc_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4013b0.strncpy_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401500.strncat_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_451270.IsInt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_43ea10.Die(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @SetSeqinfoString(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %RDI.i119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %39 = add i64 %7, -24
  %40 = load i64, i64* %RDI.i119, align 8
  %41 = add i64 %10, 14
  store i64 %41, i64* %3, align 8
  %42 = inttoptr i64 %39 to i64*
  store i64 %40, i64* %42, align 8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i234 = getelementptr inbounds %union.anon, %union.anon* %43, i64 0, i32 0
  %44 = load i64, i64* %RBP.i, align 8
  %45 = add i64 %44, -24
  %46 = load i64, i64* %RSI.i234, align 8
  %47 = load i64, i64* %3, align 8
  %48 = add i64 %47, 4
  store i64 %48, i64* %3, align 8
  %49 = inttoptr i64 %45 to i64*
  store i64 %46, i64* %49, align 8
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i534 = bitcast %union.anon* %50 to i32*
  %51 = load i64, i64* %RBP.i, align 8
  %52 = add i64 %51, -28
  %53 = load i32, i32* %EDX.i534, align 4
  %54 = load i64, i64* %3, align 8
  %55 = add i64 %54, 3
  store i64 %55, i64* %3, align 8
  %56 = inttoptr i64 %52 to i32*
  store i32 %53, i32* %56, align 4
  %57 = load i64, i64* %RBP.i, align 8
  %58 = add i64 %57, -24
  %59 = load i64, i64* %3, align 8
  %60 = add i64 %59, 5
  store i64 %60, i64* %3, align 8
  %61 = inttoptr i64 %58 to i64*
  %62 = load i64, i64* %61, align 8
  store i8 0, i8* %14, align 1
  %63 = trunc i64 %62 to i32
  %64 = and i32 %63, 255
  %65 = tail call i32 @llvm.ctpop.i32(i32 %64)
  %66 = trunc i32 %65 to i8
  %67 = and i8 %66, 1
  %68 = xor i8 %67, 1
  store i8 %68, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %69 = icmp eq i64 %62, 0
  %70 = zext i1 %69 to i8
  store i8 %70, i8* %29, align 1
  %71 = lshr i64 %62, 63
  %72 = trunc i64 %71 to i8
  store i8 %72, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v48 = select i1 %69, i64 11, i64 23
  %73 = add i64 %59, %.v48
  store i64 %73, i64* %3, align 8
  br i1 %69, label %block_43ff01, label %block_.L_43ff0d

block_43ff01:                                     ; preds = %entry
  %74 = add i64 %57, -4
  %75 = add i64 %73, 7
  store i64 %75, i64* %3, align 8
  %76 = inttoptr i64 %74 to i32*
  store i32 1, i32* %76, align 4
  %77 = load i64, i64* %3, align 8
  %78 = add i64 %77, 1066
  store i64 %78, i64* %3, align 8
  br label %block_.L_440332

block_.L_43ff0d:                                  ; preds = %entry
  %79 = add i64 %73, 5
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i556 = getelementptr inbounds %union.anon, %union.anon* %80, i64 0, i32 0
  %RCX.i554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  br label %block_.L_43ff12

block_.L_43ff12:                                  ; preds = %block_43ff22, %block_.L_43ff0d
  %81 = phi i64 [ %57, %block_.L_43ff0d ], [ %.pre, %block_43ff22 ]
  %storemerge = phi i64 [ %79, %block_.L_43ff0d ], [ %141, %block_43ff22 ]
  %82 = add i64 %81, -24
  %83 = add i64 %storemerge, 4
  store i64 %83, i64* %3, align 8
  %84 = inttoptr i64 %82 to i64*
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %RAX.i556, align 8
  %86 = add i64 %storemerge, 7
  store i64 %86, i64* %3, align 8
  %87 = inttoptr i64 %85 to i8*
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i64
  %90 = and i64 %89, 4294967295
  store i64 %90, i64* %RCX.i554, align 8
  %91 = sext i8 %88 to i32
  %92 = add nsw i32 %91, -32
  %93 = icmp ult i8 %88, 32
  %94 = zext i1 %93 to i8
  store i8 %94, i8* %14, align 1
  %95 = and i32 %92, 255
  %96 = tail call i32 @llvm.ctpop.i32(i32 %95)
  %97 = trunc i32 %96 to i8
  %98 = and i8 %97, 1
  %99 = xor i8 %98, 1
  store i8 %99, i8* %21, align 1
  %100 = xor i32 %92, %91
  %101 = lshr i32 %100, 4
  %102 = trunc i32 %101 to i8
  %103 = and i8 %102, 1
  store i8 %103, i8* %26, align 1
  %104 = icmp eq i32 %92, 0
  %105 = zext i1 %104 to i8
  store i8 %105, i8* %29, align 1
  %106 = lshr i32 %92, 31
  %107 = trunc i32 %106 to i8
  store i8 %107, i8* %32, align 1
  %108 = lshr i32 %91, 31
  %109 = xor i32 %106, %108
  %110 = add nuw nsw i32 %109, %108
  %111 = icmp eq i32 %110, 2
  %112 = zext i1 %111 to i8
  store i8 %112, i8* %38, align 1
  %.v44 = select i1 %104, i64 16, i64 33
  %113 = add i64 %storemerge, %.v44
  %114 = add i64 %113, 4
  store i64 %114, i64* %3, align 8
  %115 = load i64, i64* %84, align 8
  br i1 %104, label %block_43ff22, label %block_.L_43ff33

block_43ff22:                                     ; preds = %block_.L_43ff12
  %116 = add i64 %115, 1
  store i64 %116, i64* %RAX.i556, align 8
  %117 = icmp eq i64 %115, -1
  %118 = icmp eq i64 %116, 0
  %119 = or i1 %117, %118
  %120 = zext i1 %119 to i8
  store i8 %120, i8* %14, align 1
  %121 = trunc i64 %116 to i32
  %122 = and i32 %121, 255
  %123 = tail call i32 @llvm.ctpop.i32(i32 %122)
  %124 = trunc i32 %123 to i8
  %125 = and i8 %124, 1
  %126 = xor i8 %125, 1
  store i8 %126, i8* %21, align 1
  %127 = xor i64 %116, %115
  %128 = lshr i64 %127, 4
  %129 = trunc i64 %128 to i8
  %130 = and i8 %129, 1
  store i8 %130, i8* %26, align 1
  %131 = zext i1 %118 to i8
  store i8 %131, i8* %29, align 1
  %132 = lshr i64 %116, 63
  %133 = trunc i64 %132 to i8
  store i8 %133, i8* %32, align 1
  %134 = lshr i64 %115, 63
  %135 = xor i64 %132, %134
  %136 = add nuw nsw i64 %135, %132
  %137 = icmp eq i64 %136, 2
  %138 = zext i1 %137 to i8
  store i8 %138, i8* %38, align 1
  %139 = add i64 %113, 12
  store i64 %139, i64* %3, align 8
  store i64 %116, i64* %84, align 8
  %140 = load i64, i64* %3, align 8
  %141 = add i64 %140, -28
  %142 = add i64 %140, 5
  store i64 %142, i64* %3, align 8
  %.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_43ff12

block_.L_43ff33:                                  ; preds = %block_.L_43ff12
  store i64 %115, i64* %RDI.i119, align 8
  %143 = add i64 %113, -256723
  %144 = add i64 %113, 9
  %145 = load i64, i64* %6, align 8
  %146 = add i64 %145, -8
  %147 = inttoptr i64 %146 to i64*
  store i64 %144, i64* %147, align 8
  store i64 %146, i64* %6, align 8
  store i64 %143, i64* %3, align 8
  %148 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %2)
  %149 = load i64, i64* %RAX.i556, align 8
  %150 = load i64, i64* %3, align 8
  %151 = add i64 %149, -1
  store i64 %151, i64* %RAX.i556, align 8
  %152 = icmp eq i64 %149, 0
  %153 = zext i1 %152 to i8
  store i8 %153, i8* %14, align 1
  %154 = trunc i64 %151 to i32
  %155 = and i32 %154, 255
  %156 = tail call i32 @llvm.ctpop.i32(i32 %155)
  %157 = trunc i32 %156 to i8
  %158 = and i8 %157, 1
  %159 = xor i8 %158, 1
  store i8 %159, i8* %21, align 1
  %160 = xor i64 %151, %149
  %161 = lshr i64 %160, 4
  %162 = trunc i64 %161 to i8
  %163 = and i8 %162, 1
  store i8 %163, i8* %26, align 1
  %164 = icmp eq i64 %151, 0
  %165 = zext i1 %164 to i8
  store i8 %165, i8* %29, align 1
  %166 = lshr i64 %151, 63
  %167 = trunc i64 %166 to i8
  store i8 %167, i8* %32, align 1
  %168 = lshr i64 %149, 63
  %169 = xor i64 %166, %168
  %170 = add nuw nsw i64 %169, %168
  %171 = icmp eq i64 %170, 2
  %172 = zext i1 %171 to i8
  store i8 %172, i8* %38, align 1
  %EAX.i529 = bitcast %union.anon* %80 to i32*
  %173 = and i64 %151, 4294967295
  store i64 %173, i64* %RCX.i554, align 8
  %174 = load i64, i64* %RBP.i, align 8
  %175 = add i64 %174, -36
  %176 = add i64 %150, 9
  store i64 %176, i64* %3, align 8
  %177 = inttoptr i64 %175 to i32*
  store i32 %154, i32* %177, align 4
  %178 = bitcast %union.anon* %80 to i64**
  %RDX.i514 = getelementptr inbounds %union.anon, %union.anon* %50, i64 0, i32 0
  %ESI.i507 = bitcast %union.anon* %43 to i32*
  %.pre32 = load i64, i64* %3, align 8
  br label %block_.L_43ff45

block_.L_43ff45:                                  ; preds = %block_.L_43ff7e, %block_.L_43ff33
  %179 = phi i64 [ %262, %block_.L_43ff7e ], [ %.pre32, %block_.L_43ff33 ]
  %180 = load i64, i64* %RBP.i, align 8
  %181 = add i64 %180, -36
  %182 = add i64 %179, 4
  store i64 %182, i64* %3, align 8
  %183 = inttoptr i64 %181 to i32*
  %184 = load i32, i32* %183, align 4
  store i8 0, i8* %14, align 1
  %185 = and i32 %184, 255
  %186 = tail call i32 @llvm.ctpop.i32(i32 %185)
  %187 = trunc i32 %186 to i8
  %188 = and i8 %187, 1
  %189 = xor i8 %188, 1
  store i8 %189, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %190 = icmp eq i32 %184, 0
  %191 = zext i1 %190 to i8
  store i8 %191, i8* %29, align 1
  %192 = lshr i32 %184, 31
  %193 = trunc i32 %192 to i8
  store i8 %193, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %194 = icmp ne i8 %193, 0
  %.v = select i1 %194, i64 72, i64 6
  %195 = add i64 %182, %.v
  store i64 %195, i64* %3, align 8
  br i1 %194, label %block_.L_43ff91.loopexit, label %block_43ff4f

block_43ff4f:                                     ; preds = %block_.L_43ff45
  %196 = add i64 %195, -256063
  %197 = add i64 %195, 5
  %198 = load i64, i64* %6, align 8
  %199 = add i64 %198, -8
  %200 = inttoptr i64 %199 to i64*
  store i64 %197, i64* %200, align 8
  store i64 %199, i64* %6, align 8
  store i64 %196, i64* %3, align 8
  %call2_43ff4f = tail call %struct.Memory* @sub_401710.__ctype_b_loc_plt(%struct.State* nonnull %0, i64 %196, %struct.Memory* %148)
  %201 = load i64*, i64** %178, align 8
  %202 = load i64, i64* %3, align 8
  %203 = add i64 %202, 3
  store i64 %203, i64* %3, align 8
  %204 = load i64, i64* %201, align 8
  store i64 %204, i64* %RAX.i556, align 8
  %205 = load i64, i64* %RBP.i, align 8
  %206 = add i64 %205, -24
  %207 = add i64 %202, 7
  store i64 %207, i64* %3, align 8
  %208 = inttoptr i64 %206 to i64*
  %209 = load i64, i64* %208, align 8
  store i64 %209, i64* %RCX.i554, align 8
  %210 = add i64 %205, -36
  %211 = add i64 %202, 11
  store i64 %211, i64* %3, align 8
  %212 = inttoptr i64 %210 to i32*
  %213 = load i32, i32* %212, align 4
  %214 = sext i32 %213 to i64
  store i64 %214, i64* %RDX.i514, align 8
  %215 = add i64 %209, %214
  %216 = add i64 %202, 15
  store i64 %216, i64* %3, align 8
  %217 = inttoptr i64 %215 to i8*
  %218 = load i8, i8* %217, align 1
  %219 = sext i8 %218 to i64
  %220 = and i64 %219, 4294967295
  store i64 %220, i64* %RSI.i234, align 8
  %221 = sext i8 %218 to i64
  store i64 %221, i64* %RCX.i554, align 8
  %222 = shl nsw i64 %221, 1
  %223 = add i64 %204, %222
  %224 = add i64 %202, 22
  store i64 %224, i64* %3, align 8
  %225 = inttoptr i64 %223 to i16*
  %226 = load i16, i16* %225, align 2
  %227 = and i16 %226, 8192
  %228 = zext i16 %227 to i64
  store i64 %228, i64* %RSI.i234, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %.lobit45 = lshr exact i16 %227, 13
  %229 = trunc i16 %.lobit45 to i8
  %230 = xor i8 %229, 1
  store i8 %230, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %231 = icmp eq i8 %230, 0
  %.v47 = select i1 %231, i64 42, i64 37
  %232 = add i64 %202, %.v47
  store i64 %232, i64* %3, align 8
  br i1 %231, label %block_.L_43ff7e, label %block_43ff79

block_43ff79:                                     ; preds = %block_43ff4f
  %233 = add i64 %232, 24
  store i64 %233, i64* %3, align 8
  br label %block_.L_43ff91

block_.L_43ff7e:                                  ; preds = %block_43ff4f
  %234 = add i64 %232, 8
  store i64 %234, i64* %3, align 8
  %235 = load i32, i32* %212, align 4
  %236 = add i32 %235, -1
  %237 = zext i32 %236 to i64
  store i64 %237, i64* %RAX.i556, align 8
  %238 = icmp ne i32 %235, 0
  %239 = zext i1 %238 to i8
  store i8 %239, i8* %14, align 1
  %240 = and i32 %236, 255
  %241 = tail call i32 @llvm.ctpop.i32(i32 %240)
  %242 = trunc i32 %241 to i8
  %243 = and i8 %242, 1
  %244 = xor i8 %243, 1
  store i8 %244, i8* %21, align 1
  %245 = xor i32 %235, 16
  %246 = xor i32 %245, %236
  %247 = lshr i32 %246, 4
  %248 = trunc i32 %247 to i8
  %249 = and i8 %248, 1
  store i8 %249, i8* %26, align 1
  %250 = icmp eq i32 %236, 0
  %251 = zext i1 %250 to i8
  store i8 %251, i8* %29, align 1
  %252 = lshr i32 %236, 31
  %253 = trunc i32 %252 to i8
  store i8 %253, i8* %32, align 1
  %254 = lshr i32 %235, 31
  %255 = xor i32 %252, %254
  %256 = xor i32 %252, 1
  %257 = add nuw nsw i32 %255, %256
  %258 = icmp eq i32 %257, 2
  %259 = zext i1 %258 to i8
  store i8 %259, i8* %38, align 1
  %260 = add i64 %232, 14
  store i64 %260, i64* %3, align 8
  store i32 %236, i32* %212, align 4
  %261 = load i64, i64* %3, align 8
  %262 = add i64 %261, -71
  store i64 %262, i64* %3, align 8
  br label %block_.L_43ff45

block_.L_43ff91.loopexit:                         ; preds = %block_.L_43ff45
  br label %block_.L_43ff91

block_.L_43ff91:                                  ; preds = %block_.L_43ff91.loopexit, %block_43ff79
  %263 = phi i64 [ %233, %block_43ff79 ], [ %195, %block_.L_43ff91.loopexit ]
  %264 = phi i64 [ %205, %block_43ff79 ], [ %180, %block_.L_43ff91.loopexit ]
  %265 = add i64 %264, -24
  %266 = add i64 %263, 4
  store i64 %266, i64* %3, align 8
  %267 = inttoptr i64 %265 to i64*
  %268 = load i64, i64* %267, align 8
  store i64 %268, i64* %RAX.i556, align 8
  %269 = add i64 %264, -36
  %270 = add i64 %263, 8
  store i64 %270, i64* %3, align 8
  %271 = inttoptr i64 %269 to i32*
  %272 = load i32, i32* %271, align 4
  %273 = sext i32 %272 to i64
  store i64 %273, i64* %RCX.i554, align 8
  %274 = add nsw i64 %273, 1
  %275 = add i64 %274, %268
  %276 = add i64 %263, 13
  store i64 %276, i64* %3, align 8
  %277 = inttoptr i64 %275 to i8*
  store i8 0, i8* %277, align 1
  %278 = load i64, i64* %RBP.i, align 8
  %279 = add i64 %278, -28
  %280 = load i64, i64* %3, align 8
  %281 = add i64 %280, 3
  store i64 %281, i64* %3, align 8
  %282 = inttoptr i64 %279 to i32*
  %283 = load i32, i32* %282, align 4
  %284 = zext i32 %283 to i64
  store i64 %284, i64* %RDX.i514, align 8
  %285 = add i32 %283, -1
  %286 = zext i32 %285 to i64
  store i64 %286, i64* %RSI.i234, align 8
  %287 = icmp eq i32 %283, 0
  %288 = zext i1 %287 to i8
  store i8 %288, i8* %14, align 1
  %289 = and i32 %285, 255
  %290 = tail call i32 @llvm.ctpop.i32(i32 %289)
  %291 = trunc i32 %290 to i8
  %292 = and i8 %291, 1
  %293 = xor i8 %292, 1
  store i8 %293, i8* %21, align 1
  %294 = xor i32 %285, %283
  %295 = lshr i32 %294, 4
  %296 = trunc i32 %295 to i8
  %297 = and i8 %296, 1
  store i8 %297, i8* %26, align 1
  %298 = icmp eq i32 %285, 0
  %299 = zext i1 %298 to i8
  store i8 %299, i8* %29, align 1
  %300 = lshr i32 %285, 31
  %301 = trunc i32 %300 to i8
  store i8 %301, i8* %32, align 1
  %302 = lshr i32 %283, 31
  %303 = xor i32 %300, %302
  %304 = add nuw nsw i32 %303, %302
  %305 = icmp eq i32 %304, 2
  %306 = zext i1 %305 to i8
  store i8 %306, i8* %38, align 1
  %307 = add i64 %278, -40
  %308 = add i64 %280, 11
  store i64 %308, i64* %3, align 8
  %309 = inttoptr i64 %307 to i32*
  store i32 %283, i32* %309, align 4
  %310 = load i64, i64* %RBP.i, align 8
  %311 = add i64 %310, -44
  %312 = load i32, i32* %ESI.i507, align 4
  %313 = load i64, i64* %3, align 8
  %314 = add i64 %313, 3
  store i64 %314, i64* %3, align 8
  %315 = inttoptr i64 %311 to i32*
  store i32 %312, i32* %315, align 4
  %316 = load i64, i64* %3, align 8
  %317 = load i8, i8* %29, align 1
  %318 = icmp ne i8 %317, 0
  %.v68 = select i1 %318, i64 133, i64 6
  %319 = add i64 %316, %.v68
  store i64 %319, i64* %3, align 8
  %cmpBr_43ffac = icmp eq i8 %317, 1
  %320 = load i64, i64* %RBP.i, align 8
  br i1 %cmpBr_43ffac, label %block_.L_440031, label %block_43ffb2

block_43ffb2:                                     ; preds = %block_.L_43ff91
  %321 = add i64 %320, -40
  %322 = add i64 %319, 8
  store i64 %322, i64* %3, align 8
  %323 = inttoptr i64 %321 to i32*
  %324 = load i32, i32* %323, align 4
  %325 = add i32 %324, -2
  %326 = zext i32 %325 to i64
  store i64 %326, i64* %RAX.i556, align 8
  %327 = icmp ult i32 %324, 2
  %328 = zext i1 %327 to i8
  store i8 %328, i8* %14, align 1
  %329 = and i32 %325, 255
  %330 = tail call i32 @llvm.ctpop.i32(i32 %329)
  %331 = trunc i32 %330 to i8
  %332 = and i8 %331, 1
  %333 = xor i8 %332, 1
  store i8 %333, i8* %21, align 1
  %334 = xor i32 %325, %324
  %335 = lshr i32 %334, 4
  %336 = trunc i32 %335 to i8
  %337 = and i8 %336, 1
  store i8 %337, i8* %26, align 1
  %338 = icmp eq i32 %325, 0
  %339 = zext i1 %338 to i8
  store i8 %339, i8* %29, align 1
  %340 = lshr i32 %325, 31
  %341 = trunc i32 %340 to i8
  store i8 %341, i8* %32, align 1
  %342 = lshr i32 %324, 31
  %343 = xor i32 %340, %342
  %344 = add nuw nsw i32 %343, %342
  %345 = icmp eq i32 %344, 2
  %346 = zext i1 %345 to i8
  store i8 %346, i8* %38, align 1
  %347 = add i64 %320, -48
  %348 = add i64 %319, 14
  store i64 %348, i64* %3, align 8
  %349 = inttoptr i64 %347 to i32*
  store i32 %325, i32* %349, align 4
  %350 = load i64, i64* %3, align 8
  %351 = load i8, i8* %29, align 1
  %352 = icmp ne i8 %351, 0
  %.v69 = select i1 %352, i64 187, i64 6
  %353 = add i64 %350, %.v69
  store i64 %353, i64* %3, align 8
  %cmpBr_43ffc0 = icmp eq i8 %351, 1
  %354 = load i64, i64* %RBP.i, align 8
  br i1 %cmpBr_43ffc0, label %block_.L_44007b, label %block_43ffc6

block_43ffc6:                                     ; preds = %block_43ffb2
  %355 = add i64 %354, -40
  %356 = add i64 %353, 8
  store i64 %356, i64* %3, align 8
  %357 = inttoptr i64 %355 to i32*
  %358 = load i32, i32* %357, align 4
  %359 = add i32 %358, -4
  %360 = zext i32 %359 to i64
  store i64 %360, i64* %RAX.i556, align 8
  %361 = icmp ult i32 %358, 4
  %362 = zext i1 %361 to i8
  store i8 %362, i8* %14, align 1
  %363 = and i32 %359, 255
  %364 = tail call i32 @llvm.ctpop.i32(i32 %363)
  %365 = trunc i32 %364 to i8
  %366 = and i8 %365, 1
  %367 = xor i8 %366, 1
  store i8 %367, i8* %21, align 1
  %368 = xor i32 %359, %358
  %369 = lshr i32 %368, 4
  %370 = trunc i32 %369 to i8
  %371 = and i8 %370, 1
  store i8 %371, i8* %26, align 1
  %372 = icmp eq i32 %359, 0
  %373 = zext i1 %372 to i8
  store i8 %373, i8* %29, align 1
  %374 = lshr i32 %359, 31
  %375 = trunc i32 %374 to i8
  store i8 %375, i8* %32, align 1
  %376 = lshr i32 %358, 31
  %377 = xor i32 %374, %376
  %378 = add nuw nsw i32 %377, %376
  %379 = icmp eq i32 %378, 2
  %380 = zext i1 %379 to i8
  store i8 %380, i8* %38, align 1
  %381 = add i64 %354, -52
  %382 = add i64 %353, 14
  store i64 %382, i64* %3, align 8
  %383 = inttoptr i64 %381 to i32*
  store i32 %359, i32* %383, align 4
  %384 = load i64, i64* %3, align 8
  %385 = load i8, i8* %29, align 1
  %386 = icmp ne i8 %385, 0
  %.v70 = select i1 %386, i64 244, i64 6
  %387 = add i64 %384, %.v70
  store i64 %387, i64* %3, align 8
  %cmpBr_43ffd4 = icmp eq i8 %385, 1
  %388 = load i64, i64* %RBP.i, align 8
  br i1 %cmpBr_43ffd4, label %block_.L_4400c8, label %block_43ffda

block_43ffda:                                     ; preds = %block_43ffc6
  %389 = add i64 %388, -40
  %390 = add i64 %387, 8
  store i64 %390, i64* %3, align 8
  %391 = inttoptr i64 %389 to i32*
  %392 = load i32, i32* %391, align 4
  %393 = add i32 %392, -8
  %394 = zext i32 %393 to i64
  store i64 %394, i64* %RAX.i556, align 8
  %395 = icmp ult i32 %392, 8
  %396 = zext i1 %395 to i8
  store i8 %396, i8* %14, align 1
  %397 = and i32 %393, 255
  %398 = tail call i32 @llvm.ctpop.i32(i32 %397)
  %399 = trunc i32 %398 to i8
  %400 = and i8 %399, 1
  %401 = xor i8 %400, 1
  store i8 %401, i8* %21, align 1
  %402 = xor i32 %393, %392
  %403 = lshr i32 %402, 4
  %404 = trunc i32 %403 to i8
  %405 = and i8 %404, 1
  store i8 %405, i8* %26, align 1
  %406 = icmp eq i32 %393, 0
  %407 = zext i1 %406 to i8
  store i8 %407, i8* %29, align 1
  %408 = lshr i32 %393, 31
  %409 = trunc i32 %408 to i8
  store i8 %409, i8* %32, align 1
  %410 = lshr i32 %392, 31
  %411 = xor i32 %408, %410
  %412 = add nuw nsw i32 %411, %410
  %413 = icmp eq i32 %412, 2
  %414 = zext i1 %413 to i8
  store i8 %414, i8* %38, align 1
  %415 = add i64 %388, -56
  %416 = add i64 %387, 14
  store i64 %416, i64* %3, align 8
  %417 = inttoptr i64 %415 to i32*
  store i32 %393, i32* %417, align 4
  %418 = load i64, i64* %3, align 8
  %419 = load i8, i8* %29, align 1
  %420 = icmp ne i8 %419, 0
  %.v71 = select i1 %420, i64 304, i64 6
  %421 = add i64 %418, %.v71
  store i64 %421, i64* %3, align 8
  %cmpBr_43ffe8 = icmp eq i8 %419, 1
  %422 = load i64, i64* %RBP.i, align 8
  br i1 %cmpBr_43ffe8, label %block_.L_440118, label %block_43ffee

block_43ffee:                                     ; preds = %block_43ffda
  %423 = add i64 %422, -40
  %424 = add i64 %421, 8
  store i64 %424, i64* %3, align 8
  %425 = inttoptr i64 %423 to i32*
  %426 = load i32, i32* %425, align 4
  %427 = add i32 %426, -16
  %428 = zext i32 %427 to i64
  store i64 %428, i64* %RAX.i556, align 8
  %429 = icmp ult i32 %426, 16
  %430 = zext i1 %429 to i8
  store i8 %430, i8* %14, align 1
  %431 = and i32 %427, 255
  %432 = tail call i32 @llvm.ctpop.i32(i32 %431)
  %433 = trunc i32 %432 to i8
  %434 = and i8 %433, 1
  %435 = xor i8 %434, 1
  store i8 %435, i8* %21, align 1
  %436 = xor i32 %426, 16
  %437 = xor i32 %436, %427
  %438 = lshr i32 %437, 4
  %439 = trunc i32 %438 to i8
  %440 = and i8 %439, 1
  store i8 %440, i8* %26, align 1
  %441 = icmp eq i32 %427, 0
  %442 = zext i1 %441 to i8
  store i8 %442, i8* %29, align 1
  %443 = lshr i32 %427, 31
  %444 = trunc i32 %443 to i8
  store i8 %444, i8* %32, align 1
  %445 = lshr i32 %426, 31
  %446 = xor i32 %443, %445
  %447 = add nuw nsw i32 %446, %445
  %448 = icmp eq i32 %447, 2
  %449 = zext i1 %448 to i8
  store i8 %449, i8* %38, align 1
  %450 = add i64 %422, -60
  %451 = add i64 %421, 14
  store i64 %451, i64* %3, align 8
  %452 = inttoptr i64 %450 to i32*
  store i32 %427, i32* %452, align 4
  %453 = load i64, i64* %3, align 8
  %454 = load i8, i8* %29, align 1
  %455 = icmp ne i8 %454, 0
  %.v72 = select i1 %455, i64 513, i64 6
  %456 = add i64 %453, %.v72
  store i64 %456, i64* %3, align 8
  %cmpBr_43fffc = icmp eq i8 %454, 1
  %457 = load i64, i64* %RBP.i, align 8
  br i1 %cmpBr_43fffc, label %block_.L_4401fd, label %block_440002

block_440002:                                     ; preds = %block_43ffee
  %458 = add i64 %457, -40
  %459 = add i64 %456, 8
  store i64 %459, i64* %3, align 8
  %460 = inttoptr i64 %458 to i32*
  %461 = load i32, i32* %460, align 4
  %462 = add i32 %461, -32
  %463 = zext i32 %462 to i64
  store i64 %463, i64* %RAX.i556, align 8
  %464 = icmp ult i32 %461, 32
  %465 = zext i1 %464 to i8
  store i8 %465, i8* %14, align 1
  %466 = and i32 %462, 255
  %467 = tail call i32 @llvm.ctpop.i32(i32 %466)
  %468 = trunc i32 %467 to i8
  %469 = and i8 %468, 1
  %470 = xor i8 %469, 1
  store i8 %470, i8* %21, align 1
  %471 = xor i32 %462, %461
  %472 = lshr i32 %471, 4
  %473 = trunc i32 %472 to i8
  %474 = and i8 %473, 1
  store i8 %474, i8* %26, align 1
  %475 = icmp eq i32 %462, 0
  %476 = zext i1 %475 to i8
  store i8 %476, i8* %29, align 1
  %477 = lshr i32 %462, 31
  %478 = trunc i32 %477 to i8
  store i8 %478, i8* %32, align 1
  %479 = lshr i32 %461, 31
  %480 = xor i32 %477, %479
  %481 = add nuw nsw i32 %480, %479
  %482 = icmp eq i32 %481, 2
  %483 = zext i1 %482 to i8
  store i8 %483, i8* %38, align 1
  %484 = add i64 %457, -64
  %485 = add i64 %456, 14
  store i64 %485, i64* %3, align 8
  %486 = inttoptr i64 %484 to i32*
  store i32 %462, i32* %486, align 4
  %487 = load i64, i64* %3, align 8
  %488 = load i8, i8* %29, align 1
  %489 = icmp ne i8 %488, 0
  %.v73 = select i1 %489, i64 586, i64 6
  %490 = add i64 %487, %.v73
  store i64 %490, i64* %3, align 8
  %cmpBr_440010 = icmp eq i8 %488, 1
  %491 = load i64, i64* %RBP.i, align 8
  br i1 %cmpBr_440010, label %block_.L_44025a, label %block_440016

block_440016:                                     ; preds = %block_440002
  %492 = add i64 %491, -40
  %493 = add i64 %490, 8
  store i64 %493, i64* %3, align 8
  %494 = inttoptr i64 %492 to i32*
  %495 = load i32, i32* %494, align 4
  %496 = add i32 %495, -256
  %497 = zext i32 %496 to i64
  store i64 %497, i64* %RAX.i556, align 8
  %498 = icmp ult i32 %495, 256
  %499 = zext i1 %498 to i8
  store i8 %499, i8* %14, align 1
  %500 = and i32 %496, 255
  %501 = tail call i32 @llvm.ctpop.i32(i32 %500)
  %502 = trunc i32 %501 to i8
  %503 = and i8 %502, 1
  %504 = xor i8 %503, 1
  store i8 %504, i8* %21, align 1
  %505 = xor i32 %496, %495
  %506 = lshr i32 %505, 4
  %507 = trunc i32 %506 to i8
  %508 = and i8 %507, 1
  store i8 %508, i8* %26, align 1
  %509 = icmp eq i32 %496, 0
  %510 = zext i1 %509 to i8
  store i8 %510, i8* %29, align 1
  %511 = lshr i32 %496, 31
  %512 = trunc i32 %511 to i8
  store i8 %512, i8* %32, align 1
  %513 = lshr i32 %495, 31
  %514 = xor i32 %511, %513
  %515 = add nuw nsw i32 %514, %513
  %516 = icmp eq i32 %515, 2
  %517 = zext i1 %516 to i8
  store i8 %517, i8* %38, align 1
  %518 = add i64 %491, -68
  %519 = add i64 %490, 16
  store i64 %519, i64* %3, align 8
  %520 = inttoptr i64 %518 to i32*
  store i32 %496, i32* %520, align 4
  %521 = load i64, i64* %3, align 8
  %522 = load i8, i8* %29, align 1
  %523 = icmp ne i8 %522, 0
  %.v74 = select i1 %523, i64 657, i64 6
  %524 = add i64 %521, %.v74
  store i64 %524, i64* %3, align 8
  %cmpBr_440026 = icmp eq i8 %522, 1
  br i1 %cmpBr_440026, label %block_.L_4402b7, label %block_44002c

block_44002c:                                     ; preds = %block_440016
  store i64 ptrtoint (%G__0x45a10a_type* @G__0x45a10a to i64), i64* %RDI.i119, align 8
  %525 = load i64, i64* %RBP.i, align 8
  %526 = add i64 %525, -28
  %527 = add i64 %524, 760
  store i64 %527, i64* %3, align 8
  %528 = inttoptr i64 %526 to i32*
  %529 = load i32, i32* %528, align 4
  %530 = zext i32 %529 to i64
  store i64 %530, i64* %RSI.i234, align 8
  %AL.i = bitcast %union.anon* %80 to i8*
  store i8 0, i8* %AL.i, align 1
  %531 = add i64 %524, -5660
  %532 = add i64 %524, 767
  %533 = load i64, i64* %6, align 8
  %534 = add i64 %533, -8
  %535 = inttoptr i64 %534 to i64*
  store i64 %532, i64* %535, align 8
  store i64 %534, i64* %6, align 8
  store i64 %531, i64* %3, align 8
  %call2_440326 = tail call %struct.Memory* @sub_43ea10.Die(%struct.State* nonnull %0, i64 %531, %struct.Memory* %148)
  %.pre42 = load i64, i64* %3, align 8
  br label %block_.L_44032b

block_.L_440031:                                  ; preds = %block_.L_43ff91
  %536 = add i64 %320, -24
  %537 = add i64 %319, 4
  store i64 %537, i64* %3, align 8
  %538 = inttoptr i64 %536 to i64*
  %539 = load i64, i64* %538, align 8
  store i64 %539, i64* %RAX.i556, align 8
  %540 = add i64 %319, 7
  store i64 %540, i64* %3, align 8
  %541 = inttoptr i64 %539 to i8*
  %542 = load i8, i8* %541, align 1
  %543 = sext i8 %542 to i64
  %544 = and i64 %543, 4294967295
  store i64 %544, i64* %RCX.i554, align 8
  %545 = sext i8 %542 to i32
  %546 = add nsw i32 %545, -45
  %547 = icmp ult i8 %542, 45
  %548 = zext i1 %547 to i8
  store i8 %548, i8* %14, align 1
  %549 = and i32 %546, 255
  %550 = tail call i32 @llvm.ctpop.i32(i32 %549)
  %551 = trunc i32 %550 to i8
  %552 = and i8 %551, 1
  %553 = xor i8 %552, 1
  store i8 %553, i8* %21, align 1
  %554 = xor i32 %546, %545
  %555 = lshr i32 %554, 4
  %556 = trunc i32 %555 to i8
  %557 = and i8 %556, 1
  store i8 %557, i8* %26, align 1
  %558 = icmp eq i32 %546, 0
  %559 = zext i1 %558 to i8
  store i8 %559, i8* %29, align 1
  %560 = lshr i32 %546, 31
  %561 = trunc i32 %560 to i8
  store i8 %561, i8* %32, align 1
  %562 = lshr i32 %545, 31
  %563 = xor i32 %560, %562
  %564 = add nuw nsw i32 %563, %562
  %565 = icmp eq i32 %564, 2
  %566 = zext i1 %565 to i8
  store i8 %566, i8* %38, align 1
  %.v60 = select i1 %558, i64 69, i64 16
  %567 = add i64 %319, %.v60
  store i64 %567, i64* %3, align 8
  br i1 %558, label %block_.L_440076, label %block_440041

block_440041:                                     ; preds = %block_.L_440031
  store i64 63, i64* %RAX.i556, align 8
  store i64 63, i64* %RDX.i514, align 8
  %568 = add i64 %320, -16
  %569 = add i64 %567, 11
  store i64 %569, i64* %3, align 8
  %570 = inttoptr i64 %568 to i64*
  %571 = load i64, i64* %570, align 8
  %572 = add i64 %571, 4
  store i64 %572, i64* %RCX.i554, align 8
  %573 = icmp ugt i64 %571, -5
  %574 = zext i1 %573 to i8
  store i8 %574, i8* %14, align 1
  %575 = trunc i64 %572 to i32
  %576 = and i32 %575, 255
  %577 = tail call i32 @llvm.ctpop.i32(i32 %576)
  %578 = trunc i32 %577 to i8
  %579 = and i8 %578, 1
  %580 = xor i8 %579, 1
  store i8 %580, i8* %21, align 1
  %581 = xor i64 %572, %571
  %582 = lshr i64 %581, 4
  %583 = trunc i64 %582 to i8
  %584 = and i8 %583, 1
  store i8 %584, i8* %26, align 1
  %585 = icmp eq i64 %572, 0
  %586 = zext i1 %585 to i8
  store i8 %586, i8* %29, align 1
  %587 = lshr i64 %572, 63
  %588 = trunc i64 %587 to i8
  store i8 %588, i8* %32, align 1
  %589 = lshr i64 %571, 63
  %590 = xor i64 %587, %589
  %591 = add nuw nsw i64 %590, %587
  %592 = icmp eq i64 %591, 2
  %593 = zext i1 %592 to i8
  store i8 %593, i8* %38, align 1
  %594 = add i64 %567, 19
  store i64 %594, i64* %3, align 8
  %595 = load i64, i64* %538, align 8
  store i64 %595, i64* %RSI.i234, align 8
  store i64 %572, i64* %RDI.i119, align 8
  %596 = add i64 %567, -257169
  %597 = add i64 %567, 27
  %598 = load i64, i64* %6, align 8
  %599 = add i64 %598, -8
  %600 = inttoptr i64 %599 to i64*
  store i64 %597, i64* %600, align 8
  store i64 %599, i64* %6, align 8
  store i64 %596, i64* %3, align 8
  %call2_440057 = tail call %struct.Memory* @sub_4013b0.strncpy_plt(%struct.State* nonnull %0, i64 %596, %struct.Memory* %148)
  %601 = load i64, i64* %RBP.i, align 8
  %602 = add i64 %601, -16
  %603 = load i64, i64* %3, align 8
  %604 = add i64 %603, 4
  store i64 %604, i64* %3, align 8
  %605 = inttoptr i64 %602 to i64*
  %606 = load i64, i64* %605, align 8
  store i64 %606, i64* %RCX.i554, align 8
  %607 = add i64 %606, 67
  %608 = add i64 %603, 8
  store i64 %608, i64* %3, align 8
  %609 = inttoptr i64 %607 to i8*
  store i8 0, i8* %609, align 1
  %610 = load i64, i64* %RBP.i, align 8
  %611 = add i64 %610, -16
  %612 = load i64, i64* %3, align 8
  %613 = add i64 %612, 4
  store i64 %613, i64* %3, align 8
  %614 = inttoptr i64 %611 to i64*
  %615 = load i64, i64* %614, align 8
  store i64 %615, i64* %RCX.i554, align 8
  %616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %617 = add i64 %612, 7
  store i64 %617, i64* %3, align 8
  %618 = inttoptr i64 %615 to i32*
  %619 = load i32, i32* %618, align 4
  %620 = or i32 %619, 1
  %621 = zext i32 %620 to i64
  store i64 %621, i64* %616, align 8
  store i8 0, i8* %14, align 1
  %622 = and i32 %620, 255
  %623 = tail call i32 @llvm.ctpop.i32(i32 %622)
  %624 = trunc i32 %623 to i8
  %625 = and i8 %624, 1
  %626 = xor i8 %625, 1
  store i8 %626, i8* %21, align 1
  store i8 0, i8* %29, align 1
  %627 = lshr i32 %619, 31
  %628 = trunc i32 %627 to i8
  store i8 %628, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %629 = add i64 %612, 14
  store i64 %629, i64* %3, align 8
  store i32 %620, i32* %618, align 4
  %630 = load i64, i64* %RBP.i, align 8
  %631 = add i64 %630, -80
  %632 = load i64, i64* %RAX.i556, align 8
  %633 = load i64, i64* %3, align 8
  %634 = add i64 %633, 4
  store i64 %634, i64* %3, align 8
  %635 = inttoptr i64 %631 to i64*
  store i64 %632, i64* %635, align 8
  %.pre41 = load i64, i64* %3, align 8
  br label %block_.L_440076

block_.L_440076:                                  ; preds = %block_440041, %block_.L_440031
  %636 = phi i64 [ %567, %block_.L_440031 ], [ %.pre41, %block_440041 ]
  %MEMORY.3 = phi %struct.Memory* [ %148, %block_.L_440031 ], [ %call2_440057, %block_440041 ]
  %637 = add i64 %636, 693
  store i64 %637, i64* %3, align 8
  br label %block_.L_44032b

block_.L_44007b:                                  ; preds = %block_43ffb2
  %638 = add i64 %354, -24
  %639 = add i64 %353, 4
  store i64 %639, i64* %3, align 8
  %640 = inttoptr i64 %638 to i64*
  %641 = load i64, i64* %640, align 8
  store i64 %641, i64* %RAX.i556, align 8
  %642 = add i64 %353, 7
  store i64 %642, i64* %3, align 8
  %643 = inttoptr i64 %641 to i8*
  %644 = load i8, i8* %643, align 1
  %645 = sext i8 %644 to i64
  %646 = and i64 %645, 4294967295
  store i64 %646, i64* %RCX.i554, align 8
  %647 = sext i8 %644 to i32
  %648 = add nsw i32 %647, -45
  %649 = icmp ult i8 %644, 45
  %650 = zext i1 %649 to i8
  store i8 %650, i8* %14, align 1
  %651 = and i32 %648, 255
  %652 = tail call i32 @llvm.ctpop.i32(i32 %651)
  %653 = trunc i32 %652 to i8
  %654 = and i8 %653, 1
  %655 = xor i8 %654, 1
  store i8 %655, i8* %21, align 1
  %656 = xor i32 %648, %647
  %657 = lshr i32 %656, 4
  %658 = trunc i32 %657 to i8
  %659 = and i8 %658, 1
  store i8 %659, i8* %26, align 1
  %660 = icmp eq i32 %648, 0
  %661 = zext i1 %660 to i8
  store i8 %661, i8* %29, align 1
  %662 = lshr i32 %648, 31
  %663 = trunc i32 %662 to i8
  store i8 %663, i8* %32, align 1
  %664 = lshr i32 %647, 31
  %665 = xor i32 %662, %664
  %666 = add nuw nsw i32 %665, %664
  %667 = icmp eq i32 %666, 2
  %668 = zext i1 %667 to i8
  store i8 %668, i8* %38, align 1
  %.v59 = select i1 %660, i64 72, i64 16
  %669 = add i64 %353, %.v59
  store i64 %669, i64* %3, align 8
  br i1 %660, label %block_.L_4400c3, label %block_44008b

block_44008b:                                     ; preds = %block_.L_44007b
  store i64 63, i64* %RAX.i556, align 8
  store i64 63, i64* %RDX.i514, align 8
  %670 = add i64 %354, -16
  %671 = add i64 %669, 11
  store i64 %671, i64* %3, align 8
  %672 = inttoptr i64 %670 to i64*
  %673 = load i64, i64* %672, align 8
  %674 = add i64 %673, 68
  store i64 %674, i64* %RCX.i554, align 8
  %675 = icmp ugt i64 %673, -69
  %676 = zext i1 %675 to i8
  store i8 %676, i8* %14, align 1
  %677 = trunc i64 %674 to i32
  %678 = and i32 %677, 255
  %679 = tail call i32 @llvm.ctpop.i32(i32 %678)
  %680 = trunc i32 %679 to i8
  %681 = and i8 %680, 1
  %682 = xor i8 %681, 1
  store i8 %682, i8* %21, align 1
  %683 = xor i64 %674, %673
  %684 = lshr i64 %683, 4
  %685 = trunc i64 %684 to i8
  %686 = and i8 %685, 1
  store i8 %686, i8* %26, align 1
  %687 = icmp eq i64 %674, 0
  %688 = zext i1 %687 to i8
  store i8 %688, i8* %29, align 1
  %689 = lshr i64 %674, 63
  %690 = trunc i64 %689 to i8
  store i8 %690, i8* %32, align 1
  %691 = lshr i64 %673, 63
  %692 = xor i64 %689, %691
  %693 = add nuw nsw i64 %692, %689
  %694 = icmp eq i64 %693, 2
  %695 = zext i1 %694 to i8
  store i8 %695, i8* %38, align 1
  %696 = add i64 %669, 19
  store i64 %696, i64* %3, align 8
  %697 = load i64, i64* %640, align 8
  store i64 %697, i64* %RSI.i234, align 8
  store i64 %674, i64* %RDI.i119, align 8
  %698 = add i64 %669, -257243
  %699 = add i64 %669, 27
  %700 = load i64, i64* %6, align 8
  %701 = add i64 %700, -8
  %702 = inttoptr i64 %701 to i64*
  store i64 %699, i64* %702, align 8
  store i64 %701, i64* %6, align 8
  store i64 %698, i64* %3, align 8
  %call2_4400a1 = tail call %struct.Memory* @sub_4013b0.strncpy_plt(%struct.State* nonnull %0, i64 %698, %struct.Memory* %148)
  %703 = load i64, i64* %RBP.i, align 8
  %704 = add i64 %703, -16
  %705 = load i64, i64* %3, align 8
  %706 = add i64 %705, 4
  store i64 %706, i64* %3, align 8
  %707 = inttoptr i64 %704 to i64*
  %708 = load i64, i64* %707, align 8
  store i64 %708, i64* %RCX.i554, align 8
  %709 = add i64 %708, 131
  %710 = add i64 %705, 11
  store i64 %710, i64* %3, align 8
  %711 = inttoptr i64 %709 to i8*
  store i8 0, i8* %711, align 1
  %712 = load i64, i64* %RBP.i, align 8
  %713 = add i64 %712, -16
  %714 = load i64, i64* %3, align 8
  %715 = add i64 %714, 4
  store i64 %715, i64* %3, align 8
  %716 = inttoptr i64 %713 to i64*
  %717 = load i64, i64* %716, align 8
  store i64 %717, i64* %RCX.i554, align 8
  %718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %719 = add i64 %714, 7
  store i64 %719, i64* %3, align 8
  %720 = inttoptr i64 %717 to i32*
  %721 = load i32, i32* %720, align 4
  %722 = or i32 %721, 2
  %723 = zext i32 %722 to i64
  store i64 %723, i64* %718, align 8
  store i8 0, i8* %14, align 1
  %724 = and i32 %722, 255
  %725 = tail call i32 @llvm.ctpop.i32(i32 %724)
  %726 = trunc i32 %725 to i8
  %727 = and i8 %726, 1
  %728 = xor i8 %727, 1
  store i8 %728, i8* %21, align 1
  store i8 0, i8* %29, align 1
  %729 = lshr i32 %721, 31
  %730 = trunc i32 %729 to i8
  store i8 %730, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %731 = add i64 %714, 14
  store i64 %731, i64* %3, align 8
  store i32 %722, i32* %720, align 4
  %732 = load i64, i64* %RBP.i, align 8
  %733 = add i64 %732, -88
  %734 = load i64, i64* %RAX.i556, align 8
  %735 = load i64, i64* %3, align 8
  %736 = add i64 %735, 4
  store i64 %736, i64* %3, align 8
  %737 = inttoptr i64 %733 to i64*
  store i64 %734, i64* %737, align 8
  %.pre40 = load i64, i64* %3, align 8
  br label %block_.L_4400c3

block_.L_4400c3:                                  ; preds = %block_44008b, %block_.L_44007b
  %738 = phi i64 [ %669, %block_.L_44007b ], [ %.pre40, %block_44008b ]
  %MEMORY.4 = phi %struct.Memory* [ %148, %block_.L_44007b ], [ %call2_4400a1, %block_44008b ]
  %739 = add i64 %738, 616
  store i64 %739, i64* %3, align 8
  br label %block_.L_44032b

block_.L_4400c8:                                  ; preds = %block_43ffc6
  %740 = add i64 %388, -24
  %741 = add i64 %387, 4
  store i64 %741, i64* %3, align 8
  %742 = inttoptr i64 %740 to i64*
  %743 = load i64, i64* %742, align 8
  store i64 %743, i64* %RAX.i556, align 8
  %744 = add i64 %387, 7
  store i64 %744, i64* %3, align 8
  %745 = inttoptr i64 %743 to i8*
  %746 = load i8, i8* %745, align 1
  %747 = sext i8 %746 to i64
  %748 = and i64 %747, 4294967295
  store i64 %748, i64* %RCX.i554, align 8
  %749 = sext i8 %746 to i32
  %750 = add nsw i32 %749, -45
  %751 = icmp ult i8 %746, 45
  %752 = zext i1 %751 to i8
  store i8 %752, i8* %14, align 1
  %753 = and i32 %750, 255
  %754 = tail call i32 @llvm.ctpop.i32(i32 %753)
  %755 = trunc i32 %754 to i8
  %756 = and i8 %755, 1
  %757 = xor i8 %756, 1
  store i8 %757, i8* %21, align 1
  %758 = xor i32 %750, %749
  %759 = lshr i32 %758, 4
  %760 = trunc i32 %759 to i8
  %761 = and i8 %760, 1
  store i8 %761, i8* %26, align 1
  %762 = icmp eq i32 %750, 0
  %763 = zext i1 %762 to i8
  store i8 %763, i8* %29, align 1
  %764 = lshr i32 %750, 31
  %765 = trunc i32 %764 to i8
  store i8 %765, i8* %32, align 1
  %766 = lshr i32 %749, 31
  %767 = xor i32 %764, %766
  %768 = add nuw nsw i32 %767, %766
  %769 = icmp eq i32 %768, 2
  %770 = zext i1 %769 to i8
  store i8 %770, i8* %38, align 1
  %.v58 = select i1 %762, i64 75, i64 16
  %771 = add i64 %387, %.v58
  store i64 %771, i64* %3, align 8
  br i1 %762, label %block_.L_440113, label %block_4400d8

block_4400d8:                                     ; preds = %block_.L_4400c8
  store i64 63, i64* %RAX.i556, align 8
  store i64 63, i64* %RDX.i514, align 8
  %772 = add i64 %388, -16
  %773 = add i64 %771, 11
  store i64 %773, i64* %3, align 8
  %774 = inttoptr i64 %772 to i64*
  %775 = load i64, i64* %774, align 8
  %776 = add i64 %775, 132
  store i64 %776, i64* %RCX.i554, align 8
  %777 = icmp ugt i64 %775, -133
  %778 = zext i1 %777 to i8
  store i8 %778, i8* %14, align 1
  %779 = trunc i64 %776 to i32
  %780 = and i32 %779, 255
  %781 = tail call i32 @llvm.ctpop.i32(i32 %780)
  %782 = trunc i32 %781 to i8
  %783 = and i8 %782, 1
  %784 = xor i8 %783, 1
  store i8 %784, i8* %21, align 1
  %785 = xor i64 %776, %775
  %786 = lshr i64 %785, 4
  %787 = trunc i64 %786 to i8
  %788 = and i8 %787, 1
  store i8 %788, i8* %26, align 1
  %789 = icmp eq i64 %776, 0
  %790 = zext i1 %789 to i8
  store i8 %790, i8* %29, align 1
  %791 = lshr i64 %776, 63
  %792 = trunc i64 %791 to i8
  store i8 %792, i8* %32, align 1
  %793 = lshr i64 %775, 63
  %794 = xor i64 %791, %793
  %795 = add nuw nsw i64 %794, %791
  %796 = icmp eq i64 %795, 2
  %797 = zext i1 %796 to i8
  store i8 %797, i8* %38, align 1
  %798 = add i64 %771, 22
  store i64 %798, i64* %3, align 8
  %799 = load i64, i64* %742, align 8
  store i64 %799, i64* %RSI.i234, align 8
  store i64 %776, i64* %RDI.i119, align 8
  %800 = add i64 %771, -257320
  %801 = add i64 %771, 30
  %802 = load i64, i64* %6, align 8
  %803 = add i64 %802, -8
  %804 = inttoptr i64 %803 to i64*
  store i64 %801, i64* %804, align 8
  store i64 %803, i64* %6, align 8
  store i64 %800, i64* %3, align 8
  %call2_4400f1 = tail call %struct.Memory* @sub_4013b0.strncpy_plt(%struct.State* nonnull %0, i64 %800, %struct.Memory* %148)
  %805 = load i64, i64* %RBP.i, align 8
  %806 = add i64 %805, -16
  %807 = load i64, i64* %3, align 8
  %808 = add i64 %807, 4
  store i64 %808, i64* %3, align 8
  %809 = inttoptr i64 %806 to i64*
  %810 = load i64, i64* %809, align 8
  store i64 %810, i64* %RCX.i554, align 8
  %811 = add i64 %810, 195
  %812 = add i64 %807, 11
  store i64 %812, i64* %3, align 8
  %813 = inttoptr i64 %811 to i8*
  store i8 0, i8* %813, align 1
  %814 = load i64, i64* %RBP.i, align 8
  %815 = add i64 %814, -16
  %816 = load i64, i64* %3, align 8
  %817 = add i64 %816, 4
  store i64 %817, i64* %3, align 8
  %818 = inttoptr i64 %815 to i64*
  %819 = load i64, i64* %818, align 8
  store i64 %819, i64* %RCX.i554, align 8
  %820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %821 = add i64 %816, 7
  store i64 %821, i64* %3, align 8
  %822 = inttoptr i64 %819 to i32*
  %823 = load i32, i32* %822, align 4
  %824 = or i32 %823, 4
  %825 = zext i32 %824 to i64
  store i64 %825, i64* %820, align 8
  store i8 0, i8* %14, align 1
  %826 = and i32 %824, 255
  %827 = tail call i32 @llvm.ctpop.i32(i32 %826)
  %828 = trunc i32 %827 to i8
  %829 = and i8 %828, 1
  %830 = xor i8 %829, 1
  store i8 %830, i8* %21, align 1
  store i8 0, i8* %29, align 1
  %831 = lshr i32 %823, 31
  %832 = trunc i32 %831 to i8
  store i8 %832, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %833 = add i64 %816, 14
  store i64 %833, i64* %3, align 8
  store i32 %824, i32* %822, align 4
  %834 = load i64, i64* %RBP.i, align 8
  %835 = add i64 %834, -96
  %836 = load i64, i64* %RAX.i556, align 8
  %837 = load i64, i64* %3, align 8
  %838 = add i64 %837, 4
  store i64 %838, i64* %3, align 8
  %839 = inttoptr i64 %835 to i64*
  store i64 %836, i64* %839, align 8
  %.pre39 = load i64, i64* %3, align 8
  br label %block_.L_440113

block_.L_440113:                                  ; preds = %block_4400d8, %block_.L_4400c8
  %840 = phi i64 [ %771, %block_.L_4400c8 ], [ %.pre39, %block_4400d8 ]
  %MEMORY.5 = phi %struct.Memory* [ %148, %block_.L_4400c8 ], [ %call2_4400f1, %block_4400d8 ]
  %841 = add i64 %840, 536
  store i64 %841, i64* %3, align 8
  br label %block_.L_44032b

block_.L_440118:                                  ; preds = %block_43ffda
  %842 = add i64 %422, -24
  %843 = add i64 %421, 4
  store i64 %843, i64* %3, align 8
  %844 = inttoptr i64 %842 to i64*
  %845 = load i64, i64* %844, align 8
  store i64 %845, i64* %RAX.i556, align 8
  %846 = add i64 %421, 7
  store i64 %846, i64* %3, align 8
  %847 = inttoptr i64 %845 to i8*
  %848 = load i8, i8* %847, align 1
  %849 = sext i8 %848 to i64
  %850 = and i64 %849, 4294967295
  store i64 %850, i64* %RCX.i554, align 8
  %851 = sext i8 %848 to i32
  %852 = add nsw i32 %851, -45
  %853 = icmp ult i8 %848, 45
  %854 = zext i1 %853 to i8
  store i8 %854, i8* %14, align 1
  %855 = and i32 %852, 255
  %856 = tail call i32 @llvm.ctpop.i32(i32 %855)
  %857 = trunc i32 %856 to i8
  %858 = and i8 %857, 1
  %859 = xor i8 %858, 1
  store i8 %859, i8* %21, align 1
  %860 = xor i32 %852, %851
  %861 = lshr i32 %860, 4
  %862 = trunc i32 %861 to i8
  %863 = and i8 %862, 1
  store i8 %863, i8* %26, align 1
  %864 = icmp eq i32 %852, 0
  %865 = zext i1 %864 to i8
  store i8 %865, i8* %29, align 1
  %866 = lshr i32 %852, 31
  %867 = trunc i32 %866 to i8
  store i8 %867, i8* %32, align 1
  %868 = lshr i32 %851, 31
  %869 = xor i32 %866, %868
  %870 = add nuw nsw i32 %869, %868
  %871 = icmp eq i32 %870, 2
  %872 = zext i1 %871 to i8
  store i8 %872, i8* %38, align 1
  %.v55 = select i1 %864, i64 224, i64 16
  %873 = add i64 %421, %.v55
  store i64 %873, i64* %3, align 8
  br i1 %864, label %block_.L_4401f8, label %block_440128

block_440128:                                     ; preds = %block_.L_440118
  %874 = add i64 %422, -16
  %875 = add i64 %873, 4
  store i64 %875, i64* %3, align 8
  %876 = inttoptr i64 %874 to i64*
  %877 = load i64, i64* %876, align 8
  store i64 %877, i64* %RAX.i556, align 8
  %878 = add i64 %873, 6
  store i64 %878, i64* %3, align 8
  %879 = inttoptr i64 %877 to i32*
  %880 = load i32, i32* %879, align 4
  %881 = and i32 %880, 8
  %882 = zext i32 %881 to i64
  store i64 %882, i64* %RCX.i554, align 8
  store i8 0, i8* %14, align 1
  %883 = tail call i32 @llvm.ctpop.i32(i32 %881)
  %884 = trunc i32 %883 to i8
  %885 = xor i8 %884, 1
  store i8 %885, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %886 = icmp eq i32 %881, 0
  %.lobit46 = lshr exact i32 %881, 3
  %887 = trunc i32 %.lobit46 to i8
  %888 = xor i8 %887, 1
  store i8 %888, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v56 = select i1 %886, i64 152, i64 18
  %889 = add i64 %873, %.v56
  store i64 %889, i64* %3, align 8
  br i1 %886, label %block_.L_4401c0, label %block_44013a

block_44013a:                                     ; preds = %block_440128
  %890 = add i64 %889, 4
  store i64 %890, i64* %3, align 8
  %891 = load i64, i64* %876, align 8
  %892 = add i64 %891, 196
  store i64 %892, i64* %RAX.i556, align 8
  %893 = icmp ugt i64 %891, -197
  %894 = zext i1 %893 to i8
  store i8 %894, i8* %14, align 1
  %895 = trunc i64 %892 to i32
  %896 = and i32 %895, 255
  %897 = tail call i32 @llvm.ctpop.i32(i32 %896)
  %898 = trunc i32 %897 to i8
  %899 = and i8 %898, 1
  %900 = xor i8 %899, 1
  store i8 %900, i8* %21, align 1
  %901 = xor i64 %892, %891
  %902 = lshr i64 %901, 4
  %903 = trunc i64 %902 to i8
  %904 = and i8 %903, 1
  store i8 %904, i8* %26, align 1
  %905 = icmp eq i64 %892, 0
  %906 = zext i1 %905 to i8
  store i8 %906, i8* %29, align 1
  %907 = lshr i64 %892, 63
  %908 = trunc i64 %907 to i8
  store i8 %908, i8* %32, align 1
  %909 = lshr i64 %891, 63
  %910 = xor i64 %907, %909
  %911 = add nuw nsw i64 %910, %907
  %912 = icmp eq i64 %911, 2
  %913 = zext i1 %912 to i8
  store i8 %913, i8* %38, align 1
  store i64 %892, i64* %RDI.i119, align 8
  %914 = add i64 %889, -257242
  %915 = add i64 %889, 18
  %916 = load i64, i64* %6, align 8
  %917 = add i64 %916, -8
  %918 = inttoptr i64 %917 to i64*
  store i64 %915, i64* %918, align 8
  store i64 %917, i64* %6, align 8
  store i64 %914, i64* %3, align 8
  %919 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %148)
  %920 = load i32, i32* %EAX.i529, align 4
  %921 = zext i32 %920 to i64
  %922 = load i64, i64* %3, align 8
  store i64 %921, i64* %RCX.i554, align 8
  %923 = load i64, i64* %RBP.i, align 8
  %924 = add i64 %923, -32
  %925 = add i64 %922, 5
  store i64 %925, i64* %3, align 8
  %926 = inttoptr i64 %924 to i32*
  store i32 %920, i32* %926, align 4
  %927 = load i64, i64* %RBP.i, align 8
  %928 = add i64 %927, -32
  %929 = load i64, i64* %3, align 8
  %930 = add i64 %929, 4
  store i64 %930, i64* %3, align 8
  %931 = inttoptr i64 %928 to i32*
  %932 = load i32, i32* %931, align 4
  %933 = add i32 %932, -126
  %934 = icmp ult i32 %932, 126
  %935 = zext i1 %934 to i8
  store i8 %935, i8* %14, align 1
  %936 = and i32 %933, 255
  %937 = tail call i32 @llvm.ctpop.i32(i32 %936)
  %938 = trunc i32 %937 to i8
  %939 = and i8 %938, 1
  %940 = xor i8 %939, 1
  store i8 %940, i8* %21, align 1
  %941 = xor i32 %932, 16
  %942 = xor i32 %941, %933
  %943 = lshr i32 %942, 4
  %944 = trunc i32 %943 to i8
  %945 = and i8 %944, 1
  store i8 %945, i8* %26, align 1
  %946 = icmp eq i32 %933, 0
  %947 = zext i1 %946 to i8
  store i8 %947, i8* %29, align 1
  %948 = lshr i32 %933, 31
  %949 = trunc i32 %948 to i8
  store i8 %949, i8* %32, align 1
  %950 = lshr i32 %932, 31
  %951 = xor i32 %948, %950
  %952 = add nuw nsw i32 %951, %950
  %953 = icmp eq i32 %952, 2
  %954 = zext i1 %953 to i8
  store i8 %954, i8* %38, align 1
  %955 = icmp ne i8 %949, 0
  %956 = xor i1 %955, %953
  %.v57 = select i1 %956, i64 10, i64 106
  %957 = add i64 %929, %.v57
  store i64 %957, i64* %3, align 8
  br i1 %956, label %block_44015b, label %block_.L_4401bb

block_44015b:                                     ; preds = %block_44013a
  store i64 ptrtoint (%G__0x45a2e6_type* @G__0x45a2e6 to i64), i64* %RSI.i234, align 8
  store i64 127, i64* %RAX.i556, align 8
  %958 = add i64 %927, -16
  %959 = add i64 %957, 19
  store i64 %959, i64* %3, align 8
  %960 = inttoptr i64 %958 to i64*
  %961 = load i64, i64* %960, align 8
  %962 = add i64 %961, 196
  store i64 %962, i64* %RCX.i554, align 8
  %963 = icmp ugt i64 %961, -197
  %964 = zext i1 %963 to i8
  store i8 %964, i8* %14, align 1
  %965 = trunc i64 %962 to i32
  %966 = and i32 %965, 255
  %967 = tail call i32 @llvm.ctpop.i32(i32 %966)
  %968 = trunc i32 %967 to i8
  %969 = and i8 %968, 1
  %970 = xor i8 %969, 1
  store i8 %970, i8* %21, align 1
  %971 = xor i64 %962, %961
  %972 = lshr i64 %971, 4
  %973 = trunc i64 %972 to i8
  %974 = and i8 %973, 1
  store i8 %974, i8* %26, align 1
  %975 = icmp eq i64 %962, 0
  %976 = zext i1 %975 to i8
  store i8 %976, i8* %29, align 1
  %977 = lshr i64 %962, 63
  %978 = trunc i64 %977 to i8
  store i8 %978, i8* %32, align 1
  %979 = lshr i64 %961, 63
  %980 = xor i64 %977, %979
  %981 = add nuw nsw i64 %980, %977
  %982 = icmp eq i64 %981, 2
  %983 = zext i1 %982 to i8
  store i8 %983, i8* %38, align 1
  %984 = add i64 %957, 29
  store i64 %984, i64* %3, align 8
  %985 = load i32, i32* %931, align 4
  %986 = sub i32 127, %985
  %987 = zext i32 %986 to i64
  store i64 %987, i64* %RAX.i556, align 8
  %988 = icmp ugt i32 %985, 127
  %989 = zext i1 %988 to i8
  store i8 %989, i8* %14, align 1
  %990 = and i32 %986, 255
  %991 = tail call i32 @llvm.ctpop.i32(i32 %990)
  %992 = trunc i32 %991 to i8
  %993 = and i8 %992, 1
  %994 = xor i8 %993, 1
  store i8 %994, i8* %21, align 1
  %995 = xor i32 %985, 16
  %996 = xor i32 %995, %986
  %997 = lshr i32 %996, 4
  %998 = trunc i32 %997 to i8
  %999 = and i8 %998, 1
  store i8 %999, i8* %26, align 1
  %1000 = icmp eq i32 %986, 0
  %1001 = zext i1 %1000 to i8
  store i8 %1001, i8* %29, align 1
  %1002 = lshr i32 %986, 31
  %1003 = trunc i32 %1002 to i8
  store i8 %1003, i8* %32, align 1
  %1004 = lshr i32 %985, 31
  %1005 = add nuw nsw i32 %1002, %1004
  %1006 = icmp eq i32 %1005, 2
  %1007 = zext i1 %1006 to i8
  store i8 %1007, i8* %38, align 1
  %1008 = sext i32 %986 to i64
  store i64 %1008, i64* %RDX.i514, align 8
  store i64 %962, i64* %RDI.i119, align 8
  %1009 = add i64 %957, -257115
  %1010 = add i64 %957, 40
  %1011 = load i64, i64* %6, align 8
  %1012 = add i64 %1011, -8
  %1013 = inttoptr i64 %1012 to i64*
  store i64 %1010, i64* %1013, align 8
  store i64 %1012, i64* %6, align 8
  store i64 %1009, i64* %3, align 8
  %call2_44017e = tail call %struct.Memory* @sub_401500.strncat_plt(%struct.State* nonnull %0, i64 %1009, %struct.Memory* %919)
  %1014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i204 = bitcast %union.anon* %1014 to i32*
  %1015 = getelementptr inbounds %union.anon, %union.anon* %1014, i64 0, i32 0
  %1016 = load i64, i64* %3, align 8
  store i64 127, i64* %1015, align 8
  %1017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %1018 = load i64, i64* %RBP.i, align 8
  %1019 = add i64 %1018, -32
  %1020 = add i64 %1016, 10
  store i64 %1020, i64* %3, align 8
  %1021 = inttoptr i64 %1019 to i32*
  %1022 = load i32, i32* %1021, align 4
  %1023 = add i32 %1022, 1
  %1024 = zext i32 %1023 to i64
  store i64 %1024, i64* %1017, align 8
  %1025 = icmp eq i32 %1022, -1
  %1026 = icmp eq i32 %1023, 0
  %1027 = or i1 %1025, %1026
  %1028 = zext i1 %1027 to i8
  store i8 %1028, i8* %14, align 1
  %1029 = and i32 %1023, 255
  %1030 = tail call i32 @llvm.ctpop.i32(i32 %1029)
  %1031 = trunc i32 %1030 to i8
  %1032 = and i8 %1031, 1
  %1033 = xor i8 %1032, 1
  store i8 %1033, i8* %21, align 1
  %1034 = xor i32 %1023, %1022
  %1035 = lshr i32 %1034, 4
  %1036 = trunc i32 %1035 to i8
  %1037 = and i8 %1036, 1
  store i8 %1037, i8* %26, align 1
  %1038 = zext i1 %1026 to i8
  store i8 %1038, i8* %29, align 1
  %1039 = lshr i32 %1023, 31
  %1040 = trunc i32 %1039 to i8
  store i8 %1040, i8* %32, align 1
  %1041 = lshr i32 %1022, 31
  %1042 = xor i32 %1039, %1041
  %1043 = add nuw nsw i32 %1042, %1039
  %1044 = icmp eq i32 %1043, 2
  %1045 = zext i1 %1044 to i8
  store i8 %1045, i8* %38, align 1
  %1046 = add i64 %1016, 18
  store i64 %1046, i64* %3, align 8
  store i32 %1023, i32* %1021, align 4
  %1047 = load i64, i64* %RBP.i, align 8
  %1048 = add i64 %1047, -16
  %1049 = load i64, i64* %3, align 8
  %1050 = add i64 %1049, 4
  store i64 %1050, i64* %3, align 8
  %1051 = inttoptr i64 %1048 to i64*
  %1052 = load i64, i64* %1051, align 8
  %1053 = add i64 %1052, 196
  store i64 %1053, i64* %RCX.i554, align 8
  %1054 = icmp ugt i64 %1052, -197
  %1055 = zext i1 %1054 to i8
  store i8 %1055, i8* %14, align 1
  %1056 = trunc i64 %1053 to i32
  %1057 = and i32 %1056, 255
  %1058 = tail call i32 @llvm.ctpop.i32(i32 %1057)
  %1059 = trunc i32 %1058 to i8
  %1060 = and i8 %1059, 1
  %1061 = xor i8 %1060, 1
  store i8 %1061, i8* %21, align 1
  %1062 = xor i64 %1053, %1052
  %1063 = lshr i64 %1062, 4
  %1064 = trunc i64 %1063 to i8
  %1065 = and i8 %1064, 1
  store i8 %1065, i8* %26, align 1
  %1066 = icmp eq i64 %1053, 0
  %1067 = zext i1 %1066 to i8
  store i8 %1067, i8* %29, align 1
  %1068 = lshr i64 %1053, 63
  %1069 = trunc i64 %1068 to i8
  store i8 %1069, i8* %32, align 1
  %1070 = lshr i64 %1052, 63
  %1071 = xor i64 %1068, %1070
  %1072 = add nuw nsw i64 %1071, %1068
  %1073 = icmp eq i64 %1072, 2
  %1074 = zext i1 %1073 to i8
  store i8 %1074, i8* %38, align 1
  %1075 = add i64 %1047, -24
  %1076 = add i64 %1049, 15
  store i64 %1076, i64* %3, align 8
  %1077 = inttoptr i64 %1075 to i64*
  %1078 = load i64, i64* %1077, align 8
  store i64 %1078, i64* %RSI.i234, align 8
  %1079 = load i32, i32* %R8D.i204, align 4
  %1080 = add i64 %1047, -32
  %1081 = add i64 %1049, 19
  store i64 %1081, i64* %3, align 8
  %1082 = inttoptr i64 %1080 to i32*
  %1083 = load i32, i32* %1082, align 4
  %1084 = sub i32 %1079, %1083
  %1085 = zext i32 %1084 to i64
  store i64 %1085, i64* %1015, align 8
  %1086 = icmp ult i32 %1079, %1083
  %1087 = zext i1 %1086 to i8
  store i8 %1087, i8* %14, align 1
  %1088 = and i32 %1084, 255
  %1089 = tail call i32 @llvm.ctpop.i32(i32 %1088)
  %1090 = trunc i32 %1089 to i8
  %1091 = and i8 %1090, 1
  %1092 = xor i8 %1091, 1
  store i8 %1092, i8* %21, align 1
  %1093 = xor i32 %1083, %1079
  %1094 = xor i32 %1093, %1084
  %1095 = lshr i32 %1094, 4
  %1096 = trunc i32 %1095 to i8
  %1097 = and i8 %1096, 1
  store i8 %1097, i8* %26, align 1
  %1098 = icmp eq i32 %1084, 0
  %1099 = zext i1 %1098 to i8
  store i8 %1099, i8* %29, align 1
  %1100 = lshr i32 %1084, 31
  %1101 = trunc i32 %1100 to i8
  store i8 %1101, i8* %32, align 1
  %1102 = lshr i32 %1079, 31
  %1103 = lshr i32 %1083, 31
  %1104 = xor i32 %1103, %1102
  %1105 = xor i32 %1100, %1102
  %1106 = add nuw nsw i32 %1105, %1104
  %1107 = icmp eq i32 %1106, 2
  %1108 = zext i1 %1107 to i8
  store i8 %1108, i8* %38, align 1
  %1109 = sext i32 %1084 to i64
  store i64 %1109, i64* %RDX.i514, align 8
  store i64 %1053, i64* %RDI.i119, align 8
  %1110 = add i64 %1047, -104
  %1111 = load i64, i64* %RAX.i556, align 8
  %1112 = add i64 %1049, 29
  store i64 %1112, i64* %3, align 8
  %1113 = inttoptr i64 %1110 to i64*
  store i64 %1111, i64* %1113, align 8
  %1114 = load i64, i64* %3, align 8
  %1115 = add i64 %1114, -257202
  %1116 = add i64 %1114, 5
  %1117 = load i64, i64* %6, align 8
  %1118 = add i64 %1117, -8
  %1119 = inttoptr i64 %1118 to i64*
  store i64 %1116, i64* %1119, align 8
  store i64 %1118, i64* %6, align 8
  store i64 %1115, i64* %3, align 8
  %call2_4401b2 = tail call %struct.Memory* @sub_401500.strncat_plt(%struct.State* nonnull %0, i64 %1115, %struct.Memory* %call2_44017e)
  %1120 = load i64, i64* %RBP.i, align 8
  %1121 = add i64 %1120, -112
  %1122 = load i64, i64* %RAX.i556, align 8
  %1123 = load i64, i64* %3, align 8
  %1124 = add i64 %1123, 4
  store i64 %1124, i64* %3, align 8
  %1125 = inttoptr i64 %1121 to i64*
  store i64 %1122, i64* %1125, align 8
  %.pre36 = load i64, i64* %3, align 8
  br label %block_.L_4401bb

block_.L_4401bb:                                  ; preds = %block_44013a, %block_44015b
  %1126 = phi i64 [ %957, %block_44013a ], [ %.pre36, %block_44015b ]
  %MEMORY.6 = phi %struct.Memory* [ %919, %block_44013a ], [ %call2_4401b2, %block_44015b ]
  %1127 = add i64 %1126, 39
  store i64 %1127, i64* %3, align 8
  br label %block_.L_4401e2

block_.L_4401c0:                                  ; preds = %block_440128
  store i64 127, i64* %RAX.i556, align 8
  store i64 127, i64* %RDX.i514, align 8
  %1128 = add i64 %889, 11
  store i64 %1128, i64* %3, align 8
  %1129 = load i64, i64* %876, align 8
  %1130 = add i64 %1129, 196
  store i64 %1130, i64* %RCX.i554, align 8
  %1131 = icmp ugt i64 %1129, -197
  %1132 = zext i1 %1131 to i8
  store i8 %1132, i8* %14, align 1
  %1133 = trunc i64 %1130 to i32
  %1134 = and i32 %1133, 255
  %1135 = tail call i32 @llvm.ctpop.i32(i32 %1134)
  %1136 = trunc i32 %1135 to i8
  %1137 = and i8 %1136, 1
  %1138 = xor i8 %1137, 1
  store i8 %1138, i8* %21, align 1
  %1139 = xor i64 %1130, %1129
  %1140 = lshr i64 %1139, 4
  %1141 = trunc i64 %1140 to i8
  %1142 = and i8 %1141, 1
  store i8 %1142, i8* %26, align 1
  %1143 = icmp eq i64 %1130, 0
  %1144 = zext i1 %1143 to i8
  store i8 %1144, i8* %29, align 1
  %1145 = lshr i64 %1130, 63
  %1146 = trunc i64 %1145 to i8
  store i8 %1146, i8* %32, align 1
  %1147 = lshr i64 %1129, 63
  %1148 = xor i64 %1145, %1147
  %1149 = add nuw nsw i64 %1148, %1145
  %1150 = icmp eq i64 %1149, 2
  %1151 = zext i1 %1150 to i8
  store i8 %1151, i8* %38, align 1
  %1152 = add i64 %889, 22
  store i64 %1152, i64* %3, align 8
  %1153 = load i64, i64* %844, align 8
  store i64 %1153, i64* %RSI.i234, align 8
  store i64 %1130, i64* %RDI.i119, align 8
  %1154 = add i64 %889, -257552
  %1155 = add i64 %889, 30
  %1156 = load i64, i64* %6, align 8
  %1157 = add i64 %1156, -8
  %1158 = inttoptr i64 %1157 to i64*
  store i64 %1155, i64* %1158, align 8
  store i64 %1157, i64* %6, align 8
  store i64 %1154, i64* %3, align 8
  %call2_4401d9 = tail call %struct.Memory* @sub_4013b0.strncpy_plt(%struct.State* nonnull %0, i64 %1154, %struct.Memory* %148)
  %1159 = load i64, i64* %RBP.i, align 8
  %1160 = add i64 %1159, -120
  %1161 = load i64, i64* %RAX.i556, align 8
  %1162 = load i64, i64* %3, align 8
  %1163 = add i64 %1162, 4
  store i64 %1163, i64* %3, align 8
  %1164 = inttoptr i64 %1160 to i64*
  store i64 %1161, i64* %1164, align 8
  %.pre37 = load i64, i64* %3, align 8
  br label %block_.L_4401e2

block_.L_4401e2:                                  ; preds = %block_.L_4401c0, %block_.L_4401bb
  %1165 = phi i64 [ %.pre37, %block_.L_4401c0 ], [ %1127, %block_.L_4401bb ]
  %MEMORY.7 = phi %struct.Memory* [ %call2_4401d9, %block_.L_4401c0 ], [ %MEMORY.6, %block_.L_4401bb ]
  %1166 = load i64, i64* %RBP.i, align 8
  %1167 = add i64 %1166, -16
  %1168 = add i64 %1165, 4
  store i64 %1168, i64* %3, align 8
  %1169 = inttoptr i64 %1167 to i64*
  %1170 = load i64, i64* %1169, align 8
  store i64 %1170, i64* %RAX.i556, align 8
  %1171 = add i64 %1170, 323
  %1172 = add i64 %1165, 11
  store i64 %1172, i64* %3, align 8
  %1173 = inttoptr i64 %1171 to i8*
  store i8 0, i8* %1173, align 1
  %1174 = load i64, i64* %RBP.i, align 8
  %1175 = add i64 %1174, -16
  %1176 = load i64, i64* %3, align 8
  %1177 = add i64 %1176, 4
  store i64 %1177, i64* %3, align 8
  %1178 = inttoptr i64 %1175 to i64*
  %1179 = load i64, i64* %1178, align 8
  store i64 %1179, i64* %RAX.i556, align 8
  %1180 = add i64 %1176, 6
  store i64 %1180, i64* %3, align 8
  %1181 = inttoptr i64 %1179 to i32*
  %1182 = load i32, i32* %1181, align 4
  %1183 = or i32 %1182, 8
  %1184 = zext i32 %1183 to i64
  store i64 %1184, i64* %RCX.i554, align 8
  store i8 0, i8* %14, align 1
  %1185 = and i32 %1183, 255
  %1186 = tail call i32 @llvm.ctpop.i32(i32 %1185)
  %1187 = trunc i32 %1186 to i8
  %1188 = and i8 %1187, 1
  %1189 = xor i8 %1188, 1
  store i8 %1189, i8* %21, align 1
  store i8 0, i8* %29, align 1
  %1190 = lshr i32 %1182, 31
  %1191 = trunc i32 %1190 to i8
  store i8 %1191, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1192 = add i64 %1176, 11
  store i64 %1192, i64* %3, align 8
  store i32 %1183, i32* %1181, align 4
  %.pre38 = load i64, i64* %3, align 8
  br label %block_.L_4401f8

block_.L_4401f8:                                  ; preds = %block_.L_4401e2, %block_.L_440118
  %1193 = phi i64 [ %873, %block_.L_440118 ], [ %.pre38, %block_.L_4401e2 ]
  %MEMORY.8 = phi %struct.Memory* [ %148, %block_.L_440118 ], [ %MEMORY.7, %block_.L_4401e2 ]
  %1194 = add i64 %1193, 307
  store i64 %1194, i64* %3, align 8
  br label %block_.L_44032b

block_.L_4401fd:                                  ; preds = %block_43ffee
  %1195 = add i64 %457, -24
  %1196 = add i64 %456, 4
  store i64 %1196, i64* %3, align 8
  %1197 = inttoptr i64 %1195 to i64*
  %1198 = load i64, i64* %1197, align 8
  store i64 %1198, i64* %RDI.i119, align 8
  %1199 = add i64 %456, 69747
  %1200 = add i64 %456, 9
  %1201 = load i64, i64* %6, align 8
  %1202 = add i64 %1201, -8
  %1203 = inttoptr i64 %1202 to i64*
  store i64 %1200, i64* %1203, align 8
  store i64 %1202, i64* %6, align 8
  store i64 %1199, i64* %3, align 8
  %call2_440201 = tail call %struct.Memory* @sub_451270.IsInt(%struct.State* nonnull %0, i64 %1199, %struct.Memory* %148)
  %1204 = load i32, i32* %EAX.i529, align 4
  %1205 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1206 = and i32 %1204, 255
  %1207 = tail call i32 @llvm.ctpop.i32(i32 %1206)
  %1208 = trunc i32 %1207 to i8
  %1209 = and i8 %1208, 1
  %1210 = xor i8 %1209, 1
  store i8 %1210, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1211 = icmp eq i32 %1204, 0
  %1212 = zext i1 %1211 to i8
  store i8 %1212, i8* %29, align 1
  %1213 = lshr i32 %1204, 31
  %1214 = trunc i32 %1213 to i8
  store i8 %1214, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v53 = select i1 %1211, i64 9, i64 32
  %1215 = add i64 %1205, %.v53
  store i64 %1215, i64* %3, align 8
  br i1 %1211, label %block_44020f, label %block_.L_440226

block_44020f:                                     ; preds = %block_.L_4401fd
  store i32 5, i32* bitcast (%G_0x676f80_type* @G_0x676f80 to i32*), align 8
  %1216 = load i64, i64* %RBP.i, align 8
  %1217 = add i64 %1216, -4
  %1218 = add i64 %1215, 18
  store i64 %1218, i64* %3, align 8
  %1219 = inttoptr i64 %1217 to i32*
  store i32 0, i32* %1219, align 4
  %1220 = load i64, i64* %3, align 8
  %1221 = add i64 %1220, 273
  store i64 %1221, i64* %3, align 8
  br label %block_.L_440332

block_.L_440226:                                  ; preds = %block_.L_4401fd
  %1222 = load i64, i64* %RBP.i, align 8
  %1223 = add i64 %1222, -24
  %1224 = add i64 %1215, 4
  store i64 %1224, i64* %3, align 8
  %1225 = inttoptr i64 %1223 to i64*
  %1226 = load i64, i64* %1225, align 8
  store i64 %1226, i64* %RDI.i119, align 8
  %1227 = add i64 %1215, -256902
  %1228 = add i64 %1215, 9
  %1229 = load i64, i64* %6, align 8
  %1230 = add i64 %1229, -8
  %1231 = inttoptr i64 %1230 to i64*
  store i64 %1228, i64* %1231, align 8
  store i64 %1230, i64* %6, align 8
  store i64 %1227, i64* %3, align 8
  %1232 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @atoi to i64), %struct.Memory* %call2_440201)
  %1233 = load i64, i64* %RBP.i, align 8
  %1234 = add i64 %1233, -16
  %1235 = load i64, i64* %3, align 8
  %1236 = add i64 %1235, 4
  store i64 %1236, i64* %3, align 8
  %1237 = inttoptr i64 %1234 to i64*
  %1238 = load i64, i64* %1237, align 8
  store i64 %1238, i64* %RDI.i119, align 8
  %1239 = add i64 %1238, 328
  %1240 = load i32, i32* %EAX.i529, align 4
  %1241 = add i64 %1235, 10
  store i64 %1241, i64* %3, align 8
  %1242 = inttoptr i64 %1239 to i32*
  store i32 %1240, i32* %1242, align 4
  %1243 = load i64, i64* %RBP.i, align 8
  %1244 = add i64 %1243, -16
  %1245 = load i64, i64* %3, align 8
  %1246 = add i64 %1245, 4
  store i64 %1246, i64* %3, align 8
  %1247 = inttoptr i64 %1244 to i64*
  %1248 = load i64, i64* %1247, align 8
  store i64 %1248, i64* %RDI.i119, align 8
  %1249 = add i64 %1248, 328
  %1250 = add i64 %1245, 11
  store i64 %1250, i64* %3, align 8
  %1251 = inttoptr i64 %1249 to i32*
  %1252 = load i32, i32* %1251, align 4
  store i8 0, i8* %14, align 1
  %1253 = and i32 %1252, 255
  %1254 = tail call i32 @llvm.ctpop.i32(i32 %1253)
  %1255 = trunc i32 %1254 to i8
  %1256 = and i8 %1255, 1
  %1257 = xor i8 %1256, 1
  store i8 %1257, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1258 = icmp eq i32 %1252, 0
  %1259 = zext i1 %1258 to i8
  store i8 %1259, i8* %29, align 1
  %1260 = lshr i32 %1252, 31
  %1261 = trunc i32 %1260 to i8
  store i8 %1261, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v54 = select i1 %1258, i64 28, i64 17
  %1262 = add i64 %1245, %.v54
  store i64 %1262, i64* %3, align 8
  br i1 %1258, label %block_.L_440255, label %block_44024a

block_44024a:                                     ; preds = %block_.L_440226
  %1263 = add i64 %1262, 4
  store i64 %1263, i64* %3, align 8
  %1264 = load i64, i64* %1247, align 8
  store i64 %1264, i64* %RAX.i556, align 8
  %1265 = add i64 %1262, 6
  store i64 %1265, i64* %3, align 8
  %1266 = inttoptr i64 %1264 to i32*
  %1267 = load i32, i32* %1266, align 4
  %1268 = or i32 %1267, 16
  %1269 = zext i32 %1268 to i64
  store i64 %1269, i64* %RCX.i554, align 8
  store i8 0, i8* %14, align 1
  %1270 = and i32 %1268, 255
  %1271 = tail call i32 @llvm.ctpop.i32(i32 %1270)
  %1272 = trunc i32 %1271 to i8
  %1273 = and i8 %1272, 1
  %1274 = xor i8 %1273, 1
  store i8 %1274, i8* %21, align 1
  store i8 0, i8* %29, align 1
  %1275 = lshr i32 %1267, 31
  %1276 = trunc i32 %1275 to i8
  store i8 %1276, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1277 = add i64 %1262, 11
  store i64 %1277, i64* %3, align 8
  store i32 %1268, i32* %1266, align 4
  %.pre35 = load i64, i64* %3, align 8
  br label %block_.L_440255

block_.L_440255:                                  ; preds = %block_44024a, %block_.L_440226
  %1278 = phi i64 [ %.pre35, %block_44024a ], [ %1262, %block_.L_440226 ]
  %1279 = add i64 %1278, 214
  store i64 %1279, i64* %3, align 8
  br label %block_.L_44032b

block_.L_44025a:                                  ; preds = %block_440002
  %1280 = add i64 %491, -24
  %1281 = add i64 %490, 4
  store i64 %1281, i64* %3, align 8
  %1282 = inttoptr i64 %1280 to i64*
  %1283 = load i64, i64* %1282, align 8
  store i64 %1283, i64* %RDI.i119, align 8
  %1284 = add i64 %490, 69654
  %1285 = add i64 %490, 9
  %1286 = load i64, i64* %6, align 8
  %1287 = add i64 %1286, -8
  %1288 = inttoptr i64 %1287 to i64*
  store i64 %1285, i64* %1288, align 8
  store i64 %1287, i64* %6, align 8
  store i64 %1284, i64* %3, align 8
  %call2_44025e = tail call %struct.Memory* @sub_451270.IsInt(%struct.State* nonnull %0, i64 %1284, %struct.Memory* %148)
  %1289 = load i32, i32* %EAX.i529, align 4
  %1290 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1291 = and i32 %1289, 255
  %1292 = tail call i32 @llvm.ctpop.i32(i32 %1291)
  %1293 = trunc i32 %1292 to i8
  %1294 = and i8 %1293, 1
  %1295 = xor i8 %1294, 1
  store i8 %1295, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1296 = icmp eq i32 %1289, 0
  %1297 = zext i1 %1296 to i8
  store i8 %1297, i8* %29, align 1
  %1298 = lshr i32 %1289, 31
  %1299 = trunc i32 %1298 to i8
  store i8 %1299, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v51 = select i1 %1296, i64 9, i64 32
  %1300 = add i64 %1290, %.v51
  store i64 %1300, i64* %3, align 8
  br i1 %1296, label %block_44026c, label %block_.L_440283

block_44026c:                                     ; preds = %block_.L_44025a
  store i32 5, i32* bitcast (%G_0x676f80_type* @G_0x676f80 to i32*), align 8
  %1301 = load i64, i64* %RBP.i, align 8
  %1302 = add i64 %1301, -4
  %1303 = add i64 %1300, 18
  store i64 %1303, i64* %3, align 8
  %1304 = inttoptr i64 %1302 to i32*
  store i32 0, i32* %1304, align 4
  %1305 = load i64, i64* %3, align 8
  %1306 = add i64 %1305, 180
  store i64 %1306, i64* %3, align 8
  br label %block_.L_440332

block_.L_440283:                                  ; preds = %block_.L_44025a
  %1307 = load i64, i64* %RBP.i, align 8
  %1308 = add i64 %1307, -24
  %1309 = add i64 %1300, 4
  store i64 %1309, i64* %3, align 8
  %1310 = inttoptr i64 %1308 to i64*
  %1311 = load i64, i64* %1310, align 8
  store i64 %1311, i64* %RDI.i119, align 8
  %1312 = add i64 %1300, -256995
  %1313 = add i64 %1300, 9
  %1314 = load i64, i64* %6, align 8
  %1315 = add i64 %1314, -8
  %1316 = inttoptr i64 %1315 to i64*
  store i64 %1313, i64* %1316, align 8
  store i64 %1315, i64* %6, align 8
  store i64 %1312, i64* %3, align 8
  %1317 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @atoi to i64), %struct.Memory* %call2_44025e)
  %1318 = load i64, i64* %RBP.i, align 8
  %1319 = add i64 %1318, -16
  %1320 = load i64, i64* %3, align 8
  %1321 = add i64 %1320, 4
  store i64 %1321, i64* %3, align 8
  %1322 = inttoptr i64 %1319 to i64*
  %1323 = load i64, i64* %1322, align 8
  store i64 %1323, i64* %RDI.i119, align 8
  %1324 = add i64 %1323, 332
  %1325 = load i32, i32* %EAX.i529, align 4
  %1326 = add i64 %1320, 10
  store i64 %1326, i64* %3, align 8
  %1327 = inttoptr i64 %1324 to i32*
  store i32 %1325, i32* %1327, align 4
  %1328 = load i64, i64* %RBP.i, align 8
  %1329 = add i64 %1328, -16
  %1330 = load i64, i64* %3, align 8
  %1331 = add i64 %1330, 4
  store i64 %1331, i64* %3, align 8
  %1332 = inttoptr i64 %1329 to i64*
  %1333 = load i64, i64* %1332, align 8
  store i64 %1333, i64* %RDI.i119, align 8
  %1334 = add i64 %1333, 332
  %1335 = add i64 %1330, 11
  store i64 %1335, i64* %3, align 8
  %1336 = inttoptr i64 %1334 to i32*
  %1337 = load i32, i32* %1336, align 4
  store i8 0, i8* %14, align 1
  %1338 = and i32 %1337, 255
  %1339 = tail call i32 @llvm.ctpop.i32(i32 %1338)
  %1340 = trunc i32 %1339 to i8
  %1341 = and i8 %1340, 1
  %1342 = xor i8 %1341, 1
  store i8 %1342, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1343 = icmp eq i32 %1337, 0
  %1344 = zext i1 %1343 to i8
  store i8 %1344, i8* %29, align 1
  %1345 = lshr i32 %1337, 31
  %1346 = trunc i32 %1345 to i8
  store i8 %1346, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v52 = select i1 %1343, i64 28, i64 17
  %1347 = add i64 %1330, %.v52
  store i64 %1347, i64* %3, align 8
  br i1 %1343, label %block_.L_4402b2, label %block_4402a7

block_4402a7:                                     ; preds = %block_.L_440283
  %1348 = add i64 %1347, 4
  store i64 %1348, i64* %3, align 8
  %1349 = load i64, i64* %1332, align 8
  store i64 %1349, i64* %RAX.i556, align 8
  %1350 = add i64 %1347, 6
  store i64 %1350, i64* %3, align 8
  %1351 = inttoptr i64 %1349 to i32*
  %1352 = load i32, i32* %1351, align 4
  %1353 = or i32 %1352, 32
  %1354 = zext i32 %1353 to i64
  store i64 %1354, i64* %RCX.i554, align 8
  store i8 0, i8* %14, align 1
  %1355 = and i32 %1353, 255
  %1356 = tail call i32 @llvm.ctpop.i32(i32 %1355)
  %1357 = trunc i32 %1356 to i8
  %1358 = and i8 %1357, 1
  %1359 = xor i8 %1358, 1
  store i8 %1359, i8* %21, align 1
  store i8 0, i8* %29, align 1
  %1360 = lshr i32 %1352, 31
  %1361 = trunc i32 %1360 to i8
  store i8 %1361, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1362 = add i64 %1347, 11
  store i64 %1362, i64* %3, align 8
  store i32 %1353, i32* %1351, align 4
  %.pre34 = load i64, i64* %3, align 8
  br label %block_.L_4402b2

block_.L_4402b2:                                  ; preds = %block_4402a7, %block_.L_440283
  %1363 = phi i64 [ %.pre34, %block_4402a7 ], [ %1347, %block_.L_440283 ]
  %1364 = add i64 %1363, 121
  store i64 %1364, i64* %3, align 8
  br label %block_.L_44032b

block_.L_4402b7:                                  ; preds = %block_440016
  %1365 = load i64, i64* %RBP.i, align 8
  %1366 = add i64 %1365, -24
  %1367 = add i64 %524, 4
  store i64 %1367, i64* %3, align 8
  %1368 = inttoptr i64 %1366 to i64*
  %1369 = load i64, i64* %1368, align 8
  store i64 %1369, i64* %RDI.i119, align 8
  %1370 = add i64 %524, 69561
  %1371 = add i64 %524, 9
  %1372 = load i64, i64* %6, align 8
  %1373 = add i64 %1372, -8
  %1374 = inttoptr i64 %1373 to i64*
  store i64 %1371, i64* %1374, align 8
  store i64 %1373, i64* %6, align 8
  store i64 %1370, i64* %3, align 8
  %call2_4402bb = tail call %struct.Memory* @sub_451270.IsInt(%struct.State* nonnull %0, i64 %1370, %struct.Memory* %148)
  %1375 = load i32, i32* %EAX.i529, align 4
  %1376 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1377 = and i32 %1375, 255
  %1378 = tail call i32 @llvm.ctpop.i32(i32 %1377)
  %1379 = trunc i32 %1378 to i8
  %1380 = and i8 %1379, 1
  %1381 = xor i8 %1380, 1
  store i8 %1381, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1382 = icmp eq i32 %1375, 0
  %1383 = zext i1 %1382 to i8
  store i8 %1383, i8* %29, align 1
  %1384 = lshr i32 %1375, 31
  %1385 = trunc i32 %1384 to i8
  store i8 %1385, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v49 = select i1 %1382, i64 9, i64 32
  %1386 = add i64 %1376, %.v49
  store i64 %1386, i64* %3, align 8
  br i1 %1382, label %block_4402c9, label %block_.L_4402e0

block_4402c9:                                     ; preds = %block_.L_4402b7
  store i32 5, i32* bitcast (%G_0x676f80_type* @G_0x676f80 to i32*), align 8
  %1387 = load i64, i64* %RBP.i, align 8
  %1388 = add i64 %1387, -4
  %1389 = add i64 %1386, 18
  store i64 %1389, i64* %3, align 8
  %1390 = inttoptr i64 %1388 to i32*
  store i32 0, i32* %1390, align 4
  %1391 = load i64, i64* %3, align 8
  %1392 = add i64 %1391, 87
  store i64 %1392, i64* %3, align 8
  br label %block_.L_440332

block_.L_4402e0:                                  ; preds = %block_.L_4402b7
  %1393 = load i64, i64* %RBP.i, align 8
  %1394 = add i64 %1393, -24
  %1395 = add i64 %1386, 4
  store i64 %1395, i64* %3, align 8
  %1396 = inttoptr i64 %1394 to i64*
  %1397 = load i64, i64* %1396, align 8
  store i64 %1397, i64* %RDI.i119, align 8
  %1398 = add i64 %1386, -257088
  %1399 = add i64 %1386, 9
  %1400 = load i64, i64* %6, align 8
  %1401 = add i64 %1400, -8
  %1402 = inttoptr i64 %1401 to i64*
  store i64 %1399, i64* %1402, align 8
  store i64 %1401, i64* %6, align 8
  store i64 %1398, i64* %3, align 8
  %1403 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @atoi to i64), %struct.Memory* %call2_4402bb)
  %1404 = load i64, i64* %RBP.i, align 8
  %1405 = add i64 %1404, -16
  %1406 = load i64, i64* %3, align 8
  %1407 = add i64 %1406, 4
  store i64 %1407, i64* %3, align 8
  %1408 = inttoptr i64 %1405 to i64*
  %1409 = load i64, i64* %1408, align 8
  store i64 %1409, i64* %RDI.i119, align 8
  %1410 = add i64 %1409, 336
  %1411 = load i32, i32* %EAX.i529, align 4
  %1412 = add i64 %1406, 10
  store i64 %1412, i64* %3, align 8
  %1413 = inttoptr i64 %1410 to i32*
  store i32 %1411, i32* %1413, align 4
  %1414 = load i64, i64* %RBP.i, align 8
  %1415 = add i64 %1414, -16
  %1416 = load i64, i64* %3, align 8
  %1417 = add i64 %1416, 4
  store i64 %1417, i64* %3, align 8
  %1418 = inttoptr i64 %1415 to i64*
  %1419 = load i64, i64* %1418, align 8
  store i64 %1419, i64* %RDI.i119, align 8
  %1420 = add i64 %1419, 336
  %1421 = add i64 %1416, 11
  store i64 %1421, i64* %3, align 8
  %1422 = inttoptr i64 %1420 to i32*
  %1423 = load i32, i32* %1422, align 4
  store i8 0, i8* %14, align 1
  %1424 = and i32 %1423, 255
  %1425 = tail call i32 @llvm.ctpop.i32(i32 %1424)
  %1426 = trunc i32 %1425 to i8
  %1427 = and i8 %1426, 1
  %1428 = xor i8 %1427, 1
  store i8 %1428, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1429 = icmp eq i32 %1423, 0
  %1430 = zext i1 %1429 to i8
  store i8 %1430, i8* %29, align 1
  %1431 = lshr i32 %1423, 31
  %1432 = trunc i32 %1431 to i8
  store i8 %1432, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v50 = select i1 %1429, i64 31, i64 17
  %1433 = add i64 %1416, %.v50
  store i64 %1433, i64* %3, align 8
  br i1 %1429, label %block_.L_440312, label %block_440304

block_440304:                                     ; preds = %block_.L_4402e0
  %1434 = add i64 %1433, 4
  store i64 %1434, i64* %3, align 8
  %1435 = load i64, i64* %1418, align 8
  store i64 %1435, i64* %RAX.i556, align 8
  %1436 = add i64 %1433, 6
  store i64 %1436, i64* %3, align 8
  %1437 = inttoptr i64 %1435 to i32*
  %1438 = load i32, i32* %1437, align 4
  %1439 = or i32 %1438, 256
  %1440 = zext i32 %1439 to i64
  store i64 %1440, i64* %RCX.i554, align 8
  store i8 0, i8* %14, align 1
  %1441 = and i32 %1438, 255
  %1442 = tail call i32 @llvm.ctpop.i32(i32 %1441)
  %1443 = trunc i32 %1442 to i8
  %1444 = and i8 %1443, 1
  %1445 = xor i8 %1444, 1
  store i8 %1445, i8* %21, align 1
  store i8 0, i8* %29, align 1
  %1446 = lshr i32 %1438, 31
  %1447 = trunc i32 %1446 to i8
  store i8 %1447, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1448 = add i64 %1433, 14
  store i64 %1448, i64* %3, align 8
  store i32 %1439, i32* %1437, align 4
  %.pre33 = load i64, i64* %3, align 8
  br label %block_.L_440312

block_.L_440312:                                  ; preds = %block_440304, %block_.L_4402e0
  %1449 = phi i64 [ %.pre33, %block_440304 ], [ %1433, %block_.L_4402e0 ]
  %1450 = add i64 %1449, 25
  store i64 %1450, i64* %3, align 8
  br label %block_.L_44032b

block_.L_44032b:                                  ; preds = %block_44002c, %block_.L_440312, %block_.L_4402b2, %block_.L_440255, %block_.L_4401f8, %block_.L_440113, %block_.L_4400c3, %block_.L_440076
  %1451 = phi i64 [ %637, %block_.L_440076 ], [ %739, %block_.L_4400c3 ], [ %841, %block_.L_440113 ], [ %1194, %block_.L_4401f8 ], [ %1279, %block_.L_440255 ], [ %1364, %block_.L_4402b2 ], [ %1450, %block_.L_440312 ], [ %.pre42, %block_44002c ]
  %MEMORY.12 = phi %struct.Memory* [ %MEMORY.3, %block_.L_440076 ], [ %MEMORY.4, %block_.L_4400c3 ], [ %MEMORY.5, %block_.L_440113 ], [ %MEMORY.8, %block_.L_4401f8 ], [ %1232, %block_.L_440255 ], [ %1317, %block_.L_4402b2 ], [ %1403, %block_.L_440312 ], [ %call2_440326, %block_44002c ]
  %1452 = load i64, i64* %RBP.i, align 8
  %1453 = add i64 %1452, -4
  %1454 = add i64 %1451, 7
  store i64 %1454, i64* %3, align 8
  %1455 = inttoptr i64 %1453 to i32*
  store i32 1, i32* %1455, align 4
  %.pre43 = load i64, i64* %3, align 8
  br label %block_.L_440332

block_.L_440332:                                  ; preds = %block_.L_44032b, %block_4402c9, %block_44026c, %block_44020f, %block_43ff01
  %1456 = phi i64 [ %.pre43, %block_.L_44032b ], [ %1221, %block_44020f ], [ %1306, %block_44026c ], [ %1392, %block_4402c9 ], [ %78, %block_43ff01 ]
  %MEMORY.13 = phi %struct.Memory* [ %MEMORY.12, %block_.L_44032b ], [ %call2_440201, %block_44020f ], [ %call2_44025e, %block_44026c ], [ %call2_4402bb, %block_4402c9 ], [ %2, %block_43ff01 ]
  %RAX.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %1457 = load i64, i64* %RBP.i, align 8
  %1458 = add i64 %1457, -4
  %1459 = add i64 %1456, 3
  store i64 %1459, i64* %3, align 8
  %1460 = inttoptr i64 %1458 to i32*
  %1461 = load i32, i32* %1460, align 4
  %1462 = zext i32 %1461 to i64
  store i64 %1462, i64* %RAX.i, align 8
  %1463 = load i64, i64* %6, align 8
  %1464 = add i64 %1463, 128
  store i64 %1464, i64* %6, align 8
  %1465 = icmp ugt i64 %1463, -129
  %1466 = zext i1 %1465 to i8
  store i8 %1466, i8* %14, align 1
  %1467 = trunc i64 %1464 to i32
  %1468 = and i32 %1467, 255
  %1469 = tail call i32 @llvm.ctpop.i32(i32 %1468)
  %1470 = trunc i32 %1469 to i8
  %1471 = and i8 %1470, 1
  %1472 = xor i8 %1471, 1
  store i8 %1472, i8* %21, align 1
  %1473 = xor i64 %1464, %1463
  %1474 = lshr i64 %1473, 4
  %1475 = trunc i64 %1474 to i8
  %1476 = and i8 %1475, 1
  store i8 %1476, i8* %26, align 1
  %1477 = icmp eq i64 %1464, 0
  %1478 = zext i1 %1477 to i8
  store i8 %1478, i8* %29, align 1
  %1479 = lshr i64 %1464, 63
  %1480 = trunc i64 %1479 to i8
  store i8 %1480, i8* %32, align 1
  %1481 = lshr i64 %1463, 63
  %1482 = xor i64 %1479, %1481
  %1483 = add nuw nsw i64 %1482, %1479
  %1484 = icmp eq i64 %1483, 2
  %1485 = zext i1 %1484 to i8
  store i8 %1485, i8* %38, align 1
  %1486 = add i64 %1456, 11
  store i64 %1486, i64* %3, align 8
  %1487 = add i64 %1463, 136
  %1488 = inttoptr i64 %1464 to i64*
  %1489 = load i64, i64* %1488, align 8
  store i64 %1489, i64* %RBP.i, align 8
  store i64 %1487, i64* %6, align 8
  %1490 = add i64 %1456, 12
  store i64 %1490, i64* %3, align 8
  %1491 = inttoptr i64 %1487 to i64*
  %1492 = load i64, i64* %1491, align 8
  store i64 %1492, i64* %3, align 8
  %1493 = add i64 %1463, 144
  store i64 %1493, i64* %6, align 8
  ret %struct.Memory* %MEMORY.13
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
define %struct.Memory* @routine_movq__rsi__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_43ff0d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_440332(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43ff12(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jne_.L_43ff33(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subq__0x1___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -1
  store i64 %6, i64* %RAX, align 8
  %7 = icmp eq i64 %3, 0
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
define %struct.Memory* @routine_movl__eax___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_jl_.L_43ff91(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_movzwl___rax__rcx_2____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
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
  store i64 %11, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_andl__0x2000___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 8192
  store i64 %6, i64* %RSI, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %8, align 1
  %.lobit = lshr exact i64 %6, 13
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
define %struct.Memory* @routine_cmpl__0x0___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ESI, align 4
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
define %struct.Memory* @routine_jne_.L_43ff7e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43ff91(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43ff83(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_43ff45(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_movb__0x0__0x1__rax__rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %3, 1
  %6 = add i64 %5, %4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i8*
  store i8 0, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_movl__edx__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_440031(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43ffb7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_je_.L_44007b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43ffcb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_je_.L_4400c8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43ffdf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x8___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -8
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 8
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
define %struct.Memory* @routine_je_.L_440118(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43fff3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x10___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -16
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 16
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
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
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
define %struct.Memory* @routine_je_.L_4401fd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_440007(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x20___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -32
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 32
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
define %struct.Memory* @routine_je_.L_44025a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44001b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x100___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -256
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 256
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
define %struct.Memory* @routine_je_.L_4402b7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_440317(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_je_.L_440076(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x3f___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 63, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x4___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 4
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -5
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
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
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
define %struct.Memory* @routine_movb__0x0__0x43__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 67
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  store i8 0, i8* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rcx____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = bitcast i64* %RCX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = load i32, i32* %5, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_orl__0x1___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R8D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = or i32 %5, 1
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %4, align 8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %10, align 1
  %11 = and i32 %8, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %17, align 1
  %18 = lshr i32 %5, 31
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = bitcast i64* %RCX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
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
define %struct.Memory* @routine_jmpq_.L_44032b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4400c3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x44___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 68
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -69
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
define %struct.Memory* @routine_movb__0x0__0x83__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 131
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  store i8 0, i8* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_orl__0x2___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R8D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = or i32 %5, 2
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %4, align 8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %10, align 1
  %11 = and i32 %8, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %17, align 1
  %18 = lshr i32 %5, 31
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %22, align 1
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
define %struct.Memory* @routine_je_.L_440113(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x84___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 132
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -133
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
define %struct.Memory* @routine_movb__0x0__0xc3__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 195
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  store i8 0, i8* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_orl__0x4___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R8D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = or i32 %5, 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %4, align 8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %10, align 1
  %11 = and i32 %8, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %17, align 1
  %18 = lshr i32 %5, 31
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %22, align 1
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
define %struct.Memory* @routine_je_.L_4401f8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x8___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 8
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RCX, align 8
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
define %struct.Memory* @routine_je_.L_4401c0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0xc4___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 196
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -197
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x7e__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -126
  %10 = icmp ult i32 %8, 126
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
define %struct.Memory* @routine_jge_.L_4401bb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x45a2e6___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45a2e6_type* @G__0x45a2e6 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x7f___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 127, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0xc4___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 196
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -197
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x20__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
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
define %struct.Memory* @routine_callq_.strncat_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x7f___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 127, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x20__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
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
define %struct.Memory* @routine_addl__0x1___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R9D, align 4
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
define %struct.Memory* @routine_movl__r9d__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %R9D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x20__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R8D, align 4
  %6 = load i64, i64* %RBP, align 8
  %7 = add i64 %6, -32
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sub i32 %5, %11
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %4, align 8
  %14 = icmp ult i32 %5, %11
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %12, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i32 %11, %5
  %24 = xor i32 %23, %12
  %25 = lshr i32 %24, 4
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %12, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %12, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %5, 31
  %36 = lshr i32 %11, 31
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
define %struct.Memory* @routine_movslq__r8d___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %R8D, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDX, align 8
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
define %struct.Memory* @routine_jmpq_.L_4401e2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x0__0x143__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 323
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  store i8 0, i8* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_orl__0x8___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = or i64 %3, 8
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
define %struct.Memory* @routine_movl__ecx____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = bitcast i64* %RAX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.IsInt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_440226(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x5__0x676f80(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 5, i32* bitcast (%G_0x676f80_type* @G_0x676f80 to i32*), align 8
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
define %struct.Memory* @routine_callq_.atoi_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__0x148__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 328
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x148__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 328
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
define %struct.Memory* @routine_je_.L_440255(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_orl__0x10___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = or i64 %3, 16
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
define %struct.Memory* @routine_jne_.L_440283(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__0x14c__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 332
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x14c__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 332
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
define %struct.Memory* @routine_je_.L_4402b2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_orl__0x20___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = or i64 %3, 32
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
define %struct.Memory* @routine_jne_.L_4402e0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__0x150__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 336
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x150__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 336
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
define %struct.Memory* @routine_je_.L_440312(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_orl__0x100___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = or i64 %3, 256
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
define %struct.Memory* @routine_movq__0x45a10a___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45a10a_type* @G__0x45a10a to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
