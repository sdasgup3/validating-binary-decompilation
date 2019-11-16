; ModuleID = '/tmp/tmpfffiigz3-query.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x355__rip__type = type <{ [8 x i8] }>
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
@G_0x355__rip_ = global %G_0x355__rip__type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @ext_sin(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @fourn(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
entry:
%var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
; Matched:%var_2_8:  %var_2_8 = load i64, i64* %RBP, align 8
; %var_2_4 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_9:  %var_2_9 = add i64 %1, 1
; %var_2_5 = add i64 %1, 1
; Matched:\<badref\>:  store i64 %var_2_9, i64* %PC, align 8
; store i64 %var_2_5, i64* %var_2_3, align 8
; Matched:  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
; %var_2_6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
; Matched:%var_2_10:  %var_2_10 = load i64, i64* %RSP, align 8, !tbaa !1261
; %var_2_7 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_11:  %var_2_11 = add i64 %var_2_10, -8
; %var_2_8 = add i64 %var_2_7, -8
; Matched:%var_2_12:  %var_2_12 = inttoptr i64 %var_2_11 to i64*
; %var_2_9 = inttoptr i64 %var_2_8 to i64*
; Matched:\<badref\>:  store i64 %var_2_8, i64* %var_2_12, align 8
; store i64 %var_2_4, i64* %var_2_9, align 8
; Matched:%var_2_13:  %var_2_13 = load i64, i64* %PC, align 8
; %var_2_10 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_11, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_8, i64* %RBP.i, align 8
; Matched:%var_2_14:  %var_2_14 = add i64 %var_2_10, -200
; %var_2_11 = add i64 %var_2_7, -200
; Matched:\<badref\>:  store i64 %var_2_14, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_11, i64* %var_2_6, align 8
; Matched:%var_2_15:  %var_2_15 = icmp ult i64 %var_2_11, 192
; %var_2_12 = icmp ult i64 %var_2_8, 192
; Matched:%var_2_16:  %var_2_16 = zext i1 %var_2_15 to i8
; %var_2_13 = zext i1 %var_2_12 to i8
%var_2_14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
; Matched:\<badref\>:  store i8 %var_2_16, i8* %var_2_17, align 1, !tbaa !1265
; store i8 %var_2_13, i8* %var_2_14, align 1
; Matched:%var_2_18:  %var_2_18 = trunc i64 %var_2_14 to i32
; %var_2_15 = trunc i64 %var_2_11 to i32
; Matched:%var_2_19:  %var_2_19 = and i32 %var_2_18, 255
; %var_2_16 = and i32 %var_2_15, 255
; Matched:%var_2_20:  %var_2_20 = tail call i32 @llvm.ctpop.i32(i32 %var_2_19) #14
; %var_2_17 = tail call i32 @llvm.ctpop.i32(i32 %var_2_16)
; Matched:%var_2_21:  %var_2_21 = trunc i32 %var_2_20 to i8
; %var_2_18 = trunc i32 %var_2_17 to i8
; Matched:%var_2_22:  %var_2_22 = and i8 %var_2_21, 1
; %var_2_19 = and i8 %var_2_18, 1
; Matched:%var_2_23:  %var_2_23 = xor i8 %var_2_22, 1
; %var_2_20 = xor i8 %var_2_19, 1
%var_2_21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
; Matched:\<badref\>:  store i8 %var_2_23, i8* %var_2_24, align 1, !tbaa !1279
; store i8 %var_2_20, i8* %var_2_21, align 1
; Matched:%var_2_25:  %var_2_25 = xor i64 %var_2_11, %var_2_14
; %var_2_22 = xor i64 %var_2_8, %var_2_11
; Matched:%var_2_26:  %var_2_26 = lshr i64 %var_2_25, 4
; %var_2_23 = lshr i64 %var_2_22, 4
; Matched:%var_2_27:  %var_2_27 = trunc i64 %var_2_26 to i8
; %var_2_24 = trunc i64 %var_2_23 to i8
; Matched:%var_2_28:  %var_2_28 = and i8 %var_2_27, 1
; %var_2_25 = and i8 %var_2_24, 1
%var_2_26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
; Matched:\<badref\>:  store i8 %var_2_28, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_25, i8* %var_2_26, align 1
; Matched:%var_2_30:  %var_2_30 = icmp eq i64 %var_2_14, 0
; %var_2_27 = icmp eq i64 %var_2_11, 0
; Matched:%var_2_31:  %var_2_31 = zext i1 %var_2_30 to i8
; %var_2_28 = zext i1 %var_2_27 to i8
%var_2_29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
; Matched:\<badref\>:  store i8 %var_2_31, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_28, i8* %var_2_29, align 1
; Matched:%var_2_33:  %var_2_33 = lshr i64 %var_2_14, 63
; %var_2_30 = lshr i64 %var_2_11, 63
; Matched:%var_2_34:  %var_2_34 = trunc i64 %var_2_33 to i8
; %var_2_31 = trunc i64 %var_2_30 to i8
%var_2_32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
; Matched:\<badref\>:  store i8 %var_2_34, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_31, i8* %var_2_32, align 1
; Matched:%var_2_36:  %var_2_36 = lshr i64 %var_2_11, 63
; %var_2_33 = lshr i64 %var_2_8, 63
; Matched:%var_2_37:  %var_2_37 = xor i64 %var_2_33, %var_2_36
; %var_2_34 = xor i64 %var_2_30, %var_2_33
; Matched:%var_2_38:  %var_2_38 = add nuw nsw i64 %var_2_37, %var_2_36
; %var_2_35 = add nuw nsw i64 %var_2_34, %var_2_33
; Matched:%var_2_39:  %var_2_39 = icmp eq i64 %var_2_38, 2
; %var_2_36 = icmp eq i64 %var_2_35, 2
; Matched:%var_2_40:  %var_2_40 = zext i1 %var_2_39 to i8
; %var_2_37 = zext i1 %var_2_36 to i8
%var_2_38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; Matched:\<badref\>:  store i8 %var_2_40, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_37, i8* %var_2_38, align 1
; Matched:  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
; %RDI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
; Matched:%var_2_42:  %var_2_42 = add i64 %var_2_10, -16
; %var_2_39 = add i64 %var_2_7, -16
; Matched:%var_2_43:  %var_2_43 = load i64, i64* %RDI, align 8
; %var_2_40 = load i64, i64* %RDI.i, align 8
; Matched:%var_2_44:  %var_2_44 = add i64 %var_2_13, 14
; %var_2_41 = add i64 %var_2_10, 14
; Matched:\<badref\>:  store i64 %var_2_44, i64* %PC, align 8
; store i64 %var_2_41, i64* %var_2_3, align 8
; Matched:%var_2_45:  %var_2_45 = inttoptr i64 %var_2_42 to i64*
; %var_2_42 = inttoptr i64 %var_2_39 to i64*
; Matched:\<badref\>:  store i64 %var_2_43, i64* %var_2_45, align 8
; store i64 %var_2_40, i64* %var_2_42, align 8
; Matched:  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
; %RSI.i811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
; Matched:%var_2_46:  %var_2_46 = load i64, i64* %RBP, align 8
; %var_2_43 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_47:  %var_2_47 = add i64 %var_2_46, -16
; %var_2_44 = add i64 %var_2_43, -16
; Matched:%var_2_48:  %var_2_48 = load i64, i64* %RSI, align 8
; %var_2_45 = load i64, i64* %RSI.i811, align 8
%var_2_46 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_203:  %var_2_203 = add i64 %var_2_202, 4
; %var_2_47 = add i64 %var_2_46, 4
; Matched:\<badref\>:  store i64 %var_2_50, i64* %PC, align 8
; store i64 %var_2_47, i64* %var_2_3, align 8
; Matched:%var_2_51:  %var_2_51 = inttoptr i64 %var_2_47 to i64*
; %var_2_48 = inttoptr i64 %var_2_44 to i64*
; Matched:\<badref\>:  store i64 %var_2_48, i64* %var_2_51, align 8
; store i64 %var_2_45, i64* %var_2_48, align 8
; Matched:%var_2_5:  %var_2_5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
; %var_2_49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
; Matched:  %EDX = bitcast %union.anon* %var_2_5 to i32*
; %EDX.i808 = bitcast %union.anon* %var_2_49 to i32*
; Matched:%var_2_52:  %var_2_52 = load i64, i64* %RBP, align 8
; %var_2_50 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_53:  %var_2_53 = add i64 %var_2_52, -20
; %var_2_51 = add i64 %var_2_50, -20
; Matched:%var_2_54:  %var_2_54 = load i32, i32* %EDX, align 4
; %var_2_52 = load i32, i32* %EDX.i808, align 4
%var_2_53 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1154:  %var_2_1154 = add i64 %var_2_1153, 3
; %var_2_54 = add i64 %var_2_53, 3
; Matched:\<badref\>:  store i64 %var_2_1154, i64* %PC, align 8
; store i64 %var_2_54, i64* %var_2_3, align 8
; Matched:%var_2_57:  %var_2_57 = inttoptr i64 %var_2_53 to i32*
; %var_2_55 = inttoptr i64 %var_2_51 to i32*
; Matched:\<badref\>:  store i32 %var_2_54, i32* %var_2_57, align 4
; store i32 %var_2_52, i32* %var_2_55, align 4
%var_2_56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
; Matched:  %ECX = bitcast %union.anon* %var_2_4 to i32*
; %ECX.i805 = bitcast %union.anon* %var_2_56 to i32*
; Matched:%var_2_58:  %var_2_58 = load i64, i64* %RBP, align 8
; %var_2_57 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_59:  %var_2_59 = add i64 %var_2_58, -24
; %var_2_58 = add i64 %var_2_57, -24
; Matched:%var_2_60:  %var_2_60 = load i32, i32* %ECX, align 4
; %var_2_59 = load i32, i32* %ECX.i805, align 4
%var_2_60 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_982:  %var_2_982 = add i64 %var_2_981, 3
; %var_2_61 = add i64 %var_2_60, 3
; Matched:\<badref\>:  store i64 %var_2_982, i64* %PC, align 8
; store i64 %var_2_61, i64* %var_2_3, align 8
; Matched:%var_2_63:  %var_2_63 = inttoptr i64 %var_2_59 to i32*
; %var_2_62 = inttoptr i64 %var_2_58 to i32*
; Matched:\<badref\>:  store i32 %var_2_60, i32* %var_2_63, align 4
; store i32 %var_2_59, i32* %var_2_62, align 4
%var_2_63 = load i64, i64* %RBP.i, align 8
%var_2_64 = add i64 %var_2_63, -96
%var_2_65 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1138:  %var_2_1138 = add i64 %var_2_1137, 7
; %var_2_66 = add i64 %var_2_65, 7
; Matched:\<badref\>:  store i64 %var_2_1112, i64* %PC, align 8
; store i64 %var_2_66, i64* %var_2_3, align 8
%var_2_67 = inttoptr i64 %var_2_64 to i32*
store i32 1, i32* %var_2_67, align 4
%var_2_68 = load i64, i64* %RBP.i, align 8
%var_2_69 = add i64 %var_2_68, -72
%var_2_70 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_67:  %var_2_67 = add i64 %var_2_66, 7
; %var_2_71 = add i64 %var_2_70, 7
; Matched:\<badref\>:  store i64 %var_2_67, i64* %PC, align 8
; store i64 %var_2_71, i64* %var_2_3, align 8
%var_2_72 = inttoptr i64 %var_2_69 to i32*
store i32 1, i32* %var_2_72, align 4
%var_2_73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
%RAX.i798 = getelementptr inbounds %union.anon, %union.anon* %var_2_73, i64 0, i32 0
%EAX.i795 = bitcast %union.anon* %var_2_73 to i32*
; Matched:  %RCX = getelementptr inbounds %union.anon, %union.anon* %var_2_4, i64 0, i32 0
; %RCX.i788 = getelementptr inbounds %union.anon, %union.anon* %var_2_56, i64 0, i32 0
; Matched:  %RDX = getelementptr inbounds %union.anon, %union.anon* %var_2_5, i64 0, i32 0
; %RDX.i786 = getelementptr inbounds %union.anon, %union.anon* %var_2_49, i64 0, i32 0
; Matched:  %.pre = load i64, i64* %PC, align 8
; %.pre = load i64, i64* %var_2_3, align 8
  br label %block_.L_400b97

block_.L_400b97:                                  ; preds = %block_400ba3, %entry
; Matched:%var_2_1650:  %var_2_1650 = phi i64 [ %var_2_2192, %block_400ba3 ], [ %.pre, %block_400b70 ]
; %var_2_74 = phi i64 [ %var_2_178, %block_400ba3 ], [ %.pre, %entry ]
%var_2_75 = load i64, i64* %RBP.i, align 8
%var_2_76 = add i64 %var_2_75, -72
; Matched:%var_2_1653:  %var_2_1653 = add i64 %var_2_1650, 3
; %var_2_77 = add i64 %var_2_74, 3
; Matched:\<badref\>:  store i64 %var_2_1653, i64* %PC, align 8
; store i64 %var_2_77, i64* %var_2_3, align 8
%var_2_78 = inttoptr i64 %var_2_76 to i32*
%var_2_79 = load i32, i32* %var_2_78, align 4
; Matched:%var_2_1656:  %var_2_1656 = zext i32 %var_2_1655 to i64
; %var_2_80 = zext i32 %var_2_79 to i64
; Matched:\<badref\>:  store i64 %var_2_1656, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_80, i64* %RAX.i798, align 8
%var_2_81 = add i64 %var_2_75, -20
; Matched:%var_2_1658:  %var_2_1658 = add i64 %var_2_1650, 6
; %var_2_82 = add i64 %var_2_74, 6
; Matched:\<badref\>:  store i64 %var_2_1658, i64* %PC, align 8
; store i64 %var_2_82, i64* %var_2_3, align 8
%var_2_83 = inttoptr i64 %var_2_81 to i32*
%var_2_84 = load i32, i32* %var_2_83, align 4
%var_2_85 = sub i32 %var_2_79, %var_2_84
; Matched:%var_2_1662:  %var_2_1662 = icmp ult i32 %var_2_1655, %var_2_1660
; %var_2_86 = icmp ult i32 %var_2_79, %var_2_84
; Matched:%var_2_1663:  %var_2_1663 = zext i1 %var_2_1662 to i8
; %var_2_87 = zext i1 %var_2_86 to i8
; Matched:\<badref\>:  store i8 %var_2_1663, i8* %var_2_17, align 1, !tbaa !1265
; store i8 %var_2_87, i8* %var_2_14, align 1
; Matched:%var_2_1664:  %var_2_1664 = and i32 %var_2_1661, 255
; %var_2_88 = and i32 %var_2_85, 255
; Matched:%var_2_1665:  %var_2_1665 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1664) #14
; %var_2_89 = tail call i32 @llvm.ctpop.i32(i32 %var_2_88)
; Matched:%var_2_1666:  %var_2_1666 = trunc i32 %var_2_1665 to i8
; %var_2_90 = trunc i32 %var_2_89 to i8
; Matched:%var_2_1667:  %var_2_1667 = and i8 %var_2_1666, 1
; %var_2_91 = and i8 %var_2_90, 1
; Matched:%var_2_1668:  %var_2_1668 = xor i8 %var_2_1667, 1
; %var_2_92 = xor i8 %var_2_91, 1
; Matched:\<badref\>:  store i8 %var_2_1668, i8* %var_2_24, align 1, !tbaa !1279
; store i8 %var_2_92, i8* %var_2_21, align 1
; Matched:%var_2_1669:  %var_2_1669 = xor i32 %var_2_1660, %var_2_1655
; %var_2_93 = xor i32 %var_2_84, %var_2_79
; Matched:%var_2_1670:  %var_2_1670 = xor i32 %var_2_1669, %var_2_1661
; %var_2_94 = xor i32 %var_2_93, %var_2_85
; Matched:%var_2_1671:  %var_2_1671 = lshr i32 %var_2_1670, 4
; %var_2_95 = lshr i32 %var_2_94, 4
; Matched:%var_2_1672:  %var_2_1672 = trunc i32 %var_2_1671 to i8
; %var_2_96 = trunc i32 %var_2_95 to i8
; Matched:%var_2_1673:  %var_2_1673 = and i8 %var_2_1672, 1
; %var_2_97 = and i8 %var_2_96, 1
; Matched:\<badref\>:  store i8 %var_2_1673, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_97, i8* %var_2_26, align 1
%var_2_98 = icmp eq i32 %var_2_85, 0
; Matched:%var_2_1675:  %var_2_1675 = zext i1 %var_2_1674 to i8
; %var_2_99 = zext i1 %var_2_98 to i8
; Matched:\<badref\>:  store i8 %var_2_1675, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_99, i8* %var_2_29, align 1
%var_2_100 = lshr i32 %var_2_85, 31
%var_2_101 = trunc i32 %var_2_100 to i8
; Matched:\<badref\>:  store i8 %var_2_1677, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_101, i8* %var_2_32, align 1
%var_2_102 = lshr i32 %var_2_79, 31
%var_2_103 = lshr i32 %var_2_84, 31
%var_2_104 = xor i32 %var_2_103, %var_2_102
%var_2_105 = xor i32 %var_2_100, %var_2_102
%var_2_106 = add nuw nsw i32 %var_2_105, %var_2_104
%var_2_107 = icmp eq i32 %var_2_106, 2
; Matched:%var_2_1684:  %var_2_1684 = zext i1 %var_2_1683 to i8
; %var_2_108 = zext i1 %var_2_107 to i8
; Matched:\<badref\>:  store i8 %var_2_1684, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_108, i8* %var_2_38, align 1
%var_2_109 = icmp ne i8 %var_2_101, 0
%var_2_110 = xor i1 %var_2_109, %var_2_107
%.demorgan = or i1 %var_2_98, %var_2_110
; Matched:  %.v122 = select i1 %.demorgan, i64 12, i64 44
; %.v68 = select i1 %.demorgan, i64 12, i64 44
; Matched:%var_2_1687:  %var_2_1687 = add i64 %var_2_1650, %.v122
; %var_2_111 = add i64 %var_2_74, %.v68
; Matched:\<badref\>:  store i64 %var_2_1687, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_111, i64* %var_2_3, align 8
  br i1 %.demorgan, label %block_400ba3, label %block_.L_400bc3

block_400ba3:                                     ; preds = %block_.L_400b97
; Matched:%var_2_963:  %var_2_963 = add i64 %var_2_659, -16
; %var_2_112 = add i64 %var_2_75, -16
; Matched:%var_2_2127:  %var_2_2127 = add i64 %var_2_1687, 4
; %var_2_113 = add i64 %var_2_111, 4
; Matched:\<badref\>:  store i64 %var_2_2127, i64* %PC, align 8
; store i64 %var_2_113, i64* %var_2_3, align 8
; Matched:%var_2_965:  %var_2_965 = inttoptr i64 %var_2_963 to i64*
; %var_2_114 = inttoptr i64 %var_2_112 to i64*
; Matched:%var_2_2129:  %var_2_2129 = load i64, i64* %var_2_2128, align 8
; %var_2_115 = load i64, i64* %var_2_114, align 8
; Matched:\<badref\>:  store i64 %var_2_2129, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_115, i64* %RAX.i798, align 8
; Matched:%var_2_2130:  %var_2_2130 = add i64 %var_2_1687, 8
; %var_2_116 = add i64 %var_2_111, 8
; Matched:\<badref\>:  store i64 %var_2_2130, i64* %PC, align 8
; store i64 %var_2_116, i64* %var_2_3, align 8
; Matched:%var_2_2131:  %var_2_2131 = load i32, i32* %var_2_1654, align 4
; %var_2_117 = load i32, i32* %var_2_78, align 4
; Matched:%var_2_2132:  %var_2_2132 = sext i32 %var_2_2131 to i64
; %var_2_118 = sext i32 %var_2_117 to i64
; Matched:\<badref\>:  store i64 %var_2_2132, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_118, i64* %RCX.i788, align 8
; Matched:%var_2_970:  %var_2_970 = shl nsw i64 %var_2_969, 2
; %var_2_119 = shl nsw i64 %var_2_118, 2
; Matched:%var_2_2134:  %var_2_2134 = add i64 %var_2_2133, %var_2_2129
; %var_2_120 = add i64 %var_2_119, %var_2_115
; Matched:%var_2_2135:  %var_2_2135 = add i64 %var_2_1687, 11
; %var_2_121 = add i64 %var_2_111, 11
; Matched:\<badref\>:  store i64 %var_2_2135, i64* %PC, align 8
; store i64 %var_2_121, i64* %var_2_3, align 8
; Matched:%var_2_973:  %var_2_973 = inttoptr i64 %var_2_971 to i32*
; %var_2_122 = inttoptr i64 %var_2_120 to i32*
; Matched:%var_2_2137:  %var_2_2137 = load i32, i32* %var_2_2136, align 4
; %var_2_123 = load i32, i32* %var_2_122, align 4
; Matched:%var_2_2138:  %var_2_2138 = zext i32 %var_2_2137 to i64
; %var_2_124 = zext i32 %var_2_123 to i64
; Matched:\<badref\>:  store i64 %var_2_2138, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_124, i64* %RDX.i786, align 8
; Matched:%var_2_2139:  %var_2_2139 = add i64 %var_2_1651, -96
; %var_2_125 = add i64 %var_2_75, -96
; Matched:%var_2_2140:  %var_2_2140 = add i64 %var_2_1687, 15
; %var_2_126 = add i64 %var_2_111, 15
; Matched:\<badref\>:  store i64 %var_2_2140, i64* %PC, align 8
; store i64 %var_2_126, i64* %var_2_3, align 8
; Matched:%var_2_2141:  %var_2_2141 = inttoptr i64 %var_2_2139 to i32*
; %var_2_127 = inttoptr i64 %var_2_125 to i32*
; Matched:%var_2_2142:  %var_2_2142 = load i32, i32* %var_2_2141, align 4
; %var_2_128 = load i32, i32* %var_2_127, align 4
; Matched:%var_2_2143:  %var_2_2143 = sext i32 %var_2_2137 to i64
; %var_2_129 = sext i32 %var_2_123 to i64
; Matched:%var_2_2144:  %var_2_2144 = sext i32 %var_2_2142 to i64
; %var_2_130 = sext i32 %var_2_128 to i64
; Matched:%var_2_2145:  %var_2_2145 = mul nsw i64 %var_2_2144, %var_2_2143
; %var_2_131 = mul nsw i64 %var_2_130, %var_2_129
; Matched:%var_2_2146:  %var_2_2146 = trunc i64 %var_2_2145 to i32
; %var_2_132 = trunc i64 %var_2_131 to i32
; Matched:%var_2_2147:  %var_2_2147 = and i64 %var_2_2145, 4294967295
; %var_2_133 = and i64 %var_2_131, 4294967295
; Matched:\<badref\>:  store i64 %var_2_2147, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_133, i64* %RDX.i786, align 8
; Matched:%var_2_2148:  %var_2_2148 = shl i64 %var_2_2145, 32
; %var_2_134 = shl i64 %var_2_131, 32
; Matched:%var_2_2149:  %var_2_2149 = ashr exact i64 %var_2_2148, 32
; %var_2_135 = ashr exact i64 %var_2_134, 32
; Matched:%var_2_2150:  %var_2_2150 = icmp ne i64 %var_2_2149, %var_2_2145
; %var_2_136 = icmp ne i64 %var_2_135, %var_2_131
; Matched:%var_2_2151:  %var_2_2151 = zext i1 %var_2_2150 to i8
; %var_2_137 = zext i1 %var_2_136 to i8
; Matched:\<badref\>:  store i8 %var_2_2151, i8* %var_2_17, align 1, !tbaa !1265
; store i8 %var_2_137, i8* %var_2_14, align 1
; Matched:%var_2_2152:  %var_2_2152 = and i32 %var_2_2146, 255
; %var_2_138 = and i32 %var_2_132, 255
; Matched:%var_2_2153:  %var_2_2153 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2152) #14
; %var_2_139 = tail call i32 @llvm.ctpop.i32(i32 %var_2_138)
; Matched:%var_2_2154:  %var_2_2154 = trunc i32 %var_2_2153 to i8
; %var_2_140 = trunc i32 %var_2_139 to i8
; Matched:%var_2_2155:  %var_2_2155 = and i8 %var_2_2154, 1
; %var_2_141 = and i8 %var_2_140, 1
; Matched:%var_2_2156:  %var_2_2156 = xor i8 %var_2_2155, 1
; %var_2_142 = xor i8 %var_2_141, 1
; Matched:\<badref\>:  store i8 %var_2_2156, i8* %var_2_24, align 1, !tbaa !1279
; store i8 %var_2_142, i8* %var_2_21, align 1
store i8 0, i8* %var_2_26, align 1
store i8 0, i8* %var_2_29, align 1
; Matched:%var_2_2157:  %var_2_2157 = lshr i32 %var_2_2146, 31
; %var_2_143 = lshr i32 %var_2_132, 31
; Matched:%var_2_2158:  %var_2_2158 = trunc i32 %var_2_2157 to i8
; %var_2_144 = trunc i32 %var_2_143 to i8
; Matched:\<badref\>:  store i8 %var_2_2158, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_144, i8* %var_2_32, align 1
; Matched:\<badref\>:  store i8 %var_2_2151, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_137, i8* %var_2_38, align 1
; Matched:%var_2_2159:  %var_2_2159 = trunc i64 %var_2_2145 to i32
; %var_2_145 = trunc i64 %var_2_131 to i32
; Matched:%var_2_2160:  %var_2_2160 = add i64 %var_2_1687, 18
; %var_2_146 = add i64 %var_2_111, 18
; Matched:\<badref\>:  store i64 %var_2_2160, i64* %PC, align 8
; store i64 %var_2_146, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_2159, i32* %var_2_2141, align 4
; store i32 %var_2_145, i32* %var_2_127, align 4
; Matched:%var_2_2161:  %var_2_2161 = load i64, i64* %RBP, align 8
; %var_2_147 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2162:  %var_2_2162 = add i64 %var_2_2161, -72
; %var_2_148 = add i64 %var_2_147, -72
%var_2_149 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1050:  %var_2_1050 = add i64 %var_2_1049, 3
; %var_2_150 = add i64 %var_2_149, 3
; Matched:\<badref\>:  store i64 %var_2_1050, i64* %PC, align 8
; store i64 %var_2_150, i64* %var_2_3, align 8
; Matched:%var_2_2165:  %var_2_2165 = inttoptr i64 %var_2_2162 to i32*
; %var_2_151 = inttoptr i64 %var_2_148 to i32*
; Matched:%var_2_2166:  %var_2_2166 = load i32, i32* %var_2_2165, align 4
; %var_2_152 = load i32, i32* %var_2_151, align 4
; Matched:%var_2_2167:  %var_2_2167 = add i32 %var_2_2166, 1
; %var_2_153 = add i32 %var_2_152, 1
; Matched:%var_2_2168:  %var_2_2168 = zext i32 %var_2_2167 to i64
; %var_2_154 = zext i32 %var_2_153 to i64
; Matched:\<badref\>:  store i64 %var_2_2168, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_154, i64* %RAX.i798, align 8
; Matched:%var_2_2169:  %var_2_2169 = icmp eq i32 %var_2_2166, -1
; %var_2_155 = icmp eq i32 %var_2_152, -1
; Matched:%var_2_2170:  %var_2_2170 = icmp eq i32 %var_2_2167, 0
; %var_2_156 = icmp eq i32 %var_2_153, 0
; Matched:%var_2_2171:  %var_2_2171 = or i1 %var_2_2169, %var_2_2170
; %var_2_157 = or i1 %var_2_155, %var_2_156
; Matched:%var_2_2172:  %var_2_2172 = zext i1 %var_2_2171 to i8
; %var_2_158 = zext i1 %var_2_157 to i8
; Matched:\<badref\>:  store i8 %var_2_2172, i8* %var_2_17, align 1, !tbaa !1265
; store i8 %var_2_158, i8* %var_2_14, align 1
; Matched:%var_2_2173:  %var_2_2173 = and i32 %var_2_2167, 255
; %var_2_159 = and i32 %var_2_153, 255
; Matched:%var_2_2174:  %var_2_2174 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2173) #14
; %var_2_160 = tail call i32 @llvm.ctpop.i32(i32 %var_2_159)
; Matched:%var_2_2175:  %var_2_2175 = trunc i32 %var_2_2174 to i8
; %var_2_161 = trunc i32 %var_2_160 to i8
; Matched:%var_2_2176:  %var_2_2176 = and i8 %var_2_2175, 1
; %var_2_162 = and i8 %var_2_161, 1
; Matched:%var_2_2177:  %var_2_2177 = xor i8 %var_2_2176, 1
; %var_2_163 = xor i8 %var_2_162, 1
; Matched:\<badref\>:  store i8 %var_2_2177, i8* %var_2_24, align 1, !tbaa !1279
; store i8 %var_2_163, i8* %var_2_21, align 1
; Matched:%var_2_2178:  %var_2_2178 = xor i32 %var_2_2167, %var_2_2166
; %var_2_164 = xor i32 %var_2_153, %var_2_152
; Matched:%var_2_2179:  %var_2_2179 = lshr i32 %var_2_2178, 4
; %var_2_165 = lshr i32 %var_2_164, 4
; Matched:%var_2_2180:  %var_2_2180 = trunc i32 %var_2_2179 to i8
; %var_2_166 = trunc i32 %var_2_165 to i8
; Matched:%var_2_2181:  %var_2_2181 = and i8 %var_2_2180, 1
; %var_2_167 = and i8 %var_2_166, 1
; Matched:\<badref\>:  store i8 %var_2_2181, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_167, i8* %var_2_26, align 1
; Matched:%var_2_2182:  %var_2_2182 = zext i1 %var_2_2170 to i8
; %var_2_168 = zext i1 %var_2_156 to i8
; Matched:\<badref\>:  store i8 %var_2_2182, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_168, i8* %var_2_29, align 1
; Matched:%var_2_2183:  %var_2_2183 = lshr i32 %var_2_2167, 31
; %var_2_169 = lshr i32 %var_2_153, 31
; Matched:%var_2_2184:  %var_2_2184 = trunc i32 %var_2_2183 to i8
; %var_2_170 = trunc i32 %var_2_169 to i8
; Matched:\<badref\>:  store i8 %var_2_2184, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_170, i8* %var_2_32, align 1
; Matched:%var_2_2185:  %var_2_2185 = lshr i32 %var_2_2166, 31
; %var_2_171 = lshr i32 %var_2_152, 31
; Matched:%var_2_2186:  %var_2_2186 = xor i32 %var_2_2183, %var_2_2185
; %var_2_172 = xor i32 %var_2_169, %var_2_171
; Matched:%var_2_2187:  %var_2_2187 = add nuw nsw i32 %var_2_2186, %var_2_2183
; %var_2_173 = add nuw nsw i32 %var_2_172, %var_2_169
; Matched:%var_2_2188:  %var_2_2188 = icmp eq i32 %var_2_2187, 2
; %var_2_174 = icmp eq i32 %var_2_173, 2
; Matched:%var_2_2189:  %var_2_2189 = zext i1 %var_2_2188 to i8
; %var_2_175 = zext i1 %var_2_174 to i8
; Matched:\<badref\>:  store i8 %var_2_2189, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_175, i8* %var_2_38, align 1
%var_2_176 = add i64 %var_2_149, 9
store i64 %var_2_176, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_2167, i32* %var_2_2165, align 4
; store i32 %var_2_153, i32* %var_2_151, align 4
; Matched:%var_2_2191:  %var_2_2191 = load i64, i64* %PC, align 8
; %var_2_177 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2192:  %var_2_2192 = add i64 %var_2_2191, -39
; %var_2_178 = add i64 %var_2_177, -39
; Matched:\<badref\>:  store i64 %var_2_2192, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_178, i64* %var_2_3, align 8
  br label %block_.L_400b97

block_.L_400bc3:                                  ; preds = %block_.L_400b97
%var_2_179 = add i64 %var_2_75, -88
; Matched:%var_2_1815:  %var_2_1815 = add i64 %var_2_1687, 7
; %var_2_180 = add i64 %var_2_111, 7
; Matched:\<badref\>:  store i64 %var_2_1815, i64* %PC, align 8
; store i64 %var_2_180, i64* %var_2_3, align 8
%var_2_181 = inttoptr i64 %var_2_179 to i32*
store i32 1, i32* %var_2_181, align 4
; Matched:%var_2_1817:  %var_2_1817 = load i64, i64* %RBP, align 8
; %var_2_182 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1818:  %var_2_1818 = add i64 %var_2_1817, -20
; %var_2_183 = add i64 %var_2_182, -20
%var_2_184 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1107:  %var_2_1107 = add i64 %var_2_1106, 3
; %var_2_185 = add i64 %var_2_184, 3
; Matched:\<badref\>:  store i64 %var_2_1107, i64* %PC, align 8
; store i64 %var_2_185, i64* %var_2_3, align 8
; Matched:%var_2_1821:  %var_2_1821 = inttoptr i64 %var_2_1818 to i32*
; %var_2_186 = inttoptr i64 %var_2_183 to i32*
; Matched:%var_2_1822:  %var_2_1822 = load i32, i32* %var_2_1821, align 4
; %var_2_187 = load i32, i32* %var_2_186, align 4
; Matched:%var_2_1823:  %var_2_1823 = zext i32 %var_2_1822 to i64
; %var_2_188 = zext i32 %var_2_187 to i64
; Matched:\<badref\>:  store i64 %var_2_1823, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_188, i64* %RAX.i798, align 8
; Matched:%var_2_1824:  %var_2_1824 = add i64 %var_2_1817, -72
; %var_2_189 = add i64 %var_2_182, -72
; Matched:%var_2_1825:  %var_2_1825 = add i64 %var_2_1819, 6
; %var_2_190 = add i64 %var_2_184, 6
; Matched:\<badref\>:  store i64 %var_2_1825, i64* %PC, align 8
; store i64 %var_2_190, i64* %var_2_3, align 8
; Matched:%var_2_1826:  %var_2_1826 = inttoptr i64 %var_2_1824 to i32*
; %var_2_191 = inttoptr i64 %var_2_189 to i32*
; Matched:\<badref\>:  store i32 %var_2_1822, i32* %var_2_1826, align 4
; store i32 %var_2_187, i32* %var_2_191, align 4
; Matched:%var_2_1827:  %var_2_1827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
; %var_2_192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
%var_2_193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
%var_2_194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
%var_2_195 = bitcast i64* %var_2_194 to double*
; Matched:  %AL = bitcast %union.anon* %var_2_3 to i8*
; %AL.i488 = bitcast %union.anon* %var_2_73 to i8*
%CL.i489 = bitcast %union.anon* %var_2_56 to i8*
%var_2_196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
; Matched:%var_2_1831:  %var_2_1831 = bitcast [32 x %union.VectorReg]* %var_2_1811 to i8*
; %var_2_197 = bitcast [32 x %union.VectorReg]* %var_2_196 to i8*
; Matched:%var_2_1832:  %var_2_1832 = bitcast [32 x %union.VectorReg]* %var_2_1811 to i32*
; %var_2_198 = bitcast [32 x %union.VectorReg]* %var_2_196 to i32*
; Matched:%var_2_1833:  %var_2_1833 = getelementptr inbounds i8, i8* %var_2_1831, i64 4
; %var_2_199 = getelementptr inbounds i8, i8* %var_2_197, i64 4
; Matched:%var_2_1834:  %var_2_1834 = bitcast i8* %var_2_1833 to i32*
; %var_2_200 = bitcast i8* %var_2_199 to i32*
; Matched:%var_2_1835:  %var_2_1835 = bitcast i64* %var_2_1829 to i32*
; %var_2_201 = bitcast i64* %var_2_194 to i32*
; Matched:%var_2_1836:  %var_2_1836 = getelementptr inbounds i8, i8* %var_2_1831, i64 12
; %var_2_202 = getelementptr inbounds i8, i8* %var_2_197, i64 12
; Matched:%var_2_1837:  %var_2_1837 = bitcast i8* %var_2_1836 to i32*
; %var_2_203 = bitcast i8* %var_2_202 to i32*
%var_2_204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
; Matched:%var_2_1838:  %var_2_1838 = bitcast %union.VectorReg* %var_2_6 to double*
; %var_2_205 = bitcast %union.VectorReg* %var_2_204 to double*
%var_2_206 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_204, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:%var_2_1840:  %var_2_1840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
; %var_2_207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_1841:  %var_2_1841 = bitcast i64* %var_2_1840 to double*
; %var_2_208 = bitcast i64* %var_2_207 to double*
%var_2_209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
; Matched:%var_2_1843:  %var_2_1843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
; %var_2_210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_1844:  %var_2_1844 = bitcast i64* %var_2_1843 to double*
; %var_2_211 = bitcast i64* %var_2_210 to double*
%var_2_212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
; Matched:%var_2_1845:  %var_2_1845 = bitcast %union.VectorReg* %var_2_1812 to double*
; %var_2_213 = bitcast %union.VectorReg* %var_2_212 to double*
%var_2_214 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_212, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:%var_2_1847:  %var_2_1847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
; %var_2_215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_1848:  %var_2_1848 = bitcast i64* %var_2_1847 to double*
; %var_2_216 = bitcast i64* %var_2_215 to double*
%var_2_217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
; Matched:%var_2_1849:  %var_2_1849 = bitcast %union.VectorReg* %var_2_7 to double*
; %var_2_218 = bitcast %union.VectorReg* %var_2_217 to double*
%var_2_219 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_217, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:%var_2_1851:  %var_2_1851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
; %var_2_220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_1852:  %var_2_1852 = bitcast i64* %var_2_1851 to double*
; %var_2_221 = bitcast i64* %var_2_220 to double*
; Matched:%var_2_1813:  %var_2_1813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
; %var_2_222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
; Matched:%var_2_1853:  %var_2_1853 = bitcast %union.VectorReg* %var_2_1813 to double*
; %var_2_223 = bitcast %union.VectorReg* %var_2_222 to double*
; Matched:%var_2_1854:  %var_2_1854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
; %var_2_224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
%var_2_225 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %var_2_196, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
%var_2_226 = bitcast %union.VectorReg* %var_2_212 to <2 x i32>*
%var_2_227 = bitcast i64* %var_2_215 to <2 x i32>*
; Matched:%var_2_1857:  %var_2_1857 = bitcast [32 x %union.VectorReg]* %var_2_1811 to double*
; %var_2_228 = bitcast [32 x %union.VectorReg]* %var_2_196 to double*
; Matched:  %.pre94 = load i64, i64* %PC, align 8
; %.pre40 = load i64, i64* %var_2_3, align 8
%var_2_229 = bitcast [32 x %union.VectorReg]* %var_2_196 to <4 x i32>*
  br label %block_.L_400bd0

block_.L_400bd0:                                  ; preds = %block_.L_40104e, %block_.L_400bc3
; Matched:%var_2_658:  %var_2_658 = phi i64 [ %.pre94, %block_400bc3 ], [ %var_2_747, %block_40104e ]
; %var_2_230 = phi i64 [ %.pre40, %block_.L_400bc3 ], [ %var_2_2208, %block_.L_40104e ]
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_.L_400bc3 ], [ %MEMORY.8, %block_.L_40104e ]
%var_2_231 = load i64, i64* %RBP.i, align 8
%var_2_232 = add i64 %var_2_231, -72
; Matched:%var_2_661:  %var_2_661 = add i64 %var_2_658, 4
; %var_2_233 = add i64 %var_2_230, 4
; Matched:\<badref\>:  store i64 %var_2_661, i64* %PC, align 8
; store i64 %var_2_233, i64* %var_2_3, align 8
%var_2_234 = inttoptr i64 %var_2_232 to i32*
%var_2_235 = load i32, i32* %var_2_234, align 4
%var_2_236 = add i32 %var_2_235, -1
%var_2_237 = icmp eq i32 %var_2_235, 0
%var_2_238 = zext i1 %var_2_237 to i8
store i8 %var_2_238, i8* %var_2_14, align 1
; Matched:%var_2_725:  %var_2_725 = and i32 %var_2_721, 255
; %var_2_239 = and i32 %var_2_236, 255
; Matched:%var_2_726:  %var_2_726 = tail call i32 @llvm.ctpop.i32(i32 %var_2_725) #14
; %var_2_240 = tail call i32 @llvm.ctpop.i32(i32 %var_2_239)
; Matched:%var_2_727:  %var_2_727 = trunc i32 %var_2_726 to i8
; %var_2_241 = trunc i32 %var_2_240 to i8
; Matched:%var_2_670:  %var_2_670 = and i8 %var_2_669, 1
; %var_2_242 = and i8 %var_2_241, 1
; Matched:%var_2_729:  %var_2_729 = xor i8 %var_2_728, 1
; %var_2_243 = xor i8 %var_2_242, 1
; Matched:\<badref\>:  store i8 %var_2_671, i8* %var_2_24, align 1, !tbaa !1279
; store i8 %var_2_243, i8* %var_2_21, align 1
; Matched:%var_2_672:  %var_2_672 = xor i32 %var_2_664, %var_2_663
; %var_2_244 = xor i32 %var_2_236, %var_2_235
; Matched:%var_2_673:  %var_2_673 = lshr i32 %var_2_672, 4
; %var_2_245 = lshr i32 %var_2_244, 4
; Matched:%var_2_674:  %var_2_674 = trunc i32 %var_2_673 to i8
; %var_2_246 = trunc i32 %var_2_245 to i8
; Matched:%var_2_675:  %var_2_675 = and i8 %var_2_674, 1
; %var_2_247 = and i8 %var_2_246, 1
; Matched:\<badref\>:  store i8 %var_2_675, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_247, i8* %var_2_26, align 1
; Matched:%var_2_676:  %var_2_676 = icmp eq i32 %var_2_664, 0
; %var_2_248 = icmp eq i32 %var_2_236, 0
; Matched:%var_2_736:  %var_2_736 = zext i1 %var_2_735 to i8
; %var_2_249 = zext i1 %var_2_248 to i8
; Matched:\<badref\>:  store i8 %var_2_677, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_249, i8* %var_2_29, align 1
%var_2_250 = lshr i32 %var_2_236, 31
%var_2_251 = trunc i32 %var_2_250 to i8
; Matched:\<badref\>:  store i8 %var_2_738, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_251, i8* %var_2_32, align 1
%var_2_252 = lshr i32 %var_2_235, 31
%var_2_253 = xor i32 %var_2_250, %var_2_252
%var_2_254 = add nuw nsw i32 %var_2_253, %var_2_252
%var_2_255 = icmp eq i32 %var_2_254, 2
; Matched:%var_2_684:  %var_2_684 = zext i1 %var_2_683 to i8
; %var_2_256 = zext i1 %var_2_255 to i8
; Matched:\<badref\>:  store i8 %var_2_684, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_256, i8* %var_2_38, align 1
%var_2_257 = icmp ne i8 %var_2_251, 0
%var_2_258 = xor i1 %var_2_257, %var_2_255
; Matched:  %.v123 = select i1 %var_2_686, i64 1174, i64 10
; %.v69 = select i1 %var_2_258, i64 1174, i64 10
; Matched:%var_2_687:  %var_2_687 = add i64 %var_2_658, %.v123
; %var_2_259 = add i64 %var_2_230, %.v69
; Matched:\<badref\>:  store i64 %var_2_687, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_259, i64* %var_2_3, align 8
br i1 %var_2_258, label %block_.L_401066, label %block_400bda

block_400bda:                                     ; preds = %block_.L_400bd0
; Matched:%var_2_2126:  %var_2_2126 = add i64 %var_2_1651, -16
; %var_2_260 = add i64 %var_2_231, -16
; Matched:%var_2_964:  %var_2_964 = add i64 %var_2_687, 4
; %var_2_261 = add i64 %var_2_259, 4
; Matched:\<badref\>:  store i64 %var_2_964, i64* %PC, align 8
; store i64 %var_2_261, i64* %var_2_3, align 8
; Matched:%var_2_2128:  %var_2_2128 = inttoptr i64 %var_2_2126 to i64*
; %var_2_262 = inttoptr i64 %var_2_260 to i64*
; Matched:%var_2_966:  %var_2_966 = load i64, i64* %var_2_965, align 8
; %var_2_263 = load i64, i64* %var_2_262, align 8
; Matched:\<badref\>:  store i64 %var_2_966, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_263, i64* %RAX.i798, align 8
; Matched:%var_2_967:  %var_2_967 = add i64 %var_2_687, 8
; %var_2_264 = add i64 %var_2_259, 8
; Matched:\<badref\>:  store i64 %var_2_967, i64* %PC, align 8
; store i64 %var_2_264, i64* %var_2_3, align 8
; Matched:%var_2_968:  %var_2_968 = load i32, i32* %var_2_662, align 4
; %var_2_265 = load i32, i32* %var_2_234, align 4
; Matched:%var_2_969:  %var_2_969 = sext i32 %var_2_968 to i64
; %var_2_266 = sext i32 %var_2_265 to i64
; Matched:\<badref\>:  store i64 %var_2_969, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_266, i64* %RCX.i788, align 8
; Matched:%var_2_2133:  %var_2_2133 = shl nsw i64 %var_2_2132, 2
; %var_2_267 = shl nsw i64 %var_2_266, 2
; Matched:%var_2_971:  %var_2_971 = add i64 %var_2_970, %var_2_966
; %var_2_268 = add i64 %var_2_267, %var_2_263
; Matched:%var_2_972:  %var_2_972 = add i64 %var_2_687, 11
; %var_2_269 = add i64 %var_2_259, 11
; Matched:\<badref\>:  store i64 %var_2_972, i64* %PC, align 8
; store i64 %var_2_269, i64* %var_2_3, align 8
; Matched:%var_2_2136:  %var_2_2136 = inttoptr i64 %var_2_2134 to i32*
; %var_2_270 = inttoptr i64 %var_2_268 to i32*
; Matched:%var_2_974:  %var_2_974 = load i32, i32* %var_2_973, align 4
; %var_2_271 = load i32, i32* %var_2_270, align 4
; Matched:%var_2_975:  %var_2_975 = zext i32 %var_2_974 to i64
; %var_2_272 = zext i32 %var_2_271 to i64
; Matched:\<badref\>:  store i64 %var_2_975, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_272, i64* %RDX.i786, align 8
; Matched:%var_2_976:  %var_2_976 = add i64 %var_2_659, -84
; %var_2_273 = add i64 %var_2_231, -84
; Matched:%var_2_977:  %var_2_977 = add i64 %var_2_687, 14
; %var_2_274 = add i64 %var_2_259, 14
; Matched:\<badref\>:  store i64 %var_2_977, i64* %PC, align 8
; store i64 %var_2_274, i64* %var_2_3, align 8
; Matched:%var_2_978:  %var_2_978 = inttoptr i64 %var_2_976 to i32*
; %var_2_275 = inttoptr i64 %var_2_273 to i32*
; Matched:\<badref\>:  store i32 %var_2_974, i32* %var_2_978, align 4
; store i32 %var_2_271, i32* %var_2_275, align 4
%var_2_276 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_980:  %var_2_980 = add i64 %var_2_979, -96
; %var_2_277 = add i64 %var_2_276, -96
%var_2_278 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_111:  %var_2_111 = add i64 %var_2_110, 3
; %var_2_279 = add i64 %var_2_278, 3
; Matched:\<badref\>:  store i64 %var_2_111, i64* %PC, align 8
; store i64 %var_2_279, i64* %var_2_3, align 8
; Matched:%var_2_983:  %var_2_983 = inttoptr i64 %var_2_980 to i32*
; %var_2_280 = inttoptr i64 %var_2_277 to i32*
; Matched:%var_2_984:  %var_2_984 = load i32, i32* %var_2_983, align 4
; %var_2_281 = load i32, i32* %var_2_280, align 4
; Matched:%var_2_985:  %var_2_985 = zext i32 %var_2_984 to i64
; %var_2_282 = zext i32 %var_2_281 to i64
; Matched:\<badref\>:  store i64 %var_2_985, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_282, i64* %RAX.i798, align 8
; Matched:%var_2_986:  %var_2_986 = add i64 %var_2_979, -84
; %var_2_283 = add i64 %var_2_276, -84
; Matched:%var_2_1159:  %var_2_1159 = add i64 %var_2_1153, 6
; %var_2_284 = add i64 %var_2_278, 6
; Matched:\<badref\>:  store i64 %var_2_1159, i64* %PC, align 8
; store i64 %var_2_284, i64* %var_2_3, align 8
; Matched:%var_2_690:  %var_2_690 = inttoptr i64 %var_2_688 to i32*
; %var_2_285 = inttoptr i64 %var_2_283 to i32*
; Matched:%var_2_691:  %var_2_691 = load i32, i32* %var_2_690, align 4
; %var_2_286 = load i32, i32* %var_2_285, align 4
; Matched:%var_2_990:  %var_2_990 = zext i32 %var_2_989 to i64
; %var_2_287 = zext i32 %var_2_286 to i64
; Matched:\<badref\>:  store i64 %var_2_990, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_287, i64* %RDX.i786, align 8
%var_2_288 = add i64 %var_2_276, -88
; Matched:%var_2_992:  %var_2_992 = add i64 %var_2_981, 10
; %var_2_289 = add i64 %var_2_278, 10
; Matched:\<badref\>:  store i64 %var_2_1133, i64* %PC, align 8
; store i64 %var_2_289, i64* %var_2_3, align 8
%var_2_290 = inttoptr i64 %var_2_288 to i32*
; Matched:%var_2_696:  %var_2_696 = load i32, i32* %var_2_695, align 4
; %var_2_291 = load i32, i32* %var_2_290, align 4
; Matched:%var_2_697:  %var_2_697 = sext i32 %var_2_691 to i64
; %var_2_292 = sext i32 %var_2_286 to i64
; Matched:%var_2_996:  %var_2_996 = sext i32 %var_2_994 to i64
; %var_2_293 = sext i32 %var_2_291 to i64
; Matched:%var_2_997:  %var_2_997 = mul nsw i64 %var_2_996, %var_2_995
; %var_2_294 = mul nsw i64 %var_2_293, %var_2_292
; Matched:%var_2_700:  %var_2_700 = trunc i64 %var_2_699 to i32
; %var_2_295 = trunc i64 %var_2_294 to i32
; Matched:%var_2_999:  %var_2_999 = shl i64 %var_2_997, 32
; %var_2_296 = shl i64 %var_2_294, 32
; Matched:%var_2_1000:  %var_2_1000 = ashr exact i64 %var_2_999, 32
; %var_2_297 = ashr exact i64 %var_2_296, 32
; Matched:%var_2_1001:  %var_2_1001 = icmp ne i64 %var_2_1000, %var_2_997
; %var_2_298 = icmp ne i64 %var_2_297, %var_2_294
; Matched:%var_2_705:  %var_2_705 = zext i1 %var_2_704 to i8
; %var_2_299 = zext i1 %var_2_298 to i8
; Matched:\<badref\>:  store i8 %var_2_1002, i8* %var_2_17, align 1, !tbaa !1265
; store i8 %var_2_299, i8* %var_2_14, align 1
; Matched:%var_2_1003:  %var_2_1003 = and i32 %var_2_998, 255
; %var_2_300 = and i32 %var_2_295, 255
; Matched:%var_2_1004:  %var_2_1004 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1003) #14
; %var_2_301 = tail call i32 @llvm.ctpop.i32(i32 %var_2_300)
; Matched:%var_2_708:  %var_2_708 = trunc i32 %var_2_707 to i8
; %var_2_302 = trunc i32 %var_2_301 to i8
; Matched:%var_2_1006:  %var_2_1006 = and i8 %var_2_1005, 1
; %var_2_303 = and i8 %var_2_302, 1
; Matched:%var_2_1007:  %var_2_1007 = xor i8 %var_2_1006, 1
; %var_2_304 = xor i8 %var_2_303, 1
; Matched:\<badref\>:  store i8 %var_2_710, i8* %var_2_24, align 1, !tbaa !1279
; store i8 %var_2_304, i8* %var_2_21, align 1
store i8 0, i8* %var_2_26, align 1
store i8 0, i8* %var_2_29, align 1
; Matched:%var_2_711:  %var_2_711 = lshr i32 %var_2_700, 31
; %var_2_305 = lshr i32 %var_2_295, 31
; Matched:%var_2_1009:  %var_2_1009 = trunc i32 %var_2_1008 to i8
; %var_2_306 = trunc i32 %var_2_305 to i8
; Matched:\<badref\>:  store i8 %var_2_712, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_306, i8* %var_2_32, align 1
; Matched:\<badref\>:  store i8 %var_2_1002, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_299, i8* %var_2_38, align 1
; Matched:%var_2_1010:  %var_2_1010 = add i64 %var_2_979, -164
; %var_2_307 = add i64 %var_2_276, -164
; Matched:%var_2_1011:  %var_2_1011 = trunc i64 %var_2_997 to i32
; %var_2_308 = trunc i64 %var_2_294 to i32
; Matched:%var_2_2110:  %var_2_2110 = add i64 %var_2_2105, 16
; %var_2_309 = add i64 %var_2_278, 16
; Matched:\<badref\>:  store i64 %var_2_2110, i64* %PC, align 8
; store i64 %var_2_309, i64* %var_2_3, align 8
; Matched:%var_2_1013:  %var_2_1013 = inttoptr i64 %var_2_1010 to i32*
; %var_2_310 = inttoptr i64 %var_2_307 to i32*
; Matched:\<badref\>:  store i32 %var_2_1011, i32* %var_2_1013, align 4
; store i32 %var_2_308, i32* %var_2_310, align 4
%var_2_311 = load i64, i64* %var_2_3, align 8
%var_2_312 = load i32, i32* %EAX.i795, align 8
%var_2_313 = sext i32 %var_2_312 to i64
%var_2_314 = lshr i64 %var_2_313, 32
; Matched:\<badref\>:  store i64 %var_2_1017, i64* %var_2_1827, align 8, !tbaa !1261
; store i64 %var_2_314, i64* %var_2_192, align 8
%var_2_315 = load i64, i64* %RBP.i, align 8
%var_2_316 = add i64 %var_2_315, -164
; Matched:%var_2_1143:  %var_2_1143 = add i64 %var_2_1142, 7
; %var_2_317 = add i64 %var_2_311, 7
; Matched:\<badref\>:  store i64 %var_2_1020, i64* %PC, align 8
; store i64 %var_2_317, i64* %var_2_3, align 8
%var_2_318 = inttoptr i64 %var_2_316 to i32*
%var_2_319 = load i32, i32* %var_2_318, align 4
; Matched:%var_2_1023:  %var_2_1023 = zext i32 %var_2_1022 to i64
; %var_2_320 = zext i32 %var_2_319 to i64
; Matched:\<badref\>:  store i64 %var_2_1023, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_320, i64* %RSI.i811, align 8
%var_2_321 = add i64 %var_2_311, 9
store i64 %var_2_321, i64* %var_2_3, align 8
%var_2_322 = zext i32 %var_2_312 to i64
%var_2_323 = sext i32 %var_2_319 to i64
%var_2_324 = shl nuw i64 %var_2_314, 32
%var_2_325 = or i64 %var_2_324, %var_2_322
%var_2_326 = sdiv i64 %var_2_325, %var_2_323
%var_2_327 = shl i64 %var_2_326, 32
%var_2_328 = ashr exact i64 %var_2_327, 32
%var_2_329 = icmp eq i64 %var_2_326, %var_2_328
br i1 %var_2_329, label %var_2_332, label %var_2_330

var_2_330:
%var_2_331 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %var_2_321, %struct.Memory* %MEMORY.1)
; Matched:  %.pre95 = load i64, i64* %RBP, align 8
; %.pre41 = load i64, i64* %RBP.i, align 8
; Matched:  %.pre96 = load i32, i32* %EAX, align 4
; %.pre42 = load i32, i32* %EAX.i795, align 4
; Matched:  %.pre97 = load i64, i64* %PC, align 8
; %.pre43 = load i64, i64* %var_2_3, align 8
  br label %routine_idivl__esi.exit

var_2_332:
; Matched:%var_2_1036:  %var_2_1036 = srem i64 %var_2_1028, %var_2_1026
; %var_2_333 = srem i64 %var_2_325, %var_2_323
; Matched:%var_2_1037:  %var_2_1037 = and i64 %var_2_1029, 4294967295
; %var_2_334 = and i64 %var_2_326, 4294967295
; Matched:\<badref\>:  store i64 %var_2_1037, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_334, i64* %RAX.i798, align 8
; Matched:%var_2_1038:  %var_2_1038 = and i64 %var_2_1036, 4294967295
; %var_2_335 = and i64 %var_2_333, 4294967295
; Matched:\<badref\>:  store i64 %var_2_1038, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_335, i64* %RDX.i786, align 8
store i8 0, i8* %var_2_14, align 1
store i8 0, i8* %var_2_21, align 1
store i8 0, i8* %var_2_26, align 1
store i8 0, i8* %var_2_29, align 1
store i8 0, i8* %var_2_32, align 1
store i8 0, i8* %var_2_38, align 1
; Matched:%var_2_1039:  %var_2_1039 = trunc i64 %var_2_1029 to i32
; %var_2_336 = trunc i64 %var_2_326 to i32
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %var_2_332, %var_2_330
; Matched:%var_2_1040:  %var_2_1040 = phi i64 [ %.pre97, %var_2_1033 ], [ %var_2_1024, %var_2_1035 ]
; %var_2_337 = phi i64 [ %.pre43, %var_2_330 ], [ %var_2_321, %var_2_332 ]
; Matched:%var_2_1041:  %var_2_1041 = phi i32 [ %.pre96, %var_2_1033 ], [ %var_2_1039, %var_2_1035 ]
; %var_2_338 = phi i32 [ %.pre42, %var_2_330 ], [ %var_2_336, %var_2_332 ]
; Matched:%var_2_1042:  %var_2_1042 = phi i64 [ %.pre95, %var_2_1033 ], [ %var_2_1018, %var_2_1035 ]
; %var_2_339 = phi i64 [ %.pre41, %var_2_330 ], [ %var_2_315, %var_2_332 ]
%var_2_340 = phi %struct.Memory* [ %var_2_331, %var_2_330 ], [ %MEMORY.1, %var_2_332 ]
; Matched:%var_2_1044:  %var_2_1044 = add i64 %var_2_1042, -92
; %var_2_341 = add i64 %var_2_339, -92
; Matched:%var_2_1045:  %var_2_1045 = add i64 %var_2_1040, 3
; %var_2_342 = add i64 %var_2_337, 3
; Matched:\<badref\>:  store i64 %var_2_1045, i64* %PC, align 8
; store i64 %var_2_342, i64* %var_2_3, align 8
; Matched:%var_2_1046:  %var_2_1046 = inttoptr i64 %var_2_1044 to i32*
; %var_2_343 = inttoptr i64 %var_2_341 to i32*
; Matched:\<badref\>:  store i32 %var_2_1041, i32* %var_2_1046, align 4
; store i32 %var_2_338, i32* %var_2_343, align 4
; Matched:%var_2_1047:  %var_2_1047 = load i64, i64* %RBP, align 8
; %var_2_344 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1048:  %var_2_1048 = add i64 %var_2_1047, -88
; %var_2_345 = add i64 %var_2_344, -88
%var_2_346 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_718:  %var_2_718 = add i64 %var_2_717, 3
; %var_2_347 = add i64 %var_2_346, 3
; Matched:\<badref\>:  store i64 %var_2_718, i64* %PC, align 8
; store i64 %var_2_347, i64* %var_2_3, align 8
; Matched:%var_2_1051:  %var_2_1051 = inttoptr i64 %var_2_1048 to i32*
; %var_2_348 = inttoptr i64 %var_2_345 to i32*
; Matched:%var_2_1052:  %var_2_1052 = load i32, i32* %var_2_1051, align 4
; %var_2_349 = load i32, i32* %var_2_348, align 4
; Matched:%var_2_1053:  %var_2_1053 = shl i32 %var_2_1052, 1
; %var_2_350 = shl i32 %var_2_349, 1
; Matched:%var_2_1054:  %var_2_1054 = icmp slt i32 %var_2_1052, 0
; %var_2_351 = icmp slt i32 %var_2_349, 0
; Matched:%var_2_1055:  %var_2_1055 = icmp slt i32 %var_2_1053, 0
; %var_2_352 = icmp slt i32 %var_2_350, 0
; Matched:%var_2_1056:  %var_2_1056 = xor i1 %var_2_1054, %var_2_1055
; %var_2_353 = xor i1 %var_2_351, %var_2_352
; Matched:%var_2_1057:  %var_2_1057 = zext i32 %var_2_1053 to i64
; %var_2_354 = zext i32 %var_2_350 to i64
; Matched:\<badref\>:  store i64 %var_2_1057, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_354, i64* %RAX.i798, align 8
; Matched:  %.lobit = lshr i32 %var_2_1052, 31
; %.lobit = lshr i32 %var_2_349, 31
; Matched:%var_2_1058:  %var_2_1058 = trunc i32 %.lobit to i8
; %var_2_355 = trunc i32 %.lobit to i8
; Matched:\<badref\>:  store i8 %var_2_1058, i8* %var_2_17, align 1, !tbaa !1284
; store i8 %var_2_355, i8* %var_2_14, align 1
; Matched:%var_2_1059:  %var_2_1059 = and i32 %var_2_1053, 254
; %var_2_356 = and i32 %var_2_350, 254
; Matched:%var_2_1060:  %var_2_1060 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1059) #14
; %var_2_357 = tail call i32 @llvm.ctpop.i32(i32 %var_2_356)
; Matched:%var_2_1061:  %var_2_1061 = trunc i32 %var_2_1060 to i8
; %var_2_358 = trunc i32 %var_2_357 to i8
; Matched:%var_2_1062:  %var_2_1062 = and i8 %var_2_1061, 1
; %var_2_359 = and i8 %var_2_358, 1
; Matched:%var_2_1063:  %var_2_1063 = xor i8 %var_2_1062, 1
; %var_2_360 = xor i8 %var_2_359, 1
; Matched:\<badref\>:  store i8 %var_2_1063, i8* %var_2_24, align 1, !tbaa !1284
; store i8 %var_2_360, i8* %var_2_21, align 1
store i8 0, i8* %var_2_26, align 1
; Matched:%var_2_1064:  %var_2_1064 = icmp eq i32 %var_2_1053, 0
; %var_2_361 = icmp eq i32 %var_2_350, 0
; Matched:%var_2_1065:  %var_2_1065 = zext i1 %var_2_1064 to i8
; %var_2_362 = zext i1 %var_2_361 to i8
; Matched:\<badref\>:  store i8 %var_2_1065, i8* %var_2_32, align 1, !tbaa !1284
; store i8 %var_2_362, i8* %var_2_29, align 1
; Matched:%var_2_1066:  %var_2_1066 = lshr i32 %var_2_1052, 30
; %var_2_363 = lshr i32 %var_2_349, 30
; Matched:%var_2_1067:  %var_2_1067 = trunc i32 %var_2_1066 to i8
; %var_2_364 = trunc i32 %var_2_363 to i8
; Matched:%var_2_1068:  %var_2_1068 = and i8 %var_2_1067, 1
; %var_2_365 = and i8 %var_2_364, 1
; Matched:\<badref\>:  store i8 %var_2_1068, i8* %var_2_35, align 1, !tbaa !1284
; store i8 %var_2_365, i8* %var_2_32, align 1
; Matched:%var_2_1069:  %var_2_1069 = zext i1 %var_2_1056 to i8
; %var_2_366 = zext i1 %var_2_353 to i8
; Matched:\<badref\>:  store i8 %var_2_1069, i8* %var_2_41, align 1, !tbaa !1284
; store i8 %var_2_366, i8* %var_2_38, align 1
; Matched:%var_2_1070:  %var_2_1070 = add i64 %var_2_1047, -48
; %var_2_367 = add i64 %var_2_344, -48
%var_2_368 = add i64 %var_2_346, 8
store i64 %var_2_368, i64* %var_2_3, align 8
; Matched:%var_2_1072:  %var_2_1072 = inttoptr i64 %var_2_1070 to i32*
; %var_2_369 = inttoptr i64 %var_2_367 to i32*
; Matched:\<badref\>:  store i32 %var_2_1053, i32* %var_2_1072, align 4
; store i32 %var_2_350, i32* %var_2_369, align 4
%var_2_370 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1074:  %var_2_1074 = add i64 %var_2_1073, -48
; %var_2_371 = add i64 %var_2_370, -48
%var_2_372 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1510:  %var_2_1510 = add i64 %var_2_1509, 3
; %var_2_373 = add i64 %var_2_372, 3
; Matched:\<badref\>:  store i64 %var_2_1510, i64* %PC, align 8
; store i64 %var_2_373, i64* %var_2_3, align 8
; Matched:%var_2_1903:  %var_2_1903 = inttoptr i64 %var_2_1900 to i32*
; %var_2_374 = inttoptr i64 %var_2_371 to i32*
; Matched:%var_2_958:  %var_2_958 = load i32, i32* %var_2_957, align 4
; %var_2_375 = load i32, i32* %var_2_374, align 4
; Matched:%var_2_1079:  %var_2_1079 = zext i32 %var_2_1078 to i64
; %var_2_376 = zext i32 %var_2_375 to i64
; Matched:\<badref\>:  store i64 %var_2_623, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_376, i64* %RAX.i798, align 8
; Matched:%var_2_1080:  %var_2_1080 = add i64 %var_2_1073, -84
; %var_2_377 = add i64 %var_2_370, -84
; Matched:%var_2_72:  %var_2_72 = add i64 %var_2_71, 7
; %var_2_378 = add i64 %var_2_372, 7
; Matched:\<badref\>:  store i64 %var_2_272, i64* %PC, align 8
; store i64 %var_2_378, i64* %var_2_3, align 8
; Matched:%var_2_1082:  %var_2_1082 = inttoptr i64 %var_2_1080 to i32*
; %var_2_379 = inttoptr i64 %var_2_377 to i32*
; Matched:%var_2_1083:  %var_2_1083 = load i32, i32* %var_2_1082, align 4
; %var_2_380 = load i32, i32* %var_2_379, align 4
; Matched:%var_2_1084:  %var_2_1084 = sext i32 %var_2_1078 to i64
; %var_2_381 = sext i32 %var_2_375 to i64
; Matched:%var_2_1085:  %var_2_1085 = sext i32 %var_2_1083 to i64
; %var_2_382 = sext i32 %var_2_380 to i64
; Matched:%var_2_1086:  %var_2_1086 = mul nsw i64 %var_2_1085, %var_2_1084
; %var_2_383 = mul nsw i64 %var_2_382, %var_2_381
; Matched:%var_2_1087:  %var_2_1087 = trunc i64 %var_2_1086 to i32
; %var_2_384 = trunc i64 %var_2_383 to i32
; Matched:%var_2_1088:  %var_2_1088 = and i64 %var_2_1086, 4294967295
; %var_2_385 = and i64 %var_2_383, 4294967295
; Matched:\<badref\>:  store i64 %var_2_1088, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_385, i64* %RAX.i798, align 8
; Matched:%var_2_1089:  %var_2_1089 = shl i64 %var_2_1086, 32
; %var_2_386 = shl i64 %var_2_383, 32
; Matched:%var_2_1090:  %var_2_1090 = ashr exact i64 %var_2_1089, 32
; %var_2_387 = ashr exact i64 %var_2_386, 32
; Matched:%var_2_1091:  %var_2_1091 = icmp ne i64 %var_2_1090, %var_2_1086
; %var_2_388 = icmp ne i64 %var_2_387, %var_2_383
; Matched:%var_2_1092:  %var_2_1092 = zext i1 %var_2_1091 to i8
; %var_2_389 = zext i1 %var_2_388 to i8
; Matched:\<badref\>:  store i8 %var_2_1092, i8* %var_2_17, align 1, !tbaa !1265
; store i8 %var_2_389, i8* %var_2_14, align 1
; Matched:%var_2_1093:  %var_2_1093 = and i32 %var_2_1087, 255
; %var_2_390 = and i32 %var_2_384, 255
; Matched:%var_2_1094:  %var_2_1094 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1093) #14
; %var_2_391 = tail call i32 @llvm.ctpop.i32(i32 %var_2_390)
; Matched:%var_2_1095:  %var_2_1095 = trunc i32 %var_2_1094 to i8
; %var_2_392 = trunc i32 %var_2_391 to i8
; Matched:%var_2_1096:  %var_2_1096 = and i8 %var_2_1095, 1
; %var_2_393 = and i8 %var_2_392, 1
; Matched:%var_2_1097:  %var_2_1097 = xor i8 %var_2_1096, 1
; %var_2_394 = xor i8 %var_2_393, 1
; Matched:\<badref\>:  store i8 %var_2_1097, i8* %var_2_24, align 1, !tbaa !1279
; store i8 %var_2_394, i8* %var_2_21, align 1
store i8 0, i8* %var_2_26, align 1
store i8 0, i8* %var_2_29, align 1
; Matched:%var_2_1098:  %var_2_1098 = lshr i32 %var_2_1087, 31
; %var_2_395 = lshr i32 %var_2_384, 31
; Matched:%var_2_1099:  %var_2_1099 = trunc i32 %var_2_1098 to i8
; %var_2_396 = trunc i32 %var_2_395 to i8
; Matched:\<badref\>:  store i8 %var_2_1099, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_396, i8* %var_2_32, align 1
; Matched:\<badref\>:  store i8 %var_2_1092, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_389, i8* %var_2_38, align 1
; Matched:%var_2_1100:  %var_2_1100 = add i64 %var_2_1073, -52
; %var_2_397 = add i64 %var_2_370, -52
; Matched:%var_2_1101:  %var_2_1101 = trunc i64 %var_2_1086 to i32
; %var_2_398 = trunc i64 %var_2_383 to i32
; Matched:%var_2_1102:  %var_2_1102 = add i64 %var_2_1075, 10
; %var_2_399 = add i64 %var_2_372, 10
; Matched:\<badref\>:  store i64 %var_2_992, i64* %PC, align 8
; store i64 %var_2_399, i64* %var_2_3, align 8
; Matched:%var_2_1103:  %var_2_1103 = inttoptr i64 %var_2_1100 to i32*
; %var_2_400 = inttoptr i64 %var_2_397 to i32*
; Matched:\<badref\>:  store i32 %var_2_1101, i32* %var_2_1103, align 4
; store i32 %var_2_398, i32* %var_2_400, align 4
%var_2_401 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_423:  %var_2_423 = add i64 %var_2_422, -52
; %var_2_402 = add i64 %var_2_401, -52
%var_2_403 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1902:  %var_2_1902 = add i64 %var_2_1901, 3
; %var_2_404 = add i64 %var_2_403, 3
; Matched:\<badref\>:  store i64 %var_2_1902, i64* %PC, align 8
; store i64 %var_2_404, i64* %var_2_3, align 8
; Matched:%var_2_426:  %var_2_426 = inttoptr i64 %var_2_423 to i32*
; %var_2_405 = inttoptr i64 %var_2_402 to i32*
; Matched:%var_2_1109:  %var_2_1109 = load i32, i32* %var_2_1108, align 4
; %var_2_406 = load i32, i32* %var_2_405, align 4
; Matched:%var_2_1110:  %var_2_1110 = zext i32 %var_2_1109 to i64
; %var_2_407 = zext i32 %var_2_406 to i64
; Matched:\<badref\>:  store i64 %var_2_428, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_407, i64* %RAX.i798, align 8
; Matched:%var_2_1111:  %var_2_1111 = add i64 %var_2_1104, -92
; %var_2_408 = add i64 %var_2_401, -92
; Matched:%var_2_1112:  %var_2_1112 = add i64 %var_2_1106, 7
; %var_2_409 = add i64 %var_2_403, 7
; Matched:\<badref\>:  store i64 %var_2_1143, i64* %PC, align 8
; store i64 %var_2_409, i64* %var_2_3, align 8
; Matched:%var_2_1113:  %var_2_1113 = inttoptr i64 %var_2_1111 to i32*
; %var_2_410 = inttoptr i64 %var_2_408 to i32*
; Matched:%var_2_1114:  %var_2_1114 = load i32, i32* %var_2_1113, align 4
; %var_2_411 = load i32, i32* %var_2_410, align 4
; Matched:%var_2_1115:  %var_2_1115 = sext i32 %var_2_1109 to i64
; %var_2_412 = sext i32 %var_2_406 to i64
; Matched:%var_2_1116:  %var_2_1116 = sext i32 %var_2_1114 to i64
; %var_2_413 = sext i32 %var_2_411 to i64
; Matched:%var_2_1117:  %var_2_1117 = mul nsw i64 %var_2_1116, %var_2_1115
; %var_2_414 = mul nsw i64 %var_2_413, %var_2_412
; Matched:%var_2_1118:  %var_2_1118 = trunc i64 %var_2_1117 to i32
; %var_2_415 = trunc i64 %var_2_414 to i32
; Matched:%var_2_1119:  %var_2_1119 = and i64 %var_2_1117, 4294967295
; %var_2_416 = and i64 %var_2_414, 4294967295
; Matched:\<badref\>:  store i64 %var_2_1119, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_416, i64* %RAX.i798, align 8
; Matched:%var_2_1120:  %var_2_1120 = shl i64 %var_2_1117, 32
; %var_2_417 = shl i64 %var_2_414, 32
; Matched:%var_2_1121:  %var_2_1121 = ashr exact i64 %var_2_1120, 32
; %var_2_418 = ashr exact i64 %var_2_417, 32
; Matched:%var_2_1122:  %var_2_1122 = icmp ne i64 %var_2_1121, %var_2_1117
; %var_2_419 = icmp ne i64 %var_2_418, %var_2_414
; Matched:%var_2_1123:  %var_2_1123 = zext i1 %var_2_1122 to i8
; %var_2_420 = zext i1 %var_2_419 to i8
; Matched:\<badref\>:  store i8 %var_2_1123, i8* %var_2_17, align 1, !tbaa !1265
; store i8 %var_2_420, i8* %var_2_14, align 1
; Matched:%var_2_1124:  %var_2_1124 = and i32 %var_2_1118, 255
; %var_2_421 = and i32 %var_2_415, 255
; Matched:%var_2_1125:  %var_2_1125 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1124) #14
; %var_2_422 = tail call i32 @llvm.ctpop.i32(i32 %var_2_421)
; Matched:%var_2_1126:  %var_2_1126 = trunc i32 %var_2_1125 to i8
; %var_2_423 = trunc i32 %var_2_422 to i8
; Matched:%var_2_1127:  %var_2_1127 = and i8 %var_2_1126, 1
; %var_2_424 = and i8 %var_2_423, 1
; Matched:%var_2_1128:  %var_2_1128 = xor i8 %var_2_1127, 1
; %var_2_425 = xor i8 %var_2_424, 1
; Matched:\<badref\>:  store i8 %var_2_1128, i8* %var_2_24, align 1, !tbaa !1279
; store i8 %var_2_425, i8* %var_2_21, align 1
store i8 0, i8* %var_2_26, align 1
store i8 0, i8* %var_2_29, align 1
; Matched:%var_2_1129:  %var_2_1129 = lshr i32 %var_2_1118, 31
; %var_2_426 = lshr i32 %var_2_415, 31
; Matched:%var_2_1130:  %var_2_1130 = trunc i32 %var_2_1129 to i8
; %var_2_427 = trunc i32 %var_2_426 to i8
; Matched:\<badref\>:  store i8 %var_2_1130, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_427, i8* %var_2_32, align 1
; Matched:\<badref\>:  store i8 %var_2_1123, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_420, i8* %var_2_38, align 1
; Matched:%var_2_1131:  %var_2_1131 = add i64 %var_2_1104, -56
; %var_2_428 = add i64 %var_2_401, -56
; Matched:%var_2_1132:  %var_2_1132 = trunc i64 %var_2_1117 to i32
; %var_2_429 = trunc i64 %var_2_414 to i32
; Matched:%var_2_1133:  %var_2_1133 = add i64 %var_2_1106, 10
; %var_2_430 = add i64 %var_2_403, 10
; Matched:\<badref\>:  store i64 %var_2_1102, i64* %PC, align 8
; store i64 %var_2_430, i64* %var_2_3, align 8
; Matched:%var_2_1134:  %var_2_1134 = inttoptr i64 %var_2_1131 to i32*
; %var_2_431 = inttoptr i64 %var_2_428 to i32*
; Matched:\<badref\>:  store i32 %var_2_1132, i32* %var_2_1134, align 4
; store i32 %var_2_429, i32* %var_2_431, align 4
%var_2_432 = load i64, i64* %RBP.i, align 8
%var_2_433 = add i64 %var_2_432, -40
%var_2_434 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1364:  %var_2_1364 = add i64 %var_2_1359, 7
; %var_2_435 = add i64 %var_2_434, 7
; Matched:\<badref\>:  store i64 %var_2_1364, i64* %PC, align 8
; store i64 %var_2_435, i64* %var_2_3, align 8
%var_2_436 = inttoptr i64 %var_2_433 to i32*
store i32 1, i32* %var_2_436, align 4
%var_2_437 = load i64, i64* %RBP.i, align 8
%var_2_438 = add i64 %var_2_437, -32
%var_2_439 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1081:  %var_2_1081 = add i64 %var_2_1075, 7
; %var_2_440 = add i64 %var_2_439, 7
; Matched:\<badref\>:  store i64 %var_2_1081, i64* %PC, align 8
; store i64 %var_2_440, i64* %var_2_3, align 8
%var_2_441 = inttoptr i64 %var_2_438 to i32*
store i32 1, i32* %var_2_441, align 4
%.pre44 = load i64, i64* %var_2_3, align 8
  br label %block_.L_400c2f

block_.L_400c2f:                                  ; preds = %block_400d71, %routine_idivl__esi.exit
%var_2_442 = phi i64 [ %var_2_1177, %block_400d71 ], [ %.pre44, %routine_idivl__esi.exit ]
%var_2_443 = load i64, i64* %RBP.i, align 8
%var_2_444 = add i64 %var_2_443, -32
; Matched:%var_2_1691:  %var_2_1691 = add i64 %var_2_1688, 3
; %var_2_445 = add i64 %var_2_442, 3
; Matched:\<badref\>:  store i64 %var_2_1691, i64* %PC, align 8
; store i64 %var_2_445, i64* %var_2_3, align 8
%var_2_446 = inttoptr i64 %var_2_444 to i32*
%var_2_447 = load i32, i32* %var_2_446, align 4
; Matched:%var_2_1694:  %var_2_1694 = zext i32 %var_2_1693 to i64
; %var_2_448 = zext i32 %var_2_447 to i64
; Matched:\<badref\>:  store i64 %var_2_1694, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_448, i64* %RAX.i798, align 8
%var_2_449 = add i64 %var_2_443, -52
; Matched:%var_2_1696:  %var_2_1696 = add i64 %var_2_1688, 6
; %var_2_450 = add i64 %var_2_442, 6
; Matched:\<badref\>:  store i64 %var_2_1696, i64* %PC, align 8
; store i64 %var_2_450, i64* %var_2_3, align 8
%var_2_451 = inttoptr i64 %var_2_449 to i32*
%var_2_452 = load i32, i32* %var_2_451, align 4
%var_2_453 = sub i32 %var_2_447, %var_2_452
; Matched:%var_2_1700:  %var_2_1700 = icmp ult i32 %var_2_1693, %var_2_1698
; %var_2_454 = icmp ult i32 %var_2_447, %var_2_452
; Matched:%var_2_1701:  %var_2_1701 = zext i1 %var_2_1700 to i8
; %var_2_455 = zext i1 %var_2_454 to i8
; Matched:\<badref\>:  store i8 %var_2_1701, i8* %var_2_17, align 1, !tbaa !1265
; store i8 %var_2_455, i8* %var_2_14, align 1
; Matched:%var_2_1702:  %var_2_1702 = and i32 %var_2_1699, 255
; %var_2_456 = and i32 %var_2_453, 255
; Matched:%var_2_1703:  %var_2_1703 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1702) #14
; %var_2_457 = tail call i32 @llvm.ctpop.i32(i32 %var_2_456)
; Matched:%var_2_1704:  %var_2_1704 = trunc i32 %var_2_1703 to i8
; %var_2_458 = trunc i32 %var_2_457 to i8
; Matched:%var_2_1705:  %var_2_1705 = and i8 %var_2_1704, 1
; %var_2_459 = and i8 %var_2_458, 1
; Matched:%var_2_1706:  %var_2_1706 = xor i8 %var_2_1705, 1
; %var_2_460 = xor i8 %var_2_459, 1
; Matched:\<badref\>:  store i8 %var_2_1706, i8* %var_2_24, align 1, !tbaa !1279
; store i8 %var_2_460, i8* %var_2_21, align 1
; Matched:%var_2_1707:  %var_2_1707 = xor i32 %var_2_1698, %var_2_1693
; %var_2_461 = xor i32 %var_2_452, %var_2_447
; Matched:%var_2_1708:  %var_2_1708 = xor i32 %var_2_1707, %var_2_1699
; %var_2_462 = xor i32 %var_2_461, %var_2_453
; Matched:%var_2_1709:  %var_2_1709 = lshr i32 %var_2_1708, 4
; %var_2_463 = lshr i32 %var_2_462, 4
; Matched:%var_2_1710:  %var_2_1710 = trunc i32 %var_2_1709 to i8
; %var_2_464 = trunc i32 %var_2_463 to i8
; Matched:%var_2_1711:  %var_2_1711 = and i8 %var_2_1710, 1
; %var_2_465 = and i8 %var_2_464, 1
; Matched:\<badref\>:  store i8 %var_2_1711, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_465, i8* %var_2_26, align 1
%var_2_466 = icmp eq i32 %var_2_453, 0
; Matched:%var_2_1713:  %var_2_1713 = zext i1 %var_2_1712 to i8
; %var_2_467 = zext i1 %var_2_466 to i8
; Matched:\<badref\>:  store i8 %var_2_1713, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_467, i8* %var_2_29, align 1
%var_2_468 = lshr i32 %var_2_453, 31
%var_2_469 = trunc i32 %var_2_468 to i8
; Matched:\<badref\>:  store i8 %var_2_1715, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_469, i8* %var_2_32, align 1
%var_2_470 = lshr i32 %var_2_447, 31
%var_2_471 = lshr i32 %var_2_452, 31
%var_2_472 = xor i32 %var_2_471, %var_2_470
%var_2_473 = xor i32 %var_2_468, %var_2_470
%var_2_474 = add nuw nsw i32 %var_2_473, %var_2_472
%var_2_475 = icmp eq i32 %var_2_474, 2
; Matched:%var_2_1722:  %var_2_1722 = zext i1 %var_2_1721 to i8
; %var_2_476 = zext i1 %var_2_475 to i8
; Matched:\<badref\>:  store i8 %var_2_1722, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_476, i8* %var_2_38, align 1
%var_2_477 = icmp ne i8 %var_2_469, 0
%var_2_478 = xor i1 %var_2_477, %var_2_475
%.demorgan59 = or i1 %var_2_466, %var_2_478
  %.v70 = select i1 %.demorgan59, i64 12, i64 375
%var_2_479 = add i64 %var_2_442, %.v70
; Matched:\<badref\>:  store i64 %var_2_1725, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_479, i64* %var_2_3, align 8
  br i1 %.demorgan59, label %block_400c3b, label %block_.L_400da6

block_400c3b:                                     ; preds = %block_.L_400c2f
; Matched:%var_2_956:  %var_2_956 = add i64 %var_2_1725, 3
; %var_2_480 = add i64 %var_2_479, 3
; Matched:\<badref\>:  store i64 %var_2_956, i64* %PC, align 8
; store i64 %var_2_480, i64* %var_2_3, align 8
%var_2_481 = load i32, i32* %var_2_446, align 4
; Matched:%var_2_874:  %var_2_874 = zext i32 %var_2_873 to i64
; %var_2_482 = zext i32 %var_2_481 to i64
; Matched:\<badref\>:  store i64 %var_2_874, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_482, i64* %RAX.i798, align 8
%var_2_483 = add i64 %var_2_443, -40
; Matched:%var_2_1582:  %var_2_1582 = add i64 %var_2_1725, 6
; %var_2_484 = add i64 %var_2_479, 6
; Matched:\<badref\>:  store i64 %var_2_961, i64* %PC, align 8
; store i64 %var_2_484, i64* %var_2_3, align 8
%var_2_485 = inttoptr i64 %var_2_483 to i32*
%var_2_486 = load i32, i32* %var_2_485, align 4
%var_2_487 = sub i32 %var_2_481, %var_2_486
; Matched:%var_2_1586:  %var_2_1586 = icmp ult i32 %var_2_1579, %var_2_1584
; %var_2_488 = icmp ult i32 %var_2_481, %var_2_486
; Matched:%var_2_1587:  %var_2_1587 = zext i1 %var_2_1586 to i8
; %var_2_489 = zext i1 %var_2_488 to i8
; Matched:\<badref\>:  store i8 %var_2_1587, i8* %var_2_17, align 1, !tbaa !1265
; store i8 %var_2_489, i8* %var_2_14, align 1
; Matched:%var_2_1588:  %var_2_1588 = and i32 %var_2_1585, 255
; %var_2_490 = and i32 %var_2_487, 255
; Matched:%var_2_1589:  %var_2_1589 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1588) #14
; %var_2_491 = tail call i32 @llvm.ctpop.i32(i32 %var_2_490)
; Matched:%var_2_1590:  %var_2_1590 = trunc i32 %var_2_1589 to i8
; %var_2_492 = trunc i32 %var_2_491 to i8
; Matched:%var_2_1591:  %var_2_1591 = and i8 %var_2_1590, 1
; %var_2_493 = and i8 %var_2_492, 1
; Matched:%var_2_1592:  %var_2_1592 = xor i8 %var_2_1591, 1
; %var_2_494 = xor i8 %var_2_493, 1
; Matched:\<badref\>:  store i8 %var_2_1592, i8* %var_2_24, align 1, !tbaa !1279
; store i8 %var_2_494, i8* %var_2_21, align 1
; Matched:%var_2_1593:  %var_2_1593 = xor i32 %var_2_1584, %var_2_1579
; %var_2_495 = xor i32 %var_2_486, %var_2_481
; Matched:%var_2_1594:  %var_2_1594 = xor i32 %var_2_1593, %var_2_1585
; %var_2_496 = xor i32 %var_2_495, %var_2_487
; Matched:%var_2_1595:  %var_2_1595 = lshr i32 %var_2_1594, 4
; %var_2_497 = lshr i32 %var_2_496, 4
; Matched:%var_2_1596:  %var_2_1596 = trunc i32 %var_2_1595 to i8
; %var_2_498 = trunc i32 %var_2_497 to i8
; Matched:%var_2_1597:  %var_2_1597 = and i8 %var_2_1596, 1
; %var_2_499 = and i8 %var_2_498, 1
; Matched:\<badref\>:  store i8 %var_2_1597, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_499, i8* %var_2_26, align 1
; Matched:%var_2_1598:  %var_2_1598 = icmp eq i32 %var_2_1585, 0
; %var_2_500 = icmp eq i32 %var_2_487, 0
; Matched:%var_2_1599:  %var_2_1599 = zext i1 %var_2_1598 to i8
; %var_2_501 = zext i1 %var_2_500 to i8
; Matched:\<badref\>:  store i8 %var_2_1599, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_501, i8* %var_2_29, align 1
%var_2_502 = lshr i32 %var_2_487, 31
%var_2_503 = trunc i32 %var_2_502 to i8
; Matched:\<badref\>:  store i8 %var_2_1601, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_503, i8* %var_2_32, align 1
%var_2_504 = lshr i32 %var_2_481, 31
%var_2_505 = lshr i32 %var_2_486, 31
%var_2_506 = xor i32 %var_2_505, %var_2_504
%var_2_507 = xor i32 %var_2_502, %var_2_504
%var_2_508 = add nuw nsw i32 %var_2_507, %var_2_506
%var_2_509 = icmp eq i32 %var_2_508, 2
; Matched:%var_2_1608:  %var_2_1608 = zext i1 %var_2_1607 to i8
; %var_2_510 = zext i1 %var_2_509 to i8
; Matched:\<badref\>:  store i8 %var_2_1608, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_510, i8* %var_2_38, align 1
%var_2_511 = icmp ne i8 %var_2_503, 0
%var_2_512 = xor i1 %var_2_511, %var_2_509
%.v74 = select i1 %var_2_512, i64 12, i64 250
%var_2_513 = add i64 %var_2_479, %.v74
; Matched:\<badref\>:  store i64 %var_2_1611, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_513, i64* %var_2_3, align 8
br i1 %var_2_512, label %block_400c47, label %block_.L_400d35

block_400c47:                                     ; preds = %block_400c3b
; Matched:%var_2_1946:  %var_2_1946 = add i64 %var_2_1611, 3
; %var_2_514 = add i64 %var_2_513, 3
; Matched:\<badref\>:  store i64 %var_2_1946, i64* %PC, align 8
; store i64 %var_2_514, i64* %var_2_3, align 8
; Matched:%var_2_1693:  %var_2_1693 = load i32, i32* %var_2_1692, align 4
; %var_2_515 = load i32, i32* %var_2_446, align 4
; Matched:%var_2_1147:  %var_2_1147 = zext i32 %var_2_1146 to i64
; %var_2_516 = zext i32 %var_2_515 to i64
; Matched:\<badref\>:  store i64 %var_2_1147, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_516, i64* %RAX.i798, align 8
; Matched:%var_2_1949:  %var_2_1949 = add i64 %var_2_1689, -28
; %var_2_517 = add i64 %var_2_443, -28
; Matched:%var_2_1950:  %var_2_1950 = add i64 %var_2_1611, 6
; %var_2_518 = add i64 %var_2_513, 6
; Matched:\<badref\>:  store i64 %var_2_1950, i64* %PC, align 8
; store i64 %var_2_518, i64* %var_2_3, align 8
; Matched:%var_2_1951:  %var_2_1951 = inttoptr i64 %var_2_1949 to i32*
; %var_2_519 = inttoptr i64 %var_2_517 to i32*
; Matched:\<badref\>:  store i32 %var_2_1947, i32* %var_2_1951, align 4
; store i32 %var_2_515, i32* %var_2_519, align 4
%.pre45 = load i64, i64* %var_2_3, align 8
  br label %block_.L_400c4d

block_.L_400c4d:                                  ; preds = %block_.L_400d1d, %block_400c47
%var_2_520 = phi i64 [ %var_2_969, %block_.L_400d1d ], [ %.pre45, %block_400c47 ]
%var_2_521 = load i64, i64* %RBP.i, align 8
%var_2_522 = add i64 %var_2_521, -28
; Matched:%var_2_751:  %var_2_751 = add i64 %var_2_748, 3
; %var_2_523 = add i64 %var_2_520, 3
; Matched:\<badref\>:  store i64 %var_2_751, i64* %PC, align 8
; store i64 %var_2_523, i64* %var_2_3, align 8
%var_2_524 = inttoptr i64 %var_2_522 to i32*
%var_2_525 = load i32, i32* %var_2_524, align 4
; Matched:%var_2_1732:  %var_2_1732 = zext i32 %var_2_1731 to i64
; %var_2_526 = zext i32 %var_2_525 to i64
; Matched:\<badref\>:  store i64 %var_2_1732, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_526, i64* %RAX.i798, align 8
%var_2_527 = add i64 %var_2_521, -32
; Matched:%var_2_756:  %var_2_756 = add i64 %var_2_748, 6
; %var_2_528 = add i64 %var_2_520, 6
; Matched:\<badref\>:  store i64 %var_2_756, i64* %PC, align 8
; store i64 %var_2_528, i64* %var_2_3, align 8
%var_2_529 = inttoptr i64 %var_2_527 to i32*
%var_2_530 = load i32, i32* %var_2_529, align 4
; Matched:%var_2_759:  %var_2_759 = zext i32 %var_2_758 to i64
; %var_2_531 = zext i32 %var_2_530 to i64
; Matched:\<badref\>:  store i64 %var_2_759, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_531, i64* %RCX.i788, align 8
%var_2_532 = add i64 %var_2_521, -48
; Matched:%var_2_761:  %var_2_761 = add i64 %var_2_748, 9
; %var_2_533 = add i64 %var_2_520, 9
; Matched:\<badref\>:  store i64 %var_2_761, i64* %PC, align 8
; store i64 %var_2_533, i64* %var_2_3, align 8
%var_2_534 = inttoptr i64 %var_2_532 to i32*
%var_2_535 = load i32, i32* %var_2_534, align 4
%var_2_536 = add i32 %var_2_535, %var_2_530
%var_2_537 = add i32 %var_2_536, -2
; Matched:%var_2_766:  %var_2_766 = zext i32 %var_2_765 to i64
; %var_2_538 = zext i32 %var_2_537 to i64
; Matched:\<badref\>:  store i64 %var_2_766, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_538, i64* %RCX.i788, align 8
%var_2_539 = lshr i32 %var_2_537, 31
%var_2_540 = sub i32 %var_2_525, %var_2_537
; Matched:%var_2_769:  %var_2_769 = icmp ult i32 %var_2_753, %var_2_765
; %var_2_541 = icmp ult i32 %var_2_525, %var_2_537
; Matched:%var_2_770:  %var_2_770 = zext i1 %var_2_769 to i8
; %var_2_542 = zext i1 %var_2_541 to i8
; Matched:\<badref\>:  store i8 %var_2_770, i8* %var_2_17, align 1, !tbaa !1265
; store i8 %var_2_542, i8* %var_2_14, align 1
; Matched:%var_2_771:  %var_2_771 = and i32 %var_2_768, 255
; %var_2_543 = and i32 %var_2_540, 255
; Matched:%var_2_772:  %var_2_772 = tail call i32 @llvm.ctpop.i32(i32 %var_2_771) #14
; %var_2_544 = tail call i32 @llvm.ctpop.i32(i32 %var_2_543)
; Matched:%var_2_773:  %var_2_773 = trunc i32 %var_2_772 to i8
; %var_2_545 = trunc i32 %var_2_544 to i8
; Matched:%var_2_774:  %var_2_774 = and i8 %var_2_773, 1
; %var_2_546 = and i8 %var_2_545, 1
; Matched:%var_2_775:  %var_2_775 = xor i8 %var_2_774, 1
; %var_2_547 = xor i8 %var_2_546, 1
; Matched:\<badref\>:  store i8 %var_2_775, i8* %var_2_24, align 1, !tbaa !1279
; store i8 %var_2_547, i8* %var_2_21, align 1
; Matched:%var_2_776:  %var_2_776 = xor i32 %var_2_765, %var_2_753
; %var_2_548 = xor i32 %var_2_537, %var_2_525
; Matched:%var_2_777:  %var_2_777 = xor i32 %var_2_776, %var_2_768
; %var_2_549 = xor i32 %var_2_548, %var_2_540
; Matched:%var_2_778:  %var_2_778 = lshr i32 %var_2_777, 4
; %var_2_550 = lshr i32 %var_2_549, 4
; Matched:%var_2_779:  %var_2_779 = trunc i32 %var_2_778 to i8
; %var_2_551 = trunc i32 %var_2_550 to i8
; Matched:%var_2_780:  %var_2_780 = and i8 %var_2_779, 1
; %var_2_552 = and i8 %var_2_551, 1
; Matched:\<badref\>:  store i8 %var_2_780, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_552, i8* %var_2_26, align 1
%var_2_553 = icmp eq i32 %var_2_540, 0
; Matched:%var_2_782:  %var_2_782 = zext i1 %var_2_781 to i8
; %var_2_554 = zext i1 %var_2_553 to i8
; Matched:\<badref\>:  store i8 %var_2_782, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_554, i8* %var_2_29, align 1
%var_2_555 = lshr i32 %var_2_540, 31
%var_2_556 = trunc i32 %var_2_555 to i8
; Matched:\<badref\>:  store i8 %var_2_784, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_556, i8* %var_2_32, align 1
%var_2_557 = lshr i32 %var_2_525, 31
%var_2_558 = xor i32 %var_2_539, %var_2_557
%var_2_559 = xor i32 %var_2_555, %var_2_557
%var_2_560 = add nuw nsw i32 %var_2_559, %var_2_558
%var_2_561 = icmp eq i32 %var_2_560, 2
; Matched:%var_2_790:  %var_2_790 = zext i1 %var_2_789 to i8
; %var_2_562 = zext i1 %var_2_561 to i8
; Matched:\<badref\>:  store i8 %var_2_790, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_562, i8* %var_2_38, align 1
%var_2_563 = icmp ne i8 %var_2_556, 0
%var_2_564 = xor i1 %var_2_563, %var_2_561
%.demorgan61 = or i1 %var_2_553, %var_2_564
  %.v75 = select i1 %.demorgan61, i64 20, i64 227
%var_2_565 = add i64 %var_2_520, %.v75
; Matched:\<badref\>:  store i64 %var_2_793, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_565, i64* %var_2_3, align 8
  br i1 %.demorgan61, label %block_400c61, label %block_.L_400d30

block_400c61:                                     ; preds = %block_.L_400c4d
%var_2_566 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_547:  %var_2_547 = add i64 %var_2_546, -28
; %var_2_567 = add i64 %var_2_566, -28
; Matched:%var_2_548:  %var_2_548 = add i64 %var_2_793, 3
; %var_2_568 = add i64 %var_2_565, 3
; Matched:\<badref\>:  store i64 %var_2_548, i64* %PC, align 8
; store i64 %var_2_568, i64* %var_2_3, align 8
; Matched:%var_2_549:  %var_2_549 = inttoptr i64 %var_2_547 to i32*
; %var_2_569 = inttoptr i64 %var_2_567 to i32*
; Matched:%var_2_909:  %var_2_909 = load i32, i32* %var_2_908, align 4
; %var_2_570 = load i32, i32* %var_2_569, align 4
; Matched:%var_2_551:  %var_2_551 = zext i32 %var_2_550 to i64
; %var_2_571 = zext i32 %var_2_570 to i64
; Matched:\<badref\>:  store i64 %var_2_551, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_571, i64* %RAX.i798, align 8
; Matched:%var_2_552:  %var_2_552 = add i64 %var_2_546, -36
; %var_2_572 = add i64 %var_2_566, -36
; Matched:%var_2_553:  %var_2_553 = add i64 %var_2_793, 6
; %var_2_573 = add i64 %var_2_565, 6
; Matched:\<badref\>:  store i64 %var_2_553, i64* %PC, align 8
; store i64 %var_2_573, i64* %var_2_3, align 8
; Matched:%var_2_554:  %var_2_554 = inttoptr i64 %var_2_552 to i32*
; %var_2_574 = inttoptr i64 %var_2_572 to i32*
; Matched:\<badref\>:  store i32 %var_2_550, i32* %var_2_554, align 4
; store i32 %var_2_570, i32* %var_2_574, align 4
; Matched:  %.pre100 = load i64, i64* %PC, align 8
; %.pre46 = load i64, i64* %var_2_3, align 8
  br label %block_.L_400c67

block_.L_400c67:                                  ; preds = %block_400c73, %block_400c61
; Matched:%var_2_1773:  %var_2_1773 = phi i64 [ %.pre100, %block_400c61 ], [ %var_2_462, %block_400c73 ]
; %var_2_575 = phi i64 [ %var_2_940, %block_400c73 ], [ %.pre46, %block_400c61 ]
%var_2_576 = load i64, i64* %RBP.i, align 8
%var_2_577 = add i64 %var_2_576, -36
; Matched:%var_2_1776:  %var_2_1776 = add i64 %var_2_1773, 3
; %var_2_578 = add i64 %var_2_575, 3
; Matched:\<badref\>:  store i64 %var_2_1776, i64* %PC, align 8
; store i64 %var_2_578, i64* %var_2_3, align 8
%var_2_579 = inttoptr i64 %var_2_577 to i32*
%var_2_580 = load i32, i32* %var_2_579, align 4
; Matched:%var_2_1942:  %var_2_1942 = zext i32 %var_2_1941 to i64
; %var_2_581 = zext i32 %var_2_580 to i64
; Matched:\<badref\>:  store i64 %var_2_1942, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_581, i64* %RAX.i798, align 8
%var_2_582 = add i64 %var_2_576, -56
; Matched:%var_2_1781:  %var_2_1781 = add i64 %var_2_1773, 6
; %var_2_583 = add i64 %var_2_575, 6
; Matched:\<badref\>:  store i64 %var_2_1781, i64* %PC, align 8
; store i64 %var_2_583, i64* %var_2_3, align 8
%var_2_584 = inttoptr i64 %var_2_582 to i32*
%var_2_585 = load i32, i32* %var_2_584, align 4
%var_2_586 = sub i32 %var_2_580, %var_2_585
; Matched:%var_2_1785:  %var_2_1785 = icmp ult i32 %var_2_1778, %var_2_1783
; %var_2_587 = icmp ult i32 %var_2_580, %var_2_585
; Matched:%var_2_1786:  %var_2_1786 = zext i1 %var_2_1785 to i8
; %var_2_588 = zext i1 %var_2_587 to i8
; Matched:\<badref\>:  store i8 %var_2_1786, i8* %var_2_17, align 1, !tbaa !1265
; store i8 %var_2_588, i8* %var_2_14, align 1
; Matched:%var_2_1787:  %var_2_1787 = and i32 %var_2_1784, 255
; %var_2_589 = and i32 %var_2_586, 255
; Matched:%var_2_1788:  %var_2_1788 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1787) #14
; %var_2_590 = tail call i32 @llvm.ctpop.i32(i32 %var_2_589)
; Matched:%var_2_1789:  %var_2_1789 = trunc i32 %var_2_1788 to i8
; %var_2_591 = trunc i32 %var_2_590 to i8
; Matched:%var_2_1790:  %var_2_1790 = and i8 %var_2_1789, 1
; %var_2_592 = and i8 %var_2_591, 1
; Matched:%var_2_1791:  %var_2_1791 = xor i8 %var_2_1790, 1
; %var_2_593 = xor i8 %var_2_592, 1
; Matched:\<badref\>:  store i8 %var_2_1791, i8* %var_2_24, align 1, !tbaa !1279
; store i8 %var_2_593, i8* %var_2_21, align 1
; Matched:%var_2_1792:  %var_2_1792 = xor i32 %var_2_1783, %var_2_1778
; %var_2_594 = xor i32 %var_2_585, %var_2_580
; Matched:%var_2_1793:  %var_2_1793 = xor i32 %var_2_1792, %var_2_1784
; %var_2_595 = xor i32 %var_2_594, %var_2_586
; Matched:%var_2_1794:  %var_2_1794 = lshr i32 %var_2_1793, 4
; %var_2_596 = lshr i32 %var_2_595, 4
; Matched:%var_2_1795:  %var_2_1795 = trunc i32 %var_2_1794 to i8
; %var_2_597 = trunc i32 %var_2_596 to i8
; Matched:%var_2_1796:  %var_2_1796 = and i8 %var_2_1795, 1
; %var_2_598 = and i8 %var_2_597, 1
; Matched:\<badref\>:  store i8 %var_2_1796, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_598, i8* %var_2_26, align 1
%var_2_599 = icmp eq i32 %var_2_586, 0
; Matched:%var_2_1798:  %var_2_1798 = zext i1 %var_2_1797 to i8
; %var_2_600 = zext i1 %var_2_599 to i8
; Matched:\<badref\>:  store i8 %var_2_1798, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_600, i8* %var_2_29, align 1
%var_2_601 = lshr i32 %var_2_586, 31
%var_2_602 = trunc i32 %var_2_601 to i8
; Matched:\<badref\>:  store i8 %var_2_1800, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_602, i8* %var_2_32, align 1
%var_2_603 = lshr i32 %var_2_580, 31
%var_2_604 = lshr i32 %var_2_585, 31
%var_2_605 = xor i32 %var_2_604, %var_2_603
%var_2_606 = xor i32 %var_2_601, %var_2_603
%var_2_607 = add nuw nsw i32 %var_2_606, %var_2_605
%var_2_608 = icmp eq i32 %var_2_607, 2
; Matched:%var_2_1807:  %var_2_1807 = zext i1 %var_2_1806 to i8
; %var_2_609 = zext i1 %var_2_608 to i8
; Matched:\<badref\>:  store i8 %var_2_1807, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_609, i8* %var_2_38, align 1
%var_2_610 = icmp ne i8 %var_2_602, 0
%var_2_611 = xor i1 %var_2_610, %var_2_608
%.demorgan62 = or i1 %var_2_599, %var_2_611
; Matched:  %.v117 = select i1 %.demorgan116, i64 12, i64 182
; %.v63 = select i1 %.demorgan62, i64 12, i64 182
; Matched:%var_2_1810:  %var_2_1810 = add i64 %var_2_1773, %.v117
; %var_2_612 = add i64 %var_2_575, %.v63
; Matched:\<badref\>:  store i64 %var_2_1810, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_612, i64* %var_2_3, align 8
  br i1 %.demorgan62, label %block_400c73, label %block_.L_400d1d

block_400c73:                                     ; preds = %block_.L_400c67
%var_2_613 = add i64 %var_2_576, -40
; Matched:%var_2_136:  %var_2_136 = add i64 %var_2_1810, 3
; %var_2_614 = add i64 %var_2_612, 3
; Matched:\<badref\>:  store i64 %var_2_136, i64* %PC, align 8
; store i64 %var_2_614, i64* %var_2_3, align 8
%var_2_615 = inttoptr i64 %var_2_613 to i32*
%var_2_616 = load i32, i32* %var_2_615, align 4
; Matched:%var_2_139:  %var_2_139 = zext i32 %var_2_138 to i64
; %var_2_617 = zext i32 %var_2_616 to i64
; Matched:\<badref\>:  store i64 %var_2_919, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_617, i64* %RAX.i798, align 8
; Matched:%var_2_140:  %var_2_140 = add i64 %var_2_1810, 6
; %var_2_618 = add i64 %var_2_612, 6
; Matched:\<badref\>:  store i64 %var_2_140, i64* %PC, align 8
; store i64 %var_2_618, i64* %var_2_3, align 8
; Matched:%var_2_141:  %var_2_141 = load i32, i32* %var_2_1777, align 4
; %var_2_619 = load i32, i32* %var_2_579, align 4
; Matched:%var_2_142:  %var_2_142 = add i32 %var_2_141, %var_2_138
; %var_2_620 = add i32 %var_2_619, %var_2_616
; Matched:%var_2_143:  %var_2_143 = zext i32 %var_2_142 to i64
; %var_2_621 = zext i32 %var_2_620 to i64
; Matched:\<badref\>:  store i64 %var_2_143, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_621, i64* %RAX.i798, align 8
; Matched:%var_2_144:  %var_2_144 = icmp ult i32 %var_2_142, %var_2_138
; %var_2_622 = icmp ult i32 %var_2_620, %var_2_616
; Matched:%var_2_145:  %var_2_145 = icmp ult i32 %var_2_142, %var_2_141
; %var_2_623 = icmp ult i32 %var_2_620, %var_2_619
; Matched:%var_2_146:  %var_2_146 = or i1 %var_2_144, %var_2_145
; %var_2_624 = or i1 %var_2_622, %var_2_623
; Matched:%var_2_147:  %var_2_147 = zext i1 %var_2_146 to i8
; %var_2_625 = zext i1 %var_2_624 to i8
; Matched:\<badref\>:  store i8 %var_2_147, i8* %var_2_17, align 1, !tbaa !1265
; store i8 %var_2_625, i8* %var_2_14, align 1
; Matched:%var_2_148:  %var_2_148 = and i32 %var_2_142, 255
; %var_2_626 = and i32 %var_2_620, 255
; Matched:%var_2_149:  %var_2_149 = tail call i32 @llvm.ctpop.i32(i32 %var_2_148) #14
; %var_2_627 = tail call i32 @llvm.ctpop.i32(i32 %var_2_626)
; Matched:%var_2_150:  %var_2_150 = trunc i32 %var_2_149 to i8
; %var_2_628 = trunc i32 %var_2_627 to i8
; Matched:%var_2_151:  %var_2_151 = and i8 %var_2_150, 1
; %var_2_629 = and i8 %var_2_628, 1
; Matched:%var_2_152:  %var_2_152 = xor i8 %var_2_151, 1
; %var_2_630 = xor i8 %var_2_629, 1
; Matched:\<badref\>:  store i8 %var_2_152, i8* %var_2_24, align 1, !tbaa !1279
; store i8 %var_2_630, i8* %var_2_21, align 1
; Matched:%var_2_153:  %var_2_153 = xor i32 %var_2_141, %var_2_138
; %var_2_631 = xor i32 %var_2_619, %var_2_616
; Matched:%var_2_154:  %var_2_154 = xor i32 %var_2_153, %var_2_142
; %var_2_632 = xor i32 %var_2_631, %var_2_620
; Matched:%var_2_155:  %var_2_155 = lshr i32 %var_2_154, 4
; %var_2_633 = lshr i32 %var_2_632, 4
; Matched:%var_2_156:  %var_2_156 = trunc i32 %var_2_155 to i8
; %var_2_634 = trunc i32 %var_2_633 to i8
; Matched:%var_2_157:  %var_2_157 = and i8 %var_2_156, 1
; %var_2_635 = and i8 %var_2_634, 1
; Matched:\<badref\>:  store i8 %var_2_157, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_635, i8* %var_2_26, align 1
; Matched:%var_2_158:  %var_2_158 = icmp eq i32 %var_2_142, 0
; %var_2_636 = icmp eq i32 %var_2_620, 0
; Matched:%var_2_159:  %var_2_159 = zext i1 %var_2_158 to i8
; %var_2_637 = zext i1 %var_2_636 to i8
; Matched:\<badref\>:  store i8 %var_2_159, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_637, i8* %var_2_29, align 1
; Matched:%var_2_160:  %var_2_160 = lshr i32 %var_2_142, 31
; %var_2_638 = lshr i32 %var_2_620, 31
; Matched:%var_2_161:  %var_2_161 = trunc i32 %var_2_160 to i8
; %var_2_639 = trunc i32 %var_2_638 to i8
; Matched:\<badref\>:  store i8 %var_2_161, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_639, i8* %var_2_32, align 1
; Matched:%var_2_162:  %var_2_162 = lshr i32 %var_2_138, 31
; %var_2_640 = lshr i32 %var_2_616, 31
; Matched:%var_2_163:  %var_2_163 = lshr i32 %var_2_141, 31
; %var_2_641 = lshr i32 %var_2_619, 31
; Matched:%var_2_164:  %var_2_164 = xor i32 %var_2_160, %var_2_162
; %var_2_642 = xor i32 %var_2_638, %var_2_640
; Matched:%var_2_165:  %var_2_165 = xor i32 %var_2_160, %var_2_163
; %var_2_643 = xor i32 %var_2_638, %var_2_641
; Matched:%var_2_166:  %var_2_166 = add nuw nsw i32 %var_2_164, %var_2_165
; %var_2_644 = add nuw nsw i32 %var_2_642, %var_2_643
; Matched:%var_2_167:  %var_2_167 = icmp eq i32 %var_2_166, 2
; %var_2_645 = icmp eq i32 %var_2_644, 2
; Matched:%var_2_168:  %var_2_168 = zext i1 %var_2_167 to i8
; %var_2_646 = zext i1 %var_2_645 to i8
; Matched:\<badref\>:  store i8 %var_2_168, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_646, i8* %var_2_38, align 1
; Matched:%var_2_169:  %var_2_169 = add i64 %var_2_1774, -32
; %var_2_647 = add i64 %var_2_576, -32
; Matched:%var_2_170:  %var_2_170 = add i64 %var_2_1810, 9
; %var_2_648 = add i64 %var_2_612, 9
; Matched:\<badref\>:  store i64 %var_2_170, i64* %PC, align 8
; store i64 %var_2_648, i64* %var_2_3, align 8
; Matched:%var_2_171:  %var_2_171 = inttoptr i64 %var_2_169 to i32*
; %var_2_649 = inttoptr i64 %var_2_647 to i32*
; Matched:%var_2_172:  %var_2_172 = load i32, i32* %var_2_171, align 4
; %var_2_650 = load i32, i32* %var_2_649, align 4
; Matched:%var_2_173:  %var_2_173 = sub i32 %var_2_142, %var_2_172
; %var_2_651 = sub i32 %var_2_620, %var_2_650
; Matched:%var_2_174:  %var_2_174 = zext i32 %var_2_173 to i64
; %var_2_652 = zext i32 %var_2_651 to i64
; Matched:\<badref\>:  store i64 %var_2_174, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_652, i64* %RAX.i798, align 8
; Matched:%var_2_175:  %var_2_175 = icmp ult i32 %var_2_142, %var_2_172
; %var_2_653 = icmp ult i32 %var_2_620, %var_2_650
; Matched:%var_2_176:  %var_2_176 = zext i1 %var_2_175 to i8
; %var_2_654 = zext i1 %var_2_653 to i8
; Matched:\<badref\>:  store i8 %var_2_176, i8* %var_2_17, align 1, !tbaa !1265
; store i8 %var_2_654, i8* %var_2_14, align 1
; Matched:%var_2_177:  %var_2_177 = and i32 %var_2_173, 255
; %var_2_655 = and i32 %var_2_651, 255
; Matched:%var_2_178:  %var_2_178 = tail call i32 @llvm.ctpop.i32(i32 %var_2_177) #14
; %var_2_656 = tail call i32 @llvm.ctpop.i32(i32 %var_2_655)
; Matched:%var_2_179:  %var_2_179 = trunc i32 %var_2_178 to i8
; %var_2_657 = trunc i32 %var_2_656 to i8
; Matched:%var_2_180:  %var_2_180 = and i8 %var_2_179, 1
; %var_2_658 = and i8 %var_2_657, 1
; Matched:%var_2_181:  %var_2_181 = xor i8 %var_2_180, 1
; %var_2_659 = xor i8 %var_2_658, 1
; Matched:\<badref\>:  store i8 %var_2_181, i8* %var_2_24, align 1, !tbaa !1279
; store i8 %var_2_659, i8* %var_2_21, align 1
; Matched:%var_2_182:  %var_2_182 = xor i32 %var_2_172, %var_2_142
; %var_2_660 = xor i32 %var_2_650, %var_2_620
; Matched:%var_2_183:  %var_2_183 = xor i32 %var_2_182, %var_2_173
; %var_2_661 = xor i32 %var_2_660, %var_2_651
; Matched:%var_2_184:  %var_2_184 = lshr i32 %var_2_183, 4
; %var_2_662 = lshr i32 %var_2_661, 4
; Matched:%var_2_185:  %var_2_185 = trunc i32 %var_2_184 to i8
; %var_2_663 = trunc i32 %var_2_662 to i8
; Matched:%var_2_186:  %var_2_186 = and i8 %var_2_185, 1
; %var_2_664 = and i8 %var_2_663, 1
; Matched:\<badref\>:  store i8 %var_2_186, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_664, i8* %var_2_26, align 1
; Matched:%var_2_187:  %var_2_187 = icmp eq i32 %var_2_173, 0
; %var_2_665 = icmp eq i32 %var_2_651, 0
; Matched:%var_2_188:  %var_2_188 = zext i1 %var_2_187 to i8
; %var_2_666 = zext i1 %var_2_665 to i8
; Matched:\<badref\>:  store i8 %var_2_188, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_666, i8* %var_2_29, align 1
; Matched:%var_2_189:  %var_2_189 = lshr i32 %var_2_173, 31
; %var_2_667 = lshr i32 %var_2_651, 31
; Matched:%var_2_190:  %var_2_190 = trunc i32 %var_2_189 to i8
; %var_2_668 = trunc i32 %var_2_667 to i8
; Matched:\<badref\>:  store i8 %var_2_190, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_668, i8* %var_2_32, align 1
; Matched:%var_2_191:  %var_2_191 = lshr i32 %var_2_172, 31
; %var_2_669 = lshr i32 %var_2_650, 31
; Matched:%var_2_192:  %var_2_192 = xor i32 %var_2_191, %var_2_160
; %var_2_670 = xor i32 %var_2_669, %var_2_638
; Matched:%var_2_193:  %var_2_193 = xor i32 %var_2_189, %var_2_160
; %var_2_671 = xor i32 %var_2_667, %var_2_638
; Matched:%var_2_194:  %var_2_194 = add nuw nsw i32 %var_2_193, %var_2_192
; %var_2_672 = add nuw nsw i32 %var_2_671, %var_2_670
; Matched:%var_2_195:  %var_2_195 = icmp eq i32 %var_2_194, 2
; %var_2_673 = icmp eq i32 %var_2_672, 2
; Matched:%var_2_196:  %var_2_196 = zext i1 %var_2_195 to i8
; %var_2_674 = zext i1 %var_2_673 to i8
; Matched:\<badref\>:  store i8 %var_2_196, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_674, i8* %var_2_38, align 1
; Matched:%var_2_197:  %var_2_197 = add i64 %var_2_1774, -44
; %var_2_675 = add i64 %var_2_576, -44
; Matched:%var_2_198:  %var_2_198 = add i64 %var_2_1810, 12
; %var_2_676 = add i64 %var_2_612, 12
; Matched:\<badref\>:  store i64 %var_2_198, i64* %PC, align 8
; store i64 %var_2_676, i64* %var_2_3, align 8
; Matched:%var_2_199:  %var_2_199 = inttoptr i64 %var_2_197 to i32*
; %var_2_677 = inttoptr i64 %var_2_675 to i32*
; Matched:\<badref\>:  store i32 %var_2_173, i32* %var_2_199, align 4
; store i32 %var_2_651, i32* %var_2_677, align 4
%var_2_678 = load i64, i64* %RBP.i, align 8
%var_2_679 = add i64 %var_2_678, -8
%var_2_680 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_222:  %var_2_222 = add i64 %var_2_221, 4
; %var_2_681 = add i64 %var_2_680, 4
; Matched:\<badref\>:  store i64 %var_2_1360, i64* %PC, align 8
; store i64 %var_2_681, i64* %var_2_3, align 8
%var_2_682 = inttoptr i64 %var_2_679 to i64*
%var_2_683 = load i64, i64* %var_2_682, align 8
; Matched:\<badref\>:  store i64 %var_2_1201, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_683, i64* %RCX.i788, align 8
%var_2_684 = add i64 %var_2_678, -36
%var_2_685 = add i64 %var_2_680, 8
store i64 %var_2_685, i64* %var_2_3, align 8
%var_2_686 = inttoptr i64 %var_2_684 to i32*
%var_2_687 = load i32, i32* %var_2_686, align 4
%var_2_688 = sext i32 %var_2_687 to i64
; Matched:\<badref\>:  store i64 %var_2_210, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_688, i64* %RDX.i786, align 8
%var_2_689 = shl nsw i64 %var_2_688, 3
%var_2_690 = add i64 %var_2_689, %var_2_683
; Matched:%var_2_1337:  %var_2_1337 = add i64 %var_2_1326, 13
; %var_2_691 = add i64 %var_2_680, 13
; Matched:\<badref\>:  store i64 %var_2_1337, i64* %PC, align 8
; store i64 %var_2_691, i64* %var_2_3, align 8
%var_2_692 = inttoptr i64 %var_2_690 to i64*
%var_2_693 = load i64, i64* %var_2_692, align 8
store i64 %var_2_693, i64* %var_2_193, align 1
store double 0.000000e+00, double* %var_2_195, align 1
; Matched:%var_2_216:  %var_2_216 = add i64 %var_2_200, -112
; %var_2_694 = add i64 %var_2_678, -112
; Matched:%var_2_263:  %var_2_263 = add i64 %var_2_248, 18
; %var_2_695 = add i64 %var_2_680, 18
; Matched:\<badref\>:  store i64 %var_2_263, i64* %PC, align 8
; store i64 %var_2_695, i64* %var_2_3, align 8
; Matched:%var_2_218:  %var_2_218 = inttoptr i64 %var_2_216 to i64*
; %var_2_696 = inttoptr i64 %var_2_694 to i64*
; Matched:\<badref\>:  store i64 %var_2_215, i64* %var_2_218, align 8
; store i64 %var_2_693, i64* %var_2_696, align 8
%var_2_697 = load i64, i64* %RBP.i, align 8
%var_2_698 = add i64 %var_2_697, -8
%var_2_699 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_310:  %var_2_310 = add i64 %var_2_309, 4
; %var_2_700 = add i64 %var_2_699, 4
; Matched:\<badref\>:  store i64 %var_2_310, i64* %PC, align 8
; store i64 %var_2_700, i64* %var_2_3, align 8
%var_2_701 = inttoptr i64 %var_2_698 to i64*
%var_2_702 = load i64, i64* %var_2_701, align 8
; Matched:\<badref\>:  store i64 %var_2_205, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_702, i64* %RCX.i788, align 8
%var_2_703 = add i64 %var_2_697, -44
%var_2_704 = add i64 %var_2_699, 8
store i64 %var_2_704, i64* %var_2_3, align 8
%var_2_705 = inttoptr i64 %var_2_703 to i32*
%var_2_706 = load i32, i32* %var_2_705, align 4
%var_2_707 = sext i32 %var_2_706 to i64
; Matched:\<badref\>:  store i64 %var_2_229, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_707, i64* %RDX.i786, align 8
%var_2_708 = shl nsw i64 %var_2_707, 3
%var_2_709 = add i64 %var_2_708, %var_2_702
; Matched:%var_2_1447:  %var_2_1447 = add i64 %var_2_1438, 13
; %var_2_710 = add i64 %var_2_699, 13
; Matched:\<badref\>:  store i64 %var_2_1447, i64* %PC, align 8
; store i64 %var_2_710, i64* %var_2_3, align 8
%var_2_711 = inttoptr i64 %var_2_709 to i64*
%var_2_712 = load i64, i64* %var_2_711, align 8
store i64 %var_2_712, i64* %var_2_193, align 1
store double 0.000000e+00, double* %var_2_195, align 1
; Matched:%var_2_235:  %var_2_235 = add i64 %var_2_221, 17
; %var_2_713 = add i64 %var_2_699, 17
; Matched:\<badref\>:  store i64 %var_2_235, i64* %PC, align 8
; store i64 %var_2_713, i64* %var_2_3, align 8
; Matched:%var_2_270:  %var_2_270 = load i64, i64* %var_2_269, align 8
; %var_2_714 = load i64, i64* %var_2_701, align 8
; Matched:\<badref\>:  store i64 %var_2_270, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_714, i64* %RCX.i788, align 8
; Matched:%var_2_206:  %var_2_206 = add i64 %var_2_200, -36
; %var_2_715 = add i64 %var_2_697, -36
; Matched:%var_2_601:  %var_2_601 = add i64 %var_2_590, 21
; %var_2_716 = add i64 %var_2_699, 21
; Matched:\<badref\>:  store i64 %var_2_1209, i64* %PC, align 8
; store i64 %var_2_716, i64* %var_2_3, align 8
; Matched:%var_2_239:  %var_2_239 = inttoptr i64 %var_2_237 to i32*
; %var_2_717 = inttoptr i64 %var_2_715 to i32*
; Matched:%var_2_209:  %var_2_209 = load i32, i32* %var_2_208, align 4
; %var_2_718 = load i32, i32* %var_2_717, align 4
; Matched:%var_2_241:  %var_2_241 = sext i32 %var_2_240 to i64
; %var_2_719 = sext i32 %var_2_718 to i64
; Matched:\<badref\>:  store i64 %var_2_241, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_719, i64* %RDX.i786, align 8
; Matched:%var_2_242:  %var_2_242 = shl nsw i64 %var_2_241, 3
; %var_2_720 = shl nsw i64 %var_2_719, 3
; Matched:%var_2_243:  %var_2_243 = add i64 %var_2_242, %var_2_236
; %var_2_721 = add i64 %var_2_720, %var_2_714
; Matched:%var_2_1298:  %var_2_1298 = add i64 %var_2_1260, 26
; %var_2_722 = add i64 %var_2_699, 26
; Matched:\<badref\>:  store i64 %var_2_1349, i64* %PC, align 8
; store i64 %var_2_722, i64* %var_2_3, align 8
; Matched:%var_2_245:  %var_2_245 = inttoptr i64 %var_2_243 to i64*
; %var_2_723 = inttoptr i64 %var_2_721 to i64*
; Matched:\<badref\>:  store i64 %var_2_234, i64* %var_2_245, align 8
; store i64 %var_2_712, i64* %var_2_723, align 8
%var_2_724 = load i64, i64* %RBP.i, align 8
%var_2_725 = add i64 %var_2_724, -112
%var_2_726 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2088:  %var_2_2088 = add i64 %var_2_2087, 5
; %var_2_727 = add i64 %var_2_726, 5
; Matched:\<badref\>:  store i64 %var_2_2027, i64* %PC, align 8
; store i64 %var_2_727, i64* %var_2_3, align 8
%var_2_728 = inttoptr i64 %var_2_725 to i64*
%var_2_729 = load i64, i64* %var_2_728, align 8
store i64 %var_2_729, i64* %var_2_193, align 1
store double 0.000000e+00, double* %var_2_195, align 1
; Matched:%var_2_386:  %var_2_386 = add i64 %var_2_380, -8
; %var_2_730 = add i64 %var_2_724, -8
%var_2_731 = add i64 %var_2_726, 9
store i64 %var_2_731, i64* %var_2_3, align 8
; Matched:%var_2_388:  %var_2_388 = inttoptr i64 %var_2_386 to i64*
; %var_2_732 = inttoptr i64 %var_2_730 to i64*
; Matched:%var_2_224:  %var_2_224 = load i64, i64* %var_2_223, align 8
; %var_2_733 = load i64, i64* %var_2_732, align 8
; Matched:\<badref\>:  store i64 %var_2_224, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_733, i64* %RCX.i788, align 8
; Matched:%var_2_225:  %var_2_225 = add i64 %var_2_219, -44
; %var_2_734 = add i64 %var_2_724, -44
; Matched:%var_2_2033:  %var_2_2033 = add i64 %var_2_2026, 13
; %var_2_735 = add i64 %var_2_726, 13
; Matched:\<badref\>:  store i64 %var_2_2033, i64* %PC, align 8
; store i64 %var_2_735, i64* %var_2_3, align 8
; Matched:%var_2_258:  %var_2_258 = inttoptr i64 %var_2_256 to i32*
; %var_2_736 = inttoptr i64 %var_2_734 to i32*
; Matched:%var_2_228:  %var_2_228 = load i32, i32* %var_2_227, align 4
; %var_2_737 = load i32, i32* %var_2_736, align 4
; Matched:%var_2_260:  %var_2_260 = sext i32 %var_2_259 to i64
; %var_2_738 = sext i32 %var_2_737 to i64
; Matched:\<badref\>:  store i64 %var_2_260, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_738, i64* %RDX.i786, align 8
; Matched:%var_2_261:  %var_2_261 = shl nsw i64 %var_2_260, 3
; %var_2_739 = shl nsw i64 %var_2_738, 3
; Matched:%var_2_262:  %var_2_262 = add i64 %var_2_261, %var_2_255
; %var_2_740 = add i64 %var_2_739, %var_2_733
; Matched:%var_2_301:  %var_2_301 = add i64 %var_2_267, 18
; %var_2_741 = add i64 %var_2_726, 18
; Matched:\<badref\>:  store i64 %var_2_301, i64* %PC, align 8
; store i64 %var_2_741, i64* %var_2_3, align 8
; Matched:%var_2_264:  %var_2_264 = inttoptr i64 %var_2_262 to i64*
; %var_2_742 = inttoptr i64 %var_2_740 to i64*
; Matched:\<badref\>:  store i64 %var_2_251, i64* %var_2_264, align 8
; store i64 %var_2_729, i64* %var_2_742, align 8
%var_2_743 = load i64, i64* %RBP.i, align 8
%var_2_744 = add i64 %var_2_743, -8
%var_2_745 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1360:  %var_2_1360 = add i64 %var_2_1359, 4
; %var_2_746 = add i64 %var_2_745, 4
; Matched:\<badref\>:  store i64 %var_2_222, i64* %PC, align 8
; store i64 %var_2_746, i64* %var_2_3, align 8
%var_2_747 = inttoptr i64 %var_2_744 to i64*
%var_2_748 = load i64, i64* %var_2_747, align 8
; Matched:\<badref\>:  store i64 %var_2_347, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_748, i64* %RCX.i788, align 8
%var_2_749 = add i64 %var_2_743, -36
; Matched:%var_2_2124:  %var_2_2124 = add i64 %var_2_2123, 7
; %var_2_750 = add i64 %var_2_745, 7
; Matched:\<badref\>:  store i64 %var_2_2124, i64* %PC, align 8
; store i64 %var_2_750, i64* %var_2_3, align 8
%var_2_751 = inttoptr i64 %var_2_749 to i32*
%var_2_752 = load i32, i32* %var_2_751, align 4
%var_2_753 = add i32 %var_2_752, 1
; Matched:%var_2_353:  %var_2_353 = zext i32 %var_2_352 to i64
; %var_2_754 = zext i32 %var_2_753 to i64
; Matched:\<badref\>:  store i64 %var_2_353, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_754, i64* %RAX.i798, align 8
; Matched:%var_2_277:  %var_2_277 = icmp eq i32 %var_2_274, -1
; %var_2_755 = icmp eq i32 %var_2_752, -1
; Matched:%var_2_355:  %var_2_355 = icmp eq i32 %var_2_352, 0
; %var_2_756 = icmp eq i32 %var_2_753, 0
; Matched:%var_2_356:  %var_2_356 = or i1 %var_2_354, %var_2_355
; %var_2_757 = or i1 %var_2_755, %var_2_756
; Matched:%var_2_357:  %var_2_357 = zext i1 %var_2_356 to i8
; %var_2_758 = zext i1 %var_2_757 to i8
; Matched:\<badref\>:  store i8 %var_2_280, i8* %var_2_17, align 1, !tbaa !1265
; store i8 %var_2_758, i8* %var_2_14, align 1
; Matched:%var_2_358:  %var_2_358 = and i32 %var_2_352, 255
; %var_2_759 = and i32 %var_2_753, 255
; Matched:%var_2_359:  %var_2_359 = tail call i32 @llvm.ctpop.i32(i32 %var_2_358) #14
; %var_2_760 = tail call i32 @llvm.ctpop.i32(i32 %var_2_759)
; Matched:%var_2_360:  %var_2_360 = trunc i32 %var_2_359 to i8
; %var_2_761 = trunc i32 %var_2_760 to i8
; Matched:%var_2_284:  %var_2_284 = and i8 %var_2_283, 1
; %var_2_762 = and i8 %var_2_761, 1
; Matched:%var_2_362:  %var_2_362 = xor i8 %var_2_361, 1
; %var_2_763 = xor i8 %var_2_762, 1
; Matched:\<badref\>:  store i8 %var_2_362, i8* %var_2_24, align 1, !tbaa !1279
; store i8 %var_2_763, i8* %var_2_21, align 1
; Matched:%var_2_363:  %var_2_363 = xor i32 %var_2_352, %var_2_351
; %var_2_764 = xor i32 %var_2_753, %var_2_752
; Matched:%var_2_287:  %var_2_287 = lshr i32 %var_2_286, 4
; %var_2_765 = lshr i32 %var_2_764, 4
; Matched:%var_2_365:  %var_2_365 = trunc i32 %var_2_364 to i8
; %var_2_766 = trunc i32 %var_2_765 to i8
; Matched:%var_2_366:  %var_2_366 = and i8 %var_2_365, 1
; %var_2_767 = and i8 %var_2_766, 1
; Matched:\<badref\>:  store i8 %var_2_366, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_767, i8* %var_2_26, align 1
; Matched:%var_2_290:  %var_2_290 = zext i1 %var_2_278 to i8
; %var_2_768 = zext i1 %var_2_756 to i8
; Matched:\<badref\>:  store i8 %var_2_367, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_768, i8* %var_2_29, align 1
; Matched:%var_2_368:  %var_2_368 = lshr i32 %var_2_352, 31
; %var_2_769 = lshr i32 %var_2_753, 31
; Matched:%var_2_369:  %var_2_369 = trunc i32 %var_2_368 to i8
; %var_2_770 = trunc i32 %var_2_769 to i8
; Matched:\<badref\>:  store i8 %var_2_292, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_770, i8* %var_2_32, align 1
; Matched:%var_2_370:  %var_2_370 = lshr i32 %var_2_351, 31
; %var_2_771 = lshr i32 %var_2_752, 31
; Matched:%var_2_371:  %var_2_371 = xor i32 %var_2_368, %var_2_370
; %var_2_772 = xor i32 %var_2_769, %var_2_771
; Matched:%var_2_372:  %var_2_372 = add nuw nsw i32 %var_2_371, %var_2_368
; %var_2_773 = add nuw nsw i32 %var_2_772, %var_2_769
; Matched:%var_2_296:  %var_2_296 = icmp eq i32 %var_2_295, 2
; %var_2_774 = icmp eq i32 %var_2_773, 2
; Matched:%var_2_374:  %var_2_374 = zext i1 %var_2_373 to i8
; %var_2_775 = zext i1 %var_2_774 to i8
; Matched:\<badref\>:  store i8 %var_2_374, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_775, i8* %var_2_38, align 1
%var_2_776 = sext i32 %var_2_753 to i64
; Matched:\<badref\>:  store i64 %var_2_298, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_776, i64* %RDX.i786, align 8
%var_2_777 = shl nsw i64 %var_2_776, 3
%var_2_778 = add i64 %var_2_748, %var_2_777
; Matched:%var_2_343:  %var_2_343 = add i64 %var_2_309, 18
; %var_2_779 = add i64 %var_2_745, 18
; Matched:\<badref\>:  store i64 %var_2_343, i64* %PC, align 8
; store i64 %var_2_779, i64* %var_2_3, align 8
%var_2_780 = inttoptr i64 %var_2_778 to i64*
%var_2_781 = load i64, i64* %var_2_780, align 8
store i64 %var_2_781, i64* %var_2_193, align 1
store double 0.000000e+00, double* %var_2_195, align 1
; Matched:%var_2_304:  %var_2_304 = add i64 %var_2_265, -112
; %var_2_782 = add i64 %var_2_743, -112
; Matched:%var_2_1458:  %var_2_1458 = add i64 %var_2_1438, 23
; %var_2_783 = add i64 %var_2_745, 23
; Matched:\<badref\>:  store i64 %var_2_1458, i64* %PC, align 8
; store i64 %var_2_783, i64* %var_2_3, align 8
; Matched:%var_2_306:  %var_2_306 = inttoptr i64 %var_2_304 to i64*
; %var_2_784 = inttoptr i64 %var_2_782 to i64*
; Matched:\<badref\>:  store i64 %var_2_303, i64* %var_2_306, align 8
; store i64 %var_2_781, i64* %var_2_784, align 8
%var_2_785 = load i64, i64* %RBP.i, align 8
%var_2_786 = add i64 %var_2_785, -8
%var_2_787 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1327:  %var_2_1327 = add i64 %var_2_1326, 4
; %var_2_788 = add i64 %var_2_787, 4
; Matched:\<badref\>:  store i64 %var_2_1327, i64* %PC, align 8
; store i64 %var_2_788, i64* %var_2_3, align 8
%var_2_789 = inttoptr i64 %var_2_786 to i64*
%var_2_790 = load i64, i64* %var_2_789, align 8
; Matched:\<badref\>:  store i64 %var_2_1403, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_790, i64* %RCX.i788, align 8
%var_2_791 = add i64 %var_2_785, -44
; Matched:%var_2_1020:  %var_2_1020 = add i64 %var_2_1014, 7
; %var_2_792 = add i64 %var_2_787, 7
; Matched:\<badref\>:  store i64 %var_2_72, i64* %PC, align 8
; store i64 %var_2_792, i64* %var_2_3, align 8
%var_2_793 = inttoptr i64 %var_2_791 to i32*
%var_2_794 = load i32, i32* %var_2_793, align 4
%var_2_795 = add i32 %var_2_794, 1
; Matched:%var_2_318:  %var_2_318 = zext i32 %var_2_317 to i64
; %var_2_796 = zext i32 %var_2_795 to i64
; Matched:\<badref\>:  store i64 %var_2_395, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_796, i64* %RAX.i798, align 8
; Matched:%var_2_396:  %var_2_396 = icmp eq i32 %var_2_393, -1
; %var_2_797 = icmp eq i32 %var_2_794, -1
; Matched:%var_2_397:  %var_2_397 = icmp eq i32 %var_2_394, 0
; %var_2_798 = icmp eq i32 %var_2_795, 0
; Matched:%var_2_321:  %var_2_321 = or i1 %var_2_319, %var_2_320
; %var_2_799 = or i1 %var_2_797, %var_2_798
; Matched:%var_2_399:  %var_2_399 = zext i1 %var_2_398 to i8
; %var_2_800 = zext i1 %var_2_799 to i8
; Matched:\<badref\>:  store i8 %var_2_399, i8* %var_2_17, align 1, !tbaa !1265
; store i8 %var_2_800, i8* %var_2_14, align 1
; Matched:%var_2_400:  %var_2_400 = and i32 %var_2_394, 255
; %var_2_801 = and i32 %var_2_795, 255
; Matched:%var_2_324:  %var_2_324 = tail call i32 @llvm.ctpop.i32(i32 %var_2_323) #14
; %var_2_802 = tail call i32 @llvm.ctpop.i32(i32 %var_2_801)
; Matched:%var_2_402:  %var_2_402 = trunc i32 %var_2_401 to i8
; %var_2_803 = trunc i32 %var_2_802 to i8
; Matched:%var_2_403:  %var_2_403 = and i8 %var_2_402, 1
; %var_2_804 = and i8 %var_2_803, 1
; Matched:%var_2_404:  %var_2_404 = xor i8 %var_2_403, 1
; %var_2_805 = xor i8 %var_2_804, 1
; Matched:\<badref\>:  store i8 %var_2_327, i8* %var_2_24, align 1, !tbaa !1279
; store i8 %var_2_805, i8* %var_2_21, align 1
; Matched:%var_2_405:  %var_2_405 = xor i32 %var_2_394, %var_2_393
; %var_2_806 = xor i32 %var_2_795, %var_2_794
; Matched:%var_2_406:  %var_2_406 = lshr i32 %var_2_405, 4
; %var_2_807 = lshr i32 %var_2_806, 4
; Matched:%var_2_407:  %var_2_407 = trunc i32 %var_2_406 to i8
; %var_2_808 = trunc i32 %var_2_807 to i8
; Matched:%var_2_331:  %var_2_331 = and i8 %var_2_330, 1
; %var_2_809 = and i8 %var_2_808, 1
; Matched:\<badref\>:  store i8 %var_2_408, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_809, i8* %var_2_26, align 1
; Matched:%var_2_409:  %var_2_409 = zext i1 %var_2_397 to i8
; %var_2_810 = zext i1 %var_2_798 to i8
; Matched:\<badref\>:  store i8 %var_2_409, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_810, i8* %var_2_29, align 1
; Matched:%var_2_333:  %var_2_333 = lshr i32 %var_2_317, 31
; %var_2_811 = lshr i32 %var_2_795, 31
; Matched:%var_2_411:  %var_2_411 = trunc i32 %var_2_410 to i8
; %var_2_812 = trunc i32 %var_2_811 to i8
; Matched:\<badref\>:  store i8 %var_2_411, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_812, i8* %var_2_32, align 1
; Matched:%var_2_412:  %var_2_412 = lshr i32 %var_2_393, 31
; %var_2_813 = lshr i32 %var_2_794, 31
; Matched:%var_2_336:  %var_2_336 = xor i32 %var_2_333, %var_2_335
; %var_2_814 = xor i32 %var_2_811, %var_2_813
; Matched:%var_2_414:  %var_2_414 = add nuw nsw i32 %var_2_413, %var_2_410
; %var_2_815 = add nuw nsw i32 %var_2_814, %var_2_811
; Matched:%var_2_415:  %var_2_415 = icmp eq i32 %var_2_414, 2
; %var_2_816 = icmp eq i32 %var_2_815, 2
; Matched:%var_2_416:  %var_2_416 = zext i1 %var_2_415 to i8
; %var_2_817 = zext i1 %var_2_816 to i8
; Matched:\<badref\>:  store i8 %var_2_339, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_817, i8* %var_2_38, align 1
%var_2_818 = sext i32 %var_2_795 to i64
; Matched:\<badref\>:  store i64 %var_2_417, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_818, i64* %RDX.i786, align 8
%var_2_819 = shl nsw i64 %var_2_818, 3
%var_2_820 = add i64 %var_2_790, %var_2_819
; Matched:%var_2_1453:  %var_2_1453 = add i64 %var_2_1438, 18
; %var_2_821 = add i64 %var_2_787, 18
; Matched:\<badref\>:  store i64 %var_2_1453, i64* %PC, align 8
; store i64 %var_2_821, i64* %var_2_3, align 8
%var_2_822 = inttoptr i64 %var_2_820 to i64*
%var_2_823 = load i64, i64* %var_2_822, align 8
store i64 %var_2_823, i64* %var_2_193, align 1
store double 0.000000e+00, double* %var_2_195, align 1
; Matched:%var_2_1346:  %var_2_1346 = add i64 %var_2_1326, 22
; %var_2_824 = add i64 %var_2_787, 22
; Matched:\<badref\>:  store i64 %var_2_346, i64* %PC, align 8
; store i64 %var_2_824, i64* %var_2_3, align 8
; Matched:%var_2_1347:  %var_2_1347 = load i64, i64* %var_2_1328, align 8
; %var_2_825 = load i64, i64* %var_2_789, align 8
; Matched:\<badref\>:  store i64 %var_2_1445, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_825, i64* %RCX.i788, align 8
; Matched:%var_2_348:  %var_2_348 = add i64 %var_2_307, -36
; %var_2_826 = add i64 %var_2_785, -36
; Matched:%var_2_349:  %var_2_349 = add i64 %var_2_309, 25
; %var_2_827 = add i64 %var_2_787, 25
; Matched:\<badref\>:  store i64 %var_2_349, i64* %PC, align 8
; store i64 %var_2_827, i64* %var_2_3, align 8
; Matched:%var_2_273:  %var_2_273 = inttoptr i64 %var_2_271 to i32*
; %var_2_828 = inttoptr i64 %var_2_826 to i32*
; Matched:%var_2_351:  %var_2_351 = load i32, i32* %var_2_350, align 4
; %var_2_829 = load i32, i32* %var_2_828, align 4
; Matched:%var_2_275:  %var_2_275 = add i32 %var_2_274, 1
; %var_2_830 = add i32 %var_2_829, 1
; Matched:%var_2_276:  %var_2_276 = zext i32 %var_2_275 to i64
; %var_2_831 = zext i32 %var_2_830 to i64
; Matched:\<badref\>:  store i64 %var_2_276, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_831, i64* %RAX.i798, align 8
; Matched:%var_2_354:  %var_2_354 = icmp eq i32 %var_2_351, -1
; %var_2_832 = icmp eq i32 %var_2_829, -1
; Matched:%var_2_278:  %var_2_278 = icmp eq i32 %var_2_275, 0
; %var_2_833 = icmp eq i32 %var_2_830, 0
; Matched:%var_2_279:  %var_2_279 = or i1 %var_2_277, %var_2_278
; %var_2_834 = or i1 %var_2_832, %var_2_833
; Matched:%var_2_280:  %var_2_280 = zext i1 %var_2_279 to i8
; %var_2_835 = zext i1 %var_2_834 to i8
; Matched:\<badref\>:  store i8 %var_2_357, i8* %var_2_17, align 1, !tbaa !1265
; store i8 %var_2_835, i8* %var_2_14, align 1
; Matched:%var_2_281:  %var_2_281 = and i32 %var_2_275, 255
; %var_2_836 = and i32 %var_2_830, 255
; Matched:%var_2_282:  %var_2_282 = tail call i32 @llvm.ctpop.i32(i32 %var_2_281) #14
; %var_2_837 = tail call i32 @llvm.ctpop.i32(i32 %var_2_836)
; Matched:%var_2_283:  %var_2_283 = trunc i32 %var_2_282 to i8
; %var_2_838 = trunc i32 %var_2_837 to i8
; Matched:%var_2_361:  %var_2_361 = and i8 %var_2_360, 1
; %var_2_839 = and i8 %var_2_838, 1
; Matched:%var_2_285:  %var_2_285 = xor i8 %var_2_284, 1
; %var_2_840 = xor i8 %var_2_839, 1
; Matched:\<badref\>:  store i8 %var_2_285, i8* %var_2_24, align 1, !tbaa !1279
; store i8 %var_2_840, i8* %var_2_21, align 1
; Matched:%var_2_286:  %var_2_286 = xor i32 %var_2_275, %var_2_274
; %var_2_841 = xor i32 %var_2_830, %var_2_829
; Matched:%var_2_364:  %var_2_364 = lshr i32 %var_2_363, 4
; %var_2_842 = lshr i32 %var_2_841, 4
; Matched:%var_2_288:  %var_2_288 = trunc i32 %var_2_287 to i8
; %var_2_843 = trunc i32 %var_2_842 to i8
; Matched:%var_2_289:  %var_2_289 = and i8 %var_2_288, 1
; %var_2_844 = and i8 %var_2_843, 1
; Matched:\<badref\>:  store i8 %var_2_289, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_844, i8* %var_2_26, align 1
; Matched:%var_2_367:  %var_2_367 = zext i1 %var_2_355 to i8
; %var_2_845 = zext i1 %var_2_833 to i8
; Matched:\<badref\>:  store i8 %var_2_290, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_845, i8* %var_2_29, align 1
; Matched:%var_2_291:  %var_2_291 = lshr i32 %var_2_275, 31
; %var_2_846 = lshr i32 %var_2_830, 31
; Matched:%var_2_292:  %var_2_292 = trunc i32 %var_2_291 to i8
; %var_2_847 = trunc i32 %var_2_846 to i8
; Matched:\<badref\>:  store i8 %var_2_369, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_847, i8* %var_2_32, align 1
; Matched:%var_2_293:  %var_2_293 = lshr i32 %var_2_274, 31
; %var_2_848 = lshr i32 %var_2_829, 31
; Matched:%var_2_294:  %var_2_294 = xor i32 %var_2_291, %var_2_293
; %var_2_849 = xor i32 %var_2_846, %var_2_848
; Matched:%var_2_295:  %var_2_295 = add nuw nsw i32 %var_2_294, %var_2_291
; %var_2_850 = add nuw nsw i32 %var_2_849, %var_2_846
; Matched:%var_2_373:  %var_2_373 = icmp eq i32 %var_2_372, 2
; %var_2_851 = icmp eq i32 %var_2_850, 2
; Matched:%var_2_297:  %var_2_297 = zext i1 %var_2_296 to i8
; %var_2_852 = zext i1 %var_2_851 to i8
; Matched:\<badref\>:  store i8 %var_2_297, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_852, i8* %var_2_38, align 1
; Matched:%var_2_298:  %var_2_298 = sext i32 %var_2_275 to i64
; %var_2_853 = sext i32 %var_2_830 to i64
; Matched:\<badref\>:  store i64 %var_2_375, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_853, i64* %RDX.i786, align 8
; Matched:%var_2_376:  %var_2_376 = shl nsw i64 %var_2_375, 3
; %var_2_854 = shl nsw i64 %var_2_853, 3
; Matched:%var_2_377:  %var_2_377 = add i64 %var_2_347, %var_2_376
; %var_2_855 = add i64 %var_2_825, %var_2_854
; Matched:%var_2_378:  %var_2_378 = add i64 %var_2_309, 36
; %var_2_856 = add i64 %var_2_787, 36
; Matched:\<badref\>:  store i64 %var_2_378, i64* %PC, align 8
; store i64 %var_2_856, i64* %var_2_3, align 8
; Matched:%var_2_379:  %var_2_379 = inttoptr i64 %var_2_377 to i64*
; %var_2_857 = inttoptr i64 %var_2_855 to i64*
; Matched:\<badref\>:  store i64 %var_2_345, i64* %var_2_379, align 8
; store i64 %var_2_823, i64* %var_2_857, align 8
%var_2_858 = load i64, i64* %RBP.i, align 8
%var_2_859 = add i64 %var_2_858, -112
%var_2_860 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1981:  %var_2_1981 = add i64 %var_2_1980, 5
; %var_2_861 = add i64 %var_2_860, 5
; Matched:\<badref\>:  store i64 %var_2_2088, i64* %PC, align 8
; store i64 %var_2_861, i64* %var_2_3, align 8
%var_2_862 = inttoptr i64 %var_2_859 to i64*
%var_2_863 = load i64, i64* %var_2_862, align 8
store i64 %var_2_863, i64* %var_2_193, align 1
store double 0.000000e+00, double* %var_2_195, align 1
; Matched:%var_2_266:  %var_2_266 = add i64 %var_2_265, -8
; %var_2_864 = add i64 %var_2_858, -8
%var_2_865 = add i64 %var_2_860, 9
store i64 %var_2_865, i64* %var_2_3, align 8
; Matched:%var_2_269:  %var_2_269 = inttoptr i64 %var_2_266 to i64*
; %var_2_866 = inttoptr i64 %var_2_864 to i64*
; Matched:%var_2_312:  %var_2_312 = load i64, i64* %var_2_311, align 8
; %var_2_867 = load i64, i64* %var_2_866, align 8
; Matched:\<badref\>:  store i64 %var_2_312, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_867, i64* %RCX.i788, align 8
; Matched:%var_2_313:  %var_2_313 = add i64 %var_2_307, -44
; %var_2_868 = add i64 %var_2_858, -44
; Matched:%var_2_1989:  %var_2_1989 = add i64 %var_2_1980, 12
; %var_2_869 = add i64 %var_2_860, 12
; Matched:\<badref\>:  store i64 %var_2_1265, i64* %PC, align 8
; store i64 %var_2_869, i64* %var_2_3, align 8
; Matched:%var_2_315:  %var_2_315 = inttoptr i64 %var_2_313 to i32*
; %var_2_870 = inttoptr i64 %var_2_868 to i32*
; Matched:%var_2_316:  %var_2_316 = load i32, i32* %var_2_315, align 4
; %var_2_871 = load i32, i32* %var_2_870, align 4
; Matched:%var_2_317:  %var_2_317 = add i32 %var_2_316, 1
; %var_2_872 = add i32 %var_2_871, 1
; Matched:%var_2_395:  %var_2_395 = zext i32 %var_2_394 to i64
; %var_2_873 = zext i32 %var_2_872 to i64
; Matched:\<badref\>:  store i64 %var_2_318, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_873, i64* %RAX.i798, align 8
; Matched:%var_2_319:  %var_2_319 = icmp eq i32 %var_2_316, -1
; %var_2_874 = icmp eq i32 %var_2_871, -1
; Matched:%var_2_320:  %var_2_320 = icmp eq i32 %var_2_317, 0
; %var_2_875 = icmp eq i32 %var_2_872, 0
; Matched:%var_2_398:  %var_2_398 = or i1 %var_2_396, %var_2_397
; %var_2_876 = or i1 %var_2_874, %var_2_875
; Matched:%var_2_322:  %var_2_322 = zext i1 %var_2_321 to i8
; %var_2_877 = zext i1 %var_2_876 to i8
; Matched:\<badref\>:  store i8 %var_2_322, i8* %var_2_17, align 1, !tbaa !1265
; store i8 %var_2_877, i8* %var_2_14, align 1
; Matched:%var_2_323:  %var_2_323 = and i32 %var_2_317, 255
; %var_2_878 = and i32 %var_2_872, 255
; Matched:%var_2_401:  %var_2_401 = tail call i32 @llvm.ctpop.i32(i32 %var_2_400) #14
; %var_2_879 = tail call i32 @llvm.ctpop.i32(i32 %var_2_878)
; Matched:%var_2_325:  %var_2_325 = trunc i32 %var_2_324 to i8
; %var_2_880 = trunc i32 %var_2_879 to i8
; Matched:%var_2_326:  %var_2_326 = and i8 %var_2_325, 1
; %var_2_881 = and i8 %var_2_880, 1
; Matched:%var_2_327:  %var_2_327 = xor i8 %var_2_326, 1
; %var_2_882 = xor i8 %var_2_881, 1
; Matched:\<badref\>:  store i8 %var_2_404, i8* %var_2_24, align 1, !tbaa !1279
; store i8 %var_2_882, i8* %var_2_21, align 1
; Matched:%var_2_328:  %var_2_328 = xor i32 %var_2_317, %var_2_316
; %var_2_883 = xor i32 %var_2_872, %var_2_871
; Matched:%var_2_329:  %var_2_329 = lshr i32 %var_2_328, 4
; %var_2_884 = lshr i32 %var_2_883, 4
; Matched:%var_2_330:  %var_2_330 = trunc i32 %var_2_329 to i8
; %var_2_885 = trunc i32 %var_2_884 to i8
; Matched:%var_2_408:  %var_2_408 = and i8 %var_2_407, 1
; %var_2_886 = and i8 %var_2_885, 1
; Matched:\<badref\>:  store i8 %var_2_331, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_886, i8* %var_2_26, align 1
; Matched:%var_2_332:  %var_2_332 = zext i1 %var_2_320 to i8
; %var_2_887 = zext i1 %var_2_875 to i8
; Matched:\<badref\>:  store i8 %var_2_332, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_887, i8* %var_2_29, align 1
; Matched:%var_2_410:  %var_2_410 = lshr i32 %var_2_394, 31
; %var_2_888 = lshr i32 %var_2_872, 31
; Matched:%var_2_334:  %var_2_334 = trunc i32 %var_2_333 to i8
; %var_2_889 = trunc i32 %var_2_888 to i8
; Matched:\<badref\>:  store i8 %var_2_334, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_889, i8* %var_2_32, align 1
; Matched:%var_2_335:  %var_2_335 = lshr i32 %var_2_316, 31
; %var_2_890 = lshr i32 %var_2_871, 31
; Matched:%var_2_413:  %var_2_413 = xor i32 %var_2_410, %var_2_412
; %var_2_891 = xor i32 %var_2_888, %var_2_890
; Matched:%var_2_337:  %var_2_337 = add nuw nsw i32 %var_2_336, %var_2_333
; %var_2_892 = add nuw nsw i32 %var_2_891, %var_2_888
; Matched:%var_2_338:  %var_2_338 = icmp eq i32 %var_2_337, 2
; %var_2_893 = icmp eq i32 %var_2_892, 2
; Matched:%var_2_339:  %var_2_339 = zext i1 %var_2_338 to i8
; %var_2_894 = zext i1 %var_2_893 to i8
; Matched:\<badref\>:  store i8 %var_2_416, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_894, i8* %var_2_38, align 1
; Matched:%var_2_340:  %var_2_340 = sext i32 %var_2_317 to i64
; %var_2_895 = sext i32 %var_2_872 to i64
; Matched:\<badref\>:  store i64 %var_2_340, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_895, i64* %RDX.i786, align 8
; Matched:%var_2_418:  %var_2_418 = shl nsw i64 %var_2_417, 3
; %var_2_896 = shl nsw i64 %var_2_895, 3
; Matched:%var_2_419:  %var_2_419 = add i64 %var_2_389, %var_2_418
; %var_2_897 = add i64 %var_2_867, %var_2_896
; Matched:%var_2_305:  %var_2_305 = add i64 %var_2_267, 23
; %var_2_898 = add i64 %var_2_860, 23
; Matched:\<badref\>:  store i64 %var_2_305, i64* %PC, align 8
; store i64 %var_2_898, i64* %var_2_3, align 8
; Matched:%var_2_421:  %var_2_421 = inttoptr i64 %var_2_419 to i64*
; %var_2_899 = inttoptr i64 %var_2_897 to i64*
; Matched:\<badref\>:  store i64 %var_2_385, i64* %var_2_421, align 8
; store i64 %var_2_863, i64* %var_2_899, align 8
%var_2_900 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1105:  %var_2_1105 = add i64 %var_2_1104, -52
; %var_2_901 = add i64 %var_2_900, -52
%var_2_902 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2164:  %var_2_2164 = add i64 %var_2_2163, 3
; %var_2_903 = add i64 %var_2_902, 3
; Matched:\<badref\>:  store i64 %var_2_2164, i64* %PC, align 8
; store i64 %var_2_903, i64* %var_2_3, align 8
; Matched:%var_2_1108:  %var_2_1108 = inttoptr i64 %var_2_1105 to i32*
; %var_2_904 = inttoptr i64 %var_2_901 to i32*
; Matched:%var_2_427:  %var_2_427 = load i32, i32* %var_2_426, align 4
; %var_2_905 = load i32, i32* %var_2_904, align 4
; Matched:%var_2_428:  %var_2_428 = zext i32 %var_2_427 to i64
; %var_2_906 = zext i32 %var_2_905 to i64
; Matched:\<badref\>:  store i64 %var_2_1110, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_906, i64* %RAX.i798, align 8
; Matched:%var_2_429:  %var_2_429 = add i64 %var_2_422, -36
; %var_2_907 = add i64 %var_2_900, -36
; Matched:%var_2_430:  %var_2_430 = add i64 %var_2_424, 6
; %var_2_908 = add i64 %var_2_902, 6
; Matched:\<badref\>:  store i64 %var_2_430, i64* %PC, align 8
; store i64 %var_2_908, i64* %var_2_3, align 8
; Matched:%var_2_431:  %var_2_431 = inttoptr i64 %var_2_429 to i32*
; %var_2_909 = inttoptr i64 %var_2_907 to i32*
; Matched:%var_2_432:  %var_2_432 = load i32, i32* %var_2_431, align 4
; %var_2_910 = load i32, i32* %var_2_909, align 4
; Matched:%var_2_433:  %var_2_433 = add i32 %var_2_432, %var_2_427
; %var_2_911 = add i32 %var_2_910, %var_2_905
; Matched:%var_2_434:  %var_2_434 = zext i32 %var_2_433 to i64
; %var_2_912 = zext i32 %var_2_911 to i64
; Matched:\<badref\>:  store i64 %var_2_434, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_912, i64* %RAX.i798, align 8
; Matched:%var_2_435:  %var_2_435 = icmp ult i32 %var_2_433, %var_2_427
; %var_2_913 = icmp ult i32 %var_2_911, %var_2_905
; Matched:%var_2_436:  %var_2_436 = icmp ult i32 %var_2_433, %var_2_432
; %var_2_914 = icmp ult i32 %var_2_911, %var_2_910
; Matched:%var_2_437:  %var_2_437 = or i1 %var_2_435, %var_2_436
; %var_2_915 = or i1 %var_2_913, %var_2_914
; Matched:%var_2_438:  %var_2_438 = zext i1 %var_2_437 to i8
; %var_2_916 = zext i1 %var_2_915 to i8
; Matched:\<badref\>:  store i8 %var_2_438, i8* %var_2_17, align 1, !tbaa !1265
; store i8 %var_2_916, i8* %var_2_14, align 1
; Matched:%var_2_439:  %var_2_439 = and i32 %var_2_433, 255
; %var_2_917 = and i32 %var_2_911, 255
; Matched:%var_2_440:  %var_2_440 = tail call i32 @llvm.ctpop.i32(i32 %var_2_439) #14
; %var_2_918 = tail call i32 @llvm.ctpop.i32(i32 %var_2_917)
; Matched:%var_2_441:  %var_2_441 = trunc i32 %var_2_440 to i8
; %var_2_919 = trunc i32 %var_2_918 to i8
; Matched:%var_2_442:  %var_2_442 = and i8 %var_2_441, 1
; %var_2_920 = and i8 %var_2_919, 1
; Matched:%var_2_443:  %var_2_443 = xor i8 %var_2_442, 1
; %var_2_921 = xor i8 %var_2_920, 1
; Matched:\<badref\>:  store i8 %var_2_443, i8* %var_2_24, align 1, !tbaa !1279
; store i8 %var_2_921, i8* %var_2_21, align 1
; Matched:%var_2_444:  %var_2_444 = xor i32 %var_2_432, %var_2_427
; %var_2_922 = xor i32 %var_2_910, %var_2_905
; Matched:%var_2_445:  %var_2_445 = xor i32 %var_2_444, %var_2_433
; %var_2_923 = xor i32 %var_2_922, %var_2_911
; Matched:%var_2_446:  %var_2_446 = lshr i32 %var_2_445, 4
; %var_2_924 = lshr i32 %var_2_923, 4
; Matched:%var_2_447:  %var_2_447 = trunc i32 %var_2_446 to i8
; %var_2_925 = trunc i32 %var_2_924 to i8
; Matched:%var_2_448:  %var_2_448 = and i8 %var_2_447, 1
; %var_2_926 = and i8 %var_2_925, 1
; Matched:\<badref\>:  store i8 %var_2_448, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_926, i8* %var_2_26, align 1
; Matched:%var_2_449:  %var_2_449 = icmp eq i32 %var_2_433, 0
; %var_2_927 = icmp eq i32 %var_2_911, 0
; Matched:%var_2_450:  %var_2_450 = zext i1 %var_2_449 to i8
; %var_2_928 = zext i1 %var_2_927 to i8
; Matched:\<badref\>:  store i8 %var_2_450, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_928, i8* %var_2_29, align 1
; Matched:%var_2_451:  %var_2_451 = lshr i32 %var_2_433, 31
; %var_2_929 = lshr i32 %var_2_911, 31
; Matched:%var_2_452:  %var_2_452 = trunc i32 %var_2_451 to i8
; %var_2_930 = trunc i32 %var_2_929 to i8
; Matched:\<badref\>:  store i8 %var_2_452, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_930, i8* %var_2_32, align 1
; Matched:%var_2_453:  %var_2_453 = lshr i32 %var_2_427, 31
; %var_2_931 = lshr i32 %var_2_905, 31
; Matched:%var_2_454:  %var_2_454 = lshr i32 %var_2_432, 31
; %var_2_932 = lshr i32 %var_2_910, 31
; Matched:%var_2_455:  %var_2_455 = xor i32 %var_2_451, %var_2_453
; %var_2_933 = xor i32 %var_2_929, %var_2_931
; Matched:%var_2_456:  %var_2_456 = xor i32 %var_2_451, %var_2_454
; %var_2_934 = xor i32 %var_2_929, %var_2_932
; Matched:%var_2_457:  %var_2_457 = add nuw nsw i32 %var_2_455, %var_2_456
; %var_2_935 = add nuw nsw i32 %var_2_933, %var_2_934
; Matched:%var_2_458:  %var_2_458 = icmp eq i32 %var_2_457, 2
; %var_2_936 = icmp eq i32 %var_2_935, 2
; Matched:%var_2_459:  %var_2_459 = zext i1 %var_2_458 to i8
; %var_2_937 = zext i1 %var_2_936 to i8
; Matched:\<badref\>:  store i8 %var_2_459, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_937, i8* %var_2_38, align 1
%var_2_938 = add i64 %var_2_902, 9
store i64 %var_2_938, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_433, i32* %var_2_431, align 4
; store i32 %var_2_911, i32* %var_2_909, align 4
; Matched:%var_2_461:  %var_2_461 = load i64, i64* %PC, align 8
; %var_2_939 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_462:  %var_2_462 = add i64 %var_2_461, -177
; %var_2_940 = add i64 %var_2_939, -177
; Matched:\<badref\>:  store i64 %var_2_462, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_940, i64* %var_2_3, align 8
  br label %block_.L_400c67

block_.L_400d1d:                                  ; preds = %block_.L_400c67
; Matched:%var_2_1549:  %var_2_1549 = add i64 %var_2_1774, -28
; %var_2_941 = add i64 %var_2_576, -28
; Matched:%var_2_1550:  %var_2_1550 = add i64 %var_2_1810, 8
; %var_2_942 = add i64 %var_2_612, 8
; Matched:\<badref\>:  store i64 %var_2_1550, i64* %PC, align 8
; store i64 %var_2_942, i64* %var_2_3, align 8
; Matched:%var_2_519:  %var_2_519 = inttoptr i64 %var_2_517 to i32*
; %var_2_943 = inttoptr i64 %var_2_941 to i32*
; Matched:%var_2_520:  %var_2_520 = load i32, i32* %var_2_519, align 4
; %var_2_944 = load i32, i32* %var_2_943, align 4
; Matched:%var_2_521:  %var_2_521 = add i32 %var_2_520, 2
; %var_2_945 = add i32 %var_2_944, 2
; Matched:%var_2_522:  %var_2_522 = zext i32 %var_2_521 to i64
; %var_2_946 = zext i32 %var_2_945 to i64
; Matched:\<badref\>:  store i64 %var_2_522, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_946, i64* %RAX.i798, align 8
; Matched:%var_2_1555:  %var_2_1555 = icmp ugt i32 %var_2_1552, -3
; %var_2_947 = icmp ugt i32 %var_2_944, -3
; Matched:%var_2_524:  %var_2_524 = zext i1 %var_2_523 to i8
; %var_2_948 = zext i1 %var_2_947 to i8
; Matched:\<badref\>:  store i8 %var_2_1556, i8* %var_2_17, align 1, !tbaa !1265
; store i8 %var_2_948, i8* %var_2_14, align 1
; Matched:%var_2_525:  %var_2_525 = and i32 %var_2_521, 255
; %var_2_949 = and i32 %var_2_945, 255
; Matched:%var_2_526:  %var_2_526 = tail call i32 @llvm.ctpop.i32(i32 %var_2_525) #14
; %var_2_950 = tail call i32 @llvm.ctpop.i32(i32 %var_2_949)
; Matched:%var_2_527:  %var_2_527 = trunc i32 %var_2_526 to i8
; %var_2_951 = trunc i32 %var_2_950 to i8
; Matched:%var_2_528:  %var_2_528 = and i8 %var_2_527, 1
; %var_2_952 = and i8 %var_2_951, 1
; Matched:%var_2_529:  %var_2_529 = xor i8 %var_2_528, 1
; %var_2_953 = xor i8 %var_2_952, 1
; Matched:\<badref\>:  store i8 %var_2_1561, i8* %var_2_24, align 1, !tbaa !1279
; store i8 %var_2_953, i8* %var_2_21, align 1
; Matched:%var_2_530:  %var_2_530 = xor i32 %var_2_521, %var_2_520
; %var_2_954 = xor i32 %var_2_945, %var_2_944
; Matched:%var_2_1563:  %var_2_1563 = lshr i32 %var_2_1562, 4
; %var_2_955 = lshr i32 %var_2_954, 4
; Matched:%var_2_532:  %var_2_532 = trunc i32 %var_2_531 to i8
; %var_2_956 = trunc i32 %var_2_955 to i8
; Matched:%var_2_533:  %var_2_533 = and i8 %var_2_532, 1
; %var_2_957 = and i8 %var_2_956, 1
; Matched:\<badref\>:  store i8 %var_2_533, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_957, i8* %var_2_26, align 1
; Matched:%var_2_534:  %var_2_534 = icmp eq i32 %var_2_521, 0
; %var_2_958 = icmp eq i32 %var_2_945, 0
; Matched:%var_2_535:  %var_2_535 = zext i1 %var_2_534 to i8
; %var_2_959 = zext i1 %var_2_958 to i8
; Matched:\<badref\>:  store i8 %var_2_1567, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_959, i8* %var_2_29, align 1
; Matched:%var_2_536:  %var_2_536 = lshr i32 %var_2_521, 31
; %var_2_960 = lshr i32 %var_2_945, 31
; Matched:%var_2_1569:  %var_2_1569 = trunc i32 %var_2_1568 to i8
; %var_2_961 = trunc i32 %var_2_960 to i8
; Matched:\<badref\>:  store i8 %var_2_537, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_961, i8* %var_2_32, align 1
; Matched:%var_2_538:  %var_2_538 = lshr i32 %var_2_520, 31
; %var_2_962 = lshr i32 %var_2_944, 31
; Matched:%var_2_539:  %var_2_539 = xor i32 %var_2_536, %var_2_538
; %var_2_963 = xor i32 %var_2_960, %var_2_962
; Matched:%var_2_540:  %var_2_540 = add nuw nsw i32 %var_2_539, %var_2_536
; %var_2_964 = add nuw nsw i32 %var_2_963, %var_2_960
; Matched:%var_2_541:  %var_2_541 = icmp eq i32 %var_2_540, 2
; %var_2_965 = icmp eq i32 %var_2_964, 2
; Matched:%var_2_1574:  %var_2_1574 = zext i1 %var_2_1573 to i8
; %var_2_966 = zext i1 %var_2_965 to i8
; Matched:\<badref\>:  store i8 %var_2_542, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_966, i8* %var_2_38, align 1
; Matched:%var_2_1575:  %var_2_1575 = add i64 %var_2_1810, 14
; %var_2_967 = add i64 %var_2_612, 14
; Matched:\<badref\>:  store i64 %var_2_1575, i64* %PC, align 8
; store i64 %var_2_967, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_521, i32* %var_2_519, align 4
; store i32 %var_2_945, i32* %var_2_943, align 4
%var_2_968 = load i64, i64* %var_2_3, align 8
%var_2_969 = add i64 %var_2_968, -222
; Matched:\<badref\>:  store i64 %var_2_1577, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_969, i64* %var_2_3, align 8
  br label %block_.L_400c4d

block_.L_400d30:                                  ; preds = %block_.L_400c4d
%var_2_970 = add i64 %var_2_565, 5
; Matched:\<badref\>:  store i64 %var_2_1548, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_970, i64* %var_2_3, align 8
  %.pre47 = load i64, i64* %RBP.i, align 8
  br label %block_.L_400d35

block_.L_400d35:                                  ; preds = %block_400c3b, %block_.L_400d30
%var_2_971 = phi i64 [ %var_2_513, %block_400c3b ], [ %var_2_970, %block_.L_400d30 ]
; Matched:%var_2_842:  %var_2_842 = phi i64 [ %var_2_1689, %block_400c3b ], [ %.pre101, %block_400d30 ]
; %var_2_972 = phi i64 [ %var_2_443, %block_400c3b ], [ %.pre47, %block_.L_400d30 ]
; Matched:%var_2_843:  %var_2_843 = add i64 %var_2_842, -52
; %var_2_973 = add i64 %var_2_972, -52
; Matched:%var_2_844:  %var_2_844 = add i64 %var_2_841, 3
; %var_2_974 = add i64 %var_2_971, 3
; Matched:\<badref\>:  store i64 %var_2_844, i64* %PC, align 8
; store i64 %var_2_974, i64* %var_2_3, align 8
; Matched:%var_2_845:  %var_2_845 = inttoptr i64 %var_2_843 to i32*
; %var_2_975 = inttoptr i64 %var_2_973 to i32*
; Matched:%var_2_846:  %var_2_846 = load i32, i32* %var_2_845, align 4
; %var_2_976 = load i32, i32* %var_2_975, align 4
; Matched:%var_2_847:  %var_2_847 = zext i32 %var_2_846 to i64
; %var_2_977 = zext i32 %var_2_976 to i64
; Matched:%var_2_848:  %var_2_848 = shl nuw i64 %var_2_847, 32
; %var_2_978 = shl nuw i64 %var_2_977, 32
; Matched:%var_2_849:  %var_2_849 = ashr i64 %var_2_848, 33
; %var_2_979 = ashr i64 %var_2_978, 33
; Matched:%var_2_850:  %var_2_850 = trunc i32 %var_2_846 to i8
; %var_2_980 = trunc i32 %var_2_976 to i8
; Matched:%var_2_851:  %var_2_851 = and i8 %var_2_850, 1
; %var_2_981 = and i8 %var_2_980, 1
; Matched:%var_2_852:  %var_2_852 = trunc i64 %var_2_849 to i32
; %var_2_982 = trunc i64 %var_2_979 to i32
; Matched:%var_2_853:  %var_2_853 = and i64 %var_2_849, 4294967295
; %var_2_983 = and i64 %var_2_979, 4294967295
; Matched:\<badref\>:  store i64 %var_2_853, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_983, i64* %RAX.i798, align 8
; Matched:\<badref\>:  store i8 %var_2_851, i8* %var_2_17, align 1, !tbaa !1284
; store i8 %var_2_981, i8* %var_2_14, align 1
; Matched:%var_2_854:  %var_2_854 = and i32 %var_2_852, 255
; %var_2_984 = and i32 %var_2_982, 255
; Matched:%var_2_855:  %var_2_855 = tail call i32 @llvm.ctpop.i32(i32 %var_2_854) #14
; %var_2_985 = tail call i32 @llvm.ctpop.i32(i32 %var_2_984)
; Matched:%var_2_856:  %var_2_856 = trunc i32 %var_2_855 to i8
; %var_2_986 = trunc i32 %var_2_985 to i8
; Matched:%var_2_857:  %var_2_857 = and i8 %var_2_856, 1
; %var_2_987 = and i8 %var_2_986, 1
; Matched:%var_2_858:  %var_2_858 = xor i8 %var_2_857, 1
; %var_2_988 = xor i8 %var_2_987, 1
; Matched:\<badref\>:  store i8 %var_2_858, i8* %var_2_24, align 1, !tbaa !1284
; store i8 %var_2_988, i8* %var_2_21, align 1
store i8 0, i8* %var_2_26, align 1
; Matched:%var_2_859:  %var_2_859 = icmp eq i32 %var_2_852, 0
; %var_2_989 = icmp eq i32 %var_2_982, 0
; Matched:%var_2_860:  %var_2_860 = zext i1 %var_2_859 to i8
; %var_2_990 = zext i1 %var_2_989 to i8
; Matched:\<badref\>:  store i8 %var_2_860, i8* %var_2_32, align 1, !tbaa !1284
; store i8 %var_2_990, i8* %var_2_29, align 1
; Matched:%var_2_861:  %var_2_861 = lshr i64 %var_2_849, 31
; %var_2_991 = lshr i64 %var_2_979, 31
; Matched:%var_2_862:  %var_2_862 = trunc i64 %var_2_861 to i8
; %var_2_992 = trunc i64 %var_2_991 to i8
; Matched:%var_2_863:  %var_2_863 = and i8 %var_2_862, 1
; %var_2_993 = and i8 %var_2_992, 1
; Matched:\<badref\>:  store i8 %var_2_863, i8* %var_2_35, align 1, !tbaa !1284
; store i8 %var_2_993, i8* %var_2_32, align 1
store i8 0, i8* %var_2_38, align 1
; Matched:%var_2_864:  %var_2_864 = add i64 %var_2_842, -68
; %var_2_994 = add i64 %var_2_972, -68
; Matched:%var_2_865:  %var_2_865 = trunc i64 %var_2_849 to i32
; %var_2_995 = trunc i64 %var_2_979 to i32
%var_2_996 = add i64 %var_2_971, 8
store i64 %var_2_996, i64* %var_2_3, align 8
; Matched:%var_2_867:  %var_2_867 = inttoptr i64 %var_2_864 to i32*
; %var_2_997 = inttoptr i64 %var_2_994 to i32*
; Matched:\<badref\>:  store i32 %var_2_865, i32* %var_2_867, align 4
; store i32 %var_2_995, i32* %var_2_997, align 4
; Matched:  %.pre102 = load i64, i64* %PC, align 8
; %.pre48 = load i64, i64* %var_2_3, align 8
  br label %block_.L_400d3e

block_.L_400d3e:                                  ; preds = %block_.L_400d76, %block_.L_400d35
; Matched:%var_2_794:  %var_2_794 = phi i64 [ %.pre102, %block_400d35 ], [ %var_2_134, %block_400d76 ]
; %var_2_998 = phi i64 [ %var_2_1238, %block_.L_400d76 ], [ %.pre48, %block_.L_400d35 ]
  store i64 0, i64* %RAX.i798, align 8
store i8 0, i8* %var_2_14, align 1
store i8 1, i8* %var_2_21, align 1
store i8 1, i8* %var_2_29, align 1
store i8 0, i8* %var_2_32, align 1
store i8 0, i8* %var_2_38, align 1
store i8 0, i8* %var_2_26, align 1
  store i8 0, i8* %CL.i489, align 1
%var_2_999 = load i64, i64* %RBP.i, align 8
%var_2_1000 = add i64 %var_2_999, -68
; Matched:%var_2_797:  %var_2_797 = add i64 %var_2_794, 7
; %var_2_1001 = add i64 %var_2_998, 7
; Matched:\<badref\>:  store i64 %var_2_797, i64* %PC, align 8
; store i64 %var_2_1001, i64* %var_2_3, align 8
%var_2_1002 = inttoptr i64 %var_2_1000 to i32*
%var_2_1003 = load i32, i32* %var_2_1002, align 4
; Matched:%var_2_1866:  %var_2_1866 = zext i32 %var_2_1865 to i64
; %var_2_1004 = zext i32 %var_2_1003 to i64
; Matched:\<badref\>:  store i64 %var_2_1866, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1004, i64* %RAX.i798, align 8
; Matched:%var_2_801:  %var_2_801 = add i64 %var_2_795, -48
; %var_2_1005 = add i64 %var_2_999, -48
; Matched:%var_2_802:  %var_2_802 = add i64 %var_2_794, 10
; %var_2_1006 = add i64 %var_2_998, 10
; Matched:\<badref\>:  store i64 %var_2_802, i64* %PC, align 8
; store i64 %var_2_1006, i64* %var_2_3, align 8
; Matched:%var_2_803:  %var_2_803 = inttoptr i64 %var_2_801 to i32*
; %var_2_1007 = inttoptr i64 %var_2_1005 to i32*
; Matched:%var_2_804:  %var_2_804 = load i32, i32* %var_2_803, align 4
; %var_2_1008 = load i32, i32* %var_2_1007, align 4
; Matched:%var_2_805:  %var_2_805 = sub i32 %var_2_799, %var_2_804
; %var_2_1009 = sub i32 %var_2_1003, %var_2_1008
; Matched:%var_2_806:  %var_2_806 = icmp ult i32 %var_2_799, %var_2_804
; %var_2_1010 = icmp ult i32 %var_2_1003, %var_2_1008
; Matched:%var_2_807:  %var_2_807 = zext i1 %var_2_806 to i8
; %var_2_1011 = zext i1 %var_2_1010 to i8
; Matched:\<badref\>:  store i8 %var_2_807, i8* %var_2_17, align 1, !tbaa !1265
; store i8 %var_2_1011, i8* %var_2_14, align 1
; Matched:%var_2_808:  %var_2_808 = and i32 %var_2_805, 255
; %var_2_1012 = and i32 %var_2_1009, 255
; Matched:%var_2_809:  %var_2_809 = tail call i32 @llvm.ctpop.i32(i32 %var_2_808) #14
; %var_2_1013 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1012)
; Matched:%var_2_810:  %var_2_810 = trunc i32 %var_2_809 to i8
; %var_2_1014 = trunc i32 %var_2_1013 to i8
; Matched:%var_2_811:  %var_2_811 = and i8 %var_2_810, 1
; %var_2_1015 = and i8 %var_2_1014, 1
; Matched:%var_2_812:  %var_2_812 = xor i8 %var_2_811, 1
; %var_2_1016 = xor i8 %var_2_1015, 1
; Matched:\<badref\>:  store i8 %var_2_812, i8* %var_2_24, align 1, !tbaa !1279
; store i8 %var_2_1016, i8* %var_2_21, align 1
; Matched:%var_2_813:  %var_2_813 = xor i32 %var_2_804, %var_2_799
; %var_2_1017 = xor i32 %var_2_1008, %var_2_1003
; Matched:%var_2_814:  %var_2_814 = xor i32 %var_2_813, %var_2_805
; %var_2_1018 = xor i32 %var_2_1017, %var_2_1009
; Matched:%var_2_815:  %var_2_815 = lshr i32 %var_2_814, 4
; %var_2_1019 = lshr i32 %var_2_1018, 4
; Matched:%var_2_816:  %var_2_816 = trunc i32 %var_2_815 to i8
; %var_2_1020 = trunc i32 %var_2_1019 to i8
; Matched:%var_2_817:  %var_2_817 = and i8 %var_2_816, 1
; %var_2_1021 = and i8 %var_2_1020, 1
; Matched:\<badref\>:  store i8 %var_2_817, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_1021, i8* %var_2_26, align 1
; Matched:%var_2_818:  %var_2_818 = icmp eq i32 %var_2_805, 0
; %var_2_1022 = icmp eq i32 %var_2_1009, 0
; Matched:%var_2_819:  %var_2_819 = zext i1 %var_2_818 to i8
; %var_2_1023 = zext i1 %var_2_1022 to i8
; Matched:\<badref\>:  store i8 %var_2_819, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_1023, i8* %var_2_29, align 1
; Matched:%var_2_820:  %var_2_820 = lshr i32 %var_2_805, 31
; %var_2_1024 = lshr i32 %var_2_1009, 31
; Matched:%var_2_821:  %var_2_821 = trunc i32 %var_2_820 to i8
; %var_2_1025 = trunc i32 %var_2_1024 to i8
; Matched:\<badref\>:  store i8 %var_2_821, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_1025, i8* %var_2_32, align 1
; Matched:%var_2_822:  %var_2_822 = lshr i32 %var_2_799, 31
; %var_2_1026 = lshr i32 %var_2_1003, 31
; Matched:%var_2_823:  %var_2_823 = lshr i32 %var_2_804, 31
; %var_2_1027 = lshr i32 %var_2_1008, 31
; Matched:%var_2_824:  %var_2_824 = xor i32 %var_2_823, %var_2_822
; %var_2_1028 = xor i32 %var_2_1027, %var_2_1026
; Matched:%var_2_825:  %var_2_825 = xor i32 %var_2_820, %var_2_822
; %var_2_1029 = xor i32 %var_2_1024, %var_2_1026
; Matched:%var_2_826:  %var_2_826 = add nuw nsw i32 %var_2_825, %var_2_824
; %var_2_1030 = add nuw nsw i32 %var_2_1029, %var_2_1028
; Matched:%var_2_827:  %var_2_827 = icmp eq i32 %var_2_826, 2
; %var_2_1031 = icmp eq i32 %var_2_1030, 2
; Matched:%var_2_828:  %var_2_828 = zext i1 %var_2_827 to i8
; %var_2_1032 = zext i1 %var_2_1031 to i8
; Matched:\<badref\>:  store i8 %var_2_828, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_1032, i8* %var_2_38, align 1
%var_2_1033 = add i64 %var_2_999, -165
; Matched:%var_2_830:  %var_2_830 = add i64 %var_2_794, 16
; %var_2_1034 = add i64 %var_2_998, 16
; Matched:\<badref\>:  store i64 %var_2_830, i64* %PC, align 8
; store i64 %var_2_1034, i64* %var_2_3, align 8
%var_2_1035 = inttoptr i64 %var_2_1033 to i8*
store i8 0, i8* %var_2_1035, align 1
; Matched:%var_2_832:  %var_2_832 = load i64, i64* %PC, align 8
; %var_2_1036 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_833:  %var_2_833 = add i64 %var_2_832, 21
; %var_2_1037 = add i64 %var_2_1036, 21
; Matched:%var_2_834:  %var_2_834 = add i64 %var_2_832, 6
; %var_2_1038 = add i64 %var_2_1036, 6
%var_2_1039 = load i8, i8* %var_2_32, align 1
%var_2_1040 = icmp ne i8 %var_2_1039, 0
%var_2_1041 = load i8, i8* %var_2_38, align 1
%var_2_1042 = icmp ne i8 %var_2_1041, 0
%var_2_1043 = xor i1 %var_2_1040, %var_2_1042
; Matched:%var_2_840:  %var_2_840 = select i1 %var_2_839, i64 %var_2_833, i64 %var_2_834
; %var_2_1044 = select i1 %var_2_1043, i64 %var_2_1037, i64 %var_2_1038
; Matched:\<badref\>:  store i64 %var_2_840, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1044, i64* %var_2_3, align 8
br i1 %var_2_1043, label %block_.L_400d63, label %block_400d54

block_400d54:                                     ; preds = %block_.L_400d3e
%var_2_1045 = load i64, i64* %RBP.i, align 8
%var_2_1046 = add i64 %var_2_1045, -40
; Matched:%var_2_916:  %var_2_916 = add i64 %var_2_840, 3
; %var_2_1047 = add i64 %var_2_1044, 3
; Matched:\<badref\>:  store i64 %var_2_916, i64* %PC, align 8
; store i64 %var_2_1047, i64* %var_2_3, align 8
%var_2_1048 = inttoptr i64 %var_2_1046 to i32*
%var_2_1049 = load i32, i32* %var_2_1048, align 4
; Matched:%var_2_919:  %var_2_919 = zext i32 %var_2_918 to i64
; %var_2_1050 = zext i32 %var_2_1049 to i64
; Matched:\<badref\>:  store i64 %var_2_139, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1050, i64* %RAX.i798, align 8
%var_2_1051 = add i64 %var_2_1045, -68
; Matched:%var_2_921:  %var_2_921 = add i64 %var_2_840, 6
; %var_2_1052 = add i64 %var_2_1044, 6
; Matched:\<badref\>:  store i64 %var_2_921, i64* %PC, align 8
; store i64 %var_2_1052, i64* %var_2_3, align 8
%var_2_1053 = inttoptr i64 %var_2_1051 to i32*
%var_2_1054 = load i32, i32* %var_2_1053, align 4
; Matched:%var_2_924:  %var_2_924 = sub i32 %var_2_918, %var_2_923
; %var_2_1055 = sub i32 %var_2_1049, %var_2_1054
; Matched:%var_2_84:  %var_2_84 = icmp ult i32 %var_2_81, %var_2_76
; %var_2_1056 = icmp ult i32 %var_2_1049, %var_2_1054
; Matched:%var_2_926:  %var_2_926 = zext i1 %var_2_925 to i8
; %var_2_1057 = zext i1 %var_2_1056 to i8
; Matched:\<badref\>:  store i8 %var_2_85, i8* %var_2_17, align 1, !tbaa !1265
; store i8 %var_2_1057, i8* %var_2_14, align 1
; Matched:%var_2_927:  %var_2_927 = and i32 %var_2_924, 255
; %var_2_1058 = and i32 %var_2_1055, 255
; Matched:%var_2_928:  %var_2_928 = tail call i32 @llvm.ctpop.i32(i32 %var_2_927) #14
; %var_2_1059 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1058)
; Matched:%var_2_929:  %var_2_929 = trunc i32 %var_2_928 to i8
; %var_2_1060 = trunc i32 %var_2_1059 to i8
; Matched:%var_2_930:  %var_2_930 = and i8 %var_2_929, 1
; %var_2_1061 = and i8 %var_2_1060, 1
; Matched:%var_2_931:  %var_2_931 = xor i8 %var_2_930, 1
; %var_2_1062 = xor i8 %var_2_1061, 1
; Matched:\<badref\>:  store i8 %var_2_90, i8* %var_2_24, align 1, !tbaa !1279
; store i8 %var_2_1062, i8* %var_2_21, align 1
; Matched:%var_2_932:  %var_2_932 = xor i32 %var_2_923, %var_2_918
; %var_2_1063 = xor i32 %var_2_1054, %var_2_1049
; Matched:%var_2_92:  %var_2_92 = xor i32 %var_2_91, %var_2_82
; %var_2_1064 = xor i32 %var_2_1063, %var_2_1055
; Matched:%var_2_934:  %var_2_934 = lshr i32 %var_2_933, 4
; %var_2_1065 = lshr i32 %var_2_1064, 4
; Matched:%var_2_935:  %var_2_935 = trunc i32 %var_2_934 to i8
; %var_2_1066 = trunc i32 %var_2_1065 to i8
; Matched:%var_2_936:  %var_2_936 = and i8 %var_2_935, 1
; %var_2_1067 = and i8 %var_2_1066, 1
; Matched:\<badref\>:  store i8 %var_2_936, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_1067, i8* %var_2_26, align 1
; Matched:%var_2_937:  %var_2_937 = icmp eq i32 %var_2_924, 0
; %var_2_1068 = icmp eq i32 %var_2_1055, 0
; Matched:%var_2_97:  %var_2_97 = zext i1 %var_2_96 to i8
; %var_2_1069 = zext i1 %var_2_1068 to i8
; Matched:\<badref\>:  store i8 %var_2_938, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_1069, i8* %var_2_29, align 1
; Matched:%var_2_98:  %var_2_98 = lshr i32 %var_2_82, 31
; %var_2_1070 = lshr i32 %var_2_1055, 31
; Matched:%var_2_940:  %var_2_940 = trunc i32 %var_2_939 to i8
; %var_2_1071 = trunc i32 %var_2_1070 to i8
; Matched:\<badref\>:  store i8 %var_2_940, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_1071, i8* %var_2_32, align 1
; Matched:%var_2_941:  %var_2_941 = lshr i32 %var_2_918, 31
; %var_2_1072 = lshr i32 %var_2_1049, 31
; Matched:%var_2_942:  %var_2_942 = lshr i32 %var_2_923, 31
; %var_2_1073 = lshr i32 %var_2_1054, 31
; Matched:%var_2_943:  %var_2_943 = xor i32 %var_2_942, %var_2_941
; %var_2_1074 = xor i32 %var_2_1073, %var_2_1072
; Matched:%var_2_103:  %var_2_103 = xor i32 %var_2_98, %var_2_100
; %var_2_1075 = xor i32 %var_2_1070, %var_2_1072
; Matched:%var_2_945:  %var_2_945 = add nuw nsw i32 %var_2_944, %var_2_943
; %var_2_1076 = add nuw nsw i32 %var_2_1075, %var_2_1074
; Matched:%var_2_105:  %var_2_105 = icmp eq i32 %var_2_104, 2
; %var_2_1077 = icmp eq i32 %var_2_1076, 2
; Matched:%var_2_947:  %var_2_947 = zext i1 %var_2_946 to i8
; %var_2_1078 = zext i1 %var_2_1077 to i8
; Matched:\<badref\>:  store i8 %var_2_947, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_1078, i8* %var_2_38, align 1
; Matched:%var_2_948:  %var_2_948 = icmp ne i8 %var_2_940, 0
; %var_2_1079 = icmp ne i8 %var_2_1071, 0
; Matched:%var_2_949:  %var_2_949 = xor i1 %var_2_948, %var_2_946
; %var_2_1080 = xor i1 %var_2_1079, %var_2_1077
; Matched:  %.demorgan114 = or i1 %var_2_937, %var_2_949
; %.demorgan60 = or i1 %var_2_1068, %var_2_1080
; Matched:%var_2_950:  %var_2_950 = xor i1 %.demorgan114, true
; %var_2_1081 = xor i1 %.demorgan60, true
; Matched:%var_2_951:  %var_2_951 = zext i1 %var_2_950 to i8
; %var_2_1082 = zext i1 %var_2_1081 to i8
; Matched:\<badref\>:  store i8 %var_2_951, i8* %CL, align 1, !tbaa !1284
; store i8 %var_2_1082, i8* %CL.i489, align 1
; Matched:%var_2_952:  %var_2_952 = add i64 %var_2_914, -165
; %var_2_1083 = add i64 %var_2_1045, -165
; Matched:%var_2_953:  %var_2_953 = add i64 %var_2_840, 15
; %var_2_1084 = add i64 %var_2_1044, 15
; Matched:\<badref\>:  store i64 %var_2_953, i64* %PC, align 8
; store i64 %var_2_1084, i64* %var_2_3, align 8
; Matched:%var_2_954:  %var_2_954 = inttoptr i64 %var_2_952 to i8*
; %var_2_1085 = inttoptr i64 %var_2_1083 to i8*
; Matched:\<badref\>:  store i8 %var_2_951, i8* %var_2_954, align 1
; store i8 %var_2_1082, i8* %var_2_1085, align 1
; Matched:  %.pre103 = load i64, i64* %PC, align 8
; %.pre49 = load i64, i64* %var_2_3, align 8
  br label %block_.L_400d63

block_.L_400d63:                                  ; preds = %block_400d54, %block_.L_400d3e
; Matched:%var_2_494:  %var_2_494 = phi i64 [ %.pre103, %block_400d54 ], [ %var_2_833, %block_400d3e ]
; %var_2_1086 = phi i64 [ %.pre49, %block_400d54 ], [ %var_2_1037, %block_.L_400d3e ]
%var_2_1087 = load i64, i64* %RBP.i, align 8
%var_2_1088 = add i64 %var_2_1087, -165
; Matched:%var_2_497:  %var_2_497 = add i64 %var_2_494, 6
; %var_2_1089 = add i64 %var_2_1086, 6
; Matched:\<badref\>:  store i64 %var_2_497, i64* %PC, align 8
; store i64 %var_2_1089, i64* %var_2_3, align 8
%var_2_1090 = inttoptr i64 %var_2_1088 to i8*
%var_2_1091 = load i8, i8* %var_2_1090, align 1
; Matched:\<badref\>:  store i8 %var_2_499, i8* %AL, align 1, !tbaa !1284
; store i8 %var_2_1091, i8* %AL.i488, align 1
%var_2_1092 = and i8 %var_2_1091, 1
store i8 0, i8* %var_2_14, align 1
; Matched:%var_2_501:  %var_2_501 = zext i8 %var_2_500 to i32
; %var_2_1093 = zext i8 %var_2_1092 to i32
; Matched:%var_2_502:  %var_2_502 = tail call i32 @llvm.ctpop.i32(i32 %var_2_501) #14
; %var_2_1094 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1093)
; Matched:%var_2_503:  %var_2_503 = trunc i32 %var_2_502 to i8
; %var_2_1095 = trunc i32 %var_2_1094 to i8
; Matched:%var_2_504:  %var_2_504 = xor i8 %var_2_503, 1
; %var_2_1096 = xor i8 %var_2_1095, 1
; Matched:\<badref\>:  store i8 %var_2_504, i8* %var_2_24, align 1, !tbaa !1279
; store i8 %var_2_1096, i8* %var_2_21, align 1
%var_2_1097 = xor i8 %var_2_1092, 1
; Matched:\<badref\>:  store i8 %var_2_505, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_1097, i8* %var_2_29, align 1
store i8 0, i8* %var_2_32, align 1
store i8 0, i8* %var_2_38, align 1
store i8 0, i8* %var_2_26, align 1
%var_2_1098 = icmp eq i8 %var_2_1097, 0
; Matched:  %.v = select i1 %var_2_506, i64 19, i64 14
; %.v = select i1 %var_2_1098, i64 19, i64 14
; Matched:%var_2_507:  %var_2_507 = add i64 %var_2_494, %.v
; %var_2_1099 = add i64 %var_2_1086, %.v
; Matched:\<badref\>:  store i64 %var_2_507, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1099, i64* %var_2_3, align 8
%var_2_1100 = add i64 %var_2_1087, -68
br i1 %var_2_1098, label %block_.L_400d76, label %block_400d71

block_400d71:                                     ; preds = %block_.L_400d63
; Matched:%var_2_1863:  %var_2_1863 = add i64 %var_2_507, 33
; %var_2_1101 = add i64 %var_2_1099, 33
; Matched:\<badref\>:  store i64 %var_2_1863, i64* %PC, align 8
; store i64 %var_2_1101, i64* %var_2_3, align 8
%var_2_1102 = inttoptr i64 %var_2_1100 to i32*
%var_2_1103 = load i32, i32* %var_2_1102, align 4
; Matched:%var_2_77:  %var_2_77 = zext i32 %var_2_76 to i64
; %var_2_1104 = zext i32 %var_2_1103 to i64
; Matched:\<badref\>:  store i64 %var_2_77, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1104, i64* %RAX.i798, align 8
; Matched:%var_2_1867:  %var_2_1867 = add i64 %var_2_495, -40
; %var_2_1105 = add i64 %var_2_1087, -40
; Matched:%var_2_1868:  %var_2_1868 = add i64 %var_2_507, 36
; %var_2_1106 = add i64 %var_2_1099, 36
; Matched:\<badref\>:  store i64 %var_2_1868, i64* %PC, align 8
; store i64 %var_2_1106, i64* %var_2_3, align 8
; Matched:%var_2_1869:  %var_2_1869 = inttoptr i64 %var_2_1867 to i32*
; %var_2_1107 = inttoptr i64 %var_2_1105 to i32*
; Matched:%var_2_1870:  %var_2_1870 = load i32, i32* %var_2_1869, align 4
; %var_2_1108 = load i32, i32* %var_2_1107, align 4
; Matched:%var_2_1871:  %var_2_1871 = add i32 %var_2_1870, %var_2_1865
; %var_2_1109 = add i32 %var_2_1108, %var_2_1103
; Matched:%var_2_1872:  %var_2_1872 = zext i32 %var_2_1871 to i64
; %var_2_1110 = zext i32 %var_2_1109 to i64
; Matched:\<badref\>:  store i64 %var_2_1872, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1110, i64* %RAX.i798, align 8
; Matched:%var_2_1873:  %var_2_1873 = icmp ult i32 %var_2_1871, %var_2_1865
; %var_2_1111 = icmp ult i32 %var_2_1109, %var_2_1103
; Matched:%var_2_1874:  %var_2_1874 = icmp ult i32 %var_2_1871, %var_2_1870
; %var_2_1112 = icmp ult i32 %var_2_1109, %var_2_1108
; Matched:%var_2_1875:  %var_2_1875 = or i1 %var_2_1873, %var_2_1874
; %var_2_1113 = or i1 %var_2_1111, %var_2_1112
; Matched:%var_2_1876:  %var_2_1876 = zext i1 %var_2_1875 to i8
; %var_2_1114 = zext i1 %var_2_1113 to i8
; Matched:\<badref\>:  store i8 %var_2_1876, i8* %var_2_17, align 1, !tbaa !1265
; store i8 %var_2_1114, i8* %var_2_14, align 1
; Matched:%var_2_1877:  %var_2_1877 = and i32 %var_2_1871, 255
; %var_2_1115 = and i32 %var_2_1109, 255
; Matched:%var_2_1878:  %var_2_1878 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1877) #14
; %var_2_1116 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1115)
; Matched:%var_2_1879:  %var_2_1879 = trunc i32 %var_2_1878 to i8
; %var_2_1117 = trunc i32 %var_2_1116 to i8
; Matched:%var_2_1880:  %var_2_1880 = and i8 %var_2_1879, 1
; %var_2_1118 = and i8 %var_2_1117, 1
; Matched:%var_2_1881:  %var_2_1881 = xor i8 %var_2_1880, 1
; %var_2_1119 = xor i8 %var_2_1118, 1
; Matched:\<badref\>:  store i8 %var_2_1881, i8* %var_2_24, align 1, !tbaa !1279
; store i8 %var_2_1119, i8* %var_2_21, align 1
; Matched:%var_2_1882:  %var_2_1882 = xor i32 %var_2_1870, %var_2_1865
; %var_2_1120 = xor i32 %var_2_1108, %var_2_1103
; Matched:%var_2_1883:  %var_2_1883 = xor i32 %var_2_1882, %var_2_1871
; %var_2_1121 = xor i32 %var_2_1120, %var_2_1109
; Matched:%var_2_1884:  %var_2_1884 = lshr i32 %var_2_1883, 4
; %var_2_1122 = lshr i32 %var_2_1121, 4
; Matched:%var_2_1885:  %var_2_1885 = trunc i32 %var_2_1884 to i8
; %var_2_1123 = trunc i32 %var_2_1122 to i8
; Matched:%var_2_1886:  %var_2_1886 = and i8 %var_2_1885, 1
; %var_2_1124 = and i8 %var_2_1123, 1
; Matched:\<badref\>:  store i8 %var_2_1886, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_1124, i8* %var_2_26, align 1
; Matched:%var_2_1887:  %var_2_1887 = icmp eq i32 %var_2_1871, 0
; %var_2_1125 = icmp eq i32 %var_2_1109, 0
; Matched:%var_2_1888:  %var_2_1888 = zext i1 %var_2_1887 to i8
; %var_2_1126 = zext i1 %var_2_1125 to i8
; Matched:\<badref\>:  store i8 %var_2_1888, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_1126, i8* %var_2_29, align 1
; Matched:%var_2_1889:  %var_2_1889 = lshr i32 %var_2_1871, 31
; %var_2_1127 = lshr i32 %var_2_1109, 31
; Matched:%var_2_1890:  %var_2_1890 = trunc i32 %var_2_1889 to i8
; %var_2_1128 = trunc i32 %var_2_1127 to i8
; Matched:\<badref\>:  store i8 %var_2_1890, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_1128, i8* %var_2_32, align 1
; Matched:%var_2_1891:  %var_2_1891 = lshr i32 %var_2_1865, 31
; %var_2_1129 = lshr i32 %var_2_1103, 31
; Matched:%var_2_1892:  %var_2_1892 = lshr i32 %var_2_1870, 31
; %var_2_1130 = lshr i32 %var_2_1108, 31
; Matched:%var_2_1893:  %var_2_1893 = xor i32 %var_2_1889, %var_2_1891
; %var_2_1131 = xor i32 %var_2_1127, %var_2_1129
; Matched:%var_2_1894:  %var_2_1894 = xor i32 %var_2_1889, %var_2_1892
; %var_2_1132 = xor i32 %var_2_1127, %var_2_1130
; Matched:%var_2_1895:  %var_2_1895 = add nuw nsw i32 %var_2_1893, %var_2_1894
; %var_2_1133 = add nuw nsw i32 %var_2_1131, %var_2_1132
; Matched:%var_2_1896:  %var_2_1896 = icmp eq i32 %var_2_1895, 2
; %var_2_1134 = icmp eq i32 %var_2_1133, 2
; Matched:%var_2_1897:  %var_2_1897 = zext i1 %var_2_1896 to i8
; %var_2_1135 = zext i1 %var_2_1134 to i8
; Matched:\<badref\>:  store i8 %var_2_1897, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_1135, i8* %var_2_38, align 1
; Matched:%var_2_1898:  %var_2_1898 = add i64 %var_2_507, 39
; %var_2_1136 = add i64 %var_2_1099, 39
; Matched:\<badref\>:  store i64 %var_2_1898, i64* %PC, align 8
; store i64 %var_2_1136, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_1871, i32* %var_2_1869, align 4
; store i32 %var_2_1109, i32* %var_2_1107, align 4
%var_2_1137 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_955:  %var_2_955 = add i64 %var_2_1689, -48
; %var_2_1138 = add i64 %var_2_1137, -48
%var_2_1139 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_620:  %var_2_620 = add i64 %var_2_619, 3
; %var_2_1140 = add i64 %var_2_1139, 3
; Matched:\<badref\>:  store i64 %var_2_62, i64* %PC, align 8
; store i64 %var_2_1140, i64* %var_2_3, align 8
; Matched:%var_2_1077:  %var_2_1077 = inttoptr i64 %var_2_1074 to i32*
; %var_2_1141 = inttoptr i64 %var_2_1138 to i32*
; Matched:%var_2_1078:  %var_2_1078 = load i32, i32* %var_2_1077, align 4
; %var_2_1142 = load i32, i32* %var_2_1141, align 4
; Matched:%var_2_959:  %var_2_959 = zext i32 %var_2_958 to i64
; %var_2_1143 = zext i32 %var_2_1142 to i64
; Matched:\<badref\>:  store i64 %var_2_1905, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1143, i64* %RAX.i798, align 8
; Matched:%var_2_1906:  %var_2_1906 = add i64 %var_2_1899, -32
; %var_2_1144 = add i64 %var_2_1137, -32
; Matched:%var_2_625:  %var_2_625 = add i64 %var_2_619, 6
; %var_2_1145 = add i64 %var_2_1139, 6
; Matched:\<badref\>:  store i64 %var_2_625, i64* %PC, align 8
; store i64 %var_2_1145, i64* %var_2_3, align 8
; Matched:%var_2_1908:  %var_2_1908 = inttoptr i64 %var_2_1906 to i32*
; %var_2_1146 = inttoptr i64 %var_2_1144 to i32*
; Matched:%var_2_1909:  %var_2_1909 = load i32, i32* %var_2_1908, align 4
; %var_2_1147 = load i32, i32* %var_2_1146, align 4
; Matched:%var_2_1910:  %var_2_1910 = add i32 %var_2_1909, %var_2_1904
; %var_2_1148 = add i32 %var_2_1147, %var_2_1142
; Matched:%var_2_1911:  %var_2_1911 = zext i32 %var_2_1910 to i64
; %var_2_1149 = zext i32 %var_2_1148 to i64
; Matched:\<badref\>:  store i64 %var_2_1911, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1149, i64* %RAX.i798, align 8
; Matched:%var_2_1912:  %var_2_1912 = icmp ult i32 %var_2_1910, %var_2_1904
; %var_2_1150 = icmp ult i32 %var_2_1148, %var_2_1142
; Matched:%var_2_1913:  %var_2_1913 = icmp ult i32 %var_2_1910, %var_2_1909
; %var_2_1151 = icmp ult i32 %var_2_1148, %var_2_1147
; Matched:%var_2_1914:  %var_2_1914 = or i1 %var_2_1912, %var_2_1913
; %var_2_1152 = or i1 %var_2_1150, %var_2_1151
; Matched:%var_2_1915:  %var_2_1915 = zext i1 %var_2_1914 to i8
; %var_2_1153 = zext i1 %var_2_1152 to i8
; Matched:\<badref\>:  store i8 %var_2_1915, i8* %var_2_17, align 1, !tbaa !1265
; store i8 %var_2_1153, i8* %var_2_14, align 1
; Matched:%var_2_1916:  %var_2_1916 = and i32 %var_2_1910, 255
; %var_2_1154 = and i32 %var_2_1148, 255
; Matched:%var_2_1917:  %var_2_1917 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1916) #14
; %var_2_1155 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1154)
; Matched:%var_2_1918:  %var_2_1918 = trunc i32 %var_2_1917 to i8
; %var_2_1156 = trunc i32 %var_2_1155 to i8
; Matched:%var_2_1919:  %var_2_1919 = and i8 %var_2_1918, 1
; %var_2_1157 = and i8 %var_2_1156, 1
; Matched:%var_2_1920:  %var_2_1920 = xor i8 %var_2_1919, 1
; %var_2_1158 = xor i8 %var_2_1157, 1
; Matched:\<badref\>:  store i8 %var_2_1920, i8* %var_2_24, align 1, !tbaa !1279
; store i8 %var_2_1158, i8* %var_2_21, align 1
; Matched:%var_2_1921:  %var_2_1921 = xor i32 %var_2_1909, %var_2_1904
; %var_2_1159 = xor i32 %var_2_1147, %var_2_1142
; Matched:%var_2_1922:  %var_2_1922 = xor i32 %var_2_1921, %var_2_1910
; %var_2_1160 = xor i32 %var_2_1159, %var_2_1148
; Matched:%var_2_1923:  %var_2_1923 = lshr i32 %var_2_1922, 4
; %var_2_1161 = lshr i32 %var_2_1160, 4
; Matched:%var_2_1924:  %var_2_1924 = trunc i32 %var_2_1923 to i8
; %var_2_1162 = trunc i32 %var_2_1161 to i8
; Matched:%var_2_1925:  %var_2_1925 = and i8 %var_2_1924, 1
; %var_2_1163 = and i8 %var_2_1162, 1
; Matched:\<badref\>:  store i8 %var_2_1925, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_1163, i8* %var_2_26, align 1
; Matched:%var_2_1926:  %var_2_1926 = icmp eq i32 %var_2_1910, 0
; %var_2_1164 = icmp eq i32 %var_2_1148, 0
; Matched:%var_2_1927:  %var_2_1927 = zext i1 %var_2_1926 to i8
; %var_2_1165 = zext i1 %var_2_1164 to i8
; Matched:\<badref\>:  store i8 %var_2_1927, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_1165, i8* %var_2_29, align 1
; Matched:%var_2_1928:  %var_2_1928 = lshr i32 %var_2_1910, 31
; %var_2_1166 = lshr i32 %var_2_1148, 31
; Matched:%var_2_1929:  %var_2_1929 = trunc i32 %var_2_1928 to i8
; %var_2_1167 = trunc i32 %var_2_1166 to i8
; Matched:\<badref\>:  store i8 %var_2_1929, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_1167, i8* %var_2_32, align 1
; Matched:%var_2_1930:  %var_2_1930 = lshr i32 %var_2_1904, 31
; %var_2_1168 = lshr i32 %var_2_1142, 31
; Matched:%var_2_1931:  %var_2_1931 = lshr i32 %var_2_1909, 31
; %var_2_1169 = lshr i32 %var_2_1147, 31
; Matched:%var_2_1932:  %var_2_1932 = xor i32 %var_2_1928, %var_2_1930
; %var_2_1170 = xor i32 %var_2_1166, %var_2_1168
; Matched:%var_2_1933:  %var_2_1933 = xor i32 %var_2_1928, %var_2_1931
; %var_2_1171 = xor i32 %var_2_1166, %var_2_1169
; Matched:%var_2_1934:  %var_2_1934 = add nuw nsw i32 %var_2_1932, %var_2_1933
; %var_2_1172 = add nuw nsw i32 %var_2_1170, %var_2_1171
; Matched:%var_2_1935:  %var_2_1935 = icmp eq i32 %var_2_1934, 2
; %var_2_1173 = icmp eq i32 %var_2_1172, 2
; Matched:%var_2_1936:  %var_2_1936 = zext i1 %var_2_1935 to i8
; %var_2_1174 = zext i1 %var_2_1173 to i8
; Matched:\<badref\>:  store i8 %var_2_1936, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_1174, i8* %var_2_38, align 1
%var_2_1175 = add i64 %var_2_1139, 9
store i64 %var_2_1175, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_1910, i32* %var_2_1908, align 4
; store i32 %var_2_1148, i32* %var_2_1146, align 4
%var_2_1176 = load i64, i64* %var_2_3, align 8
%var_2_1177 = add i64 %var_2_1176, -370
; Matched:\<badref\>:  store i64 %var_2_1939, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1177, i64* %var_2_3, align 8
  br label %block_.L_400c2f

block_.L_400d76:                                  ; preds = %block_.L_400d63
; Matched:%var_2_74:  %var_2_74 = add i64 %var_2_507, 3
; %var_2_1178 = add i64 %var_2_1099, 3
; Matched:\<badref\>:  store i64 %var_2_74, i64* %PC, align 8
; store i64 %var_2_1178, i64* %var_2_3, align 8
%var_2_1179 = inttoptr i64 %var_2_1100 to i32*
%var_2_1180 = load i32, i32* %var_2_1179, align 4
; Matched:%var_2_800:  %var_2_800 = zext i32 %var_2_799 to i64
; %var_2_1181 = zext i32 %var_2_1180 to i64
; Matched:\<badref\>:  store i64 %var_2_800, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1181, i64* %RAX.i798, align 8
%var_2_1182 = add i64 %var_2_1087, -40
; Matched:%var_2_79:  %var_2_79 = add i64 %var_2_507, 6
; %var_2_1183 = add i64 %var_2_1099, 6
; Matched:\<badref\>:  store i64 %var_2_79, i64* %PC, align 8
; store i64 %var_2_1183, i64* %var_2_3, align 8
%var_2_1184 = inttoptr i64 %var_2_1182 to i32*
%var_2_1185 = load i32, i32* %var_2_1184, align 4
; Matched:%var_2_82:  %var_2_82 = sub i32 %var_2_81, %var_2_76
; %var_2_1186 = sub i32 %var_2_1185, %var_2_1180
; Matched:%var_2_83:  %var_2_83 = zext i32 %var_2_82 to i64
; %var_2_1187 = zext i32 %var_2_1186 to i64
; Matched:\<badref\>:  store i64 %var_2_83, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1187, i64* %RCX.i788, align 8
; Matched:%var_2_925:  %var_2_925 = icmp ult i32 %var_2_918, %var_2_923
; %var_2_1188 = icmp ult i32 %var_2_1185, %var_2_1180
; Matched:%var_2_85:  %var_2_85 = zext i1 %var_2_84 to i8
; %var_2_1189 = zext i1 %var_2_1188 to i8
; Matched:\<badref\>:  store i8 %var_2_926, i8* %var_2_17, align 1, !tbaa !1265
; store i8 %var_2_1189, i8* %var_2_14, align 1
; Matched:%var_2_86:  %var_2_86 = and i32 %var_2_82, 255
; %var_2_1190 = and i32 %var_2_1186, 255
; Matched:%var_2_87:  %var_2_87 = tail call i32 @llvm.ctpop.i32(i32 %var_2_86) #14
; %var_2_1191 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1190)
; Matched:%var_2_88:  %var_2_88 = trunc i32 %var_2_87 to i8
; %var_2_1192 = trunc i32 %var_2_1191 to i8
; Matched:%var_2_89:  %var_2_89 = and i8 %var_2_88, 1
; %var_2_1193 = and i8 %var_2_1192, 1
; Matched:%var_2_90:  %var_2_90 = xor i8 %var_2_89, 1
; %var_2_1194 = xor i8 %var_2_1193, 1
; Matched:\<badref\>:  store i8 %var_2_931, i8* %var_2_24, align 1, !tbaa !1279
; store i8 %var_2_1194, i8* %var_2_21, align 1
; Matched:%var_2_91:  %var_2_91 = xor i32 %var_2_76, %var_2_81
; %var_2_1195 = xor i32 %var_2_1180, %var_2_1185
; Matched:%var_2_933:  %var_2_933 = xor i32 %var_2_932, %var_2_924
; %var_2_1196 = xor i32 %var_2_1195, %var_2_1186
; Matched:%var_2_93:  %var_2_93 = lshr i32 %var_2_92, 4
; %var_2_1197 = lshr i32 %var_2_1196, 4
; Matched:%var_2_94:  %var_2_94 = trunc i32 %var_2_93 to i8
; %var_2_1198 = trunc i32 %var_2_1197 to i8
; Matched:%var_2_95:  %var_2_95 = and i8 %var_2_94, 1
; %var_2_1199 = and i8 %var_2_1198, 1
; Matched:\<badref\>:  store i8 %var_2_95, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_1199, i8* %var_2_26, align 1
; Matched:%var_2_96:  %var_2_96 = icmp eq i32 %var_2_82, 0
; %var_2_1200 = icmp eq i32 %var_2_1186, 0
; Matched:%var_2_938:  %var_2_938 = zext i1 %var_2_937 to i8
; %var_2_1201 = zext i1 %var_2_1200 to i8
; Matched:\<badref\>:  store i8 %var_2_97, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_1201, i8* %var_2_29, align 1
; Matched:%var_2_939:  %var_2_939 = lshr i32 %var_2_924, 31
; %var_2_1202 = lshr i32 %var_2_1186, 31
; Matched:%var_2_99:  %var_2_99 = trunc i32 %var_2_98 to i8
; %var_2_1203 = trunc i32 %var_2_1202 to i8
; Matched:\<badref\>:  store i8 %var_2_99, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_1203, i8* %var_2_32, align 1
; Matched:%var_2_100:  %var_2_100 = lshr i32 %var_2_81, 31
; %var_2_1204 = lshr i32 %var_2_1185, 31
; Matched:%var_2_101:  %var_2_101 = lshr i32 %var_2_76, 31
; %var_2_1205 = lshr i32 %var_2_1180, 31
; Matched:%var_2_102:  %var_2_102 = xor i32 %var_2_101, %var_2_100
; %var_2_1206 = xor i32 %var_2_1205, %var_2_1204
; Matched:%var_2_944:  %var_2_944 = xor i32 %var_2_939, %var_2_941
; %var_2_1207 = xor i32 %var_2_1202, %var_2_1204
; Matched:%var_2_104:  %var_2_104 = add nuw nsw i32 %var_2_103, %var_2_102
; %var_2_1208 = add nuw nsw i32 %var_2_1207, %var_2_1206
; Matched:%var_2_946:  %var_2_946 = icmp eq i32 %var_2_945, 2
; %var_2_1209 = icmp eq i32 %var_2_1208, 2
; Matched:%var_2_106:  %var_2_106 = zext i1 %var_2_105 to i8
; %var_2_1210 = zext i1 %var_2_1209 to i8
; Matched:\<badref\>:  store i8 %var_2_106, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_1210, i8* %var_2_38, align 1
; Matched:%var_2_107:  %var_2_107 = add i64 %var_2_507, 11
; %var_2_1211 = add i64 %var_2_1099, 11
; Matched:\<badref\>:  store i64 %var_2_107, i64* %PC, align 8
; store i64 %var_2_1211, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_82, i32* %var_2_80, align 4
; store i32 %var_2_1186, i32* %var_2_1184, align 4
; Matched:%var_2_108:  %var_2_108 = load i64, i64* %RBP, align 8
; %var_2_1212 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_109:  %var_2_109 = add i64 %var_2_108, -68
; %var_2_1213 = add i64 %var_2_1212, -68
%var_2_1214 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1076:  %var_2_1076 = add i64 %var_2_1075, 3
; %var_2_1215 = add i64 %var_2_1214, 3
; Matched:\<badref\>:  store i64 %var_2_1076, i64* %PC, align 8
; store i64 %var_2_1215, i64* %var_2_3, align 8
; Matched:%var_2_112:  %var_2_112 = inttoptr i64 %var_2_109 to i32*
; %var_2_1216 = inttoptr i64 %var_2_1213 to i32*
; Matched:%var_2_113:  %var_2_113 = load i32, i32* %var_2_112, align 4
; %var_2_1217 = load i32, i32* %var_2_1216, align 4
; Matched:%var_2_114:  %var_2_114 = zext i32 %var_2_113 to i64
; %var_2_1218 = zext i32 %var_2_1217 to i64
; Matched:%var_2_115:  %var_2_115 = shl nuw i64 %var_2_114, 32
; %var_2_1219 = shl nuw i64 %var_2_1218, 32
; Matched:%var_2_116:  %var_2_116 = ashr i64 %var_2_115, 33
; %var_2_1220 = ashr i64 %var_2_1219, 33
; Matched:%var_2_117:  %var_2_117 = trunc i32 %var_2_113 to i8
; %var_2_1221 = trunc i32 %var_2_1217 to i8
; Matched:%var_2_118:  %var_2_118 = and i8 %var_2_117, 1
; %var_2_1222 = and i8 %var_2_1221, 1
; Matched:%var_2_119:  %var_2_119 = trunc i64 %var_2_116 to i32
; %var_2_1223 = trunc i64 %var_2_1220 to i32
; Matched:%var_2_120:  %var_2_120 = and i64 %var_2_116, 4294967295
; %var_2_1224 = and i64 %var_2_1220, 4294967295
; Matched:\<badref\>:  store i64 %var_2_120, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1224, i64* %RAX.i798, align 8
; Matched:\<badref\>:  store i8 %var_2_118, i8* %var_2_17, align 1, !tbaa !1284
; store i8 %var_2_1222, i8* %var_2_14, align 1
; Matched:%var_2_121:  %var_2_121 = and i32 %var_2_119, 255
; %var_2_1225 = and i32 %var_2_1223, 255
; Matched:%var_2_122:  %var_2_122 = tail call i32 @llvm.ctpop.i32(i32 %var_2_121) #14
; %var_2_1226 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1225)
; Matched:%var_2_123:  %var_2_123 = trunc i32 %var_2_122 to i8
; %var_2_1227 = trunc i32 %var_2_1226 to i8
; Matched:%var_2_124:  %var_2_124 = and i8 %var_2_123, 1
; %var_2_1228 = and i8 %var_2_1227, 1
; Matched:%var_2_125:  %var_2_125 = xor i8 %var_2_124, 1
; %var_2_1229 = xor i8 %var_2_1228, 1
; Matched:\<badref\>:  store i8 %var_2_125, i8* %var_2_24, align 1, !tbaa !1284
; store i8 %var_2_1229, i8* %var_2_21, align 1
store i8 0, i8* %var_2_26, align 1
; Matched:%var_2_126:  %var_2_126 = icmp eq i32 %var_2_119, 0
; %var_2_1230 = icmp eq i32 %var_2_1223, 0
; Matched:%var_2_127:  %var_2_127 = zext i1 %var_2_126 to i8
; %var_2_1231 = zext i1 %var_2_1230 to i8
; Matched:\<badref\>:  store i8 %var_2_127, i8* %var_2_32, align 1, !tbaa !1284
; store i8 %var_2_1231, i8* %var_2_29, align 1
; Matched:%var_2_128:  %var_2_128 = lshr i64 %var_2_116, 31
; %var_2_1232 = lshr i64 %var_2_1220, 31
; Matched:%var_2_129:  %var_2_129 = trunc i64 %var_2_128 to i8
; %var_2_1233 = trunc i64 %var_2_1232 to i8
; Matched:%var_2_130:  %var_2_130 = and i8 %var_2_129, 1
; %var_2_1234 = and i8 %var_2_1233, 1
; Matched:\<badref\>:  store i8 %var_2_130, i8* %var_2_35, align 1, !tbaa !1284
; store i8 %var_2_1234, i8* %var_2_32, align 1
store i8 0, i8* %var_2_38, align 1
; Matched:%var_2_131:  %var_2_131 = trunc i64 %var_2_116 to i32
; %var_2_1235 = trunc i64 %var_2_1220 to i32
%var_2_1236 = add i64 %var_2_1214, 8
store i64 %var_2_1236, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_131, i32* %var_2_112, align 4
; store i32 %var_2_1235, i32* %var_2_1216, align 4
; Matched:%var_2_133:  %var_2_133 = load i64, i64* %PC, align 8
; %var_2_1237 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_134:  %var_2_134 = add i64 %var_2_133, -76
; %var_2_1238 = add i64 %var_2_1237, -76
; Matched:\<badref\>:  store i64 %var_2_134, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1238, i64* %var_2_3, align 8
  br label %block_.L_400d3e

block_.L_400da6:                                  ; preds = %block_.L_400c2f
; Matched:%var_2_1900:  %var_2_1900 = add i64 %var_2_1899, -48
; %var_2_1239 = add i64 %var_2_443, -48
; Matched:%var_2_1578:  %var_2_1578 = add i64 %var_2_1725, 3
; %var_2_1240 = add i64 %var_2_479, 3
; Matched:\<badref\>:  store i64 %var_2_1578, i64* %PC, align 8
; store i64 %var_2_1240, i64* %var_2_3, align 8
; Matched:%var_2_621:  %var_2_621 = inttoptr i64 %var_2_618 to i32*
; %var_2_1241 = inttoptr i64 %var_2_1239 to i32*
; Matched:%var_2_1904:  %var_2_1904 = load i32, i32* %var_2_1903, align 4
; %var_2_1242 = load i32, i32* %var_2_1241, align 4
; Matched:%var_2_1905:  %var_2_1905 = zext i32 %var_2_1904 to i64
; %var_2_1243 = zext i32 %var_2_1242 to i64
; Matched:\<badref\>:  store i64 %var_2_1079, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1243, i64* %RAX.i798, align 8
; Matched:%var_2_960:  %var_2_960 = add i64 %var_2_1689, -60
; %var_2_1244 = add i64 %var_2_443, -60
; Matched:%var_2_961:  %var_2_961 = add i64 %var_2_1725, 6
; %var_2_1245 = add i64 %var_2_479, 6
; Matched:\<badref\>:  store i64 %var_2_1582, i64* %PC, align 8
; store i64 %var_2_1245, i64* %var_2_3, align 8
; Matched:%var_2_962:  %var_2_962 = inttoptr i64 %var_2_960 to i32*
; %var_2_1246 = inttoptr i64 %var_2_1244 to i32*
; Matched:\<badref\>:  store i32 %var_2_958, i32* %var_2_962, align 4
; store i32 %var_2_1242, i32* %var_2_1246, align 4
%.pre50 = load i64, i64* %var_2_3, align 8
  br label %block_.L_400dac

block_.L_400dac:                                  ; preds = %block_.L_401043, %block_.L_400da6
%var_2_1247 = phi i64 [ %.pre50, %block_.L_400da6 ], [ %var_2_2148, %block_.L_401043 ]
%MEMORY.8 = phi %struct.Memory* [ %var_2_340, %block_.L_400da6 ], [ %call2_400e53, %block_.L_401043 ]
%var_2_1248 = load i64, i64* %RBP.i, align 8
%var_2_1249 = add i64 %var_2_1248, -60
; Matched:%var_2_1615:  %var_2_1615 = add i64 %var_2_1612, 3
; %var_2_1250 = add i64 %var_2_1247, 3
; Matched:\<badref\>:  store i64 %var_2_1615, i64* %PC, align 8
; store i64 %var_2_1250, i64* %var_2_3, align 8
%var_2_1251 = inttoptr i64 %var_2_1249 to i32*
%var_2_1252 = load i32, i32* %var_2_1251, align 4
; Matched:%var_2_1618:  %var_2_1618 = zext i32 %var_2_1617 to i64
; %var_2_1253 = zext i32 %var_2_1252 to i64
; Matched:\<badref\>:  store i64 %var_2_1618, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1253, i64* %RAX.i798, align 8
%var_2_1254 = add i64 %var_2_1248, -52
; Matched:%var_2_1620:  %var_2_1620 = add i64 %var_2_1612, 6
; %var_2_1255 = add i64 %var_2_1247, 6
; Matched:\<badref\>:  store i64 %var_2_1620, i64* %PC, align 8
; store i64 %var_2_1255, i64* %var_2_3, align 8
%var_2_1256 = inttoptr i64 %var_2_1254 to i32*
%var_2_1257 = load i32, i32* %var_2_1256, align 4
%var_2_1258 = sub i32 %var_2_1252, %var_2_1257
; Matched:%var_2_1624:  %var_2_1624 = icmp ult i32 %var_2_1617, %var_2_1622
; %var_2_1259 = icmp ult i32 %var_2_1252, %var_2_1257
; Matched:%var_2_1625:  %var_2_1625 = zext i1 %var_2_1624 to i8
; %var_2_1260 = zext i1 %var_2_1259 to i8
; Matched:\<badref\>:  store i8 %var_2_1625, i8* %var_2_17, align 1, !tbaa !1265
; store i8 %var_2_1260, i8* %var_2_14, align 1
; Matched:%var_2_1626:  %var_2_1626 = and i32 %var_2_1623, 255
; %var_2_1261 = and i32 %var_2_1258, 255
; Matched:%var_2_1627:  %var_2_1627 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1626) #14
; %var_2_1262 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1261)
; Matched:%var_2_1628:  %var_2_1628 = trunc i32 %var_2_1627 to i8
; %var_2_1263 = trunc i32 %var_2_1262 to i8
; Matched:%var_2_1629:  %var_2_1629 = and i8 %var_2_1628, 1
; %var_2_1264 = and i8 %var_2_1263, 1
; Matched:%var_2_1630:  %var_2_1630 = xor i8 %var_2_1629, 1
; %var_2_1265 = xor i8 %var_2_1264, 1
; Matched:\<badref\>:  store i8 %var_2_1630, i8* %var_2_24, align 1, !tbaa !1279
; store i8 %var_2_1265, i8* %var_2_21, align 1
; Matched:%var_2_1631:  %var_2_1631 = xor i32 %var_2_1622, %var_2_1617
; %var_2_1266 = xor i32 %var_2_1257, %var_2_1252
; Matched:%var_2_1632:  %var_2_1632 = xor i32 %var_2_1631, %var_2_1623
; %var_2_1267 = xor i32 %var_2_1266, %var_2_1258
; Matched:%var_2_1633:  %var_2_1633 = lshr i32 %var_2_1632, 4
; %var_2_1268 = lshr i32 %var_2_1267, 4
; Matched:%var_2_1634:  %var_2_1634 = trunc i32 %var_2_1633 to i8
; %var_2_1269 = trunc i32 %var_2_1268 to i8
; Matched:%var_2_1635:  %var_2_1635 = and i8 %var_2_1634, 1
; %var_2_1270 = and i8 %var_2_1269, 1
; Matched:\<badref\>:  store i8 %var_2_1635, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_1270, i8* %var_2_26, align 1
; Matched:%var_2_1636:  %var_2_1636 = icmp eq i32 %var_2_1623, 0
; %var_2_1271 = icmp eq i32 %var_2_1258, 0
; Matched:%var_2_1637:  %var_2_1637 = zext i1 %var_2_1636 to i8
; %var_2_1272 = zext i1 %var_2_1271 to i8
; Matched:\<badref\>:  store i8 %var_2_1637, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_1272, i8* %var_2_29, align 1
%var_2_1273 = lshr i32 %var_2_1258, 31
%var_2_1274 = trunc i32 %var_2_1273 to i8
; Matched:\<badref\>:  store i8 %var_2_1639, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_1274, i8* %var_2_32, align 1
%var_2_1275 = lshr i32 %var_2_1252, 31
%var_2_1276 = lshr i32 %var_2_1257, 31
%var_2_1277 = xor i32 %var_2_1276, %var_2_1275
%var_2_1278 = xor i32 %var_2_1273, %var_2_1275
%var_2_1279 = add nuw nsw i32 %var_2_1278, %var_2_1277
%var_2_1280 = icmp eq i32 %var_2_1279, 2
; Matched:%var_2_1646:  %var_2_1646 = zext i1 %var_2_1645 to i8
; %var_2_1281 = zext i1 %var_2_1280 to i8
; Matched:\<badref\>:  store i8 %var_2_1646, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_1281, i8* %var_2_38, align 1
%var_2_1282 = icmp ne i8 %var_2_1274, 0
%var_2_1283 = xor i1 %var_2_1282, %var_2_1280
%.v71 = select i1 %var_2_1283, i64 12, i64 674
%var_2_1284 = add i64 %var_2_1247, %.v71
; Matched:\<badref\>:  store i64 %var_2_1649, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1284, i64* %var_2_3, align 8
br i1 %var_2_1283, label %block_400db8, label %block_.L_40104e

block_400db8:                                     ; preds = %block_.L_400dac
store <4 x i32> zeroinitializer, <4 x i32>* %var_2_229, align 1
%var_2_1285 = add i64 %var_2_1284, add (i64 ptrtoint (%G_0x355__rip__type* @G_0x355__rip_ to i64), i64 3)
%var_2_1286 = add i64 %var_2_1284, 11
store i64 %var_2_1286, i64* %var_2_3, align 8
%var_2_1287 = inttoptr i64 %var_2_1285 to i64*
%var_2_1288 = load i64, i64* %var_2_1287, align 8
store i64 %var_2_1288, i64* %var_2_206, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_1841, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_208, align 1
%var_2_1289 = add i64 %var_2_1284, add (i64 ptrtoint (%G_0x355__rip__type* @G_0x355__rip_ to i64), i64 11)
%var_2_1290 = add i64 %var_2_1284, 19
store i64 %var_2_1290, i64* %var_2_3, align 8
%var_2_1291 = inttoptr i64 %var_2_1289 to i64*
%var_2_1292 = load i64, i64* %var_2_1291, align 8
store i64 %var_2_1292, i64* %var_2_209, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_1844, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_211, align 1
%var_2_1293 = add i64 %var_2_1284, add (i64 ptrtoint (%G_0x355__rip__type* @G_0x355__rip_ to i64), i64 19)
%var_2_1294 = add i64 %var_2_1284, 27
store i64 %var_2_1294, i64* %var_2_3, align 8
%var_2_1295 = inttoptr i64 %var_2_1293 to i64*
%var_2_1296 = load i64, i64* %var_2_1295, align 8
store i64 %var_2_1296, i64* %var_2_214, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_1848, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_216, align 1
%var_2_1297 = add i64 %var_2_1284, add (i64 ptrtoint (%G_0x355__rip__type* @G_0x355__rip_ to i64), i64 27)
%var_2_1298 = add i64 %var_2_1284, 35
store i64 %var_2_1298, i64* %var_2_3, align 8
%var_2_1299 = inttoptr i64 %var_2_1297 to i64*
%var_2_1300 = load i64, i64* %var_2_1299, align 8
store i64 %var_2_1300, i64* %var_2_219, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_1852, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_221, align 1
; Matched:%var_2_1956:  %var_2_1956 = add i64 %var_2_1649, 38
; %var_2_1301 = add i64 %var_2_1284, 38
; Matched:\<badref\>:  store i64 %var_2_1956, i64* %PC, align 8
; store i64 %var_2_1301, i64* %var_2_3, align 8
; Matched:%var_2_1957:  %var_2_1957 = load i32, i32* %var_2_1616, align 4
; %var_2_1302 = load i32, i32* %var_2_1251, align 4
; Matched:%var_2_1958:  %var_2_1958 = shl i32 %var_2_1957, 1
; %var_2_1303 = shl i32 %var_2_1302, 1
; Matched:%var_2_1959:  %var_2_1959 = icmp slt i32 %var_2_1957, 0
; %var_2_1304 = icmp slt i32 %var_2_1302, 0
; Matched:%var_2_1960:  %var_2_1960 = icmp slt i32 %var_2_1958, 0
; %var_2_1305 = icmp slt i32 %var_2_1303, 0
; Matched:%var_2_1961:  %var_2_1961 = xor i1 %var_2_1959, %var_2_1960
; %var_2_1306 = xor i1 %var_2_1304, %var_2_1305
; Matched:%var_2_1962:  %var_2_1962 = zext i32 %var_2_1958 to i64
; %var_2_1307 = zext i32 %var_2_1303 to i64
; Matched:\<badref\>:  store i64 %var_2_1962, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1307, i64* %RAX.i798, align 8
; Matched:  %.lobit60 = lshr i32 %var_2_1957, 31
; %.lobit12 = lshr i32 %var_2_1302, 31
; Matched:%var_2_1963:  %var_2_1963 = trunc i32 %.lobit60 to i8
; %var_2_1308 = trunc i32 %.lobit12 to i8
; Matched:\<badref\>:  store i8 %var_2_1963, i8* %var_2_17, align 1, !tbaa !1284
; store i8 %var_2_1308, i8* %var_2_14, align 1
; Matched:%var_2_1964:  %var_2_1964 = and i32 %var_2_1958, 254
; %var_2_1309 = and i32 %var_2_1303, 254
; Matched:%var_2_1965:  %var_2_1965 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1964) #14
; %var_2_1310 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1309)
; Matched:%var_2_1966:  %var_2_1966 = trunc i32 %var_2_1965 to i8
; %var_2_1311 = trunc i32 %var_2_1310 to i8
; Matched:%var_2_1967:  %var_2_1967 = and i8 %var_2_1966, 1
; %var_2_1312 = and i8 %var_2_1311, 1
; Matched:%var_2_1968:  %var_2_1968 = xor i8 %var_2_1967, 1
; %var_2_1313 = xor i8 %var_2_1312, 1
; Matched:\<badref\>:  store i8 %var_2_1968, i8* %var_2_24, align 1, !tbaa !1284
; store i8 %var_2_1313, i8* %var_2_21, align 1
store i8 0, i8* %var_2_26, align 1
; Matched:%var_2_1969:  %var_2_1969 = icmp eq i32 %var_2_1958, 0
; %var_2_1314 = icmp eq i32 %var_2_1303, 0
; Matched:%var_2_1970:  %var_2_1970 = zext i1 %var_2_1969 to i8
; %var_2_1315 = zext i1 %var_2_1314 to i8
; Matched:\<badref\>:  store i8 %var_2_1970, i8* %var_2_32, align 1, !tbaa !1284
; store i8 %var_2_1315, i8* %var_2_29, align 1
; Matched:%var_2_1971:  %var_2_1971 = lshr i32 %var_2_1957, 30
; %var_2_1316 = lshr i32 %var_2_1302, 30
; Matched:%var_2_1972:  %var_2_1972 = trunc i32 %var_2_1971 to i8
; %var_2_1317 = trunc i32 %var_2_1316 to i8
; Matched:%var_2_1973:  %var_2_1973 = and i8 %var_2_1972, 1
; %var_2_1318 = and i8 %var_2_1317, 1
; Matched:\<badref\>:  store i8 %var_2_1973, i8* %var_2_35, align 1, !tbaa !1284
; store i8 %var_2_1318, i8* %var_2_32, align 1
; Matched:%var_2_1974:  %var_2_1974 = zext i1 %var_2_1961 to i8
; %var_2_1319 = zext i1 %var_2_1306 to i8
; Matched:\<badref\>:  store i8 %var_2_1974, i8* %var_2_41, align 1, !tbaa !1284
; store i8 %var_2_1319, i8* %var_2_38, align 1
; Matched:%var_2_1975:  %var_2_1975 = add i64 %var_2_1613, -64
; %var_2_1320 = add i64 %var_2_1248, -64
%var_2_1321 = add i64 %var_2_1284, 43
store i64 %var_2_1321, i64* %var_2_3, align 8
; Matched:%var_2_1977:  %var_2_1977 = inttoptr i64 %var_2_1975 to i32*
; %var_2_1322 = inttoptr i64 %var_2_1320 to i32*
; Matched:\<badref\>:  store i32 %var_2_1958, i32* %var_2_1977, align 4
; store i32 %var_2_1303, i32* %var_2_1322, align 4
%var_2_1323 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1979:  %var_2_1979 = add i64 %var_2_1978, -24
; %var_2_1324 = add i64 %var_2_1323, -24
%var_2_1325 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2027:  %var_2_2027 = add i64 %var_2_2026, 5
; %var_2_1326 = add i64 %var_2_1325, 5
; Matched:\<badref\>:  store i64 %var_2_1463, i64* %PC, align 8
; store i64 %var_2_1326, i64* %var_2_3, align 8
; Matched:%var_2_1982:  %var_2_1982 = inttoptr i64 %var_2_1979 to i32*
; %var_2_1327 = inttoptr i64 %var_2_1324 to i32*
; Matched:%var_2_1983:  %var_2_1983 = load i32, i32* %var_2_1982, align 4
; %var_2_1328 = load i32, i32* %var_2_1327, align 4
; Matched:%var_2_1984:  %var_2_1984 = sitofp i32 %var_2_1983 to double
; %var_2_1329 = sitofp i32 %var_2_1328 to double
; Matched:%var_2_1985:  %var_2_1985 = load i64, i64* %var_2_1854, align 1
; %var_2_1330 = load i64, i64* %var_2_224, align 1
; Matched:%var_2_1986:  %var_2_1986 = load double, double* %var_2_1849, align 1
; %var_2_1331 = load double, double* %var_2_218, align 1
; Matched:%var_2_1987:  %var_2_1987 = fmul double %var_2_1984, %var_2_1986
; %var_2_1332 = fmul double %var_2_1329, %var_2_1331
; Matched:\<badref\>:  store double %var_2_1987, double* %var_2_1853, align 1, !tbaa !1285
; store double %var_2_1332, double* %var_2_223, align 1
%var_2_1333 = add i64 %var_2_1323, -64
; Matched:%var_2_1199:  %var_2_1199 = add i64 %var_2_1194, 12
; %var_2_1334 = add i64 %var_2_1325, 12
; Matched:\<badref\>:  store i64 %var_2_391, i64* %PC, align 8
; store i64 %var_2_1334, i64* %var_2_3, align 8
%var_2_1335 = inttoptr i64 %var_2_1333 to i32*
%var_2_1336 = load i32, i32* %var_2_1335, align 4
%var_2_1337 = zext i32 %var_2_1336 to i64
; Matched:\<badref\>:  store i64 %var_2_1513, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1337, i64* %RAX.i798, align 8
%var_2_1338 = sext i32 %var_2_1336 to i64
%var_2_1339 = lshr i64 %var_2_1338, 32
; Matched:\<badref\>:  store i64 %var_2_1994, i64* %var_2_1827, align 8, !tbaa !1261
; store i64 %var_2_1339, i64* %var_2_192, align 8
%var_2_1340 = add i64 %var_2_1323, -48
%var_2_1341 = add i64 %var_2_1325, 16
; Matched:\<badref\>:  store i64 %var_2_1203, i64* %PC, align 8
; store i64 %var_2_1341, i64* %var_2_3, align 8
%var_2_1342 = inttoptr i64 %var_2_1340 to i32*
%var_2_1343 = load i32, i32* %var_2_1342, align 4
%var_2_1344 = sext i32 %var_2_1343 to i64
%var_2_1345 = shl nuw i64 %var_2_1339, 32
%var_2_1346 = or i64 %var_2_1345, %var_2_1337
%var_2_1347 = sdiv i64 %var_2_1346, %var_2_1344
%var_2_1348 = shl i64 %var_2_1347, 32
%var_2_1349 = ashr exact i64 %var_2_1348, 32
%var_2_1350 = icmp eq i64 %var_2_1347, %var_2_1349
br i1 %var_2_1350, label %var_2_1353, label %var_2_1351

var_2_1351:
%var_2_1352 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %var_2_1341, %struct.Memory* %MEMORY.8)
; Matched:  %.pre105 = load i32, i32* %EAX, align 4
; %.pre51 = load i32, i32* %EAX.i795, align 4
; Matched:  %.pre106 = load i64, i64* %PC, align 8
; %.pre52 = load i64, i64* %var_2_3, align 8
; Matched:  %.pre107 = load double, double* %var_2_1853, align 1
; %.pre53 = load double, double* %var_2_223, align 1
; Matched:  %.pre108 = load i64, i64* %var_2_1854, align 1
; %.pre54 = load i64, i64* %var_2_224, align 1
  %.pre55 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl_MINUS0x30__rbp_.exit

var_2_1353:
; Matched:%var_2_2009:  %var_2_2009 = srem i64 %var_2_2001, %var_2_1999
; %var_2_1354 = srem i64 %var_2_1346, %var_2_1344
; Matched:%var_2_2010:  %var_2_2010 = and i64 %var_2_2002, 4294967295
; %var_2_1355 = and i64 %var_2_1347, 4294967295
; Matched:\<badref\>:  store i64 %var_2_2010, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1355, i64* %RAX.i798, align 8
; Matched:%var_2_2011:  %var_2_2011 = and i64 %var_2_2009, 4294967295
; %var_2_1356 = and i64 %var_2_1354, 4294967295
; Matched:\<badref\>:  store i64 %var_2_2011, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1356, i64* %RDX.i786, align 8
store i8 0, i8* %var_2_14, align 1
store i8 0, i8* %var_2_21, align 1
store i8 0, i8* %var_2_26, align 1
store i8 0, i8* %var_2_29, align 1
store i8 0, i8* %var_2_32, align 1
store i8 0, i8* %var_2_38, align 1
; Matched:%var_2_2012:  %var_2_2012 = trunc i64 %var_2_2002 to i32
; %var_2_1357 = trunc i64 %var_2_1347 to i32
  br label %routine_idivl_MINUS0x30__rbp_.exit

routine_idivl_MINUS0x30__rbp_.exit:               ; preds = %var_2_1353, %var_2_1351
; Matched:%var_2_2013:  %var_2_2013 = phi i64 [ %.pre109, %var_2_2006 ], [ %var_2_1978, %var_2_2008 ]
; %var_2_1358 = phi i64 [ %.pre55, %var_2_1351 ], [ %var_2_1323, %var_2_1353 ]
; Matched:%var_2_2014:  %var_2_2014 = phi i64 [ %.pre108, %var_2_2006 ], [ %var_2_1985, %var_2_2008 ]
; %var_2_1359 = phi i64 [ %.pre54, %var_2_1351 ], [ %var_2_1330, %var_2_1353 ]
; Matched:%var_2_2015:  %var_2_2015 = phi double [ %.pre107, %var_2_2006 ], [ %var_2_1987, %var_2_2008 ]
; %var_2_1360 = phi double [ %.pre53, %var_2_1351 ], [ %var_2_1332, %var_2_1353 ]
; Matched:%var_2_2016:  %var_2_2016 = phi i64 [ %.pre106, %var_2_2006 ], [ %var_2_1996, %var_2_2008 ]
; %var_2_1361 = phi i64 [ %.pre52, %var_2_1351 ], [ %var_2_1341, %var_2_1353 ]
; Matched:%var_2_2017:  %var_2_2017 = phi i32 [ %.pre105, %var_2_2006 ], [ %var_2_2012, %var_2_2008 ]
; %var_2_1362 = phi i32 [ %.pre51, %var_2_1351 ], [ %var_2_1357, %var_2_1353 ]
%var_2_1363 = phi %struct.Memory* [ %var_2_1352, %var_2_1351 ], [ %MEMORY.8, %var_2_1353 ]
; Matched:%var_2_2019:  %var_2_2019 = sitofp i32 %var_2_2017 to double
; %var_2_1364 = sitofp i32 %var_2_1362 to double
; Matched:\<badref\>:  store double %var_2_2019, double* %var_2_1849, align 1, !tbaa !1285
; store double %var_2_1364, double* %var_2_218, align 1
; Matched:%var_2_2020:  %var_2_2020 = fdiv double %var_2_2015, %var_2_2019
; %var_2_1365 = fdiv double %var_2_1360, %var_2_1364
; Matched:\<badref\>:  store double %var_2_2020, double* %var_2_1853, align 1, !tbaa !1285
; store double %var_2_1365, double* %var_2_223, align 1
; Matched:\<badref\>:  store i64 %var_2_2014, i64* %var_2_1854, align 1, !tbaa !1285
; store i64 %var_2_1359, i64* %var_2_224, align 1
; Matched:%var_2_2021:  %var_2_2021 = add i64 %var_2_2013, -120
; %var_2_1366 = add i64 %var_2_1358, -120
; Matched:%var_2_2022:  %var_2_2022 = add i64 %var_2_2016, 13
; %var_2_1367 = add i64 %var_2_1361, 13
; Matched:\<badref\>:  store i64 %var_2_2022, i64* %PC, align 8
; store i64 %var_2_1367, i64* %var_2_3, align 8
; Matched:%var_2_2023:  %var_2_2023 = inttoptr i64 %var_2_2021 to double*
; %var_2_1368 = inttoptr i64 %var_2_1366 to double*
; Matched:\<badref\>:  store double %var_2_2020, double* %var_2_2023, align 8
; store double %var_2_1365, double* %var_2_1368, align 8
; Matched:%var_2_2024:  %var_2_2024 = load i64, i64* %RBP, align 8
; %var_2_1369 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2025:  %var_2_2025 = add i64 %var_2_2024, -120
; %var_2_1370 = add i64 %var_2_1369, -120
%var_2_1371 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_591:  %var_2_591 = add i64 %var_2_590, 5
; %var_2_1372 = add i64 %var_2_1371, 5
; Matched:\<badref\>:  store i64 %var_2_1981, i64* %PC, align 8
; store i64 %var_2_1372, i64* %var_2_3, align 8
; Matched:%var_2_2028:  %var_2_2028 = load double, double* %var_2_1845, align 1
; %var_2_1373 = load double, double* %var_2_213, align 1
; Matched:%var_2_2029:  %var_2_2029 = inttoptr i64 %var_2_2025 to double*
; %var_2_1374 = inttoptr i64 %var_2_1370 to double*
; Matched:%var_2_2030:  %var_2_2030 = load double, double* %var_2_2029, align 8
; %var_2_1375 = load double, double* %var_2_1374, align 8
; Matched:%var_2_2031:  %var_2_2031 = fmul double %var_2_2028, %var_2_2030
; %var_2_1376 = fmul double %var_2_1373, %var_2_1375
; Matched:\<badref\>:  store double %var_2_2031, double* %var_2_1845, align 1, !tbaa !1285
; store double %var_2_1376, double* %var_2_213, align 1
; Matched:%var_2_2032:  %var_2_2032 = add i64 %var_2_2024, -176
; %var_2_1377 = add i64 %var_2_1369, -176
; Matched:%var_2_571:  %var_2_571 = add i64 %var_2_564, 13
; %var_2_1378 = add i64 %var_2_1371, 13
; Matched:\<badref\>:  store i64 %var_2_257, i64* %PC, align 8
; store i64 %var_2_1378, i64* %var_2_3, align 8
; Matched:%var_2_2034:  %var_2_2034 = load i64, i64* %var_2_1828, align 1
; %var_2_1379 = load i64, i64* %var_2_225, align 1
; Matched:%var_2_2035:  %var_2_2035 = inttoptr i64 %var_2_2032 to i64*
; %var_2_1380 = inttoptr i64 %var_2_1377 to i64*
; Matched:\<badref\>:  store i64 %var_2_2034, i64* %var_2_2035, align 8
; store i64 %var_2_1379, i64* %var_2_1380, align 8
; Matched:%var_2_2036:  %var_2_2036 = load i64, i64* %PC, align 8
; %var_2_1381 = load i64, i64* %var_2_3, align 8
%var_2_1382 = load <2 x i32>, <2 x i32>* %var_2_226, align 1
%var_2_1383 = load <2 x i32>, <2 x i32>* %var_2_227, align 1
%var_2_1384 = extractelement <2 x i32> %var_2_1382, i32 0
; Matched:\<badref\>:  store i32 %var_2_2039, i32* %var_2_1832, align 1, !tbaa !1288
; store i32 %var_2_1384, i32* %var_2_198, align 1
%var_2_1385 = extractelement <2 x i32> %var_2_1382, i32 1
; Matched:\<badref\>:  store i32 %var_2_2040, i32* %var_2_1834, align 1, !tbaa !1288
; store i32 %var_2_1385, i32* %var_2_200, align 1
%var_2_1386 = extractelement <2 x i32> %var_2_1383, i32 0
; Matched:\<badref\>:  store i32 %var_2_2041, i32* %var_2_1835, align 1, !tbaa !1288
; store i32 %var_2_1386, i32* %var_2_201, align 1
%var_2_1387 = extractelement <2 x i32> %var_2_1383, i32 1
; Matched:\<badref\>:  store i32 %var_2_2042, i32* %var_2_1837, align 1, !tbaa !1288
; store i32 %var_2_1387, i32* %var_2_203, align 1
; Matched:%var_2_2043:  %var_2_2043 = load i64, i64* %RBP, align 8
; %var_2_1388 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2044:  %var_2_2044 = add i64 %var_2_2043, -184
; %var_2_1389 = add i64 %var_2_1388, -184
; Matched:%var_2_2045:  %var_2_2045 = add i64 %var_2_2036, 11
; %var_2_1390 = add i64 %var_2_1381, 11
; Matched:\<badref\>:  store i64 %var_2_2045, i64* %PC, align 8
; store i64 %var_2_1390, i64* %var_2_3, align 8
; Matched:%var_2_2046:  %var_2_2046 = load i64, i64* %var_2_1842, align 1
; %var_2_1391 = load i64, i64* %var_2_209, align 1
; Matched:%var_2_2047:  %var_2_2047 = inttoptr i64 %var_2_2044 to i64*
; %var_2_1392 = inttoptr i64 %var_2_1389 to i64*
; Matched:\<badref\>:  store i64 %var_2_2046, i64* %var_2_2047, align 8
; store i64 %var_2_1391, i64* %var_2_1392, align 8
; Matched:%var_2_2048:  %var_2_2048 = load i64, i64* %RBP, align 8
; %var_2_1393 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2049:  %var_2_2049 = add i64 %var_2_2048, -192
; %var_2_1394 = add i64 %var_2_1393, -192
%var_2_1395 = load i64, i64* %var_2_3, align 8
%var_2_1396 = add i64 %var_2_1395, 8
store i64 %var_2_1396, i64* %var_2_3, align 8
; Matched:%var_2_2052:  %var_2_2052 = load i64, i64* %var_2_1839, align 1
; %var_2_1397 = load i64, i64* %var_2_206, align 1
; Matched:%var_2_2053:  %var_2_2053 = inttoptr i64 %var_2_2049 to i64*
; %var_2_1398 = inttoptr i64 %var_2_1394 to i64*
; Matched:\<badref\>:  store i64 %var_2_2052, i64* %var_2_2053, align 8
; store i64 %var_2_1397, i64* %var_2_1398, align 8
%var_2_1399 = load i64, i64* %var_2_3, align 8
%var_2_1400 = add i64 %var_2_1399, -2177
; Matched:%var_2_2056:  %var_2_2056 = add i64 %var_2_2054, 5
; %var_2_1401 = add i64 %var_2_1399, 5
; Matched:%var_2_2093:  %var_2_2093 = load i64, i64* %RSP, align 8, !tbaa !1261
; %var_2_1402 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_2058:  %var_2_2058 = add i64 %var_2_2057, -8
; %var_2_1403 = add i64 %var_2_1402, -8
; Matched:%var_2_2059:  %var_2_2059 = inttoptr i64 %var_2_2058 to i64*
; %var_2_1404 = inttoptr i64 %var_2_1403 to i64*
; Matched:\<badref\>:  store i64 %var_2_2056, i64* %var_2_2059, align 8
; store i64 %var_2_1401, i64* %var_2_1404, align 8
; Matched:\<badref\>:  store i64 %var_2_2094, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1403, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_2055, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1400, i64* %var_2_3, align 8
%call2_400e21 = tail call %struct.Memory* @ext_sin(%struct.State* nonnull %0, i64 %var_2_1400, %struct.Memory* %var_2_1363)
%var_2_1405 = load i64, i64* %RBP.i, align 8
%var_2_1406 = add i64 %var_2_1405, -160
%var_2_1407 = load i64, i64* %var_2_3, align 8
%var_2_1408 = add i64 %var_2_1407, 8
store i64 %var_2_1408, i64* %var_2_3, align 8
%var_2_1409 = load i64, i64* %var_2_225, align 1
%var_2_1410 = inttoptr i64 %var_2_1406 to i64*
store i64 %var_2_1409, i64* %var_2_1410, align 8
; Matched:%var_2_2067:  %var_2_2067 = load i64, i64* %RBP, align 8
; %var_2_1411 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2068:  %var_2_2068 = add i64 %var_2_2067, -184
; %var_2_1412 = add i64 %var_2_1411, -184
%var_2_1413 = load i64, i64* %var_2_3, align 8
%var_2_1414 = add i64 %var_2_1413, 8
store i64 %var_2_1414, i64* %var_2_3, align 8
; Matched:%var_2_2071:  %var_2_2071 = inttoptr i64 %var_2_2068 to i64*
; %var_2_1415 = inttoptr i64 %var_2_1412 to i64*
; Matched:%var_2_2072:  %var_2_2072 = load i64, i64* %var_2_2071, align 8
; %var_2_1416 = load i64, i64* %var_2_1415, align 8
; Matched:\<badref\>:  store i64 %var_2_2072, i64* %var_2_1828, align 1, !tbaa !1285
; store i64 %var_2_1416, i64* %var_2_225, align 1
store double 0.000000e+00, double* %var_2_195, align 1
; Matched:%var_2_2073:  %var_2_2073 = add i64 %var_2_2067, -160
; %var_2_1417 = add i64 %var_2_1411, -160
; Matched:%var_2_2074:  %var_2_2074 = add i64 %var_2_2069, 16
; %var_2_1418 = add i64 %var_2_1413, 16
; Matched:\<badref\>:  store i64 %var_2_2074, i64* %PC, align 8
; store i64 %var_2_1418, i64* %var_2_3, align 8
; Matched:%var_2_2075:  %var_2_2075 = bitcast i64 %var_2_2072 to double
; %var_2_1419 = bitcast i64 %var_2_1416 to double
; Matched:%var_2_2076:  %var_2_2076 = inttoptr i64 %var_2_2073 to double*
; %var_2_1420 = inttoptr i64 %var_2_1417 to double*
; Matched:%var_2_2077:  %var_2_2077 = load double, double* %var_2_2076, align 8
; %var_2_1421 = load double, double* %var_2_1420, align 8
; Matched:%var_2_2078:  %var_2_2078 = fmul double %var_2_2075, %var_2_2077
; %var_2_1422 = fmul double %var_2_1419, %var_2_1421
; Matched:\<badref\>:  store double %var_2_2078, double* %var_2_1857, align 1, !tbaa !1285
; store double %var_2_1422, double* %var_2_228, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_1829, align 1, !tbaa !1285
; store i64 0, i64* %var_2_194, align 1
; Matched:%var_2_2079:  %var_2_2079 = add i64 %var_2_2069, 24
; %var_2_1423 = add i64 %var_2_1413, 24
; Matched:\<badref\>:  store i64 %var_2_2079, i64* %PC, align 8
; store i64 %var_2_1423, i64* %var_2_3, align 8
; Matched:%var_2_2080:  %var_2_2080 = load double, double* %var_2_2076, align 8
; %var_2_1424 = load double, double* %var_2_1420, align 8
; Matched:%var_2_2081:  %var_2_2081 = fmul double %var_2_2078, %var_2_2080
; %var_2_1425 = fmul double %var_2_1422, %var_2_1424
; Matched:\<badref\>:  store double %var_2_2081, double* %var_2_1857, align 1, !tbaa !1285
; store double %var_2_1425, double* %var_2_228, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_1829, align 1, !tbaa !1285
; store i64 0, i64* %var_2_194, align 1
; Matched:%var_2_2082:  %var_2_2082 = add i64 %var_2_2067, -144
; %var_2_1426 = add i64 %var_2_1411, -144
; Matched:%var_2_2083:  %var_2_2083 = add i64 %var_2_2069, 32
; %var_2_1427 = add i64 %var_2_1413, 32
; Matched:\<badref\>:  store i64 %var_2_2083, i64* %PC, align 8
; store i64 %var_2_1427, i64* %var_2_3, align 8
; Matched:%var_2_2084:  %var_2_2084 = inttoptr i64 %var_2_2082 to double*
; %var_2_1428 = inttoptr i64 %var_2_1426 to double*
; Matched:\<badref\>:  store double %var_2_2081, double* %var_2_2084, align 8
; store double %var_2_1425, double* %var_2_1428, align 8
; Matched:%var_2_2085:  %var_2_2085 = load i64, i64* %RBP, align 8
; %var_2_1429 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2086:  %var_2_2086 = add i64 %var_2_2085, -120
; %var_2_1430 = add i64 %var_2_1429, -120
%var_2_1431 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1439:  %var_2_1439 = add i64 %var_2_1438, 5
; %var_2_1432 = add i64 %var_2_1431, 5
; Matched:\<badref\>:  store i64 %var_2_1439, i64* %PC, align 8
; store i64 %var_2_1432, i64* %var_2_3, align 8
; Matched:%var_2_2089:  %var_2_2089 = inttoptr i64 %var_2_2086 to i64*
; %var_2_1433 = inttoptr i64 %var_2_1430 to i64*
; Matched:%var_2_2090:  %var_2_2090 = load i64, i64* %var_2_2089, align 8
; %var_2_1434 = load i64, i64* %var_2_1433, align 8
; Matched:\<badref\>:  store i64 %var_2_2090, i64* %var_2_1828, align 1, !tbaa !1285
; store i64 %var_2_1434, i64* %var_2_225, align 1
store double 0.000000e+00, double* %var_2_195, align 1
%var_2_1435 = add i64 %var_2_1431, -2222
; Matched:%var_2_2092:  %var_2_2092 = add i64 %var_2_2087, 10
; %var_2_1436 = add i64 %var_2_1431, 10
; Matched:%var_2_2057:  %var_2_2057 = load i64, i64* %RSP, align 8, !tbaa !1261
; %var_2_1437 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_2094:  %var_2_2094 = add i64 %var_2_2093, -8
; %var_2_1438 = add i64 %var_2_1437, -8
; Matched:%var_2_2095:  %var_2_2095 = inttoptr i64 %var_2_2094 to i64*
; %var_2_1439 = inttoptr i64 %var_2_1438 to i64*
; Matched:\<badref\>:  store i64 %var_2_2092, i64* %var_2_2095, align 8
; store i64 %var_2_1436, i64* %var_2_1439, align 8
; Matched:\<badref\>:  store i64 %var_2_2058, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1438, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_2091, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1435, i64* %var_2_3, align 8
%call2_400e53 = tail call %struct.Memory* @ext_sin(%struct.State* nonnull %0, i64 %var_2_1435, %struct.Memory* %call2_400e21)
%var_2_1440 = load i64, i64* %RBP.i, align 8
%var_2_1441 = add i64 %var_2_1440, -136
%var_2_1442 = load i64, i64* %var_2_3, align 8
%var_2_1443 = add i64 %var_2_1442, 8
store i64 %var_2_1443, i64* %var_2_3, align 8
%var_2_1444 = load i64, i64* %var_2_225, align 1
%var_2_1445 = inttoptr i64 %var_2_1441 to i64*
store i64 %var_2_1444, i64* %var_2_1445, align 8
; Matched:%var_2_2103:  %var_2_2103 = load i64, i64* %RBP, align 8
; %var_2_1446 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2104:  %var_2_2104 = add i64 %var_2_2103, -192
; %var_2_1447 = add i64 %var_2_1446, -192
%var_2_1448 = load i64, i64* %var_2_3, align 8
%var_2_1449 = add i64 %var_2_1448, 8
store i64 %var_2_1449, i64* %var_2_3, align 8
; Matched:%var_2_2107:  %var_2_2107 = inttoptr i64 %var_2_2104 to i64*
; %var_2_1450 = inttoptr i64 %var_2_1447 to i64*
; Matched:%var_2_2108:  %var_2_2108 = load i64, i64* %var_2_2107, align 8
; %var_2_1451 = load i64, i64* %var_2_1450, align 8
; Matched:\<badref\>:  store i64 %var_2_2108, i64* %var_2_1828, align 1, !tbaa !1285
; store i64 %var_2_1451, i64* %var_2_225, align 1
store double 0.000000e+00, double* %var_2_195, align 1
; Matched:%var_2_2109:  %var_2_2109 = add i64 %var_2_2103, -152
; %var_2_1452 = add i64 %var_2_1446, -152
; Matched:%var_2_1996:  %var_2_1996 = add i64 %var_2_1980, 16
; %var_2_1453 = add i64 %var_2_1448, 16
; Matched:\<badref\>:  store i64 %var_2_1996, i64* %PC, align 8
; store i64 %var_2_1453, i64* %var_2_3, align 8
; Matched:%var_2_2111:  %var_2_2111 = inttoptr i64 %var_2_2109 to i64*
; %var_2_1454 = inttoptr i64 %var_2_1452 to i64*
; Matched:\<badref\>:  store i64 %var_2_2108, i64* %var_2_2111, align 8
; store i64 %var_2_1451, i64* %var_2_1454, align 8
; Matched:%var_2_2112:  %var_2_2112 = load i64, i64* %RBP, align 8
; %var_2_1455 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2113:  %var_2_2113 = add i64 %var_2_2112, -176
; %var_2_1456 = add i64 %var_2_1455, -176
%var_2_1457 = load i64, i64* %var_2_3, align 8
%var_2_1458 = add i64 %var_2_1457, 8
store i64 %var_2_1458, i64* %var_2_3, align 8
; Matched:%var_2_2116:  %var_2_2116 = inttoptr i64 %var_2_2113 to i64*
; %var_2_1459 = inttoptr i64 %var_2_1456 to i64*
; Matched:%var_2_2117:  %var_2_2117 = load i64, i64* %var_2_2116, align 8
; %var_2_1460 = load i64, i64* %var_2_1459, align 8
; Matched:\<badref\>:  store i64 %var_2_2117, i64* %var_2_1839, align 1, !tbaa !1285
; store i64 %var_2_1460, i64* %var_2_206, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_1841, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_208, align 1
; Matched:%var_2_2118:  %var_2_2118 = add i64 %var_2_2112, -128
; %var_2_1461 = add i64 %var_2_1455, -128
; Matched:%var_2_257:  %var_2_257 = add i64 %var_2_248, 13
; %var_2_1462 = add i64 %var_2_1457, 13
; Matched:\<badref\>:  store i64 %var_2_571, i64* %PC, align 8
; store i64 %var_2_1462, i64* %var_2_3, align 8
; Matched:%var_2_2120:  %var_2_2120 = inttoptr i64 %var_2_2118 to i64*
; %var_2_1463 = inttoptr i64 %var_2_1461 to i64*
; Matched:\<badref\>:  store i64 %var_2_2117, i64* %var_2_2120, align 8
; store i64 %var_2_1460, i64* %var_2_1463, align 8
%var_2_1464 = load i64, i64* %RBP.i, align 8
%var_2_1465 = add i64 %var_2_1464, -36
%var_2_1466 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_272:  %var_2_272 = add i64 %var_2_267, 7
; %var_2_1467 = add i64 %var_2_1466, 7
; Matched:\<badref\>:  store i64 %var_2_1138, i64* %PC, align 8
; store i64 %var_2_1467, i64* %var_2_3, align 8
%var_2_1468 = inttoptr i64 %var_2_1465 to i32*
store i32 1, i32* %var_2_1468, align 4
; Matched:  %.pre110 = load i64, i64* %PC, align 8
; %.pre56 = load i64, i64* %var_2_3, align 8
  br label %block_.L_400e84

block_.L_400e84:                                  ; preds = %block_.L_400fd1, %routine_idivl_MINUS0x30__rbp_.exit
; Matched:%var_2_2193:  %var_2_2193 = phi i64 [ %.pre110, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit ], [ %var_2_657, %block_400fd1 ]
; %var_2_1469 = phi i64 [ %var_2_2140, %block_.L_400fd1 ], [ %.pre56, %routine_idivl_MINUS0x30__rbp_.exit ]
%var_2_1470 = load i64, i64* %RBP.i, align 8
%var_2_1471 = add i64 %var_2_1470, -36
; Matched:%var_2_2196:  %var_2_2196 = add i64 %var_2_2193, 3
; %var_2_1472 = add i64 %var_2_1469, 3
; Matched:\<badref\>:  store i64 %var_2_2196, i64* %PC, align 8
; store i64 %var_2_1472, i64* %var_2_3, align 8
%var_2_1473 = inttoptr i64 %var_2_1471 to i32*
%var_2_1474 = load i32, i32* %var_2_1473, align 4
; Matched:%var_2_2199:  %var_2_2199 = zext i32 %var_2_2198 to i64
; %var_2_1475 = zext i32 %var_2_1474 to i64
; Matched:\<badref\>:  store i64 %var_2_2199, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1475, i64* %RAX.i798, align 8
%var_2_1476 = add i64 %var_2_1470, -60
; Matched:%var_2_2201:  %var_2_2201 = add i64 %var_2_2193, 6
; %var_2_1477 = add i64 %var_2_1469, 6
; Matched:\<badref\>:  store i64 %var_2_2201, i64* %PC, align 8
; store i64 %var_2_1477, i64* %var_2_3, align 8
%var_2_1478 = inttoptr i64 %var_2_1476 to i32*
%var_2_1479 = load i32, i32* %var_2_1478, align 4
%var_2_1480 = sub i32 %var_2_1474, %var_2_1479
; Matched:%var_2_2205:  %var_2_2205 = icmp ult i32 %var_2_2198, %var_2_2203
; %var_2_1481 = icmp ult i32 %var_2_1474, %var_2_1479
; Matched:%var_2_2206:  %var_2_2206 = zext i1 %var_2_2205 to i8
; %var_2_1482 = zext i1 %var_2_1481 to i8
; Matched:\<badref\>:  store i8 %var_2_2206, i8* %var_2_17, align 1, !tbaa !1265
; store i8 %var_2_1482, i8* %var_2_14, align 1
; Matched:%var_2_2207:  %var_2_2207 = and i32 %var_2_2204, 255
; %var_2_1483 = and i32 %var_2_1480, 255
; Matched:%var_2_2208:  %var_2_2208 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2207) #14
; %var_2_1484 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1483)
; Matched:%var_2_2209:  %var_2_2209 = trunc i32 %var_2_2208 to i8
; %var_2_1485 = trunc i32 %var_2_1484 to i8
; Matched:%var_2_2210:  %var_2_2210 = and i8 %var_2_2209, 1
; %var_2_1486 = and i8 %var_2_1485, 1
; Matched:%var_2_2211:  %var_2_2211 = xor i8 %var_2_2210, 1
; %var_2_1487 = xor i8 %var_2_1486, 1
; Matched:\<badref\>:  store i8 %var_2_2211, i8* %var_2_24, align 1, !tbaa !1279
; store i8 %var_2_1487, i8* %var_2_21, align 1
; Matched:%var_2_2212:  %var_2_2212 = xor i32 %var_2_2203, %var_2_2198
; %var_2_1488 = xor i32 %var_2_1479, %var_2_1474
; Matched:%var_2_2213:  %var_2_2213 = xor i32 %var_2_2212, %var_2_2204
; %var_2_1489 = xor i32 %var_2_1488, %var_2_1480
; Matched:%var_2_2214:  %var_2_2214 = lshr i32 %var_2_2213, 4
; %var_2_1490 = lshr i32 %var_2_1489, 4
; Matched:%var_2_2215:  %var_2_2215 = trunc i32 %var_2_2214 to i8
; %var_2_1491 = trunc i32 %var_2_1490 to i8
; Matched:%var_2_2216:  %var_2_2216 = and i8 %var_2_2215, 1
; %var_2_1492 = and i8 %var_2_1491, 1
; Matched:\<badref\>:  store i8 %var_2_2216, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_1492, i8* %var_2_26, align 1
%var_2_1493 = icmp eq i32 %var_2_1480, 0
; Matched:%var_2_2218:  %var_2_2218 = zext i1 %var_2_2217 to i8
; %var_2_1494 = zext i1 %var_2_1493 to i8
; Matched:\<badref\>:  store i8 %var_2_2218, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_1494, i8* %var_2_29, align 1
%var_2_1495 = lshr i32 %var_2_1480, 31
%var_2_1496 = trunc i32 %var_2_1495 to i8
; Matched:\<badref\>:  store i8 %var_2_2220, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_1496, i8* %var_2_32, align 1
%var_2_1497 = lshr i32 %var_2_1474, 31
%var_2_1498 = lshr i32 %var_2_1479, 31
%var_2_1499 = xor i32 %var_2_1498, %var_2_1497
%var_2_1500 = xor i32 %var_2_1495, %var_2_1497
%var_2_1501 = add nuw nsw i32 %var_2_1500, %var_2_1499
%var_2_1502 = icmp eq i32 %var_2_1501, 2
; Matched:%var_2_2227:  %var_2_2227 = zext i1 %var_2_2226 to i8
; %var_2_1503 = zext i1 %var_2_1502 to i8
; Matched:\<badref\>:  store i8 %var_2_2227, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_1503, i8* %var_2_38, align 1
%var_2_1504 = icmp ne i8 %var_2_1496, 0
%var_2_1505 = xor i1 %var_2_1504, %var_2_1502
%.demorgan64 = or i1 %var_2_1493, %var_2_1505
; Matched:  %.v126 = select i1 %.demorgan118, i64 12, i64 447
; %.v72 = select i1 %.demorgan64, i64 12, i64 447
; Matched:%var_2_2230:  %var_2_2230 = add i64 %var_2_2193, %.v126
; %var_2_1506 = add i64 %var_2_1469, %.v72
; Matched:\<badref\>:  store i64 %var_2_2230, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1506, i64* %var_2_3, align 8
  br i1 %.demorgan64, label %block_400e90, label %block_.L_401043

block_400e90:                                     ; preds = %block_.L_400e84
; Matched:%var_2_1940:  %var_2_1940 = add i64 %var_2_2230, 3
; %var_2_1507 = add i64 %var_2_1506, 3
; Matched:\<badref\>:  store i64 %var_2_1940, i64* %PC, align 8
; store i64 %var_2_1507, i64* %var_2_3, align 8
; Matched:%var_2_1778:  %var_2_1778 = load i32, i32* %var_2_1777, align 4
; %var_2_1508 = load i32, i32* %var_2_1473, align 4
; Matched:%var_2_1779:  %var_2_1779 = zext i32 %var_2_1778 to i64
; %var_2_1509 = zext i32 %var_2_1508 to i64
; Matched:\<badref\>:  store i64 %var_2_1779, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1509, i64* %RAX.i798, align 8
; Matched:%var_2_1943:  %var_2_1943 = add i64 %var_2_2194, -28
; %var_2_1510 = add i64 %var_2_1470, -28
; Matched:%var_2_1944:  %var_2_1944 = add i64 %var_2_2230, 6
; %var_2_1511 = add i64 %var_2_1506, 6
; Matched:\<badref\>:  store i64 %var_2_1944, i64* %PC, align 8
; store i64 %var_2_1511, i64* %var_2_3, align 8
; Matched:%var_2_1945:  %var_2_1945 = inttoptr i64 %var_2_1943 to i32*
; %var_2_1512 = inttoptr i64 %var_2_1510 to i32*
; Matched:\<badref\>:  store i32 %var_2_1941, i32* %var_2_1945, align 4
; store i32 %var_2_1508, i32* %var_2_1512, align 4
; Matched:  %.pre111 = load i64, i64* %PC, align 8
; %.pre57 = load i64, i64* %var_2_3, align 8
  br label %block_.L_400e96

block_.L_400e96:                                  ; preds = %block_.L_400fbe, %block_400e90
; Matched:%var_2_1726:  %var_2_1726 = phi i64 [ %.pre111, %block_400e90 ], [ %var_2_545, %block_400fbe ]
; %var_2_1513 = phi i64 [ %var_2_2037, %block_.L_400fbe ], [ %.pre57, %block_400e90 ]
%var_2_1514 = load i64, i64* %RBP.i, align 8
%var_2_1515 = add i64 %var_2_1514, -28
; Matched:%var_2_1729:  %var_2_1729 = add i64 %var_2_1726, 3
; %var_2_1516 = add i64 %var_2_1513, 3
; Matched:\<badref\>:  store i64 %var_2_1729, i64* %PC, align 8
; store i64 %var_2_1516, i64* %var_2_3, align 8
%var_2_1517 = inttoptr i64 %var_2_1515 to i32*
%var_2_1518 = load i32, i32* %var_2_1517, align 4
; Matched:%var_2_910:  %var_2_910 = zext i32 %var_2_909 to i64
; %var_2_1519 = zext i32 %var_2_1518 to i64
; Matched:\<badref\>:  store i64 %var_2_910, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1519, i64* %RAX.i798, align 8
%var_2_1520 = add i64 %var_2_1514, -36
; Matched:%var_2_1734:  %var_2_1734 = add i64 %var_2_1726, 6
; %var_2_1521 = add i64 %var_2_1513, 6
; Matched:\<badref\>:  store i64 %var_2_1734, i64* %PC, align 8
; store i64 %var_2_1521, i64* %var_2_3, align 8
%var_2_1522 = inttoptr i64 %var_2_1520 to i32*
%var_2_1523 = load i32, i32* %var_2_1522, align 4
; Matched:%var_2_1737:  %var_2_1737 = zext i32 %var_2_1736 to i64
; %var_2_1524 = zext i32 %var_2_1523 to i64
; Matched:\<badref\>:  store i64 %var_2_1737, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1524, i64* %RCX.i788, align 8
%var_2_1525 = add i64 %var_2_1514, -48
; Matched:%var_2_1739:  %var_2_1739 = add i64 %var_2_1726, 9
; %var_2_1526 = add i64 %var_2_1513, 9
; Matched:\<badref\>:  store i64 %var_2_1739, i64* %PC, align 8
; store i64 %var_2_1526, i64* %var_2_3, align 8
%var_2_1527 = inttoptr i64 %var_2_1525 to i32*
%var_2_1528 = load i32, i32* %var_2_1527, align 4
%var_2_1529 = add i32 %var_2_1528, %var_2_1523
%var_2_1530 = add i32 %var_2_1529, -2
; Matched:%var_2_1744:  %var_2_1744 = zext i32 %var_2_1743 to i64
; %var_2_1531 = zext i32 %var_2_1530 to i64
; Matched:\<badref\>:  store i64 %var_2_1744, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1531, i64* %RCX.i788, align 8
%var_2_1532 = lshr i32 %var_2_1530, 31
%var_2_1533 = sub i32 %var_2_1518, %var_2_1530
; Matched:%var_2_1747:  %var_2_1747 = icmp ult i32 %var_2_1731, %var_2_1743
; %var_2_1534 = icmp ult i32 %var_2_1518, %var_2_1530
; Matched:%var_2_1748:  %var_2_1748 = zext i1 %var_2_1747 to i8
; %var_2_1535 = zext i1 %var_2_1534 to i8
; Matched:\<badref\>:  store i8 %var_2_1748, i8* %var_2_17, align 1, !tbaa !1265
; store i8 %var_2_1535, i8* %var_2_14, align 1
; Matched:%var_2_1749:  %var_2_1749 = and i32 %var_2_1746, 255
; %var_2_1536 = and i32 %var_2_1533, 255
; Matched:%var_2_1750:  %var_2_1750 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1749) #14
; %var_2_1537 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1536)
; Matched:%var_2_1751:  %var_2_1751 = trunc i32 %var_2_1750 to i8
; %var_2_1538 = trunc i32 %var_2_1537 to i8
; Matched:%var_2_1752:  %var_2_1752 = and i8 %var_2_1751, 1
; %var_2_1539 = and i8 %var_2_1538, 1
; Matched:%var_2_1753:  %var_2_1753 = xor i8 %var_2_1752, 1
; %var_2_1540 = xor i8 %var_2_1539, 1
; Matched:\<badref\>:  store i8 %var_2_1753, i8* %var_2_24, align 1, !tbaa !1279
; store i8 %var_2_1540, i8* %var_2_21, align 1
; Matched:%var_2_1754:  %var_2_1754 = xor i32 %var_2_1743, %var_2_1731
; %var_2_1541 = xor i32 %var_2_1530, %var_2_1518
; Matched:%var_2_1755:  %var_2_1755 = xor i32 %var_2_1754, %var_2_1746
; %var_2_1542 = xor i32 %var_2_1541, %var_2_1533
; Matched:%var_2_1756:  %var_2_1756 = lshr i32 %var_2_1755, 4
; %var_2_1543 = lshr i32 %var_2_1542, 4
; Matched:%var_2_1757:  %var_2_1757 = trunc i32 %var_2_1756 to i8
; %var_2_1544 = trunc i32 %var_2_1543 to i8
; Matched:%var_2_1758:  %var_2_1758 = and i8 %var_2_1757, 1
; %var_2_1545 = and i8 %var_2_1544, 1
; Matched:\<badref\>:  store i8 %var_2_1758, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_1545, i8* %var_2_26, align 1
%var_2_1546 = icmp eq i32 %var_2_1533, 0
; Matched:%var_2_1760:  %var_2_1760 = zext i1 %var_2_1759 to i8
; %var_2_1547 = zext i1 %var_2_1546 to i8
; Matched:\<badref\>:  store i8 %var_2_1760, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_1547, i8* %var_2_29, align 1
%var_2_1548 = lshr i32 %var_2_1533, 31
%var_2_1549 = trunc i32 %var_2_1548 to i8
; Matched:\<badref\>:  store i8 %var_2_1762, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_1549, i8* %var_2_32, align 1
%var_2_1550 = lshr i32 %var_2_1518, 31
%var_2_1551 = xor i32 %var_2_1532, %var_2_1550
%var_2_1552 = xor i32 %var_2_1548, %var_2_1550
%var_2_1553 = add nuw nsw i32 %var_2_1552, %var_2_1551
%var_2_1554 = icmp eq i32 %var_2_1553, 2
; Matched:%var_2_1768:  %var_2_1768 = zext i1 %var_2_1767 to i8
; %var_2_1555 = zext i1 %var_2_1554 to i8
; Matched:\<badref\>:  store i8 %var_2_1768, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_1555, i8* %var_2_38, align 1
%var_2_1556 = icmp ne i8 %var_2_1549, 0
%var_2_1557 = xor i1 %var_2_1556, %var_2_1554
%.demorgan65 = or i1 %var_2_1546, %var_2_1557
; Matched:  %.v127 = select i1 %.demorgan119, i64 20, i64 315
; %.v73 = select i1 %.demorgan65, i64 20, i64 315
; Matched:%var_2_1771:  %var_2_1771 = add i64 %var_2_1726, %.v127
; %var_2_1558 = add i64 %var_2_1513, %.v73
; Matched:\<badref\>:  store i64 %var_2_1771, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1558, i64* %var_2_3, align 8
%var_2_1559 = load i64, i64* %RBP.i, align 8
  br i1 %.demorgan65, label %block_400eaa, label %block_.L_400fd1

block_400eaa:                                     ; preds = %block_.L_400e96
; Matched:%var_2_750:  %var_2_750 = add i64 %var_2_749, -28
; %var_2_1560 = add i64 %var_2_1559, -28
; Matched:%var_2_907:  %var_2_907 = add i64 %var_2_1771, 3
; %var_2_1561 = add i64 %var_2_1558, 3
; Matched:\<badref\>:  store i64 %var_2_907, i64* %PC, align 8
; store i64 %var_2_1561, i64* %var_2_3, align 8
; Matched:%var_2_752:  %var_2_752 = inttoptr i64 %var_2_750 to i32*
; %var_2_1562 = inttoptr i64 %var_2_1560 to i32*
; Matched:%var_2_550:  %var_2_550 = load i32, i32* %var_2_549, align 4
; %var_2_1563 = load i32, i32* %var_2_1562, align 4
; Matched:%var_2_754:  %var_2_754 = zext i32 %var_2_753 to i64
; %var_2_1564 = zext i32 %var_2_1563 to i64
; Matched:\<badref\>:  store i64 %var_2_754, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1564, i64* %RAX.i798, align 8
; Matched:%var_2_911:  %var_2_911 = add i64 %var_2_1772, -32
; %var_2_1565 = add i64 %var_2_1559, -32
; Matched:%var_2_912:  %var_2_912 = add i64 %var_2_1771, 6
; %var_2_1566 = add i64 %var_2_1558, 6
; Matched:\<badref\>:  store i64 %var_2_912, i64* %PC, align 8
; store i64 %var_2_1566, i64* %var_2_3, align 8
; Matched:%var_2_913:  %var_2_913 = inttoptr i64 %var_2_911 to i32*
; %var_2_1567 = inttoptr i64 %var_2_1565 to i32*
; Matched:\<badref\>:  store i32 %var_2_909, i32* %var_2_913, align 4
; store i32 %var_2_1563, i32* %var_2_1567, align 4
; Matched:  %.pre112 = load i64, i64* %PC, align 8
; %.pre58 = load i64, i64* %var_2_3, align 8
  br label %block_.L_400eb0

block_.L_400eb0:                                  ; preds = %block_400ebc, %block_400eaa
; Matched:%var_2_868:  %var_2_868 = phi i64 [ %var_2_1547, %block_400ebc ], [ %.pre112, %block_400eaa ]
; %var_2_1568 = phi i64 [ %var_2_2008, %block_400ebc ], [ %.pre58, %block_400eaa ]
%var_2_1569 = load i64, i64* %RBP.i, align 8
%var_2_1570 = add i64 %var_2_1569, -32
; Matched:%var_2_871:  %var_2_871 = add i64 %var_2_868, 3
; %var_2_1571 = add i64 %var_2_1568, 3
; Matched:\<badref\>:  store i64 %var_2_871, i64* %PC, align 8
; store i64 %var_2_1571, i64* %var_2_3, align 8
%var_2_1572 = inttoptr i64 %var_2_1570 to i32*
%var_2_1573 = load i32, i32* %var_2_1572, align 4
; Matched:%var_2_1948:  %var_2_1948 = zext i32 %var_2_1947 to i64
; %var_2_1574 = zext i32 %var_2_1573 to i64
; Matched:\<badref\>:  store i64 %var_2_1948, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1574, i64* %RAX.i798, align 8
%var_2_1575 = add i64 %var_2_1569, -56
; Matched:%var_2_876:  %var_2_876 = add i64 %var_2_868, 6
; %var_2_1576 = add i64 %var_2_1568, 6
; Matched:\<badref\>:  store i64 %var_2_876, i64* %PC, align 8
; store i64 %var_2_1576, i64* %var_2_3, align 8
%var_2_1577 = inttoptr i64 %var_2_1575 to i32*
%var_2_1578 = load i32, i32* %var_2_1577, align 4
%var_2_1579 = sub i32 %var_2_1573, %var_2_1578
; Matched:%var_2_880:  %var_2_880 = icmp ult i32 %var_2_873, %var_2_878
; %var_2_1580 = icmp ult i32 %var_2_1573, %var_2_1578
; Matched:%var_2_881:  %var_2_881 = zext i1 %var_2_880 to i8
; %var_2_1581 = zext i1 %var_2_1580 to i8
; Matched:\<badref\>:  store i8 %var_2_881, i8* %var_2_17, align 1, !tbaa !1265
; store i8 %var_2_1581, i8* %var_2_14, align 1
; Matched:%var_2_882:  %var_2_882 = and i32 %var_2_879, 255
; %var_2_1582 = and i32 %var_2_1579, 255
; Matched:%var_2_883:  %var_2_883 = tail call i32 @llvm.ctpop.i32(i32 %var_2_882) #14
; %var_2_1583 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1582)
; Matched:%var_2_884:  %var_2_884 = trunc i32 %var_2_883 to i8
; %var_2_1584 = trunc i32 %var_2_1583 to i8
; Matched:%var_2_885:  %var_2_885 = and i8 %var_2_884, 1
; %var_2_1585 = and i8 %var_2_1584, 1
; Matched:%var_2_886:  %var_2_886 = xor i8 %var_2_885, 1
; %var_2_1586 = xor i8 %var_2_1585, 1
; Matched:\<badref\>:  store i8 %var_2_886, i8* %var_2_24, align 1, !tbaa !1279
; store i8 %var_2_1586, i8* %var_2_21, align 1
; Matched:%var_2_887:  %var_2_887 = xor i32 %var_2_878, %var_2_873
; %var_2_1587 = xor i32 %var_2_1578, %var_2_1573
; Matched:%var_2_888:  %var_2_888 = xor i32 %var_2_887, %var_2_879
; %var_2_1588 = xor i32 %var_2_1587, %var_2_1579
; Matched:%var_2_889:  %var_2_889 = lshr i32 %var_2_888, 4
; %var_2_1589 = lshr i32 %var_2_1588, 4
; Matched:%var_2_890:  %var_2_890 = trunc i32 %var_2_889 to i8
; %var_2_1590 = trunc i32 %var_2_1589 to i8
; Matched:%var_2_891:  %var_2_891 = and i8 %var_2_890, 1
; %var_2_1591 = and i8 %var_2_1590, 1
; Matched:\<badref\>:  store i8 %var_2_891, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_1591, i8* %var_2_26, align 1
%var_2_1592 = icmp eq i32 %var_2_1579, 0
; Matched:%var_2_893:  %var_2_893 = zext i1 %var_2_892 to i8
; %var_2_1593 = zext i1 %var_2_1592 to i8
; Matched:\<badref\>:  store i8 %var_2_893, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_1593, i8* %var_2_29, align 1
%var_2_1594 = lshr i32 %var_2_1579, 31
%var_2_1595 = trunc i32 %var_2_1594 to i8
; Matched:\<badref\>:  store i8 %var_2_895, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_1595, i8* %var_2_32, align 1
%var_2_1596 = lshr i32 %var_2_1573, 31
%var_2_1597 = lshr i32 %var_2_1578, 31
%var_2_1598 = xor i32 %var_2_1597, %var_2_1596
%var_2_1599 = xor i32 %var_2_1594, %var_2_1596
%var_2_1600 = add nuw nsw i32 %var_2_1599, %var_2_1598
%var_2_1601 = icmp eq i32 %var_2_1600, 2
; Matched:%var_2_902:  %var_2_902 = zext i1 %var_2_901 to i8
; %var_2_1602 = zext i1 %var_2_1601 to i8
; Matched:\<badref\>:  store i8 %var_2_902, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_1602, i8* %var_2_38, align 1
%var_2_1603 = icmp ne i8 %var_2_1595, 0
%var_2_1604 = xor i1 %var_2_1603, %var_2_1601
%.demorgan66 = or i1 %var_2_1592, %var_2_1604
; Matched:  %.v121 = select i1 %.demorgan120, i64 12, i64 270
; %.v67 = select i1 %.demorgan66, i64 12, i64 270
; Matched:%var_2_905:  %var_2_905 = add i64 %var_2_868, %.v121
; %var_2_1605 = add i64 %var_2_1568, %.v67
; Matched:\<badref\>:  store i64 %var_2_905, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1605, i64* %var_2_3, align 8
  br i1 %.demorgan66, label %block_400ebc, label %block_.L_400fbe

block_400ebc:                                     ; preds = %block_.L_400eb0
; Matched:%var_2_1145:  %var_2_1145 = add i64 %var_2_905, 3
; %var_2_1606 = add i64 %var_2_1605, 3
; Matched:\<badref\>:  store i64 %var_2_1145, i64* %PC, align 8
; store i64 %var_2_1606, i64* %var_2_3, align 8
; Matched:%var_2_1146:  %var_2_1146 = load i32, i32* %var_2_872, align 4
; %var_2_1607 = load i32, i32* %var_2_1572, align 4
; Matched:%var_2_1580:  %var_2_1580 = zext i32 %var_2_1579 to i64
; %var_2_1608 = zext i32 %var_2_1607 to i64
; Matched:\<badref\>:  store i64 %var_2_1580, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1608, i64* %RAX.i798, align 8
; Matched:%var_2_1148:  %var_2_1148 = add i64 %var_2_869, -76
; %var_2_1609 = add i64 %var_2_1569, -76
; Matched:%var_2_1149:  %var_2_1149 = add i64 %var_2_905, 6
; %var_2_1610 = add i64 %var_2_1605, 6
; Matched:\<badref\>:  store i64 %var_2_1149, i64* %PC, align 8
; store i64 %var_2_1610, i64* %var_2_3, align 8
; Matched:%var_2_1150:  %var_2_1150 = inttoptr i64 %var_2_1148 to i32*
; %var_2_1611 = inttoptr i64 %var_2_1609 to i32*
; Matched:\<badref\>:  store i32 %var_2_1146, i32* %var_2_1150, align 4
; store i32 %var_2_1607, i32* %var_2_1611, align 4
; Matched:%var_2_1151:  %var_2_1151 = load i64, i64* %RBP, align 8
; %var_2_1612 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1152:  %var_2_1152 = add i64 %var_2_1151, -76
; %var_2_1613 = add i64 %var_2_1612, -76
%var_2_1614 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_56:  %var_2_56 = add i64 %var_2_55, 3
; %var_2_1615 = add i64 %var_2_1614, 3
; Matched:\<badref\>:  store i64 %var_2_56, i64* %PC, align 8
; store i64 %var_2_1615, i64* %var_2_3, align 8
; Matched:%var_2_1155:  %var_2_1155 = inttoptr i64 %var_2_1152 to i32*
; %var_2_1616 = inttoptr i64 %var_2_1613 to i32*
; Matched:%var_2_1156:  %var_2_1156 = load i32, i32* %var_2_1155, align 4
; %var_2_1617 = load i32, i32* %var_2_1616, align 4
; Matched:%var_2_1157:  %var_2_1157 = zext i32 %var_2_1156 to i64
; %var_2_1618 = zext i32 %var_2_1617 to i64
; Matched:\<badref\>:  store i64 %var_2_1157, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1618, i64* %RAX.i798, align 8
; Matched:%var_2_1158:  %var_2_1158 = add i64 %var_2_1151, -60
; %var_2_1619 = add i64 %var_2_1612, -60
; Matched:%var_2_1515:  %var_2_1515 = add i64 %var_2_1509, 6
; %var_2_1620 = add i64 %var_2_1614, 6
; Matched:\<badref\>:  store i64 %var_2_1515, i64* %PC, align 8
; store i64 %var_2_1620, i64* %var_2_3, align 8
; Matched:%var_2_1160:  %var_2_1160 = inttoptr i64 %var_2_1158 to i32*
; %var_2_1621 = inttoptr i64 %var_2_1619 to i32*
; Matched:%var_2_1161:  %var_2_1161 = load i32, i32* %var_2_1160, align 4
; %var_2_1622 = load i32, i32* %var_2_1621, align 4
; Matched:%var_2_1162:  %var_2_1162 = add i32 %var_2_1161, %var_2_1156
; %var_2_1623 = add i32 %var_2_1622, %var_2_1617
; Matched:%var_2_1163:  %var_2_1163 = zext i32 %var_2_1162 to i64
; %var_2_1624 = zext i32 %var_2_1623 to i64
; Matched:\<badref\>:  store i64 %var_2_1163, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1624, i64* %RAX.i798, align 8
; Matched:%var_2_1164:  %var_2_1164 = icmp ult i32 %var_2_1162, %var_2_1156
; %var_2_1625 = icmp ult i32 %var_2_1623, %var_2_1617
; Matched:%var_2_1165:  %var_2_1165 = icmp ult i32 %var_2_1162, %var_2_1161
; %var_2_1626 = icmp ult i32 %var_2_1623, %var_2_1622
; Matched:%var_2_1166:  %var_2_1166 = or i1 %var_2_1164, %var_2_1165
; %var_2_1627 = or i1 %var_2_1625, %var_2_1626
; Matched:%var_2_1167:  %var_2_1167 = zext i1 %var_2_1166 to i8
; %var_2_1628 = zext i1 %var_2_1627 to i8
; Matched:\<badref\>:  store i8 %var_2_1167, i8* %var_2_17, align 1, !tbaa !1265
; store i8 %var_2_1628, i8* %var_2_14, align 1
; Matched:%var_2_1168:  %var_2_1168 = and i32 %var_2_1162, 255
; %var_2_1629 = and i32 %var_2_1623, 255
; Matched:%var_2_1169:  %var_2_1169 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1168) #14
; %var_2_1630 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1629)
; Matched:%var_2_1170:  %var_2_1170 = trunc i32 %var_2_1169 to i8
; %var_2_1631 = trunc i32 %var_2_1630 to i8
; Matched:%var_2_1171:  %var_2_1171 = and i8 %var_2_1170, 1
; %var_2_1632 = and i8 %var_2_1631, 1
; Matched:%var_2_1172:  %var_2_1172 = xor i8 %var_2_1171, 1
; %var_2_1633 = xor i8 %var_2_1632, 1
; Matched:\<badref\>:  store i8 %var_2_1172, i8* %var_2_24, align 1, !tbaa !1279
; store i8 %var_2_1633, i8* %var_2_21, align 1
; Matched:%var_2_1173:  %var_2_1173 = xor i32 %var_2_1161, %var_2_1156
; %var_2_1634 = xor i32 %var_2_1622, %var_2_1617
; Matched:%var_2_1174:  %var_2_1174 = xor i32 %var_2_1173, %var_2_1162
; %var_2_1635 = xor i32 %var_2_1634, %var_2_1623
; Matched:%var_2_1175:  %var_2_1175 = lshr i32 %var_2_1174, 4
; %var_2_1636 = lshr i32 %var_2_1635, 4
; Matched:%var_2_1176:  %var_2_1176 = trunc i32 %var_2_1175 to i8
; %var_2_1637 = trunc i32 %var_2_1636 to i8
; Matched:%var_2_1177:  %var_2_1177 = and i8 %var_2_1176, 1
; %var_2_1638 = and i8 %var_2_1637, 1
; Matched:\<badref\>:  store i8 %var_2_1177, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_1638, i8* %var_2_26, align 1
; Matched:%var_2_1178:  %var_2_1178 = icmp eq i32 %var_2_1162, 0
; %var_2_1639 = icmp eq i32 %var_2_1623, 0
; Matched:%var_2_1179:  %var_2_1179 = zext i1 %var_2_1178 to i8
; %var_2_1640 = zext i1 %var_2_1639 to i8
; Matched:\<badref\>:  store i8 %var_2_1179, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_1640, i8* %var_2_29, align 1
; Matched:%var_2_1180:  %var_2_1180 = lshr i32 %var_2_1162, 31
; %var_2_1641 = lshr i32 %var_2_1623, 31
; Matched:%var_2_1181:  %var_2_1181 = trunc i32 %var_2_1180 to i8
; %var_2_1642 = trunc i32 %var_2_1641 to i8
; Matched:\<badref\>:  store i8 %var_2_1181, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_1642, i8* %var_2_32, align 1
; Matched:%var_2_1182:  %var_2_1182 = lshr i32 %var_2_1156, 31
; %var_2_1643 = lshr i32 %var_2_1617, 31
; Matched:%var_2_1183:  %var_2_1183 = lshr i32 %var_2_1161, 31
; %var_2_1644 = lshr i32 %var_2_1622, 31
; Matched:%var_2_1184:  %var_2_1184 = xor i32 %var_2_1180, %var_2_1182
; %var_2_1645 = xor i32 %var_2_1641, %var_2_1643
; Matched:%var_2_1185:  %var_2_1185 = xor i32 %var_2_1180, %var_2_1183
; %var_2_1646 = xor i32 %var_2_1641, %var_2_1644
; Matched:%var_2_1186:  %var_2_1186 = add nuw nsw i32 %var_2_1184, %var_2_1185
; %var_2_1647 = add nuw nsw i32 %var_2_1645, %var_2_1646
; Matched:%var_2_1187:  %var_2_1187 = icmp eq i32 %var_2_1186, 2
; %var_2_1648 = icmp eq i32 %var_2_1647, 2
; Matched:%var_2_1188:  %var_2_1188 = zext i1 %var_2_1187 to i8
; %var_2_1649 = zext i1 %var_2_1648 to i8
; Matched:\<badref\>:  store i8 %var_2_1188, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_1649, i8* %var_2_38, align 1
; Matched:%var_2_1189:  %var_2_1189 = add i64 %var_2_1151, -80
; %var_2_1650 = add i64 %var_2_1612, -80
%var_2_1651 = add i64 %var_2_1614, 9
store i64 %var_2_1651, i64* %var_2_3, align 8
; Matched:%var_2_1191:  %var_2_1191 = inttoptr i64 %var_2_1189 to i32*
; %var_2_1652 = inttoptr i64 %var_2_1650 to i32*
; Matched:\<badref\>:  store i32 %var_2_1162, i32* %var_2_1191, align 4
; store i32 %var_2_1623, i32* %var_2_1652, align 4
%var_2_1653 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_555:  %var_2_555 = add i64 %var_2_1772, -152
; %var_2_1654 = add i64 %var_2_1653, -152
%var_2_1655 = load i64, i64* %var_2_3, align 8
%var_2_1656 = add i64 %var_2_1655, 8
store i64 %var_2_1656, i64* %var_2_3, align 8
; Matched:%var_2_1262:  %var_2_1262 = inttoptr i64 %var_2_1259 to i64*
; %var_2_1657 = inttoptr i64 %var_2_1654 to i64*
; Matched:%var_2_558:  %var_2_558 = load i64, i64* %var_2_557, align 8
; %var_2_1658 = load i64, i64* %var_2_1657, align 8
; Matched:\<badref\>:  store i64 %var_2_1197, i64* %var_2_1828, align 1, !tbaa !1285
; store i64 %var_2_1658, i64* %var_2_225, align 1
store double 0.000000e+00, double* %var_2_195, align 1
; Matched:%var_2_252:  %var_2_252 = add i64 %var_2_246, -8
; %var_2_1659 = add i64 %var_2_1653, -8
; Matched:%var_2_1471:  %var_2_1471 = add i64 %var_2_1462, 12
; %var_2_1660 = add i64 %var_2_1655, 12
; Matched:\<badref\>:  store i64 %var_2_1989, i64* %PC, align 8
; store i64 %var_2_1660, i64* %var_2_3, align 8
; Matched:%var_2_254:  %var_2_254 = inttoptr i64 %var_2_252 to i64*
; %var_2_1661 = inttoptr i64 %var_2_1659 to i64*
; Matched:%var_2_236:  %var_2_236 = load i64, i64* %var_2_223, align 8
; %var_2_1662 = load i64, i64* %var_2_1661, align 8
; Matched:\<badref\>:  store i64 %var_2_1267, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1662, i64* %RCX.i788, align 8
%var_2_1663 = add i64 %var_2_1653, -80
; Matched:%var_2_1012:  %var_2_1012 = add i64 %var_2_981, 16
; %var_2_1664 = add i64 %var_2_1655, 16
; Matched:\<badref\>:  store i64 %var_2_1012, i64* %PC, align 8
; store i64 %var_2_1664, i64* %var_2_3, align 8
%var_2_1665 = inttoptr i64 %var_2_1663 to i32*
; Matched:%var_2_1351:  %var_2_1351 = load i32, i32* %var_2_1350, align 4
; %var_2_1666 = load i32, i32* %var_2_1665, align 4
; Matched:%var_2_1311:  %var_2_1311 = sext i32 %var_2_1310 to i64
; %var_2_1667 = sext i32 %var_2_1666 to i64
; Matched:\<badref\>:  store i64 %var_2_1206, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1667, i64* %RDX.i786, align 8
; Matched:%var_2_1207:  %var_2_1207 = shl nsw i64 %var_2_1206, 3
; %var_2_1668 = shl nsw i64 %var_2_1667, 3
; Matched:%var_2_1208:  %var_2_1208 = add i64 %var_2_1207, %var_2_1201
; %var_2_1669 = add i64 %var_2_1668, %var_2_1662
; Matched:%var_2_1209:  %var_2_1209 = add i64 %var_2_1194, 21
; %var_2_1670 = add i64 %var_2_1655, 21
; Matched:\<badref\>:  store i64 %var_2_238, i64* %PC, align 8
; store i64 %var_2_1670, i64* %var_2_3, align 8
; Matched:%var_2_1210:  %var_2_1210 = bitcast i64 %var_2_1197 to double
; %var_2_1671 = bitcast i64 %var_2_1658 to double
; Matched:%var_2_1211:  %var_2_1211 = inttoptr i64 %var_2_1208 to double*
; %var_2_1672 = inttoptr i64 %var_2_1669 to double*
; Matched:%var_2_1212:  %var_2_1212 = load double, double* %var_2_1211, align 8
; %var_2_1673 = load double, double* %var_2_1672, align 8
; Matched:%var_2_1213:  %var_2_1213 = fmul double %var_2_1210, %var_2_1212
; %var_2_1674 = fmul double %var_2_1671, %var_2_1673
; Matched:\<badref\>:  store double %var_2_1213, double* %var_2_1857, align 1, !tbaa !1285
; store double %var_2_1674, double* %var_2_228, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_1829, align 1, !tbaa !1285
; store i64 0, i64* %var_2_194, align 1
; Matched:%var_2_1214:  %var_2_1214 = add i64 %var_2_1192, -128
; %var_2_1675 = add i64 %var_2_1653, -128
; Matched:%var_2_1215:  %var_2_1215 = add i64 %var_2_1194, 26
; %var_2_1676 = add i64 %var_2_1655, 26
; Matched:\<badref\>:  store i64 %var_2_1298, i64* %PC, align 8
; store i64 %var_2_1676, i64* %var_2_3, align 8
; Matched:%var_2_1216:  %var_2_1216 = inttoptr i64 %var_2_1214 to i64*
; %var_2_1677 = inttoptr i64 %var_2_1675 to i64*
; Matched:%var_2_1306:  %var_2_1306 = load i64, i64* %var_2_1305, align 8
; %var_2_1678 = load i64, i64* %var_2_1677, align 8
; Matched:\<badref\>:  store i64 %var_2_573, i64* %var_2_1839, align 1, !tbaa !1285
; store i64 %var_2_1678, i64* %var_2_206, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_1841, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_208, align 1
; Matched:%var_2_1405:  %var_2_1405 = add i64 %var_2_1359, 30
; %var_2_1679 = add i64 %var_2_1655, 30
; Matched:\<badref\>:  store i64 %var_2_1218, i64* %PC, align 8
; store i64 %var_2_1679, i64* %var_2_3, align 8
; Matched:%var_2_1308:  %var_2_1308 = load i64, i64* %var_2_1266, align 8
; %var_2_1680 = load i64, i64* %var_2_1661, align 8
; Matched:\<badref\>:  store i64 %var_2_1308, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1680, i64* %RCX.i788, align 8
; Matched:%var_2_1220:  %var_2_1220 = add i64 %var_2_1194, 33
; %var_2_1681 = add i64 %var_2_1655, 33
; Matched:\<badref\>:  store i64 %var_2_582, i64* %PC, align 8
; store i64 %var_2_1681, i64* %var_2_3, align 8
; Matched:%var_2_1407:  %var_2_1407 = load i32, i32* %var_2_1406, align 4
; %var_2_1682 = load i32, i32* %var_2_1665, align 4
; Matched:%var_2_1408:  %var_2_1408 = add i32 %var_2_1407, 1
; %var_2_1683 = add i32 %var_2_1682, 1
; Matched:%var_2_1273:  %var_2_1273 = zext i32 %var_2_1272 to i64
; %var_2_1684 = zext i32 %var_2_1683 to i64
; Matched:\<badref\>:  store i64 %var_2_1273, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1684, i64* %RAX.i798, align 8
; Matched:%var_2_1274:  %var_2_1274 = icmp eq i32 %var_2_1271, -1
; %var_2_1685 = icmp eq i32 %var_2_1682, -1
; Matched:%var_2_1275:  %var_2_1275 = icmp eq i32 %var_2_1272, 0
; %var_2_1686 = icmp eq i32 %var_2_1683, 0
; Matched:%var_2_1226:  %var_2_1226 = or i1 %var_2_1224, %var_2_1225
; %var_2_1687 = or i1 %var_2_1685, %var_2_1686
; Matched:%var_2_1277:  %var_2_1277 = zext i1 %var_2_1276 to i8
; %var_2_1688 = zext i1 %var_2_1687 to i8
; Matched:\<badref\>:  store i8 %var_2_1413, i8* %var_2_17, align 1, !tbaa !1265
; store i8 %var_2_1688, i8* %var_2_14, align 1
; Matched:%var_2_1414:  %var_2_1414 = and i32 %var_2_1408, 255
; %var_2_1689 = and i32 %var_2_1683, 255
; Matched:%var_2_1279:  %var_2_1279 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1278) #14
; %var_2_1690 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1689)
; Matched:%var_2_1280:  %var_2_1280 = trunc i32 %var_2_1279 to i8
; %var_2_1691 = trunc i32 %var_2_1690 to i8
; Matched:%var_2_1281:  %var_2_1281 = and i8 %var_2_1280, 1
; %var_2_1692 = and i8 %var_2_1691, 1
; Matched:%var_2_1282:  %var_2_1282 = xor i8 %var_2_1281, 1
; %var_2_1693 = xor i8 %var_2_1692, 1
; Matched:\<badref\>:  store i8 %var_2_1232, i8* %var_2_24, align 1, !tbaa !1279
; store i8 %var_2_1693, i8* %var_2_21, align 1
; Matched:%var_2_1283:  %var_2_1283 = xor i32 %var_2_1272, %var_2_1271
; %var_2_1694 = xor i32 %var_2_1683, %var_2_1682
; Matched:%var_2_1420:  %var_2_1420 = lshr i32 %var_2_1419, 4
; %var_2_1695 = lshr i32 %var_2_1694, 4
; Matched:%var_2_1421:  %var_2_1421 = trunc i32 %var_2_1420 to i8
; %var_2_1696 = trunc i32 %var_2_1695 to i8
; Matched:%var_2_1286:  %var_2_1286 = and i8 %var_2_1285, 1
; %var_2_1697 = and i8 %var_2_1696, 1
; Matched:\<badref\>:  store i8 %var_2_1286, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_1697, i8* %var_2_26, align 1
; Matched:%var_2_1287:  %var_2_1287 = zext i1 %var_2_1275 to i8
; %var_2_1698 = zext i1 %var_2_1686 to i8
; Matched:\<badref\>:  store i8 %var_2_1287, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_1698, i8* %var_2_29, align 1
; Matched:%var_2_1238:  %var_2_1238 = lshr i32 %var_2_1222, 31
; %var_2_1699 = lshr i32 %var_2_1683, 31
; Matched:%var_2_1289:  %var_2_1289 = trunc i32 %var_2_1288 to i8
; %var_2_1700 = trunc i32 %var_2_1699 to i8
; Matched:\<badref\>:  store i8 %var_2_1425, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_1700, i8* %var_2_32, align 1
; Matched:%var_2_1426:  %var_2_1426 = lshr i32 %var_2_1407, 31
; %var_2_1701 = lshr i32 %var_2_1682, 31
; Matched:%var_2_1291:  %var_2_1291 = xor i32 %var_2_1288, %var_2_1290
; %var_2_1702 = xor i32 %var_2_1699, %var_2_1701
; Matched:%var_2_1292:  %var_2_1292 = add nuw nsw i32 %var_2_1291, %var_2_1288
; %var_2_1703 = add nuw nsw i32 %var_2_1702, %var_2_1699
; Matched:%var_2_1293:  %var_2_1293 = icmp eq i32 %var_2_1292, 2
; %var_2_1704 = icmp eq i32 %var_2_1703, 2
; Matched:%var_2_1294:  %var_2_1294 = zext i1 %var_2_1293 to i8
; %var_2_1705 = zext i1 %var_2_1704 to i8
; Matched:\<badref\>:  store i8 %var_2_1244, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_1705, i8* %var_2_38, align 1
; Matched:%var_2_1295:  %var_2_1295 = sext i32 %var_2_1272 to i64
; %var_2_1706 = sext i32 %var_2_1683 to i64
; Matched:\<badref\>:  store i64 %var_2_1431, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1706, i64* %RDX.i786, align 8
; Matched:%var_2_1246:  %var_2_1246 = shl nsw i64 %var_2_1245, 3
; %var_2_1707 = shl nsw i64 %var_2_1706, 3
; Matched:%var_2_1247:  %var_2_1247 = add i64 %var_2_1219, %var_2_1246
; %var_2_1708 = add i64 %var_2_1680, %var_2_1707
; Matched:%var_2_1248:  %var_2_1248 = add i64 %var_2_1194, 44
; %var_2_1709 = add i64 %var_2_1655, 44
; Matched:\<badref\>:  store i64 %var_2_1248, i64* %PC, align 8
; store i64 %var_2_1709, i64* %var_2_3, align 8
; Matched:%var_2_1249:  %var_2_1249 = bitcast i64 %var_2_1217 to double
; %var_2_1710 = bitcast i64 %var_2_1678 to double
; Matched:%var_2_1250:  %var_2_1250 = inttoptr i64 %var_2_1247 to double*
; %var_2_1711 = inttoptr i64 %var_2_1708 to double*
; Matched:%var_2_1251:  %var_2_1251 = load double, double* %var_2_1250, align 8
; %var_2_1712 = load double, double* %var_2_1711, align 8
; Matched:%var_2_1252:  %var_2_1252 = fmul double %var_2_1249, %var_2_1251
; %var_2_1713 = fmul double %var_2_1710, %var_2_1712
; Matched:\<badref\>:  store double %var_2_1252, double* %var_2_1838, align 1, !tbaa !1285
; store double %var_2_1713, double* %var_2_205, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_1840, align 1, !tbaa !1285
; store i64 0, i64* %var_2_207, align 1
; Matched:%var_2_1253:  %var_2_1253 = fsub double %var_2_1213, %var_2_1252
; %var_2_1714 = fsub double %var_2_1674, %var_2_1713
; Matched:\<badref\>:  store double %var_2_1253, double* %var_2_1857, align 1, !tbaa !1285
; store double %var_2_1714, double* %var_2_228, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_1829, align 1, !tbaa !1285
; store i64 0, i64* %var_2_194, align 1
; Matched:%var_2_1254:  %var_2_1254 = load i64, i64* %RBP, align 8
; %var_2_1715 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1255:  %var_2_1255 = add i64 %var_2_1254, -112
; %var_2_1716 = add i64 %var_2_1715, -112
; Matched:%var_2_1256:  %var_2_1256 = add i64 %var_2_1194, 53
; %var_2_1717 = add i64 %var_2_1655, 53
; Matched:\<badref\>:  store i64 %var_2_1322, i64* %PC, align 8
; store i64 %var_2_1717, i64* %var_2_3, align 8
; Matched:%var_2_1257:  %var_2_1257 = inttoptr i64 %var_2_1255 to double*
; %var_2_1718 = inttoptr i64 %var_2_1716 to double*
; Matched:\<badref\>:  store double %var_2_1253, double* %var_2_1257, align 8
; store double %var_2_1714, double* %var_2_1718, align 8
%var_2_1719 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1193:  %var_2_1193 = add i64 %var_2_1192, -152
; %var_2_1720 = add i64 %var_2_1719, -152
%var_2_1721 = load i64, i64* %var_2_3, align 8
%var_2_1722 = add i64 %var_2_1721, 8
store i64 %var_2_1722, i64* %var_2_3, align 8
; Matched:%var_2_557:  %var_2_557 = inttoptr i64 %var_2_555 to i64*
; %var_2_1723 = inttoptr i64 %var_2_1720 to i64*
; Matched:%var_2_1197:  %var_2_1197 = load i64, i64* %var_2_1196, align 8
; %var_2_1724 = load i64, i64* %var_2_1723, align 8
; Matched:\<badref\>:  store i64 %var_2_1263, i64* %var_2_1828, align 1, !tbaa !1285
; store i64 %var_2_1724, i64* %var_2_225, align 1
store double 0.000000e+00, double* %var_2_195, align 1
; Matched:%var_2_1264:  %var_2_1264 = add i64 %var_2_1258, -8
; %var_2_1725 = add i64 %var_2_1719, -8
; Matched:%var_2_391:  %var_2_391 = add i64 %var_2_382, 12
; %var_2_1726 = add i64 %var_2_1721, 12
; Matched:\<badref\>:  store i64 %var_2_1471, i64* %PC, align 8
; store i64 %var_2_1726, i64* %var_2_3, align 8
; Matched:%var_2_204:  %var_2_204 = inttoptr i64 %var_2_201 to i64*
; %var_2_1727 = inttoptr i64 %var_2_1725 to i64*
; Matched:%var_2_1403:  %var_2_1403 = load i64, i64* %var_2_1361, align 8
; %var_2_1728 = load i64, i64* %var_2_1727, align 8
; Matched:\<badref\>:  store i64 %var_2_236, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1728, i64* %RCX.i788, align 8
%var_2_1729 = add i64 %var_2_1719, -80
; Matched:%var_2_1269:  %var_2_1269 = add i64 %var_2_1260, 15
; %var_2_1730 = add i64 %var_2_1721, 15
; Matched:\<badref\>:  store i64 %var_2_1269, i64* %PC, align 8
; store i64 %var_2_1730, i64* %var_2_3, align 8
%var_2_1731 = inttoptr i64 %var_2_1729 to i32*
; Matched:%var_2_1221:  %var_2_1221 = load i32, i32* %var_2_1204, align 4
; %var_2_1732 = load i32, i32* %var_2_1731, align 4
; Matched:%var_2_1222:  %var_2_1222 = add i32 %var_2_1221, 1
; %var_2_1733 = add i32 %var_2_1732, 1
; Matched:%var_2_1409:  %var_2_1409 = zext i32 %var_2_1408 to i64
; %var_2_1734 = zext i32 %var_2_1733 to i64
; Matched:\<badref\>:  store i64 %var_2_1409, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1734, i64* %RAX.i798, align 8
; Matched:%var_2_1410:  %var_2_1410 = icmp eq i32 %var_2_1407, -1
; %var_2_1735 = icmp eq i32 %var_2_1732, -1
; Matched:%var_2_1411:  %var_2_1411 = icmp eq i32 %var_2_1408, 0
; %var_2_1736 = icmp eq i32 %var_2_1733, 0
; Matched:%var_2_1276:  %var_2_1276 = or i1 %var_2_1274, %var_2_1275
; %var_2_1737 = or i1 %var_2_1735, %var_2_1736
; Matched:%var_2_1413:  %var_2_1413 = zext i1 %var_2_1412 to i8
; %var_2_1738 = zext i1 %var_2_1737 to i8
; Matched:\<badref\>:  store i8 %var_2_1227, i8* %var_2_17, align 1, !tbaa !1265
; store i8 %var_2_1738, i8* %var_2_14, align 1
; Matched:%var_2_1228:  %var_2_1228 = and i32 %var_2_1222, 255
; %var_2_1739 = and i32 %var_2_1733, 255
; Matched:%var_2_1415:  %var_2_1415 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1414) #14
; %var_2_1740 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1739)
; Matched:%var_2_1416:  %var_2_1416 = trunc i32 %var_2_1415 to i8
; %var_2_1741 = trunc i32 %var_2_1740 to i8
; Matched:%var_2_1417:  %var_2_1417 = and i8 %var_2_1416, 1
; %var_2_1742 = and i8 %var_2_1741, 1
; Matched:%var_2_1418:  %var_2_1418 = xor i8 %var_2_1417, 1
; %var_2_1743 = xor i8 %var_2_1742, 1
; Matched:\<badref\>:  store i8 %var_2_1282, i8* %var_2_24, align 1, !tbaa !1279
; store i8 %var_2_1743, i8* %var_2_21, align 1
; Matched:%var_2_1419:  %var_2_1419 = xor i32 %var_2_1408, %var_2_1407
; %var_2_1744 = xor i32 %var_2_1733, %var_2_1732
; Matched:%var_2_1234:  %var_2_1234 = lshr i32 %var_2_1233, 4
; %var_2_1745 = lshr i32 %var_2_1744, 4
; Matched:%var_2_1235:  %var_2_1235 = trunc i32 %var_2_1234 to i8
; %var_2_1746 = trunc i32 %var_2_1745 to i8
; Matched:%var_2_1422:  %var_2_1422 = and i8 %var_2_1421, 1
; %var_2_1747 = and i8 %var_2_1746, 1
; Matched:\<badref\>:  store i8 %var_2_1422, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_1747, i8* %var_2_26, align 1
; Matched:%var_2_1423:  %var_2_1423 = zext i1 %var_2_1411 to i8
; %var_2_1748 = zext i1 %var_2_1736 to i8
; Matched:\<badref\>:  store i8 %var_2_1423, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_1748, i8* %var_2_29, align 1
; Matched:%var_2_1288:  %var_2_1288 = lshr i32 %var_2_1272, 31
; %var_2_1749 = lshr i32 %var_2_1733, 31
; Matched:%var_2_1425:  %var_2_1425 = trunc i32 %var_2_1424 to i8
; %var_2_1750 = trunc i32 %var_2_1749 to i8
; Matched:\<badref\>:  store i8 %var_2_1239, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_1750, i8* %var_2_32, align 1
; Matched:%var_2_1240:  %var_2_1240 = lshr i32 %var_2_1221, 31
; %var_2_1751 = lshr i32 %var_2_1732, 31
; Matched:%var_2_1427:  %var_2_1427 = xor i32 %var_2_1424, %var_2_1426
; %var_2_1752 = xor i32 %var_2_1749, %var_2_1751
; Matched:%var_2_1428:  %var_2_1428 = add nuw nsw i32 %var_2_1427, %var_2_1424
; %var_2_1753 = add nuw nsw i32 %var_2_1752, %var_2_1749
; Matched:%var_2_1429:  %var_2_1429 = icmp eq i32 %var_2_1428, 2
; %var_2_1754 = icmp eq i32 %var_2_1753, 2
; Matched:%var_2_1430:  %var_2_1430 = zext i1 %var_2_1429 to i8
; %var_2_1755 = zext i1 %var_2_1754 to i8
; Matched:\<badref\>:  store i8 %var_2_1294, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_1755, i8* %var_2_38, align 1
; Matched:%var_2_1431:  %var_2_1431 = sext i32 %var_2_1408 to i64
; %var_2_1756 = sext i32 %var_2_1733 to i64
; Matched:\<badref\>:  store i64 %var_2_1245, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1756, i64* %RDX.i786, align 8
; Matched:%var_2_1296:  %var_2_1296 = shl nsw i64 %var_2_1295, 3
; %var_2_1757 = shl nsw i64 %var_2_1756, 3
; Matched:%var_2_1297:  %var_2_1297 = add i64 %var_2_1267, %var_2_1296
; %var_2_1758 = add i64 %var_2_1728, %var_2_1757
; Matched:%var_2_244:  %var_2_244 = add i64 %var_2_221, 26
; %var_2_1759 = add i64 %var_2_1721, 26
; Matched:\<badref\>:  store i64 %var_2_244, i64* %PC, align 8
; store i64 %var_2_1759, i64* %var_2_3, align 8
; Matched:%var_2_1299:  %var_2_1299 = bitcast i64 %var_2_1263 to double
; %var_2_1760 = bitcast i64 %var_2_1724 to double
; Matched:%var_2_1300:  %var_2_1300 = inttoptr i64 %var_2_1297 to double*
; %var_2_1761 = inttoptr i64 %var_2_1758 to double*
; Matched:%var_2_1301:  %var_2_1301 = load double, double* %var_2_1300, align 8
; %var_2_1762 = load double, double* %var_2_1761, align 8
; Matched:%var_2_1302:  %var_2_1302 = fmul double %var_2_1299, %var_2_1301
; %var_2_1763 = fmul double %var_2_1760, %var_2_1762
; Matched:\<badref\>:  store double %var_2_1302, double* %var_2_1857, align 1, !tbaa !1285
; store double %var_2_1763, double* %var_2_228, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_1829, align 1, !tbaa !1285
; store i64 0, i64* %var_2_194, align 1
; Matched:%var_2_1303:  %var_2_1303 = add i64 %var_2_1258, -128
; %var_2_1764 = add i64 %var_2_1719, -128
; Matched:%var_2_1304:  %var_2_1304 = add i64 %var_2_1260, 31
; %var_2_1765 = add i64 %var_2_1721, 31
; Matched:\<badref\>:  store i64 %var_2_1304, i64* %PC, align 8
; store i64 %var_2_1765, i64* %var_2_3, align 8
; Matched:%var_2_1305:  %var_2_1305 = inttoptr i64 %var_2_1303 to i64*
; %var_2_1766 = inttoptr i64 %var_2_1764 to i64*
; Matched:%var_2_573:  %var_2_573 = load i64, i64* %var_2_572, align 8
; %var_2_1767 = load i64, i64* %var_2_1766, align 8
; Matched:\<badref\>:  store i64 %var_2_1217, i64* %var_2_1839, align 1, !tbaa !1285
; store i64 %var_2_1767, i64* %var_2_206, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_1841, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_208, align 1
; Matched:%var_2_1307:  %var_2_1307 = add i64 %var_2_1260, 35
; %var_2_1768 = add i64 %var_2_1721, 35
; Matched:\<badref\>:  store i64 %var_2_1307, i64* %PC, align 8
; store i64 %var_2_1768, i64* %var_2_3, align 8
; Matched:%var_2_1219:  %var_2_1219 = load i64, i64* %var_2_1200, align 8
; %var_2_1769 = load i64, i64* %var_2_1727, align 8
; Matched:\<badref\>:  store i64 %var_2_1347, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1769, i64* %RCX.i788, align 8
; Matched:%var_2_1309:  %var_2_1309 = add i64 %var_2_1260, 39
; %var_2_1770 = add i64 %var_2_1721, 39
; Matched:\<badref\>:  store i64 %var_2_1309, i64* %PC, align 8
; store i64 %var_2_1770, i64* %var_2_3, align 8
; Matched:%var_2_1205:  %var_2_1205 = load i32, i32* %var_2_1204, align 4
; %var_2_1771 = load i32, i32* %var_2_1731, align 4
; Matched:%var_2_1352:  %var_2_1352 = sext i32 %var_2_1351 to i64
; %var_2_1772 = sext i32 %var_2_1771 to i64
; Matched:\<badref\>:  store i64 %var_2_1311, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1772, i64* %RDX.i786, align 8
; Matched:%var_2_1312:  %var_2_1312 = shl nsw i64 %var_2_1311, 3
; %var_2_1773 = shl nsw i64 %var_2_1772, 3
; Matched:%var_2_1313:  %var_2_1313 = add i64 %var_2_1312, %var_2_1308
; %var_2_1774 = add i64 %var_2_1773, %var_2_1769
; Matched:%var_2_1314:  %var_2_1314 = add i64 %var_2_1260, 44
; %var_2_1775 = add i64 %var_2_1721, 44
; Matched:\<badref\>:  store i64 %var_2_1314, i64* %PC, align 8
; store i64 %var_2_1775, i64* %var_2_3, align 8
; Matched:%var_2_1315:  %var_2_1315 = bitcast i64 %var_2_1306 to double
; %var_2_1776 = bitcast i64 %var_2_1767 to double
; Matched:%var_2_1316:  %var_2_1316 = inttoptr i64 %var_2_1313 to double*
; %var_2_1777 = inttoptr i64 %var_2_1774 to double*
; Matched:%var_2_1317:  %var_2_1317 = load double, double* %var_2_1316, align 8
; %var_2_1778 = load double, double* %var_2_1777, align 8
; Matched:%var_2_1318:  %var_2_1318 = fmul double %var_2_1315, %var_2_1317
; %var_2_1779 = fmul double %var_2_1776, %var_2_1778
; Matched:\<badref\>:  store double %var_2_1318, double* %var_2_1838, align 1, !tbaa !1285
; store double %var_2_1779, double* %var_2_205, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_1840, align 1, !tbaa !1285
; store i64 0, i64* %var_2_207, align 1
; Matched:%var_2_1319:  %var_2_1319 = fadd double %var_2_1302, %var_2_1318
; %var_2_1780 = fadd double %var_2_1763, %var_2_1779
; Matched:\<badref\>:  store double %var_2_1319, double* %var_2_1857, align 1, !tbaa !1285
; store double %var_2_1780, double* %var_2_228, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_1829, align 1, !tbaa !1285
; store i64 0, i64* %var_2_194, align 1
; Matched:%var_2_1320:  %var_2_1320 = load i64, i64* %RBP, align 8
; %var_2_1781 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1321:  %var_2_1321 = add i64 %var_2_1320, -104
; %var_2_1782 = add i64 %var_2_1781, -104
; Matched:%var_2_1322:  %var_2_1322 = add i64 %var_2_1260, 53
; %var_2_1783 = add i64 %var_2_1721, 53
; Matched:\<badref\>:  store i64 %var_2_1256, i64* %PC, align 8
; store i64 %var_2_1783, i64* %var_2_3, align 8
; Matched:%var_2_1323:  %var_2_1323 = inttoptr i64 %var_2_1321 to double*
; %var_2_1784 = inttoptr i64 %var_2_1782 to double*
; Matched:\<badref\>:  store double %var_2_1319, double* %var_2_1323, align 8
; store double %var_2_1780, double* %var_2_1784, align 8
%var_2_1785 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1325:  %var_2_1325 = add i64 %var_2_1324, -8
; %var_2_1786 = add i64 %var_2_1785, -8
%var_2_1787 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_268:  %var_2_268 = add i64 %var_2_267, 4
; %var_2_1788 = add i64 %var_2_1787, 4
; Matched:\<badref\>:  store i64 %var_2_203, i64* %PC, align 8
; store i64 %var_2_1788, i64* %var_2_3, align 8
; Matched:%var_2_1328:  %var_2_1328 = inttoptr i64 %var_2_1325 to i64*
; %var_2_1789 = inttoptr i64 %var_2_1786 to i64*
; Matched:%var_2_1445:  %var_2_1445 = load i64, i64* %var_2_1444, align 8
; %var_2_1790 = load i64, i64* %var_2_1789, align 8
; Matched:\<badref\>:  store i64 %var_2_1219, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1790, i64* %RCX.i788, align 8
; Matched:%var_2_1330:  %var_2_1330 = add i64 %var_2_1324, -76
; %var_2_1791 = add i64 %var_2_1785, -76
%var_2_1792 = add i64 %var_2_1787, 8
store i64 %var_2_1792, i64* %var_2_3, align 8
; Matched:%var_2_1448:  %var_2_1448 = inttoptr i64 %var_2_1446 to i32*
; %var_2_1793 = inttoptr i64 %var_2_1791 to i32*
; Matched:%var_2_1449:  %var_2_1449 = load i32, i32* %var_2_1448, align 4
; %var_2_1794 = load i32, i32* %var_2_1793, align 4
; Matched:%var_2_1450:  %var_2_1450 = sext i32 %var_2_1449 to i64
; %var_2_1795 = sext i32 %var_2_1794 to i64
; Matched:\<badref\>:  store i64 %var_2_1450, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1795, i64* %RDX.i786, align 8
; Matched:%var_2_1335:  %var_2_1335 = shl nsw i64 %var_2_1334, 3
; %var_2_1796 = shl nsw i64 %var_2_1795, 3
; Matched:%var_2_1336:  %var_2_1336 = add i64 %var_2_1335, %var_2_1329
; %var_2_1797 = add i64 %var_2_1796, %var_2_1790
; Matched:%var_2_213:  %var_2_213 = add i64 %var_2_202, 13
; %var_2_1798 = add i64 %var_2_1787, 13
; Matched:\<badref\>:  store i64 %var_2_2119, i64* %PC, align 8
; store i64 %var_2_1798, i64* %var_2_3, align 8
; Matched:%var_2_1338:  %var_2_1338 = inttoptr i64 %var_2_1336 to i64*
; %var_2_1799 = inttoptr i64 %var_2_1797 to i64*
; Matched:%var_2_1339:  %var_2_1339 = load i64, i64* %var_2_1338, align 8
; %var_2_1800 = load i64, i64* %var_2_1799, align 8
; Matched:\<badref\>:  store i64 %var_2_1339, i64* %var_2_1828, align 1, !tbaa !1285
; store i64 %var_2_1800, i64* %var_2_225, align 1
store double 0.000000e+00, double* %var_2_195, align 1
; Matched:%var_2_1340:  %var_2_1340 = add i64 %var_2_1324, -112
; %var_2_1801 = add i64 %var_2_1785, -112
; Matched:%var_2_217:  %var_2_217 = add i64 %var_2_202, 18
; %var_2_1802 = add i64 %var_2_1787, 18
; Matched:\<badref\>:  store i64 %var_2_217, i64* %PC, align 8
; store i64 %var_2_1802, i64* %var_2_3, align 8
; Matched:%var_2_1342:  %var_2_1342 = bitcast i64 %var_2_1339 to double
; %var_2_1803 = bitcast i64 %var_2_1800 to double
; Matched:%var_2_1343:  %var_2_1343 = inttoptr i64 %var_2_1340 to double*
; %var_2_1804 = inttoptr i64 %var_2_1801 to double*
; Matched:%var_2_1344:  %var_2_1344 = load double, double* %var_2_1343, align 8
; %var_2_1805 = load double, double* %var_2_1804, align 8
; Matched:%var_2_1345:  %var_2_1345 = fsub double %var_2_1342, %var_2_1344
; %var_2_1806 = fsub double %var_2_1803, %var_2_1805
; Matched:\<badref\>:  store double %var_2_1345, double* %var_2_1857, align 1, !tbaa !1285
; store double %var_2_1806, double* %var_2_228, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_1829, align 1, !tbaa !1285
; store i64 0, i64* %var_2_194, align 1
; Matched:%var_2_346:  %var_2_346 = add i64 %var_2_309, 22
; %var_2_1807 = add i64 %var_2_1787, 22
; Matched:\<badref\>:  store i64 %var_2_1346, i64* %PC, align 8
; store i64 %var_2_1807, i64* %var_2_3, align 8
; Matched:%var_2_1267:  %var_2_1267 = load i64, i64* %var_2_1266, align 8
; %var_2_1808 = load i64, i64* %var_2_1789, align 8
; Matched:\<badref\>:  store i64 %var_2_1362, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1808, i64* %RCX.i788, align 8
%var_2_1809 = add i64 %var_2_1785, -80
; Matched:%var_2_1349:  %var_2_1349 = add i64 %var_2_1326, 26
; %var_2_1810 = add i64 %var_2_1787, 26
; Matched:\<badref\>:  store i64 %var_2_1215, i64* %PC, align 8
; store i64 %var_2_1810, i64* %var_2_3, align 8
%var_2_1811 = inttoptr i64 %var_2_1809 to i32*
; Matched:%var_2_1310:  %var_2_1310 = load i32, i32* %var_2_1270, align 4
; %var_2_1812 = load i32, i32* %var_2_1811, align 4
; Matched:%var_2_1206:  %var_2_1206 = sext i32 %var_2_1205 to i64
; %var_2_1813 = sext i32 %var_2_1812 to i64
; Matched:\<badref\>:  store i64 %var_2_1352, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1813, i64* %RDX.i786, align 8
; Matched:%var_2_1353:  %var_2_1353 = shl nsw i64 %var_2_1352, 3
; %var_2_1814 = shl nsw i64 %var_2_1813, 3
; Matched:%var_2_1354:  %var_2_1354 = add i64 %var_2_1353, %var_2_1347
; %var_2_1815 = add i64 %var_2_1814, %var_2_1808
; Matched:%var_2_1355:  %var_2_1355 = add i64 %var_2_1326, 31
; %var_2_1816 = add i64 %var_2_1787, 31
; Matched:\<badref\>:  store i64 %var_2_1355, i64* %PC, align 8
; store i64 %var_2_1816, i64* %var_2_3, align 8
; Matched:%var_2_1356:  %var_2_1356 = inttoptr i64 %var_2_1354 to double*
; %var_2_1817 = inttoptr i64 %var_2_1815 to double*
; Matched:\<badref\>:  store double %var_2_1345, double* %var_2_1356, align 8
; store double %var_2_1806, double* %var_2_1817, align 8
%var_2_1818 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_201:  %var_2_201 = add i64 %var_2_200, -8
; %var_2_1819 = add i64 %var_2_1818, -8
%var_2_1820 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_50:  %var_2_50 = add i64 %var_2_49, 4
; %var_2_1821 = add i64 %var_2_1820, 4
; Matched:\<badref\>:  store i64 %var_2_268, i64* %PC, align 8
; store i64 %var_2_1821, i64* %var_2_3, align 8
; Matched:%var_2_223:  %var_2_223 = inttoptr i64 %var_2_220 to i64*
; %var_2_1822 = inttoptr i64 %var_2_1819 to i64*
; Matched:%var_2_1469:  %var_2_1469 = load i64, i64* %var_2_1468, align 8
; %var_2_1823 = load i64, i64* %var_2_1822, align 8
; Matched:\<badref\>:  store i64 %var_2_1469, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1823, i64* %RCX.i788, align 8
; Matched:%var_2_1363:  %var_2_1363 = add i64 %var_2_1357, -76
; %var_2_1824 = add i64 %var_2_1818, -76
; Matched:%var_2_314:  %var_2_314 = add i64 %var_2_309, 7
; %var_2_1825 = add i64 %var_2_1820, 7
; Matched:\<badref\>:  store i64 %var_2_314, i64* %PC, align 8
; store i64 %var_2_1825, i64* %var_2_3, align 8
; Matched:%var_2_1365:  %var_2_1365 = inttoptr i64 %var_2_1363 to i32*
; %var_2_1826 = inttoptr i64 %var_2_1824 to i32*
; Matched:%var_2_1473:  %var_2_1473 = load i32, i32* %var_2_1472, align 4
; %var_2_1827 = load i32, i32* %var_2_1826, align 4
; Matched:%var_2_1367:  %var_2_1367 = add i32 %var_2_1366, 1
; %var_2_1828 = add i32 %var_2_1827, 1
; Matched:%var_2_1368:  %var_2_1368 = zext i32 %var_2_1367 to i64
; %var_2_1829 = zext i32 %var_2_1828 to i64
; Matched:\<badref\>:  store i64 %var_2_1475, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1829, i64* %RAX.i798, align 8
; Matched:%var_2_1369:  %var_2_1369 = icmp eq i32 %var_2_1366, -1
; %var_2_1830 = icmp eq i32 %var_2_1827, -1
; Matched:%var_2_1370:  %var_2_1370 = icmp eq i32 %var_2_1367, 0
; %var_2_1831 = icmp eq i32 %var_2_1828, 0
; Matched:%var_2_1478:  %var_2_1478 = or i1 %var_2_1476, %var_2_1477
; %var_2_1832 = or i1 %var_2_1830, %var_2_1831
; Matched:%var_2_1479:  %var_2_1479 = zext i1 %var_2_1478 to i8
; %var_2_1833 = zext i1 %var_2_1832 to i8
; Matched:\<badref\>:  store i8 %var_2_1479, i8* %var_2_17, align 1, !tbaa !1265
; store i8 %var_2_1833, i8* %var_2_14, align 1
; Matched:%var_2_1373:  %var_2_1373 = and i32 %var_2_1367, 255
; %var_2_1834 = and i32 %var_2_1828, 255
; Matched:%var_2_1374:  %var_2_1374 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1373) #14
; %var_2_1835 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1834)
; Matched:%var_2_1482:  %var_2_1482 = trunc i32 %var_2_1481 to i8
; %var_2_1836 = trunc i32 %var_2_1835 to i8
; Matched:%var_2_1376:  %var_2_1376 = and i8 %var_2_1375, 1
; %var_2_1837 = and i8 %var_2_1836, 1
; Matched:%var_2_1484:  %var_2_1484 = xor i8 %var_2_1483, 1
; %var_2_1838 = xor i8 %var_2_1837, 1
; Matched:\<badref\>:  store i8 %var_2_1377, i8* %var_2_24, align 1, !tbaa !1279
; store i8 %var_2_1838, i8* %var_2_21, align 1
; Matched:%var_2_1485:  %var_2_1485 = xor i32 %var_2_1474, %var_2_1473
; %var_2_1839 = xor i32 %var_2_1828, %var_2_1827
; Matched:%var_2_1486:  %var_2_1486 = lshr i32 %var_2_1485, 4
; %var_2_1840 = lshr i32 %var_2_1839, 4
; Matched:%var_2_1380:  %var_2_1380 = trunc i32 %var_2_1379 to i8
; %var_2_1841 = trunc i32 %var_2_1840 to i8
; Matched:%var_2_1381:  %var_2_1381 = and i8 %var_2_1380, 1
; %var_2_1842 = and i8 %var_2_1841, 1
; Matched:\<badref\>:  store i8 %var_2_1488, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_1842, i8* %var_2_26, align 1
; Matched:%var_2_1489:  %var_2_1489 = zext i1 %var_2_1477 to i8
; %var_2_1843 = zext i1 %var_2_1831 to i8
; Matched:\<badref\>:  store i8 %var_2_1489, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_1843, i8* %var_2_29, align 1
; Matched:%var_2_1383:  %var_2_1383 = lshr i32 %var_2_1367, 31
; %var_2_1844 = lshr i32 %var_2_1828, 31
; Matched:%var_2_1491:  %var_2_1491 = trunc i32 %var_2_1490 to i8
; %var_2_1845 = trunc i32 %var_2_1844 to i8
; Matched:\<badref\>:  store i8 %var_2_1491, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_1845, i8* %var_2_32, align 1
; Matched:%var_2_1385:  %var_2_1385 = lshr i32 %var_2_1366, 31
; %var_2_1846 = lshr i32 %var_2_1827, 31
; Matched:%var_2_1386:  %var_2_1386 = xor i32 %var_2_1383, %var_2_1385
; %var_2_1847 = xor i32 %var_2_1844, %var_2_1846
; Matched:%var_2_1494:  %var_2_1494 = add nuw nsw i32 %var_2_1493, %var_2_1490
; %var_2_1848 = add nuw nsw i32 %var_2_1847, %var_2_1844
; Matched:%var_2_1388:  %var_2_1388 = icmp eq i32 %var_2_1387, 2
; %var_2_1849 = icmp eq i32 %var_2_1848, 2
; Matched:%var_2_1389:  %var_2_1389 = zext i1 %var_2_1388 to i8
; %var_2_1850 = zext i1 %var_2_1849 to i8
; Matched:\<badref\>:  store i8 %var_2_1389, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_1850, i8* %var_2_38, align 1
; Matched:%var_2_1497:  %var_2_1497 = sext i32 %var_2_1474 to i64
; %var_2_1851 = sext i32 %var_2_1828 to i64
; Matched:\<badref\>:  store i64 %var_2_1497, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1851, i64* %RDX.i786, align 8
; Matched:%var_2_1391:  %var_2_1391 = shl nsw i64 %var_2_1390, 3
; %var_2_1852 = shl nsw i64 %var_2_1851, 3
; Matched:%var_2_1392:  %var_2_1392 = add i64 %var_2_1362, %var_2_1391
; %var_2_1853 = add i64 %var_2_1823, %var_2_1852
; Matched:%var_2_1393:  %var_2_1393 = add i64 %var_2_1359, 18
; %var_2_1854 = add i64 %var_2_1820, 18
; Matched:\<badref\>:  store i64 %var_2_1393, i64* %PC, align 8
; store i64 %var_2_1854, i64* %var_2_3, align 8
; Matched:%var_2_1394:  %var_2_1394 = inttoptr i64 %var_2_1392 to i64*
; %var_2_1855 = inttoptr i64 %var_2_1853 to i64*
; Matched:%var_2_1395:  %var_2_1395 = load i64, i64* %var_2_1394, align 8
; %var_2_1856 = load i64, i64* %var_2_1855, align 8
; Matched:\<badref\>:  store i64 %var_2_1395, i64* %var_2_1828, align 1, !tbaa !1285
; store i64 %var_2_1856, i64* %var_2_225, align 1
store double 0.000000e+00, double* %var_2_195, align 1
; Matched:%var_2_1396:  %var_2_1396 = add i64 %var_2_1357, -104
; %var_2_1857 = add i64 %var_2_1818, -104
; Matched:%var_2_1397:  %var_2_1397 = add i64 %var_2_1359, 23
; %var_2_1858 = add i64 %var_2_1820, 23
; Matched:\<badref\>:  store i64 %var_2_1397, i64* %PC, align 8
; store i64 %var_2_1858, i64* %var_2_3, align 8
; Matched:%var_2_1398:  %var_2_1398 = bitcast i64 %var_2_1395 to double
; %var_2_1859 = bitcast i64 %var_2_1856 to double
; Matched:%var_2_1399:  %var_2_1399 = inttoptr i64 %var_2_1396 to double*
; %var_2_1860 = inttoptr i64 %var_2_1857 to double*
; Matched:%var_2_1400:  %var_2_1400 = load double, double* %var_2_1399, align 8
; %var_2_1861 = load double, double* %var_2_1860, align 8
; Matched:%var_2_1401:  %var_2_1401 = fsub double %var_2_1398, %var_2_1400
; %var_2_1862 = fsub double %var_2_1859, %var_2_1861
; Matched:\<badref\>:  store double %var_2_1401, double* %var_2_1857, align 1, !tbaa !1285
; store double %var_2_1862, double* %var_2_228, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_1829, align 1, !tbaa !1285
; store i64 0, i64* %var_2_194, align 1
; Matched:%var_2_1402:  %var_2_1402 = add i64 %var_2_1359, 27
; %var_2_1863 = add i64 %var_2_1820, 27
; Matched:\<badref\>:  store i64 %var_2_1402, i64* %PC, align 8
; store i64 %var_2_1863, i64* %var_2_3, align 8
; Matched:%var_2_255:  %var_2_255 = load i64, i64* %var_2_254, align 8
; %var_2_1864 = load i64, i64* %var_2_1822, align 8
; Matched:\<badref\>:  store i64 %var_2_1329, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1864, i64* %RCX.i788, align 8
%var_2_1865 = add i64 %var_2_1818, -80
; Matched:%var_2_1218:  %var_2_1218 = add i64 %var_2_1194, 30
; %var_2_1866 = add i64 %var_2_1820, 30
; Matched:\<badref\>:  store i64 %var_2_1405, i64* %PC, align 8
; store i64 %var_2_1866, i64* %var_2_3, align 8
%var_2_1867 = inttoptr i64 %var_2_1865 to i32*
; Matched:%var_2_1271:  %var_2_1271 = load i32, i32* %var_2_1270, align 4
; %var_2_1868 = load i32, i32* %var_2_1867, align 4
; Matched:%var_2_1272:  %var_2_1272 = add i32 %var_2_1271, 1
; %var_2_1869 = add i32 %var_2_1868, 1
; Matched:%var_2_1223:  %var_2_1223 = zext i32 %var_2_1222 to i64
; %var_2_1870 = zext i32 %var_2_1869 to i64
; Matched:\<badref\>:  store i64 %var_2_1223, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1870, i64* %RAX.i798, align 8
; Matched:%var_2_1224:  %var_2_1224 = icmp eq i32 %var_2_1221, -1
; %var_2_1871 = icmp eq i32 %var_2_1868, -1
; Matched:%var_2_1225:  %var_2_1225 = icmp eq i32 %var_2_1222, 0
; %var_2_1872 = icmp eq i32 %var_2_1869, 0
; Matched:%var_2_1412:  %var_2_1412 = or i1 %var_2_1410, %var_2_1411
; %var_2_1873 = or i1 %var_2_1871, %var_2_1872
; Matched:%var_2_1227:  %var_2_1227 = zext i1 %var_2_1226 to i8
; %var_2_1874 = zext i1 %var_2_1873 to i8
; Matched:\<badref\>:  store i8 %var_2_1277, i8* %var_2_17, align 1, !tbaa !1265
; store i8 %var_2_1874, i8* %var_2_14, align 1
; Matched:%var_2_1278:  %var_2_1278 = and i32 %var_2_1272, 255
; %var_2_1875 = and i32 %var_2_1869, 255
; Matched:%var_2_1229:  %var_2_1229 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1228) #14
; %var_2_1876 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1875)
; Matched:%var_2_1230:  %var_2_1230 = trunc i32 %var_2_1229 to i8
; %var_2_1877 = trunc i32 %var_2_1876 to i8
; Matched:%var_2_1231:  %var_2_1231 = and i8 %var_2_1230, 1
; %var_2_1878 = and i8 %var_2_1877, 1
; Matched:%var_2_1232:  %var_2_1232 = xor i8 %var_2_1231, 1
; %var_2_1879 = xor i8 %var_2_1878, 1
; Matched:\<badref\>:  store i8 %var_2_1418, i8* %var_2_24, align 1, !tbaa !1279
; store i8 %var_2_1879, i8* %var_2_21, align 1
; Matched:%var_2_1233:  %var_2_1233 = xor i32 %var_2_1222, %var_2_1221
; %var_2_1880 = xor i32 %var_2_1869, %var_2_1868
; Matched:%var_2_1284:  %var_2_1284 = lshr i32 %var_2_1283, 4
; %var_2_1881 = lshr i32 %var_2_1880, 4
; Matched:%var_2_1285:  %var_2_1285 = trunc i32 %var_2_1284 to i8
; %var_2_1882 = trunc i32 %var_2_1881 to i8
; Matched:%var_2_1236:  %var_2_1236 = and i8 %var_2_1235, 1
; %var_2_1883 = and i8 %var_2_1882, 1
; Matched:\<badref\>:  store i8 %var_2_1236, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_1883, i8* %var_2_26, align 1
; Matched:%var_2_1237:  %var_2_1237 = zext i1 %var_2_1225 to i8
; %var_2_1884 = zext i1 %var_2_1872 to i8
; Matched:\<badref\>:  store i8 %var_2_1237, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_1884, i8* %var_2_29, align 1
; Matched:%var_2_1424:  %var_2_1424 = lshr i32 %var_2_1408, 31
; %var_2_1885 = lshr i32 %var_2_1869, 31
; Matched:%var_2_1239:  %var_2_1239 = trunc i32 %var_2_1238 to i8
; %var_2_1886 = trunc i32 %var_2_1885 to i8
; Matched:\<badref\>:  store i8 %var_2_1289, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_1886, i8* %var_2_32, align 1
; Matched:%var_2_1290:  %var_2_1290 = lshr i32 %var_2_1271, 31
; %var_2_1887 = lshr i32 %var_2_1868, 31
; Matched:%var_2_1241:  %var_2_1241 = xor i32 %var_2_1238, %var_2_1240
; %var_2_1888 = xor i32 %var_2_1885, %var_2_1887
; Matched:%var_2_1242:  %var_2_1242 = add nuw nsw i32 %var_2_1241, %var_2_1238
; %var_2_1889 = add nuw nsw i32 %var_2_1888, %var_2_1885
; Matched:%var_2_1243:  %var_2_1243 = icmp eq i32 %var_2_1242, 2
; %var_2_1890 = icmp eq i32 %var_2_1889, 2
; Matched:%var_2_1244:  %var_2_1244 = zext i1 %var_2_1243 to i8
; %var_2_1891 = zext i1 %var_2_1890 to i8
; Matched:\<badref\>:  store i8 %var_2_1430, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_1891, i8* %var_2_38, align 1
; Matched:%var_2_1245:  %var_2_1245 = sext i32 %var_2_1222 to i64
; %var_2_1892 = sext i32 %var_2_1869 to i64
; Matched:\<badref\>:  store i64 %var_2_1295, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1892, i64* %RDX.i786, align 8
; Matched:%var_2_1432:  %var_2_1432 = shl nsw i64 %var_2_1431, 3
; %var_2_1893 = shl nsw i64 %var_2_1892, 3
; Matched:%var_2_1433:  %var_2_1433 = add i64 %var_2_1403, %var_2_1432
; %var_2_1894 = add i64 %var_2_1864, %var_2_1893
; Matched:%var_2_1434:  %var_2_1434 = add i64 %var_2_1359, 41
; %var_2_1895 = add i64 %var_2_1820, 41
; Matched:\<badref\>:  store i64 %var_2_586, i64* %PC, align 8
; store i64 %var_2_1895, i64* %var_2_3, align 8
; Matched:%var_2_1435:  %var_2_1435 = inttoptr i64 %var_2_1433 to double*
; %var_2_1896 = inttoptr i64 %var_2_1894 to double*
; Matched:\<badref\>:  store double %var_2_1401, double* %var_2_1435, align 8
; store double %var_2_1862, double* %var_2_1896, align 8
%var_2_1897 = load i64, i64* %RBP.i, align 8
%var_2_1898 = add i64 %var_2_1897, -112
%var_2_1899 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_249:  %var_2_249 = add i64 %var_2_248, 5
; %var_2_1900 = add i64 %var_2_1899, 5
; Matched:\<badref\>:  store i64 %var_2_249, i64* %PC, align 8
; store i64 %var_2_1900, i64* %var_2_3, align 8
%var_2_1901 = inttoptr i64 %var_2_1898 to i64*
%var_2_1902 = load i64, i64* %var_2_1901, align 8
store i64 %var_2_1902, i64* %var_2_225, align 1
store double 0.000000e+00, double* %var_2_195, align 1
; Matched:%var_2_1466:  %var_2_1466 = add i64 %var_2_1460, -8
; %var_2_1903 = add i64 %var_2_1897, -8
%var_2_1904 = add i64 %var_2_1899, 9
store i64 %var_2_1904, i64* %var_2_3, align 8
; Matched:%var_2_1266:  %var_2_1266 = inttoptr i64 %var_2_1264 to i64*
; %var_2_1905 = inttoptr i64 %var_2_1903 to i64*
; Matched:%var_2_205:  %var_2_205 = load i64, i64* %var_2_204, align 8
; %var_2_1906 = load i64, i64* %var_2_1905, align 8
; Matched:\<badref\>:  store i64 %var_2_389, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1906, i64* %RCX.i788, align 8
; Matched:%var_2_1446:  %var_2_1446 = add i64 %var_2_1436, -76
; %var_2_1907 = add i64 %var_2_1897, -76
; Matched:%var_2_2119:  %var_2_2119 = add i64 %var_2_2114, 13
; %var_2_1908 = add i64 %var_2_1899, 13
; Matched:\<badref\>:  store i64 %var_2_232, i64* %PC, align 8
; store i64 %var_2_1908, i64* %var_2_3, align 8
; Matched:%var_2_1332:  %var_2_1332 = inttoptr i64 %var_2_1330 to i32*
; %var_2_1909 = inttoptr i64 %var_2_1907 to i32*
; Matched:%var_2_1333:  %var_2_1333 = load i32, i32* %var_2_1332, align 4
; %var_2_1910 = load i32, i32* %var_2_1909, align 4
; Matched:%var_2_1334:  %var_2_1334 = sext i32 %var_2_1333 to i64
; %var_2_1911 = sext i32 %var_2_1910 to i64
; Matched:\<badref\>:  store i64 %var_2_1334, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1911, i64* %RDX.i786, align 8
; Matched:%var_2_1451:  %var_2_1451 = shl nsw i64 %var_2_1450, 3
; %var_2_1912 = shl nsw i64 %var_2_1911, 3
; Matched:%var_2_1452:  %var_2_1452 = add i64 %var_2_1451, %var_2_1445
; %var_2_1913 = add i64 %var_2_1912, %var_2_1906
; Matched:%var_2_1341:  %var_2_1341 = add i64 %var_2_1326, 18
; %var_2_1914 = add i64 %var_2_1899, 18
; Matched:\<badref\>:  store i64 %var_2_1341, i64* %PC, align 8
; store i64 %var_2_1914, i64* %var_2_3, align 8
; Matched:%var_2_1454:  %var_2_1454 = bitcast i64 %var_2_1441 to double
; %var_2_1915 = bitcast i64 %var_2_1902 to double
; Matched:%var_2_1455:  %var_2_1455 = inttoptr i64 %var_2_1452 to double*
; %var_2_1916 = inttoptr i64 %var_2_1913 to double*
; Matched:%var_2_1456:  %var_2_1456 = load double, double* %var_2_1455, align 8
; %var_2_1917 = load double, double* %var_2_1916, align 8
; Matched:%var_2_1457:  %var_2_1457 = fadd double %var_2_1454, %var_2_1456
; %var_2_1918 = fadd double %var_2_1915, %var_2_1917
; Matched:\<badref\>:  store double %var_2_1457, double* %var_2_1857, align 1, !tbaa !1285
; store double %var_2_1918, double* %var_2_228, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_1829, align 1, !tbaa !1285
; store i64 0, i64* %var_2_194, align 1
; Matched:%var_2_420:  %var_2_420 = add i64 %var_2_382, 23
; %var_2_1919 = add i64 %var_2_1899, 23
; Matched:\<badref\>:  store i64 %var_2_420, i64* %PC, align 8
; store i64 %var_2_1919, i64* %var_2_3, align 8
; Matched:%var_2_1459:  %var_2_1459 = inttoptr i64 %var_2_1452 to double*
; %var_2_1920 = inttoptr i64 %var_2_1913 to double*
; Matched:\<badref\>:  store double %var_2_1457, double* %var_2_1459, align 8
; store double %var_2_1918, double* %var_2_1920, align 8
%var_2_1921 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1461:  %var_2_1461 = add i64 %var_2_1460, -104
; %var_2_1922 = add i64 %var_2_1921, -104
%var_2_1923 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1463:  %var_2_1463 = add i64 %var_2_1462, 5
; %var_2_1924 = add i64 %var_2_1923, 5
; Matched:\<badref\>:  store i64 %var_2_591, i64* %PC, align 8
; store i64 %var_2_1924, i64* %var_2_3, align 8
; Matched:%var_2_1464:  %var_2_1464 = inttoptr i64 %var_2_1461 to i64*
; %var_2_1925 = inttoptr i64 %var_2_1922 to i64*
; Matched:%var_2_1465:  %var_2_1465 = load i64, i64* %var_2_1464, align 8
; %var_2_1926 = load i64, i64* %var_2_1925, align 8
; Matched:\<badref\>:  store i64 %var_2_1465, i64* %var_2_1828, align 1, !tbaa !1285
; store i64 %var_2_1926, i64* %var_2_225, align 1
store double 0.000000e+00, double* %var_2_195, align 1
; Matched:%var_2_308:  %var_2_308 = add i64 %var_2_307, -8
; %var_2_1927 = add i64 %var_2_1921, -8
%var_2_1928 = add i64 %var_2_1923, 9
store i64 %var_2_1928, i64* %var_2_3, align 8
; Matched:%var_2_1468:  %var_2_1468 = inttoptr i64 %var_2_1466 to i64*
; %var_2_1929 = inttoptr i64 %var_2_1927 to i64*
; Matched:%var_2_1329:  %var_2_1329 = load i64, i64* %var_2_1328, align 8
; %var_2_1930 = load i64, i64* %var_2_1929, align 8
; Matched:\<badref\>:  store i64 %var_2_255, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1930, i64* %RCX.i788, align 8
; Matched:%var_2_1470:  %var_2_1470 = add i64 %var_2_1460, -76
; %var_2_1931 = add i64 %var_2_1921, -76
; Matched:%var_2_1265:  %var_2_1265 = add i64 %var_2_1260, 12
; %var_2_1932 = add i64 %var_2_1923, 12
; Matched:\<badref\>:  store i64 %var_2_1199, i64* %PC, align 8
; store i64 %var_2_1932, i64* %var_2_3, align 8
; Matched:%var_2_1472:  %var_2_1472 = inttoptr i64 %var_2_1470 to i32*
; %var_2_1933 = inttoptr i64 %var_2_1931 to i32*
; Matched:%var_2_1366:  %var_2_1366 = load i32, i32* %var_2_1365, align 4
; %var_2_1934 = load i32, i32* %var_2_1933, align 4
; Matched:%var_2_1474:  %var_2_1474 = add i32 %var_2_1473, 1
; %var_2_1935 = add i32 %var_2_1934, 1
; Matched:%var_2_1475:  %var_2_1475 = zext i32 %var_2_1474 to i64
; %var_2_1936 = zext i32 %var_2_1935 to i64
; Matched:\<badref\>:  store i64 %var_2_1368, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1936, i64* %RAX.i798, align 8
; Matched:%var_2_1476:  %var_2_1476 = icmp eq i32 %var_2_1473, -1
; %var_2_1937 = icmp eq i32 %var_2_1934, -1
; Matched:%var_2_1477:  %var_2_1477 = icmp eq i32 %var_2_1474, 0
; %var_2_1938 = icmp eq i32 %var_2_1935, 0
; Matched:%var_2_1371:  %var_2_1371 = or i1 %var_2_1369, %var_2_1370
; %var_2_1939 = or i1 %var_2_1937, %var_2_1938
; Matched:%var_2_1372:  %var_2_1372 = zext i1 %var_2_1371 to i8
; %var_2_1940 = zext i1 %var_2_1939 to i8
; Matched:\<badref\>:  store i8 %var_2_1372, i8* %var_2_17, align 1, !tbaa !1265
; store i8 %var_2_1940, i8* %var_2_14, align 1
; Matched:%var_2_1480:  %var_2_1480 = and i32 %var_2_1474, 255
; %var_2_1941 = and i32 %var_2_1935, 255
; Matched:%var_2_1481:  %var_2_1481 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1480) #14
; %var_2_1942 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1941)
; Matched:%var_2_1375:  %var_2_1375 = trunc i32 %var_2_1374 to i8
; %var_2_1943 = trunc i32 %var_2_1942 to i8
; Matched:%var_2_1483:  %var_2_1483 = and i8 %var_2_1482, 1
; %var_2_1944 = and i8 %var_2_1943, 1
; Matched:%var_2_1377:  %var_2_1377 = xor i8 %var_2_1376, 1
; %var_2_1945 = xor i8 %var_2_1944, 1
; Matched:\<badref\>:  store i8 %var_2_1484, i8* %var_2_24, align 1, !tbaa !1279
; store i8 %var_2_1945, i8* %var_2_21, align 1
; Matched:%var_2_1378:  %var_2_1378 = xor i32 %var_2_1367, %var_2_1366
; %var_2_1946 = xor i32 %var_2_1935, %var_2_1934
; Matched:%var_2_1379:  %var_2_1379 = lshr i32 %var_2_1378, 4
; %var_2_1947 = lshr i32 %var_2_1946, 4
; Matched:%var_2_1487:  %var_2_1487 = trunc i32 %var_2_1486 to i8
; %var_2_1948 = trunc i32 %var_2_1947 to i8
; Matched:%var_2_1488:  %var_2_1488 = and i8 %var_2_1487, 1
; %var_2_1949 = and i8 %var_2_1948, 1
; Matched:\<badref\>:  store i8 %var_2_1381, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_1949, i8* %var_2_26, align 1
; Matched:%var_2_1382:  %var_2_1382 = zext i1 %var_2_1370 to i8
; %var_2_1950 = zext i1 %var_2_1938 to i8
; Matched:\<badref\>:  store i8 %var_2_1382, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_1950, i8* %var_2_29, align 1
; Matched:%var_2_1490:  %var_2_1490 = lshr i32 %var_2_1474, 31
; %var_2_1951 = lshr i32 %var_2_1935, 31
; Matched:%var_2_1384:  %var_2_1384 = trunc i32 %var_2_1383 to i8
; %var_2_1952 = trunc i32 %var_2_1951 to i8
; Matched:\<badref\>:  store i8 %var_2_1384, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_1952, i8* %var_2_32, align 1
; Matched:%var_2_1492:  %var_2_1492 = lshr i32 %var_2_1473, 31
; %var_2_1953 = lshr i32 %var_2_1934, 31
; Matched:%var_2_1493:  %var_2_1493 = xor i32 %var_2_1490, %var_2_1492
; %var_2_1954 = xor i32 %var_2_1951, %var_2_1953
; Matched:%var_2_1387:  %var_2_1387 = add nuw nsw i32 %var_2_1386, %var_2_1383
; %var_2_1955 = add nuw nsw i32 %var_2_1954, %var_2_1951
; Matched:%var_2_1495:  %var_2_1495 = icmp eq i32 %var_2_1494, 2
; %var_2_1956 = icmp eq i32 %var_2_1955, 2
; Matched:%var_2_1496:  %var_2_1496 = zext i1 %var_2_1495 to i8
; %var_2_1957 = zext i1 %var_2_1956 to i8
; Matched:\<badref\>:  store i8 %var_2_1496, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_1957, i8* %var_2_38, align 1
; Matched:%var_2_1390:  %var_2_1390 = sext i32 %var_2_1367 to i64
; %var_2_1958 = sext i32 %var_2_1935 to i64
; Matched:\<badref\>:  store i64 %var_2_1390, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1958, i64* %RDX.i786, align 8
; Matched:%var_2_1498:  %var_2_1498 = shl nsw i64 %var_2_1497, 3
; %var_2_1959 = shl nsw i64 %var_2_1958, 3
; Matched:%var_2_1499:  %var_2_1499 = add i64 %var_2_1469, %var_2_1498
; %var_2_1960 = add i64 %var_2_1930, %var_2_1959
; Matched:%var_2_1500:  %var_2_1500 = add i64 %var_2_1462, 23
; %var_2_1961 = add i64 %var_2_1923, 23
; Matched:\<badref\>:  store i64 %var_2_1500, i64* %PC, align 8
; store i64 %var_2_1961, i64* %var_2_3, align 8
; Matched:%var_2_1501:  %var_2_1501 = bitcast i64 %var_2_1465 to double
; %var_2_1962 = bitcast i64 %var_2_1926 to double
; Matched:%var_2_1502:  %var_2_1502 = inttoptr i64 %var_2_1499 to double*
; %var_2_1963 = inttoptr i64 %var_2_1960 to double*
; Matched:%var_2_1503:  %var_2_1503 = load double, double* %var_2_1502, align 8
; %var_2_1964 = load double, double* %var_2_1963, align 8
; Matched:%var_2_1504:  %var_2_1504 = fadd double %var_2_1501, %var_2_1503
; %var_2_1965 = fadd double %var_2_1962, %var_2_1964
; Matched:\<badref\>:  store double %var_2_1504, double* %var_2_1857, align 1, !tbaa !1285
; store double %var_2_1965, double* %var_2_228, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_1829, align 1, !tbaa !1285
; store i64 0, i64* %var_2_194, align 1
; Matched:%var_2_1505:  %var_2_1505 = add i64 %var_2_1462, 28
; %var_2_1966 = add i64 %var_2_1923, 28
; Matched:\<badref\>:  store i64 %var_2_1505, i64* %PC, align 8
; store i64 %var_2_1966, i64* %var_2_3, align 8
; Matched:%var_2_1506:  %var_2_1506 = inttoptr i64 %var_2_1499 to double*
; %var_2_1967 = inttoptr i64 %var_2_1960 to double*
; Matched:\<badref\>:  store double %var_2_1504, double* %var_2_1506, align 8
; store double %var_2_1965, double* %var_2_1967, align 8
%var_2_1968 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1988:  %var_2_1988 = add i64 %var_2_1978, -64
; %var_2_1969 = add i64 %var_2_1968, -64
%var_2_1970 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1820:  %var_2_1820 = add i64 %var_2_1819, 3
; %var_2_1971 = add i64 %var_2_1970, 3
; Matched:\<badref\>:  store i64 %var_2_1820, i64* %PC, align 8
; store i64 %var_2_1971, i64* %var_2_3, align 8
; Matched:%var_2_1511:  %var_2_1511 = inttoptr i64 %var_2_1508 to i32*
; %var_2_1972 = inttoptr i64 %var_2_1969 to i32*
; Matched:%var_2_512:  %var_2_512 = load i32, i32* %var_2_511, align 4
; %var_2_1973 = load i32, i32* %var_2_1972, align 4
; Matched:%var_2_513:  %var_2_513 = zext i32 %var_2_512 to i64
; %var_2_1974 = zext i32 %var_2_1973 to i64
; Matched:\<badref\>:  store i64 %var_2_1992, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1974, i64* %RAX.i798, align 8
; Matched:%var_2_1514:  %var_2_1514 = add i64 %var_2_1507, -32
; %var_2_1975 = add i64 %var_2_1968, -32
; Matched:%var_2_1907:  %var_2_1907 = add i64 %var_2_1901, 6
; %var_2_1976 = add i64 %var_2_1970, 6
; Matched:\<badref\>:  store i64 %var_2_1907, i64* %PC, align 8
; store i64 %var_2_1976, i64* %var_2_3, align 8
; Matched:%var_2_1516:  %var_2_1516 = inttoptr i64 %var_2_1514 to i32*
; %var_2_1977 = inttoptr i64 %var_2_1975 to i32*
; Matched:%var_2_1517:  %var_2_1517 = load i32, i32* %var_2_1516, align 4
; %var_2_1978 = load i32, i32* %var_2_1977, align 4
; Matched:%var_2_1518:  %var_2_1518 = add i32 %var_2_1517, %var_2_1512
; %var_2_1979 = add i32 %var_2_1978, %var_2_1973
; Matched:%var_2_1519:  %var_2_1519 = zext i32 %var_2_1518 to i64
; %var_2_1980 = zext i32 %var_2_1979 to i64
; Matched:\<badref\>:  store i64 %var_2_1519, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1980, i64* %RAX.i798, align 8
; Matched:%var_2_1520:  %var_2_1520 = icmp ult i32 %var_2_1518, %var_2_1512
; %var_2_1981 = icmp ult i32 %var_2_1979, %var_2_1973
; Matched:%var_2_1521:  %var_2_1521 = icmp ult i32 %var_2_1518, %var_2_1517
; %var_2_1982 = icmp ult i32 %var_2_1979, %var_2_1978
; Matched:%var_2_1522:  %var_2_1522 = or i1 %var_2_1520, %var_2_1521
; %var_2_1983 = or i1 %var_2_1981, %var_2_1982
; Matched:%var_2_1523:  %var_2_1523 = zext i1 %var_2_1522 to i8
; %var_2_1984 = zext i1 %var_2_1983 to i8
; Matched:\<badref\>:  store i8 %var_2_1523, i8* %var_2_17, align 1, !tbaa !1265
; store i8 %var_2_1984, i8* %var_2_14, align 1
; Matched:%var_2_1524:  %var_2_1524 = and i32 %var_2_1518, 255
; %var_2_1985 = and i32 %var_2_1979, 255
; Matched:%var_2_1525:  %var_2_1525 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1524) #14
; %var_2_1986 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1985)
; Matched:%var_2_1526:  %var_2_1526 = trunc i32 %var_2_1525 to i8
; %var_2_1987 = trunc i32 %var_2_1986 to i8
; Matched:%var_2_1527:  %var_2_1527 = and i8 %var_2_1526, 1
; %var_2_1988 = and i8 %var_2_1987, 1
; Matched:%var_2_1528:  %var_2_1528 = xor i8 %var_2_1527, 1
; %var_2_1989 = xor i8 %var_2_1988, 1
; Matched:\<badref\>:  store i8 %var_2_1528, i8* %var_2_24, align 1, !tbaa !1279
; store i8 %var_2_1989, i8* %var_2_21, align 1
; Matched:%var_2_1529:  %var_2_1529 = xor i32 %var_2_1517, %var_2_1512
; %var_2_1990 = xor i32 %var_2_1978, %var_2_1973
; Matched:%var_2_1530:  %var_2_1530 = xor i32 %var_2_1529, %var_2_1518
; %var_2_1991 = xor i32 %var_2_1990, %var_2_1979
; Matched:%var_2_1531:  %var_2_1531 = lshr i32 %var_2_1530, 4
; %var_2_1992 = lshr i32 %var_2_1991, 4
; Matched:%var_2_1532:  %var_2_1532 = trunc i32 %var_2_1531 to i8
; %var_2_1993 = trunc i32 %var_2_1992 to i8
; Matched:%var_2_1533:  %var_2_1533 = and i8 %var_2_1532, 1
; %var_2_1994 = and i8 %var_2_1993, 1
; Matched:\<badref\>:  store i8 %var_2_1533, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_1994, i8* %var_2_26, align 1
; Matched:%var_2_1534:  %var_2_1534 = icmp eq i32 %var_2_1518, 0
; %var_2_1995 = icmp eq i32 %var_2_1979, 0
; Matched:%var_2_1535:  %var_2_1535 = zext i1 %var_2_1534 to i8
; %var_2_1996 = zext i1 %var_2_1995 to i8
; Matched:\<badref\>:  store i8 %var_2_1535, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_1996, i8* %var_2_29, align 1
; Matched:%var_2_1536:  %var_2_1536 = lshr i32 %var_2_1518, 31
; %var_2_1997 = lshr i32 %var_2_1979, 31
; Matched:%var_2_1537:  %var_2_1537 = trunc i32 %var_2_1536 to i8
; %var_2_1998 = trunc i32 %var_2_1997 to i8
; Matched:\<badref\>:  store i8 %var_2_1537, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_1998, i8* %var_2_32, align 1
; Matched:%var_2_1538:  %var_2_1538 = lshr i32 %var_2_1512, 31
; %var_2_1999 = lshr i32 %var_2_1973, 31
; Matched:%var_2_1539:  %var_2_1539 = lshr i32 %var_2_1517, 31
; %var_2_2000 = lshr i32 %var_2_1978, 31
; Matched:%var_2_1540:  %var_2_1540 = xor i32 %var_2_1536, %var_2_1538
; %var_2_2001 = xor i32 %var_2_1997, %var_2_1999
; Matched:%var_2_1541:  %var_2_1541 = xor i32 %var_2_1536, %var_2_1539
; %var_2_2002 = xor i32 %var_2_1997, %var_2_2000
; Matched:%var_2_1542:  %var_2_1542 = add nuw nsw i32 %var_2_1540, %var_2_1541
; %var_2_2003 = add nuw nsw i32 %var_2_2001, %var_2_2002
; Matched:%var_2_1543:  %var_2_1543 = icmp eq i32 %var_2_1542, 2
; %var_2_2004 = icmp eq i32 %var_2_2003, 2
; Matched:%var_2_1544:  %var_2_1544 = zext i1 %var_2_1543 to i8
; %var_2_2005 = zext i1 %var_2_2004 to i8
; Matched:\<badref\>:  store i8 %var_2_1544, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_2005, i8* %var_2_38, align 1
%var_2_2006 = add i64 %var_2_1970, 9
store i64 %var_2_2006, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_1518, i32* %var_2_1516, align 4
; store i32 %var_2_1979, i32* %var_2_1977, align 4
; Matched:%var_2_1546:  %var_2_1546 = load i64, i64* %PC, align 8
; %var_2_2007 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1547:  %var_2_1547 = add i64 %var_2_1546, -265
; %var_2_2008 = add i64 %var_2_2007, -265
; Matched:\<badref\>:  store i64 %var_2_1547, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2008, i64* %var_2_3, align 8
  br label %block_.L_400eb0

block_.L_400fbe:                                  ; preds = %block_.L_400eb0
; Matched:%var_2_517:  %var_2_517 = add i64 %var_2_869, -28
; %var_2_2009 = add i64 %var_2_1569, -28
; Matched:%var_2_518:  %var_2_518 = add i64 %var_2_905, 8
; %var_2_2010 = add i64 %var_2_1605, 8
; Matched:\<badref\>:  store i64 %var_2_518, i64* %PC, align 8
; store i64 %var_2_2010, i64* %var_2_3, align 8
; Matched:%var_2_1551:  %var_2_1551 = inttoptr i64 %var_2_1549 to i32*
; %var_2_2011 = inttoptr i64 %var_2_2009 to i32*
; Matched:%var_2_1552:  %var_2_1552 = load i32, i32* %var_2_1551, align 4
; %var_2_2012 = load i32, i32* %var_2_2011, align 4
; Matched:%var_2_1553:  %var_2_1553 = add i32 %var_2_1552, 2
; %var_2_2013 = add i32 %var_2_2012, 2
; Matched:%var_2_1554:  %var_2_1554 = zext i32 %var_2_1553 to i64
; %var_2_2014 = zext i32 %var_2_2013 to i64
; Matched:\<badref\>:  store i64 %var_2_1554, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2014, i64* %RAX.i798, align 8
; Matched:%var_2_523:  %var_2_523 = icmp ugt i32 %var_2_520, -3
; %var_2_2015 = icmp ugt i32 %var_2_2012, -3
; Matched:%var_2_1556:  %var_2_1556 = zext i1 %var_2_1555 to i8
; %var_2_2016 = zext i1 %var_2_2015 to i8
; Matched:\<badref\>:  store i8 %var_2_524, i8* %var_2_17, align 1, !tbaa !1265
; store i8 %var_2_2016, i8* %var_2_14, align 1
; Matched:%var_2_1557:  %var_2_1557 = and i32 %var_2_1553, 255
; %var_2_2017 = and i32 %var_2_2013, 255
; Matched:%var_2_1558:  %var_2_1558 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1557) #14
; %var_2_2018 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2017)
; Matched:%var_2_1559:  %var_2_1559 = trunc i32 %var_2_1558 to i8
; %var_2_2019 = trunc i32 %var_2_2018 to i8
; Matched:%var_2_1560:  %var_2_1560 = and i8 %var_2_1559, 1
; %var_2_2020 = and i8 %var_2_2019, 1
; Matched:%var_2_1561:  %var_2_1561 = xor i8 %var_2_1560, 1
; %var_2_2021 = xor i8 %var_2_2020, 1
; Matched:\<badref\>:  store i8 %var_2_529, i8* %var_2_24, align 1, !tbaa !1279
; store i8 %var_2_2021, i8* %var_2_21, align 1
; Matched:%var_2_1562:  %var_2_1562 = xor i32 %var_2_1553, %var_2_1552
; %var_2_2022 = xor i32 %var_2_2013, %var_2_2012
; Matched:%var_2_531:  %var_2_531 = lshr i32 %var_2_530, 4
; %var_2_2023 = lshr i32 %var_2_2022, 4
; Matched:%var_2_1564:  %var_2_1564 = trunc i32 %var_2_1563 to i8
; %var_2_2024 = trunc i32 %var_2_2023 to i8
; Matched:%var_2_1565:  %var_2_1565 = and i8 %var_2_1564, 1
; %var_2_2025 = and i8 %var_2_2024, 1
; Matched:\<badref\>:  store i8 %var_2_1565, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_2025, i8* %var_2_26, align 1
; Matched:%var_2_1566:  %var_2_1566 = icmp eq i32 %var_2_1553, 0
; %var_2_2026 = icmp eq i32 %var_2_2013, 0
; Matched:%var_2_1567:  %var_2_1567 = zext i1 %var_2_1566 to i8
; %var_2_2027 = zext i1 %var_2_2026 to i8
; Matched:\<badref\>:  store i8 %var_2_535, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_2027, i8* %var_2_29, align 1
; Matched:%var_2_1568:  %var_2_1568 = lshr i32 %var_2_1553, 31
; %var_2_2028 = lshr i32 %var_2_2013, 31
; Matched:%var_2_537:  %var_2_537 = trunc i32 %var_2_536 to i8
; %var_2_2029 = trunc i32 %var_2_2028 to i8
; Matched:\<badref\>:  store i8 %var_2_1569, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_2029, i8* %var_2_32, align 1
; Matched:%var_2_1570:  %var_2_1570 = lshr i32 %var_2_1552, 31
; %var_2_2030 = lshr i32 %var_2_2012, 31
; Matched:%var_2_1571:  %var_2_1571 = xor i32 %var_2_1568, %var_2_1570
; %var_2_2031 = xor i32 %var_2_2028, %var_2_2030
; Matched:%var_2_1572:  %var_2_1572 = add nuw nsw i32 %var_2_1571, %var_2_1568
; %var_2_2032 = add nuw nsw i32 %var_2_2031, %var_2_2028
; Matched:%var_2_1573:  %var_2_1573 = icmp eq i32 %var_2_1572, 2
; %var_2_2033 = icmp eq i32 %var_2_2032, 2
; Matched:%var_2_542:  %var_2_542 = zext i1 %var_2_541 to i8
; %var_2_2034 = zext i1 %var_2_2033 to i8
; Matched:\<badref\>:  store i8 %var_2_1574, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_2034, i8* %var_2_38, align 1
; Matched:%var_2_543:  %var_2_543 = add i64 %var_2_905, 14
; %var_2_2035 = add i64 %var_2_1605, 14
; Matched:\<badref\>:  store i64 %var_2_543, i64* %PC, align 8
; store i64 %var_2_2035, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_1553, i32* %var_2_1551, align 4
; store i32 %var_2_2013, i32* %var_2_2011, align 4
; Matched:%var_2_544:  %var_2_544 = load i64, i64* %PC, align 8
; %var_2_2036 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_545:  %var_2_545 = add i64 %var_2_544, -310
; %var_2_2037 = add i64 %var_2_2036, -310
; Matched:\<badref\>:  store i64 %var_2_545, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2037, i64* %var_2_3, align 8
  br label %block_.L_400e96

block_.L_400fd1:                                  ; preds = %block_.L_400e96
; Matched:%var_2_1259:  %var_2_1259 = add i64 %var_2_1258, -152
; %var_2_2038 = add i64 %var_2_1559, -152
; Matched:%var_2_556:  %var_2_556 = add i64 %var_2_1771, 8
; %var_2_2039 = add i64 %var_2_1558, 8
; Matched:\<badref\>:  store i64 %var_2_556, i64* %PC, align 8
; store i64 %var_2_2039, i64* %var_2_3, align 8
; Matched:%var_2_1196:  %var_2_1196 = inttoptr i64 %var_2_1193 to i64*
; %var_2_2040 = inttoptr i64 %var_2_2038 to i64*
; Matched:%var_2_1263:  %var_2_1263 = load i64, i64* %var_2_1262, align 8
; %var_2_2041 = load i64, i64* %var_2_2040, align 8
; Matched:\<badref\>:  store i64 %var_2_558, i64* %var_2_1828, align 1, !tbaa !1285
; store i64 %var_2_2041, i64* %var_2_225, align 1
store double 0.000000e+00, double* %var_2_195, align 1
; Matched:%var_2_559:  %var_2_559 = add i64 %var_2_1772, -160
; %var_2_2042 = add i64 %var_2_1559, -160
; Matched:%var_2_560:  %var_2_560 = add i64 %var_2_1771, 16
; %var_2_2043 = add i64 %var_2_1558, 16
; Matched:\<badref\>:  store i64 %var_2_560, i64* %PC, align 8
; store i64 %var_2_2043, i64* %var_2_3, align 8
; Matched:%var_2_561:  %var_2_561 = inttoptr i64 %var_2_559 to i64*
; %var_2_2044 = inttoptr i64 %var_2_2042 to i64*
; Matched:\<badref\>:  store i64 %var_2_558, i64* %var_2_561, align 8
; store i64 %var_2_2041, i64* %var_2_2044, align 8
%var_2_2045 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_563:  %var_2_563 = add i64 %var_2_562, -144
; %var_2_2046 = add i64 %var_2_2045, -144
%var_2_2047 = load i64, i64* %var_2_3, align 8
%var_2_2048 = add i64 %var_2_2047, 8
store i64 %var_2_2048, i64* %var_2_3, align 8
; Matched:%var_2_566:  %var_2_566 = load double, double* %var_2_1857, align 1
; %var_2_2049 = load double, double* %var_2_228, align 1
; Matched:%var_2_567:  %var_2_567 = inttoptr i64 %var_2_563 to double*
; %var_2_2050 = inttoptr i64 %var_2_2046 to double*
; Matched:%var_2_568:  %var_2_568 = load double, double* %var_2_567, align 8
; %var_2_2051 = load double, double* %var_2_2050, align 8
; Matched:%var_2_569:  %var_2_569 = fmul double %var_2_566, %var_2_568
; %var_2_2052 = fmul double %var_2_2049, %var_2_2051
; Matched:\<badref\>:  store double %var_2_569, double* %var_2_1857, align 1, !tbaa !1285
; store double %var_2_2052, double* %var_2_228, align 1
; Matched:%var_2_570:  %var_2_570 = add i64 %var_2_562, -128
; %var_2_2053 = add i64 %var_2_2045, -128
; Matched:%var_2_595:  %var_2_595 = add i64 %var_2_590, 13
; %var_2_2054 = add i64 %var_2_2047, 13
; Matched:\<badref\>:  store i64 %var_2_595, i64* %PC, align 8
; store i64 %var_2_2054, i64* %var_2_3, align 8
; Matched:%var_2_572:  %var_2_572 = inttoptr i64 %var_2_570 to i64*
; %var_2_2055 = inttoptr i64 %var_2_2053 to i64*
; Matched:%var_2_1217:  %var_2_1217 = load i64, i64* %var_2_1216, align 8
; %var_2_2056 = load i64, i64* %var_2_2055, align 8
; Matched:\<badref\>:  store i64 %var_2_1306, i64* %var_2_1839, align 1, !tbaa !1285
; store i64 %var_2_2056, i64* %var_2_206, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_1841, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_208, align 1
; Matched:%var_2_574:  %var_2_574 = add i64 %var_2_562, -136
; %var_2_2057 = add i64 %var_2_2045, -136
; Matched:%var_2_575:  %var_2_575 = add i64 %var_2_564, 21
; %var_2_2058 = add i64 %var_2_2047, 21
; Matched:\<badref\>:  store i64 %var_2_575, i64* %PC, align 8
; store i64 %var_2_2058, i64* %var_2_3, align 8
; Matched:%var_2_576:  %var_2_576 = bitcast i64 %var_2_573 to double
; %var_2_2059 = bitcast i64 %var_2_2056 to double
; Matched:%var_2_577:  %var_2_577 = inttoptr i64 %var_2_574 to double*
; %var_2_2060 = inttoptr i64 %var_2_2057 to double*
; Matched:%var_2_578:  %var_2_578 = load double, double* %var_2_577, align 8
; %var_2_2061 = load double, double* %var_2_2060, align 8
; Matched:%var_2_579:  %var_2_579 = fmul double %var_2_576, %var_2_578
; %var_2_2062 = fmul double %var_2_2059, %var_2_2061
; Matched:\<badref\>:  store double %var_2_579, double* %var_2_1838, align 1, !tbaa !1285
; store double %var_2_2062, double* %var_2_205, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_1840, align 1, !tbaa !1285
; store i64 0, i64* %var_2_207, align 1
; Matched:%var_2_580:  %var_2_580 = fsub double %var_2_569, %var_2_579
; %var_2_2063 = fsub double %var_2_2052, %var_2_2062
; Matched:\<badref\>:  store double %var_2_580, double* %var_2_1857, align 1, !tbaa !1285
; store double %var_2_2063, double* %var_2_228, align 1
; Matched:%var_2_581:  %var_2_581 = add i64 %var_2_562, -152
; %var_2_2064 = add i64 %var_2_2045, -152
; Matched:%var_2_582:  %var_2_582 = add i64 %var_2_564, 33
; %var_2_2065 = add i64 %var_2_2047, 33
; Matched:\<badref\>:  store i64 %var_2_1220, i64* %PC, align 8
; store i64 %var_2_2065, i64* %var_2_3, align 8
; Matched:%var_2_583:  %var_2_583 = inttoptr i64 %var_2_581 to double*
; %var_2_2066 = inttoptr i64 %var_2_2064 to double*
; Matched:%var_2_584:  %var_2_584 = load double, double* %var_2_583, align 8
; %var_2_2067 = load double, double* %var_2_2066, align 8
; Matched:%var_2_585:  %var_2_585 = fadd double %var_2_580, %var_2_584
; %var_2_2068 = fadd double %var_2_2063, %var_2_2067
; Matched:\<badref\>:  store double %var_2_585, double* %var_2_1857, align 1, !tbaa !1285
; store double %var_2_2068, double* %var_2_228, align 1
; Matched:%var_2_586:  %var_2_586 = add i64 %var_2_564, 41
; %var_2_2069 = add i64 %var_2_2047, 41
; Matched:\<badref\>:  store i64 %var_2_1434, i64* %PC, align 8
; store i64 %var_2_2069, i64* %var_2_3, align 8
; Matched:%var_2_587:  %var_2_587 = inttoptr i64 %var_2_581 to double*
; %var_2_2070 = inttoptr i64 %var_2_2064 to double*
; Matched:\<badref\>:  store double %var_2_585, double* %var_2_587, align 8
; store double %var_2_2068, double* %var_2_2070, align 8
; Matched:%var_2_588:  %var_2_588 = load i64, i64* %RBP, align 8
; %var_2_2071 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_589:  %var_2_589 = add i64 %var_2_588, -128
; %var_2_2072 = add i64 %var_2_2071, -128
%var_2_2073 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_383:  %var_2_383 = add i64 %var_2_382, 5
; %var_2_2074 = add i64 %var_2_2073, 5
; Matched:\<badref\>:  store i64 %var_2_383, i64* %PC, align 8
; store i64 %var_2_2074, i64* %var_2_3, align 8
; Matched:%var_2_592:  %var_2_592 = inttoptr i64 %var_2_589 to i64*
; %var_2_2075 = inttoptr i64 %var_2_2072 to i64*
; Matched:%var_2_593:  %var_2_593 = load i64, i64* %var_2_592, align 8
; %var_2_2076 = load i64, i64* %var_2_2075, align 8
; Matched:\<badref\>:  store i64 %var_2_593, i64* %var_2_1828, align 1, !tbaa !1285
; store i64 %var_2_2076, i64* %var_2_225, align 1
store double 0.000000e+00, double* %var_2_195, align 1
; Matched:%var_2_594:  %var_2_594 = add i64 %var_2_588, -144
; %var_2_2077 = add i64 %var_2_2071, -144
; Matched:%var_2_232:  %var_2_232 = add i64 %var_2_221, 13
; %var_2_2078 = add i64 %var_2_2073, 13
; Matched:\<badref\>:  store i64 %var_2_213, i64* %PC, align 8
; store i64 %var_2_2078, i64* %var_2_3, align 8
; Matched:%var_2_596:  %var_2_596 = bitcast i64 %var_2_593 to double
; %var_2_2079 = bitcast i64 %var_2_2076 to double
; Matched:%var_2_597:  %var_2_597 = inttoptr i64 %var_2_594 to double*
; %var_2_2080 = inttoptr i64 %var_2_2077 to double*
; Matched:%var_2_598:  %var_2_598 = load double, double* %var_2_597, align 8
; %var_2_2081 = load double, double* %var_2_2080, align 8
; Matched:%var_2_599:  %var_2_599 = fmul double %var_2_596, %var_2_598
; %var_2_2082 = fmul double %var_2_2079, %var_2_2081
; Matched:\<badref\>:  store double %var_2_599, double* %var_2_1857, align 1, !tbaa !1285
; store double %var_2_2082, double* %var_2_228, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_1829, align 1, !tbaa !1285
; store i64 0, i64* %var_2_194, align 1
; Matched:%var_2_600:  %var_2_600 = add i64 %var_2_588, -160
; %var_2_2083 = add i64 %var_2_2071, -160
; Matched:%var_2_238:  %var_2_238 = add i64 %var_2_221, 21
; %var_2_2084 = add i64 %var_2_2073, 21
; Matched:\<badref\>:  store i64 %var_2_601, i64* %PC, align 8
; store i64 %var_2_2084, i64* %var_2_3, align 8
; Matched:%var_2_602:  %var_2_602 = inttoptr i64 %var_2_600 to i64*
; %var_2_2085 = inttoptr i64 %var_2_2083 to i64*
; Matched:%var_2_603:  %var_2_603 = load i64, i64* %var_2_602, align 8
; %var_2_2086 = load i64, i64* %var_2_2085, align 8
; Matched:\<badref\>:  store i64 %var_2_603, i64* %var_2_1839, align 1, !tbaa !1285
; store i64 %var_2_2086, i64* %var_2_206, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_1841, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_208, align 1
; Matched:%var_2_604:  %var_2_604 = add i64 %var_2_588, -136
; %var_2_2087 = add i64 %var_2_2071, -136
; Matched:%var_2_605:  %var_2_605 = add i64 %var_2_590, 29
; %var_2_2088 = add i64 %var_2_2073, 29
; Matched:\<badref\>:  store i64 %var_2_605, i64* %PC, align 8
; store i64 %var_2_2088, i64* %var_2_3, align 8
; Matched:%var_2_606:  %var_2_606 = bitcast i64 %var_2_603 to double
; %var_2_2089 = bitcast i64 %var_2_2086 to double
; Matched:%var_2_607:  %var_2_607 = inttoptr i64 %var_2_604 to double*
; %var_2_2090 = inttoptr i64 %var_2_2087 to double*
; Matched:%var_2_608:  %var_2_608 = load double, double* %var_2_607, align 8
; %var_2_2091 = load double, double* %var_2_2090, align 8
; Matched:%var_2_609:  %var_2_609 = fmul double %var_2_606, %var_2_608
; %var_2_2092 = fmul double %var_2_2089, %var_2_2091
; Matched:\<badref\>:  store double %var_2_609, double* %var_2_1838, align 1, !tbaa !1285
; store double %var_2_2092, double* %var_2_205, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_1840, align 1, !tbaa !1285
; store i64 0, i64* %var_2_207, align 1
; Matched:%var_2_610:  %var_2_610 = fadd double %var_2_599, %var_2_609
; %var_2_2093 = fadd double %var_2_2082, %var_2_2092
; Matched:\<badref\>:  store double %var_2_610, double* %var_2_1857, align 1, !tbaa !1285
; store double %var_2_2093, double* %var_2_228, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_1829, align 1, !tbaa !1285
; store i64 0, i64* %var_2_194, align 1
; Matched:%var_2_611:  %var_2_611 = add i64 %var_2_590, 38
; %var_2_2094 = add i64 %var_2_2073, 38
; Matched:\<badref\>:  store i64 %var_2_611, i64* %PC, align 8
; store i64 %var_2_2094, i64* %var_2_3, align 8
; Matched:%var_2_612:  %var_2_612 = inttoptr i64 %var_2_589 to double*
; %var_2_2095 = inttoptr i64 %var_2_2072 to double*
; Matched:%var_2_613:  %var_2_613 = load double, double* %var_2_612, align 8
; %var_2_2096 = load double, double* %var_2_2095, align 8
; Matched:%var_2_614:  %var_2_614 = fadd double %var_2_610, %var_2_613
; %var_2_2097 = fadd double %var_2_2093, %var_2_2096
; Matched:\<badref\>:  store double %var_2_614, double* %var_2_1857, align 1, !tbaa !1285
; store double %var_2_2097, double* %var_2_228, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_1829, align 1, !tbaa !1285
; store i64 0, i64* %var_2_194, align 1
; Matched:%var_2_615:  %var_2_615 = add i64 %var_2_590, 43
; %var_2_2098 = add i64 %var_2_2073, 43
; Matched:\<badref\>:  store i64 %var_2_615, i64* %PC, align 8
; store i64 %var_2_2098, i64* %var_2_3, align 8
; Matched:%var_2_616:  %var_2_616 = inttoptr i64 %var_2_589 to double*
; %var_2_2099 = inttoptr i64 %var_2_2072 to double*
; Matched:\<badref\>:  store double %var_2_614, double* %var_2_616, align 8
; store double %var_2_2097, double* %var_2_2099, align 8
%var_2_2100 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_618:  %var_2_618 = add i64 %var_2_617, -48
; %var_2_2101 = add i64 %var_2_2100, -48
%var_2_2102 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_425:  %var_2_425 = add i64 %var_2_424, 3
; %var_2_2103 = add i64 %var_2_2102, 3
; Matched:\<badref\>:  store i64 %var_2_425, i64* %PC, align 8
; store i64 %var_2_2103, i64* %var_2_3, align 8
; Matched:%var_2_957:  %var_2_957 = inttoptr i64 %var_2_955 to i32*
; %var_2_2104 = inttoptr i64 %var_2_2101 to i32*
; Matched:%var_2_622:  %var_2_622 = load i32, i32* %var_2_621, align 4
; %var_2_2105 = load i32, i32* %var_2_2104, align 4
; Matched:%var_2_623:  %var_2_623 = zext i32 %var_2_622 to i64
; %var_2_2106 = zext i32 %var_2_2105 to i64
; Matched:\<badref\>:  store i64 %var_2_959, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2106, i64* %RAX.i798, align 8
; Matched:%var_2_624:  %var_2_624 = add i64 %var_2_617, -36
; %var_2_2107 = add i64 %var_2_2100, -36
; Matched:%var_2_987:  %var_2_987 = add i64 %var_2_981, 6
; %var_2_2108 = add i64 %var_2_2102, 6
; Matched:\<badref\>:  store i64 %var_2_987, i64* %PC, align 8
; store i64 %var_2_2108, i64* %var_2_3, align 8
; Matched:%var_2_626:  %var_2_626 = inttoptr i64 %var_2_624 to i32*
; %var_2_2109 = inttoptr i64 %var_2_2107 to i32*
; Matched:%var_2_627:  %var_2_627 = load i32, i32* %var_2_626, align 4
; %var_2_2110 = load i32, i32* %var_2_2109, align 4
; Matched:%var_2_628:  %var_2_628 = add i32 %var_2_627, %var_2_622
; %var_2_2111 = add i32 %var_2_2110, %var_2_2105
; Matched:%var_2_629:  %var_2_629 = zext i32 %var_2_628 to i64
; %var_2_2112 = zext i32 %var_2_2111 to i64
; Matched:\<badref\>:  store i64 %var_2_629, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2112, i64* %RAX.i798, align 8
; Matched:%var_2_630:  %var_2_630 = icmp ult i32 %var_2_628, %var_2_622
; %var_2_2113 = icmp ult i32 %var_2_2111, %var_2_2105
; Matched:%var_2_631:  %var_2_631 = icmp ult i32 %var_2_628, %var_2_627
; %var_2_2114 = icmp ult i32 %var_2_2111, %var_2_2110
; Matched:%var_2_632:  %var_2_632 = or i1 %var_2_630, %var_2_631
; %var_2_2115 = or i1 %var_2_2113, %var_2_2114
; Matched:%var_2_633:  %var_2_633 = zext i1 %var_2_632 to i8
; %var_2_2116 = zext i1 %var_2_2115 to i8
; Matched:\<badref\>:  store i8 %var_2_633, i8* %var_2_17, align 1, !tbaa !1265
; store i8 %var_2_2116, i8* %var_2_14, align 1
; Matched:%var_2_634:  %var_2_634 = and i32 %var_2_628, 255
; %var_2_2117 = and i32 %var_2_2111, 255
; Matched:%var_2_635:  %var_2_635 = tail call i32 @llvm.ctpop.i32(i32 %var_2_634) #14
; %var_2_2118 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2117)
; Matched:%var_2_636:  %var_2_636 = trunc i32 %var_2_635 to i8
; %var_2_2119 = trunc i32 %var_2_2118 to i8
; Matched:%var_2_637:  %var_2_637 = and i8 %var_2_636, 1
; %var_2_2120 = and i8 %var_2_2119, 1
; Matched:%var_2_638:  %var_2_638 = xor i8 %var_2_637, 1
; %var_2_2121 = xor i8 %var_2_2120, 1
; Matched:\<badref\>:  store i8 %var_2_638, i8* %var_2_24, align 1, !tbaa !1279
; store i8 %var_2_2121, i8* %var_2_21, align 1
; Matched:%var_2_639:  %var_2_639 = xor i32 %var_2_627, %var_2_622
; %var_2_2122 = xor i32 %var_2_2110, %var_2_2105
; Matched:%var_2_640:  %var_2_640 = xor i32 %var_2_639, %var_2_628
; %var_2_2123 = xor i32 %var_2_2122, %var_2_2111
; Matched:%var_2_641:  %var_2_641 = lshr i32 %var_2_640, 4
; %var_2_2124 = lshr i32 %var_2_2123, 4
; Matched:%var_2_642:  %var_2_642 = trunc i32 %var_2_641 to i8
; %var_2_2125 = trunc i32 %var_2_2124 to i8
; Matched:%var_2_643:  %var_2_643 = and i8 %var_2_642, 1
; %var_2_2126 = and i8 %var_2_2125, 1
; Matched:\<badref\>:  store i8 %var_2_643, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_2126, i8* %var_2_26, align 1
; Matched:%var_2_644:  %var_2_644 = icmp eq i32 %var_2_628, 0
; %var_2_2127 = icmp eq i32 %var_2_2111, 0
; Matched:%var_2_645:  %var_2_645 = zext i1 %var_2_644 to i8
; %var_2_2128 = zext i1 %var_2_2127 to i8
; Matched:\<badref\>:  store i8 %var_2_645, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_2128, i8* %var_2_29, align 1
; Matched:%var_2_646:  %var_2_646 = lshr i32 %var_2_628, 31
; %var_2_2129 = lshr i32 %var_2_2111, 31
; Matched:%var_2_647:  %var_2_647 = trunc i32 %var_2_646 to i8
; %var_2_2130 = trunc i32 %var_2_2129 to i8
; Matched:\<badref\>:  store i8 %var_2_647, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_2130, i8* %var_2_32, align 1
; Matched:%var_2_648:  %var_2_648 = lshr i32 %var_2_622, 31
; %var_2_2131 = lshr i32 %var_2_2105, 31
; Matched:%var_2_649:  %var_2_649 = lshr i32 %var_2_627, 31
; %var_2_2132 = lshr i32 %var_2_2110, 31
; Matched:%var_2_650:  %var_2_650 = xor i32 %var_2_646, %var_2_648
; %var_2_2133 = xor i32 %var_2_2129, %var_2_2131
; Matched:%var_2_651:  %var_2_651 = xor i32 %var_2_646, %var_2_649
; %var_2_2134 = xor i32 %var_2_2129, %var_2_2132
; Matched:%var_2_652:  %var_2_652 = add nuw nsw i32 %var_2_650, %var_2_651
; %var_2_2135 = add nuw nsw i32 %var_2_2133, %var_2_2134
; Matched:%var_2_653:  %var_2_653 = icmp eq i32 %var_2_652, 2
; %var_2_2136 = icmp eq i32 %var_2_2135, 2
; Matched:%var_2_654:  %var_2_654 = zext i1 %var_2_653 to i8
; %var_2_2137 = zext i1 %var_2_2136 to i8
; Matched:\<badref\>:  store i8 %var_2_654, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_2137, i8* %var_2_38, align 1
%var_2_2138 = add i64 %var_2_2102, 9
store i64 %var_2_2138, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_628, i32* %var_2_626, align 4
; store i32 %var_2_2111, i32* %var_2_2109, align 4
; Matched:%var_2_656:  %var_2_656 = load i64, i64* %PC, align 8
; %var_2_2139 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_657:  %var_2_657 = add i64 %var_2_656, -442
; %var_2_2140 = add i64 %var_2_2139, -442
; Matched:\<badref\>:  store i64 %var_2_657, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2140, i64* %var_2_3, align 8
  br label %block_.L_400e84

block_.L_401043:                                  ; preds = %block_.L_400e84
; Matched:%var_2_1508:  %var_2_1508 = add i64 %var_2_1507, -64
; %var_2_2141 = add i64 %var_2_1470, -64
; Matched:%var_2_510:  %var_2_510 = add i64 %var_2_2230, 3
; %var_2_2142 = add i64 %var_2_1506, 3
; Matched:\<badref\>:  store i64 %var_2_510, i64* %PC, align 8
; store i64 %var_2_2142, i64* %var_2_3, align 8
; Matched:%var_2_1990:  %var_2_1990 = inttoptr i64 %var_2_1988 to i32*
; %var_2_2143 = inttoptr i64 %var_2_2141 to i32*
; Matched:%var_2_1512:  %var_2_1512 = load i32, i32* %var_2_1511, align 4
; %var_2_2144 = load i32, i32* %var_2_2143, align 4
; Matched:%var_2_1513:  %var_2_1513 = zext i32 %var_2_1512 to i64
; %var_2_2145 = zext i32 %var_2_2144 to i64
; Matched:\<badref\>:  store i64 %var_2_513, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2145, i64* %RAX.i798, align 8
; Matched:%var_2_514:  %var_2_514 = add i64 %var_2_2230, 6
; %var_2_2146 = add i64 %var_2_1506, 6
; Matched:\<badref\>:  store i64 %var_2_514, i64* %PC, align 8
; store i64 %var_2_2146, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_512, i32* %var_2_2202, align 4
; store i32 %var_2_2144, i32* %var_2_1478, align 4
%var_2_2147 = load i64, i64* %var_2_3, align 8
%var_2_2148 = add i64 %var_2_2147, -669
; Matched:\<badref\>:  store i64 %var_2_516, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2148, i64* %var_2_3, align 8
  br label %block_.L_400dac

block_.L_40104e:                                  ; preds = %block_.L_400dac
; Matched:%var_2_688:  %var_2_688 = add i64 %var_2_1613, -84
; %var_2_2149 = add i64 %var_2_1248, -84
; Matched:%var_2_689:  %var_2_689 = add i64 %var_2_1649, 3
; %var_2_2150 = add i64 %var_2_1284, 3
; Matched:\<badref\>:  store i64 %var_2_689, i64* %PC, align 8
; store i64 %var_2_2150, i64* %var_2_3, align 8
; Matched:%var_2_988:  %var_2_988 = inttoptr i64 %var_2_986 to i32*
; %var_2_2151 = inttoptr i64 %var_2_2149 to i32*
; Matched:%var_2_989:  %var_2_989 = load i32, i32* %var_2_988, align 4
; %var_2_2152 = load i32, i32* %var_2_2151, align 4
; Matched:%var_2_692:  %var_2_692 = zext i32 %var_2_691 to i64
; %var_2_2153 = zext i32 %var_2_2152 to i64
; Matched:\<badref\>:  store i64 %var_2_692, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2153, i64* %RAX.i798, align 8
%var_2_2154 = add i64 %var_2_1248, -88
; Matched:%var_2_694:  %var_2_694 = add i64 %var_2_1649, 7
; %var_2_2155 = add i64 %var_2_1284, 7
; Matched:\<badref\>:  store i64 %var_2_694, i64* %PC, align 8
; store i64 %var_2_2155, i64* %var_2_3, align 8
%var_2_2156 = inttoptr i64 %var_2_2154 to i32*
; Matched:%var_2_994:  %var_2_994 = load i32, i32* %var_2_993, align 4
; %var_2_2157 = load i32, i32* %var_2_2156, align 4
; Matched:%var_2_995:  %var_2_995 = sext i32 %var_2_989 to i64
; %var_2_2158 = sext i32 %var_2_2152 to i64
; Matched:%var_2_698:  %var_2_698 = sext i32 %var_2_696 to i64
; %var_2_2159 = sext i32 %var_2_2157 to i64
; Matched:%var_2_699:  %var_2_699 = mul nsw i64 %var_2_698, %var_2_697
; %var_2_2160 = mul nsw i64 %var_2_2159, %var_2_2158
; Matched:%var_2_998:  %var_2_998 = trunc i64 %var_2_997 to i32
; %var_2_2161 = trunc i64 %var_2_2160 to i32
; Matched:%var_2_701:  %var_2_701 = and i64 %var_2_699, 4294967295
; %var_2_2162 = and i64 %var_2_2160, 4294967295
; Matched:\<badref\>:  store i64 %var_2_701, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2162, i64* %RAX.i798, align 8
; Matched:%var_2_702:  %var_2_702 = shl i64 %var_2_699, 32
; %var_2_2163 = shl i64 %var_2_2160, 32
; Matched:%var_2_703:  %var_2_703 = ashr exact i64 %var_2_702, 32
; %var_2_2164 = ashr exact i64 %var_2_2163, 32
; Matched:%var_2_704:  %var_2_704 = icmp ne i64 %var_2_703, %var_2_699
; %var_2_2165 = icmp ne i64 %var_2_2164, %var_2_2160
; Matched:%var_2_1002:  %var_2_1002 = zext i1 %var_2_1001 to i8
; %var_2_2166 = zext i1 %var_2_2165 to i8
; Matched:\<badref\>:  store i8 %var_2_705, i8* %var_2_17, align 1, !tbaa !1265
; store i8 %var_2_2166, i8* %var_2_14, align 1
; Matched:%var_2_706:  %var_2_706 = and i32 %var_2_700, 255
; %var_2_2167 = and i32 %var_2_2161, 255
; Matched:%var_2_707:  %var_2_707 = tail call i32 @llvm.ctpop.i32(i32 %var_2_706) #14
; %var_2_2168 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2167)
; Matched:%var_2_1005:  %var_2_1005 = trunc i32 %var_2_1004 to i8
; %var_2_2169 = trunc i32 %var_2_2168 to i8
; Matched:%var_2_709:  %var_2_709 = and i8 %var_2_708, 1
; %var_2_2170 = and i8 %var_2_2169, 1
; Matched:%var_2_710:  %var_2_710 = xor i8 %var_2_709, 1
; %var_2_2171 = xor i8 %var_2_2170, 1
; Matched:\<badref\>:  store i8 %var_2_1007, i8* %var_2_24, align 1, !tbaa !1279
; store i8 %var_2_2171, i8* %var_2_21, align 1
store i8 0, i8* %var_2_26, align 1
store i8 0, i8* %var_2_29, align 1
; Matched:%var_2_1008:  %var_2_1008 = lshr i32 %var_2_998, 31
; %var_2_2172 = lshr i32 %var_2_2161, 31
; Matched:%var_2_712:  %var_2_712 = trunc i32 %var_2_711 to i8
; %var_2_2173 = trunc i32 %var_2_2172 to i8
; Matched:\<badref\>:  store i8 %var_2_1009, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_2173, i8* %var_2_32, align 1
; Matched:\<badref\>:  store i8 %var_2_705, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_2166, i8* %var_2_38, align 1
; Matched:%var_2_713:  %var_2_713 = trunc i64 %var_2_699 to i32
; %var_2_2174 = trunc i64 %var_2_2160 to i32
; Matched:%var_2_714:  %var_2_714 = add i64 %var_2_1649, 10
; %var_2_2175 = add i64 %var_2_1284, 10
; Matched:\<badref\>:  store i64 %var_2_714, i64* %PC, align 8
; store i64 %var_2_2175, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_713, i32* %var_2_695, align 4
; store i32 %var_2_2174, i32* %var_2_2156, align 4
%var_2_2176 = load i64, i64* %RBP.i, align 8
%var_2_2177 = add i64 %var_2_2176, -72
%var_2_2178 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_62:  %var_2_62 = add i64 %var_2_61, 3
; %var_2_2179 = add i64 %var_2_2178, 3
; Matched:\<badref\>:  store i64 %var_2_620, i64* %PC, align 8
; store i64 %var_2_2179, i64* %var_2_3, align 8
%var_2_2180 = inttoptr i64 %var_2_2177 to i32*
%var_2_2181 = load i32, i32* %var_2_2180, align 4
; Matched:%var_2_721:  %var_2_721 = add i32 %var_2_720, -1
; %var_2_2182 = add i32 %var_2_2181, -1
; Matched:%var_2_722:  %var_2_722 = zext i32 %var_2_721 to i64
; %var_2_2183 = zext i32 %var_2_2182 to i64
; Matched:\<badref\>:  store i64 %var_2_722, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2183, i64* %RAX.i798, align 8
%var_2_2184 = icmp ne i32 %var_2_2181, 0
%var_2_2185 = zext i1 %var_2_2184 to i8
store i8 %var_2_2185, i8* %var_2_14, align 1
; Matched:%var_2_667:  %var_2_667 = and i32 %var_2_664, 255
; %var_2_2186 = and i32 %var_2_2182, 255
; Matched:%var_2_668:  %var_2_668 = tail call i32 @llvm.ctpop.i32(i32 %var_2_667) #14
; %var_2_2187 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2186)
; Matched:%var_2_669:  %var_2_669 = trunc i32 %var_2_668 to i8
; %var_2_2188 = trunc i32 %var_2_2187 to i8
; Matched:%var_2_728:  %var_2_728 = and i8 %var_2_727, 1
; %var_2_2189 = and i8 %var_2_2188, 1
; Matched:%var_2_671:  %var_2_671 = xor i8 %var_2_670, 1
; %var_2_2190 = xor i8 %var_2_2189, 1
; Matched:\<badref\>:  store i8 %var_2_729, i8* %var_2_24, align 1, !tbaa !1279
; store i8 %var_2_2190, i8* %var_2_21, align 1
; Matched:%var_2_730:  %var_2_730 = xor i32 %var_2_720, 16
; %var_2_2191 = xor i32 %var_2_2181, 16
; Matched:%var_2_731:  %var_2_731 = xor i32 %var_2_730, %var_2_721
; %var_2_2192 = xor i32 %var_2_2191, %var_2_2182
; Matched:%var_2_732:  %var_2_732 = lshr i32 %var_2_731, 4
; %var_2_2193 = lshr i32 %var_2_2192, 4
; Matched:%var_2_733:  %var_2_733 = trunc i32 %var_2_732 to i8
; %var_2_2194 = trunc i32 %var_2_2193 to i8
; Matched:%var_2_734:  %var_2_734 = and i8 %var_2_733, 1
; %var_2_2195 = and i8 %var_2_2194, 1
; Matched:\<badref\>:  store i8 %var_2_734, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_2195, i8* %var_2_26, align 1
; Matched:%var_2_735:  %var_2_735 = icmp eq i32 %var_2_721, 0
; %var_2_2196 = icmp eq i32 %var_2_2182, 0
; Matched:%var_2_677:  %var_2_677 = zext i1 %var_2_676 to i8
; %var_2_2197 = zext i1 %var_2_2196 to i8
; Matched:\<badref\>:  store i8 %var_2_736, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_2197, i8* %var_2_29, align 1
; Matched:%var_2_737:  %var_2_737 = lshr i32 %var_2_721, 31
; %var_2_2198 = lshr i32 %var_2_2182, 31
; Matched:%var_2_738:  %var_2_738 = trunc i32 %var_2_737 to i8
; %var_2_2199 = trunc i32 %var_2_2198 to i8
; Matched:\<badref\>:  store i8 %var_2_679, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_2199, i8* %var_2_32, align 1
; Matched:%var_2_739:  %var_2_739 = lshr i32 %var_2_720, 31
; %var_2_2200 = lshr i32 %var_2_2181, 31
; Matched:%var_2_740:  %var_2_740 = xor i32 %var_2_737, %var_2_739
; %var_2_2201 = xor i32 %var_2_2198, %var_2_2200
; Matched:%var_2_741:  %var_2_741 = xor i32 %var_2_737, 1
; %var_2_2202 = xor i32 %var_2_2198, 1
; Matched:%var_2_742:  %var_2_742 = add nuw nsw i32 %var_2_740, %var_2_741
; %var_2_2203 = add nuw nsw i32 %var_2_2201, %var_2_2202
; Matched:%var_2_743:  %var_2_743 = icmp eq i32 %var_2_742, 2
; %var_2_2204 = icmp eq i32 %var_2_2203, 2
; Matched:%var_2_744:  %var_2_744 = zext i1 %var_2_743 to i8
; %var_2_2205 = zext i1 %var_2_2204 to i8
; Matched:\<badref\>:  store i8 %var_2_744, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_2205, i8* %var_2_38, align 1
%var_2_2206 = add i64 %var_2_2178, 9
store i64 %var_2_2206, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_721, i32* %var_2_719, align 4
; store i32 %var_2_2182, i32* %var_2_2180, align 4
; Matched:%var_2_746:  %var_2_746 = load i64, i64* %PC, align 8
; %var_2_2207 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_747:  %var_2_747 = add i64 %var_2_746, -1169
; %var_2_2208 = add i64 %var_2_2207, -1169
; Matched:\<badref\>:  store i64 %var_2_747, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2208, i64* %var_2_3, align 8
  br label %block_.L_400bd0

block_.L_401066:                                  ; preds = %block_.L_400bd0
; Matched:%var_2_463:  %var_2_463 = load i64, i64* %RSP, align 8
; %var_2_2209 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_464:  %var_2_464 = add i64 %var_2_463, 192
; %var_2_2210 = add i64 %var_2_2209, 192
; Matched:\<badref\>:  store i64 %var_2_464, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_2210, i64* %var_2_6, align 8
; Matched:%var_2_465:  %var_2_465 = icmp ugt i64 %var_2_463, -193
; %var_2_2211 = icmp ugt i64 %var_2_2209, -193
; Matched:%var_2_466:  %var_2_466 = zext i1 %var_2_465 to i8
; %var_2_2212 = zext i1 %var_2_2211 to i8
; Matched:\<badref\>:  store i8 %var_2_466, i8* %var_2_17, align 1, !tbaa !1265
; store i8 %var_2_2212, i8* %var_2_14, align 1
; Matched:%var_2_467:  %var_2_467 = trunc i64 %var_2_464 to i32
; %var_2_2213 = trunc i64 %var_2_2210 to i32
; Matched:%var_2_468:  %var_2_468 = and i32 %var_2_467, 255
; %var_2_2214 = and i32 %var_2_2213, 255
; Matched:%var_2_469:  %var_2_469 = tail call i32 @llvm.ctpop.i32(i32 %var_2_468) #14
; %var_2_2215 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2214)
; Matched:%var_2_470:  %var_2_470 = trunc i32 %var_2_469 to i8
; %var_2_2216 = trunc i32 %var_2_2215 to i8
; Matched:%var_2_471:  %var_2_471 = and i8 %var_2_470, 1
; %var_2_2217 = and i8 %var_2_2216, 1
; Matched:%var_2_472:  %var_2_472 = xor i8 %var_2_471, 1
; %var_2_2218 = xor i8 %var_2_2217, 1
; Matched:\<badref\>:  store i8 %var_2_472, i8* %var_2_24, align 1, !tbaa !1279
; store i8 %var_2_2218, i8* %var_2_21, align 1
; Matched:%var_2_473:  %var_2_473 = xor i64 %var_2_464, %var_2_463
; %var_2_2219 = xor i64 %var_2_2210, %var_2_2209
; Matched:%var_2_474:  %var_2_474 = lshr i64 %var_2_473, 4
; %var_2_2220 = lshr i64 %var_2_2219, 4
; Matched:%var_2_475:  %var_2_475 = trunc i64 %var_2_474 to i8
; %var_2_2221 = trunc i64 %var_2_2220 to i8
; Matched:%var_2_476:  %var_2_476 = and i8 %var_2_475, 1
; %var_2_2222 = and i8 %var_2_2221, 1
; Matched:\<badref\>:  store i8 %var_2_476, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_2222, i8* %var_2_26, align 1
; Matched:%var_2_477:  %var_2_477 = icmp eq i64 %var_2_464, 0
; %var_2_2223 = icmp eq i64 %var_2_2210, 0
; Matched:%var_2_478:  %var_2_478 = zext i1 %var_2_477 to i8
; %var_2_2224 = zext i1 %var_2_2223 to i8
; Matched:\<badref\>:  store i8 %var_2_478, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_2224, i8* %var_2_29, align 1
; Matched:%var_2_479:  %var_2_479 = lshr i64 %var_2_464, 63
; %var_2_2225 = lshr i64 %var_2_2210, 63
; Matched:%var_2_480:  %var_2_480 = trunc i64 %var_2_479 to i8
; %var_2_2226 = trunc i64 %var_2_2225 to i8
; Matched:\<badref\>:  store i8 %var_2_480, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_2226, i8* %var_2_32, align 1
; Matched:%var_2_481:  %var_2_481 = lshr i64 %var_2_463, 63
; %var_2_2227 = lshr i64 %var_2_2209, 63
; Matched:%var_2_482:  %var_2_482 = xor i64 %var_2_479, %var_2_481
; %var_2_2228 = xor i64 %var_2_2225, %var_2_2227
; Matched:%var_2_483:  %var_2_483 = add nuw nsw i64 %var_2_482, %var_2_479
; %var_2_2229 = add nuw nsw i64 %var_2_2228, %var_2_2225
; Matched:%var_2_484:  %var_2_484 = icmp eq i64 %var_2_483, 2
; %var_2_2230 = icmp eq i64 %var_2_2229, 2
; Matched:%var_2_485:  %var_2_485 = zext i1 %var_2_484 to i8
; %var_2_2231 = zext i1 %var_2_2230 to i8
; Matched:\<badref\>:  store i8 %var_2_485, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_2231, i8* %var_2_38, align 1
; Matched:%var_2_486:  %var_2_486 = add i64 %var_2_687, 8
; %var_2_2232 = add i64 %var_2_259, 8
; Matched:\<badref\>:  store i64 %var_2_486, i64* %PC, align 8
; store i64 %var_2_2232, i64* %var_2_3, align 8
; Matched:%var_2_487:  %var_2_487 = add i64 %var_2_463, 200
; %var_2_2233 = add i64 %var_2_2209, 200
; Matched:%var_2_488:  %var_2_488 = inttoptr i64 %var_2_464 to i64*
; %var_2_2234 = inttoptr i64 %var_2_2210 to i64*
; Matched:%var_2_489:  %var_2_489 = load i64, i64* %var_2_488, align 8
; %var_2_2235 = load i64, i64* %var_2_2234, align 8
; Matched:\<badref\>:  store i64 %var_2_489, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_2235, i64* %RBP.i, align 8
; Matched:\<badref\>:  store i64 %var_2_487, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_2233, i64* %var_2_6, align 8
; Matched:%var_2_490:  %var_2_490 = add i64 %var_2_687, 9
; %var_2_2236 = add i64 %var_2_259, 9
; Matched:\<badref\>:  store i64 %var_2_490, i64* %PC, align 8
; store i64 %var_2_2236, i64* %var_2_3, align 8
; Matched:%var_2_491:  %var_2_491 = inttoptr i64 %var_2_487 to i64*
; %var_2_2237 = inttoptr i64 %var_2_2233 to i64*
; Matched:%var_2_492:  %var_2_492 = load i64, i64* %var_2_491, align 8
; %var_2_2238 = load i64, i64* %var_2_2237, align 8
; Matched:\<badref\>:  store i64 %var_2_492, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2238, i64* %var_2_3, align 8
; Matched:%var_2_493:  %var_2_493 = add i64 %var_2_463, 208
; %var_2_2239 = add i64 %var_2_2209, 208
; Matched:\<badref\>:  store i64 %var_2_493, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_2239, i64* %var_2_6, align 8
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
define %struct.Memory* @routine_subq__0xc0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -192
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 192
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
define %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movl__edx__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -20
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
define %struct.Memory* @routine_jg_.L_400bc3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
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
define %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
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
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_MINUS0x60__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = sext i32 %9 to i64
  %13 = mul nsw i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RDX, align 8
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  %18 = icmp ne i64 %17, %13
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %28, align 1
  %29 = lshr i32 %14, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %19, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400b97(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
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
define %struct.Memory* @routine_cmpl__0x1__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_jl_.L_401066(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__edx__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x60__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
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
define %struct.Memory* @routine_movl_MINUS0x54__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_MINUS0x58__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = sext i32 %9 to i64
  %13 = mul nsw i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RDX, align 8
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  %18 = icmp ne i64 %17, %13
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %28, align 1
  %29 = lshr i32 %14, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %19, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0xa4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -164
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cltd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %7 = bitcast %union.anon* %6 to i32*
  %8 = load i32, i32* %7, align 8
  %9 = sext i32 %8 to i64
  %10 = lshr i64 %9, 32
  store i64 %10, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xa4__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -164
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %8 = bitcast %union.anon* %7 to i32*
  %9 = load i32, i32* %8, align 8
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %12 = bitcast %union.anon* %11 to i32*
  %13 = load i32, i32* %12, align 8
  %14 = zext i32 %13 to i64
  %15 = sext i32 %4 to i64
  %16 = shl nuw i64 %14, 32
  %17 = or i64 %16, %10
  %18 = sdiv i64 %17, %15
  %19 = shl i64 %18, 32
  %20 = ashr exact i64 %19, 32
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %24, label %22

; <label>:22:                                     ; preds = %block_400488
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:24:                                     ; preds = %block_400488
  %25 = srem i64 %17, %15
  %26 = getelementptr inbounds %union.anon, %union.anon* %7, i64 0, i32 0
  %27 = and i64 %18, 4294967295
  store i64 %27, i64* %26, align 8
  %28 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %29 = and i64 %25, 4294967295
  store i64 %29, i64* %28, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %24, %22
  %36 = phi %struct.Memory* [ %23, %22 ], [ %2, %24 ]
  ret %struct.Memory* %36
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x58__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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
define %struct.Memory* @routine_shll__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = shl i32 %6, 1
  %8 = icmp slt i32 %6, 0
  %9 = icmp slt i32 %7, 0
  %10 = xor i1 %8, %9
  %11 = zext i32 %7 to i64
  store i64 %11, i64* %RAX, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %.lobit = lshr i32 %6, 31
  %13 = trunc i32 %.lobit to i8
  store i8 %13, i8* %12, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %7, 254
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %25 = lshr i32 %6, 30
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  store i8 %27, i8* %24, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %29 = zext i1 %10 to i8
  store i8 %29, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_imull_MINUS0x54__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = sext i32 %9 to i64
  %13 = mul nsw i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RAX, align 8
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  %18 = icmp ne i64 %17, %13
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %28, align 1
  %29 = lshr i32 %14, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %19, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_imull_MINUS0x5c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = sext i32 %9 to i64
  %13 = mul nsw i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RAX, align 8
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  %18 = icmp ne i64 %17, %13
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %28, align 1
  %29 = lshr i32 %14, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %19, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x34__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -52
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
define %struct.Memory* @routine_jg_.L_400da6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x28__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -40
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
define %struct.Memory* @routine_jge_.L_400d35(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x30__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ult i32 %6, 2
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
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %EAX, align 4
  %6 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_jg_.L_400d30(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_cmpl_MINUS0x38__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -56
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
define %struct.Memory* @routine_jg_.L_400d1d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x24__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x20__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
  %36 = xor i32 %35, %34
  %37 = xor i32 %31, %34
  %38 = add nuw nsw i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
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
define %struct.Memory* @routine_movslq__eax___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400c67(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400d22(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_400c4d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400d35(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_sarl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 32
  %7 = ashr i64 %6, 33
  %8 = trunc i64 %3 to i8
  %9 = and i8 %8, 1
  %10 = trunc i64 %7 to i32
  %11 = and i64 %7, 4294967295
  store i64 %11, i64* %RAX, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = and i32 %10, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  store i8 %18, i8* %13, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %21 = icmp eq i32 %10, 0
  %22 = zext i1 %21 to i8
  store i8 %22, i8* %20, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %24 = lshr i64 %7, 31
  %25 = trunc i64 %24 to i8
  %26 = and i8 %25, 1
  store i8 %26, i8* %23, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %27, align 1
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

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__eax___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RAX, align 8
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
define %struct.Memory* @routine_movb__al___cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %AL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %CL, align 1
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
define %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -48
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
define %struct.Memory* @routine_movb__cl__MINUS0xa5__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -165
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jl_.L_400d63(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x44__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -68
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
define %struct.Memory* @routine_setg__cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  %15 = xor i1 %11, %14
  %16 = xor i1 %15, true
  %17 = and i1 %8, %16
  %18 = zext i1 %17 to i8
  store i8 %18, i8* %CL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0xa5__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -165
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_testb__0x1___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %AL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = zext i8 %7 to i32
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = xor i8 %7, 1
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
define %struct.Memory* @routine_jne_.L_400d76(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_400d8f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__eax___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = sub i32 %9, %5
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = icmp ult i32 %9, %5
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %10, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %6, %4
  %22 = trunc i64 %21 to i32
  %23 = xor i32 %22, %10
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %10, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %10, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %9, 31
  %35 = lshr i32 %5, 31
  %36 = xor i32 %35, %34
  %37 = xor i32 %31, %34
  %38 = add nuw nsw i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
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
define %struct.Memory* @routine_jmpq_.L_400d3e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x28__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
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
define %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x20__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
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
define %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400c2f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_jge_.L_40104e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x355__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x355__rip__type* @G_0x355__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x355__rip____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x355__rip__type* @G_0x355__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x355__rip____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x355__rip__type* @G_0x355__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x355__rip____xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x355__rip__type* @G_0x355__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdl_MINUS0x18__rbp____xmm5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = sitofp i32 %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd__xmm4___xmm5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl_MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %8 = bitcast %union.anon* %7 to i32*
  %9 = load i32, i32* %8, align 8
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %12 = bitcast %union.anon* %11 to i32*
  %13 = load i32, i32* %12, align 8
  %14 = zext i32 %13 to i64
  %15 = inttoptr i64 %4 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = shl nuw i64 %14, 32
  %19 = or i64 %18, %10
  %20 = sdiv i64 %19, %17
  %21 = shl i64 %20, 32
  %22 = ashr exact i64 %21, 32
  %23 = icmp eq i64 %20, %22
  br i1 %23, label %26, label %24

; <label>:24:                                     ; preds = %block_400488
  %25 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:26:                                     ; preds = %block_400488
  %27 = srem i64 %19, %17
  %28 = getelementptr inbounds %union.anon, %union.anon* %7, i64 0, i32 0
  %29 = and i64 %20, 4294967295
  store i64 %29, i64* %28, align 8
  %30 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %31 = and i64 %27, 4294967295
  store i64 %31, i64* %30, align 8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %37, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %26, %24
  %38 = phi %struct.Memory* [ %25, %24 ], [ %2, %26 ]
  ret %struct.Memory* %38
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdl__eax___xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %5 = load i32, i32* %EAX, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = sitofp i32 %5 to double
  %9 = bitcast %union.VectorReg* %4 to double*
  store double %8, double* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd__xmm4___xmm5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fdiv double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm5__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x78__rbp____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -120
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0xb0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm3___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
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
define %struct.Memory* @routine_movsd__xmm2__MINUS0xb8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0xc0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.sin_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0xa0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0xb8__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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
define %struct.Memory* @routine_mulsd_MINUS0xa0__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -160
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0xc0__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0xb0__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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
define %struct.Memory* @routine_movsd__xmm1__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
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
define %struct.Memory* @routine_movl__0x1__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x3c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -60
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
define %struct.Memory* @routine_jg_.L_401043(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
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
define %struct.Memory* @routine_jg_.L_400fd1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_400fbe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x3c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
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
define %struct.Memory* @routine_movsd_MINUS0x98__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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
define %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_mulsd___rcx__rdx_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
  %14 = fmul double %11, %13
  store double %14, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
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
define %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_mulsd___rcx__rdx_8____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
  %14 = fmul double %11, %13
  store double %14, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast [32 x %union.VectorReg]* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast [32 x %union.VectorReg]* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fadd double %8, %10
  store double %11, double* %7, align 1
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
define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_addsd___rcx__rdx_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_jmpq_.L_400eb0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400fc3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400e96(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x90__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -144
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x88__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -136
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_MINUS0x98__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -152
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
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
define %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
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
define %struct.Memory* @routine_movsd_MINUS0xa0__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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
define %struct.Memory* @routine_addsd_MINUS0x80__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -128
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
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
define %struct.Memory* @routine_jmpq_.L_400e84(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400dac(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
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
define %struct.Memory* @routine_imull_MINUS0x58__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = sext i32 %9 to i64
  %13 = mul nsw i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RAX, align 8
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  %18 = icmp ne i64 %17, %13
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %28, align 1
  %29 = lshr i32 %14, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %19, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ne i32 %6, 0
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
  %18 = xor i32 %6, 16
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
  %32 = xor i32 %27, 1
  %33 = add nuw nsw i32 %31, %32
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400bd0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0xc0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 192
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -193
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
