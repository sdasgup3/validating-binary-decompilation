; ModuleID = '/tmp/tmp0ssnrro5-query.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x283f__rip__type = type <{ [4 x i8] }>
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
@G_0x283f__rip_ = global %G_0x283f__rip__type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @clock()

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @second(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
; Matched:  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
; %var_2_6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
; Matched:%var_2_7:  %var_2_7 = load i64, i64* %RSP, align 8, !tbaa !1261
; %var_2_7 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_8:  %var_2_8 = add i64 %var_2_7, -8
; %var_2_8 = add i64 %var_2_7, -8
; Matched:%var_2_9:  %var_2_9 = inttoptr i64 %var_2_8 to i64*
; %var_2_9 = inttoptr i64 %var_2_8 to i64*
; Matched:\<badref\>:  store i64 %var_2_5, i64* %var_2_9, align 8
; store i64 %var_2_4, i64* %var_2_9, align 8
; Matched:%var_2_10:  %var_2_10 = load i64, i64* %PC, align 8
; %var_2_10 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_8, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_8, i64* %RBP.i, align 8
; Matched:%var_2_11:  %var_2_11 = add i64 %var_2_7, -24
; %var_2_11 = add i64 %var_2_7, -24
; Matched:%var_2_12:  %var_2_12 = icmp ult i64 %var_2_8, 16
; %var_2_12 = icmp ult i64 %var_2_8, 16
; Matched:%var_2_13:  %var_2_13 = zext i1 %var_2_12 to i8
; %var_2_13 = zext i1 %var_2_12 to i8
; Matched:%var_2_14:  %var_2_14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
; %var_2_14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
; Matched:\<badref\>:  store i8 %var_2_13, i8* %var_2_14, align 1, !tbaa !1265
; store i8 %var_2_13, i8* %var_2_14, align 1
; Matched:%var_2_15:  %var_2_15 = trunc i64 %var_2_11 to i32
; %var_2_15 = trunc i64 %var_2_11 to i32
; Matched:%var_2_16:  %var_2_16 = and i32 %var_2_15, 255
; %var_2_16 = and i32 %var_2_15, 255
; Matched:%var_2_17:  %var_2_17 = tail call i32 @llvm.ctpop.i32(i32 %var_2_16) #12
; %var_2_17 = tail call i32 @llvm.ctpop.i32(i32 %var_2_16)
; Matched:%var_2_18:  %var_2_18 = trunc i32 %var_2_17 to i8
; %var_2_18 = trunc i32 %var_2_17 to i8
; Matched:%var_2_19:  %var_2_19 = and i8 %var_2_18, 1
; %var_2_19 = and i8 %var_2_18, 1
; Matched:%var_2_20:  %var_2_20 = xor i8 %var_2_19, 1
; %var_2_20 = xor i8 %var_2_19, 1
; Matched:%var_2_21:  %var_2_21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
; %var_2_21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
; Matched:\<badref\>:  store i8 %var_2_20, i8* %var_2_21, align 1, !tbaa !1279
; store i8 %var_2_20, i8* %var_2_21, align 1
; Matched:%var_2_22:  %var_2_22 = xor i64 %var_2_8, 16
; %var_2_22 = xor i64 %var_2_8, 16
; Matched:%var_2_23:  %var_2_23 = xor i64 %var_2_22, %var_2_11
; %var_2_23 = xor i64 %var_2_22, %var_2_11
; Matched:%var_2_24:  %var_2_24 = lshr i64 %var_2_23, 4
; %var_2_24 = lshr i64 %var_2_23, 4
; Matched:%var_2_25:  %var_2_25 = trunc i64 %var_2_24 to i8
; %var_2_25 = trunc i64 %var_2_24 to i8
; Matched:%var_2_26:  %var_2_26 = and i8 %var_2_25, 1
; %var_2_26 = and i8 %var_2_25, 1
; Matched:%var_2_27:  %var_2_27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
; %var_2_27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
; Matched:\<badref\>:  store i8 %var_2_26, i8* %var_2_27, align 1, !tbaa !1280
; store i8 %var_2_26, i8* %var_2_27, align 1
; Matched:%var_2_28:  %var_2_28 = icmp eq i64 %var_2_11, 0
; %var_2_28 = icmp eq i64 %var_2_11, 0
; Matched:%var_2_29:  %var_2_29 = zext i1 %var_2_28 to i8
; %var_2_29 = zext i1 %var_2_28 to i8
; Matched:%var_2_30:  %var_2_30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
; %var_2_30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
; Matched:\<badref\>:  store i8 %var_2_29, i8* %var_2_30, align 1, !tbaa !1281
; store i8 %var_2_29, i8* %var_2_30, align 1
; Matched:%var_2_31:  %var_2_31 = lshr i64 %var_2_11, 63
; %var_2_31 = lshr i64 %var_2_11, 63
; Matched:%var_2_32:  %var_2_32 = trunc i64 %var_2_31 to i8
; %var_2_32 = trunc i64 %var_2_31 to i8
; Matched:%var_2_33:  %var_2_33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
; %var_2_33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
; Matched:\<badref\>:  store i8 %var_2_32, i8* %var_2_33, align 1, !tbaa !1282
; store i8 %var_2_32, i8* %var_2_33, align 1
; Matched:%var_2_34:  %var_2_34 = lshr i64 %var_2_8, 63
; %var_2_34 = lshr i64 %var_2_8, 63
; Matched:%var_2_35:  %var_2_35 = xor i64 %var_2_31, %var_2_34
; %var_2_35 = xor i64 %var_2_31, %var_2_34
; Matched:%var_2_36:  %var_2_36 = add nuw nsw i64 %var_2_35, %var_2_34
; %var_2_36 = add nuw nsw i64 %var_2_35, %var_2_34
; Matched:%var_2_37:  %var_2_37 = icmp eq i64 %var_2_36, 2
; %var_2_37 = icmp eq i64 %var_2_36, 2
; Matched:%var_2_38:  %var_2_38 = zext i1 %var_2_37 to i8
; %var_2_38 = zext i1 %var_2_37 to i8
; Matched:%var_2_39:  %var_2_39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; %var_2_39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; Matched:\<badref\>:  store i8 %var_2_38, i8* %var_2_39, align 1, !tbaa !1283
; store i8 %var_2_38, i8* %var_2_39, align 1
; Matched:%var_2_40:  %var_2_40 = add i64 %var_2_10, -289
; %var_2_40 = add i64 %var_2_10, -289
; Matched:%var_2_41:  %var_2_41 = add i64 %var_2_10, 12
; %var_2_41 = add i64 %var_2_10, 12
; Matched:%var_2_42:  %var_2_42 = add i64 %var_2_7, -32
; %var_2_42 = add i64 %var_2_7, -32
; Matched:%var_2_43:  %var_2_43 = inttoptr i64 %var_2_42 to i64*
; %var_2_43 = inttoptr i64 %var_2_42 to i64*
; Matched:\<badref\>:  store i64 %var_2_41, i64* %var_2_43, align 8
; store i64 %var_2_41, i64* %var_2_43, align 8
; Matched:\<badref\>:  store i64 %var_2_42, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_42, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_40, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_40, i64* %var_2_3, align 8
%var_2_44 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 ()* @clock to i64), %struct.Memory* %2)
%var_2_45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
; Matched:%var_2_45:  %var_2_45 = bitcast [32 x %union.VectorReg]* %var_2_3 to i8*
; %var_2_46 = bitcast [32 x %union.VectorReg]* %var_2_45 to i8*
%var_2_47 = load i64, i64* %var_2_3, align 8
%var_2_48 = add i64 %var_2_47, ptrtoint (%G_0x283f__rip__type* @G_0x283f__rip_ to i64)
%var_2_49 = add i64 %var_2_47, 8
store i64 %var_2_49, i64* %var_2_3, align 8
%var_2_50 = inttoptr i64 %var_2_48 to i32*
%var_2_51 = load i32, i32* %var_2_50, align 4
%var_2_52 = bitcast [32 x %union.VectorReg]* %var_2_45 to i32*
store i32 %var_2_51, i32* %var_2_52, align 1
; Matched:%var_2_49:  %var_2_49 = getelementptr inbounds i8, i8* %var_2_45, i64 4
; %var_2_53 = getelementptr inbounds i8, i8* %var_2_46, i64 4
; Matched:%var_2_50:  %var_2_50 = bitcast i8* %var_2_49 to float*
; %var_2_54 = bitcast i8* %var_2_53 to float*
; Matched:\<badref\>:  store float 0.000000e+00, float* %var_2_50, align 1, !tbaa !1284
; store float 0.000000e+00, float* %var_2_54, align 1
; Matched:%var_2_51:  %var_2_51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
; %var_2_55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_52:  %var_2_52 = bitcast i64* %var_2_51 to float*
; %var_2_56 = bitcast i64* %var_2_55 to float*
; Matched:\<badref\>:  store float 0.000000e+00, float* %var_2_52, align 1, !tbaa !1284
; store float 0.000000e+00, float* %var_2_56, align 1
; Matched:%var_2_53:  %var_2_53 = getelementptr inbounds i8, i8* %var_2_45, i64 12
; %var_2_57 = getelementptr inbounds i8, i8* %var_2_46, i64 12
; Matched:%var_2_54:  %var_2_54 = bitcast i8* %var_2_53 to float*
; %var_2_58 = bitcast i8* %var_2_57 to float*
; Matched:\<badref\>:  store float 0.000000e+00, float* %var_2_54, align 1, !tbaa !1284
; store float 0.000000e+00, float* %var_2_58, align 1
; Matched:  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
; %RAX.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
; Matched:%var_2_55:  %var_2_55 = load i64, i64* %RBP, align 8
; %var_2_59 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_56:  %var_2_56 = add i64 %var_2_55, -16
; %var_2_60 = add i64 %var_2_59, -16
; Matched:%var_2_57:  %var_2_57 = load i64, i64* %RAX, align 8
; %var_2_61 = load i64, i64* %RAX.i, align 8
; Matched:%var_2_58:  %var_2_58 = add i64 %var_2_46, 12
; %var_2_62 = add i64 %var_2_47, 12
; Matched:\<badref\>:  store i64 %var_2_58, i64* %PC, align 8
; store i64 %var_2_62, i64* %var_2_3, align 8
; Matched:%var_2_59:  %var_2_59 = inttoptr i64 %var_2_56 to i64*
; %var_2_63 = inttoptr i64 %var_2_60 to i64*
; Matched:\<badref\>:  store i64 %var_2_57, i64* %var_2_59, align 8
; store i64 %var_2_61, i64* %var_2_63, align 8
; Matched:%var_2_4:  %var_2_4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
; %var_2_64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
; Matched:%var_2_60:  %var_2_60 = bitcast %union.VectorReg* %var_2_4 to i8*
; %var_2_65 = bitcast %union.VectorReg* %var_2_64 to i8*
; Matched:%var_2_61:  %var_2_61 = load i64, i64* %RBP, align 8
; %var_2_66 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_62:  %var_2_62 = add i64 %var_2_61, -16
; %var_2_67 = add i64 %var_2_66, -16
; Matched:%var_2_63:  %var_2_63 = load i64, i64* %PC, align 8
; %var_2_68 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_64:  %var_2_64 = add i64 %var_2_63, 6
; %var_2_69 = add i64 %var_2_68, 6
; Matched:\<badref\>:  store i64 %var_2_64, i64* %PC, align 8
; store i64 %var_2_69, i64* %var_2_3, align 8
%var_2_70 = bitcast %union.VectorReg* %var_2_64 to <2 x i32>*
%var_2_71 = load <2 x i32>, <2 x i32>* %var_2_70, align 1
; Matched:%var_2_67:  %var_2_67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
; %var_2_72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
%var_2_73 = bitcast i64* %var_2_72 to <2 x i32>*
%var_2_74 = load <2 x i32>, <2 x i32>* %var_2_73, align 1
; Matched:%var_2_70:  %var_2_70 = inttoptr i64 %var_2_62 to i64*
; %var_2_75 = inttoptr i64 %var_2_67 to i64*
; Matched:%var_2_71:  %var_2_71 = load i64, i64* %var_2_70, align 8
; %var_2_76 = load i64, i64* %var_2_75, align 8
; Matched:%var_2_72:  %var_2_72 = sitofp i64 %var_2_71 to float
; %var_2_77 = sitofp i64 %var_2_76 to float
; Matched:%var_2_73:  %var_2_73 = bitcast %union.VectorReg* %var_2_4 to float*
; %var_2_78 = bitcast %union.VectorReg* %var_2_64 to float*
; Matched:\<badref\>:  store float %var_2_72, float* %var_2_73, align 1, !tbaa !1284
; store float %var_2_77, float* %var_2_78, align 1
%var_2_79 = extractelement <2 x i32> %var_2_71, i32 1
; Matched:%var_2_75:  %var_2_75 = getelementptr inbounds i8, i8* %var_2_60, i64 4
; %var_2_80 = getelementptr inbounds i8, i8* %var_2_65, i64 4
; Matched:%var_2_76:  %var_2_76 = bitcast i8* %var_2_75 to i32*
; %var_2_81 = bitcast i8* %var_2_80 to i32*
; Matched:\<badref\>:  store i32 %var_2_74, i32* %var_2_76, align 1, !tbaa !1284
; store i32 %var_2_79, i32* %var_2_81, align 1
%var_2_82 = extractelement <2 x i32> %var_2_74, i32 0
; Matched:%var_2_78:  %var_2_78 = bitcast i64* %var_2_67 to i32*
; %var_2_83 = bitcast i64* %var_2_72 to i32*
; Matched:\<badref\>:  store i32 %var_2_77, i32* %var_2_78, align 1, !tbaa !1284
; store i32 %var_2_82, i32* %var_2_83, align 1
%var_2_84 = extractelement <2 x i32> %var_2_74, i32 1
; Matched:%var_2_80:  %var_2_80 = getelementptr inbounds i8, i8* %var_2_60, i64 12
; %var_2_85 = getelementptr inbounds i8, i8* %var_2_65, i64 12
; Matched:%var_2_81:  %var_2_81 = bitcast i8* %var_2_80 to i32*
; %var_2_86 = bitcast i8* %var_2_85 to i32*
; Matched:\<badref\>:  store i32 %var_2_79, i32* %var_2_81, align 1, !tbaa !1284
; store i32 %var_2_84, i32* %var_2_86, align 1
%var_2_87 = bitcast %union.VectorReg* %var_2_64 to <2 x float>*
%var_2_88 = load <2 x float>, <2 x float>* %var_2_87, align 1
%var_2_89 = load <2 x i32>, <2 x i32>* %var_2_73, align 1
%var_2_90 = bitcast [32 x %union.VectorReg]* %var_2_45 to <2 x float>*
%var_2_91 = load <2 x float>, <2 x float>* %var_2_90, align 1
%var_2_92 = extractelement <2 x float> %var_2_88, i32 0
%var_2_93 = extractelement <2 x float> %var_2_91, i32 0
; Matched:%var_2_89:  %var_2_89 = fdiv float %var_2_87, %var_2_88
; %var_2_94 = fdiv float %var_2_92, %var_2_93
; Matched:\<badref\>:  store float %var_2_89, float* %var_2_73, align 1, !tbaa !1284
; store float %var_2_94, float* %var_2_78, align 1
%var_2_95 = bitcast <2 x float> %var_2_88 to <2 x i32>
%var_2_96 = extractelement <2 x i32> %var_2_95, i32 1
; Matched:\<badref\>:  store i32 %var_2_91, i32* %var_2_76, align 1, !tbaa !1284
; store i32 %var_2_96, i32* %var_2_81, align 1
%var_2_97 = extractelement <2 x i32> %var_2_89, i32 0
; Matched:\<badref\>:  store i32 %var_2_92, i32* %var_2_78, align 1, !tbaa !1284
; store i32 %var_2_97, i32* %var_2_83, align 1
%var_2_98 = extractelement <2 x i32> %var_2_89, i32 1
; Matched:\<badref\>:  store i32 %var_2_93, i32* %var_2_81, align 1, !tbaa !1284
; store i32 %var_2_98, i32* %var_2_86, align 1
; Matched:%var_2_94:  %var_2_94 = add i64 %var_2_61, -4
; %var_2_99 = add i64 %var_2_66, -4
; Matched:%var_2_95:  %var_2_95 = add i64 %var_2_63, 15
; %var_2_100 = add i64 %var_2_68, 15
; Matched:\<badref\>:  store i64 %var_2_95, i64* %PC, align 8
; store i64 %var_2_100, i64* %var_2_3, align 8
%var_2_101 = load <2 x float>, <2 x float>* %var_2_87, align 1
%var_2_102 = extractelement <2 x float> %var_2_101, i32 0
; Matched:%var_2_98:  %var_2_98 = inttoptr i64 %var_2_94 to float*
; %var_2_103 = inttoptr i64 %var_2_99 to float*
; Matched:\<badref\>:  store float %var_2_97, float* %var_2_98, align 4
; store float %var_2_102, float* %var_2_103, align 4
; Matched:%var_2_99:  %var_2_99 = load i64, i64* %RBP, align 8
; %var_2_104 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_100:  %var_2_100 = add i64 %var_2_99, -4
; %var_2_105 = add i64 %var_2_104, -4
; Matched:%var_2_101:  %var_2_101 = load i64, i64* %PC, align 8
; %var_2_106 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_102:  %var_2_102 = add i64 %var_2_101, 5
; %var_2_107 = add i64 %var_2_106, 5
; Matched:\<badref\>:  store i64 %var_2_102, i64* %PC, align 8
; store i64 %var_2_107, i64* %var_2_3, align 8
; Matched:%var_2_103:  %var_2_103 = inttoptr i64 %var_2_100 to i32*
; %var_2_108 = inttoptr i64 %var_2_105 to i32*
; Matched:%var_2_104:  %var_2_104 = load i32, i32* %var_2_103, align 4
; %var_2_109 = load i32, i32* %var_2_108, align 4
; Matched:\<badref\>:  store i32 %var_2_104, i32* %var_2_48, align 1, !tbaa !1284
; store i32 %var_2_109, i32* %var_2_52, align 1
; Matched:\<badref\>:  store float 0.000000e+00, float* %var_2_50, align 1, !tbaa !1284
; store float 0.000000e+00, float* %var_2_54, align 1
; Matched:\<badref\>:  store float 0.000000e+00, float* %var_2_52, align 1, !tbaa !1284
; store float 0.000000e+00, float* %var_2_56, align 1
; Matched:\<badref\>:  store float 0.000000e+00, float* %var_2_54, align 1, !tbaa !1284
; store float 0.000000e+00, float* %var_2_58, align 1
; Matched:%var_2_105:  %var_2_105 = load i64, i64* %RSP, align 8
; %var_2_110 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_106:  %var_2_106 = add i64 %var_2_105, 16
; %var_2_111 = add i64 %var_2_110, 16
; Matched:\<badref\>:  store i64 %var_2_106, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_111, i64* %var_2_6, align 8
; Matched:%var_2_107:  %var_2_107 = icmp ugt i64 %var_2_105, -17
; %var_2_112 = icmp ugt i64 %var_2_110, -17
; Matched:%var_2_108:  %var_2_108 = zext i1 %var_2_107 to i8
; %var_2_113 = zext i1 %var_2_112 to i8
; Matched:\<badref\>:  store i8 %var_2_108, i8* %var_2_14, align 1, !tbaa !1265
; store i8 %var_2_113, i8* %var_2_14, align 1
; Matched:%var_2_109:  %var_2_109 = trunc i64 %var_2_106 to i32
; %var_2_114 = trunc i64 %var_2_111 to i32
; Matched:%var_2_110:  %var_2_110 = and i32 %var_2_109, 255
; %var_2_115 = and i32 %var_2_114, 255
; Matched:%var_2_111:  %var_2_111 = tail call i32 @llvm.ctpop.i32(i32 %var_2_110) #12
; %var_2_116 = tail call i32 @llvm.ctpop.i32(i32 %var_2_115)
; Matched:%var_2_112:  %var_2_112 = trunc i32 %var_2_111 to i8
; %var_2_117 = trunc i32 %var_2_116 to i8
; Matched:%var_2_113:  %var_2_113 = and i8 %var_2_112, 1
; %var_2_118 = and i8 %var_2_117, 1
; Matched:%var_2_114:  %var_2_114 = xor i8 %var_2_113, 1
; %var_2_119 = xor i8 %var_2_118, 1
; Matched:\<badref\>:  store i8 %var_2_114, i8* %var_2_21, align 1, !tbaa !1279
; store i8 %var_2_119, i8* %var_2_21, align 1
; Matched:%var_2_115:  %var_2_115 = xor i64 %var_2_105, 16
; %var_2_120 = xor i64 %var_2_110, 16
; Matched:%var_2_116:  %var_2_116 = xor i64 %var_2_115, %var_2_106
; %var_2_121 = xor i64 %var_2_120, %var_2_111
; Matched:%var_2_117:  %var_2_117 = lshr i64 %var_2_116, 4
; %var_2_122 = lshr i64 %var_2_121, 4
; Matched:%var_2_118:  %var_2_118 = trunc i64 %var_2_117 to i8
; %var_2_123 = trunc i64 %var_2_122 to i8
; Matched:%var_2_119:  %var_2_119 = and i8 %var_2_118, 1
; %var_2_124 = and i8 %var_2_123, 1
; Matched:\<badref\>:  store i8 %var_2_119, i8* %var_2_27, align 1, !tbaa !1280
; store i8 %var_2_124, i8* %var_2_27, align 1
; Matched:%var_2_120:  %var_2_120 = icmp eq i64 %var_2_106, 0
; %var_2_125 = icmp eq i64 %var_2_111, 0
; Matched:%var_2_121:  %var_2_121 = zext i1 %var_2_120 to i8
; %var_2_126 = zext i1 %var_2_125 to i8
; Matched:\<badref\>:  store i8 %var_2_121, i8* %var_2_30, align 1, !tbaa !1281
; store i8 %var_2_126, i8* %var_2_30, align 1
; Matched:%var_2_122:  %var_2_122 = lshr i64 %var_2_106, 63
; %var_2_127 = lshr i64 %var_2_111, 63
; Matched:%var_2_123:  %var_2_123 = trunc i64 %var_2_122 to i8
; %var_2_128 = trunc i64 %var_2_127 to i8
; Matched:\<badref\>:  store i8 %var_2_123, i8* %var_2_33, align 1, !tbaa !1282
; store i8 %var_2_128, i8* %var_2_33, align 1
; Matched:%var_2_124:  %var_2_124 = lshr i64 %var_2_105, 63
; %var_2_129 = lshr i64 %var_2_110, 63
; Matched:%var_2_125:  %var_2_125 = xor i64 %var_2_122, %var_2_124
; %var_2_130 = xor i64 %var_2_127, %var_2_129
; Matched:%var_2_126:  %var_2_126 = add nuw nsw i64 %var_2_125, %var_2_122
; %var_2_131 = add nuw nsw i64 %var_2_130, %var_2_127
; Matched:%var_2_127:  %var_2_127 = icmp eq i64 %var_2_126, 2
; %var_2_132 = icmp eq i64 %var_2_131, 2
; Matched:%var_2_128:  %var_2_128 = zext i1 %var_2_127 to i8
; %var_2_133 = zext i1 %var_2_132 to i8
; Matched:\<badref\>:  store i8 %var_2_128, i8* %var_2_39, align 1, !tbaa !1283
; store i8 %var_2_133, i8* %var_2_39, align 1
; Matched:%var_2_129:  %var_2_129 = add i64 %var_2_101, 10
; %var_2_134 = add i64 %var_2_106, 10
; Matched:\<badref\>:  store i64 %var_2_129, i64* %PC, align 8
; store i64 %var_2_134, i64* %var_2_3, align 8
; Matched:%var_2_130:  %var_2_130 = add i64 %var_2_105, 24
; %var_2_135 = add i64 %var_2_110, 24
; Matched:%var_2_131:  %var_2_131 = inttoptr i64 %var_2_106 to i64*
; %var_2_136 = inttoptr i64 %var_2_111 to i64*
; Matched:%var_2_132:  %var_2_132 = load i64, i64* %var_2_131, align 8
; %var_2_137 = load i64, i64* %var_2_136, align 8
; Matched:\<badref\>:  store i64 %var_2_132, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_137, i64* %RBP.i, align 8
; Matched:\<badref\>:  store i64 %var_2_130, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_135, i64* %var_2_6, align 8
; Matched:%var_2_133:  %var_2_133 = add i64 %var_2_101, 11
; %var_2_138 = add i64 %var_2_106, 11
; Matched:\<badref\>:  store i64 %var_2_133, i64* %PC, align 8
; store i64 %var_2_138, i64* %var_2_3, align 8
; Matched:%var_2_134:  %var_2_134 = inttoptr i64 %var_2_130 to i64*
; %var_2_139 = inttoptr i64 %var_2_135 to i64*
; Matched:%var_2_135:  %var_2_135 = load i64, i64* %var_2_134, align 8
; %var_2_140 = load i64, i64* %var_2_139, align 8
; Matched:\<badref\>:  store i64 %var_2_135, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_140, i64* %var_2_3, align 8
; Matched:%var_2_136:  %var_2_136 = add i64 %var_2_105, 32
; %var_2_141 = add i64 %var_2_110, 32
; Matched:\<badref\>:  store i64 %var_2_136, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_141, i64* %var_2_6, align 8
ret %struct.Memory* %var_2_44
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
define %struct.Memory* @routine_movss_0x283f__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x283f__rip__type* @G_0x283f__rip_ to i64)
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
define %struct.Memory* @routine_movq__rax__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssq_MINUS0x10__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -16
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to i64*
  %15 = load i64, i64* %14, align 8
  %16 = sitofp i64 %15 to float
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
define %struct.Memory* @routine_movss__xmm1__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x4__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
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
