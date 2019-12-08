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
define %struct.Memory* @cftbsub(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %RSP.i706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = load i64, i64* %PC.i, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = add i64 %7, -120
  store i64 %11, i64* %RSP.i706, align 8
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
  %RSI.i699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, -16
  %47 = load i64, i64* %RSI.i699, align 8
  %48 = load i64, i64* %PC.i, align 8
  %49 = add i64 %48, 4
  store i64 %49, i64* %PC.i, align 8
  %50 = inttoptr i64 %46 to i64*
  store i64 %47, i64* %50, align 8
  %RDX.i696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %51 = load i64, i64* %RBP.i, align 8
  %52 = add i64 %51, -24
  %53 = load i64, i64* %RDX.i696, align 8
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
  br i1 %91, label %entry.block_.L_4024f0_crit_edge, label %block_4024a4

entry.block_.L_4024f0_crit_edge:                  ; preds = %entry
  %.pre6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  br label %block_.L_4024f0

block_4024a4:                                     ; preds = %entry
  %RDI.i688 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  %93 = add i64 %92, 3
  store i64 %93, i64* %PC.i, align 8
  %94 = load i32, i32* %66, align 4
  %95 = zext i32 %94 to i64
  store i64 %95, i64* %RDI.i688, align 8
  %96 = add i64 %62, -16
  %97 = add i64 %92, 7
  store i64 %97, i64* %PC.i, align 8
  %98 = inttoptr i64 %96 to i64*
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %RSI.i699, align 8
  %100 = add i64 %62, -24
  %101 = add i64 %92, 11
  store i64 %101, i64* %PC.i, align 8
  %102 = inttoptr i64 %100 to i64*
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %RDX.i696, align 8
  %104 = add i64 %92, 972
  %105 = add i64 %92, 16
  %106 = load i64, i64* %6, align 8
  %107 = add i64 %106, -8
  %108 = inttoptr i64 %107 to i64*
  store i64 %105, i64* %108, align 8
  store i64 %107, i64* %6, align 8
  store i64 %104, i64* %3, align 8
  %call2_4024af = tail call %struct.Memory* @sub_402870.cft1st(%struct.State* %0, i64 %104, %struct.Memory* %2)
  %109 = load i64, i64* %RBP.i, align 8
  %110 = add i64 %109, -44
  %111 = load i64, i64* %PC.i, align 8
  %112 = add i64 %111, 7
  store i64 %112, i64* %PC.i, align 8
  %113 = inttoptr i64 %110 to i32*
  store i32 8, i32* %113, align 4
  %RAX.i676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX.i659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %.pre = load i64, i64* %PC.i, align 8
  br label %block_.L_4024bb

block_.L_4024bb:                                  ; preds = %block_4024ca, %block_4024a4
  %114 = phi i64 [ %.pre, %block_4024a4 ], [ %207, %block_4024ca ]
  %MEMORY.0 = phi %struct.Memory* [ %call2_4024af, %block_4024a4 ], [ %call2_4024d8, %block_4024ca ]
  %115 = load i64, i64* %RBP.i, align 8
  %116 = add i64 %115, -44
  %117 = add i64 %114, 3
  store i64 %117, i64* %PC.i, align 8
  %118 = inttoptr i64 %116 to i32*
  %119 = load i32, i32* %118, align 4
  %120 = shl i32 %119, 2
  %121 = zext i32 %120 to i64
  store i64 %121, i64* %RAX.i676, align 8
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
  br i1 %163, label %block_4024ca, label %block_.L_4024eb

block_4024ca:                                     ; preds = %block_.L_4024bb
  %165 = add i64 %164, 3
  store i64 %165, i64* %PC.i, align 8
  %166 = load i32, i32* %137, align 4
  %167 = zext i32 %166 to i64
  store i64 %167, i64* %RDI.i688, align 8
  %168 = add i64 %164, 6
  store i64 %168, i64* %PC.i, align 8
  %169 = load i32, i32* %118, align 4
  %170 = zext i32 %169 to i64
  store i64 %170, i64* %RSI.i699, align 8
  %171 = add i64 %115, -16
  %172 = add i64 %164, 10
  store i64 %172, i64* %PC.i, align 8
  %173 = inttoptr i64 %171 to i64*
  %174 = load i64, i64* %173, align 8
  store i64 %174, i64* %RDX.i696, align 8
  %175 = add i64 %115, -24
  %176 = add i64 %164, 14
  store i64 %176, i64* %PC.i, align 8
  %177 = inttoptr i64 %175 to i64*
  %178 = load i64, i64* %177, align 8
  store i64 %178, i64* %RCX.i659, align 8
  %179 = add i64 %164, 3638
  %180 = add i64 %164, 19
  %181 = load i64, i64* %6, align 8
  %182 = add i64 %181, -8
  %183 = inttoptr i64 %182 to i64*
  store i64 %180, i64* %183, align 8
  store i64 %182, i64* %6, align 8
  store i64 %179, i64* %3, align 8
  %call2_4024d8 = tail call %struct.Memory* @sub_403300.cftmdl(%struct.State* %0, i64 %179, %struct.Memory* %MEMORY.0)
  %184 = load i64, i64* %RBP.i, align 8
  %185 = add i64 %184, -44
  %186 = load i64, i64* %PC.i, align 8
  %187 = add i64 %186, 3
  store i64 %187, i64* %PC.i, align 8
  %188 = inttoptr i64 %185 to i32*
  %189 = load i32, i32* %188, align 4
  %190 = shl i32 %189, 2
  %191 = zext i32 %190 to i64
  store i64 %191, i64* %RSI.i699, align 8
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
  br label %block_.L_4024bb

block_.L_4024eb:                                  ; preds = %block_.L_4024bb
  %208 = add i64 %164, 5
  store i64 %208, i64* %3, align 8
  br label %block_.L_4024f0

block_.L_4024f0:                                  ; preds = %entry.block_.L_4024f0_crit_edge, %block_.L_4024eb
  %RAX.i646.pre-phi = phi i64* [ %.pre6, %entry.block_.L_4024f0_crit_edge ], [ %RAX.i676, %block_.L_4024eb ]
  %209 = phi i64 [ %92, %entry.block_.L_4024f0_crit_edge ], [ %208, %block_.L_4024eb ]
  %210 = phi i64 [ %62, %entry.block_.L_4024f0_crit_edge ], [ %115, %block_.L_4024eb ]
  %MEMORY.1 = phi %struct.Memory* [ %2, %entry.block_.L_4024f0_crit_edge ], [ %MEMORY.0, %block_.L_4024eb ]
  %211 = add i64 %210, -44
  %212 = add i64 %209, 3
  store i64 %212, i64* %PC.i, align 8
  %213 = inttoptr i64 %211 to i32*
  %214 = load i32, i32* %213, align 4
  %215 = shl i32 %214, 2
  %216 = zext i32 %215 to i64
  store i64 %216, i64* %RAX.i646.pre-phi, align 8
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
  %.v10 = select i1 %247, i64 15, i64 608
  %257 = add i64 %209, %.v10
  %258 = add i64 %210, -28
  %259 = add i64 %257, 7
  store i64 %259, i64* %PC.i, align 8
  %260 = inttoptr i64 %258 to i32*
  store i32 0, i32* %260, align 4
  %RCX.i188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %262 = bitcast %union.VectorReg* %261 to double*
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %264 = bitcast i64* %263 to double*
  %265 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %261, i64 0, i32 0, i32 0, i32 0, i64 0
  %.pre2 = load i64, i64* %PC.i, align 8
  br i1 %247, label %block_.L_402506, label %block_.L_402757

block_.L_402506:                                  ; preds = %block_.L_4024f0, %block_402512
  %266 = phi i64 [ %1217, %block_402512 ], [ %.pre2, %block_.L_4024f0 ]
  %267 = load i64, i64* %RBP.i, align 8
  %268 = add i64 %267, -28
  %269 = add i64 %266, 3
  store i64 %269, i64* %PC.i, align 8
  %270 = inttoptr i64 %268 to i32*
  %271 = load i32, i32* %270, align 4
  %272 = zext i32 %271 to i64
  store i64 %272, i64* %RAX.i646.pre-phi, align 8
  %273 = add i64 %267, -44
  %274 = add i64 %266, 6
  store i64 %274, i64* %PC.i, align 8
  %275 = inttoptr i64 %273 to i32*
  %276 = load i32, i32* %275, align 4
  %277 = sub i32 %271, %276
  %278 = icmp ult i32 %271, %276
  %279 = zext i1 %278 to i8
  store i8 %279, i8* %14, align 1
  %280 = and i32 %277, 255
  %281 = tail call i32 @llvm.ctpop.i32(i32 %280)
  %282 = trunc i32 %281 to i8
  %283 = and i8 %282, 1
  %284 = xor i8 %283, 1
  store i8 %284, i8* %21, align 1
  %285 = xor i32 %276, %271
  %286 = xor i32 %285, %277
  %287 = lshr i32 %286, 4
  %288 = trunc i32 %287 to i8
  %289 = and i8 %288, 1
  store i8 %289, i8* %27, align 1
  %290 = icmp eq i32 %277, 0
  %291 = zext i1 %290 to i8
  store i8 %291, i8* %30, align 1
  %292 = lshr i32 %277, 31
  %293 = trunc i32 %292 to i8
  store i8 %293, i8* %33, align 1
  %294 = lshr i32 %271, 31
  %295 = lshr i32 %276, 31
  %296 = xor i32 %295, %294
  %297 = xor i32 %292, %294
  %298 = add nuw nsw i32 %297, %296
  %299 = icmp eq i32 %298, 2
  %300 = zext i1 %299 to i8
  store i8 %300, i8* %39, align 1
  %301 = icmp ne i8 %293, 0
  %302 = xor i1 %301, %299
  %.v11 = select i1 %302, i64 12, i64 581
  %303 = add i64 %266, %.v11
  store i64 %303, i64* %3, align 8
  br i1 %302, label %block_402512, label %block_.L_40274b

block_402512:                                     ; preds = %block_.L_402506
  store i64 -9223372036854775808, i64* %RAX.i646.pre-phi, align 8
  %304 = add i64 %303, 13
  store i64 %304, i64* %PC.i, align 8
  %305 = load i32, i32* %270, align 4
  %306 = zext i32 %305 to i64
  store i64 %306, i64* %RCX.i188, align 8
  %307 = add i64 %303, 16
  store i64 %307, i64* %PC.i, align 8
  %308 = load i32, i32* %275, align 4
  %309 = add i32 %308, %305
  %310 = zext i32 %309 to i64
  store i64 %310, i64* %RCX.i188, align 8
  %311 = icmp ult i32 %309, %305
  %312 = icmp ult i32 %309, %308
  %313 = or i1 %311, %312
  %314 = zext i1 %313 to i8
  store i8 %314, i8* %14, align 1
  %315 = and i32 %309, 255
  %316 = tail call i32 @llvm.ctpop.i32(i32 %315)
  %317 = trunc i32 %316 to i8
  %318 = and i8 %317, 1
  %319 = xor i8 %318, 1
  store i8 %319, i8* %21, align 1
  %320 = xor i32 %308, %305
  %321 = xor i32 %320, %309
  %322 = lshr i32 %321, 4
  %323 = trunc i32 %322 to i8
  %324 = and i8 %323, 1
  store i8 %324, i8* %27, align 1
  %325 = icmp eq i32 %309, 0
  %326 = zext i1 %325 to i8
  store i8 %326, i8* %30, align 1
  %327 = lshr i32 %309, 31
  %328 = trunc i32 %327 to i8
  store i8 %328, i8* %33, align 1
  %329 = lshr i32 %305, 31
  %330 = lshr i32 %308, 31
  %331 = xor i32 %327, %329
  %332 = xor i32 %327, %330
  %333 = add nuw nsw i32 %331, %332
  %334 = icmp eq i32 %333, 2
  %335 = zext i1 %334 to i8
  store i8 %335, i8* %39, align 1
  %336 = add i64 %267, -32
  %337 = add i64 %303, 19
  store i64 %337, i64* %PC.i, align 8
  %338 = inttoptr i64 %336 to i32*
  store i32 %309, i32* %338, align 4
  %339 = load i64, i64* %RBP.i, align 8
  %340 = add i64 %339, -32
  %341 = load i64, i64* %PC.i, align 8
  %342 = add i64 %341, 3
  store i64 %342, i64* %PC.i, align 8
  %343 = inttoptr i64 %340 to i32*
  %344 = load i32, i32* %343, align 4
  %345 = zext i32 %344 to i64
  store i64 %345, i64* %RCX.i188, align 8
  %346 = add i64 %339, -44
  %347 = add i64 %341, 6
  store i64 %347, i64* %PC.i, align 8
  %348 = inttoptr i64 %346 to i32*
  %349 = load i32, i32* %348, align 4
  %350 = add i32 %349, %344
  %351 = zext i32 %350 to i64
  store i64 %351, i64* %RCX.i188, align 8
  %352 = icmp ult i32 %350, %344
  %353 = icmp ult i32 %350, %349
  %354 = or i1 %352, %353
  %355 = zext i1 %354 to i8
  store i8 %355, i8* %14, align 1
  %356 = and i32 %350, 255
  %357 = tail call i32 @llvm.ctpop.i32(i32 %356)
  %358 = trunc i32 %357 to i8
  %359 = and i8 %358, 1
  %360 = xor i8 %359, 1
  store i8 %360, i8* %21, align 1
  %361 = xor i32 %349, %344
  %362 = xor i32 %361, %350
  %363 = lshr i32 %362, 4
  %364 = trunc i32 %363 to i8
  %365 = and i8 %364, 1
  store i8 %365, i8* %27, align 1
  %366 = icmp eq i32 %350, 0
  %367 = zext i1 %366 to i8
  store i8 %367, i8* %30, align 1
  %368 = lshr i32 %350, 31
  %369 = trunc i32 %368 to i8
  store i8 %369, i8* %33, align 1
  %370 = lshr i32 %344, 31
  %371 = lshr i32 %349, 31
  %372 = xor i32 %368, %370
  %373 = xor i32 %368, %371
  %374 = add nuw nsw i32 %372, %373
  %375 = icmp eq i32 %374, 2
  %376 = zext i1 %375 to i8
  store i8 %376, i8* %39, align 1
  %377 = add i64 %339, -36
  %378 = add i64 %341, 9
  store i64 %378, i64* %PC.i, align 8
  %379 = inttoptr i64 %377 to i32*
  store i32 %350, i32* %379, align 4
  %380 = load i64, i64* %RBP.i, align 8
  %381 = add i64 %380, -36
  %382 = load i64, i64* %PC.i, align 8
  %383 = add i64 %382, 3
  store i64 %383, i64* %PC.i, align 8
  %384 = inttoptr i64 %381 to i32*
  %385 = load i32, i32* %384, align 4
  %386 = zext i32 %385 to i64
  store i64 %386, i64* %RCX.i188, align 8
  %387 = add i64 %380, -44
  %388 = add i64 %382, 6
  store i64 %388, i64* %PC.i, align 8
  %389 = inttoptr i64 %387 to i32*
  %390 = load i32, i32* %389, align 4
  %391 = add i32 %390, %385
  %392 = zext i32 %391 to i64
  store i64 %392, i64* %RCX.i188, align 8
  %393 = icmp ult i32 %391, %385
  %394 = icmp ult i32 %391, %390
  %395 = or i1 %393, %394
  %396 = zext i1 %395 to i8
  store i8 %396, i8* %14, align 1
  %397 = and i32 %391, 255
  %398 = tail call i32 @llvm.ctpop.i32(i32 %397)
  %399 = trunc i32 %398 to i8
  %400 = and i8 %399, 1
  %401 = xor i8 %400, 1
  store i8 %401, i8* %21, align 1
  %402 = xor i32 %390, %385
  %403 = xor i32 %402, %391
  %404 = lshr i32 %403, 4
  %405 = trunc i32 %404 to i8
  %406 = and i8 %405, 1
  store i8 %406, i8* %27, align 1
  %407 = icmp eq i32 %391, 0
  %408 = zext i1 %407 to i8
  store i8 %408, i8* %30, align 1
  %409 = lshr i32 %391, 31
  %410 = trunc i32 %409 to i8
  store i8 %410, i8* %33, align 1
  %411 = lshr i32 %385, 31
  %412 = lshr i32 %390, 31
  %413 = xor i32 %409, %411
  %414 = xor i32 %409, %412
  %415 = add nuw nsw i32 %413, %414
  %416 = icmp eq i32 %415, 2
  %417 = zext i1 %416 to i8
  store i8 %417, i8* %39, align 1
  %418 = add i64 %380, -40
  %419 = add i64 %382, 9
  store i64 %419, i64* %PC.i, align 8
  %420 = inttoptr i64 %418 to i32*
  store i32 %391, i32* %420, align 4
  %421 = load i64, i64* %RBP.i, align 8
  %422 = add i64 %421, -16
  %423 = load i64, i64* %PC.i, align 8
  %424 = add i64 %423, 4
  store i64 %424, i64* %PC.i, align 8
  %425 = inttoptr i64 %422 to i64*
  %426 = load i64, i64* %425, align 8
  store i64 %426, i64* %RDX.i696, align 8
  %427 = add i64 %421, -28
  %428 = add i64 %423, 8
  store i64 %428, i64* %PC.i, align 8
  %429 = inttoptr i64 %427 to i32*
  %430 = load i32, i32* %429, align 4
  %431 = sext i32 %430 to i64
  store i64 %431, i64* %RSI.i699, align 8
  %432 = shl nsw i64 %431, 3
  %433 = add i64 %432, %426
  %434 = add i64 %423, 13
  store i64 %434, i64* %PC.i, align 8
  %435 = inttoptr i64 %433 to double*
  %436 = load double, double* %435, align 8
  store double %436, double* %262, align 1
  store double 0.000000e+00, double* %264, align 1
  %437 = add i64 %423, 17
  store i64 %437, i64* %PC.i, align 8
  %438 = load i64, i64* %425, align 8
  store i64 %438, i64* %RDX.i696, align 8
  %439 = add i64 %421, -32
  %440 = add i64 %423, 21
  store i64 %440, i64* %PC.i, align 8
  %441 = inttoptr i64 %439 to i32*
  %442 = load i32, i32* %441, align 4
  %443 = sext i32 %442 to i64
  store i64 %443, i64* %RSI.i699, align 8
  %444 = shl nsw i64 %443, 3
  %445 = add i64 %444, %438
  %446 = add i64 %423, 26
  store i64 %446, i64* %PC.i, align 8
  %447 = inttoptr i64 %445 to double*
  %448 = load double, double* %447, align 8
  %449 = fadd double %436, %448
  store double %449, double* %262, align 1
  store i64 0, i64* %263, align 1
  %450 = add i64 %421, -56
  %451 = add i64 %423, 31
  store i64 %451, i64* %PC.i, align 8
  %452 = inttoptr i64 %450 to double*
  store double %449, double* %452, align 8
  %453 = load i64, i64* %RBP.i, align 8
  %454 = add i64 %453, -16
  %455 = load i64, i64* %PC.i, align 8
  %456 = add i64 %455, 4
  store i64 %456, i64* %PC.i, align 8
  %457 = inttoptr i64 %454 to i64*
  %458 = load i64, i64* %457, align 8
  store i64 %458, i64* %RDX.i696, align 8
  %459 = add i64 %453, -28
  %460 = add i64 %455, 7
  store i64 %460, i64* %PC.i, align 8
  %461 = inttoptr i64 %459 to i32*
  %462 = load i32, i32* %461, align 4
  %463 = add i32 %462, 1
  %464 = zext i32 %463 to i64
  store i64 %464, i64* %RCX.i188, align 8
  %465 = icmp eq i32 %462, -1
  %466 = icmp eq i32 %463, 0
  %467 = or i1 %465, %466
  %468 = zext i1 %467 to i8
  store i8 %468, i8* %14, align 1
  %469 = and i32 %463, 255
  %470 = tail call i32 @llvm.ctpop.i32(i32 %469)
  %471 = trunc i32 %470 to i8
  %472 = and i8 %471, 1
  %473 = xor i8 %472, 1
  store i8 %473, i8* %21, align 1
  %474 = xor i32 %462, %463
  %475 = lshr i32 %474, 4
  %476 = trunc i32 %475 to i8
  %477 = and i8 %476, 1
  store i8 %477, i8* %27, align 1
  %478 = icmp eq i32 %463, 0
  %479 = zext i1 %478 to i8
  store i8 %479, i8* %30, align 1
  %480 = lshr i32 %463, 31
  %481 = trunc i32 %480 to i8
  store i8 %481, i8* %33, align 1
  %482 = lshr i32 %462, 31
  %483 = xor i32 %480, %482
  %484 = add nuw nsw i32 %483, %480
  %485 = icmp eq i32 %484, 2
  %486 = zext i1 %485 to i8
  store i8 %486, i8* %39, align 1
  %487 = sext i32 %463 to i64
  store i64 %487, i64* %RSI.i699, align 8
  %488 = shl nsw i64 %487, 3
  %489 = add i64 %488, %458
  %490 = add i64 %455, 18
  store i64 %490, i64* %PC.i, align 8
  %491 = inttoptr i64 %489 to i64*
  %492 = load i64, i64* %491, align 8
  %493 = load i64, i64* %RAX.i646.pre-phi, align 8
  %494 = xor i64 %493, %492
  store i64 %494, i64* %RDX.i696, align 8
  store i8 0, i8* %14, align 1
  %495 = trunc i64 %494 to i32
  %496 = and i32 %495, 255
  %497 = tail call i32 @llvm.ctpop.i32(i32 %496)
  %498 = trunc i32 %497 to i8
  %499 = and i8 %498, 1
  %500 = xor i8 %499, 1
  store i8 %500, i8* %21, align 1
  %501 = icmp eq i64 %494, 0
  %502 = zext i1 %501 to i8
  store i8 %502, i8* %30, align 1
  %503 = lshr i64 %494, 63
  %504 = trunc i64 %503 to i8
  store i8 %504, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 %494, i64* %265, align 1
  store i64 0, i64* %263, align 1
  %505 = add i64 %455, 35
  store i64 %505, i64* %PC.i, align 8
  %506 = load i64, i64* %457, align 8
  store i64 %506, i64* %RDX.i696, align 8
  %507 = add i64 %453, -32
  %508 = add i64 %455, 38
  store i64 %508, i64* %PC.i, align 8
  %509 = inttoptr i64 %507 to i32*
  %510 = load i32, i32* %509, align 4
  %511 = add i32 %510, 1
  %512 = zext i32 %511 to i64
  store i64 %512, i64* %RCX.i188, align 8
  %513 = icmp eq i32 %510, -1
  %514 = icmp eq i32 %511, 0
  %515 = or i1 %513, %514
  %516 = zext i1 %515 to i8
  store i8 %516, i8* %14, align 1
  %517 = and i32 %511, 255
  %518 = tail call i32 @llvm.ctpop.i32(i32 %517)
  %519 = trunc i32 %518 to i8
  %520 = and i8 %519, 1
  %521 = xor i8 %520, 1
  store i8 %521, i8* %21, align 1
  %522 = xor i32 %510, %511
  %523 = lshr i32 %522, 4
  %524 = trunc i32 %523 to i8
  %525 = and i8 %524, 1
  store i8 %525, i8* %27, align 1
  %526 = icmp eq i32 %511, 0
  %527 = zext i1 %526 to i8
  store i8 %527, i8* %30, align 1
  %528 = lshr i32 %511, 31
  %529 = trunc i32 %528 to i8
  store i8 %529, i8* %33, align 1
  %530 = lshr i32 %510, 31
  %531 = xor i32 %528, %530
  %532 = add nuw nsw i32 %531, %528
  %533 = icmp eq i32 %532, 2
  %534 = zext i1 %533 to i8
  store i8 %534, i8* %39, align 1
  %535 = sext i32 %511 to i64
  store i64 %535, i64* %RSI.i699, align 8
  %536 = shl nsw i64 %535, 3
  %537 = add i64 %536, %506
  %538 = add i64 %455, 49
  store i64 %538, i64* %PC.i, align 8
  %539 = bitcast i64 %494 to double
  %540 = inttoptr i64 %537 to double*
  %541 = load double, double* %540, align 8
  %542 = fsub double %539, %541
  store double %542, double* %262, align 1
  store i64 0, i64* %263, align 1
  %543 = load i64, i64* %RBP.i, align 8
  %544 = add i64 %543, -64
  %545 = add i64 %455, 54
  store i64 %545, i64* %PC.i, align 8
  %546 = inttoptr i64 %544 to double*
  store double %542, double* %546, align 8
  %547 = load i64, i64* %RBP.i, align 8
  %548 = add i64 %547, -16
  %549 = load i64, i64* %PC.i, align 8
  %550 = add i64 %549, 4
  store i64 %550, i64* %PC.i, align 8
  %551 = inttoptr i64 %548 to i64*
  %552 = load i64, i64* %551, align 8
  store i64 %552, i64* %RDX.i696, align 8
  %553 = add i64 %547, -28
  %554 = add i64 %549, 8
  store i64 %554, i64* %PC.i, align 8
  %555 = inttoptr i64 %553 to i32*
  %556 = load i32, i32* %555, align 4
  %557 = sext i32 %556 to i64
  store i64 %557, i64* %RSI.i699, align 8
  %558 = shl nsw i64 %557, 3
  %559 = add i64 %558, %552
  %560 = add i64 %549, 13
  store i64 %560, i64* %PC.i, align 8
  %561 = inttoptr i64 %559 to double*
  %562 = load double, double* %561, align 8
  store double %562, double* %262, align 1
  store double 0.000000e+00, double* %264, align 1
  %563 = add i64 %549, 17
  store i64 %563, i64* %PC.i, align 8
  %564 = load i64, i64* %551, align 8
  store i64 %564, i64* %RDX.i696, align 8
  %565 = add i64 %547, -32
  %566 = add i64 %549, 21
  store i64 %566, i64* %PC.i, align 8
  %567 = inttoptr i64 %565 to i32*
  %568 = load i32, i32* %567, align 4
  %569 = sext i32 %568 to i64
  store i64 %569, i64* %RSI.i699, align 8
  %570 = shl nsw i64 %569, 3
  %571 = add i64 %570, %564
  %572 = add i64 %549, 26
  store i64 %572, i64* %PC.i, align 8
  %573 = inttoptr i64 %571 to double*
  %574 = load double, double* %573, align 8
  %575 = fsub double %562, %574
  store double %575, double* %262, align 1
  store i64 0, i64* %263, align 1
  %576 = add i64 %547, -72
  %577 = add i64 %549, 31
  store i64 %577, i64* %PC.i, align 8
  %578 = inttoptr i64 %576 to double*
  store double %575, double* %578, align 8
  %579 = load i64, i64* %RBP.i, align 8
  %580 = add i64 %579, -16
  %581 = load i64, i64* %PC.i, align 8
  %582 = add i64 %581, 4
  store i64 %582, i64* %PC.i, align 8
  %583 = inttoptr i64 %580 to i64*
  %584 = load i64, i64* %583, align 8
  store i64 %584, i64* %RDX.i696, align 8
  %585 = add i64 %579, -28
  %586 = add i64 %581, 7
  store i64 %586, i64* %PC.i, align 8
  %587 = inttoptr i64 %585 to i32*
  %588 = load i32, i32* %587, align 4
  %589 = add i32 %588, 1
  %590 = zext i32 %589 to i64
  store i64 %590, i64* %RCX.i188, align 8
  %591 = icmp eq i32 %588, -1
  %592 = icmp eq i32 %589, 0
  %593 = or i1 %591, %592
  %594 = zext i1 %593 to i8
  store i8 %594, i8* %14, align 1
  %595 = and i32 %589, 255
  %596 = tail call i32 @llvm.ctpop.i32(i32 %595)
  %597 = trunc i32 %596 to i8
  %598 = and i8 %597, 1
  %599 = xor i8 %598, 1
  store i8 %599, i8* %21, align 1
  %600 = xor i32 %588, %589
  %601 = lshr i32 %600, 4
  %602 = trunc i32 %601 to i8
  %603 = and i8 %602, 1
  store i8 %603, i8* %27, align 1
  %604 = icmp eq i32 %589, 0
  %605 = zext i1 %604 to i8
  store i8 %605, i8* %30, align 1
  %606 = lshr i32 %589, 31
  %607 = trunc i32 %606 to i8
  store i8 %607, i8* %33, align 1
  %608 = lshr i32 %588, 31
  %609 = xor i32 %606, %608
  %610 = add nuw nsw i32 %609, %606
  %611 = icmp eq i32 %610, 2
  %612 = zext i1 %611 to i8
  store i8 %612, i8* %39, align 1
  %613 = sext i32 %589 to i64
  store i64 %613, i64* %RSI.i699, align 8
  %614 = shl nsw i64 %613, 3
  %615 = add i64 %614, %584
  %616 = add i64 %581, 18
  store i64 %616, i64* %PC.i, align 8
  %617 = inttoptr i64 %615 to i64*
  %618 = load i64, i64* %617, align 8
  %619 = load i64, i64* %RAX.i646.pre-phi, align 8
  %620 = xor i64 %619, %618
  store i64 %620, i64* %RDX.i696, align 8
  store i8 0, i8* %14, align 1
  %621 = trunc i64 %620 to i32
  %622 = and i32 %621, 255
  %623 = tail call i32 @llvm.ctpop.i32(i32 %622)
  %624 = trunc i32 %623 to i8
  %625 = and i8 %624, 1
  %626 = xor i8 %625, 1
  store i8 %626, i8* %21, align 1
  %627 = icmp eq i64 %620, 0
  %628 = zext i1 %627 to i8
  store i8 %628, i8* %30, align 1
  %629 = lshr i64 %620, 63
  %630 = trunc i64 %629 to i8
  store i8 %630, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 %620, i64* %265, align 1
  store i64 0, i64* %263, align 1
  %631 = add i64 %581, 35
  store i64 %631, i64* %PC.i, align 8
  %632 = load i64, i64* %583, align 8
  store i64 %632, i64* %RAX.i646.pre-phi, align 8
  %633 = add i64 %579, -32
  %634 = add i64 %581, 38
  store i64 %634, i64* %PC.i, align 8
  %635 = inttoptr i64 %633 to i32*
  %636 = load i32, i32* %635, align 4
  %637 = add i32 %636, 1
  %638 = zext i32 %637 to i64
  store i64 %638, i64* %RCX.i188, align 8
  %639 = icmp eq i32 %636, -1
  %640 = icmp eq i32 %637, 0
  %641 = or i1 %639, %640
  %642 = zext i1 %641 to i8
  store i8 %642, i8* %14, align 1
  %643 = and i32 %637, 255
  %644 = tail call i32 @llvm.ctpop.i32(i32 %643)
  %645 = trunc i32 %644 to i8
  %646 = and i8 %645, 1
  %647 = xor i8 %646, 1
  store i8 %647, i8* %21, align 1
  %648 = xor i32 %636, %637
  %649 = lshr i32 %648, 4
  %650 = trunc i32 %649 to i8
  %651 = and i8 %650, 1
  store i8 %651, i8* %27, align 1
  %652 = icmp eq i32 %637, 0
  %653 = zext i1 %652 to i8
  store i8 %653, i8* %30, align 1
  %654 = lshr i32 %637, 31
  %655 = trunc i32 %654 to i8
  store i8 %655, i8* %33, align 1
  %656 = lshr i32 %636, 31
  %657 = xor i32 %654, %656
  %658 = add nuw nsw i32 %657, %654
  %659 = icmp eq i32 %658, 2
  %660 = zext i1 %659 to i8
  store i8 %660, i8* %39, align 1
  %661 = sext i32 %637 to i64
  store i64 %661, i64* %RDX.i696, align 8
  %662 = shl nsw i64 %661, 3
  %663 = add i64 %662, %632
  %664 = add i64 %581, 49
  store i64 %664, i64* %PC.i, align 8
  %665 = bitcast i64 %620 to double
  %666 = inttoptr i64 %663 to double*
  %667 = load double, double* %666, align 8
  %668 = fadd double %665, %667
  store double %668, double* %262, align 1
  store i64 0, i64* %263, align 1
  %669 = load i64, i64* %RBP.i, align 8
  %670 = add i64 %669, -80
  %671 = add i64 %581, 54
  store i64 %671, i64* %PC.i, align 8
  %672 = inttoptr i64 %670 to double*
  store double %668, double* %672, align 8
  %673 = load i64, i64* %RBP.i, align 8
  %674 = add i64 %673, -16
  %675 = load i64, i64* %PC.i, align 8
  %676 = add i64 %675, 4
  store i64 %676, i64* %PC.i, align 8
  %677 = inttoptr i64 %674 to i64*
  %678 = load i64, i64* %677, align 8
  store i64 %678, i64* %RAX.i646.pre-phi, align 8
  %679 = add i64 %673, -36
  %680 = add i64 %675, 8
  store i64 %680, i64* %PC.i, align 8
  %681 = inttoptr i64 %679 to i32*
  %682 = load i32, i32* %681, align 4
  %683 = sext i32 %682 to i64
  store i64 %683, i64* %RDX.i696, align 8
  %684 = shl nsw i64 %683, 3
  %685 = add i64 %684, %678
  %686 = add i64 %675, 13
  store i64 %686, i64* %PC.i, align 8
  %687 = inttoptr i64 %685 to double*
  %688 = load double, double* %687, align 8
  store double %688, double* %262, align 1
  store double 0.000000e+00, double* %264, align 1
  %689 = add i64 %675, 17
  store i64 %689, i64* %PC.i, align 8
  %690 = load i64, i64* %677, align 8
  store i64 %690, i64* %RAX.i646.pre-phi, align 8
  %691 = add i64 %673, -40
  %692 = add i64 %675, 21
  store i64 %692, i64* %PC.i, align 8
  %693 = inttoptr i64 %691 to i32*
  %694 = load i32, i32* %693, align 4
  %695 = sext i32 %694 to i64
  store i64 %695, i64* %RDX.i696, align 8
  %696 = shl nsw i64 %695, 3
  %697 = add i64 %696, %690
  %698 = add i64 %675, 26
  store i64 %698, i64* %PC.i, align 8
  %699 = inttoptr i64 %697 to double*
  %700 = load double, double* %699, align 8
  %701 = fadd double %688, %700
  store double %701, double* %262, align 1
  store i64 0, i64* %263, align 1
  %702 = add i64 %673, -88
  %703 = add i64 %675, 31
  store i64 %703, i64* %PC.i, align 8
  %704 = inttoptr i64 %702 to double*
  store double %701, double* %704, align 8
  %705 = load i64, i64* %RBP.i, align 8
  %706 = add i64 %705, -16
  %707 = load i64, i64* %PC.i, align 8
  %708 = add i64 %707, 4
  store i64 %708, i64* %PC.i, align 8
  %709 = inttoptr i64 %706 to i64*
  %710 = load i64, i64* %709, align 8
  store i64 %710, i64* %RAX.i646.pre-phi, align 8
  %711 = add i64 %705, -36
  %712 = add i64 %707, 7
  store i64 %712, i64* %PC.i, align 8
  %713 = inttoptr i64 %711 to i32*
  %714 = load i32, i32* %713, align 4
  %715 = add i32 %714, 1
  %716 = zext i32 %715 to i64
  store i64 %716, i64* %RCX.i188, align 8
  %717 = icmp eq i32 %714, -1
  %718 = icmp eq i32 %715, 0
  %719 = or i1 %717, %718
  %720 = zext i1 %719 to i8
  store i8 %720, i8* %14, align 1
  %721 = and i32 %715, 255
  %722 = tail call i32 @llvm.ctpop.i32(i32 %721)
  %723 = trunc i32 %722 to i8
  %724 = and i8 %723, 1
  %725 = xor i8 %724, 1
  store i8 %725, i8* %21, align 1
  %726 = xor i32 %714, %715
  %727 = lshr i32 %726, 4
  %728 = trunc i32 %727 to i8
  %729 = and i8 %728, 1
  store i8 %729, i8* %27, align 1
  %730 = icmp eq i32 %715, 0
  %731 = zext i1 %730 to i8
  store i8 %731, i8* %30, align 1
  %732 = lshr i32 %715, 31
  %733 = trunc i32 %732 to i8
  store i8 %733, i8* %33, align 1
  %734 = lshr i32 %714, 31
  %735 = xor i32 %732, %734
  %736 = add nuw nsw i32 %735, %732
  %737 = icmp eq i32 %736, 2
  %738 = zext i1 %737 to i8
  store i8 %738, i8* %39, align 1
  %739 = sext i32 %715 to i64
  store i64 %739, i64* %RDX.i696, align 8
  %740 = shl nsw i64 %739, 3
  %741 = add i64 %740, %710
  %742 = add i64 %707, 18
  store i64 %742, i64* %PC.i, align 8
  %743 = inttoptr i64 %741 to double*
  %744 = load double, double* %743, align 8
  store double %744, double* %262, align 1
  store double 0.000000e+00, double* %264, align 1
  %745 = add i64 %707, 22
  store i64 %745, i64* %PC.i, align 8
  %746 = load i64, i64* %709, align 8
  store i64 %746, i64* %RAX.i646.pre-phi, align 8
  %747 = add i64 %705, -40
  %748 = add i64 %707, 25
  store i64 %748, i64* %PC.i, align 8
  %749 = inttoptr i64 %747 to i32*
  %750 = load i32, i32* %749, align 4
  %751 = add i32 %750, 1
  %752 = zext i32 %751 to i64
  store i64 %752, i64* %RCX.i188, align 8
  %753 = icmp eq i32 %750, -1
  %754 = icmp eq i32 %751, 0
  %755 = or i1 %753, %754
  %756 = zext i1 %755 to i8
  store i8 %756, i8* %14, align 1
  %757 = and i32 %751, 255
  %758 = tail call i32 @llvm.ctpop.i32(i32 %757)
  %759 = trunc i32 %758 to i8
  %760 = and i8 %759, 1
  %761 = xor i8 %760, 1
  store i8 %761, i8* %21, align 1
  %762 = xor i32 %750, %751
  %763 = lshr i32 %762, 4
  %764 = trunc i32 %763 to i8
  %765 = and i8 %764, 1
  store i8 %765, i8* %27, align 1
  %766 = icmp eq i32 %751, 0
  %767 = zext i1 %766 to i8
  store i8 %767, i8* %30, align 1
  %768 = lshr i32 %751, 31
  %769 = trunc i32 %768 to i8
  store i8 %769, i8* %33, align 1
  %770 = lshr i32 %750, 31
  %771 = xor i32 %768, %770
  %772 = add nuw nsw i32 %771, %768
  %773 = icmp eq i32 %772, 2
  %774 = zext i1 %773 to i8
  store i8 %774, i8* %39, align 1
  %775 = sext i32 %751 to i64
  store i64 %775, i64* %RDX.i696, align 8
  %776 = shl nsw i64 %775, 3
  %777 = add i64 %776, %746
  %778 = add i64 %707, 36
  store i64 %778, i64* %PC.i, align 8
  %779 = inttoptr i64 %777 to double*
  %780 = load double, double* %779, align 8
  %781 = fadd double %744, %780
  store double %781, double* %262, align 1
  store i64 0, i64* %263, align 1
  %782 = load i64, i64* %RBP.i, align 8
  %783 = add i64 %782, -96
  %784 = add i64 %707, 41
  store i64 %784, i64* %PC.i, align 8
  %785 = inttoptr i64 %783 to double*
  store double %781, double* %785, align 8
  %786 = load i64, i64* %RBP.i, align 8
  %787 = add i64 %786, -16
  %788 = load i64, i64* %PC.i, align 8
  %789 = add i64 %788, 4
  store i64 %789, i64* %PC.i, align 8
  %790 = inttoptr i64 %787 to i64*
  %791 = load i64, i64* %790, align 8
  store i64 %791, i64* %RAX.i646.pre-phi, align 8
  %792 = add i64 %786, -36
  %793 = add i64 %788, 8
  store i64 %793, i64* %PC.i, align 8
  %794 = inttoptr i64 %792 to i32*
  %795 = load i32, i32* %794, align 4
  %796 = sext i32 %795 to i64
  store i64 %796, i64* %RDX.i696, align 8
  %797 = shl nsw i64 %796, 3
  %798 = add i64 %797, %791
  %799 = add i64 %788, 13
  store i64 %799, i64* %PC.i, align 8
  %800 = inttoptr i64 %798 to double*
  %801 = load double, double* %800, align 8
  store double %801, double* %262, align 1
  store double 0.000000e+00, double* %264, align 1
  %802 = add i64 %788, 17
  store i64 %802, i64* %PC.i, align 8
  %803 = load i64, i64* %790, align 8
  store i64 %803, i64* %RAX.i646.pre-phi, align 8
  %804 = add i64 %786, -40
  %805 = add i64 %788, 21
  store i64 %805, i64* %PC.i, align 8
  %806 = inttoptr i64 %804 to i32*
  %807 = load i32, i32* %806, align 4
  %808 = sext i32 %807 to i64
  store i64 %808, i64* %RDX.i696, align 8
  %809 = shl nsw i64 %808, 3
  %810 = add i64 %809, %803
  %811 = add i64 %788, 26
  store i64 %811, i64* %PC.i, align 8
  %812 = inttoptr i64 %810 to double*
  %813 = load double, double* %812, align 8
  %814 = fsub double %801, %813
  store double %814, double* %262, align 1
  store i64 0, i64* %263, align 1
  %815 = add i64 %786, -104
  %816 = add i64 %788, 31
  store i64 %816, i64* %PC.i, align 8
  %817 = inttoptr i64 %815 to double*
  store double %814, double* %817, align 8
  %818 = load i64, i64* %RBP.i, align 8
  %819 = add i64 %818, -16
  %820 = load i64, i64* %PC.i, align 8
  %821 = add i64 %820, 4
  store i64 %821, i64* %PC.i, align 8
  %822 = inttoptr i64 %819 to i64*
  %823 = load i64, i64* %822, align 8
  store i64 %823, i64* %RAX.i646.pre-phi, align 8
  %824 = add i64 %818, -36
  %825 = add i64 %820, 7
  store i64 %825, i64* %PC.i, align 8
  %826 = inttoptr i64 %824 to i32*
  %827 = load i32, i32* %826, align 4
  %828 = add i32 %827, 1
  %829 = zext i32 %828 to i64
  store i64 %829, i64* %RCX.i188, align 8
  %830 = icmp eq i32 %827, -1
  %831 = icmp eq i32 %828, 0
  %832 = or i1 %830, %831
  %833 = zext i1 %832 to i8
  store i8 %833, i8* %14, align 1
  %834 = and i32 %828, 255
  %835 = tail call i32 @llvm.ctpop.i32(i32 %834)
  %836 = trunc i32 %835 to i8
  %837 = and i8 %836, 1
  %838 = xor i8 %837, 1
  store i8 %838, i8* %21, align 1
  %839 = xor i32 %827, %828
  %840 = lshr i32 %839, 4
  %841 = trunc i32 %840 to i8
  %842 = and i8 %841, 1
  store i8 %842, i8* %27, align 1
  %843 = icmp eq i32 %828, 0
  %844 = zext i1 %843 to i8
  store i8 %844, i8* %30, align 1
  %845 = lshr i32 %828, 31
  %846 = trunc i32 %845 to i8
  store i8 %846, i8* %33, align 1
  %847 = lshr i32 %827, 31
  %848 = xor i32 %845, %847
  %849 = add nuw nsw i32 %848, %845
  %850 = icmp eq i32 %849, 2
  %851 = zext i1 %850 to i8
  store i8 %851, i8* %39, align 1
  %852 = sext i32 %828 to i64
  store i64 %852, i64* %RDX.i696, align 8
  %853 = shl nsw i64 %852, 3
  %854 = add i64 %853, %823
  %855 = add i64 %820, 18
  store i64 %855, i64* %PC.i, align 8
  %856 = inttoptr i64 %854 to double*
  %857 = load double, double* %856, align 8
  store double %857, double* %262, align 1
  store double 0.000000e+00, double* %264, align 1
  %858 = add i64 %820, 22
  store i64 %858, i64* %PC.i, align 8
  %859 = load i64, i64* %822, align 8
  store i64 %859, i64* %RAX.i646.pre-phi, align 8
  %860 = add i64 %818, -40
  %861 = add i64 %820, 25
  store i64 %861, i64* %PC.i, align 8
  %862 = inttoptr i64 %860 to i32*
  %863 = load i32, i32* %862, align 4
  %864 = add i32 %863, 1
  %865 = zext i32 %864 to i64
  store i64 %865, i64* %RCX.i188, align 8
  %866 = icmp eq i32 %863, -1
  %867 = icmp eq i32 %864, 0
  %868 = or i1 %866, %867
  %869 = zext i1 %868 to i8
  store i8 %869, i8* %14, align 1
  %870 = and i32 %864, 255
  %871 = tail call i32 @llvm.ctpop.i32(i32 %870)
  %872 = trunc i32 %871 to i8
  %873 = and i8 %872, 1
  %874 = xor i8 %873, 1
  store i8 %874, i8* %21, align 1
  %875 = xor i32 %863, %864
  %876 = lshr i32 %875, 4
  %877 = trunc i32 %876 to i8
  %878 = and i8 %877, 1
  store i8 %878, i8* %27, align 1
  %879 = icmp eq i32 %864, 0
  %880 = zext i1 %879 to i8
  store i8 %880, i8* %30, align 1
  %881 = lshr i32 %864, 31
  %882 = trunc i32 %881 to i8
  store i8 %882, i8* %33, align 1
  %883 = lshr i32 %863, 31
  %884 = xor i32 %881, %883
  %885 = add nuw nsw i32 %884, %881
  %886 = icmp eq i32 %885, 2
  %887 = zext i1 %886 to i8
  store i8 %887, i8* %39, align 1
  %888 = sext i32 %864 to i64
  store i64 %888, i64* %RDX.i696, align 8
  %889 = shl nsw i64 %888, 3
  %890 = add i64 %889, %859
  %891 = add i64 %820, 36
  store i64 %891, i64* %PC.i, align 8
  %892 = inttoptr i64 %890 to double*
  %893 = load double, double* %892, align 8
  %894 = fsub double %857, %893
  store double %894, double* %262, align 1
  store i64 0, i64* %263, align 1
  %895 = load i64, i64* %RBP.i, align 8
  %896 = add i64 %895, -112
  %897 = add i64 %820, 41
  store i64 %897, i64* %PC.i, align 8
  %898 = inttoptr i64 %896 to double*
  store double %894, double* %898, align 8
  %899 = load i64, i64* %RBP.i, align 8
  %900 = add i64 %899, -56
  %901 = load i64, i64* %PC.i, align 8
  %902 = add i64 %901, 5
  store i64 %902, i64* %PC.i, align 8
  %903 = inttoptr i64 %900 to double*
  %904 = load double, double* %903, align 8
  store double %904, double* %262, align 1
  store double 0.000000e+00, double* %264, align 1
  %905 = add i64 %899, -88
  %906 = add i64 %901, 10
  store i64 %906, i64* %PC.i, align 8
  %907 = inttoptr i64 %905 to double*
  %908 = load double, double* %907, align 8
  %909 = fadd double %904, %908
  store double %909, double* %262, align 1
  store i64 0, i64* %263, align 1
  %910 = add i64 %899, -16
  %911 = add i64 %901, 14
  store i64 %911, i64* %PC.i, align 8
  %912 = inttoptr i64 %910 to i64*
  %913 = load i64, i64* %912, align 8
  store i64 %913, i64* %RAX.i646.pre-phi, align 8
  %914 = add i64 %899, -28
  %915 = add i64 %901, 18
  store i64 %915, i64* %PC.i, align 8
  %916 = inttoptr i64 %914 to i32*
  %917 = load i32, i32* %916, align 4
  %918 = sext i32 %917 to i64
  store i64 %918, i64* %RDX.i696, align 8
  %919 = shl nsw i64 %918, 3
  %920 = add i64 %919, %913
  %921 = add i64 %901, 23
  store i64 %921, i64* %PC.i, align 8
  %922 = inttoptr i64 %920 to double*
  store double %909, double* %922, align 8
  %923 = load i64, i64* %RBP.i, align 8
  %924 = add i64 %923, -64
  %925 = load i64, i64* %PC.i, align 8
  %926 = add i64 %925, 5
  store i64 %926, i64* %PC.i, align 8
  %927 = inttoptr i64 %924 to double*
  %928 = load double, double* %927, align 8
  store double %928, double* %262, align 1
  store double 0.000000e+00, double* %264, align 1
  %929 = add i64 %923, -96
  %930 = add i64 %925, 10
  store i64 %930, i64* %PC.i, align 8
  %931 = inttoptr i64 %929 to double*
  %932 = load double, double* %931, align 8
  %933 = fsub double %928, %932
  store double %933, double* %262, align 1
  store i64 0, i64* %263, align 1
  %934 = add i64 %923, -16
  %935 = add i64 %925, 14
  store i64 %935, i64* %PC.i, align 8
  %936 = inttoptr i64 %934 to i64*
  %937 = load i64, i64* %936, align 8
  store i64 %937, i64* %RAX.i646.pre-phi, align 8
  %938 = add i64 %923, -28
  %939 = add i64 %925, 17
  store i64 %939, i64* %PC.i, align 8
  %940 = inttoptr i64 %938 to i32*
  %941 = load i32, i32* %940, align 4
  %942 = add i32 %941, 1
  %943 = zext i32 %942 to i64
  store i64 %943, i64* %RCX.i188, align 8
  %944 = icmp eq i32 %941, -1
  %945 = icmp eq i32 %942, 0
  %946 = or i1 %944, %945
  %947 = zext i1 %946 to i8
  store i8 %947, i8* %14, align 1
  %948 = and i32 %942, 255
  %949 = tail call i32 @llvm.ctpop.i32(i32 %948)
  %950 = trunc i32 %949 to i8
  %951 = and i8 %950, 1
  %952 = xor i8 %951, 1
  store i8 %952, i8* %21, align 1
  %953 = xor i32 %941, %942
  %954 = lshr i32 %953, 4
  %955 = trunc i32 %954 to i8
  %956 = and i8 %955, 1
  store i8 %956, i8* %27, align 1
  %957 = icmp eq i32 %942, 0
  %958 = zext i1 %957 to i8
  store i8 %958, i8* %30, align 1
  %959 = lshr i32 %942, 31
  %960 = trunc i32 %959 to i8
  store i8 %960, i8* %33, align 1
  %961 = lshr i32 %941, 31
  %962 = xor i32 %959, %961
  %963 = add nuw nsw i32 %962, %959
  %964 = icmp eq i32 %963, 2
  %965 = zext i1 %964 to i8
  store i8 %965, i8* %39, align 1
  %966 = sext i32 %942 to i64
  store i64 %966, i64* %RDX.i696, align 8
  %967 = shl nsw i64 %966, 3
  %968 = add i64 %967, %937
  %969 = add i64 %925, 28
  store i64 %969, i64* %PC.i, align 8
  %970 = inttoptr i64 %968 to double*
  store double %933, double* %970, align 8
  %971 = load i64, i64* %RBP.i, align 8
  %972 = add i64 %971, -56
  %973 = load i64, i64* %PC.i, align 8
  %974 = add i64 %973, 5
  store i64 %974, i64* %PC.i, align 8
  %975 = inttoptr i64 %972 to double*
  %976 = load double, double* %975, align 8
  store double %976, double* %262, align 1
  store double 0.000000e+00, double* %264, align 1
  %977 = add i64 %971, -88
  %978 = add i64 %973, 10
  store i64 %978, i64* %PC.i, align 8
  %979 = inttoptr i64 %977 to double*
  %980 = load double, double* %979, align 8
  %981 = fsub double %976, %980
  store double %981, double* %262, align 1
  store i64 0, i64* %263, align 1
  %982 = add i64 %971, -16
  %983 = add i64 %973, 14
  store i64 %983, i64* %PC.i, align 8
  %984 = inttoptr i64 %982 to i64*
  %985 = load i64, i64* %984, align 8
  store i64 %985, i64* %RAX.i646.pre-phi, align 8
  %986 = add i64 %971, -36
  %987 = add i64 %973, 18
  store i64 %987, i64* %PC.i, align 8
  %988 = inttoptr i64 %986 to i32*
  %989 = load i32, i32* %988, align 4
  %990 = sext i32 %989 to i64
  store i64 %990, i64* %RDX.i696, align 8
  %991 = shl nsw i64 %990, 3
  %992 = add i64 %991, %985
  %993 = add i64 %973, 23
  store i64 %993, i64* %PC.i, align 8
  %994 = inttoptr i64 %992 to double*
  store double %981, double* %994, align 8
  %995 = load i64, i64* %RBP.i, align 8
  %996 = add i64 %995, -64
  %997 = load i64, i64* %PC.i, align 8
  %998 = add i64 %997, 5
  store i64 %998, i64* %PC.i, align 8
  %999 = inttoptr i64 %996 to double*
  %1000 = load double, double* %999, align 8
  store double %1000, double* %262, align 1
  store double 0.000000e+00, double* %264, align 1
  %1001 = add i64 %995, -96
  %1002 = add i64 %997, 10
  store i64 %1002, i64* %PC.i, align 8
  %1003 = inttoptr i64 %1001 to double*
  %1004 = load double, double* %1003, align 8
  %1005 = fadd double %1000, %1004
  store double %1005, double* %262, align 1
  store i64 0, i64* %263, align 1
  %1006 = add i64 %995, -16
  %1007 = add i64 %997, 14
  store i64 %1007, i64* %PC.i, align 8
  %1008 = inttoptr i64 %1006 to i64*
  %1009 = load i64, i64* %1008, align 8
  store i64 %1009, i64* %RAX.i646.pre-phi, align 8
  %1010 = add i64 %995, -36
  %1011 = add i64 %997, 17
  store i64 %1011, i64* %PC.i, align 8
  %1012 = inttoptr i64 %1010 to i32*
  %1013 = load i32, i32* %1012, align 4
  %1014 = add i32 %1013, 1
  %1015 = zext i32 %1014 to i64
  store i64 %1015, i64* %RCX.i188, align 8
  %1016 = icmp eq i32 %1013, -1
  %1017 = icmp eq i32 %1014, 0
  %1018 = or i1 %1016, %1017
  %1019 = zext i1 %1018 to i8
  store i8 %1019, i8* %14, align 1
  %1020 = and i32 %1014, 255
  %1021 = tail call i32 @llvm.ctpop.i32(i32 %1020)
  %1022 = trunc i32 %1021 to i8
  %1023 = and i8 %1022, 1
  %1024 = xor i8 %1023, 1
  store i8 %1024, i8* %21, align 1
  %1025 = xor i32 %1013, %1014
  %1026 = lshr i32 %1025, 4
  %1027 = trunc i32 %1026 to i8
  %1028 = and i8 %1027, 1
  store i8 %1028, i8* %27, align 1
  %1029 = icmp eq i32 %1014, 0
  %1030 = zext i1 %1029 to i8
  store i8 %1030, i8* %30, align 1
  %1031 = lshr i32 %1014, 31
  %1032 = trunc i32 %1031 to i8
  store i8 %1032, i8* %33, align 1
  %1033 = lshr i32 %1013, 31
  %1034 = xor i32 %1031, %1033
  %1035 = add nuw nsw i32 %1034, %1031
  %1036 = icmp eq i32 %1035, 2
  %1037 = zext i1 %1036 to i8
  store i8 %1037, i8* %39, align 1
  %1038 = sext i32 %1014 to i64
  store i64 %1038, i64* %RDX.i696, align 8
  %1039 = shl nsw i64 %1038, 3
  %1040 = add i64 %1039, %1009
  %1041 = add i64 %997, 28
  store i64 %1041, i64* %PC.i, align 8
  %1042 = inttoptr i64 %1040 to double*
  store double %1005, double* %1042, align 8
  %1043 = load i64, i64* %RBP.i, align 8
  %1044 = add i64 %1043, -72
  %1045 = load i64, i64* %PC.i, align 8
  %1046 = add i64 %1045, 5
  store i64 %1046, i64* %PC.i, align 8
  %1047 = inttoptr i64 %1044 to double*
  %1048 = load double, double* %1047, align 8
  store double %1048, double* %262, align 1
  store double 0.000000e+00, double* %264, align 1
  %1049 = add i64 %1043, -112
  %1050 = add i64 %1045, 10
  store i64 %1050, i64* %PC.i, align 8
  %1051 = inttoptr i64 %1049 to double*
  %1052 = load double, double* %1051, align 8
  %1053 = fsub double %1048, %1052
  store double %1053, double* %262, align 1
  store i64 0, i64* %263, align 1
  %1054 = add i64 %1043, -16
  %1055 = add i64 %1045, 14
  store i64 %1055, i64* %PC.i, align 8
  %1056 = inttoptr i64 %1054 to i64*
  %1057 = load i64, i64* %1056, align 8
  store i64 %1057, i64* %RAX.i646.pre-phi, align 8
  %1058 = add i64 %1043, -32
  %1059 = add i64 %1045, 18
  store i64 %1059, i64* %PC.i, align 8
  %1060 = inttoptr i64 %1058 to i32*
  %1061 = load i32, i32* %1060, align 4
  %1062 = sext i32 %1061 to i64
  store i64 %1062, i64* %RDX.i696, align 8
  %1063 = shl nsw i64 %1062, 3
  %1064 = add i64 %1063, %1057
  %1065 = add i64 %1045, 23
  store i64 %1065, i64* %PC.i, align 8
  %1066 = inttoptr i64 %1064 to double*
  store double %1053, double* %1066, align 8
  %1067 = load i64, i64* %RBP.i, align 8
  %1068 = add i64 %1067, -80
  %1069 = load i64, i64* %PC.i, align 8
  %1070 = add i64 %1069, 5
  store i64 %1070, i64* %PC.i, align 8
  %1071 = inttoptr i64 %1068 to double*
  %1072 = load double, double* %1071, align 8
  store double %1072, double* %262, align 1
  store double 0.000000e+00, double* %264, align 1
  %1073 = add i64 %1067, -104
  %1074 = add i64 %1069, 10
  store i64 %1074, i64* %PC.i, align 8
  %1075 = inttoptr i64 %1073 to double*
  %1076 = load double, double* %1075, align 8
  %1077 = fsub double %1072, %1076
  store double %1077, double* %262, align 1
  store i64 0, i64* %263, align 1
  %1078 = add i64 %1067, -16
  %1079 = add i64 %1069, 14
  store i64 %1079, i64* %PC.i, align 8
  %1080 = inttoptr i64 %1078 to i64*
  %1081 = load i64, i64* %1080, align 8
  store i64 %1081, i64* %RAX.i646.pre-phi, align 8
  %1082 = add i64 %1067, -32
  %1083 = add i64 %1069, 17
  store i64 %1083, i64* %PC.i, align 8
  %1084 = inttoptr i64 %1082 to i32*
  %1085 = load i32, i32* %1084, align 4
  %1086 = add i32 %1085, 1
  %1087 = zext i32 %1086 to i64
  store i64 %1087, i64* %RCX.i188, align 8
  %1088 = icmp eq i32 %1085, -1
  %1089 = icmp eq i32 %1086, 0
  %1090 = or i1 %1088, %1089
  %1091 = zext i1 %1090 to i8
  store i8 %1091, i8* %14, align 1
  %1092 = and i32 %1086, 255
  %1093 = tail call i32 @llvm.ctpop.i32(i32 %1092)
  %1094 = trunc i32 %1093 to i8
  %1095 = and i8 %1094, 1
  %1096 = xor i8 %1095, 1
  store i8 %1096, i8* %21, align 1
  %1097 = xor i32 %1085, %1086
  %1098 = lshr i32 %1097, 4
  %1099 = trunc i32 %1098 to i8
  %1100 = and i8 %1099, 1
  store i8 %1100, i8* %27, align 1
  %1101 = icmp eq i32 %1086, 0
  %1102 = zext i1 %1101 to i8
  store i8 %1102, i8* %30, align 1
  %1103 = lshr i32 %1086, 31
  %1104 = trunc i32 %1103 to i8
  store i8 %1104, i8* %33, align 1
  %1105 = lshr i32 %1085, 31
  %1106 = xor i32 %1103, %1105
  %1107 = add nuw nsw i32 %1106, %1103
  %1108 = icmp eq i32 %1107, 2
  %1109 = zext i1 %1108 to i8
  store i8 %1109, i8* %39, align 1
  %1110 = sext i32 %1086 to i64
  store i64 %1110, i64* %RDX.i696, align 8
  %1111 = shl nsw i64 %1110, 3
  %1112 = add i64 %1111, %1081
  %1113 = add i64 %1069, 28
  store i64 %1113, i64* %PC.i, align 8
  %1114 = inttoptr i64 %1112 to double*
  store double %1077, double* %1114, align 8
  %1115 = load i64, i64* %RBP.i, align 8
  %1116 = add i64 %1115, -72
  %1117 = load i64, i64* %PC.i, align 8
  %1118 = add i64 %1117, 5
  store i64 %1118, i64* %PC.i, align 8
  %1119 = inttoptr i64 %1116 to double*
  %1120 = load double, double* %1119, align 8
  store double %1120, double* %262, align 1
  store double 0.000000e+00, double* %264, align 1
  %1121 = add i64 %1115, -112
  %1122 = add i64 %1117, 10
  store i64 %1122, i64* %PC.i, align 8
  %1123 = inttoptr i64 %1121 to double*
  %1124 = load double, double* %1123, align 8
  %1125 = fadd double %1120, %1124
  store double %1125, double* %262, align 1
  store i64 0, i64* %263, align 1
  %1126 = add i64 %1115, -16
  %1127 = add i64 %1117, 14
  store i64 %1127, i64* %PC.i, align 8
  %1128 = inttoptr i64 %1126 to i64*
  %1129 = load i64, i64* %1128, align 8
  store i64 %1129, i64* %RAX.i646.pre-phi, align 8
  %1130 = add i64 %1115, -40
  %1131 = add i64 %1117, 18
  store i64 %1131, i64* %PC.i, align 8
  %1132 = inttoptr i64 %1130 to i32*
  %1133 = load i32, i32* %1132, align 4
  %1134 = sext i32 %1133 to i64
  store i64 %1134, i64* %RDX.i696, align 8
  %1135 = shl nsw i64 %1134, 3
  %1136 = add i64 %1135, %1129
  %1137 = add i64 %1117, 23
  store i64 %1137, i64* %PC.i, align 8
  %1138 = inttoptr i64 %1136 to double*
  store double %1125, double* %1138, align 8
  %1139 = load i64, i64* %RBP.i, align 8
  %1140 = add i64 %1139, -80
  %1141 = load i64, i64* %PC.i, align 8
  %1142 = add i64 %1141, 5
  store i64 %1142, i64* %PC.i, align 8
  %1143 = inttoptr i64 %1140 to double*
  %1144 = load double, double* %1143, align 8
  store double %1144, double* %262, align 1
  store double 0.000000e+00, double* %264, align 1
  %1145 = add i64 %1139, -104
  %1146 = add i64 %1141, 10
  store i64 %1146, i64* %PC.i, align 8
  %1147 = inttoptr i64 %1145 to double*
  %1148 = load double, double* %1147, align 8
  %1149 = fadd double %1144, %1148
  store double %1149, double* %262, align 1
  store i64 0, i64* %263, align 1
  %1150 = add i64 %1139, -16
  %1151 = add i64 %1141, 14
  store i64 %1151, i64* %PC.i, align 8
  %1152 = inttoptr i64 %1150 to i64*
  %1153 = load i64, i64* %1152, align 8
  store i64 %1153, i64* %RAX.i646.pre-phi, align 8
  %1154 = add i64 %1139, -40
  %1155 = add i64 %1141, 17
  store i64 %1155, i64* %PC.i, align 8
  %1156 = inttoptr i64 %1154 to i32*
  %1157 = load i32, i32* %1156, align 4
  %1158 = add i32 %1157, 1
  %1159 = zext i32 %1158 to i64
  store i64 %1159, i64* %RCX.i188, align 8
  %1160 = icmp eq i32 %1157, -1
  %1161 = icmp eq i32 %1158, 0
  %1162 = or i1 %1160, %1161
  %1163 = zext i1 %1162 to i8
  store i8 %1163, i8* %14, align 1
  %1164 = and i32 %1158, 255
  %1165 = tail call i32 @llvm.ctpop.i32(i32 %1164)
  %1166 = trunc i32 %1165 to i8
  %1167 = and i8 %1166, 1
  %1168 = xor i8 %1167, 1
  store i8 %1168, i8* %21, align 1
  %1169 = xor i32 %1157, %1158
  %1170 = lshr i32 %1169, 4
  %1171 = trunc i32 %1170 to i8
  %1172 = and i8 %1171, 1
  store i8 %1172, i8* %27, align 1
  %1173 = icmp eq i32 %1158, 0
  %1174 = zext i1 %1173 to i8
  store i8 %1174, i8* %30, align 1
  %1175 = lshr i32 %1158, 31
  %1176 = trunc i32 %1175 to i8
  store i8 %1176, i8* %33, align 1
  %1177 = lshr i32 %1157, 31
  %1178 = xor i32 %1175, %1177
  %1179 = add nuw nsw i32 %1178, %1175
  %1180 = icmp eq i32 %1179, 2
  %1181 = zext i1 %1180 to i8
  store i8 %1181, i8* %39, align 1
  %1182 = sext i32 %1158 to i64
  store i64 %1182, i64* %RDX.i696, align 8
  %1183 = shl nsw i64 %1182, 3
  %1184 = add i64 %1183, %1153
  %1185 = add i64 %1141, 28
  store i64 %1185, i64* %PC.i, align 8
  %1186 = inttoptr i64 %1184 to double*
  store double %1149, double* %1186, align 8
  %1187 = load i64, i64* %RBP.i, align 8
  %1188 = add i64 %1187, -28
  %1189 = load i64, i64* %PC.i, align 8
  %1190 = add i64 %1189, 3
  store i64 %1190, i64* %PC.i, align 8
  %1191 = inttoptr i64 %1188 to i32*
  %1192 = load i32, i32* %1191, align 4
  %1193 = add i32 %1192, 2
  %1194 = zext i32 %1193 to i64
  store i64 %1194, i64* %RAX.i646.pre-phi, align 8
  %1195 = icmp ugt i32 %1192, -3
  %1196 = zext i1 %1195 to i8
  store i8 %1196, i8* %14, align 1
  %1197 = and i32 %1193, 255
  %1198 = tail call i32 @llvm.ctpop.i32(i32 %1197)
  %1199 = trunc i32 %1198 to i8
  %1200 = and i8 %1199, 1
  %1201 = xor i8 %1200, 1
  store i8 %1201, i8* %21, align 1
  %1202 = xor i32 %1192, %1193
  %1203 = lshr i32 %1202, 4
  %1204 = trunc i32 %1203 to i8
  %1205 = and i8 %1204, 1
  store i8 %1205, i8* %27, align 1
  %1206 = icmp eq i32 %1193, 0
  %1207 = zext i1 %1206 to i8
  store i8 %1207, i8* %30, align 1
  %1208 = lshr i32 %1193, 31
  %1209 = trunc i32 %1208 to i8
  store i8 %1209, i8* %33, align 1
  %1210 = lshr i32 %1192, 31
  %1211 = xor i32 %1208, %1210
  %1212 = add nuw nsw i32 %1211, %1208
  %1213 = icmp eq i32 %1212, 2
  %1214 = zext i1 %1213 to i8
  store i8 %1214, i8* %39, align 1
  %1215 = add i64 %1189, 9
  store i64 %1215, i64* %PC.i, align 8
  store i32 %1193, i32* %1191, align 4
  %1216 = load i64, i64* %PC.i, align 8
  %1217 = add i64 %1216, -576
  store i64 %1217, i64* %3, align 8
  br label %block_.L_402506

block_.L_40274b:                                  ; preds = %block_.L_402506
  %1218 = add i64 %303, 286
  br label %block_.L_402869

block_.L_402757:                                  ; preds = %block_.L_4024f0, %block_402763
  %1219 = phi i64 [ %1670, %block_402763 ], [ %.pre2, %block_.L_4024f0 ]
  %1220 = load i64, i64* %RBP.i, align 8
  %1221 = add i64 %1220, -28
  %1222 = add i64 %1219, 3
  store i64 %1222, i64* %PC.i, align 8
  %1223 = inttoptr i64 %1221 to i32*
  %1224 = load i32, i32* %1223, align 4
  %1225 = zext i32 %1224 to i64
  store i64 %1225, i64* %RAX.i646.pre-phi, align 8
  %1226 = add i64 %1220, -44
  %1227 = add i64 %1219, 6
  store i64 %1227, i64* %PC.i, align 8
  %1228 = inttoptr i64 %1226 to i32*
  %1229 = load i32, i32* %1228, align 4
  %1230 = sub i32 %1224, %1229
  %1231 = icmp ult i32 %1224, %1229
  %1232 = zext i1 %1231 to i8
  store i8 %1232, i8* %14, align 1
  %1233 = and i32 %1230, 255
  %1234 = tail call i32 @llvm.ctpop.i32(i32 %1233)
  %1235 = trunc i32 %1234 to i8
  %1236 = and i8 %1235, 1
  %1237 = xor i8 %1236, 1
  store i8 %1237, i8* %21, align 1
  %1238 = xor i32 %1229, %1224
  %1239 = xor i32 %1238, %1230
  %1240 = lshr i32 %1239, 4
  %1241 = trunc i32 %1240 to i8
  %1242 = and i8 %1241, 1
  store i8 %1242, i8* %27, align 1
  %1243 = icmp eq i32 %1230, 0
  %1244 = zext i1 %1243 to i8
  store i8 %1244, i8* %30, align 1
  %1245 = lshr i32 %1230, 31
  %1246 = trunc i32 %1245 to i8
  store i8 %1246, i8* %33, align 1
  %1247 = lshr i32 %1224, 31
  %1248 = lshr i32 %1229, 31
  %1249 = xor i32 %1248, %1247
  %1250 = xor i32 %1245, %1247
  %1251 = add nuw nsw i32 %1250, %1249
  %1252 = icmp eq i32 %1251, 2
  %1253 = zext i1 %1252 to i8
  store i8 %1253, i8* %39, align 1
  %1254 = icmp ne i8 %1246, 0
  %1255 = xor i1 %1254, %1252
  %.v12 = select i1 %1255, i64 12, i64 269
  %1256 = add i64 %1219, %.v12
  store i64 %1256, i64* %3, align 8
  br i1 %1255, label %block_402763, label %block_.L_402864

block_402763:                                     ; preds = %block_.L_402757
  store i64 -9223372036854775808, i64* %RAX.i646.pre-phi, align 8
  %1257 = add i64 %1256, 13
  store i64 %1257, i64* %PC.i, align 8
  %1258 = load i32, i32* %1223, align 4
  %1259 = zext i32 %1258 to i64
  store i64 %1259, i64* %RCX.i188, align 8
  %1260 = add i64 %1256, 16
  store i64 %1260, i64* %PC.i, align 8
  %1261 = load i32, i32* %1228, align 4
  %1262 = add i32 %1261, %1258
  %1263 = zext i32 %1262 to i64
  store i64 %1263, i64* %RCX.i188, align 8
  %1264 = icmp ult i32 %1262, %1258
  %1265 = icmp ult i32 %1262, %1261
  %1266 = or i1 %1264, %1265
  %1267 = zext i1 %1266 to i8
  store i8 %1267, i8* %14, align 1
  %1268 = and i32 %1262, 255
  %1269 = tail call i32 @llvm.ctpop.i32(i32 %1268)
  %1270 = trunc i32 %1269 to i8
  %1271 = and i8 %1270, 1
  %1272 = xor i8 %1271, 1
  store i8 %1272, i8* %21, align 1
  %1273 = xor i32 %1261, %1258
  %1274 = xor i32 %1273, %1262
  %1275 = lshr i32 %1274, 4
  %1276 = trunc i32 %1275 to i8
  %1277 = and i8 %1276, 1
  store i8 %1277, i8* %27, align 1
  %1278 = icmp eq i32 %1262, 0
  %1279 = zext i1 %1278 to i8
  store i8 %1279, i8* %30, align 1
  %1280 = lshr i32 %1262, 31
  %1281 = trunc i32 %1280 to i8
  store i8 %1281, i8* %33, align 1
  %1282 = lshr i32 %1258, 31
  %1283 = lshr i32 %1261, 31
  %1284 = xor i32 %1280, %1282
  %1285 = xor i32 %1280, %1283
  %1286 = add nuw nsw i32 %1284, %1285
  %1287 = icmp eq i32 %1286, 2
  %1288 = zext i1 %1287 to i8
  store i8 %1288, i8* %39, align 1
  %1289 = add i64 %1220, -32
  %1290 = add i64 %1256, 19
  store i64 %1290, i64* %PC.i, align 8
  %1291 = inttoptr i64 %1289 to i32*
  store i32 %1262, i32* %1291, align 4
  %1292 = load i64, i64* %RBP.i, align 8
  %1293 = add i64 %1292, -16
  %1294 = load i64, i64* %PC.i, align 8
  %1295 = add i64 %1294, 4
  store i64 %1295, i64* %PC.i, align 8
  %1296 = inttoptr i64 %1293 to i64*
  %1297 = load i64, i64* %1296, align 8
  store i64 %1297, i64* %RDX.i696, align 8
  %1298 = add i64 %1292, -28
  %1299 = add i64 %1294, 8
  store i64 %1299, i64* %PC.i, align 8
  %1300 = inttoptr i64 %1298 to i32*
  %1301 = load i32, i32* %1300, align 4
  %1302 = sext i32 %1301 to i64
  store i64 %1302, i64* %RSI.i699, align 8
  %1303 = shl nsw i64 %1302, 3
  %1304 = add i64 %1303, %1297
  %1305 = add i64 %1294, 13
  store i64 %1305, i64* %PC.i, align 8
  %1306 = inttoptr i64 %1304 to double*
  %1307 = load double, double* %1306, align 8
  store double %1307, double* %262, align 1
  store double 0.000000e+00, double* %264, align 1
  %1308 = add i64 %1294, 17
  store i64 %1308, i64* %PC.i, align 8
  %1309 = load i64, i64* %1296, align 8
  store i64 %1309, i64* %RDX.i696, align 8
  %1310 = add i64 %1292, -32
  %1311 = add i64 %1294, 21
  store i64 %1311, i64* %PC.i, align 8
  %1312 = inttoptr i64 %1310 to i32*
  %1313 = load i32, i32* %1312, align 4
  %1314 = sext i32 %1313 to i64
  store i64 %1314, i64* %RSI.i699, align 8
  %1315 = shl nsw i64 %1314, 3
  %1316 = add i64 %1315, %1309
  %1317 = add i64 %1294, 26
  store i64 %1317, i64* %PC.i, align 8
  %1318 = inttoptr i64 %1316 to double*
  %1319 = load double, double* %1318, align 8
  %1320 = fsub double %1307, %1319
  store double %1320, double* %262, align 1
  store i64 0, i64* %263, align 1
  %1321 = add i64 %1292, -56
  %1322 = add i64 %1294, 31
  store i64 %1322, i64* %PC.i, align 8
  %1323 = inttoptr i64 %1321 to double*
  store double %1320, double* %1323, align 8
  %1324 = load i64, i64* %RBP.i, align 8
  %1325 = add i64 %1324, -16
  %1326 = load i64, i64* %PC.i, align 8
  %1327 = add i64 %1326, 4
  store i64 %1327, i64* %PC.i, align 8
  %1328 = inttoptr i64 %1325 to i64*
  %1329 = load i64, i64* %1328, align 8
  store i64 %1329, i64* %RDX.i696, align 8
  %1330 = add i64 %1324, -28
  %1331 = add i64 %1326, 7
  store i64 %1331, i64* %PC.i, align 8
  %1332 = inttoptr i64 %1330 to i32*
  %1333 = load i32, i32* %1332, align 4
  %1334 = add i32 %1333, 1
  %1335 = zext i32 %1334 to i64
  store i64 %1335, i64* %RCX.i188, align 8
  %1336 = icmp eq i32 %1333, -1
  %1337 = icmp eq i32 %1334, 0
  %1338 = or i1 %1336, %1337
  %1339 = zext i1 %1338 to i8
  store i8 %1339, i8* %14, align 1
  %1340 = and i32 %1334, 255
  %1341 = tail call i32 @llvm.ctpop.i32(i32 %1340)
  %1342 = trunc i32 %1341 to i8
  %1343 = and i8 %1342, 1
  %1344 = xor i8 %1343, 1
  store i8 %1344, i8* %21, align 1
  %1345 = xor i32 %1333, %1334
  %1346 = lshr i32 %1345, 4
  %1347 = trunc i32 %1346 to i8
  %1348 = and i8 %1347, 1
  store i8 %1348, i8* %27, align 1
  %1349 = icmp eq i32 %1334, 0
  %1350 = zext i1 %1349 to i8
  store i8 %1350, i8* %30, align 1
  %1351 = lshr i32 %1334, 31
  %1352 = trunc i32 %1351 to i8
  store i8 %1352, i8* %33, align 1
  %1353 = lshr i32 %1333, 31
  %1354 = xor i32 %1351, %1353
  %1355 = add nuw nsw i32 %1354, %1351
  %1356 = icmp eq i32 %1355, 2
  %1357 = zext i1 %1356 to i8
  store i8 %1357, i8* %39, align 1
  %1358 = sext i32 %1334 to i64
  store i64 %1358, i64* %RSI.i699, align 8
  %1359 = shl nsw i64 %1358, 3
  %1360 = add i64 %1359, %1329
  %1361 = add i64 %1326, 18
  store i64 %1361, i64* %PC.i, align 8
  %1362 = inttoptr i64 %1360 to i64*
  %1363 = load i64, i64* %1362, align 8
  %1364 = load i64, i64* %RAX.i646.pre-phi, align 8
  %1365 = xor i64 %1364, %1363
  store i64 %1365, i64* %RDX.i696, align 8
  store i8 0, i8* %14, align 1
  %1366 = trunc i64 %1365 to i32
  %1367 = and i32 %1366, 255
  %1368 = tail call i32 @llvm.ctpop.i32(i32 %1367)
  %1369 = trunc i32 %1368 to i8
  %1370 = and i8 %1369, 1
  %1371 = xor i8 %1370, 1
  store i8 %1371, i8* %21, align 1
  %1372 = icmp eq i64 %1365, 0
  %1373 = zext i1 %1372 to i8
  store i8 %1373, i8* %30, align 1
  %1374 = lshr i64 %1365, 63
  %1375 = trunc i64 %1374 to i8
  store i8 %1375, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 %1365, i64* %265, align 1
  store i64 0, i64* %263, align 1
  %1376 = add i64 %1326, 35
  store i64 %1376, i64* %PC.i, align 8
  %1377 = load i64, i64* %1328, align 8
  store i64 %1377, i64* %RDX.i696, align 8
  %1378 = add i64 %1324, -32
  %1379 = add i64 %1326, 38
  store i64 %1379, i64* %PC.i, align 8
  %1380 = inttoptr i64 %1378 to i32*
  %1381 = load i32, i32* %1380, align 4
  %1382 = add i32 %1381, 1
  %1383 = zext i32 %1382 to i64
  store i64 %1383, i64* %RCX.i188, align 8
  %1384 = icmp eq i32 %1381, -1
  %1385 = icmp eq i32 %1382, 0
  %1386 = or i1 %1384, %1385
  %1387 = zext i1 %1386 to i8
  store i8 %1387, i8* %14, align 1
  %1388 = and i32 %1382, 255
  %1389 = tail call i32 @llvm.ctpop.i32(i32 %1388)
  %1390 = trunc i32 %1389 to i8
  %1391 = and i8 %1390, 1
  %1392 = xor i8 %1391, 1
  store i8 %1392, i8* %21, align 1
  %1393 = xor i32 %1381, %1382
  %1394 = lshr i32 %1393, 4
  %1395 = trunc i32 %1394 to i8
  %1396 = and i8 %1395, 1
  store i8 %1396, i8* %27, align 1
  %1397 = icmp eq i32 %1382, 0
  %1398 = zext i1 %1397 to i8
  store i8 %1398, i8* %30, align 1
  %1399 = lshr i32 %1382, 31
  %1400 = trunc i32 %1399 to i8
  store i8 %1400, i8* %33, align 1
  %1401 = lshr i32 %1381, 31
  %1402 = xor i32 %1399, %1401
  %1403 = add nuw nsw i32 %1402, %1399
  %1404 = icmp eq i32 %1403, 2
  %1405 = zext i1 %1404 to i8
  store i8 %1405, i8* %39, align 1
  %1406 = sext i32 %1382 to i64
  store i64 %1406, i64* %RSI.i699, align 8
  %1407 = shl nsw i64 %1406, 3
  %1408 = add i64 %1407, %1377
  %1409 = add i64 %1326, 49
  store i64 %1409, i64* %PC.i, align 8
  %1410 = bitcast i64 %1365 to double
  %1411 = inttoptr i64 %1408 to double*
  %1412 = load double, double* %1411, align 8
  %1413 = fadd double %1410, %1412
  store double %1413, double* %262, align 1
  store i64 0, i64* %263, align 1
  %1414 = load i64, i64* %RBP.i, align 8
  %1415 = add i64 %1414, -64
  %1416 = add i64 %1326, 54
  store i64 %1416, i64* %PC.i, align 8
  %1417 = inttoptr i64 %1415 to double*
  store double %1413, double* %1417, align 8
  %1418 = load i64, i64* %RBP.i, align 8
  %1419 = add i64 %1418, -16
  %1420 = load i64, i64* %PC.i, align 8
  %1421 = add i64 %1420, 4
  store i64 %1421, i64* %PC.i, align 8
  %1422 = inttoptr i64 %1419 to i64*
  %1423 = load i64, i64* %1422, align 8
  store i64 %1423, i64* %RDX.i696, align 8
  %1424 = add i64 %1418, -32
  %1425 = add i64 %1420, 8
  store i64 %1425, i64* %PC.i, align 8
  %1426 = inttoptr i64 %1424 to i32*
  %1427 = load i32, i32* %1426, align 4
  %1428 = sext i32 %1427 to i64
  store i64 %1428, i64* %RSI.i699, align 8
  %1429 = shl nsw i64 %1428, 3
  %1430 = add i64 %1429, %1423
  %1431 = add i64 %1420, 13
  store i64 %1431, i64* %PC.i, align 8
  %1432 = inttoptr i64 %1430 to double*
  %1433 = load double, double* %1432, align 8
  store double %1433, double* %262, align 1
  store double 0.000000e+00, double* %264, align 1
  %1434 = add i64 %1420, 17
  store i64 %1434, i64* %PC.i, align 8
  %1435 = load i64, i64* %1422, align 8
  store i64 %1435, i64* %RDX.i696, align 8
  %1436 = add i64 %1418, -28
  %1437 = add i64 %1420, 21
  store i64 %1437, i64* %PC.i, align 8
  %1438 = inttoptr i64 %1436 to i32*
  %1439 = load i32, i32* %1438, align 4
  %1440 = sext i32 %1439 to i64
  store i64 %1440, i64* %RSI.i699, align 8
  %1441 = shl nsw i64 %1440, 3
  %1442 = add i64 %1441, %1435
  %1443 = add i64 %1420, 26
  store i64 %1443, i64* %PC.i, align 8
  %1444 = inttoptr i64 %1442 to double*
  %1445 = load double, double* %1444, align 8
  %1446 = fadd double %1433, %1445
  store double %1446, double* %262, align 1
  store i64 0, i64* %263, align 1
  %1447 = add i64 %1420, 31
  store i64 %1447, i64* %PC.i, align 8
  store double %1446, double* %1444, align 8
  %1448 = load i64, i64* %RBP.i, align 8
  %1449 = add i64 %1448, -16
  %1450 = load i64, i64* %PC.i, align 8
  %1451 = add i64 %1450, 4
  store i64 %1451, i64* %PC.i, align 8
  %1452 = inttoptr i64 %1449 to i64*
  %1453 = load i64, i64* %1452, align 8
  store i64 %1453, i64* %RDX.i696, align 8
  %1454 = add i64 %1448, -28
  %1455 = add i64 %1450, 7
  store i64 %1455, i64* %PC.i, align 8
  %1456 = inttoptr i64 %1454 to i32*
  %1457 = load i32, i32* %1456, align 4
  %1458 = add i32 %1457, 1
  %1459 = zext i32 %1458 to i64
  store i64 %1459, i64* %RCX.i188, align 8
  %1460 = icmp eq i32 %1457, -1
  %1461 = icmp eq i32 %1458, 0
  %1462 = or i1 %1460, %1461
  %1463 = zext i1 %1462 to i8
  store i8 %1463, i8* %14, align 1
  %1464 = and i32 %1458, 255
  %1465 = tail call i32 @llvm.ctpop.i32(i32 %1464)
  %1466 = trunc i32 %1465 to i8
  %1467 = and i8 %1466, 1
  %1468 = xor i8 %1467, 1
  store i8 %1468, i8* %21, align 1
  %1469 = xor i32 %1457, %1458
  %1470 = lshr i32 %1469, 4
  %1471 = trunc i32 %1470 to i8
  %1472 = and i8 %1471, 1
  store i8 %1472, i8* %27, align 1
  %1473 = icmp eq i32 %1458, 0
  %1474 = zext i1 %1473 to i8
  store i8 %1474, i8* %30, align 1
  %1475 = lshr i32 %1458, 31
  %1476 = trunc i32 %1475 to i8
  store i8 %1476, i8* %33, align 1
  %1477 = lshr i32 %1457, 31
  %1478 = xor i32 %1475, %1477
  %1479 = add nuw nsw i32 %1478, %1475
  %1480 = icmp eq i32 %1479, 2
  %1481 = zext i1 %1480 to i8
  store i8 %1481, i8* %39, align 1
  %1482 = sext i32 %1458 to i64
  store i64 %1482, i64* %RSI.i699, align 8
  %1483 = shl nsw i64 %1482, 3
  %1484 = add i64 %1483, %1453
  %1485 = add i64 %1450, 18
  store i64 %1485, i64* %PC.i, align 8
  %1486 = inttoptr i64 %1484 to i64*
  %1487 = load i64, i64* %1486, align 8
  %1488 = load i64, i64* %RAX.i646.pre-phi, align 8
  %1489 = xor i64 %1488, %1487
  store i64 %1489, i64* %RDX.i696, align 8
  store i8 0, i8* %14, align 1
  %1490 = trunc i64 %1489 to i32
  %1491 = and i32 %1490, 255
  %1492 = tail call i32 @llvm.ctpop.i32(i32 %1491)
  %1493 = trunc i32 %1492 to i8
  %1494 = and i8 %1493, 1
  %1495 = xor i8 %1494, 1
  store i8 %1495, i8* %21, align 1
  %1496 = icmp eq i64 %1489, 0
  %1497 = zext i1 %1496 to i8
  store i8 %1497, i8* %30, align 1
  %1498 = lshr i64 %1489, 63
  %1499 = trunc i64 %1498 to i8
  store i8 %1499, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 %1489, i64* %265, align 1
  store i64 0, i64* %263, align 1
  %1500 = add i64 %1450, 35
  store i64 %1500, i64* %PC.i, align 8
  %1501 = load i64, i64* %1452, align 8
  store i64 %1501, i64* %RAX.i646.pre-phi, align 8
  %1502 = add i64 %1448, -32
  %1503 = add i64 %1450, 38
  store i64 %1503, i64* %PC.i, align 8
  %1504 = inttoptr i64 %1502 to i32*
  %1505 = load i32, i32* %1504, align 4
  %1506 = add i32 %1505, 1
  %1507 = zext i32 %1506 to i64
  store i64 %1507, i64* %RCX.i188, align 8
  %1508 = icmp eq i32 %1505, -1
  %1509 = icmp eq i32 %1506, 0
  %1510 = or i1 %1508, %1509
  %1511 = zext i1 %1510 to i8
  store i8 %1511, i8* %14, align 1
  %1512 = and i32 %1506, 255
  %1513 = tail call i32 @llvm.ctpop.i32(i32 %1512)
  %1514 = trunc i32 %1513 to i8
  %1515 = and i8 %1514, 1
  %1516 = xor i8 %1515, 1
  store i8 %1516, i8* %21, align 1
  %1517 = xor i32 %1505, %1506
  %1518 = lshr i32 %1517, 4
  %1519 = trunc i32 %1518 to i8
  %1520 = and i8 %1519, 1
  store i8 %1520, i8* %27, align 1
  %1521 = icmp eq i32 %1506, 0
  %1522 = zext i1 %1521 to i8
  store i8 %1522, i8* %30, align 1
  %1523 = lshr i32 %1506, 31
  %1524 = trunc i32 %1523 to i8
  store i8 %1524, i8* %33, align 1
  %1525 = lshr i32 %1505, 31
  %1526 = xor i32 %1523, %1525
  %1527 = add nuw nsw i32 %1526, %1523
  %1528 = icmp eq i32 %1527, 2
  %1529 = zext i1 %1528 to i8
  store i8 %1529, i8* %39, align 1
  %1530 = sext i32 %1506 to i64
  store i64 %1530, i64* %RDX.i696, align 8
  %1531 = shl nsw i64 %1530, 3
  %1532 = add i64 %1531, %1501
  %1533 = add i64 %1450, 49
  store i64 %1533, i64* %PC.i, align 8
  %1534 = bitcast i64 %1489 to double
  %1535 = inttoptr i64 %1532 to double*
  %1536 = load double, double* %1535, align 8
  %1537 = fsub double %1534, %1536
  store double %1537, double* %262, align 1
  store i64 0, i64* %263, align 1
  %1538 = load i64, i64* %RBP.i, align 8
  %1539 = add i64 %1538, -16
  %1540 = add i64 %1450, 53
  store i64 %1540, i64* %PC.i, align 8
  %1541 = inttoptr i64 %1539 to i64*
  %1542 = load i64, i64* %1541, align 8
  store i64 %1542, i64* %RAX.i646.pre-phi, align 8
  %1543 = add i64 %1538, -28
  %1544 = add i64 %1450, 56
  store i64 %1544, i64* %PC.i, align 8
  %1545 = inttoptr i64 %1543 to i32*
  %1546 = load i32, i32* %1545, align 4
  %1547 = add i32 %1546, 1
  %1548 = zext i32 %1547 to i64
  store i64 %1548, i64* %RCX.i188, align 8
  %1549 = icmp eq i32 %1546, -1
  %1550 = icmp eq i32 %1547, 0
  %1551 = or i1 %1549, %1550
  %1552 = zext i1 %1551 to i8
  store i8 %1552, i8* %14, align 1
  %1553 = and i32 %1547, 255
  %1554 = tail call i32 @llvm.ctpop.i32(i32 %1553)
  %1555 = trunc i32 %1554 to i8
  %1556 = and i8 %1555, 1
  %1557 = xor i8 %1556, 1
  store i8 %1557, i8* %21, align 1
  %1558 = xor i32 %1546, %1547
  %1559 = lshr i32 %1558, 4
  %1560 = trunc i32 %1559 to i8
  %1561 = and i8 %1560, 1
  store i8 %1561, i8* %27, align 1
  %1562 = icmp eq i32 %1547, 0
  %1563 = zext i1 %1562 to i8
  store i8 %1563, i8* %30, align 1
  %1564 = lshr i32 %1547, 31
  %1565 = trunc i32 %1564 to i8
  store i8 %1565, i8* %33, align 1
  %1566 = lshr i32 %1546, 31
  %1567 = xor i32 %1564, %1566
  %1568 = add nuw nsw i32 %1567, %1564
  %1569 = icmp eq i32 %1568, 2
  %1570 = zext i1 %1569 to i8
  store i8 %1570, i8* %39, align 1
  %1571 = sext i32 %1547 to i64
  store i64 %1571, i64* %RDX.i696, align 8
  %1572 = shl nsw i64 %1571, 3
  %1573 = add i64 %1572, %1542
  %1574 = add i64 %1450, 67
  store i64 %1574, i64* %PC.i, align 8
  %1575 = inttoptr i64 %1573 to double*
  store double %1537, double* %1575, align 8
  %1576 = load i64, i64* %RBP.i, align 8
  %1577 = add i64 %1576, -56
  %1578 = load i64, i64* %PC.i, align 8
  %1579 = add i64 %1578, 5
  store i64 %1579, i64* %PC.i, align 8
  %1580 = inttoptr i64 %1577 to i64*
  %1581 = load i64, i64* %1580, align 8
  %1582 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %261, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1581, i64* %1582, align 1
  store double 0.000000e+00, double* %264, align 1
  %1583 = add i64 %1576, -16
  %1584 = add i64 %1578, 9
  store i64 %1584, i64* %PC.i, align 8
  %1585 = inttoptr i64 %1583 to i64*
  %1586 = load i64, i64* %1585, align 8
  store i64 %1586, i64* %RAX.i646.pre-phi, align 8
  %1587 = add i64 %1576, -32
  %1588 = add i64 %1578, 13
  store i64 %1588, i64* %PC.i, align 8
  %1589 = inttoptr i64 %1587 to i32*
  %1590 = load i32, i32* %1589, align 4
  %1591 = sext i32 %1590 to i64
  store i64 %1591, i64* %RDX.i696, align 8
  %1592 = shl nsw i64 %1591, 3
  %1593 = add i64 %1592, %1586
  %1594 = add i64 %1578, 18
  store i64 %1594, i64* %PC.i, align 8
  %1595 = inttoptr i64 %1593 to i64*
  store i64 %1581, i64* %1595, align 8
  %1596 = load i64, i64* %RBP.i, align 8
  %1597 = add i64 %1596, -64
  %1598 = load i64, i64* %PC.i, align 8
  %1599 = add i64 %1598, 5
  store i64 %1599, i64* %PC.i, align 8
  %1600 = inttoptr i64 %1597 to i64*
  %1601 = load i64, i64* %1600, align 8
  %1602 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %261, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1601, i64* %1602, align 1
  store double 0.000000e+00, double* %264, align 1
  %1603 = add i64 %1596, -16
  %1604 = add i64 %1598, 9
  store i64 %1604, i64* %PC.i, align 8
  %1605 = inttoptr i64 %1603 to i64*
  %1606 = load i64, i64* %1605, align 8
  store i64 %1606, i64* %RAX.i646.pre-phi, align 8
  %1607 = add i64 %1596, -32
  %1608 = add i64 %1598, 12
  store i64 %1608, i64* %PC.i, align 8
  %1609 = inttoptr i64 %1607 to i32*
  %1610 = load i32, i32* %1609, align 4
  %1611 = add i32 %1610, 1
  %1612 = zext i32 %1611 to i64
  store i64 %1612, i64* %RCX.i188, align 8
  %1613 = icmp eq i32 %1610, -1
  %1614 = icmp eq i32 %1611, 0
  %1615 = or i1 %1613, %1614
  %1616 = zext i1 %1615 to i8
  store i8 %1616, i8* %14, align 1
  %1617 = and i32 %1611, 255
  %1618 = tail call i32 @llvm.ctpop.i32(i32 %1617)
  %1619 = trunc i32 %1618 to i8
  %1620 = and i8 %1619, 1
  %1621 = xor i8 %1620, 1
  store i8 %1621, i8* %21, align 1
  %1622 = xor i32 %1610, %1611
  %1623 = lshr i32 %1622, 4
  %1624 = trunc i32 %1623 to i8
  %1625 = and i8 %1624, 1
  store i8 %1625, i8* %27, align 1
  %1626 = icmp eq i32 %1611, 0
  %1627 = zext i1 %1626 to i8
  store i8 %1627, i8* %30, align 1
  %1628 = lshr i32 %1611, 31
  %1629 = trunc i32 %1628 to i8
  store i8 %1629, i8* %33, align 1
  %1630 = lshr i32 %1610, 31
  %1631 = xor i32 %1628, %1630
  %1632 = add nuw nsw i32 %1631, %1628
  %1633 = icmp eq i32 %1632, 2
  %1634 = zext i1 %1633 to i8
  store i8 %1634, i8* %39, align 1
  %1635 = sext i32 %1611 to i64
  store i64 %1635, i64* %RDX.i696, align 8
  %1636 = shl nsw i64 %1635, 3
  %1637 = add i64 %1636, %1606
  %1638 = add i64 %1598, 23
  store i64 %1638, i64* %PC.i, align 8
  %1639 = inttoptr i64 %1637 to i64*
  store i64 %1601, i64* %1639, align 8
  %1640 = load i64, i64* %RBP.i, align 8
  %1641 = add i64 %1640, -28
  %1642 = load i64, i64* %PC.i, align 8
  %1643 = add i64 %1642, 3
  store i64 %1643, i64* %PC.i, align 8
  %1644 = inttoptr i64 %1641 to i32*
  %1645 = load i32, i32* %1644, align 4
  %1646 = add i32 %1645, 2
  %1647 = zext i32 %1646 to i64
  store i64 %1647, i64* %RAX.i646.pre-phi, align 8
  %1648 = icmp ugt i32 %1645, -3
  %1649 = zext i1 %1648 to i8
  store i8 %1649, i8* %14, align 1
  %1650 = and i32 %1646, 255
  %1651 = tail call i32 @llvm.ctpop.i32(i32 %1650)
  %1652 = trunc i32 %1651 to i8
  %1653 = and i8 %1652, 1
  %1654 = xor i8 %1653, 1
  store i8 %1654, i8* %21, align 1
  %1655 = xor i32 %1645, %1646
  %1656 = lshr i32 %1655, 4
  %1657 = trunc i32 %1656 to i8
  %1658 = and i8 %1657, 1
  store i8 %1658, i8* %27, align 1
  %1659 = icmp eq i32 %1646, 0
  %1660 = zext i1 %1659 to i8
  store i8 %1660, i8* %30, align 1
  %1661 = lshr i32 %1646, 31
  %1662 = trunc i32 %1661 to i8
  store i8 %1662, i8* %33, align 1
  %1663 = lshr i32 %1645, 31
  %1664 = xor i32 %1661, %1663
  %1665 = add nuw nsw i32 %1664, %1661
  %1666 = icmp eq i32 %1665, 2
  %1667 = zext i1 %1666 to i8
  store i8 %1667, i8* %39, align 1
  %1668 = add i64 %1642, 9
  store i64 %1668, i64* %PC.i, align 8
  store i32 %1646, i32* %1644, align 4
  %1669 = load i64, i64* %PC.i, align 8
  %1670 = add i64 %1669, -264
  store i64 %1670, i64* %3, align 8
  br label %block_.L_402757

block_.L_402864:                                  ; preds = %block_.L_402757
  %1671 = add i64 %1256, 5
  br label %block_.L_402869

block_.L_402869:                                  ; preds = %block_.L_402864, %block_.L_40274b
  %.sink = phi i64 [ %1671, %block_.L_402864 ], [ %1218, %block_.L_40274b ]
  %1672 = load i64, i64* %RSP.i706, align 8
  %1673 = add i64 %1672, 112
  store i64 %1673, i64* %RSP.i706, align 8
  %1674 = icmp ugt i64 %1672, -113
  %1675 = zext i1 %1674 to i8
  store i8 %1675, i8* %14, align 1
  %1676 = trunc i64 %1673 to i32
  %1677 = and i32 %1676, 255
  %1678 = tail call i32 @llvm.ctpop.i32(i32 %1677)
  %1679 = trunc i32 %1678 to i8
  %1680 = and i8 %1679, 1
  %1681 = xor i8 %1680, 1
  store i8 %1681, i8* %21, align 1
  %1682 = xor i64 %1672, 16
  %1683 = xor i64 %1682, %1673
  %1684 = lshr i64 %1683, 4
  %1685 = trunc i64 %1684 to i8
  %1686 = and i8 %1685, 1
  store i8 %1686, i8* %27, align 1
  %1687 = icmp eq i64 %1673, 0
  %1688 = zext i1 %1687 to i8
  store i8 %1688, i8* %30, align 1
  %1689 = lshr i64 %1673, 63
  %1690 = trunc i64 %1689 to i8
  store i8 %1690, i8* %33, align 1
  %1691 = lshr i64 %1672, 63
  %1692 = xor i64 %1689, %1691
  %1693 = add nuw nsw i64 %1692, %1689
  %1694 = icmp eq i64 %1693, 2
  %1695 = zext i1 %1694 to i8
  store i8 %1695, i8* %39, align 1
  %1696 = add i64 %.sink, 5
  store i64 %1696, i64* %PC.i, align 8
  %1697 = add i64 %1672, 120
  %1698 = inttoptr i64 %1673 to i64*
  %1699 = load i64, i64* %1698, align 8
  store i64 %1699, i64* %RBP.i, align 8
  store i64 %1697, i64* %6, align 8
  %1700 = add i64 %.sink, 6
  store i64 %1700, i64* %PC.i, align 8
  %1701 = inttoptr i64 %1697 to i64*
  %1702 = load i64, i64* %1701, align 8
  store i64 %1702, i64* %3, align 8
  %1703 = add i64 %1672, 128
  store i64 %1703, i64* %6, align 8
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

define %struct.Memory* @routine_jle_.L_4024f0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jge_.L_4024eb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jmpq_.L_4024bb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4024f0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_402750(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jge_.L_40274b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movq__0x8000000000000000___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 -9223372036854775808, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x2c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd___rdx__rsi_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RSI, align 8
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

define %struct.Memory* @routine_addl__0x1___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__xmm0___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* %RDX, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorq__rax___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = xor i64 %4, %3
  store i64 %7, i64* %RDX, align 8
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

define %struct.Memory* @routine_movq__rdx___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %3, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 0, i64* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd___rdx__rsi_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RSI, align 8
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

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addsd___rax__rdx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
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

define %struct.Memory* @routine_movsd___rax__rdx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
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

define %struct.Memory* @routine_subsd___rax__rdx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
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

define %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
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

define %struct.Memory* @routine_jmpq_.L_402506(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_402869(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_402864(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
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

define %struct.Memory* @routine_jmpq_.L_402757(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
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
