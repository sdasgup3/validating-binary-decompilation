; ModuleID = '/tmp/tmpsyd7rj8e-query.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x328b__rip__type = type <{ [8 x i8] }>
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
@G_0x328b__rip_ = global %G_0x328b__rip__type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @gettimeofday(i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @get_time(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
; Matched:%var_2_12:  %var_2_12 = load i64, i64* %PC, align 8
; %var_2_10 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_10, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_8, i64* %RBP.i, align 8
%var_2_11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
%var_2_12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
%var_2_13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
%var_2_14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
%var_2_15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
%var_2_16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; Matched:  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
; %RDI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
; Matched:%var_2_19:  %var_2_19 = add i64 %var_2_9, -24
; %var_2_17 = add i64 %var_2_7, -24
; Matched:\<badref\>:  store i64 %var_2_19, i64* %RDI, align 8, !tbaa !1261
; store i64 %var_2_17, i64* %RDI.i, align 8
; Matched:%var_2_3:  %var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
; %var_2_18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
; Matched:  %EAX = bitcast %union.anon* %var_2_3 to i32*
; %EAX.i25 = bitcast %union.anon* %var_2_18 to i32*
; Matched:  %RAX = getelementptr inbounds %union.anon, %union.anon* %var_2_3, i64 0, i32 0
; %RAX.i = getelementptr inbounds %union.anon, %union.anon* %var_2_18, i64 0, i32 0
; Matched:\<badref\>:  store i64 0, i64* %RAX, align 8, !tbaa !1261
; store i64 0, i64* %RAX.i, align 8
store i8 0, i8* %var_2_11, align 1
store i8 1, i8* %var_2_12, align 1
store i8 1, i8* %var_2_14, align 1
store i8 0, i8* %var_2_15, align 1
store i8 0, i8* %var_2_16, align 1
store i8 0, i8* %var_2_13, align 1
; Matched:  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
; %RSI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
; Matched:\<badref\>:  store i64 0, i64* %RSI, align 8, !tbaa !1261
; store i64 0, i64* %RSI.i, align 8
; Matched:%var_2_20:  %var_2_20 = add i64 %var_2_12, -1857
; %var_2_19 = add i64 %var_2_10, -1857
; Matched:%var_2_21:  %var_2_21 = add i64 %var_2_12, 20
; %var_2_20 = add i64 %var_2_10, 20
; Matched:%var_2_22:  %var_2_22 = add i64 %var_2_9, -48
; %var_2_21 = add i64 %var_2_7, -48
; Matched:%var_2_23:  %var_2_23 = inttoptr i64 %var_2_22 to i64*
; %var_2_22 = inttoptr i64 %var_2_21 to i64*
; Matched:\<badref\>:  store i64 %var_2_21, i64* %var_2_23, align 8
; store i64 %var_2_20, i64* %var_2_22, align 8
; Matched:\<badref\>:  store i64 %var_2_22, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_21, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_20, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_19, i64* %var_2_3, align 8
%var_2_23 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @gettimeofday to i64), %struct.Memory* %2)
%var_2_24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
%var_2_25 = bitcast [32 x %union.VectorReg]* %var_2_24 to i8*
%var_2_26 = load i64, i64* %var_2_3, align 8
%var_2_27 = add i64 %var_2_26, ptrtoint (%G_0x328b__rip__type* @G_0x328b__rip_ to i64)
%var_2_28 = add i64 %var_2_26, 8
store i64 %var_2_28, i64* %var_2_3, align 8
%var_2_29 = inttoptr i64 %var_2_27 to i64*
%var_2_30 = load i64, i64* %var_2_29, align 8
%var_2_31 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %var_2_24, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
store i64 %var_2_30, i64* %var_2_31, align 1
%var_2_32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
%var_2_33 = bitcast i64* %var_2_32 to double*
store double 0.000000e+00, double* %var_2_33, align 1
%var_2_34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
%var_2_35 = load i64, i64* %RBP.i, align 8
%var_2_36 = add i64 %var_2_35, -16
; Matched:%var_2_33:  %var_2_33 = add i64 %var_2_26, 14
; %var_2_37 = add i64 %var_2_26, 14
; Matched:\<badref\>:  store i64 %var_2_33, i64* %PC, align 8
; store i64 %var_2_37, i64* %var_2_3, align 8
%var_2_38 = inttoptr i64 %var_2_36 to i64*
%var_2_39 = load i64, i64* %var_2_38, align 8
%var_2_40 = sitofp i64 %var_2_39 to double
%var_2_41 = bitcast %union.VectorReg* %var_2_34 to double*
; Matched:\<badref\>:  store double %var_2_36, double* %var_2_37, align 1, !tbaa !1284
; store double %var_2_40, double* %var_2_41, align 1
%var_2_42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
%var_2_43 = add i64 %var_2_35, -8
; Matched:%var_2_39:  %var_2_39 = add i64 %var_2_26, 20
; %var_2_44 = add i64 %var_2_26, 20
; Matched:\<badref\>:  store i64 %var_2_39, i64* %PC, align 8
; store i64 %var_2_44, i64* %var_2_3, align 8
%var_2_45 = inttoptr i64 %var_2_43 to i64*
%var_2_46 = load i64, i64* %var_2_45, align 8
%var_2_47 = sitofp i64 %var_2_46 to double
%var_2_48 = bitcast %union.VectorReg* %var_2_42 to double*
%var_2_49 = bitcast i64 %var_2_30 to double
%var_2_50 = fmul double %var_2_47, %var_2_49
store double %var_2_50, double* %var_2_48, align 1
; Matched:%var_2_46:  %var_2_46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
; %var_2_51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
%var_2_52 = bitcast i64* %var_2_51 to <2 x i32>*
%var_2_53 = load <2 x i32>, <2 x i32>* %var_2_52, align 1
%var_2_54 = fadd double %var_2_40, %var_2_50
store double %var_2_54, double* %var_2_41, align 1
%.cast = bitcast double %var_2_54 to <2 x i32>
%var_2_55 = extractelement <2 x i32> %.cast, i32 0
%var_2_56 = bitcast [32 x %union.VectorReg]* %var_2_24 to i32*
store i32 %var_2_55, i32* %var_2_56, align 1
%var_2_57 = extractelement <2 x i32> %.cast, i32 1
%var_2_58 = getelementptr inbounds i8, i8* %var_2_25, i64 4
%var_2_59 = bitcast i8* %var_2_58 to i32*
store i32 %var_2_57, i32* %var_2_59, align 1
%var_2_60 = extractelement <2 x i32> %var_2_53, i32 0
; Matched:%var_2_56:  %var_2_56 = bitcast i64* %var_2_29 to i32*
; %var_2_61 = bitcast i64* %var_2_32 to i32*
; Matched:\<badref\>:  store i32 %var_2_55, i32* %var_2_56, align 1, !tbaa !1286
; store i32 %var_2_60, i32* %var_2_61, align 1
%var_2_62 = extractelement <2 x i32> %var_2_53, i32 1
; Matched:%var_2_58:  %var_2_58 = getelementptr inbounds i8, i8* %var_2_25, i64 12
; %var_2_63 = getelementptr inbounds i8, i8* %var_2_25, i64 12
; Matched:%var_2_59:  %var_2_59 = bitcast i8* %var_2_58 to i32*
; %var_2_64 = bitcast i8* %var_2_63 to i32*
; Matched:\<badref\>:  store i32 %var_2_57, i32* %var_2_59, align 1, !tbaa !1286
; store i32 %var_2_62, i32* %var_2_64, align 1
; Matched:%var_2_60:  %var_2_60 = add i64 %var_2_31, -20
; %var_2_65 = add i64 %var_2_35, -20
; Matched:%var_2_61:  %var_2_61 = load i32, i32* %EAX, align 4
; %var_2_66 = load i32, i32* %EAX.i25, align 4
; Matched:%var_2_62:  %var_2_62 = add i64 %var_2_26, 34
; %var_2_67 = add i64 %var_2_26, 34
; Matched:\<badref\>:  store i64 %var_2_62, i64* %PC, align 8
; store i64 %var_2_67, i64* %var_2_3, align 8
; Matched:%var_2_63:  %var_2_63 = inttoptr i64 %var_2_60 to i32*
; %var_2_68 = inttoptr i64 %var_2_65 to i32*
; Matched:\<badref\>:  store i32 %var_2_61, i32* %var_2_63, align 4
; store i32 %var_2_66, i32* %var_2_68, align 4
; Matched:%var_2_64:  %var_2_64 = load i64, i64* %RSP, align 8
; %var_2_69 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_65:  %var_2_65 = load i64, i64* %PC, align 8
; %var_2_70 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_66:  %var_2_66 = add i64 %var_2_64, 32
; %var_2_71 = add i64 %var_2_69, 32
; Matched:\<badref\>:  store i64 %var_2_66, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_71, i64* %var_2_6, align 8
; Matched:%var_2_67:  %var_2_67 = icmp ugt i64 %var_2_64, -33
; %var_2_72 = icmp ugt i64 %var_2_69, -33
; Matched:%var_2_68:  %var_2_68 = zext i1 %var_2_67 to i8
; %var_2_73 = zext i1 %var_2_72 to i8
; Matched:\<badref\>:  store i8 %var_2_68, i8* %var_2_13, align 1, !tbaa !1265
; store i8 %var_2_73, i8* %var_2_11, align 1
; Matched:%var_2_69:  %var_2_69 = trunc i64 %var_2_66 to i32
; %var_2_74 = trunc i64 %var_2_71 to i32
; Matched:%var_2_70:  %var_2_70 = and i32 %var_2_69, 255
; %var_2_75 = and i32 %var_2_74, 255
; Matched:%var_2_71:  %var_2_71 = tail call i32 @llvm.ctpop.i32(i32 %var_2_70) #14
; %var_2_76 = tail call i32 @llvm.ctpop.i32(i32 %var_2_75)
; Matched:%var_2_72:  %var_2_72 = trunc i32 %var_2_71 to i8
; %var_2_77 = trunc i32 %var_2_76 to i8
; Matched:%var_2_73:  %var_2_73 = and i8 %var_2_72, 1
; %var_2_78 = and i8 %var_2_77, 1
; Matched:%var_2_74:  %var_2_74 = xor i8 %var_2_73, 1
; %var_2_79 = xor i8 %var_2_78, 1
; Matched:\<badref\>:  store i8 %var_2_74, i8* %var_2_14, align 1, !tbaa !1279
; store i8 %var_2_79, i8* %var_2_12, align 1
; Matched:%var_2_75:  %var_2_75 = xor i64 %var_2_66, %var_2_64
; %var_2_80 = xor i64 %var_2_71, %var_2_69
; Matched:%var_2_76:  %var_2_76 = lshr i64 %var_2_75, 4
; %var_2_81 = lshr i64 %var_2_80, 4
; Matched:%var_2_77:  %var_2_77 = trunc i64 %var_2_76 to i8
; %var_2_82 = trunc i64 %var_2_81 to i8
; Matched:%var_2_78:  %var_2_78 = and i8 %var_2_77, 1
; %var_2_83 = and i8 %var_2_82, 1
; Matched:\<badref\>:  store i8 %var_2_78, i8* %var_2_15, align 1, !tbaa !1283
; store i8 %var_2_83, i8* %var_2_13, align 1
; Matched:%var_2_79:  %var_2_79 = icmp eq i64 %var_2_66, 0
; %var_2_84 = icmp eq i64 %var_2_71, 0
; Matched:%var_2_80:  %var_2_80 = zext i1 %var_2_79 to i8
; %var_2_85 = zext i1 %var_2_84 to i8
; Matched:\<badref\>:  store i8 %var_2_80, i8* %var_2_16, align 1, !tbaa !1280
; store i8 %var_2_85, i8* %var_2_14, align 1
; Matched:%var_2_81:  %var_2_81 = lshr i64 %var_2_66, 63
; %var_2_86 = lshr i64 %var_2_71, 63
; Matched:%var_2_82:  %var_2_82 = trunc i64 %var_2_81 to i8
; %var_2_87 = trunc i64 %var_2_86 to i8
; Matched:\<badref\>:  store i8 %var_2_82, i8* %var_2_17, align 1, !tbaa !1281
; store i8 %var_2_87, i8* %var_2_15, align 1
; Matched:%var_2_83:  %var_2_83 = lshr i64 %var_2_64, 63
; %var_2_88 = lshr i64 %var_2_69, 63
; Matched:%var_2_84:  %var_2_84 = xor i64 %var_2_81, %var_2_83
; %var_2_89 = xor i64 %var_2_86, %var_2_88
; Matched:%var_2_85:  %var_2_85 = add nuw nsw i64 %var_2_84, %var_2_81
; %var_2_90 = add nuw nsw i64 %var_2_89, %var_2_86
; Matched:%var_2_86:  %var_2_86 = icmp eq i64 %var_2_85, 2
; %var_2_91 = icmp eq i64 %var_2_90, 2
; Matched:%var_2_87:  %var_2_87 = zext i1 %var_2_86 to i8
; %var_2_92 = zext i1 %var_2_91 to i8
; Matched:\<badref\>:  store i8 %var_2_87, i8* %var_2_18, align 1, !tbaa !1282
; store i8 %var_2_92, i8* %var_2_16, align 1
; Matched:%var_2_88:  %var_2_88 = add i64 %var_2_65, 5
; %var_2_93 = add i64 %var_2_70, 5
; Matched:\<badref\>:  store i64 %var_2_88, i64* %PC, align 8
; store i64 %var_2_93, i64* %var_2_3, align 8
; Matched:%var_2_89:  %var_2_89 = add i64 %var_2_64, 40
; %var_2_94 = add i64 %var_2_69, 40
; Matched:%var_2_90:  %var_2_90 = inttoptr i64 %var_2_66 to i64*
; %var_2_95 = inttoptr i64 %var_2_71 to i64*
; Matched:%var_2_91:  %var_2_91 = load i64, i64* %var_2_90, align 8
; %var_2_96 = load i64, i64* %var_2_95, align 8
; Matched:\<badref\>:  store i64 %var_2_91, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_96, i64* %RBP.i, align 8
; Matched:\<badref\>:  store i64 %var_2_89, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_94, i64* %var_2_6, align 8
; Matched:%var_2_92:  %var_2_92 = add i64 %var_2_65, 6
; %var_2_97 = add i64 %var_2_70, 6
; Matched:\<badref\>:  store i64 %var_2_92, i64* %PC, align 8
; store i64 %var_2_97, i64* %var_2_3, align 8
; Matched:%var_2_93:  %var_2_93 = inttoptr i64 %var_2_89 to i64*
; %var_2_98 = inttoptr i64 %var_2_94 to i64*
; Matched:%var_2_94:  %var_2_94 = load i64, i64* %var_2_93, align 8
; %var_2_99 = load i64, i64* %var_2_98, align 8
; Matched:\<badref\>:  store i64 %var_2_94, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_99, i64* %var_2_3, align 8
; Matched:%var_2_95:  %var_2_95 = add i64 %var_2_64, 48
; %var_2_100 = add i64 %var_2_69, 48
; Matched:\<badref\>:  store i64 %var_2_95, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_100, i64* %var_2_6, align 8
ret %struct.Memory* %var_2_23
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
define %struct.Memory* @routine_leaq_MINUS0x10__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl__eax___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.gettimeofday_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x328b__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x328b__rip__type* @G_0x328b__rip_ to i64)
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
define %struct.Memory* @routine_cvtsi2sdq_MINUS0x10__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = sitofp i64 %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdq_MINUS0x8__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = sitofp i64 %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd__xmm0___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
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
define %struct.Memory* @routine_addsd__xmm2___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fadd double %8, %10
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
