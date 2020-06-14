; ModuleID = 'mcsema/test0.target.extract.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%G__0x400674_type = type <{ [8 x i8] }>
%G__0x40067e_type = type <{ [8 x i8] }>
%struct.State.0 = type { %struct.ArchState.1, [32 x %union.VectorReg.2], %struct.ArithFlags.3, %union.anon.4, %struct.Segments.5, %struct.AddressSpace.6, %struct.GPR.7, %struct.X87Stack.8, %struct.MMX.9, %struct.FPUStatusFlags.10, %union.anon.4, %union.FPU.11, %struct.SegmentCaches.12 }
%struct.ArchState.1 = type { i32, i32, %union.anon.4 }
%union.VectorReg.2 = type { %union.vec512_t.13 }
%union.vec512_t.13 = type { %struct.uint64v8_t.14 }
%struct.uint64v8_t.14 = type { [8 x i64] }
%struct.ArithFlags.3 = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.Segments.5 = type { i16, %union.SegmentSelector.15, i16, %union.SegmentSelector.15, i16, %union.SegmentSelector.15, i16, %union.SegmentSelector.15, i16, %union.SegmentSelector.15, i16, %union.SegmentSelector.15 }
%union.SegmentSelector.15 = type { i16 }
%struct.AddressSpace.6 = type { i64, %struct.Reg.16, i64, %struct.Reg.16, i64, %struct.Reg.16, i64, %struct.Reg.16, i64, %struct.Reg.16, i64, %struct.Reg.16 }
%struct.Reg.16 = type { %union.anon.4 }
%struct.GPR.7 = type { i64, %struct.Reg.16, i64, %struct.Reg.16, i64, %struct.Reg.16, i64, %struct.Reg.16, i64, %struct.Reg.16, i64, %struct.Reg.16, i64, %struct.Reg.16, i64, %struct.Reg.16, i64, %struct.Reg.16, i64, %struct.Reg.16, i64, %struct.Reg.16, i64, %struct.Reg.16, i64, %struct.Reg.16, i64, %struct.Reg.16, i64, %struct.Reg.16, i64, %struct.Reg.16, i64, %struct.Reg.16 }
%struct.X87Stack.8 = type { [8 x %struct.anon.3.17] }
%struct.anon.3.17 = type { i64, double }
%struct.MMX.9 = type { [8 x %struct.anon.4.18] }
%struct.anon.4.18 = type { i64, %union.vec64_t.19 }
%union.vec64_t.19 = type { %struct.uint64v1_t.20 }
%struct.uint64v1_t.20 = type { [1 x i64] }
%struct.FPUStatusFlags.10 = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8] }
%union.anon.4 = type { i64 }
%union.FPU.11 = type { %struct.anon.13.21 }
%struct.anon.13.21 = type { %struct.FpuFXSAVE.22, [96 x i8] }
%struct.FpuFXSAVE.22 = type { %union.SegmentSelector.15, %union.SegmentSelector.15, %union.FPUAbridgedTagWord.23, i8, i16, i32, %union.SegmentSelector.15, i16, i32, %union.SegmentSelector.15, i16, %union.FPUControlStatus.24, %union.FPUControlStatus.24, [8 x %struct.FPUStackElem.25], [16 x %union.vec128_t.26] }
%union.FPUAbridgedTagWord.23 = type { i8 }
%union.FPUControlStatus.24 = type { i32 }
%struct.FPUStackElem.25 = type { %union.anon.11.27, [6 x i8] }
%union.anon.11.27 = type { %struct.float80_t.28 }
%struct.float80_t.28 = type { [10 x i8] }
%union.vec128_t.26 = type { %struct.uint128v1_t.29 }
%struct.uint128v1_t.29 = type { [1 x i128] }
%struct.SegmentCaches.12 = type { %struct.SegmentShadow.30, %struct.SegmentShadow.30, %struct.SegmentShadow.30, %struct.SegmentShadow.30, %struct.SegmentShadow.30, %struct.SegmentShadow.30 }
%struct.SegmentShadow.30 = type { %union.anon.4, i32, i32 }
%struct.Memory.31 = type opaque

@G__0x400674 = external global %G__0x400674_type
@G__0x40067e = external global %G__0x40067e_type

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @strlen(i64)

declare %struct.Memory.31* @__remill_function_call(%struct.State.0* dereferenceable(3376), i64, %struct.Memory.31*) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory.31* @main(%struct.State.0* noalias, i64, %struct.Memory.31* noalias) local_unnamed_addr #1 {
entry:
  br label %block_.L_400576

block_.L_400576:                                  ; preds = %block_400582, %entry
  br i1 undef, label %block_400582, label %block_.L_4005c2

block_400582:                                     ; preds = %block_.L_400576
  br label %block_.L_400576

block_.L_4005c2:                                  ; preds = %block_.L_400576
  ret %struct.Memory.31* undef
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
