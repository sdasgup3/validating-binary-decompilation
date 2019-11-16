; ModuleID = '/tmp/tmpucvbf4ik-query.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x12fd7__rip__type = type <{ [8 x i8] }>
%G_0x61a0b0_type = type <{ [8 x i8] }>
%G_0x61a0b8_type = type <{ [8 x i8] }>
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
@G_0x12fd7__rip_ = global %G_0x12fd7__rip__type zeroinitializer
@G_0x61a0b0 = local_unnamed_addr global %G_0x61a0b0_type zeroinitializer
@G_0x61a0b8 = local_unnamed_addr global %G_0x61a0b8_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @clock()

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @_Z5timerv(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
entry:
%var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
; Matched:  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
; %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
; Matched:%var_2_5:  %var_2_5 = load i64, i64* %RBP, align 8
; %var_2_4 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_6:  %var_2_6 = add i64 %1, 1
; %var_2_5 = add i64 %1, 1
; Matched:\<badref\>:  store i64 %var_2_6, i64* %PC, align 8
; store i64 %var_2_5, i64* %var_2_3, align 8
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
; Matched:%var_2_11:  %var_2_11 = load i64, i64* %PC, align 8
; %var_2_10 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_9, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_8, i64* %RBP.i, align 8
; Matched:%var_2_12:  %var_2_12 = add i64 %var_2_11, -2001
; %var_2_11 = add i64 %var_2_10, -2001
; Matched:%var_2_13:  %var_2_13 = add i64 %var_2_11, 8
; %var_2_12 = add i64 %var_2_10, 8
; Matched:%var_2_14:  %var_2_14 = add i64 %var_2_8, -16
; %var_2_13 = add i64 %var_2_7, -16
; Matched:%var_2_15:  %var_2_15 = inttoptr i64 %var_2_14 to i64*
; %var_2_14 = inttoptr i64 %var_2_13 to i64*
; Matched:\<badref\>:  store i64 %var_2_13, i64* %var_2_15, align 8
; store i64 %var_2_12, i64* %var_2_14, align 8
; Matched:\<badref\>:  store i64 %var_2_14, i64* %var_2_7, align 8, !tbaa !1261
; store i64 %var_2_13, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_12, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_11, i64* %var_2_3, align 8
%var_2_15 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 ()* @clock to i64), %struct.Memory* %2)
%var_2_16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
%var_2_17 = bitcast [32 x %union.VectorReg]* %var_2_16 to i8*
%var_2_18 = load i64, i64* %var_2_3, align 8
%var_2_19 = add i64 %var_2_18, ptrtoint (%G_0x12fd7__rip__type* @G_0x12fd7__rip_ to i64)
%var_2_20 = add i64 %var_2_18, 8
store i64 %var_2_20, i64* %var_2_3, align 8
%var_2_21 = inttoptr i64 %var_2_19 to double*
%var_2_22 = load double, double* %var_2_21, align 8
; Matched:%var_2_20:  %var_2_20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
; %var_2_23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %RAX.i13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
%var_2_24 = load i64, i64* %RAX.i13, align 8
; Matched:\<badref\>:  store i64 %var_2_21, i64* bitcast (%end_time_type* @end_time to i64*), align 8
; store i64 %var_2_24, i64* bitcast (%G_0x61a0b8_type* @G_0x61a0b8 to i64*), align 8
%var_2_25 = load i64, i64* bitcast (%G_0x61a0b0_type* @G_0x61a0b0 to i64*), align 8
%var_2_26 = sub i64 %var_2_24, %var_2_25
; Matched:\<badref\>:  store i64 %var_2_23, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_26, i64* %RAX.i13, align 8
; Matched:%var_2_24:  %var_2_24 = icmp ult i64 %var_2_21, %var_2_22
; %var_2_27 = icmp ult i64 %var_2_24, %var_2_25
; Matched:%var_2_25:  %var_2_25 = zext i1 %var_2_24 to i8
; %var_2_28 = zext i1 %var_2_27 to i8
; Matched:%var_2_26:  %var_2_26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
; %var_2_29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
; Matched:\<badref\>:  store i8 %var_2_25, i8* %var_2_26, align 1, !tbaa !1265
; store i8 %var_2_28, i8* %var_2_29, align 1
; Matched:%var_2_27:  %var_2_27 = trunc i64 %var_2_23 to i32
; %var_2_30 = trunc i64 %var_2_26 to i32
; Matched:%var_2_28:  %var_2_28 = and i32 %var_2_27, 255
; %var_2_31 = and i32 %var_2_30, 255
; Matched:%var_2_29:  %var_2_29 = tail call i32 @llvm.ctpop.i32(i32 %var_2_28) #12
; %var_2_32 = tail call i32 @llvm.ctpop.i32(i32 %var_2_31)
; Matched:%var_2_30:  %var_2_30 = trunc i32 %var_2_29 to i8
; %var_2_33 = trunc i32 %var_2_32 to i8
; Matched:%var_2_31:  %var_2_31 = and i8 %var_2_30, 1
; %var_2_34 = and i8 %var_2_33, 1
; Matched:%var_2_32:  %var_2_32 = xor i8 %var_2_31, 1
; %var_2_35 = xor i8 %var_2_34, 1
; Matched:%var_2_33:  %var_2_33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
; %var_2_36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
; Matched:\<badref\>:  store i8 %var_2_32, i8* %var_2_33, align 1, !tbaa !1279
; store i8 %var_2_35, i8* %var_2_36, align 1
; Matched:%var_2_34:  %var_2_34 = xor i64 %var_2_22, %var_2_21
; %var_2_37 = xor i64 %var_2_25, %var_2_24
; Matched:%var_2_35:  %var_2_35 = xor i64 %var_2_34, %var_2_23
; %var_2_38 = xor i64 %var_2_37, %var_2_26
; Matched:%var_2_36:  %var_2_36 = lshr i64 %var_2_35, 4
; %var_2_39 = lshr i64 %var_2_38, 4
; Matched:%var_2_37:  %var_2_37 = trunc i64 %var_2_36 to i8
; %var_2_40 = trunc i64 %var_2_39 to i8
; Matched:%var_2_38:  %var_2_38 = and i8 %var_2_37, 1
; %var_2_41 = and i8 %var_2_40, 1
; Matched:%var_2_39:  %var_2_39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
; %var_2_42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
; Matched:\<badref\>:  store i8 %var_2_38, i8* %var_2_39, align 1, !tbaa !1280
; store i8 %var_2_41, i8* %var_2_42, align 1
; Matched:%var_2_40:  %var_2_40 = icmp eq i64 %var_2_23, 0
; %var_2_43 = icmp eq i64 %var_2_26, 0
; Matched:%var_2_41:  %var_2_41 = zext i1 %var_2_40 to i8
; %var_2_44 = zext i1 %var_2_43 to i8
; Matched:%var_2_42:  %var_2_42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
; %var_2_45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
; Matched:\<badref\>:  store i8 %var_2_41, i8* %var_2_42, align 1, !tbaa !1281
; store i8 %var_2_44, i8* %var_2_45, align 1
; Matched:%var_2_43:  %var_2_43 = lshr i64 %var_2_23, 63
; %var_2_46 = lshr i64 %var_2_26, 63
; Matched:%var_2_44:  %var_2_44 = trunc i64 %var_2_43 to i8
; %var_2_47 = trunc i64 %var_2_46 to i8
; Matched:%var_2_45:  %var_2_45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
; %var_2_48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
; Matched:\<badref\>:  store i8 %var_2_44, i8* %var_2_45, align 1, !tbaa !1282
; store i8 %var_2_47, i8* %var_2_48, align 1
%var_2_49 = lshr i64 %var_2_24, 63
%var_2_50 = lshr i64 %var_2_25, 63
%var_2_51 = xor i64 %var_2_50, %var_2_49
; Matched:%var_2_49:  %var_2_49 = xor i64 %var_2_43, %var_2_46
; %var_2_52 = xor i64 %var_2_46, %var_2_49
; Matched:%var_2_50:  %var_2_50 = add nuw nsw i64 %var_2_49, %var_2_48
; %var_2_53 = add nuw nsw i64 %var_2_52, %var_2_51
; Matched:%var_2_51:  %var_2_51 = icmp eq i64 %var_2_50, 2
; %var_2_54 = icmp eq i64 %var_2_53, 2
; Matched:%var_2_52:  %var_2_52 = zext i1 %var_2_51 to i8
; %var_2_55 = zext i1 %var_2_54 to i8
; Matched:%var_2_53:  %var_2_53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; %var_2_56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; Matched:\<badref\>:  store i8 %var_2_52, i8* %var_2_53, align 1, !tbaa !1283
; store i8 %var_2_55, i8* %var_2_56, align 1
%var_2_57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
%var_2_58 = sitofp i64 %var_2_26 to double
%var_2_59 = bitcast %union.VectorReg* %var_2_57 to double*
; Matched:%var_2_56:  %var_2_56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
; %var_2_60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
%var_2_61 = bitcast i64* %var_2_60 to <2 x i32>*
%var_2_62 = load <2 x i32>, <2 x i32>* %var_2_61, align 1
%var_2_63 = fdiv double %var_2_58, %var_2_22
store double %var_2_63, double* %var_2_59, align 1
%.cast = bitcast double %var_2_63 to <2 x i32>
%var_2_64 = extractelement <2 x i32> %.cast, i32 0
%var_2_65 = bitcast [32 x %union.VectorReg]* %var_2_16 to i32*
store i32 %var_2_64, i32* %var_2_65, align 1
%var_2_66 = extractelement <2 x i32> %.cast, i32 1
%var_2_67 = getelementptr inbounds i8, i8* %var_2_17, i64 4
%var_2_68 = bitcast i8* %var_2_67 to i32*
store i32 %var_2_66, i32* %var_2_68, align 1
%var_2_69 = extractelement <2 x i32> %var_2_62, i32 0
; Matched:%var_2_66:  %var_2_66 = bitcast i64* %var_2_20 to i32*
; %var_2_70 = bitcast i64* %var_2_23 to i32*
; Matched:\<badref\>:  store i32 %var_2_65, i32* %var_2_66, align 1, !tbaa !1286
; store i32 %var_2_69, i32* %var_2_70, align 1
%var_2_71 = extractelement <2 x i32> %var_2_62, i32 1
; Matched:%var_2_68:  %var_2_68 = getelementptr inbounds i8, i8* %var_2_17, i64 12
; %var_2_72 = getelementptr inbounds i8, i8* %var_2_17, i64 12
; Matched:%var_2_69:  %var_2_69 = bitcast i8* %var_2_68 to i32*
; %var_2_73 = bitcast i8* %var_2_72 to i32*
; Matched:\<badref\>:  store i32 %var_2_67, i32* %var_2_69, align 1, !tbaa !1286
; store i32 %var_2_71, i32* %var_2_73, align 1
; Matched:%var_2_70:  %var_2_70 = add i64 %var_2_18, 45
; %var_2_74 = add i64 %var_2_18, 45
; Matched:\<badref\>:  store i64 %var_2_70, i64* %PC, align 8
; store i64 %var_2_74, i64* %var_2_3, align 8
; Matched:%var_2_71:  %var_2_71 = load i64, i64* %var_2_7, align 8, !tbaa !1261
; %var_2_75 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_72:  %var_2_72 = add i64 %var_2_71, 8
; %var_2_76 = add i64 %var_2_75, 8
; Matched:%var_2_73:  %var_2_73 = inttoptr i64 %var_2_71 to i64*
; %var_2_77 = inttoptr i64 %var_2_75 to i64*
; Matched:%var_2_74:  %var_2_74 = load i64, i64* %var_2_73, align 8
; %var_2_78 = load i64, i64* %var_2_77, align 8
; Matched:\<badref\>:  store i64 %var_2_74, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_78, i64* %RBP.i, align 8
; Matched:\<badref\>:  store i64 %var_2_72, i64* %var_2_7, align 8, !tbaa !1261
; store i64 %var_2_76, i64* %var_2_6, align 8
; Matched:%var_2_75:  %var_2_75 = add i64 %var_2_18, 46
; %var_2_79 = add i64 %var_2_18, 46
; Matched:\<badref\>:  store i64 %var_2_75, i64* %PC, align 8
; store i64 %var_2_79, i64* %var_2_3, align 8
; Matched:%var_2_76:  %var_2_76 = inttoptr i64 %var_2_72 to i64*
; %var_2_80 = inttoptr i64 %var_2_76 to i64*
; Matched:%var_2_77:  %var_2_77 = load i64, i64* %var_2_76, align 8
; %var_2_81 = load i64, i64* %var_2_80, align 8
; Matched:\<badref\>:  store i64 %var_2_77, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_81, i64* %var_2_3, align 8
; Matched:%var_2_78:  %var_2_78 = add i64 %var_2_71, 16
; %var_2_82 = add i64 %var_2_75, 16
; Matched:\<badref\>:  store i64 %var_2_78, i64* %var_2_7, align 8, !tbaa !1261
; store i64 %var_2_82, i64* %var_2_6, align 8
ret %struct.Memory* %var_2_15
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
define %struct.Memory* @routine_callq_.clock_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x12fd7__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x12fd7__rip__type* @G_0x12fd7__rip_ to i64)
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
define %struct.Memory* @routine_movq__rax__0x61a0b8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0x61a0b8_type* @G_0x61a0b8 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x61a0b8___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x61a0b8_type* @G_0x61a0b8 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subq_0x61a0b0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  %6 = load i64, i64* bitcast (%G_0x61a0b0_type* @G_0x61a0b0 to i64*), align 8
  %7 = sub i64 %3, %6
  store i64 %7, i64* %RAX, align 8
  %8 = icmp ult i64 %3, %6
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = trunc i64 %7 to i32
  %12 = and i32 %11, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i64 %6, %3
  %19 = xor i64 %18, %7
  %20 = lshr i64 %19, 4
  %21 = trunc i64 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i64 %7, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %7, 63
  %28 = trunc i64 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %3, 63
  %31 = lshr i64 %6, 63
  %32 = xor i64 %31, %30
  %33 = xor i64 %27, %30
  %34 = add nuw nsw i64 %33, %32
  %35 = icmp eq i64 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdq__rax___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = sitofp i64 %4 to double
  %8 = bitcast %union.VectorReg* %3 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fdiv double %8, %10
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
attributes #1 = { alwaysinline }
attributes #2 = { norecurse nounwind }
attributes #3 = { nounwind }
