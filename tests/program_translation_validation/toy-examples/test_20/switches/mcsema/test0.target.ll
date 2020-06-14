; ModuleID = 'mcsema/test0.target.extract.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

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

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline
define %struct.Memory.31* @switches(%struct.State.0* noalias, i64, %struct.Memory.31* noalias) local_unnamed_addr #1 {
entry:
  br i1 undef, label %block_.L_40068f, label %block_40050c

block_40050c:                                     ; preds = %entry
  br i1 undef, label %block_.L_40069d, label %block_400520

block_400520:                                     ; preds = %block_40050c
  br i1 undef, label %block_.L_4006ab, label %block_400534

block_400534:                                     ; preds = %block_400520
  br i1 undef, label %block_.L_4006b9, label %block_400548

block_400548:                                     ; preds = %block_400534
  br i1 undef, label %block_.L_4006c7, label %block_40055c

block_40055c:                                     ; preds = %block_400548
  br i1 undef, label %block_.L_4006d5, label %block_400570

block_400570:                                     ; preds = %block_40055c
  br i1 undef, label %block_.L_4006e3, label %block_400584

block_400584:                                     ; preds = %block_400570
  br i1 undef, label %block_.L_4006f1, label %block_400598

block_400598:                                     ; preds = %block_400584
  br i1 undef, label %block_.L_4006ff, label %block_4005ae

block_4005ae:                                     ; preds = %block_400598
  br i1 undef, label %block_.L_40070f, label %block_4005c4

block_4005c4:                                     ; preds = %block_4005ae
  br i1 undef, label %block_.L_40071f, label %block_4005da

block_4005da:                                     ; preds = %block_4005c4
  br i1 undef, label %block_.L_40072f, label %block_4005f0

block_4005f0:                                     ; preds = %block_4005da
  br i1 undef, label %block_.L_40073f, label %block_400606

block_400606:                                     ; preds = %block_4005f0
  br i1 undef, label %block_.L_40074f, label %block_40061c

block_40061c:                                     ; preds = %block_400606
  br i1 undef, label %block_.L_40075f, label %block_400632

block_400632:                                     ; preds = %block_40061c
  br i1 undef, label %block_.L_40076f, label %block_400648

block_400648:                                     ; preds = %block_400632
  br i1 undef, label %block_.L_40077f, label %block_40065e

block_40065e:                                     ; preds = %block_400648
  br i1 undef, label %block_.L_40078f, label %block_400674

block_400674:                                     ; preds = %block_40065e
  br i1 undef, label %block_.L_40079f, label %block_40068a

block_40068a:                                     ; preds = %block_400674
  br label %block_.L_4007b8

block_.L_40068f:                                  ; preds = %entry
  br label %block_.L_4007b8

block_.L_40069d:                                  ; preds = %block_40050c
  br label %block_.L_4007b8

block_.L_4006ab:                                  ; preds = %block_400520
  br label %block_.L_4007b8

block_.L_4006b9:                                  ; preds = %block_400534
  br label %block_.L_4007b8

block_.L_4006c7:                                  ; preds = %block_400548
  br label %block_.L_4007b8

block_.L_4006d5:                                  ; preds = %block_40055c
  br label %block_.L_4007b8

block_.L_4006e3:                                  ; preds = %block_400570
  br label %block_.L_4007b8

block_.L_4006f1:                                  ; preds = %block_400584
  br label %block_.L_4007b8

block_.L_4006ff:                                  ; preds = %block_400598
  br label %block_.L_4007b8

block_.L_40070f:                                  ; preds = %block_4005ae
  br label %block_.L_4007b8

block_.L_40071f:                                  ; preds = %block_4005c4
  br label %block_.L_4007b8

block_.L_40072f:                                  ; preds = %block_4005da
  br label %block_.L_4007b8

block_.L_40073f:                                  ; preds = %block_4005f0
  br label %block_.L_4007b8

block_.L_40074f:                                  ; preds = %block_400606
  br label %block_.L_4007b8

block_.L_40075f:                                  ; preds = %block_40061c
  br label %block_.L_4007b8

block_.L_40076f:                                  ; preds = %block_400632
  br label %block_.L_4007b8

block_.L_40077f:                                  ; preds = %block_400648
  br label %block_.L_4007b8

block_.L_40078f:                                  ; preds = %block_40065e
  br label %block_.L_4007b8

block_.L_40079f:                                  ; preds = %block_400674
  br label %block_.L_4007b8

block_.L_4007b8:                                  ; preds = %block_.L_40079f, %block_.L_40078f, %block_.L_40077f, %block_.L_40076f, %block_.L_40075f, %block_.L_40074f, %block_.L_40073f, %block_.L_40072f, %block_.L_40071f, %block_.L_40070f, %block_.L_4006ff, %block_.L_4006f1, %block_.L_4006e3, %block_.L_4006d5, %block_.L_4006c7, %block_.L_4006b9, %block_.L_4006ab, %block_.L_40069d, %block_.L_40068f, %block_40068a
  ret %struct.Memory.31* %2
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
