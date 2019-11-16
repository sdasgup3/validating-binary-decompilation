; ModuleID = '/tmp/tmp9ab0bsej-query.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x218__rip__type = type <{ [8 x i8] }>
%G_0x2b0__rip__type = type <{ [8 x i8] }>
%G_0x602340_type = type <{ [1 x i8] }>
%G_0x602348_type = type <{ [16 x i8] }>
%G_0x602370_type = type <{ [16 x i8] }>
%G_0x602630_type = type <{ [16 x i8] }>
%G_0x602638_type = type <{ [8 x i8] }>
%G_0x602640_type = type <{ [8 x i8] }>
%G_0x602648_type = type <{ [8 x i8] }>
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
@G_0x218__rip_ = global %G_0x218__rip__type zeroinitializer
@G_0x2b0__rip_ = global %G_0x2b0__rip__type zeroinitializer
@G_0x602340 = local_unnamed_addr global %G_0x602340_type zeroinitializer
@G_0x602348 = local_unnamed_addr global %G_0x602348_type zeroinitializer
@G_0x602370 = local_unnamed_addr global %G_0x602370_type zeroinitializer
@G_0x602630 = local_unnamed_addr global %G_0x602630_type zeroinitializer
@G_0x602638 = local_unnamed_addr global %G_0x602638_type zeroinitializer
@G_0x602640 = local_unnamed_addr global %G_0x602640_type zeroinitializer
@G_0x602648 = local_unnamed_addr global %G_0x602648_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @asin(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @ext_cos(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr

declare %struct.Memory* @ext_tan(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr

declare %struct.Memory* @ext_sin(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @transit_surface(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
entry:
%var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
; Matched:%var_2_6:  %var_2_6 = load i64, i64* %RBP, align 8
; %var_2_4 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_7:  %var_2_7 = add i64 %1, 1
; %var_2_5 = add i64 %1, 1
; Matched:\<badref\>:  store i64 %var_2_7, i64* %PC, align 8
; store i64 %var_2_5, i64* %var_2_3, align 8
%var_2_6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
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
; Matched:%var_2_12:  %var_2_12 = add i64 %var_2_8, -152
; %var_2_11 = add i64 %var_2_7, -152
; Matched:\<badref\>:  store i64 %var_2_12, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_11, i64* %var_2_6, align 8
%var_2_12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
%var_2_13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
; Matched:%var_2_15:  %var_2_15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
; %var_2_14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
%var_2_15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
%var_2_16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
; Matched:%var_2_18:  %var_2_18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; %var_2_17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
%var_2_18 = load i16, i16* bitcast (%G_0x602340_type* @G_0x602340 to i16*), align 8
store i8 0, i8* %var_2_12, align 1
; Matched:%var_2_20:  %var_2_20 = and i16 %var_2_19, 255
; %var_2_19 = and i16 %var_2_18, 255
; Matched:%var_2_21:  %var_2_21 = zext i16 %var_2_20 to i32
; %var_2_20 = zext i16 %var_2_19 to i32
; Matched:%var_2_22:  %var_2_22 = tail call i32 @llvm.ctpop.i32(i32 %var_2_21) #14
; %var_2_21 = tail call i32 @llvm.ctpop.i32(i32 %var_2_20)
; Matched:%var_2_23:  %var_2_23 = trunc i32 %var_2_22 to i8
; %var_2_22 = trunc i32 %var_2_21 to i8
; Matched:%var_2_24:  %var_2_24 = and i8 %var_2_23, 1
; %var_2_23 = and i8 %var_2_22, 1
; Matched:%var_2_25:  %var_2_25 = xor i8 %var_2_24, 1
; %var_2_24 = xor i8 %var_2_23, 1
; Matched:\<badref\>:  store i8 %var_2_25, i8* %var_2_14, align 1, !tbaa !1279
; store i8 %var_2_24, i8* %var_2_13, align 1
; Matched:\<badref\>:  store i8 0, i8* %var_2_15, align 1, !tbaa !1280
; store i8 0, i8* %var_2_14, align 1
%var_2_25 = icmp eq i16 %var_2_18, 0
%var_2_26 = zext i1 %var_2_25 to i8
; Matched:\<badref\>:  store i8 %var_2_27, i8* %var_2_16, align 1, !tbaa !1281
; store i8 %var_2_26, i8* %var_2_15, align 1
; Matched:%var_2_28:  %var_2_28 = lshr i16 %var_2_19, 15
; %var_2_27 = lshr i16 %var_2_18, 15
; Matched:%var_2_29:  %var_2_29 = trunc i16 %var_2_28 to i8
; %var_2_28 = trunc i16 %var_2_27 to i8
; Matched:\<badref\>:  store i8 %var_2_29, i8* %var_2_17, align 1, !tbaa !1282
; store i8 %var_2_28, i8* %var_2_16, align 1
; Matched:\<badref\>:  store i8 0, i8* %var_2_18, align 1, !tbaa !1287
; store i8 0, i8* %var_2_17, align 1
%.v = select i1 %var_2_25, i64 410, i64 25
%var_2_29 = add i64 %var_2_10, %.v
%var_2_30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
%var_2_31 = bitcast [32 x %union.VectorReg]* %var_2_30 to i8*
%var_2_32 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %var_2_30, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
%var_2_33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
%var_2_34 = bitcast [32 x %union.VectorReg]* %var_2_30 to i32*
%var_2_35 = getelementptr inbounds i8, i8* %var_2_31, i64 4
%var_2_36 = bitcast i8* %var_2_35 to i32*
%var_2_37 = bitcast i64* %var_2_33 to i32*
%var_2_38 = getelementptr inbounds i8, i8* %var_2_31, i64 12
%var_2_39 = bitcast i8* %var_2_38 to i32*
%var_2_40 = bitcast [32 x %union.VectorReg]* %var_2_30 to <4 x i32>*
store <4 x i32> zeroinitializer, <4 x i32>* %var_2_40, align 1
%var_2_41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
%var_2_42 = load i64, i64* bitcast (%G_0x602640_type* @G_0x602640 to i64*), align 8
%var_2_43 = bitcast %union.VectorReg* %var_2_41 to double*
%var_2_44 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_41, i64 0, i32 0, i32 0, i32 0, i64 0
store i64 %var_2_42, i64* %var_2_44, align 1
%var_2_45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_45:  %var_2_45 = bitcast i64* %var_2_44 to double*
; %var_2_46 = bitcast i64* %var_2_45 to double*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_45, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_46, align 1
%var_2_47 = add i64 %var_2_29, 16
; Matched:\<badref\>:  store i64 %var_2_46, i64* %PC, align 8
; store i64 %var_2_47, i64* %var_2_3, align 8
%var_2_48 = bitcast i64 %var_2_42 to double
%var_2_49 = bitcast [32 x %union.VectorReg]* %var_2_30 to double*
%var_2_50 = load double, double* %var_2_49, align 1
%var_2_51 = fcmp uno double %var_2_48, %var_2_50
br i1 %var_2_25, label %block_.L_4012ab, label %block_40112a

block_40112a:                                     ; preds = %entry
br i1 %var_2_51, label %var_2_52, label %var_2_62

var_2_52:
%var_2_53 = fadd double %var_2_48, %var_2_50
%var_2_54 = bitcast double %var_2_53 to i64
%var_2_55 = and i64 %var_2_54, 9221120237041090560
%var_2_56 = icmp eq i64 %var_2_55, 9218868437227405312
%var_2_57 = and i64 %var_2_54, 2251799813685247
%var_2_58 = icmp ne i64 %var_2_57, 0
%var_2_59 = and i1 %var_2_56, %var_2_58
br i1 %var_2_59, label %var_2_60, label %var_2_68

var_2_60:
%var_2_61 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %var_2_47, %struct.Memory* %2)
%.pre = load i64, i64* %var_2_3, align 8
%.pre44 = load i8, i8* %var_2_15, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit419

var_2_62:
%var_2_63 = fcmp ogt double %var_2_48, %var_2_50
br i1 %var_2_63, label %var_2_68, label %var_2_64

var_2_64:
%var_2_65 = fcmp olt double %var_2_48, %var_2_50
br i1 %var_2_65, label %var_2_68, label %var_2_66

var_2_66:
%var_2_67 = fcmp oeq double %var_2_48, %var_2_50
br i1 %var_2_67, label %var_2_68, label %var_2_72

var_2_68:
%var_2_69 = phi i8 [ 0, %var_2_62 ], [ 0, %var_2_64 ], [ 1, %var_2_66 ], [ 1, %var_2_52 ]
%var_2_70 = phi i8 [ 0, %var_2_62 ], [ 0, %var_2_64 ], [ 0, %var_2_66 ], [ 1, %var_2_52 ]
%var_2_71 = phi i8 [ 0, %var_2_62 ], [ 1, %var_2_64 ], [ 0, %var_2_66 ], [ 1, %var_2_52 ]
store i8 %var_2_69, i8* %var_2_15, align 1
store i8 %var_2_70, i8* %var_2_13, align 1
store i8 %var_2_71, i8* %var_2_12, align 1
br label %var_2_72

var_2_72:
%var_2_73 = phi i8 [ %var_2_69, %var_2_68 ], [ %var_2_26, %var_2_66 ]
; Matched:\<badref\>:  store i8 0, i8* %var_2_18, align 1, !tbaa !1287
; store i8 0, i8* %var_2_17, align 1
store i8 0, i8* %var_2_16, align 1
; Matched:\<badref\>:  store i8 0, i8* %var_2_15, align 1, !tbaa !1280
; store i8 0, i8* %var_2_14, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit419

routine_ucomisd__xmm0___xmm1.exit419:             ; preds = %var_2_72, %var_2_60
%var_2_74 = phi i8 [ %.pre44, %var_2_60 ], [ %var_2_73, %var_2_72 ]
%var_2_75 = phi i64 [ %.pre, %var_2_60 ], [ %var_2_47, %var_2_72 ]
%var_2_76 = phi %struct.Memory* [ %var_2_61, %var_2_60 ], [ %2, %var_2_72 ]
%var_2_77 = icmp eq i8 %var_2_74, 0
%.v62 = select i1 %var_2_77, i64 17, i64 6
%var_2_78 = add i64 %var_2_75, %.v62
; Matched:\<badref\>:  store i64 %var_2_77, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_78, i64* %var_2_3, align 8
br i1 %var_2_77, label %block_.L_40114b, label %block_401140

block_401140:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit419
%var_2_79 = load i8, i8* %var_2_13, align 1
%var_2_80 = icmp ne i8 %var_2_79, 0
%.v66 = select i1 %var_2_80, i64 11, i64 6
%var_2_81 = add i64 %var_2_78, %.v66
; Matched:\<badref\>:  store i64 %var_2_438, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_81, i64* %var_2_3, align 8
%cmpBr_401140 = icmp eq i8 %var_2_79, 1
  br i1 %cmpBr_401140, label %block_.L_40114b, label %block_401146

block_401146:                                     ; preds = %block_401140
%var_2_82 = load double, double* bitcast (%G_0x602348_type* @G_0x602348 to double*), align 8
%var_2_83 = load double, double* bitcast (%G_0x602648_type* @G_0x602648 to double*), align 8
%var_2_84 = load double, double* bitcast (%G_0x602638_type* @G_0x602638 to double*), align 8
%var_2_85 = fdiv double %var_2_83, %var_2_84
%var_2_86 = fmul double %var_2_85, %var_2_82
store double %var_2_86, double* bitcast (%G_0x602348_type* @G_0x602348 to double*), align 8
%var_2_87 = load double, double* bitcast (%G_0x602370_type* @G_0x602370 to double*), align 8
%var_2_88 = fdiv double %var_2_84, %var_2_83
store double %var_2_88, double* %var_2_43, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_44, align 1, !tbaa !1285
; store i64 0, i64* %var_2_45, align 1
%var_2_89 = fmul double %var_2_88, %var_2_87
store double %var_2_89, double* %var_2_49, align 1
store i64 0, i64* %var_2_33, align 1
store double %var_2_89, double* bitcast (%G_0x602370_type* @G_0x602370 to double*), align 8
%var_2_90 = add i64 %var_2_81, 1055
; Matched:\<badref\>:  store i64 %var_2_393, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_90, i64* %var_2_3, align 8
  br label %block_.L_401565

block_.L_40114b:                                  ; preds = %block_401140, %routine_ucomisd__xmm0___xmm1.exit419
%var_2_91 = phi i64 [ %var_2_81, %block_401140 ], [ %var_2_78, %routine_ucomisd__xmm0___xmm1.exit419 ]
%var_2_92 = bitcast [32 x %union.VectorReg]* %var_2_30 to <4 x i32>*
store <4 x i32> zeroinitializer, <4 x i32>* %var_2_92, align 1
%var_2_93 = load i64, i64* bitcast (%G_0x602348_type* @G_0x602348 to i64*), align 8
store i64 %var_2_93, i64* %var_2_44, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_45, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_46, align 1
%var_2_94 = add i64 %var_2_91, 16
; Matched:\<badref\>:  store i64 %var_2_353, i64* %PC, align 8
; store i64 %var_2_94, i64* %var_2_3, align 8
%.cast14 = bitcast i64 %var_2_93 to double
%var_2_95 = load double, double* %var_2_49, align 1
%var_2_96 = fcmp uno double %.cast14, %var_2_95
br i1 %var_2_96, label %var_2_97, label %var_2_107

var_2_97:
%var_2_98 = fadd double %.cast14, %var_2_95
%var_2_99 = bitcast double %var_2_98 to i64
%var_2_100 = and i64 %var_2_99, 9221120237041090560
%var_2_101 = icmp eq i64 %var_2_100, 9218868437227405312
%var_2_102 = and i64 %var_2_99, 2251799813685247
%var_2_103 = icmp ne i64 %var_2_102, 0
%var_2_104 = and i1 %var_2_101, %var_2_103
br i1 %var_2_104, label %var_2_105, label %var_2_113

var_2_105:
%var_2_106 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %var_2_94, %struct.Memory* %var_2_76)
; Matched:  %.pre240 = load i64, i64* %PC, align 8
; %.pre45 = load i64, i64* %var_2_3, align 8
%.pre46 = load i8, i8* %var_2_15, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit415

var_2_107:
%var_2_108 = fcmp ogt double %.cast14, %var_2_95
br i1 %var_2_108, label %var_2_113, label %var_2_109

var_2_109:
%var_2_110 = fcmp olt double %.cast14, %var_2_95
br i1 %var_2_110, label %var_2_113, label %var_2_111

var_2_111:
%var_2_112 = fcmp oeq double %.cast14, %var_2_95
br i1 %var_2_112, label %var_2_113, label %var_2_117

var_2_113:
%var_2_114 = phi i8 [ 0, %var_2_107 ], [ 0, %var_2_109 ], [ 1, %var_2_111 ], [ 1, %var_2_97 ]
%var_2_115 = phi i8 [ 0, %var_2_107 ], [ 0, %var_2_109 ], [ 0, %var_2_111 ], [ 1, %var_2_97 ]
%var_2_116 = phi i8 [ 0, %var_2_107 ], [ 1, %var_2_109 ], [ 0, %var_2_111 ], [ 1, %var_2_97 ]
store i8 %var_2_114, i8* %var_2_15, align 1
store i8 %var_2_115, i8* %var_2_13, align 1
store i8 %var_2_116, i8* %var_2_12, align 1
br label %var_2_117

var_2_117:
%var_2_118 = phi i8 [ %var_2_114, %var_2_113 ], [ %var_2_74, %var_2_111 ]
; Matched:\<badref\>:  store i8 0, i8* %var_2_18, align 1, !tbaa !1287
; store i8 0, i8* %var_2_17, align 1
store i8 0, i8* %var_2_16, align 1
; Matched:\<badref\>:  store i8 0, i8* %var_2_15, align 1, !tbaa !1280
; store i8 0, i8* %var_2_14, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit415

routine_ucomisd__xmm0___xmm1.exit415:             ; preds = %var_2_117, %var_2_105
%var_2_119 = phi i8 [ %.pre46, %var_2_105 ], [ %var_2_118, %var_2_117 ]
; Matched:%var_2_346:  %var_2_346 = phi i64 [ %.pre244, %var_2_331 ], [ %var_2_320, %var_2_343 ]
; %var_2_120 = phi i64 [ %.pre45, %var_2_105 ], [ %var_2_94, %var_2_117 ]
%var_2_121 = phi %struct.Memory* [ %var_2_106, %var_2_105 ], [ %var_2_76, %var_2_117 ]
%var_2_122 = icmp eq i8 %var_2_119, 0
; Matched:  %.v259 = select i1 %var_2_348, i64 52, i64 6
; %.v63 = select i1 %var_2_122, i64 52, i64 6
; Matched:%var_2_382:  %var_2_382 = add i64 %var_2_379, %.v258
; %var_2_123 = add i64 %var_2_120, %.v63
; Matched:\<badref\>:  store i64 %var_2_349, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_123, i64* %var_2_3, align 8
br i1 %var_2_122, label %block_.L_40118f, label %block_401161

block_401161:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit415
%var_2_124 = load i8, i8* %var_2_13, align 1
; Matched:%var_2_89:  %var_2_89 = icmp ne i8 %var_2_88, 0
; %var_2_125 = icmp ne i8 %var_2_124, 0
; Matched:  %.v264 = select i1 %var_2_89, i64 46, i64 6
; %.v67 = select i1 %var_2_125, i64 46, i64 6
; Matched:%var_2_90:  %var_2_90 = add i64 %var_2_349, %.v264
; %var_2_126 = add i64 %var_2_123, %.v67
; Matched:\<badref\>:  store i64 %var_2_90, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_126, i64* %var_2_3, align 8
%cmpBr_401161 = icmp eq i8 %var_2_124, 1
  br i1 %cmpBr_401161, label %block_.L_40118f, label %block_401167

block_401167:                                     ; preds = %block_401161
store i32 0, i32* %var_2_34, align 1
store i32 0, i32* %var_2_36, align 1
%var_2_127 = load i64, i64* %var_2_32, align 1
store i64 %var_2_127, i64* bitcast (%G_0x602370_type* @G_0x602370 to i64*), align 8
%var_2_128 = load double, double* bitcast (%G_0x602630_type* @G_0x602630 to double*), align 8
%var_2_129 = load double, double* bitcast (%G_0x602640_type* @G_0x602640 to double*), align 8
%var_2_130 = fdiv double %var_2_128, %var_2_129
store double %var_2_130, double* %var_2_49, align 1
store i64 0, i64* %var_2_33, align 1
; Matched:%var_2_717:  %var_2_717 = load i64, i64* %RBP, align 8
; %var_2_131 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_718:  %var_2_718 = add i64 %var_2_717, -24
; %var_2_132 = add i64 %var_2_131, -24
; Matched:%var_2_84:  %var_2_84 = add i64 %var_2_90, 35
; %var_2_133 = add i64 %var_2_126, 35
; Matched:\<badref\>:  store i64 %var_2_84, i64* %PC, align 8
; store i64 %var_2_133, i64* %var_2_3, align 8
; Matched:%var_2_720:  %var_2_720 = inttoptr i64 %var_2_718 to double*
; %var_2_134 = inttoptr i64 %var_2_132 to double*
; Matched:\<badref\>:  store double %var_2_81, double* %var_2_85, align 8
; store double %var_2_130, double* %var_2_134, align 8
; Matched:%var_2_721:  %var_2_721 = load i64, i64* %PC, align 8
; %var_2_135 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_722:  %var_2_722 = add i64 %var_2_721, 46
; %var_2_136 = add i64 %var_2_135, 46
; Matched:\<badref\>:  store i64 %var_2_722, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_136, i64* %var_2_3, align 8
  br label %block_.L_4011b8

block_.L_40118f:                                  ; preds = %block_401161, %routine_ucomisd__xmm0___xmm1.exit415
; Matched:%var_2_398:  %var_2_398 = phi i64 [ %var_2_349, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit480 ], [ %var_2_90, %block_4012e2 ]
; %var_2_137 = phi i64 [ %var_2_126, %block_401161 ], [ %var_2_123, %routine_ucomisd__xmm0___xmm1.exit415 ]
%var_2_138 = load double, double* bitcast (%G_0x602348_type* @G_0x602348 to double*), align 8
%var_2_139 = load double, double* bitcast (%G_0x602640_type* @G_0x602640 to double*), align 8
; Matched:%var_2_726:  %var_2_726 = fsub double %var_2_724, %var_2_725
; %var_2_140 = fsub double %var_2_138, %var_2_139
; Matched:%var_2_727:  %var_2_727 = fdiv double %var_2_726, %var_2_725
; %var_2_141 = fdiv double %var_2_140, %var_2_139
; Matched:%var_2_728:  %var_2_728 = load double, double* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 560) to double*), align 16
; %var_2_142 = load double, double* bitcast (%G_0x602370_type* @G_0x602370 to double*), align 8
; Matched:%var_2_729:  %var_2_729 = fmul double %var_2_727, %var_2_728
; %var_2_143 = fmul double %var_2_141, %var_2_142
; Matched:\<badref\>:  store double %var_2_729, double* %var_2_48, align 1, !tbaa !1285
; store double %var_2_143, double* %var_2_49, align 1
store i64 0, i64* %var_2_33, align 1
; Matched:%var_2_730:  %var_2_730 = load i64, i64* %RBP, align 8
; %var_2_144 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_731:  %var_2_731 = add i64 %var_2_730, -24
; %var_2_145 = add i64 %var_2_144, -24
; Matched:%var_2_406:  %var_2_406 = add i64 %var_2_398, 41
; %var_2_146 = add i64 %var_2_137, 41
; Matched:\<badref\>:  store i64 %var_2_732, i64* %PC, align 8
; store i64 %var_2_146, i64* %var_2_3, align 8
; Matched:%var_2_733:  %var_2_733 = inttoptr i64 %var_2_731 to double*
; %var_2_147 = inttoptr i64 %var_2_145 to double*
; Matched:\<badref\>:  store double %var_2_729, double* %var_2_733, align 8
; store double %var_2_143, double* %var_2_147, align 8
; Matched:  %.pre242 = load i64, i64* %PC, align 8
; %.pre47 = load i64, i64* %var_2_3, align 8
  br label %block_.L_4011b8

block_.L_4011b8:                                  ; preds = %block_.L_40118f, %block_401167
; Matched:%var_2_444:  %var_2_444 = phi i64 [ %.pre242, %block_40118f ], [ %var_2_722, %block_401167 ]
; %var_2_148 = phi i64 [ %.pre47, %block_.L_40118f ], [ %var_2_136, %block_401167 ]
%var_2_149 = bitcast [32 x %union.VectorReg]* %var_2_30 to <4 x i32>*
store <4 x i32> zeroinitializer, <4 x i32>* %var_2_149, align 1
%var_2_150 = load double, double* bitcast (%G_0x602638_type* @G_0x602638 to double*), align 8
%var_2_151 = load double, double* bitcast (%G_0x602648_type* @G_0x602648 to double*), align 8
%var_2_152 = fdiv double %var_2_150, %var_2_151
store double %var_2_152, double* %var_2_43, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_44, align 1, !tbaa !1285
; store i64 0, i64* %var_2_45, align 1
; Matched:%var_2_449:  %var_2_449 = load i64, i64* %RBP, align 8
; %var_2_153 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_148:  %var_2_148 = add i64 %var_2_147, -24
; %var_2_154 = add i64 %var_2_153, -24
; Matched:%var_2_451:  %var_2_451 = add i64 %var_2_444, 26
; %var_2_155 = add i64 %var_2_148, 26
; Matched:\<badref\>:  store i64 %var_2_451, i64* %PC, align 8
; store i64 %var_2_155, i64* %var_2_3, align 8
; Matched:%var_2_452:  %var_2_452 = inttoptr i64 %var_2_450 to double*
; %var_2_156 = inttoptr i64 %var_2_154 to double*
; Matched:%var_2_453:  %var_2_453 = load double, double* %var_2_452, align 8
; %var_2_157 = load double, double* %var_2_156, align 8
; Matched:%var_2_454:  %var_2_454 = fmul double %var_2_448, %var_2_453
; %var_2_158 = fmul double %var_2_152, %var_2_157
; Matched:%var_2_455:  %var_2_455 = add i64 %var_2_449, -32
; %var_2_159 = add i64 %var_2_153, -32
; Matched:%var_2_456:  %var_2_456 = add i64 %var_2_444, 31
; %var_2_160 = add i64 %var_2_148, 31
; Matched:\<badref\>:  store i64 %var_2_456, i64* %PC, align 8
; store i64 %var_2_160, i64* %var_2_3, align 8
; Matched:%var_2_155:  %var_2_155 = inttoptr i64 %var_2_153 to double*
; %var_2_161 = inttoptr i64 %var_2_159 to double*
; Matched:\<badref\>:  store double %var_2_152, double* %var_2_155, align 8
; store double %var_2_158, double* %var_2_161, align 8
%var_2_162 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_459:  %var_2_459 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 560) to i64*), align 16
; %var_2_163 = load i64, i64* bitcast (%G_0x602370_type* @G_0x602370 to i64*), align 8
; Matched:%var_2_460:  %var_2_460 = load i64, i64* %RBP, align 8
; %var_2_164 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_461:  %var_2_461 = add i64 %var_2_460, -40
; %var_2_165 = add i64 %var_2_164, -40
%var_2_166 = add i64 %var_2_162, 14
store i64 %var_2_166, i64* %var_2_3, align 8
; Matched:%var_2_161:  %var_2_161 = inttoptr i64 %var_2_159 to i64*
; %var_2_167 = inttoptr i64 %var_2_165 to i64*
; Matched:\<badref\>:  store i64 %var_2_157, i64* %var_2_161, align 8
; store i64 %var_2_163, i64* %var_2_167, align 8
%var_2_168 = load i64, i64* %var_2_3, align 8
%var_2_169 = load i64, i64* bitcast (%G_0x602370_type* @G_0x602370 to i64*), align 8
store i64 %var_2_169, i64* %var_2_44, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_45, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_46, align 1
; Matched:%var_2_466:  %var_2_466 = load i64, i64* %RBP, align 8
; %var_2_170 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_467:  %var_2_467 = add i64 %var_2_466, -24
; %var_2_171 = add i64 %var_2_170, -24
%var_2_172 = add i64 %var_2_168, 14
store i64 %var_2_172, i64* %var_2_3, align 8
; Matched:  %.cast236 = bitcast i64 %var_2_465 to double
; %.cast42 = bitcast i64 %var_2_169 to double
; Matched:%var_2_469:  %var_2_469 = inttoptr i64 %var_2_467 to double*
; %var_2_173 = inttoptr i64 %var_2_171 to double*
; Matched:%var_2_470:  %var_2_470 = load double, double* %var_2_469, align 8
; %var_2_174 = load double, double* %var_2_173, align 8
; Matched:%var_2_471:  %var_2_471 = fadd double %.cast236, %var_2_470
; %var_2_175 = fadd double %.cast42, %var_2_174
; Matched:\<badref\>:  store double %var_2_471, double* %var_2_42, align 1, !tbaa !1285
; store double %var_2_175, double* %var_2_43, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_44, align 1, !tbaa !1285
; store i64 0, i64* %var_2_45, align 1
; Matched:%var_2_472:  %var_2_472 = add i64 %var_2_466, -32
; %var_2_176 = add i64 %var_2_170, -32
; Matched:%var_2_171:  %var_2_171 = add i64 %var_2_162, 19
; %var_2_177 = add i64 %var_2_168, 19
; Matched:\<badref\>:  store i64 %var_2_171, i64* %PC, align 8
; store i64 %var_2_177, i64* %var_2_3, align 8
; Matched:%var_2_474:  %var_2_474 = inttoptr i64 %var_2_472 to double*
; %var_2_178 = inttoptr i64 %var_2_176 to double*
; Matched:%var_2_475:  %var_2_475 = load double, double* %var_2_474, align 8
; %var_2_179 = load double, double* %var_2_178, align 8
; Matched:%var_2_476:  %var_2_476 = fsub double %var_2_471, %var_2_475
; %var_2_180 = fsub double %var_2_175, %var_2_179
; Matched:\<badref\>:  store double %var_2_476, double* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 560) to double*), align 16
; store double %var_2_180, double* bitcast (%G_0x602370_type* @G_0x602370 to double*), align 8
%var_2_181 = load i64, i64* bitcast (%G_0x602348_type* @G_0x602348 to i64*), align 8
store i64 %var_2_181, i64* %var_2_44, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_45, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_46, align 1
%var_2_182 = add i64 %var_2_168, 41
; Matched:\<badref\>:  store i64 %var_2_478, i64* %PC, align 8
; store i64 %var_2_182, i64* %var_2_3, align 8
%.cast18 = bitcast i64 %var_2_181 to double
%var_2_183 = load double, double* %var_2_49, align 1
%var_2_184 = fcmp uno double %.cast18, %var_2_183
br i1 %var_2_184, label %var_2_185, label %var_2_195

var_2_185:
%var_2_186 = fadd double %.cast18, %var_2_183
%var_2_187 = bitcast double %var_2_186 to i64
%var_2_188 = and i64 %var_2_187, 9221120237041090560
%var_2_189 = icmp eq i64 %var_2_188, 9218868437227405312
%var_2_190 = and i64 %var_2_187, 2251799813685247
%var_2_191 = icmp ne i64 %var_2_190, 0
%var_2_192 = and i1 %var_2_189, %var_2_191
br i1 %var_2_192, label %var_2_193, label %var_2_201

var_2_193:
%var_2_194 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %var_2_182, %struct.Memory* %var_2_121)
%.pre48 = load i64, i64* %var_2_3, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit353

var_2_195:
%var_2_196 = fcmp ogt double %.cast18, %var_2_183
br i1 %var_2_196, label %var_2_201, label %var_2_197

var_2_197:
%var_2_198 = fcmp olt double %.cast18, %var_2_183
br i1 %var_2_198, label %var_2_201, label %var_2_199

var_2_199:
%var_2_200 = fcmp oeq double %.cast18, %var_2_183
br i1 %var_2_200, label %var_2_201, label %var_2_205

var_2_201:
%var_2_202 = phi i8 [ 0, %var_2_195 ], [ 0, %var_2_197 ], [ 1, %var_2_199 ], [ 1, %var_2_185 ]
%var_2_203 = phi i8 [ 0, %var_2_195 ], [ 0, %var_2_197 ], [ 0, %var_2_199 ], [ 1, %var_2_185 ]
%var_2_204 = phi i8 [ 0, %var_2_195 ], [ 1, %var_2_197 ], [ 0, %var_2_199 ], [ 1, %var_2_185 ]
store i8 %var_2_202, i8* %var_2_15, align 1
store i8 %var_2_203, i8* %var_2_13, align 1
store i8 %var_2_204, i8* %var_2_12, align 1
br label %var_2_205

var_2_205:
; Matched:\<badref\>:  store i8 0, i8* %var_2_18, align 1, !tbaa !1287
; store i8 0, i8* %var_2_17, align 1
store i8 0, i8* %var_2_16, align 1
; Matched:\<badref\>:  store i8 0, i8* %var_2_15, align 1, !tbaa !1280
; store i8 0, i8* %var_2_14, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit353

routine_ucomisd__xmm0___xmm1.exit353:             ; preds = %var_2_205, %var_2_193
%var_2_206 = phi i64 [ %.pre48, %var_2_193 ], [ %var_2_182, %var_2_205 ]
%var_2_207 = phi %struct.Memory* [ %var_2_194, %var_2_193 ], [ %var_2_121, %var_2_205 ]
%var_2_208 = add i64 %var_2_206, 17
%var_2_209 = add i64 %var_2_206, 6
%var_2_210 = load i8, i8* %var_2_15, align 1
%var_2_211 = icmp eq i8 %var_2_210, 0
%var_2_212 = select i1 %var_2_211, i64 %var_2_208, i64 %var_2_209
; Matched:\<badref\>:  store i64 %var_2_508, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_212, i64* %var_2_3, align 8
br i1 %var_2_211, label %block_.L_40121f, label %block_401214

block_401214:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit353
%var_2_213 = load i8, i8* %var_2_13, align 1
%var_2_214 = icmp ne i8 %var_2_213, 0
%.v68 = select i1 %var_2_214, i64 11, i64 6
%var_2_215 = add i64 %var_2_212, %.v68
; Matched:\<badref\>:  store i64 %var_2_711, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_215, i64* %var_2_3, align 8
%cmpBr_401214 = icmp eq i8 %var_2_213, 1
  br i1 %cmpBr_401214, label %block_.L_40121f, label %block_40121a

block_40121a:                                     ; preds = %block_401214
%var_2_216 = add i64 %var_2_215, 28
; Matched:\<badref\>:  store i64 %var_2_708, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_216, i64* %var_2_3, align 8
  %.pre4961 = load double, double* bitcast (%G_0x602630_type* @G_0x602630 to double*), align 8
%.pre59 = bitcast i64* %var_2_33 to double*
  br label %block_.L_401236

block_.L_40121f:                                  ; preds = %block_401214, %routine_ucomisd__xmm0___xmm1.exit353
%var_2_217 = phi i64 [ %var_2_215, %block_401214 ], [ %var_2_208, %routine_ucomisd__xmm0___xmm1.exit353 ]
%var_2_218 = load i64, i64* bitcast (%G_0x602348_type* @G_0x602348 to i64*), align 8
store i64 %var_2_218, i64* %var_2_32, align 1
%var_2_219 = bitcast i64* %var_2_33 to double*
store double 0.000000e+00, double* %var_2_219, align 1
%var_2_220 = load i64, i64* %RBP.i, align 8
%var_2_221 = add i64 %var_2_220, -40
; Matched:%var_2_702:  %var_2_702 = add i64 %var_2_697, 14
; %var_2_222 = add i64 %var_2_217, 14
; Matched:\<badref\>:  store i64 %var_2_702, i64* %PC, align 8
; store i64 %var_2_222, i64* %var_2_3, align 8
%var_2_223 = bitcast i64 %var_2_218 to double
%var_2_224 = inttoptr i64 %var_2_221 to double*
%var_2_225 = load double, double* %var_2_224, align 8
%var_2_226 = fmul double %var_2_223, %var_2_225
; Matched:\<badref\>:  store double %var_2_706, double* %var_2_48, align 1, !tbaa !1285
; store double %var_2_226, double* %var_2_49, align 1
store i64 0, i64* %var_2_33, align 1
%var_2_227 = add i64 %var_2_217, 23
; Matched:\<badref\>:  store i64 %var_2_707, i64* %PC, align 8
; store i64 %var_2_227, i64* %var_2_3, align 8
store double %var_2_226, double* bitcast (%G_0x602630_type* @G_0x602630 to double*), align 8
  br label %block_.L_401236

block_.L_401236:                                  ; preds = %block_.L_40121f, %block_40121a
; Matched:  %.pre-phi256 = phi double* [ %.pre255, %block_40121a ], [ %var_2_699, %block_40121f ]
; %.pre-phi60 = phi double* [ %var_2_219, %block_.L_40121f ], [ %.pre59, %block_40121a ]
%var_2_228 = phi double [ %var_2_226, %block_.L_40121f ], [ %.pre4961, %block_40121a ]
%var_2_229 = phi i64 [ %var_2_227, %block_.L_40121f ], [ %var_2_216, %block_40121a ]
; Matched:\<badref\>:  store double 0.000000e+00, double* %.pre-phi256, align 1, !tbaa !1285
; store double 0.000000e+00, double* %.pre-phi60, align 1
%var_2_230 = load double, double* bitcast (%G_0x602370_type* @G_0x602370 to double*), align 8
%var_2_231 = fdiv double %var_2_228, %var_2_230
store double %var_2_231, double* %var_2_49, align 1
store i64 0, i64* %var_2_33, align 1
store double %var_2_231, double* bitcast (%G_0x602348_type* @G_0x602348 to double*), align 8
%var_2_232 = add i64 %var_2_229, 815
; Matched:\<badref\>:  store i64 %var_2_696, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_232, i64* %var_2_3, align 8
  br label %block_.L_401565

block_.L_4012ab:                                  ; preds = %entry
br i1 %var_2_51, label %var_2_233, label %var_2_243

var_2_233:
%var_2_234 = fadd double %var_2_48, %var_2_50
%var_2_235 = bitcast double %var_2_234 to i64
%var_2_236 = and i64 %var_2_235, 9221120237041090560
%var_2_237 = icmp eq i64 %var_2_236, 9218868437227405312
%var_2_238 = and i64 %var_2_235, 2251799813685247
%var_2_239 = icmp ne i64 %var_2_238, 0
%var_2_240 = and i1 %var_2_237, %var_2_239
br i1 %var_2_240, label %var_2_241, label %var_2_249

var_2_241:
%var_2_242 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %var_2_47, %struct.Memory* %2)
%.pre50 = load i64, i64* %var_2_3, align 8
%.pre51 = load i8, i8* %var_2_15, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit301

var_2_243:
%var_2_244 = fcmp ogt double %var_2_48, %var_2_50
br i1 %var_2_244, label %var_2_249, label %var_2_245

var_2_245:
%var_2_246 = fcmp olt double %var_2_48, %var_2_50
br i1 %var_2_246, label %var_2_249, label %var_2_247

var_2_247:
%var_2_248 = fcmp oeq double %var_2_48, %var_2_50
br i1 %var_2_248, label %var_2_249, label %var_2_253

var_2_249:
%var_2_250 = phi i8 [ 0, %var_2_243 ], [ 0, %var_2_245 ], [ 1, %var_2_247 ], [ 1, %var_2_233 ]
%var_2_251 = phi i8 [ 0, %var_2_243 ], [ 0, %var_2_245 ], [ 0, %var_2_247 ], [ 1, %var_2_233 ]
%var_2_252 = phi i8 [ 0, %var_2_243 ], [ 1, %var_2_245 ], [ 0, %var_2_247 ], [ 1, %var_2_233 ]
store i8 %var_2_250, i8* %var_2_15, align 1
store i8 %var_2_251, i8* %var_2_13, align 1
store i8 %var_2_252, i8* %var_2_12, align 1
br label %var_2_253

var_2_253:
%var_2_254 = phi i8 [ %var_2_250, %var_2_249 ], [ %var_2_26, %var_2_247 ]
; Matched:\<badref\>:  store i8 0, i8* %var_2_18, align 1, !tbaa !1287
; store i8 0, i8* %var_2_17, align 1
store i8 0, i8* %var_2_16, align 1
; Matched:\<badref\>:  store i8 0, i8* %var_2_15, align 1, !tbaa !1280
; store i8 0, i8* %var_2_14, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit301

routine_ucomisd__xmm0___xmm1.exit301:             ; preds = %var_2_253, %var_2_241
%var_2_255 = phi i8 [ %.pre51, %var_2_241 ], [ %var_2_254, %var_2_253 ]
%var_2_256 = phi i64 [ %.pre50, %var_2_241 ], [ %var_2_47, %var_2_253 ]
%var_2_257 = phi %struct.Memory* [ %var_2_242, %var_2_241 ], [ %2, %var_2_253 ]
%var_2_258 = icmp eq i8 %var_2_255, 0
%.v64 = select i1 %var_2_258, i64 17, i64 6
%var_2_259 = add i64 %var_2_256, %.v64
; Matched:\<badref\>:  store i64 %var_2_77, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_259, i64* %var_2_3, align 8
br i1 %var_2_258, label %block_.L_4012cc, label %block_4012c1

block_4012c1:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit301
%var_2_260 = load i8, i8* %var_2_13, align 1
%var_2_261 = icmp ne i8 %var_2_260, 0
%.v69 = select i1 %var_2_261, i64 11, i64 6
%var_2_262 = add i64 %var_2_259, %.v69
; Matched:\<badref\>:  store i64 %var_2_396, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_262, i64* %var_2_3, align 8
%cmpBr_4012c1 = icmp eq i8 %var_2_260, 1
  br i1 %cmpBr_4012c1, label %block_.L_4012cc, label %block_4012c7

block_4012c7:                                     ; preds = %block_4012c1
; Matched:%var_2_509:  %var_2_509 = load double, double* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1272) to double*), align 8
; %var_2_263 = load double, double* bitcast (%G_0x602638_type* @G_0x602638 to double*), align 8
%var_2_264 = bitcast i64* %var_2_33 to double*
; Matched:%var_2_511:  %var_2_511 = load double, double* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1288) to double*), align 8
; %var_2_265 = load double, double* bitcast (%G_0x602648_type* @G_0x602648 to double*), align 8
; Matched:%var_2_512:  %var_2_512 = fdiv double %var_2_509, %var_2_511
; %var_2_266 = fdiv double %var_2_263, %var_2_265
%var_2_267 = load i64, i64* bitcast (%G_0x602370_type* @G_0x602370 to i64*), align 8
store i64 %var_2_267, i64* %var_2_44, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_45, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_46, align 1
; Matched:%var_2_514:  %var_2_514 = load i64, i64* %RBP, align 8
; %var_2_268 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_515:  %var_2_515 = add i64 %var_2_514, -96
; %var_2_269 = add i64 %var_2_268, -96
; Matched:%var_2_516:  %var_2_516 = add i64 %var_2_396, 441
; %var_2_270 = add i64 %var_2_262, 441
; Matched:\<badref\>:  store i64 %var_2_516, i64* %PC, align 8
; store i64 %var_2_270, i64* %var_2_3, align 8
; Matched:%var_2_517:  %var_2_517 = inttoptr i64 %var_2_515 to double*
; %var_2_271 = inttoptr i64 %var_2_269 to double*
; Matched:\<badref\>:  store double %var_2_512, double* %var_2_517, align 8
; store double %var_2_266, double* %var_2_271, align 8
%var_2_272 = load i64, i64* %var_2_3, align 8
%var_2_273 = bitcast %union.VectorReg* %var_2_41 to <2 x i32>*
%var_2_274 = load <2 x i32>, <2 x i32>* %var_2_273, align 1
%var_2_275 = bitcast i64* %var_2_45 to <2 x i32>*
%var_2_276 = load <2 x i32>, <2 x i32>* %var_2_275, align 1
%var_2_277 = extractelement <2 x i32> %var_2_274, i32 0
; Matched:\<badref\>:  store i32 %var_2_523, i32* %var_2_34, align 1, !tbaa !1288
; store i32 %var_2_277, i32* %var_2_34, align 1
%var_2_278 = extractelement <2 x i32> %var_2_274, i32 1
; Matched:\<badref\>:  store i32 %var_2_414, i32* %var_2_36, align 1, !tbaa !1288
; store i32 %var_2_278, i32* %var_2_36, align 1
%var_2_279 = extractelement <2 x i32> %var_2_276, i32 0
; Matched:\<badref\>:  store i32 %var_2_415, i32* %var_2_37, align 1, !tbaa !1288
; store i32 %var_2_279, i32* %var_2_37, align 1
%var_2_280 = extractelement <2 x i32> %var_2_276, i32 1
; Matched:\<badref\>:  store i32 %var_2_526, i32* %var_2_39, align 1, !tbaa !1288
; store i32 %var_2_280, i32* %var_2_39, align 1
%var_2_281 = add i64 %var_2_272, -3680
; Matched:%var_2_528:  %var_2_528 = add i64 %var_2_518, 8
; %var_2_282 = add i64 %var_2_272, 8
%var_2_283 = load i64, i64* %var_2_6, align 8
%var_2_284 = add i64 %var_2_283, -8
; Matched:%var_2_421:  %var_2_421 = inttoptr i64 %var_2_420 to i64*
; %var_2_285 = inttoptr i64 %var_2_284 to i64*
; Matched:\<badref\>:  store i64 %var_2_418, i64* %var_2_421, align 8
; store i64 %var_2_282, i64* %var_2_285, align 8
; Matched:\<badref\>:  store i64 %var_2_530, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_284, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_527, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_281, i64* %var_2_3, align 8
%call2_401483 = tail call %struct.Memory* @ext_sin(%struct.State* nonnull %0, i64 %var_2_281, %struct.Memory* %var_2_257)
%var_2_286 = load i64, i64* %RBP.i, align 8
%var_2_287 = add i64 %var_2_286, -96
%var_2_288 = load i64, i64* %var_2_3, align 8
%var_2_289 = add i64 %var_2_288, 5
store i64 %var_2_289, i64* %var_2_3, align 8
%var_2_290 = inttoptr i64 %var_2_287 to double*
%var_2_291 = load double, double* %var_2_290, align 8
%var_2_292 = load double, double* %var_2_49, align 1
%var_2_293 = fmul double %var_2_291, %var_2_292
store double %var_2_293, double* %var_2_43, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_44, align 1, !tbaa !1285
; store i64 0, i64* %var_2_45, align 1
%.cast25 = bitcast double %var_2_293 to <2 x i32>
%var_2_294 = extractelement <2 x i32> %.cast25, i32 0
store i32 %var_2_294, i32* %var_2_34, align 1
%var_2_295 = extractelement <2 x i32> %.cast25, i32 1
store i32 %var_2_295, i32* %var_2_36, align 1
store i32 0, i32* %var_2_37, align 1
store i32 0, i32* %var_2_39, align 1
%var_2_296 = add i64 %var_2_288, -3672
%var_2_297 = add i64 %var_2_288, 17
%var_2_298 = load i64, i64* %var_2_6, align 8
%var_2_299 = add i64 %var_2_298, -8
%var_2_300 = inttoptr i64 %var_2_299 to i64*
store i64 %var_2_297, i64* %var_2_300, align 8
; Matched:\<badref\>:  store i64 %var_2_649, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_299, i64* %var_2_6, align 8
store i64 %var_2_296, i64* %var_2_3, align 8
%var_2_301 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @asin to i64), %struct.Memory* %call2_401483)
  %RAX.i96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
%var_2_302 = load i64, i64* %var_2_3, align 8
  store i64 -9223372036854775808, i64* %RAX.i96, align 8
; Matched:  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
; %RCX.i93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
; Matched:%var_2_549:  %var_2_549 = load i64, i64* %var_2_32, align 1
; %var_2_303 = load i64, i64* %var_2_32, align 1
; Matched:%var_2_550:  %var_2_550 = xor i64 %var_2_549, -9223372036854775808
; %var_2_304 = xor i64 %var_2_303, -9223372036854775808
; Matched:\<badref\>:  store i64 %var_2_550, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_304, i64* %RCX.i93, align 8
store i8 0, i8* %var_2_12, align 1
; Matched:%var_2_551:  %var_2_551 = trunc i64 %var_2_549 to i32
; %var_2_305 = trunc i64 %var_2_303 to i32
; Matched:%var_2_552:  %var_2_552 = and i32 %var_2_551, 255
; %var_2_306 = and i32 %var_2_305, 255
; Matched:%var_2_553:  %var_2_553 = tail call i32 @llvm.ctpop.i32(i32 %var_2_552) #14
; %var_2_307 = tail call i32 @llvm.ctpop.i32(i32 %var_2_306)
; Matched:%var_2_554:  %var_2_554 = trunc i32 %var_2_553 to i8
; %var_2_308 = trunc i32 %var_2_307 to i8
; Matched:%var_2_555:  %var_2_555 = and i8 %var_2_554, 1
; %var_2_309 = and i8 %var_2_308, 1
; Matched:%var_2_556:  %var_2_556 = xor i8 %var_2_555, 1
; %var_2_310 = xor i8 %var_2_309, 1
; Matched:\<badref\>:  store i8 %var_2_556, i8* %var_2_14, align 1, !tbaa !1279
; store i8 %var_2_310, i8* %var_2_13, align 1
; Matched:%var_2_557:  %var_2_557 = icmp eq i64 %var_2_550, 0
; %var_2_311 = icmp eq i64 %var_2_304, 0
; Matched:%var_2_558:  %var_2_558 = zext i1 %var_2_557 to i8
; %var_2_312 = zext i1 %var_2_311 to i8
; Matched:\<badref\>:  store i8 %var_2_558, i8* %var_2_16, align 1, !tbaa !1281
; store i8 %var_2_312, i8* %var_2_15, align 1
; Matched:%var_2_559:  %var_2_559 = lshr i64 %var_2_550, 63
; %var_2_313 = lshr i64 %var_2_304, 63
; Matched:%var_2_560:  %var_2_560 = trunc i64 %var_2_559 to i8
; %var_2_314 = trunc i64 %var_2_313 to i8
; Matched:\<badref\>:  store i8 %var_2_560, i8* %var_2_17, align 1, !tbaa !1282
; store i8 %var_2_314, i8* %var_2_16, align 1
; Matched:\<badref\>:  store i8 0, i8* %var_2_18, align 1, !tbaa !1287
; store i8 0, i8* %var_2_17, align 1
; Matched:\<badref\>:  store i8 0, i8* %var_2_15, align 1, !tbaa !1280
; store i8 0, i8* %var_2_14, align 1
; Matched:%var_2_561:  %var_2_561 = load i64, i64* %RBP, align 8
; %var_2_315 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_562:  %var_2_562 = add i64 %var_2_561, -16
; %var_2_316 = add i64 %var_2_315, -16
; Matched:%var_2_563:  %var_2_563 = add i64 %var_2_548, 28
; %var_2_317 = add i64 %var_2_302, 28
; Matched:\<badref\>:  store i64 %var_2_563, i64* %PC, align 8
; store i64 %var_2_317, i64* %var_2_3, align 8
; Matched:%var_2_564:  %var_2_564 = inttoptr i64 %var_2_562 to i64*
; %var_2_318 = inttoptr i64 %var_2_316 to i64*
; Matched:\<badref\>:  store i64 %var_2_550, i64* %var_2_564, align 8
; store i64 %var_2_304, i64* %var_2_318, align 8
%var_2_319 = load i64, i64* %var_2_3, align 8
%var_2_320 = load i64, i64* bitcast (%G_0x602348_type* @G_0x602348 to i64*), align 8
store i64 %var_2_320, i64* %var_2_32, align 1
store double 0.000000e+00, double* %var_2_264, align 1
%var_2_321 = load i64, i64* bitcast (%G_0x602648_type* @G_0x602648 to i64*), align 8
store i64 %var_2_321, i64* %var_2_44, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_45, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_46, align 1
; Matched:%var_2_5:  %var_2_5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
; %var_2_322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
; Matched:%var_2_568:  %var_2_568 = load i64, i64* %RBP, align 8
; %var_2_323 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_569:  %var_2_569 = add i64 %var_2_568, -16
; %var_2_324 = add i64 %var_2_323, -16
%var_2_325 = add i64 %var_2_319, 23
store i64 %var_2_325, i64* %var_2_3, align 8
; Matched:%var_2_571:  %var_2_571 = inttoptr i64 %var_2_569 to i64*
; %var_2_326 = inttoptr i64 %var_2_324 to i64*
; Matched:%var_2_572:  %var_2_572 = load i64, i64* %var_2_571, align 8
; %var_2_327 = load i64, i64* %var_2_326, align 8
; Matched:%var_2_573:  %var_2_573 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_5, i64 0, i32 0, i32 0, i32 0, i64 0
; %var_2_328 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_322, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:%var_2_198:  %var_2_198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
; %var_2_329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_575:  %var_2_575 = bitcast i64* %var_2_574 to double*
; %var_2_330 = bitcast i64* %var_2_329 to double*
; Matched:%var_2_576:  %var_2_576 = load i64, i64* %RAX, align 8
; %var_2_331 = load i64, i64* %RAX.i96, align 8
; Matched:%var_2_577:  %var_2_577 = xor i64 %var_2_576, %var_2_572
; %var_2_332 = xor i64 %var_2_331, %var_2_327
; Matched:\<badref\>:  store i64 %var_2_577, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_332, i64* %RCX.i93, align 8
store i8 0, i8* %var_2_12, align 1
; Matched:%var_2_578:  %var_2_578 = trunc i64 %var_2_577 to i32
; %var_2_333 = trunc i64 %var_2_332 to i32
; Matched:%var_2_579:  %var_2_579 = and i32 %var_2_578, 255
; %var_2_334 = and i32 %var_2_333, 255
; Matched:%var_2_580:  %var_2_580 = tail call i32 @llvm.ctpop.i32(i32 %var_2_579) #14
; %var_2_335 = tail call i32 @llvm.ctpop.i32(i32 %var_2_334)
; Matched:%var_2_581:  %var_2_581 = trunc i32 %var_2_580 to i8
; %var_2_336 = trunc i32 %var_2_335 to i8
; Matched:%var_2_582:  %var_2_582 = and i8 %var_2_581, 1
; %var_2_337 = and i8 %var_2_336, 1
; Matched:%var_2_583:  %var_2_583 = xor i8 %var_2_582, 1
; %var_2_338 = xor i8 %var_2_337, 1
; Matched:\<badref\>:  store i8 %var_2_583, i8* %var_2_14, align 1, !tbaa !1279
; store i8 %var_2_338, i8* %var_2_13, align 1
; Matched:%var_2_584:  %var_2_584 = icmp eq i64 %var_2_577, 0
; %var_2_339 = icmp eq i64 %var_2_332, 0
; Matched:%var_2_585:  %var_2_585 = zext i1 %var_2_584 to i8
; %var_2_340 = zext i1 %var_2_339 to i8
; Matched:\<badref\>:  store i8 %var_2_585, i8* %var_2_16, align 1, !tbaa !1281
; store i8 %var_2_340, i8* %var_2_15, align 1
; Matched:%var_2_586:  %var_2_586 = lshr i64 %var_2_577, 63
; %var_2_341 = lshr i64 %var_2_332, 63
; Matched:%var_2_587:  %var_2_587 = trunc i64 %var_2_586 to i8
; %var_2_342 = trunc i64 %var_2_341 to i8
; Matched:\<badref\>:  store i8 %var_2_587, i8* %var_2_17, align 1, !tbaa !1282
; store i8 %var_2_342, i8* %var_2_16, align 1
; Matched:\<badref\>:  store i8 0, i8* %var_2_18, align 1, !tbaa !1287
; store i8 0, i8* %var_2_17, align 1
; Matched:\<badref\>:  store i8 0, i8* %var_2_15, align 1, !tbaa !1280
; store i8 0, i8* %var_2_14, align 1
; Matched:\<badref\>:  store i64 %var_2_577, i64* %var_2_573, align 1, !tbaa !1261
; store i64 %var_2_332, i64* %var_2_328, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_198, align 1, !tbaa !1285
; store i64 0, i64* %var_2_329, align 1
; Matched:%var_2_588:  %var_2_588 = add i64 %var_2_568, -104
; %var_2_343 = add i64 %var_2_323, -104
; Matched:%var_2_478:  %var_2_478 = add i64 %var_2_464, 41
; %var_2_344 = add i64 %var_2_319, 41
; Matched:\<badref\>:  store i64 %var_2_589, i64* %PC, align 8
; store i64 %var_2_344, i64* %var_2_3, align 8
; Matched:%var_2_590:  %var_2_590 = inttoptr i64 %var_2_588 to i64*
; %var_2_345 = inttoptr i64 %var_2_343 to i64*
; Matched:\<badref\>:  store i64 %var_2_566, i64* %var_2_590, align 8
; store i64 %var_2_320, i64* %var_2_345, align 8
; Matched:%var_2_591:  %var_2_591 = load i64, i64* %PC, align 8
; %var_2_346 = load i64, i64* %var_2_3, align 8
%var_2_347 = bitcast %union.VectorReg* %var_2_322 to <2 x i32>*
%var_2_348 = load <2 x i32>, <2 x i32>* %var_2_347, align 1
%var_2_349 = bitcast i64* %var_2_329 to <2 x i32>*
%var_2_350 = load <2 x i32>, <2 x i32>* %var_2_349, align 1
%var_2_351 = extractelement <2 x i32> %var_2_348, i32 0
; Matched:\<badref\>:  store i32 %var_2_596, i32* %var_2_34, align 1, !tbaa !1288
; store i32 %var_2_351, i32* %var_2_34, align 1
%var_2_352 = extractelement <2 x i32> %var_2_348, i32 1
; Matched:\<badref\>:  store i32 %var_2_637, i32* %var_2_36, align 1, !tbaa !1288
; store i32 %var_2_352, i32* %var_2_36, align 1
%var_2_353 = extractelement <2 x i32> %var_2_350, i32 0
; Matched:\<badref\>:  store i32 %var_2_598, i32* %var_2_37, align 1, !tbaa !1288
; store i32 %var_2_353, i32* %var_2_37, align 1
%var_2_354 = extractelement <2 x i32> %var_2_350, i32 1
; Matched:\<badref\>:  store i32 %var_2_639, i32* %var_2_39, align 1, !tbaa !1288
; store i32 %var_2_354, i32* %var_2_39, align 1
; Matched:%var_2_600:  %var_2_600 = load i64, i64* %RBP, align 8
; %var_2_355 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_601:  %var_2_601 = add i64 %var_2_600, -112
; %var_2_356 = add i64 %var_2_355, -112
; Matched:%var_2_602:  %var_2_602 = load i64, i64* %RAX, align 8
; %var_2_357 = load i64, i64* %RAX.i96, align 8
; Matched:%var_2_603:  %var_2_603 = add i64 %var_2_591, 7
; %var_2_358 = add i64 %var_2_346, 7
; Matched:\<badref\>:  store i64 %var_2_603, i64* %PC, align 8
; store i64 %var_2_358, i64* %var_2_3, align 8
; Matched:%var_2_604:  %var_2_604 = inttoptr i64 %var_2_601 to i64*
; %var_2_359 = inttoptr i64 %var_2_356 to i64*
; Matched:\<badref\>:  store i64 %var_2_602, i64* %var_2_604, align 8
; store i64 %var_2_357, i64* %var_2_359, align 8
; Matched:%var_2_605:  %var_2_605 = load i64, i64* %RBP, align 8
; %var_2_360 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_606:  %var_2_606 = add i64 %var_2_605, -120
; %var_2_361 = add i64 %var_2_360, -120
%var_2_362 = load i64, i64* %var_2_3, align 8
%var_2_363 = add i64 %var_2_362, 5
store i64 %var_2_363, i64* %var_2_3, align 8
; Matched:%var_2_609:  %var_2_609 = load i64, i64* %var_2_43, align 1
; %var_2_364 = load i64, i64* %var_2_44, align 1
; Matched:%var_2_610:  %var_2_610 = inttoptr i64 %var_2_606 to i64*
; %var_2_365 = inttoptr i64 %var_2_361 to i64*
; Matched:\<badref\>:  store i64 %var_2_609, i64* %var_2_610, align 8
; store i64 %var_2_364, i64* %var_2_365, align 8
%var_2_366 = load i64, i64* %var_2_3, align 8
%var_2_367 = add i64 %var_2_366, -3834
; Matched:%var_2_613:  %var_2_613 = add i64 %var_2_611, 5
; %var_2_368 = add i64 %var_2_366, 5
%var_2_369 = load i64, i64* %var_2_6, align 8
%var_2_370 = add i64 %var_2_369, -8
; Matched:%var_2_650:  %var_2_650 = inttoptr i64 %var_2_649 to i64*
; %var_2_371 = inttoptr i64 %var_2_370 to i64*
; Matched:\<badref\>:  store i64 %var_2_218, i64* %var_2_221, align 8
; store i64 %var_2_368, i64* %var_2_371, align 8
; Matched:\<badref\>:  store i64 %var_2_615, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_370, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_612, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_367, i64* %var_2_3, align 8
%call2_4014ea = tail call %struct.Memory* @ext_cos(%struct.State* nonnull %0, i64 %var_2_367, %struct.Memory* %var_2_301)
%var_2_372 = load i64, i64* %RBP.i, align 8
%var_2_373 = add i64 %var_2_372, -120
%var_2_374 = load i64, i64* %var_2_3, align 8
%var_2_375 = add i64 %var_2_374, 5
store i64 %var_2_375, i64* %var_2_3, align 8
%var_2_376 = inttoptr i64 %var_2_373 to double*
%var_2_377 = load double, double* %var_2_376, align 8
%var_2_378 = load double, double* %var_2_49, align 1
%var_2_379 = fmul double %var_2_377, %var_2_378
store double %var_2_379, double* %var_2_43, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_44, align 1, !tbaa !1285
; store i64 0, i64* %var_2_45, align 1
; Matched:%var_2_628:  %var_2_628 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1272) to i64*), align 8
; %var_2_380 = load i64, i64* bitcast (%G_0x602638_type* @G_0x602638 to i64*), align 8
; Matched:%var_2_629:  %var_2_629 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 560) to i64*), align 16
; %var_2_381 = load i64, i64* bitcast (%G_0x602370_type* @G_0x602370 to i64*), align 8
; Matched:\<badref\>:  store i64 %var_2_629, i64* %var_2_573, align 1, !tbaa !1285
; store i64 %var_2_381, i64* %var_2_328, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_575, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_330, align 1
; Matched:%var_2_630:  %var_2_630 = add i64 %var_2_622, -128
; %var_2_382 = add i64 %var_2_372, -128
%var_2_383 = add i64 %var_2_374, 32
store i64 %var_2_383, i64* %var_2_3, align 8
; Matched:%var_2_632:  %var_2_632 = inttoptr i64 %var_2_630 to i64*
; %var_2_384 = inttoptr i64 %var_2_382 to i64*
; Matched:\<badref\>:  store i64 %var_2_628, i64* %var_2_632, align 8
; store i64 %var_2_380, i64* %var_2_384, align 8
; Matched:%var_2_633:  %var_2_633 = load i64, i64* %PC, align 8
; %var_2_385 = load i64, i64* %var_2_3, align 8
%var_2_386 = load <2 x i32>, <2 x i32>* %var_2_347, align 1
%var_2_387 = load <2 x i32>, <2 x i32>* %var_2_349, align 1
%var_2_388 = extractelement <2 x i32> %var_2_386, i32 0
; Matched:\<badref\>:  store i32 %var_2_636, i32* %var_2_34, align 1, !tbaa !1288
; store i32 %var_2_388, i32* %var_2_34, align 1
%var_2_389 = extractelement <2 x i32> %var_2_386, i32 1
; Matched:\<badref\>:  store i32 %var_2_597, i32* %var_2_36, align 1, !tbaa !1288
; store i32 %var_2_389, i32* %var_2_36, align 1
%var_2_390 = extractelement <2 x i32> %var_2_387, i32 0
; Matched:\<badref\>:  store i32 %var_2_638, i32* %var_2_37, align 1, !tbaa !1288
; store i32 %var_2_390, i32* %var_2_37, align 1
%var_2_391 = extractelement <2 x i32> %var_2_387, i32 1
; Matched:\<badref\>:  store i32 %var_2_599, i32* %var_2_39, align 1, !tbaa !1288
; store i32 %var_2_391, i32* %var_2_39, align 1
; Matched:%var_2_640:  %var_2_640 = load i64, i64* %RBP, align 8
; %var_2_392 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_641:  %var_2_641 = add i64 %var_2_640, -136
; %var_2_393 = add i64 %var_2_392, -136
; Matched:%var_2_642:  %var_2_642 = add i64 %var_2_633, 11
; %var_2_394 = add i64 %var_2_385, 11
; Matched:\<badref\>:  store i64 %var_2_642, i64* %PC, align 8
; store i64 %var_2_394, i64* %var_2_3, align 8
; Matched:%var_2_643:  %var_2_643 = load i64, i64* %var_2_43, align 1
; %var_2_395 = load i64, i64* %var_2_44, align 1
; Matched:%var_2_644:  %var_2_644 = inttoptr i64 %var_2_641 to i64*
; %var_2_396 = inttoptr i64 %var_2_393 to i64*
; Matched:\<badref\>:  store i64 %var_2_643, i64* %var_2_644, align 8
; store i64 %var_2_395, i64* %var_2_396, align 8
%var_2_397 = load i64, i64* %var_2_3, align 8
%var_2_398 = add i64 %var_2_397, -3882
; Matched:%var_2_294:  %var_2_294 = add i64 %var_2_292, 5
; %var_2_399 = add i64 %var_2_397, 5
%var_2_400 = load i64, i64* %var_2_6, align 8
%var_2_401 = add i64 %var_2_400, -8
; Matched:%var_2_221:  %var_2_221 = inttoptr i64 %var_2_220 to i64*
; %var_2_402 = inttoptr i64 %var_2_401 to i64*
; Matched:\<badref\>:  store i64 %var_2_294, i64* %var_2_297, align 8
; store i64 %var_2_399, i64* %var_2_402, align 8
; Matched:\<badref\>:  store i64 %var_2_420, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_401, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_646, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_398, i64* %var_2_3, align 8
%call2_40151a = tail call %struct.Memory* @ext_cos(%struct.State* nonnull %0, i64 %var_2_398, %struct.Memory* %call2_4014ea)
%var_2_403 = load i64, i64* %RBP.i, align 8
%var_2_404 = add i64 %var_2_403, -128
%var_2_405 = load i64, i64* %var_2_3, align 8
%var_2_406 = add i64 %var_2_405, 5
store i64 %var_2_406, i64* %var_2_3, align 8
%var_2_407 = inttoptr i64 %var_2_404 to double*
%var_2_408 = load double, double* %var_2_407, align 8
%var_2_409 = load double, double* %var_2_49, align 1
%var_2_410 = fmul double %var_2_408, %var_2_409
store double %var_2_410, double* %var_2_43, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_44, align 1, !tbaa !1285
; store i64 0, i64* %var_2_45, align 1
%var_2_411 = add i64 %var_2_403, -136
%var_2_412 = add i64 %var_2_405, 17
store i64 %var_2_412, i64* %var_2_3, align 8
%var_2_413 = inttoptr i64 %var_2_411 to double*
%var_2_414 = load double, double* %var_2_413, align 8
%var_2_415 = fdiv double %var_2_414, %var_2_410
store double %var_2_415, double* %var_2_49, align 1
store i64 0, i64* %var_2_33, align 1
%var_2_416 = add i64 %var_2_403, -104
%var_2_417 = add i64 %var_2_405, 26
store i64 %var_2_417, i64* %var_2_3, align 8
%var_2_418 = inttoptr i64 %var_2_416 to double*
%var_2_419 = load double, double* %var_2_418, align 8
%var_2_420 = fmul double %var_2_419, %var_2_415
store double %var_2_420, double* %var_2_43, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_44, align 1, !tbaa !1285
; store i64 0, i64* %var_2_45, align 1
store double %var_2_420, double* bitcast (%G_0x602348_type* @G_0x602348 to double*), align 8
%var_2_421 = add i64 %var_2_403, -16
%var_2_422 = add i64 %var_2_405, 44
store i64 %var_2_422, i64* %var_2_3, align 8
%var_2_423 = inttoptr i64 %var_2_421 to i64*
%var_2_424 = load i64, i64* %var_2_423, align 8
; Matched:\<badref\>:  store i64 %var_2_675, i64* %var_2_32, align 1, !tbaa !1285
; store i64 %var_2_424, i64* %var_2_32, align 1
store double 0.000000e+00, double* %var_2_264, align 1
; Matched:\<badref\>:  store i64 %var_2_675, i64* %RAX, align 1, !tbaa !1261
; store i64 %var_2_424, i64* %RAX.i96, align 1
%var_2_425 = add i64 %var_2_403, -112
%var_2_426 = add i64 %var_2_405, 53
store i64 %var_2_426, i64* %var_2_3, align 8
%var_2_427 = inttoptr i64 %var_2_425 to i64*
%var_2_428 = load i64, i64* %var_2_427, align 8
; Matched:\<badref\>:  store i64 %var_2_679, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_428, i64* %RCX.i93, align 8
%var_2_429 = xor i64 %var_2_424, %var_2_428
; Matched:\<badref\>:  store i64 %var_2_680, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_429, i64* %RAX.i96, align 8
store i8 0, i8* %var_2_12, align 1
; Matched:%var_2_681:  %var_2_681 = trunc i64 %var_2_680 to i32
; %var_2_430 = trunc i64 %var_2_429 to i32
; Matched:%var_2_682:  %var_2_682 = and i32 %var_2_681, 255
; %var_2_431 = and i32 %var_2_430, 255
; Matched:%var_2_683:  %var_2_683 = tail call i32 @llvm.ctpop.i32(i32 %var_2_682) #14
; %var_2_432 = tail call i32 @llvm.ctpop.i32(i32 %var_2_431)
; Matched:%var_2_684:  %var_2_684 = trunc i32 %var_2_683 to i8
; %var_2_433 = trunc i32 %var_2_432 to i8
; Matched:%var_2_685:  %var_2_685 = and i8 %var_2_684, 1
; %var_2_434 = and i8 %var_2_433, 1
; Matched:%var_2_686:  %var_2_686 = xor i8 %var_2_685, 1
; %var_2_435 = xor i8 %var_2_434, 1
; Matched:\<badref\>:  store i8 %var_2_686, i8* %var_2_14, align 1, !tbaa !1279
; store i8 %var_2_435, i8* %var_2_13, align 1
; Matched:%var_2_687:  %var_2_687 = icmp eq i64 %var_2_680, 0
; %var_2_436 = icmp eq i64 %var_2_429, 0
; Matched:%var_2_688:  %var_2_688 = zext i1 %var_2_687 to i8
; %var_2_437 = zext i1 %var_2_436 to i8
; Matched:\<badref\>:  store i8 %var_2_688, i8* %var_2_16, align 1, !tbaa !1281
; store i8 %var_2_437, i8* %var_2_15, align 1
; Matched:%var_2_689:  %var_2_689 = lshr i64 %var_2_680, 63
; %var_2_438 = lshr i64 %var_2_429, 63
; Matched:%var_2_690:  %var_2_690 = trunc i64 %var_2_689 to i8
; %var_2_439 = trunc i64 %var_2_438 to i8
; Matched:\<badref\>:  store i8 %var_2_690, i8* %var_2_17, align 1, !tbaa !1282
; store i8 %var_2_439, i8* %var_2_16, align 1
; Matched:\<badref\>:  store i8 0, i8* %var_2_18, align 1, !tbaa !1287
; store i8 0, i8* %var_2_17, align 1
; Matched:\<badref\>:  store i8 0, i8* %var_2_15, align 1, !tbaa !1280
; store i8 0, i8* %var_2_14, align 1
; Matched:\<badref\>:  store i64 %var_2_680, i64* %var_2_32, align 1, !tbaa !1261
; store i64 %var_2_429, i64* %var_2_32, align 1
store i64 0, i64* %var_2_33, align 1
%var_2_440 = add i64 %var_2_405, 70
store i64 %var_2_440, i64* %var_2_3, align 8
store i64 %var_2_429, i64* bitcast (%G_0x602370_type* @G_0x602370 to i64*), align 8
  br label %block_.L_401565

block_.L_4012cc:                                  ; preds = %block_4012c1, %routine_ucomisd__xmm0___xmm1.exit301
%var_2_441 = phi i64 [ %var_2_262, %block_4012c1 ], [ %var_2_259, %routine_ucomisd__xmm0___xmm1.exit301 ]
%var_2_442 = bitcast [32 x %union.VectorReg]* %var_2_30 to <4 x i32>*
store <4 x i32> zeroinitializer, <4 x i32>* %var_2_442, align 1
%var_2_443 = load i64, i64* bitcast (%G_0x602348_type* @G_0x602348 to i64*), align 8
store i64 %var_2_443, i64* %var_2_44, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_45, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_46, align 1
%var_2_444 = add i64 %var_2_441, 16
; Matched:\<badref\>:  store i64 %var_2_320, i64* %PC, align 8
; store i64 %var_2_444, i64* %var_2_3, align 8
%.cast31 = bitcast i64 %var_2_443 to double
%var_2_445 = load double, double* %var_2_49, align 1
%var_2_446 = fcmp uno double %.cast31, %var_2_445
br i1 %var_2_446, label %var_2_447, label %var_2_457

var_2_447:
%var_2_448 = fadd double %.cast31, %var_2_445
%var_2_449 = bitcast double %var_2_448 to i64
%var_2_450 = and i64 %var_2_449, 9221120237041090560
%var_2_451 = icmp eq i64 %var_2_450, 9218868437227405312
%var_2_452 = and i64 %var_2_449, 2251799813685247
%var_2_453 = icmp ne i64 %var_2_452, 0
%var_2_454 = and i1 %var_2_451, %var_2_453
br i1 %var_2_454, label %var_2_455, label %var_2_463

var_2_455:
%var_2_456 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %var_2_444, %struct.Memory* %var_2_257)
; Matched:  %.pre244 = load i64, i64* %PC, align 8
; %.pre52 = load i64, i64* %var_2_3, align 8
%.pre53 = load i8, i8* %var_2_15, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

var_2_457:
%var_2_458 = fcmp ogt double %.cast31, %var_2_445
br i1 %var_2_458, label %var_2_463, label %var_2_459

var_2_459:
%var_2_460 = fcmp olt double %.cast31, %var_2_445
br i1 %var_2_460, label %var_2_463, label %var_2_461

var_2_461:
%var_2_462 = fcmp oeq double %.cast31, %var_2_445
br i1 %var_2_462, label %var_2_463, label %var_2_467

var_2_463:
%var_2_464 = phi i8 [ 0, %var_2_457 ], [ 0, %var_2_459 ], [ 1, %var_2_461 ], [ 1, %var_2_447 ]
%var_2_465 = phi i8 [ 0, %var_2_457 ], [ 0, %var_2_459 ], [ 0, %var_2_461 ], [ 1, %var_2_447 ]
%var_2_466 = phi i8 [ 0, %var_2_457 ], [ 1, %var_2_459 ], [ 0, %var_2_461 ], [ 1, %var_2_447 ]
store i8 %var_2_464, i8* %var_2_15, align 1
store i8 %var_2_465, i8* %var_2_13, align 1
store i8 %var_2_466, i8* %var_2_12, align 1
br label %var_2_467

var_2_467:
%var_2_468 = phi i8 [ %var_2_464, %var_2_463 ], [ %var_2_255, %var_2_461 ]
; Matched:\<badref\>:  store i8 0, i8* %var_2_18, align 1, !tbaa !1287
; store i8 0, i8* %var_2_17, align 1
store i8 0, i8* %var_2_16, align 1
; Matched:\<badref\>:  store i8 0, i8* %var_2_15, align 1, !tbaa !1280
; store i8 0, i8* %var_2_14, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %var_2_467, %var_2_455
%var_2_469 = phi i8 [ %.pre53, %var_2_455 ], [ %var_2_468, %var_2_467 ]
; Matched:%var_2_379:  %var_2_379 = phi i64 [ %.pre240, %var_2_364 ], [ %var_2_353, %var_2_376 ]
; %var_2_470 = phi i64 [ %.pre52, %var_2_455 ], [ %var_2_444, %var_2_467 ]
%var_2_471 = phi %struct.Memory* [ %var_2_456, %var_2_455 ], [ %var_2_257, %var_2_467 ]
%var_2_472 = icmp eq i8 %var_2_469, 0
; Matched:  %.v258 = select i1 %var_2_381, i64 52, i64 6
; %.v65 = select i1 %var_2_472, i64 52, i64 6
; Matched:%var_2_349:  %var_2_349 = add i64 %var_2_346, %.v259
; %var_2_473 = add i64 %var_2_470, %.v65
; Matched:\<badref\>:  store i64 %var_2_382, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_473, i64* %var_2_3, align 8
br i1 %var_2_472, label %block_.L_401310, label %block_4012e2

block_4012e2:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
%var_2_474 = load i8, i8* %var_2_13, align 1
; Matched:%var_2_441:  %var_2_441 = icmp ne i8 %var_2_440, 0
; %var_2_475 = icmp ne i8 %var_2_474, 0
; Matched:  %.v261 = select i1 %var_2_441, i64 46, i64 6
; %.v70 = select i1 %var_2_475, i64 46, i64 6
; Matched:%var_2_442:  %var_2_442 = add i64 %var_2_382, %.v261
; %var_2_476 = add i64 %var_2_473, %.v70
; Matched:\<badref\>:  store i64 %var_2_442, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_476, i64* %var_2_3, align 8
%cmpBr_4012e2 = icmp eq i8 %var_2_474, 1
  br i1 %cmpBr_4012e2, label %block_.L_401310, label %block_4012e8

block_4012e8:                                     ; preds = %block_4012e2
store i32 0, i32* %var_2_34, align 1
store i32 0, i32* %var_2_36, align 1
%var_2_477 = load i64, i64* %var_2_32, align 1
store i64 %var_2_477, i64* bitcast (%G_0x602370_type* @G_0x602370 to i64*), align 8
%var_2_478 = load double, double* bitcast (%G_0x602630_type* @G_0x602630 to double*), align 8
%var_2_479 = load double, double* bitcast (%G_0x602640_type* @G_0x602640 to double*), align 8
%var_2_480 = fdiv double %var_2_478, %var_2_479
store double %var_2_480, double* %var_2_49, align 1
store i64 0, i64* %var_2_33, align 1
; Matched:%var_2_82:  %var_2_82 = load i64, i64* %RBP, align 8
; %var_2_481 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_83:  %var_2_83 = add i64 %var_2_82, -24
; %var_2_482 = add i64 %var_2_481, -24
; Matched:%var_2_719:  %var_2_719 = add i64 %var_2_442, 35
; %var_2_483 = add i64 %var_2_476, 35
; Matched:\<badref\>:  store i64 %var_2_719, i64* %PC, align 8
; store i64 %var_2_483, i64* %var_2_3, align 8
; Matched:%var_2_85:  %var_2_85 = inttoptr i64 %var_2_83 to double*
; %var_2_484 = inttoptr i64 %var_2_482 to double*
; Matched:\<badref\>:  store double %var_2_716, double* %var_2_720, align 8
; store double %var_2_480, double* %var_2_484, align 8
; Matched:%var_2_86:  %var_2_86 = load i64, i64* %PC, align 8
; %var_2_485 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_87:  %var_2_87 = add i64 %var_2_86, 68
; %var_2_486 = add i64 %var_2_485, 68
; Matched:\<badref\>:  store i64 %var_2_87, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_486, i64* %var_2_3, align 8
%.pre55 = bitcast %union.VectorReg* %var_2_41 to <2 x i32>*
%.pre57 = bitcast i64* %var_2_45 to <2 x i32>*
  br label %block_.L_40134f

block_.L_401310:                                  ; preds = %block_4012e2, %routine_ucomisd__xmm0___xmm1.exit
; Matched:%var_2_723:  %var_2_723 = phi i64 [ %var_2_442, %block_401161 ], [ %var_2_382, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit478 ]
; %var_2_487 = phi i64 [ %var_2_476, %block_4012e2 ], [ %var_2_473, %routine_ucomisd__xmm0___xmm1.exit ]
; Matched:%var_2_400:  %var_2_400 = load double, double* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1280) to double*), align 16
; %var_2_488 = load double, double* bitcast (%G_0x602348_type* @G_0x602348 to double*), align 8
; Matched:%var_2_399:  %var_2_399 = load double, double* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 520) to double*), align 8
; %var_2_489 = load double, double* bitcast (%G_0x602640_type* @G_0x602640 to double*), align 8
; Matched:%var_2_401:  %var_2_401 = fsub double %var_2_399, %var_2_400
; %var_2_490 = fsub double %var_2_488, %var_2_489
; Matched:%var_2_402:  %var_2_402 = fdiv double %var_2_401, %var_2_400
; %var_2_491 = fdiv double %var_2_490, %var_2_489
%var_2_492 = load i64, i64* bitcast (%G_0x602370_type* @G_0x602370 to i64*), align 8
store i64 %var_2_492, i64* %var_2_44, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_45, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_46, align 1
; Matched:%var_2_404:  %var_2_404 = load i64, i64* %RBP, align 8
; %var_2_493 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_405:  %var_2_405 = add i64 %var_2_404, -56
; %var_2_494 = add i64 %var_2_493, -56
; Matched:%var_2_732:  %var_2_732 = add i64 %var_2_723, 41
; %var_2_495 = add i64 %var_2_487, 41
; Matched:\<badref\>:  store i64 %var_2_406, i64* %PC, align 8
; store i64 %var_2_495, i64* %var_2_3, align 8
; Matched:%var_2_407:  %var_2_407 = inttoptr i64 %var_2_405 to double*
; %var_2_496 = inttoptr i64 %var_2_494 to double*
; Matched:\<badref\>:  store double %var_2_402, double* %var_2_407, align 8
; store double %var_2_491, double* %var_2_496, align 8
%var_2_497 = load i64, i64* %var_2_3, align 8
%var_2_498 = bitcast %union.VectorReg* %var_2_41 to <2 x i32>*
%var_2_499 = load <2 x i32>, <2 x i32>* %var_2_498, align 1
%var_2_500 = bitcast i64* %var_2_45 to <2 x i32>*
%var_2_501 = load <2 x i32>, <2 x i32>* %var_2_500, align 1
%var_2_502 = extractelement <2 x i32> %var_2_499, i32 0
; Matched:\<badref\>:  store i32 %var_2_413, i32* %var_2_34, align 1, !tbaa !1288
; store i32 %var_2_502, i32* %var_2_34, align 1
%var_2_503 = extractelement <2 x i32> %var_2_499, i32 1
; Matched:\<badref\>:  store i32 %var_2_524, i32* %var_2_36, align 1, !tbaa !1288
; store i32 %var_2_503, i32* %var_2_36, align 1
%var_2_504 = extractelement <2 x i32> %var_2_501, i32 0
; Matched:\<badref\>:  store i32 %var_2_525, i32* %var_2_37, align 1, !tbaa !1288
; store i32 %var_2_504, i32* %var_2_37, align 1
%var_2_505 = extractelement <2 x i32> %var_2_501, i32 1
; Matched:\<badref\>:  store i32 %var_2_416, i32* %var_2_39, align 1, !tbaa !1288
; store i32 %var_2_505, i32* %var_2_39, align 1
%var_2_506 = add i64 %var_2_497, -3353
; Matched:%var_2_273:  %var_2_273 = add i64 %var_2_265, 8
; %var_2_507 = add i64 %var_2_497, 8
%var_2_508 = load i64, i64* %var_2_6, align 8
%var_2_509 = add i64 %var_2_508, -8
; Matched:%var_2_188:  %var_2_188 = inttoptr i64 %var_2_187 to i64*
; %var_2_510 = inttoptr i64 %var_2_509 to i64*
; Matched:\<badref\>:  store i64 %var_2_185, i64* %var_2_188, align 8
; store i64 %var_2_507, i64* %var_2_510, align 8
; Matched:\<badref\>:  store i64 %var_2_275, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_509, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_417, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_506, i64* %var_2_3, align 8
%call2_40133c = tail call %struct.Memory* @ext_sin(%struct.State* nonnull %0, i64 %var_2_506, %struct.Memory* %var_2_471)
%var_2_511 = load i64, i64* %RBP.i, align 8
%var_2_512 = add i64 %var_2_511, -56
%var_2_513 = load i64, i64* %var_2_3, align 8
%var_2_514 = add i64 %var_2_513, 5
store i64 %var_2_514, i64* %var_2_3, align 8
%var_2_515 = inttoptr i64 %var_2_512 to double*
%var_2_516 = load double, double* %var_2_515, align 8
%var_2_517 = load double, double* %var_2_49, align 1
%var_2_518 = fmul double %var_2_516, %var_2_517
store double %var_2_518, double* %var_2_43, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_44, align 1, !tbaa !1285
; store i64 0, i64* %var_2_45, align 1
%var_2_519 = add i64 %var_2_511, -24
%var_2_520 = add i64 %var_2_513, 14
store i64 %var_2_520, i64* %var_2_3, align 8
%var_2_521 = inttoptr i64 %var_2_519 to double*
store double %var_2_518, double* %var_2_521, align 8
; Matched:  %.pre246 = load i64, i64* %PC, align 8
; %.pre54 = load i64, i64* %var_2_3, align 8
  br label %block_.L_40134f

block_.L_40134f:                                  ; preds = %block_.L_401310, %block_4012e8
%.pre-phi58 = phi <2 x i32>* [ %var_2_500, %block_.L_401310 ], [ %.pre57, %block_4012e8 ]
%.pre-phi56 = phi <2 x i32>* [ %var_2_498, %block_.L_401310 ], [ %.pre55, %block_4012e8 ]
; Matched:%var_2_125:  %var_2_125 = phi i64 [ %.pre246, %block_401310 ], [ %var_2_87, %block_4012e8 ]
; %var_2_522 = phi i64 [ %.pre54, %block_.L_401310 ], [ %var_2_486, %block_4012e8 ]
%MEMORY.7 = phi %struct.Memory* [ %call2_40133c, %block_.L_401310 ], [ %var_2_471, %block_4012e8 ]
%.pre-phi = bitcast i64* %var_2_33 to double*
; Matched:%var_2_126:  %var_2_126 = load i64, i64* %RBP, align 8
; %var_2_523 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_127:  %var_2_127 = add i64 %var_2_126, -24
; %var_2_524 = add i64 %var_2_523, -24
; Matched:%var_2_128:  %var_2_128 = add i64 %var_2_125, 5
; %var_2_525 = add i64 %var_2_522, 5
; Matched:\<badref\>:  store i64 %var_2_128, i64* %PC, align 8
; store i64 %var_2_525, i64* %var_2_3, align 8
; Matched:%var_2_129:  %var_2_129 = inttoptr i64 %var_2_127 to i64*
; %var_2_526 = inttoptr i64 %var_2_524 to i64*
; Matched:%var_2_130:  %var_2_130 = load i64, i64* %var_2_129, align 8
; %var_2_527 = load i64, i64* %var_2_526, align 8
; Matched:\<badref\>:  store i64 %var_2_130, i64* %var_2_32, align 1, !tbaa !1285
; store i64 %var_2_527, i64* %var_2_32, align 1
  store double 0.000000e+00, double* %.pre-phi, align 1
; Matched:%var_2_131:  %var_2_131 = add i64 %var_2_125, -3359
; %var_2_528 = add i64 %var_2_522, -3359
; Matched:%var_2_132:  %var_2_132 = add i64 %var_2_125, 10
; %var_2_529 = add i64 %var_2_522, 10
%var_2_530 = load i64, i64* %var_2_6, align 8
%var_2_531 = add i64 %var_2_530, -8
; Matched:%var_2_135:  %var_2_135 = inttoptr i64 %var_2_134 to i64*
; %var_2_532 = inttoptr i64 %var_2_531 to i64*
; Matched:\<badref\>:  store i64 %var_2_132, i64* %var_2_135, align 8
; store i64 %var_2_529, i64* %var_2_532, align 8
; Matched:\<badref\>:  store i64 %var_2_220, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_531, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_131, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_528, i64* %var_2_3, align 8
%var_2_533 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @asin to i64), %struct.Memory* %MEMORY.7)
; Matched:%var_2_137:  %var_2_137 = load i64, i64* %RBP, align 8
; %var_2_534 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_138:  %var_2_138 = add i64 %var_2_137, -8
; %var_2_535 = add i64 %var_2_534, -8
%var_2_536 = load i64, i64* %var_2_3, align 8
%var_2_537 = add i64 %var_2_536, 5
store i64 %var_2_537, i64* %var_2_3, align 8
; Matched:%var_2_141:  %var_2_141 = load i64, i64* %var_2_32, align 1
; %var_2_538 = load i64, i64* %var_2_32, align 1
; Matched:%var_2_142:  %var_2_142 = inttoptr i64 %var_2_138 to i64*
; %var_2_539 = inttoptr i64 %var_2_535 to i64*
; Matched:\<badref\>:  store i64 %var_2_141, i64* %var_2_142, align 8
; store i64 %var_2_538, i64* %var_2_539, align 8
%var_2_540 = load i64, i64* %var_2_3, align 8
%var_2_541 = load double, double* bitcast (%G_0x602638_type* @G_0x602638 to double*), align 8
  store double 0.000000e+00, double* %.pre-phi, align 1
%var_2_542 = load double, double* bitcast (%G_0x602648_type* @G_0x602648 to double*), align 8
%var_2_543 = fdiv double %var_2_541, %var_2_542
store double %var_2_543, double* %var_2_49, align 1
store i64 0, i64* %var_2_33, align 1
; Matched:%var_2_147:  %var_2_147 = load i64, i64* %RBP, align 8
; %var_2_544 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_450:  %var_2_450 = add i64 %var_2_449, -24
; %var_2_545 = add i64 %var_2_544, -24
%var_2_546 = add i64 %var_2_540, 23
store i64 %var_2_546, i64* %var_2_3, align 8
; Matched:%var_2_150:  %var_2_150 = inttoptr i64 %var_2_148 to double*
; %var_2_547 = inttoptr i64 %var_2_545 to double*
; Matched:%var_2_151:  %var_2_151 = load double, double* %var_2_150, align 8
; %var_2_548 = load double, double* %var_2_547, align 8
; Matched:%var_2_152:  %var_2_152 = fmul double %var_2_146, %var_2_151
; %var_2_549 = fmul double %var_2_543, %var_2_548
store i64 0, i64* %var_2_33, align 1
; Matched:%var_2_153:  %var_2_153 = add i64 %var_2_147, -32
; %var_2_550 = add i64 %var_2_544, -32
; Matched:%var_2_154:  %var_2_154 = add i64 %var_2_143, 28
; %var_2_551 = add i64 %var_2_540, 28
; Matched:\<badref\>:  store i64 %var_2_154, i64* %PC, align 8
; store i64 %var_2_551, i64* %var_2_3, align 8
; Matched:%var_2_457:  %var_2_457 = inttoptr i64 %var_2_455 to double*
; %var_2_552 = inttoptr i64 %var_2_550 to double*
; Matched:\<badref\>:  store double %var_2_454, double* %var_2_457, align 8
; store double %var_2_549, double* %var_2_552, align 8
%var_2_553 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_157:  %var_2_157 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 560) to i64*), align 16
; %var_2_554 = load i64, i64* bitcast (%G_0x602370_type* @G_0x602370 to i64*), align 8
; Matched:%var_2_158:  %var_2_158 = load i64, i64* %RBP, align 8
; %var_2_555 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_159:  %var_2_159 = add i64 %var_2_158, -40
; %var_2_556 = add i64 %var_2_555, -40
%var_2_557 = add i64 %var_2_553, 14
store i64 %var_2_557, i64* %var_2_3, align 8
; Matched:%var_2_463:  %var_2_463 = inttoptr i64 %var_2_461 to i64*
; %var_2_558 = inttoptr i64 %var_2_556 to i64*
; Matched:\<badref\>:  store i64 %var_2_459, i64* %var_2_463, align 8
; store i64 %var_2_554, i64* %var_2_558, align 8
%var_2_559 = load i64, i64* %var_2_3, align 8
%var_2_560 = load i64, i64* bitcast (%G_0x602370_type* @G_0x602370 to i64*), align 8
store i64 %var_2_560, i64* %var_2_32, align 1
  store double 0.000000e+00, double* %.pre-phi, align 1
; Matched:%var_2_164:  %var_2_164 = load i64, i64* %RBP, align 8
; %var_2_561 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_165:  %var_2_165 = add i64 %var_2_164, -8
; %var_2_562 = add i64 %var_2_561, -8
%var_2_563 = add i64 %var_2_559, 14
store i64 %var_2_563, i64* %var_2_3, align 8
; Matched:  %.cast237 = bitcast i64 %var_2_163 to double
; %.cast43 = bitcast i64 %var_2_560 to double
; Matched:%var_2_167:  %var_2_167 = inttoptr i64 %var_2_165 to double*
; %var_2_564 = inttoptr i64 %var_2_562 to double*
; Matched:%var_2_168:  %var_2_168 = load double, double* %var_2_167, align 8
; %var_2_565 = load double, double* %var_2_564, align 8
; Matched:%var_2_169:  %var_2_169 = fadd double %.cast237, %var_2_168
; %var_2_566 = fadd double %.cast43, %var_2_565
; Matched:\<badref\>:  store double %var_2_169, double* %var_2_48, align 1, !tbaa !1285
; store double %var_2_566, double* %var_2_49, align 1
store i64 0, i64* %var_2_33, align 1
; Matched:%var_2_170:  %var_2_170 = add i64 %var_2_164, -32
; %var_2_567 = add i64 %var_2_561, -32
; Matched:%var_2_473:  %var_2_473 = add i64 %var_2_464, 19
; %var_2_568 = add i64 %var_2_559, 19
; Matched:\<badref\>:  store i64 %var_2_240, i64* %PC, align 8
; store i64 %var_2_568, i64* %var_2_3, align 8
; Matched:%var_2_172:  %var_2_172 = inttoptr i64 %var_2_170 to i64*
; %var_2_569 = inttoptr i64 %var_2_567 to i64*
; Matched:%var_2_173:  %var_2_173 = load i64, i64* %var_2_172, align 8
; %var_2_570 = load i64, i64* %var_2_569, align 8
; Matched:\<badref\>:  store i64 %var_2_173, i64* %var_2_43, align 1, !tbaa !1285
; store i64 %var_2_570, i64* %var_2_44, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_45, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_46, align 1
; Matched:%var_2_174:  %var_2_174 = add i64 %var_2_164, -64
; %var_2_571 = add i64 %var_2_561, -64
; Matched:%var_2_175:  %var_2_175 = add i64 %var_2_162, 24
; %var_2_572 = add i64 %var_2_559, 24
; Matched:\<badref\>:  store i64 %var_2_175, i64* %PC, align 8
; store i64 %var_2_572, i64* %var_2_3, align 8
; Matched:%var_2_176:  %var_2_176 = inttoptr i64 %var_2_174 to double*
; %var_2_573 = inttoptr i64 %var_2_571 to double*
; Matched:\<badref\>:  store double %var_2_169, double* %var_2_176, align 8
; store double %var_2_566, double* %var_2_573, align 8
; Matched:%var_2_177:  %var_2_177 = load i64, i64* %PC, align 8
; %var_2_574 = load i64, i64* %var_2_3, align 8
%var_2_575 = load <2 x i32>, <2 x i32>* %.pre-phi56, align 1
%var_2_576 = load <2 x i32>, <2 x i32>* %.pre-phi58, align 1
%var_2_577 = extractelement <2 x i32> %var_2_575, i32 0
; Matched:\<badref\>:  store i32 %var_2_180, i32* %var_2_34, align 1, !tbaa !1288
; store i32 %var_2_577, i32* %var_2_34, align 1
%var_2_578 = extractelement <2 x i32> %var_2_575, i32 1
; Matched:\<badref\>:  store i32 %var_2_181, i32* %var_2_36, align 1, !tbaa !1288
; store i32 %var_2_578, i32* %var_2_36, align 1
%var_2_579 = extractelement <2 x i32> %var_2_576, i32 0
; Matched:\<badref\>:  store i32 %var_2_182, i32* %var_2_37, align 1, !tbaa !1288
; store i32 %var_2_579, i32* %var_2_37, align 1
%var_2_580 = extractelement <2 x i32> %var_2_576, i32 1
; Matched:\<badref\>:  store i32 %var_2_183, i32* %var_2_39, align 1, !tbaa !1288
; store i32 %var_2_580, i32* %var_2_39, align 1
; Matched:%var_2_184:  %var_2_184 = add i64 %var_2_177, -3440
; %var_2_581 = add i64 %var_2_574, -3440
; Matched:%var_2_185:  %var_2_185 = add i64 %var_2_177, 8
; %var_2_582 = add i64 %var_2_574, 8
%var_2_583 = load i64, i64* %var_2_6, align 8
%var_2_584 = add i64 %var_2_583, -8
; Matched:%var_2_531:  %var_2_531 = inttoptr i64 %var_2_530 to i64*
; %var_2_585 = inttoptr i64 %var_2_584 to i64*
; Matched:\<badref\>:  store i64 %var_2_528, i64* %var_2_531, align 8
; store i64 %var_2_582, i64* %var_2_585, align 8
; Matched:\<badref\>:  store i64 %var_2_187, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_584, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_184, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_581, i64* %var_2_3, align 8
%var_2_586 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @asin to i64), %struct.Memory* %var_2_533)
%var_2_587 = load i64, i64* %var_2_3, align 8
%var_2_588 = add i64 %var_2_587, ptrtoint (%G_0x2b0__rip__type* @G_0x2b0__rip_ to i64)
%var_2_589 = add i64 %var_2_587, 8
store i64 %var_2_589, i64* %var_2_3, align 8
%var_2_590 = inttoptr i64 %var_2_588 to i64*
%var_2_591 = load i64, i64* %var_2_590, align 8
store i64 %var_2_591, i64* %var_2_44, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_45, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_46, align 1
; Matched:%var_2_5:  %var_2_5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
; %var_2_592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
%var_2_593 = load i64, i64* %RBP.i, align 8
%var_2_594 = add i64 %var_2_593, -64
; Matched:%var_2_194:  %var_2_194 = add i64 %var_2_190, 13
; %var_2_595 = add i64 %var_2_587, 13
; Matched:\<badref\>:  store i64 %var_2_194, i64* %PC, align 8
; store i64 %var_2_595, i64* %var_2_3, align 8
%var_2_596 = inttoptr i64 %var_2_594 to double*
%var_2_597 = load double, double* %var_2_596, align 8
; Matched:%var_2_197:  %var_2_197 = bitcast %union.VectorReg* %var_2_5 to double*
; %var_2_598 = bitcast %union.VectorReg* %var_2_592 to double*
; Matched:%var_2_574:  %var_2_574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
; %var_2_599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
%var_2_600 = load double, double* %var_2_49, align 1
%var_2_601 = fsub double %var_2_597, %var_2_600
; Matched:\<badref\>:  store double %var_2_200, double* %var_2_197, align 1, !tbaa !1285
; store double %var_2_601, double* %var_2_598, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_574, align 1, !tbaa !1261
; store i64 0, i64* %var_2_599, align 1
store double %var_2_601, double* bitcast (%G_0x602370_type* @G_0x602370 to double*), align 8
%var_2_602 = add i64 %var_2_593, -40
; Matched:%var_2_202:  %var_2_202 = add i64 %var_2_190, 31
; %var_2_603 = add i64 %var_2_587, 31
; Matched:\<badref\>:  store i64 %var_2_202, i64* %PC, align 8
; store i64 %var_2_603, i64* %var_2_3, align 8
%var_2_604 = inttoptr i64 %var_2_602 to i64*
%var_2_605 = load i64, i64* %var_2_604, align 8
; Matched:\<badref\>:  store i64 %var_2_204, i64* %var_2_32, align 1, !tbaa !1285
; store i64 %var_2_605, i64* %var_2_32, align 1
  store double 0.000000e+00, double* %.pre-phi, align 1
%var_2_606 = add i64 %var_2_593, -8
; Matched:%var_2_206:  %var_2_206 = add i64 %var_2_190, 36
; %var_2_607 = add i64 %var_2_587, 36
; Matched:\<badref\>:  store i64 %var_2_206, i64* %PC, align 8
; store i64 %var_2_607, i64* %var_2_3, align 8
%var_2_608 = bitcast i64 %var_2_605 to double
%var_2_609 = inttoptr i64 %var_2_606 to double*
%var_2_610 = load double, double* %var_2_609, align 8
%var_2_611 = fadd double %var_2_608, %var_2_610
%var_2_612 = bitcast i64 %var_2_591 to double
%var_2_613 = fdiv double %var_2_611, %var_2_612
store double %var_2_613, double* %var_2_49, align 1
store i64 0, i64* %var_2_33, align 1
%var_2_614 = add i64 %var_2_593, -72
; Matched:%var_2_214:  %var_2_214 = add i64 %var_2_190, 45
; %var_2_615 = add i64 %var_2_587, 45
; Matched:\<badref\>:  store i64 %var_2_214, i64* %PC, align 8
; store i64 %var_2_615, i64* %var_2_3, align 8
%var_2_616 = inttoptr i64 %var_2_614 to i64*
store i64 %var_2_591, i64* %var_2_616, align 8
%var_2_617 = load i64, i64* %var_2_3, align 8
%var_2_618 = add i64 %var_2_617, -3509
; Matched:%var_2_647:  %var_2_647 = add i64 %var_2_645, 5
; %var_2_619 = add i64 %var_2_617, 5
%var_2_620 = load i64, i64* %var_2_6, align 8
%var_2_621 = add i64 %var_2_620, -8
; Matched:%var_2_297:  %var_2_297 = inttoptr i64 %var_2_296 to i64*
; %var_2_622 = inttoptr i64 %var_2_621 to i64*
; Matched:\<badref\>:  store i64 %var_2_647, i64* %var_2_650, align 8
; store i64 %var_2_619, i64* %var_2_622, align 8
; Matched:\<badref\>:  store i64 %var_2_530, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_621, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_217, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_618, i64* %var_2_3, align 8
%call2_4013d5 = tail call %struct.Memory* @ext_sin(%struct.State* nonnull %0, i64 %var_2_618, %struct.Memory* %var_2_586)
%var_2_623 = load i64, i64* %RBP.i, align 8
%var_2_624 = add i64 %var_2_623, -48
%var_2_625 = load i64, i64* %var_2_3, align 8
%var_2_626 = add i64 %var_2_625, 5
store i64 %var_2_626, i64* %var_2_3, align 8
%var_2_627 = load i64, i64* %var_2_32, align 1
%var_2_628 = inttoptr i64 %var_2_624 to i64*
store i64 %var_2_627, i64* %var_2_628, align 8
; Matched:%var_2_231:  %var_2_231 = load i64, i64* %RBP, align 8
; %var_2_629 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_232:  %var_2_232 = add i64 %var_2_231, -72
; %var_2_630 = add i64 %var_2_629, -72
%var_2_631 = load i64, i64* %var_2_3, align 8
%var_2_632 = add i64 %var_2_631, 5
store i64 %var_2_632, i64* %var_2_3, align 8
; Matched:%var_2_235:  %var_2_235 = inttoptr i64 %var_2_232 to double*
; %var_2_633 = inttoptr i64 %var_2_630 to double*
; Matched:%var_2_236:  %var_2_236 = load double, double* %var_2_235, align 8
; %var_2_634 = load double, double* %var_2_633, align 8
  store double 0.000000e+00, double* %.pre-phi, align 1
%var_2_635 = load double, double* bitcast (%G_0x602640_type* @G_0x602640 to double*), align 8
; Matched:%var_2_238:  %var_2_238 = fmul double %var_2_236, %var_2_237
; %var_2_636 = fmul double %var_2_634, %var_2_635
; Matched:\<badref\>:  store double %var_2_238, double* %var_2_48, align 1, !tbaa !1285
; store double %var_2_636, double* %var_2_49, align 1
store i64 0, i64* %var_2_33, align 1
; Matched:%var_2_239:  %var_2_239 = add i64 %var_2_231, -48
; %var_2_637 = add i64 %var_2_629, -48
; Matched:%var_2_240:  %var_2_240 = add i64 %var_2_233, 19
; %var_2_638 = add i64 %var_2_631, 19
; Matched:\<badref\>:  store i64 %var_2_257, i64* %PC, align 8
; store i64 %var_2_638, i64* %var_2_3, align 8
; Matched:%var_2_241:  %var_2_241 = inttoptr i64 %var_2_239 to double*
; %var_2_639 = inttoptr i64 %var_2_637 to double*
; Matched:%var_2_242:  %var_2_242 = load double, double* %var_2_241, align 8
; %var_2_640 = load double, double* %var_2_639, align 8
; Matched:%var_2_243:  %var_2_243 = fmul double %var_2_238, %var_2_242
; %var_2_641 = fmul double %var_2_636, %var_2_640
; Matched:\<badref\>:  store double %var_2_243, double* %var_2_48, align 1, !tbaa !1285
; store double %var_2_641, double* %var_2_49, align 1
store i64 0, i64* %var_2_33, align 1
; Matched:%var_2_244:  %var_2_244 = add i64 %var_2_233, 24
; %var_2_642 = add i64 %var_2_631, 24
; Matched:\<badref\>:  store i64 %var_2_244, i64* %PC, align 8
; store i64 %var_2_642, i64* %var_2_3, align 8
; Matched:%var_2_245:  %var_2_245 = load double, double* %var_2_241, align 8
; %var_2_643 = load double, double* %var_2_639, align 8
; Matched:%var_2_246:  %var_2_246 = fmul double %var_2_243, %var_2_245
; %var_2_644 = fmul double %var_2_641, %var_2_643
store i64 0, i64* %var_2_33, align 1
; Matched:%var_2_247:  %var_2_247 = add i64 %var_2_233, 29
; %var_2_645 = add i64 %var_2_631, 29
; Matched:\<badref\>:  store i64 %var_2_247, i64* %PC, align 8
; store i64 %var_2_645, i64* %var_2_3, align 8
; Matched:%var_2_248:  %var_2_248 = inttoptr i64 %var_2_239 to double*
; %var_2_646 = inttoptr i64 %var_2_637 to double*
; Matched:\<badref\>:  store double %var_2_246, double* %var_2_248, align 8
; store double %var_2_644, double* %var_2_646, align 8
%var_2_647 = load i64, i64* %var_2_3, align 8
%var_2_648 = load i64, i64* bitcast (%G_0x602640_type* @G_0x602640 to i64*), align 8
store i64 %var_2_648, i64* %var_2_32, align 1
  store double 0.000000e+00, double* %.pre-phi, align 1
; Matched:%var_2_251:  %var_2_251 = load i64, i64* %RBP, align 8
; %var_2_649 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_252:  %var_2_252 = add i64 %var_2_251, -40
; %var_2_650 = add i64 %var_2_649, -40
%var_2_651 = add i64 %var_2_647, 14
store i64 %var_2_651, i64* %var_2_3, align 8
; Matched:%var_2_254:  %var_2_254 = inttoptr i64 %var_2_252 to i64*
; %var_2_652 = inttoptr i64 %var_2_650 to i64*
; Matched:%var_2_255:  %var_2_255 = load i64, i64* %var_2_254, align 8
; %var_2_653 = load i64, i64* %var_2_652, align 8
; Matched:\<badref\>:  store i64 %var_2_255, i64* %var_2_43, align 1, !tbaa !1285
; store i64 %var_2_653, i64* %var_2_44, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_45, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_46, align 1
; Matched:%var_2_256:  %var_2_256 = add i64 %var_2_251, -8
; %var_2_654 = add i64 %var_2_649, -8
; Matched:%var_2_257:  %var_2_257 = add i64 %var_2_249, 19
; %var_2_655 = add i64 %var_2_647, 19
; Matched:\<badref\>:  store i64 %var_2_473, i64* %PC, align 8
; store i64 %var_2_655, i64* %var_2_3, align 8
; Matched:%var_2_258:  %var_2_258 = bitcast i64 %var_2_255 to double
; %var_2_656 = bitcast i64 %var_2_653 to double
; Matched:%var_2_259:  %var_2_259 = inttoptr i64 %var_2_256 to double*
; %var_2_657 = inttoptr i64 %var_2_654 to double*
; Matched:%var_2_260:  %var_2_260 = load double, double* %var_2_259, align 8
; %var_2_658 = load double, double* %var_2_657, align 8
; Matched:%var_2_261:  %var_2_261 = fadd double %var_2_258, %var_2_260
; %var_2_659 = fadd double %var_2_656, %var_2_658
; Matched:\<badref\>:  store double %var_2_261, double* %var_2_42, align 1, !tbaa !1285
; store double %var_2_659, double* %var_2_43, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_44, align 1, !tbaa !1285
; store i64 0, i64* %var_2_45, align 1
; Matched:%var_2_262:  %var_2_262 = add i64 %var_2_251, -80
; %var_2_660 = add i64 %var_2_649, -80
; Matched:%var_2_263:  %var_2_263 = add i64 %var_2_249, 24
; %var_2_661 = add i64 %var_2_647, 24
; Matched:\<badref\>:  store i64 %var_2_263, i64* %PC, align 8
; store i64 %var_2_661, i64* %var_2_3, align 8
; Matched:%var_2_264:  %var_2_264 = inttoptr i64 %var_2_262 to i64*
; %var_2_662 = inttoptr i64 %var_2_660 to i64*
; Matched:\<badref\>:  store i64 %var_2_250, i64* %var_2_264, align 8
; store i64 %var_2_648, i64* %var_2_662, align 8
%var_2_663 = load i64, i64* %var_2_3, align 8
%var_2_664 = load <2 x i32>, <2 x i32>* %.pre-phi56, align 1
%var_2_665 = load <2 x i32>, <2 x i32>* %.pre-phi58, align 1
%var_2_666 = extractelement <2 x i32> %var_2_664, i32 0
; Matched:\<badref\>:  store i32 %var_2_268, i32* %var_2_34, align 1, !tbaa !1288
; store i32 %var_2_666, i32* %var_2_34, align 1
%var_2_667 = extractelement <2 x i32> %var_2_664, i32 1
; Matched:\<badref\>:  store i32 %var_2_269, i32* %var_2_36, align 1, !tbaa !1288
; store i32 %var_2_667, i32* %var_2_36, align 1
%var_2_668 = extractelement <2 x i32> %var_2_665, i32 0
; Matched:\<badref\>:  store i32 %var_2_270, i32* %var_2_37, align 1, !tbaa !1288
; store i32 %var_2_668, i32* %var_2_37, align 1
%var_2_669 = extractelement <2 x i32> %var_2_665, i32 1
; Matched:\<badref\>:  store i32 %var_2_271, i32* %var_2_39, align 1, !tbaa !1288
; store i32 %var_2_669, i32* %var_2_39, align 1
%var_2_670 = add i64 %var_2_663, -3572
; Matched:%var_2_418:  %var_2_418 = add i64 %var_2_408, 8
; %var_2_671 = add i64 %var_2_663, 8
%var_2_672 = load i64, i64* %var_2_6, align 8
%var_2_673 = add i64 %var_2_672, -8
; Matched:%var_2_276:  %var_2_276 = inttoptr i64 %var_2_275 to i64*
; %var_2_674 = inttoptr i64 %var_2_673 to i64*
; Matched:\<badref\>:  store i64 %var_2_273, i64* %var_2_276, align 8
; store i64 %var_2_671, i64* %var_2_674, align 8
; Matched:\<badref\>:  store i64 %var_2_134, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_673, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_272, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_670, i64* %var_2_3, align 8
%call2_401417 = tail call %struct.Memory* @ext_sin(%struct.State* nonnull %0, i64 %var_2_670, %struct.Memory* %call2_4013d5)
%var_2_675 = load i64, i64* %RBP.i, align 8
%var_2_676 = add i64 %var_2_675, -80
%var_2_677 = load i64, i64* %var_2_3, align 8
%var_2_678 = add i64 %var_2_677, 5
store i64 %var_2_678, i64* %var_2_3, align 8
%var_2_679 = inttoptr i64 %var_2_676 to double*
%var_2_680 = load double, double* %var_2_679, align 8
%var_2_681 = load double, double* %var_2_49, align 1
%var_2_682 = fmul double %var_2_680, %var_2_681
store double %var_2_682, double* %var_2_43, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_44, align 1, !tbaa !1285
; store i64 0, i64* %var_2_45, align 1
%var_2_683 = load i64, i64* bitcast (%G_0x602370_type* @G_0x602370 to i64*), align 8
store i64 %var_2_683, i64* %var_2_32, align 1
  store double 0.000000e+00, double* %.pre-phi, align 1
%var_2_684 = add i64 %var_2_675, -88
%var_2_685 = add i64 %var_2_677, 23
store i64 %var_2_685, i64* %var_2_3, align 8
%var_2_686 = inttoptr i64 %var_2_684 to double*
store double %var_2_682, double* %var_2_686, align 8
%var_2_687 = load i64, i64* %var_2_3, align 8
%var_2_688 = add i64 %var_2_687, -3619
; Matched:%var_2_218:  %var_2_218 = add i64 %var_2_216, 5
; %var_2_689 = add i64 %var_2_687, 5
%var_2_690 = load i64, i64* %var_2_6, align 8
%var_2_691 = add i64 %var_2_690, -8
; Matched:%var_2_616:  %var_2_616 = inttoptr i64 %var_2_615 to i64*
; %var_2_692 = inttoptr i64 %var_2_691 to i64*
; Matched:\<badref\>:  store i64 %var_2_613, i64* %var_2_616, align 8
; store i64 %var_2_689, i64* %var_2_692, align 8
; Matched:\<badref\>:  store i64 %var_2_296, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_691, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_293, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_688, i64* %var_2_3, align 8
%call2_401433 = tail call %struct.Memory* @ext_tan(%struct.State* nonnull %0, i64 %var_2_688, %struct.Memory* %call2_401417)
%var_2_693 = load i64, i64* %var_2_3, align 8
%var_2_694 = add i64 %var_2_693, ptrtoint (%G_0x218__rip__type* @G_0x218__rip_ to i64)
%var_2_695 = add i64 %var_2_693, 8
store i64 %var_2_695, i64* %var_2_3, align 8
%var_2_696 = inttoptr i64 %var_2_694 to double*
%var_2_697 = load double, double* %var_2_696, align 8
%var_2_698 = load double, double* %var_2_49, align 1
%var_2_699 = fdiv double %var_2_697, %var_2_698
store double %var_2_699, double* %var_2_43, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_44, align 1, !tbaa !1285
; store i64 0, i64* %var_2_45, align 1
%var_2_700 = load i64, i64* %RBP.i, align 8
%var_2_701 = add i64 %var_2_700, -88
%var_2_702 = add i64 %var_2_693, 17
store i64 %var_2_702, i64* %var_2_3, align 8
%var_2_703 = inttoptr i64 %var_2_701 to double*
%var_2_704 = load double, double* %var_2_703, align 8
  store double 0.000000e+00, double* %.pre-phi, align 1
%var_2_705 = fmul double %var_2_704, %var_2_699
store double %var_2_705, double* %var_2_49, align 1
store i64 0, i64* %var_2_33, align 1
%var_2_706 = add i64 %var_2_700, -48
%var_2_707 = add i64 %var_2_693, 26
store i64 %var_2_707, i64* %var_2_3, align 8
%var_2_708 = inttoptr i64 %var_2_706 to double*
%var_2_709 = load double, double* %var_2_708, align 8
%var_2_710 = fadd double %var_2_705, %var_2_709
store double %var_2_710, double* %var_2_49, align 1
store i64 0, i64* %var_2_33, align 1
store double %var_2_710, double* bitcast (%G_0x602348_type* @G_0x602348 to double*), align 8
%var_2_711 = add i64 %var_2_693, 301
store i64 %var_2_711, i64* %var_2_3, align 8
  br label %block_.L_401565

block_.L_401565:                                  ; preds = %block_4012c7, %block_.L_40134f, %block_401146, %block_.L_401236
%var_2_712 = phi i64 [ %var_2_711, %block_.L_40134f ], [ %var_2_440, %block_4012c7 ], [ %var_2_232, %block_.L_401236 ], [ %var_2_90, %block_401146 ]
%MEMORY.8 = phi %struct.Memory* [ %call2_401433, %block_.L_40134f ], [ %call2_40151a, %block_4012c7 ], [ %var_2_207, %block_.L_401236 ], [ %var_2_76, %block_401146 ]
; Matched:%var_2_93:  %var_2_93 = load i64, i64* %RSP, align 8
; %var_2_713 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_94:  %var_2_94 = add i64 %var_2_93, 144
; %var_2_714 = add i64 %var_2_713, 144
; Matched:\<badref\>:  store i64 %var_2_94, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_714, i64* %var_2_6, align 8
; Matched:%var_2_95:  %var_2_95 = icmp ugt i64 %var_2_93, -145
; %var_2_715 = icmp ugt i64 %var_2_713, -145
; Matched:%var_2_96:  %var_2_96 = zext i1 %var_2_95 to i8
; %var_2_716 = zext i1 %var_2_715 to i8
; Matched:\<badref\>:  store i8 %var_2_96, i8* %var_2_13, align 1, !tbaa !1265
; store i8 %var_2_716, i8* %var_2_12, align 1
; Matched:%var_2_97:  %var_2_97 = trunc i64 %var_2_94 to i32
; %var_2_717 = trunc i64 %var_2_714 to i32
; Matched:%var_2_98:  %var_2_98 = and i32 %var_2_97, 255
; %var_2_718 = and i32 %var_2_717, 255
; Matched:%var_2_99:  %var_2_99 = tail call i32 @llvm.ctpop.i32(i32 %var_2_98) #14
; %var_2_719 = tail call i32 @llvm.ctpop.i32(i32 %var_2_718)
; Matched:%var_2_100:  %var_2_100 = trunc i32 %var_2_99 to i8
; %var_2_720 = trunc i32 %var_2_719 to i8
; Matched:%var_2_101:  %var_2_101 = and i8 %var_2_100, 1
; %var_2_721 = and i8 %var_2_720, 1
; Matched:%var_2_102:  %var_2_102 = xor i8 %var_2_101, 1
; %var_2_722 = xor i8 %var_2_721, 1
; Matched:\<badref\>:  store i8 %var_2_102, i8* %var_2_14, align 1, !tbaa !1279
; store i8 %var_2_722, i8* %var_2_13, align 1
; Matched:%var_2_103:  %var_2_103 = xor i64 %var_2_93, 16
; %var_2_723 = xor i64 %var_2_713, 16
; Matched:%var_2_104:  %var_2_104 = xor i64 %var_2_103, %var_2_94
; %var_2_724 = xor i64 %var_2_723, %var_2_714
; Matched:%var_2_105:  %var_2_105 = lshr i64 %var_2_104, 4
; %var_2_725 = lshr i64 %var_2_724, 4
; Matched:%var_2_106:  %var_2_106 = trunc i64 %var_2_105 to i8
; %var_2_726 = trunc i64 %var_2_725 to i8
; Matched:%var_2_107:  %var_2_107 = and i8 %var_2_106, 1
; %var_2_727 = and i8 %var_2_726, 1
; Matched:\<badref\>:  store i8 %var_2_107, i8* %var_2_15, align 1, !tbaa !1280
; store i8 %var_2_727, i8* %var_2_14, align 1
; Matched:%var_2_108:  %var_2_108 = icmp eq i64 %var_2_94, 0
; %var_2_728 = icmp eq i64 %var_2_714, 0
; Matched:%var_2_109:  %var_2_109 = zext i1 %var_2_108 to i8
; %var_2_729 = zext i1 %var_2_728 to i8
; Matched:\<badref\>:  store i8 %var_2_109, i8* %var_2_16, align 1, !tbaa !1281
; store i8 %var_2_729, i8* %var_2_15, align 1
; Matched:%var_2_110:  %var_2_110 = lshr i64 %var_2_94, 63
; %var_2_730 = lshr i64 %var_2_714, 63
; Matched:%var_2_111:  %var_2_111 = trunc i64 %var_2_110 to i8
; %var_2_731 = trunc i64 %var_2_730 to i8
; Matched:\<badref\>:  store i8 %var_2_111, i8* %var_2_17, align 1, !tbaa !1282
; store i8 %var_2_731, i8* %var_2_16, align 1
; Matched:%var_2_112:  %var_2_112 = lshr i64 %var_2_93, 63
; %var_2_732 = lshr i64 %var_2_713, 63
; Matched:%var_2_113:  %var_2_113 = xor i64 %var_2_110, %var_2_112
; %var_2_733 = xor i64 %var_2_730, %var_2_732
; Matched:%var_2_114:  %var_2_114 = add nuw nsw i64 %var_2_113, %var_2_110
; %var_2_734 = add nuw nsw i64 %var_2_733, %var_2_730
; Matched:%var_2_115:  %var_2_115 = icmp eq i64 %var_2_114, 2
; %var_2_735 = icmp eq i64 %var_2_734, 2
; Matched:%var_2_116:  %var_2_116 = zext i1 %var_2_115 to i8
; %var_2_736 = zext i1 %var_2_735 to i8
; Matched:\<badref\>:  store i8 %var_2_116, i8* %var_2_18, align 1, !tbaa !1283
; store i8 %var_2_736, i8* %var_2_17, align 1
%var_2_737 = add i64 %var_2_712, 8
store i64 %var_2_737, i64* %var_2_3, align 8
; Matched:%var_2_118:  %var_2_118 = add i64 %var_2_93, 152
; %var_2_738 = add i64 %var_2_713, 152
; Matched:%var_2_119:  %var_2_119 = inttoptr i64 %var_2_94 to i64*
; %var_2_739 = inttoptr i64 %var_2_714 to i64*
; Matched:%var_2_120:  %var_2_120 = load i64, i64* %var_2_119, align 8
; %var_2_740 = load i64, i64* %var_2_739, align 8
; Matched:\<badref\>:  store i64 %var_2_120, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_740, i64* %RBP.i, align 8
; Matched:\<badref\>:  store i64 %var_2_118, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_738, i64* %var_2_6, align 8
%var_2_741 = add i64 %var_2_712, 9
store i64 %var_2_741, i64* %var_2_3, align 8
; Matched:%var_2_122:  %var_2_122 = inttoptr i64 %var_2_118 to i64*
; %var_2_742 = inttoptr i64 %var_2_738 to i64*
; Matched:%var_2_123:  %var_2_123 = load i64, i64* %var_2_122, align 8
; %var_2_743 = load i64, i64* %var_2_742, align 8
; Matched:\<badref\>:  store i64 %var_2_123, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_743, i64* %var_2_3, align 8
; Matched:%var_2_124:  %var_2_124 = add i64 %var_2_93, 160
; %var_2_744 = add i64 %var_2_713, 160
; Matched:\<badref\>:  store i64 %var_2_124, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_744, i64* %var_2_6, align 8
  ret %struct.Memory* %MEMORY.8
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
define %struct.Memory* @routine_subq__0x90___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -144
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 144
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpw__0x0__0x602340(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i16, i16* bitcast (%G_0x602340_type* @G_0x602340 to i16*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = and i16 %5, 255
  %8 = zext i16 %7 to i32
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  %15 = icmp eq i16 %5, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i16 %5, 15
  %19 = trunc i16 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4012ab(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x602640___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602640_type* @G_0x602640 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
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
define %struct.Memory* @routine_jne_.L_40114b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jp_.L_40114b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401256(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x602348___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602348_type* @G_0x602348 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40118f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jp_.L_40118f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x602370(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x602370_type* @G_0x602370 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x602630___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602630_type* @G_0x602630 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd_0x602640___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x602640_type* @G_0x602640 to double*), align 8
  %9 = fdiv double %7, %8
  store double %9, double* %6, align 1
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
define %struct.Memory* @routine_jmpq_.L_4011b8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x602348___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602348_type* @G_0x602348 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_0x602640___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x602640_type* @G_0x602640 to double*), align 8
  %9 = fsub double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_0x602370___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x602370_type* @G_0x602370 to double*), align 8
  %9 = fmul double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x602638___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602638_type* @G_0x602638 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd_0x602648___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x602648_type* @G_0x602648 to double*), align 8
  %9 = fdiv double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x18__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
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
define %struct.Memory* @routine_movsd__xmm1__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_movsd_0x602370___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602370_type* @G_0x602370 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_addsd_MINUS0x18__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
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
define %struct.Memory* @routine_subsd_MINUS0x20__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
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
define %struct.Memory* @routine_movsd__xmm1__0x602370(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x602370_type* @G_0x602370 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40121f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jp_.L_40121f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401236(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
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
define %struct.Memory* @routine_movsd__xmm0__0x602630(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x602630_type* @G_0x602630 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd_0x602370___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x602370_type* @G_0x602370 to double*), align 8
  %9 = fdiv double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x602348(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x602348_type* @G_0x602348 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401565(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x602648___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602648_type* @G_0x602648 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd_0x602638___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x602638_type* @G_0x602638 to double*), align 8
  %9 = fdiv double %7, %8
  store double %9, double* %6, align 1
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
define %struct.Memory* @routine_movsd_0x602370___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602370_type* @G_0x602370 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4012cc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jp_.L_4012cc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401460(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_401310(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jp_.L_401310(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40134f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_callq_.sin_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_mulsd__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
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
define %struct.Memory* @routine_callq_.asin_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x602638___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602638_type* @G_0x602638 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd_0x602648___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x602648_type* @G_0x602648 to double*), align 8
  %9 = fdiv double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x18__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_addsd_MINUS0x8__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
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
define %struct.Memory* @routine_movsd_0x2b0__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x2b0__rip__type* @G_0x2b0__rip_ to i64)
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
define %struct.Memory* @routine_subsd__xmm0___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm2__0x602370(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x602370_type* @G_0x602370 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fdiv double %8, %10
  store double %11, double* %7, align 1
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
define %struct.Memory* @routine_mulsd_0x602640___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x602640_type* @G_0x602640 to double*), align 8
  %9 = fmul double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x30__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
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
define %struct.Memory* @routine_movsd_0x602640___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602640_type* @G_0x602640 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
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
define %struct.Memory* @routine_addsd_MINUS0x8__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_callq_.tan_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x218__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x218__rip__type* @G_0x218__rip_ to i64)
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
define %struct.Memory* @routine_addsd_MINUS0x30__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
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
define %struct.Memory* @routine_movq__xmm0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* %RCX, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorq__rax___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = xor i64 %4, %3
  store i64 %7, i64* %RCX, align 8
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
define %struct.Memory* @routine_movq__rcx___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_movq__xmm2___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* %RCX, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %3, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  store i64 0, i64* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
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
define %struct.Memory* @routine_movq__rax__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_callq_.cos_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x602370___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602370_type* @G_0x602370 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
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
define %struct.Memory* @routine_movsd__xmm1__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
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
define %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__0x602348(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x602348_type* @G_0x602348 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__xmm0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* %RAX, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x70__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorq__rcx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = xor i64 %4, %3
  store i64 %7, i64* %RAX, align 8
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
define %struct.Memory* @routine_movq__rax___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %3, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 0, i64* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x90___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 144
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -145
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
