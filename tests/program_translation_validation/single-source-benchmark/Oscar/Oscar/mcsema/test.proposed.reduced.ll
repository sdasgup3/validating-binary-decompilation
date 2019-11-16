; ModuleID = '/tmp/tmp58vhl7jp-query.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x114__rip__type = type <{ [4 x i8] }>
%G_0x1a9__rip__type = type <{ [4 x i8] }>
%G_0x1ad__rip__type = type <{ [4 x i8] }>
%G_0x610194_type = type <{ [4 x i8] }>
%G_0x610238_type = type <{ [8 x i8] }>
%G_0x6150c4_type = type <{ [4 x i8] }>
%G__0x60d740_type = type <{ [8 x i8] }>
%G__0x610194_type = type <{ [8 x i8] }>
%G__0x6150c4_type = type <{ [8 x i8] }>
%G__0x616b20_type = type <{ [8 x i8] }>
%G__0x616f40_type = type <{ [8 x i8] }>
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
@G_0x114__rip_ = global %G_0x114__rip__type zeroinitializer
@G_0x1a9__rip_ = global %G_0x1a9__rip__type zeroinitializer
@G_0x1ad__rip_ = global %G_0x1ad__rip__type zeroinitializer
@G_0x610194 = local_unnamed_addr global %G_0x610194_type zeroinitializer
@G_0x610238 = local_unnamed_addr global %G_0x610238_type zeroinitializer
@G_0x6150c4 = local_unnamed_addr global %G_0x6150c4_type zeroinitializer
@G__0x60d740 = global %G__0x60d740_type zeroinitializer
@G__0x610194 = global %G__0x610194_type zeroinitializer
@G__0x6150c4 = global %G__0x6150c4_type zeroinitializer
@G__0x616b20 = global %G__0x616b20_type zeroinitializer
@G__0x616f40 = global %G__0x616f40_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_4007a0.Exptab(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400750.Uniform11(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400a40.Fft(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400680.Printcomplex(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @Oscar(%struct.State* noalias, i64, %struct.Memory* noalias readnone) local_unnamed_addr #1 {
entry:
%var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
; Matched:%var_2_6:  %var_2_6 = load i64, i64* %RBP, align 8
; %var_2_4 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_7:  %var_2_7 = add i64 %1, 1
; %var_2_5 = add i64 %1, 1
; Matched:\<badref\>:  store i64 %var_2_7, i64* %PC, align 8
; store i64 %var_2_5, i64* %var_2_3, align 8
; Matched:  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
; %var_2_6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
; Matched:%var_2_8:  %var_2_8 = load i64, i64* %RSP, align 8, !tbaa !1261
; %var_2_7 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_9:  %var_2_9 = add i64 %var_2_8, -8
; %var_2_8 = add i64 %var_2_7, -8
; Matched:%var_2_10:  %var_2_10 = inttoptr i64 %var_2_9 to i64*
; %var_2_9 = inttoptr i64 %var_2_8 to i64*
; Matched:\<badref\>:  store i64 %var_2_6, i64* %var_2_10, align 8
; store i64 %var_2_4, i64* %var_2_9, align 8
%var_2_10 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_9, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_8, i64* %RBP.i, align 8
; Matched:%var_2_12:  %var_2_12 = add i64 %var_2_8, -24
; %var_2_11 = add i64 %var_2_7, -24
; Matched:%var_2_13:  %var_2_13 = icmp ult i64 %var_2_9, 16
; %var_2_12 = icmp ult i64 %var_2_8, 16
; Matched:%var_2_14:  %var_2_14 = zext i1 %var_2_13 to i8
; %var_2_13 = zext i1 %var_2_12 to i8
; Matched:%var_2_15:  %var_2_15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
; %var_2_14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
; Matched:\<badref\>:  store i8 %var_2_14, i8* %var_2_15, align 1, !tbaa !1265
; store i8 %var_2_13, i8* %var_2_14, align 1
; Matched:%var_2_16:  %var_2_16 = trunc i64 %var_2_12 to i32
; %var_2_15 = trunc i64 %var_2_11 to i32
; Matched:%var_2_17:  %var_2_17 = and i32 %var_2_16, 255
; %var_2_16 = and i32 %var_2_15, 255
; Matched:%var_2_18:  %var_2_18 = tail call i32 @llvm.ctpop.i32(i32 %var_2_17) #12
; %var_2_17 = tail call i32 @llvm.ctpop.i32(i32 %var_2_16)
; Matched:%var_2_19:  %var_2_19 = trunc i32 %var_2_18 to i8
; %var_2_18 = trunc i32 %var_2_17 to i8
; Matched:%var_2_20:  %var_2_20 = and i8 %var_2_19, 1
; %var_2_19 = and i8 %var_2_18, 1
; Matched:%var_2_21:  %var_2_21 = xor i8 %var_2_20, 1
; %var_2_20 = xor i8 %var_2_19, 1
; Matched:%var_2_22:  %var_2_22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
; %var_2_21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
; Matched:\<badref\>:  store i8 %var_2_21, i8* %var_2_22, align 1, !tbaa !1279
; store i8 %var_2_20, i8* %var_2_21, align 1
; Matched:%var_2_23:  %var_2_23 = xor i64 %var_2_9, 16
; %var_2_22 = xor i64 %var_2_8, 16
; Matched:%var_2_24:  %var_2_24 = xor i64 %var_2_23, %var_2_12
; %var_2_23 = xor i64 %var_2_22, %var_2_11
; Matched:%var_2_25:  %var_2_25 = lshr i64 %var_2_24, 4
; %var_2_24 = lshr i64 %var_2_23, 4
; Matched:%var_2_26:  %var_2_26 = trunc i64 %var_2_25 to i8
; %var_2_25 = trunc i64 %var_2_24 to i8
; Matched:%var_2_27:  %var_2_27 = and i8 %var_2_26, 1
; %var_2_26 = and i8 %var_2_25, 1
; Matched:%var_2_28:  %var_2_28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
; %var_2_27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
; Matched:\<badref\>:  store i8 %var_2_27, i8* %var_2_28, align 1, !tbaa !1280
; store i8 %var_2_26, i8* %var_2_27, align 1
; Matched:%var_2_29:  %var_2_29 = icmp eq i64 %var_2_12, 0
; %var_2_28 = icmp eq i64 %var_2_11, 0
; Matched:%var_2_30:  %var_2_30 = zext i1 %var_2_29 to i8
; %var_2_29 = zext i1 %var_2_28 to i8
; Matched:%var_2_31:  %var_2_31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
; %var_2_30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
; Matched:\<badref\>:  store i8 %var_2_30, i8* %var_2_31, align 1, !tbaa !1281
; store i8 %var_2_29, i8* %var_2_30, align 1
; Matched:%var_2_32:  %var_2_32 = lshr i64 %var_2_12, 63
; %var_2_31 = lshr i64 %var_2_11, 63
; Matched:%var_2_33:  %var_2_33 = trunc i64 %var_2_32 to i8
; %var_2_32 = trunc i64 %var_2_31 to i8
; Matched:%var_2_34:  %var_2_34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
; %var_2_33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
; Matched:\<badref\>:  store i8 %var_2_33, i8* %var_2_34, align 1, !tbaa !1282
; store i8 %var_2_32, i8* %var_2_33, align 1
; Matched:%var_2_35:  %var_2_35 = lshr i64 %var_2_9, 63
; %var_2_34 = lshr i64 %var_2_8, 63
; Matched:%var_2_36:  %var_2_36 = xor i64 %var_2_32, %var_2_35
; %var_2_35 = xor i64 %var_2_31, %var_2_34
; Matched:%var_2_37:  %var_2_37 = add nuw nsw i64 %var_2_36, %var_2_35
; %var_2_36 = add nuw nsw i64 %var_2_35, %var_2_34
; Matched:%var_2_38:  %var_2_38 = icmp eq i64 %var_2_37, 2
; %var_2_37 = icmp eq i64 %var_2_36, 2
; Matched:%var_2_39:  %var_2_39 = zext i1 %var_2_38 to i8
; %var_2_38 = zext i1 %var_2_37 to i8
; Matched:%var_2_40:  %var_2_40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; %var_2_39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; Matched:\<badref\>:  store i8 %var_2_39, i8* %var_2_40, align 1, !tbaa !1283
; store i8 %var_2_38, i8* %var_2_39, align 1
  %RDI.i104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  store i64 256, i64* %RDI.i104, align 8
; Matched:  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
; %RSI.i102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
; Matched:\<badref\>:  store i64 ptrtoint (%z_type* @z to i64), i64* %RSI, align 8, !tbaa !1261
; store i64 ptrtoint (%G__0x616b20_type* @G__0x616b20 to i64), i64* %RSI.i102, align 8
%var_2_40 = add i64 %var_2_10, -1361
; Matched:%var_2_42:  %var_2_42 = add i64 %var_2_11, 27
; %var_2_41 = add i64 %var_2_10, 27
; Matched:%var_2_43:  %var_2_43 = add i64 %var_2_8, -32
; %var_2_42 = add i64 %var_2_7, -32
; Matched:%var_2_44:  %var_2_44 = inttoptr i64 %var_2_43 to i64*
; %var_2_43 = inttoptr i64 %var_2_42 to i64*
; Matched:\<badref\>:  store i64 %var_2_42, i64* %var_2_44, align 8
; store i64 %var_2_41, i64* %var_2_43, align 8
; Matched:\<badref\>:  store i64 %var_2_43, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_42, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_41, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_40, i64* %var_2_3, align 8
%call2_400d07 = tail call %struct.Memory* @sub_4007a0.Exptab(%struct.State* %0, i64 %var_2_40, %struct.Memory* %2)
; Matched:%var_2_46:  %var_2_46 = load i64, i64* %PC, align 8
; %var_2_44 = load i64, i64* %var_2_3, align 8
  store i64 5767, i64* bitcast (%G_0x610238_type* @G_0x610238 to i64*), align 8
%var_2_45 = load i64, i64* %RBP.i, align 8
%var_2_46 = add i64 %var_2_45, -4
; Matched:%var_2_49:  %var_2_49 = add i64 %var_2_46, 19
; %var_2_47 = add i64 %var_2_44, 19
; Matched:\<badref\>:  store i64 %var_2_49, i64* %PC, align 8
; store i64 %var_2_47, i64* %var_2_3, align 8
%var_2_48 = inttoptr i64 %var_2_46 to i32*
store i32 1, i32* %var_2_48, align 4
; Matched:  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
; %RAX.i88 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
; Matched:  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
; %RCX.i86 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
%var_2_49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
%var_2_50 = bitcast [32 x %union.VectorReg]* %var_2_49 to i8*
%var_2_51 = bitcast [32 x %union.VectorReg]* %var_2_49 to i32*
%var_2_52 = getelementptr inbounds i8, i8* %var_2_50, i64 4
%var_2_53 = bitcast i8* %var_2_52 to float*
; Matched:%var_2_55:  %var_2_55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
; %var_2_54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_56:  %var_2_56 = bitcast i64* %var_2_55 to float*
; %var_2_55 = bitcast i64* %var_2_54 to float*
%var_2_56 = getelementptr inbounds i8, i8* %var_2_50, i64 12
%var_2_57 = bitcast i8* %var_2_56 to float*
%var_2_58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
%var_2_59 = bitcast %union.VectorReg* %var_2_58 to i8*
; Matched:%var_2_60:  %var_2_60 = bitcast %union.VectorReg* %var_2_4 to float*
; %var_2_60 = bitcast %union.VectorReg* %var_2_58 to float*
%var_2_61 = bitcast %union.VectorReg* %var_2_58 to i32*
%var_2_62 = getelementptr inbounds i8, i8* %var_2_59, i64 4
%var_2_63 = bitcast i8* %var_2_62 to float*
%var_2_64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
%var_2_65 = bitcast i64* %var_2_64 to float*
%var_2_66 = getelementptr inbounds i8, i8* %var_2_59, i64 12
%var_2_67 = bitcast i8* %var_2_66 to float*
%var_2_68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
; Matched:%var_2_68:  %var_2_68 = bitcast %union.VectorReg* %var_2_5 to i8*
; %var_2_69 = bitcast %union.VectorReg* %var_2_68 to i8*
%var_2_70 = bitcast %union.VectorReg* %var_2_58 to <2 x i32>*
%var_2_71 = bitcast i64* %var_2_64 to <2 x i32>*
; Matched:%var_2_71:  %var_2_71 = bitcast %union.VectorReg* %var_2_5 to i32*
; %var_2_72 = bitcast %union.VectorReg* %var_2_68 to i32*
; Matched:%var_2_72:  %var_2_72 = getelementptr inbounds i8, i8* %var_2_68, i64 4
; %var_2_73 = getelementptr inbounds i8, i8* %var_2_69, i64 4
; Matched:%var_2_73:  %var_2_73 = bitcast i8* %var_2_72 to i32*
; %var_2_74 = bitcast i8* %var_2_73 to i32*
; Matched:%var_2_74:  %var_2_74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
; %var_2_75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_75:  %var_2_75 = bitcast i64* %var_2_74 to i32*
; %var_2_76 = bitcast i64* %var_2_75 to i32*
; Matched:%var_2_76:  %var_2_76 = getelementptr inbounds i8, i8* %var_2_68, i64 12
; %var_2_77 = getelementptr inbounds i8, i8* %var_2_69, i64 12
; Matched:%var_2_77:  %var_2_77 = bitcast i8* %var_2_76 to i32*
; %var_2_78 = bitcast i8* %var_2_77 to i32*
%var_2_79 = bitcast %union.VectorReg* %var_2_68 to <2 x float>*
%var_2_80 = bitcast i64* %var_2_75 to <2 x i32>*
; Matched:%var_2_80:  %var_2_80 = bitcast %union.VectorReg* %var_2_5 to float*
; %var_2_81 = bitcast %union.VectorReg* %var_2_68 to float*
%var_2_82 = bitcast [32 x %union.VectorReg]* %var_2_49 to <2 x float>*
%var_2_83 = bitcast %union.VectorReg* %var_2_58 to <2 x float>*
; Matched:%var_2_83:  %var_2_83 = bitcast i8* %var_2_62 to i32*
; %var_2_84 = bitcast i8* %var_2_62 to i32*
; Matched:%var_2_84:  %var_2_84 = bitcast i64* %var_2_64 to i32*
; %var_2_85 = bitcast i64* %var_2_64 to i32*
; Matched:%var_2_85:  %var_2_85 = bitcast i8* %var_2_66 to i32*
; %var_2_86 = bitcast i8* %var_2_66 to i32*
; Matched:  %.pre = load i64, i64* %PC, align 8
; %.pre = load i64, i64* %var_2_3, align 8
  br label %block_.L_400d1f

block_.L_400d1f:                                  ; preds = %block_400d2c, %entry
; Matched:%var_2_86:  %var_2_86 = phi i64 [ %var_2_360, %block_400d2c ], [ %.pre, %block_400cf0 ]
; %var_2_87 = phi i64 [ %var_2_255, %block_400d2c ], [ %.pre, %entry ]
%var_2_88 = load i64, i64* %RBP.i, align 8
%var_2_89 = add i64 %var_2_88, -4
; Matched:%var_2_89:  %var_2_89 = add i64 %var_2_86, 7
; %var_2_90 = add i64 %var_2_87, 7
; Matched:\<badref\>:  store i64 %var_2_89, i64* %PC, align 8
; store i64 %var_2_90, i64* %var_2_3, align 8
%var_2_91 = inttoptr i64 %var_2_89 to i32*
%var_2_92 = load i32, i32* %var_2_91, align 4
%var_2_93 = add i32 %var_2_92, -256
; Matched:%var_2_93:  %var_2_93 = icmp ult i32 %var_2_91, 256
; %var_2_94 = icmp ult i32 %var_2_92, 256
; Matched:%var_2_94:  %var_2_94 = zext i1 %var_2_93 to i8
; %var_2_95 = zext i1 %var_2_94 to i8
; Matched:\<badref\>:  store i8 %var_2_94, i8* %var_2_15, align 1, !tbaa !1265
; store i8 %var_2_95, i8* %var_2_14, align 1
; Matched:%var_2_95:  %var_2_95 = and i32 %var_2_92, 255
; %var_2_96 = and i32 %var_2_93, 255
; Matched:%var_2_96:  %var_2_96 = tail call i32 @llvm.ctpop.i32(i32 %var_2_95) #12
; %var_2_97 = tail call i32 @llvm.ctpop.i32(i32 %var_2_96)
; Matched:%var_2_97:  %var_2_97 = trunc i32 %var_2_96 to i8
; %var_2_98 = trunc i32 %var_2_97 to i8
; Matched:%var_2_98:  %var_2_98 = and i8 %var_2_97, 1
; %var_2_99 = and i8 %var_2_98, 1
; Matched:%var_2_99:  %var_2_99 = xor i8 %var_2_98, 1
; %var_2_100 = xor i8 %var_2_99, 1
; Matched:\<badref\>:  store i8 %var_2_99, i8* %var_2_22, align 1, !tbaa !1279
; store i8 %var_2_100, i8* %var_2_21, align 1
; Matched:%var_2_100:  %var_2_100 = xor i32 %var_2_92, %var_2_91
; %var_2_101 = xor i32 %var_2_93, %var_2_92
; Matched:%var_2_101:  %var_2_101 = lshr i32 %var_2_100, 4
; %var_2_102 = lshr i32 %var_2_101, 4
; Matched:%var_2_102:  %var_2_102 = trunc i32 %var_2_101 to i8
; %var_2_103 = trunc i32 %var_2_102 to i8
; Matched:%var_2_103:  %var_2_103 = and i8 %var_2_102, 1
; %var_2_104 = and i8 %var_2_103, 1
; Matched:\<badref\>:  store i8 %var_2_103, i8* %var_2_28, align 1, !tbaa !1280
; store i8 %var_2_104, i8* %var_2_27, align 1
%var_2_105 = icmp eq i32 %var_2_93, 0
; Matched:%var_2_105:  %var_2_105 = zext i1 %var_2_104 to i8
; %var_2_106 = zext i1 %var_2_105 to i8
; Matched:\<badref\>:  store i8 %var_2_105, i8* %var_2_31, align 1, !tbaa !1281
; store i8 %var_2_106, i8* %var_2_30, align 1
%var_2_107 = lshr i32 %var_2_93, 31
%var_2_108 = trunc i32 %var_2_107 to i8
; Matched:\<badref\>:  store i8 %var_2_107, i8* %var_2_34, align 1, !tbaa !1282
; store i8 %var_2_108, i8* %var_2_33, align 1
%var_2_109 = lshr i32 %var_2_92, 31
%var_2_110 = xor i32 %var_2_107, %var_2_109
%var_2_111 = add nuw nsw i32 %var_2_110, %var_2_109
%var_2_112 = icmp eq i32 %var_2_111, 2
; Matched:%var_2_112:  %var_2_112 = zext i1 %var_2_111 to i8
; %var_2_113 = zext i1 %var_2_112 to i8
; Matched:\<badref\>:  store i8 %var_2_112, i8* %var_2_40, align 1, !tbaa !1283
; store i8 %var_2_113, i8* %var_2_39, align 1
%var_2_114 = icmp ne i8 %var_2_108, 0
%var_2_115 = xor i1 %var_2_114, %var_2_112
%.demorgan = or i1 %var_2_105, %var_2_115
; Matched:  %.v = select i1 %.demorgan, i64 13, i64 173
; %.v = select i1 %.demorgan, i64 13, i64 173
; Matched:%var_2_115:  %var_2_115 = add i64 %var_2_86, %.v
; %var_2_116 = add i64 %var_2_87, %.v
; Matched:\<badref\>:  store i64 %var_2_115, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_116, i64* %var_2_3, align 8
  br i1 %.demorgan, label %block_400d2c, label %block_.L_400dcc

block_400d2c:                                     ; preds = %block_.L_400d1f
%var_2_117 = add i64 %var_2_88, -8
; Matched:\<badref\>:  store i64 %var_2_240, i64* %RDI, align 8, !tbaa !1261
; store i64 %var_2_117, i64* %RDI.i104, align 8
; Matched:\<badref\>:  store i64 ptrtoint (%zi_type* @zi to i64), i64* %RSI, align 8, !tbaa !1261
; store i64 ptrtoint (%G__0x6150c4_type* @G__0x6150c4 to i64), i64* %RSI.i102, align 8
; Matched:%var_2_227:  %var_2_227 = load i64, i64* bitcast (%seed_type* @seed to i64*), align 8
; %var_2_118 = load i64, i64* bitcast (%G_0x610238_type* @G_0x610238 to i64*), align 8
; Matched:\<badref\>:  store i64 %var_2_227, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_118, i64* %RAX.i88, align 8
; Matched:%var_2_228:  %var_2_228 = trunc i64 %var_2_227 to i32
; %var_2_119 = trunc i64 %var_2_118 to i32
; Matched:%var_2_229:  %var_2_229 = and i64 %var_2_227, 4294967295
; %var_2_120 = and i64 %var_2_118, 4294967295
; Matched:\<badref\>:  store i64 %var_2_229, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_120, i64* %RCX.i86, align 8
; Matched:%var_2_230:  %var_2_230 = add i64 %var_2_115, 27
; %var_2_121 = add i64 %var_2_116, 27
; Matched:\<badref\>:  store i64 %var_2_230, i64* %PC, align 8
; store i64 %var_2_121, i64* %var_2_3, align 8
; Matched:%var_2_231:  %var_2_231 = inttoptr i64 %var_2_226 to i32*
; %var_2_122 = inttoptr i64 %var_2_117 to i32*
; Matched:\<badref\>:  store i32 %var_2_228, i32* %var_2_231, align 4
; store i32 %var_2_119, i32* %var_2_122, align 4
; Matched:%var_2_232:  %var_2_232 = load i64, i64* %PC, align 8
; %var_2_123 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_233:  %var_2_233 = add i64 %var_2_232, -1527
; %var_2_124 = add i64 %var_2_123, -1527
; Matched:%var_2_234:  %var_2_234 = add i64 %var_2_232, 5
; %var_2_125 = add i64 %var_2_123, 5
; Matched:%var_2_235:  %var_2_235 = load i64, i64* %RSP, align 8, !tbaa !1261
; %var_2_126 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_158:  %var_2_158 = add i64 %var_2_157, -8
; %var_2_127 = add i64 %var_2_126, -8
; Matched:%var_2_237:  %var_2_237 = inttoptr i64 %var_2_236 to i64*
; %var_2_128 = inttoptr i64 %var_2_127 to i64*
; Matched:\<badref\>:  store i64 %var_2_234, i64* %var_2_237, align 8
; store i64 %var_2_125, i64* %var_2_128, align 8
; Matched:\<badref\>:  store i64 %var_2_236, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_127, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_233, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_124, i64* %var_2_3, align 8
; Matched:%var_2_238:  %var_2_238 = tail call %struct.Memory* @sub_400750_Uniform11_renamed_(%struct.State* nonnull %0, i64 %var_2_233, %struct.Memory* %var_2_45)
; %call2_400d47 = tail call %struct.Memory* @sub_400750.Uniform11(%struct.State* nonnull %0, i64 %var_2_124, %struct.Memory* %call2_400d07)
%var_2_129 = load i64, i64* %RBP.i, align 8
%var_2_130 = add i64 %var_2_129, -8
; Matched:%var_2_241:  %var_2_241 = load i64, i64* %PC, align 8
; %var_2_131 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_226, i64* %RDI, align 8, !tbaa !1261
; store i64 %var_2_130, i64* %RDI.i104, align 8
; Matched:\<badref\>:  store i64 ptrtoint (%e_type* @e to i64), i64* %RSI, align 8, !tbaa !1261
; store i64 ptrtoint (%G__0x610194_type* @G__0x610194 to i64), i64* %RSI.i102, align 8
; Matched:%var_2_242:  %var_2_242 = add i64 %var_2_241, 18
; %var_2_132 = add i64 %var_2_131, 18
; Matched:\<badref\>:  store i64 %var_2_242, i64* %PC, align 8
; store i64 %var_2_132, i64* %var_2_3, align 8
%var_2_133 = inttoptr i64 %var_2_130 to i32*
%var_2_134 = load i32, i32* %var_2_133, align 4
%var_2_135 = sext i32 %var_2_134 to i64
; Matched:\<badref\>:  store i64 %var_2_260, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_135, i64* %RAX.i88, align 8
store i64 %var_2_135, i64* bitcast (%G_0x610238_type* @G_0x610238 to i64*), align 8
; Matched:%var_2_246:  %var_2_246 = add i64 %var_2_241, -1532
; %var_2_136 = add i64 %var_2_131, -1532
; Matched:%var_2_247:  %var_2_247 = add i64 %var_2_241, 31
; %var_2_137 = add i64 %var_2_131, 31
; Matched:%var_2_157:  %var_2_157 = load i64, i64* %RSP, align 8, !tbaa !1261
; %var_2_138 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_236:  %var_2_236 = add i64 %var_2_235, -8
; %var_2_139 = add i64 %var_2_138, -8
; Matched:%var_2_250:  %var_2_250 = inttoptr i64 %var_2_249 to i64*
; %var_2_140 = inttoptr i64 %var_2_139 to i64*
; Matched:\<badref\>:  store i64 %var_2_247, i64* %var_2_250, align 8
; store i64 %var_2_137, i64* %var_2_140, align 8
; Matched:\<badref\>:  store i64 %var_2_158, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_139, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_246, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_136, i64* %var_2_3, align 8
; Matched:%var_2_251:  %var_2_251 = tail call %struct.Memory* @sub_400750_Uniform11_renamed_(%struct.State* nonnull %0, i64 %var_2_246, %struct.Memory* %var_2_45)
; %call2_400d66 = tail call %struct.Memory* @sub_400750.Uniform11(%struct.State* nonnull %0, i64 %var_2_136, %struct.Memory* %call2_400d07)
%var_2_141 = load i64, i64* %var_2_3, align 8
%var_2_142 = add i64 %var_2_141, ptrtoint (%G_0x1ad__rip__type* @G_0x1ad__rip_ to i64)
%var_2_143 = add i64 %var_2_141, 8
store i64 %var_2_143, i64* %var_2_3, align 8
%var_2_144 = inttoptr i64 %var_2_142 to i32*
%var_2_145 = load i32, i32* %var_2_144, align 4
store i32 %var_2_145, i32* %var_2_51, align 1
store float 0.000000e+00, float* %var_2_53, align 1
; Matched:\<badref\>:  store float 0.000000e+00, float* %var_2_56, align 1, !tbaa !1284
; store float 0.000000e+00, float* %var_2_55, align 1
store float 0.000000e+00, float* %var_2_57, align 1
%var_2_146 = add i64 %var_2_141, add (i64 ptrtoint (%G_0x1a9__rip__type* @G_0x1a9__rip_ to i64), i64 8)
%var_2_147 = add i64 %var_2_141, 16
store i64 %var_2_147, i64* %var_2_3, align 8
%var_2_148 = inttoptr i64 %var_2_146 to i32*
%var_2_149 = load i32, i32* %var_2_148, align 4
store i32 %var_2_149, i32* %var_2_61, align 1
store float 0.000000e+00, float* %var_2_63, align 1
store float 0.000000e+00, float* %var_2_65, align 1
store float 0.000000e+00, float* %var_2_67, align 1
%var_2_150 = load i64, i64* %RBP.i, align 8
%var_2_151 = add i64 %var_2_150, -8
; Matched:%var_2_257:  %var_2_257 = add i64 %var_2_252, 20
; %var_2_152 = add i64 %var_2_141, 20
; Matched:\<badref\>:  store i64 %var_2_257, i64* %PC, align 8
; store i64 %var_2_152, i64* %var_2_3, align 8
%var_2_153 = inttoptr i64 %var_2_151 to i32*
%var_2_154 = load i32, i32* %var_2_153, align 4
%var_2_155 = sext i32 %var_2_154 to i64
; Matched:\<badref\>:  store i64 %var_2_245, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_155, i64* %RAX.i88, align 8
store i64 %var_2_155, i64* bitcast (%G_0x610238_type* @G_0x610238 to i64*), align 8
%var_2_156 = load <2 x i32>, <2 x i32>* %var_2_70, align 1
%var_2_157 = load <2 x i32>, <2 x i32>* %var_2_71, align 1
%var_2_158 = extractelement <2 x i32> %var_2_156, i32 0
; Matched:\<badref\>:  store i32 %var_2_263, i32* %var_2_71, align 1, !tbaa !1284
; store i32 %var_2_158, i32* %var_2_72, align 1
%var_2_159 = extractelement <2 x i32> %var_2_156, i32 1
; Matched:\<badref\>:  store i32 %var_2_264, i32* %var_2_73, align 1, !tbaa !1284
; store i32 %var_2_159, i32* %var_2_74, align 1
%var_2_160 = extractelement <2 x i32> %var_2_157, i32 0
; Matched:\<badref\>:  store i32 %var_2_265, i32* %var_2_75, align 1, !tbaa !1284
; store i32 %var_2_160, i32* %var_2_76, align 1
%var_2_161 = extractelement <2 x i32> %var_2_157, i32 1
; Matched:\<badref\>:  store i32 %var_2_266, i32* %var_2_77, align 1, !tbaa !1284
; store i32 %var_2_161, i32* %var_2_78, align 1
%var_2_162 = load <2 x float>, <2 x float>* %var_2_79, align 1
%var_2_163 = load <2 x i32>, <2 x i32>* %var_2_80, align 1
; Matched:%var_2_269:  %var_2_269 = load float, float* bitcast (%zr_type* @zr to float*), align 8
; %var_2_164 = load float, float* bitcast (%G_0x6150c4_type* @G_0x6150c4 to float*), align 8
%var_2_165 = extractelement <2 x float> %var_2_162, i32 0
; Matched:%var_2_271:  %var_2_271 = fmul float %var_2_270, %var_2_269
; %var_2_166 = fmul float %var_2_165, %var_2_164
; Matched:\<badref\>:  store float %var_2_271, float* %var_2_80, align 1, !tbaa !1284
; store float %var_2_166, float* %var_2_81, align 1
%var_2_167 = bitcast <2 x float> %var_2_162 to <2 x i32>
%var_2_168 = extractelement <2 x i32> %var_2_167, i32 1
; Matched:\<badref\>:  store i32 %var_2_283, i32* %var_2_73, align 1, !tbaa !1284
; store i32 %var_2_168, i32* %var_2_74, align 1
%var_2_169 = extractelement <2 x i32> %var_2_163, i32 0
; Matched:\<badref\>:  store i32 %var_2_284, i32* %var_2_75, align 1, !tbaa !1284
; store i32 %var_2_169, i32* %var_2_76, align 1
%var_2_170 = extractelement <2 x i32> %var_2_163, i32 1
; Matched:\<badref\>:  store i32 %var_2_275, i32* %var_2_77, align 1, !tbaa !1284
; store i32 %var_2_170, i32* %var_2_78, align 1
%var_2_171 = load <2 x float>, <2 x float>* %var_2_79, align 1
%var_2_172 = load <2 x i32>, <2 x i32>* %var_2_80, align 1
%var_2_173 = load <2 x float>, <2 x float>* %var_2_82, align 1
%var_2_174 = extractelement <2 x float> %var_2_171, i32 0
%var_2_175 = extractelement <2 x float> %var_2_173, i32 0
; Matched:%var_2_281:  %var_2_281 = fsub float %var_2_279, %var_2_280
; %var_2_176 = fsub float %var_2_174, %var_2_175
; Matched:\<badref\>:  store float %var_2_281, float* %var_2_80, align 1, !tbaa !1284
; store float %var_2_176, float* %var_2_81, align 1
%var_2_177 = bitcast <2 x float> %var_2_171 to <2 x i32>
%var_2_178 = extractelement <2 x i32> %var_2_177, i32 1
; Matched:\<badref\>:  store i32 %var_2_273, i32* %var_2_73, align 1, !tbaa !1284
; store i32 %var_2_178, i32* %var_2_74, align 1
%var_2_179 = extractelement <2 x i32> %var_2_172, i32 0
; Matched:\<badref\>:  store i32 %var_2_274, i32* %var_2_75, align 1, !tbaa !1284
; store i32 %var_2_179, i32* %var_2_76, align 1
%var_2_180 = extractelement <2 x i32> %var_2_172, i32 1
; Matched:\<badref\>:  store i32 %var_2_285, i32* %var_2_77, align 1, !tbaa !1284
; store i32 %var_2_180, i32* %var_2_78, align 1
%var_2_181 = add i64 %var_2_150, -4
; Matched:%var_2_287:  %var_2_287 = add i64 %var_2_252, 48
; %var_2_182 = add i64 %var_2_141, 48
; Matched:\<badref\>:  store i64 %var_2_287, i64* %PC, align 8
; store i64 %var_2_182, i64* %var_2_3, align 8
%var_2_183 = inttoptr i64 %var_2_181 to i32*
%var_2_184 = load i32, i32* %var_2_183, align 4
%var_2_185 = sext i32 %var_2_184 to i64
; Matched:\<badref\>:  store i64 %var_2_290, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_185, i64* %RAX.i88, align 8
%var_2_186 = shl nsw i64 %var_2_185, 3
%var_2_187 = add nsw i64 %var_2_186, 6346560
; Matched:%var_2_293:  %var_2_293 = add i64 %var_2_252, 57
; %var_2_188 = add i64 %var_2_141, 57
; Matched:\<badref\>:  store i64 %var_2_293, i64* %PC, align 8
; store i64 %var_2_188, i64* %var_2_3, align 8
%var_2_189 = load <2 x float>, <2 x float>* %var_2_79, align 1
%var_2_190 = extractelement <2 x float> %var_2_189, i32 0
%var_2_191 = inttoptr i64 %var_2_187 to float*
store float %var_2_190, float* %var_2_191, align 8
; Matched:%var_2_297:  %var_2_297 = load i64, i64* %PC, align 8
; %var_2_192 = load i64, i64* %var_2_3, align 8
%var_2_193 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_194 = load <2 x i32>, <2 x i32>* %var_2_71, align 1
; Matched:%var_2_300:  %var_2_300 = load float, float* bitcast (%zi_type* @zi to float*), align 8
; %var_2_195 = load float, float* bitcast (%G_0x610194_type* @G_0x610194 to float*), align 8
%var_2_196 = extractelement <2 x float> %var_2_193, i32 0
; Matched:%var_2_302:  %var_2_302 = fmul float %var_2_301, %var_2_300
; %var_2_197 = fmul float %var_2_196, %var_2_195
; Matched:\<badref\>:  store float %var_2_302, float* %var_2_60, align 1, !tbaa !1284
; store float %var_2_197, float* %var_2_60, align 1
%var_2_198 = bitcast <2 x float> %var_2_193 to <2 x i32>
%var_2_199 = extractelement <2 x i32> %var_2_198, i32 1
; Matched:\<badref\>:  store i32 %var_2_304, i32* %var_2_83, align 1, !tbaa !1284
; store i32 %var_2_199, i32* %var_2_84, align 1
%var_2_200 = extractelement <2 x i32> %var_2_194, i32 0
; Matched:\<badref\>:  store i32 %var_2_305, i32* %var_2_84, align 1, !tbaa !1284
; store i32 %var_2_200, i32* %var_2_85, align 1
%var_2_201 = extractelement <2 x i32> %var_2_194, i32 1
; Matched:\<badref\>:  store i32 %var_2_316, i32* %var_2_85, align 1, !tbaa !1284
; store i32 %var_2_201, i32* %var_2_86, align 1
%var_2_202 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_203 = load <2 x i32>, <2 x i32>* %var_2_71, align 1
%var_2_204 = load <2 x float>, <2 x float>* %var_2_82, align 1
%var_2_205 = extractelement <2 x float> %var_2_202, i32 0
%var_2_206 = extractelement <2 x float> %var_2_204, i32 0
; Matched:%var_2_312:  %var_2_312 = fsub float %var_2_310, %var_2_311
; %var_2_207 = fsub float %var_2_205, %var_2_206
; Matched:\<badref\>:  store float %var_2_312, float* %var_2_60, align 1, !tbaa !1284
; store float %var_2_207, float* %var_2_60, align 1
%var_2_208 = bitcast <2 x float> %var_2_202 to <2 x i32>
%var_2_209 = extractelement <2 x i32> %var_2_208, i32 1
; Matched:\<badref\>:  store i32 %var_2_314, i32* %var_2_83, align 1, !tbaa !1284
; store i32 %var_2_209, i32* %var_2_84, align 1
%var_2_210 = extractelement <2 x i32> %var_2_203, i32 0
; Matched:\<badref\>:  store i32 %var_2_315, i32* %var_2_84, align 1, !tbaa !1284
; store i32 %var_2_210, i32* %var_2_85, align 1
%var_2_211 = extractelement <2 x i32> %var_2_203, i32 1
; Matched:\<badref\>:  store i32 %var_2_306, i32* %var_2_85, align 1, !tbaa !1284
; store i32 %var_2_211, i32* %var_2_86, align 1
%var_2_212 = load i64, i64* %RBP.i, align 8
%var_2_213 = add i64 %var_2_212, -4
; Matched:%var_2_319:  %var_2_319 = add i64 %var_2_297, 17
; %var_2_214 = add i64 %var_2_192, 17
; Matched:\<badref\>:  store i64 %var_2_319, i64* %PC, align 8
; store i64 %var_2_214, i64* %var_2_3, align 8
%var_2_215 = inttoptr i64 %var_2_213 to i32*
%var_2_216 = load i32, i32* %var_2_215, align 4
%var_2_217 = sext i32 %var_2_216 to i64
; Matched:\<badref\>:  store i64 %var_2_322, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_217, i64* %RAX.i88, align 8
%var_2_218 = shl nsw i64 %var_2_217, 3
%var_2_219 = add nsw i64 %var_2_218, 6346564
; Matched:%var_2_325:  %var_2_325 = add i64 %var_2_297, 26
; %var_2_220 = add i64 %var_2_192, 26
; Matched:\<badref\>:  store i64 %var_2_325, i64* %PC, align 8
; store i64 %var_2_220, i64* %var_2_3, align 8
%var_2_221 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_222 = extractelement <2 x float> %var_2_221, i32 0
%var_2_223 = inttoptr i64 %var_2_219 to float*
store float %var_2_222, float* %var_2_223, align 4
; Matched:%var_2_329:  %var_2_329 = load i64, i64* %RBP, align 8
; %var_2_224 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_124:  %var_2_124 = add i64 %var_2_123, -4
; %var_2_225 = add i64 %var_2_224, -4
; Matched:%var_2_125:  %var_2_125 = load i64, i64* %PC, align 8
; %var_2_226 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_332:  %var_2_332 = add i64 %var_2_331, 3
; %var_2_227 = add i64 %var_2_226, 3
; Matched:\<badref\>:  store i64 %var_2_332, i64* %PC, align 8
; store i64 %var_2_227, i64* %var_2_3, align 8
; Matched:%var_2_127:  %var_2_127 = inttoptr i64 %var_2_124 to i32*
; %var_2_228 = inttoptr i64 %var_2_225 to i32*
; Matched:%var_2_128:  %var_2_128 = load i32, i32* %var_2_127, align 4
; %var_2_229 = load i32, i32* %var_2_228, align 4
; Matched:%var_2_129:  %var_2_129 = add i32 %var_2_128, 1
; %var_2_230 = add i32 %var_2_229, 1
; Matched:%var_2_336:  %var_2_336 = zext i32 %var_2_335 to i64
; %var_2_231 = zext i32 %var_2_230 to i64
; Matched:\<badref\>:  store i64 %var_2_130, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_231, i64* %RAX.i88, align 8
; Matched:%var_2_131:  %var_2_131 = icmp eq i32 %var_2_128, -1
; %var_2_232 = icmp eq i32 %var_2_229, -1
; Matched:%var_2_338:  %var_2_338 = icmp eq i32 %var_2_335, 0
; %var_2_233 = icmp eq i32 %var_2_230, 0
; Matched:%var_2_339:  %var_2_339 = or i1 %var_2_337, %var_2_338
; %var_2_234 = or i1 %var_2_232, %var_2_233
; Matched:%var_2_134:  %var_2_134 = zext i1 %var_2_133 to i8
; %var_2_235 = zext i1 %var_2_234 to i8
; Matched:\<badref\>:  store i8 %var_2_134, i8* %var_2_15, align 1, !tbaa !1265
; store i8 %var_2_235, i8* %var_2_14, align 1
; Matched:%var_2_135:  %var_2_135 = and i32 %var_2_129, 255
; %var_2_236 = and i32 %var_2_230, 255
; Matched:%var_2_342:  %var_2_342 = tail call i32 @llvm.ctpop.i32(i32 %var_2_341) #12
; %var_2_237 = tail call i32 @llvm.ctpop.i32(i32 %var_2_236)
; Matched:%var_2_137:  %var_2_137 = trunc i32 %var_2_136 to i8
; %var_2_238 = trunc i32 %var_2_237 to i8
; Matched:%var_2_138:  %var_2_138 = and i8 %var_2_137, 1
; %var_2_239 = and i8 %var_2_238, 1
; Matched:%var_2_345:  %var_2_345 = xor i8 %var_2_344, 1
; %var_2_240 = xor i8 %var_2_239, 1
; Matched:\<badref\>:  store i8 %var_2_345, i8* %var_2_22, align 1, !tbaa !1279
; store i8 %var_2_240, i8* %var_2_21, align 1
; Matched:%var_2_140:  %var_2_140 = xor i32 %var_2_129, %var_2_128
; %var_2_241 = xor i32 %var_2_230, %var_2_229
; Matched:%var_2_141:  %var_2_141 = lshr i32 %var_2_140, 4
; %var_2_242 = lshr i32 %var_2_241, 4
; Matched:%var_2_142:  %var_2_142 = trunc i32 %var_2_141 to i8
; %var_2_243 = trunc i32 %var_2_242 to i8
; Matched:%var_2_349:  %var_2_349 = and i8 %var_2_348, 1
; %var_2_244 = and i8 %var_2_243, 1
; Matched:\<badref\>:  store i8 %var_2_143, i8* %var_2_28, align 1, !tbaa !1280
; store i8 %var_2_244, i8* %var_2_27, align 1
; Matched:%var_2_144:  %var_2_144 = zext i1 %var_2_132 to i8
; %var_2_245 = zext i1 %var_2_233 to i8
; Matched:\<badref\>:  store i8 %var_2_350, i8* %var_2_31, align 1, !tbaa !1281
; store i8 %var_2_245, i8* %var_2_30, align 1
; Matched:%var_2_351:  %var_2_351 = lshr i32 %var_2_335, 31
; %var_2_246 = lshr i32 %var_2_230, 31
; Matched:%var_2_146:  %var_2_146 = trunc i32 %var_2_145 to i8
; %var_2_247 = trunc i32 %var_2_246 to i8
; Matched:\<badref\>:  store i8 %var_2_146, i8* %var_2_34, align 1, !tbaa !1282
; store i8 %var_2_247, i8* %var_2_33, align 1
; Matched:%var_2_147:  %var_2_147 = lshr i32 %var_2_128, 31
; %var_2_248 = lshr i32 %var_2_229, 31
; Matched:%var_2_354:  %var_2_354 = xor i32 %var_2_351, %var_2_353
; %var_2_249 = xor i32 %var_2_246, %var_2_248
; Matched:%var_2_149:  %var_2_149 = add nuw nsw i32 %var_2_148, %var_2_145
; %var_2_250 = add nuw nsw i32 %var_2_249, %var_2_246
; Matched:%var_2_150:  %var_2_150 = icmp eq i32 %var_2_149, 2
; %var_2_251 = icmp eq i32 %var_2_250, 2
; Matched:%var_2_357:  %var_2_357 = zext i1 %var_2_356 to i8
; %var_2_252 = zext i1 %var_2_251 to i8
; Matched:\<badref\>:  store i8 %var_2_357, i8* %var_2_40, align 1, !tbaa !1283
; store i8 %var_2_252, i8* %var_2_39, align 1
; Matched:%var_2_152:  %var_2_152 = add i64 %var_2_125, 9
; %var_2_253 = add i64 %var_2_226, 9
; Matched:\<badref\>:  store i64 %var_2_152, i64* %PC, align 8
; store i64 %var_2_253, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_129, i32* %var_2_127, align 4
; store i32 %var_2_230, i32* %var_2_228, align 4
; Matched:%var_2_359:  %var_2_359 = load i64, i64* %PC, align 8
; %var_2_254 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_360:  %var_2_360 = add i64 %var_2_359, -168
; %var_2_255 = add i64 %var_2_254, -168
; Matched:\<badref\>:  store i64 %var_2_360, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_255, i64* %var_2_3, align 8
  br label %block_.L_400d1f

block_.L_400dcc:                                  ; preds = %block_.L_400d1f
; Matched:%var_2_225:  %var_2_225 = add i64 %var_2_115, 7
; %var_2_256 = add i64 %var_2_116, 7
; Matched:\<badref\>:  store i64 %var_2_225, i64* %PC, align 8
; store i64 %var_2_256, i64* %var_2_3, align 8
store i32 1, i32* %var_2_91, align 4
; Matched:  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
; %RDX.i22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RCX.i20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
%var_2_257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
%var_2_258 = bitcast %union.VectorReg* %var_2_257 to i8*
%var_2_259 = bitcast %union.VectorReg* %var_2_257 to i32*
%var_2_260 = getelementptr inbounds i8, i8* %var_2_258, i64 4
%var_2_261 = bitcast i8* %var_2_260 to float*
%var_2_262 = getelementptr inbounds i8, i8* %var_2_258, i64 12
%var_2_263 = bitcast i8* %var_2_262 to float*
%.pre6 = load i64, i64* %var_2_3, align 8
  br label %block_.L_400dd3

block_.L_400dd3:                                  ; preds = %block_400ddd, %block_.L_400dcc
%var_2_264 = phi i64 [ %var_2_332, %block_400ddd ], [ %.pre6, %block_.L_400dcc ]
%var_2_265 = load i64, i64* %RBP.i, align 8
%var_2_266 = add i64 %var_2_265, -4
; Matched:%var_2_197:  %var_2_197 = add i64 %var_2_194, 4
; %var_2_267 = add i64 %var_2_264, 4
; Matched:\<badref\>:  store i64 %var_2_197, i64* %PC, align 8
; store i64 %var_2_267, i64* %var_2_3, align 8
%var_2_268 = inttoptr i64 %var_2_266 to i32*
%var_2_269 = load i32, i32* %var_2_268, align 4
%var_2_270 = add i32 %var_2_269, -20
; Matched:%var_2_201:  %var_2_201 = icmp ult i32 %var_2_199, 20
; %var_2_271 = icmp ult i32 %var_2_269, 20
; Matched:%var_2_202:  %var_2_202 = zext i1 %var_2_201 to i8
; %var_2_272 = zext i1 %var_2_271 to i8
; Matched:\<badref\>:  store i8 %var_2_202, i8* %var_2_15, align 1, !tbaa !1265
; store i8 %var_2_272, i8* %var_2_14, align 1
; Matched:%var_2_203:  %var_2_203 = and i32 %var_2_200, 255
; %var_2_273 = and i32 %var_2_270, 255
; Matched:%var_2_204:  %var_2_204 = tail call i32 @llvm.ctpop.i32(i32 %var_2_203) #12
; %var_2_274 = tail call i32 @llvm.ctpop.i32(i32 %var_2_273)
; Matched:%var_2_205:  %var_2_205 = trunc i32 %var_2_204 to i8
; %var_2_275 = trunc i32 %var_2_274 to i8
; Matched:%var_2_206:  %var_2_206 = and i8 %var_2_205, 1
; %var_2_276 = and i8 %var_2_275, 1
; Matched:%var_2_207:  %var_2_207 = xor i8 %var_2_206, 1
; %var_2_277 = xor i8 %var_2_276, 1
; Matched:\<badref\>:  store i8 %var_2_207, i8* %var_2_22, align 1, !tbaa !1279
; store i8 %var_2_277, i8* %var_2_21, align 1
; Matched:%var_2_208:  %var_2_208 = xor i32 %var_2_199, 16
; %var_2_278 = xor i32 %var_2_269, 16
; Matched:%var_2_209:  %var_2_209 = xor i32 %var_2_208, %var_2_200
; %var_2_279 = xor i32 %var_2_278, %var_2_270
; Matched:%var_2_210:  %var_2_210 = lshr i32 %var_2_209, 4
; %var_2_280 = lshr i32 %var_2_279, 4
; Matched:%var_2_211:  %var_2_211 = trunc i32 %var_2_210 to i8
; %var_2_281 = trunc i32 %var_2_280 to i8
; Matched:%var_2_212:  %var_2_212 = and i8 %var_2_211, 1
; %var_2_282 = and i8 %var_2_281, 1
; Matched:\<badref\>:  store i8 %var_2_212, i8* %var_2_28, align 1, !tbaa !1280
; store i8 %var_2_282, i8* %var_2_27, align 1
%var_2_283 = icmp eq i32 %var_2_270, 0
; Matched:%var_2_214:  %var_2_214 = zext i1 %var_2_213 to i8
; %var_2_284 = zext i1 %var_2_283 to i8
; Matched:\<badref\>:  store i8 %var_2_214, i8* %var_2_31, align 1, !tbaa !1281
; store i8 %var_2_284, i8* %var_2_30, align 1
%var_2_285 = lshr i32 %var_2_270, 31
%var_2_286 = trunc i32 %var_2_285 to i8
; Matched:\<badref\>:  store i8 %var_2_216, i8* %var_2_34, align 1, !tbaa !1282
; store i8 %var_2_286, i8* %var_2_33, align 1
%var_2_287 = lshr i32 %var_2_269, 31
%var_2_288 = xor i32 %var_2_285, %var_2_287
%var_2_289 = add nuw nsw i32 %var_2_288, %var_2_287
%var_2_290 = icmp eq i32 %var_2_289, 2
; Matched:%var_2_221:  %var_2_221 = zext i1 %var_2_220 to i8
; %var_2_291 = zext i1 %var_2_290 to i8
; Matched:\<badref\>:  store i8 %var_2_221, i8* %var_2_40, align 1, !tbaa !1283
; store i8 %var_2_291, i8* %var_2_39, align 1
%var_2_292 = icmp ne i8 %var_2_286, 0
%var_2_293 = xor i1 %var_2_292, %var_2_290
%.demorgan7 = or i1 %var_2_283, %var_2_293
  %.v8 = select i1 %.demorgan7, i64 10, i64 72
%var_2_294 = add i64 %var_2_264, %.v8
; Matched:\<badref\>:  store i64 %var_2_224, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_294, i64* %var_2_3, align 8
  br i1 %.demorgan7, label %block_400ddd, label %block_.L_400e1b

block_400ddd:                                     ; preds = %block_.L_400dd3
  store i64 256, i64* %RDI.i104, align 8
; Matched:\<badref\>:  store i64 1, i64* %RSI, align 8, !tbaa !1261
; store i64 ptrtoint (%G__0x60d740_type* @G__0x60d740 to i64), i64* %RSI.i102, align 8
; Matched:\<badref\>:  store i64 256, i64* %RDX, align 8, !tbaa !1261
; store i64 ptrtoint (%G__0x616f40_type* @G__0x616f40 to i64), i64* %RDX.i22, align 8
  store i64 ptrtoint (%G__0x616b20_type* @G__0x616b20 to i64), i64* %RCX.i20, align 8
%var_2_295 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x114__rip__type* @G_0x114__rip_ to i64), i64 76) to i32*), align 4
store i32 %var_2_295, i32* %var_2_259, align 1
store float 0.000000e+00, float* %var_2_261, align 1
; Matched:\<badref\>:  store float 0.000000e+00, float* %var_2_56, align 1, !tbaa !1284
; store float 0.000000e+00, float* %var_2_55, align 1
store float 0.000000e+00, float* %var_2_263, align 1
; Matched:%var_2_117:  %var_2_117 = add i64 %var_2_224, -925
; %var_2_296 = add i64 %var_2_294, -925
; Matched:%var_2_118:  %var_2_118 = add i64 %var_2_224, 48
; %var_2_297 = add i64 %var_2_294, 48
; Matched:%var_2_248:  %var_2_248 = load i64, i64* %RSP, align 8, !tbaa !1261
; %var_2_298 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_120:  %var_2_120 = add i64 %var_2_119, -8
; %var_2_299 = add i64 %var_2_298, -8
; Matched:%var_2_121:  %var_2_121 = inttoptr i64 %var_2_120 to i64*
; %var_2_300 = inttoptr i64 %var_2_299 to i64*
; Matched:\<badref\>:  store i64 %var_2_118, i64* %var_2_121, align 8
; store i64 %var_2_297, i64* %var_2_300, align 8
; Matched:\<badref\>:  store i64 %var_2_249, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_299, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_117, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_296, i64* %var_2_3, align 8
; Matched:%var_2_122:  %var_2_122 = tail call %struct.Memory* @sub_400a40_Fft_renamed_(%struct.State* nonnull %0, i64 %var_2_117, %struct.Memory* %var_2_45)
; %call2_400e08 = tail call %struct.Memory* @sub_400a40.Fft(%struct.State* nonnull %0, i64 %var_2_296, %struct.Memory* %call2_400d07)
; Matched:%var_2_123:  %var_2_123 = load i64, i64* %RBP, align 8
; %var_2_301 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_330:  %var_2_330 = add i64 %var_2_329, -4
; %var_2_302 = add i64 %var_2_301, -4
; Matched:%var_2_331:  %var_2_331 = load i64, i64* %PC, align 8
; %var_2_303 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_126:  %var_2_126 = add i64 %var_2_125, 3
; %var_2_304 = add i64 %var_2_303, 3
; Matched:\<badref\>:  store i64 %var_2_126, i64* %PC, align 8
; store i64 %var_2_304, i64* %var_2_3, align 8
; Matched:%var_2_333:  %var_2_333 = inttoptr i64 %var_2_330 to i32*
; %var_2_305 = inttoptr i64 %var_2_302 to i32*
; Matched:%var_2_334:  %var_2_334 = load i32, i32* %var_2_333, align 4
; %var_2_306 = load i32, i32* %var_2_305, align 4
; Matched:%var_2_335:  %var_2_335 = add i32 %var_2_334, 1
; %var_2_307 = add i32 %var_2_306, 1
; Matched:%var_2_130:  %var_2_130 = zext i32 %var_2_129 to i64
; %var_2_308 = zext i32 %var_2_307 to i64
; Matched:\<badref\>:  store i64 %var_2_336, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_308, i64* %RAX.i88, align 8
; Matched:%var_2_337:  %var_2_337 = icmp eq i32 %var_2_334, -1
; %var_2_309 = icmp eq i32 %var_2_306, -1
; Matched:%var_2_132:  %var_2_132 = icmp eq i32 %var_2_129, 0
; %var_2_310 = icmp eq i32 %var_2_307, 0
; Matched:%var_2_133:  %var_2_133 = or i1 %var_2_131, %var_2_132
; %var_2_311 = or i1 %var_2_309, %var_2_310
; Matched:%var_2_340:  %var_2_340 = zext i1 %var_2_339 to i8
; %var_2_312 = zext i1 %var_2_311 to i8
; Matched:\<badref\>:  store i8 %var_2_340, i8* %var_2_15, align 1, !tbaa !1265
; store i8 %var_2_312, i8* %var_2_14, align 1
; Matched:%var_2_341:  %var_2_341 = and i32 %var_2_335, 255
; %var_2_313 = and i32 %var_2_307, 255
; Matched:%var_2_136:  %var_2_136 = tail call i32 @llvm.ctpop.i32(i32 %var_2_135) #12
; %var_2_314 = tail call i32 @llvm.ctpop.i32(i32 %var_2_313)
; Matched:%var_2_343:  %var_2_343 = trunc i32 %var_2_342 to i8
; %var_2_315 = trunc i32 %var_2_314 to i8
; Matched:%var_2_344:  %var_2_344 = and i8 %var_2_343, 1
; %var_2_316 = and i8 %var_2_315, 1
; Matched:%var_2_139:  %var_2_139 = xor i8 %var_2_138, 1
; %var_2_317 = xor i8 %var_2_316, 1
; Matched:\<badref\>:  store i8 %var_2_139, i8* %var_2_22, align 1, !tbaa !1279
; store i8 %var_2_317, i8* %var_2_21, align 1
; Matched:%var_2_346:  %var_2_346 = xor i32 %var_2_335, %var_2_334
; %var_2_318 = xor i32 %var_2_307, %var_2_306
; Matched:%var_2_347:  %var_2_347 = lshr i32 %var_2_346, 4
; %var_2_319 = lshr i32 %var_2_318, 4
; Matched:%var_2_348:  %var_2_348 = trunc i32 %var_2_347 to i8
; %var_2_320 = trunc i32 %var_2_319 to i8
; Matched:%var_2_143:  %var_2_143 = and i8 %var_2_142, 1
; %var_2_321 = and i8 %var_2_320, 1
; Matched:\<badref\>:  store i8 %var_2_349, i8* %var_2_28, align 1, !tbaa !1280
; store i8 %var_2_321, i8* %var_2_27, align 1
; Matched:%var_2_350:  %var_2_350 = zext i1 %var_2_338 to i8
; %var_2_322 = zext i1 %var_2_310 to i8
; Matched:\<badref\>:  store i8 %var_2_144, i8* %var_2_31, align 1, !tbaa !1281
; store i8 %var_2_322, i8* %var_2_30, align 1
; Matched:%var_2_145:  %var_2_145 = lshr i32 %var_2_129, 31
; %var_2_323 = lshr i32 %var_2_307, 31
; Matched:%var_2_352:  %var_2_352 = trunc i32 %var_2_351 to i8
; %var_2_324 = trunc i32 %var_2_323 to i8
; Matched:\<badref\>:  store i8 %var_2_352, i8* %var_2_34, align 1, !tbaa !1282
; store i8 %var_2_324, i8* %var_2_33, align 1
; Matched:%var_2_353:  %var_2_353 = lshr i32 %var_2_334, 31
; %var_2_325 = lshr i32 %var_2_306, 31
; Matched:%var_2_148:  %var_2_148 = xor i32 %var_2_145, %var_2_147
; %var_2_326 = xor i32 %var_2_323, %var_2_325
; Matched:%var_2_355:  %var_2_355 = add nuw nsw i32 %var_2_354, %var_2_351
; %var_2_327 = add nuw nsw i32 %var_2_326, %var_2_323
; Matched:%var_2_356:  %var_2_356 = icmp eq i32 %var_2_355, 2
; %var_2_328 = icmp eq i32 %var_2_327, 2
; Matched:%var_2_151:  %var_2_151 = zext i1 %var_2_150 to i8
; %var_2_329 = zext i1 %var_2_328 to i8
; Matched:\<badref\>:  store i8 %var_2_151, i8* %var_2_40, align 1, !tbaa !1283
; store i8 %var_2_329, i8* %var_2_39, align 1
; Matched:%var_2_358:  %var_2_358 = add i64 %var_2_331, 9
; %var_2_330 = add i64 %var_2_303, 9
; Matched:\<badref\>:  store i64 %var_2_358, i64* %PC, align 8
; store i64 %var_2_330, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_335, i32* %var_2_333, align 4
; store i32 %var_2_307, i32* %var_2_305, align 4
%var_2_331 = load i64, i64* %var_2_3, align 8
%var_2_332 = add i64 %var_2_331, -67
; Matched:\<badref\>:  store i64 %var_2_154, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_332, i64* %var_2_3, align 8
  br label %block_.L_400dd3

block_.L_400e1b:                                  ; preds = %block_.L_400dd3
  store i64 ptrtoint (%G__0x60d740_type* @G__0x60d740 to i64), i64* %RDI.i104, align 8
; Matched:\<badref\>:  store i64 ptrtoint (%zr_type* @zr to i64), i64* %RSI, align 8, !tbaa !1261
; store i64 1, i64* %RSI.i102, align 8
; Matched:\<badref\>:  store i64 ptrtoint (%w_type* @w to i64), i64* %RDX, align 8, !tbaa !1261
; store i64 256, i64* %RDX.i22, align 8
  store i64 17, i64* %RCX.i20, align 8
%var_2_333 = add i64 %var_2_294, -1947
; Matched:%var_2_156:  %var_2_156 = add i64 %var_2_224, 30
; %var_2_334 = add i64 %var_2_294, 30
; Matched:%var_2_119:  %var_2_119 = load i64, i64* %RSP, align 8, !tbaa !1261
; %var_2_335 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_249:  %var_2_249 = add i64 %var_2_248, -8
; %var_2_336 = add i64 %var_2_335, -8
; Matched:%var_2_159:  %var_2_159 = inttoptr i64 %var_2_158 to i64*
; %var_2_337 = inttoptr i64 %var_2_336 to i64*
; Matched:\<badref\>:  store i64 %var_2_156, i64* %var_2_159, align 8
; store i64 %var_2_334, i64* %var_2_337, align 8
; Matched:\<badref\>:  store i64 %var_2_120, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_336, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_155, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_333, i64* %var_2_3, align 8
%call2_400e34 = tail call %struct.Memory* @sub_400680.Printcomplex(%struct.State* nonnull %0, i64 %var_2_333, %struct.Memory* %call2_400d07)
; Matched:%var_2_161:  %var_2_161 = load i64, i64* %RSP, align 8
; %var_2_338 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_162:  %var_2_162 = load i64, i64* %PC, align 8
; %var_2_339 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_163:  %var_2_163 = add i64 %var_2_161, 16
; %var_2_340 = add i64 %var_2_338, 16
; Matched:\<badref\>:  store i64 %var_2_163, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_340, i64* %var_2_6, align 8
; Matched:%var_2_164:  %var_2_164 = icmp ugt i64 %var_2_161, -17
; %var_2_341 = icmp ugt i64 %var_2_338, -17
; Matched:%var_2_165:  %var_2_165 = zext i1 %var_2_164 to i8
; %var_2_342 = zext i1 %var_2_341 to i8
; Matched:\<badref\>:  store i8 %var_2_165, i8* %var_2_15, align 1, !tbaa !1265
; store i8 %var_2_342, i8* %var_2_14, align 1
; Matched:%var_2_166:  %var_2_166 = trunc i64 %var_2_163 to i32
; %var_2_343 = trunc i64 %var_2_340 to i32
; Matched:%var_2_167:  %var_2_167 = and i32 %var_2_166, 255
; %var_2_344 = and i32 %var_2_343, 255
; Matched:%var_2_168:  %var_2_168 = tail call i32 @llvm.ctpop.i32(i32 %var_2_167) #12
; %var_2_345 = tail call i32 @llvm.ctpop.i32(i32 %var_2_344)
; Matched:%var_2_169:  %var_2_169 = trunc i32 %var_2_168 to i8
; %var_2_346 = trunc i32 %var_2_345 to i8
; Matched:%var_2_170:  %var_2_170 = and i8 %var_2_169, 1
; %var_2_347 = and i8 %var_2_346, 1
; Matched:%var_2_171:  %var_2_171 = xor i8 %var_2_170, 1
; %var_2_348 = xor i8 %var_2_347, 1
; Matched:\<badref\>:  store i8 %var_2_171, i8* %var_2_22, align 1, !tbaa !1279
; store i8 %var_2_348, i8* %var_2_21, align 1
; Matched:%var_2_172:  %var_2_172 = xor i64 %var_2_161, 16
; %var_2_349 = xor i64 %var_2_338, 16
; Matched:%var_2_173:  %var_2_173 = xor i64 %var_2_172, %var_2_163
; %var_2_350 = xor i64 %var_2_349, %var_2_340
; Matched:%var_2_174:  %var_2_174 = lshr i64 %var_2_173, 4
; %var_2_351 = lshr i64 %var_2_350, 4
; Matched:%var_2_175:  %var_2_175 = trunc i64 %var_2_174 to i8
; %var_2_352 = trunc i64 %var_2_351 to i8
; Matched:%var_2_176:  %var_2_176 = and i8 %var_2_175, 1
; %var_2_353 = and i8 %var_2_352, 1
; Matched:\<badref\>:  store i8 %var_2_176, i8* %var_2_28, align 1, !tbaa !1280
; store i8 %var_2_353, i8* %var_2_27, align 1
; Matched:%var_2_177:  %var_2_177 = icmp eq i64 %var_2_163, 0
; %var_2_354 = icmp eq i64 %var_2_340, 0
; Matched:%var_2_178:  %var_2_178 = zext i1 %var_2_177 to i8
; %var_2_355 = zext i1 %var_2_354 to i8
; Matched:\<badref\>:  store i8 %var_2_178, i8* %var_2_31, align 1, !tbaa !1281
; store i8 %var_2_355, i8* %var_2_30, align 1
; Matched:%var_2_179:  %var_2_179 = lshr i64 %var_2_163, 63
; %var_2_356 = lshr i64 %var_2_340, 63
; Matched:%var_2_180:  %var_2_180 = trunc i64 %var_2_179 to i8
; %var_2_357 = trunc i64 %var_2_356 to i8
; Matched:\<badref\>:  store i8 %var_2_180, i8* %var_2_34, align 1, !tbaa !1282
; store i8 %var_2_357, i8* %var_2_33, align 1
; Matched:%var_2_181:  %var_2_181 = lshr i64 %var_2_161, 63
; %var_2_358 = lshr i64 %var_2_338, 63
; Matched:%var_2_182:  %var_2_182 = xor i64 %var_2_179, %var_2_181
; %var_2_359 = xor i64 %var_2_356, %var_2_358
; Matched:%var_2_183:  %var_2_183 = add nuw nsw i64 %var_2_182, %var_2_179
; %var_2_360 = add nuw nsw i64 %var_2_359, %var_2_356
; Matched:%var_2_184:  %var_2_184 = icmp eq i64 %var_2_183, 2
; %var_2_361 = icmp eq i64 %var_2_360, 2
; Matched:%var_2_185:  %var_2_185 = zext i1 %var_2_184 to i8
; %var_2_362 = zext i1 %var_2_361 to i8
; Matched:\<badref\>:  store i8 %var_2_185, i8* %var_2_40, align 1, !tbaa !1283
; store i8 %var_2_362, i8* %var_2_39, align 1
; Matched:%var_2_186:  %var_2_186 = add i64 %var_2_162, 5
; %var_2_363 = add i64 %var_2_339, 5
; Matched:\<badref\>:  store i64 %var_2_186, i64* %PC, align 8
; store i64 %var_2_363, i64* %var_2_3, align 8
; Matched:%var_2_187:  %var_2_187 = add i64 %var_2_161, 24
; %var_2_364 = add i64 %var_2_338, 24
; Matched:%var_2_188:  %var_2_188 = inttoptr i64 %var_2_163 to i64*
; %var_2_365 = inttoptr i64 %var_2_340 to i64*
; Matched:%var_2_189:  %var_2_189 = load i64, i64* %var_2_188, align 8
; %var_2_366 = load i64, i64* %var_2_365, align 8
; Matched:\<badref\>:  store i64 %var_2_189, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_366, i64* %RBP.i, align 8
; Matched:\<badref\>:  store i64 %var_2_187, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_364, i64* %var_2_6, align 8
; Matched:%var_2_190:  %var_2_190 = add i64 %var_2_162, 6
; %var_2_367 = add i64 %var_2_339, 6
; Matched:\<badref\>:  store i64 %var_2_190, i64* %PC, align 8
; store i64 %var_2_367, i64* %var_2_3, align 8
; Matched:%var_2_191:  %var_2_191 = inttoptr i64 %var_2_187 to i64*
; %var_2_368 = inttoptr i64 %var_2_364 to i64*
; Matched:%var_2_192:  %var_2_192 = load i64, i64* %var_2_191, align 8
; %var_2_369 = load i64, i64* %var_2_368, align 8
; Matched:\<badref\>:  store i64 %var_2_192, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_369, i64* %var_2_3, align 8
; Matched:%var_2_193:  %var_2_193 = add i64 %var_2_161, 32
; %var_2_370 = add i64 %var_2_338, 32
; Matched:\<badref\>:  store i64 %var_2_193, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_370, i64* %var_2_6, align 8
  ret %struct.Memory* %call2_400e34
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x100___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 256, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x616b20___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x616b20_type* @G__0x616b20 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.Exptab(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x1687__0x610238(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 12
  store i64 %4, i64* %PC, align 8
  store i64 5767, i64* bitcast (%G_0x610238_type* @G_0x610238 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x100__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -256
  %10 = icmp ult i32 %8, 256
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
define %struct.Memory* @routine_jg_.L_400dcc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x8__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x6150c4___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6150c4_type* @G__0x6150c4 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x610238___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x610238_type* @G_0x610238 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.Uniform11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x610194___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x610194_type* @G__0x610194 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x610238(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0x610238_type* @G_0x610238 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x1ad__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x1ad__rip__type* @G_0x1ad__rip_ to i64)
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
define %struct.Memory* @routine_movss_0x1a9__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x1a9__rip__type* @G_0x1a9__rip_ to i64)
  %7 = add i64 %5, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm1___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
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
define %struct.Memory* @routine_mulss_0x6150c4___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x float>*
  %8 = load <2 x float>, <2 x float>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to <2 x i32>*
  %11 = load <2 x i32>, <2 x i32>* %10, align 1
  %12 = load float, float* bitcast (%G_0x6150c4_type* @G_0x6150c4 to float*), align 8
  %13 = extractelement <2 x float> %8, i32 0
  %14 = fmul float %13, %12
  %15 = bitcast %union.VectorReg* %3 to float*
  store float %14, float* %15, align 1
  %16 = bitcast <2 x float> %8 to <2 x i32>
  %17 = extractelement <2 x i32> %16, i32 1
  %18 = getelementptr inbounds i8, i8* %4, i64 4
  %19 = bitcast i8* %18 to i32*
  store i32 %17, i32* %19, align 1
  %20 = extractelement <2 x i32> %11, i32 0
  %21 = bitcast i64* %9 to i32*
  store i32 %20, i32* %21, align 1
  %22 = extractelement <2 x i32> %11, i32 1
  %23 = getelementptr inbounds i8, i8* %4, i64 12
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subss__xmm0___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 1
  %15 = extractelement <2 x float> %9, i32 0
  %16 = extractelement <2 x float> %14, i32 0
  %17 = fsub float %15, %16
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm2__0x60d740___rax_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, 6346560
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = extractelement <2 x float> %10, i32 0
  %12 = inttoptr i64 %6 to float*
  store float %11, float* %12, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulss_0x610194___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x float>*
  %8 = load <2 x float>, <2 x float>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to <2 x i32>*
  %11 = load <2 x i32>, <2 x i32>* %10, align 1
  %12 = load float, float* bitcast (%G_0x610194_type* @G_0x610194 to float*), align 8
  %13 = extractelement <2 x float> %8, i32 0
  %14 = fmul float %13, %12
  %15 = bitcast %union.VectorReg* %3 to float*
  store float %14, float* %15, align 1
  %16 = bitcast <2 x float> %8 to <2 x i32>
  %17 = extractelement <2 x i32> %16, i32 1
  %18 = getelementptr inbounds i8, i8* %4, i64 4
  %19 = bitcast i8* %18 to i32*
  store i32 %17, i32* %19, align 1
  %20 = extractelement <2 x i32> %11, i32 0
  %21 = bitcast i64* %9 to i32*
  store i32 %20, i32* %21, align 1
  %22 = extractelement <2 x i32> %11, i32 1
  %23 = getelementptr inbounds i8, i8* %4, i64 12
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subss__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %17 = fsub float %15, %16
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
define %struct.Memory* @routine_movss__xmm1__0x60d744___rax_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, 6346564
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = extractelement <2 x float> %10, i32 0
  %12 = inttoptr i64 %6 to float*
  store float %11, float* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400d1f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x14__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -20
  %10 = icmp ult i32 %8, 20
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
  %19 = xor i32 %8, 16
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
  %31 = lshr i32 %8, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_400e1b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x60d740___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x60d740_type* @G__0x60d740 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x616f40___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x616f40_type* @G__0x616f40 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x616b20___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x616b20_type* @G__0x616b20 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x114__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x114__rip__type* @G_0x114__rip_ to i64), i64 76) to i32*), align 4
  %8 = bitcast %union.VectorReg* %3 to i32*
  store i32 %7, i32* %8, align 1
  %9 = getelementptr inbounds i8, i8* %4, i64 4
  %10 = bitcast i8* %9 to float*
  store float 0.000000e+00, float* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 12
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.Fft(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_400dd3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x60d740___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x60d740_type* @G__0x60d740 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x100___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 256, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x11___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.Printcomplex(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
