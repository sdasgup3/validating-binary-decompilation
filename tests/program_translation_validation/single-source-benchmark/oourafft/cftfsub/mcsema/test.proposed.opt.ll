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
  %PC.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP.i, align 8
  %5 = add i64 %1, 1
  store i64 %5, i64* %PC.i, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %4, i64* %9, align 8
  %RSP.i656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = load i64, i64* %PC.i, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = add i64 %7, -120
  store i64 %11, i64* %RSP.i656, align 8
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
  store i64 %43, i64* %PC.i, align 8
  %44 = inttoptr i64 %41 to i32*
  store i32 %42, i32* %44, align 4
  %RSI.i649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, -16
  %47 = load i64, i64* %RSI.i649, align 8
  %48 = load i64, i64* %PC.i, align 8
  %49 = add i64 %48, 4
  store i64 %49, i64* %PC.i, align 8
  %50 = inttoptr i64 %46 to i64*
  store i64 %47, i64* %50, align 8
  %RDX.i646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %51 = load i64, i64* %RBP.i, align 8
  %52 = add i64 %51, -24
  %53 = load i64, i64* %RDX.i646, align 8
  %54 = load i64, i64* %PC.i, align 8
  %55 = add i64 %54, 4
  store i64 %55, i64* %PC.i, align 8
  %56 = inttoptr i64 %52 to i64*
  store i64 %53, i64* %56, align 8
  %57 = load i64, i64* %RBP.i, align 8
  %58 = add i64 %57, -44
  %59 = load i64, i64* %PC.i, align 8
  %60 = add i64 %59, 7
  store i64 %60, i64* %PC.i, align 8
  %61 = inttoptr i64 %58 to i32*
  store i32 2, i32* %61, align 4
  %62 = load i64, i64* %RBP.i, align 8
  %63 = add i64 %62, -4
  %64 = load i64, i64* %PC.i, align 8
  %65 = add i64 %64, 4
  store i64 %65, i64* %PC.i, align 8
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
  store i64 %93, i64* %PC.i, align 8
  %94 = load i32, i32* %66, align 4
  %95 = zext i32 %94 to i64
  store i64 %95, i64* %RDI.i638, align 8
  %96 = add i64 %62, -16
  %97 = add i64 %92, 7
  store i64 %97, i64* %PC.i, align 8
  %98 = inttoptr i64 %96 to i64*
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %RSI.i649, align 8
  %100 = add i64 %62, -24
  %101 = add i64 %92, 11
  store i64 %101, i64* %PC.i, align 8
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
  %111 = load i64, i64* %PC.i, align 8
  %112 = add i64 %111, 7
  store i64 %112, i64* %PC.i, align 8
  %113 = inttoptr i64 %110 to i32*
  store i32 8, i32* %113, align 4
  %RAX.i626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX.i609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %.pre = load i64, i64* %PC.i, align 8
  br label %block_.L_40187b

block_.L_40187b:                                  ; preds = %block_40188a, %block_401864
  %114 = phi i64 [ %.pre, %block_401864 ], [ %207, %block_40188a ]
  %MEMORY.0 = phi %struct.Memory* [ %call2_40186f, %block_401864 ], [ %call2_401898, %block_40188a ]
  %115 = load i64, i64* %RBP.i, align 8
  %116 = add i64 %115, -44
  %117 = add i64 %114, 3
  store i64 %117, i64* %PC.i, align 8
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
  store i64 %136, i64* %PC.i, align 8
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
  store i64 %165, i64* %PC.i, align 8
  %166 = load i32, i32* %137, align 4
  %167 = zext i32 %166 to i64
  store i64 %167, i64* %RDI.i638, align 8
  %168 = add i64 %164, 6
  store i64 %168, i64* %PC.i, align 8
  %169 = load i32, i32* %118, align 4
  %170 = zext i32 %169 to i64
  store i64 %170, i64* %RSI.i649, align 8
  %171 = add i64 %115, -16
  %172 = add i64 %164, 10
  store i64 %172, i64* %PC.i, align 8
  %173 = inttoptr i64 %171 to i64*
  %174 = load i64, i64* %173, align 8
  store i64 %174, i64* %RDX.i646, align 8
  %175 = add i64 %115, -24
  %176 = add i64 %164, 14
  store i64 %176, i64* %PC.i, align 8
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
  %186 = load i64, i64* %PC.i, align 8
  %187 = add i64 %186, 3
  store i64 %187, i64* %PC.i, align 8
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
  store i64 %205, i64* %PC.i, align 8
  store i32 %190, i32* %188, align 4
  %206 = load i64, i64* %PC.i, align 8
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
  store i64 %212, i64* %PC.i, align 8
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
  store i64 %231, i64* %PC.i, align 8
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
  store i64 %259, i64* %PC.i, align 8
  %260 = inttoptr i64 %258 to i32*
  store i32 0, i32* %260, align 4
  %RCX.i152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %262 = bitcast %union.VectorReg* %261 to double*
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %264 = bitcast i64* %263 to double*
  %.pre2 = load i64, i64* %PC.i, align 8
  br i1 %247, label %block_.L_4018c6, label %block_.L_401af3

block_.L_4018c6:                                  ; preds = %block_.L_4018b0, %block_4018d2
  %265 = phi i64 [ %1190, %block_4018d2 ], [ %.pre2, %block_.L_4018b0 ]
  %266 = load i64, i64* %RBP.i, align 8
  %267 = add i64 %266, -28
  %268 = add i64 %265, 3
  store i64 %268, i64* %PC.i, align 8
  %269 = inttoptr i64 %267 to i32*
  %270 = load i32, i32* %269, align 4
  %271 = zext i32 %270 to i64
  store i64 %271, i64* %RAX.i597.pre-phi, align 8
  %272 = add i64 %266, -44
  %273 = add i64 %265, 6
  store i64 %273, i64* %PC.i, align 8
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
  store i64 %303, i64* %PC.i, align 8
  %304 = load i32, i32* %269, align 4
  %305 = zext i32 %304 to i64
  store i64 %305, i64* %RAX.i597.pre-phi, align 8
  %306 = add i64 %302, 6
  store i64 %306, i64* %PC.i, align 8
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
  store i64 %336, i64* %PC.i, align 8
  %337 = inttoptr i64 %335 to i32*
  store i32 %308, i32* %337, align 4
  %338 = load i64, i64* %RBP.i, align 8
  %339 = add i64 %338, -32
  %340 = load i64, i64* %PC.i, align 8
  %341 = add i64 %340, 3
  store i64 %341, i64* %PC.i, align 8
  %342 = inttoptr i64 %339 to i32*
  %343 = load i32, i32* %342, align 4
  %344 = zext i32 %343 to i64
  store i64 %344, i64* %RAX.i597.pre-phi, align 8
  %345 = add i64 %338, -44
  %346 = add i64 %340, 6
  store i64 %346, i64* %PC.i, align 8
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
  store i64 %377, i64* %PC.i, align 8
  %378 = inttoptr i64 %376 to i32*
  store i32 %349, i32* %378, align 4
  %379 = load i64, i64* %RBP.i, align 8
  %380 = add i64 %379, -36
  %381 = load i64, i64* %PC.i, align 8
  %382 = add i64 %381, 3
  store i64 %382, i64* %PC.i, align 8
  %383 = inttoptr i64 %380 to i32*
  %384 = load i32, i32* %383, align 4
  %385 = zext i32 %384 to i64
  store i64 %385, i64* %RAX.i597.pre-phi, align 8
  %386 = add i64 %379, -44
  %387 = add i64 %381, 6
  store i64 %387, i64* %PC.i, align 8
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
  store i64 %418, i64* %PC.i, align 8
  %419 = inttoptr i64 %417 to i32*
  store i32 %390, i32* %419, align 4
  %420 = load i64, i64* %RBP.i, align 8
  %421 = add i64 %420, -16
  %422 = load i64, i64* %PC.i, align 8
  %423 = add i64 %422, 4
  store i64 %423, i64* %PC.i, align 8
  %424 = inttoptr i64 %421 to i64*
  %425 = load i64, i64* %424, align 8
  store i64 %425, i64* %RCX.i152, align 8
  %426 = add i64 %420, -28
  %427 = add i64 %422, 8
  store i64 %427, i64* %PC.i, align 8
  %428 = inttoptr i64 %426 to i32*
  %429 = load i32, i32* %428, align 4
  %430 = sext i32 %429 to i64
  store i64 %430, i64* %RDX.i646, align 8
  %431 = shl nsw i64 %430, 3
  %432 = add i64 %431, %425
  %433 = add i64 %422, 13
  store i64 %433, i64* %PC.i, align 8
  %434 = inttoptr i64 %432 to double*
  %435 = load double, double* %434, align 8
  store double %435, double* %262, align 1
  store double 0.000000e+00, double* %264, align 1
  %436 = add i64 %422, 17
  store i64 %436, i64* %PC.i, align 8
  %437 = load i64, i64* %424, align 8
  store i64 %437, i64* %RCX.i152, align 8
  %438 = add i64 %420, -32
  %439 = add i64 %422, 21
  store i64 %439, i64* %PC.i, align 8
  %440 = inttoptr i64 %438 to i32*
  %441 = load i32, i32* %440, align 4
  %442 = sext i32 %441 to i64
  store i64 %442, i64* %RDX.i646, align 8
  %443 = shl nsw i64 %442, 3
  %444 = add i64 %443, %437
  %445 = add i64 %422, 26
  store i64 %445, i64* %PC.i, align 8
  %446 = inttoptr i64 %444 to double*
  %447 = load double, double* %446, align 8
  %448 = fadd double %435, %447
  store double %448, double* %262, align 1
  store i64 0, i64* %263, align 1
  %449 = add i64 %420, -56
  %450 = add i64 %422, 31
  store i64 %450, i64* %PC.i, align 8
  %451 = inttoptr i64 %449 to double*
  store double %448, double* %451, align 8
  %452 = load i64, i64* %RBP.i, align 8
  %453 = add i64 %452, -16
  %454 = load i64, i64* %PC.i, align 8
  %455 = add i64 %454, 4
  store i64 %455, i64* %PC.i, align 8
  %456 = inttoptr i64 %453 to i64*
  %457 = load i64, i64* %456, align 8
  store i64 %457, i64* %RCX.i152, align 8
  %458 = add i64 %452, -28
  %459 = add i64 %454, 7
  store i64 %459, i64* %PC.i, align 8
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
  %477 = icmp eq i32 %462, 0
  %478 = zext i1 %477 to i8
  store i8 %478, i8* %30, align 1
  %479 = lshr i32 %462, 31
  %480 = trunc i32 %479 to i8
  store i8 %480, i8* %33, align 1
  %481 = lshr i32 %461, 31
  %482 = xor i32 %479, %481
  %483 = add nuw nsw i32 %482, %479
  %484 = icmp eq i32 %483, 2
  %485 = zext i1 %484 to i8
  store i8 %485, i8* %39, align 1
  %486 = sext i32 %462 to i64
  store i64 %486, i64* %RDX.i646, align 8
  %487 = shl nsw i64 %486, 3
  %488 = add i64 %487, %457
  %489 = add i64 %454, 18
  store i64 %489, i64* %PC.i, align 8
  %490 = inttoptr i64 %488 to double*
  %491 = load double, double* %490, align 8
  store double %491, double* %262, align 1
  store double 0.000000e+00, double* %264, align 1
  %492 = add i64 %454, 22
  store i64 %492, i64* %PC.i, align 8
  %493 = load i64, i64* %456, align 8
  store i64 %493, i64* %RCX.i152, align 8
  %494 = add i64 %452, -32
  %495 = add i64 %454, 25
  store i64 %495, i64* %PC.i, align 8
  %496 = inttoptr i64 %494 to i32*
  %497 = load i32, i32* %496, align 4
  %498 = add i32 %497, 1
  %499 = zext i32 %498 to i64
  store i64 %499, i64* %RAX.i597.pre-phi, align 8
  %500 = icmp eq i32 %497, -1
  %501 = icmp eq i32 %498, 0
  %502 = or i1 %500, %501
  %503 = zext i1 %502 to i8
  store i8 %503, i8* %14, align 1
  %504 = and i32 %498, 255
  %505 = tail call i32 @llvm.ctpop.i32(i32 %504)
  %506 = trunc i32 %505 to i8
  %507 = and i8 %506, 1
  %508 = xor i8 %507, 1
  store i8 %508, i8* %21, align 1
  %509 = xor i32 %497, %498
  %510 = lshr i32 %509, 4
  %511 = trunc i32 %510 to i8
  %512 = and i8 %511, 1
  store i8 %512, i8* %27, align 1
  %513 = icmp eq i32 %498, 0
  %514 = zext i1 %513 to i8
  store i8 %514, i8* %30, align 1
  %515 = lshr i32 %498, 31
  %516 = trunc i32 %515 to i8
  store i8 %516, i8* %33, align 1
  %517 = lshr i32 %497, 31
  %518 = xor i32 %515, %517
  %519 = add nuw nsw i32 %518, %515
  %520 = icmp eq i32 %519, 2
  %521 = zext i1 %520 to i8
  store i8 %521, i8* %39, align 1
  %522 = sext i32 %498 to i64
  store i64 %522, i64* %RDX.i646, align 8
  %523 = shl nsw i64 %522, 3
  %524 = add i64 %523, %493
  %525 = add i64 %454, 36
  store i64 %525, i64* %PC.i, align 8
  %526 = inttoptr i64 %524 to double*
  %527 = load double, double* %526, align 8
  %528 = fadd double %491, %527
  store double %528, double* %262, align 1
  store i64 0, i64* %263, align 1
  %529 = load i64, i64* %RBP.i, align 8
  %530 = add i64 %529, -64
  %531 = add i64 %454, 41
  store i64 %531, i64* %PC.i, align 8
  %532 = inttoptr i64 %530 to double*
  store double %528, double* %532, align 8
  %533 = load i64, i64* %RBP.i, align 8
  %534 = add i64 %533, -16
  %535 = load i64, i64* %PC.i, align 8
  %536 = add i64 %535, 4
  store i64 %536, i64* %PC.i, align 8
  %537 = inttoptr i64 %534 to i64*
  %538 = load i64, i64* %537, align 8
  store i64 %538, i64* %RCX.i152, align 8
  %539 = add i64 %533, -28
  %540 = add i64 %535, 8
  store i64 %540, i64* %PC.i, align 8
  %541 = inttoptr i64 %539 to i32*
  %542 = load i32, i32* %541, align 4
  %543 = sext i32 %542 to i64
  store i64 %543, i64* %RDX.i646, align 8
  %544 = shl nsw i64 %543, 3
  %545 = add i64 %544, %538
  %546 = add i64 %535, 13
  store i64 %546, i64* %PC.i, align 8
  %547 = inttoptr i64 %545 to double*
  %548 = load double, double* %547, align 8
  store double %548, double* %262, align 1
  store double 0.000000e+00, double* %264, align 1
  %549 = add i64 %535, 17
  store i64 %549, i64* %PC.i, align 8
  %550 = load i64, i64* %537, align 8
  store i64 %550, i64* %RCX.i152, align 8
  %551 = add i64 %533, -32
  %552 = add i64 %535, 21
  store i64 %552, i64* %PC.i, align 8
  %553 = inttoptr i64 %551 to i32*
  %554 = load i32, i32* %553, align 4
  %555 = sext i32 %554 to i64
  store i64 %555, i64* %RDX.i646, align 8
  %556 = shl nsw i64 %555, 3
  %557 = add i64 %556, %550
  %558 = add i64 %535, 26
  store i64 %558, i64* %PC.i, align 8
  %559 = inttoptr i64 %557 to double*
  %560 = load double, double* %559, align 8
  %561 = fsub double %548, %560
  store double %561, double* %262, align 1
  store i64 0, i64* %263, align 1
  %562 = add i64 %533, -72
  %563 = add i64 %535, 31
  store i64 %563, i64* %PC.i, align 8
  %564 = inttoptr i64 %562 to double*
  store double %561, double* %564, align 8
  %565 = load i64, i64* %RBP.i, align 8
  %566 = add i64 %565, -16
  %567 = load i64, i64* %PC.i, align 8
  %568 = add i64 %567, 4
  store i64 %568, i64* %PC.i, align 8
  %569 = inttoptr i64 %566 to i64*
  %570 = load i64, i64* %569, align 8
  store i64 %570, i64* %RCX.i152, align 8
  %571 = add i64 %565, -28
  %572 = add i64 %567, 7
  store i64 %572, i64* %PC.i, align 8
  %573 = inttoptr i64 %571 to i32*
  %574 = load i32, i32* %573, align 4
  %575 = add i32 %574, 1
  %576 = zext i32 %575 to i64
  store i64 %576, i64* %RAX.i597.pre-phi, align 8
  %577 = icmp eq i32 %574, -1
  %578 = icmp eq i32 %575, 0
  %579 = or i1 %577, %578
  %580 = zext i1 %579 to i8
  store i8 %580, i8* %14, align 1
  %581 = and i32 %575, 255
  %582 = tail call i32 @llvm.ctpop.i32(i32 %581)
  %583 = trunc i32 %582 to i8
  %584 = and i8 %583, 1
  %585 = xor i8 %584, 1
  store i8 %585, i8* %21, align 1
  %586 = xor i32 %574, %575
  %587 = lshr i32 %586, 4
  %588 = trunc i32 %587 to i8
  %589 = and i8 %588, 1
  store i8 %589, i8* %27, align 1
  %590 = icmp eq i32 %575, 0
  %591 = zext i1 %590 to i8
  store i8 %591, i8* %30, align 1
  %592 = lshr i32 %575, 31
  %593 = trunc i32 %592 to i8
  store i8 %593, i8* %33, align 1
  %594 = lshr i32 %574, 31
  %595 = xor i32 %592, %594
  %596 = add nuw nsw i32 %595, %592
  %597 = icmp eq i32 %596, 2
  %598 = zext i1 %597 to i8
  store i8 %598, i8* %39, align 1
  %599 = sext i32 %575 to i64
  store i64 %599, i64* %RDX.i646, align 8
  %600 = shl nsw i64 %599, 3
  %601 = add i64 %600, %570
  %602 = add i64 %567, 18
  store i64 %602, i64* %PC.i, align 8
  %603 = inttoptr i64 %601 to double*
  %604 = load double, double* %603, align 8
  store double %604, double* %262, align 1
  store double 0.000000e+00, double* %264, align 1
  %605 = add i64 %567, 22
  store i64 %605, i64* %PC.i, align 8
  %606 = load i64, i64* %569, align 8
  store i64 %606, i64* %RCX.i152, align 8
  %607 = add i64 %565, -32
  %608 = add i64 %567, 25
  store i64 %608, i64* %PC.i, align 8
  %609 = inttoptr i64 %607 to i32*
  %610 = load i32, i32* %609, align 4
  %611 = add i32 %610, 1
  %612 = zext i32 %611 to i64
  store i64 %612, i64* %RAX.i597.pre-phi, align 8
  %613 = icmp eq i32 %610, -1
  %614 = icmp eq i32 %611, 0
  %615 = or i1 %613, %614
  %616 = zext i1 %615 to i8
  store i8 %616, i8* %14, align 1
  %617 = and i32 %611, 255
  %618 = tail call i32 @llvm.ctpop.i32(i32 %617)
  %619 = trunc i32 %618 to i8
  %620 = and i8 %619, 1
  %621 = xor i8 %620, 1
  store i8 %621, i8* %21, align 1
  %622 = xor i32 %610, %611
  %623 = lshr i32 %622, 4
  %624 = trunc i32 %623 to i8
  %625 = and i8 %624, 1
  store i8 %625, i8* %27, align 1
  %626 = icmp eq i32 %611, 0
  %627 = zext i1 %626 to i8
  store i8 %627, i8* %30, align 1
  %628 = lshr i32 %611, 31
  %629 = trunc i32 %628 to i8
  store i8 %629, i8* %33, align 1
  %630 = lshr i32 %610, 31
  %631 = xor i32 %628, %630
  %632 = add nuw nsw i32 %631, %628
  %633 = icmp eq i32 %632, 2
  %634 = zext i1 %633 to i8
  store i8 %634, i8* %39, align 1
  %635 = sext i32 %611 to i64
  store i64 %635, i64* %RDX.i646, align 8
  %636 = shl nsw i64 %635, 3
  %637 = add i64 %636, %606
  %638 = add i64 %567, 36
  store i64 %638, i64* %PC.i, align 8
  %639 = inttoptr i64 %637 to double*
  %640 = load double, double* %639, align 8
  %641 = fsub double %604, %640
  store double %641, double* %262, align 1
  store i64 0, i64* %263, align 1
  %642 = load i64, i64* %RBP.i, align 8
  %643 = add i64 %642, -80
  %644 = add i64 %567, 41
  store i64 %644, i64* %PC.i, align 8
  %645 = inttoptr i64 %643 to double*
  store double %641, double* %645, align 8
  %646 = load i64, i64* %RBP.i, align 8
  %647 = add i64 %646, -16
  %648 = load i64, i64* %PC.i, align 8
  %649 = add i64 %648, 4
  store i64 %649, i64* %PC.i, align 8
  %650 = inttoptr i64 %647 to i64*
  %651 = load i64, i64* %650, align 8
  store i64 %651, i64* %RCX.i152, align 8
  %652 = add i64 %646, -36
  %653 = add i64 %648, 8
  store i64 %653, i64* %PC.i, align 8
  %654 = inttoptr i64 %652 to i32*
  %655 = load i32, i32* %654, align 4
  %656 = sext i32 %655 to i64
  store i64 %656, i64* %RDX.i646, align 8
  %657 = shl nsw i64 %656, 3
  %658 = add i64 %657, %651
  %659 = add i64 %648, 13
  store i64 %659, i64* %PC.i, align 8
  %660 = inttoptr i64 %658 to double*
  %661 = load double, double* %660, align 8
  store double %661, double* %262, align 1
  store double 0.000000e+00, double* %264, align 1
  %662 = add i64 %648, 17
  store i64 %662, i64* %PC.i, align 8
  %663 = load i64, i64* %650, align 8
  store i64 %663, i64* %RCX.i152, align 8
  %664 = add i64 %646, -40
  %665 = add i64 %648, 21
  store i64 %665, i64* %PC.i, align 8
  %666 = inttoptr i64 %664 to i32*
  %667 = load i32, i32* %666, align 4
  %668 = sext i32 %667 to i64
  store i64 %668, i64* %RDX.i646, align 8
  %669 = shl nsw i64 %668, 3
  %670 = add i64 %669, %663
  %671 = add i64 %648, 26
  store i64 %671, i64* %PC.i, align 8
  %672 = inttoptr i64 %670 to double*
  %673 = load double, double* %672, align 8
  %674 = fadd double %661, %673
  store double %674, double* %262, align 1
  store i64 0, i64* %263, align 1
  %675 = add i64 %646, -88
  %676 = add i64 %648, 31
  store i64 %676, i64* %PC.i, align 8
  %677 = inttoptr i64 %675 to double*
  store double %674, double* %677, align 8
  %678 = load i64, i64* %RBP.i, align 8
  %679 = add i64 %678, -16
  %680 = load i64, i64* %PC.i, align 8
  %681 = add i64 %680, 4
  store i64 %681, i64* %PC.i, align 8
  %682 = inttoptr i64 %679 to i64*
  %683 = load i64, i64* %682, align 8
  store i64 %683, i64* %RCX.i152, align 8
  %684 = add i64 %678, -36
  %685 = add i64 %680, 7
  store i64 %685, i64* %PC.i, align 8
  %686 = inttoptr i64 %684 to i32*
  %687 = load i32, i32* %686, align 4
  %688 = add i32 %687, 1
  %689 = zext i32 %688 to i64
  store i64 %689, i64* %RAX.i597.pre-phi, align 8
  %690 = icmp eq i32 %687, -1
  %691 = icmp eq i32 %688, 0
  %692 = or i1 %690, %691
  %693 = zext i1 %692 to i8
  store i8 %693, i8* %14, align 1
  %694 = and i32 %688, 255
  %695 = tail call i32 @llvm.ctpop.i32(i32 %694)
  %696 = trunc i32 %695 to i8
  %697 = and i8 %696, 1
  %698 = xor i8 %697, 1
  store i8 %698, i8* %21, align 1
  %699 = xor i32 %687, %688
  %700 = lshr i32 %699, 4
  %701 = trunc i32 %700 to i8
  %702 = and i8 %701, 1
  store i8 %702, i8* %27, align 1
  %703 = icmp eq i32 %688, 0
  %704 = zext i1 %703 to i8
  store i8 %704, i8* %30, align 1
  %705 = lshr i32 %688, 31
  %706 = trunc i32 %705 to i8
  store i8 %706, i8* %33, align 1
  %707 = lshr i32 %687, 31
  %708 = xor i32 %705, %707
  %709 = add nuw nsw i32 %708, %705
  %710 = icmp eq i32 %709, 2
  %711 = zext i1 %710 to i8
  store i8 %711, i8* %39, align 1
  %712 = sext i32 %688 to i64
  store i64 %712, i64* %RDX.i646, align 8
  %713 = shl nsw i64 %712, 3
  %714 = add i64 %713, %683
  %715 = add i64 %680, 18
  store i64 %715, i64* %PC.i, align 8
  %716 = inttoptr i64 %714 to double*
  %717 = load double, double* %716, align 8
  store double %717, double* %262, align 1
  store double 0.000000e+00, double* %264, align 1
  %718 = add i64 %680, 22
  store i64 %718, i64* %PC.i, align 8
  %719 = load i64, i64* %682, align 8
  store i64 %719, i64* %RCX.i152, align 8
  %720 = add i64 %678, -40
  %721 = add i64 %680, 25
  store i64 %721, i64* %PC.i, align 8
  %722 = inttoptr i64 %720 to i32*
  %723 = load i32, i32* %722, align 4
  %724 = add i32 %723, 1
  %725 = zext i32 %724 to i64
  store i64 %725, i64* %RAX.i597.pre-phi, align 8
  %726 = icmp eq i32 %723, -1
  %727 = icmp eq i32 %724, 0
  %728 = or i1 %726, %727
  %729 = zext i1 %728 to i8
  store i8 %729, i8* %14, align 1
  %730 = and i32 %724, 255
  %731 = tail call i32 @llvm.ctpop.i32(i32 %730)
  %732 = trunc i32 %731 to i8
  %733 = and i8 %732, 1
  %734 = xor i8 %733, 1
  store i8 %734, i8* %21, align 1
  %735 = xor i32 %723, %724
  %736 = lshr i32 %735, 4
  %737 = trunc i32 %736 to i8
  %738 = and i8 %737, 1
  store i8 %738, i8* %27, align 1
  %739 = icmp eq i32 %724, 0
  %740 = zext i1 %739 to i8
  store i8 %740, i8* %30, align 1
  %741 = lshr i32 %724, 31
  %742 = trunc i32 %741 to i8
  store i8 %742, i8* %33, align 1
  %743 = lshr i32 %723, 31
  %744 = xor i32 %741, %743
  %745 = add nuw nsw i32 %744, %741
  %746 = icmp eq i32 %745, 2
  %747 = zext i1 %746 to i8
  store i8 %747, i8* %39, align 1
  %748 = sext i32 %724 to i64
  store i64 %748, i64* %RDX.i646, align 8
  %749 = shl nsw i64 %748, 3
  %750 = add i64 %749, %719
  %751 = add i64 %680, 36
  store i64 %751, i64* %PC.i, align 8
  %752 = inttoptr i64 %750 to double*
  %753 = load double, double* %752, align 8
  %754 = fadd double %717, %753
  store double %754, double* %262, align 1
  store i64 0, i64* %263, align 1
  %755 = load i64, i64* %RBP.i, align 8
  %756 = add i64 %755, -96
  %757 = add i64 %680, 41
  store i64 %757, i64* %PC.i, align 8
  %758 = inttoptr i64 %756 to double*
  store double %754, double* %758, align 8
  %759 = load i64, i64* %RBP.i, align 8
  %760 = add i64 %759, -16
  %761 = load i64, i64* %PC.i, align 8
  %762 = add i64 %761, 4
  store i64 %762, i64* %PC.i, align 8
  %763 = inttoptr i64 %760 to i64*
  %764 = load i64, i64* %763, align 8
  store i64 %764, i64* %RCX.i152, align 8
  %765 = add i64 %759, -36
  %766 = add i64 %761, 8
  store i64 %766, i64* %PC.i, align 8
  %767 = inttoptr i64 %765 to i32*
  %768 = load i32, i32* %767, align 4
  %769 = sext i32 %768 to i64
  store i64 %769, i64* %RDX.i646, align 8
  %770 = shl nsw i64 %769, 3
  %771 = add i64 %770, %764
  %772 = add i64 %761, 13
  store i64 %772, i64* %PC.i, align 8
  %773 = inttoptr i64 %771 to double*
  %774 = load double, double* %773, align 8
  store double %774, double* %262, align 1
  store double 0.000000e+00, double* %264, align 1
  %775 = add i64 %761, 17
  store i64 %775, i64* %PC.i, align 8
  %776 = load i64, i64* %763, align 8
  store i64 %776, i64* %RCX.i152, align 8
  %777 = add i64 %759, -40
  %778 = add i64 %761, 21
  store i64 %778, i64* %PC.i, align 8
  %779 = inttoptr i64 %777 to i32*
  %780 = load i32, i32* %779, align 4
  %781 = sext i32 %780 to i64
  store i64 %781, i64* %RDX.i646, align 8
  %782 = shl nsw i64 %781, 3
  %783 = add i64 %782, %776
  %784 = add i64 %761, 26
  store i64 %784, i64* %PC.i, align 8
  %785 = inttoptr i64 %783 to double*
  %786 = load double, double* %785, align 8
  %787 = fsub double %774, %786
  store double %787, double* %262, align 1
  store i64 0, i64* %263, align 1
  %788 = add i64 %759, -104
  %789 = add i64 %761, 31
  store i64 %789, i64* %PC.i, align 8
  %790 = inttoptr i64 %788 to double*
  store double %787, double* %790, align 8
  %791 = load i64, i64* %RBP.i, align 8
  %792 = add i64 %791, -16
  %793 = load i64, i64* %PC.i, align 8
  %794 = add i64 %793, 4
  store i64 %794, i64* %PC.i, align 8
  %795 = inttoptr i64 %792 to i64*
  %796 = load i64, i64* %795, align 8
  store i64 %796, i64* %RCX.i152, align 8
  %797 = add i64 %791, -36
  %798 = add i64 %793, 7
  store i64 %798, i64* %PC.i, align 8
  %799 = inttoptr i64 %797 to i32*
  %800 = load i32, i32* %799, align 4
  %801 = add i32 %800, 1
  %802 = zext i32 %801 to i64
  store i64 %802, i64* %RAX.i597.pre-phi, align 8
  %803 = icmp eq i32 %800, -1
  %804 = icmp eq i32 %801, 0
  %805 = or i1 %803, %804
  %806 = zext i1 %805 to i8
  store i8 %806, i8* %14, align 1
  %807 = and i32 %801, 255
  %808 = tail call i32 @llvm.ctpop.i32(i32 %807)
  %809 = trunc i32 %808 to i8
  %810 = and i8 %809, 1
  %811 = xor i8 %810, 1
  store i8 %811, i8* %21, align 1
  %812 = xor i32 %800, %801
  %813 = lshr i32 %812, 4
  %814 = trunc i32 %813 to i8
  %815 = and i8 %814, 1
  store i8 %815, i8* %27, align 1
  %816 = icmp eq i32 %801, 0
  %817 = zext i1 %816 to i8
  store i8 %817, i8* %30, align 1
  %818 = lshr i32 %801, 31
  %819 = trunc i32 %818 to i8
  store i8 %819, i8* %33, align 1
  %820 = lshr i32 %800, 31
  %821 = xor i32 %818, %820
  %822 = add nuw nsw i32 %821, %818
  %823 = icmp eq i32 %822, 2
  %824 = zext i1 %823 to i8
  store i8 %824, i8* %39, align 1
  %825 = sext i32 %801 to i64
  store i64 %825, i64* %RDX.i646, align 8
  %826 = shl nsw i64 %825, 3
  %827 = add i64 %826, %796
  %828 = add i64 %793, 18
  store i64 %828, i64* %PC.i, align 8
  %829 = inttoptr i64 %827 to double*
  %830 = load double, double* %829, align 8
  store double %830, double* %262, align 1
  store double 0.000000e+00, double* %264, align 1
  %831 = add i64 %793, 22
  store i64 %831, i64* %PC.i, align 8
  %832 = load i64, i64* %795, align 8
  store i64 %832, i64* %RCX.i152, align 8
  %833 = add i64 %791, -40
  %834 = add i64 %793, 25
  store i64 %834, i64* %PC.i, align 8
  %835 = inttoptr i64 %833 to i32*
  %836 = load i32, i32* %835, align 4
  %837 = add i32 %836, 1
  %838 = zext i32 %837 to i64
  store i64 %838, i64* %RAX.i597.pre-phi, align 8
  %839 = icmp eq i32 %836, -1
  %840 = icmp eq i32 %837, 0
  %841 = or i1 %839, %840
  %842 = zext i1 %841 to i8
  store i8 %842, i8* %14, align 1
  %843 = and i32 %837, 255
  %844 = tail call i32 @llvm.ctpop.i32(i32 %843)
  %845 = trunc i32 %844 to i8
  %846 = and i8 %845, 1
  %847 = xor i8 %846, 1
  store i8 %847, i8* %21, align 1
  %848 = xor i32 %836, %837
  %849 = lshr i32 %848, 4
  %850 = trunc i32 %849 to i8
  %851 = and i8 %850, 1
  store i8 %851, i8* %27, align 1
  %852 = icmp eq i32 %837, 0
  %853 = zext i1 %852 to i8
  store i8 %853, i8* %30, align 1
  %854 = lshr i32 %837, 31
  %855 = trunc i32 %854 to i8
  store i8 %855, i8* %33, align 1
  %856 = lshr i32 %836, 31
  %857 = xor i32 %854, %856
  %858 = add nuw nsw i32 %857, %854
  %859 = icmp eq i32 %858, 2
  %860 = zext i1 %859 to i8
  store i8 %860, i8* %39, align 1
  %861 = sext i32 %837 to i64
  store i64 %861, i64* %RDX.i646, align 8
  %862 = shl nsw i64 %861, 3
  %863 = add i64 %862, %832
  %864 = add i64 %793, 36
  store i64 %864, i64* %PC.i, align 8
  %865 = inttoptr i64 %863 to double*
  %866 = load double, double* %865, align 8
  %867 = fsub double %830, %866
  store double %867, double* %262, align 1
  store i64 0, i64* %263, align 1
  %868 = load i64, i64* %RBP.i, align 8
  %869 = add i64 %868, -112
  %870 = add i64 %793, 41
  store i64 %870, i64* %PC.i, align 8
  %871 = inttoptr i64 %869 to double*
  store double %867, double* %871, align 8
  %872 = load i64, i64* %RBP.i, align 8
  %873 = add i64 %872, -56
  %874 = load i64, i64* %PC.i, align 8
  %875 = add i64 %874, 5
  store i64 %875, i64* %PC.i, align 8
  %876 = inttoptr i64 %873 to double*
  %877 = load double, double* %876, align 8
  store double %877, double* %262, align 1
  store double 0.000000e+00, double* %264, align 1
  %878 = add i64 %872, -88
  %879 = add i64 %874, 10
  store i64 %879, i64* %PC.i, align 8
  %880 = inttoptr i64 %878 to double*
  %881 = load double, double* %880, align 8
  %882 = fadd double %877, %881
  store double %882, double* %262, align 1
  store i64 0, i64* %263, align 1
  %883 = add i64 %872, -16
  %884 = add i64 %874, 14
  store i64 %884, i64* %PC.i, align 8
  %885 = inttoptr i64 %883 to i64*
  %886 = load i64, i64* %885, align 8
  store i64 %886, i64* %RCX.i152, align 8
  %887 = add i64 %872, -28
  %888 = add i64 %874, 18
  store i64 %888, i64* %PC.i, align 8
  %889 = inttoptr i64 %887 to i32*
  %890 = load i32, i32* %889, align 4
  %891 = sext i32 %890 to i64
  store i64 %891, i64* %RDX.i646, align 8
  %892 = shl nsw i64 %891, 3
  %893 = add i64 %892, %886
  %894 = add i64 %874, 23
  store i64 %894, i64* %PC.i, align 8
  %895 = inttoptr i64 %893 to double*
  store double %882, double* %895, align 8
  %896 = load i64, i64* %RBP.i, align 8
  %897 = add i64 %896, -64
  %898 = load i64, i64* %PC.i, align 8
  %899 = add i64 %898, 5
  store i64 %899, i64* %PC.i, align 8
  %900 = inttoptr i64 %897 to double*
  %901 = load double, double* %900, align 8
  store double %901, double* %262, align 1
  store double 0.000000e+00, double* %264, align 1
  %902 = add i64 %896, -96
  %903 = add i64 %898, 10
  store i64 %903, i64* %PC.i, align 8
  %904 = inttoptr i64 %902 to double*
  %905 = load double, double* %904, align 8
  %906 = fadd double %901, %905
  store double %906, double* %262, align 1
  store i64 0, i64* %263, align 1
  %907 = add i64 %896, -16
  %908 = add i64 %898, 14
  store i64 %908, i64* %PC.i, align 8
  %909 = inttoptr i64 %907 to i64*
  %910 = load i64, i64* %909, align 8
  store i64 %910, i64* %RCX.i152, align 8
  %911 = add i64 %896, -28
  %912 = add i64 %898, 17
  store i64 %912, i64* %PC.i, align 8
  %913 = inttoptr i64 %911 to i32*
  %914 = load i32, i32* %913, align 4
  %915 = add i32 %914, 1
  %916 = zext i32 %915 to i64
  store i64 %916, i64* %RAX.i597.pre-phi, align 8
  %917 = icmp eq i32 %914, -1
  %918 = icmp eq i32 %915, 0
  %919 = or i1 %917, %918
  %920 = zext i1 %919 to i8
  store i8 %920, i8* %14, align 1
  %921 = and i32 %915, 255
  %922 = tail call i32 @llvm.ctpop.i32(i32 %921)
  %923 = trunc i32 %922 to i8
  %924 = and i8 %923, 1
  %925 = xor i8 %924, 1
  store i8 %925, i8* %21, align 1
  %926 = xor i32 %914, %915
  %927 = lshr i32 %926, 4
  %928 = trunc i32 %927 to i8
  %929 = and i8 %928, 1
  store i8 %929, i8* %27, align 1
  %930 = icmp eq i32 %915, 0
  %931 = zext i1 %930 to i8
  store i8 %931, i8* %30, align 1
  %932 = lshr i32 %915, 31
  %933 = trunc i32 %932 to i8
  store i8 %933, i8* %33, align 1
  %934 = lshr i32 %914, 31
  %935 = xor i32 %932, %934
  %936 = add nuw nsw i32 %935, %932
  %937 = icmp eq i32 %936, 2
  %938 = zext i1 %937 to i8
  store i8 %938, i8* %39, align 1
  %939 = sext i32 %915 to i64
  store i64 %939, i64* %RDX.i646, align 8
  %940 = shl nsw i64 %939, 3
  %941 = add i64 %940, %910
  %942 = add i64 %898, 28
  store i64 %942, i64* %PC.i, align 8
  %943 = inttoptr i64 %941 to double*
  store double %906, double* %943, align 8
  %944 = load i64, i64* %RBP.i, align 8
  %945 = add i64 %944, -56
  %946 = load i64, i64* %PC.i, align 8
  %947 = add i64 %946, 5
  store i64 %947, i64* %PC.i, align 8
  %948 = inttoptr i64 %945 to double*
  %949 = load double, double* %948, align 8
  store double %949, double* %262, align 1
  store double 0.000000e+00, double* %264, align 1
  %950 = add i64 %944, -88
  %951 = add i64 %946, 10
  store i64 %951, i64* %PC.i, align 8
  %952 = inttoptr i64 %950 to double*
  %953 = load double, double* %952, align 8
  %954 = fsub double %949, %953
  store double %954, double* %262, align 1
  store i64 0, i64* %263, align 1
  %955 = add i64 %944, -16
  %956 = add i64 %946, 14
  store i64 %956, i64* %PC.i, align 8
  %957 = inttoptr i64 %955 to i64*
  %958 = load i64, i64* %957, align 8
  store i64 %958, i64* %RCX.i152, align 8
  %959 = add i64 %944, -36
  %960 = add i64 %946, 18
  store i64 %960, i64* %PC.i, align 8
  %961 = inttoptr i64 %959 to i32*
  %962 = load i32, i32* %961, align 4
  %963 = sext i32 %962 to i64
  store i64 %963, i64* %RDX.i646, align 8
  %964 = shl nsw i64 %963, 3
  %965 = add i64 %964, %958
  %966 = add i64 %946, 23
  store i64 %966, i64* %PC.i, align 8
  %967 = inttoptr i64 %965 to double*
  store double %954, double* %967, align 8
  %968 = load i64, i64* %RBP.i, align 8
  %969 = add i64 %968, -64
  %970 = load i64, i64* %PC.i, align 8
  %971 = add i64 %970, 5
  store i64 %971, i64* %PC.i, align 8
  %972 = inttoptr i64 %969 to double*
  %973 = load double, double* %972, align 8
  store double %973, double* %262, align 1
  store double 0.000000e+00, double* %264, align 1
  %974 = add i64 %968, -96
  %975 = add i64 %970, 10
  store i64 %975, i64* %PC.i, align 8
  %976 = inttoptr i64 %974 to double*
  %977 = load double, double* %976, align 8
  %978 = fsub double %973, %977
  store double %978, double* %262, align 1
  store i64 0, i64* %263, align 1
  %979 = add i64 %968, -16
  %980 = add i64 %970, 14
  store i64 %980, i64* %PC.i, align 8
  %981 = inttoptr i64 %979 to i64*
  %982 = load i64, i64* %981, align 8
  store i64 %982, i64* %RCX.i152, align 8
  %983 = add i64 %968, -36
  %984 = add i64 %970, 17
  store i64 %984, i64* %PC.i, align 8
  %985 = inttoptr i64 %983 to i32*
  %986 = load i32, i32* %985, align 4
  %987 = add i32 %986, 1
  %988 = zext i32 %987 to i64
  store i64 %988, i64* %RAX.i597.pre-phi, align 8
  %989 = icmp eq i32 %986, -1
  %990 = icmp eq i32 %987, 0
  %991 = or i1 %989, %990
  %992 = zext i1 %991 to i8
  store i8 %992, i8* %14, align 1
  %993 = and i32 %987, 255
  %994 = tail call i32 @llvm.ctpop.i32(i32 %993)
  %995 = trunc i32 %994 to i8
  %996 = and i8 %995, 1
  %997 = xor i8 %996, 1
  store i8 %997, i8* %21, align 1
  %998 = xor i32 %986, %987
  %999 = lshr i32 %998, 4
  %1000 = trunc i32 %999 to i8
  %1001 = and i8 %1000, 1
  store i8 %1001, i8* %27, align 1
  %1002 = icmp eq i32 %987, 0
  %1003 = zext i1 %1002 to i8
  store i8 %1003, i8* %30, align 1
  %1004 = lshr i32 %987, 31
  %1005 = trunc i32 %1004 to i8
  store i8 %1005, i8* %33, align 1
  %1006 = lshr i32 %986, 31
  %1007 = xor i32 %1004, %1006
  %1008 = add nuw nsw i32 %1007, %1004
  %1009 = icmp eq i32 %1008, 2
  %1010 = zext i1 %1009 to i8
  store i8 %1010, i8* %39, align 1
  %1011 = sext i32 %987 to i64
  store i64 %1011, i64* %RDX.i646, align 8
  %1012 = shl nsw i64 %1011, 3
  %1013 = add i64 %1012, %982
  %1014 = add i64 %970, 28
  store i64 %1014, i64* %PC.i, align 8
  %1015 = inttoptr i64 %1013 to double*
  store double %978, double* %1015, align 8
  %1016 = load i64, i64* %RBP.i, align 8
  %1017 = add i64 %1016, -72
  %1018 = load i64, i64* %PC.i, align 8
  %1019 = add i64 %1018, 5
  store i64 %1019, i64* %PC.i, align 8
  %1020 = inttoptr i64 %1017 to double*
  %1021 = load double, double* %1020, align 8
  store double %1021, double* %262, align 1
  store double 0.000000e+00, double* %264, align 1
  %1022 = add i64 %1016, -112
  %1023 = add i64 %1018, 10
  store i64 %1023, i64* %PC.i, align 8
  %1024 = inttoptr i64 %1022 to double*
  %1025 = load double, double* %1024, align 8
  %1026 = fsub double %1021, %1025
  store double %1026, double* %262, align 1
  store i64 0, i64* %263, align 1
  %1027 = add i64 %1016, -16
  %1028 = add i64 %1018, 14
  store i64 %1028, i64* %PC.i, align 8
  %1029 = inttoptr i64 %1027 to i64*
  %1030 = load i64, i64* %1029, align 8
  store i64 %1030, i64* %RCX.i152, align 8
  %1031 = add i64 %1016, -32
  %1032 = add i64 %1018, 18
  store i64 %1032, i64* %PC.i, align 8
  %1033 = inttoptr i64 %1031 to i32*
  %1034 = load i32, i32* %1033, align 4
  %1035 = sext i32 %1034 to i64
  store i64 %1035, i64* %RDX.i646, align 8
  %1036 = shl nsw i64 %1035, 3
  %1037 = add i64 %1036, %1030
  %1038 = add i64 %1018, 23
  store i64 %1038, i64* %PC.i, align 8
  %1039 = inttoptr i64 %1037 to double*
  store double %1026, double* %1039, align 8
  %1040 = load i64, i64* %RBP.i, align 8
  %1041 = add i64 %1040, -80
  %1042 = load i64, i64* %PC.i, align 8
  %1043 = add i64 %1042, 5
  store i64 %1043, i64* %PC.i, align 8
  %1044 = inttoptr i64 %1041 to double*
  %1045 = load double, double* %1044, align 8
  store double %1045, double* %262, align 1
  store double 0.000000e+00, double* %264, align 1
  %1046 = add i64 %1040, -104
  %1047 = add i64 %1042, 10
  store i64 %1047, i64* %PC.i, align 8
  %1048 = inttoptr i64 %1046 to double*
  %1049 = load double, double* %1048, align 8
  %1050 = fadd double %1045, %1049
  store double %1050, double* %262, align 1
  store i64 0, i64* %263, align 1
  %1051 = add i64 %1040, -16
  %1052 = add i64 %1042, 14
  store i64 %1052, i64* %PC.i, align 8
  %1053 = inttoptr i64 %1051 to i64*
  %1054 = load i64, i64* %1053, align 8
  store i64 %1054, i64* %RCX.i152, align 8
  %1055 = add i64 %1040, -32
  %1056 = add i64 %1042, 17
  store i64 %1056, i64* %PC.i, align 8
  %1057 = inttoptr i64 %1055 to i32*
  %1058 = load i32, i32* %1057, align 4
  %1059 = add i32 %1058, 1
  %1060 = zext i32 %1059 to i64
  store i64 %1060, i64* %RAX.i597.pre-phi, align 8
  %1061 = icmp eq i32 %1058, -1
  %1062 = icmp eq i32 %1059, 0
  %1063 = or i1 %1061, %1062
  %1064 = zext i1 %1063 to i8
  store i8 %1064, i8* %14, align 1
  %1065 = and i32 %1059, 255
  %1066 = tail call i32 @llvm.ctpop.i32(i32 %1065)
  %1067 = trunc i32 %1066 to i8
  %1068 = and i8 %1067, 1
  %1069 = xor i8 %1068, 1
  store i8 %1069, i8* %21, align 1
  %1070 = xor i32 %1058, %1059
  %1071 = lshr i32 %1070, 4
  %1072 = trunc i32 %1071 to i8
  %1073 = and i8 %1072, 1
  store i8 %1073, i8* %27, align 1
  %1074 = icmp eq i32 %1059, 0
  %1075 = zext i1 %1074 to i8
  store i8 %1075, i8* %30, align 1
  %1076 = lshr i32 %1059, 31
  %1077 = trunc i32 %1076 to i8
  store i8 %1077, i8* %33, align 1
  %1078 = lshr i32 %1058, 31
  %1079 = xor i32 %1076, %1078
  %1080 = add nuw nsw i32 %1079, %1076
  %1081 = icmp eq i32 %1080, 2
  %1082 = zext i1 %1081 to i8
  store i8 %1082, i8* %39, align 1
  %1083 = sext i32 %1059 to i64
  store i64 %1083, i64* %RDX.i646, align 8
  %1084 = shl nsw i64 %1083, 3
  %1085 = add i64 %1084, %1054
  %1086 = add i64 %1042, 28
  store i64 %1086, i64* %PC.i, align 8
  %1087 = inttoptr i64 %1085 to double*
  store double %1050, double* %1087, align 8
  %1088 = load i64, i64* %RBP.i, align 8
  %1089 = add i64 %1088, -72
  %1090 = load i64, i64* %PC.i, align 8
  %1091 = add i64 %1090, 5
  store i64 %1091, i64* %PC.i, align 8
  %1092 = inttoptr i64 %1089 to double*
  %1093 = load double, double* %1092, align 8
  store double %1093, double* %262, align 1
  store double 0.000000e+00, double* %264, align 1
  %1094 = add i64 %1088, -112
  %1095 = add i64 %1090, 10
  store i64 %1095, i64* %PC.i, align 8
  %1096 = inttoptr i64 %1094 to double*
  %1097 = load double, double* %1096, align 8
  %1098 = fadd double %1093, %1097
  store double %1098, double* %262, align 1
  store i64 0, i64* %263, align 1
  %1099 = add i64 %1088, -16
  %1100 = add i64 %1090, 14
  store i64 %1100, i64* %PC.i, align 8
  %1101 = inttoptr i64 %1099 to i64*
  %1102 = load i64, i64* %1101, align 8
  store i64 %1102, i64* %RCX.i152, align 8
  %1103 = add i64 %1088, -40
  %1104 = add i64 %1090, 18
  store i64 %1104, i64* %PC.i, align 8
  %1105 = inttoptr i64 %1103 to i32*
  %1106 = load i32, i32* %1105, align 4
  %1107 = sext i32 %1106 to i64
  store i64 %1107, i64* %RDX.i646, align 8
  %1108 = shl nsw i64 %1107, 3
  %1109 = add i64 %1108, %1102
  %1110 = add i64 %1090, 23
  store i64 %1110, i64* %PC.i, align 8
  %1111 = inttoptr i64 %1109 to double*
  store double %1098, double* %1111, align 8
  %1112 = load i64, i64* %RBP.i, align 8
  %1113 = add i64 %1112, -80
  %1114 = load i64, i64* %PC.i, align 8
  %1115 = add i64 %1114, 5
  store i64 %1115, i64* %PC.i, align 8
  %1116 = inttoptr i64 %1113 to double*
  %1117 = load double, double* %1116, align 8
  store double %1117, double* %262, align 1
  store double 0.000000e+00, double* %264, align 1
  %1118 = add i64 %1112, -104
  %1119 = add i64 %1114, 10
  store i64 %1119, i64* %PC.i, align 8
  %1120 = inttoptr i64 %1118 to double*
  %1121 = load double, double* %1120, align 8
  %1122 = fsub double %1117, %1121
  store double %1122, double* %262, align 1
  store i64 0, i64* %263, align 1
  %1123 = add i64 %1112, -16
  %1124 = add i64 %1114, 14
  store i64 %1124, i64* %PC.i, align 8
  %1125 = inttoptr i64 %1123 to i64*
  %1126 = load i64, i64* %1125, align 8
  store i64 %1126, i64* %RCX.i152, align 8
  %1127 = add i64 %1112, -40
  %1128 = add i64 %1114, 17
  store i64 %1128, i64* %PC.i, align 8
  %1129 = inttoptr i64 %1127 to i32*
  %1130 = load i32, i32* %1129, align 4
  %1131 = add i32 %1130, 1
  %1132 = zext i32 %1131 to i64
  store i64 %1132, i64* %RAX.i597.pre-phi, align 8
  %1133 = icmp eq i32 %1130, -1
  %1134 = icmp eq i32 %1131, 0
  %1135 = or i1 %1133, %1134
  %1136 = zext i1 %1135 to i8
  store i8 %1136, i8* %14, align 1
  %1137 = and i32 %1131, 255
  %1138 = tail call i32 @llvm.ctpop.i32(i32 %1137)
  %1139 = trunc i32 %1138 to i8
  %1140 = and i8 %1139, 1
  %1141 = xor i8 %1140, 1
  store i8 %1141, i8* %21, align 1
  %1142 = xor i32 %1130, %1131
  %1143 = lshr i32 %1142, 4
  %1144 = trunc i32 %1143 to i8
  %1145 = and i8 %1144, 1
  store i8 %1145, i8* %27, align 1
  %1146 = icmp eq i32 %1131, 0
  %1147 = zext i1 %1146 to i8
  store i8 %1147, i8* %30, align 1
  %1148 = lshr i32 %1131, 31
  %1149 = trunc i32 %1148 to i8
  store i8 %1149, i8* %33, align 1
  %1150 = lshr i32 %1130, 31
  %1151 = xor i32 %1148, %1150
  %1152 = add nuw nsw i32 %1151, %1148
  %1153 = icmp eq i32 %1152, 2
  %1154 = zext i1 %1153 to i8
  store i8 %1154, i8* %39, align 1
  %1155 = sext i32 %1131 to i64
  store i64 %1155, i64* %RDX.i646, align 8
  %1156 = shl nsw i64 %1155, 3
  %1157 = add i64 %1156, %1126
  %1158 = add i64 %1114, 28
  store i64 %1158, i64* %PC.i, align 8
  %1159 = inttoptr i64 %1157 to double*
  store double %1122, double* %1159, align 8
  %1160 = load i64, i64* %RBP.i, align 8
  %1161 = add i64 %1160, -28
  %1162 = load i64, i64* %PC.i, align 8
  %1163 = add i64 %1162, 3
  store i64 %1163, i64* %PC.i, align 8
  %1164 = inttoptr i64 %1161 to i32*
  %1165 = load i32, i32* %1164, align 4
  %1166 = add i32 %1165, 2
  %1167 = zext i32 %1166 to i64
  store i64 %1167, i64* %RAX.i597.pre-phi, align 8
  %1168 = icmp ugt i32 %1165, -3
  %1169 = zext i1 %1168 to i8
  store i8 %1169, i8* %14, align 1
  %1170 = and i32 %1166, 255
  %1171 = tail call i32 @llvm.ctpop.i32(i32 %1170)
  %1172 = trunc i32 %1171 to i8
  %1173 = and i8 %1172, 1
  %1174 = xor i8 %1173, 1
  store i8 %1174, i8* %21, align 1
  %1175 = xor i32 %1165, %1166
  %1176 = lshr i32 %1175, 4
  %1177 = trunc i32 %1176 to i8
  %1178 = and i8 %1177, 1
  store i8 %1178, i8* %27, align 1
  %1179 = icmp eq i32 %1166, 0
  %1180 = zext i1 %1179 to i8
  store i8 %1180, i8* %30, align 1
  %1181 = lshr i32 %1166, 31
  %1182 = trunc i32 %1181 to i8
  store i8 %1182, i8* %33, align 1
  %1183 = lshr i32 %1165, 31
  %1184 = xor i32 %1181, %1183
  %1185 = add nuw nsw i32 %1184, %1181
  %1186 = icmp eq i32 %1185, 2
  %1187 = zext i1 %1186 to i8
  store i8 %1187, i8* %39, align 1
  %1188 = add i64 %1162, 9
  store i64 %1188, i64* %PC.i, align 8
  store i32 %1166, i32* %1164, align 4
  %1189 = load i64, i64* %PC.i, align 8
  %1190 = add i64 %1189, -540
  store i64 %1190, i64* %3, align 8
  br label %block_.L_4018c6

block_.L_401ae7:                                  ; preds = %block_.L_4018c6
  %1191 = add i64 %302, 237
  br label %block_.L_401bd4

block_.L_401af3:                                  ; preds = %block_.L_4018b0, %block_401aff
  %1192 = phi i64 [ %1580, %block_401aff ], [ %.pre2, %block_.L_4018b0 ]
  %1193 = load i64, i64* %RBP.i, align 8
  %1194 = add i64 %1193, -28
  %1195 = add i64 %1192, 3
  store i64 %1195, i64* %PC.i, align 8
  %1196 = inttoptr i64 %1194 to i32*
  %1197 = load i32, i32* %1196, align 4
  %1198 = zext i32 %1197 to i64
  store i64 %1198, i64* %RAX.i597.pre-phi, align 8
  %1199 = add i64 %1193, -44
  %1200 = add i64 %1192, 6
  store i64 %1200, i64* %PC.i, align 8
  %1201 = inttoptr i64 %1199 to i32*
  %1202 = load i32, i32* %1201, align 4
  %1203 = sub i32 %1197, %1202
  %1204 = icmp ult i32 %1197, %1202
  %1205 = zext i1 %1204 to i8
  store i8 %1205, i8* %14, align 1
  %1206 = and i32 %1203, 255
  %1207 = tail call i32 @llvm.ctpop.i32(i32 %1206)
  %1208 = trunc i32 %1207 to i8
  %1209 = and i8 %1208, 1
  %1210 = xor i8 %1209, 1
  store i8 %1210, i8* %21, align 1
  %1211 = xor i32 %1202, %1197
  %1212 = xor i32 %1211, %1203
  %1213 = lshr i32 %1212, 4
  %1214 = trunc i32 %1213 to i8
  %1215 = and i8 %1214, 1
  store i8 %1215, i8* %27, align 1
  %1216 = icmp eq i32 %1203, 0
  %1217 = zext i1 %1216 to i8
  store i8 %1217, i8* %30, align 1
  %1218 = lshr i32 %1203, 31
  %1219 = trunc i32 %1218 to i8
  store i8 %1219, i8* %33, align 1
  %1220 = lshr i32 %1197, 31
  %1221 = lshr i32 %1202, 31
  %1222 = xor i32 %1221, %1220
  %1223 = xor i32 %1218, %1220
  %1224 = add nuw nsw i32 %1223, %1222
  %1225 = icmp eq i32 %1224, 2
  %1226 = zext i1 %1225 to i8
  store i8 %1226, i8* %39, align 1
  %1227 = icmp ne i8 %1219, 0
  %1228 = xor i1 %1227, %1225
  %.v12 = select i1 %1228, i64 12, i64 220
  %1229 = add i64 %1192, %.v12
  store i64 %1229, i64* %3, align 8
  br i1 %1228, label %block_401aff, label %block_.L_401bcf

block_401aff:                                     ; preds = %block_.L_401af3
  %1230 = add i64 %1229, 3
  store i64 %1230, i64* %PC.i, align 8
  %1231 = load i32, i32* %1196, align 4
  %1232 = zext i32 %1231 to i64
  store i64 %1232, i64* %RAX.i597.pre-phi, align 8
  %1233 = add i64 %1229, 6
  store i64 %1233, i64* %PC.i, align 8
  %1234 = load i32, i32* %1201, align 4
  %1235 = add i32 %1234, %1231
  %1236 = zext i32 %1235 to i64
  store i64 %1236, i64* %RAX.i597.pre-phi, align 8
  %1237 = icmp ult i32 %1235, %1231
  %1238 = icmp ult i32 %1235, %1234
  %1239 = or i1 %1237, %1238
  %1240 = zext i1 %1239 to i8
  store i8 %1240, i8* %14, align 1
  %1241 = and i32 %1235, 255
  %1242 = tail call i32 @llvm.ctpop.i32(i32 %1241)
  %1243 = trunc i32 %1242 to i8
  %1244 = and i8 %1243, 1
  %1245 = xor i8 %1244, 1
  store i8 %1245, i8* %21, align 1
  %1246 = xor i32 %1234, %1231
  %1247 = xor i32 %1246, %1235
  %1248 = lshr i32 %1247, 4
  %1249 = trunc i32 %1248 to i8
  %1250 = and i8 %1249, 1
  store i8 %1250, i8* %27, align 1
  %1251 = icmp eq i32 %1235, 0
  %1252 = zext i1 %1251 to i8
  store i8 %1252, i8* %30, align 1
  %1253 = lshr i32 %1235, 31
  %1254 = trunc i32 %1253 to i8
  store i8 %1254, i8* %33, align 1
  %1255 = lshr i32 %1231, 31
  %1256 = lshr i32 %1234, 31
  %1257 = xor i32 %1253, %1255
  %1258 = xor i32 %1253, %1256
  %1259 = add nuw nsw i32 %1257, %1258
  %1260 = icmp eq i32 %1259, 2
  %1261 = zext i1 %1260 to i8
  store i8 %1261, i8* %39, align 1
  %1262 = add i64 %1193, -32
  %1263 = add i64 %1229, 9
  store i64 %1263, i64* %PC.i, align 8
  %1264 = inttoptr i64 %1262 to i32*
  store i32 %1235, i32* %1264, align 4
  %1265 = load i64, i64* %RBP.i, align 8
  %1266 = add i64 %1265, -16
  %1267 = load i64, i64* %PC.i, align 8
  %1268 = add i64 %1267, 4
  store i64 %1268, i64* %PC.i, align 8
  %1269 = inttoptr i64 %1266 to i64*
  %1270 = load i64, i64* %1269, align 8
  store i64 %1270, i64* %RCX.i152, align 8
  %1271 = add i64 %1265, -28
  %1272 = add i64 %1267, 8
  store i64 %1272, i64* %PC.i, align 8
  %1273 = inttoptr i64 %1271 to i32*
  %1274 = load i32, i32* %1273, align 4
  %1275 = sext i32 %1274 to i64
  store i64 %1275, i64* %RDX.i646, align 8
  %1276 = shl nsw i64 %1275, 3
  %1277 = add i64 %1276, %1270
  %1278 = add i64 %1267, 13
  store i64 %1278, i64* %PC.i, align 8
  %1279 = inttoptr i64 %1277 to double*
  %1280 = load double, double* %1279, align 8
  store double %1280, double* %262, align 1
  store double 0.000000e+00, double* %264, align 1
  %1281 = add i64 %1267, 17
  store i64 %1281, i64* %PC.i, align 8
  %1282 = load i64, i64* %1269, align 8
  store i64 %1282, i64* %RCX.i152, align 8
  %1283 = add i64 %1265, -32
  %1284 = add i64 %1267, 21
  store i64 %1284, i64* %PC.i, align 8
  %1285 = inttoptr i64 %1283 to i32*
  %1286 = load i32, i32* %1285, align 4
  %1287 = sext i32 %1286 to i64
  store i64 %1287, i64* %RDX.i646, align 8
  %1288 = shl nsw i64 %1287, 3
  %1289 = add i64 %1288, %1282
  %1290 = add i64 %1267, 26
  store i64 %1290, i64* %PC.i, align 8
  %1291 = inttoptr i64 %1289 to double*
  %1292 = load double, double* %1291, align 8
  %1293 = fsub double %1280, %1292
  store double %1293, double* %262, align 1
  store i64 0, i64* %263, align 1
  %1294 = add i64 %1265, -56
  %1295 = add i64 %1267, 31
  store i64 %1295, i64* %PC.i, align 8
  %1296 = inttoptr i64 %1294 to double*
  store double %1293, double* %1296, align 8
  %1297 = load i64, i64* %RBP.i, align 8
  %1298 = add i64 %1297, -16
  %1299 = load i64, i64* %PC.i, align 8
  %1300 = add i64 %1299, 4
  store i64 %1300, i64* %PC.i, align 8
  %1301 = inttoptr i64 %1298 to i64*
  %1302 = load i64, i64* %1301, align 8
  store i64 %1302, i64* %RCX.i152, align 8
  %1303 = add i64 %1297, -28
  %1304 = add i64 %1299, 7
  store i64 %1304, i64* %PC.i, align 8
  %1305 = inttoptr i64 %1303 to i32*
  %1306 = load i32, i32* %1305, align 4
  %1307 = add i32 %1306, 1
  %1308 = zext i32 %1307 to i64
  store i64 %1308, i64* %RAX.i597.pre-phi, align 8
  %1309 = icmp eq i32 %1306, -1
  %1310 = icmp eq i32 %1307, 0
  %1311 = or i1 %1309, %1310
  %1312 = zext i1 %1311 to i8
  store i8 %1312, i8* %14, align 1
  %1313 = and i32 %1307, 255
  %1314 = tail call i32 @llvm.ctpop.i32(i32 %1313)
  %1315 = trunc i32 %1314 to i8
  %1316 = and i8 %1315, 1
  %1317 = xor i8 %1316, 1
  store i8 %1317, i8* %21, align 1
  %1318 = xor i32 %1306, %1307
  %1319 = lshr i32 %1318, 4
  %1320 = trunc i32 %1319 to i8
  %1321 = and i8 %1320, 1
  store i8 %1321, i8* %27, align 1
  %1322 = icmp eq i32 %1307, 0
  %1323 = zext i1 %1322 to i8
  store i8 %1323, i8* %30, align 1
  %1324 = lshr i32 %1307, 31
  %1325 = trunc i32 %1324 to i8
  store i8 %1325, i8* %33, align 1
  %1326 = lshr i32 %1306, 31
  %1327 = xor i32 %1324, %1326
  %1328 = add nuw nsw i32 %1327, %1324
  %1329 = icmp eq i32 %1328, 2
  %1330 = zext i1 %1329 to i8
  store i8 %1330, i8* %39, align 1
  %1331 = sext i32 %1307 to i64
  store i64 %1331, i64* %RDX.i646, align 8
  %1332 = shl nsw i64 %1331, 3
  %1333 = add i64 %1332, %1302
  %1334 = add i64 %1299, 18
  store i64 %1334, i64* %PC.i, align 8
  %1335 = inttoptr i64 %1333 to double*
  %1336 = load double, double* %1335, align 8
  store double %1336, double* %262, align 1
  store double 0.000000e+00, double* %264, align 1
  %1337 = add i64 %1299, 22
  store i64 %1337, i64* %PC.i, align 8
  %1338 = load i64, i64* %1301, align 8
  store i64 %1338, i64* %RCX.i152, align 8
  %1339 = add i64 %1297, -32
  %1340 = add i64 %1299, 25
  store i64 %1340, i64* %PC.i, align 8
  %1341 = inttoptr i64 %1339 to i32*
  %1342 = load i32, i32* %1341, align 4
  %1343 = add i32 %1342, 1
  %1344 = zext i32 %1343 to i64
  store i64 %1344, i64* %RAX.i597.pre-phi, align 8
  %1345 = icmp eq i32 %1342, -1
  %1346 = icmp eq i32 %1343, 0
  %1347 = or i1 %1345, %1346
  %1348 = zext i1 %1347 to i8
  store i8 %1348, i8* %14, align 1
  %1349 = and i32 %1343, 255
  %1350 = tail call i32 @llvm.ctpop.i32(i32 %1349)
  %1351 = trunc i32 %1350 to i8
  %1352 = and i8 %1351, 1
  %1353 = xor i8 %1352, 1
  store i8 %1353, i8* %21, align 1
  %1354 = xor i32 %1342, %1343
  %1355 = lshr i32 %1354, 4
  %1356 = trunc i32 %1355 to i8
  %1357 = and i8 %1356, 1
  store i8 %1357, i8* %27, align 1
  %1358 = icmp eq i32 %1343, 0
  %1359 = zext i1 %1358 to i8
  store i8 %1359, i8* %30, align 1
  %1360 = lshr i32 %1343, 31
  %1361 = trunc i32 %1360 to i8
  store i8 %1361, i8* %33, align 1
  %1362 = lshr i32 %1342, 31
  %1363 = xor i32 %1360, %1362
  %1364 = add nuw nsw i32 %1363, %1360
  %1365 = icmp eq i32 %1364, 2
  %1366 = zext i1 %1365 to i8
  store i8 %1366, i8* %39, align 1
  %1367 = sext i32 %1343 to i64
  store i64 %1367, i64* %RDX.i646, align 8
  %1368 = shl nsw i64 %1367, 3
  %1369 = add i64 %1368, %1338
  %1370 = add i64 %1299, 36
  store i64 %1370, i64* %PC.i, align 8
  %1371 = inttoptr i64 %1369 to double*
  %1372 = load double, double* %1371, align 8
  %1373 = fsub double %1336, %1372
  store double %1373, double* %262, align 1
  store i64 0, i64* %263, align 1
  %1374 = load i64, i64* %RBP.i, align 8
  %1375 = add i64 %1374, -64
  %1376 = add i64 %1299, 41
  store i64 %1376, i64* %PC.i, align 8
  %1377 = inttoptr i64 %1375 to double*
  store double %1373, double* %1377, align 8
  %1378 = load i64, i64* %RBP.i, align 8
  %1379 = add i64 %1378, -16
  %1380 = load i64, i64* %PC.i, align 8
  %1381 = add i64 %1380, 4
  store i64 %1381, i64* %PC.i, align 8
  %1382 = inttoptr i64 %1379 to i64*
  %1383 = load i64, i64* %1382, align 8
  store i64 %1383, i64* %RCX.i152, align 8
  %1384 = add i64 %1378, -32
  %1385 = add i64 %1380, 8
  store i64 %1385, i64* %PC.i, align 8
  %1386 = inttoptr i64 %1384 to i32*
  %1387 = load i32, i32* %1386, align 4
  %1388 = sext i32 %1387 to i64
  store i64 %1388, i64* %RDX.i646, align 8
  %1389 = shl nsw i64 %1388, 3
  %1390 = add i64 %1389, %1383
  %1391 = add i64 %1380, 13
  store i64 %1391, i64* %PC.i, align 8
  %1392 = inttoptr i64 %1390 to double*
  %1393 = load double, double* %1392, align 8
  store double %1393, double* %262, align 1
  store double 0.000000e+00, double* %264, align 1
  %1394 = add i64 %1380, 17
  store i64 %1394, i64* %PC.i, align 8
  %1395 = load i64, i64* %1382, align 8
  store i64 %1395, i64* %RCX.i152, align 8
  %1396 = add i64 %1378, -28
  %1397 = add i64 %1380, 21
  store i64 %1397, i64* %PC.i, align 8
  %1398 = inttoptr i64 %1396 to i32*
  %1399 = load i32, i32* %1398, align 4
  %1400 = sext i32 %1399 to i64
  store i64 %1400, i64* %RDX.i646, align 8
  %1401 = shl nsw i64 %1400, 3
  %1402 = add i64 %1401, %1395
  %1403 = add i64 %1380, 26
  store i64 %1403, i64* %PC.i, align 8
  %1404 = inttoptr i64 %1402 to double*
  %1405 = load double, double* %1404, align 8
  %1406 = fadd double %1393, %1405
  store double %1406, double* %262, align 1
  store i64 0, i64* %263, align 1
  %1407 = add i64 %1380, 31
  store i64 %1407, i64* %PC.i, align 8
  store double %1406, double* %1404, align 8
  %1408 = load i64, i64* %RBP.i, align 8
  %1409 = add i64 %1408, -16
  %1410 = load i64, i64* %PC.i, align 8
  %1411 = add i64 %1410, 4
  store i64 %1411, i64* %PC.i, align 8
  %1412 = inttoptr i64 %1409 to i64*
  %1413 = load i64, i64* %1412, align 8
  store i64 %1413, i64* %RCX.i152, align 8
  %1414 = add i64 %1408, -32
  %1415 = add i64 %1410, 7
  store i64 %1415, i64* %PC.i, align 8
  %1416 = inttoptr i64 %1414 to i32*
  %1417 = load i32, i32* %1416, align 4
  %1418 = add i32 %1417, 1
  %1419 = zext i32 %1418 to i64
  store i64 %1419, i64* %RAX.i597.pre-phi, align 8
  %1420 = icmp eq i32 %1417, -1
  %1421 = icmp eq i32 %1418, 0
  %1422 = or i1 %1420, %1421
  %1423 = zext i1 %1422 to i8
  store i8 %1423, i8* %14, align 1
  %1424 = and i32 %1418, 255
  %1425 = tail call i32 @llvm.ctpop.i32(i32 %1424)
  %1426 = trunc i32 %1425 to i8
  %1427 = and i8 %1426, 1
  %1428 = xor i8 %1427, 1
  store i8 %1428, i8* %21, align 1
  %1429 = xor i32 %1417, %1418
  %1430 = lshr i32 %1429, 4
  %1431 = trunc i32 %1430 to i8
  %1432 = and i8 %1431, 1
  store i8 %1432, i8* %27, align 1
  %1433 = icmp eq i32 %1418, 0
  %1434 = zext i1 %1433 to i8
  store i8 %1434, i8* %30, align 1
  %1435 = lshr i32 %1418, 31
  %1436 = trunc i32 %1435 to i8
  store i8 %1436, i8* %33, align 1
  %1437 = lshr i32 %1417, 31
  %1438 = xor i32 %1435, %1437
  %1439 = add nuw nsw i32 %1438, %1435
  %1440 = icmp eq i32 %1439, 2
  %1441 = zext i1 %1440 to i8
  store i8 %1441, i8* %39, align 1
  %1442 = sext i32 %1418 to i64
  store i64 %1442, i64* %RDX.i646, align 8
  %1443 = shl nsw i64 %1442, 3
  %1444 = add i64 %1443, %1413
  %1445 = add i64 %1410, 18
  store i64 %1445, i64* %PC.i, align 8
  %1446 = inttoptr i64 %1444 to double*
  %1447 = load double, double* %1446, align 8
  store double %1447, double* %262, align 1
  store double 0.000000e+00, double* %264, align 1
  %1448 = add i64 %1410, 22
  store i64 %1448, i64* %PC.i, align 8
  %1449 = load i64, i64* %1412, align 8
  store i64 %1449, i64* %RCX.i152, align 8
  %1450 = add i64 %1408, -28
  %1451 = add i64 %1410, 25
  store i64 %1451, i64* %PC.i, align 8
  %1452 = inttoptr i64 %1450 to i32*
  %1453 = load i32, i32* %1452, align 4
  %1454 = add i32 %1453, 1
  %1455 = zext i32 %1454 to i64
  store i64 %1455, i64* %RAX.i597.pre-phi, align 8
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
  %1465 = xor i32 %1453, %1454
  %1466 = lshr i32 %1465, 4
  %1467 = trunc i32 %1466 to i8
  %1468 = and i8 %1467, 1
  store i8 %1468, i8* %27, align 1
  %1469 = icmp eq i32 %1454, 0
  %1470 = zext i1 %1469 to i8
  store i8 %1470, i8* %30, align 1
  %1471 = lshr i32 %1454, 31
  %1472 = trunc i32 %1471 to i8
  store i8 %1472, i8* %33, align 1
  %1473 = lshr i32 %1453, 31
  %1474 = xor i32 %1471, %1473
  %1475 = add nuw nsw i32 %1474, %1471
  %1476 = icmp eq i32 %1475, 2
  %1477 = zext i1 %1476 to i8
  store i8 %1477, i8* %39, align 1
  %1478 = sext i32 %1454 to i64
  store i64 %1478, i64* %RDX.i646, align 8
  %1479 = shl nsw i64 %1478, 3
  %1480 = add i64 %1479, %1449
  %1481 = add i64 %1410, 36
  store i64 %1481, i64* %PC.i, align 8
  %1482 = inttoptr i64 %1480 to double*
  %1483 = load double, double* %1482, align 8
  %1484 = fadd double %1447, %1483
  store double %1484, double* %262, align 1
  store i64 0, i64* %263, align 1
  %1485 = add i64 %1410, 41
  store i64 %1485, i64* %PC.i, align 8
  store double %1484, double* %1482, align 8
  %1486 = load i64, i64* %RBP.i, align 8
  %1487 = add i64 %1486, -56
  %1488 = load i64, i64* %PC.i, align 8
  %1489 = add i64 %1488, 5
  store i64 %1489, i64* %PC.i, align 8
  %1490 = inttoptr i64 %1487 to i64*
  %1491 = load i64, i64* %1490, align 8
  %1492 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %261, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1491, i64* %1492, align 1
  store double 0.000000e+00, double* %264, align 1
  %1493 = add i64 %1486, -16
  %1494 = add i64 %1488, 9
  store i64 %1494, i64* %PC.i, align 8
  %1495 = inttoptr i64 %1493 to i64*
  %1496 = load i64, i64* %1495, align 8
  store i64 %1496, i64* %RCX.i152, align 8
  %1497 = add i64 %1486, -32
  %1498 = add i64 %1488, 13
  store i64 %1498, i64* %PC.i, align 8
  %1499 = inttoptr i64 %1497 to i32*
  %1500 = load i32, i32* %1499, align 4
  %1501 = sext i32 %1500 to i64
  store i64 %1501, i64* %RDX.i646, align 8
  %1502 = shl nsw i64 %1501, 3
  %1503 = add i64 %1502, %1496
  %1504 = add i64 %1488, 18
  store i64 %1504, i64* %PC.i, align 8
  %1505 = inttoptr i64 %1503 to i64*
  store i64 %1491, i64* %1505, align 8
  %1506 = load i64, i64* %RBP.i, align 8
  %1507 = add i64 %1506, -64
  %1508 = load i64, i64* %PC.i, align 8
  %1509 = add i64 %1508, 5
  store i64 %1509, i64* %PC.i, align 8
  %1510 = inttoptr i64 %1507 to i64*
  %1511 = load i64, i64* %1510, align 8
  %1512 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %261, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1511, i64* %1512, align 1
  store double 0.000000e+00, double* %264, align 1
  %1513 = add i64 %1506, -16
  %1514 = add i64 %1508, 9
  store i64 %1514, i64* %PC.i, align 8
  %1515 = inttoptr i64 %1513 to i64*
  %1516 = load i64, i64* %1515, align 8
  store i64 %1516, i64* %RCX.i152, align 8
  %1517 = add i64 %1506, -32
  %1518 = add i64 %1508, 12
  store i64 %1518, i64* %PC.i, align 8
  %1519 = inttoptr i64 %1517 to i32*
  %1520 = load i32, i32* %1519, align 4
  %1521 = add i32 %1520, 1
  %1522 = zext i32 %1521 to i64
  store i64 %1522, i64* %RAX.i597.pre-phi, align 8
  %1523 = icmp eq i32 %1520, -1
  %1524 = icmp eq i32 %1521, 0
  %1525 = or i1 %1523, %1524
  %1526 = zext i1 %1525 to i8
  store i8 %1526, i8* %14, align 1
  %1527 = and i32 %1521, 255
  %1528 = tail call i32 @llvm.ctpop.i32(i32 %1527)
  %1529 = trunc i32 %1528 to i8
  %1530 = and i8 %1529, 1
  %1531 = xor i8 %1530, 1
  store i8 %1531, i8* %21, align 1
  %1532 = xor i32 %1520, %1521
  %1533 = lshr i32 %1532, 4
  %1534 = trunc i32 %1533 to i8
  %1535 = and i8 %1534, 1
  store i8 %1535, i8* %27, align 1
  %1536 = icmp eq i32 %1521, 0
  %1537 = zext i1 %1536 to i8
  store i8 %1537, i8* %30, align 1
  %1538 = lshr i32 %1521, 31
  %1539 = trunc i32 %1538 to i8
  store i8 %1539, i8* %33, align 1
  %1540 = lshr i32 %1520, 31
  %1541 = xor i32 %1538, %1540
  %1542 = add nuw nsw i32 %1541, %1538
  %1543 = icmp eq i32 %1542, 2
  %1544 = zext i1 %1543 to i8
  store i8 %1544, i8* %39, align 1
  %1545 = sext i32 %1521 to i64
  store i64 %1545, i64* %RDX.i646, align 8
  %1546 = shl nsw i64 %1545, 3
  %1547 = add i64 %1546, %1516
  %1548 = add i64 %1508, 23
  store i64 %1548, i64* %PC.i, align 8
  %1549 = inttoptr i64 %1547 to i64*
  store i64 %1511, i64* %1549, align 8
  %1550 = load i64, i64* %RBP.i, align 8
  %1551 = add i64 %1550, -28
  %1552 = load i64, i64* %PC.i, align 8
  %1553 = add i64 %1552, 3
  store i64 %1553, i64* %PC.i, align 8
  %1554 = inttoptr i64 %1551 to i32*
  %1555 = load i32, i32* %1554, align 4
  %1556 = add i32 %1555, 2
  %1557 = zext i32 %1556 to i64
  store i64 %1557, i64* %RAX.i597.pre-phi, align 8
  %1558 = icmp ugt i32 %1555, -3
  %1559 = zext i1 %1558 to i8
  store i8 %1559, i8* %14, align 1
  %1560 = and i32 %1556, 255
  %1561 = tail call i32 @llvm.ctpop.i32(i32 %1560)
  %1562 = trunc i32 %1561 to i8
  %1563 = and i8 %1562, 1
  %1564 = xor i8 %1563, 1
  store i8 %1564, i8* %21, align 1
  %1565 = xor i32 %1555, %1556
  %1566 = lshr i32 %1565, 4
  %1567 = trunc i32 %1566 to i8
  %1568 = and i8 %1567, 1
  store i8 %1568, i8* %27, align 1
  %1569 = icmp eq i32 %1556, 0
  %1570 = zext i1 %1569 to i8
  store i8 %1570, i8* %30, align 1
  %1571 = lshr i32 %1556, 31
  %1572 = trunc i32 %1571 to i8
  store i8 %1572, i8* %33, align 1
  %1573 = lshr i32 %1555, 31
  %1574 = xor i32 %1571, %1573
  %1575 = add nuw nsw i32 %1574, %1571
  %1576 = icmp eq i32 %1575, 2
  %1577 = zext i1 %1576 to i8
  store i8 %1577, i8* %39, align 1
  %1578 = add i64 %1552, 9
  store i64 %1578, i64* %PC.i, align 8
  store i32 %1556, i32* %1554, align 4
  %1579 = load i64, i64* %PC.i, align 8
  %1580 = add i64 %1579, -215
  store i64 %1580, i64* %3, align 8
  br label %block_.L_401af3

block_.L_401bcf:                                  ; preds = %block_.L_401af3
  %1581 = add i64 %1229, 5
  br label %block_.L_401bd4

block_.L_401bd4:                                  ; preds = %block_.L_401bcf, %block_.L_401ae7
  %.sink = phi i64 [ %1581, %block_.L_401bcf ], [ %1191, %block_.L_401ae7 ]
  %1582 = load i64, i64* %RSP.i656, align 8
  %1583 = add i64 %1582, 112
  store i64 %1583, i64* %RSP.i656, align 8
  %1584 = icmp ugt i64 %1582, -113
  %1585 = zext i1 %1584 to i8
  store i8 %1585, i8* %14, align 1
  %1586 = trunc i64 %1583 to i32
  %1587 = and i32 %1586, 255
  %1588 = tail call i32 @llvm.ctpop.i32(i32 %1587)
  %1589 = trunc i32 %1588 to i8
  %1590 = and i8 %1589, 1
  %1591 = xor i8 %1590, 1
  store i8 %1591, i8* %21, align 1
  %1592 = xor i64 %1582, 16
  %1593 = xor i64 %1592, %1583
  %1594 = lshr i64 %1593, 4
  %1595 = trunc i64 %1594 to i8
  %1596 = and i8 %1595, 1
  store i8 %1596, i8* %27, align 1
  %1597 = icmp eq i64 %1583, 0
  %1598 = zext i1 %1597 to i8
  store i8 %1598, i8* %30, align 1
  %1599 = lshr i64 %1583, 63
  %1600 = trunc i64 %1599 to i8
  store i8 %1600, i8* %33, align 1
  %1601 = lshr i64 %1582, 63
  %1602 = xor i64 %1599, %1601
  %1603 = add nuw nsw i64 %1602, %1599
  %1604 = icmp eq i64 %1603, 2
  %1605 = zext i1 %1604 to i8
  store i8 %1605, i8* %39, align 1
  %1606 = add i64 %.sink, 5
  store i64 %1606, i64* %PC.i, align 8
  %1607 = add i64 %1582, 120
  %1608 = inttoptr i64 %1583 to i64*
  %1609 = load i64, i64* %1608, align 8
  store i64 %1609, i64* %RBP.i, align 8
  store i64 %1607, i64* %6, align 8
  %1610 = add i64 %.sink, 6
  store i64 %1610, i64* %PC.i, align 8
  %1611 = inttoptr i64 %1607 to i64*
  %1612 = load i64, i64* %1611, align 8
  store i64 %1612, i64* %3, align 8
  %1613 = add i64 %1582, 128
  store i64 %1613, i64* %6, align 8
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
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %3, %.v
  store i64 %17, i64* %16, align 8
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %10, align 8
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %10, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4018b0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %9 = add i64 %3, %.v
  store i64 %9, i64* %8, align 8
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
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
  %20 = trunc i64 %3 to i32
  %21 = xor i32 %20, %7
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %7, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %6, 31
  %33 = xor i32 %29, %32
  %34 = add nuw nsw i32 %33, %29
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
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
  %18 = trunc i64 %3 to i32
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401bd4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401af3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %5, align 8
  %10 = add i64 %7, 8
  store i64 %10, i64* %6, align 8
  ret %struct.Memory* %2
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
