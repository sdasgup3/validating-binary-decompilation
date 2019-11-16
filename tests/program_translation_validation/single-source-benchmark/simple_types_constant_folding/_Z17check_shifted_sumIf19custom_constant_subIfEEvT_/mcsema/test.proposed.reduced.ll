; ModuleID = '/tmp/tmpw7cu8xj5-query.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x622088_type = type <{ [8 x i8] }>
%G_0x6220a8_type = type <{ [4 x i8] }>
%G_0x94cd__rip__type = type <{ [4 x i8] }>
%G__0x419d98_type = type <{ [8 x i8] }>
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
@G_0x622088 = local_unnamed_addr global %G_0x622088_type zeroinitializer
@G_0x6220a8 = local_unnamed_addr global %G_0x6220a8_type zeroinitializer
@G_0x94cd__rip_ = global %G_0x94cd__rip__type zeroinitializer
@G__0x419d98 = global %G__0x419d98_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_40f5c0._ZN19custom_constant_subIfE8do_shiftEf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40f0b0._Z15tolerance_equalIfEbRT_S1_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @_Z17check_shifted_sumIf19custom_constant_subIfEEvT_(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
entry:
%var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
; Matched:  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
; %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
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
; Matched:%var_2_11:  %var_2_11 = load i64, i64* %PC, align 8
; %var_2_10 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_9, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_8, i64* %RBP.i, align 8
; Matched:%var_2_12:  %var_2_12 = add i64 %var_2_8, -24
; %var_2_11 = add i64 %var_2_7, -24
; Matched:\<badref\>:  store i64 %var_2_12, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_11, i64* %var_2_6, align 8
; Matched:%var_2_13:  %var_2_13 = icmp ult i64 %var_2_9, 16
; %var_2_12 = icmp ult i64 %var_2_8, 16
; Matched:%var_2_14:  %var_2_14 = zext i1 %var_2_13 to i8
; %var_2_13 = zext i1 %var_2_12 to i8
%var_2_14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
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
%var_2_27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
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
%var_2_33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
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
%var_2_39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; Matched:\<badref\>:  store i8 %var_2_39, i8* %var_2_40, align 1, !tbaa !1283
; store i8 %var_2_38, i8* %var_2_39, align 1
; Matched:%var_2_4:  %var_2_4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
; %var_2_40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
; Matched:%var_2_41:  %var_2_41 = add i64 %var_2_8, -12
; %var_2_41 = add i64 %var_2_7, -12
; Matched:%var_2_42:  %var_2_42 = add i64 %var_2_11, 12
; %var_2_42 = add i64 %var_2_10, 12
; Matched:\<badref\>:  store i64 %var_2_42, i64* %PC, align 8
; store i64 %var_2_42, i64* %var_2_3, align 8
%var_2_43 = bitcast [32 x %union.VectorReg]* %var_2_40 to <2 x float>*
%var_2_44 = load <2 x float>, <2 x float>* %var_2_43, align 1
%var_2_45 = extractelement <2 x float> %var_2_44, i32 0
; Matched:%var_2_46:  %var_2_46 = inttoptr i64 %var_2_41 to float*
; %var_2_46 = inttoptr i64 %var_2_41 to float*
; Matched:\<badref\>:  store float %var_2_45, float* %var_2_46, align 4
; store float %var_2_45, float* %var_2_46, align 4
; Matched:%var_2_47:  %var_2_47 = bitcast [32 x %union.VectorReg]* %var_2_4 to i8*
; %var_2_47 = bitcast [32 x %union.VectorReg]* %var_2_40 to i8*
%var_2_48 = load i64, i64* %var_2_3, align 8
%var_2_49 = bitcast [32 x %union.VectorReg]* %var_2_40 to <2 x i32>*
%var_2_50 = load <2 x i32>, <2 x i32>* %var_2_49, align 1
; Matched:%var_2_51:  %var_2_51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
; %var_2_51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
%var_2_52 = bitcast i64* %var_2_51 to <2 x i32>*
%var_2_53 = load <2 x i32>, <2 x i32>* %var_2_52, align 1
; Matched:%var_2_54:  %var_2_54 = load double, double* bitcast (%init_value_type* @init_value to double*), align 8
; %var_2_54 = load double, double* bitcast (%G_0x622088_type* @G_0x622088 to double*), align 8
; Matched:%var_2_55:  %var_2_55 = fptrunc double %var_2_54 to float
; %var_2_55 = fptrunc double %var_2_54 to float
; Matched:%var_2_56:  %var_2_56 = bitcast [32 x %union.VectorReg]* %var_2_4 to float*
; %var_2_56 = bitcast [32 x %union.VectorReg]* %var_2_40 to float*
; Matched:\<badref\>:  store float %var_2_55, float* %var_2_56, align 1, !tbaa !1284
; store float %var_2_55, float* %var_2_56, align 1
%var_2_57 = extractelement <2 x i32> %var_2_50, i32 1
; Matched:%var_2_58:  %var_2_58 = getelementptr inbounds i8, i8* %var_2_47, i64 4
; %var_2_58 = getelementptr inbounds i8, i8* %var_2_47, i64 4
; Matched:%var_2_59:  %var_2_59 = bitcast i8* %var_2_58 to i32*
; %var_2_59 = bitcast i8* %var_2_58 to i32*
; Matched:\<badref\>:  store i32 %var_2_57, i32* %var_2_59, align 1, !tbaa !1284
; store i32 %var_2_57, i32* %var_2_59, align 1
%var_2_60 = extractelement <2 x i32> %var_2_53, i32 0
; Matched:%var_2_61:  %var_2_61 = bitcast i64* %var_2_51 to i32*
; %var_2_61 = bitcast i64* %var_2_51 to i32*
; Matched:\<badref\>:  store i32 %var_2_60, i32* %var_2_61, align 1, !tbaa !1284
; store i32 %var_2_60, i32* %var_2_61, align 1
%var_2_62 = extractelement <2 x i32> %var_2_53, i32 1
; Matched:%var_2_63:  %var_2_63 = getelementptr inbounds i8, i8* %var_2_47, i64 12
; %var_2_63 = getelementptr inbounds i8, i8* %var_2_47, i64 12
; Matched:%var_2_64:  %var_2_64 = bitcast i8* %var_2_63 to i32*
; %var_2_64 = bitcast i8* %var_2_63 to i32*
; Matched:\<badref\>:  store i32 %var_2_62, i32* %var_2_64, align 1, !tbaa !1284
; store i32 %var_2_62, i32* %var_2_64, align 1
%var_2_65 = add i64 %var_2_48, -45
; Matched:%var_2_66:  %var_2_66 = add i64 %var_2_48, 14
; %var_2_66 = add i64 %var_2_48, 14
; Matched:%var_2_107:  %var_2_107 = load i64, i64* %RSP, align 8, !tbaa !1261
; %var_2_67 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_108:  %var_2_108 = add i64 %var_2_107, -8
; %var_2_68 = add i64 %var_2_67, -8
; Matched:%var_2_69:  %var_2_69 = inttoptr i64 %var_2_68 to i64*
; %var_2_69 = inttoptr i64 %var_2_68 to i64*
; Matched:\<badref\>:  store i64 %var_2_66, i64* %var_2_69, align 8
; store i64 %var_2_66, i64* %var_2_69, align 8
; Matched:\<badref\>:  store i64 %var_2_68, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_68, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_65, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_65, i64* %var_2_3, align 8
%call2_40f5f6 = tail call %struct.Memory* @sub_40f5c0._ZN19custom_constant_subIfE8do_shiftEf(%struct.State* %0, i64 %var_2_65, %struct.Memory* %2)
  %RDI.i27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
; Matched:%var_2_71:  %var_2_71 = load i64, i64* %RBP, align 8
; %var_2_70 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_72:  %var_2_72 = add i64 %var_2_71, -4
; %var_2_71 = add i64 %var_2_70, -4
%var_2_72 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_72, i64* %RDI, align 8, !tbaa !1261
; store i64 %var_2_71, i64* %RDI.i27, align 8
; Matched:  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
; %RSI.i24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
; Matched:%var_2_74:  %var_2_74 = add i64 %var_2_71, -8
; %var_2_73 = add i64 %var_2_70, -8
; Matched:\<badref\>:  store i64 %var_2_74, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_73, i64* %RSI.i24, align 8
%var_2_74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
%var_2_75 = bitcast %union.VectorReg* %var_2_74 to i8*
%var_2_76 = add i64 %var_2_72, add (i64 ptrtoint (%G_0x94cd__rip__type* @G_0x94cd__rip_ to i64), i64 8)
%var_2_77 = add i64 %var_2_72, 16
store i64 %var_2_77, i64* %var_2_3, align 8
%var_2_78 = inttoptr i64 %var_2_76 to i32*
%var_2_79 = load i32, i32* %var_2_78, align 4
; Matched:%var_2_77:  %var_2_77 = bitcast %union.VectorReg* %var_2_5 to float*
; %var_2_80 = bitcast %union.VectorReg* %var_2_74 to float*
%var_2_81 = bitcast %union.VectorReg* %var_2_74 to i32*
store i32 %var_2_79, i32* %var_2_81, align 1
%var_2_82 = getelementptr inbounds i8, i8* %var_2_75, i64 4
%var_2_83 = bitcast i8* %var_2_82 to float*
store float 0.000000e+00, float* %var_2_83, align 1
%var_2_84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
%var_2_85 = bitcast i64* %var_2_84 to float*
store float 0.000000e+00, float* %var_2_85, align 1
%var_2_86 = getelementptr inbounds i8, i8* %var_2_75, i64 12
%var_2_87 = bitcast i8* %var_2_86 to float*
store float 0.000000e+00, float* %var_2_87, align 1
%var_2_88 = bitcast %union.VectorReg* %var_2_74 to <2 x float>*
%var_2_89 = load <2 x float>, <2 x float>* %var_2_88, align 1
%var_2_90 = bitcast i64* %var_2_84 to <2 x i32>*
%var_2_91 = load <2 x i32>, <2 x i32>* %var_2_90, align 1
%var_2_92 = load <2 x float>, <2 x float>* %var_2_43, align 1
%var_2_93 = extractelement <2 x float> %var_2_89, i32 0
%var_2_94 = extractelement <2 x float> %var_2_92, i32 0
; Matched:%var_2_92:  %var_2_92 = fmul float %var_2_90, %var_2_91
; %var_2_95 = fmul float %var_2_93, %var_2_94
; Matched:\<badref\>:  store float %var_2_92, float* %var_2_77, align 1, !tbaa !1284
; store float %var_2_95, float* %var_2_80, align 1
%var_2_96 = bitcast <2 x float> %var_2_89 to <2 x i32>
%var_2_97 = extractelement <2 x i32> %var_2_96, i32 1
; Matched:%var_2_95:  %var_2_95 = bitcast i8* %var_2_79 to i32*
; %var_2_98 = bitcast i8* %var_2_82 to i32*
; Matched:\<badref\>:  store i32 %var_2_94, i32* %var_2_95, align 1, !tbaa !1284
; store i32 %var_2_97, i32* %var_2_98, align 1
%var_2_99 = extractelement <2 x i32> %var_2_91, i32 0
; Matched:%var_2_97:  %var_2_97 = bitcast i64* %var_2_81 to i32*
; %var_2_100 = bitcast i64* %var_2_84 to i32*
; Matched:\<badref\>:  store i32 %var_2_96, i32* %var_2_97, align 1, !tbaa !1284
; store i32 %var_2_99, i32* %var_2_100, align 1
%var_2_101 = extractelement <2 x i32> %var_2_91, i32 1
; Matched:%var_2_99:  %var_2_99 = bitcast i8* %var_2_83 to i32*
; %var_2_102 = bitcast i8* %var_2_86 to i32*
; Matched:\<badref\>:  store i32 %var_2_98, i32* %var_2_99, align 1, !tbaa !1284
; store i32 %var_2_101, i32* %var_2_102, align 1
; Matched:%var_2_100:  %var_2_100 = add i64 %var_2_73, 25
; %var_2_103 = add i64 %var_2_72, 25
; Matched:\<badref\>:  store i64 %var_2_100, i64* %PC, align 8
; store i64 %var_2_103, i64* %var_2_3, align 8
%var_2_104 = load <2 x float>, <2 x float>* %var_2_88, align 1
%var_2_105 = extractelement <2 x float> %var_2_104, i32 0
; Matched:%var_2_103:  %var_2_103 = inttoptr i64 %var_2_74 to float*
; %var_2_106 = inttoptr i64 %var_2_73 to float*
; Matched:\<badref\>:  store float %var_2_102, float* %var_2_103, align 4
; store float %var_2_105, float* %var_2_106, align 4
%var_2_107 = load i64, i64* %var_2_3, align 8
%var_2_108 = add i64 %var_2_107, -1380
; Matched:%var_2_106:  %var_2_106 = add i64 %var_2_104, 5
; %var_2_109 = add i64 %var_2_107, 5
; Matched:%var_2_158:  %var_2_158 = load i64, i64* %RSP, align 8, !tbaa !1261
; %var_2_110 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_159:  %var_2_159 = add i64 %var_2_158, -8
; %var_2_111 = add i64 %var_2_110, -8
; Matched:%var_2_109:  %var_2_109 = inttoptr i64 %var_2_108 to i64*
; %var_2_112 = inttoptr i64 %var_2_111 to i64*
; Matched:\<badref\>:  store i64 %var_2_106, i64* %var_2_109, align 8
; store i64 %var_2_109, i64* %var_2_112, align 8
; Matched:\<badref\>:  store i64 %var_2_108, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_111, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_105, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_108, i64* %var_2_3, align 8
%call2_40f614 = tail call %struct.Memory* @sub_40f0b0._Z15tolerance_equalIfEbRT_S1_(%struct.State* %0, i64 %var_2_108, %struct.Memory* %call2_40f5f6)
%var_2_113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
%AL.i16 = bitcast %union.anon* %var_2_113 to i8*
%var_2_114 = load i8, i8* %AL.i16, align 1
; Matched:%var_2_112:  %var_2_112 = load i64, i64* %PC, align 8
; %var_2_115 = load i64, i64* %var_2_3, align 8
%var_2_116 = and i8 %var_2_114, 1
store i8 0, i8* %var_2_14, align 1
; Matched:%var_2_114:  %var_2_114 = zext i8 %var_2_113 to i32
; %var_2_117 = zext i8 %var_2_116 to i32
; Matched:%var_2_115:  %var_2_115 = tail call i32 @llvm.ctpop.i32(i32 %var_2_114) #12
; %var_2_118 = tail call i32 @llvm.ctpop.i32(i32 %var_2_117)
; Matched:%var_2_116:  %var_2_116 = trunc i32 %var_2_115 to i8
; %var_2_119 = trunc i32 %var_2_118 to i8
; Matched:%var_2_117:  %var_2_117 = xor i8 %var_2_116, 1
; %var_2_120 = xor i8 %var_2_119, 1
; Matched:\<badref\>:  store i8 %var_2_117, i8* %var_2_22, align 1, !tbaa !1279
; store i8 %var_2_120, i8* %var_2_21, align 1
%var_2_121 = xor i8 %var_2_116, 1
; Matched:\<badref\>:  store i8 %var_2_118, i8* %var_2_31, align 1, !tbaa !1281
; store i8 %var_2_121, i8* %var_2_30, align 1
store i8 0, i8* %var_2_33, align 1
store i8 0, i8* %var_2_39, align 1
store i8 0, i8* %var_2_27, align 1
%var_2_122 = icmp eq i8 %var_2_121, 0
; Matched:  %.v = select i1 %var_2_119, i64 35, i64 8
; %.v = select i1 %var_2_122, i64 35, i64 8
; Matched:%var_2_120:  %var_2_120 = add i64 %var_2_112, %.v
; %var_2_123 = add i64 %var_2_115, %.v
; Matched:\<badref\>:  store i64 %var_2_120, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_123, i64* %var_2_3, align 8
br i1 %var_2_122, label %block_.L_40f63c, label %block_40f621

block_40f621:                                     ; preds = %entry
  store i64 ptrtoint (%G__0x419d98_type* @G__0x419d98 to i64), i64* %RDI.i27, align 8
; Matched:%var_2_154:  %var_2_154 = load i32, i32* bitcast (%current_test_type* @current_test to i32*), align 8
; %var_2_124 = load i32, i32* bitcast (%G_0x6220a8_type* @G_0x6220a8 to i32*), align 8
; Matched:%var_2_155:  %var_2_155 = zext i32 %var_2_154 to i64
; %var_2_125 = zext i32 %var_2_124 to i64
; Matched:\<badref\>:  store i64 %var_2_155, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_125, i64* %RSI.i24, align 8
; Matched:\<badref\>:  store i8 0, i8* %AL, align 1, !tbaa !1286
; store i8 0, i8* %AL.i16, align 1
; Matched:%var_2_156:  %var_2_156 = add i64 %var_2_120, -61265
; %var_2_126 = add i64 %var_2_123, -61265
; Matched:%var_2_157:  %var_2_157 = add i64 %var_2_120, 24
; %var_2_127 = add i64 %var_2_123, 24
; Matched:%var_2_67:  %var_2_67 = load i64, i64* %RSP, align 8, !tbaa !1261
; %var_2_128 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_68:  %var_2_68 = add i64 %var_2_67, -8
; %var_2_129 = add i64 %var_2_128, -8
; Matched:%var_2_160:  %var_2_160 = inttoptr i64 %var_2_159 to i64*
; %var_2_130 = inttoptr i64 %var_2_129 to i64*
; Matched:\<badref\>:  store i64 %var_2_157, i64* %var_2_160, align 8
; store i64 %var_2_127, i64* %var_2_130, align 8
; Matched:\<badref\>:  store i64 %var_2_159, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_129, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_156, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_126, i64* %var_2_3, align 8
%var_2_131 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_40f614)
; Matched:  %EAX = bitcast %union.anon* %var_2_3 to i32*
; %EAX.i = bitcast %union.anon* %var_2_113 to i32*
; Matched:%var_2_162:  %var_2_162 = load i64, i64* %RBP, align 8
; %var_2_132 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_163:  %var_2_163 = add i64 %var_2_162, -12
; %var_2_133 = add i64 %var_2_132, -12
; Matched:%var_2_164:  %var_2_164 = load i32, i32* %EAX, align 4
; %var_2_134 = load i32, i32* %EAX.i, align 4
; Matched:%var_2_165:  %var_2_165 = load i64, i64* %PC, align 8
; %var_2_135 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_166:  %var_2_166 = add i64 %var_2_165, 3
; %var_2_136 = add i64 %var_2_135, 3
; Matched:\<badref\>:  store i64 %var_2_166, i64* %PC, align 8
; store i64 %var_2_136, i64* %var_2_3, align 8
; Matched:%var_2_167:  %var_2_167 = inttoptr i64 %var_2_163 to i32*
; %var_2_137 = inttoptr i64 %var_2_133 to i32*
; Matched:\<badref\>:  store i32 %var_2_164, i32* %var_2_167, align 4
; store i32 %var_2_134, i32* %var_2_137, align 4
; Matched:  %.pre = load i64, i64* %PC, align 8
; %.pre = load i64, i64* %var_2_3, align 8
  br label %block_.L_40f63c

block_.L_40f63c:                                  ; preds = %block_40f621, %entry
; Matched:%var_2_121:  %var_2_121 = phi i64 [ %var_2_120, %block_40f5e0 ], [ %.pre, %block_40f621 ]
; %var_2_138 = phi i64 [ %var_2_123, %entry ], [ %.pre, %block_40f621 ]
%MEMORY.0 = phi %struct.Memory* [ %call2_40f614, %entry ], [ %var_2_131, %block_40f621 ]
; Matched:%var_2_122:  %var_2_122 = load i64, i64* %RSP, align 8
; %var_2_139 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_123:  %var_2_123 = add i64 %var_2_122, 16
; %var_2_140 = add i64 %var_2_139, 16
; Matched:\<badref\>:  store i64 %var_2_123, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_140, i64* %var_2_6, align 8
; Matched:%var_2_124:  %var_2_124 = icmp ugt i64 %var_2_122, -17
; %var_2_141 = icmp ugt i64 %var_2_139, -17
; Matched:%var_2_125:  %var_2_125 = zext i1 %var_2_124 to i8
; %var_2_142 = zext i1 %var_2_141 to i8
; Matched:\<badref\>:  store i8 %var_2_125, i8* %var_2_15, align 1, !tbaa !1265
; store i8 %var_2_142, i8* %var_2_14, align 1
; Matched:%var_2_126:  %var_2_126 = trunc i64 %var_2_123 to i32
; %var_2_143 = trunc i64 %var_2_140 to i32
; Matched:%var_2_127:  %var_2_127 = and i32 %var_2_126, 255
; %var_2_144 = and i32 %var_2_143, 255
; Matched:%var_2_128:  %var_2_128 = tail call i32 @llvm.ctpop.i32(i32 %var_2_127) #12
; %var_2_145 = tail call i32 @llvm.ctpop.i32(i32 %var_2_144)
; Matched:%var_2_129:  %var_2_129 = trunc i32 %var_2_128 to i8
; %var_2_146 = trunc i32 %var_2_145 to i8
; Matched:%var_2_130:  %var_2_130 = and i8 %var_2_129, 1
; %var_2_147 = and i8 %var_2_146, 1
; Matched:%var_2_131:  %var_2_131 = xor i8 %var_2_130, 1
; %var_2_148 = xor i8 %var_2_147, 1
; Matched:\<badref\>:  store i8 %var_2_131, i8* %var_2_22, align 1, !tbaa !1279
; store i8 %var_2_148, i8* %var_2_21, align 1
; Matched:%var_2_132:  %var_2_132 = xor i64 %var_2_122, 16
; %var_2_149 = xor i64 %var_2_139, 16
; Matched:%var_2_133:  %var_2_133 = xor i64 %var_2_132, %var_2_123
; %var_2_150 = xor i64 %var_2_149, %var_2_140
; Matched:%var_2_134:  %var_2_134 = lshr i64 %var_2_133, 4
; %var_2_151 = lshr i64 %var_2_150, 4
; Matched:%var_2_135:  %var_2_135 = trunc i64 %var_2_134 to i8
; %var_2_152 = trunc i64 %var_2_151 to i8
; Matched:%var_2_136:  %var_2_136 = and i8 %var_2_135, 1
; %var_2_153 = and i8 %var_2_152, 1
; Matched:\<badref\>:  store i8 %var_2_136, i8* %var_2_28, align 1, !tbaa !1280
; store i8 %var_2_153, i8* %var_2_27, align 1
; Matched:%var_2_137:  %var_2_137 = icmp eq i64 %var_2_123, 0
; %var_2_154 = icmp eq i64 %var_2_140, 0
; Matched:%var_2_138:  %var_2_138 = zext i1 %var_2_137 to i8
; %var_2_155 = zext i1 %var_2_154 to i8
; Matched:\<badref\>:  store i8 %var_2_138, i8* %var_2_31, align 1, !tbaa !1281
; store i8 %var_2_155, i8* %var_2_30, align 1
; Matched:%var_2_139:  %var_2_139 = lshr i64 %var_2_123, 63
; %var_2_156 = lshr i64 %var_2_140, 63
; Matched:%var_2_140:  %var_2_140 = trunc i64 %var_2_139 to i8
; %var_2_157 = trunc i64 %var_2_156 to i8
; Matched:\<badref\>:  store i8 %var_2_140, i8* %var_2_34, align 1, !tbaa !1282
; store i8 %var_2_157, i8* %var_2_33, align 1
; Matched:%var_2_141:  %var_2_141 = lshr i64 %var_2_122, 63
; %var_2_158 = lshr i64 %var_2_139, 63
; Matched:%var_2_142:  %var_2_142 = xor i64 %var_2_139, %var_2_141
; %var_2_159 = xor i64 %var_2_156, %var_2_158
; Matched:%var_2_143:  %var_2_143 = add nuw nsw i64 %var_2_142, %var_2_139
; %var_2_160 = add nuw nsw i64 %var_2_159, %var_2_156
; Matched:%var_2_144:  %var_2_144 = icmp eq i64 %var_2_143, 2
; %var_2_161 = icmp eq i64 %var_2_160, 2
; Matched:%var_2_145:  %var_2_145 = zext i1 %var_2_144 to i8
; %var_2_162 = zext i1 %var_2_161 to i8
; Matched:\<badref\>:  store i8 %var_2_145, i8* %var_2_40, align 1, !tbaa !1283
; store i8 %var_2_162, i8* %var_2_39, align 1
; Matched:%var_2_146:  %var_2_146 = add i64 %var_2_121, 5
; %var_2_163 = add i64 %var_2_138, 5
; Matched:\<badref\>:  store i64 %var_2_146, i64* %PC, align 8
; store i64 %var_2_163, i64* %var_2_3, align 8
; Matched:%var_2_147:  %var_2_147 = add i64 %var_2_122, 24
; %var_2_164 = add i64 %var_2_139, 24
; Matched:%var_2_148:  %var_2_148 = inttoptr i64 %var_2_123 to i64*
; %var_2_165 = inttoptr i64 %var_2_140 to i64*
; Matched:%var_2_149:  %var_2_149 = load i64, i64* %var_2_148, align 8
; %var_2_166 = load i64, i64* %var_2_165, align 8
; Matched:\<badref\>:  store i64 %var_2_149, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_166, i64* %RBP.i, align 8
; Matched:\<badref\>:  store i64 %var_2_147, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_164, i64* %var_2_6, align 8
; Matched:%var_2_150:  %var_2_150 = add i64 %var_2_121, 6
; %var_2_167 = add i64 %var_2_138, 6
; Matched:\<badref\>:  store i64 %var_2_150, i64* %PC, align 8
; store i64 %var_2_167, i64* %var_2_3, align 8
; Matched:%var_2_151:  %var_2_151 = inttoptr i64 %var_2_147 to i64*
; %var_2_168 = inttoptr i64 %var_2_164 to i64*
; Matched:%var_2_152:  %var_2_152 = load i64, i64* %var_2_151, align 8
; %var_2_169 = load i64, i64* %var_2_168, align 8
; Matched:\<badref\>:  store i64 %var_2_152, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_169, i64* %var_2_3, align 8
; Matched:%var_2_153:  %var_2_153 = add i64 %var_2_122, 32
; %var_2_170 = add i64 %var_2_139, 32
; Matched:\<badref\>:  store i64 %var_2_153, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_170, i64* %var_2_6, align 8
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
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
define %struct.Memory* @routine_cvtsd2ss_0x622088___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %8 = load <2 x i32>, <2 x i32>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to <2 x i32>*
  %11 = load <2 x i32>, <2 x i32>* %10, align 1
  %12 = load double, double* bitcast (%G_0x622088_type* @G_0x622088 to double*), align 8
  %13 = fptrunc double %12 to float
  %14 = bitcast %union.VectorReg* %3 to float*
  store float %13, float* %14, align 1
  %15 = extractelement <2 x i32> %8, i32 1
  %16 = getelementptr inbounds i8, i8* %4, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %11, i32 0
  %19 = bitcast i64* %9 to i32*
  store i32 %18, i32* %19, align 1
  %20 = extractelement <2 x i32> %11, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 12
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._ZN19custom_constant_subIfE8do_shiftEf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x4__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x8__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x94cd__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x94cd__rip__type* @G_0x94cd__rip_ to i64)
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
define %struct.Memory* @routine_mulss__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %17 = fmul float %15, %16
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
define %struct.Memory* @routine_movss__xmm1__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
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
define %struct.Memory* @routine_callq_._Z15tolerance_equalIfEbRT_S1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_40f63c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x419d98___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x419d98_type* @G__0x419d98 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x6220a8___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x6220a8_type* @G_0x6220a8 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x0___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 0, i8* %AL, align 1
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
