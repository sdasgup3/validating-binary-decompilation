; ModuleID = '/tmp/tmpjk0khvi6-query.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x39d__rip__type = type <{ [8 x i8] }>
%G_0x3ae__rip__type = type <{ [8 x i8] }>
%G_0x3c8__rip__type = type <{ [8 x i8] }>
%G_0x3d8__rip__type = type <{ [8 x i8] }>
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
@G_0x39d__rip_ = global %G_0x39d__rip__type zeroinitializer
@G_0x3ae__rip_ = global %G_0x3ae__rip__type zeroinitializer
@G_0x3c8__rip_ = global %G_0x3c8__rip__type zeroinitializer
@G_0x3d8__rip_ = global %G_0x3d8__rip__type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_4005f0.fibFP(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @fibFP(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
; Matched:%var_2_12:  %var_2_12 = add i64 %var_2_8, -40
; %var_2_11 = add i64 %var_2_7, -40
; Matched:\<badref\>:  store i64 %var_2_12, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_11, i64* %var_2_6, align 8
; Matched:%var_2_13:  %var_2_13 = icmp ult i64 %var_2_9, 32
; %var_2_12 = icmp ult i64 %var_2_8, 32
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
; Matched:%var_2_23:  %var_2_23 = xor i64 %var_2_9, %var_2_12
; %var_2_22 = xor i64 %var_2_8, %var_2_11
; Matched:%var_2_24:  %var_2_24 = lshr i64 %var_2_23, 4
; %var_2_23 = lshr i64 %var_2_22, 4
; Matched:%var_2_25:  %var_2_25 = trunc i64 %var_2_24 to i8
; %var_2_24 = trunc i64 %var_2_23 to i8
; Matched:%var_2_26:  %var_2_26 = and i8 %var_2_25, 1
; %var_2_25 = and i8 %var_2_24, 1
%var_2_26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
; Matched:\<badref\>:  store i8 %var_2_26, i8* %var_2_27, align 1, !tbaa !1280
; store i8 %var_2_25, i8* %var_2_26, align 1
; Matched:%var_2_28:  %var_2_28 = icmp eq i64 %var_2_12, 0
; %var_2_27 = icmp eq i64 %var_2_11, 0
; Matched:%var_2_29:  %var_2_29 = zext i1 %var_2_28 to i8
; %var_2_28 = zext i1 %var_2_27 to i8
%var_2_29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
; Matched:\<badref\>:  store i8 %var_2_29, i8* %var_2_30, align 1, !tbaa !1281
; store i8 %var_2_28, i8* %var_2_29, align 1
; Matched:%var_2_31:  %var_2_31 = lshr i64 %var_2_12, 63
; %var_2_30 = lshr i64 %var_2_11, 63
; Matched:%var_2_32:  %var_2_32 = trunc i64 %var_2_31 to i8
; %var_2_31 = trunc i64 %var_2_30 to i8
%var_2_32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
; Matched:\<badref\>:  store i8 %var_2_32, i8* %var_2_33, align 1, !tbaa !1282
; store i8 %var_2_31, i8* %var_2_32, align 1
; Matched:%var_2_34:  %var_2_34 = lshr i64 %var_2_9, 63
; %var_2_33 = lshr i64 %var_2_8, 63
; Matched:%var_2_35:  %var_2_35 = xor i64 %var_2_31, %var_2_34
; %var_2_34 = xor i64 %var_2_30, %var_2_33
; Matched:%var_2_36:  %var_2_36 = add nuw nsw i64 %var_2_35, %var_2_34
; %var_2_35 = add nuw nsw i64 %var_2_34, %var_2_33
; Matched:%var_2_37:  %var_2_37 = icmp eq i64 %var_2_36, 2
; %var_2_36 = icmp eq i64 %var_2_35, 2
; Matched:%var_2_38:  %var_2_38 = zext i1 %var_2_37 to i8
; %var_2_37 = zext i1 %var_2_36 to i8
%var_2_38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; Matched:\<badref\>:  store i8 %var_2_38, i8* %var_2_39, align 1, !tbaa !1283
; store i8 %var_2_37, i8* %var_2_38, align 1
%var_2_39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
%var_2_40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
%var_2_41 = add i64 %var_2_10, add (i64 ptrtoint (%G_0x3d8__rip__type* @G_0x3d8__rip_ to i64), i64 7)
%var_2_42 = add i64 %var_2_10, 15
store i64 %var_2_42, i64* %var_2_3, align 8
%var_2_43 = inttoptr i64 %var_2_41 to i64*
%var_2_44 = load i64, i64* %var_2_43, align 8
%var_2_45 = bitcast %union.VectorReg* %var_2_40 to double*
%var_2_46 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_40, i64 0, i32 0, i32 0, i32 0, i64 0
store i64 %var_2_44, i64* %var_2_46, align 1
; Matched:%var_2_43:  %var_2_43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
; %var_2_47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_44:  %var_2_44 = bitcast i64* %var_2_43 to double*
; %var_2_48 = bitcast i64* %var_2_47 to double*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_44, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_48, align 1
; Matched:%var_2_45:  %var_2_45 = add i64 %var_2_8, -24
; %var_2_49 = add i64 %var_2_7, -24
; Matched:%var_2_46:  %var_2_46 = add i64 %var_2_11, 20
; %var_2_50 = add i64 %var_2_10, 20
; Matched:\<badref\>:  store i64 %var_2_46, i64* %PC, align 8
; store i64 %var_2_50, i64* %var_2_3, align 8
; Matched:%var_2_47:  %var_2_47 = bitcast [32 x %union.VectorReg]* %var_2_3 to double*
; %var_2_51 = bitcast [32 x %union.VectorReg]* %var_2_39 to double*
%var_2_52 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %var_2_39, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:%var_2_49:  %var_2_49 = load i64, i64* %var_2_48, align 1
; %var_2_53 = load i64, i64* %var_2_52, align 1
; Matched:%var_2_50:  %var_2_50 = inttoptr i64 %var_2_45 to i64*
; %var_2_54 = inttoptr i64 %var_2_49 to i64*
; Matched:\<badref\>:  store i64 %var_2_49, i64* %var_2_50, align 8
; store i64 %var_2_53, i64* %var_2_54, align 8
%var_2_55 = load i64, i64* %RBP.i, align 8
%var_2_56 = add i64 %var_2_55, -16
%var_2_57 = load i64, i64* %var_2_3, align 8
%var_2_58 = add i64 %var_2_57, 5
; Matched:\<badref\>:  store i64 %var_2_54, i64* %PC, align 8
; store i64 %var_2_58, i64* %var_2_3, align 8
%var_2_59 = load double, double* %var_2_45, align 1
%var_2_60 = inttoptr i64 %var_2_56 to double*
%var_2_61 = load double, double* %var_2_60, align 8
%var_2_62 = fcmp uno double %var_2_59, %var_2_61
br i1 %var_2_62, label %var_2_63, label %var_2_73

var_2_63:
%var_2_64 = fadd double %var_2_59, %var_2_61
%var_2_65 = bitcast double %var_2_64 to i64
%var_2_66 = and i64 %var_2_65, 9221120237041090560
%var_2_67 = icmp eq i64 %var_2_66, 9218868437227405312
%var_2_68 = and i64 %var_2_65, 2251799813685247
%var_2_69 = icmp ne i64 %var_2_68, 0
%var_2_70 = and i1 %var_2_67, %var_2_69
br i1 %var_2_70, label %var_2_71, label %var_2_79

var_2_71:
%var_2_72 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %var_2_58, %struct.Memory* %2)
%.pre = load i64, i64* %var_2_3, align 8
  br label %routine_ucomisd_MINUS0x10__rbp____xmm1.exit

var_2_73:
%var_2_74 = fcmp ogt double %var_2_59, %var_2_61
br i1 %var_2_74, label %var_2_79, label %var_2_75

var_2_75:
%var_2_76 = fcmp olt double %var_2_59, %var_2_61
br i1 %var_2_76, label %var_2_79, label %var_2_77

var_2_77:
%var_2_78 = fcmp oeq double %var_2_59, %var_2_61
br i1 %var_2_78, label %var_2_79, label %var_2_83

var_2_79:
; Matched:%var_2_76:  %var_2_76 = phi i8 [ 0, %var_2_69 ], [ 0, %var_2_71 ], [ 1, %var_2_73 ], [ 1, %var_2_59 ]
; %var_2_80 = phi i8 [ 0, %var_2_73 ], [ 0, %var_2_75 ], [ 1, %var_2_77 ], [ 1, %var_2_63 ]
; Matched:%var_2_77:  %var_2_77 = phi i8 [ 0, %var_2_69 ], [ 0, %var_2_71 ], [ 0, %var_2_73 ], [ 1, %var_2_59 ]
; %var_2_81 = phi i8 [ 0, %var_2_73 ], [ 0, %var_2_75 ], [ 0, %var_2_77 ], [ 1, %var_2_63 ]
; Matched:%var_2_78:  %var_2_78 = phi i8 [ 0, %var_2_69 ], [ 1, %var_2_71 ], [ 0, %var_2_73 ], [ 1, %var_2_59 ]
; %var_2_82 = phi i8 [ 0, %var_2_73 ], [ 1, %var_2_75 ], [ 0, %var_2_77 ], [ 1, %var_2_63 ]
; Matched:\<badref\>:  store i8 %var_2_76, i8* %var_2_30, align 1, !tbaa !1286
; store i8 %var_2_80, i8* %var_2_29, align 1
; Matched:\<badref\>:  store i8 %var_2_77, i8* %var_2_22, align 1, !tbaa !1286
; store i8 %var_2_81, i8* %var_2_21, align 1
; Matched:\<badref\>:  store i8 %var_2_78, i8* %var_2_15, align 1, !tbaa !1286
; store i8 %var_2_82, i8* %var_2_14, align 1
br label %var_2_83

var_2_83:
store i8 0, i8* %var_2_38, align 1
store i8 0, i8* %var_2_32, align 1
store i8 0, i8* %var_2_26, align 1
  br label %routine_ucomisd_MINUS0x10__rbp____xmm1.exit

routine_ucomisd_MINUS0x10__rbp____xmm1.exit:      ; preds = %var_2_83, %var_2_71
%var_2_84 = phi i64 [ %.pre, %var_2_71 ], [ %var_2_58, %var_2_83 ]
%var_2_85 = phi %struct.Memory* [ %var_2_72, %var_2_71 ], [ %2, %var_2_83 ]
%var_2_86 = load i8, i8* %var_2_14, align 1
%var_2_87 = load i8, i8* %var_2_29, align 1
%var_2_88 = or i8 %var_2_87, %var_2_86
%var_2_89 = icmp ne i8 %var_2_88, 0
%.v = select i1 %var_2_89, i64 24, i64 6
%var_2_90 = add i64 %var_2_84, %.v
store i64 %var_2_90, i64* %var_2_3, align 8
%var_2_91 = bitcast [32 x %union.VectorReg]* %var_2_39 to i8*
br i1 %var_2_89, label %block_.L_400622, label %block_400610

block_400610:                                     ; preds = %routine_ucomisd_MINUS0x10__rbp____xmm1.exit
%var_2_92 = add i64 %var_2_90, ptrtoint (%G_0x3c8__rip__type* @G_0x3c8__rip_ to i64)
; Matched:%var_2_88:  %var_2_88 = add i64 %var_2_86, 8
; %var_2_93 = add i64 %var_2_90, 8
; Matched:\<badref\>:  store i64 %var_2_88, i64* %PC, align 8
; store i64 %var_2_93, i64* %var_2_3, align 8
%var_2_94 = inttoptr i64 %var_2_92 to i64*
%var_2_95 = load i64, i64* %var_2_94, align 8
store i64 %var_2_95, i64* %var_2_52, align 1
%var_2_96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
%var_2_97 = bitcast i64* %var_2_96 to double*
store double 0.000000e+00, double* %var_2_97, align 1
%var_2_98 = load i64, i64* %RBP.i, align 8
%var_2_99 = add i64 %var_2_98, -8
; Matched:%var_2_140:  %var_2_140 = add i64 %var_2_86, 13
; %var_2_100 = add i64 %var_2_90, 13
; Matched:\<badref\>:  store i64 %var_2_140, i64* %PC, align 8
; store i64 %var_2_100, i64* %var_2_3, align 8
%var_2_101 = inttoptr i64 %var_2_99 to i64*
store i64 %var_2_95, i64* %var_2_101, align 8
; Matched:%var_2_133:  %var_2_133 = load i64, i64* %PC, align 8
; %var_2_102 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_134:  %var_2_134 = add i64 %var_2_133, 74
; %var_2_103 = add i64 %var_2_102, 74
; Matched:\<badref\>:  store i64 %var_2_134, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_103, i64* %var_2_3, align 8
  br label %block_.L_400667

block_.L_400622:                                  ; preds = %routine_ucomisd_MINUS0x10__rbp____xmm1.exit
%var_2_104 = add i64 %var_2_90, ptrtoint (%G_0x3ae__rip__type* @G_0x3ae__rip_ to i64)
; Matched:%var_2_88:  %var_2_88 = add i64 %var_2_86, 8
; %var_2_105 = add i64 %var_2_90, 8
; Matched:\<badref\>:  store i64 %var_2_88, i64* %PC, align 8
; store i64 %var_2_105, i64* %var_2_3, align 8
%var_2_106 = inttoptr i64 %var_2_104 to i64*
%var_2_107 = load i64, i64* %var_2_106, align 8
store i64 %var_2_107, i64* %var_2_52, align 1
%var_2_108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
%var_2_109 = bitcast i64* %var_2_108 to double*
store double 0.000000e+00, double* %var_2_109, align 1
%var_2_110 = load i64, i64* %RBP.i, align 8
%var_2_111 = add i64 %var_2_110, -16
; Matched:%var_2_131:  %var_2_131 = add i64 %var_2_86, 13
; %var_2_112 = add i64 %var_2_90, 13
; Matched:\<badref\>:  store i64 %var_2_131, i64* %PC, align 8
; store i64 %var_2_112, i64* %var_2_3, align 8
%var_2_113 = inttoptr i64 %var_2_111 to double*
%var_2_114 = load double, double* %var_2_113, align 8
%var_2_115 = bitcast i64 %var_2_107 to double
%var_2_116 = fsub double %var_2_114, %var_2_115
store double %var_2_116, double* %var_2_45, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_43, align 1, !tbaa !1284
; store i64 0, i64* %var_2_47, align 1
%.cast1 = bitcast double %var_2_116 to <2 x i32>
%var_2_117 = extractelement <2 x i32> %.cast1, i32 0
%var_2_118 = bitcast [32 x %union.VectorReg]* %var_2_39 to i32*
store i32 %var_2_117, i32* %var_2_118, align 1
%var_2_119 = extractelement <2 x i32> %.cast1, i32 1
%var_2_120 = getelementptr inbounds i8, i8* %var_2_91, i64 4
%var_2_121 = bitcast i8* %var_2_120 to i32*
store i32 %var_2_119, i32* %var_2_121, align 1
%var_2_122 = bitcast i64* %var_2_108 to i32*
store i32 0, i32* %var_2_122, align 1
%var_2_123 = getelementptr inbounds i8, i8* %var_2_91, i64 12
%var_2_124 = bitcast i8* %var_2_123 to i32*
store i32 0, i32* %var_2_124, align 1
%var_2_125 = add i64 %var_2_90, -50
; Matched:%var_2_154:  %var_2_154 = add i64 %var_2_86, 25
; %var_2_126 = add i64 %var_2_90, 25
; Matched:%var_2_155:  %var_2_155 = load i64, i64* %RSP, align 8, !tbaa !1261
; %var_2_127 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_156:  %var_2_156 = add i64 %var_2_155, -8
; %var_2_128 = add i64 %var_2_127, -8
; Matched:%var_2_157:  %var_2_157 = inttoptr i64 %var_2_156 to i64*
; %var_2_129 = inttoptr i64 %var_2_128 to i64*
; Matched:\<badref\>:  store i64 %var_2_154, i64* %var_2_157, align 8
; store i64 %var_2_126, i64* %var_2_129, align 8
; Matched:\<badref\>:  store i64 %var_2_186, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_128, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_153, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_125, i64* %var_2_3, align 8
%call2_400636 = tail call %struct.Memory* @sub_4005f0.fibFP(%struct.State* nonnull %0, i64 %var_2_125, %struct.Memory* %var_2_85)
%var_2_130 = load i64, i64* %var_2_3, align 8
%var_2_131 = add i64 %var_2_130, ptrtoint (%G_0x39d__rip__type* @G_0x39d__rip_ to i64)
%var_2_132 = add i64 %var_2_130, 8
store i64 %var_2_132, i64* %var_2_3, align 8
%var_2_133 = inttoptr i64 %var_2_131 to i64*
%var_2_134 = load i64, i64* %var_2_133, align 8
store i64 %var_2_134, i64* %var_2_46, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_44, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_48, align 1
%var_2_135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
%var_2_136 = load i64, i64* %RBP.i, align 8
%var_2_137 = add i64 %var_2_136, -16
; Matched:%var_2_163:  %var_2_163 = add i64 %var_2_159, 13
; %var_2_138 = add i64 %var_2_130, 13
; Matched:\<badref\>:  store i64 %var_2_163, i64* %PC, align 8
; store i64 %var_2_138, i64* %var_2_3, align 8
%var_2_139 = inttoptr i64 %var_2_137 to double*
%var_2_140 = load double, double* %var_2_139, align 8
%var_2_141 = bitcast %union.VectorReg* %var_2_135 to double*
; Matched:%var_2_167:  %var_2_167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
; %var_2_142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
%var_2_143 = bitcast i64 %var_2_134 to double
%var_2_144 = fsub double %var_2_140, %var_2_143
store double %var_2_144, double* %var_2_141, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_167, align 1, !tbaa !1284
; store i64 0, i64* %var_2_142, align 1
; Matched:%var_2_170:  %var_2_170 = add i64 %var_2_161, -24
; %var_2_145 = add i64 %var_2_136, -24
; Matched:%var_2_171:  %var_2_171 = add i64 %var_2_159, 22
; %var_2_146 = add i64 %var_2_130, 22
; Matched:\<badref\>:  store i64 %var_2_171, i64* %PC, align 8
; store i64 %var_2_146, i64* %var_2_3, align 8
; Matched:%var_2_172:  %var_2_172 = load i64, i64* %var_2_48, align 1
; %var_2_147 = load i64, i64* %var_2_52, align 1
; Matched:%var_2_173:  %var_2_173 = inttoptr i64 %var_2_170 to i64*
; %var_2_148 = inttoptr i64 %var_2_145 to i64*
; Matched:\<badref\>:  store i64 %var_2_172, i64* %var_2_173, align 8
; store i64 %var_2_147, i64* %var_2_148, align 8
%var_2_149 = load i64, i64* %var_2_3, align 8
%var_2_150 = bitcast %union.VectorReg* %var_2_135 to <2 x i32>*
%var_2_151 = load <2 x i32>, <2 x i32>* %var_2_150, align 1
%var_2_152 = bitcast i64* %var_2_142 to <2 x i32>*
%var_2_153 = load <2 x i32>, <2 x i32>* %var_2_152, align 1
%var_2_154 = extractelement <2 x i32> %var_2_151, i32 0
; Matched:\<badref\>:  store i32 %var_2_179, i32* %var_2_146, align 1, !tbaa !1287
; store i32 %var_2_154, i32* %var_2_118, align 1
%var_2_155 = extractelement <2 x i32> %var_2_151, i32 1
; Matched:\<badref\>:  store i32 %var_2_180, i32* %var_2_149, align 1, !tbaa !1287
; store i32 %var_2_155, i32* %var_2_121, align 1
%var_2_156 = extractelement <2 x i32> %var_2_153, i32 0
; Matched:\<badref\>:  store i32 %var_2_181, i32* %var_2_150, align 1, !tbaa !1287
; store i32 %var_2_156, i32* %var_2_122, align 1
%var_2_157 = extractelement <2 x i32> %var_2_153, i32 1
; Matched:\<badref\>:  store i32 %var_2_182, i32* %var_2_152, align 1, !tbaa !1287
; store i32 %var_2_157, i32* %var_2_124, align 1
%var_2_158 = add i64 %var_2_149, -97
; Matched:%var_2_184:  %var_2_184 = add i64 %var_2_174, 8
; %var_2_159 = add i64 %var_2_149, 8
; Matched:%var_2_185:  %var_2_185 = load i64, i64* %RSP, align 8, !tbaa !1261
; %var_2_160 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_186:  %var_2_186 = add i64 %var_2_185, -8
; %var_2_161 = add i64 %var_2_160, -8
; Matched:%var_2_187:  %var_2_187 = inttoptr i64 %var_2_186 to i64*
; %var_2_162 = inttoptr i64 %var_2_161 to i64*
; Matched:\<badref\>:  store i64 %var_2_184, i64* %var_2_187, align 8
; store i64 %var_2_159, i64* %var_2_162, align 8
; Matched:\<badref\>:  store i64 %var_2_156, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_161, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_183, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_158, i64* %var_2_3, align 8
%call2_400654 = tail call %struct.Memory* @sub_4005f0.fibFP(%struct.State* nonnull %0, i64 %var_2_158, %struct.Memory* %call2_400636)
; Matched:%var_2_189:  %var_2_189 = load i64, i64* %RBP, align 8
; %var_2_163 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_190:  %var_2_190 = add i64 %var_2_189, -24
; %var_2_164 = add i64 %var_2_163, -24
; Matched:%var_2_53:  %var_2_53 = load i64, i64* %PC, align 8
; %var_2_165 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_54:  %var_2_54 = add i64 %var_2_53, 5
; %var_2_166 = add i64 %var_2_165, 5
; Matched:\<badref\>:  store i64 %var_2_192, i64* %PC, align 8
; store i64 %var_2_166, i64* %var_2_3, align 8
; Matched:%var_2_193:  %var_2_193 = inttoptr i64 %var_2_190 to double*
; %var_2_167 = inttoptr i64 %var_2_164 to double*
; Matched:%var_2_194:  %var_2_194 = load double, double* %var_2_193, align 8
; %var_2_168 = load double, double* %var_2_167, align 8
; Matched:%var_2_195:  %var_2_195 = load double, double* %var_2_47, align 1
; %var_2_169 = load double, double* %var_2_51, align 1
; Matched:%var_2_196:  %var_2_196 = fadd double %var_2_194, %var_2_195
; %var_2_170 = fadd double %var_2_168, %var_2_169
; Matched:\<badref\>:  store double %var_2_196, double* %var_2_41, align 1, !tbaa !1284
; store double %var_2_170, double* %var_2_45, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_43, align 1, !tbaa !1284
; store i64 0, i64* %var_2_47, align 1
; Matched:%var_2_197:  %var_2_197 = add i64 %var_2_189, -8
; %var_2_171 = add i64 %var_2_163, -8
; Matched:%var_2_198:  %var_2_198 = add i64 %var_2_191, 14
; %var_2_172 = add i64 %var_2_165, 14
; Matched:\<badref\>:  store i64 %var_2_198, i64* %PC, align 8
; store i64 %var_2_172, i64* %var_2_3, align 8
; Matched:%var_2_199:  %var_2_199 = inttoptr i64 %var_2_197 to double*
; %var_2_173 = inttoptr i64 %var_2_171 to double*
; Matched:\<badref\>:  store double %var_2_196, double* %var_2_199, align 8
; store double %var_2_170, double* %var_2_173, align 8
; Matched:  %.pre3 = load i64, i64* %PC, align 8
; %.pre3 = load i64, i64* %var_2_3, align 8
  br label %block_.L_400667

block_.L_400667:                                  ; preds = %block_.L_400622, %block_400610
; Matched:  %.pre-phi4 = phi double* [ %var_2_137, %block_400622 ], [ %var_2_128, %block_400610 ]
; %.pre-phi4 = phi double* [ %var_2_109, %block_.L_400622 ], [ %var_2_97, %block_400610 ]
; Matched:%var_2_89:  %var_2_89 = phi i64 [ %.pre3, %block_400622 ], [ %var_2_134, %block_400610 ]
; %var_2_174 = phi i64 [ %.pre3, %block_.L_400622 ], [ %var_2_103, %block_400610 ]
%MEMORY.0 = phi %struct.Memory* [ %call2_400654, %block_.L_400622 ], [ %var_2_85, %block_400610 ]
; Matched:%var_2_90:  %var_2_90 = load i64, i64* %RBP, align 8
; %var_2_175 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_91:  %var_2_91 = add i64 %var_2_90, -8
; %var_2_176 = add i64 %var_2_175, -8
; Matched:%var_2_92:  %var_2_92 = add i64 %var_2_89, 5
; %var_2_177 = add i64 %var_2_174, 5
; Matched:\<badref\>:  store i64 %var_2_92, i64* %PC, align 8
; store i64 %var_2_177, i64* %var_2_3, align 8
; Matched:%var_2_93:  %var_2_93 = inttoptr i64 %var_2_91 to i64*
; %var_2_178 = inttoptr i64 %var_2_176 to i64*
; Matched:%var_2_94:  %var_2_94 = load i64, i64* %var_2_93, align 8
; %var_2_179 = load i64, i64* %var_2_178, align 8
; Matched:\<badref\>:  store i64 %var_2_94, i64* %var_2_48, align 1, !tbaa !1284
; store i64 %var_2_179, i64* %var_2_52, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %.pre-phi4, align 1, !tbaa !1284
; store double 0.000000e+00, double* %.pre-phi4, align 1
; Matched:%var_2_95:  %var_2_95 = load i64, i64* %RSP, align 8
; %var_2_180 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_96:  %var_2_96 = add i64 %var_2_95, 32
; %var_2_181 = add i64 %var_2_180, 32
; Matched:\<badref\>:  store i64 %var_2_96, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_181, i64* %var_2_6, align 8
; Matched:%var_2_97:  %var_2_97 = icmp ugt i64 %var_2_95, -33
; %var_2_182 = icmp ugt i64 %var_2_180, -33
; Matched:%var_2_98:  %var_2_98 = zext i1 %var_2_97 to i8
; %var_2_183 = zext i1 %var_2_182 to i8
; Matched:\<badref\>:  store i8 %var_2_98, i8* %var_2_15, align 1, !tbaa !1265
; store i8 %var_2_183, i8* %var_2_14, align 1
; Matched:%var_2_99:  %var_2_99 = trunc i64 %var_2_96 to i32
; %var_2_184 = trunc i64 %var_2_181 to i32
; Matched:%var_2_100:  %var_2_100 = and i32 %var_2_99, 255
; %var_2_185 = and i32 %var_2_184, 255
; Matched:%var_2_101:  %var_2_101 = tail call i32 @llvm.ctpop.i32(i32 %var_2_100) #12
; %var_2_186 = tail call i32 @llvm.ctpop.i32(i32 %var_2_185)
; Matched:%var_2_102:  %var_2_102 = trunc i32 %var_2_101 to i8
; %var_2_187 = trunc i32 %var_2_186 to i8
; Matched:%var_2_103:  %var_2_103 = and i8 %var_2_102, 1
; %var_2_188 = and i8 %var_2_187, 1
; Matched:%var_2_104:  %var_2_104 = xor i8 %var_2_103, 1
; %var_2_189 = xor i8 %var_2_188, 1
; Matched:\<badref\>:  store i8 %var_2_104, i8* %var_2_22, align 1, !tbaa !1279
; store i8 %var_2_189, i8* %var_2_21, align 1
; Matched:%var_2_105:  %var_2_105 = xor i64 %var_2_96, %var_2_95
; %var_2_190 = xor i64 %var_2_181, %var_2_180
; Matched:%var_2_106:  %var_2_106 = lshr i64 %var_2_105, 4
; %var_2_191 = lshr i64 %var_2_190, 4
; Matched:%var_2_107:  %var_2_107 = trunc i64 %var_2_106 to i8
; %var_2_192 = trunc i64 %var_2_191 to i8
; Matched:%var_2_108:  %var_2_108 = and i8 %var_2_107, 1
; %var_2_193 = and i8 %var_2_192, 1
; Matched:\<badref\>:  store i8 %var_2_108, i8* %var_2_27, align 1, !tbaa !1280
; store i8 %var_2_193, i8* %var_2_26, align 1
; Matched:%var_2_109:  %var_2_109 = icmp eq i64 %var_2_96, 0
; %var_2_194 = icmp eq i64 %var_2_181, 0
; Matched:%var_2_110:  %var_2_110 = zext i1 %var_2_109 to i8
; %var_2_195 = zext i1 %var_2_194 to i8
; Matched:\<badref\>:  store i8 %var_2_110, i8* %var_2_30, align 1, !tbaa !1281
; store i8 %var_2_195, i8* %var_2_29, align 1
; Matched:%var_2_111:  %var_2_111 = lshr i64 %var_2_96, 63
; %var_2_196 = lshr i64 %var_2_181, 63
; Matched:%var_2_112:  %var_2_112 = trunc i64 %var_2_111 to i8
; %var_2_197 = trunc i64 %var_2_196 to i8
; Matched:\<badref\>:  store i8 %var_2_112, i8* %var_2_33, align 1, !tbaa !1282
; store i8 %var_2_197, i8* %var_2_32, align 1
; Matched:%var_2_113:  %var_2_113 = lshr i64 %var_2_95, 63
; %var_2_198 = lshr i64 %var_2_180, 63
; Matched:%var_2_114:  %var_2_114 = xor i64 %var_2_111, %var_2_113
; %var_2_199 = xor i64 %var_2_196, %var_2_198
; Matched:%var_2_115:  %var_2_115 = add nuw nsw i64 %var_2_114, %var_2_111
; %var_2_200 = add nuw nsw i64 %var_2_199, %var_2_196
; Matched:%var_2_116:  %var_2_116 = icmp eq i64 %var_2_115, 2
; %var_2_201 = icmp eq i64 %var_2_200, 2
; Matched:%var_2_117:  %var_2_117 = zext i1 %var_2_116 to i8
; %var_2_202 = zext i1 %var_2_201 to i8
; Matched:\<badref\>:  store i8 %var_2_117, i8* %var_2_39, align 1, !tbaa !1283
; store i8 %var_2_202, i8* %var_2_38, align 1
; Matched:%var_2_118:  %var_2_118 = add i64 %var_2_89, 10
; %var_2_203 = add i64 %var_2_174, 10
; Matched:\<badref\>:  store i64 %var_2_118, i64* %PC, align 8
; store i64 %var_2_203, i64* %var_2_3, align 8
; Matched:%var_2_119:  %var_2_119 = add i64 %var_2_95, 40
; %var_2_204 = add i64 %var_2_180, 40
; Matched:%var_2_120:  %var_2_120 = inttoptr i64 %var_2_96 to i64*
; %var_2_205 = inttoptr i64 %var_2_181 to i64*
; Matched:%var_2_121:  %var_2_121 = load i64, i64* %var_2_120, align 8
; %var_2_206 = load i64, i64* %var_2_205, align 8
; Matched:\<badref\>:  store i64 %var_2_121, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_206, i64* %RBP.i, align 8
; Matched:\<badref\>:  store i64 %var_2_119, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_204, i64* %var_2_6, align 8
; Matched:%var_2_122:  %var_2_122 = add i64 %var_2_89, 11
; %var_2_207 = add i64 %var_2_174, 11
; Matched:\<badref\>:  store i64 %var_2_122, i64* %PC, align 8
; store i64 %var_2_207, i64* %var_2_3, align 8
; Matched:%var_2_123:  %var_2_123 = inttoptr i64 %var_2_119 to i64*
; %var_2_208 = inttoptr i64 %var_2_204 to i64*
; Matched:%var_2_124:  %var_2_124 = load i64, i64* %var_2_123, align 8
; %var_2_209 = load i64, i64* %var_2_208, align 8
; Matched:\<badref\>:  store i64 %var_2_124, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_209, i64* %var_2_3, align 8
; Matched:%var_2_125:  %var_2_125 = add i64 %var_2_95, 48
; %var_2_210 = add i64 %var_2_180, 48
; Matched:\<badref\>:  store i64 %var_2_125, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_210, i64* %var_2_6, align 8
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
define %struct.Memory* @routine_movsd_0x3d8__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x3d8__rip__type* @G_0x3d8__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd_MINUS0x10__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fcmp uno double %9, %11
  br i1 %12, label %13, label %23

; <label>:13:                                     ; preds = %block_400488
  %14 = fadd double %9, %11
  %15 = bitcast double %14 to i64
  %16 = and i64 %15, 9221120237041090560
  %17 = icmp eq i64 %16, 9218868437227405312
  %18 = and i64 %15, 2251799813685247
  %19 = icmp ne i64 %18, 0
  %20 = and i1 %17, %19
  br i1 %20, label %21, label %29

; <label>:21:                                     ; preds = %13
  %22 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %7, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:23:                                     ; preds = %block_400488
  %24 = fcmp ogt double %9, %11
  br i1 %24, label %29, label %25

; <label>:25:                                     ; preds = %23
  %26 = fcmp olt double %9, %11
  br i1 %26, label %29, label %27

; <label>:27:                                     ; preds = %25
  %28 = fcmp oeq double %9, %11
  br i1 %28, label %29, label %36

; <label>:29:                                     ; preds = %27, %25, %23, %13
  %30 = phi i8 [ 0, %23 ], [ 0, %25 ], [ 1, %27 ], [ 1, %13 ]
  %31 = phi i8 [ 0, %23 ], [ 0, %25 ], [ 0, %27 ], [ 1, %13 ]
  %32 = phi i8 [ 0, %23 ], [ 1, %25 ], [ 0, %27 ], [ 1, %13 ]
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %31, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %32, i8* %35, align 1
  br label %36

; <label>:36:                                     ; preds = %29, %27
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %39, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %36, %21
  %40 = phi %struct.Memory* [ %22, %21 ], [ %2, %36 ]
  ret %struct.Memory* %40
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_400622(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %.v, %3
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x3c8__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x3c8__rip__type* @G_0x3c8__rip_ to i64)
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_jmpq_.L_400667(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x3ae__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x3ae__rip__type* @G_0x3ae__rip_ to i64)
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
define %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_callq_.fibFP(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x39d__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x39d__rip__type* @G_0x39d__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd__xmm1___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_movaps__xmm2___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
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
define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_addsd__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fadd double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_movsd_MINUS0x8__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
