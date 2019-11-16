; ModuleID = '/tmp/tmpso6fvjds-query.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x177__rip__type = type <{ [4 x i8] }>
%G_0x17b__rip__type = type <{ [4 x i8] }>
%G_0x197__rip__type = type <{ [4 x i8] }>
%G_0x201__rip__type = type <{ [4 x i8] }>
%G__0x4007b0_type = type <{ [8 x i8] }>
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
@G_0x177__rip_ = global %G_0x177__rip__type zeroinitializer
@G_0x17b__rip_ = global %G_0x17b__rip__type zeroinitializer
@G_0x197__rip_ = global %G_0x197__rip__type zeroinitializer
@G_0x201__rip_ = global %G_0x201__rip__type zeroinitializer
@G__0x4007b0 = global %G__0x4007b0_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_400520.loop(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @main(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
entry:
%var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
; Matched:%var_2_10:  %var_2_10 = load i64, i64* %RBP, align 8
; %var_2_4 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_11:  %var_2_11 = add i64 %1, 1
; %var_2_5 = add i64 %1, 1
; Matched:\<badref\>:  store i64 %var_2_11, i64* %PC, align 8
; store i64 %var_2_5, i64* %var_2_3, align 8
; Matched:  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
; %var_2_6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
; Matched:%var_2_12:  %var_2_12 = load i64, i64* %RSP, align 8, !tbaa !1261
; %var_2_7 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_13:  %var_2_13 = add i64 %var_2_12, -8
; %var_2_8 = add i64 %var_2_7, -8
; Matched:%var_2_14:  %var_2_14 = inttoptr i64 %var_2_13 to i64*
; %var_2_9 = inttoptr i64 %var_2_8 to i64*
; Matched:\<badref\>:  store i64 %var_2_10, i64* %var_2_14, align 8
; store i64 %var_2_4, i64* %var_2_9, align 8
%var_2_10 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_13, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_8, i64* %RBP.i, align 8
; Matched:%var_2_16:  %var_2_16 = add i64 %var_2_12, -16456
; %var_2_11 = add i64 %var_2_7, -16456
; Matched:\<badref\>:  store i64 %var_2_16, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_11, i64* %var_2_6, align 8
; Matched:%var_2_17:  %var_2_17 = icmp ult i64 %var_2_13, 16448
; %var_2_12 = icmp ult i64 %var_2_8, 16448
; Matched:%var_2_18:  %var_2_18 = zext i1 %var_2_17 to i8
; %var_2_13 = zext i1 %var_2_12 to i8
%var_2_14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
; Matched:\<badref\>:  store i8 %var_2_18, i8* %var_2_19, align 1, !tbaa !1265
; store i8 %var_2_13, i8* %var_2_14, align 1
; Matched:%var_2_20:  %var_2_20 = trunc i64 %var_2_16 to i32
; %var_2_15 = trunc i64 %var_2_11 to i32
; Matched:%var_2_21:  %var_2_21 = and i32 %var_2_20, 255
; %var_2_16 = and i32 %var_2_15, 255
; Matched:%var_2_22:  %var_2_22 = tail call i32 @llvm.ctpop.i32(i32 %var_2_21) #12
; %var_2_17 = tail call i32 @llvm.ctpop.i32(i32 %var_2_16)
; Matched:%var_2_23:  %var_2_23 = trunc i32 %var_2_22 to i8
; %var_2_18 = trunc i32 %var_2_17 to i8
; Matched:%var_2_24:  %var_2_24 = and i8 %var_2_23, 1
; %var_2_19 = and i8 %var_2_18, 1
; Matched:%var_2_25:  %var_2_25 = xor i8 %var_2_24, 1
; %var_2_20 = xor i8 %var_2_19, 1
%var_2_21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
; Matched:\<badref\>:  store i8 %var_2_25, i8* %var_2_26, align 1, !tbaa !1279
; store i8 %var_2_20, i8* %var_2_21, align 1
; Matched:%var_2_27:  %var_2_27 = xor i64 %var_2_13, %var_2_16
; %var_2_22 = xor i64 %var_2_8, %var_2_11
; Matched:%var_2_28:  %var_2_28 = lshr i64 %var_2_27, 4
; %var_2_23 = lshr i64 %var_2_22, 4
; Matched:%var_2_29:  %var_2_29 = trunc i64 %var_2_28 to i8
; %var_2_24 = trunc i64 %var_2_23 to i8
; Matched:%var_2_30:  %var_2_30 = and i8 %var_2_29, 1
; %var_2_25 = and i8 %var_2_24, 1
%var_2_26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
; Matched:\<badref\>:  store i8 %var_2_30, i8* %var_2_31, align 1, !tbaa !1280
; store i8 %var_2_25, i8* %var_2_26, align 1
; Matched:%var_2_32:  %var_2_32 = icmp eq i64 %var_2_16, 0
; %var_2_27 = icmp eq i64 %var_2_11, 0
; Matched:%var_2_33:  %var_2_33 = zext i1 %var_2_32 to i8
; %var_2_28 = zext i1 %var_2_27 to i8
%var_2_29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
; Matched:\<badref\>:  store i8 %var_2_33, i8* %var_2_34, align 1, !tbaa !1281
; store i8 %var_2_28, i8* %var_2_29, align 1
; Matched:%var_2_35:  %var_2_35 = lshr i64 %var_2_16, 63
; %var_2_30 = lshr i64 %var_2_11, 63
; Matched:%var_2_36:  %var_2_36 = trunc i64 %var_2_35 to i8
; %var_2_31 = trunc i64 %var_2_30 to i8
%var_2_32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
; Matched:\<badref\>:  store i8 %var_2_36, i8* %var_2_37, align 1, !tbaa !1282
; store i8 %var_2_31, i8* %var_2_32, align 1
; Matched:%var_2_38:  %var_2_38 = lshr i64 %var_2_13, 63
; %var_2_33 = lshr i64 %var_2_8, 63
; Matched:%var_2_39:  %var_2_39 = xor i64 %var_2_35, %var_2_38
; %var_2_34 = xor i64 %var_2_30, %var_2_33
; Matched:%var_2_40:  %var_2_40 = add nuw nsw i64 %var_2_39, %var_2_38
; %var_2_35 = add nuw nsw i64 %var_2_34, %var_2_33
; Matched:%var_2_41:  %var_2_41 = icmp eq i64 %var_2_40, 2
; %var_2_36 = icmp eq i64 %var_2_35, 2
; Matched:%var_2_42:  %var_2_42 = zext i1 %var_2_41 to i8
; %var_2_37 = zext i1 %var_2_36 to i8
%var_2_38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; Matched:\<badref\>:  store i8 %var_2_42, i8* %var_2_43, align 1, !tbaa !1283
; store i8 %var_2_37, i8* %var_2_38, align 1
%var_2_39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
%var_2_40 = bitcast [32 x %union.VectorReg]* %var_2_39 to i8*
%var_2_41 = add i64 %var_2_10, add (i64 ptrtoint (%G_0x201__rip__type* @G_0x201__rip_ to i64), i64 10)
%var_2_42 = add i64 %var_2_10, 18
store i64 %var_2_42, i64* %var_2_3, align 8
%var_2_43 = inttoptr i64 %var_2_41 to i32*
%var_2_44 = load i32, i32* %var_2_43, align 4
; Matched:%var_2_46:  %var_2_46 = bitcast [32 x %union.VectorReg]* %var_2_7 to float*
; %var_2_45 = bitcast [32 x %union.VectorReg]* %var_2_39 to float*
%var_2_46 = bitcast [32 x %union.VectorReg]* %var_2_39 to i32*
store i32 %var_2_44, i32* %var_2_46, align 1
%var_2_47 = getelementptr inbounds i8, i8* %var_2_40, i64 4
%var_2_48 = bitcast i8* %var_2_47 to float*
store float 0.000000e+00, float* %var_2_48, align 1
%var_2_49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
%var_2_50 = bitcast i64* %var_2_49 to float*
store float 0.000000e+00, float* %var_2_50, align 1
%var_2_51 = getelementptr inbounds i8, i8* %var_2_40, i64 12
%var_2_52 = bitcast i8* %var_2_51 to float*
store float 0.000000e+00, float* %var_2_52, align 1
%var_2_53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
%var_2_54 = bitcast %union.VectorReg* %var_2_53 to i8*
%var_2_55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
%var_2_56 = bitcast %union.VectorReg* %var_2_53 to i32*
store i32 0, i32* %var_2_56, align 1
%var_2_57 = getelementptr inbounds i8, i8* %var_2_54, i64 4
%var_2_58 = bitcast i8* %var_2_57 to i32*
store i32 0, i32* %var_2_58, align 1
%var_2_59 = bitcast i64* %var_2_55 to i32*
store i32 0, i32* %var_2_59, align 1
%var_2_60 = getelementptr inbounds i8, i8* %var_2_54, i64 12
%var_2_61 = bitcast i8* %var_2_60 to i32*
store i32 0, i32* %var_2_61, align 1
; Matched:%var_2_9:  %var_2_9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
; %var_2_62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
%var_2_63 = bitcast %union.VectorReg* %var_2_62 to <4 x i32>*
store <4 x i32> zeroinitializer, <4 x i32>* %var_2_63, align 1
; Matched:%var_2_63:  %var_2_63 = add i64 %var_2_12, -12
; %var_2_64 = add i64 %var_2_7, -12
; Matched:%var_2_64:  %var_2_64 = add i64 %var_2_15, 31
; %var_2_65 = add i64 %var_2_10, 31
; Matched:\<badref\>:  store i64 %var_2_64, i64* %PC, align 8
; store i64 %var_2_65, i64* %var_2_3, align 8
; Matched:%var_2_65:  %var_2_65 = inttoptr i64 %var_2_63 to i32*
; %var_2_66 = inttoptr i64 %var_2_64 to i32*
; Matched:\<badref\>:  store i32 0, i32* %var_2_65, align 4
; store i32 0, i32* %var_2_66, align 4
%var_2_67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
; Matched:  %EDI = bitcast %union.anon* %var_2_6 to i32*
; %EDI.i = bitcast %union.anon* %var_2_67 to i32*
; Matched:%var_2_66:  %var_2_66 = load i64, i64* %RBP, align 8
; %var_2_68 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_67:  %var_2_67 = add i64 %var_2_66, -8
; %var_2_69 = add i64 %var_2_68, -8
; Matched:%var_2_68:  %var_2_68 = load i32, i32* %EDI, align 4
; %var_2_70 = load i32, i32* %EDI.i, align 4
%var_2_71 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_70:  %var_2_70 = add i64 %var_2_69, 3
; %var_2_72 = add i64 %var_2_71, 3
; Matched:\<badref\>:  store i64 %var_2_176, i64* %PC, align 8
; store i64 %var_2_72, i64* %var_2_3, align 8
; Matched:%var_2_71:  %var_2_71 = inttoptr i64 %var_2_67 to i32*
; %var_2_73 = inttoptr i64 %var_2_69 to i32*
; Matched:\<badref\>:  store i32 %var_2_68, i32* %var_2_71, align 4
; store i32 %var_2_70, i32* %var_2_73, align 4
; Matched:  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
; %RSI.i149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
; Matched:%var_2_72:  %var_2_72 = load i64, i64* %RBP, align 8
; %var_2_74 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_73:  %var_2_73 = add i64 %var_2_72, -16
; %var_2_75 = add i64 %var_2_74, -16
; Matched:%var_2_74:  %var_2_74 = load i64, i64* %RSI, align 8
; %var_2_76 = load i64, i64* %RSI.i149, align 8
; Matched:%var_2_75:  %var_2_75 = load i64, i64* %PC, align 8
; %var_2_77 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_76:  %var_2_76 = add i64 %var_2_75, 4
; %var_2_78 = add i64 %var_2_77, 4
; Matched:\<badref\>:  store i64 %var_2_76, i64* %PC, align 8
; store i64 %var_2_78, i64* %var_2_3, align 8
; Matched:%var_2_77:  %var_2_77 = inttoptr i64 %var_2_73 to i64*
; %var_2_79 = inttoptr i64 %var_2_75 to i64*
; Matched:\<badref\>:  store i64 %var_2_74, i64* %var_2_77, align 8
; store i64 %var_2_76, i64* %var_2_79, align 8
; Matched:%var_2_78:  %var_2_78 = load i64, i64* %RBP, align 8
; %var_2_80 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_79:  %var_2_79 = add i64 %var_2_78, -16424
; %var_2_81 = add i64 %var_2_80, -16424
%var_2_82 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_166:  %var_2_166 = add i64 %var_2_165, 8
; %var_2_83 = add i64 %var_2_82, 8
; Matched:\<badref\>:  store i64 %var_2_166, i64* %PC, align 8
; store i64 %var_2_83, i64* %var_2_3, align 8
; Matched:%var_2_82:  %var_2_82 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_9, i64 0, i32 0, i32 0, i32 0, i64 0
; %var_2_84 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_62, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:%var_2_83:  %var_2_83 = load i64, i64* %var_2_82, align 1
; %var_2_85 = load i64, i64* %var_2_84, align 1
; Matched:%var_2_84:  %var_2_84 = inttoptr i64 %var_2_79 to i64*
; %var_2_86 = inttoptr i64 %var_2_81 to i64*
; Matched:\<badref\>:  store i64 %var_2_83, i64* %var_2_84, align 8
; store i64 %var_2_85, i64* %var_2_86, align 8
; Matched:%var_2_306:  %var_2_306 = load i64, i64* %RBP, align 8
; %var_2_87 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_307:  %var_2_307 = add i64 %var_2_306, -16428
; %var_2_88 = add i64 %var_2_87, -16428
%var_2_89 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_342:  %var_2_342 = add i64 %var_2_341, 8
; %var_2_90 = add i64 %var_2_89, 8
; Matched:\<badref\>:  store i64 %var_2_342, i64* %PC, align 8
; store i64 %var_2_90, i64* %var_2_3, align 8
%var_2_91 = bitcast %union.VectorReg* %var_2_53 to <2 x float>*
%var_2_92 = load <2 x float>, <2 x float>* %var_2_91, align 1
%var_2_93 = extractelement <2 x float> %var_2_92, i32 0
; Matched:%var_2_311:  %var_2_311 = inttoptr i64 %var_2_307 to float*
; %var_2_94 = inttoptr i64 %var_2_88 to float*
; Matched:\<badref\>:  store float %var_2_338, float* %var_2_328, align 4
; store float %var_2_93, float* %var_2_94, align 4
; Matched:%var_2_339:  %var_2_339 = load i64, i64* %RBP, align 8
; %var_2_95 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_94:  %var_2_94 = add i64 %var_2_93, -16432
; %var_2_96 = add i64 %var_2_95, -16432
%var_2_97 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_315:  %var_2_315 = add i64 %var_2_314, 8
; %var_2_98 = add i64 %var_2_97, 8
; Matched:\<badref\>:  store i64 %var_2_315, i64* %PC, align 8
; store i64 %var_2_98, i64* %var_2_3, align 8
%var_2_99 = bitcast [32 x %union.VectorReg]* %var_2_39 to <2 x float>*
%var_2_100 = load <2 x float>, <2 x float>* %var_2_99, align 1
%var_2_101 = extractelement <2 x float> %var_2_100, i32 0
; Matched:%var_2_345:  %var_2_345 = inttoptr i64 %var_2_340 to float*
; %var_2_102 = inttoptr i64 %var_2_96 to float*
; Matched:\<badref\>:  store float %var_2_355, float* %var_2_345, align 4
; store float %var_2_101, float* %var_2_102, align 4
%var_2_103 = load i64, i64* %RBP.i, align 8
%var_2_104 = add i64 %var_2_103, -20
; Matched:%var_2_103:  %var_2_103 = load i64, i64* %PC, align 8
; %var_2_105 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_104:  %var_2_104 = add i64 %var_2_103, 7
; %var_2_106 = add i64 %var_2_105, 7
; Matched:\<badref\>:  store i64 %var_2_104, i64* %PC, align 8
; store i64 %var_2_106, i64* %var_2_3, align 8
%var_2_107 = inttoptr i64 %var_2_104 to i32*
store i32 0, i32* %var_2_107, align 4
%var_2_108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
%RAX.i134 = getelementptr inbounds %union.anon, %union.anon* %var_2_108, i64 0, i32 0
%var_2_109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
%RCX.i131 = getelementptr inbounds %union.anon, %union.anon* %var_2_109, i64 0, i32 0
; Matched:  %EAX = bitcast %union.anon* %var_2_3 to i32*
; %EAX.i128 = bitcast %union.anon* %var_2_108 to i32*
%ECX.i125 = bitcast %union.anon* %var_2_109 to i32*
; Matched:%var_2_106:  %var_2_106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
; %var_2_110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
%var_2_111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
%var_2_112 = bitcast %union.anon* %var_2_111 to i32*
%var_2_113 = getelementptr inbounds %union.anon, %union.anon* %var_2_111, i64 0, i32 0
; Matched:%var_2_107:  %var_2_107 = bitcast %union.VectorReg* %var_2_8 to float*
; %var_2_114 = bitcast %union.VectorReg* %var_2_53 to float*
%var_2_115 = bitcast i8* %var_2_57 to float*
%var_2_116 = bitcast i64* %var_2_55 to float*
%var_2_117 = bitcast i8* %var_2_60 to float*
%var_2_118 = bitcast i64* %var_2_55 to <2 x i32>*
%var_2_119 = bitcast i64* %var_2_49 to <2 x i32>*
; Matched:%var_2_113:  %var_2_113 = bitcast i8* %var_2_48 to i32*
; %var_2_120 = bitcast i8* %var_2_47 to i32*
; Matched:%var_2_114:  %var_2_114 = bitcast i64* %var_2_50 to i32*
; %var_2_121 = bitcast i64* %var_2_49 to i32*
; Matched:%var_2_115:  %var_2_115 = bitcast i8* %var_2_52 to i32*
; %var_2_122 = bitcast i8* %var_2_51 to i32*
%var_2_123 = bitcast %union.VectorReg* %var_2_53 to <2 x i32>*
%RDI.i34 = getelementptr inbounds %union.anon, %union.anon* %var_2_67, i64 0, i32 0
; Matched:%var_2_117:  %var_2_117 = bitcast [32 x %union.VectorReg]* %var_2_7 to double*
; %var_2_124 = bitcast [32 x %union.VectorReg]* %var_2_39 to double*
; Matched:%var_2_118:  %var_2_118 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %var_2_7, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
; %var_2_125 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %var_2_39, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:  %.pre = load i64, i64* %PC, align 8
; %.pre = load i64, i64* %var_2_3, align 8
%var_2_126 = bitcast %union.VectorReg* %var_2_53 to <4 x i32>*
  br label %block_.L_4005d6

block_.L_4005d6:                                  ; preds = %block_.L_4006b3, %entry
; Matched:%var_2_120:  %var_2_120 = phi i64 [ %.pre, %block_400590 ], [ %var_2_204, %block_4006b3 ]
; %var_2_127 = phi i64 [ %.pre, %entry ], [ %var_2_437, %block_.L_4006b3 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %call2_4006c8, %block_.L_4006b3 ]
%var_2_128 = load i64, i64* %RBP.i, align 8
%var_2_129 = add i64 %var_2_128, -20
; Matched:%var_2_123:  %var_2_123 = add i64 %var_2_120, 7
; %var_2_130 = add i64 %var_2_127, 7
; Matched:\<badref\>:  store i64 %var_2_123, i64* %PC, align 8
; store i64 %var_2_130, i64* %var_2_3, align 8
%var_2_131 = inttoptr i64 %var_2_129 to i32*
%var_2_132 = load i32, i32* %var_2_131, align 4
%var_2_133 = add i32 %var_2_132, -500000
; Matched:%var_2_127:  %var_2_127 = icmp ult i32 %var_2_125, 500000
; %var_2_134 = icmp ult i32 %var_2_132, 500000
; Matched:%var_2_128:  %var_2_128 = zext i1 %var_2_127 to i8
; %var_2_135 = zext i1 %var_2_134 to i8
; Matched:\<badref\>:  store i8 %var_2_128, i8* %var_2_19, align 1, !tbaa !1265
; store i8 %var_2_135, i8* %var_2_14, align 1
; Matched:%var_2_129:  %var_2_129 = and i32 %var_2_126, 255
; %var_2_136 = and i32 %var_2_133, 255
; Matched:%var_2_130:  %var_2_130 = tail call i32 @llvm.ctpop.i32(i32 %var_2_129) #12
; %var_2_137 = tail call i32 @llvm.ctpop.i32(i32 %var_2_136)
; Matched:%var_2_131:  %var_2_131 = trunc i32 %var_2_130 to i8
; %var_2_138 = trunc i32 %var_2_137 to i8
; Matched:%var_2_132:  %var_2_132 = and i8 %var_2_131, 1
; %var_2_139 = and i8 %var_2_138, 1
; Matched:%var_2_133:  %var_2_133 = xor i8 %var_2_132, 1
; %var_2_140 = xor i8 %var_2_139, 1
; Matched:\<badref\>:  store i8 %var_2_133, i8* %var_2_26, align 1, !tbaa !1279
; store i8 %var_2_140, i8* %var_2_21, align 1
; Matched:%var_2_134:  %var_2_134 = xor i32 %var_2_126, %var_2_125
; %var_2_141 = xor i32 %var_2_133, %var_2_132
; Matched:%var_2_135:  %var_2_135 = lshr i32 %var_2_134, 4
; %var_2_142 = lshr i32 %var_2_141, 4
; Matched:%var_2_136:  %var_2_136 = trunc i32 %var_2_135 to i8
; %var_2_143 = trunc i32 %var_2_142 to i8
; Matched:%var_2_137:  %var_2_137 = and i8 %var_2_136, 1
; %var_2_144 = and i8 %var_2_143, 1
; Matched:\<badref\>:  store i8 %var_2_137, i8* %var_2_31, align 1, !tbaa !1280
; store i8 %var_2_144, i8* %var_2_26, align 1
; Matched:%var_2_138:  %var_2_138 = icmp eq i32 %var_2_126, 0
; %var_2_145 = icmp eq i32 %var_2_133, 0
; Matched:%var_2_139:  %var_2_139 = zext i1 %var_2_138 to i8
; %var_2_146 = zext i1 %var_2_145 to i8
; Matched:\<badref\>:  store i8 %var_2_139, i8* %var_2_34, align 1, !tbaa !1281
; store i8 %var_2_146, i8* %var_2_29, align 1
%var_2_147 = lshr i32 %var_2_133, 31
%var_2_148 = trunc i32 %var_2_147 to i8
; Matched:\<badref\>:  store i8 %var_2_141, i8* %var_2_37, align 1, !tbaa !1282
; store i8 %var_2_148, i8* %var_2_32, align 1
%var_2_149 = lshr i32 %var_2_132, 31
%var_2_150 = xor i32 %var_2_147, %var_2_149
%var_2_151 = add nuw nsw i32 %var_2_150, %var_2_149
%var_2_152 = icmp eq i32 %var_2_151, 2
; Matched:%var_2_146:  %var_2_146 = zext i1 %var_2_145 to i8
; %var_2_153 = zext i1 %var_2_152 to i8
; Matched:\<badref\>:  store i8 %var_2_146, i8* %var_2_43, align 1, !tbaa !1283
; store i8 %var_2_153, i8* %var_2_38, align 1
%var_2_154 = icmp ne i8 %var_2_148, 0
%var_2_155 = xor i1 %var_2_154, %var_2_152
; Matched:  %.v = select i1 %var_2_148, i64 13, i64 277
; %.v = select i1 %var_2_155, i64 13, i64 277
; Matched:%var_2_149:  %var_2_149 = add i64 %var_2_120, %.v
; %var_2_156 = add i64 %var_2_127, %.v
; Matched:\<badref\>:  store i64 %var_2_149, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_156, i64* %var_2_3, align 8
br i1 %var_2_155, label %block_4005e3, label %block_.L_4006eb

block_4005e3:                                     ; preds = %block_.L_4005d6
  store i64 10, i64* %RAX.i134, align 8
; Matched:%var_2_437:  %var_2_437 = add i64 %var_2_149, 8
; %var_2_157 = add i64 %var_2_156, 8
; Matched:\<badref\>:  store i64 %var_2_437, i64* %PC, align 8
; store i64 %var_2_157, i64* %var_2_3, align 8
; Matched:%var_2_438:  %var_2_438 = load i32, i32* %var_2_124, align 4
; %var_2_158 = load i32, i32* %var_2_131, align 4
; Matched:%var_2_439:  %var_2_439 = zext i32 %var_2_438 to i64
; %var_2_159 = zext i32 %var_2_158 to i64
; Matched:\<badref\>:  store i64 %var_2_439, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_159, i64* %RCX.i131, align 8
; Matched:%var_2_440:  %var_2_440 = add i64 %var_2_121, -16436
; %var_2_160 = add i64 %var_2_128, -16436
; Matched:%var_2_441:  %var_2_441 = add i64 %var_2_149, 14
; %var_2_161 = add i64 %var_2_156, 14
; Matched:\<badref\>:  store i64 %var_2_441, i64* %PC, align 8
; store i64 %var_2_161, i64* %var_2_3, align 8
; Matched:%var_2_442:  %var_2_442 = inttoptr i64 %var_2_440 to i32*
; %var_2_162 = inttoptr i64 %var_2_160 to i32*
; Matched:\<badref\>:  store i32 10, i32* %var_2_442, align 4
; store i32 10, i32* %var_2_162, align 4
%var_2_163 = load i32, i32* %ECX.i125, align 4
%var_2_164 = zext i32 %var_2_163 to i64
%var_2_165 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_444, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_164, i64* %RAX.i134, align 8
%var_2_166 = sext i32 %var_2_163 to i64
%var_2_167 = lshr i64 %var_2_166, 32
; Matched:\<badref\>:  store i64 %var_2_447, i64* %var_2_106, align 8, !tbaa !1261
; store i64 %var_2_167, i64* %var_2_110, align 8
%var_2_168 = load i64, i64* %RBP.i, align 8
%var_2_169 = add i64 %var_2_168, -16436
; Matched:%var_2_302:  %var_2_302 = add i64 %var_2_275, 9
; %var_2_170 = add i64 %var_2_165, 9
; Matched:\<badref\>:  store i64 %var_2_302, i64* %PC, align 8
; store i64 %var_2_170, i64* %var_2_3, align 8
%var_2_171 = inttoptr i64 %var_2_169 to i32*
%var_2_172 = load i32, i32* %var_2_171, align 4
; Matched:%var_2_453:  %var_2_453 = zext i32 %var_2_452 to i64
; %var_2_173 = zext i32 %var_2_172 to i64
; Matched:\<badref\>:  store i64 %var_2_453, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_173, i64* %RCX.i131, align 8
%var_2_174 = add i64 %var_2_165, 11
; Matched:\<badref\>:  store i64 %var_2_454, i64* %PC, align 8
; store i64 %var_2_174, i64* %var_2_3, align 8
%var_2_175 = sext i32 %var_2_172 to i64
%var_2_176 = shl nuw i64 %var_2_167, 32
%var_2_177 = or i64 %var_2_176, %var_2_164
%var_2_178 = sdiv i64 %var_2_177, %var_2_175
%var_2_179 = shl i64 %var_2_178, 32
%var_2_180 = ashr exact i64 %var_2_179, 32
%var_2_181 = icmp eq i64 %var_2_178, %var_2_180
br i1 %var_2_181, label %var_2_184, label %var_2_182

var_2_182:
%var_2_183 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %var_2_174, %struct.Memory* %MEMORY.0)
%.pre5 = load i32, i32* %var_2_112, align 4
; Matched:  %.pre6 = load i64, i64* %PC, align 8
; %.pre6 = load i64, i64* %var_2_3, align 8
  br label %routine_idivl__ecx.exit

var_2_184:
%var_2_185 = srem i64 %var_2_177, %var_2_175
; Matched:%var_2_466:  %var_2_466 = and i64 %var_2_458, 4294967295
; %var_2_186 = and i64 %var_2_178, 4294967295
; Matched:\<badref\>:  store i64 %var_2_466, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_186, i64* %RAX.i134, align 8
; Matched:%var_2_467:  %var_2_467 = and i64 %var_2_465, 4294967295
; %var_2_187 = and i64 %var_2_185, 4294967295
; Matched:\<badref\>:  store i64 %var_2_467, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_187, i64* %var_2_113, align 8
store i8 0, i8* %var_2_14, align 1
store i8 0, i8* %var_2_21, align 1
store i8 0, i8* %var_2_26, align 1
store i8 0, i8* %var_2_29, align 1
store i8 0, i8* %var_2_32, align 1
store i8 0, i8* %var_2_38, align 1
%var_2_188 = trunc i64 %var_2_185 to i32
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %var_2_184, %var_2_182
; Matched:%var_2_469:  %var_2_469 = phi i64 [ %.pre6, %var_2_462 ], [ %var_2_454, %var_2_464 ]
; %var_2_189 = phi i64 [ %.pre6, %var_2_182 ], [ %var_2_174, %var_2_184 ]
%var_2_190 = phi i32 [ %.pre5, %var_2_182 ], [ %var_2_188, %var_2_184 ]
%var_2_191 = phi %struct.Memory* [ %var_2_183, %var_2_182 ], [ %MEMORY.0, %var_2_184 ]
store i8 0, i8* %var_2_14, align 1
; Matched:%var_2_472:  %var_2_472 = and i32 %var_2_470, 255
; %var_2_192 = and i32 %var_2_190, 255
; Matched:%var_2_473:  %var_2_473 = tail call i32 @llvm.ctpop.i32(i32 %var_2_472) #12
; %var_2_193 = tail call i32 @llvm.ctpop.i32(i32 %var_2_192)
; Matched:%var_2_474:  %var_2_474 = trunc i32 %var_2_473 to i8
; %var_2_194 = trunc i32 %var_2_193 to i8
; Matched:%var_2_475:  %var_2_475 = and i8 %var_2_474, 1
; %var_2_195 = and i8 %var_2_194, 1
; Matched:%var_2_476:  %var_2_476 = xor i8 %var_2_475, 1
; %var_2_196 = xor i8 %var_2_195, 1
; Matched:\<badref\>:  store i8 %var_2_476, i8* %var_2_26, align 1, !tbaa !1279
; store i8 %var_2_196, i8* %var_2_21, align 1
store i8 0, i8* %var_2_26, align 1
%var_2_197 = icmp eq i32 %var_2_190, 0
; Matched:%var_2_478:  %var_2_478 = zext i1 %var_2_477 to i8
; %var_2_198 = zext i1 %var_2_197 to i8
; Matched:\<badref\>:  store i8 %var_2_478, i8* %var_2_34, align 1, !tbaa !1281
; store i8 %var_2_198, i8* %var_2_29, align 1
; Matched:%var_2_479:  %var_2_479 = lshr i32 %var_2_470, 31
; %var_2_199 = lshr i32 %var_2_190, 31
; Matched:%var_2_480:  %var_2_480 = trunc i32 %var_2_479 to i8
; %var_2_200 = trunc i32 %var_2_199 to i8
; Matched:\<badref\>:  store i8 %var_2_480, i8* %var_2_37, align 1, !tbaa !1282
; store i8 %var_2_200, i8* %var_2_32, align 1
store i8 0, i8* %var_2_38, align 1
; Matched:  %.v9 = select i1 %var_2_477, i64 41, i64 9
; %.v9 = select i1 %var_2_197, i64 41, i64 9
; Matched:%var_2_481:  %var_2_481 = add i64 %var_2_469, %.v9
; %var_2_201 = add i64 %var_2_189, %.v9
; Matched:%var_2_482:  %var_2_482 = add i64 %var_2_481, 8
; %var_2_202 = add i64 %var_2_201, 8
; Matched:\<badref\>:  store i64 %var_2_482, i64* %PC, align 8
; store i64 %var_2_202, i64* %var_2_3, align 8
br i1 %var_2_197, label %block_.L_400625, label %block_400605

block_400605:                                     ; preds = %routine_idivl__ecx.exit
%var_2_203 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x197__rip__type* @G_0x197__rip_ to i64), i64 207) to i32*), align 4
store i32 %var_2_203, i32* %var_2_46, align 1
store float 0.000000e+00, float* %var_2_48, align 1
store float 0.000000e+00, float* %var_2_50, align 1
store float 0.000000e+00, float* %var_2_52, align 1
store <4 x i32> zeroinitializer, <4 x i32>* %var_2_126, align 1
; Matched:%var_2_323:  %var_2_323 = load i64, i64* %RBP, align 8
; %var_2_204 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_86:  %var_2_86 = add i64 %var_2_85, -16428
; %var_2_205 = add i64 %var_2_204, -16428
; Matched:%var_2_308:  %var_2_308 = add i64 %var_2_481, 19
; %var_2_206 = add i64 %var_2_201, 19
; Matched:\<badref\>:  store i64 %var_2_308, i64* %PC, align 8
; store i64 %var_2_206, i64* %var_2_3, align 8
%var_2_207 = load <2 x float>, <2 x float>* %var_2_91, align 1
%var_2_208 = extractelement <2 x float> %var_2_207, i32 0
; Matched:%var_2_328:  %var_2_328 = inttoptr i64 %var_2_324 to float*
; %var_2_209 = inttoptr i64 %var_2_205 to float*
; Matched:\<badref\>:  store float %var_2_91, float* %var_2_92, align 4
; store float %var_2_208, float* %var_2_209, align 4
; Matched:%var_2_93:  %var_2_93 = load i64, i64* %RBP, align 8
; %var_2_210 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_313:  %var_2_313 = add i64 %var_2_312, -16432
; %var_2_211 = add i64 %var_2_210, -16432
%var_2_212 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_401:  %var_2_401 = add i64 %var_2_397, 8
; %var_2_213 = add i64 %var_2_212, 8
; Matched:\<badref\>:  store i64 %var_2_401, i64* %PC, align 8
; store i64 %var_2_213, i64* %var_2_3, align 8
%var_2_214 = load <2 x float>, <2 x float>* %var_2_99, align 1
%var_2_215 = extractelement <2 x float> %var_2_214, i32 0
; Matched:%var_2_100:  %var_2_100 = inttoptr i64 %var_2_94 to float*
; %var_2_216 = inttoptr i64 %var_2_211 to float*
; Matched:\<badref\>:  store float %var_2_99, float* %var_2_100, align 4
; store float %var_2_215, float* %var_2_216, align 4
; Matched:%var_2_319:  %var_2_319 = load i64, i64* %PC, align 8
; %var_2_217 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_320:  %var_2_320 = add i64 %var_2_319, 53
; %var_2_218 = add i64 %var_2_217, 53
; Matched:\<badref\>:  store i64 %var_2_320, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_218, i64* %var_2_3, align 8
  br label %block_.L_400655

block_.L_400625:                                  ; preds = %routine_idivl__ecx.exit
%var_2_219 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x17b__rip__type* @G_0x17b__rip_ to i64), i64 179) to i32*), align 4
store i32 %var_2_219, i32* %var_2_46, align 1
store float 0.000000e+00, float* %var_2_48, align 1
store float 0.000000e+00, float* %var_2_50, align 1
store float 0.000000e+00, float* %var_2_52, align 1
; Matched:%var_2_322:  %var_2_322 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_4007a0__rodata_type* @seg_4007a0__rodata to i64), i64 12) to i32*), align 4
; %var_2_220 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x177__rip__type* @G_0x177__rip_ to i64), i64 175) to i32*), align 4
; Matched:\<badref\>:  store i32 %var_2_322, i32* %var_2_56, align 1, !tbaa !1284
; store i32 %var_2_220, i32* %var_2_56, align 1
store float 0.000000e+00, float* %var_2_115, align 1
store float 0.000000e+00, float* %var_2_116, align 1
store float 0.000000e+00, float* %var_2_117, align 1
; Matched:%var_2_85:  %var_2_85 = load i64, i64* %RBP, align 8
; %var_2_221 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_324:  %var_2_324 = add i64 %var_2_323, -16428
; %var_2_222 = add i64 %var_2_221, -16428
; Matched:%var_2_325:  %var_2_325 = add i64 %var_2_481, 24
; %var_2_223 = add i64 %var_2_201, 24
; Matched:\<badref\>:  store i64 %var_2_325, i64* %PC, align 8
; store i64 %var_2_223, i64* %var_2_3, align 8
%var_2_224 = load <2 x float>, <2 x float>* %var_2_91, align 1
%var_2_225 = load <2 x i32>, <2 x i32>* %var_2_118, align 1
; Matched:%var_2_92:  %var_2_92 = inttoptr i64 %var_2_86 to float*
; %var_2_226 = inttoptr i64 %var_2_222 to float*
; Matched:%var_2_329:  %var_2_329 = load float, float* %var_2_328, align 4
; %var_2_227 = load float, float* %var_2_226, align 4
%var_2_228 = extractelement <2 x float> %var_2_224, i32 0
; Matched:%var_2_331:  %var_2_331 = fadd float %var_2_330, %var_2_329
; %var_2_229 = fadd float %var_2_228, %var_2_227
; Matched:\<badref\>:  store float %var_2_331, float* %var_2_107, align 1, !tbaa !1284
; store float %var_2_229, float* %var_2_114, align 1
%var_2_230 = bitcast <2 x float> %var_2_224 to <2 x i32>
%var_2_231 = extractelement <2 x i32> %var_2_230, i32 1
; Matched:\<badref\>:  store i32 %var_2_333, i32* %var_2_58, align 1, !tbaa !1284
; store i32 %var_2_231, i32* %var_2_58, align 1
%var_2_232 = extractelement <2 x i32> %var_2_225, i32 0
; Matched:\<badref\>:  store i32 %var_2_251, i32* %var_2_59, align 1, !tbaa !1284
; store i32 %var_2_232, i32* %var_2_59, align 1
%var_2_233 = extractelement <2 x i32> %var_2_225, i32 1
; Matched:\<badref\>:  store i32 %var_2_252, i32* %var_2_61, align 1, !tbaa !1284
; store i32 %var_2_233, i32* %var_2_61, align 1
; Matched:%var_2_336:  %var_2_336 = add i64 %var_2_481, 32
; %var_2_234 = add i64 %var_2_201, 32
; Matched:\<badref\>:  store i64 %var_2_336, i64* %PC, align 8
; store i64 %var_2_234, i64* %var_2_3, align 8
%var_2_235 = load <2 x float>, <2 x float>* %var_2_91, align 1
%var_2_236 = extractelement <2 x float> %var_2_235, i32 0
; Matched:\<badref\>:  store float %var_2_310, float* %var_2_311, align 4
; store float %var_2_236, float* %var_2_226, align 4
; Matched:%var_2_312:  %var_2_312 = load i64, i64* %RBP, align 8
; %var_2_237 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_340:  %var_2_340 = add i64 %var_2_339, -16432
; %var_2_238 = add i64 %var_2_237, -16432
%var_2_239 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_88:  %var_2_88 = add i64 %var_2_87, 8
; %var_2_240 = add i64 %var_2_239, 8
; Matched:\<badref\>:  store i64 %var_2_88, i64* %PC, align 8
; store i64 %var_2_240, i64* %var_2_3, align 8
%var_2_241 = load <2 x float>, <2 x float>* %var_2_99, align 1
%var_2_242 = load <2 x i32>, <2 x i32>* %var_2_119, align 1
; Matched:%var_2_318:  %var_2_318 = inttoptr i64 %var_2_313 to float*
; %var_2_243 = inttoptr i64 %var_2_238 to float*
; Matched:%var_2_346:  %var_2_346 = load float, float* %var_2_345, align 4
; %var_2_244 = load float, float* %var_2_243, align 4
%var_2_245 = extractelement <2 x float> %var_2_241, i32 0
; Matched:%var_2_348:  %var_2_348 = fadd float %var_2_347, %var_2_346
; %var_2_246 = fadd float %var_2_245, %var_2_244
; Matched:\<badref\>:  store float %var_2_348, float* %var_2_46, align 1, !tbaa !1284
; store float %var_2_246, float* %var_2_45, align 1
%var_2_247 = bitcast <2 x float> %var_2_241 to <2 x i32>
%var_2_248 = extractelement <2 x i32> %var_2_247, i32 1
; Matched:\<badref\>:  store i32 %var_2_224, i32* %var_2_113, align 1, !tbaa !1284
; store i32 %var_2_248, i32* %var_2_120, align 1
%var_2_249 = extractelement <2 x i32> %var_2_242, i32 0
; Matched:\<badref\>:  store i32 %var_2_225, i32* %var_2_114, align 1, !tbaa !1284
; store i32 %var_2_249, i32* %var_2_121, align 1
%var_2_250 = extractelement <2 x i32> %var_2_242, i32 1
; Matched:\<badref\>:  store i32 %var_2_262, i32* %var_2_115, align 1, !tbaa !1284
; store i32 %var_2_250, i32* %var_2_122, align 1
; Matched:%var_2_171:  %var_2_171 = add i64 %var_2_165, 16
; %var_2_251 = add i64 %var_2_239, 16
; Matched:\<badref\>:  store i64 %var_2_353, i64* %PC, align 8
; store i64 %var_2_251, i64* %var_2_3, align 8
%var_2_252 = load <2 x float>, <2 x float>* %var_2_99, align 1
%var_2_253 = extractelement <2 x float> %var_2_252, i32 0
; Matched:\<badref\>:  store float %var_2_317, float* %var_2_318, align 4
; store float %var_2_253, float* %var_2_243, align 4
; Matched:  %.pre7 = load i64, i64* %PC, align 8
; %.pre7 = load i64, i64* %var_2_3, align 8
  br label %block_.L_400655

block_.L_400655:                                  ; preds = %block_.L_400625, %block_400605
; Matched:%var_2_150:  %var_2_150 = phi i64 [ %.pre7, %block_400625 ], [ %var_2_320, %block_400605 ]
; %var_2_254 = phi i64 [ %.pre7, %block_.L_400625 ], [ %var_2_218, %block_400605 ]
%var_2_255 = load i64, i64* %RBP.i, align 8
%var_2_256 = add i64 %var_2_255, -24
; Matched:%var_2_153:  %var_2_153 = add i64 %var_2_150, 7
; %var_2_257 = add i64 %var_2_254, 7
; Matched:\<badref\>:  store i64 %var_2_153, i64* %PC, align 8
; store i64 %var_2_257, i64* %var_2_3, align 8
%var_2_258 = inttoptr i64 %var_2_256 to i32*
store i32 0, i32* %var_2_258, align 4
%.pre8 = load i64, i64* %var_2_3, align 8
  br label %block_.L_40065c

block_.L_40065c:                                  ; preds = %block_400669, %block_.L_400655
%var_2_259 = phi i64 [ %var_2_388, %block_400669 ], [ %.pre8, %block_.L_400655 ]
%var_2_260 = load i64, i64* %RBP.i, align 8
%var_2_261 = add i64 %var_2_260, -24
; Matched:%var_2_359:  %var_2_359 = add i64 %var_2_356, 7
; %var_2_262 = add i64 %var_2_259, 7
; Matched:\<badref\>:  store i64 %var_2_359, i64* %PC, align 8
; store i64 %var_2_262, i64* %var_2_3, align 8
%var_2_263 = inttoptr i64 %var_2_261 to i32*
%var_2_264 = load i32, i32* %var_2_263, align 4
%var_2_265 = add i32 %var_2_264, -2048
; Matched:%var_2_363:  %var_2_363 = icmp ult i32 %var_2_361, 2048
; %var_2_266 = icmp ult i32 %var_2_264, 2048
; Matched:%var_2_364:  %var_2_364 = zext i1 %var_2_363 to i8
; %var_2_267 = zext i1 %var_2_266 to i8
; Matched:\<badref\>:  store i8 %var_2_364, i8* %var_2_19, align 1, !tbaa !1265
; store i8 %var_2_267, i8* %var_2_14, align 1
; Matched:%var_2_365:  %var_2_365 = and i32 %var_2_362, 255
; %var_2_268 = and i32 %var_2_265, 255
; Matched:%var_2_366:  %var_2_366 = tail call i32 @llvm.ctpop.i32(i32 %var_2_365) #12
; %var_2_269 = tail call i32 @llvm.ctpop.i32(i32 %var_2_268)
; Matched:%var_2_367:  %var_2_367 = trunc i32 %var_2_366 to i8
; %var_2_270 = trunc i32 %var_2_269 to i8
; Matched:%var_2_368:  %var_2_368 = and i8 %var_2_367, 1
; %var_2_271 = and i8 %var_2_270, 1
; Matched:%var_2_369:  %var_2_369 = xor i8 %var_2_368, 1
; %var_2_272 = xor i8 %var_2_271, 1
; Matched:\<badref\>:  store i8 %var_2_369, i8* %var_2_26, align 1, !tbaa !1279
; store i8 %var_2_272, i8* %var_2_21, align 1
; Matched:%var_2_370:  %var_2_370 = xor i32 %var_2_362, %var_2_361
; %var_2_273 = xor i32 %var_2_265, %var_2_264
; Matched:%var_2_371:  %var_2_371 = lshr i32 %var_2_370, 4
; %var_2_274 = lshr i32 %var_2_273, 4
; Matched:%var_2_372:  %var_2_372 = trunc i32 %var_2_371 to i8
; %var_2_275 = trunc i32 %var_2_274 to i8
; Matched:%var_2_373:  %var_2_373 = and i8 %var_2_372, 1
; %var_2_276 = and i8 %var_2_275, 1
; Matched:\<badref\>:  store i8 %var_2_373, i8* %var_2_31, align 1, !tbaa !1280
; store i8 %var_2_276, i8* %var_2_26, align 1
; Matched:%var_2_374:  %var_2_374 = icmp eq i32 %var_2_362, 0
; %var_2_277 = icmp eq i32 %var_2_265, 0
; Matched:%var_2_375:  %var_2_375 = zext i1 %var_2_374 to i8
; %var_2_278 = zext i1 %var_2_277 to i8
; Matched:\<badref\>:  store i8 %var_2_375, i8* %var_2_34, align 1, !tbaa !1281
; store i8 %var_2_278, i8* %var_2_29, align 1
%var_2_279 = lshr i32 %var_2_265, 31
%var_2_280 = trunc i32 %var_2_279 to i8
; Matched:\<badref\>:  store i8 %var_2_377, i8* %var_2_37, align 1, !tbaa !1282
; store i8 %var_2_280, i8* %var_2_32, align 1
%var_2_281 = lshr i32 %var_2_264, 31
%var_2_282 = xor i32 %var_2_279, %var_2_281
%var_2_283 = add nuw nsw i32 %var_2_282, %var_2_281
%var_2_284 = icmp eq i32 %var_2_283, 2
; Matched:%var_2_382:  %var_2_382 = zext i1 %var_2_381 to i8
; %var_2_285 = zext i1 %var_2_284 to i8
; Matched:\<badref\>:  store i8 %var_2_382, i8* %var_2_43, align 1, !tbaa !1283
; store i8 %var_2_285, i8* %var_2_38, align 1
%var_2_286 = icmp ne i8 %var_2_280, 0
%var_2_287 = xor i1 %var_2_286, %var_2_284
%.v10 = select i1 %var_2_287, i64 13, i64 87
%var_2_288 = add i64 %var_2_259, %.v10
; Matched:\<badref\>:  store i64 %var_2_385, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_288, i64* %var_2_3, align 8
br i1 %var_2_287, label %block_400669, label %block_.L_4006b3

block_400669:                                     ; preds = %block_.L_40065c
; Matched:%var_2_205:  %var_2_205 = add i64 %var_2_357, -16428
; %var_2_289 = add i64 %var_2_260, -16428
; Matched:%var_2_206:  %var_2_206 = add i64 %var_2_385, 8
; %var_2_290 = add i64 %var_2_288, 8
; Matched:\<badref\>:  store i64 %var_2_206, i64* %PC, align 8
; store i64 %var_2_290, i64* %var_2_3, align 8
; Matched:%var_2_207:  %var_2_207 = inttoptr i64 %var_2_205 to i32*
; %var_2_291 = inttoptr i64 %var_2_289 to i32*
; Matched:%var_2_208:  %var_2_208 = load i32, i32* %var_2_207, align 4
; %var_2_292 = load i32, i32* %var_2_291, align 4
; Matched:\<badref\>:  store i32 %var_2_208, i32* %var_2_47, align 1, !tbaa !1284
; store i32 %var_2_292, i32* %var_2_46, align 1
store float 0.000000e+00, float* %var_2_48, align 1
store float 0.000000e+00, float* %var_2_50, align 1
store float 0.000000e+00, float* %var_2_52, align 1
; Matched:%var_2_209:  %var_2_209 = add i64 %var_2_385, 13
; %var_2_293 = add i64 %var_2_288, 13
; Matched:\<badref\>:  store i64 %var_2_209, i64* %PC, align 8
; store i64 %var_2_293, i64* %var_2_3, align 8
%var_2_294 = load <2 x i32>, <2 x i32>* %var_2_123, align 1
%var_2_295 = load <2 x i32>, <2 x i32>* %var_2_118, align 1
; Matched:%var_2_248:  %var_2_248 = load i32, i32* %var_2_247, align 4
; %var_2_296 = load i32, i32* %var_2_263, align 4
; Matched:%var_2_213:  %var_2_213 = sitofp i32 %var_2_212 to float
; %var_2_297 = sitofp i32 %var_2_296 to float
; Matched:\<badref\>:  store float %var_2_213, float* %var_2_107, align 1, !tbaa !1284
; store float %var_2_297, float* %var_2_114, align 1
%var_2_298 = extractelement <2 x i32> %var_2_294, i32 1
; Matched:\<badref\>:  store i32 %var_2_250, i32* %var_2_58, align 1, !tbaa !1284
; store i32 %var_2_298, i32* %var_2_58, align 1
%var_2_299 = extractelement <2 x i32> %var_2_295, i32 0
; Matched:\<badref\>:  store i32 %var_2_334, i32* %var_2_59, align 1, !tbaa !1284
; store i32 %var_2_299, i32* %var_2_59, align 1
%var_2_300 = extractelement <2 x i32> %var_2_295, i32 1
; Matched:\<badref\>:  store i32 %var_2_335, i32* %var_2_61, align 1, !tbaa !1284
; store i32 %var_2_300, i32* %var_2_61, align 1
%var_2_301 = load <2 x float>, <2 x float>* %var_2_99, align 1
%var_2_302 = load <2 x i32>, <2 x i32>* %var_2_119, align 1
%var_2_303 = load <2 x float>, <2 x float>* %var_2_91, align 1
%var_2_304 = extractelement <2 x float> %var_2_301, i32 0
%var_2_305 = extractelement <2 x float> %var_2_303, i32 0
; Matched:%var_2_222:  %var_2_222 = fadd float %var_2_220, %var_2_221
; %var_2_306 = fadd float %var_2_304, %var_2_305
; Matched:\<badref\>:  store float %var_2_258, float* %var_2_46, align 1, !tbaa !1284
; store float %var_2_306, float* %var_2_45, align 1
%var_2_307 = bitcast <2 x float> %var_2_301 to <2 x i32>
%var_2_308 = extractelement <2 x i32> %var_2_307, i32 1
; Matched:\<badref\>:  store i32 %var_2_350, i32* %var_2_113, align 1, !tbaa !1284
; store i32 %var_2_308, i32* %var_2_120, align 1
%var_2_309 = extractelement <2 x i32> %var_2_302, i32 0
; Matched:\<badref\>:  store i32 %var_2_351, i32* %var_2_114, align 1, !tbaa !1284
; store i32 %var_2_309, i32* %var_2_121, align 1
%var_2_310 = extractelement <2 x i32> %var_2_302, i32 1
; Matched:\<badref\>:  store i32 %var_2_226, i32* %var_2_115, align 1, !tbaa !1284
; store i32 %var_2_310, i32* %var_2_122, align 1
; Matched:%var_2_227:  %var_2_227 = add i64 %var_2_385, 21
; %var_2_311 = add i64 %var_2_288, 21
; Matched:\<badref\>:  store i64 %var_2_227, i64* %PC, align 8
; store i64 %var_2_311, i64* %var_2_3, align 8
; Matched:%var_2_228:  %var_2_228 = load i32, i32* %var_2_360, align 4
; %var_2_312 = load i32, i32* %var_2_263, align 4
; Matched:%var_2_229:  %var_2_229 = sext i32 %var_2_228 to i64
; %var_2_313 = sext i32 %var_2_312 to i64
; Matched:\<badref\>:  store i64 %var_2_229, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_313, i64* %RAX.i134, align 8
; Matched:%var_2_230:  %var_2_230 = shl nsw i64 %var_2_229, 2
; %var_2_314 = shl nsw i64 %var_2_313, 2
; Matched:%var_2_231:  %var_2_231 = add i64 %var_2_357, -8224
; %var_2_315 = add i64 %var_2_260, -8224
; Matched:%var_2_232:  %var_2_232 = add i64 %var_2_231, %var_2_230
; %var_2_316 = add i64 %var_2_315, %var_2_314
; Matched:%var_2_233:  %var_2_233 = add i64 %var_2_385, 30
; %var_2_317 = add i64 %var_2_288, 30
; Matched:\<badref\>:  store i64 %var_2_233, i64* %PC, align 8
; store i64 %var_2_317, i64* %var_2_3, align 8
%var_2_318 = load <2 x float>, <2 x float>* %var_2_99, align 1
%var_2_319 = extractelement <2 x float> %var_2_318, i32 0
; Matched:%var_2_236:  %var_2_236 = inttoptr i64 %var_2_232 to float*
; %var_2_320 = inttoptr i64 %var_2_316 to float*
; Matched:\<badref\>:  store float %var_2_235, float* %var_2_236, align 4
; store float %var_2_319, float* %var_2_320, align 4
; Matched:%var_2_357:  %var_2_357 = load i64, i64* %RBP, align 8
; %var_2_321 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_238:  %var_2_238 = add i64 %var_2_237, -16432
; %var_2_322 = add i64 %var_2_321, -16432
%var_2_323 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_81:  %var_2_81 = add i64 %var_2_80, 8
; %var_2_324 = add i64 %var_2_323, 8
; Matched:\<badref\>:  store i64 %var_2_81, i64* %PC, align 8
; store i64 %var_2_324, i64* %var_2_3, align 8
; Matched:%var_2_241:  %var_2_241 = inttoptr i64 %var_2_238 to i32*
; %var_2_325 = inttoptr i64 %var_2_322 to i32*
; Matched:%var_2_242:  %var_2_242 = load i32, i32* %var_2_241, align 4
; %var_2_326 = load i32, i32* %var_2_325, align 4
; Matched:\<badref\>:  store i32 %var_2_242, i32* %var_2_47, align 1, !tbaa !1284
; store i32 %var_2_326, i32* %var_2_46, align 1
store float 0.000000e+00, float* %var_2_48, align 1
store float 0.000000e+00, float* %var_2_50, align 1
store float 0.000000e+00, float* %var_2_52, align 1
; Matched:%var_2_358:  %var_2_358 = add i64 %var_2_357, -24
; %var_2_327 = add i64 %var_2_321, -24
; Matched:%var_2_244:  %var_2_244 = add i64 %var_2_239, 13
; %var_2_328 = add i64 %var_2_323, 13
; Matched:\<badref\>:  store i64 %var_2_244, i64* %PC, align 8
; store i64 %var_2_328, i64* %var_2_3, align 8
%var_2_329 = load <2 x i32>, <2 x i32>* %var_2_123, align 1
%var_2_330 = load <2 x i32>, <2 x i32>* %var_2_118, align 1
; Matched:%var_2_360:  %var_2_360 = inttoptr i64 %var_2_358 to i32*
; %var_2_331 = inttoptr i64 %var_2_327 to i32*
; Matched:%var_2_212:  %var_2_212 = load i32, i32* %var_2_360, align 4
; %var_2_332 = load i32, i32* %var_2_331, align 4
; Matched:%var_2_249:  %var_2_249 = sitofp i32 %var_2_248 to float
; %var_2_333 = sitofp i32 %var_2_332 to float
; Matched:\<badref\>:  store float %var_2_249, float* %var_2_107, align 1, !tbaa !1284
; store float %var_2_333, float* %var_2_114, align 1
%var_2_334 = extractelement <2 x i32> %var_2_329, i32 1
; Matched:\<badref\>:  store i32 %var_2_214, i32* %var_2_58, align 1, !tbaa !1284
; store i32 %var_2_334, i32* %var_2_58, align 1
%var_2_335 = extractelement <2 x i32> %var_2_330, i32 0
; Matched:\<badref\>:  store i32 %var_2_215, i32* %var_2_59, align 1, !tbaa !1284
; store i32 %var_2_335, i32* %var_2_59, align 1
%var_2_336 = extractelement <2 x i32> %var_2_330, i32 1
; Matched:\<badref\>:  store i32 %var_2_216, i32* %var_2_61, align 1, !tbaa !1284
; store i32 %var_2_336, i32* %var_2_61, align 1
%var_2_337 = load <2 x float>, <2 x float>* %var_2_99, align 1
%var_2_338 = load <2 x i32>, <2 x i32>* %var_2_119, align 1
%var_2_339 = load <2 x float>, <2 x float>* %var_2_91, align 1
%var_2_340 = extractelement <2 x float> %var_2_337, i32 0
%var_2_341 = extractelement <2 x float> %var_2_339, i32 0
; Matched:%var_2_258:  %var_2_258 = fadd float %var_2_256, %var_2_257
; %var_2_342 = fadd float %var_2_340, %var_2_341
; Matched:\<badref\>:  store float %var_2_222, float* %var_2_46, align 1, !tbaa !1284
; store float %var_2_342, float* %var_2_45, align 1
%var_2_343 = bitcast <2 x float> %var_2_337 to <2 x i32>
%var_2_344 = extractelement <2 x i32> %var_2_343, i32 1
; Matched:\<badref\>:  store i32 %var_2_260, i32* %var_2_113, align 1, !tbaa !1284
; store i32 %var_2_344, i32* %var_2_120, align 1
%var_2_345 = extractelement <2 x i32> %var_2_338, i32 0
; Matched:\<badref\>:  store i32 %var_2_261, i32* %var_2_114, align 1, !tbaa !1284
; store i32 %var_2_345, i32* %var_2_121, align 1
%var_2_346 = extractelement <2 x i32> %var_2_338, i32 1
; Matched:\<badref\>:  store i32 %var_2_352, i32* %var_2_115, align 1, !tbaa !1284
; store i32 %var_2_346, i32* %var_2_122, align 1
; Matched:%var_2_263:  %var_2_263 = add i64 %var_2_239, 21
; %var_2_347 = add i64 %var_2_323, 21
; Matched:\<badref\>:  store i64 %var_2_263, i64* %PC, align 8
; store i64 %var_2_347, i64* %var_2_3, align 8
; Matched:%var_2_264:  %var_2_264 = load i32, i32* %var_2_247, align 4
; %var_2_348 = load i32, i32* %var_2_331, align 4
; Matched:%var_2_265:  %var_2_265 = sext i32 %var_2_264 to i64
; %var_2_349 = sext i32 %var_2_348 to i64
; Matched:\<badref\>:  store i64 %var_2_265, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_349, i64* %RAX.i134, align 8
; Matched:%var_2_266:  %var_2_266 = shl nsw i64 %var_2_265, 2
; %var_2_350 = shl nsw i64 %var_2_349, 2
; Matched:%var_2_267:  %var_2_267 = add i64 %var_2_237, -16416
; %var_2_351 = add i64 %var_2_321, -16416
; Matched:%var_2_268:  %var_2_268 = add i64 %var_2_267, %var_2_266
; %var_2_352 = add i64 %var_2_351, %var_2_350
; Matched:%var_2_269:  %var_2_269 = add i64 %var_2_239, 30
; %var_2_353 = add i64 %var_2_323, 30
; Matched:\<badref\>:  store i64 %var_2_269, i64* %PC, align 8
; store i64 %var_2_353, i64* %var_2_3, align 8
%var_2_354 = load <2 x float>, <2 x float>* %var_2_99, align 1
%var_2_355 = extractelement <2 x float> %var_2_354, i32 0
; Matched:%var_2_272:  %var_2_272 = inttoptr i64 %var_2_268 to float*
; %var_2_356 = inttoptr i64 %var_2_352 to float*
; Matched:\<badref\>:  store float %var_2_271, float* %var_2_272, align 4
; store float %var_2_355, float* %var_2_356, align 4
; Matched:%var_2_273:  %var_2_273 = load i64, i64* %RBP, align 8
; %var_2_357 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_274:  %var_2_274 = add i64 %var_2_273, -24
; %var_2_358 = add i64 %var_2_357, -24
%var_2_359 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_176:  %var_2_176 = add i64 %var_2_175, 3
; %var_2_360 = add i64 %var_2_359, 3
; Matched:\<badref\>:  store i64 %var_2_276, i64* %PC, align 8
; store i64 %var_2_360, i64* %var_2_3, align 8
; Matched:%var_2_277:  %var_2_277 = inttoptr i64 %var_2_274 to i32*
; %var_2_361 = inttoptr i64 %var_2_358 to i32*
; Matched:%var_2_278:  %var_2_278 = load i32, i32* %var_2_277, align 4
; %var_2_362 = load i32, i32* %var_2_361, align 4
; Matched:%var_2_279:  %var_2_279 = add i32 %var_2_278, 1
; %var_2_363 = add i32 %var_2_362, 1
; Matched:%var_2_280:  %var_2_280 = zext i32 %var_2_279 to i64
; %var_2_364 = zext i32 %var_2_363 to i64
; Matched:\<badref\>:  store i64 %var_2_280, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_364, i64* %RAX.i134, align 8
; Matched:%var_2_281:  %var_2_281 = icmp eq i32 %var_2_278, -1
; %var_2_365 = icmp eq i32 %var_2_362, -1
; Matched:%var_2_282:  %var_2_282 = icmp eq i32 %var_2_279, 0
; %var_2_366 = icmp eq i32 %var_2_363, 0
; Matched:%var_2_283:  %var_2_283 = or i1 %var_2_281, %var_2_282
; %var_2_367 = or i1 %var_2_365, %var_2_366
; Matched:%var_2_284:  %var_2_284 = zext i1 %var_2_283 to i8
; %var_2_368 = zext i1 %var_2_367 to i8
; Matched:\<badref\>:  store i8 %var_2_284, i8* %var_2_19, align 1, !tbaa !1265
; store i8 %var_2_368, i8* %var_2_14, align 1
; Matched:%var_2_285:  %var_2_285 = and i32 %var_2_279, 255
; %var_2_369 = and i32 %var_2_363, 255
; Matched:%var_2_286:  %var_2_286 = tail call i32 @llvm.ctpop.i32(i32 %var_2_285) #12
; %var_2_370 = tail call i32 @llvm.ctpop.i32(i32 %var_2_369)
; Matched:%var_2_287:  %var_2_287 = trunc i32 %var_2_286 to i8
; %var_2_371 = trunc i32 %var_2_370 to i8
; Matched:%var_2_288:  %var_2_288 = and i8 %var_2_287, 1
; %var_2_372 = and i8 %var_2_371, 1
; Matched:%var_2_289:  %var_2_289 = xor i8 %var_2_288, 1
; %var_2_373 = xor i8 %var_2_372, 1
; Matched:\<badref\>:  store i8 %var_2_289, i8* %var_2_26, align 1, !tbaa !1279
; store i8 %var_2_373, i8* %var_2_21, align 1
; Matched:%var_2_290:  %var_2_290 = xor i32 %var_2_279, %var_2_278
; %var_2_374 = xor i32 %var_2_363, %var_2_362
; Matched:%var_2_291:  %var_2_291 = lshr i32 %var_2_290, 4
; %var_2_375 = lshr i32 %var_2_374, 4
; Matched:%var_2_292:  %var_2_292 = trunc i32 %var_2_291 to i8
; %var_2_376 = trunc i32 %var_2_375 to i8
; Matched:%var_2_293:  %var_2_293 = and i8 %var_2_292, 1
; %var_2_377 = and i8 %var_2_376, 1
; Matched:\<badref\>:  store i8 %var_2_293, i8* %var_2_31, align 1, !tbaa !1280
; store i8 %var_2_377, i8* %var_2_26, align 1
; Matched:%var_2_294:  %var_2_294 = zext i1 %var_2_282 to i8
; %var_2_378 = zext i1 %var_2_366 to i8
; Matched:\<badref\>:  store i8 %var_2_294, i8* %var_2_34, align 1, !tbaa !1281
; store i8 %var_2_378, i8* %var_2_29, align 1
; Matched:%var_2_295:  %var_2_295 = lshr i32 %var_2_279, 31
; %var_2_379 = lshr i32 %var_2_363, 31
; Matched:%var_2_296:  %var_2_296 = trunc i32 %var_2_295 to i8
; %var_2_380 = trunc i32 %var_2_379 to i8
; Matched:\<badref\>:  store i8 %var_2_296, i8* %var_2_37, align 1, !tbaa !1282
; store i8 %var_2_380, i8* %var_2_32, align 1
; Matched:%var_2_297:  %var_2_297 = lshr i32 %var_2_278, 31
; %var_2_381 = lshr i32 %var_2_362, 31
; Matched:%var_2_298:  %var_2_298 = xor i32 %var_2_295, %var_2_297
; %var_2_382 = xor i32 %var_2_379, %var_2_381
; Matched:%var_2_299:  %var_2_299 = add nuw nsw i32 %var_2_298, %var_2_295
; %var_2_383 = add nuw nsw i32 %var_2_382, %var_2_379
; Matched:%var_2_300:  %var_2_300 = icmp eq i32 %var_2_299, 2
; %var_2_384 = icmp eq i32 %var_2_383, 2
; Matched:%var_2_301:  %var_2_301 = zext i1 %var_2_300 to i8
; %var_2_385 = zext i1 %var_2_384 to i8
; Matched:\<badref\>:  store i8 %var_2_301, i8* %var_2_43, align 1, !tbaa !1283
; store i8 %var_2_385, i8* %var_2_38, align 1
; Matched:%var_2_202:  %var_2_202 = add i64 %var_2_175, 9
; %var_2_386 = add i64 %var_2_359, 9
; Matched:\<badref\>:  store i64 %var_2_202, i64* %PC, align 8
; store i64 %var_2_386, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_279, i32* %var_2_277, align 4
; store i32 %var_2_363, i32* %var_2_361, align 4
%var_2_387 = load i64, i64* %var_2_3, align 8
%var_2_388 = add i64 %var_2_387, -82
; Matched:\<badref\>:  store i64 %var_2_304, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_388, i64* %var_2_3, align 8
  br label %block_.L_40065c

block_.L_4006b3:                                  ; preds = %block_.L_40065c
  store i64 2048, i64* %RAX.i134, align 8
store i64 2048, i64* %var_2_113, align 8
; Matched:%var_2_155:  %var_2_155 = add i64 %var_2_357, -16416
; %var_2_389 = add i64 %var_2_260, -16416
; Matched:\<badref\>:  store i64 %var_2_155, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_389, i64* %RSI.i149, align 8
; Matched:%var_2_156:  %var_2_156 = add i64 %var_2_357, -8224
; %var_2_390 = add i64 %var_2_260, -8224
; Matched:\<badref\>:  store i64 %var_2_156, i64* %RDI, align 8, !tbaa !1261
; store i64 %var_2_390, i64* %RDI.i34, align 8
%var_2_391 = add i64 %var_2_288, -403
; Matched:%var_2_158:  %var_2_158 = add i64 %var_2_385, 26
; %var_2_392 = add i64 %var_2_288, 26
; Matched:%var_2_159:  %var_2_159 = load i64, i64* %RSP, align 8, !tbaa !1261
; %var_2_393 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_160:  %var_2_160 = add i64 %var_2_159, -8
; %var_2_394 = add i64 %var_2_393, -8
; Matched:%var_2_161:  %var_2_161 = inttoptr i64 %var_2_160 to i64*
; %var_2_395 = inttoptr i64 %var_2_394 to i64*
; Matched:\<badref\>:  store i64 %var_2_158, i64* %var_2_161, align 8
; store i64 %var_2_392, i64* %var_2_395, align 8
; Matched:\<badref\>:  store i64 %var_2_394, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_394, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_157, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_391, i64* %var_2_3, align 8
%call2_4006c8 = tail call %struct.Memory* @sub_400520.loop(%struct.State* nonnull %0, i64 %var_2_391, %struct.Memory* %var_2_191)
; Matched:%var_2_163:  %var_2_163 = load i64, i64* %RBP, align 8
; %var_2_396 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_164:  %var_2_164 = add i64 %var_2_163, -16424
; %var_2_397 = add i64 %var_2_396, -16424
%var_2_398 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_96:  %var_2_96 = add i64 %var_2_95, 8
; %var_2_399 = add i64 %var_2_398, 8
; Matched:\<badref\>:  store i64 %var_2_96, i64* %PC, align 8
; store i64 %var_2_399, i64* %var_2_3, align 8
; Matched:%var_2_167:  %var_2_167 = load double, double* %var_2_117, align 1
; %var_2_400 = load double, double* %var_2_124, align 1
; Matched:%var_2_168:  %var_2_168 = inttoptr i64 %var_2_164 to double*
; %var_2_401 = inttoptr i64 %var_2_397 to double*
; Matched:%var_2_169:  %var_2_169 = load double, double* %var_2_168, align 8
; %var_2_402 = load double, double* %var_2_401, align 8
; Matched:%var_2_170:  %var_2_170 = fadd double %var_2_167, %var_2_169
; %var_2_403 = fadd double %var_2_400, %var_2_402
; Matched:\<badref\>:  store double %var_2_170, double* %var_2_117, align 1, !tbaa !1287
; store double %var_2_403, double* %var_2_124, align 1
; Matched:%var_2_353:  %var_2_353 = add i64 %var_2_341, 16
; %var_2_404 = add i64 %var_2_398, 16
; Matched:\<badref\>:  store i64 %var_2_171, i64* %PC, align 8
; store i64 %var_2_404, i64* %var_2_3, align 8
; Matched:%var_2_172:  %var_2_172 = inttoptr i64 %var_2_164 to double*
; %var_2_405 = inttoptr i64 %var_2_397 to double*
; Matched:\<badref\>:  store double %var_2_170, double* %var_2_172, align 8
; store double %var_2_403, double* %var_2_405, align 8
; Matched:%var_2_173:  %var_2_173 = load i64, i64* %RBP, align 8
; %var_2_406 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_174:  %var_2_174 = add i64 %var_2_173, -20
; %var_2_407 = add i64 %var_2_406, -20
%var_2_408 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_276:  %var_2_276 = add i64 %var_2_275, 3
; %var_2_409 = add i64 %var_2_408, 3
; Matched:\<badref\>:  store i64 %var_2_70, i64* %PC, align 8
; store i64 %var_2_409, i64* %var_2_3, align 8
; Matched:%var_2_177:  %var_2_177 = inttoptr i64 %var_2_174 to i32*
; %var_2_410 = inttoptr i64 %var_2_407 to i32*
; Matched:%var_2_178:  %var_2_178 = load i32, i32* %var_2_177, align 4
; %var_2_411 = load i32, i32* %var_2_410, align 4
; Matched:%var_2_179:  %var_2_179 = add i32 %var_2_178, 1
; %var_2_412 = add i32 %var_2_411, 1
; Matched:%var_2_180:  %var_2_180 = zext i32 %var_2_179 to i64
; %var_2_413 = zext i32 %var_2_412 to i64
; Matched:\<badref\>:  store i64 %var_2_180, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_413, i64* %RAX.i134, align 8
; Matched:%var_2_181:  %var_2_181 = icmp eq i32 %var_2_178, -1
; %var_2_414 = icmp eq i32 %var_2_411, -1
; Matched:%var_2_182:  %var_2_182 = icmp eq i32 %var_2_179, 0
; %var_2_415 = icmp eq i32 %var_2_412, 0
; Matched:%var_2_183:  %var_2_183 = or i1 %var_2_181, %var_2_182
; %var_2_416 = or i1 %var_2_414, %var_2_415
; Matched:%var_2_184:  %var_2_184 = zext i1 %var_2_183 to i8
; %var_2_417 = zext i1 %var_2_416 to i8
; Matched:\<badref\>:  store i8 %var_2_184, i8* %var_2_19, align 1, !tbaa !1265
; store i8 %var_2_417, i8* %var_2_14, align 1
; Matched:%var_2_185:  %var_2_185 = and i32 %var_2_179, 255
; %var_2_418 = and i32 %var_2_412, 255
; Matched:%var_2_186:  %var_2_186 = tail call i32 @llvm.ctpop.i32(i32 %var_2_185) #12
; %var_2_419 = tail call i32 @llvm.ctpop.i32(i32 %var_2_418)
; Matched:%var_2_187:  %var_2_187 = trunc i32 %var_2_186 to i8
; %var_2_420 = trunc i32 %var_2_419 to i8
; Matched:%var_2_188:  %var_2_188 = and i8 %var_2_187, 1
; %var_2_421 = and i8 %var_2_420, 1
; Matched:%var_2_189:  %var_2_189 = xor i8 %var_2_188, 1
; %var_2_422 = xor i8 %var_2_421, 1
; Matched:\<badref\>:  store i8 %var_2_189, i8* %var_2_26, align 1, !tbaa !1279
; store i8 %var_2_422, i8* %var_2_21, align 1
; Matched:%var_2_190:  %var_2_190 = xor i32 %var_2_179, %var_2_178
; %var_2_423 = xor i32 %var_2_412, %var_2_411
; Matched:%var_2_191:  %var_2_191 = lshr i32 %var_2_190, 4
; %var_2_424 = lshr i32 %var_2_423, 4
; Matched:%var_2_192:  %var_2_192 = trunc i32 %var_2_191 to i8
; %var_2_425 = trunc i32 %var_2_424 to i8
; Matched:%var_2_193:  %var_2_193 = and i8 %var_2_192, 1
; %var_2_426 = and i8 %var_2_425, 1
; Matched:\<badref\>:  store i8 %var_2_193, i8* %var_2_31, align 1, !tbaa !1280
; store i8 %var_2_426, i8* %var_2_26, align 1
; Matched:%var_2_194:  %var_2_194 = zext i1 %var_2_182 to i8
; %var_2_427 = zext i1 %var_2_415 to i8
; Matched:\<badref\>:  store i8 %var_2_194, i8* %var_2_34, align 1, !tbaa !1281
; store i8 %var_2_427, i8* %var_2_29, align 1
; Matched:%var_2_195:  %var_2_195 = lshr i32 %var_2_179, 31
; %var_2_428 = lshr i32 %var_2_412, 31
; Matched:%var_2_196:  %var_2_196 = trunc i32 %var_2_195 to i8
; %var_2_429 = trunc i32 %var_2_428 to i8
; Matched:\<badref\>:  store i8 %var_2_196, i8* %var_2_37, align 1, !tbaa !1282
; store i8 %var_2_429, i8* %var_2_32, align 1
; Matched:%var_2_197:  %var_2_197 = lshr i32 %var_2_178, 31
; %var_2_430 = lshr i32 %var_2_411, 31
; Matched:%var_2_198:  %var_2_198 = xor i32 %var_2_195, %var_2_197
; %var_2_431 = xor i32 %var_2_428, %var_2_430
; Matched:%var_2_199:  %var_2_199 = add nuw nsw i32 %var_2_198, %var_2_195
; %var_2_432 = add nuw nsw i32 %var_2_431, %var_2_428
; Matched:%var_2_200:  %var_2_200 = icmp eq i32 %var_2_199, 2
; %var_2_433 = icmp eq i32 %var_2_432, 2
; Matched:%var_2_201:  %var_2_201 = zext i1 %var_2_200 to i8
; %var_2_434 = zext i1 %var_2_433 to i8
; Matched:\<badref\>:  store i8 %var_2_201, i8* %var_2_43, align 1, !tbaa !1283
; store i8 %var_2_434, i8* %var_2_38, align 1
; Matched:%var_2_450:  %var_2_450 = add i64 %var_2_445, 9
; %var_2_435 = add i64 %var_2_408, 9
; Matched:\<badref\>:  store i64 %var_2_450, i64* %PC, align 8
; store i64 %var_2_435, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_179, i32* %var_2_177, align 4
; store i32 %var_2_412, i32* %var_2_410, align 4
; Matched:%var_2_203:  %var_2_203 = load i64, i64* %PC, align 8
; %var_2_436 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_204:  %var_2_204 = add i64 %var_2_203, -272
; %var_2_437 = add i64 %var_2_436, -272
; Matched:\<badref\>:  store i64 %var_2_204, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_437, i64* %var_2_3, align 8
  br label %block_.L_4005d6

block_.L_4006eb:                                  ; preds = %block_.L_4005d6
  store i64 ptrtoint (%G__0x4007b0_type* @G__0x4007b0 to i64), i64* %RDI.i34, align 8
; Matched:%var_2_386:  %var_2_386 = add i64 %var_2_121, -16424
; %var_2_438 = add i64 %var_2_128, -16424
; Matched:%var_2_387:  %var_2_387 = add i64 %var_2_149, 18
; %var_2_439 = add i64 %var_2_156, 18
; Matched:\<badref\>:  store i64 %var_2_387, i64* %PC, align 8
; store i64 %var_2_439, i64* %var_2_3, align 8
; Matched:%var_2_388:  %var_2_388 = inttoptr i64 %var_2_386 to i64*
; %var_2_440 = inttoptr i64 %var_2_438 to i64*
; Matched:%var_2_389:  %var_2_389 = load i64, i64* %var_2_388, align 8
; %var_2_441 = load i64, i64* %var_2_440, align 8
; Matched:\<badref\>:  store i64 %var_2_389, i64* %var_2_118, align 1, !tbaa !1287
; store i64 %var_2_441, i64* %var_2_125, align 1
%var_2_442 = bitcast i64* %var_2_49 to double*
store double 0.000000e+00, double* %var_2_442, align 1
; Matched:  %AL = bitcast %union.anon* %var_2_3 to i8*
; %AL.i = bitcast %union.anon* %var_2_108 to i8*
; Matched:\<badref\>:  store i8 1, i8* %AL, align 1, !tbaa !1289
; store i8 1, i8* %AL.i, align 1
; Matched:%var_2_391:  %var_2_391 = add i64 %var_2_149, -715
; %var_2_443 = add i64 %var_2_156, -715
; Matched:%var_2_392:  %var_2_392 = add i64 %var_2_149, 25
; %var_2_444 = add i64 %var_2_156, 25
; Matched:%var_2_393:  %var_2_393 = load i64, i64* %RSP, align 8, !tbaa !1261
; %var_2_445 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_394:  %var_2_394 = add i64 %var_2_393, -8
; %var_2_446 = add i64 %var_2_445, -8
; Matched:%var_2_395:  %var_2_395 = inttoptr i64 %var_2_394 to i64*
; %var_2_447 = inttoptr i64 %var_2_446 to i64*
; Matched:\<badref\>:  store i64 %var_2_392, i64* %var_2_395, align 8
; store i64 %var_2_444, i64* %var_2_447, align 8
; Matched:\<badref\>:  store i64 %var_2_160, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_446, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_391, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_443, i64* %var_2_3, align 8
%var_2_448 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.0)
%var_2_449 = load i64, i64* %var_2_3, align 8
  store i64 0, i64* %RCX.i131, align 8
; Matched:%var_2_398:  %var_2_398 = load i64, i64* %RBP, align 8
; %var_2_450 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_399:  %var_2_399 = add i64 %var_2_398, -16440
; %var_2_451 = add i64 %var_2_450, -16440
; Matched:%var_2_400:  %var_2_400 = load i32, i32* %EAX, align 4
; %var_2_452 = load i32, i32* %EAX.i128, align 4
; Matched:%var_2_240:  %var_2_240 = add i64 %var_2_239, 8
; %var_2_453 = add i64 %var_2_449, 8
; Matched:\<badref\>:  store i64 %var_2_240, i64* %PC, align 8
; store i64 %var_2_453, i64* %var_2_3, align 8
; Matched:%var_2_402:  %var_2_402 = inttoptr i64 %var_2_399 to i32*
; %var_2_454 = inttoptr i64 %var_2_451 to i32*
; Matched:\<badref\>:  store i32 %var_2_400, i32* %var_2_402, align 4
; store i32 %var_2_452, i32* %var_2_454, align 4
; Matched:%var_2_403:  %var_2_403 = load i32, i32* %ECX, align 4
; %var_2_455 = load i32, i32* %ECX.i125, align 4
; Matched:%var_2_404:  %var_2_404 = zext i32 %var_2_403 to i64
; %var_2_456 = zext i32 %var_2_455 to i64
%var_2_457 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_404, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_456, i64* %RAX.i134, align 8
; Matched:%var_2_406:  %var_2_406 = load i64, i64* %RSP, align 8
; %var_2_458 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_407:  %var_2_407 = add i64 %var_2_406, 16448
; %var_2_459 = add i64 %var_2_458, 16448
; Matched:\<badref\>:  store i64 %var_2_407, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_459, i64* %var_2_6, align 8
; Matched:%var_2_408:  %var_2_408 = icmp ugt i64 %var_2_406, -16449
; %var_2_460 = icmp ugt i64 %var_2_458, -16449
; Matched:%var_2_409:  %var_2_409 = zext i1 %var_2_408 to i8
; %var_2_461 = zext i1 %var_2_460 to i8
; Matched:\<badref\>:  store i8 %var_2_409, i8* %var_2_19, align 1, !tbaa !1265
; store i8 %var_2_461, i8* %var_2_14, align 1
; Matched:%var_2_410:  %var_2_410 = trunc i64 %var_2_407 to i32
; %var_2_462 = trunc i64 %var_2_459 to i32
; Matched:%var_2_411:  %var_2_411 = and i32 %var_2_410, 255
; %var_2_463 = and i32 %var_2_462, 255
; Matched:%var_2_412:  %var_2_412 = tail call i32 @llvm.ctpop.i32(i32 %var_2_411) #12
; %var_2_464 = tail call i32 @llvm.ctpop.i32(i32 %var_2_463)
; Matched:%var_2_413:  %var_2_413 = trunc i32 %var_2_412 to i8
; %var_2_465 = trunc i32 %var_2_464 to i8
; Matched:%var_2_414:  %var_2_414 = and i8 %var_2_413, 1
; %var_2_466 = and i8 %var_2_465, 1
; Matched:%var_2_415:  %var_2_415 = xor i8 %var_2_414, 1
; %var_2_467 = xor i8 %var_2_466, 1
; Matched:\<badref\>:  store i8 %var_2_415, i8* %var_2_26, align 1, !tbaa !1279
; store i8 %var_2_467, i8* %var_2_21, align 1
; Matched:%var_2_416:  %var_2_416 = xor i64 %var_2_407, %var_2_406
; %var_2_468 = xor i64 %var_2_459, %var_2_458
; Matched:%var_2_417:  %var_2_417 = lshr i64 %var_2_416, 4
; %var_2_469 = lshr i64 %var_2_468, 4
; Matched:%var_2_418:  %var_2_418 = trunc i64 %var_2_417 to i8
; %var_2_470 = trunc i64 %var_2_469 to i8
; Matched:%var_2_419:  %var_2_419 = and i8 %var_2_418, 1
; %var_2_471 = and i8 %var_2_470, 1
; Matched:\<badref\>:  store i8 %var_2_419, i8* %var_2_31, align 1, !tbaa !1280
; store i8 %var_2_471, i8* %var_2_26, align 1
; Matched:%var_2_420:  %var_2_420 = icmp eq i64 %var_2_407, 0
; %var_2_472 = icmp eq i64 %var_2_459, 0
; Matched:%var_2_421:  %var_2_421 = zext i1 %var_2_420 to i8
; %var_2_473 = zext i1 %var_2_472 to i8
; Matched:\<badref\>:  store i8 %var_2_421, i8* %var_2_34, align 1, !tbaa !1281
; store i8 %var_2_473, i8* %var_2_29, align 1
; Matched:%var_2_422:  %var_2_422 = lshr i64 %var_2_407, 63
; %var_2_474 = lshr i64 %var_2_459, 63
; Matched:%var_2_423:  %var_2_423 = trunc i64 %var_2_422 to i8
; %var_2_475 = trunc i64 %var_2_474 to i8
; Matched:\<badref\>:  store i8 %var_2_423, i8* %var_2_37, align 1, !tbaa !1282
; store i8 %var_2_475, i8* %var_2_32, align 1
; Matched:%var_2_424:  %var_2_424 = lshr i64 %var_2_406, 63
; %var_2_476 = lshr i64 %var_2_458, 63
; Matched:%var_2_425:  %var_2_425 = xor i64 %var_2_422, %var_2_424
; %var_2_477 = xor i64 %var_2_474, %var_2_476
; Matched:%var_2_426:  %var_2_426 = add nuw nsw i64 %var_2_425, %var_2_422
; %var_2_478 = add nuw nsw i64 %var_2_477, %var_2_474
; Matched:%var_2_427:  %var_2_427 = icmp eq i64 %var_2_426, 2
; %var_2_479 = icmp eq i64 %var_2_478, 2
; Matched:%var_2_428:  %var_2_428 = zext i1 %var_2_427 to i8
; %var_2_480 = zext i1 %var_2_479 to i8
; Matched:\<badref\>:  store i8 %var_2_428, i8* %var_2_43, align 1, !tbaa !1283
; store i8 %var_2_480, i8* %var_2_38, align 1
; Matched:%var_2_429:  %var_2_429 = add i64 %var_2_405, 10
; %var_2_481 = add i64 %var_2_457, 10
; Matched:\<badref\>:  store i64 %var_2_429, i64* %PC, align 8
; store i64 %var_2_481, i64* %var_2_3, align 8
; Matched:%var_2_430:  %var_2_430 = add i64 %var_2_406, 16456
; %var_2_482 = add i64 %var_2_458, 16456
; Matched:%var_2_431:  %var_2_431 = inttoptr i64 %var_2_407 to i64*
; %var_2_483 = inttoptr i64 %var_2_459 to i64*
; Matched:%var_2_432:  %var_2_432 = load i64, i64* %var_2_431, align 8
; %var_2_484 = load i64, i64* %var_2_483, align 8
; Matched:\<badref\>:  store i64 %var_2_432, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_484, i64* %RBP.i, align 8
; Matched:\<badref\>:  store i64 %var_2_430, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_482, i64* %var_2_6, align 8
; Matched:%var_2_433:  %var_2_433 = add i64 %var_2_405, 11
; %var_2_485 = add i64 %var_2_457, 11
; Matched:\<badref\>:  store i64 %var_2_433, i64* %PC, align 8
; store i64 %var_2_485, i64* %var_2_3, align 8
; Matched:%var_2_434:  %var_2_434 = inttoptr i64 %var_2_430 to i64*
; %var_2_486 = inttoptr i64 %var_2_482 to i64*
; Matched:%var_2_435:  %var_2_435 = load i64, i64* %var_2_434, align 8
; %var_2_487 = load i64, i64* %var_2_486, align 8
; Matched:\<badref\>:  store i64 %var_2_435, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_487, i64* %var_2_3, align 8
; Matched:%var_2_436:  %var_2_436 = add i64 %var_2_406, 16464
; %var_2_488 = add i64 %var_2_458, 16464
; Matched:\<badref\>:  store i64 %var_2_436, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_488, i64* %var_2_6, align 8
ret %struct.Memory* %var_2_448
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
define %struct.Memory* @routine_subq__0x4040___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -16448
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 16448
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
define %struct.Memory* @routine_movss_0x201__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x201__rip__type* @G_0x201__rip_ to i64)
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
define %struct.Memory* @routine_xorps__xmm1___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_xorps__xmm2___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movsd__xmm2__MINUS0x4028__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16424
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
define %struct.Memory* @routine_movss__xmm1__MINUS0x402c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16428
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x4030__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16432
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x7a120__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -500000
  %10 = icmp ult i32 %8, 500000
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
define %struct.Memory* @routine_jge_.L_4006eb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xa___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_movl__eax__MINUS0x4034__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16436
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4034__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16436
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
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
define %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
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
define %struct.Memory* @routine_je_.L_400625(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x197__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x197__rip__type* @G_0x197__rip_ to i64), i64 207) to i32*), align 4
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
define %struct.Memory* @routine_jmpq_.L_400655(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x17b__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x17b__rip__type* @G_0x17b__rip_ to i64), i64 179) to i32*), align 4
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
define %struct.Memory* @routine_movss_0x177__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x177__rip__type* @G_0x177__rip_ to i64), i64 175) to i32*), align 4
  %8 = bitcast %union.VectorReg* %3 to i32*
  store i32 %7, i32* %8, align 1
  %9 = getelementptr inbounds i8, i8* %4, i64 4
  %10 = bitcast i8* %9 to float*
  store float 0.000000e+00, float* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 12
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addss_MINUS0x402c__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -16428
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fadd float %16, %15
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %10 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 0
  %24 = bitcast i64* %11 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %13, i32 1
  %26 = getelementptr inbounds i8, i8* %4, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addss_MINUS0x4030__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -16432
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fadd float %16, %15
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %10 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 0
  %24 = bitcast i64* %11 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %13, i32 1
  %26 = getelementptr inbounds i8, i8* %4, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x800__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -2048
  %10 = icmp ult i32 %8, 2048
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
define %struct.Memory* @routine_jge_.L_4006b3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_MINUS0x402c__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -16428
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssl_MINUS0x18__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -24
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = sitofp i32 %15 to float
  %17 = bitcast %union.VectorReg* %3 to float*
  store float %16, float* %17, align 1
  %18 = extractelement <2 x i32> %10, i32 1
  %19 = getelementptr inbounds i8, i8* %4, i64 4
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %13, i32 0
  %22 = bitcast i64* %11 to i32*
  store i32 %21, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast [32 x %union.VectorReg]* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 1
  %15 = extractelement <2 x float> %9, i32 0
  %16 = extractelement <2 x float> %14, i32 0
  %17 = fadd float %15, %16
  %18 = bitcast [32 x %union.VectorReg]* %3 to float*
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
define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x2020__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -8224
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC, align 8
  %11 = bitcast %union.VectorReg* %3 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %12, i32 0
  %14 = inttoptr i64 %8 to float*
  store float %13, float* %14, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x4030__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -16432
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x4020__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -16416
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC, align 8
  %11 = bitcast %union.VectorReg* %3 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %12, i32 0
  %14 = inttoptr i64 %8 to float*
  store float %13, float* %14, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_jmpq_.L_40065c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x800___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2048, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x4020__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16416
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x2020__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8224
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.loop(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addsd_MINUS0x4028__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16424
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x4028__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16424
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
define %struct.Memory* @routine_jmpq_.L_4005d6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4007b0___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4007b0_type* @G__0x4007b0 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x4028__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16424
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
define %struct.Memory* @routine_movb__0x1___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 1, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.printf_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x4038__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16440
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x4040___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 16448
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -16449
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
