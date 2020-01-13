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

declare %struct.Memory* @sub_402870.cft1st(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_403300.cftmdl(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @cftfsub(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -120
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 112
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
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %40 to i32*
  %41 = add i64 %7, -12
  %42 = load i32, i32* %EDI.i, align 4
  %43 = add i64 %10, 10
  store i64 %43, i64* %3, align 8
  %44 = inttoptr i64 %41 to i32*
  store i32 %42, i32* %44, align 4
  %RSI.i649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, -16
  %47 = load i64, i64* %RSI.i649, align 8
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, 4
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %46 to i64*
  store i64 %47, i64* %50, align 8
  %RDX.i646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %51 = load i64, i64* %RBP.i, align 8
  %52 = add i64 %51, -24
  %53 = load i64, i64* %RDX.i646, align 8
  %54 = load i64, i64* %3, align 8
  %55 = add i64 %54, 4
  store i64 %55, i64* %3, align 8
  %56 = inttoptr i64 %52 to i64*
  store i64 %53, i64* %56, align 8
  %57 = load i64, i64* %RBP.i, align 8
  %58 = add i64 %57, -44
  %59 = load i64, i64* %3, align 8
  %60 = add i64 %59, 7
  store i64 %60, i64* %3, align 8
  %61 = inttoptr i64 %58 to i32*
  store i32 2, i32* %61, align 4
  %62 = load i64, i64* %RBP.i, align 8
  %63 = add i64 %62, -4
  %64 = load i64, i64* %3, align 8
  %65 = add i64 %64, 4
  store i64 %65, i64* %3, align 8
  %66 = inttoptr i64 %63 to i32*
  %67 = load i32, i32* %66, align 4
  %68 = add i32 %67, -8
  %69 = icmp ult i32 %67, 8
  %70 = zext i1 %69 to i8
  store i8 %70, i8* %14, align 1
  %71 = and i32 %68, 255
  %72 = tail call i32 @llvm.ctpop.i32(i32 %71)
  %73 = trunc i32 %72 to i8
  %74 = and i8 %73, 1
  %75 = xor i8 %74, 1
  store i8 %75, i8* %21, align 1
  %76 = xor i32 %67, %68
  %77 = lshr i32 %76, 4
  %78 = trunc i32 %77 to i8
  %79 = and i8 %78, 1
  store i8 %79, i8* %27, align 1
  %80 = icmp eq i32 %68, 0
  %81 = zext i1 %80 to i8
  store i8 %81, i8* %30, align 1
  %82 = lshr i32 %68, 31
  %83 = trunc i32 %82 to i8
  store i8 %83, i8* %33, align 1
  %84 = lshr i32 %67, 31
  %85 = xor i32 %82, %84
  %86 = add nuw nsw i32 %85, %84
  %87 = icmp eq i32 %86, 2
  %88 = zext i1 %87 to i8
  store i8 %88, i8* %39, align 1
  %89 = icmp ne i8 %83, 0
  %90 = xor i1 %89, %87
  %91 = or i1 %80, %90
  %.v = select i1 %91, i64 86, i64 10
  %92 = add i64 %64, %.v
  store i64 %92, i64* %3, align 8
  br i1 %91, label %entry.block_.L_4018b0_crit_edge, label %block_401864

entry.block_.L_4018b0_crit_edge:                  ; preds = %entry
  %.pre6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  br label %block_.L_4018b0

block_401864:                                     ; preds = %entry
  %RDI.i638 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  %93 = add i64 %92, 3
  store i64 %93, i64* %3, align 8
  %94 = load i32, i32* %66, align 4
  %95 = zext i32 %94 to i64
  store i64 %95, i64* %RDI.i638, align 8
  %96 = add i64 %62, -16
  %97 = add i64 %92, 7
  store i64 %97, i64* %3, align 8
  %98 = inttoptr i64 %96 to i64*
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %RSI.i649, align 8
  %100 = add i64 %62, -24
  %101 = add i64 %92, 11
  store i64 %101, i64* %3, align 8
  %102 = inttoptr i64 %100 to i64*
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %RDX.i646, align 8
  %104 = add i64 %92, 4108
  %105 = add i64 %92, 16
  %106 = load i64, i64* %6, align 8
  %107 = add i64 %106, -8
  %108 = inttoptr i64 %107 to i64*
  store i64 %105, i64* %108, align 8
  store i64 %107, i64* %6, align 8
  store i64 %104, i64* %3, align 8
  %call2_40186f = tail call %struct.Memory* @sub_402870.cft1st(%struct.State* %0, i64 %104, %struct.Memory* %2)
  %109 = load i64, i64* %RBP.i, align 8
  %110 = add i64 %109, -44
  %111 = load i64, i64* %3, align 8
  %112 = add i64 %111, 7
  store i64 %112, i64* %3, align 8
  %113 = inttoptr i64 %110 to i32*
  store i32 8, i32* %113, align 4
  %RAX.i626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX.i609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_40187b

block_.L_40187b:                                  ; preds = %block_40188a, %block_401864
  %114 = phi i64 [ %.pre, %block_401864 ], [ %207, %block_40188a ]
  %MEMORY.0 = phi %struct.Memory* [ %call2_40186f, %block_401864 ], [ %call2_401898, %block_40188a ]
  %115 = load i64, i64* %RBP.i, align 8
  %116 = add i64 %115, -44
  %117 = add i64 %114, 3
  store i64 %117, i64* %3, align 8
  %118 = inttoptr i64 %116 to i32*
  %119 = load i32, i32* %118, align 4
  %120 = shl i32 %119, 2
  %121 = zext i32 %120 to i64
  store i64 %121, i64* %RAX.i626, align 8
  %122 = lshr i32 %119, 30
  %123 = trunc i32 %122 to i8
  %124 = and i8 %123, 1
  store i8 %124, i8* %14, align 1
  %125 = and i32 %120, 252
  %126 = tail call i32 @llvm.ctpop.i32(i32 %125)
  %127 = trunc i32 %126 to i8
  %128 = and i8 %127, 1
  %129 = xor i8 %128, 1
  store i8 %129, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %130 = icmp eq i32 %120, 0
  %131 = zext i1 %130 to i8
  store i8 %131, i8* %30, align 1
  %132 = lshr i32 %119, 29
  %133 = and i32 %132, 1
  %134 = trunc i32 %133 to i8
  store i8 %134, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %135 = add i64 %115, -4
  %136 = add i64 %114, 9
  store i64 %136, i64* %3, align 8
  %137 = inttoptr i64 %135 to i32*
  %138 = load i32, i32* %137, align 4
  %139 = sub i32 %120, %138
  %140 = icmp ult i32 %120, %138
  %141 = zext i1 %140 to i8
  store i8 %141, i8* %14, align 1
  %142 = and i32 %139, 255
  %143 = tail call i32 @llvm.ctpop.i32(i32 %142)
  %144 = trunc i32 %143 to i8
  %145 = and i8 %144, 1
  %146 = xor i8 %145, 1
  store i8 %146, i8* %21, align 1
  %147 = xor i32 %138, %120
  %148 = xor i32 %147, %139
  %149 = lshr i32 %148, 4
  %150 = trunc i32 %149 to i8
  %151 = and i8 %150, 1
  store i8 %151, i8* %27, align 1
  %152 = icmp eq i32 %139, 0
  %153 = zext i1 %152 to i8
  store i8 %153, i8* %30, align 1
  %154 = lshr i32 %139, 31
  %155 = trunc i32 %154 to i8
  store i8 %155, i8* %33, align 1
  %156 = lshr i32 %138, 31
  %157 = xor i32 %156, %133
  %158 = xor i32 %154, %133
  %159 = add nuw nsw i32 %158, %157
  %160 = icmp eq i32 %159, 2
  %161 = zext i1 %160 to i8
  store i8 %161, i8* %39, align 1
  %162 = icmp ne i8 %155, 0
  %163 = xor i1 %162, %160
  %.v9 = select i1 %163, i64 15, i64 48
  %164 = add i64 %114, %.v9
  store i64 %164, i64* %3, align 8
  br i1 %163, label %block_40188a, label %block_.L_4018ab

block_40188a:                                     ; preds = %block_.L_40187b
  %165 = add i64 %164, 3
  store i64 %165, i64* %3, align 8
  %166 = load i32, i32* %137, align 4
  %167 = zext i32 %166 to i64
  store i64 %167, i64* %RDI.i638, align 8
  %168 = add i64 %164, 6
  store i64 %168, i64* %3, align 8
  %169 = load i32, i32* %118, align 4
  %170 = zext i32 %169 to i64
  store i64 %170, i64* %RSI.i649, align 8
  %171 = add i64 %115, -16
  %172 = add i64 %164, 10
  store i64 %172, i64* %3, align 8
  %173 = inttoptr i64 %171 to i64*
  %174 = load i64, i64* %173, align 8
  store i64 %174, i64* %RDX.i646, align 8
  %175 = add i64 %115, -24
  %176 = add i64 %164, 14
  store i64 %176, i64* %3, align 8
  %177 = inttoptr i64 %175 to i64*
  %178 = load i64, i64* %177, align 8
  store i64 %178, i64* %RCX.i609, align 8
  %179 = add i64 %164, 6774
  %180 = add i64 %164, 19
  %181 = load i64, i64* %6, align 8
  %182 = add i64 %181, -8
  %183 = inttoptr i64 %182 to i64*
  store i64 %180, i64* %183, align 8
  store i64 %182, i64* %6, align 8
  store i64 %179, i64* %3, align 8
  %call2_401898 = tail call %struct.Memory* @sub_403300.cftmdl(%struct.State* %0, i64 %179, %struct.Memory* %MEMORY.0)
  %184 = load i64, i64* %RBP.i, align 8
  %185 = add i64 %184, -44
  %186 = load i64, i64* %3, align 8
  %187 = add i64 %186, 3
  store i64 %187, i64* %3, align 8
  %188 = inttoptr i64 %185 to i32*
  %189 = load i32, i32* %188, align 4
  %190 = shl i32 %189, 2
  %191 = zext i32 %190 to i64
  store i64 %191, i64* %RSI.i649, align 8
  %192 = lshr i32 %189, 30
  %193 = trunc i32 %192 to i8
  %194 = and i8 %193, 1
  store i8 %194, i8* %14, align 1
  %195 = and i32 %190, 252
  %196 = tail call i32 @llvm.ctpop.i32(i32 %195)
  %197 = trunc i32 %196 to i8
  %198 = and i8 %197, 1
  %199 = xor i8 %198, 1
  store i8 %199, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %200 = icmp eq i32 %190, 0
  %201 = zext i1 %200 to i8
  store i8 %201, i8* %30, align 1
  %202 = lshr i32 %189, 29
  %203 = trunc i32 %202 to i8
  %204 = and i8 %203, 1
  store i8 %204, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %205 = add i64 %186, 9
  store i64 %205, i64* %3, align 8
  store i32 %190, i32* %188, align 4
  %206 = load i64, i64* %3, align 8
  %207 = add i64 %206, -43
  store i64 %207, i64* %3, align 8
  br label %block_.L_40187b

block_.L_4018ab:                                  ; preds = %block_.L_40187b
  %208 = add i64 %164, 5
  store i64 %208, i64* %3, align 8
  br label %block_.L_4018b0

block_.L_4018b0:                                  ; preds = %entry.block_.L_4018b0_crit_edge, %block_.L_4018ab
  %RAX.i597.pre-phi = phi i64* [ %.pre6, %entry.block_.L_4018b0_crit_edge ], [ %RAX.i626, %block_.L_4018ab ]
  %209 = phi i64 [ %92, %entry.block_.L_4018b0_crit_edge ], [ %208, %block_.L_4018ab ]
  %210 = phi i64 [ %62, %entry.block_.L_4018b0_crit_edge ], [ %115, %block_.L_4018ab ]
  %MEMORY.1 = phi %struct.Memory* [ %2, %entry.block_.L_4018b0_crit_edge ], [ %MEMORY.0, %block_.L_4018ab ]
  %211 = add i64 %210, -44
  %212 = add i64 %209, 3
  store i64 %212, i64* %3, align 8
  %213 = inttoptr i64 %211 to i32*
  %214 = load i32, i32* %213, align 4
  %215 = shl i32 %214, 2
  %216 = zext i32 %215 to i64
  store i64 %216, i64* %RAX.i597.pre-phi, align 8
  %217 = lshr i32 %214, 30
  %218 = trunc i32 %217 to i8
  %219 = and i8 %218, 1
  store i8 %219, i8* %14, align 1
  %220 = and i32 %215, 252
  %221 = tail call i32 @llvm.ctpop.i32(i32 %220)
  %222 = trunc i32 %221 to i8
  %223 = and i8 %222, 1
  %224 = xor i8 %223, 1
  store i8 %224, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %225 = icmp eq i32 %215, 0
  %226 = zext i1 %225 to i8
  store i8 %226, i8* %30, align 1
  %227 = lshr i32 %214, 29
  %228 = and i32 %227, 1
  %229 = trunc i32 %228 to i8
  store i8 %229, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %230 = add i64 %210, -4
  %231 = add i64 %209, 9
  store i64 %231, i64* %3, align 8
  %232 = inttoptr i64 %230 to i32*
  %233 = load i32, i32* %232, align 4
  %234 = sub i32 %215, %233
  %235 = icmp ult i32 %215, %233
  %236 = zext i1 %235 to i8
  store i8 %236, i8* %14, align 1
  %237 = and i32 %234, 255
  %238 = tail call i32 @llvm.ctpop.i32(i32 %237)
  %239 = trunc i32 %238 to i8
  %240 = and i8 %239, 1
  %241 = xor i8 %240, 1
  store i8 %241, i8* %21, align 1
  %242 = xor i32 %233, %215
  %243 = xor i32 %242, %234
  %244 = lshr i32 %243, 4
  %245 = trunc i32 %244 to i8
  %246 = and i8 %245, 1
  store i8 %246, i8* %27, align 1
  %247 = icmp eq i32 %234, 0
  %248 = zext i1 %247 to i8
  store i8 %248, i8* %30, align 1
  %249 = lshr i32 %234, 31
  %250 = trunc i32 %249 to i8
  store i8 %250, i8* %33, align 1
  %251 = lshr i32 %233, 31
  %252 = xor i32 %251, %228
  %253 = xor i32 %249, %228
  %254 = add nuw nsw i32 %253, %252
  %255 = icmp eq i32 %254, 2
  %256 = zext i1 %255 to i8
  store i8 %256, i8* %39, align 1
  %.v10 = select i1 %247, i64 15, i64 572
  %257 = add i64 %209, %.v10
  %258 = add i64 %210, -28
  %259 = add i64 %257, 7
  store i64 %259, i64* %3, align 8
  %260 = inttoptr i64 %258 to i32*
  store i32 0, i32* %260, align 4
  %RCX.i152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %262 = bitcast %union.VectorReg* %261 to double*
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %264 = bitcast i64* %263 to double*
  %.pre2 = load i64, i64* %3, align 8
  br i1 %247, label %block_.L_4018c6, label %block_.L_401af3

block_.L_4018c6:                                  ; preds = %block_.L_4018b0, %block_4018d2
  %265 = phi i64 [ %1178, %block_4018d2 ], [ %.pre2, %block_.L_4018b0 ]
  %266 = load i64, i64* %RBP.i, align 8
  %267 = add i64 %266, -28
  %268 = add i64 %265, 3
  store i64 %268, i64* %3, align 8
  %269 = inttoptr i64 %267 to i32*
  %270 = load i32, i32* %269, align 4
  %271 = zext i32 %270 to i64
  store i64 %271, i64* %RAX.i597.pre-phi, align 8
  %272 = add i64 %266, -44
  %273 = add i64 %265, 6
  store i64 %273, i64* %3, align 8
  %274 = inttoptr i64 %272 to i32*
  %275 = load i32, i32* %274, align 4
  %276 = sub i32 %270, %275
  %277 = icmp ult i32 %270, %275
  %278 = zext i1 %277 to i8
  store i8 %278, i8* %14, align 1
  %279 = and i32 %276, 255
  %280 = tail call i32 @llvm.ctpop.i32(i32 %279)
  %281 = trunc i32 %280 to i8
  %282 = and i8 %281, 1
  %283 = xor i8 %282, 1
  store i8 %283, i8* %21, align 1
  %284 = xor i32 %275, %270
  %285 = xor i32 %284, %276
  %286 = lshr i32 %285, 4
  %287 = trunc i32 %286 to i8
  %288 = and i8 %287, 1
  store i8 %288, i8* %27, align 1
  %289 = icmp eq i32 %276, 0
  %290 = zext i1 %289 to i8
  store i8 %290, i8* %30, align 1
  %291 = lshr i32 %276, 31
  %292 = trunc i32 %291 to i8
  store i8 %292, i8* %33, align 1
  %293 = lshr i32 %270, 31
  %294 = lshr i32 %275, 31
  %295 = xor i32 %294, %293
  %296 = xor i32 %291, %293
  %297 = add nuw nsw i32 %296, %295
  %298 = icmp eq i32 %297, 2
  %299 = zext i1 %298 to i8
  store i8 %299, i8* %39, align 1
  %300 = icmp ne i8 %292, 0
  %301 = xor i1 %300, %298
  %.v11 = select i1 %301, i64 12, i64 545
  %302 = add i64 %265, %.v11
  store i64 %302, i64* %3, align 8
  br i1 %301, label %block_4018d2, label %block_.L_401ae7

block_4018d2:                                     ; preds = %block_.L_4018c6
  %303 = add i64 %302, 3
  store i64 %303, i64* %3, align 8
  %304 = load i32, i32* %269, align 4
  %305 = zext i32 %304 to i64
  store i64 %305, i64* %RAX.i597.pre-phi, align 8
  %306 = add i64 %302, 6
  store i64 %306, i64* %3, align 8
  %307 = load i32, i32* %274, align 4
  %308 = add i32 %307, %304
  %309 = zext i32 %308 to i64
  store i64 %309, i64* %RAX.i597.pre-phi, align 8
  %310 = icmp ult i32 %308, %304
  %311 = icmp ult i32 %308, %307
  %312 = or i1 %310, %311
  %313 = zext i1 %312 to i8
  store i8 %313, i8* %14, align 1
  %314 = and i32 %308, 255
  %315 = tail call i32 @llvm.ctpop.i32(i32 %314)
  %316 = trunc i32 %315 to i8
  %317 = and i8 %316, 1
  %318 = xor i8 %317, 1
  store i8 %318, i8* %21, align 1
  %319 = xor i32 %307, %304
  %320 = xor i32 %319, %308
  %321 = lshr i32 %320, 4
  %322 = trunc i32 %321 to i8
  %323 = and i8 %322, 1
  store i8 %323, i8* %27, align 1
  %324 = icmp eq i32 %308, 0
  %325 = zext i1 %324 to i8
  store i8 %325, i8* %30, align 1
  %326 = lshr i32 %308, 31
  %327 = trunc i32 %326 to i8
  store i8 %327, i8* %33, align 1
  %328 = lshr i32 %304, 31
  %329 = lshr i32 %307, 31
  %330 = xor i32 %326, %328
  %331 = xor i32 %326, %329
  %332 = add nuw nsw i32 %330, %331
  %333 = icmp eq i32 %332, 2
  %334 = zext i1 %333 to i8
  store i8 %334, i8* %39, align 1
  %335 = add i64 %266, -32
  %336 = add i64 %302, 9
  store i64 %336, i64* %3, align 8
  %337 = inttoptr i64 %335 to i32*
  store i32 %308, i32* %337, align 4
  %338 = load i64, i64* %RBP.i, align 8
  %339 = add i64 %338, -32
  %340 = load i64, i64* %3, align 8
  %341 = add i64 %340, 3
  store i64 %341, i64* %3, align 8
  %342 = inttoptr i64 %339 to i32*
  %343 = load i32, i32* %342, align 4
  %344 = zext i32 %343 to i64
  store i64 %344, i64* %RAX.i597.pre-phi, align 8
  %345 = add i64 %338, -44
  %346 = add i64 %340, 6
  store i64 %346, i64* %3, align 8
  %347 = inttoptr i64 %345 to i32*
  %348 = load i32, i32* %347, align 4
  %349 = add i32 %348, %343
  %350 = zext i32 %349 to i64
  store i64 %350, i64* %RAX.i597.pre-phi, align 8
  %351 = icmp ult i32 %349, %343
  %352 = icmp ult i32 %349, %348
  %353 = or i1 %351, %352
  %354 = zext i1 %353 to i8
  store i8 %354, i8* %14, align 1
  %355 = and i32 %349, 255
  %356 = tail call i32 @llvm.ctpop.i32(i32 %355)
  %357 = trunc i32 %356 to i8
  %358 = and i8 %357, 1
  %359 = xor i8 %358, 1
  store i8 %359, i8* %21, align 1
  %360 = xor i32 %348, %343
  %361 = xor i32 %360, %349
  %362 = lshr i32 %361, 4
  %363 = trunc i32 %362 to i8
  %364 = and i8 %363, 1
  store i8 %364, i8* %27, align 1
  %365 = icmp eq i32 %349, 0
  %366 = zext i1 %365 to i8
  store i8 %366, i8* %30, align 1
  %367 = lshr i32 %349, 31
  %368 = trunc i32 %367 to i8
  store i8 %368, i8* %33, align 1
  %369 = lshr i32 %343, 31
  %370 = lshr i32 %348, 31
  %371 = xor i32 %367, %369
  %372 = xor i32 %367, %370
  %373 = add nuw nsw i32 %371, %372
  %374 = icmp eq i32 %373, 2
  %375 = zext i1 %374 to i8
  store i8 %375, i8* %39, align 1
  %376 = add i64 %338, -36
  %377 = add i64 %340, 9
  store i64 %377, i64* %3, align 8
  %378 = inttoptr i64 %376 to i32*
  store i32 %349, i32* %378, align 4
  %379 = load i64, i64* %RBP.i, align 8
  %380 = add i64 %379, -36
  %381 = load i64, i64* %3, align 8
  %382 = add i64 %381, 3
  store i64 %382, i64* %3, align 8
  %383 = inttoptr i64 %380 to i32*
  %384 = load i32, i32* %383, align 4
  %385 = zext i32 %384 to i64
  store i64 %385, i64* %RAX.i597.pre-phi, align 8
  %386 = add i64 %379, -44
  %387 = add i64 %381, 6
  store i64 %387, i64* %3, align 8
  %388 = inttoptr i64 %386 to i32*
  %389 = load i32, i32* %388, align 4
  %390 = add i32 %389, %384
  %391 = zext i32 %390 to i64
  store i64 %391, i64* %RAX.i597.pre-phi, align 8
  %392 = icmp ult i32 %390, %384
  %393 = icmp ult i32 %390, %389
  %394 = or i1 %392, %393
  %395 = zext i1 %394 to i8
  store i8 %395, i8* %14, align 1
  %396 = and i32 %390, 255
  %397 = tail call i32 @llvm.ctpop.i32(i32 %396)
  %398 = trunc i32 %397 to i8
  %399 = and i8 %398, 1
  %400 = xor i8 %399, 1
  store i8 %400, i8* %21, align 1
  %401 = xor i32 %389, %384
  %402 = xor i32 %401, %390
  %403 = lshr i32 %402, 4
  %404 = trunc i32 %403 to i8
  %405 = and i8 %404, 1
  store i8 %405, i8* %27, align 1
  %406 = icmp eq i32 %390, 0
  %407 = zext i1 %406 to i8
  store i8 %407, i8* %30, align 1
  %408 = lshr i32 %390, 31
  %409 = trunc i32 %408 to i8
  store i8 %409, i8* %33, align 1
  %410 = lshr i32 %384, 31
  %411 = lshr i32 %389, 31
  %412 = xor i32 %408, %410
  %413 = xor i32 %408, %411
  %414 = add nuw nsw i32 %412, %413
  %415 = icmp eq i32 %414, 2
  %416 = zext i1 %415 to i8
  store i8 %416, i8* %39, align 1
  %417 = add i64 %379, -40
  %418 = add i64 %381, 9
  store i64 %418, i64* %3, align 8
  %419 = inttoptr i64 %417 to i32*
  store i32 %390, i32* %419, align 4
  %420 = load i64, i64* %RBP.i, align 8
  %421 = add i64 %420, -16
  %422 = load i64, i64* %3, align 8
  %423 = add i64 %422, 4
  store i64 %423, i64* %3, align 8
  %424 = inttoptr i64 %421 to i64*
  %425 = load i64, i64* %424, align 8
  store i64 %425, i64* %RCX.i152, align 8
  %426 = add i64 %420, -28
  %427 = add i64 %422, 8
  store i64 %427, i64* %3, align 8
  %428 = inttoptr i64 %426 to i32*
  %429 = load i32, i32* %428, align 4
  %430 = sext i32 %429 to i64
  store i64 %430, i64* %RDX.i646, align 8
  %431 = shl nsw i64 %430, 3
  %432 = add i64 %431, %425
  %433 = add i64 %422, 13
  store i64 %433, i64* %3, align 8
  %434 = inttoptr i64 %432 to double*
  %435 = load double, double* %434, align 8
  store double %435, double* %262, align 1
  store double 0.000000e+00, double* %264, align 1
  %436 = add i64 %422, 17
  store i64 %436, i64* %3, align 8
  %437 = load i64, i64* %424, align 8
  store i64 %437, i64* %RCX.i152, align 8
  %438 = add i64 %420, -32
  %439 = add i64 %422, 21
  store i64 %439, i64* %3, align 8
  %440 = inttoptr i64 %438 to i32*
  %441 = load i32, i32* %440, align 4
  %442 = sext i32 %441 to i64
  store i64 %442, i64* %RDX.i646, align 8
  %443 = shl nsw i64 %442, 3
  %444 = add i64 %443, %437
  %445 = add i64 %422, 26
  store i64 %445, i64* %3, align 8
  %446 = inttoptr i64 %444 to double*
  %447 = load double, double* %446, align 8
  %448 = fadd double %435, %447
  store double %448, double* %262, align 1
  store i64 0, i64* %263, align 1
  %449 = add i64 %420, -56
  %450 = add i64 %422, 31
  store i64 %450, i64* %3, align 8
  %451 = inttoptr i64 %449 to double*
  store double %448, double* %451, align 8
  %452 = load i64, i64* %RBP.i, align 8
  %453 = add i64 %452, -16
  %454 = load i64, i64* %3, align 8
  %455 = add i64 %454, 4
  store i64 %455, i64* %3, align 8
  %456 = inttoptr i64 %453 to i64*
  %457 = load i64, i64* %456, align 8
  store i64 %457, i64* %RCX.i152, align 8
  %458 = add i64 %452, -28
  %459 = add i64 %454, 7
  store i64 %459, i64* %3, align 8
  %460 = inttoptr i64 %458 to i32*
  %461 = load i32, i32* %460, align 4
  %462 = add i32 %461, 1
  %463 = zext i32 %462 to i64
  store i64 %463, i64* %RAX.i597.pre-phi, align 8
  %464 = icmp eq i32 %461, -1
  %465 = icmp eq i32 %462, 0
  %466 = or i1 %464, %465
  %467 = zext i1 %466 to i8
  store i8 %467, i8* %14, align 1
  %468 = and i32 %462, 255
  %469 = tail call i32 @llvm.ctpop.i32(i32 %468)
  %470 = trunc i32 %469 to i8
  %471 = and i8 %470, 1
  %472 = xor i8 %471, 1
  store i8 %472, i8* %21, align 1
  %473 = xor i32 %461, %462
  %474 = lshr i32 %473, 4
  %475 = trunc i32 %474 to i8
  %476 = and i8 %475, 1
  store i8 %476, i8* %27, align 1
  %477 = zext i1 %465 to i8
  store i8 %477, i8* %30, align 1
  %478 = lshr i32 %462, 31
  %479 = trunc i32 %478 to i8
  store i8 %479, i8* %33, align 1
  %480 = lshr i32 %461, 31
  %481 = xor i32 %478, %480
  %482 = add nuw nsw i32 %481, %478
  %483 = icmp eq i32 %482, 2
  %484 = zext i1 %483 to i8
  store i8 %484, i8* %39, align 1
  %485 = sext i32 %462 to i64
  store i64 %485, i64* %RDX.i646, align 8
  %486 = shl nsw i64 %485, 3
  %487 = add i64 %486, %457
  %488 = add i64 %454, 18
  store i64 %488, i64* %3, align 8
  %489 = inttoptr i64 %487 to double*
  %490 = load double, double* %489, align 8
  store double %490, double* %262, align 1
  store double 0.000000e+00, double* %264, align 1
  %491 = add i64 %454, 22
  store i64 %491, i64* %3, align 8
  %492 = load i64, i64* %456, align 8
  store i64 %492, i64* %RCX.i152, align 8
  %493 = add i64 %452, -32
  %494 = add i64 %454, 25
  store i64 %494, i64* %3, align 8
  %495 = inttoptr i64 %493 to i32*
  %496 = load i32, i32* %495, align 4
  %497 = add i32 %496, 1
  %498 = zext i32 %497 to i64
  store i64 %498, i64* %RAX.i597.pre-phi, align 8
  %499 = icmp eq i32 %496, -1
  %500 = icmp eq i32 %497, 0
  %501 = or i1 %499, %500
  %502 = zext i1 %501 to i8
  store i8 %502, i8* %14, align 1
  %503 = and i32 %497, 255
  %504 = tail call i32 @llvm.ctpop.i32(i32 %503)
  %505 = trunc i32 %504 to i8
  %506 = and i8 %505, 1
  %507 = xor i8 %506, 1
  store i8 %507, i8* %21, align 1
  %508 = xor i32 %496, %497
  %509 = lshr i32 %508, 4
  %510 = trunc i32 %509 to i8
  %511 = and i8 %510, 1
  store i8 %511, i8* %27, align 1
  %512 = zext i1 %500 to i8
  store i8 %512, i8* %30, align 1
  %513 = lshr i32 %497, 31
  %514 = trunc i32 %513 to i8
  store i8 %514, i8* %33, align 1
  %515 = lshr i32 %496, 31
  %516 = xor i32 %513, %515
  %517 = add nuw nsw i32 %516, %513
  %518 = icmp eq i32 %517, 2
  %519 = zext i1 %518 to i8
  store i8 %519, i8* %39, align 1
  %520 = sext i32 %497 to i64
  store i64 %520, i64* %RDX.i646, align 8
  %521 = shl nsw i64 %520, 3
  %522 = add i64 %521, %492
  %523 = add i64 %454, 36
  store i64 %523, i64* %3, align 8
  %524 = inttoptr i64 %522 to double*
  %525 = load double, double* %524, align 8
  %526 = fadd double %490, %525
  store double %526, double* %262, align 1
  store i64 0, i64* %263, align 1
  %527 = load i64, i64* %RBP.i, align 8
  %528 = add i64 %527, -64
  %529 = add i64 %454, 41
  store i64 %529, i64* %3, align 8
  %530 = inttoptr i64 %528 to double*
  store double %526, double* %530, align 8
  %531 = load i64, i64* %RBP.i, align 8
  %532 = add i64 %531, -16
  %533 = load i64, i64* %3, align 8
  %534 = add i64 %533, 4
  store i64 %534, i64* %3, align 8
  %535 = inttoptr i64 %532 to i64*
  %536 = load i64, i64* %535, align 8
  store i64 %536, i64* %RCX.i152, align 8
  %537 = add i64 %531, -28
  %538 = add i64 %533, 8
  store i64 %538, i64* %3, align 8
  %539 = inttoptr i64 %537 to i32*
  %540 = load i32, i32* %539, align 4
  %541 = sext i32 %540 to i64
  store i64 %541, i64* %RDX.i646, align 8
  %542 = shl nsw i64 %541, 3
  %543 = add i64 %542, %536
  %544 = add i64 %533, 13
  store i64 %544, i64* %3, align 8
  %545 = inttoptr i64 %543 to double*
  %546 = load double, double* %545, align 8
  store double %546, double* %262, align 1
  store double 0.000000e+00, double* %264, align 1
  %547 = add i64 %533, 17
  store i64 %547, i64* %3, align 8
  %548 = load i64, i64* %535, align 8
  store i64 %548, i64* %RCX.i152, align 8
  %549 = add i64 %531, -32
  %550 = add i64 %533, 21
  store i64 %550, i64* %3, align 8
  %551 = inttoptr i64 %549 to i32*
  %552 = load i32, i32* %551, align 4
  %553 = sext i32 %552 to i64
  store i64 %553, i64* %RDX.i646, align 8
  %554 = shl nsw i64 %553, 3
  %555 = add i64 %554, %548
  %556 = add i64 %533, 26
  store i64 %556, i64* %3, align 8
  %557 = inttoptr i64 %555 to double*
  %558 = load double, double* %557, align 8
  %559 = fsub double %546, %558
  store double %559, double* %262, align 1
  store i64 0, i64* %263, align 1
  %560 = add i64 %531, -72
  %561 = add i64 %533, 31
  store i64 %561, i64* %3, align 8
  %562 = inttoptr i64 %560 to double*
  store double %559, double* %562, align 8
  %563 = load i64, i64* %RBP.i, align 8
  %564 = add i64 %563, -16
  %565 = load i64, i64* %3, align 8
  %566 = add i64 %565, 4
  store i64 %566, i64* %3, align 8
  %567 = inttoptr i64 %564 to i64*
  %568 = load i64, i64* %567, align 8
  store i64 %568, i64* %RCX.i152, align 8
  %569 = add i64 %563, -28
  %570 = add i64 %565, 7
  store i64 %570, i64* %3, align 8
  %571 = inttoptr i64 %569 to i32*
  %572 = load i32, i32* %571, align 4
  %573 = add i32 %572, 1
  %574 = zext i32 %573 to i64
  store i64 %574, i64* %RAX.i597.pre-phi, align 8
  %575 = icmp eq i32 %572, -1
  %576 = icmp eq i32 %573, 0
  %577 = or i1 %575, %576
  %578 = zext i1 %577 to i8
  store i8 %578, i8* %14, align 1
  %579 = and i32 %573, 255
  %580 = tail call i32 @llvm.ctpop.i32(i32 %579)
  %581 = trunc i32 %580 to i8
  %582 = and i8 %581, 1
  %583 = xor i8 %582, 1
  store i8 %583, i8* %21, align 1
  %584 = xor i32 %572, %573
  %585 = lshr i32 %584, 4
  %586 = trunc i32 %585 to i8
  %587 = and i8 %586, 1
  store i8 %587, i8* %27, align 1
  %588 = zext i1 %576 to i8
  store i8 %588, i8* %30, align 1
  %589 = lshr i32 %573, 31
  %590 = trunc i32 %589 to i8
  store i8 %590, i8* %33, align 1
  %591 = lshr i32 %572, 31
  %592 = xor i32 %589, %591
  %593 = add nuw nsw i32 %592, %589
  %594 = icmp eq i32 %593, 2
  %595 = zext i1 %594 to i8
  store i8 %595, i8* %39, align 1
  %596 = sext i32 %573 to i64
  store i64 %596, i64* %RDX.i646, align 8
  %597 = shl nsw i64 %596, 3
  %598 = add i64 %597, %568
  %599 = add i64 %565, 18
  store i64 %599, i64* %3, align 8
  %600 = inttoptr i64 %598 to double*
  %601 = load double, double* %600, align 8
  store double %601, double* %262, align 1
  store double 0.000000e+00, double* %264, align 1
  %602 = add i64 %565, 22
  store i64 %602, i64* %3, align 8
  %603 = load i64, i64* %567, align 8
  store i64 %603, i64* %RCX.i152, align 8
  %604 = add i64 %563, -32
  %605 = add i64 %565, 25
  store i64 %605, i64* %3, align 8
  %606 = inttoptr i64 %604 to i32*
  %607 = load i32, i32* %606, align 4
  %608 = add i32 %607, 1
  %609 = zext i32 %608 to i64
  store i64 %609, i64* %RAX.i597.pre-phi, align 8
  %610 = icmp eq i32 %607, -1
  %611 = icmp eq i32 %608, 0
  %612 = or i1 %610, %611
  %613 = zext i1 %612 to i8
  store i8 %613, i8* %14, align 1
  %614 = and i32 %608, 255
  %615 = tail call i32 @llvm.ctpop.i32(i32 %614)
  %616 = trunc i32 %615 to i8
  %617 = and i8 %616, 1
  %618 = xor i8 %617, 1
  store i8 %618, i8* %21, align 1
  %619 = xor i32 %607, %608
  %620 = lshr i32 %619, 4
  %621 = trunc i32 %620 to i8
  %622 = and i8 %621, 1
  store i8 %622, i8* %27, align 1
  %623 = zext i1 %611 to i8
  store i8 %623, i8* %30, align 1
  %624 = lshr i32 %608, 31
  %625 = trunc i32 %624 to i8
  store i8 %625, i8* %33, align 1
  %626 = lshr i32 %607, 31
  %627 = xor i32 %624, %626
  %628 = add nuw nsw i32 %627, %624
  %629 = icmp eq i32 %628, 2
  %630 = zext i1 %629 to i8
  store i8 %630, i8* %39, align 1
  %631 = sext i32 %608 to i64
  store i64 %631, i64* %RDX.i646, align 8
  %632 = shl nsw i64 %631, 3
  %633 = add i64 %632, %603
  %634 = add i64 %565, 36
  store i64 %634, i64* %3, align 8
  %635 = inttoptr i64 %633 to double*
  %636 = load double, double* %635, align 8
  %637 = fsub double %601, %636
  store double %637, double* %262, align 1
  store i64 0, i64* %263, align 1
  %638 = load i64, i64* %RBP.i, align 8
  %639 = add i64 %638, -80
  %640 = add i64 %565, 41
  store i64 %640, i64* %3, align 8
  %641 = inttoptr i64 %639 to double*
  store double %637, double* %641, align 8
  %642 = load i64, i64* %RBP.i, align 8
  %643 = add i64 %642, -16
  %644 = load i64, i64* %3, align 8
  %645 = add i64 %644, 4
  store i64 %645, i64* %3, align 8
  %646 = inttoptr i64 %643 to i64*
  %647 = load i64, i64* %646, align 8
  store i64 %647, i64* %RCX.i152, align 8
  %648 = add i64 %642, -36
  %649 = add i64 %644, 8
  store i64 %649, i64* %3, align 8
  %650 = inttoptr i64 %648 to i32*
  %651 = load i32, i32* %650, align 4
  %652 = sext i32 %651 to i64
  store i64 %652, i64* %RDX.i646, align 8
  %653 = shl nsw i64 %652, 3
  %654 = add i64 %653, %647
  %655 = add i64 %644, 13
  store i64 %655, i64* %3, align 8
  %656 = inttoptr i64 %654 to double*
  %657 = load double, double* %656, align 8
  store double %657, double* %262, align 1
  store double 0.000000e+00, double* %264, align 1
  %658 = add i64 %644, 17
  store i64 %658, i64* %3, align 8
  %659 = load i64, i64* %646, align 8
  store i64 %659, i64* %RCX.i152, align 8
  %660 = add i64 %642, -40
  %661 = add i64 %644, 21
  store i64 %661, i64* %3, align 8
  %662 = inttoptr i64 %660 to i32*
  %663 = load i32, i32* %662, align 4
  %664 = sext i32 %663 to i64
  store i64 %664, i64* %RDX.i646, align 8
  %665 = shl nsw i64 %664, 3
  %666 = add i64 %665, %659
  %667 = add i64 %644, 26
  store i64 %667, i64* %3, align 8
  %668 = inttoptr i64 %666 to double*
  %669 = load double, double* %668, align 8
  %670 = fadd double %657, %669
  store double %670, double* %262, align 1
  store i64 0, i64* %263, align 1
  %671 = add i64 %642, -88
  %672 = add i64 %644, 31
  store i64 %672, i64* %3, align 8
  %673 = inttoptr i64 %671 to double*
  store double %670, double* %673, align 8
  %674 = load i64, i64* %RBP.i, align 8
  %675 = add i64 %674, -16
  %676 = load i64, i64* %3, align 8
  %677 = add i64 %676, 4
  store i64 %677, i64* %3, align 8
  %678 = inttoptr i64 %675 to i64*
  %679 = load i64, i64* %678, align 8
  store i64 %679, i64* %RCX.i152, align 8
  %680 = add i64 %674, -36
  %681 = add i64 %676, 7
  store i64 %681, i64* %3, align 8
  %682 = inttoptr i64 %680 to i32*
  %683 = load i32, i32* %682, align 4
  %684 = add i32 %683, 1
  %685 = zext i32 %684 to i64
  store i64 %685, i64* %RAX.i597.pre-phi, align 8
  %686 = icmp eq i32 %683, -1
  %687 = icmp eq i32 %684, 0
  %688 = or i1 %686, %687
  %689 = zext i1 %688 to i8
  store i8 %689, i8* %14, align 1
  %690 = and i32 %684, 255
  %691 = tail call i32 @llvm.ctpop.i32(i32 %690)
  %692 = trunc i32 %691 to i8
  %693 = and i8 %692, 1
  %694 = xor i8 %693, 1
  store i8 %694, i8* %21, align 1
  %695 = xor i32 %683, %684
  %696 = lshr i32 %695, 4
  %697 = trunc i32 %696 to i8
  %698 = and i8 %697, 1
  store i8 %698, i8* %27, align 1
  %699 = zext i1 %687 to i8
  store i8 %699, i8* %30, align 1
  %700 = lshr i32 %684, 31
  %701 = trunc i32 %700 to i8
  store i8 %701, i8* %33, align 1
  %702 = lshr i32 %683, 31
  %703 = xor i32 %700, %702
  %704 = add nuw nsw i32 %703, %700
  %705 = icmp eq i32 %704, 2
  %706 = zext i1 %705 to i8
  store i8 %706, i8* %39, align 1
  %707 = sext i32 %684 to i64
  store i64 %707, i64* %RDX.i646, align 8
  %708 = shl nsw i64 %707, 3
  %709 = add i64 %708, %679
  %710 = add i64 %676, 18
  store i64 %710, i64* %3, align 8
  %711 = inttoptr i64 %709 to double*
  %712 = load double, double* %711, align 8
  store double %712, double* %262, align 1
  store double 0.000000e+00, double* %264, align 1
  %713 = add i64 %676, 22
  store i64 %713, i64* %3, align 8
  %714 = load i64, i64* %678, align 8
  store i64 %714, i64* %RCX.i152, align 8
  %715 = add i64 %674, -40
  %716 = add i64 %676, 25
  store i64 %716, i64* %3, align 8
  %717 = inttoptr i64 %715 to i32*
  %718 = load i32, i32* %717, align 4
  %719 = add i32 %718, 1
  %720 = zext i32 %719 to i64
  store i64 %720, i64* %RAX.i597.pre-phi, align 8
  %721 = icmp eq i32 %718, -1
  %722 = icmp eq i32 %719, 0
  %723 = or i1 %721, %722
  %724 = zext i1 %723 to i8
  store i8 %724, i8* %14, align 1
  %725 = and i32 %719, 255
  %726 = tail call i32 @llvm.ctpop.i32(i32 %725)
  %727 = trunc i32 %726 to i8
  %728 = and i8 %727, 1
  %729 = xor i8 %728, 1
  store i8 %729, i8* %21, align 1
  %730 = xor i32 %718, %719
  %731 = lshr i32 %730, 4
  %732 = trunc i32 %731 to i8
  %733 = and i8 %732, 1
  store i8 %733, i8* %27, align 1
  %734 = zext i1 %722 to i8
  store i8 %734, i8* %30, align 1
  %735 = lshr i32 %719, 31
  %736 = trunc i32 %735 to i8
  store i8 %736, i8* %33, align 1
  %737 = lshr i32 %718, 31
  %738 = xor i32 %735, %737
  %739 = add nuw nsw i32 %738, %735
  %740 = icmp eq i32 %739, 2
  %741 = zext i1 %740 to i8
  store i8 %741, i8* %39, align 1
  %742 = sext i32 %719 to i64
  store i64 %742, i64* %RDX.i646, align 8
  %743 = shl nsw i64 %742, 3
  %744 = add i64 %743, %714
  %745 = add i64 %676, 36
  store i64 %745, i64* %3, align 8
  %746 = inttoptr i64 %744 to double*
  %747 = load double, double* %746, align 8
  %748 = fadd double %712, %747
  store double %748, double* %262, align 1
  store i64 0, i64* %263, align 1
  %749 = load i64, i64* %RBP.i, align 8
  %750 = add i64 %749, -96
  %751 = add i64 %676, 41
  store i64 %751, i64* %3, align 8
  %752 = inttoptr i64 %750 to double*
  store double %748, double* %752, align 8
  %753 = load i64, i64* %RBP.i, align 8
  %754 = add i64 %753, -16
  %755 = load i64, i64* %3, align 8
  %756 = add i64 %755, 4
  store i64 %756, i64* %3, align 8
  %757 = inttoptr i64 %754 to i64*
  %758 = load i64, i64* %757, align 8
  store i64 %758, i64* %RCX.i152, align 8
  %759 = add i64 %753, -36
  %760 = add i64 %755, 8
  store i64 %760, i64* %3, align 8
  %761 = inttoptr i64 %759 to i32*
  %762 = load i32, i32* %761, align 4
  %763 = sext i32 %762 to i64
  store i64 %763, i64* %RDX.i646, align 8
  %764 = shl nsw i64 %763, 3
  %765 = add i64 %764, %758
  %766 = add i64 %755, 13
  store i64 %766, i64* %3, align 8
  %767 = inttoptr i64 %765 to double*
  %768 = load double, double* %767, align 8
  store double %768, double* %262, align 1
  store double 0.000000e+00, double* %264, align 1
  %769 = add i64 %755, 17
  store i64 %769, i64* %3, align 8
  %770 = load i64, i64* %757, align 8
  store i64 %770, i64* %RCX.i152, align 8
  %771 = add i64 %753, -40
  %772 = add i64 %755, 21
  store i64 %772, i64* %3, align 8
  %773 = inttoptr i64 %771 to i32*
  %774 = load i32, i32* %773, align 4
  %775 = sext i32 %774 to i64
  store i64 %775, i64* %RDX.i646, align 8
  %776 = shl nsw i64 %775, 3
  %777 = add i64 %776, %770
  %778 = add i64 %755, 26
  store i64 %778, i64* %3, align 8
  %779 = inttoptr i64 %777 to double*
  %780 = load double, double* %779, align 8
  %781 = fsub double %768, %780
  store double %781, double* %262, align 1
  store i64 0, i64* %263, align 1
  %782 = add i64 %753, -104
  %783 = add i64 %755, 31
  store i64 %783, i64* %3, align 8
  %784 = inttoptr i64 %782 to double*
  store double %781, double* %784, align 8
  %785 = load i64, i64* %RBP.i, align 8
  %786 = add i64 %785, -16
  %787 = load i64, i64* %3, align 8
  %788 = add i64 %787, 4
  store i64 %788, i64* %3, align 8
  %789 = inttoptr i64 %786 to i64*
  %790 = load i64, i64* %789, align 8
  store i64 %790, i64* %RCX.i152, align 8
  %791 = add i64 %785, -36
  %792 = add i64 %787, 7
  store i64 %792, i64* %3, align 8
  %793 = inttoptr i64 %791 to i32*
  %794 = load i32, i32* %793, align 4
  %795 = add i32 %794, 1
  %796 = zext i32 %795 to i64
  store i64 %796, i64* %RAX.i597.pre-phi, align 8
  %797 = icmp eq i32 %794, -1
  %798 = icmp eq i32 %795, 0
  %799 = or i1 %797, %798
  %800 = zext i1 %799 to i8
  store i8 %800, i8* %14, align 1
  %801 = and i32 %795, 255
  %802 = tail call i32 @llvm.ctpop.i32(i32 %801)
  %803 = trunc i32 %802 to i8
  %804 = and i8 %803, 1
  %805 = xor i8 %804, 1
  store i8 %805, i8* %21, align 1
  %806 = xor i32 %794, %795
  %807 = lshr i32 %806, 4
  %808 = trunc i32 %807 to i8
  %809 = and i8 %808, 1
  store i8 %809, i8* %27, align 1
  %810 = zext i1 %798 to i8
  store i8 %810, i8* %30, align 1
  %811 = lshr i32 %795, 31
  %812 = trunc i32 %811 to i8
  store i8 %812, i8* %33, align 1
  %813 = lshr i32 %794, 31
  %814 = xor i32 %811, %813
  %815 = add nuw nsw i32 %814, %811
  %816 = icmp eq i32 %815, 2
  %817 = zext i1 %816 to i8
  store i8 %817, i8* %39, align 1
  %818 = sext i32 %795 to i64
  store i64 %818, i64* %RDX.i646, align 8
  %819 = shl nsw i64 %818, 3
  %820 = add i64 %819, %790
  %821 = add i64 %787, 18
  store i64 %821, i64* %3, align 8
  %822 = inttoptr i64 %820 to double*
  %823 = load double, double* %822, align 8
  store double %823, double* %262, align 1
  store double 0.000000e+00, double* %264, align 1
  %824 = add i64 %787, 22
  store i64 %824, i64* %3, align 8
  %825 = load i64, i64* %789, align 8
  store i64 %825, i64* %RCX.i152, align 8
  %826 = add i64 %785, -40
  %827 = add i64 %787, 25
  store i64 %827, i64* %3, align 8
  %828 = inttoptr i64 %826 to i32*
  %829 = load i32, i32* %828, align 4
  %830 = add i32 %829, 1
  %831 = zext i32 %830 to i64
  store i64 %831, i64* %RAX.i597.pre-phi, align 8
  %832 = icmp eq i32 %829, -1
  %833 = icmp eq i32 %830, 0
  %834 = or i1 %832, %833
  %835 = zext i1 %834 to i8
  store i8 %835, i8* %14, align 1
  %836 = and i32 %830, 255
  %837 = tail call i32 @llvm.ctpop.i32(i32 %836)
  %838 = trunc i32 %837 to i8
  %839 = and i8 %838, 1
  %840 = xor i8 %839, 1
  store i8 %840, i8* %21, align 1
  %841 = xor i32 %829, %830
  %842 = lshr i32 %841, 4
  %843 = trunc i32 %842 to i8
  %844 = and i8 %843, 1
  store i8 %844, i8* %27, align 1
  %845 = zext i1 %833 to i8
  store i8 %845, i8* %30, align 1
  %846 = lshr i32 %830, 31
  %847 = trunc i32 %846 to i8
  store i8 %847, i8* %33, align 1
  %848 = lshr i32 %829, 31
  %849 = xor i32 %846, %848
  %850 = add nuw nsw i32 %849, %846
  %851 = icmp eq i32 %850, 2
  %852 = zext i1 %851 to i8
  store i8 %852, i8* %39, align 1
  %853 = sext i32 %830 to i64
  store i64 %853, i64* %RDX.i646, align 8
  %854 = shl nsw i64 %853, 3
  %855 = add i64 %854, %825
  %856 = add i64 %787, 36
  store i64 %856, i64* %3, align 8
  %857 = inttoptr i64 %855 to double*
  %858 = load double, double* %857, align 8
  %859 = fsub double %823, %858
  store double %859, double* %262, align 1
  store i64 0, i64* %263, align 1
  %860 = load i64, i64* %RBP.i, align 8
  %861 = add i64 %860, -112
  %862 = add i64 %787, 41
  store i64 %862, i64* %3, align 8
  %863 = inttoptr i64 %861 to double*
  store double %859, double* %863, align 8
  %864 = load i64, i64* %RBP.i, align 8
  %865 = add i64 %864, -56
  %866 = load i64, i64* %3, align 8
  %867 = add i64 %866, 5
  store i64 %867, i64* %3, align 8
  %868 = inttoptr i64 %865 to double*
  %869 = load double, double* %868, align 8
  store double %869, double* %262, align 1
  store double 0.000000e+00, double* %264, align 1
  %870 = add i64 %864, -88
  %871 = add i64 %866, 10
  store i64 %871, i64* %3, align 8
  %872 = inttoptr i64 %870 to double*
  %873 = load double, double* %872, align 8
  %874 = fadd double %869, %873
  store double %874, double* %262, align 1
  store i64 0, i64* %263, align 1
  %875 = add i64 %864, -16
  %876 = add i64 %866, 14
  store i64 %876, i64* %3, align 8
  %877 = inttoptr i64 %875 to i64*
  %878 = load i64, i64* %877, align 8
  store i64 %878, i64* %RCX.i152, align 8
  %879 = add i64 %864, -28
  %880 = add i64 %866, 18
  store i64 %880, i64* %3, align 8
  %881 = inttoptr i64 %879 to i32*
  %882 = load i32, i32* %881, align 4
  %883 = sext i32 %882 to i64
  store i64 %883, i64* %RDX.i646, align 8
  %884 = shl nsw i64 %883, 3
  %885 = add i64 %884, %878
  %886 = add i64 %866, 23
  store i64 %886, i64* %3, align 8
  %887 = inttoptr i64 %885 to double*
  store double %874, double* %887, align 8
  %888 = load i64, i64* %RBP.i, align 8
  %889 = add i64 %888, -64
  %890 = load i64, i64* %3, align 8
  %891 = add i64 %890, 5
  store i64 %891, i64* %3, align 8
  %892 = inttoptr i64 %889 to double*
  %893 = load double, double* %892, align 8
  store double %893, double* %262, align 1
  store double 0.000000e+00, double* %264, align 1
  %894 = add i64 %888, -96
  %895 = add i64 %890, 10
  store i64 %895, i64* %3, align 8
  %896 = inttoptr i64 %894 to double*
  %897 = load double, double* %896, align 8
  %898 = fadd double %893, %897
  store double %898, double* %262, align 1
  store i64 0, i64* %263, align 1
  %899 = add i64 %888, -16
  %900 = add i64 %890, 14
  store i64 %900, i64* %3, align 8
  %901 = inttoptr i64 %899 to i64*
  %902 = load i64, i64* %901, align 8
  store i64 %902, i64* %RCX.i152, align 8
  %903 = add i64 %888, -28
  %904 = add i64 %890, 17
  store i64 %904, i64* %3, align 8
  %905 = inttoptr i64 %903 to i32*
  %906 = load i32, i32* %905, align 4
  %907 = add i32 %906, 1
  %908 = zext i32 %907 to i64
  store i64 %908, i64* %RAX.i597.pre-phi, align 8
  %909 = icmp eq i32 %906, -1
  %910 = icmp eq i32 %907, 0
  %911 = or i1 %909, %910
  %912 = zext i1 %911 to i8
  store i8 %912, i8* %14, align 1
  %913 = and i32 %907, 255
  %914 = tail call i32 @llvm.ctpop.i32(i32 %913)
  %915 = trunc i32 %914 to i8
  %916 = and i8 %915, 1
  %917 = xor i8 %916, 1
  store i8 %917, i8* %21, align 1
  %918 = xor i32 %906, %907
  %919 = lshr i32 %918, 4
  %920 = trunc i32 %919 to i8
  %921 = and i8 %920, 1
  store i8 %921, i8* %27, align 1
  %922 = zext i1 %910 to i8
  store i8 %922, i8* %30, align 1
  %923 = lshr i32 %907, 31
  %924 = trunc i32 %923 to i8
  store i8 %924, i8* %33, align 1
  %925 = lshr i32 %906, 31
  %926 = xor i32 %923, %925
  %927 = add nuw nsw i32 %926, %923
  %928 = icmp eq i32 %927, 2
  %929 = zext i1 %928 to i8
  store i8 %929, i8* %39, align 1
  %930 = sext i32 %907 to i64
  store i64 %930, i64* %RDX.i646, align 8
  %931 = shl nsw i64 %930, 3
  %932 = add i64 %931, %902
  %933 = add i64 %890, 28
  store i64 %933, i64* %3, align 8
  %934 = inttoptr i64 %932 to double*
  store double %898, double* %934, align 8
  %935 = load i64, i64* %RBP.i, align 8
  %936 = add i64 %935, -56
  %937 = load i64, i64* %3, align 8
  %938 = add i64 %937, 5
  store i64 %938, i64* %3, align 8
  %939 = inttoptr i64 %936 to double*
  %940 = load double, double* %939, align 8
  store double %940, double* %262, align 1
  store double 0.000000e+00, double* %264, align 1
  %941 = add i64 %935, -88
  %942 = add i64 %937, 10
  store i64 %942, i64* %3, align 8
  %943 = inttoptr i64 %941 to double*
  %944 = load double, double* %943, align 8
  %945 = fsub double %940, %944
  store double %945, double* %262, align 1
  store i64 0, i64* %263, align 1
  %946 = add i64 %935, -16
  %947 = add i64 %937, 14
  store i64 %947, i64* %3, align 8
  %948 = inttoptr i64 %946 to i64*
  %949 = load i64, i64* %948, align 8
  store i64 %949, i64* %RCX.i152, align 8
  %950 = add i64 %935, -36
  %951 = add i64 %937, 18
  store i64 %951, i64* %3, align 8
  %952 = inttoptr i64 %950 to i32*
  %953 = load i32, i32* %952, align 4
  %954 = sext i32 %953 to i64
  store i64 %954, i64* %RDX.i646, align 8
  %955 = shl nsw i64 %954, 3
  %956 = add i64 %955, %949
  %957 = add i64 %937, 23
  store i64 %957, i64* %3, align 8
  %958 = inttoptr i64 %956 to double*
  store double %945, double* %958, align 8
  %959 = load i64, i64* %RBP.i, align 8
  %960 = add i64 %959, -64
  %961 = load i64, i64* %3, align 8
  %962 = add i64 %961, 5
  store i64 %962, i64* %3, align 8
  %963 = inttoptr i64 %960 to double*
  %964 = load double, double* %963, align 8
  store double %964, double* %262, align 1
  store double 0.000000e+00, double* %264, align 1
  %965 = add i64 %959, -96
  %966 = add i64 %961, 10
  store i64 %966, i64* %3, align 8
  %967 = inttoptr i64 %965 to double*
  %968 = load double, double* %967, align 8
  %969 = fsub double %964, %968
  store double %969, double* %262, align 1
  store i64 0, i64* %263, align 1
  %970 = add i64 %959, -16
  %971 = add i64 %961, 14
  store i64 %971, i64* %3, align 8
  %972 = inttoptr i64 %970 to i64*
  %973 = load i64, i64* %972, align 8
  store i64 %973, i64* %RCX.i152, align 8
  %974 = add i64 %959, -36
  %975 = add i64 %961, 17
  store i64 %975, i64* %3, align 8
  %976 = inttoptr i64 %974 to i32*
  %977 = load i32, i32* %976, align 4
  %978 = add i32 %977, 1
  %979 = zext i32 %978 to i64
  store i64 %979, i64* %RAX.i597.pre-phi, align 8
  %980 = icmp eq i32 %977, -1
  %981 = icmp eq i32 %978, 0
  %982 = or i1 %980, %981
  %983 = zext i1 %982 to i8
  store i8 %983, i8* %14, align 1
  %984 = and i32 %978, 255
  %985 = tail call i32 @llvm.ctpop.i32(i32 %984)
  %986 = trunc i32 %985 to i8
  %987 = and i8 %986, 1
  %988 = xor i8 %987, 1
  store i8 %988, i8* %21, align 1
  %989 = xor i32 %977, %978
  %990 = lshr i32 %989, 4
  %991 = trunc i32 %990 to i8
  %992 = and i8 %991, 1
  store i8 %992, i8* %27, align 1
  %993 = zext i1 %981 to i8
  store i8 %993, i8* %30, align 1
  %994 = lshr i32 %978, 31
  %995 = trunc i32 %994 to i8
  store i8 %995, i8* %33, align 1
  %996 = lshr i32 %977, 31
  %997 = xor i32 %994, %996
  %998 = add nuw nsw i32 %997, %994
  %999 = icmp eq i32 %998, 2
  %1000 = zext i1 %999 to i8
  store i8 %1000, i8* %39, align 1
  %1001 = sext i32 %978 to i64
  store i64 %1001, i64* %RDX.i646, align 8
  %1002 = shl nsw i64 %1001, 3
  %1003 = add i64 %1002, %973
  %1004 = add i64 %961, 28
  store i64 %1004, i64* %3, align 8
  %1005 = inttoptr i64 %1003 to double*
  store double %969, double* %1005, align 8
  %1006 = load i64, i64* %RBP.i, align 8
  %1007 = add i64 %1006, -72
  %1008 = load i64, i64* %3, align 8
  %1009 = add i64 %1008, 5
  store i64 %1009, i64* %3, align 8
  %1010 = inttoptr i64 %1007 to double*
  %1011 = load double, double* %1010, align 8
  store double %1011, double* %262, align 1
  store double 0.000000e+00, double* %264, align 1
  %1012 = add i64 %1006, -112
  %1013 = add i64 %1008, 10
  store i64 %1013, i64* %3, align 8
  %1014 = inttoptr i64 %1012 to double*
  %1015 = load double, double* %1014, align 8
  %1016 = fsub double %1011, %1015
  store double %1016, double* %262, align 1
  store i64 0, i64* %263, align 1
  %1017 = add i64 %1006, -16
  %1018 = add i64 %1008, 14
  store i64 %1018, i64* %3, align 8
  %1019 = inttoptr i64 %1017 to i64*
  %1020 = load i64, i64* %1019, align 8
  store i64 %1020, i64* %RCX.i152, align 8
  %1021 = add i64 %1006, -32
  %1022 = add i64 %1008, 18
  store i64 %1022, i64* %3, align 8
  %1023 = inttoptr i64 %1021 to i32*
  %1024 = load i32, i32* %1023, align 4
  %1025 = sext i32 %1024 to i64
  store i64 %1025, i64* %RDX.i646, align 8
  %1026 = shl nsw i64 %1025, 3
  %1027 = add i64 %1026, %1020
  %1028 = add i64 %1008, 23
  store i64 %1028, i64* %3, align 8
  %1029 = inttoptr i64 %1027 to double*
  store double %1016, double* %1029, align 8
  %1030 = load i64, i64* %RBP.i, align 8
  %1031 = add i64 %1030, -80
  %1032 = load i64, i64* %3, align 8
  %1033 = add i64 %1032, 5
  store i64 %1033, i64* %3, align 8
  %1034 = inttoptr i64 %1031 to double*
  %1035 = load double, double* %1034, align 8
  store double %1035, double* %262, align 1
  store double 0.000000e+00, double* %264, align 1
  %1036 = add i64 %1030, -104
  %1037 = add i64 %1032, 10
  store i64 %1037, i64* %3, align 8
  %1038 = inttoptr i64 %1036 to double*
  %1039 = load double, double* %1038, align 8
  %1040 = fadd double %1035, %1039
  store double %1040, double* %262, align 1
  store i64 0, i64* %263, align 1
  %1041 = add i64 %1030, -16
  %1042 = add i64 %1032, 14
  store i64 %1042, i64* %3, align 8
  %1043 = inttoptr i64 %1041 to i64*
  %1044 = load i64, i64* %1043, align 8
  store i64 %1044, i64* %RCX.i152, align 8
  %1045 = add i64 %1030, -32
  %1046 = add i64 %1032, 17
  store i64 %1046, i64* %3, align 8
  %1047 = inttoptr i64 %1045 to i32*
  %1048 = load i32, i32* %1047, align 4
  %1049 = add i32 %1048, 1
  %1050 = zext i32 %1049 to i64
  store i64 %1050, i64* %RAX.i597.pre-phi, align 8
  %1051 = icmp eq i32 %1048, -1
  %1052 = icmp eq i32 %1049, 0
  %1053 = or i1 %1051, %1052
  %1054 = zext i1 %1053 to i8
  store i8 %1054, i8* %14, align 1
  %1055 = and i32 %1049, 255
  %1056 = tail call i32 @llvm.ctpop.i32(i32 %1055)
  %1057 = trunc i32 %1056 to i8
  %1058 = and i8 %1057, 1
  %1059 = xor i8 %1058, 1
  store i8 %1059, i8* %21, align 1
  %1060 = xor i32 %1048, %1049
  %1061 = lshr i32 %1060, 4
  %1062 = trunc i32 %1061 to i8
  %1063 = and i8 %1062, 1
  store i8 %1063, i8* %27, align 1
  %1064 = zext i1 %1052 to i8
  store i8 %1064, i8* %30, align 1
  %1065 = lshr i32 %1049, 31
  %1066 = trunc i32 %1065 to i8
  store i8 %1066, i8* %33, align 1
  %1067 = lshr i32 %1048, 31
  %1068 = xor i32 %1065, %1067
  %1069 = add nuw nsw i32 %1068, %1065
  %1070 = icmp eq i32 %1069, 2
  %1071 = zext i1 %1070 to i8
  store i8 %1071, i8* %39, align 1
  %1072 = sext i32 %1049 to i64
  store i64 %1072, i64* %RDX.i646, align 8
  %1073 = shl nsw i64 %1072, 3
  %1074 = add i64 %1073, %1044
  %1075 = add i64 %1032, 28
  store i64 %1075, i64* %3, align 8
  %1076 = inttoptr i64 %1074 to double*
  store double %1040, double* %1076, align 8
  %1077 = load i64, i64* %RBP.i, align 8
  %1078 = add i64 %1077, -72
  %1079 = load i64, i64* %3, align 8
  %1080 = add i64 %1079, 5
  store i64 %1080, i64* %3, align 8
  %1081 = inttoptr i64 %1078 to double*
  %1082 = load double, double* %1081, align 8
  store double %1082, double* %262, align 1
  store double 0.000000e+00, double* %264, align 1
  %1083 = add i64 %1077, -112
  %1084 = add i64 %1079, 10
  store i64 %1084, i64* %3, align 8
  %1085 = inttoptr i64 %1083 to double*
  %1086 = load double, double* %1085, align 8
  %1087 = fadd double %1082, %1086
  store double %1087, double* %262, align 1
  store i64 0, i64* %263, align 1
  %1088 = add i64 %1077, -16
  %1089 = add i64 %1079, 14
  store i64 %1089, i64* %3, align 8
  %1090 = inttoptr i64 %1088 to i64*
  %1091 = load i64, i64* %1090, align 8
  store i64 %1091, i64* %RCX.i152, align 8
  %1092 = add i64 %1077, -40
  %1093 = add i64 %1079, 18
  store i64 %1093, i64* %3, align 8
  %1094 = inttoptr i64 %1092 to i32*
  %1095 = load i32, i32* %1094, align 4
  %1096 = sext i32 %1095 to i64
  store i64 %1096, i64* %RDX.i646, align 8
  %1097 = shl nsw i64 %1096, 3
  %1098 = add i64 %1097, %1091
  %1099 = add i64 %1079, 23
  store i64 %1099, i64* %3, align 8
  %1100 = inttoptr i64 %1098 to double*
  store double %1087, double* %1100, align 8
  %1101 = load i64, i64* %RBP.i, align 8
  %1102 = add i64 %1101, -80
  %1103 = load i64, i64* %3, align 8
  %1104 = add i64 %1103, 5
  store i64 %1104, i64* %3, align 8
  %1105 = inttoptr i64 %1102 to double*
  %1106 = load double, double* %1105, align 8
  store double %1106, double* %262, align 1
  store double 0.000000e+00, double* %264, align 1
  %1107 = add i64 %1101, -104
  %1108 = add i64 %1103, 10
  store i64 %1108, i64* %3, align 8
  %1109 = inttoptr i64 %1107 to double*
  %1110 = load double, double* %1109, align 8
  %1111 = fsub double %1106, %1110
  store double %1111, double* %262, align 1
  store i64 0, i64* %263, align 1
  %1112 = add i64 %1101, -16
  %1113 = add i64 %1103, 14
  store i64 %1113, i64* %3, align 8
  %1114 = inttoptr i64 %1112 to i64*
  %1115 = load i64, i64* %1114, align 8
  store i64 %1115, i64* %RCX.i152, align 8
  %1116 = add i64 %1101, -40
  %1117 = add i64 %1103, 17
  store i64 %1117, i64* %3, align 8
  %1118 = inttoptr i64 %1116 to i32*
  %1119 = load i32, i32* %1118, align 4
  %1120 = add i32 %1119, 1
  %1121 = zext i32 %1120 to i64
  store i64 %1121, i64* %RAX.i597.pre-phi, align 8
  %1122 = icmp eq i32 %1119, -1
  %1123 = icmp eq i32 %1120, 0
  %1124 = or i1 %1122, %1123
  %1125 = zext i1 %1124 to i8
  store i8 %1125, i8* %14, align 1
  %1126 = and i32 %1120, 255
  %1127 = tail call i32 @llvm.ctpop.i32(i32 %1126)
  %1128 = trunc i32 %1127 to i8
  %1129 = and i8 %1128, 1
  %1130 = xor i8 %1129, 1
  store i8 %1130, i8* %21, align 1
  %1131 = xor i32 %1119, %1120
  %1132 = lshr i32 %1131, 4
  %1133 = trunc i32 %1132 to i8
  %1134 = and i8 %1133, 1
  store i8 %1134, i8* %27, align 1
  %1135 = zext i1 %1123 to i8
  store i8 %1135, i8* %30, align 1
  %1136 = lshr i32 %1120, 31
  %1137 = trunc i32 %1136 to i8
  store i8 %1137, i8* %33, align 1
  %1138 = lshr i32 %1119, 31
  %1139 = xor i32 %1136, %1138
  %1140 = add nuw nsw i32 %1139, %1136
  %1141 = icmp eq i32 %1140, 2
  %1142 = zext i1 %1141 to i8
  store i8 %1142, i8* %39, align 1
  %1143 = sext i32 %1120 to i64
  store i64 %1143, i64* %RDX.i646, align 8
  %1144 = shl nsw i64 %1143, 3
  %1145 = add i64 %1144, %1115
  %1146 = add i64 %1103, 28
  store i64 %1146, i64* %3, align 8
  %1147 = inttoptr i64 %1145 to double*
  store double %1111, double* %1147, align 8
  %1148 = load i64, i64* %RBP.i, align 8
  %1149 = add i64 %1148, -28
  %1150 = load i64, i64* %3, align 8
  %1151 = add i64 %1150, 3
  store i64 %1151, i64* %3, align 8
  %1152 = inttoptr i64 %1149 to i32*
  %1153 = load i32, i32* %1152, align 4
  %1154 = add i32 %1153, 2
  %1155 = zext i32 %1154 to i64
  store i64 %1155, i64* %RAX.i597.pre-phi, align 8
  %1156 = icmp ugt i32 %1153, -3
  %1157 = zext i1 %1156 to i8
  store i8 %1157, i8* %14, align 1
  %1158 = and i32 %1154, 255
  %1159 = tail call i32 @llvm.ctpop.i32(i32 %1158)
  %1160 = trunc i32 %1159 to i8
  %1161 = and i8 %1160, 1
  %1162 = xor i8 %1161, 1
  store i8 %1162, i8* %21, align 1
  %1163 = xor i32 %1153, %1154
  %1164 = lshr i32 %1163, 4
  %1165 = trunc i32 %1164 to i8
  %1166 = and i8 %1165, 1
  store i8 %1166, i8* %27, align 1
  %1167 = icmp eq i32 %1154, 0
  %1168 = zext i1 %1167 to i8
  store i8 %1168, i8* %30, align 1
  %1169 = lshr i32 %1154, 31
  %1170 = trunc i32 %1169 to i8
  store i8 %1170, i8* %33, align 1
  %1171 = lshr i32 %1153, 31
  %1172 = xor i32 %1169, %1171
  %1173 = add nuw nsw i32 %1172, %1169
  %1174 = icmp eq i32 %1173, 2
  %1175 = zext i1 %1174 to i8
  store i8 %1175, i8* %39, align 1
  %1176 = add i64 %1150, 9
  store i64 %1176, i64* %3, align 8
  store i32 %1154, i32* %1152, align 4
  %1177 = load i64, i64* %3, align 8
  %1178 = add i64 %1177, -540
  store i64 %1178, i64* %3, align 8
  br label %block_.L_4018c6

block_.L_401ae7:                                  ; preds = %block_.L_4018c6
  %1179 = add i64 %302, 237
  br label %block_.L_401bd4

block_.L_401af3:                                  ; preds = %block_.L_4018b0, %block_401aff
  %1180 = phi i64 [ %1562, %block_401aff ], [ %.pre2, %block_.L_4018b0 ]
  %1181 = load i64, i64* %RBP.i, align 8
  %1182 = add i64 %1181, -28
  %1183 = add i64 %1180, 3
  store i64 %1183, i64* %3, align 8
  %1184 = inttoptr i64 %1182 to i32*
  %1185 = load i32, i32* %1184, align 4
  %1186 = zext i32 %1185 to i64
  store i64 %1186, i64* %RAX.i597.pre-phi, align 8
  %1187 = add i64 %1181, -44
  %1188 = add i64 %1180, 6
  store i64 %1188, i64* %3, align 8
  %1189 = inttoptr i64 %1187 to i32*
  %1190 = load i32, i32* %1189, align 4
  %1191 = sub i32 %1185, %1190
  %1192 = icmp ult i32 %1185, %1190
  %1193 = zext i1 %1192 to i8
  store i8 %1193, i8* %14, align 1
  %1194 = and i32 %1191, 255
  %1195 = tail call i32 @llvm.ctpop.i32(i32 %1194)
  %1196 = trunc i32 %1195 to i8
  %1197 = and i8 %1196, 1
  %1198 = xor i8 %1197, 1
  store i8 %1198, i8* %21, align 1
  %1199 = xor i32 %1190, %1185
  %1200 = xor i32 %1199, %1191
  %1201 = lshr i32 %1200, 4
  %1202 = trunc i32 %1201 to i8
  %1203 = and i8 %1202, 1
  store i8 %1203, i8* %27, align 1
  %1204 = icmp eq i32 %1191, 0
  %1205 = zext i1 %1204 to i8
  store i8 %1205, i8* %30, align 1
  %1206 = lshr i32 %1191, 31
  %1207 = trunc i32 %1206 to i8
  store i8 %1207, i8* %33, align 1
  %1208 = lshr i32 %1185, 31
  %1209 = lshr i32 %1190, 31
  %1210 = xor i32 %1209, %1208
  %1211 = xor i32 %1206, %1208
  %1212 = add nuw nsw i32 %1211, %1210
  %1213 = icmp eq i32 %1212, 2
  %1214 = zext i1 %1213 to i8
  store i8 %1214, i8* %39, align 1
  %1215 = icmp ne i8 %1207, 0
  %1216 = xor i1 %1215, %1213
  %.v12 = select i1 %1216, i64 12, i64 220
  %1217 = add i64 %1180, %.v12
  store i64 %1217, i64* %3, align 8
  br i1 %1216, label %block_401aff, label %block_.L_401bcf

block_401aff:                                     ; preds = %block_.L_401af3
  %1218 = add i64 %1217, 3
  store i64 %1218, i64* %3, align 8
  %1219 = load i32, i32* %1184, align 4
  %1220 = zext i32 %1219 to i64
  store i64 %1220, i64* %RAX.i597.pre-phi, align 8
  %1221 = add i64 %1217, 6
  store i64 %1221, i64* %3, align 8
  %1222 = load i32, i32* %1189, align 4
  %1223 = add i32 %1222, %1219
  %1224 = zext i32 %1223 to i64
  store i64 %1224, i64* %RAX.i597.pre-phi, align 8
  %1225 = icmp ult i32 %1223, %1219
  %1226 = icmp ult i32 %1223, %1222
  %1227 = or i1 %1225, %1226
  %1228 = zext i1 %1227 to i8
  store i8 %1228, i8* %14, align 1
  %1229 = and i32 %1223, 255
  %1230 = tail call i32 @llvm.ctpop.i32(i32 %1229)
  %1231 = trunc i32 %1230 to i8
  %1232 = and i8 %1231, 1
  %1233 = xor i8 %1232, 1
  store i8 %1233, i8* %21, align 1
  %1234 = xor i32 %1222, %1219
  %1235 = xor i32 %1234, %1223
  %1236 = lshr i32 %1235, 4
  %1237 = trunc i32 %1236 to i8
  %1238 = and i8 %1237, 1
  store i8 %1238, i8* %27, align 1
  %1239 = icmp eq i32 %1223, 0
  %1240 = zext i1 %1239 to i8
  store i8 %1240, i8* %30, align 1
  %1241 = lshr i32 %1223, 31
  %1242 = trunc i32 %1241 to i8
  store i8 %1242, i8* %33, align 1
  %1243 = lshr i32 %1219, 31
  %1244 = lshr i32 %1222, 31
  %1245 = xor i32 %1241, %1243
  %1246 = xor i32 %1241, %1244
  %1247 = add nuw nsw i32 %1245, %1246
  %1248 = icmp eq i32 %1247, 2
  %1249 = zext i1 %1248 to i8
  store i8 %1249, i8* %39, align 1
  %1250 = add i64 %1181, -32
  %1251 = add i64 %1217, 9
  store i64 %1251, i64* %3, align 8
  %1252 = inttoptr i64 %1250 to i32*
  store i32 %1223, i32* %1252, align 4
  %1253 = load i64, i64* %RBP.i, align 8
  %1254 = add i64 %1253, -16
  %1255 = load i64, i64* %3, align 8
  %1256 = add i64 %1255, 4
  store i64 %1256, i64* %3, align 8
  %1257 = inttoptr i64 %1254 to i64*
  %1258 = load i64, i64* %1257, align 8
  store i64 %1258, i64* %RCX.i152, align 8
  %1259 = add i64 %1253, -28
  %1260 = add i64 %1255, 8
  store i64 %1260, i64* %3, align 8
  %1261 = inttoptr i64 %1259 to i32*
  %1262 = load i32, i32* %1261, align 4
  %1263 = sext i32 %1262 to i64
  store i64 %1263, i64* %RDX.i646, align 8
  %1264 = shl nsw i64 %1263, 3
  %1265 = add i64 %1264, %1258
  %1266 = add i64 %1255, 13
  store i64 %1266, i64* %3, align 8
  %1267 = inttoptr i64 %1265 to double*
  %1268 = load double, double* %1267, align 8
  store double %1268, double* %262, align 1
  store double 0.000000e+00, double* %264, align 1
  %1269 = add i64 %1255, 17
  store i64 %1269, i64* %3, align 8
  %1270 = load i64, i64* %1257, align 8
  store i64 %1270, i64* %RCX.i152, align 8
  %1271 = add i64 %1253, -32
  %1272 = add i64 %1255, 21
  store i64 %1272, i64* %3, align 8
  %1273 = inttoptr i64 %1271 to i32*
  %1274 = load i32, i32* %1273, align 4
  %1275 = sext i32 %1274 to i64
  store i64 %1275, i64* %RDX.i646, align 8
  %1276 = shl nsw i64 %1275, 3
  %1277 = add i64 %1276, %1270
  %1278 = add i64 %1255, 26
  store i64 %1278, i64* %3, align 8
  %1279 = inttoptr i64 %1277 to double*
  %1280 = load double, double* %1279, align 8
  %1281 = fsub double %1268, %1280
  store double %1281, double* %262, align 1
  store i64 0, i64* %263, align 1
  %1282 = add i64 %1253, -56
  %1283 = add i64 %1255, 31
  store i64 %1283, i64* %3, align 8
  %1284 = inttoptr i64 %1282 to double*
  store double %1281, double* %1284, align 8
  %1285 = load i64, i64* %RBP.i, align 8
  %1286 = add i64 %1285, -16
  %1287 = load i64, i64* %3, align 8
  %1288 = add i64 %1287, 4
  store i64 %1288, i64* %3, align 8
  %1289 = inttoptr i64 %1286 to i64*
  %1290 = load i64, i64* %1289, align 8
  store i64 %1290, i64* %RCX.i152, align 8
  %1291 = add i64 %1285, -28
  %1292 = add i64 %1287, 7
  store i64 %1292, i64* %3, align 8
  %1293 = inttoptr i64 %1291 to i32*
  %1294 = load i32, i32* %1293, align 4
  %1295 = add i32 %1294, 1
  %1296 = zext i32 %1295 to i64
  store i64 %1296, i64* %RAX.i597.pre-phi, align 8
  %1297 = icmp eq i32 %1294, -1
  %1298 = icmp eq i32 %1295, 0
  %1299 = or i1 %1297, %1298
  %1300 = zext i1 %1299 to i8
  store i8 %1300, i8* %14, align 1
  %1301 = and i32 %1295, 255
  %1302 = tail call i32 @llvm.ctpop.i32(i32 %1301)
  %1303 = trunc i32 %1302 to i8
  %1304 = and i8 %1303, 1
  %1305 = xor i8 %1304, 1
  store i8 %1305, i8* %21, align 1
  %1306 = xor i32 %1294, %1295
  %1307 = lshr i32 %1306, 4
  %1308 = trunc i32 %1307 to i8
  %1309 = and i8 %1308, 1
  store i8 %1309, i8* %27, align 1
  %1310 = zext i1 %1298 to i8
  store i8 %1310, i8* %30, align 1
  %1311 = lshr i32 %1295, 31
  %1312 = trunc i32 %1311 to i8
  store i8 %1312, i8* %33, align 1
  %1313 = lshr i32 %1294, 31
  %1314 = xor i32 %1311, %1313
  %1315 = add nuw nsw i32 %1314, %1311
  %1316 = icmp eq i32 %1315, 2
  %1317 = zext i1 %1316 to i8
  store i8 %1317, i8* %39, align 1
  %1318 = sext i32 %1295 to i64
  store i64 %1318, i64* %RDX.i646, align 8
  %1319 = shl nsw i64 %1318, 3
  %1320 = add i64 %1319, %1290
  %1321 = add i64 %1287, 18
  store i64 %1321, i64* %3, align 8
  %1322 = inttoptr i64 %1320 to double*
  %1323 = load double, double* %1322, align 8
  store double %1323, double* %262, align 1
  store double 0.000000e+00, double* %264, align 1
  %1324 = add i64 %1287, 22
  store i64 %1324, i64* %3, align 8
  %1325 = load i64, i64* %1289, align 8
  store i64 %1325, i64* %RCX.i152, align 8
  %1326 = add i64 %1285, -32
  %1327 = add i64 %1287, 25
  store i64 %1327, i64* %3, align 8
  %1328 = inttoptr i64 %1326 to i32*
  %1329 = load i32, i32* %1328, align 4
  %1330 = add i32 %1329, 1
  %1331 = zext i32 %1330 to i64
  store i64 %1331, i64* %RAX.i597.pre-phi, align 8
  %1332 = icmp eq i32 %1329, -1
  %1333 = icmp eq i32 %1330, 0
  %1334 = or i1 %1332, %1333
  %1335 = zext i1 %1334 to i8
  store i8 %1335, i8* %14, align 1
  %1336 = and i32 %1330, 255
  %1337 = tail call i32 @llvm.ctpop.i32(i32 %1336)
  %1338 = trunc i32 %1337 to i8
  %1339 = and i8 %1338, 1
  %1340 = xor i8 %1339, 1
  store i8 %1340, i8* %21, align 1
  %1341 = xor i32 %1329, %1330
  %1342 = lshr i32 %1341, 4
  %1343 = trunc i32 %1342 to i8
  %1344 = and i8 %1343, 1
  store i8 %1344, i8* %27, align 1
  %1345 = zext i1 %1333 to i8
  store i8 %1345, i8* %30, align 1
  %1346 = lshr i32 %1330, 31
  %1347 = trunc i32 %1346 to i8
  store i8 %1347, i8* %33, align 1
  %1348 = lshr i32 %1329, 31
  %1349 = xor i32 %1346, %1348
  %1350 = add nuw nsw i32 %1349, %1346
  %1351 = icmp eq i32 %1350, 2
  %1352 = zext i1 %1351 to i8
  store i8 %1352, i8* %39, align 1
  %1353 = sext i32 %1330 to i64
  store i64 %1353, i64* %RDX.i646, align 8
  %1354 = shl nsw i64 %1353, 3
  %1355 = add i64 %1354, %1325
  %1356 = add i64 %1287, 36
  store i64 %1356, i64* %3, align 8
  %1357 = inttoptr i64 %1355 to double*
  %1358 = load double, double* %1357, align 8
  %1359 = fsub double %1323, %1358
  store double %1359, double* %262, align 1
  store i64 0, i64* %263, align 1
  %1360 = load i64, i64* %RBP.i, align 8
  %1361 = add i64 %1360, -64
  %1362 = add i64 %1287, 41
  store i64 %1362, i64* %3, align 8
  %1363 = inttoptr i64 %1361 to double*
  store double %1359, double* %1363, align 8
  %1364 = load i64, i64* %RBP.i, align 8
  %1365 = add i64 %1364, -16
  %1366 = load i64, i64* %3, align 8
  %1367 = add i64 %1366, 4
  store i64 %1367, i64* %3, align 8
  %1368 = inttoptr i64 %1365 to i64*
  %1369 = load i64, i64* %1368, align 8
  store i64 %1369, i64* %RCX.i152, align 8
  %1370 = add i64 %1364, -32
  %1371 = add i64 %1366, 8
  store i64 %1371, i64* %3, align 8
  %1372 = inttoptr i64 %1370 to i32*
  %1373 = load i32, i32* %1372, align 4
  %1374 = sext i32 %1373 to i64
  store i64 %1374, i64* %RDX.i646, align 8
  %1375 = shl nsw i64 %1374, 3
  %1376 = add i64 %1375, %1369
  %1377 = add i64 %1366, 13
  store i64 %1377, i64* %3, align 8
  %1378 = inttoptr i64 %1376 to double*
  %1379 = load double, double* %1378, align 8
  store double %1379, double* %262, align 1
  store double 0.000000e+00, double* %264, align 1
  %1380 = add i64 %1366, 17
  store i64 %1380, i64* %3, align 8
  %1381 = load i64, i64* %1368, align 8
  store i64 %1381, i64* %RCX.i152, align 8
  %1382 = add i64 %1364, -28
  %1383 = add i64 %1366, 21
  store i64 %1383, i64* %3, align 8
  %1384 = inttoptr i64 %1382 to i32*
  %1385 = load i32, i32* %1384, align 4
  %1386 = sext i32 %1385 to i64
  store i64 %1386, i64* %RDX.i646, align 8
  %1387 = shl nsw i64 %1386, 3
  %1388 = add i64 %1387, %1381
  %1389 = add i64 %1366, 26
  store i64 %1389, i64* %3, align 8
  %1390 = inttoptr i64 %1388 to double*
  %1391 = load double, double* %1390, align 8
  %1392 = fadd double %1379, %1391
  store double %1392, double* %262, align 1
  store i64 0, i64* %263, align 1
  %1393 = add i64 %1366, 31
  store i64 %1393, i64* %3, align 8
  store double %1392, double* %1390, align 8
  %1394 = load i64, i64* %RBP.i, align 8
  %1395 = add i64 %1394, -16
  %1396 = load i64, i64* %3, align 8
  %1397 = add i64 %1396, 4
  store i64 %1397, i64* %3, align 8
  %1398 = inttoptr i64 %1395 to i64*
  %1399 = load i64, i64* %1398, align 8
  store i64 %1399, i64* %RCX.i152, align 8
  %1400 = add i64 %1394, -32
  %1401 = add i64 %1396, 7
  store i64 %1401, i64* %3, align 8
  %1402 = inttoptr i64 %1400 to i32*
  %1403 = load i32, i32* %1402, align 4
  %1404 = add i32 %1403, 1
  %1405 = zext i32 %1404 to i64
  store i64 %1405, i64* %RAX.i597.pre-phi, align 8
  %1406 = icmp eq i32 %1403, -1
  %1407 = icmp eq i32 %1404, 0
  %1408 = or i1 %1406, %1407
  %1409 = zext i1 %1408 to i8
  store i8 %1409, i8* %14, align 1
  %1410 = and i32 %1404, 255
  %1411 = tail call i32 @llvm.ctpop.i32(i32 %1410)
  %1412 = trunc i32 %1411 to i8
  %1413 = and i8 %1412, 1
  %1414 = xor i8 %1413, 1
  store i8 %1414, i8* %21, align 1
  %1415 = xor i32 %1403, %1404
  %1416 = lshr i32 %1415, 4
  %1417 = trunc i32 %1416 to i8
  %1418 = and i8 %1417, 1
  store i8 %1418, i8* %27, align 1
  %1419 = zext i1 %1407 to i8
  store i8 %1419, i8* %30, align 1
  %1420 = lshr i32 %1404, 31
  %1421 = trunc i32 %1420 to i8
  store i8 %1421, i8* %33, align 1
  %1422 = lshr i32 %1403, 31
  %1423 = xor i32 %1420, %1422
  %1424 = add nuw nsw i32 %1423, %1420
  %1425 = icmp eq i32 %1424, 2
  %1426 = zext i1 %1425 to i8
  store i8 %1426, i8* %39, align 1
  %1427 = sext i32 %1404 to i64
  store i64 %1427, i64* %RDX.i646, align 8
  %1428 = shl nsw i64 %1427, 3
  %1429 = add i64 %1428, %1399
  %1430 = add i64 %1396, 18
  store i64 %1430, i64* %3, align 8
  %1431 = inttoptr i64 %1429 to double*
  %1432 = load double, double* %1431, align 8
  store double %1432, double* %262, align 1
  store double 0.000000e+00, double* %264, align 1
  %1433 = add i64 %1396, 22
  store i64 %1433, i64* %3, align 8
  %1434 = load i64, i64* %1398, align 8
  store i64 %1434, i64* %RCX.i152, align 8
  %1435 = add i64 %1394, -28
  %1436 = add i64 %1396, 25
  store i64 %1436, i64* %3, align 8
  %1437 = inttoptr i64 %1435 to i32*
  %1438 = load i32, i32* %1437, align 4
  %1439 = add i32 %1438, 1
  %1440 = zext i32 %1439 to i64
  store i64 %1440, i64* %RAX.i597.pre-phi, align 8
  %1441 = icmp eq i32 %1438, -1
  %1442 = icmp eq i32 %1439, 0
  %1443 = or i1 %1441, %1442
  %1444 = zext i1 %1443 to i8
  store i8 %1444, i8* %14, align 1
  %1445 = and i32 %1439, 255
  %1446 = tail call i32 @llvm.ctpop.i32(i32 %1445)
  %1447 = trunc i32 %1446 to i8
  %1448 = and i8 %1447, 1
  %1449 = xor i8 %1448, 1
  store i8 %1449, i8* %21, align 1
  %1450 = xor i32 %1438, %1439
  %1451 = lshr i32 %1450, 4
  %1452 = trunc i32 %1451 to i8
  %1453 = and i8 %1452, 1
  store i8 %1453, i8* %27, align 1
  %1454 = zext i1 %1442 to i8
  store i8 %1454, i8* %30, align 1
  %1455 = lshr i32 %1439, 31
  %1456 = trunc i32 %1455 to i8
  store i8 %1456, i8* %33, align 1
  %1457 = lshr i32 %1438, 31
  %1458 = xor i32 %1455, %1457
  %1459 = add nuw nsw i32 %1458, %1455
  %1460 = icmp eq i32 %1459, 2
  %1461 = zext i1 %1460 to i8
  store i8 %1461, i8* %39, align 1
  %1462 = sext i32 %1439 to i64
  store i64 %1462, i64* %RDX.i646, align 8
  %1463 = shl nsw i64 %1462, 3
  %1464 = add i64 %1463, %1434
  %1465 = add i64 %1396, 36
  store i64 %1465, i64* %3, align 8
  %1466 = inttoptr i64 %1464 to double*
  %1467 = load double, double* %1466, align 8
  %1468 = fadd double %1432, %1467
  store double %1468, double* %262, align 1
  store i64 0, i64* %263, align 1
  %1469 = add i64 %1396, 41
  store i64 %1469, i64* %3, align 8
  store double %1468, double* %1466, align 8
  %1470 = load i64, i64* %RBP.i, align 8
  %1471 = add i64 %1470, -56
  %1472 = load i64, i64* %3, align 8
  %1473 = add i64 %1472, 5
  store i64 %1473, i64* %3, align 8
  %1474 = inttoptr i64 %1471 to i64*
  %1475 = load i64, i64* %1474, align 8
  %1476 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %261, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1475, i64* %1476, align 1
  store double 0.000000e+00, double* %264, align 1
  %1477 = add i64 %1470, -16
  %1478 = add i64 %1472, 9
  store i64 %1478, i64* %3, align 8
  %1479 = inttoptr i64 %1477 to i64*
  %1480 = load i64, i64* %1479, align 8
  store i64 %1480, i64* %RCX.i152, align 8
  %1481 = add i64 %1470, -32
  %1482 = add i64 %1472, 13
  store i64 %1482, i64* %3, align 8
  %1483 = inttoptr i64 %1481 to i32*
  %1484 = load i32, i32* %1483, align 4
  %1485 = sext i32 %1484 to i64
  store i64 %1485, i64* %RDX.i646, align 8
  %1486 = shl nsw i64 %1485, 3
  %1487 = add i64 %1486, %1480
  %1488 = add i64 %1472, 18
  store i64 %1488, i64* %3, align 8
  %1489 = inttoptr i64 %1487 to i64*
  store i64 %1475, i64* %1489, align 8
  %1490 = load i64, i64* %RBP.i, align 8
  %1491 = add i64 %1490, -64
  %1492 = load i64, i64* %3, align 8
  %1493 = add i64 %1492, 5
  store i64 %1493, i64* %3, align 8
  %1494 = inttoptr i64 %1491 to i64*
  %1495 = load i64, i64* %1494, align 8
  store i64 %1495, i64* %1476, align 1
  store double 0.000000e+00, double* %264, align 1
  %1496 = add i64 %1490, -16
  %1497 = add i64 %1492, 9
  store i64 %1497, i64* %3, align 8
  %1498 = inttoptr i64 %1496 to i64*
  %1499 = load i64, i64* %1498, align 8
  store i64 %1499, i64* %RCX.i152, align 8
  %1500 = add i64 %1490, -32
  %1501 = add i64 %1492, 12
  store i64 %1501, i64* %3, align 8
  %1502 = inttoptr i64 %1500 to i32*
  %1503 = load i32, i32* %1502, align 4
  %1504 = add i32 %1503, 1
  %1505 = zext i32 %1504 to i64
  store i64 %1505, i64* %RAX.i597.pre-phi, align 8
  %1506 = icmp eq i32 %1503, -1
  %1507 = icmp eq i32 %1504, 0
  %1508 = or i1 %1506, %1507
  %1509 = zext i1 %1508 to i8
  store i8 %1509, i8* %14, align 1
  %1510 = and i32 %1504, 255
  %1511 = tail call i32 @llvm.ctpop.i32(i32 %1510)
  %1512 = trunc i32 %1511 to i8
  %1513 = and i8 %1512, 1
  %1514 = xor i8 %1513, 1
  store i8 %1514, i8* %21, align 1
  %1515 = xor i32 %1503, %1504
  %1516 = lshr i32 %1515, 4
  %1517 = trunc i32 %1516 to i8
  %1518 = and i8 %1517, 1
  store i8 %1518, i8* %27, align 1
  %1519 = zext i1 %1507 to i8
  store i8 %1519, i8* %30, align 1
  %1520 = lshr i32 %1504, 31
  %1521 = trunc i32 %1520 to i8
  store i8 %1521, i8* %33, align 1
  %1522 = lshr i32 %1503, 31
  %1523 = xor i32 %1520, %1522
  %1524 = add nuw nsw i32 %1523, %1520
  %1525 = icmp eq i32 %1524, 2
  %1526 = zext i1 %1525 to i8
  store i8 %1526, i8* %39, align 1
  %1527 = sext i32 %1504 to i64
  store i64 %1527, i64* %RDX.i646, align 8
  %1528 = shl nsw i64 %1527, 3
  %1529 = add i64 %1528, %1499
  %1530 = add i64 %1492, 23
  store i64 %1530, i64* %3, align 8
  %1531 = inttoptr i64 %1529 to i64*
  store i64 %1495, i64* %1531, align 8
  %1532 = load i64, i64* %RBP.i, align 8
  %1533 = add i64 %1532, -28
  %1534 = load i64, i64* %3, align 8
  %1535 = add i64 %1534, 3
  store i64 %1535, i64* %3, align 8
  %1536 = inttoptr i64 %1533 to i32*
  %1537 = load i32, i32* %1536, align 4
  %1538 = add i32 %1537, 2
  %1539 = zext i32 %1538 to i64
  store i64 %1539, i64* %RAX.i597.pre-phi, align 8
  %1540 = icmp ugt i32 %1537, -3
  %1541 = zext i1 %1540 to i8
  store i8 %1541, i8* %14, align 1
  %1542 = and i32 %1538, 255
  %1543 = tail call i32 @llvm.ctpop.i32(i32 %1542)
  %1544 = trunc i32 %1543 to i8
  %1545 = and i8 %1544, 1
  %1546 = xor i8 %1545, 1
  store i8 %1546, i8* %21, align 1
  %1547 = xor i32 %1537, %1538
  %1548 = lshr i32 %1547, 4
  %1549 = trunc i32 %1548 to i8
  %1550 = and i8 %1549, 1
  store i8 %1550, i8* %27, align 1
  %1551 = icmp eq i32 %1538, 0
  %1552 = zext i1 %1551 to i8
  store i8 %1552, i8* %30, align 1
  %1553 = lshr i32 %1538, 31
  %1554 = trunc i32 %1553 to i8
  store i8 %1554, i8* %33, align 1
  %1555 = lshr i32 %1537, 31
  %1556 = xor i32 %1553, %1555
  %1557 = add nuw nsw i32 %1556, %1553
  %1558 = icmp eq i32 %1557, 2
  %1559 = zext i1 %1558 to i8
  store i8 %1559, i8* %39, align 1
  %1560 = add i64 %1534, 9
  store i64 %1560, i64* %3, align 8
  store i32 %1538, i32* %1536, align 4
  %1561 = load i64, i64* %3, align 8
  %1562 = add i64 %1561, -215
  store i64 %1562, i64* %3, align 8
  br label %block_.L_401af3

block_.L_401bcf:                                  ; preds = %block_.L_401af3
  %1563 = add i64 %1217, 5
  br label %block_.L_401bd4

block_.L_401bd4:                                  ; preds = %block_.L_401bcf, %block_.L_401ae7
  %.sink = phi i64 [ %1563, %block_.L_401bcf ], [ %1179, %block_.L_401ae7 ]
  %1564 = load i64, i64* %6, align 8
  %1565 = add i64 %1564, 112
  store i64 %1565, i64* %6, align 8
  %1566 = icmp ugt i64 %1564, -113
  %1567 = zext i1 %1566 to i8
  store i8 %1567, i8* %14, align 1
  %1568 = trunc i64 %1565 to i32
  %1569 = and i32 %1568, 255
  %1570 = tail call i32 @llvm.ctpop.i32(i32 %1569)
  %1571 = trunc i32 %1570 to i8
  %1572 = and i8 %1571, 1
  %1573 = xor i8 %1572, 1
  store i8 %1573, i8* %21, align 1
  %1574 = xor i64 %1564, 16
  %1575 = xor i64 %1574, %1565
  %1576 = lshr i64 %1575, 4
  %1577 = trunc i64 %1576 to i8
  %1578 = and i8 %1577, 1
  store i8 %1578, i8* %27, align 1
  %1579 = icmp eq i64 %1565, 0
  %1580 = zext i1 %1579 to i8
  store i8 %1580, i8* %30, align 1
  %1581 = lshr i64 %1565, 63
  %1582 = trunc i64 %1581 to i8
  store i8 %1582, i8* %33, align 1
  %1583 = lshr i64 %1564, 63
  %1584 = xor i64 %1581, %1583
  %1585 = add nuw nsw i64 %1584, %1581
  %1586 = icmp eq i64 %1585, 2
  %1587 = zext i1 %1586 to i8
  store i8 %1587, i8* %39, align 1
  %1588 = add i64 %.sink, 5
  store i64 %1588, i64* %3, align 8
  %1589 = add i64 %1564, 120
  %1590 = inttoptr i64 %1565 to i64*
  %1591 = load i64, i64* %1590, align 8
  store i64 %1591, i64* %RBP.i, align 8
  store i64 %1589, i64* %6, align 8
  %1592 = add i64 %.sink, 6
  store i64 %1592, i64* %3, align 8
  %1593 = inttoptr i64 %1589 to i64*
  %1594 = load i64, i64* %1593, align 8
  store i64 %1594, i64* %3, align 8
  %1595 = add i64 %1564, 128
  store i64 %1595, i64* %6, align 8
  ret %struct.Memory* %MEMORY.1
}

define %struct.Memory* @routine_pushq__rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__rsp___rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_subq__0x70___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -112
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 112
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

define %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x2__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 2, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x8__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -8
  %10 = icmp ult i32 %8, 8
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
  %19 = xor i32 %8, %9
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

define %struct.Memory* @routine_jle_.L_4018b0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %16 = add i64 %3, %.v
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_callq_.cft1st(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x8__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 8, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shll__0x2___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %.tr = trunc i64 %3 to i32
  %6 = shl i32 %.tr, 2
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %RAX, align 8
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

define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -4
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

define %struct.Memory* @routine_jge_.L_4018ab(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_callq_.cftmdl(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_shll__0x2___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %.tr = trunc i64 %3 to i32
  %6 = shl i32 %.tr, 2
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl__esi__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_40187b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4018b0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_401aec(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cmpl_MINUS0x2c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -44
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

define %struct.Memory* @routine_jge_.L_401ae7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x2c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
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

define %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %10, i64* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to double*
  store double 0.000000e+00, double* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd___rcx__rdx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 3
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to double*
  %11 = load double, double* %10, align 1
  %12 = inttoptr i64 %7 to double*
  %13 = load double, double* %12, align 8
  %14 = fadd double %11, %13
  store double %14, double* %10, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %20 = xor i32 %6, %7
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

define %struct.Memory* @routine_movslq__eax___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd___rcx__rdx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 3
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to double*
  %11 = load double, double* %10, align 1
  %12 = inttoptr i64 %7 to double*
  %13 = load double, double* %12, align 8
  %14 = fsub double %11, %13
  store double %14, double* %10, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_MINUS0x38__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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

define %struct.Memory* @routine_addsd_MINUS0x58__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
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

define %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %6 to i64*
  store i64 %10, i64* %11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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

define %struct.Memory* @routine_addsd_MINUS0x60__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
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

define %struct.Memory* @routine_subsd_MINUS0x58__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
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

define %struct.Memory* @routine_subsd_MINUS0x60__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
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

define %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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

define %struct.Memory* @routine_subsd_MINUS0x70__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -112
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

define %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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

define %struct.Memory* @routine_addsd_MINUS0x68__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -104
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

define %struct.Memory* @routine_addsd_MINUS0x70__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -112
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

define %struct.Memory* @routine_subsd_MINUS0x68__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -104
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

define %struct.Memory* @routine_addl__0x2___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
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
  %18 = xor i32 %6, %7
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

define %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_4018c6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401bd4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_401bcf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401af3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x70___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 112
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -113
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

define %struct.Memory* @routine_popq__rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_retq(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
