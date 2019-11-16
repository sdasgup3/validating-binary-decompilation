; ModuleID = '/tmp/tmpm_217o6l-query.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x496__rip__type = type <{ [8 x i8] }>
%G_0x849__rip__type = type <{ [8 x i8] }>
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
@G_0x496__rip_ = global %G_0x496__rip__type zeroinitializer
@G_0x849__rip_ = global %G_0x849__rip__type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @cftmdl(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
entry:
%var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
; Matched:%var_2_7:  %var_2_7 = load i64, i64* %RBP, align 8
; %var_2_4 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_8:  %var_2_8 = add i64 %1, 1
; %var_2_5 = add i64 %1, 1
; Matched:\<badref\>:  store i64 %var_2_8, i64* %PC, align 8
; store i64 %var_2_5, i64* %var_2_3, align 8
; Matched:  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
; %var_2_6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
; Matched:%var_2_9:  %var_2_9 = load i64, i64* %RSP, align 8, !tbaa !1261
; %var_2_7 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_10:  %var_2_10 = add i64 %var_2_9, -8
; %var_2_8 = add i64 %var_2_7, -8
; Matched:%var_2_11:  %var_2_11 = inttoptr i64 %var_2_10 to i64*
; %var_2_9 = inttoptr i64 %var_2_8 to i64*
; Matched:\<badref\>:  store i64 %var_2_7, i64* %var_2_11, align 8
; store i64 %var_2_4, i64* %var_2_9, align 8
%var_2_10 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_10, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_8, i64* %RBP.i, align 8
; Matched:%var_2_13:  %var_2_13 = add i64 %var_2_9, -56
; %var_2_11 = add i64 %var_2_7, -56
; Matched:\<badref\>:  store i64 %var_2_13, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_11, i64* %var_2_6, align 8
; Matched:%var_2_14:  %var_2_14 = icmp ult i64 %var_2_10, 48
; %var_2_12 = icmp ult i64 %var_2_8, 48
; Matched:%var_2_15:  %var_2_15 = zext i1 %var_2_14 to i8
; %var_2_13 = zext i1 %var_2_12 to i8
%var_2_14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
; Matched:\<badref\>:  store i8 %var_2_15, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_13, i8* %var_2_14, align 1
; Matched:%var_2_17:  %var_2_17 = trunc i64 %var_2_13 to i32
; %var_2_15 = trunc i64 %var_2_11 to i32
; Matched:%var_2_18:  %var_2_18 = and i32 %var_2_17, 255
; %var_2_16 = and i32 %var_2_15, 255
; Matched:%var_2_19:  %var_2_19 = tail call i32 @llvm.ctpop.i32(i32 %var_2_18) #14
; %var_2_17 = tail call i32 @llvm.ctpop.i32(i32 %var_2_16)
; Matched:%var_2_20:  %var_2_20 = trunc i32 %var_2_19 to i8
; %var_2_18 = trunc i32 %var_2_17 to i8
; Matched:%var_2_21:  %var_2_21 = and i8 %var_2_20, 1
; %var_2_19 = and i8 %var_2_18, 1
; Matched:%var_2_22:  %var_2_22 = xor i8 %var_2_21, 1
; %var_2_20 = xor i8 %var_2_19, 1
; Matched:%var_2_23:  %var_2_23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
; %var_2_21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
; Matched:\<badref\>:  store i8 %var_2_22, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_20, i8* %var_2_21, align 1
; Matched:%var_2_24:  %var_2_24 = xor i64 %var_2_10, 16
; %var_2_22 = xor i64 %var_2_8, 16
; Matched:%var_2_25:  %var_2_25 = xor i64 %var_2_24, %var_2_13
; %var_2_23 = xor i64 %var_2_22, %var_2_11
; Matched:%var_2_26:  %var_2_26 = lshr i64 %var_2_25, 4
; %var_2_24 = lshr i64 %var_2_23, 4
; Matched:%var_2_27:  %var_2_27 = trunc i64 %var_2_26 to i8
; %var_2_25 = trunc i64 %var_2_24 to i8
; Matched:%var_2_28:  %var_2_28 = and i8 %var_2_27, 1
; %var_2_26 = and i8 %var_2_25, 1
%var_2_27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
; Matched:\<badref\>:  store i8 %var_2_28, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_26, i8* %var_2_27, align 1
; Matched:%var_2_30:  %var_2_30 = icmp eq i64 %var_2_13, 0
; %var_2_28 = icmp eq i64 %var_2_11, 0
; Matched:%var_2_31:  %var_2_31 = zext i1 %var_2_30 to i8
; %var_2_29 = zext i1 %var_2_28 to i8
; Matched:%var_2_32:  %var_2_32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
; %var_2_30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
; Matched:\<badref\>:  store i8 %var_2_31, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_29, i8* %var_2_30, align 1
; Matched:%var_2_33:  %var_2_33 = lshr i64 %var_2_13, 63
; %var_2_31 = lshr i64 %var_2_11, 63
; Matched:%var_2_34:  %var_2_34 = trunc i64 %var_2_33 to i8
; %var_2_32 = trunc i64 %var_2_31 to i8
; Matched:%var_2_35:  %var_2_35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
; %var_2_33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
; Matched:\<badref\>:  store i8 %var_2_34, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_32, i8* %var_2_33, align 1
; Matched:%var_2_36:  %var_2_36 = lshr i64 %var_2_10, 63
; %var_2_34 = lshr i64 %var_2_8, 63
; Matched:%var_2_37:  %var_2_37 = xor i64 %var_2_33, %var_2_36
; %var_2_35 = xor i64 %var_2_31, %var_2_34
; Matched:%var_2_38:  %var_2_38 = add nuw nsw i64 %var_2_37, %var_2_36
; %var_2_36 = add nuw nsw i64 %var_2_35, %var_2_34
; Matched:%var_2_39:  %var_2_39 = icmp eq i64 %var_2_38, 2
; %var_2_37 = icmp eq i64 %var_2_36, 2
; Matched:%var_2_40:  %var_2_40 = zext i1 %var_2_39 to i8
; %var_2_38 = zext i1 %var_2_37 to i8
%var_2_39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; Matched:\<badref\>:  store i8 %var_2_40, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_38, i8* %var_2_39, align 1
; Matched:%var_2_4:  %var_2_4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
; %var_2_40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
; Matched:  %EDI = bitcast %union.anon* %var_2_4 to i32*
; %EDI.i = bitcast %union.anon* %var_2_40 to i32*
; Matched:%var_2_42:  %var_2_42 = add i64 %var_2_9, -12
; %var_2_41 = add i64 %var_2_7, -12
; Matched:%var_2_43:  %var_2_43 = load i32, i32* %EDI, align 4
; %var_2_42 = load i32, i32* %EDI.i, align 4
; Matched:%var_2_2508:  %var_2_2508 = add i64 %var_2_2503, 10
; %var_2_43 = add i64 %var_2_10, 10
; Matched:\<badref\>:  store i64 %var_2_2508, i64* %PC, align 8
; store i64 %var_2_43, i64* %var_2_3, align 8
; Matched:%var_2_45:  %var_2_45 = inttoptr i64 %var_2_42 to i32*
; %var_2_44 = inttoptr i64 %var_2_41 to i32*
; Matched:\<badref\>:  store i32 %var_2_43, i32* %var_2_45, align 4
; store i32 %var_2_42, i32* %var_2_44, align 4
; Matched:%var_2_3:  %var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
; %var_2_45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
; Matched:  %ESI = bitcast %union.anon* %var_2_3 to i32*
; %ESI.i2242 = bitcast %union.anon* %var_2_45 to i32*
; Matched:%var_2_46:  %var_2_46 = load i64, i64* %RBP, align 8
; %var_2_46 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_47:  %var_2_47 = add i64 %var_2_46, -8
; %var_2_47 = add i64 %var_2_46, -8
; Matched:%var_2_48:  %var_2_48 = load i32, i32* %ESI, align 4
; %var_2_48 = load i32, i32* %ESI.i2242, align 4
%var_2_49 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_3799:  %var_2_3799 = add i64 %var_2_3798, 3
; %var_2_50 = add i64 %var_2_49, 3
; Matched:\<badref\>:  store i64 %var_2_3799, i64* %PC, align 8
; store i64 %var_2_50, i64* %var_2_3, align 8
; Matched:%var_2_51:  %var_2_51 = inttoptr i64 %var_2_47 to i32*
; %var_2_51 = inttoptr i64 %var_2_47 to i32*
; Matched:\<badref\>:  store i32 %var_2_48, i32* %var_2_51, align 4
; store i32 %var_2_48, i32* %var_2_51, align 4
; Matched:  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
; %RDX.i2239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
; Matched:%var_2_52:  %var_2_52 = load i64, i64* %RBP, align 8
; %var_2_52 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_53:  %var_2_53 = add i64 %var_2_52, -16
; %var_2_53 = add i64 %var_2_52, -16
; Matched:%var_2_54:  %var_2_54 = load i64, i64* %RDX, align 8
; %var_2_54 = load i64, i64* %RDX.i2239, align 8
%var_2_55 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_3953:  %var_2_3953 = add i64 %var_2_3952, 4
; %var_2_56 = add i64 %var_2_55, 4
; Matched:\<badref\>:  store i64 %var_2_3953, i64* %PC, align 8
; store i64 %var_2_56, i64* %var_2_3, align 8
; Matched:%var_2_57:  %var_2_57 = inttoptr i64 %var_2_53 to i64*
; %var_2_57 = inttoptr i64 %var_2_53 to i64*
; Matched:\<badref\>:  store i64 %var_2_54, i64* %var_2_57, align 8
; store i64 %var_2_54, i64* %var_2_57, align 8
; Matched:  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
; %RCX.i2236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
; Matched:%var_2_58:  %var_2_58 = load i64, i64* %RBP, align 8
; %var_2_58 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_59:  %var_2_59 = add i64 %var_2_58, -24
; %var_2_59 = add i64 %var_2_58, -24
; Matched:%var_2_60:  %var_2_60 = load i64, i64* %RCX, align 8
; %var_2_60 = load i64, i64* %RCX.i2236, align 8
%var_2_61 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2063:  %var_2_2063 = add i64 %var_2_2062, 4
; %var_2_62 = add i64 %var_2_61, 4
; Matched:\<badref\>:  store i64 %var_2_2063, i64* %PC, align 8
; store i64 %var_2_62, i64* %var_2_3, align 8
; Matched:%var_2_63:  %var_2_63 = inttoptr i64 %var_2_59 to i64*
; %var_2_63 = inttoptr i64 %var_2_59 to i64*
; Matched:\<badref\>:  store i64 %var_2_60, i64* %var_2_63, align 8
; store i64 %var_2_60, i64* %var_2_63, align 8
; Matched:  %RSI = getelementptr inbounds %union.anon, %union.anon* %var_2_3, i64 0, i32 0
; %RSI.i2233 = getelementptr inbounds %union.anon, %union.anon* %var_2_45, i64 0, i32 0
; Matched:%var_2_64:  %var_2_64 = load i64, i64* %RBP, align 8
; %var_2_64 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_65:  %var_2_65 = add i64 %var_2_64, -8
; %var_2_65 = add i64 %var_2_64, -8
%var_2_66 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1763:  %var_2_1763 = add i64 %var_2_1762, 3
; %var_2_67 = add i64 %var_2_66, 3
; Matched:\<badref\>:  store i64 %var_2_1763, i64* %PC, align 8
; store i64 %var_2_67, i64* %var_2_3, align 8
; Matched:%var_2_68:  %var_2_68 = inttoptr i64 %var_2_65 to i32*
; %var_2_68 = inttoptr i64 %var_2_65 to i32*
; Matched:%var_2_69:  %var_2_69 = load i32, i32* %var_2_68, align 4
; %var_2_69 = load i32, i32* %var_2_68, align 4
; Matched:%var_2_70:  %var_2_70 = shl i32 %var_2_69, 2
; %var_2_70 = shl i32 %var_2_69, 2
; Matched:%var_2_71:  %var_2_71 = zext i32 %var_2_70 to i64
; %var_2_71 = zext i32 %var_2_70 to i64
; Matched:\<badref\>:  store i64 %var_2_71, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_71, i64* %RSI.i2233, align 8
; Matched:%var_2_72:  %var_2_72 = lshr i32 %var_2_69, 30
; %var_2_72 = lshr i32 %var_2_69, 30
; Matched:%var_2_73:  %var_2_73 = trunc i32 %var_2_72 to i8
; %var_2_73 = trunc i32 %var_2_72 to i8
; Matched:%var_2_74:  %var_2_74 = and i8 %var_2_73, 1
; %var_2_74 = and i8 %var_2_73, 1
; Matched:\<badref\>:  store i8 %var_2_74, i8* %var_2_16, align 1, !tbaa !1284
; store i8 %var_2_74, i8* %var_2_14, align 1
; Matched:%var_2_75:  %var_2_75 = and i32 %var_2_70, 252
; %var_2_75 = and i32 %var_2_70, 252
; Matched:%var_2_76:  %var_2_76 = tail call i32 @llvm.ctpop.i32(i32 %var_2_75) #14
; %var_2_76 = tail call i32 @llvm.ctpop.i32(i32 %var_2_75)
; Matched:%var_2_77:  %var_2_77 = trunc i32 %var_2_76 to i8
; %var_2_77 = trunc i32 %var_2_76 to i8
; Matched:%var_2_78:  %var_2_78 = and i8 %var_2_77, 1
; %var_2_78 = and i8 %var_2_77, 1
; Matched:%var_2_79:  %var_2_79 = xor i8 %var_2_78, 1
; %var_2_79 = xor i8 %var_2_78, 1
; Matched:\<badref\>:  store i8 %var_2_79, i8* %var_2_23, align 1, !tbaa !1284
; store i8 %var_2_79, i8* %var_2_21, align 1
store i8 0, i8* %var_2_27, align 1
; Matched:%var_2_80:  %var_2_80 = icmp eq i32 %var_2_70, 0
; %var_2_80 = icmp eq i32 %var_2_70, 0
; Matched:%var_2_81:  %var_2_81 = zext i1 %var_2_80 to i8
; %var_2_81 = zext i1 %var_2_80 to i8
; Matched:\<badref\>:  store i8 %var_2_81, i8* %var_2_32, align 1, !tbaa !1284
; store i8 %var_2_81, i8* %var_2_30, align 1
; Matched:%var_2_82:  %var_2_82 = lshr i32 %var_2_69, 29
; %var_2_82 = lshr i32 %var_2_69, 29
; Matched:%var_2_83:  %var_2_83 = trunc i32 %var_2_82 to i8
; %var_2_83 = trunc i32 %var_2_82 to i8
; Matched:%var_2_84:  %var_2_84 = and i8 %var_2_83, 1
; %var_2_84 = and i8 %var_2_83, 1
; Matched:\<badref\>:  store i8 %var_2_84, i8* %var_2_35, align 1, !tbaa !1284
; store i8 %var_2_84, i8* %var_2_33, align 1
store i8 0, i8* %var_2_39, align 1
; Matched:%var_2_85:  %var_2_85 = add i64 %var_2_64, -56
; %var_2_85 = add i64 %var_2_64, -56
%var_2_86 = add i64 %var_2_66, 9
store i64 %var_2_86, i64* %var_2_3, align 8
; Matched:%var_2_87:  %var_2_87 = inttoptr i64 %var_2_85 to i32*
; %var_2_87 = inttoptr i64 %var_2_85 to i32*
; Matched:\<badref\>:  store i32 %var_2_70, i32* %var_2_87, align 4
; store i32 %var_2_70, i32* %var_2_87, align 4
%var_2_88 = load i64, i64* %RBP.i, align 8
%var_2_89 = add i64 %var_2_88, -28
%var_2_90 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_489:  %var_2_489 = add i64 %var_2_484, 7
; %var_2_91 = add i64 %var_2_90, 7
; Matched:\<badref\>:  store i64 %var_2_3286, i64* %PC, align 8
; store i64 %var_2_91, i64* %var_2_3, align 8
%var_2_92 = inttoptr i64 %var_2_89 to i32*
store i32 0, i32* %var_2_92, align 4
  %RAX.i2224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
%var_2_93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
%var_2_94 = bitcast %union.VectorReg* %var_2_93 to double*
%var_2_95 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_93, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:%var_2_95:  %var_2_95 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
; %var_2_96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_96:  %var_2_96 = bitcast i64* %var_2_95 to double*
; %var_2_97 = bitcast i64* %var_2_96 to double*
; Matched:  %.pre = load i64, i64* %PC, align 8
; %.pre = load i64, i64* %var_2_3, align 8
  br label %block_.L_403356

block_.L_403356:                                  ; preds = %block_403362, %entry
; Matched:%var_2_2752:  %var_2_2752 = phi i64 [ %var_2_3681, %block_403362 ], [ %.pre, %block_403330 ]
; %var_2_98 = phi i64 [ %var_2_1027, %block_403362 ], [ %.pre, %entry ]
%var_2_99 = load i64, i64* %RBP.i, align 8
%var_2_100 = add i64 %var_2_99, -28
; Matched:%var_2_2755:  %var_2_2755 = add i64 %var_2_2752, 3
; %var_2_101 = add i64 %var_2_98, 3
; Matched:\<badref\>:  store i64 %var_2_2755, i64* %PC, align 8
; store i64 %var_2_101, i64* %var_2_3, align 8
%var_2_102 = inttoptr i64 %var_2_100 to i32*
%var_2_103 = load i32, i32* %var_2_102, align 4
; Matched:%var_2_2758:  %var_2_2758 = zext i32 %var_2_2757 to i64
; %var_2_104 = zext i32 %var_2_103 to i64
; Matched:\<badref\>:  store i64 %var_2_3722, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_104, i64* %RAX.i2224, align 8
%var_2_105 = add i64 %var_2_99, -8
; Matched:%var_2_2760:  %var_2_2760 = add i64 %var_2_2752, 6
; %var_2_106 = add i64 %var_2_98, 6
; Matched:\<badref\>:  store i64 %var_2_2760, i64* %PC, align 8
; store i64 %var_2_106, i64* %var_2_3, align 8
%var_2_107 = inttoptr i64 %var_2_105 to i32*
%var_2_108 = load i32, i32* %var_2_107, align 4
%var_2_109 = sub i32 %var_2_103, %var_2_108
; Matched:%var_2_2764:  %var_2_2764 = icmp ult i32 %var_2_2757, %var_2_2762
; %var_2_110 = icmp ult i32 %var_2_103, %var_2_108
; Matched:%var_2_2765:  %var_2_2765 = zext i1 %var_2_2764 to i8
; %var_2_111 = zext i1 %var_2_110 to i8
; Matched:\<badref\>:  store i8 %var_2_2765, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_111, i8* %var_2_14, align 1
; Matched:%var_2_2766:  %var_2_2766 = and i32 %var_2_2763, 255
; %var_2_112 = and i32 %var_2_109, 255
; Matched:%var_2_2767:  %var_2_2767 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2766) #14
; %var_2_113 = tail call i32 @llvm.ctpop.i32(i32 %var_2_112)
; Matched:%var_2_2768:  %var_2_2768 = trunc i32 %var_2_2767 to i8
; %var_2_114 = trunc i32 %var_2_113 to i8
; Matched:%var_2_2769:  %var_2_2769 = and i8 %var_2_2768, 1
; %var_2_115 = and i8 %var_2_114, 1
; Matched:%var_2_2770:  %var_2_2770 = xor i8 %var_2_2769, 1
; %var_2_116 = xor i8 %var_2_115, 1
; Matched:\<badref\>:  store i8 %var_2_2770, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_116, i8* %var_2_21, align 1
; Matched:%var_2_2771:  %var_2_2771 = xor i32 %var_2_2762, %var_2_2757
; %var_2_117 = xor i32 %var_2_108, %var_2_103
; Matched:%var_2_2772:  %var_2_2772 = xor i32 %var_2_2771, %var_2_2763
; %var_2_118 = xor i32 %var_2_117, %var_2_109
; Matched:%var_2_2773:  %var_2_2773 = lshr i32 %var_2_2772, 4
; %var_2_119 = lshr i32 %var_2_118, 4
; Matched:%var_2_2774:  %var_2_2774 = trunc i32 %var_2_2773 to i8
; %var_2_120 = trunc i32 %var_2_119 to i8
; Matched:%var_2_2775:  %var_2_2775 = and i8 %var_2_2774, 1
; %var_2_121 = and i8 %var_2_120, 1
; Matched:\<badref\>:  store i8 %var_2_2775, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_121, i8* %var_2_27, align 1
; Matched:%var_2_2776:  %var_2_2776 = icmp eq i32 %var_2_2763, 0
; %var_2_122 = icmp eq i32 %var_2_109, 0
; Matched:%var_2_2777:  %var_2_2777 = zext i1 %var_2_2776 to i8
; %var_2_123 = zext i1 %var_2_122 to i8
; Matched:\<badref\>:  store i8 %var_2_2777, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_123, i8* %var_2_30, align 1
%var_2_124 = lshr i32 %var_2_109, 31
%var_2_125 = trunc i32 %var_2_124 to i8
; Matched:\<badref\>:  store i8 %var_2_2779, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_125, i8* %var_2_33, align 1
%var_2_126 = lshr i32 %var_2_103, 31
%var_2_127 = lshr i32 %var_2_108, 31
%var_2_128 = xor i32 %var_2_127, %var_2_126
%var_2_129 = xor i32 %var_2_124, %var_2_126
%var_2_130 = add nuw nsw i32 %var_2_129, %var_2_128
%var_2_131 = icmp eq i32 %var_2_130, 2
; Matched:%var_2_2786:  %var_2_2786 = zext i1 %var_2_2785 to i8
; %var_2_132 = zext i1 %var_2_131 to i8
; Matched:\<badref\>:  store i8 %var_2_2786, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_132, i8* %var_2_39, align 1
%var_2_133 = icmp ne i8 %var_2_125, 0
%var_2_134 = xor i1 %var_2_133, %var_2_131
; Matched:  %.v = select i1 %var_2_2788, i64 12, i64 599
; %.v = select i1 %var_2_134, i64 12, i64 599
; Matched:%var_2_2789:  %var_2_2789 = add i64 %var_2_2752, %.v
; %var_2_135 = add i64 %var_2_98, %.v
; Matched:\<badref\>:  store i64 %var_2_2789, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_135, i64* %var_2_3, align 8
br i1 %var_2_134, label %block_403362, label %block_.L_4035ad

block_403362:                                     ; preds = %block_.L_403356
; Matched:%var_2_2790:  %var_2_2790 = add i64 %var_2_2789, 3
; %var_2_136 = add i64 %var_2_135, 3
; Matched:\<badref\>:  store i64 %var_2_2790, i64* %PC, align 8
; store i64 %var_2_136, i64* %var_2_3, align 8
%var_2_137 = load i32, i32* %var_2_102, align 4
; Matched:%var_2_4817:  %var_2_4817 = zext i32 %var_2_4816 to i64
; %var_2_138 = zext i32 %var_2_137 to i64
; Matched:\<badref\>:  store i64 %var_2_334, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_138, i64* %RAX.i2224, align 8
; Matched:%var_2_2793:  %var_2_2793 = add i64 %var_2_2789, 6
; %var_2_139 = add i64 %var_2_135, 6
; Matched:\<badref\>:  store i64 %var_2_2793, i64* %PC, align 8
; store i64 %var_2_139, i64* %var_2_3, align 8
%var_2_140 = load i32, i32* %var_2_107, align 4
%var_2_141 = add i32 %var_2_140, %var_2_137
; Matched:%var_2_2796:  %var_2_2796 = zext i32 %var_2_2795 to i64
; %var_2_142 = zext i32 %var_2_141 to i64
; Matched:\<badref\>:  store i64 %var_2_2796, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_142, i64* %RAX.i2224, align 8
; Matched:%var_2_2797:  %var_2_2797 = icmp ult i32 %var_2_2795, %var_2_2791
; %var_2_143 = icmp ult i32 %var_2_141, %var_2_137
; Matched:%var_2_340:  %var_2_340 = icmp ult i32 %var_2_337, %var_2_336
; %var_2_144 = icmp ult i32 %var_2_141, %var_2_140
; Matched:%var_2_3729:  %var_2_3729 = or i1 %var_2_3727, %var_2_3728
; %var_2_145 = or i1 %var_2_143, %var_2_144
; Matched:%var_2_342:  %var_2_342 = zext i1 %var_2_341 to i8
; %var_2_146 = zext i1 %var_2_145 to i8
; Matched:\<badref\>:  store i8 %var_2_342, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_146, i8* %var_2_14, align 1
; Matched:%var_2_343:  %var_2_343 = and i32 %var_2_337, 255
; %var_2_147 = and i32 %var_2_141, 255
; Matched:%var_2_2802:  %var_2_2802 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2801) #14
; %var_2_148 = tail call i32 @llvm.ctpop.i32(i32 %var_2_147)
; Matched:%var_2_3733:  %var_2_3733 = trunc i32 %var_2_3732 to i8
; %var_2_149 = trunc i32 %var_2_148 to i8
; Matched:%var_2_2804:  %var_2_2804 = and i8 %var_2_2803, 1
; %var_2_150 = and i8 %var_2_149, 1
; Matched:%var_2_347:  %var_2_347 = xor i8 %var_2_346, 1
; %var_2_151 = xor i8 %var_2_150, 1
; Matched:\<badref\>:  store i8 %var_2_3735, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_151, i8* %var_2_21, align 1
; Matched:%var_2_348:  %var_2_348 = xor i32 %var_2_336, %var_2_333
; %var_2_152 = xor i32 %var_2_140, %var_2_137
; Matched:%var_2_349:  %var_2_349 = xor i32 %var_2_348, %var_2_337
; %var_2_153 = xor i32 %var_2_152, %var_2_141
; Matched:%var_2_2808:  %var_2_2808 = lshr i32 %var_2_2807, 4
; %var_2_154 = lshr i32 %var_2_153, 4
; Matched:%var_2_3739:  %var_2_3739 = trunc i32 %var_2_3738 to i8
; %var_2_155 = trunc i32 %var_2_154 to i8
; Matched:%var_2_352:  %var_2_352 = and i8 %var_2_351, 1
; %var_2_156 = and i8 %var_2_155, 1
; Matched:\<badref\>:  store i8 %var_2_3740, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_156, i8* %var_2_27, align 1
; Matched:%var_2_353:  %var_2_353 = icmp eq i32 %var_2_337, 0
; %var_2_157 = icmp eq i32 %var_2_141, 0
; Matched:%var_2_3742:  %var_2_3742 = zext i1 %var_2_3741 to i8
; %var_2_158 = zext i1 %var_2_157 to i8
; Matched:\<badref\>:  store i8 %var_2_354, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_158, i8* %var_2_30, align 1
; Matched:%var_2_2813:  %var_2_2813 = lshr i32 %var_2_2795, 31
; %var_2_159 = lshr i32 %var_2_141, 31
; Matched:%var_2_356:  %var_2_356 = trunc i32 %var_2_355 to i8
; %var_2_160 = trunc i32 %var_2_159 to i8
; Matched:\<badref\>:  store i8 %var_2_3744, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_160, i8* %var_2_33, align 1
; Matched:%var_2_357:  %var_2_357 = lshr i32 %var_2_333, 31
; %var_2_161 = lshr i32 %var_2_137, 31
; Matched:%var_2_3746:  %var_2_3746 = lshr i32 %var_2_3724, 31
; %var_2_162 = lshr i32 %var_2_140, 31
; Matched:%var_2_359:  %var_2_359 = xor i32 %var_2_355, %var_2_357
; %var_2_163 = xor i32 %var_2_159, %var_2_161
; Matched:%var_2_2818:  %var_2_2818 = xor i32 %var_2_2813, %var_2_2816
; %var_2_164 = xor i32 %var_2_159, %var_2_162
; Matched:%var_2_361:  %var_2_361 = add nuw nsw i32 %var_2_359, %var_2_360
; %var_2_165 = add nuw nsw i32 %var_2_163, %var_2_164
; Matched:%var_2_362:  %var_2_362 = icmp eq i32 %var_2_361, 2
; %var_2_166 = icmp eq i32 %var_2_165, 2
; Matched:%var_2_2821:  %var_2_2821 = zext i1 %var_2_2820 to i8
; %var_2_167 = zext i1 %var_2_166 to i8
; Matched:\<badref\>:  store i8 %var_2_3751, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_167, i8* %var_2_39, align 1
; Matched:%var_2_3752:  %var_2_3752 = add i64 %var_2_4812, -32
; %var_2_168 = add i64 %var_2_99, -32
; Matched:%var_2_2823:  %var_2_2823 = add i64 %var_2_2789, 9
; %var_2_169 = add i64 %var_2_135, 9
; Matched:\<badref\>:  store i64 %var_2_1607, i64* %PC, align 8
; store i64 %var_2_169, i64* %var_2_3, align 8
; Matched:%var_2_3754:  %var_2_3754 = inttoptr i64 %var_2_3752 to i32*
; %var_2_170 = inttoptr i64 %var_2_168 to i32*
; Matched:\<badref\>:  store i32 %var_2_337, i32* %var_2_366, align 4
; store i32 %var_2_141, i32* %var_2_170, align 4
%var_2_171 = load i64, i64* %RBP.i, align 8
%var_2_172 = add i64 %var_2_171, -32
%var_2_173 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1314:  %var_2_1314 = add i64 %var_2_1313, 3
; %var_2_174 = add i64 %var_2_173, 3
; Matched:\<badref\>:  store i64 %var_2_1314, i64* %PC, align 8
; store i64 %var_2_174, i64* %var_2_3, align 8
%var_2_175 = inttoptr i64 %var_2_172 to i32*
%var_2_176 = load i32, i32* %var_2_175, align 4
; Matched:%var_2_373:  %var_2_373 = zext i32 %var_2_372 to i64
; %var_2_177 = zext i32 %var_2_176 to i64
; Matched:\<badref\>:  store i64 %var_2_373, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_177, i64* %RAX.i2224, align 8
%var_2_178 = add i64 %var_2_171, -8
; Matched:%var_2_375:  %var_2_375 = add i64 %var_2_369, 6
; %var_2_179 = add i64 %var_2_173, 6
; Matched:\<badref\>:  store i64 %var_2_375, i64* %PC, align 8
; store i64 %var_2_179, i64* %var_2_3, align 8
%var_2_180 = inttoptr i64 %var_2_178 to i32*
%var_2_181 = load i32, i32* %var_2_180, align 4
%var_2_182 = add i32 %var_2_181, %var_2_176
; Matched:%var_2_379:  %var_2_379 = zext i32 %var_2_378 to i64
; %var_2_183 = zext i32 %var_2_182 to i64
; Matched:\<badref\>:  store i64 %var_2_379, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_183, i64* %RAX.i2224, align 8
; Matched:%var_2_380:  %var_2_380 = icmp ult i32 %var_2_378, %var_2_372
; %var_2_184 = icmp ult i32 %var_2_182, %var_2_176
; Matched:%var_2_3769:  %var_2_3769 = icmp ult i32 %var_2_3766, %var_2_3765
; %var_2_185 = icmp ult i32 %var_2_182, %var_2_181
; Matched:%var_2_382:  %var_2_382 = or i1 %var_2_380, %var_2_381
; %var_2_186 = or i1 %var_2_184, %var_2_185
; Matched:%var_2_3771:  %var_2_3771 = zext i1 %var_2_3770 to i8
; %var_2_187 = zext i1 %var_2_186 to i8
; Matched:\<badref\>:  store i8 %var_2_383, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_187, i8* %var_2_14, align 1
; Matched:%var_2_3772:  %var_2_3772 = and i32 %var_2_3766, 255
; %var_2_188 = and i32 %var_2_182, 255
; Matched:%var_2_385:  %var_2_385 = tail call i32 @llvm.ctpop.i32(i32 %var_2_384) #14
; %var_2_189 = tail call i32 @llvm.ctpop.i32(i32 %var_2_188)
; Matched:%var_2_386:  %var_2_386 = trunc i32 %var_2_385 to i8
; %var_2_190 = trunc i32 %var_2_189 to i8
; Matched:%var_2_2845:  %var_2_2845 = and i8 %var_2_2844, 1
; %var_2_191 = and i8 %var_2_190, 1
; Matched:%var_2_3776:  %var_2_3776 = xor i8 %var_2_3775, 1
; %var_2_192 = xor i8 %var_2_191, 1
; Matched:\<badref\>:  store i8 %var_2_3776, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_192, i8* %var_2_21, align 1
; Matched:%var_2_3777:  %var_2_3777 = xor i32 %var_2_3765, %var_2_3760
; %var_2_193 = xor i32 %var_2_181, %var_2_176
; Matched:%var_2_3778:  %var_2_3778 = xor i32 %var_2_3777, %var_2_3766
; %var_2_194 = xor i32 %var_2_193, %var_2_182
; Matched:%var_2_3779:  %var_2_3779 = lshr i32 %var_2_3778, 4
; %var_2_195 = lshr i32 %var_2_194, 4
; Matched:%var_2_392:  %var_2_392 = trunc i32 %var_2_391 to i8
; %var_2_196 = trunc i32 %var_2_195 to i8
; Matched:%var_2_393:  %var_2_393 = and i8 %var_2_392, 1
; %var_2_197 = and i8 %var_2_196, 1
; Matched:\<badref\>:  store i8 %var_2_2851, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_197, i8* %var_2_27, align 1
; Matched:%var_2_3782:  %var_2_3782 = icmp eq i32 %var_2_3766, 0
; %var_2_198 = icmp eq i32 %var_2_182, 0
; Matched:%var_2_3783:  %var_2_3783 = zext i1 %var_2_3782 to i8
; %var_2_199 = zext i1 %var_2_198 to i8
; Matched:\<badref\>:  store i8 %var_2_3783, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_199, i8* %var_2_30, align 1
; Matched:%var_2_3784:  %var_2_3784 = lshr i32 %var_2_3766, 31
; %var_2_200 = lshr i32 %var_2_182, 31
; Matched:%var_2_3785:  %var_2_3785 = trunc i32 %var_2_3784 to i8
; %var_2_201 = trunc i32 %var_2_200 to i8
; Matched:\<badref\>:  store i8 %var_2_397, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_201, i8* %var_2_33, align 1
; Matched:%var_2_2856:  %var_2_2856 = lshr i32 %var_2_2830, 31
; %var_2_202 = lshr i32 %var_2_176, 31
; Matched:%var_2_399:  %var_2_399 = lshr i32 %var_2_377, 31
; %var_2_203 = lshr i32 %var_2_181, 31
; Matched:%var_2_3788:  %var_2_3788 = xor i32 %var_2_3784, %var_2_3786
; %var_2_204 = xor i32 %var_2_200, %var_2_202
; Matched:%var_2_3789:  %var_2_3789 = xor i32 %var_2_3784, %var_2_3787
; %var_2_205 = xor i32 %var_2_200, %var_2_203
; Matched:%var_2_3790:  %var_2_3790 = add nuw nsw i32 %var_2_3788, %var_2_3789
; %var_2_206 = add nuw nsw i32 %var_2_204, %var_2_205
; Matched:%var_2_3791:  %var_2_3791 = icmp eq i32 %var_2_3790, 2
; %var_2_207 = icmp eq i32 %var_2_206, 2
; Matched:%var_2_3792:  %var_2_3792 = zext i1 %var_2_3791 to i8
; %var_2_208 = zext i1 %var_2_207 to i8
; Matched:\<badref\>:  store i8 %var_2_404, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_208, i8* %var_2_39, align 1
; Matched:%var_2_2863:  %var_2_2863 = add i64 %var_2_2825, -36
; %var_2_209 = add i64 %var_2_171, -36
%var_2_210 = add i64 %var_2_173, 9
store i64 %var_2_210, i64* %var_2_3, align 8
; Matched:%var_2_3795:  %var_2_3795 = inttoptr i64 %var_2_3793 to i32*
; %var_2_211 = inttoptr i64 %var_2_209 to i32*
; Matched:\<badref\>:  store i32 %var_2_3766, i32* %var_2_3795, align 4
; store i32 %var_2_182, i32* %var_2_211, align 4
%var_2_212 = load i64, i64* %RBP.i, align 8
%var_2_213 = add i64 %var_2_212, -36
%var_2_214 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_411:  %var_2_411 = add i64 %var_2_410, 3
; %var_2_215 = add i64 %var_2_214, 3
; Matched:\<badref\>:  store i64 %var_2_411, i64* %PC, align 8
; store i64 %var_2_215, i64* %var_2_3, align 8
%var_2_216 = inttoptr i64 %var_2_213 to i32*
%var_2_217 = load i32, i32* %var_2_216, align 4
; Matched:%var_2_2872:  %var_2_2872 = zext i32 %var_2_2871 to i64
; %var_2_218 = zext i32 %var_2_217 to i64
; Matched:\<badref\>:  store i64 %var_2_414, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_218, i64* %RAX.i2224, align 8
%var_2_219 = add i64 %var_2_212, -8
; Matched:%var_2_1727:  %var_2_1727 = add i64 %var_2_1721, 6
; %var_2_220 = add i64 %var_2_214, 6
; Matched:\<badref\>:  store i64 %var_2_416, i64* %PC, align 8
; store i64 %var_2_220, i64* %var_2_3, align 8
%var_2_221 = inttoptr i64 %var_2_219 to i32*
%var_2_222 = load i32, i32* %var_2_221, align 4
%var_2_223 = add i32 %var_2_222, %var_2_217
; Matched:%var_2_2878:  %var_2_2878 = zext i32 %var_2_2877 to i64
; %var_2_224 = zext i32 %var_2_223 to i64
; Matched:\<badref\>:  store i64 %var_2_420, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_224, i64* %RAX.i2224, align 8
; Matched:%var_2_3809:  %var_2_3809 = icmp ult i32 %var_2_3807, %var_2_3801
; %var_2_225 = icmp ult i32 %var_2_223, %var_2_217
; Matched:%var_2_2880:  %var_2_2880 = icmp ult i32 %var_2_2877, %var_2_2876
; %var_2_226 = icmp ult i32 %var_2_223, %var_2_222
; Matched:%var_2_2881:  %var_2_2881 = or i1 %var_2_2879, %var_2_2880
; %var_2_227 = or i1 %var_2_225, %var_2_226
; Matched:%var_2_424:  %var_2_424 = zext i1 %var_2_423 to i8
; %var_2_228 = zext i1 %var_2_227 to i8
; Matched:\<badref\>:  store i8 %var_2_3812, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_228, i8* %var_2_14, align 1
; Matched:%var_2_3813:  %var_2_3813 = and i32 %var_2_3807, 255
; %var_2_229 = and i32 %var_2_223, 255
; Matched:%var_2_3814:  %var_2_3814 = tail call i32 @llvm.ctpop.i32(i32 %var_2_3813) #14
; %var_2_230 = tail call i32 @llvm.ctpop.i32(i32 %var_2_229)
; Matched:%var_2_3815:  %var_2_3815 = trunc i32 %var_2_3814 to i8
; %var_2_231 = trunc i32 %var_2_230 to i8
; Matched:%var_2_3816:  %var_2_3816 = and i8 %var_2_3815, 1
; %var_2_232 = and i8 %var_2_231, 1
; Matched:%var_2_429:  %var_2_429 = xor i8 %var_2_428, 1
; %var_2_233 = xor i8 %var_2_232, 1
; Matched:\<badref\>:  store i8 %var_2_429, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_233, i8* %var_2_21, align 1
; Matched:%var_2_430:  %var_2_430 = xor i32 %var_2_418, %var_2_413
; %var_2_234 = xor i32 %var_2_222, %var_2_217
; Matched:%var_2_3819:  %var_2_3819 = xor i32 %var_2_3818, %var_2_3807
; %var_2_235 = xor i32 %var_2_234, %var_2_223
; Matched:%var_2_2890:  %var_2_2890 = lshr i32 %var_2_2889, 4
; %var_2_236 = lshr i32 %var_2_235, 4
; Matched:%var_2_2891:  %var_2_2891 = trunc i32 %var_2_2890 to i8
; %var_2_237 = trunc i32 %var_2_236 to i8
; Matched:%var_2_2892:  %var_2_2892 = and i8 %var_2_2891, 1
; %var_2_238 = and i8 %var_2_237, 1
; Matched:\<badref\>:  store i8 %var_2_3822, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_238, i8* %var_2_27, align 1
; Matched:%var_2_2893:  %var_2_2893 = icmp eq i32 %var_2_2877, 0
; %var_2_239 = icmp eq i32 %var_2_223, 0
; Matched:%var_2_2894:  %var_2_2894 = zext i1 %var_2_2893 to i8
; %var_2_240 = zext i1 %var_2_239 to i8
; Matched:\<badref\>:  store i8 %var_2_436, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_240, i8* %var_2_30, align 1
; Matched:%var_2_3825:  %var_2_3825 = lshr i32 %var_2_3807, 31
; %var_2_241 = lshr i32 %var_2_223, 31
; Matched:%var_2_2896:  %var_2_2896 = trunc i32 %var_2_2895 to i8
; %var_2_242 = trunc i32 %var_2_241 to i8
; Matched:\<badref\>:  store i8 %var_2_2896, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_242, i8* %var_2_33, align 1
; Matched:%var_2_2897:  %var_2_2897 = lshr i32 %var_2_2871, 31
; %var_2_243 = lshr i32 %var_2_217, 31
; Matched:%var_2_3828:  %var_2_3828 = lshr i32 %var_2_3806, 31
; %var_2_244 = lshr i32 %var_2_222, 31
; Matched:%var_2_2899:  %var_2_2899 = xor i32 %var_2_2895, %var_2_2897
; %var_2_245 = xor i32 %var_2_241, %var_2_243
; Matched:%var_2_2900:  %var_2_2900 = xor i32 %var_2_2895, %var_2_2898
; %var_2_246 = xor i32 %var_2_241, %var_2_244
; Matched:%var_2_443:  %var_2_443 = add nuw nsw i32 %var_2_441, %var_2_442
; %var_2_247 = add nuw nsw i32 %var_2_245, %var_2_246
; Matched:%var_2_3832:  %var_2_3832 = icmp eq i32 %var_2_3831, 2
; %var_2_248 = icmp eq i32 %var_2_247, 2
; Matched:%var_2_2903:  %var_2_2903 = zext i1 %var_2_2902 to i8
; %var_2_249 = zext i1 %var_2_248 to i8
; Matched:\<badref\>:  store i8 %var_2_2903, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_249, i8* %var_2_39, align 1
; Matched:%var_2_2904:  %var_2_2904 = add i64 %var_2_2866, -40
; %var_2_250 = add i64 %var_2_212, -40
%var_2_251 = add i64 %var_2_214, 9
store i64 %var_2_251, i64* %var_2_3, align 8
; Matched:%var_2_2906:  %var_2_2906 = inttoptr i64 %var_2_2904 to i32*
; %var_2_252 = inttoptr i64 %var_2_250 to i32*
; Matched:\<badref\>:  store i32 %var_2_419, i32* %var_2_448, align 4
; store i32 %var_2_223, i32* %var_2_252, align 4
%var_2_253 = load i64, i64* %RBP.i, align 8
%var_2_254 = add i64 %var_2_253, -16
%var_2_255 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_3136:  %var_2_3136 = add i64 %var_2_3135, 4
; %var_2_256 = add i64 %var_2_255, 4
; Matched:\<badref\>:  store i64 %var_2_3136, i64* %PC, align 8
; store i64 %var_2_256, i64* %var_2_3, align 8
%var_2_257 = inttoptr i64 %var_2_254 to i64*
%var_2_258 = load i64, i64* %var_2_257, align 8
; Matched:\<badref\>:  store i64 %var_2_4101, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_258, i64* %RCX.i2236, align 8
%var_2_259 = add i64 %var_2_253, -28
%var_2_260 = add i64 %var_2_255, 8
store i64 %var_2_260, i64* %var_2_3, align 8
%var_2_261 = inttoptr i64 %var_2_259 to i32*
%var_2_262 = load i32, i32* %var_2_261, align 4
%var_2_263 = sext i32 %var_2_262 to i64
; Matched:\<badref\>:  store i64 %var_2_459, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_263, i64* %RDX.i2239, align 8
%var_2_264 = shl nsw i64 %var_2_263, 3
%var_2_265 = add i64 %var_2_264, %var_2_258
; Matched:%var_2_801:  %var_2_801 = add i64 %var_2_790, 13
; %var_2_266 = add i64 %var_2_255, 13
; Matched:\<badref\>:  store i64 %var_2_164, i64* %PC, align 8
; store i64 %var_2_266, i64* %var_2_3, align 8
%var_2_267 = inttoptr i64 %var_2_265 to i64*
%var_2_268 = load i64, i64* %var_2_267, align 8
store i64 %var_2_268, i64* %var_2_95, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
; Matched:%var_2_3470:  %var_2_3470 = add i64 %var_2_3459, 17
; %var_2_269 = add i64 %var_2_255, 17
; Matched:\<badref\>:  store i64 %var_2_3470, i64* %PC, align 8
; store i64 %var_2_269, i64* %var_2_3, align 8
%var_2_270 = load i64, i64* %var_2_257, align 8
; Matched:\<badref\>:  store i64 %var_2_3399, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_270, i64* %RCX.i2236, align 8
%var_2_271 = add i64 %var_2_253, -32
; Matched:%var_2_807:  %var_2_807 = add i64 %var_2_790, 21
; %var_2_272 = add i64 %var_2_255, 21
; Matched:\<badref\>:  store i64 %var_2_807, i64* %PC, align 8
; store i64 %var_2_272, i64* %var_2_3, align 8
%var_2_273 = inttoptr i64 %var_2_271 to i32*
%var_2_274 = load i32, i32* %var_2_273, align 4
%var_2_275 = sext i32 %var_2_274 to i64
; Matched:\<badref\>:  store i64 %var_2_584, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_275, i64* %RDX.i2239, align 8
%var_2_276 = shl nsw i64 %var_2_275, 3
%var_2_277 = add i64 %var_2_276, %var_2_270
; Matched:%var_2_2932:  %var_2_2932 = add i64 %var_2_2909, 26
; %var_2_278 = add i64 %var_2_255, 26
; Matched:\<badref\>:  store i64 %var_2_2932, i64* %PC, align 8
; store i64 %var_2_278, i64* %var_2_3, align 8
%var_2_279 = bitcast i64 %var_2_268 to double
%var_2_280 = inttoptr i64 %var_2_277 to double*
%var_2_281 = load double, double* %var_2_280, align 8
%var_2_282 = fadd double %var_2_279, %var_2_281
store double %var_2_282, double* %var_2_94, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
; Matched:%var_2_3867:  %var_2_3867 = add i64 %var_2_3837, -120
; %var_2_283 = add i64 %var_2_253, -120
; Matched:%var_2_480:  %var_2_480 = add i64 %var_2_451, 31
; %var_2_284 = add i64 %var_2_255, 31
; Matched:\<badref\>:  store i64 %var_2_480, i64* %PC, align 8
; store i64 %var_2_284, i64* %var_2_3, align 8
; Matched:%var_2_2939:  %var_2_2939 = inttoptr i64 %var_2_2937 to double*
; %var_2_285 = inttoptr i64 %var_2_283 to double*
; Matched:\<badref\>:  store double %var_2_478, double* %var_2_481, align 8
; store double %var_2_282, double* %var_2_285, align 8
%var_2_286 = load i64, i64* %RBP.i, align 8
%var_2_287 = add i64 %var_2_286, -16
%var_2_288 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_4179:  %var_2_4179 = add i64 %var_2_4178, 4
; %var_2_289 = add i64 %var_2_288, 4
; Matched:\<badref\>:  store i64 %var_2_1917, i64* %PC, align 8
; store i64 %var_2_289, i64* %var_2_3, align 8
%var_2_290 = inttoptr i64 %var_2_287 to i64*
%var_2_291 = load i64, i64* %var_2_290, align 8
; Matched:\<badref\>:  store i64 %var_2_3618, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_291, i64* %RCX.i2236, align 8
%var_2_292 = add i64 %var_2_286, -28
; Matched:%var_2_238:  %var_2_238 = add i64 %var_2_233, 7
; %var_2_293 = add i64 %var_2_288, 7
; Matched:\<badref\>:  store i64 %var_2_3173, i64* %PC, align 8
; store i64 %var_2_293, i64* %var_2_3, align 8
%var_2_294 = inttoptr i64 %var_2_292 to i32*
%var_2_295 = load i32, i32* %var_2_294, align 4
%var_2_296 = add i32 %var_2_295, 1
; Matched:%var_2_947:  %var_2_947 = zext i32 %var_2_946 to i64
; %var_2_297 = zext i32 %var_2_296 to i64
; Matched:\<badref\>:  store i64 %var_2_947, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_297, i64* %RAX.i2224, align 8
; Matched:%var_2_948:  %var_2_948 = icmp eq i32 %var_2_945, -1
; %var_2_298 = icmp eq i32 %var_2_295, -1
; Matched:%var_2_3066:  %var_2_3066 = icmp eq i32 %var_2_3063, 0
; %var_2_299 = icmp eq i32 %var_2_296, 0
; Matched:%var_2_950:  %var_2_950 = or i1 %var_2_948, %var_2_949
; %var_2_300 = or i1 %var_2_298, %var_2_299
; Matched:%var_2_2955:  %var_2_2955 = zext i1 %var_2_2954 to i8
; %var_2_301 = zext i1 %var_2_300 to i8
; Matched:\<badref\>:  store i8 %var_2_951, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_301, i8* %var_2_14, align 1
; Matched:%var_2_1963:  %var_2_1963 = and i32 %var_2_1957, 255
; %var_2_302 = and i32 %var_2_296, 255
; Matched:%var_2_4341:  %var_2_4341 = tail call i32 @llvm.ctpop.i32(i32 %var_2_4340) #14
; %var_2_303 = tail call i32 @llvm.ctpop.i32(i32 %var_2_302)
; Matched:%var_2_500:  %var_2_500 = trunc i32 %var_2_499 to i8
; %var_2_304 = trunc i32 %var_2_303 to i8
; Matched:%var_2_614:  %var_2_614 = and i8 %var_2_613, 1
; %var_2_305 = and i8 %var_2_304, 1
; Matched:%var_2_615:  %var_2_615 = xor i8 %var_2_614, 1
; %var_2_306 = xor i8 %var_2_305, 1
; Matched:\<badref\>:  store i8 %var_2_502, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_306, i8* %var_2_21, align 1
; Matched:%var_2_3891:  %var_2_3891 = xor i32 %var_2_3880, %var_2_3879
; %var_2_307 = xor i32 %var_2_296, %var_2_295
; Matched:%var_2_504:  %var_2_504 = lshr i32 %var_2_503, 4
; %var_2_308 = lshr i32 %var_2_307, 4
; Matched:%var_2_2963:  %var_2_2963 = trunc i32 %var_2_2962 to i8
; %var_2_309 = trunc i32 %var_2_308 to i8
; Matched:%var_2_960:  %var_2_960 = and i8 %var_2_959, 1
; %var_2_310 = and i8 %var_2_309, 1
; Matched:\<badref\>:  store i8 %var_2_960, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_310, i8* %var_2_27, align 1
; Matched:%var_2_961:  %var_2_961 = zext i1 %var_2_949 to i8
; %var_2_311 = zext i1 %var_2_299 to i8
; Matched:\<badref\>:  store i8 %var_2_507, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_311, i8* %var_2_30, align 1
; Matched:%var_2_508:  %var_2_508 = lshr i32 %var_2_492, 31
; %var_2_312 = lshr i32 %var_2_296, 31
; Matched:%var_2_963:  %var_2_963 = trunc i32 %var_2_962 to i8
; %var_2_313 = trunc i32 %var_2_312 to i8
; Matched:\<badref\>:  store i8 %var_2_622, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_313, i8* %var_2_33, align 1
; Matched:%var_2_623:  %var_2_623 = lshr i32 %var_2_604, 31
; %var_2_314 = lshr i32 %var_2_295, 31
; Matched:%var_2_4353:  %var_2_4353 = xor i32 %var_2_4350, %var_2_4352
; %var_2_315 = xor i32 %var_2_312, %var_2_314
; Matched:%var_2_3900:  %var_2_3900 = add nuw nsw i32 %var_2_3899, %var_2_3896
; %var_2_316 = add nuw nsw i32 %var_2_315, %var_2_312
; Matched:%var_2_4355:  %var_2_4355 = icmp eq i32 %var_2_4354, 2
; %var_2_317 = icmp eq i32 %var_2_316, 2
; Matched:%var_2_4356:  %var_2_4356 = zext i1 %var_2_4355 to i8
; %var_2_318 = zext i1 %var_2_317 to i8
; Matched:\<badref\>:  store i8 %var_2_3902, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_318, i8* %var_2_39, align 1
%var_2_319 = sext i32 %var_2_296 to i64
; Matched:\<badref\>:  store i64 %var_2_515, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_319, i64* %RDX.i2239, align 8
%var_2_320 = shl nsw i64 %var_2_319, 3
%var_2_321 = add i64 %var_2_291, %var_2_320
; Matched:%var_2_1458:  %var_2_1458 = add i64 %var_2_1441, 18
; %var_2_322 = add i64 %var_2_288, 18
; Matched:\<badref\>:  store i64 %var_2_3315, i64* %PC, align 8
; store i64 %var_2_322, i64* %var_2_3, align 8
%var_2_323 = inttoptr i64 %var_2_321 to i64*
%var_2_324 = load i64, i64* %var_2_323, align 8
store i64 %var_2_324, i64* %var_2_95, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
; Matched:%var_2_4022:  %var_2_4022 = add i64 %var_2_3985, 22
; %var_2_325 = add i64 %var_2_288, 22
; Matched:\<badref\>:  store i64 %var_2_4248, i64* %PC, align 8
; store i64 %var_2_325, i64* %var_2_3, align 8
%var_2_326 = load i64, i64* %var_2_290, align 8
; Matched:\<badref\>:  store i64 %var_2_4416, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_326, i64* %RCX.i2236, align 8
%var_2_327 = add i64 %var_2_286, -32
; Matched:%var_2_863:  %var_2_863 = add i64 %var_2_823, 25
; %var_2_328 = add i64 %var_2_288, 25
; Matched:\<badref\>:  store i64 %var_2_637, i64* %PC, align 8
; store i64 %var_2_328, i64* %var_2_3, align 8
%var_2_329 = inttoptr i64 %var_2_327 to i32*
%var_2_330 = load i32, i32* %var_2_329, align 4
%var_2_331 = add i32 %var_2_330, 1
; Matched:%var_2_528:  %var_2_528 = zext i32 %var_2_527 to i64
; %var_2_332 = zext i32 %var_2_331 to i64
; Matched:\<badref\>:  store i64 %var_2_528, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_332, i64* %RAX.i2224, align 8
; Matched:%var_2_2570:  %var_2_2570 = icmp eq i32 %var_2_2567, -1
; %var_2_333 = icmp eq i32 %var_2_330, -1
; Matched:%var_2_2571:  %var_2_2571 = icmp eq i32 %var_2_2568, 0
; %var_2_334 = icmp eq i32 %var_2_331, 0
; Matched:%var_2_2572:  %var_2_2572 = or i1 %var_2_2570, %var_2_2571
; %var_2_335 = or i1 %var_2_333, %var_2_334
; Matched:%var_2_532:  %var_2_532 = zext i1 %var_2_531 to i8
; %var_2_336 = zext i1 %var_2_335 to i8
; Matched:\<badref\>:  store i8 %var_2_2573, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_336, i8* %var_2_14, align 1
; Matched:%var_2_533:  %var_2_533 = and i32 %var_2_527, 255
; %var_2_337 = and i32 %var_2_331, 255
; Matched:%var_2_4589:  %var_2_4589 = tail call i32 @llvm.ctpop.i32(i32 %var_2_4588) #14
; %var_2_338 = tail call i32 @llvm.ctpop.i32(i32 %var_2_337)
; Matched:%var_2_535:  %var_2_535 = trunc i32 %var_2_534 to i8
; %var_2_339 = trunc i32 %var_2_338 to i8
; Matched:%var_2_536:  %var_2_536 = and i8 %var_2_535, 1
; %var_2_340 = and i8 %var_2_339, 1
; Matched:%var_2_4592:  %var_2_4592 = xor i8 %var_2_4591, 1
; %var_2_341 = xor i8 %var_2_340, 1
; Matched:\<badref\>:  store i8 %var_2_537, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_341, i8* %var_2_21, align 1
; Matched:%var_2_1145:  %var_2_1145 = xor i32 %var_2_1134, %var_2_1133
; %var_2_342 = xor i32 %var_2_331, %var_2_330
; Matched:%var_2_1146:  %var_2_1146 = lshr i32 %var_2_1145, 4
; %var_2_343 = lshr i32 %var_2_342, 4
; Matched:%var_2_653:  %var_2_653 = trunc i32 %var_2_652 to i8
; %var_2_344 = trunc i32 %var_2_343 to i8
; Matched:%var_2_654:  %var_2_654 = and i8 %var_2_653, 1
; %var_2_345 = and i8 %var_2_344, 1
; Matched:\<badref\>:  store i8 %var_2_654, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_345, i8* %var_2_27, align 1
; Matched:%var_2_2583:  %var_2_2583 = zext i1 %var_2_2571 to i8
; %var_2_346 = zext i1 %var_2_334 to i8
; Matched:\<badref\>:  store i8 %var_2_2583, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_346, i8* %var_2_30, align 1
; Matched:%var_2_2584:  %var_2_2584 = lshr i32 %var_2_2568, 31
; %var_2_347 = lshr i32 %var_2_331, 31
; Matched:%var_2_657:  %var_2_657 = trunc i32 %var_2_656 to i8
; %var_2_348 = trunc i32 %var_2_347 to i8
; Matched:\<badref\>:  store i8 %var_2_1896, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_348, i8* %var_2_33, align 1
; Matched:%var_2_2586:  %var_2_2586 = lshr i32 %var_2_2567, 31
; %var_2_349 = lshr i32 %var_2_330, 31
; Matched:%var_2_546:  %var_2_546 = xor i32 %var_2_543, %var_2_545
; %var_2_350 = xor i32 %var_2_347, %var_2_349
; Matched:%var_2_2588:  %var_2_2588 = add nuw nsw i32 %var_2_2587, %var_2_2584
; %var_2_351 = add nuw nsw i32 %var_2_350, %var_2_347
; Matched:%var_2_661:  %var_2_661 = icmp eq i32 %var_2_660, 2
; %var_2_352 = icmp eq i32 %var_2_351, 2
; Matched:%var_2_1156:  %var_2_1156 = zext i1 %var_2_1155 to i8
; %var_2_353 = zext i1 %var_2_352 to i8
; Matched:\<badref\>:  store i8 %var_2_2590, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_353, i8* %var_2_39, align 1
%var_2_354 = sext i32 %var_2_331 to i64
; Matched:\<badref\>:  store i64 %var_2_550, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_354, i64* %RDX.i2239, align 8
%var_2_355 = shl nsw i64 %var_2_354, 3
%var_2_356 = add i64 %var_2_326, %var_2_355
; Matched:%var_2_3350:  %var_2_3350 = add i64 %var_2_3281, 36
; %var_2_357 = add i64 %var_2_288, 36
; Matched:\<badref\>:  store i64 %var_2_3124, i64* %PC, align 8
; store i64 %var_2_357, i64* %var_2_3, align 8
%var_2_358 = bitcast i64 %var_2_324 to double
%var_2_359 = inttoptr i64 %var_2_356 to double*
%var_2_360 = load double, double* %var_2_359, align 8
%var_2_361 = fadd double %var_2_358, %var_2_360
store double %var_2_361, double* %var_2_94, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
; Matched:%var_2_3946:  %var_2_3946 = load i64, i64* %RBP, align 8
; %var_2_362 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_3947:  %var_2_3947 = add i64 %var_2_3946, -128
; %var_2_363 = add i64 %var_2_362, -128
; Matched:%var_2_1912:  %var_2_1912 = add i64 %var_2_1836, 41
; %var_2_364 = add i64 %var_2_288, 41
; Matched:\<badref\>:  store i64 %var_2_3018, i64* %PC, align 8
; store i64 %var_2_364, i64* %var_2_3, align 8
; Matched:%var_2_561:  %var_2_561 = inttoptr i64 %var_2_559 to double*
; %var_2_365 = inttoptr i64 %var_2_363 to double*
; Matched:\<badref\>:  store double %var_2_557, double* %var_2_561, align 8
; store double %var_2_361, double* %var_2_365, align 8
%var_2_366 = load i64, i64* %RBP.i, align 8
%var_2_367 = add i64 %var_2_366, -16
%var_2_368 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2176:  %var_2_2176 = add i64 %var_2_2175, 4
; %var_2_369 = add i64 %var_2_368, 4
; Matched:\<badref\>:  store i64 %var_2_2176, i64* %PC, align 8
; store i64 %var_2_369, i64* %var_2_3, align 8
%var_2_370 = inttoptr i64 %var_2_367 to i64*
%var_2_371 = load i64, i64* %var_2_370, align 8
; Matched:\<badref\>:  store i64 %var_2_3967, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_371, i64* %RCX.i2236, align 8
%var_2_372 = add i64 %var_2_366, -28
%var_2_373 = add i64 %var_2_368, 8
store i64 %var_2_373, i64* %var_2_3, align 8
%var_2_374 = inttoptr i64 %var_2_372 to i32*
%var_2_375 = load i32, i32* %var_2_374, align 4
%var_2_376 = sext i32 %var_2_375 to i64
; Matched:\<badref\>:  store i64 %var_2_572, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_376, i64* %RDX.i2239, align 8
%var_2_377 = shl nsw i64 %var_2_376, 3
%var_2_378 = add i64 %var_2_377, %var_2_371
; Matched:%var_2_462:  %var_2_462 = add i64 %var_2_451, 13
; %var_2_379 = add i64 %var_2_368, 13
; Matched:\<badref\>:  store i64 %var_2_462, i64* %PC, align 8
; store i64 %var_2_379, i64* %var_2_3, align 8
%var_2_380 = inttoptr i64 %var_2_378 to i64*
%var_2_381 = load i64, i64* %var_2_380, align 8
store i64 %var_2_381, i64* %var_2_95, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
; Matched:%var_2_914:  %var_2_914 = add i64 %var_2_903, 17
; %var_2_382 = add i64 %var_2_368, 17
; Matched:\<badref\>:  store i64 %var_2_914, i64* %PC, align 8
; store i64 %var_2_382, i64* %var_2_3, align 8
%var_2_383 = load i64, i64* %var_2_370, align 8
; Matched:\<badref\>:  store i64 %var_2_1098, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_383, i64* %RCX.i2236, align 8
%var_2_384 = add i64 %var_2_366, -32
; Matched:%var_2_4082:  %var_2_4082 = add i64 %var_2_4065, 21
; %var_2_385 = add i64 %var_2_368, 21
; Matched:\<badref\>:  store i64 %var_2_4082, i64* %PC, align 8
; store i64 %var_2_385, i64* %var_2_3, align 8
%var_2_386 = inttoptr i64 %var_2_384 to i32*
%var_2_387 = load i32, i32* %var_2_386, align 4
%var_2_388 = sext i32 %var_2_387 to i64
; Matched:\<badref\>:  store i64 %var_2_3859, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_388, i64* %RDX.i2239, align 8
%var_2_389 = shl nsw i64 %var_2_388, 3
%var_2_390 = add i64 %var_2_389, %var_2_383
; Matched:%var_2_1826:  %var_2_1826 = add i64 %var_2_1803, 26
; %var_2_391 = add i64 %var_2_368, 26
; Matched:\<badref\>:  store i64 %var_2_2052, i64* %PC, align 8
; store i64 %var_2_391, i64* %var_2_3, align 8
%var_2_392 = bitcast i64 %var_2_381 to double
%var_2_393 = inttoptr i64 %var_2_390 to double*
%var_2_394 = load double, double* %var_2_393, align 8
%var_2_395 = fsub double %var_2_392, %var_2_394
store double %var_2_395, double* %var_2_94, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
; Matched:%var_2_3980:  %var_2_3980 = add i64 %var_2_3950, -136
; %var_2_396 = add i64 %var_2_366, -136
; Matched:%var_2_593:  %var_2_593 = add i64 %var_2_564, 34
; %var_2_397 = add i64 %var_2_368, 34
; Matched:\<badref\>:  store i64 %var_2_593, i64* %PC, align 8
; store i64 %var_2_397, i64* %var_2_3, align 8
; Matched:%var_2_594:  %var_2_594 = inttoptr i64 %var_2_592 to double*
; %var_2_398 = inttoptr i64 %var_2_396 to double*
; Matched:\<badref\>:  store double %var_2_3049, double* %var_2_3052, align 8
; store double %var_2_395, double* %var_2_398, align 8
%var_2_399 = load i64, i64* %RBP.i, align 8
%var_2_400 = add i64 %var_2_399, -16
%var_2_401 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_215:  %var_2_215 = add i64 %var_2_214, 4
; %var_2_402 = add i64 %var_2_401, 4
; Matched:\<badref\>:  store i64 %var_2_215, i64* %PC, align 8
; store i64 %var_2_402, i64* %var_2_3, align 8
%var_2_403 = inttoptr i64 %var_2_400 to i64*
%var_2_404 = load i64, i64* %var_2_403, align 8
; Matched:\<badref\>:  store i64 %var_2_2924, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_404, i64* %RCX.i2236, align 8
%var_2_405 = add i64 %var_2_399, -28
; Matched:%var_2_602:  %var_2_602 = add i64 %var_2_597, 7
; %var_2_406 = add i64 %var_2_401, 7
; Matched:\<badref\>:  store i64 %var_2_238, i64* %PC, align 8
; store i64 %var_2_406, i64* %var_2_3, align 8
%var_2_407 = inttoptr i64 %var_2_405 to i32*
%var_2_408 = load i32, i32* %var_2_407, align 4
%var_2_409 = add i32 %var_2_408, 1
; Matched:%var_2_606:  %var_2_606 = zext i32 %var_2_605 to i64
; %var_2_410 = zext i32 %var_2_409 to i64
; Matched:\<badref\>:  store i64 %var_2_606, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_410, i64* %RAX.i2224, align 8
; Matched:%var_2_607:  %var_2_607 = icmp eq i32 %var_2_604, -1
; %var_2_411 = icmp eq i32 %var_2_408, -1
; Matched:%var_2_949:  %var_2_949 = icmp eq i32 %var_2_946, 0
; %var_2_412 = icmp eq i32 %var_2_409, 0
; Matched:%var_2_609:  %var_2_609 = or i1 %var_2_607, %var_2_608
; %var_2_413 = or i1 %var_2_411, %var_2_412
; Matched:%var_2_951:  %var_2_951 = zext i1 %var_2_950 to i8
; %var_2_414 = zext i1 %var_2_413 to i8
; Matched:\<badref\>:  store i8 %var_2_610, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_414, i8* %var_2_14, align 1
; Matched:%var_2_498:  %var_2_498 = and i32 %var_2_492, 255
; %var_2_415 = and i32 %var_2_409, 255
; Matched:%var_2_3887:  %var_2_3887 = tail call i32 @llvm.ctpop.i32(i32 %var_2_3886) #14
; %var_2_416 = tail call i32 @llvm.ctpop.i32(i32 %var_2_415)
; Matched:%var_2_4342:  %var_2_4342 = trunc i32 %var_2_4341 to i8
; %var_2_417 = trunc i32 %var_2_416 to i8
; Matched:%var_2_501:  %var_2_501 = and i8 %var_2_500, 1
; %var_2_418 = and i8 %var_2_417, 1
; Matched:%var_2_956:  %var_2_956 = xor i8 %var_2_955, 1
; %var_2_419 = xor i8 %var_2_418, 1
; Matched:\<badref\>:  store i8 %var_2_615, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_419, i8* %var_2_21, align 1
; Matched:%var_2_616:  %var_2_616 = xor i32 %var_2_605, %var_2_604
; %var_2_420 = xor i32 %var_2_409, %var_2_408
; Matched:%var_2_617:  %var_2_617 = lshr i32 %var_2_616, 4
; %var_2_421 = lshr i32 %var_2_420, 4
; Matched:%var_2_618:  %var_2_618 = trunc i32 %var_2_617 to i8
; %var_2_422 = trunc i32 %var_2_421 to i8
; Matched:%var_2_619:  %var_2_619 = and i8 %var_2_618, 1
; %var_2_423 = and i8 %var_2_422, 1
; Matched:\<badref\>:  store i8 %var_2_619, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_423, i8* %var_2_27, align 1
; Matched:%var_2_620:  %var_2_620 = zext i1 %var_2_608 to i8
; %var_2_424 = zext i1 %var_2_412 to i8
; Matched:\<badref\>:  store i8 %var_2_620, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_424, i8* %var_2_30, align 1
; Matched:%var_2_621:  %var_2_621 = lshr i32 %var_2_605, 31
; %var_2_425 = lshr i32 %var_2_409, 31
; Matched:%var_2_622:  %var_2_622 = trunc i32 %var_2_621 to i8
; %var_2_426 = trunc i32 %var_2_425 to i8
; Matched:\<badref\>:  store i8 %var_2_4351, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_426, i8* %var_2_33, align 1
; Matched:%var_2_3898:  %var_2_3898 = lshr i32 %var_2_3879, 31
; %var_2_427 = lshr i32 %var_2_408, 31
; Matched:%var_2_3899:  %var_2_3899 = xor i32 %var_2_3896, %var_2_3898
; %var_2_428 = xor i32 %var_2_425, %var_2_427
; Matched:%var_2_4354:  %var_2_4354 = add nuw nsw i32 %var_2_4353, %var_2_4350
; %var_2_429 = add nuw nsw i32 %var_2_428, %var_2_425
; Matched:%var_2_3901:  %var_2_3901 = icmp eq i32 %var_2_3900, 2
; %var_2_430 = icmp eq i32 %var_2_429, 2
; Matched:%var_2_4015:  %var_2_4015 = zext i1 %var_2_4014 to i8
; %var_2_431 = zext i1 %var_2_430 to i8
; Matched:\<badref\>:  store i8 %var_2_4015, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_431, i8* %var_2_39, align 1
%var_2_432 = sext i32 %var_2_409 to i64
; Matched:\<badref\>:  store i64 %var_2_628, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_432, i64* %RDX.i2239, align 8
%var_2_433 = shl nsw i64 %var_2_432, 3
%var_2_434 = add i64 %var_2_404, %var_2_433
; Matched:%var_2_4245:  %var_2_4245 = add i64 %var_2_4211, 18
; %var_2_435 = add i64 %var_2_401, 18
; Matched:\<badref\>:  store i64 %var_2_4245, i64* %PC, align 8
; store i64 %var_2_435, i64* %var_2_3, align 8
%var_2_436 = inttoptr i64 %var_2_434 to i64*
%var_2_437 = load i64, i64* %var_2_436, align 8
store i64 %var_2_437, i64* %var_2_95, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
; Matched:%var_2_4248:  %var_2_4248 = add i64 %var_2_4211, 22
; %var_2_438 = add i64 %var_2_401, 22
; Matched:\<badref\>:  store i64 %var_2_1986, i64* %PC, align 8
; store i64 %var_2_438, i64* %var_2_3, align 8
%var_2_439 = load i64, i64* %var_2_403, align 8
; Matched:\<badref\>:  store i64 %var_2_3545, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_439, i64* %RCX.i2236, align 8
%var_2_440 = add i64 %var_2_399, -32
; Matched:%var_2_4025:  %var_2_4025 = add i64 %var_2_3985, 25
; %var_2_441 = add i64 %var_2_401, 25
; Matched:\<badref\>:  store i64 %var_2_863, i64* %PC, align 8
; store i64 %var_2_441, i64* %var_2_3, align 8
%var_2_442 = inttoptr i64 %var_2_440 to i32*
%var_2_443 = load i32, i32* %var_2_442, align 4
%var_2_444 = add i32 %var_2_443, 1
; Matched:%var_2_4583:  %var_2_4583 = zext i32 %var_2_4582 to i64
; %var_2_445 = zext i32 %var_2_444 to i64
; Matched:\<badref\>:  store i64 %var_2_4583, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_445, i64* %RAX.i2224, align 8
; Matched:%var_2_529:  %var_2_529 = icmp eq i32 %var_2_526, -1
; %var_2_446 = icmp eq i32 %var_2_443, -1
; Matched:%var_2_530:  %var_2_530 = icmp eq i32 %var_2_527, 0
; %var_2_447 = icmp eq i32 %var_2_444, 0
; Matched:%var_2_531:  %var_2_531 = or i1 %var_2_529, %var_2_530
; %var_2_448 = or i1 %var_2_446, %var_2_447
; Matched:%var_2_2573:  %var_2_2573 = zext i1 %var_2_2572 to i8
; %var_2_449 = zext i1 %var_2_448 to i8
; Matched:\<badref\>:  store i8 %var_2_645, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_449, i8* %var_2_14, align 1
; Matched:%var_2_2574:  %var_2_2574 = and i32 %var_2_2568, 255
; %var_2_450 = and i32 %var_2_444, 255
; Matched:%var_2_534:  %var_2_534 = tail call i32 @llvm.ctpop.i32(i32 %var_2_533) #14
; %var_2_451 = tail call i32 @llvm.ctpop.i32(i32 %var_2_450)
; Matched:%var_2_648:  %var_2_648 = trunc i32 %var_2_647 to i8
; %var_2_452 = trunc i32 %var_2_451 to i8
; Matched:%var_2_4591:  %var_2_4591 = and i8 %var_2_4590, 1
; %var_2_453 = and i8 %var_2_452, 1
; Matched:%var_2_650:  %var_2_650 = xor i8 %var_2_649, 1
; %var_2_454 = xor i8 %var_2_453, 1
; Matched:\<badref\>:  store i8 %var_2_650, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_454, i8* %var_2_21, align 1
; Matched:%var_2_651:  %var_2_651 = xor i32 %var_2_640, %var_2_639
; %var_2_455 = xor i32 %var_2_444, %var_2_443
; Matched:%var_2_539:  %var_2_539 = lshr i32 %var_2_538, 4
; %var_2_456 = lshr i32 %var_2_455, 4
; Matched:%var_2_1147:  %var_2_1147 = trunc i32 %var_2_1146 to i8
; %var_2_457 = trunc i32 %var_2_456 to i8
; Matched:%var_2_2582:  %var_2_2582 = and i8 %var_2_2581, 1
; %var_2_458 = and i8 %var_2_457, 1
; Matched:\<badref\>:  store i8 %var_2_2582, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_458, i8* %var_2_27, align 1
; Matched:%var_2_542:  %var_2_542 = zext i1 %var_2_530 to i8
; %var_2_459 = zext i1 %var_2_447 to i8
; Matched:\<badref\>:  store i8 %var_2_542, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_459, i8* %var_2_30, align 1
; Matched:%var_2_543:  %var_2_543 = lshr i32 %var_2_527, 31
; %var_2_460 = lshr i32 %var_2_444, 31
; Matched:%var_2_2585:  %var_2_2585 = trunc i32 %var_2_2584 to i8
; %var_2_461 = trunc i32 %var_2_460 to i8
; Matched:\<badref\>:  store i8 %var_2_1151, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_461, i8* %var_2_33, align 1
; Matched:%var_2_4600:  %var_2_4600 = lshr i32 %var_2_4581, 31
; %var_2_462 = lshr i32 %var_2_443, 31
; Matched:%var_2_4601:  %var_2_4601 = xor i32 %var_2_4598, %var_2_4600
; %var_2_463 = xor i32 %var_2_460, %var_2_462
; Matched:%var_2_660:  %var_2_660 = add nuw nsw i32 %var_2_659, %var_2_656
; %var_2_464 = add nuw nsw i32 %var_2_463, %var_2_460
; Matched:%var_2_1155:  %var_2_1155 = icmp eq i32 %var_2_1154, 2
; %var_2_465 = icmp eq i32 %var_2_464, 2
; Matched:%var_2_2590:  %var_2_2590 = zext i1 %var_2_2589 to i8
; %var_2_466 = zext i1 %var_2_465 to i8
; Matched:\<badref\>:  store i8 %var_2_549, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_466, i8* %var_2_39, align 1
%var_2_467 = sext i32 %var_2_444 to i64
; Matched:\<badref\>:  store i64 %var_2_3573, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_467, i64* %RDX.i2239, align 8
%var_2_468 = shl nsw i64 %var_2_467, 3
%var_2_469 = add i64 %var_2_439, %var_2_468
; Matched:%var_2_553:  %var_2_553 = add i64 %var_2_484, 36
; %var_2_470 = add i64 %var_2_401, 36
; Matched:\<badref\>:  store i64 %var_2_3350, i64* %PC, align 8
; store i64 %var_2_470, i64* %var_2_3, align 8
%var_2_471 = bitcast i64 %var_2_437 to double
%var_2_472 = inttoptr i64 %var_2_469 to double*
%var_2_473 = load double, double* %var_2_472, align 8
%var_2_474 = fsub double %var_2_471, %var_2_473
store double %var_2_474, double* %var_2_94, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
; Matched:%var_2_671:  %var_2_671 = load i64, i64* %RBP, align 8
; %var_2_475 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_4060:  %var_2_4060 = add i64 %var_2_4059, -144
; %var_2_476 = add i64 %var_2_475, -144
; Matched:%var_2_4061:  %var_2_4061 = add i64 %var_2_3985, 44
; %var_2_477 = add i64 %var_2_401, 44
; Matched:\<badref\>:  store i64 %var_2_4061, i64* %PC, align 8
; store i64 %var_2_477, i64* %var_2_3, align 8
; Matched:%var_2_674:  %var_2_674 = inttoptr i64 %var_2_672 to double*
; %var_2_478 = inttoptr i64 %var_2_476 to double*
; Matched:\<badref\>:  store double %var_2_670, double* %var_2_674, align 8
; store double %var_2_474, double* %var_2_478, align 8
%var_2_479 = load i64, i64* %RBP.i, align 8
%var_2_480 = add i64 %var_2_479, -16
%var_2_481 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_4099:  %var_2_4099 = add i64 %var_2_4098, 4
; %var_2_482 = add i64 %var_2_481, 4
; Matched:\<badref\>:  store i64 %var_2_4099, i64* %PC, align 8
; store i64 %var_2_482, i64* %var_2_3, align 8
%var_2_483 = inttoptr i64 %var_2_480 to i64*
%var_2_484 = load i64, i64* %var_2_483, align 8
; Matched:\<badref\>:  store i64 %var_2_4541, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_484, i64* %RCX.i2236, align 8
%var_2_485 = add i64 %var_2_479, -36
%var_2_486 = add i64 %var_2_481, 8
store i64 %var_2_486, i64* %var_2_3, align 8
%var_2_487 = inttoptr i64 %var_2_485 to i32*
%var_2_488 = load i32, i32* %var_2_487, align 4
%var_2_489 = sext i32 %var_2_488 to i64
; Matched:\<badref\>:  store i64 %var_2_685, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_489, i64* %RDX.i2239, align 8
%var_2_490 = shl nsw i64 %var_2_489, 3
%var_2_491 = add i64 %var_2_490, %var_2_484
; Matched:%var_2_933:  %var_2_933 = add i64 %var_2_928, 13
; %var_2_492 = add i64 %var_2_481, 13
; Matched:\<badref\>:  store i64 %var_2_933, i64* %PC, align 8
; store i64 %var_2_492, i64* %var_2_3, align 8
%var_2_493 = inttoptr i64 %var_2_491 to i64*
%var_2_494 = load i64, i64* %var_2_493, align 8
store i64 %var_2_494, i64* %var_2_95, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
; Matched:%var_2_3397:  %var_2_3397 = add i64 %var_2_3386, 17
; %var_2_495 = add i64 %var_2_481, 17
; Matched:\<badref\>:  store i64 %var_2_3397, i64* %PC, align 8
; store i64 %var_2_495, i64* %var_2_3, align 8
%var_2_496 = load i64, i64* %var_2_483, align 8
; Matched:\<badref\>:  store i64 %var_2_3472, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_496, i64* %RCX.i2236, align 8
%var_2_497 = add i64 %var_2_479, -40
; Matched:%var_2_581:  %var_2_581 = add i64 %var_2_564, 21
; %var_2_498 = add i64 %var_2_481, 21
; Matched:\<badref\>:  store i64 %var_2_581, i64* %PC, align 8
; store i64 %var_2_498, i64* %var_2_3, align 8
%var_2_499 = inttoptr i64 %var_2_497 to i32*
%var_2_500 = load i32, i32* %var_2_499, align 4
%var_2_501 = sext i32 %var_2_500 to i64
; Matched:\<badref\>:  store i64 %var_2_697, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_501, i64* %RDX.i2239, align 8
%var_2_502 = shl nsw i64 %var_2_501, 3
%var_2_503 = add i64 %var_2_502, %var_2_496
; Matched:%var_2_3271:  %var_2_3271 = add i64 %var_2_3248, 26
; %var_2_504 = add i64 %var_2_481, 26
; Matched:\<badref\>:  store i64 %var_2_474, i64* %PC, align 8
; store i64 %var_2_504, i64* %var_2_3, align 8
%var_2_505 = bitcast i64 %var_2_494 to double
%var_2_506 = inttoptr i64 %var_2_503 to double*
%var_2_507 = load double, double* %var_2_506, align 8
%var_2_508 = fadd double %var_2_505, %var_2_507
store double %var_2_508, double* %var_2_94, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
; Matched:%var_2_3163:  %var_2_3163 = add i64 %var_2_3133, -152
; %var_2_509 = add i64 %var_2_479, -152
; Matched:%var_2_706:  %var_2_706 = add i64 %var_2_677, 34
; %var_2_510 = add i64 %var_2_481, 34
; Matched:\<badref\>:  store i64 %var_2_706, i64* %PC, align 8
; store i64 %var_2_510, i64* %var_2_3, align 8
; Matched:%var_2_3165:  %var_2_3165 = inttoptr i64 %var_2_3163 to double*
; %var_2_511 = inttoptr i64 %var_2_509 to double*
; Matched:\<badref\>:  store double %var_2_3162, double* %var_2_3165, align 8
; store double %var_2_508, double* %var_2_511, align 8
%var_2_512 = load i64, i64* %RBP.i, align 8
%var_2_513 = add i64 %var_2_512, -16
%var_2_514 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_56:  %var_2_56 = add i64 %var_2_55, 4
; %var_2_515 = add i64 %var_2_514, 4
; Matched:\<badref\>:  store i64 %var_2_56, i64* %PC, align 8
; store i64 %var_2_515, i64* %var_2_3, align 8
%var_2_516 = inttoptr i64 %var_2_513 to i64*
%var_2_517 = load i64, i64* %var_2_516, align 8
; Matched:\<badref\>:  store i64 %var_2_2980, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_517, i64* %RCX.i2236, align 8
%var_2_518 = add i64 %var_2_512, -36
; Matched:%var_2_1405:  %var_2_1405 = add i64 %var_2_1400, 7
; %var_2_519 = add i64 %var_2_514, 7
; Matched:\<badref\>:  store i64 %var_2_602, i64* %PC, align 8
; store i64 %var_2_519, i64* %var_2_3, align 8
%var_2_520 = inttoptr i64 %var_2_518 to i32*
%var_2_521 = load i32, i32* %var_2_520, align 4
%var_2_522 = add i32 %var_2_521, 1
; Matched:%var_2_832:  %var_2_832 = zext i32 %var_2_831 to i64
; %var_2_523 = zext i32 %var_2_522 to i64
; Matched:\<badref\>:  store i64 %var_2_832, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_523, i64* %RAX.i2224, align 8
; Matched:%var_2_720:  %var_2_720 = icmp eq i32 %var_2_717, -1
; %var_2_524 = icmp eq i32 %var_2_521, -1
; Matched:%var_2_721:  %var_2_721 = icmp eq i32 %var_2_718, 0
; %var_2_525 = icmp eq i32 %var_2_522, 0
; Matched:%var_2_722:  %var_2_722 = or i1 %var_2_720, %var_2_721
; %var_2_526 = or i1 %var_2_524, %var_2_525
; Matched:%var_2_723:  %var_2_723 = zext i1 %var_2_722 to i8
; %var_2_527 = zext i1 %var_2_526 to i8
; Matched:\<badref\>:  store i8 %var_2_723, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_527, i8* %var_2_14, align 1
; Matched:%var_2_724:  %var_2_724 = and i32 %var_2_718, 255
; %var_2_528 = and i32 %var_2_522, 255
; Matched:%var_2_725:  %var_2_725 = tail call i32 @llvm.ctpop.i32(i32 %var_2_724) #14
; %var_2_529 = tail call i32 @llvm.ctpop.i32(i32 %var_2_528)
; Matched:%var_2_726:  %var_2_726 = trunc i32 %var_2_725 to i8
; %var_2_530 = trunc i32 %var_2_529 to i8
; Matched:%var_2_840:  %var_2_840 = and i8 %var_2_839, 1
; %var_2_531 = and i8 %var_2_530, 1
; Matched:%var_2_4116:  %var_2_4116 = xor i8 %var_2_4115, 1
; %var_2_532 = xor i8 %var_2_531, 1
; Matched:\<badref\>:  store i8 %var_2_841, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_532, i8* %var_2_21, align 1
; Matched:%var_2_729:  %var_2_729 = xor i32 %var_2_718, %var_2_717
; %var_2_533 = xor i32 %var_2_522, %var_2_521
; Matched:%var_2_730:  %var_2_730 = lshr i32 %var_2_729, 4
; %var_2_534 = lshr i32 %var_2_533, 4
; Matched:%var_2_731:  %var_2_731 = trunc i32 %var_2_730 to i8
; %var_2_535 = trunc i32 %var_2_534 to i8
; Matched:%var_2_732:  %var_2_732 = and i8 %var_2_731, 1
; %var_2_536 = and i8 %var_2_535, 1
; Matched:\<badref\>:  store i8 %var_2_732, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_536, i8* %var_2_27, align 1
; Matched:%var_2_733:  %var_2_733 = zext i1 %var_2_721 to i8
; %var_2_537 = zext i1 %var_2_525 to i8
; Matched:\<badref\>:  store i8 %var_2_733, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_537, i8* %var_2_30, align 1
; Matched:%var_2_734:  %var_2_734 = lshr i32 %var_2_718, 31
; %var_2_538 = lshr i32 %var_2_522, 31
; Matched:%var_2_848:  %var_2_848 = trunc i32 %var_2_847 to i8
; %var_2_539 = trunc i32 %var_2_538 to i8
; Matched:\<badref\>:  store i8 %var_2_735, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_539, i8* %var_2_33, align 1
; Matched:%var_2_849:  %var_2_849 = lshr i32 %var_2_830, 31
; %var_2_540 = lshr i32 %var_2_521, 31
; Matched:%var_2_850:  %var_2_850 = xor i32 %var_2_847, %var_2_849
; %var_2_541 = xor i32 %var_2_538, %var_2_540
; Matched:%var_2_4126:  %var_2_4126 = add nuw nsw i32 %var_2_4125, %var_2_4122
; %var_2_542 = add nuw nsw i32 %var_2_541, %var_2_538
; Matched:%var_2_4240:  %var_2_4240 = icmp eq i32 %var_2_4239, 2
; %var_2_543 = icmp eq i32 %var_2_542, 2
; Matched:%var_2_853:  %var_2_853 = zext i1 %var_2_852 to i8
; %var_2_544 = zext i1 %var_2_543 to i8
; Matched:\<badref\>:  store i8 %var_2_4128, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_544, i8* %var_2_39, align 1
%var_2_545 = sext i32 %var_2_522 to i64
; Matched:\<badref\>:  store i64 %var_2_854, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_545, i64* %RDX.i2239, align 8
%var_2_546 = shl nsw i64 %var_2_545, 3
%var_2_547 = add i64 %var_2_517, %var_2_546
; Matched:%var_2_267:  %var_2_267 = add i64 %var_2_233, 18
; %var_2_548 = add i64 %var_2_514, 18
; Matched:\<badref\>:  store i64 %var_2_267, i64* %PC, align 8
; store i64 %var_2_548, i64* %var_2_3, align 8
%var_2_549 = inttoptr i64 %var_2_547 to i64*
%var_2_550 = load i64, i64* %var_2_549, align 8
store i64 %var_2_550, i64* %var_2_95, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
; Matched:%var_2_1986:  %var_2_1986 = add i64 %var_2_1949, 22
; %var_2_551 = add i64 %var_2_514, 22
; Matched:\<badref\>:  store i64 %var_2_2212, i64* %PC, align 8
; store i64 %var_2_551, i64* %var_2_3, align 8
%var_2_552 = load i64, i64* %var_2_516, align 8
; Matched:\<badref\>:  store i64 %var_2_3593, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_552, i64* %RCX.i2236, align 8
%var_2_553 = add i64 %var_2_512, -40
; Matched:%var_2_4251:  %var_2_4251 = add i64 %var_2_4211, 25
; %var_2_554 = add i64 %var_2_514, 25
; Matched:\<badref\>:  store i64 %var_2_4025, i64* %PC, align 8
; store i64 %var_2_554, i64* %var_2_3, align 8
%var_2_555 = inttoptr i64 %var_2_553 to i32*
%var_2_556 = load i32, i32* %var_2_555, align 4
%var_2_557 = add i32 %var_2_556, 1
; Matched:%var_2_754:  %var_2_754 = zext i32 %var_2_753 to i64
; %var_2_558 = zext i32 %var_2_557 to i64
; Matched:\<badref\>:  store i64 %var_2_754, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_558, i64* %RAX.i2224, align 8
; Matched:%var_2_2695:  %var_2_2695 = icmp eq i32 %var_2_2692, -1
; %var_2_559 = icmp eq i32 %var_2_556, -1
; Matched:%var_2_756:  %var_2_756 = icmp eq i32 %var_2_753, 0
; %var_2_560 = icmp eq i32 %var_2_557, 0
; Matched:%var_2_2697:  %var_2_2697 = or i1 %var_2_2695, %var_2_2696
; %var_2_561 = or i1 %var_2_559, %var_2_560
; Matched:%var_2_758:  %var_2_758 = zext i1 %var_2_757 to i8
; %var_2_562 = zext i1 %var_2_561 to i8
; Matched:\<badref\>:  store i8 %var_2_758, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_562, i8* %var_2_14, align 1
; Matched:%var_2_872:  %var_2_872 = and i32 %var_2_866, 255
; %var_2_563 = and i32 %var_2_557, 255
; Matched:%var_2_873:  %var_2_873 = tail call i32 @llvm.ctpop.i32(i32 %var_2_872) #14
; %var_2_564 = tail call i32 @llvm.ctpop.i32(i32 %var_2_563)
; Matched:%var_2_874:  %var_2_874 = trunc i32 %var_2_873 to i8
; %var_2_565 = trunc i32 %var_2_564 to i8
; Matched:%var_2_875:  %var_2_875 = and i8 %var_2_874, 1
; %var_2_566 = and i8 %var_2_565, 1
; Matched:%var_2_763:  %var_2_763 = xor i8 %var_2_762, 1
; %var_2_567 = xor i8 %var_2_566, 1
; Matched:\<badref\>:  store i8 %var_2_763, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_567, i8* %var_2_21, align 1
; Matched:%var_2_2704:  %var_2_2704 = xor i32 %var_2_2693, %var_2_2692
; %var_2_568 = xor i32 %var_2_557, %var_2_556
; Matched:%var_2_765:  %var_2_765 = lshr i32 %var_2_764, 4
; %var_2_569 = lshr i32 %var_2_568, 4
; Matched:%var_2_3337:  %var_2_3337 = trunc i32 %var_2_3336 to i8
; %var_2_570 = trunc i32 %var_2_569 to i8
; Matched:%var_2_767:  %var_2_767 = and i8 %var_2_766, 1
; %var_2_571 = and i8 %var_2_570, 1
; Matched:\<badref\>:  store i8 %var_2_767, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_571, i8* %var_2_27, align 1
; Matched:%var_2_768:  %var_2_768 = zext i1 %var_2_756 to i8
; %var_2_572 = zext i1 %var_2_560 to i8
; Matched:\<badref\>:  store i8 %var_2_768, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_572, i8* %var_2_30, align 1
; Matched:%var_2_2709:  %var_2_2709 = lshr i32 %var_2_2693, 31
; %var_2_573 = lshr i32 %var_2_557, 31
; Matched:%var_2_2710:  %var_2_2710 = trunc i32 %var_2_2709 to i8
; %var_2_574 = trunc i32 %var_2_573 to i8
; Matched:\<badref\>:  store i8 %var_2_2710, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_574, i8* %var_2_33, align 1
; Matched:%var_2_2711:  %var_2_2711 = lshr i32 %var_2_2692, 31
; %var_2_575 = lshr i32 %var_2_556, 31
; Matched:%var_2_2712:  %var_2_2712 = xor i32 %var_2_2709, %var_2_2711
; %var_2_576 = xor i32 %var_2_573, %var_2_575
; Matched:%var_2_773:  %var_2_773 = add nuw nsw i32 %var_2_772, %var_2_769
; %var_2_577 = add nuw nsw i32 %var_2_576, %var_2_573
; Matched:%var_2_2714:  %var_2_2714 = icmp eq i32 %var_2_2713, 2
; %var_2_578 = icmp eq i32 %var_2_577, 2
; Matched:%var_2_888:  %var_2_888 = zext i1 %var_2_887 to i8
; %var_2_579 = zext i1 %var_2_578 to i8
; Matched:\<badref\>:  store i8 %var_2_2715, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_579, i8* %var_2_39, align 1
%var_2_580 = sext i32 %var_2_557 to i64
; Matched:\<badref\>:  store i64 %var_2_776, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_580, i64* %RDX.i2239, align 8
%var_2_581 = shl nsw i64 %var_2_580, 3
%var_2_582 = add i64 %var_2_552, %var_2_581
; Matched:%var_2_779:  %var_2_779 = add i64 %var_2_710, 36
; %var_2_583 = add i64 %var_2_514, 36
; Matched:\<badref\>:  store i64 %var_2_553, i64* %PC, align 8
; store i64 %var_2_583, i64* %var_2_3, align 8
%var_2_584 = bitcast i64 %var_2_550 to double
%var_2_585 = inttoptr i64 %var_2_582 to double*
%var_2_586 = load double, double* %var_2_585, align 8
%var_2_587 = fadd double %var_2_584, %var_2_586
store double %var_2_587, double* %var_2_94, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
; Matched:%var_2_784:  %var_2_784 = load i64, i64* %RBP, align 8
; %var_2_588 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_4173:  %var_2_4173 = add i64 %var_2_4172, -160
; %var_2_589 = add i64 %var_2_588, -160
; Matched:%var_2_4174:  %var_2_4174 = add i64 %var_2_4098, 44
; %var_2_590 = add i64 %var_2_514, 44
; Matched:\<badref\>:  store i64 %var_2_4174, i64* %PC, align 8
; store i64 %var_2_590, i64* %var_2_3, align 8
; Matched:%var_2_4175:  %var_2_4175 = inttoptr i64 %var_2_4173 to double*
; %var_2_591 = inttoptr i64 %var_2_589 to double*
; Matched:\<badref\>:  store double %var_2_4171, double* %var_2_4175, align 8
; store double %var_2_587, double* %var_2_591, align 8
%var_2_592 = load i64, i64* %RBP.i, align 8
%var_2_593 = add i64 %var_2_592, -16
%var_2_594 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_4212:  %var_2_4212 = add i64 %var_2_4211, 4
; %var_2_595 = add i64 %var_2_594, 4
; Matched:\<badref\>:  store i64 %var_2_4212, i64* %PC, align 8
; store i64 %var_2_595, i64* %var_2_3, align 8
%var_2_596 = inttoptr i64 %var_2_593 to i64*
%var_2_597 = load i64, i64* %var_2_596, align 8
; Matched:\<badref\>:  store i64 %var_2_3138, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_597, i64* %RCX.i2236, align 8
%var_2_598 = add i64 %var_2_592, -36
%var_2_599 = add i64 %var_2_594, 8
store i64 %var_2_599, i64* %var_2_3, align 8
%var_2_600 = inttoptr i64 %var_2_598 to i32*
%var_2_601 = load i32, i32* %var_2_600, align 4
%var_2_602 = sext i32 %var_2_601 to i64
; Matched:\<badref\>:  store i64 %var_2_798, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_602, i64* %RDX.i2239, align 8
%var_2_603 = shl nsw i64 %var_2_602, 3
%var_2_604 = add i64 %var_2_603, %var_2_597
; Matched:%var_2_688:  %var_2_688 = add i64 %var_2_677, 13
; %var_2_605 = add i64 %var_2_594, 13
; Matched:\<badref\>:  store i64 %var_2_225, i64* %PC, align 8
; store i64 %var_2_605, i64* %var_2_3, align 8
%var_2_606 = inttoptr i64 %var_2_604 to i64*
%var_2_607 = load i64, i64* %var_2_606, align 8
store i64 %var_2_607, i64* %var_2_95, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
; Matched:%var_2_3966:  %var_2_3966 = add i64 %var_2_3952, 17
; %var_2_608 = add i64 %var_2_594, 17
; Matched:\<badref\>:  store i64 %var_2_3966, i64* %PC, align 8
; store i64 %var_2_608, i64* %var_2_3, align 8
%var_2_609 = load i64, i64* %var_2_596, align 8
; Matched:\<badref\>:  store i64 %var_2_4080, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_609, i64* %RCX.i2236, align 8
%var_2_610 = add i64 %var_2_592, -40
; Matched:%var_2_1060:  %var_2_1060 = add i64 %var_2_1049, 21
; %var_2_611 = add i64 %var_2_594, 21
; Matched:\<badref\>:  store i64 %var_2_1060, i64* %PC, align 8
; store i64 %var_2_611, i64* %var_2_3, align 8
%var_2_612 = inttoptr i64 %var_2_610 to i32*
%var_2_613 = load i32, i32* %var_2_612, align 4
%var_2_614 = sext i32 %var_2_613 to i64
; Matched:\<badref\>:  store i64 %var_2_810, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_614, i64* %RDX.i2239, align 8
%var_2_615 = shl nsw i64 %var_2_614, 3
%var_2_616 = add i64 %var_2_615, %var_2_609
; Matched:%var_2_4201:  %var_2_4201 = add i64 %var_2_4178, 26
; %var_2_617 = add i64 %var_2_594, 26
; Matched:\<badref\>:  store i64 %var_2_1246, i64* %PC, align 8
; store i64 %var_2_617, i64* %var_2_3, align 8
%var_2_618 = bitcast i64 %var_2_607 to double
%var_2_619 = inttoptr i64 %var_2_616 to double*
%var_2_620 = load double, double* %var_2_619, align 8
%var_2_621 = fsub double %var_2_618, %var_2_620
store double %var_2_621, double* %var_2_94, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
; Matched:%var_2_4206:  %var_2_4206 = add i64 %var_2_4176, -168
; %var_2_622 = add i64 %var_2_592, -168
; Matched:%var_2_819:  %var_2_819 = add i64 %var_2_790, 34
; %var_2_623 = add i64 %var_2_594, 34
; Matched:\<badref\>:  store i64 %var_2_819, i64* %PC, align 8
; store i64 %var_2_623, i64* %var_2_3, align 8
; Matched:%var_2_4208:  %var_2_4208 = inttoptr i64 %var_2_4206 to double*
; %var_2_624 = inttoptr i64 %var_2_622 to double*
; Matched:\<badref\>:  store double %var_2_817, double* %var_2_820, align 8
; store double %var_2_621, double* %var_2_624, align 8
%var_2_625 = load i64, i64* %RBP.i, align 8
%var_2_626 = add i64 %var_2_625, -16
%var_2_627 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_4066:  %var_2_4066 = add i64 %var_2_4065, 4
; %var_2_628 = add i64 %var_2_627, 4
; Matched:\<badref\>:  store i64 %var_2_4066, i64* %PC, align 8
; store i64 %var_2_628, i64* %var_2_3, align 8
%var_2_629 = inttoptr i64 %var_2_626 to i64*
%var_2_630 = load i64, i64* %var_2_629, align 8
; Matched:\<badref\>:  store i64 %var_2_692, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_630, i64* %RCX.i2236, align 8
%var_2_631 = add i64 %var_2_625, -36
; Matched:%var_2_828:  %var_2_828 = add i64 %var_2_823, 7
; %var_2_632 = add i64 %var_2_627, 7
; Matched:\<badref\>:  store i64 %var_2_1405, i64* %PC, align 8
; store i64 %var_2_632, i64* %var_2_3, align 8
%var_2_633 = inttoptr i64 %var_2_631 to i32*
%var_2_634 = load i32, i32* %var_2_633, align 4
%var_2_635 = add i32 %var_2_634, 1
; Matched:%var_2_4107:  %var_2_4107 = zext i32 %var_2_4106 to i64
; %var_2_636 = zext i32 %var_2_635 to i64
; Matched:\<badref\>:  store i64 %var_2_4107, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_636, i64* %RAX.i2224, align 8
; Matched:%var_2_833:  %var_2_833 = icmp eq i32 %var_2_830, -1
; %var_2_637 = icmp eq i32 %var_2_634, -1
; Matched:%var_2_834:  %var_2_834 = icmp eq i32 %var_2_831, 0
; %var_2_638 = icmp eq i32 %var_2_635, 0
; Matched:%var_2_835:  %var_2_835 = or i1 %var_2_833, %var_2_834
; %var_2_639 = or i1 %var_2_637, %var_2_638
; Matched:%var_2_836:  %var_2_836 = zext i1 %var_2_835 to i8
; %var_2_640 = zext i1 %var_2_639 to i8
; Matched:\<badref\>:  store i8 %var_2_836, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_640, i8* %var_2_14, align 1
; Matched:%var_2_837:  %var_2_837 = and i32 %var_2_831, 255
; %var_2_641 = and i32 %var_2_635, 255
; Matched:%var_2_838:  %var_2_838 = tail call i32 @llvm.ctpop.i32(i32 %var_2_837) #14
; %var_2_642 = tail call i32 @llvm.ctpop.i32(i32 %var_2_641)
; Matched:%var_2_839:  %var_2_839 = trunc i32 %var_2_838 to i8
; %var_2_643 = trunc i32 %var_2_642 to i8
; Matched:%var_2_4115:  %var_2_4115 = and i8 %var_2_4114, 1
; %var_2_644 = and i8 %var_2_643, 1
; Matched:%var_2_4229:  %var_2_4229 = xor i8 %var_2_4228, 1
; %var_2_645 = xor i8 %var_2_644, 1
; Matched:\<badref\>:  store i8 %var_2_4116, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_645, i8* %var_2_21, align 1
; Matched:%var_2_842:  %var_2_842 = xor i32 %var_2_831, %var_2_830
; %var_2_646 = xor i32 %var_2_635, %var_2_634
; Matched:%var_2_843:  %var_2_843 = lshr i32 %var_2_842, 4
; %var_2_647 = lshr i32 %var_2_646, 4
; Matched:%var_2_844:  %var_2_844 = trunc i32 %var_2_843 to i8
; %var_2_648 = trunc i32 %var_2_647 to i8
; Matched:%var_2_845:  %var_2_845 = and i8 %var_2_844, 1
; %var_2_649 = and i8 %var_2_648, 1
; Matched:\<badref\>:  store i8 %var_2_845, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_649, i8* %var_2_27, align 1
; Matched:%var_2_846:  %var_2_846 = zext i1 %var_2_834 to i8
; %var_2_650 = zext i1 %var_2_638 to i8
; Matched:\<badref\>:  store i8 %var_2_846, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_650, i8* %var_2_30, align 1
; Matched:%var_2_847:  %var_2_847 = lshr i32 %var_2_831, 31
; %var_2_651 = lshr i32 %var_2_635, 31
; Matched:%var_2_2087:  %var_2_2087 = trunc i32 %var_2_2086 to i8
; %var_2_652 = trunc i32 %var_2_651 to i8
; Matched:\<badref\>:  store i8 %var_2_848, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_652, i8* %var_2_33, align 1
; Matched:%var_2_2088:  %var_2_2088 = lshr i32 %var_2_2069, 31
; %var_2_653 = lshr i32 %var_2_634, 31
; Matched:%var_2_4125:  %var_2_4125 = xor i32 %var_2_4122, %var_2_4124
; %var_2_654 = xor i32 %var_2_651, %var_2_653
; Matched:%var_2_4239:  %var_2_4239 = add nuw nsw i32 %var_2_4238, %var_2_4235
; %var_2_655 = add nuw nsw i32 %var_2_654, %var_2_651
; Matched:%var_2_2464:  %var_2_2464 = icmp eq i32 %var_2_2463, 2
; %var_2_656 = icmp eq i32 %var_2_655, 2
; Matched:%var_2_4128:  %var_2_4128 = zext i1 %var_2_4127 to i8
; %var_2_657 = zext i1 %var_2_656 to i8
; Matched:\<badref\>:  store i8 %var_2_4241, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_657, i8* %var_2_39, align 1
%var_2_658 = sext i32 %var_2_635 to i64
; Matched:\<badref\>:  store i64 %var_2_4129, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_658, i64* %RDX.i2239, align 8
%var_2_659 = shl nsw i64 %var_2_658, 3
%var_2_660 = add i64 %var_2_630, %var_2_659
; Matched:%var_2_1870:  %var_2_1870 = add i64 %var_2_1836, 18
; %var_2_661 = add i64 %var_2_627, 18
; Matched:\<badref\>:  store i64 %var_2_1870, i64* %PC, align 8
; store i64 %var_2_661, i64* %var_2_3, align 8
%var_2_662 = inttoptr i64 %var_2_660 to i64*
%var_2_663 = load i64, i64* %var_2_662, align 8
store i64 %var_2_663, i64* %var_2_95, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
; Matched:%var_2_2212:  %var_2_2212 = add i64 %var_2_2175, 22
; %var_2_664 = add i64 %var_2_627, 22
; Matched:\<badref\>:  store i64 %var_2_4374, i64* %PC, align 8
; store i64 %var_2_664, i64* %var_2_3, align 8
%var_2_665 = load i64, i64* %var_2_629, align 8
; Matched:\<badref\>:  store i64 %var_2_4193, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_665, i64* %RCX.i2236, align 8
%var_2_666 = add i64 %var_2_625, -40
; Matched:%var_2_1989:  %var_2_1989 = add i64 %var_2_1949, 25
; %var_2_667 = add i64 %var_2_627, 25
; Matched:\<badref\>:  store i64 %var_2_4251, i64* %PC, align 8
; store i64 %var_2_667, i64* %var_2_3, align 8
%var_2_668 = inttoptr i64 %var_2_666 to i32*
%var_2_669 = load i32, i32* %var_2_668, align 4
%var_2_670 = add i32 %var_2_669, 1
; Matched:%var_2_867:  %var_2_867 = zext i32 %var_2_866 to i64
; %var_2_671 = zext i32 %var_2_670 to i64
; Matched:\<badref\>:  store i64 %var_2_867, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_671, i64* %RAX.i2224, align 8
; Matched:%var_2_868:  %var_2_868 = icmp eq i32 %var_2_865, -1
; %var_2_672 = icmp eq i32 %var_2_669, -1
; Matched:%var_2_869:  %var_2_869 = icmp eq i32 %var_2_866, 0
; %var_2_673 = icmp eq i32 %var_2_670, 0
; Matched:%var_2_870:  %var_2_870 = or i1 %var_2_868, %var_2_869
; %var_2_674 = or i1 %var_2_672, %var_2_673
; Matched:%var_2_2698:  %var_2_2698 = zext i1 %var_2_2697 to i8
; %var_2_675 = zext i1 %var_2_674 to i8
; Matched:\<badref\>:  store i8 %var_2_871, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_675, i8* %var_2_14, align 1
; Matched:%var_2_2699:  %var_2_2699 = and i32 %var_2_2693, 255
; %var_2_676 = and i32 %var_2_670, 255
; Matched:%var_2_4714:  %var_2_4714 = tail call i32 @llvm.ctpop.i32(i32 %var_2_4713) #14
; %var_2_677 = tail call i32 @llvm.ctpop.i32(i32 %var_2_676)
; Matched:%var_2_4715:  %var_2_4715 = trunc i32 %var_2_4714 to i8
; %var_2_678 = trunc i32 %var_2_677 to i8
; Matched:%var_2_2702:  %var_2_2702 = and i8 %var_2_2701, 1
; %var_2_679 = and i8 %var_2_678, 1
; Matched:%var_2_2703:  %var_2_2703 = xor i8 %var_2_2702, 1
; %var_2_680 = xor i8 %var_2_679, 1
; Matched:\<badref\>:  store i8 %var_2_876, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_680, i8* %var_2_21, align 1
; Matched:%var_2_877:  %var_2_877 = xor i32 %var_2_866, %var_2_865
; %var_2_681 = xor i32 %var_2_670, %var_2_669
; Matched:%var_2_878:  %var_2_878 = lshr i32 %var_2_877, 4
; %var_2_682 = lshr i32 %var_2_681, 4
; Matched:%var_2_766:  %var_2_766 = trunc i32 %var_2_765 to i8
; %var_2_683 = trunc i32 %var_2_682 to i8
; Matched:%var_2_880:  %var_2_880 = and i8 %var_2_879, 1
; %var_2_684 = and i8 %var_2_683, 1
; Matched:\<badref\>:  store i8 %var_2_880, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_684, i8* %var_2_27, align 1
; Matched:%var_2_881:  %var_2_881 = zext i1 %var_2_869 to i8
; %var_2_685 = zext i1 %var_2_673 to i8
; Matched:\<badref\>:  store i8 %var_2_881, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_685, i8* %var_2_30, align 1
; Matched:%var_2_882:  %var_2_882 = lshr i32 %var_2_866, 31
; %var_2_686 = lshr i32 %var_2_670, 31
; Matched:%var_2_883:  %var_2_883 = trunc i32 %var_2_882 to i8
; %var_2_687 = trunc i32 %var_2_686 to i8
; Matched:\<badref\>:  store i8 %var_2_883, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_687, i8* %var_2_33, align 1
; Matched:%var_2_884:  %var_2_884 = lshr i32 %var_2_865, 31
; %var_2_688 = lshr i32 %var_2_669, 31
; Matched:%var_2_772:  %var_2_772 = xor i32 %var_2_769, %var_2_771
; %var_2_689 = xor i32 %var_2_686, %var_2_688
; Matched:%var_2_2713:  %var_2_2713 = add nuw nsw i32 %var_2_2712, %var_2_2709
; %var_2_690 = add nuw nsw i32 %var_2_689, %var_2_686
; Matched:%var_2_4728:  %var_2_4728 = icmp eq i32 %var_2_4727, 2
; %var_2_691 = icmp eq i32 %var_2_690, 2
; Matched:%var_2_4729:  %var_2_4729 = zext i1 %var_2_4728 to i8
; %var_2_692 = zext i1 %var_2_691 to i8
; Matched:\<badref\>:  store i8 %var_2_888, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_692, i8* %var_2_39, align 1
%var_2_693 = sext i32 %var_2_670 to i64
; Matched:\<badref\>:  store i64 %var_2_2716, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_693, i64* %RDX.i2239, align 8
%var_2_694 = shl nsw i64 %var_2_693, 3
%var_2_695 = add i64 %var_2_665, %var_2_694
; Matched:%var_2_3941:  %var_2_3941 = add i64 %var_2_3872, 36
; %var_2_696 = add i64 %var_2_627, 36
; Matched:\<badref\>:  store i64 %var_2_779, i64* %PC, align 8
; store i64 %var_2_696, i64* %var_2_3, align 8
%var_2_697 = bitcast i64 %var_2_663 to double
%var_2_698 = inttoptr i64 %var_2_695 to double*
%var_2_699 = load double, double* %var_2_698, align 8
%var_2_700 = fsub double %var_2_697, %var_2_699
store double %var_2_700, double* %var_2_94, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
; Matched:%var_2_3355:  %var_2_3355 = load i64, i64* %RBP, align 8
; %var_2_701 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_898:  %var_2_898 = add i64 %var_2_897, -176
; %var_2_702 = add i64 %var_2_701, -176
; Matched:%var_2_4287:  %var_2_4287 = add i64 %var_2_4211, 44
; %var_2_703 = add i64 %var_2_627, 44
; Matched:\<badref\>:  store i64 %var_2_4287, i64* %PC, align 8
; store i64 %var_2_703, i64* %var_2_3, align 8
; Matched:%var_2_3358:  %var_2_3358 = inttoptr i64 %var_2_3356 to double*
; %var_2_704 = inttoptr i64 %var_2_702 to double*
; Matched:\<badref\>:  store double %var_2_3354, double* %var_2_3358, align 8
; store double %var_2_700, double* %var_2_704, align 8
%var_2_705 = load i64, i64* %RBP.i, align 8
%var_2_706 = add i64 %var_2_705, -120
%var_2_707 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_4679:  %var_2_4679 = add i64 %var_2_4678, 5
; %var_2_708 = add i64 %var_2_707, 5
; Matched:\<badref\>:  store i64 %var_2_304, i64* %PC, align 8
; store i64 %var_2_708, i64* %var_2_3, align 8
%var_2_709 = inttoptr i64 %var_2_706 to i64*
%var_2_710 = load i64, i64* %var_2_709, align 8
store i64 %var_2_710, i64* %var_2_95, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
%var_2_711 = add i64 %var_2_705, -152
; Matched:%var_2_3963:  %var_2_3963 = add i64 %var_2_3952, 13
; %var_2_712 = add i64 %var_2_707, 13
; Matched:\<badref\>:  store i64 %var_2_3963, i64* %PC, align 8
; store i64 %var_2_712, i64* %var_2_3, align 8
%var_2_713 = bitcast i64 %var_2_710 to double
%var_2_714 = inttoptr i64 %var_2_711 to double*
%var_2_715 = load double, double* %var_2_714, align 8
%var_2_716 = fadd double %var_2_713, %var_2_715
store double %var_2_716, double* %var_2_94, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
%var_2_717 = add i64 %var_2_705, -16
; Matched:%var_2_2923:  %var_2_2923 = add i64 %var_2_2909, 17
; %var_2_718 = add i64 %var_2_707, 17
; Matched:\<badref\>:  store i64 %var_2_2923, i64* %PC, align 8
; store i64 %var_2_718, i64* %var_2_3, align 8
%var_2_719 = inttoptr i64 %var_2_717 to i64*
%var_2_720 = load i64, i64* %var_2_719, align 8
; Matched:\<badref\>:  store i64 %var_2_3206, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_720, i64* %RCX.i2236, align 8
%var_2_721 = add i64 %var_2_705, -28
; Matched:%var_2_1075:  %var_2_1075 = add i64 %var_2_1064, 21
; %var_2_722 = add i64 %var_2_707, 21
; Matched:\<badref\>:  store i64 %var_2_1075, i64* %PC, align 8
; store i64 %var_2_722, i64* %var_2_3, align 8
%var_2_723 = inttoptr i64 %var_2_721 to i32*
%var_2_724 = load i32, i32* %var_2_723, align 4
%var_2_725 = sext i32 %var_2_724 to i64
; Matched:\<badref\>:  store i64 %var_2_921, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_725, i64* %RDX.i2239, align 8
; Matched:%var_2_4310:  %var_2_4310 = shl nsw i64 %var_2_4309, 3
; %var_2_726 = shl nsw i64 %var_2_725, 3
; Matched:%var_2_4311:  %var_2_4311 = add i64 %var_2_4310, %var_2_4304
; %var_2_727 = add i64 %var_2_726, %var_2_720
; Matched:%var_2_3158:  %var_2_3158 = add i64 %var_2_3135, 26
; %var_2_728 = add i64 %var_2_707, 26
; Matched:\<badref\>:  store i64 %var_2_3158, i64* %PC, align 8
; store i64 %var_2_728, i64* %var_2_3, align 8
; Matched:%var_2_925:  %var_2_925 = inttoptr i64 %var_2_923 to double*
; %var_2_729 = inttoptr i64 %var_2_727 to double*
; Matched:\<badref\>:  store double %var_2_4300, double* %var_2_4313, align 8
; store double %var_2_716, double* %var_2_729, align 8
%var_2_730 = load i64, i64* %RBP.i, align 8
%var_2_731 = add i64 %var_2_730, -128
%var_2_732 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_4393:  %var_2_4393 = add i64 %var_2_4392, 5
; %var_2_733 = add i64 %var_2_732, 5
; Matched:\<badref\>:  store i64 %var_2_4393, i64* %PC, align 8
; store i64 %var_2_733, i64* %var_2_3, align 8
%var_2_734 = inttoptr i64 %var_2_731 to i64*
%var_2_735 = load i64, i64* %var_2_734, align 8
store i64 %var_2_735, i64* %var_2_95, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
%var_2_736 = add i64 %var_2_730, -160
; Matched:%var_2_4076:  %var_2_4076 = add i64 %var_2_4065, 13
; %var_2_737 = add i64 %var_2_732, 13
; Matched:\<badref\>:  store i64 %var_2_4076, i64* %PC, align 8
; store i64 %var_2_737, i64* %var_2_3, align 8
%var_2_738 = bitcast i64 %var_2_735 to double
%var_2_739 = inttoptr i64 %var_2_736 to double*
%var_2_740 = load double, double* %var_2_739, align 8
%var_2_741 = fadd double %var_2_738, %var_2_740
store double %var_2_741, double* %var_2_94, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
%var_2_742 = add i64 %var_2_730, -16
; Matched:%var_2_4079:  %var_2_4079 = add i64 %var_2_4065, 17
; %var_2_743 = add i64 %var_2_732, 17
; Matched:\<badref\>:  store i64 %var_2_4079, i64* %PC, align 8
; store i64 %var_2_743, i64* %var_2_3, align 8
%var_2_744 = inttoptr i64 %var_2_742 to i64*
%var_2_745 = load i64, i64* %var_2_744, align 8
; Matched:\<badref\>:  store i64 %var_2_4181, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_745, i64* %RCX.i2236, align 8
%var_2_746 = add i64 %var_2_730, -28
; Matched:%var_2_3616:  %var_2_3616 = add i64 %var_2_3605, 20
; %var_2_747 = add i64 %var_2_732, 20
; Matched:\<badref\>:  store i64 %var_2_3616, i64* %PC, align 8
; store i64 %var_2_747, i64* %var_2_3, align 8
%var_2_748 = inttoptr i64 %var_2_746 to i32*
%var_2_749 = load i32, i32* %var_2_748, align 4
%var_2_750 = add i32 %var_2_749, 1
; Matched:%var_2_493:  %var_2_493 = zext i32 %var_2_492 to i64
; %var_2_751 = zext i32 %var_2_750 to i64
; Matched:\<badref\>:  store i64 %var_2_493, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_751, i64* %RAX.i2224, align 8
; Matched:%var_2_494:  %var_2_494 = icmp eq i32 %var_2_491, -1
; %var_2_752 = icmp eq i32 %var_2_749, -1
; Matched:%var_2_495:  %var_2_495 = icmp eq i32 %var_2_492, 0
; %var_2_753 = icmp eq i32 %var_2_750, 0
; Matched:%var_2_496:  %var_2_496 = or i1 %var_2_494, %var_2_495
; %var_2_754 = or i1 %var_2_752, %var_2_753
; Matched:%var_2_497:  %var_2_497 = zext i1 %var_2_496 to i8
; %var_2_755 = zext i1 %var_2_754 to i8
; Matched:\<badref\>:  store i8 %var_2_497, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_755, i8* %var_2_14, align 1
; Matched:%var_2_952:  %var_2_952 = and i32 %var_2_946, 255
; %var_2_756 = and i32 %var_2_750, 255
; Matched:%var_2_612:  %var_2_612 = tail call i32 @llvm.ctpop.i32(i32 %var_2_611) #14
; %var_2_757 = tail call i32 @llvm.ctpop.i32(i32 %var_2_756)
; Matched:%var_2_3888:  %var_2_3888 = trunc i32 %var_2_3887 to i8
; %var_2_758 = trunc i32 %var_2_757 to i8
; Matched:%var_2_2959:  %var_2_2959 = and i8 %var_2_2958, 1
; %var_2_759 = and i8 %var_2_758, 1
; Matched:%var_2_502:  %var_2_502 = xor i8 %var_2_501, 1
; %var_2_760 = xor i8 %var_2_759, 1
; Matched:\<badref\>:  store i8 %var_2_1967, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_760, i8* %var_2_21, align 1
; Matched:%var_2_503:  %var_2_503 = xor i32 %var_2_492, %var_2_491
; %var_2_761 = xor i32 %var_2_750, %var_2_749
; Matched:%var_2_3892:  %var_2_3892 = lshr i32 %var_2_3891, 4
; %var_2_762 = lshr i32 %var_2_761, 4
; Matched:%var_2_505:  %var_2_505 = trunc i32 %var_2_504 to i8
; %var_2_763 = trunc i32 %var_2_762 to i8
; Matched:%var_2_506:  %var_2_506 = and i8 %var_2_505, 1
; %var_2_764 = and i8 %var_2_763, 1
; Matched:\<badref\>:  store i8 %var_2_506, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_764, i8* %var_2_27, align 1
; Matched:%var_2_507:  %var_2_507 = zext i1 %var_2_495 to i8
; %var_2_765 = zext i1 %var_2_753 to i8
; Matched:\<badref\>:  store i8 %var_2_961, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_765, i8* %var_2_30, align 1
; Matched:%var_2_962:  %var_2_962 = lshr i32 %var_2_946, 31
; %var_2_766 = lshr i32 %var_2_750, 31
; Matched:%var_2_509:  %var_2_509 = trunc i32 %var_2_508 to i8
; %var_2_767 = trunc i32 %var_2_766 to i8
; Matched:\<badref\>:  store i8 %var_2_3897, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_767, i8* %var_2_33, align 1
; Matched:%var_2_4352:  %var_2_4352 = lshr i32 %var_2_4333, 31
; %var_2_768 = lshr i32 %var_2_749, 31
; Matched:%var_2_624:  %var_2_624 = xor i32 %var_2_621, %var_2_623
; %var_2_769 = xor i32 %var_2_766, %var_2_768
; Matched:%var_2_625:  %var_2_625 = add nuw nsw i32 %var_2_624, %var_2_621
; %var_2_770 = add nuw nsw i32 %var_2_769, %var_2_766
; Matched:%var_2_626:  %var_2_626 = icmp eq i32 %var_2_625, 2
; %var_2_771 = icmp eq i32 %var_2_770, 2
; Matched:%var_2_3902:  %var_2_3902 = zext i1 %var_2_3901 to i8
; %var_2_772 = zext i1 %var_2_771 to i8
; Matched:\<badref\>:  store i8 %var_2_4356, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_772, i8* %var_2_39, align 1
%var_2_773 = sext i32 %var_2_750 to i64
; Matched:\<badref\>:  store i64 %var_2_969, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_773, i64* %RDX.i2239, align 8
; Matched:%var_2_3428:  %var_2_3428 = shl nsw i64 %var_2_3427, 3
; %var_2_774 = shl nsw i64 %var_2_773, 3
; Matched:%var_2_971:  %var_2_971 = add i64 %var_2_941, %var_2_970
; %var_2_775 = add i64 %var_2_745, %var_2_774
; Matched:%var_2_4360:  %var_2_4360 = add i64 %var_2_4316, 31
; %var_2_776 = add i64 %var_2_732, 31
; Matched:\<badref\>:  store i64 %var_2_2324, i64* %PC, align 8
; store i64 %var_2_776, i64* %var_2_3, align 8
; Matched:%var_2_4361:  %var_2_4361 = inttoptr i64 %var_2_4359 to double*
; %var_2_777 = inttoptr i64 %var_2_775 to double*
; Matched:\<badref\>:  store double %var_2_4325, double* %var_2_4361, align 8
; store double %var_2_741, double* %var_2_777, align 8
%var_2_778 = load i64, i64* %RBP.i, align 8
%var_2_779 = add i64 %var_2_778, -120
%var_2_780 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1111:  %var_2_1111 = add i64 %var_2_1110, 5
; %var_2_781 = add i64 %var_2_780, 5
; Matched:\<badref\>:  store i64 %var_2_2504, i64* %PC, align 8
; store i64 %var_2_781, i64* %var_2_3, align 8
%var_2_782 = inttoptr i64 %var_2_779 to i64*
%var_2_783 = load i64, i64* %var_2_782, align 8
store i64 %var_2_783, i64* %var_2_95, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
%var_2_784 = add i64 %var_2_778, -152
; Matched:%var_2_225:  %var_2_225 = add i64 %var_2_214, 13
; %var_2_785 = add i64 %var_2_780, 13
; Matched:\<badref\>:  store i64 %var_2_3850, i64* %PC, align 8
; store i64 %var_2_785, i64* %var_2_3, align 8
%var_2_786 = bitcast i64 %var_2_783 to double
%var_2_787 = inttoptr i64 %var_2_784 to double*
%var_2_788 = load double, double* %var_2_787, align 8
%var_2_789 = fsub double %var_2_786, %var_2_788
store double %var_2_789, double* %var_2_94, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
%var_2_790 = add i64 %var_2_778, -16
; Matched:%var_2_939:  %var_2_939 = add i64 %var_2_928, 17
; %var_2_791 = add i64 %var_2_780, 17
; Matched:\<badref\>:  store i64 %var_2_939, i64* %PC, align 8
; store i64 %var_2_791, i64* %var_2_3, align 8
%var_2_792 = inttoptr i64 %var_2_790 to i64*
%var_2_793 = load i64, i64* %var_2_792, align 8
; Matched:\<badref\>:  store i64 %var_2_826, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_793, i64* %RCX.i2236, align 8
%var_2_794 = add i64 %var_2_778, -36
; Matched:%var_2_2270:  %var_2_2270 = add i64 %var_2_2255, 21
; %var_2_795 = add i64 %var_2_780, 21
; Matched:\<badref\>:  store i64 %var_2_3039, i64* %PC, align 8
; store i64 %var_2_795, i64* %var_2_3, align 8
%var_2_796 = inttoptr i64 %var_2_794 to i32*
%var_2_797 = load i32, i32* %var_2_796, align 4
%var_2_798 = sext i32 %var_2_797 to i64
; Matched:\<badref\>:  store i64 %var_2_994, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_798, i64* %RDX.i2239, align 8
; Matched:%var_2_3453:  %var_2_3453 = shl nsw i64 %var_2_3452, 3
; %var_2_799 = shl nsw i64 %var_2_798, 3
; Matched:%var_2_3454:  %var_2_3454 = add i64 %var_2_3453, %var_2_3447
; %var_2_800 = add i64 %var_2_799, %var_2_793
; Matched:%var_2_3975:  %var_2_3975 = add i64 %var_2_3952, 26
; %var_2_801 = add i64 %var_2_780, 26
; Matched:\<badref\>:  store i64 %var_2_4201, i64* %PC, align 8
; store i64 %var_2_801, i64* %var_2_3, align 8
; Matched:%var_2_3456:  %var_2_3456 = inttoptr i64 %var_2_3454 to double*
; %var_2_802 = inttoptr i64 %var_2_800 to double*
; Matched:\<badref\>:  store double %var_2_3443, double* %var_2_3456, align 8
; store double %var_2_789, double* %var_2_802, align 8
%var_2_803 = load i64, i64* %RBP.i, align 8
%var_2_804 = add i64 %var_2_803, -128
%var_2_805 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_4429:  %var_2_4429 = add i64 %var_2_4428, 5
; %var_2_806 = add i64 %var_2_805, 5
; Matched:\<badref\>:  store i64 %var_2_4643, i64* %PC, align 8
; store i64 %var_2_806, i64* %var_2_3, align 8
%var_2_807 = inttoptr i64 %var_2_804 to i64*
%var_2_808 = load i64, i64* %var_2_807, align 8
store i64 %var_2_808, i64* %var_2_95, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
%var_2_809 = add i64 %var_2_803, -160
; Matched:%var_2_164:  %var_2_164 = add i64 %var_2_153, 13
; %var_2_810 = add i64 %var_2_805, 13
; Matched:\<badref\>:  store i64 %var_2_3146, i64* %PC, align 8
; store i64 %var_2_810, i64* %var_2_3, align 8
%var_2_811 = bitcast i64 %var_2_808 to double
%var_2_812 = inttoptr i64 %var_2_809 to double*
%var_2_813 = load double, double* %var_2_812, align 8
%var_2_814 = fsub double %var_2_811, %var_2_813
store double %var_2_814, double* %var_2_94, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
%var_2_815 = add i64 %var_2_803, -16
; Matched:%var_2_4302:  %var_2_4302 = add i64 %var_2_4291, 17
; %var_2_816 = add i64 %var_2_805, 17
; Matched:\<badref\>:  store i64 %var_2_4302, i64* %PC, align 8
; store i64 %var_2_816, i64* %var_2_3, align 8
%var_2_817 = inttoptr i64 %var_2_815 to i64*
%var_2_818 = load i64, i64* %var_2_817, align 8
; Matched:\<badref\>:  store i64 %var_2_522, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_818, i64* %RCX.i2236, align 8
%var_2_819 = add i64 %var_2_803, -36
; Matched:%var_2_1486:  %var_2_1486 = add i64 %var_2_1469, 20
; %var_2_820 = add i64 %var_2_805, 20
; Matched:\<badref\>:  store i64 %var_2_1486, i64* %PC, align 8
; store i64 %var_2_820, i64* %var_2_3, align 8
%var_2_821 = inttoptr i64 %var_2_819 to i32*
%var_2_822 = load i32, i32* %var_2_821, align 4
%var_2_823 = add i32 %var_2_822, 1
; Matched:%var_2_3177:  %var_2_3177 = zext i32 %var_2_3176 to i64
; %var_2_824 = zext i32 %var_2_823 to i64
; Matched:\<badref\>:  store i64 %var_2_3177, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_824, i64* %RAX.i2224, align 8
; Matched:%var_2_1021:  %var_2_1021 = icmp eq i32 %var_2_1018, -1
; %var_2_825 = icmp eq i32 %var_2_822, -1
; Matched:%var_2_1022:  %var_2_1022 = icmp eq i32 %var_2_1019, 0
; %var_2_826 = icmp eq i32 %var_2_823, 0
; Matched:%var_2_1023:  %var_2_1023 = or i1 %var_2_1021, %var_2_1022
; %var_2_827 = or i1 %var_2_825, %var_2_826
; Matched:%var_2_1024:  %var_2_1024 = zext i1 %var_2_1023 to i8
; %var_2_828 = zext i1 %var_2_827 to i8
; Matched:\<badref\>:  store i8 %var_2_1024, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_828, i8* %var_2_14, align 1
; Matched:%var_2_1025:  %var_2_1025 = and i32 %var_2_1019, 255
; %var_2_829 = and i32 %var_2_823, 255
; Matched:%var_2_1026:  %var_2_1026 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1025) #14
; %var_2_830 = tail call i32 @llvm.ctpop.i32(i32 %var_2_829)
; Matched:%var_2_1027:  %var_2_1027 = trunc i32 %var_2_1026 to i8
; %var_2_831 = trunc i32 %var_2_830 to i8
; Matched:%var_2_3185:  %var_2_3185 = and i8 %var_2_3184, 1
; %var_2_832 = and i8 %var_2_831, 1
; Matched:%var_2_3299:  %var_2_3299 = xor i8 %var_2_3298, 1
; %var_2_833 = xor i8 %var_2_832, 1
; Matched:\<badref\>:  store i8 %var_2_3186, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_833, i8* %var_2_21, align 1
; Matched:%var_2_1030:  %var_2_1030 = xor i32 %var_2_1019, %var_2_1018
; %var_2_834 = xor i32 %var_2_823, %var_2_822
; Matched:%var_2_1031:  %var_2_1031 = lshr i32 %var_2_1030, 4
; %var_2_835 = lshr i32 %var_2_834, 4
; Matched:%var_2_1032:  %var_2_1032 = trunc i32 %var_2_1031 to i8
; %var_2_836 = trunc i32 %var_2_835 to i8
; Matched:%var_2_1033:  %var_2_1033 = and i8 %var_2_1032, 1
; %var_2_837 = and i8 %var_2_836, 1
; Matched:\<badref\>:  store i8 %var_2_1033, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_837, i8* %var_2_27, align 1
; Matched:%var_2_1034:  %var_2_1034 = zext i1 %var_2_1022 to i8
; %var_2_838 = zext i1 %var_2_826 to i8
; Matched:\<badref\>:  store i8 %var_2_2458, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_838, i8* %var_2_30, align 1
; Matched:%var_2_1035:  %var_2_1035 = lshr i32 %var_2_1019, 31
; %var_2_839 = lshr i32 %var_2_823, 31
; Matched:%var_2_3193:  %var_2_3193 = trunc i32 %var_2_3192 to i8
; %var_2_840 = trunc i32 %var_2_839 to i8
; Matched:\<badref\>:  store i8 %var_2_1036, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_840, i8* %var_2_33, align 1
; Matched:%var_2_1037:  %var_2_1037 = lshr i32 %var_2_1018, 31
; %var_2_841 = lshr i32 %var_2_822, 31
; Matched:%var_2_3308:  %var_2_3308 = xor i32 %var_2_3305, %var_2_3307
; %var_2_842 = xor i32 %var_2_839, %var_2_841
; Matched:%var_2_2090:  %var_2_2090 = add nuw nsw i32 %var_2_2089, %var_2_2086
; %var_2_843 = add nuw nsw i32 %var_2_842, %var_2_839
; Matched:%var_2_739:  %var_2_739 = icmp eq i32 %var_2_738, 2
; %var_2_844 = icmp eq i32 %var_2_843, 2
; Matched:%var_2_3198:  %var_2_3198 = zext i1 %var_2_3197 to i8
; %var_2_845 = zext i1 %var_2_844 to i8
; Matched:\<badref\>:  store i8 %var_2_3311, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_845, i8* %var_2_39, align 1
%var_2_846 = sext i32 %var_2_823 to i64
; Matched:\<badref\>:  store i64 %var_2_3199, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_846, i64* %RDX.i2239, align 8
; Matched:%var_2_3501:  %var_2_3501 = shl nsw i64 %var_2_3500, 3
; %var_2_847 = shl nsw i64 %var_2_846, 3
; Matched:%var_2_3502:  %var_2_3502 = add i64 %var_2_3472, %var_2_3501
; %var_2_848 = add i64 %var_2_818, %var_2_847
; Matched:%var_2_3430:  %var_2_3430 = add i64 %var_2_3386, 31
; %var_2_849 = add i64 %var_2_805, 31
; Matched:\<badref\>:  store i64 %var_2_3430, i64* %PC, align 8
; store i64 %var_2_849, i64* %var_2_3, align 8
; Matched:%var_2_3504:  %var_2_3504 = inttoptr i64 %var_2_3502 to double*
; %var_2_850 = inttoptr i64 %var_2_848 to double*
; Matched:\<badref\>:  store double %var_2_3468, double* %var_2_3504, align 8
; store double %var_2_814, double* %var_2_850, align 8
%var_2_851 = load i64, i64* %RBP.i, align 8
%var_2_852 = add i64 %var_2_851, -136
%var_2_853 = load i64, i64* %var_2_3, align 8
%var_2_854 = add i64 %var_2_853, 8
store i64 %var_2_854, i64* %var_2_3, align 8
%var_2_855 = inttoptr i64 %var_2_852 to i64*
%var_2_856 = load i64, i64* %var_2_855, align 8
store i64 %var_2_856, i64* %var_2_95, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
%var_2_857 = add i64 %var_2_851, -176
; Matched:%var_2_2493:  %var_2_2493 = add i64 %var_2_2488, 16
; %var_2_858 = add i64 %var_2_853, 16
; Matched:\<badref\>:  store i64 %var_2_2493, i64* %PC, align 8
; store i64 %var_2_858, i64* %var_2_3, align 8
%var_2_859 = bitcast i64 %var_2_856 to double
%var_2_860 = inttoptr i64 %var_2_857 to double*
%var_2_861 = load double, double* %var_2_860, align 8
%var_2_862 = fsub double %var_2_859, %var_2_861
store double %var_2_862, double* %var_2_94, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
%var_2_863 = add i64 %var_2_851, -16
; Matched:%var_2_1016:  %var_2_1016 = add i64 %var_2_1001, 20
; %var_2_864 = add i64 %var_2_853, 20
; Matched:\<badref\>:  store i64 %var_2_1016, i64* %PC, align 8
; store i64 %var_2_864, i64* %var_2_3, align 8
%var_2_865 = inttoptr i64 %var_2_863 to i64*
%var_2_866 = load i64, i64* %var_2_865, align 8
; Matched:\<badref\>:  store i64 %var_2_4577, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_866, i64* %RCX.i2236, align 8
%var_2_867 = add i64 %var_2_851, -32
; Matched:%var_2_3595:  %var_2_3595 = add i64 %var_2_3580, 24
; %var_2_868 = add i64 %var_2_853, 24
; Matched:\<badref\>:  store i64 %var_2_3522, i64* %PC, align 8
; store i64 %var_2_868, i64* %var_2_3, align 8
%var_2_869 = inttoptr i64 %var_2_867 to i32*
%var_2_870 = load i32, i32* %var_2_869, align 4
%var_2_871 = sext i32 %var_2_870 to i64
; Matched:\<badref\>:  store i64 %var_2_2929, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_871, i64* %RDX.i2239, align 8
; Matched:%var_2_3526:  %var_2_3526 = shl nsw i64 %var_2_3525, 3
; %var_2_872 = shl nsw i64 %var_2_871, 3
; Matched:%var_2_3527:  %var_2_3527 = add i64 %var_2_3526, %var_2_3520
; %var_2_873 = add i64 %var_2_872, %var_2_866
; Matched:%var_2_3528:  %var_2_3528 = add i64 %var_2_3507, 29
; %var_2_874 = add i64 %var_2_853, 29
; Matched:\<badref\>:  store i64 %var_2_3528, i64* %PC, align 8
; store i64 %var_2_874, i64* %var_2_3, align 8
; Matched:%var_2_3529:  %var_2_3529 = inttoptr i64 %var_2_3527 to double*
; %var_2_875 = inttoptr i64 %var_2_873 to double*
; Matched:\<badref\>:  store double %var_2_3516, double* %var_2_3529, align 8
; store double %var_2_862, double* %var_2_875, align 8
%var_2_876 = load i64, i64* %RBP.i, align 8
%var_2_877 = add i64 %var_2_876, -144
%var_2_878 = load i64, i64* %var_2_3, align 8
%var_2_879 = add i64 %var_2_878, 8
store i64 %var_2_879, i64* %var_2_3, align 8
%var_2_880 = inttoptr i64 %var_2_877 to i64*
%var_2_881 = load i64, i64* %var_2_880, align 8
store i64 %var_2_881, i64* %var_2_95, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
%var_2_882 = add i64 %var_2_876, -168
; Matched:%var_2_3537:  %var_2_3537 = add i64 %var_2_3532, 16
; %var_2_883 = add i64 %var_2_878, 16
; Matched:\<badref\>:  store i64 %var_2_3537, i64* %PC, align 8
; store i64 %var_2_883, i64* %var_2_3, align 8
%var_2_884 = bitcast i64 %var_2_881 to double
%var_2_885 = inttoptr i64 %var_2_882 to double*
%var_2_886 = load double, double* %var_2_885, align 8
%var_2_887 = fadd double %var_2_884, %var_2_886
store double %var_2_887, double* %var_2_94, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
%var_2_888 = add i64 %var_2_876, -16
; Matched:%var_2_2679:  %var_2_2679 = add i64 %var_2_2664, 20
; %var_2_889 = add i64 %var_2_878, 20
; Matched:\<badref\>:  store i64 %var_2_2679, i64* %PC, align 8
; store i64 %var_2_889, i64* %var_2_3, align 8
%var_2_890 = inttoptr i64 %var_2_888 to i64*
%var_2_891 = load i64, i64* %var_2_890, align 8
; Matched:\<badref\>:  store i64 %var_2_487, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_891, i64* %RCX.i2236, align 8
%var_2_892 = add i64 %var_2_876, -32
; Matched:%var_2_1096:  %var_2_1096 = add i64 %var_2_1079, 23
; %var_2_893 = add i64 %var_2_878, 23
; Matched:\<badref\>:  store i64 %var_2_2373, i64* %PC, align 8
; store i64 %var_2_893, i64* %var_2_3, align 8
%var_2_894 = inttoptr i64 %var_2_892 to i32*
%var_2_895 = load i32, i32* %var_2_894, align 4
%var_2_896 = add i32 %var_2_895, 1
; Matched:%var_2_641:  %var_2_641 = zext i32 %var_2_640 to i64
; %var_2_897 = zext i32 %var_2_896 to i64
; Matched:\<badref\>:  store i64 %var_2_641, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_897, i64* %RAX.i2224, align 8
; Matched:%var_2_642:  %var_2_642 = icmp eq i32 %var_2_639, -1
; %var_2_898 = icmp eq i32 %var_2_895, -1
; Matched:%var_2_1137:  %var_2_1137 = icmp eq i32 %var_2_1134, 0
; %var_2_899 = icmp eq i32 %var_2_896, 0
; Matched:%var_2_1138:  %var_2_1138 = or i1 %var_2_1136, %var_2_1137
; %var_2_900 = or i1 %var_2_898, %var_2_899
; Matched:%var_2_645:  %var_2_645 = zext i1 %var_2_644 to i8
; %var_2_901 = zext i1 %var_2_900 to i8
; Matched:\<badref\>:  store i8 %var_2_4587, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_901, i8* %var_2_14, align 1
; Matched:%var_2_4588:  %var_2_4588 = and i32 %var_2_4582, 255
; %var_2_902 = and i32 %var_2_896, 255
; Matched:%var_2_2575:  %var_2_2575 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2574) #14
; %var_2_903 = tail call i32 @llvm.ctpop.i32(i32 %var_2_902)
; Matched:%var_2_2576:  %var_2_2576 = trunc i32 %var_2_2575 to i8
; %var_2_904 = trunc i32 %var_2_903 to i8
; Matched:%var_2_2577:  %var_2_2577 = and i8 %var_2_2576, 1
; %var_2_905 = and i8 %var_2_904, 1
; Matched:%var_2_537:  %var_2_537 = xor i8 %var_2_536, 1
; %var_2_906 = xor i8 %var_2_905, 1
; Matched:\<badref\>:  store i8 %var_2_2578, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_906, i8* %var_2_21, align 1
; Matched:%var_2_2579:  %var_2_2579 = xor i32 %var_2_2568, %var_2_2567
; %var_2_907 = xor i32 %var_2_896, %var_2_895
; Matched:%var_2_2580:  %var_2_2580 = lshr i32 %var_2_2579, 4
; %var_2_908 = lshr i32 %var_2_907, 4
; Matched:%var_2_2581:  %var_2_2581 = trunc i32 %var_2_2580 to i8
; %var_2_909 = trunc i32 %var_2_908 to i8
; Matched:%var_2_1148:  %var_2_1148 = and i8 %var_2_1147, 1
; %var_2_910 = and i8 %var_2_909, 1
; Matched:\<badref\>:  store i8 %var_2_1148, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_910, i8* %var_2_27, align 1
; Matched:%var_2_4597:  %var_2_4597 = zext i1 %var_2_4585 to i8
; %var_2_911 = zext i1 %var_2_899 to i8
; Matched:\<badref\>:  store i8 %var_2_4597, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_911, i8* %var_2_30, align 1
; Matched:%var_2_656:  %var_2_656 = lshr i32 %var_2_640, 31
; %var_2_912 = lshr i32 %var_2_896, 31
; Matched:%var_2_544:  %var_2_544 = trunc i32 %var_2_543 to i8
; %var_2_913 = trunc i32 %var_2_912 to i8
; Matched:\<badref\>:  store i8 %var_2_657, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_913, i8* %var_2_33, align 1
; Matched:%var_2_545:  %var_2_545 = lshr i32 %var_2_526, 31
; %var_2_914 = lshr i32 %var_2_895, 31
; Matched:%var_2_3569:  %var_2_3569 = xor i32 %var_2_3566, %var_2_3568
; %var_2_915 = xor i32 %var_2_912, %var_2_914
; Matched:%var_2_3570:  %var_2_3570 = add nuw nsw i32 %var_2_3569, %var_2_3566
; %var_2_916 = add nuw nsw i32 %var_2_915, %var_2_912
; Matched:%var_2_2013:  %var_2_2013 = icmp eq i32 %var_2_2012, 2
; %var_2_917 = icmp eq i32 %var_2_916, 2
; Matched:%var_2_1901:  %var_2_1901 = zext i1 %var_2_1900 to i8
; %var_2_918 = zext i1 %var_2_917 to i8
; Matched:\<badref\>:  store i8 %var_2_4050, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_918, i8* %var_2_39, align 1
%var_2_919 = sext i32 %var_2_896 to i64
; Matched:\<badref\>:  store i64 %var_2_4605, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_919, i64* %RDX.i2239, align 8
; Matched:%var_2_3574:  %var_2_3574 = shl nsw i64 %var_2_3573, 3
; %var_2_920 = shl nsw i64 %var_2_919, 3
; Matched:%var_2_3575:  %var_2_3575 = add i64 %var_2_3545, %var_2_3574
; %var_2_921 = add i64 %var_2_891, %var_2_920
; Matched:%var_2_3277:  %var_2_3277 = add i64 %var_2_3248, 34
; %var_2_922 = add i64 %var_2_878, 34
; Matched:\<badref\>:  store i64 %var_2_3277, i64* %PC, align 8
; store i64 %var_2_922, i64* %var_2_3, align 8
; Matched:%var_2_3577:  %var_2_3577 = inttoptr i64 %var_2_3575 to double*
; %var_2_923 = inttoptr i64 %var_2_921 to double*
; Matched:\<badref\>:  store double %var_2_3541, double* %var_2_3577, align 8
; store double %var_2_887, double* %var_2_923, align 8
%var_2_924 = load i64, i64* %RBP.i, align 8
%var_2_925 = add i64 %var_2_924, -136
%var_2_926 = load i64, i64* %var_2_3, align 8
%var_2_927 = add i64 %var_2_926, 8
store i64 %var_2_927, i64* %var_2_3, align 8
%var_2_928 = inttoptr i64 %var_2_925 to i64*
%var_2_929 = load i64, i64* %var_2_928, align 8
store i64 %var_2_929, i64* %var_2_95, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
%var_2_930 = add i64 %var_2_924, -176
; Matched:%var_2_4632:  %var_2_4632 = add i64 %var_2_4627, 16
; %var_2_931 = add i64 %var_2_926, 16
; Matched:\<badref\>:  store i64 %var_2_4632, i64* %PC, align 8
; store i64 %var_2_931, i64* %var_2_3, align 8
%var_2_932 = bitcast i64 %var_2_929 to double
%var_2_933 = inttoptr i64 %var_2_930 to double*
%var_2_934 = load double, double* %var_2_933, align 8
%var_2_935 = fadd double %var_2_932, %var_2_934
store double %var_2_935, double* %var_2_94, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
%var_2_936 = add i64 %var_2_924, -16
; Matched:%var_2_4693:  %var_2_4693 = add i64 %var_2_4678, 20
; %var_2_937 = add i64 %var_2_926, 20
; Matched:\<badref\>:  store i64 %var_2_4693, i64* %PC, align 8
; store i64 %var_2_937, i64* %var_2_3, align 8
%var_2_938 = inttoptr i64 %var_2_936 to i64*
%var_2_939 = load i64, i64* %var_2_938, align 8
; Matched:\<badref\>:  store i64 %var_2_941, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_939, i64* %RCX.i2236, align 8
%var_2_940 = add i64 %var_2_924, -40
; Matched:%var_2_3522:  %var_2_3522 = add i64 %var_2_3507, 24
; %var_2_941 = add i64 %var_2_926, 24
; Matched:\<badref\>:  store i64 %var_2_3595, i64* %PC, align 8
; store i64 %var_2_941, i64* %var_2_3, align 8
%var_2_942 = inttoptr i64 %var_2_940 to i32*
%var_2_943 = load i32, i32* %var_2_942, align 4
%var_2_944 = sext i32 %var_2_943 to i64
; Matched:\<badref\>:  store i64 %var_2_4671, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_944, i64* %RDX.i2239, align 8
; Matched:%var_2_3599:  %var_2_3599 = shl nsw i64 %var_2_3598, 3
; %var_2_945 = shl nsw i64 %var_2_944, 3
; Matched:%var_2_3600:  %var_2_3600 = add i64 %var_2_3599, %var_2_3593
; %var_2_946 = add i64 %var_2_945, %var_2_939
; Matched:%var_2_3601:  %var_2_3601 = add i64 %var_2_3580, 29
; %var_2_947 = add i64 %var_2_926, 29
; Matched:\<badref\>:  store i64 %var_2_3601, i64* %PC, align 8
; store i64 %var_2_947, i64* %var_2_3, align 8
; Matched:%var_2_3602:  %var_2_3602 = inttoptr i64 %var_2_3600 to double*
; %var_2_948 = inttoptr i64 %var_2_946 to double*
; Matched:\<badref\>:  store double %var_2_3589, double* %var_2_3602, align 8
; store double %var_2_935, double* %var_2_948, align 8
%var_2_949 = load i64, i64* %RBP.i, align 8
%var_2_950 = add i64 %var_2_949, -144
%var_2_951 = load i64, i64* %var_2_3, align 8
%var_2_952 = add i64 %var_2_951, 8
store i64 %var_2_952, i64* %var_2_3, align 8
%var_2_953 = inttoptr i64 %var_2_950 to i64*
%var_2_954 = load i64, i64* %var_2_953, align 8
store i64 %var_2_954, i64* %var_2_95, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
%var_2_955 = add i64 %var_2_949, -168
; Matched:%var_2_2478:  %var_2_2478 = add i64 %var_2_2473, 16
; %var_2_956 = add i64 %var_2_951, 16
; Matched:\<badref\>:  store i64 %var_2_2478, i64* %PC, align 8
; store i64 %var_2_956, i64* %var_2_3, align 8
%var_2_957 = bitcast i64 %var_2_954 to double
%var_2_958 = inttoptr i64 %var_2_955 to double*
%var_2_959 = load double, double* %var_2_958, align 8
%var_2_960 = fsub double %var_2_957, %var_2_959
store double %var_2_960, double* %var_2_94, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
%var_2_961 = add i64 %var_2_949, -16
; Matched:%var_2_3591:  %var_2_3591 = add i64 %var_2_3580, 20
; %var_2_962 = add i64 %var_2_951, 20
; Matched:\<badref\>:  store i64 %var_2_3591, i64* %PC, align 8
; store i64 %var_2_962, i64* %var_2_3, align 8
%var_2_963 = inttoptr i64 %var_2_961 to i64*
%var_2_964 = load i64, i64* %var_2_963, align 8
; Matched:\<badref\>:  store i64 %var_2_3150, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_964, i64* %RCX.i2236, align 8
%var_2_965 = add i64 %var_2_949, -40
; Matched:%var_2_1242:  %var_2_1242 = add i64 %var_2_1225, 23
; %var_2_966 = add i64 %var_2_951, 23
; Matched:\<badref\>:  store i64 %var_2_1242, i64* %PC, align 8
; store i64 %var_2_966, i64* %var_2_3, align 8
%var_2_967 = inttoptr i64 %var_2_965 to i32*
%var_2_968 = load i32, i32* %var_2_967, align 4
%var_2_969 = add i32 %var_2_968, 1
; Matched:%var_2_3624:  %var_2_3624 = zext i32 %var_2_3623 to i64
; %var_2_970 = zext i32 %var_2_969 to i64
; Matched:\<badref\>:  store i64 %var_2_1250, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_970, i64* %RAX.i2224, align 8
; Matched:%var_2_3213:  %var_2_3213 = icmp eq i32 %var_2_3210, -1
; %var_2_971 = icmp eq i32 %var_2_968, -1
; Matched:%var_2_3214:  %var_2_3214 = icmp eq i32 %var_2_3211, 0
; %var_2_972 = icmp eq i32 %var_2_969, 0
; Matched:%var_2_3215:  %var_2_3215 = or i1 %var_2_3213, %var_2_3214
; %var_2_973 = or i1 %var_2_971, %var_2_972
; Matched:%var_2_3628:  %var_2_3628 = zext i1 %var_2_3627 to i8
; %var_2_974 = zext i1 %var_2_973 to i8
; Matched:\<badref\>:  store i8 %var_2_3628, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_974, i8* %var_2_14, align 1
; Matched:%var_2_3217:  %var_2_3217 = and i32 %var_2_3211, 255
; %var_2_975 = and i32 %var_2_969, 255
; Matched:%var_2_3331:  %var_2_3331 = tail call i32 @llvm.ctpop.i32(i32 %var_2_3330) #14
; %var_2_976 = tail call i32 @llvm.ctpop.i32(i32 %var_2_975)
; Matched:%var_2_3332:  %var_2_3332 = trunc i32 %var_2_3331 to i8
; %var_2_977 = trunc i32 %var_2_976 to i8
; Matched:%var_2_3220:  %var_2_3220 = and i8 %var_2_3219, 1
; %var_2_978 = and i8 %var_2_977, 1
; Matched:%var_2_3633:  %var_2_3633 = xor i8 %var_2_3632, 1
; %var_2_979 = xor i8 %var_2_978, 1
; Matched:\<badref\>:  store i8 %var_2_3334, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_979, i8* %var_2_21, align 1
; Matched:%var_2_3335:  %var_2_3335 = xor i32 %var_2_3324, %var_2_3323
; %var_2_980 = xor i32 %var_2_969, %var_2_968
; Matched:%var_2_3635:  %var_2_3635 = lshr i32 %var_2_3634, 4
; %var_2_981 = lshr i32 %var_2_980, 4
; Matched:%var_2_1262:  %var_2_1262 = trunc i32 %var_2_1261 to i8
; %var_2_982 = trunc i32 %var_2_981 to i8
; Matched:%var_2_3225:  %var_2_3225 = and i8 %var_2_3224, 1
; %var_2_983 = and i8 %var_2_982, 1
; Matched:\<badref\>:  store i8 %var_2_3225, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_983, i8* %var_2_27, align 1
; Matched:%var_2_3226:  %var_2_3226 = zext i1 %var_2_3214 to i8
; %var_2_984 = zext i1 %var_2_972 to i8
; Matched:\<badref\>:  store i8 %var_2_3226, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_984, i8* %var_2_30, align 1
; Matched:%var_2_3227:  %var_2_3227 = lshr i32 %var_2_3211, 31
; %var_2_985 = lshr i32 %var_2_969, 31
; Matched:%var_2_3228:  %var_2_3228 = trunc i32 %var_2_3227 to i8
; %var_2_986 = trunc i32 %var_2_985 to i8
; Matched:\<badref\>:  store i8 %var_2_3228, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_986, i8* %var_2_33, align 1
; Matched:%var_2_3229:  %var_2_3229 = lshr i32 %var_2_3210, 31
; %var_2_987 = lshr i32 %var_2_968, 31
; Matched:%var_2_1268:  %var_2_1268 = xor i32 %var_2_1265, %var_2_1267
; %var_2_988 = xor i32 %var_2_985, %var_2_987
; Matched:%var_2_3231:  %var_2_3231 = add nuw nsw i32 %var_2_3230, %var_2_3227
; %var_2_989 = add nuw nsw i32 %var_2_988, %var_2_985
; Matched:%var_2_3345:  %var_2_3345 = icmp eq i32 %var_2_3344, 2
; %var_2_990 = icmp eq i32 %var_2_989, 2
; Matched:%var_2_3233:  %var_2_3233 = zext i1 %var_2_3232 to i8
; %var_2_991 = zext i1 %var_2_990 to i8
; Matched:\<badref\>:  store i8 %var_2_775, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_991, i8* %var_2_39, align 1
%var_2_992 = sext i32 %var_2_969 to i64
; Matched:\<badref\>:  store i64 %var_2_3646, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_992, i64* %RDX.i2239, align 8
; Matched:%var_2_3647:  %var_2_3647 = shl nsw i64 %var_2_3646, 3
; %var_2_993 = shl nsw i64 %var_2_992, 3
; Matched:%var_2_3648:  %var_2_3648 = add i64 %var_2_3618, %var_2_3647
; %var_2_994 = add i64 %var_2_964, %var_2_993
; Matched:%var_2_2171:  %var_2_2171 = add i64 %var_2_2142, 34
; %var_2_995 = add i64 %var_2_951, 34
; Matched:\<badref\>:  store i64 %var_2_2171, i64* %PC, align 8
; store i64 %var_2_995, i64* %var_2_3, align 8
; Matched:%var_2_3650:  %var_2_3650 = inttoptr i64 %var_2_3648 to double*
; %var_2_996 = inttoptr i64 %var_2_994 to double*
; Matched:\<badref\>:  store double %var_2_3614, double* %var_2_3650, align 8
; store double %var_2_960, double* %var_2_996, align 8
; Matched:%var_2_2721:  %var_2_2721 = load i64, i64* %RBP, align 8
; %var_2_997 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_3652:  %var_2_3652 = add i64 %var_2_3651, -28
; %var_2_998 = add i64 %var_2_997, -28
%var_2_999 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_67:  %var_2_67 = add i64 %var_2_66, 3
; %var_2_1000 = add i64 %var_2_999, 3
; Matched:\<badref\>:  store i64 %var_2_67, i64* %PC, align 8
; store i64 %var_2_1000, i64* %var_2_3, align 8
; Matched:%var_2_3655:  %var_2_3655 = inttoptr i64 %var_2_3652 to i32*
; %var_2_1001 = inttoptr i64 %var_2_998 to i32*
; Matched:%var_2_2726:  %var_2_2726 = load i32, i32* %var_2_2725, align 4
; %var_2_1002 = load i32, i32* %var_2_1001, align 4
; Matched:%var_2_2727:  %var_2_2727 = add i32 %var_2_2726, 2
; %var_2_1003 = add i32 %var_2_1002, 2
; Matched:%var_2_2728:  %var_2_2728 = zext i32 %var_2_2727 to i64
; %var_2_1004 = zext i32 %var_2_1003 to i64
; Matched:\<badref\>:  store i64 %var_2_3658, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1004, i64* %RAX.i2224, align 8
; Matched:%var_2_1285:  %var_2_1285 = icmp ugt i32 %var_2_1282, -3
; %var_2_1005 = icmp ugt i32 %var_2_1002, -3
; Matched:%var_2_3660:  %var_2_3660 = zext i1 %var_2_3659 to i8
; %var_2_1006 = zext i1 %var_2_1005 to i8
; Matched:\<badref\>:  store i8 %var_2_3660, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_1006, i8* %var_2_14, align 1
; Matched:%var_2_3661:  %var_2_3661 = and i32 %var_2_3657, 255
; %var_2_1007 = and i32 %var_2_1003, 255
; Matched:%var_2_3662:  %var_2_3662 = tail call i32 @llvm.ctpop.i32(i32 %var_2_3661) #14
; %var_2_1008 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1007)
; Matched:%var_2_2733:  %var_2_2733 = trunc i32 %var_2_2732 to i8
; %var_2_1009 = trunc i32 %var_2_1008 to i8
; Matched:%var_2_3664:  %var_2_3664 = and i8 %var_2_3663, 1
; %var_2_1010 = and i8 %var_2_1009, 1
; Matched:%var_2_2735:  %var_2_2735 = xor i8 %var_2_2734, 1
; %var_2_1011 = xor i8 %var_2_1010, 1
; Matched:\<badref\>:  store i8 %var_2_1291, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_1011, i8* %var_2_21, align 1
; Matched:%var_2_3666:  %var_2_3666 = xor i32 %var_2_3657, %var_2_3656
; %var_2_1012 = xor i32 %var_2_1003, %var_2_1002
; Matched:%var_2_3667:  %var_2_3667 = lshr i32 %var_2_3666, 4
; %var_2_1013 = lshr i32 %var_2_1012, 4
; Matched:%var_2_3668:  %var_2_3668 = trunc i32 %var_2_3667 to i8
; %var_2_1014 = trunc i32 %var_2_1013 to i8
; Matched:%var_2_3669:  %var_2_3669 = and i8 %var_2_3668, 1
; %var_2_1015 = and i8 %var_2_1014, 1
; Matched:\<badref\>:  store i8 %var_2_2739, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_1015, i8* %var_2_27, align 1
; Matched:%var_2_3670:  %var_2_3670 = icmp eq i32 %var_2_3657, 0
; %var_2_1016 = icmp eq i32 %var_2_1003, 0
; Matched:%var_2_2741:  %var_2_2741 = zext i1 %var_2_2740 to i8
; %var_2_1017 = zext i1 %var_2_1016 to i8
; Matched:\<badref\>:  store i8 %var_2_1297, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_1017, i8* %var_2_30, align 1
; Matched:%var_2_3672:  %var_2_3672 = lshr i32 %var_2_3657, 31
; %var_2_1018 = lshr i32 %var_2_1003, 31
; Matched:%var_2_3673:  %var_2_3673 = trunc i32 %var_2_3672 to i8
; %var_2_1019 = trunc i32 %var_2_1018 to i8
; Matched:\<badref\>:  store i8 %var_2_3673, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_1019, i8* %var_2_33, align 1
; Matched:%var_2_3674:  %var_2_3674 = lshr i32 %var_2_3656, 31
; %var_2_1020 = lshr i32 %var_2_1002, 31
; Matched:%var_2_2745:  %var_2_2745 = xor i32 %var_2_2742, %var_2_2744
; %var_2_1021 = xor i32 %var_2_1018, %var_2_1020
; Matched:%var_2_3676:  %var_2_3676 = add nuw nsw i32 %var_2_3675, %var_2_3672
; %var_2_1022 = add nuw nsw i32 %var_2_1021, %var_2_1018
; Matched:%var_2_2747:  %var_2_2747 = icmp eq i32 %var_2_2746, 2
; %var_2_1023 = icmp eq i32 %var_2_1022, 2
; Matched:%var_2_1304:  %var_2_1304 = zext i1 %var_2_1303 to i8
; %var_2_1024 = zext i1 %var_2_1023 to i8
; Matched:\<badref\>:  store i8 %var_2_3678, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_1024, i8* %var_2_39, align 1
%var_2_1025 = add i64 %var_2_999, 9
store i64 %var_2_1025, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_4741, i32* %var_2_4739, align 4
; store i32 %var_2_1003, i32* %var_2_1001, align 4
; Matched:%var_2_3680:  %var_2_3680 = load i64, i64* %PC, align 8
; %var_2_1026 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_3681:  %var_2_3681 = add i64 %var_2_3680, -594
; %var_2_1027 = add i64 %var_2_1026, -594
; Matched:\<badref\>:  store i64 %var_2_3681, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1027, i64* %var_2_3, align 8
  br label %block_.L_403356

block_.L_4035ad:                                  ; preds = %block_.L_403356
; Matched:%var_2_1359:  %var_2_1359 = add i64 %var_2_4812, -24
; %var_2_1028 = add i64 %var_2_99, -24
; Matched:%var_2_1603:  %var_2_1603 = add i64 %var_2_2789, 4
; %var_2_1029 = add i64 %var_2_135, 4
; Matched:\<badref\>:  store i64 %var_2_1603, i64* %PC, align 8
; store i64 %var_2_1029, i64* %var_2_3, align 8
; Matched:%var_2_1402:  %var_2_1402 = inttoptr i64 %var_2_1399 to i64*
; %var_2_1030 = inttoptr i64 %var_2_1028 to i64*
; Matched:%var_2_1605:  %var_2_1605 = load i64, i64* %var_2_1604, align 8
; %var_2_1031 = load i64, i64* %var_2_1030, align 8
; Matched:\<badref\>:  store i64 %var_2_1362, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1031, i64* %RAX.i2224, align 8
%var_2_1032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
; Matched:%var_2_1606:  %var_2_1606 = add i64 %var_2_1605, 16
; %var_2_1033 = add i64 %var_2_1031, 16
; Matched:%var_2_1607:  %var_2_1607 = add i64 %var_2_2789, 9
; %var_2_1034 = add i64 %var_2_135, 9
; Matched:\<badref\>:  store i64 %var_2_2823, i64* %PC, align 8
; store i64 %var_2_1034, i64* %var_2_3, align 8
; Matched:%var_2_1608:  %var_2_1608 = inttoptr i64 %var_2_1606 to i64*
; %var_2_1035 = inttoptr i64 %var_2_1033 to i64*
; Matched:%var_2_1609:  %var_2_1609 = load i64, i64* %var_2_1608, align 8
; %var_2_1036 = load i64, i64* %var_2_1035, align 8
%var_2_1037 = bitcast [32 x %union.VectorReg]* %var_2_1032 to double*
%var_2_1038 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %var_2_1032, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:\<badref\>:  store i64 %var_2_1609, i64* %var_2_94, align 1, !tbaa !1285
; store i64 %var_2_1036, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
; Matched:%var_2_1610:  %var_2_1610 = add i64 %var_2_2753, -72
; %var_2_1039 = add i64 %var_2_99, -72
; Matched:%var_2_1611:  %var_2_1611 = add i64 %var_2_2789, 14
; %var_2_1040 = add i64 %var_2_135, 14
; Matched:\<badref\>:  store i64 %var_2_1611, i64* %PC, align 8
; store i64 %var_2_1040, i64* %var_2_3, align 8
; Matched:%var_2_1612:  %var_2_1612 = inttoptr i64 %var_2_1610 to i64*
; %var_2_1041 = inttoptr i64 %var_2_1039 to i64*
; Matched:\<badref\>:  store i64 %var_2_1609, i64* %var_2_1612, align 8
; store i64 %var_2_1036, i64* %var_2_1041, align 8
; Matched:%var_2_1613:  %var_2_1613 = load i64, i64* %RBP, align 8
; %var_2_1042 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1614:  %var_2_1614 = add i64 %var_2_1613, -56
; %var_2_1043 = add i64 %var_2_1042, -56
%var_2_1044 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2724:  %var_2_2724 = add i64 %var_2_2723, 3
; %var_2_1045 = add i64 %var_2_1044, 3
; Matched:\<badref\>:  store i64 %var_2_2724, i64* %PC, align 8
; store i64 %var_2_1045, i64* %var_2_3, align 8
; Matched:%var_2_1617:  %var_2_1617 = inttoptr i64 %var_2_1614 to i32*
; %var_2_1046 = inttoptr i64 %var_2_1043 to i32*
; Matched:%var_2_1618:  %var_2_1618 = load i32, i32* %var_2_1617, align 4
; %var_2_1047 = load i32, i32* %var_2_1046, align 4
; Matched:%var_2_1619:  %var_2_1619 = zext i32 %var_2_1618 to i64
; %var_2_1048 = zext i32 %var_2_1047 to i64
; Matched:\<badref\>:  store i64 %var_2_1619, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1048, i64* %RCX.i2236, align 8
; Matched:%var_2_1620:  %var_2_1620 = add i64 %var_2_1613, -28
; %var_2_1049 = add i64 %var_2_1042, -28
; Matched:%var_2_3804:  %var_2_3804 = add i64 %var_2_3798, 6
; %var_2_1050 = add i64 %var_2_1044, 6
; Matched:\<badref\>:  store i64 %var_2_1345, i64* %PC, align 8
; store i64 %var_2_1050, i64* %var_2_3, align 8
; Matched:%var_2_1622:  %var_2_1622 = inttoptr i64 %var_2_1620 to i32*
; %var_2_1051 = inttoptr i64 %var_2_1049 to i32*
; Matched:\<badref\>:  store i32 %var_2_1618, i32* %var_2_1622, align 4
; store i32 %var_2_1047, i32* %var_2_1051, align 4
; Matched:%var_2_6:  %var_2_6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
; %var_2_1052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
; Matched:%var_2_1623:  %var_2_1623 = bitcast %union.VectorReg* %var_2_6 to double*
; %var_2_1053 = bitcast %union.VectorReg* %var_2_1052 to double*
; Matched:%var_2_1624:  %var_2_1624 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_6, i64 0, i32 0, i32 0, i32 0, i64 0
; %var_2_1054 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_1052, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:%var_2_1625:  %var_2_1625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
; %var_2_1055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_1626:  %var_2_1626 = bitcast i64* %var_2_1625 to double*
; %var_2_1056 = bitcast i64* %var_2_1055 to double*
; Matched:  %.pre23 = load i64, i64* %PC, align 8
; %.pre23 = load i64, i64* %var_2_3, align 8
  br label %block_.L_4035c1

block_.L_4035c1:                                  ; preds = %block_4035d2, %block_.L_4035ad
; Matched:%var_2_4766:  %var_2_4766 = phi i64 [ %.pre23, %block_4035ad ], [ %var_2_1307, %block_4035d2 ]
; %var_2_1057 = phi i64 [ %var_2_2077, %block_4035d2 ], [ %.pre23, %block_.L_4035ad ]
%var_2_1058 = load i64, i64* %RBP.i, align 8
%var_2_1059 = add i64 %var_2_1058, -28
; Matched:%var_2_4769:  %var_2_4769 = add i64 %var_2_4766, 3
; %var_2_1060 = add i64 %var_2_1057, 3
; Matched:\<badref\>:  store i64 %var_2_4769, i64* %PC, align 8
; store i64 %var_2_1060, i64* %var_2_3, align 8
%var_2_1061 = inttoptr i64 %var_2_1059 to i32*
%var_2_1062 = load i32, i32* %var_2_1061, align 4
; Matched:%var_2_3722:  %var_2_3722 = zext i32 %var_2_3721 to i64
; %var_2_1063 = zext i32 %var_2_1062 to i64
; Matched:\<badref\>:  store i64 %var_2_4772, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1063, i64* %RAX.i2224, align 8
%var_2_1064 = add i64 %var_2_1058, -8
; Matched:%var_2_4774:  %var_2_4774 = add i64 %var_2_4766, 6
; %var_2_1065 = add i64 %var_2_1057, 6
; Matched:\<badref\>:  store i64 %var_2_4774, i64* %PC, align 8
; store i64 %var_2_1065, i64* %var_2_3, align 8
%var_2_1066 = inttoptr i64 %var_2_1064 to i32*
%var_2_1067 = load i32, i32* %var_2_1066, align 4
; Matched:%var_2_1638:  %var_2_1638 = zext i32 %var_2_1637 to i64
; %var_2_1068 = zext i32 %var_2_1067 to i64
; Matched:\<badref\>:  store i64 %var_2_1638, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1068, i64* %RCX.i2236, align 8
%var_2_1069 = add i64 %var_2_1058, -56
; Matched:%var_2_4779:  %var_2_4779 = add i64 %var_2_4766, 9
; %var_2_1070 = add i64 %var_2_1057, 9
; Matched:\<badref\>:  store i64 %var_2_4779, i64* %PC, align 8
; store i64 %var_2_1070, i64* %var_2_3, align 8
%var_2_1071 = inttoptr i64 %var_2_1069 to i32*
%var_2_1072 = load i32, i32* %var_2_1071, align 4
%var_2_1073 = add i32 %var_2_1072, %var_2_1067
; Matched:%var_2_4783:  %var_2_4783 = zext i32 %var_2_4782 to i64
; %var_2_1074 = zext i32 %var_2_1073 to i64
; Matched:\<badref\>:  store i64 %var_2_4783, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1074, i64* %RCX.i2236, align 8
%var_2_1075 = lshr i32 %var_2_1073, 31
%var_2_1076 = sub i32 %var_2_1062, %var_2_1073
; Matched:%var_2_4786:  %var_2_4786 = icmp ult i32 %var_2_4771, %var_2_4782
; %var_2_1077 = icmp ult i32 %var_2_1062, %var_2_1073
; Matched:%var_2_4787:  %var_2_4787 = zext i1 %var_2_4786 to i8
; %var_2_1078 = zext i1 %var_2_1077 to i8
; Matched:\<badref\>:  store i8 %var_2_4787, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_1078, i8* %var_2_14, align 1
; Matched:%var_2_4788:  %var_2_4788 = and i32 %var_2_4785, 255
; %var_2_1079 = and i32 %var_2_1076, 255
; Matched:%var_2_4789:  %var_2_4789 = tail call i32 @llvm.ctpop.i32(i32 %var_2_4788) #14
; %var_2_1080 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1079)
; Matched:%var_2_4790:  %var_2_4790 = trunc i32 %var_2_4789 to i8
; %var_2_1081 = trunc i32 %var_2_1080 to i8
; Matched:%var_2_4791:  %var_2_4791 = and i8 %var_2_4790, 1
; %var_2_1082 = and i8 %var_2_1081, 1
; Matched:%var_2_4792:  %var_2_4792 = xor i8 %var_2_4791, 1
; %var_2_1083 = xor i8 %var_2_1082, 1
; Matched:\<badref\>:  store i8 %var_2_4792, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_1083, i8* %var_2_21, align 1
; Matched:%var_2_4793:  %var_2_4793 = xor i32 %var_2_4782, %var_2_4771
; %var_2_1084 = xor i32 %var_2_1073, %var_2_1062
; Matched:%var_2_4794:  %var_2_4794 = xor i32 %var_2_4793, %var_2_4785
; %var_2_1085 = xor i32 %var_2_1084, %var_2_1076
; Matched:%var_2_4795:  %var_2_4795 = lshr i32 %var_2_4794, 4
; %var_2_1086 = lshr i32 %var_2_1085, 4
; Matched:%var_2_4796:  %var_2_4796 = trunc i32 %var_2_4795 to i8
; %var_2_1087 = trunc i32 %var_2_1086 to i8
; Matched:%var_2_4797:  %var_2_4797 = and i8 %var_2_4796, 1
; %var_2_1088 = and i8 %var_2_1087, 1
; Matched:\<badref\>:  store i8 %var_2_4797, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_1088, i8* %var_2_27, align 1
; Matched:%var_2_4798:  %var_2_4798 = icmp eq i32 %var_2_4785, 0
; %var_2_1089 = icmp eq i32 %var_2_1076, 0
; Matched:%var_2_4799:  %var_2_4799 = zext i1 %var_2_4798 to i8
; %var_2_1090 = zext i1 %var_2_1089 to i8
; Matched:\<badref\>:  store i8 %var_2_4799, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_1090, i8* %var_2_30, align 1
%var_2_1091 = lshr i32 %var_2_1076, 31
%var_2_1092 = trunc i32 %var_2_1091 to i8
; Matched:\<badref\>:  store i8 %var_2_4801, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_1092, i8* %var_2_33, align 1
%var_2_1093 = lshr i32 %var_2_1062, 31
%var_2_1094 = xor i32 %var_2_1075, %var_2_1093
%var_2_1095 = xor i32 %var_2_1091, %var_2_1093
%var_2_1096 = add nuw nsw i32 %var_2_1095, %var_2_1094
%var_2_1097 = icmp eq i32 %var_2_1096, 2
; Matched:%var_2_4807:  %var_2_4807 = zext i1 %var_2_4806 to i8
; %var_2_1098 = zext i1 %var_2_1097 to i8
; Matched:\<badref\>:  store i8 %var_2_4807, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_1098, i8* %var_2_39, align 1
%var_2_1099 = icmp ne i8 %var_2_1092, 0
%var_2_1100 = xor i1 %var_2_1099, %var_2_1097
; Matched:  %.v27 = select i1 %var_2_4809, i64 17, i64 700
; %.v27 = select i1 %var_2_1100, i64 17, i64 700
; Matched:%var_2_4810:  %var_2_4810 = add i64 %var_2_4766, %.v27
; %var_2_1101 = add i64 %var_2_1057, %.v27
; Matched:\<badref\>:  store i64 %var_2_4810, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1101, i64* %var_2_3, align 8
br i1 %var_2_1100, label %block_4035d2, label %block_.L_40387d

block_4035d2:                                     ; preds = %block_.L_4035c1
; Matched:%var_2_332:  %var_2_332 = add i64 %var_2_4810, 3
; %var_2_1102 = add i64 %var_2_1101, 3
; Matched:\<badref\>:  store i64 %var_2_332, i64* %PC, align 8
; store i64 %var_2_1102, i64* %var_2_3, align 8
%var_2_1103 = load i32, i32* %var_2_1061, align 4
; Matched:%var_2_2792:  %var_2_2792 = zext i32 %var_2_2791 to i64
; %var_2_1104 = zext i32 %var_2_1103 to i64
; Matched:\<badref\>:  store i64 %var_2_4817, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1104, i64* %RAX.i2224, align 8
; Matched:%var_2_335:  %var_2_335 = add i64 %var_2_4810, 6
; %var_2_1105 = add i64 %var_2_1101, 6
; Matched:\<badref\>:  store i64 %var_2_335, i64* %PC, align 8
; store i64 %var_2_1105, i64* %var_2_3, align 8
%var_2_1106 = load i32, i32* %var_2_1066, align 4
%var_2_1107 = add i32 %var_2_1106, %var_2_1103
; Matched:%var_2_3726:  %var_2_3726 = zext i32 %var_2_3725 to i64
; %var_2_1108 = zext i32 %var_2_1107 to i64
; Matched:\<badref\>:  store i64 %var_2_338, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1108, i64* %RAX.i2224, align 8
; Matched:%var_2_1691:  %var_2_1691 = icmp ult i32 %var_2_1689, %var_2_1683
; %var_2_1109 = icmp ult i32 %var_2_1107, %var_2_1103
; Matched:%var_2_1692:  %var_2_1692 = icmp ult i32 %var_2_1689, %var_2_1688
; %var_2_1110 = icmp ult i32 %var_2_1107, %var_2_1106
; Matched:%var_2_341:  %var_2_341 = or i1 %var_2_339, %var_2_340
; %var_2_1111 = or i1 %var_2_1109, %var_2_1110
; Matched:%var_2_1694:  %var_2_1694 = zext i1 %var_2_1693 to i8
; %var_2_1112 = zext i1 %var_2_1111 to i8
; Matched:\<badref\>:  store i8 %var_2_3730, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_1112, i8* %var_2_14, align 1
; Matched:%var_2_2801:  %var_2_2801 = and i32 %var_2_2795, 255
; %var_2_1113 = and i32 %var_2_1107, 255
; Matched:%var_2_1696:  %var_2_1696 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1695) #14
; %var_2_1114 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1113)
; Matched:%var_2_1697:  %var_2_1697 = trunc i32 %var_2_1696 to i8
; %var_2_1115 = trunc i32 %var_2_1114 to i8
; Matched:%var_2_1698:  %var_2_1698 = and i8 %var_2_1697, 1
; %var_2_1116 = and i8 %var_2_1115, 1
; Matched:%var_2_1699:  %var_2_1699 = xor i8 %var_2_1698, 1
; %var_2_1117 = xor i8 %var_2_1116, 1
; Matched:\<badref\>:  store i8 %var_2_347, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_1117, i8* %var_2_21, align 1
; Matched:%var_2_1700:  %var_2_1700 = xor i32 %var_2_1688, %var_2_1683
; %var_2_1118 = xor i32 %var_2_1106, %var_2_1103
; Matched:%var_2_3737:  %var_2_3737 = xor i32 %var_2_3736, %var_2_3725
; %var_2_1119 = xor i32 %var_2_1118, %var_2_1107
; Matched:%var_2_3738:  %var_2_3738 = lshr i32 %var_2_3737, 4
; %var_2_1120 = lshr i32 %var_2_1119, 4
; Matched:%var_2_1703:  %var_2_1703 = trunc i32 %var_2_1702 to i8
; %var_2_1121 = trunc i32 %var_2_1120 to i8
; Matched:%var_2_1704:  %var_2_1704 = and i8 %var_2_1703, 1
; %var_2_1122 = and i8 %var_2_1121, 1
; Matched:\<badref\>:  store i8 %var_2_1704, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_1122, i8* %var_2_27, align 1
; Matched:%var_2_1705:  %var_2_1705 = icmp eq i32 %var_2_1689, 0
; %var_2_1123 = icmp eq i32 %var_2_1107, 0
; Matched:%var_2_354:  %var_2_354 = zext i1 %var_2_353 to i8
; %var_2_1124 = zext i1 %var_2_1123 to i8
; Matched:\<badref\>:  store i8 %var_2_1706, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_1124, i8* %var_2_30, align 1
; Matched:%var_2_355:  %var_2_355 = lshr i32 %var_2_337, 31
; %var_2_1125 = lshr i32 %var_2_1107, 31
; Matched:%var_2_1708:  %var_2_1708 = trunc i32 %var_2_1707 to i8
; %var_2_1126 = trunc i32 %var_2_1125 to i8
; Matched:\<badref\>:  store i8 %var_2_1708, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_1126, i8* %var_2_33, align 1
; Matched:%var_2_1709:  %var_2_1709 = lshr i32 %var_2_1683, 31
; %var_2_1127 = lshr i32 %var_2_1103, 31
; Matched:%var_2_1710:  %var_2_1710 = lshr i32 %var_2_1688, 31
; %var_2_1128 = lshr i32 %var_2_1106, 31
; Matched:%var_2_1711:  %var_2_1711 = xor i32 %var_2_1707, %var_2_1709
; %var_2_1129 = xor i32 %var_2_1125, %var_2_1127
; Matched:%var_2_1712:  %var_2_1712 = xor i32 %var_2_1707, %var_2_1710
; %var_2_1130 = xor i32 %var_2_1125, %var_2_1128
; Matched:%var_2_1713:  %var_2_1713 = add nuw nsw i32 %var_2_1711, %var_2_1712
; %var_2_1131 = add nuw nsw i32 %var_2_1129, %var_2_1130
; Matched:%var_2_1714:  %var_2_1714 = icmp eq i32 %var_2_1713, 2
; %var_2_1132 = icmp eq i32 %var_2_1131, 2
; Matched:%var_2_3751:  %var_2_3751 = zext i1 %var_2_3750 to i8
; %var_2_1133 = zext i1 %var_2_1132 to i8
; Matched:\<badref\>:  store i8 %var_2_1715, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_1133, i8* %var_2_39, align 1
; Matched:%var_2_1716:  %var_2_1716 = add i64 %var_2_1679, -32
; %var_2_1134 = add i64 %var_2_1058, -32
; Matched:%var_2_365:  %var_2_365 = add i64 %var_2_4810, 9
; %var_2_1135 = add i64 %var_2_1101, 9
; Matched:\<badref\>:  store i64 %var_2_365, i64* %PC, align 8
; store i64 %var_2_1135, i64* %var_2_3, align 8
; Matched:%var_2_1718:  %var_2_1718 = inttoptr i64 %var_2_1716 to i32*
; %var_2_1136 = inttoptr i64 %var_2_1134 to i32*
; Matched:\<badref\>:  store i32 %var_2_1689, i32* %var_2_1718, align 4
; store i32 %var_2_1107, i32* %var_2_1136, align 4
%var_2_1137 = load i64, i64* %RBP.i, align 8
%var_2_1138 = add i64 %var_2_1137, -32
%var_2_1139 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2869:  %var_2_2869 = add i64 %var_2_2868, 3
; %var_2_1140 = add i64 %var_2_1139, 3
; Matched:\<badref\>:  store i64 %var_2_2869, i64* %PC, align 8
; store i64 %var_2_1140, i64* %var_2_3, align 8
%var_2_1141 = inttoptr i64 %var_2_1138 to i32*
%var_2_1142 = load i32, i32* %var_2_1141, align 4
; Matched:%var_2_3761:  %var_2_3761 = zext i32 %var_2_3760 to i64
; %var_2_1143 = zext i32 %var_2_1142 to i64
; Matched:\<badref\>:  store i64 %var_2_3761, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1143, i64* %RAX.i2224, align 8
%var_2_1144 = add i64 %var_2_1137, -8
; Matched:%var_2_1345:  %var_2_1345 = add i64 %var_2_1339, 6
; %var_2_1145 = add i64 %var_2_1139, 6
; Matched:\<badref\>:  store i64 %var_2_1496, i64* %PC, align 8
; store i64 %var_2_1145, i64* %var_2_3, align 8
%var_2_1146 = inttoptr i64 %var_2_1144 to i32*
%var_2_1147 = load i32, i32* %var_2_1146, align 4
%var_2_1148 = add i32 %var_2_1147, %var_2_1142
; Matched:%var_2_3767:  %var_2_3767 = zext i32 %var_2_3766 to i64
; %var_2_1149 = zext i32 %var_2_1148 to i64
; Matched:\<badref\>:  store i64 %var_2_3767, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1149, i64* %RAX.i2224, align 8
; Matched:%var_2_1732:  %var_2_1732 = icmp ult i32 %var_2_1730, %var_2_1724
; %var_2_1150 = icmp ult i32 %var_2_1148, %var_2_1142
; Matched:%var_2_1733:  %var_2_1733 = icmp ult i32 %var_2_1730, %var_2_1729
; %var_2_1151 = icmp ult i32 %var_2_1148, %var_2_1147
; Matched:%var_2_1734:  %var_2_1734 = or i1 %var_2_1732, %var_2_1733
; %var_2_1152 = or i1 %var_2_1150, %var_2_1151
; Matched:%var_2_1735:  %var_2_1735 = zext i1 %var_2_1734 to i8
; %var_2_1153 = zext i1 %var_2_1152 to i8
; Matched:\<badref\>:  store i8 %var_2_1735, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_1153, i8* %var_2_14, align 1
; Matched:%var_2_1736:  %var_2_1736 = and i32 %var_2_1730, 255
; %var_2_1154 = and i32 %var_2_1148, 255
; Matched:%var_2_1737:  %var_2_1737 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1736) #14
; %var_2_1155 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1154)
; Matched:%var_2_2844:  %var_2_2844 = trunc i32 %var_2_2843 to i8
; %var_2_1156 = trunc i32 %var_2_1155 to i8
; Matched:%var_2_387:  %var_2_387 = and i8 %var_2_386, 1
; %var_2_1157 = and i8 %var_2_1156, 1
; Matched:%var_2_1740:  %var_2_1740 = xor i8 %var_2_1739, 1
; %var_2_1158 = xor i8 %var_2_1157, 1
; Matched:\<badref\>:  store i8 %var_2_1740, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_1158, i8* %var_2_21, align 1
; Matched:%var_2_1741:  %var_2_1741 = xor i32 %var_2_1729, %var_2_1724
; %var_2_1159 = xor i32 %var_2_1147, %var_2_1142
; Matched:%var_2_1742:  %var_2_1742 = xor i32 %var_2_1741, %var_2_1730
; %var_2_1160 = xor i32 %var_2_1159, %var_2_1148
; Matched:%var_2_1743:  %var_2_1743 = lshr i32 %var_2_1742, 4
; %var_2_1161 = lshr i32 %var_2_1160, 4
; Matched:%var_2_1744:  %var_2_1744 = trunc i32 %var_2_1743 to i8
; %var_2_1162 = trunc i32 %var_2_1161 to i8
; Matched:%var_2_2851:  %var_2_2851 = and i8 %var_2_2850, 1
; %var_2_1163 = and i8 %var_2_1162, 1
; Matched:\<badref\>:  store i8 %var_2_393, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_1163, i8* %var_2_27, align 1
; Matched:%var_2_1746:  %var_2_1746 = icmp eq i32 %var_2_1730, 0
; %var_2_1164 = icmp eq i32 %var_2_1148, 0
; Matched:%var_2_1747:  %var_2_1747 = zext i1 %var_2_1746 to i8
; %var_2_1165 = zext i1 %var_2_1164 to i8
; Matched:\<badref\>:  store i8 %var_2_1747, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_1165, i8* %var_2_30, align 1
; Matched:%var_2_1748:  %var_2_1748 = lshr i32 %var_2_1730, 31
; %var_2_1166 = lshr i32 %var_2_1148, 31
; Matched:%var_2_1749:  %var_2_1749 = trunc i32 %var_2_1748 to i8
; %var_2_1167 = trunc i32 %var_2_1166 to i8
; Matched:\<badref\>:  store i8 %var_2_1749, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_1167, i8* %var_2_33, align 1
; Matched:%var_2_398:  %var_2_398 = lshr i32 %var_2_372, 31
; %var_2_1168 = lshr i32 %var_2_1142, 31
; Matched:%var_2_1751:  %var_2_1751 = lshr i32 %var_2_1729, 31
; %var_2_1169 = lshr i32 %var_2_1147, 31
; Matched:%var_2_1752:  %var_2_1752 = xor i32 %var_2_1748, %var_2_1750
; %var_2_1170 = xor i32 %var_2_1166, %var_2_1168
; Matched:%var_2_1753:  %var_2_1753 = xor i32 %var_2_1748, %var_2_1751
; %var_2_1171 = xor i32 %var_2_1166, %var_2_1169
; Matched:%var_2_1754:  %var_2_1754 = add nuw nsw i32 %var_2_1752, %var_2_1753
; %var_2_1172 = add nuw nsw i32 %var_2_1170, %var_2_1171
; Matched:%var_2_1755:  %var_2_1755 = icmp eq i32 %var_2_1754, 2
; %var_2_1173 = icmp eq i32 %var_2_1172, 2
; Matched:%var_2_1756:  %var_2_1756 = zext i1 %var_2_1755 to i8
; %var_2_1174 = zext i1 %var_2_1173 to i8
; Matched:\<badref\>:  store i8 %var_2_1756, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_1174, i8* %var_2_39, align 1
; Matched:%var_2_405:  %var_2_405 = add i64 %var_2_367, -36
; %var_2_1175 = add i64 %var_2_1137, -36
%var_2_1176 = add i64 %var_2_1139, 9
store i64 %var_2_1176, i64* %var_2_3, align 8
; Matched:%var_2_1759:  %var_2_1759 = inttoptr i64 %var_2_1757 to i32*
; %var_2_1177 = inttoptr i64 %var_2_1175 to i32*
; Matched:\<badref\>:  store i32 %var_2_1730, i32* %var_2_1759, align 4
; store i32 %var_2_1148, i32* %var_2_1177, align 4
%var_2_1178 = load i64, i64* %RBP.i, align 8
%var_2_1179 = add i64 %var_2_1178, -36
%var_2_1180 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_3758:  %var_2_3758 = add i64 %var_2_3757, 3
; %var_2_1181 = add i64 %var_2_1180, 3
; Matched:\<badref\>:  store i64 %var_2_3758, i64* %PC, align 8
; store i64 %var_2_1181, i64* %var_2_3, align 8
%var_2_1182 = inttoptr i64 %var_2_1179 to i32*
%var_2_1183 = load i32, i32* %var_2_1182, align 4
; Matched:%var_2_414:  %var_2_414 = zext i32 %var_2_413 to i64
; %var_2_1184 = zext i32 %var_2_1183 to i64
; Matched:\<badref\>:  store i64 %var_2_2872, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1184, i64* %RAX.i2224, align 8
%var_2_1185 = add i64 %var_2_1178, -8
; Matched:%var_2_3763:  %var_2_3763 = add i64 %var_2_3757, 6
; %var_2_1186 = add i64 %var_2_1180, 6
; Matched:\<badref\>:  store i64 %var_2_3763, i64* %PC, align 8
; store i64 %var_2_1186, i64* %var_2_3, align 8
%var_2_1187 = inttoptr i64 %var_2_1185 to i32*
%var_2_1188 = load i32, i32* %var_2_1187, align 4
%var_2_1189 = add i32 %var_2_1188, %var_2_1183
; Matched:%var_2_420:  %var_2_420 = zext i32 %var_2_419 to i64
; %var_2_1190 = zext i32 %var_2_1189 to i64
; Matched:\<badref\>:  store i64 %var_2_2878, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1190, i64* %RAX.i2224, align 8
; Matched:%var_2_421:  %var_2_421 = icmp ult i32 %var_2_419, %var_2_413
; %var_2_1191 = icmp ult i32 %var_2_1189, %var_2_1183
; Matched:%var_2_422:  %var_2_422 = icmp ult i32 %var_2_419, %var_2_418
; %var_2_1192 = icmp ult i32 %var_2_1189, %var_2_1188
; Matched:%var_2_1775:  %var_2_1775 = or i1 %var_2_1773, %var_2_1774
; %var_2_1193 = or i1 %var_2_1191, %var_2_1192
; Matched:%var_2_2882:  %var_2_2882 = zext i1 %var_2_2881 to i8
; %var_2_1194 = zext i1 %var_2_1193 to i8
; Matched:\<badref\>:  store i8 %var_2_1776, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_1194, i8* %var_2_14, align 1
; Matched:%var_2_1777:  %var_2_1777 = and i32 %var_2_1771, 255
; %var_2_1195 = and i32 %var_2_1189, 255
; Matched:%var_2_1778:  %var_2_1778 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1777) #14
; %var_2_1196 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1195)
; Matched:%var_2_1779:  %var_2_1779 = trunc i32 %var_2_1778 to i8
; %var_2_1197 = trunc i32 %var_2_1196 to i8
; Matched:%var_2_1780:  %var_2_1780 = and i8 %var_2_1779, 1
; %var_2_1198 = and i8 %var_2_1197, 1
; Matched:%var_2_2887:  %var_2_2887 = xor i8 %var_2_2886, 1
; %var_2_1199 = xor i8 %var_2_1198, 1
; Matched:\<badref\>:  store i8 %var_2_2887, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_1199, i8* %var_2_21, align 1
; Matched:%var_2_3818:  %var_2_3818 = xor i32 %var_2_3806, %var_2_3801
; %var_2_1200 = xor i32 %var_2_1188, %var_2_1183
; Matched:%var_2_1783:  %var_2_1783 = xor i32 %var_2_1782, %var_2_1771
; %var_2_1201 = xor i32 %var_2_1200, %var_2_1189
; Matched:%var_2_1784:  %var_2_1784 = lshr i32 %var_2_1783, 4
; %var_2_1202 = lshr i32 %var_2_1201, 4
; Matched:%var_2_1785:  %var_2_1785 = trunc i32 %var_2_1784 to i8
; %var_2_1203 = trunc i32 %var_2_1202 to i8
; Matched:%var_2_1786:  %var_2_1786 = and i8 %var_2_1785, 1
; %var_2_1204 = and i8 %var_2_1203, 1
; Matched:\<badref\>:  store i8 %var_2_434, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_1204, i8* %var_2_27, align 1
; Matched:%var_2_1787:  %var_2_1787 = icmp eq i32 %var_2_1771, 0
; %var_2_1205 = icmp eq i32 %var_2_1189, 0
; Matched:%var_2_1788:  %var_2_1788 = zext i1 %var_2_1787 to i8
; %var_2_1206 = zext i1 %var_2_1205 to i8
; Matched:\<badref\>:  store i8 %var_2_3824, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_1206, i8* %var_2_30, align 1
; Matched:%var_2_1789:  %var_2_1789 = lshr i32 %var_2_1771, 31
; %var_2_1207 = lshr i32 %var_2_1189, 31
; Matched:%var_2_1790:  %var_2_1790 = trunc i32 %var_2_1789 to i8
; %var_2_1208 = trunc i32 %var_2_1207 to i8
; Matched:\<badref\>:  store i8 %var_2_438, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_1208, i8* %var_2_33, align 1
; Matched:%var_2_1791:  %var_2_1791 = lshr i32 %var_2_1765, 31
; %var_2_1209 = lshr i32 %var_2_1183, 31
; Matched:%var_2_1792:  %var_2_1792 = lshr i32 %var_2_1770, 31
; %var_2_1210 = lshr i32 %var_2_1188, 31
; Matched:%var_2_1793:  %var_2_1793 = xor i32 %var_2_1789, %var_2_1791
; %var_2_1211 = xor i32 %var_2_1207, %var_2_1209
; Matched:%var_2_442:  %var_2_442 = xor i32 %var_2_437, %var_2_440
; %var_2_1212 = xor i32 %var_2_1207, %var_2_1210
; Matched:%var_2_3831:  %var_2_3831 = add nuw nsw i32 %var_2_3829, %var_2_3830
; %var_2_1213 = add nuw nsw i32 %var_2_1211, %var_2_1212
; Matched:%var_2_1796:  %var_2_1796 = icmp eq i32 %var_2_1795, 2
; %var_2_1214 = icmp eq i32 %var_2_1213, 2
; Matched:%var_2_1797:  %var_2_1797 = zext i1 %var_2_1796 to i8
; %var_2_1215 = zext i1 %var_2_1214 to i8
; Matched:\<badref\>:  store i8 %var_2_445, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_1215, i8* %var_2_39, align 1
; Matched:%var_2_1798:  %var_2_1798 = add i64 %var_2_1760, -40
; %var_2_1216 = add i64 %var_2_1178, -40
%var_2_1217 = add i64 %var_2_1180, 9
store i64 %var_2_1217, i64* %var_2_3, align 8
; Matched:%var_2_448:  %var_2_448 = inttoptr i64 %var_2_446 to i32*
; %var_2_1218 = inttoptr i64 %var_2_1216 to i32*
; Matched:\<badref\>:  store i32 %var_2_3807, i32* %var_2_3836, align 4
; store i32 %var_2_1189, i32* %var_2_1218, align 4
%var_2_1219 = load i64, i64* %RBP.i, align 8
%var_2_1220 = add i64 %var_2_1219, -16
%var_2_1221 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_3282:  %var_2_3282 = add i64 %var_2_3281, 4
; %var_2_1222 = add i64 %var_2_1221, 4
; Matched:\<badref\>:  store i64 %var_2_3282, i64* %PC, align 8
; store i64 %var_2_1222, i64* %var_2_3, align 8
%var_2_1223 = inttoptr i64 %var_2_1220 to i64*
%var_2_1224 = load i64, i64* %var_2_1223, align 8
; Matched:\<badref\>:  store i64 %var_2_3284, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1224, i64* %RCX.i2236, align 8
%var_2_1225 = add i64 %var_2_1219, -28
%var_2_1226 = add i64 %var_2_1221, 8
store i64 %var_2_1226, i64* %var_2_3, align 8
%var_2_1227 = inttoptr i64 %var_2_1225 to i32*
%var_2_1228 = load i32, i32* %var_2_1227, align 4
%var_2_1229 = sext i32 %var_2_1228 to i64
; Matched:\<badref\>:  store i64 %var_2_2917, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1229, i64* %RDX.i2239, align 8
%var_2_1230 = shl nsw i64 %var_2_1229, 3
%var_2_1231 = add i64 %var_2_1230, %var_2_1224
; Matched:%var_2_3366:  %var_2_3366 = add i64 %var_2_3361, 13
; %var_2_1232 = add i64 %var_2_1221, 13
; Matched:\<badref\>:  store i64 %var_2_3366, i64* %PC, align 8
; store i64 %var_2_1232, i64* %var_2_3, align 8
%var_2_1233 = inttoptr i64 %var_2_1231 to i64*
%var_2_1234 = load i64, i64* %var_2_1233, align 8
store i64 %var_2_1234, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
; Matched:%var_2_3036:  %var_2_3036 = add i64 %var_2_3022, 17
; %var_2_1235 = add i64 %var_2_1221, 17
; Matched:\<badref\>:  store i64 %var_2_3036, i64* %PC, align 8
; store i64 %var_2_1235, i64* %var_2_3, align 8
%var_2_1236 = load i64, i64* %var_2_1223, align 8
; Matched:\<badref\>:  store i64 %var_2_2945, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1236, i64* %RCX.i2236, align 8
%var_2_1237 = add i64 %var_2_1219, -32
; Matched:%var_2_4638:  %var_2_4638 = add i64 %var_2_4627, 21
; %var_2_1238 = add i64 %var_2_1221, 21
; Matched:\<badref\>:  store i64 %var_2_4638, i64* %PC, align 8
; store i64 %var_2_1238, i64* %var_2_3, align 8
%var_2_1239 = inttoptr i64 %var_2_1237 to i32*
%var_2_1240 = load i32, i32* %var_2_1239, align 4
%var_2_1241 = sext i32 %var_2_1240 to i64
; Matched:\<badref\>:  store i64 %var_2_1103, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1241, i64* %RDX.i2239, align 8
%var_2_1242 = shl nsw i64 %var_2_1241, 3
%var_2_1243 = add i64 %var_2_1242, %var_2_1236
; Matched:%var_2_3455:  %var_2_3455 = add i64 %var_2_3434, 26
; %var_2_1244 = add i64 %var_2_1221, 26
; Matched:\<badref\>:  store i64 %var_2_3045, i64* %PC, align 8
; store i64 %var_2_1244, i64* %var_2_3, align 8
%var_2_1245 = bitcast i64 %var_2_1234 to double
%var_2_1246 = inttoptr i64 %var_2_1243 to double*
%var_2_1247 = load double, double* %var_2_1246, align 8
%var_2_1248 = fadd double %var_2_1245, %var_2_1247
store double %var_2_1248, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
; Matched:%var_2_2937:  %var_2_2937 = add i64 %var_2_2907, -120
; %var_2_1249 = add i64 %var_2_1219, -120
; Matched:%var_2_3503:  %var_2_3503 = add i64 %var_2_3459, 31
; %var_2_1250 = add i64 %var_2_1221, 31
; Matched:\<badref\>:  store i64 %var_2_3503, i64* %PC, align 8
; store i64 %var_2_1250, i64* %var_2_3, align 8
; Matched:%var_2_1833:  %var_2_1833 = inttoptr i64 %var_2_1831 to double*
; %var_2_1251 = inttoptr i64 %var_2_1249 to double*
; Matched:\<badref\>:  store double %var_2_1830, double* %var_2_1833, align 8
; store double %var_2_1248, double* %var_2_1251, align 8
%var_2_1252 = load i64, i64* %RBP.i, align 8
%var_2_1253 = add i64 %var_2_1252, -16
%var_2_1254 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_62:  %var_2_62 = add i64 %var_2_61, 4
; %var_2_1255 = add i64 %var_2_1254, 4
; Matched:\<badref\>:  store i64 %var_2_62, i64* %PC, align 8
; store i64 %var_2_1255, i64* %var_2_3, align 8
%var_2_1256 = inttoptr i64 %var_2_1253 to i64*
%var_2_1257 = load i64, i64* %var_2_1256, align 8
; Matched:\<badref\>:  store i64 %var_2_1014, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1257, i64* %RCX.i2236, align 8
%var_2_1258 = add i64 %var_2_1252, -28
; Matched:%var_2_4103:  %var_2_4103 = add i64 %var_2_4098, 7
; %var_2_1259 = add i64 %var_2_1254, 7
; Matched:\<badref\>:  store i64 %var_2_3877, i64* %PC, align 8
; store i64 %var_2_1259, i64* %var_2_3, align 8
%var_2_1260 = inttoptr i64 %var_2_1258 to i32*
%var_2_1261 = load i32, i32* %var_2_1260, align 4
%var_2_1262 = add i32 %var_2_1261, 1
; Matched:%var_2_3405:  %var_2_3405 = zext i32 %var_2_3404 to i64
; %var_2_1263 = zext i32 %var_2_1262 to i64
; Matched:\<badref\>:  store i64 %var_2_3064, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1263, i64* %RAX.i2224, align 8
; Matched:%var_2_2952:  %var_2_2952 = icmp eq i32 %var_2_2949, -1
; %var_2_1264 = icmp eq i32 %var_2_1261, -1
; Matched:%var_2_3407:  %var_2_3407 = icmp eq i32 %var_2_3404, 0
; %var_2_1265 = icmp eq i32 %var_2_1262, 0
; Matched:%var_2_3408:  %var_2_3408 = or i1 %var_2_3406, %var_2_3407
; %var_2_1266 = or i1 %var_2_1264, %var_2_1265
; Matched:%var_2_3409:  %var_2_3409 = zext i1 %var_2_3408 to i8
; %var_2_1267 = zext i1 %var_2_1266 to i8
; Matched:\<badref\>:  store i8 %var_2_3409, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_1267, i8* %var_2_14, align 1
; Matched:%var_2_2956:  %var_2_2956 = and i32 %var_2_2950, 255
; %var_2_1268 = and i32 %var_2_1262, 255
; Matched:%var_2_3070:  %var_2_3070 = tail call i32 @llvm.ctpop.i32(i32 %var_2_3069) #14
; %var_2_1269 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1268)
; Matched:%var_2_954:  %var_2_954 = trunc i32 %var_2_953 to i8
; %var_2_1270 = trunc i32 %var_2_1269 to i8
; Matched:%var_2_3072:  %var_2_3072 = and i8 %var_2_3071, 1
; %var_2_1271 = and i8 %var_2_1270, 1
; Matched:%var_2_3414:  %var_2_3414 = xor i8 %var_2_3413, 1
; %var_2_1272 = xor i8 %var_2_1271, 1
; Matched:\<badref\>:  store i8 %var_2_2960, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_1272, i8* %var_2_21, align 1
; Matched:%var_2_3415:  %var_2_3415 = xor i32 %var_2_3404, %var_2_3403
; %var_2_1273 = xor i32 %var_2_1262, %var_2_1261
; Matched:%var_2_3075:  %var_2_3075 = lshr i32 %var_2_3074, 4
; %var_2_1274 = lshr i32 %var_2_1273, 4
; Matched:%var_2_3076:  %var_2_3076 = trunc i32 %var_2_3075 to i8
; %var_2_1275 = trunc i32 %var_2_1274 to i8
; Matched:%var_2_3418:  %var_2_3418 = and i8 %var_2_3417, 1
; %var_2_1276 = and i8 %var_2_1275, 1
; Matched:\<badref\>:  store i8 %var_2_2964, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_1276, i8* %var_2_27, align 1
; Matched:%var_2_3419:  %var_2_3419 = zext i1 %var_2_3407 to i8
; %var_2_1277 = zext i1 %var_2_1265 to i8
; Matched:\<badref\>:  store i8 %var_2_2965, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_1277, i8* %var_2_30, align 1
; Matched:%var_2_3420:  %var_2_3420 = lshr i32 %var_2_3404, 31
; %var_2_1278 = lshr i32 %var_2_1262, 31
; Matched:%var_2_2967:  %var_2_2967 = trunc i32 %var_2_2966 to i8
; %var_2_1279 = trunc i32 %var_2_1278 to i8
; Matched:\<badref\>:  store i8 %var_2_3080, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_1279, i8* %var_2_33, align 1
; Matched:%var_2_510:  %var_2_510 = lshr i32 %var_2_491, 31
; %var_2_1280 = lshr i32 %var_2_1261, 31
; Matched:%var_2_3082:  %var_2_3082 = xor i32 %var_2_3079, %var_2_3081
; %var_2_1281 = xor i32 %var_2_1278, %var_2_1280
; Matched:%var_2_3083:  %var_2_3083 = add nuw nsw i32 %var_2_3082, %var_2_3079
; %var_2_1282 = add nuw nsw i32 %var_2_1281, %var_2_1278
; Matched:%var_2_967:  %var_2_967 = icmp eq i32 %var_2_966, 2
; %var_2_1283 = icmp eq i32 %var_2_1282, 2
; Matched:%var_2_968:  %var_2_968 = zext i1 %var_2_967 to i8
; %var_2_1284 = zext i1 %var_2_1283 to i8
; Matched:\<badref\>:  store i8 %var_2_968, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_1284, i8* %var_2_39, align 1
%var_2_1285 = sext i32 %var_2_1262 to i64
; Matched:\<badref\>:  store i64 %var_2_3427, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1285, i64* %RDX.i2239, align 8
%var_2_1286 = shl nsw i64 %var_2_1285, 3
%var_2_1287 = add i64 %var_2_1257, %var_2_1286
; Matched:%var_2_3202:  %var_2_3202 = add i64 %var_2_3168, 18
; %var_2_1288 = add i64 %var_2_1254, 18
; Matched:\<badref\>:  store i64 %var_2_4132, i64* %PC, align 8
; store i64 %var_2_1288, i64* %var_2_3, align 8
%var_2_1289 = inttoptr i64 %var_2_1287 to i64*
%var_2_1290 = load i64, i64* %var_2_1289, align 8
store i64 %var_2_1290, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
; Matched:%var_2_3205:  %var_2_3205 = add i64 %var_2_3168, 22
; %var_2_1291 = add i64 %var_2_1254, 22
; Matched:\<badref\>:  store i64 %var_2_4388, i64* %PC, align 8
; store i64 %var_2_1291, i64* %var_2_3, align 8
%var_2_1292 = load i64, i64* %var_2_1256, align 8
; Matched:\<badref\>:  store i64 %var_2_3988, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1292, i64* %RCX.i2236, align 8
%var_2_1293 = add i64 %var_2_1252, -32
; Matched:%var_2_2102:  %var_2_2102 = add i64 %var_2_2062, 25
; %var_2_1294 = add i64 %var_2_1254, 25
; Matched:\<badref\>:  store i64 %var_2_1876, i64* %PC, align 8
; store i64 %var_2_1294, i64* %var_2_3, align 8
%var_2_1295 = inttoptr i64 %var_2_1293 to i32*
%var_2_1296 = load i32, i32* %var_2_1295, align 4
%var_2_1297 = add i32 %var_2_1296, 1
; Matched:%var_2_3551:  %var_2_3551 = zext i32 %var_2_3550 to i64
; %var_2_1298 = zext i32 %var_2_1297 to i64
; Matched:\<badref\>:  store i64 %var_2_3099, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1298, i64* %RAX.i2224, align 8
; Matched:%var_2_3552:  %var_2_3552 = icmp eq i32 %var_2_3549, -1
; %var_2_1299 = icmp eq i32 %var_2_1296, -1
; Matched:%var_2_3101:  %var_2_3101 = icmp eq i32 %var_2_3098, 0
; %var_2_1300 = icmp eq i32 %var_2_1297, 0
; Matched:%var_2_3554:  %var_2_3554 = or i1 %var_2_3552, %var_2_3553
; %var_2_1301 = or i1 %var_2_1299, %var_2_1300
; Matched:%var_2_3103:  %var_2_3103 = zext i1 %var_2_3102 to i8
; %var_2_1302 = zext i1 %var_2_1301 to i8
; Matched:\<badref\>:  store i8 %var_2_1139, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_1302, i8* %var_2_14, align 1
; Matched:%var_2_1140:  %var_2_1140 = and i32 %var_2_1134, 255
; %var_2_1303 = and i32 %var_2_1297, 255
; Matched:%var_2_3557:  %var_2_3557 = tail call i32 @llvm.ctpop.i32(i32 %var_2_3556) #14
; %var_2_1304 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1303)
; Matched:%var_2_3558:  %var_2_3558 = trunc i32 %var_2_3557 to i8
; %var_2_1305 = trunc i32 %var_2_1304 to i8
; Matched:%var_2_1143:  %var_2_1143 = and i8 %var_2_1142, 1
; %var_2_1306 = and i8 %var_2_1305, 1
; Matched:%var_2_1144:  %var_2_1144 = xor i8 %var_2_1143, 1
; %var_2_1307 = xor i8 %var_2_1306, 1
; Matched:\<badref\>:  store i8 %var_2_3560, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_1307, i8* %var_2_21, align 1
; Matched:%var_2_3561:  %var_2_3561 = xor i32 %var_2_3550, %var_2_3549
; %var_2_1308 = xor i32 %var_2_1297, %var_2_1296
; Matched:%var_2_3562:  %var_2_3562 = lshr i32 %var_2_3561, 4
; %var_2_1309 = lshr i32 %var_2_1308, 4
; Matched:%var_2_2998:  %var_2_2998 = trunc i32 %var_2_2997 to i8
; %var_2_1310 = trunc i32 %var_2_1309 to i8
; Matched:%var_2_3112:  %var_2_3112 = and i8 %var_2_3111, 1
; %var_2_1311 = and i8 %var_2_1310, 1
; Matched:\<badref\>:  store i8 %var_2_2999, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_1311, i8* %var_2_27, align 1
; Matched:%var_2_3113:  %var_2_3113 = zext i1 %var_2_3101 to i8
; %var_2_1312 = zext i1 %var_2_1300 to i8
; Matched:\<badref\>:  store i8 %var_2_3113, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_1312, i8* %var_2_30, align 1
; Matched:%var_2_3114:  %var_2_3114 = lshr i32 %var_2_3098, 31
; %var_2_1313 = lshr i32 %var_2_1297, 31
; Matched:%var_2_3115:  %var_2_3115 = trunc i32 %var_2_3114 to i8
; %var_2_1314 = trunc i32 %var_2_1313 to i8
; Matched:\<badref\>:  store i8 %var_2_3002, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_1314, i8* %var_2_33, align 1
; Matched:%var_2_3116:  %var_2_3116 = lshr i32 %var_2_3097, 31
; %var_2_1315 = lshr i32 %var_2_1296, 31
; Matched:%var_2_1153:  %var_2_1153 = xor i32 %var_2_1150, %var_2_1152
; %var_2_1316 = xor i32 %var_2_1313, %var_2_1315
; Matched:%var_2_3118:  %var_2_3118 = add nuw nsw i32 %var_2_3117, %var_2_3114
; %var_2_1317 = add nuw nsw i32 %var_2_1316, %var_2_1313
; Matched:%var_2_3006:  %var_2_3006 = icmp eq i32 %var_2_3005, 2
; %var_2_1318 = icmp eq i32 %var_2_1317, 2
; Matched:%var_2_3007:  %var_2_3007 = zext i1 %var_2_3006 to i8
; %var_2_1319 = zext i1 %var_2_1318 to i8
; Matched:\<badref\>:  store i8 %var_2_3572, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_1319, i8* %var_2_39, align 1
%var_2_1320 = sext i32 %var_2_1297 to i64
; Matched:\<badref\>:  store i64 %var_2_1157, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1320, i64* %RDX.i2239, align 8
%var_2_1321 = shl nsw i64 %var_2_1320, 3
%var_2_1322 = add i64 %var_2_1292, %var_2_1321
; Matched:%var_2_4280:  %var_2_4280 = add i64 %var_2_4211, 36
; %var_2_1323 = add i64 %var_2_1254, 36
; Matched:\<badref\>:  store i64 %var_2_4054, i64* %PC, align 8
; store i64 %var_2_1323, i64* %var_2_3, align 8
%var_2_1324 = bitcast i64 %var_2_1290 to double
%var_2_1325 = inttoptr i64 %var_2_1322 to double*
%var_2_1326 = load double, double* %var_2_1325, align 8
%var_2_1327 = fadd double %var_2_1324, %var_2_1326
store double %var_2_1327, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
; Matched:%var_2_1910:  %var_2_1910 = load i64, i64* %RBP, align 8
; %var_2_1328 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1911:  %var_2_1911 = add i64 %var_2_1910, -128
; %var_2_1329 = add i64 %var_2_1328, -128
; Matched:%var_2_3948:  %var_2_3948 = add i64 %var_2_3872, 41
; %var_2_1330 = add i64 %var_2_1254, 41
; Matched:\<badref\>:  store i64 %var_2_2436, i64* %PC, align 8
; store i64 %var_2_1330, i64* %var_2_3, align 8
; Matched:%var_2_1913:  %var_2_1913 = inttoptr i64 %var_2_1911 to double*
; %var_2_1331 = inttoptr i64 %var_2_1329 to double*
; Matched:\<badref\>:  store double %var_2_3015, double* %var_2_3019, align 8
; store double %var_2_1327, double* %var_2_1331, align 8
%var_2_1332 = load i64, i64* %RBP.i, align 8
%var_2_1333 = add i64 %var_2_1332, -16
%var_2_1334 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2143:  %var_2_2143 = add i64 %var_2_2142, 4
; %var_2_1335 = add i64 %var_2_1334, 4
; Matched:\<badref\>:  store i64 %var_2_2143, i64* %PC, align 8
; store i64 %var_2_1335, i64* %var_2_3, align 8
%var_2_1336 = inttoptr i64 %var_2_1333 to i64*
%var_2_1337 = load i64, i64* %var_2_1336, align 8
; Matched:\<badref\>:  store i64 %var_2_989, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1337, i64* %RCX.i2236, align 8
%var_2_1338 = add i64 %var_2_1332, -28
%var_2_1339 = add i64 %var_2_1334, 8
store i64 %var_2_1339, i64* %var_2_3, align 8
%var_2_1340 = inttoptr i64 %var_2_1338 to i32*
%var_2_1341 = load i32, i32* %var_2_1340, align 4
%var_2_1342 = sext i32 %var_2_1341 to i64
; Matched:\<badref\>:  store i64 %var_2_3030, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1342, i64* %RDX.i2239, align 8
%var_2_1343 = shl nsw i64 %var_2_1342, 3
%var_2_1344 = add i64 %var_2_1343, %var_2_1337
; Matched:%var_2_3033:  %var_2_3033 = add i64 %var_2_3022, 13
; %var_2_1345 = add i64 %var_2_1334, 13
; Matched:\<badref\>:  store i64 %var_2_3033, i64* %PC, align 8
; store i64 %var_2_1345, i64* %var_2_3, align 8
%var_2_1346 = inttoptr i64 %var_2_1344 to i64*
%var_2_1347 = load i64, i64* %var_2_1346, align 8
store i64 %var_2_1347, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
; Matched:%var_2_578:  %var_2_578 = add i64 %var_2_564, 17
; %var_2_1348 = add i64 %var_2_1334, 17
; Matched:\<badref\>:  store i64 %var_2_578, i64* %PC, align 8
; store i64 %var_2_1348, i64* %var_2_3, align 8
%var_2_1349 = load i64, i64* %var_2_1336, align 8
; Matched:\<badref\>:  store i64 %var_2_3910, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1349, i64* %RCX.i2236, align 8
%var_2_1350 = add i64 %var_2_1332, -32
; Matched:%var_2_4498:  %var_2_4498 = add i64 %var_2_4487, 21
; %var_2_1351 = add i64 %var_2_1334, 21
; Matched:\<badref\>:  store i64 %var_2_4498, i64* %PC, align 8
; store i64 %var_2_1351, i64* %var_2_3, align 8
%var_2_1352 = inttoptr i64 %var_2_1350 to i32*
%var_2_1353 = load i32, i32* %var_2_1352, align 4
%var_2_1354 = sext i32 %var_2_1353 to i64
; Matched:\<badref\>:  store i64 %var_2_471, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1354, i64* %RDX.i2239, align 8
%var_2_1355 = shl nsw i64 %var_2_1354, 3
%var_2_1356 = add i64 %var_2_1355, %var_2_1349
; Matched:%var_2_813:  %var_2_813 = add i64 %var_2_790, 26
; %var_2_1357 = add i64 %var_2_1334, 26
; Matched:\<badref\>:  store i64 %var_2_3975, i64* %PC, align 8
; store i64 %var_2_1357, i64* %var_2_3, align 8
%var_2_1358 = bitcast i64 %var_2_1347 to double
%var_2_1359 = inttoptr i64 %var_2_1356 to double*
%var_2_1360 = load double, double* %var_2_1359, align 8
%var_2_1361 = fsub double %var_2_1358, %var_2_1360
store double %var_2_1361, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
; Matched:%var_2_1944:  %var_2_1944 = add i64 %var_2_1914, -136
; %var_2_1362 = add i64 %var_2_1332, -136
; Matched:%var_2_3051:  %var_2_3051 = add i64 %var_2_3022, 34
; %var_2_1363 = add i64 %var_2_1334, 34
; Matched:\<badref\>:  store i64 %var_2_3051, i64* %PC, align 8
; store i64 %var_2_1363, i64* %var_2_3, align 8
; Matched:%var_2_3052:  %var_2_3052 = inttoptr i64 %var_2_3050 to double*
; %var_2_1364 = inttoptr i64 %var_2_1362 to double*
; Matched:\<badref\>:  store double %var_2_591, double* %var_2_594, align 8
; store double %var_2_1361, double* %var_2_1364, align 8
%var_2_1365 = load i64, i64* %RBP.i, align 8
%var_2_1366 = add i64 %var_2_1365, -16
%var_2_1367 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_452:  %var_2_452 = add i64 %var_2_451, 4
; %var_2_1368 = add i64 %var_2_1367, 4
; Matched:\<badref\>:  store i64 %var_2_452, i64* %PC, align 8
; store i64 %var_2_1368, i64* %var_2_3, align 8
%var_2_1369 = inttoptr i64 %var_2_1366 to i64*
%var_2_1370 = load i64, i64* %var_2_1369, align 8
; Matched:\<badref\>:  store i64 %var_2_3037, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1370, i64* %RCX.i2236, align 8
%var_2_1371 = add i64 %var_2_1365, -28
; Matched:%var_2_1841:  %var_2_1841 = add i64 %var_2_1836, 7
; %var_2_1372 = add i64 %var_2_1367, 7
; Matched:\<badref\>:  store i64 %var_2_4103, i64* %PC, align 8
; store i64 %var_2_1372, i64* %var_2_3, align 8
%var_2_1373 = inttoptr i64 %var_2_1371 to i32*
%var_2_1374 = load i32, i32* %var_2_1373, align 4
%var_2_1375 = add i32 %var_2_1374, 1
; Matched:%var_2_3064:  %var_2_3064 = zext i32 %var_2_3063 to i64
; %var_2_1376 = zext i32 %var_2_1375 to i64
; Matched:\<badref\>:  store i64 %var_2_3405, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1376, i64* %RAX.i2224, align 8
; Matched:%var_2_3065:  %var_2_3065 = icmp eq i32 %var_2_3062, -1
; %var_2_1377 = icmp eq i32 %var_2_1374, -1
; Matched:%var_2_2953:  %var_2_2953 = icmp eq i32 %var_2_2950, 0
; %var_2_1378 = icmp eq i32 %var_2_1375, 0
; Matched:%var_2_3067:  %var_2_3067 = or i1 %var_2_3065, %var_2_3066
; %var_2_1379 = or i1 %var_2_1377, %var_2_1378
; Matched:%var_2_3068:  %var_2_3068 = zext i1 %var_2_3067 to i8
; %var_2_1380 = zext i1 %var_2_1379 to i8
; Matched:\<badref\>:  store i8 %var_2_3068, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_1380, i8* %var_2_14, align 1
; Matched:%var_2_3069:  %var_2_3069 = and i32 %var_2_3063, 255
; %var_2_1381 = and i32 %var_2_1375, 255
; Matched:%var_2_953:  %var_2_953 = tail call i32 @llvm.ctpop.i32(i32 %var_2_952) #14
; %var_2_1382 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1381)
; Matched:%var_2_613:  %var_2_613 = trunc i32 %var_2_612 to i8
; %var_2_1383 = trunc i32 %var_2_1382 to i8
; Matched:%var_2_955:  %var_2_955 = and i8 %var_2_954, 1
; %var_2_1384 = and i8 %var_2_1383, 1
; Matched:%var_2_3073:  %var_2_3073 = xor i8 %var_2_3072, 1
; %var_2_1385 = xor i8 %var_2_1384, 1
; Matched:\<badref\>:  store i8 %var_2_3073, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_1385, i8* %var_2_21, align 1
; Matched:%var_2_3074:  %var_2_3074 = xor i32 %var_2_3063, %var_2_3062
; %var_2_1386 = xor i32 %var_2_1375, %var_2_1374
; Matched:%var_2_958:  %var_2_958 = lshr i32 %var_2_957, 4
; %var_2_1387 = lshr i32 %var_2_1386, 4
; Matched:%var_2_959:  %var_2_959 = trunc i32 %var_2_958 to i8
; %var_2_1388 = trunc i32 %var_2_1387 to i8
; Matched:%var_2_3077:  %var_2_3077 = and i8 %var_2_3076, 1
; %var_2_1389 = and i8 %var_2_1388, 1
; Matched:\<badref\>:  store i8 %var_2_3077, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_1389, i8* %var_2_27, align 1
; Matched:%var_2_2965:  %var_2_2965 = zext i1 %var_2_2953 to i8
; %var_2_1390 = zext i1 %var_2_1378 to i8
; Matched:\<badref\>:  store i8 %var_2_3078, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_1390, i8* %var_2_30, align 1
; Matched:%var_2_3079:  %var_2_3079 = lshr i32 %var_2_3063, 31
; %var_2_1391 = lshr i32 %var_2_1375, 31
; Matched:%var_2_3080:  %var_2_3080 = trunc i32 %var_2_3079 to i8
; %var_2_1392 = trunc i32 %var_2_1391 to i8
; Matched:\<badref\>:  store i8 %var_2_963, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_1392, i8* %var_2_33, align 1
; Matched:%var_2_964:  %var_2_964 = lshr i32 %var_2_945, 31
; %var_2_1393 = lshr i32 %var_2_1374, 31
; Matched:%var_2_511:  %var_2_511 = xor i32 %var_2_508, %var_2_510
; %var_2_1394 = xor i32 %var_2_1391, %var_2_1393
; Matched:%var_2_966:  %var_2_966 = add nuw nsw i32 %var_2_965, %var_2_962
; %var_2_1395 = add nuw nsw i32 %var_2_1394, %var_2_1391
; Matched:%var_2_513:  %var_2_513 = icmp eq i32 %var_2_512, 2
; %var_2_1396 = icmp eq i32 %var_2_1395, 2
; Matched:%var_2_627:  %var_2_627 = zext i1 %var_2_626 to i8
; %var_2_1397 = zext i1 %var_2_1396 to i8
; Matched:\<badref\>:  store i8 %var_2_627, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_1397, i8* %var_2_39, align 1
%var_2_1398 = sext i32 %var_2_1375 to i64
; Matched:\<badref\>:  store i64 %var_2_3086, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1398, i64* %RDX.i2239, align 8
%var_2_1399 = shl nsw i64 %var_2_1398, 3
%var_2_1400 = add i64 %var_2_1370, %var_2_1399
; Matched:%var_2_4132:  %var_2_4132 = add i64 %var_2_4098, 18
; %var_2_1401 = add i64 %var_2_1367, 18
; Matched:\<badref\>:  store i64 %var_2_3906, i64* %PC, align 8
; store i64 %var_2_1401, i64* %var_2_3, align 8
%var_2_1402 = inttoptr i64 %var_2_1400 to i64*
%var_2_1403 = load i64, i64* %var_2_1402, align 8
store i64 %var_2_1403, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
; Matched:%var_2_4388:  %var_2_4388 = add i64 %var_2_4378, 22
; %var_2_1404 = add i64 %var_2_1367, 22
; Matched:\<badref\>:  store i64 %var_2_634, i64* %PC, align 8
; store i64 %var_2_1404, i64* %var_2_3, align 8
%var_2_1405 = load i64, i64* %var_2_1369, align 8
; Matched:\<badref\>:  store i64 %var_2_3842, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1405, i64* %RCX.i2236, align 8
%var_2_1406 = add i64 %var_2_1365, -32
; Matched:%var_2_2982:  %var_2_2982 = add i64 %var_2_2942, 25
; %var_2_1407 = add i64 %var_2_1367, 25
; Matched:\<badref\>:  store i64 %var_2_2102, i64* %PC, align 8
; store i64 %var_2_1407, i64* %var_2_3, align 8
%var_2_1408 = inttoptr i64 %var_2_1406 to i32*
%var_2_1409 = load i32, i32* %var_2_1408, align 4
%var_2_1410 = add i32 %var_2_1409, 1
; Matched:%var_2_1135:  %var_2_1135 = zext i32 %var_2_1134 to i64
; %var_2_1411 = zext i32 %var_2_1410 to i64
; Matched:\<badref\>:  store i64 %var_2_1135, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1411, i64* %RAX.i2224, align 8
; Matched:%var_2_1136:  %var_2_1136 = icmp eq i32 %var_2_1133, -1
; %var_2_1412 = icmp eq i32 %var_2_1409, -1
; Matched:%var_2_3553:  %var_2_3553 = icmp eq i32 %var_2_3550, 0
; %var_2_1413 = icmp eq i32 %var_2_1410, 0
; Matched:%var_2_3102:  %var_2_3102 = or i1 %var_2_3100, %var_2_3101
; %var_2_1414 = or i1 %var_2_1412, %var_2_1413
; Matched:%var_2_1139:  %var_2_1139 = zext i1 %var_2_1138 to i8
; %var_2_1415 = zext i1 %var_2_1414 to i8
; Matched:\<badref\>:  store i8 %var_2_532, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_1415, i8* %var_2_14, align 1
; Matched:%var_2_646:  %var_2_646 = and i32 %var_2_640, 255
; %var_2_1416 = and i32 %var_2_1410, 255
; Matched:%var_2_1141:  %var_2_1141 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1140) #14
; %var_2_1417 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1416)
; Matched:%var_2_1142:  %var_2_1142 = trunc i32 %var_2_1141 to i8
; %var_2_1418 = trunc i32 %var_2_1417 to i8
; Matched:%var_2_649:  %var_2_649 = and i8 %var_2_648, 1
; %var_2_1419 = and i8 %var_2_1418, 1
; Matched:%var_2_2578:  %var_2_2578 = xor i8 %var_2_2577, 1
; %var_2_1420 = xor i8 %var_2_1419, 1
; Matched:\<badref\>:  store i8 %var_2_1144, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_1420, i8* %var_2_21, align 1
; Matched:%var_2_3109:  %var_2_3109 = xor i32 %var_2_3098, %var_2_3097
; %var_2_1421 = xor i32 %var_2_1410, %var_2_1409
; Matched:%var_2_3110:  %var_2_3110 = lshr i32 %var_2_3109, 4
; %var_2_1422 = lshr i32 %var_2_1421, 4
; Matched:%var_2_3563:  %var_2_3563 = trunc i32 %var_2_3562 to i8
; %var_2_1423 = trunc i32 %var_2_1422 to i8
; Matched:%var_2_3564:  %var_2_3564 = and i8 %var_2_3563, 1
; %var_2_1424 = and i8 %var_2_1423, 1
; Matched:\<badref\>:  store i8 %var_2_3112, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_1424, i8* %var_2_27, align 1
; Matched:%var_2_1149:  %var_2_1149 = zext i1 %var_2_1137 to i8
; %var_2_1425 = zext i1 %var_2_1413 to i8
; Matched:\<badref\>:  store i8 %var_2_1149, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_1425, i8* %var_2_30, align 1
; Matched:%var_2_1150:  %var_2_1150 = lshr i32 %var_2_1134, 31
; %var_2_1426 = lshr i32 %var_2_1410, 31
; Matched:%var_2_1151:  %var_2_1151 = trunc i32 %var_2_1150 to i8
; %var_2_1427 = trunc i32 %var_2_1426 to i8
; Matched:\<badref\>:  store i8 %var_2_3115, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_1427, i8* %var_2_33, align 1
; Matched:%var_2_1152:  %var_2_1152 = lshr i32 %var_2_1133, 31
; %var_2_1428 = lshr i32 %var_2_1409, 31
; Matched:%var_2_2587:  %var_2_2587 = xor i32 %var_2_2584, %var_2_2586
; %var_2_1429 = xor i32 %var_2_1426, %var_2_1428
; Matched:%var_2_1154:  %var_2_1154 = add nuw nsw i32 %var_2_1153, %var_2_1150
; %var_2_1430 = add nuw nsw i32 %var_2_1429, %var_2_1426
; Matched:%var_2_3571:  %var_2_3571 = icmp eq i32 %var_2_3570, 2
; %var_2_1431 = icmp eq i32 %var_2_1430, 2
; Matched:%var_2_3120:  %var_2_3120 = zext i1 %var_2_3119 to i8
; %var_2_1432 = zext i1 %var_2_1431 to i8
; Matched:\<badref\>:  store i8 %var_2_1156, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_1432, i8* %var_2_39, align 1
%var_2_1433 = sext i32 %var_2_1410 to i64
; Matched:\<badref\>:  store i64 %var_2_2591, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1433, i64* %RDX.i2239, align 8
%var_2_1434 = shl nsw i64 %var_2_1433, 3
%var_2_1435 = add i64 %var_2_1405, %var_2_1434
; Matched:%var_2_2018:  %var_2_2018 = add i64 %var_2_1949, 36
; %var_2_1436 = add i64 %var_2_1367, 36
; Matched:\<badref\>:  store i64 %var_2_4280, i64* %PC, align 8
; store i64 %var_2_1436, i64* %var_2_3, align 8
%var_2_1437 = bitcast i64 %var_2_1403 to double
%var_2_1438 = inttoptr i64 %var_2_1435 to double*
%var_2_1439 = load double, double* %var_2_1438, align 8
%var_2_1440 = fsub double %var_2_1437, %var_2_1439
store double %var_2_1440, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
; Matched:%var_2_2023:  %var_2_2023 = load i64, i64* %RBP, align 8
; %var_2_1441 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2024:  %var_2_2024 = add i64 %var_2_2023, -144
; %var_2_1442 = add i64 %var_2_1441, -144
; Matched:%var_2_673:  %var_2_673 = add i64 %var_2_597, 44
; %var_2_1443 = add i64 %var_2_1367, 44
; Matched:\<badref\>:  store i64 %var_2_673, i64* %PC, align 8
; store i64 %var_2_1443, i64* %var_2_3, align 8
; Matched:%var_2_2026:  %var_2_2026 = inttoptr i64 %var_2_2024 to double*
; %var_2_1444 = inttoptr i64 %var_2_1442 to double*
; Matched:\<badref\>:  store double %var_2_3128, double* %var_2_3132, align 8
; store double %var_2_1440, double* %var_2_1444, align 8
%var_2_1445 = load i64, i64* %RBP.i, align 8
%var_2_1446 = add i64 %var_2_1445, -16
%var_2_1447 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_3873:  %var_2_3873 = add i64 %var_2_3872, 4
; %var_2_1448 = add i64 %var_2_1447, 4
; Matched:\<badref\>:  store i64 %var_2_3873, i64* %PC, align 8
; store i64 %var_2_1448, i64* %var_2_3, align 8
%var_2_1449 = inttoptr i64 %var_2_1446 to i64*
%var_2_1450 = load i64, i64* %var_2_1449, align 8
; Matched:\<badref\>:  store i64 %var_2_3374, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1450, i64* %RCX.i2236, align 8
%var_2_1451 = add i64 %var_2_1445, -36
%var_2_1452 = add i64 %var_2_1447, 8
store i64 %var_2_1452, i64* %var_2_3, align 8
%var_2_1453 = inttoptr i64 %var_2_1451 to i32*
%var_2_1454 = load i32, i32* %var_2_1453, align 4
%var_2_1455 = sext i32 %var_2_1454 to i64
; Matched:\<badref\>:  store i64 %var_2_3143, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1455, i64* %RDX.i2239, align 8
%var_2_1456 = shl nsw i64 %var_2_1455, 3
%var_2_1457 = add i64 %var_2_1456, %var_2_1450
; Matched:%var_2_3146:  %var_2_3146 = add i64 %var_2_3135, 13
; %var_2_1458 = add i64 %var_2_1447, 13
; Matched:\<badref\>:  store i64 %var_2_2347, i64* %PC, align 8
; store i64 %var_2_1458, i64* %var_2_3, align 8
%var_2_1459 = inttoptr i64 %var_2_1457 to i64*
%var_2_1460 = load i64, i64* %var_2_1459, align 8
store i64 %var_2_1460, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
; Matched:%var_2_2266:  %var_2_2266 = add i64 %var_2_2255, 17
; %var_2_1461 = add i64 %var_2_1447, 17
; Matched:\<badref\>:  store i64 %var_2_2266, i64* %PC, align 8
; store i64 %var_2_1461, i64* %var_2_3, align 8
%var_2_1462 = load i64, i64* %var_2_1449, align 8
; Matched:\<badref\>:  store i64 %var_2_3955, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1462, i64* %RCX.i2236, align 8
%var_2_1463 = add i64 %var_2_1445, -40
; Matched:%var_2_991:  %var_2_991 = add i64 %var_2_976, 21
; %var_2_1464 = add i64 %var_2_1447, 21
; Matched:\<badref\>:  store i64 %var_2_991, i64* %PC, align 8
; store i64 %var_2_1464, i64* %var_2_3, align 8
%var_2_1465 = inttoptr i64 %var_2_1463 to i32*
%var_2_1466 = load i32, i32* %var_2_1465, align 4
%var_2_1467 = sext i32 %var_2_1466 to i64
; Matched:\<badref\>:  store i64 %var_2_3155, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1467, i64* %RDX.i2239, align 8
%var_2_1468 = shl nsw i64 %var_2_1467, 3
%var_2_1469 = add i64 %var_2_1468, %var_2_1462
; Matched:%var_2_1131:  %var_2_1131 = add i64 %var_2_1110, 26
; %var_2_1470 = add i64 %var_2_1447, 26
; Matched:\<badref\>:  store i64 %var_2_997, i64* %PC, align 8
; store i64 %var_2_1470, i64* %var_2_3, align 8
%var_2_1471 = bitcast i64 %var_2_1460 to double
%var_2_1472 = inttoptr i64 %var_2_1469 to double*
%var_2_1473 = load double, double* %var_2_1472, align 8
%var_2_1474 = fadd double %var_2_1471, %var_2_1473
store double %var_2_1474, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
; Matched:%var_2_2057:  %var_2_2057 = add i64 %var_2_2027, -152
; %var_2_1475 = add i64 %var_2_1445, -152
; Matched:%var_2_3164:  %var_2_3164 = add i64 %var_2_3135, 34
; %var_2_1476 = add i64 %var_2_1447, 34
; Matched:\<badref\>:  store i64 %var_2_3164, i64* %PC, align 8
; store i64 %var_2_1476, i64* %var_2_3, align 8
; Matched:%var_2_2059:  %var_2_2059 = inttoptr i64 %var_2_2057 to double*
; %var_2_1477 = inttoptr i64 %var_2_1475 to double*
; Matched:\<badref\>:  store double %var_2_704, double* %var_2_707, align 8
; store double %var_2_1474, double* %var_2_1477, align 8
%var_2_1478 = load i64, i64* %RBP.i, align 8
%var_2_1479 = add i64 %var_2_1478, -16
%var_2_1480 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_565:  %var_2_565 = add i64 %var_2_564, 4
; %var_2_1481 = add i64 %var_2_1480, 4
; Matched:\<badref\>:  store i64 %var_2_565, i64* %PC, align 8
; store i64 %var_2_1481, i64* %var_2_3, align 8
%var_2_1482 = inttoptr i64 %var_2_1479 to i64*
%var_2_1483 = load i64, i64* %var_2_1482, align 8
; Matched:\<badref\>:  store i64 %var_2_3263, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1483, i64* %RCX.i2236, align 8
%var_2_1484 = add i64 %var_2_1478, -36
; Matched:%var_2_2067:  %var_2_2067 = add i64 %var_2_2062, 7
; %var_2_1485 = add i64 %var_2_1480, 7
; Matched:\<badref\>:  store i64 %var_2_1841, i64* %PC, align 8
; store i64 %var_2_1485, i64* %var_2_3, align 8
%var_2_1486 = inttoptr i64 %var_2_1484 to i32*
%var_2_1487 = load i32, i32* %var_2_1486, align 4
%var_2_1488 = add i32 %var_2_1487, 1
; Matched:%var_2_3290:  %var_2_3290 = zext i32 %var_2_3289 to i64
; %var_2_1489 = zext i32 %var_2_1488 to i64
; Matched:\<badref\>:  store i64 %var_2_3290, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1489, i64* %RAX.i2224, align 8
; Matched:%var_2_3178:  %var_2_3178 = icmp eq i32 %var_2_3175, -1
; %var_2_1490 = icmp eq i32 %var_2_1487, -1
; Matched:%var_2_3179:  %var_2_3179 = icmp eq i32 %var_2_3176, 0
; %var_2_1491 = icmp eq i32 %var_2_1488, 0
; Matched:%var_2_3180:  %var_2_3180 = or i1 %var_2_3178, %var_2_3179
; %var_2_1492 = or i1 %var_2_1490, %var_2_1491
; Matched:%var_2_3181:  %var_2_3181 = zext i1 %var_2_3180 to i8
; %var_2_1493 = zext i1 %var_2_1492 to i8
; Matched:\<badref\>:  store i8 %var_2_3181, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_1493, i8* %var_2_14, align 1
; Matched:%var_2_3182:  %var_2_3182 = and i32 %var_2_3176, 255
; %var_2_1494 = and i32 %var_2_1488, 255
; Matched:%var_2_3183:  %var_2_3183 = tail call i32 @llvm.ctpop.i32(i32 %var_2_3182) #14
; %var_2_1495 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1494)
; Matched:%var_2_3184:  %var_2_3184 = trunc i32 %var_2_3183 to i8
; %var_2_1496 = trunc i32 %var_2_1495 to i8
; Matched:%var_2_3298:  %var_2_3298 = and i8 %var_2_3297, 1
; %var_2_1497 = and i8 %var_2_1496, 1
; Matched:%var_2_728:  %var_2_728 = xor i8 %var_2_727, 1
; %var_2_1498 = xor i8 %var_2_1497, 1
; Matched:\<badref\>:  store i8 %var_2_3299, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_1498, i8* %var_2_21, align 1
; Matched:%var_2_3187:  %var_2_3187 = xor i32 %var_2_3176, %var_2_3175
; %var_2_1499 = xor i32 %var_2_1488, %var_2_1487
; Matched:%var_2_3188:  %var_2_3188 = lshr i32 %var_2_3187, 4
; %var_2_1500 = lshr i32 %var_2_1499, 4
; Matched:%var_2_3189:  %var_2_3189 = trunc i32 %var_2_3188 to i8
; %var_2_1501 = trunc i32 %var_2_1500 to i8
; Matched:%var_2_3190:  %var_2_3190 = and i8 %var_2_3189, 1
; %var_2_1502 = and i8 %var_2_1501, 1
; Matched:\<badref\>:  store i8 %var_2_3190, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_1502, i8* %var_2_27, align 1
; Matched:%var_2_3191:  %var_2_3191 = zext i1 %var_2_3179 to i8
; %var_2_1503 = zext i1 %var_2_1491 to i8
; Matched:\<badref\>:  store i8 %var_2_3191, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_1503, i8* %var_2_30, align 1
; Matched:%var_2_3192:  %var_2_3192 = lshr i32 %var_2_3176, 31
; %var_2_1504 = lshr i32 %var_2_1488, 31
; Matched:%var_2_3306:  %var_2_3306 = trunc i32 %var_2_3305 to i8
; %var_2_1505 = trunc i32 %var_2_1504 to i8
; Matched:\<badref\>:  store i8 %var_2_3193, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_1505, i8* %var_2_33, align 1
; Matched:%var_2_3307:  %var_2_3307 = lshr i32 %var_2_3288, 31
; %var_2_1506 = lshr i32 %var_2_1487, 31
; Matched:%var_2_2089:  %var_2_2089 = xor i32 %var_2_2086, %var_2_2088
; %var_2_1507 = xor i32 %var_2_1504, %var_2_1506
; Matched:%var_2_738:  %var_2_738 = add nuw nsw i32 %var_2_737, %var_2_734
; %var_2_1508 = add nuw nsw i32 %var_2_1507, %var_2_1504
; Matched:%var_2_852:  %var_2_852 = icmp eq i32 %var_2_851, 2
; %var_2_1509 = icmp eq i32 %var_2_1508, 2
; Matched:%var_2_3311:  %var_2_3311 = zext i1 %var_2_3310 to i8
; %var_2_1510 = zext i1 %var_2_1509 to i8
; Matched:\<badref\>:  store i8 %var_2_740, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_1510, i8* %var_2_39, align 1
%var_2_1511 = sext i32 %var_2_1488 to i64
; Matched:\<badref\>:  store i64 %var_2_3312, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1511, i64* %RDX.i2239, align 8
%var_2_1512 = shl nsw i64 %var_2_1511, 3
%var_2_1513 = add i64 %var_2_1483, %var_2_1512
; Matched:%var_2_3315:  %var_2_3315 = add i64 %var_2_3281, 18
; %var_2_1514 = add i64 %var_2_1480, 18
; Matched:\<badref\>:  store i64 %var_2_3089, i64* %PC, align 8
; store i64 %var_2_1514, i64* %var_2_3, align 8
%var_2_1515 = inttoptr i64 %var_2_1513 to i64*
%var_2_1516 = load i64, i64* %var_2_1515, align 8
store i64 %var_2_1516, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
; Matched:%var_2_634:  %var_2_634 = add i64 %var_2_597, 22
; %var_2_1517 = add i64 %var_2_1480, 22
; Matched:\<badref\>:  store i64 %var_2_860, i64* %PC, align 8
; store i64 %var_2_1517, i64* %var_2_3, align 8
%var_2_1518 = load i64, i64* %var_2_1482, align 8
; Matched:\<badref\>:  store i64 %var_2_4068, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1518, i64* %RCX.i2236, align 8
%var_2_1519 = add i64 %var_2_1478, -40
; Matched:%var_2_3208:  %var_2_3208 = add i64 %var_2_3168, 25
; %var_2_1520 = add i64 %var_2_1480, 25
; Matched:\<badref\>:  store i64 %var_2_2982, i64* %PC, align 8
; store i64 %var_2_1520, i64* %var_2_3, align 8
%var_2_1521 = inttoptr i64 %var_2_1519 to i32*
%var_2_1522 = load i32, i32* %var_2_1521, align 4
%var_2_1523 = add i32 %var_2_1522, 1
; Matched:%var_2_3212:  %var_2_3212 = zext i32 %var_2_3211 to i64
; %var_2_1524 = zext i32 %var_2_1523 to i64
; Matched:\<badref\>:  store i64 %var_2_3212, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1524, i64* %RAX.i2224, align 8
; Matched:%var_2_3326:  %var_2_3326 = icmp eq i32 %var_2_3323, -1
; %var_2_1525 = icmp eq i32 %var_2_1522, -1
; Matched:%var_2_3327:  %var_2_3327 = icmp eq i32 %var_2_3324, 0
; %var_2_1526 = icmp eq i32 %var_2_1523, 0
; Matched:%var_2_3328:  %var_2_3328 = or i1 %var_2_3326, %var_2_3327
; %var_2_1527 = or i1 %var_2_1525, %var_2_1526
; Matched:%var_2_3216:  %var_2_3216 = zext i1 %var_2_3215 to i8
; %var_2_1528 = zext i1 %var_2_1527 to i8
; Matched:\<badref\>:  store i8 %var_2_3329, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_1528, i8* %var_2_14, align 1
; Matched:%var_2_3330:  %var_2_3330 = and i32 %var_2_3324, 255
; %var_2_1529 = and i32 %var_2_1523, 255
; Matched:%var_2_2700:  %var_2_2700 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2699) #14
; %var_2_1530 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1529)
; Matched:%var_2_2701:  %var_2_2701 = trunc i32 %var_2_2700 to i8
; %var_2_1531 = trunc i32 %var_2_1530 to i8
; Matched:%var_2_3333:  %var_2_3333 = and i8 %var_2_3332, 1
; %var_2_1532 = and i8 %var_2_1531, 1
; Matched:%var_2_3221:  %var_2_3221 = xor i8 %var_2_3220, 1
; %var_2_1533 = xor i8 %var_2_1532, 1
; Matched:\<badref\>:  store i8 %var_2_3633, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_1533, i8* %var_2_21, align 1
; Matched:%var_2_3634:  %var_2_3634 = xor i32 %var_2_3623, %var_2_3622
; %var_2_1534 = xor i32 %var_2_1523, %var_2_1522
; Matched:%var_2_3223:  %var_2_3223 = lshr i32 %var_2_3222, 4
; %var_2_1535 = lshr i32 %var_2_1534, 4
; Matched:%var_2_3636:  %var_2_3636 = trunc i32 %var_2_3635 to i8
; %var_2_1536 = trunc i32 %var_2_1535 to i8
; Matched:%var_2_3338:  %var_2_3338 = and i8 %var_2_3337, 1
; %var_2_1537 = and i8 %var_2_1536, 1
; Matched:\<badref\>:  store i8 %var_2_3338, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_1537, i8* %var_2_27, align 1
; Matched:%var_2_3339:  %var_2_3339 = zext i1 %var_2_3327 to i8
; %var_2_1538 = zext i1 %var_2_1526 to i8
; Matched:\<badref\>:  store i8 %var_2_3339, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_1538, i8* %var_2_30, align 1
; Matched:%var_2_3340:  %var_2_3340 = lshr i32 %var_2_3324, 31
; %var_2_1539 = lshr i32 %var_2_1523, 31
; Matched:%var_2_3341:  %var_2_3341 = trunc i32 %var_2_3340 to i8
; %var_2_1540 = trunc i32 %var_2_1539 to i8
; Matched:\<badref\>:  store i8 %var_2_3341, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_1540, i8* %var_2_33, align 1
; Matched:%var_2_3342:  %var_2_3342 = lshr i32 %var_2_3323, 31
; %var_2_1541 = lshr i32 %var_2_1522, 31
; Matched:%var_2_3230:  %var_2_3230 = xor i32 %var_2_3227, %var_2_3229
; %var_2_1542 = xor i32 %var_2_1539, %var_2_1541
; Matched:%var_2_3344:  %var_2_3344 = add nuw nsw i32 %var_2_3343, %var_2_3340
; %var_2_1543 = add nuw nsw i32 %var_2_1542, %var_2_1539
; Matched:%var_2_887:  %var_2_887 = icmp eq i32 %var_2_886, 2
; %var_2_1544 = icmp eq i32 %var_2_1543, 2
; Matched:%var_2_3346:  %var_2_3346 = zext i1 %var_2_3345 to i8
; %var_2_1545 = zext i1 %var_2_1544 to i8
; Matched:\<badref\>:  store i8 %var_2_3233, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_1545, i8* %var_2_39, align 1
%var_2_1546 = sext i32 %var_2_1523 to i64
; Matched:\<badref\>:  store i64 %var_2_3234, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1546, i64* %RDX.i2239, align 8
%var_2_1547 = shl nsw i64 %var_2_1546, 3
%var_2_1548 = add i64 %var_2_1518, %var_2_1547
; Matched:%var_2_2244:  %var_2_2244 = add i64 %var_2_2175, 36
; %var_2_1549 = add i64 %var_2_1480, 36
; Matched:\<badref\>:  store i64 %var_2_2018, i64* %PC, align 8
; store i64 %var_2_1549, i64* %var_2_3, align 8
%var_2_1550 = bitcast i64 %var_2_1516 to double
%var_2_1551 = inttoptr i64 %var_2_1548 to double*
%var_2_1552 = load double, double* %var_2_1551, align 8
%var_2_1553 = fadd double %var_2_1550, %var_2_1552
store double %var_2_1553, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
; Matched:%var_2_3242:  %var_2_3242 = load i64, i64* %RBP, align 8
; %var_2_1554 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2137:  %var_2_2137 = add i64 %var_2_2136, -160
; %var_2_1555 = add i64 %var_2_1554, -160
; Matched:%var_2_786:  %var_2_786 = add i64 %var_2_710, 44
; %var_2_1556 = add i64 %var_2_1480, 44
; Matched:\<badref\>:  store i64 %var_2_786, i64* %PC, align 8
; store i64 %var_2_1556, i64* %var_2_3, align 8
; Matched:%var_2_2139:  %var_2_2139 = inttoptr i64 %var_2_2137 to double*
; %var_2_1557 = inttoptr i64 %var_2_1555 to double*
; Matched:\<badref\>:  store double %var_2_2135, double* %var_2_2139, align 8
; store double %var_2_1553, double* %var_2_1557, align 8
%var_2_1558 = load i64, i64* %RBP.i, align 8
%var_2_1559 = add i64 %var_2_1558, -16
%var_2_1560 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_3249:  %var_2_3249 = add i64 %var_2_3248, 4
; %var_2_1561 = add i64 %var_2_1560, 4
; Matched:\<badref\>:  store i64 %var_2_3249, i64* %PC, align 8
; store i64 %var_2_1561, i64* %var_2_3, align 8
%var_2_1562 = inttoptr i64 %var_2_1559 to i64*
%var_2_1563 = load i64, i64* %var_2_1562, align 8
; Matched:\<badref\>:  store i64 %var_2_1244, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1563, i64* %RCX.i2236, align 8
%var_2_1564 = add i64 %var_2_1558, -36
%var_2_1565 = add i64 %var_2_1560, 8
store i64 %var_2_1565, i64* %var_2_3, align 8
%var_2_1566 = inttoptr i64 %var_2_1564 to i32*
%var_2_1567 = load i32, i32* %var_2_1566, align 4
%var_2_1568 = sext i32 %var_2_1567 to i64
; Matched:\<badref\>:  store i64 %var_2_3256, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1568, i64* %RDX.i2239, align 8
%var_2_1569 = shl nsw i64 %var_2_1568, 3
%var_2_1570 = add i64 %var_2_1569, %var_2_1563
; Matched:%var_2_1006:  %var_2_1006 = add i64 %var_2_1001, 13
; %var_2_1571 = add i64 %var_2_1560, 13
; Matched:\<badref\>:  store i64 %var_2_1006, i64* %PC, align 8
; store i64 %var_2_1571, i64* %var_2_3, align 8
%var_2_1572 = inttoptr i64 %var_2_1570 to i64*
%var_2_1573 = load i64, i64* %var_2_1572, align 8
store i64 %var_2_1573, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
; Matched:%var_2_3853:  %var_2_3853 = add i64 %var_2_3839, 17
; %var_2_1574 = add i64 %var_2_1560, 17
; Matched:\<badref\>:  store i64 %var_2_3853, i64* %PC, align 8
; store i64 %var_2_1574, i64* %var_2_3, align 8
%var_2_1575 = load i64, i64* %var_2_1562, align 8
; Matched:\<badref\>:  store i64 %var_2_3447, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1575, i64* %RCX.i2236, align 8
%var_2_1576 = add i64 %var_2_1558, -40
; Matched:%var_2_2624:  %var_2_2624 = add i64 %var_2_2613, 21
; %var_2_1577 = add i64 %var_2_1560, 21
; Matched:\<badref\>:  store i64 %var_2_2624, i64* %PC, align 8
; store i64 %var_2_1577, i64* %var_2_3, align 8
%var_2_1578 = inttoptr i64 %var_2_1576 to i32*
%var_2_1579 = load i32, i32* %var_2_1578, align 4
%var_2_1580 = sext i32 %var_2_1579 to i64
; Matched:\<badref\>:  store i64 %var_2_3268, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1580, i64* %RDX.i2239, align 8
%var_2_1581 = shl nsw i64 %var_2_1580, 3
%var_2_1582 = add i64 %var_2_1581, %var_2_1575
; Matched:%var_2_4088:  %var_2_4088 = add i64 %var_2_4065, 26
; %var_2_1583 = add i64 %var_2_1560, 26
; Matched:\<badref\>:  store i64 %var_2_1826, i64* %PC, align 8
; store i64 %var_2_1583, i64* %var_2_3, align 8
%var_2_1584 = bitcast i64 %var_2_1573 to double
%var_2_1585 = inttoptr i64 %var_2_1582 to double*
%var_2_1586 = load double, double* %var_2_1585, align 8
%var_2_1587 = fsub double %var_2_1584, %var_2_1586
store double %var_2_1587, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
; Matched:%var_2_2170:  %var_2_2170 = add i64 %var_2_2140, -168
; %var_2_1588 = add i64 %var_2_1558, -168
; Matched:%var_2_3576:  %var_2_3576 = add i64 %var_2_3532, 34
; %var_2_1589 = add i64 %var_2_1560, 34
; Matched:\<badref\>:  store i64 %var_2_3576, i64* %PC, align 8
; store i64 %var_2_1589, i64* %var_2_3, align 8
; Matched:%var_2_3278:  %var_2_3278 = inttoptr i64 %var_2_3276 to double*
; %var_2_1590 = inttoptr i64 %var_2_1588 to double*
; Matched:\<badref\>:  store double %var_2_2169, double* %var_2_2172, align 8
; store double %var_2_1587, double* %var_2_1590, align 8
%var_2_1591 = load i64, i64* %RBP.i, align 8
%var_2_1592 = add i64 %var_2_1591, -16
%var_2_1593 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1950:  %var_2_1950 = add i64 %var_2_1949, 4
; %var_2_1594 = add i64 %var_2_1593, 4
; Matched:\<badref\>:  store i64 %var_2_1950, i64* %PC, align 8
; store i64 %var_2_1594, i64* %var_2_3, align 8
%var_2_1595 = inttoptr i64 %var_2_1592 to i64*
%var_2_1596 = load i64, i64* %var_2_1595, align 8
; Matched:\<badref\>:  store i64 %var_2_4214, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1596, i64* %RCX.i2236, align 8
%var_2_1597 = add i64 %var_2_1591, -36
; Matched:%var_2_2947:  %var_2_2947 = add i64 %var_2_2942, 7
; %var_2_1598 = add i64 %var_2_1593, 7
; Matched:\<badref\>:  store i64 %var_2_2067, i64* %PC, align 8
; store i64 %var_2_1598, i64* %var_2_3, align 8
%var_2_1599 = inttoptr i64 %var_2_1597 to i32*
%var_2_1600 = load i32, i32* %var_2_1599, align 4
%var_2_1601 = add i32 %var_2_1600, 1
; Matched:%var_2_719:  %var_2_719 = zext i32 %var_2_718 to i64
; %var_2_1602 = zext i32 %var_2_1601 to i64
; Matched:\<badref\>:  store i64 %var_2_719, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1602, i64* %RAX.i2224, align 8
; Matched:%var_2_3291:  %var_2_3291 = icmp eq i32 %var_2_3288, -1
; %var_2_1603 = icmp eq i32 %var_2_1600, -1
; Matched:%var_2_3292:  %var_2_3292 = icmp eq i32 %var_2_3289, 0
; %var_2_1604 = icmp eq i32 %var_2_1601, 0
; Matched:%var_2_3293:  %var_2_3293 = or i1 %var_2_3291, %var_2_3292
; %var_2_1605 = or i1 %var_2_1603, %var_2_1604
; Matched:%var_2_3294:  %var_2_3294 = zext i1 %var_2_3293 to i8
; %var_2_1606 = zext i1 %var_2_1605 to i8
; Matched:\<badref\>:  store i8 %var_2_3294, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_1606, i8* %var_2_14, align 1
; Matched:%var_2_3295:  %var_2_3295 = and i32 %var_2_3289, 255
; %var_2_1607 = and i32 %var_2_1601, 255
; Matched:%var_2_3296:  %var_2_3296 = tail call i32 @llvm.ctpop.i32(i32 %var_2_3295) #14
; %var_2_1608 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1607)
; Matched:%var_2_3297:  %var_2_3297 = trunc i32 %var_2_3296 to i8
; %var_2_1609 = trunc i32 %var_2_1608 to i8
; Matched:%var_2_727:  %var_2_727 = and i8 %var_2_726, 1
; %var_2_1610 = and i8 %var_2_1609, 1
; Matched:%var_2_841:  %var_2_841 = xor i8 %var_2_840, 1
; %var_2_1611 = xor i8 %var_2_1610, 1
; Matched:\<badref\>:  store i8 %var_2_728, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_1611, i8* %var_2_21, align 1
; Matched:%var_2_3300:  %var_2_3300 = xor i32 %var_2_3289, %var_2_3288
; %var_2_1612 = xor i32 %var_2_1601, %var_2_1600
; Matched:%var_2_3301:  %var_2_3301 = lshr i32 %var_2_3300, 4
; %var_2_1613 = lshr i32 %var_2_1612, 4
; Matched:%var_2_3302:  %var_2_3302 = trunc i32 %var_2_3301 to i8
; %var_2_1614 = trunc i32 %var_2_1613 to i8
; Matched:%var_2_3303:  %var_2_3303 = and i8 %var_2_3302, 1
; %var_2_1615 = and i8 %var_2_1614, 1
; Matched:\<badref\>:  store i8 %var_2_3303, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_1615, i8* %var_2_27, align 1
; Matched:%var_2_3304:  %var_2_3304 = zext i1 %var_2_3292 to i8
; %var_2_1616 = zext i1 %var_2_1604 to i8
; Matched:\<badref\>:  store i8 %var_2_3304, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_1616, i8* %var_2_30, align 1
; Matched:%var_2_3305:  %var_2_3305 = lshr i32 %var_2_3289, 31
; %var_2_1617 = lshr i32 %var_2_1601, 31
; Matched:%var_2_735:  %var_2_735 = trunc i32 %var_2_734 to i8
; %var_2_1618 = trunc i32 %var_2_1617 to i8
; Matched:\<badref\>:  store i8 %var_2_3306, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_1618, i8* %var_2_33, align 1
; Matched:%var_2_736:  %var_2_736 = lshr i32 %var_2_717, 31
; %var_2_1619 = lshr i32 %var_2_1600, 31
; Matched:%var_2_737:  %var_2_737 = xor i32 %var_2_734, %var_2_736
; %var_2_1620 = xor i32 %var_2_1617, %var_2_1619
; Matched:%var_2_851:  %var_2_851 = add nuw nsw i32 %var_2_850, %var_2_847
; %var_2_1621 = add nuw nsw i32 %var_2_1620, %var_2_1617
; Matched:%var_2_4127:  %var_2_4127 = icmp eq i32 %var_2_4126, 2
; %var_2_1622 = icmp eq i32 %var_2_1621, 2
; Matched:%var_2_740:  %var_2_740 = zext i1 %var_2_739 to i8
; %var_2_1623 = zext i1 %var_2_1622 to i8
; Matched:\<badref\>:  store i8 %var_2_853, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_1623, i8* %var_2_39, align 1
%var_2_1624 = sext i32 %var_2_1601 to i64
; Matched:\<badref\>:  store i64 %var_2_741, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1624, i64* %RDX.i2239, align 8
%var_2_1625 = shl nsw i64 %var_2_1624, 3
%var_2_1626 = add i64 %var_2_1596, %var_2_1625
; Matched:%var_2_168:  %var_2_168 = add i64 %var_2_153, 18
; %var_2_1627 = add i64 %var_2_1593, 18
; Matched:\<badref\>:  store i64 %var_2_168, i64* %PC, align 8
; store i64 %var_2_1627, i64* %var_2_3, align 8
%var_2_1628 = inttoptr i64 %var_2_1626 to i64*
%var_2_1629 = load i64, i64* %var_2_1628, align 8
store i64 %var_2_1629, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
; Matched:%var_2_860:  %var_2_860 = add i64 %var_2_823, 22
; %var_2_1630 = add i64 %var_2_1593, 22
; Matched:\<badref\>:  store i64 %var_2_2352, i64* %PC, align 8
; store i64 %var_2_1630, i64* %var_2_3, align 8
%var_2_1631 = load i64, i64* %var_2_1595, align 8
; Matched:\<badref\>:  store i64 %var_2_680, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1631, i64* %RCX.i2236, align 8
%var_2_1632 = add i64 %var_2_1591, -40
; Matched:%var_2_637:  %var_2_637 = add i64 %var_2_597, 25
; %var_2_1633 = add i64 %var_2_1593, 25
; Matched:\<badref\>:  store i64 %var_2_3208, i64* %PC, align 8
; store i64 %var_2_1633, i64* %var_2_3, align 8
%var_2_1634 = inttoptr i64 %var_2_1632 to i32*
%var_2_1635 = load i32, i32* %var_2_1634, align 4
%var_2_1636 = add i32 %var_2_1635, 1
; Matched:%var_2_3325:  %var_2_3325 = zext i32 %var_2_3324 to i64
; %var_2_1637 = zext i32 %var_2_1636 to i64
; Matched:\<badref\>:  store i64 %var_2_3325, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1637, i64* %RAX.i2224, align 8
; Matched:%var_2_755:  %var_2_755 = icmp eq i32 %var_2_752, -1
; %var_2_1638 = icmp eq i32 %var_2_1635, -1
; Matched:%var_2_2696:  %var_2_2696 = icmp eq i32 %var_2_2693, 0
; %var_2_1639 = icmp eq i32 %var_2_1636, 0
; Matched:%var_2_757:  %var_2_757 = or i1 %var_2_755, %var_2_756
; %var_2_1640 = or i1 %var_2_1638, %var_2_1639
; Matched:%var_2_3329:  %var_2_3329 = zext i1 %var_2_3328 to i8
; %var_2_1641 = zext i1 %var_2_1640 to i8
; Matched:\<badref\>:  store i8 %var_2_2698, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_1641, i8* %var_2_14, align 1
; Matched:%var_2_759:  %var_2_759 = and i32 %var_2_753, 255
; %var_2_1642 = and i32 %var_2_1636, 255
; Matched:%var_2_760:  %var_2_760 = tail call i32 @llvm.ctpop.i32(i32 %var_2_759) #14
; %var_2_1643 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1642)
; Matched:%var_2_761:  %var_2_761 = trunc i32 %var_2_760 to i8
; %var_2_1644 = trunc i32 %var_2_1643 to i8
; Matched:%var_2_762:  %var_2_762 = and i8 %var_2_761, 1
; %var_2_1645 = and i8 %var_2_1644, 1
; Matched:%var_2_3334:  %var_2_3334 = xor i8 %var_2_3333, 1
; %var_2_1646 = xor i8 %var_2_1645, 1
; Matched:\<badref\>:  store i8 %var_2_2703, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_1646, i8* %var_2_21, align 1
; Matched:%var_2_764:  %var_2_764 = xor i32 %var_2_753, %var_2_752
; %var_2_1647 = xor i32 %var_2_1636, %var_2_1635
; Matched:%var_2_3336:  %var_2_3336 = lshr i32 %var_2_3335, 4
; %var_2_1648 = lshr i32 %var_2_1647, 4
; Matched:%var_2_3224:  %var_2_3224 = trunc i32 %var_2_3223 to i8
; %var_2_1649 = trunc i32 %var_2_1648 to i8
; Matched:%var_2_2707:  %var_2_2707 = and i8 %var_2_2706, 1
; %var_2_1650 = and i8 %var_2_1649, 1
; Matched:\<badref\>:  store i8 %var_2_2707, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_1650, i8* %var_2_27, align 1
; Matched:%var_2_2708:  %var_2_2708 = zext i1 %var_2_2696 to i8
; %var_2_1651 = zext i1 %var_2_1639 to i8
; Matched:\<badref\>:  store i8 %var_2_2708, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_1651, i8* %var_2_30, align 1
; Matched:%var_2_769:  %var_2_769 = lshr i32 %var_2_753, 31
; %var_2_1652 = lshr i32 %var_2_1636, 31
; Matched:%var_2_770:  %var_2_770 = trunc i32 %var_2_769 to i8
; %var_2_1653 = trunc i32 %var_2_1652 to i8
; Matched:\<badref\>:  store i8 %var_2_770, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_1653, i8* %var_2_33, align 1
; Matched:%var_2_771:  %var_2_771 = lshr i32 %var_2_752, 31
; %var_2_1654 = lshr i32 %var_2_1635, 31
; Matched:%var_2_3343:  %var_2_3343 = xor i32 %var_2_3340, %var_2_3342
; %var_2_1655 = xor i32 %var_2_1652, %var_2_1654
; Matched:%var_2_886:  %var_2_886 = add nuw nsw i32 %var_2_885, %var_2_882
; %var_2_1656 = add nuw nsw i32 %var_2_1655, %var_2_1652
; Matched:%var_2_774:  %var_2_774 = icmp eq i32 %var_2_773, 2
; %var_2_1657 = icmp eq i32 %var_2_1656, 2
; Matched:%var_2_775:  %var_2_775 = zext i1 %var_2_774 to i8
; %var_2_1658 = zext i1 %var_2_1657 to i8
; Matched:\<badref\>:  store i8 %var_2_3346, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_1658, i8* %var_2_39, align 1
%var_2_1659 = sext i32 %var_2_1636 to i64
; Matched:\<badref\>:  store i64 %var_2_3347, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1659, i64* %RDX.i2239, align 8
%var_2_1660 = shl nsw i64 %var_2_1659, 3
%var_2_1661 = add i64 %var_2_1631, %var_2_1660
; Matched:%var_2_3124:  %var_2_3124 = add i64 %var_2_3055, 36
; %var_2_1662 = add i64 %var_2_1593, 36
; Matched:\<badref\>:  store i64 %var_2_2244, i64* %PC, align 8
; store i64 %var_2_1662, i64* %var_2_3, align 8
%var_2_1663 = bitcast i64 %var_2_1629 to double
%var_2_1664 = inttoptr i64 %var_2_1661 to double*
%var_2_1665 = load double, double* %var_2_1664, align 8
%var_2_1666 = fsub double %var_2_1663, %var_2_1665
store double %var_2_1666, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
; Matched:%var_2_897:  %var_2_897 = load i64, i64* %RBP, align 8
; %var_2_1667 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_3356:  %var_2_3356 = add i64 %var_2_3355, -176
; %var_2_1668 = add i64 %var_2_1667, -176
; Matched:%var_2_899:  %var_2_899 = add i64 %var_2_823, 44
; %var_2_1669 = add i64 %var_2_1593, 44
; Matched:\<badref\>:  store i64 %var_2_899, i64* %PC, align 8
; store i64 %var_2_1669, i64* %var_2_3, align 8
; Matched:%var_2_2252:  %var_2_2252 = inttoptr i64 %var_2_2250 to double*
; %var_2_1670 = inttoptr i64 %var_2_1668 to double*
; Matched:\<badref\>:  store double %var_2_2248, double* %var_2_2252, align 8
; store double %var_2_1666, double* %var_2_1670, align 8
%var_2_1671 = load i64, i64* %RBP.i, align 8
%var_2_1672 = add i64 %var_2_1671, -120
%var_2_1673 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2540:  %var_2_2540 = add i64 %var_2_2539, 5
; %var_2_1674 = add i64 %var_2_1673, 5
; Matched:\<badref\>:  store i64 %var_2_2665, i64* %PC, align 8
; store i64 %var_2_1674, i64* %var_2_3, align 8
%var_2_1675 = inttoptr i64 %var_2_1672 to i64*
%var_2_1676 = load i64, i64* %var_2_1675, align 8
store i64 %var_2_1676, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
%var_2_1677 = add i64 %var_2_1671, -152
; Matched:%var_2_4369:  %var_2_4369 = add i64 %var_2_4364, 13
; %var_2_1678 = add i64 %var_2_1673, 13
; Matched:\<badref\>:  store i64 %var_2_4189, i64* %PC, align 8
; store i64 %var_2_1678, i64* %var_2_3, align 8
%var_2_1679 = bitcast i64 %var_2_1676 to double
%var_2_1680 = inttoptr i64 %var_2_1677 to double*
%var_2_1681 = load double, double* %var_2_1680, align 8
%var_2_1682 = fadd double %var_2_1679, %var_2_1681
store double %var_2_1682, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
%var_2_1683 = add i64 %var_2_1671, -16
; Matched:%var_2_3445:  %var_2_3445 = add i64 %var_2_3434, 17
; %var_2_1684 = add i64 %var_2_1673, 17
; Matched:\<badref\>:  store i64 %var_2_3445, i64* %PC, align 8
; store i64 %var_2_1684, i64* %var_2_3, align 8
%var_2_1685 = inttoptr i64 %var_2_1683 to i64*
%var_2_1686 = load i64, i64* %var_2_1685, align 8
; Matched:\<badref\>:  store i64 %var_2_1129, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1686, i64* %RCX.i2236, align 8
%var_2_1687 = add i64 %var_2_1671, -28
; Matched:%var_2_3376:  %var_2_3376 = add i64 %var_2_3361, 21
; %var_2_1688 = add i64 %var_2_1673, 21
; Matched:\<badref\>:  store i64 %var_2_3376, i64* %PC, align 8
; store i64 %var_2_1688, i64* %var_2_3, align 8
%var_2_1689 = inttoptr i64 %var_2_1687 to i32*
%var_2_1690 = load i32, i32* %var_2_1689, align 4
%var_2_1691 = sext i32 %var_2_1690 to i64
; Matched:\<badref\>:  store i64 %var_2_3379, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1691, i64* %RDX.i2239, align 8
; Matched:%var_2_2274:  %var_2_2274 = shl nsw i64 %var_2_2273, 3
; %var_2_1692 = shl nsw i64 %var_2_1691, 3
; Matched:%var_2_2275:  %var_2_2275 = add i64 %var_2_2274, %var_2_2268
; %var_2_1693 = add i64 %var_2_1692, %var_2_1686
; Matched:%var_2_3045:  %var_2_3045 = add i64 %var_2_3022, 26
; %var_2_1694 = add i64 %var_2_1673, 26
; Matched:\<badref\>:  store i64 %var_2_3271, i64* %PC, align 8
; store i64 %var_2_1694, i64* %var_2_3, align 8
; Matched:%var_2_2277:  %var_2_2277 = inttoptr i64 %var_2_2275 to double*
; %var_2_1695 = inttoptr i64 %var_2_1693 to double*
; Matched:\<badref\>:  store double %var_2_2264, double* %var_2_2277, align 8
; store double %var_2_1682, double* %var_2_1695, align 8
%var_2_1696 = load i64, i64* %RBP.i, align 8
%var_2_1697 = add i64 %var_2_1696, -128
%var_2_1698 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_3460:  %var_2_3460 = add i64 %var_2_3459, 5
; %var_2_1699 = add i64 %var_2_1698, 5
; Matched:\<badref\>:  store i64 %var_2_1111, i64* %PC, align 8
; store i64 %var_2_1699, i64* %var_2_3, align 8
%var_2_1700 = inttoptr i64 %var_2_1697 to i64*
%var_2_1701 = load i64, i64* %var_2_1700, align 8
store i64 %var_2_1701, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
%var_2_1702 = add i64 %var_2_1696, -160
; Matched:%var_2_3391:  %var_2_3391 = add i64 %var_2_3386, 13
; %var_2_1703 = add i64 %var_2_1698, 13
; Matched:\<badref\>:  store i64 %var_2_3391, i64* %PC, align 8
; store i64 %var_2_1703, i64* %var_2_3, align 8
%var_2_1704 = bitcast i64 %var_2_1701 to double
%var_2_1705 = inttoptr i64 %var_2_1702 to double*
%var_2_1706 = load double, double* %var_2_1705, align 8
%var_2_1707 = fadd double %var_2_1704, %var_2_1706
store double %var_2_1707, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
%var_2_1708 = add i64 %var_2_1696, -16
; Matched:%var_2_804:  %var_2_804 = add i64 %var_2_790, 17
; %var_2_1709 = add i64 %var_2_1698, 17
; Matched:\<badref\>:  store i64 %var_2_804, i64* %PC, align 8
; store i64 %var_2_1709, i64* %var_2_3, align 8
%var_2_1710 = inttoptr i64 %var_2_1708 to i64*
%var_2_1711 = load i64, i64* %var_2_1710, align 8
; Matched:\<badref\>:  store i64 %var_2_4452, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1711, i64* %RCX.i2236, align 8
%var_2_1712 = add i64 %var_2_1696, -28
; Matched:%var_2_4331:  %var_2_4331 = add i64 %var_2_4316, 20
; %var_2_1713 = add i64 %var_2_1698, 20
; Matched:\<badref\>:  store i64 %var_2_4331, i64* %PC, align 8
; store i64 %var_2_1713, i64* %var_2_3, align 8
%var_2_1714 = inttoptr i64 %var_2_1712 to i32*
%var_2_1715 = load i32, i32* %var_2_1714, align 4
%var_2_1716 = add i32 %var_2_1715, 1
; Matched:%var_2_2951:  %var_2_2951 = zext i32 %var_2_2950 to i64
; %var_2_1717 = zext i32 %var_2_1716 to i64
; Matched:\<badref\>:  store i64 %var_2_2951, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1717, i64* %RAX.i2224, align 8
; Matched:%var_2_3406:  %var_2_3406 = icmp eq i32 %var_2_3403, -1
; %var_2_1718 = icmp eq i32 %var_2_1715, -1
; Matched:%var_2_3996:  %var_2_3996 = icmp eq i32 %var_2_3993, 0
; %var_2_1719 = icmp eq i32 %var_2_1716, 0
; Matched:%var_2_2954:  %var_2_2954 = or i1 %var_2_2952, %var_2_2953
; %var_2_1720 = or i1 %var_2_1718, %var_2_1719
; Matched:%var_2_610:  %var_2_610 = zext i1 %var_2_609 to i8
; %var_2_1721 = zext i1 %var_2_1720 to i8
; Matched:\<badref\>:  store i8 %var_2_2955, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_1721, i8* %var_2_14, align 1
; Matched:%var_2_3410:  %var_2_3410 = and i32 %var_2_3404, 255
; %var_2_1722 = and i32 %var_2_1716, 255
; Matched:%var_2_3411:  %var_2_3411 = tail call i32 @llvm.ctpop.i32(i32 %var_2_3410) #14
; %var_2_1723 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1722)
; Matched:%var_2_3071:  %var_2_3071 = trunc i32 %var_2_3070 to i8
; %var_2_1724 = trunc i32 %var_2_1723 to i8
; Matched:%var_2_3413:  %var_2_3413 = and i8 %var_2_3412, 1
; %var_2_1725 = and i8 %var_2_1724, 1
; Matched:%var_2_2960:  %var_2_2960 = xor i8 %var_2_2959, 1
; %var_2_1726 = xor i8 %var_2_1725, 1
; Matched:\<badref\>:  store i8 %var_2_3414, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_1726, i8* %var_2_21, align 1
; Matched:%var_2_2961:  %var_2_2961 = xor i32 %var_2_2950, %var_2_2949
; %var_2_1727 = xor i32 %var_2_1716, %var_2_1715
; Matched:%var_2_3416:  %var_2_3416 = lshr i32 %var_2_3415, 4
; %var_2_1728 = lshr i32 %var_2_1727, 4
; Matched:%var_2_3417:  %var_2_3417 = trunc i32 %var_2_3416 to i8
; %var_2_1729 = trunc i32 %var_2_1728 to i8
; Matched:%var_2_2964:  %var_2_2964 = and i8 %var_2_2963, 1
; %var_2_1730 = and i8 %var_2_1729, 1
; Matched:\<badref\>:  store i8 %var_2_3418, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_1730, i8* %var_2_27, align 1
; Matched:%var_2_3895:  %var_2_3895 = zext i1 %var_2_3883 to i8
; %var_2_1731 = zext i1 %var_2_1719 to i8
; Matched:\<badref\>:  store i8 %var_2_3419, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_1731, i8* %var_2_30, align 1
; Matched:%var_2_2966:  %var_2_2966 = lshr i32 %var_2_2950, 31
; %var_2_1732 = lshr i32 %var_2_1716, 31
; Matched:%var_2_3421:  %var_2_3421 = trunc i32 %var_2_3420 to i8
; %var_2_1733 = trunc i32 %var_2_1732 to i8
; Matched:\<badref\>:  store i8 %var_2_3421, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_1733, i8* %var_2_33, align 1
; Matched:%var_2_3081:  %var_2_3081 = lshr i32 %var_2_3062, 31
; %var_2_1734 = lshr i32 %var_2_1715, 31
; Matched:%var_2_3423:  %var_2_3423 = xor i32 %var_2_3420, %var_2_3422
; %var_2_1735 = xor i32 %var_2_1732, %var_2_1734
; Matched:%var_2_3424:  %var_2_3424 = add nuw nsw i32 %var_2_3423, %var_2_3420
; %var_2_1736 = add nuw nsw i32 %var_2_1735, %var_2_1732
; Matched:%var_2_3084:  %var_2_3084 = icmp eq i32 %var_2_3083, 2
; %var_2_1737 = icmp eq i32 %var_2_1736, 2
; Matched:%var_2_514:  %var_2_514 = zext i1 %var_2_513 to i8
; %var_2_1738 = zext i1 %var_2_1737 to i8
; Matched:\<badref\>:  store i8 %var_2_514, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_1738, i8* %var_2_39, align 1
%var_2_1739 = sext i32 %var_2_1716 to i64
; Matched:\<badref\>:  store i64 %var_2_2973, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1739, i64* %RDX.i2239, align 8
; Matched:%var_2_2322:  %var_2_2322 = shl nsw i64 %var_2_2321, 3
; %var_2_1740 = shl nsw i64 %var_2_1739, 3
; Matched:%var_2_3429:  %var_2_3429 = add i64 %var_2_3399, %var_2_3428
; %var_2_1741 = add i64 %var_2_1711, %var_2_1740
; Matched:%var_2_4704:  %var_2_4704 = add i64 %var_2_4678, 31
; %var_2_1742 = add i64 %var_2_1698, 31
; Matched:\<badref\>:  store i64 %var_2_4704, i64* %PC, align 8
; store i64 %var_2_1742, i64* %var_2_3, align 8
; Matched:%var_2_2325:  %var_2_2325 = inttoptr i64 %var_2_2323 to double*
; %var_2_1743 = inttoptr i64 %var_2_1741 to double*
; Matched:\<badref\>:  store double %var_2_2289, double* %var_2_2325, align 8
; store double %var_2_1707, double* %var_2_1743, align 8
%var_2_1744 = load i64, i64* %RBP.i, align 8
%var_2_1745 = add i64 %var_2_1744, -160
%var_2_1746 = load i64, i64* %var_2_3, align 8
%var_2_1747 = add i64 %var_2_1746, 8
store i64 %var_2_1747, i64* %var_2_3, align 8
%var_2_1748 = inttoptr i64 %var_2_1745 to i64*
%var_2_1749 = load i64, i64* %var_2_1748, align 8
; Matched:\<badref\>:  store i64 %var_2_4381, i64* %var_2_94, align 1, !tbaa !1285
; store i64 %var_2_1749, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
; Matched:%var_2_980:  %var_2_980 = add i64 %var_2_974, -128
; %var_2_1750 = add i64 %var_2_1744, -128
; Matched:%var_2_3439:  %var_2_3439 = add i64 %var_2_3434, 13
; %var_2_1751 = add i64 %var_2_1746, 13
; Matched:\<badref\>:  store i64 %var_2_3439, i64* %PC, align 8
; store i64 %var_2_1751, i64* %var_2_3, align 8
; Matched:%var_2_982:  %var_2_982 = bitcast i64 %var_2_979 to double
; %var_2_1752 = bitcast i64 %var_2_1749 to double
; Matched:%var_2_983:  %var_2_983 = inttoptr i64 %var_2_980 to double*
; %var_2_1753 = inttoptr i64 %var_2_1750 to double*
; Matched:%var_2_984:  %var_2_984 = load double, double* %var_2_983, align 8
; %var_2_1754 = load double, double* %var_2_1753, align 8
; Matched:%var_2_985:  %var_2_985 = fsub double %var_2_982, %var_2_984
; %var_2_1755 = fsub double %var_2_1752, %var_2_1754
; Matched:\<badref\>:  store double %var_2_985, double* %var_2_93, align 1, !tbaa !1285
; store double %var_2_1755, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
%var_2_1756 = add i64 %var_2_1744, -16
; Matched:%var_2_691:  %var_2_691 = add i64 %var_2_677, 17
; %var_2_1757 = add i64 %var_2_1746, 17
; Matched:\<badref\>:  store i64 %var_2_691, i64* %PC, align 8
; store i64 %var_2_1757, i64* %var_2_3, align 8
%var_2_1758 = inttoptr i64 %var_2_1756 to i64*
%var_2_1759 = load i64, i64* %var_2_1758, align 8
; Matched:\<badref\>:  store i64 %var_2_2912, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1759, i64* %RCX.i2236, align 8
%var_2_1760 = add i64 %var_2_1744, -36
; Matched:%var_2_1190:  %var_2_1190 = add i64 %var_2_1179, 21
; %var_2_1761 = add i64 %var_2_1746, 21
; Matched:\<badref\>:  store i64 %var_2_1190, i64* %PC, align 8
; store i64 %var_2_1761, i64* %var_2_3, align 8
%var_2_1762 = inttoptr i64 %var_2_1760 to i32*
%var_2_1763 = load i32, i32* %var_2_1762, align 4
%var_2_1764 = sext i32 %var_2_1763 to i64
; Matched:\<badref\>:  store i64 %var_2_3452, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1764, i64* %RDX.i2239, align 8
; Matched:%var_2_995:  %var_2_995 = shl nsw i64 %var_2_994, 3
; %var_2_1765 = shl nsw i64 %var_2_1764, 3
; Matched:%var_2_996:  %var_2_996 = add i64 %var_2_995, %var_2_989
; %var_2_1766 = add i64 %var_2_1765, %var_2_1759
; Matched:%var_2_924:  %var_2_924 = add i64 %var_2_903, 26
; %var_2_1767 = add i64 %var_2_1746, 26
; Matched:\<badref\>:  store i64 %var_2_4088, i64* %PC, align 8
; store i64 %var_2_1767, i64* %var_2_3, align 8
; Matched:%var_2_998:  %var_2_998 = inttoptr i64 %var_2_996 to double*
; %var_2_1768 = inttoptr i64 %var_2_1766 to double*
; Matched:\<badref\>:  store double %var_2_985, double* %var_2_998, align 8
; store double %var_2_1755, double* %var_2_1768, align 8
%var_2_1769 = load i64, i64* %RBP.i, align 8
%var_2_1770 = add i64 %var_2_1769, -120
%var_2_1771 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2629:  %var_2_2629 = add i64 %var_2_2628, 5
; %var_2_1772 = add i64 %var_2_1771, 5
; Matched:\<badref\>:  store i64 %var_2_4429, i64* %PC, align 8
; store i64 %var_2_1772, i64* %var_2_3, align 8
%var_2_1773 = inttoptr i64 %var_2_1770 to i64*
%var_2_1774 = load i64, i64* %var_2_1773, align 8
store i64 %var_2_1774, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
%var_2_1775 = add i64 %var_2_1769, -152
; Matched:%var_2_2920:  %var_2_2920 = add i64 %var_2_2909, 13
; %var_2_1776 = add i64 %var_2_1771, 13
; Matched:\<badref\>:  store i64 %var_2_2920, i64* %PC, align 8
; store i64 %var_2_1776, i64* %var_2_3, align 8
%var_2_1777 = bitcast i64 %var_2_1774 to double
%var_2_1778 = inttoptr i64 %var_2_1775 to double*
%var_2_1779 = load double, double* %var_2_1778, align 8
%var_2_1780 = fsub double %var_2_1777, %var_2_1779
store double %var_2_1780, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
%var_2_1781 = add i64 %var_2_1769, -16
; Matched:%var_2_2291:  %var_2_2291 = add i64 %var_2_2280, 17
; %var_2_1782 = add i64 %var_2_1771, 17
; Matched:\<badref\>:  store i64 %var_2_2291, i64* %PC, align 8
; store i64 %var_2_1782, i64* %var_2_3, align 8
%var_2_1783 = inttoptr i64 %var_2_1781 to i64*
%var_2_1784 = load i64, i64* %var_2_1783, align 8
; Matched:\<badref\>:  store i64 %var_2_3875, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1784, i64* %RCX.i2236, align 8
%var_2_1785 = add i64 %var_2_1769, -36
; Matched:%var_2_3543:  %var_2_3543 = add i64 %var_2_3532, 20
; %var_2_1786 = add i64 %var_2_1771, 20
; Matched:\<badref\>:  store i64 %var_2_3543, i64* %PC, align 8
; store i64 %var_2_1786, i64* %var_2_3, align 8
%var_2_1787 = inttoptr i64 %var_2_1785 to i32*
%var_2_1788 = load i32, i32* %var_2_1787, align 4
%var_2_1789 = add i32 %var_2_1788, 1
; Matched:%var_2_1020:  %var_2_1020 = zext i32 %var_2_1019 to i64
; %var_2_1790 = zext i32 %var_2_1789 to i64
; Matched:\<badref\>:  store i64 %var_2_1020, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1790, i64* %RAX.i2224, align 8
; Matched:%var_2_3479:  %var_2_3479 = icmp eq i32 %var_2_3476, -1
; %var_2_1791 = icmp eq i32 %var_2_1788, -1
; Matched:%var_2_3480:  %var_2_3480 = icmp eq i32 %var_2_3477, 0
; %var_2_1792 = icmp eq i32 %var_2_1789, 0
; Matched:%var_2_3481:  %var_2_3481 = or i1 %var_2_3479, %var_2_3480
; %var_2_1793 = or i1 %var_2_1791, %var_2_1792
; Matched:%var_2_3482:  %var_2_3482 = zext i1 %var_2_3481 to i8
; %var_2_1794 = zext i1 %var_2_1793 to i8
; Matched:\<badref\>:  store i8 %var_2_3482, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_1794, i8* %var_2_14, align 1
; Matched:%var_2_3483:  %var_2_3483 = and i32 %var_2_3477, 255
; %var_2_1795 = and i32 %var_2_1789, 255
; Matched:%var_2_3484:  %var_2_3484 = tail call i32 @llvm.ctpop.i32(i32 %var_2_3483) #14
; %var_2_1796 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1795)
; Matched:%var_2_3485:  %var_2_3485 = trunc i32 %var_2_3484 to i8
; %var_2_1797 = trunc i32 %var_2_1796 to i8
; Matched:%var_2_1028:  %var_2_1028 = and i8 %var_2_1027, 1
; %var_2_1798 = and i8 %var_2_1797, 1
; Matched:%var_2_3186:  %var_2_3186 = xor i8 %var_2_3185, 1
; %var_2_1799 = xor i8 %var_2_1798, 1
; Matched:\<badref\>:  store i8 %var_2_1029, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_1799, i8* %var_2_21, align 1
; Matched:%var_2_3488:  %var_2_3488 = xor i32 %var_2_3477, %var_2_3476
; %var_2_1800 = xor i32 %var_2_1789, %var_2_1788
; Matched:%var_2_3489:  %var_2_3489 = lshr i32 %var_2_3488, 4
; %var_2_1801 = lshr i32 %var_2_1800, 4
; Matched:%var_2_3490:  %var_2_3490 = trunc i32 %var_2_3489 to i8
; %var_2_1802 = trunc i32 %var_2_1801 to i8
; Matched:%var_2_3491:  %var_2_3491 = and i8 %var_2_3490, 1
; %var_2_1803 = and i8 %var_2_1802, 1
; Matched:\<badref\>:  store i8 %var_2_3491, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_1803, i8* %var_2_27, align 1
; Matched:%var_2_3492:  %var_2_3492 = zext i1 %var_2_3480 to i8
; %var_2_1804 = zext i1 %var_2_1792 to i8
; Matched:\<badref\>:  store i8 %var_2_1034, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_1804, i8* %var_2_30, align 1
; Matched:%var_2_3493:  %var_2_3493 = lshr i32 %var_2_3477, 31
; %var_2_1805 = lshr i32 %var_2_1789, 31
; Matched:%var_2_1036:  %var_2_1036 = trunc i32 %var_2_1035 to i8
; %var_2_1806 = trunc i32 %var_2_1805 to i8
; Matched:\<badref\>:  store i8 %var_2_3494, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_1806, i8* %var_2_33, align 1
; Matched:%var_2_3495:  %var_2_3495 = lshr i32 %var_2_3476, 31
; %var_2_1807 = lshr i32 %var_2_1788, 31
; Matched:%var_2_1038:  %var_2_1038 = xor i32 %var_2_1035, %var_2_1037
; %var_2_1808 = xor i32 %var_2_1805, %var_2_1807
; Matched:%var_2_3309:  %var_2_3309 = add nuw nsw i32 %var_2_3308, %var_2_3305
; %var_2_1809 = add nuw nsw i32 %var_2_1808, %var_2_1805
; Matched:%var_2_3310:  %var_2_3310 = icmp eq i32 %var_2_3309, 2
; %var_2_1810 = icmp eq i32 %var_2_1809, 2
; Matched:%var_2_1041:  %var_2_1041 = zext i1 %var_2_1040 to i8
; %var_2_1811 = zext i1 %var_2_1810 to i8
; Matched:\<badref\>:  store i8 %var_2_3198, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_1811, i8* %var_2_39, align 1
%var_2_1812 = sext i32 %var_2_1789 to i64
; Matched:\<badref\>:  store i64 %var_2_1042, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1812, i64* %RDX.i2239, align 8
; Matched:%var_2_1043:  %var_2_1043 = shl nsw i64 %var_2_1042, 3
; %var_2_1813 = shl nsw i64 %var_2_1812, 3
; Matched:%var_2_1044:  %var_2_1044 = add i64 %var_2_1014, %var_2_1043
; %var_2_1814 = add i64 %var_2_1784, %var_2_1813
; Matched:%var_2_4454:  %var_2_4454 = add i64 %var_2_4428, 31
; %var_2_1815 = add i64 %var_2_1771, 31
; Matched:\<badref\>:  store i64 %var_2_4454, i64* %PC, align 8
; store i64 %var_2_1815, i64* %var_2_3, align 8
; Matched:%var_2_1046:  %var_2_1046 = inttoptr i64 %var_2_1044 to double*
; %var_2_1816 = inttoptr i64 %var_2_1814 to double*
; Matched:\<badref\>:  store double %var_2_1010, double* %var_2_1046, align 8
; store double %var_2_1780, double* %var_2_1816, align 8
%var_2_1817 = load i64, i64* %RBP.i, align 8
%var_2_1818 = add i64 %var_2_1817, -136
%var_2_1819 = load i64, i64* %var_2_3, align 8
%var_2_1820 = add i64 %var_2_1819, 8
store i64 %var_2_1820, i64* %var_2_3, align 8
%var_2_1821 = inttoptr i64 %var_2_1818 to i64*
%var_2_1822 = load i64, i64* %var_2_1821, align 8
store i64 %var_2_1822, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
%var_2_1823 = add i64 %var_2_1817, -176
; Matched:%var_2_3585:  %var_2_3585 = add i64 %var_2_3580, 16
; %var_2_1824 = add i64 %var_2_1819, 16
; Matched:\<badref\>:  store i64 %var_2_3585, i64* %PC, align 8
; store i64 %var_2_1824, i64* %var_2_3, align 8
%var_2_1825 = bitcast i64 %var_2_1822 to double
%var_2_1826 = inttoptr i64 %var_2_1823 to double*
%var_2_1827 = load double, double* %var_2_1826, align 8
%var_2_1828 = fsub double %var_2_1825, %var_2_1827
store double %var_2_1828, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
; Matched:%var_2_1059:  %var_2_1059 = add i64 %var_2_1047, -120
; %var_2_1829 = add i64 %var_2_1817, -120
; Matched:%var_2_4513:  %var_2_4513 = add i64 %var_2_4502, 21
; %var_2_1830 = add i64 %var_2_1819, 21
; Matched:\<badref\>:  store i64 %var_2_4513, i64* %PC, align 8
; store i64 %var_2_1830, i64* %var_2_3, align 8
; Matched:%var_2_2485:  %var_2_2485 = inttoptr i64 %var_2_2483 to double*
; %var_2_1831 = inttoptr i64 %var_2_1829 to double*
; Matched:\<badref\>:  store double %var_2_2482, double* %var_2_2485, align 8
; store double %var_2_1828, double* %var_2_1831, align 8
%var_2_1832 = load i64, i64* %RBP.i, align 8
%var_2_1833 = add i64 %var_2_1832, -144
%var_2_1834 = load i64, i64* %var_2_3, align 8
%var_2_1835 = add i64 %var_2_1834, 8
store i64 %var_2_1835, i64* %var_2_3, align 8
%var_2_1836 = inttoptr i64 %var_2_1833 to i64*
%var_2_1837 = load i64, i64* %var_2_1836, align 8
store i64 %var_2_1837, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
%var_2_1838 = add i64 %var_2_1832, -168
; Matched:%var_2_2618:  %var_2_2618 = add i64 %var_2_2613, 16
; %var_2_1839 = add i64 %var_2_1834, 16
; Matched:\<badref\>:  store i64 %var_2_2618, i64* %PC, align 8
; store i64 %var_2_1839, i64* %var_2_3, align 8
%var_2_1840 = bitcast i64 %var_2_1837 to double
%var_2_1841 = inttoptr i64 %var_2_1838 to double*
%var_2_1842 = load double, double* %var_2_1841, align 8
%var_2_1843 = fadd double %var_2_1840, %var_2_1842
store double %var_2_1843, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
; Matched:%var_2_2498:  %var_2_2498 = add i64 %var_2_2486, -128
; %var_2_1844 = add i64 %var_2_1832, -128
; Matched:%var_2_918:  %var_2_918 = add i64 %var_2_903, 21
; %var_2_1845 = add i64 %var_2_1834, 21
; Matched:\<badref\>:  store i64 %var_2_918, i64* %PC, align 8
; store i64 %var_2_1845, i64* %var_2_3, align 8
; Matched:%var_2_2500:  %var_2_2500 = inttoptr i64 %var_2_2498 to double*
; %var_2_1846 = inttoptr i64 %var_2_1844 to double*
; Matched:\<badref\>:  store double %var_2_2497, double* %var_2_2500, align 8
; store double %var_2_1843, double* %var_2_1846, align 8
%var_2_1847 = load i64, i64* %RBP.i, align 8
%var_2_1848 = add i64 %var_2_1847, -72
%var_2_1849 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2665:  %var_2_2665 = add i64 %var_2_2664, 5
; %var_2_1850 = add i64 %var_2_1849, 5
; Matched:\<badref\>:  store i64 %var_2_4317, i64* %PC, align 8
; store i64 %var_2_1850, i64* %var_2_3, align 8
%var_2_1851 = inttoptr i64 %var_2_1848 to i64*
%var_2_1852 = load i64, i64* %var_2_1851, align 8
; Matched:\<badref\>:  store i64 %var_2_2542, i64* %var_2_94, align 1, !tbaa !1285
; store i64 %var_2_1852, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
; Matched:%var_2_1114:  %var_2_1114 = add i64 %var_2_1108, -120
; %var_2_1853 = add i64 %var_2_1847, -120
; Matched:%var_2_4558:  %var_2_4558 = add i64 %var_2_4553, 10
; %var_2_1854 = add i64 %var_2_1849, 10
; Matched:\<badref\>:  store i64 %var_2_4558, i64* %PC, align 8
; store i64 %var_2_1854, i64* %var_2_3, align 8
; Matched:%var_2_1085:  %var_2_1085 = inttoptr i64 %var_2_1083 to i64*
; %var_2_1855 = inttoptr i64 %var_2_1853 to i64*
; Matched:%var_2_1086:  %var_2_1086 = load i64, i64* %var_2_1085, align 8
; %var_2_1856 = load i64, i64* %var_2_1855, align 8
; Matched:\<badref\>:  store i64 %var_2_1086, i64* %var_2_1624, align 1, !tbaa !1285
; store i64 %var_2_1856, i64* %var_2_1054, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_1626, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_1056, align 1
; Matched:%var_2_1087:  %var_2_1087 = add i64 %var_2_1077, -128
; %var_2_1857 = add i64 %var_2_1847, -128
; Matched:%var_2_4439:  %var_2_4439 = add i64 %var_2_4428, 15
; %var_2_1858 = add i64 %var_2_1849, 15
; Matched:\<badref\>:  store i64 %var_2_4653, i64* %PC, align 8
; store i64 %var_2_1858, i64* %var_2_3, align 8
; Matched:%var_2_1089:  %var_2_1089 = bitcast i64 %var_2_1086 to double
; %var_2_1859 = bitcast i64 %var_2_1856 to double
; Matched:%var_2_1090:  %var_2_1090 = inttoptr i64 %var_2_1087 to double*
; %var_2_1860 = inttoptr i64 %var_2_1857 to double*
; Matched:%var_2_1091:  %var_2_1091 = load double, double* %var_2_1090, align 8
; %var_2_1861 = load double, double* %var_2_1860, align 8
; Matched:%var_2_1092:  %var_2_1092 = fsub double %var_2_1089, %var_2_1091
; %var_2_1862 = fsub double %var_2_1859, %var_2_1861
; Matched:\<badref\>:  store double %var_2_1092, double* %var_2_1623, align 1, !tbaa !1285
; store double %var_2_1862, double* %var_2_1053, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_1625, align 1, !tbaa !1285
; store i64 0, i64* %var_2_1055, align 1
; Matched:%var_2_1093:  %var_2_1093 = bitcast i64 %var_2_1082 to double
; %var_2_1863 = bitcast i64 %var_2_1852 to double
; Matched:%var_2_1094:  %var_2_1094 = fmul double %var_2_1093, %var_2_1092
; %var_2_1864 = fmul double %var_2_1863, %var_2_1862
; Matched:\<badref\>:  store double %var_2_1094, double* %var_2_93, align 1, !tbaa !1285
; store double %var_2_1864, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
%var_2_1865 = add i64 %var_2_1847, -16
; Matched:%var_2_3620:  %var_2_3620 = add i64 %var_2_3605, 23
; %var_2_1866 = add i64 %var_2_1849, 23
; Matched:\<badref\>:  store i64 %var_2_1096, i64* %PC, align 8
; store i64 %var_2_1866, i64* %var_2_3, align 8
%var_2_1867 = inttoptr i64 %var_2_1865 to i64*
%var_2_1868 = load i64, i64* %var_2_1867, align 8
; Matched:\<badref\>:  store i64 %var_2_793, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1868, i64* %RCX.i2236, align 8
%var_2_1869 = add i64 %var_2_1847, -32
; Matched:%var_2_1465:  %var_2_1465 = add i64 %var_2_1441, 27
; %var_2_1870 = add i64 %var_2_1849, 27
; Matched:\<badref\>:  store i64 %var_2_1215, i64* %PC, align 8
; store i64 %var_2_1870, i64* %var_2_3, align 8
%var_2_1871 = inttoptr i64 %var_2_1869 to i32*
%var_2_1872 = load i32, i32* %var_2_1871, align 4
%var_2_1873 = sext i32 %var_2_1872 to i64
; Matched:\<badref\>:  store i64 %var_2_3042, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1873, i64* %RDX.i2239, align 8
; Matched:%var_2_1104:  %var_2_1104 = shl nsw i64 %var_2_1103, 3
; %var_2_1874 = shl nsw i64 %var_2_1873, 3
; Matched:%var_2_1105:  %var_2_1105 = add i64 %var_2_1104, %var_2_1098
; %var_2_1875 = add i64 %var_2_1874, %var_2_1868
; Matched:%var_2_4418:  %var_2_4418 = add i64 %var_2_4392, 32
; %var_2_1876 = add i64 %var_2_1849, 32
; Matched:\<badref\>:  store i64 %var_2_4418, i64* %PC, align 8
; store i64 %var_2_1876, i64* %var_2_3, align 8
; Matched:%var_2_1107:  %var_2_1107 = inttoptr i64 %var_2_1105 to double*
; %var_2_1877 = inttoptr i64 %var_2_1875 to double*
; Matched:\<badref\>:  store double %var_2_1094, double* %var_2_1107, align 8
; store double %var_2_1864, double* %var_2_1877, align 8
%var_2_1878 = load i64, i64* %RBP.i, align 8
%var_2_1879 = add i64 %var_2_1878, -72
%var_2_1880 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_4292:  %var_2_4292 = add i64 %var_2_4291, 5
; %var_2_1881 = add i64 %var_2_1880, 5
; Matched:\<badref\>:  store i64 %var_2_1470, i64* %PC, align 8
; store i64 %var_2_1881, i64* %var_2_3, align 8
%var_2_1882 = inttoptr i64 %var_2_1879 to i64*
%var_2_1883 = load i64, i64* %var_2_1882, align 8
; Matched:\<badref\>:  store i64 %var_2_1113, i64* %var_2_94, align 1, !tbaa !1285
; store i64 %var_2_1883, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
; Matched:%var_2_1083:  %var_2_1083 = add i64 %var_2_1077, -120
; %var_2_1884 = add i64 %var_2_1878, -120
; Matched:%var_2_2544:  %var_2_2544 = add i64 %var_2_2539, 10
; %var_2_1885 = add i64 %var_2_1880, 10
; Matched:\<badref\>:  store i64 %var_2_1230, i64* %PC, align 8
; store i64 %var_2_1885, i64* %var_2_3, align 8
; Matched:%var_2_1116:  %var_2_1116 = inttoptr i64 %var_2_1114 to i64*
; %var_2_1886 = inttoptr i64 %var_2_1884 to i64*
; Matched:%var_2_1117:  %var_2_1117 = load i64, i64* %var_2_1116, align 8
; %var_2_1887 = load i64, i64* %var_2_1886, align 8
; Matched:\<badref\>:  store i64 %var_2_1117, i64* %var_2_1624, align 1, !tbaa !1285
; store i64 %var_2_1887, i64* %var_2_1054, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_1626, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_1056, align 1
; Matched:%var_2_1118:  %var_2_1118 = add i64 %var_2_1108, -128
; %var_2_1888 = add i64 %var_2_1878, -128
; Matched:%var_2_1119:  %var_2_1119 = add i64 %var_2_1110, 15
; %var_2_1889 = add i64 %var_2_1880, 15
; Matched:\<badref\>:  store i64 %var_2_2514, i64* %PC, align 8
; store i64 %var_2_1889, i64* %var_2_3, align 8
; Matched:%var_2_1120:  %var_2_1120 = bitcast i64 %var_2_1117 to double
; %var_2_1890 = bitcast i64 %var_2_1887 to double
; Matched:%var_2_1121:  %var_2_1121 = inttoptr i64 %var_2_1118 to double*
; %var_2_1891 = inttoptr i64 %var_2_1888 to double*
; Matched:%var_2_1122:  %var_2_1122 = load double, double* %var_2_1121, align 8
; %var_2_1892 = load double, double* %var_2_1891, align 8
; Matched:%var_2_1123:  %var_2_1123 = fadd double %var_2_1120, %var_2_1122
; %var_2_1893 = fadd double %var_2_1890, %var_2_1892
; Matched:\<badref\>:  store double %var_2_1123, double* %var_2_1623, align 1, !tbaa !1285
; store double %var_2_1893, double* %var_2_1053, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_1625, align 1, !tbaa !1285
; store i64 0, i64* %var_2_1055, align 1
; Matched:%var_2_1124:  %var_2_1124 = bitcast i64 %var_2_1113 to double
; %var_2_1894 = bitcast i64 %var_2_1883 to double
; Matched:%var_2_1125:  %var_2_1125 = fmul double %var_2_1124, %var_2_1123
; %var_2_1895 = fmul double %var_2_1894, %var_2_1893
; Matched:\<badref\>:  store double %var_2_1125, double* %var_2_93, align 1, !tbaa !1285
; store double %var_2_1895, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
%var_2_1896 = add i64 %var_2_1878, -16
; Matched:%var_2_2420:  %var_2_2420 = add i64 %var_2_2403, 23
; %var_2_1897 = add i64 %var_2_1880, 23
; Matched:\<badref\>:  store i64 %var_2_2420, i64* %PC, align 8
; store i64 %var_2_1897, i64* %var_2_3, align 8
%var_2_1898 = inttoptr i64 %var_2_1896 to i64*
%var_2_1899 = load i64, i64* %var_2_1898, align 8
; Matched:\<badref\>:  store i64 %var_2_3025, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1899, i64* %RCX.i2236, align 8
%var_2_1900 = add i64 %var_2_1878, -32
; Matched:%var_2_587:  %var_2_587 = add i64 %var_2_564, 26
; %var_2_1901 = add i64 %var_2_1880, 26
; Matched:\<badref\>:  store i64 %var_2_813, i64* %PC, align 8
; store i64 %var_2_1901, i64* %var_2_3, align 8
%var_2_1902 = inttoptr i64 %var_2_1900 to i32*
%var_2_1903 = load i32, i32* %var_2_1902, align 4
%var_2_1904 = add i32 %var_2_1903, 1
; Matched:%var_2_3099:  %var_2_3099 = zext i32 %var_2_3098 to i64
; %var_2_1905 = zext i32 %var_2_1904 to i64
; Matched:\<badref\>:  store i64 %var_2_3551, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1905, i64* %RAX.i2224, align 8
; Matched:%var_2_3100:  %var_2_3100 = icmp eq i32 %var_2_3097, -1
; %var_2_1906 = icmp eq i32 %var_2_1903, -1
; Matched:%var_2_2988:  %var_2_2988 = icmp eq i32 %var_2_2985, 0
; %var_2_1907 = icmp eq i32 %var_2_1904, 0
; Matched:%var_2_2989:  %var_2_2989 = or i1 %var_2_2987, %var_2_2988
; %var_2_1908 = or i1 %var_2_1906, %var_2_1907
; Matched:%var_2_2990:  %var_2_2990 = zext i1 %var_2_2989 to i8
; %var_2_1909 = zext i1 %var_2_1908 to i8
; Matched:\<badref\>:  store i8 %var_2_3103, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_1909, i8* %var_2_14, align 1
; Matched:%var_2_3556:  %var_2_3556 = and i32 %var_2_3550, 255
; %var_2_1910 = and i32 %var_2_1904, 255
; Matched:%var_2_2992:  %var_2_2992 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2991) #14
; %var_2_1911 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1910)
; Matched:%var_2_2993:  %var_2_2993 = trunc i32 %var_2_2992 to i8
; %var_2_1912 = trunc i32 %var_2_1911 to i8
; Matched:%var_2_3559:  %var_2_3559 = and i8 %var_2_3558, 1
; %var_2_1913 = and i8 %var_2_1912, 1
; Matched:%var_2_3560:  %var_2_3560 = xor i8 %var_2_3559, 1
; %var_2_1914 = xor i8 %var_2_1913, 1
; Matched:\<badref\>:  store i8 %var_2_2995, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_1914, i8* %var_2_21, align 1
; Matched:%var_2_2996:  %var_2_2996 = xor i32 %var_2_2985, %var_2_2984
; %var_2_1915 = xor i32 %var_2_1904, %var_2_1903
; Matched:%var_2_2997:  %var_2_2997 = lshr i32 %var_2_2996, 4
; %var_2_1916 = lshr i32 %var_2_1915, 4
; Matched:%var_2_3111:  %var_2_3111 = trunc i32 %var_2_3110 to i8
; %var_2_1917 = trunc i32 %var_2_1916 to i8
; Matched:%var_2_2999:  %var_2_2999 = and i8 %var_2_2998, 1
; %var_2_1918 = and i8 %var_2_1917, 1
; Matched:\<badref\>:  store i8 %var_2_3564, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_1918, i8* %var_2_27, align 1
; Matched:%var_2_3000:  %var_2_3000 = zext i1 %var_2_2988 to i8
; %var_2_1919 = zext i1 %var_2_1907 to i8
; Matched:\<badref\>:  store i8 %var_2_3000, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_1919, i8* %var_2_30, align 1
; Matched:%var_2_3001:  %var_2_3001 = lshr i32 %var_2_2985, 31
; %var_2_1920 = lshr i32 %var_2_1904, 31
; Matched:%var_2_3002:  %var_2_3002 = trunc i32 %var_2_3001 to i8
; %var_2_1921 = trunc i32 %var_2_1920 to i8
; Matched:\<badref\>:  store i8 %var_2_2009, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_1921, i8* %var_2_33, align 1
; Matched:%var_2_3003:  %var_2_3003 = lshr i32 %var_2_2984, 31
; %var_2_1922 = lshr i32 %var_2_1903, 31
; Matched:%var_2_3004:  %var_2_3004 = xor i32 %var_2_3001, %var_2_3003
; %var_2_1923 = xor i32 %var_2_1920, %var_2_1922
; Matched:%var_2_3005:  %var_2_3005 = add nuw nsw i32 %var_2_3004, %var_2_3001
; %var_2_1924 = add nuw nsw i32 %var_2_1923, %var_2_1920
; Matched:%var_2_3119:  %var_2_3119 = icmp eq i32 %var_2_3118, 2
; %var_2_1925 = icmp eq i32 %var_2_1924, 2
; Matched:%var_2_3572:  %var_2_3572 = zext i1 %var_2_3571 to i8
; %var_2_1926 = zext i1 %var_2_1925 to i8
; Matched:\<badref\>:  store i8 %var_2_3007, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_1926, i8* %var_2_39, align 1
%var_2_1927 = sext i32 %var_2_1904 to i64
; Matched:\<badref\>:  store i64 %var_2_3121, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1927, i64* %RDX.i2239, align 8
; Matched:%var_2_1158:  %var_2_1158 = shl nsw i64 %var_2_1157, 3
; %var_2_1928 = shl nsw i64 %var_2_1927, 3
; Matched:%var_2_1159:  %var_2_1159 = add i64 %var_2_1129, %var_2_1158
; %var_2_1929 = add i64 %var_2_1899, %var_2_1928
; Matched:%var_2_4549:  %var_2_4549 = add i64 %var_2_4517, 37
; %var_2_1930 = add i64 %var_2_1880, 37
; Matched:\<badref\>:  store i64 %var_2_2660, i64* %PC, align 8
; store i64 %var_2_1930, i64* %var_2_3, align 8
; Matched:%var_2_1161:  %var_2_1161 = inttoptr i64 %var_2_1159 to double*
; %var_2_1931 = inttoptr i64 %var_2_1929 to double*
; Matched:\<badref\>:  store double %var_2_1125, double* %var_2_1161, align 8
; store double %var_2_1895, double* %var_2_1931, align 8
; Matched:%var_2_1162:  %var_2_1162 = load i64, i64* %RBP, align 8
; %var_2_1932 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1163:  %var_2_1163 = add i64 %var_2_1162, -176
; %var_2_1933 = add i64 %var_2_1932, -176
%var_2_1934 = load i64, i64* %var_2_3, align 8
%var_2_1935 = add i64 %var_2_1934, 8
store i64 %var_2_1935, i64* %var_2_3, align 8
; Matched:%var_2_1166:  %var_2_1166 = inttoptr i64 %var_2_1163 to i64*
; %var_2_1936 = inttoptr i64 %var_2_1933 to i64*
; Matched:%var_2_1167:  %var_2_1167 = load i64, i64* %var_2_1166, align 8
; %var_2_1937 = load i64, i64* %var_2_1936, align 8
; Matched:\<badref\>:  store i64 %var_2_1167, i64* %var_2_94, align 1, !tbaa !1285
; store i64 %var_2_1937, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
; Matched:%var_2_1168:  %var_2_1168 = add i64 %var_2_1162, -136
; %var_2_1938 = add i64 %var_2_1932, -136
; Matched:%var_2_3610:  %var_2_3610 = add i64 %var_2_3605, 16
; %var_2_1939 = add i64 %var_2_1934, 16
; Matched:\<badref\>:  store i64 %var_2_3610, i64* %PC, align 8
; store i64 %var_2_1939, i64* %var_2_3, align 8
; Matched:%var_2_1170:  %var_2_1170 = bitcast i64 %var_2_1167 to double
; %var_2_1940 = bitcast i64 %var_2_1937 to double
; Matched:%var_2_1171:  %var_2_1171 = inttoptr i64 %var_2_1168 to double*
; %var_2_1941 = inttoptr i64 %var_2_1938 to double*
; Matched:%var_2_1172:  %var_2_1172 = load double, double* %var_2_1171, align 8
; %var_2_1942 = load double, double* %var_2_1941, align 8
; Matched:%var_2_1173:  %var_2_1173 = fadd double %var_2_1170, %var_2_1172
; %var_2_1943 = fadd double %var_2_1940, %var_2_1942
; Matched:\<badref\>:  store double %var_2_1173, double* %var_2_93, align 1, !tbaa !1285
; store double %var_2_1943, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
; Matched:%var_2_1174:  %var_2_1174 = add i64 %var_2_1162, -120
; %var_2_1944 = add i64 %var_2_1932, -120
; Matched:%var_2_1933:  %var_2_1933 = add i64 %var_2_1916, 21
; %var_2_1945 = add i64 %var_2_1934, 21
; Matched:\<badref\>:  store i64 %var_2_1933, i64* %PC, align 8
; store i64 %var_2_1945, i64* %var_2_3, align 8
; Matched:%var_2_1176:  %var_2_1176 = inttoptr i64 %var_2_1174 to double*
; %var_2_1946 = inttoptr i64 %var_2_1944 to double*
; Matched:\<badref\>:  store double %var_2_1173, double* %var_2_1176, align 8
; store double %var_2_1943, double* %var_2_1946, align 8
; Matched:%var_2_1177:  %var_2_1177 = load i64, i64* %RBP, align 8
; %var_2_1947 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1178:  %var_2_1178 = add i64 %var_2_1177, -168
; %var_2_1948 = add i64 %var_2_1947, -168
%var_2_1949 = load i64, i64* %var_2_3, align 8
%var_2_1950 = add i64 %var_2_1949, 8
store i64 %var_2_1950, i64* %var_2_3, align 8
; Matched:%var_2_1181:  %var_2_1181 = inttoptr i64 %var_2_1178 to i64*
; %var_2_1951 = inttoptr i64 %var_2_1948 to i64*
; Matched:%var_2_1182:  %var_2_1182 = load i64, i64* %var_2_1181, align 8
; %var_2_1952 = load i64, i64* %var_2_1951, align 8
; Matched:\<badref\>:  store i64 %var_2_1182, i64* %var_2_94, align 1, !tbaa !1285
; store i64 %var_2_1952, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
; Matched:%var_2_1183:  %var_2_1183 = add i64 %var_2_1177, -144
; %var_2_1953 = add i64 %var_2_1947, -144
; Matched:%var_2_4507:  %var_2_4507 = add i64 %var_2_4502, 16
; %var_2_1954 = add i64 %var_2_1949, 16
; Matched:\<badref\>:  store i64 %var_2_4507, i64* %PC, align 8
; store i64 %var_2_1954, i64* %var_2_3, align 8
; Matched:%var_2_1185:  %var_2_1185 = bitcast i64 %var_2_1182 to double
; %var_2_1955 = bitcast i64 %var_2_1952 to double
; Matched:%var_2_1186:  %var_2_1186 = inttoptr i64 %var_2_1183 to double*
; %var_2_1956 = inttoptr i64 %var_2_1953 to double*
; Matched:%var_2_1187:  %var_2_1187 = load double, double* %var_2_1186, align 8
; %var_2_1957 = load double, double* %var_2_1956, align 8
; Matched:%var_2_1188:  %var_2_1188 = fsub double %var_2_1185, %var_2_1187
; %var_2_1958 = fsub double %var_2_1955, %var_2_1957
; Matched:\<badref\>:  store double %var_2_1188, double* %var_2_93, align 1, !tbaa !1285
; store double %var_2_1958, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
; Matched:%var_2_1189:  %var_2_1189 = add i64 %var_2_1177, -128
; %var_2_1959 = add i64 %var_2_1947, -128
; Matched:%var_2_2484:  %var_2_2484 = add i64 %var_2_2473, 21
; %var_2_1960 = add i64 %var_2_1949, 21
; Matched:\<badref\>:  store i64 %var_2_2484, i64* %PC, align 8
; store i64 %var_2_1960, i64* %var_2_3, align 8
; Matched:%var_2_1191:  %var_2_1191 = inttoptr i64 %var_2_1189 to double*
; %var_2_1961 = inttoptr i64 %var_2_1959 to double*
; Matched:\<badref\>:  store double %var_2_1188, double* %var_2_1191, align 8
; store double %var_2_1958, double* %var_2_1961, align 8
%var_2_1962 = load i64, i64* %RBP.i, align 8
%var_2_1963 = add i64 %var_2_1962, -72
%var_2_1964 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1470:  %var_2_1470 = add i64 %var_2_1469, 5
; %var_2_1965 = add i64 %var_2_1964, 5
; Matched:\<badref\>:  store i64 %var_2_1002, i64* %PC, align 8
; store i64 %var_2_1965, i64* %var_2_3, align 8
%var_2_1966 = inttoptr i64 %var_2_1963 to i64*
%var_2_1967 = load i64, i64* %var_2_1966, align 8
; Matched:\<badref\>:  store i64 %var_2_2506, i64* %var_2_94, align 1, !tbaa !1285
; store i64 %var_2_1967, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
; Matched:%var_2_1229:  %var_2_1229 = add i64 %var_2_1223, -128
; %var_2_1968 = add i64 %var_2_1962, -128
; Matched:%var_2_2669:  %var_2_2669 = add i64 %var_2_2664, 10
; %var_2_1969 = add i64 %var_2_1964, 10
; Matched:\<badref\>:  store i64 %var_2_4397, i64* %PC, align 8
; store i64 %var_2_1969, i64* %var_2_3, align 8
; Matched:%var_2_1200:  %var_2_1200 = inttoptr i64 %var_2_1198 to i64*
; %var_2_1970 = inttoptr i64 %var_2_1968 to i64*
; Matched:%var_2_1201:  %var_2_1201 = load i64, i64* %var_2_1200, align 8
; %var_2_1971 = load i64, i64* %var_2_1970, align 8
; Matched:\<badref\>:  store i64 %var_2_1232, i64* %var_2_1624, align 1, !tbaa !1285
; store i64 %var_2_1971, i64* %var_2_1054, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_1626, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_1056, align 1
; Matched:%var_2_1202:  %var_2_1202 = add i64 %var_2_1192, -120
; %var_2_1972 = add i64 %var_2_1962, -120
; Matched:%var_2_1203:  %var_2_1203 = add i64 %var_2_1194, 15
; %var_2_1973 = add i64 %var_2_1964, 15
; Matched:\<badref\>:  store i64 %var_2_1119, i64* %PC, align 8
; store i64 %var_2_1973, i64* %var_2_3, align 8
; Matched:%var_2_1204:  %var_2_1204 = bitcast i64 %var_2_1201 to double
; %var_2_1974 = bitcast i64 %var_2_1971 to double
; Matched:%var_2_1205:  %var_2_1205 = inttoptr i64 %var_2_1202 to double*
; %var_2_1975 = inttoptr i64 %var_2_1972 to double*
; Matched:%var_2_1206:  %var_2_1206 = load double, double* %var_2_1205, align 8
; %var_2_1976 = load double, double* %var_2_1975, align 8
; Matched:%var_2_1207:  %var_2_1207 = fsub double %var_2_1204, %var_2_1206
; %var_2_1977 = fsub double %var_2_1974, %var_2_1976
; Matched:\<badref\>:  store double %var_2_1207, double* %var_2_1623, align 1, !tbaa !1285
; store double %var_2_1977, double* %var_2_1053, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_1625, align 1, !tbaa !1285
; store i64 0, i64* %var_2_1055, align 1
; Matched:%var_2_1208:  %var_2_1208 = bitcast i64 %var_2_1197 to double
; %var_2_1978 = bitcast i64 %var_2_1967 to double
; Matched:%var_2_1209:  %var_2_1209 = fmul double %var_2_1208, %var_2_1207
; %var_2_1979 = fmul double %var_2_1978, %var_2_1977
; Matched:\<badref\>:  store double %var_2_1209, double* %var_2_93, align 1, !tbaa !1285
; store double %var_2_1979, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
%var_2_1980 = add i64 %var_2_1962, -16
; Matched:%var_2_1127:  %var_2_1127 = add i64 %var_2_1110, 23
; %var_2_1981 = add i64 %var_2_1964, 23
; Matched:\<badref\>:  store i64 %var_2_1127, i64* %PC, align 8
; store i64 %var_2_1981, i64* %var_2_3, align 8
%var_2_1982 = inttoptr i64 %var_2_1980 to i64*
%var_2_1983 = load i64, i64* %var_2_1982, align 8
; Matched:\<badref\>:  store i64 %var_2_861, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1983, i64* %RCX.i2236, align 8
%var_2_1984 = add i64 %var_2_1962, -40
; Matched:%var_2_299:  %var_2_299 = add i64 %var_2_275, 27
; %var_2_1985 = add i64 %var_2_1964, 27
; Matched:\<badref\>:  store i64 %var_2_1100, i64* %PC, align 8
; store i64 %var_2_1985, i64* %var_2_3, align 8
%var_2_1986 = inttoptr i64 %var_2_1984 to i32*
%var_2_1987 = load i32, i32* %var_2_1986, align 4
%var_2_1988 = sext i32 %var_2_1987 to i64
; Matched:\<badref\>:  store i64 %var_2_4198, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1988, i64* %RDX.i2239, align 8
; Matched:%var_2_1219:  %var_2_1219 = shl nsw i64 %var_2_1218, 3
; %var_2_1989 = shl nsw i64 %var_2_1988, 3
; Matched:%var_2_1220:  %var_2_1220 = add i64 %var_2_1219, %var_2_1213
; %var_2_1990 = add i64 %var_2_1989, %var_2_1983
; Matched:%var_2_2529:  %var_2_2529 = add i64 %var_2_2503, 32
; %var_2_1991 = add i64 %var_2_1964, 32
; Matched:\<badref\>:  store i64 %var_2_4543, i64* %PC, align 8
; store i64 %var_2_1991, i64* %var_2_3, align 8
; Matched:%var_2_1222:  %var_2_1222 = inttoptr i64 %var_2_1220 to double*
; %var_2_1992 = inttoptr i64 %var_2_1990 to double*
; Matched:\<badref\>:  store double %var_2_1209, double* %var_2_1222, align 8
; store double %var_2_1979, double* %var_2_1992, align 8
%var_2_1993 = load i64, i64* %RBP.i, align 8
%var_2_1994 = add i64 %var_2_1993, -72
%var_2_1995 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_3387:  %var_2_3387 = add i64 %var_2_3386, 5
; %var_2_1996 = add i64 %var_2_1995, 5
; Matched:\<badref\>:  store i64 %var_2_3387, i64* %PC, align 8
; store i64 %var_2_1996, i64* %var_2_3, align 8
%var_2_1997 = inttoptr i64 %var_2_1994 to i64*
%var_2_1998 = load i64, i64* %var_2_1997, align 8
; Matched:\<badref\>:  store i64 %var_2_1082, i64* %var_2_94, align 1, !tbaa !1285
; store i64 %var_2_1998, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
; Matched:%var_2_1198:  %var_2_1198 = add i64 %var_2_1192, -128
; %var_2_1999 = add i64 %var_2_1993, -128
; Matched:%var_2_4683:  %var_2_4683 = add i64 %var_2_4678, 10
; %var_2_2000 = add i64 %var_2_1995, 10
; Matched:\<badref\>:  store i64 %var_2_4683, i64* %PC, align 8
; store i64 %var_2_2000, i64* %var_2_3, align 8
; Matched:%var_2_1231:  %var_2_1231 = inttoptr i64 %var_2_1229 to i64*
; %var_2_2001 = inttoptr i64 %var_2_1999 to i64*
; Matched:%var_2_1232:  %var_2_1232 = load i64, i64* %var_2_1231, align 8
; %var_2_2002 = load i64, i64* %var_2_2001, align 8
; Matched:\<badref\>:  store i64 %var_2_1201, i64* %var_2_1624, align 1, !tbaa !1285
; store i64 %var_2_2002, i64* %var_2_1054, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_1626, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_1056, align 1
; Matched:%var_2_1233:  %var_2_1233 = add i64 %var_2_1223, -120
; %var_2_2003 = add i64 %var_2_1993, -120
; Matched:%var_2_315:  %var_2_315 = add i64 %var_2_303, 15
; %var_2_2004 = add i64 %var_2_1995, 15
; Matched:\<badref\>:  store i64 %var_2_4689, i64* %PC, align 8
; store i64 %var_2_2004, i64* %var_2_3, align 8
; Matched:%var_2_1235:  %var_2_1235 = bitcast i64 %var_2_1232 to double
; %var_2_2005 = bitcast i64 %var_2_2002 to double
; Matched:%var_2_1236:  %var_2_1236 = inttoptr i64 %var_2_1233 to double*
; %var_2_2006 = inttoptr i64 %var_2_2003 to double*
; Matched:%var_2_1237:  %var_2_1237 = load double, double* %var_2_1236, align 8
; %var_2_2007 = load double, double* %var_2_2006, align 8
; Matched:%var_2_1238:  %var_2_1238 = fadd double %var_2_1235, %var_2_1237
; %var_2_2008 = fadd double %var_2_2005, %var_2_2007
; Matched:\<badref\>:  store double %var_2_1238, double* %var_2_1623, align 1, !tbaa !1285
; store double %var_2_2008, double* %var_2_1053, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_1625, align 1, !tbaa !1285
; store i64 0, i64* %var_2_1055, align 1
; Matched:%var_2_1239:  %var_2_1239 = bitcast i64 %var_2_1228 to double
; %var_2_2009 = bitcast i64 %var_2_1998 to double
; Matched:%var_2_1240:  %var_2_1240 = fmul double %var_2_1239, %var_2_1238
; %var_2_2010 = fmul double %var_2_2009, %var_2_2008
; Matched:\<badref\>:  store double %var_2_1240, double* %var_2_93, align 1, !tbaa !1285
; store double %var_2_2010, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
%var_2_2011 = add i64 %var_2_1993, -16
; Matched:%var_2_210:  %var_2_210 = add i64 %var_2_172, 23
; %var_2_2012 = add i64 %var_2_1995, 23
; Matched:\<badref\>:  store i64 %var_2_210, i64* %PC, align 8
; store i64 %var_2_2012, i64* %var_2_3, align 8
%var_2_2013 = inttoptr i64 %var_2_2011 to i64*
%var_2_2014 = load i64, i64* %var_2_2013, align 8
; Matched:\<badref\>:  store i64 %var_2_4702, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_2014, i64* %RCX.i2236, align 8
%var_2_2015 = add i64 %var_2_1993, -40
; Matched:%var_2_2052:  %var_2_2052 = add i64 %var_2_2029, 26
; %var_2_2016 = add i64 %var_2_1995, 26
; Matched:\<badref\>:  store i64 %var_2_4312, i64* %PC, align 8
; store i64 %var_2_2016, i64* %var_2_3, align 8
%var_2_2017 = inttoptr i64 %var_2_2015 to i32*
%var_2_2018 = load i32, i32* %var_2_2017, align 4
%var_2_2019 = add i32 %var_2_2018, 1
; Matched:%var_2_4255:  %var_2_4255 = zext i32 %var_2_4254 to i64
; %var_2_2020 = zext i32 %var_2_2019 to i64
; Matched:\<badref\>:  store i64 %var_2_4142, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2020, i64* %RAX.i2224, align 8
; Matched:%var_2_4256:  %var_2_4256 = icmp eq i32 %var_2_4253, -1
; %var_2_2021 = icmp eq i32 %var_2_2018, -1
; Matched:%var_2_2108:  %var_2_2108 = icmp eq i32 %var_2_2105, 0
; %var_2_2022 = icmp eq i32 %var_2_2019, 0
; Matched:%var_2_2109:  %var_2_2109 = or i1 %var_2_2107, %var_2_2108
; %var_2_2023 = or i1 %var_2_2021, %var_2_2022
; Matched:%var_2_4259:  %var_2_4259 = zext i1 %var_2_4258 to i8
; %var_2_2024 = zext i1 %var_2_2023 to i8
; Matched:\<badref\>:  store i8 %var_2_4259, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_2024, i8* %var_2_14, align 1
; Matched:%var_2_4260:  %var_2_4260 = and i32 %var_2_4254, 255
; %var_2_2025 = and i32 %var_2_2019, 255
; Matched:%var_2_2112:  %var_2_2112 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2111) #14
; %var_2_2026 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2025)
; Matched:%var_2_2113:  %var_2_2113 = trunc i32 %var_2_2112 to i8
; %var_2_2027 = trunc i32 %var_2_2026 to i8
; Matched:%var_2_4263:  %var_2_4263 = and i8 %var_2_4262, 1
; %var_2_2028 = and i8 %var_2_2027, 1
; Matched:%var_2_4264:  %var_2_4264 = xor i8 %var_2_4263, 1
; %var_2_2029 = xor i8 %var_2_2028, 1
; Matched:\<badref\>:  store i8 %var_2_2115, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_2029, i8* %var_2_21, align 1
; Matched:%var_2_2116:  %var_2_2116 = xor i32 %var_2_2105, %var_2_2104
; %var_2_2030 = xor i32 %var_2_2019, %var_2_2018
; Matched:%var_2_4266:  %var_2_4266 = lshr i32 %var_2_4265, 4
; %var_2_2031 = lshr i32 %var_2_2030, 4
; Matched:%var_2_4154:  %var_2_4154 = trunc i32 %var_2_4153 to i8
; %var_2_2032 = trunc i32 %var_2_2031 to i8
; Matched:%var_2_2119:  %var_2_2119 = and i8 %var_2_2118, 1
; %var_2_2033 = and i8 %var_2_2032, 1
; Matched:\<badref\>:  store i8 %var_2_2119, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_2033, i8* %var_2_27, align 1
; Matched:%var_2_2120:  %var_2_2120 = zext i1 %var_2_2108 to i8
; %var_2_2034 = zext i1 %var_2_2022 to i8
; Matched:\<badref\>:  store i8 %var_2_2120, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_2034, i8* %var_2_30, align 1
; Matched:%var_2_2121:  %var_2_2121 = lshr i32 %var_2_2105, 31
; %var_2_2035 = lshr i32 %var_2_2019, 31
; Matched:%var_2_2122:  %var_2_2122 = trunc i32 %var_2_2121 to i8
; %var_2_2036 = trunc i32 %var_2_2035 to i8
; Matched:\<badref\>:  store i8 %var_2_2122, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_2036, i8* %var_2_33, align 1
; Matched:%var_2_2123:  %var_2_2123 = lshr i32 %var_2_2104, 31
; %var_2_2037 = lshr i32 %var_2_2018, 31
; Matched:%var_2_4273:  %var_2_4273 = xor i32 %var_2_4270, %var_2_4272
; %var_2_2038 = xor i32 %var_2_2035, %var_2_2037
; Matched:%var_2_2125:  %var_2_2125 = add nuw nsw i32 %var_2_2124, %var_2_2121
; %var_2_2039 = add nuw nsw i32 %var_2_2038, %var_2_2035
; Matched:%var_2_2239:  %var_2_2239 = icmp eq i32 %var_2_2238, 2
; %var_2_2040 = icmp eq i32 %var_2_2039, 2
; Matched:%var_2_2127:  %var_2_2127 = zext i1 %var_2_2126 to i8
; %var_2_2041 = zext i1 %var_2_2040 to i8
; Matched:\<badref\>:  store i8 %var_2_2127, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_2041, i8* %var_2_39, align 1
%var_2_2042 = sext i32 %var_2_2019 to i64
; Matched:\<badref\>:  store i64 %var_2_889, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_2042, i64* %RDX.i2239, align 8
; Matched:%var_2_1273:  %var_2_1273 = shl nsw i64 %var_2_1272, 3
; %var_2_2043 = shl nsw i64 %var_2_2042, 3
; Matched:%var_2_1274:  %var_2_1274 = add i64 %var_2_1244, %var_2_1273
; %var_2_2044 = add i64 %var_2_2014, %var_2_2043
; Matched:%var_2_4424:  %var_2_4424 = add i64 %var_2_4392, 37
; %var_2_2045 = add i64 %var_2_1995, 37
; Matched:\<badref\>:  store i64 %var_2_2535, i64* %PC, align 8
; store i64 %var_2_2045, i64* %var_2_3, align 8
; Matched:%var_2_1276:  %var_2_1276 = inttoptr i64 %var_2_1274 to double*
; %var_2_2046 = inttoptr i64 %var_2_2044 to double*
; Matched:\<badref\>:  store double %var_2_1240, double* %var_2_1276, align 8
; store double %var_2_2010, double* %var_2_2046, align 8
; Matched:%var_2_1277:  %var_2_1277 = load i64, i64* %RBP, align 8
; %var_2_2047 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2722:  %var_2_2722 = add i64 %var_2_2721, -28
; %var_2_2048 = add i64 %var_2_2047, -28
%var_2_2049 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1340:  %var_2_1340 = add i64 %var_2_1339, 3
; %var_2_2050 = add i64 %var_2_2049, 3
; Matched:\<badref\>:  store i64 %var_2_1616, i64* %PC, align 8
; store i64 %var_2_2050, i64* %var_2_3, align 8
; Matched:%var_2_2725:  %var_2_2725 = inttoptr i64 %var_2_2722 to i32*
; %var_2_2051 = inttoptr i64 %var_2_2048 to i32*
; Matched:%var_2_3656:  %var_2_3656 = load i32, i32* %var_2_3655, align 4
; %var_2_2052 = load i32, i32* %var_2_2051, align 4
; Matched:%var_2_4741:  %var_2_4741 = add i32 %var_2_4740, 2
; %var_2_2053 = add i32 %var_2_2052, 2
; Matched:%var_2_3658:  %var_2_3658 = zext i32 %var_2_3657 to i64
; %var_2_2054 = zext i32 %var_2_2053 to i64
; Matched:\<badref\>:  store i64 %var_2_2728, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2054, i64* %RAX.i2224, align 8
; Matched:%var_2_2729:  %var_2_2729 = icmp ugt i32 %var_2_2726, -3
; %var_2_2055 = icmp ugt i32 %var_2_2052, -3
; Matched:%var_2_2730:  %var_2_2730 = zext i1 %var_2_2729 to i8
; %var_2_2056 = zext i1 %var_2_2055 to i8
; Matched:\<badref\>:  store i8 %var_2_2730, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_2056, i8* %var_2_14, align 1
; Matched:%var_2_2731:  %var_2_2731 = and i32 %var_2_2727, 255
; %var_2_2057 = and i32 %var_2_2053, 255
; Matched:%var_2_2732:  %var_2_2732 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2731) #14
; %var_2_2058 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2057)
; Matched:%var_2_4747:  %var_2_4747 = trunc i32 %var_2_4746 to i8
; %var_2_2059 = trunc i32 %var_2_2058 to i8
; Matched:%var_2_2734:  %var_2_2734 = and i8 %var_2_2733, 1
; %var_2_2060 = and i8 %var_2_2059, 1
; Matched:%var_2_4749:  %var_2_4749 = xor i8 %var_2_4748, 1
; %var_2_2061 = xor i8 %var_2_2060, 1
; Matched:\<badref\>:  store i8 %var_2_3665, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_2061, i8* %var_2_21, align 1
; Matched:%var_2_2736:  %var_2_2736 = xor i32 %var_2_2727, %var_2_2726
; %var_2_2062 = xor i32 %var_2_2053, %var_2_2052
; Matched:%var_2_2737:  %var_2_2737 = lshr i32 %var_2_2736, 4
; %var_2_2063 = lshr i32 %var_2_2062, 4
; Matched:%var_2_2738:  %var_2_2738 = trunc i32 %var_2_2737 to i8
; %var_2_2064 = trunc i32 %var_2_2063 to i8
; Matched:%var_2_2739:  %var_2_2739 = and i8 %var_2_2738, 1
; %var_2_2065 = and i8 %var_2_2064, 1
; Matched:\<badref\>:  store i8 %var_2_4753, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_2065, i8* %var_2_27, align 1
; Matched:%var_2_2740:  %var_2_2740 = icmp eq i32 %var_2_2727, 0
; %var_2_2066 = icmp eq i32 %var_2_2053, 0
; Matched:%var_2_4755:  %var_2_4755 = zext i1 %var_2_4754 to i8
; %var_2_2067 = zext i1 %var_2_2066 to i8
; Matched:\<badref\>:  store i8 %var_2_3671, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_2067, i8* %var_2_30, align 1
; Matched:%var_2_2742:  %var_2_2742 = lshr i32 %var_2_2727, 31
; %var_2_2068 = lshr i32 %var_2_2053, 31
; Matched:%var_2_2743:  %var_2_2743 = trunc i32 %var_2_2742 to i8
; %var_2_2069 = trunc i32 %var_2_2068 to i8
; Matched:\<badref\>:  store i8 %var_2_2743, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_2069, i8* %var_2_33, align 1
; Matched:%var_2_2744:  %var_2_2744 = lshr i32 %var_2_2726, 31
; %var_2_2070 = lshr i32 %var_2_2052, 31
; Matched:%var_2_4759:  %var_2_4759 = xor i32 %var_2_4756, %var_2_4758
; %var_2_2071 = xor i32 %var_2_2068, %var_2_2070
; Matched:%var_2_2746:  %var_2_2746 = add nuw nsw i32 %var_2_2745, %var_2_2742
; %var_2_2072 = add nuw nsw i32 %var_2_2071, %var_2_2068
; Matched:%var_2_4761:  %var_2_4761 = icmp eq i32 %var_2_4760, 2
; %var_2_2073 = icmp eq i32 %var_2_2072, 2
; Matched:%var_2_3678:  %var_2_3678 = zext i1 %var_2_3677 to i8
; %var_2_2074 = zext i1 %var_2_2073 to i8
; Matched:\<badref\>:  store i8 %var_2_2748, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_2074, i8* %var_2_39, align 1
%var_2_2075 = add i64 %var_2_2049, 9
store i64 %var_2_2075, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_2727, i32* %var_2_2725, align 4
; store i32 %var_2_2053, i32* %var_2_2051, align 4
; Matched:%var_2_1306:  %var_2_1306 = load i64, i64* %PC, align 8
; %var_2_2076 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1307:  %var_2_1307 = add i64 %var_2_1306, -695
; %var_2_2077 = add i64 %var_2_2076, -695
; Matched:\<badref\>:  store i64 %var_2_1307, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2077, i64* %var_2_3, align 8
  br label %block_.L_4035c1

block_.L_40387d:                                  ; preds = %block_.L_4035c1
%var_2_2078 = add i64 %var_2_1058, -48
; Matched:%var_2_1309:  %var_2_1309 = add i64 %var_2_4810, 7
; %var_2_2079 = add i64 %var_2_1101, 7
; Matched:\<badref\>:  store i64 %var_2_1309, i64* %PC, align 8
; store i64 %var_2_2079, i64* %var_2_3, align 8
%var_2_2080 = inttoptr i64 %var_2_2078 to i32*
store i32 0, i32* %var_2_2080, align 4
; Matched:%var_2_1311:  %var_2_1311 = load i64, i64* %RBP, align 8
; %var_2_2081 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1312:  %var_2_1312 = add i64 %var_2_1311, -56
; %var_2_2082 = add i64 %var_2_2081, -56
%var_2_2083 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1280:  %var_2_1280 = add i64 %var_2_1279, 3
; %var_2_2084 = add i64 %var_2_2083, 3
; Matched:\<badref\>:  store i64 %var_2_1280, i64* %PC, align 8
; store i64 %var_2_2084, i64* %var_2_3, align 8
; Matched:%var_2_1315:  %var_2_1315 = inttoptr i64 %var_2_1312 to i32*
; %var_2_2085 = inttoptr i64 %var_2_2082 to i32*
; Matched:%var_2_1316:  %var_2_1316 = load i32, i32* %var_2_1315, align 4
; %var_2_2086 = load i32, i32* %var_2_2085, align 4
; Matched:%var_2_1317:  %var_2_1317 = shl i32 %var_2_1316, 1
; %var_2_2087 = shl i32 %var_2_2086, 1
; Matched:%var_2_1318:  %var_2_1318 = icmp slt i32 %var_2_1316, 0
; %var_2_2088 = icmp slt i32 %var_2_2086, 0
; Matched:%var_2_1319:  %var_2_1319 = icmp slt i32 %var_2_1317, 0
; %var_2_2089 = icmp slt i32 %var_2_2087, 0
; Matched:%var_2_1320:  %var_2_1320 = xor i1 %var_2_1318, %var_2_1319
; %var_2_2090 = xor i1 %var_2_2088, %var_2_2089
; Matched:%var_2_1321:  %var_2_1321 = zext i32 %var_2_1317 to i64
; %var_2_2091 = zext i32 %var_2_2087 to i64
; Matched:\<badref\>:  store i64 %var_2_1321, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2091, i64* %RAX.i2224, align 8
; Matched:  %.lobit = lshr i32 %var_2_1316, 31
; %.lobit = lshr i32 %var_2_2086, 31
; Matched:%var_2_1322:  %var_2_1322 = trunc i32 %.lobit to i8
; %var_2_2092 = trunc i32 %.lobit to i8
; Matched:\<badref\>:  store i8 %var_2_1322, i8* %var_2_16, align 1, !tbaa !1284
; store i8 %var_2_2092, i8* %var_2_14, align 1
; Matched:%var_2_1323:  %var_2_1323 = and i32 %var_2_1317, 254
; %var_2_2093 = and i32 %var_2_2087, 254
; Matched:%var_2_1324:  %var_2_1324 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1323) #14
; %var_2_2094 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2093)
; Matched:%var_2_1325:  %var_2_1325 = trunc i32 %var_2_1324 to i8
; %var_2_2095 = trunc i32 %var_2_2094 to i8
; Matched:%var_2_1326:  %var_2_1326 = and i8 %var_2_1325, 1
; %var_2_2096 = and i8 %var_2_2095, 1
; Matched:%var_2_1327:  %var_2_1327 = xor i8 %var_2_1326, 1
; %var_2_2097 = xor i8 %var_2_2096, 1
; Matched:\<badref\>:  store i8 %var_2_1327, i8* %var_2_23, align 1, !tbaa !1284
; store i8 %var_2_2097, i8* %var_2_21, align 1
store i8 0, i8* %var_2_27, align 1
; Matched:%var_2_1328:  %var_2_1328 = icmp eq i32 %var_2_1317, 0
; %var_2_2098 = icmp eq i32 %var_2_2087, 0
; Matched:%var_2_1329:  %var_2_1329 = zext i1 %var_2_1328 to i8
; %var_2_2099 = zext i1 %var_2_2098 to i8
; Matched:\<badref\>:  store i8 %var_2_1329, i8* %var_2_32, align 1, !tbaa !1284
; store i8 %var_2_2099, i8* %var_2_30, align 1
; Matched:%var_2_1330:  %var_2_1330 = lshr i32 %var_2_1316, 30
; %var_2_2100 = lshr i32 %var_2_2086, 30
; Matched:%var_2_1331:  %var_2_1331 = trunc i32 %var_2_1330 to i8
; %var_2_2101 = trunc i32 %var_2_2100 to i8
; Matched:%var_2_1332:  %var_2_1332 = and i8 %var_2_1331, 1
; %var_2_2102 = and i8 %var_2_2101, 1
; Matched:\<badref\>:  store i8 %var_2_1332, i8* %var_2_35, align 1, !tbaa !1284
; store i8 %var_2_2102, i8* %var_2_33, align 1
; Matched:%var_2_1333:  %var_2_1333 = zext i1 %var_2_1320 to i8
; %var_2_2103 = zext i1 %var_2_2090 to i8
; Matched:\<badref\>:  store i8 %var_2_1333, i8* %var_2_41, align 1, !tbaa !1284
; store i8 %var_2_2103, i8* %var_2_39, align 1
; Matched:%var_2_1334:  %var_2_1334 = add i64 %var_2_1311, -60
; %var_2_2104 = add i64 %var_2_2081, -60
%var_2_2105 = add i64 %var_2_2083, 8
store i64 %var_2_2105, i64* %var_2_3, align 8
; Matched:%var_2_1336:  %var_2_1336 = inttoptr i64 %var_2_1334 to i32*
; %var_2_2106 = inttoptr i64 %var_2_2104 to i32*
; Matched:\<badref\>:  store i32 %var_2_1317, i32* %var_2_1336, align 4
; store i32 %var_2_2087, i32* %var_2_2106, align 4
; Matched:%var_2_1337:  %var_2_1337 = load i64, i64* %RBP, align 8
; %var_2_2107 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1530:  %var_2_1530 = add i64 %var_2_1529, -60
; %var_2_2108 = add i64 %var_2_2107, -60
%var_2_2109 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1616:  %var_2_1616 = add i64 %var_2_1615, 3
; %var_2_2110 = add i64 %var_2_2109, 3
; Matched:\<badref\>:  store i64 %var_2_1340, i64* %PC, align 8
; store i64 %var_2_2110, i64* %var_2_3, align 8
; Matched:%var_2_1532:  %var_2_1532 = inttoptr i64 %var_2_1530 to i32*
; %var_2_2111 = inttoptr i64 %var_2_2108 to i32*
; Matched:%var_2_1533:  %var_2_1533 = load i32, i32* %var_2_1532, align 4
; %var_2_2112 = load i32, i32* %var_2_2111, align 4
; Matched:%var_2_1534:  %var_2_1534 = zext i32 %var_2_1533 to i64
; %var_2_2113 = zext i32 %var_2_2112 to i64
; Matched:\<badref\>:  store i64 %var_2_1343, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2113, i64* %RAX.i2224, align 8
; Matched:%var_2_1344:  %var_2_1344 = add i64 %var_2_1337, -44
; %var_2_2114 = add i64 %var_2_2107, -44
; Matched:%var_2_2833:  %var_2_2833 = add i64 %var_2_2827, 6
; %var_2_2115 = add i64 %var_2_2109, 6
; Matched:\<badref\>:  store i64 %var_2_2833, i64* %PC, align 8
; store i64 %var_2_2115, i64* %var_2_3, align 8
; Matched:%var_2_1346:  %var_2_1346 = inttoptr i64 %var_2_1344 to i32*
; %var_2_2116 = inttoptr i64 %var_2_2114 to i32*
; Matched:\<badref\>:  store i32 %var_2_1342, i32* %var_2_1346, align 4
; store i32 %var_2_2112, i32* %var_2_2116, align 4
; Matched:%var_2_1601:  %var_2_1601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
; %var_2_2117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
; Matched:%var_2_1347:  %var_2_1347 = bitcast %union.VectorReg* %var_2_1601 to i8*
; %var_2_2118 = bitcast %union.VectorReg* %var_2_2117 to i8*
%var_2_2119 = bitcast [32 x %union.VectorReg]* %var_2_1032 to <2 x i32>*
%var_2_2120 = bitcast i64* %var_2_96 to <2 x i32>*
; Matched:%var_2_1350:  %var_2_1350 = bitcast %union.VectorReg* %var_2_1601 to i32*
; %var_2_2121 = bitcast %union.VectorReg* %var_2_2117 to i32*
; Matched:%var_2_1351:  %var_2_1351 = getelementptr inbounds i8, i8* %var_2_1347, i64 4
; %var_2_2122 = getelementptr inbounds i8, i8* %var_2_2118, i64 4
; Matched:%var_2_1352:  %var_2_1352 = bitcast i8* %var_2_1351 to i32*
; %var_2_2123 = bitcast i8* %var_2_2122 to i32*
; Matched:%var_2_1353:  %var_2_1353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
; %var_2_2124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_1354:  %var_2_1354 = bitcast i64* %var_2_1353 to i32*
; %var_2_2125 = bitcast i64* %var_2_2124 to i32*
; Matched:%var_2_1355:  %var_2_1355 = getelementptr inbounds i8, i8* %var_2_1347, i64 12
; %var_2_2126 = getelementptr inbounds i8, i8* %var_2_2118, i64 12
; Matched:%var_2_1356:  %var_2_1356 = bitcast i8* %var_2_1355 to i32*
; %var_2_2127 = bitcast i8* %var_2_2126 to i32*
; Matched:%var_2_1357:  %var_2_1357 = bitcast %union.VectorReg* %var_2_1601 to double*
; %var_2_2128 = bitcast %union.VectorReg* %var_2_2117 to double*
%.pre24 = load i64, i64* %var_2_3, align 8
  br label %block_.L_403893

block_.L_403893:                                  ; preds = %block_.L_403ffb, %block_.L_40387d
%var_2_2129 = phi i64 [ %var_2_4834, %block_.L_403ffb ], [ %.pre24, %block_.L_40387d ]
%var_2_2130 = load i64, i64* %RBP.i, align 8
%var_2_2131 = add i64 %var_2_2130, -44
; Matched:%var_2_3685:  %var_2_3685 = add i64 %var_2_3682, 3
; %var_2_2132 = add i64 %var_2_2129, 3
; Matched:\<badref\>:  store i64 %var_2_3685, i64* %PC, align 8
; store i64 %var_2_2132, i64* %var_2_3, align 8
%var_2_2133 = inttoptr i64 %var_2_2131 to i32*
%var_2_2134 = load i32, i32* %var_2_2133, align 4
; Matched:%var_2_3688:  %var_2_3688 = zext i32 %var_2_3687 to i64
; %var_2_2135 = zext i32 %var_2_2134 to i64
; Matched:\<badref\>:  store i64 %var_2_3688, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2135, i64* %RAX.i2224, align 8
%var_2_2136 = add i64 %var_2_2130, -4
; Matched:%var_2_3690:  %var_2_3690 = add i64 %var_2_3682, 6
; %var_2_2137 = add i64 %var_2_2129, 6
; Matched:\<badref\>:  store i64 %var_2_3690, i64* %PC, align 8
; store i64 %var_2_2137, i64* %var_2_3, align 8
%var_2_2138 = inttoptr i64 %var_2_2136 to i32*
%var_2_2139 = load i32, i32* %var_2_2138, align 4
%var_2_2140 = sub i32 %var_2_2134, %var_2_2139
; Matched:%var_2_3694:  %var_2_3694 = icmp ult i32 %var_2_3687, %var_2_3692
; %var_2_2141 = icmp ult i32 %var_2_2134, %var_2_2139
; Matched:%var_2_3695:  %var_2_3695 = zext i1 %var_2_3694 to i8
; %var_2_2142 = zext i1 %var_2_2141 to i8
; Matched:\<badref\>:  store i8 %var_2_3695, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_2142, i8* %var_2_14, align 1
; Matched:%var_2_3696:  %var_2_3696 = and i32 %var_2_3693, 255
; %var_2_2143 = and i32 %var_2_2140, 255
; Matched:%var_2_3697:  %var_2_3697 = tail call i32 @llvm.ctpop.i32(i32 %var_2_3696) #14
; %var_2_2144 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2143)
; Matched:%var_2_3698:  %var_2_3698 = trunc i32 %var_2_3697 to i8
; %var_2_2145 = trunc i32 %var_2_2144 to i8
; Matched:%var_2_3699:  %var_2_3699 = and i8 %var_2_3698, 1
; %var_2_2146 = and i8 %var_2_2145, 1
; Matched:%var_2_3700:  %var_2_3700 = xor i8 %var_2_3699, 1
; %var_2_2147 = xor i8 %var_2_2146, 1
; Matched:\<badref\>:  store i8 %var_2_3700, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_2147, i8* %var_2_21, align 1
; Matched:%var_2_3701:  %var_2_3701 = xor i32 %var_2_3692, %var_2_3687
; %var_2_2148 = xor i32 %var_2_2139, %var_2_2134
; Matched:%var_2_3702:  %var_2_3702 = xor i32 %var_2_3701, %var_2_3693
; %var_2_2149 = xor i32 %var_2_2148, %var_2_2140
; Matched:%var_2_3703:  %var_2_3703 = lshr i32 %var_2_3702, 4
; %var_2_2150 = lshr i32 %var_2_2149, 4
; Matched:%var_2_3704:  %var_2_3704 = trunc i32 %var_2_3703 to i8
; %var_2_2151 = trunc i32 %var_2_2150 to i8
; Matched:%var_2_3705:  %var_2_3705 = and i8 %var_2_3704, 1
; %var_2_2152 = and i8 %var_2_2151, 1
; Matched:\<badref\>:  store i8 %var_2_3705, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_2152, i8* %var_2_27, align 1
; Matched:%var_2_3706:  %var_2_3706 = icmp eq i32 %var_2_3693, 0
; %var_2_2153 = icmp eq i32 %var_2_2140, 0
; Matched:%var_2_3707:  %var_2_3707 = zext i1 %var_2_3706 to i8
; %var_2_2154 = zext i1 %var_2_2153 to i8
; Matched:\<badref\>:  store i8 %var_2_3707, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_2154, i8* %var_2_30, align 1
%var_2_2155 = lshr i32 %var_2_2140, 31
%var_2_2156 = trunc i32 %var_2_2155 to i8
; Matched:\<badref\>:  store i8 %var_2_3709, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_2156, i8* %var_2_33, align 1
%var_2_2157 = lshr i32 %var_2_2134, 31
%var_2_2158 = lshr i32 %var_2_2139, 31
%var_2_2159 = xor i32 %var_2_2158, %var_2_2157
%var_2_2160 = xor i32 %var_2_2155, %var_2_2157
%var_2_2161 = add nuw nsw i32 %var_2_2160, %var_2_2159
%var_2_2162 = icmp eq i32 %var_2_2161, 2
; Matched:%var_2_3716:  %var_2_3716 = zext i1 %var_2_3715 to i8
; %var_2_2163 = zext i1 %var_2_2162 to i8
; Matched:\<badref\>:  store i8 %var_2_3716, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_2163, i8* %var_2_39, align 1
%var_2_2164 = icmp ne i8 %var_2_2156, 0
%var_2_2165 = xor i1 %var_2_2164, %var_2_2162
%.v28 = select i1 %var_2_2165, i64 12, i64 1915
%var_2_2166 = add i64 %var_2_2129, %.v28
; Matched:\<badref\>:  store i64 %var_2_3719, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2166, i64* %var_2_3, align 8
br i1 %var_2_2165, label %block_40389f, label %block_.L_40400e

block_40389f:                                     ; preds = %block_.L_403893
%var_2_2167 = add i64 %var_2_2166, ptrtoint (%G_0x849__rip__type* @G_0x849__rip_ to i64)
%var_2_2168 = add i64 %var_2_2166, 8
store i64 %var_2_2168, i64* %var_2_3, align 8
%var_2_2169 = inttoptr i64 %var_2_2167 to i64*
%var_2_2170 = load i64, i64* %var_2_2169, align 8
store i64 %var_2_2170, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
; Matched:%var_2_98:  %var_2_98 = add i64 %var_2_3683, -48
; %var_2_2171 = add i64 %var_2_2130, -48
; Matched:%var_2_99:  %var_2_99 = add i64 %var_2_3719, 11
; %var_2_2172 = add i64 %var_2_2166, 11
; Matched:\<badref\>:  store i64 %var_2_99, i64* %PC, align 8
; store i64 %var_2_2172, i64* %var_2_3, align 8
; Matched:%var_2_100:  %var_2_100 = inttoptr i64 %var_2_98 to i32*
; %var_2_2173 = inttoptr i64 %var_2_2171 to i32*
; Matched:%var_2_101:  %var_2_101 = load i32, i32* %var_2_100, align 4
; %var_2_2174 = load i32, i32* %var_2_2173, align 4
; Matched:%var_2_102:  %var_2_102 = add i32 %var_2_101, 2
; %var_2_2175 = add i32 %var_2_2174, 2
; Matched:%var_2_103:  %var_2_103 = zext i32 %var_2_102 to i64
; %var_2_2176 = zext i32 %var_2_2175 to i64
; Matched:\<badref\>:  store i64 %var_2_103, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2176, i64* %RAX.i2224, align 8
; Matched:%var_2_104:  %var_2_104 = icmp ugt i32 %var_2_101, -3
; %var_2_2177 = icmp ugt i32 %var_2_2174, -3
; Matched:%var_2_105:  %var_2_105 = zext i1 %var_2_104 to i8
; %var_2_2178 = zext i1 %var_2_2177 to i8
; Matched:\<badref\>:  store i8 %var_2_105, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_2178, i8* %var_2_14, align 1
; Matched:%var_2_106:  %var_2_106 = and i32 %var_2_102, 255
; %var_2_2179 = and i32 %var_2_2175, 255
; Matched:%var_2_107:  %var_2_107 = tail call i32 @llvm.ctpop.i32(i32 %var_2_106) #14
; %var_2_2180 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2179)
; Matched:%var_2_108:  %var_2_108 = trunc i32 %var_2_107 to i8
; %var_2_2181 = trunc i32 %var_2_2180 to i8
; Matched:%var_2_109:  %var_2_109 = and i8 %var_2_108, 1
; %var_2_2182 = and i8 %var_2_2181, 1
; Matched:%var_2_110:  %var_2_110 = xor i8 %var_2_109, 1
; %var_2_2183 = xor i8 %var_2_2182, 1
; Matched:\<badref\>:  store i8 %var_2_110, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_2183, i8* %var_2_21, align 1
; Matched:%var_2_111:  %var_2_111 = xor i32 %var_2_102, %var_2_101
; %var_2_2184 = xor i32 %var_2_2175, %var_2_2174
; Matched:%var_2_112:  %var_2_112 = lshr i32 %var_2_111, 4
; %var_2_2185 = lshr i32 %var_2_2184, 4
; Matched:%var_2_113:  %var_2_113 = trunc i32 %var_2_112 to i8
; %var_2_2186 = trunc i32 %var_2_2185 to i8
; Matched:%var_2_114:  %var_2_114 = and i8 %var_2_113, 1
; %var_2_2187 = and i8 %var_2_2186, 1
; Matched:\<badref\>:  store i8 %var_2_114, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_2187, i8* %var_2_27, align 1
; Matched:%var_2_115:  %var_2_115 = icmp eq i32 %var_2_102, 0
; %var_2_2188 = icmp eq i32 %var_2_2175, 0
; Matched:%var_2_116:  %var_2_116 = zext i1 %var_2_115 to i8
; %var_2_2189 = zext i1 %var_2_2188 to i8
; Matched:\<badref\>:  store i8 %var_2_116, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_2189, i8* %var_2_30, align 1
; Matched:%var_2_117:  %var_2_117 = lshr i32 %var_2_102, 31
; %var_2_2190 = lshr i32 %var_2_2175, 31
; Matched:%var_2_118:  %var_2_118 = trunc i32 %var_2_117 to i8
; %var_2_2191 = trunc i32 %var_2_2190 to i8
; Matched:\<badref\>:  store i8 %var_2_118, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_2191, i8* %var_2_33, align 1
; Matched:%var_2_119:  %var_2_119 = lshr i32 %var_2_101, 31
; %var_2_2192 = lshr i32 %var_2_2174, 31
; Matched:%var_2_120:  %var_2_120 = xor i32 %var_2_117, %var_2_119
; %var_2_2193 = xor i32 %var_2_2190, %var_2_2192
; Matched:%var_2_121:  %var_2_121 = add nuw nsw i32 %var_2_120, %var_2_117
; %var_2_2194 = add nuw nsw i32 %var_2_2193, %var_2_2190
; Matched:%var_2_122:  %var_2_122 = icmp eq i32 %var_2_121, 2
; %var_2_2195 = icmp eq i32 %var_2_2194, 2
; Matched:%var_2_123:  %var_2_123 = zext i1 %var_2_122 to i8
; %var_2_2196 = zext i1 %var_2_2195 to i8
; Matched:\<badref\>:  store i8 %var_2_123, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_2196, i8* %var_2_39, align 1
; Matched:%var_2_124:  %var_2_124 = add i64 %var_2_3719, 17
; %var_2_2197 = add i64 %var_2_2166, 17
; Matched:\<badref\>:  store i64 %var_2_124, i64* %PC, align 8
; store i64 %var_2_2197, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_102, i32* %var_2_100, align 4
; store i32 %var_2_2175, i32* %var_2_2173, align 4
; Matched:%var_2_125:  %var_2_125 = load i64, i64* %RBP, align 8
; %var_2_2198 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_126:  %var_2_126 = add i64 %var_2_125, -48
; %var_2_2199 = add i64 %var_2_2198, -48
%var_2_2200 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_325:  %var_2_325 = add i64 %var_2_324, 3
; %var_2_2201 = add i64 %var_2_2200, 3
; Matched:\<badref\>:  store i64 %var_2_325, i64* %PC, align 8
; store i64 %var_2_2201, i64* %var_2_3, align 8
; Matched:%var_2_129:  %var_2_129 = inttoptr i64 %var_2_126 to i32*
; %var_2_2202 = inttoptr i64 %var_2_2199 to i32*
; Matched:%var_2_130:  %var_2_130 = load i32, i32* %var_2_129, align 4
; %var_2_2203 = load i32, i32* %var_2_2202, align 4
; Matched:%var_2_131:  %var_2_131 = shl i32 %var_2_130, 1
; %var_2_2204 = shl i32 %var_2_2203, 1
; Matched:%var_2_132:  %var_2_132 = icmp slt i32 %var_2_130, 0
; %var_2_2205 = icmp slt i32 %var_2_2203, 0
; Matched:%var_2_133:  %var_2_133 = icmp slt i32 %var_2_131, 0
; %var_2_2206 = icmp slt i32 %var_2_2204, 0
; Matched:%var_2_134:  %var_2_134 = xor i1 %var_2_132, %var_2_133
; %var_2_2207 = xor i1 %var_2_2205, %var_2_2206
; Matched:%var_2_135:  %var_2_135 = zext i32 %var_2_131 to i64
; %var_2_2208 = zext i32 %var_2_2204 to i64
; Matched:\<badref\>:  store i64 %var_2_135, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2208, i64* %RAX.i2224, align 8
; Matched:  %.lobit5 = lshr i32 %var_2_130, 31
; %.lobit5 = lshr i32 %var_2_2203, 31
; Matched:%var_2_136:  %var_2_136 = trunc i32 %.lobit5 to i8
; %var_2_2209 = trunc i32 %.lobit5 to i8
; Matched:\<badref\>:  store i8 %var_2_136, i8* %var_2_16, align 1, !tbaa !1284
; store i8 %var_2_2209, i8* %var_2_14, align 1
; Matched:%var_2_137:  %var_2_137 = and i32 %var_2_131, 254
; %var_2_2210 = and i32 %var_2_2204, 254
; Matched:%var_2_138:  %var_2_138 = tail call i32 @llvm.ctpop.i32(i32 %var_2_137) #14
; %var_2_2211 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2210)
; Matched:%var_2_139:  %var_2_139 = trunc i32 %var_2_138 to i8
; %var_2_2212 = trunc i32 %var_2_2211 to i8
; Matched:%var_2_140:  %var_2_140 = and i8 %var_2_139, 1
; %var_2_2213 = and i8 %var_2_2212, 1
; Matched:%var_2_141:  %var_2_141 = xor i8 %var_2_140, 1
; %var_2_2214 = xor i8 %var_2_2213, 1
; Matched:\<badref\>:  store i8 %var_2_141, i8* %var_2_23, align 1, !tbaa !1284
; store i8 %var_2_2214, i8* %var_2_21, align 1
store i8 0, i8* %var_2_27, align 1
; Matched:%var_2_142:  %var_2_142 = icmp eq i32 %var_2_131, 0
; %var_2_2215 = icmp eq i32 %var_2_2204, 0
; Matched:%var_2_143:  %var_2_143 = zext i1 %var_2_142 to i8
; %var_2_2216 = zext i1 %var_2_2215 to i8
; Matched:\<badref\>:  store i8 %var_2_143, i8* %var_2_32, align 1, !tbaa !1284
; store i8 %var_2_2216, i8* %var_2_30, align 1
; Matched:%var_2_144:  %var_2_144 = lshr i32 %var_2_130, 30
; %var_2_2217 = lshr i32 %var_2_2203, 30
; Matched:%var_2_145:  %var_2_145 = trunc i32 %var_2_144 to i8
; %var_2_2218 = trunc i32 %var_2_2217 to i8
; Matched:%var_2_146:  %var_2_146 = and i8 %var_2_145, 1
; %var_2_2219 = and i8 %var_2_2218, 1
; Matched:\<badref\>:  store i8 %var_2_146, i8* %var_2_35, align 1, !tbaa !1284
; store i8 %var_2_2219, i8* %var_2_33, align 1
; Matched:%var_2_147:  %var_2_147 = zext i1 %var_2_134 to i8
; %var_2_2220 = zext i1 %var_2_2207 to i8
; Matched:\<badref\>:  store i8 %var_2_147, i8* %var_2_41, align 1, !tbaa !1284
; store i8 %var_2_2220, i8* %var_2_39, align 1
; Matched:%var_2_148:  %var_2_148 = add i64 %var_2_125, -52
; %var_2_2221 = add i64 %var_2_2198, -52
%var_2_2222 = add i64 %var_2_2200, 8
store i64 %var_2_2222, i64* %var_2_3, align 8
; Matched:%var_2_150:  %var_2_150 = inttoptr i64 %var_2_148 to i32*
; %var_2_2223 = inttoptr i64 %var_2_2221 to i32*
; Matched:\<badref\>:  store i32 %var_2_131, i32* %var_2_150, align 4
; store i32 %var_2_2204, i32* %var_2_2223, align 4
; Matched:%var_2_231:  %var_2_231 = load i64, i64* %RBP, align 8
; %var_2_2224 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_171:  %var_2_171 = add i64 %var_2_170, -24
; %var_2_2225 = add i64 %var_2_2224, -24
%var_2_2226 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1401:  %var_2_1401 = add i64 %var_2_1400, 4
; %var_2_2227 = add i64 %var_2_2226, 4
; Matched:\<badref\>:  store i64 %var_2_1401, i64* %PC, align 8
; store i64 %var_2_2227, i64* %var_2_3, align 8
; Matched:%var_2_174:  %var_2_174 = inttoptr i64 %var_2_171 to i64*
; %var_2_2228 = inttoptr i64 %var_2_2225 to i64*
; Matched:%var_2_236:  %var_2_236 = load i64, i64* %var_2_235, align 8
; %var_2_2229 = load i64, i64* %var_2_2228, align 8
; Matched:\<badref\>:  store i64 %var_2_175, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_2229, i64* %RCX.i2236, align 8
; Matched:%var_2_157:  %var_2_157 = add i64 %var_2_151, -48
; %var_2_2230 = add i64 %var_2_2224, -48
%var_2_2231 = add i64 %var_2_2226, 8
store i64 %var_2_2231, i64* %var_2_3, align 8
; Matched:%var_2_159:  %var_2_159 = inttoptr i64 %var_2_157 to i32*
; %var_2_2232 = inttoptr i64 %var_2_2230 to i32*
; Matched:%var_2_160:  %var_2_160 = load i32, i32* %var_2_159, align 4
; %var_2_2233 = load i32, i32* %var_2_2232, align 4
; Matched:%var_2_161:  %var_2_161 = sext i32 %var_2_160 to i64
; %var_2_2234 = sext i32 %var_2_2233 to i64
; Matched:\<badref\>:  store i64 %var_2_161, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_2234, i64* %RDX.i2239, align 8
; Matched:%var_2_162:  %var_2_162 = shl nsw i64 %var_2_161, 3
; %var_2_2235 = shl nsw i64 %var_2_2234, 3
; Matched:%var_2_163:  %var_2_163 = add i64 %var_2_162, %var_2_156
; %var_2_2236 = add i64 %var_2_2235, %var_2_2229
; Matched:%var_2_3850:  %var_2_3850 = add i64 %var_2_3839, 13
; %var_2_2237 = add i64 %var_2_2226, 13
; Matched:\<badref\>:  store i64 %var_2_688, i64* %PC, align 8
; store i64 %var_2_2237, i64* %var_2_3, align 8
; Matched:%var_2_165:  %var_2_165 = inttoptr i64 %var_2_163 to i64*
; %var_2_2238 = inttoptr i64 %var_2_2236 to i64*
; Matched:%var_2_166:  %var_2_166 = load i64, i64* %var_2_165, align 8
; %var_2_2239 = load i64, i64* %var_2_2238, align 8
; Matched:\<badref\>:  store i64 %var_2_166, i64* %var_2_1624, align 1, !tbaa !1285
; store i64 %var_2_2239, i64* %var_2_1054, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_1626, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_1056, align 1
; Matched:%var_2_167:  %var_2_167 = add i64 %var_2_151, -88
; %var_2_2240 = add i64 %var_2_2224, -88
; Matched:%var_2_1983:  %var_2_1983 = add i64 %var_2_1949, 18
; %var_2_2241 = add i64 %var_2_2226, 18
; Matched:\<badref\>:  store i64 %var_2_1983, i64* %PC, align 8
; store i64 %var_2_2241, i64* %var_2_3, align 8
; Matched:%var_2_169:  %var_2_169 = inttoptr i64 %var_2_167 to i64*
; %var_2_2242 = inttoptr i64 %var_2_2240 to i64*
; Matched:\<badref\>:  store i64 %var_2_166, i64* %var_2_169, align 8
; store i64 %var_2_2239, i64* %var_2_2242, align 8
; Matched:%var_2_212:  %var_2_212 = load i64, i64* %RBP, align 8
; %var_2_2243 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_152:  %var_2_152 = add i64 %var_2_151, -24
; %var_2_2244 = add i64 %var_2_2243, -24
%var_2_2245 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_154:  %var_2_154 = add i64 %var_2_153, 4
; %var_2_2246 = add i64 %var_2_2245, 4
; Matched:\<badref\>:  store i64 %var_2_154, i64* %PC, align 8
; store i64 %var_2_2246, i64* %var_2_3, align 8
; Matched:%var_2_155:  %var_2_155 = inttoptr i64 %var_2_152 to i64*
; %var_2_2247 = inttoptr i64 %var_2_2244 to i64*
; Matched:%var_2_217:  %var_2_217 = load i64, i64* %var_2_216, align 8
; %var_2_2248 = load i64, i64* %var_2_2247, align 8
; Matched:\<badref\>:  store i64 %var_2_156, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_2248, i64* %RCX.i2236, align 8
; Matched:%var_2_176:  %var_2_176 = add i64 %var_2_170, -48
; %var_2_2249 = add i64 %var_2_2243, -48
; Matched:%var_2_715:  %var_2_715 = add i64 %var_2_710, 7
; %var_2_2250 = add i64 %var_2_2245, 7
; Matched:\<badref\>:  store i64 %var_2_489, i64* %PC, align 8
; store i64 %var_2_2250, i64* %var_2_3, align 8
; Matched:%var_2_178:  %var_2_178 = inttoptr i64 %var_2_176 to i32*
; %var_2_2251 = inttoptr i64 %var_2_2249 to i32*
; Matched:%var_2_179:  %var_2_179 = load i32, i32* %var_2_178, align 4
; %var_2_2252 = load i32, i32* %var_2_2251, align 4
; Matched:%var_2_180:  %var_2_180 = add i32 %var_2_179, 1
; %var_2_2253 = add i32 %var_2_2252, 1
; Matched:%var_2_181:  %var_2_181 = zext i32 %var_2_180 to i64
; %var_2_2254 = zext i32 %var_2_2253 to i64
; Matched:\<badref\>:  store i64 %var_2_181, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2254, i64* %RAX.i2224, align 8
; Matched:%var_2_182:  %var_2_182 = icmp eq i32 %var_2_179, -1
; %var_2_2255 = icmp eq i32 %var_2_2252, -1
; Matched:%var_2_183:  %var_2_183 = icmp eq i32 %var_2_180, 0
; %var_2_2256 = icmp eq i32 %var_2_2253, 0
; Matched:%var_2_184:  %var_2_184 = or i1 %var_2_182, %var_2_183
; %var_2_2257 = or i1 %var_2_2255, %var_2_2256
; Matched:%var_2_185:  %var_2_185 = zext i1 %var_2_184 to i8
; %var_2_2258 = zext i1 %var_2_2257 to i8
; Matched:\<badref\>:  store i8 %var_2_185, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_2258, i8* %var_2_14, align 1
; Matched:%var_2_186:  %var_2_186 = and i32 %var_2_180, 255
; %var_2_2259 = and i32 %var_2_2253, 255
; Matched:%var_2_187:  %var_2_187 = tail call i32 @llvm.ctpop.i32(i32 %var_2_186) #14
; %var_2_2260 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2259)
; Matched:%var_2_188:  %var_2_188 = trunc i32 %var_2_187 to i8
; %var_2_2261 = trunc i32 %var_2_2260 to i8
; Matched:%var_2_189:  %var_2_189 = and i8 %var_2_188, 1
; %var_2_2262 = and i8 %var_2_2261, 1
; Matched:%var_2_190:  %var_2_190 = xor i8 %var_2_189, 1
; %var_2_2263 = xor i8 %var_2_2262, 1
; Matched:\<badref\>:  store i8 %var_2_190, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_2263, i8* %var_2_21, align 1
; Matched:%var_2_191:  %var_2_191 = xor i32 %var_2_180, %var_2_179
; %var_2_2264 = xor i32 %var_2_2253, %var_2_2252
; Matched:%var_2_192:  %var_2_192 = lshr i32 %var_2_191, 4
; %var_2_2265 = lshr i32 %var_2_2264, 4
; Matched:%var_2_193:  %var_2_193 = trunc i32 %var_2_192 to i8
; %var_2_2266 = trunc i32 %var_2_2265 to i8
; Matched:%var_2_194:  %var_2_194 = and i8 %var_2_193, 1
; %var_2_2267 = and i8 %var_2_2266, 1
; Matched:\<badref\>:  store i8 %var_2_194, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_2267, i8* %var_2_27, align 1
; Matched:%var_2_195:  %var_2_195 = zext i1 %var_2_183 to i8
; %var_2_2268 = zext i1 %var_2_2256 to i8
; Matched:\<badref\>:  store i8 %var_2_195, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_2268, i8* %var_2_30, align 1
; Matched:%var_2_196:  %var_2_196 = lshr i32 %var_2_180, 31
; %var_2_2269 = lshr i32 %var_2_2253, 31
; Matched:%var_2_197:  %var_2_197 = trunc i32 %var_2_196 to i8
; %var_2_2270 = trunc i32 %var_2_2269 to i8
; Matched:\<badref\>:  store i8 %var_2_197, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_2270, i8* %var_2_33, align 1
; Matched:%var_2_198:  %var_2_198 = lshr i32 %var_2_179, 31
; %var_2_2271 = lshr i32 %var_2_2252, 31
; Matched:%var_2_199:  %var_2_199 = xor i32 %var_2_196, %var_2_198
; %var_2_2272 = xor i32 %var_2_2269, %var_2_2271
; Matched:%var_2_200:  %var_2_200 = add nuw nsw i32 %var_2_199, %var_2_196
; %var_2_2273 = add nuw nsw i32 %var_2_2272, %var_2_2269
; Matched:%var_2_201:  %var_2_201 = icmp eq i32 %var_2_200, 2
; %var_2_2274 = icmp eq i32 %var_2_2273, 2
; Matched:%var_2_202:  %var_2_202 = zext i1 %var_2_201 to i8
; %var_2_2275 = zext i1 %var_2_2274 to i8
; Matched:\<badref\>:  store i8 %var_2_202, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_2275, i8* %var_2_39, align 1
; Matched:%var_2_203:  %var_2_203 = sext i32 %var_2_180 to i64
; %var_2_2276 = sext i32 %var_2_2253 to i64
; Matched:\<badref\>:  store i64 %var_2_203, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_2276, i64* %RDX.i2239, align 8
; Matched:%var_2_204:  %var_2_204 = shl nsw i64 %var_2_203, 3
; %var_2_2277 = shl nsw i64 %var_2_2276, 3
; Matched:%var_2_205:  %var_2_205 = add i64 %var_2_175, %var_2_204
; %var_2_2278 = add i64 %var_2_2248, %var_2_2277
; Matched:%var_2_2976:  %var_2_2976 = add i64 %var_2_2942, 18
; %var_2_2279 = add i64 %var_2_2245, 18
; Matched:\<badref\>:  store i64 %var_2_2976, i64* %PC, align 8
; store i64 %var_2_2279, i64* %var_2_3, align 8
; Matched:%var_2_207:  %var_2_207 = inttoptr i64 %var_2_205 to i64*
; %var_2_2280 = inttoptr i64 %var_2_2278 to i64*
; Matched:%var_2_208:  %var_2_208 = load i64, i64* %var_2_207, align 8
; %var_2_2281 = load i64, i64* %var_2_2280, align 8
; Matched:\<badref\>:  store i64 %var_2_208, i64* %var_2_1624, align 1, !tbaa !1285
; store i64 %var_2_2281, i64* %var_2_1054, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_1626, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_1056, align 1
; Matched:%var_2_209:  %var_2_209 = add i64 %var_2_170, -96
; %var_2_2282 = add i64 %var_2_2243, -96
; Matched:%var_2_3547:  %var_2_3547 = add i64 %var_2_3532, 23
; %var_2_2283 = add i64 %var_2_2245, 23
; Matched:\<badref\>:  store i64 %var_2_3547, i64* %PC, align 8
; store i64 %var_2_2283, i64* %var_2_3, align 8
; Matched:%var_2_211:  %var_2_211 = inttoptr i64 %var_2_209 to i64*
; %var_2_2284 = inttoptr i64 %var_2_2282 to i64*
; Matched:\<badref\>:  store i64 %var_2_208, i64* %var_2_211, align 8
; store i64 %var_2_2281, i64* %var_2_2284, align 8
; Matched:%var_2_151:  %var_2_151 = load i64, i64* %RBP, align 8
; %var_2_2285 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_232:  %var_2_232 = add i64 %var_2_231, -24
; %var_2_2286 = add i64 %var_2_2285, -24
%var_2_2287 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_3169:  %var_2_3169 = add i64 %var_2_3168, 4
; %var_2_2288 = add i64 %var_2_2287, 4
; Matched:\<badref\>:  store i64 %var_2_4179, i64* %PC, align 8
; store i64 %var_2_2288, i64* %var_2_3, align 8
; Matched:%var_2_235:  %var_2_235 = inttoptr i64 %var_2_232 to i64*
; %var_2_2289 = inttoptr i64 %var_2_2286 to i64*
; Matched:%var_2_156:  %var_2_156 = load i64, i64* %var_2_155, align 8
; %var_2_2290 = load i64, i64* %var_2_2289, align 8
; Matched:\<badref\>:  store i64 %var_2_236, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_2290, i64* %RCX.i2236, align 8
; Matched:%var_2_218:  %var_2_218 = add i64 %var_2_212, -52
; %var_2_2291 = add i64 %var_2_2285, -52
%var_2_2292 = add i64 %var_2_2287, 8
store i64 %var_2_2292, i64* %var_2_3, align 8
; Matched:%var_2_220:  %var_2_220 = inttoptr i64 %var_2_218 to i32*
; %var_2_2293 = inttoptr i64 %var_2_2291 to i32*
; Matched:%var_2_221:  %var_2_221 = load i32, i32* %var_2_220, align 4
; %var_2_2294 = load i32, i32* %var_2_2293, align 4
; Matched:%var_2_222:  %var_2_222 = sext i32 %var_2_221 to i64
; %var_2_2295 = sext i32 %var_2_2294 to i64
; Matched:\<badref\>:  store i64 %var_2_222, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_2295, i64* %RDX.i2239, align 8
; Matched:%var_2_223:  %var_2_223 = shl nsw i64 %var_2_222, 3
; %var_2_2296 = shl nsw i64 %var_2_2295, 3
; Matched:%var_2_224:  %var_2_224 = add i64 %var_2_223, %var_2_217
; %var_2_2297 = add i64 %var_2_2296, %var_2_2290
; Matched:%var_2_1927:  %var_2_1927 = add i64 %var_2_1916, 13
; %var_2_2298 = add i64 %var_2_2287, 13
; Matched:\<badref\>:  store i64 %var_2_1927, i64* %PC, align 8
; store i64 %var_2_2298, i64* %var_2_3, align 8
; Matched:%var_2_226:  %var_2_226 = inttoptr i64 %var_2_224 to i64*
; %var_2_2299 = inttoptr i64 %var_2_2297 to i64*
; Matched:%var_2_227:  %var_2_227 = load i64, i64* %var_2_226, align 8
; %var_2_2300 = load i64, i64* %var_2_2299, align 8
; Matched:\<badref\>:  store i64 %var_2_227, i64* %var_2_1624, align 1, !tbaa !1285
; store i64 %var_2_2300, i64* %var_2_1054, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_1626, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_1056, align 1
; Matched:%var_2_228:  %var_2_228 = add i64 %var_2_212, -72
; %var_2_2301 = add i64 %var_2_2285, -72
; Matched:%var_2_3906:  %var_2_3906 = add i64 %var_2_3872, 18
; %var_2_2302 = add i64 %var_2_2287, 18
; Matched:\<badref\>:  store i64 %var_2_744, i64* %PC, align 8
; store i64 %var_2_2302, i64* %var_2_3, align 8
; Matched:%var_2_230:  %var_2_230 = inttoptr i64 %var_2_228 to i64*
; %var_2_2303 = inttoptr i64 %var_2_2301 to i64*
; Matched:\<badref\>:  store i64 %var_2_227, i64* %var_2_230, align 8
; store i64 %var_2_2300, i64* %var_2_2303, align 8
; Matched:%var_2_170:  %var_2_170 = load i64, i64* %RBP, align 8
; %var_2_2304 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_213:  %var_2_213 = add i64 %var_2_212, -24
; %var_2_2305 = add i64 %var_2_2304, -24
%var_2_2306 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_3840:  %var_2_3840 = add i64 %var_2_3839, 4
; %var_2_2307 = add i64 %var_2_2306, 4
; Matched:\<badref\>:  store i64 %var_2_3840, i64* %PC, align 8
; store i64 %var_2_2307, i64* %var_2_3, align 8
; Matched:%var_2_216:  %var_2_216 = inttoptr i64 %var_2_213 to i64*
; %var_2_2308 = inttoptr i64 %var_2_2305 to i64*
; Matched:%var_2_175:  %var_2_175 = load i64, i64* %var_2_174, align 8
; %var_2_2309 = load i64, i64* %var_2_2308, align 8
; Matched:\<badref\>:  store i64 %var_2_217, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_2309, i64* %RCX.i2236, align 8
; Matched:%var_2_237:  %var_2_237 = add i64 %var_2_231, -52
; %var_2_2310 = add i64 %var_2_2304, -52
; Matched:%var_2_3173:  %var_2_3173 = add i64 %var_2_3168, 7
; %var_2_2311 = add i64 %var_2_2306, 7
; Matched:\<badref\>:  store i64 %var_2_2947, i64* %PC, align 8
; store i64 %var_2_2311, i64* %var_2_3, align 8
; Matched:%var_2_239:  %var_2_239 = inttoptr i64 %var_2_237 to i32*
; %var_2_2312 = inttoptr i64 %var_2_2310 to i32*
; Matched:%var_2_240:  %var_2_240 = load i32, i32* %var_2_239, align 4
; %var_2_2313 = load i32, i32* %var_2_2312, align 4
; Matched:%var_2_241:  %var_2_241 = add i32 %var_2_240, 1
; %var_2_2314 = add i32 %var_2_2313, 1
; Matched:%var_2_242:  %var_2_242 = zext i32 %var_2_241 to i64
; %var_2_2315 = zext i32 %var_2_2314 to i64
; Matched:\<badref\>:  store i64 %var_2_242, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2315, i64* %RAX.i2224, align 8
; Matched:%var_2_243:  %var_2_243 = icmp eq i32 %var_2_240, -1
; %var_2_2316 = icmp eq i32 %var_2_2313, -1
; Matched:%var_2_244:  %var_2_244 = icmp eq i32 %var_2_241, 0
; %var_2_2317 = icmp eq i32 %var_2_2314, 0
; Matched:%var_2_245:  %var_2_245 = or i1 %var_2_243, %var_2_244
; %var_2_2318 = or i1 %var_2_2316, %var_2_2317
; Matched:%var_2_246:  %var_2_246 = zext i1 %var_2_245 to i8
; %var_2_2319 = zext i1 %var_2_2318 to i8
; Matched:\<badref\>:  store i8 %var_2_246, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_2319, i8* %var_2_14, align 1
; Matched:%var_2_247:  %var_2_247 = and i32 %var_2_241, 255
; %var_2_2320 = and i32 %var_2_2314, 255
; Matched:%var_2_248:  %var_2_248 = tail call i32 @llvm.ctpop.i32(i32 %var_2_247) #14
; %var_2_2321 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2320)
; Matched:%var_2_249:  %var_2_249 = trunc i32 %var_2_248 to i8
; %var_2_2322 = trunc i32 %var_2_2321 to i8
; Matched:%var_2_250:  %var_2_250 = and i8 %var_2_249, 1
; %var_2_2323 = and i8 %var_2_2322, 1
; Matched:%var_2_251:  %var_2_251 = xor i8 %var_2_250, 1
; %var_2_2324 = xor i8 %var_2_2323, 1
; Matched:\<badref\>:  store i8 %var_2_251, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_2324, i8* %var_2_21, align 1
; Matched:%var_2_252:  %var_2_252 = xor i32 %var_2_241, %var_2_240
; %var_2_2325 = xor i32 %var_2_2314, %var_2_2313
; Matched:%var_2_253:  %var_2_253 = lshr i32 %var_2_252, 4
; %var_2_2326 = lshr i32 %var_2_2325, 4
; Matched:%var_2_254:  %var_2_254 = trunc i32 %var_2_253 to i8
; %var_2_2327 = trunc i32 %var_2_2326 to i8
; Matched:%var_2_255:  %var_2_255 = and i8 %var_2_254, 1
; %var_2_2328 = and i8 %var_2_2327, 1
; Matched:\<badref\>:  store i8 %var_2_255, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_2328, i8* %var_2_27, align 1
; Matched:%var_2_256:  %var_2_256 = zext i1 %var_2_244 to i8
; %var_2_2329 = zext i1 %var_2_2317 to i8
; Matched:\<badref\>:  store i8 %var_2_256, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_2329, i8* %var_2_30, align 1
; Matched:%var_2_257:  %var_2_257 = lshr i32 %var_2_241, 31
; %var_2_2330 = lshr i32 %var_2_2314, 31
; Matched:%var_2_258:  %var_2_258 = trunc i32 %var_2_257 to i8
; %var_2_2331 = trunc i32 %var_2_2330 to i8
; Matched:\<badref\>:  store i8 %var_2_258, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_2331, i8* %var_2_33, align 1
; Matched:%var_2_259:  %var_2_259 = lshr i32 %var_2_240, 31
; %var_2_2332 = lshr i32 %var_2_2313, 31
; Matched:%var_2_260:  %var_2_260 = xor i32 %var_2_257, %var_2_259
; %var_2_2333 = xor i32 %var_2_2330, %var_2_2332
; Matched:%var_2_261:  %var_2_261 = add nuw nsw i32 %var_2_260, %var_2_257
; %var_2_2334 = add nuw nsw i32 %var_2_2333, %var_2_2330
; Matched:%var_2_262:  %var_2_262 = icmp eq i32 %var_2_261, 2
; %var_2_2335 = icmp eq i32 %var_2_2334, 2
; Matched:%var_2_263:  %var_2_263 = zext i1 %var_2_262 to i8
; %var_2_2336 = zext i1 %var_2_2335 to i8
; Matched:\<badref\>:  store i8 %var_2_263, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_2336, i8* %var_2_39, align 1
; Matched:%var_2_264:  %var_2_264 = sext i32 %var_2_241 to i64
; %var_2_2337 = sext i32 %var_2_2314 to i64
; Matched:\<badref\>:  store i64 %var_2_264, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_2337, i64* %RDX.i2239, align 8
; Matched:%var_2_265:  %var_2_265 = shl nsw i64 %var_2_264, 3
; %var_2_2338 = shl nsw i64 %var_2_2337, 3
; Matched:%var_2_266:  %var_2_266 = add i64 %var_2_236, %var_2_265
; %var_2_2339 = add i64 %var_2_2309, %var_2_2338
; Matched:%var_2_4019:  %var_2_4019 = add i64 %var_2_3985, 18
; %var_2_2340 = add i64 %var_2_2306, 18
; Matched:\<badref\>:  store i64 %var_2_4019, i64* %PC, align 8
; store i64 %var_2_2340, i64* %var_2_3, align 8
; Matched:%var_2_268:  %var_2_268 = inttoptr i64 %var_2_266 to i64*
; %var_2_2341 = inttoptr i64 %var_2_2339 to i64*
; Matched:%var_2_269:  %var_2_269 = load i64, i64* %var_2_268, align 8
; %var_2_2342 = load i64, i64* %var_2_2341, align 8
; Matched:\<badref\>:  store i64 %var_2_269, i64* %var_2_1624, align 1, !tbaa !1285
; store i64 %var_2_2342, i64* %var_2_1054, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_1626, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_1056, align 1
; Matched:%var_2_270:  %var_2_270 = add i64 %var_2_231, -80
; %var_2_2343 = add i64 %var_2_2304, -80
; Matched:%var_2_1437:  %var_2_1437 = add i64 %var_2_1400, 23
; %var_2_2344 = add i64 %var_2_2306, 23
; Matched:\<badref\>:  store i64 %var_2_1437, i64* %PC, align 8
; store i64 %var_2_2344, i64* %var_2_3, align 8
; Matched:%var_2_272:  %var_2_272 = inttoptr i64 %var_2_270 to i64*
; %var_2_2345 = inttoptr i64 %var_2_2343 to i64*
; Matched:\<badref\>:  store i64 %var_2_269, i64* %var_2_272, align 8
; store i64 %var_2_2342, i64* %var_2_2345, align 8
; Matched:%var_2_1439:  %var_2_1439 = load i64, i64* %RBP, align 8
; %var_2_2346 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1440:  %var_2_1440 = add i64 %var_2_1439, -72
; %var_2_2347 = add i64 %var_2_2346, -72
%var_2_2348 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2357:  %var_2_2357 = add i64 %var_2_2356, 5
; %var_2_2349 = add i64 %var_2_2348, 5
; Matched:\<badref\>:  store i64 %var_2_4518, i64* %PC, align 8
; store i64 %var_2_2349, i64* %var_2_3, align 8
; Matched:%var_2_1443:  %var_2_1443 = inttoptr i64 %var_2_1440 to i64*
; %var_2_2350 = inttoptr i64 %var_2_2347 to i64*
; Matched:%var_2_1444:  %var_2_1444 = load i64, i64* %var_2_1443, align 8
; %var_2_2351 = load i64, i64* %var_2_2350, align 8
; Matched:\<badref\>:  store i64 %var_2_1444, i64* %var_2_1624, align 1, !tbaa !1285
; store i64 %var_2_2351, i64* %var_2_1054, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_1626, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_1056, align 1
%var_2_2352 = load <2 x i32>, <2 x i32>* %var_2_2119, align 1
%var_2_2353 = load <2 x i32>, <2 x i32>* %var_2_2120, align 1
%var_2_2354 = extractelement <2 x i32> %var_2_2352, i32 0
; Matched:\<badref\>:  store i32 %var_2_1447, i32* %var_2_1350, align 1, !tbaa !1287
; store i32 %var_2_2354, i32* %var_2_2121, align 1
%var_2_2355 = extractelement <2 x i32> %var_2_2352, i32 1
; Matched:\<badref\>:  store i32 %var_2_282, i32* %var_2_1352, align 1, !tbaa !1287
; store i32 %var_2_2355, i32* %var_2_2123, align 1
%var_2_2356 = extractelement <2 x i32> %var_2_2353, i32 0
; Matched:\<badref\>:  store i32 %var_2_283, i32* %var_2_1354, align 1, !tbaa !1287
; store i32 %var_2_2356, i32* %var_2_2125, align 1
%var_2_2357 = extractelement <2 x i32> %var_2_2353, i32 1
; Matched:\<badref\>:  store i32 %var_2_284, i32* %var_2_1356, align 1, !tbaa !1287
; store i32 %var_2_2357, i32* %var_2_2127, align 1
; Matched:%var_2_285:  %var_2_285 = add i64 %var_2_273, -96
; %var_2_2358 = add i64 %var_2_2346, -96
; Matched:%var_2_2347:  %var_2_2347 = add i64 %var_2_2342, 13
; %var_2_2359 = add i64 %var_2_2348, 13
; Matched:\<badref\>:  store i64 %var_2_2260, i64* %PC, align 8
; store i64 %var_2_2359, i64* %var_2_3, align 8
; Matched:%var_2_287:  %var_2_287 = load double, double* %var_2_1357, align 1
; %var_2_2360 = load double, double* %var_2_2128, align 1
; Matched:%var_2_288:  %var_2_288 = inttoptr i64 %var_2_285 to double*
; %var_2_2361 = inttoptr i64 %var_2_2358 to double*
; Matched:%var_2_289:  %var_2_289 = load double, double* %var_2_288, align 8
; %var_2_2362 = load double, double* %var_2_2361, align 8
; Matched:%var_2_290:  %var_2_290 = fmul double %var_2_287, %var_2_289
; %var_2_2363 = fmul double %var_2_2360, %var_2_2362
; Matched:\<badref\>:  store double %var_2_290, double* %var_2_1357, align 1, !tbaa !1285
; store double %var_2_2363, double* %var_2_2128, align 1
; Matched:%var_2_291:  %var_2_291 = add i64 %var_2_273, -80
; %var_2_2364 = add i64 %var_2_2346, -80
; Matched:%var_2_292:  %var_2_292 = add i64 %var_2_275, 18
; %var_2_2365 = add i64 %var_2_2348, 18
; Matched:\<badref\>:  store i64 %var_2_3202, i64* %PC, align 8
; store i64 %var_2_2365, i64* %var_2_3, align 8
; Matched:%var_2_293:  %var_2_293 = inttoptr i64 %var_2_291 to double*
; %var_2_2366 = inttoptr i64 %var_2_2364 to double*
; Matched:%var_2_294:  %var_2_294 = load double, double* %var_2_293, align 8
; %var_2_2367 = load double, double* %var_2_2366, align 8
; Matched:%var_2_295:  %var_2_295 = fmul double %var_2_290, %var_2_294
; %var_2_2368 = fmul double %var_2_2363, %var_2_2367
; Matched:\<badref\>:  store double %var_2_295, double* %var_2_1357, align 1, !tbaa !1285
; store double %var_2_2368, double* %var_2_2128, align 1
; Matched:%var_2_296:  %var_2_296 = bitcast i64 %var_2_278 to double
; %var_2_2369 = bitcast i64 %var_2_2351 to double
; Matched:%var_2_297:  %var_2_297 = fsub double %var_2_296, %var_2_295
; %var_2_2370 = fsub double %var_2_2369, %var_2_2368
; Matched:\<badref\>:  store double %var_2_297, double* %var_2_1623, align 1, !tbaa !1285
; store double %var_2_2370, double* %var_2_1053, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_1625, align 1, !tbaa !1285
; store i64 0, i64* %var_2_1055, align 1
; Matched:%var_2_298:  %var_2_298 = add i64 %var_2_273, -104
; %var_2_2371 = add i64 %var_2_2346, -104
; Matched:%var_2_1215:  %var_2_1215 = add i64 %var_2_1194, 27
; %var_2_2372 = add i64 %var_2_2348, 27
; Matched:\<badref\>:  store i64 %var_2_1465, i64* %PC, align 8
; store i64 %var_2_2372, i64* %var_2_3, align 8
; Matched:%var_2_300:  %var_2_300 = inttoptr i64 %var_2_298 to double*
; %var_2_2373 = inttoptr i64 %var_2_2371 to double*
; Matched:\<badref\>:  store double %var_2_297, double* %var_2_300, align 8
; store double %var_2_2370, double* %var_2_2373, align 8
; Matched:%var_2_301:  %var_2_301 = load i64, i64* %RBP, align 8
; %var_2_2374 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_302:  %var_2_302 = add i64 %var_2_301, -96
; %var_2_2375 = add i64 %var_2_2374, -96
%var_2_2376 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2404:  %var_2_2404 = add i64 %var_2_2403, 5
; %var_2_2377 = add i64 %var_2_2376, 5
; Matched:\<badref\>:  store i64 %var_2_2404, i64* %PC, align 8
; store i64 %var_2_2377, i64* %var_2_3, align 8
; Matched:%var_2_305:  %var_2_305 = load double, double* %var_2_93, align 1
; %var_2_2378 = load double, double* %var_2_1037, align 1
; Matched:%var_2_306:  %var_2_306 = inttoptr i64 %var_2_302 to double*
; %var_2_2379 = inttoptr i64 %var_2_2375 to double*
; Matched:%var_2_307:  %var_2_307 = load double, double* %var_2_306, align 8
; %var_2_2380 = load double, double* %var_2_2379, align 8
; Matched:%var_2_308:  %var_2_308 = fmul double %var_2_305, %var_2_307
; %var_2_2381 = fmul double %var_2_2378, %var_2_2380
; Matched:\<badref\>:  store double %var_2_308, double* %var_2_93, align 1, !tbaa !1285
; store double %var_2_2381, double* %var_2_1037, align 1
; Matched:%var_2_309:  %var_2_309 = add i64 %var_2_301, -72
; %var_2_2382 = add i64 %var_2_2374, -72
; Matched:%var_2_2633:  %var_2_2633 = add i64 %var_2_2628, 10
; %var_2_2383 = add i64 %var_2_2376, 10
; Matched:\<badref\>:  store i64 %var_2_2544, i64* %PC, align 8
; store i64 %var_2_2383, i64* %var_2_3, align 8
; Matched:%var_2_311:  %var_2_311 = inttoptr i64 %var_2_309 to double*
; %var_2_2384 = inttoptr i64 %var_2_2382 to double*
; Matched:%var_2_312:  %var_2_312 = load double, double* %var_2_311, align 8
; %var_2_2385 = load double, double* %var_2_2384, align 8
; Matched:%var_2_313:  %var_2_313 = fmul double %var_2_308, %var_2_312
; %var_2_2386 = fmul double %var_2_2381, %var_2_2385
; Matched:\<badref\>:  store double %var_2_313, double* %var_2_93, align 1, !tbaa !1285
; store double %var_2_2386, double* %var_2_1037, align 1
; Matched:%var_2_314:  %var_2_314 = add i64 %var_2_301, -80
; %var_2_2387 = add i64 %var_2_2374, -80
; Matched:%var_2_2514:  %var_2_2514 = add i64 %var_2_2503, 15
; %var_2_2388 = add i64 %var_2_2376, 15
; Matched:\<badref\>:  store i64 %var_2_1481, i64* %PC, align 8
; store i64 %var_2_2388, i64* %var_2_3, align 8
; Matched:%var_2_316:  %var_2_316 = inttoptr i64 %var_2_314 to double*
; %var_2_2389 = inttoptr i64 %var_2_2387 to double*
; Matched:%var_2_317:  %var_2_317 = load double, double* %var_2_316, align 8
; %var_2_2390 = load double, double* %var_2_2389, align 8
; Matched:%var_2_318:  %var_2_318 = fsub double %var_2_313, %var_2_317
; %var_2_2391 = fsub double %var_2_2386, %var_2_2390
; Matched:\<badref\>:  store double %var_2_318, double* %var_2_93, align 1, !tbaa !1285
; store double %var_2_2391, double* %var_2_1037, align 1
; Matched:%var_2_319:  %var_2_319 = add i64 %var_2_301, -112
; %var_2_2392 = add i64 %var_2_2374, -112
; Matched:%var_2_4568:  %var_2_4568 = add i64 %var_2_4553, 20
; %var_2_2393 = add i64 %var_2_2376, 20
; Matched:\<badref\>:  store i64 %var_2_4568, i64* %PC, align 8
; store i64 %var_2_2393, i64* %var_2_3, align 8
; Matched:%var_2_321:  %var_2_321 = inttoptr i64 %var_2_319 to double*
; %var_2_2394 = inttoptr i64 %var_2_2392 to double*
; Matched:\<badref\>:  store double %var_2_318, double* %var_2_321, align 8
; store double %var_2_2391, double* %var_2_2394, align 8
%var_2_2395 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_323:  %var_2_323 = add i64 %var_2_322, -44
; %var_2_2396 = add i64 %var_2_2395, -44
%var_2_2397 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_50:  %var_2_50 = add i64 %var_2_49, 3
; %var_2_2398 = add i64 %var_2_2397, 3
; Matched:\<badref\>:  store i64 %var_2_50, i64* %PC, align 8
; store i64 %var_2_2398, i64* %var_2_3, align 8
; Matched:%var_2_326:  %var_2_326 = inttoptr i64 %var_2_323 to i32*
; %var_2_2399 = inttoptr i64 %var_2_2396 to i32*
; Matched:%var_2_327:  %var_2_327 = load i32, i32* %var_2_326, align 4
; %var_2_2400 = load i32, i32* %var_2_2399, align 4
; Matched:%var_2_328:  %var_2_328 = zext i32 %var_2_327 to i64
; %var_2_2401 = zext i32 %var_2_2400 to i64
; Matched:\<badref\>:  store i64 %var_2_328, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2401, i64* %RAX.i2224, align 8
; Matched:%var_2_329:  %var_2_329 = add i64 %var_2_322, -28
; %var_2_2402 = add i64 %var_2_2395, -28
; Matched:%var_2_2874:  %var_2_2874 = add i64 %var_2_2868, 6
; %var_2_2403 = add i64 %var_2_2397, 6
; Matched:\<badref\>:  store i64 %var_2_2874, i64* %PC, align 8
; store i64 %var_2_2403, i64* %var_2_3, align 8
; Matched:%var_2_331:  %var_2_331 = inttoptr i64 %var_2_329 to i32*
; %var_2_2404 = inttoptr i64 %var_2_2402 to i32*
; Matched:\<badref\>:  store i32 %var_2_327, i32* %var_2_331, align 4
; store i32 %var_2_2400, i32* %var_2_2404, align 4
%.pre25 = load i64, i64* %var_2_3, align 8
  br label %block_.L_403940

block_.L_403940:                                  ; preds = %block_403951, %block_40389f
%var_2_2405 = phi i64 [ %var_2_3495, %block_403951 ], [ %.pre25, %block_40389f ]
%var_2_2406 = load i64, i64* %RBP.i, align 8
%var_2_2407 = add i64 %var_2_2406, -28
; Matched:%var_2_4814:  %var_2_4814 = add i64 %var_2_4811, 3
; %var_2_2408 = add i64 %var_2_2405, 3
; Matched:\<badref\>:  store i64 %var_2_4814, i64* %PC, align 8
; store i64 %var_2_2408, i64* %var_2_3, align 8
%var_2_2409 = inttoptr i64 %var_2_2407 to i32*
%var_2_2410 = load i32, i32* %var_2_2409, align 4
; Matched:%var_2_334:  %var_2_334 = zext i32 %var_2_333 to i64
; %var_2_2411 = zext i32 %var_2_2410 to i64
; Matched:\<badref\>:  store i64 %var_2_1633, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2411, i64* %RAX.i2224, align 8
%var_2_2412 = add i64 %var_2_2406, -8
; Matched:%var_2_4819:  %var_2_4819 = add i64 %var_2_4811, 6
; %var_2_2413 = add i64 %var_2_2405, 6
; Matched:\<badref\>:  store i64 %var_2_4819, i64* %PC, align 8
; store i64 %var_2_2413, i64* %var_2_3, align 8
%var_2_2414 = inttoptr i64 %var_2_2412 to i32*
%var_2_2415 = load i32, i32* %var_2_2414, align 4
; Matched:%var_2_4777:  %var_2_4777 = zext i32 %var_2_4776 to i64
; %var_2_2416 = zext i32 %var_2_2415 to i64
; Matched:\<badref\>:  store i64 %var_2_4777, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_2416, i64* %RCX.i2236, align 8
%var_2_2417 = add i64 %var_2_2406, -44
; Matched:%var_2_4824:  %var_2_4824 = add i64 %var_2_4811, 9
; %var_2_2418 = add i64 %var_2_2405, 9
; Matched:\<badref\>:  store i64 %var_2_4824, i64* %PC, align 8
; store i64 %var_2_2418, i64* %var_2_3, align 8
%var_2_2419 = inttoptr i64 %var_2_2417 to i32*
%var_2_2420 = load i32, i32* %var_2_2419, align 4
%var_2_2421 = add i32 %var_2_2420, %var_2_2415
; Matched:%var_2_4828:  %var_2_4828 = zext i32 %var_2_4827 to i64
; %var_2_2422 = zext i32 %var_2_2421 to i64
; Matched:\<badref\>:  store i64 %var_2_4828, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_2422, i64* %RCX.i2236, align 8
%var_2_2423 = lshr i32 %var_2_2421, 31
%var_2_2424 = sub i32 %var_2_2410, %var_2_2421
; Matched:%var_2_4831:  %var_2_4831 = icmp ult i32 %var_2_4816, %var_2_4827
; %var_2_2425 = icmp ult i32 %var_2_2410, %var_2_2421
; Matched:%var_2_4832:  %var_2_4832 = zext i1 %var_2_4831 to i8
; %var_2_2426 = zext i1 %var_2_2425 to i8
; Matched:\<badref\>:  store i8 %var_2_4832, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_2426, i8* %var_2_14, align 1
; Matched:%var_2_4833:  %var_2_4833 = and i32 %var_2_4830, 255
; %var_2_2427 = and i32 %var_2_2424, 255
; Matched:%var_2_4834:  %var_2_4834 = tail call i32 @llvm.ctpop.i32(i32 %var_2_4833) #14
; %var_2_2428 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2427)
; Matched:%var_2_4835:  %var_2_4835 = trunc i32 %var_2_4834 to i8
; %var_2_2429 = trunc i32 %var_2_2428 to i8
; Matched:%var_2_4836:  %var_2_4836 = and i8 %var_2_4835, 1
; %var_2_2430 = and i8 %var_2_2429, 1
; Matched:%var_2_4837:  %var_2_4837 = xor i8 %var_2_4836, 1
; %var_2_2431 = xor i8 %var_2_2430, 1
; Matched:\<badref\>:  store i8 %var_2_4837, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_2431, i8* %var_2_21, align 1
; Matched:%var_2_4838:  %var_2_4838 = xor i32 %var_2_4827, %var_2_4816
; %var_2_2432 = xor i32 %var_2_2421, %var_2_2410
; Matched:%var_2_4839:  %var_2_4839 = xor i32 %var_2_4838, %var_2_4830
; %var_2_2433 = xor i32 %var_2_2432, %var_2_2424
; Matched:%var_2_4840:  %var_2_4840 = lshr i32 %var_2_4839, 4
; %var_2_2434 = lshr i32 %var_2_2433, 4
; Matched:%var_2_4841:  %var_2_4841 = trunc i32 %var_2_4840 to i8
; %var_2_2435 = trunc i32 %var_2_2434 to i8
; Matched:%var_2_4842:  %var_2_4842 = and i8 %var_2_4841, 1
; %var_2_2436 = and i8 %var_2_2435, 1
; Matched:\<badref\>:  store i8 %var_2_4842, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_2436, i8* %var_2_27, align 1
; Matched:%var_2_4843:  %var_2_4843 = icmp eq i32 %var_2_4830, 0
; %var_2_2437 = icmp eq i32 %var_2_2424, 0
; Matched:%var_2_4844:  %var_2_4844 = zext i1 %var_2_4843 to i8
; %var_2_2438 = zext i1 %var_2_2437 to i8
; Matched:\<badref\>:  store i8 %var_2_4844, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_2438, i8* %var_2_30, align 1
%var_2_2439 = lshr i32 %var_2_2424, 31
%var_2_2440 = trunc i32 %var_2_2439 to i8
; Matched:\<badref\>:  store i8 %var_2_4846, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_2440, i8* %var_2_33, align 1
%var_2_2441 = lshr i32 %var_2_2410, 31
%var_2_2442 = xor i32 %var_2_2423, %var_2_2441
%var_2_2443 = xor i32 %var_2_2439, %var_2_2441
%var_2_2444 = add nuw nsw i32 %var_2_2443, %var_2_2442
%var_2_2445 = icmp eq i32 %var_2_2444, 2
; Matched:%var_2_4852:  %var_2_4852 = zext i1 %var_2_4851 to i8
; %var_2_2446 = zext i1 %var_2_2445 to i8
; Matched:\<badref\>:  store i8 %var_2_4852, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_2446, i8* %var_2_39, align 1
%var_2_2447 = icmp ne i8 %var_2_2440, 0
%var_2_2448 = xor i1 %var_2_2447, %var_2_2445
%.v29 = select i1 %var_2_2448, i64 17, i64 786
%var_2_2449 = add i64 %var_2_2405, %.v29
; Matched:\<badref\>:  store i64 %var_2_4855, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2449, i64* %var_2_3, align 8
br i1 %var_2_2448, label %block_403951, label %block_.L_403c52

block_403951:                                     ; preds = %block_.L_403940
; Matched:%var_2_3720:  %var_2_3720 = add i64 %var_2_4855, 3
; %var_2_2450 = add i64 %var_2_2449, 3
; Matched:\<badref\>:  store i64 %var_2_3720, i64* %PC, align 8
; store i64 %var_2_2450, i64* %var_2_3, align 8
%var_2_2451 = load i32, i32* %var_2_2409, align 4
; Matched:%var_2_1633:  %var_2_1633 = zext i32 %var_2_1632 to i64
; %var_2_2452 = zext i32 %var_2_2451 to i64
; Matched:\<badref\>:  store i64 %var_2_2758, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2452, i64* %RAX.i2224, align 8
; Matched:%var_2_3723:  %var_2_3723 = add i64 %var_2_4855, 6
; %var_2_2453 = add i64 %var_2_2449, 6
; Matched:\<badref\>:  store i64 %var_2_3723, i64* %PC, align 8
; store i64 %var_2_2453, i64* %var_2_3, align 8
%var_2_2454 = load i32, i32* %var_2_2414, align 4
%var_2_2455 = add i32 %var_2_2454, %var_2_2451
; Matched:%var_2_338:  %var_2_338 = zext i32 %var_2_337 to i64
; %var_2_2456 = zext i32 %var_2_2455 to i64
; Matched:\<badref\>:  store i64 %var_2_3726, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2456, i64* %RAX.i2224, align 8
; Matched:%var_2_339:  %var_2_339 = icmp ult i32 %var_2_337, %var_2_333
; %var_2_2457 = icmp ult i32 %var_2_2455, %var_2_2451
; Matched:%var_2_2798:  %var_2_2798 = icmp ult i32 %var_2_2795, %var_2_2794
; %var_2_2458 = icmp ult i32 %var_2_2455, %var_2_2454
; Matched:%var_2_2799:  %var_2_2799 = or i1 %var_2_2797, %var_2_2798
; %var_2_2459 = or i1 %var_2_2457, %var_2_2458
; Matched:%var_2_2800:  %var_2_2800 = zext i1 %var_2_2799 to i8
; %var_2_2460 = zext i1 %var_2_2459 to i8
; Matched:\<badref\>:  store i8 %var_2_1694, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_2460, i8* %var_2_14, align 1
; Matched:%var_2_1695:  %var_2_1695 = and i32 %var_2_1689, 255
; %var_2_2461 = and i32 %var_2_2455, 255
; Matched:%var_2_344:  %var_2_344 = tail call i32 @llvm.ctpop.i32(i32 %var_2_343) #14
; %var_2_2462 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2461)
; Matched:%var_2_345:  %var_2_345 = trunc i32 %var_2_344 to i8
; %var_2_2463 = trunc i32 %var_2_2462 to i8
; Matched:%var_2_346:  %var_2_346 = and i8 %var_2_345, 1
; %var_2_2464 = and i8 %var_2_2463, 1
; Matched:%var_2_2805:  %var_2_2805 = xor i8 %var_2_2804, 1
; %var_2_2465 = xor i8 %var_2_2464, 1
; Matched:\<badref\>:  store i8 %var_2_2805, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_2465, i8* %var_2_21, align 1
; Matched:%var_2_2806:  %var_2_2806 = xor i32 %var_2_2794, %var_2_2791
; %var_2_2466 = xor i32 %var_2_2454, %var_2_2451
; Matched:%var_2_1701:  %var_2_1701 = xor i32 %var_2_1700, %var_2_1689
; %var_2_2467 = xor i32 %var_2_2466, %var_2_2455
; Matched:%var_2_1702:  %var_2_1702 = lshr i32 %var_2_1701, 4
; %var_2_2468 = lshr i32 %var_2_2467, 4
; Matched:%var_2_2809:  %var_2_2809 = trunc i32 %var_2_2808 to i8
; %var_2_2469 = trunc i32 %var_2_2468 to i8
; Matched:%var_2_2810:  %var_2_2810 = and i8 %var_2_2809, 1
; %var_2_2470 = and i8 %var_2_2469, 1
; Matched:\<badref\>:  store i8 %var_2_2810, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_2470, i8* %var_2_27, align 1
; Matched:%var_2_2811:  %var_2_2811 = icmp eq i32 %var_2_2795, 0
; %var_2_2471 = icmp eq i32 %var_2_2455, 0
; Matched:%var_2_2812:  %var_2_2812 = zext i1 %var_2_2811 to i8
; %var_2_2472 = zext i1 %var_2_2471 to i8
; Matched:\<badref\>:  store i8 %var_2_2812, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_2472, i8* %var_2_30, align 1
; Matched:%var_2_1707:  %var_2_1707 = lshr i32 %var_2_1689, 31
; %var_2_2473 = lshr i32 %var_2_2455, 31
; Matched:%var_2_2814:  %var_2_2814 = trunc i32 %var_2_2813 to i8
; %var_2_2474 = trunc i32 %var_2_2473 to i8
; Matched:\<badref\>:  store i8 %var_2_2814, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_2474, i8* %var_2_33, align 1
; Matched:%var_2_2815:  %var_2_2815 = lshr i32 %var_2_2791, 31
; %var_2_2475 = lshr i32 %var_2_2451, 31
; Matched:%var_2_2816:  %var_2_2816 = lshr i32 %var_2_2794, 31
; %var_2_2476 = lshr i32 %var_2_2454, 31
; Matched:%var_2_2817:  %var_2_2817 = xor i32 %var_2_2813, %var_2_2815
; %var_2_2477 = xor i32 %var_2_2473, %var_2_2475
; Matched:%var_2_360:  %var_2_360 = xor i32 %var_2_355, %var_2_358
; %var_2_2478 = xor i32 %var_2_2473, %var_2_2476
; Matched:%var_2_2819:  %var_2_2819 = add nuw nsw i32 %var_2_2817, %var_2_2818
; %var_2_2479 = add nuw nsw i32 %var_2_2477, %var_2_2478
; Matched:%var_2_2820:  %var_2_2820 = icmp eq i32 %var_2_2819, 2
; %var_2_2480 = icmp eq i32 %var_2_2479, 2
; Matched:%var_2_1715:  %var_2_1715 = zext i1 %var_2_1714 to i8
; %var_2_2481 = zext i1 %var_2_2480 to i8
; Matched:\<badref\>:  store i8 %var_2_2821, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_2481, i8* %var_2_39, align 1
; Matched:%var_2_364:  %var_2_364 = add i64 %var_2_4767, -32
; %var_2_2482 = add i64 %var_2_2406, -32
; Matched:%var_2_3753:  %var_2_3753 = add i64 %var_2_4855, 9
; %var_2_2483 = add i64 %var_2_2449, 9
; Matched:\<badref\>:  store i64 %var_2_3753, i64* %PC, align 8
; store i64 %var_2_2483, i64* %var_2_3, align 8
; Matched:%var_2_2824:  %var_2_2824 = inttoptr i64 %var_2_2822 to i32*
; %var_2_2484 = inttoptr i64 %var_2_2482 to i32*
; Matched:\<badref\>:  store i32 %var_2_2795, i32* %var_2_2824, align 4
; store i32 %var_2_2455, i32* %var_2_2484, align 4
%var_2_2485 = load i64, i64* %RBP.i, align 8
%var_2_2486 = add i64 %var_2_2485, -32
%var_2_2487 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1722:  %var_2_1722 = add i64 %var_2_1721, 3
; %var_2_2488 = add i64 %var_2_2487, 3
; Matched:\<badref\>:  store i64 %var_2_1722, i64* %PC, align 8
; store i64 %var_2_2488, i64* %var_2_3, align 8
%var_2_2489 = inttoptr i64 %var_2_2486 to i32*
%var_2_2490 = load i32, i32* %var_2_2489, align 4
; Matched:%var_2_2831:  %var_2_2831 = zext i32 %var_2_2830 to i64
; %var_2_2491 = zext i32 %var_2_2490 to i64
; Matched:\<badref\>:  store i64 %var_2_2831, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2491, i64* %RAX.i2224, align 8
%var_2_2492 = add i64 %var_2_2485, -8
; Matched:%var_2_1496:  %var_2_1496 = add i64 %var_2_1490, 6
; %var_2_2493 = add i64 %var_2_2487, 6
; Matched:\<badref\>:  store i64 %var_2_1727, i64* %PC, align 8
; store i64 %var_2_2493, i64* %var_2_3, align 8
%var_2_2494 = inttoptr i64 %var_2_2492 to i32*
%var_2_2495 = load i32, i32* %var_2_2494, align 4
%var_2_2496 = add i32 %var_2_2495, %var_2_2490
; Matched:%var_2_2837:  %var_2_2837 = zext i32 %var_2_2836 to i64
; %var_2_2497 = zext i32 %var_2_2496 to i64
; Matched:\<badref\>:  store i64 %var_2_2837, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2497, i64* %RAX.i2224, align 8
; Matched:%var_2_2838:  %var_2_2838 = icmp ult i32 %var_2_2836, %var_2_2830
; %var_2_2498 = icmp ult i32 %var_2_2496, %var_2_2490
; Matched:%var_2_381:  %var_2_381 = icmp ult i32 %var_2_378, %var_2_377
; %var_2_2499 = icmp ult i32 %var_2_2496, %var_2_2495
; Matched:%var_2_2840:  %var_2_2840 = or i1 %var_2_2838, %var_2_2839
; %var_2_2500 = or i1 %var_2_2498, %var_2_2499
; Matched:%var_2_383:  %var_2_383 = zext i1 %var_2_382 to i8
; %var_2_2501 = zext i1 %var_2_2500 to i8
; Matched:\<badref\>:  store i8 %var_2_2841, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_2501, i8* %var_2_14, align 1
; Matched:%var_2_2842:  %var_2_2842 = and i32 %var_2_2836, 255
; %var_2_2502 = and i32 %var_2_2496, 255
; Matched:%var_2_2843:  %var_2_2843 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2842) #14
; %var_2_2503 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2502)
; Matched:%var_2_1738:  %var_2_1738 = trunc i32 %var_2_1737 to i8
; %var_2_2504 = trunc i32 %var_2_2503 to i8
; Matched:%var_2_1739:  %var_2_1739 = and i8 %var_2_1738, 1
; %var_2_2505 = and i8 %var_2_2504, 1
; Matched:%var_2_2846:  %var_2_2846 = xor i8 %var_2_2845, 1
; %var_2_2506 = xor i8 %var_2_2505, 1
; Matched:\<badref\>:  store i8 %var_2_2846, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_2506, i8* %var_2_21, align 1
; Matched:%var_2_389:  %var_2_389 = xor i32 %var_2_377, %var_2_372
; %var_2_2507 = xor i32 %var_2_2495, %var_2_2490
; Matched:%var_2_2848:  %var_2_2848 = xor i32 %var_2_2847, %var_2_2836
; %var_2_2508 = xor i32 %var_2_2507, %var_2_2496
; Matched:%var_2_391:  %var_2_391 = lshr i32 %var_2_390, 4
; %var_2_2509 = lshr i32 %var_2_2508, 4
; Matched:%var_2_2850:  %var_2_2850 = trunc i32 %var_2_2849 to i8
; %var_2_2510 = trunc i32 %var_2_2509 to i8
; Matched:%var_2_1745:  %var_2_1745 = and i8 %var_2_1744, 1
; %var_2_2511 = and i8 %var_2_2510, 1
; Matched:\<badref\>:  store i8 %var_2_1745, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_2511, i8* %var_2_27, align 1
; Matched:%var_2_394:  %var_2_394 = icmp eq i32 %var_2_378, 0
; %var_2_2512 = icmp eq i32 %var_2_2496, 0
; Matched:%var_2_2853:  %var_2_2853 = zext i1 %var_2_2852 to i8
; %var_2_2513 = zext i1 %var_2_2512 to i8
; Matched:\<badref\>:  store i8 %var_2_2853, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_2513, i8* %var_2_30, align 1
; Matched:%var_2_2854:  %var_2_2854 = lshr i32 %var_2_2836, 31
; %var_2_2514 = lshr i32 %var_2_2496, 31
; Matched:%var_2_397:  %var_2_397 = trunc i32 %var_2_396 to i8
; %var_2_2515 = trunc i32 %var_2_2514 to i8
; Matched:\<badref\>:  store i8 %var_2_2855, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_2515, i8* %var_2_33, align 1
; Matched:%var_2_1750:  %var_2_1750 = lshr i32 %var_2_1724, 31
; %var_2_2516 = lshr i32 %var_2_2490, 31
; Matched:%var_2_2857:  %var_2_2857 = lshr i32 %var_2_2835, 31
; %var_2_2517 = lshr i32 %var_2_2495, 31
; Matched:%var_2_400:  %var_2_400 = xor i32 %var_2_396, %var_2_398
; %var_2_2518 = xor i32 %var_2_2514, %var_2_2516
; Matched:%var_2_2859:  %var_2_2859 = xor i32 %var_2_2854, %var_2_2857
; %var_2_2519 = xor i32 %var_2_2514, %var_2_2517
; Matched:%var_2_2860:  %var_2_2860 = add nuw nsw i32 %var_2_2858, %var_2_2859
; %var_2_2520 = add nuw nsw i32 %var_2_2518, %var_2_2519
; Matched:%var_2_2861:  %var_2_2861 = icmp eq i32 %var_2_2860, 2
; %var_2_2521 = icmp eq i32 %var_2_2520, 2
; Matched:%var_2_404:  %var_2_404 = zext i1 %var_2_403 to i8
; %var_2_2522 = zext i1 %var_2_2521 to i8
; Matched:\<badref\>:  store i8 %var_2_2862, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_2522, i8* %var_2_39, align 1
; Matched:%var_2_1757:  %var_2_1757 = add i64 %var_2_1719, -36
; %var_2_2523 = add i64 %var_2_2485, -36
%var_2_2524 = add i64 %var_2_2487, 9
store i64 %var_2_2524, i64* %var_2_3, align 8
; Matched:%var_2_407:  %var_2_407 = inttoptr i64 %var_2_405 to i32*
; %var_2_2525 = inttoptr i64 %var_2_2523 to i32*
; Matched:\<badref\>:  store i32 %var_2_378, i32* %var_2_407, align 4
; store i32 %var_2_2496, i32* %var_2_2525, align 4
%var_2_2526 = load i64, i64* %RBP.i, align 8
%var_2_2527 = add i64 %var_2_2526, -36
%var_2_2528 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2828:  %var_2_2828 = add i64 %var_2_2827, 3
; %var_2_2529 = add i64 %var_2_2528, 3
; Matched:\<badref\>:  store i64 %var_2_2828, i64* %PC, align 8
; store i64 %var_2_2529, i64* %var_2_3, align 8
%var_2_2530 = inttoptr i64 %var_2_2527 to i32*
%var_2_2531 = load i32, i32* %var_2_2530, align 4
; Matched:%var_2_3802:  %var_2_3802 = zext i32 %var_2_3801 to i64
; %var_2_2532 = zext i32 %var_2_2531 to i64
; Matched:\<badref\>:  store i64 %var_2_3802, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2532, i64* %RAX.i2224, align 8
%var_2_2533 = add i64 %var_2_2526, -8
; Matched:%var_2_1768:  %var_2_1768 = add i64 %var_2_1762, 6
; %var_2_2534 = add i64 %var_2_2528, 6
; Matched:\<badref\>:  store i64 %var_2_1768, i64* %PC, align 8
; store i64 %var_2_2534, i64* %var_2_3, align 8
%var_2_2535 = inttoptr i64 %var_2_2533 to i32*
%var_2_2536 = load i32, i32* %var_2_2535, align 4
%var_2_2537 = add i32 %var_2_2536, %var_2_2531
; Matched:%var_2_3808:  %var_2_3808 = zext i32 %var_2_3807 to i64
; %var_2_2538 = zext i32 %var_2_2537 to i64
; Matched:\<badref\>:  store i64 %var_2_3808, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2538, i64* %RAX.i2224, align 8
; Matched:%var_2_2879:  %var_2_2879 = icmp ult i32 %var_2_2877, %var_2_2871
; %var_2_2539 = icmp ult i32 %var_2_2537, %var_2_2531
; Matched:%var_2_1774:  %var_2_1774 = icmp ult i32 %var_2_1771, %var_2_1770
; %var_2_2540 = icmp ult i32 %var_2_2537, %var_2_2536
; Matched:%var_2_423:  %var_2_423 = or i1 %var_2_421, %var_2_422
; %var_2_2541 = or i1 %var_2_2539, %var_2_2540
; Matched:%var_2_1776:  %var_2_1776 = zext i1 %var_2_1775 to i8
; %var_2_2542 = zext i1 %var_2_2541 to i8
; Matched:\<badref\>:  store i8 %var_2_424, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_2542, i8* %var_2_14, align 1
; Matched:%var_2_425:  %var_2_425 = and i32 %var_2_419, 255
; %var_2_2543 = and i32 %var_2_2537, 255
; Matched:%var_2_426:  %var_2_426 = tail call i32 @llvm.ctpop.i32(i32 %var_2_425) #14
; %var_2_2544 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2543)
; Matched:%var_2_2885:  %var_2_2885 = trunc i32 %var_2_2884 to i8
; %var_2_2545 = trunc i32 %var_2_2544 to i8
; Matched:%var_2_428:  %var_2_428 = and i8 %var_2_427, 1
; %var_2_2546 = and i8 %var_2_2545, 1
; Matched:%var_2_1781:  %var_2_1781 = xor i8 %var_2_1780, 1
; %var_2_2547 = xor i8 %var_2_2546, 1
; Matched:\<badref\>:  store i8 %var_2_1781, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_2547, i8* %var_2_21, align 1
; Matched:%var_2_1782:  %var_2_1782 = xor i32 %var_2_1770, %var_2_1765
; %var_2_2548 = xor i32 %var_2_2536, %var_2_2531
; Matched:%var_2_431:  %var_2_431 = xor i32 %var_2_430, %var_2_419
; %var_2_2549 = xor i32 %var_2_2548, %var_2_2537
; Matched:%var_2_432:  %var_2_432 = lshr i32 %var_2_431, 4
; %var_2_2550 = lshr i32 %var_2_2549, 4
; Matched:%var_2_433:  %var_2_433 = trunc i32 %var_2_432 to i8
; %var_2_2551 = trunc i32 %var_2_2550 to i8
; Matched:%var_2_434:  %var_2_434 = and i8 %var_2_433, 1
; %var_2_2552 = and i8 %var_2_2551, 1
; Matched:\<badref\>:  store i8 %var_2_2892, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_2552, i8* %var_2_27, align 1
; Matched:%var_2_435:  %var_2_435 = icmp eq i32 %var_2_419, 0
; %var_2_2553 = icmp eq i32 %var_2_2537, 0
; Matched:%var_2_436:  %var_2_436 = zext i1 %var_2_435 to i8
; %var_2_2554 = zext i1 %var_2_2553 to i8
; Matched:\<badref\>:  store i8 %var_2_1788, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_2554, i8* %var_2_30, align 1
; Matched:%var_2_437:  %var_2_437 = lshr i32 %var_2_419, 31
; %var_2_2555 = lshr i32 %var_2_2537, 31
; Matched:%var_2_438:  %var_2_438 = trunc i32 %var_2_437 to i8
; %var_2_2556 = trunc i32 %var_2_2555 to i8
; Matched:\<badref\>:  store i8 %var_2_1790, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_2556, i8* %var_2_33, align 1
; Matched:%var_2_439:  %var_2_439 = lshr i32 %var_2_413, 31
; %var_2_2557 = lshr i32 %var_2_2531, 31
; Matched:%var_2_2898:  %var_2_2898 = lshr i32 %var_2_2876, 31
; %var_2_2558 = lshr i32 %var_2_2536, 31
; Matched:%var_2_441:  %var_2_441 = xor i32 %var_2_437, %var_2_439
; %var_2_2559 = xor i32 %var_2_2555, %var_2_2557
; Matched:%var_2_1794:  %var_2_1794 = xor i32 %var_2_1789, %var_2_1792
; %var_2_2560 = xor i32 %var_2_2555, %var_2_2558
; Matched:%var_2_1795:  %var_2_1795 = add nuw nsw i32 %var_2_1793, %var_2_1794
; %var_2_2561 = add nuw nsw i32 %var_2_2559, %var_2_2560
; Matched:%var_2_444:  %var_2_444 = icmp eq i32 %var_2_443, 2
; %var_2_2562 = icmp eq i32 %var_2_2561, 2
; Matched:%var_2_445:  %var_2_445 = zext i1 %var_2_444 to i8
; %var_2_2563 = zext i1 %var_2_2562 to i8
; Matched:\<badref\>:  store i8 %var_2_1797, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_2563, i8* %var_2_39, align 1
; Matched:%var_2_446:  %var_2_446 = add i64 %var_2_408, -40
; %var_2_2564 = add i64 %var_2_2526, -40
%var_2_2565 = add i64 %var_2_2528, 9
store i64 %var_2_2565, i64* %var_2_3, align 8
; Matched:%var_2_1800:  %var_2_1800 = inttoptr i64 %var_2_1798 to i32*
; %var_2_2566 = inttoptr i64 %var_2_2564 to i32*
; Matched:\<badref\>:  store i32 %var_2_1771, i32* %var_2_1800, align 4
; store i32 %var_2_2537, i32* %var_2_2566, align 4
%var_2_2567 = load i64, i64* %RBP.i, align 8
%var_2_2568 = add i64 %var_2_2567, -16
%var_2_2569 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2910:  %var_2_2910 = add i64 %var_2_2909, 4
; %var_2_2570 = add i64 %var_2_2569, 4
; Matched:\<badref\>:  store i64 %var_2_2910, i64* %PC, align 8
; store i64 %var_2_2570, i64* %var_2_3, align 8
%var_2_2571 = inttoptr i64 %var_2_2568 to i64*
%var_2_2572 = load i64, i64* %var_2_2571, align 8
; Matched:\<badref\>:  store i64 %var_2_567, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_2572, i64* %RCX.i2236, align 8
%var_2_2573 = add i64 %var_2_2567, -28
%var_2_2574 = add i64 %var_2_2569, 8
store i64 %var_2_2574, i64* %var_2_3, align 8
%var_2_2575 = inttoptr i64 %var_2_2573 to i32*
%var_2_2576 = load i32, i32* %var_2_2575, align 4
%var_2_2577 = sext i32 %var_2_2576 to i64
; Matched:\<badref\>:  store i64 %var_2_3847, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_2577, i64* %RDX.i2239, align 8
%var_2_2578 = shl nsw i64 %var_2_2577, 3
%var_2_2579 = add i64 %var_2_2578, %var_2_2572
; Matched:%var_2_4189:  %var_2_4189 = add i64 %var_2_4178, 13
; %var_2_2580 = add i64 %var_2_2569, 13
; Matched:\<badref\>:  store i64 %var_2_4369, i64* %PC, align 8
; store i64 %var_2_2580, i64* %var_2_3, align 8
%var_2_2581 = inttoptr i64 %var_2_2579 to i64*
%var_2_2582 = load i64, i64* %var_2_2581, align 8
store i64 %var_2_2582, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
; Matched:%var_2_3262:  %var_2_3262 = add i64 %var_2_3248, 17
; %var_2_2583 = add i64 %var_2_2569, 17
; Matched:\<badref\>:  store i64 %var_2_1012, i64* %PC, align 8
; store i64 %var_2_2583, i64* %var_2_3, align 8
%var_2_2584 = load i64, i64* %var_2_2571, align 8
; Matched:\<badref\>:  store i64 %var_2_4023, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_2584, i64* %RCX.i2236, align 8
%var_2_2585 = add i64 %var_2_2567, -32
; Matched:%var_2_4195:  %var_2_4195 = add i64 %var_2_4178, 21
; %var_2_2586 = add i64 %var_2_2569, 21
; Matched:\<badref\>:  store i64 %var_2_4195, i64* %PC, align 8
; store i64 %var_2_2586, i64* %var_2_3, align 8
%var_2_2587 = inttoptr i64 %var_2_2585 to i32*
%var_2_2588 = load i32, i32* %var_2_2587, align 4
%var_2_2589 = sext i32 %var_2_2588 to i64
; Matched:\<badref\>:  store i64 %var_2_3972, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_2589, i64* %RDX.i2239, align 8
%var_2_2590 = shl nsw i64 %var_2_2589, 3
%var_2_2591 = add i64 %var_2_2590, %var_2_2584
; Matched:%var_2_474:  %var_2_474 = add i64 %var_2_451, 26
; %var_2_2592 = add i64 %var_2_2569, 26
; Matched:\<badref\>:  store i64 %var_2_700, i64* %PC, align 8
; store i64 %var_2_2592, i64* %var_2_3, align 8
%var_2_2593 = bitcast i64 %var_2_2582 to double
%var_2_2594 = inttoptr i64 %var_2_2591 to double*
%var_2_2595 = load double, double* %var_2_2594, align 8
%var_2_2596 = fadd double %var_2_2593, %var_2_2595
store double %var_2_2596, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
; Matched:%var_2_479:  %var_2_479 = add i64 %var_2_449, -120
; %var_2_2597 = add i64 %var_2_2567, -120
; Matched:%var_2_1832:  %var_2_1832 = add i64 %var_2_1803, 31
; %var_2_2598 = add i64 %var_2_2569, 31
; Matched:\<badref\>:  store i64 %var_2_972, i64* %PC, align 8
; store i64 %var_2_2598, i64* %var_2_3, align 8
; Matched:%var_2_481:  %var_2_481 = inttoptr i64 %var_2_479 to double*
; %var_2_2599 = inttoptr i64 %var_2_2597 to double*
; Matched:\<badref\>:  store double %var_2_2936, double* %var_2_2939, align 8
; store double %var_2_2596, double* %var_2_2599, align 8
%var_2_2600 = load i64, i64* %RBP.i, align 8
%var_2_2601 = add i64 %var_2_2600, -16
%var_2_2602 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_234:  %var_2_234 = add i64 %var_2_233, 4
; %var_2_2603 = add i64 %var_2_2602, 4
; Matched:\<badref\>:  store i64 %var_2_234, i64* %PC, align 8
; store i64 %var_2_2603, i64* %var_2_3, align 8
%var_2_2604 = inttoptr i64 %var_2_2601 to i64*
%var_2_2605 = load i64, i64* %var_2_2604, align 8
; Matched:\<badref\>:  store i64 %var_2_4249, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_2605, i64* %RCX.i2236, align 8
%var_2_2606 = add i64 %var_2_2600, -28
; Matched:%var_2_3990:  %var_2_3990 = add i64 %var_2_3985, 7
; %var_2_2607 = add i64 %var_2_2602, 7
; Matched:\<badref\>:  store i64 %var_2_828, i64* %PC, align 8
; store i64 %var_2_2607, i64* %var_2_3, align 8
%var_2_2608 = inttoptr i64 %var_2_2606 to i32*
%var_2_2609 = load i32, i32* %var_2_2608, align 4
%var_2_2610 = add i32 %var_2_2609, 1
; Matched:%var_2_4335:  %var_2_4335 = zext i32 %var_2_4334 to i64
; %var_2_2611 = zext i32 %var_2_2610 to i64
; Matched:\<badref\>:  store i64 %var_2_3881, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2611, i64* %RAX.i2224, align 8
; Matched:%var_2_4336:  %var_2_4336 = icmp eq i32 %var_2_4333, -1
; %var_2_2612 = icmp eq i32 %var_2_2609, -1
; Matched:%var_2_3883:  %var_2_3883 = icmp eq i32 %var_2_3880, 0
; %var_2_2613 = icmp eq i32 %var_2_2610, 0
; Matched:%var_2_3884:  %var_2_3884 = or i1 %var_2_3882, %var_2_3883
; %var_2_2614 = or i1 %var_2_2612, %var_2_2613
; Matched:%var_2_4339:  %var_2_4339 = zext i1 %var_2_4338 to i8
; %var_2_2615 = zext i1 %var_2_2614 to i8
; Matched:\<badref\>:  store i8 %var_2_4339, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_2615, i8* %var_2_14, align 1
; Matched:%var_2_4340:  %var_2_4340 = and i32 %var_2_4334, 255
; %var_2_2616 = and i32 %var_2_2610, 255
; Matched:%var_2_499:  %var_2_499 = tail call i32 @llvm.ctpop.i32(i32 %var_2_498) #14
; %var_2_2617 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2616)
; Matched:%var_2_1852:  %var_2_1852 = trunc i32 %var_2_1851 to i8
; %var_2_2618 = trunc i32 %var_2_2617 to i8
; Matched:%var_2_3889:  %var_2_3889 = and i8 %var_2_3888, 1
; %var_2_2619 = and i8 %var_2_2618, 1
; Matched:%var_2_3890:  %var_2_3890 = xor i8 %var_2_3889, 1
; %var_2_2620 = xor i8 %var_2_2619, 1
; Matched:\<badref\>:  store i8 %var_2_4344, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_2620, i8* %var_2_21, align 1
; Matched:%var_2_4345:  %var_2_4345 = xor i32 %var_2_4334, %var_2_4333
; %var_2_2621 = xor i32 %var_2_2610, %var_2_2609
; Matched:%var_2_4346:  %var_2_4346 = lshr i32 %var_2_4345, 4
; %var_2_2622 = lshr i32 %var_2_2621, 4
; Matched:%var_2_3893:  %var_2_3893 = trunc i32 %var_2_3892 to i8
; %var_2_2623 = trunc i32 %var_2_2622 to i8
; Matched:%var_2_4007:  %var_2_4007 = and i8 %var_2_4006, 1
; %var_2_2624 = and i8 %var_2_2623, 1
; Matched:\<badref\>:  store i8 %var_2_4007, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_2624, i8* %var_2_27, align 1
; Matched:%var_2_2313:  %var_2_2313 = zext i1 %var_2_2301 to i8
; %var_2_2625 = zext i1 %var_2_2613 to i8
; Matched:\<badref\>:  store i8 %var_2_4349, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_2625, i8* %var_2_30, align 1
; Matched:%var_2_3896:  %var_2_3896 = lshr i32 %var_2_3880, 31
; %var_2_2626 = lshr i32 %var_2_2610, 31
; Matched:%var_2_4010:  %var_2_4010 = trunc i32 %var_2_4009 to i8
; %var_2_2627 = trunc i32 %var_2_2626 to i8
; Matched:\<badref\>:  store i8 %var_2_4010, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_2627, i8* %var_2_33, align 1
; Matched:%var_2_1862:  %var_2_1862 = lshr i32 %var_2_1843, 31
; %var_2_2628 = lshr i32 %var_2_2609, 31
; Matched:%var_2_1863:  %var_2_1863 = xor i32 %var_2_1860, %var_2_1862
; %var_2_2629 = xor i32 %var_2_2626, %var_2_2628
; Matched:%var_2_2318:  %var_2_2318 = add nuw nsw i32 %var_2_2317, %var_2_2314
; %var_2_2630 = add nuw nsw i32 %var_2_2629, %var_2_2626
; Matched:%var_2_1865:  %var_2_1865 = icmp eq i32 %var_2_1864, 2
; %var_2_2631 = icmp eq i32 %var_2_2630, 2
; Matched:%var_2_1866:  %var_2_1866 = zext i1 %var_2_1865 to i8
; %var_2_2632 = zext i1 %var_2_2631 to i8
; Matched:\<badref\>:  store i8 %var_2_1866, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_2632, i8* %var_2_39, align 1
%var_2_2633 = sext i32 %var_2_2610 to i64
; Matched:\<badref\>:  store i64 %var_2_3903, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_2633, i64* %RDX.i2239, align 8
%var_2_2634 = shl nsw i64 %var_2_2633, 3
%var_2_2635 = add i64 %var_2_2605, %var_2_2634
; Matched:%var_2_631:  %var_2_631 = add i64 %var_2_597, 18
; %var_2_2636 = add i64 %var_2_2602, 18
; Matched:\<badref\>:  store i64 %var_2_631, i64* %PC, align 8
; store i64 %var_2_2636, i64* %var_2_3, align 8
%var_2_2637 = inttoptr i64 %var_2_2635 to i64*
%var_2_2638 = load i64, i64* %var_2_2637, align 8
store i64 %var_2_2638, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
; Matched:%var_2_3092:  %var_2_3092 = add i64 %var_2_3055, 22
; %var_2_2639 = add i64 %var_2_2602, 22
; Matched:\<badref\>:  store i64 %var_2_3318, i64* %PC, align 8
; store i64 %var_2_2639, i64* %var_2_3, align 8
%var_2_2640 = load i64, i64* %var_2_2604, align 8
; Matched:\<badref\>:  store i64 %var_2_4666, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_2640, i64* %RCX.i2236, align 8
%var_2_2641 = add i64 %var_2_2600, -32
; Matched:%var_2_2215:  %var_2_2215 = add i64 %var_2_2175, 25
; %var_2_2642 = add i64 %var_2_2602, 25
; Matched:\<badref\>:  store i64 %var_2_1989, i64* %PC, align 8
; store i64 %var_2_2642, i64* %var_2_3, align 8
%var_2_2643 = inttoptr i64 %var_2_2641 to i32*
%var_2_2644 = load i32, i32* %var_2_2643, align 4
%var_2_2645 = add i32 %var_2_2644, 1
; Matched:%var_2_4029:  %var_2_4029 = zext i32 %var_2_4028 to i64
; %var_2_2646 = zext i32 %var_2_2645 to i64
; Matched:\<badref\>:  store i64 %var_2_4029, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2646, i64* %RAX.i2224, align 8
; Matched:%var_2_4030:  %var_2_4030 = icmp eq i32 %var_2_4027, -1
; %var_2_2647 = icmp eq i32 %var_2_2644, -1
; Matched:%var_2_3918:  %var_2_3918 = icmp eq i32 %var_2_3915, 0
; %var_2_2648 = icmp eq i32 %var_2_2645, 0
; Matched:%var_2_3919:  %var_2_3919 = or i1 %var_2_3917, %var_2_3918
; %var_2_2649 = or i1 %var_2_2647, %var_2_2648
; Matched:%var_2_4033:  %var_2_4033 = zext i1 %var_2_4032 to i8
; %var_2_2650 = zext i1 %var_2_2649 to i8
; Matched:\<badref\>:  store i8 %var_2_1884, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_2650, i8* %var_2_14, align 1
; Matched:%var_2_1885:  %var_2_1885 = and i32 %var_2_1879, 255
; %var_2_2651 = and i32 %var_2_2645, 255
; Matched:%var_2_4035:  %var_2_4035 = tail call i32 @llvm.ctpop.i32(i32 %var_2_4034) #14
; %var_2_2652 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2651)
; Matched:%var_2_4036:  %var_2_4036 = trunc i32 %var_2_4035 to i8
; %var_2_2653 = trunc i32 %var_2_2652 to i8
; Matched:%var_2_1888:  %var_2_1888 = and i8 %var_2_1887, 1
; %var_2_2654 = and i8 %var_2_2653, 1
; Matched:%var_2_1889:  %var_2_1889 = xor i8 %var_2_1888, 1
; %var_2_2655 = xor i8 %var_2_2654, 1
; Matched:\<badref\>:  store i8 %var_2_4038, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_2655, i8* %var_2_21, align 1
; Matched:%var_2_3926:  %var_2_3926 = xor i32 %var_2_3915, %var_2_3914
; %var_2_2656 = xor i32 %var_2_2645, %var_2_2644
; Matched:%var_2_3927:  %var_2_3927 = lshr i32 %var_2_3926, 4
; %var_2_2657 = lshr i32 %var_2_2656, 4
; Matched:%var_2_3928:  %var_2_3928 = trunc i32 %var_2_3927 to i8
; %var_2_2658 = trunc i32 %var_2_2657 to i8
; Matched:%var_2_3929:  %var_2_3929 = and i8 %var_2_3928, 1
; %var_2_2659 = and i8 %var_2_2658, 1
; Matched:\<badref\>:  store i8 %var_2_3929, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_2659, i8* %var_2_27, align 1
; Matched:%var_2_4043:  %var_2_4043 = zext i1 %var_2_4031 to i8
; %var_2_2660 = zext i1 %var_2_2648 to i8
; Matched:\<badref\>:  store i8 %var_2_4043, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_2660, i8* %var_2_30, align 1
; Matched:%var_2_4044:  %var_2_4044 = lshr i32 %var_2_4028, 31
; %var_2_2661 = lshr i32 %var_2_2645, 31
; Matched:%var_2_3932:  %var_2_3932 = trunc i32 %var_2_3931 to i8
; %var_2_2662 = trunc i32 %var_2_2661 to i8
; Matched:\<badref\>:  store i8 %var_2_4599, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_2662, i8* %var_2_33, align 1
; Matched:%var_2_4046:  %var_2_4046 = lshr i32 %var_2_4027, 31
; %var_2_2663 = lshr i32 %var_2_2644, 31
; Matched:%var_2_4047:  %var_2_4047 = xor i32 %var_2_4044, %var_2_4046
; %var_2_2664 = xor i32 %var_2_2661, %var_2_2663
; Matched:%var_2_4048:  %var_2_4048 = add nuw nsw i32 %var_2_4047, %var_2_4044
; %var_2_2665 = add nuw nsw i32 %var_2_2664, %var_2_2661
; Matched:%var_2_4603:  %var_2_4603 = icmp eq i32 %var_2_4602, 2
; %var_2_2666 = icmp eq i32 %var_2_2665, 2
; Matched:%var_2_3937:  %var_2_3937 = zext i1 %var_2_3936 to i8
; %var_2_2667 = zext i1 %var_2_2666 to i8
; Matched:\<badref\>:  store i8 %var_2_3937, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_2667, i8* %var_2_39, align 1
%var_2_2668 = sext i32 %var_2_2645 to i64
; Matched:\<badref\>:  store i64 %var_2_663, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_2668, i64* %RDX.i2239, align 8
%var_2_2669 = shl nsw i64 %var_2_2668, 3
%var_2_2670 = add i64 %var_2_2640, %var_2_2669
; Matched:%var_2_4167:  %var_2_4167 = add i64 %var_2_4098, 36
; %var_2_2671 = add i64 %var_2_2602, 36
; Matched:\<badref\>:  store i64 %var_2_3941, i64* %PC, align 8
; store i64 %var_2_2671, i64* %var_2_3, align 8
%var_2_2672 = bitcast i64 %var_2_2638 to double
%var_2_2673 = inttoptr i64 %var_2_2670 to double*
%var_2_2674 = load double, double* %var_2_2673, align 8
%var_2_2675 = fadd double %var_2_2672, %var_2_2674
store double %var_2_2675, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
; Matched:%var_2_558:  %var_2_558 = load i64, i64* %RBP, align 8
; %var_2_2676 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_559:  %var_2_559 = add i64 %var_2_558, -128
; %var_2_2677 = add i64 %var_2_2676, -128
; Matched:%var_2_2389:  %var_2_2389 = add i64 %var_2_2356, 41
; %var_2_2678 = add i64 %var_2_2602, 41
; Matched:\<badref\>:  store i64 %var_2_1912, i64* %PC, align 8
; store i64 %var_2_2678, i64* %var_2_3, align 8
; Matched:%var_2_3019:  %var_2_3019 = inttoptr i64 %var_2_3017 to double*
; %var_2_2679 = inttoptr i64 %var_2_2677 to double*
; Matched:\<badref\>:  store double %var_2_1909, double* %var_2_1913, align 8
; store double %var_2_2675, double* %var_2_2679, align 8
%var_2_2680 = load i64, i64* %RBP.i, align 8
%var_2_2681 = add i64 %var_2_2680, -16
%var_2_2682 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_3023:  %var_2_3023 = add i64 %var_2_3022, 4
; %var_2_2683 = add i64 %var_2_2682, 4
; Matched:\<badref\>:  store i64 %var_2_3023, i64* %PC, align 8
; store i64 %var_2_2683, i64* %var_2_3, align 8
%var_2_2684 = inttoptr i64 %var_2_2681 to i64*
%var_2_2685 = load i64, i64* %var_2_2684, align 8
; Matched:\<badref\>:  store i64 %var_2_3854, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_2685, i64* %RCX.i2236, align 8
%var_2_2686 = add i64 %var_2_2680, -28
%var_2_2687 = add i64 %var_2_2682, 8
store i64 %var_2_2687, i64* %var_2_3, align 8
%var_2_2688 = inttoptr i64 %var_2_2686 to i32*
%var_2_2689 = load i32, i32* %var_2_2688, align 4
%var_2_2690 = sext i32 %var_2_2689 to i64
; Matched:\<badref\>:  store i64 %var_2_3960, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_2690, i64* %RDX.i2239, align 8
%var_2_2691 = shl nsw i64 %var_2_2690, 3
%var_2_2692 = add i64 %var_2_2691, %var_2_2685
; Matched:%var_2_2040:  %var_2_2040 = add i64 %var_2_2029, 13
; %var_2_2693 = add i64 %var_2_2682, 13
; Matched:\<badref\>:  store i64 %var_2_2040, i64* %PC, align 8
; store i64 %var_2_2693, i64* %var_2_3, align 8
%var_2_2694 = inttoptr i64 %var_2_2692 to i64*
%var_2_2695 = load i64, i64* %var_2_2694, align 8
store i64 %var_2_2695, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
; Matched:%var_2_4327:  %var_2_4327 = add i64 %var_2_4316, 17
; %var_2_2696 = add i64 %var_2_2682, 17
; Matched:\<badref\>:  store i64 %var_2_4327, i64* %PC, align 8
; store i64 %var_2_2696, i64* %var_2_3, align 8
%var_2_2697 = load i64, i64* %var_2_2684, align 8
; Matched:\<badref\>:  store i64 %var_2_454, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_2697, i64* %RCX.i2236, align 8
%var_2_2698 = add i64 %var_2_2680, -32
; Matched:%var_2_694:  %var_2_694 = add i64 %var_2_677, 21
; %var_2_2699 = add i64 %var_2_2682, 21
; Matched:\<badref\>:  store i64 %var_2_694, i64* %PC, align 8
; store i64 %var_2_2699, i64* %var_2_3, align 8
%var_2_2700 = inttoptr i64 %var_2_2698 to i32*
%var_2_2701 = load i32, i32* %var_2_2700, align 4
%var_2_2702 = sext i32 %var_2_2701 to i64
; Matched:\<badref\>:  store i64 %var_2_2532, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_2702, i64* %RDX.i2239, align 8
%var_2_2703 = shl nsw i64 %var_2_2702, 3
%var_2_2704 = add i64 %var_2_2703, %var_2_2697
; Matched:%var_2_1246:  %var_2_1246 = add i64 %var_2_1225, 26
; %var_2_2705 = add i64 %var_2_2682, 26
; Matched:\<badref\>:  store i64 %var_2_1939, i64* %PC, align 8
; store i64 %var_2_2705, i64* %var_2_3, align 8
%var_2_2706 = bitcast i64 %var_2_2695 to double
%var_2_2707 = inttoptr i64 %var_2_2704 to double*
%var_2_2708 = load double, double* %var_2_2707, align 8
%var_2_2709 = fsub double %var_2_2706, %var_2_2708
store double %var_2_2709, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
; Matched:%var_2_3050:  %var_2_3050 = add i64 %var_2_3020, -136
; %var_2_2710 = add i64 %var_2_2680, -136
; Matched:%var_2_3981:  %var_2_3981 = add i64 %var_2_3952, 34
; %var_2_2711 = add i64 %var_2_2682, 34
; Matched:\<badref\>:  store i64 %var_2_3981, i64* %PC, align 8
; store i64 %var_2_2711, i64* %var_2_3, align 8
; Matched:%var_2_1946:  %var_2_1946 = inttoptr i64 %var_2_1944 to double*
; %var_2_2712 = inttoptr i64 %var_2_2710 to double*
; Matched:\<badref\>:  store double %var_2_1943, double* %var_2_1946, align 8
; store double %var_2_2709, double* %var_2_2712, align 8
%var_2_2713 = load i64, i64* %RBP.i, align 8
%var_2_2714 = add i64 %var_2_2713, -16
%var_2_2715 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1804:  %var_2_1804 = add i64 %var_2_1803, 4
; %var_2_2716 = add i64 %var_2_2715, 4
; Matched:\<badref\>:  store i64 %var_2_1804, i64* %PC, align 8
; store i64 %var_2_2716, i64* %var_2_3, align 8
%var_2_2717 = inttoptr i64 %var_2_2714 to i64*
%var_2_2718 = load i64, i64* %var_2_2717, align 8
; Matched:\<badref\>:  store i64 %var_2_1213, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_2718, i64* %RCX.i2236, align 8
%var_2_2719 = add i64 %var_2_2713, -28
; Matched:%var_2_4216:  %var_2_4216 = add i64 %var_2_4211, 7
; %var_2_2720 = add i64 %var_2_2715, 7
; Matched:\<badref\>:  store i64 %var_2_3990, i64* %PC, align 8
; store i64 %var_2_2720, i64* %var_2_3, align 8
%var_2_2721 = inttoptr i64 %var_2_2719 to i32*
%var_2_2722 = load i32, i32* %var_2_2721, align 4
%var_2_2723 = add i32 %var_2_2722, 1
; Matched:%var_2_3994:  %var_2_3994 = zext i32 %var_2_3993 to i64
; %var_2_2724 = zext i32 %var_2_2723 to i64
; Matched:\<badref\>:  store i64 %var_2_3994, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2724, i64* %RAX.i2224, align 8
; Matched:%var_2_3995:  %var_2_3995 = icmp eq i32 %var_2_3992, -1
; %var_2_2725 = icmp eq i32 %var_2_2722, -1
; Matched:%var_2_4337:  %var_2_4337 = icmp eq i32 %var_2_4334, 0
; %var_2_2726 = icmp eq i32 %var_2_2723, 0
; Matched:%var_2_3997:  %var_2_3997 = or i1 %var_2_3995, %var_2_3996
; %var_2_2727 = or i1 %var_2_2725, %var_2_2726
; Matched:%var_2_3998:  %var_2_3998 = zext i1 %var_2_3997 to i8
; %var_2_2728 = zext i1 %var_2_2727 to i8
; Matched:\<badref\>:  store i8 %var_2_3998, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_2728, i8* %var_2_14, align 1
; Matched:%var_2_3886:  %var_2_3886 = and i32 %var_2_3880, 255
; %var_2_2729 = and i32 %var_2_2723, 255
; Matched:%var_2_2305:  %var_2_2305 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2304) #14
; %var_2_2730 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2729)
; Matched:%var_2_2306:  %var_2_2306 = trunc i32 %var_2_2305 to i8
; %var_2_2731 = trunc i32 %var_2_2730 to i8
; Matched:%var_2_4002:  %var_2_4002 = and i8 %var_2_4001, 1
; %var_2_2732 = and i8 %var_2_2731, 1
; Matched:%var_2_4003:  %var_2_4003 = xor i8 %var_2_4002, 1
; %var_2_2733 = xor i8 %var_2_2732, 1
; Matched:\<badref\>:  store i8 %var_2_3890, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_2733, i8* %var_2_21, align 1
; Matched:%var_2_4004:  %var_2_4004 = xor i32 %var_2_3993, %var_2_3992
; %var_2_2734 = xor i32 %var_2_2723, %var_2_2722
; Matched:%var_2_2310:  %var_2_2310 = lshr i32 %var_2_2309, 4
; %var_2_2735 = lshr i32 %var_2_2734, 4
; Matched:%var_2_4006:  %var_2_4006 = trunc i32 %var_2_4005 to i8
; %var_2_2736 = trunc i32 %var_2_2735 to i8
; Matched:%var_2_2312:  %var_2_2312 = and i8 %var_2_2311, 1
; %var_2_2737 = and i8 %var_2_2736, 1
; Matched:\<badref\>:  store i8 %var_2_2312, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_2737, i8* %var_2_27, align 1
; Matched:%var_2_4349:  %var_2_4349 = zext i1 %var_2_4337 to i8
; %var_2_2738 = zext i1 %var_2_2726 to i8
; Matched:\<badref\>:  store i8 %var_2_4008, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_2738, i8* %var_2_30, align 1
; Matched:%var_2_4009:  %var_2_4009 = lshr i32 %var_2_3993, 31
; %var_2_2739 = lshr i32 %var_2_2723, 31
; Matched:%var_2_2315:  %var_2_2315 = trunc i32 %var_2_2314 to i8
; %var_2_2740 = trunc i32 %var_2_2739 to i8
; Matched:\<badref\>:  store i8 %var_2_1861, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_2740, i8* %var_2_33, align 1
; Matched:%var_2_1975:  %var_2_1975 = lshr i32 %var_2_1956, 31
; %var_2_2741 = lshr i32 %var_2_2722, 31
; Matched:%var_2_1976:  %var_2_1976 = xor i32 %var_2_1973, %var_2_1975
; %var_2_2742 = xor i32 %var_2_2739, %var_2_2741
; Matched:%var_2_1864:  %var_2_1864 = add nuw nsw i32 %var_2_1863, %var_2_1860
; %var_2_2743 = add nuw nsw i32 %var_2_2742, %var_2_2739
; Matched:%var_2_2319:  %var_2_2319 = icmp eq i32 %var_2_2318, 2
; %var_2_2744 = icmp eq i32 %var_2_2743, 2
; Matched:%var_2_1979:  %var_2_1979 = zext i1 %var_2_1978 to i8
; %var_2_2745 = zext i1 %var_2_2744 to i8
; Matched:\<badref\>:  store i8 %var_2_1979, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_2745, i8* %var_2_39, align 1
%var_2_2746 = sext i32 %var_2_2723 to i64
; Matched:\<badref\>:  store i64 %var_2_4016, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_2746, i64* %RDX.i2239, align 8
%var_2_2747 = shl nsw i64 %var_2_2746, 3
%var_2_2748 = add i64 %var_2_2718, %var_2_2747
; Matched:%var_2_2096:  %var_2_2096 = add i64 %var_2_2062, 18
; %var_2_2749 = add i64 %var_2_2715, 18
; Matched:\<badref\>:  store i64 %var_2_2096, i64* %PC, align 8
; store i64 %var_2_2749, i64* %var_2_3, align 8
%var_2_2750 = inttoptr i64 %var_2_2748 to i64*
%var_2_2751 = load i64, i64* %var_2_2750, align 8
store i64 %var_2_2751, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
; Matched:%var_2_2338:  %var_2_2338 = add i64 %var_2_2328, 22
; %var_2_2752 = add i64 %var_2_2715, 22
; Matched:\<badref\>:  store i64 %var_2_521, i64* %PC, align 8
; store i64 %var_2_2752, i64* %var_2_3, align 8
%var_2_2753 = load i64, i64* %var_2_2717, align 8
; Matched:\<badref\>:  store i64 %var_2_748, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_2753, i64* %RCX.i2236, align 8
%var_2_2754 = add i64 %var_2_2713, -32
; Matched:%var_2_3095:  %var_2_3095 = add i64 %var_2_3055, 25
; %var_2_2755 = add i64 %var_2_2715, 25
; Matched:\<badref\>:  store i64 %var_2_2215, i64* %PC, align 8
; store i64 %var_2_2755, i64* %var_2_3, align 8
%var_2_2756 = inttoptr i64 %var_2_2754 to i32*
%var_2_2757 = load i32, i32* %var_2_2756, align 4
%var_2_2758 = add i32 %var_2_2757, 1
; Matched:%var_2_2986:  %var_2_2986 = zext i32 %var_2_2985 to i64
; %var_2_2759 = zext i32 %var_2_2758 to i64
; Matched:\<badref\>:  store i64 %var_2_2986, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2759, i64* %RAX.i2224, align 8
; Matched:%var_2_1881:  %var_2_1881 = icmp eq i32 %var_2_1878, -1
; %var_2_2760 = icmp eq i32 %var_2_2757, -1
; Matched:%var_2_4031:  %var_2_4031 = icmp eq i32 %var_2_4028, 0
; %var_2_2761 = icmp eq i32 %var_2_2758, 0
; Matched:%var_2_4032:  %var_2_4032 = or i1 %var_2_4030, %var_2_4031
; %var_2_2762 = or i1 %var_2_2760, %var_2_2761
; Matched:%var_2_1884:  %var_2_1884 = zext i1 %var_2_1883 to i8
; %var_2_2763 = zext i1 %var_2_2762 to i8
; Matched:\<badref\>:  store i8 %var_2_1997, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_2763, i8* %var_2_14, align 1
; Matched:%var_2_1998:  %var_2_1998 = and i32 %var_2_1992, 255
; %var_2_2764 = and i32 %var_2_2758, 255
; Matched:%var_2_1886:  %var_2_1886 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1885) #14
; %var_2_2765 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2764)
; Matched:%var_2_1887:  %var_2_1887 = trunc i32 %var_2_1886 to i8
; %var_2_2766 = trunc i32 %var_2_2765 to i8
; Matched:%var_2_2001:  %var_2_2001 = and i8 %var_2_2000, 1
; %var_2_2767 = and i8 %var_2_2766, 1
; Matched:%var_2_2002:  %var_2_2002 = xor i8 %var_2_2001, 1
; %var_2_2768 = xor i8 %var_2_2767, 1
; Matched:\<badref\>:  store i8 %var_2_1889, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_2768, i8* %var_2_21, align 1
; Matched:%var_2_4039:  %var_2_4039 = xor i32 %var_2_4028, %var_2_4027
; %var_2_2769 = xor i32 %var_2_2758, %var_2_2757
; Matched:%var_2_4040:  %var_2_4040 = lshr i32 %var_2_4039, 4
; %var_2_2770 = lshr i32 %var_2_2769, 4
; Matched:%var_2_4041:  %var_2_4041 = trunc i32 %var_2_4040 to i8
; %var_2_2771 = trunc i32 %var_2_2770 to i8
; Matched:%var_2_4042:  %var_2_4042 = and i8 %var_2_4041, 1
; %var_2_2772 = and i8 %var_2_2771, 1
; Matched:\<badref\>:  store i8 %var_2_4042, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_2772, i8* %var_2_27, align 1
; Matched:%var_2_1894:  %var_2_1894 = zext i1 %var_2_1882 to i8
; %var_2_2773 = zext i1 %var_2_2761 to i8
; Matched:\<badref\>:  store i8 %var_2_1894, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_2773, i8* %var_2_30, align 1
; Matched:%var_2_3566:  %var_2_3566 = lshr i32 %var_2_3550, 31
; %var_2_2774 = lshr i32 %var_2_2758, 31
; Matched:%var_2_4045:  %var_2_4045 = trunc i32 %var_2_4044 to i8
; %var_2_2775 = trunc i32 %var_2_2774 to i8
; Matched:\<badref\>:  store i8 %var_2_3567, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_2775, i8* %var_2_33, align 1
; Matched:%var_2_1897:  %var_2_1897 = lshr i32 %var_2_1878, 31
; %var_2_2776 = lshr i32 %var_2_2757, 31
; Matched:%var_2_1898:  %var_2_1898 = xor i32 %var_2_1895, %var_2_1897
; %var_2_2777 = xor i32 %var_2_2774, %var_2_2776
; Matched:%var_2_1899:  %var_2_1899 = add nuw nsw i32 %var_2_1898, %var_2_1895
; %var_2_2778 = add nuw nsw i32 %var_2_2777, %var_2_2774
; Matched:%var_2_3936:  %var_2_3936 = icmp eq i32 %var_2_3935, 2
; %var_2_2779 = icmp eq i32 %var_2_2778, 2
; Matched:%var_2_4050:  %var_2_4050 = zext i1 %var_2_4049 to i8
; %var_2_2780 = zext i1 %var_2_2779 to i8
; Matched:\<badref\>:  store i8 %var_2_1901, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_2780, i8* %var_2_39, align 1
%var_2_2781 = sext i32 %var_2_2758 to i64
; Matched:\<badref\>:  store i64 %var_2_3008, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_2781, i64* %RDX.i2239, align 8
%var_2_2782 = shl nsw i64 %var_2_2781, 3
%var_2_2783 = add i64 %var_2_2753, %var_2_2782
; Matched:%var_2_1905:  %var_2_1905 = add i64 %var_2_1836, 36
; %var_2_2784 = add i64 %var_2_2715, 36
; Matched:\<badref\>:  store i64 %var_2_4167, i64* %PC, align 8
; store i64 %var_2_2784, i64* %var_2_3, align 8
%var_2_2785 = bitcast i64 %var_2_2751 to double
%var_2_2786 = inttoptr i64 %var_2_2783 to double*
%var_2_2787 = load double, double* %var_2_2786, align 8
%var_2_2788 = fsub double %var_2_2785, %var_2_2787
store double %var_2_2788, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
; Matched:%var_2_3129:  %var_2_3129 = load i64, i64* %RBP, align 8
; %var_2_2789 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_672:  %var_2_672 = add i64 %var_2_671, -144
; %var_2_2790 = add i64 %var_2_2789, -144
; Matched:%var_2_2440:  %var_2_2440 = add i64 %var_2_2403, 44
; %var_2_2791 = add i64 %var_2_2715, 44
; Matched:\<badref\>:  store i64 %var_2_2025, i64* %PC, align 8
; store i64 %var_2_2791, i64* %var_2_3, align 8
; Matched:%var_2_3132:  %var_2_3132 = inttoptr i64 %var_2_3130 to double*
; %var_2_2792 = inttoptr i64 %var_2_2790 to double*
; Matched:\<badref\>:  store double %var_2_2022, double* %var_2_2026, align 8
; store double %var_2_2788, double* %var_2_2792, align 8
%var_2_2793 = load i64, i64* %RBP.i, align 8
%var_2_2794 = add i64 %var_2_2793, -16
%var_2_2795 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_791:  %var_2_791 = add i64 %var_2_790, 4
; %var_2_2796 = add i64 %var_2_2795, 4
; Matched:\<badref\>:  store i64 %var_2_791, i64* %PC, align 8
; store i64 %var_2_2796, i64* %var_2_3, align 8
%var_2_2797 = inttoptr i64 %var_2_2794 to i64*
%var_2_2798 = load i64, i64* %var_2_2797, align 8
; Matched:\<badref\>:  store i64 %var_2_466, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_2798, i64* %RCX.i2236, align 8
%var_2_2799 = add i64 %var_2_2793, -36
%var_2_2800 = add i64 %var_2_2795, 8
store i64 %var_2_2800, i64* %var_2_3, align 8
%var_2_2801 = inttoptr i64 %var_2_2799 to i32*
%var_2_2802 = load i32, i32* %var_2_2801, align 4
%var_2_2803 = sext i32 %var_2_2802 to i64
; Matched:\<badref\>:  store i64 %var_2_4186, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_2803, i64* %RDX.i2239, align 8
%var_2_2804 = shl nsw i64 %var_2_2803, 3
%var_2_2805 = add i64 %var_2_2804, %var_2_2798
; Matched:%var_2_981:  %var_2_981 = add i64 %var_2_976, 13
; %var_2_2806 = add i64 %var_2_2795, 13
; Matched:\<badref\>:  store i64 %var_2_981, i64* %PC, align 8
; store i64 %var_2_2806, i64* %var_2_3, align 8
%var_2_2807 = inttoptr i64 %var_2_2805 to i64*
%var_2_2808 = load i64, i64* %var_2_2807, align 8
store i64 %var_2_2808, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
; Matched:%var_2_3149:  %var_2_3149 = add i64 %var_2_3135, 17
; %var_2_2809 = add i64 %var_2_2795, 17
; Matched:\<badref\>:  store i64 %var_2_3149, i64* %PC, align 8
; store i64 %var_2_2809, i64* %var_2_3, align 8
%var_2_2810 = load i64, i64* %var_2_2797, align 8
; Matched:\<badref\>:  store i64 %var_2_4304, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_2810, i64* %RCX.i2236, align 8
%var_2_2811 = add i64 %var_2_2793, -40
; Matched:%var_2_3969:  %var_2_3969 = add i64 %var_2_3952, 21
; %var_2_2812 = add i64 %var_2_2795, 21
; Matched:\<badref\>:  store i64 %var_2_3969, i64* %PC, align 8
; store i64 %var_2_2812, i64* %var_2_3, align 8
%var_2_2813 = inttoptr i64 %var_2_2811 to i32*
%var_2_2814 = load i32, i32* %var_2_2813, align 4
%var_2_2815 = sext i32 %var_2_2814 to i64
; Matched:\<badref\>:  store i64 %var_2_4085, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_2815, i64* %RDX.i2239, align 8
%var_2_2816 = shl nsw i64 %var_2_2815, 3
%var_2_2817 = add i64 %var_2_2816, %var_2_2810
; Matched:%var_2_997:  %var_2_997 = add i64 %var_2_976, 26
; %var_2_2818 = add i64 %var_2_2795, 26
; Matched:\<badref\>:  store i64 %var_2_3382, i64* %PC, align 8
; store i64 %var_2_2818, i64* %var_2_3, align 8
%var_2_2819 = bitcast i64 %var_2_2808 to double
%var_2_2820 = inttoptr i64 %var_2_2817 to double*
%var_2_2821 = load double, double* %var_2_2820, align 8
%var_2_2822 = fadd double %var_2_2819, %var_2_2821
store double %var_2_2822, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
; Matched:%var_2_705:  %var_2_705 = add i64 %var_2_675, -152
; %var_2_2823 = add i64 %var_2_2793, -152
; Matched:%var_2_4094:  %var_2_4094 = add i64 %var_2_4065, 34
; %var_2_2824 = add i64 %var_2_2795, 34
; Matched:\<badref\>:  store i64 %var_2_4094, i64* %PC, align 8
; store i64 %var_2_2824, i64* %var_2_3, align 8
; Matched:%var_2_707:  %var_2_707 = inttoptr i64 %var_2_705 to double*
; %var_2_2825 = inttoptr i64 %var_2_2823 to double*
; Matched:\<badref\>:  store double %var_2_2056, double* %var_2_2059, align 8
; store double %var_2_2822, double* %var_2_2825, align 8
%var_2_2826 = load i64, i64* %RBP.i, align 8
%var_2_2827 = add i64 %var_2_2826, -16
%var_2_2828 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_3986:  %var_2_3986 = add i64 %var_2_3985, 4
; %var_2_2829 = add i64 %var_2_2828, 4
; Matched:\<badref\>:  store i64 %var_2_3986, i64* %PC, align 8
; store i64 %var_2_2829, i64* %var_2_3, align 8
%var_2_2830 = inttoptr i64 %var_2_2827 to i64*
%var_2_2831 = load i64, i64* %var_2_2830, align 8
; Matched:\<badref\>:  store i64 %var_2_3058, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_2831, i64* %RCX.i2236, align 8
%var_2_2832 = add i64 %var_2_2826, -36
; Matched:%var_2_1954:  %var_2_1954 = add i64 %var_2_1949, 7
; %var_2_2833 = add i64 %var_2_2828, 7
; Matched:\<badref\>:  store i64 %var_2_4216, i64* %PC, align 8
; store i64 %var_2_2833, i64* %var_2_3, align 8
%var_2_2834 = inttoptr i64 %var_2_2832 to i32*
%var_2_2835 = load i32, i32* %var_2_2834, align 4
%var_2_2836 = add i32 %var_2_2835, 1
; Matched:%var_2_4220:  %var_2_4220 = zext i32 %var_2_4219 to i64
; %var_2_2837 = zext i32 %var_2_2836 to i64
; Matched:\<badref\>:  store i64 %var_2_4220, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2837, i64* %RAX.i2224, align 8
; Matched:%var_2_4108:  %var_2_4108 = icmp eq i32 %var_2_4105, -1
; %var_2_2838 = icmp eq i32 %var_2_2835, -1
; Matched:%var_2_4109:  %var_2_4109 = icmp eq i32 %var_2_4106, 0
; %var_2_2839 = icmp eq i32 %var_2_2836, 0
; Matched:%var_2_4110:  %var_2_4110 = or i1 %var_2_4108, %var_2_4109
; %var_2_2840 = or i1 %var_2_2838, %var_2_2839
; Matched:%var_2_4111:  %var_2_4111 = zext i1 %var_2_4110 to i8
; %var_2_2841 = zext i1 %var_2_2840 to i8
; Matched:\<badref\>:  store i8 %var_2_4111, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_2841, i8* %var_2_14, align 1
; Matched:%var_2_4112:  %var_2_4112 = and i32 %var_2_4106, 255
; %var_2_2842 = and i32 %var_2_2836, 255
; Matched:%var_2_4113:  %var_2_4113 = tail call i32 @llvm.ctpop.i32(i32 %var_2_4112) #14
; %var_2_2843 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2842)
; Matched:%var_2_4114:  %var_2_4114 = trunc i32 %var_2_4113 to i8
; %var_2_2844 = trunc i32 %var_2_2843 to i8
; Matched:%var_2_4228:  %var_2_4228 = and i8 %var_2_4227, 1
; %var_2_2845 = and i8 %var_2_2844, 1
; Matched:%var_2_2453:  %var_2_2453 = xor i8 %var_2_2452, 1
; %var_2_2846 = xor i8 %var_2_2845, 1
; Matched:\<badref\>:  store i8 %var_2_4229, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_2846, i8* %var_2_21, align 1
; Matched:%var_2_4117:  %var_2_4117 = xor i32 %var_2_4106, %var_2_4105
; %var_2_2847 = xor i32 %var_2_2836, %var_2_2835
; Matched:%var_2_4118:  %var_2_4118 = lshr i32 %var_2_4117, 4
; %var_2_2848 = lshr i32 %var_2_2847, 4
; Matched:%var_2_4119:  %var_2_4119 = trunc i32 %var_2_4118 to i8
; %var_2_2849 = trunc i32 %var_2_2848 to i8
; Matched:%var_2_4120:  %var_2_4120 = and i8 %var_2_4119, 1
; %var_2_2850 = and i8 %var_2_2849, 1
; Matched:\<badref\>:  store i8 %var_2_4120, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_2850, i8* %var_2_27, align 1
; Matched:%var_2_4121:  %var_2_4121 = zext i1 %var_2_4109 to i8
; %var_2_2851 = zext i1 %var_2_2839 to i8
; Matched:\<badref\>:  store i8 %var_2_4121, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_2851, i8* %var_2_30, align 1
; Matched:%var_2_4473:  %var_2_4473 = lshr i32 %var_2_4457, 31
; %var_2_2852 = lshr i32 %var_2_2836, 31
; Matched:%var_2_4123:  %var_2_4123 = trunc i32 %var_2_4122 to i8
; %var_2_2853 = trunc i32 %var_2_2852 to i8
; Matched:\<badref\>:  store i8 %var_2_2087, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_2853, i8* %var_2_33, align 1
; Matched:%var_2_4124:  %var_2_4124 = lshr i32 %var_2_4105, 31
; %var_2_2854 = lshr i32 %var_2_2835, 31
; Matched:%var_2_4238:  %var_2_4238 = xor i32 %var_2_4235, %var_2_4237
; %var_2_2855 = xor i32 %var_2_2852, %var_2_2854
; Matched:%var_2_2463:  %var_2_2463 = add nuw nsw i32 %var_2_2462, %var_2_2459
; %var_2_2856 = add nuw nsw i32 %var_2_2855, %var_2_2852
; Matched:%var_2_4478:  %var_2_4478 = icmp eq i32 %var_2_4477, 2
; %var_2_2857 = icmp eq i32 %var_2_2856, 2
; Matched:%var_2_2465:  %var_2_2465 = zext i1 %var_2_2464 to i8
; %var_2_2858 = zext i1 %var_2_2857 to i8
; Matched:\<badref\>:  store i8 %var_2_4479, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_2858, i8* %var_2_39, align 1
%var_2_2859 = sext i32 %var_2_2836 to i64
; Matched:\<badref\>:  store i64 %var_2_4242, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_2859, i64* %RDX.i2239, align 8
%var_2_2860 = shl nsw i64 %var_2_2859, 3
%var_2_2861 = add i64 %var_2_2831, %var_2_2860
; Matched:%var_2_518:  %var_2_518 = add i64 %var_2_484, 18
; %var_2_2862 = add i64 %var_2_2828, 18
; Matched:\<badref\>:  store i64 %var_2_1458, i64* %PC, align 8
; store i64 %var_2_2862, i64* %var_2_3, align 8
%var_2_2863 = inttoptr i64 %var_2_2861 to i64*
%var_2_2864 = load i64, i64* %var_2_2863, align 8
store i64 %var_2_2864, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
; Matched:%var_2_3318:  %var_2_3318 = add i64 %var_2_3281, 22
; %var_2_2865 = add i64 %var_2_2828, 22
; Matched:\<badref\>:  store i64 %var_2_747, i64* %PC, align 8
; store i64 %var_2_2865, i64* %var_2_3, align 8
%var_2_2866 = load i64, i64* %var_2_2830, align 8
; Matched:\<badref\>:  store i64 %var_2_600, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_2866, i64* %RCX.i2236, align 8
%var_2_2867 = add i64 %var_2_2826, -40
; Matched:%var_2_3321:  %var_2_3321 = add i64 %var_2_3281, 25
; %var_2_2868 = add i64 %var_2_2828, 25
; Matched:\<badref\>:  store i64 %var_2_3095, i64* %PC, align 8
; store i64 %var_2_2868, i64* %var_2_3, align 8
%var_2_2869 = inttoptr i64 %var_2_2867 to i32*
%var_2_2870 = load i32, i32* %var_2_2869, align 4
%var_2_2871 = add i32 %var_2_2870, 1
; Matched:%var_2_4142:  %var_2_4142 = zext i32 %var_2_4141 to i64
; %var_2_2872 = zext i32 %var_2_2871 to i64
; Matched:\<badref\>:  store i64 %var_2_3624, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2872, i64* %RAX.i2224, align 8
; Matched:%var_2_2220:  %var_2_2220 = icmp eq i32 %var_2_2217, -1
; %var_2_2873 = icmp eq i32 %var_2_2870, -1
; Matched:%var_2_4257:  %var_2_4257 = icmp eq i32 %var_2_4254, 0
; %var_2_2874 = icmp eq i32 %var_2_2871, 0
; Matched:%var_2_4711:  %var_2_4711 = or i1 %var_2_4709, %var_2_4710
; %var_2_2875 = or i1 %var_2_2873, %var_2_2874
; Matched:%var_2_871:  %var_2_871 = zext i1 %var_2_870 to i8
; %var_2_2876 = zext i1 %var_2_2875 to i8
; Matched:\<badref\>:  store i8 %var_2_3216, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_2876, i8* %var_2_14, align 1
; Matched:%var_2_3629:  %var_2_3629 = and i32 %var_2_3623, 255
; %var_2_2877 = and i32 %var_2_2871, 255
; Matched:%var_2_3218:  %var_2_3218 = tail call i32 @llvm.ctpop.i32(i32 %var_2_3217) #14
; %var_2_2878 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2877)
; Matched:%var_2_3219:  %var_2_3219 = trunc i32 %var_2_3218 to i8
; %var_2_2879 = trunc i32 %var_2_2878 to i8
; Matched:%var_2_4150:  %var_2_4150 = and i8 %var_2_4149, 1
; %var_2_2880 = and i8 %var_2_2879, 1
; Matched:%var_2_4151:  %var_2_4151 = xor i8 %var_2_4150, 1
; %var_2_2881 = xor i8 %var_2_2880, 1
; Matched:\<badref\>:  store i8 %var_2_4264, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_2881, i8* %var_2_21, align 1
; Matched:%var_2_4265:  %var_2_4265 = xor i32 %var_2_4254, %var_2_4253
; %var_2_2882 = xor i32 %var_2_2871, %var_2_2870
; Matched:%var_2_4153:  %var_2_4153 = lshr i32 %var_2_4152, 4
; %var_2_2883 = lshr i32 %var_2_2882, 4
; Matched:%var_2_4720:  %var_2_4720 = trunc i32 %var_2_4719 to i8
; %var_2_2884 = trunc i32 %var_2_2883 to i8
; Matched:%var_2_4268:  %var_2_4268 = and i8 %var_2_4267, 1
; %var_2_2885 = and i8 %var_2_2884, 1
; Matched:\<badref\>:  store i8 %var_2_4268, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_2885, i8* %var_2_27, align 1
; Matched:%var_2_4269:  %var_2_4269 = zext i1 %var_2_4257 to i8
; %var_2_2886 = zext i1 %var_2_2874 to i8
; Matched:\<badref\>:  store i8 %var_2_4269, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_2886, i8* %var_2_30, align 1
; Matched:%var_2_4270:  %var_2_4270 = lshr i32 %var_2_4254, 31
; %var_2_2887 = lshr i32 %var_2_2871, 31
; Matched:%var_2_4271:  %var_2_4271 = trunc i32 %var_2_4270 to i8
; %var_2_2888 = trunc i32 %var_2_2887 to i8
; Matched:\<badref\>:  store i8 %var_2_4271, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_2888, i8* %var_2_33, align 1
; Matched:%var_2_4272:  %var_2_4272 = lshr i32 %var_2_4253, 31
; %var_2_2889 = lshr i32 %var_2_2870, 31
; Matched:%var_2_4160:  %var_2_4160 = xor i32 %var_2_4157, %var_2_4159
; %var_2_2890 = xor i32 %var_2_2887, %var_2_2889
; Matched:%var_2_4274:  %var_2_4274 = add nuw nsw i32 %var_2_4273, %var_2_4270
; %var_2_2891 = add nuw nsw i32 %var_2_2890, %var_2_2887
; Matched:%var_2_2126:  %var_2_2126 = icmp eq i32 %var_2_2125, 2
; %var_2_2892 = icmp eq i32 %var_2_2891, 2
; Matched:%var_2_4276:  %var_2_4276 = zext i1 %var_2_4275 to i8
; %var_2_2893 = zext i1 %var_2_2892 to i8
; Matched:\<badref\>:  store i8 %var_2_4276, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_2893, i8* %var_2_39, align 1
%var_2_2894 = sext i32 %var_2_2871 to i64
; Matched:\<badref\>:  store i64 %var_2_4277, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_2894, i64* %RDX.i2239, align 8
%var_2_2895 = shl nsw i64 %var_2_2894, 3
%var_2_2896 = add i64 %var_2_2866, %var_2_2895
; Matched:%var_2_2131:  %var_2_2131 = add i64 %var_2_2062, 36
; %var_2_2897 = add i64 %var_2_2828, 36
; Matched:\<badref\>:  store i64 %var_2_1905, i64* %PC, align 8
; store i64 %var_2_2897, i64* %var_2_3, align 8
%var_2_2898 = bitcast i64 %var_2_2864 to double
%var_2_2899 = inttoptr i64 %var_2_2896 to double*
%var_2_2900 = load double, double* %var_2_2899, align 8
%var_2_2901 = fadd double %var_2_2898, %var_2_2900
store double %var_2_2901, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
; Matched:%var_2_2136:  %var_2_2136 = load i64, i64* %RBP, align 8
; %var_2_2902 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_785:  %var_2_785 = add i64 %var_2_784, -160
; %var_2_2903 = add i64 %var_2_2902, -160
; Matched:%var_2_2025:  %var_2_2025 = add i64 %var_2_1949, 44
; %var_2_2904 = add i64 %var_2_2828, 44
; Matched:\<badref\>:  store i64 %var_2_2138, i64* %PC, align 8
; store i64 %var_2_2904, i64* %var_2_3, align 8
; Matched:%var_2_3245:  %var_2_3245 = inttoptr i64 %var_2_3243 to double*
; %var_2_2905 = inttoptr i64 %var_2_2903 to double*
; Matched:\<badref\>:  store double %var_2_783, double* %var_2_787, align 8
; store double %var_2_2901, double* %var_2_2905, align 8
%var_2_2906 = load i64, i64* %RBP.i, align 8
%var_2_2907 = add i64 %var_2_2906, -16
%var_2_2908 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_173:  %var_2_173 = add i64 %var_2_172, 4
; %var_2_2909 = add i64 %var_2_2908, 4
; Matched:\<badref\>:  store i64 %var_2_173, i64* %PC, align 8
; store i64 %var_2_2909, i64* %var_2_3, align 8
%var_2_2910 = inttoptr i64 %var_2_2907 to i64*
%var_2_2911 = load i64, i64* %var_2_2910, align 8
; Matched:\<badref\>:  store i64 %var_2_4136, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_2911, i64* %RCX.i2236, align 8
%var_2_2912 = add i64 %var_2_2906, -36
%var_2_2913 = add i64 %var_2_2908, 8
store i64 %var_2_2913, i64* %var_2_3, align 8
%var_2_2914 = inttoptr i64 %var_2_2912 to i32*
%var_2_2915 = load i32, i32* %var_2_2914, align 4
%var_2_2916 = sext i32 %var_2_2915 to i64
; Matched:\<badref\>:  store i64 %var_2_4073, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_2916, i64* %RDX.i2239, align 8
%var_2_2917 = shl nsw i64 %var_2_2916, 3
%var_2_2918 = add i64 %var_2_2917, %var_2_2911
; Matched:%var_2_908:  %var_2_908 = add i64 %var_2_903, 13
; %var_2_2919 = add i64 %var_2_2908, 13
; Matched:\<badref\>:  store i64 %var_2_1814, i64* %PC, align 8
; store i64 %var_2_2919, i64* %var_2_3, align 8
%var_2_2920 = inttoptr i64 %var_2_2918 to i64*
%var_2_2921 = load i64, i64* %var_2_2920, align 8
store i64 %var_2_2921, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
; Matched:%var_2_1817:  %var_2_1817 = add i64 %var_2_1803, 17
; %var_2_2922 = add i64 %var_2_2908, 17
; Matched:\<badref\>:  store i64 %var_2_1817, i64* %PC, align 8
; store i64 %var_2_2922, i64* %var_2_3, align 8
%var_2_2923 = load i64, i64* %var_2_2910, align 8
; Matched:\<badref\>:  store i64 %var_2_3251, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_2923, i64* %RCX.i2236, align 8
%var_2_2924 = add i64 %var_2_2906, -40
; Matched:%var_2_1820:  %var_2_1820 = add i64 %var_2_1803, 21
; %var_2_2925 = add i64 %var_2_2908, 21
; Matched:\<badref\>:  store i64 %var_2_1820, i64* %PC, align 8
; store i64 %var_2_2925, i64* %var_2_3, align 8
%var_2_2926 = inttoptr i64 %var_2_2924 to i32*
%var_2_2927 = load i32, i32* %var_2_2926, align 4
%var_2_2928 = sext i32 %var_2_2927 to i64
; Matched:\<badref\>:  store i64 %var_2_3598, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_2928, i64* %RDX.i2239, align 8
%var_2_2929 = shl nsw i64 %var_2_2928, 3
%var_2_2930 = add i64 %var_2_2929, %var_2_2923
; Matched:%var_2_4312:  %var_2_4312 = add i64 %var_2_4291, 26
; %var_2_2931 = add i64 %var_2_2908, 26
; Matched:\<badref\>:  store i64 %var_2_2276, i64* %PC, align 8
; store i64 %var_2_2931, i64* %var_2_3, align 8
%var_2_2932 = bitcast i64 %var_2_2921 to double
%var_2_2933 = inttoptr i64 %var_2_2930 to double*
%var_2_2934 = load double, double* %var_2_2933, align 8
%var_2_2935 = fsub double %var_2_2932, %var_2_2934
store double %var_2_2935, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
; Matched:%var_2_3276:  %var_2_3276 = add i64 %var_2_3246, -168
; %var_2_2936 = add i64 %var_2_2906, -168
; Matched:%var_2_4207:  %var_2_4207 = add i64 %var_2_4178, 34
; %var_2_2937 = add i64 %var_2_2908, 34
; Matched:\<badref\>:  store i64 %var_2_4207, i64* %PC, align 8
; store i64 %var_2_2937, i64* %var_2_3, align 8
; Matched:%var_2_820:  %var_2_820 = inttoptr i64 %var_2_818 to double*
; %var_2_2938 = inttoptr i64 %var_2_2936 to double*
; Matched:\<badref\>:  store double %var_2_3275, double* %var_2_3278, align 8
; store double %var_2_2935, double* %var_2_2938, align 8
%var_2_2939 = load i64, i64* %RBP.i, align 8
%var_2_2940 = add i64 %var_2_2939, -16
%var_2_2941 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2030:  %var_2_2030 = add i64 %var_2_2029, 4
; %var_2_2942 = add i64 %var_2_2941, 4
; Matched:\<badref\>:  store i64 %var_2_2030, i64* %PC, align 8
; store i64 %var_2_2942, i64* %var_2_3, align 8
%var_2_2943 = inttoptr i64 %var_2_2940 to i64*
%var_2_2944 = load i64, i64* %var_2_2943, align 8
; Matched:\<badref\>:  store i64 %var_2_579, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_2944, i64* %RCX.i2236, align 8
%var_2_2945 = add i64 %var_2_2939, -36
; Matched:%var_2_2180:  %var_2_2180 = add i64 %var_2_2175, 7
; %var_2_2946 = add i64 %var_2_2941, 7
; Matched:\<badref\>:  store i64 %var_2_1954, i64* %PC, align 8
; store i64 %var_2_2946, i64* %var_2_3, align 8
%var_2_2947 = inttoptr i64 %var_2_2945 to i32*
%var_2_2948 = load i32, i32* %var_2_2947, align 4
%var_2_2949 = add i32 %var_2_2948, 1
; Matched:%var_2_4458:  %var_2_4458 = zext i32 %var_2_4457 to i64
; %var_2_2950 = zext i32 %var_2_2949 to i64
; Matched:\<badref\>:  store i64 %var_2_4458, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2950, i64* %RAX.i2224, align 8
; Matched:%var_2_4221:  %var_2_4221 = icmp eq i32 %var_2_4218, -1
; %var_2_2951 = icmp eq i32 %var_2_2948, -1
; Matched:%var_2_4222:  %var_2_4222 = icmp eq i32 %var_2_4219, 0
; %var_2_2952 = icmp eq i32 %var_2_2949, 0
; Matched:%var_2_4223:  %var_2_4223 = or i1 %var_2_4221, %var_2_4222
; %var_2_2953 = or i1 %var_2_2951, %var_2_2952
; Matched:%var_2_4224:  %var_2_4224 = zext i1 %var_2_4223 to i8
; %var_2_2954 = zext i1 %var_2_2953 to i8
; Matched:\<badref\>:  store i8 %var_2_4224, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_2954, i8* %var_2_14, align 1
; Matched:%var_2_4225:  %var_2_4225 = and i32 %var_2_4219, 255
; %var_2_2955 = and i32 %var_2_2949, 255
; Matched:%var_2_4226:  %var_2_4226 = tail call i32 @llvm.ctpop.i32(i32 %var_2_4225) #14
; %var_2_2956 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2955)
; Matched:%var_2_4227:  %var_2_4227 = trunc i32 %var_2_4226 to i8
; %var_2_2957 = trunc i32 %var_2_2956 to i8
; Matched:%var_2_2452:  %var_2_2452 = and i8 %var_2_2451, 1
; %var_2_2958 = and i8 %var_2_2957, 1
; Matched:%var_2_4467:  %var_2_4467 = xor i8 %var_2_4466, 1
; %var_2_2959 = xor i8 %var_2_2958, 1
; Matched:\<badref\>:  store i8 %var_2_2453, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_2959, i8* %var_2_21, align 1
; Matched:%var_2_4230:  %var_2_4230 = xor i32 %var_2_4219, %var_2_4218
; %var_2_2960 = xor i32 %var_2_2949, %var_2_2948
; Matched:%var_2_4231:  %var_2_4231 = lshr i32 %var_2_4230, 4
; %var_2_2961 = lshr i32 %var_2_2960, 4
; Matched:%var_2_4232:  %var_2_4232 = trunc i32 %var_2_4231 to i8
; %var_2_2962 = trunc i32 %var_2_2961 to i8
; Matched:%var_2_4233:  %var_2_4233 = and i8 %var_2_4232, 1
; %var_2_2963 = and i8 %var_2_2962, 1
; Matched:\<badref\>:  store i8 %var_2_4233, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_2963, i8* %var_2_27, align 1
; Matched:%var_2_4234:  %var_2_4234 = zext i1 %var_2_4222 to i8
; %var_2_2964 = zext i1 %var_2_2952 to i8
; Matched:\<badref\>:  store i8 %var_2_4234, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_2964, i8* %var_2_30, align 1
; Matched:%var_2_4122:  %var_2_4122 = lshr i32 %var_2_4106, 31
; %var_2_2965 = lshr i32 %var_2_2949, 31
; Matched:%var_2_4236:  %var_2_4236 = trunc i32 %var_2_4235 to i8
; %var_2_2966 = trunc i32 %var_2_2965 to i8
; Matched:\<badref\>:  store i8 %var_2_4236, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_2966, i8* %var_2_33, align 1
; Matched:%var_2_4237:  %var_2_4237 = lshr i32 %var_2_4218, 31
; %var_2_2967 = lshr i32 %var_2_2948, 31
; Matched:%var_2_2462:  %var_2_2462 = xor i32 %var_2_2459, %var_2_2461
; %var_2_2968 = xor i32 %var_2_2965, %var_2_2967
; Matched:%var_2_4477:  %var_2_4477 = add nuw nsw i32 %var_2_4476, %var_2_4473
; %var_2_2969 = add nuw nsw i32 %var_2_2968, %var_2_2965
; Matched:%var_2_2204:  %var_2_2204 = icmp eq i32 %var_2_2203, 2
; %var_2_2970 = icmp eq i32 %var_2_2969, 2
; Matched:%var_2_4479:  %var_2_4479 = zext i1 %var_2_4478 to i8
; %var_2_2971 = zext i1 %var_2_2970 to i8
; Matched:\<badref\>:  store i8 %var_2_2092, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_2971, i8* %var_2_39, align 1
%var_2_2972 = sext i32 %var_2_2949 to i64
; Matched:\<badref\>:  store i64 %var_2_2466, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_2972, i64* %RDX.i2239, align 8
%var_2_2973 = shl nsw i64 %var_2_2972, 3
%var_2_2974 = add i64 %var_2_2944, %var_2_2973
; Matched:%var_2_2209:  %var_2_2209 = add i64 %var_2_2175, 18
; %var_2_2975 = add i64 %var_2_2941, 18
; Matched:\<badref\>:  store i64 %var_2_2209, i64* %PC, align 8
; store i64 %var_2_2975, i64* %var_2_3, align 8
%var_2_2976 = inttoptr i64 %var_2_2974 to i64*
%var_2_2977 = load i64, i64* %var_2_2976, align 8
store i64 %var_2_2977, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
; Matched:%var_2_521:  %var_2_521 = add i64 %var_2_484, 22
; %var_2_2978 = add i64 %var_2_2941, 22
; Matched:\<badref\>:  store i64 %var_2_3909, i64* %PC, align 8
; store i64 %var_2_2978, i64* %var_2_3, align 8
%var_2_2979 = load i64, i64* %var_2_2943, align 8
; Matched:\<badref\>:  store i64 %var_2_3171, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_2979, i64* %RCX.i2236, align 8
%var_2_2980 = add i64 %var_2_2939, -40
; Matched:%var_2_524:  %var_2_524 = add i64 %var_2_484, 25
; %var_2_2981 = add i64 %var_2_2941, 25
; Matched:\<badref\>:  store i64 %var_2_3321, i64* %PC, align 8
; store i64 %var_2_2981, i64* %var_2_3, align 8
%var_2_2982 = inttoptr i64 %var_2_2980 to i32*
%var_2_2983 = load i32, i32* %var_2_2982, align 4
%var_2_2984 = add i32 %var_2_2983, 1
; Matched:%var_2_1250:  %var_2_1250 = zext i32 %var_2_1249 to i64
; %var_2_2985 = zext i32 %var_2_2984 to i64
; Matched:\<badref\>:  store i64 %var_2_4255, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2985, i64* %RAX.i2224, align 8
; Matched:%var_2_2107:  %var_2_2107 = icmp eq i32 %var_2_2104, -1
; %var_2_2986 = icmp eq i32 %var_2_2983, -1
; Matched:%var_2_2221:  %var_2_2221 = icmp eq i32 %var_2_2218, 0
; %var_2_2987 = icmp eq i32 %var_2_2984, 0
; Matched:%var_2_2222:  %var_2_2222 = or i1 %var_2_2220, %var_2_2221
; %var_2_2988 = or i1 %var_2_2986, %var_2_2987
; Matched:%var_2_2110:  %var_2_2110 = zext i1 %var_2_2109 to i8
; %var_2_2989 = zext i1 %var_2_2988 to i8
; Matched:\<badref\>:  store i8 %var_2_2110, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_2989, i8* %var_2_14, align 1
; Matched:%var_2_2111:  %var_2_2111 = and i32 %var_2_2105, 255
; %var_2_2990 = and i32 %var_2_2984, 255
; Matched:%var_2_2225:  %var_2_2225 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2224) #14
; %var_2_2991 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2990)
; Matched:%var_2_2226:  %var_2_2226 = trunc i32 %var_2_2225 to i8
; %var_2_2992 = trunc i32 %var_2_2991 to i8
; Matched:%var_2_2114:  %var_2_2114 = and i8 %var_2_2113, 1
; %var_2_2993 = and i8 %var_2_2992, 1
; Matched:%var_2_2115:  %var_2_2115 = xor i8 %var_2_2114, 1
; %var_2_2994 = xor i8 %var_2_2993, 1
; Matched:\<badref\>:  store i8 %var_2_2228, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_2994, i8* %var_2_21, align 1
; Matched:%var_2_2229:  %var_2_2229 = xor i32 %var_2_2218, %var_2_2217
; %var_2_2995 = xor i32 %var_2_2984, %var_2_2983
; Matched:%var_2_2117:  %var_2_2117 = lshr i32 %var_2_2116, 4
; %var_2_2996 = lshr i32 %var_2_2995, 4
; Matched:%var_2_4267:  %var_2_4267 = trunc i32 %var_2_4266 to i8
; %var_2_2997 = trunc i32 %var_2_2996 to i8
; Matched:%var_2_2232:  %var_2_2232 = and i8 %var_2_2231, 1
; %var_2_2998 = and i8 %var_2_2997, 1
; Matched:\<badref\>:  store i8 %var_2_2232, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_2998, i8* %var_2_27, align 1
; Matched:%var_2_2233:  %var_2_2233 = zext i1 %var_2_2221 to i8
; %var_2_2999 = zext i1 %var_2_2987 to i8
; Matched:\<badref\>:  store i8 %var_2_2233, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_2999, i8* %var_2_30, align 1
; Matched:%var_2_2234:  %var_2_2234 = lshr i32 %var_2_2218, 31
; %var_2_3000 = lshr i32 %var_2_2984, 31
; Matched:%var_2_2235:  %var_2_2235 = trunc i32 %var_2_2234 to i8
; %var_2_3001 = trunc i32 %var_2_3000 to i8
; Matched:\<badref\>:  store i8 %var_2_2235, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_3001, i8* %var_2_33, align 1
; Matched:%var_2_2236:  %var_2_2236 = lshr i32 %var_2_2217, 31
; %var_2_3002 = lshr i32 %var_2_2983, 31
; Matched:%var_2_2124:  %var_2_2124 = xor i32 %var_2_2121, %var_2_2123
; %var_2_3003 = xor i32 %var_2_3000, %var_2_3002
; Matched:%var_2_2238:  %var_2_2238 = add nuw nsw i32 %var_2_2237, %var_2_2234
; %var_2_3004 = add nuw nsw i32 %var_2_3003, %var_2_3000
; Matched:%var_2_1270:  %var_2_1270 = icmp eq i32 %var_2_1269, 2
; %var_2_3005 = icmp eq i32 %var_2_3004, 2
; Matched:%var_2_2240:  %var_2_2240 = zext i1 %var_2_2239 to i8
; %var_2_3006 = zext i1 %var_2_3005 to i8
; Matched:\<badref\>:  store i8 %var_2_2240, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_3006, i8* %var_2_39, align 1
%var_2_3007 = sext i32 %var_2_2984 to i64
; Matched:\<badref\>:  store i64 %var_2_1272, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_3007, i64* %RDX.i2239, align 8
%var_2_3008 = shl nsw i64 %var_2_3007, 3
%var_2_3009 = add i64 %var_2_2979, %var_2_3008
; Matched:%var_2_3011:  %var_2_3011 = add i64 %var_2_2942, 36
; %var_2_3010 = add i64 %var_2_2941, 36
; Matched:\<badref\>:  store i64 %var_2_2131, i64* %PC, align 8
; store i64 %var_2_3010, i64* %var_2_3, align 8
%var_2_3011 = bitcast i64 %var_2_2977 to double
%var_2_3012 = inttoptr i64 %var_2_3009 to double*
%var_2_3013 = load double, double* %var_2_3012, align 8
%var_2_3014 = fsub double %var_2_3011, %var_2_3013
store double %var_2_3014, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
; Matched:%var_2_2249:  %var_2_2249 = load i64, i64* %RBP, align 8
; %var_2_3015 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2250:  %var_2_2250 = add i64 %var_2_2249, -176
; %var_2_3016 = add i64 %var_2_3015, -176
; Matched:%var_2_2138:  %var_2_2138 = add i64 %var_2_2062, 44
; %var_2_3017 = add i64 %var_2_2941, 44
; Matched:\<badref\>:  store i64 %var_2_2251, i64* %PC, align 8
; store i64 %var_2_3017, i64* %var_2_3, align 8
; Matched:%var_2_900:  %var_2_900 = inttoptr i64 %var_2_898 to double*
; %var_2_3018 = inttoptr i64 %var_2_3016 to double*
; Matched:\<badref\>:  store double %var_2_4284, double* %var_2_4288, align 8
; store double %var_2_3014, double* %var_2_3018, align 8
%var_2_3019 = load i64, i64* %RBP.i, align 8
%var_2_3020 = add i64 %var_2_3019, -120
%var_2_3021 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_276:  %var_2_276 = add i64 %var_2_275, 5
; %var_2_3022 = add i64 %var_2_3021, 5
; Matched:\<badref\>:  store i64 %var_2_276, i64* %PC, align 8
; store i64 %var_2_3022, i64* %var_2_3, align 8
%var_2_3023 = inttoptr i64 %var_2_3020 to i64*
%var_2_3024 = load i64, i64* %var_2_3023, align 8
store i64 %var_2_3024, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
%var_2_3025 = add i64 %var_2_3019, -152
; Matched:%var_2_1452:  %var_2_1452 = add i64 %var_2_1441, 13
; %var_2_3026 = add i64 %var_2_3021, 13
; Matched:\<badref\>:  store i64 %var_2_1452, i64* %PC, align 8
; store i64 %var_2_3026, i64* %var_2_3, align 8
%var_2_3027 = bitcast i64 %var_2_3024 to double
%var_2_3028 = inttoptr i64 %var_2_3025 to double*
%var_2_3029 = load double, double* %var_2_3028, align 8
%var_2_3030 = fadd double %var_2_3027, %var_2_3029
store double %var_2_3030, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
%var_2_3031 = add i64 %var_2_3019, -16
; Matched:%var_2_465:  %var_2_465 = add i64 %var_2_451, 17
; %var_2_3032 = add i64 %var_2_3021, 17
; Matched:\<badref\>:  store i64 %var_2_465, i64* %PC, align 8
; store i64 %var_2_3032, i64* %var_2_3, align 8
%var_2_3033 = inttoptr i64 %var_2_3031 to i64*
%var_2_3034 = load i64, i64* %var_2_3033, align 8
; Matched:\<badref\>:  store i64 %var_2_3093, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_3034, i64* %RCX.i2236, align 8
%var_2_3035 = add i64 %var_2_3019, -28
; Matched:%var_2_3449:  %var_2_3449 = add i64 %var_2_3434, 21
; %var_2_3036 = add i64 %var_2_3021, 21
; Matched:\<badref\>:  store i64 %var_2_3449, i64* %PC, align 8
; store i64 %var_2_3036, i64* %var_2_3, align 8
%var_2_3037 = inttoptr i64 %var_2_3035 to i32*
%var_2_3038 = load i32, i32* %var_2_3037, align 4
%var_2_3039 = sext i32 %var_2_3038 to i64
; Matched:\<badref\>:  store i64 %var_2_4309, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_3039, i64* %RDX.i2239, align 8
; Matched:%var_2_922:  %var_2_922 = shl nsw i64 %var_2_921, 3
; %var_2_3040 = shl nsw i64 %var_2_3039, 3
; Matched:%var_2_3381:  %var_2_3381 = add i64 %var_2_3380, %var_2_3374
; %var_2_3041 = add i64 %var_2_3040, %var_2_3034
; Matched:%var_2_3862:  %var_2_3862 = add i64 %var_2_3839, 26
; %var_2_3042 = add i64 %var_2_3021, 26
; Matched:\<badref\>:  store i64 %var_2_924, i64* %PC, align 8
; store i64 %var_2_3042, i64* %var_2_3, align 8
; Matched:%var_2_3383:  %var_2_3383 = inttoptr i64 %var_2_3381 to double*
; %var_2_3043 = inttoptr i64 %var_2_3041 to double*
; Matched:\<badref\>:  store double %var_2_912, double* %var_2_925, align 8
; store double %var_2_3030, double* %var_2_3043, align 8
%var_2_3044 = load i64, i64* %RBP.i, align 8
%var_2_3045 = add i64 %var_2_3044, -128
%var_2_3046 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2504:  %var_2_2504 = add i64 %var_2_2503, 5
; %var_2_3047 = add i64 %var_2_3046, 5
; Matched:\<badref\>:  store i64 %var_2_2629, i64* %PC, align 8
; store i64 %var_2_3047, i64* %var_2_3, align 8
%var_2_3048 = inttoptr i64 %var_2_3045 to i64*
%var_2_3049 = load i64, i64* %var_2_3048, align 8
store i64 %var_2_3049, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
%var_2_3050 = add i64 %var_2_3044, -160
; Matched:%var_2_4383:  %var_2_4383 = add i64 %var_2_4378, 13
; %var_2_3051 = add i64 %var_2_3046, 13
; Matched:\<badref\>:  store i64 %var_2_4383, i64* %PC, align 8
; store i64 %var_2_3051, i64* %var_2_3, align 8
%var_2_3052 = bitcast i64 %var_2_3049 to double
%var_2_3053 = inttoptr i64 %var_2_3050 to double*
%var_2_3054 = load double, double* %var_2_3053, align 8
%var_2_3055 = fadd double %var_2_3052, %var_2_3054
store double %var_2_3055, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
%var_2_3056 = add i64 %var_2_3044, -16
; Matched:%var_2_4192:  %var_2_4192 = add i64 %var_2_4178, 17
; %var_2_3057 = add i64 %var_2_3046, 17
; Matched:\<badref\>:  store i64 %var_2_4192, i64* %PC, align 8
; store i64 %var_2_3057, i64* %var_2_3, align 8
%var_2_3058 = inttoptr i64 %var_2_3056 to i64*
%var_2_3059 = load i64, i64* %var_2_3058, align 8
; Matched:\<badref\>:  store i64 %var_2_635, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_3059, i64* %RCX.i2236, align 8
%var_2_3060 = add i64 %var_2_3044, -28
; Matched:%var_2_2295:  %var_2_2295 = add i64 %var_2_2280, 20
; %var_2_3061 = add i64 %var_2_3046, 20
; Matched:\<badref\>:  store i64 %var_2_2295, i64* %PC, align 8
; store i64 %var_2_3061, i64* %var_2_3, align 8
%var_2_3062 = inttoptr i64 %var_2_3060 to i32*
%var_2_3063 = load i32, i32* %var_2_3062, align 4
%var_2_3064 = add i32 %var_2_3063, 1
; Matched:%var_2_3881:  %var_2_3881 = zext i32 %var_2_3880 to i64
; %var_2_3065 = zext i32 %var_2_3064 to i64
; Matched:\<badref\>:  store i64 %var_2_4335, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_3065, i64* %RAX.i2224, align 8
; Matched:%var_2_3882:  %var_2_3882 = icmp eq i32 %var_2_3879, -1
; %var_2_3066 = icmp eq i32 %var_2_3063, -1
; Matched:%var_2_608:  %var_2_608 = icmp eq i32 %var_2_605, 0
; %var_2_3067 = icmp eq i32 %var_2_3064, 0
; Matched:%var_2_4338:  %var_2_4338 = or i1 %var_2_4336, %var_2_4337
; %var_2_3068 = or i1 %var_2_3066, %var_2_3067
; Matched:%var_2_3885:  %var_2_3885 = zext i1 %var_2_3884 to i8
; %var_2_3069 = zext i1 %var_2_3068 to i8
; Matched:\<badref\>:  store i8 %var_2_3885, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_3069, i8* %var_2_14, align 1
; Matched:%var_2_611:  %var_2_611 = and i32 %var_2_605, 255
; %var_2_3070 = and i32 %var_2_3064, 255
; Matched:%var_2_4000:  %var_2_4000 = tail call i32 @llvm.ctpop.i32(i32 %var_2_3999) #14
; %var_2_3071 = tail call i32 @llvm.ctpop.i32(i32 %var_2_3070)
; Matched:%var_2_4001:  %var_2_4001 = trunc i32 %var_2_4000 to i8
; %var_2_3072 = trunc i32 %var_2_3071 to i8
; Matched:%var_2_4343:  %var_2_4343 = and i8 %var_2_4342, 1
; %var_2_3073 = and i8 %var_2_3072, 1
; Matched:%var_2_4344:  %var_2_4344 = xor i8 %var_2_4343, 1
; %var_2_3074 = xor i8 %var_2_3073, 1
; Matched:\<badref\>:  store i8 %var_2_956, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_3074, i8* %var_2_21, align 1
; Matched:%var_2_957:  %var_2_957 = xor i32 %var_2_946, %var_2_945
; %var_2_3075 = xor i32 %var_2_3064, %var_2_3063
; Matched:%var_2_4005:  %var_2_4005 = lshr i32 %var_2_4004, 4
; %var_2_3076 = lshr i32 %var_2_3075, 4
; Matched:%var_2_4347:  %var_2_4347 = trunc i32 %var_2_4346 to i8
; %var_2_3077 = trunc i32 %var_2_3076 to i8
; Matched:%var_2_4348:  %var_2_4348 = and i8 %var_2_4347, 1
; %var_2_3078 = and i8 %var_2_3077, 1
; Matched:\<badref\>:  store i8 %var_2_4348, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_3078, i8* %var_2_27, align 1
; Matched:%var_2_3078:  %var_2_3078 = zext i1 %var_2_3066 to i8
; %var_2_3079 = zext i1 %var_2_3067 to i8
; Matched:\<badref\>:  store i8 %var_2_1859, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_3079, i8* %var_2_30, align 1
; Matched:%var_2_1860:  %var_2_1860 = lshr i32 %var_2_1844, 31
; %var_2_3080 = lshr i32 %var_2_3064, 31
; Matched:%var_2_4351:  %var_2_4351 = trunc i32 %var_2_4350 to i8
; %var_2_3081 = trunc i32 %var_2_3080 to i8
; Matched:\<badref\>:  store i8 %var_2_1974, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_3081, i8* %var_2_33, align 1
; Matched:%var_2_3422:  %var_2_3422 = lshr i32 %var_2_3403, 31
; %var_2_3082 = lshr i32 %var_2_3063, 31
; Matched:%var_2_4012:  %var_2_4012 = xor i32 %var_2_4009, %var_2_4011
; %var_2_3083 = xor i32 %var_2_3080, %var_2_3082
; Matched:%var_2_4013:  %var_2_4013 = add nuw nsw i32 %var_2_4012, %var_2_4009
; %var_2_3084 = add nuw nsw i32 %var_2_3083, %var_2_3080
; Matched:%var_2_4014:  %var_2_4014 = icmp eq i32 %var_2_4013, 2
; %var_2_3085 = icmp eq i32 %var_2_3084, 2
; Matched:%var_2_2320:  %var_2_2320 = zext i1 %var_2_2319 to i8
; %var_2_3086 = zext i1 %var_2_3085 to i8
; Matched:\<badref\>:  store i8 %var_2_2320, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_3086, i8* %var_2_39, align 1
%var_2_3087 = sext i32 %var_2_3064 to i64
; Matched:\<badref\>:  store i64 %var_2_4357, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_3087, i64* %RDX.i2239, align 8
; Matched:%var_2_970:  %var_2_970 = shl nsw i64 %var_2_969, 3
; %var_2_3088 = shl nsw i64 %var_2_3087, 3
; Matched:%var_2_2323:  %var_2_2323 = add i64 %var_2_2293, %var_2_2322
; %var_2_3089 = add i64 %var_2_3059, %var_2_3088
; Matched:%var_2_2324:  %var_2_2324 = add i64 %var_2_2280, 31
; %var_2_3090 = add i64 %var_2_3046, 31
; Matched:\<badref\>:  store i64 %var_2_2938, i64* %PC, align 8
; store i64 %var_2_3090, i64* %var_2_3, align 8
; Matched:%var_2_973:  %var_2_973 = inttoptr i64 %var_2_971 to double*
; %var_2_3091 = inttoptr i64 %var_2_3089 to double*
; Matched:\<badref\>:  store double %var_2_3395, double* %var_2_3431, align 8
; store double %var_2_3055, double* %var_2_3091, align 8
; Matched:%var_2_4362:  %var_2_4362 = load i64, i64* %RBP, align 8
; %var_2_3092 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2327:  %var_2_2327 = add i64 %var_2_2326, -152
; %var_2_3093 = add i64 %var_2_3092, -152
%var_2_3094 = load i64, i64* %var_2_3, align 8
%var_2_3095 = add i64 %var_2_3094, 8
store i64 %var_2_3095, i64* %var_2_3, align 8
; Matched:%var_2_2330:  %var_2_2330 = inttoptr i64 %var_2_2327 to i64*
; %var_2_3096 = inttoptr i64 %var_2_3093 to i64*
; Matched:%var_2_2331:  %var_2_2331 = load i64, i64* %var_2_2330, align 8
; %var_2_3097 = load i64, i64* %var_2_3096, align 8
; Matched:\<badref\>:  store i64 %var_2_2331, i64* %var_2_94, align 1, !tbaa !1285
; store i64 %var_2_3097, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
; Matched:%var_2_2332:  %var_2_2332 = add i64 %var_2_2326, -120
; %var_2_3098 = add i64 %var_2_3092, -120
; Matched:%var_2_1814:  %var_2_1814 = add i64 %var_2_1803, 13
; %var_2_3099 = add i64 %var_2_3094, 13
; Matched:\<badref\>:  store i64 %var_2_801, i64* %PC, align 8
; store i64 %var_2_3099, i64* %var_2_3, align 8
; Matched:%var_2_4370:  %var_2_4370 = inttoptr i64 %var_2_4368 to double*
; %var_2_3100 = inttoptr i64 %var_2_3098 to double*
; Matched:%var_2_2335:  %var_2_2335 = load double, double* %var_2_2334, align 8
; %var_2_3101 = load double, double* %var_2_3100, align 8
; Matched:%var_2_2336:  %var_2_2336 = bitcast i64 %var_2_2331 to double
; %var_2_3102 = bitcast i64 %var_2_3097 to double
; Matched:%var_2_2337:  %var_2_2337 = fsub double %var_2_2335, %var_2_2336
; %var_2_3103 = fsub double %var_2_3101, %var_2_3102
; Matched:\<badref\>:  store double %var_2_4373, double* %var_2_1623, align 1, !tbaa !1285
; store double %var_2_3103, double* %var_2_1053, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_1625, align 1, !tbaa !1285
; store i64 0, i64* %var_2_1055, align 1
; Matched:%var_2_2979:  %var_2_2979 = add i64 %var_2_2942, 22
; %var_2_3104 = add i64 %var_2_3094, 22
; Matched:\<badref\>:  store i64 %var_2_3205, i64* %PC, align 8
; store i64 %var_2_3104, i64* %var_2_3, align 8
; Matched:%var_2_4375:  %var_2_4375 = inttoptr i64 %var_2_4368 to double*
; %var_2_3105 = inttoptr i64 %var_2_3098 to double*
; Matched:\<badref\>:  store double %var_2_2337, double* %var_2_2339, align 8
; store double %var_2_3103, double* %var_2_3105, align 8
%var_2_3106 = load i64, i64* %RBP.i, align 8
%var_2_3107 = add i64 %var_2_3106, -160
%var_2_3108 = load i64, i64* %var_2_3, align 8
%var_2_3109 = add i64 %var_2_3108, 8
store i64 %var_2_3109, i64* %var_2_3, align 8
%var_2_3110 = inttoptr i64 %var_2_3107 to i64*
%var_2_3111 = load i64, i64* %var_2_3110, align 8
; Matched:\<badref\>:  store i64 %var_2_2345, i64* %var_2_94, align 1, !tbaa !1285
; store i64 %var_2_3111, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
; Matched:%var_2_2346:  %var_2_2346 = add i64 %var_2_2340, -128
; %var_2_3112 = add i64 %var_2_3106, -128
; Matched:%var_2_3259:  %var_2_3259 = add i64 %var_2_3248, 13
; %var_2_3113 = add i64 %var_2_3108, 13
; Matched:\<badref\>:  store i64 %var_2_3259, i64* %PC, align 8
; store i64 %var_2_3113, i64* %var_2_3, align 8
; Matched:%var_2_2348:  %var_2_2348 = inttoptr i64 %var_2_2346 to double*
; %var_2_3114 = inttoptr i64 %var_2_3112 to double*
; Matched:%var_2_2349:  %var_2_2349 = load double, double* %var_2_2348, align 8
; %var_2_3115 = load double, double* %var_2_3114, align 8
; Matched:%var_2_4386:  %var_2_4386 = bitcast i64 %var_2_4381 to double
; %var_2_3116 = bitcast i64 %var_2_3111 to double
; Matched:%var_2_2351:  %var_2_2351 = fsub double %var_2_2349, %var_2_2350
; %var_2_3117 = fsub double %var_2_3115, %var_2_3116
; Matched:\<badref\>:  store double %var_2_2351, double* %var_2_1623, align 1, !tbaa !1285
; store double %var_2_3117, double* %var_2_1053, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_1625, align 1, !tbaa !1285
; store i64 0, i64* %var_2_1055, align 1
; Matched:%var_2_2352:  %var_2_2352 = add i64 %var_2_2342, 22
; %var_2_3118 = add i64 %var_2_3108, 22
; Matched:\<badref\>:  store i64 %var_2_4022, i64* %PC, align 8
; store i64 %var_2_3118, i64* %var_2_3, align 8
; Matched:%var_2_2353:  %var_2_2353 = inttoptr i64 %var_2_2346 to double*
; %var_2_3119 = inttoptr i64 %var_2_3112 to double*
; Matched:\<badref\>:  store double %var_2_2351, double* %var_2_2353, align 8
; store double %var_2_3117, double* %var_2_3119, align 8
%var_2_3120 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_4391:  %var_2_4391 = add i64 %var_2_4390, -88
; %var_2_3121 = add i64 %var_2_3120, -88
%var_2_3122 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_3362:  %var_2_3362 = add i64 %var_2_3361, 5
; %var_2_3123 = add i64 %var_2_3122, 5
; Matched:\<badref\>:  store i64 %var_2_929, i64* %PC, align 8
; store i64 %var_2_3123, i64* %var_2_3, align 8
; Matched:%var_2_4394:  %var_2_4394 = inttoptr i64 %var_2_4391 to i64*
; %var_2_3124 = inttoptr i64 %var_2_3121 to i64*
; Matched:%var_2_4431:  %var_2_4431 = load i64, i64* %var_2_4430, align 8
; %var_2_3125 = load i64, i64* %var_2_3124, align 8
; Matched:\<badref\>:  store i64 %var_2_4431, i64* %var_2_94, align 1, !tbaa !1285
; store i64 %var_2_3125, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
; Matched:%var_2_4396:  %var_2_4396 = add i64 %var_2_4390, -120
; %var_2_3126 = add i64 %var_2_3120, -120
; Matched:%var_2_4397:  %var_2_4397 = add i64 %var_2_4392, 10
; %var_2_3127 = add i64 %var_2_3122, 10
; Matched:\<badref\>:  store i64 %var_2_4647, i64* %PC, align 8
; store i64 %var_2_3127, i64* %var_2_3, align 8
; Matched:%var_2_4398:  %var_2_4398 = bitcast i64 %var_2_4395 to double
; %var_2_3128 = bitcast i64 %var_2_3125 to double
; Matched:%var_2_4399:  %var_2_4399 = inttoptr i64 %var_2_4396 to double*
; %var_2_3129 = inttoptr i64 %var_2_3126 to double*
; Matched:%var_2_4400:  %var_2_4400 = load double, double* %var_2_4399, align 8
; %var_2_3130 = load double, double* %var_2_3129, align 8
; Matched:%var_2_4401:  %var_2_4401 = fmul double %var_2_4398, %var_2_4400
; %var_2_3131 = fmul double %var_2_3128, %var_2_3130
; Matched:\<badref\>:  store double %var_2_4401, double* %var_2_93, align 1, !tbaa !1285
; store double %var_2_3131, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
; Matched:%var_2_4402:  %var_2_4402 = add i64 %var_2_4390, -96
; %var_2_3132 = add i64 %var_2_3120, -96
; Matched:%var_2_2639:  %var_2_2639 = add i64 %var_2_2628, 15
; %var_2_3133 = add i64 %var_2_3122, 15
; Matched:\<badref\>:  store i64 %var_2_1203, i64* %PC, align 8
; store i64 %var_2_3133, i64* %var_2_3, align 8
; Matched:%var_2_4404:  %var_2_4404 = inttoptr i64 %var_2_4402 to i64*
; %var_2_3134 = inttoptr i64 %var_2_3132 to i64*
; Matched:%var_2_4441:  %var_2_4441 = load i64, i64* %var_2_4440, align 8
; %var_2_3135 = load i64, i64* %var_2_3134, align 8
; Matched:\<badref\>:  store i64 %var_2_4441, i64* %var_2_1624, align 1, !tbaa !1285
; store i64 %var_2_3135, i64* %var_2_1054, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_1626, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_1056, align 1
; Matched:%var_2_4406:  %var_2_4406 = add i64 %var_2_4390, -128
; %var_2_3136 = add i64 %var_2_3120, -128
; Matched:%var_2_4407:  %var_2_4407 = add i64 %var_2_4392, 20
; %var_2_3137 = add i64 %var_2_3122, 20
; Matched:\<badref\>:  store i64 %var_2_4407, i64* %PC, align 8
; store i64 %var_2_3137, i64* %var_2_3, align 8
; Matched:%var_2_4408:  %var_2_4408 = bitcast i64 %var_2_4405 to double
; %var_2_3138 = bitcast i64 %var_2_3135 to double
; Matched:%var_2_4409:  %var_2_4409 = inttoptr i64 %var_2_4406 to double*
; %var_2_3139 = inttoptr i64 %var_2_3136 to double*
; Matched:%var_2_4410:  %var_2_4410 = load double, double* %var_2_4409, align 8
; %var_2_3140 = load double, double* %var_2_3139, align 8
; Matched:%var_2_4411:  %var_2_4411 = fmul double %var_2_4408, %var_2_4410
; %var_2_3141 = fmul double %var_2_3138, %var_2_3140
; Matched:\<badref\>:  store double %var_2_4411, double* %var_2_1623, align 1, !tbaa !1285
; store double %var_2_3141, double* %var_2_1053, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_1625, align 1, !tbaa !1285
; store i64 0, i64* %var_2_1055, align 1
; Matched:%var_2_4412:  %var_2_4412 = fsub double %var_2_4401, %var_2_4411
; %var_2_3142 = fsub double %var_2_3131, %var_2_3141
; Matched:\<badref\>:  store double %var_2_4412, double* %var_2_93, align 1, !tbaa !1285
; store double %var_2_3142, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
%var_2_3143 = add i64 %var_2_3120, -16
; Matched:%var_2_2525:  %var_2_2525 = add i64 %var_2_2503, 28
; %var_2_3144 = add i64 %var_2_3122, 28
; Matched:\<badref\>:  store i64 %var_2_2378, i64* %PC, align 8
; store i64 %var_2_3144, i64* %var_2_3, align 8
%var_2_3145 = inttoptr i64 %var_2_3143 to i64*
%var_2_3146 = load i64, i64* %var_2_3145, align 8
; Matched:\<badref\>:  store i64 %var_2_3520, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_3146, i64* %RCX.i2236, align 8
%var_2_3147 = add i64 %var_2_3120, -36
; Matched:%var_2_4543:  %var_2_4543 = add i64 %var_2_4517, 32
; %var_2_3148 = add i64 %var_2_3122, 32
; Matched:\<badref\>:  store i64 %var_2_1221, i64* %PC, align 8
; store i64 %var_2_3148, i64* %var_2_3, align 8
%var_2_3149 = inttoptr i64 %var_2_3147 to i32*
%var_2_3150 = load i32, i32* %var_2_3149, align 4
%var_2_3151 = sext i32 %var_2_3150 to i64
; Matched:\<badref\>:  store i64 %var_2_4421, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_3151, i64* %RDX.i2239, align 8
; Matched:%var_2_4422:  %var_2_4422 = shl nsw i64 %var_2_4421, 3
; %var_2_3152 = shl nsw i64 %var_2_3151, 3
; Matched:%var_2_4423:  %var_2_4423 = add i64 %var_2_4422, %var_2_4416
; %var_2_3153 = add i64 %var_2_3152, %var_2_3146
; Matched:%var_2_2535:  %var_2_2535 = add i64 %var_2_2503, 37
; %var_2_3154 = add i64 %var_2_3122, 37
; Matched:\<badref\>:  store i64 %var_2_4549, i64* %PC, align 8
; store i64 %var_2_3154, i64* %var_2_3, align 8
; Matched:%var_2_4425:  %var_2_4425 = inttoptr i64 %var_2_4423 to double*
; %var_2_3155 = inttoptr i64 %var_2_3153 to double*
; Matched:\<badref\>:  store double %var_2_4412, double* %var_2_4425, align 8
; store double %var_2_3142, double* %var_2_3155, align 8
%var_2_3156 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_4427:  %var_2_4427 = add i64 %var_2_4426, -88
; %var_2_3157 = add i64 %var_2_3156, -88
%var_2_3158 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_904:  %var_2_904 = add i64 %var_2_903, 5
; %var_2_3159 = add i64 %var_2_3158, 5
; Matched:\<badref\>:  store i64 %var_2_1080, i64* %PC, align 8
; store i64 %var_2_3159, i64* %var_2_3, align 8
; Matched:%var_2_4430:  %var_2_4430 = inttoptr i64 %var_2_4427 to i64*
; %var_2_3160 = inttoptr i64 %var_2_3157 to i64*
; Matched:%var_2_4395:  %var_2_4395 = load i64, i64* %var_2_4394, align 8
; %var_2_3161 = load i64, i64* %var_2_3160, align 8
; Matched:\<badref\>:  store i64 %var_2_4395, i64* %var_2_94, align 1, !tbaa !1285
; store i64 %var_2_3161, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
; Matched:%var_2_4432:  %var_2_4432 = add i64 %var_2_4426, -128
; %var_2_3162 = add i64 %var_2_3156, -128
; Matched:%var_2_4433:  %var_2_4433 = add i64 %var_2_4428, 10
; %var_2_3163 = add i64 %var_2_3158, 10
; Matched:\<badref\>:  store i64 %var_2_1084, i64* %PC, align 8
; store i64 %var_2_3163, i64* %var_2_3, align 8
; Matched:%var_2_4434:  %var_2_4434 = bitcast i64 %var_2_4431 to double
; %var_2_3164 = bitcast i64 %var_2_3161 to double
; Matched:%var_2_4435:  %var_2_4435 = inttoptr i64 %var_2_4432 to double*
; %var_2_3165 = inttoptr i64 %var_2_3162 to double*
; Matched:%var_2_4436:  %var_2_4436 = load double, double* %var_2_4435, align 8
; %var_2_3166 = load double, double* %var_2_3165, align 8
; Matched:%var_2_4437:  %var_2_4437 = fmul double %var_2_4434, %var_2_4436
; %var_2_3167 = fmul double %var_2_3164, %var_2_3166
; Matched:\<badref\>:  store double %var_2_4437, double* %var_2_93, align 1, !tbaa !1285
; store double %var_2_3167, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
; Matched:%var_2_4438:  %var_2_4438 = add i64 %var_2_4426, -96
; %var_2_3168 = add i64 %var_2_3156, -96
; Matched:%var_2_4653:  %var_2_4653 = add i64 %var_2_4642, 15
; %var_2_3169 = add i64 %var_2_3158, 15
; Matched:\<badref\>:  store i64 %var_2_4528, i64* %PC, align 8
; store i64 %var_2_3169, i64* %var_2_3, align 8
; Matched:%var_2_4440:  %var_2_4440 = inttoptr i64 %var_2_4438 to i64*
; %var_2_3170 = inttoptr i64 %var_2_3168 to i64*
; Matched:%var_2_4405:  %var_2_4405 = load i64, i64* %var_2_4404, align 8
; %var_2_3171 = load i64, i64* %var_2_3170, align 8
; Matched:\<badref\>:  store i64 %var_2_4405, i64* %var_2_1624, align 1, !tbaa !1285
; store i64 %var_2_3171, i64* %var_2_1054, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_1626, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_1056, align 1
; Matched:%var_2_4442:  %var_2_4442 = add i64 %var_2_4426, -120
; %var_2_3172 = add i64 %var_2_3156, -120
; Matched:%var_2_2518:  %var_2_2518 = add i64 %var_2_2503, 20
; %var_2_3173 = add i64 %var_2_3158, 20
; Matched:\<badref\>:  store i64 %var_2_2518, i64* %PC, align 8
; store i64 %var_2_3173, i64* %var_2_3, align 8
; Matched:%var_2_4444:  %var_2_4444 = bitcast i64 %var_2_4441 to double
; %var_2_3174 = bitcast i64 %var_2_3171 to double
; Matched:%var_2_4445:  %var_2_4445 = inttoptr i64 %var_2_4442 to double*
; %var_2_3175 = inttoptr i64 %var_2_3172 to double*
; Matched:%var_2_4446:  %var_2_4446 = load double, double* %var_2_4445, align 8
; %var_2_3176 = load double, double* %var_2_3175, align 8
; Matched:%var_2_4447:  %var_2_4447 = fmul double %var_2_4444, %var_2_4446
; %var_2_3177 = fmul double %var_2_3174, %var_2_3176
; Matched:\<badref\>:  store double %var_2_4447, double* %var_2_1623, align 1, !tbaa !1285
; store double %var_2_3177, double* %var_2_1053, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_1625, align 1, !tbaa !1285
; store i64 0, i64* %var_2_1055, align 1
; Matched:%var_2_4448:  %var_2_4448 = fadd double %var_2_4437, %var_2_4447
; %var_2_3178 = fadd double %var_2_3167, %var_2_3177
; Matched:\<badref\>:  store double %var_2_4448, double* %var_2_93, align 1, !tbaa !1285
; store double %var_2_3178, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
%var_2_3179 = add i64 %var_2_3156, -16
; Matched:%var_2_4450:  %var_2_4450 = add i64 %var_2_4428, 28
; %var_2_3180 = add i64 %var_2_3158, 28
; Matched:\<badref\>:  store i64 %var_2_2561, i64* %PC, align 8
; store i64 %var_2_3180, i64* %var_2_3, align 8
%var_2_3181 = inttoptr i64 %var_2_3179 to i64*
%var_2_3182 = load i64, i64* %var_2_3181, align 8
; Matched:\<badref\>:  store i64 %var_2_713, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_3182, i64* %RCX.i2236, align 8
%var_2_3183 = add i64 %var_2_3156, -36
; Matched:%var_2_2565:  %var_2_2565 = add i64 %var_2_2539, 31
; %var_2_3184 = add i64 %var_2_3158, 31
; Matched:\<badref\>:  store i64 %var_2_2565, i64* %PC, align 8
; store i64 %var_2_3184, i64* %var_2_3, align 8
%var_2_3185 = inttoptr i64 %var_2_3183 to i32*
%var_2_3186 = load i32, i32* %var_2_3185, align 4
%var_2_3187 = add i32 %var_2_3186, 1
; Matched:%var_2_3478:  %var_2_3478 = zext i32 %var_2_3477 to i64
; %var_2_3188 = zext i32 %var_2_3187 to i64
; Matched:\<badref\>:  store i64 %var_2_3478, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_3188, i64* %RAX.i2224, align 8
; Matched:%var_2_4459:  %var_2_4459 = icmp eq i32 %var_2_4456, -1
; %var_2_3189 = icmp eq i32 %var_2_3186, -1
; Matched:%var_2_2073:  %var_2_2073 = icmp eq i32 %var_2_2070, 0
; %var_2_3190 = icmp eq i32 %var_2_3187, 0
; Matched:%var_2_2074:  %var_2_2074 = or i1 %var_2_2072, %var_2_2073
; %var_2_3191 = or i1 %var_2_3189, %var_2_3190
; Matched:%var_2_4462:  %var_2_4462 = zext i1 %var_2_4461 to i8
; %var_2_3192 = zext i1 %var_2_3191 to i8
; Matched:\<badref\>:  store i8 %var_2_4462, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_3192, i8* %var_2_14, align 1
; Matched:%var_2_2076:  %var_2_2076 = and i32 %var_2_2070, 255
; %var_2_3193 = and i32 %var_2_3187, 255
; Matched:%var_2_2077:  %var_2_2077 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2076) #14
; %var_2_3194 = tail call i32 @llvm.ctpop.i32(i32 %var_2_3193)
; Matched:%var_2_2078:  %var_2_2078 = trunc i32 %var_2_2077 to i8
; %var_2_3195 = trunc i32 %var_2_3194 to i8
; Matched:%var_2_2192:  %var_2_2192 = and i8 %var_2_2191, 1
; %var_2_3196 = and i8 %var_2_3195, 1
; Matched:%var_2_3487:  %var_2_3487 = xor i8 %var_2_3486, 1
; %var_2_3197 = xor i8 %var_2_3196, 1
; Matched:\<badref\>:  store i8 %var_2_2193, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_3197, i8* %var_2_21, align 1
; Matched:%var_2_2081:  %var_2_2081 = xor i32 %var_2_2070, %var_2_2069
; %var_2_3198 = xor i32 %var_2_3187, %var_2_3186
; Matched:%var_2_2082:  %var_2_2082 = lshr i32 %var_2_2081, 4
; %var_2_3199 = lshr i32 %var_2_3198, 4
; Matched:%var_2_2083:  %var_2_2083 = trunc i32 %var_2_2082 to i8
; %var_2_3200 = trunc i32 %var_2_3199 to i8
; Matched:%var_2_2084:  %var_2_2084 = and i8 %var_2_2083, 1
; %var_2_3201 = and i8 %var_2_3200, 1
; Matched:\<badref\>:  store i8 %var_2_2084, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_3201, i8* %var_2_27, align 1
; Matched:%var_2_4472:  %var_2_4472 = zext i1 %var_2_4460 to i8
; %var_2_3202 = zext i1 %var_2_3190 to i8
; Matched:\<badref\>:  store i8 %var_2_2198, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_3202, i8* %var_2_30, align 1
; Matched:%var_2_2086:  %var_2_2086 = lshr i32 %var_2_2070, 31
; %var_2_3203 = lshr i32 %var_2_3187, 31
; Matched:%var_2_2200:  %var_2_2200 = trunc i32 %var_2_2199 to i8
; %var_2_3204 = trunc i32 %var_2_3203 to i8
; Matched:\<badref\>:  store i8 %var_2_4474, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_3204, i8* %var_2_33, align 1
; Matched:%var_2_4475:  %var_2_4475 = lshr i32 %var_2_4456, 31
; %var_2_3205 = lshr i32 %var_2_3186, 31
; Matched:%var_2_2202:  %var_2_2202 = xor i32 %var_2_2199, %var_2_2201
; %var_2_3206 = xor i32 %var_2_3203, %var_2_3205
; Matched:%var_2_3497:  %var_2_3497 = add nuw nsw i32 %var_2_3496, %var_2_3493
; %var_2_3207 = add nuw nsw i32 %var_2_3206, %var_2_3203
; Matched:%var_2_1040:  %var_2_1040 = icmp eq i32 %var_2_1039, 2
; %var_2_3208 = icmp eq i32 %var_2_3207, 2
; Matched:%var_2_3499:  %var_2_3499 = zext i1 %var_2_3498 to i8
; %var_2_3209 = zext i1 %var_2_3208 to i8
; Matched:\<badref\>:  store i8 %var_2_3499, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_3209, i8* %var_2_39, align 1
%var_2_3210 = sext i32 %var_2_3187 to i64
; Matched:\<badref\>:  store i64 %var_2_3500, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_3210, i64* %RDX.i2239, align 8
; Matched:%var_2_4481:  %var_2_4481 = shl nsw i64 %var_2_4480, 3
; %var_2_3211 = shl nsw i64 %var_2_3210, 3
; Matched:%var_2_4482:  %var_2_4482 = add i64 %var_2_4452, %var_2_4481
; %var_2_3212 = add i64 %var_2_3182, %var_2_3211
; Matched:%var_2_2594:  %var_2_2594 = add i64 %var_2_2539, 42
; %var_2_3213 = add i64 %var_2_3158, 42
; Matched:\<badref\>:  store i64 %var_2_4608, i64* %PC, align 8
; store i64 %var_2_3213, i64* %var_2_3, align 8
; Matched:%var_2_4484:  %var_2_4484 = inttoptr i64 %var_2_4482 to double*
; %var_2_3214 = inttoptr i64 %var_2_3212 to double*
; Matched:\<badref\>:  store double %var_2_4448, double* %var_2_4484, align 8
; store double %var_2_3178, double* %var_2_3214, align 8
%var_2_3215 = load i64, i64* %RBP.i, align 8
%var_2_3216 = add i64 %var_2_3215, -136
%var_2_3217 = load i64, i64* %var_2_3, align 8
%var_2_3218 = add i64 %var_2_3217, 8
store i64 %var_2_3218, i64* %var_2_3, align 8
%var_2_3219 = inttoptr i64 %var_2_3216 to i64*
%var_2_3220 = load i64, i64* %var_2_3219, align 8
store i64 %var_2_3220, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
%var_2_3221 = add i64 %var_2_3215, -176
; Matched:%var_2_3512:  %var_2_3512 = add i64 %var_2_3507, 16
; %var_2_3222 = add i64 %var_2_3217, 16
; Matched:\<badref\>:  store i64 %var_2_3512, i64* %PC, align 8
; store i64 %var_2_3222, i64* %var_2_3, align 8
%var_2_3223 = bitcast i64 %var_2_3220 to double
%var_2_3224 = inttoptr i64 %var_2_3221 to double*
%var_2_3225 = load double, double* %var_2_3224, align 8
%var_2_3226 = fsub double %var_2_3223, %var_2_3225
store double %var_2_3226, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
; Matched:%var_2_4497:  %var_2_4497 = add i64 %var_2_4485, -120
; %var_2_3227 = add i64 %var_2_3215, -120
; Matched:%var_2_4306:  %var_2_4306 = add i64 %var_2_4291, 21
; %var_2_3228 = add i64 %var_2_3217, 21
; Matched:\<badref\>:  store i64 %var_2_4306, i64* %PC, align 8
; store i64 %var_2_3228, i64* %var_2_3, align 8
; Matched:%var_2_1061:  %var_2_1061 = inttoptr i64 %var_2_1059 to double*
; %var_2_3229 = inttoptr i64 %var_2_3227 to double*
; Matched:\<badref\>:  store double %var_2_1058, double* %var_2_1061, align 8
; store double %var_2_3226, double* %var_2_3229, align 8
%var_2_3230 = load i64, i64* %RBP.i, align 8
%var_2_3231 = add i64 %var_2_3230, -144
%var_2_3232 = load i64, i64* %var_2_3, align 8
%var_2_3233 = add i64 %var_2_3232, 8
store i64 %var_2_3233, i64* %var_2_3, align 8
%var_2_3234 = inttoptr i64 %var_2_3231 to i64*
%var_2_3235 = load i64, i64* %var_2_3234, align 8
store i64 %var_2_3235, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
%var_2_3236 = add i64 %var_2_3230, -168
; Matched:%var_2_4617:  %var_2_4617 = add i64 %var_2_4612, 16
; %var_2_3237 = add i64 %var_2_3232, 16
; Matched:\<badref\>:  store i64 %var_2_4617, i64* %PC, align 8
; store i64 %var_2_3237, i64* %var_2_3, align 8
%var_2_3238 = bitcast i64 %var_2_3235 to double
%var_2_3239 = inttoptr i64 %var_2_3236 to double*
%var_2_3240 = load double, double* %var_2_3239, align 8
%var_2_3241 = fadd double %var_2_3238, %var_2_3240
store double %var_2_3241, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
; Matched:%var_2_1074:  %var_2_1074 = add i64 %var_2_1062, -128
; %var_2_3242 = add i64 %var_2_3230, -128
; Matched:%var_2_2499:  %var_2_2499 = add i64 %var_2_2488, 21
; %var_2_3243 = add i64 %var_2_3232, 21
; Matched:\<badref\>:  store i64 %var_2_2270, i64* %PC, align 8
; store i64 %var_2_3243, i64* %var_2_3, align 8
; Matched:%var_2_1076:  %var_2_1076 = inttoptr i64 %var_2_1074 to double*
; %var_2_3244 = inttoptr i64 %var_2_3242 to double*
; Matched:\<badref\>:  store double %var_2_1073, double* %var_2_1076, align 8
; store double %var_2_3241, double* %var_2_3244, align 8
%var_2_3245 = load i64, i64* %RBP.i, align 8
%var_2_3246 = add i64 %var_2_3245, -72
%var_2_3247 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_4643:  %var_2_4643 = add i64 %var_2_4642, 5
; %var_2_3248 = add i64 %var_2_3247, 5
; Matched:\<badref\>:  store i64 %var_2_4554, i64* %PC, align 8
; store i64 %var_2_3248, i64* %var_2_3, align 8
%var_2_3249 = inttoptr i64 %var_2_3246 to i64*
%var_2_3250 = load i64, i64* %var_2_3249, align 8
; Matched:\<badref\>:  store i64 %var_2_4520, i64* %var_2_94, align 1, !tbaa !1285
; store i64 %var_2_3250, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
; Matched:%var_2_4521:  %var_2_4521 = add i64 %var_2_4515, -120
; %var_2_3251 = add i64 %var_2_3245, -120
; Matched:%var_2_4647:  %var_2_4647 = add i64 %var_2_4642, 10
; %var_2_3252 = add i64 %var_2_3247, 10
; Matched:\<badref\>:  store i64 %var_2_4433, i64* %PC, align 8
; store i64 %var_2_3252, i64* %var_2_3, align 8
; Matched:%var_2_4523:  %var_2_4523 = bitcast i64 %var_2_4520 to double
; %var_2_3253 = bitcast i64 %var_2_3250 to double
; Matched:%var_2_4524:  %var_2_4524 = inttoptr i64 %var_2_4521 to double*
; %var_2_3254 = inttoptr i64 %var_2_3251 to double*
; Matched:%var_2_4525:  %var_2_4525 = load double, double* %var_2_4524, align 8
; %var_2_3255 = load double, double* %var_2_3254, align 8
; Matched:%var_2_2512:  %var_2_2512 = fmul double %var_2_2509, %var_2_2511
; %var_2_3256 = fmul double %var_2_3253, %var_2_3255
; Matched:\<badref\>:  store double %var_2_2512, double* %var_2_93, align 1, !tbaa !1285
; store double %var_2_3256, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
%var_2_3257 = add i64 %var_2_3245, -80
; Matched:%var_2_2675:  %var_2_2675 = add i64 %var_2_2664, 15
; %var_2_3258 = add i64 %var_2_3247, 15
; Matched:\<badref\>:  store i64 %var_2_2550, i64* %PC, align 8
; store i64 %var_2_3258, i64* %var_2_3, align 8
%var_2_3259 = inttoptr i64 %var_2_3257 to i64*
%var_2_3260 = load i64, i64* %var_2_3259, align 8
; Matched:\<badref\>:  store i64 %var_2_4566, i64* %var_2_1624, align 1, !tbaa !1285
; store i64 %var_2_3260, i64* %var_2_1054, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_1626, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_1056, align 1
; Matched:%var_2_4531:  %var_2_4531 = add i64 %var_2_4515, -128
; %var_2_3261 = add i64 %var_2_3245, -128
; Matched:%var_2_3474:  %var_2_3474 = add i64 %var_2_3459, 20
; %var_2_3262 = add i64 %var_2_3247, 20
; Matched:\<badref\>:  store i64 %var_2_3474, i64* %PC, align 8
; store i64 %var_2_3262, i64* %var_2_3, align 8
; Matched:%var_2_4533:  %var_2_4533 = bitcast i64 %var_2_4530 to double
; %var_2_3263 = bitcast i64 %var_2_3260 to double
; Matched:%var_2_4534:  %var_2_4534 = inttoptr i64 %var_2_4531 to double*
; %var_2_3264 = inttoptr i64 %var_2_3261 to double*
; Matched:%var_2_4535:  %var_2_4535 = load double, double* %var_2_4534, align 8
; %var_2_3265 = load double, double* %var_2_3264, align 8
; Matched:%var_2_2522:  %var_2_2522 = fmul double %var_2_2519, %var_2_2521
; %var_2_3266 = fmul double %var_2_3263, %var_2_3265
; Matched:\<badref\>:  store double %var_2_2522, double* %var_2_1623, align 1, !tbaa !1285
; store double %var_2_3266, double* %var_2_1053, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_1625, align 1, !tbaa !1285
; store i64 0, i64* %var_2_1055, align 1
; Matched:%var_2_2523:  %var_2_2523 = fsub double %var_2_2512, %var_2_2522
; %var_2_3267 = fsub double %var_2_3256, %var_2_3266
; Matched:\<badref\>:  store double %var_2_2523, double* %var_2_93, align 1, !tbaa !1285
; store double %var_2_3267, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
%var_2_3268 = add i64 %var_2_3245, -16
; Matched:%var_2_2650:  %var_2_2650 = add i64 %var_2_2628, 28
; %var_2_3269 = add i64 %var_2_3247, 28
; Matched:\<badref\>:  store i64 %var_2_2650, i64* %PC, align 8
; store i64 %var_2_3269, i64* %var_2_3, align 8
%var_2_3270 = inttoptr i64 %var_2_3268 to i64*
%var_2_3271 = load i64, i64* %var_2_3270, align 8
; Matched:\<badref\>:  store i64 %var_2_916, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_3271, i64* %RCX.i2236, align 8
%var_2_3272 = add i64 %var_2_3245, -32
; Matched:%var_2_2654:  %var_2_2654 = add i64 %var_2_2628, 32
; %var_2_3273 = add i64 %var_2_3247, 32
; Matched:\<badref\>:  store i64 %var_2_4668, i64* %PC, align 8
; store i64 %var_2_3273, i64* %var_2_3, align 8
%var_2_3274 = inttoptr i64 %var_2_3272 to i32*
%var_2_3275 = load i32, i32* %var_2_3274, align 4
%var_2_3276 = sext i32 %var_2_3275 to i64
; Matched:\<badref\>:  store i64 %var_2_3525, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_3276, i64* %RDX.i2239, align 8
; Matched:%var_2_2533:  %var_2_2533 = shl nsw i64 %var_2_2532, 3
; %var_2_3277 = shl nsw i64 %var_2_3276, 3
; Matched:%var_2_2534:  %var_2_2534 = add i64 %var_2_2533, %var_2_2527
; %var_2_3278 = add i64 %var_2_3277, %var_2_3271
; Matched:%var_2_4674:  %var_2_4674 = add i64 %var_2_4642, 37
; %var_2_3279 = add i64 %var_2_3247, 37
; Matched:\<badref\>:  store i64 %var_2_1160, i64* %PC, align 8
; store i64 %var_2_3279, i64* %var_2_3, align 8
; Matched:%var_2_4550:  %var_2_4550 = inttoptr i64 %var_2_4548 to double*
; %var_2_3280 = inttoptr i64 %var_2_3278 to double*
; Matched:\<badref\>:  store double %var_2_2523, double* %var_2_2536, align 8
; store double %var_2_3267, double* %var_2_3280, align 8
%var_2_3281 = load i64, i64* %RBP.i, align 8
%var_2_3282 = add i64 %var_2_3281, -72
%var_2_3283 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2281:  %var_2_2281 = add i64 %var_2_2280, 5
; %var_2_3284 = add i64 %var_2_3283, 5
; Matched:\<badref\>:  store i64 %var_2_2281, i64* %PC, align 8
; store i64 %var_2_3284, i64* %var_2_3, align 8
%var_2_3285 = inttoptr i64 %var_2_3282 to i64*
%var_2_3286 = load i64, i64* %var_2_3285, align 8
; Matched:\<badref\>:  store i64 %var_2_1228, i64* %var_2_94, align 1, !tbaa !1285
; store i64 %var_2_3286, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
; Matched:%var_2_4557:  %var_2_4557 = add i64 %var_2_4551, -128
; %var_2_3287 = add i64 %var_2_3281, -128
; Matched:%var_2_1476:  %var_2_1476 = add i64 %var_2_1469, 10
; %var_2_3288 = add i64 %var_2_3283, 10
; Matched:\<badref\>:  store i64 %var_2_1476, i64* %PC, align 8
; store i64 %var_2_3288, i64* %var_2_3, align 8
; Matched:%var_2_4559:  %var_2_4559 = bitcast i64 %var_2_4556 to double
; %var_2_3289 = bitcast i64 %var_2_3286 to double
; Matched:%var_2_4560:  %var_2_4560 = inttoptr i64 %var_2_4557 to double*
; %var_2_3290 = inttoptr i64 %var_2_3287 to double*
; Matched:%var_2_4561:  %var_2_4561 = load double, double* %var_2_4560, align 8
; %var_2_3291 = load double, double* %var_2_3290, align 8
; Matched:%var_2_2548:  %var_2_2548 = fmul double %var_2_2545, %var_2_2547
; %var_2_3292 = fmul double %var_2_3289, %var_2_3291
; Matched:\<badref\>:  store double %var_2_2548, double* %var_2_93, align 1, !tbaa !1285
; store double %var_2_3292, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
%var_2_3293 = add i64 %var_2_3281, -80
; Matched:%var_2_4689:  %var_2_4689 = add i64 %var_2_4678, 15
; %var_2_3294 = add i64 %var_2_3283, 15
; Matched:\<badref\>:  store i64 %var_2_4564, i64* %PC, align 8
; store i64 %var_2_3294, i64* %var_2_3, align 8
%var_2_3295 = inttoptr i64 %var_2_3293 to i64*
%var_2_3296 = load i64, i64* %var_2_3295, align 8
; Matched:\<badref\>:  store i64 %var_2_2516, i64* %var_2_1624, align 1, !tbaa !1285
; store i64 %var_2_3296, i64* %var_2_1054, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_1626, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_1056, align 1
; Matched:%var_2_4567:  %var_2_4567 = add i64 %var_2_4551, -120
; %var_2_3297 = add i64 %var_2_3281, -120
; Matched:%var_2_4657:  %var_2_4657 = add i64 %var_2_4642, 20
; %var_2_3298 = add i64 %var_2_3283, 20
; Matched:\<badref\>:  store i64 %var_2_4657, i64* %PC, align 8
; store i64 %var_2_3298, i64* %var_2_3, align 8
; Matched:%var_2_4569:  %var_2_4569 = bitcast i64 %var_2_4566 to double
; %var_2_3299 = bitcast i64 %var_2_3296 to double
; Matched:%var_2_4570:  %var_2_4570 = inttoptr i64 %var_2_4567 to double*
; %var_2_3300 = inttoptr i64 %var_2_3297 to double*
; Matched:%var_2_4571:  %var_2_4571 = load double, double* %var_2_4570, align 8
; %var_2_3301 = load double, double* %var_2_3300, align 8
; Matched:%var_2_2558:  %var_2_2558 = fmul double %var_2_2555, %var_2_2557
; %var_2_3302 = fmul double %var_2_3299, %var_2_3301
; Matched:\<badref\>:  store double %var_2_2558, double* %var_2_1623, align 1, !tbaa !1285
; store double %var_2_3302, double* %var_2_1053, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_1625, align 1, !tbaa !1285
; store i64 0, i64* %var_2_1055, align 1
; Matched:%var_2_2559:  %var_2_2559 = fadd double %var_2_2548, %var_2_2558
; %var_2_3303 = fadd double %var_2_3292, %var_2_3302
; Matched:\<badref\>:  store double %var_2_2559, double* %var_2_93, align 1, !tbaa !1285
; store double %var_2_3303, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
%var_2_3304 = add i64 %var_2_3281, -16
; Matched:%var_2_2686:  %var_2_2686 = add i64 %var_2_2664, 28
; %var_2_3305 = add i64 %var_2_3283, 28
; Matched:\<badref\>:  store i64 %var_2_2686, i64* %PC, align 8
; store i64 %var_2_3305, i64* %var_2_3, align 8
%var_2_3306 = inttoptr i64 %var_2_3304 to i64*
%var_2_3307 = load i64, i64* %var_2_3306, align 8
; Matched:\<badref\>:  store i64 %var_2_3319, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_3307, i64* %RCX.i2236, align 8
%var_2_3308 = add i64 %var_2_3281, -32
; Matched:%var_2_3868:  %var_2_3868 = add i64 %var_2_3839, 31
; %var_2_3309 = add i64 %var_2_3283, 31
; Matched:\<badref\>:  store i64 %var_2_3868, i64* %PC, align 8
; store i64 %var_2_3309, i64* %var_2_3, align 8
%var_2_3310 = inttoptr i64 %var_2_3308 to i32*
%var_2_3311 = load i32, i32* %var_2_3310, align 4
%var_2_3312 = add i32 %var_2_3311, 1
; Matched:%var_2_3916:  %var_2_3916 = zext i32 %var_2_3915 to i64
; %var_2_3313 = zext i32 %var_2_3312 to i64
; Matched:\<badref\>:  store i64 %var_2_3916, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_3313, i64* %RAX.i2224, align 8
; Matched:%var_2_3917:  %var_2_3917 = icmp eq i32 %var_2_3914, -1
; %var_2_3314 = icmp eq i32 %var_2_3311, -1
; Matched:%var_2_643:  %var_2_643 = icmp eq i32 %var_2_640, 0
; %var_2_3315 = icmp eq i32 %var_2_3312, 0
; Matched:%var_2_644:  %var_2_644 = or i1 %var_2_642, %var_2_643
; %var_2_3316 = or i1 %var_2_3314, %var_2_3315
; Matched:%var_2_3920:  %var_2_3920 = zext i1 %var_2_3919 to i8
; %var_2_3317 = zext i1 %var_2_3316 to i8
; Matched:\<badref\>:  store i8 %var_2_4033, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_3317, i8* %var_2_14, align 1
; Matched:%var_2_4034:  %var_2_4034 = and i32 %var_2_4028, 255
; %var_2_3318 = and i32 %var_2_3312, 255
; Matched:%var_2_3922:  %var_2_3922 = tail call i32 @llvm.ctpop.i32(i32 %var_2_3921) #14
; %var_2_3319 = tail call i32 @llvm.ctpop.i32(i32 %var_2_3318)
; Matched:%var_2_3923:  %var_2_3923 = trunc i32 %var_2_3922 to i8
; %var_2_3320 = trunc i32 %var_2_3319 to i8
; Matched:%var_2_4037:  %var_2_4037 = and i8 %var_2_4036, 1
; %var_2_3321 = and i8 %var_2_3320, 1
; Matched:%var_2_4038:  %var_2_4038 = xor i8 %var_2_4037, 1
; %var_2_3322 = xor i8 %var_2_3321, 1
; Matched:\<badref\>:  store i8 %var_2_3925, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_3322, i8* %var_2_21, align 1
; Matched:%var_2_4593:  %var_2_4593 = xor i32 %var_2_4582, %var_2_4581
; %var_2_3323 = xor i32 %var_2_3312, %var_2_3311
; Matched:%var_2_652:  %var_2_652 = lshr i32 %var_2_651, 4
; %var_2_3324 = lshr i32 %var_2_3323, 4
; Matched:%var_2_4595:  %var_2_4595 = trunc i32 %var_2_4594 to i8
; %var_2_3325 = trunc i32 %var_2_3324 to i8
; Matched:%var_2_4596:  %var_2_4596 = and i8 %var_2_4595, 1
; %var_2_3326 = and i8 %var_2_3325, 1
; Matched:\<badref\>:  store i8 %var_2_4596, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_3326, i8* %var_2_27, align 1
; Matched:%var_2_3930:  %var_2_3930 = zext i1 %var_2_3918 to i8
; %var_2_3327 = zext i1 %var_2_3315 to i8
; Matched:\<badref\>:  store i8 %var_2_3930, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_3327, i8* %var_2_30, align 1
; Matched:%var_2_3931:  %var_2_3931 = lshr i32 %var_2_3915, 31
; %var_2_3328 = lshr i32 %var_2_3312, 31
; Matched:%var_2_3567:  %var_2_3567 = trunc i32 %var_2_3566 to i8
; %var_2_3329 = trunc i32 %var_2_3328 to i8
; Matched:\<badref\>:  store i8 %var_2_544, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_3329, i8* %var_2_33, align 1
; Matched:%var_2_3933:  %var_2_3933 = lshr i32 %var_2_3914, 31
; %var_2_3330 = lshr i32 %var_2_3311, 31
; Matched:%var_2_3934:  %var_2_3934 = xor i32 %var_2_3931, %var_2_3933
; %var_2_3331 = xor i32 %var_2_3328, %var_2_3330
; Matched:%var_2_3935:  %var_2_3935 = add nuw nsw i32 %var_2_3934, %var_2_3931
; %var_2_3332 = add nuw nsw i32 %var_2_3331, %var_2_3328
; Matched:%var_2_548:  %var_2_548 = icmp eq i32 %var_2_547, 2
; %var_2_3333 = icmp eq i32 %var_2_3332, 2
; Matched:%var_2_662:  %var_2_662 = zext i1 %var_2_661 to i8
; %var_2_3334 = zext i1 %var_2_3333 to i8
; Matched:\<badref\>:  store i8 %var_2_4604, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_3334, i8* %var_2_39, align 1
%var_2_3335 = sext i32 %var_2_3312 to i64
; Matched:\<badref\>:  store i64 %var_2_4051, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_3335, i64* %RDX.i2239, align 8
; Matched:%var_2_2592:  %var_2_2592 = shl nsw i64 %var_2_2591, 3
; %var_2_3336 = shl nsw i64 %var_2_3335, 3
; Matched:%var_2_4607:  %var_2_4607 = add i64 %var_2_4577, %var_2_4606
; %var_2_3337 = add i64 %var_2_3307, %var_2_3336
; Matched:%var_2_2719:  %var_2_2719 = add i64 %var_2_2664, 42
; %var_2_3338 = add i64 %var_2_3283, 42
; Matched:\<badref\>:  store i64 %var_2_4733, i64* %PC, align 8
; store i64 %var_2_3338, i64* %var_2_3, align 8
; Matched:%var_2_4609:  %var_2_4609 = inttoptr i64 %var_2_4607 to double*
; %var_2_3339 = inttoptr i64 %var_2_3337 to double*
; Matched:\<badref\>:  store double %var_2_4573, double* %var_2_4609, align 8
; store double %var_2_3303, double* %var_2_3339, align 8
%var_2_3340 = load i64, i64* %RBP.i, align 8
%var_2_3341 = add i64 %var_2_3340, -136
%var_2_3342 = load i64, i64* %var_2_3, align 8
%var_2_3343 = add i64 %var_2_3342, 8
store i64 %var_2_3343, i64* %var_2_3, align 8
%var_2_3344 = inttoptr i64 %var_2_3341 to i64*
%var_2_3345 = load i64, i64* %var_2_3344, align 8
store i64 %var_2_3345, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
%var_2_3346 = add i64 %var_2_3340, -176
; Matched:%var_2_1069:  %var_2_1069 = add i64 %var_2_1064, 16
; %var_2_3347 = add i64 %var_2_3342, 16
; Matched:\<badref\>:  store i64 %var_2_1069, i64* %PC, align 8
; store i64 %var_2_3347, i64* %var_2_3, align 8
%var_2_3348 = bitcast i64 %var_2_3345 to double
%var_2_3349 = inttoptr i64 %var_2_3346 to double*
%var_2_3350 = load double, double* %var_2_3349, align 8
%var_2_3351 = fadd double %var_2_3348, %var_2_3350
store double %var_2_3351, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
; Matched:%var_2_2608:  %var_2_2608 = add i64 %var_2_2596, -120
; %var_2_3352 = add i64 %var_2_3340, -120
; Matched:%var_2_3152:  %var_2_3152 = add i64 %var_2_3135, 21
; %var_2_3353 = add i64 %var_2_3342, 21
; Matched:\<badref\>:  store i64 %var_2_3152, i64* %PC, align 8
; store i64 %var_2_3353, i64* %var_2_3, align 8
; Matched:%var_2_2610:  %var_2_2610 = inttoptr i64 %var_2_2608 to double*
; %var_2_3354 = inttoptr i64 %var_2_3352 to double*
; Matched:\<badref\>:  store double %var_2_4621, double* %var_2_4624, align 8
; store double %var_2_3351, double* %var_2_3354, align 8
%var_2_3355 = load i64, i64* %RBP.i, align 8
%var_2_3356 = add i64 %var_2_3355, -144
%var_2_3357 = load i64, i64* %var_2_3, align 8
%var_2_3358 = add i64 %var_2_3357, 8
store i64 %var_2_3358, i64* %var_2_3, align 8
%var_2_3359 = inttoptr i64 %var_2_3356 to i64*
%var_2_3360 = load i64, i64* %var_2_3359, align 8
store i64 %var_2_3360, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
%var_2_3361 = add i64 %var_2_3355, -168
; Matched:%var_2_1054:  %var_2_1054 = add i64 %var_2_1049, 16
; %var_2_3362 = add i64 %var_2_3357, 16
; Matched:\<badref\>:  store i64 %var_2_1054, i64* %PC, align 8
; store i64 %var_2_3362, i64* %var_2_3, align 8
%var_2_3363 = bitcast i64 %var_2_3360 to double
%var_2_3364 = inttoptr i64 %var_2_3361 to double*
%var_2_3365 = load double, double* %var_2_3364, align 8
%var_2_3366 = fsub double %var_2_3363, %var_2_3365
store double %var_2_3366, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
; Matched:%var_2_2623:  %var_2_2623 = add i64 %var_2_2611, -128
; %var_2_3367 = add i64 %var_2_3355, -128
; Matched:%var_2_468:  %var_2_468 = add i64 %var_2_451, 21
; %var_2_3368 = add i64 %var_2_3357, 21
; Matched:\<badref\>:  store i64 %var_2_468, i64* %PC, align 8
; store i64 %var_2_3368, i64* %var_2_3, align 8
; Matched:%var_2_2625:  %var_2_2625 = inttoptr i64 %var_2_2623 to double*
; %var_2_3369 = inttoptr i64 %var_2_3367 to double*
; Matched:\<badref\>:  store double %var_2_2622, double* %var_2_2625, align 8
; store double %var_2_3366, double* %var_2_3369, align 8
%var_2_3370 = load i64, i64* %RBP.i, align 8
%var_2_3371 = add i64 %var_2_3370, -104
%var_2_3372 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_4317:  %var_2_4317 = add i64 %var_2_4316, 5
; %var_2_3373 = add i64 %var_2_3372, 5
; Matched:\<badref\>:  store i64 %var_2_2357, i64* %PC, align 8
; store i64 %var_2_3373, i64* %var_2_3, align 8
%var_2_3374 = inttoptr i64 %var_2_3371 to i64*
%var_2_3375 = load i64, i64* %var_2_3374, align 8
; Matched:\<badref\>:  store i64 %var_2_2631, i64* %var_2_94, align 1, !tbaa !1285
; store i64 %var_2_3375, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
; Matched:%var_2_4646:  %var_2_4646 = add i64 %var_2_4640, -120
; %var_2_3376 = add i64 %var_2_3370, -120
; Matched:%var_2_310:  %var_2_310 = add i64 %var_2_303, 10
; %var_2_3377 = add i64 %var_2_3372, 10
; Matched:\<badref\>:  store i64 %var_2_2669, i64* %PC, align 8
; store i64 %var_2_3377, i64* %var_2_3, align 8
; Matched:%var_2_2634:  %var_2_2634 = bitcast i64 %var_2_2631 to double
; %var_2_3378 = bitcast i64 %var_2_3375 to double
; Matched:%var_2_4649:  %var_2_4649 = inttoptr i64 %var_2_4646 to double*
; %var_2_3379 = inttoptr i64 %var_2_3376 to double*
; Matched:%var_2_2636:  %var_2_2636 = load double, double* %var_2_2635, align 8
; %var_2_3380 = load double, double* %var_2_3379, align 8
; Matched:%var_2_2637:  %var_2_2637 = fmul double %var_2_2634, %var_2_2636
; %var_2_3381 = fmul double %var_2_3378, %var_2_3380
; Matched:\<badref\>:  store double %var_2_4651, double* %var_2_93, align 1, !tbaa !1285
; store double %var_2_3381, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
%var_2_3382 = add i64 %var_2_3370, -112
; Matched:%var_2_4528:  %var_2_4528 = add i64 %var_2_4517, 15
; %var_2_3383 = add i64 %var_2_3372, 15
; Matched:\<badref\>:  store i64 %var_2_4403, i64* %PC, align 8
; store i64 %var_2_3383, i64* %var_2_3, align 8
%var_2_3384 = inttoptr i64 %var_2_3382 to i64*
%var_2_3385 = load i64, i64* %var_2_3384, align 8
; Matched:\<badref\>:  store i64 %var_2_2641, i64* %var_2_1624, align 1, !tbaa !1285
; store i64 %var_2_3385, i64* %var_2_1054, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_1626, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_1056, align 1
; Matched:%var_2_4656:  %var_2_4656 = add i64 %var_2_4640, -128
; %var_2_3386 = add i64 %var_2_3370, -128
; Matched:%var_2_4532:  %var_2_4532 = add i64 %var_2_4517, 20
; %var_2_3387 = add i64 %var_2_3372, 20
; Matched:\<badref\>:  store i64 %var_2_4532, i64* %PC, align 8
; store i64 %var_2_3387, i64* %var_2_3, align 8
; Matched:%var_2_2644:  %var_2_2644 = bitcast i64 %var_2_2641 to double
; %var_2_3388 = bitcast i64 %var_2_3385 to double
; Matched:%var_2_4659:  %var_2_4659 = inttoptr i64 %var_2_4656 to double*
; %var_2_3389 = inttoptr i64 %var_2_3386 to double*
; Matched:%var_2_2646:  %var_2_2646 = load double, double* %var_2_2645, align 8
; %var_2_3390 = load double, double* %var_2_3389, align 8
; Matched:%var_2_2647:  %var_2_2647 = fmul double %var_2_2644, %var_2_2646
; %var_2_3391 = fmul double %var_2_3388, %var_2_3390
; Matched:\<badref\>:  store double %var_2_4661, double* %var_2_1623, align 1, !tbaa !1285
; store double %var_2_3391, double* %var_2_1053, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_1625, align 1, !tbaa !1285
; store i64 0, i64* %var_2_1055, align 1
; Matched:%var_2_4662:  %var_2_4662 = fsub double %var_2_4651, %var_2_4661
; %var_2_3392 = fsub double %var_2_3381, %var_2_3391
; Matched:\<badref\>:  store double %var_2_2648, double* %var_2_93, align 1, !tbaa !1285
; store double %var_2_3392, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
%var_2_3393 = add i64 %var_2_3370, -16
; Matched:%var_2_2561:  %var_2_2561 = add i64 %var_2_2539, 28
; %var_2_3394 = add i64 %var_2_3372, 28
; Matched:\<badref\>:  store i64 %var_2_4414, i64* %PC, align 8
; store i64 %var_2_3394, i64* %var_2_3, align 8
%var_2_3395 = inttoptr i64 %var_2_3393 to i64*
%var_2_3396 = load i64, i64* %var_2_3395, align 8
; Matched:\<badref\>:  store i64 %var_2_805, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_3396, i64* %RCX.i2236, align 8
%var_2_3397 = add i64 %var_2_3370, -40
; Matched:%var_2_1106:  %var_2_1106 = add i64 %var_2_1079, 32
; %var_2_3398 = add i64 %var_2_3372, 32
; Matched:\<badref\>:  store i64 %var_2_2529, i64* %PC, align 8
; store i64 %var_2_3398, i64* %var_2_3, align 8
%var_2_3399 = inttoptr i64 %var_2_3397 to i32*
%var_2_3400 = load i32, i32* %var_2_3399, align 4
%var_2_3401 = sext i32 %var_2_3400 to i64
; Matched:\<badref\>:  store i64 %var_2_1218, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_3401, i64* %RDX.i2239, align 8
; Matched:%var_2_4672:  %var_2_4672 = shl nsw i64 %var_2_4671, 3
; %var_2_3402 = shl nsw i64 %var_2_3401, 3
; Matched:%var_2_2659:  %var_2_2659 = add i64 %var_2_2658, %var_2_2652
; %var_2_3403 = add i64 %var_2_3402, %var_2_3396
; Matched:%var_2_1275:  %var_2_1275 = add i64 %var_2_1225, 37
; %var_2_3404 = add i64 %var_2_3372, 37
; Matched:\<badref\>:  store i64 %var_2_4424, i64* %PC, align 8
; store i64 %var_2_3404, i64* %var_2_3, align 8
; Matched:%var_2_2661:  %var_2_2661 = inttoptr i64 %var_2_2659 to double*
; %var_2_3405 = inttoptr i64 %var_2_3403 to double*
; Matched:\<badref\>:  store double %var_2_2648, double* %var_2_2661, align 8
; store double %var_2_3392, double* %var_2_3405, align 8
%var_2_3406 = load i64, i64* %RBP.i, align 8
%var_2_3407 = add i64 %var_2_3406, -104
%var_2_3408 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_304:  %var_2_304 = add i64 %var_2_303, 5
; %var_2_3409 = add i64 %var_2_3408, 5
; Matched:\<badref\>:  store i64 %var_2_4292, i64* %PC, align 8
; store i64 %var_2_3409, i64* %var_2_3, align 8
%var_2_3410 = inttoptr i64 %var_2_3407 to i64*
%var_2_3411 = load i64, i64* %var_2_3410, align 8
; Matched:\<badref\>:  store i64 %var_2_4645, i64* %var_2_94, align 1, !tbaa !1285
; store i64 %var_2_3411, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
; Matched:%var_2_4682:  %var_2_4682 = add i64 %var_2_4676, -128
; %var_2_3412 = add i64 %var_2_3406, -128
; Matched:%var_2_1199:  %var_2_1199 = add i64 %var_2_1194, 10
; %var_2_3413 = add i64 %var_2_3408, 10
; Matched:\<badref\>:  store i64 %var_2_2633, i64* %PC, align 8
; store i64 %var_2_3413, i64* %var_2_3, align 8
; Matched:%var_2_2670:  %var_2_2670 = bitcast i64 %var_2_2667 to double
; %var_2_3414 = bitcast i64 %var_2_3411 to double
; Matched:%var_2_4685:  %var_2_4685 = inttoptr i64 %var_2_4682 to double*
; %var_2_3415 = inttoptr i64 %var_2_3412 to double*
; Matched:%var_2_2672:  %var_2_2672 = load double, double* %var_2_2671, align 8
; %var_2_3416 = load double, double* %var_2_3415, align 8
; Matched:%var_2_2673:  %var_2_2673 = fmul double %var_2_2670, %var_2_2672
; %var_2_3417 = fmul double %var_2_3414, %var_2_3416
; Matched:\<badref\>:  store double %var_2_4687, double* %var_2_93, align 1, !tbaa !1285
; store double %var_2_3417, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
%var_2_3418 = add i64 %var_2_3406, -112
; Matched:%var_2_1481:  %var_2_1481 = add i64 %var_2_1469, 15
; %var_2_3419 = add i64 %var_2_3408, 15
; Matched:\<badref\>:  store i64 %var_2_1088, i64* %PC, align 8
; store i64 %var_2_3419, i64* %var_2_3, align 8
%var_2_3420 = inttoptr i64 %var_2_3418 to i64*
%var_2_3421 = load i64, i64* %var_2_3420, align 8
; Matched:\<badref\>:  store i64 %var_2_4691, i64* %var_2_1624, align 1, !tbaa !1285
; store i64 %var_2_3421, i64* %var_2_1054, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_1626, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_1056, align 1
; Matched:%var_2_4692:  %var_2_4692 = add i64 %var_2_4676, -120
; %var_2_3422 = add i64 %var_2_3406, -120
; Matched:%var_2_2554:  %var_2_2554 = add i64 %var_2_2539, 20
; %var_2_3423 = add i64 %var_2_3408, 20
; Matched:\<badref\>:  store i64 %var_2_2554, i64* %PC, align 8
; store i64 %var_2_3423, i64* %var_2_3, align 8
; Matched:%var_2_2680:  %var_2_2680 = bitcast i64 %var_2_2677 to double
; %var_2_3424 = bitcast i64 %var_2_3421 to double
; Matched:%var_2_4695:  %var_2_4695 = inttoptr i64 %var_2_4692 to double*
; %var_2_3425 = inttoptr i64 %var_2_3422 to double*
; Matched:%var_2_2682:  %var_2_2682 = load double, double* %var_2_2681, align 8
; %var_2_3426 = load double, double* %var_2_3425, align 8
; Matched:%var_2_2683:  %var_2_2683 = fmul double %var_2_2680, %var_2_2682
; %var_2_3427 = fmul double %var_2_3424, %var_2_3426
; Matched:\<badref\>:  store double %var_2_4697, double* %var_2_1623, align 1, !tbaa !1285
; store double %var_2_3427, double* %var_2_1053, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_1625, align 1, !tbaa !1285
; store i64 0, i64* %var_2_1055, align 1
; Matched:%var_2_4698:  %var_2_4698 = fadd double %var_2_4687, %var_2_4697
; %var_2_3428 = fadd double %var_2_3417, %var_2_3427
; Matched:\<badref\>:  store double %var_2_2684, double* %var_2_93, align 1, !tbaa !1285
; store double %var_2_3428, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
%var_2_3429 = add i64 %var_2_3406, -16
; Matched:%var_2_4664:  %var_2_4664 = add i64 %var_2_4642, 28
; %var_2_3430 = add i64 %var_2_3408, 28
; Matched:\<badref\>:  store i64 %var_2_2425, i64* %PC, align 8
; store i64 %var_2_3430, i64* %var_2_3, align 8
%var_2_3431 = inttoptr i64 %var_2_3429 to i64*
%var_2_3432 = load i64, i64* %var_2_3431, align 8
; Matched:\<badref\>:  store i64 %var_2_4329, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_3432, i64* %RCX.i2236, align 8
%var_2_3433 = add i64 %var_2_3406, -40
; Matched:%var_2_972:  %var_2_972 = add i64 %var_2_928, 31
; %var_2_3434 = add i64 %var_2_3408, 31
; Matched:\<badref\>:  store i64 %var_2_1045, i64* %PC, align 8
; store i64 %var_2_3434, i64* %var_2_3, align 8
%var_2_3435 = inttoptr i64 %var_2_3433 to i32*
%var_2_3436 = load i32, i32* %var_2_3435, align 4
%var_2_3437 = add i32 %var_2_3436, 1
; Matched:%var_2_4708:  %var_2_4708 = zext i32 %var_2_4707 to i64
; %var_2_3438 = zext i32 %var_2_3437 to i64
; Matched:\<badref\>:  store i64 %var_2_4708, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_3438, i64* %RAX.i2224, align 8
; Matched:%var_2_4143:  %var_2_4143 = icmp eq i32 %var_2_4140, -1
; %var_2_3439 = icmp eq i32 %var_2_3436, -1
; Matched:%var_2_4144:  %var_2_4144 = icmp eq i32 %var_2_4141, 0
; %var_2_3440 = icmp eq i32 %var_2_3437, 0
; Matched:%var_2_4258:  %var_2_4258 = or i1 %var_2_4256, %var_2_4257
; %var_2_3441 = or i1 %var_2_3439, %var_2_3440
; Matched:%var_2_4146:  %var_2_4146 = zext i1 %var_2_4145 to i8
; %var_2_3442 = zext i1 %var_2_3441 to i8
; Matched:\<badref\>:  store i8 %var_2_4146, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_3442, i8* %var_2_14, align 1
; Matched:%var_2_4147:  %var_2_4147 = and i32 %var_2_4141, 255
; %var_2_3443 = and i32 %var_2_3437, 255
; Matched:%var_2_4261:  %var_2_4261 = tail call i32 @llvm.ctpop.i32(i32 %var_2_4260) #14
; %var_2_3444 = tail call i32 @llvm.ctpop.i32(i32 %var_2_3443)
; Matched:%var_2_4262:  %var_2_4262 = trunc i32 %var_2_4261 to i8
; %var_2_3445 = trunc i32 %var_2_3444 to i8
; Matched:%var_2_1258:  %var_2_1258 = and i8 %var_2_1257, 1
; %var_2_3446 = and i8 %var_2_3445, 1
; Matched:%var_2_4717:  %var_2_4717 = xor i8 %var_2_4716, 1
; %var_2_3447 = xor i8 %var_2_3446, 1
; Matched:\<badref\>:  store i8 %var_2_4151, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_3447, i8* %var_2_21, align 1
; Matched:%var_2_4152:  %var_2_4152 = xor i32 %var_2_4141, %var_2_4140
; %var_2_3448 = xor i32 %var_2_3437, %var_2_3436
; Matched:%var_2_4719:  %var_2_4719 = lshr i32 %var_2_4718, 4
; %var_2_3449 = lshr i32 %var_2_3448, 4
; Matched:%var_2_879:  %var_2_879 = trunc i32 %var_2_878 to i8
; %var_2_3450 = trunc i32 %var_2_3449 to i8
; Matched:%var_2_4155:  %var_2_4155 = and i8 %var_2_4154, 1
; %var_2_3451 = and i8 %var_2_3450, 1
; Matched:\<badref\>:  store i8 %var_2_4155, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_3451, i8* %var_2_27, align 1
; Matched:%var_2_4156:  %var_2_4156 = zext i1 %var_2_4144 to i8
; %var_2_3452 = zext i1 %var_2_3440 to i8
; Matched:\<badref\>:  store i8 %var_2_4156, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_3452, i8* %var_2_30, align 1
; Matched:%var_2_4157:  %var_2_4157 = lshr i32 %var_2_4141, 31
; %var_2_3453 = lshr i32 %var_2_3437, 31
; Matched:%var_2_4158:  %var_2_4158 = trunc i32 %var_2_4157 to i8
; %var_2_3454 = trunc i32 %var_2_3453 to i8
; Matched:\<badref\>:  store i8 %var_2_4158, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_3454, i8* %var_2_33, align 1
; Matched:%var_2_4159:  %var_2_4159 = lshr i32 %var_2_4140, 31
; %var_2_3455 = lshr i32 %var_2_3436, 31
; Matched:%var_2_4726:  %var_2_4726 = xor i32 %var_2_4723, %var_2_4725
; %var_2_3456 = xor i32 %var_2_3453, %var_2_3455
; Matched:%var_2_4161:  %var_2_4161 = add nuw nsw i32 %var_2_4160, %var_2_4157
; %var_2_3457 = add nuw nsw i32 %var_2_3456, %var_2_3453
; Matched:%var_2_4275:  %var_2_4275 = icmp eq i32 %var_2_4274, 2
; %var_2_3458 = icmp eq i32 %var_2_3457, 2
; Matched:%var_2_4163:  %var_2_4163 = zext i1 %var_2_4162 to i8
; %var_2_3459 = zext i1 %var_2_3458 to i8
; Matched:\<badref\>:  store i8 %var_2_4163, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_3459, i8* %var_2_39, align 1
%var_2_3460 = sext i32 %var_2_3437 to i64
; Matched:\<badref\>:  store i64 %var_2_4164, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_3460, i64* %RDX.i2239, align 8
; Matched:%var_2_4731:  %var_2_4731 = shl nsw i64 %var_2_4730, 3
; %var_2_3461 = shl nsw i64 %var_2_3460, 3
; Matched:%var_2_4732:  %var_2_4732 = add i64 %var_2_4702, %var_2_4731
; %var_2_3462 = add i64 %var_2_3432, %var_2_3461
; Matched:%var_2_4483:  %var_2_4483 = add i64 %var_2_4428, 42
; %var_2_3463 = add i64 %var_2_3408, 42
; Matched:\<badref\>:  store i64 %var_2_2594, i64* %PC, align 8
; store i64 %var_2_3463, i64* %var_2_3, align 8
; Matched:%var_2_2720:  %var_2_2720 = inttoptr i64 %var_2_2718 to double*
; %var_2_3464 = inttoptr i64 %var_2_3462 to double*
; Matched:\<badref\>:  store double %var_2_4698, double* %var_2_4734, align 8
; store double %var_2_3428, double* %var_2_3464, align 8
; Matched:%var_2_3651:  %var_2_3651 = load i64, i64* %RBP, align 8
; %var_2_3465 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1278:  %var_2_1278 = add i64 %var_2_1277, -28
; %var_2_3466 = add i64 %var_2_3465, -28
%var_2_3467 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1491:  %var_2_1491 = add i64 %var_2_1490, 3
; %var_2_3468 = add i64 %var_2_3467, 3
; Matched:\<badref\>:  store i64 %var_2_1491, i64* %PC, align 8
; store i64 %var_2_3468, i64* %var_2_3, align 8
; Matched:%var_2_1281:  %var_2_1281 = inttoptr i64 %var_2_1278 to i32*
; %var_2_3469 = inttoptr i64 %var_2_3466 to i32*
; Matched:%var_2_1282:  %var_2_1282 = load i32, i32* %var_2_1281, align 4
; %var_2_3470 = load i32, i32* %var_2_3469, align 4
; Matched:%var_2_3657:  %var_2_3657 = add i32 %var_2_3656, 2
; %var_2_3471 = add i32 %var_2_3470, 2
; Matched:%var_2_1284:  %var_2_1284 = zext i32 %var_2_1283 to i64
; %var_2_3472 = zext i32 %var_2_3471 to i64
; Matched:\<badref\>:  store i64 %var_2_1284, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_3472, i64* %RAX.i2224, align 8
; Matched:%var_2_4743:  %var_2_4743 = icmp ugt i32 %var_2_4740, -3
; %var_2_3473 = icmp ugt i32 %var_2_3470, -3
; Matched:%var_2_1286:  %var_2_1286 = zext i1 %var_2_1285 to i8
; %var_2_3474 = zext i1 %var_2_3473 to i8
; Matched:\<badref\>:  store i8 %var_2_1286, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_3474, i8* %var_2_14, align 1
; Matched:%var_2_1287:  %var_2_1287 = and i32 %var_2_1283, 255
; %var_2_3475 = and i32 %var_2_3471, 255
; Matched:%var_2_1288:  %var_2_1288 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1287) #14
; %var_2_3476 = tail call i32 @llvm.ctpop.i32(i32 %var_2_3475)
; Matched:%var_2_3663:  %var_2_3663 = trunc i32 %var_2_3662 to i8
; %var_2_3477 = trunc i32 %var_2_3476 to i8
; Matched:%var_2_1290:  %var_2_1290 = and i8 %var_2_1289, 1
; %var_2_3478 = and i8 %var_2_3477, 1
; Matched:%var_2_1291:  %var_2_1291 = xor i8 %var_2_1290, 1
; %var_2_3479 = xor i8 %var_2_3478, 1
; Matched:\<badref\>:  store i8 %var_2_4749, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_3479, i8* %var_2_21, align 1
; Matched:%var_2_1292:  %var_2_1292 = xor i32 %var_2_1283, %var_2_1282
; %var_2_3480 = xor i32 %var_2_3471, %var_2_3470
; Matched:%var_2_1293:  %var_2_1293 = lshr i32 %var_2_1292, 4
; %var_2_3481 = lshr i32 %var_2_3480, 4
; Matched:%var_2_1294:  %var_2_1294 = trunc i32 %var_2_1293 to i8
; %var_2_3482 = trunc i32 %var_2_3481 to i8
; Matched:%var_2_1295:  %var_2_1295 = and i8 %var_2_1294, 1
; %var_2_3483 = and i8 %var_2_3482, 1
; Matched:\<badref\>:  store i8 %var_2_3669, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_3483, i8* %var_2_27, align 1
; Matched:%var_2_1296:  %var_2_1296 = icmp eq i32 %var_2_1283, 0
; %var_2_3484 = icmp eq i32 %var_2_3471, 0
; Matched:%var_2_1297:  %var_2_1297 = zext i1 %var_2_1296 to i8
; %var_2_3485 = zext i1 %var_2_3484 to i8
; Matched:\<badref\>:  store i8 %var_2_4755, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_3485, i8* %var_2_30, align 1
; Matched:%var_2_1298:  %var_2_1298 = lshr i32 %var_2_1283, 31
; %var_2_3486 = lshr i32 %var_2_3471, 31
; Matched:%var_2_1299:  %var_2_1299 = trunc i32 %var_2_1298 to i8
; %var_2_3487 = trunc i32 %var_2_3486 to i8
; Matched:\<badref\>:  store i8 %var_2_1299, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_3487, i8* %var_2_33, align 1
; Matched:%var_2_1300:  %var_2_1300 = lshr i32 %var_2_1282, 31
; %var_2_3488 = lshr i32 %var_2_3470, 31
; Matched:%var_2_3675:  %var_2_3675 = xor i32 %var_2_3672, %var_2_3674
; %var_2_3489 = xor i32 %var_2_3486, %var_2_3488
; Matched:%var_2_1302:  %var_2_1302 = add nuw nsw i32 %var_2_1301, %var_2_1298
; %var_2_3490 = add nuw nsw i32 %var_2_3489, %var_2_3486
; Matched:%var_2_1303:  %var_2_1303 = icmp eq i32 %var_2_1302, 2
; %var_2_3491 = icmp eq i32 %var_2_3490, 2
; Matched:%var_2_4762:  %var_2_4762 = zext i1 %var_2_4761 to i8
; %var_2_3492 = zext i1 %var_2_3491 to i8
; Matched:\<badref\>:  store i8 %var_2_1304, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_3492, i8* %var_2_39, align 1
%var_2_3493 = add i64 %var_2_3467, 9
store i64 %var_2_3493, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_3657, i32* %var_2_3655, align 4
; store i32 %var_2_3471, i32* %var_2_3469, align 4
%var_2_3494 = load i64, i64* %var_2_3, align 8
%var_2_3495 = add i64 %var_2_3494, -781
; Matched:\<badref\>:  store i64 %var_2_4765, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_3495, i64* %var_2_3, align 8
  br label %block_.L_403940

block_.L_403c52:                                  ; preds = %block_.L_403940
%var_2_3496 = add i64 %var_2_2449, ptrtoint (%G_0x496__rip__type* @G_0x496__rip_ to i64)
%var_2_3497 = add i64 %var_2_2449, 8
store i64 %var_2_3497, i64* %var_2_3, align 8
%var_2_3498 = inttoptr i64 %var_2_3496 to i64*
%var_2_3499 = load i64, i64* %var_2_3498, align 8
store i64 %var_2_3499, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
; Matched:%var_2_1602:  %var_2_1602 = add i64 %var_2_2753, -24
; %var_2_3500 = add i64 %var_2_2406, -24
; Matched:%var_2_1360:  %var_2_1360 = add i64 %var_2_4855, 12
; %var_2_3501 = add i64 %var_2_2449, 12
; Matched:\<badref\>:  store i64 %var_2_1360, i64* %PC, align 8
; store i64 %var_2_3501, i64* %var_2_3, align 8
; Matched:%var_2_1361:  %var_2_1361 = inttoptr i64 %var_2_1359 to i64*
; %var_2_3502 = inttoptr i64 %var_2_3500 to i64*
; Matched:%var_2_1403:  %var_2_1403 = load i64, i64* %var_2_1402, align 8
; %var_2_3503 = load i64, i64* %var_2_3502, align 8
; Matched:\<badref\>:  store i64 %var_2_1605, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_3503, i64* %RAX.i2224, align 8
; Matched:%var_2_1363:  %var_2_1363 = add i64 %var_2_4812, -52
; %var_2_3504 = add i64 %var_2_2406, -52
; Matched:%var_2_1364:  %var_2_1364 = add i64 %var_2_4855, 15
; %var_2_3505 = add i64 %var_2_2449, 15
; Matched:\<badref\>:  store i64 %var_2_1364, i64* %PC, align 8
; store i64 %var_2_3505, i64* %var_2_3, align 8
; Matched:%var_2_1365:  %var_2_1365 = inttoptr i64 %var_2_1363 to i32*
; %var_2_3506 = inttoptr i64 %var_2_3504 to i32*
; Matched:%var_2_1366:  %var_2_1366 = load i32, i32* %var_2_1365, align 4
; %var_2_3507 = load i32, i32* %var_2_3506, align 4
; Matched:%var_2_1367:  %var_2_1367 = add i32 %var_2_1366, 2
; %var_2_3508 = add i32 %var_2_3507, 2
; Matched:%var_2_1368:  %var_2_1368 = zext i32 %var_2_1367 to i64
; %var_2_3509 = zext i32 %var_2_3508 to i64
; Matched:\<badref\>:  store i64 %var_2_1368, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_3509, i64* %RCX.i2236, align 8
; Matched:%var_2_1369:  %var_2_1369 = icmp ugt i32 %var_2_1366, -3
; %var_2_3510 = icmp ugt i32 %var_2_3507, -3
; Matched:%var_2_1370:  %var_2_1370 = zext i1 %var_2_1369 to i8
; %var_2_3511 = zext i1 %var_2_3510 to i8
; Matched:\<badref\>:  store i8 %var_2_1370, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_3511, i8* %var_2_14, align 1
; Matched:%var_2_1371:  %var_2_1371 = and i32 %var_2_1367, 255
; %var_2_3512 = and i32 %var_2_3508, 255
; Matched:%var_2_1372:  %var_2_1372 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1371) #14
; %var_2_3513 = tail call i32 @llvm.ctpop.i32(i32 %var_2_3512)
; Matched:%var_2_1373:  %var_2_1373 = trunc i32 %var_2_1372 to i8
; %var_2_3514 = trunc i32 %var_2_3513 to i8
; Matched:%var_2_1374:  %var_2_1374 = and i8 %var_2_1373, 1
; %var_2_3515 = and i8 %var_2_3514, 1
; Matched:%var_2_1375:  %var_2_1375 = xor i8 %var_2_1374, 1
; %var_2_3516 = xor i8 %var_2_3515, 1
; Matched:\<badref\>:  store i8 %var_2_1375, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_3516, i8* %var_2_21, align 1
; Matched:%var_2_1376:  %var_2_1376 = xor i32 %var_2_1367, %var_2_1366
; %var_2_3517 = xor i32 %var_2_3508, %var_2_3507
; Matched:%var_2_1377:  %var_2_1377 = lshr i32 %var_2_1376, 4
; %var_2_3518 = lshr i32 %var_2_3517, 4
; Matched:%var_2_1378:  %var_2_1378 = trunc i32 %var_2_1377 to i8
; %var_2_3519 = trunc i32 %var_2_3518 to i8
; Matched:%var_2_1379:  %var_2_1379 = and i8 %var_2_1378, 1
; %var_2_3520 = and i8 %var_2_3519, 1
; Matched:\<badref\>:  store i8 %var_2_1379, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_3520, i8* %var_2_27, align 1
; Matched:%var_2_1380:  %var_2_1380 = icmp eq i32 %var_2_1367, 0
; %var_2_3521 = icmp eq i32 %var_2_3508, 0
; Matched:%var_2_1381:  %var_2_1381 = zext i1 %var_2_1380 to i8
; %var_2_3522 = zext i1 %var_2_3521 to i8
; Matched:\<badref\>:  store i8 %var_2_1381, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_3522, i8* %var_2_30, align 1
; Matched:%var_2_1382:  %var_2_1382 = lshr i32 %var_2_1367, 31
; %var_2_3523 = lshr i32 %var_2_3508, 31
; Matched:%var_2_1383:  %var_2_1383 = trunc i32 %var_2_1382 to i8
; %var_2_3524 = trunc i32 %var_2_3523 to i8
; Matched:\<badref\>:  store i8 %var_2_1383, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_3524, i8* %var_2_33, align 1
; Matched:%var_2_1384:  %var_2_1384 = lshr i32 %var_2_1366, 31
; %var_2_3525 = lshr i32 %var_2_3507, 31
; Matched:%var_2_1385:  %var_2_1385 = xor i32 %var_2_1382, %var_2_1384
; %var_2_3526 = xor i32 %var_2_3523, %var_2_3525
; Matched:%var_2_1386:  %var_2_1386 = add nuw nsw i32 %var_2_1385, %var_2_1382
; %var_2_3527 = add nuw nsw i32 %var_2_3526, %var_2_3523
; Matched:%var_2_1387:  %var_2_1387 = icmp eq i32 %var_2_1386, 2
; %var_2_3528 = icmp eq i32 %var_2_3527, 2
; Matched:%var_2_1388:  %var_2_1388 = zext i1 %var_2_1387 to i8
; %var_2_3529 = zext i1 %var_2_3528 to i8
; Matched:\<badref\>:  store i8 %var_2_1388, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_3529, i8* %var_2_39, align 1
; Matched:%var_2_1389:  %var_2_1389 = sext i32 %var_2_1367 to i64
; %var_2_3530 = sext i32 %var_2_3508 to i64
; Matched:\<badref\>:  store i64 %var_2_1389, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_3530, i64* %RDX.i2239, align 8
; Matched:%var_2_1390:  %var_2_1390 = shl nsw i64 %var_2_1389, 3
; %var_2_3531 = shl nsw i64 %var_2_3530, 3
; Matched:%var_2_1391:  %var_2_1391 = add i64 %var_2_1362, %var_2_1390
; %var_2_3532 = add i64 %var_2_3503, %var_2_3531
; Matched:%var_2_1392:  %var_2_1392 = add i64 %var_2_4855, 26
; %var_2_3533 = add i64 %var_2_2449, 26
; Matched:\<badref\>:  store i64 %var_2_1392, i64* %PC, align 8
; store i64 %var_2_3533, i64* %var_2_3, align 8
; Matched:%var_2_1393:  %var_2_1393 = inttoptr i64 %var_2_1391 to i64*
; %var_2_3534 = inttoptr i64 %var_2_3532 to i64*
; Matched:%var_2_1394:  %var_2_1394 = load i64, i64* %var_2_1393, align 8
; %var_2_3535 = load i64, i64* %var_2_3534, align 8
; Matched:\<badref\>:  store i64 %var_2_1394, i64* %var_2_1624, align 1, !tbaa !1285
; store i64 %var_2_3535, i64* %var_2_1054, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_1626, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_1056, align 1
; Matched:%var_2_1395:  %var_2_1395 = add i64 %var_2_4812, -72
; %var_2_3536 = add i64 %var_2_2406, -72
; Matched:%var_2_1396:  %var_2_1396 = add i64 %var_2_4855, 31
; %var_2_3537 = add i64 %var_2_2449, 31
; Matched:\<badref\>:  store i64 %var_2_1396, i64* %PC, align 8
; store i64 %var_2_3537, i64* %var_2_3, align 8
; Matched:%var_2_1397:  %var_2_1397 = inttoptr i64 %var_2_1395 to i64*
; %var_2_3538 = inttoptr i64 %var_2_3536 to i64*
; Matched:\<badref\>:  store i64 %var_2_1394, i64* %var_2_1397, align 8
; store i64 %var_2_3535, i64* %var_2_3538, align 8
%var_2_3539 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1399:  %var_2_1399 = add i64 %var_2_1398, -24
; %var_2_3540 = add i64 %var_2_3539, -24
%var_2_3541 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1837:  %var_2_1837 = add i64 %var_2_1836, 4
; %var_2_3542 = add i64 %var_2_3541, 4
; Matched:\<badref\>:  store i64 %var_2_1837, i64* %PC, align 8
; store i64 %var_2_3542, i64* %var_2_3, align 8
; Matched:%var_2_1604:  %var_2_1604 = inttoptr i64 %var_2_1602 to i64*
; %var_2_3543 = inttoptr i64 %var_2_3540 to i64*
; Matched:%var_2_1362:  %var_2_1362 = load i64, i64* %var_2_1361, align 8
; %var_2_3544 = load i64, i64* %var_2_3543, align 8
; Matched:\<badref\>:  store i64 %var_2_1403, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_3544, i64* %RAX.i2224, align 8
; Matched:%var_2_1404:  %var_2_1404 = add i64 %var_2_1398, -52
; %var_2_3545 = add i64 %var_2_3539, -52
; Matched:%var_2_3877:  %var_2_3877 = add i64 %var_2_3872, 7
; %var_2_3546 = add i64 %var_2_3541, 7
; Matched:\<badref\>:  store i64 %var_2_715, i64* %PC, align 8
; store i64 %var_2_3546, i64* %var_2_3, align 8
; Matched:%var_2_1406:  %var_2_1406 = inttoptr i64 %var_2_1404 to i32*
; %var_2_3547 = inttoptr i64 %var_2_3545 to i32*
; Matched:%var_2_1407:  %var_2_1407 = load i32, i32* %var_2_1406, align 4
; %var_2_3548 = load i32, i32* %var_2_3547, align 4
; Matched:%var_2_1408:  %var_2_1408 = add i32 %var_2_1407, 3
; %var_2_3549 = add i32 %var_2_3548, 3
; Matched:%var_2_1409:  %var_2_1409 = zext i32 %var_2_1408 to i64
; %var_2_3550 = zext i32 %var_2_3549 to i64
; Matched:\<badref\>:  store i64 %var_2_1409, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_3550, i64* %RCX.i2236, align 8
; Matched:%var_2_1410:  %var_2_1410 = icmp ugt i32 %var_2_1407, -4
; %var_2_3551 = icmp ugt i32 %var_2_3548, -4
; Matched:%var_2_1411:  %var_2_1411 = zext i1 %var_2_1410 to i8
; %var_2_3552 = zext i1 %var_2_3551 to i8
; Matched:\<badref\>:  store i8 %var_2_1411, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_3552, i8* %var_2_14, align 1
; Matched:%var_2_1412:  %var_2_1412 = and i32 %var_2_1408, 255
; %var_2_3553 = and i32 %var_2_3549, 255
; Matched:%var_2_1413:  %var_2_1413 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1412) #14
; %var_2_3554 = tail call i32 @llvm.ctpop.i32(i32 %var_2_3553)
; Matched:%var_2_1414:  %var_2_1414 = trunc i32 %var_2_1413 to i8
; %var_2_3555 = trunc i32 %var_2_3554 to i8
; Matched:%var_2_1415:  %var_2_1415 = and i8 %var_2_1414, 1
; %var_2_3556 = and i8 %var_2_3555, 1
; Matched:%var_2_1416:  %var_2_1416 = xor i8 %var_2_1415, 1
; %var_2_3557 = xor i8 %var_2_3556, 1
; Matched:\<badref\>:  store i8 %var_2_1416, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_3557, i8* %var_2_21, align 1
; Matched:%var_2_1417:  %var_2_1417 = xor i32 %var_2_1408, %var_2_1407
; %var_2_3558 = xor i32 %var_2_3549, %var_2_3548
; Matched:%var_2_1418:  %var_2_1418 = lshr i32 %var_2_1417, 4
; %var_2_3559 = lshr i32 %var_2_3558, 4
; Matched:%var_2_1419:  %var_2_1419 = trunc i32 %var_2_1418 to i8
; %var_2_3560 = trunc i32 %var_2_3559 to i8
; Matched:%var_2_1420:  %var_2_1420 = and i8 %var_2_1419, 1
; %var_2_3561 = and i8 %var_2_3560, 1
; Matched:\<badref\>:  store i8 %var_2_1420, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_3561, i8* %var_2_27, align 1
; Matched:%var_2_1421:  %var_2_1421 = icmp eq i32 %var_2_1408, 0
; %var_2_3562 = icmp eq i32 %var_2_3549, 0
; Matched:%var_2_1422:  %var_2_1422 = zext i1 %var_2_1421 to i8
; %var_2_3563 = zext i1 %var_2_3562 to i8
; Matched:\<badref\>:  store i8 %var_2_1422, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_3563, i8* %var_2_30, align 1
; Matched:%var_2_1423:  %var_2_1423 = lshr i32 %var_2_1408, 31
; %var_2_3564 = lshr i32 %var_2_3549, 31
; Matched:%var_2_1424:  %var_2_1424 = trunc i32 %var_2_1423 to i8
; %var_2_3565 = trunc i32 %var_2_3564 to i8
; Matched:\<badref\>:  store i8 %var_2_1424, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_3565, i8* %var_2_33, align 1
; Matched:%var_2_1425:  %var_2_1425 = lshr i32 %var_2_1407, 31
; %var_2_3566 = lshr i32 %var_2_3548, 31
; Matched:%var_2_1426:  %var_2_1426 = xor i32 %var_2_1423, %var_2_1425
; %var_2_3567 = xor i32 %var_2_3564, %var_2_3566
; Matched:%var_2_1427:  %var_2_1427 = add nuw nsw i32 %var_2_1426, %var_2_1423
; %var_2_3568 = add nuw nsw i32 %var_2_3567, %var_2_3564
; Matched:%var_2_1428:  %var_2_1428 = icmp eq i32 %var_2_1427, 2
; %var_2_3569 = icmp eq i32 %var_2_3568, 2
; Matched:%var_2_1429:  %var_2_1429 = zext i1 %var_2_1428 to i8
; %var_2_3570 = zext i1 %var_2_3569 to i8
; Matched:\<badref\>:  store i8 %var_2_1429, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_3570, i8* %var_2_39, align 1
; Matched:%var_2_1430:  %var_2_1430 = sext i32 %var_2_1408 to i64
; %var_2_3571 = sext i32 %var_2_3549 to i64
; Matched:\<badref\>:  store i64 %var_2_1430, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_3571, i64* %RDX.i2239, align 8
; Matched:%var_2_1431:  %var_2_1431 = shl nsw i64 %var_2_1430, 3
; %var_2_3572 = shl nsw i64 %var_2_3571, 3
; Matched:%var_2_1432:  %var_2_1432 = add i64 %var_2_1403, %var_2_1431
; %var_2_3573 = add i64 %var_2_3544, %var_2_3572
; Matched:%var_2_3089:  %var_2_3089 = add i64 %var_2_3055, 18
; %var_2_3574 = add i64 %var_2_3541, 18
; Matched:\<badref\>:  store i64 %var_2_292, i64* %PC, align 8
; store i64 %var_2_3574, i64* %var_2_3, align 8
; Matched:%var_2_1434:  %var_2_1434 = inttoptr i64 %var_2_1432 to i64*
; %var_2_3575 = inttoptr i64 %var_2_3573 to i64*
; Matched:%var_2_1435:  %var_2_1435 = load i64, i64* %var_2_1434, align 8
; %var_2_3576 = load i64, i64* %var_2_3575, align 8
; Matched:\<badref\>:  store i64 %var_2_1435, i64* %var_2_1624, align 1, !tbaa !1285
; store i64 %var_2_3576, i64* %var_2_1054, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_1626, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_1056, align 1
; Matched:%var_2_1436:  %var_2_1436 = add i64 %var_2_1398, -80
; %var_2_3577 = add i64 %var_2_3539, -80
; Matched:%var_2_271:  %var_2_271 = add i64 %var_2_233, 23
; %var_2_3578 = add i64 %var_2_3541, 23
; Matched:\<badref\>:  store i64 %var_2_271, i64* %PC, align 8
; store i64 %var_2_3578, i64* %var_2_3, align 8
; Matched:%var_2_1438:  %var_2_1438 = inttoptr i64 %var_2_1436 to i64*
; %var_2_3579 = inttoptr i64 %var_2_3577 to i64*
; Matched:\<badref\>:  store i64 %var_2_1435, i64* %var_2_1438, align 8
; store i64 %var_2_3576, i64* %var_2_3579, align 8
; Matched:%var_2_273:  %var_2_273 = load i64, i64* %RBP, align 8
; %var_2_3580 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_274:  %var_2_274 = add i64 %var_2_273, -72
; %var_2_3581 = add i64 %var_2_3580, -72
%var_2_3582 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2256:  %var_2_2256 = add i64 %var_2_2255, 5
; %var_2_3583 = add i64 %var_2_3582, 5
; Matched:\<badref\>:  store i64 %var_2_3460, i64* %PC, align 8
; store i64 %var_2_3583, i64* %var_2_3, align 8
; Matched:%var_2_277:  %var_2_277 = inttoptr i64 %var_2_274 to i64*
; %var_2_3584 = inttoptr i64 %var_2_3581 to i64*
; Matched:%var_2_278:  %var_2_278 = load i64, i64* %var_2_277, align 8
; %var_2_3585 = load i64, i64* %var_2_3584, align 8
; Matched:\<badref\>:  store i64 %var_2_278, i64* %var_2_1624, align 1, !tbaa !1285
; store i64 %var_2_3585, i64* %var_2_1054, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_1626, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_1056, align 1
%var_2_3586 = load <2 x i32>, <2 x i32>* %var_2_2119, align 1
%var_2_3587 = load <2 x i32>, <2 x i32>* %var_2_2120, align 1
%var_2_3588 = extractelement <2 x i32> %var_2_3586, i32 0
; Matched:\<badref\>:  store i32 %var_2_281, i32* %var_2_1350, align 1, !tbaa !1287
; store i32 %var_2_3588, i32* %var_2_2121, align 1
%var_2_3589 = extractelement <2 x i32> %var_2_3586, i32 1
; Matched:\<badref\>:  store i32 %var_2_1448, i32* %var_2_1352, align 1, !tbaa !1287
; store i32 %var_2_3589, i32* %var_2_2123, align 1
%var_2_3590 = extractelement <2 x i32> %var_2_3587, i32 0
; Matched:\<badref\>:  store i32 %var_2_1449, i32* %var_2_1354, align 1, !tbaa !1287
; store i32 %var_2_3590, i32* %var_2_2125, align 1
%var_2_3591 = extractelement <2 x i32> %var_2_3587, i32 1
; Matched:\<badref\>:  store i32 %var_2_1450, i32* %var_2_1356, align 1, !tbaa !1287
; store i32 %var_2_3591, i32* %var_2_2127, align 1
; Matched:%var_2_1451:  %var_2_1451 = add i64 %var_2_1439, -88
; %var_2_3592 = add i64 %var_2_3580, -88
; Matched:%var_2_2333:  %var_2_2333 = add i64 %var_2_2328, 13
; %var_2_3593 = add i64 %var_2_3582, 13
; Matched:\<badref\>:  store i64 %var_2_2333, i64* %PC, align 8
; store i64 %var_2_3593, i64* %var_2_3, align 8
; Matched:%var_2_1453:  %var_2_1453 = load double, double* %var_2_1357, align 1
; %var_2_3594 = load double, double* %var_2_2128, align 1
; Matched:%var_2_1454:  %var_2_1454 = inttoptr i64 %var_2_1451 to double*
; %var_2_3595 = inttoptr i64 %var_2_3592 to double*
; Matched:%var_2_1455:  %var_2_1455 = load double, double* %var_2_1454, align 8
; %var_2_3596 = load double, double* %var_2_3595, align 8
; Matched:%var_2_1456:  %var_2_1456 = fmul double %var_2_1453, %var_2_1455
; %var_2_3597 = fmul double %var_2_3594, %var_2_3596
; Matched:\<badref\>:  store double %var_2_1456, double* %var_2_1357, align 1, !tbaa !1285
; store double %var_2_3597, double* %var_2_2128, align 1
; Matched:%var_2_1457:  %var_2_1457 = add i64 %var_2_1439, -80
; %var_2_3598 = add i64 %var_2_3580, -80
; Matched:%var_2_1433:  %var_2_1433 = add i64 %var_2_1400, 18
; %var_2_3599 = add i64 %var_2_3582, 18
; Matched:\<badref\>:  store i64 %var_2_1433, i64* %PC, align 8
; store i64 %var_2_3599, i64* %var_2_3, align 8
; Matched:%var_2_1459:  %var_2_1459 = inttoptr i64 %var_2_1457 to double*
; %var_2_3600 = inttoptr i64 %var_2_3598 to double*
; Matched:%var_2_1460:  %var_2_1460 = load double, double* %var_2_1459, align 8
; %var_2_3601 = load double, double* %var_2_3600, align 8
; Matched:%var_2_1461:  %var_2_1461 = fmul double %var_2_1456, %var_2_1460
; %var_2_3602 = fmul double %var_2_3597, %var_2_3601
; Matched:\<badref\>:  store double %var_2_1461, double* %var_2_1357, align 1, !tbaa !1285
; store double %var_2_3602, double* %var_2_2128, align 1
; Matched:%var_2_1462:  %var_2_1462 = bitcast i64 %var_2_1444 to double
; %var_2_3603 = bitcast i64 %var_2_3585 to double
; Matched:%var_2_1463:  %var_2_1463 = fsub double %var_2_1462, %var_2_1461
; %var_2_3604 = fsub double %var_2_3603, %var_2_3602
; Matched:\<badref\>:  store double %var_2_1463, double* %var_2_1623, align 1, !tbaa !1285
; store double %var_2_3604, double* %var_2_1053, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_1625, align 1, !tbaa !1285
; store i64 0, i64* %var_2_1055, align 1
; Matched:%var_2_1464:  %var_2_1464 = add i64 %var_2_1439, -104
; %var_2_3605 = add i64 %var_2_3580, -104
; Matched:%var_2_1100:  %var_2_1100 = add i64 %var_2_1079, 27
; %var_2_3606 = add i64 %var_2_3582, 27
; Matched:\<badref\>:  store i64 %var_2_299, i64* %PC, align 8
; store i64 %var_2_3606, i64* %var_2_3, align 8
; Matched:%var_2_1466:  %var_2_1466 = inttoptr i64 %var_2_1464 to double*
; %var_2_3607 = inttoptr i64 %var_2_3605 to double*
; Matched:\<badref\>:  store double %var_2_1463, double* %var_2_1466, align 8
; store double %var_2_3604, double* %var_2_3607, align 8
; Matched:%var_2_1467:  %var_2_1467 = load i64, i64* %RBP, align 8
; %var_2_3608 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1468:  %var_2_1468 = add i64 %var_2_1467, -88
; %var_2_3609 = add i64 %var_2_3608, -88
%var_2_3610 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1442:  %var_2_1442 = add i64 %var_2_1441, 5
; %var_2_3611 = add i64 %var_2_3610, 5
; Matched:\<badref\>:  store i64 %var_2_1442, i64* %PC, align 8
; store i64 %var_2_3611, i64* %var_2_3, align 8
; Matched:%var_2_1471:  %var_2_1471 = load double, double* %var_2_93, align 1
; %var_2_3612 = load double, double* %var_2_1037, align 1
; Matched:%var_2_1472:  %var_2_1472 = inttoptr i64 %var_2_1468 to double*
; %var_2_3613 = inttoptr i64 %var_2_3609 to double*
; Matched:%var_2_1473:  %var_2_1473 = load double, double* %var_2_1472, align 8
; %var_2_3614 = load double, double* %var_2_3613, align 8
; Matched:%var_2_1474:  %var_2_1474 = fmul double %var_2_1471, %var_2_1473
; %var_2_3615 = fmul double %var_2_3612, %var_2_3614
; Matched:\<badref\>:  store double %var_2_1474, double* %var_2_93, align 1, !tbaa !1285
; store double %var_2_3615, double* %var_2_1037, align 1
; Matched:%var_2_1475:  %var_2_1475 = add i64 %var_2_1467, -72
; %var_2_3616 = add i64 %var_2_3608, -72
; Matched:%var_2_1084:  %var_2_1084 = add i64 %var_2_1079, 10
; %var_2_3617 = add i64 %var_2_3610, 10
; Matched:\<badref\>:  store i64 %var_2_1199, i64* %PC, align 8
; store i64 %var_2_3617, i64* %var_2_3, align 8
; Matched:%var_2_1477:  %var_2_1477 = inttoptr i64 %var_2_1475 to double*
; %var_2_3618 = inttoptr i64 %var_2_3616 to double*
; Matched:%var_2_1478:  %var_2_1478 = load double, double* %var_2_1477, align 8
; %var_2_3619 = load double, double* %var_2_3618, align 8
; Matched:%var_2_1479:  %var_2_1479 = fmul double %var_2_1474, %var_2_1478
; %var_2_3620 = fmul double %var_2_3615, %var_2_3619
; Matched:\<badref\>:  store double %var_2_1479, double* %var_2_93, align 1, !tbaa !1285
; store double %var_2_3620, double* %var_2_1037, align 1
; Matched:%var_2_1480:  %var_2_1480 = add i64 %var_2_1467, -80
; %var_2_3621 = add i64 %var_2_3608, -80
; Matched:%var_2_1088:  %var_2_1088 = add i64 %var_2_1079, 15
; %var_2_3622 = add i64 %var_2_3610, 15
; Matched:\<badref\>:  store i64 %var_2_315, i64* %PC, align 8
; store i64 %var_2_3622, i64* %var_2_3, align 8
; Matched:%var_2_1482:  %var_2_1482 = inttoptr i64 %var_2_1480 to double*
; %var_2_3623 = inttoptr i64 %var_2_3621 to double*
; Matched:%var_2_1483:  %var_2_1483 = load double, double* %var_2_1482, align 8
; %var_2_3624 = load double, double* %var_2_3623, align 8
; Matched:%var_2_1484:  %var_2_1484 = fsub double %var_2_1479, %var_2_1483
; %var_2_3625 = fsub double %var_2_3620, %var_2_3624
; Matched:\<badref\>:  store double %var_2_1484, double* %var_2_93, align 1, !tbaa !1285
; store double %var_2_3625, double* %var_2_1037, align 1
; Matched:%var_2_1485:  %var_2_1485 = add i64 %var_2_1467, -112
; %var_2_3626 = add i64 %var_2_3608, -112
; Matched:%var_2_320:  %var_2_320 = add i64 %var_2_303, 20
; %var_2_3627 = add i64 %var_2_3610, 20
; Matched:\<badref\>:  store i64 %var_2_320, i64* %PC, align 8
; store i64 %var_2_3627, i64* %var_2_3, align 8
; Matched:%var_2_1487:  %var_2_1487 = inttoptr i64 %var_2_1485 to double*
; %var_2_3628 = inttoptr i64 %var_2_3626 to double*
; Matched:\<badref\>:  store double %var_2_1484, double* %var_2_1487, align 8
; store double %var_2_3625, double* %var_2_3628, align 8
; Matched:%var_2_1488:  %var_2_1488 = load i64, i64* %RBP, align 8
; %var_2_3629 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1489:  %var_2_1489 = add i64 %var_2_1488, -44
; %var_2_3630 = add i64 %var_2_3629, -44
%var_2_3631 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_370:  %var_2_370 = add i64 %var_2_369, 3
; %var_2_3632 = add i64 %var_2_3631, 3
; Matched:\<badref\>:  store i64 %var_2_370, i64* %PC, align 8
; store i64 %var_2_3632, i64* %var_2_3, align 8
; Matched:%var_2_1492:  %var_2_1492 = inttoptr i64 %var_2_1489 to i32*
; %var_2_3633 = inttoptr i64 %var_2_3630 to i32*
; Matched:%var_2_1493:  %var_2_1493 = load i32, i32* %var_2_1492, align 4
; %var_2_3634 = load i32, i32* %var_2_3633, align 4
; Matched:%var_2_1494:  %var_2_1494 = zext i32 %var_2_1493 to i64
; %var_2_3635 = zext i32 %var_2_3634 to i64
; Matched:\<badref\>:  store i64 %var_2_1494, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_3635, i64* %RCX.i2236, align 8
; Matched:%var_2_1495:  %var_2_1495 = add i64 %var_2_1488, -56
; %var_2_3636 = add i64 %var_2_3629, -56
; Matched:%var_2_330:  %var_2_330 = add i64 %var_2_324, 6
; %var_2_3637 = add i64 %var_2_3631, 6
; Matched:\<badref\>:  store i64 %var_2_330, i64* %PC, align 8
; store i64 %var_2_3637, i64* %var_2_3, align 8
; Matched:%var_2_1497:  %var_2_1497 = inttoptr i64 %var_2_1495 to i32*
; %var_2_3638 = inttoptr i64 %var_2_3636 to i32*
; Matched:%var_2_1498:  %var_2_1498 = load i32, i32* %var_2_1497, align 4
; %var_2_3639 = load i32, i32* %var_2_3638, align 4
; Matched:%var_2_1499:  %var_2_1499 = add i32 %var_2_1498, %var_2_1493
; %var_2_3640 = add i32 %var_2_3639, %var_2_3634
; Matched:%var_2_1500:  %var_2_1500 = zext i32 %var_2_1499 to i64
; %var_2_3641 = zext i32 %var_2_3640 to i64
; Matched:\<badref\>:  store i64 %var_2_1500, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_3641, i64* %RCX.i2236, align 8
; Matched:%var_2_1501:  %var_2_1501 = icmp ult i32 %var_2_1499, %var_2_1493
; %var_2_3642 = icmp ult i32 %var_2_3640, %var_2_3634
; Matched:%var_2_1502:  %var_2_1502 = icmp ult i32 %var_2_1499, %var_2_1498
; %var_2_3643 = icmp ult i32 %var_2_3640, %var_2_3639
; Matched:%var_2_1503:  %var_2_1503 = or i1 %var_2_1501, %var_2_1502
; %var_2_3644 = or i1 %var_2_3642, %var_2_3643
; Matched:%var_2_1504:  %var_2_1504 = zext i1 %var_2_1503 to i8
; %var_2_3645 = zext i1 %var_2_3644 to i8
; Matched:\<badref\>:  store i8 %var_2_1504, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_3645, i8* %var_2_14, align 1
; Matched:%var_2_1505:  %var_2_1505 = and i32 %var_2_1499, 255
; %var_2_3646 = and i32 %var_2_3640, 255
; Matched:%var_2_1506:  %var_2_1506 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1505) #14
; %var_2_3647 = tail call i32 @llvm.ctpop.i32(i32 %var_2_3646)
; Matched:%var_2_1507:  %var_2_1507 = trunc i32 %var_2_1506 to i8
; %var_2_3648 = trunc i32 %var_2_3647 to i8
; Matched:%var_2_1508:  %var_2_1508 = and i8 %var_2_1507, 1
; %var_2_3649 = and i8 %var_2_3648, 1
; Matched:%var_2_1509:  %var_2_1509 = xor i8 %var_2_1508, 1
; %var_2_3650 = xor i8 %var_2_3649, 1
; Matched:\<badref\>:  store i8 %var_2_1509, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_3650, i8* %var_2_21, align 1
; Matched:%var_2_1510:  %var_2_1510 = xor i32 %var_2_1498, %var_2_1493
; %var_2_3651 = xor i32 %var_2_3639, %var_2_3634
; Matched:%var_2_1511:  %var_2_1511 = xor i32 %var_2_1510, %var_2_1499
; %var_2_3652 = xor i32 %var_2_3651, %var_2_3640
; Matched:%var_2_1512:  %var_2_1512 = lshr i32 %var_2_1511, 4
; %var_2_3653 = lshr i32 %var_2_3652, 4
; Matched:%var_2_1513:  %var_2_1513 = trunc i32 %var_2_1512 to i8
; %var_2_3654 = trunc i32 %var_2_3653 to i8
; Matched:%var_2_1514:  %var_2_1514 = and i8 %var_2_1513, 1
; %var_2_3655 = and i8 %var_2_3654, 1
; Matched:\<badref\>:  store i8 %var_2_1514, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_3655, i8* %var_2_27, align 1
; Matched:%var_2_1515:  %var_2_1515 = icmp eq i32 %var_2_1499, 0
; %var_2_3656 = icmp eq i32 %var_2_3640, 0
; Matched:%var_2_1516:  %var_2_1516 = zext i1 %var_2_1515 to i8
; %var_2_3657 = zext i1 %var_2_3656 to i8
; Matched:\<badref\>:  store i8 %var_2_1516, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_3657, i8* %var_2_30, align 1
; Matched:%var_2_1517:  %var_2_1517 = lshr i32 %var_2_1499, 31
; %var_2_3658 = lshr i32 %var_2_3640, 31
; Matched:%var_2_1518:  %var_2_1518 = trunc i32 %var_2_1517 to i8
; %var_2_3659 = trunc i32 %var_2_3658 to i8
; Matched:\<badref\>:  store i8 %var_2_1518, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_3659, i8* %var_2_33, align 1
; Matched:%var_2_1519:  %var_2_1519 = lshr i32 %var_2_1493, 31
; %var_2_3660 = lshr i32 %var_2_3634, 31
; Matched:%var_2_1520:  %var_2_1520 = lshr i32 %var_2_1498, 31
; %var_2_3661 = lshr i32 %var_2_3639, 31
; Matched:%var_2_1521:  %var_2_1521 = xor i32 %var_2_1517, %var_2_1519
; %var_2_3662 = xor i32 %var_2_3658, %var_2_3660
; Matched:%var_2_1522:  %var_2_1522 = xor i32 %var_2_1517, %var_2_1520
; %var_2_3663 = xor i32 %var_2_3658, %var_2_3661
; Matched:%var_2_1523:  %var_2_1523 = add nuw nsw i32 %var_2_1521, %var_2_1522
; %var_2_3664 = add nuw nsw i32 %var_2_3662, %var_2_3663
; Matched:%var_2_1524:  %var_2_1524 = icmp eq i32 %var_2_1523, 2
; %var_2_3665 = icmp eq i32 %var_2_3664, 2
; Matched:%var_2_1525:  %var_2_1525 = zext i1 %var_2_1524 to i8
; %var_2_3666 = zext i1 %var_2_3665 to i8
; Matched:\<badref\>:  store i8 %var_2_1525, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_3666, i8* %var_2_39, align 1
; Matched:%var_2_1526:  %var_2_1526 = add i64 %var_2_1488, -28
; %var_2_3667 = add i64 %var_2_3629, -28
%var_2_3668 = add i64 %var_2_3631, 9
store i64 %var_2_3668, i64* %var_2_3, align 8
; Matched:%var_2_1528:  %var_2_1528 = inttoptr i64 %var_2_1526 to i32*
; %var_2_3669 = inttoptr i64 %var_2_3667 to i32*
; Matched:\<badref\>:  store i32 %var_2_1499, i32* %var_2_1528, align 4
; store i32 %var_2_3640, i32* %var_2_3669, align 4
; Matched:  %.pre26 = load i64, i64* %PC, align 8
; %.pre26 = load i64, i64* %var_2_3, align 8
  br label %block_.L_403cc0

block_.L_403cc0:                                  ; preds = %block_403cd6, %block_.L_403c52
; Matched:%var_2_1627:  %var_2_1627 = phi i64 [ %var_2_2751, %block_403cd6 ], [ %.pre26, %block_403c52 ]
; %var_2_3670 = phi i64 [ %var_2_4794, %block_403cd6 ], [ %.pre26, %block_.L_403c52 ]
%var_2_3671 = load i64, i64* %RBP.i, align 8
%var_2_3672 = add i64 %var_2_3671, -28
; Matched:%var_2_1630:  %var_2_1630 = add i64 %var_2_1627, 3
; %var_2_3673 = add i64 %var_2_3670, 3
; Matched:\<badref\>:  store i64 %var_2_1630, i64* %PC, align 8
; store i64 %var_2_3673, i64* %var_2_3, align 8
%var_2_3674 = inttoptr i64 %var_2_3672 to i32*
%var_2_3675 = load i32, i32* %var_2_3674, align 4
; Matched:%var_2_4772:  %var_2_4772 = zext i32 %var_2_4771 to i64
; %var_2_3676 = zext i32 %var_2_3675 to i64
; Matched:\<badref\>:  store i64 %var_2_2792, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_3676, i64* %RAX.i2224, align 8
%var_2_3677 = add i64 %var_2_3671, -8
; Matched:%var_2_1635:  %var_2_1635 = add i64 %var_2_1627, 6
; %var_2_3678 = add i64 %var_2_3670, 6
; Matched:\<badref\>:  store i64 %var_2_1635, i64* %PC, align 8
; store i64 %var_2_3678, i64* %var_2_3, align 8
%var_2_3679 = inttoptr i64 %var_2_3677 to i32*
%var_2_3680 = load i32, i32* %var_2_3679, align 4
; Matched:%var_2_4822:  %var_2_4822 = zext i32 %var_2_4821 to i64
; %var_2_3681 = zext i32 %var_2_3680 to i64
; Matched:\<badref\>:  store i64 %var_2_4822, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_3681, i64* %RCX.i2236, align 8
%var_2_3682 = add i64 %var_2_3671, -44
; Matched:%var_2_1640:  %var_2_1640 = add i64 %var_2_1627, 9
; %var_2_3683 = add i64 %var_2_3670, 9
; Matched:\<badref\>:  store i64 %var_2_1640, i64* %PC, align 8
; store i64 %var_2_3683, i64* %var_2_3, align 8
%var_2_3684 = inttoptr i64 %var_2_3682 to i32*
%var_2_3685 = load i32, i32* %var_2_3684, align 4
; Matched:%var_2_1643:  %var_2_1643 = zext i32 %var_2_1642 to i64
; %var_2_3686 = zext i32 %var_2_3685 to i64
; Matched:\<badref\>:  store i64 %var_2_1643, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_3686, i64* %RDX.i2239, align 8
%var_2_3687 = add i64 %var_2_3671, -56
; Matched:%var_2_1645:  %var_2_1645 = add i64 %var_2_1627, 12
; %var_2_3688 = add i64 %var_2_3670, 12
; Matched:\<badref\>:  store i64 %var_2_1645, i64* %PC, align 8
; store i64 %var_2_3688, i64* %var_2_3, align 8
%var_2_3689 = inttoptr i64 %var_2_3687 to i32*
%var_2_3690 = load i32, i32* %var_2_3689, align 4
%var_2_3691 = add i32 %var_2_3690, %var_2_3685
; Matched:%var_2_1649:  %var_2_1649 = zext i32 %var_2_1648 to i64
; %var_2_3692 = zext i32 %var_2_3691 to i64
; Matched:\<badref\>:  store i64 %var_2_1649, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_3692, i64* %RDX.i2239, align 8
%var_2_3693 = add i32 %var_2_3691, %var_2_3680
; Matched:%var_2_1651:  %var_2_1651 = zext i32 %var_2_1650 to i64
; %var_2_3694 = zext i32 %var_2_3693 to i64
; Matched:\<badref\>:  store i64 %var_2_1651, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_3694, i64* %RCX.i2236, align 8
%var_2_3695 = lshr i32 %var_2_3693, 31
%var_2_3696 = sub i32 %var_2_3675, %var_2_3693
; Matched:%var_2_1654:  %var_2_1654 = icmp ult i32 %var_2_1632, %var_2_1650
; %var_2_3697 = icmp ult i32 %var_2_3675, %var_2_3693
; Matched:%var_2_1655:  %var_2_1655 = zext i1 %var_2_1654 to i8
; %var_2_3698 = zext i1 %var_2_3697 to i8
; Matched:\<badref\>:  store i8 %var_2_1655, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_3698, i8* %var_2_14, align 1
; Matched:%var_2_1656:  %var_2_1656 = and i32 %var_2_1653, 255
; %var_2_3699 = and i32 %var_2_3696, 255
; Matched:%var_2_1657:  %var_2_1657 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1656) #14
; %var_2_3700 = tail call i32 @llvm.ctpop.i32(i32 %var_2_3699)
; Matched:%var_2_1658:  %var_2_1658 = trunc i32 %var_2_1657 to i8
; %var_2_3701 = trunc i32 %var_2_3700 to i8
; Matched:%var_2_1659:  %var_2_1659 = and i8 %var_2_1658, 1
; %var_2_3702 = and i8 %var_2_3701, 1
; Matched:%var_2_1660:  %var_2_1660 = xor i8 %var_2_1659, 1
; %var_2_3703 = xor i8 %var_2_3702, 1
; Matched:\<badref\>:  store i8 %var_2_1660, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_3703, i8* %var_2_21, align 1
; Matched:%var_2_1661:  %var_2_1661 = xor i32 %var_2_1650, %var_2_1632
; %var_2_3704 = xor i32 %var_2_3693, %var_2_3675
; Matched:%var_2_1662:  %var_2_1662 = xor i32 %var_2_1661, %var_2_1653
; %var_2_3705 = xor i32 %var_2_3704, %var_2_3696
; Matched:%var_2_1663:  %var_2_1663 = lshr i32 %var_2_1662, 4
; %var_2_3706 = lshr i32 %var_2_3705, 4
; Matched:%var_2_1664:  %var_2_1664 = trunc i32 %var_2_1663 to i8
; %var_2_3707 = trunc i32 %var_2_3706 to i8
; Matched:%var_2_1665:  %var_2_1665 = and i8 %var_2_1664, 1
; %var_2_3708 = and i8 %var_2_3707, 1
; Matched:\<badref\>:  store i8 %var_2_1665, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_3708, i8* %var_2_27, align 1
; Matched:%var_2_1666:  %var_2_1666 = icmp eq i32 %var_2_1653, 0
; %var_2_3709 = icmp eq i32 %var_2_3696, 0
; Matched:%var_2_1667:  %var_2_1667 = zext i1 %var_2_1666 to i8
; %var_2_3710 = zext i1 %var_2_3709 to i8
; Matched:\<badref\>:  store i8 %var_2_1667, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_3710, i8* %var_2_30, align 1
%var_2_3711 = lshr i32 %var_2_3696, 31
%var_2_3712 = trunc i32 %var_2_3711 to i8
; Matched:\<badref\>:  store i8 %var_2_1669, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_3712, i8* %var_2_33, align 1
%var_2_3713 = lshr i32 %var_2_3675, 31
%var_2_3714 = xor i32 %var_2_3695, %var_2_3713
%var_2_3715 = xor i32 %var_2_3711, %var_2_3713
%var_2_3716 = add nuw nsw i32 %var_2_3715, %var_2_3714
%var_2_3717 = icmp eq i32 %var_2_3716, 2
; Matched:%var_2_1675:  %var_2_1675 = zext i1 %var_2_1674 to i8
; %var_2_3718 = zext i1 %var_2_3717 to i8
; Matched:\<badref\>:  store i8 %var_2_1675, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_3718, i8* %var_2_39, align 1
%var_2_3719 = icmp ne i8 %var_2_3712, 0
%var_2_3720 = xor i1 %var_2_3719, %var_2_3717
; Matched:  %.v30 = select i1 %var_2_1677, i64 22, i64 827
; %.v30 = select i1 %var_2_3720, i64 22, i64 827
; Matched:%var_2_1678:  %var_2_1678 = add i64 %var_2_1627, %.v30
; %var_2_3721 = add i64 %var_2_3670, %.v30
; Matched:\<badref\>:  store i64 %var_2_1678, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_3721, i64* %var_2_3, align 8
br i1 %var_2_3720, label %block_403cd6, label %block_.L_403ffb

block_403cd6:                                     ; preds = %block_.L_403cc0
  store i64 -9223372036854775808, i64* %RAX.i2224, align 8
%var_2_3722 = load i64, i64* %RBP.i, align 8
%var_2_3723 = add i64 %var_2_3722, -28
; Matched:%var_2_1681:  %var_2_1681 = add i64 %var_2_1678, 13
; %var_2_3724 = add i64 %var_2_3721, 13
; Matched:\<badref\>:  store i64 %var_2_1681, i64* %PC, align 8
; store i64 %var_2_3724, i64* %var_2_3, align 8
%var_2_3725 = inttoptr i64 %var_2_3723 to i32*
%var_2_3726 = load i32, i32* %var_2_3725, align 4
; Matched:%var_2_1684:  %var_2_1684 = zext i32 %var_2_1683 to i64
; %var_2_3727 = zext i32 %var_2_3726 to i64
; Matched:\<badref\>:  store i64 %var_2_1684, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_3727, i64* %RCX.i2236, align 8
%var_2_3728 = add i64 %var_2_3722, -8
; Matched:%var_2_1686:  %var_2_1686 = add i64 %var_2_1678, 16
; %var_2_3729 = add i64 %var_2_3721, 16
; Matched:\<badref\>:  store i64 %var_2_1686, i64* %PC, align 8
; store i64 %var_2_3729, i64* %var_2_3, align 8
%var_2_3730 = inttoptr i64 %var_2_3728 to i32*
%var_2_3731 = load i32, i32* %var_2_3730, align 4
%var_2_3732 = add i32 %var_2_3731, %var_2_3726
; Matched:%var_2_1690:  %var_2_1690 = zext i32 %var_2_1689 to i64
; %var_2_3733 = zext i32 %var_2_3732 to i64
; Matched:\<badref\>:  store i64 %var_2_1690, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_3733, i64* %RCX.i2236, align 8
; Matched:%var_2_3727:  %var_2_3727 = icmp ult i32 %var_2_3725, %var_2_3721
; %var_2_3734 = icmp ult i32 %var_2_3732, %var_2_3726
; Matched:%var_2_3728:  %var_2_3728 = icmp ult i32 %var_2_3725, %var_2_3724
; %var_2_3735 = icmp ult i32 %var_2_3732, %var_2_3731
; Matched:%var_2_1693:  %var_2_1693 = or i1 %var_2_1691, %var_2_1692
; %var_2_3736 = or i1 %var_2_3734, %var_2_3735
; Matched:%var_2_3730:  %var_2_3730 = zext i1 %var_2_3729 to i8
; %var_2_3737 = zext i1 %var_2_3736 to i8
; Matched:\<badref\>:  store i8 %var_2_2800, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_3737, i8* %var_2_14, align 1
; Matched:%var_2_3731:  %var_2_3731 = and i32 %var_2_3725, 255
; %var_2_3738 = and i32 %var_2_3732, 255
; Matched:%var_2_3732:  %var_2_3732 = tail call i32 @llvm.ctpop.i32(i32 %var_2_3731) #14
; %var_2_3739 = tail call i32 @llvm.ctpop.i32(i32 %var_2_3738)
; Matched:%var_2_2803:  %var_2_2803 = trunc i32 %var_2_2802 to i8
; %var_2_3740 = trunc i32 %var_2_3739 to i8
; Matched:%var_2_3734:  %var_2_3734 = and i8 %var_2_3733, 1
; %var_2_3741 = and i8 %var_2_3740, 1
; Matched:%var_2_3735:  %var_2_3735 = xor i8 %var_2_3734, 1
; %var_2_3742 = xor i8 %var_2_3741, 1
; Matched:\<badref\>:  store i8 %var_2_1699, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_3742, i8* %var_2_21, align 1
; Matched:%var_2_3736:  %var_2_3736 = xor i32 %var_2_3724, %var_2_3721
; %var_2_3743 = xor i32 %var_2_3731, %var_2_3726
; Matched:%var_2_2807:  %var_2_2807 = xor i32 %var_2_2806, %var_2_2795
; %var_2_3744 = xor i32 %var_2_3743, %var_2_3732
; Matched:%var_2_350:  %var_2_350 = lshr i32 %var_2_349, 4
; %var_2_3745 = lshr i32 %var_2_3744, 4
; Matched:%var_2_351:  %var_2_351 = trunc i32 %var_2_350 to i8
; %var_2_3746 = trunc i32 %var_2_3745 to i8
; Matched:%var_2_3740:  %var_2_3740 = and i8 %var_2_3739, 1
; %var_2_3747 = and i8 %var_2_3746, 1
; Matched:\<badref\>:  store i8 %var_2_352, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_3747, i8* %var_2_27, align 1
; Matched:%var_2_3741:  %var_2_3741 = icmp eq i32 %var_2_3725, 0
; %var_2_3748 = icmp eq i32 %var_2_3732, 0
; Matched:%var_2_1706:  %var_2_1706 = zext i1 %var_2_1705 to i8
; %var_2_3749 = zext i1 %var_2_3748 to i8
; Matched:\<badref\>:  store i8 %var_2_3742, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_3749, i8* %var_2_30, align 1
; Matched:%var_2_3743:  %var_2_3743 = lshr i32 %var_2_3725, 31
; %var_2_3750 = lshr i32 %var_2_3732, 31
; Matched:%var_2_3744:  %var_2_3744 = trunc i32 %var_2_3743 to i8
; %var_2_3751 = trunc i32 %var_2_3750 to i8
; Matched:\<badref\>:  store i8 %var_2_356, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_3751, i8* %var_2_33, align 1
; Matched:%var_2_3745:  %var_2_3745 = lshr i32 %var_2_3721, 31
; %var_2_3752 = lshr i32 %var_2_3726, 31
; Matched:%var_2_358:  %var_2_358 = lshr i32 %var_2_336, 31
; %var_2_3753 = lshr i32 %var_2_3731, 31
; Matched:%var_2_3747:  %var_2_3747 = xor i32 %var_2_3743, %var_2_3745
; %var_2_3754 = xor i32 %var_2_3750, %var_2_3752
; Matched:%var_2_3748:  %var_2_3748 = xor i32 %var_2_3743, %var_2_3746
; %var_2_3755 = xor i32 %var_2_3750, %var_2_3753
; Matched:%var_2_3749:  %var_2_3749 = add nuw nsw i32 %var_2_3747, %var_2_3748
; %var_2_3756 = add nuw nsw i32 %var_2_3754, %var_2_3755
; Matched:%var_2_3750:  %var_2_3750 = icmp eq i32 %var_2_3749, 2
; %var_2_3757 = icmp eq i32 %var_2_3756, 2
; Matched:%var_2_363:  %var_2_363 = zext i1 %var_2_362 to i8
; %var_2_3758 = zext i1 %var_2_3757 to i8
; Matched:\<badref\>:  store i8 %var_2_363, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_3758, i8* %var_2_39, align 1
; Matched:%var_2_2822:  %var_2_2822 = add i64 %var_2_2753, -32
; %var_2_3759 = add i64 %var_2_3722, -32
; Matched:%var_2_1717:  %var_2_1717 = add i64 %var_2_1678, 19
; %var_2_3760 = add i64 %var_2_3721, 19
; Matched:\<badref\>:  store i64 %var_2_1717, i64* %PC, align 8
; store i64 %var_2_3760, i64* %var_2_3, align 8
; Matched:%var_2_366:  %var_2_366 = inttoptr i64 %var_2_364 to i32*
; %var_2_3761 = inttoptr i64 %var_2_3759 to i32*
; Matched:\<badref\>:  store i32 %var_2_3725, i32* %var_2_3754, align 4
; store i32 %var_2_3732, i32* %var_2_3761, align 4
%var_2_3762 = load i64, i64* %RBP.i, align 8
%var_2_3763 = add i64 %var_2_3762, -32
%var_2_3764 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_3654:  %var_2_3654 = add i64 %var_2_3653, 3
; %var_2_3765 = add i64 %var_2_3764, 3
; Matched:\<badref\>:  store i64 %var_2_3654, i64* %PC, align 8
; store i64 %var_2_3765, i64* %var_2_3, align 8
%var_2_3766 = inttoptr i64 %var_2_3763 to i32*
%var_2_3767 = load i32, i32* %var_2_3766, align 4
; Matched:%var_2_1725:  %var_2_1725 = zext i32 %var_2_1724 to i64
; %var_2_3768 = zext i32 %var_2_3767 to i64
; Matched:\<badref\>:  store i64 %var_2_1725, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_3768, i64* %RCX.i2236, align 8
%var_2_3769 = add i64 %var_2_3762, -8
; Matched:%var_2_416:  %var_2_416 = add i64 %var_2_410, 6
; %var_2_3770 = add i64 %var_2_3764, 6
; Matched:\<badref\>:  store i64 %var_2_3804, i64* %PC, align 8
; store i64 %var_2_3770, i64* %var_2_3, align 8
%var_2_3771 = inttoptr i64 %var_2_3769 to i32*
%var_2_3772 = load i32, i32* %var_2_3771, align 4
%var_2_3773 = add i32 %var_2_3772, %var_2_3767
; Matched:%var_2_1731:  %var_2_1731 = zext i32 %var_2_1730 to i64
; %var_2_3774 = zext i32 %var_2_3773 to i64
; Matched:\<badref\>:  store i64 %var_2_1731, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_3774, i64* %RCX.i2236, align 8
; Matched:%var_2_3768:  %var_2_3768 = icmp ult i32 %var_2_3766, %var_2_3760
; %var_2_3775 = icmp ult i32 %var_2_3773, %var_2_3767
; Matched:%var_2_2839:  %var_2_2839 = icmp ult i32 %var_2_2836, %var_2_2835
; %var_2_3776 = icmp ult i32 %var_2_3773, %var_2_3772
; Matched:%var_2_3770:  %var_2_3770 = or i1 %var_2_3768, %var_2_3769
; %var_2_3777 = or i1 %var_2_3775, %var_2_3776
; Matched:%var_2_2841:  %var_2_2841 = zext i1 %var_2_2840 to i8
; %var_2_3778 = zext i1 %var_2_3777 to i8
; Matched:\<badref\>:  store i8 %var_2_3771, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_3778, i8* %var_2_14, align 1
; Matched:%var_2_384:  %var_2_384 = and i32 %var_2_378, 255
; %var_2_3779 = and i32 %var_2_3773, 255
; Matched:%var_2_3773:  %var_2_3773 = tail call i32 @llvm.ctpop.i32(i32 %var_2_3772) #14
; %var_2_3780 = tail call i32 @llvm.ctpop.i32(i32 %var_2_3779)
; Matched:%var_2_3774:  %var_2_3774 = trunc i32 %var_2_3773 to i8
; %var_2_3781 = trunc i32 %var_2_3780 to i8
; Matched:%var_2_3775:  %var_2_3775 = and i8 %var_2_3774, 1
; %var_2_3782 = and i8 %var_2_3781, 1
; Matched:%var_2_388:  %var_2_388 = xor i8 %var_2_387, 1
; %var_2_3783 = xor i8 %var_2_3782, 1
; Matched:\<badref\>:  store i8 %var_2_388, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_3783, i8* %var_2_21, align 1
; Matched:%var_2_2847:  %var_2_2847 = xor i32 %var_2_2835, %var_2_2830
; %var_2_3784 = xor i32 %var_2_3772, %var_2_3767
; Matched:%var_2_390:  %var_2_390 = xor i32 %var_2_389, %var_2_378
; %var_2_3785 = xor i32 %var_2_3784, %var_2_3773
; Matched:%var_2_2849:  %var_2_2849 = lshr i32 %var_2_2848, 4
; %var_2_3786 = lshr i32 %var_2_3785, 4
; Matched:%var_2_3780:  %var_2_3780 = trunc i32 %var_2_3779 to i8
; %var_2_3787 = trunc i32 %var_2_3786 to i8
; Matched:%var_2_3781:  %var_2_3781 = and i8 %var_2_3780, 1
; %var_2_3788 = and i8 %var_2_3787, 1
; Matched:\<badref\>:  store i8 %var_2_3781, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_3788, i8* %var_2_27, align 1
; Matched:%var_2_2852:  %var_2_2852 = icmp eq i32 %var_2_2836, 0
; %var_2_3789 = icmp eq i32 %var_2_3773, 0
; Matched:%var_2_395:  %var_2_395 = zext i1 %var_2_394 to i8
; %var_2_3790 = zext i1 %var_2_3789 to i8
; Matched:\<badref\>:  store i8 %var_2_395, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_3790, i8* %var_2_30, align 1
; Matched:%var_2_396:  %var_2_396 = lshr i32 %var_2_378, 31
; %var_2_3791 = lshr i32 %var_2_3773, 31
; Matched:%var_2_2855:  %var_2_2855 = trunc i32 %var_2_2854 to i8
; %var_2_3792 = trunc i32 %var_2_3791 to i8
; Matched:\<badref\>:  store i8 %var_2_3785, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_3792, i8* %var_2_33, align 1
; Matched:%var_2_3786:  %var_2_3786 = lshr i32 %var_2_3760, 31
; %var_2_3793 = lshr i32 %var_2_3767, 31
; Matched:%var_2_3787:  %var_2_3787 = lshr i32 %var_2_3765, 31
; %var_2_3794 = lshr i32 %var_2_3772, 31
; Matched:%var_2_2858:  %var_2_2858 = xor i32 %var_2_2854, %var_2_2856
; %var_2_3795 = xor i32 %var_2_3791, %var_2_3793
; Matched:%var_2_401:  %var_2_401 = xor i32 %var_2_396, %var_2_399
; %var_2_3796 = xor i32 %var_2_3791, %var_2_3794
; Matched:%var_2_402:  %var_2_402 = add nuw nsw i32 %var_2_400, %var_2_401
; %var_2_3797 = add nuw nsw i32 %var_2_3795, %var_2_3796
; Matched:%var_2_403:  %var_2_403 = icmp eq i32 %var_2_402, 2
; %var_2_3798 = icmp eq i32 %var_2_3797, 2
; Matched:%var_2_2862:  %var_2_2862 = zext i1 %var_2_2861 to i8
; %var_2_3799 = zext i1 %var_2_3798 to i8
; Matched:\<badref\>:  store i8 %var_2_3792, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_3799, i8* %var_2_39, align 1
; Matched:%var_2_3793:  %var_2_3793 = add i64 %var_2_3755, -36
; %var_2_3800 = add i64 %var_2_3762, -36
%var_2_3801 = add i64 %var_2_3764, 9
store i64 %var_2_3801, i64* %var_2_3, align 8
; Matched:%var_2_2865:  %var_2_2865 = inttoptr i64 %var_2_2863 to i32*
; %var_2_3802 = inttoptr i64 %var_2_3800 to i32*
; Matched:\<badref\>:  store i32 %var_2_2836, i32* %var_2_2865, align 4
; store i32 %var_2_3773, i32* %var_2_3802, align 4
%var_2_3803 = load i64, i64* %RBP.i, align 8
%var_2_3804 = add i64 %var_2_3803, -36
%var_2_3805 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_128:  %var_2_128 = add i64 %var_2_127, 3
; %var_2_3806 = add i64 %var_2_3805, 3
; Matched:\<badref\>:  store i64 %var_2_128, i64* %PC, align 8
; store i64 %var_2_3806, i64* %var_2_3, align 8
%var_2_3807 = inttoptr i64 %var_2_3804 to i32*
%var_2_3808 = load i32, i32* %var_2_3807, align 4
; Matched:%var_2_1766:  %var_2_1766 = zext i32 %var_2_1765 to i64
; %var_2_3809 = zext i32 %var_2_3808 to i64
; Matched:\<badref\>:  store i64 %var_2_1766, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_3809, i64* %RCX.i2236, align 8
%var_2_3810 = add i64 %var_2_3803, -8
; Matched:%var_2_1621:  %var_2_1621 = add i64 %var_2_1615, 6
; %var_2_3811 = add i64 %var_2_3805, 6
; Matched:\<badref\>:  store i64 %var_2_1621, i64* %PC, align 8
; store i64 %var_2_3811, i64* %var_2_3, align 8
%var_2_3812 = inttoptr i64 %var_2_3810 to i32*
%var_2_3813 = load i32, i32* %var_2_3812, align 4
%var_2_3814 = add i32 %var_2_3813, %var_2_3808
; Matched:%var_2_1772:  %var_2_1772 = zext i32 %var_2_1771 to i64
; %var_2_3815 = zext i32 %var_2_3814 to i64
; Matched:\<badref\>:  store i64 %var_2_1772, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_3815, i64* %RCX.i2236, align 8
; Matched:%var_2_1773:  %var_2_1773 = icmp ult i32 %var_2_1771, %var_2_1765
; %var_2_3816 = icmp ult i32 %var_2_3814, %var_2_3808
; Matched:%var_2_3810:  %var_2_3810 = icmp ult i32 %var_2_3807, %var_2_3806
; %var_2_3817 = icmp ult i32 %var_2_3814, %var_2_3813
; Matched:%var_2_3811:  %var_2_3811 = or i1 %var_2_3809, %var_2_3810
; %var_2_3818 = or i1 %var_2_3816, %var_2_3817
; Matched:%var_2_3812:  %var_2_3812 = zext i1 %var_2_3811 to i8
; %var_2_3819 = zext i1 %var_2_3818 to i8
; Matched:\<badref\>:  store i8 %var_2_2882, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_3819, i8* %var_2_14, align 1
; Matched:%var_2_2883:  %var_2_2883 = and i32 %var_2_2877, 255
; %var_2_3820 = and i32 %var_2_3814, 255
; Matched:%var_2_2884:  %var_2_2884 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2883) #14
; %var_2_3821 = tail call i32 @llvm.ctpop.i32(i32 %var_2_3820)
; Matched:%var_2_427:  %var_2_427 = trunc i32 %var_2_426 to i8
; %var_2_3822 = trunc i32 %var_2_3821 to i8
; Matched:%var_2_2886:  %var_2_2886 = and i8 %var_2_2885, 1
; %var_2_3823 = and i8 %var_2_3822, 1
; Matched:%var_2_3817:  %var_2_3817 = xor i8 %var_2_3816, 1
; %var_2_3824 = xor i8 %var_2_3823, 1
; Matched:\<badref\>:  store i8 %var_2_3817, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_3824, i8* %var_2_21, align 1
; Matched:%var_2_2888:  %var_2_2888 = xor i32 %var_2_2876, %var_2_2871
; %var_2_3825 = xor i32 %var_2_3813, %var_2_3808
; Matched:%var_2_2889:  %var_2_2889 = xor i32 %var_2_2888, %var_2_2877
; %var_2_3826 = xor i32 %var_2_3825, %var_2_3814
; Matched:%var_2_3820:  %var_2_3820 = lshr i32 %var_2_3819, 4
; %var_2_3827 = lshr i32 %var_2_3826, 4
; Matched:%var_2_3821:  %var_2_3821 = trunc i32 %var_2_3820 to i8
; %var_2_3828 = trunc i32 %var_2_3827 to i8
; Matched:%var_2_3822:  %var_2_3822 = and i8 %var_2_3821, 1
; %var_2_3829 = and i8 %var_2_3828, 1
; Matched:\<badref\>:  store i8 %var_2_1786, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_3829, i8* %var_2_27, align 1
; Matched:%var_2_3823:  %var_2_3823 = icmp eq i32 %var_2_3807, 0
; %var_2_3830 = icmp eq i32 %var_2_3814, 0
; Matched:%var_2_3824:  %var_2_3824 = zext i1 %var_2_3823 to i8
; %var_2_3831 = zext i1 %var_2_3830 to i8
; Matched:\<badref\>:  store i8 %var_2_2894, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_3831, i8* %var_2_30, align 1
; Matched:%var_2_2895:  %var_2_2895 = lshr i32 %var_2_2877, 31
; %var_2_3832 = lshr i32 %var_2_3814, 31
; Matched:%var_2_3826:  %var_2_3826 = trunc i32 %var_2_3825 to i8
; %var_2_3833 = trunc i32 %var_2_3832 to i8
; Matched:\<badref\>:  store i8 %var_2_3826, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_3833, i8* %var_2_33, align 1
; Matched:%var_2_3827:  %var_2_3827 = lshr i32 %var_2_3801, 31
; %var_2_3834 = lshr i32 %var_2_3808, 31
; Matched:%var_2_440:  %var_2_440 = lshr i32 %var_2_418, 31
; %var_2_3835 = lshr i32 %var_2_3813, 31
; Matched:%var_2_3829:  %var_2_3829 = xor i32 %var_2_3825, %var_2_3827
; %var_2_3836 = xor i32 %var_2_3832, %var_2_3834
; Matched:%var_2_3830:  %var_2_3830 = xor i32 %var_2_3825, %var_2_3828
; %var_2_3837 = xor i32 %var_2_3832, %var_2_3835
; Matched:%var_2_2901:  %var_2_2901 = add nuw nsw i32 %var_2_2899, %var_2_2900
; %var_2_3838 = add nuw nsw i32 %var_2_3836, %var_2_3837
; Matched:%var_2_2902:  %var_2_2902 = icmp eq i32 %var_2_2901, 2
; %var_2_3839 = icmp eq i32 %var_2_3838, 2
; Matched:%var_2_3833:  %var_2_3833 = zext i1 %var_2_3832 to i8
; %var_2_3840 = zext i1 %var_2_3839 to i8
; Matched:\<badref\>:  store i8 %var_2_3833, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_3840, i8* %var_2_39, align 1
; Matched:%var_2_3834:  %var_2_3834 = add i64 %var_2_3796, -40
; %var_2_3841 = add i64 %var_2_3803, -40
%var_2_3842 = add i64 %var_2_3805, 9
store i64 %var_2_3842, i64* %var_2_3, align 8
; Matched:%var_2_3836:  %var_2_3836 = inttoptr i64 %var_2_3834 to i32*
; %var_2_3843 = inttoptr i64 %var_2_3841 to i32*
; Matched:\<badref\>:  store i32 %var_2_2877, i32* %var_2_2906, align 4
; store i32 %var_2_3814, i32* %var_2_3843, align 4
%var_2_3844 = load i64, i64* %RBP.i, align 8
%var_2_3845 = add i64 %var_2_3844, -16
%var_2_3846 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_678:  %var_2_678 = add i64 %var_2_677, 4
; %var_2_3847 = add i64 %var_2_3846, 4
; Matched:\<badref\>:  store i64 %var_2_678, i64* %PC, align 8
; store i64 %var_2_3847, i64* %var_2_3, align 8
%var_2_3848 = inttoptr i64 %var_2_3845 to i64*
%var_2_3849 = load i64, i64* %var_2_3848, align 8
; Matched:\<badref\>:  store i64 %var_2_2065, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_3849, i64* %RDX.i2239, align 8
%var_2_3850 = add i64 %var_2_3844, -28
%var_2_3851 = add i64 %var_2_3846, 8
store i64 %var_2_3851, i64* %var_2_3, align 8
%var_2_3852 = inttoptr i64 %var_2_3850 to i32*
%var_2_3853 = load i32, i32* %var_2_3852, align 4
%var_2_3854 = sext i32 %var_2_3853 to i64
; Matched:\<badref\>:  store i64 %var_2_1924, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_3854, i64* %RSI.i2233, align 8
%var_2_3855 = shl nsw i64 %var_2_3854, 3
%var_2_3856 = add i64 %var_2_3855, %var_2_3849
; Matched:%var_2_4296:  %var_2_4296 = add i64 %var_2_4291, 13
; %var_2_3857 = add i64 %var_2_3846, 13
; Matched:\<badref\>:  store i64 %var_2_4296, i64* %PC, align 8
; store i64 %var_2_3857, i64* %var_2_3, align 8
%var_2_3858 = inttoptr i64 %var_2_3856 to i64*
%var_2_3859 = load i64, i64* %var_2_3858, align 8
store i64 %var_2_3859, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
; Matched:%var_2_1930:  %var_2_1930 = add i64 %var_2_1916, 17
; %var_2_3860 = add i64 %var_2_3846, 17
; Matched:\<badref\>:  store i64 %var_2_1930, i64* %PC, align 8
; store i64 %var_2_3860, i64* %var_2_3, align 8
%var_2_3861 = load i64, i64* %var_2_3848, align 8
; Matched:\<badref\>:  store i64 %var_2_2044, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_3861, i64* %RDX.i2239, align 8
%var_2_3862 = add i64 %var_2_3844, -32
; Matched:%var_2_3856:  %var_2_3856 = add i64 %var_2_3839, 21
; %var_2_3863 = add i64 %var_2_3846, 21
; Matched:\<badref\>:  store i64 %var_2_3856, i64* %PC, align 8
; store i64 %var_2_3863, i64* %var_2_3, align 8
%var_2_3864 = inttoptr i64 %var_2_3862 to i32*
%var_2_3865 = load i32, i32* %var_2_3864, align 4
%var_2_3866 = sext i32 %var_2_3865 to i64
; Matched:\<badref\>:  store i64 %var_2_1936, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_3866, i64* %RSI.i2233, align 8
%var_2_3867 = shl nsw i64 %var_2_3866, 3
%var_2_3868 = add i64 %var_2_3867, %var_2_3861
; Matched:%var_2_1939:  %var_2_1939 = add i64 %var_2_1916, 26
; %var_2_3869 = add i64 %var_2_3846, 26
; Matched:\<badref\>:  store i64 %var_2_2165, i64* %PC, align 8
; store i64 %var_2_3869, i64* %var_2_3, align 8
%var_2_3870 = bitcast i64 %var_2_3859 to double
%var_2_3871 = inttoptr i64 %var_2_3868 to double*
%var_2_3872 = load double, double* %var_2_3871, align 8
%var_2_3873 = fadd double %var_2_3870, %var_2_3872
store double %var_2_3873, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
; Matched:%var_2_1831:  %var_2_1831 = add i64 %var_2_1801, -120
; %var_2_3874 = add i64 %var_2_3844, -120
; Matched:%var_2_1045:  %var_2_1045 = add i64 %var_2_1001, 31
; %var_2_3875 = add i64 %var_2_3846, 31
; Matched:\<badref\>:  store i64 %var_2_4360, i64* %PC, align 8
; store i64 %var_2_3875, i64* %var_2_3, align 8
; Matched:%var_2_3869:  %var_2_3869 = inttoptr i64 %var_2_3867 to double*
; %var_2_3876 = inttoptr i64 %var_2_3874 to double*
; Matched:\<badref\>:  store double %var_2_3866, double* %var_2_3869, align 8
; store double %var_2_3873, double* %var_2_3876, align 8
%var_2_3877 = load i64, i64* %RBP.i, align 8
%var_2_3878 = add i64 %var_2_3877, -16
%var_2_3879 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_711:  %var_2_711 = add i64 %var_2_710, 4
; %var_2_3880 = add i64 %var_2_3879, 4
; Matched:\<badref\>:  store i64 %var_2_711, i64* %PC, align 8
; store i64 %var_2_3880, i64* %var_2_3, align 8
%var_2_3881 = inttoptr i64 %var_2_3878 to i64*
%var_2_3882 = load i64, i64* %var_2_3881, align 8
; Matched:\<badref\>:  store i64 %var_2_2178, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_3882, i64* %RDX.i2239, align 8
%var_2_3883 = add i64 %var_2_3877, -28
; Matched:%var_2_91:  %var_2_91 = add i64 %var_2_90, 7
; %var_2_3884 = add i64 %var_2_3879, 7
; Matched:\<badref\>:  store i64 %var_2_2180, i64* %PC, align 8
; store i64 %var_2_3884, i64* %var_2_3, align 8
%var_2_3885 = inttoptr i64 %var_2_3883 to i32*
%var_2_3886 = load i32, i32* %var_2_3885, align 4
%var_2_3887 = add i32 %var_2_3886, 1
; Matched:%var_2_1958:  %var_2_1958 = zext i32 %var_2_1957 to i64
; %var_2_3888 = zext i32 %var_2_3887 to i64
; Matched:\<badref\>:  store i64 %var_2_2299, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_3888, i64* %RCX.i2236, align 8
; Matched:%var_2_2300:  %var_2_2300 = icmp eq i32 %var_2_2297, -1
; %var_2_3889 = icmp eq i32 %var_2_3886, -1
; Matched:%var_2_2301:  %var_2_2301 = icmp eq i32 %var_2_2298, 0
; %var_2_3890 = icmp eq i32 %var_2_3887, 0
; Matched:%var_2_2302:  %var_2_2302 = or i1 %var_2_2300, %var_2_2301
; %var_2_3891 = or i1 %var_2_3889, %var_2_3890
; Matched:%var_2_2303:  %var_2_2303 = zext i1 %var_2_2302 to i8
; %var_2_3892 = zext i1 %var_2_3891 to i8
; Matched:\<badref\>:  store i8 %var_2_2303, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_3892, i8* %var_2_14, align 1
; Matched:%var_2_2304:  %var_2_2304 = and i32 %var_2_2298, 255
; %var_2_3893 = and i32 %var_2_3887, 255
; Matched:%var_2_1964:  %var_2_1964 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1963) #14
; %var_2_3894 = tail call i32 @llvm.ctpop.i32(i32 %var_2_3893)
; Matched:%var_2_2958:  %var_2_2958 = trunc i32 %var_2_2957 to i8
; %var_2_3895 = trunc i32 %var_2_3894 to i8
; Matched:%var_2_2307:  %var_2_2307 = and i8 %var_2_2306, 1
; %var_2_3896 = and i8 %var_2_3895, 1
; Matched:%var_2_2308:  %var_2_2308 = xor i8 %var_2_2307, 1
; %var_2_3897 = xor i8 %var_2_3896, 1
; Matched:\<badref\>:  store i8 %var_2_1854, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_3897, i8* %var_2_21, align 1
; Matched:%var_2_1855:  %var_2_1855 = xor i32 %var_2_1844, %var_2_1843
; %var_2_3898 = xor i32 %var_2_3887, %var_2_3886
; Matched:%var_2_1969:  %var_2_1969 = lshr i32 %var_2_1968, 4
; %var_2_3899 = lshr i32 %var_2_3898, 4
; Matched:%var_2_1857:  %var_2_1857 = trunc i32 %var_2_1856 to i8
; %var_2_3900 = trunc i32 %var_2_3899 to i8
; Matched:%var_2_1971:  %var_2_1971 = and i8 %var_2_1970, 1
; %var_2_3901 = and i8 %var_2_3900, 1
; Matched:\<badref\>:  store i8 %var_2_1971, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_3901, i8* %var_2_27, align 1
; Matched:%var_2_1859:  %var_2_1859 = zext i1 %var_2_1847 to i8
; %var_2_3902 = zext i1 %var_2_3890 to i8
; Matched:\<badref\>:  store i8 %var_2_1972, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_3902, i8* %var_2_30, align 1
; Matched:%var_2_2314:  %var_2_2314 = lshr i32 %var_2_2298, 31
; %var_2_3903 = lshr i32 %var_2_3887, 31
; Matched:%var_2_1974:  %var_2_1974 = trunc i32 %var_2_1973 to i8
; %var_2_3904 = trunc i32 %var_2_3903 to i8
; Matched:\<badref\>:  store i8 %var_2_2315, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_3904, i8* %var_2_33, align 1
; Matched:%var_2_2316:  %var_2_2316 = lshr i32 %var_2_2297, 31
; %var_2_3905 = lshr i32 %var_2_3886, 31
; Matched:%var_2_2317:  %var_2_2317 = xor i32 %var_2_2314, %var_2_2316
; %var_2_3906 = xor i32 %var_2_3903, %var_2_3905
; Matched:%var_2_1977:  %var_2_1977 = add nuw nsw i32 %var_2_1976, %var_2_1973
; %var_2_3907 = add nuw nsw i32 %var_2_3906, %var_2_3903
; Matched:%var_2_1978:  %var_2_1978 = icmp eq i32 %var_2_1977, 2
; %var_2_3908 = icmp eq i32 %var_2_3907, 2
; Matched:%var_2_2972:  %var_2_2972 = zext i1 %var_2_2971 to i8
; %var_2_3909 = zext i1 %var_2_3908 to i8
; Matched:\<badref\>:  store i8 %var_2_2972, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_3909, i8* %var_2_39, align 1
%var_2_3910 = sext i32 %var_2_3887 to i64
; Matched:\<badref\>:  store i64 %var_2_2321, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_3910, i64* %RSI.i2233, align 8
%var_2_3911 = shl nsw i64 %var_2_3910, 3
%var_2_3912 = add i64 %var_2_3882, %var_2_3911
; Matched:%var_2_229:  %var_2_229 = add i64 %var_2_214, 18
; %var_2_3913 = add i64 %var_2_3879, 18
; Matched:\<badref\>:  store i64 %var_2_229, i64* %PC, align 8
; store i64 %var_2_3913, i64* %var_2_3, align 8
%var_2_3914 = inttoptr i64 %var_2_3912 to i64*
%var_2_3915 = load i64, i64* %var_2_3914, align 8
store i64 %var_2_3915, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
; Matched:%var_2_747:  %var_2_747 = add i64 %var_2_710, 22
; %var_2_3916 = add i64 %var_2_3879, 22
; Matched:\<badref\>:  store i64 %var_2_4135, i64* %PC, align 8
; store i64 %var_2_3916, i64* %var_2_3, align 8
%var_2_3917 = load i64, i64* %var_2_3881, align 8
; Matched:\<badref\>:  store i64 %var_2_1839, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_3917, i64* %RDX.i2239, align 8
%var_2_3918 = add i64 %var_2_3877, -32
; Matched:%var_2_750:  %var_2_750 = add i64 %var_2_710, 25
; %var_2_3919 = add i64 %var_2_3879, 25
; Matched:\<badref\>:  store i64 %var_2_524, i64* %PC, align 8
; store i64 %var_2_3919, i64* %var_2_3, align 8
%var_2_3920 = inttoptr i64 %var_2_3918 to i32*
%var_2_3921 = load i32, i32* %var_2_3920, align 4
%var_2_3922 = add i32 %var_2_3921, 1
; Matched:%var_2_1993:  %var_2_1993 = zext i32 %var_2_1992 to i64
; %var_2_3923 = zext i32 %var_2_3922 to i64
; Matched:\<badref\>:  store i64 %var_2_1993, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_3923, i64* %RCX.i2236, align 8
; Matched:%var_2_1994:  %var_2_1994 = icmp eq i32 %var_2_1991, -1
; %var_2_3924 = icmp eq i32 %var_2_3921, -1
; Matched:%var_2_1882:  %var_2_1882 = icmp eq i32 %var_2_1879, 0
; %var_2_3925 = icmp eq i32 %var_2_3922, 0
; Matched:%var_2_1883:  %var_2_1883 = or i1 %var_2_1881, %var_2_1882
; %var_2_3926 = or i1 %var_2_3924, %var_2_3925
; Matched:%var_2_1997:  %var_2_1997 = zext i1 %var_2_1996 to i8
; %var_2_3927 = zext i1 %var_2_3926 to i8
; Matched:\<badref\>:  store i8 %var_2_3555, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_3927, i8* %var_2_14, align 1
; Matched:%var_2_3104:  %var_2_3104 = and i32 %var_2_3098, 255
; %var_2_3928 = and i32 %var_2_3922, 255
; Matched:%var_2_1999:  %var_2_1999 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1998) #14
; %var_2_3929 = tail call i32 @llvm.ctpop.i32(i32 %var_2_3928)
; Matched:%var_2_2000:  %var_2_2000 = trunc i32 %var_2_1999 to i8
; %var_2_3930 = trunc i32 %var_2_3929 to i8
; Matched:%var_2_3107:  %var_2_3107 = and i8 %var_2_3106, 1
; %var_2_3931 = and i8 %var_2_3930, 1
; Matched:%var_2_3108:  %var_2_3108 = xor i8 %var_2_3107, 1
; %var_2_3932 = xor i8 %var_2_3931, 1
; Matched:\<badref\>:  store i8 %var_2_2002, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_3932, i8* %var_2_21, align 1
; Matched:%var_2_1890:  %var_2_1890 = xor i32 %var_2_1879, %var_2_1878
; %var_2_3933 = xor i32 %var_2_3922, %var_2_3921
; Matched:%var_2_1891:  %var_2_1891 = lshr i32 %var_2_1890, 4
; %var_2_3934 = lshr i32 %var_2_3933, 4
; Matched:%var_2_1892:  %var_2_1892 = trunc i32 %var_2_1891 to i8
; %var_2_3935 = trunc i32 %var_2_3934 to i8
; Matched:%var_2_1893:  %var_2_1893 = and i8 %var_2_1892, 1
; %var_2_3936 = and i8 %var_2_3935, 1
; Matched:\<badref\>:  store i8 %var_2_1893, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_3936, i8* %var_2_27, align 1
; Matched:%var_2_2007:  %var_2_2007 = zext i1 %var_2_1995 to i8
; %var_2_3937 = zext i1 %var_2_3925 to i8
; Matched:\<badref\>:  store i8 %var_2_2007, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_3937, i8* %var_2_30, align 1
; Matched:%var_2_1895:  %var_2_1895 = lshr i32 %var_2_1879, 31
; %var_2_3938 = lshr i32 %var_2_3922, 31
; Matched:%var_2_1896:  %var_2_1896 = trunc i32 %var_2_1895 to i8
; %var_2_3939 = trunc i32 %var_2_3938 to i8
; Matched:\<badref\>:  store i8 %var_2_3932, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_3939, i8* %var_2_33, align 1
; Matched:%var_2_2010:  %var_2_2010 = lshr i32 %var_2_1991, 31
; %var_2_3940 = lshr i32 %var_2_3921, 31
; Matched:%var_2_2011:  %var_2_2011 = xor i32 %var_2_2008, %var_2_2010
; %var_2_3941 = xor i32 %var_2_3938, %var_2_3940
; Matched:%var_2_2012:  %var_2_2012 = add nuw nsw i32 %var_2_2011, %var_2_2008
; %var_2_3942 = add nuw nsw i32 %var_2_3941, %var_2_3938
; Matched:%var_2_4049:  %var_2_4049 = icmp eq i32 %var_2_4048, 2
; %var_2_3943 = icmp eq i32 %var_2_3942, 2
; Matched:%var_2_4604:  %var_2_4604 = zext i1 %var_2_4603 to i8
; %var_2_3944 = zext i1 %var_2_3943 to i8
; Matched:\<badref\>:  store i8 %var_2_2014, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_3944, i8* %var_2_39, align 1
%var_2_3945 = sext i32 %var_2_3922 to i64
; Matched:\<badref\>:  store i64 %var_2_1902, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_3945, i64* %RSI.i2233, align 8
%var_2_3946 = shl nsw i64 %var_2_3945, 3
%var_2_3947 = add i64 %var_2_3917, %var_2_3946
; Matched:%var_2_3237:  %var_2_3237 = add i64 %var_2_3168, 36
; %var_2_3948 = add i64 %var_2_3879, 36
; Matched:\<badref\>:  store i64 %var_2_3011, i64* %PC, align 8
; store i64 %var_2_3948, i64* %var_2_3, align 8
%var_2_3949 = bitcast i64 %var_2_3915 to double
%var_2_3950 = inttoptr i64 %var_2_3947 to double*
%var_2_3951 = load double, double* %var_2_3950, align 8
%var_2_3952 = fadd double %var_2_3949, %var_2_3951
store double %var_2_3952, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
; Matched:%var_2_3016:  %var_2_3016 = load i64, i64* %RBP, align 8
; %var_2_3953 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_3017:  %var_2_3017 = add i64 %var_2_3016, -128
; %var_2_3954 = add i64 %var_2_3953, -128
; Matched:%var_2_560:  %var_2_560 = add i64 %var_2_484, 41
; %var_2_3955 = add i64 %var_2_3879, 41
; Matched:\<badref\>:  store i64 %var_2_2389, i64* %PC, align 8
; store i64 %var_2_3955, i64* %var_2_3, align 8
; Matched:%var_2_3949:  %var_2_3949 = inttoptr i64 %var_2_3947 to double*
; %var_2_3956 = inttoptr i64 %var_2_3954 to double*
; Matched:\<badref\>:  store double %var_2_3945, double* %var_2_3949, align 8
; store double %var_2_3952, double* %var_2_3956, align 8
%var_2_3957 = load i64, i64* %RBP.i, align 8
%var_2_3958 = add i64 %var_2_3957, -16
%var_2_3959 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2943:  %var_2_2943 = add i64 %var_2_2942, 4
; %var_2_3960 = add i64 %var_2_3959, 4
; Matched:\<badref\>:  store i64 %var_2_2943, i64* %PC, align 8
; store i64 %var_2_3960, i64* %var_2_3, align 8
%var_2_3961 = inttoptr i64 %var_2_3958 to i64*
%var_2_3962 = load i64, i64* %var_2_3961, align 8
; Matched:\<badref\>:  store i64 %var_2_1874, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_3962, i64* %RDX.i2239, align 8
%var_2_3963 = add i64 %var_2_3957, -28
%var_2_3964 = add i64 %var_2_3959, 8
store i64 %var_2_3964, i64* %var_2_3, align 8
%var_2_3965 = inttoptr i64 %var_2_3963 to i32*
%var_2_3966 = load i32, i32* %var_2_3965, align 4
%var_2_3967 = sext i32 %var_2_3966 to i64
; Matched:\<badref\>:  store i64 %var_2_2273, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_3967, i64* %RSI.i2233, align 8
%var_2_3968 = shl nsw i64 %var_2_3967, 3
%var_2_3969 = add i64 %var_2_3968, %var_2_3962
; Matched:%var_2_4321:  %var_2_4321 = add i64 %var_2_4316, 13
; %var_2_3970 = add i64 %var_2_3959, 13
; Matched:\<badref\>:  store i64 %var_2_4321, i64* %PC, align 8
; store i64 %var_2_3970, i64* %var_2_3, align 8
%var_2_3971 = inttoptr i64 %var_2_3969 to i64*
%var_2_3972 = load i64, i64* %var_2_3971, align 8
store i64 %var_2_3972, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
; Matched:%var_2_987:  %var_2_987 = add i64 %var_2_976, 17
; %var_2_3973 = add i64 %var_2_3959, 17
; Matched:\<badref\>:  store i64 %var_2_987, i64* %PC, align 8
; store i64 %var_2_3973, i64* %var_2_3, align 8
%var_2_3974 = load i64, i64* %var_2_3961, align 8
; Matched:\<badref\>:  store i64 %var_2_1952, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_3974, i64* %RDX.i2239, align 8
%var_2_3975 = add i64 %var_2_3957, -32
; Matched:%var_2_2159:  %var_2_2159 = add i64 %var_2_2142, 21
; %var_2_3976 = add i64 %var_2_3959, 21
; Matched:\<badref\>:  store i64 %var_2_2159, i64* %PC, align 8
; store i64 %var_2_3976, i64* %var_2_3, align 8
%var_2_3977 = inttoptr i64 %var_2_3975 to i32*
%var_2_3978 = load i32, i32* %var_2_3977, align 4
%var_2_3979 = sext i32 %var_2_3978 to i64
; Matched:\<badref\>:  store i64 %var_2_1823, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_3979, i64* %RSI.i2233, align 8
%var_2_3980 = shl nsw i64 %var_2_3979, 3
%var_2_3981 = add i64 %var_2_3980, %var_2_3974
; Matched:%var_2_3382:  %var_2_3382 = add i64 %var_2_3361, 26
; %var_2_3982 = add i64 %var_2_3959, 26
; Matched:\<badref\>:  store i64 %var_2_587, i64* %PC, align 8
; store i64 %var_2_3982, i64* %var_2_3, align 8
%var_2_3983 = bitcast i64 %var_2_3972 to double
%var_2_3984 = inttoptr i64 %var_2_3981 to double*
%var_2_3985 = load double, double* %var_2_3984, align 8
%var_2_3986 = fsub double %var_2_3983, %var_2_3985
store double %var_2_3986, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
; Matched:%var_2_592:  %var_2_592 = add i64 %var_2_562, -136
; %var_2_3987 = add i64 %var_2_3957, -136
; Matched:%var_2_3649:  %var_2_3649 = add i64 %var_2_3605, 34
; %var_2_3988 = add i64 %var_2_3959, 34
; Matched:\<badref\>:  store i64 %var_2_3649, i64* %PC, align 8
; store i64 %var_2_3988, i64* %var_2_3, align 8
; Matched:%var_2_3982:  %var_2_3982 = inttoptr i64 %var_2_3980 to double*
; %var_2_3989 = inttoptr i64 %var_2_3987 to double*
; Matched:\<badref\>:  store double %var_2_3979, double* %var_2_3982, align 8
; store double %var_2_3986, double* %var_2_3989, align 8
%var_2_3990 = load i64, i64* %RBP.i, align 8
%var_2_3991 = add i64 %var_2_3990, -16
%var_2_3992 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_824:  %var_2_824 = add i64 %var_2_823, 4
; %var_2_3993 = add i64 %var_2_3992, 4
; Matched:\<badref\>:  store i64 %var_2_3169, i64* %PC, align 8
; store i64 %var_2_3993, i64* %var_2_3, align 8
%var_2_3994 = inttoptr i64 %var_2_3991 to i64*
%var_2_3995 = load i64, i64* %var_2_3994, align 8
; Matched:\<badref\>:  store i64 %var_2_2268, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_3995, i64* %RDX.i2239, align 8
%var_2_3996 = add i64 %var_2_3990, -28
; Matched:%var_2_177:  %var_2_177 = add i64 %var_2_172, 7
; %var_2_3997 = add i64 %var_2_3992, 7
; Matched:\<badref\>:  store i64 %var_2_91, i64* %PC, align 8
; store i64 %var_2_3997, i64* %var_2_3, align 8
%var_2_3998 = inttoptr i64 %var_2_3996 to i32*
%var_2_3999 = load i32, i32* %var_2_3998, align 4
%var_2_4000 = add i32 %var_2_3999, 1
; Matched:%var_2_1845:  %var_2_1845 = zext i32 %var_2_1844 to i64
; %var_2_4001 = zext i32 %var_2_4000 to i64
; Matched:\<badref\>:  store i64 %var_2_1958, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_4001, i64* %RCX.i2236, align 8
; Matched:%var_2_1959:  %var_2_1959 = icmp eq i32 %var_2_1956, -1
; %var_2_4002 = icmp eq i32 %var_2_3999, -1
; Matched:%var_2_1960:  %var_2_1960 = icmp eq i32 %var_2_1957, 0
; %var_2_4003 = icmp eq i32 %var_2_4000, 0
; Matched:%var_2_1961:  %var_2_1961 = or i1 %var_2_1959, %var_2_1960
; %var_2_4004 = or i1 %var_2_4002, %var_2_4003
; Matched:%var_2_1962:  %var_2_1962 = zext i1 %var_2_1961 to i8
; %var_2_4005 = zext i1 %var_2_4004 to i8
; Matched:\<badref\>:  store i8 %var_2_1962, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_4005, i8* %var_2_14, align 1
; Matched:%var_2_1850:  %var_2_1850 = and i32 %var_2_1844, 255
; %var_2_4006 = and i32 %var_2_4000, 255
; Matched:%var_2_2957:  %var_2_2957 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2956) #14
; %var_2_4007 = tail call i32 @llvm.ctpop.i32(i32 %var_2_4006)
; Matched:%var_2_3412:  %var_2_3412 = trunc i32 %var_2_3411 to i8
; %var_2_4008 = trunc i32 %var_2_4007 to i8
; Matched:%var_2_1966:  %var_2_1966 = and i8 %var_2_1965, 1
; %var_2_4009 = and i8 %var_2_4008, 1
; Matched:%var_2_1967:  %var_2_1967 = xor i8 %var_2_1966, 1
; %var_2_4010 = xor i8 %var_2_4009, 1
; Matched:\<badref\>:  store i8 %var_2_2308, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_4010, i8* %var_2_21, align 1
; Matched:%var_2_1968:  %var_2_1968 = xor i32 %var_2_1957, %var_2_1956
; %var_2_4011 = xor i32 %var_2_4000, %var_2_3999
; Matched:%var_2_2962:  %var_2_2962 = lshr i32 %var_2_2961, 4
; %var_2_4012 = lshr i32 %var_2_4011, 4
; Matched:%var_2_1970:  %var_2_1970 = trunc i32 %var_2_1969 to i8
; %var_2_4013 = trunc i32 %var_2_4012 to i8
; Matched:%var_2_3894:  %var_2_3894 = and i8 %var_2_3893, 1
; %var_2_4014 = and i8 %var_2_4013, 1
; Matched:\<badref\>:  store i8 %var_2_3894, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_4014, i8* %var_2_27, align 1
; Matched:%var_2_1972:  %var_2_1972 = zext i1 %var_2_1960 to i8
; %var_2_4015 = zext i1 %var_2_4003 to i8
; Matched:\<badref\>:  store i8 %var_2_3895, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_4015, i8* %var_2_30, align 1
; Matched:%var_2_1973:  %var_2_1973 = lshr i32 %var_2_1957, 31
; %var_2_4016 = lshr i32 %var_2_4000, 31
; Matched:%var_2_1861:  %var_2_1861 = trunc i32 %var_2_1860 to i8
; %var_2_4017 = trunc i32 %var_2_4016 to i8
; Matched:\<badref\>:  store i8 %var_2_509, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_4017, i8* %var_2_33, align 1
; Matched:%var_2_2968:  %var_2_2968 = lshr i32 %var_2_2949, 31
; %var_2_4018 = lshr i32 %var_2_3999, 31
; Matched:%var_2_2969:  %var_2_2969 = xor i32 %var_2_2966, %var_2_2968
; %var_2_4019 = xor i32 %var_2_4016, %var_2_4018
; Matched:%var_2_2970:  %var_2_2970 = add nuw nsw i32 %var_2_2969, %var_2_2966
; %var_2_4020 = add nuw nsw i32 %var_2_4019, %var_2_4016
; Matched:%var_2_2971:  %var_2_2971 = icmp eq i32 %var_2_2970, 2
; %var_2_4021 = icmp eq i32 %var_2_4020, 2
; Matched:%var_2_3426:  %var_2_3426 = zext i1 %var_2_3425 to i8
; %var_2_4022 = zext i1 %var_2_4021 to i8
; Matched:\<badref\>:  store i8 %var_2_3426, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_4022, i8* %var_2_39, align 1
%var_2_4023 = sext i32 %var_2_4000 to i64
; Matched:\<badref\>:  store i64 %var_2_1980, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_4023, i64* %RSI.i2233, align 8
%var_2_4024 = shl nsw i64 %var_2_4023, 3
%var_2_4025 = add i64 %var_2_3995, %var_2_4024
; Matched:%var_2_744:  %var_2_744 = add i64 %var_2_710, 18
; %var_2_4026 = add i64 %var_2_3992, 18
; Matched:\<badref\>:  store i64 %var_2_518, i64* %PC, align 8
; store i64 %var_2_4026, i64* %var_2_3, align 8
%var_2_4027 = inttoptr i64 %var_2_4025 to i64*
%var_2_4028 = load i64, i64* %var_2_4027, align 8
store i64 %var_2_4028, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
; Matched:%var_2_3909:  %var_2_3909 = add i64 %var_2_3872, 22
; %var_2_4029 = add i64 %var_2_3992, 22
; Matched:\<badref\>:  store i64 %var_2_1873, i64* %PC, align 8
; store i64 %var_2_4029, i64* %var_2_3, align 8
%var_2_4030 = load i64, i64* %var_2_3994, align 8
; Matched:\<badref\>:  store i64 %var_2_2157, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_4030, i64* %RDX.i2239, align 8
%var_2_4031 = add i64 %var_2_3990, -32
; Matched:%var_2_3912:  %var_2_3912 = add i64 %var_2_3872, 25
; %var_2_4032 = add i64 %var_2_3992, 25
; Matched:\<badref\>:  store i64 %var_2_750, i64* %PC, align 8
; store i64 %var_2_4032, i64* %var_2_3, align 8
%var_2_4033 = inttoptr i64 %var_2_4031 to i32*
%var_2_4034 = load i32, i32* %var_2_4033, align 4
%var_2_4035 = add i32 %var_2_4034, 1
; Matched:%var_2_2569:  %var_2_2569 = zext i32 %var_2_2568 to i64
; %var_2_4036 = zext i32 %var_2_4035 to i64
; Matched:\<badref\>:  store i64 %var_2_2569, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_4036, i64* %RCX.i2236, align 8
; Matched:%var_2_2987:  %var_2_2987 = icmp eq i32 %var_2_2984, -1
; %var_2_4037 = icmp eq i32 %var_2_4034, -1
; Matched:%var_2_1995:  %var_2_1995 = icmp eq i32 %var_2_1992, 0
; %var_2_4038 = icmp eq i32 %var_2_4035, 0
; Matched:%var_2_1996:  %var_2_1996 = or i1 %var_2_1994, %var_2_1995
; %var_2_4039 = or i1 %var_2_4037, %var_2_4038
; Matched:%var_2_3555:  %var_2_3555 = zext i1 %var_2_3554 to i8
; %var_2_4040 = zext i1 %var_2_4039 to i8
; Matched:\<badref\>:  store i8 %var_2_2990, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_4040, i8* %var_2_14, align 1
; Matched:%var_2_2991:  %var_2_2991 = and i32 %var_2_2985, 255
; %var_2_4041 = and i32 %var_2_4035, 255
; Matched:%var_2_3105:  %var_2_3105 = tail call i32 @llvm.ctpop.i32(i32 %var_2_3104) #14
; %var_2_4042 = tail call i32 @llvm.ctpop.i32(i32 %var_2_4041)
; Matched:%var_2_3106:  %var_2_3106 = trunc i32 %var_2_3105 to i8
; %var_2_4043 = trunc i32 %var_2_4042 to i8
; Matched:%var_2_2994:  %var_2_2994 = and i8 %var_2_2993, 1
; %var_2_4044 = and i8 %var_2_4043, 1
; Matched:%var_2_2995:  %var_2_2995 = xor i8 %var_2_2994, 1
; %var_2_4045 = xor i8 %var_2_4044, 1
; Matched:\<badref\>:  store i8 %var_2_3108, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_4045, i8* %var_2_21, align 1
; Matched:%var_2_2003:  %var_2_2003 = xor i32 %var_2_1992, %var_2_1991
; %var_2_4046 = xor i32 %var_2_4035, %var_2_4034
; Matched:%var_2_2004:  %var_2_2004 = lshr i32 %var_2_2003, 4
; %var_2_4047 = lshr i32 %var_2_4046, 4
; Matched:%var_2_2005:  %var_2_2005 = trunc i32 %var_2_2004 to i8
; %var_2_4048 = trunc i32 %var_2_4047 to i8
; Matched:%var_2_2006:  %var_2_2006 = and i8 %var_2_2005, 1
; %var_2_4049 = and i8 %var_2_4048, 1
; Matched:\<badref\>:  store i8 %var_2_2006, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_4049, i8* %var_2_27, align 1
; Matched:%var_2_3565:  %var_2_3565 = zext i1 %var_2_3553 to i8
; %var_2_4050 = zext i1 %var_2_4038 to i8
; Matched:\<badref\>:  store i8 %var_2_3565, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_4050, i8* %var_2_30, align 1
; Matched:%var_2_2008:  %var_2_2008 = lshr i32 %var_2_1992, 31
; %var_2_4051 = lshr i32 %var_2_4035, 31
; Matched:%var_2_2009:  %var_2_2009 = trunc i32 %var_2_2008 to i8
; %var_2_4052 = trunc i32 %var_2_4051 to i8
; Matched:\<badref\>:  store i8 %var_2_4045, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_4052, i8* %var_2_33, align 1
; Matched:%var_2_3568:  %var_2_3568 = lshr i32 %var_2_3549, 31
; %var_2_4053 = lshr i32 %var_2_4034, 31
; Matched:%var_2_3117:  %var_2_3117 = xor i32 %var_2_3114, %var_2_3116
; %var_2_4054 = xor i32 %var_2_4051, %var_2_4053
; Matched:%var_2_547:  %var_2_547 = add nuw nsw i32 %var_2_546, %var_2_543
; %var_2_4055 = add nuw nsw i32 %var_2_4054, %var_2_4051
; Matched:%var_2_1900:  %var_2_1900 = icmp eq i32 %var_2_1899, 2
; %var_2_4056 = icmp eq i32 %var_2_4055, 2
; Matched:%var_2_2014:  %var_2_2014 = zext i1 %var_2_2013 to i8
; %var_2_4057 = zext i1 %var_2_4056 to i8
; Matched:\<badref\>:  store i8 %var_2_3120, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_4057, i8* %var_2_39, align 1
%var_2_4058 = sext i32 %var_2_4035 to i64
; Matched:\<badref\>:  store i64 %var_2_2015, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_4058, i64* %RSI.i2233, align 8
%var_2_4059 = shl nsw i64 %var_2_4058, 3
%var_2_4060 = add i64 %var_2_4030, %var_2_4059
; Matched:%var_2_666:  %var_2_666 = add i64 %var_2_597, 36
; %var_2_4061 = add i64 %var_2_3992, 36
; Matched:\<badref\>:  store i64 %var_2_3237, i64* %PC, align 8
; store i64 %var_2_4061, i64* %var_2_3, align 8
%var_2_4062 = bitcast i64 %var_2_4028 to double
%var_2_4063 = inttoptr i64 %var_2_4060 to double*
%var_2_4064 = load double, double* %var_2_4063, align 8
%var_2_4065 = fsub double %var_2_4062, %var_2_4064
store double %var_2_4065, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
; Matched:%var_2_4059:  %var_2_4059 = load i64, i64* %RBP, align 8
; %var_2_4066 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_3130:  %var_2_3130 = add i64 %var_2_3129, -144
; %var_2_4067 = add i64 %var_2_4066, -144
; Matched:%var_2_2251:  %var_2_2251 = add i64 %var_2_2175, 44
; %var_2_4068 = add i64 %var_2_3992, 44
; Matched:\<badref\>:  store i64 %var_2_3131, i64* %PC, align 8
; store i64 %var_2_4068, i64* %var_2_3, align 8
; Matched:%var_2_4062:  %var_2_4062 = inttoptr i64 %var_2_4060 to double*
; %var_2_4069 = inttoptr i64 %var_2_4067 to double*
; Matched:\<badref\>:  store double %var_2_4058, double* %var_2_4062, align 8
; store double %var_2_4065, double* %var_2_4069, align 8
%var_2_4070 = load i64, i64* %RBP.i, align 8
%var_2_4071 = add i64 %var_2_4070, -16
%var_2_4072 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_3056:  %var_2_3056 = add i64 %var_2_3055, 4
; %var_2_4073 = add i64 %var_2_4072, 4
; Matched:\<badref\>:  store i64 %var_2_3056, i64* %PC, align 8
; store i64 %var_2_4073, i64* %var_2_3, align 8
%var_2_4074 = inttoptr i64 %var_2_4071 to i64*
%var_2_4075 = load i64, i64* %var_2_4074, align 8
; Matched:\<badref\>:  store i64 %var_2_2100, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_4075, i64* %RDX.i2239, align 8
%var_2_4076 = add i64 %var_2_4070, -36
%var_2_4077 = add i64 %var_2_4072, 8
store i64 %var_2_4077, i64* %var_2_3, align 8
%var_2_4078 = inttoptr i64 %var_2_4076 to i32*
%var_2_4079 = load i32, i32* %var_2_4078, align 4
%var_2_4080 = sext i32 %var_2_4079 to i64
; Matched:\<badref\>:  store i64 %var_2_2037, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_4080, i64* %RSI.i2233, align 8
%var_2_4081 = shl nsw i64 %var_2_4080, 3
%var_2_4082 = add i64 %var_2_4081, %var_2_4075
; Matched:%var_2_2260:  %var_2_2260 = add i64 %var_2_2255, 13
; %var_2_4083 = add i64 %var_2_4072, 13
; Matched:\<badref\>:  store i64 %var_2_908, i64* %PC, align 8
; store i64 %var_2_4083, i64* %var_2_3, align 8
%var_2_4084 = inttoptr i64 %var_2_4082 to i64*
%var_2_4085 = load i64, i64* %var_2_4084, align 8
store i64 %var_2_4085, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
; Matched:%var_2_2043:  %var_2_2043 = add i64 %var_2_2029, 17
; %var_2_4086 = add i64 %var_2_4072, 17
; Matched:\<badref\>:  store i64 %var_2_2043, i64* %PC, align 8
; store i64 %var_2_4086, i64* %var_2_3, align 8
%var_2_4087 = load i64, i64* %var_2_4074, align 8
; Matched:\<badref\>:  store i64 %var_2_1818, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_4087, i64* %RDX.i2239, align 8
%var_2_4088 = add i64 %var_2_4070, -40
; Matched:%var_2_1175:  %var_2_1175 = add i64 %var_2_1164, 21
; %var_2_4089 = add i64 %var_2_4072, 21
; Matched:\<badref\>:  store i64 %var_2_1175, i64* %PC, align 8
; store i64 %var_2_4089, i64* %var_2_3, align 8
%var_2_4090 = inttoptr i64 %var_2_4088 to i32*
%var_2_4091 = load i32, i32* %var_2_4090, align 4
%var_2_4092 = sext i32 %var_2_4091 to i64
; Matched:\<badref\>:  store i64 %var_2_2049, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_4092, i64* %RSI.i2233, align 8
%var_2_4093 = shl nsw i64 %var_2_4092, 3
%var_2_4094 = add i64 %var_2_4093, %var_2_4087
; Matched:%var_2_2276:  %var_2_2276 = add i64 %var_2_2255, 26
; %var_2_4095 = add i64 %var_2_4072, 26
; Matched:\<badref\>:  store i64 %var_2_1131, i64* %PC, align 8
; store i64 %var_2_4095, i64* %var_2_3, align 8
%var_2_4096 = bitcast i64 %var_2_4085 to double
%var_2_4097 = inttoptr i64 %var_2_4094 to double*
%var_2_4098 = load double, double* %var_2_4097, align 8
%var_2_4099 = fadd double %var_2_4096, %var_2_4098
store double %var_2_4099, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
; Matched:%var_2_4093:  %var_2_4093 = add i64 %var_2_4063, -152
; %var_2_4100 = add i64 %var_2_4070, -152
; Matched:%var_2_1945:  %var_2_1945 = add i64 %var_2_1916, 34
; %var_2_4101 = add i64 %var_2_4072, 34
; Matched:\<badref\>:  store i64 %var_2_1945, i64* %PC, align 8
; store i64 %var_2_4101, i64* %var_2_3, align 8
; Matched:%var_2_4095:  %var_2_4095 = inttoptr i64 %var_2_4093 to double*
; %var_2_4102 = inttoptr i64 %var_2_4100 to double*
; Matched:\<badref\>:  store double %var_2_4092, double* %var_2_4095, align 8
; store double %var_2_4099, double* %var_2_4102, align 8
%var_2_4103 = load i64, i64* %RBP.i, align 8
%var_2_4104 = add i64 %var_2_4103, -16
%var_2_4105 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_485:  %var_2_485 = add i64 %var_2_484, 4
; %var_2_4106 = add i64 %var_2_4105, 4
; Matched:\<badref\>:  store i64 %var_2_485, i64* %PC, align 8
; store i64 %var_2_4106, i64* %var_2_3, align 8
%var_2_4107 = inttoptr i64 %var_2_4104 to i64*
%var_2_4108 = load i64, i64* %var_2_4107, align 8
; Matched:\<badref\>:  store i64 %var_2_2391, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_4108, i64* %RDX.i2239, align 8
%var_2_4109 = add i64 %var_2_4103, -36
; Matched:%var_2_3060:  %var_2_3060 = add i64 %var_2_3055, 7
; %var_2_4110 = add i64 %var_2_4105, 7
; Matched:\<badref\>:  store i64 %var_2_177, i64* %PC, align 8
; store i64 %var_2_4110, i64* %var_2_3, align 8
%var_2_4111 = inttoptr i64 %var_2_4109 to i32*
%var_2_4112 = load i32, i32* %var_2_4111, align 4
%var_2_4113 = add i32 %var_2_4112, 1
; Matched:%var_2_2071:  %var_2_2071 = zext i32 %var_2_2070 to i64
; %var_2_4114 = zext i32 %var_2_4113 to i64
; Matched:\<badref\>:  store i64 %var_2_2071, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_4114, i64* %RCX.i2236, align 8
; Matched:%var_2_2072:  %var_2_2072 = icmp eq i32 %var_2_2069, -1
; %var_2_4115 = icmp eq i32 %var_2_4112, -1
; Matched:%var_2_4460:  %var_2_4460 = icmp eq i32 %var_2_4457, 0
; %var_2_4116 = icmp eq i32 %var_2_4113, 0
; Matched:%var_2_4461:  %var_2_4461 = or i1 %var_2_4459, %var_2_4460
; %var_2_4117 = or i1 %var_2_4115, %var_2_4116
; Matched:%var_2_2075:  %var_2_2075 = zext i1 %var_2_2074 to i8
; %var_2_4118 = zext i1 %var_2_4117 to i8
; Matched:\<badref\>:  store i8 %var_2_2075, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_4118, i8* %var_2_14, align 1
; Matched:%var_2_4463:  %var_2_4463 = and i32 %var_2_4457, 255
; %var_2_4119 = and i32 %var_2_4113, 255
; Matched:%var_2_4464:  %var_2_4464 = tail call i32 @llvm.ctpop.i32(i32 %var_2_4463) #14
; %var_2_4120 = tail call i32 @llvm.ctpop.i32(i32 %var_2_4119)
; Matched:%var_2_4465:  %var_2_4465 = trunc i32 %var_2_4464 to i8
; %var_2_4121 = trunc i32 %var_2_4120 to i8
; Matched:%var_2_4466:  %var_2_4466 = and i8 %var_2_4465, 1
; %var_2_4122 = and i8 %var_2_4121, 1
; Matched:%var_2_2193:  %var_2_2193 = xor i8 %var_2_2192, 1
; %var_2_4123 = xor i8 %var_2_4122, 1
; Matched:\<badref\>:  store i8 %var_2_2080, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_4123, i8* %var_2_21, align 1
; Matched:%var_2_4468:  %var_2_4468 = xor i32 %var_2_4457, %var_2_4456
; %var_2_4124 = xor i32 %var_2_4113, %var_2_4112
; Matched:%var_2_4469:  %var_2_4469 = lshr i32 %var_2_4468, 4
; %var_2_4125 = lshr i32 %var_2_4124, 4
; Matched:%var_2_4470:  %var_2_4470 = trunc i32 %var_2_4469 to i8
; %var_2_4126 = trunc i32 %var_2_4125 to i8
; Matched:%var_2_4471:  %var_2_4471 = and i8 %var_2_4470, 1
; %var_2_4127 = and i8 %var_2_4126, 1
; Matched:\<badref\>:  store i8 %var_2_4471, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_4127, i8* %var_2_27, align 1
; Matched:%var_2_2085:  %var_2_2085 = zext i1 %var_2_2073 to i8
; %var_2_4128 = zext i1 %var_2_4116 to i8
; Matched:\<badref\>:  store i8 %var_2_2085, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_4128, i8* %var_2_30, align 1
; Matched:%var_2_2459:  %var_2_2459 = lshr i32 %var_2_2443, 31
; %var_2_4129 = lshr i32 %var_2_4113, 31
; Matched:%var_2_4474:  %var_2_4474 = trunc i32 %var_2_4473 to i8
; %var_2_4130 = trunc i32 %var_2_4129 to i8
; Matched:\<badref\>:  store i8 %var_2_4123, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_4130, i8* %var_2_33, align 1
; Matched:%var_2_3194:  %var_2_3194 = lshr i32 %var_2_3175, 31
; %var_2_4131 = lshr i32 %var_2_4112, 31
; Matched:%var_2_3195:  %var_2_3195 = xor i32 %var_2_3192, %var_2_3194
; %var_2_4132 = xor i32 %var_2_4129, %var_2_4131
; Matched:%var_2_3196:  %var_2_3196 = add nuw nsw i32 %var_2_3195, %var_2_3192
; %var_2_4133 = add nuw nsw i32 %var_2_4132, %var_2_4129
; Matched:%var_2_3498:  %var_2_3498 = icmp eq i32 %var_2_3497, 2
; %var_2_4134 = icmp eq i32 %var_2_4133, 2
; Matched:%var_2_4241:  %var_2_4241 = zext i1 %var_2_4240 to i8
; %var_2_4135 = zext i1 %var_2_4134 to i8
; Matched:\<badref\>:  store i8 %var_2_2465, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_4135, i8* %var_2_39, align 1
%var_2_4136 = sext i32 %var_2_4113 to i64
; Matched:\<badref\>:  store i64 %var_2_2093, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_4136, i64* %RSI.i2233, align 8
%var_2_4137 = shl nsw i64 %var_2_4136, 3
%var_2_4138 = add i64 %var_2_4108, %var_2_4137
; Matched:%var_2_206:  %var_2_206 = add i64 %var_2_172, 18
; %var_2_4139 = add i64 %var_2_4105, 18
; Matched:\<badref\>:  store i64 %var_2_206, i64* %PC, align 8
; store i64 %var_2_4139, i64* %var_2_3, align 8
%var_2_4140 = inttoptr i64 %var_2_4138 to i64*
%var_2_4141 = load i64, i64* %var_2_4140, align 8
store i64 %var_2_4141, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
; Matched:%var_2_4135:  %var_2_4135 = add i64 %var_2_4098, 22
; %var_2_4142 = add i64 %var_2_4105, 22
; Matched:\<badref\>:  store i64 %var_2_2099, i64* %PC, align 8
; store i64 %var_2_4142, i64* %var_2_3, align 8
%var_2_4143 = load i64, i64* %var_2_4107, align 8
; Matched:\<badref\>:  store i64 %var_2_1931, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_4143, i64* %RDX.i2239, align 8
%var_2_4144 = add i64 %var_2_4103, -40
; Matched:%var_2_4138:  %var_2_4138 = add i64 %var_2_4098, 25
; %var_2_4145 = add i64 %var_2_4105, 25
; Matched:\<badref\>:  store i64 %var_2_3912, i64* %PC, align 8
; store i64 %var_2_4145, i64* %var_2_3, align 8
%var_2_4146 = inttoptr i64 %var_2_4144 to i32*
%var_2_4147 = load i32, i32* %var_2_4146, align 4
%var_2_4148 = add i32 %var_2_4147, 1
; Matched:%var_2_2106:  %var_2_2106 = zext i32 %var_2_2105 to i64
; %var_2_4149 = zext i32 %var_2_4148 to i64
; Matched:\<badref\>:  store i64 %var_2_2106, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_4149, i64* %RCX.i2236, align 8
; Matched:%var_2_3625:  %var_2_3625 = icmp eq i32 %var_2_3622, -1
; %var_2_4150 = icmp eq i32 %var_2_4147, -1
; Matched:%var_2_1252:  %var_2_1252 = icmp eq i32 %var_2_1249, 0
; %var_2_4151 = icmp eq i32 %var_2_4148, 0
; Matched:%var_2_1253:  %var_2_1253 = or i1 %var_2_1251, %var_2_1252
; %var_2_4152 = or i1 %var_2_4150, %var_2_4151
; Matched:%var_2_2223:  %var_2_2223 = zext i1 %var_2_2222 to i8
; %var_2_4153 = zext i1 %var_2_4152 to i8
; Matched:\<badref\>:  store i8 %var_2_2223, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_4153, i8* %var_2_14, align 1
; Matched:%var_2_2224:  %var_2_2224 = and i32 %var_2_2218, 255
; %var_2_4154 = and i32 %var_2_4148, 255
; Matched:%var_2_3630:  %var_2_3630 = tail call i32 @llvm.ctpop.i32(i32 %var_2_3629) #14
; %var_2_4155 = tail call i32 @llvm.ctpop.i32(i32 %var_2_4154)
; Matched:%var_2_3631:  %var_2_3631 = trunc i32 %var_2_3630 to i8
; %var_2_4156 = trunc i32 %var_2_4155 to i8
; Matched:%var_2_2227:  %var_2_2227 = and i8 %var_2_2226, 1
; %var_2_4157 = and i8 %var_2_4156, 1
; Matched:%var_2_1259:  %var_2_1259 = xor i8 %var_2_1258, 1
; %var_2_4158 = xor i8 %var_2_4157, 1
; Matched:\<badref\>:  store i8 %var_2_1259, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_4158, i8* %var_2_21, align 1
; Matched:%var_2_1260:  %var_2_1260 = xor i32 %var_2_1249, %var_2_1248
; %var_2_4159 = xor i32 %var_2_4148, %var_2_4147
; Matched:%var_2_2230:  %var_2_2230 = lshr i32 %var_2_2229, 4
; %var_2_4160 = lshr i32 %var_2_4159, 4
; Matched:%var_2_2118:  %var_2_2118 = trunc i32 %var_2_2117 to i8
; %var_2_4161 = trunc i32 %var_2_4160 to i8
; Matched:%var_2_1263:  %var_2_1263 = and i8 %var_2_1262, 1
; %var_2_4162 = and i8 %var_2_4161, 1
; Matched:\<badref\>:  store i8 %var_2_1263, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_4162, i8* %var_2_27, align 1
; Matched:%var_2_1264:  %var_2_1264 = zext i1 %var_2_1252 to i8
; %var_2_4163 = zext i1 %var_2_4151 to i8
; Matched:\<badref\>:  store i8 %var_2_1264, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_4163, i8* %var_2_30, align 1
; Matched:%var_2_1265:  %var_2_1265 = lshr i32 %var_2_1249, 31
; %var_2_4164 = lshr i32 %var_2_4148, 31
; Matched:%var_2_1266:  %var_2_1266 = trunc i32 %var_2_1265 to i8
; %var_2_4165 = trunc i32 %var_2_4164 to i8
; Matched:\<badref\>:  store i8 %var_2_1266, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_4165, i8* %var_2_33, align 1
; Matched:%var_2_3641:  %var_2_3641 = lshr i32 %var_2_3622, 31
; %var_2_4166 = lshr i32 %var_2_4147, 31
; Matched:%var_2_2237:  %var_2_2237 = xor i32 %var_2_2234, %var_2_2236
; %var_2_4167 = xor i32 %var_2_4164, %var_2_4166
; Matched:%var_2_3643:  %var_2_3643 = add nuw nsw i32 %var_2_3642, %var_2_3639
; %var_2_4168 = add nuw nsw i32 %var_2_4167, %var_2_4164
; Matched:%var_2_3644:  %var_2_3644 = icmp eq i32 %var_2_3643, 2
; %var_2_4169 = icmp eq i32 %var_2_4168, 2
; Matched:%var_2_3645:  %var_2_3645 = zext i1 %var_2_3644 to i8
; %var_2_4170 = zext i1 %var_2_4169 to i8
; Matched:\<badref\>:  store i8 %var_2_3645, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_4170, i8* %var_2_39, align 1
%var_2_4171 = sext i32 %var_2_4148 to i64
; Matched:\<badref\>:  store i64 %var_2_2241, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_4171, i64* %RSI.i2233, align 8
%var_2_4172 = shl nsw i64 %var_2_4171, 3
%var_2_4173 = add i64 %var_2_4143, %var_2_4172
; Matched:%var_2_892:  %var_2_892 = add i64 %var_2_823, 36
; %var_2_4174 = add i64 %var_2_4105, 36
; Matched:\<badref\>:  store i64 %var_2_666, i64* %PC, align 8
; store i64 %var_2_4174, i64* %var_2_3, align 8
%var_2_4175 = bitcast i64 %var_2_4141 to double
%var_2_4176 = inttoptr i64 %var_2_4173 to double*
%var_2_4177 = load double, double* %var_2_4176, align 8
%var_2_4178 = fadd double %var_2_4175, %var_2_4177
store double %var_2_4178, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
; Matched:%var_2_4172:  %var_2_4172 = load i64, i64* %RBP, align 8
; %var_2_4179 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_3243:  %var_2_3243 = add i64 %var_2_3242, -160
; %var_2_4180 = add i64 %var_2_4179, -160
; Matched:%var_2_3131:  %var_2_3131 = add i64 %var_2_3055, 44
; %var_2_4181 = add i64 %var_2_4105, 44
; Matched:\<badref\>:  store i64 %var_2_3244, i64* %PC, align 8
; store i64 %var_2_4181, i64* %var_2_3, align 8
; Matched:%var_2_787:  %var_2_787 = inttoptr i64 %var_2_785 to double*
; %var_2_4182 = inttoptr i64 %var_2_4180 to double*
; Matched:\<badref\>:  store double %var_2_3241, double* %var_2_3245, align 8
; store double %var_2_4178, double* %var_2_4182, align 8
%var_2_4183 = load i64, i64* %RBP.i, align 8
%var_2_4184 = add i64 %var_2_4183, -16
%var_2_4185 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1917:  %var_2_1917 = add i64 %var_2_1916, 4
; %var_2_4186 = add i64 %var_2_4185, 4
; Matched:\<badref\>:  store i64 %var_2_824, i64* %PC, align 8
; store i64 %var_2_4186, i64* %var_2_3, align 8
%var_2_4187 = inttoptr i64 %var_2_4184 to i64*
%var_2_4188 = load i64, i64* %var_2_4187, align 8
; Matched:\<badref\>:  store i64 %var_2_1919, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_4188, i64* %RDX.i2239, align 8
%var_2_4189 = add i64 %var_2_4183, -36
%var_2_4190 = add i64 %var_2_4185, 8
store i64 %var_2_4190, i64* %var_2_3, align 8
%var_2_4191 = inttoptr i64 %var_2_4189 to i32*
%var_2_4192 = load i32, i32* %var_2_4191, align 4
%var_2_4193 = sext i32 %var_2_4192 to i64
; Matched:\<badref\>:  store i64 %var_2_2396, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_4193, i64* %RSI.i2233, align 8
%var_2_4194 = shl nsw i64 %var_2_4193, 3
%var_2_4195 = add i64 %var_2_4194, %var_2_4188
; Matched:%var_2_2285:  %var_2_2285 = add i64 %var_2_2280, 13
; %var_2_4196 = add i64 %var_2_4185, 13
; Matched:\<badref\>:  store i64 %var_2_2285, i64* %PC, align 8
; store i64 %var_2_4196, i64* %var_2_3, align 8
%var_2_4197 = inttoptr i64 %var_2_4195 to i64*
%var_2_4198 = load i64, i64* %var_2_4197, align 8
store i64 %var_2_4198, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
; Matched:%var_2_1012:  %var_2_1012 = add i64 %var_2_1001, 17
; %var_2_4199 = add i64 %var_2_4185, 17
; Matched:\<badref\>:  store i64 %var_2_3262, i64* %PC, align 8
; store i64 %var_2_4199, i64* %var_2_3, align 8
%var_2_4200 = load i64, i64* %var_2_4187, align 8
; Matched:\<badref\>:  store i64 %var_2_2145, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_4200, i64* %RDX.i2239, align 8
%var_2_4201 = add i64 %var_2_4183, -40
; Matched:%var_2_4623:  %var_2_4623 = add i64 %var_2_4612, 21
; %var_2_4202 = add i64 %var_2_4185, 21
; Matched:\<badref\>:  store i64 %var_2_4623, i64* %PC, align 8
; store i64 %var_2_4202, i64* %var_2_3, align 8
%var_2_4203 = inttoptr i64 %var_2_4201 to i32*
%var_2_4204 = load i32, i32* %var_2_4203, align 4
%var_2_4205 = sext i32 %var_2_4204 to i64
; Matched:\<badref\>:  store i64 %var_2_2162, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_4205, i64* %RSI.i2233, align 8
%var_2_4206 = shl nsw i64 %var_2_4205, 3
%var_2_4207 = add i64 %var_2_4206, %var_2_4200
; Matched:%var_2_700:  %var_2_700 = add i64 %var_2_677, 26
; %var_2_4208 = add i64 %var_2_4185, 26
; Matched:\<badref\>:  store i64 %var_2_3862, i64* %PC, align 8
; store i64 %var_2_4208, i64* %var_2_3, align 8
%var_2_4209 = bitcast i64 %var_2_4198 to double
%var_2_4210 = inttoptr i64 %var_2_4207 to double*
%var_2_4211 = load double, double* %var_2_4210, align 8
%var_2_4212 = fsub double %var_2_4209, %var_2_4211
store double %var_2_4212, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
; Matched:%var_2_818:  %var_2_818 = add i64 %var_2_788, -168
; %var_2_4213 = add i64 %var_2_4183, -168
; Matched:%var_2_2058:  %var_2_2058 = add i64 %var_2_2029, 34
; %var_2_4214 = add i64 %var_2_4185, 34
; Matched:\<badref\>:  store i64 %var_2_2058, i64* %PC, align 8
; store i64 %var_2_4214, i64* %var_2_3, align 8
; Matched:%var_2_2172:  %var_2_2172 = inttoptr i64 %var_2_2170 to double*
; %var_2_4215 = inttoptr i64 %var_2_4213 to double*
; Matched:\<badref\>:  store double %var_2_4205, double* %var_2_4208, align 8
; store double %var_2_4212, double* %var_2_4215, align 8
%var_2_4216 = load i64, i64* %RBP.i, align 8
%var_2_4217 = add i64 %var_2_4216, -16
%var_2_4218 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_598:  %var_2_598 = add i64 %var_2_597, 4
; %var_2_4219 = add i64 %var_2_4218, 4
; Matched:\<badref\>:  store i64 %var_2_598, i64* %PC, align 8
; store i64 %var_2_4219, i64* %var_2_3, align 8
%var_2_4220 = inttoptr i64 %var_2_4217 to i64*
%var_2_4221 = load i64, i64* %var_2_4220, align 8
; Matched:\<badref\>:  store i64 %var_2_1987, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_4221, i64* %RDX.i2239, align 8
%var_2_4222 = add i64 %var_2_4216, -36
; Matched:%var_2_3286:  %var_2_3286 = add i64 %var_2_3281, 7
; %var_2_4223 = add i64 %var_2_4218, 7
; Matched:\<badref\>:  store i64 %var_2_3060, i64* %PC, align 8
; store i64 %var_2_4223, i64* %var_2_3, align 8
%var_2_4224 = inttoptr i64 %var_2_4222 to i32*
%var_2_4225 = load i32, i32* %var_2_4224, align 4
%var_2_4226 = add i32 %var_2_4225, 1
; Matched:%var_2_2184:  %var_2_2184 = zext i32 %var_2_2183 to i64
; %var_2_4227 = zext i32 %var_2_4226 to i64
; Matched:\<badref\>:  store i64 %var_2_2184, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_4227, i64* %RCX.i2236, align 8
; Matched:%var_2_2185:  %var_2_2185 = icmp eq i32 %var_2_2182, -1
; %var_2_4228 = icmp eq i32 %var_2_4225, -1
; Matched:%var_2_2186:  %var_2_2186 = icmp eq i32 %var_2_2183, 0
; %var_2_4229 = icmp eq i32 %var_2_4226, 0
; Matched:%var_2_2187:  %var_2_2187 = or i1 %var_2_2185, %var_2_2186
; %var_2_4230 = or i1 %var_2_4228, %var_2_4229
; Matched:%var_2_2188:  %var_2_2188 = zext i1 %var_2_2187 to i8
; %var_2_4231 = zext i1 %var_2_4230 to i8
; Matched:\<badref\>:  store i8 %var_2_2188, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_4231, i8* %var_2_14, align 1
; Matched:%var_2_2189:  %var_2_2189 = and i32 %var_2_2183, 255
; %var_2_4232 = and i32 %var_2_4226, 255
; Matched:%var_2_2190:  %var_2_2190 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2189) #14
; %var_2_4233 = tail call i32 @llvm.ctpop.i32(i32 %var_2_4232)
; Matched:%var_2_2191:  %var_2_2191 = trunc i32 %var_2_2190 to i8
; %var_2_4234 = trunc i32 %var_2_4233 to i8
; Matched:%var_2_3486:  %var_2_3486 = and i8 %var_2_3485, 1
; %var_2_4235 = and i8 %var_2_4234, 1
; Matched:%var_2_1029:  %var_2_1029 = xor i8 %var_2_1028, 1
; %var_2_4236 = xor i8 %var_2_4235, 1
; Matched:\<badref\>:  store i8 %var_2_3487, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_4236, i8* %var_2_21, align 1
; Matched:%var_2_2194:  %var_2_2194 = xor i32 %var_2_2183, %var_2_2182
; %var_2_4237 = xor i32 %var_2_4226, %var_2_4225
; Matched:%var_2_2195:  %var_2_2195 = lshr i32 %var_2_2194, 4
; %var_2_4238 = lshr i32 %var_2_4237, 4
; Matched:%var_2_2196:  %var_2_2196 = trunc i32 %var_2_2195 to i8
; %var_2_4239 = trunc i32 %var_2_4238 to i8
; Matched:%var_2_2197:  %var_2_2197 = and i8 %var_2_2196, 1
; %var_2_4240 = and i8 %var_2_4239, 1
; Matched:\<badref\>:  store i8 %var_2_2197, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_4240, i8* %var_2_27, align 1
; Matched:%var_2_2198:  %var_2_2198 = zext i1 %var_2_2186 to i8
; %var_2_4241 = zext i1 %var_2_4229 to i8
; Matched:\<badref\>:  store i8 %var_2_3492, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_4241, i8* %var_2_30, align 1
; Matched:%var_2_2199:  %var_2_2199 = lshr i32 %var_2_2183, 31
; %var_2_4242 = lshr i32 %var_2_4226, 31
; Matched:%var_2_3494:  %var_2_3494 = trunc i32 %var_2_3493 to i8
; %var_2_4243 = trunc i32 %var_2_4242 to i8
; Matched:\<badref\>:  store i8 %var_2_2200, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_4243, i8* %var_2_33, align 1
; Matched:%var_2_2201:  %var_2_2201 = lshr i32 %var_2_2182, 31
; %var_2_4244 = lshr i32 %var_2_4225, 31
; Matched:%var_2_3496:  %var_2_3496 = xor i32 %var_2_3493, %var_2_3495
; %var_2_4245 = xor i32 %var_2_4242, %var_2_4244
; Matched:%var_2_1039:  %var_2_1039 = add nuw nsw i32 %var_2_1038, %var_2_1035
; %var_2_4246 = add nuw nsw i32 %var_2_4245, %var_2_4242
; Matched:%var_2_3197:  %var_2_3197 = icmp eq i32 %var_2_3196, 2
; %var_2_4247 = icmp eq i32 %var_2_4246, 2
; Matched:%var_2_2092:  %var_2_2092 = zext i1 %var_2_2091 to i8
; %var_2_4248 = zext i1 %var_2_4247 to i8
; Matched:\<badref\>:  store i8 %var_2_1041, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_4248, i8* %var_2_39, align 1
%var_2_4249 = sext i32 %var_2_4226 to i64
; Matched:\<badref\>:  store i64 %var_2_2206, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_4249, i64* %RSI.i2233, align 8
%var_2_4250 = shl nsw i64 %var_2_4249, 3
%var_2_4251 = add i64 %var_2_4221, %var_2_4250
; Matched:%var_2_857:  %var_2_857 = add i64 %var_2_823, 18
; %var_2_4252 = add i64 %var_2_4218, 18
; Matched:\<badref\>:  store i64 %var_2_857, i64* %PC, align 8
; store i64 %var_2_4252, i64* %var_2_3, align 8
%var_2_4253 = inttoptr i64 %var_2_4251 to i64*
%var_2_4254 = load i64, i64* %var_2_4253, align 8
store i64 %var_2_4254, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
; Matched:%var_2_1873:  %var_2_1873 = add i64 %var_2_1836, 22
; %var_2_4255 = add i64 %var_2_4218, 22
; Matched:\<badref\>:  store i64 %var_2_2979, i64* %PC, align 8
; store i64 %var_2_4255, i64* %var_2_3, align 8
%var_2_4256 = load i64, i64* %var_2_4220, align 8
; Matched:\<badref\>:  store i64 %var_2_2293, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_4256, i64* %RDX.i2239, align 8
%var_2_4257 = add i64 %var_2_4216, -40
; Matched:%var_2_1876:  %var_2_1876 = add i64 %var_2_1836, 25
; %var_2_4258 = add i64 %var_2_4218, 25
; Matched:\<badref\>:  store i64 %var_2_4138, i64* %PC, align 8
; store i64 %var_2_4258, i64* %var_2_3, align 8
%var_2_4259 = inttoptr i64 %var_2_4257 to i32*
%var_2_4260 = load i32, i32* %var_2_4259, align 4
%var_2_4261 = add i32 %var_2_4260, 1
; Matched:%var_2_2219:  %var_2_2219 = zext i32 %var_2_2218 to i64
; %var_2_4262 = zext i32 %var_2_4261 to i64
; Matched:\<badref\>:  store i64 %var_2_2219, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_4262, i64* %RCX.i2236, align 8
; Matched:%var_2_1251:  %var_2_1251 = icmp eq i32 %var_2_1248, -1
; %var_2_4263 = icmp eq i32 %var_2_4260, -1
; Matched:%var_2_3626:  %var_2_3626 = icmp eq i32 %var_2_3623, 0
; %var_2_4264 = icmp eq i32 %var_2_4261, 0
; Matched:%var_2_3627:  %var_2_3627 = or i1 %var_2_3625, %var_2_3626
; %var_2_4265 = or i1 %var_2_4263, %var_2_4264
; Matched:%var_2_1254:  %var_2_1254 = zext i1 %var_2_1253 to i8
; %var_2_4266 = zext i1 %var_2_4265 to i8
; Matched:\<badref\>:  store i8 %var_2_1254, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_4266, i8* %var_2_14, align 1
; Matched:%var_2_1255:  %var_2_1255 = and i32 %var_2_1249, 255
; %var_2_4267 = and i32 %var_2_4261, 255
; Matched:%var_2_1256:  %var_2_1256 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1255) #14
; %var_2_4268 = tail call i32 @llvm.ctpop.i32(i32 %var_2_4267)
; Matched:%var_2_1257:  %var_2_1257 = trunc i32 %var_2_1256 to i8
; %var_2_4269 = trunc i32 %var_2_4268 to i8
; Matched:%var_2_3632:  %var_2_3632 = and i8 %var_2_3631, 1
; %var_2_4270 = and i8 %var_2_4269, 1
; Matched:%var_2_2228:  %var_2_2228 = xor i8 %var_2_2227, 1
; %var_2_4271 = xor i8 %var_2_4270, 1
; Matched:\<badref\>:  store i8 %var_2_3221, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_4271, i8* %var_2_21, align 1
; Matched:%var_2_3222:  %var_2_3222 = xor i32 %var_2_3211, %var_2_3210
; %var_2_4272 = xor i32 %var_2_4261, %var_2_4260
; Matched:%var_2_1261:  %var_2_1261 = lshr i32 %var_2_1260, 4
; %var_2_4273 = lshr i32 %var_2_4272, 4
; Matched:%var_2_2231:  %var_2_2231 = trunc i32 %var_2_2230 to i8
; %var_2_4274 = trunc i32 %var_2_4273 to i8
; Matched:%var_2_3637:  %var_2_3637 = and i8 %var_2_3636, 1
; %var_2_4275 = and i8 %var_2_4274, 1
; Matched:\<badref\>:  store i8 %var_2_3637, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_4275, i8* %var_2_27, align 1
; Matched:%var_2_3638:  %var_2_3638 = zext i1 %var_2_3626 to i8
; %var_2_4276 = zext i1 %var_2_4264 to i8
; Matched:\<badref\>:  store i8 %var_2_3638, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_4276, i8* %var_2_30, align 1
; Matched:%var_2_3639:  %var_2_3639 = lshr i32 %var_2_3623, 31
; %var_2_4277 = lshr i32 %var_2_4261, 31
; Matched:%var_2_3640:  %var_2_3640 = trunc i32 %var_2_3639 to i8
; %var_2_4278 = trunc i32 %var_2_4277 to i8
; Matched:\<badref\>:  store i8 %var_2_3640, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_4278, i8* %var_2_33, align 1
; Matched:%var_2_1267:  %var_2_1267 = lshr i32 %var_2_1248, 31
; %var_2_4279 = lshr i32 %var_2_4260, 31
; Matched:%var_2_3642:  %var_2_3642 = xor i32 %var_2_3639, %var_2_3641
; %var_2_4280 = xor i32 %var_2_4277, %var_2_4279
; Matched:%var_2_1269:  %var_2_1269 = add nuw nsw i32 %var_2_1268, %var_2_1265
; %var_2_4281 = add nuw nsw i32 %var_2_4280, %var_2_4277
; Matched:%var_2_3232:  %var_2_3232 = icmp eq i32 %var_2_3231, 2
; %var_2_4282 = icmp eq i32 %var_2_4281, 2
; Matched:%var_2_1271:  %var_2_1271 = zext i1 %var_2_1270 to i8
; %var_2_4283 = zext i1 %var_2_4282 to i8
; Matched:\<badref\>:  store i8 %var_2_1271, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_4283, i8* %var_2_39, align 1
%var_2_4284 = sext i32 %var_2_4261 to i64
; Matched:\<badref\>:  store i64 %var_2_2128, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_4284, i64* %RSI.i2233, align 8
%var_2_4285 = shl nsw i64 %var_2_4284, 3
%var_2_4286 = add i64 %var_2_4256, %var_2_4285
; Matched:%var_2_4054:  %var_2_4054 = add i64 %var_2_3985, 36
; %var_2_4287 = add i64 %var_2_4218, 36
; Matched:\<badref\>:  store i64 %var_2_892, i64* %PC, align 8
; store i64 %var_2_4287, i64* %var_2_3, align 8
%var_2_4288 = bitcast i64 %var_2_4254 to double
%var_2_4289 = inttoptr i64 %var_2_4286 to double*
%var_2_4290 = load double, double* %var_2_4289, align 8
%var_2_4291 = fsub double %var_2_4288, %var_2_4290
store double %var_2_4291, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
; Matched:%var_2_4285:  %var_2_4285 = load i64, i64* %RBP, align 8
; %var_2_4292 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_4286:  %var_2_4286 = add i64 %var_2_4285, -176
; %var_2_4293 = add i64 %var_2_4292, -176
; Matched:%var_2_3244:  %var_2_3244 = add i64 %var_2_3168, 44
; %var_2_4294 = add i64 %var_2_4218, 44
; Matched:\<badref\>:  store i64 %var_2_3357, i64* %PC, align 8
; store i64 %var_2_4294, i64* %var_2_3, align 8
; Matched:%var_2_4288:  %var_2_4288 = inttoptr i64 %var_2_4286 to double*
; %var_2_4295 = inttoptr i64 %var_2_4293 to double*
; Matched:\<badref\>:  store double %var_2_896, double* %var_2_900, align 8
; store double %var_2_4291, double* %var_2_4295, align 8
%var_2_4296 = load i64, i64* %RBP.i, align 8
%var_2_4297 = add i64 %var_2_4296, -120
%var_2_4298 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1195:  %var_2_1195 = add i64 %var_2_1194, 5
; %var_2_4299 = add i64 %var_2_4298, 5
; Matched:\<badref\>:  store i64 %var_2_3362, i64* %PC, align 8
; store i64 %var_2_4299, i64* %var_2_3, align 8
%var_2_4300 = inttoptr i64 %var_2_4297 to i64*
%var_2_4301 = load i64, i64* %var_2_4300, align 8
store i64 %var_2_4301, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
%var_2_4302 = add i64 %var_2_4296, -152
; Matched:%var_2_3464:  %var_2_3464 = add i64 %var_2_3459, 13
; %var_2_4303 = add i64 %var_2_4298, 13
; Matched:\<badref\>:  store i64 %var_2_3464, i64* %PC, align 8
; store i64 %var_2_4303, i64* %var_2_3, align 8
%var_2_4304 = bitcast i64 %var_2_4301 to double
%var_2_4305 = inttoptr i64 %var_2_4302 to double*
%var_2_4306 = load double, double* %var_2_4305, align 8
%var_2_4307 = fadd double %var_2_4304, %var_2_4306
store double %var_2_4307, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
%var_2_4308 = add i64 %var_2_4296, -16
; Matched:%var_2_2156:  %var_2_2156 = add i64 %var_2_2142, 17
; %var_2_4309 = add i64 %var_2_4298, 17
; Matched:\<badref\>:  store i64 %var_2_2156, i64* %PC, align 8
; store i64 %var_2_4309, i64* %var_2_3, align 8
%var_2_4310 = inttoptr i64 %var_2_4308 to i64*
%var_2_4311 = load i64, i64* %var_2_4310, align 8
; Matched:\<badref\>:  store i64 %var_2_1806, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_4311, i64* %RDX.i2239, align 8
%var_2_4312 = add i64 %var_2_4296, -28
; Matched:%var_2_2046:  %var_2_2046 = add i64 %var_2_2029, 21
; %var_2_4313 = add i64 %var_2_4298, 21
; Matched:\<badref\>:  store i64 %var_2_2046, i64* %PC, align 8
; store i64 %var_2_4313, i64* %var_2_3, align 8
%var_2_4314 = inttoptr i64 %var_2_4312 to i32*
%var_2_4315 = load i32, i32* %var_2_4314, align 4
%var_2_4316 = sext i32 %var_2_4315 to i64
; Matched:\<badref\>:  store i64 %var_2_1811, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_4316, i64* %RSI.i2233, align 8
; Matched:%var_2_3380:  %var_2_3380 = shl nsw i64 %var_2_3379, 3
; %var_2_4317 = shl nsw i64 %var_2_4316, 3
; Matched:%var_2_923:  %var_2_923 = add i64 %var_2_922, %var_2_916
; %var_2_4318 = add i64 %var_2_4317, %var_2_4311
; Matched:%var_2_2165:  %var_2_2165 = add i64 %var_2_2142, 26
; %var_2_4319 = add i64 %var_2_4298, 26
; Matched:\<badref\>:  store i64 %var_2_3455, i64* %PC, align 8
; store i64 %var_2_4319, i64* %var_2_3, align 8
; Matched:%var_2_4313:  %var_2_4313 = inttoptr i64 %var_2_4311 to double*
; %var_2_4320 = inttoptr i64 %var_2_4318 to double*
; Matched:\<badref\>:  store double %var_2_3370, double* %var_2_3383, align 8
; store double %var_2_4307, double* %var_2_4320, align 8
%var_2_4321 = load i64, i64* %RBP.i, align 8
%var_2_4322 = add i64 %var_2_4321, -128
%var_2_4323 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_4518:  %var_2_4518 = add i64 %var_2_4517, 5
; %var_2_4324 = add i64 %var_2_4323, 5
; Matched:\<badref\>:  store i64 %var_2_2256, i64* %PC, align 8
; store i64 %var_2_4324, i64* %var_2_3, align 8
%var_2_4325 = inttoptr i64 %var_2_4322 to i64*
%var_2_4326 = load i64, i64* %var_2_4325, align 8
store i64 %var_2_4326, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
%var_2_4327 = add i64 %var_2_4321, -160
; Matched:%var_2_2153:  %var_2_2153 = add i64 %var_2_2142, 13
; %var_2_4328 = add i64 %var_2_4323, 13
; Matched:\<badref\>:  store i64 %var_2_2153, i64* %PC, align 8
; store i64 %var_2_4328, i64* %var_2_3, align 8
%var_2_4329 = bitcast i64 %var_2_4326 to double
%var_2_4330 = inttoptr i64 %var_2_4327 to double*
%var_2_4331 = load double, double* %var_2_4330, align 8
%var_2_4332 = fadd double %var_2_4329, %var_2_4331
store double %var_2_4332, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
%var_2_4333 = add i64 %var_2_4321, -16
; Matched:%var_2_3372:  %var_2_3372 = add i64 %var_2_3361, 17
; %var_2_4334 = add i64 %var_2_4323, 17
; Matched:\<badref\>:  store i64 %var_2_3372, i64* %PC, align 8
; store i64 %var_2_4334, i64* %var_2_3, align 8
%var_2_4335 = inttoptr i64 %var_2_4333 to i64*
%var_2_4336 = load i64, i64* %var_2_4335, align 8
; Matched:\<badref\>:  store i64 %var_2_2032, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_4336, i64* %RDX.i2239, align 8
%var_2_4337 = add i64 %var_2_4321, -28
; Matched:%var_2_943:  %var_2_943 = add i64 %var_2_928, 20
; %var_2_4338 = add i64 %var_2_4323, 20
; Matched:\<badref\>:  store i64 %var_2_943, i64* %PC, align 8
; store i64 %var_2_4338, i64* %var_2_3, align 8
%var_2_4339 = inttoptr i64 %var_2_4337 to i32*
%var_2_4340 = load i32, i32* %var_2_4339, align 4
%var_2_4341 = add i32 %var_2_4340, 1
; Matched:%var_2_2299:  %var_2_2299 = zext i32 %var_2_2298 to i64
; %var_2_4342 = zext i32 %var_2_4341 to i64
; Matched:\<badref\>:  store i64 %var_2_1845, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_4342, i64* %RCX.i2236, align 8
; Matched:%var_2_1846:  %var_2_1846 = icmp eq i32 %var_2_1843, -1
; %var_2_4343 = icmp eq i32 %var_2_4340, -1
; Matched:%var_2_1847:  %var_2_1847 = icmp eq i32 %var_2_1844, 0
; %var_2_4344 = icmp eq i32 %var_2_4341, 0
; Matched:%var_2_1848:  %var_2_1848 = or i1 %var_2_1846, %var_2_1847
; %var_2_4345 = or i1 %var_2_4343, %var_2_4344
; Matched:%var_2_1849:  %var_2_1849 = zext i1 %var_2_1848 to i8
; %var_2_4346 = zext i1 %var_2_4345 to i8
; Matched:\<badref\>:  store i8 %var_2_1849, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_4346, i8* %var_2_14, align 1
; Matched:%var_2_3999:  %var_2_3999 = and i32 %var_2_3993, 255
; %var_2_4347 = and i32 %var_2_4341, 255
; Matched:%var_2_1851:  %var_2_1851 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1850) #14
; %var_2_4348 = tail call i32 @llvm.ctpop.i32(i32 %var_2_4347)
; Matched:%var_2_1965:  %var_2_1965 = trunc i32 %var_2_1964 to i8
; %var_2_4349 = trunc i32 %var_2_4348 to i8
; Matched:%var_2_1853:  %var_2_1853 = and i8 %var_2_1852, 1
; %var_2_4350 = and i8 %var_2_4349, 1
; Matched:%var_2_1854:  %var_2_1854 = xor i8 %var_2_1853, 1
; %var_2_4351 = xor i8 %var_2_4350, 1
; Matched:\<badref\>:  store i8 %var_2_4003, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_4351, i8* %var_2_21, align 1
; Matched:%var_2_2309:  %var_2_2309 = xor i32 %var_2_2298, %var_2_2297
; %var_2_4352 = xor i32 %var_2_4341, %var_2_4340
; Matched:%var_2_1856:  %var_2_1856 = lshr i32 %var_2_1855, 4
; %var_2_4353 = lshr i32 %var_2_4352, 4
; Matched:%var_2_2311:  %var_2_2311 = trunc i32 %var_2_2310 to i8
; %var_2_4354 = trunc i32 %var_2_4353 to i8
; Matched:%var_2_1858:  %var_2_1858 = and i8 %var_2_1857, 1
; %var_2_4355 = and i8 %var_2_4354, 1
; Matched:\<badref\>:  store i8 %var_2_1858, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_4355, i8* %var_2_27, align 1
; Matched:%var_2_4008:  %var_2_4008 = zext i1 %var_2_3996 to i8
; %var_2_4356 = zext i1 %var_2_4344 to i8
; Matched:\<badref\>:  store i8 %var_2_2313, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_4356, i8* %var_2_30, align 1
; Matched:%var_2_4350:  %var_2_4350 = lshr i32 %var_2_4334, 31
; %var_2_4357 = lshr i32 %var_2_4341, 31
; Matched:%var_2_3897:  %var_2_3897 = trunc i32 %var_2_3896 to i8
; %var_2_4358 = trunc i32 %var_2_4357 to i8
; Matched:\<badref\>:  store i8 %var_2_2967, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_4358, i8* %var_2_33, align 1
; Matched:%var_2_4011:  %var_2_4011 = lshr i32 %var_2_3992, 31
; %var_2_4359 = lshr i32 %var_2_4340, 31
; Matched:%var_2_965:  %var_2_965 = xor i32 %var_2_962, %var_2_964
; %var_2_4360 = xor i32 %var_2_4357, %var_2_4359
; Matched:%var_2_512:  %var_2_512 = add nuw nsw i32 %var_2_511, %var_2_508
; %var_2_4361 = add nuw nsw i32 %var_2_4360, %var_2_4357
; Matched:%var_2_3425:  %var_2_3425 = icmp eq i32 %var_2_3424, 2
; %var_2_4362 = icmp eq i32 %var_2_4361, 2
; Matched:%var_2_3085:  %var_2_3085 = zext i1 %var_2_3084 to i8
; %var_2_4363 = zext i1 %var_2_4362 to i8
; Matched:\<badref\>:  store i8 %var_2_3085, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_4363, i8* %var_2_39, align 1
%var_2_4364 = sext i32 %var_2_4341 to i64
; Matched:\<badref\>:  store i64 %var_2_1867, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_4364, i64* %RSI.i2233, align 8
; Matched:%var_2_4358:  %var_2_4358 = shl nsw i64 %var_2_4357, 3
; %var_2_4365 = shl nsw i64 %var_2_4364, 3
; Matched:%var_2_4359:  %var_2_4359 = add i64 %var_2_4329, %var_2_4358
; %var_2_4366 = add i64 %var_2_4336, %var_2_4365
; Matched:%var_2_2938:  %var_2_2938 = add i64 %var_2_2909, 31
; %var_2_4367 = add i64 %var_2_4323, 31
; Matched:\<badref\>:  store i64 %var_2_2690, i64* %PC, align 8
; store i64 %var_2_4367, i64* %var_2_3, align 8
; Matched:%var_2_3431:  %var_2_3431 = inttoptr i64 %var_2_3429 to double*
; %var_2_4368 = inttoptr i64 %var_2_4366 to double*
; Matched:\<badref\>:  store double %var_2_937, double* %var_2_973, align 8
; store double %var_2_4332, double* %var_2_4368, align 8
; Matched:%var_2_2326:  %var_2_2326 = load i64, i64* %RBP, align 8
; %var_2_4369 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_4363:  %var_2_4363 = add i64 %var_2_4362, -152
; %var_2_4370 = add i64 %var_2_4369, -152
%var_2_4371 = load i64, i64* %var_2_3, align 8
%var_2_4372 = add i64 %var_2_4371, 8
store i64 %var_2_4372, i64* %var_2_3, align 8
; Matched:%var_2_4366:  %var_2_4366 = inttoptr i64 %var_2_4363 to i64*
; %var_2_4373 = inttoptr i64 %var_2_4370 to i64*
; Matched:%var_2_4367:  %var_2_4367 = load i64, i64* %var_2_4366, align 8
; %var_2_4374 = load i64, i64* %var_2_4373, align 8
; Matched:\<badref\>:  store i64 %var_2_4367, i64* %var_2_94, align 1, !tbaa !1285
; store i64 %var_2_4374, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
; Matched:%var_2_4368:  %var_2_4368 = add i64 %var_2_4362, -120
; %var_2_4375 = add i64 %var_2_4369, -120
; Matched:%var_2_286:  %var_2_286 = add i64 %var_2_275, 13
; %var_2_4376 = add i64 %var_2_4371, 13
; Matched:\<badref\>:  store i64 %var_2_286, i64* %PC, align 8
; store i64 %var_2_4376, i64* %var_2_3, align 8
; Matched:%var_2_2334:  %var_2_2334 = inttoptr i64 %var_2_2332 to double*
; %var_2_4377 = inttoptr i64 %var_2_4375 to double*
; Matched:%var_2_4371:  %var_2_4371 = load double, double* %var_2_4370, align 8
; %var_2_4378 = load double, double* %var_2_4377, align 8
; Matched:%var_2_4372:  %var_2_4372 = bitcast i64 %var_2_4367 to double
; %var_2_4379 = bitcast i64 %var_2_4374 to double
; Matched:%var_2_4373:  %var_2_4373 = fsub double %var_2_4371, %var_2_4372
; %var_2_4380 = fsub double %var_2_4378, %var_2_4379
; Matched:\<badref\>:  store double %var_2_2337, double* %var_2_1623, align 1, !tbaa !1285
; store double %var_2_4380, double* %var_2_1053, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_1625, align 1, !tbaa !1285
; store i64 0, i64* %var_2_1055, align 1
; Matched:%var_2_2099:  %var_2_2099 = add i64 %var_2_2062, 22
; %var_2_4381 = add i64 %var_2_4371, 22
; Matched:\<badref\>:  store i64 %var_2_2338, i64* %PC, align 8
; store i64 %var_2_4381, i64* %var_2_3, align 8
; Matched:%var_2_2339:  %var_2_2339 = inttoptr i64 %var_2_2332 to double*
; %var_2_4382 = inttoptr i64 %var_2_4375 to double*
; Matched:\<badref\>:  store double %var_2_4373, double* %var_2_4375, align 8
; store double %var_2_4380, double* %var_2_4382, align 8
%var_2_4383 = load i64, i64* %RBP.i, align 8
%var_2_4384 = add i64 %var_2_4383, -160
%var_2_4385 = load i64, i64* %var_2_3, align 8
%var_2_4386 = add i64 %var_2_4385, 8
store i64 %var_2_4386, i64* %var_2_3, align 8
%var_2_4387 = inttoptr i64 %var_2_4384 to i64*
%var_2_4388 = load i64, i64* %var_2_4387, align 8
; Matched:\<badref\>:  store i64 %var_2_979, i64* %var_2_94, align 1, !tbaa !1285
; store i64 %var_2_4388, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
; Matched:%var_2_4382:  %var_2_4382 = add i64 %var_2_4376, -128
; %var_2_4389 = add i64 %var_2_4383, -128
; Matched:%var_2_575:  %var_2_575 = add i64 %var_2_564, 13
; %var_2_4390 = add i64 %var_2_4385, 13
; Matched:\<badref\>:  store i64 %var_2_575, i64* %PC, align 8
; store i64 %var_2_4390, i64* %var_2_3, align 8
; Matched:%var_2_4384:  %var_2_4384 = inttoptr i64 %var_2_4382 to double*
; %var_2_4391 = inttoptr i64 %var_2_4389 to double*
; Matched:%var_2_4385:  %var_2_4385 = load double, double* %var_2_4384, align 8
; %var_2_4392 = load double, double* %var_2_4391, align 8
; Matched:%var_2_2350:  %var_2_2350 = bitcast i64 %var_2_2345 to double
; %var_2_4393 = bitcast i64 %var_2_4388 to double
; Matched:%var_2_4387:  %var_2_4387 = fsub double %var_2_4385, %var_2_4386
; %var_2_4394 = fsub double %var_2_4392, %var_2_4393
; Matched:\<badref\>:  store double %var_2_4387, double* %var_2_1623, align 1, !tbaa !1285
; store double %var_2_4394, double* %var_2_1053, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_1625, align 1, !tbaa !1285
; store i64 0, i64* %var_2_1055, align 1
; Matched:%var_2_4374:  %var_2_4374 = add i64 %var_2_4364, 22
; %var_2_4395 = add i64 %var_2_4385, 22
; Matched:\<badref\>:  store i64 %var_2_3092, i64* %PC, align 8
; store i64 %var_2_4395, i64* %var_2_3, align 8
; Matched:%var_2_4389:  %var_2_4389 = inttoptr i64 %var_2_4382 to double*
; %var_2_4396 = inttoptr i64 %var_2_4389 to double*
; Matched:\<badref\>:  store double %var_2_4387, double* %var_2_4389, align 8
; store double %var_2_4394, double* %var_2_4396, align 8
%var_2_4397 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2402:  %var_2_2402 = add i64 %var_2_2401, -96
; %var_2_4398 = add i64 %var_2_4397, -96
%var_2_4399 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1002:  %var_2_1002 = add i64 %var_2_1001, 5
; %var_2_4400 = add i64 %var_2_4399, 5
; Matched:\<badref\>:  store i64 %var_2_1195, i64* %PC, align 8
; store i64 %var_2_4400, i64* %var_2_3, align 8
; Matched:%var_2_2358:  %var_2_2358 = inttoptr i64 %var_2_2355 to i64*
; %var_2_4401 = inttoptr i64 %var_2_4398 to i64*
; Matched:%var_2_2406:  %var_2_2406 = load i64, i64* %var_2_2405, align 8
; %var_2_4402 = load i64, i64* %var_2_4401, align 8
; Matched:%var_2_2407:  %var_2_2407 = load i64, i64* %RAX, align 8
; %var_2_4403 = load i64, i64* %RAX.i2224, align 8
; Matched:%var_2_2408:  %var_2_2408 = xor i64 %var_2_2407, %var_2_2406
; %var_2_4404 = xor i64 %var_2_4403, %var_2_4402
; Matched:\<badref\>:  store i64 %var_2_2408, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_4404, i64* %RDX.i2239, align 8
store i8 0, i8* %var_2_14, align 1
; Matched:%var_2_2409:  %var_2_2409 = trunc i64 %var_2_2408 to i32
; %var_2_4405 = trunc i64 %var_2_4404 to i32
; Matched:%var_2_2363:  %var_2_2363 = and i32 %var_2_2362, 255
; %var_2_4406 = and i32 %var_2_4405, 255
; Matched:%var_2_2364:  %var_2_2364 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2363) #14
; %var_2_4407 = tail call i32 @llvm.ctpop.i32(i32 %var_2_4406)
; Matched:%var_2_2412:  %var_2_2412 = trunc i32 %var_2_2411 to i8
; %var_2_4408 = trunc i32 %var_2_4407 to i8
; Matched:%var_2_2413:  %var_2_2413 = and i8 %var_2_2412, 1
; %var_2_4409 = and i8 %var_2_4408, 1
; Matched:%var_2_2414:  %var_2_2414 = xor i8 %var_2_2413, 1
; %var_2_4410 = xor i8 %var_2_4409, 1
; Matched:\<badref\>:  store i8 %var_2_2414, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_4410, i8* %var_2_21, align 1
; Matched:%var_2_2415:  %var_2_2415 = icmp eq i64 %var_2_2408, 0
; %var_2_4411 = icmp eq i64 %var_2_4404, 0
; Matched:%var_2_2416:  %var_2_2416 = zext i1 %var_2_2415 to i8
; %var_2_4412 = zext i1 %var_2_4411 to i8
; Matched:\<badref\>:  store i8 %var_2_2369, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_4412, i8* %var_2_30, align 1
; Matched:%var_2_2370:  %var_2_2370 = lshr i64 %var_2_2361, 63
; %var_2_4413 = lshr i64 %var_2_4404, 63
; Matched:%var_2_2418:  %var_2_2418 = trunc i64 %var_2_2417 to i8
; %var_2_4414 = trunc i64 %var_2_4413 to i8
; Matched:\<badref\>:  store i8 %var_2_2418, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_4414, i8* %var_2_33, align 1
store i8 0, i8* %var_2_39, align 1
store i8 0, i8* %var_2_27, align 1
; Matched:\<badref\>:  store i64 %var_2_2408, i64* %var_2_94, align 1, !tbaa !1261
; store i64 %var_2_4404, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
; Matched:%var_2_2372:  %var_2_2372 = add i64 %var_2_2354, -120
; %var_2_4415 = add i64 %var_2_4397, -120
; Matched:%var_2_2373:  %var_2_2373 = add i64 %var_2_2356, 23
; %var_2_4416 = add i64 %var_2_4399, 23
; Matched:\<badref\>:  store i64 %var_2_3620, i64* %PC, align 8
; store i64 %var_2_4416, i64* %var_2_3, align 8
; Matched:  %.cast9 = bitcast i64 %var_2_2361 to double
; %.cast9 = bitcast i64 %var_2_4404 to double
; Matched:%var_2_2374:  %var_2_2374 = inttoptr i64 %var_2_2372 to double*
; %var_2_4417 = inttoptr i64 %var_2_4415 to double*
; Matched:%var_2_2375:  %var_2_2375 = load double, double* %var_2_2374, align 8
; %var_2_4418 = load double, double* %var_2_4417, align 8
; Matched:%var_2_2376:  %var_2_2376 = fmul double %.cast9, %var_2_2375
; %var_2_4419 = fmul double %.cast9, %var_2_4418
; Matched:\<badref\>:  store double %var_2_2376, double* %var_2_93, align 1, !tbaa !1285
; store double %var_2_4419, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
; Matched:%var_2_2377:  %var_2_2377 = add i64 %var_2_2354, -88
; %var_2_4420 = add i64 %var_2_4397, -88
; Matched:%var_2_4414:  %var_2_4414 = add i64 %var_2_4392, 28
; %var_2_4421 = add i64 %var_2_4399, 28
; Matched:\<badref\>:  store i64 %var_2_4450, i64* %PC, align 8
; store i64 %var_2_4421, i64* %var_2_3, align 8
; Matched:%var_2_2426:  %var_2_2426 = inttoptr i64 %var_2_2424 to i64*
; %var_2_4422 = inttoptr i64 %var_2_4420 to i64*
; Matched:%var_2_2427:  %var_2_2427 = load i64, i64* %var_2_2426, align 8
; %var_2_4423 = load i64, i64* %var_2_4422, align 8
; Matched:\<badref\>:  store i64 %var_2_2427, i64* %var_2_1624, align 1, !tbaa !1285
; store i64 %var_2_4423, i64* %var_2_1054, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_1626, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_1056, align 1
; Matched:%var_2_2381:  %var_2_2381 = add i64 %var_2_2354, -128
; %var_2_4424 = add i64 %var_2_4397, -128
; Matched:%var_2_2382:  %var_2_2382 = add i64 %var_2_2356, 33
; %var_2_4425 = add i64 %var_2_4399, 33
; Matched:\<badref\>:  store i64 %var_2_2429, i64* %PC, align 8
; store i64 %var_2_4425, i64* %var_2_3, align 8
; Matched:%var_2_2383:  %var_2_2383 = bitcast i64 %var_2_2380 to double
; %var_2_4426 = bitcast i64 %var_2_4423 to double
; Matched:%var_2_2384:  %var_2_2384 = inttoptr i64 %var_2_2381 to double*
; %var_2_4427 = inttoptr i64 %var_2_4424 to double*
; Matched:%var_2_2385:  %var_2_2385 = load double, double* %var_2_2384, align 8
; %var_2_4428 = load double, double* %var_2_4427, align 8
; Matched:%var_2_2386:  %var_2_2386 = fmul double %var_2_2383, %var_2_2385
; %var_2_4429 = fmul double %var_2_4426, %var_2_4428
; Matched:\<badref\>:  store double %var_2_2386, double* %var_2_1623, align 1, !tbaa !1285
; store double %var_2_4429, double* %var_2_1053, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_1625, align 1, !tbaa !1285
; store i64 0, i64* %var_2_1055, align 1
; Matched:%var_2_2387:  %var_2_2387 = fsub double %var_2_2376, %var_2_2386
; %var_2_4430 = fsub double %var_2_4419, %var_2_4429
; Matched:\<badref\>:  store double %var_2_2387, double* %var_2_93, align 1, !tbaa !1285
; store double %var_2_4430, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
%var_2_4431 = add i64 %var_2_4397, -16
; Matched:%var_2_3018:  %var_2_3018 = add i64 %var_2_2942, 41
; %var_2_4432 = add i64 %var_2_4399, 41
; Matched:\<badref\>:  store i64 %var_2_3948, i64* %PC, align 8
; store i64 %var_2_4432, i64* %var_2_3, align 8
%var_2_4433 = inttoptr i64 %var_2_4431 to i64*
%var_2_4434 = load i64, i64* %var_2_4433, align 8
; Matched:\<badref\>:  store i64 %var_2_2213, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_4434, i64* %RDX.i2239, align 8
%var_2_4435 = add i64 %var_2_4397, -36
; Matched:%var_2_2393:  %var_2_2393 = add i64 %var_2_2356, 45
; %var_2_4436 = add i64 %var_2_4399, 45
; Matched:\<badref\>:  store i64 %var_2_2393, i64* %PC, align 8
; store i64 %var_2_4436, i64* %var_2_3, align 8
%var_2_4437 = inttoptr i64 %var_2_4435 to i32*
%var_2_4438 = load i32, i32* %var_2_4437, align 4
%var_2_4439 = sext i32 %var_2_4438 to i64
; Matched:\<badref\>:  store i64 %var_2_2150, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_4439, i64* %RSI.i2233, align 8
; Matched:%var_2_2397:  %var_2_2397 = shl nsw i64 %var_2_2396, 3
; %var_2_4440 = shl nsw i64 %var_2_4439, 3
; Matched:%var_2_2398:  %var_2_2398 = add i64 %var_2_2397, %var_2_2391
; %var_2_4441 = add i64 %var_2_4440, %var_2_4434
; Matched:%var_2_2399:  %var_2_2399 = add i64 %var_2_2356, 50
; %var_2_4442 = add i64 %var_2_4399, 50
; Matched:\<badref\>:  store i64 %var_2_2399, i64* %PC, align 8
; store i64 %var_2_4442, i64* %var_2_3, align 8
; Matched:%var_2_2400:  %var_2_2400 = inttoptr i64 %var_2_2398 to double*
; %var_2_4443 = inttoptr i64 %var_2_4441 to double*
; Matched:\<badref\>:  store double %var_2_2387, double* %var_2_2400, align 8
; store double %var_2_4430, double* %var_2_4443, align 8
%var_2_4444 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2355:  %var_2_2355 = add i64 %var_2_2354, -96
; %var_2_4445 = add i64 %var_2_4444, -96
%var_2_4446 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_3435:  %var_2_3435 = add i64 %var_2_3434, 5
; %var_2_4447 = add i64 %var_2_4446, 5
; Matched:\<badref\>:  store i64 %var_2_3435, i64* %PC, align 8
; store i64 %var_2_4447, i64* %var_2_3, align 8
; Matched:%var_2_2405:  %var_2_2405 = inttoptr i64 %var_2_2402 to i64*
; %var_2_4448 = inttoptr i64 %var_2_4445 to i64*
; Matched:%var_2_2359:  %var_2_2359 = load i64, i64* %var_2_2358, align 8
; %var_2_4449 = load i64, i64* %var_2_4448, align 8
; Matched:%var_2_2360:  %var_2_2360 = load i64, i64* %RAX, align 8
; %var_2_4450 = load i64, i64* %RAX.i2224, align 8
; Matched:%var_2_2361:  %var_2_2361 = xor i64 %var_2_2360, %var_2_2359
; %var_2_4451 = xor i64 %var_2_4450, %var_2_4449
; Matched:\<badref\>:  store i64 %var_2_2361, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_4451, i64* %RDX.i2239, align 8
store i8 0, i8* %var_2_14, align 1
; Matched:%var_2_2362:  %var_2_2362 = trunc i64 %var_2_2361 to i32
; %var_2_4452 = trunc i64 %var_2_4451 to i32
; Matched:%var_2_2410:  %var_2_2410 = and i32 %var_2_2409, 255
; %var_2_4453 = and i32 %var_2_4452, 255
; Matched:%var_2_2411:  %var_2_2411 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2410) #14
; %var_2_4454 = tail call i32 @llvm.ctpop.i32(i32 %var_2_4453)
; Matched:%var_2_2365:  %var_2_2365 = trunc i32 %var_2_2364 to i8
; %var_2_4455 = trunc i32 %var_2_4454 to i8
; Matched:%var_2_2366:  %var_2_2366 = and i8 %var_2_2365, 1
; %var_2_4456 = and i8 %var_2_4455, 1
; Matched:%var_2_2367:  %var_2_2367 = xor i8 %var_2_2366, 1
; %var_2_4457 = xor i8 %var_2_4456, 1
; Matched:\<badref\>:  store i8 %var_2_2367, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_4457, i8* %var_2_21, align 1
; Matched:%var_2_2368:  %var_2_2368 = icmp eq i64 %var_2_2361, 0
; %var_2_4458 = icmp eq i64 %var_2_4451, 0
; Matched:%var_2_2369:  %var_2_2369 = zext i1 %var_2_2368 to i8
; %var_2_4459 = zext i1 %var_2_4458 to i8
; Matched:\<badref\>:  store i8 %var_2_2416, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_4459, i8* %var_2_30, align 1
; Matched:%var_2_2417:  %var_2_2417 = lshr i64 %var_2_2408, 63
; %var_2_4460 = lshr i64 %var_2_4451, 63
; Matched:%var_2_2371:  %var_2_2371 = trunc i64 %var_2_2370 to i8
; %var_2_4461 = trunc i64 %var_2_4460 to i8
; Matched:\<badref\>:  store i8 %var_2_2371, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_4461, i8* %var_2_33, align 1
store i8 0, i8* %var_2_39, align 1
store i8 0, i8* %var_2_27, align 1
; Matched:\<badref\>:  store i64 %var_2_2361, i64* %var_2_94, align 1, !tbaa !1261
; store i64 %var_2_4451, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
; Matched:%var_2_2419:  %var_2_2419 = add i64 %var_2_2401, -128
; %var_2_4462 = add i64 %var_2_4444, -128
; Matched:%var_2_1211:  %var_2_1211 = add i64 %var_2_1194, 23
; %var_2_4463 = add i64 %var_2_4446, 23
; Matched:\<badref\>:  store i64 %var_2_1211, i64* %PC, align 8
; store i64 %var_2_4463, i64* %var_2_3, align 8
; Matched:  %.cast10 = bitcast i64 %var_2_2408 to double
; %.cast10 = bitcast i64 %var_2_4451 to double
; Matched:%var_2_2421:  %var_2_2421 = inttoptr i64 %var_2_2419 to double*
; %var_2_4464 = inttoptr i64 %var_2_4462 to double*
; Matched:%var_2_2422:  %var_2_2422 = load double, double* %var_2_2421, align 8
; %var_2_4465 = load double, double* %var_2_4464, align 8
; Matched:%var_2_2423:  %var_2_2423 = fmul double %.cast10, %var_2_2422
; %var_2_4466 = fmul double %.cast10, %var_2_4465
; Matched:\<badref\>:  store double %var_2_2423, double* %var_2_93, align 1, !tbaa !1285
; store double %var_2_4466, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
; Matched:%var_2_2424:  %var_2_2424 = add i64 %var_2_2401, -88
; %var_2_4467 = add i64 %var_2_4444, -88
; Matched:%var_2_2425:  %var_2_2425 = add i64 %var_2_2403, 28
; %var_2_4468 = add i64 %var_2_4446, 28
; Matched:\<badref\>:  store i64 %var_2_2525, i64* %PC, align 8
; store i64 %var_2_4468, i64* %var_2_3, align 8
; Matched:%var_2_2379:  %var_2_2379 = inttoptr i64 %var_2_2377 to i64*
; %var_2_4469 = inttoptr i64 %var_2_4467 to i64*
; Matched:%var_2_2380:  %var_2_2380 = load i64, i64* %var_2_2379, align 8
; %var_2_4470 = load i64, i64* %var_2_4469, align 8
; Matched:\<badref\>:  store i64 %var_2_2380, i64* %var_2_1624, align 1, !tbaa !1285
; store i64 %var_2_4470, i64* %var_2_1054, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_1626, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_1056, align 1
; Matched:%var_2_2428:  %var_2_2428 = add i64 %var_2_2401, -120
; %var_2_4471 = add i64 %var_2_4444, -120
; Matched:%var_2_2429:  %var_2_2429 = add i64 %var_2_2403, 33
; %var_2_4472 = add i64 %var_2_4446, 33
; Matched:\<badref\>:  store i64 %var_2_2382, i64* %PC, align 8
; store i64 %var_2_4472, i64* %var_2_3, align 8
; Matched:%var_2_2430:  %var_2_2430 = bitcast i64 %var_2_2427 to double
; %var_2_4473 = bitcast i64 %var_2_4470 to double
; Matched:%var_2_2431:  %var_2_2431 = inttoptr i64 %var_2_2428 to double*
; %var_2_4474 = inttoptr i64 %var_2_4471 to double*
; Matched:%var_2_2432:  %var_2_2432 = load double, double* %var_2_2431, align 8
; %var_2_4475 = load double, double* %var_2_4474, align 8
; Matched:%var_2_2433:  %var_2_2433 = fmul double %var_2_2430, %var_2_2432
; %var_2_4476 = fmul double %var_2_4473, %var_2_4475
; Matched:\<badref\>:  store double %var_2_2433, double* %var_2_1623, align 1, !tbaa !1285
; store double %var_2_4476, double* %var_2_1053, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_1625, align 1, !tbaa !1285
; store i64 0, i64* %var_2_1055, align 1
; Matched:%var_2_2434:  %var_2_2434 = fadd double %var_2_2423, %var_2_2433
; %var_2_4477 = fadd double %var_2_4466, %var_2_4476
; Matched:\<badref\>:  store double %var_2_2434, double* %var_2_93, align 1, !tbaa !1285
; store double %var_2_4477, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
%var_2_4478 = add i64 %var_2_4444, -16
; Matched:%var_2_2436:  %var_2_2436 = add i64 %var_2_2403, 41
; %var_2_4479 = add i64 %var_2_4446, 41
; Matched:\<badref\>:  store i64 %var_2_560, i64* %PC, align 8
; store i64 %var_2_4479, i64* %var_2_3, align 8
%var_2_4480 = inttoptr i64 %var_2_4478 to i64*
%var_2_4481 = load i64, i64* %var_2_4480, align 8
; Matched:\<badref\>:  store i64 %var_2_2527, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_4481, i64* %RAX.i2224, align 8
%var_2_4482 = add i64 %var_2_4444, -36
; Matched:%var_2_3357:  %var_2_3357 = add i64 %var_2_3281, 44
; %var_2_4483 = add i64 %var_2_4446, 44
; Matched:\<badref\>:  store i64 %var_2_2440, i64* %PC, align 8
; store i64 %var_2_4483, i64* %var_2_3, align 8
%var_2_4484 = inttoptr i64 %var_2_4482 to i32*
%var_2_4485 = load i32, i32* %var_2_4484, align 4
%var_2_4486 = add i32 %var_2_4485, 1
; Matched:%var_2_2444:  %var_2_2444 = zext i32 %var_2_2443 to i64
; %var_2_4487 = zext i32 %var_2_4486 to i64
; Matched:\<badref\>:  store i64 %var_2_2444, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_4487, i64* %RCX.i2236, align 8
; Matched:%var_2_2445:  %var_2_2445 = icmp eq i32 %var_2_2442, -1
; %var_2_4488 = icmp eq i32 %var_2_4485, -1
; Matched:%var_2_2446:  %var_2_2446 = icmp eq i32 %var_2_2443, 0
; %var_2_4489 = icmp eq i32 %var_2_4486, 0
; Matched:%var_2_2447:  %var_2_2447 = or i1 %var_2_2445, %var_2_2446
; %var_2_4490 = or i1 %var_2_4488, %var_2_4489
; Matched:%var_2_2448:  %var_2_2448 = zext i1 %var_2_2447 to i8
; %var_2_4491 = zext i1 %var_2_4490 to i8
; Matched:\<badref\>:  store i8 %var_2_2448, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_4491, i8* %var_2_14, align 1
; Matched:%var_2_2449:  %var_2_2449 = and i32 %var_2_2443, 255
; %var_2_4492 = and i32 %var_2_4486, 255
; Matched:%var_2_2450:  %var_2_2450 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2449) #14
; %var_2_4493 = tail call i32 @llvm.ctpop.i32(i32 %var_2_4492)
; Matched:%var_2_2451:  %var_2_2451 = trunc i32 %var_2_2450 to i8
; %var_2_4494 = trunc i32 %var_2_4493 to i8
; Matched:%var_2_2079:  %var_2_2079 = and i8 %var_2_2078, 1
; %var_2_4495 = and i8 %var_2_4494, 1
; Matched:%var_2_2080:  %var_2_2080 = xor i8 %var_2_2079, 1
; %var_2_4496 = xor i8 %var_2_4495, 1
; Matched:\<badref\>:  store i8 %var_2_4467, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_4496, i8* %var_2_21, align 1
; Matched:%var_2_2454:  %var_2_2454 = xor i32 %var_2_2443, %var_2_2442
; %var_2_4497 = xor i32 %var_2_4486, %var_2_4485
; Matched:%var_2_2455:  %var_2_2455 = lshr i32 %var_2_2454, 4
; %var_2_4498 = lshr i32 %var_2_4497, 4
; Matched:%var_2_2456:  %var_2_2456 = trunc i32 %var_2_2455 to i8
; %var_2_4499 = trunc i32 %var_2_4498 to i8
; Matched:%var_2_2457:  %var_2_2457 = and i8 %var_2_2456, 1
; %var_2_4500 = and i8 %var_2_4499, 1
; Matched:\<badref\>:  store i8 %var_2_2457, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_4500, i8* %var_2_27, align 1
; Matched:%var_2_2458:  %var_2_2458 = zext i1 %var_2_2446 to i8
; %var_2_4501 = zext i1 %var_2_4489 to i8
; Matched:\<badref\>:  store i8 %var_2_4472, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_4501, i8* %var_2_30, align 1
; Matched:%var_2_4235:  %var_2_4235 = lshr i32 %var_2_4219, 31
; %var_2_4502 = lshr i32 %var_2_4486, 31
; Matched:%var_2_2460:  %var_2_2460 = trunc i32 %var_2_2459 to i8
; %var_2_4503 = trunc i32 %var_2_4502 to i8
; Matched:\<badref\>:  store i8 %var_2_2460, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_4503, i8* %var_2_33, align 1
; Matched:%var_2_2461:  %var_2_2461 = lshr i32 %var_2_2442, 31
; %var_2_4504 = lshr i32 %var_2_4485, 31
; Matched:%var_2_4476:  %var_2_4476 = xor i32 %var_2_4473, %var_2_4475
; %var_2_4505 = xor i32 %var_2_4502, %var_2_4504
; Matched:%var_2_2203:  %var_2_2203 = add nuw nsw i32 %var_2_2202, %var_2_2199
; %var_2_4506 = add nuw nsw i32 %var_2_4505, %var_2_4502
; Matched:%var_2_2091:  %var_2_2091 = icmp eq i32 %var_2_2090, 2
; %var_2_4507 = icmp eq i32 %var_2_4506, 2
; Matched:%var_2_2205:  %var_2_2205 = zext i1 %var_2_2204 to i8
; %var_2_4508 = zext i1 %var_2_4507 to i8
; Matched:\<badref\>:  store i8 %var_2_2205, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_4508, i8* %var_2_39, align 1
%var_2_4509 = sext i32 %var_2_4486 to i64
; Matched:\<badref\>:  store i64 %var_2_4480, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_4509, i64* %RDX.i2239, align 8
; Matched:%var_2_2467:  %var_2_2467 = shl nsw i64 %var_2_2466, 3
; %var_2_4510 = shl nsw i64 %var_2_4509, 3
; Matched:%var_2_2468:  %var_2_2468 = add i64 %var_2_2438, %var_2_2467
; %var_2_4511 = add i64 %var_2_4481, %var_2_4510
; Matched:%var_2_2469:  %var_2_2469 = add i64 %var_2_2403, 55
; %var_2_4512 = add i64 %var_2_4446, 55
; Matched:\<badref\>:  store i64 %var_2_2469, i64* %PC, align 8
; store i64 %var_2_4512, i64* %var_2_3, align 8
; Matched:%var_2_2470:  %var_2_2470 = inttoptr i64 %var_2_2468 to double*
; %var_2_4513 = inttoptr i64 %var_2_4511 to double*
; Matched:\<badref\>:  store double %var_2_2434, double* %var_2_2470, align 8
; store double %var_2_4477, double* %var_2_4513, align 8
%var_2_4514 = load i64, i64* %RBP.i, align 8
%var_2_4515 = add i64 %var_2_4514, -136
%var_2_4516 = load i64, i64* %var_2_3, align 8
%var_2_4517 = add i64 %var_2_4516, 8
store i64 %var_2_4517, i64* %var_2_3, align 8
%var_2_4518 = inttoptr i64 %var_2_4515 to i64*
%var_2_4519 = load i64, i64* %var_2_4518, align 8
store i64 %var_2_4519, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
%var_2_4520 = add i64 %var_2_4514, -176
; Matched:%var_2_2603:  %var_2_2603 = add i64 %var_2_2598, 16
; %var_2_4521 = add i64 %var_2_4516, 16
; Matched:\<badref\>:  store i64 %var_2_2603, i64* %PC, align 8
; store i64 %var_2_4521, i64* %var_2_3, align 8
%var_2_4522 = bitcast i64 %var_2_4519 to double
%var_2_4523 = inttoptr i64 %var_2_4520 to double*
%var_2_4524 = load double, double* %var_2_4523, align 8
%var_2_4525 = fsub double %var_2_4522, %var_2_4524
store double %var_2_4525, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
; Matched:%var_2_2483:  %var_2_2483 = add i64 %var_2_2471, -120
; %var_2_4526 = add i64 %var_2_4514, -120
; Matched:%var_2_2609:  %var_2_2609 = add i64 %var_2_2598, 21
; %var_2_4527 = add i64 %var_2_4516, 21
; Matched:\<badref\>:  store i64 %var_2_2609, i64* %PC, align 8
; store i64 %var_2_4527, i64* %var_2_3, align 8
; Matched:%var_2_4499:  %var_2_4499 = inttoptr i64 %var_2_4497 to double*
; %var_2_4528 = inttoptr i64 %var_2_4526 to double*
; Matched:\<badref\>:  store double %var_2_4496, double* %var_2_4499, align 8
; store double %var_2_4525, double* %var_2_4528, align 8
%var_2_4529 = load i64, i64* %RBP.i, align 8
%var_2_4530 = add i64 %var_2_4529, -144
%var_2_4531 = load i64, i64* %var_2_3, align 8
%var_2_4532 = add i64 %var_2_4531, 8
store i64 %var_2_4532, i64* %var_2_3, align 8
%var_2_4533 = inttoptr i64 %var_2_4530 to i64*
%var_2_4534 = load i64, i64* %var_2_4533, align 8
store i64 %var_2_4534, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
%var_2_4535 = add i64 %var_2_4529, -168
; Matched:%var_2_4492:  %var_2_4492 = add i64 %var_2_4487, 16
; %var_2_4536 = add i64 %var_2_4531, 16
; Matched:\<badref\>:  store i64 %var_2_4492, i64* %PC, align 8
; store i64 %var_2_4536, i64* %var_2_3, align 8
%var_2_4537 = bitcast i64 %var_2_4534 to double
%var_2_4538 = inttoptr i64 %var_2_4535 to double*
%var_2_4539 = load double, double* %var_2_4538, align 8
%var_2_4540 = fadd double %var_2_4537, %var_2_4539
store double %var_2_4540, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
; Matched:%var_2_4512:  %var_2_4512 = add i64 %var_2_4500, -128
; %var_2_4541 = add i64 %var_2_4529, -128
; Matched:%var_2_3265:  %var_2_3265 = add i64 %var_2_3248, 21
; %var_2_4542 = add i64 %var_2_4531, 21
; Matched:\<badref\>:  store i64 %var_2_3265, i64* %PC, align 8
; store i64 %var_2_4542, i64* %var_2_3, align 8
; Matched:%var_2_4514:  %var_2_4514 = inttoptr i64 %var_2_4512 to double*
; %var_2_4543 = inttoptr i64 %var_2_4541 to double*
; Matched:\<badref\>:  store double %var_2_4511, double* %var_2_4514, align 8
; store double %var_2_4540, double* %var_2_4543, align 8
%var_2_4544 = load i64, i64* %RBP.i, align 8
%var_2_4545 = add i64 %var_2_4544, -72
%var_2_4546 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_929:  %var_2_929 = add i64 %var_2_928, 5
; %var_2_4547 = add i64 %var_2_4546, 5
; Matched:\<badref\>:  store i64 %var_2_2540, i64* %PC, align 8
; store i64 %var_2_4547, i64* %var_2_3, align 8
%var_2_4548 = inttoptr i64 %var_2_4545 to i64*
%var_2_4549 = load i64, i64* %var_2_4548, align 8
; Matched:\<badref\>:  store i64 %var_2_1197, i64* %var_2_94, align 1, !tbaa !1285
; store i64 %var_2_4549, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
; Matched:%var_2_2507:  %var_2_2507 = add i64 %var_2_2501, -120
; %var_2_4550 = add i64 %var_2_4544, -120
; Matched:%var_2_4522:  %var_2_4522 = add i64 %var_2_4517, 10
; %var_2_4551 = add i64 %var_2_4546, 10
; Matched:\<badref\>:  store i64 %var_2_4522, i64* %PC, align 8
; store i64 %var_2_4551, i64* %var_2_3, align 8
; Matched:%var_2_2509:  %var_2_2509 = bitcast i64 %var_2_2506 to double
; %var_2_4552 = bitcast i64 %var_2_4549 to double
; Matched:%var_2_2510:  %var_2_2510 = inttoptr i64 %var_2_2507 to double*
; %var_2_4553 = inttoptr i64 %var_2_4550 to double*
; Matched:%var_2_2511:  %var_2_2511 = load double, double* %var_2_2510, align 8
; %var_2_4554 = load double, double* %var_2_4553, align 8
; Matched:%var_2_4526:  %var_2_4526 = fmul double %var_2_4523, %var_2_4525
; %var_2_4555 = fmul double %var_2_4552, %var_2_4554
; Matched:\<badref\>:  store double %var_2_4526, double* %var_2_93, align 1, !tbaa !1285
; store double %var_2_4555, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
%var_2_4556 = add i64 %var_2_4544, -80
; Matched:%var_2_2550:  %var_2_2550 = add i64 %var_2_2539, 15
; %var_2_4557 = add i64 %var_2_4546, 15
; Matched:\<badref\>:  store i64 %var_2_2639, i64* %PC, align 8
; store i64 %var_2_4557, i64* %var_2_3, align 8
%var_2_4558 = inttoptr i64 %var_2_4556 to i64*
%var_2_4559 = load i64, i64* %var_2_4558, align 8
; Matched:\<badref\>:  store i64 %var_2_4530, i64* %var_2_1624, align 1, !tbaa !1285
; store i64 %var_2_4559, i64* %var_2_1054, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_1626, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_1056, align 1
; Matched:%var_2_2517:  %var_2_2517 = add i64 %var_2_2501, -128
; %var_2_4560 = add i64 %var_2_4544, -128
; Matched:%var_2_3401:  %var_2_3401 = add i64 %var_2_3386, 20
; %var_2_4561 = add i64 %var_2_4546, 20
; Matched:\<badref\>:  store i64 %var_2_3401, i64* %PC, align 8
; store i64 %var_2_4561, i64* %var_2_3, align 8
; Matched:%var_2_2519:  %var_2_2519 = bitcast i64 %var_2_2516 to double
; %var_2_4562 = bitcast i64 %var_2_4559 to double
; Matched:%var_2_2520:  %var_2_2520 = inttoptr i64 %var_2_2517 to double*
; %var_2_4563 = inttoptr i64 %var_2_4560 to double*
; Matched:%var_2_2521:  %var_2_2521 = load double, double* %var_2_2520, align 8
; %var_2_4564 = load double, double* %var_2_4563, align 8
; Matched:%var_2_4536:  %var_2_4536 = fmul double %var_2_4533, %var_2_4535
; %var_2_4565 = fmul double %var_2_4562, %var_2_4564
; Matched:\<badref\>:  store double %var_2_4536, double* %var_2_1623, align 1, !tbaa !1285
; store double %var_2_4565, double* %var_2_1053, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_1625, align 1, !tbaa !1285
; store i64 0, i64* %var_2_1055, align 1
; Matched:%var_2_4537:  %var_2_4537 = fsub double %var_2_4526, %var_2_4536
; %var_2_4566 = fsub double %var_2_4555, %var_2_4565
; Matched:\<badref\>:  store double %var_2_4537, double* %var_2_93, align 1, !tbaa !1285
; store double %var_2_4566, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
%var_2_4567 = add i64 %var_2_4544, -16
; Matched:%var_2_2378:  %var_2_2378 = add i64 %var_2_2356, 28
; %var_2_4568 = add i64 %var_2_4546, 28
; Matched:\<badref\>:  store i64 %var_2_4539, i64* %PC, align 8
; store i64 %var_2_4568, i64* %var_2_3, align 8
%var_2_4569 = inttoptr i64 %var_2_4567 to i64*
%var_2_4570 = load i64, i64* %var_2_4569, align 8
; Matched:\<badref\>:  store i64 %var_2_2652, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_4570, i64* %RAX.i2224, align 8
%var_2_4571 = add i64 %var_2_4544, -32
; Matched:%var_2_1221:  %var_2_1221 = add i64 %var_2_1194, 32
; %var_2_4572 = add i64 %var_2_4546, 32
; Matched:\<badref\>:  store i64 %var_2_2654, i64* %PC, align 8
; store i64 %var_2_4572, i64* %var_2_3, align 8
%var_2_4573 = inttoptr i64 %var_2_4571 to i32*
%var_2_4574 = load i32, i32* %var_2_4573, align 4
%var_2_4575 = sext i32 %var_2_4574 to i64
; Matched:\<badref\>:  store i64 %var_2_4546, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_4575, i64* %RDX.i2239, align 8
; Matched:%var_2_4547:  %var_2_4547 = shl nsw i64 %var_2_4546, 3
; %var_2_4576 = shl nsw i64 %var_2_4575, 3
; Matched:%var_2_4548:  %var_2_4548 = add i64 %var_2_4547, %var_2_4541
; %var_2_4577 = add i64 %var_2_4576, %var_2_4570
; Matched:%var_2_2660:  %var_2_2660 = add i64 %var_2_2628, 37
; %var_2_4578 = add i64 %var_2_4546, 37
; Matched:\<badref\>:  store i64 %var_2_4674, i64* %PC, align 8
; store i64 %var_2_4578, i64* %var_2_3, align 8
; Matched:%var_2_2536:  %var_2_2536 = inttoptr i64 %var_2_2534 to double*
; %var_2_4579 = inttoptr i64 %var_2_4577 to double*
; Matched:\<badref\>:  store double %var_2_4537, double* %var_2_4550, align 8
; store double %var_2_4566, double* %var_2_4579, align 8
%var_2_4580 = load i64, i64* %RBP.i, align 8
%var_2_4581 = add i64 %var_2_4580, -72
%var_2_4582 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1080:  %var_2_1080 = add i64 %var_2_1079, 5
; %var_2_4583 = add i64 %var_2_4582, 5
; Matched:\<badref\>:  store i64 %var_2_4679, i64* %PC, align 8
; store i64 %var_2_4583, i64* %var_2_3, align 8
%var_2_4584 = inttoptr i64 %var_2_4581 to i64*
%var_2_4585 = load i64, i64* %var_2_4584, align 8
; Matched:\<badref\>:  store i64 %var_2_4556, i64* %var_2_94, align 1, !tbaa !1285
; store i64 %var_2_4585, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
; Matched:%var_2_2543:  %var_2_2543 = add i64 %var_2_2537, -128
; %var_2_4586 = add i64 %var_2_4580, -128
; Matched:%var_2_1230:  %var_2_1230 = add i64 %var_2_1225, 10
; %var_2_4587 = add i64 %var_2_4582, 10
; Matched:\<badref\>:  store i64 %var_2_310, i64* %PC, align 8
; store i64 %var_2_4587, i64* %var_2_3, align 8
; Matched:%var_2_2545:  %var_2_2545 = bitcast i64 %var_2_2542 to double
; %var_2_4588 = bitcast i64 %var_2_4585 to double
; Matched:%var_2_2546:  %var_2_2546 = inttoptr i64 %var_2_2543 to double*
; %var_2_4589 = inttoptr i64 %var_2_4586 to double*
; Matched:%var_2_2547:  %var_2_2547 = load double, double* %var_2_2546, align 8
; %var_2_4590 = load double, double* %var_2_4589, align 8
; Matched:%var_2_4562:  %var_2_4562 = fmul double %var_2_4559, %var_2_4561
; %var_2_4591 = fmul double %var_2_4588, %var_2_4590
; Matched:\<badref\>:  store double %var_2_4562, double* %var_2_93, align 1, !tbaa !1285
; store double %var_2_4591, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
%var_2_4592 = add i64 %var_2_4580, -80
; Matched:%var_2_4564:  %var_2_4564 = add i64 %var_2_4553, 15
; %var_2_4593 = add i64 %var_2_4582, 15
; Matched:\<badref\>:  store i64 %var_2_4439, i64* %PC, align 8
; store i64 %var_2_4593, i64* %var_2_3, align 8
%var_2_4594 = inttoptr i64 %var_2_4592 to i64*
%var_2_4595 = load i64, i64* %var_2_4594, align 8
; Matched:\<badref\>:  store i64 %var_2_2552, i64* %var_2_1624, align 1, !tbaa !1285
; store i64 %var_2_4595, i64* %var_2_1054, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_1626, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_1056, align 1
; Matched:%var_2_2553:  %var_2_2553 = add i64 %var_2_2537, -120
; %var_2_4596 = add i64 %var_2_4580, -120
; Matched:%var_2_2643:  %var_2_2643 = add i64 %var_2_2628, 20
; %var_2_4597 = add i64 %var_2_4582, 20
; Matched:\<badref\>:  store i64 %var_2_2643, i64* %PC, align 8
; store i64 %var_2_4597, i64* %var_2_3, align 8
; Matched:%var_2_2555:  %var_2_2555 = bitcast i64 %var_2_2552 to double
; %var_2_4598 = bitcast i64 %var_2_4595 to double
; Matched:%var_2_2556:  %var_2_2556 = inttoptr i64 %var_2_2553 to double*
; %var_2_4599 = inttoptr i64 %var_2_4596 to double*
; Matched:%var_2_2557:  %var_2_2557 = load double, double* %var_2_2556, align 8
; %var_2_4600 = load double, double* %var_2_4599, align 8
; Matched:%var_2_4572:  %var_2_4572 = fmul double %var_2_4569, %var_2_4571
; %var_2_4601 = fmul double %var_2_4598, %var_2_4600
; Matched:\<badref\>:  store double %var_2_4572, double* %var_2_1623, align 1, !tbaa !1285
; store double %var_2_4601, double* %var_2_1053, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_1625, align 1, !tbaa !1285
; store i64 0, i64* %var_2_1055, align 1
; Matched:%var_2_4573:  %var_2_4573 = fadd double %var_2_4562, %var_2_4572
; %var_2_4602 = fadd double %var_2_4591, %var_2_4601
; Matched:\<badref\>:  store double %var_2_4573, double* %var_2_93, align 1, !tbaa !1285
; store double %var_2_4602, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
%var_2_4603 = add i64 %var_2_4580, -16
; Matched:%var_2_4575:  %var_2_4575 = add i64 %var_2_4553, 28
; %var_2_4604 = add i64 %var_2_4582, 28
; Matched:\<badref\>:  store i64 %var_2_4575, i64* %PC, align 8
; store i64 %var_2_4604, i64* %var_2_3, align 8
%var_2_4605 = inttoptr i64 %var_2_4603 to i64*
%var_2_4606 = load i64, i64* %var_2_4605, align 8
; Matched:\<badref\>:  store i64 %var_2_2563, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_4606, i64* %RAX.i2224, align 8
%var_2_4607 = add i64 %var_2_4580, -32
; Matched:%var_2_4579:  %var_2_4579 = add i64 %var_2_4553, 31
; %var_2_4608 = add i64 %var_2_4582, 31
; Matched:\<badref\>:  store i64 %var_2_4579, i64* %PC, align 8
; store i64 %var_2_4608, i64* %var_2_3, align 8
%var_2_4609 = inttoptr i64 %var_2_4607 to i32*
%var_2_4610 = load i32, i32* %var_2_4609, align 4
%var_2_4611 = add i32 %var_2_4610, 1
; Matched:%var_2_1880:  %var_2_1880 = zext i32 %var_2_1879 to i64
; %var_2_4612 = zext i32 %var_2_4611 to i64
; Matched:\<badref\>:  store i64 %var_2_1880, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_4612, i64* %RCX.i2236, align 8
; Matched:%var_2_4584:  %var_2_4584 = icmp eq i32 %var_2_4581, -1
; %var_2_4613 = icmp eq i32 %var_2_4610, -1
; Matched:%var_2_4585:  %var_2_4585 = icmp eq i32 %var_2_4582, 0
; %var_2_4614 = icmp eq i32 %var_2_4611, 0
; Matched:%var_2_4586:  %var_2_4586 = or i1 %var_2_4584, %var_2_4585
; %var_2_4615 = or i1 %var_2_4613, %var_2_4614
; Matched:%var_2_4587:  %var_2_4587 = zext i1 %var_2_4586 to i8
; %var_2_4616 = zext i1 %var_2_4615 to i8
; Matched:\<badref\>:  store i8 %var_2_3920, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_4616, i8* %var_2_14, align 1
; Matched:%var_2_3921:  %var_2_3921 = and i32 %var_2_3915, 255
; %var_2_4617 = and i32 %var_2_4611, 255
; Matched:%var_2_647:  %var_2_647 = tail call i32 @llvm.ctpop.i32(i32 %var_2_646) #14
; %var_2_4618 = tail call i32 @llvm.ctpop.i32(i32 %var_2_4617)
; Matched:%var_2_4590:  %var_2_4590 = trunc i32 %var_2_4589 to i8
; %var_2_4619 = trunc i32 %var_2_4618 to i8
; Matched:%var_2_3924:  %var_2_3924 = and i8 %var_2_3923, 1
; %var_2_4620 = and i8 %var_2_4619, 1
; Matched:%var_2_3925:  %var_2_3925 = xor i8 %var_2_3924, 1
; %var_2_4621 = xor i8 %var_2_4620, 1
; Matched:\<badref\>:  store i8 %var_2_4592, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_4621, i8* %var_2_21, align 1
; Matched:%var_2_538:  %var_2_538 = xor i32 %var_2_527, %var_2_526
; %var_2_4622 = xor i32 %var_2_4611, %var_2_4610
; Matched:%var_2_4594:  %var_2_4594 = lshr i32 %var_2_4593, 4
; %var_2_4623 = lshr i32 %var_2_4622, 4
; Matched:%var_2_540:  %var_2_540 = trunc i32 %var_2_539 to i8
; %var_2_4624 = trunc i32 %var_2_4623 to i8
; Matched:%var_2_541:  %var_2_541 = and i8 %var_2_540, 1
; %var_2_4625 = and i8 %var_2_4624, 1
; Matched:\<badref\>:  store i8 %var_2_541, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_4625, i8* %var_2_27, align 1
; Matched:%var_2_655:  %var_2_655 = zext i1 %var_2_643 to i8
; %var_2_4626 = zext i1 %var_2_4614 to i8
; Matched:\<badref\>:  store i8 %var_2_655, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_4626, i8* %var_2_30, align 1
; Matched:%var_2_4598:  %var_2_4598 = lshr i32 %var_2_4582, 31
; %var_2_4627 = lshr i32 %var_2_4611, 31
; Matched:%var_2_4599:  %var_2_4599 = trunc i32 %var_2_4598 to i8
; %var_2_4628 = trunc i32 %var_2_4627 to i8
; Matched:\<badref\>:  store i8 %var_2_2585, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_4628, i8* %var_2_33, align 1
; Matched:%var_2_658:  %var_2_658 = lshr i32 %var_2_639, 31
; %var_2_4629 = lshr i32 %var_2_4610, 31
; Matched:%var_2_659:  %var_2_659 = xor i32 %var_2_656, %var_2_658
; %var_2_4630 = xor i32 %var_2_4627, %var_2_4629
; Matched:%var_2_4602:  %var_2_4602 = add nuw nsw i32 %var_2_4601, %var_2_4598
; %var_2_4631 = add nuw nsw i32 %var_2_4630, %var_2_4627
; Matched:%var_2_2589:  %var_2_2589 = icmp eq i32 %var_2_2588, 2
; %var_2_4632 = icmp eq i32 %var_2_4631, 2
; Matched:%var_2_549:  %var_2_549 = zext i1 %var_2_548 to i8
; %var_2_4633 = zext i1 %var_2_4632 to i8
; Matched:\<badref\>:  store i8 %var_2_662, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_4633, i8* %var_2_39, align 1
%var_2_4634 = sext i32 %var_2_4611 to i64
; Matched:\<badref\>:  store i64 %var_2_3938, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_4634, i64* %RDX.i2239, align 8
; Matched:%var_2_4606:  %var_2_4606 = shl nsw i64 %var_2_4605, 3
; %var_2_4635 = shl nsw i64 %var_2_4634, 3
; Matched:%var_2_2593:  %var_2_2593 = add i64 %var_2_2563, %var_2_2592
; %var_2_4636 = add i64 %var_2_4606, %var_2_4635
; Matched:%var_2_4608:  %var_2_4608 = add i64 %var_2_4553, 42
; %var_2_4637 = add i64 %var_2_4582, 42
; Matched:\<badref\>:  store i64 %var_2_2719, i64* %PC, align 8
; store i64 %var_2_4637, i64* %var_2_3, align 8
; Matched:%var_2_2595:  %var_2_2595 = inttoptr i64 %var_2_2593 to double*
; %var_2_4638 = inttoptr i64 %var_2_4636 to double*
; Matched:\<badref\>:  store double %var_2_2559, double* %var_2_2595, align 8
; store double %var_2_4602, double* %var_2_4638, align 8
%var_2_4639 = load i64, i64* %RBP.i, align 8
%var_2_4640 = add i64 %var_2_4639, -136
%var_2_4641 = load i64, i64* %var_2_3, align 8
%var_2_4642 = add i64 %var_2_4641, 8
store i64 %var_2_4642, i64* %var_2_3, align 8
%var_2_4643 = inttoptr i64 %var_2_4640 to i64*
%var_2_4644 = load i64, i64* %var_2_4643, align 8
store i64 %var_2_4644, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
%var_2_4645 = add i64 %var_2_4639, -176
; Matched:%var_2_1169:  %var_2_1169 = add i64 %var_2_1164, 16
; %var_2_4646 = add i64 %var_2_4641, 16
; Matched:\<badref\>:  store i64 %var_2_1169, i64* %PC, align 8
; store i64 %var_2_4646, i64* %var_2_3, align 8
%var_2_4647 = bitcast i64 %var_2_4644 to double
%var_2_4648 = inttoptr i64 %var_2_4645 to double*
%var_2_4649 = load double, double* %var_2_4648, align 8
%var_2_4650 = fadd double %var_2_4647, %var_2_4649
store double %var_2_4650, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
; Matched:%var_2_4622:  %var_2_4622 = add i64 %var_2_4610, -120
; %var_2_4651 = add i64 %var_2_4639, -120
; Matched:%var_2_2926:  %var_2_2926 = add i64 %var_2_2909, 21
; %var_2_4652 = add i64 %var_2_4641, 21
; Matched:\<badref\>:  store i64 %var_2_2926, i64* %PC, align 8
; store i64 %var_2_4652, i64* %var_2_3, align 8
; Matched:%var_2_4624:  %var_2_4624 = inttoptr i64 %var_2_4622 to double*
; %var_2_4653 = inttoptr i64 %var_2_4651 to double*
; Matched:\<badref\>:  store double %var_2_2607, double* %var_2_2610, align 8
; store double %var_2_4650, double* %var_2_4653, align 8
%var_2_4654 = load i64, i64* %RBP.i, align 8
%var_2_4655 = add i64 %var_2_4654, -144
%var_2_4656 = load i64, i64* %var_2_3, align 8
%var_2_4657 = add i64 %var_2_4656, 8
store i64 %var_2_4657, i64* %var_2_3, align 8
%var_2_4658 = inttoptr i64 %var_2_4655 to i64*
%var_2_4659 = load i64, i64* %var_2_4658, align 8
store i64 %var_2_4659, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
%var_2_4660 = add i64 %var_2_4654, -168
; Matched:%var_2_1184:  %var_2_1184 = add i64 %var_2_1179, 16
; %var_2_4661 = add i64 %var_2_4656, 16
; Matched:\<badref\>:  store i64 %var_2_1184, i64* %PC, align 8
; store i64 %var_2_4661, i64* %var_2_3, align 8
%var_2_4662 = bitcast i64 %var_2_4659 to double
%var_2_4663 = inttoptr i64 %var_2_4660 to double*
%var_2_4664 = load double, double* %var_2_4663, align 8
%var_2_4665 = fsub double %var_2_4662, %var_2_4664
store double %var_2_4665, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
; Matched:%var_2_4637:  %var_2_4637 = add i64 %var_2_4625, -128
; %var_2_4666 = add i64 %var_2_4654, -128
; Matched:%var_2_3039:  %var_2_3039 = add i64 %var_2_3022, 21
; %var_2_4667 = add i64 %var_2_4656, 21
; Matched:\<badref\>:  store i64 %var_2_2499, i64* %PC, align 8
; store i64 %var_2_4667, i64* %var_2_3, align 8
; Matched:%var_2_4639:  %var_2_4639 = inttoptr i64 %var_2_4637 to double*
; %var_2_4668 = inttoptr i64 %var_2_4666 to double*
; Matched:\<badref\>:  store double %var_2_4636, double* %var_2_4639, align 8
; store double %var_2_4665, double* %var_2_4668, align 8
%var_2_4669 = load i64, i64* %RBP.i, align 8
%var_2_4670 = add i64 %var_2_4669, -104
%var_2_4671 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_4554:  %var_2_4554 = add i64 %var_2_4553, 5
; %var_2_4672 = add i64 %var_2_4671, 5
; Matched:\<badref\>:  store i64 %var_2_904, i64* %PC, align 8
; store i64 %var_2_4672, i64* %var_2_3, align 8
%var_2_4673 = inttoptr i64 %var_2_4670 to i64*
%var_2_4674 = load i64, i64* %var_2_4673, align 8
; Matched:\<badref\>:  store i64 %var_2_4681, i64* %var_2_94, align 1, !tbaa !1285
; store i64 %var_2_4674, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
; Matched:%var_2_2632:  %var_2_2632 = add i64 %var_2_2626, -120
; %var_2_4675 = add i64 %var_2_4669, -120
; Matched:%var_2_44:  %var_2_44 = add i64 %var_2_12, 10
; %var_2_4676 = add i64 %var_2_4671, 10
; Matched:\<badref\>:  store i64 %var_2_44, i64* %PC, align 8
; store i64 %var_2_4676, i64* %var_2_3, align 8
; Matched:%var_2_4648:  %var_2_4648 = bitcast i64 %var_2_4645 to double
; %var_2_4677 = bitcast i64 %var_2_4674 to double
; Matched:%var_2_2635:  %var_2_2635 = inttoptr i64 %var_2_2632 to double*
; %var_2_4678 = inttoptr i64 %var_2_4675 to double*
; Matched:%var_2_4650:  %var_2_4650 = load double, double* %var_2_4649, align 8
; %var_2_4679 = load double, double* %var_2_4678, align 8
; Matched:%var_2_4651:  %var_2_4651 = fmul double %var_2_4648, %var_2_4650
; %var_2_4680 = fmul double %var_2_4677, %var_2_4679
; Matched:\<badref\>:  store double %var_2_2637, double* %var_2_93, align 1, !tbaa !1285
; store double %var_2_4680, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
%var_2_4681 = add i64 %var_2_4669, -112
; Matched:%var_2_4403:  %var_2_4403 = add i64 %var_2_4392, 15
; %var_2_4682 = add i64 %var_2_4671, 15
; Matched:\<badref\>:  store i64 %var_2_1234, i64* %PC, align 8
; store i64 %var_2_4682, i64* %var_2_3, align 8
%var_2_4683 = inttoptr i64 %var_2_4681 to i64*
%var_2_4684 = load i64, i64* %var_2_4683, align 8
; Matched:\<badref\>:  store i64 %var_2_4655, i64* %var_2_1624, align 1, !tbaa !1285
; store i64 %var_2_4684, i64* %var_2_1054, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_1626, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_1056, align 1
; Matched:%var_2_2642:  %var_2_2642 = add i64 %var_2_2626, -128
; %var_2_4685 = add i64 %var_2_4669, -128
; Matched:%var_2_3518:  %var_2_3518 = add i64 %var_2_3507, 20
; %var_2_4686 = add i64 %var_2_4671, 20
; Matched:\<badref\>:  store i64 %var_2_3518, i64* %PC, align 8
; store i64 %var_2_4686, i64* %var_2_3, align 8
; Matched:%var_2_4658:  %var_2_4658 = bitcast i64 %var_2_4655 to double
; %var_2_4687 = bitcast i64 %var_2_4684 to double
; Matched:%var_2_2645:  %var_2_2645 = inttoptr i64 %var_2_2642 to double*
; %var_2_4688 = inttoptr i64 %var_2_4685 to double*
; Matched:%var_2_4660:  %var_2_4660 = load double, double* %var_2_4659, align 8
; %var_2_4689 = load double, double* %var_2_4688, align 8
; Matched:%var_2_4661:  %var_2_4661 = fmul double %var_2_4658, %var_2_4660
; %var_2_4690 = fmul double %var_2_4687, %var_2_4689
; Matched:\<badref\>:  store double %var_2_2647, double* %var_2_1623, align 1, !tbaa !1285
; store double %var_2_4690, double* %var_2_1053, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_1625, align 1, !tbaa !1285
; store i64 0, i64* %var_2_1055, align 1
; Matched:%var_2_2648:  %var_2_2648 = fsub double %var_2_2637, %var_2_2647
; %var_2_4691 = fsub double %var_2_4680, %var_2_4690
; Matched:\<badref\>:  store double %var_2_4662, double* %var_2_93, align 1, !tbaa !1285
; store double %var_2_4691, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
%var_2_4692 = add i64 %var_2_4669, -16
; Matched:%var_2_4539:  %var_2_4539 = add i64 %var_2_4517, 28
; %var_2_4693 = add i64 %var_2_4671, 28
; Matched:\<badref\>:  store i64 %var_2_4664, i64* %PC, align 8
; store i64 %var_2_4693, i64* %var_2_3, align 8
%var_2_4694 = inttoptr i64 %var_2_4692 to i64*
%var_2_4695 = load i64, i64* %var_2_4694, align 8
; Matched:\<badref\>:  store i64 %var_2_2438, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_4695, i64* %RAX.i2224, align 8
%var_2_4696 = add i64 %var_2_4669, -40
; Matched:%var_2_4668:  %var_2_4668 = add i64 %var_2_4642, 32
; %var_2_4697 = add i64 %var_2_4671, 32
; Matched:\<badref\>:  store i64 %var_2_1106, i64* %PC, align 8
; store i64 %var_2_4697, i64* %var_2_3, align 8
%var_2_4698 = inttoptr i64 %var_2_4696 to i32*
%var_2_4699 = load i32, i32* %var_2_4698, align 4
%var_2_4700 = sext i32 %var_2_4699 to i64
; Matched:\<badref\>:  store i64 %var_2_2657, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_4700, i64* %RDX.i2239, align 8
; Matched:%var_2_2658:  %var_2_2658 = shl nsw i64 %var_2_2657, 3
; %var_2_4701 = shl nsw i64 %var_2_4700, 3
; Matched:%var_2_4673:  %var_2_4673 = add i64 %var_2_4672, %var_2_4666
; %var_2_4702 = add i64 %var_2_4701, %var_2_4695
; Matched:%var_2_1160:  %var_2_1160 = add i64 %var_2_1110, 37
; %var_2_4703 = add i64 %var_2_4671, 37
; Matched:\<badref\>:  store i64 %var_2_1275, i64* %PC, align 8
; store i64 %var_2_4703, i64* %var_2_3, align 8
; Matched:%var_2_4675:  %var_2_4675 = inttoptr i64 %var_2_4673 to double*
; %var_2_4704 = inttoptr i64 %var_2_4702 to double*
; Matched:\<badref\>:  store double %var_2_4662, double* %var_2_4675, align 8
; store double %var_2_4691, double* %var_2_4704, align 8
%var_2_4705 = load i64, i64* %RBP.i, align 8
%var_2_4706 = add i64 %var_2_4705, -104
%var_2_4707 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1226:  %var_2_1226 = add i64 %var_2_1225, 5
; %var_2_4708 = add i64 %var_2_4707, 5
; Matched:\<badref\>:  store i64 %var_2_1226, i64* %PC, align 8
; store i64 %var_2_4708, i64* %var_2_3, align 8
%var_2_4709 = inttoptr i64 %var_2_4706 to i64*
%var_2_4710 = load i64, i64* %var_2_4709, align 8
; Matched:\<badref\>:  store i64 %var_2_2667, i64* %var_2_94, align 1, !tbaa !1285
; store i64 %var_2_4710, i64* %var_2_1038, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_97, align 1
; Matched:%var_2_2668:  %var_2_2668 = add i64 %var_2_2662, -128
; %var_2_4711 = add i64 %var_2_4705, -128
; Matched:%var_2_1115:  %var_2_1115 = add i64 %var_2_1110, 10
; %var_2_4712 = add i64 %var_2_4707, 10
; Matched:\<badref\>:  store i64 %var_2_1115, i64* %PC, align 8
; store i64 %var_2_4712, i64* %var_2_3, align 8
; Matched:%var_2_4684:  %var_2_4684 = bitcast i64 %var_2_4681 to double
; %var_2_4713 = bitcast i64 %var_2_4710 to double
; Matched:%var_2_2671:  %var_2_2671 = inttoptr i64 %var_2_2668 to double*
; %var_2_4714 = inttoptr i64 %var_2_4711 to double*
; Matched:%var_2_4686:  %var_2_4686 = load double, double* %var_2_4685, align 8
; %var_2_4715 = load double, double* %var_2_4714, align 8
; Matched:%var_2_4687:  %var_2_4687 = fmul double %var_2_4684, %var_2_4686
; %var_2_4716 = fmul double %var_2_4713, %var_2_4715
; Matched:\<badref\>:  store double %var_2_2673, double* %var_2_93, align 1, !tbaa !1285
; store double %var_2_4716, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
%var_2_4717 = add i64 %var_2_4705, -112
; Matched:%var_2_1234:  %var_2_1234 = add i64 %var_2_1225, 15
; %var_2_4718 = add i64 %var_2_4707, 15
; Matched:\<badref\>:  store i64 %var_2_2675, i64* %PC, align 8
; store i64 %var_2_4718, i64* %var_2_3, align 8
%var_2_4719 = inttoptr i64 %var_2_4717 to i64*
%var_2_4720 = load i64, i64* %var_2_4719, align 8
; Matched:\<badref\>:  store i64 %var_2_2677, i64* %var_2_1624, align 1, !tbaa !1285
; store i64 %var_2_4720, i64* %var_2_1054, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_1626, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_1056, align 1
; Matched:%var_2_2678:  %var_2_2678 = add i64 %var_2_2662, -120
; %var_2_4721 = add i64 %var_2_4705, -120
; Matched:%var_2_4443:  %var_2_4443 = add i64 %var_2_4428, 20
; %var_2_4722 = add i64 %var_2_4707, 20
; Matched:\<badref\>:  store i64 %var_2_4443, i64* %PC, align 8
; store i64 %var_2_4722, i64* %var_2_3, align 8
; Matched:%var_2_4694:  %var_2_4694 = bitcast i64 %var_2_4691 to double
; %var_2_4723 = bitcast i64 %var_2_4720 to double
; Matched:%var_2_2681:  %var_2_2681 = inttoptr i64 %var_2_2678 to double*
; %var_2_4724 = inttoptr i64 %var_2_4721 to double*
; Matched:%var_2_4696:  %var_2_4696 = load double, double* %var_2_4695, align 8
; %var_2_4725 = load double, double* %var_2_4724, align 8
; Matched:%var_2_4697:  %var_2_4697 = fmul double %var_2_4694, %var_2_4696
; %var_2_4726 = fmul double %var_2_4723, %var_2_4725
; Matched:\<badref\>:  store double %var_2_2683, double* %var_2_1623, align 1, !tbaa !1285
; store double %var_2_4726, double* %var_2_1053, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_1625, align 1, !tbaa !1285
; store i64 0, i64* %var_2_1055, align 1
; Matched:%var_2_2684:  %var_2_2684 = fadd double %var_2_2673, %var_2_2683
; %var_2_4727 = fadd double %var_2_4716, %var_2_4726
; Matched:\<badref\>:  store double %var_2_4698, double* %var_2_93, align 1, !tbaa !1285
; store double %var_2_4727, double* %var_2_1037, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1261
; store i64 0, i64* %var_2_96, align 1
%var_2_4728 = add i64 %var_2_4705, -16
; Matched:%var_2_4700:  %var_2_4700 = add i64 %var_2_4678, 28
; %var_2_4729 = add i64 %var_2_4707, 28
; Matched:\<badref\>:  store i64 %var_2_4700, i64* %PC, align 8
; store i64 %var_2_4729, i64* %var_2_3, align 8
%var_2_4730 = inttoptr i64 %var_2_4728 to i64*
%var_2_4731 = load i64, i64* %var_2_4730, align 8
; Matched:\<badref\>:  store i64 %var_2_2688, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_4731, i64* %RAX.i2224, align 8
%var_2_4732 = add i64 %var_2_4705, -40
; Matched:%var_2_2690:  %var_2_2690 = add i64 %var_2_2664, 31
; %var_2_4733 = add i64 %var_2_4707, 31
; Matched:\<badref\>:  store i64 %var_2_1832, i64* %PC, align 8
; store i64 %var_2_4733, i64* %var_2_3, align 8
%var_2_4734 = inttoptr i64 %var_2_4732 to i32*
%var_2_4735 = load i32, i32* %var_2_4734, align 4
%var_2_4736 = add i32 %var_2_4735, 1
; Matched:%var_2_2694:  %var_2_2694 = zext i32 %var_2_2693 to i64
; %var_2_4737 = zext i32 %var_2_4736 to i64
; Matched:\<badref\>:  store i64 %var_2_2694, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_4737, i64* %RCX.i2236, align 8
; Matched:%var_2_4709:  %var_2_4709 = icmp eq i32 %var_2_4706, -1
; %var_2_4738 = icmp eq i32 %var_2_4735, -1
; Matched:%var_2_4710:  %var_2_4710 = icmp eq i32 %var_2_4707, 0
; %var_2_4739 = icmp eq i32 %var_2_4736, 0
; Matched:%var_2_4145:  %var_2_4145 = or i1 %var_2_4143, %var_2_4144
; %var_2_4740 = or i1 %var_2_4738, %var_2_4739
; Matched:%var_2_4712:  %var_2_4712 = zext i1 %var_2_4711 to i8
; %var_2_4741 = zext i1 %var_2_4740 to i8
; Matched:\<badref\>:  store i8 %var_2_4712, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_4741, i8* %var_2_14, align 1
; Matched:%var_2_4713:  %var_2_4713 = and i32 %var_2_4707, 255
; %var_2_4742 = and i32 %var_2_4736, 255
; Matched:%var_2_4148:  %var_2_4148 = tail call i32 @llvm.ctpop.i32(i32 %var_2_4147) #14
; %var_2_4743 = tail call i32 @llvm.ctpop.i32(i32 %var_2_4742)
; Matched:%var_2_4149:  %var_2_4149 = trunc i32 %var_2_4148 to i8
; %var_2_4744 = trunc i32 %var_2_4743 to i8
; Matched:%var_2_4716:  %var_2_4716 = and i8 %var_2_4715, 1
; %var_2_4745 = and i8 %var_2_4744, 1
; Matched:%var_2_876:  %var_2_876 = xor i8 %var_2_875, 1
; %var_2_4746 = xor i8 %var_2_4745, 1
; Matched:\<badref\>:  store i8 %var_2_4717, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_4746, i8* %var_2_21, align 1
; Matched:%var_2_4718:  %var_2_4718 = xor i32 %var_2_4707, %var_2_4706
; %var_2_4747 = xor i32 %var_2_4736, %var_2_4735
; Matched:%var_2_2705:  %var_2_2705 = lshr i32 %var_2_2704, 4
; %var_2_4748 = lshr i32 %var_2_4747, 4
; Matched:%var_2_2706:  %var_2_2706 = trunc i32 %var_2_2705 to i8
; %var_2_4749 = trunc i32 %var_2_4748 to i8
; Matched:%var_2_4721:  %var_2_4721 = and i8 %var_2_4720, 1
; %var_2_4750 = and i8 %var_2_4749, 1
; Matched:\<badref\>:  store i8 %var_2_4721, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_4750, i8* %var_2_27, align 1
; Matched:%var_2_4722:  %var_2_4722 = zext i1 %var_2_4710 to i8
; %var_2_4751 = zext i1 %var_2_4739 to i8
; Matched:\<badref\>:  store i8 %var_2_4722, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_4751, i8* %var_2_30, align 1
; Matched:%var_2_4723:  %var_2_4723 = lshr i32 %var_2_4707, 31
; %var_2_4752 = lshr i32 %var_2_4736, 31
; Matched:%var_2_4724:  %var_2_4724 = trunc i32 %var_2_4723 to i8
; %var_2_4753 = trunc i32 %var_2_4752 to i8
; Matched:\<badref\>:  store i8 %var_2_4724, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_4753, i8* %var_2_33, align 1
; Matched:%var_2_4725:  %var_2_4725 = lshr i32 %var_2_4706, 31
; %var_2_4754 = lshr i32 %var_2_4735, 31
; Matched:%var_2_885:  %var_2_885 = xor i32 %var_2_882, %var_2_884
; %var_2_4755 = xor i32 %var_2_4752, %var_2_4754
; Matched:%var_2_4727:  %var_2_4727 = add nuw nsw i32 %var_2_4726, %var_2_4723
; %var_2_4756 = add nuw nsw i32 %var_2_4755, %var_2_4752
; Matched:%var_2_4162:  %var_2_4162 = icmp eq i32 %var_2_4161, 2
; %var_2_4757 = icmp eq i32 %var_2_4756, 2
; Matched:%var_2_2715:  %var_2_2715 = zext i1 %var_2_2714 to i8
; %var_2_4758 = zext i1 %var_2_4757 to i8
; Matched:\<badref\>:  store i8 %var_2_4729, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_4758, i8* %var_2_39, align 1
%var_2_4759 = sext i32 %var_2_4736 to i64
; Matched:\<badref\>:  store i64 %var_2_4730, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_4759, i64* %RDX.i2239, align 8
; Matched:%var_2_2717:  %var_2_2717 = shl nsw i64 %var_2_2716, 3
; %var_2_4760 = shl nsw i64 %var_2_4759, 3
; Matched:%var_2_2718:  %var_2_2718 = add i64 %var_2_2688, %var_2_2717
; %var_2_4761 = add i64 %var_2_4731, %var_2_4760
; Matched:%var_2_4733:  %var_2_4733 = add i64 %var_2_4678, 42
; %var_2_4762 = add i64 %var_2_4707, 42
; Matched:\<badref\>:  store i64 %var_2_4483, i64* %PC, align 8
; store i64 %var_2_4762, i64* %var_2_3, align 8
; Matched:%var_2_4734:  %var_2_4734 = inttoptr i64 %var_2_4732 to double*
; %var_2_4763 = inttoptr i64 %var_2_4761 to double*
; Matched:\<badref\>:  store double %var_2_2684, double* %var_2_2720, align 8
; store double %var_2_4727, double* %var_2_4763, align 8
; Matched:%var_2_4735:  %var_2_4735 = load i64, i64* %RBP, align 8
; %var_2_4764 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_4736:  %var_2_4736 = add i64 %var_2_4735, -28
; %var_2_4765 = add i64 %var_2_4764, -28
%var_2_4766 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_4738:  %var_2_4738 = add i64 %var_2_4737, 3
; %var_2_4767 = add i64 %var_2_4766, 3
; Matched:\<badref\>:  store i64 %var_2_4738, i64* %PC, align 8
; store i64 %var_2_4767, i64* %var_2_3, align 8
; Matched:%var_2_4739:  %var_2_4739 = inttoptr i64 %var_2_4736 to i32*
; %var_2_4768 = inttoptr i64 %var_2_4765 to i32*
; Matched:%var_2_4740:  %var_2_4740 = load i32, i32* %var_2_4739, align 4
; %var_2_4769 = load i32, i32* %var_2_4768, align 4
; Matched:%var_2_1283:  %var_2_1283 = add i32 %var_2_1282, 2
; %var_2_4770 = add i32 %var_2_4769, 2
; Matched:%var_2_4742:  %var_2_4742 = zext i32 %var_2_4741 to i64
; %var_2_4771 = zext i32 %var_2_4770 to i64
; Matched:\<badref\>:  store i64 %var_2_4742, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_4771, i64* %RAX.i2224, align 8
; Matched:%var_2_3659:  %var_2_3659 = icmp ugt i32 %var_2_3656, -3
; %var_2_4772 = icmp ugt i32 %var_2_4769, -3
; Matched:%var_2_4744:  %var_2_4744 = zext i1 %var_2_4743 to i8
; %var_2_4773 = zext i1 %var_2_4772 to i8
; Matched:\<badref\>:  store i8 %var_2_4744, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_4773, i8* %var_2_14, align 1
; Matched:%var_2_4745:  %var_2_4745 = and i32 %var_2_4741, 255
; %var_2_4774 = and i32 %var_2_4770, 255
; Matched:%var_2_4746:  %var_2_4746 = tail call i32 @llvm.ctpop.i32(i32 %var_2_4745) #14
; %var_2_4775 = tail call i32 @llvm.ctpop.i32(i32 %var_2_4774)
; Matched:%var_2_1289:  %var_2_1289 = trunc i32 %var_2_1288 to i8
; %var_2_4776 = trunc i32 %var_2_4775 to i8
; Matched:%var_2_4748:  %var_2_4748 = and i8 %var_2_4747, 1
; %var_2_4777 = and i8 %var_2_4776, 1
; Matched:%var_2_3665:  %var_2_3665 = xor i8 %var_2_3664, 1
; %var_2_4778 = xor i8 %var_2_4777, 1
; Matched:\<badref\>:  store i8 %var_2_2735, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_4778, i8* %var_2_21, align 1
; Matched:%var_2_4750:  %var_2_4750 = xor i32 %var_2_4741, %var_2_4740
; %var_2_4779 = xor i32 %var_2_4770, %var_2_4769
; Matched:%var_2_4751:  %var_2_4751 = lshr i32 %var_2_4750, 4
; %var_2_4780 = lshr i32 %var_2_4779, 4
; Matched:%var_2_4752:  %var_2_4752 = trunc i32 %var_2_4751 to i8
; %var_2_4781 = trunc i32 %var_2_4780 to i8
; Matched:%var_2_4753:  %var_2_4753 = and i8 %var_2_4752, 1
; %var_2_4782 = and i8 %var_2_4781, 1
; Matched:\<badref\>:  store i8 %var_2_1295, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_4782, i8* %var_2_27, align 1
; Matched:%var_2_4754:  %var_2_4754 = icmp eq i32 %var_2_4741, 0
; %var_2_4783 = icmp eq i32 %var_2_4770, 0
; Matched:%var_2_3671:  %var_2_3671 = zext i1 %var_2_3670 to i8
; %var_2_4784 = zext i1 %var_2_4783 to i8
; Matched:\<badref\>:  store i8 %var_2_2741, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_4784, i8* %var_2_30, align 1
; Matched:%var_2_4756:  %var_2_4756 = lshr i32 %var_2_4741, 31
; %var_2_4785 = lshr i32 %var_2_4770, 31
; Matched:%var_2_4757:  %var_2_4757 = trunc i32 %var_2_4756 to i8
; %var_2_4786 = trunc i32 %var_2_4785 to i8
; Matched:\<badref\>:  store i8 %var_2_4757, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_4786, i8* %var_2_33, align 1
; Matched:%var_2_4758:  %var_2_4758 = lshr i32 %var_2_4740, 31
; %var_2_4787 = lshr i32 %var_2_4769, 31
; Matched:%var_2_1301:  %var_2_1301 = xor i32 %var_2_1298, %var_2_1300
; %var_2_4788 = xor i32 %var_2_4785, %var_2_4787
; Matched:%var_2_4760:  %var_2_4760 = add nuw nsw i32 %var_2_4759, %var_2_4756
; %var_2_4789 = add nuw nsw i32 %var_2_4788, %var_2_4785
; Matched:%var_2_3677:  %var_2_3677 = icmp eq i32 %var_2_3676, 2
; %var_2_4790 = icmp eq i32 %var_2_4789, 2
; Matched:%var_2_2748:  %var_2_2748 = zext i1 %var_2_2747 to i8
; %var_2_4791 = zext i1 %var_2_4790 to i8
; Matched:\<badref\>:  store i8 %var_2_4762, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_4791, i8* %var_2_39, align 1
%var_2_4792 = add i64 %var_2_4766, 9
store i64 %var_2_4792, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_1283, i32* %var_2_1281, align 4
; store i32 %var_2_4770, i32* %var_2_4768, align 4
; Matched:%var_2_2750:  %var_2_2750 = load i64, i64* %PC, align 8
; %var_2_4793 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2751:  %var_2_2751 = add i64 %var_2_2750, -822
; %var_2_4794 = add i64 %var_2_4793, -822
; Matched:\<badref\>:  store i64 %var_2_2751, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_4794, i64* %var_2_3, align 8
  br label %block_.L_403cc0

block_.L_403ffb:                                  ; preds = %block_.L_403cc0
; Matched:%var_2_1529:  %var_2_1529 = load i64, i64* %RBP, align 8
; %var_2_4795 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1338:  %var_2_1338 = add i64 %var_2_1337, -60
; %var_2_4796 = add i64 %var_2_4795, -60
; Matched:%var_2_1531:  %var_2_1531 = add i64 %var_2_1678, 8
; %var_2_4797 = add i64 %var_2_3721, 8
; Matched:\<badref\>:  store i64 %var_2_1531, i64* %PC, align 8
; store i64 %var_2_4797, i64* %var_2_3, align 8
; Matched:%var_2_1341:  %var_2_1341 = inttoptr i64 %var_2_1338 to i32*
; %var_2_4798 = inttoptr i64 %var_2_4796 to i32*
; Matched:%var_2_1342:  %var_2_1342 = load i32, i32* %var_2_1341, align 4
; %var_2_4799 = load i32, i32* %var_2_4798, align 4
; Matched:%var_2_1343:  %var_2_1343 = zext i32 %var_2_1342 to i64
; %var_2_4800 = zext i32 %var_2_4799 to i64
; Matched:\<badref\>:  store i64 %var_2_1534, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_4800, i64* %RAX.i2224, align 8
; Matched:%var_2_1535:  %var_2_1535 = add i64 %var_2_1529, -44
; %var_2_4801 = add i64 %var_2_4795, -44
; Matched:%var_2_1536:  %var_2_1536 = add i64 %var_2_1678, 11
; %var_2_4802 = add i64 %var_2_3721, 11
; Matched:\<badref\>:  store i64 %var_2_1536, i64* %PC, align 8
; store i64 %var_2_4802, i64* %var_2_3, align 8
; Matched:%var_2_1537:  %var_2_1537 = inttoptr i64 %var_2_1535 to i32*
; %var_2_4803 = inttoptr i64 %var_2_4801 to i32*
; Matched:%var_2_1538:  %var_2_1538 = load i32, i32* %var_2_1537, align 4
; %var_2_4804 = load i32, i32* %var_2_4803, align 4
; Matched:%var_2_1539:  %var_2_1539 = add i32 %var_2_1538, %var_2_1533
; %var_2_4805 = add i32 %var_2_4804, %var_2_4799
; Matched:%var_2_1540:  %var_2_1540 = zext i32 %var_2_1539 to i64
; %var_2_4806 = zext i32 %var_2_4805 to i64
; Matched:\<badref\>:  store i64 %var_2_1540, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_4806, i64* %RAX.i2224, align 8
; Matched:%var_2_1541:  %var_2_1541 = icmp ult i32 %var_2_1539, %var_2_1533
; %var_2_4807 = icmp ult i32 %var_2_4805, %var_2_4799
; Matched:%var_2_1542:  %var_2_1542 = icmp ult i32 %var_2_1539, %var_2_1538
; %var_2_4808 = icmp ult i32 %var_2_4805, %var_2_4804
; Matched:%var_2_1543:  %var_2_1543 = or i1 %var_2_1541, %var_2_1542
; %var_2_4809 = or i1 %var_2_4807, %var_2_4808
; Matched:%var_2_1544:  %var_2_1544 = zext i1 %var_2_1543 to i8
; %var_2_4810 = zext i1 %var_2_4809 to i8
; Matched:\<badref\>:  store i8 %var_2_1544, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_4810, i8* %var_2_14, align 1
; Matched:%var_2_1545:  %var_2_1545 = and i32 %var_2_1539, 255
; %var_2_4811 = and i32 %var_2_4805, 255
; Matched:%var_2_1546:  %var_2_1546 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1545) #14
; %var_2_4812 = tail call i32 @llvm.ctpop.i32(i32 %var_2_4811)
; Matched:%var_2_1547:  %var_2_1547 = trunc i32 %var_2_1546 to i8
; %var_2_4813 = trunc i32 %var_2_4812 to i8
; Matched:%var_2_1548:  %var_2_1548 = and i8 %var_2_1547, 1
; %var_2_4814 = and i8 %var_2_4813, 1
; Matched:%var_2_1549:  %var_2_1549 = xor i8 %var_2_1548, 1
; %var_2_4815 = xor i8 %var_2_4814, 1
; Matched:\<badref\>:  store i8 %var_2_1549, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_4815, i8* %var_2_21, align 1
; Matched:%var_2_1550:  %var_2_1550 = xor i32 %var_2_1538, %var_2_1533
; %var_2_4816 = xor i32 %var_2_4804, %var_2_4799
; Matched:%var_2_1551:  %var_2_1551 = xor i32 %var_2_1550, %var_2_1539
; %var_2_4817 = xor i32 %var_2_4816, %var_2_4805
; Matched:%var_2_1552:  %var_2_1552 = lshr i32 %var_2_1551, 4
; %var_2_4818 = lshr i32 %var_2_4817, 4
; Matched:%var_2_1553:  %var_2_1553 = trunc i32 %var_2_1552 to i8
; %var_2_4819 = trunc i32 %var_2_4818 to i8
; Matched:%var_2_1554:  %var_2_1554 = and i8 %var_2_1553, 1
; %var_2_4820 = and i8 %var_2_4819, 1
; Matched:\<badref\>:  store i8 %var_2_1554, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_4820, i8* %var_2_27, align 1
; Matched:%var_2_1555:  %var_2_1555 = icmp eq i32 %var_2_1539, 0
; %var_2_4821 = icmp eq i32 %var_2_4805, 0
; Matched:%var_2_1556:  %var_2_1556 = zext i1 %var_2_1555 to i8
; %var_2_4822 = zext i1 %var_2_4821 to i8
; Matched:\<badref\>:  store i8 %var_2_1556, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_4822, i8* %var_2_30, align 1
; Matched:%var_2_1557:  %var_2_1557 = lshr i32 %var_2_1539, 31
; %var_2_4823 = lshr i32 %var_2_4805, 31
; Matched:%var_2_1558:  %var_2_1558 = trunc i32 %var_2_1557 to i8
; %var_2_4824 = trunc i32 %var_2_4823 to i8
; Matched:\<badref\>:  store i8 %var_2_1558, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_4824, i8* %var_2_33, align 1
; Matched:%var_2_1559:  %var_2_1559 = lshr i32 %var_2_1533, 31
; %var_2_4825 = lshr i32 %var_2_4799, 31
; Matched:%var_2_1560:  %var_2_1560 = lshr i32 %var_2_1538, 31
; %var_2_4826 = lshr i32 %var_2_4804, 31
; Matched:%var_2_1561:  %var_2_1561 = xor i32 %var_2_1557, %var_2_1559
; %var_2_4827 = xor i32 %var_2_4823, %var_2_4825
; Matched:%var_2_1562:  %var_2_1562 = xor i32 %var_2_1557, %var_2_1560
; %var_2_4828 = xor i32 %var_2_4823, %var_2_4826
; Matched:%var_2_1563:  %var_2_1563 = add nuw nsw i32 %var_2_1561, %var_2_1562
; %var_2_4829 = add nuw nsw i32 %var_2_4827, %var_2_4828
; Matched:%var_2_1564:  %var_2_1564 = icmp eq i32 %var_2_1563, 2
; %var_2_4830 = icmp eq i32 %var_2_4829, 2
; Matched:%var_2_1565:  %var_2_1565 = zext i1 %var_2_1564 to i8
; %var_2_4831 = zext i1 %var_2_4830 to i8
; Matched:\<badref\>:  store i8 %var_2_1565, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_4831, i8* %var_2_39, align 1
; Matched:%var_2_1566:  %var_2_1566 = add i64 %var_2_1678, 14
; %var_2_4832 = add i64 %var_2_3721, 14
; Matched:\<badref\>:  store i64 %var_2_1566, i64* %PC, align 8
; store i64 %var_2_4832, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_1539, i32* %var_2_1537, align 4
; store i32 %var_2_4805, i32* %var_2_4803, align 4
%var_2_4833 = load i64, i64* %var_2_3, align 8
%var_2_4834 = add i64 %var_2_4833, -1910
; Matched:\<badref\>:  store i64 %var_2_1568, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_4834, i64* %var_2_3, align 8
  br label %block_.L_403893

block_.L_40400e:                                  ; preds = %block_.L_403893
; Matched:%var_2_1569:  %var_2_1569 = load i64, i64* %RSP, align 8
; %var_2_4835 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_1570:  %var_2_1570 = add i64 %var_2_1569, 48
; %var_2_4836 = add i64 %var_2_4835, 48
; Matched:\<badref\>:  store i64 %var_2_1570, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_4836, i64* %var_2_6, align 8
; Matched:%var_2_1571:  %var_2_1571 = icmp ugt i64 %var_2_1569, -49
; %var_2_4837 = icmp ugt i64 %var_2_4835, -49
; Matched:%var_2_1572:  %var_2_1572 = zext i1 %var_2_1571 to i8
; %var_2_4838 = zext i1 %var_2_4837 to i8
; Matched:\<badref\>:  store i8 %var_2_1572, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_4838, i8* %var_2_14, align 1
; Matched:%var_2_1573:  %var_2_1573 = trunc i64 %var_2_1570 to i32
; %var_2_4839 = trunc i64 %var_2_4836 to i32
; Matched:%var_2_1574:  %var_2_1574 = and i32 %var_2_1573, 255
; %var_2_4840 = and i32 %var_2_4839, 255
; Matched:%var_2_1575:  %var_2_1575 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1574) #14
; %var_2_4841 = tail call i32 @llvm.ctpop.i32(i32 %var_2_4840)
; Matched:%var_2_1576:  %var_2_1576 = trunc i32 %var_2_1575 to i8
; %var_2_4842 = trunc i32 %var_2_4841 to i8
; Matched:%var_2_1577:  %var_2_1577 = and i8 %var_2_1576, 1
; %var_2_4843 = and i8 %var_2_4842, 1
; Matched:%var_2_1578:  %var_2_1578 = xor i8 %var_2_1577, 1
; %var_2_4844 = xor i8 %var_2_4843, 1
; Matched:\<badref\>:  store i8 %var_2_1578, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_4844, i8* %var_2_21, align 1
; Matched:%var_2_1579:  %var_2_1579 = xor i64 %var_2_1569, 16
; %var_2_4845 = xor i64 %var_2_4835, 16
; Matched:%var_2_1580:  %var_2_1580 = xor i64 %var_2_1579, %var_2_1570
; %var_2_4846 = xor i64 %var_2_4845, %var_2_4836
; Matched:%var_2_1581:  %var_2_1581 = lshr i64 %var_2_1580, 4
; %var_2_4847 = lshr i64 %var_2_4846, 4
; Matched:%var_2_1582:  %var_2_1582 = trunc i64 %var_2_1581 to i8
; %var_2_4848 = trunc i64 %var_2_4847 to i8
; Matched:%var_2_1583:  %var_2_1583 = and i8 %var_2_1582, 1
; %var_2_4849 = and i8 %var_2_4848, 1
; Matched:\<badref\>:  store i8 %var_2_1583, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_4849, i8* %var_2_27, align 1
; Matched:%var_2_1584:  %var_2_1584 = icmp eq i64 %var_2_1570, 0
; %var_2_4850 = icmp eq i64 %var_2_4836, 0
; Matched:%var_2_1585:  %var_2_1585 = zext i1 %var_2_1584 to i8
; %var_2_4851 = zext i1 %var_2_4850 to i8
; Matched:\<badref\>:  store i8 %var_2_1585, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_4851, i8* %var_2_30, align 1
; Matched:%var_2_1586:  %var_2_1586 = lshr i64 %var_2_1570, 63
; %var_2_4852 = lshr i64 %var_2_4836, 63
; Matched:%var_2_1587:  %var_2_1587 = trunc i64 %var_2_1586 to i8
; %var_2_4853 = trunc i64 %var_2_4852 to i8
; Matched:\<badref\>:  store i8 %var_2_1587, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_4853, i8* %var_2_33, align 1
; Matched:%var_2_1588:  %var_2_1588 = lshr i64 %var_2_1569, 63
; %var_2_4854 = lshr i64 %var_2_4835, 63
; Matched:%var_2_1589:  %var_2_1589 = xor i64 %var_2_1586, %var_2_1588
; %var_2_4855 = xor i64 %var_2_4852, %var_2_4854
; Matched:%var_2_1590:  %var_2_1590 = add nuw nsw i64 %var_2_1589, %var_2_1586
; %var_2_4856 = add nuw nsw i64 %var_2_4855, %var_2_4852
; Matched:%var_2_1591:  %var_2_1591 = icmp eq i64 %var_2_1590, 2
; %var_2_4857 = icmp eq i64 %var_2_4856, 2
; Matched:%var_2_1592:  %var_2_1592 = zext i1 %var_2_1591 to i8
; %var_2_4858 = zext i1 %var_2_4857 to i8
; Matched:\<badref\>:  store i8 %var_2_1592, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_4858, i8* %var_2_39, align 1
; Matched:%var_2_1593:  %var_2_1593 = add i64 %var_2_3719, 5
; %var_2_4859 = add i64 %var_2_2166, 5
; Matched:\<badref\>:  store i64 %var_2_1593, i64* %PC, align 8
; store i64 %var_2_4859, i64* %var_2_3, align 8
; Matched:%var_2_1594:  %var_2_1594 = add i64 %var_2_1569, 56
; %var_2_4860 = add i64 %var_2_4835, 56
; Matched:%var_2_1595:  %var_2_1595 = inttoptr i64 %var_2_1570 to i64*
; %var_2_4861 = inttoptr i64 %var_2_4836 to i64*
; Matched:%var_2_1596:  %var_2_1596 = load i64, i64* %var_2_1595, align 8
; %var_2_4862 = load i64, i64* %var_2_4861, align 8
; Matched:\<badref\>:  store i64 %var_2_1596, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_4862, i64* %RBP.i, align 8
; Matched:\<badref\>:  store i64 %var_2_1594, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_4860, i64* %var_2_6, align 8
; Matched:%var_2_1597:  %var_2_1597 = add i64 %var_2_3719, 6
; %var_2_4863 = add i64 %var_2_2166, 6
; Matched:\<badref\>:  store i64 %var_2_1597, i64* %PC, align 8
; store i64 %var_2_4863, i64* %var_2_3, align 8
; Matched:%var_2_1598:  %var_2_1598 = inttoptr i64 %var_2_1594 to i64*
; %var_2_4864 = inttoptr i64 %var_2_4860 to i64*
; Matched:%var_2_1599:  %var_2_1599 = load i64, i64* %var_2_1598, align 8
; %var_2_4865 = load i64, i64* %var_2_4864, align 8
; Matched:\<badref\>:  store i64 %var_2_1599, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_4865, i64* %var_2_3, align 8
; Matched:%var_2_1600:  %var_2_1600 = add i64 %var_2_1569, 64
; %var_2_4866 = add i64 %var_2_4835, 64
; Matched:\<badref\>:  store i64 %var_2_1600, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_4866, i64* %var_2_6, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subq__0x30___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -48
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 48
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
define %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__esi__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -8
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
define %struct.Memory* @routine_jge_.L_4035ad(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
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
define %struct.Memory* @routine_subsd___rcx__rdx_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %14 = fsub double %11, %13
  store double %14, double* %10, align 1
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0xa8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
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
define %struct.Memory* @routine_addsd_MINUS0xa0__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_MINUS0x98__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_MINUS0xa0__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x88__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
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
define %struct.Memory* @routine_subsd_MINUS0xb0__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -176
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
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
define %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
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
define %struct.Memory* @routine_addsd_MINUS0xa8__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -168
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
define %struct.Memory* @routine_addsd_MINUS0xb0__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -176
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
define %struct.Memory* @routine_subsd_MINUS0xa8__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -168
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
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
define %struct.Memory* @routine_jmpq_.L_403356(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x10__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
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
define %struct.Memory* @routine_movl_MINUS0x38__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_movl__ecx__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_addl_MINUS0x38__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
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
define %struct.Memory* @routine_jge_.L_40387d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_MINUS0xa0__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_MINUS0x80__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %12 = fsub double %9, %11
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
define %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_MINUS0x80__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -128
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
define %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_MINUS0x80__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
define %struct.Memory* @routine_movsd_MINUS0xb0__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_MINUS0x88__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -136
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
define %struct.Memory* @routine_movsd_MINUS0xa8__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
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
define %struct.Memory* @routine_subsd_MINUS0x90__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
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
define %struct.Memory* @routine_subsd_MINUS0x78__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -120
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
define %struct.Memory* @routine_addsd_MINUS0x78__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -120
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
define %struct.Memory* @routine_jmpq_.L_4035c1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_jge_.L_40400e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x849__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x849__rip__type* @G_0x849__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
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
define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_movsd___rcx__rdx_8____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %10, i64* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to double*
  store double 0.000000e+00, double* %13, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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
define %struct.Memory* @routine_movsd__xmm1__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
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
define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_movsd__xmm1__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm0___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = extractelement <2 x i32> %9, i32 0
  %14 = bitcast %union.VectorReg* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = extractelement <2 x i32> %9, i32 1
  %16 = getelementptr inbounds i8, i8* %5, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %12, i32 0
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x60__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
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
define %struct.Memory* @routine_mulsd_MINUS0x50__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
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
define %struct.Memory* @routine_subsd__xmm2___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
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
define %struct.Memory* @routine_mulsd_MINUS0x60__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x48__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
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
define %struct.Memory* @routine_subsd_MINUS0x50__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
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
define %struct.Memory* @routine_jge_.L_403c52(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subsd__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x78__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
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
define %struct.Memory* @routine_mulsd_MINUS0x80__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -128
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
define %struct.Memory* @routine_mulsd_MINUS0x80__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x78__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
define %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
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
define %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_403940(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x496__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x496__rip__type* @G_0x496__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_addl__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_movsd___rax__rdx_8____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %10, i64* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to double*
  store double 0.000000e+00, double* %13, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x3___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 3
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -4
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
define %struct.Memory* @routine_mulsd_MINUS0x58__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
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
define %struct.Memory* @routine_mulsd_MINUS0x58__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_addl_MINUS0x38__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
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
define %struct.Memory* @routine_addl__edx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i32, i32* %EDX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = icmp ult i32 %10, %9
  %13 = icmp ult i32 %10, %5
  %14 = or i1 %12, %13
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %10, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i64 %6, %4
  %24 = trunc i64 %23 to i32
  %25 = xor i32 %24, %10
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %10, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %10, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %9, 31
  %37 = lshr i32 %5, 31
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
define %struct.Memory* @routine_jge_.L_403ffb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl_MINUS0x8__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
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
define %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
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
define %struct.Memory* @routine_jmpq_.L_403cc0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_404000(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x2c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_403893(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x30___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 48
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -49
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
attributes #1 = { alwaysinline nounwind }
attributes #2 = { norecurse nounwind }
attributes #3 = { nounwind }
