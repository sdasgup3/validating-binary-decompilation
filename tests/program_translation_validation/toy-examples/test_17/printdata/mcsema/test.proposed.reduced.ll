; ModuleID = '/tmp/tmpv8ku_jag-query.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x601040___rax_8__type = type <{ [8 x i8] }>
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
@G_0x601040___rax_8_ = global %G_0x601040___rax_8__type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @printdata(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
entry:
%var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
; Matched:%var_2_3:  %var_2_3 = load i64, i64* %RBP, align 8
; %var_2_4 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_4:  %var_2_4 = add i64 %1, 1
; %var_2_5 = add i64 %1, 1
; Matched:\<badref\>:  store i64 %var_2_4, i64* %PC, align 8
; store i64 %var_2_5, i64* %var_2_3, align 8
%var_2_6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
%var_2_7 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_7:  %var_2_7 = add i64 %var_2_6, -8
; %var_2_8 = add i64 %var_2_7, -8
; Matched:%var_2_8:  %var_2_8 = inttoptr i64 %var_2_7 to i64*
; %var_2_9 = inttoptr i64 %var_2_8 to i64*
; Matched:\<badref\>:  store i64 %var_2_3, i64* %var_2_8, align 8
; store i64 %var_2_4, i64* %var_2_9, align 8
; Matched:\<badref\>:  store i64 %var_2_7, i64* %var_2_5, align 8, !tbaa !1261
; store i64 %var_2_8, i64* %var_2_6, align 8
; Matched:%var_2_9:  %var_2_9 = load i64, i64* %PC, align 8
; %var_2_10 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_7, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_8, i64* %RBP.i, align 8
%var_2_11 = add i64 %var_2_7, -16
; Matched:%var_2_11:  %var_2_11 = add i64 %var_2_9, 10
; %var_2_12 = add i64 %var_2_10, 10
; Matched:\<badref\>:  store i64 %var_2_11, i64* %PC, align 8
; store i64 %var_2_12, i64* %var_2_3, align 8
%var_2_13 = inttoptr i64 %var_2_11 to i32*
store i32 0, i32* %var_2_13, align 4
%var_2_14 = load i64, i64* %RBP.i, align 8
%var_2_15 = add i64 %var_2_14, -4
; Matched:%var_2_15:  %var_2_15 = load i64, i64* %PC, align 8
; %var_2_16 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_16:  %var_2_16 = add i64 %var_2_15, 7
; %var_2_17 = add i64 %var_2_16, 7
; Matched:\<badref\>:  store i64 %var_2_16, i64* %PC, align 8
; store i64 %var_2_17, i64* %var_2_3, align 8
%var_2_18 = inttoptr i64 %var_2_15 to i32*
store i32 0, i32* %var_2_18, align 4
  %RAX.i37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
%var_2_19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
%var_2_20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
%var_2_21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
%var_2_22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
%var_2_23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
%var_2_24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; Matched:  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
; %RCX.i21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
%.pre = load i64, i64* %var_2_3, align 8
  br label %block_.L_4004f2

block_.L_4004f2:                                  ; preds = %block_.L_400527, %entry
%var_2_25 = phi i64 [ %var_2_149, %block_.L_400527 ], [ %.pre, %entry ]
%var_2_26 = load i64, i64* %RBP.i, align 8
%var_2_27 = add i64 %var_2_26, -4
; Matched:%var_2_85:  %var_2_85 = add i64 %var_2_82, 4
; %var_2_28 = add i64 %var_2_25, 4
store i64 %var_2_28, i64* %var_2_3, align 8
%var_2_29 = inttoptr i64 %var_2_27 to i32*
%var_2_30 = load i32, i32* %var_2_29, align 4
%var_2_31 = sext i32 %var_2_30 to i64
store i64 %var_2_31, i64* %RAX.i37, align 8
%var_2_32 = add nsw i64 %var_2_31, -10
%var_2_33 = icmp ult i32 %var_2_30, 10
%var_2_34 = zext i1 %var_2_33 to i8
store i8 %var_2_34, i8* %var_2_19, align 1
%var_2_35 = trunc i64 %var_2_32 to i32
%var_2_36 = and i32 %var_2_35, 255
%var_2_37 = tail call i32 @llvm.ctpop.i32(i32 %var_2_36)
%var_2_38 = trunc i32 %var_2_37 to i8
%var_2_39 = and i8 %var_2_38, 1
%var_2_40 = xor i8 %var_2_39, 1
store i8 %var_2_40, i8* %var_2_20, align 1
%var_2_41 = xor i64 %var_2_32, %var_2_31
%var_2_42 = lshr i64 %var_2_41, 4
%var_2_43 = trunc i64 %var_2_42 to i8
%var_2_44 = and i8 %var_2_43, 1
store i8 %var_2_44, i8* %var_2_21, align 1
%var_2_45 = icmp eq i64 %var_2_32, 0
%var_2_46 = zext i1 %var_2_45 to i8
store i8 %var_2_46, i8* %var_2_22, align 1
%var_2_47 = lshr i64 %var_2_32, 63
%var_2_48 = trunc i64 %var_2_47 to i8
store i8 %var_2_48, i8* %var_2_23, align 1
%var_2_49 = lshr i64 %var_2_31, 63
%var_2_50 = xor i64 %var_2_47, %var_2_49
%var_2_51 = add nuw nsw i64 %var_2_50, %var_2_49
%var_2_52 = icmp eq i64 %var_2_51, 2
%var_2_53 = zext i1 %var_2_52 to i8
store i8 %var_2_53, i8* %var_2_24, align 1
%.v = select i1 %var_2_33, i64 14, i64 72
%var_2_54 = add i64 %var_2_25, %.v
store i64 %var_2_54, i64* %var_2_3, align 8
br i1 %var_2_33, label %block_400500, label %block_.L_40053a

block_400500:                                     ; preds = %block_.L_4004f2
%var_2_55 = add i64 %var_2_54, 4
store i64 %var_2_55, i64* %var_2_3, align 8
%var_2_56 = load i32, i32* %var_2_29, align 4
%var_2_57 = sext i32 %var_2_56 to i64
store i64 %var_2_57, i64* %RAX.i37, align 8
%var_2_58 = shl nsw i64 %var_2_57, 3
%var_2_59 = add i64 %var_2_58, ptrtoint (%G_0x601040___rax_8__type* @G_0x601040___rax_8_ to i64)
%var_2_60 = add i64 %var_2_54, 13
store i64 %var_2_60, i64* %var_2_3, align 8
%var_2_61 = inttoptr i64 %var_2_59 to i64*
%var_2_62 = load i64, i64* %var_2_61, align 8
store i8 0, i8* %var_2_19, align 1
%var_2_63 = trunc i64 %var_2_62 to i32
%var_2_64 = and i32 %var_2_63, 255
%var_2_65 = tail call i32 @llvm.ctpop.i32(i32 %var_2_64)
%var_2_66 = trunc i32 %var_2_65 to i8
%var_2_67 = and i8 %var_2_66, 1
%var_2_68 = xor i8 %var_2_67, 1
store i8 %var_2_68, i8* %var_2_20, align 1
store i8 0, i8* %var_2_21, align 1
%var_2_69 = icmp eq i64 %var_2_62, 0
%var_2_70 = zext i1 %var_2_69 to i8
store i8 %var_2_70, i8* %var_2_22, align 1
%var_2_71 = lshr i64 %var_2_62, 63
%var_2_72 = trunc i64 %var_2_71 to i8
store i8 %var_2_72, i8* %var_2_23, align 1
store i8 0, i8* %var_2_24, align 1
%.v6 = select i1 %var_2_69, i64 39, i64 19
%var_2_73 = add i64 %var_2_54, %.v6
store i64 %var_2_73, i64* %var_2_3, align 8
br i1 %var_2_69, label %block_.L_400527, label %block_400513

block_400513:                                     ; preds = %block_400500
%var_2_74 = add i64 %var_2_73, 4
; Matched:\<badref\>:  store i64 %var_2_38, i64* %PC, align 8
; store i64 %var_2_74, i64* %var_2_3, align 8
%var_2_75 = load i32, i32* %var_2_29, align 4
%var_2_76 = sext i32 %var_2_75 to i64
; Matched:\<badref\>:  store i64 %var_2_40, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_76, i64* %RAX.i37, align 8
%var_2_77 = shl nsw i64 %var_2_76, 3
%var_2_78 = add i64 %var_2_77, ptrtoint (%G_0x601040___rax_8__type* @G_0x601040___rax_8_ to i64)
%var_2_79 = add i64 %var_2_73, 12
; Matched:\<badref\>:  store i64 %var_2_43, i64* %PC, align 8
; store i64 %var_2_79, i64* %var_2_3, align 8
%var_2_80 = inttoptr i64 %var_2_78 to i64*
%var_2_81 = load i64, i64* %var_2_80, align 8
; Matched:\<badref\>:  store i64 %var_2_45, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_81, i64* %RAX.i37, align 8
%var_2_82 = add i64 %var_2_73, 14
; Matched:\<badref\>:  store i64 %var_2_46, i64* %PC, align 8
; store i64 %var_2_82, i64* %var_2_3, align 8
%var_2_83 = inttoptr i64 %var_2_81 to i32*
%var_2_84 = load i32, i32* %var_2_83, align 4
; Matched:%var_2_49:  %var_2_49 = zext i32 %var_2_48 to i64
; %var_2_85 = zext i32 %var_2_84 to i64
; Matched:\<badref\>:  store i64 %var_2_49, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_85, i64* %RCX.i21, align 8
%var_2_86 = add i64 %var_2_26, -8
%var_2_87 = add i64 %var_2_73, 17
; Matched:\<badref\>:  store i64 %var_2_51, i64* %PC, align 8
; store i64 %var_2_87, i64* %var_2_3, align 8
%var_2_88 = inttoptr i64 %var_2_86 to i32*
%var_2_89 = load i32, i32* %var_2_88, align 4
%var_2_90 = add i32 %var_2_89, %var_2_84
; Matched:%var_2_55:  %var_2_55 = zext i32 %var_2_54 to i64
; %var_2_91 = zext i32 %var_2_90 to i64
; Matched:\<badref\>:  store i64 %var_2_55, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_91, i64* %RCX.i21, align 8
; Matched:%var_2_56:  %var_2_56 = icmp ult i32 %var_2_54, %var_2_48
; %var_2_92 = icmp ult i32 %var_2_90, %var_2_84
; Matched:%var_2_57:  %var_2_57 = icmp ult i32 %var_2_54, %var_2_53
; %var_2_93 = icmp ult i32 %var_2_90, %var_2_89
; Matched:%var_2_58:  %var_2_58 = or i1 %var_2_56, %var_2_57
; %var_2_94 = or i1 %var_2_92, %var_2_93
; Matched:%var_2_59:  %var_2_59 = zext i1 %var_2_58 to i8
; %var_2_95 = zext i1 %var_2_94 to i8
; Matched:\<badref\>:  store i8 %var_2_59, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_95, i8* %var_2_19, align 1
; Matched:%var_2_60:  %var_2_60 = and i32 %var_2_54, 255
; %var_2_96 = and i32 %var_2_90, 255
; Matched:%var_2_61:  %var_2_61 = tail call i32 @llvm.ctpop.i32(i32 %var_2_60) #12
; %var_2_97 = tail call i32 @llvm.ctpop.i32(i32 %var_2_96)
; Matched:%var_2_62:  %var_2_62 = trunc i32 %var_2_61 to i8
; %var_2_98 = trunc i32 %var_2_97 to i8
; Matched:%var_2_63:  %var_2_63 = and i8 %var_2_62, 1
; %var_2_99 = and i8 %var_2_98, 1
; Matched:%var_2_64:  %var_2_64 = xor i8 %var_2_63, 1
; %var_2_100 = xor i8 %var_2_99, 1
; Matched:\<badref\>:  store i8 %var_2_64, i8* %var_2_19, align 1, !tbaa !1279
; store i8 %var_2_100, i8* %var_2_20, align 1
; Matched:%var_2_65:  %var_2_65 = xor i32 %var_2_53, %var_2_48
; %var_2_101 = xor i32 %var_2_89, %var_2_84
; Matched:%var_2_66:  %var_2_66 = xor i32 %var_2_65, %var_2_54
; %var_2_102 = xor i32 %var_2_101, %var_2_90
; Matched:%var_2_67:  %var_2_67 = lshr i32 %var_2_66, 4
; %var_2_103 = lshr i32 %var_2_102, 4
; Matched:%var_2_68:  %var_2_68 = trunc i32 %var_2_67 to i8
; %var_2_104 = trunc i32 %var_2_103 to i8
; Matched:%var_2_69:  %var_2_69 = and i8 %var_2_68, 1
; %var_2_105 = and i8 %var_2_104, 1
; Matched:\<badref\>:  store i8 %var_2_69, i8* %var_2_20, align 1, !tbaa !1280
; store i8 %var_2_105, i8* %var_2_21, align 1
; Matched:%var_2_70:  %var_2_70 = icmp eq i32 %var_2_54, 0
; %var_2_106 = icmp eq i32 %var_2_90, 0
; Matched:%var_2_71:  %var_2_71 = zext i1 %var_2_70 to i8
; %var_2_107 = zext i1 %var_2_106 to i8
; Matched:\<badref\>:  store i8 %var_2_71, i8* %var_2_21, align 1, !tbaa !1281
; store i8 %var_2_107, i8* %var_2_22, align 1
; Matched:%var_2_72:  %var_2_72 = lshr i32 %var_2_54, 31
; %var_2_108 = lshr i32 %var_2_90, 31
; Matched:%var_2_73:  %var_2_73 = trunc i32 %var_2_72 to i8
; %var_2_109 = trunc i32 %var_2_108 to i8
; Matched:\<badref\>:  store i8 %var_2_73, i8* %var_2_22, align 1, !tbaa !1282
; store i8 %var_2_109, i8* %var_2_23, align 1
; Matched:%var_2_74:  %var_2_74 = lshr i32 %var_2_48, 31
; %var_2_110 = lshr i32 %var_2_84, 31
; Matched:%var_2_75:  %var_2_75 = lshr i32 %var_2_53, 31
; %var_2_111 = lshr i32 %var_2_89, 31
; Matched:%var_2_76:  %var_2_76 = xor i32 %var_2_72, %var_2_74
; %var_2_112 = xor i32 %var_2_108, %var_2_110
; Matched:%var_2_77:  %var_2_77 = xor i32 %var_2_72, %var_2_75
; %var_2_113 = xor i32 %var_2_108, %var_2_111
; Matched:%var_2_78:  %var_2_78 = add nuw nsw i32 %var_2_76, %var_2_77
; %var_2_114 = add nuw nsw i32 %var_2_112, %var_2_113
; Matched:%var_2_79:  %var_2_79 = icmp eq i32 %var_2_78, 2
; %var_2_115 = icmp eq i32 %var_2_114, 2
; Matched:%var_2_80:  %var_2_80 = zext i1 %var_2_79 to i8
; %var_2_116 = zext i1 %var_2_115 to i8
; Matched:\<badref\>:  store i8 %var_2_80, i8* %var_2_23, align 1, !tbaa !1283
; store i8 %var_2_116, i8* %var_2_24, align 1
%var_2_117 = add i64 %var_2_73, 20
; Matched:\<badref\>:  store i64 %var_2_81, i64* %PC, align 8
; store i64 %var_2_117, i64* %var_2_3, align 8
store i32 %var_2_90, i32* %var_2_88, align 4
%.pre4 = load i64, i64* %var_2_3, align 8
  %.pre5 = load i64, i64* %RBP.i, align 8
  br label %block_.L_400527

block_.L_400527:                                  ; preds = %block_400513, %block_400500
%var_2_118 = phi i64 [ %.pre5, %block_400513 ], [ %var_2_26, %block_400500 ]
%var_2_119 = phi i64 [ %.pre4, %block_400513 ], [ %var_2_73, %block_400500 ]
%var_2_120 = add i64 %var_2_118, -4
%var_2_121 = add i64 %var_2_119, 8
; Matched:\<badref\>:  store i64 %var_2_115, i64* %PC, align 8
; store i64 %var_2_121, i64* %var_2_3, align 8
%var_2_122 = inttoptr i64 %var_2_120 to i32*
%var_2_123 = load i32, i32* %var_2_122, align 4
%var_2_124 = add i32 %var_2_123, 1
; Matched:%var_2_119:  %var_2_119 = zext i32 %var_2_118 to i64
; %var_2_125 = zext i32 %var_2_124 to i64
; Matched:\<badref\>:  store i64 %var_2_119, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_125, i64* %RAX.i37, align 8
; Matched:%var_2_120:  %var_2_120 = icmp eq i32 %var_2_117, -1
; %var_2_126 = icmp eq i32 %var_2_123, -1
; Matched:%var_2_121:  %var_2_121 = icmp eq i32 %var_2_118, 0
; %var_2_127 = icmp eq i32 %var_2_124, 0
; Matched:%var_2_122:  %var_2_122 = or i1 %var_2_120, %var_2_121
; %var_2_128 = or i1 %var_2_126, %var_2_127
; Matched:%var_2_123:  %var_2_123 = zext i1 %var_2_122 to i8
; %var_2_129 = zext i1 %var_2_128 to i8
; Matched:\<badref\>:  store i8 %var_2_123, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_129, i8* %var_2_19, align 1
; Matched:%var_2_124:  %var_2_124 = and i32 %var_2_118, 255
; %var_2_130 = and i32 %var_2_124, 255
; Matched:%var_2_125:  %var_2_125 = tail call i32 @llvm.ctpop.i32(i32 %var_2_124) #12
; %var_2_131 = tail call i32 @llvm.ctpop.i32(i32 %var_2_130)
; Matched:%var_2_126:  %var_2_126 = trunc i32 %var_2_125 to i8
; %var_2_132 = trunc i32 %var_2_131 to i8
; Matched:%var_2_127:  %var_2_127 = and i8 %var_2_126, 1
; %var_2_133 = and i8 %var_2_132, 1
; Matched:%var_2_128:  %var_2_128 = xor i8 %var_2_127, 1
; %var_2_134 = xor i8 %var_2_133, 1
; Matched:\<badref\>:  store i8 %var_2_128, i8* %var_2_19, align 1, !tbaa !1279
; store i8 %var_2_134, i8* %var_2_20, align 1
; Matched:%var_2_129:  %var_2_129 = xor i32 %var_2_118, %var_2_117
; %var_2_135 = xor i32 %var_2_124, %var_2_123
; Matched:%var_2_130:  %var_2_130 = lshr i32 %var_2_129, 4
; %var_2_136 = lshr i32 %var_2_135, 4
; Matched:%var_2_131:  %var_2_131 = trunc i32 %var_2_130 to i8
; %var_2_137 = trunc i32 %var_2_136 to i8
; Matched:%var_2_132:  %var_2_132 = and i8 %var_2_131, 1
; %var_2_138 = and i8 %var_2_137, 1
; Matched:\<badref\>:  store i8 %var_2_132, i8* %var_2_20, align 1, !tbaa !1280
; store i8 %var_2_138, i8* %var_2_21, align 1
; Matched:%var_2_133:  %var_2_133 = zext i1 %var_2_121 to i8
; %var_2_139 = zext i1 %var_2_127 to i8
; Matched:\<badref\>:  store i8 %var_2_133, i8* %var_2_21, align 1, !tbaa !1281
; store i8 %var_2_139, i8* %var_2_22, align 1
; Matched:%var_2_134:  %var_2_134 = lshr i32 %var_2_118, 31
; %var_2_140 = lshr i32 %var_2_124, 31
; Matched:%var_2_135:  %var_2_135 = trunc i32 %var_2_134 to i8
; %var_2_141 = trunc i32 %var_2_140 to i8
; Matched:\<badref\>:  store i8 %var_2_135, i8* %var_2_22, align 1, !tbaa !1282
; store i8 %var_2_141, i8* %var_2_23, align 1
; Matched:%var_2_136:  %var_2_136 = lshr i32 %var_2_117, 31
; %var_2_142 = lshr i32 %var_2_123, 31
; Matched:%var_2_137:  %var_2_137 = xor i32 %var_2_134, %var_2_136
; %var_2_143 = xor i32 %var_2_140, %var_2_142
; Matched:%var_2_138:  %var_2_138 = add nuw nsw i32 %var_2_137, %var_2_134
; %var_2_144 = add nuw nsw i32 %var_2_143, %var_2_140
; Matched:%var_2_139:  %var_2_139 = icmp eq i32 %var_2_138, 2
; %var_2_145 = icmp eq i32 %var_2_144, 2
; Matched:%var_2_140:  %var_2_140 = zext i1 %var_2_139 to i8
; %var_2_146 = zext i1 %var_2_145 to i8
; Matched:\<badref\>:  store i8 %var_2_140, i8* %var_2_23, align 1, !tbaa !1283
; store i8 %var_2_146, i8* %var_2_24, align 1
%var_2_147 = add i64 %var_2_119, 14
; Matched:\<badref\>:  store i64 %var_2_141, i64* %PC, align 8
; store i64 %var_2_147, i64* %var_2_3, align 8
store i32 %var_2_124, i32* %var_2_122, align 4
%var_2_148 = load i64, i64* %var_2_3, align 8
%var_2_149 = add i64 %var_2_148, -67
; Matched:\<badref\>:  store i64 %var_2_143, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_149, i64* %var_2_3, align 8
  br label %block_.L_4004f2

block_.L_40053a:                                  ; preds = %block_.L_4004f2
%var_2_150 = add i64 %var_2_26, -8
%var_2_151 = add i64 %var_2_54, 3
; Matched:\<badref\>:  store i64 %var_2_25, i64* %PC, align 8
; store i64 %var_2_151, i64* %var_2_3, align 8
%var_2_152 = inttoptr i64 %var_2_150 to i32*
%var_2_153 = load i32, i32* %var_2_152, align 4
%var_2_154 = zext i32 %var_2_153 to i64
; Matched:\<badref\>:  store i64 %var_2_28, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_154, i64* %RAX.i37, align 8
%var_2_155 = add i64 %var_2_54, 4
; Matched:\<badref\>:  store i64 %var_2_29, i64* %PC, align 8
; store i64 %var_2_155, i64* %var_2_3, align 8
%var_2_156 = load i64, i64* %var_2_6, align 8
%var_2_157 = add i64 %var_2_156, 8
%var_2_158 = inttoptr i64 %var_2_156 to i64*
%var_2_159 = load i64, i64* %var_2_158, align 8
; Matched:\<badref\>:  store i64 %var_2_33, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_159, i64* %RBP.i, align 8
; Matched:\<badref\>:  store i64 %var_2_31, i64* %var_2_5, align 8, !tbaa !1261
; store i64 %var_2_157, i64* %var_2_6, align 8
%var_2_160 = add i64 %var_2_54, 5
; Matched:\<badref\>:  store i64 %var_2_34, i64* %PC, align 8
; store i64 %var_2_160, i64* %var_2_3, align 8
%var_2_161 = inttoptr i64 %var_2_157 to i64*
%var_2_162 = load i64, i64* %var_2_161, align 8
; Matched:\<badref\>:  store i64 %var_2_36, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_162, i64* %var_2_3, align 8
; Matched:%var_2_37:  %var_2_37 = add i64 %var_2_30, 16
; %var_2_163 = add i64 %var_2_156, 16
; Matched:\<badref\>:  store i64 %var_2_37, i64* %var_2_5, align 8, !tbaa !1261
; store i64 %var_2_163, i64* %var_2_6, align 8
; Matched:\<badref\>:  ret %struct.Memory* %2
; ret %struct.Memory* %2
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_cmpq__0xa___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -10
  %7 = icmp ult i64 %3, 10
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jae_.L_40053a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_cmpq__0x0__0x601040___rax_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 3
  %5 = add i64 %4, ptrtoint (%G_0x601040___rax_8__type* @G_0x601040___rax_8_ to i64)
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 9
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %10, align 1
  %11 = trunc i64 %9 to i32
  %12 = and i32 %11, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = icmp eq i64 %9, 0
  %20 = zext i1 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %20, i8* %21, align 1
  %22 = lshr i64 %9, 63
  %23 = trunc i64 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %23, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_je_.L_400527(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movq_0x601040___rax_8____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 3
  %5 = add i64 %4, ptrtoint (%G_0x601040___rax_8__type* @G_0x601040___rax_8_ to i64)
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl___rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_addl_MINUS0x8__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40052c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_addl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4004f2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
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
attributes #1 = { alwaysinline nounwind }
attributes #2 = { alwaysinline norecurse nounwind }
