; ModuleID = '/tmp/tmp6w1vz3a8-query.ll'
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @grad(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
entry:
; Matched:  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
; %var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
; Matched:%var_2_6:  %var_2_6 = load i64, i64* %RBP, align 8
; %var_2_4 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_7:  %var_2_7 = add i64 %1, 1
; %var_2_5 = add i64 %1, 1
; Matched:\<badref\>:  store i64 %var_2_7, i64* %PC, align 8
; store i64 %var_2_5, i64* %var_2_3, align 8
; Matched:%var_2_8:  %var_2_8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
; %var_2_6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
; Matched:%var_2_9:  %var_2_9 = load i64, i64* %var_2_8, align 8, !tbaa !1261
; %var_2_7 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_10:  %var_2_10 = add i64 %var_2_9, -8
; %var_2_8 = add i64 %var_2_7, -8
; Matched:%var_2_11:  %var_2_11 = inttoptr i64 %var_2_10 to i64*
; %var_2_9 = inttoptr i64 %var_2_8 to i64*
; Matched:\<badref\>:  store i64 %var_2_6, i64* %var_2_11, align 8
; store i64 %var_2_4, i64* %var_2_9, align 8
; Matched:\<badref\>:  store i64 %var_2_10, i64* %var_2_8, align 8, !tbaa !1261
; store i64 %var_2_8, i64* %var_2_6, align 8
; Matched:%var_2_12:  %var_2_12 = load i64, i64* %PC, align 8
; %var_2_10 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_10, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_8, i64* %RBP.i, align 8
; Matched:%var_2_3:  %var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
; %var_2_11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
; Matched:  %EDI = bitcast %union.anon* %var_2_3 to i32*
; %EDI.i157 = bitcast %union.anon* %var_2_11 to i32*
; Matched:%var_2_13:  %var_2_13 = add i64 %var_2_9, -12
; %var_2_12 = add i64 %var_2_7, -12
; Matched:%var_2_14:  %var_2_14 = load i32, i32* %EDI, align 4
; %var_2_13 = load i32, i32* %EDI.i157, align 4
; Matched:%var_2_15:  %var_2_15 = add i64 %var_2_12, 6
; %var_2_14 = add i64 %var_2_10, 6
; Matched:\<badref\>:  store i64 %var_2_15, i64* %PC, align 8
; store i64 %var_2_14, i64* %var_2_3, align 8
; Matched:%var_2_16:  %var_2_16 = inttoptr i64 %var_2_13 to i32*
; %var_2_15 = inttoptr i64 %var_2_12 to i32*
; Matched:\<badref\>:  store i32 %var_2_14, i32* %var_2_16, align 4
; store i32 %var_2_13, i32* %var_2_15, align 4
; Matched:%var_2_4:  %var_2_4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
; %var_2_16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
; Matched:%var_2_17:  %var_2_17 = load i64, i64* %RBP, align 8
; %var_2_17 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_18:  %var_2_18 = add i64 %var_2_17, -16
; %var_2_18 = add i64 %var_2_17, -16
; Matched:%var_2_19:  %var_2_19 = load i64, i64* %PC, align 8
; %var_2_19 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_20:  %var_2_20 = add i64 %var_2_19, 5
; %var_2_20 = add i64 %var_2_19, 5
; Matched:\<badref\>:  store i64 %var_2_34, i64* %PC, align 8
; store i64 %var_2_20, i64* %var_2_3, align 8
; Matched:%var_2_21:  %var_2_21 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %var_2_4, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
; %var_2_21 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %var_2_16, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:%var_2_22:  %var_2_22 = load i64, i64* %var_2_21, align 1
; %var_2_22 = load i64, i64* %var_2_21, align 1
; Matched:%var_2_23:  %var_2_23 = inttoptr i64 %var_2_18 to i64*
; %var_2_23 = inttoptr i64 %var_2_18 to i64*
; Matched:\<badref\>:  store i64 %var_2_22, i64* %var_2_23, align 8
; store i64 %var_2_22, i64* %var_2_23, align 8
; Matched:%var_2_5:  %var_2_5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
; %var_2_24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
; Matched:%var_2_24:  %var_2_24 = load i64, i64* %RBP, align 8
; %var_2_25 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_25:  %var_2_25 = add i64 %var_2_24, -24
; %var_2_26 = add i64 %var_2_25, -24
; Matched:%var_2_26:  %var_2_26 = load i64, i64* %PC, align 8
; %var_2_27 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_27:  %var_2_27 = add i64 %var_2_26, 5
; %var_2_28 = add i64 %var_2_27, 5
; Matched:\<badref\>:  store i64 %var_2_20, i64* %PC, align 8
; store i64 %var_2_28, i64* %var_2_3, align 8
; Matched:%var_2_28:  %var_2_28 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_5, i64 0, i32 0, i32 0, i32 0, i64 0
; %var_2_29 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_24, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:%var_2_29:  %var_2_29 = load i64, i64* %var_2_28, align 1
; %var_2_30 = load i64, i64* %var_2_29, align 1
; Matched:%var_2_30:  %var_2_30 = inttoptr i64 %var_2_25 to i64*
; %var_2_31 = inttoptr i64 %var_2_26 to i64*
; Matched:\<badref\>:  store i64 %var_2_29, i64* %var_2_30, align 8
; store i64 %var_2_30, i64* %var_2_31, align 8
; Matched:%var_2_31:  %var_2_31 = load i64, i64* %RBP, align 8
; %var_2_32 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_32:  %var_2_32 = add i64 %var_2_31, -32
; %var_2_33 = add i64 %var_2_32, -32
; Matched:%var_2_33:  %var_2_33 = load i64, i64* %PC, align 8
; %var_2_34 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_34:  %var_2_34 = add i64 %var_2_33, 5
; %var_2_35 = add i64 %var_2_34, 5
; Matched:\<badref\>:  store i64 %var_2_27, i64* %PC, align 8
; store i64 %var_2_35, i64* %var_2_3, align 8
; Matched:%var_2_35:  %var_2_35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
; %var_2_36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
; Matched:%var_2_36:  %var_2_36 = load i64, i64* %var_2_35, align 1
; %var_2_37 = load i64, i64* %var_2_36, align 1
; Matched:%var_2_37:  %var_2_37 = inttoptr i64 %var_2_32 to i64*
; %var_2_38 = inttoptr i64 %var_2_33 to i64*
; Matched:\<badref\>:  store i64 %var_2_36, i64* %var_2_37, align 8
; store i64 %var_2_37, i64* %var_2_38, align 8
; Matched:  %RDI = getelementptr inbounds %union.anon, %union.anon* %var_2_3, i64 0, i32 0
; %RDI.i146 = getelementptr inbounds %union.anon, %union.anon* %var_2_11, i64 0, i32 0
; Matched:%var_2_38:  %var_2_38 = load i64, i64* %RBP, align 8
; %var_2_39 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_39:  %var_2_39 = add i64 %var_2_38, -4
; %var_2_40 = add i64 %var_2_39, -4
; Matched:%var_2_40:  %var_2_40 = load i64, i64* %PC, align 8
; %var_2_41 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_128:  %var_2_128 = add i64 %var_2_127, 3
; %var_2_42 = add i64 %var_2_41, 3
; Matched:\<badref\>:  store i64 %var_2_128, i64* %PC, align 8
; store i64 %var_2_42, i64* %var_2_3, align 8
; Matched:%var_2_42:  %var_2_42 = inttoptr i64 %var_2_39 to i32*
; %var_2_43 = inttoptr i64 %var_2_40 to i32*
; Matched:%var_2_43:  %var_2_43 = load i32, i32* %var_2_42, align 4
; %var_2_44 = load i32, i32* %var_2_43, align 4
; Matched:%var_2_44:  %var_2_44 = and i32 %var_2_43, 15
; %var_2_45 = and i32 %var_2_44, 15
; Matched:%var_2_45:  %var_2_45 = zext i32 %var_2_44 to i64
; %var_2_46 = zext i32 %var_2_45 to i64
; Matched:\<badref\>:  store i64 %var_2_45, i64* %RDI, align 8, !tbaa !1261
; store i64 %var_2_46, i64* %RDI.i146, align 8
%var_2_47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
store i8 0, i8* %var_2_47, align 1
; Matched:%var_2_47:  %var_2_47 = tail call i32 @llvm.ctpop.i32(i32 %var_2_44) #12
; %var_2_48 = tail call i32 @llvm.ctpop.i32(i32 %var_2_45)
; Matched:%var_2_48:  %var_2_48 = trunc i32 %var_2_47 to i8
; %var_2_49 = trunc i32 %var_2_48 to i8
; Matched:%var_2_49:  %var_2_49 = and i8 %var_2_48, 1
; %var_2_50 = and i8 %var_2_49, 1
; Matched:%var_2_50:  %var_2_50 = xor i8 %var_2_49, 1
; %var_2_51 = xor i8 %var_2_50, 1
; Matched:%var_2_51:  %var_2_51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
; %var_2_52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
; Matched:\<badref\>:  store i8 %var_2_50, i8* %var_2_51, align 1, !tbaa !1279
; store i8 %var_2_51, i8* %var_2_52, align 1
; Matched:%var_2_52:  %var_2_52 = icmp eq i32 %var_2_44, 0
; %var_2_53 = icmp eq i32 %var_2_45, 0
; Matched:%var_2_53:  %var_2_53 = zext i1 %var_2_52 to i8
; %var_2_54 = zext i1 %var_2_53 to i8
%var_2_55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
; Matched:\<badref\>:  store i8 %var_2_53, i8* %var_2_54, align 1, !tbaa !1280
; store i8 %var_2_54, i8* %var_2_55, align 1
%var_2_56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
store i8 0, i8* %var_2_56, align 1
%var_2_57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
store i8 0, i8* %var_2_57, align 1
%var_2_58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
store i8 0, i8* %var_2_58, align 1
; Matched:%var_2_58:  %var_2_58 = add i64 %var_2_38, -36
; %var_2_59 = add i64 %var_2_39, -36
; Matched:%var_2_59:  %var_2_59 = add i64 %var_2_40, 9
; %var_2_60 = add i64 %var_2_41, 9
; Matched:\<badref\>:  store i64 %var_2_59, i64* %PC, align 8
; store i64 %var_2_60, i64* %var_2_3, align 8
; Matched:%var_2_60:  %var_2_60 = inttoptr i64 %var_2_58 to i32*
; %var_2_61 = inttoptr i64 %var_2_59 to i32*
; Matched:\<badref\>:  store i32 %var_2_44, i32* %var_2_60, align 4
; store i32 %var_2_45, i32* %var_2_61, align 4
%var_2_62 = load i64, i64* %RBP.i, align 8
%var_2_63 = add i64 %var_2_62, -36
; Matched:%var_2_310:  %var_2_310 = load i64, i64* %PC, align 8
; %var_2_64 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_311:  %var_2_311 = add i64 %var_2_310, 4
; %var_2_65 = add i64 %var_2_64, 4
; Matched:\<badref\>:  store i64 %var_2_64, i64* %PC, align 8
; store i64 %var_2_65, i64* %var_2_3, align 8
%var_2_66 = inttoptr i64 %var_2_63 to i32*
%var_2_67 = load i32, i32* %var_2_66, align 4
%var_2_68 = add i32 %var_2_67, -8
; Matched:%var_2_68:  %var_2_68 = icmp ult i32 %var_2_66, 8
; %var_2_69 = icmp ult i32 %var_2_67, 8
; Matched:%var_2_69:  %var_2_69 = zext i1 %var_2_68 to i8
; %var_2_70 = zext i1 %var_2_69 to i8
; Matched:\<badref\>:  store i8 %var_2_69, i8* %var_2_46, align 1, !tbaa !1265
; store i8 %var_2_70, i8* %var_2_47, align 1
; Matched:%var_2_70:  %var_2_70 = and i32 %var_2_67, 255
; %var_2_71 = and i32 %var_2_68, 255
; Matched:%var_2_71:  %var_2_71 = tail call i32 @llvm.ctpop.i32(i32 %var_2_70) #12
; %var_2_72 = tail call i32 @llvm.ctpop.i32(i32 %var_2_71)
; Matched:%var_2_72:  %var_2_72 = trunc i32 %var_2_71 to i8
; %var_2_73 = trunc i32 %var_2_72 to i8
; Matched:%var_2_73:  %var_2_73 = and i8 %var_2_72, 1
; %var_2_74 = and i8 %var_2_73, 1
; Matched:%var_2_74:  %var_2_74 = xor i8 %var_2_73, 1
; %var_2_75 = xor i8 %var_2_74, 1
; Matched:\<badref\>:  store i8 %var_2_74, i8* %var_2_51, align 1, !tbaa !1279
; store i8 %var_2_75, i8* %var_2_52, align 1
; Matched:%var_2_75:  %var_2_75 = xor i32 %var_2_67, %var_2_66
; %var_2_76 = xor i32 %var_2_68, %var_2_67
; Matched:%var_2_76:  %var_2_76 = lshr i32 %var_2_75, 4
; %var_2_77 = lshr i32 %var_2_76, 4
; Matched:%var_2_77:  %var_2_77 = trunc i32 %var_2_76 to i8
; %var_2_78 = trunc i32 %var_2_77 to i8
; Matched:%var_2_78:  %var_2_78 = and i8 %var_2_77, 1
; %var_2_79 = and i8 %var_2_78, 1
; Matched:\<badref\>:  store i8 %var_2_78, i8* %var_2_57, align 1, !tbaa !1283
; store i8 %var_2_79, i8* %var_2_58, align 1
; Matched:%var_2_79:  %var_2_79 = icmp eq i32 %var_2_67, 0
; %var_2_80 = icmp eq i32 %var_2_68, 0
; Matched:%var_2_80:  %var_2_80 = zext i1 %var_2_79 to i8
; %var_2_81 = zext i1 %var_2_80 to i8
; Matched:\<badref\>:  store i8 %var_2_80, i8* %var_2_54, align 1, !tbaa !1280
; store i8 %var_2_81, i8* %var_2_55, align 1
%var_2_82 = lshr i32 %var_2_68, 31
%var_2_83 = trunc i32 %var_2_82 to i8
; Matched:\<badref\>:  store i8 %var_2_82, i8* %var_2_55, align 1, !tbaa !1281
; store i8 %var_2_83, i8* %var_2_56, align 1
%var_2_84 = lshr i32 %var_2_67, 31
%var_2_85 = xor i32 %var_2_82, %var_2_84
%var_2_86 = add nuw nsw i32 %var_2_85, %var_2_84
%var_2_87 = icmp eq i32 %var_2_86, 2
; Matched:%var_2_87:  %var_2_87 = zext i1 %var_2_86 to i8
; %var_2_88 = zext i1 %var_2_87 to i8
; Matched:\<badref\>:  store i8 %var_2_87, i8* %var_2_56, align 1, !tbaa !1282
; store i8 %var_2_88, i8* %var_2_57, align 1
%var_2_89 = icmp ne i8 %var_2_83, 0
%var_2_90 = xor i1 %var_2_89, %var_2_87
; Matched:  %.v = select i1 %var_2_89, i64 10, i64 25
; %.v = select i1 %var_2_90, i64 10, i64 25
; Matched:%var_2_90:  %var_2_90 = add i64 %var_2_63, %.v
; %var_2_91 = add i64 %var_2_64, %.v
; Matched:\<badref\>:  store i64 %var_2_90, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_91, i64* %var_2_3, align 8
; Matched:%var_2_91:  %var_2_91 = bitcast [32 x %union.VectorReg]* %var_2_4 to i8*
; %var_2_92 = bitcast [32 x %union.VectorReg]* %var_2_16 to i8*
br i1 %var_2_90, label %block_400c29, label %block_.L_400c38

block_400c29:                                     ; preds = %entry
; Matched:%var_2_239:  %var_2_239 = add i64 %var_2_61, -16
; %var_2_93 = add i64 %var_2_62, -16
; Matched:%var_2_161:  %var_2_161 = add i64 %var_2_90, 5
; %var_2_94 = add i64 %var_2_91, 5
; Matched:\<badref\>:  store i64 %var_2_161, i64* %PC, align 8
; store i64 %var_2_94, i64* %var_2_3, align 8
; Matched:%var_2_241:  %var_2_241 = inttoptr i64 %var_2_239 to i64*
; %var_2_95 = inttoptr i64 %var_2_93 to i64*
; Matched:%var_2_154:  %var_2_154 = load i64, i64* %var_2_153, align 8
; %var_2_96 = load i64, i64* %var_2_95, align 8
; Matched:\<badref\>:  store i64 %var_2_154, i64* %var_2_21, align 1, !tbaa !1284
; store i64 %var_2_96, i64* %var_2_21, align 1
; Matched:%var_2_164:  %var_2_164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
; %var_2_97 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_165:  %var_2_165 = bitcast i64* %var_2_164 to double*
; %var_2_98 = bitcast i64* %var_2_97 to double*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_165, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_98, align 1
; Matched:%var_2_245:  %var_2_245 = add i64 %var_2_61, -64
; %var_2_99 = add i64 %var_2_62, -64
; Matched:%var_2_167:  %var_2_167 = add i64 %var_2_90, 10
; %var_2_100 = add i64 %var_2_91, 10
; Matched:\<badref\>:  store i64 %var_2_246, i64* %PC, align 8
; store i64 %var_2_100, i64* %var_2_3, align 8
; Matched:%var_2_247:  %var_2_247 = inttoptr i64 %var_2_245 to i64*
; %var_2_101 = inttoptr i64 %var_2_99 to i64*
; Matched:\<badref\>:  store i64 %var_2_242, i64* %var_2_247, align 8
; store i64 %var_2_96, i64* %var_2_101, align 8
; Matched:%var_2_158:  %var_2_158 = load i64, i64* %PC, align 8
; %var_2_102 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_159:  %var_2_159 = add i64 %var_2_158, 15
; %var_2_103 = add i64 %var_2_102, 15
; Matched:\<badref\>:  store i64 %var_2_249, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_103, i64* %var_2_3, align 8
  br label %block_.L_400c42

block_.L_400c38:                                  ; preds = %entry
; Matched:%var_2_160:  %var_2_160 = add i64 %var_2_61, -24
; %var_2_104 = add i64 %var_2_62, -24
; Matched:%var_2_240:  %var_2_240 = add i64 %var_2_90, 5
; %var_2_105 = add i64 %var_2_91, 5
; Matched:\<badref\>:  store i64 %var_2_240, i64* %PC, align 8
; store i64 %var_2_105, i64* %var_2_3, align 8
; Matched:%var_2_162:  %var_2_162 = inttoptr i64 %var_2_160 to i64*
; %var_2_106 = inttoptr i64 %var_2_104 to i64*
; Matched:%var_2_172:  %var_2_172 = load i64, i64* %var_2_171, align 8
; %var_2_107 = load i64, i64* %var_2_106, align 8
; Matched:\<badref\>:  store i64 %var_2_163, i64* %var_2_21, align 1, !tbaa !1284
; store i64 %var_2_107, i64* %var_2_21, align 1
; Matched:%var_2_243:  %var_2_243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
; %var_2_108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_244:  %var_2_244 = bitcast i64* %var_2_243 to double*
; %var_2_109 = bitcast i64* %var_2_108 to double*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_244, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_109, align 1
; Matched:%var_2_166:  %var_2_166 = add i64 %var_2_61, -64
; %var_2_110 = add i64 %var_2_62, -64
; Matched:%var_2_246:  %var_2_246 = add i64 %var_2_90, 10
; %var_2_111 = add i64 %var_2_91, 10
; Matched:\<badref\>:  store i64 %var_2_167, i64* %PC, align 8
; store i64 %var_2_111, i64* %var_2_3, align 8
; Matched:%var_2_168:  %var_2_168 = inttoptr i64 %var_2_166 to i64*
; %var_2_112 = inttoptr i64 %var_2_110 to i64*
; Matched:\<badref\>:  store i64 %var_2_163, i64* %var_2_168, align 8
; store i64 %var_2_107, i64* %var_2_112, align 8
; Matched:  %.pre6 = load i64, i64* %PC, align 8
; %.pre = load i64, i64* %var_2_3, align 8
  br label %block_.L_400c42

block_.L_400c42:                                  ; preds = %block_.L_400c38, %block_400c29
; Matched:  %.pre-phi10 = phi double* [ %var_2_244, %block_400c29 ], [ %var_2_165, %block_400c38 ]
; %.pre-phi10 = phi double* [ %var_2_109, %block_.L_400c38 ], [ %var_2_98, %block_400c29 ]
; Matched:  %.pre-phi = phi i64* [ %var_2_243, %block_400c29 ], [ %var_2_164, %block_400c38 ]
; %.pre-phi = phi i64* [ %var_2_108, %block_.L_400c38 ], [ %var_2_97, %block_400c29 ]
; Matched:%var_2_187:  %var_2_187 = phi i64 [ %.pre6, %block_400c88 ], [ %var_2_159, %block_400c79 ]
; %var_2_113 = phi i64 [ %.pre, %block_.L_400c38 ], [ %var_2_103, %block_400c29 ]
; Matched:%var_2_300:  %var_2_300 = load i64, i64* %RBP, align 8
; %var_2_114 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_301:  %var_2_301 = add i64 %var_2_300, -64
; %var_2_115 = add i64 %var_2_114, -64
; Matched:%var_2_302:  %var_2_302 = add i64 %var_2_299, 5
; %var_2_116 = add i64 %var_2_113, 5
; Matched:\<badref\>:  store i64 %var_2_302, i64* %PC, align 8
; store i64 %var_2_116, i64* %var_2_3, align 8
; Matched:%var_2_303:  %var_2_303 = inttoptr i64 %var_2_301 to i64*
; %var_2_117 = inttoptr i64 %var_2_115 to i64*
; Matched:%var_2_304:  %var_2_304 = load i64, i64* %var_2_303, align 8
; %var_2_118 = load i64, i64* %var_2_117, align 8
; Matched:\<badref\>:  store i64 %var_2_304, i64* %var_2_21, align 1, !tbaa !1284
; store i64 %var_2_118, i64* %var_2_21, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %.pre-phi10, align 1, !tbaa !1284
; store double 0.000000e+00, double* %.pre-phi10, align 1
; Matched:%var_2_305:  %var_2_305 = add i64 %var_2_300, -48
; %var_2_119 = add i64 %var_2_114, -48
; Matched:%var_2_194:  %var_2_194 = add i64 %var_2_187, 10
; %var_2_120 = add i64 %var_2_113, 10
; Matched:\<badref\>:  store i64 %var_2_306, i64* %PC, align 8
; store i64 %var_2_120, i64* %var_2_3, align 8
; Matched:%var_2_307:  %var_2_307 = inttoptr i64 %var_2_305 to i64*
; %var_2_121 = inttoptr i64 %var_2_119 to i64*
; Matched:\<badref\>:  store i64 %var_2_304, i64* %var_2_307, align 8
; store i64 %var_2_118, i64* %var_2_121, align 8
%var_2_122 = load i64, i64* %RBP.i, align 8
%var_2_123 = add i64 %var_2_122, -36
; Matched:%var_2_63:  %var_2_63 = load i64, i64* %PC, align 8
; %var_2_124 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_64:  %var_2_64 = add i64 %var_2_63, 4
; %var_2_125 = add i64 %var_2_124, 4
; Matched:\<badref\>:  store i64 %var_2_311, i64* %PC, align 8
; store i64 %var_2_125, i64* %var_2_3, align 8
%var_2_126 = inttoptr i64 %var_2_123 to i32*
%var_2_127 = load i32, i32* %var_2_126, align 4
%var_2_128 = add i32 %var_2_127, -4
; Matched:%var_2_315:  %var_2_315 = icmp ult i32 %var_2_313, 4
; %var_2_129 = icmp ult i32 %var_2_127, 4
; Matched:%var_2_316:  %var_2_316 = zext i1 %var_2_315 to i8
; %var_2_130 = zext i1 %var_2_129 to i8
; Matched:\<badref\>:  store i8 %var_2_316, i8* %var_2_46, align 1, !tbaa !1265
; store i8 %var_2_130, i8* %var_2_47, align 1
; Matched:%var_2_317:  %var_2_317 = and i32 %var_2_314, 255
; %var_2_131 = and i32 %var_2_128, 255
; Matched:%var_2_318:  %var_2_318 = tail call i32 @llvm.ctpop.i32(i32 %var_2_317) #12
; %var_2_132 = tail call i32 @llvm.ctpop.i32(i32 %var_2_131)
; Matched:%var_2_319:  %var_2_319 = trunc i32 %var_2_318 to i8
; %var_2_133 = trunc i32 %var_2_132 to i8
; Matched:%var_2_320:  %var_2_320 = and i8 %var_2_319, 1
; %var_2_134 = and i8 %var_2_133, 1
; Matched:%var_2_321:  %var_2_321 = xor i8 %var_2_320, 1
; %var_2_135 = xor i8 %var_2_134, 1
; Matched:\<badref\>:  store i8 %var_2_321, i8* %var_2_51, align 1, !tbaa !1279
; store i8 %var_2_135, i8* %var_2_52, align 1
; Matched:%var_2_322:  %var_2_322 = xor i32 %var_2_314, %var_2_313
; %var_2_136 = xor i32 %var_2_128, %var_2_127
; Matched:%var_2_323:  %var_2_323 = lshr i32 %var_2_322, 4
; %var_2_137 = lshr i32 %var_2_136, 4
; Matched:%var_2_324:  %var_2_324 = trunc i32 %var_2_323 to i8
; %var_2_138 = trunc i32 %var_2_137 to i8
; Matched:%var_2_325:  %var_2_325 = and i8 %var_2_324, 1
; %var_2_139 = and i8 %var_2_138, 1
; Matched:\<badref\>:  store i8 %var_2_325, i8* %var_2_57, align 1, !tbaa !1283
; store i8 %var_2_139, i8* %var_2_58, align 1
; Matched:%var_2_326:  %var_2_326 = icmp eq i32 %var_2_314, 0
; %var_2_140 = icmp eq i32 %var_2_128, 0
; Matched:%var_2_327:  %var_2_327 = zext i1 %var_2_326 to i8
; %var_2_141 = zext i1 %var_2_140 to i8
; Matched:\<badref\>:  store i8 %var_2_327, i8* %var_2_54, align 1, !tbaa !1280
; store i8 %var_2_141, i8* %var_2_55, align 1
%var_2_142 = lshr i32 %var_2_128, 31
%var_2_143 = trunc i32 %var_2_142 to i8
; Matched:\<badref\>:  store i8 %var_2_329, i8* %var_2_55, align 1, !tbaa !1281
; store i8 %var_2_143, i8* %var_2_56, align 1
%var_2_144 = lshr i32 %var_2_127, 31
%var_2_145 = xor i32 %var_2_142, %var_2_144
%var_2_146 = add nuw nsw i32 %var_2_145, %var_2_144
%var_2_147 = icmp eq i32 %var_2_146, 2
; Matched:%var_2_334:  %var_2_334 = zext i1 %var_2_333 to i8
; %var_2_148 = zext i1 %var_2_147 to i8
; Matched:\<badref\>:  store i8 %var_2_334, i8* %var_2_56, align 1, !tbaa !1282
; store i8 %var_2_148, i8* %var_2_57, align 1
%var_2_149 = icmp ne i8 %var_2_143, 0
%var_2_150 = xor i1 %var_2_149, %var_2_147
; Matched:  %.v12 = select i1 %var_2_336, i64 10, i64 25
; %.v12 = select i1 %var_2_150, i64 10, i64 25
; Matched:%var_2_337:  %var_2_337 = add i64 %var_2_310, %.v12
; %var_2_151 = add i64 %var_2_124, %.v12
; Matched:\<badref\>:  store i64 %var_2_337, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_151, i64* %var_2_3, align 8
br i1 %var_2_150, label %block_400c56, label %block_.L_400c65

block_400c56:                                     ; preds = %block_.L_400c42
; Matched:%var_2_169:  %var_2_169 = add i64 %var_2_308, -24
; %var_2_152 = add i64 %var_2_122, -24
; Matched:%var_2_170:  %var_2_170 = add i64 %var_2_337, 5
; %var_2_153 = add i64 %var_2_151, 5
; Matched:\<badref\>:  store i64 %var_2_170, i64* %PC, align 8
; store i64 %var_2_153, i64* %var_2_3, align 8
; Matched:%var_2_171:  %var_2_171 = inttoptr i64 %var_2_169 to i64*
; %var_2_154 = inttoptr i64 %var_2_152 to i64*
; Matched:%var_2_163:  %var_2_163 = load i64, i64* %var_2_162, align 8
; %var_2_155 = load i64, i64* %var_2_154, align 8
; Matched:\<badref\>:  store i64 %var_2_172, i64* %var_2_21, align 1, !tbaa !1284
; store i64 %var_2_155, i64* %var_2_21, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %.pre-phi10, align 1, !tbaa !1284
; store double 0.000000e+00, double* %.pre-phi10, align 1
; Matched:%var_2_173:  %var_2_173 = add i64 %var_2_308, -72
; %var_2_156 = add i64 %var_2_122, -72
; Matched:%var_2_174:  %var_2_174 = add i64 %var_2_337, 10
; %var_2_157 = add i64 %var_2_151, 10
; Matched:\<badref\>:  store i64 %var_2_174, i64* %PC, align 8
; store i64 %var_2_157, i64* %var_2_3, align 8
; Matched:%var_2_175:  %var_2_175 = inttoptr i64 %var_2_173 to i64*
; %var_2_158 = inttoptr i64 %var_2_156 to i64*
; Matched:\<badref\>:  store i64 %var_2_172, i64* %var_2_175, align 8
; store i64 %var_2_155, i64* %var_2_158, align 8
; Matched:%var_2_176:  %var_2_176 = load i64, i64* %PC, align 8
; %var_2_159 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_177:  %var_2_177 = add i64 %var_2_176, 60
; %var_2_160 = add i64 %var_2_159, 60
; Matched:\<badref\>:  store i64 %var_2_177, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_160, i64* %var_2_3, align 8
  br label %block_.L_400c9c

block_.L_400c65:                                  ; preds = %block_.L_400c42
; Matched:%var_2_257:  %var_2_257 = add i64 %var_2_337, 4
; %var_2_161 = add i64 %var_2_151, 4
; Matched:\<badref\>:  store i64 %var_2_257, i64* %PC, align 8
; store i64 %var_2_161, i64* %var_2_3, align 8
%var_2_162 = load i32, i32* %var_2_126, align 4
%var_2_163 = add i32 %var_2_162, -12
; Matched:%var_2_260:  %var_2_260 = icmp ult i32 %var_2_258, 12
; %var_2_164 = icmp ult i32 %var_2_162, 12
; Matched:%var_2_261:  %var_2_261 = zext i1 %var_2_260 to i8
; %var_2_165 = zext i1 %var_2_164 to i8
; Matched:\<badref\>:  store i8 %var_2_261, i8* %var_2_46, align 1, !tbaa !1265
; store i8 %var_2_165, i8* %var_2_47, align 1
; Matched:%var_2_262:  %var_2_262 = and i32 %var_2_259, 255
; %var_2_166 = and i32 %var_2_163, 255
; Matched:%var_2_263:  %var_2_263 = tail call i32 @llvm.ctpop.i32(i32 %var_2_262) #12
; %var_2_167 = tail call i32 @llvm.ctpop.i32(i32 %var_2_166)
; Matched:%var_2_264:  %var_2_264 = trunc i32 %var_2_263 to i8
; %var_2_168 = trunc i32 %var_2_167 to i8
; Matched:%var_2_265:  %var_2_265 = and i8 %var_2_264, 1
; %var_2_169 = and i8 %var_2_168, 1
; Matched:%var_2_266:  %var_2_266 = xor i8 %var_2_265, 1
; %var_2_170 = xor i8 %var_2_169, 1
; Matched:\<badref\>:  store i8 %var_2_266, i8* %var_2_51, align 1, !tbaa !1279
; store i8 %var_2_170, i8* %var_2_52, align 1
; Matched:%var_2_267:  %var_2_267 = xor i32 %var_2_259, %var_2_258
; %var_2_171 = xor i32 %var_2_163, %var_2_162
; Matched:%var_2_268:  %var_2_268 = lshr i32 %var_2_267, 4
; %var_2_172 = lshr i32 %var_2_171, 4
; Matched:%var_2_269:  %var_2_269 = trunc i32 %var_2_268 to i8
; %var_2_173 = trunc i32 %var_2_172 to i8
; Matched:%var_2_270:  %var_2_270 = and i8 %var_2_269, 1
; %var_2_174 = and i8 %var_2_173, 1
; Matched:\<badref\>:  store i8 %var_2_270, i8* %var_2_57, align 1, !tbaa !1283
; store i8 %var_2_174, i8* %var_2_58, align 1
%var_2_175 = icmp eq i32 %var_2_163, 0
; Matched:%var_2_272:  %var_2_272 = zext i1 %var_2_271 to i8
; %var_2_176 = zext i1 %var_2_175 to i8
; Matched:\<badref\>:  store i8 %var_2_272, i8* %var_2_54, align 1, !tbaa !1280
; store i8 %var_2_176, i8* %var_2_55, align 1
; Matched:%var_2_273:  %var_2_273 = lshr i32 %var_2_259, 31
; %var_2_177 = lshr i32 %var_2_163, 31
; Matched:%var_2_274:  %var_2_274 = trunc i32 %var_2_273 to i8
; %var_2_178 = trunc i32 %var_2_177 to i8
; Matched:\<badref\>:  store i8 %var_2_274, i8* %var_2_55, align 1, !tbaa !1281
; store i8 %var_2_178, i8* %var_2_56, align 1
; Matched:%var_2_275:  %var_2_275 = lshr i32 %var_2_258, 31
; %var_2_179 = lshr i32 %var_2_162, 31
; Matched:%var_2_276:  %var_2_276 = xor i32 %var_2_273, %var_2_275
; %var_2_180 = xor i32 %var_2_177, %var_2_179
; Matched:%var_2_277:  %var_2_277 = add nuw nsw i32 %var_2_276, %var_2_275
; %var_2_181 = add nuw nsw i32 %var_2_180, %var_2_179
; Matched:%var_2_278:  %var_2_278 = icmp eq i32 %var_2_277, 2
; %var_2_182 = icmp eq i32 %var_2_181, 2
; Matched:%var_2_279:  %var_2_279 = zext i1 %var_2_278 to i8
; %var_2_183 = zext i1 %var_2_182 to i8
; Matched:\<badref\>:  store i8 %var_2_279, i8* %var_2_56, align 1, !tbaa !1282
; store i8 %var_2_183, i8* %var_2_57, align 1
; Matched:  %.v13 = select i1 %var_2_271, i64 20, i64 10
; %.v13 = select i1 %var_2_175, i64 20, i64 10
; Matched:%var_2_280:  %var_2_280 = add i64 %var_2_337, %.v13
; %var_2_184 = add i64 %var_2_151, %.v13
; Matched:\<badref\>:  store i64 %var_2_280, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_184, i64* %var_2_3, align 8
br i1 %var_2_175, label %block_.L_400c79, label %block_400c6f

block_400c6f:                                     ; preds = %block_.L_400c65
; Matched:%var_2_196:  %var_2_196 = add i64 %var_2_280, 4
; %var_2_185 = add i64 %var_2_184, 4
; Matched:\<badref\>:  store i64 %var_2_196, i64* %PC, align 8
; store i64 %var_2_185, i64* %var_2_3, align 8
%var_2_186 = load i32, i32* %var_2_126, align 4
%var_2_187 = add i32 %var_2_186, -14
; Matched:%var_2_199:  %var_2_199 = icmp ult i32 %var_2_197, 14
; %var_2_188 = icmp ult i32 %var_2_186, 14
; Matched:%var_2_200:  %var_2_200 = zext i1 %var_2_199 to i8
; %var_2_189 = zext i1 %var_2_188 to i8
; Matched:\<badref\>:  store i8 %var_2_200, i8* %var_2_46, align 1, !tbaa !1265
; store i8 %var_2_189, i8* %var_2_47, align 1
; Matched:%var_2_201:  %var_2_201 = and i32 %var_2_198, 255
; %var_2_190 = and i32 %var_2_187, 255
; Matched:%var_2_202:  %var_2_202 = tail call i32 @llvm.ctpop.i32(i32 %var_2_201) #12
; %var_2_191 = tail call i32 @llvm.ctpop.i32(i32 %var_2_190)
; Matched:%var_2_203:  %var_2_203 = trunc i32 %var_2_202 to i8
; %var_2_192 = trunc i32 %var_2_191 to i8
; Matched:%var_2_204:  %var_2_204 = and i8 %var_2_203, 1
; %var_2_193 = and i8 %var_2_192, 1
; Matched:%var_2_205:  %var_2_205 = xor i8 %var_2_204, 1
; %var_2_194 = xor i8 %var_2_193, 1
; Matched:\<badref\>:  store i8 %var_2_205, i8* %var_2_51, align 1, !tbaa !1279
; store i8 %var_2_194, i8* %var_2_52, align 1
; Matched:%var_2_206:  %var_2_206 = xor i32 %var_2_198, %var_2_197
; %var_2_195 = xor i32 %var_2_187, %var_2_186
; Matched:%var_2_207:  %var_2_207 = lshr i32 %var_2_206, 4
; %var_2_196 = lshr i32 %var_2_195, 4
; Matched:%var_2_208:  %var_2_208 = trunc i32 %var_2_207 to i8
; %var_2_197 = trunc i32 %var_2_196 to i8
; Matched:%var_2_209:  %var_2_209 = and i8 %var_2_208, 1
; %var_2_198 = and i8 %var_2_197, 1
; Matched:\<badref\>:  store i8 %var_2_209, i8* %var_2_57, align 1, !tbaa !1283
; store i8 %var_2_198, i8* %var_2_58, align 1
%var_2_199 = icmp eq i32 %var_2_187, 0
; Matched:%var_2_211:  %var_2_211 = zext i1 %var_2_210 to i8
; %var_2_200 = zext i1 %var_2_199 to i8
; Matched:\<badref\>:  store i8 %var_2_211, i8* %var_2_54, align 1, !tbaa !1280
; store i8 %var_2_200, i8* %var_2_55, align 1
; Matched:%var_2_212:  %var_2_212 = lshr i32 %var_2_198, 31
; %var_2_201 = lshr i32 %var_2_187, 31
; Matched:%var_2_213:  %var_2_213 = trunc i32 %var_2_212 to i8
; %var_2_202 = trunc i32 %var_2_201 to i8
; Matched:\<badref\>:  store i8 %var_2_213, i8* %var_2_55, align 1, !tbaa !1281
; store i8 %var_2_202, i8* %var_2_56, align 1
; Matched:%var_2_214:  %var_2_214 = lshr i32 %var_2_197, 31
; %var_2_203 = lshr i32 %var_2_186, 31
; Matched:%var_2_215:  %var_2_215 = xor i32 %var_2_212, %var_2_214
; %var_2_204 = xor i32 %var_2_201, %var_2_203
; Matched:%var_2_216:  %var_2_216 = add nuw nsw i32 %var_2_215, %var_2_214
; %var_2_205 = add nuw nsw i32 %var_2_204, %var_2_203
; Matched:%var_2_217:  %var_2_217 = icmp eq i32 %var_2_216, 2
; %var_2_206 = icmp eq i32 %var_2_205, 2
; Matched:%var_2_218:  %var_2_218 = zext i1 %var_2_217 to i8
; %var_2_207 = zext i1 %var_2_206 to i8
; Matched:\<badref\>:  store i8 %var_2_218, i8* %var_2_56, align 1, !tbaa !1282
; store i8 %var_2_207, i8* %var_2_57, align 1
; Matched:  %.v14 = select i1 %var_2_210, i64 10, i64 25
; %.v14 = select i1 %var_2_199, i64 10, i64 25
; Matched:%var_2_219:  %var_2_219 = add i64 %var_2_280, %.v14
; %var_2_208 = add i64 %var_2_184, %.v14
; Matched:\<badref\>:  store i64 %var_2_219, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_208, i64* %var_2_3, align 8
br i1 %var_2_199, label %block_.L_400c79, label %block_.L_400c88

block_.L_400c79:                                  ; preds = %block_400c6f, %block_.L_400c65
; Matched:%var_2_150:  %var_2_150 = phi i64 [ %var_2_280, %block_400c65 ], [ %var_2_219, %block_400c6f ]
; %var_2_209 = phi i64 [ %var_2_208, %block_400c6f ], [ %var_2_184, %block_.L_400c65 ]
; Matched:%var_2_151:  %var_2_151 = add i64 %var_2_308, -16
; %var_2_210 = add i64 %var_2_122, -16
; Matched:%var_2_152:  %var_2_152 = add i64 %var_2_150, 5
; %var_2_211 = add i64 %var_2_209, 5
; Matched:\<badref\>:  store i64 %var_2_152, i64* %PC, align 8
; store i64 %var_2_211, i64* %var_2_3, align 8
; Matched:%var_2_153:  %var_2_153 = inttoptr i64 %var_2_151 to i64*
; %var_2_212 = inttoptr i64 %var_2_210 to i64*
; Matched:%var_2_242:  %var_2_242 = load i64, i64* %var_2_241, align 8
; %var_2_213 = load i64, i64* %var_2_212, align 8
; Matched:\<badref\>:  store i64 %var_2_242, i64* %var_2_21, align 1, !tbaa !1284
; store i64 %var_2_213, i64* %var_2_21, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %.pre-phi10, align 1, !tbaa !1284
; store double 0.000000e+00, double* %.pre-phi10, align 1
; Matched:%var_2_155:  %var_2_155 = add i64 %var_2_308, -80
; %var_2_214 = add i64 %var_2_122, -80
; Matched:%var_2_156:  %var_2_156 = add i64 %var_2_150, 10
; %var_2_215 = add i64 %var_2_209, 10
; Matched:\<badref\>:  store i64 %var_2_156, i64* %PC, align 8
; store i64 %var_2_215, i64* %var_2_3, align 8
; Matched:%var_2_157:  %var_2_157 = inttoptr i64 %var_2_155 to i64*
; %var_2_216 = inttoptr i64 %var_2_214 to i64*
; Matched:\<badref\>:  store i64 %var_2_154, i64* %var_2_157, align 8
; store i64 %var_2_213, i64* %var_2_216, align 8
; Matched:%var_2_248:  %var_2_248 = load i64, i64* %PC, align 8
; %var_2_217 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_249:  %var_2_249 = add i64 %var_2_248, 15
; %var_2_218 = add i64 %var_2_217, 15
; Matched:\<badref\>:  store i64 %var_2_159, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_218, i64* %var_2_3, align 8
  br label %block_.L_400c92

block_.L_400c88:                                  ; preds = %block_400c6f
; Matched:%var_2_250:  %var_2_250 = add i64 %var_2_308, -32
; %var_2_219 = add i64 %var_2_122, -32
; Matched:%var_2_251:  %var_2_251 = add i64 %var_2_219, 5
; %var_2_220 = add i64 %var_2_208, 5
; Matched:\<badref\>:  store i64 %var_2_251, i64* %PC, align 8
; store i64 %var_2_220, i64* %var_2_3, align 8
; Matched:%var_2_252:  %var_2_252 = inttoptr i64 %var_2_250 to i64*
; %var_2_221 = inttoptr i64 %var_2_219 to i64*
; Matched:%var_2_253:  %var_2_253 = load i64, i64* %var_2_252, align 8
; %var_2_222 = load i64, i64* %var_2_221, align 8
; Matched:\<badref\>:  store i64 %var_2_253, i64* %var_2_21, align 1, !tbaa !1284
; store i64 %var_2_222, i64* %var_2_21, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %.pre-phi10, align 1, !tbaa !1284
; store double 0.000000e+00, double* %.pre-phi10, align 1
; Matched:%var_2_254:  %var_2_254 = add i64 %var_2_308, -80
; %var_2_223 = add i64 %var_2_122, -80
; Matched:%var_2_255:  %var_2_255 = add i64 %var_2_219, 10
; %var_2_224 = add i64 %var_2_208, 10
; Matched:\<badref\>:  store i64 %var_2_255, i64* %PC, align 8
; store i64 %var_2_224, i64* %var_2_3, align 8
; Matched:%var_2_256:  %var_2_256 = inttoptr i64 %var_2_254 to i64*
; %var_2_225 = inttoptr i64 %var_2_223 to i64*
; Matched:\<badref\>:  store i64 %var_2_253, i64* %var_2_256, align 8
; store i64 %var_2_222, i64* %var_2_225, align 8
; Matched:  %.pre = load i64, i64* %PC, align 8
; %.pre6 = load i64, i64* %var_2_3, align 8
  br label %block_.L_400c92

block_.L_400c92:                                  ; preds = %block_.L_400c88, %block_.L_400c79
; Matched:%var_2_299:  %var_2_299 = phi i64 [ %var_2_249, %block_400c29 ], [ %.pre, %block_400c38 ]
; %var_2_226 = phi i64 [ %.pre6, %block_.L_400c88 ], [ %var_2_218, %block_.L_400c79 ]
; Matched:%var_2_188:  %var_2_188 = load i64, i64* %RBP, align 8
; %var_2_227 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_189:  %var_2_189 = add i64 %var_2_188, -80
; %var_2_228 = add i64 %var_2_227, -80
; Matched:%var_2_190:  %var_2_190 = add i64 %var_2_187, 5
; %var_2_229 = add i64 %var_2_226, 5
; Matched:\<badref\>:  store i64 %var_2_190, i64* %PC, align 8
; store i64 %var_2_229, i64* %var_2_3, align 8
; Matched:%var_2_191:  %var_2_191 = inttoptr i64 %var_2_189 to i64*
; %var_2_230 = inttoptr i64 %var_2_228 to i64*
; Matched:%var_2_192:  %var_2_192 = load i64, i64* %var_2_191, align 8
; %var_2_231 = load i64, i64* %var_2_230, align 8
; Matched:\<badref\>:  store i64 %var_2_192, i64* %var_2_21, align 1, !tbaa !1284
; store i64 %var_2_231, i64* %var_2_21, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %.pre-phi10, align 1, !tbaa !1284
; store double 0.000000e+00, double* %.pre-phi10, align 1
; Matched:%var_2_193:  %var_2_193 = add i64 %var_2_188, -72
; %var_2_232 = add i64 %var_2_227, -72
; Matched:%var_2_306:  %var_2_306 = add i64 %var_2_299, 10
; %var_2_233 = add i64 %var_2_226, 10
; Matched:\<badref\>:  store i64 %var_2_194, i64* %PC, align 8
; store i64 %var_2_233, i64* %var_2_3, align 8
; Matched:%var_2_195:  %var_2_195 = inttoptr i64 %var_2_193 to i64*
; %var_2_234 = inttoptr i64 %var_2_232 to i64*
; Matched:\<badref\>:  store i64 %var_2_192, i64* %var_2_195, align 8
; store i64 %var_2_231, i64* %var_2_234, align 8
; Matched:  %.pre7 = load i64, i64* %PC, align 8
; %.pre7 = load i64, i64* %var_2_3, align 8
  br label %block_.L_400c9c

block_.L_400c9c:                                  ; preds = %block_.L_400c92, %block_400c56
; Matched:%var_2_116:  %var_2_116 = phi i64 [ %.pre7, %block_400c92 ], [ %var_2_177, %block_400c56 ]
; %var_2_235 = phi i64 [ %.pre7, %block_.L_400c92 ], [ %var_2_160, %block_400c56 ]
; Matched:%var_2_117:  %var_2_117 = load i64, i64* %RBP, align 8
; %var_2_236 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_118:  %var_2_118 = add i64 %var_2_117, -72
; %var_2_237 = add i64 %var_2_236, -72
; Matched:%var_2_119:  %var_2_119 = add i64 %var_2_116, 5
; %var_2_238 = add i64 %var_2_235, 5
; Matched:\<badref\>:  store i64 %var_2_119, i64* %PC, align 8
; store i64 %var_2_238, i64* %var_2_3, align 8
; Matched:%var_2_120:  %var_2_120 = inttoptr i64 %var_2_118 to i64*
; %var_2_239 = inttoptr i64 %var_2_237 to i64*
; Matched:%var_2_121:  %var_2_121 = load i64, i64* %var_2_120, align 8
; %var_2_240 = load i64, i64* %var_2_239, align 8
; Matched:\<badref\>:  store i64 %var_2_121, i64* %var_2_21, align 1, !tbaa !1284
; store i64 %var_2_240, i64* %var_2_21, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %.pre-phi10, align 1, !tbaa !1284
; store double 0.000000e+00, double* %.pre-phi10, align 1
; Matched:%var_2_122:  %var_2_122 = add i64 %var_2_117, -56
; %var_2_241 = add i64 %var_2_236, -56
; Matched:%var_2_123:  %var_2_123 = add i64 %var_2_116, 10
; %var_2_242 = add i64 %var_2_235, 10
; Matched:\<badref\>:  store i64 %var_2_123, i64* %PC, align 8
; store i64 %var_2_242, i64* %var_2_3, align 8
; Matched:%var_2_124:  %var_2_124 = inttoptr i64 %var_2_122 to i64*
; %var_2_243 = inttoptr i64 %var_2_241 to i64*
; Matched:\<badref\>:  store i64 %var_2_121, i64* %var_2_124, align 8
; store i64 %var_2_240, i64* %var_2_243, align 8
  %RAX.i77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
%var_2_244 = load i64, i64* %RBP.i, align 8
%var_2_245 = add i64 %var_2_244, -36
; Matched:%var_2_127:  %var_2_127 = load i64, i64* %PC, align 8
; %var_2_246 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_41:  %var_2_41 = add i64 %var_2_40, 3
; %var_2_247 = add i64 %var_2_246, 3
; Matched:\<badref\>:  store i64 %var_2_41, i64* %PC, align 8
; store i64 %var_2_247, i64* %var_2_3, align 8
%var_2_248 = inttoptr i64 %var_2_245 to i32*
%var_2_249 = load i32, i32* %var_2_248, align 4
%var_2_250 = and i32 %var_2_249, 1
; Matched:%var_2_132:  %var_2_132 = zext i32 %var_2_131 to i64
; %var_2_251 = zext i32 %var_2_250 to i64
; Matched:\<badref\>:  store i64 %var_2_132, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_251, i64* %RAX.i77, align 8
store i8 0, i8* %var_2_47, align 1
; Matched:%var_2_133:  %var_2_133 = tail call i32 @llvm.ctpop.i32(i32 %var_2_131) #12
; %var_2_252 = tail call i32 @llvm.ctpop.i32(i32 %var_2_250)
; Matched:%var_2_134:  %var_2_134 = trunc i32 %var_2_133 to i8
; %var_2_253 = trunc i32 %var_2_252 to i8
; Matched:%var_2_135:  %var_2_135 = xor i8 %var_2_134, 1
; %var_2_254 = xor i8 %var_2_253, 1
; Matched:\<badref\>:  store i8 %var_2_135, i8* %var_2_51, align 1, !tbaa !1279
; store i8 %var_2_254, i8* %var_2_52, align 1
store i8 0, i8* %var_2_58, align 1
%var_2_255 = trunc i32 %var_2_250 to i8
%var_2_256 = xor i8 %var_2_255, 1
; Matched:\<badref\>:  store i8 %var_2_137, i8* %var_2_54, align 1, !tbaa !1280
; store i8 %var_2_256, i8* %var_2_55, align 1
store i8 0, i8* %var_2_56, align 1
store i8 0, i8* %var_2_57, align 1
%var_2_257 = icmp eq i8 %var_2_256, 0
; Matched:  %.v15 = select i1 %var_2_138, i64 30, i64 15
; %.v15 = select i1 %var_2_257, i64 30, i64 15
; Matched:%var_2_139:  %var_2_139 = add i64 %var_2_127, %.v15
; %var_2_258 = add i64 %var_2_246, %.v15
; Matched:\<badref\>:  store i64 %var_2_139, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_258, i64* %var_2_3, align 8
br i1 %var_2_257, label %block_.L_400cc4, label %block_400cb5

block_400cb5:                                     ; preds = %block_.L_400c9c
; Matched:%var_2_178:  %var_2_178 = add i64 %var_2_125, -48
; %var_2_259 = add i64 %var_2_244, -48
; Matched:%var_2_179:  %var_2_179 = add i64 %var_2_139, 5
; %var_2_260 = add i64 %var_2_258, 5
; Matched:\<badref\>:  store i64 %var_2_179, i64* %PC, align 8
; store i64 %var_2_260, i64* %var_2_3, align 8
; Matched:%var_2_180:  %var_2_180 = inttoptr i64 %var_2_178 to i64*
; %var_2_261 = inttoptr i64 %var_2_259 to i64*
; Matched:%var_2_181:  %var_2_181 = load i64, i64* %var_2_180, align 8
; %var_2_262 = load i64, i64* %var_2_261, align 8
; Matched:\<badref\>:  store i64 %var_2_181, i64* %var_2_21, align 1, !tbaa !1284
; store i64 %var_2_262, i64* %var_2_21, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %.pre-phi10, align 1, !tbaa !1284
; store double 0.000000e+00, double* %.pre-phi10, align 1
; Matched:%var_2_182:  %var_2_182 = add i64 %var_2_125, -88
; %var_2_263 = add i64 %var_2_244, -88
; Matched:%var_2_183:  %var_2_183 = add i64 %var_2_139, 10
; %var_2_264 = add i64 %var_2_258, 10
; Matched:\<badref\>:  store i64 %var_2_183, i64* %PC, align 8
; store i64 %var_2_264, i64* %var_2_3, align 8
; Matched:%var_2_184:  %var_2_184 = inttoptr i64 %var_2_182 to i64*
; %var_2_265 = inttoptr i64 %var_2_263 to i64*
; Matched:\<badref\>:  store i64 %var_2_181, i64* %var_2_184, align 8
; store i64 %var_2_262, i64* %var_2_265, align 8
; Matched:%var_2_185:  %var_2_185 = load i64, i64* %PC, align 8
; %var_2_266 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_149:  %var_2_149 = add i64 %var_2_148, 38
; %var_2_267 = add i64 %var_2_266, 38
; Matched:\<badref\>:  store i64 %var_2_186, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_267, i64* %var_2_3, align 8
  br label %block_.L_400ce5

block_.L_400cc4:                                  ; preds = %block_.L_400c9c
  store i64 -9223372036854775808, i64* %RAX.i77, align 8
; Matched:%var_2_281:  %var_2_281 = add i64 %var_2_125, -48
; %var_2_268 = add i64 %var_2_244, -48
; Matched:%var_2_282:  %var_2_282 = add i64 %var_2_139, 15
; %var_2_269 = add i64 %var_2_258, 15
; Matched:\<badref\>:  store i64 %var_2_282, i64* %PC, align 8
; store i64 %var_2_269, i64* %var_2_3, align 8
; Matched:%var_2_283:  %var_2_283 = inttoptr i64 %var_2_281 to i64*
; %var_2_270 = inttoptr i64 %var_2_268 to i64*
; Matched:%var_2_284:  %var_2_284 = load i64, i64* %var_2_283, align 8
; %var_2_271 = load i64, i64* %var_2_270, align 8
; Matched:\<badref\>:  store double 0.000000e+00, double* %.pre-phi10, align 1, !tbaa !1284
; store double 0.000000e+00, double* %.pre-phi10, align 1
; Matched:  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
; %RCX.i57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
; Matched:%var_2_285:  %var_2_285 = xor i64 %var_2_284, -9223372036854775808
; %var_2_272 = xor i64 %var_2_271, -9223372036854775808
; Matched:\<badref\>:  store i64 %var_2_285, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_272, i64* %RCX.i57, align 8
store i8 0, i8* %var_2_47, align 1
; Matched:%var_2_286:  %var_2_286 = trunc i64 %var_2_284 to i32
; %var_2_273 = trunc i64 %var_2_271 to i32
; Matched:%var_2_287:  %var_2_287 = and i32 %var_2_286, 255
; %var_2_274 = and i32 %var_2_273, 255
; Matched:%var_2_288:  %var_2_288 = tail call i32 @llvm.ctpop.i32(i32 %var_2_287) #12
; %var_2_275 = tail call i32 @llvm.ctpop.i32(i32 %var_2_274)
; Matched:%var_2_289:  %var_2_289 = trunc i32 %var_2_288 to i8
; %var_2_276 = trunc i32 %var_2_275 to i8
; Matched:%var_2_290:  %var_2_290 = and i8 %var_2_289, 1
; %var_2_277 = and i8 %var_2_276, 1
; Matched:%var_2_291:  %var_2_291 = xor i8 %var_2_290, 1
; %var_2_278 = xor i8 %var_2_277, 1
; Matched:\<badref\>:  store i8 %var_2_291, i8* %var_2_51, align 1, !tbaa !1279
; store i8 %var_2_278, i8* %var_2_52, align 1
; Matched:%var_2_292:  %var_2_292 = icmp eq i64 %var_2_285, 0
; %var_2_279 = icmp eq i64 %var_2_272, 0
; Matched:%var_2_293:  %var_2_293 = zext i1 %var_2_292 to i8
; %var_2_280 = zext i1 %var_2_279 to i8
; Matched:\<badref\>:  store i8 %var_2_293, i8* %var_2_54, align 1, !tbaa !1280
; store i8 %var_2_280, i8* %var_2_55, align 1
; Matched:%var_2_294:  %var_2_294 = lshr i64 %var_2_285, 63
; %var_2_281 = lshr i64 %var_2_272, 63
; Matched:%var_2_295:  %var_2_295 = trunc i64 %var_2_294 to i8
; %var_2_282 = trunc i64 %var_2_281 to i8
; Matched:\<badref\>:  store i8 %var_2_295, i8* %var_2_55, align 1, !tbaa !1281
; store i8 %var_2_282, i8* %var_2_56, align 1
store i8 0, i8* %var_2_57, align 1
store i8 0, i8* %var_2_58, align 1
; Matched:\<badref\>:  store i64 %var_2_285, i64* %var_2_21, align 1, !tbaa !1261
; store i64 %var_2_272, i64* %var_2_21, align 1
; Matched:\<badref\>:  store i64 0, i64* %.pre-phi, align 1, !tbaa !1261
; store i64 0, i64* %.pre-phi, align 1
; Matched:%var_2_296:  %var_2_296 = add i64 %var_2_125, -88
; %var_2_283 = add i64 %var_2_244, -88
; Matched:%var_2_297:  %var_2_297 = add i64 %var_2_139, 33
; %var_2_284 = add i64 %var_2_258, 33
; Matched:\<badref\>:  store i64 %var_2_297, i64* %PC, align 8
; store i64 %var_2_284, i64* %var_2_3, align 8
; Matched:%var_2_298:  %var_2_298 = inttoptr i64 %var_2_296 to i64*
; %var_2_285 = inttoptr i64 %var_2_283 to i64*
; Matched:\<badref\>:  store i64 %var_2_285, i64* %var_2_298, align 8
; store i64 %var_2_272, i64* %var_2_285, align 8
; Matched:  %.pre9 = load i64, i64* %PC, align 8
; %.pre8 = load i64, i64* %var_2_3, align 8
  br label %block_.L_400ce5

block_.L_400ce5:                                  ; preds = %block_.L_400cc4, %block_400cb5
; Matched:%var_2_92:  %var_2_92 = phi i64 [ %.pre8, %block_400cc4 ], [ %var_2_186, %block_400cb5 ]
; %var_2_286 = phi i64 [ %.pre8, %block_.L_400cc4 ], [ %var_2_267, %block_400cb5 ]
; Matched:%var_2_93:  %var_2_93 = load i64, i64* %RBP, align 8
; %var_2_287 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_94:  %var_2_94 = add i64 %var_2_93, -88
; %var_2_288 = add i64 %var_2_287, -88
; Matched:%var_2_95:  %var_2_95 = add i64 %var_2_92, 5
; %var_2_289 = add i64 %var_2_286, 5
; Matched:\<badref\>:  store i64 %var_2_341, i64* %PC, align 8
; store i64 %var_2_289, i64* %var_2_3, align 8
; Matched:%var_2_96:  %var_2_96 = inttoptr i64 %var_2_94 to i64*
; %var_2_290 = inttoptr i64 %var_2_288 to i64*
; Matched:%var_2_97:  %var_2_97 = load i64, i64* %var_2_96, align 8
; %var_2_291 = load i64, i64* %var_2_290, align 8
; Matched:\<badref\>:  store i64 %var_2_97, i64* %var_2_21, align 1, !tbaa !1284
; store i64 %var_2_291, i64* %var_2_21, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %.pre-phi10, align 1, !tbaa !1284
; store double 0.000000e+00, double* %.pre-phi10, align 1
; Matched:%var_2_98:  %var_2_98 = add i64 %var_2_93, -36
; %var_2_292 = add i64 %var_2_287, -36
; Matched:%var_2_99:  %var_2_99 = add i64 %var_2_92, 8
; %var_2_293 = add i64 %var_2_286, 8
; Matched:\<badref\>:  store i64 %var_2_99, i64* %PC, align 8
; store i64 %var_2_293, i64* %var_2_3, align 8
; Matched:%var_2_100:  %var_2_100 = inttoptr i64 %var_2_98 to i32*
; %var_2_294 = inttoptr i64 %var_2_292 to i32*
; Matched:%var_2_101:  %var_2_101 = load i32, i32* %var_2_100, align 4
; %var_2_295 = load i32, i32* %var_2_294, align 4
; Matched:%var_2_102:  %var_2_102 = and i32 %var_2_101, 2
; %var_2_296 = and i32 %var_2_295, 2
; Matched:%var_2_103:  %var_2_103 = zext i32 %var_2_102 to i64
; %var_2_297 = zext i32 %var_2_296 to i64
; Matched:\<badref\>:  store i64 %var_2_103, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_297, i64* %RAX.i77, align 8
store i8 0, i8* %var_2_47, align 1
; Matched:%var_2_104:  %var_2_104 = tail call i32 @llvm.ctpop.i32(i32 %var_2_102) #12
; %var_2_298 = tail call i32 @llvm.ctpop.i32(i32 %var_2_296)
; Matched:%var_2_105:  %var_2_105 = trunc i32 %var_2_104 to i8
; %var_2_299 = trunc i32 %var_2_298 to i8
; Matched:%var_2_106:  %var_2_106 = xor i8 %var_2_105, 1
; %var_2_300 = xor i8 %var_2_299, 1
; Matched:\<badref\>:  store i8 %var_2_106, i8* %var_2_51, align 1, !tbaa !1279
; store i8 %var_2_300, i8* %var_2_52, align 1
store i8 0, i8* %var_2_58, align 1
; Matched:  %.lobit11 = lshr exact i32 %var_2_102, 1
; %.lobit11 = lshr exact i32 %var_2_296, 1
; Matched:%var_2_107:  %var_2_107 = trunc i32 %.lobit11 to i8
; %var_2_301 = trunc i32 %.lobit11 to i8
; Matched:%var_2_108:  %var_2_108 = xor i8 %var_2_107, 1
; %var_2_302 = xor i8 %var_2_301, 1
; Matched:\<badref\>:  store i8 %var_2_108, i8* %var_2_54, align 1, !tbaa !1280
; store i8 %var_2_302, i8* %var_2_55, align 1
store i8 0, i8* %var_2_56, align 1
store i8 0, i8* %var_2_57, align 1
; Matched:%var_2_109:  %var_2_109 = add i64 %var_2_93, -96
; %var_2_303 = add i64 %var_2_287, -96
; Matched:%var_2_365:  %var_2_365 = add i64 %var_2_338, 19
; %var_2_304 = add i64 %var_2_286, 19
; Matched:\<badref\>:  store i64 %var_2_365, i64* %PC, align 8
; store i64 %var_2_304, i64* %var_2_3, align 8
; Matched:%var_2_111:  %var_2_111 = inttoptr i64 %var_2_109 to i64*
; %var_2_305 = inttoptr i64 %var_2_303 to i64*
; Matched:\<badref\>:  store i64 %var_2_97, i64* %var_2_111, align 8
; store i64 %var_2_291, i64* %var_2_305, align 8
; Matched:%var_2_112:  %var_2_112 = load i64, i64* %PC, align 8
; %var_2_306 = load i64, i64* %var_2_3, align 8
%var_2_307 = load i8, i8* %var_2_55, align 1
%var_2_308 = icmp eq i8 %var_2_307, 0
; Matched:  %.v16 = select i1 %var_2_114, i64 21, i64 6
; %.v16 = select i1 %var_2_308, i64 21, i64 6
; Matched:%var_2_115:  %var_2_115 = add i64 %var_2_112, %.v16
; %var_2_309 = add i64 %var_2_306, %.v16
; Matched:\<badref\>:  store i64 %var_2_115, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_309, i64* %var_2_3, align 8
br i1 %var_2_308, label %block_.L_400d0d, label %block_400cfe

block_400cfe:                                     ; preds = %block_.L_400ce5
; Matched:%var_2_140:  %var_2_140 = load i64, i64* %RBP, align 8
; %var_2_310 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_141:  %var_2_141 = add i64 %var_2_140, -56
; %var_2_311 = add i64 %var_2_310, -56
; Matched:%var_2_142:  %var_2_142 = add i64 %var_2_115, 5
; %var_2_312 = add i64 %var_2_309, 5
; Matched:\<badref\>:  store i64 %var_2_142, i64* %PC, align 8
; store i64 %var_2_312, i64* %var_2_3, align 8
; Matched:%var_2_143:  %var_2_143 = inttoptr i64 %var_2_141 to i64*
; %var_2_313 = inttoptr i64 %var_2_311 to i64*
; Matched:%var_2_144:  %var_2_144 = load i64, i64* %var_2_143, align 8
; %var_2_314 = load i64, i64* %var_2_313, align 8
; Matched:\<badref\>:  store i64 %var_2_144, i64* %var_2_21, align 1, !tbaa !1284
; store i64 %var_2_314, i64* %var_2_21, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %.pre-phi10, align 1, !tbaa !1284
; store double 0.000000e+00, double* %.pre-phi10, align 1
; Matched:%var_2_145:  %var_2_145 = add i64 %var_2_140, -104
; %var_2_315 = add i64 %var_2_310, -104
; Matched:%var_2_146:  %var_2_146 = add i64 %var_2_115, 10
; %var_2_316 = add i64 %var_2_309, 10
; Matched:\<badref\>:  store i64 %var_2_146, i64* %PC, align 8
; store i64 %var_2_316, i64* %var_2_3, align 8
; Matched:%var_2_147:  %var_2_147 = inttoptr i64 %var_2_145 to i64*
; %var_2_317 = inttoptr i64 %var_2_315 to i64*
; Matched:\<badref\>:  store i64 %var_2_144, i64* %var_2_147, align 8
; store i64 %var_2_314, i64* %var_2_317, align 8
; Matched:%var_2_148:  %var_2_148 = load i64, i64* %PC, align 8
; %var_2_318 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_186:  %var_2_186 = add i64 %var_2_185, 38
; %var_2_319 = add i64 %var_2_318, 38
; Matched:\<badref\>:  store i64 %var_2_149, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_319, i64* %var_2_3, align 8
  br label %block_.L_400d2e

block_.L_400d0d:                                  ; preds = %block_.L_400ce5
  store i64 -9223372036854775808, i64* %RAX.i77, align 8
; Matched:%var_2_220:  %var_2_220 = load i64, i64* %RBP, align 8
; %var_2_320 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_221:  %var_2_221 = add i64 %var_2_220, -56
; %var_2_321 = add i64 %var_2_320, -56
; Matched:%var_2_222:  %var_2_222 = add i64 %var_2_115, 15
; %var_2_322 = add i64 %var_2_309, 15
; Matched:\<badref\>:  store i64 %var_2_222, i64* %PC, align 8
; store i64 %var_2_322, i64* %var_2_3, align 8
; Matched:%var_2_223:  %var_2_223 = inttoptr i64 %var_2_221 to i64*
; %var_2_323 = inttoptr i64 %var_2_321 to i64*
; Matched:%var_2_224:  %var_2_224 = load i64, i64* %var_2_223, align 8
; %var_2_324 = load i64, i64* %var_2_323, align 8
; Matched:\<badref\>:  store double 0.000000e+00, double* %.pre-phi10, align 1, !tbaa !1284
; store double 0.000000e+00, double* %.pre-phi10, align 1
; Matched:  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
; %RCX.i20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
; Matched:%var_2_225:  %var_2_225 = xor i64 %var_2_224, -9223372036854775808
; %var_2_325 = xor i64 %var_2_324, -9223372036854775808
; Matched:\<badref\>:  store i64 %var_2_225, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_325, i64* %RCX.i20, align 8
store i8 0, i8* %var_2_47, align 1
; Matched:%var_2_226:  %var_2_226 = trunc i64 %var_2_224 to i32
; %var_2_326 = trunc i64 %var_2_324 to i32
; Matched:%var_2_227:  %var_2_227 = and i32 %var_2_226, 255
; %var_2_327 = and i32 %var_2_326, 255
; Matched:%var_2_228:  %var_2_228 = tail call i32 @llvm.ctpop.i32(i32 %var_2_227) #12
; %var_2_328 = tail call i32 @llvm.ctpop.i32(i32 %var_2_327)
; Matched:%var_2_229:  %var_2_229 = trunc i32 %var_2_228 to i8
; %var_2_329 = trunc i32 %var_2_328 to i8
; Matched:%var_2_230:  %var_2_230 = and i8 %var_2_229, 1
; %var_2_330 = and i8 %var_2_329, 1
; Matched:%var_2_231:  %var_2_231 = xor i8 %var_2_230, 1
; %var_2_331 = xor i8 %var_2_330, 1
; Matched:\<badref\>:  store i8 %var_2_231, i8* %var_2_51, align 1, !tbaa !1279
; store i8 %var_2_331, i8* %var_2_52, align 1
; Matched:%var_2_232:  %var_2_232 = icmp eq i64 %var_2_225, 0
; %var_2_332 = icmp eq i64 %var_2_325, 0
; Matched:%var_2_233:  %var_2_233 = zext i1 %var_2_232 to i8
; %var_2_333 = zext i1 %var_2_332 to i8
; Matched:\<badref\>:  store i8 %var_2_233, i8* %var_2_54, align 1, !tbaa !1280
; store i8 %var_2_333, i8* %var_2_55, align 1
; Matched:%var_2_234:  %var_2_234 = lshr i64 %var_2_225, 63
; %var_2_334 = lshr i64 %var_2_325, 63
; Matched:%var_2_235:  %var_2_235 = trunc i64 %var_2_234 to i8
; %var_2_335 = trunc i64 %var_2_334 to i8
; Matched:\<badref\>:  store i8 %var_2_235, i8* %var_2_55, align 1, !tbaa !1281
; store i8 %var_2_335, i8* %var_2_56, align 1
store i8 0, i8* %var_2_57, align 1
store i8 0, i8* %var_2_58, align 1
; Matched:\<badref\>:  store i64 %var_2_225, i64* %var_2_21, align 1, !tbaa !1261
; store i64 %var_2_325, i64* %var_2_21, align 1
; Matched:\<badref\>:  store i64 0, i64* %.pre-phi, align 1, !tbaa !1261
; store i64 0, i64* %.pre-phi, align 1
; Matched:%var_2_236:  %var_2_236 = add i64 %var_2_220, -104
; %var_2_336 = add i64 %var_2_320, -104
; Matched:%var_2_237:  %var_2_237 = add i64 %var_2_115, 33
; %var_2_337 = add i64 %var_2_309, 33
; Matched:\<badref\>:  store i64 %var_2_237, i64* %PC, align 8
; store i64 %var_2_337, i64* %var_2_3, align 8
; Matched:%var_2_238:  %var_2_238 = inttoptr i64 %var_2_236 to i64*
; %var_2_338 = inttoptr i64 %var_2_336 to i64*
; Matched:\<badref\>:  store i64 %var_2_225, i64* %var_2_238, align 8
; store i64 %var_2_325, i64* %var_2_338, align 8
; Matched:  %.pre8 = load i64, i64* %PC, align 8
; %.pre9 = load i64, i64* %var_2_3, align 8
  br label %block_.L_400d2e

block_.L_400d2e:                                  ; preds = %block_.L_400d0d, %block_400cfe
; Matched:%var_2_338:  %var_2_338 = phi i64 [ %.pre9, %block_400d0d ], [ %var_2_149, %block_400cfe ]
; %var_2_339 = phi i64 [ %.pre9, %block_.L_400d0d ], [ %var_2_319, %block_400cfe ]
; Matched:%var_2_339:  %var_2_339 = load i64, i64* %RBP, align 8
; %var_2_340 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_340:  %var_2_340 = add i64 %var_2_339, -104
; %var_2_341 = add i64 %var_2_340, -104
; Matched:%var_2_341:  %var_2_341 = add i64 %var_2_338, 5
; %var_2_342 = add i64 %var_2_339, 5
; Matched:\<badref\>:  store i64 %var_2_95, i64* %PC, align 8
; store i64 %var_2_342, i64* %var_2_3, align 8
; Matched:%var_2_342:  %var_2_342 = inttoptr i64 %var_2_340 to i64*
; %var_2_343 = inttoptr i64 %var_2_341 to i64*
; Matched:%var_2_343:  %var_2_343 = load i64, i64* %var_2_342, align 8
; %var_2_344 = load i64, i64* %var_2_343, align 8
; Matched:\<badref\>:  store i64 %var_2_343, i64* %var_2_21, align 1, !tbaa !1284
; store i64 %var_2_344, i64* %var_2_21, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %.pre-phi10, align 1, !tbaa !1284
; store double 0.000000e+00, double* %.pre-phi10, align 1
; Matched:%var_2_344:  %var_2_344 = add i64 %var_2_339, -96
; %var_2_345 = add i64 %var_2_340, -96
; Matched:%var_2_345:  %var_2_345 = add i64 %var_2_338, 10
; %var_2_346 = add i64 %var_2_339, 10
; Matched:\<badref\>:  store i64 %var_2_345, i64* %PC, align 8
; store i64 %var_2_346, i64* %var_2_3, align 8
; Matched:%var_2_346:  %var_2_346 = inttoptr i64 %var_2_344 to double*
; %var_2_347 = inttoptr i64 %var_2_345 to double*
; Matched:%var_2_347:  %var_2_347 = load double, double* %var_2_346, align 8
; %var_2_348 = load double, double* %var_2_347, align 8
; Matched:%var_2_348:  %var_2_348 = bitcast %union.VectorReg* %var_2_5 to double*
; %var_2_349 = bitcast %union.VectorReg* %var_2_24 to double*
; Matched:%var_2_349:  %var_2_349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
; %var_2_350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_350:  %var_2_350 = bitcast i64 %var_2_343 to double
; %var_2_351 = bitcast i64 %var_2_344 to double
; Matched:%var_2_351:  %var_2_351 = fadd double %var_2_347, %var_2_350
; %var_2_352 = fadd double %var_2_348, %var_2_351
; Matched:\<badref\>:  store double %var_2_351, double* %var_2_348, align 1, !tbaa !1284
; store double %var_2_352, double* %var_2_349, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_349, align 1, !tbaa !1284
; store i64 0, i64* %var_2_350, align 1
%.cast = bitcast double %var_2_352 to <2 x i32>
%var_2_353 = extractelement <2 x i32> %.cast, i32 0
; Matched:%var_2_353:  %var_2_353 = bitcast [32 x %union.VectorReg]* %var_2_4 to i32*
; %var_2_354 = bitcast [32 x %union.VectorReg]* %var_2_16 to i32*
; Matched:\<badref\>:  store i32 %var_2_352, i32* %var_2_353, align 1, !tbaa !1286
; store i32 %var_2_353, i32* %var_2_354, align 1
%var_2_355 = extractelement <2 x i32> %.cast, i32 1
; Matched:%var_2_355:  %var_2_355 = getelementptr inbounds i8, i8* %var_2_91, i64 4
; %var_2_356 = getelementptr inbounds i8, i8* %var_2_92, i64 4
; Matched:%var_2_356:  %var_2_356 = bitcast i8* %var_2_355 to i32*
; %var_2_357 = bitcast i8* %var_2_356 to i32*
; Matched:\<badref\>:  store i32 %var_2_354, i32* %var_2_356, align 1, !tbaa !1286
; store i32 %var_2_355, i32* %var_2_357, align 1
; Matched:%var_2_357:  %var_2_357 = bitcast i64* %.pre-phi to i32*
; %var_2_358 = bitcast i64* %.pre-phi to i32*
; Matched:\<badref\>:  store i32 0, i32* %var_2_357, align 1, !tbaa !1286
; store i32 0, i32* %var_2_358, align 1
; Matched:%var_2_358:  %var_2_358 = getelementptr inbounds i8, i8* %var_2_91, i64 12
; %var_2_359 = getelementptr inbounds i8, i8* %var_2_92, i64 12
; Matched:%var_2_359:  %var_2_359 = bitcast i8* %var_2_358 to i32*
; %var_2_360 = bitcast i8* %var_2_359 to i32*
; Matched:\<badref\>:  store i32 0, i32* %var_2_359, align 1, !tbaa !1286
; store i32 0, i32* %var_2_360, align 1
; Matched:%var_2_360:  %var_2_360 = add i64 %var_2_338, 18
; %var_2_361 = add i64 %var_2_339, 18
; Matched:\<badref\>:  store i64 %var_2_360, i64* %PC, align 8
; store i64 %var_2_361, i64* %var_2_3, align 8
; Matched:%var_2_361:  %var_2_361 = load i64, i64* %var_2_8, align 8, !tbaa !1261
; %var_2_362 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_362:  %var_2_362 = add i64 %var_2_361, 8
; %var_2_363 = add i64 %var_2_362, 8
; Matched:%var_2_363:  %var_2_363 = inttoptr i64 %var_2_361 to i64*
; %var_2_364 = inttoptr i64 %var_2_362 to i64*
; Matched:%var_2_364:  %var_2_364 = load i64, i64* %var_2_363, align 8
; %var_2_365 = load i64, i64* %var_2_364, align 8
; Matched:\<badref\>:  store i64 %var_2_364, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_365, i64* %RBP.i, align 8
; Matched:\<badref\>:  store i64 %var_2_362, i64* %var_2_8, align 8, !tbaa !1261
; store i64 %var_2_363, i64* %var_2_6, align 8
; Matched:%var_2_110:  %var_2_110 = add i64 %var_2_92, 19
; %var_2_366 = add i64 %var_2_339, 19
; Matched:\<badref\>:  store i64 %var_2_110, i64* %PC, align 8
; store i64 %var_2_366, i64* %var_2_3, align 8
; Matched:%var_2_366:  %var_2_366 = inttoptr i64 %var_2_362 to i64*
; %var_2_367 = inttoptr i64 %var_2_363 to i64*
; Matched:%var_2_367:  %var_2_367 = load i64, i64* %var_2_366, align 8
; %var_2_368 = load i64, i64* %var_2_367, align 8
; Matched:\<badref\>:  store i64 %var_2_367, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_368, i64* %var_2_3, align 8
; Matched:%var_2_368:  %var_2_368 = add i64 %var_2_361, 16
; %var_2_369 = add i64 %var_2_362, 16
; Matched:\<badref\>:  store i64 %var_2_368, i64* %var_2_8, align 8, !tbaa !1261
; store i64 %var_2_369, i64* %var_2_6, align 8
  ret %struct.Memory* %2
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_movsd__xmm1__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm2__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0xf___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 15
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RDI, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = icmp eq i32 %7, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x8__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jge_.L_400c38(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_jmpq_.L_400c42(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_cmpl__0x4__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -4
  %10 = icmp ult i32 %8, 4
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
define %struct.Memory* @routine_jge_.L_400c65(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_400c9c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xc__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -12
  %10 = icmp ult i32 %8, 12
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
define %struct.Memory* @routine_je_.L_400c79(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0xe__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -14
  %10 = icmp ult i32 %8, 14
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
define %struct.Memory* @routine_jne_.L_400c88(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_400c92(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x20__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_andl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 1
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RAX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %6 to i8
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
define %struct.Memory* @routine_jne_.L_400cc4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_jmpq_.L_400ce5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movq__xmm0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* %RCX, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorq__rax___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = xor i64 %4, %3
  store i64 %7, i64* %RCX, align 8
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
define %struct.Memory* @routine_movq__rcx___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 2
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RAX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %.lobit = lshr exact i32 %7, 1
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
define %struct.Memory* @routine_jne_.L_400d0d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_400d2e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
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
define %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fadd double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = extractelement <2 x i32> %9, i32 0
  %14 = bitcast [32 x %union.VectorReg]* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = extractelement <2 x i32> %9, i32 1
  %16 = getelementptr inbounds i8, i8* %5, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %12, i32 0
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
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
attributes #1 = { alwaysinline nounwind }
attributes #2 = { norecurse nounwind }
attributes #3 = { nounwind }
