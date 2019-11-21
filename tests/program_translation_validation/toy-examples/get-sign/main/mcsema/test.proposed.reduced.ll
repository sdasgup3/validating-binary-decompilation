; ModuleID = '/tmp/tmpg1pcyu_v-query.ll'
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

declare %struct.Memory* @sub_4004b0.get_sign(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @main(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
entry:
%var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
%var_2_4 = load i64, i64* %RBP.i, align 8
%var_2_5 = add i64 %1, 1
store i64 %var_2_5, i64* %var_2_3, align 8
%var_2_6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
%var_2_7 = load i64, i64* %var_2_6, align 8
%var_2_8 = add i64 %var_2_7, -8
%var_2_9 = inttoptr i64 %var_2_8 to i64*
store i64 %var_2_4, i64* %var_2_9, align 8
%var_2_10 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_6, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_8, i64* %RBP.i, align 8
%var_2_11 = add i64 %var_2_7, -24
store i64 %var_2_11, i64* %var_2_6, align 8
; Matched:%var_2_10:  %var_2_10 = icmp ult i64 %var_2_6, 16
; %var_2_12 = icmp ult i64 %var_2_8, 16
; Matched:%var_2_11:  %var_2_11 = zext i1 %var_2_10 to i8
; %var_2_13 = zext i1 %var_2_12 to i8
; Matched:%var_2_12:  %var_2_12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
; %var_2_14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
; Matched:\<badref\>:  store i8 %var_2_11, i8* %var_2_12, align 1, !tbaa !1265
; store i8 %var_2_13, i8* %var_2_14, align 1
; Matched:%var_2_13:  %var_2_13 = trunc i64 %var_2_9 to i32
; %var_2_15 = trunc i64 %var_2_11 to i32
; Matched:%var_2_14:  %var_2_14 = and i32 %var_2_13, 255
; %var_2_16 = and i32 %var_2_15, 255
; Matched:%var_2_15:  %var_2_15 = tail call i32 @llvm.ctpop.i32(i32 %var_2_14) #12
; %var_2_17 = tail call i32 @llvm.ctpop.i32(i32 %var_2_16)
; Matched:%var_2_16:  %var_2_16 = trunc i32 %var_2_15 to i8
; %var_2_18 = trunc i32 %var_2_17 to i8
; Matched:%var_2_17:  %var_2_17 = and i8 %var_2_16, 1
; %var_2_19 = and i8 %var_2_18, 1
; Matched:%var_2_18:  %var_2_18 = xor i8 %var_2_17, 1
; %var_2_20 = xor i8 %var_2_19, 1
; Matched:%var_2_19:  %var_2_19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
; %var_2_21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
; Matched:\<badref\>:  store i8 %var_2_18, i8* %var_2_19, align 1, !tbaa !1279
; store i8 %var_2_20, i8* %var_2_21, align 1
; Matched:%var_2_20:  %var_2_20 = xor i64 %var_2_6, 16
; %var_2_22 = xor i64 %var_2_8, 16
; Matched:%var_2_21:  %var_2_21 = xor i64 %var_2_20, %var_2_9
; %var_2_23 = xor i64 %var_2_22, %var_2_11
; Matched:%var_2_22:  %var_2_22 = lshr i64 %var_2_21, 4
; %var_2_24 = lshr i64 %var_2_23, 4
; Matched:%var_2_23:  %var_2_23 = trunc i64 %var_2_22 to i8
; %var_2_25 = trunc i64 %var_2_24 to i8
; Matched:%var_2_24:  %var_2_24 = and i8 %var_2_23, 1
; %var_2_26 = and i8 %var_2_25, 1
; Matched:%var_2_25:  %var_2_25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
; %var_2_27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
; Matched:\<badref\>:  store i8 %var_2_24, i8* %var_2_25, align 1, !tbaa !1280
; store i8 %var_2_26, i8* %var_2_27, align 1
; Matched:%var_2_26:  %var_2_26 = icmp eq i64 %var_2_9, 0
; %var_2_28 = icmp eq i64 %var_2_11, 0
; Matched:%var_2_27:  %var_2_27 = zext i1 %var_2_26 to i8
; %var_2_29 = zext i1 %var_2_28 to i8
; Matched:%var_2_28:  %var_2_28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
; %var_2_30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
; Matched:\<badref\>:  store i8 %var_2_27, i8* %var_2_28, align 1, !tbaa !1281
; store i8 %var_2_29, i8* %var_2_30, align 1
; Matched:%var_2_29:  %var_2_29 = lshr i64 %var_2_9, 63
; %var_2_31 = lshr i64 %var_2_11, 63
; Matched:%var_2_30:  %var_2_30 = trunc i64 %var_2_29 to i8
; %var_2_32 = trunc i64 %var_2_31 to i8
; Matched:%var_2_31:  %var_2_31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
; %var_2_33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
; Matched:\<badref\>:  store i8 %var_2_30, i8* %var_2_31, align 1, !tbaa !1282
; store i8 %var_2_32, i8* %var_2_33, align 1
; Matched:%var_2_32:  %var_2_32 = lshr i64 %var_2_6, 63
; %var_2_34 = lshr i64 %var_2_8, 63
; Matched:%var_2_33:  %var_2_33 = xor i64 %var_2_29, %var_2_32
; %var_2_35 = xor i64 %var_2_31, %var_2_34
; Matched:%var_2_34:  %var_2_34 = add nuw nsw i64 %var_2_33, %var_2_32
; %var_2_36 = add nuw nsw i64 %var_2_35, %var_2_34
; Matched:%var_2_35:  %var_2_35 = icmp eq i64 %var_2_34, 2
; %var_2_37 = icmp eq i64 %var_2_36, 2
; Matched:%var_2_36:  %var_2_36 = zext i1 %var_2_35 to i8
; %var_2_38 = zext i1 %var_2_37 to i8
; Matched:%var_2_37:  %var_2_37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; %var_2_39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; Matched:\<badref\>:  store i8 %var_2_36, i8* %var_2_37, align 1, !tbaa !1283
; store i8 %var_2_38, i8* %var_2_39, align 1
; Matched:  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
; %RDI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
; Matched:\<badref\>:  store i64 10, i64* %RDI, align 8, !tbaa !1261
; store i64 10, i64* %RDI.i, align 8
%var_2_40 = add i64 %var_2_7, -12
%var_2_41 = add i64 %var_2_10, 19
store i64 %var_2_41, i64* %var_2_3, align 8
%var_2_42 = inttoptr i64 %var_2_40 to i32*
store i32 0, i32* %var_2_42, align 4
%var_2_43 = load i64, i64* %var_2_3, align 8
%var_2_44 = add i64 %var_2_43, -68
%var_2_45 = add i64 %var_2_43, 5
%var_2_46 = load i64, i64* %var_2_6, align 8
%var_2_47 = add i64 %var_2_46, -8
%var_2_48 = inttoptr i64 %var_2_47 to i64*
store i64 %var_2_45, i64* %var_2_48, align 8
store i64 %var_2_47, i64* %var_2_6, align 8
store i64 %var_2_44, i64* %var_2_3, align 8
; Matched:%var_2_47:  %var_2_47 = tail call %struct.Memory* @sub_4004b0_get_sign_renamed_(%struct.State* nonnull %0, i64 %var_2_42, %struct.Memory* %2)
; %call2_4004f4 = tail call %struct.Memory* @sub_4004b0.get_sign(%struct.State* %0, i64 %var_2_44, %struct.Memory* %2)
%var_2_49 = load i64, i64* %var_2_6, align 8
%var_2_50 = load i64, i64* %var_2_3, align 8
%var_2_51 = add i64 %var_2_49, 16
store i64 %var_2_51, i64* %var_2_6, align 8
; Matched:%var_2_51:  %var_2_51 = icmp ugt i64 %var_2_48, -17
; %var_2_52 = icmp ugt i64 %var_2_49, -17
; Matched:%var_2_52:  %var_2_52 = zext i1 %var_2_51 to i8
; %var_2_53 = zext i1 %var_2_52 to i8
; Matched:\<badref\>:  store i8 %var_2_52, i8* %var_2_12, align 1, !tbaa !1265
; store i8 %var_2_53, i8* %var_2_14, align 1
; Matched:%var_2_53:  %var_2_53 = trunc i64 %var_2_50 to i32
; %var_2_54 = trunc i64 %var_2_51 to i32
; Matched:%var_2_54:  %var_2_54 = and i32 %var_2_53, 255
; %var_2_55 = and i32 %var_2_54, 255
; Matched:%var_2_55:  %var_2_55 = tail call i32 @llvm.ctpop.i32(i32 %var_2_54) #12
; %var_2_56 = tail call i32 @llvm.ctpop.i32(i32 %var_2_55)
; Matched:%var_2_56:  %var_2_56 = trunc i32 %var_2_55 to i8
; %var_2_57 = trunc i32 %var_2_56 to i8
; Matched:%var_2_57:  %var_2_57 = and i8 %var_2_56, 1
; %var_2_58 = and i8 %var_2_57, 1
; Matched:%var_2_58:  %var_2_58 = xor i8 %var_2_57, 1
; %var_2_59 = xor i8 %var_2_58, 1
; Matched:\<badref\>:  store i8 %var_2_58, i8* %var_2_19, align 1, !tbaa !1279
; store i8 %var_2_59, i8* %var_2_21, align 1
; Matched:%var_2_59:  %var_2_59 = xor i64 %var_2_48, 16
; %var_2_60 = xor i64 %var_2_49, 16
; Matched:%var_2_60:  %var_2_60 = xor i64 %var_2_59, %var_2_50
; %var_2_61 = xor i64 %var_2_60, %var_2_51
; Matched:%var_2_61:  %var_2_61 = lshr i64 %var_2_60, 4
; %var_2_62 = lshr i64 %var_2_61, 4
; Matched:%var_2_62:  %var_2_62 = trunc i64 %var_2_61 to i8
; %var_2_63 = trunc i64 %var_2_62 to i8
; Matched:%var_2_63:  %var_2_63 = and i8 %var_2_62, 1
; %var_2_64 = and i8 %var_2_63, 1
; Matched:\<badref\>:  store i8 %var_2_63, i8* %var_2_25, align 1, !tbaa !1280
; store i8 %var_2_64, i8* %var_2_27, align 1
; Matched:%var_2_64:  %var_2_64 = icmp eq i64 %var_2_50, 0
; %var_2_65 = icmp eq i64 %var_2_51, 0
; Matched:%var_2_65:  %var_2_65 = zext i1 %var_2_64 to i8
; %var_2_66 = zext i1 %var_2_65 to i8
; Matched:\<badref\>:  store i8 %var_2_65, i8* %var_2_28, align 1, !tbaa !1281
; store i8 %var_2_66, i8* %var_2_30, align 1
; Matched:%var_2_66:  %var_2_66 = lshr i64 %var_2_50, 63
; %var_2_67 = lshr i64 %var_2_51, 63
; Matched:%var_2_67:  %var_2_67 = trunc i64 %var_2_66 to i8
; %var_2_68 = trunc i64 %var_2_67 to i8
; Matched:\<badref\>:  store i8 %var_2_67, i8* %var_2_31, align 1, !tbaa !1282
; store i8 %var_2_68, i8* %var_2_33, align 1
; Matched:%var_2_68:  %var_2_68 = lshr i64 %var_2_48, 63
; %var_2_69 = lshr i64 %var_2_49, 63
; Matched:%var_2_69:  %var_2_69 = xor i64 %var_2_66, %var_2_68
; %var_2_70 = xor i64 %var_2_67, %var_2_69
; Matched:%var_2_70:  %var_2_70 = add nuw nsw i64 %var_2_69, %var_2_66
; %var_2_71 = add nuw nsw i64 %var_2_70, %var_2_67
; Matched:%var_2_71:  %var_2_71 = icmp eq i64 %var_2_70, 2
; %var_2_72 = icmp eq i64 %var_2_71, 2
; Matched:%var_2_72:  %var_2_72 = zext i1 %var_2_71 to i8
; %var_2_73 = zext i1 %var_2_72 to i8
; Matched:\<badref\>:  store i8 %var_2_72, i8* %var_2_37, align 1, !tbaa !1283
; store i8 %var_2_73, i8* %var_2_39, align 1
%var_2_74 = add i64 %var_2_50, 5
store i64 %var_2_74, i64* %var_2_3, align 8
%var_2_75 = add i64 %var_2_49, 24
%var_2_76 = inttoptr i64 %var_2_51 to i64*
%var_2_77 = load i64, i64* %var_2_76, align 8
; Matched:\<badref\>:  store i64 %var_2_76, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_77, i64* %RBP.i, align 8
store i64 %var_2_75, i64* %var_2_6, align 8
%var_2_78 = add i64 %var_2_50, 6
store i64 %var_2_78, i64* %var_2_3, align 8
%var_2_79 = inttoptr i64 %var_2_75 to i64*
%var_2_80 = load i64, i64* %var_2_79, align 8
store i64 %var_2_80, i64* %var_2_3, align 8
%var_2_81 = add i64 %var_2_49, 32
store i64 %var_2_81, i64* %var_2_6, align 8
; Matched:\<badref\>:  ret %struct.Memory* %var_2_47
; ret %struct.Memory* %call2_4004f4
ret %struct.Memory* %2

}

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_subq__0x10___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -16
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 16
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0xa___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 10, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_callq_.get_sign(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_addq__0x10___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 16
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -17
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

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
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
attributes #2 = { alwaysinline norecurse nounwind }
attributes #3 = { alwaysinline nounwind }
