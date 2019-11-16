; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x661200_type = type <{ [4 x i8] }>
%G_0x663070_type = type <{ [8 x i8] }>
%G__0x456a2a_type = type <{ [8 x i8] }>
%G__0x456a60_type = type <{ [8 x i8] }>
%G__0x456a78_type = type <{ [8 x i8] }>
%G__0x456a9a_type = type <{ [8 x i8] }>
%G__0x456ac1_type = type <{ [8 x i8] }>
%G__0x456ad9_type = type <{ [8 x i8] }>
%G__0x456b03_type = type <{ [8 x i8] }>
%G__0x456b2e_type = type <{ [8 x i8] }>
%G__0x456fc3_type = type <{ [8 x i8] }>
%G__0x456fc4_type = type <{ [4 x i8] }>
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
@G_0x661200 = local_unnamed_addr global %G_0x661200_type zeroinitializer
@G_0x663070 = local_unnamed_addr global %G_0x663070_type zeroinitializer
@G__0x456a2a = global %G__0x456a2a_type zeroinitializer
@G__0x456a60 = global %G__0x456a60_type zeroinitializer
@G__0x456a78 = global %G__0x456a78_type zeroinitializer
@G__0x456a9a = global %G__0x456a9a_type zeroinitializer
@G__0x456ac1 = global %G__0x456ac1_type zeroinitializer
@G__0x456ad9 = global %G__0x456ad9_type zeroinitializer
@G__0x456b03 = global %G__0x456b03_type zeroinitializer
@G__0x456b2e = global %G__0x456b2e_type zeroinitializer
@G__0x456fc3 = global %G__0x456fc3_type zeroinitializer
@G__0x456fc4 = global %G__0x456fc4_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @strcmp(i64, i64)

declare extern_weak x86_64_sysvcc i64 @strlen(i64)

declare extern_weak x86_64_sysvcc i64 @strncmp(i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_401480.strchr_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_43ea10.Die(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_451270.IsInt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4514a0.IsReal(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @Getopt(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -104
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 96
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
  %RAX.i646 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  %40 = add i64 %7, 16
  %41 = add i64 %10, 11
  store i64 %41, i64* %3, align 8
  %42 = inttoptr i64 %40 to i64*
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %RAX.i646, align 8
  %R10.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %44 = add i64 %7, 8
  %45 = add i64 %10, 15
  store i64 %45, i64* %3, align 8
  %46 = inttoptr i64 %44 to i64*
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %R10.i, align 8
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %48 to i32*
  %49 = add i64 %7, -16
  %50 = load i32, i32* %EDI.i, align 4
  %51 = add i64 %10, 18
  store i64 %51, i64* %3, align 8
  %52 = inttoptr i64 %49 to i32*
  store i32 %50, i32* %52, align 4
  %RSI.i789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %53 = load i64, i64* %RBP.i, align 8
  %54 = add i64 %53, -16
  %55 = load i64, i64* %RSI.i789, align 8
  %56 = load i64, i64* %3, align 8
  %57 = add i64 %56, 4
  store i64 %57, i64* %3, align 8
  %58 = inttoptr i64 %54 to i64*
  store i64 %55, i64* %58, align 8
  %RDX.i840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %59 = load i64, i64* %RBP.i, align 8
  %60 = add i64 %59, -24
  %61 = load i64, i64* %RDX.i840, align 8
  %62 = load i64, i64* %3, align 8
  %63 = add i64 %62, 4
  store i64 %63, i64* %3, align 8
  %64 = inttoptr i64 %60 to i64*
  store i64 %61, i64* %64, align 8
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i882 = bitcast %union.anon* %65 to i32*
  %66 = load i64, i64* %RBP.i, align 8
  %67 = add i64 %66, -28
  %68 = load i32, i32* %ECX.i882, align 4
  %69 = load i64, i64* %3, align 8
  %70 = add i64 %69, 3
  store i64 %70, i64* %3, align 8
  %71 = inttoptr i64 %67 to i32*
  store i32 %68, i32* %71, align 4
  %R8.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %72 = load i64, i64* %RBP.i, align 8
  %73 = add i64 %72, -40
  %74 = load i64, i64* %R8.i, align 8
  %75 = load i64, i64* %3, align 8
  %76 = add i64 %75, 4
  store i64 %76, i64* %3, align 8
  %77 = inttoptr i64 %73 to i64*
  store i64 %74, i64* %77, align 8
  %R9.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %78 = load i64, i64* %RBP.i, align 8
  %79 = add i64 %78, -48
  %80 = load i64, i64* %R9.i, align 8
  %81 = load i64, i64* %3, align 8
  %82 = add i64 %81, 4
  store i64 %82, i64* %3, align 8
  %83 = inttoptr i64 %79 to i64*
  store i64 %80, i64* %83, align 8
  %84 = load i64, i64* %RBP.i, align 8
  %85 = add i64 %84, -56
  %86 = load i64, i64* %R10.i, align 8
  %87 = load i64, i64* %3, align 8
  %88 = add i64 %87, 4
  store i64 %88, i64* %3, align 8
  %89 = inttoptr i64 %85 to i64*
  store i64 %86, i64* %89, align 8
  %90 = load i64, i64* %RBP.i, align 8
  %91 = add i64 %90, -64
  %92 = load i64, i64* %RAX.i646, align 8
  %93 = load i64, i64* %3, align 8
  %94 = add i64 %93, 4
  store i64 %94, i64* %3, align 8
  %95 = inttoptr i64 %91 to i64*
  store i64 %92, i64* %95, align 8
  %96 = load i64, i64* %RBP.i, align 8
  %97 = add i64 %96, -80
  %98 = load i64, i64* %3, align 8
  %99 = add i64 %98, 7
  store i64 %99, i64* %3, align 8
  %100 = inttoptr i64 %97 to i32*
  store i32 0, i32* %100, align 4
  %RCX.i918 = getelementptr inbounds %union.anon, %union.anon* %65, i64 0, i32 0
  %101 = load i64, i64* %3, align 8
  %102 = load i32, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*), align 8
  %103 = zext i32 %102 to i64
  store i64 %103, i64* %RCX.i918, align 8
  %104 = load i64, i64* %RBP.i, align 8
  %105 = add i64 %104, -8
  %106 = add i64 %101, 10
  store i64 %106, i64* %3, align 8
  %107 = inttoptr i64 %105 to i32*
  %108 = load i32, i32* %107, align 4
  %109 = sub i32 %102, %108
  %110 = icmp ult i32 %102, %108
  %111 = zext i1 %110 to i8
  store i8 %111, i8* %14, align 1
  %112 = and i32 %109, 255
  %113 = tail call i32 @llvm.ctpop.i32(i32 %112)
  %114 = trunc i32 %113 to i8
  %115 = and i8 %114, 1
  %116 = xor i8 %115, 1
  store i8 %116, i8* %21, align 1
  %117 = xor i32 %108, %102
  %118 = xor i32 %117, %109
  %119 = lshr i32 %118, 4
  %120 = trunc i32 %119 to i8
  %121 = and i8 %120, 1
  store i8 %121, i8* %26, align 1
  %122 = icmp eq i32 %109, 0
  %123 = zext i1 %122 to i8
  store i8 %123, i8* %29, align 1
  %124 = lshr i32 %109, 31
  %125 = trunc i32 %124 to i8
  store i8 %125, i8* %32, align 1
  %126 = lshr i32 %102, 31
  %127 = lshr i32 %108, 31
  %128 = xor i32 %127, %126
  %129 = xor i32 %124, %126
  %130 = add nuw nsw i32 %129, %128
  %131 = icmp eq i32 %130, 2
  %132 = zext i1 %131 to i8
  store i8 %132, i8* %38, align 1
  %133 = icmp ne i8 %125, 0
  %134 = xor i1 %133, %131
  %.v = select i1 %134, i64 16, i64 81
  %135 = add i64 %101, %.v
  store i64 %135, i64* %3, align 8
  br i1 %134, label %block_4167a5, label %block_.L_4167e6

block_4167a5:                                     ; preds = %entry
  %136 = add i64 %104, -16
  %137 = add i64 %135, 4
  store i64 %137, i64* %3, align 8
  %138 = inttoptr i64 %136 to i64*
  %139 = load i64, i64* %138, align 8
  store i64 %139, i64* %RAX.i646, align 8
  %140 = sext i32 %102 to i64
  store i64 %140, i64* %RCX.i918, align 8
  %141 = shl nsw i64 %140, 3
  %142 = add i64 %141, %139
  %143 = add i64 %135, 16
  store i64 %143, i64* %3, align 8
  %144 = inttoptr i64 %142 to i64*
  %145 = load i64, i64* %144, align 8
  store i64 %145, i64* %RAX.i646, align 8
  %146 = add i64 %135, 19
  store i64 %146, i64* %3, align 8
  %147 = inttoptr i64 %145 to i8*
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i64
  %150 = and i64 %149, 4294967295
  store i64 %150, i64* %RDX.i840, align 8
  %151 = sext i8 %148 to i32
  %152 = add nsw i32 %151, -45
  %153 = icmp ult i8 %148, 45
  %154 = zext i1 %153 to i8
  store i8 %154, i8* %14, align 1
  %155 = and i32 %152, 255
  %156 = tail call i32 @llvm.ctpop.i32(i32 %155)
  %157 = trunc i32 %156 to i8
  %158 = and i8 %157, 1
  %159 = xor i8 %158, 1
  store i8 %159, i8* %21, align 1
  %160 = xor i32 %152, %151
  %161 = lshr i32 %160, 4
  %162 = trunc i32 %161 to i8
  %163 = and i8 %162, 1
  store i8 %163, i8* %26, align 1
  %164 = icmp eq i32 %152, 0
  %165 = zext i1 %164 to i8
  store i8 %165, i8* %29, align 1
  %166 = lshr i32 %152, 31
  %167 = trunc i32 %166 to i8
  store i8 %167, i8* %32, align 1
  %168 = lshr i32 %151, 31
  %169 = xor i32 %166, %168
  %170 = add nuw nsw i32 %169, %168
  %171 = icmp eq i32 %170, 2
  %172 = zext i1 %171 to i8
  store i8 %172, i8* %38, align 1
  %.v82 = select i1 %164, i64 28, i64 65
  %173 = add i64 %135, %.v82
  store i64 %173, i64* %3, align 8
  br i1 %164, label %block_4167c1, label %block_.L_4167e6

block_4167c1:                                     ; preds = %block_4167a5
  %174 = add i64 %173, 4
  store i64 %174, i64* %3, align 8
  %175 = load i64, i64* %138, align 8
  store i64 %175, i64* %RAX.i646, align 8
  store i64 %140, i64* %RCX.i918, align 8
  %RDI.i893 = getelementptr inbounds %union.anon, %union.anon* %48, i64 0, i32 0
  %176 = add i64 %141, %175
  %177 = add i64 %173, 16
  store i64 %177, i64* %3, align 8
  %178 = inttoptr i64 %176 to i64*
  %179 = load i64, i64* %178, align 8
  store i64 %179, i64* %RDI.i893, align 8
  store i64 and (i64 ptrtoint (%G__0x456fc4_type* @G__0x456fc4 to i64), i64 4294967295), i64* %RDX.i840, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x456fc4_type* @G__0x456fc4 to i64), i64 4294967295) to i32) to i64), i64* %RSI.i789, align 8
  %180 = add i64 %173, -86625
  %181 = add i64 %173, 28
  %182 = load i64, i64* %6, align 8
  %183 = add i64 %182, -8
  %184 = inttoptr i64 %183 to i64*
  store i64 %181, i64* %184, align 8
  store i64 %183, i64* %6, align 8
  store i64 %180, i64* %3, align 8
  %185 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %2)
  %EAX.i880 = bitcast %union.anon* %39 to i32*
  %186 = load i32, i32* %EAX.i880, align 4
  %187 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %188 = and i32 %186, 255
  %189 = tail call i32 @llvm.ctpop.i32(i32 %188)
  %190 = trunc i32 %189 to i8
  %191 = and i8 %190, 1
  %192 = xor i8 %191, 1
  store i8 %192, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %193 = icmp eq i32 %186, 0
  %194 = zext i1 %193 to i8
  store i8 %194, i8* %29, align 1
  %195 = lshr i32 %186, 31
  %196 = trunc i32 %195 to i8
  store i8 %196, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v83 = select i1 %193, i64 9, i64 56
  %197 = add i64 %187, %.v83
  store i64 %197, i64* %3, align 8
  br i1 %193, label %block_4167c1.block_.L_4167e6_crit_edge, label %block_.L_416815

block_4167c1.block_.L_4167e6_crit_edge:           ; preds = %block_4167c1
  %.pre79 = load i32, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*), align 8
  %.pre80 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4167e6

block_.L_4167e6:                                  ; preds = %block_4167a5, %block_4167c1.block_.L_4167e6_crit_edge, %entry
  %198 = phi i64 [ %104, %entry ], [ %104, %block_4167a5 ], [ %.pre80, %block_4167c1.block_.L_4167e6_crit_edge ]
  %199 = phi i32 [ %102, %entry ], [ %102, %block_4167a5 ], [ %.pre79, %block_4167c1.block_.L_4167e6_crit_edge ]
  %200 = phi i64 [ %135, %entry ], [ %173, %block_4167a5 ], [ %197, %block_4167c1.block_.L_4167e6_crit_edge ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %2, %block_4167a5 ], [ %185, %block_4167c1.block_.L_4167e6_crit_edge ]
  %201 = zext i32 %199 to i64
  store i64 %201, i64* %RAX.i646, align 8
  %202 = add i64 %198, -48
  %203 = add i64 %200, 11
  store i64 %203, i64* %3, align 8
  %204 = inttoptr i64 %202 to i64*
  %205 = load i64, i64* %204, align 8
  store i64 %205, i64* %RCX.i918, align 8
  %206 = add i64 %200, 13
  store i64 %206, i64* %3, align 8
  %207 = inttoptr i64 %205 to i32*
  store i32 %199, i32* %207, align 4
  %208 = load i64, i64* %RBP.i, align 8
  %209 = add i64 %208, -64
  %210 = load i64, i64* %3, align 8
  %211 = add i64 %210, 4
  store i64 %211, i64* %3, align 8
  %212 = inttoptr i64 %209 to i64*
  %213 = load i64, i64* %212, align 8
  store i64 %213, i64* %RCX.i918, align 8
  %214 = add i64 %210, 11
  store i64 %214, i64* %3, align 8
  %215 = inttoptr i64 %213 to i64*
  store i64 0, i64* %215, align 8
  %216 = load i64, i64* %RBP.i, align 8
  %217 = add i64 %216, -56
  %218 = load i64, i64* %3, align 8
  %219 = add i64 %218, 4
  store i64 %219, i64* %3, align 8
  %220 = inttoptr i64 %217 to i64*
  %221 = load i64, i64* %220, align 8
  store i64 %221, i64* %RCX.i918, align 8
  %222 = add i64 %218, 11
  store i64 %222, i64* %3, align 8
  %223 = inttoptr i64 %221 to i64*
  store i64 0, i64* %223, align 8
  %224 = load i64, i64* %RBP.i, align 8
  %225 = add i64 %224, -4
  %226 = load i64, i64* %3, align 8
  %227 = add i64 %226, 7
  store i64 %227, i64* %3, align 8
  %228 = inttoptr i64 %225 to i32*
  store i32 0, i32* %228, align 4
  %229 = load i64, i64* %3, align 8
  %230 = add i64 %229, 1788
  store i64 %230, i64* %3, align 8
  br label %block_.L_416f0c

block_.L_416815:                                  ; preds = %block_4167c1
  %231 = load i64, i64* %RBP.i, align 8
  %232 = add i64 %231, -16
  %233 = add i64 %197, 4
  store i64 %233, i64* %3, align 8
  %234 = inttoptr i64 %232 to i64*
  %235 = load i64, i64* %234, align 8
  store i64 %235, i64* %RAX.i646, align 8
  %236 = load i32, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*), align 8
  %237 = sext i32 %236 to i64
  store i64 %237, i64* %RCX.i918, align 8
  %238 = shl nsw i64 %237, 3
  %239 = add i64 %238, %235
  %240 = add i64 %197, 16
  store i64 %240, i64* %3, align 8
  %241 = inttoptr i64 %239 to i64*
  %242 = load i64, i64* %241, align 8
  store i64 %242, i64* %RDI.i893, align 8
  store i64 and (i64 ptrtoint (%G__0x456fc3_type* @G__0x456fc3 to i64), i64 4294967295), i64* %RDX.i840, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x456fc3_type* @G__0x456fc3 to i64), i64 4294967295) to i32) to i64), i64* %RSI.i789, align 8
  %243 = add i64 %197, -86709
  %244 = add i64 %197, 28
  %245 = load i64, i64* %6, align 8
  %246 = add i64 %245, -8
  %247 = inttoptr i64 %246 to i64*
  store i64 %244, i64* %247, align 8
  store i64 %246, i64* %6, align 8
  store i64 %243, i64* %3, align 8
  %248 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %185)
  %249 = load i32, i32* %EAX.i880, align 4
  %250 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %251 = and i32 %249, 255
  %252 = tail call i32 @llvm.ctpop.i32(i32 %251)
  %253 = trunc i32 %252 to i8
  %254 = and i8 %253, 1
  %255 = xor i8 %254, 1
  store i8 %255, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %256 = icmp eq i32 %249, 0
  %257 = zext i1 %256 to i8
  store i8 %257, i8* %29, align 1
  %258 = lshr i32 %249, 31
  %259 = trunc i32 %258 to i8
  store i8 %259, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v84 = select i1 %256, i64 9, i64 73
  %260 = add i64 %250, %.v84
  store i64 %260, i64* %3, align 8
  br i1 %256, label %block_41683a, label %block_.L_41687a

block_41683a:                                     ; preds = %block_.L_416815
  %261 = load i32, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*), align 8
  %262 = add i32 %261, 1
  %263 = zext i32 %262 to i64
  %264 = icmp eq i32 %261, -1
  %265 = icmp eq i32 %262, 0
  %266 = or i1 %264, %265
  %267 = zext i1 %266 to i8
  store i8 %267, i8* %14, align 1
  %268 = and i32 %262, 255
  %269 = tail call i32 @llvm.ctpop.i32(i32 %268)
  %270 = trunc i32 %269 to i8
  %271 = and i8 %270, 1
  %272 = xor i8 %271, 1
  store i8 %272, i8* %21, align 1
  %273 = xor i32 %262, %261
  %274 = lshr i32 %273, 4
  %275 = trunc i32 %274 to i8
  %276 = and i8 %275, 1
  store i8 %276, i8* %26, align 1
  %277 = zext i1 %265 to i8
  store i8 %277, i8* %29, align 1
  %278 = lshr i32 %262, 31
  %279 = trunc i32 %278 to i8
  store i8 %279, i8* %32, align 1
  %280 = lshr i32 %261, 31
  %281 = xor i32 %278, %280
  %282 = add nuw nsw i32 %281, %278
  %283 = icmp eq i32 %282, 2
  %284 = zext i1 %283 to i8
  store i8 %284, i8* %38, align 1
  store i32 %262, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*), align 8
  store i64 %263, i64* %RAX.i646, align 8
  %285 = load i64, i64* %RBP.i, align 8
  %286 = add i64 %285, -48
  %287 = add i64 %260, 28
  store i64 %287, i64* %3, align 8
  %288 = inttoptr i64 %286 to i64*
  %289 = load i64, i64* %288, align 8
  store i64 %289, i64* %RCX.i918, align 8
  %290 = add i64 %260, 30
  store i64 %290, i64* %3, align 8
  %291 = inttoptr i64 %289 to i32*
  store i32 %262, i32* %291, align 4
  %292 = load i64, i64* %RBP.i, align 8
  %293 = add i64 %292, -56
  %294 = load i64, i64* %3, align 8
  %295 = add i64 %294, 4
  store i64 %295, i64* %3, align 8
  %296 = inttoptr i64 %293 to i64*
  %297 = load i64, i64* %296, align 8
  store i64 %297, i64* %RCX.i918, align 8
  %298 = add i64 %294, 11
  store i64 %298, i64* %3, align 8
  %299 = inttoptr i64 %297 to i64*
  store i64 0, i64* %299, align 8
  %300 = load i64, i64* %RBP.i, align 8
  %301 = add i64 %300, -64
  %302 = load i64, i64* %3, align 8
  %303 = add i64 %302, 4
  store i64 %303, i64* %3, align 8
  %304 = inttoptr i64 %301 to i64*
  %305 = load i64, i64* %304, align 8
  store i64 %305, i64* %RCX.i918, align 8
  %306 = add i64 %302, 11
  store i64 %306, i64* %3, align 8
  %307 = inttoptr i64 %305 to i64*
  store i64 0, i64* %307, align 8
  %308 = load i64, i64* %RBP.i, align 8
  %309 = add i64 %308, -4
  %310 = load i64, i64* %3, align 8
  %311 = add i64 %310, 7
  store i64 %311, i64* %3, align 8
  %312 = inttoptr i64 %309 to i32*
  store i32 0, i32* %312, align 4
  %313 = load i64, i64* %3, align 8
  %314 = add i64 %313, 1687
  store i64 %314, i64* %3, align 8
  br label %block_.L_416f0c

block_.L_41687a:                                  ; preds = %block_.L_416815
  %315 = load i64, i64* bitcast (%G_0x663070_type* @G_0x663070 to i64*), align 8
  store i8 0, i8* %14, align 1
  %316 = trunc i64 %315 to i32
  %317 = and i32 %316, 255
  %318 = tail call i32 @llvm.ctpop.i32(i32 %317)
  %319 = trunc i32 %318 to i8
  %320 = and i8 %319, 1
  %321 = xor i8 %320, 1
  store i8 %321, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %322 = icmp eq i64 %315, 0
  %323 = zext i1 %322 to i8
  store i8 %323, i8* %29, align 1
  %324 = lshr i64 %315, 63
  %325 = trunc i64 %324 to i8
  store i8 %325, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v85 = select i1 %322, i64 15, i64 811
  %326 = add i64 %260, %.v85
  store i64 %326, i64* %3, align 8
  br i1 %322, label %block_416889, label %block_.L_416ba5

block_416889:                                     ; preds = %block_.L_41687a
  store i64 ptrtoint (%G__0x456fc3_type* @G__0x456fc3 to i64), i64* %RSI.i789, align 8
  store i64 2, i64* %RAX.i646, align 8
  store i64 2, i64* %RDX.i840, align 8
  %327 = load i64, i64* %RBP.i, align 8
  %328 = add i64 %327, -16
  %329 = add i64 %326, 21
  store i64 %329, i64* %3, align 8
  %330 = inttoptr i64 %328 to i64*
  %331 = load i64, i64* %330, align 8
  store i64 %331, i64* %RCX.i918, align 8
  %332 = load i32, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*), align 8
  %333 = sext i32 %332 to i64
  store i64 %333, i64* %RDI.i893, align 8
  %334 = shl nsw i64 %333, 3
  %335 = add i64 %334, %331
  %336 = add i64 %326, 33
  store i64 %336, i64* %3, align 8
  %337 = inttoptr i64 %335 to i64*
  %338 = load i64, i64* %337, align 8
  store i64 %338, i64* %RDI.i893, align 8
  %339 = add i64 %326, -87225
  %340 = add i64 %326, 38
  %341 = load i64, i64* %6, align 8
  %342 = add i64 %341, -8
  %343 = inttoptr i64 %342 to i64*
  store i64 %340, i64* %343, align 8
  store i64 %342, i64* %6, align 8
  store i64 %339, i64* %3, align 8
  %344 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %248)
  %345 = load i32, i32* %EAX.i880, align 4
  %346 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %347 = and i32 %345, 255
  %348 = tail call i32 @llvm.ctpop.i32(i32 %347)
  %349 = trunc i32 %348 to i8
  %350 = and i8 %349, 1
  %351 = xor i8 %350, 1
  store i8 %351, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %352 = icmp eq i32 %345, 0
  %353 = zext i1 %352 to i8
  store i8 %353, i8* %29, align 1
  %354 = lshr i32 %345, 31
  %355 = trunc i32 %354 to i8
  store i8 %355, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v102 = select i1 %352, i64 9, i64 758
  %356 = add i64 %346, %.v102
  store i64 %356, i64* %3, align 8
  br i1 %352, label %block_4168b8, label %block_416889.block_.L_416ba5_crit_edge

block_416889.block_.L_416ba5_crit_edge:           ; preds = %block_416889
  %.pre70 = load i64, i64* bitcast (%G_0x663070_type* @G_0x663070 to i64*), align 8
  br label %block_.L_416ba5

block_4168b8:                                     ; preds = %block_416889
  store i64 61, i64* %RSI.i789, align 8
  %357 = load i64, i64* %RBP.i, align 8
  %358 = add i64 %357, -16
  %359 = add i64 %356, 9
  store i64 %359, i64* %3, align 8
  %360 = inttoptr i64 %358 to i64*
  %361 = load i64, i64* %360, align 8
  store i64 %361, i64* %RAX.i646, align 8
  %362 = load i32, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*), align 8
  %363 = sext i32 %362 to i64
  store i64 %363, i64* %RCX.i918, align 8
  %364 = shl nsw i64 %363, 3
  %365 = add i64 %364, %361
  %366 = add i64 %356, 21
  store i64 %366, i64* %3, align 8
  %367 = inttoptr i64 %365 to i64*
  %368 = load i64, i64* %367, align 8
  store i64 %368, i64* %RDI.i893, align 8
  %369 = add i64 %356, -87096
  %370 = add i64 %356, 26
  %371 = load i64, i64* %6, align 8
  %372 = add i64 %371, -8
  %373 = inttoptr i64 %372 to i64*
  store i64 %370, i64* %373, align 8
  store i64 %372, i64* %6, align 8
  store i64 %369, i64* %3, align 8
  %call2_4168cd = tail call %struct.Memory* @sub_401480.strchr_plt(%struct.State* nonnull %0, i64 %369, %struct.Memory* %344)
  %374 = load i64, i64* %RAX.i646, align 8
  %375 = load i64, i64* %3, align 8
  store i64 %374, i64* bitcast (%G_0x663070_type* @G_0x663070 to i64*), align 8
  store i8 0, i8* %14, align 1
  %376 = trunc i64 %374 to i32
  %377 = and i32 %376, 255
  %378 = tail call i32 @llvm.ctpop.i32(i32 %377)
  %379 = trunc i32 %378 to i8
  %380 = and i8 %379, 1
  %381 = xor i8 %380, 1
  store i8 %381, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %382 = icmp eq i64 %374, 0
  %383 = zext i1 %382 to i8
  store i8 %383, i8* %29, align 1
  %384 = lshr i64 %374, 63
  %385 = trunc i64 %384 to i8
  store i8 %385, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v103 = select i1 %382, i64 49, i64 18
  %386 = add i64 %375, %.v103
  store i64 %386, i64* %3, align 8
  br i1 %382, label %block_.L_416903, label %block_4168e4

block_4168e4:                                     ; preds = %block_4168b8
  %387 = add i64 %386, 11
  store i64 %387, i64* %3, align 8
  %388 = inttoptr i64 %374 to i8*
  store i8 0, i8* %388, align 1
  %389 = load i64, i64* %3, align 8
  %390 = load i64, i64* bitcast (%G_0x663070_type* @G_0x663070 to i64*), align 8
  %391 = add i64 %390, 1
  store i64 %391, i64* %RAX.i646, align 8
  %392 = icmp eq i64 %390, -1
  %393 = icmp eq i64 %391, 0
  %394 = or i1 %392, %393
  %395 = zext i1 %394 to i8
  store i8 %395, i8* %14, align 1
  %396 = trunc i64 %391 to i32
  %397 = and i32 %396, 255
  %398 = tail call i32 @llvm.ctpop.i32(i32 %397)
  %399 = trunc i32 %398 to i8
  %400 = and i8 %399, 1
  %401 = xor i8 %400, 1
  store i8 %401, i8* %21, align 1
  %402 = xor i64 %391, %390
  %403 = lshr i64 %402, 4
  %404 = trunc i64 %403 to i8
  %405 = and i8 %404, 1
  store i8 %405, i8* %26, align 1
  %406 = zext i1 %393 to i8
  store i8 %406, i8* %29, align 1
  %407 = lshr i64 %391, 63
  %408 = trunc i64 %407 to i8
  store i8 %408, i8* %32, align 1
  %409 = lshr i64 %390, 63
  %410 = xor i64 %407, %409
  %411 = add nuw nsw i64 %410, %407
  %412 = icmp eq i64 %411, 2
  %413 = zext i1 %412 to i8
  store i8 %413, i8* %38, align 1
  %414 = add i64 %389, 20
  store i64 %414, i64* %3, align 8
  store i64 %391, i64* bitcast (%G_0x663070_type* @G_0x663070 to i64*), align 8
  br label %block_.L_416903

block_.L_416903:                                  ; preds = %block_4168e4, %block_4168b8
  %415 = phi i64 [ %414, %block_4168e4 ], [ %386, %block_4168b8 ]
  %416 = load i64, i64* %RBP.i, align 8
  %417 = add i64 %416, -16
  %418 = add i64 %415, 4
  store i64 %418, i64* %3, align 8
  %419 = inttoptr i64 %417 to i64*
  %420 = load i64, i64* %419, align 8
  store i64 %420, i64* %RAX.i646, align 8
  %421 = load i32, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*), align 8
  %422 = sext i32 %421 to i64
  store i64 %422, i64* %RCX.i918, align 8
  %423 = shl nsw i64 %422, 3
  %424 = add i64 %423, %420
  %425 = add i64 %415, 16
  store i64 %425, i64* %3, align 8
  %426 = inttoptr i64 %424 to i64*
  %427 = load i64, i64* %426, align 8
  store i64 %427, i64* %RDI.i893, align 8
  %428 = add i64 %415, -87203
  %429 = add i64 %415, 21
  %430 = load i64, i64* %6, align 8
  %431 = add i64 %430, -8
  %432 = inttoptr i64 %431 to i64*
  store i64 %429, i64* %432, align 8
  store i64 %431, i64* %6, align 8
  store i64 %428, i64* %3, align 8
  %433 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %call2_4168cd)
  %434 = load i32, i32* %EAX.i880, align 4
  %435 = zext i32 %434 to i64
  %436 = load i64, i64* %3, align 8
  store i64 %435, i64* %RDX.i840, align 8
  %437 = load i64, i64* %RBP.i, align 8
  %438 = add i64 %437, -72
  %439 = add i64 %436, 5
  store i64 %439, i64* %3, align 8
  %440 = inttoptr i64 %438 to i32*
  store i32 %434, i32* %440, align 4
  %441 = load i64, i64* %RBP.i, align 8
  %442 = add i64 %441, -76
  %443 = load i64, i64* %3, align 8
  %444 = add i64 %443, 7
  store i64 %444, i64* %3, align 8
  %445 = inttoptr i64 %442 to i32*
  store i32 0, i32* %445, align 4
  %446 = load i64, i64* %RBP.i, align 8
  %447 = add i64 %446, -68
  %448 = load i64, i64* %3, align 8
  %449 = add i64 %448, 7
  store i64 %449, i64* %3, align 8
  %450 = inttoptr i64 %447 to i32*
  store i32 0, i32* %450, align 4
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_41692b

block_.L_41692b:                                  ; preds = %block_.L_4169c9, %block_.L_416903
  %451 = phi i64 [ %.pre, %block_.L_416903 ], [ %773, %block_.L_4169c9 ]
  %MEMORY.2 = phi %struct.Memory* [ %433, %block_.L_416903 ], [ %MEMORY.3, %block_.L_4169c9 ]
  %452 = load i64, i64* %RBP.i, align 8
  %453 = add i64 %452, -68
  %454 = add i64 %451, 3
  store i64 %454, i64* %3, align 8
  %455 = inttoptr i64 %453 to i32*
  %456 = load i32, i32* %455, align 4
  %457 = zext i32 %456 to i64
  store i64 %457, i64* %RAX.i646, align 8
  %458 = add i64 %452, -28
  %459 = add i64 %451, 6
  store i64 %459, i64* %3, align 8
  %460 = inttoptr i64 %458 to i32*
  %461 = load i32, i32* %460, align 4
  %462 = sub i32 %456, %461
  %463 = icmp ult i32 %456, %461
  %464 = zext i1 %463 to i8
  store i8 %464, i8* %14, align 1
  %465 = and i32 %462, 255
  %466 = tail call i32 @llvm.ctpop.i32(i32 %465)
  %467 = trunc i32 %466 to i8
  %468 = and i8 %467, 1
  %469 = xor i8 %468, 1
  store i8 %469, i8* %21, align 1
  %470 = xor i32 %461, %456
  %471 = xor i32 %470, %462
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
  %479 = lshr i32 %456, 31
  %480 = lshr i32 %461, 31
  %481 = xor i32 %480, %479
  %482 = xor i32 %477, %479
  %483 = add nuw nsw i32 %482, %481
  %484 = icmp eq i32 %483, 2
  %485 = zext i1 %484 to i8
  store i8 %485, i8* %38, align 1
  %486 = icmp ne i8 %478, 0
  %487 = xor i1 %486, %484
  %.v104 = select i1 %487, i64 12, i64 177
  %488 = add i64 %451, %.v104
  store i64 %488, i64* %3, align 8
  br i1 %487, label %block_416937, label %block_.L_4169dc.loopexit

block_416937:                                     ; preds = %block_.L_41692b
  %489 = add i64 %452, -24
  %490 = add i64 %488, 4
  store i64 %490, i64* %3, align 8
  %491 = inttoptr i64 %489 to i64*
  %492 = load i64, i64* %491, align 8
  store i64 %492, i64* %RAX.i646, align 8
  %493 = add i64 %488, 8
  store i64 %493, i64* %3, align 8
  %494 = load i32, i32* %455, align 4
  %495 = sext i32 %494 to i64
  %496 = shl nsw i64 %495, 4
  store i64 %496, i64* %RCX.i918, align 8
  %497 = add i64 %496, %492
  store i64 %497, i64* %RAX.i646, align 8
  %498 = icmp ult i64 %497, %492
  %499 = icmp ult i64 %497, %496
  %500 = or i1 %498, %499
  %501 = zext i1 %500 to i8
  store i8 %501, i8* %14, align 1
  %502 = trunc i64 %497 to i32
  %503 = and i32 %502, 255
  %504 = tail call i32 @llvm.ctpop.i32(i32 %503)
  %505 = trunc i32 %504 to i8
  %506 = and i8 %505, 1
  %507 = xor i8 %506, 1
  store i8 %507, i8* %21, align 1
  %508 = xor i64 %496, %492
  %509 = xor i64 %508, %497
  %510 = lshr i64 %509, 4
  %511 = trunc i64 %510 to i8
  %512 = and i8 %511, 1
  store i8 %512, i8* %26, align 1
  %513 = icmp eq i64 %497, 0
  %514 = zext i1 %513 to i8
  store i8 %514, i8* %29, align 1
  %515 = lshr i64 %497, 63
  %516 = trunc i64 %515 to i8
  store i8 %516, i8* %32, align 1
  %517 = lshr i64 %492, 63
  %518 = lshr i64 %495, 59
  %519 = and i64 %518, 1
  %520 = xor i64 %515, %517
  %521 = xor i64 %515, %519
  %522 = add nuw nsw i64 %520, %521
  %523 = icmp eq i64 %522, 2
  %524 = zext i1 %523 to i8
  store i8 %524, i8* %38, align 1
  %525 = add i64 %497, 8
  %526 = add i64 %488, 19
  store i64 %526, i64* %3, align 8
  %527 = inttoptr i64 %525 to i32*
  %528 = load i32, i32* %527, align 4
  store i8 0, i8* %14, align 1
  %529 = and i32 %528, 255
  %530 = tail call i32 @llvm.ctpop.i32(i32 %529)
  %531 = trunc i32 %530 to i8
  %532 = and i8 %531, 1
  %533 = xor i8 %532, 1
  store i8 %533, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %534 = icmp eq i32 %528, 0
  %535 = zext i1 %534 to i8
  store i8 %535, i8* %29, align 1
  %536 = lshr i32 %528, 31
  %537 = trunc i32 %536 to i8
  store i8 %537, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v112 = select i1 %534, i64 25, i64 146
  %538 = add i64 %488, %.v112
  store i64 %538, i64* %3, align 8
  br i1 %534, label %block_416950, label %block_.L_4169c9

block_416950:                                     ; preds = %block_416937
  %539 = add i64 %538, 4
  store i64 %539, i64* %3, align 8
  %540 = load i64, i64* %491, align 8
  store i64 %540, i64* %RAX.i646, align 8
  %541 = add i64 %538, 8
  store i64 %541, i64* %3, align 8
  %542 = load i32, i32* %455, align 4
  %543 = sext i32 %542 to i64
  %544 = shl nsw i64 %543, 4
  store i64 %544, i64* %RCX.i918, align 8
  %545 = add i64 %544, %540
  store i64 %545, i64* %RAX.i646, align 8
  %546 = icmp ult i64 %545, %540
  %547 = icmp ult i64 %545, %544
  %548 = or i1 %546, %547
  %549 = zext i1 %548 to i8
  store i8 %549, i8* %14, align 1
  %550 = trunc i64 %545 to i32
  %551 = and i32 %550, 255
  %552 = tail call i32 @llvm.ctpop.i32(i32 %551)
  %553 = trunc i32 %552 to i8
  %554 = and i8 %553, 1
  %555 = xor i8 %554, 1
  store i8 %555, i8* %21, align 1
  %556 = xor i64 %544, %540
  %557 = xor i64 %556, %545
  %558 = lshr i64 %557, 4
  %559 = trunc i64 %558 to i8
  %560 = and i8 %559, 1
  store i8 %560, i8* %26, align 1
  %561 = icmp eq i64 %545, 0
  %562 = zext i1 %561 to i8
  store i8 %562, i8* %29, align 1
  %563 = lshr i64 %545, 63
  %564 = trunc i64 %563 to i8
  store i8 %564, i8* %32, align 1
  %565 = lshr i64 %540, 63
  %566 = lshr i64 %543, 59
  %567 = and i64 %566, 1
  %568 = xor i64 %563, %565
  %569 = xor i64 %563, %567
  %570 = add nuw nsw i64 %568, %569
  %571 = icmp eq i64 %570, 2
  %572 = zext i1 %571 to i8
  store i8 %572, i8* %38, align 1
  %573 = inttoptr i64 %545 to i64*
  %574 = add i64 %538, 18
  store i64 %574, i64* %3, align 8
  %575 = load i64, i64* %573, align 8
  store i64 %575, i64* %RDI.i893, align 8
  %576 = add i64 %452, -16
  %577 = add i64 %538, 22
  store i64 %577, i64* %3, align 8
  %578 = inttoptr i64 %576 to i64*
  %579 = load i64, i64* %578, align 8
  store i64 %579, i64* %RAX.i646, align 8
  %580 = load i32, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*), align 8
  %581 = sext i32 %580 to i64
  store i64 %581, i64* %RCX.i918, align 8
  %582 = shl nsw i64 %581, 3
  %583 = add i64 %582, %579
  %584 = add i64 %538, 34
  store i64 %584, i64* %3, align 8
  %585 = inttoptr i64 %583 to i64*
  %586 = load i64, i64* %585, align 8
  store i64 %586, i64* %RSI.i789, align 8
  %587 = add i64 %452, -72
  %588 = add i64 %538, 38
  store i64 %588, i64* %3, align 8
  %589 = inttoptr i64 %587 to i32*
  %590 = load i32, i32* %589, align 4
  %591 = sext i32 %590 to i64
  store i64 %591, i64* %RDX.i840, align 8
  %592 = add i64 %538, -87424
  %593 = add i64 %538, 43
  %594 = load i64, i64* %6, align 8
  %595 = add i64 %594, -8
  %596 = inttoptr i64 %595 to i64*
  store i64 %593, i64* %596, align 8
  store i64 %595, i64* %6, align 8
  store i64 %592, i64* %3, align 8
  %597 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %MEMORY.2)
  %598 = load i32, i32* %EAX.i880, align 4
  %599 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %600 = and i32 %598, 255
  %601 = tail call i32 @llvm.ctpop.i32(i32 %600)
  %602 = trunc i32 %601 to i8
  %603 = and i8 %602, 1
  %604 = xor i8 %603, 1
  store i8 %604, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %605 = icmp eq i32 %598, 0
  %606 = zext i1 %605 to i8
  store i8 %606, i8* %29, align 1
  %607 = lshr i32 %598, 31
  %608 = trunc i32 %607 to i8
  store i8 %608, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v113 = select i1 %605, i64 9, i64 78
  %609 = add i64 %599, %.v113
  store i64 %609, i64* %3, align 8
  %610 = load i64, i64* %RBP.i, align 8
  br i1 %605, label %block_416984, label %block_.L_4169c9

block_416984:                                     ; preds = %block_416950
  %611 = add i64 %610, -76
  %612 = add i64 %609, 3
  store i64 %612, i64* %3, align 8
  %613 = inttoptr i64 %611 to i32*
  %614 = load i32, i32* %613, align 4
  %615 = add i32 %614, 1
  %616 = zext i32 %615 to i64
  store i64 %616, i64* %RAX.i646, align 8
  %617 = icmp eq i32 %614, -1
  %618 = icmp eq i32 %615, 0
  %619 = or i1 %617, %618
  %620 = zext i1 %619 to i8
  store i8 %620, i8* %14, align 1
  %621 = and i32 %615, 255
  %622 = tail call i32 @llvm.ctpop.i32(i32 %621)
  %623 = trunc i32 %622 to i8
  %624 = and i8 %623, 1
  %625 = xor i8 %624, 1
  store i8 %625, i8* %21, align 1
  %626 = xor i32 %615, %614
  %627 = lshr i32 %626, 4
  %628 = trunc i32 %627 to i8
  %629 = and i8 %628, 1
  store i8 %629, i8* %26, align 1
  %630 = zext i1 %618 to i8
  store i8 %630, i8* %29, align 1
  %631 = lshr i32 %615, 31
  %632 = trunc i32 %631 to i8
  store i8 %632, i8* %32, align 1
  %633 = lshr i32 %614, 31
  %634 = xor i32 %631, %633
  %635 = add nuw nsw i32 %634, %631
  %636 = icmp eq i32 %635, 2
  %637 = zext i1 %636 to i8
  store i8 %637, i8* %38, align 1
  %638 = add i64 %609, 9
  store i64 %638, i64* %3, align 8
  store i32 %615, i32* %613, align 4
  %639 = load i64, i64* %RBP.i, align 8
  %640 = add i64 %639, -68
  %641 = load i64, i64* %3, align 8
  %642 = add i64 %641, 3
  store i64 %642, i64* %3, align 8
  %643 = inttoptr i64 %640 to i32*
  %644 = load i32, i32* %643, align 4
  %645 = zext i32 %644 to i64
  store i64 %645, i64* %RAX.i646, align 8
  %646 = add i64 %639, -80
  %647 = add i64 %641, 6
  store i64 %647, i64* %3, align 8
  %648 = inttoptr i64 %646 to i32*
  store i32 %644, i32* %648, align 4
  %649 = load i64, i64* %RBP.i, align 8
  %650 = add i64 %649, -72
  %651 = load i64, i64* %3, align 8
  %652 = add i64 %651, 4
  store i64 %652, i64* %3, align 8
  %653 = inttoptr i64 %650 to i32*
  %654 = load i32, i32* %653, align 4
  %655 = sext i32 %654 to i64
  store i64 %655, i64* %RCX.i918, align 8
  %656 = add i64 %649, -24
  %657 = add i64 %651, 8
  store i64 %657, i64* %3, align 8
  %658 = inttoptr i64 %656 to i64*
  %659 = load i64, i64* %658, align 8
  store i64 %659, i64* %RDX.i840, align 8
  %660 = add i64 %649, -68
  %661 = add i64 %651, 12
  store i64 %661, i64* %3, align 8
  %662 = inttoptr i64 %660 to i32*
  %663 = load i32, i32* %662, align 4
  %664 = sext i32 %663 to i64
  %665 = shl nsw i64 %664, 4
  store i64 %665, i64* %RSI.i789, align 8
  %666 = add i64 %665, %659
  store i64 %666, i64* %RDX.i840, align 8
  %667 = icmp ult i64 %666, %659
  %668 = icmp ult i64 %666, %665
  %669 = or i1 %667, %668
  %670 = zext i1 %669 to i8
  store i8 %670, i8* %14, align 1
  %671 = trunc i64 %666 to i32
  %672 = and i32 %671, 255
  %673 = tail call i32 @llvm.ctpop.i32(i32 %672)
  %674 = trunc i32 %673 to i8
  %675 = and i8 %674, 1
  %676 = xor i8 %675, 1
  store i8 %676, i8* %21, align 1
  %677 = xor i64 %665, %659
  %678 = xor i64 %677, %666
  %679 = lshr i64 %678, 4
  %680 = trunc i64 %679 to i8
  %681 = and i8 %680, 1
  store i8 %681, i8* %26, align 1
  %682 = icmp eq i64 %666, 0
  %683 = zext i1 %682 to i8
  store i8 %683, i8* %29, align 1
  %684 = lshr i64 %666, 63
  %685 = trunc i64 %684 to i8
  store i8 %685, i8* %32, align 1
  %686 = lshr i64 %659, 63
  %687 = lshr i64 %664, 59
  %688 = and i64 %687, 1
  %689 = xor i64 %684, %686
  %690 = xor i64 %684, %688
  %691 = add nuw nsw i64 %689, %690
  %692 = icmp eq i64 %691, 2
  %693 = zext i1 %692 to i8
  store i8 %693, i8* %38, align 1
  %694 = inttoptr i64 %666 to i64*
  %695 = add i64 %651, 22
  store i64 %695, i64* %3, align 8
  %696 = load i64, i64* %694, align 8
  store i64 %696, i64* %RDI.i893, align 8
  %697 = add i64 %649, -88
  %698 = add i64 %651, 26
  store i64 %698, i64* %3, align 8
  %699 = inttoptr i64 %697 to i64*
  store i64 %655, i64* %699, align 8
  %700 = load i64, i64* %3, align 8
  %701 = add i64 %700, -87373
  %702 = add i64 %700, 5
  %703 = load i64, i64* %6, align 8
  %704 = add i64 %703, -8
  %705 = inttoptr i64 %704 to i64*
  store i64 %702, i64* %705, align 8
  store i64 %704, i64* %6, align 8
  store i64 %701, i64* %3, align 8
  %706 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %597)
  %707 = load i64, i64* %RBP.i, align 8
  %708 = add i64 %707, -88
  %709 = load i64, i64* %3, align 8
  %710 = add i64 %709, 4
  store i64 %710, i64* %3, align 8
  %711 = inttoptr i64 %708 to i64*
  %712 = load i64, i64* %711, align 8
  store i64 %712, i64* %RCX.i918, align 8
  %713 = load i64, i64* %RAX.i646, align 8
  %714 = sub i64 %712, %713
  %715 = icmp ult i64 %712, %713
  %716 = zext i1 %715 to i8
  store i8 %716, i8* %14, align 1
  %717 = trunc i64 %714 to i32
  %718 = and i32 %717, 255
  %719 = tail call i32 @llvm.ctpop.i32(i32 %718)
  %720 = trunc i32 %719 to i8
  %721 = and i8 %720, 1
  %722 = xor i8 %721, 1
  store i8 %722, i8* %21, align 1
  %723 = xor i64 %713, %712
  %724 = xor i64 %723, %714
  %725 = lshr i64 %724, 4
  %726 = trunc i64 %725 to i8
  %727 = and i8 %726, 1
  store i8 %727, i8* %26, align 1
  %728 = icmp eq i64 %714, 0
  %729 = zext i1 %728 to i8
  store i8 %729, i8* %29, align 1
  %730 = lshr i64 %714, 63
  %731 = trunc i64 %730 to i8
  store i8 %731, i8* %32, align 1
  %732 = lshr i64 %712, 63
  %733 = lshr i64 %713, 63
  %734 = xor i64 %733, %732
  %735 = xor i64 %730, %732
  %736 = add nuw nsw i64 %735, %734
  %737 = icmp eq i64 %736, 2
  %738 = zext i1 %737 to i8
  store i8 %738, i8* %38, align 1
  %.v114 = select i1 %728, i64 13, i64 18
  %739 = add i64 %709, %.v114
  store i64 %739, i64* %3, align 8
  br i1 %728, label %block_4169bf, label %block_.L_4169c4

block_4169bf:                                     ; preds = %block_416984
  %740 = add i64 %739, 29
  store i64 %740, i64* %3, align 8
  br label %block_.L_4169dc

block_.L_4169c4:                                  ; preds = %block_416984
  %741 = add i64 %739, 5
  store i64 %741, i64* %3, align 8
  br label %block_.L_4169c9

block_.L_4169c9:                                  ; preds = %block_416950, %block_416937, %block_.L_4169c4
  %742 = phi i64 [ %452, %block_416937 ], [ %707, %block_.L_4169c4 ], [ %610, %block_416950 ]
  %743 = phi i64 [ %538, %block_416937 ], [ %741, %block_.L_4169c4 ], [ %609, %block_416950 ]
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.2, %block_416937 ], [ %706, %block_.L_4169c4 ], [ %597, %block_416950 ]
  %744 = add i64 %742, -68
  %745 = add i64 %743, 8
  store i64 %745, i64* %3, align 8
  %746 = inttoptr i64 %744 to i32*
  %747 = load i32, i32* %746, align 4
  %748 = add i32 %747, 1
  %749 = zext i32 %748 to i64
  store i64 %749, i64* %RAX.i646, align 8
  %750 = icmp eq i32 %747, -1
  %751 = icmp eq i32 %748, 0
  %752 = or i1 %750, %751
  %753 = zext i1 %752 to i8
  store i8 %753, i8* %14, align 1
  %754 = and i32 %748, 255
  %755 = tail call i32 @llvm.ctpop.i32(i32 %754)
  %756 = trunc i32 %755 to i8
  %757 = and i8 %756, 1
  %758 = xor i8 %757, 1
  store i8 %758, i8* %21, align 1
  %759 = xor i32 %748, %747
  %760 = lshr i32 %759, 4
  %761 = trunc i32 %760 to i8
  %762 = and i8 %761, 1
  store i8 %762, i8* %26, align 1
  %763 = zext i1 %751 to i8
  store i8 %763, i8* %29, align 1
  %764 = lshr i32 %748, 31
  %765 = trunc i32 %764 to i8
  store i8 %765, i8* %32, align 1
  %766 = lshr i32 %747, 31
  %767 = xor i32 %764, %766
  %768 = add nuw nsw i32 %767, %764
  %769 = icmp eq i32 %768, 2
  %770 = zext i1 %769 to i8
  store i8 %770, i8* %38, align 1
  %771 = add i64 %743, 14
  store i64 %771, i64* %3, align 8
  store i32 %748, i32* %746, align 4
  %772 = load i64, i64* %3, align 8
  %773 = add i64 %772, -172
  store i64 %773, i64* %3, align 8
  br label %block_.L_41692b

block_.L_4169dc.loopexit:                         ; preds = %block_.L_41692b
  br label %block_.L_4169dc

block_.L_4169dc:                                  ; preds = %block_.L_4169dc.loopexit, %block_4169bf
  %774 = phi i64 [ %740, %block_4169bf ], [ %488, %block_.L_4169dc.loopexit ]
  %775 = phi i64 [ %707, %block_4169bf ], [ %452, %block_.L_4169dc.loopexit ]
  %MEMORY.4 = phi %struct.Memory* [ %706, %block_4169bf ], [ %MEMORY.2, %block_.L_4169dc.loopexit ]
  %776 = add i64 %775, -76
  %777 = add i64 %774, 4
  store i64 %777, i64* %3, align 8
  %778 = inttoptr i64 %776 to i32*
  %779 = load i32, i32* %778, align 4
  %780 = add i32 %779, -1
  %781 = icmp eq i32 %779, 0
  %782 = zext i1 %781 to i8
  store i8 %782, i8* %14, align 1
  %783 = and i32 %780, 255
  %784 = tail call i32 @llvm.ctpop.i32(i32 %783)
  %785 = trunc i32 %784 to i8
  %786 = and i8 %785, 1
  %787 = xor i8 %786, 1
  store i8 %787, i8* %21, align 1
  %788 = xor i32 %780, %779
  %789 = lshr i32 %788, 4
  %790 = trunc i32 %789 to i8
  %791 = and i8 %790, 1
  store i8 %791, i8* %26, align 1
  %792 = icmp eq i32 %780, 0
  %793 = zext i1 %792 to i8
  store i8 %793, i8* %29, align 1
  %794 = lshr i32 %780, 31
  %795 = trunc i32 %794 to i8
  store i8 %795, i8* %32, align 1
  %796 = lshr i32 %779, 31
  %797 = xor i32 %794, %796
  %798 = add nuw nsw i32 %797, %796
  %799 = icmp eq i32 %798, 2
  %800 = zext i1 %799 to i8
  store i8 %800, i8* %38, align 1
  %801 = icmp ne i8 %795, 0
  %802 = xor i1 %801, %799
  %803 = or i1 %792, %802
  %.v105 = select i1 %803, i64 91, i64 10
  %804 = add i64 %774, %.v105
  store i64 %804, i64* %3, align 8
  br i1 %803, label %block_.L_416a37, label %block_4169e6

block_4169e6:                                     ; preds = %block_.L_4169dc
  %805 = add i64 %775, -72
  %806 = add i64 %804, 4
  store i64 %806, i64* %3, align 8
  %807 = inttoptr i64 %805 to i32*
  %808 = load i32, i32* %807, align 4
  %809 = sext i32 %808 to i64
  store i64 %809, i64* %RAX.i646, align 8
  %810 = add i64 %775, -24
  %811 = add i64 %804, 8
  store i64 %811, i64* %3, align 8
  %812 = inttoptr i64 %810 to i64*
  %813 = load i64, i64* %812, align 8
  store i64 %813, i64* %RCX.i918, align 8
  %814 = add i64 %775, -68
  %815 = add i64 %804, 12
  store i64 %815, i64* %3, align 8
  %816 = inttoptr i64 %814 to i32*
  %817 = load i32, i32* %816, align 4
  %818 = sext i32 %817 to i64
  %819 = shl nsw i64 %818, 4
  store i64 %819, i64* %RDX.i840, align 8
  %820 = add i64 %819, %813
  store i64 %820, i64* %RCX.i918, align 8
  %821 = icmp ult i64 %820, %813
  %822 = icmp ult i64 %820, %819
  %823 = or i1 %821, %822
  %824 = zext i1 %823 to i8
  store i8 %824, i8* %14, align 1
  %825 = trunc i64 %820 to i32
  %826 = and i32 %825, 255
  %827 = tail call i32 @llvm.ctpop.i32(i32 %826)
  %828 = trunc i32 %827 to i8
  %829 = and i8 %828, 1
  %830 = xor i8 %829, 1
  store i8 %830, i8* %21, align 1
  %831 = xor i64 %819, %813
  %832 = xor i64 %831, %820
  %833 = lshr i64 %832, 4
  %834 = trunc i64 %833 to i8
  %835 = and i8 %834, 1
  store i8 %835, i8* %26, align 1
  %836 = icmp eq i64 %820, 0
  %837 = zext i1 %836 to i8
  store i8 %837, i8* %29, align 1
  %838 = lshr i64 %820, 63
  %839 = trunc i64 %838 to i8
  store i8 %839, i8* %32, align 1
  %840 = lshr i64 %813, 63
  %841 = lshr i64 %818, 59
  %842 = and i64 %841, 1
  %843 = xor i64 %838, %840
  %844 = xor i64 %838, %842
  %845 = add nuw nsw i64 %843, %844
  %846 = icmp eq i64 %845, 2
  %847 = zext i1 %846 to i8
  store i8 %847, i8* %38, align 1
  %848 = inttoptr i64 %820 to i64*
  %849 = add i64 %804, 22
  store i64 %849, i64* %3, align 8
  %850 = load i64, i64* %848, align 8
  store i64 %850, i64* %RDI.i893, align 8
  %851 = add i64 %775, -96
  %852 = add i64 %804, 26
  store i64 %852, i64* %3, align 8
  %853 = inttoptr i64 %851 to i64*
  store i64 %809, i64* %853, align 8
  %854 = load i64, i64* %3, align 8
  %855 = add i64 %854, -87456
  %856 = add i64 %854, 5
  %857 = load i64, i64* %6, align 8
  %858 = add i64 %857, -8
  %859 = inttoptr i64 %858 to i64*
  store i64 %856, i64* %859, align 8
  store i64 %858, i64* %6, align 8
  store i64 %855, i64* %3, align 8
  %860 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %MEMORY.4)
  %861 = load i64, i64* %RBP.i, align 8
  %862 = add i64 %861, -96
  %863 = load i64, i64* %3, align 8
  %864 = add i64 %863, 4
  store i64 %864, i64* %3, align 8
  %865 = inttoptr i64 %862 to i64*
  %866 = load i64, i64* %865, align 8
  store i64 %866, i64* %RCX.i918, align 8
  %867 = load i64, i64* %RAX.i646, align 8
  %868 = sub i64 %866, %867
  %869 = icmp ult i64 %866, %867
  %870 = zext i1 %869 to i8
  store i8 %870, i8* %14, align 1
  %871 = trunc i64 %868 to i32
  %872 = and i32 %871, 255
  %873 = tail call i32 @llvm.ctpop.i32(i32 %872)
  %874 = trunc i32 %873 to i8
  %875 = and i8 %874, 1
  %876 = xor i8 %875, 1
  store i8 %876, i8* %21, align 1
  %877 = xor i64 %867, %866
  %878 = xor i64 %877, %868
  %879 = lshr i64 %878, 4
  %880 = trunc i64 %879 to i8
  %881 = and i8 %880, 1
  store i8 %881, i8* %26, align 1
  %882 = icmp eq i64 %868, 0
  %883 = zext i1 %882 to i8
  store i8 %883, i8* %29, align 1
  %884 = lshr i64 %868, 63
  %885 = trunc i64 %884 to i8
  store i8 %885, i8* %32, align 1
  %886 = lshr i64 %866, 63
  %887 = lshr i64 %867, 63
  %888 = xor i64 %887, %886
  %889 = xor i64 %884, %886
  %890 = add nuw nsw i64 %889, %888
  %891 = icmp eq i64 %890, 2
  %892 = zext i1 %891 to i8
  store i8 %892, i8* %38, align 1
  %.v106 = select i1 %882, i64 50, i64 13
  %893 = add i64 %863, %.v106
  store i64 %893, i64* %3, align 8
  br i1 %882, label %block_.L_416a37, label %block_416a12

block_416a12:                                     ; preds = %block_4169e6
  store i64 ptrtoint (%G__0x456a2a_type* @G__0x456a2a to i64), i64* %RDI.i893, align 8
  %894 = add i64 %861, -16
  %895 = add i64 %893, 14
  store i64 %895, i64* %3, align 8
  %896 = inttoptr i64 %894 to i64*
  %897 = load i64, i64* %896, align 8
  store i64 %897, i64* %RAX.i646, align 8
  %898 = load i32, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*), align 8
  %899 = sext i32 %898 to i64
  store i64 %899, i64* %RCX.i918, align 8
  %900 = shl nsw i64 %899, 3
  %901 = add i64 %900, %897
  %902 = add i64 %893, 26
  store i64 %902, i64* %3, align 8
  %903 = inttoptr i64 %901 to i64*
  %904 = load i64, i64* %903, align 8
  store i64 %904, i64* %RSI.i789, align 8
  %905 = add i64 %861, -40
  %906 = add i64 %893, 30
  store i64 %906, i64* %3, align 8
  %907 = inttoptr i64 %905 to i64*
  %908 = load i64, i64* %907, align 8
  store i64 %908, i64* %RDX.i840, align 8
  %AL.i578 = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i578, align 1
  %909 = add i64 %893, 163838
  %910 = add i64 %893, 37
  %911 = load i64, i64* %6, align 8
  %912 = add i64 %911, -8
  %913 = inttoptr i64 %912 to i64*
  store i64 %910, i64* %913, align 8
  store i64 %912, i64* %6, align 8
  store i64 %909, i64* %3, align 8
  %call2_416a32 = tail call %struct.Memory* @sub_43ea10.Die(%struct.State* nonnull %0, i64 %909, %struct.Memory* %860)
  %.pre64 = load i64, i64* %RBP.i, align 8
  %.pre65 = load i64, i64* %3, align 8
  br label %block_.L_416a37

block_.L_416a37:                                  ; preds = %block_416a12, %block_4169e6, %block_.L_4169dc
  %914 = phi i64 [ %804, %block_.L_4169dc ], [ %893, %block_4169e6 ], [ %.pre65, %block_416a12 ]
  %915 = phi i64 [ %775, %block_.L_4169dc ], [ %861, %block_4169e6 ], [ %.pre64, %block_416a12 ]
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.4, %block_.L_4169dc ], [ %860, %block_4169e6 ], [ %call2_416a32, %block_416a12 ]
  %916 = add i64 %915, -76
  %917 = add i64 %914, 4
  store i64 %917, i64* %3, align 8
  %918 = inttoptr i64 %916 to i32*
  %919 = load i32, i32* %918, align 4
  store i8 0, i8* %14, align 1
  %920 = and i32 %919, 255
  %921 = tail call i32 @llvm.ctpop.i32(i32 %920)
  %922 = trunc i32 %921 to i8
  %923 = and i8 %922, 1
  %924 = xor i8 %923, 1
  store i8 %924, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %925 = icmp eq i32 %919, 0
  %926 = zext i1 %925 to i8
  store i8 %926, i8* %29, align 1
  %927 = lshr i32 %919, 31
  %928 = trunc i32 %927 to i8
  store i8 %928, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v107 = select i1 %925, i64 10, i64 47
  %929 = add i64 %914, %.v107
  store i64 %929, i64* %3, align 8
  br i1 %925, label %block_416a41, label %block_.L_416a66

block_416a41:                                     ; preds = %block_.L_416a37
  store i64 ptrtoint (%G__0x456a60_type* @G__0x456a60 to i64), i64* %RDI.i893, align 8
  %930 = add i64 %915, -16
  %931 = add i64 %929, 14
  store i64 %931, i64* %3, align 8
  %932 = inttoptr i64 %930 to i64*
  %933 = load i64, i64* %932, align 8
  store i64 %933, i64* %RAX.i646, align 8
  %934 = load i32, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*), align 8
  %935 = sext i32 %934 to i64
  store i64 %935, i64* %RCX.i918, align 8
  %936 = shl nsw i64 %935, 3
  %937 = add i64 %936, %933
  %938 = add i64 %929, 26
  store i64 %938, i64* %3, align 8
  %939 = inttoptr i64 %937 to i64*
  %940 = load i64, i64* %939, align 8
  store i64 %940, i64* %RSI.i789, align 8
  %941 = add i64 %915, -40
  %942 = add i64 %929, 30
  store i64 %942, i64* %3, align 8
  %943 = inttoptr i64 %941 to i64*
  %944 = load i64, i64* %943, align 8
  store i64 %944, i64* %RDX.i840, align 8
  %AL.i558 = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i558, align 1
  %945 = add i64 %929, 163791
  %946 = add i64 %929, 37
  %947 = load i64, i64* %6, align 8
  %948 = add i64 %947, -8
  %949 = inttoptr i64 %948 to i64*
  store i64 %946, i64* %949, align 8
  store i64 %948, i64* %6, align 8
  store i64 %945, i64* %3, align 8
  %call2_416a61 = tail call %struct.Memory* @sub_43ea10.Die(%struct.State* nonnull %0, i64 %945, %struct.Memory* %MEMORY.5)
  %.pre66 = load i64, i64* %RBP.i, align 8
  %.pre67 = load i64, i64* %3, align 8
  br label %block_.L_416a66

block_.L_416a66:                                  ; preds = %block_.L_416a37, %block_416a41
  %950 = phi i64 [ %929, %block_.L_416a37 ], [ %.pre67, %block_416a41 ]
  %951 = phi i64 [ %915, %block_.L_416a37 ], [ %.pre66, %block_416a41 ]
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.5, %block_.L_416a37 ], [ %call2_416a61, %block_416a41 ]
  %952 = add i64 %951, -24
  %953 = add i64 %950, 4
  store i64 %953, i64* %3, align 8
  %954 = inttoptr i64 %952 to i64*
  %955 = load i64, i64* %954, align 8
  store i64 %955, i64* %RAX.i646, align 8
  %956 = add i64 %951, -80
  %957 = add i64 %950, 8
  store i64 %957, i64* %3, align 8
  %958 = inttoptr i64 %956 to i32*
  %959 = load i32, i32* %958, align 4
  %960 = sext i32 %959 to i64
  %961 = shl nsw i64 %960, 4
  store i64 %961, i64* %RCX.i918, align 8
  %962 = add i64 %961, %955
  store i64 %962, i64* %RAX.i646, align 8
  %963 = icmp ult i64 %962, %955
  %964 = icmp ult i64 %962, %961
  %965 = or i1 %963, %964
  %966 = zext i1 %965 to i8
  store i8 %966, i8* %14, align 1
  %967 = trunc i64 %962 to i32
  %968 = and i32 %967, 255
  %969 = tail call i32 @llvm.ctpop.i32(i32 %968)
  %970 = trunc i32 %969 to i8
  %971 = and i8 %970, 1
  %972 = xor i8 %971, 1
  store i8 %972, i8* %21, align 1
  %973 = xor i64 %961, %955
  %974 = xor i64 %973, %962
  %975 = lshr i64 %974, 4
  %976 = trunc i64 %975 to i8
  %977 = and i8 %976, 1
  store i8 %977, i8* %26, align 1
  %978 = icmp eq i64 %962, 0
  %979 = zext i1 %978 to i8
  store i8 %979, i8* %29, align 1
  %980 = lshr i64 %962, 63
  %981 = trunc i64 %980 to i8
  store i8 %981, i8* %32, align 1
  %982 = lshr i64 %955, 63
  %983 = lshr i64 %960, 59
  %984 = and i64 %983, 1
  %985 = xor i64 %980, %982
  %986 = xor i64 %980, %984
  %987 = add nuw nsw i64 %985, %986
  %988 = icmp eq i64 %987, 2
  %989 = zext i1 %988 to i8
  store i8 %989, i8* %38, align 1
  %990 = inttoptr i64 %962 to i64*
  %991 = add i64 %950, 18
  store i64 %991, i64* %3, align 8
  %992 = load i64, i64* %990, align 8
  store i64 %992, i64* %RAX.i646, align 8
  %993 = add i64 %951, -56
  %994 = add i64 %950, 22
  store i64 %994, i64* %3, align 8
  %995 = inttoptr i64 %993 to i64*
  %996 = load i64, i64* %995, align 8
  store i64 %996, i64* %RCX.i918, align 8
  %997 = add i64 %950, 25
  store i64 %997, i64* %3, align 8
  %998 = inttoptr i64 %996 to i64*
  store i64 %992, i64* %998, align 8
  %999 = load i64, i64* %RBP.i, align 8
  %1000 = add i64 %999, -24
  %1001 = load i64, i64* %3, align 8
  %1002 = add i64 %1001, 4
  store i64 %1002, i64* %3, align 8
  %1003 = inttoptr i64 %1000 to i64*
  %1004 = load i64, i64* %1003, align 8
  store i64 %1004, i64* %RAX.i646, align 8
  %1005 = add i64 %999, -80
  %1006 = add i64 %1001, 8
  store i64 %1006, i64* %3, align 8
  %1007 = inttoptr i64 %1005 to i32*
  %1008 = load i32, i32* %1007, align 4
  %1009 = sext i32 %1008 to i64
  %1010 = shl nsw i64 %1009, 4
  store i64 %1010, i64* %RCX.i918, align 8
  %1011 = add i64 %1010, %1004
  store i64 %1011, i64* %RAX.i646, align 8
  %1012 = icmp ult i64 %1011, %1004
  %1013 = icmp ult i64 %1011, %1010
  %1014 = or i1 %1012, %1013
  %1015 = zext i1 %1014 to i8
  store i8 %1015, i8* %14, align 1
  %1016 = trunc i64 %1011 to i32
  %1017 = and i32 %1016, 255
  %1018 = tail call i32 @llvm.ctpop.i32(i32 %1017)
  %1019 = trunc i32 %1018 to i8
  %1020 = and i8 %1019, 1
  %1021 = xor i8 %1020, 1
  store i8 %1021, i8* %21, align 1
  %1022 = xor i64 %1010, %1004
  %1023 = xor i64 %1022, %1011
  %1024 = lshr i64 %1023, 4
  %1025 = trunc i64 %1024 to i8
  %1026 = and i8 %1025, 1
  store i8 %1026, i8* %26, align 1
  %1027 = icmp eq i64 %1011, 0
  %1028 = zext i1 %1027 to i8
  store i8 %1028, i8* %29, align 1
  %1029 = lshr i64 %1011, 63
  %1030 = trunc i64 %1029 to i8
  store i8 %1030, i8* %32, align 1
  %1031 = lshr i64 %1004, 63
  %1032 = lshr i64 %1009, 59
  %1033 = and i64 %1032, 1
  %1034 = xor i64 %1029, %1031
  %1035 = xor i64 %1029, %1033
  %1036 = add nuw nsw i64 %1034, %1035
  %1037 = icmp eq i64 %1036, 2
  %1038 = zext i1 %1037 to i8
  store i8 %1038, i8* %38, align 1
  %1039 = add i64 %1011, 12
  %1040 = add i64 %1001, 19
  store i64 %1040, i64* %3, align 8
  %1041 = inttoptr i64 %1039 to i32*
  %1042 = load i32, i32* %1041, align 4
  %1043 = icmp eq i32 %1042, 0
  %.v108 = select i1 %1043, i64 207, i64 25
  %1044 = add i64 %1001, %.v108
  %1045 = add i64 %1044, 9
  store i64 %1045, i64* %3, align 8
  %1046 = load i64, i64* bitcast (%G_0x663070_type* @G_0x663070 to i64*), align 8
  store i8 0, i8* %14, align 1
  %1047 = trunc i64 %1046 to i32
  %1048 = and i32 %1047, 255
  %1049 = tail call i32 @llvm.ctpop.i32(i32 %1048)
  %1050 = trunc i32 %1049 to i8
  %1051 = and i8 %1050, 1
  %1052 = xor i8 %1051, 1
  store i8 %1052, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1053 = icmp eq i64 %1046, 0
  %1054 = zext i1 %1053 to i8
  store i8 %1054, i8* %29, align 1
  %1055 = lshr i64 %1046, 63
  %1056 = trunc i64 %1055 to i8
  store i8 %1056, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br i1 %1043, label %block_.L_416b4e, label %block_416a98

block_416a98:                                     ; preds = %block_.L_416a66
  %.v109 = select i1 %1053, i64 64, i64 15
  %1057 = add i64 %1044, %.v109
  store i64 %1057, i64* %3, align 8
  br i1 %1053, label %block_.L_416ad8, label %block_416aa7

block_416aa7:                                     ; preds = %block_416a98
  store i64 %1046, i64* %RAX.i646, align 8
  %1058 = load i64, i64* %RBP.i, align 8
  %1059 = add i64 %1058, -64
  %1060 = add i64 %1057, 12
  store i64 %1060, i64* %3, align 8
  %1061 = inttoptr i64 %1059 to i64*
  %1062 = load i64, i64* %1061, align 8
  store i64 %1062, i64* %RCX.i918, align 8
  %1063 = add i64 %1057, 15
  store i64 %1063, i64* %3, align 8
  %1064 = inttoptr i64 %1062 to i64*
  store i64 %1046, i64* %1064, align 8
  %1065 = load i64, i64* %3, align 8
  store i64 0, i64* bitcast (%G_0x663070_type* @G_0x663070 to i64*), align 8
  %1066 = load i32, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*), align 8
  %1067 = add i32 %1066, 1
  %1068 = zext i32 %1067 to i64
  store i64 %1068, i64* %RDX.i840, align 8
  %1069 = icmp eq i32 %1066, -1
  %1070 = icmp eq i32 %1067, 0
  %1071 = or i1 %1069, %1070
  %1072 = zext i1 %1071 to i8
  store i8 %1072, i8* %14, align 1
  %1073 = and i32 %1067, 255
  %1074 = tail call i32 @llvm.ctpop.i32(i32 %1073)
  %1075 = trunc i32 %1074 to i8
  %1076 = and i8 %1075, 1
  %1077 = xor i8 %1076, 1
  store i8 %1077, i8* %21, align 1
  %1078 = xor i32 %1067, %1066
  %1079 = lshr i32 %1078, 4
  %1080 = trunc i32 %1079 to i8
  %1081 = and i8 %1080, 1
  store i8 %1081, i8* %26, align 1
  %1082 = zext i1 %1070 to i8
  store i8 %1082, i8* %29, align 1
  %1083 = lshr i32 %1067, 31
  %1084 = trunc i32 %1083 to i8
  store i8 %1084, i8* %32, align 1
  %1085 = lshr i32 %1066, 31
  %1086 = xor i32 %1083, %1085
  %1087 = add nuw nsw i32 %1086, %1083
  %1088 = icmp eq i32 %1087, 2
  %1089 = zext i1 %1088 to i8
  store i8 %1089, i8* %38, align 1
  %1090 = add i64 %1065, 29
  store i64 %1090, i64* %3, align 8
  store i32 %1067, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*), align 8
  %1091 = add i64 %1065, 147
  br label %block_.L_416b49

block_.L_416ad8:                                  ; preds = %block_416a98
  %1092 = load i32, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*), align 8
  %1093 = add i32 %1092, 1
  %1094 = zext i32 %1093 to i64
  store i64 %1094, i64* %RAX.i646, align 8
  %1095 = icmp eq i32 %1092, -1
  %1096 = icmp eq i32 %1093, 0
  %1097 = or i1 %1095, %1096
  %1098 = zext i1 %1097 to i8
  store i8 %1098, i8* %14, align 1
  %1099 = and i32 %1093, 255
  %1100 = tail call i32 @llvm.ctpop.i32(i32 %1099)
  %1101 = trunc i32 %1100 to i8
  %1102 = and i8 %1101, 1
  %1103 = xor i8 %1102, 1
  store i8 %1103, i8* %21, align 1
  %1104 = xor i32 %1093, %1092
  %1105 = lshr i32 %1104, 4
  %1106 = trunc i32 %1105 to i8
  %1107 = and i8 %1106, 1
  store i8 %1107, i8* %26, align 1
  %1108 = zext i1 %1096 to i8
  store i8 %1108, i8* %29, align 1
  %1109 = lshr i32 %1093, 31
  %1110 = trunc i32 %1109 to i8
  store i8 %1110, i8* %32, align 1
  %1111 = lshr i32 %1092, 31
  %1112 = xor i32 %1109, %1111
  %1113 = add nuw nsw i32 %1112, %1109
  %1114 = icmp eq i32 %1113, 2
  %1115 = zext i1 %1114 to i8
  store i8 %1115, i8* %38, align 1
  %1116 = load i64, i64* %RBP.i, align 8
  %1117 = add i64 %1116, -8
  %1118 = add i64 %1057, 13
  store i64 %1118, i64* %3, align 8
  %1119 = inttoptr i64 %1117 to i32*
  %1120 = load i32, i32* %1119, align 4
  %1121 = sub i32 %1093, %1120
  %1122 = icmp ult i32 %1093, %1120
  %1123 = zext i1 %1122 to i8
  store i8 %1123, i8* %14, align 1
  %1124 = and i32 %1121, 255
  %1125 = tail call i32 @llvm.ctpop.i32(i32 %1124)
  %1126 = trunc i32 %1125 to i8
  %1127 = and i8 %1126, 1
  %1128 = xor i8 %1127, 1
  store i8 %1128, i8* %21, align 1
  %1129 = xor i32 %1120, %1093
  %1130 = xor i32 %1129, %1121
  %1131 = lshr i32 %1130, 4
  %1132 = trunc i32 %1131 to i8
  %1133 = and i8 %1132, 1
  store i8 %1133, i8* %26, align 1
  %1134 = icmp eq i32 %1121, 0
  %1135 = zext i1 %1134 to i8
  store i8 %1135, i8* %29, align 1
  %1136 = lshr i32 %1121, 31
  %1137 = trunc i32 %1136 to i8
  store i8 %1137, i8* %32, align 1
  %1138 = lshr i32 %1120, 31
  %1139 = xor i32 %1138, %1109
  %1140 = xor i32 %1136, %1109
  %1141 = add nuw nsw i32 %1140, %1139
  %1142 = icmp eq i32 %1141, 2
  %1143 = zext i1 %1142 to i8
  store i8 %1143, i8* %38, align 1
  %1144 = icmp ne i8 %1137, 0
  %1145 = xor i1 %1144, %1142
  %.v110 = select i1 %1145, i64 63, i64 19
  %1146 = add i64 %1057, %.v110
  store i64 %1146, i64* %3, align 8
  br i1 %1145, label %block_.L_416b17, label %block_416aeb

block_416aeb:                                     ; preds = %block_.L_416ad8
  store i64 ptrtoint (%G__0x456a78_type* @G__0x456a78 to i64), i64* %RDI.i893, align 8
  %1147 = add i64 %1116, -24
  %1148 = add i64 %1146, 14
  store i64 %1148, i64* %3, align 8
  %1149 = inttoptr i64 %1147 to i64*
  %1150 = load i64, i64* %1149, align 8
  store i64 %1150, i64* %RAX.i646, align 8
  %1151 = add i64 %1116, -80
  %1152 = add i64 %1146, 18
  store i64 %1152, i64* %3, align 8
  %1153 = inttoptr i64 %1151 to i32*
  %1154 = load i32, i32* %1153, align 4
  %1155 = sext i32 %1154 to i64
  %1156 = shl nsw i64 %1155, 4
  store i64 %1156, i64* %RCX.i918, align 8
  %1157 = add i64 %1156, %1150
  store i64 %1157, i64* %RAX.i646, align 8
  %1158 = icmp ult i64 %1157, %1150
  %1159 = icmp ult i64 %1157, %1156
  %1160 = or i1 %1158, %1159
  %1161 = zext i1 %1160 to i8
  store i8 %1161, i8* %14, align 1
  %1162 = trunc i64 %1157 to i32
  %1163 = and i32 %1162, 255
  %1164 = tail call i32 @llvm.ctpop.i32(i32 %1163)
  %1165 = trunc i32 %1164 to i8
  %1166 = and i8 %1165, 1
  %1167 = xor i8 %1166, 1
  store i8 %1167, i8* %21, align 1
  %1168 = xor i64 %1156, %1150
  %1169 = xor i64 %1168, %1157
  %1170 = lshr i64 %1169, 4
  %1171 = trunc i64 %1170 to i8
  %1172 = and i8 %1171, 1
  store i8 %1172, i8* %26, align 1
  %1173 = icmp eq i64 %1157, 0
  %1174 = zext i1 %1173 to i8
  store i8 %1174, i8* %29, align 1
  %1175 = lshr i64 %1157, 63
  %1176 = trunc i64 %1175 to i8
  store i8 %1176, i8* %32, align 1
  %1177 = lshr i64 %1150, 63
  %1178 = lshr i64 %1155, 59
  %1179 = and i64 %1178, 1
  %1180 = xor i64 %1175, %1177
  %1181 = xor i64 %1175, %1179
  %1182 = add nuw nsw i64 %1180, %1181
  %1183 = icmp eq i64 %1182, 2
  %1184 = zext i1 %1183 to i8
  store i8 %1184, i8* %38, align 1
  %1185 = inttoptr i64 %1157 to i64*
  %1186 = add i64 %1146, 28
  store i64 %1186, i64* %3, align 8
  %1187 = load i64, i64* %1185, align 8
  store i64 %1187, i64* %RSI.i789, align 8
  %1188 = add i64 %1116, -40
  %1189 = add i64 %1146, 32
  store i64 %1189, i64* %3, align 8
  %1190 = inttoptr i64 %1188 to i64*
  %1191 = load i64, i64* %1190, align 8
  store i64 %1191, i64* %RDX.i840, align 8
  %AL.i477 = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i477, align 1
  %1192 = add i64 %1146, 163621
  %1193 = add i64 %1146, 39
  %1194 = load i64, i64* %6, align 8
  %1195 = add i64 %1194, -8
  %1196 = inttoptr i64 %1195 to i64*
  store i64 %1193, i64* %1196, align 8
  store i64 %1195, i64* %6, align 8
  store i64 %1192, i64* %3, align 8
  %call2_416b0d = tail call %struct.Memory* @sub_43ea10.Die(%struct.State* nonnull %0, i64 %1192, %struct.Memory* %MEMORY.6)
  %1197 = load i64, i64* %3, align 8
  %1198 = add i64 %1197, 50
  store i64 %1198, i64* %3, align 8
  br label %block_.L_416b44

block_.L_416b17:                                  ; preds = %block_.L_416ad8
  %1199 = add i64 %1116, -16
  %1200 = add i64 %1146, 4
  store i64 %1200, i64* %3, align 8
  %1201 = inttoptr i64 %1199 to i64*
  %1202 = load i64, i64* %1201, align 8
  store i64 %1202, i64* %RAX.i646, align 8
  store i64 %1094, i64* %RCX.i918, align 8
  store i8 %1098, i8* %14, align 1
  store i8 %1103, i8* %21, align 1
  store i8 %1107, i8* %26, align 1
  store i8 %1108, i8* %29, align 1
  store i8 %1110, i8* %32, align 1
  store i8 %1115, i8* %38, align 1
  %1203 = sext i32 %1093 to i64
  store i64 %1203, i64* %RDX.i840, align 8
  %1204 = shl nsw i64 %1203, 3
  %1205 = add i64 %1202, %1204
  %1206 = add i64 %1146, 21
  store i64 %1206, i64* %3, align 8
  %1207 = inttoptr i64 %1205 to i64*
  %1208 = load i64, i64* %1207, align 8
  store i64 %1208, i64* %RAX.i646, align 8
  %1209 = add i64 %1116, -64
  %1210 = add i64 %1146, 25
  store i64 %1210, i64* %3, align 8
  %1211 = inttoptr i64 %1209 to i64*
  %1212 = load i64, i64* %1211, align 8
  store i64 %1212, i64* %RDX.i840, align 8
  %1213 = add i64 %1146, 28
  store i64 %1213, i64* %3, align 8
  %1214 = inttoptr i64 %1212 to i64*
  store i64 %1208, i64* %1214, align 8
  %1215 = load i64, i64* %3, align 8
  %1216 = add i32 %1092, 2
  %1217 = zext i32 %1216 to i64
  store i64 %1217, i64* %RCX.i918, align 8
  %1218 = icmp ugt i32 %1092, -3
  %1219 = zext i1 %1218 to i8
  store i8 %1219, i8* %14, align 1
  %1220 = and i32 %1216, 255
  %1221 = tail call i32 @llvm.ctpop.i32(i32 %1220)
  %1222 = trunc i32 %1221 to i8
  %1223 = and i8 %1222, 1
  %1224 = xor i8 %1223, 1
  store i8 %1224, i8* %21, align 1
  %1225 = xor i32 %1216, %1092
  %1226 = lshr i32 %1225, 4
  %1227 = trunc i32 %1226 to i8
  %1228 = and i8 %1227, 1
  store i8 %1228, i8* %26, align 1
  %1229 = icmp eq i32 %1216, 0
  %1230 = zext i1 %1229 to i8
  store i8 %1230, i8* %29, align 1
  %1231 = lshr i32 %1216, 31
  %1232 = trunc i32 %1231 to i8
  store i8 %1232, i8* %32, align 1
  %1233 = xor i32 %1231, %1111
  %1234 = add nuw nsw i32 %1233, %1231
  %1235 = icmp eq i32 %1234, 2
  %1236 = zext i1 %1235 to i8
  store i8 %1236, i8* %38, align 1
  %1237 = add i64 %1215, 17
  store i64 %1237, i64* %3, align 8
  store i32 %1216, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*), align 8
  br label %block_.L_416b44

block_.L_416b44:                                  ; preds = %block_.L_416b17, %block_416aeb
  %1238 = phi i64 [ %1237, %block_.L_416b17 ], [ %1198, %block_416aeb ]
  %MEMORY.7 = phi %struct.Memory* [ %MEMORY.6, %block_.L_416b17 ], [ %call2_416b0d, %block_416aeb ]
  %1239 = add i64 %1238, 5
  store i64 %1239, i64* %3, align 8
  br label %block_.L_416b49

block_.L_416b49:                                  ; preds = %block_.L_416b44, %block_416aa7
  %storemerge = phi i64 [ %1091, %block_416aa7 ], [ %1239, %block_.L_416b44 ]
  %MEMORY.8 = phi %struct.Memory* [ %MEMORY.6, %block_416aa7 ], [ %MEMORY.7, %block_.L_416b44 ]
  %1240 = add i64 %storemerge, 87
  store i64 %1240, i64* %3, align 8
  br label %block_.L_416ba0

block_.L_416b4e:                                  ; preds = %block_.L_416a66
  %.v111 = select i1 %1053, i64 54, i64 15
  %1241 = add i64 %1044, %.v111
  store i64 %1241, i64* %3, align 8
  br i1 %1053, label %block_.L_416b84, label %block_416b5d

block_416b5d:                                     ; preds = %block_.L_416b4e
  store i64 ptrtoint (%G__0x456a9a_type* @G__0x456a9a to i64), i64* %RDI.i893, align 8
  %1242 = load i64, i64* %RBP.i, align 8
  %1243 = add i64 %1242, -24
  %1244 = add i64 %1241, 14
  store i64 %1244, i64* %3, align 8
  %1245 = inttoptr i64 %1243 to i64*
  %1246 = load i64, i64* %1245, align 8
  store i64 %1246, i64* %RAX.i646, align 8
  %1247 = add i64 %1242, -80
  %1248 = add i64 %1241, 18
  store i64 %1248, i64* %3, align 8
  %1249 = inttoptr i64 %1247 to i32*
  %1250 = load i32, i32* %1249, align 4
  %1251 = sext i32 %1250 to i64
  %1252 = shl nsw i64 %1251, 4
  store i64 %1252, i64* %RCX.i918, align 8
  %1253 = add i64 %1252, %1246
  store i64 %1253, i64* %RAX.i646, align 8
  %1254 = icmp ult i64 %1253, %1246
  %1255 = icmp ult i64 %1253, %1252
  %1256 = or i1 %1254, %1255
  %1257 = zext i1 %1256 to i8
  store i8 %1257, i8* %14, align 1
  %1258 = trunc i64 %1253 to i32
  %1259 = and i32 %1258, 255
  %1260 = tail call i32 @llvm.ctpop.i32(i32 %1259)
  %1261 = trunc i32 %1260 to i8
  %1262 = and i8 %1261, 1
  %1263 = xor i8 %1262, 1
  store i8 %1263, i8* %21, align 1
  %1264 = xor i64 %1252, %1246
  %1265 = xor i64 %1264, %1253
  %1266 = lshr i64 %1265, 4
  %1267 = trunc i64 %1266 to i8
  %1268 = and i8 %1267, 1
  store i8 %1268, i8* %26, align 1
  %1269 = icmp eq i64 %1253, 0
  %1270 = zext i1 %1269 to i8
  store i8 %1270, i8* %29, align 1
  %1271 = lshr i64 %1253, 63
  %1272 = trunc i64 %1271 to i8
  store i8 %1272, i8* %32, align 1
  %1273 = lshr i64 %1246, 63
  %1274 = lshr i64 %1251, 59
  %1275 = and i64 %1274, 1
  %1276 = xor i64 %1271, %1273
  %1277 = xor i64 %1271, %1275
  %1278 = add nuw nsw i64 %1276, %1277
  %1279 = icmp eq i64 %1278, 2
  %1280 = zext i1 %1279 to i8
  store i8 %1280, i8* %38, align 1
  %1281 = inttoptr i64 %1253 to i64*
  %1282 = add i64 %1241, 28
  store i64 %1282, i64* %3, align 8
  %1283 = load i64, i64* %1281, align 8
  store i64 %1283, i64* %RSI.i789, align 8
  %1284 = add i64 %1242, -40
  %1285 = add i64 %1241, 32
  store i64 %1285, i64* %3, align 8
  %1286 = inttoptr i64 %1284 to i64*
  %1287 = load i64, i64* %1286, align 8
  store i64 %1287, i64* %RDX.i840, align 8
  %AL.i425 = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i425, align 1
  %1288 = add i64 %1241, 163507
  %1289 = add i64 %1241, 39
  %1290 = load i64, i64* %6, align 8
  %1291 = add i64 %1290, -8
  %1292 = inttoptr i64 %1291 to i64*
  store i64 %1289, i64* %1292, align 8
  store i64 %1291, i64* %6, align 8
  store i64 %1288, i64* %3, align 8
  %call2_416b7f = tail call %struct.Memory* @sub_43ea10.Die(%struct.State* nonnull %0, i64 %1288, %struct.Memory* %MEMORY.6)
  %.pre68 = load i64, i64* %3, align 8
  br label %block_.L_416b84

block_.L_416b84:                                  ; preds = %block_416b5d, %block_.L_416b4e
  %1293 = phi i64 [ %1241, %block_.L_416b4e ], [ %.pre68, %block_416b5d ]
  %MEMORY.9 = phi %struct.Memory* [ %MEMORY.6, %block_.L_416b4e ], [ %call2_416b7f, %block_416b5d ]
  %1294 = load i64, i64* %RBP.i, align 8
  %1295 = add i64 %1294, -64
  %1296 = add i64 %1293, 4
  store i64 %1296, i64* %3, align 8
  %1297 = inttoptr i64 %1295 to i64*
  %1298 = load i64, i64* %1297, align 8
  store i64 %1298, i64* %RAX.i646, align 8
  %1299 = add i64 %1293, 11
  store i64 %1299, i64* %3, align 8
  %1300 = inttoptr i64 %1298 to i64*
  store i64 0, i64* %1300, align 8
  %1301 = load i64, i64* %3, align 8
  %1302 = load i32, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*), align 8
  %1303 = add i32 %1302, 1
  %1304 = zext i32 %1303 to i64
  store i64 %1304, i64* %RCX.i918, align 8
  %1305 = icmp eq i32 %1302, -1
  %1306 = icmp eq i32 %1303, 0
  %1307 = or i1 %1305, %1306
  %1308 = zext i1 %1307 to i8
  store i8 %1308, i8* %14, align 1
  %1309 = and i32 %1303, 255
  %1310 = tail call i32 @llvm.ctpop.i32(i32 %1309)
  %1311 = trunc i32 %1310 to i8
  %1312 = and i8 %1311, 1
  %1313 = xor i8 %1312, 1
  store i8 %1313, i8* %21, align 1
  %1314 = xor i32 %1303, %1302
  %1315 = lshr i32 %1314, 4
  %1316 = trunc i32 %1315 to i8
  %1317 = and i8 %1316, 1
  store i8 %1317, i8* %26, align 1
  %1318 = zext i1 %1306 to i8
  store i8 %1318, i8* %29, align 1
  %1319 = lshr i32 %1303, 31
  %1320 = trunc i32 %1319 to i8
  store i8 %1320, i8* %32, align 1
  %1321 = lshr i32 %1302, 31
  %1322 = xor i32 %1319, %1321
  %1323 = add nuw nsw i32 %1322, %1319
  %1324 = icmp eq i32 %1323, 2
  %1325 = zext i1 %1324 to i8
  store i8 %1325, i8* %38, align 1
  %1326 = add i64 %1301, 17
  store i64 %1326, i64* %3, align 8
  store i32 %1303, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*), align 8
  br label %block_.L_416ba0

block_.L_416ba0:                                  ; preds = %block_.L_416b84, %block_.L_416b49
  %1327 = phi i64 [ %1326, %block_.L_416b84 ], [ %1240, %block_.L_416b49 ]
  %MEMORY.10 = phi %struct.Memory* [ %MEMORY.9, %block_.L_416b84 ], [ %MEMORY.8, %block_.L_416b49 ]
  %1328 = add i64 %1327, 550
  br label %block_.L_416dc6

block_.L_416ba5:                                  ; preds = %block_.L_41687a, %block_416889.block_.L_416ba5_crit_edge
  %1329 = phi i64 [ %315, %block_.L_41687a ], [ %.pre70, %block_416889.block_.L_416ba5_crit_edge ]
  %1330 = phi i64 [ %326, %block_.L_41687a ], [ %356, %block_416889.block_.L_416ba5_crit_edge ]
  %MEMORY.11 = phi %struct.Memory* [ %248, %block_.L_41687a ], [ %344, %block_416889.block_.L_416ba5_crit_edge ]
  store i8 0, i8* %14, align 1
  %1331 = trunc i64 %1329 to i32
  %1332 = and i32 %1331, 255
  %1333 = tail call i32 @llvm.ctpop.i32(i32 %1332)
  %1334 = trunc i32 %1333 to i8
  %1335 = and i8 %1334, 1
  %1336 = xor i8 %1335, 1
  store i8 %1336, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1337 = icmp eq i64 %1329, 0
  %1338 = zext i1 %1337 to i8
  store i8 %1338, i8* %29, align 1
  %1339 = lshr i64 %1329, 63
  %1340 = trunc i64 %1339 to i8
  store i8 %1340, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v86 = select i1 %1337, i64 15, i64 43
  %1341 = add i64 %1330, %.v86
  store i64 %1341, i64* %3, align 8
  %1342 = load i64, i64* %RBP.i, align 8
  br i1 %1337, label %block_416bb4, label %block_.L_416bd0

block_416bb4:                                     ; preds = %block_.L_416ba5
  %1343 = add i64 %1342, -16
  %1344 = add i64 %1341, 4
  store i64 %1344, i64* %3, align 8
  %1345 = inttoptr i64 %1343 to i64*
  %1346 = load i64, i64* %1345, align 8
  store i64 %1346, i64* %RAX.i646, align 8
  %1347 = load i32, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*), align 8
  %1348 = sext i32 %1347 to i64
  store i64 %1348, i64* %RCX.i918, align 8
  %1349 = shl nsw i64 %1348, 3
  %1350 = add i64 %1349, %1346
  %1351 = add i64 %1341, 16
  store i64 %1351, i64* %3, align 8
  %1352 = inttoptr i64 %1350 to i64*
  %1353 = load i64, i64* %1352, align 8
  %1354 = add i64 %1353, 1
  store i64 %1354, i64* %RAX.i646, align 8
  %1355 = icmp eq i64 %1353, -1
  %1356 = icmp eq i64 %1354, 0
  %1357 = or i1 %1355, %1356
  %1358 = zext i1 %1357 to i8
  store i8 %1358, i8* %14, align 1
  %1359 = trunc i64 %1354 to i32
  %1360 = and i32 %1359, 255
  %1361 = tail call i32 @llvm.ctpop.i32(i32 %1360)
  %1362 = trunc i32 %1361 to i8
  %1363 = and i8 %1362, 1
  %1364 = xor i8 %1363, 1
  store i8 %1364, i8* %21, align 1
  %1365 = xor i64 %1354, %1353
  %1366 = lshr i64 %1365, 4
  %1367 = trunc i64 %1366 to i8
  %1368 = and i8 %1367, 1
  store i8 %1368, i8* %26, align 1
  %1369 = zext i1 %1356 to i8
  store i8 %1369, i8* %29, align 1
  %1370 = lshr i64 %1354, 63
  %1371 = trunc i64 %1370 to i8
  store i8 %1371, i8* %32, align 1
  %1372 = lshr i64 %1353, 63
  %1373 = xor i64 %1370, %1372
  %1374 = add nuw nsw i64 %1373, %1370
  %1375 = icmp eq i64 %1374, 2
  %1376 = zext i1 %1375 to i8
  store i8 %1376, i8* %38, align 1
  %1377 = add i64 %1341, 28
  store i64 %1377, i64* %3, align 8
  store i64 %1354, i64* bitcast (%G_0x663070_type* @G_0x663070 to i64*), align 8
  br label %block_.L_416bd0

block_.L_416bd0:                                  ; preds = %block_.L_416ba5, %block_416bb4
  %1378 = phi i64 [ %1377, %block_416bb4 ], [ %1341, %block_.L_416ba5 ]
  %1379 = add i64 %1342, -80
  %1380 = add i64 %1378, 7
  store i64 %1380, i64* %3, align 8
  %1381 = inttoptr i64 %1379 to i32*
  store i32 -1, i32* %1381, align 4
  %1382 = load i64, i64* %RBP.i, align 8
  %1383 = add i64 %1382, -68
  %1384 = load i64, i64* %3, align 8
  %1385 = add i64 %1384, 7
  store i64 %1385, i64* %3, align 8
  %1386 = inttoptr i64 %1383 to i32*
  store i32 0, i32* %1386, align 4
  %.pre72 = load i64, i64* %3, align 8
  br label %block_.L_416bde

block_.L_416bde:                                  ; preds = %block_.L_416c37, %block_.L_416bd0
  %1387 = phi i64 [ %1611, %block_.L_416c37 ], [ %.pre72, %block_.L_416bd0 ]
  %1388 = load i64, i64* %RBP.i, align 8
  %1389 = add i64 %1388, -68
  %1390 = add i64 %1387, 3
  store i64 %1390, i64* %3, align 8
  %1391 = inttoptr i64 %1389 to i32*
  %1392 = load i32, i32* %1391, align 4
  %1393 = zext i32 %1392 to i64
  store i64 %1393, i64* %RAX.i646, align 8
  %1394 = add i64 %1388, -28
  %1395 = add i64 %1387, 6
  store i64 %1395, i64* %3, align 8
  %1396 = inttoptr i64 %1394 to i32*
  %1397 = load i32, i32* %1396, align 4
  %1398 = sub i32 %1392, %1397
  %1399 = icmp ult i32 %1392, %1397
  %1400 = zext i1 %1399 to i8
  store i8 %1400, i8* %14, align 1
  %1401 = and i32 %1398, 255
  %1402 = tail call i32 @llvm.ctpop.i32(i32 %1401)
  %1403 = trunc i32 %1402 to i8
  %1404 = and i8 %1403, 1
  %1405 = xor i8 %1404, 1
  store i8 %1405, i8* %21, align 1
  %1406 = xor i32 %1397, %1392
  %1407 = xor i32 %1406, %1398
  %1408 = lshr i32 %1407, 4
  %1409 = trunc i32 %1408 to i8
  %1410 = and i8 %1409, 1
  store i8 %1410, i8* %26, align 1
  %1411 = icmp eq i32 %1398, 0
  %1412 = zext i1 %1411 to i8
  store i8 %1412, i8* %29, align 1
  %1413 = lshr i32 %1398, 31
  %1414 = trunc i32 %1413 to i8
  store i8 %1414, i8* %32, align 1
  %1415 = lshr i32 %1392, 31
  %1416 = lshr i32 %1397, 31
  %1417 = xor i32 %1416, %1415
  %1418 = xor i32 %1413, %1415
  %1419 = add nuw nsw i32 %1418, %1417
  %1420 = icmp eq i32 %1419, 2
  %1421 = zext i1 %1420 to i8
  store i8 %1421, i8* %38, align 1
  %1422 = icmp ne i8 %1414, 0
  %1423 = xor i1 %1422, %1420
  %.v87 = select i1 %1423, i64 12, i64 108
  %1424 = add i64 %1387, %.v87
  store i64 %1424, i64* %3, align 8
  br i1 %1423, label %block_416bea, label %block_.L_416c4a.loopexit

block_416bea:                                     ; preds = %block_.L_416bde
  %1425 = add i64 %1388, -24
  %1426 = add i64 %1424, 4
  store i64 %1426, i64* %3, align 8
  %1427 = inttoptr i64 %1425 to i64*
  %1428 = load i64, i64* %1427, align 8
  store i64 %1428, i64* %RAX.i646, align 8
  %1429 = add i64 %1424, 8
  store i64 %1429, i64* %3, align 8
  %1430 = load i32, i32* %1391, align 4
  %1431 = sext i32 %1430 to i64
  %1432 = shl nsw i64 %1431, 4
  store i64 %1432, i64* %RCX.i918, align 8
  %1433 = add i64 %1432, %1428
  store i64 %1433, i64* %RAX.i646, align 8
  %1434 = icmp ult i64 %1433, %1428
  %1435 = icmp ult i64 %1433, %1432
  %1436 = or i1 %1434, %1435
  %1437 = zext i1 %1436 to i8
  store i8 %1437, i8* %14, align 1
  %1438 = trunc i64 %1433 to i32
  %1439 = and i32 %1438, 255
  %1440 = tail call i32 @llvm.ctpop.i32(i32 %1439)
  %1441 = trunc i32 %1440 to i8
  %1442 = and i8 %1441, 1
  %1443 = xor i8 %1442, 1
  store i8 %1443, i8* %21, align 1
  %1444 = xor i64 %1432, %1428
  %1445 = xor i64 %1444, %1433
  %1446 = lshr i64 %1445, 4
  %1447 = trunc i64 %1446 to i8
  %1448 = and i8 %1447, 1
  store i8 %1448, i8* %26, align 1
  %1449 = icmp eq i64 %1433, 0
  %1450 = zext i1 %1449 to i8
  store i8 %1450, i8* %29, align 1
  %1451 = lshr i64 %1433, 63
  %1452 = trunc i64 %1451 to i8
  store i8 %1452, i8* %32, align 1
  %1453 = lshr i64 %1428, 63
  %1454 = lshr i64 %1431, 59
  %1455 = and i64 %1454, 1
  %1456 = xor i64 %1451, %1453
  %1457 = xor i64 %1451, %1455
  %1458 = add nuw nsw i64 %1456, %1457
  %1459 = icmp eq i64 %1458, 2
  %1460 = zext i1 %1459 to i8
  store i8 %1460, i8* %38, align 1
  %1461 = add i64 %1433, 8
  %1462 = add i64 %1424, 19
  store i64 %1462, i64* %3, align 8
  %1463 = inttoptr i64 %1461 to i32*
  %1464 = load i32, i32* %1463, align 4
  %1465 = add i32 %1464, -1
  %1466 = icmp eq i32 %1464, 0
  %1467 = zext i1 %1466 to i8
  store i8 %1467, i8* %14, align 1
  %1468 = and i32 %1465, 255
  %1469 = tail call i32 @llvm.ctpop.i32(i32 %1468)
  %1470 = trunc i32 %1469 to i8
  %1471 = and i8 %1470, 1
  %1472 = xor i8 %1471, 1
  store i8 %1472, i8* %21, align 1
  %1473 = xor i32 %1465, %1464
  %1474 = lshr i32 %1473, 4
  %1475 = trunc i32 %1474 to i8
  %1476 = and i8 %1475, 1
  store i8 %1476, i8* %26, align 1
  %1477 = icmp eq i32 %1465, 0
  %1478 = zext i1 %1477 to i8
  store i8 %1478, i8* %29, align 1
  %1479 = lshr i32 %1465, 31
  %1480 = trunc i32 %1479 to i8
  store i8 %1480, i8* %32, align 1
  %1481 = lshr i32 %1464, 31
  %1482 = xor i32 %1479, %1481
  %1483 = add nuw nsw i32 %1482, %1481
  %1484 = icmp eq i32 %1483, 2
  %1485 = zext i1 %1484 to i8
  store i8 %1485, i8* %38, align 1
  %.v100 = select i1 %1477, i64 25, i64 77
  %1486 = add i64 %1424, %.v100
  store i64 %1486, i64* %3, align 8
  br i1 %1477, label %block_416c03, label %block_.L_416c37

block_416c03:                                     ; preds = %block_416bea
  %1487 = load i64, i64* bitcast (%G_0x663070_type* @G_0x663070 to i64*), align 8
  store i64 %1487, i64* %RAX.i646, align 8
  %1488 = add i64 %1486, 11
  store i64 %1488, i64* %3, align 8
  %1489 = inttoptr i64 %1487 to i8*
  %1490 = load i8, i8* %1489, align 1
  %1491 = sext i8 %1490 to i64
  %1492 = and i64 %1491, 4294967295
  store i64 %1492, i64* %RCX.i918, align 8
  %1493 = load i64, i64* %RBP.i, align 8
  %1494 = add i64 %1493, -24
  %1495 = add i64 %1486, 15
  store i64 %1495, i64* %3, align 8
  %1496 = inttoptr i64 %1494 to i64*
  %1497 = load i64, i64* %1496, align 8
  store i64 %1497, i64* %RAX.i646, align 8
  %1498 = add i64 %1493, -68
  %1499 = add i64 %1486, 19
  store i64 %1499, i64* %3, align 8
  %1500 = inttoptr i64 %1498 to i32*
  %1501 = load i32, i32* %1500, align 4
  %1502 = sext i32 %1501 to i64
  %1503 = shl nsw i64 %1502, 4
  store i64 %1503, i64* %RDX.i840, align 8
  %1504 = add i64 %1503, %1497
  store i64 %1504, i64* %RAX.i646, align 8
  %1505 = icmp ult i64 %1504, %1497
  %1506 = icmp ult i64 %1504, %1503
  %1507 = or i1 %1505, %1506
  %1508 = zext i1 %1507 to i8
  store i8 %1508, i8* %14, align 1
  %1509 = trunc i64 %1504 to i32
  %1510 = and i32 %1509, 255
  %1511 = tail call i32 @llvm.ctpop.i32(i32 %1510)
  %1512 = trunc i32 %1511 to i8
  %1513 = and i8 %1512, 1
  %1514 = xor i8 %1513, 1
  store i8 %1514, i8* %21, align 1
  %1515 = xor i64 %1503, %1497
  %1516 = xor i64 %1515, %1504
  %1517 = lshr i64 %1516, 4
  %1518 = trunc i64 %1517 to i8
  %1519 = and i8 %1518, 1
  store i8 %1519, i8* %26, align 1
  %1520 = icmp eq i64 %1504, 0
  %1521 = zext i1 %1520 to i8
  store i8 %1521, i8* %29, align 1
  %1522 = lshr i64 %1504, 63
  %1523 = trunc i64 %1522 to i8
  store i8 %1523, i8* %32, align 1
  %1524 = lshr i64 %1497, 63
  %1525 = lshr i64 %1502, 59
  %1526 = and i64 %1525, 1
  %1527 = xor i64 %1522, %1524
  %1528 = xor i64 %1522, %1526
  %1529 = add nuw nsw i64 %1527, %1528
  %1530 = icmp eq i64 %1529, 2
  %1531 = zext i1 %1530 to i8
  store i8 %1531, i8* %38, align 1
  %1532 = inttoptr i64 %1504 to i64*
  %1533 = add i64 %1486, 29
  store i64 %1533, i64* %3, align 8
  %1534 = load i64, i64* %1532, align 8
  store i64 %1534, i64* %RAX.i646, align 8
  %1535 = add i64 %1534, 1
  %1536 = add i64 %1486, 33
  store i64 %1536, i64* %3, align 8
  %1537 = inttoptr i64 %1535 to i8*
  %1538 = load i8, i8* %1537, align 1
  %1539 = sext i8 %1538 to i64
  %1540 = and i64 %1539, 4294967295
  store i64 %1540, i64* %RSI.i789, align 8
  %1541 = sext i8 %1490 to i32
  %1542 = sext i8 %1538 to i32
  %1543 = sub nsw i32 %1541, %1542
  %1544 = icmp ult i8 %1490, %1538
  %1545 = zext i1 %1544 to i8
  store i8 %1545, i8* %14, align 1
  %1546 = and i32 %1543, 255
  %1547 = tail call i32 @llvm.ctpop.i32(i32 %1546)
  %1548 = trunc i32 %1547 to i8
  %1549 = and i8 %1548, 1
  %1550 = xor i8 %1549, 1
  store i8 %1550, i8* %21, align 1
  %1551 = xor i8 %1538, %1490
  %1552 = zext i8 %1551 to i32
  %1553 = xor i32 %1552, %1543
  %1554 = lshr i32 %1553, 4
  %1555 = trunc i32 %1554 to i8
  %1556 = and i8 %1555, 1
  store i8 %1556, i8* %26, align 1
  %1557 = icmp eq i32 %1543, 0
  %1558 = zext i1 %1557 to i8
  store i8 %1558, i8* %29, align 1
  %1559 = lshr i32 %1543, 31
  %1560 = trunc i32 %1559 to i8
  store i8 %1560, i8* %32, align 1
  %1561 = lshr i32 %1541, 31
  %1562 = lshr i32 %1542, 31
  %1563 = xor i32 %1562, %1561
  %1564 = xor i32 %1559, %1561
  %1565 = add nuw nsw i32 %1564, %1563
  %1566 = icmp eq i32 %1565, 2
  %1567 = zext i1 %1566 to i8
  store i8 %1567, i8* %38, align 1
  %.v101 = select i1 %1557, i64 41, i64 52
  %1568 = add i64 %1486, %.v101
  store i64 %1568, i64* %3, align 8
  br i1 %1557, label %block_416c2c, label %block_.L_416c37

block_416c2c:                                     ; preds = %block_416c03
  %1569 = load i64, i64* %RBP.i, align 8
  %1570 = add i64 %1569, -68
  %1571 = add i64 %1568, 3
  store i64 %1571, i64* %3, align 8
  %1572 = inttoptr i64 %1570 to i32*
  %1573 = load i32, i32* %1572, align 4
  %1574 = zext i32 %1573 to i64
  store i64 %1574, i64* %RAX.i646, align 8
  %1575 = add i64 %1569, -80
  %1576 = add i64 %1568, 6
  store i64 %1576, i64* %3, align 8
  %1577 = inttoptr i64 %1575 to i32*
  store i32 %1573, i32* %1577, align 4
  %1578 = load i64, i64* %3, align 8
  %1579 = add i64 %1578, 24
  store i64 %1579, i64* %3, align 8
  %.pre73 = load i64, i64* %RBP.i, align 8
  br label %block_.L_416c4a

block_.L_416c37:                                  ; preds = %block_416c03, %block_416bea
  %1580 = phi i64 [ %1568, %block_416c03 ], [ %1486, %block_416bea ]
  %1581 = load i64, i64* %RBP.i, align 8
  %1582 = add i64 %1581, -68
  %1583 = add i64 %1580, 8
  store i64 %1583, i64* %3, align 8
  %1584 = inttoptr i64 %1582 to i32*
  %1585 = load i32, i32* %1584, align 4
  %1586 = add i32 %1585, 1
  %1587 = zext i32 %1586 to i64
  store i64 %1587, i64* %RAX.i646, align 8
  %1588 = icmp eq i32 %1585, -1
  %1589 = icmp eq i32 %1586, 0
  %1590 = or i1 %1588, %1589
  %1591 = zext i1 %1590 to i8
  store i8 %1591, i8* %14, align 1
  %1592 = and i32 %1586, 255
  %1593 = tail call i32 @llvm.ctpop.i32(i32 %1592)
  %1594 = trunc i32 %1593 to i8
  %1595 = and i8 %1594, 1
  %1596 = xor i8 %1595, 1
  store i8 %1596, i8* %21, align 1
  %1597 = xor i32 %1586, %1585
  %1598 = lshr i32 %1597, 4
  %1599 = trunc i32 %1598 to i8
  %1600 = and i8 %1599, 1
  store i8 %1600, i8* %26, align 1
  %1601 = zext i1 %1589 to i8
  store i8 %1601, i8* %29, align 1
  %1602 = lshr i32 %1586, 31
  %1603 = trunc i32 %1602 to i8
  store i8 %1603, i8* %32, align 1
  %1604 = lshr i32 %1585, 31
  %1605 = xor i32 %1602, %1604
  %1606 = add nuw nsw i32 %1605, %1602
  %1607 = icmp eq i32 %1606, 2
  %1608 = zext i1 %1607 to i8
  store i8 %1608, i8* %38, align 1
  %1609 = add i64 %1580, 14
  store i64 %1609, i64* %3, align 8
  store i32 %1586, i32* %1584, align 4
  %1610 = load i64, i64* %3, align 8
  %1611 = add i64 %1610, -103
  store i64 %1611, i64* %3, align 8
  br label %block_.L_416bde

block_.L_416c4a.loopexit:                         ; preds = %block_.L_416bde
  br label %block_.L_416c4a

block_.L_416c4a:                                  ; preds = %block_.L_416c4a.loopexit, %block_416c2c
  %1612 = phi i64 [ %1579, %block_416c2c ], [ %1424, %block_.L_416c4a.loopexit ]
  %1613 = phi i64 [ %.pre73, %block_416c2c ], [ %1388, %block_.L_416c4a.loopexit ]
  %1614 = add i64 %1613, -80
  %1615 = add i64 %1612, 4
  store i64 %1615, i64* %3, align 8
  %1616 = inttoptr i64 %1614 to i32*
  %1617 = load i32, i32* %1616, align 4
  %1618 = add i32 %1617, 1
  %1619 = icmp ne i32 %1617, -1
  %1620 = zext i1 %1619 to i8
  store i8 %1620, i8* %14, align 1
  %1621 = and i32 %1618, 255
  %1622 = tail call i32 @llvm.ctpop.i32(i32 %1621)
  %1623 = trunc i32 %1622 to i8
  %1624 = and i8 %1623, 1
  %1625 = xor i8 %1624, 1
  store i8 %1625, i8* %21, align 1
  %1626 = xor i32 %1617, 16
  %1627 = xor i32 %1626, %1618
  %1628 = lshr i32 %1627, 4
  %1629 = trunc i32 %1628 to i8
  %1630 = and i8 %1629, 1
  store i8 %1630, i8* %26, align 1
  %1631 = icmp eq i32 %1618, 0
  %1632 = zext i1 %1631 to i8
  store i8 %1632, i8* %29, align 1
  %1633 = lshr i32 %1618, 31
  %1634 = trunc i32 %1633 to i8
  store i8 %1634, i8* %32, align 1
  %1635 = lshr i32 %1617, 31
  %1636 = xor i32 %1635, 1
  %1637 = xor i32 %1633, %1635
  %1638 = add nuw nsw i32 %1637, %1636
  %1639 = icmp eq i32 %1638, 2
  %1640 = zext i1 %1639 to i8
  store i8 %1640, i8* %38, align 1
  %.v88 = select i1 %1631, i64 10, i64 42
  %1641 = add i64 %1612, %.v88
  store i64 %1641, i64* %3, align 8
  br i1 %1631, label %block_416c54, label %block_.L_416c74

block_416c54:                                     ; preds = %block_.L_416c4a
  store i64 ptrtoint (%G__0x456ac1_type* @G__0x456ac1 to i64), i64* %RDI.i893, align 8
  %1642 = load i64, i64* bitcast (%G_0x663070_type* @G_0x663070 to i64*), align 8
  store i64 %1642, i64* %RAX.i646, align 8
  %1643 = add i64 %1641, 21
  store i64 %1643, i64* %3, align 8
  %1644 = inttoptr i64 %1642 to i8*
  %1645 = load i8, i8* %1644, align 1
  %1646 = sext i8 %1645 to i64
  %1647 = and i64 %1646, 4294967295
  store i64 %1647, i64* %RSI.i789, align 8
  %1648 = add i64 %1613, -40
  %1649 = add i64 %1641, 25
  store i64 %1649, i64* %3, align 8
  %1650 = inttoptr i64 %1648 to i64*
  %1651 = load i64, i64* %1650, align 8
  store i64 %1651, i64* %RDX.i840, align 8
  %AL.i317 = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i317, align 1
  %1652 = add i64 %1641, 163260
  %1653 = add i64 %1641, 32
  %1654 = load i64, i64* %6, align 8
  %1655 = add i64 %1654, -8
  %1656 = inttoptr i64 %1655 to i64*
  store i64 %1653, i64* %1656, align 8
  store i64 %1655, i64* %6, align 8
  store i64 %1652, i64* %3, align 8
  %call2_416c6f = tail call %struct.Memory* @sub_43ea10.Die(%struct.State* nonnull %0, i64 %1652, %struct.Memory* %MEMORY.11)
  %.pre74 = load i64, i64* %RBP.i, align 8
  %.pre75 = load i64, i64* %3, align 8
  br label %block_.L_416c74

block_.L_416c74:                                  ; preds = %block_.L_416c4a, %block_416c54
  %1657 = phi i64 [ %1641, %block_.L_416c4a ], [ %.pre75, %block_416c54 ]
  %1658 = phi i64 [ %1613, %block_.L_416c4a ], [ %.pre74, %block_416c54 ]
  %MEMORY.16 = phi %struct.Memory* [ %MEMORY.11, %block_.L_416c4a ], [ %call2_416c6f, %block_416c54 ]
  %1659 = add i64 %1658, -24
  %1660 = add i64 %1657, 4
  store i64 %1660, i64* %3, align 8
  %1661 = inttoptr i64 %1659 to i64*
  %1662 = load i64, i64* %1661, align 8
  store i64 %1662, i64* %RAX.i646, align 8
  %1663 = add i64 %1658, -80
  %1664 = add i64 %1657, 8
  store i64 %1664, i64* %3, align 8
  %1665 = inttoptr i64 %1663 to i32*
  %1666 = load i32, i32* %1665, align 4
  %1667 = sext i32 %1666 to i64
  %1668 = shl nsw i64 %1667, 4
  store i64 %1668, i64* %RCX.i918, align 8
  %1669 = add i64 %1668, %1662
  store i64 %1669, i64* %RAX.i646, align 8
  %1670 = icmp ult i64 %1669, %1662
  %1671 = icmp ult i64 %1669, %1668
  %1672 = or i1 %1670, %1671
  %1673 = zext i1 %1672 to i8
  store i8 %1673, i8* %14, align 1
  %1674 = trunc i64 %1669 to i32
  %1675 = and i32 %1674, 255
  %1676 = tail call i32 @llvm.ctpop.i32(i32 %1675)
  %1677 = trunc i32 %1676 to i8
  %1678 = and i8 %1677, 1
  %1679 = xor i8 %1678, 1
  store i8 %1679, i8* %21, align 1
  %1680 = xor i64 %1668, %1662
  %1681 = xor i64 %1680, %1669
  %1682 = lshr i64 %1681, 4
  %1683 = trunc i64 %1682 to i8
  %1684 = and i8 %1683, 1
  store i8 %1684, i8* %26, align 1
  %1685 = icmp eq i64 %1669, 0
  %1686 = zext i1 %1685 to i8
  store i8 %1686, i8* %29, align 1
  %1687 = lshr i64 %1669, 63
  %1688 = trunc i64 %1687 to i8
  store i8 %1688, i8* %32, align 1
  %1689 = lshr i64 %1662, 63
  %1690 = lshr i64 %1667, 59
  %1691 = and i64 %1690, 1
  %1692 = xor i64 %1687, %1689
  %1693 = xor i64 %1687, %1691
  %1694 = add nuw nsw i64 %1692, %1693
  %1695 = icmp eq i64 %1694, 2
  %1696 = zext i1 %1695 to i8
  store i8 %1696, i8* %38, align 1
  %1697 = inttoptr i64 %1669 to i64*
  %1698 = add i64 %1657, 18
  store i64 %1698, i64* %3, align 8
  %1699 = load i64, i64* %1697, align 8
  store i64 %1699, i64* %RAX.i646, align 8
  %1700 = add i64 %1658, -56
  %1701 = add i64 %1657, 22
  store i64 %1701, i64* %3, align 8
  %1702 = inttoptr i64 %1700 to i64*
  %1703 = load i64, i64* %1702, align 8
  store i64 %1703, i64* %RCX.i918, align 8
  %1704 = add i64 %1657, 25
  store i64 %1704, i64* %3, align 8
  %1705 = inttoptr i64 %1703 to i64*
  store i64 %1699, i64* %1705, align 8
  %1706 = load i64, i64* %RBP.i, align 8
  %1707 = add i64 %1706, -24
  %1708 = load i64, i64* %3, align 8
  %1709 = add i64 %1708, 4
  store i64 %1709, i64* %3, align 8
  %1710 = inttoptr i64 %1707 to i64*
  %1711 = load i64, i64* %1710, align 8
  store i64 %1711, i64* %RAX.i646, align 8
  %1712 = add i64 %1706, -80
  %1713 = add i64 %1708, 8
  store i64 %1713, i64* %3, align 8
  %1714 = inttoptr i64 %1712 to i32*
  %1715 = load i32, i32* %1714, align 4
  %1716 = sext i32 %1715 to i64
  %1717 = shl nsw i64 %1716, 4
  store i64 %1717, i64* %RCX.i918, align 8
  %1718 = add i64 %1717, %1711
  store i64 %1718, i64* %RAX.i646, align 8
  %1719 = icmp ult i64 %1718, %1711
  %1720 = icmp ult i64 %1718, %1717
  %1721 = or i1 %1719, %1720
  %1722 = zext i1 %1721 to i8
  store i8 %1722, i8* %14, align 1
  %1723 = trunc i64 %1718 to i32
  %1724 = and i32 %1723, 255
  %1725 = tail call i32 @llvm.ctpop.i32(i32 %1724)
  %1726 = trunc i32 %1725 to i8
  %1727 = and i8 %1726, 1
  %1728 = xor i8 %1727, 1
  store i8 %1728, i8* %21, align 1
  %1729 = xor i64 %1717, %1711
  %1730 = xor i64 %1729, %1718
  %1731 = lshr i64 %1730, 4
  %1732 = trunc i64 %1731 to i8
  %1733 = and i8 %1732, 1
  store i8 %1733, i8* %26, align 1
  %1734 = icmp eq i64 %1718, 0
  %1735 = zext i1 %1734 to i8
  store i8 %1735, i8* %29, align 1
  %1736 = lshr i64 %1718, 63
  %1737 = trunc i64 %1736 to i8
  store i8 %1737, i8* %32, align 1
  %1738 = lshr i64 %1711, 63
  %1739 = lshr i64 %1716, 59
  %1740 = and i64 %1739, 1
  %1741 = xor i64 %1736, %1738
  %1742 = xor i64 %1736, %1740
  %1743 = add nuw nsw i64 %1741, %1742
  %1744 = icmp eq i64 %1743, 2
  %1745 = zext i1 %1744 to i8
  store i8 %1745, i8* %38, align 1
  %1746 = add i64 %1718, 12
  %1747 = add i64 %1708, 19
  store i64 %1747, i64* %3, align 8
  %1748 = inttoptr i64 %1746 to i32*
  %1749 = load i32, i32* %1748, align 4
  store i8 0, i8* %14, align 1
  %1750 = and i32 %1749, 255
  %1751 = tail call i32 @llvm.ctpop.i32(i32 %1750)
  %1752 = trunc i32 %1751 to i8
  %1753 = and i8 %1752, 1
  %1754 = xor i8 %1753, 1
  store i8 %1754, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1755 = icmp eq i32 %1749, 0
  %1756 = zext i1 %1755 to i8
  store i8 %1756, i8* %29, align 1
  %1757 = lshr i32 %1749, 31
  %1758 = trunc i32 %1757 to i8
  store i8 %1758, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v89 = select i1 %1755, i64 217, i64 25
  %1759 = add i64 %1708, %.v89
  store i64 %1759, i64* %3, align 8
  br i1 %1755, label %block_.L_416d66, label %block_416ca6

block_416ca6:                                     ; preds = %block_.L_416c74
  %1760 = load i64, i64* bitcast (%G_0x663070_type* @G_0x663070 to i64*), align 8
  store i64 %1760, i64* %RAX.i646, align 8
  %1761 = add i64 %1760, 1
  %1762 = add i64 %1759, 12
  store i64 %1762, i64* %3, align 8
  %1763 = inttoptr i64 %1761 to i8*
  %1764 = load i8, i8* %1763, align 1
  %1765 = sext i8 %1764 to i64
  %1766 = and i64 %1765, 4294967295
  store i64 %1766, i64* %RCX.i918, align 8
  %1767 = sext i8 %1764 to i32
  store i8 0, i8* %14, align 1
  %1768 = and i32 %1767, 255
  %1769 = tail call i32 @llvm.ctpop.i32(i32 %1768)
  %1770 = trunc i32 %1769 to i8
  %1771 = and i8 %1770, 1
  %1772 = xor i8 %1771, 1
  store i8 %1772, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1773 = icmp eq i8 %1764, 0
  %1774 = zext i1 %1773 to i8
  store i8 %1774, i8* %29, align 1
  %1775 = lshr i32 %1767, 31
  %1776 = trunc i32 %1775 to i8
  store i8 %1776, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v90 = select i1 %1773, i64 62, i64 21
  %1777 = add i64 %1759, %.v90
  store i64 %1777, i64* %3, align 8
  br i1 %1773, label %block_.L_416ce4, label %block_416cbb

block_416cbb:                                     ; preds = %block_416ca6
  store i64 %1761, i64* %RAX.i646, align 8
  %1778 = icmp eq i64 %1760, -1
  %1779 = icmp eq i64 %1761, 0
  %1780 = or i1 %1778, %1779
  %1781 = zext i1 %1780 to i8
  store i8 %1781, i8* %14, align 1
  %1782 = trunc i64 %1761 to i32
  %1783 = and i32 %1782, 255
  %1784 = tail call i32 @llvm.ctpop.i32(i32 %1783)
  %1785 = trunc i32 %1784 to i8
  %1786 = and i8 %1785, 1
  %1787 = xor i8 %1786, 1
  store i8 %1787, i8* %21, align 1
  %1788 = xor i64 %1761, %1760
  %1789 = lshr i64 %1788, 4
  %1790 = trunc i64 %1789 to i8
  %1791 = and i8 %1790, 1
  store i8 %1791, i8* %26, align 1
  %1792 = zext i1 %1779 to i8
  store i8 %1792, i8* %29, align 1
  %1793 = lshr i64 %1761, 63
  %1794 = trunc i64 %1793 to i8
  store i8 %1794, i8* %32, align 1
  %1795 = lshr i64 %1760, 63
  %1796 = xor i64 %1793, %1795
  %1797 = add nuw nsw i64 %1796, %1793
  %1798 = icmp eq i64 %1797, 2
  %1799 = zext i1 %1798 to i8
  store i8 %1799, i8* %38, align 1
  %1800 = load i64, i64* %RBP.i, align 8
  %1801 = add i64 %1800, -64
  %1802 = add i64 %1777, 16
  store i64 %1802, i64* %3, align 8
  %1803 = inttoptr i64 %1801 to i64*
  %1804 = load i64, i64* %1803, align 8
  store i64 %1804, i64* %RCX.i918, align 8
  %1805 = add i64 %1777, 19
  store i64 %1805, i64* %3, align 8
  %1806 = inttoptr i64 %1804 to i64*
  store i64 %1761, i64* %1806, align 8
  %1807 = load i64, i64* %3, align 8
  %1808 = load i32, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*), align 8
  %1809 = add i32 %1808, 1
  %1810 = zext i32 %1809 to i64
  store i64 %1810, i64* %RDX.i840, align 8
  %1811 = icmp eq i32 %1808, -1
  %1812 = icmp eq i32 %1809, 0
  %1813 = or i1 %1811, %1812
  %1814 = zext i1 %1813 to i8
  store i8 %1814, i8* %14, align 1
  %1815 = and i32 %1809, 255
  %1816 = tail call i32 @llvm.ctpop.i32(i32 %1815)
  %1817 = trunc i32 %1816 to i8
  %1818 = and i8 %1817, 1
  %1819 = xor i8 %1818, 1
  store i8 %1819, i8* %21, align 1
  %1820 = xor i32 %1809, %1808
  %1821 = lshr i32 %1820, 4
  %1822 = trunc i32 %1821 to i8
  %1823 = and i8 %1822, 1
  store i8 %1823, i8* %26, align 1
  %1824 = zext i1 %1812 to i8
  store i8 %1824, i8* %29, align 1
  %1825 = lshr i32 %1809, 31
  %1826 = trunc i32 %1825 to i8
  store i8 %1826, i8* %32, align 1
  %1827 = lshr i32 %1808, 31
  %1828 = xor i32 %1825, %1827
  %1829 = add nuw nsw i32 %1828, %1825
  %1830 = icmp eq i32 %1829, 2
  %1831 = zext i1 %1830 to i8
  store i8 %1831, i8* %38, align 1
  %1832 = add i64 %1807, 17
  store i64 %1832, i64* %3, align 8
  store i32 %1809, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*), align 8
  %1833 = add i64 %1807, 135
  br label %block_.L_416d55

block_.L_416ce4:                                  ; preds = %block_416ca6
  %1834 = load i32, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*), align 8
  %1835 = add i32 %1834, 1
  %1836 = zext i32 %1835 to i64
  store i64 %1836, i64* %RAX.i646, align 8
  %1837 = icmp eq i32 %1834, -1
  %1838 = icmp eq i32 %1835, 0
  %1839 = or i1 %1837, %1838
  %1840 = zext i1 %1839 to i8
  store i8 %1840, i8* %14, align 1
  %1841 = and i32 %1835, 255
  %1842 = tail call i32 @llvm.ctpop.i32(i32 %1841)
  %1843 = trunc i32 %1842 to i8
  %1844 = and i8 %1843, 1
  %1845 = xor i8 %1844, 1
  store i8 %1845, i8* %21, align 1
  %1846 = xor i32 %1835, %1834
  %1847 = lshr i32 %1846, 4
  %1848 = trunc i32 %1847 to i8
  %1849 = and i8 %1848, 1
  store i8 %1849, i8* %26, align 1
  %1850 = zext i1 %1838 to i8
  store i8 %1850, i8* %29, align 1
  %1851 = lshr i32 %1835, 31
  %1852 = trunc i32 %1851 to i8
  store i8 %1852, i8* %32, align 1
  %1853 = lshr i32 %1834, 31
  %1854 = xor i32 %1851, %1853
  %1855 = add nuw nsw i32 %1854, %1851
  %1856 = icmp eq i32 %1855, 2
  %1857 = zext i1 %1856 to i8
  store i8 %1857, i8* %38, align 1
  %1858 = load i64, i64* %RBP.i, align 8
  %1859 = add i64 %1858, -8
  %1860 = add i64 %1777, 13
  store i64 %1860, i64* %3, align 8
  %1861 = inttoptr i64 %1859 to i32*
  %1862 = load i32, i32* %1861, align 4
  %1863 = sub i32 %1835, %1862
  %1864 = icmp ult i32 %1835, %1862
  %1865 = zext i1 %1864 to i8
  store i8 %1865, i8* %14, align 1
  %1866 = and i32 %1863, 255
  %1867 = tail call i32 @llvm.ctpop.i32(i32 %1866)
  %1868 = trunc i32 %1867 to i8
  %1869 = and i8 %1868, 1
  %1870 = xor i8 %1869, 1
  store i8 %1870, i8* %21, align 1
  %1871 = xor i32 %1862, %1835
  %1872 = xor i32 %1871, %1863
  %1873 = lshr i32 %1872, 4
  %1874 = trunc i32 %1873 to i8
  %1875 = and i8 %1874, 1
  store i8 %1875, i8* %26, align 1
  %1876 = icmp eq i32 %1863, 0
  %1877 = zext i1 %1876 to i8
  store i8 %1877, i8* %29, align 1
  %1878 = lshr i32 %1863, 31
  %1879 = trunc i32 %1878 to i8
  store i8 %1879, i8* %32, align 1
  %1880 = lshr i32 %1862, 31
  %1881 = xor i32 %1880, %1851
  %1882 = xor i32 %1878, %1851
  %1883 = add nuw nsw i32 %1882, %1881
  %1884 = icmp eq i32 %1883, 2
  %1885 = zext i1 %1884 to i8
  store i8 %1885, i8* %38, align 1
  %1886 = icmp ne i8 %1879, 0
  %1887 = xor i1 %1886, %1884
  %.v98 = select i1 %1887, i64 19, i64 69
  %1888 = add i64 %1777, %.v98
  store i64 %1888, i64* %3, align 8
  br i1 %1887, label %block_416cf7, label %block_.L_416d29

block_416cf7:                                     ; preds = %block_.L_416ce4
  %1889 = add i64 %1858, -16
  %1890 = add i64 %1888, 4
  store i64 %1890, i64* %3, align 8
  %1891 = inttoptr i64 %1889 to i64*
  %1892 = load i64, i64* %1891, align 8
  store i64 %1892, i64* %RAX.i646, align 8
  store i64 %1836, i64* %RCX.i918, align 8
  store i8 %1840, i8* %14, align 1
  store i8 %1845, i8* %21, align 1
  store i8 %1849, i8* %26, align 1
  store i8 %1850, i8* %29, align 1
  store i8 %1852, i8* %32, align 1
  store i8 %1857, i8* %38, align 1
  %1893 = sext i32 %1835 to i64
  store i64 %1893, i64* %RDX.i840, align 8
  %1894 = shl nsw i64 %1893, 3
  %1895 = add i64 %1892, %1894
  %1896 = add i64 %1888, 21
  store i64 %1896, i64* %3, align 8
  %1897 = inttoptr i64 %1895 to i64*
  %1898 = load i64, i64* %1897, align 8
  store i64 %1898, i64* %RAX.i646, align 8
  %1899 = add i64 %1858, -64
  %1900 = add i64 %1888, 25
  store i64 %1900, i64* %3, align 8
  %1901 = inttoptr i64 %1899 to i64*
  %1902 = load i64, i64* %1901, align 8
  store i64 %1902, i64* %RDX.i840, align 8
  %1903 = add i64 %1888, 28
  store i64 %1903, i64* %3, align 8
  %1904 = inttoptr i64 %1902 to i64*
  store i64 %1898, i64* %1904, align 8
  %1905 = load i64, i64* %3, align 8
  %1906 = add i32 %1834, 2
  %1907 = zext i32 %1906 to i64
  store i64 %1907, i64* %RCX.i918, align 8
  %1908 = icmp ugt i32 %1834, -3
  %1909 = zext i1 %1908 to i8
  store i8 %1909, i8* %14, align 1
  %1910 = and i32 %1906, 255
  %1911 = tail call i32 @llvm.ctpop.i32(i32 %1910)
  %1912 = trunc i32 %1911 to i8
  %1913 = and i8 %1912, 1
  %1914 = xor i8 %1913, 1
  store i8 %1914, i8* %21, align 1
  %1915 = xor i32 %1906, %1834
  %1916 = lshr i32 %1915, 4
  %1917 = trunc i32 %1916 to i8
  %1918 = and i8 %1917, 1
  store i8 %1918, i8* %26, align 1
  %1919 = icmp eq i32 %1906, 0
  %1920 = zext i1 %1919 to i8
  store i8 %1920, i8* %29, align 1
  %1921 = lshr i32 %1906, 31
  %1922 = trunc i32 %1921 to i8
  store i8 %1922, i8* %32, align 1
  %1923 = xor i32 %1921, %1853
  %1924 = add nuw nsw i32 %1923, %1921
  %1925 = icmp eq i32 %1924, 2
  %1926 = zext i1 %1925 to i8
  store i8 %1926, i8* %38, align 1
  store i32 %1906, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*), align 8
  %1927 = add i64 %1905, 61
  store i64 %1927, i64* %3, align 8
  br label %block_.L_416d50

block_.L_416d29:                                  ; preds = %block_.L_416ce4
  store i64 ptrtoint (%G__0x456a78_type* @G__0x456a78 to i64), i64* %RDI.i893, align 8
  %1928 = add i64 %1858, -24
  %1929 = add i64 %1888, 14
  store i64 %1929, i64* %3, align 8
  %1930 = inttoptr i64 %1928 to i64*
  %1931 = load i64, i64* %1930, align 8
  store i64 %1931, i64* %RAX.i646, align 8
  %1932 = add i64 %1858, -80
  %1933 = add i64 %1888, 18
  store i64 %1933, i64* %3, align 8
  %1934 = inttoptr i64 %1932 to i32*
  %1935 = load i32, i32* %1934, align 4
  %1936 = sext i32 %1935 to i64
  %1937 = shl nsw i64 %1936, 4
  store i64 %1937, i64* %RCX.i918, align 8
  %1938 = add i64 %1937, %1931
  store i64 %1938, i64* %RAX.i646, align 8
  %1939 = icmp ult i64 %1938, %1931
  %1940 = icmp ult i64 %1938, %1937
  %1941 = or i1 %1939, %1940
  %1942 = zext i1 %1941 to i8
  store i8 %1942, i8* %14, align 1
  %1943 = trunc i64 %1938 to i32
  %1944 = and i32 %1943, 255
  %1945 = tail call i32 @llvm.ctpop.i32(i32 %1944)
  %1946 = trunc i32 %1945 to i8
  %1947 = and i8 %1946, 1
  %1948 = xor i8 %1947, 1
  store i8 %1948, i8* %21, align 1
  %1949 = xor i64 %1937, %1931
  %1950 = xor i64 %1949, %1938
  %1951 = lshr i64 %1950, 4
  %1952 = trunc i64 %1951 to i8
  %1953 = and i8 %1952, 1
  store i8 %1953, i8* %26, align 1
  %1954 = icmp eq i64 %1938, 0
  %1955 = zext i1 %1954 to i8
  store i8 %1955, i8* %29, align 1
  %1956 = lshr i64 %1938, 63
  %1957 = trunc i64 %1956 to i8
  store i8 %1957, i8* %32, align 1
  %1958 = lshr i64 %1931, 63
  %1959 = lshr i64 %1936, 59
  %1960 = and i64 %1959, 1
  %1961 = xor i64 %1956, %1958
  %1962 = xor i64 %1956, %1960
  %1963 = add nuw nsw i64 %1961, %1962
  %1964 = icmp eq i64 %1963, 2
  %1965 = zext i1 %1964 to i8
  store i8 %1965, i8* %38, align 1
  %1966 = inttoptr i64 %1938 to i64*
  %1967 = add i64 %1888, 28
  store i64 %1967, i64* %3, align 8
  %1968 = load i64, i64* %1966, align 8
  store i64 %1968, i64* %RSI.i789, align 8
  %1969 = add i64 %1858, -40
  %1970 = add i64 %1888, 32
  store i64 %1970, i64* %3, align 8
  %1971 = inttoptr i64 %1969 to i64*
  %1972 = load i64, i64* %1971, align 8
  store i64 %1972, i64* %RDX.i840, align 8
  %AL.i204 = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i204, align 1
  %1973 = add i64 %1888, 163047
  %1974 = add i64 %1888, 39
  %1975 = load i64, i64* %6, align 8
  %1976 = add i64 %1975, -8
  %1977 = inttoptr i64 %1976 to i64*
  store i64 %1974, i64* %1977, align 8
  store i64 %1976, i64* %6, align 8
  store i64 %1973, i64* %3, align 8
  %call2_416d4b = tail call %struct.Memory* @sub_43ea10.Die(%struct.State* nonnull %0, i64 %1973, %struct.Memory* %MEMORY.16)
  %.pre76 = load i64, i64* %3, align 8
  br label %block_.L_416d50

block_.L_416d50:                                  ; preds = %block_.L_416d29, %block_416cf7
  %1978 = phi i64 [ %.pre76, %block_.L_416d29 ], [ %1927, %block_416cf7 ]
  %MEMORY.17 = phi %struct.Memory* [ %call2_416d4b, %block_.L_416d29 ], [ %MEMORY.16, %block_416cf7 ]
  %1979 = add i64 %1978, 5
  store i64 %1979, i64* %3, align 8
  br label %block_.L_416d55

block_.L_416d55:                                  ; preds = %block_.L_416d50, %block_416cbb
  %storemerge55 = phi i64 [ %1833, %block_416cbb ], [ %1979, %block_.L_416d50 ]
  %MEMORY.18 = phi %struct.Memory* [ %MEMORY.16, %block_416cbb ], [ %MEMORY.17, %block_.L_416d50 ]
  %1980 = add i64 %storemerge55, 12
  store i64 %1980, i64* %3, align 8
  store i64 0, i64* bitcast (%G_0x663070_type* @G_0x663070 to i64*), align 8
  %1981 = add i64 %storemerge55, 108
  br label %block_.L_416dc1

block_.L_416d66:                                  ; preds = %block_.L_416c74
  %1982 = load i64, i64* %RBP.i, align 8
  %1983 = add i64 %1982, -64
  %1984 = add i64 %1759, 4
  store i64 %1984, i64* %3, align 8
  %1985 = inttoptr i64 %1983 to i64**
  %1986 = load i64*, i64** %1985, align 8
  %1987 = add i64 %1759, 11
  store i64 %1987, i64* %3, align 8
  store i64 0, i64* %1986, align 8
  %1988 = load i64, i64* %3, align 8
  %1989 = load i64, i64* bitcast (%G_0x663070_type* @G_0x663070 to i64*), align 8
  store i64 %1989, i64* %RAX.i646, align 8
  %1990 = add i64 %1989, 1
  %1991 = add i64 %1988, 12
  store i64 %1991, i64* %3, align 8
  %1992 = inttoptr i64 %1990 to i8*
  %1993 = load i8, i8* %1992, align 1
  %1994 = sext i8 %1993 to i64
  %1995 = and i64 %1994, 4294967295
  store i64 %1995, i64* %RCX.i918, align 8
  %1996 = sext i8 %1993 to i32
  store i8 0, i8* %14, align 1
  %1997 = and i32 %1996, 255
  %1998 = tail call i32 @llvm.ctpop.i32(i32 %1997)
  %1999 = trunc i32 %1998 to i8
  %2000 = and i8 %1999, 1
  %2001 = xor i8 %2000, 1
  store i8 %2001, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2002 = icmp eq i8 %1993, 0
  %2003 = zext i1 %2002 to i8
  store i8 %2003, i8* %29, align 1
  %2004 = lshr i32 %1996, 31
  %2005 = trunc i32 %2004 to i8
  store i8 %2005, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v99 = select i1 %2002, i64 46, i64 21
  %2006 = add i64 %1988, %.v99
  store i64 %2006, i64* %3, align 8
  br i1 %2002, label %block_.L_416d9f, label %block_416d86

block_416d86:                                     ; preds = %block_.L_416d66
  store i64 %1990, i64* %RAX.i646, align 8
  %2007 = icmp eq i64 %1989, -1
  %2008 = icmp eq i64 %1990, 0
  %2009 = or i1 %2007, %2008
  %2010 = zext i1 %2009 to i8
  store i8 %2010, i8* %14, align 1
  %2011 = trunc i64 %1990 to i32
  %2012 = and i32 %2011, 255
  %2013 = tail call i32 @llvm.ctpop.i32(i32 %2012)
  %2014 = trunc i32 %2013 to i8
  %2015 = and i8 %2014, 1
  %2016 = xor i8 %2015, 1
  store i8 %2016, i8* %21, align 1
  %2017 = xor i64 %1990, %1989
  %2018 = lshr i64 %2017, 4
  %2019 = trunc i64 %2018 to i8
  %2020 = and i8 %2019, 1
  store i8 %2020, i8* %26, align 1
  %2021 = zext i1 %2008 to i8
  store i8 %2021, i8* %29, align 1
  %2022 = lshr i64 %1990, 63
  %2023 = trunc i64 %2022 to i8
  store i8 %2023, i8* %32, align 1
  %2024 = lshr i64 %1989, 63
  %2025 = xor i64 %2022, %2024
  %2026 = add nuw nsw i64 %2025, %2022
  %2027 = icmp eq i64 %2026, 2
  %2028 = zext i1 %2027 to i8
  store i8 %2028, i8* %38, align 1
  store i64 %1990, i64* bitcast (%G_0x663070_type* @G_0x663070 to i64*), align 8
  %2029 = add i64 %2006, 54
  store i64 %2029, i64* %3, align 8
  br label %block_.L_416dbc

block_.L_416d9f:                                  ; preds = %block_.L_416d66
  %2030 = load i32, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*), align 8
  %2031 = add i32 %2030, 1
  %2032 = zext i32 %2031 to i64
  store i64 %2032, i64* %RAX.i646, align 8
  %2033 = icmp eq i32 %2030, -1
  %2034 = icmp eq i32 %2031, 0
  %2035 = or i1 %2033, %2034
  %2036 = zext i1 %2035 to i8
  store i8 %2036, i8* %14, align 1
  %2037 = and i32 %2031, 255
  %2038 = tail call i32 @llvm.ctpop.i32(i32 %2037)
  %2039 = trunc i32 %2038 to i8
  %2040 = and i8 %2039, 1
  %2041 = xor i8 %2040, 1
  store i8 %2041, i8* %21, align 1
  %2042 = xor i32 %2031, %2030
  %2043 = lshr i32 %2042, 4
  %2044 = trunc i32 %2043 to i8
  %2045 = and i8 %2044, 1
  store i8 %2045, i8* %26, align 1
  %2046 = zext i1 %2034 to i8
  store i8 %2046, i8* %29, align 1
  %2047 = lshr i32 %2031, 31
  %2048 = trunc i32 %2047 to i8
  store i8 %2048, i8* %32, align 1
  %2049 = lshr i32 %2030, 31
  %2050 = xor i32 %2047, %2049
  %2051 = add nuw nsw i32 %2050, %2047
  %2052 = icmp eq i32 %2051, 2
  %2053 = zext i1 %2052 to i8
  store i8 %2053, i8* %38, align 1
  store i32 %2031, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*), align 8
  %2054 = add i64 %2006, 29
  store i64 %2054, i64* %3, align 8
  store i64 0, i64* bitcast (%G_0x663070_type* @G_0x663070 to i64*), align 8
  br label %block_.L_416dbc

block_.L_416dbc:                                  ; preds = %block_.L_416d9f, %block_416d86
  %2055 = phi i64 [ %2054, %block_.L_416d9f ], [ %2029, %block_416d86 ]
  %2056 = add i64 %2055, 5
  store i64 %2056, i64* %3, align 8
  br label %block_.L_416dc1

block_.L_416dc1:                                  ; preds = %block_.L_416dbc, %block_.L_416d55
  %storemerge56 = phi i64 [ %1981, %block_.L_416d55 ], [ %2056, %block_.L_416dbc ]
  %MEMORY.20 = phi %struct.Memory* [ %MEMORY.18, %block_.L_416d55 ], [ %MEMORY.16, %block_.L_416dbc ]
  %2057 = add i64 %storemerge56, 5
  store i64 %2057, i64* %3, align 8
  br label %block_.L_416dc6

block_.L_416dc6:                                  ; preds = %block_.L_416dc1, %block_.L_416ba0
  %storemerge39 = phi i64 [ %1328, %block_.L_416ba0 ], [ %2057, %block_.L_416dc1 ]
  %MEMORY.21 = phi %struct.Memory* [ %MEMORY.10, %block_.L_416ba0 ], [ %MEMORY.20, %block_.L_416dc1 ]
  %2058 = load i64, i64* %RBP.i, align 8
  %2059 = add i64 %2058, -24
  %2060 = add i64 %storemerge39, 4
  store i64 %2060, i64* %3, align 8
  %2061 = inttoptr i64 %2059 to i64*
  %2062 = load i64, i64* %2061, align 8
  store i64 %2062, i64* %RAX.i646, align 8
  %2063 = add i64 %2058, -80
  %2064 = add i64 %storemerge39, 8
  store i64 %2064, i64* %3, align 8
  %2065 = inttoptr i64 %2063 to i32*
  %2066 = load i32, i32* %2065, align 4
  %2067 = sext i32 %2066 to i64
  %2068 = shl nsw i64 %2067, 4
  store i64 %2068, i64* %RCX.i918, align 8
  %2069 = add i64 %2068, %2062
  store i64 %2069, i64* %RAX.i646, align 8
  %2070 = icmp ult i64 %2069, %2062
  %2071 = icmp ult i64 %2069, %2068
  %2072 = or i1 %2070, %2071
  %2073 = zext i1 %2072 to i8
  store i8 %2073, i8* %14, align 1
  %2074 = trunc i64 %2069 to i32
  %2075 = and i32 %2074, 255
  %2076 = tail call i32 @llvm.ctpop.i32(i32 %2075)
  %2077 = trunc i32 %2076 to i8
  %2078 = and i8 %2077, 1
  %2079 = xor i8 %2078, 1
  store i8 %2079, i8* %21, align 1
  %2080 = xor i64 %2068, %2062
  %2081 = xor i64 %2080, %2069
  %2082 = lshr i64 %2081, 4
  %2083 = trunc i64 %2082 to i8
  %2084 = and i8 %2083, 1
  store i8 %2084, i8* %26, align 1
  %2085 = icmp eq i64 %2069, 0
  %2086 = zext i1 %2085 to i8
  store i8 %2086, i8* %29, align 1
  %2087 = lshr i64 %2069, 63
  %2088 = trunc i64 %2087 to i8
  store i8 %2088, i8* %32, align 1
  %2089 = lshr i64 %2062, 63
  %2090 = lshr i64 %2067, 59
  %2091 = and i64 %2090, 1
  %2092 = xor i64 %2087, %2089
  %2093 = xor i64 %2087, %2091
  %2094 = add nuw nsw i64 %2092, %2093
  %2095 = icmp eq i64 %2094, 2
  %2096 = zext i1 %2095 to i8
  store i8 %2096, i8* %38, align 1
  %2097 = add i64 %2069, 12
  %2098 = add i64 %storemerge39, 19
  store i64 %2098, i64* %3, align 8
  %2099 = inttoptr i64 %2097 to i32*
  %2100 = load i32, i32* %2099, align 4
  store i8 0, i8* %14, align 1
  %2101 = and i32 %2100, 255
  %2102 = tail call i32 @llvm.ctpop.i32(i32 %2101)
  %2103 = trunc i32 %2102 to i8
  %2104 = and i8 %2103, 1
  %2105 = xor i8 %2104, 1
  store i8 %2105, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2106 = icmp eq i32 %2100, 0
  %2107 = zext i1 %2106 to i8
  store i8 %2107, i8* %29, align 1
  %2108 = lshr i32 %2100, 31
  %2109 = trunc i32 %2108 to i8
  store i8 %2109, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v91 = select i1 %2106, i64 306, i64 25
  %2110 = add i64 %storemerge39, %.v91
  store i64 %2110, i64* %3, align 8
  br i1 %2106, label %block_.L_416ef8, label %block_416ddf

block_416ddf:                                     ; preds = %block_.L_416dc6
  %2111 = add i64 %2110, 4
  store i64 %2111, i64* %3, align 8
  %2112 = load i64, i64* %2061, align 8
  store i64 %2112, i64* %RAX.i646, align 8
  %2113 = add i64 %2110, 8
  store i64 %2113, i64* %3, align 8
  %2114 = load i32, i32* %2065, align 4
  %2115 = sext i32 %2114 to i64
  %2116 = shl nsw i64 %2115, 4
  store i64 %2116, i64* %RCX.i918, align 8
  %2117 = add i64 %2116, %2112
  store i64 %2117, i64* %RAX.i646, align 8
  %2118 = icmp ult i64 %2117, %2112
  %2119 = icmp ult i64 %2117, %2116
  %2120 = or i1 %2118, %2119
  %2121 = zext i1 %2120 to i8
  store i8 %2121, i8* %14, align 1
  %2122 = trunc i64 %2117 to i32
  %2123 = and i32 %2122, 255
  %2124 = tail call i32 @llvm.ctpop.i32(i32 %2123)
  %2125 = trunc i32 %2124 to i8
  %2126 = and i8 %2125, 1
  %2127 = xor i8 %2126, 1
  store i8 %2127, i8* %21, align 1
  %2128 = xor i64 %2116, %2112
  %2129 = xor i64 %2128, %2117
  %2130 = lshr i64 %2129, 4
  %2131 = trunc i64 %2130 to i8
  %2132 = and i8 %2131, 1
  store i8 %2132, i8* %26, align 1
  %2133 = icmp eq i64 %2117, 0
  %2134 = zext i1 %2133 to i8
  store i8 %2134, i8* %29, align 1
  %2135 = lshr i64 %2117, 63
  %2136 = trunc i64 %2135 to i8
  store i8 %2136, i8* %32, align 1
  %2137 = lshr i64 %2112, 63
  %2138 = lshr i64 %2115, 59
  %2139 = and i64 %2138, 1
  %2140 = xor i64 %2135, %2137
  %2141 = xor i64 %2135, %2139
  %2142 = add nuw nsw i64 %2140, %2141
  %2143 = icmp eq i64 %2142, 2
  %2144 = zext i1 %2143 to i8
  store i8 %2144, i8* %38, align 1
  %2145 = add i64 %2117, 12
  %2146 = add i64 %2110, 19
  store i64 %2146, i64* %3, align 8
  %2147 = inttoptr i64 %2145 to i32*
  %2148 = load i32, i32* %2147, align 4
  %2149 = add i32 %2148, -1
  %2150 = icmp eq i32 %2148, 0
  %2151 = zext i1 %2150 to i8
  store i8 %2151, i8* %14, align 1
  %2152 = and i32 %2149, 255
  %2153 = tail call i32 @llvm.ctpop.i32(i32 %2152)
  %2154 = trunc i32 %2153 to i8
  %2155 = and i8 %2154, 1
  %2156 = xor i8 %2155, 1
  store i8 %2156, i8* %21, align 1
  %2157 = xor i32 %2149, %2148
  %2158 = lshr i32 %2157, 4
  %2159 = trunc i32 %2158 to i8
  %2160 = and i8 %2159, 1
  store i8 %2160, i8* %26, align 1
  %2161 = icmp eq i32 %2149, 0
  %2162 = zext i1 %2161 to i8
  store i8 %2162, i8* %29, align 1
  %2163 = lshr i32 %2149, 31
  %2164 = trunc i32 %2163 to i8
  store i8 %2164, i8* %32, align 1
  %2165 = lshr i32 %2148, 31
  %2166 = xor i32 %2163, %2165
  %2167 = add nuw nsw i32 %2166, %2165
  %2168 = icmp eq i32 %2167, 2
  %2169 = zext i1 %2168 to i8
  store i8 %2169, i8* %38, align 1
  %.v92 = select i1 %2161, i64 25, i64 90
  %2170 = add i64 %2110, %.v92
  store i64 %2170, i64* %3, align 8
  br i1 %2161, label %block_416df8, label %block_.L_416e39

block_416df8:                                     ; preds = %block_416ddf
  %2171 = load i64, i64* %RBP.i, align 8
  %2172 = add i64 %2171, -64
  %2173 = add i64 %2170, 4
  store i64 %2173, i64* %3, align 8
  %2174 = inttoptr i64 %2172 to i64*
  %2175 = load i64, i64* %2174, align 8
  store i64 %2175, i64* %RAX.i646, align 8
  %2176 = add i64 %2170, 7
  store i64 %2176, i64* %3, align 8
  %2177 = inttoptr i64 %2175 to i64*
  %2178 = load i64, i64* %2177, align 8
  store i64 %2178, i64* %RDI.i893, align 8
  %2179 = add i64 %2170, 238712
  %2180 = add i64 %2170, 12
  %2181 = load i64, i64* %6, align 8
  %2182 = add i64 %2181, -8
  %2183 = inttoptr i64 %2182 to i64*
  store i64 %2180, i64* %2183, align 8
  store i64 %2182, i64* %6, align 8
  store i64 %2179, i64* %3, align 8
  %call2_416dff = tail call %struct.Memory* @sub_451270.IsInt(%struct.State* nonnull %0, i64 %2179, %struct.Memory* %MEMORY.21)
  %2184 = load i32, i32* %EAX.i880, align 4
  %2185 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2186 = and i32 %2184, 255
  %2187 = tail call i32 @llvm.ctpop.i32(i32 %2186)
  %2188 = trunc i32 %2187 to i8
  %2189 = and i8 %2188, 1
  %2190 = xor i8 %2189, 1
  store i8 %2190, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2191 = icmp eq i32 %2184, 0
  %2192 = zext i1 %2191 to i8
  store i8 %2192, i8* %29, align 1
  %2193 = lshr i32 %2184, 31
  %2194 = trunc i32 %2193 to i8
  store i8 %2194, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v97 = select i1 %2191, i64 9, i64 53
  %2195 = add i64 %2185, %.v97
  store i64 %2195, i64* %3, align 8
  br i1 %2191, label %block_416e0d, label %block_.L_416e39

block_416e0d:                                     ; preds = %block_416df8
  store i64 ptrtoint (%G__0x456ad9_type* @G__0x456ad9 to i64), i64* %RDI.i893, align 8
  %2196 = load i64, i64* %RBP.i, align 8
  %2197 = add i64 %2196, -24
  %2198 = add i64 %2195, 14
  store i64 %2198, i64* %3, align 8
  %2199 = inttoptr i64 %2197 to i64*
  %2200 = load i64, i64* %2199, align 8
  store i64 %2200, i64* %RAX.i646, align 8
  %2201 = add i64 %2196, -80
  %2202 = add i64 %2195, 18
  store i64 %2202, i64* %3, align 8
  %2203 = inttoptr i64 %2201 to i32*
  %2204 = load i32, i32* %2203, align 4
  %2205 = sext i32 %2204 to i64
  %2206 = shl nsw i64 %2205, 4
  store i64 %2206, i64* %RCX.i918, align 8
  %2207 = add i64 %2206, %2200
  store i64 %2207, i64* %RAX.i646, align 8
  %2208 = icmp ult i64 %2207, %2200
  %2209 = icmp ult i64 %2207, %2206
  %2210 = or i1 %2208, %2209
  %2211 = zext i1 %2210 to i8
  store i8 %2211, i8* %14, align 1
  %2212 = trunc i64 %2207 to i32
  %2213 = and i32 %2212, 255
  %2214 = tail call i32 @llvm.ctpop.i32(i32 %2213)
  %2215 = trunc i32 %2214 to i8
  %2216 = and i8 %2215, 1
  %2217 = xor i8 %2216, 1
  store i8 %2217, i8* %21, align 1
  %2218 = xor i64 %2206, %2200
  %2219 = xor i64 %2218, %2207
  %2220 = lshr i64 %2219, 4
  %2221 = trunc i64 %2220 to i8
  %2222 = and i8 %2221, 1
  store i8 %2222, i8* %26, align 1
  %2223 = icmp eq i64 %2207, 0
  %2224 = zext i1 %2223 to i8
  store i8 %2224, i8* %29, align 1
  %2225 = lshr i64 %2207, 63
  %2226 = trunc i64 %2225 to i8
  store i8 %2226, i8* %32, align 1
  %2227 = lshr i64 %2200, 63
  %2228 = lshr i64 %2205, 59
  %2229 = and i64 %2228, 1
  %2230 = xor i64 %2225, %2227
  %2231 = xor i64 %2225, %2229
  %2232 = add nuw nsw i64 %2230, %2231
  %2233 = icmp eq i64 %2232, 2
  %2234 = zext i1 %2233 to i8
  store i8 %2234, i8* %38, align 1
  %2235 = inttoptr i64 %2207 to i64*
  %2236 = add i64 %2195, 28
  store i64 %2236, i64* %3, align 8
  %2237 = load i64, i64* %2235, align 8
  store i64 %2237, i64* %RSI.i789, align 8
  %2238 = add i64 %2196, -40
  %2239 = add i64 %2195, 32
  store i64 %2239, i64* %3, align 8
  %2240 = inttoptr i64 %2238 to i64*
  %2241 = load i64, i64* %2240, align 8
  store i64 %2241, i64* %RDX.i840, align 8
  %AL.i113 = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i113, align 1
  %2242 = add i64 %2195, 162819
  %2243 = add i64 %2195, 39
  %2244 = load i64, i64* %6, align 8
  %2245 = add i64 %2244, -8
  %2246 = inttoptr i64 %2245 to i64*
  store i64 %2243, i64* %2246, align 8
  store i64 %2245, i64* %6, align 8
  store i64 %2242, i64* %3, align 8
  %call2_416e2f = tail call %struct.Memory* @sub_43ea10.Die(%struct.State* nonnull %0, i64 %2242, %struct.Memory* %call2_416dff)
  %2247 = load i64, i64* %3, align 8
  %2248 = add i64 %2247, 191
  br label %block_.L_416ef3

block_.L_416e39:                                  ; preds = %block_416df8, %block_416ddf
  %2249 = phi i64 [ %2170, %block_416ddf ], [ %2195, %block_416df8 ]
  %MEMORY.22 = phi %struct.Memory* [ %MEMORY.21, %block_416ddf ], [ %call2_416dff, %block_416df8 ]
  %2250 = load i64, i64* %RBP.i, align 8
  %2251 = add i64 %2250, -24
  %2252 = add i64 %2249, 4
  store i64 %2252, i64* %3, align 8
  %2253 = inttoptr i64 %2251 to i64*
  %2254 = load i64, i64* %2253, align 8
  store i64 %2254, i64* %RAX.i646, align 8
  %2255 = add i64 %2250, -80
  %2256 = add i64 %2249, 8
  store i64 %2256, i64* %3, align 8
  %2257 = inttoptr i64 %2255 to i32*
  %2258 = load i32, i32* %2257, align 4
  %2259 = sext i32 %2258 to i64
  %2260 = shl nsw i64 %2259, 4
  store i64 %2260, i64* %RCX.i918, align 8
  %2261 = add i64 %2260, %2254
  store i64 %2261, i64* %RAX.i646, align 8
  %2262 = icmp ult i64 %2261, %2254
  %2263 = icmp ult i64 %2261, %2260
  %2264 = or i1 %2262, %2263
  %2265 = zext i1 %2264 to i8
  store i8 %2265, i8* %14, align 1
  %2266 = trunc i64 %2261 to i32
  %2267 = and i32 %2266, 255
  %2268 = tail call i32 @llvm.ctpop.i32(i32 %2267)
  %2269 = trunc i32 %2268 to i8
  %2270 = and i8 %2269, 1
  %2271 = xor i8 %2270, 1
  store i8 %2271, i8* %21, align 1
  %2272 = xor i64 %2260, %2254
  %2273 = xor i64 %2272, %2261
  %2274 = lshr i64 %2273, 4
  %2275 = trunc i64 %2274 to i8
  %2276 = and i8 %2275, 1
  store i8 %2276, i8* %26, align 1
  %2277 = icmp eq i64 %2261, 0
  %2278 = zext i1 %2277 to i8
  store i8 %2278, i8* %29, align 1
  %2279 = lshr i64 %2261, 63
  %2280 = trunc i64 %2279 to i8
  store i8 %2280, i8* %32, align 1
  %2281 = lshr i64 %2254, 63
  %2282 = lshr i64 %2259, 59
  %2283 = and i64 %2282, 1
  %2284 = xor i64 %2279, %2281
  %2285 = xor i64 %2279, %2283
  %2286 = add nuw nsw i64 %2284, %2285
  %2287 = icmp eq i64 %2286, 2
  %2288 = zext i1 %2287 to i8
  store i8 %2288, i8* %38, align 1
  %2289 = add i64 %2261, 12
  %2290 = add i64 %2249, 19
  store i64 %2290, i64* %3, align 8
  %2291 = inttoptr i64 %2289 to i32*
  %2292 = load i32, i32* %2291, align 4
  %2293 = add i32 %2292, -2
  %2294 = icmp ult i32 %2292, 2
  %2295 = zext i1 %2294 to i8
  store i8 %2295, i8* %14, align 1
  %2296 = and i32 %2293, 255
  %2297 = tail call i32 @llvm.ctpop.i32(i32 %2296)
  %2298 = trunc i32 %2297 to i8
  %2299 = and i8 %2298, 1
  %2300 = xor i8 %2299, 1
  store i8 %2300, i8* %21, align 1
  %2301 = xor i32 %2293, %2292
  %2302 = lshr i32 %2301, 4
  %2303 = trunc i32 %2302 to i8
  %2304 = and i8 %2303, 1
  store i8 %2304, i8* %26, align 1
  %2305 = icmp eq i32 %2293, 0
  %2306 = zext i1 %2305 to i8
  store i8 %2306, i8* %29, align 1
  %2307 = lshr i32 %2293, 31
  %2308 = trunc i32 %2307 to i8
  store i8 %2308, i8* %32, align 1
  %2309 = lshr i32 %2292, 31
  %2310 = xor i32 %2307, %2309
  %2311 = add nuw nsw i32 %2310, %2309
  %2312 = icmp eq i32 %2311, 2
  %2313 = zext i1 %2312 to i8
  store i8 %2313, i8* %38, align 1
  %.v93 = select i1 %2305, i64 25, i64 90
  %2314 = add i64 %2249, %.v93
  store i64 %2314, i64* %3, align 8
  br i1 %2305, label %block_416e52, label %block_.L_416e93

block_416e52:                                     ; preds = %block_.L_416e39
  %2315 = load i64, i64* %RBP.i, align 8
  %2316 = add i64 %2315, -64
  %2317 = add i64 %2314, 4
  store i64 %2317, i64* %3, align 8
  %2318 = inttoptr i64 %2316 to i64*
  %2319 = load i64, i64* %2318, align 8
  store i64 %2319, i64* %RAX.i646, align 8
  %2320 = add i64 %2314, 7
  store i64 %2320, i64* %3, align 8
  %2321 = inttoptr i64 %2319 to i64*
  %2322 = load i64, i64* %2321, align 8
  store i64 %2322, i64* %RDI.i893, align 8
  %2323 = add i64 %2314, 239182
  %2324 = add i64 %2314, 12
  %2325 = load i64, i64* %6, align 8
  %2326 = add i64 %2325, -8
  %2327 = inttoptr i64 %2326 to i64*
  store i64 %2324, i64* %2327, align 8
  store i64 %2326, i64* %6, align 8
  store i64 %2323, i64* %3, align 8
  %call2_416e59 = tail call %struct.Memory* @sub_4514a0.IsReal(%struct.State* nonnull %0, i64 %2323, %struct.Memory* %MEMORY.22)
  %2328 = load i32, i32* %EAX.i880, align 4
  %2329 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2330 = and i32 %2328, 255
  %2331 = tail call i32 @llvm.ctpop.i32(i32 %2330)
  %2332 = trunc i32 %2331 to i8
  %2333 = and i8 %2332, 1
  %2334 = xor i8 %2333, 1
  store i8 %2334, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2335 = icmp eq i32 %2328, 0
  %2336 = zext i1 %2335 to i8
  store i8 %2336, i8* %29, align 1
  %2337 = lshr i32 %2328, 31
  %2338 = trunc i32 %2337 to i8
  store i8 %2338, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v96 = select i1 %2335, i64 9, i64 53
  %2339 = add i64 %2329, %.v96
  store i64 %2339, i64* %3, align 8
  br i1 %2335, label %block_416e67, label %block_.L_416e93

block_416e67:                                     ; preds = %block_416e52
  store i64 ptrtoint (%G__0x456b03_type* @G__0x456b03 to i64), i64* %RDI.i893, align 8
  %2340 = load i64, i64* %RBP.i, align 8
  %2341 = add i64 %2340, -24
  %2342 = add i64 %2339, 14
  store i64 %2342, i64* %3, align 8
  %2343 = inttoptr i64 %2341 to i64*
  %2344 = load i64, i64* %2343, align 8
  store i64 %2344, i64* %RAX.i646, align 8
  %2345 = add i64 %2340, -80
  %2346 = add i64 %2339, 18
  store i64 %2346, i64* %3, align 8
  %2347 = inttoptr i64 %2345 to i32*
  %2348 = load i32, i32* %2347, align 4
  %2349 = sext i32 %2348 to i64
  %2350 = shl nsw i64 %2349, 4
  store i64 %2350, i64* %RCX.i918, align 8
  %2351 = add i64 %2350, %2344
  store i64 %2351, i64* %RAX.i646, align 8
  %2352 = icmp ult i64 %2351, %2344
  %2353 = icmp ult i64 %2351, %2350
  %2354 = or i1 %2352, %2353
  %2355 = zext i1 %2354 to i8
  store i8 %2355, i8* %14, align 1
  %2356 = trunc i64 %2351 to i32
  %2357 = and i32 %2356, 255
  %2358 = tail call i32 @llvm.ctpop.i32(i32 %2357)
  %2359 = trunc i32 %2358 to i8
  %2360 = and i8 %2359, 1
  %2361 = xor i8 %2360, 1
  store i8 %2361, i8* %21, align 1
  %2362 = xor i64 %2350, %2344
  %2363 = xor i64 %2362, %2351
  %2364 = lshr i64 %2363, 4
  %2365 = trunc i64 %2364 to i8
  %2366 = and i8 %2365, 1
  store i8 %2366, i8* %26, align 1
  %2367 = icmp eq i64 %2351, 0
  %2368 = zext i1 %2367 to i8
  store i8 %2368, i8* %29, align 1
  %2369 = lshr i64 %2351, 63
  %2370 = trunc i64 %2369 to i8
  store i8 %2370, i8* %32, align 1
  %2371 = lshr i64 %2344, 63
  %2372 = lshr i64 %2349, 59
  %2373 = and i64 %2372, 1
  %2374 = xor i64 %2369, %2371
  %2375 = xor i64 %2369, %2373
  %2376 = add nuw nsw i64 %2374, %2375
  %2377 = icmp eq i64 %2376, 2
  %2378 = zext i1 %2377 to i8
  store i8 %2378, i8* %38, align 1
  %2379 = inttoptr i64 %2351 to i64*
  %2380 = add i64 %2339, 28
  store i64 %2380, i64* %3, align 8
  %2381 = load i64, i64* %2379, align 8
  store i64 %2381, i64* %RSI.i789, align 8
  %2382 = add i64 %2340, -40
  %2383 = add i64 %2339, 32
  store i64 %2383, i64* %3, align 8
  %2384 = inttoptr i64 %2382 to i64*
  %2385 = load i64, i64* %2384, align 8
  store i64 %2385, i64* %RDX.i840, align 8
  %AL.i66 = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i66, align 1
  %2386 = add i64 %2339, 162729
  %2387 = add i64 %2339, 39
  %2388 = load i64, i64* %6, align 8
  %2389 = add i64 %2388, -8
  %2390 = inttoptr i64 %2389 to i64*
  store i64 %2387, i64* %2390, align 8
  store i64 %2389, i64* %6, align 8
  store i64 %2386, i64* %3, align 8
  %call2_416e89 = tail call %struct.Memory* @sub_43ea10.Die(%struct.State* nonnull %0, i64 %2386, %struct.Memory* %call2_416e59)
  %2391 = load i64, i64* %3, align 8
  %2392 = add i64 %2391, 96
  br label %block_.L_416eee

block_.L_416e93:                                  ; preds = %block_416e52, %block_.L_416e39
  %2393 = phi i64 [ %2314, %block_.L_416e39 ], [ %2339, %block_416e52 ]
  %MEMORY.23 = phi %struct.Memory* [ %MEMORY.22, %block_.L_416e39 ], [ %call2_416e59, %block_416e52 ]
  %2394 = load i64, i64* %RBP.i, align 8
  %2395 = add i64 %2394, -24
  %2396 = add i64 %2393, 4
  store i64 %2396, i64* %3, align 8
  %2397 = inttoptr i64 %2395 to i64*
  %2398 = load i64, i64* %2397, align 8
  store i64 %2398, i64* %RAX.i646, align 8
  %2399 = add i64 %2394, -80
  %2400 = add i64 %2393, 8
  store i64 %2400, i64* %3, align 8
  %2401 = inttoptr i64 %2399 to i32*
  %2402 = load i32, i32* %2401, align 4
  %2403 = sext i32 %2402 to i64
  %2404 = shl nsw i64 %2403, 4
  store i64 %2404, i64* %RCX.i918, align 8
  %2405 = add i64 %2404, %2398
  store i64 %2405, i64* %RAX.i646, align 8
  %2406 = icmp ult i64 %2405, %2398
  %2407 = icmp ult i64 %2405, %2404
  %2408 = or i1 %2406, %2407
  %2409 = zext i1 %2408 to i8
  store i8 %2409, i8* %14, align 1
  %2410 = trunc i64 %2405 to i32
  %2411 = and i32 %2410, 255
  %2412 = tail call i32 @llvm.ctpop.i32(i32 %2411)
  %2413 = trunc i32 %2412 to i8
  %2414 = and i8 %2413, 1
  %2415 = xor i8 %2414, 1
  store i8 %2415, i8* %21, align 1
  %2416 = xor i64 %2404, %2398
  %2417 = xor i64 %2416, %2405
  %2418 = lshr i64 %2417, 4
  %2419 = trunc i64 %2418 to i8
  %2420 = and i8 %2419, 1
  store i8 %2420, i8* %26, align 1
  %2421 = icmp eq i64 %2405, 0
  %2422 = zext i1 %2421 to i8
  store i8 %2422, i8* %29, align 1
  %2423 = lshr i64 %2405, 63
  %2424 = trunc i64 %2423 to i8
  store i8 %2424, i8* %32, align 1
  %2425 = lshr i64 %2398, 63
  %2426 = lshr i64 %2403, 59
  %2427 = and i64 %2426, 1
  %2428 = xor i64 %2423, %2425
  %2429 = xor i64 %2423, %2427
  %2430 = add nuw nsw i64 %2428, %2429
  %2431 = icmp eq i64 %2430, 2
  %2432 = zext i1 %2431 to i8
  store i8 %2432, i8* %38, align 1
  %2433 = add i64 %2405, 12
  %2434 = add i64 %2393, 19
  store i64 %2434, i64* %3, align 8
  %2435 = inttoptr i64 %2433 to i32*
  %2436 = load i32, i32* %2435, align 4
  %2437 = add i32 %2436, -3
  %2438 = icmp ult i32 %2436, 3
  %2439 = zext i1 %2438 to i8
  store i8 %2439, i8* %14, align 1
  %2440 = and i32 %2437, 255
  %2441 = tail call i32 @llvm.ctpop.i32(i32 %2440)
  %2442 = trunc i32 %2441 to i8
  %2443 = and i8 %2442, 1
  %2444 = xor i8 %2443, 1
  store i8 %2444, i8* %21, align 1
  %2445 = xor i32 %2437, %2436
  %2446 = lshr i32 %2445, 4
  %2447 = trunc i32 %2446 to i8
  %2448 = and i8 %2447, 1
  store i8 %2448, i8* %26, align 1
  %2449 = icmp eq i32 %2437, 0
  %2450 = zext i1 %2449 to i8
  store i8 %2450, i8* %29, align 1
  %2451 = lshr i32 %2437, 31
  %2452 = trunc i32 %2451 to i8
  store i8 %2452, i8* %32, align 1
  %2453 = lshr i32 %2436, 31
  %2454 = xor i32 %2451, %2453
  %2455 = add nuw nsw i32 %2454, %2453
  %2456 = icmp eq i32 %2455, 2
  %2457 = zext i1 %2456 to i8
  store i8 %2457, i8* %38, align 1
  %.v94 = select i1 %2449, i64 25, i64 86
  %2458 = add i64 %2393, %.v94
  store i64 %2458, i64* %3, align 8
  br i1 %2449, label %block_416eac, label %block_.L_416ee9

block_416eac:                                     ; preds = %block_.L_416e93
  %2459 = load i64, i64* %RBP.i, align 8
  %2460 = add i64 %2459, -64
  %2461 = add i64 %2458, 4
  store i64 %2461, i64* %3, align 8
  %2462 = inttoptr i64 %2460 to i64*
  %2463 = load i64, i64* %2462, align 8
  store i64 %2463, i64* %RAX.i646, align 8
  %2464 = add i64 %2458, 7
  store i64 %2464, i64* %3, align 8
  %2465 = inttoptr i64 %2463 to i64*
  %2466 = load i64, i64* %2465, align 8
  store i64 %2466, i64* %RDI.i893, align 8
  %2467 = add i64 %2458, -88652
  %2468 = add i64 %2458, 12
  %2469 = load i64, i64* %6, align 8
  %2470 = add i64 %2469, -8
  %2471 = inttoptr i64 %2470 to i64*
  store i64 %2468, i64* %2471, align 8
  store i64 %2470, i64* %6, align 8
  store i64 %2467, i64* %3, align 8
  %2472 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %MEMORY.23)
  %2473 = load i64, i64* %RAX.i646, align 8
  %2474 = load i64, i64* %3, align 8
  %2475 = add i64 %2473, -1
  %2476 = icmp eq i64 %2473, 0
  %2477 = zext i1 %2476 to i8
  store i8 %2477, i8* %14, align 1
  %2478 = trunc i64 %2475 to i32
  %2479 = and i32 %2478, 255
  %2480 = tail call i32 @llvm.ctpop.i32(i32 %2479)
  %2481 = trunc i32 %2480 to i8
  %2482 = and i8 %2481, 1
  %2483 = xor i8 %2482, 1
  store i8 %2483, i8* %21, align 1
  %2484 = xor i64 %2475, %2473
  %2485 = lshr i64 %2484, 4
  %2486 = trunc i64 %2485 to i8
  %2487 = and i8 %2486, 1
  store i8 %2487, i8* %26, align 1
  %2488 = icmp eq i64 %2475, 0
  %2489 = zext i1 %2488 to i8
  store i8 %2489, i8* %29, align 1
  %2490 = lshr i64 %2475, 63
  %2491 = trunc i64 %2490 to i8
  store i8 %2491, i8* %32, align 1
  %2492 = lshr i64 %2473, 63
  %2493 = xor i64 %2490, %2492
  %2494 = add nuw nsw i64 %2493, %2492
  %2495 = icmp eq i64 %2494, 2
  %2496 = zext i1 %2495 to i8
  store i8 %2496, i8* %38, align 1
  %.v95 = select i1 %2488, i64 49, i64 10
  %2497 = add i64 %2474, %.v95
  store i64 %2497, i64* %3, align 8
  br i1 %2488, label %block_.L_416ee9, label %block_416ec2

block_416ec2:                                     ; preds = %block_416eac
  store i64 ptrtoint (%G__0x456b2e_type* @G__0x456b2e to i64), i64* %RDI.i893, align 8
  %2498 = load i64, i64* %RBP.i, align 8
  %2499 = add i64 %2498, -24
  %2500 = add i64 %2497, 14
  store i64 %2500, i64* %3, align 8
  %2501 = inttoptr i64 %2499 to i64*
  %2502 = load i64, i64* %2501, align 8
  store i64 %2502, i64* %RAX.i646, align 8
  %2503 = add i64 %2498, -80
  %2504 = add i64 %2497, 18
  store i64 %2504, i64* %3, align 8
  %2505 = inttoptr i64 %2503 to i32*
  %2506 = load i32, i32* %2505, align 4
  %2507 = sext i32 %2506 to i64
  %2508 = shl nsw i64 %2507, 4
  store i64 %2508, i64* %RCX.i918, align 8
  %2509 = add i64 %2508, %2502
  store i64 %2509, i64* %RAX.i646, align 8
  %2510 = icmp ult i64 %2509, %2502
  %2511 = icmp ult i64 %2509, %2508
  %2512 = or i1 %2510, %2511
  %2513 = zext i1 %2512 to i8
  store i8 %2513, i8* %14, align 1
  %2514 = trunc i64 %2509 to i32
  %2515 = and i32 %2514, 255
  %2516 = tail call i32 @llvm.ctpop.i32(i32 %2515)
  %2517 = trunc i32 %2516 to i8
  %2518 = and i8 %2517, 1
  %2519 = xor i8 %2518, 1
  store i8 %2519, i8* %21, align 1
  %2520 = xor i64 %2508, %2502
  %2521 = xor i64 %2520, %2509
  %2522 = lshr i64 %2521, 4
  %2523 = trunc i64 %2522 to i8
  %2524 = and i8 %2523, 1
  store i8 %2524, i8* %26, align 1
  %2525 = icmp eq i64 %2509, 0
  %2526 = zext i1 %2525 to i8
  store i8 %2526, i8* %29, align 1
  %2527 = lshr i64 %2509, 63
  %2528 = trunc i64 %2527 to i8
  store i8 %2528, i8* %32, align 1
  %2529 = lshr i64 %2502, 63
  %2530 = lshr i64 %2507, 59
  %2531 = and i64 %2530, 1
  %2532 = xor i64 %2527, %2529
  %2533 = xor i64 %2527, %2531
  %2534 = add nuw nsw i64 %2532, %2533
  %2535 = icmp eq i64 %2534, 2
  %2536 = zext i1 %2535 to i8
  store i8 %2536, i8* %38, align 1
  %2537 = inttoptr i64 %2509 to i64*
  %2538 = add i64 %2497, 28
  store i64 %2538, i64* %3, align 8
  %2539 = load i64, i64* %2537, align 8
  store i64 %2539, i64* %RSI.i789, align 8
  %2540 = add i64 %2498, -40
  %2541 = add i64 %2497, 32
  store i64 %2541, i64* %3, align 8
  %2542 = inttoptr i64 %2540 to i64*
  %2543 = load i64, i64* %2542, align 8
  store i64 %2543, i64* %RDX.i840, align 8
  %AL.i = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i, align 1
  %2544 = add i64 %2497, 162638
  %2545 = add i64 %2497, 39
  %2546 = load i64, i64* %6, align 8
  %2547 = add i64 %2546, -8
  %2548 = inttoptr i64 %2547 to i64*
  store i64 %2545, i64* %2548, align 8
  store i64 %2547, i64* %6, align 8
  store i64 %2544, i64* %3, align 8
  %call2_416ee4 = tail call %struct.Memory* @sub_43ea10.Die(%struct.State* nonnull %0, i64 %2544, %struct.Memory* %2472)
  %.pre77 = load i64, i64* %3, align 8
  br label %block_.L_416ee9

block_.L_416ee9:                                  ; preds = %block_.L_416e93, %block_416ec2, %block_416eac
  %2549 = phi i64 [ %2458, %block_.L_416e93 ], [ %2497, %block_416eac ], [ %.pre77, %block_416ec2 ]
  %MEMORY.24 = phi %struct.Memory* [ %MEMORY.23, %block_.L_416e93 ], [ %2472, %block_416eac ], [ %call2_416ee4, %block_416ec2 ]
  %2550 = add i64 %2549, 5
  store i64 %2550, i64* %3, align 8
  br label %block_.L_416eee

block_.L_416eee:                                  ; preds = %block_.L_416ee9, %block_416e67
  %storemerge46 = phi i64 [ %2392, %block_416e67 ], [ %2550, %block_.L_416ee9 ]
  %MEMORY.25 = phi %struct.Memory* [ %call2_416e89, %block_416e67 ], [ %MEMORY.24, %block_.L_416ee9 ]
  %2551 = add i64 %storemerge46, 5
  store i64 %2551, i64* %3, align 8
  br label %block_.L_416ef3

block_.L_416ef3:                                  ; preds = %block_.L_416eee, %block_416e0d
  %storemerge43 = phi i64 [ %2248, %block_416e0d ], [ %2551, %block_.L_416eee ]
  %MEMORY.26 = phi %struct.Memory* [ %call2_416e2f, %block_416e0d ], [ %MEMORY.25, %block_.L_416eee ]
  %2552 = add i64 %storemerge43, 5
  store i64 %2552, i64* %3, align 8
  %.pre78 = load i64, i64* %RBP.i, align 8
  br label %block_.L_416ef8

block_.L_416ef8:                                  ; preds = %block_.L_416ef3, %block_.L_416dc6
  %2553 = phi i64 [ %2058, %block_.L_416dc6 ], [ %.pre78, %block_.L_416ef3 ]
  %2554 = phi i64 [ %2110, %block_.L_416dc6 ], [ %2552, %block_.L_416ef3 ]
  %MEMORY.27 = phi %struct.Memory* [ %MEMORY.21, %block_.L_416dc6 ], [ %MEMORY.26, %block_.L_416ef3 ]
  %2555 = load i32, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*), align 8
  %2556 = zext i32 %2555 to i64
  store i64 %2556, i64* %RAX.i646, align 8
  %2557 = add i64 %2553, -48
  %2558 = add i64 %2554, 11
  store i64 %2558, i64* %3, align 8
  %2559 = inttoptr i64 %2557 to i64*
  %2560 = load i64, i64* %2559, align 8
  store i64 %2560, i64* %RCX.i918, align 8
  %2561 = add i64 %2554, 13
  store i64 %2561, i64* %3, align 8
  %2562 = inttoptr i64 %2560 to i32*
  store i32 %2555, i32* %2562, align 4
  %2563 = load i64, i64* %RBP.i, align 8
  %2564 = add i64 %2563, -4
  %2565 = load i64, i64* %3, align 8
  %2566 = add i64 %2565, 7
  store i64 %2566, i64* %3, align 8
  %2567 = inttoptr i64 %2564 to i32*
  store i32 1, i32* %2567, align 4
  %.pre81 = load i64, i64* %3, align 8
  br label %block_.L_416f0c

block_.L_416f0c:                                  ; preds = %block_.L_416ef8, %block_41683a, %block_.L_4167e6
  %2568 = phi i64 [ %230, %block_.L_4167e6 ], [ %.pre81, %block_.L_416ef8 ], [ %314, %block_41683a ]
  %MEMORY.28 = phi %struct.Memory* [ %MEMORY.0, %block_.L_4167e6 ], [ %MEMORY.27, %block_.L_416ef8 ], [ %248, %block_41683a ]
  %2569 = load i64, i64* %RBP.i, align 8
  %2570 = add i64 %2569, -4
  %2571 = add i64 %2568, 3
  store i64 %2571, i64* %3, align 8
  %2572 = inttoptr i64 %2570 to i32*
  %2573 = load i32, i32* %2572, align 4
  %2574 = zext i32 %2573 to i64
  store i64 %2574, i64* %RAX.i646, align 8
  %2575 = load i64, i64* %6, align 8
  %2576 = add i64 %2575, 96
  store i64 %2576, i64* %6, align 8
  %2577 = icmp ugt i64 %2575, -97
  %2578 = zext i1 %2577 to i8
  store i8 %2578, i8* %14, align 1
  %2579 = trunc i64 %2576 to i32
  %2580 = and i32 %2579, 255
  %2581 = tail call i32 @llvm.ctpop.i32(i32 %2580)
  %2582 = trunc i32 %2581 to i8
  %2583 = and i8 %2582, 1
  %2584 = xor i8 %2583, 1
  store i8 %2584, i8* %21, align 1
  %2585 = xor i64 %2576, %2575
  %2586 = lshr i64 %2585, 4
  %2587 = trunc i64 %2586 to i8
  %2588 = and i8 %2587, 1
  store i8 %2588, i8* %26, align 1
  %2589 = icmp eq i64 %2576, 0
  %2590 = zext i1 %2589 to i8
  store i8 %2590, i8* %29, align 1
  %2591 = lshr i64 %2576, 63
  %2592 = trunc i64 %2591 to i8
  store i8 %2592, i8* %32, align 1
  %2593 = lshr i64 %2575, 63
  %2594 = xor i64 %2591, %2593
  %2595 = add nuw nsw i64 %2594, %2591
  %2596 = icmp eq i64 %2595, 2
  %2597 = zext i1 %2596 to i8
  store i8 %2597, i8* %38, align 1
  %2598 = add i64 %2568, 8
  store i64 %2598, i64* %3, align 8
  %2599 = add i64 %2575, 104
  %2600 = inttoptr i64 %2576 to i64*
  %2601 = load i64, i64* %2600, align 8
  store i64 %2601, i64* %RBP.i, align 8
  store i64 %2599, i64* %6, align 8
  %2602 = add i64 %2568, 9
  store i64 %2602, i64* %3, align 8
  %2603 = inttoptr i64 %2599 to i64*
  %2604 = load i64, i64* %2603, align 8
  store i64 %2604, i64* %3, align 8
  %2605 = add i64 %2575, 112
  store i64 %2605, i64* %6, align 8
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
define %struct.Memory* @routine_subq__0x60___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -96
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 96
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
define %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
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
define %struct.Memory* @routine_movq_0x10__rbp____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R10, align 8
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
define %struct.Memory* @routine_movq__r8__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r9__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %R9, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r10__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %R10, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movl__0x0__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x661200___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x8__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_jge_.L_4167e6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_0x661200___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*), align 8
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4167e6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x456fc4___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x456fc4_type* @G__0x456fc4 to i64), i64 4294967295), i64* %RDX, align 8
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
define %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_416815(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x661200___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = bitcast i64* %RCX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x0____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 0, i64* %4, align 8
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
define %struct.Memory* @routine_jmpq_.L_416f0c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x456fc3___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x456fc3_type* @G__0x456fc3 to i64), i64 4294967295), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41687a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__0x661200(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x663070(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x663070_type* @G_0x663070 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = trunc i64 %5 to i32
  %8 = and i32 %7, 255
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  %15 = icmp eq i64 %5, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i64 %5, 63
  %19 = trunc i64 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_416ba5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x456fc3___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x456fc3_type* @G__0x456fc3 to i64), i64* %RSI, align 8
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
define %struct.Memory* @routine_movslq_0x661200___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*), align 8
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %RDI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3d___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 61, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.strchr_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__0x663070(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0x663070_type* @G_0x663070 to i64*), align 8
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
define %struct.Memory* @routine_je_.L_416903(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x663070___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x663070_type* @G_0x663070 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x0____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  store i8 0, i8* %4, align 1
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
define %struct.Memory* @routine_movl__edx__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_cmpl_MINUS0x1c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -28
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
define %struct.Memory* @routine_jge_.L_4169dc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
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
define %struct.Memory* @routine_jne_.L_4169c9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x48__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x48__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_movslq_MINUS0x44__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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
define %struct.Memory* @routine_shlq__0x4___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 4
  store i64 %6, i64* %RSI, align 8
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
define %struct.Memory* @routine_addq__rsi___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RDX, align 8
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
define %struct.Memory* @routine_movq___rdx____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__rax___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_jne_.L_4169c4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4169dc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4169c9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4169ce(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41692b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_jle_.L_416a37(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x48__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_movq___rcx____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RCX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RDI, align 8
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
define %struct.Memory* @routine_je_.L_416a37(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x456a2a___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x456a2a_type* @G__0x456a2a to i64), i64* %RDI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_jne_.L_416a66(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x456a60___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x456a60_type* @G__0x456a60 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_movq__rax____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_je_.L_416b4e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_416ad8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x0__0x663070(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 12
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* bitcast (%G_0x663070_type* @G_0x663070 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x661200___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__edx__0x661200(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_416b49(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jl_.L_416b17(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x456a78___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x456a78_type* @G__0x456a78 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_416b44(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_movq_MINUS0x40__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax____rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RDX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -3
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
define %struct.Memory* @routine_movl__ecx__0x661200(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x661200_type* @G_0x661200 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_416ba0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_416b84(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x456a9a___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x456a9a_type* @G__0x456a9a to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x0____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 0, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_416dc6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_416bd0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xffffffff__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_416c4a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1__0x8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
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
define %struct.Memory* @routine_jne_.L_416c37(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsbl_0x1__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RSI, align 8
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
define %struct.Memory* @routine_jmpq_.L_416c4a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_416c3c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_416bde(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_416c74(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x456ac1___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x456ac1_type* @G__0x456ac1 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl___rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RAX to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i8, i8* %4, align 1
  %8 = sext i8 %7 to i64
  %9 = and i64 %8, 4294967295
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_416d66(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsbl_0x1__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RCX, align 8
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
define %struct.Memory* @routine_je_.L_416ce4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_416d55(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_416d29(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_416d50(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_416dc1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_416d9f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_416dbc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_416ef8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1__0xc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_jne_.L_416e39(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x456ad9___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x456ad9_type* @G__0x456ad9 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_416ef3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__0xc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_jne_.L_416e93(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.IsReal(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x456b03___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x456b03_type* @G__0x456b03 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_416eee(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3__0xc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_jne_.L_416ee9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpq__0x1___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -1
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
define %struct.Memory* @routine_je_.L_416ee9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x456b2e___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x456b2e_type* @G__0x456b2e to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_416ef8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
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
define %struct.Memory* @routine_addq__0x60___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 96
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -97
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
