; ModuleID = '/tmp/tmpc6ha4t8o-query.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x2e9__rip__type = type <{ [4 x i8] }>
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
@G_0x2e9__rip_ = global %G_0x2e9__rip__type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_400540.Rand(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @rInitmatrix(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
; Matched:%var_2_14:  %var_2_14 = add i64 %var_2_10, -40
; %var_2_11 = add i64 %var_2_7, -40
; Matched:\<badref\>:  store i64 %var_2_14, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_11, i64* %var_2_6, align 8
; Matched:%var_2_15:  %var_2_15 = icmp ult i64 %var_2_11, 32
; %var_2_12 = icmp ult i64 %var_2_8, 32
; Matched:%var_2_16:  %var_2_16 = zext i1 %var_2_15 to i8
; %var_2_13 = zext i1 %var_2_12 to i8
%var_2_14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
; Matched:\<badref\>:  store i8 %var_2_16, i8* %var_2_17, align 1, !tbaa !1265
; store i8 %var_2_13, i8* %var_2_14, align 1
; Matched:%var_2_18:  %var_2_18 = trunc i64 %var_2_14 to i32
; %var_2_15 = trunc i64 %var_2_11 to i32
; Matched:%var_2_19:  %var_2_19 = and i32 %var_2_18, 255
; %var_2_16 = and i32 %var_2_15, 255
; Matched:%var_2_20:  %var_2_20 = tail call i32 @llvm.ctpop.i32(i32 %var_2_19) #12
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
; %RDI.i84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
; Matched:%var_2_42:  %var_2_42 = add i64 %var_2_10, -16
; %var_2_39 = add i64 %var_2_7, -16
; Matched:%var_2_43:  %var_2_43 = load i64, i64* %RDI, align 8
; %var_2_40 = load i64, i64* %RDI.i84, align 8
; Matched:%var_2_44:  %var_2_44 = add i64 %var_2_13, 11
; %var_2_41 = add i64 %var_2_10, 11
; Matched:\<badref\>:  store i64 %var_2_44, i64* %PC, align 8
; store i64 %var_2_41, i64* %var_2_3, align 8
; Matched:%var_2_45:  %var_2_45 = inttoptr i64 %var_2_42 to i64*
; %var_2_42 = inttoptr i64 %var_2_39 to i64*
; Matched:\<badref\>:  store i64 %var_2_43, i64* %var_2_45, align 8
; store i64 %var_2_40, i64* %var_2_42, align 8
%var_2_43 = load i64, i64* %RBP.i, align 8
%var_2_44 = add i64 %var_2_43, -16
; Matched:%var_2_48:  %var_2_48 = load i64, i64* %PC, align 8
; %var_2_45 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_49:  %var_2_49 = add i64 %var_2_48, 7
; %var_2_46 = add i64 %var_2_45, 7
; Matched:\<badref\>:  store i64 %var_2_49, i64* %PC, align 8
; store i64 %var_2_46, i64* %var_2_3, align 8
%var_2_47 = inttoptr i64 %var_2_44 to i32*
store i32 1, i32* %var_2_47, align 4
%var_2_48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
; Matched:%var_2_51:  %var_2_51 = bitcast [32 x %union.VectorReg]* %var_2_6 to i8*
; %var_2_49 = bitcast [32 x %union.VectorReg]* %var_2_48 to i8*
%var_2_50 = bitcast [32 x %union.VectorReg]* %var_2_48 to i32*
; Matched:%var_2_53:  %var_2_53 = getelementptr inbounds i8, i8* %var_2_51, i64 4
; %var_2_51 = getelementptr inbounds i8, i8* %var_2_49, i64 4
; Matched:%var_2_54:  %var_2_54 = bitcast i8* %var_2_53 to float*
; %var_2_52 = bitcast i8* %var_2_51 to float*
; Matched:%var_2_55:  %var_2_55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
; %var_2_53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_56:  %var_2_56 = bitcast i64* %var_2_55 to float*
; %var_2_54 = bitcast i64* %var_2_53 to float*
; Matched:%var_2_57:  %var_2_57 = getelementptr inbounds i8, i8* %var_2_51, i64 12
; %var_2_55 = getelementptr inbounds i8, i8* %var_2_49, i64 12
; Matched:%var_2_58:  %var_2_58 = bitcast i8* %var_2_57 to float*
; %var_2_56 = bitcast i8* %var_2_55 to float*
%var_2_57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
%RCX.i70 = getelementptr inbounds %union.anon, %union.anon* %var_2_57, i64 0, i32 0
; Matched:%var_2_3:  %var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
; %var_2_58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
; Matched:  %EAX = bitcast %union.anon* %var_2_3 to i32*
; %EAX.i67 = bitcast %union.anon* %var_2_58 to i32*
; Matched:  %RAX = getelementptr inbounds %union.anon, %union.anon* %var_2_3, i64 0, i32 0
; %RAX.i64 = getelementptr inbounds %union.anon, %union.anon* %var_2_58, i64 0, i32 0
%var_2_59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
; Matched:  %RDX = getelementptr inbounds %union.anon, %union.anon* %var_2_5, i64 0, i32 0
; %RDX.i = getelementptr inbounds %union.anon, %union.anon* %var_2_59, i64 0, i32 0
%EDX.i = bitcast %union.anon* %var_2_59 to i32*
; Matched:%var_2_59:  %var_2_59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
; %var_2_60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
%ECX.i51 = bitcast %union.anon* %var_2_57 to i32*
; Matched:%var_2_7:  %var_2_7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
; %var_2_61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
; Matched:%var_2_60:  %var_2_60 = bitcast %union.VectorReg* %var_2_7 to i8*
; %var_2_62 = bitcast %union.VectorReg* %var_2_61 to i8*
%var_2_63 = bitcast %union.VectorReg* %var_2_61 to <2 x i32>*
; Matched:%var_2_62:  %var_2_62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
; %var_2_64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
%var_2_65 = bitcast i64* %var_2_64 to <2 x i32>*
; Matched:%var_2_64:  %var_2_64 = bitcast %union.VectorReg* %var_2_7 to float*
; %var_2_66 = bitcast %union.VectorReg* %var_2_61 to float*
; Matched:%var_2_65:  %var_2_65 = getelementptr inbounds i8, i8* %var_2_60, i64 4
; %var_2_67 = getelementptr inbounds i8, i8* %var_2_62, i64 4
; Matched:%var_2_66:  %var_2_66 = bitcast i8* %var_2_65 to i32*
; %var_2_68 = bitcast i8* %var_2_67 to i32*
; Matched:%var_2_67:  %var_2_67 = bitcast i64* %var_2_62 to i32*
; %var_2_69 = bitcast i64* %var_2_64 to i32*
; Matched:%var_2_68:  %var_2_68 = getelementptr inbounds i8, i8* %var_2_60, i64 12
; %var_2_70 = getelementptr inbounds i8, i8* %var_2_62, i64 12
; Matched:%var_2_69:  %var_2_69 = bitcast i8* %var_2_68 to i32*
; %var_2_71 = bitcast i8* %var_2_70 to i32*
%var_2_72 = bitcast %union.VectorReg* %var_2_61 to <2 x float>*
%var_2_73 = bitcast [32 x %union.VectorReg]* %var_2_48 to <2 x float>*
; Matched:  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
; %RSI.i35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
; Matched:  %.pre = load i64, i64* %PC, align 8
; %.pre = load i64, i64* %var_2_3, align 8
  br label %block_.L_400593

block_.L_400593:                                  ; preds = %block_.L_40060d, %entry
; Matched:%var_2_75:  %var_2_75 = phi i64 [ %.pre, %block_400580 ], [ %var_2_326, %block_40060d ]
; %var_2_74 = phi i64 [ %.pre, %entry ], [ %var_2_360, %block_.L_40060d ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %MEMORY.1, %block_.L_40060d ]
%var_2_75 = load i64, i64* %RBP.i, align 8
%var_2_76 = add i64 %var_2_75, -16
; Matched:%var_2_78:  %var_2_78 = add i64 %var_2_75, 4
; %var_2_77 = add i64 %var_2_74, 4
; Matched:\<badref\>:  store i64 %var_2_78, i64* %PC, align 8
; store i64 %var_2_77, i64* %var_2_3, align 8
%var_2_78 = inttoptr i64 %var_2_76 to i32*
%var_2_79 = load i32, i32* %var_2_78, align 4
%var_2_80 = add i32 %var_2_79, -40
; Matched:%var_2_82:  %var_2_82 = icmp ult i32 %var_2_80, 40
; %var_2_81 = icmp ult i32 %var_2_79, 40
; Matched:%var_2_83:  %var_2_83 = zext i1 %var_2_82 to i8
; %var_2_82 = zext i1 %var_2_81 to i8
; Matched:\<badref\>:  store i8 %var_2_83, i8* %var_2_17, align 1, !tbaa !1265
; store i8 %var_2_82, i8* %var_2_14, align 1
; Matched:%var_2_84:  %var_2_84 = and i32 %var_2_81, 255
; %var_2_83 = and i32 %var_2_80, 255
; Matched:%var_2_85:  %var_2_85 = tail call i32 @llvm.ctpop.i32(i32 %var_2_84) #12
; %var_2_84 = tail call i32 @llvm.ctpop.i32(i32 %var_2_83)
; Matched:%var_2_86:  %var_2_86 = trunc i32 %var_2_85 to i8
; %var_2_85 = trunc i32 %var_2_84 to i8
; Matched:%var_2_87:  %var_2_87 = and i8 %var_2_86, 1
; %var_2_86 = and i8 %var_2_85, 1
; Matched:%var_2_88:  %var_2_88 = xor i8 %var_2_87, 1
; %var_2_87 = xor i8 %var_2_86, 1
; Matched:\<badref\>:  store i8 %var_2_88, i8* %var_2_24, align 1, !tbaa !1279
; store i8 %var_2_87, i8* %var_2_21, align 1
; Matched:%var_2_89:  %var_2_89 = xor i32 %var_2_81, %var_2_80
; %var_2_88 = xor i32 %var_2_80, %var_2_79
; Matched:%var_2_90:  %var_2_90 = lshr i32 %var_2_89, 4
; %var_2_89 = lshr i32 %var_2_88, 4
; Matched:%var_2_91:  %var_2_91 = trunc i32 %var_2_90 to i8
; %var_2_90 = trunc i32 %var_2_89 to i8
; Matched:%var_2_92:  %var_2_92 = and i8 %var_2_91, 1
; %var_2_91 = and i8 %var_2_90, 1
; Matched:\<badref\>:  store i8 %var_2_92, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_91, i8* %var_2_26, align 1
%var_2_92 = icmp eq i32 %var_2_80, 0
; Matched:%var_2_94:  %var_2_94 = zext i1 %var_2_93 to i8
; %var_2_93 = zext i1 %var_2_92 to i8
; Matched:\<badref\>:  store i8 %var_2_94, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_93, i8* %var_2_29, align 1
%var_2_94 = lshr i32 %var_2_80, 31
%var_2_95 = trunc i32 %var_2_94 to i8
; Matched:\<badref\>:  store i8 %var_2_96, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_95, i8* %var_2_32, align 1
%var_2_96 = lshr i32 %var_2_79, 31
%var_2_97 = xor i32 %var_2_94, %var_2_96
%var_2_98 = add nuw nsw i32 %var_2_97, %var_2_96
%var_2_99 = icmp eq i32 %var_2_98, 2
; Matched:%var_2_101:  %var_2_101 = zext i1 %var_2_100 to i8
; %var_2_100 = zext i1 %var_2_99 to i8
; Matched:\<badref\>:  store i8 %var_2_101, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_100, i8* %var_2_38, align 1
%var_2_101 = icmp ne i8 %var_2_95, 0
%var_2_102 = xor i1 %var_2_101, %var_2_99
%.demorgan = or i1 %var_2_92, %var_2_102
; Matched:  %.v8 = select i1 %.demorgan, i64 10, i64 141
; %.v8 = select i1 %.demorgan, i64 10, i64 141
; Matched:%var_2_104:  %var_2_104 = add i64 %var_2_75, %.v8
; %var_2_103 = add i64 %var_2_74, %.v8
; Matched:\<badref\>:  store i64 %var_2_104, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_103, i64* %var_2_3, align 8
  br i1 %.demorgan, label %block_40059d, label %block_.L_400620

block_40059d:                                     ; preds = %block_.L_400593
%var_2_104 = add i64 %var_2_75, -20
; Matched:%var_2_73:  %var_2_73 = add i64 %var_2_104, 7
; %var_2_105 = add i64 %var_2_103, 7
; Matched:\<badref\>:  store i64 %var_2_73, i64* %PC, align 8
; store i64 %var_2_105, i64* %var_2_3, align 8
%var_2_106 = inttoptr i64 %var_2_104 to i32*
store i32 1, i32* %var_2_106, align 4
; Matched:  %.pre4 = load i64, i64* %PC, align 8
; %.pre4 = load i64, i64* %var_2_3, align 8
  br label %block_.L_4005a4

block_.L_4005a4:                                  ; preds = %routine_idivl__ecx.exit, %block_40059d
; Matched:%var_2_327:  %var_2_327 = phi i64 [ %.pre4, %block_40059d ], [ %var_2_296, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ]
; %var_2_107 = phi i64 [ %.pre4, %block_40059d ], [ %var_2_330, %routine_idivl__ecx.exit ]
%MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_40059d ], [ %var_2_188, %routine_idivl__ecx.exit ]
%var_2_108 = load i64, i64* %RBP.i, align 8
%var_2_109 = add i64 %var_2_108, -20
; Matched:%var_2_330:  %var_2_330 = add i64 %var_2_327, 4
; %var_2_110 = add i64 %var_2_107, 4
; Matched:\<badref\>:  store i64 %var_2_330, i64* %PC, align 8
; store i64 %var_2_110, i64* %var_2_3, align 8
%var_2_111 = inttoptr i64 %var_2_109 to i32*
%var_2_112 = load i32, i32* %var_2_111, align 4
%var_2_113 = add i32 %var_2_112, -40
; Matched:%var_2_334:  %var_2_334 = icmp ult i32 %var_2_332, 40
; %var_2_114 = icmp ult i32 %var_2_112, 40
; Matched:%var_2_335:  %var_2_335 = zext i1 %var_2_334 to i8
; %var_2_115 = zext i1 %var_2_114 to i8
; Matched:\<badref\>:  store i8 %var_2_335, i8* %var_2_17, align 1, !tbaa !1265
; store i8 %var_2_115, i8* %var_2_14, align 1
; Matched:%var_2_336:  %var_2_336 = and i32 %var_2_333, 255
; %var_2_116 = and i32 %var_2_113, 255
; Matched:%var_2_337:  %var_2_337 = tail call i32 @llvm.ctpop.i32(i32 %var_2_336) #12
; %var_2_117 = tail call i32 @llvm.ctpop.i32(i32 %var_2_116)
; Matched:%var_2_338:  %var_2_338 = trunc i32 %var_2_337 to i8
; %var_2_118 = trunc i32 %var_2_117 to i8
; Matched:%var_2_339:  %var_2_339 = and i8 %var_2_338, 1
; %var_2_119 = and i8 %var_2_118, 1
; Matched:%var_2_340:  %var_2_340 = xor i8 %var_2_339, 1
; %var_2_120 = xor i8 %var_2_119, 1
; Matched:\<badref\>:  store i8 %var_2_340, i8* %var_2_24, align 1, !tbaa !1279
; store i8 %var_2_120, i8* %var_2_21, align 1
; Matched:%var_2_341:  %var_2_341 = xor i32 %var_2_333, %var_2_332
; %var_2_121 = xor i32 %var_2_113, %var_2_112
; Matched:%var_2_342:  %var_2_342 = lshr i32 %var_2_341, 4
; %var_2_122 = lshr i32 %var_2_121, 4
; Matched:%var_2_343:  %var_2_343 = trunc i32 %var_2_342 to i8
; %var_2_123 = trunc i32 %var_2_122 to i8
; Matched:%var_2_344:  %var_2_344 = and i8 %var_2_343, 1
; %var_2_124 = and i8 %var_2_123, 1
; Matched:\<badref\>:  store i8 %var_2_344, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_124, i8* %var_2_26, align 1
%var_2_125 = icmp eq i32 %var_2_113, 0
; Matched:%var_2_346:  %var_2_346 = zext i1 %var_2_345 to i8
; %var_2_126 = zext i1 %var_2_125 to i8
; Matched:\<badref\>:  store i8 %var_2_346, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_126, i8* %var_2_29, align 1
%var_2_127 = lshr i32 %var_2_113, 31
%var_2_128 = trunc i32 %var_2_127 to i8
; Matched:\<badref\>:  store i8 %var_2_348, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_128, i8* %var_2_32, align 1
%var_2_129 = lshr i32 %var_2_112, 31
%var_2_130 = xor i32 %var_2_127, %var_2_129
%var_2_131 = add nuw nsw i32 %var_2_130, %var_2_129
%var_2_132 = icmp eq i32 %var_2_131, 2
; Matched:%var_2_353:  %var_2_353 = zext i1 %var_2_352 to i8
; %var_2_133 = zext i1 %var_2_132 to i8
; Matched:\<badref\>:  store i8 %var_2_353, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_133, i8* %var_2_38, align 1
%var_2_134 = icmp ne i8 %var_2_128, 0
%var_2_135 = xor i1 %var_2_134, %var_2_132
%.demorgan7 = or i1 %var_2_125, %var_2_135
; Matched:  %.v = select i1 %.demorgan7, i64 10, i64 105
; %.v = select i1 %.demorgan7, i64 10, i64 105
; Matched:%var_2_356:  %var_2_356 = add i64 %var_2_327, %.v
; %var_2_136 = add i64 %var_2_107, %.v
; Matched:\<badref\>:  store i64 %var_2_356, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_136, i64* %var_2_3, align 8
  br i1 %.demorgan7, label %block_4005ae, label %block_.L_40060d

block_4005ae:                                     ; preds = %block_.L_4005a4
; Matched:%var_2_105:  %var_2_105 = add i64 %var_2_356, -110
; %var_2_137 = add i64 %var_2_136, -110
; Matched:%var_2_106:  %var_2_106 = add i64 %var_2_356, 5
; %var_2_138 = add i64 %var_2_136, 5
; Matched:%var_2_107:  %var_2_107 = load i64, i64* %RSP, align 8, !tbaa !1261
; %var_2_139 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_108:  %var_2_108 = add i64 %var_2_107, -8
; %var_2_140 = add i64 %var_2_139, -8
; Matched:%var_2_109:  %var_2_109 = inttoptr i64 %var_2_108 to i64*
; %var_2_141 = inttoptr i64 %var_2_140 to i64*
; Matched:\<badref\>:  store i64 %var_2_106, i64* %var_2_109, align 8
; store i64 %var_2_138, i64* %var_2_141, align 8
; Matched:\<badref\>:  store i64 %var_2_108, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_140, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_105, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_137, i64* %var_2_3, align 8
; Matched:%var_2_110:  %var_2_110 = tail call %struct.Memory* @sub_400540_Rand_renamed_(%struct.State* nonnull %0, i64 %var_2_105, %struct.Memory* %MEMORY.1)
; %call2_4005ae = tail call %struct.Memory* @sub_400540.Rand(%struct.State* nonnull %0, i64 %var_2_137, %struct.Memory* %MEMORY.1)
%var_2_142 = load i64, i64* %var_2_3, align 8
%var_2_143 = add i64 %var_2_142, ptrtoint (%G_0x2e9__rip__type* @G_0x2e9__rip_ to i64)
%var_2_144 = add i64 %var_2_142, 8
store i64 %var_2_144, i64* %var_2_3, align 8
%var_2_145 = inttoptr i64 %var_2_143 to i32*
%var_2_146 = load i32, i32* %var_2_145, align 4
store i32 %var_2_146, i32* %var_2_50, align 1
; Matched:\<badref\>:  store float 0.000000e+00, float* %var_2_54, align 1, !tbaa !1284
; store float 0.000000e+00, float* %var_2_52, align 1
; Matched:\<badref\>:  store float 0.000000e+00, float* %var_2_56, align 1, !tbaa !1284
; store float 0.000000e+00, float* %var_2_54, align 1
; Matched:\<badref\>:  store float 0.000000e+00, float* %var_2_58, align 1, !tbaa !1284
; store float 0.000000e+00, float* %var_2_56, align 1
  store i64 120, i64* %RCX.i70, align 8
; Matched:%var_2_113:  %var_2_113 = load i64, i64* %RBP, align 8
; %var_2_147 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_114:  %var_2_114 = add i64 %var_2_113, -12
; %var_2_148 = add i64 %var_2_147, -12
; Matched:%var_2_115:  %var_2_115 = load i32, i32* %EAX, align 4
; %var_2_149 = load i32, i32* %EAX.i67, align 4
; Matched:%var_2_116:  %var_2_116 = add i64 %var_2_111, 16
; %var_2_150 = add i64 %var_2_142, 16
; Matched:\<badref\>:  store i64 %var_2_116, i64* %PC, align 8
; store i64 %var_2_150, i64* %var_2_3, align 8
; Matched:%var_2_117:  %var_2_117 = inttoptr i64 %var_2_114 to i32*
; %var_2_151 = inttoptr i64 %var_2_148 to i32*
; Matched:\<badref\>:  store i32 %var_2_115, i32* %var_2_117, align 4
; store i32 %var_2_149, i32* %var_2_151, align 4
; Matched:%var_2_118:  %var_2_118 = load i64, i64* %RBP, align 8
; %var_2_152 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_119:  %var_2_119 = add i64 %var_2_118, -12
; %var_2_153 = add i64 %var_2_152, -12
; Matched:%var_2_120:  %var_2_120 = load i64, i64* %PC, align 8
; %var_2_154 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_268:  %var_2_268 = add i64 %var_2_267, 3
; %var_2_155 = add i64 %var_2_154, 3
; Matched:\<badref\>:  store i64 %var_2_268, i64* %PC, align 8
; store i64 %var_2_155, i64* %var_2_3, align 8
; Matched:%var_2_122:  %var_2_122 = inttoptr i64 %var_2_119 to i32*
; %var_2_156 = inttoptr i64 %var_2_153 to i32*
; Matched:%var_2_123:  %var_2_123 = load i32, i32* %var_2_122, align 4
; %var_2_157 = load i32, i32* %var_2_156, align 4
; Matched:%var_2_124:  %var_2_124 = zext i32 %var_2_123 to i64
; %var_2_158 = zext i32 %var_2_157 to i64
; Matched:\<badref\>:  store i64 %var_2_124, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_158, i64* %RAX.i64, align 8
; Matched:%var_2_125:  %var_2_125 = add i64 %var_2_120, 6
; %var_2_159 = add i64 %var_2_154, 6
; Matched:\<badref\>:  store i64 %var_2_125, i64* %PC, align 8
; store i64 %var_2_159, i64* %var_2_3, align 8
; Matched:%var_2_126:  %var_2_126 = load i32, i32* %var_2_122, align 4
; %var_2_160 = load i32, i32* %var_2_156, align 4
; Matched:%var_2_127:  %var_2_127 = zext i32 %var_2_126 to i64
; %var_2_161 = zext i32 %var_2_160 to i64
; Matched:\<badref\>:  store i64 %var_2_127, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_161, i64* %RDX.i, align 8
; Matched:%var_2_128:  %var_2_128 = add i64 %var_2_118, -24
; %var_2_162 = add i64 %var_2_152, -24
; Matched:%var_2_129:  %var_2_129 = add i64 %var_2_120, 9
; %var_2_163 = add i64 %var_2_154, 9
; Matched:\<badref\>:  store i64 %var_2_294, i64* %PC, align 8
; store i64 %var_2_163, i64* %var_2_3, align 8
; Matched:%var_2_130:  %var_2_130 = inttoptr i64 %var_2_128 to i32*
; %var_2_164 = inttoptr i64 %var_2_162 to i32*
; Matched:\<badref\>:  store i32 %var_2_123, i32* %var_2_130, align 4
; store i32 %var_2_157, i32* %var_2_164, align 4
%var_2_165 = load i32, i32* %EDX.i, align 4
%var_2_166 = zext i32 %var_2_165 to i64
%var_2_167 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_132, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_166, i64* %RAX.i64, align 8
%var_2_168 = sext i32 %var_2_165 to i64
%var_2_169 = lshr i64 %var_2_168, 32
; Matched:\<badref\>:  store i64 %var_2_135, i64* %var_2_59, align 8, !tbaa !1261
; store i64 %var_2_169, i64* %var_2_60, align 8
%var_2_170 = load i32, i32* %ECX.i51, align 4
%var_2_171 = add i64 %var_2_167, 5
; Matched:\<badref\>:  store i64 %var_2_137, i64* %PC, align 8
; store i64 %var_2_171, i64* %var_2_3, align 8
%var_2_172 = sext i32 %var_2_170 to i64
%var_2_173 = shl nuw i64 %var_2_169, 32
%var_2_174 = or i64 %var_2_173, %var_2_166
%var_2_175 = sdiv i64 %var_2_174, %var_2_172
%var_2_176 = shl i64 %var_2_175, 32
%var_2_177 = ashr exact i64 %var_2_176, 32
%var_2_178 = icmp eq i64 %var_2_175, %var_2_177
br i1 %var_2_178, label %var_2_181, label %var_2_179

var_2_179:
%var_2_180 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %var_2_171, %struct.Memory* %MEMORY.1)
; Matched:  %.pre5 = load i32, i32* %EAX, align 4
; %.pre5 = load i32, i32* %EAX.i67, align 4
; Matched:  %.pre6 = load i64, i64* %PC, align 8
; %.pre6 = load i64, i64* %var_2_3, align 8
  br label %routine_idivl__ecx.exit

var_2_181:
; Matched:%var_2_148:  %var_2_148 = srem i64 %var_2_140, %var_2_138
; %var_2_182 = srem i64 %var_2_174, %var_2_172
; Matched:%var_2_149:  %var_2_149 = and i64 %var_2_141, 4294967295
; %var_2_183 = and i64 %var_2_175, 4294967295
; Matched:\<badref\>:  store i64 %var_2_149, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_183, i64* %RAX.i64, align 8
; Matched:%var_2_150:  %var_2_150 = and i64 %var_2_148, 4294967295
; %var_2_184 = and i64 %var_2_182, 4294967295
; Matched:\<badref\>:  store i64 %var_2_150, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_184, i64* %RDX.i, align 8
store i8 0, i8* %var_2_14, align 1
store i8 0, i8* %var_2_21, align 1
store i8 0, i8* %var_2_26, align 1
store i8 0, i8* %var_2_29, align 1
store i8 0, i8* %var_2_32, align 1
store i8 0, i8* %var_2_38, align 1
; Matched:%var_2_151:  %var_2_151 = trunc i64 %var_2_141 to i32
; %var_2_185 = trunc i64 %var_2_175 to i32
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %var_2_181, %var_2_179
; Matched:%var_2_152:  %var_2_152 = phi i64 [ %.pre6, %var_2_145 ], [ %var_2_137, %var_2_147 ]
; %var_2_186 = phi i64 [ %.pre6, %var_2_179 ], [ %var_2_171, %var_2_181 ]
; Matched:%var_2_153:  %var_2_153 = phi i32 [ %.pre5, %var_2_145 ], [ %var_2_151, %var_2_147 ]
; %var_2_187 = phi i32 [ %.pre5, %var_2_179 ], [ %var_2_185, %var_2_181 ]
%var_2_188 = phi %struct.Memory* [ %var_2_180, %var_2_179 ], [ %MEMORY.1, %var_2_181 ]
; Matched:%var_2_155:  %var_2_155 = sext i32 %var_2_153 to i64
; %var_2_189 = sext i32 %var_2_187 to i64
; Matched:%var_2_156:  %var_2_156 = mul nsw i64 %var_2_155, 120
; %var_2_190 = mul nsw i64 %var_2_189, 120
; Matched:%var_2_157:  %var_2_157 = trunc i64 %var_2_156 to i32
; %var_2_191 = trunc i64 %var_2_190 to i32
; Matched:%var_2_158:  %var_2_158 = and i64 %var_2_156, 4294967288
; %var_2_192 = and i64 %var_2_190, 4294967288
; Matched:\<badref\>:  store i64 %var_2_158, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_192, i64* %RAX.i64, align 8
; Matched:%var_2_159:  %var_2_159 = mul i64 %var_2_155, 515396075520
; %var_2_193 = mul i64 %var_2_189, 515396075520
; Matched:%var_2_160:  %var_2_160 = ashr exact i64 %var_2_159, 32
; %var_2_194 = ashr exact i64 %var_2_193, 32
; Matched:%var_2_161:  %var_2_161 = icmp ne i64 %var_2_160, %var_2_156
; %var_2_195 = icmp ne i64 %var_2_194, %var_2_190
; Matched:%var_2_162:  %var_2_162 = zext i1 %var_2_161 to i8
; %var_2_196 = zext i1 %var_2_195 to i8
; Matched:\<badref\>:  store i8 %var_2_162, i8* %var_2_17, align 1, !tbaa !1265
; store i8 %var_2_196, i8* %var_2_14, align 1
; Matched:%var_2_163:  %var_2_163 = and i32 %var_2_157, 248
; %var_2_197 = and i32 %var_2_191, 248
; Matched:%var_2_164:  %var_2_164 = tail call i32 @llvm.ctpop.i32(i32 %var_2_163) #12
; %var_2_198 = tail call i32 @llvm.ctpop.i32(i32 %var_2_197)
; Matched:%var_2_165:  %var_2_165 = trunc i32 %var_2_164 to i8
; %var_2_199 = trunc i32 %var_2_198 to i8
; Matched:%var_2_166:  %var_2_166 = and i8 %var_2_165, 1
; %var_2_200 = and i8 %var_2_199, 1
; Matched:%var_2_167:  %var_2_167 = xor i8 %var_2_166, 1
; %var_2_201 = xor i8 %var_2_200, 1
; Matched:\<badref\>:  store i8 %var_2_167, i8* %var_2_24, align 1, !tbaa !1279
; store i8 %var_2_201, i8* %var_2_21, align 1
store i8 0, i8* %var_2_26, align 1
store i8 0, i8* %var_2_29, align 1
; Matched:%var_2_168:  %var_2_168 = lshr i32 %var_2_157, 31
; %var_2_202 = lshr i32 %var_2_191, 31
; Matched:%var_2_169:  %var_2_169 = trunc i32 %var_2_168 to i8
; %var_2_203 = trunc i32 %var_2_202 to i8
; Matched:\<badref\>:  store i8 %var_2_169, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_203, i8* %var_2_32, align 1
; Matched:\<badref\>:  store i8 %var_2_162, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_196, i8* %var_2_38, align 1
; Matched:%var_2_170:  %var_2_170 = load i64, i64* %RBP, align 8
; %var_2_204 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_171:  %var_2_171 = add i64 %var_2_170, -24
; %var_2_205 = add i64 %var_2_204, -24
; Matched:%var_2_172:  %var_2_172 = add i64 %var_2_152, 6
; %var_2_206 = add i64 %var_2_186, 6
; Matched:\<badref\>:  store i64 %var_2_172, i64* %PC, align 8
; store i64 %var_2_206, i64* %var_2_3, align 8
; Matched:%var_2_173:  %var_2_173 = inttoptr i64 %var_2_171 to i32*
; %var_2_207 = inttoptr i64 %var_2_205 to i32*
; Matched:%var_2_174:  %var_2_174 = load i32, i32* %var_2_173, align 4
; %var_2_208 = load i32, i32* %var_2_207, align 4
; Matched:%var_2_175:  %var_2_175 = trunc i64 %var_2_156 to i32
; %var_2_209 = trunc i64 %var_2_190 to i32
; Matched:%var_2_176:  %var_2_176 = sub i32 %var_2_174, %var_2_175
; %var_2_210 = sub i32 %var_2_208, %var_2_209
; Matched:%var_2_177:  %var_2_177 = lshr i32 %var_2_176, 31
; %var_2_211 = lshr i32 %var_2_210, 31
; Matched:%var_2_178:  %var_2_178 = add i32 %var_2_176, -60
; %var_2_212 = add i32 %var_2_210, -60
; Matched:%var_2_179:  %var_2_179 = zext i32 %var_2_178 to i64
; %var_2_213 = zext i32 %var_2_212 to i64
; Matched:\<badref\>:  store i64 %var_2_179, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_213, i64* %RCX.i70, align 8
; Matched:%var_2_180:  %var_2_180 = icmp ult i32 %var_2_176, 60
; %var_2_214 = icmp ult i32 %var_2_210, 60
; Matched:%var_2_181:  %var_2_181 = zext i1 %var_2_180 to i8
; %var_2_215 = zext i1 %var_2_214 to i8
; Matched:\<badref\>:  store i8 %var_2_181, i8* %var_2_17, align 1, !tbaa !1265
; store i8 %var_2_215, i8* %var_2_14, align 1
; Matched:%var_2_182:  %var_2_182 = and i32 %var_2_178, 255
; %var_2_216 = and i32 %var_2_212, 255
; Matched:%var_2_183:  %var_2_183 = tail call i32 @llvm.ctpop.i32(i32 %var_2_182) #12
; %var_2_217 = tail call i32 @llvm.ctpop.i32(i32 %var_2_216)
; Matched:%var_2_184:  %var_2_184 = trunc i32 %var_2_183 to i8
; %var_2_218 = trunc i32 %var_2_217 to i8
; Matched:%var_2_185:  %var_2_185 = and i8 %var_2_184, 1
; %var_2_219 = and i8 %var_2_218, 1
; Matched:%var_2_186:  %var_2_186 = xor i8 %var_2_185, 1
; %var_2_220 = xor i8 %var_2_219, 1
; Matched:\<badref\>:  store i8 %var_2_186, i8* %var_2_24, align 1, !tbaa !1279
; store i8 %var_2_220, i8* %var_2_21, align 1
; Matched:%var_2_187:  %var_2_187 = xor i32 %var_2_176, 16
; %var_2_221 = xor i32 %var_2_210, 16
; Matched:%var_2_188:  %var_2_188 = xor i32 %var_2_187, %var_2_178
; %var_2_222 = xor i32 %var_2_221, %var_2_212
; Matched:%var_2_189:  %var_2_189 = lshr i32 %var_2_188, 4
; %var_2_223 = lshr i32 %var_2_222, 4
; Matched:%var_2_190:  %var_2_190 = trunc i32 %var_2_189 to i8
; %var_2_224 = trunc i32 %var_2_223 to i8
; Matched:%var_2_191:  %var_2_191 = and i8 %var_2_190, 1
; %var_2_225 = and i8 %var_2_224, 1
; Matched:\<badref\>:  store i8 %var_2_191, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_225, i8* %var_2_26, align 1
; Matched:%var_2_192:  %var_2_192 = icmp eq i32 %var_2_178, 0
; %var_2_226 = icmp eq i32 %var_2_212, 0
; Matched:%var_2_193:  %var_2_193 = zext i1 %var_2_192 to i8
; %var_2_227 = zext i1 %var_2_226 to i8
; Matched:\<badref\>:  store i8 %var_2_193, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_227, i8* %var_2_29, align 1
; Matched:%var_2_194:  %var_2_194 = lshr i32 %var_2_178, 31
; %var_2_228 = lshr i32 %var_2_212, 31
; Matched:%var_2_195:  %var_2_195 = trunc i32 %var_2_194 to i8
; %var_2_229 = trunc i32 %var_2_228 to i8
; Matched:\<badref\>:  store i8 %var_2_195, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_229, i8* %var_2_32, align 1
; Matched:%var_2_196:  %var_2_196 = xor i32 %var_2_194, %var_2_177
; %var_2_230 = xor i32 %var_2_228, %var_2_211
; Matched:%var_2_197:  %var_2_197 = add nuw nsw i32 %var_2_196, %var_2_177
; %var_2_231 = add nuw nsw i32 %var_2_230, %var_2_211
; Matched:%var_2_198:  %var_2_198 = icmp eq i32 %var_2_197, 2
; %var_2_232 = icmp eq i32 %var_2_231, 2
; Matched:%var_2_199:  %var_2_199 = zext i1 %var_2_198 to i8
; %var_2_233 = zext i1 %var_2_232 to i8
; Matched:\<badref\>:  store i8 %var_2_199, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_233, i8* %var_2_38, align 1
%var_2_234 = load <2 x i32>, <2 x i32>* %var_2_63, align 1
%var_2_235 = load <2 x i32>, <2 x i32>* %var_2_65, align 1
; Matched:%var_2_202:  %var_2_202 = sitofp i32 %var_2_178 to float
; %var_2_236 = sitofp i32 %var_2_212 to float
; Matched:\<badref\>:  store float %var_2_202, float* %var_2_64, align 1, !tbaa !1284
; store float %var_2_236, float* %var_2_66, align 1
%var_2_237 = extractelement <2 x i32> %var_2_234, i32 1
; Matched:\<badref\>:  store i32 %var_2_203, i32* %var_2_66, align 1, !tbaa !1284
; store i32 %var_2_237, i32* %var_2_68, align 1
%var_2_238 = extractelement <2 x i32> %var_2_235, i32 0
; Matched:\<badref\>:  store i32 %var_2_204, i32* %var_2_67, align 1, !tbaa !1284
; store i32 %var_2_238, i32* %var_2_69, align 1
%var_2_239 = extractelement <2 x i32> %var_2_235, i32 1
; Matched:\<badref\>:  store i32 %var_2_205, i32* %var_2_69, align 1, !tbaa !1284
; store i32 %var_2_239, i32* %var_2_71, align 1
%var_2_240 = load <2 x float>, <2 x float>* %var_2_72, align 1
%var_2_241 = load <2 x i32>, <2 x i32>* %var_2_65, align 1
%var_2_242 = load <2 x float>, <2 x float>* %var_2_73, align 1
%var_2_243 = extractelement <2 x float> %var_2_240, i32 0
%var_2_244 = extractelement <2 x float> %var_2_242, i32 0
; Matched:%var_2_211:  %var_2_211 = fdiv float %var_2_209, %var_2_210
; %var_2_245 = fdiv float %var_2_243, %var_2_244
; Matched:\<badref\>:  store float %var_2_211, float* %var_2_64, align 1, !tbaa !1284
; store float %var_2_245, float* %var_2_66, align 1
%var_2_246 = bitcast <2 x float> %var_2_240 to <2 x i32>
%var_2_247 = extractelement <2 x i32> %var_2_246, i32 1
; Matched:\<badref\>:  store i32 %var_2_213, i32* %var_2_66, align 1, !tbaa !1284
; store i32 %var_2_247, i32* %var_2_68, align 1
%var_2_248 = extractelement <2 x i32> %var_2_241, i32 0
; Matched:\<badref\>:  store i32 %var_2_214, i32* %var_2_67, align 1, !tbaa !1284
; store i32 %var_2_248, i32* %var_2_69, align 1
%var_2_249 = extractelement <2 x i32> %var_2_241, i32 1
; Matched:\<badref\>:  store i32 %var_2_215, i32* %var_2_69, align 1, !tbaa !1284
; store i32 %var_2_249, i32* %var_2_71, align 1
; Matched:%var_2_216:  %var_2_216 = load i64, i64* %RBP, align 8
; %var_2_250 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_217:  %var_2_217 = add i64 %var_2_216, -8
; %var_2_251 = add i64 %var_2_250, -8
; Matched:%var_2_218:  %var_2_218 = add i64 %var_2_152, 23
; %var_2_252 = add i64 %var_2_186, 23
; Matched:\<badref\>:  store i64 %var_2_218, i64* %PC, align 8
; store i64 %var_2_252, i64* %var_2_3, align 8
; Matched:%var_2_219:  %var_2_219 = inttoptr i64 %var_2_217 to i64*
; %var_2_253 = inttoptr i64 %var_2_251 to i64*
; Matched:%var_2_220:  %var_2_220 = load i64, i64* %var_2_219, align 8
; %var_2_254 = load i64, i64* %var_2_253, align 8
; Matched:\<badref\>:  store i64 %var_2_220, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_254, i64* %RSI.i35, align 8
; Matched:%var_2_221:  %var_2_221 = add i64 %var_2_216, -16
; %var_2_255 = add i64 %var_2_250, -16
; Matched:%var_2_222:  %var_2_222 = add i64 %var_2_152, 27
; %var_2_256 = add i64 %var_2_186, 27
; Matched:\<badref\>:  store i64 %var_2_222, i64* %PC, align 8
; store i64 %var_2_256, i64* %var_2_3, align 8
; Matched:%var_2_223:  %var_2_223 = inttoptr i64 %var_2_221 to i32*
; %var_2_257 = inttoptr i64 %var_2_255 to i32*
; Matched:%var_2_224:  %var_2_224 = load i32, i32* %var_2_223, align 4
; %var_2_258 = load i32, i32* %var_2_257, align 4
; Matched:%var_2_225:  %var_2_225 = sext i32 %var_2_224 to i64
; %var_2_259 = sext i32 %var_2_258 to i64
; Matched:%var_2_226:  %var_2_226 = mul nsw i64 %var_2_225, 164
; %var_2_260 = mul nsw i64 %var_2_259, 164
; Matched:\<badref\>:  store i64 %var_2_226, i64* %RDI, align 8, !tbaa !1261
; store i64 %var_2_260, i64* %RDI.i84, align 8
; Matched:%var_2_227:  %var_2_227 = lshr i64 %var_2_226, 63
; %var_2_261 = lshr i64 %var_2_260, 63
; Matched:%var_2_228:  %var_2_228 = add i64 %var_2_226, %var_2_220
; %var_2_262 = add i64 %var_2_260, %var_2_254
; Matched:\<badref\>:  store i64 %var_2_228, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_262, i64* %RSI.i35, align 8
; Matched:%var_2_229:  %var_2_229 = icmp ult i64 %var_2_228, %var_2_220
; %var_2_263 = icmp ult i64 %var_2_262, %var_2_254
; Matched:%var_2_230:  %var_2_230 = icmp ult i64 %var_2_228, %var_2_226
; %var_2_264 = icmp ult i64 %var_2_262, %var_2_260
; Matched:%var_2_231:  %var_2_231 = or i1 %var_2_229, %var_2_230
; %var_2_265 = or i1 %var_2_263, %var_2_264
; Matched:%var_2_232:  %var_2_232 = zext i1 %var_2_231 to i8
; %var_2_266 = zext i1 %var_2_265 to i8
; Matched:\<badref\>:  store i8 %var_2_232, i8* %var_2_17, align 1, !tbaa !1265
; store i8 %var_2_266, i8* %var_2_14, align 1
; Matched:%var_2_233:  %var_2_233 = trunc i64 %var_2_228 to i32
; %var_2_267 = trunc i64 %var_2_262 to i32
; Matched:%var_2_234:  %var_2_234 = and i32 %var_2_233, 255
; %var_2_268 = and i32 %var_2_267, 255
; Matched:%var_2_235:  %var_2_235 = tail call i32 @llvm.ctpop.i32(i32 %var_2_234) #12
; %var_2_269 = tail call i32 @llvm.ctpop.i32(i32 %var_2_268)
; Matched:%var_2_236:  %var_2_236 = trunc i32 %var_2_235 to i8
; %var_2_270 = trunc i32 %var_2_269 to i8
; Matched:%var_2_237:  %var_2_237 = and i8 %var_2_236, 1
; %var_2_271 = and i8 %var_2_270, 1
; Matched:%var_2_238:  %var_2_238 = xor i8 %var_2_237, 1
; %var_2_272 = xor i8 %var_2_271, 1
; Matched:\<badref\>:  store i8 %var_2_238, i8* %var_2_24, align 1, !tbaa !1279
; store i8 %var_2_272, i8* %var_2_21, align 1
; Matched:%var_2_239:  %var_2_239 = xor i64 %var_2_226, %var_2_220
; %var_2_273 = xor i64 %var_2_260, %var_2_254
; Matched:%var_2_240:  %var_2_240 = xor i64 %var_2_239, %var_2_228
; %var_2_274 = xor i64 %var_2_273, %var_2_262
; Matched:%var_2_241:  %var_2_241 = lshr i64 %var_2_240, 4
; %var_2_275 = lshr i64 %var_2_274, 4
; Matched:%var_2_242:  %var_2_242 = trunc i64 %var_2_241 to i8
; %var_2_276 = trunc i64 %var_2_275 to i8
; Matched:%var_2_243:  %var_2_243 = and i8 %var_2_242, 1
; %var_2_277 = and i8 %var_2_276, 1
; Matched:\<badref\>:  store i8 %var_2_243, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_277, i8* %var_2_26, align 1
; Matched:%var_2_244:  %var_2_244 = icmp eq i64 %var_2_228, 0
; %var_2_278 = icmp eq i64 %var_2_262, 0
; Matched:%var_2_245:  %var_2_245 = zext i1 %var_2_244 to i8
; %var_2_279 = zext i1 %var_2_278 to i8
; Matched:\<badref\>:  store i8 %var_2_245, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_279, i8* %var_2_29, align 1
; Matched:%var_2_246:  %var_2_246 = lshr i64 %var_2_228, 63
; %var_2_280 = lshr i64 %var_2_262, 63
; Matched:%var_2_247:  %var_2_247 = trunc i64 %var_2_246 to i8
; %var_2_281 = trunc i64 %var_2_280 to i8
; Matched:\<badref\>:  store i8 %var_2_247, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_281, i8* %var_2_32, align 1
; Matched:%var_2_248:  %var_2_248 = lshr i64 %var_2_220, 63
; %var_2_282 = lshr i64 %var_2_254, 63
; Matched:%var_2_249:  %var_2_249 = xor i64 %var_2_246, %var_2_248
; %var_2_283 = xor i64 %var_2_280, %var_2_282
; Matched:%var_2_250:  %var_2_250 = xor i64 %var_2_246, %var_2_227
; %var_2_284 = xor i64 %var_2_280, %var_2_261
; Matched:%var_2_251:  %var_2_251 = add nuw nsw i64 %var_2_249, %var_2_250
; %var_2_285 = add nuw nsw i64 %var_2_283, %var_2_284
; Matched:%var_2_252:  %var_2_252 = icmp eq i64 %var_2_251, 2
; %var_2_286 = icmp eq i64 %var_2_285, 2
; Matched:%var_2_253:  %var_2_253 = zext i1 %var_2_252 to i8
; %var_2_287 = zext i1 %var_2_286 to i8
; Matched:\<badref\>:  store i8 %var_2_253, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_287, i8* %var_2_38, align 1
; Matched:%var_2_254:  %var_2_254 = add i64 %var_2_216, -20
; %var_2_288 = add i64 %var_2_250, -20
; Matched:%var_2_255:  %var_2_255 = add i64 %var_2_152, 41
; %var_2_289 = add i64 %var_2_186, 41
; Matched:\<badref\>:  store i64 %var_2_255, i64* %PC, align 8
; store i64 %var_2_289, i64* %var_2_3, align 8
; Matched:%var_2_256:  %var_2_256 = inttoptr i64 %var_2_254 to i32*
; %var_2_290 = inttoptr i64 %var_2_288 to i32*
; Matched:%var_2_257:  %var_2_257 = load i32, i32* %var_2_256, align 4
; %var_2_291 = load i32, i32* %var_2_290, align 4
; Matched:%var_2_258:  %var_2_258 = sext i32 %var_2_257 to i64
; %var_2_292 = sext i32 %var_2_291 to i64
; Matched:\<badref\>:  store i64 %var_2_258, i64* %RDI, align 8, !tbaa !1261
; store i64 %var_2_292, i64* %RDI.i84, align 8
; Matched:%var_2_259:  %var_2_259 = shl nsw i64 %var_2_258, 2
; %var_2_293 = shl nsw i64 %var_2_292, 2
; Matched:%var_2_260:  %var_2_260 = add i64 %var_2_259, %var_2_228
; %var_2_294 = add i64 %var_2_293, %var_2_262
; Matched:%var_2_261:  %var_2_261 = add i64 %var_2_152, 46
; %var_2_295 = add i64 %var_2_186, 46
; Matched:\<badref\>:  store i64 %var_2_261, i64* %PC, align 8
; store i64 %var_2_295, i64* %var_2_3, align 8
%var_2_296 = load <2 x float>, <2 x float>* %var_2_72, align 1
%var_2_297 = extractelement <2 x float> %var_2_296, i32 0
; Matched:%var_2_264:  %var_2_264 = inttoptr i64 %var_2_260 to float*
; %var_2_298 = inttoptr i64 %var_2_294 to float*
; Matched:\<badref\>:  store float %var_2_263, float* %var_2_264, align 4
; store float %var_2_297, float* %var_2_298, align 4
; Matched:%var_2_265:  %var_2_265 = load i64, i64* %RBP, align 8
; %var_2_299 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_266:  %var_2_266 = add i64 %var_2_265, -20
; %var_2_300 = add i64 %var_2_299, -20
; Matched:%var_2_267:  %var_2_267 = load i64, i64* %PC, align 8
; %var_2_301 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_121:  %var_2_121 = add i64 %var_2_120, 3
; %var_2_302 = add i64 %var_2_301, 3
; Matched:\<badref\>:  store i64 %var_2_121, i64* %PC, align 8
; store i64 %var_2_302, i64* %var_2_3, align 8
; Matched:%var_2_269:  %var_2_269 = inttoptr i64 %var_2_266 to i32*
; %var_2_303 = inttoptr i64 %var_2_300 to i32*
; Matched:%var_2_270:  %var_2_270 = load i32, i32* %var_2_269, align 4
; %var_2_304 = load i32, i32* %var_2_303, align 4
; Matched:%var_2_271:  %var_2_271 = add i32 %var_2_270, 1
; %var_2_305 = add i32 %var_2_304, 1
; Matched:%var_2_272:  %var_2_272 = zext i32 %var_2_271 to i64
; %var_2_306 = zext i32 %var_2_305 to i64
; Matched:\<badref\>:  store i64 %var_2_272, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_306, i64* %RAX.i64, align 8
; Matched:%var_2_273:  %var_2_273 = icmp eq i32 %var_2_270, -1
; %var_2_307 = icmp eq i32 %var_2_304, -1
; Matched:%var_2_274:  %var_2_274 = icmp eq i32 %var_2_271, 0
; %var_2_308 = icmp eq i32 %var_2_305, 0
; Matched:%var_2_275:  %var_2_275 = or i1 %var_2_273, %var_2_274
; %var_2_309 = or i1 %var_2_307, %var_2_308
; Matched:%var_2_276:  %var_2_276 = zext i1 %var_2_275 to i8
; %var_2_310 = zext i1 %var_2_309 to i8
; Matched:\<badref\>:  store i8 %var_2_276, i8* %var_2_17, align 1, !tbaa !1265
; store i8 %var_2_310, i8* %var_2_14, align 1
; Matched:%var_2_277:  %var_2_277 = and i32 %var_2_271, 255
; %var_2_311 = and i32 %var_2_305, 255
; Matched:%var_2_278:  %var_2_278 = tail call i32 @llvm.ctpop.i32(i32 %var_2_277) #12
; %var_2_312 = tail call i32 @llvm.ctpop.i32(i32 %var_2_311)
; Matched:%var_2_279:  %var_2_279 = trunc i32 %var_2_278 to i8
; %var_2_313 = trunc i32 %var_2_312 to i8
; Matched:%var_2_280:  %var_2_280 = and i8 %var_2_279, 1
; %var_2_314 = and i8 %var_2_313, 1
; Matched:%var_2_281:  %var_2_281 = xor i8 %var_2_280, 1
; %var_2_315 = xor i8 %var_2_314, 1
; Matched:\<badref\>:  store i8 %var_2_281, i8* %var_2_24, align 1, !tbaa !1279
; store i8 %var_2_315, i8* %var_2_21, align 1
; Matched:%var_2_282:  %var_2_282 = xor i32 %var_2_271, %var_2_270
; %var_2_316 = xor i32 %var_2_305, %var_2_304
; Matched:%var_2_283:  %var_2_283 = lshr i32 %var_2_282, 4
; %var_2_317 = lshr i32 %var_2_316, 4
; Matched:%var_2_284:  %var_2_284 = trunc i32 %var_2_283 to i8
; %var_2_318 = trunc i32 %var_2_317 to i8
; Matched:%var_2_285:  %var_2_285 = and i8 %var_2_284, 1
; %var_2_319 = and i8 %var_2_318, 1
; Matched:\<badref\>:  store i8 %var_2_285, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_319, i8* %var_2_26, align 1
; Matched:%var_2_286:  %var_2_286 = zext i1 %var_2_274 to i8
; %var_2_320 = zext i1 %var_2_308 to i8
; Matched:\<badref\>:  store i8 %var_2_286, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_320, i8* %var_2_29, align 1
; Matched:%var_2_287:  %var_2_287 = lshr i32 %var_2_271, 31
; %var_2_321 = lshr i32 %var_2_305, 31
; Matched:%var_2_288:  %var_2_288 = trunc i32 %var_2_287 to i8
; %var_2_322 = trunc i32 %var_2_321 to i8
; Matched:\<badref\>:  store i8 %var_2_288, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_322, i8* %var_2_32, align 1
; Matched:%var_2_289:  %var_2_289 = lshr i32 %var_2_270, 31
; %var_2_323 = lshr i32 %var_2_304, 31
; Matched:%var_2_290:  %var_2_290 = xor i32 %var_2_287, %var_2_289
; %var_2_324 = xor i32 %var_2_321, %var_2_323
; Matched:%var_2_291:  %var_2_291 = add nuw nsw i32 %var_2_290, %var_2_287
; %var_2_325 = add nuw nsw i32 %var_2_324, %var_2_321
; Matched:%var_2_292:  %var_2_292 = icmp eq i32 %var_2_291, 2
; %var_2_326 = icmp eq i32 %var_2_325, 2
; Matched:%var_2_293:  %var_2_293 = zext i1 %var_2_292 to i8
; %var_2_327 = zext i1 %var_2_326 to i8
; Matched:\<badref\>:  store i8 %var_2_293, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_327, i8* %var_2_38, align 1
; Matched:%var_2_294:  %var_2_294 = add i64 %var_2_267, 9
; %var_2_328 = add i64 %var_2_301, 9
; Matched:\<badref\>:  store i64 %var_2_129, i64* %PC, align 8
; store i64 %var_2_328, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_271, i32* %var_2_269, align 4
; store i32 %var_2_305, i32* %var_2_303, align 4
; Matched:%var_2_295:  %var_2_295 = load i64, i64* %PC, align 8
; %var_2_329 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_296:  %var_2_296 = add i64 %var_2_295, -100
; %var_2_330 = add i64 %var_2_329, -100
; Matched:\<badref\>:  store i64 %var_2_296, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_330, i64* %var_2_3, align 8
  br label %block_.L_4005a4

block_.L_40060d:                                  ; preds = %block_.L_4005a4
; Matched:%var_2_297:  %var_2_297 = add i64 %var_2_328, -16
; %var_2_331 = add i64 %var_2_108, -16
; Matched:%var_2_298:  %var_2_298 = add i64 %var_2_356, 8
; %var_2_332 = add i64 %var_2_136, 8
; Matched:\<badref\>:  store i64 %var_2_298, i64* %PC, align 8
; store i64 %var_2_332, i64* %var_2_3, align 8
; Matched:%var_2_299:  %var_2_299 = inttoptr i64 %var_2_297 to i32*
; %var_2_333 = inttoptr i64 %var_2_331 to i32*
; Matched:%var_2_300:  %var_2_300 = load i32, i32* %var_2_299, align 4
; %var_2_334 = load i32, i32* %var_2_333, align 4
; Matched:%var_2_301:  %var_2_301 = add i32 %var_2_300, 1
; %var_2_335 = add i32 %var_2_334, 1
; Matched:%var_2_302:  %var_2_302 = zext i32 %var_2_301 to i64
; %var_2_336 = zext i32 %var_2_335 to i64
; Matched:\<badref\>:  store i64 %var_2_302, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_336, i64* %RAX.i64, align 8
; Matched:%var_2_303:  %var_2_303 = icmp eq i32 %var_2_300, -1
; %var_2_337 = icmp eq i32 %var_2_334, -1
; Matched:%var_2_304:  %var_2_304 = icmp eq i32 %var_2_301, 0
; %var_2_338 = icmp eq i32 %var_2_335, 0
; Matched:%var_2_305:  %var_2_305 = or i1 %var_2_303, %var_2_304
; %var_2_339 = or i1 %var_2_337, %var_2_338
; Matched:%var_2_306:  %var_2_306 = zext i1 %var_2_305 to i8
; %var_2_340 = zext i1 %var_2_339 to i8
; Matched:\<badref\>:  store i8 %var_2_306, i8* %var_2_17, align 1, !tbaa !1265
; store i8 %var_2_340, i8* %var_2_14, align 1
; Matched:%var_2_307:  %var_2_307 = and i32 %var_2_301, 255
; %var_2_341 = and i32 %var_2_335, 255
; Matched:%var_2_308:  %var_2_308 = tail call i32 @llvm.ctpop.i32(i32 %var_2_307) #12
; %var_2_342 = tail call i32 @llvm.ctpop.i32(i32 %var_2_341)
; Matched:%var_2_309:  %var_2_309 = trunc i32 %var_2_308 to i8
; %var_2_343 = trunc i32 %var_2_342 to i8
; Matched:%var_2_310:  %var_2_310 = and i8 %var_2_309, 1
; %var_2_344 = and i8 %var_2_343, 1
; Matched:%var_2_311:  %var_2_311 = xor i8 %var_2_310, 1
; %var_2_345 = xor i8 %var_2_344, 1
; Matched:\<badref\>:  store i8 %var_2_311, i8* %var_2_24, align 1, !tbaa !1279
; store i8 %var_2_345, i8* %var_2_21, align 1
; Matched:%var_2_312:  %var_2_312 = xor i32 %var_2_301, %var_2_300
; %var_2_346 = xor i32 %var_2_335, %var_2_334
; Matched:%var_2_313:  %var_2_313 = lshr i32 %var_2_312, 4
; %var_2_347 = lshr i32 %var_2_346, 4
; Matched:%var_2_314:  %var_2_314 = trunc i32 %var_2_313 to i8
; %var_2_348 = trunc i32 %var_2_347 to i8
; Matched:%var_2_315:  %var_2_315 = and i8 %var_2_314, 1
; %var_2_349 = and i8 %var_2_348, 1
; Matched:\<badref\>:  store i8 %var_2_315, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_349, i8* %var_2_26, align 1
; Matched:%var_2_316:  %var_2_316 = zext i1 %var_2_304 to i8
; %var_2_350 = zext i1 %var_2_338 to i8
; Matched:\<badref\>:  store i8 %var_2_316, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_350, i8* %var_2_29, align 1
; Matched:%var_2_317:  %var_2_317 = lshr i32 %var_2_301, 31
; %var_2_351 = lshr i32 %var_2_335, 31
; Matched:%var_2_318:  %var_2_318 = trunc i32 %var_2_317 to i8
; %var_2_352 = trunc i32 %var_2_351 to i8
; Matched:\<badref\>:  store i8 %var_2_318, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_352, i8* %var_2_32, align 1
; Matched:%var_2_319:  %var_2_319 = lshr i32 %var_2_300, 31
; %var_2_353 = lshr i32 %var_2_334, 31
; Matched:%var_2_320:  %var_2_320 = xor i32 %var_2_317, %var_2_319
; %var_2_354 = xor i32 %var_2_351, %var_2_353
; Matched:%var_2_321:  %var_2_321 = add nuw nsw i32 %var_2_320, %var_2_317
; %var_2_355 = add nuw nsw i32 %var_2_354, %var_2_351
; Matched:%var_2_322:  %var_2_322 = icmp eq i32 %var_2_321, 2
; %var_2_356 = icmp eq i32 %var_2_355, 2
; Matched:%var_2_323:  %var_2_323 = zext i1 %var_2_322 to i8
; %var_2_357 = zext i1 %var_2_356 to i8
; Matched:\<badref\>:  store i8 %var_2_323, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_357, i8* %var_2_38, align 1
; Matched:%var_2_324:  %var_2_324 = add i64 %var_2_356, 14
; %var_2_358 = add i64 %var_2_136, 14
; Matched:\<badref\>:  store i64 %var_2_324, i64* %PC, align 8
; store i64 %var_2_358, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_301, i32* %var_2_299, align 4
; store i32 %var_2_335, i32* %var_2_333, align 4
; Matched:%var_2_325:  %var_2_325 = load i64, i64* %PC, align 8
; %var_2_359 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_326:  %var_2_326 = add i64 %var_2_325, -136
; %var_2_360 = add i64 %var_2_359, -136
; Matched:\<badref\>:  store i64 %var_2_326, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_360, i64* %var_2_3, align 8
  br label %block_.L_400593

block_.L_400620:                                  ; preds = %block_.L_400593
; Matched:%var_2_357:  %var_2_357 = load i64, i64* %RSP, align 8
; %var_2_361 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_358:  %var_2_358 = add i64 %var_2_357, 32
; %var_2_362 = add i64 %var_2_361, 32
; Matched:\<badref\>:  store i64 %var_2_358, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_362, i64* %var_2_6, align 8
; Matched:%var_2_359:  %var_2_359 = icmp ugt i64 %var_2_357, -33
; %var_2_363 = icmp ugt i64 %var_2_361, -33
; Matched:%var_2_360:  %var_2_360 = zext i1 %var_2_359 to i8
; %var_2_364 = zext i1 %var_2_363 to i8
; Matched:\<badref\>:  store i8 %var_2_360, i8* %var_2_17, align 1, !tbaa !1265
; store i8 %var_2_364, i8* %var_2_14, align 1
; Matched:%var_2_361:  %var_2_361 = trunc i64 %var_2_358 to i32
; %var_2_365 = trunc i64 %var_2_362 to i32
; Matched:%var_2_362:  %var_2_362 = and i32 %var_2_361, 255
; %var_2_366 = and i32 %var_2_365, 255
; Matched:%var_2_363:  %var_2_363 = tail call i32 @llvm.ctpop.i32(i32 %var_2_362) #12
; %var_2_367 = tail call i32 @llvm.ctpop.i32(i32 %var_2_366)
; Matched:%var_2_364:  %var_2_364 = trunc i32 %var_2_363 to i8
; %var_2_368 = trunc i32 %var_2_367 to i8
; Matched:%var_2_365:  %var_2_365 = and i8 %var_2_364, 1
; %var_2_369 = and i8 %var_2_368, 1
; Matched:%var_2_366:  %var_2_366 = xor i8 %var_2_365, 1
; %var_2_370 = xor i8 %var_2_369, 1
; Matched:\<badref\>:  store i8 %var_2_366, i8* %var_2_24, align 1, !tbaa !1279
; store i8 %var_2_370, i8* %var_2_21, align 1
; Matched:%var_2_367:  %var_2_367 = xor i64 %var_2_358, %var_2_357
; %var_2_371 = xor i64 %var_2_362, %var_2_361
; Matched:%var_2_368:  %var_2_368 = lshr i64 %var_2_367, 4
; %var_2_372 = lshr i64 %var_2_371, 4
; Matched:%var_2_369:  %var_2_369 = trunc i64 %var_2_368 to i8
; %var_2_373 = trunc i64 %var_2_372 to i8
; Matched:%var_2_370:  %var_2_370 = and i8 %var_2_369, 1
; %var_2_374 = and i8 %var_2_373, 1
; Matched:\<badref\>:  store i8 %var_2_370, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_374, i8* %var_2_26, align 1
; Matched:%var_2_371:  %var_2_371 = icmp eq i64 %var_2_358, 0
; %var_2_375 = icmp eq i64 %var_2_362, 0
; Matched:%var_2_372:  %var_2_372 = zext i1 %var_2_371 to i8
; %var_2_376 = zext i1 %var_2_375 to i8
; Matched:\<badref\>:  store i8 %var_2_372, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_376, i8* %var_2_29, align 1
; Matched:%var_2_373:  %var_2_373 = lshr i64 %var_2_358, 63
; %var_2_377 = lshr i64 %var_2_362, 63
; Matched:%var_2_374:  %var_2_374 = trunc i64 %var_2_373 to i8
; %var_2_378 = trunc i64 %var_2_377 to i8
; Matched:\<badref\>:  store i8 %var_2_374, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_378, i8* %var_2_32, align 1
; Matched:%var_2_375:  %var_2_375 = lshr i64 %var_2_357, 63
; %var_2_379 = lshr i64 %var_2_361, 63
; Matched:%var_2_376:  %var_2_376 = xor i64 %var_2_373, %var_2_375
; %var_2_380 = xor i64 %var_2_377, %var_2_379
; Matched:%var_2_377:  %var_2_377 = add nuw nsw i64 %var_2_376, %var_2_373
; %var_2_381 = add nuw nsw i64 %var_2_380, %var_2_377
; Matched:%var_2_378:  %var_2_378 = icmp eq i64 %var_2_377, 2
; %var_2_382 = icmp eq i64 %var_2_381, 2
; Matched:%var_2_379:  %var_2_379 = zext i1 %var_2_378 to i8
; %var_2_383 = zext i1 %var_2_382 to i8
; Matched:\<badref\>:  store i8 %var_2_379, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_383, i8* %var_2_38, align 1
; Matched:%var_2_380:  %var_2_380 = add i64 %var_2_104, 5
; %var_2_384 = add i64 %var_2_103, 5
; Matched:\<badref\>:  store i64 %var_2_380, i64* %PC, align 8
; store i64 %var_2_384, i64* %var_2_3, align 8
; Matched:%var_2_381:  %var_2_381 = add i64 %var_2_357, 40
; %var_2_385 = add i64 %var_2_361, 40
; Matched:%var_2_382:  %var_2_382 = inttoptr i64 %var_2_358 to i64*
; %var_2_386 = inttoptr i64 %var_2_362 to i64*
; Matched:%var_2_383:  %var_2_383 = load i64, i64* %var_2_382, align 8
; %var_2_387 = load i64, i64* %var_2_386, align 8
; Matched:\<badref\>:  store i64 %var_2_383, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_387, i64* %RBP.i, align 8
; Matched:\<badref\>:  store i64 %var_2_381, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_385, i64* %var_2_6, align 8
; Matched:%var_2_384:  %var_2_384 = add i64 %var_2_104, 6
; %var_2_388 = add i64 %var_2_103, 6
; Matched:\<badref\>:  store i64 %var_2_384, i64* %PC, align 8
; store i64 %var_2_388, i64* %var_2_3, align 8
; Matched:%var_2_385:  %var_2_385 = inttoptr i64 %var_2_381 to i64*
; %var_2_389 = inttoptr i64 %var_2_385 to i64*
; Matched:%var_2_386:  %var_2_386 = load i64, i64* %var_2_385, align 8
; %var_2_390 = load i64, i64* %var_2_389, align 8
; Matched:\<badref\>:  store i64 %var_2_386, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_390, i64* %var_2_3, align 8
; Matched:%var_2_387:  %var_2_387 = add i64 %var_2_357, 48
; %var_2_391 = add i64 %var_2_361, 48
; Matched:\<badref\>:  store i64 %var_2_387, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_391, i64* %var_2_6, align 8
  ret %struct.Memory* %MEMORY.0
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
define %struct.Memory* @routine_movl__0x1__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x28__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -40
  %10 = icmp ult i32 %8, 40
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
define %struct.Memory* @routine_jg_.L_400620(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x28__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -40
  %10 = icmp ult i32 %8, 40
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
define %struct.Memory* @routine_jg_.L_40060d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.Rand(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0x2e9__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x2e9__rip__type* @G_0x2e9__rip_ to i64)
  %7 = add i64 %5, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x78___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 120, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__edx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
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

define %struct.Memory* @routine_idivl__ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__0x78___eax___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  %8 = mul nsw i64 %7, 120
  %9 = trunc i64 %8 to i32
  %10 = and i64 %8, 4294967288
  store i64 %10, i64* %RAX, align 8
  %11 = mul i64 %7, 515396075520
  %12 = ashr exact i64 %11, 32
  %13 = icmp ne i64 %12, %8
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %9, 248
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %23, align 1
  %24 = lshr i32 %9, 31
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x3c___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -60
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ult i32 %6, 60
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
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssl__ecx___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast %union.VectorReg* %4 to i8*
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = sitofp i32 %6 to float
  %15 = bitcast %union.VectorReg* %4 to float*
  store float %14, float* %15, align 1
  %16 = extractelement <2 x i32> %10, i32 1
  %17 = getelementptr inbounds i8, i8* %5, i64 4
  %18 = bitcast i8* %17 to i32*
  store i32 %16, i32* %18, align 1
  %19 = extractelement <2 x i32> %13, i32 0
  %20 = bitcast i64* %11 to i32*
  store i32 %19, i32* %20, align 1
  %21 = extractelement <2 x i32> %13, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divss__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 1
  %15 = extractelement <2 x float> %9, i32 0
  %16 = extractelement <2 x float> %14, i32 0
  %17 = fdiv float %15, %16
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %9 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %5, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %12, i32 0
  %24 = bitcast i64* %10 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %12, i32 1
  %26 = getelementptr inbounds i8, i8* %5, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0xa4___rdi___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 164
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDI, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 252
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
define %struct.Memory* @routine_addq__rdi___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RSI, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm1____rsi__rdi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %RDI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to <2 x float>*
  %11 = load <2 x float>, <2 x float>* %10, align 1
  %12 = extractelement <2 x float> %11, i32 0
  %13 = inttoptr i64 %7 to float*
  store float %12, float* %13, align 4
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
define %struct.Memory* @routine_jmpq_.L_4005a4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400612(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400593(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
