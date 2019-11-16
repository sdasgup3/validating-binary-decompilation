; ModuleID = '/tmp/tmp8eo_mj63-query.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x7ac__rip__type = type <{ [4 x i8] }>
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
@G_0x7ac__rip_ = global %G_0x7ac__rip__type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @Uniform11(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
entry:
%var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
; Matched:  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
; %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
; Matched:%var_2_5:  %var_2_5 = load i64, i64* %RBP, align 8
; %var_2_4 = load i64, i64* %RBP.i, align 8
%var_2_5 = add i64 %1, 1
store i64 %var_2_5, i64* %var_2_3, align 8
; Matched:%var_2_7:  %var_2_7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
; %var_2_6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
; Matched:%var_2_8:  %var_2_8 = load i64, i64* %var_2_7, align 8, !tbaa !1261
; %var_2_7 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_9:  %var_2_9 = add i64 %var_2_8, -8
; %var_2_8 = add i64 %var_2_7, -8
; Matched:%var_2_10:  %var_2_10 = inttoptr i64 %var_2_9 to i64*
; %var_2_9 = inttoptr i64 %var_2_8 to i64*
; Matched:\<badref\>:  store i64 %var_2_5, i64* %var_2_10, align 8
; store i64 %var_2_4, i64* %var_2_9, align 8
; Matched:\<badref\>:  store i64 %var_2_9, i64* %var_2_7, align 8, !tbaa !1261
; store i64 %var_2_8, i64* %var_2_6, align 8
%var_2_10 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_9, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_8, i64* %RBP.i, align 8
%var_2_11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
; Matched:%var_2_12:  %var_2_12 = bitcast [32 x %union.VectorReg]* %var_2_3 to i8*
; %var_2_12 = bitcast [32 x %union.VectorReg]* %var_2_11 to i8*
%var_2_13 = add i64 %var_2_10, add (i64 ptrtoint (%G_0x7ac__rip__type* @G_0x7ac__rip_ to i64), i64 3)
%var_2_14 = add i64 %var_2_10, 11
store i64 %var_2_14, i64* %var_2_3, align 8
%var_2_15 = inttoptr i64 %var_2_13 to i32*
%var_2_16 = load i32, i32* %var_2_15, align 4
%var_2_17 = bitcast [32 x %union.VectorReg]* %var_2_11 to i32*
store i32 %var_2_16, i32* %var_2_17, align 1
; Matched:%var_2_15:  %var_2_15 = getelementptr inbounds i8, i8* %var_2_12, i64 4
; %var_2_18 = getelementptr inbounds i8, i8* %var_2_12, i64 4
; Matched:%var_2_16:  %var_2_16 = bitcast i8* %var_2_15 to float*
; %var_2_19 = bitcast i8* %var_2_18 to float*
; Matched:\<badref\>:  store float 0.000000e+00, float* %var_2_16, align 1, !tbaa !1265
; store float 0.000000e+00, float* %var_2_19, align 1
; Matched:%var_2_17:  %var_2_17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
; %var_2_20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_18:  %var_2_18 = bitcast i64* %var_2_17 to float*
; %var_2_21 = bitcast i64* %var_2_20 to float*
; Matched:\<badref\>:  store float 0.000000e+00, float* %var_2_18, align 1, !tbaa !1265
; store float 0.000000e+00, float* %var_2_21, align 1
; Matched:%var_2_19:  %var_2_19 = getelementptr inbounds i8, i8* %var_2_12, i64 12
; %var_2_22 = getelementptr inbounds i8, i8* %var_2_12, i64 12
; Matched:%var_2_20:  %var_2_20 = bitcast i8* %var_2_19 to float*
; %var_2_23 = bitcast i8* %var_2_22 to float*
; Matched:\<badref\>:  store float 0.000000e+00, float* %var_2_20, align 1, !tbaa !1265
; store float 0.000000e+00, float* %var_2_23, align 1
; Matched:  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
; %RDI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
; Matched:%var_2_21:  %var_2_21 = add i64 %var_2_8, -16
; %var_2_24 = add i64 %var_2_7, -16
; Matched:%var_2_22:  %var_2_22 = load i64, i64* %RDI, align 8
; %var_2_25 = load i64, i64* %RDI.i, align 8
; Matched:%var_2_23:  %var_2_23 = add i64 %var_2_11, 15
; %var_2_26 = add i64 %var_2_10, 15
; Matched:\<badref\>:  store i64 %var_2_23, i64* %PC, align 8
; store i64 %var_2_26, i64* %var_2_3, align 8
; Matched:%var_2_24:  %var_2_24 = inttoptr i64 %var_2_21 to i64*
; %var_2_27 = inttoptr i64 %var_2_24 to i64*
; Matched:\<badref\>:  store i64 %var_2_22, i64* %var_2_24, align 8
; store i64 %var_2_25, i64* %var_2_27, align 8
; Matched:  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
; %RSI.i30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
; Matched:%var_2_25:  %var_2_25 = load i64, i64* %RBP, align 8
; %var_2_28 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_26:  %var_2_26 = add i64 %var_2_25, -16
; %var_2_29 = add i64 %var_2_28, -16
; Matched:%var_2_27:  %var_2_27 = load i64, i64* %RSI, align 8
; %var_2_30 = load i64, i64* %RSI.i30, align 8
; Matched:%var_2_63:  %var_2_63 = load i64, i64* %PC, align 8
; %var_2_31 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_29:  %var_2_29 = add i64 %var_2_28, 4
; %var_2_32 = add i64 %var_2_31, 4
; Matched:\<badref\>:  store i64 %var_2_64, i64* %PC, align 8
; store i64 %var_2_32, i64* %var_2_3, align 8
; Matched:%var_2_30:  %var_2_30 = inttoptr i64 %var_2_26 to i64*
; %var_2_33 = inttoptr i64 %var_2_29 to i64*
; Matched:\<badref\>:  store i64 %var_2_27, i64* %var_2_30, align 8
; store i64 %var_2_30, i64* %var_2_33, align 8
; Matched:%var_2_31:  %var_2_31 = load i64, i64* %RBP, align 8
; %var_2_34 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_62:  %var_2_62 = add i64 %var_2_61, -8
; %var_2_35 = add i64 %var_2_34, -8
; Matched:%var_2_28:  %var_2_28 = load i64, i64* %PC, align 8
; %var_2_36 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_34:  %var_2_34 = add i64 %var_2_33, 4
; %var_2_37 = add i64 %var_2_36, 4
; Matched:\<badref\>:  store i64 %var_2_29, i64* %PC, align 8
; store i64 %var_2_37, i64* %var_2_3, align 8
; Matched:%var_2_65:  %var_2_65 = inttoptr i64 %var_2_62 to i64*
; %var_2_38 = inttoptr i64 %var_2_35 to i64*
; Matched:%var_2_58:  %var_2_58 = load i64, i64* %var_2_35, align 8
; %var_2_39 = load i64, i64* %var_2_38, align 8
; Matched:\<badref\>:  store i64 %var_2_36, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_39, i64* %RSI.i30, align 8
; Matched:  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
; %RAX.i24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
; Matched:%var_2_37:  %var_2_37 = add i64 %var_2_33, 10
; %var_2_40 = add i64 %var_2_36, 10
; Matched:\<badref\>:  store i64 %var_2_37, i64* %PC, align 8
; store i64 %var_2_40, i64* %var_2_3, align 8
; Matched:%var_2_38:  %var_2_38 = inttoptr i64 %var_2_36 to i32*
; %var_2_41 = inttoptr i64 %var_2_39 to i32*
; Matched:%var_2_39:  %var_2_39 = load i32, i32* %var_2_38, align 4
; %var_2_42 = load i32, i32* %var_2_41, align 4
; Matched:%var_2_40:  %var_2_40 = mul i32 %var_2_39, 4855
; %var_2_43 = mul i32 %var_2_42, 4855
; Matched:%var_2_41:  %var_2_41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
; %var_2_44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
; Matched:%var_2_42:  %var_2_42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
; %var_2_45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
; Matched:%var_2_43:  %var_2_43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
; %var_2_46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
; Matched:%var_2_44:  %var_2_44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
; %var_2_47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
; Matched:%var_2_45:  %var_2_45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
; %var_2_48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
; Matched:%var_2_46:  %var_2_46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; %var_2_49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; Matched:%var_2_47:  %var_2_47 = add i32 %var_2_40, 1731
; %var_2_50 = add i32 %var_2_43, 1731
; Matched:%var_2_48:  %var_2_48 = and i32 %var_2_47, 255
; %var_2_51 = and i32 %var_2_50, 255
; Matched:%var_2_49:  %var_2_49 = tail call i32 @llvm.ctpop.i32(i32 %var_2_48) #12
; %var_2_52 = tail call i32 @llvm.ctpop.i32(i32 %var_2_51)
; Matched:%var_2_50:  %var_2_50 = trunc i32 %var_2_49 to i8
; %var_2_53 = trunc i32 %var_2_52 to i8
; Matched:%var_2_51:  %var_2_51 = and i8 %var_2_50, 1
; %var_2_54 = and i8 %var_2_53, 1
; Matched:%var_2_52:  %var_2_52 = xor i8 %var_2_51, 1
; %var_2_55 = xor i8 %var_2_54, 1
; Matched:%var_2_53:  %var_2_53 = and i32 %var_2_47, 8191
; %var_2_56 = and i32 %var_2_50, 8191
; Matched:%var_2_54:  %var_2_54 = zext i32 %var_2_53 to i64
; %var_2_57 = zext i32 %var_2_56 to i64
; Matched:\<badref\>:  store i64 %var_2_54, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_57, i64* %RAX.i24, align 8
; Matched:\<badref\>:  store i8 0, i8* %var_2_41, align 1, !tbaa !1267
; store i8 0, i8* %var_2_44, align 1
; Matched:\<badref\>:  store i8 %var_2_52, i8* %var_2_42, align 1, !tbaa !1281
; store i8 %var_2_55, i8* %var_2_45, align 1
; Matched:%var_2_55:  %var_2_55 = icmp eq i32 %var_2_53, 0
; %var_2_58 = icmp eq i32 %var_2_56, 0
; Matched:%var_2_56:  %var_2_56 = zext i1 %var_2_55 to i8
; %var_2_59 = zext i1 %var_2_58 to i8
; Matched:\<badref\>:  store i8 %var_2_56, i8* %var_2_44, align 1, !tbaa !1282
; store i8 %var_2_59, i8* %var_2_47, align 1
; Matched:\<badref\>:  store i8 0, i8* %var_2_45, align 1, !tbaa !1283
; store i8 0, i8* %var_2_48, align 1
; Matched:\<badref\>:  store i8 0, i8* %var_2_46, align 1, !tbaa !1284
; store i8 0, i8* %var_2_49, align 1
; Matched:\<badref\>:  store i8 0, i8* %var_2_43, align 1, !tbaa !1285
; store i8 0, i8* %var_2_46, align 1
; Matched:%var_2_57:  %var_2_57 = add i64 %var_2_33, 24
; %var_2_60 = add i64 %var_2_36, 24
; Matched:\<badref\>:  store i64 %var_2_57, i64* %PC, align 8
; store i64 %var_2_60, i64* %var_2_3, align 8
; Matched:%var_2_66:  %var_2_66 = load i64, i64* %var_2_65, align 8
; %var_2_61 = load i64, i64* %var_2_38, align 8
; Matched:\<badref\>:  store i64 %var_2_58, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_61, i64* %RSI.i30, align 8
; Matched:%var_2_59:  %var_2_59 = add i64 %var_2_33, 26
; %var_2_62 = add i64 %var_2_36, 26
; Matched:\<badref\>:  store i64 %var_2_59, i64* %PC, align 8
; store i64 %var_2_62, i64* %var_2_3, align 8
; Matched:%var_2_60:  %var_2_60 = inttoptr i64 %var_2_58 to i32*
; %var_2_63 = inttoptr i64 %var_2_61 to i32*
; Matched:\<badref\>:  store i32 %var_2_53, i32* %var_2_60, align 4
; store i32 %var_2_56, i32* %var_2_63, align 4
; Matched:%var_2_61:  %var_2_61 = load i64, i64* %RBP, align 8
; %var_2_64 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_32:  %var_2_32 = add i64 %var_2_31, -8
; %var_2_65 = add i64 %var_2_64, -8
; Matched:%var_2_33:  %var_2_33 = load i64, i64* %PC, align 8
; %var_2_66 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_64:  %var_2_64 = add i64 %var_2_63, 4
; %var_2_67 = add i64 %var_2_66, 4
; Matched:\<badref\>:  store i64 %var_2_34, i64* %PC, align 8
; store i64 %var_2_67, i64* %var_2_3, align 8
; Matched:%var_2_35:  %var_2_35 = inttoptr i64 %var_2_32 to i64*
; %var_2_68 = inttoptr i64 %var_2_65 to i64*
; Matched:%var_2_36:  %var_2_36 = load i64, i64* %var_2_35, align 8
; %var_2_69 = load i64, i64* %var_2_68, align 8
; Matched:\<badref\>:  store i64 %var_2_66, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_69, i64* %RSI.i30, align 8
; Matched:%var_2_4:  %var_2_4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
; %var_2_70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
; Matched:%var_2_67:  %var_2_67 = bitcast %union.VectorReg* %var_2_4 to i8*
; %var_2_71 = bitcast %union.VectorReg* %var_2_70 to i8*
; Matched:%var_2_68:  %var_2_68 = add i64 %var_2_63, 8
; %var_2_72 = add i64 %var_2_66, 8
; Matched:\<badref\>:  store i64 %var_2_68, i64* %PC, align 8
; store i64 %var_2_72, i64* %var_2_3, align 8
%var_2_73 = bitcast %union.VectorReg* %var_2_70 to <2 x i32>*
%var_2_74 = load <2 x i32>, <2 x i32>* %var_2_73, align 1
; Matched:%var_2_71:  %var_2_71 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
; %var_2_75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
%var_2_76 = bitcast i64* %var_2_75 to <2 x i32>*
%var_2_77 = load <2 x i32>, <2 x i32>* %var_2_76, align 1
; Matched:%var_2_74:  %var_2_74 = inttoptr i64 %var_2_66 to i32*
; %var_2_78 = inttoptr i64 %var_2_69 to i32*
; Matched:%var_2_75:  %var_2_75 = load i32, i32* %var_2_74, align 4
; %var_2_79 = load i32, i32* %var_2_78, align 4
; Matched:%var_2_76:  %var_2_76 = sitofp i32 %var_2_75 to float
; %var_2_80 = sitofp i32 %var_2_79 to float
; Matched:%var_2_77:  %var_2_77 = bitcast %union.VectorReg* %var_2_4 to float*
; %var_2_81 = bitcast %union.VectorReg* %var_2_70 to float*
; Matched:\<badref\>:  store float %var_2_76, float* %var_2_77, align 1, !tbaa !1265
; store float %var_2_80, float* %var_2_81, align 1
%var_2_82 = extractelement <2 x i32> %var_2_74, i32 1
; Matched:%var_2_79:  %var_2_79 = getelementptr inbounds i8, i8* %var_2_67, i64 4
; %var_2_83 = getelementptr inbounds i8, i8* %var_2_71, i64 4
; Matched:%var_2_80:  %var_2_80 = bitcast i8* %var_2_79 to i32*
; %var_2_84 = bitcast i8* %var_2_83 to i32*
; Matched:\<badref\>:  store i32 %var_2_78, i32* %var_2_80, align 1, !tbaa !1265
; store i32 %var_2_82, i32* %var_2_84, align 1
%var_2_85 = extractelement <2 x i32> %var_2_77, i32 0
; Matched:%var_2_82:  %var_2_82 = bitcast i64* %var_2_71 to i32*
; %var_2_86 = bitcast i64* %var_2_75 to i32*
; Matched:\<badref\>:  store i32 %var_2_81, i32* %var_2_82, align 1, !tbaa !1265
; store i32 %var_2_85, i32* %var_2_86, align 1
%var_2_87 = extractelement <2 x i32> %var_2_77, i32 1
; Matched:%var_2_84:  %var_2_84 = getelementptr inbounds i8, i8* %var_2_67, i64 12
; %var_2_88 = getelementptr inbounds i8, i8* %var_2_71, i64 12
; Matched:%var_2_85:  %var_2_85 = bitcast i8* %var_2_84 to i32*
; %var_2_89 = bitcast i8* %var_2_88 to i32*
; Matched:\<badref\>:  store i32 %var_2_83, i32* %var_2_85, align 1, !tbaa !1265
; store i32 %var_2_87, i32* %var_2_89, align 1
%var_2_90 = bitcast %union.VectorReg* %var_2_70 to <2 x float>*
%var_2_91 = load <2 x float>, <2 x float>* %var_2_90, align 1
%var_2_92 = load <2 x i32>, <2 x i32>* %var_2_76, align 1
%var_2_93 = bitcast [32 x %union.VectorReg]* %var_2_11 to <2 x float>*
%var_2_94 = load <2 x float>, <2 x float>* %var_2_93, align 1
%var_2_95 = extractelement <2 x float> %var_2_91, i32 0
%var_2_96 = extractelement <2 x float> %var_2_94, i32 0
; Matched:%var_2_93:  %var_2_93 = fdiv float %var_2_91, %var_2_92
; %var_2_97 = fdiv float %var_2_95, %var_2_96
; Matched:\<badref\>:  store float %var_2_93, float* %var_2_77, align 1, !tbaa !1265
; store float %var_2_97, float* %var_2_81, align 1
%var_2_98 = bitcast <2 x float> %var_2_91 to <2 x i32>
%var_2_99 = extractelement <2 x i32> %var_2_98, i32 1
; Matched:\<badref\>:  store i32 %var_2_95, i32* %var_2_80, align 1, !tbaa !1265
; store i32 %var_2_99, i32* %var_2_84, align 1
%var_2_100 = extractelement <2 x i32> %var_2_92, i32 0
; Matched:\<badref\>:  store i32 %var_2_96, i32* %var_2_82, align 1, !tbaa !1265
; store i32 %var_2_100, i32* %var_2_86, align 1
%var_2_101 = extractelement <2 x i32> %var_2_92, i32 1
; Matched:\<badref\>:  store i32 %var_2_97, i32* %var_2_85, align 1, !tbaa !1265
; store i32 %var_2_101, i32* %var_2_89, align 1
; Matched:%var_2_98:  %var_2_98 = add i64 %var_2_61, -16
; %var_2_102 = add i64 %var_2_64, -16
; Matched:%var_2_99:  %var_2_99 = add i64 %var_2_63, 16
; %var_2_103 = add i64 %var_2_66, 16
; Matched:\<badref\>:  store i64 %var_2_99, i64* %PC, align 8
; store i64 %var_2_103, i64* %var_2_3, align 8
; Matched:%var_2_100:  %var_2_100 = inttoptr i64 %var_2_98 to i64*
; %var_2_104 = inttoptr i64 %var_2_102 to i64*
; Matched:%var_2_101:  %var_2_101 = load i64, i64* %var_2_100, align 8
; %var_2_105 = load i64, i64* %var_2_104, align 8
; Matched:\<badref\>:  store i64 %var_2_101, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_105, i64* %RSI.i30, align 8
; Matched:%var_2_102:  %var_2_102 = add i64 %var_2_63, 20
; %var_2_106 = add i64 %var_2_66, 20
; Matched:\<badref\>:  store i64 %var_2_102, i64* %PC, align 8
; store i64 %var_2_106, i64* %var_2_3, align 8
%var_2_107 = load <2 x float>, <2 x float>* %var_2_90, align 1
%var_2_108 = extractelement <2 x float> %var_2_107, i32 0
; Matched:%var_2_105:  %var_2_105 = inttoptr i64 %var_2_101 to float*
; %var_2_109 = inttoptr i64 %var_2_105 to float*
; Matched:\<badref\>:  store float %var_2_104, float* %var_2_105, align 4
; store float %var_2_108, float* %var_2_109, align 4
; Matched:%var_2_106:  %var_2_106 = load i64, i64* %PC, align 8
; %var_2_110 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_107:  %var_2_107 = add i64 %var_2_106, 1
; %var_2_111 = add i64 %var_2_110, 1
; Matched:\<badref\>:  store i64 %var_2_107, i64* %PC, align 8
; store i64 %var_2_111, i64* %var_2_3, align 8
; Matched:%var_2_108:  %var_2_108 = load i64, i64* %var_2_7, align 8, !tbaa !1261
; %var_2_112 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_109:  %var_2_109 = add i64 %var_2_108, 8
; %var_2_113 = add i64 %var_2_112, 8
; Matched:%var_2_110:  %var_2_110 = inttoptr i64 %var_2_108 to i64*
; %var_2_114 = inttoptr i64 %var_2_112 to i64*
; Matched:%var_2_111:  %var_2_111 = load i64, i64* %var_2_110, align 8
; %var_2_115 = load i64, i64* %var_2_114, align 8
; Matched:\<badref\>:  store i64 %var_2_111, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_115, i64* %RBP.i, align 8
; Matched:\<badref\>:  store i64 %var_2_109, i64* %var_2_7, align 8, !tbaa !1261
; store i64 %var_2_113, i64* %var_2_6, align 8
; Matched:%var_2_112:  %var_2_112 = add i64 %var_2_106, 2
; %var_2_116 = add i64 %var_2_110, 2
; Matched:\<badref\>:  store i64 %var_2_112, i64* %PC, align 8
; store i64 %var_2_116, i64* %var_2_3, align 8
; Matched:%var_2_113:  %var_2_113 = inttoptr i64 %var_2_109 to i64*
; %var_2_117 = inttoptr i64 %var_2_113 to i64*
; Matched:%var_2_114:  %var_2_114 = load i64, i64* %var_2_113, align 8
; %var_2_118 = load i64, i64* %var_2_117, align 8
; Matched:\<badref\>:  store i64 %var_2_114, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_118, i64* %var_2_3, align 8
; Matched:%var_2_115:  %var_2_115 = add i64 %var_2_108, 16
; %var_2_119 = add i64 %var_2_112, 16
; Matched:\<badref\>:  store i64 %var_2_115, i64* %var_2_7, align 8, !tbaa !1261
; store i64 %var_2_119, i64* %var_2_6, align 8
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
define %struct.Memory* @routine_movss_0x7ac__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x7ac__rip__type* @G_0x7ac__rip_ to i64)
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__0x12f7____rsi____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RSI to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = mul nsw i64 %8, 4855
  %10 = trunc i64 %9 to i32
  %11 = and i64 %9, 4294967295
  store i64 %11, i64* %RAX, align 8
  %12 = mul i64 %8, 20852066222080
  %13 = ashr exact i64 %12, 32
  %14 = icmp ne i64 %13, %9
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
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %24, align 1
  %25 = lshr i32 %10, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %15, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x6c3___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1731
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -1732
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

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x1fff___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 8191
  store i64 %6, i64* %RAX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %and.shrunk = trunc i64 %3 to i32
  %8 = and i32 %and.shrunk, 255
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = icmp eq i64 %6, 0
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
define %struct.Memory* @routine_movl__eax____rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = bitcast i64* %RSI to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssl___rsi____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = bitcast i64* %RSI to i32**
  %6 = load i32*, i32** %5, align 8
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = load i32, i32* %6, align 4
  %15 = sitofp i32 %14 to float
  %16 = bitcast %union.VectorReg* %3 to float*
  store float %15, float* %16, align 1
  %17 = extractelement <2 x i32> %10, i32 1
  %18 = getelementptr inbounds i8, i8* %4, i64 4
  %19 = bitcast i8* %18 to i32*
  store i32 %17, i32* %19, align 1
  %20 = extractelement <2 x i32> %13, i32 0
  %21 = bitcast i64* %11 to i32*
  store i32 %20, i32* %21, align 1
  %22 = extractelement <2 x i32> %13, i32 1
  %23 = getelementptr inbounds i8, i8* %4, i64 12
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
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
define %struct.Memory* @routine_movss__xmm1____rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast i64* %RSI to float**
  %5 = load float*, float** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  store float %10, float* %5, align 4
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
