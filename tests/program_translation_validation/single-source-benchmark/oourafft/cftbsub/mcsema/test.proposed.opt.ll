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

declare %struct.Memory* @sub_402890.cft1st(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_403320.cftmdl(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @cftbsub(%struct.State* noalias, i64, %struct.Memory* noalias readnone) local_unnamed_addr #1 {
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
  %RSI.i699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, -16
  %47 = load i64, i64* %RSI.i699, align 8
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, 4
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %46 to i64*
  store i64 %47, i64* %50, align 8
  %RDX.i696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %51 = load i64, i64* %RBP.i, align 8
  %52 = add i64 %51, -24
  %53 = load i64, i64* %RDX.i696, align 8
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
  %76 = xor i32 %68, %67
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
  %.v14 = select i1 %91, i64 86, i64 10
  %92 = add i64 %64, %.v14
  store i64 %92, i64* %3, align 8
  br i1 %91, label %entry.block_.L_402510_crit_edge, label %block_4024c4

entry.block_.L_402510_crit_edge:                  ; preds = %entry
  %.pre12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  br label %block_.L_402510

block_4024c4:                                     ; preds = %entry
  %RDI.i688 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  %93 = add i64 %92, 3
  store i64 %93, i64* %3, align 8
  %94 = load i32, i32* %66, align 4
  %95 = zext i32 %94 to i64
  store i64 %95, i64* %RDI.i688, align 8
  %96 = add i64 %62, -16
  %97 = add i64 %92, 7
  store i64 %97, i64* %3, align 8
  %98 = inttoptr i64 %96 to i64*
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %RSI.i699, align 8
  %100 = add i64 %62, -24
  %101 = add i64 %92, 11
  store i64 %101, i64* %3, align 8
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
  %call2_4024cf = tail call %struct.Memory* @sub_402890.cft1st(%struct.State* nonnull %0, i64 %104, %struct.Memory* %2)
  %109 = load i64, i64* %RBP.i, align 8
  %110 = add i64 %109, -44
  %111 = load i64, i64* %3, align 8
  %112 = add i64 %111, 7
  store i64 %112, i64* %3, align 8
  %113 = inttoptr i64 %110 to i32*
  store i32 8, i32* %113, align 4
  %RAX.i676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX.i659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_4024db

block_.L_4024db:                                  ; preds = %block_4024ea, %block_4024c4
  %114 = phi i64 [ %209, %block_4024ea ], [ %.pre, %block_4024c4 ]
  %115 = load i64, i64* %RBP.i, align 8
  %116 = add i64 %115, -44
  %117 = add i64 %114, 3
  store i64 %117, i64* %3, align 8
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
  %133 = trunc i32 %132 to i8
  %134 = and i8 %133, 1
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
  %156 = lshr i32 %119, 29
  %157 = and i32 %156, 1
  %158 = lshr i32 %138, 31
  %159 = xor i32 %158, %157
  %160 = xor i32 %154, %157
  %161 = add nuw nsw i32 %160, %159
  %162 = icmp eq i32 %161, 2
  %163 = zext i1 %162 to i8
  store i8 %163, i8* %39, align 1
  %164 = icmp ne i8 %155, 0
  %165 = xor i1 %164, %162
  %.v15 = select i1 %165, i64 15, i64 48
  %166 = add i64 %114, %.v15
  store i64 %166, i64* %3, align 8
  br i1 %165, label %block_4024ea, label %block_.L_40250b

block_4024ea:                                     ; preds = %block_.L_4024db
  %167 = add i64 %166, 3
  store i64 %167, i64* %3, align 8
  %168 = load i32, i32* %137, align 4
  %169 = zext i32 %168 to i64
  store i64 %169, i64* %RDI.i688, align 8
  %170 = add i64 %166, 6
  store i64 %170, i64* %3, align 8
  %171 = load i32, i32* %118, align 4
  %172 = zext i32 %171 to i64
  store i64 %172, i64* %RSI.i699, align 8
  %173 = add i64 %115, -16
  %174 = add i64 %166, 10
  store i64 %174, i64* %3, align 8
  %175 = inttoptr i64 %173 to i64*
  %176 = load i64, i64* %175, align 8
  store i64 %176, i64* %RDX.i696, align 8
  %177 = add i64 %115, -24
  %178 = add i64 %166, 14
  store i64 %178, i64* %3, align 8
  %179 = inttoptr i64 %177 to i64*
  %180 = load i64, i64* %179, align 8
  store i64 %180, i64* %RCX.i659, align 8
  %181 = add i64 %166, 3638
  %182 = add i64 %166, 19
  %183 = load i64, i64* %6, align 8
  %184 = add i64 %183, -8
  %185 = inttoptr i64 %184 to i64*
  store i64 %182, i64* %185, align 8
  store i64 %184, i64* %6, align 8
  store i64 %181, i64* %3, align 8
  %call2_4024f8 = tail call %struct.Memory* @sub_403320.cftmdl(%struct.State* nonnull %0, i64 %181, %struct.Memory* %call2_4024cf)
  %186 = load i64, i64* %RBP.i, align 8
  %187 = add i64 %186, -44
  %188 = load i64, i64* %3, align 8
  %189 = add i64 %188, 3
  store i64 %189, i64* %3, align 8
  %190 = inttoptr i64 %187 to i32*
  %191 = load i32, i32* %190, align 4
  %192 = shl i32 %191, 2
  %193 = zext i32 %192 to i64
  store i64 %193, i64* %RSI.i699, align 8
  %194 = lshr i32 %191, 30
  %195 = trunc i32 %194 to i8
  %196 = and i8 %195, 1
  store i8 %196, i8* %14, align 1
  %197 = and i32 %192, 252
  %198 = tail call i32 @llvm.ctpop.i32(i32 %197)
  %199 = trunc i32 %198 to i8
  %200 = and i8 %199, 1
  %201 = xor i8 %200, 1
  store i8 %201, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %202 = icmp eq i32 %192, 0
  %203 = zext i1 %202 to i8
  store i8 %203, i8* %30, align 1
  %204 = lshr i32 %191, 29
  %205 = trunc i32 %204 to i8
  %206 = and i8 %205, 1
  store i8 %206, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %207 = add i64 %188, 9
  store i64 %207, i64* %3, align 8
  store i32 %192, i32* %190, align 4
  %208 = load i64, i64* %3, align 8
  %209 = add i64 %208, -43
  store i64 %209, i64* %3, align 8
  br label %block_.L_4024db

block_.L_40250b:                                  ; preds = %block_.L_4024db
  %210 = add i64 %166, 5
  store i64 %210, i64* %3, align 8
  br label %block_.L_402510

block_.L_402510:                                  ; preds = %entry.block_.L_402510_crit_edge, %block_.L_40250b
  %RAX.i646.pre-phi = phi i64* [ %.pre12, %entry.block_.L_402510_crit_edge ], [ %RAX.i676, %block_.L_40250b ]
  %211 = phi i64 [ %92, %entry.block_.L_402510_crit_edge ], [ %210, %block_.L_40250b ]
  %212 = phi i64 [ %62, %entry.block_.L_402510_crit_edge ], [ %115, %block_.L_40250b ]
  %MEMORY.1 = phi %struct.Memory* [ %2, %entry.block_.L_402510_crit_edge ], [ %call2_4024cf, %block_.L_40250b ]
  %213 = add i64 %212, -44
  %214 = add i64 %211, 3
  store i64 %214, i64* %3, align 8
  %215 = inttoptr i64 %213 to i32*
  %216 = load i32, i32* %215, align 4
  %217 = shl i32 %216, 2
  %218 = zext i32 %217 to i64
  store i64 %218, i64* %RAX.i646.pre-phi, align 8
  %219 = lshr i32 %216, 30
  %220 = trunc i32 %219 to i8
  %221 = and i8 %220, 1
  store i8 %221, i8* %14, align 1
  %222 = and i32 %217, 252
  %223 = tail call i32 @llvm.ctpop.i32(i32 %222)
  %224 = trunc i32 %223 to i8
  %225 = and i8 %224, 1
  %226 = xor i8 %225, 1
  store i8 %226, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %227 = icmp eq i32 %217, 0
  %228 = zext i1 %227 to i8
  store i8 %228, i8* %30, align 1
  %229 = lshr i32 %216, 29
  %230 = trunc i32 %229 to i8
  %231 = and i8 %230, 1
  store i8 %231, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %232 = add i64 %212, -4
  %233 = add i64 %211, 9
  store i64 %233, i64* %3, align 8
  %234 = inttoptr i64 %232 to i32*
  %235 = load i32, i32* %234, align 4
  %236 = sub i32 %217, %235
  %237 = icmp ult i32 %217, %235
  %238 = zext i1 %237 to i8
  store i8 %238, i8* %14, align 1
  %239 = and i32 %236, 255
  %240 = tail call i32 @llvm.ctpop.i32(i32 %239)
  %241 = trunc i32 %240 to i8
  %242 = and i8 %241, 1
  %243 = xor i8 %242, 1
  store i8 %243, i8* %21, align 1
  %244 = xor i32 %235, %217
  %245 = xor i32 %244, %236
  %246 = lshr i32 %245, 4
  %247 = trunc i32 %246 to i8
  %248 = and i8 %247, 1
  store i8 %248, i8* %27, align 1
  %249 = icmp eq i32 %236, 0
  %250 = zext i1 %249 to i8
  store i8 %250, i8* %30, align 1
  %251 = lshr i32 %236, 31
  %252 = trunc i32 %251 to i8
  store i8 %252, i8* %33, align 1
  %253 = lshr i32 %216, 29
  %254 = and i32 %253, 1
  %255 = lshr i32 %235, 31
  %256 = xor i32 %255, %254
  %257 = xor i32 %251, %254
  %258 = add nuw nsw i32 %257, %256
  %259 = icmp eq i32 %258, 2
  %260 = zext i1 %259 to i8
  store i8 %260, i8* %39, align 1
  %.v = select i1 %249, i64 15, i64 608
  %261 = add i64 %211, %.v
  %262 = add i64 %212, -28
  %263 = add i64 %261, 7
  store i64 %263, i64* %3, align 8
  %264 = inttoptr i64 %262 to i32*
  store i32 0, i32* %264, align 4
  %RCX.i188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %266 = bitcast %union.VectorReg* %265 to double*
  %267 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %265, i64 0, i32 0, i32 0, i32 0, i64 0
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %269 = bitcast i64* %268 to double*
  %.pre9 = load i64, i64* %3, align 8
  br i1 %249, label %block_.L_402526.preheader, label %block_.L_402777.preheader

block_.L_402777.preheader:                        ; preds = %block_.L_402510
  br label %block_.L_402777

block_.L_402526.preheader:                        ; preds = %block_.L_402510
  br label %block_.L_402526

block_.L_402526:                                  ; preds = %block_.L_402526.preheader, %block_402532
  %270 = phi i64 [ %1223, %block_402532 ], [ %.pre9, %block_.L_402526.preheader ]
  %271 = load i64, i64* %RBP.i, align 8
  %272 = add i64 %271, -28
  %273 = add i64 %270, 3
  store i64 %273, i64* %3, align 8
  %274 = inttoptr i64 %272 to i32*
  %275 = load i32, i32* %274, align 4
  %276 = zext i32 %275 to i64
  store i64 %276, i64* %RAX.i646.pre-phi, align 8
  %277 = add i64 %271, -44
  %278 = add i64 %270, 6
  store i64 %278, i64* %3, align 8
  %279 = inttoptr i64 %277 to i32*
  %280 = load i32, i32* %279, align 4
  %281 = sub i32 %275, %280
  %282 = icmp ult i32 %275, %280
  %283 = zext i1 %282 to i8
  store i8 %283, i8* %14, align 1
  %284 = and i32 %281, 255
  %285 = tail call i32 @llvm.ctpop.i32(i32 %284)
  %286 = trunc i32 %285 to i8
  %287 = and i8 %286, 1
  %288 = xor i8 %287, 1
  store i8 %288, i8* %21, align 1
  %289 = xor i32 %280, %275
  %290 = xor i32 %289, %281
  %291 = lshr i32 %290, 4
  %292 = trunc i32 %291 to i8
  %293 = and i8 %292, 1
  store i8 %293, i8* %27, align 1
  %294 = icmp eq i32 %281, 0
  %295 = zext i1 %294 to i8
  store i8 %295, i8* %30, align 1
  %296 = lshr i32 %281, 31
  %297 = trunc i32 %296 to i8
  store i8 %297, i8* %33, align 1
  %298 = lshr i32 %275, 31
  %299 = lshr i32 %280, 31
  %300 = xor i32 %299, %298
  %301 = xor i32 %296, %298
  %302 = add nuw nsw i32 %301, %300
  %303 = icmp eq i32 %302, 2
  %304 = zext i1 %303 to i8
  store i8 %304, i8* %39, align 1
  %305 = icmp ne i8 %297, 0
  %306 = xor i1 %305, %303
  %.v17 = select i1 %306, i64 12, i64 581
  %307 = add i64 %270, %.v17
  store i64 %307, i64* %3, align 8
  br i1 %306, label %block_402532, label %block_.L_40276b

block_402532:                                     ; preds = %block_.L_402526
  store i64 -9223372036854775808, i64* %RAX.i646.pre-phi, align 8
  %308 = add i64 %307, 13
  store i64 %308, i64* %3, align 8
  %309 = load i32, i32* %274, align 4
  %310 = zext i32 %309 to i64
  store i64 %310, i64* %RCX.i188, align 8
  %311 = add i64 %307, 16
  store i64 %311, i64* %3, align 8
  %312 = load i32, i32* %279, align 4
  %313 = add i32 %312, %309
  %314 = zext i32 %313 to i64
  store i64 %314, i64* %RCX.i188, align 8
  %315 = icmp ult i32 %313, %309
  %316 = icmp ult i32 %313, %312
  %317 = or i1 %315, %316
  %318 = zext i1 %317 to i8
  store i8 %318, i8* %14, align 1
  %319 = and i32 %313, 255
  %320 = tail call i32 @llvm.ctpop.i32(i32 %319)
  %321 = trunc i32 %320 to i8
  %322 = and i8 %321, 1
  %323 = xor i8 %322, 1
  store i8 %323, i8* %21, align 1
  %324 = xor i32 %312, %309
  %325 = xor i32 %324, %313
  %326 = lshr i32 %325, 4
  %327 = trunc i32 %326 to i8
  %328 = and i8 %327, 1
  store i8 %328, i8* %27, align 1
  %329 = icmp eq i32 %313, 0
  %330 = zext i1 %329 to i8
  store i8 %330, i8* %30, align 1
  %331 = lshr i32 %313, 31
  %332 = trunc i32 %331 to i8
  store i8 %332, i8* %33, align 1
  %333 = lshr i32 %309, 31
  %334 = lshr i32 %312, 31
  %335 = xor i32 %331, %333
  %336 = xor i32 %331, %334
  %337 = add nuw nsw i32 %335, %336
  %338 = icmp eq i32 %337, 2
  %339 = zext i1 %338 to i8
  store i8 %339, i8* %39, align 1
  %340 = add i64 %271, -32
  %341 = add i64 %307, 19
  store i64 %341, i64* %3, align 8
  %342 = inttoptr i64 %340 to i32*
  store i32 %313, i32* %342, align 4
  %343 = load i64, i64* %RBP.i, align 8
  %344 = add i64 %343, -32
  %345 = load i64, i64* %3, align 8
  %346 = add i64 %345, 3
  store i64 %346, i64* %3, align 8
  %347 = inttoptr i64 %344 to i32*
  %348 = load i32, i32* %347, align 4
  %349 = zext i32 %348 to i64
  store i64 %349, i64* %RCX.i188, align 8
  %350 = add i64 %343, -44
  %351 = add i64 %345, 6
  store i64 %351, i64* %3, align 8
  %352 = inttoptr i64 %350 to i32*
  %353 = load i32, i32* %352, align 4
  %354 = add i32 %353, %348
  %355 = zext i32 %354 to i64
  store i64 %355, i64* %RCX.i188, align 8
  %356 = icmp ult i32 %354, %348
  %357 = icmp ult i32 %354, %353
  %358 = or i1 %356, %357
  %359 = zext i1 %358 to i8
  store i8 %359, i8* %14, align 1
  %360 = and i32 %354, 255
  %361 = tail call i32 @llvm.ctpop.i32(i32 %360)
  %362 = trunc i32 %361 to i8
  %363 = and i8 %362, 1
  %364 = xor i8 %363, 1
  store i8 %364, i8* %21, align 1
  %365 = xor i32 %353, %348
  %366 = xor i32 %365, %354
  %367 = lshr i32 %366, 4
  %368 = trunc i32 %367 to i8
  %369 = and i8 %368, 1
  store i8 %369, i8* %27, align 1
  %370 = icmp eq i32 %354, 0
  %371 = zext i1 %370 to i8
  store i8 %371, i8* %30, align 1
  %372 = lshr i32 %354, 31
  %373 = trunc i32 %372 to i8
  store i8 %373, i8* %33, align 1
  %374 = lshr i32 %348, 31
  %375 = lshr i32 %353, 31
  %376 = xor i32 %372, %374
  %377 = xor i32 %372, %375
  %378 = add nuw nsw i32 %376, %377
  %379 = icmp eq i32 %378, 2
  %380 = zext i1 %379 to i8
  store i8 %380, i8* %39, align 1
  %381 = add i64 %343, -36
  %382 = add i64 %345, 9
  store i64 %382, i64* %3, align 8
  %383 = inttoptr i64 %381 to i32*
  store i32 %354, i32* %383, align 4
  %384 = load i64, i64* %RBP.i, align 8
  %385 = add i64 %384, -36
  %386 = load i64, i64* %3, align 8
  %387 = add i64 %386, 3
  store i64 %387, i64* %3, align 8
  %388 = inttoptr i64 %385 to i32*
  %389 = load i32, i32* %388, align 4
  %390 = zext i32 %389 to i64
  store i64 %390, i64* %RCX.i188, align 8
  %391 = add i64 %384, -44
  %392 = add i64 %386, 6
  store i64 %392, i64* %3, align 8
  %393 = inttoptr i64 %391 to i32*
  %394 = load i32, i32* %393, align 4
  %395 = add i32 %394, %389
  %396 = zext i32 %395 to i64
  store i64 %396, i64* %RCX.i188, align 8
  %397 = icmp ult i32 %395, %389
  %398 = icmp ult i32 %395, %394
  %399 = or i1 %397, %398
  %400 = zext i1 %399 to i8
  store i8 %400, i8* %14, align 1
  %401 = and i32 %395, 255
  %402 = tail call i32 @llvm.ctpop.i32(i32 %401)
  %403 = trunc i32 %402 to i8
  %404 = and i8 %403, 1
  %405 = xor i8 %404, 1
  store i8 %405, i8* %21, align 1
  %406 = xor i32 %394, %389
  %407 = xor i32 %406, %395
  %408 = lshr i32 %407, 4
  %409 = trunc i32 %408 to i8
  %410 = and i8 %409, 1
  store i8 %410, i8* %27, align 1
  %411 = icmp eq i32 %395, 0
  %412 = zext i1 %411 to i8
  store i8 %412, i8* %30, align 1
  %413 = lshr i32 %395, 31
  %414 = trunc i32 %413 to i8
  store i8 %414, i8* %33, align 1
  %415 = lshr i32 %389, 31
  %416 = lshr i32 %394, 31
  %417 = xor i32 %413, %415
  %418 = xor i32 %413, %416
  %419 = add nuw nsw i32 %417, %418
  %420 = icmp eq i32 %419, 2
  %421 = zext i1 %420 to i8
  store i8 %421, i8* %39, align 1
  %422 = add i64 %384, -40
  %423 = add i64 %386, 9
  store i64 %423, i64* %3, align 8
  %424 = inttoptr i64 %422 to i32*
  store i32 %395, i32* %424, align 4
  %425 = load i64, i64* %RBP.i, align 8
  %426 = add i64 %425, -16
  %427 = load i64, i64* %3, align 8
  %428 = add i64 %427, 4
  store i64 %428, i64* %3, align 8
  %429 = inttoptr i64 %426 to i64*
  %430 = load i64, i64* %429, align 8
  store i64 %430, i64* %RDX.i696, align 8
  %431 = add i64 %425, -28
  %432 = add i64 %427, 8
  store i64 %432, i64* %3, align 8
  %433 = inttoptr i64 %431 to i32*
  %434 = load i32, i32* %433, align 4
  %435 = sext i32 %434 to i64
  store i64 %435, i64* %RSI.i699, align 8
  %436 = shl nsw i64 %435, 3
  %437 = add i64 %436, %430
  %438 = add i64 %427, 13
  store i64 %438, i64* %3, align 8
  %439 = inttoptr i64 %437 to i64*
  %440 = load i64, i64* %439, align 8
  store i64 %440, i64* %267, align 1
  store double 0.000000e+00, double* %269, align 1
  %441 = add i64 %427, 17
  store i64 %441, i64* %3, align 8
  %442 = load i64, i64* %429, align 8
  store i64 %442, i64* %RDX.i696, align 8
  %443 = add i64 %425, -32
  %444 = add i64 %427, 21
  store i64 %444, i64* %3, align 8
  %445 = inttoptr i64 %443 to i32*
  %446 = load i32, i32* %445, align 4
  %447 = sext i32 %446 to i64
  store i64 %447, i64* %RSI.i699, align 8
  %448 = shl nsw i64 %447, 3
  %449 = add i64 %448, %442
  %450 = add i64 %427, 26
  store i64 %450, i64* %3, align 8
  %451 = bitcast i64 %440 to double
  %452 = inttoptr i64 %449 to double*
  %453 = load double, double* %452, align 8
  %454 = fadd double %451, %453
  store double %454, double* %266, align 1
  store i64 0, i64* %268, align 1
  %455 = add i64 %425, -56
  %456 = add i64 %427, 31
  store i64 %456, i64* %3, align 8
  %457 = inttoptr i64 %455 to double*
  store double %454, double* %457, align 8
  %458 = load i64, i64* %RBP.i, align 8
  %459 = add i64 %458, -16
  %460 = load i64, i64* %3, align 8
  %461 = add i64 %460, 4
  store i64 %461, i64* %3, align 8
  %462 = inttoptr i64 %459 to i64*
  %463 = load i64, i64* %462, align 8
  store i64 %463, i64* %RDX.i696, align 8
  %464 = add i64 %458, -28
  %465 = add i64 %460, 7
  store i64 %465, i64* %3, align 8
  %466 = inttoptr i64 %464 to i32*
  %467 = load i32, i32* %466, align 4
  %468 = add i32 %467, 1
  %469 = zext i32 %468 to i64
  store i64 %469, i64* %RCX.i188, align 8
  %470 = icmp eq i32 %467, -1
  %471 = icmp eq i32 %468, 0
  %472 = or i1 %470, %471
  %473 = zext i1 %472 to i8
  store i8 %473, i8* %14, align 1
  %474 = and i32 %468, 255
  %475 = tail call i32 @llvm.ctpop.i32(i32 %474)
  %476 = trunc i32 %475 to i8
  %477 = and i8 %476, 1
  %478 = xor i8 %477, 1
  store i8 %478, i8* %21, align 1
  %479 = xor i32 %468, %467
  %480 = lshr i32 %479, 4
  %481 = trunc i32 %480 to i8
  %482 = and i8 %481, 1
  store i8 %482, i8* %27, align 1
  %483 = zext i1 %471 to i8
  store i8 %483, i8* %30, align 1
  %484 = lshr i32 %468, 31
  %485 = trunc i32 %484 to i8
  store i8 %485, i8* %33, align 1
  %486 = lshr i32 %467, 31
  %487 = xor i32 %484, %486
  %488 = add nuw nsw i32 %487, %484
  %489 = icmp eq i32 %488, 2
  %490 = zext i1 %489 to i8
  store i8 %490, i8* %39, align 1
  %491 = sext i32 %468 to i64
  store i64 %491, i64* %RSI.i699, align 8
  %492 = shl nsw i64 %491, 3
  %493 = add i64 %463, %492
  %494 = add i64 %460, 18
  store i64 %494, i64* %3, align 8
  %495 = inttoptr i64 %493 to i64*
  %496 = load i64, i64* %495, align 8
  %497 = load i64, i64* %RAX.i646.pre-phi, align 8
  %498 = xor i64 %497, %496
  store i64 %498, i64* %RDX.i696, align 8
  store i8 0, i8* %14, align 1
  %499 = trunc i64 %498 to i32
  %500 = and i32 %499, 255
  %501 = tail call i32 @llvm.ctpop.i32(i32 %500)
  %502 = trunc i32 %501 to i8
  %503 = and i8 %502, 1
  %504 = xor i8 %503, 1
  store i8 %504, i8* %21, align 1
  %505 = icmp eq i64 %498, 0
  %506 = zext i1 %505 to i8
  store i8 %506, i8* %30, align 1
  %507 = lshr i64 %498, 63
  %508 = trunc i64 %507 to i8
  store i8 %508, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 %498, i64* %267, align 1
  store i64 0, i64* %268, align 1
  %509 = add i64 %460, 35
  store i64 %509, i64* %3, align 8
  %510 = load i64, i64* %462, align 8
  store i64 %510, i64* %RDX.i696, align 8
  %511 = add i64 %458, -32
  %512 = add i64 %460, 38
  store i64 %512, i64* %3, align 8
  %513 = inttoptr i64 %511 to i32*
  %514 = load i32, i32* %513, align 4
  %515 = add i32 %514, 1
  %516 = zext i32 %515 to i64
  store i64 %516, i64* %RCX.i188, align 8
  %517 = icmp eq i32 %514, -1
  %518 = icmp eq i32 %515, 0
  %519 = or i1 %517, %518
  %520 = zext i1 %519 to i8
  store i8 %520, i8* %14, align 1
  %521 = and i32 %515, 255
  %522 = tail call i32 @llvm.ctpop.i32(i32 %521)
  %523 = trunc i32 %522 to i8
  %524 = and i8 %523, 1
  %525 = xor i8 %524, 1
  store i8 %525, i8* %21, align 1
  %526 = xor i32 %515, %514
  %527 = lshr i32 %526, 4
  %528 = trunc i32 %527 to i8
  %529 = and i8 %528, 1
  store i8 %529, i8* %27, align 1
  %530 = zext i1 %518 to i8
  store i8 %530, i8* %30, align 1
  %531 = lshr i32 %515, 31
  %532 = trunc i32 %531 to i8
  store i8 %532, i8* %33, align 1
  %533 = lshr i32 %514, 31
  %534 = xor i32 %531, %533
  %535 = add nuw nsw i32 %534, %531
  %536 = icmp eq i32 %535, 2
  %537 = zext i1 %536 to i8
  store i8 %537, i8* %39, align 1
  %538 = sext i32 %515 to i64
  store i64 %538, i64* %RSI.i699, align 8
  %539 = shl nsw i64 %538, 3
  %540 = add i64 %510, %539
  %541 = add i64 %460, 49
  store i64 %541, i64* %3, align 8
  %542 = bitcast i64 %498 to double
  %543 = inttoptr i64 %540 to double*
  %544 = load double, double* %543, align 8
  %545 = fsub double %542, %544
  store double %545, double* %266, align 1
  store i64 0, i64* %268, align 1
  %546 = load i64, i64* %RBP.i, align 8
  %547 = add i64 %546, -64
  %548 = add i64 %460, 54
  store i64 %548, i64* %3, align 8
  %549 = inttoptr i64 %547 to double*
  store double %545, double* %549, align 8
  %550 = load i64, i64* %RBP.i, align 8
  %551 = add i64 %550, -16
  %552 = load i64, i64* %3, align 8
  %553 = add i64 %552, 4
  store i64 %553, i64* %3, align 8
  %554 = inttoptr i64 %551 to i64*
  %555 = load i64, i64* %554, align 8
  store i64 %555, i64* %RDX.i696, align 8
  %556 = add i64 %550, -28
  %557 = add i64 %552, 8
  store i64 %557, i64* %3, align 8
  %558 = inttoptr i64 %556 to i32*
  %559 = load i32, i32* %558, align 4
  %560 = sext i32 %559 to i64
  store i64 %560, i64* %RSI.i699, align 8
  %561 = shl nsw i64 %560, 3
  %562 = add i64 %561, %555
  %563 = add i64 %552, 13
  store i64 %563, i64* %3, align 8
  %564 = inttoptr i64 %562 to i64*
  %565 = load i64, i64* %564, align 8
  store i64 %565, i64* %267, align 1
  store double 0.000000e+00, double* %269, align 1
  %566 = add i64 %552, 17
  store i64 %566, i64* %3, align 8
  %567 = load i64, i64* %554, align 8
  store i64 %567, i64* %RDX.i696, align 8
  %568 = add i64 %550, -32
  %569 = add i64 %552, 21
  store i64 %569, i64* %3, align 8
  %570 = inttoptr i64 %568 to i32*
  %571 = load i32, i32* %570, align 4
  %572 = sext i32 %571 to i64
  store i64 %572, i64* %RSI.i699, align 8
  %573 = shl nsw i64 %572, 3
  %574 = add i64 %573, %567
  %575 = add i64 %552, 26
  store i64 %575, i64* %3, align 8
  %576 = bitcast i64 %565 to double
  %577 = inttoptr i64 %574 to double*
  %578 = load double, double* %577, align 8
  %579 = fsub double %576, %578
  store double %579, double* %266, align 1
  store i64 0, i64* %268, align 1
  %580 = add i64 %550, -72
  %581 = add i64 %552, 31
  store i64 %581, i64* %3, align 8
  %582 = inttoptr i64 %580 to double*
  store double %579, double* %582, align 8
  %583 = load i64, i64* %RBP.i, align 8
  %584 = add i64 %583, -16
  %585 = load i64, i64* %3, align 8
  %586 = add i64 %585, 4
  store i64 %586, i64* %3, align 8
  %587 = inttoptr i64 %584 to i64*
  %588 = load i64, i64* %587, align 8
  store i64 %588, i64* %RDX.i696, align 8
  %589 = add i64 %583, -28
  %590 = add i64 %585, 7
  store i64 %590, i64* %3, align 8
  %591 = inttoptr i64 %589 to i32*
  %592 = load i32, i32* %591, align 4
  %593 = add i32 %592, 1
  %594 = zext i32 %593 to i64
  store i64 %594, i64* %RCX.i188, align 8
  %595 = icmp eq i32 %592, -1
  %596 = icmp eq i32 %593, 0
  %597 = or i1 %595, %596
  %598 = zext i1 %597 to i8
  store i8 %598, i8* %14, align 1
  %599 = and i32 %593, 255
  %600 = tail call i32 @llvm.ctpop.i32(i32 %599)
  %601 = trunc i32 %600 to i8
  %602 = and i8 %601, 1
  %603 = xor i8 %602, 1
  store i8 %603, i8* %21, align 1
  %604 = xor i32 %593, %592
  %605 = lshr i32 %604, 4
  %606 = trunc i32 %605 to i8
  %607 = and i8 %606, 1
  store i8 %607, i8* %27, align 1
  %608 = zext i1 %596 to i8
  store i8 %608, i8* %30, align 1
  %609 = lshr i32 %593, 31
  %610 = trunc i32 %609 to i8
  store i8 %610, i8* %33, align 1
  %611 = lshr i32 %592, 31
  %612 = xor i32 %609, %611
  %613 = add nuw nsw i32 %612, %609
  %614 = icmp eq i32 %613, 2
  %615 = zext i1 %614 to i8
  store i8 %615, i8* %39, align 1
  %616 = sext i32 %593 to i64
  store i64 %616, i64* %RSI.i699, align 8
  %617 = shl nsw i64 %616, 3
  %618 = add i64 %588, %617
  %619 = add i64 %585, 18
  store i64 %619, i64* %3, align 8
  %620 = inttoptr i64 %618 to i64*
  %621 = load i64, i64* %620, align 8
  %622 = load i64, i64* %RAX.i646.pre-phi, align 8
  %623 = xor i64 %622, %621
  store i64 %623, i64* %RDX.i696, align 8
  store i8 0, i8* %14, align 1
  %624 = trunc i64 %623 to i32
  %625 = and i32 %624, 255
  %626 = tail call i32 @llvm.ctpop.i32(i32 %625)
  %627 = trunc i32 %626 to i8
  %628 = and i8 %627, 1
  %629 = xor i8 %628, 1
  store i8 %629, i8* %21, align 1
  %630 = icmp eq i64 %623, 0
  %631 = zext i1 %630 to i8
  store i8 %631, i8* %30, align 1
  %632 = lshr i64 %623, 63
  %633 = trunc i64 %632 to i8
  store i8 %633, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 %623, i64* %267, align 1
  store i64 0, i64* %268, align 1
  %634 = add i64 %585, 35
  store i64 %634, i64* %3, align 8
  %635 = load i64, i64* %587, align 8
  store i64 %635, i64* %RAX.i646.pre-phi, align 8
  %636 = add i64 %583, -32
  %637 = add i64 %585, 38
  store i64 %637, i64* %3, align 8
  %638 = inttoptr i64 %636 to i32*
  %639 = load i32, i32* %638, align 4
  %640 = add i32 %639, 1
  %641 = zext i32 %640 to i64
  store i64 %641, i64* %RCX.i188, align 8
  %642 = icmp eq i32 %639, -1
  %643 = icmp eq i32 %640, 0
  %644 = or i1 %642, %643
  %645 = zext i1 %644 to i8
  store i8 %645, i8* %14, align 1
  %646 = and i32 %640, 255
  %647 = tail call i32 @llvm.ctpop.i32(i32 %646)
  %648 = trunc i32 %647 to i8
  %649 = and i8 %648, 1
  %650 = xor i8 %649, 1
  store i8 %650, i8* %21, align 1
  %651 = xor i32 %640, %639
  %652 = lshr i32 %651, 4
  %653 = trunc i32 %652 to i8
  %654 = and i8 %653, 1
  store i8 %654, i8* %27, align 1
  %655 = zext i1 %643 to i8
  store i8 %655, i8* %30, align 1
  %656 = lshr i32 %640, 31
  %657 = trunc i32 %656 to i8
  store i8 %657, i8* %33, align 1
  %658 = lshr i32 %639, 31
  %659 = xor i32 %656, %658
  %660 = add nuw nsw i32 %659, %656
  %661 = icmp eq i32 %660, 2
  %662 = zext i1 %661 to i8
  store i8 %662, i8* %39, align 1
  %663 = sext i32 %640 to i64
  store i64 %663, i64* %RDX.i696, align 8
  %664 = shl nsw i64 %663, 3
  %665 = add i64 %635, %664
  %666 = add i64 %585, 49
  store i64 %666, i64* %3, align 8
  %667 = bitcast i64 %623 to double
  %668 = inttoptr i64 %665 to double*
  %669 = load double, double* %668, align 8
  %670 = fadd double %667, %669
  store double %670, double* %266, align 1
  store i64 0, i64* %268, align 1
  %671 = load i64, i64* %RBP.i, align 8
  %672 = add i64 %671, -80
  %673 = add i64 %585, 54
  store i64 %673, i64* %3, align 8
  %674 = inttoptr i64 %672 to double*
  store double %670, double* %674, align 8
  %675 = load i64, i64* %RBP.i, align 8
  %676 = add i64 %675, -16
  %677 = load i64, i64* %3, align 8
  %678 = add i64 %677, 4
  store i64 %678, i64* %3, align 8
  %679 = inttoptr i64 %676 to i64*
  %680 = load i64, i64* %679, align 8
  store i64 %680, i64* %RAX.i646.pre-phi, align 8
  %681 = add i64 %675, -36
  %682 = add i64 %677, 8
  store i64 %682, i64* %3, align 8
  %683 = inttoptr i64 %681 to i32*
  %684 = load i32, i32* %683, align 4
  %685 = sext i32 %684 to i64
  store i64 %685, i64* %RDX.i696, align 8
  %686 = shl nsw i64 %685, 3
  %687 = add i64 %686, %680
  %688 = add i64 %677, 13
  store i64 %688, i64* %3, align 8
  %689 = inttoptr i64 %687 to i64*
  %690 = load i64, i64* %689, align 8
  store i64 %690, i64* %267, align 1
  store double 0.000000e+00, double* %269, align 1
  %691 = add i64 %677, 17
  store i64 %691, i64* %3, align 8
  %692 = load i64, i64* %679, align 8
  store i64 %692, i64* %RAX.i646.pre-phi, align 8
  %693 = add i64 %675, -40
  %694 = add i64 %677, 21
  store i64 %694, i64* %3, align 8
  %695 = inttoptr i64 %693 to i32*
  %696 = load i32, i32* %695, align 4
  %697 = sext i32 %696 to i64
  store i64 %697, i64* %RDX.i696, align 8
  %698 = shl nsw i64 %697, 3
  %699 = add i64 %698, %692
  %700 = add i64 %677, 26
  store i64 %700, i64* %3, align 8
  %701 = bitcast i64 %690 to double
  %702 = inttoptr i64 %699 to double*
  %703 = load double, double* %702, align 8
  %704 = fadd double %701, %703
  store double %704, double* %266, align 1
  store i64 0, i64* %268, align 1
  %705 = add i64 %675, -88
  %706 = add i64 %677, 31
  store i64 %706, i64* %3, align 8
  %707 = inttoptr i64 %705 to double*
  store double %704, double* %707, align 8
  %708 = load i64, i64* %RBP.i, align 8
  %709 = add i64 %708, -16
  %710 = load i64, i64* %3, align 8
  %711 = add i64 %710, 4
  store i64 %711, i64* %3, align 8
  %712 = inttoptr i64 %709 to i64*
  %713 = load i64, i64* %712, align 8
  store i64 %713, i64* %RAX.i646.pre-phi, align 8
  %714 = add i64 %708, -36
  %715 = add i64 %710, 7
  store i64 %715, i64* %3, align 8
  %716 = inttoptr i64 %714 to i32*
  %717 = load i32, i32* %716, align 4
  %718 = add i32 %717, 1
  %719 = zext i32 %718 to i64
  store i64 %719, i64* %RCX.i188, align 8
  %720 = icmp eq i32 %717, -1
  %721 = icmp eq i32 %718, 0
  %722 = or i1 %720, %721
  %723 = zext i1 %722 to i8
  store i8 %723, i8* %14, align 1
  %724 = and i32 %718, 255
  %725 = tail call i32 @llvm.ctpop.i32(i32 %724)
  %726 = trunc i32 %725 to i8
  %727 = and i8 %726, 1
  %728 = xor i8 %727, 1
  store i8 %728, i8* %21, align 1
  %729 = xor i32 %718, %717
  %730 = lshr i32 %729, 4
  %731 = trunc i32 %730 to i8
  %732 = and i8 %731, 1
  store i8 %732, i8* %27, align 1
  %733 = zext i1 %721 to i8
  store i8 %733, i8* %30, align 1
  %734 = lshr i32 %718, 31
  %735 = trunc i32 %734 to i8
  store i8 %735, i8* %33, align 1
  %736 = lshr i32 %717, 31
  %737 = xor i32 %734, %736
  %738 = add nuw nsw i32 %737, %734
  %739 = icmp eq i32 %738, 2
  %740 = zext i1 %739 to i8
  store i8 %740, i8* %39, align 1
  %741 = sext i32 %718 to i64
  store i64 %741, i64* %RDX.i696, align 8
  %742 = shl nsw i64 %741, 3
  %743 = add i64 %713, %742
  %744 = add i64 %710, 18
  store i64 %744, i64* %3, align 8
  %745 = inttoptr i64 %743 to i64*
  %746 = load i64, i64* %745, align 8
  store i64 %746, i64* %267, align 1
  store double 0.000000e+00, double* %269, align 1
  %747 = add i64 %710, 22
  store i64 %747, i64* %3, align 8
  %748 = load i64, i64* %712, align 8
  store i64 %748, i64* %RAX.i646.pre-phi, align 8
  %749 = add i64 %708, -40
  %750 = add i64 %710, 25
  store i64 %750, i64* %3, align 8
  %751 = inttoptr i64 %749 to i32*
  %752 = load i32, i32* %751, align 4
  %753 = add i32 %752, 1
  %754 = zext i32 %753 to i64
  store i64 %754, i64* %RCX.i188, align 8
  %755 = icmp eq i32 %752, -1
  %756 = icmp eq i32 %753, 0
  %757 = or i1 %755, %756
  %758 = zext i1 %757 to i8
  store i8 %758, i8* %14, align 1
  %759 = and i32 %753, 255
  %760 = tail call i32 @llvm.ctpop.i32(i32 %759)
  %761 = trunc i32 %760 to i8
  %762 = and i8 %761, 1
  %763 = xor i8 %762, 1
  store i8 %763, i8* %21, align 1
  %764 = xor i32 %753, %752
  %765 = lshr i32 %764, 4
  %766 = trunc i32 %765 to i8
  %767 = and i8 %766, 1
  store i8 %767, i8* %27, align 1
  %768 = zext i1 %756 to i8
  store i8 %768, i8* %30, align 1
  %769 = lshr i32 %753, 31
  %770 = trunc i32 %769 to i8
  store i8 %770, i8* %33, align 1
  %771 = lshr i32 %752, 31
  %772 = xor i32 %769, %771
  %773 = add nuw nsw i32 %772, %769
  %774 = icmp eq i32 %773, 2
  %775 = zext i1 %774 to i8
  store i8 %775, i8* %39, align 1
  %776 = sext i32 %753 to i64
  store i64 %776, i64* %RDX.i696, align 8
  %777 = shl nsw i64 %776, 3
  %778 = add i64 %748, %777
  %779 = add i64 %710, 36
  store i64 %779, i64* %3, align 8
  %780 = bitcast i64 %746 to double
  %781 = inttoptr i64 %778 to double*
  %782 = load double, double* %781, align 8
  %783 = fadd double %780, %782
  store double %783, double* %266, align 1
  store i64 0, i64* %268, align 1
  %784 = load i64, i64* %RBP.i, align 8
  %785 = add i64 %784, -96
  %786 = add i64 %710, 41
  store i64 %786, i64* %3, align 8
  %787 = inttoptr i64 %785 to double*
  store double %783, double* %787, align 8
  %788 = load i64, i64* %RBP.i, align 8
  %789 = add i64 %788, -16
  %790 = load i64, i64* %3, align 8
  %791 = add i64 %790, 4
  store i64 %791, i64* %3, align 8
  %792 = inttoptr i64 %789 to i64*
  %793 = load i64, i64* %792, align 8
  store i64 %793, i64* %RAX.i646.pre-phi, align 8
  %794 = add i64 %788, -36
  %795 = add i64 %790, 8
  store i64 %795, i64* %3, align 8
  %796 = inttoptr i64 %794 to i32*
  %797 = load i32, i32* %796, align 4
  %798 = sext i32 %797 to i64
  store i64 %798, i64* %RDX.i696, align 8
  %799 = shl nsw i64 %798, 3
  %800 = add i64 %799, %793
  %801 = add i64 %790, 13
  store i64 %801, i64* %3, align 8
  %802 = inttoptr i64 %800 to i64*
  %803 = load i64, i64* %802, align 8
  store i64 %803, i64* %267, align 1
  store double 0.000000e+00, double* %269, align 1
  %804 = add i64 %790, 17
  store i64 %804, i64* %3, align 8
  %805 = load i64, i64* %792, align 8
  store i64 %805, i64* %RAX.i646.pre-phi, align 8
  %806 = add i64 %788, -40
  %807 = add i64 %790, 21
  store i64 %807, i64* %3, align 8
  %808 = inttoptr i64 %806 to i32*
  %809 = load i32, i32* %808, align 4
  %810 = sext i32 %809 to i64
  store i64 %810, i64* %RDX.i696, align 8
  %811 = shl nsw i64 %810, 3
  %812 = add i64 %811, %805
  %813 = add i64 %790, 26
  store i64 %813, i64* %3, align 8
  %814 = bitcast i64 %803 to double
  %815 = inttoptr i64 %812 to double*
  %816 = load double, double* %815, align 8
  %817 = fsub double %814, %816
  store double %817, double* %266, align 1
  store i64 0, i64* %268, align 1
  %818 = add i64 %788, -104
  %819 = add i64 %790, 31
  store i64 %819, i64* %3, align 8
  %820 = inttoptr i64 %818 to double*
  store double %817, double* %820, align 8
  %821 = load i64, i64* %RBP.i, align 8
  %822 = add i64 %821, -16
  %823 = load i64, i64* %3, align 8
  %824 = add i64 %823, 4
  store i64 %824, i64* %3, align 8
  %825 = inttoptr i64 %822 to i64*
  %826 = load i64, i64* %825, align 8
  store i64 %826, i64* %RAX.i646.pre-phi, align 8
  %827 = add i64 %821, -36
  %828 = add i64 %823, 7
  store i64 %828, i64* %3, align 8
  %829 = inttoptr i64 %827 to i32*
  %830 = load i32, i32* %829, align 4
  %831 = add i32 %830, 1
  %832 = zext i32 %831 to i64
  store i64 %832, i64* %RCX.i188, align 8
  %833 = icmp eq i32 %830, -1
  %834 = icmp eq i32 %831, 0
  %835 = or i1 %833, %834
  %836 = zext i1 %835 to i8
  store i8 %836, i8* %14, align 1
  %837 = and i32 %831, 255
  %838 = tail call i32 @llvm.ctpop.i32(i32 %837)
  %839 = trunc i32 %838 to i8
  %840 = and i8 %839, 1
  %841 = xor i8 %840, 1
  store i8 %841, i8* %21, align 1
  %842 = xor i32 %831, %830
  %843 = lshr i32 %842, 4
  %844 = trunc i32 %843 to i8
  %845 = and i8 %844, 1
  store i8 %845, i8* %27, align 1
  %846 = zext i1 %834 to i8
  store i8 %846, i8* %30, align 1
  %847 = lshr i32 %831, 31
  %848 = trunc i32 %847 to i8
  store i8 %848, i8* %33, align 1
  %849 = lshr i32 %830, 31
  %850 = xor i32 %847, %849
  %851 = add nuw nsw i32 %850, %847
  %852 = icmp eq i32 %851, 2
  %853 = zext i1 %852 to i8
  store i8 %853, i8* %39, align 1
  %854 = sext i32 %831 to i64
  store i64 %854, i64* %RDX.i696, align 8
  %855 = shl nsw i64 %854, 3
  %856 = add i64 %826, %855
  %857 = add i64 %823, 18
  store i64 %857, i64* %3, align 8
  %858 = inttoptr i64 %856 to i64*
  %859 = load i64, i64* %858, align 8
  store i64 %859, i64* %267, align 1
  store double 0.000000e+00, double* %269, align 1
  %860 = add i64 %823, 22
  store i64 %860, i64* %3, align 8
  %861 = load i64, i64* %825, align 8
  store i64 %861, i64* %RAX.i646.pre-phi, align 8
  %862 = add i64 %821, -40
  %863 = add i64 %823, 25
  store i64 %863, i64* %3, align 8
  %864 = inttoptr i64 %862 to i32*
  %865 = load i32, i32* %864, align 4
  %866 = add i32 %865, 1
  %867 = zext i32 %866 to i64
  store i64 %867, i64* %RCX.i188, align 8
  %868 = icmp eq i32 %865, -1
  %869 = icmp eq i32 %866, 0
  %870 = or i1 %868, %869
  %871 = zext i1 %870 to i8
  store i8 %871, i8* %14, align 1
  %872 = and i32 %866, 255
  %873 = tail call i32 @llvm.ctpop.i32(i32 %872)
  %874 = trunc i32 %873 to i8
  %875 = and i8 %874, 1
  %876 = xor i8 %875, 1
  store i8 %876, i8* %21, align 1
  %877 = xor i32 %866, %865
  %878 = lshr i32 %877, 4
  %879 = trunc i32 %878 to i8
  %880 = and i8 %879, 1
  store i8 %880, i8* %27, align 1
  %881 = zext i1 %869 to i8
  store i8 %881, i8* %30, align 1
  %882 = lshr i32 %866, 31
  %883 = trunc i32 %882 to i8
  store i8 %883, i8* %33, align 1
  %884 = lshr i32 %865, 31
  %885 = xor i32 %882, %884
  %886 = add nuw nsw i32 %885, %882
  %887 = icmp eq i32 %886, 2
  %888 = zext i1 %887 to i8
  store i8 %888, i8* %39, align 1
  %889 = sext i32 %866 to i64
  store i64 %889, i64* %RDX.i696, align 8
  %890 = shl nsw i64 %889, 3
  %891 = add i64 %861, %890
  %892 = add i64 %823, 36
  store i64 %892, i64* %3, align 8
  %893 = bitcast i64 %859 to double
  %894 = inttoptr i64 %891 to double*
  %895 = load double, double* %894, align 8
  %896 = fsub double %893, %895
  store double %896, double* %266, align 1
  store i64 0, i64* %268, align 1
  %897 = load i64, i64* %RBP.i, align 8
  %898 = add i64 %897, -112
  %899 = add i64 %823, 41
  store i64 %899, i64* %3, align 8
  %900 = inttoptr i64 %898 to double*
  store double %896, double* %900, align 8
  %901 = load i64, i64* %RBP.i, align 8
  %902 = add i64 %901, -56
  %903 = load i64, i64* %3, align 8
  %904 = add i64 %903, 5
  store i64 %904, i64* %3, align 8
  %905 = inttoptr i64 %902 to i64*
  %906 = load i64, i64* %905, align 8
  store i64 %906, i64* %267, align 1
  store double 0.000000e+00, double* %269, align 1
  %907 = add i64 %901, -88
  %908 = add i64 %903, 10
  store i64 %908, i64* %3, align 8
  %909 = bitcast i64 %906 to double
  %910 = inttoptr i64 %907 to double*
  %911 = load double, double* %910, align 8
  %912 = fadd double %909, %911
  store double %912, double* %266, align 1
  store i64 0, i64* %268, align 1
  %913 = add i64 %901, -16
  %914 = add i64 %903, 14
  store i64 %914, i64* %3, align 8
  %915 = inttoptr i64 %913 to i64*
  %916 = load i64, i64* %915, align 8
  store i64 %916, i64* %RAX.i646.pre-phi, align 8
  %917 = add i64 %901, -28
  %918 = add i64 %903, 18
  store i64 %918, i64* %3, align 8
  %919 = inttoptr i64 %917 to i32*
  %920 = load i32, i32* %919, align 4
  %921 = sext i32 %920 to i64
  store i64 %921, i64* %RDX.i696, align 8
  %922 = shl nsw i64 %921, 3
  %923 = add i64 %922, %916
  %924 = add i64 %903, 23
  store i64 %924, i64* %3, align 8
  %925 = inttoptr i64 %923 to double*
  store double %912, double* %925, align 8
  %926 = load i64, i64* %RBP.i, align 8
  %927 = add i64 %926, -64
  %928 = load i64, i64* %3, align 8
  %929 = add i64 %928, 5
  store i64 %929, i64* %3, align 8
  %930 = inttoptr i64 %927 to i64*
  %931 = load i64, i64* %930, align 8
  store i64 %931, i64* %267, align 1
  store double 0.000000e+00, double* %269, align 1
  %932 = add i64 %926, -96
  %933 = add i64 %928, 10
  store i64 %933, i64* %3, align 8
  %934 = bitcast i64 %931 to double
  %935 = inttoptr i64 %932 to double*
  %936 = load double, double* %935, align 8
  %937 = fsub double %934, %936
  store double %937, double* %266, align 1
  store i64 0, i64* %268, align 1
  %938 = add i64 %926, -16
  %939 = add i64 %928, 14
  store i64 %939, i64* %3, align 8
  %940 = inttoptr i64 %938 to i64*
  %941 = load i64, i64* %940, align 8
  store i64 %941, i64* %RAX.i646.pre-phi, align 8
  %942 = add i64 %926, -28
  %943 = add i64 %928, 17
  store i64 %943, i64* %3, align 8
  %944 = inttoptr i64 %942 to i32*
  %945 = load i32, i32* %944, align 4
  %946 = add i32 %945, 1
  %947 = zext i32 %946 to i64
  store i64 %947, i64* %RCX.i188, align 8
  %948 = icmp eq i32 %945, -1
  %949 = icmp eq i32 %946, 0
  %950 = or i1 %948, %949
  %951 = zext i1 %950 to i8
  store i8 %951, i8* %14, align 1
  %952 = and i32 %946, 255
  %953 = tail call i32 @llvm.ctpop.i32(i32 %952)
  %954 = trunc i32 %953 to i8
  %955 = and i8 %954, 1
  %956 = xor i8 %955, 1
  store i8 %956, i8* %21, align 1
  %957 = xor i32 %946, %945
  %958 = lshr i32 %957, 4
  %959 = trunc i32 %958 to i8
  %960 = and i8 %959, 1
  store i8 %960, i8* %27, align 1
  %961 = zext i1 %949 to i8
  store i8 %961, i8* %30, align 1
  %962 = lshr i32 %946, 31
  %963 = trunc i32 %962 to i8
  store i8 %963, i8* %33, align 1
  %964 = lshr i32 %945, 31
  %965 = xor i32 %962, %964
  %966 = add nuw nsw i32 %965, %962
  %967 = icmp eq i32 %966, 2
  %968 = zext i1 %967 to i8
  store i8 %968, i8* %39, align 1
  %969 = sext i32 %946 to i64
  store i64 %969, i64* %RDX.i696, align 8
  %970 = shl nsw i64 %969, 3
  %971 = add i64 %941, %970
  %972 = add i64 %928, 28
  store i64 %972, i64* %3, align 8
  %973 = inttoptr i64 %971 to double*
  store double %937, double* %973, align 8
  %974 = load i64, i64* %RBP.i, align 8
  %975 = add i64 %974, -56
  %976 = load i64, i64* %3, align 8
  %977 = add i64 %976, 5
  store i64 %977, i64* %3, align 8
  %978 = inttoptr i64 %975 to i64*
  %979 = load i64, i64* %978, align 8
  store i64 %979, i64* %267, align 1
  store double 0.000000e+00, double* %269, align 1
  %980 = add i64 %974, -88
  %981 = add i64 %976, 10
  store i64 %981, i64* %3, align 8
  %982 = bitcast i64 %979 to double
  %983 = inttoptr i64 %980 to double*
  %984 = load double, double* %983, align 8
  %985 = fsub double %982, %984
  store double %985, double* %266, align 1
  store i64 0, i64* %268, align 1
  %986 = add i64 %974, -16
  %987 = add i64 %976, 14
  store i64 %987, i64* %3, align 8
  %988 = inttoptr i64 %986 to i64*
  %989 = load i64, i64* %988, align 8
  store i64 %989, i64* %RAX.i646.pre-phi, align 8
  %990 = add i64 %974, -36
  %991 = add i64 %976, 18
  store i64 %991, i64* %3, align 8
  %992 = inttoptr i64 %990 to i32*
  %993 = load i32, i32* %992, align 4
  %994 = sext i32 %993 to i64
  store i64 %994, i64* %RDX.i696, align 8
  %995 = shl nsw i64 %994, 3
  %996 = add i64 %995, %989
  %997 = add i64 %976, 23
  store i64 %997, i64* %3, align 8
  %998 = inttoptr i64 %996 to double*
  store double %985, double* %998, align 8
  %999 = load i64, i64* %RBP.i, align 8
  %1000 = add i64 %999, -64
  %1001 = load i64, i64* %3, align 8
  %1002 = add i64 %1001, 5
  store i64 %1002, i64* %3, align 8
  %1003 = inttoptr i64 %1000 to i64*
  %1004 = load i64, i64* %1003, align 8
  store i64 %1004, i64* %267, align 1
  store double 0.000000e+00, double* %269, align 1
  %1005 = add i64 %999, -96
  %1006 = add i64 %1001, 10
  store i64 %1006, i64* %3, align 8
  %1007 = bitcast i64 %1004 to double
  %1008 = inttoptr i64 %1005 to double*
  %1009 = load double, double* %1008, align 8
  %1010 = fadd double %1007, %1009
  store double %1010, double* %266, align 1
  store i64 0, i64* %268, align 1
  %1011 = add i64 %999, -16
  %1012 = add i64 %1001, 14
  store i64 %1012, i64* %3, align 8
  %1013 = inttoptr i64 %1011 to i64*
  %1014 = load i64, i64* %1013, align 8
  store i64 %1014, i64* %RAX.i646.pre-phi, align 8
  %1015 = add i64 %999, -36
  %1016 = add i64 %1001, 17
  store i64 %1016, i64* %3, align 8
  %1017 = inttoptr i64 %1015 to i32*
  %1018 = load i32, i32* %1017, align 4
  %1019 = add i32 %1018, 1
  %1020 = zext i32 %1019 to i64
  store i64 %1020, i64* %RCX.i188, align 8
  %1021 = icmp eq i32 %1018, -1
  %1022 = icmp eq i32 %1019, 0
  %1023 = or i1 %1021, %1022
  %1024 = zext i1 %1023 to i8
  store i8 %1024, i8* %14, align 1
  %1025 = and i32 %1019, 255
  %1026 = tail call i32 @llvm.ctpop.i32(i32 %1025)
  %1027 = trunc i32 %1026 to i8
  %1028 = and i8 %1027, 1
  %1029 = xor i8 %1028, 1
  store i8 %1029, i8* %21, align 1
  %1030 = xor i32 %1019, %1018
  %1031 = lshr i32 %1030, 4
  %1032 = trunc i32 %1031 to i8
  %1033 = and i8 %1032, 1
  store i8 %1033, i8* %27, align 1
  %1034 = zext i1 %1022 to i8
  store i8 %1034, i8* %30, align 1
  %1035 = lshr i32 %1019, 31
  %1036 = trunc i32 %1035 to i8
  store i8 %1036, i8* %33, align 1
  %1037 = lshr i32 %1018, 31
  %1038 = xor i32 %1035, %1037
  %1039 = add nuw nsw i32 %1038, %1035
  %1040 = icmp eq i32 %1039, 2
  %1041 = zext i1 %1040 to i8
  store i8 %1041, i8* %39, align 1
  %1042 = sext i32 %1019 to i64
  store i64 %1042, i64* %RDX.i696, align 8
  %1043 = shl nsw i64 %1042, 3
  %1044 = add i64 %1014, %1043
  %1045 = add i64 %1001, 28
  store i64 %1045, i64* %3, align 8
  %1046 = inttoptr i64 %1044 to double*
  store double %1010, double* %1046, align 8
  %1047 = load i64, i64* %RBP.i, align 8
  %1048 = add i64 %1047, -72
  %1049 = load i64, i64* %3, align 8
  %1050 = add i64 %1049, 5
  store i64 %1050, i64* %3, align 8
  %1051 = inttoptr i64 %1048 to i64*
  %1052 = load i64, i64* %1051, align 8
  store i64 %1052, i64* %267, align 1
  store double 0.000000e+00, double* %269, align 1
  %1053 = add i64 %1047, -112
  %1054 = add i64 %1049, 10
  store i64 %1054, i64* %3, align 8
  %1055 = bitcast i64 %1052 to double
  %1056 = inttoptr i64 %1053 to double*
  %1057 = load double, double* %1056, align 8
  %1058 = fsub double %1055, %1057
  store double %1058, double* %266, align 1
  store i64 0, i64* %268, align 1
  %1059 = add i64 %1047, -16
  %1060 = add i64 %1049, 14
  store i64 %1060, i64* %3, align 8
  %1061 = inttoptr i64 %1059 to i64*
  %1062 = load i64, i64* %1061, align 8
  store i64 %1062, i64* %RAX.i646.pre-phi, align 8
  %1063 = add i64 %1047, -32
  %1064 = add i64 %1049, 18
  store i64 %1064, i64* %3, align 8
  %1065 = inttoptr i64 %1063 to i32*
  %1066 = load i32, i32* %1065, align 4
  %1067 = sext i32 %1066 to i64
  store i64 %1067, i64* %RDX.i696, align 8
  %1068 = shl nsw i64 %1067, 3
  %1069 = add i64 %1068, %1062
  %1070 = add i64 %1049, 23
  store i64 %1070, i64* %3, align 8
  %1071 = inttoptr i64 %1069 to double*
  store double %1058, double* %1071, align 8
  %1072 = load i64, i64* %RBP.i, align 8
  %1073 = add i64 %1072, -80
  %1074 = load i64, i64* %3, align 8
  %1075 = add i64 %1074, 5
  store i64 %1075, i64* %3, align 8
  %1076 = inttoptr i64 %1073 to i64*
  %1077 = load i64, i64* %1076, align 8
  store i64 %1077, i64* %267, align 1
  store double 0.000000e+00, double* %269, align 1
  %1078 = add i64 %1072, -104
  %1079 = add i64 %1074, 10
  store i64 %1079, i64* %3, align 8
  %1080 = bitcast i64 %1077 to double
  %1081 = inttoptr i64 %1078 to double*
  %1082 = load double, double* %1081, align 8
  %1083 = fsub double %1080, %1082
  store double %1083, double* %266, align 1
  store i64 0, i64* %268, align 1
  %1084 = add i64 %1072, -16
  %1085 = add i64 %1074, 14
  store i64 %1085, i64* %3, align 8
  %1086 = inttoptr i64 %1084 to i64*
  %1087 = load i64, i64* %1086, align 8
  store i64 %1087, i64* %RAX.i646.pre-phi, align 8
  %1088 = add i64 %1072, -32
  %1089 = add i64 %1074, 17
  store i64 %1089, i64* %3, align 8
  %1090 = inttoptr i64 %1088 to i32*
  %1091 = load i32, i32* %1090, align 4
  %1092 = add i32 %1091, 1
  %1093 = zext i32 %1092 to i64
  store i64 %1093, i64* %RCX.i188, align 8
  %1094 = icmp eq i32 %1091, -1
  %1095 = icmp eq i32 %1092, 0
  %1096 = or i1 %1094, %1095
  %1097 = zext i1 %1096 to i8
  store i8 %1097, i8* %14, align 1
  %1098 = and i32 %1092, 255
  %1099 = tail call i32 @llvm.ctpop.i32(i32 %1098)
  %1100 = trunc i32 %1099 to i8
  %1101 = and i8 %1100, 1
  %1102 = xor i8 %1101, 1
  store i8 %1102, i8* %21, align 1
  %1103 = xor i32 %1092, %1091
  %1104 = lshr i32 %1103, 4
  %1105 = trunc i32 %1104 to i8
  %1106 = and i8 %1105, 1
  store i8 %1106, i8* %27, align 1
  %1107 = zext i1 %1095 to i8
  store i8 %1107, i8* %30, align 1
  %1108 = lshr i32 %1092, 31
  %1109 = trunc i32 %1108 to i8
  store i8 %1109, i8* %33, align 1
  %1110 = lshr i32 %1091, 31
  %1111 = xor i32 %1108, %1110
  %1112 = add nuw nsw i32 %1111, %1108
  %1113 = icmp eq i32 %1112, 2
  %1114 = zext i1 %1113 to i8
  store i8 %1114, i8* %39, align 1
  %1115 = sext i32 %1092 to i64
  store i64 %1115, i64* %RDX.i696, align 8
  %1116 = shl nsw i64 %1115, 3
  %1117 = add i64 %1087, %1116
  %1118 = add i64 %1074, 28
  store i64 %1118, i64* %3, align 8
  %1119 = inttoptr i64 %1117 to double*
  store double %1083, double* %1119, align 8
  %1120 = load i64, i64* %RBP.i, align 8
  %1121 = add i64 %1120, -72
  %1122 = load i64, i64* %3, align 8
  %1123 = add i64 %1122, 5
  store i64 %1123, i64* %3, align 8
  %1124 = inttoptr i64 %1121 to i64*
  %1125 = load i64, i64* %1124, align 8
  store i64 %1125, i64* %267, align 1
  store double 0.000000e+00, double* %269, align 1
  %1126 = add i64 %1120, -112
  %1127 = add i64 %1122, 10
  store i64 %1127, i64* %3, align 8
  %1128 = bitcast i64 %1125 to double
  %1129 = inttoptr i64 %1126 to double*
  %1130 = load double, double* %1129, align 8
  %1131 = fadd double %1128, %1130
  store double %1131, double* %266, align 1
  store i64 0, i64* %268, align 1
  %1132 = add i64 %1120, -16
  %1133 = add i64 %1122, 14
  store i64 %1133, i64* %3, align 8
  %1134 = inttoptr i64 %1132 to i64*
  %1135 = load i64, i64* %1134, align 8
  store i64 %1135, i64* %RAX.i646.pre-phi, align 8
  %1136 = add i64 %1120, -40
  %1137 = add i64 %1122, 18
  store i64 %1137, i64* %3, align 8
  %1138 = inttoptr i64 %1136 to i32*
  %1139 = load i32, i32* %1138, align 4
  %1140 = sext i32 %1139 to i64
  store i64 %1140, i64* %RDX.i696, align 8
  %1141 = shl nsw i64 %1140, 3
  %1142 = add i64 %1141, %1135
  %1143 = add i64 %1122, 23
  store i64 %1143, i64* %3, align 8
  %1144 = inttoptr i64 %1142 to double*
  store double %1131, double* %1144, align 8
  %1145 = load i64, i64* %RBP.i, align 8
  %1146 = add i64 %1145, -80
  %1147 = load i64, i64* %3, align 8
  %1148 = add i64 %1147, 5
  store i64 %1148, i64* %3, align 8
  %1149 = inttoptr i64 %1146 to i64*
  %1150 = load i64, i64* %1149, align 8
  store i64 %1150, i64* %267, align 1
  store double 0.000000e+00, double* %269, align 1
  %1151 = add i64 %1145, -104
  %1152 = add i64 %1147, 10
  store i64 %1152, i64* %3, align 8
  %1153 = bitcast i64 %1150 to double
  %1154 = inttoptr i64 %1151 to double*
  %1155 = load double, double* %1154, align 8
  %1156 = fadd double %1153, %1155
  store double %1156, double* %266, align 1
  store i64 0, i64* %268, align 1
  %1157 = add i64 %1145, -16
  %1158 = add i64 %1147, 14
  store i64 %1158, i64* %3, align 8
  %1159 = inttoptr i64 %1157 to i64*
  %1160 = load i64, i64* %1159, align 8
  store i64 %1160, i64* %RAX.i646.pre-phi, align 8
  %1161 = add i64 %1145, -40
  %1162 = add i64 %1147, 17
  store i64 %1162, i64* %3, align 8
  %1163 = inttoptr i64 %1161 to i32*
  %1164 = load i32, i32* %1163, align 4
  %1165 = add i32 %1164, 1
  %1166 = zext i32 %1165 to i64
  store i64 %1166, i64* %RCX.i188, align 8
  %1167 = icmp eq i32 %1164, -1
  %1168 = icmp eq i32 %1165, 0
  %1169 = or i1 %1167, %1168
  %1170 = zext i1 %1169 to i8
  store i8 %1170, i8* %14, align 1
  %1171 = and i32 %1165, 255
  %1172 = tail call i32 @llvm.ctpop.i32(i32 %1171)
  %1173 = trunc i32 %1172 to i8
  %1174 = and i8 %1173, 1
  %1175 = xor i8 %1174, 1
  store i8 %1175, i8* %21, align 1
  %1176 = xor i32 %1165, %1164
  %1177 = lshr i32 %1176, 4
  %1178 = trunc i32 %1177 to i8
  %1179 = and i8 %1178, 1
  store i8 %1179, i8* %27, align 1
  %1180 = zext i1 %1168 to i8
  store i8 %1180, i8* %30, align 1
  %1181 = lshr i32 %1165, 31
  %1182 = trunc i32 %1181 to i8
  store i8 %1182, i8* %33, align 1
  %1183 = lshr i32 %1164, 31
  %1184 = xor i32 %1181, %1183
  %1185 = add nuw nsw i32 %1184, %1181
  %1186 = icmp eq i32 %1185, 2
  %1187 = zext i1 %1186 to i8
  store i8 %1187, i8* %39, align 1
  %1188 = sext i32 %1165 to i64
  store i64 %1188, i64* %RDX.i696, align 8
  %1189 = shl nsw i64 %1188, 3
  %1190 = add i64 %1160, %1189
  %1191 = add i64 %1147, 28
  store i64 %1191, i64* %3, align 8
  %1192 = inttoptr i64 %1190 to double*
  store double %1156, double* %1192, align 8
  %1193 = load i64, i64* %RBP.i, align 8
  %1194 = add i64 %1193, -28
  %1195 = load i64, i64* %3, align 8
  %1196 = add i64 %1195, 3
  store i64 %1196, i64* %3, align 8
  %1197 = inttoptr i64 %1194 to i32*
  %1198 = load i32, i32* %1197, align 4
  %1199 = add i32 %1198, 2
  %1200 = zext i32 %1199 to i64
  store i64 %1200, i64* %RAX.i646.pre-phi, align 8
  %1201 = icmp ugt i32 %1198, -3
  %1202 = zext i1 %1201 to i8
  store i8 %1202, i8* %14, align 1
  %1203 = and i32 %1199, 255
  %1204 = tail call i32 @llvm.ctpop.i32(i32 %1203)
  %1205 = trunc i32 %1204 to i8
  %1206 = and i8 %1205, 1
  %1207 = xor i8 %1206, 1
  store i8 %1207, i8* %21, align 1
  %1208 = xor i32 %1199, %1198
  %1209 = lshr i32 %1208, 4
  %1210 = trunc i32 %1209 to i8
  %1211 = and i8 %1210, 1
  store i8 %1211, i8* %27, align 1
  %1212 = icmp eq i32 %1199, 0
  %1213 = zext i1 %1212 to i8
  store i8 %1213, i8* %30, align 1
  %1214 = lshr i32 %1199, 31
  %1215 = trunc i32 %1214 to i8
  store i8 %1215, i8* %33, align 1
  %1216 = lshr i32 %1198, 31
  %1217 = xor i32 %1214, %1216
  %1218 = add nuw nsw i32 %1217, %1214
  %1219 = icmp eq i32 %1218, 2
  %1220 = zext i1 %1219 to i8
  store i8 %1220, i8* %39, align 1
  %1221 = add i64 %1195, 9
  store i64 %1221, i64* %3, align 8
  store i32 %1199, i32* %1197, align 4
  %1222 = load i64, i64* %3, align 8
  %1223 = add i64 %1222, -576
  store i64 %1223, i64* %3, align 8
  br label %block_.L_402526

block_.L_40276b:                                  ; preds = %block_.L_402526
  %1224 = add i64 %307, 286
  br label %block_.L_402889

block_.L_402777:                                  ; preds = %block_.L_402777.preheader, %block_402783
  %1225 = phi i64 [ %1671, %block_402783 ], [ %.pre9, %block_.L_402777.preheader ]
  %1226 = load i64, i64* %RBP.i, align 8
  %1227 = add i64 %1226, -28
  %1228 = add i64 %1225, 3
  store i64 %1228, i64* %3, align 8
  %1229 = inttoptr i64 %1227 to i32*
  %1230 = load i32, i32* %1229, align 4
  %1231 = zext i32 %1230 to i64
  store i64 %1231, i64* %RAX.i646.pre-phi, align 8
  %1232 = add i64 %1226, -44
  %1233 = add i64 %1225, 6
  store i64 %1233, i64* %3, align 8
  %1234 = inttoptr i64 %1232 to i32*
  %1235 = load i32, i32* %1234, align 4
  %1236 = sub i32 %1230, %1235
  %1237 = icmp ult i32 %1230, %1235
  %1238 = zext i1 %1237 to i8
  store i8 %1238, i8* %14, align 1
  %1239 = and i32 %1236, 255
  %1240 = tail call i32 @llvm.ctpop.i32(i32 %1239)
  %1241 = trunc i32 %1240 to i8
  %1242 = and i8 %1241, 1
  %1243 = xor i8 %1242, 1
  store i8 %1243, i8* %21, align 1
  %1244 = xor i32 %1235, %1230
  %1245 = xor i32 %1244, %1236
  %1246 = lshr i32 %1245, 4
  %1247 = trunc i32 %1246 to i8
  %1248 = and i8 %1247, 1
  store i8 %1248, i8* %27, align 1
  %1249 = icmp eq i32 %1236, 0
  %1250 = zext i1 %1249 to i8
  store i8 %1250, i8* %30, align 1
  %1251 = lshr i32 %1236, 31
  %1252 = trunc i32 %1251 to i8
  store i8 %1252, i8* %33, align 1
  %1253 = lshr i32 %1230, 31
  %1254 = lshr i32 %1235, 31
  %1255 = xor i32 %1254, %1253
  %1256 = xor i32 %1251, %1253
  %1257 = add nuw nsw i32 %1256, %1255
  %1258 = icmp eq i32 %1257, 2
  %1259 = zext i1 %1258 to i8
  store i8 %1259, i8* %39, align 1
  %1260 = icmp ne i8 %1252, 0
  %1261 = xor i1 %1260, %1258
  %.v16 = select i1 %1261, i64 12, i64 269
  %1262 = add i64 %1225, %.v16
  store i64 %1262, i64* %3, align 8
  br i1 %1261, label %block_402783, label %block_.L_402884

block_402783:                                     ; preds = %block_.L_402777
  store i64 -9223372036854775808, i64* %RAX.i646.pre-phi, align 8
  %1263 = add i64 %1262, 13
  store i64 %1263, i64* %3, align 8
  %1264 = load i32, i32* %1229, align 4
  %1265 = zext i32 %1264 to i64
  store i64 %1265, i64* %RCX.i188, align 8
  %1266 = add i64 %1262, 16
  store i64 %1266, i64* %3, align 8
  %1267 = load i32, i32* %1234, align 4
  %1268 = add i32 %1267, %1264
  %1269 = zext i32 %1268 to i64
  store i64 %1269, i64* %RCX.i188, align 8
  %1270 = icmp ult i32 %1268, %1264
  %1271 = icmp ult i32 %1268, %1267
  %1272 = or i1 %1270, %1271
  %1273 = zext i1 %1272 to i8
  store i8 %1273, i8* %14, align 1
  %1274 = and i32 %1268, 255
  %1275 = tail call i32 @llvm.ctpop.i32(i32 %1274)
  %1276 = trunc i32 %1275 to i8
  %1277 = and i8 %1276, 1
  %1278 = xor i8 %1277, 1
  store i8 %1278, i8* %21, align 1
  %1279 = xor i32 %1267, %1264
  %1280 = xor i32 %1279, %1268
  %1281 = lshr i32 %1280, 4
  %1282 = trunc i32 %1281 to i8
  %1283 = and i8 %1282, 1
  store i8 %1283, i8* %27, align 1
  %1284 = icmp eq i32 %1268, 0
  %1285 = zext i1 %1284 to i8
  store i8 %1285, i8* %30, align 1
  %1286 = lshr i32 %1268, 31
  %1287 = trunc i32 %1286 to i8
  store i8 %1287, i8* %33, align 1
  %1288 = lshr i32 %1264, 31
  %1289 = lshr i32 %1267, 31
  %1290 = xor i32 %1286, %1288
  %1291 = xor i32 %1286, %1289
  %1292 = add nuw nsw i32 %1290, %1291
  %1293 = icmp eq i32 %1292, 2
  %1294 = zext i1 %1293 to i8
  store i8 %1294, i8* %39, align 1
  %1295 = add i64 %1226, -32
  %1296 = add i64 %1262, 19
  store i64 %1296, i64* %3, align 8
  %1297 = inttoptr i64 %1295 to i32*
  store i32 %1268, i32* %1297, align 4
  %1298 = load i64, i64* %RBP.i, align 8
  %1299 = add i64 %1298, -16
  %1300 = load i64, i64* %3, align 8
  %1301 = add i64 %1300, 4
  store i64 %1301, i64* %3, align 8
  %1302 = inttoptr i64 %1299 to i64*
  %1303 = load i64, i64* %1302, align 8
  store i64 %1303, i64* %RDX.i696, align 8
  %1304 = add i64 %1298, -28
  %1305 = add i64 %1300, 8
  store i64 %1305, i64* %3, align 8
  %1306 = inttoptr i64 %1304 to i32*
  %1307 = load i32, i32* %1306, align 4
  %1308 = sext i32 %1307 to i64
  store i64 %1308, i64* %RSI.i699, align 8
  %1309 = shl nsw i64 %1308, 3
  %1310 = add i64 %1309, %1303
  %1311 = add i64 %1300, 13
  store i64 %1311, i64* %3, align 8
  %1312 = inttoptr i64 %1310 to i64*
  %1313 = load i64, i64* %1312, align 8
  store i64 %1313, i64* %267, align 1
  store double 0.000000e+00, double* %269, align 1
  %1314 = add i64 %1300, 17
  store i64 %1314, i64* %3, align 8
  %1315 = load i64, i64* %1302, align 8
  store i64 %1315, i64* %RDX.i696, align 8
  %1316 = add i64 %1298, -32
  %1317 = add i64 %1300, 21
  store i64 %1317, i64* %3, align 8
  %1318 = inttoptr i64 %1316 to i32*
  %1319 = load i32, i32* %1318, align 4
  %1320 = sext i32 %1319 to i64
  store i64 %1320, i64* %RSI.i699, align 8
  %1321 = shl nsw i64 %1320, 3
  %1322 = add i64 %1321, %1315
  %1323 = add i64 %1300, 26
  store i64 %1323, i64* %3, align 8
  %1324 = bitcast i64 %1313 to double
  %1325 = inttoptr i64 %1322 to double*
  %1326 = load double, double* %1325, align 8
  %1327 = fsub double %1324, %1326
  store double %1327, double* %266, align 1
  store i64 0, i64* %268, align 1
  %1328 = add i64 %1298, -56
  %1329 = add i64 %1300, 31
  store i64 %1329, i64* %3, align 8
  %1330 = inttoptr i64 %1328 to double*
  store double %1327, double* %1330, align 8
  %1331 = load i64, i64* %RBP.i, align 8
  %1332 = add i64 %1331, -16
  %1333 = load i64, i64* %3, align 8
  %1334 = add i64 %1333, 4
  store i64 %1334, i64* %3, align 8
  %1335 = inttoptr i64 %1332 to i64*
  %1336 = load i64, i64* %1335, align 8
  store i64 %1336, i64* %RDX.i696, align 8
  %1337 = add i64 %1331, -28
  %1338 = add i64 %1333, 7
  store i64 %1338, i64* %3, align 8
  %1339 = inttoptr i64 %1337 to i32*
  %1340 = load i32, i32* %1339, align 4
  %1341 = add i32 %1340, 1
  %1342 = zext i32 %1341 to i64
  store i64 %1342, i64* %RCX.i188, align 8
  %1343 = icmp eq i32 %1340, -1
  %1344 = icmp eq i32 %1341, 0
  %1345 = or i1 %1343, %1344
  %1346 = zext i1 %1345 to i8
  store i8 %1346, i8* %14, align 1
  %1347 = and i32 %1341, 255
  %1348 = tail call i32 @llvm.ctpop.i32(i32 %1347)
  %1349 = trunc i32 %1348 to i8
  %1350 = and i8 %1349, 1
  %1351 = xor i8 %1350, 1
  store i8 %1351, i8* %21, align 1
  %1352 = xor i32 %1341, %1340
  %1353 = lshr i32 %1352, 4
  %1354 = trunc i32 %1353 to i8
  %1355 = and i8 %1354, 1
  store i8 %1355, i8* %27, align 1
  %1356 = zext i1 %1344 to i8
  store i8 %1356, i8* %30, align 1
  %1357 = lshr i32 %1341, 31
  %1358 = trunc i32 %1357 to i8
  store i8 %1358, i8* %33, align 1
  %1359 = lshr i32 %1340, 31
  %1360 = xor i32 %1357, %1359
  %1361 = add nuw nsw i32 %1360, %1357
  %1362 = icmp eq i32 %1361, 2
  %1363 = zext i1 %1362 to i8
  store i8 %1363, i8* %39, align 1
  %1364 = sext i32 %1341 to i64
  store i64 %1364, i64* %RSI.i699, align 8
  %1365 = shl nsw i64 %1364, 3
  %1366 = add i64 %1336, %1365
  %1367 = add i64 %1333, 18
  store i64 %1367, i64* %3, align 8
  %1368 = inttoptr i64 %1366 to i64*
  %1369 = load i64, i64* %1368, align 8
  %1370 = load i64, i64* %RAX.i646.pre-phi, align 8
  %1371 = xor i64 %1370, %1369
  store i64 %1371, i64* %RDX.i696, align 8
  store i8 0, i8* %14, align 1
  %1372 = trunc i64 %1371 to i32
  %1373 = and i32 %1372, 255
  %1374 = tail call i32 @llvm.ctpop.i32(i32 %1373)
  %1375 = trunc i32 %1374 to i8
  %1376 = and i8 %1375, 1
  %1377 = xor i8 %1376, 1
  store i8 %1377, i8* %21, align 1
  %1378 = icmp eq i64 %1371, 0
  %1379 = zext i1 %1378 to i8
  store i8 %1379, i8* %30, align 1
  %1380 = lshr i64 %1371, 63
  %1381 = trunc i64 %1380 to i8
  store i8 %1381, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 %1371, i64* %267, align 1
  store i64 0, i64* %268, align 1
  %1382 = add i64 %1333, 35
  store i64 %1382, i64* %3, align 8
  %1383 = load i64, i64* %1335, align 8
  store i64 %1383, i64* %RDX.i696, align 8
  %1384 = add i64 %1331, -32
  %1385 = add i64 %1333, 38
  store i64 %1385, i64* %3, align 8
  %1386 = inttoptr i64 %1384 to i32*
  %1387 = load i32, i32* %1386, align 4
  %1388 = add i32 %1387, 1
  %1389 = zext i32 %1388 to i64
  store i64 %1389, i64* %RCX.i188, align 8
  %1390 = icmp eq i32 %1387, -1
  %1391 = icmp eq i32 %1388, 0
  %1392 = or i1 %1390, %1391
  %1393 = zext i1 %1392 to i8
  store i8 %1393, i8* %14, align 1
  %1394 = and i32 %1388, 255
  %1395 = tail call i32 @llvm.ctpop.i32(i32 %1394)
  %1396 = trunc i32 %1395 to i8
  %1397 = and i8 %1396, 1
  %1398 = xor i8 %1397, 1
  store i8 %1398, i8* %21, align 1
  %1399 = xor i32 %1388, %1387
  %1400 = lshr i32 %1399, 4
  %1401 = trunc i32 %1400 to i8
  %1402 = and i8 %1401, 1
  store i8 %1402, i8* %27, align 1
  %1403 = zext i1 %1391 to i8
  store i8 %1403, i8* %30, align 1
  %1404 = lshr i32 %1388, 31
  %1405 = trunc i32 %1404 to i8
  store i8 %1405, i8* %33, align 1
  %1406 = lshr i32 %1387, 31
  %1407 = xor i32 %1404, %1406
  %1408 = add nuw nsw i32 %1407, %1404
  %1409 = icmp eq i32 %1408, 2
  %1410 = zext i1 %1409 to i8
  store i8 %1410, i8* %39, align 1
  %1411 = sext i32 %1388 to i64
  store i64 %1411, i64* %RSI.i699, align 8
  %1412 = shl nsw i64 %1411, 3
  %1413 = add i64 %1383, %1412
  %1414 = add i64 %1333, 49
  store i64 %1414, i64* %3, align 8
  %1415 = bitcast i64 %1371 to double
  %1416 = inttoptr i64 %1413 to double*
  %1417 = load double, double* %1416, align 8
  %1418 = fadd double %1415, %1417
  store double %1418, double* %266, align 1
  store i64 0, i64* %268, align 1
  %1419 = load i64, i64* %RBP.i, align 8
  %1420 = add i64 %1419, -64
  %1421 = add i64 %1333, 54
  store i64 %1421, i64* %3, align 8
  %1422 = inttoptr i64 %1420 to double*
  store double %1418, double* %1422, align 8
  %1423 = load i64, i64* %RBP.i, align 8
  %1424 = add i64 %1423, -16
  %1425 = load i64, i64* %3, align 8
  %1426 = add i64 %1425, 4
  store i64 %1426, i64* %3, align 8
  %1427 = inttoptr i64 %1424 to i64*
  %1428 = load i64, i64* %1427, align 8
  store i64 %1428, i64* %RDX.i696, align 8
  %1429 = add i64 %1423, -32
  %1430 = add i64 %1425, 8
  store i64 %1430, i64* %3, align 8
  %1431 = inttoptr i64 %1429 to i32*
  %1432 = load i32, i32* %1431, align 4
  %1433 = sext i32 %1432 to i64
  store i64 %1433, i64* %RSI.i699, align 8
  %1434 = shl nsw i64 %1433, 3
  %1435 = add i64 %1434, %1428
  %1436 = add i64 %1425, 13
  store i64 %1436, i64* %3, align 8
  %1437 = inttoptr i64 %1435 to i64*
  %1438 = load i64, i64* %1437, align 8
  store i64 %1438, i64* %267, align 1
  store double 0.000000e+00, double* %269, align 1
  %1439 = add i64 %1425, 17
  store i64 %1439, i64* %3, align 8
  %1440 = load i64, i64* %1427, align 8
  store i64 %1440, i64* %RDX.i696, align 8
  %1441 = add i64 %1423, -28
  %1442 = add i64 %1425, 21
  store i64 %1442, i64* %3, align 8
  %1443 = inttoptr i64 %1441 to i32*
  %1444 = load i32, i32* %1443, align 4
  %1445 = sext i32 %1444 to i64
  store i64 %1445, i64* %RSI.i699, align 8
  %1446 = shl nsw i64 %1445, 3
  %1447 = add i64 %1446, %1440
  %1448 = add i64 %1425, 26
  store i64 %1448, i64* %3, align 8
  %1449 = bitcast i64 %1438 to double
  %1450 = inttoptr i64 %1447 to double*
  %1451 = load double, double* %1450, align 8
  %1452 = fadd double %1449, %1451
  store double %1452, double* %266, align 1
  store i64 0, i64* %268, align 1
  %1453 = add i64 %1425, 31
  store i64 %1453, i64* %3, align 8
  %1454 = inttoptr i64 %1447 to double*
  store double %1452, double* %1454, align 8
  %1455 = load i64, i64* %RBP.i, align 8
  %1456 = add i64 %1455, -16
  %1457 = load i64, i64* %3, align 8
  %1458 = add i64 %1457, 4
  store i64 %1458, i64* %3, align 8
  %1459 = inttoptr i64 %1456 to i64*
  %1460 = load i64, i64* %1459, align 8
  store i64 %1460, i64* %RDX.i696, align 8
  %1461 = add i64 %1455, -28
  %1462 = add i64 %1457, 7
  store i64 %1462, i64* %3, align 8
  %1463 = inttoptr i64 %1461 to i32*
  %1464 = load i32, i32* %1463, align 4
  %1465 = add i32 %1464, 1
  %1466 = zext i32 %1465 to i64
  store i64 %1466, i64* %RCX.i188, align 8
  %1467 = icmp eq i32 %1464, -1
  %1468 = icmp eq i32 %1465, 0
  %1469 = or i1 %1467, %1468
  %1470 = zext i1 %1469 to i8
  store i8 %1470, i8* %14, align 1
  %1471 = and i32 %1465, 255
  %1472 = tail call i32 @llvm.ctpop.i32(i32 %1471)
  %1473 = trunc i32 %1472 to i8
  %1474 = and i8 %1473, 1
  %1475 = xor i8 %1474, 1
  store i8 %1475, i8* %21, align 1
  %1476 = xor i32 %1465, %1464
  %1477 = lshr i32 %1476, 4
  %1478 = trunc i32 %1477 to i8
  %1479 = and i8 %1478, 1
  store i8 %1479, i8* %27, align 1
  %1480 = zext i1 %1468 to i8
  store i8 %1480, i8* %30, align 1
  %1481 = lshr i32 %1465, 31
  %1482 = trunc i32 %1481 to i8
  store i8 %1482, i8* %33, align 1
  %1483 = lshr i32 %1464, 31
  %1484 = xor i32 %1481, %1483
  %1485 = add nuw nsw i32 %1484, %1481
  %1486 = icmp eq i32 %1485, 2
  %1487 = zext i1 %1486 to i8
  store i8 %1487, i8* %39, align 1
  %1488 = sext i32 %1465 to i64
  store i64 %1488, i64* %RSI.i699, align 8
  %1489 = shl nsw i64 %1488, 3
  %1490 = add i64 %1460, %1489
  %1491 = add i64 %1457, 18
  store i64 %1491, i64* %3, align 8
  %1492 = inttoptr i64 %1490 to i64*
  %1493 = load i64, i64* %1492, align 8
  %1494 = load i64, i64* %RAX.i646.pre-phi, align 8
  %1495 = xor i64 %1494, %1493
  store i64 %1495, i64* %RDX.i696, align 8
  store i8 0, i8* %14, align 1
  %1496 = trunc i64 %1495 to i32
  %1497 = and i32 %1496, 255
  %1498 = tail call i32 @llvm.ctpop.i32(i32 %1497)
  %1499 = trunc i32 %1498 to i8
  %1500 = and i8 %1499, 1
  %1501 = xor i8 %1500, 1
  store i8 %1501, i8* %21, align 1
  %1502 = icmp eq i64 %1495, 0
  %1503 = zext i1 %1502 to i8
  store i8 %1503, i8* %30, align 1
  %1504 = lshr i64 %1495, 63
  %1505 = trunc i64 %1504 to i8
  store i8 %1505, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 %1495, i64* %267, align 1
  store i64 0, i64* %268, align 1
  %1506 = add i64 %1457, 35
  store i64 %1506, i64* %3, align 8
  %1507 = load i64, i64* %1459, align 8
  store i64 %1507, i64* %RAX.i646.pre-phi, align 8
  %1508 = add i64 %1455, -32
  %1509 = add i64 %1457, 38
  store i64 %1509, i64* %3, align 8
  %1510 = inttoptr i64 %1508 to i32*
  %1511 = load i32, i32* %1510, align 4
  %1512 = add i32 %1511, 1
  %1513 = zext i32 %1512 to i64
  store i64 %1513, i64* %RCX.i188, align 8
  %1514 = icmp eq i32 %1511, -1
  %1515 = icmp eq i32 %1512, 0
  %1516 = or i1 %1514, %1515
  %1517 = zext i1 %1516 to i8
  store i8 %1517, i8* %14, align 1
  %1518 = and i32 %1512, 255
  %1519 = tail call i32 @llvm.ctpop.i32(i32 %1518)
  %1520 = trunc i32 %1519 to i8
  %1521 = and i8 %1520, 1
  %1522 = xor i8 %1521, 1
  store i8 %1522, i8* %21, align 1
  %1523 = xor i32 %1512, %1511
  %1524 = lshr i32 %1523, 4
  %1525 = trunc i32 %1524 to i8
  %1526 = and i8 %1525, 1
  store i8 %1526, i8* %27, align 1
  %1527 = zext i1 %1515 to i8
  store i8 %1527, i8* %30, align 1
  %1528 = lshr i32 %1512, 31
  %1529 = trunc i32 %1528 to i8
  store i8 %1529, i8* %33, align 1
  %1530 = lshr i32 %1511, 31
  %1531 = xor i32 %1528, %1530
  %1532 = add nuw nsw i32 %1531, %1528
  %1533 = icmp eq i32 %1532, 2
  %1534 = zext i1 %1533 to i8
  store i8 %1534, i8* %39, align 1
  %1535 = sext i32 %1512 to i64
  store i64 %1535, i64* %RDX.i696, align 8
  %1536 = shl nsw i64 %1535, 3
  %1537 = add i64 %1507, %1536
  %1538 = add i64 %1457, 49
  store i64 %1538, i64* %3, align 8
  %1539 = bitcast i64 %1495 to double
  %1540 = inttoptr i64 %1537 to double*
  %1541 = load double, double* %1540, align 8
  %1542 = fsub double %1539, %1541
  store double %1542, double* %266, align 1
  store i64 0, i64* %268, align 1
  %1543 = load i64, i64* %RBP.i, align 8
  %1544 = add i64 %1543, -16
  %1545 = add i64 %1457, 53
  store i64 %1545, i64* %3, align 8
  %1546 = inttoptr i64 %1544 to i64*
  %1547 = load i64, i64* %1546, align 8
  store i64 %1547, i64* %RAX.i646.pre-phi, align 8
  %1548 = add i64 %1543, -28
  %1549 = add i64 %1457, 56
  store i64 %1549, i64* %3, align 8
  %1550 = inttoptr i64 %1548 to i32*
  %1551 = load i32, i32* %1550, align 4
  %1552 = add i32 %1551, 1
  %1553 = zext i32 %1552 to i64
  store i64 %1553, i64* %RCX.i188, align 8
  %1554 = icmp eq i32 %1551, -1
  %1555 = icmp eq i32 %1552, 0
  %1556 = or i1 %1554, %1555
  %1557 = zext i1 %1556 to i8
  store i8 %1557, i8* %14, align 1
  %1558 = and i32 %1552, 255
  %1559 = tail call i32 @llvm.ctpop.i32(i32 %1558)
  %1560 = trunc i32 %1559 to i8
  %1561 = and i8 %1560, 1
  %1562 = xor i8 %1561, 1
  store i8 %1562, i8* %21, align 1
  %1563 = xor i32 %1552, %1551
  %1564 = lshr i32 %1563, 4
  %1565 = trunc i32 %1564 to i8
  %1566 = and i8 %1565, 1
  store i8 %1566, i8* %27, align 1
  %1567 = zext i1 %1555 to i8
  store i8 %1567, i8* %30, align 1
  %1568 = lshr i32 %1552, 31
  %1569 = trunc i32 %1568 to i8
  store i8 %1569, i8* %33, align 1
  %1570 = lshr i32 %1551, 31
  %1571 = xor i32 %1568, %1570
  %1572 = add nuw nsw i32 %1571, %1568
  %1573 = icmp eq i32 %1572, 2
  %1574 = zext i1 %1573 to i8
  store i8 %1574, i8* %39, align 1
  %1575 = sext i32 %1552 to i64
  store i64 %1575, i64* %RDX.i696, align 8
  %1576 = shl nsw i64 %1575, 3
  %1577 = add i64 %1547, %1576
  %1578 = add i64 %1457, 67
  store i64 %1578, i64* %3, align 8
  %1579 = inttoptr i64 %1577 to double*
  store double %1542, double* %1579, align 8
  %1580 = load i64, i64* %RBP.i, align 8
  %1581 = add i64 %1580, -56
  %1582 = load i64, i64* %3, align 8
  %1583 = add i64 %1582, 5
  store i64 %1583, i64* %3, align 8
  %1584 = inttoptr i64 %1581 to i64*
  %1585 = load i64, i64* %1584, align 8
  store i64 %1585, i64* %267, align 1
  store double 0.000000e+00, double* %269, align 1
  %1586 = add i64 %1580, -16
  %1587 = add i64 %1582, 9
  store i64 %1587, i64* %3, align 8
  %1588 = inttoptr i64 %1586 to i64*
  %1589 = load i64, i64* %1588, align 8
  store i64 %1589, i64* %RAX.i646.pre-phi, align 8
  %1590 = add i64 %1580, -32
  %1591 = add i64 %1582, 13
  store i64 %1591, i64* %3, align 8
  %1592 = inttoptr i64 %1590 to i32*
  %1593 = load i32, i32* %1592, align 4
  %1594 = sext i32 %1593 to i64
  store i64 %1594, i64* %RDX.i696, align 8
  %1595 = shl nsw i64 %1594, 3
  %1596 = add i64 %1595, %1589
  %1597 = add i64 %1582, 18
  store i64 %1597, i64* %3, align 8
  %1598 = inttoptr i64 %1596 to i64*
  store i64 %1585, i64* %1598, align 8
  %1599 = load i64, i64* %RBP.i, align 8
  %1600 = add i64 %1599, -64
  %1601 = load i64, i64* %3, align 8
  %1602 = add i64 %1601, 5
  store i64 %1602, i64* %3, align 8
  %1603 = inttoptr i64 %1600 to i64*
  %1604 = load i64, i64* %1603, align 8
  store i64 %1604, i64* %267, align 1
  store double 0.000000e+00, double* %269, align 1
  %1605 = add i64 %1599, -16
  %1606 = add i64 %1601, 9
  store i64 %1606, i64* %3, align 8
  %1607 = inttoptr i64 %1605 to i64*
  %1608 = load i64, i64* %1607, align 8
  store i64 %1608, i64* %RAX.i646.pre-phi, align 8
  %1609 = add i64 %1599, -32
  %1610 = add i64 %1601, 12
  store i64 %1610, i64* %3, align 8
  %1611 = inttoptr i64 %1609 to i32*
  %1612 = load i32, i32* %1611, align 4
  %1613 = add i32 %1612, 1
  %1614 = zext i32 %1613 to i64
  store i64 %1614, i64* %RCX.i188, align 8
  %1615 = icmp eq i32 %1612, -1
  %1616 = icmp eq i32 %1613, 0
  %1617 = or i1 %1615, %1616
  %1618 = zext i1 %1617 to i8
  store i8 %1618, i8* %14, align 1
  %1619 = and i32 %1613, 255
  %1620 = tail call i32 @llvm.ctpop.i32(i32 %1619)
  %1621 = trunc i32 %1620 to i8
  %1622 = and i8 %1621, 1
  %1623 = xor i8 %1622, 1
  store i8 %1623, i8* %21, align 1
  %1624 = xor i32 %1613, %1612
  %1625 = lshr i32 %1624, 4
  %1626 = trunc i32 %1625 to i8
  %1627 = and i8 %1626, 1
  store i8 %1627, i8* %27, align 1
  %1628 = zext i1 %1616 to i8
  store i8 %1628, i8* %30, align 1
  %1629 = lshr i32 %1613, 31
  %1630 = trunc i32 %1629 to i8
  store i8 %1630, i8* %33, align 1
  %1631 = lshr i32 %1612, 31
  %1632 = xor i32 %1629, %1631
  %1633 = add nuw nsw i32 %1632, %1629
  %1634 = icmp eq i32 %1633, 2
  %1635 = zext i1 %1634 to i8
  store i8 %1635, i8* %39, align 1
  %1636 = sext i32 %1613 to i64
  store i64 %1636, i64* %RDX.i696, align 8
  %1637 = shl nsw i64 %1636, 3
  %1638 = add i64 %1608, %1637
  %1639 = add i64 %1601, 23
  store i64 %1639, i64* %3, align 8
  %1640 = inttoptr i64 %1638 to i64*
  store i64 %1604, i64* %1640, align 8
  %1641 = load i64, i64* %RBP.i, align 8
  %1642 = add i64 %1641, -28
  %1643 = load i64, i64* %3, align 8
  %1644 = add i64 %1643, 3
  store i64 %1644, i64* %3, align 8
  %1645 = inttoptr i64 %1642 to i32*
  %1646 = load i32, i32* %1645, align 4
  %1647 = add i32 %1646, 2
  %1648 = zext i32 %1647 to i64
  store i64 %1648, i64* %RAX.i646.pre-phi, align 8
  %1649 = icmp ugt i32 %1646, -3
  %1650 = zext i1 %1649 to i8
  store i8 %1650, i8* %14, align 1
  %1651 = and i32 %1647, 255
  %1652 = tail call i32 @llvm.ctpop.i32(i32 %1651)
  %1653 = trunc i32 %1652 to i8
  %1654 = and i8 %1653, 1
  %1655 = xor i8 %1654, 1
  store i8 %1655, i8* %21, align 1
  %1656 = xor i32 %1647, %1646
  %1657 = lshr i32 %1656, 4
  %1658 = trunc i32 %1657 to i8
  %1659 = and i8 %1658, 1
  store i8 %1659, i8* %27, align 1
  %1660 = icmp eq i32 %1647, 0
  %1661 = zext i1 %1660 to i8
  store i8 %1661, i8* %30, align 1
  %1662 = lshr i32 %1647, 31
  %1663 = trunc i32 %1662 to i8
  store i8 %1663, i8* %33, align 1
  %1664 = lshr i32 %1646, 31
  %1665 = xor i32 %1662, %1664
  %1666 = add nuw nsw i32 %1665, %1662
  %1667 = icmp eq i32 %1666, 2
  %1668 = zext i1 %1667 to i8
  store i8 %1668, i8* %39, align 1
  %1669 = add i64 %1643, 9
  store i64 %1669, i64* %3, align 8
  store i32 %1647, i32* %1645, align 4
  %1670 = load i64, i64* %3, align 8
  %1671 = add i64 %1670, -264
  store i64 %1671, i64* %3, align 8
  br label %block_.L_402777

block_.L_402884:                                  ; preds = %block_.L_402777
  %1672 = add i64 %1262, 5
  store i64 %1672, i64* %3, align 8
  br label %block_.L_402889

block_.L_402889:                                  ; preds = %block_.L_402884, %block_.L_40276b
  %storemerge = phi i64 [ %1224, %block_.L_40276b ], [ %1672, %block_.L_402884 ]
  %1673 = load i64, i64* %6, align 8
  %1674 = add i64 %1673, 112
  store i64 %1674, i64* %6, align 8
  %1675 = icmp ugt i64 %1673, -113
  %1676 = zext i1 %1675 to i8
  store i8 %1676, i8* %14, align 1
  %1677 = trunc i64 %1674 to i32
  %1678 = and i32 %1677, 255
  %1679 = tail call i32 @llvm.ctpop.i32(i32 %1678)
  %1680 = trunc i32 %1679 to i8
  %1681 = and i8 %1680, 1
  %1682 = xor i8 %1681, 1
  store i8 %1682, i8* %21, align 1
  %1683 = xor i64 %1673, 16
  %1684 = xor i64 %1683, %1674
  %1685 = lshr i64 %1684, 4
  %1686 = trunc i64 %1685 to i8
  %1687 = and i8 %1686, 1
  store i8 %1687, i8* %27, align 1
  %1688 = icmp eq i64 %1674, 0
  %1689 = zext i1 %1688 to i8
  store i8 %1689, i8* %30, align 1
  %1690 = lshr i64 %1674, 63
  %1691 = trunc i64 %1690 to i8
  store i8 %1691, i8* %33, align 1
  %1692 = lshr i64 %1673, 63
  %1693 = xor i64 %1690, %1692
  %1694 = add nuw nsw i64 %1693, %1690
  %1695 = icmp eq i64 %1694, 2
  %1696 = zext i1 %1695 to i8
  store i8 %1696, i8* %39, align 1
  %1697 = add i64 %storemerge, 5
  store i64 %1697, i64* %3, align 8
  %1698 = add i64 %1673, 120
  %1699 = inttoptr i64 %1674 to i64*
  %1700 = load i64, i64* %1699, align 8
  store i64 %1700, i64* %RBP.i, align 8
  store i64 %1698, i64* %6, align 8
  %1701 = add i64 %storemerge, 6
  store i64 %1701, i64* %3, align 8
  %1702 = inttoptr i64 %1698 to i64*
  %1703 = load i64, i64* %1702, align 8
  store i64 %1703, i64* %3, align 8
  %1704 = add i64 %1673, 128
  store i64 %1704, i64* %6, align 8
  ret %struct.Memory* %MEMORY.1
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
define %struct.Memory* @routine_subq__0x70___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movl__0x2__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x8__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
define %struct.Memory* @routine_jle_.L_402510(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_callq_.cft1st(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x8__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_40250b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_callq_.cftmdl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_shll__0x2___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
define %struct.Memory* @routine_jmpq_.L_4024db(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_402510(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_402770(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_cmpl_MINUS0x2c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_40276b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x2c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
define %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd___rdx__rsi_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__xmm0___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_xorq__rax___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd___rdx__rsi_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_addsd___rax__rdx_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movsd___rax__rdx_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd___rax__rdx_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movsd_MINUS0x38__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_MINUS0x58__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_MINUS0x60__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_MINUS0x58__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_MINUS0x60__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_MINUS0x70__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_MINUS0x68__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_MINUS0x70__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_MINUS0x68__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
define %struct.Memory* @routine_jmpq_.L_402526(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_402889(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_402884(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_402777(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x70___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
