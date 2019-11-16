; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x6cb8f8_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G_0x6d4740_type = type <{ [8 x i8] }>
%G_0x6f9728_type = type <{ [8 x i8] }>
%G_0x70f6d0_type = type <{ [4 x i8] }>
%G_0x7242a0_type = type <{ [4 x i8] }>
%G__0x4bfd9d_type = type <{ [8 x i8] }>
%G__0x4bfdb7_type = type <{ [8 x i8] }>
%G__0x4bfdd3_type = type <{ [8 x i8] }>
%G__0x4bfdeb_type = type <{ [8 x i8] }>
%G__0x4bfdfe_type = type <{ [8 x i8] }>
%G__0x4bfe11_type = type <{ [8 x i8] }>
%G__0x4bfe27_type = type <{ [8 x i8] }>
%G__0x4bfe38_type = type <{ [8 x i8] }>
%G__0x4bfe49_type = type <{ [8 x i8] }>
%G__0x4bfe61_type = type <{ [8 x i8] }>
%G__0x4bfe74_type = type <{ [8 x i8] }>
%G__0x4bfe87_type = type <{ [8 x i8] }>
%G__0x4bfe9d_type = type <{ [8 x i8] }>
%G__0x4bfeae_type = type <{ [8 x i8] }>
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
@G_0x6d4740 = local_unnamed_addr global %G_0x6d4740_type zeroinitializer
@G_0x6f9728 = local_unnamed_addr global %G_0x6f9728_type zeroinitializer
@G_0x70f6d0 = local_unnamed_addr global %G_0x70f6d0_type zeroinitializer
@G_0x7242a0 = local_unnamed_addr global %G_0x7242a0_type zeroinitializer
@G__0x4bfd9d = global %G__0x4bfd9d_type zeroinitializer
@G__0x4bfdb7 = global %G__0x4bfdb7_type zeroinitializer
@G__0x4bfdd3 = global %G__0x4bfdd3_type zeroinitializer
@G__0x4bfdeb = global %G__0x4bfdeb_type zeroinitializer
@G__0x4bfdfe = global %G__0x4bfdfe_type zeroinitializer
@G__0x4bfe11 = global %G__0x4bfe11_type zeroinitializer
@G__0x4bfe27 = global %G__0x4bfe27_type zeroinitializer
@G__0x4bfe38 = global %G__0x4bfe38_type zeroinitializer
@G__0x4bfe49 = global %G__0x4bfe49_type zeroinitializer
@G__0x4bfe61 = global %G__0x4bfe61_type zeroinitializer
@G__0x4bfe74 = global %G__0x4bfe74_type zeroinitializer
@G__0x4bfe87 = global %G__0x4bfe87_type zeroinitializer
@G__0x4bfe9d = global %G__0x4bfe9d_type zeroinitializer
@G__0x4bfeae = global %G__0x4bfeae_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4acb00.u_1(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4ac9c0.se_v(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @pred_weight_table(%struct.State* noalias, i64, %struct.Memory* noalias readnone) local_unnamed_addr #1 {
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
  %RDI.i696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  store i64 ptrtoint (%G__0x4bfd9d_type* @G__0x4bfd9d to i64), i64* %RDI.i696, align 8
  %RAX.i694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %39 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %39, i64* %RAX.i694, align 8
  %40 = add i64 %39, 2364
  %41 = add i64 %10, 32
  store i64 %41, i64* %3, align 8
  %42 = inttoptr i64 %40 to i32*
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %RAX.i694, align 8
  %45 = shl nsw i64 %44, 3
  %46 = add nsw i64 %45, 7493120
  %47 = add i64 %10, 40
  store i64 %47, i64* %3, align 8
  %48 = inttoptr i64 %46 to i64*
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %RAX.i694, align 8
  %RCX.i688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %50 = add i64 %10, 42
  store i64 %50, i64* %3, align 8
  %51 = inttoptr i64 %49 to i32*
  %52 = load i32, i32* %51, align 4
  %53 = zext i32 %52 to i64
  store i64 %53, i64* %RCX.i688, align 8
  %54 = add i64 %7, -12
  %55 = add i64 %10, 45
  store i64 %55, i64* %3, align 8
  %56 = inttoptr i64 %54 to i32*
  store i32 %52, i32* %56, align 4
  %57 = load i64, i64* %3, align 8
  %58 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %58, i64* %RAX.i694, align 8
  %59 = add i64 %58, 14160
  %60 = add i64 %57, 15
  store i64 %60, i64* %3, align 8
  %61 = inttoptr i64 %59 to i64*
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %RAX.i694, align 8
  %63 = add i64 %62, 24
  %64 = add i64 %57, 19
  store i64 %64, i64* %3, align 8
  %65 = inttoptr i64 %63 to i64*
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %RAX.i694, align 8
  %RDX.i676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %67 = load i64, i64* %RBP.i, align 8
  %68 = add i64 %67, -4
  %69 = add i64 %57, 23
  store i64 %69, i64* %3, align 8
  %70 = inttoptr i64 %68 to i32*
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = mul nsw i64 %72, 120
  store i64 %73, i64* %RDX.i676, align 8
  %74 = lshr i64 %73, 63
  %75 = add i64 %73, %66
  store i64 %75, i64* %RAX.i694, align 8
  %76 = icmp ult i64 %75, %66
  %77 = icmp ult i64 %75, %73
  %78 = or i1 %76, %77
  %79 = zext i1 %78 to i8
  store i8 %79, i8* %14, align 1
  %80 = trunc i64 %75 to i32
  %81 = and i32 %80, 255
  %82 = tail call i32 @llvm.ctpop.i32(i32 %81)
  %83 = trunc i32 %82 to i8
  %84 = and i8 %83, 1
  %85 = xor i8 %84, 1
  store i8 %85, i8* %21, align 1
  %86 = xor i64 %73, %66
  %87 = xor i64 %86, %75
  %88 = lshr i64 %87, 4
  %89 = trunc i64 %88 to i8
  %90 = and i8 %89, 1
  store i8 %90, i8* %26, align 1
  %91 = icmp eq i64 %75, 0
  %92 = zext i1 %91 to i8
  store i8 %92, i8* %29, align 1
  %93 = lshr i64 %75, 63
  %94 = trunc i64 %93 to i8
  store i8 %94, i8* %32, align 1
  %95 = lshr i64 %66, 63
  %96 = xor i64 %93, %95
  %97 = xor i64 %93, %74
  %98 = add nuw nsw i64 %96, %97
  %99 = icmp eq i64 %98, 2
  %100 = zext i1 %99 to i8
  store i8 %100, i8* %38, align 1
  %101 = add i64 %67, -16
  %102 = add i64 %57, 34
  store i64 %102, i64* %3, align 8
  %103 = inttoptr i64 %101 to i64*
  store i64 %75, i64* %103, align 8
  %104 = load i64, i64* %RBP.i, align 8
  %105 = add i64 %104, -20
  %106 = load i64, i64* %3, align 8
  %107 = add i64 %106, 7
  store i64 %107, i64* %3, align 8
  %108 = inttoptr i64 %105 to i32*
  store i32 0, i32* %108, align 4
  %RSI.i664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %109 = load i64, i64* %3, align 8
  %110 = load i32, i32* bitcast (%G_0x70f6d0_type* @G_0x70f6d0 to i32*), align 8
  %111 = zext i32 %110 to i64
  store i64 %111, i64* %RSI.i664, align 8
  %112 = load i64, i64* %RBP.i, align 8
  %113 = add i64 %112, -16
  %114 = add i64 %109, 11
  store i64 %114, i64* %3, align 8
  %115 = inttoptr i64 %113 to i64*
  %116 = load i64, i64* %115, align 8
  store i64 %116, i64* %RDX.i676, align 8
  %117 = add i64 %109, 547977
  %118 = add i64 %109, 16
  %119 = load i64, i64* %6, align 8
  %120 = add i64 %119, -8
  %121 = inttoptr i64 %120 to i64*
  store i64 %118, i64* %121, align 8
  store i64 %120, i64* %6, align 8
  store i64 %117, i64* %3, align 8
  %call2_426a22 = tail call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* %0, i64 %117, %struct.Memory* %2)
  %122 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4bfdb7_type* @G__0x4bfdb7 to i64), i64* %RDI.i696, align 8
  %123 = load i64, i64* %RAX.i694, align 8
  %124 = load i64, i64* %RBP.i, align 8
  %125 = add i64 %124, -20
  %126 = add i64 %122, 13
  store i64 %126, i64* %3, align 8
  %127 = trunc i64 %123 to i32
  %128 = inttoptr i64 %125 to i32*
  %129 = load i32, i32* %128, align 4
  %130 = add i32 %129, %127
  %131 = zext i32 %130 to i64
  store i64 %131, i64* %RAX.i694, align 8
  %132 = icmp ult i32 %130, %127
  %133 = icmp ult i32 %130, %129
  %134 = or i1 %132, %133
  %135 = zext i1 %134 to i8
  store i8 %135, i8* %14, align 1
  %136 = and i32 %130, 255
  %137 = tail call i32 @llvm.ctpop.i32(i32 %136)
  %138 = trunc i32 %137 to i8
  %139 = and i8 %138, 1
  %140 = xor i8 %139, 1
  store i8 %140, i8* %21, align 1
  %141 = xor i32 %129, %127
  %142 = xor i32 %141, %130
  %143 = lshr i32 %142, 4
  %144 = trunc i32 %143 to i8
  %145 = and i8 %144, 1
  store i8 %145, i8* %26, align 1
  %146 = icmp eq i32 %130, 0
  %147 = zext i1 %146 to i8
  store i8 %147, i8* %29, align 1
  %148 = lshr i32 %130, 31
  %149 = trunc i32 %148 to i8
  store i8 %149, i8* %32, align 1
  %150 = lshr i32 %127, 31
  %151 = lshr i32 %129, 31
  %152 = xor i32 %148, %150
  %153 = xor i32 %148, %151
  %154 = add nuw nsw i32 %152, %153
  %155 = icmp eq i32 %154, 2
  %156 = zext i1 %155 to i8
  store i8 %156, i8* %38, align 1
  %157 = add i64 %122, 16
  store i64 %157, i64* %3, align 8
  store i32 %130, i32* %128, align 4
  %158 = load i64, i64* %3, align 8
  %159 = load i32, i32* bitcast (%G_0x7242a0_type* @G_0x7242a0 to i32*), align 8
  %160 = zext i32 %159 to i64
  store i64 %160, i64* %RSI.i664, align 8
  %161 = load i64, i64* %RBP.i, align 8
  %162 = add i64 %161, -16
  %163 = add i64 %158, 11
  store i64 %163, i64* %3, align 8
  %164 = inttoptr i64 %162 to i64*
  %165 = load i64, i64* %164, align 8
  store i64 %165, i64* %RDX.i676, align 8
  %166 = add i64 %158, 547945
  %167 = add i64 %158, 16
  %168 = load i64, i64* %6, align 8
  %169 = add i64 %168, -8
  %170 = inttoptr i64 %169 to i64*
  store i64 %167, i64* %170, align 8
  store i64 %169, i64* %6, align 8
  store i64 %166, i64* %3, align 8
  %call2_426a42 = tail call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* %0, i64 %166, %struct.Memory* %call2_426a22)
  %171 = load i64, i64* %RAX.i694, align 8
  %172 = load i64, i64* %RBP.i, align 8
  %173 = add i64 %172, -20
  %174 = load i64, i64* %3, align 8
  %175 = add i64 %174, 3
  store i64 %175, i64* %3, align 8
  %176 = trunc i64 %171 to i32
  %177 = inttoptr i64 %173 to i32*
  %178 = load i32, i32* %177, align 4
  %179 = add i32 %178, %176
  %180 = zext i32 %179 to i64
  store i64 %180, i64* %RAX.i694, align 8
  %181 = icmp ult i32 %179, %176
  %182 = icmp ult i32 %179, %178
  %183 = or i1 %181, %182
  %184 = zext i1 %183 to i8
  store i8 %184, i8* %14, align 1
  %185 = and i32 %179, 255
  %186 = tail call i32 @llvm.ctpop.i32(i32 %185)
  %187 = trunc i32 %186 to i8
  %188 = and i8 %187, 1
  %189 = xor i8 %188, 1
  store i8 %189, i8* %21, align 1
  %190 = xor i32 %178, %176
  %191 = xor i32 %190, %179
  %192 = lshr i32 %191, 4
  %193 = trunc i32 %192 to i8
  %194 = and i8 %193, 1
  store i8 %194, i8* %26, align 1
  %195 = icmp eq i32 %179, 0
  %196 = zext i1 %195 to i8
  store i8 %196, i8* %29, align 1
  %197 = lshr i32 %179, 31
  %198 = trunc i32 %197 to i8
  store i8 %198, i8* %32, align 1
  %199 = lshr i32 %176, 31
  %200 = lshr i32 %178, 31
  %201 = xor i32 %197, %199
  %202 = xor i32 %197, %200
  %203 = add nuw nsw i32 %201, %202
  %204 = icmp eq i32 %203, 2
  %205 = zext i1 %204 to i8
  store i8 %205, i8* %38, align 1
  %206 = add i64 %174, 6
  store i64 %206, i64* %3, align 8
  store i32 %179, i32* %177, align 4
  %207 = load i64, i64* %RBP.i, align 8
  %208 = add i64 %207, -24
  %209 = load i64, i64* %3, align 8
  %210 = add i64 %209, 7
  store i64 %210, i64* %3, align 8
  %211 = inttoptr i64 %208 to i32*
  store i32 0, i32* %211, align 4
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_426a54

block_.L_426a54:                                  ; preds = %block_.L_426ca1, %entry
  %212 = phi i64 [ %.pre, %entry ], [ %1088, %block_.L_426ca1 ]
  %MEMORY.0 = phi %struct.Memory* [ %call2_426a42, %entry ], [ %MEMORY.5, %block_.L_426ca1 ]
  %213 = load i64, i64* %RBP.i, align 8
  %214 = add i64 %213, -24
  %215 = add i64 %212, 3
  store i64 %215, i64* %3, align 8
  %216 = inttoptr i64 %214 to i32*
  %217 = load i32, i32* %216, align 4
  %218 = zext i32 %217 to i64
  store i64 %218, i64* %RAX.i694, align 8
  %219 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %219, i64* %RCX.i688, align 8
  %220 = add i64 %219, 72000
  %221 = add i64 %212, 17
  store i64 %221, i64* %3, align 8
  %222 = inttoptr i64 %220 to i32*
  %223 = load i32, i32* %222, align 4
  %224 = sub i32 %217, %223
  %225 = icmp ult i32 %217, %223
  %226 = zext i1 %225 to i8
  store i8 %226, i8* %14, align 1
  %227 = and i32 %224, 255
  %228 = tail call i32 @llvm.ctpop.i32(i32 %227)
  %229 = trunc i32 %228 to i8
  %230 = and i8 %229, 1
  %231 = xor i8 %230, 1
  store i8 %231, i8* %21, align 1
  %232 = xor i32 %223, %217
  %233 = xor i32 %232, %224
  %234 = lshr i32 %233, 4
  %235 = trunc i32 %234 to i8
  %236 = and i8 %235, 1
  store i8 %236, i8* %26, align 1
  %237 = icmp eq i32 %224, 0
  %238 = zext i1 %237 to i8
  store i8 %238, i8* %29, align 1
  %239 = lshr i32 %224, 31
  %240 = trunc i32 %239 to i8
  store i8 %240, i8* %32, align 1
  %241 = lshr i32 %217, 31
  %242 = lshr i32 %223, 31
  %243 = xor i32 %242, %241
  %244 = xor i32 %239, %241
  %245 = add nuw nsw i32 %244, %243
  %246 = icmp eq i32 %245, 2
  %247 = zext i1 %246 to i8
  store i8 %247, i8* %38, align 1
  %248 = icmp ne i8 %240, 0
  %249 = xor i1 %248, %246
  %.v = select i1 %249, i64 23, i64 608
  %250 = add i64 %212, %.v
  store i64 %250, i64* %3, align 8
  br i1 %249, label %block_426a6b, label %block_.L_426cb4

block_426a6b:                                     ; preds = %block_.L_426a54
  store i64 1, i64* %RAX.i694, align 8
  %251 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*), align 8
  store i64 %251, i64* %RCX.i688, align 8
  %252 = add i64 %250, 16
  store i64 %252, i64* %3, align 8
  %253 = inttoptr i64 %251 to i64*
  %254 = load i64, i64* %253, align 8
  store i64 %254, i64* %RCX.i688, align 8
  %255 = add i64 %250, 20
  store i64 %255, i64* %3, align 8
  %256 = load i32, i32* %216, align 4
  %257 = sext i32 %256 to i64
  store i64 %257, i64* %RDX.i676, align 8
  %258 = shl nsw i64 %257, 3
  %259 = add i64 %258, %254
  %260 = add i64 %250, 24
  store i64 %260, i64* %3, align 8
  %261 = inttoptr i64 %259 to i64*
  %262 = load i64, i64* %261, align 8
  store i64 %262, i64* %RCX.i688, align 8
  %263 = add i64 %250, 26
  store i64 %263, i64* %3, align 8
  %264 = inttoptr i64 %262 to i32*
  %265 = load i32, i32* %264, align 4
  %266 = zext i32 %265 to i64
  store i64 %266, i64* %RSI.i664, align 8
  %267 = load i32, i32* bitcast (%G_0x70f6d0_type* @G_0x70f6d0 to i32*), align 8
  %268 = zext i32 %267 to i64
  store i64 %268, i64* %RCX.i688, align 8
  %269 = add i64 %250, 35
  store i64 %269, i64* %3, align 8
  %270 = trunc i32 %267 to i5
  switch i5 %270, label %271 [
    i5 0, label %routine_shll__cl___eax.exit610
    i5 1, label %280
  ]

; <label>:271:                                    ; preds = %block_426a6b
  %272 = and i32 %267, 31
  %273 = zext i32 %272 to i64
  %274 = add nuw nsw i64 %273, 4294967295
  %275 = and i64 %274, 4294967295
  %276 = shl i64 1, %275
  %277 = trunc i64 %276 to i32
  %278 = icmp slt i32 %277, 0
  %279 = shl i32 %277, 1
  br label %280

; <label>:280:                                    ; preds = %block_426a6b, %271
  %281 = phi i1 [ %278, %271 ], [ false, %block_426a6b ]
  %282 = phi i32 [ %279, %271 ], [ 2, %block_426a6b ]
  %283 = zext i32 %282 to i64
  store i64 %283, i64* %RAX.i694, align 8
  %284 = zext i1 %281 to i8
  store i8 %284, i8* %14, align 1
  %285 = and i32 %282, 254
  %286 = tail call i32 @llvm.ctpop.i32(i32 %285)
  %287 = trunc i32 %286 to i8
  %288 = and i8 %287, 1
  %289 = xor i8 %288, 1
  store i8 %289, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %290 = icmp eq i32 %282, 0
  %291 = zext i1 %290 to i8
  store i8 %291, i8* %29, align 1
  %292 = lshr i32 %282, 31
  %293 = trunc i32 %292 to i8
  store i8 %293, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_shll__cl___eax.exit610

routine_shll__cl___eax.exit610:                   ; preds = %280, %block_426a6b
  %294 = phi i32 [ %282, %280 ], [ 1, %block_426a6b ]
  %295 = sub i32 %265, %294
  %296 = icmp ult i32 %265, %294
  %297 = zext i1 %296 to i8
  store i8 %297, i8* %14, align 1
  %298 = and i32 %295, 255
  %299 = tail call i32 @llvm.ctpop.i32(i32 %298)
  %300 = trunc i32 %299 to i8
  %301 = and i8 %300, 1
  %302 = xor i8 %301, 1
  store i8 %302, i8* %21, align 1
  %303 = xor i32 %294, %265
  %304 = xor i32 %303, %295
  %305 = lshr i32 %304, 4
  %306 = trunc i32 %305 to i8
  %307 = and i8 %306, 1
  store i8 %307, i8* %26, align 1
  %308 = icmp eq i32 %295, 0
  %309 = zext i1 %308 to i8
  store i8 %309, i8* %29, align 1
  %310 = lshr i32 %295, 31
  %311 = trunc i32 %310 to i8
  store i8 %311, i8* %32, align 1
  %312 = lshr i32 %265, 31
  %313 = lshr i32 %294, 31
  %314 = xor i32 %313, %312
  %315 = xor i32 %310, %312
  %316 = add nuw nsw i32 %315, %314
  %317 = icmp eq i32 %316, 2
  %318 = zext i1 %317 to i8
  store i8 %318, i8* %38, align 1
  %.v39 = select i1 %308, i64 43, i64 71
  %319 = add i64 %250, %.v39
  store i64 %319, i64* %3, align 8
  br i1 %308, label %block_426a96, label %block_.L_426ab2

block_426a96:                                     ; preds = %routine_shll__cl___eax.exit610
  %320 = load i64, i64* bitcast (%G_0x6f9728_type* @G_0x6f9728 to i64*), align 8
  store i64 %320, i64* %RAX.i694, align 8
  %321 = add i64 %319, 11
  store i64 %321, i64* %3, align 8
  %322 = inttoptr i64 %320 to i64*
  %323 = load i64, i64* %322, align 8
  store i64 %323, i64* %RAX.i694, align 8
  %324 = add i64 %319, 15
  store i64 %324, i64* %3, align 8
  %325 = load i32, i32* %216, align 4
  %326 = sext i32 %325 to i64
  store i64 %326, i64* %RCX.i688, align 8
  %327 = shl nsw i64 %326, 3
  %328 = add i64 %327, %323
  %329 = add i64 %319, 19
  store i64 %329, i64* %3, align 8
  %330 = inttoptr i64 %328 to i64*
  %331 = load i64, i64* %330, align 8
  store i64 %331, i64* %RAX.i694, align 8
  %332 = add i64 %319, 22
  store i64 %332, i64* %3, align 8
  %333 = inttoptr i64 %331 to i32*
  %334 = load i32, i32* %333, align 4
  store i8 0, i8* %14, align 1
  %335 = and i32 %334, 255
  %336 = tail call i32 @llvm.ctpop.i32(i32 %335)
  %337 = trunc i32 %336 to i8
  %338 = and i8 %337, 1
  %339 = xor i8 %338, 1
  store i8 %339, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %340 = icmp eq i32 %334, 0
  %341 = zext i1 %340 to i8
  store i8 %341, i8* %29, align 1
  %342 = lshr i32 %334, 31
  %343 = trunc i32 %342 to i8
  store i8 %343, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v45 = select i1 %340, i64 155, i64 28
  %344 = add i64 %319, %.v45
  store i64 %344, i64* %3, align 8
  br i1 %340, label %block_.L_426b31, label %block_.L_426ab2

block_.L_426ab2:                                  ; preds = %routine_shll__cl___eax.exit610, %block_426a96
  %345 = phi i64 [ %344, %block_426a96 ], [ %319, %routine_shll__cl___eax.exit610 ]
  store i64 ptrtoint (%G__0x4bfdd3_type* @G__0x4bfdd3 to i64), i64* %RDI.i696, align 8
  store i64 1, i64* %RSI.i664, align 8
  %346 = add i64 %213, -16
  %347 = add i64 %345, 19
  store i64 %347, i64* %3, align 8
  %348 = inttoptr i64 %346 to i64*
  %349 = load i64, i64* %348, align 8
  store i64 %349, i64* %RDX.i676, align 8
  %350 = add i64 %345, 548942
  %351 = add i64 %345, 24
  %352 = load i64, i64* %6, align 8
  %353 = add i64 %352, -8
  %354 = inttoptr i64 %353 to i64*
  store i64 %351, i64* %354, align 8
  store i64 %353, i64* %6, align 8
  store i64 %350, i64* %3, align 8
  %call2_426ac5 = tail call %struct.Memory* @sub_4acb00.u_1(%struct.State* nonnull %0, i64 %350, %struct.Memory* %MEMORY.0)
  %355 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4bfdeb_type* @G__0x4bfdeb to i64), i64* %RDI.i696, align 8
  %356 = load i64, i64* %RAX.i694, align 8
  %357 = load i64, i64* %RBP.i, align 8
  %358 = add i64 %357, -20
  %359 = add i64 %355, 13
  store i64 %359, i64* %3, align 8
  %360 = trunc i64 %356 to i32
  %361 = inttoptr i64 %358 to i32*
  %362 = load i32, i32* %361, align 4
  %363 = add i32 %362, %360
  %364 = zext i32 %363 to i64
  store i64 %364, i64* %RAX.i694, align 8
  %365 = icmp ult i32 %363, %360
  %366 = icmp ult i32 %363, %362
  %367 = or i1 %365, %366
  %368 = zext i1 %367 to i8
  store i8 %368, i8* %14, align 1
  %369 = and i32 %363, 255
  %370 = tail call i32 @llvm.ctpop.i32(i32 %369)
  %371 = trunc i32 %370 to i8
  %372 = and i8 %371, 1
  %373 = xor i8 %372, 1
  store i8 %373, i8* %21, align 1
  %374 = xor i32 %362, %360
  %375 = xor i32 %374, %363
  %376 = lshr i32 %375, 4
  %377 = trunc i32 %376 to i8
  %378 = and i8 %377, 1
  store i8 %378, i8* %26, align 1
  %379 = icmp eq i32 %363, 0
  %380 = zext i1 %379 to i8
  store i8 %380, i8* %29, align 1
  %381 = lshr i32 %363, 31
  %382 = trunc i32 %381 to i8
  store i8 %382, i8* %32, align 1
  %383 = lshr i32 %360, 31
  %384 = lshr i32 %362, 31
  %385 = xor i32 %381, %383
  %386 = xor i32 %381, %384
  %387 = add nuw nsw i32 %385, %386
  %388 = icmp eq i32 %387, 2
  %389 = zext i1 %388 to i8
  store i8 %389, i8* %38, align 1
  %390 = add i64 %355, 16
  store i64 %390, i64* %3, align 8
  store i32 %363, i32* %361, align 4
  %391 = load i64, i64* %3, align 8
  %392 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*), align 8
  store i64 %392, i64* %RDX.i676, align 8
  %393 = add i64 %391, 11
  store i64 %393, i64* %3, align 8
  %394 = inttoptr i64 %392 to i64*
  %395 = load i64, i64* %394, align 8
  store i64 %395, i64* %RDX.i676, align 8
  %396 = load i64, i64* %RBP.i, align 8
  %397 = add i64 %396, -24
  %398 = add i64 %391, 15
  store i64 %398, i64* %3, align 8
  %399 = inttoptr i64 %397 to i32*
  %400 = load i32, i32* %399, align 4
  %401 = sext i32 %400 to i64
  store i64 %401, i64* %RCX.i688, align 8
  %402 = shl nsw i64 %401, 3
  %403 = add i64 %402, %395
  %404 = add i64 %391, 19
  store i64 %404, i64* %3, align 8
  %405 = inttoptr i64 %403 to i64*
  %406 = load i64, i64* %405, align 8
  store i64 %406, i64* %RCX.i688, align 8
  %407 = add i64 %391, 21
  store i64 %407, i64* %3, align 8
  %408 = inttoptr i64 %406 to i32*
  %409 = load i32, i32* %408, align 4
  %410 = zext i32 %409 to i64
  store i64 %410, i64* %RSI.i664, align 8
  %411 = add i64 %396, -16
  %412 = add i64 %391, 25
  store i64 %412, i64* %3, align 8
  %413 = inttoptr i64 %411 to i64*
  %414 = load i64, i64* %413, align 8
  store i64 %414, i64* %RDX.i676, align 8
  %415 = add i64 %391, 548582
  %416 = add i64 %391, 30
  %417 = load i64, i64* %6, align 8
  %418 = add i64 %417, -8
  %419 = inttoptr i64 %418 to i64*
  store i64 %416, i64* %419, align 8
  store i64 %418, i64* %6, align 8
  store i64 %415, i64* %3, align 8
  %call2_426af3 = tail call %struct.Memory* @sub_4ac9c0.se_v(%struct.State* nonnull %0, i64 %415, %struct.Memory* %MEMORY.0)
  %420 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4bfdfe_type* @G__0x4bfdfe to i64), i64* %RDI.i696, align 8
  %421 = load i64, i64* %RAX.i694, align 8
  %422 = load i64, i64* %RBP.i, align 8
  %423 = add i64 %422, -20
  %424 = add i64 %420, 13
  store i64 %424, i64* %3, align 8
  %425 = trunc i64 %421 to i32
  %426 = inttoptr i64 %423 to i32*
  %427 = load i32, i32* %426, align 4
  %428 = add i32 %427, %425
  %429 = zext i32 %428 to i64
  store i64 %429, i64* %RAX.i694, align 8
  %430 = icmp ult i32 %428, %425
  %431 = icmp ult i32 %428, %427
  %432 = or i1 %430, %431
  %433 = zext i1 %432 to i8
  store i8 %433, i8* %14, align 1
  %434 = and i32 %428, 255
  %435 = tail call i32 @llvm.ctpop.i32(i32 %434)
  %436 = trunc i32 %435 to i8
  %437 = and i8 %436, 1
  %438 = xor i8 %437, 1
  store i8 %438, i8* %21, align 1
  %439 = xor i32 %427, %425
  %440 = xor i32 %439, %428
  %441 = lshr i32 %440, 4
  %442 = trunc i32 %441 to i8
  %443 = and i8 %442, 1
  store i8 %443, i8* %26, align 1
  %444 = icmp eq i32 %428, 0
  %445 = zext i1 %444 to i8
  store i8 %445, i8* %29, align 1
  %446 = lshr i32 %428, 31
  %447 = trunc i32 %446 to i8
  store i8 %447, i8* %32, align 1
  %448 = lshr i32 %425, 31
  %449 = lshr i32 %427, 31
  %450 = xor i32 %446, %448
  %451 = xor i32 %446, %449
  %452 = add nuw nsw i32 %450, %451
  %453 = icmp eq i32 %452, 2
  %454 = zext i1 %453 to i8
  store i8 %454, i8* %38, align 1
  %455 = add i64 %420, 16
  store i64 %455, i64* %3, align 8
  store i32 %428, i32* %426, align 4
  %456 = load i64, i64* %3, align 8
  %457 = load i64, i64* bitcast (%G_0x6f9728_type* @G_0x6f9728 to i64*), align 8
  store i64 %457, i64* %RCX.i688, align 8
  %458 = add i64 %456, 11
  store i64 %458, i64* %3, align 8
  %459 = inttoptr i64 %457 to i64*
  %460 = load i64, i64* %459, align 8
  store i64 %460, i64* %RCX.i688, align 8
  %461 = load i64, i64* %RBP.i, align 8
  %462 = add i64 %461, -24
  %463 = add i64 %456, 15
  store i64 %463, i64* %3, align 8
  %464 = inttoptr i64 %462 to i32*
  %465 = load i32, i32* %464, align 4
  %466 = sext i32 %465 to i64
  store i64 %466, i64* %RDX.i676, align 8
  %467 = shl nsw i64 %466, 3
  %468 = add i64 %467, %460
  %469 = add i64 %456, 19
  store i64 %469, i64* %3, align 8
  %470 = inttoptr i64 %468 to i64*
  %471 = load i64, i64* %470, align 8
  store i64 %471, i64* %RCX.i688, align 8
  %472 = add i64 %456, 21
  store i64 %472, i64* %3, align 8
  %473 = inttoptr i64 %471 to i32*
  %474 = load i32, i32* %473, align 4
  %475 = zext i32 %474 to i64
  store i64 %475, i64* %RSI.i664, align 8
  %476 = add i64 %461, -16
  %477 = add i64 %456, 25
  store i64 %477, i64* %3, align 8
  %478 = inttoptr i64 %476 to i64*
  %479 = load i64, i64* %478, align 8
  store i64 %479, i64* %RDX.i676, align 8
  %480 = add i64 %456, 548536
  %481 = add i64 %456, 30
  %482 = load i64, i64* %6, align 8
  %483 = add i64 %482, -8
  %484 = inttoptr i64 %483 to i64*
  store i64 %481, i64* %484, align 8
  store i64 %483, i64* %6, align 8
  store i64 %480, i64* %3, align 8
  %call2_426b21 = tail call %struct.Memory* @sub_4ac9c0.se_v(%struct.State* nonnull %0, i64 %480, %struct.Memory* %MEMORY.0)
  %485 = load i64, i64* %RAX.i694, align 8
  %486 = load i64, i64* %RBP.i, align 8
  %487 = add i64 %486, -20
  %488 = load i64, i64* %3, align 8
  %489 = add i64 %488, 3
  store i64 %489, i64* %3, align 8
  %490 = trunc i64 %485 to i32
  %491 = inttoptr i64 %487 to i32*
  %492 = load i32, i32* %491, align 4
  %493 = add i32 %492, %490
  %494 = zext i32 %493 to i64
  store i64 %494, i64* %RAX.i694, align 8
  %495 = icmp ult i32 %493, %490
  %496 = icmp ult i32 %493, %492
  %497 = or i1 %495, %496
  %498 = zext i1 %497 to i8
  store i8 %498, i8* %14, align 1
  %499 = and i32 %493, 255
  %500 = tail call i32 @llvm.ctpop.i32(i32 %499)
  %501 = trunc i32 %500 to i8
  %502 = and i8 %501, 1
  %503 = xor i8 %502, 1
  store i8 %503, i8* %21, align 1
  %504 = xor i32 %492, %490
  %505 = xor i32 %504, %493
  %506 = lshr i32 %505, 4
  %507 = trunc i32 %506 to i8
  %508 = and i8 %507, 1
  store i8 %508, i8* %26, align 1
  %509 = icmp eq i32 %493, 0
  %510 = zext i1 %509 to i8
  store i8 %510, i8* %29, align 1
  %511 = lshr i32 %493, 31
  %512 = trunc i32 %511 to i8
  store i8 %512, i8* %32, align 1
  %513 = lshr i32 %490, 31
  %514 = lshr i32 %492, 31
  %515 = xor i32 %511, %513
  %516 = xor i32 %511, %514
  %517 = add nuw nsw i32 %515, %516
  %518 = icmp eq i32 %517, 2
  %519 = zext i1 %518 to i8
  store i8 %519, i8* %38, align 1
  %520 = add i64 %488, 6
  store i64 %520, i64* %3, align 8
  store i32 %493, i32* %491, align 4
  %521 = load i64, i64* %3, align 8
  %522 = add i64 %521, 32
  store i64 %522, i64* %3, align 8
  br label %block_.L_426b4c

block_.L_426b31:                                  ; preds = %block_426a96
  store i64 ptrtoint (%G__0x4bfdd3_type* @G__0x4bfdd3 to i64), i64* %RDI.i696, align 8
  store i64 0, i64* %RSI.i664, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %523 = add i64 %213, -16
  %524 = add i64 %344, 16
  store i64 %524, i64* %3, align 8
  %525 = inttoptr i64 %523 to i64*
  %526 = load i64, i64* %525, align 8
  store i64 %526, i64* %RDX.i676, align 8
  %527 = add i64 %344, 548815
  %528 = add i64 %344, 21
  %529 = load i64, i64* %6, align 8
  %530 = add i64 %529, -8
  %531 = inttoptr i64 %530 to i64*
  store i64 %528, i64* %531, align 8
  store i64 %530, i64* %6, align 8
  store i64 %527, i64* %3, align 8
  %call2_426b41 = tail call %struct.Memory* @sub_4acb00.u_1(%struct.State* nonnull %0, i64 %527, %struct.Memory* %MEMORY.0)
  %532 = load i64, i64* %RAX.i694, align 8
  %533 = load i64, i64* %RBP.i, align 8
  %534 = add i64 %533, -20
  %535 = load i64, i64* %3, align 8
  %536 = add i64 %535, 3
  store i64 %536, i64* %3, align 8
  %537 = trunc i64 %532 to i32
  %538 = inttoptr i64 %534 to i32*
  %539 = load i32, i32* %538, align 4
  %540 = add i32 %539, %537
  %541 = zext i32 %540 to i64
  store i64 %541, i64* %RAX.i694, align 8
  %542 = icmp ult i32 %540, %537
  %543 = icmp ult i32 %540, %539
  %544 = or i1 %542, %543
  %545 = zext i1 %544 to i8
  store i8 %545, i8* %14, align 1
  %546 = and i32 %540, 255
  %547 = tail call i32 @llvm.ctpop.i32(i32 %546)
  %548 = trunc i32 %547 to i8
  %549 = and i8 %548, 1
  %550 = xor i8 %549, 1
  store i8 %550, i8* %21, align 1
  %551 = xor i32 %539, %537
  %552 = xor i32 %551, %540
  %553 = lshr i32 %552, 4
  %554 = trunc i32 %553 to i8
  %555 = and i8 %554, 1
  store i8 %555, i8* %26, align 1
  %556 = icmp eq i32 %540, 0
  %557 = zext i1 %556 to i8
  store i8 %557, i8* %29, align 1
  %558 = lshr i32 %540, 31
  %559 = trunc i32 %558 to i8
  store i8 %559, i8* %32, align 1
  %560 = lshr i32 %537, 31
  %561 = lshr i32 %539, 31
  %562 = xor i32 %558, %560
  %563 = xor i32 %558, %561
  %564 = add nuw nsw i32 %562, %563
  %565 = icmp eq i32 %564, 2
  %566 = zext i1 %565 to i8
  store i8 %566, i8* %38, align 1
  %567 = add i64 %535, 6
  store i64 %567, i64* %3, align 8
  store i32 %540, i32* %538, align 4
  %.pre26 = load i64, i64* %3, align 8
  br label %block_.L_426b4c

block_.L_426b4c:                                  ; preds = %block_.L_426b31, %block_.L_426ab2
  %568 = phi i64 [ %.pre26, %block_.L_426b31 ], [ %522, %block_.L_426ab2 ]
  store i64 1, i64* %RAX.i694, align 8
  %569 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*), align 8
  store i64 %569, i64* %RCX.i688, align 8
  %570 = add i64 %568, 16
  store i64 %570, i64* %3, align 8
  %571 = inttoptr i64 %569 to i64*
  %572 = load i64, i64* %571, align 8
  store i64 %572, i64* %RCX.i688, align 8
  %573 = load i64, i64* %RBP.i, align 8
  %574 = add i64 %573, -24
  %575 = add i64 %568, 20
  store i64 %575, i64* %3, align 8
  %576 = inttoptr i64 %574 to i32*
  %577 = load i32, i32* %576, align 4
  %578 = sext i32 %577 to i64
  store i64 %578, i64* %RDX.i676, align 8
  %579 = shl nsw i64 %578, 3
  %580 = add i64 %579, %572
  %581 = add i64 %568, 24
  store i64 %581, i64* %3, align 8
  %582 = inttoptr i64 %580 to i64*
  %583 = load i64, i64* %582, align 8
  store i64 %583, i64* %RCX.i688, align 8
  %584 = add i64 %583, 4
  %585 = add i64 %568, 27
  store i64 %585, i64* %3, align 8
  %586 = inttoptr i64 %584 to i32*
  %587 = load i32, i32* %586, align 4
  %588 = zext i32 %587 to i64
  store i64 %588, i64* %RSI.i664, align 8
  %589 = load i32, i32* bitcast (%G_0x7242a0_type* @G_0x7242a0 to i32*), align 8
  %590 = zext i32 %589 to i64
  store i64 %590, i64* %RCX.i688, align 8
  %591 = trunc i32 %589 to i8
  %592 = add i64 %568, 36
  store i64 %592, i64* %3, align 8
  %593 = trunc i32 %589 to i5
  switch i5 %593, label %594 [
    i5 0, label %routine_shll__cl___eax.exit492
    i5 1, label %603
  ]

; <label>:594:                                    ; preds = %block_.L_426b4c
  %595 = and i8 %591, 31
  %596 = zext i8 %595 to i64
  %597 = add nuw nsw i64 %596, 4294967295
  %598 = and i64 %597, 4294967295
  %599 = shl i64 1, %598
  %600 = trunc i64 %599 to i32
  %601 = icmp slt i32 %600, 0
  %602 = shl i32 %600, 1
  br label %603

; <label>:603:                                    ; preds = %block_.L_426b4c, %594
  %604 = phi i1 [ %601, %594 ], [ false, %block_.L_426b4c ]
  %605 = phi i32 [ %602, %594 ], [ 2, %block_.L_426b4c ]
  %606 = zext i32 %605 to i64
  store i64 %606, i64* %RAX.i694, align 8
  %607 = zext i1 %604 to i8
  store i8 %607, i8* %14, align 1
  %608 = and i32 %605, 254
  %609 = tail call i32 @llvm.ctpop.i32(i32 %608)
  %610 = trunc i32 %609 to i8
  %611 = and i8 %610, 1
  %612 = xor i8 %611, 1
  store i8 %612, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %613 = icmp eq i32 %605, 0
  %614 = zext i1 %613 to i8
  store i8 %614, i8* %29, align 1
  %615 = lshr i32 %605, 31
  %616 = trunc i32 %615 to i8
  store i8 %616, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_shll__cl___eax.exit492

routine_shll__cl___eax.exit492:                   ; preds = %603, %block_.L_426b4c
  %617 = phi i32 [ %605, %603 ], [ 1, %block_.L_426b4c ]
  %618 = sub i32 %587, %617
  %619 = icmp ult i32 %587, %617
  %620 = zext i1 %619 to i8
  store i8 %620, i8* %14, align 1
  %621 = and i32 %618, 255
  %622 = tail call i32 @llvm.ctpop.i32(i32 %621)
  %623 = trunc i32 %622 to i8
  %624 = and i8 %623, 1
  %625 = xor i8 %624, 1
  store i8 %625, i8* %21, align 1
  %626 = xor i32 %617, %587
  %627 = xor i32 %626, %618
  %628 = lshr i32 %627, 4
  %629 = trunc i32 %628 to i8
  %630 = and i8 %629, 1
  store i8 %630, i8* %26, align 1
  %631 = icmp eq i32 %618, 0
  %632 = zext i1 %631 to i8
  store i8 %632, i8* %29, align 1
  %633 = lshr i32 %618, 31
  %634 = trunc i32 %633 to i8
  store i8 %634, i8* %32, align 1
  %635 = lshr i32 %587, 31
  %636 = lshr i32 %617, 31
  %637 = xor i32 %636, %635
  %638 = xor i32 %633, %635
  %639 = add nuw nsw i32 %638, %637
  %640 = icmp eq i32 %639, 2
  %641 = zext i1 %640 to i8
  store i8 %641, i8* %38, align 1
  %.v40 = select i1 %631, i64 44, i64 146
  %642 = add i64 %568, %.v40
  store i64 %642, i64* %3, align 8
  br i1 %631, label %block_426b78, label %block_.L_426bde

block_426b78:                                     ; preds = %routine_shll__cl___eax.exit492
  %643 = load i64, i64* bitcast (%G_0x6f9728_type* @G_0x6f9728 to i64*), align 8
  store i64 %643, i64* %RAX.i694, align 8
  %644 = add i64 %642, 11
  store i64 %644, i64* %3, align 8
  %645 = inttoptr i64 %643 to i64*
  %646 = load i64, i64* %645, align 8
  store i64 %646, i64* %RAX.i694, align 8
  %647 = add i64 %642, 15
  store i64 %647, i64* %3, align 8
  %648 = load i32, i32* %576, align 4
  %649 = sext i32 %648 to i64
  store i64 %649, i64* %RCX.i688, align 8
  %650 = shl nsw i64 %649, 3
  %651 = add i64 %650, %646
  %652 = add i64 %642, 19
  store i64 %652, i64* %3, align 8
  %653 = inttoptr i64 %651 to i64*
  %654 = load i64, i64* %653, align 8
  store i64 %654, i64* %RAX.i694, align 8
  %655 = add i64 %654, 4
  %656 = add i64 %642, 23
  store i64 %656, i64* %3, align 8
  %657 = inttoptr i64 %655 to i32*
  %658 = load i32, i32* %657, align 4
  store i8 0, i8* %14, align 1
  %659 = and i32 %658, 255
  %660 = tail call i32 @llvm.ctpop.i32(i32 %659)
  %661 = trunc i32 %660 to i8
  %662 = and i8 %661, 1
  %663 = xor i8 %662, 1
  store i8 %663, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %664 = icmp eq i32 %658, 0
  %665 = zext i1 %664 to i8
  store i8 %665, i8* %29, align 1
  %666 = lshr i32 %658, 31
  %667 = trunc i32 %666 to i8
  store i8 %667, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v42 = select i1 %664, i64 29, i64 102
  %668 = add i64 %642, %.v42
  store i64 %668, i64* %3, align 8
  br i1 %664, label %block_426b95, label %block_.L_426bde

block_426b95:                                     ; preds = %block_426b78
  store i64 1, i64* %RAX.i694, align 8
  store i64 %569, i64* %RCX.i688, align 8
  %669 = add i64 %668, 16
  store i64 %669, i64* %3, align 8
  %670 = load i64, i64* %571, align 8
  store i64 %670, i64* %RCX.i688, align 8
  %671 = add i64 %668, 20
  store i64 %671, i64* %3, align 8
  %672 = load i32, i32* %576, align 4
  %673 = sext i32 %672 to i64
  store i64 %673, i64* %RDX.i676, align 8
  %674 = shl nsw i64 %673, 3
  %675 = add i64 %674, %670
  %676 = add i64 %668, 24
  store i64 %676, i64* %3, align 8
  %677 = inttoptr i64 %675 to i64*
  %678 = load i64, i64* %677, align 8
  store i64 %678, i64* %RCX.i688, align 8
  %679 = add i64 %678, 8
  %680 = add i64 %668, 27
  store i64 %680, i64* %3, align 8
  %681 = inttoptr i64 %679 to i32*
  %682 = load i32, i32* %681, align 4
  %683 = zext i32 %682 to i64
  store i64 %683, i64* %RSI.i664, align 8
  store i64 %590, i64* %RCX.i688, align 8
  %684 = add i64 %668, 36
  store i64 %684, i64* %3, align 8
  switch i5 %593, label %685 [
    i5 0, label %routine_shll__cl___eax.exit454
    i5 1, label %694
  ]

; <label>:685:                                    ; preds = %block_426b95
  %686 = and i8 %591, 31
  %687 = zext i8 %686 to i64
  %688 = add nuw nsw i64 %687, 4294967295
  %689 = and i64 %688, 4294967295
  %690 = shl i64 1, %689
  %691 = trunc i64 %690 to i32
  %692 = icmp slt i32 %691, 0
  %693 = shl i32 %691, 1
  br label %694

; <label>:694:                                    ; preds = %block_426b95, %685
  %695 = phi i1 [ %692, %685 ], [ false, %block_426b95 ]
  %696 = phi i32 [ %693, %685 ], [ 2, %block_426b95 ]
  %697 = zext i32 %696 to i64
  store i64 %697, i64* %RAX.i694, align 8
  %698 = zext i1 %695 to i8
  store i8 %698, i8* %14, align 1
  %699 = and i32 %696, 254
  %700 = tail call i32 @llvm.ctpop.i32(i32 %699)
  %701 = trunc i32 %700 to i8
  %702 = and i8 %701, 1
  %703 = xor i8 %702, 1
  store i8 %703, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %704 = icmp eq i32 %696, 0
  %705 = zext i1 %704 to i8
  store i8 %705, i8* %29, align 1
  %706 = lshr i32 %696, 31
  %707 = trunc i32 %706 to i8
  store i8 %707, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_shll__cl___eax.exit454

routine_shll__cl___eax.exit454:                   ; preds = %694, %block_426b95
  %708 = phi i32 [ %696, %694 ], [ 1, %block_426b95 ]
  %709 = sub i32 %682, %708
  %710 = icmp ult i32 %682, %708
  %711 = zext i1 %710 to i8
  store i8 %711, i8* %14, align 1
  %712 = and i32 %709, 255
  %713 = tail call i32 @llvm.ctpop.i32(i32 %712)
  %714 = trunc i32 %713 to i8
  %715 = and i8 %714, 1
  %716 = xor i8 %715, 1
  store i8 %716, i8* %21, align 1
  %717 = xor i32 %708, %682
  %718 = xor i32 %717, %709
  %719 = lshr i32 %718, 4
  %720 = trunc i32 %719 to i8
  %721 = and i8 %720, 1
  store i8 %721, i8* %26, align 1
  %722 = icmp eq i32 %709, 0
  %723 = zext i1 %722 to i8
  store i8 %723, i8* %29, align 1
  %724 = lshr i32 %709, 31
  %725 = trunc i32 %724 to i8
  store i8 %725, i8* %32, align 1
  %726 = lshr i32 %682, 31
  %727 = lshr i32 %708, 31
  %728 = xor i32 %727, %726
  %729 = xor i32 %724, %726
  %730 = add nuw nsw i32 %729, %728
  %731 = icmp eq i32 %730, 2
  %732 = zext i1 %731 to i8
  store i8 %732, i8* %38, align 1
  %.v43 = select i1 %722, i64 44, i64 73
  %733 = add i64 %668, %.v43
  store i64 %733, i64* %3, align 8
  br i1 %722, label %block_426bc1, label %block_.L_426bde

block_426bc1:                                     ; preds = %routine_shll__cl___eax.exit454
  store i64 %643, i64* %RAX.i694, align 8
  %734 = add i64 %733, 11
  store i64 %734, i64* %3, align 8
  %735 = load i64, i64* %645, align 8
  store i64 %735, i64* %RAX.i694, align 8
  %736 = add i64 %733, 15
  store i64 %736, i64* %3, align 8
  %737 = load i32, i32* %576, align 4
  %738 = sext i32 %737 to i64
  store i64 %738, i64* %RCX.i688, align 8
  %739 = shl nsw i64 %738, 3
  %740 = add i64 %739, %735
  %741 = add i64 %733, 19
  store i64 %741, i64* %3, align 8
  %742 = inttoptr i64 %740 to i64*
  %743 = load i64, i64* %742, align 8
  store i64 %743, i64* %RAX.i694, align 8
  %744 = add i64 %743, 8
  %745 = add i64 %733, 23
  store i64 %745, i64* %3, align 8
  %746 = inttoptr i64 %744 to i32*
  %747 = load i32, i32* %746, align 4
  store i8 0, i8* %14, align 1
  %748 = and i32 %747, 255
  %749 = tail call i32 @llvm.ctpop.i32(i32 %748)
  %750 = trunc i32 %749 to i8
  %751 = and i8 %750, 1
  %752 = xor i8 %751, 1
  store i8 %752, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %753 = icmp eq i32 %747, 0
  %754 = zext i1 %753 to i8
  store i8 %754, i8* %29, align 1
  %755 = lshr i32 %747, 31
  %756 = trunc i32 %755 to i8
  store i8 %756, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v44 = select i1 %753, i64 197, i64 29
  %757 = add i64 %733, %.v44
  store i64 %757, i64* %3, align 8
  br i1 %753, label %block_.L_426c86, label %block_.L_426bde

block_.L_426bde:                                  ; preds = %routine_shll__cl___eax.exit454, %block_426b78, %routine_shll__cl___eax.exit492, %block_426bc1
  %758 = phi i64 [ %757, %block_426bc1 ], [ %733, %routine_shll__cl___eax.exit454 ], [ %668, %block_426b78 ], [ %642, %routine_shll__cl___eax.exit492 ]
  store i64 ptrtoint (%G__0x4bfe11_type* @G__0x4bfe11 to i64), i64* %RDI.i696, align 8
  store i64 1, i64* %RSI.i664, align 8
  %759 = add i64 %573, -16
  %760 = add i64 %758, 19
  store i64 %760, i64* %3, align 8
  %761 = inttoptr i64 %759 to i64*
  %762 = load i64, i64* %761, align 8
  store i64 %762, i64* %RDX.i676, align 8
  %763 = add i64 %758, 548642
  %764 = add i64 %758, 24
  %765 = load i64, i64* %6, align 8
  %766 = add i64 %765, -8
  %767 = inttoptr i64 %766 to i64*
  store i64 %764, i64* %767, align 8
  store i64 %766, i64* %6, align 8
  store i64 %763, i64* %3, align 8
  %call2_426bf1 = tail call %struct.Memory* @sub_4acb00.u_1(%struct.State* nonnull %0, i64 %763, %struct.Memory* %MEMORY.0)
  %768 = load i64, i64* %RAX.i694, align 8
  %769 = load i64, i64* %RBP.i, align 8
  %770 = add i64 %769, -20
  %771 = load i64, i64* %3, align 8
  %772 = add i64 %771, 3
  store i64 %772, i64* %3, align 8
  %773 = trunc i64 %768 to i32
  %774 = inttoptr i64 %770 to i32*
  %775 = load i32, i32* %774, align 4
  %776 = add i32 %775, %773
  %777 = zext i32 %776 to i64
  store i64 %777, i64* %RAX.i694, align 8
  %778 = icmp ult i32 %776, %773
  %779 = icmp ult i32 %776, %775
  %780 = or i1 %778, %779
  %781 = zext i1 %780 to i8
  store i8 %781, i8* %14, align 1
  %782 = and i32 %776, 255
  %783 = tail call i32 @llvm.ctpop.i32(i32 %782)
  %784 = trunc i32 %783 to i8
  %785 = and i8 %784, 1
  %786 = xor i8 %785, 1
  store i8 %786, i8* %21, align 1
  %787 = xor i32 %775, %773
  %788 = xor i32 %787, %776
  %789 = lshr i32 %788, 4
  %790 = trunc i32 %789 to i8
  %791 = and i8 %790, 1
  store i8 %791, i8* %26, align 1
  %792 = icmp eq i32 %776, 0
  %793 = zext i1 %792 to i8
  store i8 %793, i8* %29, align 1
  %794 = lshr i32 %776, 31
  %795 = trunc i32 %794 to i8
  store i8 %795, i8* %32, align 1
  %796 = lshr i32 %773, 31
  %797 = lshr i32 %775, 31
  %798 = xor i32 %794, %796
  %799 = xor i32 %794, %797
  %800 = add nuw nsw i32 %798, %799
  %801 = icmp eq i32 %800, 2
  %802 = zext i1 %801 to i8
  store i8 %802, i8* %38, align 1
  %803 = add i64 %771, 6
  store i64 %803, i64* %3, align 8
  store i32 %776, i32* %774, align 4
  %804 = load i64, i64* %RBP.i, align 8
  %805 = add i64 %804, -28
  %806 = load i64, i64* %3, align 8
  %807 = add i64 %806, 7
  store i64 %807, i64* %3, align 8
  %808 = inttoptr i64 %805 to i32*
  store i32 1, i32* %808, align 4
  %.pre27 = load i64, i64* %3, align 8
  br label %block_.L_426c03

block_.L_426c03:                                  ; preds = %block_426c0d, %block_.L_426bde
  %809 = phi i64 [ %1010, %block_426c0d ], [ %.pre27, %block_.L_426bde ]
  %810 = load i64, i64* %RBP.i, align 8
  %811 = add i64 %810, -28
  %812 = add i64 %809, 4
  store i64 %812, i64* %3, align 8
  %813 = inttoptr i64 %811 to i32*
  %814 = load i32, i32* %813, align 4
  %815 = add i32 %814, -3
  %816 = icmp ult i32 %814, 3
  %817 = zext i1 %816 to i8
  store i8 %817, i8* %14, align 1
  %818 = and i32 %815, 255
  %819 = tail call i32 @llvm.ctpop.i32(i32 %818)
  %820 = trunc i32 %819 to i8
  %821 = and i8 %820, 1
  %822 = xor i8 %821, 1
  store i8 %822, i8* %21, align 1
  %823 = xor i32 %815, %814
  %824 = lshr i32 %823, 4
  %825 = trunc i32 %824 to i8
  %826 = and i8 %825, 1
  store i8 %826, i8* %26, align 1
  %827 = icmp eq i32 %815, 0
  %828 = zext i1 %827 to i8
  store i8 %828, i8* %29, align 1
  %829 = lshr i32 %815, 31
  %830 = trunc i32 %829 to i8
  store i8 %830, i8* %32, align 1
  %831 = lshr i32 %814, 31
  %832 = xor i32 %829, %831
  %833 = add nuw nsw i32 %832, %831
  %834 = icmp eq i32 %833, 2
  %835 = zext i1 %834 to i8
  store i8 %835, i8* %38, align 1
  %836 = icmp ne i8 %830, 0
  %837 = xor i1 %836, %834
  %.v41 = select i1 %837, i64 10, i64 126
  %838 = add i64 %809, %.v41
  store i64 %838, i64* %3, align 8
  br i1 %837, label %block_426c0d, label %block_.L_426c81

block_426c0d:                                     ; preds = %block_.L_426c03
  store i64 ptrtoint (%G__0x4bfe27_type* @G__0x4bfe27 to i64), i64* %RDI.i696, align 8
  %839 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*), align 8
  store i64 %839, i64* %RAX.i694, align 8
  %840 = add i64 %838, 21
  store i64 %840, i64* %3, align 8
  %841 = inttoptr i64 %839 to i64*
  %842 = load i64, i64* %841, align 8
  store i64 %842, i64* %RAX.i694, align 8
  %843 = add i64 %810, -24
  %844 = add i64 %838, 25
  store i64 %844, i64* %3, align 8
  %845 = inttoptr i64 %843 to i32*
  %846 = load i32, i32* %845, align 4
  %847 = sext i32 %846 to i64
  store i64 %847, i64* %RCX.i688, align 8
  %848 = shl nsw i64 %847, 3
  %849 = add i64 %848, %842
  %850 = add i64 %838, 29
  store i64 %850, i64* %3, align 8
  %851 = inttoptr i64 %849 to i64*
  %852 = load i64, i64* %851, align 8
  store i64 %852, i64* %RAX.i694, align 8
  %853 = add i64 %838, 33
  store i64 %853, i64* %3, align 8
  %854 = load i32, i32* %813, align 4
  %855 = sext i32 %854 to i64
  store i64 %855, i64* %RCX.i688, align 8
  %856 = shl nsw i64 %855, 2
  %857 = add i64 %856, %852
  %858 = add i64 %838, 36
  store i64 %858, i64* %3, align 8
  %859 = inttoptr i64 %857 to i32*
  %860 = load i32, i32* %859, align 4
  %861 = zext i32 %860 to i64
  store i64 %861, i64* %RSI.i664, align 8
  %862 = add i64 %810, -16
  %863 = add i64 %838, 40
  store i64 %863, i64* %3, align 8
  %864 = inttoptr i64 %862 to i64*
  %865 = load i64, i64* %864, align 8
  store i64 %865, i64* %RDX.i676, align 8
  %866 = add i64 %838, 548275
  %867 = add i64 %838, 45
  %868 = load i64, i64* %6, align 8
  %869 = add i64 %868, -8
  %870 = inttoptr i64 %869 to i64*
  store i64 %867, i64* %870, align 8
  store i64 %869, i64* %6, align 8
  store i64 %866, i64* %3, align 8
  %call2_426c35 = tail call %struct.Memory* @sub_4ac9c0.se_v(%struct.State* nonnull %0, i64 %866, %struct.Memory* %call2_426bf1)
  %871 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4bfe38_type* @G__0x4bfe38 to i64), i64* %RDI.i696, align 8
  %872 = load i64, i64* %RAX.i694, align 8
  %873 = load i64, i64* %RBP.i, align 8
  %874 = add i64 %873, -20
  %875 = add i64 %871, 13
  store i64 %875, i64* %3, align 8
  %876 = trunc i64 %872 to i32
  %877 = inttoptr i64 %874 to i32*
  %878 = load i32, i32* %877, align 4
  %879 = add i32 %878, %876
  %880 = zext i32 %879 to i64
  store i64 %880, i64* %RAX.i694, align 8
  %881 = icmp ult i32 %879, %876
  %882 = icmp ult i32 %879, %878
  %883 = or i1 %881, %882
  %884 = zext i1 %883 to i8
  store i8 %884, i8* %14, align 1
  %885 = and i32 %879, 255
  %886 = tail call i32 @llvm.ctpop.i32(i32 %885)
  %887 = trunc i32 %886 to i8
  %888 = and i8 %887, 1
  %889 = xor i8 %888, 1
  store i8 %889, i8* %21, align 1
  %890 = xor i32 %878, %876
  %891 = xor i32 %890, %879
  %892 = lshr i32 %891, 4
  %893 = trunc i32 %892 to i8
  %894 = and i8 %893, 1
  store i8 %894, i8* %26, align 1
  %895 = icmp eq i32 %879, 0
  %896 = zext i1 %895 to i8
  store i8 %896, i8* %29, align 1
  %897 = lshr i32 %879, 31
  %898 = trunc i32 %897 to i8
  store i8 %898, i8* %32, align 1
  %899 = lshr i32 %876, 31
  %900 = lshr i32 %878, 31
  %901 = xor i32 %897, %899
  %902 = xor i32 %897, %900
  %903 = add nuw nsw i32 %901, %902
  %904 = icmp eq i32 %903, 2
  %905 = zext i1 %904 to i8
  store i8 %905, i8* %38, align 1
  %906 = add i64 %871, 16
  store i64 %906, i64* %3, align 8
  store i32 %879, i32* %877, align 4
  %907 = load i64, i64* %3, align 8
  %908 = load i64, i64* bitcast (%G_0x6f9728_type* @G_0x6f9728 to i64*), align 8
  store i64 %908, i64* %RCX.i688, align 8
  %909 = add i64 %907, 11
  store i64 %909, i64* %3, align 8
  %910 = inttoptr i64 %908 to i64*
  %911 = load i64, i64* %910, align 8
  store i64 %911, i64* %RCX.i688, align 8
  %912 = load i64, i64* %RBP.i, align 8
  %913 = add i64 %912, -24
  %914 = add i64 %907, 15
  store i64 %914, i64* %3, align 8
  %915 = inttoptr i64 %913 to i32*
  %916 = load i32, i32* %915, align 4
  %917 = sext i32 %916 to i64
  store i64 %917, i64* %RDX.i676, align 8
  %918 = shl nsw i64 %917, 3
  %919 = add i64 %918, %911
  %920 = add i64 %907, 19
  store i64 %920, i64* %3, align 8
  %921 = inttoptr i64 %919 to i64*
  %922 = load i64, i64* %921, align 8
  store i64 %922, i64* %RCX.i688, align 8
  %923 = add i64 %912, -28
  %924 = add i64 %907, 23
  store i64 %924, i64* %3, align 8
  %925 = inttoptr i64 %923 to i32*
  %926 = load i32, i32* %925, align 4
  %927 = sext i32 %926 to i64
  store i64 %927, i64* %RDX.i676, align 8
  %928 = shl nsw i64 %927, 2
  %929 = add i64 %928, %922
  %930 = add i64 %907, 26
  store i64 %930, i64* %3, align 8
  %931 = inttoptr i64 %929 to i32*
  %932 = load i32, i32* %931, align 4
  %933 = zext i32 %932 to i64
  store i64 %933, i64* %RSI.i664, align 8
  %934 = add i64 %912, -16
  %935 = add i64 %907, 30
  store i64 %935, i64* %3, align 8
  %936 = inttoptr i64 %934 to i64*
  %937 = load i64, i64* %936, align 8
  store i64 %937, i64* %RDX.i676, align 8
  %938 = add i64 %907, 548214
  %939 = add i64 %907, 35
  %940 = load i64, i64* %6, align 8
  %941 = add i64 %940, -8
  %942 = inttoptr i64 %941 to i64*
  store i64 %939, i64* %942, align 8
  store i64 %941, i64* %6, align 8
  store i64 %938, i64* %3, align 8
  %call2_426c68 = tail call %struct.Memory* @sub_4ac9c0.se_v(%struct.State* nonnull %0, i64 %938, %struct.Memory* %call2_426bf1)
  %943 = load i64, i64* %RAX.i694, align 8
  %944 = load i64, i64* %RBP.i, align 8
  %945 = add i64 %944, -20
  %946 = load i64, i64* %3, align 8
  %947 = add i64 %946, 3
  store i64 %947, i64* %3, align 8
  %948 = trunc i64 %943 to i32
  %949 = inttoptr i64 %945 to i32*
  %950 = load i32, i32* %949, align 4
  %951 = add i32 %950, %948
  %952 = zext i32 %951 to i64
  store i64 %952, i64* %RAX.i694, align 8
  %953 = icmp ult i32 %951, %948
  %954 = icmp ult i32 %951, %950
  %955 = or i1 %953, %954
  %956 = zext i1 %955 to i8
  store i8 %956, i8* %14, align 1
  %957 = and i32 %951, 255
  %958 = tail call i32 @llvm.ctpop.i32(i32 %957)
  %959 = trunc i32 %958 to i8
  %960 = and i8 %959, 1
  %961 = xor i8 %960, 1
  store i8 %961, i8* %21, align 1
  %962 = xor i32 %950, %948
  %963 = xor i32 %962, %951
  %964 = lshr i32 %963, 4
  %965 = trunc i32 %964 to i8
  %966 = and i8 %965, 1
  store i8 %966, i8* %26, align 1
  %967 = icmp eq i32 %951, 0
  %968 = zext i1 %967 to i8
  store i8 %968, i8* %29, align 1
  %969 = lshr i32 %951, 31
  %970 = trunc i32 %969 to i8
  store i8 %970, i8* %32, align 1
  %971 = lshr i32 %948, 31
  %972 = lshr i32 %950, 31
  %973 = xor i32 %969, %971
  %974 = xor i32 %969, %972
  %975 = add nuw nsw i32 %973, %974
  %976 = icmp eq i32 %975, 2
  %977 = zext i1 %976 to i8
  store i8 %977, i8* %38, align 1
  %978 = add i64 %946, 6
  store i64 %978, i64* %3, align 8
  store i32 %951, i32* %949, align 4
  %979 = load i64, i64* %RBP.i, align 8
  %980 = add i64 %979, -28
  %981 = load i64, i64* %3, align 8
  %982 = add i64 %981, 3
  store i64 %982, i64* %3, align 8
  %983 = inttoptr i64 %980 to i32*
  %984 = load i32, i32* %983, align 4
  %985 = add i32 %984, 1
  %986 = zext i32 %985 to i64
  store i64 %986, i64* %RAX.i694, align 8
  %987 = icmp eq i32 %984, -1
  %988 = icmp eq i32 %985, 0
  %989 = or i1 %987, %988
  %990 = zext i1 %989 to i8
  store i8 %990, i8* %14, align 1
  %991 = and i32 %985, 255
  %992 = tail call i32 @llvm.ctpop.i32(i32 %991)
  %993 = trunc i32 %992 to i8
  %994 = and i8 %993, 1
  %995 = xor i8 %994, 1
  store i8 %995, i8* %21, align 1
  %996 = xor i32 %985, %984
  %997 = lshr i32 %996, 4
  %998 = trunc i32 %997 to i8
  %999 = and i8 %998, 1
  store i8 %999, i8* %26, align 1
  %1000 = zext i1 %988 to i8
  store i8 %1000, i8* %29, align 1
  %1001 = lshr i32 %985, 31
  %1002 = trunc i32 %1001 to i8
  store i8 %1002, i8* %32, align 1
  %1003 = lshr i32 %984, 31
  %1004 = xor i32 %1001, %1003
  %1005 = add nuw nsw i32 %1004, %1001
  %1006 = icmp eq i32 %1005, 2
  %1007 = zext i1 %1006 to i8
  store i8 %1007, i8* %38, align 1
  %1008 = add i64 %981, 9
  store i64 %1008, i64* %3, align 8
  store i32 %985, i32* %983, align 4
  %1009 = load i64, i64* %3, align 8
  %1010 = add i64 %1009, -121
  store i64 %1010, i64* %3, align 8
  br label %block_.L_426c03

block_.L_426c81:                                  ; preds = %block_.L_426c03
  %1011 = add i64 %838, 32
  store i64 %1011, i64* %3, align 8
  br label %block_.L_426ca1

block_.L_426c86:                                  ; preds = %block_426bc1
  store i64 ptrtoint (%G__0x4bfe11_type* @G__0x4bfe11 to i64), i64* %RDI.i696, align 8
  store i64 0, i64* %RSI.i664, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1012 = add i64 %573, -16
  %1013 = add i64 %757, 16
  store i64 %1013, i64* %3, align 8
  %1014 = inttoptr i64 %1012 to i64*
  %1015 = load i64, i64* %1014, align 8
  store i64 %1015, i64* %RDX.i676, align 8
  %1016 = add i64 %757, 548474
  %1017 = add i64 %757, 21
  %1018 = load i64, i64* %6, align 8
  %1019 = add i64 %1018, -8
  %1020 = inttoptr i64 %1019 to i64*
  store i64 %1017, i64* %1020, align 8
  store i64 %1019, i64* %6, align 8
  store i64 %1016, i64* %3, align 8
  %call2_426c96 = tail call %struct.Memory* @sub_4acb00.u_1(%struct.State* nonnull %0, i64 %1016, %struct.Memory* %MEMORY.0)
  %1021 = load i64, i64* %RAX.i694, align 8
  %1022 = load i64, i64* %RBP.i, align 8
  %1023 = add i64 %1022, -20
  %1024 = load i64, i64* %3, align 8
  %1025 = add i64 %1024, 3
  store i64 %1025, i64* %3, align 8
  %1026 = trunc i64 %1021 to i32
  %1027 = inttoptr i64 %1023 to i32*
  %1028 = load i32, i32* %1027, align 4
  %1029 = add i32 %1028, %1026
  %1030 = zext i32 %1029 to i64
  store i64 %1030, i64* %RAX.i694, align 8
  %1031 = icmp ult i32 %1029, %1026
  %1032 = icmp ult i32 %1029, %1028
  %1033 = or i1 %1031, %1032
  %1034 = zext i1 %1033 to i8
  store i8 %1034, i8* %14, align 1
  %1035 = and i32 %1029, 255
  %1036 = tail call i32 @llvm.ctpop.i32(i32 %1035)
  %1037 = trunc i32 %1036 to i8
  %1038 = and i8 %1037, 1
  %1039 = xor i8 %1038, 1
  store i8 %1039, i8* %21, align 1
  %1040 = xor i32 %1028, %1026
  %1041 = xor i32 %1040, %1029
  %1042 = lshr i32 %1041, 4
  %1043 = trunc i32 %1042 to i8
  %1044 = and i8 %1043, 1
  store i8 %1044, i8* %26, align 1
  %1045 = icmp eq i32 %1029, 0
  %1046 = zext i1 %1045 to i8
  store i8 %1046, i8* %29, align 1
  %1047 = lshr i32 %1029, 31
  %1048 = trunc i32 %1047 to i8
  store i8 %1048, i8* %32, align 1
  %1049 = lshr i32 %1026, 31
  %1050 = lshr i32 %1028, 31
  %1051 = xor i32 %1047, %1049
  %1052 = xor i32 %1047, %1050
  %1053 = add nuw nsw i32 %1051, %1052
  %1054 = icmp eq i32 %1053, 2
  %1055 = zext i1 %1054 to i8
  store i8 %1055, i8* %38, align 1
  %1056 = add i64 %1024, 6
  store i64 %1056, i64* %3, align 8
  store i32 %1029, i32* %1027, align 4
  %.pre28 = load i64, i64* %3, align 8
  %.pre29 = load i64, i64* %RBP.i, align 8
  br label %block_.L_426ca1

block_.L_426ca1:                                  ; preds = %block_.L_426c86, %block_.L_426c81
  %1057 = phi i64 [ %810, %block_.L_426c81 ], [ %.pre29, %block_.L_426c86 ]
  %1058 = phi i64 [ %1011, %block_.L_426c81 ], [ %.pre28, %block_.L_426c86 ]
  %MEMORY.5 = phi %struct.Memory* [ %call2_426bf1, %block_.L_426c81 ], [ %call2_426c96, %block_.L_426c86 ]
  %1059 = add i64 %1057, -24
  %1060 = add i64 %1058, 8
  store i64 %1060, i64* %3, align 8
  %1061 = inttoptr i64 %1059 to i32*
  %1062 = load i32, i32* %1061, align 4
  %1063 = add i32 %1062, 1
  %1064 = zext i32 %1063 to i64
  store i64 %1064, i64* %RAX.i694, align 8
  %1065 = icmp eq i32 %1062, -1
  %1066 = icmp eq i32 %1063, 0
  %1067 = or i1 %1065, %1066
  %1068 = zext i1 %1067 to i8
  store i8 %1068, i8* %14, align 1
  %1069 = and i32 %1063, 255
  %1070 = tail call i32 @llvm.ctpop.i32(i32 %1069)
  %1071 = trunc i32 %1070 to i8
  %1072 = and i8 %1071, 1
  %1073 = xor i8 %1072, 1
  store i8 %1073, i8* %21, align 1
  %1074 = xor i32 %1063, %1062
  %1075 = lshr i32 %1074, 4
  %1076 = trunc i32 %1075 to i8
  %1077 = and i8 %1076, 1
  store i8 %1077, i8* %26, align 1
  %1078 = zext i1 %1066 to i8
  store i8 %1078, i8* %29, align 1
  %1079 = lshr i32 %1063, 31
  %1080 = trunc i32 %1079 to i8
  store i8 %1080, i8* %32, align 1
  %1081 = lshr i32 %1062, 31
  %1082 = xor i32 %1079, %1081
  %1083 = add nuw nsw i32 %1082, %1079
  %1084 = icmp eq i32 %1083, 2
  %1085 = zext i1 %1084 to i8
  store i8 %1085, i8* %38, align 1
  %1086 = add i64 %1058, 14
  store i64 %1086, i64* %3, align 8
  store i32 %1063, i32* %1061, align 4
  %1087 = load i64, i64* %3, align 8
  %1088 = add i64 %1087, -603
  store i64 %1088, i64* %3, align 8
  br label %block_.L_426a54

block_.L_426cb4:                                  ; preds = %block_.L_426a54
  store i64 %219, i64* %RAX.i694, align 8
  %1089 = add i64 %219, 24
  %1090 = add i64 %250, 12
  store i64 %1090, i64* %3, align 8
  %1091 = inttoptr i64 %1089 to i32*
  %1092 = load i32, i32* %1091, align 4
  %1093 = add i32 %1092, -1
  %1094 = icmp eq i32 %1092, 0
  %1095 = zext i1 %1094 to i8
  store i8 %1095, i8* %14, align 1
  %1096 = and i32 %1093, 255
  %1097 = tail call i32 @llvm.ctpop.i32(i32 %1096)
  %1098 = trunc i32 %1097 to i8
  %1099 = and i8 %1098, 1
  %1100 = xor i8 %1099, 1
  store i8 %1100, i8* %21, align 1
  %1101 = xor i32 %1093, %1092
  %1102 = lshr i32 %1101, 4
  %1103 = trunc i32 %1102 to i8
  %1104 = and i8 %1103, 1
  store i8 %1104, i8* %26, align 1
  %1105 = icmp eq i32 %1093, 0
  %1106 = zext i1 %1105 to i8
  store i8 %1106, i8* %29, align 1
  %1107 = lshr i32 %1093, 31
  %1108 = trunc i32 %1107 to i8
  store i8 %1108, i8* %32, align 1
  %1109 = lshr i32 %1092, 31
  %1110 = xor i32 %1107, %1109
  %1111 = add nuw nsw i32 %1110, %1109
  %1112 = icmp eq i32 %1111, 2
  %1113 = zext i1 %1112 to i8
  store i8 %1113, i8* %38, align 1
  %.v30 = select i1 %1105, i64 18, i64 648
  %1114 = add i64 %250, %.v30
  store i64 %1114, i64* %3, align 8
  br i1 %1105, label %block_426cc6, label %block_.L_426f3c

block_426cc6:                                     ; preds = %block_.L_426cb4
  %1115 = add i64 %1114, 7
  store i64 %1115, i64* %3, align 8
  store i32 0, i32* %216, align 4
  %.pre21 = load i64, i64* %3, align 8
  br label %block_.L_426ccd

block_.L_426ccd:                                  ; preds = %block_.L_426f24, %block_426cc6
  %1116 = phi i64 [ %.pre21, %block_426cc6 ], [ %2001, %block_.L_426f24 ]
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.0, %block_426cc6 ], [ %MEMORY.11, %block_.L_426f24 ]
  %1117 = load i64, i64* %RBP.i, align 8
  %1118 = add i64 %1117, -24
  %1119 = add i64 %1116, 3
  store i64 %1119, i64* %3, align 8
  %1120 = inttoptr i64 %1118 to i32*
  %1121 = load i32, i32* %1120, align 4
  %1122 = zext i32 %1121 to i64
  store i64 %1122, i64* %RAX.i694, align 8
  %1123 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1123, i64* %RCX.i688, align 8
  %1124 = add i64 %1123, 72004
  %1125 = add i64 %1116, 17
  store i64 %1125, i64* %3, align 8
  %1126 = inttoptr i64 %1124 to i32*
  %1127 = load i32, i32* %1126, align 4
  %1128 = sub i32 %1121, %1127
  %1129 = icmp ult i32 %1121, %1127
  %1130 = zext i1 %1129 to i8
  store i8 %1130, i8* %14, align 1
  %1131 = and i32 %1128, 255
  %1132 = tail call i32 @llvm.ctpop.i32(i32 %1131)
  %1133 = trunc i32 %1132 to i8
  %1134 = and i8 %1133, 1
  %1135 = xor i8 %1134, 1
  store i8 %1135, i8* %21, align 1
  %1136 = xor i32 %1127, %1121
  %1137 = xor i32 %1136, %1128
  %1138 = lshr i32 %1137, 4
  %1139 = trunc i32 %1138 to i8
  %1140 = and i8 %1139, 1
  store i8 %1140, i8* %26, align 1
  %1141 = icmp eq i32 %1128, 0
  %1142 = zext i1 %1141 to i8
  store i8 %1142, i8* %29, align 1
  %1143 = lshr i32 %1128, 31
  %1144 = trunc i32 %1143 to i8
  store i8 %1144, i8* %32, align 1
  %1145 = lshr i32 %1121, 31
  %1146 = lshr i32 %1127, 31
  %1147 = xor i32 %1146, %1145
  %1148 = xor i32 %1143, %1145
  %1149 = add nuw nsw i32 %1148, %1147
  %1150 = icmp eq i32 %1149, 2
  %1151 = zext i1 %1150 to i8
  store i8 %1151, i8* %38, align 1
  %1152 = icmp ne i8 %1144, 0
  %1153 = xor i1 %1152, %1150
  %.v31 = select i1 %1153, i64 23, i64 618
  %1154 = add i64 %1116, %.v31
  %1155 = add i64 %1154, 5
  store i64 %1155, i64* %3, align 8
  br i1 %1153, label %block_426ce4, label %block_.L_426f3c.loopexit

block_426ce4:                                     ; preds = %block_.L_426ccd
  store i64 1, i64* %RAX.i694, align 8
  %1156 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*), align 8
  store i64 %1156, i64* %RCX.i688, align 8
  %1157 = add i64 %1156, 8
  %1158 = add i64 %1154, 17
  store i64 %1158, i64* %3, align 8
  %1159 = inttoptr i64 %1157 to i64*
  %1160 = load i64, i64* %1159, align 8
  store i64 %1160, i64* %RCX.i688, align 8
  %1161 = add i64 %1154, 21
  store i64 %1161, i64* %3, align 8
  %1162 = load i32, i32* %1120, align 4
  %1163 = sext i32 %1162 to i64
  store i64 %1163, i64* %RDX.i676, align 8
  %1164 = shl nsw i64 %1163, 3
  %1165 = add i64 %1164, %1160
  %1166 = add i64 %1154, 25
  store i64 %1166, i64* %3, align 8
  %1167 = inttoptr i64 %1165 to i64*
  %1168 = load i64, i64* %1167, align 8
  store i64 %1168, i64* %RCX.i688, align 8
  %1169 = add i64 %1154, 27
  store i64 %1169, i64* %3, align 8
  %1170 = inttoptr i64 %1168 to i32*
  %1171 = load i32, i32* %1170, align 4
  %1172 = zext i32 %1171 to i64
  store i64 %1172, i64* %RSI.i664, align 8
  %1173 = load i32, i32* bitcast (%G_0x70f6d0_type* @G_0x70f6d0 to i32*), align 8
  %1174 = zext i32 %1173 to i64
  store i64 %1174, i64* %RCX.i688, align 8
  %1175 = add i64 %1154, 36
  store i64 %1175, i64* %3, align 8
  %1176 = trunc i32 %1173 to i5
  switch i5 %1176, label %1177 [
    i5 0, label %routine_shll__cl___eax.exit288
    i5 1, label %1186
  ]

; <label>:1177:                                   ; preds = %block_426ce4
  %1178 = and i32 %1173, 31
  %1179 = zext i32 %1178 to i64
  %1180 = add nuw nsw i64 %1179, 4294967295
  %1181 = and i64 %1180, 4294967295
  %1182 = shl i64 1, %1181
  %1183 = trunc i64 %1182 to i32
  %1184 = icmp slt i32 %1183, 0
  %1185 = shl i32 %1183, 1
  br label %1186

; <label>:1186:                                   ; preds = %block_426ce4, %1177
  %1187 = phi i1 [ %1184, %1177 ], [ false, %block_426ce4 ]
  %1188 = phi i32 [ %1185, %1177 ], [ 2, %block_426ce4 ]
  %1189 = zext i32 %1188 to i64
  store i64 %1189, i64* %RAX.i694, align 8
  %1190 = zext i1 %1187 to i8
  store i8 %1190, i8* %14, align 1
  %1191 = and i32 %1188, 254
  %1192 = tail call i32 @llvm.ctpop.i32(i32 %1191)
  %1193 = trunc i32 %1192 to i8
  %1194 = and i8 %1193, 1
  %1195 = xor i8 %1194, 1
  store i8 %1195, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1196 = icmp eq i32 %1188, 0
  %1197 = zext i1 %1196 to i8
  store i8 %1197, i8* %29, align 1
  %1198 = lshr i32 %1188, 31
  %1199 = trunc i32 %1198 to i8
  store i8 %1199, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_shll__cl___eax.exit288

routine_shll__cl___eax.exit288:                   ; preds = %1186, %block_426ce4
  %1200 = phi i32 [ %1188, %1186 ], [ 1, %block_426ce4 ]
  %1201 = sub i32 %1171, %1200
  %1202 = icmp ult i32 %1171, %1200
  %1203 = zext i1 %1202 to i8
  store i8 %1203, i8* %14, align 1
  %1204 = and i32 %1201, 255
  %1205 = tail call i32 @llvm.ctpop.i32(i32 %1204)
  %1206 = trunc i32 %1205 to i8
  %1207 = and i8 %1206, 1
  %1208 = xor i8 %1207, 1
  store i8 %1208, i8* %21, align 1
  %1209 = xor i32 %1200, %1171
  %1210 = xor i32 %1209, %1201
  %1211 = lshr i32 %1210, 4
  %1212 = trunc i32 %1211 to i8
  %1213 = and i8 %1212, 1
  store i8 %1213, i8* %26, align 1
  %1214 = icmp eq i32 %1201, 0
  %1215 = zext i1 %1214 to i8
  store i8 %1215, i8* %29, align 1
  %1216 = lshr i32 %1201, 31
  %1217 = trunc i32 %1216 to i8
  store i8 %1217, i8* %32, align 1
  %1218 = lshr i32 %1171, 31
  %1219 = lshr i32 %1200, 31
  %1220 = xor i32 %1219, %1218
  %1221 = xor i32 %1216, %1218
  %1222 = add nuw nsw i32 %1221, %1220
  %1223 = icmp eq i32 %1222, 2
  %1224 = zext i1 %1223 to i8
  store i8 %1224, i8* %38, align 1
  %.v32 = select i1 %1214, i64 44, i64 73
  %1225 = add i64 %1154, %.v32
  store i64 %1225, i64* %3, align 8
  br i1 %1214, label %block_426d10, label %block_.L_426d2d

block_426d10:                                     ; preds = %routine_shll__cl___eax.exit288
  %1226 = load i64, i64* bitcast (%G_0x6f9728_type* @G_0x6f9728 to i64*), align 8
  store i64 %1226, i64* %RAX.i694, align 8
  %1227 = add i64 %1226, 8
  %1228 = add i64 %1225, 12
  store i64 %1228, i64* %3, align 8
  %1229 = inttoptr i64 %1227 to i64*
  %1230 = load i64, i64* %1229, align 8
  store i64 %1230, i64* %RAX.i694, align 8
  %1231 = add i64 %1225, 16
  store i64 %1231, i64* %3, align 8
  %1232 = load i32, i32* %1120, align 4
  %1233 = sext i32 %1232 to i64
  store i64 %1233, i64* %RCX.i688, align 8
  %1234 = shl nsw i64 %1233, 3
  %1235 = add i64 %1234, %1230
  %1236 = add i64 %1225, 20
  store i64 %1236, i64* %3, align 8
  %1237 = inttoptr i64 %1235 to i64*
  %1238 = load i64, i64* %1237, align 8
  store i64 %1238, i64* %RAX.i694, align 8
  %1239 = add i64 %1225, 23
  store i64 %1239, i64* %3, align 8
  %1240 = inttoptr i64 %1238 to i32*
  %1241 = load i32, i32* %1240, align 4
  store i8 0, i8* %14, align 1
  %1242 = and i32 %1241, 255
  %1243 = tail call i32 @llvm.ctpop.i32(i32 %1242)
  %1244 = trunc i32 %1243 to i8
  %1245 = and i8 %1244, 1
  %1246 = xor i8 %1245, 1
  store i8 %1246, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1247 = icmp eq i32 %1241, 0
  %1248 = zext i1 %1247 to i8
  store i8 %1248, i8* %29, align 1
  %1249 = lshr i32 %1241, 31
  %1250 = trunc i32 %1249 to i8
  store i8 %1250, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v38 = select i1 %1247, i64 158, i64 29
  %1251 = add i64 %1225, %.v38
  store i64 %1251, i64* %3, align 8
  br i1 %1247, label %block_.L_426dae, label %block_.L_426d2d

block_.L_426d2d:                                  ; preds = %routine_shll__cl___eax.exit288, %block_426d10
  %1252 = phi i64 [ %1251, %block_426d10 ], [ %1225, %routine_shll__cl___eax.exit288 ]
  store i64 ptrtoint (%G__0x4bfe49_type* @G__0x4bfe49 to i64), i64* %RDI.i696, align 8
  store i64 1, i64* %RSI.i664, align 8
  %1253 = add i64 %1117, -16
  %1254 = add i64 %1252, 19
  store i64 %1254, i64* %3, align 8
  %1255 = inttoptr i64 %1253 to i64*
  %1256 = load i64, i64* %1255, align 8
  store i64 %1256, i64* %RDX.i676, align 8
  %1257 = add i64 %1252, 548307
  %1258 = add i64 %1252, 24
  %1259 = load i64, i64* %6, align 8
  %1260 = add i64 %1259, -8
  %1261 = inttoptr i64 %1260 to i64*
  store i64 %1258, i64* %1261, align 8
  store i64 %1260, i64* %6, align 8
  store i64 %1257, i64* %3, align 8
  %call2_426d40 = tail call %struct.Memory* @sub_4acb00.u_1(%struct.State* nonnull %0, i64 %1257, %struct.Memory* %MEMORY.6)
  %1262 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4bfe61_type* @G__0x4bfe61 to i64), i64* %RDI.i696, align 8
  %1263 = load i64, i64* %RAX.i694, align 8
  %1264 = load i64, i64* %RBP.i, align 8
  %1265 = add i64 %1264, -20
  %1266 = add i64 %1262, 13
  store i64 %1266, i64* %3, align 8
  %1267 = trunc i64 %1263 to i32
  %1268 = inttoptr i64 %1265 to i32*
  %1269 = load i32, i32* %1268, align 4
  %1270 = add i32 %1269, %1267
  %1271 = zext i32 %1270 to i64
  store i64 %1271, i64* %RAX.i694, align 8
  %1272 = icmp ult i32 %1270, %1267
  %1273 = icmp ult i32 %1270, %1269
  %1274 = or i1 %1272, %1273
  %1275 = zext i1 %1274 to i8
  store i8 %1275, i8* %14, align 1
  %1276 = and i32 %1270, 255
  %1277 = tail call i32 @llvm.ctpop.i32(i32 %1276)
  %1278 = trunc i32 %1277 to i8
  %1279 = and i8 %1278, 1
  %1280 = xor i8 %1279, 1
  store i8 %1280, i8* %21, align 1
  %1281 = xor i32 %1269, %1267
  %1282 = xor i32 %1281, %1270
  %1283 = lshr i32 %1282, 4
  %1284 = trunc i32 %1283 to i8
  %1285 = and i8 %1284, 1
  store i8 %1285, i8* %26, align 1
  %1286 = icmp eq i32 %1270, 0
  %1287 = zext i1 %1286 to i8
  store i8 %1287, i8* %29, align 1
  %1288 = lshr i32 %1270, 31
  %1289 = trunc i32 %1288 to i8
  store i8 %1289, i8* %32, align 1
  %1290 = lshr i32 %1267, 31
  %1291 = lshr i32 %1269, 31
  %1292 = xor i32 %1288, %1290
  %1293 = xor i32 %1288, %1291
  %1294 = add nuw nsw i32 %1292, %1293
  %1295 = icmp eq i32 %1294, 2
  %1296 = zext i1 %1295 to i8
  store i8 %1296, i8* %38, align 1
  %1297 = add i64 %1262, 16
  store i64 %1297, i64* %3, align 8
  store i32 %1270, i32* %1268, align 4
  %1298 = load i64, i64* %3, align 8
  %1299 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*), align 8
  store i64 %1299, i64* %RDX.i676, align 8
  %1300 = add i64 %1299, 8
  %1301 = add i64 %1298, 12
  store i64 %1301, i64* %3, align 8
  %1302 = inttoptr i64 %1300 to i64*
  %1303 = load i64, i64* %1302, align 8
  store i64 %1303, i64* %RDX.i676, align 8
  %1304 = load i64, i64* %RBP.i, align 8
  %1305 = add i64 %1304, -24
  %1306 = add i64 %1298, 16
  store i64 %1306, i64* %3, align 8
  %1307 = inttoptr i64 %1305 to i32*
  %1308 = load i32, i32* %1307, align 4
  %1309 = sext i32 %1308 to i64
  store i64 %1309, i64* %RCX.i688, align 8
  %1310 = shl nsw i64 %1309, 3
  %1311 = add i64 %1310, %1303
  %1312 = add i64 %1298, 20
  store i64 %1312, i64* %3, align 8
  %1313 = inttoptr i64 %1311 to i64*
  %1314 = load i64, i64* %1313, align 8
  store i64 %1314, i64* %RCX.i688, align 8
  %1315 = add i64 %1298, 22
  store i64 %1315, i64* %3, align 8
  %1316 = inttoptr i64 %1314 to i32*
  %1317 = load i32, i32* %1316, align 4
  %1318 = zext i32 %1317 to i64
  store i64 %1318, i64* %RSI.i664, align 8
  %1319 = add i64 %1304, -16
  %1320 = add i64 %1298, 26
  store i64 %1320, i64* %3, align 8
  %1321 = inttoptr i64 %1319 to i64*
  %1322 = load i64, i64* %1321, align 8
  store i64 %1322, i64* %RDX.i676, align 8
  %1323 = add i64 %1298, 547947
  %1324 = add i64 %1298, 31
  %1325 = load i64, i64* %6, align 8
  %1326 = add i64 %1325, -8
  %1327 = inttoptr i64 %1326 to i64*
  store i64 %1324, i64* %1327, align 8
  store i64 %1326, i64* %6, align 8
  store i64 %1323, i64* %3, align 8
  %call2_426d6f = tail call %struct.Memory* @sub_4ac9c0.se_v(%struct.State* nonnull %0, i64 %1323, %struct.Memory* %MEMORY.6)
  %1328 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4bfe74_type* @G__0x4bfe74 to i64), i64* %RDI.i696, align 8
  %1329 = load i64, i64* %RAX.i694, align 8
  %1330 = load i64, i64* %RBP.i, align 8
  %1331 = add i64 %1330, -20
  %1332 = add i64 %1328, 13
  store i64 %1332, i64* %3, align 8
  %1333 = trunc i64 %1329 to i32
  %1334 = inttoptr i64 %1331 to i32*
  %1335 = load i32, i32* %1334, align 4
  %1336 = add i32 %1335, %1333
  %1337 = zext i32 %1336 to i64
  store i64 %1337, i64* %RAX.i694, align 8
  %1338 = icmp ult i32 %1336, %1333
  %1339 = icmp ult i32 %1336, %1335
  %1340 = or i1 %1338, %1339
  %1341 = zext i1 %1340 to i8
  store i8 %1341, i8* %14, align 1
  %1342 = and i32 %1336, 255
  %1343 = tail call i32 @llvm.ctpop.i32(i32 %1342)
  %1344 = trunc i32 %1343 to i8
  %1345 = and i8 %1344, 1
  %1346 = xor i8 %1345, 1
  store i8 %1346, i8* %21, align 1
  %1347 = xor i32 %1335, %1333
  %1348 = xor i32 %1347, %1336
  %1349 = lshr i32 %1348, 4
  %1350 = trunc i32 %1349 to i8
  %1351 = and i8 %1350, 1
  store i8 %1351, i8* %26, align 1
  %1352 = icmp eq i32 %1336, 0
  %1353 = zext i1 %1352 to i8
  store i8 %1353, i8* %29, align 1
  %1354 = lshr i32 %1336, 31
  %1355 = trunc i32 %1354 to i8
  store i8 %1355, i8* %32, align 1
  %1356 = lshr i32 %1333, 31
  %1357 = lshr i32 %1335, 31
  %1358 = xor i32 %1354, %1356
  %1359 = xor i32 %1354, %1357
  %1360 = add nuw nsw i32 %1358, %1359
  %1361 = icmp eq i32 %1360, 2
  %1362 = zext i1 %1361 to i8
  store i8 %1362, i8* %38, align 1
  %1363 = add i64 %1328, 16
  store i64 %1363, i64* %3, align 8
  store i32 %1336, i32* %1334, align 4
  %1364 = load i64, i64* %3, align 8
  %1365 = load i64, i64* bitcast (%G_0x6f9728_type* @G_0x6f9728 to i64*), align 8
  store i64 %1365, i64* %RCX.i688, align 8
  %1366 = add i64 %1365, 8
  %1367 = add i64 %1364, 12
  store i64 %1367, i64* %3, align 8
  %1368 = inttoptr i64 %1366 to i64*
  %1369 = load i64, i64* %1368, align 8
  store i64 %1369, i64* %RCX.i688, align 8
  %1370 = load i64, i64* %RBP.i, align 8
  %1371 = add i64 %1370, -24
  %1372 = add i64 %1364, 16
  store i64 %1372, i64* %3, align 8
  %1373 = inttoptr i64 %1371 to i32*
  %1374 = load i32, i32* %1373, align 4
  %1375 = sext i32 %1374 to i64
  store i64 %1375, i64* %RDX.i676, align 8
  %1376 = shl nsw i64 %1375, 3
  %1377 = add i64 %1376, %1369
  %1378 = add i64 %1364, 20
  store i64 %1378, i64* %3, align 8
  %1379 = inttoptr i64 %1377 to i64*
  %1380 = load i64, i64* %1379, align 8
  store i64 %1380, i64* %RCX.i688, align 8
  %1381 = add i64 %1364, 22
  store i64 %1381, i64* %3, align 8
  %1382 = inttoptr i64 %1380 to i32*
  %1383 = load i32, i32* %1382, align 4
  %1384 = zext i32 %1383 to i64
  store i64 %1384, i64* %RSI.i664, align 8
  %1385 = add i64 %1370, -16
  %1386 = add i64 %1364, 26
  store i64 %1386, i64* %3, align 8
  %1387 = inttoptr i64 %1385 to i64*
  %1388 = load i64, i64* %1387, align 8
  store i64 %1388, i64* %RDX.i676, align 8
  %1389 = add i64 %1364, 547900
  %1390 = add i64 %1364, 31
  %1391 = load i64, i64* %6, align 8
  %1392 = add i64 %1391, -8
  %1393 = inttoptr i64 %1392 to i64*
  store i64 %1390, i64* %1393, align 8
  store i64 %1392, i64* %6, align 8
  store i64 %1389, i64* %3, align 8
  %call2_426d9e = tail call %struct.Memory* @sub_4ac9c0.se_v(%struct.State* nonnull %0, i64 %1389, %struct.Memory* %MEMORY.6)
  %1394 = load i64, i64* %RAX.i694, align 8
  %1395 = load i64, i64* %RBP.i, align 8
  %1396 = add i64 %1395, -20
  %1397 = load i64, i64* %3, align 8
  %1398 = add i64 %1397, 3
  store i64 %1398, i64* %3, align 8
  %1399 = trunc i64 %1394 to i32
  %1400 = inttoptr i64 %1396 to i32*
  %1401 = load i32, i32* %1400, align 4
  %1402 = add i32 %1401, %1399
  %1403 = zext i32 %1402 to i64
  store i64 %1403, i64* %RAX.i694, align 8
  %1404 = icmp ult i32 %1402, %1399
  %1405 = icmp ult i32 %1402, %1401
  %1406 = or i1 %1404, %1405
  %1407 = zext i1 %1406 to i8
  store i8 %1407, i8* %14, align 1
  %1408 = and i32 %1402, 255
  %1409 = tail call i32 @llvm.ctpop.i32(i32 %1408)
  %1410 = trunc i32 %1409 to i8
  %1411 = and i8 %1410, 1
  %1412 = xor i8 %1411, 1
  store i8 %1412, i8* %21, align 1
  %1413 = xor i32 %1401, %1399
  %1414 = xor i32 %1413, %1402
  %1415 = lshr i32 %1414, 4
  %1416 = trunc i32 %1415 to i8
  %1417 = and i8 %1416, 1
  store i8 %1417, i8* %26, align 1
  %1418 = icmp eq i32 %1402, 0
  %1419 = zext i1 %1418 to i8
  store i8 %1419, i8* %29, align 1
  %1420 = lshr i32 %1402, 31
  %1421 = trunc i32 %1420 to i8
  store i8 %1421, i8* %32, align 1
  %1422 = lshr i32 %1399, 31
  %1423 = lshr i32 %1401, 31
  %1424 = xor i32 %1420, %1422
  %1425 = xor i32 %1420, %1423
  %1426 = add nuw nsw i32 %1424, %1425
  %1427 = icmp eq i32 %1426, 2
  %1428 = zext i1 %1427 to i8
  store i8 %1428, i8* %38, align 1
  %1429 = add i64 %1397, 6
  store i64 %1429, i64* %3, align 8
  store i32 %1402, i32* %1400, align 4
  %1430 = load i64, i64* %3, align 8
  %1431 = add i64 %1430, 32
  store i64 %1431, i64* %3, align 8
  br label %block_.L_426dc9

block_.L_426dae:                                  ; preds = %block_426d10
  store i64 ptrtoint (%G__0x4bfe49_type* @G__0x4bfe49 to i64), i64* %RDI.i696, align 8
  store i64 0, i64* %RSI.i664, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1432 = add i64 %1117, -16
  %1433 = add i64 %1251, 16
  store i64 %1433, i64* %3, align 8
  %1434 = inttoptr i64 %1432 to i64*
  %1435 = load i64, i64* %1434, align 8
  store i64 %1435, i64* %RDX.i676, align 8
  %1436 = add i64 %1251, 548178
  %1437 = add i64 %1251, 21
  %1438 = load i64, i64* %6, align 8
  %1439 = add i64 %1438, -8
  %1440 = inttoptr i64 %1439 to i64*
  store i64 %1437, i64* %1440, align 8
  store i64 %1439, i64* %6, align 8
  store i64 %1436, i64* %3, align 8
  %call2_426dbe = tail call %struct.Memory* @sub_4acb00.u_1(%struct.State* nonnull %0, i64 %1436, %struct.Memory* %MEMORY.6)
  %1441 = load i64, i64* %RAX.i694, align 8
  %1442 = load i64, i64* %RBP.i, align 8
  %1443 = add i64 %1442, -20
  %1444 = load i64, i64* %3, align 8
  %1445 = add i64 %1444, 3
  store i64 %1445, i64* %3, align 8
  %1446 = trunc i64 %1441 to i32
  %1447 = inttoptr i64 %1443 to i32*
  %1448 = load i32, i32* %1447, align 4
  %1449 = add i32 %1448, %1446
  %1450 = zext i32 %1449 to i64
  store i64 %1450, i64* %RAX.i694, align 8
  %1451 = icmp ult i32 %1449, %1446
  %1452 = icmp ult i32 %1449, %1448
  %1453 = or i1 %1451, %1452
  %1454 = zext i1 %1453 to i8
  store i8 %1454, i8* %14, align 1
  %1455 = and i32 %1449, 255
  %1456 = tail call i32 @llvm.ctpop.i32(i32 %1455)
  %1457 = trunc i32 %1456 to i8
  %1458 = and i8 %1457, 1
  %1459 = xor i8 %1458, 1
  store i8 %1459, i8* %21, align 1
  %1460 = xor i32 %1448, %1446
  %1461 = xor i32 %1460, %1449
  %1462 = lshr i32 %1461, 4
  %1463 = trunc i32 %1462 to i8
  %1464 = and i8 %1463, 1
  store i8 %1464, i8* %26, align 1
  %1465 = icmp eq i32 %1449, 0
  %1466 = zext i1 %1465 to i8
  store i8 %1466, i8* %29, align 1
  %1467 = lshr i32 %1449, 31
  %1468 = trunc i32 %1467 to i8
  store i8 %1468, i8* %32, align 1
  %1469 = lshr i32 %1446, 31
  %1470 = lshr i32 %1448, 31
  %1471 = xor i32 %1467, %1469
  %1472 = xor i32 %1467, %1470
  %1473 = add nuw nsw i32 %1471, %1472
  %1474 = icmp eq i32 %1473, 2
  %1475 = zext i1 %1474 to i8
  store i8 %1475, i8* %38, align 1
  %1476 = add i64 %1444, 6
  store i64 %1476, i64* %3, align 8
  store i32 %1449, i32* %1447, align 4
  %.pre22 = load i64, i64* %3, align 8
  br label %block_.L_426dc9

block_.L_426dc9:                                  ; preds = %block_.L_426dae, %block_.L_426d2d
  %1477 = phi i64 [ %.pre22, %block_.L_426dae ], [ %1431, %block_.L_426d2d ]
  store i64 1, i64* %RAX.i694, align 8
  %1478 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*), align 8
  store i64 %1478, i64* %RCX.i688, align 8
  %1479 = add i64 %1478, 8
  %1480 = add i64 %1477, 17
  store i64 %1480, i64* %3, align 8
  %1481 = inttoptr i64 %1479 to i64*
  %1482 = load i64, i64* %1481, align 8
  store i64 %1482, i64* %RCX.i688, align 8
  %1483 = load i64, i64* %RBP.i, align 8
  %1484 = add i64 %1483, -24
  %1485 = add i64 %1477, 21
  store i64 %1485, i64* %3, align 8
  %1486 = inttoptr i64 %1484 to i32*
  %1487 = load i32, i32* %1486, align 4
  %1488 = sext i32 %1487 to i64
  store i64 %1488, i64* %RDX.i676, align 8
  %1489 = shl nsw i64 %1488, 3
  %1490 = add i64 %1489, %1482
  %1491 = add i64 %1477, 25
  store i64 %1491, i64* %3, align 8
  %1492 = inttoptr i64 %1490 to i64*
  %1493 = load i64, i64* %1492, align 8
  store i64 %1493, i64* %RCX.i688, align 8
  %1494 = add i64 %1493, 4
  %1495 = add i64 %1477, 28
  store i64 %1495, i64* %3, align 8
  %1496 = inttoptr i64 %1494 to i32*
  %1497 = load i32, i32* %1496, align 4
  %1498 = zext i32 %1497 to i64
  store i64 %1498, i64* %RSI.i664, align 8
  %1499 = load i32, i32* bitcast (%G_0x7242a0_type* @G_0x7242a0 to i32*), align 8
  %1500 = zext i32 %1499 to i64
  store i64 %1500, i64* %RCX.i688, align 8
  %1501 = trunc i32 %1499 to i8
  %1502 = add i64 %1477, 37
  store i64 %1502, i64* %3, align 8
  %1503 = trunc i32 %1499 to i5
  switch i5 %1503, label %1504 [
    i5 0, label %routine_shll__cl___eax.exit170
    i5 1, label %1513
  ]

; <label>:1504:                                   ; preds = %block_.L_426dc9
  %1505 = and i8 %1501, 31
  %1506 = zext i8 %1505 to i64
  %1507 = add nuw nsw i64 %1506, 4294967295
  %1508 = and i64 %1507, 4294967295
  %1509 = shl i64 1, %1508
  %1510 = trunc i64 %1509 to i32
  %1511 = icmp slt i32 %1510, 0
  %1512 = shl i32 %1510, 1
  br label %1513

; <label>:1513:                                   ; preds = %block_.L_426dc9, %1504
  %1514 = phi i1 [ %1511, %1504 ], [ false, %block_.L_426dc9 ]
  %1515 = phi i32 [ %1512, %1504 ], [ 2, %block_.L_426dc9 ]
  %1516 = zext i32 %1515 to i64
  store i64 %1516, i64* %RAX.i694, align 8
  %1517 = zext i1 %1514 to i8
  store i8 %1517, i8* %14, align 1
  %1518 = and i32 %1515, 254
  %1519 = tail call i32 @llvm.ctpop.i32(i32 %1518)
  %1520 = trunc i32 %1519 to i8
  %1521 = and i8 %1520, 1
  %1522 = xor i8 %1521, 1
  store i8 %1522, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1523 = icmp eq i32 %1515, 0
  %1524 = zext i1 %1523 to i8
  store i8 %1524, i8* %29, align 1
  %1525 = lshr i32 %1515, 31
  %1526 = trunc i32 %1525 to i8
  store i8 %1526, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_shll__cl___eax.exit170

routine_shll__cl___eax.exit170:                   ; preds = %1513, %block_.L_426dc9
  %1527 = phi i32 [ %1515, %1513 ], [ 1, %block_.L_426dc9 ]
  %1528 = sub i32 %1497, %1527
  %1529 = icmp ult i32 %1497, %1527
  %1530 = zext i1 %1529 to i8
  store i8 %1530, i8* %14, align 1
  %1531 = and i32 %1528, 255
  %1532 = tail call i32 @llvm.ctpop.i32(i32 %1531)
  %1533 = trunc i32 %1532 to i8
  %1534 = and i8 %1533, 1
  %1535 = xor i8 %1534, 1
  store i8 %1535, i8* %21, align 1
  %1536 = xor i32 %1527, %1497
  %1537 = xor i32 %1536, %1528
  %1538 = lshr i32 %1537, 4
  %1539 = trunc i32 %1538 to i8
  %1540 = and i8 %1539, 1
  store i8 %1540, i8* %26, align 1
  %1541 = icmp eq i32 %1528, 0
  %1542 = zext i1 %1541 to i8
  store i8 %1542, i8* %29, align 1
  %1543 = lshr i32 %1528, 31
  %1544 = trunc i32 %1543 to i8
  store i8 %1544, i8* %32, align 1
  %1545 = lshr i32 %1497, 31
  %1546 = lshr i32 %1527, 31
  %1547 = xor i32 %1546, %1545
  %1548 = xor i32 %1543, %1545
  %1549 = add nuw nsw i32 %1548, %1547
  %1550 = icmp eq i32 %1549, 2
  %1551 = zext i1 %1550 to i8
  store i8 %1551, i8* %38, align 1
  %.v33 = select i1 %1541, i64 45, i64 150
  %1552 = add i64 %1477, %.v33
  store i64 %1552, i64* %3, align 8
  br i1 %1541, label %block_426df6, label %block_.L_426e5f

block_426df6:                                     ; preds = %routine_shll__cl___eax.exit170
  %1553 = load i64, i64* bitcast (%G_0x6f9728_type* @G_0x6f9728 to i64*), align 8
  store i64 %1553, i64* %RAX.i694, align 8
  %1554 = add i64 %1553, 8
  %1555 = add i64 %1552, 12
  store i64 %1555, i64* %3, align 8
  %1556 = inttoptr i64 %1554 to i64*
  %1557 = load i64, i64* %1556, align 8
  store i64 %1557, i64* %RAX.i694, align 8
  %1558 = add i64 %1552, 16
  store i64 %1558, i64* %3, align 8
  %1559 = load i32, i32* %1486, align 4
  %1560 = sext i32 %1559 to i64
  store i64 %1560, i64* %RCX.i688, align 8
  %1561 = shl nsw i64 %1560, 3
  %1562 = add i64 %1561, %1557
  %1563 = add i64 %1552, 20
  store i64 %1563, i64* %3, align 8
  %1564 = inttoptr i64 %1562 to i64*
  %1565 = load i64, i64* %1564, align 8
  store i64 %1565, i64* %RAX.i694, align 8
  %1566 = add i64 %1565, 4
  %1567 = add i64 %1552, 24
  store i64 %1567, i64* %3, align 8
  %1568 = inttoptr i64 %1566 to i32*
  %1569 = load i32, i32* %1568, align 4
  store i8 0, i8* %14, align 1
  %1570 = and i32 %1569, 255
  %1571 = tail call i32 @llvm.ctpop.i32(i32 %1570)
  %1572 = trunc i32 %1571 to i8
  %1573 = and i8 %1572, 1
  %1574 = xor i8 %1573, 1
  store i8 %1574, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1575 = icmp eq i32 %1569, 0
  %1576 = zext i1 %1575 to i8
  store i8 %1576, i8* %29, align 1
  %1577 = lshr i32 %1569, 31
  %1578 = trunc i32 %1577 to i8
  store i8 %1578, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v35 = select i1 %1575, i64 30, i64 105
  %1579 = add i64 %1552, %.v35
  store i64 %1579, i64* %3, align 8
  br i1 %1575, label %block_426e14, label %block_.L_426e5f

block_426e14:                                     ; preds = %block_426df6
  store i64 1, i64* %RAX.i694, align 8
  store i64 %1478, i64* %RCX.i688, align 8
  %1580 = add i64 %1579, 17
  store i64 %1580, i64* %3, align 8
  %1581 = load i64, i64* %1481, align 8
  store i64 %1581, i64* %RCX.i688, align 8
  %1582 = add i64 %1579, 21
  store i64 %1582, i64* %3, align 8
  %1583 = load i32, i32* %1486, align 4
  %1584 = sext i32 %1583 to i64
  store i64 %1584, i64* %RDX.i676, align 8
  %1585 = shl nsw i64 %1584, 3
  %1586 = add i64 %1585, %1581
  %1587 = add i64 %1579, 25
  store i64 %1587, i64* %3, align 8
  %1588 = inttoptr i64 %1586 to i64*
  %1589 = load i64, i64* %1588, align 8
  store i64 %1589, i64* %RCX.i688, align 8
  %1590 = add i64 %1589, 8
  %1591 = add i64 %1579, 28
  store i64 %1591, i64* %3, align 8
  %1592 = inttoptr i64 %1590 to i32*
  %1593 = load i32, i32* %1592, align 4
  %1594 = zext i32 %1593 to i64
  store i64 %1594, i64* %RSI.i664, align 8
  store i64 %1500, i64* %RCX.i688, align 8
  %1595 = add i64 %1579, 37
  store i64 %1595, i64* %3, align 8
  switch i5 %1503, label %1596 [
    i5 0, label %routine_shll__cl___eax.exit
    i5 1, label %1605
  ]

; <label>:1596:                                   ; preds = %block_426e14
  %1597 = and i8 %1501, 31
  %1598 = zext i8 %1597 to i64
  %1599 = add nuw nsw i64 %1598, 4294967295
  %1600 = and i64 %1599, 4294967295
  %1601 = shl i64 1, %1600
  %1602 = trunc i64 %1601 to i32
  %1603 = icmp slt i32 %1602, 0
  %1604 = shl i32 %1602, 1
  br label %1605

; <label>:1605:                                   ; preds = %block_426e14, %1596
  %1606 = phi i1 [ %1603, %1596 ], [ false, %block_426e14 ]
  %1607 = phi i32 [ %1604, %1596 ], [ 2, %block_426e14 ]
  %1608 = zext i32 %1607 to i64
  store i64 %1608, i64* %RAX.i694, align 8
  %1609 = zext i1 %1606 to i8
  store i8 %1609, i8* %14, align 1
  %1610 = and i32 %1607, 254
  %1611 = tail call i32 @llvm.ctpop.i32(i32 %1610)
  %1612 = trunc i32 %1611 to i8
  %1613 = and i8 %1612, 1
  %1614 = xor i8 %1613, 1
  store i8 %1614, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1615 = icmp eq i32 %1607, 0
  %1616 = zext i1 %1615 to i8
  store i8 %1616, i8* %29, align 1
  %1617 = lshr i32 %1607, 31
  %1618 = trunc i32 %1617 to i8
  store i8 %1618, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_shll__cl___eax.exit

routine_shll__cl___eax.exit:                      ; preds = %1605, %block_426e14
  %1619 = phi i32 [ %1607, %1605 ], [ 1, %block_426e14 ]
  %1620 = sub i32 %1593, %1619
  %1621 = icmp ult i32 %1593, %1619
  %1622 = zext i1 %1621 to i8
  store i8 %1622, i8* %14, align 1
  %1623 = and i32 %1620, 255
  %1624 = tail call i32 @llvm.ctpop.i32(i32 %1623)
  %1625 = trunc i32 %1624 to i8
  %1626 = and i8 %1625, 1
  %1627 = xor i8 %1626, 1
  store i8 %1627, i8* %21, align 1
  %1628 = xor i32 %1619, %1593
  %1629 = xor i32 %1628, %1620
  %1630 = lshr i32 %1629, 4
  %1631 = trunc i32 %1630 to i8
  %1632 = and i8 %1631, 1
  store i8 %1632, i8* %26, align 1
  %1633 = icmp eq i32 %1620, 0
  %1634 = zext i1 %1633 to i8
  store i8 %1634, i8* %29, align 1
  %1635 = lshr i32 %1620, 31
  %1636 = trunc i32 %1635 to i8
  store i8 %1636, i8* %32, align 1
  %1637 = lshr i32 %1593, 31
  %1638 = lshr i32 %1619, 31
  %1639 = xor i32 %1638, %1637
  %1640 = xor i32 %1635, %1637
  %1641 = add nuw nsw i32 %1640, %1639
  %1642 = icmp eq i32 %1641, 2
  %1643 = zext i1 %1642 to i8
  store i8 %1643, i8* %38, align 1
  %.v36 = select i1 %1633, i64 45, i64 75
  %1644 = add i64 %1579, %.v36
  store i64 %1644, i64* %3, align 8
  br i1 %1633, label %block_426e41, label %block_.L_426e5f

block_426e41:                                     ; preds = %routine_shll__cl___eax.exit
  store i64 %1553, i64* %RAX.i694, align 8
  %1645 = add i64 %1644, 12
  store i64 %1645, i64* %3, align 8
  %1646 = load i64, i64* %1556, align 8
  store i64 %1646, i64* %RAX.i694, align 8
  %1647 = add i64 %1644, 16
  store i64 %1647, i64* %3, align 8
  %1648 = load i32, i32* %1486, align 4
  %1649 = sext i32 %1648 to i64
  store i64 %1649, i64* %RCX.i688, align 8
  %1650 = shl nsw i64 %1649, 3
  %1651 = add i64 %1650, %1646
  %1652 = add i64 %1644, 20
  store i64 %1652, i64* %3, align 8
  %1653 = inttoptr i64 %1651 to i64*
  %1654 = load i64, i64* %1653, align 8
  store i64 %1654, i64* %RAX.i694, align 8
  %1655 = add i64 %1654, 8
  %1656 = add i64 %1644, 24
  store i64 %1656, i64* %3, align 8
  %1657 = inttoptr i64 %1655 to i32*
  %1658 = load i32, i32* %1657, align 4
  store i8 0, i8* %14, align 1
  %1659 = and i32 %1658, 255
  %1660 = tail call i32 @llvm.ctpop.i32(i32 %1659)
  %1661 = trunc i32 %1660 to i8
  %1662 = and i8 %1661, 1
  %1663 = xor i8 %1662, 1
  store i8 %1663, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1664 = icmp eq i32 %1658, 0
  %1665 = zext i1 %1664 to i8
  store i8 %1665, i8* %29, align 1
  %1666 = lshr i32 %1658, 31
  %1667 = trunc i32 %1666 to i8
  store i8 %1667, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v37 = select i1 %1664, i64 200, i64 30
  %1668 = add i64 %1644, %.v37
  store i64 %1668, i64* %3, align 8
  br i1 %1664, label %block_.L_426f09, label %block_.L_426e5f

block_.L_426e5f:                                  ; preds = %routine_shll__cl___eax.exit, %block_426df6, %routine_shll__cl___eax.exit170, %block_426e41
  %1669 = phi i64 [ %1668, %block_426e41 ], [ %1644, %routine_shll__cl___eax.exit ], [ %1579, %block_426df6 ], [ %1552, %routine_shll__cl___eax.exit170 ]
  store i64 ptrtoint (%G__0x4bfe87_type* @G__0x4bfe87 to i64), i64* %RDI.i696, align 8
  store i64 1, i64* %RSI.i664, align 8
  %1670 = add i64 %1483, -16
  %1671 = add i64 %1669, 19
  store i64 %1671, i64* %3, align 8
  %1672 = inttoptr i64 %1670 to i64*
  %1673 = load i64, i64* %1672, align 8
  store i64 %1673, i64* %RDX.i676, align 8
  %1674 = add i64 %1669, 548001
  %1675 = add i64 %1669, 24
  %1676 = load i64, i64* %6, align 8
  %1677 = add i64 %1676, -8
  %1678 = inttoptr i64 %1677 to i64*
  store i64 %1675, i64* %1678, align 8
  store i64 %1677, i64* %6, align 8
  store i64 %1674, i64* %3, align 8
  %call2_426e72 = tail call %struct.Memory* @sub_4acb00.u_1(%struct.State* nonnull %0, i64 %1674, %struct.Memory* %MEMORY.6)
  %1679 = load i64, i64* %RAX.i694, align 8
  %1680 = load i64, i64* %RBP.i, align 8
  %1681 = add i64 %1680, -20
  %1682 = load i64, i64* %3, align 8
  %1683 = add i64 %1682, 3
  store i64 %1683, i64* %3, align 8
  %1684 = trunc i64 %1679 to i32
  %1685 = inttoptr i64 %1681 to i32*
  %1686 = load i32, i32* %1685, align 4
  %1687 = add i32 %1686, %1684
  %1688 = zext i32 %1687 to i64
  store i64 %1688, i64* %RAX.i694, align 8
  %1689 = icmp ult i32 %1687, %1684
  %1690 = icmp ult i32 %1687, %1686
  %1691 = or i1 %1689, %1690
  %1692 = zext i1 %1691 to i8
  store i8 %1692, i8* %14, align 1
  %1693 = and i32 %1687, 255
  %1694 = tail call i32 @llvm.ctpop.i32(i32 %1693)
  %1695 = trunc i32 %1694 to i8
  %1696 = and i8 %1695, 1
  %1697 = xor i8 %1696, 1
  store i8 %1697, i8* %21, align 1
  %1698 = xor i32 %1686, %1684
  %1699 = xor i32 %1698, %1687
  %1700 = lshr i32 %1699, 4
  %1701 = trunc i32 %1700 to i8
  %1702 = and i8 %1701, 1
  store i8 %1702, i8* %26, align 1
  %1703 = icmp eq i32 %1687, 0
  %1704 = zext i1 %1703 to i8
  store i8 %1704, i8* %29, align 1
  %1705 = lshr i32 %1687, 31
  %1706 = trunc i32 %1705 to i8
  store i8 %1706, i8* %32, align 1
  %1707 = lshr i32 %1684, 31
  %1708 = lshr i32 %1686, 31
  %1709 = xor i32 %1705, %1707
  %1710 = xor i32 %1705, %1708
  %1711 = add nuw nsw i32 %1709, %1710
  %1712 = icmp eq i32 %1711, 2
  %1713 = zext i1 %1712 to i8
  store i8 %1713, i8* %38, align 1
  %1714 = add i64 %1682, 6
  store i64 %1714, i64* %3, align 8
  store i32 %1687, i32* %1685, align 4
  %1715 = load i64, i64* %RBP.i, align 8
  %1716 = add i64 %1715, -28
  %1717 = load i64, i64* %3, align 8
  %1718 = add i64 %1717, 7
  store i64 %1718, i64* %3, align 8
  %1719 = inttoptr i64 %1716 to i32*
  store i32 1, i32* %1719, align 4
  %.pre23 = load i64, i64* %3, align 8
  br label %block_.L_426e84

block_.L_426e84:                                  ; preds = %block_426e8e, %block_.L_426e5f
  %1720 = phi i64 [ %1923, %block_426e8e ], [ %.pre23, %block_.L_426e5f ]
  %1721 = load i64, i64* %RBP.i, align 8
  %1722 = add i64 %1721, -28
  %1723 = add i64 %1720, 4
  store i64 %1723, i64* %3, align 8
  %1724 = inttoptr i64 %1722 to i32*
  %1725 = load i32, i32* %1724, align 4
  %1726 = add i32 %1725, -3
  %1727 = icmp ult i32 %1725, 3
  %1728 = zext i1 %1727 to i8
  store i8 %1728, i8* %14, align 1
  %1729 = and i32 %1726, 255
  %1730 = tail call i32 @llvm.ctpop.i32(i32 %1729)
  %1731 = trunc i32 %1730 to i8
  %1732 = and i8 %1731, 1
  %1733 = xor i8 %1732, 1
  store i8 %1733, i8* %21, align 1
  %1734 = xor i32 %1726, %1725
  %1735 = lshr i32 %1734, 4
  %1736 = trunc i32 %1735 to i8
  %1737 = and i8 %1736, 1
  store i8 %1737, i8* %26, align 1
  %1738 = icmp eq i32 %1726, 0
  %1739 = zext i1 %1738 to i8
  store i8 %1739, i8* %29, align 1
  %1740 = lshr i32 %1726, 31
  %1741 = trunc i32 %1740 to i8
  store i8 %1741, i8* %32, align 1
  %1742 = lshr i32 %1725, 31
  %1743 = xor i32 %1740, %1742
  %1744 = add nuw nsw i32 %1743, %1742
  %1745 = icmp eq i32 %1744, 2
  %1746 = zext i1 %1745 to i8
  store i8 %1746, i8* %38, align 1
  %1747 = icmp ne i8 %1741, 0
  %1748 = xor i1 %1747, %1745
  %.v34 = select i1 %1748, i64 10, i64 128
  %1749 = add i64 %1720, %.v34
  store i64 %1749, i64* %3, align 8
  br i1 %1748, label %block_426e8e, label %block_.L_426f04

block_426e8e:                                     ; preds = %block_.L_426e84
  store i64 ptrtoint (%G__0x4bfe9d_type* @G__0x4bfe9d to i64), i64* %RDI.i696, align 8
  %1750 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*), align 8
  store i64 %1750, i64* %RAX.i694, align 8
  %1751 = add i64 %1750, 8
  %1752 = add i64 %1749, 22
  store i64 %1752, i64* %3, align 8
  %1753 = inttoptr i64 %1751 to i64*
  %1754 = load i64, i64* %1753, align 8
  store i64 %1754, i64* %RAX.i694, align 8
  %1755 = add i64 %1721, -24
  %1756 = add i64 %1749, 26
  store i64 %1756, i64* %3, align 8
  %1757 = inttoptr i64 %1755 to i32*
  %1758 = load i32, i32* %1757, align 4
  %1759 = sext i32 %1758 to i64
  store i64 %1759, i64* %RCX.i688, align 8
  %1760 = shl nsw i64 %1759, 3
  %1761 = add i64 %1760, %1754
  %1762 = add i64 %1749, 30
  store i64 %1762, i64* %3, align 8
  %1763 = inttoptr i64 %1761 to i64*
  %1764 = load i64, i64* %1763, align 8
  store i64 %1764, i64* %RAX.i694, align 8
  %1765 = add i64 %1749, 34
  store i64 %1765, i64* %3, align 8
  %1766 = load i32, i32* %1724, align 4
  %1767 = sext i32 %1766 to i64
  store i64 %1767, i64* %RCX.i688, align 8
  %1768 = shl nsw i64 %1767, 2
  %1769 = add i64 %1768, %1764
  %1770 = add i64 %1749, 37
  store i64 %1770, i64* %3, align 8
  %1771 = inttoptr i64 %1769 to i32*
  %1772 = load i32, i32* %1771, align 4
  %1773 = zext i32 %1772 to i64
  store i64 %1773, i64* %RSI.i664, align 8
  %1774 = add i64 %1721, -16
  %1775 = add i64 %1749, 41
  store i64 %1775, i64* %3, align 8
  %1776 = inttoptr i64 %1774 to i64*
  %1777 = load i64, i64* %1776, align 8
  store i64 %1777, i64* %RDX.i676, align 8
  %1778 = add i64 %1749, 547634
  %1779 = add i64 %1749, 46
  %1780 = load i64, i64* %6, align 8
  %1781 = add i64 %1780, -8
  %1782 = inttoptr i64 %1781 to i64*
  store i64 %1779, i64* %1782, align 8
  store i64 %1781, i64* %6, align 8
  store i64 %1778, i64* %3, align 8
  %call2_426eb7 = tail call %struct.Memory* @sub_4ac9c0.se_v(%struct.State* nonnull %0, i64 %1778, %struct.Memory* %call2_426e72)
  %1783 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4bfeae_type* @G__0x4bfeae to i64), i64* %RDI.i696, align 8
  %1784 = load i64, i64* %RAX.i694, align 8
  %1785 = load i64, i64* %RBP.i, align 8
  %1786 = add i64 %1785, -20
  %1787 = add i64 %1783, 13
  store i64 %1787, i64* %3, align 8
  %1788 = trunc i64 %1784 to i32
  %1789 = inttoptr i64 %1786 to i32*
  %1790 = load i32, i32* %1789, align 4
  %1791 = add i32 %1790, %1788
  %1792 = zext i32 %1791 to i64
  store i64 %1792, i64* %RAX.i694, align 8
  %1793 = icmp ult i32 %1791, %1788
  %1794 = icmp ult i32 %1791, %1790
  %1795 = or i1 %1793, %1794
  %1796 = zext i1 %1795 to i8
  store i8 %1796, i8* %14, align 1
  %1797 = and i32 %1791, 255
  %1798 = tail call i32 @llvm.ctpop.i32(i32 %1797)
  %1799 = trunc i32 %1798 to i8
  %1800 = and i8 %1799, 1
  %1801 = xor i8 %1800, 1
  store i8 %1801, i8* %21, align 1
  %1802 = xor i32 %1790, %1788
  %1803 = xor i32 %1802, %1791
  %1804 = lshr i32 %1803, 4
  %1805 = trunc i32 %1804 to i8
  %1806 = and i8 %1805, 1
  store i8 %1806, i8* %26, align 1
  %1807 = icmp eq i32 %1791, 0
  %1808 = zext i1 %1807 to i8
  store i8 %1808, i8* %29, align 1
  %1809 = lshr i32 %1791, 31
  %1810 = trunc i32 %1809 to i8
  store i8 %1810, i8* %32, align 1
  %1811 = lshr i32 %1788, 31
  %1812 = lshr i32 %1790, 31
  %1813 = xor i32 %1809, %1811
  %1814 = xor i32 %1809, %1812
  %1815 = add nuw nsw i32 %1813, %1814
  %1816 = icmp eq i32 %1815, 2
  %1817 = zext i1 %1816 to i8
  store i8 %1817, i8* %38, align 1
  %1818 = add i64 %1783, 16
  store i64 %1818, i64* %3, align 8
  store i32 %1791, i32* %1789, align 4
  %1819 = load i64, i64* %3, align 8
  %1820 = load i64, i64* bitcast (%G_0x6f9728_type* @G_0x6f9728 to i64*), align 8
  store i64 %1820, i64* %RCX.i688, align 8
  %1821 = add i64 %1820, 8
  %1822 = add i64 %1819, 12
  store i64 %1822, i64* %3, align 8
  %1823 = inttoptr i64 %1821 to i64*
  %1824 = load i64, i64* %1823, align 8
  store i64 %1824, i64* %RCX.i688, align 8
  %1825 = load i64, i64* %RBP.i, align 8
  %1826 = add i64 %1825, -24
  %1827 = add i64 %1819, 16
  store i64 %1827, i64* %3, align 8
  %1828 = inttoptr i64 %1826 to i32*
  %1829 = load i32, i32* %1828, align 4
  %1830 = sext i32 %1829 to i64
  store i64 %1830, i64* %RDX.i676, align 8
  %1831 = shl nsw i64 %1830, 3
  %1832 = add i64 %1831, %1824
  %1833 = add i64 %1819, 20
  store i64 %1833, i64* %3, align 8
  %1834 = inttoptr i64 %1832 to i64*
  %1835 = load i64, i64* %1834, align 8
  store i64 %1835, i64* %RCX.i688, align 8
  %1836 = add i64 %1825, -28
  %1837 = add i64 %1819, 24
  store i64 %1837, i64* %3, align 8
  %1838 = inttoptr i64 %1836 to i32*
  %1839 = load i32, i32* %1838, align 4
  %1840 = sext i32 %1839 to i64
  store i64 %1840, i64* %RDX.i676, align 8
  %1841 = shl nsw i64 %1840, 2
  %1842 = add i64 %1841, %1835
  %1843 = add i64 %1819, 27
  store i64 %1843, i64* %3, align 8
  %1844 = inttoptr i64 %1842 to i32*
  %1845 = load i32, i32* %1844, align 4
  %1846 = zext i32 %1845 to i64
  store i64 %1846, i64* %RSI.i664, align 8
  %1847 = add i64 %1825, -16
  %1848 = add i64 %1819, 31
  store i64 %1848, i64* %3, align 8
  %1849 = inttoptr i64 %1847 to i64*
  %1850 = load i64, i64* %1849, align 8
  store i64 %1850, i64* %RDX.i676, align 8
  %1851 = add i64 %1819, 547572
  %1852 = add i64 %1819, 36
  %1853 = load i64, i64* %6, align 8
  %1854 = add i64 %1853, -8
  %1855 = inttoptr i64 %1854 to i64*
  store i64 %1852, i64* %1855, align 8
  store i64 %1854, i64* %6, align 8
  store i64 %1851, i64* %3, align 8
  %call2_426eeb = tail call %struct.Memory* @sub_4ac9c0.se_v(%struct.State* nonnull %0, i64 %1851, %struct.Memory* %call2_426e72)
  %1856 = load i64, i64* %RAX.i694, align 8
  %1857 = load i64, i64* %RBP.i, align 8
  %1858 = add i64 %1857, -20
  %1859 = load i64, i64* %3, align 8
  %1860 = add i64 %1859, 3
  store i64 %1860, i64* %3, align 8
  %1861 = trunc i64 %1856 to i32
  %1862 = inttoptr i64 %1858 to i32*
  %1863 = load i32, i32* %1862, align 4
  %1864 = add i32 %1863, %1861
  %1865 = zext i32 %1864 to i64
  store i64 %1865, i64* %RAX.i694, align 8
  %1866 = icmp ult i32 %1864, %1861
  %1867 = icmp ult i32 %1864, %1863
  %1868 = or i1 %1866, %1867
  %1869 = zext i1 %1868 to i8
  store i8 %1869, i8* %14, align 1
  %1870 = and i32 %1864, 255
  %1871 = tail call i32 @llvm.ctpop.i32(i32 %1870)
  %1872 = trunc i32 %1871 to i8
  %1873 = and i8 %1872, 1
  %1874 = xor i8 %1873, 1
  store i8 %1874, i8* %21, align 1
  %1875 = xor i32 %1863, %1861
  %1876 = xor i32 %1875, %1864
  %1877 = lshr i32 %1876, 4
  %1878 = trunc i32 %1877 to i8
  %1879 = and i8 %1878, 1
  store i8 %1879, i8* %26, align 1
  %1880 = icmp eq i32 %1864, 0
  %1881 = zext i1 %1880 to i8
  store i8 %1881, i8* %29, align 1
  %1882 = lshr i32 %1864, 31
  %1883 = trunc i32 %1882 to i8
  store i8 %1883, i8* %32, align 1
  %1884 = lshr i32 %1861, 31
  %1885 = lshr i32 %1863, 31
  %1886 = xor i32 %1882, %1884
  %1887 = xor i32 %1882, %1885
  %1888 = add nuw nsw i32 %1886, %1887
  %1889 = icmp eq i32 %1888, 2
  %1890 = zext i1 %1889 to i8
  store i8 %1890, i8* %38, align 1
  %1891 = add i64 %1859, 6
  store i64 %1891, i64* %3, align 8
  store i32 %1864, i32* %1862, align 4
  %1892 = load i64, i64* %RBP.i, align 8
  %1893 = add i64 %1892, -28
  %1894 = load i64, i64* %3, align 8
  %1895 = add i64 %1894, 3
  store i64 %1895, i64* %3, align 8
  %1896 = inttoptr i64 %1893 to i32*
  %1897 = load i32, i32* %1896, align 4
  %1898 = add i32 %1897, 1
  %1899 = zext i32 %1898 to i64
  store i64 %1899, i64* %RAX.i694, align 8
  %1900 = icmp eq i32 %1897, -1
  %1901 = icmp eq i32 %1898, 0
  %1902 = or i1 %1900, %1901
  %1903 = zext i1 %1902 to i8
  store i8 %1903, i8* %14, align 1
  %1904 = and i32 %1898, 255
  %1905 = tail call i32 @llvm.ctpop.i32(i32 %1904)
  %1906 = trunc i32 %1905 to i8
  %1907 = and i8 %1906, 1
  %1908 = xor i8 %1907, 1
  store i8 %1908, i8* %21, align 1
  %1909 = xor i32 %1898, %1897
  %1910 = lshr i32 %1909, 4
  %1911 = trunc i32 %1910 to i8
  %1912 = and i8 %1911, 1
  store i8 %1912, i8* %26, align 1
  %1913 = zext i1 %1901 to i8
  store i8 %1913, i8* %29, align 1
  %1914 = lshr i32 %1898, 31
  %1915 = trunc i32 %1914 to i8
  store i8 %1915, i8* %32, align 1
  %1916 = lshr i32 %1897, 31
  %1917 = xor i32 %1914, %1916
  %1918 = add nuw nsw i32 %1917, %1914
  %1919 = icmp eq i32 %1918, 2
  %1920 = zext i1 %1919 to i8
  store i8 %1920, i8* %38, align 1
  %1921 = add i64 %1894, 9
  store i64 %1921, i64* %3, align 8
  store i32 %1898, i32* %1896, align 4
  %1922 = load i64, i64* %3, align 8
  %1923 = add i64 %1922, -123
  store i64 %1923, i64* %3, align 8
  br label %block_.L_426e84

block_.L_426f04:                                  ; preds = %block_.L_426e84
  %1924 = add i64 %1749, 32
  store i64 %1924, i64* %3, align 8
  br label %block_.L_426f24

block_.L_426f09:                                  ; preds = %block_426e41
  store i64 ptrtoint (%G__0x4bfe87_type* @G__0x4bfe87 to i64), i64* %RDI.i696, align 8
  store i64 0, i64* %RSI.i664, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1925 = add i64 %1483, -16
  %1926 = add i64 %1668, 16
  store i64 %1926, i64* %3, align 8
  %1927 = inttoptr i64 %1925 to i64*
  %1928 = load i64, i64* %1927, align 8
  store i64 %1928, i64* %RDX.i676, align 8
  %1929 = add i64 %1668, 547831
  %1930 = add i64 %1668, 21
  %1931 = load i64, i64* %6, align 8
  %1932 = add i64 %1931, -8
  %1933 = inttoptr i64 %1932 to i64*
  store i64 %1930, i64* %1933, align 8
  store i64 %1932, i64* %6, align 8
  store i64 %1929, i64* %3, align 8
  %call2_426f19 = tail call %struct.Memory* @sub_4acb00.u_1(%struct.State* nonnull %0, i64 %1929, %struct.Memory* %MEMORY.6)
  %1934 = load i64, i64* %RAX.i694, align 8
  %1935 = load i64, i64* %RBP.i, align 8
  %1936 = add i64 %1935, -20
  %1937 = load i64, i64* %3, align 8
  %1938 = add i64 %1937, 3
  store i64 %1938, i64* %3, align 8
  %1939 = trunc i64 %1934 to i32
  %1940 = inttoptr i64 %1936 to i32*
  %1941 = load i32, i32* %1940, align 4
  %1942 = add i32 %1941, %1939
  %1943 = zext i32 %1942 to i64
  store i64 %1943, i64* %RAX.i694, align 8
  %1944 = icmp ult i32 %1942, %1939
  %1945 = icmp ult i32 %1942, %1941
  %1946 = or i1 %1944, %1945
  %1947 = zext i1 %1946 to i8
  store i8 %1947, i8* %14, align 1
  %1948 = and i32 %1942, 255
  %1949 = tail call i32 @llvm.ctpop.i32(i32 %1948)
  %1950 = trunc i32 %1949 to i8
  %1951 = and i8 %1950, 1
  %1952 = xor i8 %1951, 1
  store i8 %1952, i8* %21, align 1
  %1953 = xor i32 %1941, %1939
  %1954 = xor i32 %1953, %1942
  %1955 = lshr i32 %1954, 4
  %1956 = trunc i32 %1955 to i8
  %1957 = and i8 %1956, 1
  store i8 %1957, i8* %26, align 1
  %1958 = icmp eq i32 %1942, 0
  %1959 = zext i1 %1958 to i8
  store i8 %1959, i8* %29, align 1
  %1960 = lshr i32 %1942, 31
  %1961 = trunc i32 %1960 to i8
  store i8 %1961, i8* %32, align 1
  %1962 = lshr i32 %1939, 31
  %1963 = lshr i32 %1941, 31
  %1964 = xor i32 %1960, %1962
  %1965 = xor i32 %1960, %1963
  %1966 = add nuw nsw i32 %1964, %1965
  %1967 = icmp eq i32 %1966, 2
  %1968 = zext i1 %1967 to i8
  store i8 %1968, i8* %38, align 1
  %1969 = add i64 %1937, 6
  store i64 %1969, i64* %3, align 8
  store i32 %1942, i32* %1940, align 4
  %.pre24 = load i64, i64* %3, align 8
  %.pre25 = load i64, i64* %RBP.i, align 8
  br label %block_.L_426f24

block_.L_426f24:                                  ; preds = %block_.L_426f09, %block_.L_426f04
  %1970 = phi i64 [ %1721, %block_.L_426f04 ], [ %.pre25, %block_.L_426f09 ]
  %1971 = phi i64 [ %1924, %block_.L_426f04 ], [ %.pre24, %block_.L_426f09 ]
  %MEMORY.11 = phi %struct.Memory* [ %call2_426e72, %block_.L_426f04 ], [ %call2_426f19, %block_.L_426f09 ]
  %1972 = add i64 %1970, -24
  %1973 = add i64 %1971, 8
  store i64 %1973, i64* %3, align 8
  %1974 = inttoptr i64 %1972 to i32*
  %1975 = load i32, i32* %1974, align 4
  %1976 = add i32 %1975, 1
  %1977 = zext i32 %1976 to i64
  store i64 %1977, i64* %RAX.i694, align 8
  %1978 = icmp eq i32 %1975, -1
  %1979 = icmp eq i32 %1976, 0
  %1980 = or i1 %1978, %1979
  %1981 = zext i1 %1980 to i8
  store i8 %1981, i8* %14, align 1
  %1982 = and i32 %1976, 255
  %1983 = tail call i32 @llvm.ctpop.i32(i32 %1982)
  %1984 = trunc i32 %1983 to i8
  %1985 = and i8 %1984, 1
  %1986 = xor i8 %1985, 1
  store i8 %1986, i8* %21, align 1
  %1987 = xor i32 %1976, %1975
  %1988 = lshr i32 %1987, 4
  %1989 = trunc i32 %1988 to i8
  %1990 = and i8 %1989, 1
  store i8 %1990, i8* %26, align 1
  %1991 = zext i1 %1979 to i8
  store i8 %1991, i8* %29, align 1
  %1992 = lshr i32 %1976, 31
  %1993 = trunc i32 %1992 to i8
  store i8 %1993, i8* %32, align 1
  %1994 = lshr i32 %1975, 31
  %1995 = xor i32 %1992, %1994
  %1996 = add nuw nsw i32 %1995, %1992
  %1997 = icmp eq i32 %1996, 2
  %1998 = zext i1 %1997 to i8
  store i8 %1998, i8* %38, align 1
  %1999 = add i64 %1971, 14
  store i64 %1999, i64* %3, align 8
  store i32 %1976, i32* %1974, align 4
  %2000 = load i64, i64* %3, align 8
  %2001 = add i64 %2000, -613
  store i64 %2001, i64* %3, align 8
  br label %block_.L_426ccd

block_.L_426f3c.loopexit:                         ; preds = %block_.L_426ccd
  br label %block_.L_426f3c

block_.L_426f3c:                                  ; preds = %block_.L_426f3c.loopexit, %block_.L_426cb4
  %2002 = phi i64 [ %1114, %block_.L_426cb4 ], [ %1155, %block_.L_426f3c.loopexit ]
  %2003 = phi i64 [ %213, %block_.L_426cb4 ], [ %1117, %block_.L_426f3c.loopexit ]
  %MEMORY.12 = phi %struct.Memory* [ %MEMORY.0, %block_.L_426cb4 ], [ %MEMORY.6, %block_.L_426f3c.loopexit ]
  %2004 = add i64 %2003, -20
  %2005 = add i64 %2002, 3
  store i64 %2005, i64* %3, align 8
  %2006 = inttoptr i64 %2004 to i32*
  %2007 = load i32, i32* %2006, align 4
  %2008 = zext i32 %2007 to i64
  store i64 %2008, i64* %RAX.i694, align 8
  %2009 = load i64, i64* %6, align 8
  %2010 = add i64 %2009, 32
  store i64 %2010, i64* %6, align 8
  %2011 = icmp ugt i64 %2009, -33
  %2012 = zext i1 %2011 to i8
  store i8 %2012, i8* %14, align 1
  %2013 = trunc i64 %2010 to i32
  %2014 = and i32 %2013, 255
  %2015 = tail call i32 @llvm.ctpop.i32(i32 %2014)
  %2016 = trunc i32 %2015 to i8
  %2017 = and i8 %2016, 1
  %2018 = xor i8 %2017, 1
  store i8 %2018, i8* %21, align 1
  %2019 = xor i64 %2010, %2009
  %2020 = lshr i64 %2019, 4
  %2021 = trunc i64 %2020 to i8
  %2022 = and i8 %2021, 1
  store i8 %2022, i8* %26, align 1
  %2023 = icmp eq i64 %2010, 0
  %2024 = zext i1 %2023 to i8
  store i8 %2024, i8* %29, align 1
  %2025 = lshr i64 %2010, 63
  %2026 = trunc i64 %2025 to i8
  store i8 %2026, i8* %32, align 1
  %2027 = lshr i64 %2009, 63
  %2028 = xor i64 %2025, %2027
  %2029 = add nuw nsw i64 %2028, %2025
  %2030 = icmp eq i64 %2029, 2
  %2031 = zext i1 %2030 to i8
  store i8 %2031, i8* %38, align 1
  %2032 = add i64 %2002, 8
  store i64 %2032, i64* %3, align 8
  %2033 = add i64 %2009, 40
  %2034 = inttoptr i64 %2010 to i64*
  %2035 = load i64, i64* %2034, align 8
  store i64 %2035, i64* %RBP.i, align 8
  store i64 %2033, i64* %6, align 8
  %2036 = add i64 %2002, 9
  store i64 %2036, i64* %3, align 8
  %2037 = inttoptr i64 %2033 to i64*
  %2038 = load i64, i64* %2037, align 8
  store i64 %2038, i64* %3, align 8
  %2039 = add i64 %2009, 48
  store i64 %2039, i64* %6, align 8
  ret %struct.Memory* %MEMORY.12
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
define %struct.Memory* @routine_movq__0x4bfd9d___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4bfd9d_type* @G__0x4bfd9d to i64), i64* %RDI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x93c__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 2364
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
define %struct.Memory* @routine_movq_0x725600___rax_8____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 3
  %5 = add i64 %4, 7493120
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %RAX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x3750__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 14160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_imulq__0x78___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 120
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
define %struct.Memory* @routine_movl_0x70f6d0___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x70f6d0_type* @G_0x70f6d0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
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
define %struct.Memory* @routine_callq_.ue_v(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4bfdb7___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4bfdb7_type* @G__0x4bfdb7 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x14__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
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
define %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x7242a0___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7242a0_type* @G_0x7242a0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x11940__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 72000
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
define %struct.Memory* @routine_jge_.L_426cb4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x6d4740___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_movl___rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RCX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x70f6d0___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x70f6d0_type* @G_0x70f6d0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__cl___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  switch i5 %8, label %15 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
    i5 1, label %9
  ]

; <label>:9:                                      ; preds = %block_400488
  %10 = trunc i64 %4 to i32
  %11 = shl i32 %10, 1
  %12 = icmp slt i32 %10, 0
  %13 = icmp slt i32 %11, 0
  %14 = xor i1 %12, %13
  br label %25

; <label>:15:                                     ; preds = %block_400488
  %16 = and i8 %5, 31
  %17 = zext i8 %16 to i64
  %18 = add nuw nsw i64 %17, 4294967295
  %19 = and i64 %4, 4294967295
  %20 = and i64 %18, 4294967295
  %21 = shl i64 %19, %20
  %22 = trunc i64 %21 to i32
  %23 = icmp slt i32 %22, 0
  %24 = shl i32 %22, 1
  br label %25

; <label>:25:                                     ; preds = %15, %9
  %26 = phi i1 [ %12, %9 ], [ %23, %15 ]
  %27 = phi i1 [ %14, %9 ], [ false, %15 ]
  %28 = phi i32 [ %11, %9 ], [ %24, %15 ]
  %29 = zext i32 %28 to i64
  store i64 %29, i64* %RAX, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %31 = zext i1 %26 to i8
  store i8 %31, i8* %30, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %33 = and i32 %28, 254
  %34 = tail call i32 @llvm.ctpop.i32(i32 %33)
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = xor i8 %36, 1
  store i8 %37, i8* %32, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %40 = icmp eq i32 %28, 0
  %41 = zext i1 %40 to i8
  store i8 %41, i8* %39, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %43 = lshr i32 %28, 31
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %42, align 1
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %46 = zext i1 %27 to i8
  store i8 %46, i8* %45, align 1
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit: ; preds = %25, %block_400488
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__eax___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %ESI, align 4
  %6 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_jne_.L_426ab2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x6f9728___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6f9728_type* @G_0x6f9728 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
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
define %struct.Memory* @routine_je_.L_426b31(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4bfdd3___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4bfdd3_type* @G__0x4bfdd3 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.u_1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4bfdeb___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4bfdeb_type* @G__0x4bfdeb to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6d4740___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*), align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RDX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rdx__rcx_8____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_callq_.se_v(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4bfdfe___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4bfdfe_type* @G__0x4bfdfe to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6f9728___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6f9728_type* @G_0x6f9728 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_426b4c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__esi___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl_0x4__rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 4
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
define %struct.Memory* @routine_movl_0x7242a0___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7242a0_type* @G_0x7242a0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_426bde(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
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
define %struct.Memory* @routine_movl_0x8__rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 8
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
define %struct.Memory* @routine_je_.L_426c86(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4bfe11___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4bfe11_type* @G__0x4bfe11 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_jge_.L_426c81(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4bfe27___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4bfe27_type* @G__0x4bfe27 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6d4740___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_movq__0x4bfe38___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4bfe38_type* @G__0x4bfe38 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_jmpq_.L_426c03(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_426ca1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_426ca6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
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
define %struct.Memory* @routine_jmpq_.L_426a54(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jne_.L_426f3c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_0x11944__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 72004
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
define %struct.Memory* @routine_jge_.L_426f37(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_426d2d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_426dae(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4bfe49___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4bfe49_type* @G__0x4bfe49 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4bfe61___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4bfe61_type* @G__0x4bfe61 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x8__rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4bfe74___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4bfe74_type* @G__0x4bfe74 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_426dc9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_426e5f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_426f09(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4bfe87___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4bfe87_type* @G__0x4bfe87 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_426f04(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4bfe9d___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4bfe9d_type* @G__0x4bfe9d to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4bfeae___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4bfeae_type* @G__0x4bfeae to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_426e84(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_426f24(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_426f29(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_426ccd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_426f3c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
