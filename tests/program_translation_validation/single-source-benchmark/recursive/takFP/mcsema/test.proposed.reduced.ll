; ModuleID = '/tmp/tmp9op60h60-query.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x245__rip__type = type <{ [8 x i8] }>
%G_0x270__rip__type = type <{ [8 x i8] }>
%G_0x29d__rip__type = type <{ [8 x i8] }>
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
@G_0x245__rip_ = global %G_0x245__rip__type zeroinitializer
@G_0x270__rip_ = global %G_0x270__rip__type zeroinitializer
@G_0x29d__rip_ = global %G_0x29d__rip__type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_400710.takFP(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @takFP(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
entry:
%var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
; Matched:%var_2_7:  %var_2_7 = load i64, i64* %RBP, align 8
; %var_2_4 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_8:  %var_2_8 = add i64 %1, 1
; %var_2_5 = add i64 %1, 1
; Matched:\<badref\>:  store i64 %var_2_8, i64* %PC, align 8
; store i64 %var_2_5, i64* %var_2_3, align 8
%var_2_6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
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
; Matched:%var_2_13:  %var_2_13 = add i64 %var_2_9, -72
; %var_2_11 = add i64 %var_2_7, -72
; Matched:\<badref\>:  store i64 %var_2_13, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_11, i64* %var_2_6, align 8
; Matched:%var_2_14:  %var_2_14 = icmp ult i64 %var_2_10, 64
; %var_2_12 = icmp ult i64 %var_2_8, 64
; Matched:%var_2_15:  %var_2_15 = zext i1 %var_2_14 to i8
; %var_2_13 = zext i1 %var_2_12 to i8
%var_2_14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
; Matched:\<badref\>:  store i8 %var_2_15, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_13, i8* %var_2_14, align 1
; Matched:%var_2_17:  %var_2_17 = trunc i64 %var_2_13 to i32
; %var_2_15 = trunc i64 %var_2_11 to i32
; Matched:%var_2_18:  %var_2_18 = and i32 %var_2_17, 255
; %var_2_16 = and i32 %var_2_15, 255
; Matched:%var_2_19:  %var_2_19 = tail call i32 @llvm.ctpop.i32(i32 %var_2_18) #12
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
; Matched:%var_2_24:  %var_2_24 = xor i64 %var_2_10, %var_2_13
; %var_2_22 = xor i64 %var_2_8, %var_2_11
; Matched:%var_2_25:  %var_2_25 = lshr i64 %var_2_24, 4
; %var_2_23 = lshr i64 %var_2_22, 4
; Matched:%var_2_26:  %var_2_26 = trunc i64 %var_2_25 to i8
; %var_2_24 = trunc i64 %var_2_23 to i8
; Matched:%var_2_27:  %var_2_27 = and i8 %var_2_26, 1
; %var_2_25 = and i8 %var_2_24, 1
%var_2_26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
; Matched:\<badref\>:  store i8 %var_2_27, i8* %var_2_28, align 1, !tbaa !1280
; store i8 %var_2_25, i8* %var_2_26, align 1
; Matched:%var_2_29:  %var_2_29 = icmp eq i64 %var_2_13, 0
; %var_2_27 = icmp eq i64 %var_2_11, 0
; Matched:%var_2_30:  %var_2_30 = zext i1 %var_2_29 to i8
; %var_2_28 = zext i1 %var_2_27 to i8
%var_2_29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
; Matched:\<badref\>:  store i8 %var_2_30, i8* %var_2_31, align 1, !tbaa !1281
; store i8 %var_2_28, i8* %var_2_29, align 1
; Matched:%var_2_32:  %var_2_32 = lshr i64 %var_2_13, 63
; %var_2_30 = lshr i64 %var_2_11, 63
; Matched:%var_2_33:  %var_2_33 = trunc i64 %var_2_32 to i8
; %var_2_31 = trunc i64 %var_2_30 to i8
%var_2_32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
; Matched:\<badref\>:  store i8 %var_2_33, i8* %var_2_34, align 1, !tbaa !1282
; store i8 %var_2_31, i8* %var_2_32, align 1
; Matched:%var_2_35:  %var_2_35 = lshr i64 %var_2_10, 63
; %var_2_33 = lshr i64 %var_2_8, 63
; Matched:%var_2_36:  %var_2_36 = xor i64 %var_2_32, %var_2_35
; %var_2_34 = xor i64 %var_2_30, %var_2_33
; Matched:%var_2_37:  %var_2_37 = add nuw nsw i64 %var_2_36, %var_2_35
; %var_2_35 = add nuw nsw i64 %var_2_34, %var_2_33
; Matched:%var_2_38:  %var_2_38 = icmp eq i64 %var_2_37, 2
; %var_2_36 = icmp eq i64 %var_2_35, 2
; Matched:%var_2_39:  %var_2_39 = zext i1 %var_2_38 to i8
; %var_2_37 = zext i1 %var_2_36 to i8
%var_2_38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; Matched:\<badref\>:  store i8 %var_2_39, i8* %var_2_40, align 1, !tbaa !1283
; store i8 %var_2_37, i8* %var_2_38, align 1
%var_2_39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
; Matched:%var_2_41:  %var_2_41 = add i64 %var_2_9, -24
; %var_2_40 = add i64 %var_2_7, -24
; Matched:%var_2_42:  %var_2_42 = add i64 %var_2_12, 12
; %var_2_41 = add i64 %var_2_10, 12
; Matched:\<badref\>:  store i64 %var_2_42, i64* %PC, align 8
; store i64 %var_2_41, i64* %var_2_3, align 8
%var_2_42 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %var_2_39, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:%var_2_44:  %var_2_44 = load i64, i64* %var_2_43, align 1
; %var_2_43 = load i64, i64* %var_2_42, align 1
; Matched:%var_2_45:  %var_2_45 = inttoptr i64 %var_2_41 to i64*
; %var_2_44 = inttoptr i64 %var_2_40 to i64*
; Matched:\<badref\>:  store i64 %var_2_44, i64* %var_2_45, align 8
; store i64 %var_2_43, i64* %var_2_44, align 8
%var_2_45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
; Matched:%var_2_46:  %var_2_46 = load i64, i64* %RBP, align 8
; %var_2_46 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_47:  %var_2_47 = add i64 %var_2_46, -24
; %var_2_47 = add i64 %var_2_46, -24
%var_2_48 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_330:  %var_2_330 = add i64 %var_2_329, 5
; %var_2_49 = add i64 %var_2_48, 5
; Matched:\<badref\>:  store i64 %var_2_330, i64* %PC, align 8
; store i64 %var_2_49, i64* %var_2_3, align 8
%var_2_50 = bitcast %union.VectorReg* %var_2_45 to double*
%var_2_51 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_45, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:%var_2_52:  %var_2_52 = load i64, i64* %var_2_51, align 1
; %var_2_52 = load i64, i64* %var_2_51, align 1
; Matched:%var_2_53:  %var_2_53 = inttoptr i64 %var_2_47 to i64*
; %var_2_53 = inttoptr i64 %var_2_47 to i64*
; Matched:\<badref\>:  store i64 %var_2_52, i64* %var_2_53, align 8
; store i64 %var_2_52, i64* %var_2_53, align 8
%var_2_54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
; Matched:%var_2_54:  %var_2_54 = load i64, i64* %RBP, align 8
; %var_2_55 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_55:  %var_2_55 = add i64 %var_2_54, -32
; %var_2_56 = add i64 %var_2_55, -32
%var_2_57 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_57:  %var_2_57 = add i64 %var_2_56, 5
; %var_2_58 = add i64 %var_2_57, 5
; Matched:\<badref\>:  store i64 %var_2_57, i64* %PC, align 8
; store i64 %var_2_58, i64* %var_2_3, align 8
; Matched:%var_2_58:  %var_2_58 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_5, i64 0, i32 0, i32 0, i32 0, i64 0
; %var_2_59 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_54, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:%var_2_59:  %var_2_59 = load i64, i64* %var_2_58, align 1
; %var_2_60 = load i64, i64* %var_2_59, align 1
; Matched:%var_2_60:  %var_2_60 = inttoptr i64 %var_2_55 to i64*
; %var_2_61 = inttoptr i64 %var_2_56 to i64*
; Matched:\<badref\>:  store i64 %var_2_59, i64* %var_2_60, align 8
; store i64 %var_2_60, i64* %var_2_61, align 8
; Matched:%var_2_61:  %var_2_61 = bitcast [32 x %union.VectorReg]* %var_2_3 to i8*
; %var_2_62 = bitcast [32 x %union.VectorReg]* %var_2_39 to i8*
%var_2_63 = load i64, i64* %RBP.i, align 8
%var_2_64 = add i64 %var_2_63, -24
%var_2_65 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_298:  %var_2_298 = add i64 %var_2_297, 5
; %var_2_66 = add i64 %var_2_65, 5
; Matched:\<badref\>:  store i64 %var_2_298, i64* %PC, align 8
; store i64 %var_2_66, i64* %var_2_3, align 8
%var_2_67 = inttoptr i64 %var_2_64 to i64*
%var_2_68 = load i64, i64* %var_2_67, align 8
; Matched:\<badref\>:  store i64 %var_2_164, i64* %var_2_43, align 1, !tbaa !1284
; store i64 %var_2_68, i64* %var_2_42, align 1
%var_2_69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
%var_2_70 = bitcast i64* %var_2_69 to double*
store double 0.000000e+00, double* %var_2_70, align 1
%var_2_71 = add i64 %var_2_63, -16
; Matched:%var_2_71:  %var_2_71 = add i64 %var_2_64, 10
; %var_2_72 = add i64 %var_2_65, 10
; Matched:\<badref\>:  store i64 %var_2_71, i64* %PC, align 8
; store i64 %var_2_72, i64* %var_2_3, align 8
%var_2_73 = inttoptr i64 %var_2_71 to i64*
%var_2_74 = load i64, i64* %var_2_73, align 8
; Matched:\<badref\>:  store i64 %var_2_73, i64* %var_2_51, align 1, !tbaa !1284
; store i64 %var_2_74, i64* %var_2_51, align 1
; Matched:%var_2_74:  %var_2_74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
; %var_2_75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_75:  %var_2_75 = bitcast i64* %var_2_74 to double*
; %var_2_76 = bitcast i64* %var_2_75 to double*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_75, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_76, align 1
%var_2_77 = add i64 %var_2_65, 14
; Matched:\<badref\>:  store i64 %var_2_76, i64* %PC, align 8
; store i64 %var_2_77, i64* %var_2_3, align 8
%var_2_78 = bitcast i64 %var_2_74 to double
%var_2_79 = bitcast i64 %var_2_68 to double
%var_2_80 = fcmp uno double %var_2_78, %var_2_79
br i1 %var_2_80, label %var_2_81, label %var_2_91

var_2_81:
%var_2_82 = fadd double %var_2_78, %var_2_79
%var_2_83 = bitcast double %var_2_82 to i64
%var_2_84 = and i64 %var_2_83, 9221120237041090560
%var_2_85 = icmp eq i64 %var_2_84, 9218868437227405312
%var_2_86 = and i64 %var_2_83, 2251799813685247
%var_2_87 = icmp ne i64 %var_2_86, 0
%var_2_88 = and i1 %var_2_85, %var_2_87
br i1 %var_2_88, label %var_2_89, label %var_2_97

var_2_89:
%var_2_90 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %var_2_77, %struct.Memory* %2)
%.pre = load i64, i64* %var_2_3, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit

var_2_91:
%var_2_92 = fcmp ogt double %var_2_78, %var_2_79
br i1 %var_2_92, label %var_2_97, label %var_2_93

var_2_93:
%var_2_94 = fcmp olt double %var_2_78, %var_2_79
br i1 %var_2_94, label %var_2_97, label %var_2_95

var_2_95:
%var_2_96 = fcmp oeq double %var_2_78, %var_2_79
br i1 %var_2_96, label %var_2_97, label %var_2_101

var_2_97:
; Matched:%var_2_97:  %var_2_97 = phi i8 [ 0, %var_2_90 ], [ 0, %var_2_92 ], [ 1, %var_2_94 ], [ 1, %var_2_80 ]
; %var_2_98 = phi i8 [ 0, %var_2_91 ], [ 0, %var_2_93 ], [ 1, %var_2_95 ], [ 1, %var_2_81 ]
; Matched:%var_2_98:  %var_2_98 = phi i8 [ 0, %var_2_90 ], [ 0, %var_2_92 ], [ 0, %var_2_94 ], [ 1, %var_2_80 ]
; %var_2_99 = phi i8 [ 0, %var_2_91 ], [ 0, %var_2_93 ], [ 0, %var_2_95 ], [ 1, %var_2_81 ]
; Matched:%var_2_99:  %var_2_99 = phi i8 [ 0, %var_2_90 ], [ 1, %var_2_92 ], [ 0, %var_2_94 ], [ 1, %var_2_80 ]
; %var_2_100 = phi i8 [ 0, %var_2_91 ], [ 1, %var_2_93 ], [ 0, %var_2_95 ], [ 1, %var_2_81 ]
; Matched:\<badref\>:  store i8 %var_2_97, i8* %var_2_31, align 1, !tbaa !1286
; store i8 %var_2_98, i8* %var_2_29, align 1
; Matched:\<badref\>:  store i8 %var_2_98, i8* %var_2_23, align 1, !tbaa !1286
; store i8 %var_2_99, i8* %var_2_21, align 1
; Matched:\<badref\>:  store i8 %var_2_99, i8* %var_2_16, align 1, !tbaa !1286
; store i8 %var_2_100, i8* %var_2_14, align 1
br label %var_2_101

var_2_101:
store i8 0, i8* %var_2_38, align 1
store i8 0, i8* %var_2_32, align 1
store i8 0, i8* %var_2_26, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %var_2_101, %var_2_89
%var_2_102 = phi i64 [ %.pre, %var_2_89 ], [ %var_2_77, %var_2_101 ]
%var_2_103 = phi %struct.Memory* [ %var_2_90, %var_2_89 ], [ %2, %var_2_101 ]
%var_2_104 = load i8, i8* %var_2_14, align 1
%var_2_105 = load i8, i8* %var_2_29, align 1
%var_2_106 = or i8 %var_2_105, %var_2_104
%var_2_107 = icmp ne i8 %var_2_106, 0
%.v = select i1 %var_2_107, i64 175, i64 6
%var_2_108 = add i64 %var_2_102, %.v
; Matched:\<badref\>:  store i64 %var_2_107, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_108, i64* %var_2_3, align 8
br i1 %var_2_107, label %block_.L_4007e4, label %block_40073b

block_40073b:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
%var_2_109 = add i64 %var_2_108, ptrtoint (%G_0x29d__rip__type* @G_0x29d__rip_ to i64)
%var_2_110 = add i64 %var_2_108, 8
store i64 %var_2_110, i64* %var_2_3, align 8
%var_2_111 = inttoptr i64 %var_2_109 to i64*
%var_2_112 = load i64, i64* %var_2_111, align 8
store i64 %var_2_112, i64* %var_2_42, align 1
store double 0.000000e+00, double* %var_2_70, align 1
%var_2_113 = load i64, i64* %RBP.i, align 8
%var_2_114 = add i64 %var_2_113, -16
; Matched:%var_2_156:  %var_2_156 = add i64 %var_2_107, 13
; %var_2_115 = add i64 %var_2_108, 13
; Matched:\<badref\>:  store i64 %var_2_156, i64* %PC, align 8
; store i64 %var_2_115, i64* %var_2_3, align 8
%var_2_116 = inttoptr i64 %var_2_114 to double*
%var_2_117 = load double, double* %var_2_116, align 8
%var_2_118 = bitcast i64 %var_2_112 to double
%var_2_119 = fsub double %var_2_117, %var_2_118
store double %var_2_119, double* %var_2_50, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_74, align 1, !tbaa !1284
; store i64 0, i64* %var_2_75, align 1
; Matched:%var_2_161:  %var_2_161 = add i64 %var_2_154, -24
; %var_2_120 = add i64 %var_2_113, -24
; Matched:%var_2_162:  %var_2_162 = add i64 %var_2_107, 22
; %var_2_121 = add i64 %var_2_108, 22
; Matched:\<badref\>:  store i64 %var_2_162, i64* %PC, align 8
; store i64 %var_2_121, i64* %var_2_3, align 8
; Matched:%var_2_66:  %var_2_66 = inttoptr i64 %var_2_63 to i64*
; %var_2_122 = inttoptr i64 %var_2_120 to i64*
; Matched:%var_2_67:  %var_2_67 = load i64, i64* %var_2_66, align 8
; %var_2_123 = load i64, i64* %var_2_122, align 8
; Matched:\<badref\>:  store i64 %var_2_67, i64* %var_2_43, align 1, !tbaa !1284
; store i64 %var_2_123, i64* %var_2_42, align 1
store double 0.000000e+00, double* %var_2_70, align 1
; Matched:%var_2_165:  %var_2_165 = bitcast %union.VectorReg* %var_2_5 to i8*
; %var_2_124 = bitcast %union.VectorReg* %var_2_54 to i8*
; Matched:%var_2_166:  %var_2_166 = add i64 %var_2_154, -32
; %var_2_125 = add i64 %var_2_113, -32
; Matched:%var_2_167:  %var_2_167 = add i64 %var_2_107, 27
; %var_2_126 = add i64 %var_2_108, 27
; Matched:\<badref\>:  store i64 %var_2_167, i64* %PC, align 8
; store i64 %var_2_126, i64* %var_2_3, align 8
; Matched:%var_2_168:  %var_2_168 = inttoptr i64 %var_2_166 to i64*
; %var_2_127 = inttoptr i64 %var_2_125 to i64*
; Matched:%var_2_169:  %var_2_169 = load i64, i64* %var_2_168, align 8
; %var_2_128 = load i64, i64* %var_2_127, align 8
%var_2_129 = bitcast %union.VectorReg* %var_2_54 to double*
; Matched:\<badref\>:  store i64 %var_2_169, i64* %var_2_58, align 1, !tbaa !1284
; store i64 %var_2_128, i64* %var_2_59, align 1
%var_2_130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
%var_2_131 = bitcast i64* %var_2_130 to double*
store double 0.000000e+00, double* %var_2_131, align 1
; Matched:%var_2_173:  %var_2_173 = add i64 %var_2_154, -40
; %var_2_132 = add i64 %var_2_113, -40
; Matched:%var_2_174:  %var_2_174 = add i64 %var_2_107, 32
; %var_2_133 = add i64 %var_2_108, 32
; Matched:\<badref\>:  store i64 %var_2_174, i64* %PC, align 8
; store i64 %var_2_133, i64* %var_2_3, align 8
; Matched:%var_2_175:  %var_2_175 = inttoptr i64 %var_2_173 to i64*
; %var_2_134 = inttoptr i64 %var_2_132 to i64*
; Matched:\<badref\>:  store i64 %var_2_164, i64* %var_2_175, align 8
; store i64 %var_2_123, i64* %var_2_134, align 8
%var_2_135 = load i64, i64* %var_2_3, align 8
%var_2_136 = bitcast %union.VectorReg* %var_2_45 to <2 x i32>*
%var_2_137 = load <2 x i32>, <2 x i32>* %var_2_136, align 1
%var_2_138 = bitcast i64* %var_2_75 to <2 x i32>*
%var_2_139 = load <2 x i32>, <2 x i32>* %var_2_138, align 1
%var_2_140 = extractelement <2 x i32> %var_2_137, i32 0
; Matched:%var_2_182:  %var_2_182 = bitcast [32 x %union.VectorReg]* %var_2_3 to i32*
; %var_2_141 = bitcast [32 x %union.VectorReg]* %var_2_39 to i32*
; Matched:\<badref\>:  store i32 %var_2_181, i32* %var_2_182, align 1, !tbaa !1287
; store i32 %var_2_140, i32* %var_2_141, align 1
%var_2_142 = extractelement <2 x i32> %var_2_137, i32 1
; Matched:%var_2_184:  %var_2_184 = getelementptr inbounds i8, i8* %var_2_61, i64 4
; %var_2_143 = getelementptr inbounds i8, i8* %var_2_62, i64 4
; Matched:%var_2_185:  %var_2_185 = bitcast i8* %var_2_184 to i32*
; %var_2_144 = bitcast i8* %var_2_143 to i32*
; Matched:\<badref\>:  store i32 %var_2_183, i32* %var_2_185, align 1, !tbaa !1287
; store i32 %var_2_142, i32* %var_2_144, align 1
%var_2_145 = extractelement <2 x i32> %var_2_139, i32 0
; Matched:%var_2_187:  %var_2_187 = bitcast i64* %var_2_68 to i32*
; %var_2_146 = bitcast i64* %var_2_69 to i32*
; Matched:\<badref\>:  store i32 %var_2_310, i32* %var_2_187, align 1, !tbaa !1287
; store i32 %var_2_145, i32* %var_2_146, align 1
%var_2_147 = extractelement <2 x i32> %var_2_139, i32 1
; Matched:%var_2_189:  %var_2_189 = getelementptr inbounds i8, i8* %var_2_61, i64 12
; %var_2_148 = getelementptr inbounds i8, i8* %var_2_62, i64 12
; Matched:%var_2_190:  %var_2_190 = bitcast i8* %var_2_189 to i32*
; %var_2_149 = bitcast i8* %var_2_148 to i32*
; Matched:\<badref\>:  store i32 %var_2_188, i32* %var_2_190, align 1, !tbaa !1287
; store i32 %var_2_147, i32* %var_2_149, align 1
; Matched:%var_2_191:  %var_2_191 = load i64, i64* %RBP, align 8
; %var_2_150 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_192:  %var_2_192 = add i64 %var_2_191, -40
; %var_2_151 = add i64 %var_2_150, -40
%var_2_152 = add i64 %var_2_135, 8
store i64 %var_2_152, i64* %var_2_3, align 8
; Matched:%var_2_194:  %var_2_194 = inttoptr i64 %var_2_192 to i64*
; %var_2_153 = inttoptr i64 %var_2_151 to i64*
; Matched:%var_2_195:  %var_2_195 = load i64, i64* %var_2_194, align 8
; %var_2_154 = load i64, i64* %var_2_153, align 8
; Matched:\<badref\>:  store i64 %var_2_195, i64* %var_2_51, align 1, !tbaa !1284
; store i64 %var_2_154, i64* %var_2_51, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_75, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_76, align 1
%var_2_155 = add i64 %var_2_135, -75
; Matched:%var_2_197:  %var_2_197 = add i64 %var_2_176, 13
; %var_2_156 = add i64 %var_2_135, 13
%var_2_157 = load i64, i64* %var_2_6, align 8
%var_2_158 = add i64 %var_2_157, -8
; Matched:%var_2_200:  %var_2_200 = inttoptr i64 %var_2_199 to i64*
; %var_2_159 = inttoptr i64 %var_2_158 to i64*
; Matched:\<badref\>:  store i64 %var_2_197, i64* %var_2_200, align 8
; store i64 %var_2_156, i64* %var_2_159, align 8
; Matched:\<badref\>:  store i64 %var_2_292, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_158, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_196, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_155, i64* %var_2_3, align 8
%call2_400763 = tail call %struct.Memory* @sub_400710.takFP(%struct.State* nonnull %0, i64 %var_2_155, %struct.Memory* %var_2_103)
%var_2_160 = load i64, i64* %var_2_3, align 8
%var_2_161 = add i64 %var_2_160, ptrtoint (%G_0x270__rip__type* @G_0x270__rip_ to i64)
%var_2_162 = add i64 %var_2_160, 8
store i64 %var_2_162, i64* %var_2_3, align 8
%var_2_163 = inttoptr i64 %var_2_161 to i64*
%var_2_164 = load i64, i64* %var_2_163, align 8
store i64 %var_2_164, i64* %var_2_51, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_75, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_76, align 1
%var_2_165 = load i64, i64* %RBP.i, align 8
%var_2_166 = add i64 %var_2_165, -24
; Matched:%var_2_318:  %var_2_318 = add i64 %var_2_305, 13
; %var_2_167 = add i64 %var_2_160, 13
; Matched:\<badref\>:  store i64 %var_2_206, i64* %PC, align 8
; store i64 %var_2_167, i64* %var_2_3, align 8
%var_2_168 = inttoptr i64 %var_2_166 to double*
%var_2_169 = load double, double* %var_2_168, align 8
%var_2_170 = bitcast i64 %var_2_164 to double
%var_2_171 = fsub double %var_2_169, %var_2_170
store double %var_2_171, double* %var_2_129, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_171, align 1, !tbaa !1284
; store i64 0, i64* %var_2_130, align 1
; Matched:%var_2_211:  %var_2_211 = add i64 %var_2_204, -32
; %var_2_172 = add i64 %var_2_165, -32
; Matched:%var_2_265:  %var_2_265 = add i64 %var_2_255, 22
; %var_2_173 = add i64 %var_2_160, 22
; Matched:\<badref\>:  store i64 %var_2_265, i64* %PC, align 8
; store i64 %var_2_173, i64* %var_2_3, align 8
; Matched:%var_2_213:  %var_2_213 = inttoptr i64 %var_2_211 to i64*
; %var_2_174 = inttoptr i64 %var_2_172 to i64*
; Matched:%var_2_214:  %var_2_214 = load i64, i64* %var_2_213, align 8
; %var_2_175 = load i64, i64* %var_2_174, align 8
; Matched:\<badref\>:  store i64 %var_2_214, i64* %var_2_51, align 1, !tbaa !1284
; store i64 %var_2_175, i64* %var_2_51, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_75, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_76, align 1
; Matched:%var_2_6:  %var_2_6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
; %var_2_176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
; Matched:%var_2_215:  %var_2_215 = add i64 %var_2_204, -16
; %var_2_177 = add i64 %var_2_165, -16
; Matched:%var_2_216:  %var_2_216 = add i64 %var_2_202, 27
; %var_2_178 = add i64 %var_2_160, 27
; Matched:\<badref\>:  store i64 %var_2_269, i64* %PC, align 8
; store i64 %var_2_178, i64* %var_2_3, align 8
; Matched:%var_2_217:  %var_2_217 = inttoptr i64 %var_2_215 to i64*
; %var_2_179 = inttoptr i64 %var_2_177 to i64*
; Matched:%var_2_218:  %var_2_218 = load i64, i64* %var_2_217, align 8
; %var_2_180 = load i64, i64* %var_2_179, align 8
; Matched:%var_2_219:  %var_2_219 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_6, i64 0, i32 0, i32 0, i32 0, i64 0
; %var_2_181 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_176, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:\<badref\>:  store i64 %var_2_218, i64* %var_2_219, align 1, !tbaa !1284
; store i64 %var_2_180, i64* %var_2_181, align 1
; Matched:%var_2_220:  %var_2_220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
; %var_2_182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_221:  %var_2_221 = bitcast i64* %var_2_220 to double*
; %var_2_183 = bitcast i64* %var_2_182 to double*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_221, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_183, align 1
; Matched:%var_2_222:  %var_2_222 = add i64 %var_2_204, -48
; %var_2_184 = add i64 %var_2_165, -48
; Matched:%var_2_273:  %var_2_273 = add i64 %var_2_255, 32
; %var_2_185 = add i64 %var_2_160, 32
; Matched:\<badref\>:  store i64 %var_2_273, i64* %PC, align 8
; store i64 %var_2_185, i64* %var_2_3, align 8
; Matched:%var_2_224:  %var_2_224 = load i64, i64* %var_2_43, align 1
; %var_2_186 = load i64, i64* %var_2_42, align 1
; Matched:%var_2_225:  %var_2_225 = inttoptr i64 %var_2_222 to i64*
; %var_2_187 = inttoptr i64 %var_2_184 to i64*
; Matched:\<badref\>:  store i64 %var_2_224, i64* %var_2_225, align 8
; store i64 %var_2_186, i64* %var_2_187, align 8
%var_2_188 = load i64, i64* %var_2_3, align 8
%var_2_189 = bitcast %union.VectorReg* %var_2_54 to <2 x i32>*
%var_2_190 = load <2 x i32>, <2 x i32>* %var_2_189, align 1
%var_2_191 = bitcast i64* %var_2_130 to <2 x i32>*
%var_2_192 = load <2 x i32>, <2 x i32>* %var_2_191, align 1
%var_2_193 = extractelement <2 x i32> %var_2_190, i32 0
; Matched:\<badref\>:  store i32 %var_2_231, i32* %var_2_182, align 1, !tbaa !1287
; store i32 %var_2_193, i32* %var_2_141, align 1
%var_2_194 = extractelement <2 x i32> %var_2_190, i32 1
; Matched:\<badref\>:  store i32 %var_2_232, i32* %var_2_185, align 1, !tbaa !1287
; store i32 %var_2_194, i32* %var_2_144, align 1
%var_2_195 = extractelement <2 x i32> %var_2_192, i32 0
; Matched:\<badref\>:  store i32 %var_2_281, i32* %var_2_187, align 1, !tbaa !1287
; store i32 %var_2_195, i32* %var_2_146, align 1
%var_2_196 = extractelement <2 x i32> %var_2_192, i32 1
; Matched:\<badref\>:  store i32 %var_2_282, i32* %var_2_190, align 1, !tbaa !1287
; store i32 %var_2_196, i32* %var_2_149, align 1
%var_2_197 = bitcast %union.VectorReg* %var_2_176 to <2 x i32>*
%var_2_198 = load <2 x i32>, <2 x i32>* %var_2_197, align 1
%var_2_199 = bitcast i64* %var_2_182 to <2 x i32>*
%var_2_200 = load <2 x i32>, <2 x i32>* %var_2_199, align 1
%var_2_201 = extractelement <2 x i32> %var_2_198, i32 0
; Matched:%var_2_240:  %var_2_240 = bitcast %union.VectorReg* %var_2_5 to i32*
; %var_2_202 = bitcast %union.VectorReg* %var_2_54 to i32*
; Matched:\<badref\>:  store i32 %var_2_285, i32* %var_2_240, align 1, !tbaa !1287
; store i32 %var_2_201, i32* %var_2_202, align 1
%var_2_203 = extractelement <2 x i32> %var_2_198, i32 1
; Matched:%var_2_242:  %var_2_242 = getelementptr inbounds i8, i8* %var_2_165, i64 4
; %var_2_204 = getelementptr inbounds i8, i8* %var_2_124, i64 4
; Matched:%var_2_243:  %var_2_243 = bitcast i8* %var_2_242 to i32*
; %var_2_205 = bitcast i8* %var_2_204 to i32*
; Matched:\<badref\>:  store i32 %var_2_286, i32* %var_2_243, align 1, !tbaa !1287
; store i32 %var_2_203, i32* %var_2_205, align 1
%var_2_206 = extractelement <2 x i32> %var_2_200, i32 0
; Matched:%var_2_245:  %var_2_245 = bitcast i64* %var_2_171 to i32*
; %var_2_207 = bitcast i64* %var_2_130 to i32*
; Matched:\<badref\>:  store i32 %var_2_287, i32* %var_2_245, align 1, !tbaa !1287
; store i32 %var_2_206, i32* %var_2_207, align 1
%var_2_208 = extractelement <2 x i32> %var_2_200, i32 1
; Matched:%var_2_247:  %var_2_247 = getelementptr inbounds i8, i8* %var_2_165, i64 12
; %var_2_209 = getelementptr inbounds i8, i8* %var_2_124, i64 12
; Matched:%var_2_248:  %var_2_248 = bitcast i8* %var_2_247 to i32*
; %var_2_210 = bitcast i8* %var_2_209 to i32*
; Matched:\<badref\>:  store i32 %var_2_246, i32* %var_2_248, align 1, !tbaa !1287
; store i32 %var_2_208, i32* %var_2_210, align 1
%var_2_211 = add i64 %var_2_188, -120
; Matched:%var_2_250:  %var_2_250 = add i64 %var_2_226, 11
; %var_2_212 = add i64 %var_2_188, 11
%var_2_213 = load i64, i64* %var_2_6, align 8
%var_2_214 = add i64 %var_2_213, -8
; Matched:%var_2_293:  %var_2_293 = inttoptr i64 %var_2_292 to i64*
; %var_2_215 = inttoptr i64 %var_2_214 to i64*
; Matched:\<badref\>:  store i64 %var_2_290, i64* %var_2_293, align 8
; store i64 %var_2_212, i64* %var_2_215, align 8
; Matched:\<badref\>:  store i64 %var_2_324, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_214, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_249, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_211, i64* %var_2_3, align 8
%call2_40078e = tail call %struct.Memory* @sub_400710.takFP(%struct.State* nonnull %0, i64 %var_2_211, %struct.Memory* %call2_400763)
%var_2_216 = load i64, i64* %var_2_3, align 8
%var_2_217 = add i64 %var_2_216, ptrtoint (%G_0x245__rip__type* @G_0x245__rip_ to i64)
%var_2_218 = add i64 %var_2_216, 8
store i64 %var_2_218, i64* %var_2_3, align 8
%var_2_219 = inttoptr i64 %var_2_217 to i64*
%var_2_220 = load i64, i64* %var_2_219, align 8
store i64 %var_2_220, i64* %var_2_51, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_75, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_76, align 1
%var_2_221 = load i64, i64* %RBP.i, align 8
%var_2_222 = add i64 %var_2_221, -32
; Matched:%var_2_259:  %var_2_259 = add i64 %var_2_255, 13
; %var_2_223 = add i64 %var_2_216, 13
; Matched:\<badref\>:  store i64 %var_2_318, i64* %PC, align 8
; store i64 %var_2_223, i64* %var_2_3, align 8
%var_2_224 = inttoptr i64 %var_2_222 to double*
%var_2_225 = load double, double* %var_2_224, align 8
%var_2_226 = bitcast i64 %var_2_220 to double
%var_2_227 = fsub double %var_2_225, %var_2_226
store double %var_2_227, double* %var_2_129, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_171, align 1, !tbaa !1284
; store i64 0, i64* %var_2_130, align 1
; Matched:%var_2_264:  %var_2_264 = add i64 %var_2_257, -16
; %var_2_228 = add i64 %var_2_221, -16
; Matched:%var_2_212:  %var_2_212 = add i64 %var_2_202, 22
; %var_2_229 = add i64 %var_2_216, 22
; Matched:\<badref\>:  store i64 %var_2_212, i64* %PC, align 8
; store i64 %var_2_229, i64* %var_2_3, align 8
; Matched:%var_2_266:  %var_2_266 = inttoptr i64 %var_2_264 to i64*
; %var_2_230 = inttoptr i64 %var_2_228 to i64*
; Matched:%var_2_267:  %var_2_267 = load i64, i64* %var_2_266, align 8
; %var_2_231 = load i64, i64* %var_2_230, align 8
; Matched:\<badref\>:  store i64 %var_2_267, i64* %var_2_51, align 1, !tbaa !1284
; store i64 %var_2_231, i64* %var_2_51, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_75, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_76, align 1
; Matched:%var_2_268:  %var_2_268 = add i64 %var_2_257, -24
; %var_2_232 = add i64 %var_2_221, -24
; Matched:%var_2_269:  %var_2_269 = add i64 %var_2_255, 27
; %var_2_233 = add i64 %var_2_216, 27
; Matched:\<badref\>:  store i64 %var_2_216, i64* %PC, align 8
; store i64 %var_2_233, i64* %var_2_3, align 8
; Matched:%var_2_270:  %var_2_270 = inttoptr i64 %var_2_268 to i64*
; %var_2_234 = inttoptr i64 %var_2_232 to i64*
; Matched:%var_2_271:  %var_2_271 = load i64, i64* %var_2_270, align 8
; %var_2_235 = load i64, i64* %var_2_234, align 8
; Matched:\<badref\>:  store i64 %var_2_271, i64* %var_2_219, align 1, !tbaa !1284
; store i64 %var_2_235, i64* %var_2_181, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_221, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_183, align 1
; Matched:%var_2_272:  %var_2_272 = add i64 %var_2_257, -56
; %var_2_236 = add i64 %var_2_221, -56
; Matched:%var_2_223:  %var_2_223 = add i64 %var_2_202, 32
; %var_2_237 = add i64 %var_2_216, 32
; Matched:\<badref\>:  store i64 %var_2_223, i64* %PC, align 8
; store i64 %var_2_237, i64* %var_2_3, align 8
; Matched:%var_2_274:  %var_2_274 = load i64, i64* %var_2_43, align 1
; %var_2_238 = load i64, i64* %var_2_42, align 1
; Matched:%var_2_275:  %var_2_275 = inttoptr i64 %var_2_272 to i64*
; %var_2_239 = inttoptr i64 %var_2_236 to i64*
; Matched:\<badref\>:  store i64 %var_2_274, i64* %var_2_275, align 8
; store i64 %var_2_238, i64* %var_2_239, align 8
%var_2_240 = load i64, i64* %var_2_3, align 8
%var_2_241 = load <2 x i32>, <2 x i32>* %var_2_189, align 1
%var_2_242 = load <2 x i32>, <2 x i32>* %var_2_191, align 1
%var_2_243 = extractelement <2 x i32> %var_2_241, i32 0
; Matched:\<badref\>:  store i32 %var_2_279, i32* %var_2_182, align 1, !tbaa !1287
; store i32 %var_2_243, i32* %var_2_141, align 1
%var_2_244 = extractelement <2 x i32> %var_2_241, i32 1
; Matched:\<badref\>:  store i32 %var_2_280, i32* %var_2_185, align 1, !tbaa !1287
; store i32 %var_2_244, i32* %var_2_144, align 1
%var_2_245 = extractelement <2 x i32> %var_2_242, i32 0
; Matched:\<badref\>:  store i32 %var_2_233, i32* %var_2_187, align 1, !tbaa !1287
; store i32 %var_2_245, i32* %var_2_146, align 1
%var_2_246 = extractelement <2 x i32> %var_2_242, i32 1
; Matched:\<badref\>:  store i32 %var_2_234, i32* %var_2_190, align 1, !tbaa !1287
; store i32 %var_2_246, i32* %var_2_149, align 1
%var_2_247 = load <2 x i32>, <2 x i32>* %var_2_197, align 1
%var_2_248 = load <2 x i32>, <2 x i32>* %var_2_199, align 1
%var_2_249 = extractelement <2 x i32> %var_2_247, i32 0
; Matched:\<badref\>:  store i32 %var_2_239, i32* %var_2_240, align 1, !tbaa !1287
; store i32 %var_2_249, i32* %var_2_202, align 1
%var_2_250 = extractelement <2 x i32> %var_2_247, i32 1
; Matched:\<badref\>:  store i32 %var_2_241, i32* %var_2_243, align 1, !tbaa !1287
; store i32 %var_2_250, i32* %var_2_205, align 1
%var_2_251 = extractelement <2 x i32> %var_2_248, i32 0
; Matched:\<badref\>:  store i32 %var_2_244, i32* %var_2_245, align 1, !tbaa !1287
; store i32 %var_2_251, i32* %var_2_207, align 1
%var_2_252 = extractelement <2 x i32> %var_2_248, i32 1
; Matched:\<badref\>:  store i32 %var_2_288, i32* %var_2_248, align 1, !tbaa !1287
; store i32 %var_2_252, i32* %var_2_210, align 1
%var_2_253 = add i64 %var_2_240, -163
; Matched:%var_2_290:  %var_2_290 = add i64 %var_2_276, 11
; %var_2_254 = add i64 %var_2_240, 11
%var_2_255 = load i64, i64* %var_2_6, align 8
%var_2_256 = add i64 %var_2_255, -8
; Matched:%var_2_253:  %var_2_253 = inttoptr i64 %var_2_252 to i64*
; %var_2_257 = inttoptr i64 %var_2_256 to i64*
; Matched:\<badref\>:  store i64 %var_2_250, i64* %var_2_253, align 8
; store i64 %var_2_254, i64* %var_2_257, align 8
; Matched:\<badref\>:  store i64 %var_2_252, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_256, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_289, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_253, i64* %var_2_3, align 8
%call2_4007b9 = tail call %struct.Memory* @sub_400710.takFP(%struct.State* nonnull %0, i64 %var_2_253, %struct.Memory* %call2_40078e)
; Matched:%var_2_295:  %var_2_295 = load i64, i64* %RBP, align 8
; %var_2_258 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_296:  %var_2_296 = add i64 %var_2_295, -48
; %var_2_259 = add i64 %var_2_258, -48
%var_2_260 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_49:  %var_2_49 = add i64 %var_2_48, 5
; %var_2_261 = add i64 %var_2_260, 5
; Matched:\<badref\>:  store i64 %var_2_49, i64* %PC, align 8
; store i64 %var_2_261, i64* %var_2_3, align 8
; Matched:%var_2_299:  %var_2_299 = inttoptr i64 %var_2_296 to i64*
; %var_2_262 = inttoptr i64 %var_2_259 to i64*
; Matched:%var_2_300:  %var_2_300 = load i64, i64* %var_2_299, align 8
; %var_2_263 = load i64, i64* %var_2_262, align 8
; Matched:\<badref\>:  store i64 %var_2_300, i64* %var_2_51, align 1, !tbaa !1284
; store i64 %var_2_263, i64* %var_2_51, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_75, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_76, align 1
; Matched:%var_2_301:  %var_2_301 = add i64 %var_2_295, -64
; %var_2_264 = add i64 %var_2_258, -64
; Matched:%var_2_302:  %var_2_302 = add i64 %var_2_297, 10
; %var_2_265 = add i64 %var_2_260, 10
; Matched:\<badref\>:  store i64 %var_2_302, i64* %PC, align 8
; store i64 %var_2_265, i64* %var_2_3, align 8
; Matched:%var_2_303:  %var_2_303 = load i64, i64* %var_2_43, align 1
; %var_2_266 = load i64, i64* %var_2_42, align 1
; Matched:%var_2_304:  %var_2_304 = inttoptr i64 %var_2_301 to i64*
; %var_2_267 = inttoptr i64 %var_2_264 to i64*
; Matched:\<badref\>:  store i64 %var_2_303, i64* %var_2_304, align 8
; store i64 %var_2_266, i64* %var_2_267, align 8
%var_2_268 = load i64, i64* %var_2_3, align 8
%var_2_269 = load <2 x i32>, <2 x i32>* %var_2_136, align 1
%var_2_270 = load <2 x i32>, <2 x i32>* %var_2_138, align 1
%var_2_271 = extractelement <2 x i32> %var_2_269, i32 0
; Matched:\<badref\>:  store i32 %var_2_308, i32* %var_2_182, align 1, !tbaa !1287
; store i32 %var_2_271, i32* %var_2_141, align 1
%var_2_272 = extractelement <2 x i32> %var_2_269, i32 1
; Matched:\<badref\>:  store i32 %var_2_309, i32* %var_2_185, align 1, !tbaa !1287
; store i32 %var_2_272, i32* %var_2_144, align 1
%var_2_273 = extractelement <2 x i32> %var_2_270, i32 0
; Matched:\<badref\>:  store i32 %var_2_186, i32* %var_2_187, align 1, !tbaa !1287
; store i32 %var_2_273, i32* %var_2_146, align 1
%var_2_274 = extractelement <2 x i32> %var_2_270, i32 1
; Matched:\<badref\>:  store i32 %var_2_311, i32* %var_2_190, align 1, !tbaa !1287
; store i32 %var_2_274, i32* %var_2_149, align 1
; Matched:%var_2_312:  %var_2_312 = load i64, i64* %RBP, align 8
; %var_2_275 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_313:  %var_2_313 = add i64 %var_2_312, -56
; %var_2_276 = add i64 %var_2_275, -56
%var_2_277 = add i64 %var_2_268, 8
store i64 %var_2_277, i64* %var_2_3, align 8
; Matched:%var_2_315:  %var_2_315 = inttoptr i64 %var_2_313 to i64*
; %var_2_278 = inttoptr i64 %var_2_276 to i64*
; Matched:%var_2_316:  %var_2_316 = load i64, i64* %var_2_315, align 8
; %var_2_279 = load i64, i64* %var_2_278, align 8
; Matched:\<badref\>:  store i64 %var_2_316, i64* %var_2_51, align 1, !tbaa !1284
; store i64 %var_2_279, i64* %var_2_51, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_75, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_76, align 1
; Matched:%var_2_317:  %var_2_317 = add i64 %var_2_312, -64
; %var_2_280 = add i64 %var_2_275, -64
; Matched:%var_2_206:  %var_2_206 = add i64 %var_2_202, 13
; %var_2_281 = add i64 %var_2_268, 13
; Matched:\<badref\>:  store i64 %var_2_259, i64* %PC, align 8
; store i64 %var_2_281, i64* %var_2_3, align 8
; Matched:%var_2_319:  %var_2_319 = inttoptr i64 %var_2_317 to i64*
; %var_2_282 = inttoptr i64 %var_2_280 to i64*
; Matched:%var_2_320:  %var_2_320 = load i64, i64* %var_2_319, align 8
; %var_2_283 = load i64, i64* %var_2_282, align 8
; Matched:\<badref\>:  store i64 %var_2_320, i64* %var_2_58, align 1, !tbaa !1284
; store i64 %var_2_283, i64* %var_2_59, align 1
store double 0.000000e+00, double* %var_2_131, align 1
%var_2_284 = add i64 %var_2_268, -184
; Matched:%var_2_322:  %var_2_322 = add i64 %var_2_305, 18
; %var_2_285 = add i64 %var_2_268, 18
%var_2_286 = load i64, i64* %var_2_6, align 8
%var_2_287 = add i64 %var_2_286, -8
; Matched:%var_2_325:  %var_2_325 = inttoptr i64 %var_2_324 to i64*
; %var_2_288 = inttoptr i64 %var_2_287 to i64*
; Matched:\<badref\>:  store i64 %var_2_322, i64* %var_2_325, align 8
; store i64 %var_2_285, i64* %var_2_288, align 8
; Matched:\<badref\>:  store i64 %var_2_199, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_287, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_321, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_284, i64* %var_2_3, align 8
%call2_4007d5 = tail call %struct.Memory* @sub_400710.takFP(%struct.State* nonnull %0, i64 %var_2_284, %struct.Memory* %call2_4007b9)
; Matched:%var_2_327:  %var_2_327 = load i64, i64* %RBP, align 8
; %var_2_289 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_328:  %var_2_328 = add i64 %var_2_327, -8
; %var_2_290 = add i64 %var_2_289, -8
%var_2_291 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_65:  %var_2_65 = add i64 %var_2_64, 5
; %var_2_292 = add i64 %var_2_291, 5
; Matched:\<badref\>:  store i64 %var_2_65, i64* %PC, align 8
; store i64 %var_2_292, i64* %var_2_3, align 8
; Matched:%var_2_331:  %var_2_331 = load i64, i64* %var_2_43, align 1
; %var_2_293 = load i64, i64* %var_2_42, align 1
; Matched:%var_2_332:  %var_2_332 = inttoptr i64 %var_2_328 to i64*
; %var_2_294 = inttoptr i64 %var_2_290 to i64*
; Matched:\<badref\>:  store i64 %var_2_331, i64* %var_2_332, align 8
; store i64 %var_2_293, i64* %var_2_294, align 8
; Matched:%var_2_333:  %var_2_333 = load i64, i64* %PC, align 8
; %var_2_295 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_334:  %var_2_334 = add i64 %var_2_333, 15
; %var_2_296 = add i64 %var_2_295, 15
; Matched:\<badref\>:  store i64 %var_2_334, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_296, i64* %var_2_3, align 8
  br label %block_.L_4007ee

block_.L_4007e4:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit
; Matched:%var_2_145:  %var_2_145 = load i64, i64* %RBP, align 8
; %var_2_297 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_146:  %var_2_146 = add i64 %var_2_145, -32
; %var_2_298 = add i64 %var_2_297, -32
; Matched:%var_2_147:  %var_2_147 = add i64 %var_2_107, 5
; %var_2_299 = add i64 %var_2_108, 5
; Matched:\<badref\>:  store i64 %var_2_147, i64* %PC, align 8
; store i64 %var_2_299, i64* %var_2_3, align 8
; Matched:%var_2_148:  %var_2_148 = inttoptr i64 %var_2_146 to i64*
; %var_2_300 = inttoptr i64 %var_2_298 to i64*
; Matched:%var_2_149:  %var_2_149 = load i64, i64* %var_2_148, align 8
; %var_2_301 = load i64, i64* %var_2_300, align 8
; Matched:\<badref\>:  store i64 %var_2_149, i64* %var_2_43, align 1, !tbaa !1284
; store i64 %var_2_301, i64* %var_2_42, align 1
store double 0.000000e+00, double* %var_2_70, align 1
; Matched:%var_2_150:  %var_2_150 = add i64 %var_2_145, -8
; %var_2_302 = add i64 %var_2_297, -8
; Matched:%var_2_151:  %var_2_151 = add i64 %var_2_107, 10
; %var_2_303 = add i64 %var_2_108, 10
; Matched:\<badref\>:  store i64 %var_2_151, i64* %PC, align 8
; store i64 %var_2_303, i64* %var_2_3, align 8
; Matched:%var_2_152:  %var_2_152 = inttoptr i64 %var_2_150 to i64*
; %var_2_304 = inttoptr i64 %var_2_302 to i64*
; Matched:\<badref\>:  store i64 %var_2_149, i64* %var_2_152, align 8
; store i64 %var_2_301, i64* %var_2_304, align 8
; Matched:  %.pre3 = load i64, i64* %PC, align 8
; %.pre3 = load i64, i64* %var_2_3, align 8
  br label %block_.L_4007ee

block_.L_4007ee:                                  ; preds = %block_.L_4007e4, %block_40073b
; Matched:%var_2_108:  %var_2_108 = phi i64 [ %.pre3, %block_4007e4 ], [ %var_2_334, %block_40073b ]
; %var_2_305 = phi i64 [ %.pre3, %block_.L_4007e4 ], [ %var_2_296, %block_40073b ]
%MEMORY.0 = phi %struct.Memory* [ %var_2_103, %block_.L_4007e4 ], [ %call2_4007d5, %block_40073b ]
; Matched:%var_2_109:  %var_2_109 = load i64, i64* %RBP, align 8
; %var_2_306 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_110:  %var_2_110 = add i64 %var_2_109, -8
; %var_2_307 = add i64 %var_2_306, -8
; Matched:%var_2_111:  %var_2_111 = add i64 %var_2_108, 5
; %var_2_308 = add i64 %var_2_305, 5
; Matched:\<badref\>:  store i64 %var_2_111, i64* %PC, align 8
; store i64 %var_2_308, i64* %var_2_3, align 8
; Matched:%var_2_112:  %var_2_112 = inttoptr i64 %var_2_110 to i64*
; %var_2_309 = inttoptr i64 %var_2_307 to i64*
; Matched:%var_2_113:  %var_2_113 = load i64, i64* %var_2_112, align 8
; %var_2_310 = load i64, i64* %var_2_309, align 8
; Matched:\<badref\>:  store i64 %var_2_113, i64* %var_2_43, align 1, !tbaa !1284
; store i64 %var_2_310, i64* %var_2_42, align 1
store double 0.000000e+00, double* %var_2_70, align 1
; Matched:%var_2_114:  %var_2_114 = load i64, i64* %RSP, align 8
; %var_2_311 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_115:  %var_2_115 = add i64 %var_2_114, 64
; %var_2_312 = add i64 %var_2_311, 64
; Matched:\<badref\>:  store i64 %var_2_115, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_312, i64* %var_2_6, align 8
; Matched:%var_2_116:  %var_2_116 = icmp ugt i64 %var_2_114, -65
; %var_2_313 = icmp ugt i64 %var_2_311, -65
; Matched:%var_2_117:  %var_2_117 = zext i1 %var_2_116 to i8
; %var_2_314 = zext i1 %var_2_313 to i8
; Matched:\<badref\>:  store i8 %var_2_117, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_314, i8* %var_2_14, align 1
; Matched:%var_2_118:  %var_2_118 = trunc i64 %var_2_115 to i32
; %var_2_315 = trunc i64 %var_2_312 to i32
; Matched:%var_2_119:  %var_2_119 = and i32 %var_2_118, 255
; %var_2_316 = and i32 %var_2_315, 255
; Matched:%var_2_120:  %var_2_120 = tail call i32 @llvm.ctpop.i32(i32 %var_2_119) #12
; %var_2_317 = tail call i32 @llvm.ctpop.i32(i32 %var_2_316)
; Matched:%var_2_121:  %var_2_121 = trunc i32 %var_2_120 to i8
; %var_2_318 = trunc i32 %var_2_317 to i8
; Matched:%var_2_122:  %var_2_122 = and i8 %var_2_121, 1
; %var_2_319 = and i8 %var_2_318, 1
; Matched:%var_2_123:  %var_2_123 = xor i8 %var_2_122, 1
; %var_2_320 = xor i8 %var_2_319, 1
; Matched:\<badref\>:  store i8 %var_2_123, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_320, i8* %var_2_21, align 1
; Matched:%var_2_124:  %var_2_124 = xor i64 %var_2_115, %var_2_114
; %var_2_321 = xor i64 %var_2_312, %var_2_311
; Matched:%var_2_125:  %var_2_125 = lshr i64 %var_2_124, 4
; %var_2_322 = lshr i64 %var_2_321, 4
; Matched:%var_2_126:  %var_2_126 = trunc i64 %var_2_125 to i8
; %var_2_323 = trunc i64 %var_2_322 to i8
; Matched:%var_2_127:  %var_2_127 = and i8 %var_2_126, 1
; %var_2_324 = and i8 %var_2_323, 1
; Matched:\<badref\>:  store i8 %var_2_127, i8* %var_2_28, align 1, !tbaa !1280
; store i8 %var_2_324, i8* %var_2_26, align 1
; Matched:%var_2_128:  %var_2_128 = icmp eq i64 %var_2_115, 0
; %var_2_325 = icmp eq i64 %var_2_312, 0
; Matched:%var_2_129:  %var_2_129 = zext i1 %var_2_128 to i8
; %var_2_326 = zext i1 %var_2_325 to i8
; Matched:\<badref\>:  store i8 %var_2_129, i8* %var_2_31, align 1, !tbaa !1281
; store i8 %var_2_326, i8* %var_2_29, align 1
; Matched:%var_2_130:  %var_2_130 = lshr i64 %var_2_115, 63
; %var_2_327 = lshr i64 %var_2_312, 63
; Matched:%var_2_131:  %var_2_131 = trunc i64 %var_2_130 to i8
; %var_2_328 = trunc i64 %var_2_327 to i8
; Matched:\<badref\>:  store i8 %var_2_131, i8* %var_2_34, align 1, !tbaa !1282
; store i8 %var_2_328, i8* %var_2_32, align 1
; Matched:%var_2_132:  %var_2_132 = lshr i64 %var_2_114, 63
; %var_2_329 = lshr i64 %var_2_311, 63
; Matched:%var_2_133:  %var_2_133 = xor i64 %var_2_130, %var_2_132
; %var_2_330 = xor i64 %var_2_327, %var_2_329
; Matched:%var_2_134:  %var_2_134 = add nuw nsw i64 %var_2_133, %var_2_130
; %var_2_331 = add nuw nsw i64 %var_2_330, %var_2_327
; Matched:%var_2_135:  %var_2_135 = icmp eq i64 %var_2_134, 2
; %var_2_332 = icmp eq i64 %var_2_331, 2
; Matched:%var_2_136:  %var_2_136 = zext i1 %var_2_135 to i8
; %var_2_333 = zext i1 %var_2_332 to i8
; Matched:\<badref\>:  store i8 %var_2_136, i8* %var_2_40, align 1, !tbaa !1283
; store i8 %var_2_333, i8* %var_2_38, align 1
; Matched:%var_2_137:  %var_2_137 = add i64 %var_2_108, 10
; %var_2_334 = add i64 %var_2_305, 10
; Matched:\<badref\>:  store i64 %var_2_137, i64* %PC, align 8
; store i64 %var_2_334, i64* %var_2_3, align 8
; Matched:%var_2_138:  %var_2_138 = add i64 %var_2_114, 72
; %var_2_335 = add i64 %var_2_311, 72
; Matched:%var_2_139:  %var_2_139 = inttoptr i64 %var_2_115 to i64*
; %var_2_336 = inttoptr i64 %var_2_312 to i64*
; Matched:%var_2_140:  %var_2_140 = load i64, i64* %var_2_139, align 8
; %var_2_337 = load i64, i64* %var_2_336, align 8
; Matched:\<badref\>:  store i64 %var_2_140, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_337, i64* %RBP.i, align 8
; Matched:\<badref\>:  store i64 %var_2_138, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_335, i64* %var_2_6, align 8
; Matched:%var_2_141:  %var_2_141 = add i64 %var_2_108, 11
; %var_2_338 = add i64 %var_2_305, 11
; Matched:\<badref\>:  store i64 %var_2_141, i64* %PC, align 8
; store i64 %var_2_338, i64* %var_2_3, align 8
; Matched:%var_2_142:  %var_2_142 = inttoptr i64 %var_2_138 to i64*
; %var_2_339 = inttoptr i64 %var_2_335 to i64*
; Matched:%var_2_143:  %var_2_143 = load i64, i64* %var_2_142, align 8
; %var_2_340 = load i64, i64* %var_2_339, align 8
; Matched:\<badref\>:  store i64 %var_2_143, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_340, i64* %var_2_3, align 8
; Matched:%var_2_144:  %var_2_144 = add i64 %var_2_114, 80
; %var_2_341 = add i64 %var_2_311, 80
; Matched:\<badref\>:  store i64 %var_2_144, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_341, i64* %var_2_6, align 8
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
define %struct.Memory* @routine_subq__0x40___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -64
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 64
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_movsd__xmm2__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
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

define %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %4 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast [32 x %union.VectorReg]* %3 to double*
  %10 = load double, double* %9, align 1
  %11 = fcmp uno double %8, %10
  br i1 %11, label %12, label %22

; <label>:12:                                     ; preds = %block_400488
  %13 = fadd double %8, %10
  %14 = bitcast double %13 to i64
  %15 = and i64 %14, 9221120237041090560
  %16 = icmp eq i64 %15, 9218868437227405312
  %17 = and i64 %14, 2251799813685247
  %18 = icmp ne i64 %17, 0
  %19 = and i1 %16, %18
  br i1 %19, label %20, label %28

; <label>:20:                                     ; preds = %12
  %21 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:22:                                     ; preds = %block_400488
  %23 = fcmp ogt double %8, %10
  br i1 %23, label %28, label %24

; <label>:24:                                     ; preds = %22
  %25 = fcmp olt double %8, %10
  br i1 %25, label %28, label %26

; <label>:26:                                     ; preds = %24
  %27 = fcmp oeq double %8, %10
  br i1 %27, label %28, label %35

; <label>:28:                                     ; preds = %26, %24, %22, %12
  %29 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 1, %26 ], [ 1, %12 ]
  %30 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 0, %26 ], [ 1, %12 ]
  %31 = phi i8 [ 0, %22 ], [ 1, %24 ], [ 0, %26 ], [ 1, %12 ]
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %30, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %31, i8* %34, align 1
  br label %35

; <label>:35:                                     ; preds = %28, %26
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %38, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %35, %20
  %39 = phi %struct.Memory* [ %21, %20 ], [ %2, %35 ]
  ret %struct.Memory* %39
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_4007e4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x29d__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x29d__rip__type* @G_0x29d__rip_ to i64)
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
define %struct.Memory* @routine_movsd_MINUS0x20__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_callq_.takFP(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x270__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x270__rip__type* @G_0x270__rip_ to i64)
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
define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_MINUS0x20__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_movaps__xmm3___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
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
define %struct.Memory* @routine_movsd_0x245__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x245__rip__type* @G_0x245__rip_ to i64)
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
define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_movsd_MINUS0x38__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_jmpq_.L_4007ee(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x20__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_addq__0x40___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 64
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -65
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
