; ModuleID = '/tmp/tmpyseox1hj-query.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x329__rip__type = type <{ [8 x i8] }>
%G_0x40c__rip__type = type <{ [8 x i8] }>
%G_0x428__rip__type = type <{ [8 x i8] }>
%G_0x448__rip__type = type <{ [8 x i8] }>
%G_0x483__rip__type = type <{ [8 x i8] }>
%G_0x4a6__rip__type = type <{ [8 x i8] }>
%G_0x4c9__rip__type = type <{ [8 x i8] }>
%G_0x4d1__rip__type = type <{ [8 x i8] }>
%G_0x4e9__rip__type = type <{ [8 x i8] }>
%G_0x509__rip__type = type <{ [8 x i8] }>
%G_0x511__rip__type = type <{ [8 x i8] }>
%G__0x400c58_type = type <{ [8 x i8] }>
%G__0x400c61_type = type <{ [8 x i8] }>
%G__0x400c69_type = type <{ [8 x i8] }>
%G__0x400c70_type = type <{ [8 x i8] }>
%G__0x400c79_type = type <{ [8 x i8] }>
%G__0x400c85_type = type <{ [8 x i8] }>
%G__0x400c93_type = type <{ [8 x i8] }>
%G__0x400ca0_type = type <{ [8 x i8] }>
%G__0x400cac_type = type <{ [8 x i8] }>
%G__0x400cb5_type = type <{ [8 x i8] }>
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
@G_0x329__rip_ = global %G_0x329__rip__type zeroinitializer
@G_0x40c__rip_ = global %G_0x40c__rip__type zeroinitializer
@G_0x428__rip_ = global %G_0x428__rip__type zeroinitializer
@G_0x448__rip_ = global %G_0x448__rip__type zeroinitializer
@G_0x483__rip_ = global %G_0x483__rip__type zeroinitializer
@G_0x4a6__rip_ = global %G_0x4a6__rip__type zeroinitializer
@G_0x4c9__rip_ = global %G_0x4c9__rip__type zeroinitializer
@G_0x4d1__rip_ = global %G_0x4d1__rip__type zeroinitializer
@G_0x4e9__rip_ = global %G_0x4e9__rip__type zeroinitializer
@G_0x509__rip_ = global %G_0x509__rip__type zeroinitializer
@G_0x511__rip_ = global %G_0x511__rip__type zeroinitializer
@G__0x400c58 = global %G__0x400c58_type zeroinitializer
@G__0x400c61 = global %G__0x400c61_type zeroinitializer
@G__0x400c69 = global %G__0x400c69_type zeroinitializer
@G__0x400c70 = global %G__0x400c70_type zeroinitializer
@G__0x400c79 = global %G__0x400c79_type zeroinitializer
@G__0x400c85 = global %G__0x400c85_type zeroinitializer
@G__0x400c93 = global %G__0x400c93_type zeroinitializer
@G__0x400ca0 = global %G__0x400ca0_type zeroinitializer
@G__0x400cac = global %G__0x400cac_type zeroinitializer
@G__0x400cb5 = global %G__0x400cb5_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @pow(i64, i64)

declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @ext_sqrt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr

declare %struct.Memory* @ext_cos(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr

declare %struct.Memory* @ext_sin(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr

declare %struct.Memory* @sub_400660.make_vec(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4006a0.sum_vec(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @main(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
entry:
%var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
; Matched:%var_2_9:  %var_2_9 = load i64, i64* %RBP, align 8
; %var_2_4 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_10:  %var_2_10 = add i64 %1, 1
; %var_2_5 = add i64 %1, 1
; Matched:\<badref\>:  store i64 %var_2_10, i64* %PC, align 8
; store i64 %var_2_5, i64* %var_2_3, align 8
%var_2_6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
; Matched:%var_2_11:  %var_2_11 = load i64, i64* %RSP, align 8, !tbaa !1261
; %var_2_7 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_12:  %var_2_12 = add i64 %var_2_11, -8
; %var_2_8 = add i64 %var_2_7, -8
; Matched:%var_2_13:  %var_2_13 = inttoptr i64 %var_2_12 to i64*
; %var_2_9 = inttoptr i64 %var_2_8 to i64*
; Matched:\<badref\>:  store i64 %var_2_9, i64* %var_2_13, align 8
; store i64 %var_2_4, i64* %var_2_9, align 8
; Matched:%var_2_14:  %var_2_14 = load i64, i64* %PC, align 8
; %var_2_10 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_12, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_8, i64* %RBP.i, align 8
; Matched:%var_2_15:  %var_2_15 = add i64 %var_2_11, -344
; %var_2_11 = add i64 %var_2_7, -344
; Matched:\<badref\>:  store i64 %var_2_15, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_11, i64* %var_2_6, align 8
; Matched:%var_2_16:  %var_2_16 = icmp ult i64 %var_2_12, 336
; %var_2_12 = icmp ult i64 %var_2_8, 336
; Matched:%var_2_17:  %var_2_17 = zext i1 %var_2_16 to i8
; %var_2_13 = zext i1 %var_2_12 to i8
%var_2_14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
; Matched:\<badref\>:  store i8 %var_2_17, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_13, i8* %var_2_14, align 1
; Matched:%var_2_19:  %var_2_19 = trunc i64 %var_2_15 to i32
; %var_2_15 = trunc i64 %var_2_11 to i32
; Matched:%var_2_20:  %var_2_20 = and i32 %var_2_19, 255
; %var_2_16 = and i32 %var_2_15, 255
; Matched:%var_2_21:  %var_2_21 = tail call i32 @llvm.ctpop.i32(i32 %var_2_20) #14
; %var_2_17 = tail call i32 @llvm.ctpop.i32(i32 %var_2_16)
; Matched:%var_2_22:  %var_2_22 = trunc i32 %var_2_21 to i8
; %var_2_18 = trunc i32 %var_2_17 to i8
; Matched:%var_2_23:  %var_2_23 = and i8 %var_2_22, 1
; %var_2_19 = and i8 %var_2_18, 1
; Matched:%var_2_24:  %var_2_24 = xor i8 %var_2_23, 1
; %var_2_20 = xor i8 %var_2_19, 1
; Matched:%var_2_25:  %var_2_25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
; %var_2_21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
; Matched:\<badref\>:  store i8 %var_2_24, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_20, i8* %var_2_21, align 1
; Matched:%var_2_26:  %var_2_26 = xor i64 %var_2_12, 16
; %var_2_22 = xor i64 %var_2_8, 16
; Matched:%var_2_27:  %var_2_27 = xor i64 %var_2_26, %var_2_15
; %var_2_23 = xor i64 %var_2_22, %var_2_11
; Matched:%var_2_28:  %var_2_28 = lshr i64 %var_2_27, 4
; %var_2_24 = lshr i64 %var_2_23, 4
; Matched:%var_2_29:  %var_2_29 = trunc i64 %var_2_28 to i8
; %var_2_25 = trunc i64 %var_2_24 to i8
; Matched:%var_2_30:  %var_2_30 = and i8 %var_2_29, 1
; %var_2_26 = and i8 %var_2_25, 1
%var_2_27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
; Matched:\<badref\>:  store i8 %var_2_30, i8* %var_2_31, align 1, !tbaa !1280
; store i8 %var_2_26, i8* %var_2_27, align 1
; Matched:%var_2_32:  %var_2_32 = icmp eq i64 %var_2_15, 0
; %var_2_28 = icmp eq i64 %var_2_11, 0
; Matched:%var_2_33:  %var_2_33 = zext i1 %var_2_32 to i8
; %var_2_29 = zext i1 %var_2_28 to i8
; Matched:%var_2_34:  %var_2_34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
; %var_2_30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
; Matched:\<badref\>:  store i8 %var_2_33, i8* %var_2_34, align 1, !tbaa !1281
; store i8 %var_2_29, i8* %var_2_30, align 1
; Matched:%var_2_35:  %var_2_35 = lshr i64 %var_2_15, 63
; %var_2_31 = lshr i64 %var_2_11, 63
; Matched:%var_2_36:  %var_2_36 = trunc i64 %var_2_35 to i8
; %var_2_32 = trunc i64 %var_2_31 to i8
%var_2_33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
; Matched:\<badref\>:  store i8 %var_2_36, i8* %var_2_37, align 1, !tbaa !1282
; store i8 %var_2_32, i8* %var_2_33, align 1
; Matched:%var_2_38:  %var_2_38 = lshr i64 %var_2_12, 63
; %var_2_34 = lshr i64 %var_2_8, 63
; Matched:%var_2_39:  %var_2_39 = xor i64 %var_2_35, %var_2_38
; %var_2_35 = xor i64 %var_2_31, %var_2_34
; Matched:%var_2_40:  %var_2_40 = add nuw nsw i64 %var_2_39, %var_2_38
; %var_2_36 = add nuw nsw i64 %var_2_35, %var_2_34
; Matched:%var_2_41:  %var_2_41 = icmp eq i64 %var_2_40, 2
; %var_2_37 = icmp eq i64 %var_2_36, 2
; Matched:%var_2_42:  %var_2_42 = zext i1 %var_2_41 to i8
; %var_2_38 = zext i1 %var_2_37 to i8
%var_2_39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; Matched:\<badref\>:  store i8 %var_2_42, i8* %var_2_43, align 1, !tbaa !1283
; store i8 %var_2_38, i8* %var_2_39, align 1
%var_2_40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
; Matched:%var_2_44:  %var_2_44 = bitcast [32 x %union.VectorReg]* %var_2_6 to i8*
; %var_2_41 = bitcast [32 x %union.VectorReg]* %var_2_40 to i8*
%var_2_42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_46:  %var_2_46 = bitcast [32 x %union.VectorReg]* %var_2_6 to i32*
; %var_2_43 = bitcast [32 x %union.VectorReg]* %var_2_40 to i32*
; Matched:%var_2_47:  %var_2_47 = getelementptr inbounds i8, i8* %var_2_44, i64 4
; %var_2_44 = getelementptr inbounds i8, i8* %var_2_41, i64 4
; Matched:%var_2_48:  %var_2_48 = bitcast i8* %var_2_47 to i32*
; %var_2_45 = bitcast i8* %var_2_44 to i32*
; Matched:%var_2_49:  %var_2_49 = bitcast i64* %var_2_45 to i32*
; %var_2_46 = bitcast i64* %var_2_42 to i32*
; Matched:%var_2_50:  %var_2_50 = getelementptr inbounds i8, i8* %var_2_44, i64 12
; %var_2_47 = getelementptr inbounds i8, i8* %var_2_41, i64 12
; Matched:%var_2_51:  %var_2_51 = bitcast i8* %var_2_50 to i32*
; %var_2_48 = bitcast i8* %var_2_47 to i32*
%var_2_49 = bitcast [32 x %union.VectorReg]* %var_2_40 to <4 x i32>*
store <4 x i32> zeroinitializer, <4 x i32>* %var_2_49, align 1
; Matched:%var_2_53:  %var_2_53 = add i64 %var_2_11, -12
; %var_2_50 = add i64 %var_2_7, -12
; Matched:%var_2_54:  %var_2_54 = add i64 %var_2_14, 20
; %var_2_51 = add i64 %var_2_10, 20
; Matched:\<badref\>:  store i64 %var_2_54, i64* %PC, align 8
; store i64 %var_2_51, i64* %var_2_3, align 8
; Matched:%var_2_55:  %var_2_55 = inttoptr i64 %var_2_53 to i32*
; %var_2_52 = inttoptr i64 %var_2_50 to i32*
; Matched:\<badref\>:  store i32 0, i32* %var_2_55, align 4
; store i32 0, i32* %var_2_52, align 4
; Matched:%var_2_5:  %var_2_5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
; %var_2_53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
; Matched:  %EDI = bitcast %union.anon* %var_2_5 to i32*
; %EDI.i = bitcast %union.anon* %var_2_53 to i32*
; Matched:%var_2_56:  %var_2_56 = load i64, i64* %RBP, align 8
; %var_2_54 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_57:  %var_2_57 = add i64 %var_2_56, -8
; %var_2_55 = add i64 %var_2_54, -8
; Matched:%var_2_58:  %var_2_58 = load i32, i32* %EDI, align 4
; %var_2_56 = load i32, i32* %EDI.i, align 4
; Matched:%var_2_59:  %var_2_59 = load i64, i64* %PC, align 8
; %var_2_57 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_60:  %var_2_60 = add i64 %var_2_59, 3
; %var_2_58 = add i64 %var_2_57, 3
; Matched:\<badref\>:  store i64 %var_2_60, i64* %PC, align 8
; store i64 %var_2_58, i64* %var_2_3, align 8
; Matched:%var_2_61:  %var_2_61 = inttoptr i64 %var_2_57 to i32*
; %var_2_59 = inttoptr i64 %var_2_55 to i32*
; Matched:\<badref\>:  store i32 %var_2_58, i32* %var_2_61, align 4
; store i32 %var_2_56, i32* %var_2_59, align 4
; Matched:  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
; %RSI.i87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
; Matched:%var_2_62:  %var_2_62 = load i64, i64* %RBP, align 8
; %var_2_60 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_63:  %var_2_63 = add i64 %var_2_62, -16
; %var_2_61 = add i64 %var_2_60, -16
; Matched:%var_2_64:  %var_2_64 = load i64, i64* %RSI, align 8
; %var_2_62 = load i64, i64* %RSI.i87, align 8
; Matched:%var_2_65:  %var_2_65 = load i64, i64* %PC, align 8
; %var_2_63 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_66:  %var_2_66 = add i64 %var_2_65, 4
; %var_2_64 = add i64 %var_2_63, 4
; Matched:\<badref\>:  store i64 %var_2_66, i64* %PC, align 8
; store i64 %var_2_64, i64* %var_2_3, align 8
; Matched:%var_2_67:  %var_2_67 = inttoptr i64 %var_2_63 to i64*
; %var_2_65 = inttoptr i64 %var_2_61 to i64*
; Matched:\<badref\>:  store i64 %var_2_64, i64* %var_2_67, align 8
; store i64 %var_2_62, i64* %var_2_65, align 8
; Matched:%var_2_68:  %var_2_68 = load i64, i64* %RBP, align 8
; %var_2_66 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_69:  %var_2_69 = add i64 %var_2_68, -24
; %var_2_67 = add i64 %var_2_66, -24
%var_2_68 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_311:  %var_2_311 = add i64 %var_2_310, 5
; %var_2_69 = add i64 %var_2_68, 5
; Matched:\<badref\>:  store i64 %var_2_311, i64* %PC, align 8
; store i64 %var_2_69, i64* %var_2_3, align 8
%var_2_70 = bitcast [32 x %union.VectorReg]* %var_2_40 to double*
%var_2_71 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %var_2_40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:%var_2_74:  %var_2_74 = load i64, i64* %var_2_73, align 1
; %var_2_72 = load i64, i64* %var_2_71, align 1
; Matched:%var_2_75:  %var_2_75 = inttoptr i64 %var_2_69 to i64*
; %var_2_73 = inttoptr i64 %var_2_67 to i64*
; Matched:\<badref\>:  store i64 %var_2_74, i64* %var_2_75, align 8
; store i64 %var_2_72, i64* %var_2_73, align 8
; Matched:%var_2_76:  %var_2_76 = load i64, i64* %RBP, align 8
; %var_2_74 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_77:  %var_2_77 = add i64 %var_2_76, -32
; %var_2_75 = add i64 %var_2_74, -32
%var_2_76 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_320:  %var_2_320 = add i64 %var_2_319, 5
; %var_2_77 = add i64 %var_2_76, 5
; Matched:\<badref\>:  store i64 %var_2_320, i64* %PC, align 8
; store i64 %var_2_77, i64* %var_2_3, align 8
; Matched:%var_2_80:  %var_2_80 = load i64, i64* %var_2_73, align 1
; %var_2_78 = load i64, i64* %var_2_71, align 1
; Matched:%var_2_81:  %var_2_81 = inttoptr i64 %var_2_77 to i64*
; %var_2_79 = inttoptr i64 %var_2_75 to i64*
; Matched:\<badref\>:  store i64 %var_2_80, i64* %var_2_81, align 8
; store i64 %var_2_78, i64* %var_2_79, align 8
; Matched:%var_2_82:  %var_2_82 = load i64, i64* %RBP, align 8
; %var_2_80 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_83:  %var_2_83 = add i64 %var_2_82, -40
; %var_2_81 = add i64 %var_2_80, -40
%var_2_82 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_302:  %var_2_302 = add i64 %var_2_301, 5
; %var_2_83 = add i64 %var_2_82, 5
; Matched:\<badref\>:  store i64 %var_2_302, i64* %PC, align 8
; store i64 %var_2_83, i64* %var_2_3, align 8
; Matched:%var_2_86:  %var_2_86 = load i64, i64* %var_2_73, align 1
; %var_2_84 = load i64, i64* %var_2_71, align 1
; Matched:%var_2_87:  %var_2_87 = inttoptr i64 %var_2_83 to i64*
; %var_2_85 = inttoptr i64 %var_2_81 to i64*
; Matched:\<badref\>:  store i64 %var_2_86, i64* %var_2_87, align 8
; store i64 %var_2_84, i64* %var_2_85, align 8
; Matched:%var_2_88:  %var_2_88 = load i64, i64* %RBP, align 8
; %var_2_86 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_89:  %var_2_89 = add i64 %var_2_88, -48
; %var_2_87 = add i64 %var_2_86, -48
%var_2_88 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_649:  %var_2_649 = add i64 %var_2_648, 5
; %var_2_89 = add i64 %var_2_88, 5
; Matched:\<badref\>:  store i64 %var_2_649, i64* %PC, align 8
; store i64 %var_2_89, i64* %var_2_3, align 8
; Matched:%var_2_92:  %var_2_92 = load i64, i64* %var_2_73, align 1
; %var_2_90 = load i64, i64* %var_2_71, align 1
; Matched:%var_2_93:  %var_2_93 = inttoptr i64 %var_2_89 to i64*
; %var_2_91 = inttoptr i64 %var_2_87 to i64*
; Matched:\<badref\>:  store i64 %var_2_92, i64* %var_2_93, align 8
; store i64 %var_2_90, i64* %var_2_91, align 8
; Matched:%var_2_94:  %var_2_94 = load i64, i64* %RBP, align 8
; %var_2_92 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_95:  %var_2_95 = add i64 %var_2_94, -276
; %var_2_93 = add i64 %var_2_92, -276
%var_2_94 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_848:  %var_2_848 = add i64 %var_2_823, 10
; %var_2_95 = add i64 %var_2_94, 10
; Matched:\<badref\>:  store i64 %var_2_848, i64* %PC, align 8
; store i64 %var_2_95, i64* %var_2_3, align 8
; Matched:%var_2_98:  %var_2_98 = inttoptr i64 %var_2_95 to i32*
; %var_2_96 = inttoptr i64 %var_2_93 to i32*
; Matched:\<badref\>:  store i32 2500000, i32* %var_2_98, align 4
; store i32 2500000, i32* %var_2_96, align 4
; Matched:%var_2_99:  %var_2_99 = load i64, i64* %RBP, align 8
; %var_2_97 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_100:  %var_2_100 = add i64 %var_2_99, -288
; %var_2_98 = add i64 %var_2_97, -288
%var_2_99 = load i64, i64* %var_2_3, align 8
%var_2_100 = add i64 %var_2_99, 8
store i64 %var_2_100, i64* %var_2_3, align 8
; Matched:%var_2_103:  %var_2_103 = load i64, i64* %var_2_73, align 1
; %var_2_101 = load i64, i64* %var_2_71, align 1
; Matched:%var_2_104:  %var_2_104 = inttoptr i64 %var_2_100 to i64*
; %var_2_102 = inttoptr i64 %var_2_98 to i64*
; Matched:\<badref\>:  store i64 %var_2_103, i64* %var_2_104, align 8
; store i64 %var_2_101, i64* %var_2_102, align 8
%var_2_103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
%var_2_104 = bitcast %union.VectorReg* %var_2_103 to i8*
; Matched:%var_2_106:  %var_2_106 = load i64, i64* %RBP, align 8
; %var_2_105 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_107:  %var_2_107 = add i64 %var_2_106, -288
; %var_2_106 = add i64 %var_2_105, -288
%var_2_107 = load i64, i64* %var_2_3, align 8
%var_2_108 = add i64 %var_2_107, 8
store i64 %var_2_108, i64* %var_2_3, align 8
; Matched:%var_2_110:  %var_2_110 = inttoptr i64 %var_2_107 to i64*
; %var_2_109 = inttoptr i64 %var_2_106 to i64*
; Matched:%var_2_111:  %var_2_111 = load i64, i64* %var_2_110, align 8
; %var_2_110 = load i64, i64* %var_2_109, align 8
%var_2_111 = bitcast %union.VectorReg* %var_2_103 to double*
%var_2_112 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_103, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:\<badref\>:  store i64 %var_2_111, i64* %var_2_113, align 1, !tbaa !1285
; store i64 %var_2_110, i64* %var_2_112, align 1
%var_2_113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
%var_2_114 = bitcast i64* %var_2_113 to double*
store double 0.000000e+00, double* %var_2_114, align 1
%var_2_115 = add i64 %var_2_107, -178
; Matched:%var_2_1015:  %var_2_1015 = add i64 %var_2_1010, 13
; %var_2_116 = add i64 %var_2_107, 13
%var_2_117 = load i64, i64* %var_2_6, align 8
%var_2_118 = add i64 %var_2_117, -8
; Matched:%var_2_120:  %var_2_120 = inttoptr i64 %var_2_119 to i64*
; %var_2_119 = inttoptr i64 %var_2_118 to i64*
; Matched:\<badref\>:  store i64 %var_2_1015, i64* %var_2_1018, align 8
; store i64 %var_2_116, i64* %var_2_119, align 8
; Matched:\<badref\>:  store i64 %var_2_724, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_118, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_116, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_115, i64* %var_2_3, align 8
%call2_40071a = tail call %struct.Memory* @sub_400660.make_vec(%struct.State* %0, i64 %var_2_115, %struct.Memory* %2)
%var_2_120 = load i64, i64* %var_2_3, align 8
%var_2_121 = add i64 %var_2_120, ptrtoint (%G_0x511__rip__type* @G_0x511__rip_ to i64)
%var_2_122 = add i64 %var_2_120, 8
store i64 %var_2_122, i64* %var_2_3, align 8
%var_2_123 = inttoptr i64 %var_2_121 to i64*
%var_2_124 = load i64, i64* %var_2_123, align 8
store i64 %var_2_124, i64* %var_2_112, align 1
store double 0.000000e+00, double* %var_2_114, align 1
; Matched:%var_2_124:  %var_2_124 = load i64, i64* %RBP, align 8
; %var_2_125 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_125:  %var_2_125 = add i64 %var_2_124, -144
; %var_2_126 = add i64 %var_2_125, -144
%var_2_127 = add i64 %var_2_120, 16
store i64 %var_2_127, i64* %var_2_3, align 8
; Matched:%var_2_127:  %var_2_127 = load i64, i64* %var_2_73, align 1
; %var_2_128 = load i64, i64* %var_2_71, align 1
; Matched:%var_2_128:  %var_2_128 = load i64, i64* %var_2_45, align 1
; %var_2_129 = load i64, i64* %var_2_42, align 1
; Matched:%var_2_129:  %var_2_129 = inttoptr i64 %var_2_125 to i64*
; %var_2_130 = inttoptr i64 %var_2_126 to i64*
; Matched:\<badref\>:  store i64 %var_2_127, i64* %var_2_129, align 8
; store i64 %var_2_128, i64* %var_2_130, align 8
; Matched:%var_2_130:  %var_2_130 = add i64 %var_2_124, -136
; %var_2_131 = add i64 %var_2_125, -136
; Matched:%var_2_131:  %var_2_131 = inttoptr i64 %var_2_130 to i64*
; %var_2_132 = inttoptr i64 %var_2_131 to i64*
; Matched:\<badref\>:  store i64 %var_2_128, i64* %var_2_131, align 8
; store i64 %var_2_129, i64* %var_2_132, align 8
%var_2_133 = load i64, i64* %var_2_3, align 8
%var_2_134 = bitcast %union.VectorReg* %var_2_103 to <2 x i32>*
%var_2_135 = load <2 x i32>, <2 x i32>* %var_2_134, align 1
%var_2_136 = bitcast i64* %var_2_113 to <2 x i32>*
%var_2_137 = load <2 x i32>, <2 x i32>* %var_2_136, align 1
%var_2_138 = extractelement <2 x i32> %var_2_135, i32 0
; Matched:\<badref\>:  store i32 %var_2_137, i32* %var_2_46, align 1, !tbaa !1287
; store i32 %var_2_138, i32* %var_2_43, align 1
%var_2_139 = extractelement <2 x i32> %var_2_135, i32 1
; Matched:\<badref\>:  store i32 %var_2_212, i32* %var_2_48, align 1, !tbaa !1287
; store i32 %var_2_139, i32* %var_2_45, align 1
%var_2_140 = extractelement <2 x i32> %var_2_137, i32 0
; Matched:\<badref\>:  store i32 %var_2_213, i32* %var_2_49, align 1, !tbaa !1287
; store i32 %var_2_140, i32* %var_2_46, align 1
%var_2_141 = extractelement <2 x i32> %var_2_137, i32 1
; Matched:\<badref\>:  store i32 %var_2_214, i32* %var_2_51, align 1, !tbaa !1287
; store i32 %var_2_141, i32* %var_2_48, align 1
%var_2_142 = add i64 %var_2_133, -207
; Matched:%var_2_142:  %var_2_142 = add i64 %var_2_132, 8
; %var_2_143 = add i64 %var_2_133, 8
%var_2_144 = load i64, i64* %var_2_6, align 8
%var_2_145 = add i64 %var_2_144, -8
; Matched:%var_2_145:  %var_2_145 = inttoptr i64 %var_2_144 to i64*
; %var_2_146 = inttoptr i64 %var_2_145 to i64*
; Matched:\<badref\>:  store i64 %var_2_142, i64* %var_2_145, align 8
; store i64 %var_2_143, i64* %var_2_146, align 8
; Matched:\<badref\>:  store i64 %var_2_778, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_145, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_141, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_142, i64* %var_2_3, align 8
%call2_400732 = tail call %struct.Memory* @sub_400660.make_vec(%struct.State* %0, i64 %var_2_142, %struct.Memory* %call2_40071a)
%var_2_147 = load i64, i64* %var_2_3, align 8
%var_2_148 = add i64 %var_2_147, ptrtoint (%G_0x509__rip__type* @G_0x509__rip_ to i64)
%var_2_149 = add i64 %var_2_147, 8
store i64 %var_2_149, i64* %var_2_3, align 8
%var_2_150 = inttoptr i64 %var_2_148 to i64*
%var_2_151 = load i64, i64* %var_2_150, align 8
store i64 %var_2_151, i64* %var_2_112, align 1
store double 0.000000e+00, double* %var_2_114, align 1
; Matched:%var_2_149:  %var_2_149 = load i64, i64* %RBP, align 8
; %var_2_152 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_150:  %var_2_150 = add i64 %var_2_149, -160
; %var_2_153 = add i64 %var_2_152, -160
%var_2_154 = add i64 %var_2_147, 16
store i64 %var_2_154, i64* %var_2_3, align 8
; Matched:%var_2_152:  %var_2_152 = load i64, i64* %var_2_73, align 1
; %var_2_155 = load i64, i64* %var_2_71, align 1
; Matched:%var_2_153:  %var_2_153 = load i64, i64* %var_2_45, align 1
; %var_2_156 = load i64, i64* %var_2_42, align 1
; Matched:%var_2_154:  %var_2_154 = inttoptr i64 %var_2_150 to i64*
; %var_2_157 = inttoptr i64 %var_2_153 to i64*
; Matched:\<badref\>:  store i64 %var_2_152, i64* %var_2_154, align 8
; store i64 %var_2_155, i64* %var_2_157, align 8
; Matched:%var_2_155:  %var_2_155 = add i64 %var_2_149, -152
; %var_2_158 = add i64 %var_2_152, -152
; Matched:%var_2_156:  %var_2_156 = inttoptr i64 %var_2_155 to i64*
; %var_2_159 = inttoptr i64 %var_2_158 to i64*
; Matched:\<badref\>:  store i64 %var_2_153, i64* %var_2_156, align 8
; store i64 %var_2_156, i64* %var_2_159, align 8
%var_2_160 = load i64, i64* %var_2_3, align 8
%var_2_161 = load <2 x i32>, <2 x i32>* %var_2_134, align 1
%var_2_162 = load <2 x i32>, <2 x i32>* %var_2_136, align 1
%var_2_163 = extractelement <2 x i32> %var_2_161, i32 0
; Matched:\<badref\>:  store i32 %var_2_249, i32* %var_2_46, align 1, !tbaa !1287
; store i32 %var_2_163, i32* %var_2_43, align 1
%var_2_164 = extractelement <2 x i32> %var_2_161, i32 1
; Matched:\<badref\>:  store i32 %var_2_138, i32* %var_2_48, align 1, !tbaa !1287
; store i32 %var_2_164, i32* %var_2_45, align 1
%var_2_165 = extractelement <2 x i32> %var_2_162, i32 0
; Matched:\<badref\>:  store i32 %var_2_185, i32* %var_2_49, align 1, !tbaa !1287
; store i32 %var_2_165, i32* %var_2_46, align 1
%var_2_166 = extractelement <2 x i32> %var_2_162, i32 1
; Matched:\<badref\>:  store i32 %var_2_186, i32* %var_2_51, align 1, !tbaa !1287
; store i32 %var_2_166, i32* %var_2_48, align 1
%var_2_167 = add i64 %var_2_160, -231
; Matched:%var_2_188:  %var_2_188 = add i64 %var_2_180, 8
; %var_2_168 = add i64 %var_2_160, 8
%var_2_169 = load i64, i64* %var_2_6, align 8
%var_2_170 = add i64 %var_2_169, -8
; Matched:%var_2_191:  %var_2_191 = inttoptr i64 %var_2_190 to i64*
; %var_2_171 = inttoptr i64 %var_2_170 to i64*
; Matched:\<badref\>:  store i64 %var_2_188, i64* %var_2_191, align 8
; store i64 %var_2_168, i64* %var_2_171, align 8
; Matched:\<badref\>:  store i64 %var_2_262, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_170, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_164, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_167, i64* %var_2_3, align 8
%call2_40074a = tail call %struct.Memory* @sub_400660.make_vec(%struct.State* %0, i64 %var_2_167, %struct.Memory* %call2_400732)
%var_2_172 = load i64, i64* %var_2_3, align 8
%var_2_173 = add i64 %var_2_172, ptrtoint (%G_0x4e9__rip__type* @G_0x4e9__rip_ to i64)
%var_2_174 = add i64 %var_2_172, 8
store i64 %var_2_174, i64* %var_2_3, align 8
%var_2_175 = inttoptr i64 %var_2_173 to i64*
%var_2_176 = load i64, i64* %var_2_175, align 8
store i64 %var_2_176, i64* %var_2_112, align 1
store double 0.000000e+00, double* %var_2_114, align 1
; Matched:%var_2_172:  %var_2_172 = load i64, i64* %RBP, align 8
; %var_2_177 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_173:  %var_2_173 = add i64 %var_2_172, -176
; %var_2_178 = add i64 %var_2_177, -176
%var_2_179 = add i64 %var_2_172, 16
store i64 %var_2_179, i64* %var_2_3, align 8
; Matched:%var_2_175:  %var_2_175 = load i64, i64* %var_2_73, align 1
; %var_2_180 = load i64, i64* %var_2_71, align 1
; Matched:%var_2_176:  %var_2_176 = load i64, i64* %var_2_45, align 1
; %var_2_181 = load i64, i64* %var_2_42, align 1
; Matched:%var_2_177:  %var_2_177 = inttoptr i64 %var_2_173 to i64*
; %var_2_182 = inttoptr i64 %var_2_178 to i64*
; Matched:\<badref\>:  store i64 %var_2_175, i64* %var_2_177, align 8
; store i64 %var_2_180, i64* %var_2_182, align 8
; Matched:%var_2_178:  %var_2_178 = add i64 %var_2_172, -168
; %var_2_183 = add i64 %var_2_177, -168
; Matched:%var_2_179:  %var_2_179 = inttoptr i64 %var_2_178 to i64*
; %var_2_184 = inttoptr i64 %var_2_183 to i64*
; Matched:\<badref\>:  store i64 %var_2_176, i64* %var_2_179, align 8
; store i64 %var_2_181, i64* %var_2_184, align 8
%var_2_185 = load i64, i64* %var_2_3, align 8
%var_2_186 = load <2 x i32>, <2 x i32>* %var_2_134, align 1
%var_2_187 = load <2 x i32>, <2 x i32>* %var_2_136, align 1
%var_2_188 = extractelement <2 x i32> %var_2_186, i32 0
; Matched:\<badref\>:  store i32 %var_2_211, i32* %var_2_46, align 1, !tbaa !1287
; store i32 %var_2_188, i32* %var_2_43, align 1
%var_2_189 = extractelement <2 x i32> %var_2_186, i32 1
; Matched:\<badref\>:  store i32 %var_2_184, i32* %var_2_48, align 1, !tbaa !1287
; store i32 %var_2_189, i32* %var_2_45, align 1
%var_2_190 = extractelement <2 x i32> %var_2_187, i32 0
; Matched:\<badref\>:  store i32 %var_2_251, i32* %var_2_49, align 1, !tbaa !1287
; store i32 %var_2_190, i32* %var_2_46, align 1
%var_2_191 = extractelement <2 x i32> %var_2_187, i32 1
; Matched:\<badref\>:  store i32 %var_2_140, i32* %var_2_51, align 1, !tbaa !1287
; store i32 %var_2_191, i32* %var_2_48, align 1
%var_2_192 = add i64 %var_2_185, -255
; Matched:%var_2_165:  %var_2_165 = add i64 %var_2_157, 8
; %var_2_193 = add i64 %var_2_185, 8
%var_2_194 = load i64, i64* %var_2_6, align 8
%var_2_195 = add i64 %var_2_194, -8
; Matched:%var_2_168:  %var_2_168 = inttoptr i64 %var_2_167 to i64*
; %var_2_196 = inttoptr i64 %var_2_195 to i64*
; Matched:\<badref\>:  store i64 %var_2_165, i64* %var_2_168, align 8
; store i64 %var_2_193, i64* %var_2_196, align 8
; Matched:\<badref\>:  store i64 %var_2_190, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_195, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_187, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_192, i64* %var_2_3, align 8
%call2_400762 = tail call %struct.Memory* @sub_400660.make_vec(%struct.State* %0, i64 %var_2_192, %struct.Memory* %call2_40074a)
%var_2_197 = load i64, i64* %var_2_3, align 8
%var_2_198 = add i64 %var_2_197, ptrtoint (%G_0x4c9__rip__type* @G_0x4c9__rip_ to i64)
%var_2_199 = add i64 %var_2_197, 8
store i64 %var_2_199, i64* %var_2_3, align 8
%var_2_200 = inttoptr i64 %var_2_198 to i64*
%var_2_201 = load i64, i64* %var_2_200, align 8
store i64 %var_2_201, i64* %var_2_112, align 1
store double 0.000000e+00, double* %var_2_114, align 1
%var_2_202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
%var_2_203 = add i64 %var_2_197, add (i64 ptrtoint (%G_0x4d1__rip__type* @G_0x4d1__rip_ to i64), i64 8)
%var_2_204 = add i64 %var_2_197, 16
store i64 %var_2_204, i64* %var_2_3, align 8
%var_2_205 = inttoptr i64 %var_2_203 to i64*
%var_2_206 = load i64, i64* %var_2_205, align 8
%var_2_207 = bitcast %union.VectorReg* %var_2_202 to double*
%var_2_208 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_202, i64 0, i32 0, i32 0, i32 0, i64 0
store i64 %var_2_206, i64* %var_2_208, align 1
%var_2_209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_199:  %var_2_199 = bitcast i64* %var_2_198 to double*
; %var_2_210 = bitcast i64* %var_2_209 to double*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_199, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_210, align 1
; Matched:%var_2_200:  %var_2_200 = load i64, i64* %RBP, align 8
; %var_2_211 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_201:  %var_2_201 = add i64 %var_2_200, -208
; %var_2_212 = add i64 %var_2_211, -208
; Matched:%var_2_513:  %var_2_513 = add i64 %var_2_498, 24
; %var_2_213 = add i64 %var_2_197, 24
; Matched:\<badref\>:  store i64 %var_2_1088, i64* %PC, align 8
; store i64 %var_2_213, i64* %var_2_3, align 8
; Matched:%var_2_203:  %var_2_203 = load i64, i64* %var_2_73, align 1
; %var_2_214 = load i64, i64* %var_2_71, align 1
; Matched:%var_2_204:  %var_2_204 = load i64, i64* %var_2_45, align 1
; %var_2_215 = load i64, i64* %var_2_42, align 1
; Matched:%var_2_205:  %var_2_205 = inttoptr i64 %var_2_201 to i64*
; %var_2_216 = inttoptr i64 %var_2_212 to i64*
; Matched:\<badref\>:  store i64 %var_2_203, i64* %var_2_205, align 8
; store i64 %var_2_214, i64* %var_2_216, align 8
; Matched:%var_2_206:  %var_2_206 = add i64 %var_2_200, -200
; %var_2_217 = add i64 %var_2_211, -200
; Matched:%var_2_207:  %var_2_207 = inttoptr i64 %var_2_206 to i64*
; %var_2_218 = inttoptr i64 %var_2_217 to i64*
; Matched:\<badref\>:  store i64 %var_2_204, i64* %var_2_207, align 8
; store i64 %var_2_215, i64* %var_2_218, align 8
%var_2_219 = load i64, i64* %var_2_3, align 8
%var_2_220 = load <2 x i32>, <2 x i32>* %var_2_134, align 1
%var_2_221 = load <2 x i32>, <2 x i32>* %var_2_136, align 1
%var_2_222 = extractelement <2 x i32> %var_2_220, i32 0
; Matched:\<badref\>:  store i32 %var_2_183, i32* %var_2_46, align 1, !tbaa !1287
; store i32 %var_2_222, i32* %var_2_43, align 1
%var_2_223 = extractelement <2 x i32> %var_2_220, i32 1
; Matched:\<badref\>:  store i32 %var_2_161, i32* %var_2_48, align 1, !tbaa !1287
; store i32 %var_2_223, i32* %var_2_45, align 1
%var_2_224 = extractelement <2 x i32> %var_2_221, i32 0
; Matched:\<badref\>:  store i32 %var_2_162, i32* %var_2_49, align 1, !tbaa !1287
; store i32 %var_2_224, i32* %var_2_46, align 1
%var_2_225 = extractelement <2 x i32> %var_2_221, i32 1
; Matched:\<badref\>:  store i32 %var_2_252, i32* %var_2_51, align 1, !tbaa !1287
; store i32 %var_2_225, i32* %var_2_48, align 1
%var_2_226 = bitcast %union.VectorReg* %var_2_202 to <2 x i32>*
%var_2_227 = load <2 x i32>, <2 x i32>* %var_2_226, align 1
%var_2_228 = bitcast i64* %var_2_209 to <2 x i32>*
%var_2_229 = load <2 x i32>, <2 x i32>* %var_2_228, align 1
%var_2_230 = extractelement <2 x i32> %var_2_227, i32 0
%var_2_231 = bitcast %union.VectorReg* %var_2_103 to i32*
; Matched:\<badref\>:  store i32 %var_2_219, i32* %var_2_220, align 1, !tbaa !1287
; store i32 %var_2_230, i32* %var_2_231, align 1
%var_2_232 = extractelement <2 x i32> %var_2_227, i32 1
%var_2_233 = getelementptr inbounds i8, i8* %var_2_104, i64 4
%var_2_234 = bitcast i8* %var_2_233 to i32*
; Matched:\<badref\>:  store i32 %var_2_221, i32* %var_2_223, align 1, !tbaa !1287
; store i32 %var_2_232, i32* %var_2_234, align 1
%var_2_235 = extractelement <2 x i32> %var_2_229, i32 0
%var_2_236 = bitcast i64* %var_2_113 to i32*
; Matched:\<badref\>:  store i32 %var_2_224, i32* %var_2_225, align 1, !tbaa !1287
; store i32 %var_2_235, i32* %var_2_236, align 1
%var_2_237 = extractelement <2 x i32> %var_2_229, i32 1
%var_2_238 = getelementptr inbounds i8, i8* %var_2_104, i64 12
%var_2_239 = bitcast i8* %var_2_238 to i32*
; Matched:\<badref\>:  store i32 %var_2_258, i32* %var_2_228, align 1, !tbaa !1287
; store i32 %var_2_237, i32* %var_2_239, align 1
%var_2_240 = add i64 %var_2_219, -287
; Matched:%var_2_230:  %var_2_230 = add i64 %var_2_208, 11
; %var_2_241 = add i64 %var_2_219, 11
%var_2_242 = load i64, i64* %var_2_6, align 8
%var_2_243 = add i64 %var_2_242, -8
; Matched:%var_2_233:  %var_2_233 = inttoptr i64 %var_2_232 to i64*
; %var_2_244 = inttoptr i64 %var_2_243 to i64*
; Matched:\<badref\>:  store i64 %var_2_230, i64* %var_2_233, align 8
; store i64 %var_2_241, i64* %var_2_244, align 8
; Matched:\<badref\>:  store i64 %var_2_704, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_243, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_229, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_240, i64* %var_2_3, align 8
%call2_400785 = tail call %struct.Memory* @sub_400660.make_vec(%struct.State* %0, i64 %var_2_240, %struct.Memory* %call2_400762)
%var_2_245 = load i64, i64* %var_2_3, align 8
%var_2_246 = add i64 %var_2_245, ptrtoint (%G_0x4a6__rip__type* @G_0x4a6__rip_ to i64)
%var_2_247 = add i64 %var_2_245, 8
store i64 %var_2_247, i64* %var_2_3, align 8
%var_2_248 = inttoptr i64 %var_2_246 to i64*
%var_2_249 = load i64, i64* %var_2_248, align 8
store i64 %var_2_249, i64* %var_2_112, align 1
store double 0.000000e+00, double* %var_2_114, align 1
%var_2_250 = add i64 %var_2_245, add (i64 ptrtoint (%G_0x4a6__rip__type* @G_0x4a6__rip_ to i64), i64 8)
%var_2_251 = add i64 %var_2_245, 16
store i64 %var_2_251, i64* %var_2_3, align 8
%var_2_252 = inttoptr i64 %var_2_250 to i64*
%var_2_253 = load i64, i64* %var_2_252, align 8
store i64 %var_2_253, i64* %var_2_208, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_199, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_210, align 1
; Matched:%var_2_238:  %var_2_238 = load i64, i64* %RBP, align 8
; %var_2_254 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_239:  %var_2_239 = add i64 %var_2_238, -192
; %var_2_255 = add i64 %var_2_254, -192
; Matched:%var_2_240:  %var_2_240 = add i64 %var_2_235, 24
; %var_2_256 = add i64 %var_2_245, 24
; Matched:\<badref\>:  store i64 %var_2_513, i64* %PC, align 8
; store i64 %var_2_256, i64* %var_2_3, align 8
; Matched:%var_2_241:  %var_2_241 = load i64, i64* %var_2_73, align 1
; %var_2_257 = load i64, i64* %var_2_71, align 1
; Matched:%var_2_242:  %var_2_242 = load i64, i64* %var_2_45, align 1
; %var_2_258 = load i64, i64* %var_2_42, align 1
; Matched:%var_2_243:  %var_2_243 = inttoptr i64 %var_2_239 to i64*
; %var_2_259 = inttoptr i64 %var_2_255 to i64*
; Matched:\<badref\>:  store i64 %var_2_241, i64* %var_2_243, align 8
; store i64 %var_2_257, i64* %var_2_259, align 8
; Matched:%var_2_244:  %var_2_244 = add i64 %var_2_238, -184
; %var_2_260 = add i64 %var_2_254, -184
; Matched:%var_2_245:  %var_2_245 = inttoptr i64 %var_2_244 to i64*
; %var_2_261 = inttoptr i64 %var_2_260 to i64*
; Matched:\<badref\>:  store i64 %var_2_242, i64* %var_2_245, align 8
; store i64 %var_2_258, i64* %var_2_261, align 8
%var_2_262 = load i64, i64* %var_2_3, align 8
%var_2_263 = load <2 x i32>, <2 x i32>* %var_2_134, align 1
%var_2_264 = load <2 x i32>, <2 x i32>* %var_2_136, align 1
%var_2_265 = extractelement <2 x i32> %var_2_263, i32 0
; Matched:\<badref\>:  store i32 %var_2_160, i32* %var_2_46, align 1, !tbaa !1287
; store i32 %var_2_265, i32* %var_2_43, align 1
%var_2_266 = extractelement <2 x i32> %var_2_263, i32 1
; Matched:\<badref\>:  store i32 %var_2_250, i32* %var_2_48, align 1, !tbaa !1287
; store i32 %var_2_266, i32* %var_2_45, align 1
%var_2_267 = extractelement <2 x i32> %var_2_264, i32 0
; Matched:\<badref\>:  store i32 %var_2_139, i32* %var_2_49, align 1, !tbaa !1287
; store i32 %var_2_267, i32* %var_2_46, align 1
%var_2_268 = extractelement <2 x i32> %var_2_264, i32 1
; Matched:\<badref\>:  store i32 %var_2_163, i32* %var_2_51, align 1, !tbaa !1287
; store i32 %var_2_268, i32* %var_2_48, align 1
%var_2_269 = load <2 x i32>, <2 x i32>* %var_2_226, align 1
%var_2_270 = load <2 x i32>, <2 x i32>* %var_2_228, align 1
%var_2_271 = extractelement <2 x i32> %var_2_269, i32 0
; Matched:\<badref\>:  store i32 %var_2_255, i32* %var_2_220, align 1, !tbaa !1287
; store i32 %var_2_271, i32* %var_2_231, align 1
%var_2_272 = extractelement <2 x i32> %var_2_269, i32 1
; Matched:\<badref\>:  store i32 %var_2_256, i32* %var_2_223, align 1, !tbaa !1287
; store i32 %var_2_272, i32* %var_2_234, align 1
%var_2_273 = extractelement <2 x i32> %var_2_270, i32 0
; Matched:\<badref\>:  store i32 %var_2_257, i32* %var_2_225, align 1, !tbaa !1287
; store i32 %var_2_273, i32* %var_2_236, align 1
%var_2_274 = extractelement <2 x i32> %var_2_270, i32 1
; Matched:\<badref\>:  store i32 %var_2_226, i32* %var_2_228, align 1, !tbaa !1287
; store i32 %var_2_274, i32* %var_2_239, align 1
%var_2_275 = add i64 %var_2_262, -322
; Matched:%var_2_260:  %var_2_260 = add i64 %var_2_246, 11
; %var_2_276 = add i64 %var_2_262, 11
%var_2_277 = load i64, i64* %var_2_6, align 8
%var_2_278 = add i64 %var_2_277, -8
; Matched:%var_2_263:  %var_2_263 = inttoptr i64 %var_2_262 to i64*
; %var_2_279 = inttoptr i64 %var_2_278 to i64*
; Matched:\<badref\>:  store i64 %var_2_260, i64* %var_2_263, align 8
; store i64 %var_2_276, i64* %var_2_279, align 8
; Matched:\<badref\>:  store i64 %var_2_232, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_278, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_259, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_275, i64* %var_2_3, align 8
%call2_4007a8 = tail call %struct.Memory* @sub_400660.make_vec(%struct.State* %0, i64 %var_2_275, %struct.Memory* %call2_400785)
%var_2_280 = load i64, i64* %var_2_3, align 8
%var_2_281 = add i64 %var_2_280, ptrtoint (%G_0x483__rip__type* @G_0x483__rip_ to i64)
%var_2_282 = add i64 %var_2_280, 8
store i64 %var_2_282, i64* %var_2_3, align 8
%var_2_283 = inttoptr i64 %var_2_281 to i64*
%var_2_284 = load i64, i64* %var_2_283, align 8
store i64 %var_2_284, i64* %var_2_112, align 1
store double 0.000000e+00, double* %var_2_114, align 1
; Matched:%var_2_267:  %var_2_267 = load i64, i64* %RBP, align 8
; %var_2_285 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_268:  %var_2_268 = add i64 %var_2_267, -240
; %var_2_286 = add i64 %var_2_285, -240
%var_2_287 = add i64 %var_2_280, 16
store i64 %var_2_287, i64* %var_2_3, align 8
; Matched:%var_2_270:  %var_2_270 = load i64, i64* %var_2_73, align 1
; %var_2_288 = load i64, i64* %var_2_71, align 1
; Matched:%var_2_271:  %var_2_271 = load i64, i64* %var_2_45, align 1
; %var_2_289 = load i64, i64* %var_2_42, align 1
; Matched:%var_2_272:  %var_2_272 = inttoptr i64 %var_2_268 to i64*
; %var_2_290 = inttoptr i64 %var_2_286 to i64*
; Matched:\<badref\>:  store i64 %var_2_270, i64* %var_2_272, align 8
; store i64 %var_2_288, i64* %var_2_290, align 8
; Matched:%var_2_273:  %var_2_273 = add i64 %var_2_267, -232
; %var_2_291 = add i64 %var_2_285, -232
; Matched:%var_2_274:  %var_2_274 = inttoptr i64 %var_2_273 to i64*
; %var_2_292 = inttoptr i64 %var_2_291 to i64*
; Matched:\<badref\>:  store i64 %var_2_271, i64* %var_2_274, align 8
; store i64 %var_2_289, i64* %var_2_292, align 8
; Matched:%var_2_275:  %var_2_275 = load i64, i64* %RBP, align 8
; %var_2_293 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_276:  %var_2_276 = add i64 %var_2_275, -144
; %var_2_294 = add i64 %var_2_293, -144
%var_2_295 = load i64, i64* %var_2_3, align 8
%var_2_296 = add i64 %var_2_295, 8
store i64 %var_2_296, i64* %var_2_3, align 8
; Matched:%var_2_279:  %var_2_279 = inttoptr i64 %var_2_276 to i64*
; %var_2_297 = inttoptr i64 %var_2_294 to i64*
; Matched:%var_2_280:  %var_2_280 = load i64, i64* %var_2_279, align 8
; %var_2_298 = load i64, i64* %var_2_297, align 8
; Matched:%var_2_281:  %var_2_281 = add i64 %var_2_275, -136
; %var_2_299 = add i64 %var_2_293, -136
; Matched:%var_2_282:  %var_2_282 = inttoptr i64 %var_2_281 to i64*
; %var_2_300 = inttoptr i64 %var_2_299 to i64*
; Matched:%var_2_283:  %var_2_283 = load i64, i64* %var_2_282, align 8
; %var_2_301 = load i64, i64* %var_2_300, align 8
; Matched:\<badref\>:  store i64 %var_2_280, i64* %var_2_73, align 1, !tbaa !1285
; store i64 %var_2_298, i64* %var_2_71, align 1
%var_2_302 = bitcast i64* %var_2_42 to double*
; Matched:\<badref\>:  store i64 %var_2_283, i64* %var_2_45, align 1, !tbaa !1285
; store i64 %var_2_301, i64* %var_2_42, align 1
; Matched:%var_2_285:  %var_2_285 = add i64 %var_2_275, -128
; %var_2_303 = add i64 %var_2_293, -128
; Matched:%var_2_934:  %var_2_934 = add i64 %var_2_930, 13
; %var_2_304 = add i64 %var_2_295, 13
; Matched:\<badref\>:  store i64 %var_2_286, i64* %PC, align 8
; store i64 %var_2_304, i64* %var_2_3, align 8
; Matched:%var_2_287:  %var_2_287 = inttoptr i64 %var_2_285 to i64*
; %var_2_305 = inttoptr i64 %var_2_303 to i64*
; Matched:\<badref\>:  store i64 %var_2_280, i64* %var_2_287, align 8
; store i64 %var_2_298, i64* %var_2_305, align 8
; Matched:%var_2_288:  %var_2_288 = add i64 %var_2_275, -120
; %var_2_306 = add i64 %var_2_293, -120
; Matched:%var_2_289:  %var_2_289 = inttoptr i64 %var_2_288 to i64*
; %var_2_307 = inttoptr i64 %var_2_306 to i64*
; Matched:\<badref\>:  store i64 %var_2_283, i64* %var_2_289, align 8
; store i64 %var_2_301, i64* %var_2_307, align 8
; Matched:%var_2_290:  %var_2_290 = load i64, i64* %RBP, align 8
; %var_2_308 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_291:  %var_2_291 = add i64 %var_2_290, -112
; %var_2_309 = add i64 %var_2_308, -112
%var_2_310 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_737:  %var_2_737 = add i64 %var_2_736, 5
; %var_2_311 = add i64 %var_2_310, 5
; Matched:\<badref\>:  store i64 %var_2_737, i64* %PC, align 8
; store i64 %var_2_311, i64* %var_2_3, align 8
; Matched:%var_2_294:  %var_2_294 = load i64, i64* %var_2_73, align 1
; %var_2_312 = load i64, i64* %var_2_71, align 1
; Matched:%var_2_295:  %var_2_295 = load i64, i64* %var_2_45, align 1
; %var_2_313 = load i64, i64* %var_2_42, align 1
; Matched:%var_2_296:  %var_2_296 = inttoptr i64 %var_2_291 to i64*
; %var_2_314 = inttoptr i64 %var_2_309 to i64*
; Matched:\<badref\>:  store i64 %var_2_294, i64* %var_2_296, align 8
; store i64 %var_2_312, i64* %var_2_314, align 8
; Matched:%var_2_297:  %var_2_297 = add i64 %var_2_290, -104
; %var_2_315 = add i64 %var_2_308, -104
; Matched:%var_2_298:  %var_2_298 = inttoptr i64 %var_2_297 to i64*
; %var_2_316 = inttoptr i64 %var_2_315 to i64*
; Matched:\<badref\>:  store i64 %var_2_295, i64* %var_2_298, align 8
; store i64 %var_2_313, i64* %var_2_316, align 8
; Matched:%var_2_299:  %var_2_299 = load i64, i64* %RBP, align 8
; %var_2_317 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_300:  %var_2_300 = add i64 %var_2_299, -96
; %var_2_318 = add i64 %var_2_317, -96
%var_2_319 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_79:  %var_2_79 = add i64 %var_2_78, 5
; %var_2_320 = add i64 %var_2_319, 5
; Matched:\<badref\>:  store i64 %var_2_764, i64* %PC, align 8
; store i64 %var_2_320, i64* %var_2_3, align 8
; Matched:%var_2_303:  %var_2_303 = load i64, i64* %var_2_73, align 1
; %var_2_321 = load i64, i64* %var_2_71, align 1
; Matched:%var_2_304:  %var_2_304 = load i64, i64* %var_2_45, align 1
; %var_2_322 = load i64, i64* %var_2_42, align 1
; Matched:%var_2_305:  %var_2_305 = inttoptr i64 %var_2_300 to i64*
; %var_2_323 = inttoptr i64 %var_2_318 to i64*
; Matched:\<badref\>:  store i64 %var_2_303, i64* %var_2_305, align 8
; store i64 %var_2_321, i64* %var_2_323, align 8
; Matched:%var_2_306:  %var_2_306 = add i64 %var_2_299, -88
; %var_2_324 = add i64 %var_2_317, -88
; Matched:%var_2_307:  %var_2_307 = inttoptr i64 %var_2_306 to i64*
; %var_2_325 = inttoptr i64 %var_2_324 to i64*
; Matched:\<badref\>:  store i64 %var_2_304, i64* %var_2_307, align 8
; store i64 %var_2_322, i64* %var_2_325, align 8
; Matched:%var_2_308:  %var_2_308 = load i64, i64* %RBP, align 8
; %var_2_326 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_309:  %var_2_309 = add i64 %var_2_308, -80
; %var_2_327 = add i64 %var_2_326, -80
%var_2_328 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_91:  %var_2_91 = add i64 %var_2_90, 5
; %var_2_329 = add i64 %var_2_328, 5
; Matched:\<badref\>:  store i64 %var_2_91, i64* %PC, align 8
; store i64 %var_2_329, i64* %var_2_3, align 8
; Matched:%var_2_312:  %var_2_312 = load i64, i64* %var_2_73, align 1
; %var_2_330 = load i64, i64* %var_2_71, align 1
; Matched:%var_2_313:  %var_2_313 = load i64, i64* %var_2_45, align 1
; %var_2_331 = load i64, i64* %var_2_42, align 1
; Matched:%var_2_314:  %var_2_314 = inttoptr i64 %var_2_309 to i64*
; %var_2_332 = inttoptr i64 %var_2_327 to i64*
; Matched:\<badref\>:  store i64 %var_2_312, i64* %var_2_314, align 8
; store i64 %var_2_330, i64* %var_2_332, align 8
; Matched:%var_2_315:  %var_2_315 = add i64 %var_2_308, -72
; %var_2_333 = add i64 %var_2_326, -72
; Matched:%var_2_316:  %var_2_316 = inttoptr i64 %var_2_315 to i64*
; %var_2_334 = inttoptr i64 %var_2_333 to i64*
; Matched:\<badref\>:  store i64 %var_2_313, i64* %var_2_316, align 8
; store i64 %var_2_331, i64* %var_2_334, align 8
; Matched:%var_2_317:  %var_2_317 = load i64, i64* %RBP, align 8
; %var_2_335 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_318:  %var_2_318 = add i64 %var_2_317, -64
; %var_2_336 = add i64 %var_2_335, -64
%var_2_337 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_293:  %var_2_293 = add i64 %var_2_292, 5
; %var_2_338 = add i64 %var_2_337, 5
; Matched:\<badref\>:  store i64 %var_2_293, i64* %PC, align 8
; store i64 %var_2_338, i64* %var_2_3, align 8
; Matched:%var_2_321:  %var_2_321 = load i64, i64* %var_2_73, align 1
; %var_2_339 = load i64, i64* %var_2_71, align 1
; Matched:%var_2_322:  %var_2_322 = load i64, i64* %var_2_45, align 1
; %var_2_340 = load i64, i64* %var_2_42, align 1
; Matched:%var_2_323:  %var_2_323 = inttoptr i64 %var_2_318 to i64*
; %var_2_341 = inttoptr i64 %var_2_336 to i64*
; Matched:\<badref\>:  store i64 %var_2_321, i64* %var_2_323, align 8
; store i64 %var_2_339, i64* %var_2_341, align 8
; Matched:%var_2_324:  %var_2_324 = add i64 %var_2_317, -56
; %var_2_342 = add i64 %var_2_335, -56
; Matched:%var_2_325:  %var_2_325 = inttoptr i64 %var_2_324 to i64*
; %var_2_343 = inttoptr i64 %var_2_342 to i64*
; Matched:\<badref\>:  store i64 %var_2_322, i64* %var_2_325, align 8
; store i64 %var_2_340, i64* %var_2_343, align 8
; Matched:%var_2_326:  %var_2_326 = load i64, i64* %RBP, align 8
; %var_2_344 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_327:  %var_2_327 = add i64 %var_2_326, -248
; %var_2_345 = add i64 %var_2_344, -248
%var_2_346 = load i64, i64* %var_2_3, align 8
%var_2_347 = add i64 %var_2_346, 8
store i64 %var_2_347, i64* %var_2_3, align 8
; Matched:%var_2_330:  %var_2_330 = load i64, i64* %var_2_113, align 1
; %var_2_348 = load i64, i64* %var_2_112, align 1
; Matched:%var_2_331:  %var_2_331 = inttoptr i64 %var_2_327 to i64*
; %var_2_349 = inttoptr i64 %var_2_345 to i64*
; Matched:\<badref\>:  store i64 %var_2_330, i64* %var_2_331, align 8
; store i64 %var_2_348, i64* %var_2_349, align 8
%.pre = load i64, i64* %var_2_3, align 8
  br label %block_.L_4007e6

block_.L_4007e6:                                  ; preds = %block_400800, %entry
%var_2_350 = phi i64 [ %.pre, %entry ], [ %var_2_578, %block_400800 ]
  %MEMORY.0 = phi %struct.Memory* [ %call2_4007a8, %entry ], [ %call2_40089e, %block_400800 ]
%var_2_351 = load i64, i64* %RBP.i, align 8
%var_2_352 = add i64 %var_2_351, -248
; Matched:%var_2_580:  %var_2_580 = add i64 %var_2_577, 8
; %var_2_353 = add i64 %var_2_350, 8
; Matched:\<badref\>:  store i64 %var_2_580, i64* %PC, align 8
; store i64 %var_2_353, i64* %var_2_3, align 8
%var_2_354 = inttoptr i64 %var_2_352 to i64*
%var_2_355 = load i64, i64* %var_2_354, align 8
; Matched:\<badref\>:  store i64 %var_2_995, i64* %var_2_73, align 1, !tbaa !1285
; store i64 %var_2_355, i64* %var_2_71, align 1
store double 0.000000e+00, double* %var_2_302, align 1
%var_2_356 = add i64 %var_2_351, -276
; Matched:%var_2_584:  %var_2_584 = add i64 %var_2_577, 16
; %var_2_357 = add i64 %var_2_350, 16
; Matched:\<badref\>:  store i64 %var_2_584, i64* %PC, align 8
; store i64 %var_2_357, i64* %var_2_3, align 8
%var_2_358 = inttoptr i64 %var_2_356 to i32*
%var_2_359 = load i32, i32* %var_2_358, align 4
%var_2_360 = sitofp i32 %var_2_359 to double
; Matched:\<badref\>:  store double %var_2_882, double* %var_2_112, align 1, !tbaa !1285
; store double %var_2_360, double* %var_2_111, align 1
%var_2_361 = add i64 %var_2_350, 20
; Matched:\<badref\>:  store i64 %var_2_588, i64* %PC, align 8
; store i64 %var_2_361, i64* %var_2_3, align 8
%var_2_362 = bitcast i64 %var_2_355 to double
%var_2_363 = fcmp uno double %var_2_360, %var_2_362
br i1 %var_2_363, label %var_2_364, label %var_2_374

var_2_364:
%var_2_365 = fadd double %var_2_360, %var_2_362
%var_2_366 = bitcast double %var_2_365 to i64
%var_2_367 = and i64 %var_2_366, 9221120237041090560
%var_2_368 = icmp eq i64 %var_2_367, 9218868437227405312
%var_2_369 = and i64 %var_2_366, 2251799813685247
%var_2_370 = icmp ne i64 %var_2_369, 0
%var_2_371 = and i1 %var_2_368, %var_2_370
br i1 %var_2_371, label %var_2_372, label %var_2_380

var_2_372:
%var_2_373 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %var_2_361, %struct.Memory* %MEMORY.0)
%.pre12 = load i64, i64* %var_2_3, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit384

var_2_374:
%var_2_375 = fcmp ogt double %var_2_360, %var_2_362
br i1 %var_2_375, label %var_2_380, label %var_2_376

var_2_376:
%var_2_377 = fcmp olt double %var_2_360, %var_2_362
br i1 %var_2_377, label %var_2_380, label %var_2_378

var_2_378:
%var_2_379 = fcmp oeq double %var_2_360, %var_2_362
br i1 %var_2_379, label %var_2_380, label %var_2_384

var_2_380:
; Matched:%var_2_903:  %var_2_903 = phi i8 [ 0, %var_2_896 ], [ 0, %var_2_898 ], [ 1, %var_2_900 ], [ 1, %var_2_886 ]
; %var_2_381 = phi i8 [ 0, %var_2_374 ], [ 0, %var_2_376 ], [ 1, %var_2_378 ], [ 1, %var_2_364 ]
; Matched:%var_2_904:  %var_2_904 = phi i8 [ 0, %var_2_896 ], [ 0, %var_2_898 ], [ 0, %var_2_900 ], [ 1, %var_2_886 ]
; %var_2_382 = phi i8 [ 0, %var_2_374 ], [ 0, %var_2_376 ], [ 0, %var_2_378 ], [ 1, %var_2_364 ]
; Matched:%var_2_905:  %var_2_905 = phi i8 [ 0, %var_2_896 ], [ 1, %var_2_898 ], [ 0, %var_2_900 ], [ 1, %var_2_886 ]
; %var_2_383 = phi i8 [ 0, %var_2_374 ], [ 1, %var_2_376 ], [ 0, %var_2_378 ], [ 1, %var_2_364 ]
; Matched:\<badref\>:  store i8 %var_2_903, i8* %var_2_34, align 1, !tbaa !1289
; store i8 %var_2_381, i8* %var_2_30, align 1
; Matched:\<badref\>:  store i8 %var_2_609, i8* %var_2_25, align 1, !tbaa !1289
; store i8 %var_2_382, i8* %var_2_21, align 1
; Matched:\<badref\>:  store i8 %var_2_610, i8* %var_2_18, align 1, !tbaa !1289
; store i8 %var_2_383, i8* %var_2_14, align 1
br label %var_2_384

var_2_384:
store i8 0, i8* %var_2_39, align 1
store i8 0, i8* %var_2_33, align 1
store i8 0, i8* %var_2_27, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit384

routine_ucomisd__xmm0___xmm1.exit384:             ; preds = %var_2_384, %var_2_372
%var_2_385 = phi i64 [ %.pre12, %var_2_372 ], [ %var_2_361, %var_2_384 ]
%var_2_386 = phi %struct.Memory* [ %var_2_373, %var_2_372 ], [ %MEMORY.0, %var_2_384 ]
%var_2_387 = load i8, i8* %var_2_14, align 1
%var_2_388 = icmp ne i8 %var_2_387, 0
%.v = select i1 %var_2_388, i64 298, i64 6
%var_2_389 = add i64 %var_2_385, %.v
; Matched:\<badref\>:  store i64 %var_2_616, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_389, i64* %var_2_3, align 8
%cmpBr_4007fa = icmp eq i8 %var_2_387, 1
  br i1 %cmpBr_4007fa, label %block_.L_400924, label %block_400800

block_400800:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit384
%var_2_390 = add i64 %var_2_389, ptrtoint (%G_0x448__rip__type* @G_0x448__rip_ to i64)
; Matched:%var_2_858:  %var_2_858 = add i64 %var_2_616, 8
; %var_2_391 = add i64 %var_2_389, 8
; Matched:\<badref\>:  store i64 %var_2_858, i64* %PC, align 8
; store i64 %var_2_391, i64* %var_2_3, align 8
%var_2_392 = inttoptr i64 %var_2_390 to i64*
%var_2_393 = load i64, i64* %var_2_392, align 8
store i64 %var_2_393, i64* %var_2_71, align 1
store double 0.000000e+00, double* %var_2_302, align 1
%var_2_394 = add i64 %var_2_389, add (i64 ptrtoint (%G_0x428__rip__type* @G_0x428__rip_ to i64), i64 8)
; Matched:%var_2_865:  %var_2_865 = add i64 %var_2_616, 16
; %var_2_395 = add i64 %var_2_389, 16
; Matched:\<badref\>:  store i64 %var_2_865, i64* %PC, align 8
; store i64 %var_2_395, i64* %var_2_3, align 8
%var_2_396 = inttoptr i64 %var_2_394 to i64*
%var_2_397 = load i64, i64* %var_2_396, align 8
store i64 %var_2_397, i64* %var_2_112, align 1
store double 0.000000e+00, double* %var_2_114, align 1
%var_2_398 = load i64, i64* %RBP.i, align 8
%var_2_399 = add i64 %var_2_398, -248
; Matched:%var_2_917:  %var_2_917 = add i64 %var_2_616, 24
; %var_2_400 = add i64 %var_2_389, 24
; Matched:\<badref\>:  store i64 %var_2_917, i64* %PC, align 8
; store i64 %var_2_400, i64* %var_2_3, align 8
%var_2_401 = inttoptr i64 %var_2_399 to double*
%var_2_402 = load double, double* %var_2_401, align 8
%var_2_403 = bitcast i64 %var_2_397 to double
%var_2_404 = fsub double %var_2_402, %var_2_403
store double %var_2_404, double* %var_2_207, align 1
store i64 0, i64* %var_2_209, align 1
%.cast2 = bitcast double %var_2_404 to <2 x i32>
%var_2_405 = extractelement <2 x i32> %.cast2, i32 0
store i32 %var_2_405, i32* %var_2_231, align 1
%var_2_406 = extractelement <2 x i32> %.cast2, i32 1
store i32 %var_2_406, i32* %var_2_234, align 1
store i32 0, i32* %var_2_236, align 1
store i32 0, i32* %var_2_239, align 1
; Matched:%var_2_924:  %var_2_924 = add i64 %var_2_616, -720
; %var_2_407 = add i64 %var_2_389, -720
; Matched:%var_2_925:  %var_2_925 = add i64 %var_2_616, 36
; %var_2_408 = add i64 %var_2_389, 36
%var_2_409 = load i64, i64* %var_2_6, align 8
%var_2_410 = add i64 %var_2_409, -8
; Matched:%var_2_928:  %var_2_928 = inttoptr i64 %var_2_927 to i64*
; %var_2_411 = inttoptr i64 %var_2_410 to i64*
; Matched:\<badref\>:  store i64 %var_2_925, i64* %var_2_928, align 8
; store i64 %var_2_408, i64* %var_2_411, align 8
; Matched:\<badref\>:  store i64 %var_2_785, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_410, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_924, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_407, i64* %var_2_3, align 8
%var_2_412 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @pow to i64), %struct.Memory* %var_2_386)
%var_2_413 = load i64, i64* %var_2_3, align 8
%var_2_414 = add i64 %var_2_413, ptrtoint (%G_0x40c__rip__type* @G_0x40c__rip_ to i64)
%var_2_415 = add i64 %var_2_413, 8
store i64 %var_2_415, i64* %var_2_3, align 8
%var_2_416 = inttoptr i64 %var_2_414 to i64*
%var_2_417 = load i64, i64* %var_2_416, align 8
store i64 %var_2_417, i64* %var_2_112, align 1
store double 0.000000e+00, double* %var_2_114, align 1
; Matched:%var_2_932:  %var_2_932 = load i64, i64* %RBP, align 8
; %var_2_418 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_933:  %var_2_933 = add i64 %var_2_932, -24
; %var_2_419 = add i64 %var_2_418, -24
; Matched:%var_2_286:  %var_2_286 = add i64 %var_2_277, 13
; %var_2_420 = add i64 %var_2_413, 13
; Matched:\<badref\>:  store i64 %var_2_934, i64* %PC, align 8
; store i64 %var_2_420, i64* %var_2_3, align 8
; Matched:%var_2_935:  %var_2_935 = load double, double* %var_2_72, align 1
; %var_2_421 = load double, double* %var_2_70, align 1
; Matched:%var_2_936:  %var_2_936 = inttoptr i64 %var_2_933 to double*
; %var_2_422 = inttoptr i64 %var_2_419 to double*
; Matched:%var_2_937:  %var_2_937 = load double, double* %var_2_936, align 8
; %var_2_423 = load double, double* %var_2_422, align 8
; Matched:%var_2_938:  %var_2_938 = fadd double %var_2_935, %var_2_937
; %var_2_424 = fadd double %var_2_421, %var_2_423
; Matched:\<badref\>:  store double %var_2_938, double* %var_2_72, align 1, !tbaa !1285
; store double %var_2_424, double* %var_2_70, align 1
; Matched:%var_2_939:  %var_2_939 = add i64 %var_2_930, 18
; %var_2_425 = add i64 %var_2_413, 18
; Matched:\<badref\>:  store i64 %var_2_939, i64* %PC, align 8
; store i64 %var_2_425, i64* %var_2_3, align 8
; Matched:%var_2_940:  %var_2_940 = inttoptr i64 %var_2_933 to double*
; %var_2_426 = inttoptr i64 %var_2_419 to double*
; Matched:\<badref\>:  store double %var_2_938, double* %var_2_940, align 8
; store double %var_2_424, double* %var_2_426, align 8
%var_2_427 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1009:  %var_2_1009 = add i64 %var_2_1008, -248
; %var_2_428 = add i64 %var_2_427, -248
%var_2_429 = load i64, i64* %var_2_3, align 8
%var_2_430 = add i64 %var_2_429, 8
store i64 %var_2_430, i64* %var_2_3, align 8
; Matched:%var_2_977:  %var_2_977 = inttoptr i64 %var_2_974 to i64*
; %var_2_431 = inttoptr i64 %var_2_428 to i64*
; Matched:%var_2_1013:  %var_2_1013 = load i64, i64* %var_2_1012, align 8
; %var_2_432 = load i64, i64* %var_2_431, align 8
; Matched:\<badref\>:  store i64 %var_2_1013, i64* %var_2_73, align 1, !tbaa !1285
; store i64 %var_2_432, i64* %var_2_71, align 1
store double 0.000000e+00, double* %var_2_302, align 1
; Matched:%var_2_947:  %var_2_947 = add i64 %var_2_941, -296
; %var_2_433 = add i64 %var_2_427, -296
%var_2_434 = add i64 %var_2_429, 16
store i64 %var_2_434, i64* %var_2_3, align 8
; Matched:%var_2_949:  %var_2_949 = load i64, i64* %var_2_113, align 1
; %var_2_435 = load i64, i64* %var_2_112, align 1
; Matched:%var_2_950:  %var_2_950 = inttoptr i64 %var_2_947 to i64*
; %var_2_436 = inttoptr i64 %var_2_433 to i64*
; Matched:\<badref\>:  store i64 %var_2_949, i64* %var_2_950, align 8
; store i64 %var_2_435, i64* %var_2_436, align 8
%var_2_437 = load i64, i64* %var_2_3, align 8
%var_2_438 = add i64 %var_2_437, -742
; Matched:%var_2_953:  %var_2_953 = add i64 %var_2_951, 5
; %var_2_439 = add i64 %var_2_437, 5
%var_2_440 = load i64, i64* %var_2_6, align 8
%var_2_441 = add i64 %var_2_440, -8
; Matched:%var_2_779:  %var_2_779 = inttoptr i64 %var_2_778 to i64*
; %var_2_442 = inttoptr i64 %var_2_441 to i64*
; Matched:\<badref\>:  store i64 %var_2_953, i64* %var_2_956, align 8
; store i64 %var_2_439, i64* %var_2_442, align 8
; Matched:\<badref\>:  store i64 %var_2_758, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_441, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_952, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_438, i64* %var_2_3, align 8
%call2_400846 = tail call %struct.Memory* @ext_sqrt(%struct.State* nonnull %0, i64 %var_2_438, %struct.Memory* %var_2_412)
%var_2_443 = load i64, i64* %RBP.i, align 8
%var_2_444 = add i64 %var_2_443, -296
%var_2_445 = load i64, i64* %var_2_3, align 8
%var_2_446 = add i64 %var_2_445, 8
store i64 %var_2_446, i64* %var_2_3, align 8
%var_2_447 = inttoptr i64 %var_2_444 to double*
%var_2_448 = load double, double* %var_2_447, align 8
%var_2_449 = load double, double* %var_2_70, align 1
%var_2_450 = fdiv double %var_2_448, %var_2_449
store double %var_2_450, double* %var_2_111, align 1
store i64 0, i64* %var_2_113, align 1
%var_2_451 = add i64 %var_2_443, -32
%var_2_452 = add i64 %var_2_445, 17
store i64 %var_2_452, i64* %var_2_3, align 8
%var_2_453 = inttoptr i64 %var_2_451 to double*
%var_2_454 = load double, double* %var_2_453, align 8
%var_2_455 = fadd double %var_2_450, %var_2_454
store double %var_2_455, double* %var_2_111, align 1
store i64 0, i64* %var_2_113, align 1
%var_2_456 = add i64 %var_2_445, 22
store i64 %var_2_456, i64* %var_2_3, align 8
%var_2_457 = inttoptr i64 %var_2_451 to double*
store double %var_2_455, double* %var_2_457, align 8
%var_2_458 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_974:  %var_2_974 = add i64 %var_2_973, -248
; %var_2_459 = add i64 %var_2_458, -248
%var_2_460 = load i64, i64* %var_2_3, align 8
%var_2_461 = add i64 %var_2_460, 8
store i64 %var_2_461, i64* %var_2_3, align 8
; Matched:%var_2_945:  %var_2_945 = inttoptr i64 %var_2_942 to i64*
; %var_2_462 = inttoptr i64 %var_2_459 to i64*
; Matched:%var_2_978:  %var_2_978 = load i64, i64* %var_2_977, align 8
; %var_2_463 = load i64, i64* %var_2_462, align 8
; Matched:\<badref\>:  store i64 %var_2_978, i64* %var_2_73, align 1, !tbaa !1285
; store i64 %var_2_463, i64* %var_2_71, align 1
store double 0.000000e+00, double* %var_2_302, align 1
%var_2_464 = add i64 %var_2_460, 16
store i64 %var_2_464, i64* %var_2_3, align 8
; Matched:%var_2_980:  %var_2_980 = bitcast i64 %var_2_978 to double
; %var_2_465 = bitcast i64 %var_2_463 to double
; Matched:%var_2_981:  %var_2_981 = inttoptr i64 %var_2_974 to double*
; %var_2_466 = inttoptr i64 %var_2_459 to double*
; Matched:%var_2_982:  %var_2_982 = load double, double* %var_2_981, align 8
; %var_2_467 = load double, double* %var_2_466, align 8
; Matched:%var_2_983:  %var_2_983 = fmul double %var_2_980, %var_2_982
; %var_2_468 = fmul double %var_2_465, %var_2_467
; Matched:\<badref\>:  store double %var_2_983, double* %var_2_72, align 1, !tbaa !1285
; store double %var_2_468, double* %var_2_70, align 1
store i64 0, i64* %var_2_42, align 1
; Matched:%var_2_1038:  %var_2_1038 = add i64 %var_2_1028, 24
; %var_2_469 = add i64 %var_2_460, 24
; Matched:\<badref\>:  store i64 %var_2_240, i64* %PC, align 8
; store i64 %var_2_469, i64* %var_2_3, align 8
; Matched:%var_2_985:  %var_2_985 = load double, double* %var_2_981, align 8
; %var_2_470 = load double, double* %var_2_466, align 8
; Matched:%var_2_986:  %var_2_986 = fmul double %var_2_983, %var_2_985
; %var_2_471 = fmul double %var_2_468, %var_2_470
; Matched:\<badref\>:  store double %var_2_986, double* %var_2_72, align 1, !tbaa !1285
; store double %var_2_471, double* %var_2_70, align 1
store i64 0, i64* %var_2_42, align 1
; Matched:%var_2_987:  %var_2_987 = add i64 %var_2_973, -256
; %var_2_472 = add i64 %var_2_458, -256
; Matched:%var_2_524:  %var_2_524 = add i64 %var_2_498, 32
; %var_2_473 = add i64 %var_2_460, 32
; Matched:\<badref\>:  store i64 %var_2_988, i64* %PC, align 8
; store i64 %var_2_473, i64* %var_2_3, align 8
; Matched:%var_2_989:  %var_2_989 = inttoptr i64 %var_2_987 to double*
; %var_2_474 = inttoptr i64 %var_2_472 to double*
; Matched:\<badref\>:  store double %var_2_986, double* %var_2_989, align 8
; store double %var_2_471, double* %var_2_474, align 8
%var_2_475 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_942:  %var_2_942 = add i64 %var_2_941, -248
; %var_2_476 = add i64 %var_2_475, -248
%var_2_477 = load i64, i64* %var_2_3, align 8
%var_2_478 = add i64 %var_2_477, 8
store i64 %var_2_478, i64* %var_2_3, align 8
; Matched:%var_2_994:  %var_2_994 = inttoptr i64 %var_2_991 to i64*
; %var_2_479 = inttoptr i64 %var_2_476 to i64*
; Matched:%var_2_946:  %var_2_946 = load i64, i64* %var_2_945, align 8
; %var_2_480 = load i64, i64* %var_2_479, align 8
; Matched:\<badref\>:  store i64 %var_2_946, i64* %var_2_73, align 1, !tbaa !1285
; store i64 %var_2_480, i64* %var_2_71, align 1
store double 0.000000e+00, double* %var_2_302, align 1
%var_2_481 = add i64 %var_2_477, -817
; Matched:%var_2_117:  %var_2_117 = add i64 %var_2_108, 13
; %var_2_482 = add i64 %var_2_477, 13
%var_2_483 = load i64, i64* %var_2_6, align 8
%var_2_484 = add i64 %var_2_483, -8
; Matched:%var_2_1018:  %var_2_1018 = inttoptr i64 %var_2_1017 to i64*
; %var_2_485 = inttoptr i64 %var_2_484 to i64*
; Matched:\<badref\>:  store i64 %var_2_997, i64* %var_2_1000, align 8
; store i64 %var_2_482, i64* %var_2_485, align 8
; Matched:\<badref\>:  store i64 %var_2_119, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_484, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_996, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_481, i64* %var_2_3, align 8
%call2_400889 = tail call %struct.Memory* @ext_sin(%struct.State* nonnull %0, i64 %var_2_481, %struct.Memory* %call2_400846)
%var_2_486 = load i64, i64* %RBP.i, align 8
%var_2_487 = add i64 %var_2_486, -264
%var_2_488 = load i64, i64* %var_2_3, align 8
%var_2_489 = add i64 %var_2_488, 8
store i64 %var_2_489, i64* %var_2_3, align 8
%var_2_490 = load i64, i64* %var_2_71, align 1
%var_2_491 = inttoptr i64 %var_2_487 to i64*
store i64 %var_2_490, i64* %var_2_491, align 8
%var_2_492 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_991:  %var_2_991 = add i64 %var_2_990, -248
; %var_2_493 = add i64 %var_2_492, -248
%var_2_494 = load i64, i64* %var_2_3, align 8
%var_2_495 = add i64 %var_2_494, 8
store i64 %var_2_495, i64* %var_2_3, align 8
; Matched:%var_2_1012:  %var_2_1012 = inttoptr i64 %var_2_1009 to i64*
; %var_2_496 = inttoptr i64 %var_2_493 to i64*
; Matched:%var_2_582:  %var_2_582 = load i64, i64* %var_2_581, align 8
; %var_2_497 = load i64, i64* %var_2_496, align 8
; Matched:\<badref\>:  store i64 %var_2_582, i64* %var_2_73, align 1, !tbaa !1285
; store i64 %var_2_497, i64* %var_2_71, align 1
store double 0.000000e+00, double* %var_2_302, align 1
%var_2_498 = add i64 %var_2_494, -854
; Matched:%var_2_997:  %var_2_997 = add i64 %var_2_992, 13
; %var_2_499 = add i64 %var_2_494, 13
%var_2_500 = load i64, i64* %var_2_6, align 8
%var_2_501 = add i64 %var_2_500, -8
; Matched:%var_2_1000:  %var_2_1000 = inttoptr i64 %var_2_999 to i64*
; %var_2_502 = inttoptr i64 %var_2_501 to i64*
; Matched:\<badref\>:  store i64 %var_2_117, i64* %var_2_120, align 8
; store i64 %var_2_499, i64* %var_2_502, align 8
; Matched:\<badref\>:  store i64 %var_2_751, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_501, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1014, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_498, i64* %var_2_3, align 8
%call2_40089e = tail call %struct.Memory* @ext_cos(%struct.State* nonnull %0, i64 %var_2_498, %struct.Memory* %call2_400889)
%var_2_503 = load i64, i64* %RBP.i, align 8
%var_2_504 = add i64 %var_2_503, -272
%var_2_505 = load i64, i64* %var_2_3, align 8
%var_2_506 = add i64 %var_2_505, 8
store i64 %var_2_506, i64* %var_2_3, align 8
%var_2_507 = load i64, i64* %var_2_71, align 1
%var_2_508 = inttoptr i64 %var_2_504 to i64*
store i64 %var_2_507, i64* %var_2_508, align 8
; Matched:%var_2_1026:  %var_2_1026 = load i64, i64* %RBP, align 8
; %var_2_509 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1027:  %var_2_1027 = add i64 %var_2_1026, -256
; %var_2_510 = add i64 %var_2_509, -256
%var_2_511 = load i64, i64* %var_2_3, align 8
%var_2_512 = add i64 %var_2_511, 8
store i64 %var_2_512, i64* %var_2_3, align 8
; Matched:%var_2_1030:  %var_2_1030 = inttoptr i64 %var_2_1027 to i64*
; %var_2_513 = inttoptr i64 %var_2_510 to i64*
; Matched:%var_2_1058:  %var_2_1058 = load i64, i64* %var_2_1057, align 8
; %var_2_514 = load i64, i64* %var_2_513, align 8
; Matched:\<badref\>:  store i64 %var_2_1031, i64* %var_2_73, align 1, !tbaa !1285
; store i64 %var_2_514, i64* %var_2_71, align 1
store double 0.000000e+00, double* %var_2_302, align 1
; Matched:%var_2_1032:  %var_2_1032 = add i64 %var_2_1026, -264
; %var_2_515 = add i64 %var_2_509, -264
%var_2_516 = add i64 %var_2_511, 16
store i64 %var_2_516, i64* %var_2_3, align 8
; Matched:%var_2_1034:  %var_2_1034 = bitcast i64 %var_2_1031 to double
; %var_2_517 = bitcast i64 %var_2_514 to double
; Matched:%var_2_1035:  %var_2_1035 = inttoptr i64 %var_2_1032 to double*
; %var_2_518 = inttoptr i64 %var_2_515 to double*
; Matched:%var_2_1036:  %var_2_1036 = load double, double* %var_2_1035, align 8
; %var_2_519 = load double, double* %var_2_518, align 8
; Matched:%var_2_1037:  %var_2_1037 = fmul double %var_2_1034, %var_2_1036
; %var_2_520 = fmul double %var_2_517, %var_2_519
; Matched:\<badref\>:  store double %var_2_1037, double* %var_2_72, align 1, !tbaa !1285
; store double %var_2_520, double* %var_2_70, align 1
store i64 0, i64* %var_2_42, align 1
; Matched:%var_2_1065:  %var_2_1065 = add i64 %var_2_1055, 24
; %var_2_521 = add i64 %var_2_511, 24
; Matched:\<badref\>:  store i64 %var_2_984, i64* %PC, align 8
; store i64 %var_2_521, i64* %var_2_3, align 8
; Matched:%var_2_1039:  %var_2_1039 = load double, double* %var_2_1035, align 8
; %var_2_522 = load double, double* %var_2_518, align 8
; Matched:%var_2_1040:  %var_2_1040 = fmul double %var_2_1037, %var_2_1039
; %var_2_523 = fmul double %var_2_520, %var_2_522
; Matched:\<badref\>:  store double %var_2_1040, double* %var_2_72, align 1, !tbaa !1285
; store double %var_2_523, double* %var_2_70, align 1
store i64 0, i64* %var_2_42, align 1
; Matched:%var_2_1041:  %var_2_1041 = add i64 %var_2_1026, -296
; %var_2_524 = add i64 %var_2_509, -296
; Matched:%var_2_988:  %var_2_988 = add i64 %var_2_975, 32
; %var_2_525 = add i64 %var_2_511, 32
; Matched:\<badref\>:  store i64 %var_2_1042, i64* %PC, align 8
; store i64 %var_2_525, i64* %var_2_3, align 8
; Matched:%var_2_1043:  %var_2_1043 = inttoptr i64 %var_2_1041 to double*
; %var_2_526 = inttoptr i64 %var_2_524 to double*
; Matched:%var_2_1044:  %var_2_1044 = load double, double* %var_2_1043, align 8
; %var_2_527 = load double, double* %var_2_526, align 8
; Matched:%var_2_1045:  %var_2_1045 = fdiv double %var_2_1044, %var_2_1040
; %var_2_528 = fdiv double %var_2_527, %var_2_523
; Matched:\<badref\>:  store double %var_2_1045, double* %var_2_112, align 1, !tbaa !1285
; store double %var_2_528, double* %var_2_111, align 1
store i64 0, i64* %var_2_113, align 1
; Matched:%var_2_1046:  %var_2_1046 = add i64 %var_2_1026, -40
; %var_2_529 = add i64 %var_2_509, -40
; Matched:%var_2_536:  %var_2_536 = add i64 %var_2_498, 41
; %var_2_530 = add i64 %var_2_511, 41
; Matched:\<badref\>:  store i64 %var_2_1047, i64* %PC, align 8
; store i64 %var_2_530, i64* %var_2_3, align 8
; Matched:%var_2_1048:  %var_2_1048 = inttoptr i64 %var_2_1046 to double*
; %var_2_531 = inttoptr i64 %var_2_529 to double*
; Matched:%var_2_1049:  %var_2_1049 = load double, double* %var_2_1048, align 8
; %var_2_532 = load double, double* %var_2_531, align 8
; Matched:%var_2_1050:  %var_2_1050 = fadd double %var_2_1045, %var_2_1049
; %var_2_533 = fadd double %var_2_528, %var_2_532
; Matched:\<badref\>:  store double %var_2_1050, double* %var_2_112, align 1, !tbaa !1285
; store double %var_2_533, double* %var_2_111, align 1
store i64 0, i64* %var_2_113, align 1
; Matched:%var_2_1051:  %var_2_1051 = add i64 %var_2_1028, 46
; %var_2_534 = add i64 %var_2_511, 46
; Matched:\<badref\>:  store i64 %var_2_545, i64* %PC, align 8
; store i64 %var_2_534, i64* %var_2_3, align 8
; Matched:%var_2_1052:  %var_2_1052 = inttoptr i64 %var_2_1046 to double*
; %var_2_535 = inttoptr i64 %var_2_529 to double*
; Matched:\<badref\>:  store double %var_2_1050, double* %var_2_1052, align 8
; store double %var_2_533, double* %var_2_535, align 8
; Matched:%var_2_1053:  %var_2_1053 = load i64, i64* %RBP, align 8
; %var_2_536 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1054:  %var_2_1054 = add i64 %var_2_1053, -256
; %var_2_537 = add i64 %var_2_536, -256
%var_2_538 = load i64, i64* %var_2_3, align 8
%var_2_539 = add i64 %var_2_538, 8
store i64 %var_2_539, i64* %var_2_3, align 8
; Matched:%var_2_1057:  %var_2_1057 = inttoptr i64 %var_2_1054 to i64*
; %var_2_540 = inttoptr i64 %var_2_537 to i64*
; Matched:%var_2_1031:  %var_2_1031 = load i64, i64* %var_2_1030, align 8
; %var_2_541 = load i64, i64* %var_2_540, align 8
; Matched:\<badref\>:  store i64 %var_2_1058, i64* %var_2_73, align 1, !tbaa !1285
; store i64 %var_2_541, i64* %var_2_71, align 1
store double 0.000000e+00, double* %var_2_302, align 1
; Matched:%var_2_1059:  %var_2_1059 = add i64 %var_2_1053, -272
; %var_2_542 = add i64 %var_2_536, -272
%var_2_543 = add i64 %var_2_538, 16
store i64 %var_2_543, i64* %var_2_3, align 8
; Matched:%var_2_1061:  %var_2_1061 = bitcast i64 %var_2_1058 to double
; %var_2_544 = bitcast i64 %var_2_541 to double
; Matched:%var_2_1062:  %var_2_1062 = inttoptr i64 %var_2_1059 to double*
; %var_2_545 = inttoptr i64 %var_2_542 to double*
; Matched:%var_2_1063:  %var_2_1063 = load double, double* %var_2_1062, align 8
; %var_2_546 = load double, double* %var_2_545, align 8
; Matched:%var_2_1064:  %var_2_1064 = fmul double %var_2_1061, %var_2_1063
; %var_2_547 = fmul double %var_2_544, %var_2_546
; Matched:\<badref\>:  store double %var_2_1064, double* %var_2_72, align 1, !tbaa !1285
; store double %var_2_547, double* %var_2_70, align 1
store i64 0, i64* %var_2_42, align 1
; Matched:%var_2_1088:  %var_2_1088 = add i64 %var_2_1080, 24
; %var_2_548 = add i64 %var_2_538, 24
; Matched:\<badref\>:  store i64 %var_2_435, i64* %PC, align 8
; store i64 %var_2_548, i64* %var_2_3, align 8
; Matched:%var_2_1066:  %var_2_1066 = load double, double* %var_2_1062, align 8
; %var_2_549 = load double, double* %var_2_545, align 8
; Matched:%var_2_1067:  %var_2_1067 = fmul double %var_2_1064, %var_2_1066
; %var_2_550 = fmul double %var_2_547, %var_2_549
; Matched:\<badref\>:  store double %var_2_1067, double* %var_2_72, align 1, !tbaa !1285
; store double %var_2_550, double* %var_2_70, align 1
store i64 0, i64* %var_2_42, align 1
; Matched:%var_2_1068:  %var_2_1068 = add i64 %var_2_1053, -296
; %var_2_551 = add i64 %var_2_536, -296
; Matched:%var_2_1069:  %var_2_1069 = add i64 %var_2_1055, 32
; %var_2_552 = add i64 %var_2_538, 32
; Matched:\<badref\>:  store i64 %var_2_524, i64* %PC, align 8
; store i64 %var_2_552, i64* %var_2_3, align 8
; Matched:%var_2_1070:  %var_2_1070 = inttoptr i64 %var_2_1068 to double*
; %var_2_553 = inttoptr i64 %var_2_551 to double*
; Matched:%var_2_1071:  %var_2_1071 = load double, double* %var_2_1070, align 8
; %var_2_554 = load double, double* %var_2_553, align 8
; Matched:%var_2_1072:  %var_2_1072 = fdiv double %var_2_1071, %var_2_1067
; %var_2_555 = fdiv double %var_2_554, %var_2_550
; Matched:\<badref\>:  store double %var_2_1072, double* %var_2_112, align 1, !tbaa !1285
; store double %var_2_555, double* %var_2_111, align 1
store i64 0, i64* %var_2_113, align 1
; Matched:%var_2_1073:  %var_2_1073 = add i64 %var_2_1053, -48
; %var_2_556 = add i64 %var_2_536, -48
; Matched:%var_2_1074:  %var_2_1074 = add i64 %var_2_1055, 41
; %var_2_557 = add i64 %var_2_538, 41
; Matched:\<badref\>:  store i64 %var_2_536, i64* %PC, align 8
; store i64 %var_2_557, i64* %var_2_3, align 8
; Matched:%var_2_1075:  %var_2_1075 = inttoptr i64 %var_2_1073 to double*
; %var_2_558 = inttoptr i64 %var_2_556 to double*
; Matched:%var_2_1076:  %var_2_1076 = load double, double* %var_2_1075, align 8
; %var_2_559 = load double, double* %var_2_558, align 8
; Matched:%var_2_1077:  %var_2_1077 = fadd double %var_2_1072, %var_2_1076
; %var_2_560 = fadd double %var_2_555, %var_2_559
; Matched:\<badref\>:  store double %var_2_1077, double* %var_2_112, align 1, !tbaa !1285
; store double %var_2_560, double* %var_2_111, align 1
store i64 0, i64* %var_2_113, align 1
; Matched:%var_2_545:  %var_2_545 = add i64 %var_2_498, 46
; %var_2_561 = add i64 %var_2_538, 46
; Matched:\<badref\>:  store i64 %var_2_1078, i64* %PC, align 8
; store i64 %var_2_561, i64* %var_2_3, align 8
; Matched:%var_2_1079:  %var_2_1079 = inttoptr i64 %var_2_1073 to double*
; %var_2_562 = inttoptr i64 %var_2_556 to double*
; Matched:\<badref\>:  store double %var_2_1077, double* %var_2_1079, align 8
; store double %var_2_560, double* %var_2_562, align 8
%var_2_563 = load i64, i64* %var_2_3, align 8
%var_2_564 = add i64 %var_2_563, ptrtoint (%G_0x329__rip__type* @G_0x329__rip_ to i64)
%var_2_565 = add i64 %var_2_563, 8
store i64 %var_2_565, i64* %var_2_3, align 8
%var_2_566 = inttoptr i64 %var_2_564 to i64*
%var_2_567 = load i64, i64* %var_2_566, align 8
store i64 %var_2_567, i64* %var_2_71, align 1
store double 0.000000e+00, double* %var_2_302, align 1
%var_2_568 = load i64, i64* %RBP.i, align 8
%var_2_569 = add i64 %var_2_568, -248
%var_2_570 = add i64 %var_2_563, 16
store i64 %var_2_570, i64* %var_2_3, align 8
%var_2_571 = bitcast i64 %var_2_567 to double
%var_2_572 = inttoptr i64 %var_2_569 to double*
%var_2_573 = load double, double* %var_2_572, align 8
%var_2_574 = fadd double %var_2_571, %var_2_573
store double %var_2_574, double* %var_2_70, align 1
store i64 0, i64* %var_2_42, align 1
; Matched:%var_2_202:  %var_2_202 = add i64 %var_2_193, 24
; %var_2_575 = add i64 %var_2_563, 24
; Matched:\<badref\>:  store i64 %var_2_570, i64* %PC, align 8
; store i64 %var_2_575, i64* %var_2_3, align 8
%var_2_576 = inttoptr i64 %var_2_569 to double*
store double %var_2_574, double* %var_2_576, align 8
%var_2_577 = load i64, i64* %var_2_3, align 8
%var_2_578 = add i64 %var_2_577, -313
; Matched:\<badref\>:  store i64 %var_2_1091, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_578, i64* %var_2_3, align 8
  br label %block_.L_4007e6

block_.L_400924:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit384
; Matched:%var_2_856:  %var_2_856 = load i64, i64* %RBP, align 8
; %var_2_579 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_857:  %var_2_857 = add i64 %var_2_856, -192
; %var_2_580 = add i64 %var_2_579, -192
; Matched:%var_2_858:  %var_2_858 = add i64 %var_2_616, 8
; %var_2_581 = add i64 %var_2_389, 8
; Matched:\<badref\>:  store i64 %var_2_858, i64* %PC, align 8
; store i64 %var_2_581, i64* %var_2_3, align 8
; Matched:%var_2_859:  %var_2_859 = inttoptr i64 %var_2_857 to i64*
; %var_2_582 = inttoptr i64 %var_2_580 to i64*
; Matched:%var_2_860:  %var_2_860 = load i64, i64* %var_2_859, align 8
; %var_2_583 = load i64, i64* %var_2_582, align 8
; Matched:%var_2_861:  %var_2_861 = add i64 %var_2_856, -184
; %var_2_584 = add i64 %var_2_579, -184
; Matched:%var_2_862:  %var_2_862 = inttoptr i64 %var_2_861 to i64*
; %var_2_585 = inttoptr i64 %var_2_584 to i64*
; Matched:%var_2_863:  %var_2_863 = load i64, i64* %var_2_862, align 8
; %var_2_586 = load i64, i64* %var_2_585, align 8
; Matched:\<badref\>:  store i64 %var_2_860, i64* %var_2_73, align 1, !tbaa !1285
; store i64 %var_2_583, i64* %var_2_71, align 1
; Matched:\<badref\>:  store i64 %var_2_863, i64* %var_2_45, align 1, !tbaa !1285
; store i64 %var_2_586, i64* %var_2_42, align 1
; Matched:%var_2_864:  %var_2_864 = add i64 %var_2_856, -224
; %var_2_587 = add i64 %var_2_579, -224
; Matched:%var_2_865:  %var_2_865 = add i64 %var_2_616, 16
; %var_2_588 = add i64 %var_2_389, 16
; Matched:\<badref\>:  store i64 %var_2_865, i64* %PC, align 8
; store i64 %var_2_588, i64* %var_2_3, align 8
; Matched:%var_2_866:  %var_2_866 = inttoptr i64 %var_2_864 to i64*
; %var_2_589 = inttoptr i64 %var_2_587 to i64*
; Matched:\<badref\>:  store i64 %var_2_860, i64* %var_2_866, align 8
; store i64 %var_2_583, i64* %var_2_589, align 8
; Matched:%var_2_867:  %var_2_867 = add i64 %var_2_856, -216
; %var_2_590 = add i64 %var_2_579, -216
; Matched:%var_2_868:  %var_2_868 = inttoptr i64 %var_2_867 to i64*
; %var_2_591 = inttoptr i64 %var_2_590 to i64*
; Matched:\<badref\>:  store i64 %var_2_863, i64* %var_2_868, align 8
; store i64 %var_2_586, i64* %var_2_591, align 8
%var_2_592 = bitcast %union.VectorReg* %var_2_202 to <2 x double>*
%var_2_593 = bitcast %union.VectorReg* %var_2_103 to <2 x double>*
%var_2_594 = bitcast [32 x %union.VectorReg]* %var_2_40 to <2 x double>*
%.pre13 = load i64, i64* %var_2_3, align 8
  br label %block_.L_400934

block_.L_400934:                                  ; preds = %block_40094e, %block_.L_400924
%var_2_595 = phi i64 [ %.pre13, %block_.L_400924 ], [ %var_2_873, %block_40094e ]
%MEMORY.1 = phi %struct.Memory* [ %var_2_386, %block_.L_400924 ], [ %var_2_631, %block_40094e ]
%var_2_596 = load i64, i64* %RBP.i, align 8
%var_2_597 = add i64 %var_2_596, -224
; Matched:%var_2_875:  %var_2_875 = add i64 %var_2_872, 8
; %var_2_598 = add i64 %var_2_595, 8
; Matched:\<badref\>:  store i64 %var_2_875, i64* %PC, align 8
; store i64 %var_2_598, i64* %var_2_3, align 8
%var_2_599 = inttoptr i64 %var_2_597 to i64*
%var_2_600 = load i64, i64* %var_2_599, align 8
; Matched:\<badref\>:  store i64 %var_2_877, i64* %var_2_73, align 1, !tbaa !1285
; store i64 %var_2_600, i64* %var_2_71, align 1
store double 0.000000e+00, double* %var_2_302, align 1
%var_2_601 = add i64 %var_2_596, -276
; Matched:%var_2_879:  %var_2_879 = add i64 %var_2_872, 16
; %var_2_602 = add i64 %var_2_595, 16
; Matched:\<badref\>:  store i64 %var_2_879, i64* %PC, align 8
; store i64 %var_2_602, i64* %var_2_3, align 8
%var_2_603 = inttoptr i64 %var_2_601 to i32*
%var_2_604 = load i32, i32* %var_2_603, align 4
%var_2_605 = sitofp i32 %var_2_604 to double
; Matched:\<badref\>:  store double %var_2_587, double* %var_2_112, align 1, !tbaa !1285
; store double %var_2_605, double* %var_2_111, align 1
%var_2_606 = add i64 %var_2_595, 20
; Matched:\<badref\>:  store i64 %var_2_883, i64* %PC, align 8
; store i64 %var_2_606, i64* %var_2_3, align 8
%var_2_607 = bitcast i64 %var_2_600 to double
%var_2_608 = fcmp uno double %var_2_605, %var_2_607
br i1 %var_2_608, label %var_2_609, label %var_2_619

var_2_609:
%var_2_610 = fadd double %var_2_605, %var_2_607
%var_2_611 = bitcast double %var_2_610 to i64
%var_2_612 = and i64 %var_2_611, 9221120237041090560
%var_2_613 = icmp eq i64 %var_2_612, 9218868437227405312
%var_2_614 = and i64 %var_2_611, 2251799813685247
%var_2_615 = icmp ne i64 %var_2_614, 0
%var_2_616 = and i1 %var_2_613, %var_2_615
br i1 %var_2_616, label %var_2_617, label %var_2_625

var_2_617:
%var_2_618 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %var_2_606, %struct.Memory* %MEMORY.1)
; Matched:  %.pre100 = load i64, i64* %PC, align 8
; %.pre14 = load i64, i64* %var_2_3, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit

var_2_619:
%var_2_620 = fcmp ogt double %var_2_605, %var_2_607
br i1 %var_2_620, label %var_2_625, label %var_2_621

var_2_621:
%var_2_622 = fcmp olt double %var_2_605, %var_2_607
br i1 %var_2_622, label %var_2_625, label %var_2_623

var_2_623:
%var_2_624 = fcmp oeq double %var_2_605, %var_2_607
br i1 %var_2_624, label %var_2_625, label %var_2_629

var_2_625:
; Matched:%var_2_608:  %var_2_608 = phi i8 [ 0, %var_2_601 ], [ 0, %var_2_603 ], [ 1, %var_2_605 ], [ 1, %var_2_591 ]
; %var_2_626 = phi i8 [ 0, %var_2_619 ], [ 0, %var_2_621 ], [ 1, %var_2_623 ], [ 1, %var_2_609 ]
; Matched:%var_2_609:  %var_2_609 = phi i8 [ 0, %var_2_601 ], [ 0, %var_2_603 ], [ 0, %var_2_605 ], [ 1, %var_2_591 ]
; %var_2_627 = phi i8 [ 0, %var_2_619 ], [ 0, %var_2_621 ], [ 0, %var_2_623 ], [ 1, %var_2_609 ]
; Matched:%var_2_610:  %var_2_610 = phi i8 [ 0, %var_2_601 ], [ 1, %var_2_603 ], [ 0, %var_2_605 ], [ 1, %var_2_591 ]
; %var_2_628 = phi i8 [ 0, %var_2_619 ], [ 1, %var_2_621 ], [ 0, %var_2_623 ], [ 1, %var_2_609 ]
; Matched:\<badref\>:  store i8 %var_2_608, i8* %var_2_34, align 1, !tbaa !1289
; store i8 %var_2_626, i8* %var_2_30, align 1
; Matched:\<badref\>:  store i8 %var_2_904, i8* %var_2_25, align 1, !tbaa !1289
; store i8 %var_2_627, i8* %var_2_21, align 1
; Matched:\<badref\>:  store i8 %var_2_905, i8* %var_2_18, align 1, !tbaa !1289
; store i8 %var_2_628, i8* %var_2_14, align 1
br label %var_2_629

var_2_629:
store i8 0, i8* %var_2_39, align 1
store i8 0, i8* %var_2_33, align 1
store i8 0, i8* %var_2_27, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %var_2_629, %var_2_617
; Matched:%var_2_907:  %var_2_907 = phi i64 [ %.pre100, %var_2_894 ], [ %var_2_883, %var_2_906 ]
; %var_2_630 = phi i64 [ %.pre14, %var_2_617 ], [ %var_2_606, %var_2_629 ]
%var_2_631 = phi %struct.Memory* [ %var_2_618, %var_2_617 ], [ %MEMORY.1, %var_2_629 ]
%var_2_632 = load i8, i8* %var_2_14, align 1
; Matched:%var_2_910:  %var_2_910 = icmp ne i8 %var_2_909, 0
; %var_2_633 = icmp ne i8 %var_2_632, 0
; Matched:  %.v115 = select i1 %var_2_910, i64 221, i64 6
; %.v29 = select i1 %var_2_633, i64 221, i64 6
; Matched:%var_2_911:  %var_2_911 = add i64 %var_2_907, %.v115
; %var_2_634 = add i64 %var_2_630, %.v29
; Matched:\<badref\>:  store i64 %var_2_911, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_634, i64* %var_2_3, align 8
%cmpBr_400948 = icmp eq i8 %var_2_632, 1
  br i1 %cmpBr_400948, label %block_.L_400a25, label %block_40094e

block_40094e:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
%var_2_635 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_339:  %var_2_339 = add i64 %var_2_338, -160
; %var_2_636 = add i64 %var_2_635, -160
; Matched:%var_2_340:  %var_2_340 = add i64 %var_2_911, 8
; %var_2_637 = add i64 %var_2_634, 8
; Matched:\<badref\>:  store i64 %var_2_340, i64* %PC, align 8
; store i64 %var_2_637, i64* %var_2_3, align 8
; Matched:%var_2_341:  %var_2_341 = inttoptr i64 %var_2_339 to i64*
; %var_2_638 = inttoptr i64 %var_2_636 to i64*
; Matched:%var_2_342:  %var_2_342 = load i64, i64* %var_2_341, align 8
; %var_2_639 = load i64, i64* %var_2_638, align 8
; Matched:%var_2_425:  %var_2_425 = add i64 %var_2_419, -152
; %var_2_640 = add i64 %var_2_635, -152
; Matched:%var_2_391:  %var_2_391 = inttoptr i64 %var_2_390 to i64*
; %var_2_641 = inttoptr i64 %var_2_640 to i64*
; Matched:%var_2_392:  %var_2_392 = load i64, i64* %var_2_391, align 8
; %var_2_642 = load i64, i64* %var_2_641, align 8
; Matched:\<badref\>:  store i64 %var_2_389, i64* %var_2_73, align 1, !tbaa !1285
; store i64 %var_2_639, i64* %var_2_71, align 1
; Matched:\<badref\>:  store i64 %var_2_427, i64* %var_2_45, align 1, !tbaa !1285
; store i64 %var_2_642, i64* %var_2_42, align 1
%var_2_643 = add i64 %var_2_635, -224
; Matched:%var_2_347:  %var_2_347 = add i64 %var_2_911, 16
; %var_2_644 = add i64 %var_2_634, 16
; Matched:\<badref\>:  store i64 %var_2_347, i64* %PC, align 8
; store i64 %var_2_644, i64* %var_2_3, align 8
; Matched:%var_2_348:  %var_2_348 = inttoptr i64 %var_2_346 to i64*
; %var_2_645 = inttoptr i64 %var_2_643 to i64*
; Matched:%var_2_431:  %var_2_431 = load i64, i64* %var_2_430, align 8
; %var_2_646 = load i64, i64* %var_2_645, align 8
%var_2_647 = add i64 %var_2_635, -216
; Matched:%var_2_351:  %var_2_351 = inttoptr i64 %var_2_350 to i64*
; %var_2_648 = inttoptr i64 %var_2_647 to i64*
; Matched:%var_2_434:  %var_2_434 = load i64, i64* %var_2_433, align 8
; %var_2_649 = load i64, i64* %var_2_648, align 8
; Matched:\<badref\>:  store i64 %var_2_431, i64* %var_2_113, align 1, !tbaa !1285
; store i64 %var_2_646, i64* %var_2_112, align 1
; Matched:\<badref\>:  store i64 %var_2_352, i64* %var_2_114, align 1, !tbaa !1285
; store i64 %var_2_649, i64* %var_2_113, align 1
; Matched:%var_2_353:  %var_2_353 = add i64 %var_2_911, 24
; %var_2_650 = add i64 %var_2_634, 24
; Matched:\<badref\>:  store i64 %var_2_353, i64* %PC, align 8
; store i64 %var_2_650, i64* %var_2_3, align 8
; Matched:%var_2_354:  %var_2_354 = load i64, i64* %var_2_348, align 8
; %var_2_651 = load i64, i64* %var_2_645, align 8
; Matched:%var_2_355:  %var_2_355 = load i64, i64* %var_2_351, align 8
; %var_2_652 = load i64, i64* %var_2_648, align 8
; Matched:\<badref\>:  store i64 %var_2_354, i64* %var_2_197, align 1, !tbaa !1285
; store i64 %var_2_651, i64* %var_2_208, align 1
; Matched:\<badref\>:  store i64 %var_2_355, i64* %var_2_198, align 1, !tbaa !1285
; store i64 %var_2_652, i64* %var_2_209, align 1
; Matched:%var_2_356:  %var_2_356 = add i64 %var_2_911, 32
; %var_2_653 = add i64 %var_2_634, 32
; Matched:\<badref\>:  store i64 %var_2_356, i64* %PC, align 8
; store i64 %var_2_653, i64* %var_2_3, align 8
%var_2_654 = load <2 x double>, <2 x double>* %var_2_592, align 1
; Matched:%var_2_358:  %var_2_358 = inttoptr i64 %var_2_339 to double*
; %var_2_655 = inttoptr i64 %var_2_636 to double*
; Matched:%var_2_359:  %var_2_359 = load double, double* %var_2_358, align 8
; %var_2_656 = load double, double* %var_2_655, align 8
; Matched:%var_2_360:  %var_2_360 = inttoptr i64 %var_2_343 to double*
; %var_2_657 = inttoptr i64 %var_2_640 to double*
; Matched:%var_2_361:  %var_2_361 = load double, double* %var_2_360, align 8
; %var_2_658 = load double, double* %var_2_657, align 8
%var_2_659 = insertelement <2 x double> undef, double %var_2_656, i32 0
%var_2_660 = insertelement <2 x double> %var_2_659, double %var_2_658, i32 1
%var_2_661 = fadd <2 x double> %var_2_654, %var_2_660
store <2 x double> %var_2_661, <2 x double>* %var_2_592, align 1
%var_2_662 = load <2 x double>, <2 x double>* %var_2_593, align 1
%var_2_663 = fmul <2 x double> %var_2_661, %var_2_662
store <2 x double> %var_2_663, <2 x double>* %var_2_593, align 1
%var_2_664 = load <2 x double>, <2 x double>* %var_2_594, align 1
%var_2_665 = fdiv <2 x double> %var_2_664, %var_2_663
store <2 x double> %var_2_665, <2 x double>* %var_2_594, align 1
; Matched:%var_2_369:  %var_2_369 = add i64 %var_2_338, -96
; %var_2_666 = add i64 %var_2_635, -96
; Matched:%var_2_370:  %var_2_370 = add i64 %var_2_911, 45
; %var_2_667 = add i64 %var_2_634, 45
; Matched:\<badref\>:  store i64 %var_2_370, i64* %PC, align 8
; store i64 %var_2_667, i64* %var_2_3, align 8
; Matched:%var_2_371:  %var_2_371 = inttoptr i64 %var_2_369 to double*
; %var_2_668 = inttoptr i64 %var_2_666 to double*
; Matched:%var_2_372:  %var_2_372 = load double, double* %var_2_371, align 8
; %var_2_669 = load double, double* %var_2_668, align 8
; Matched:%var_2_373:  %var_2_373 = add i64 %var_2_338, -88
; %var_2_670 = add i64 %var_2_635, -88
; Matched:%var_2_374:  %var_2_374 = inttoptr i64 %var_2_373 to double*
; %var_2_671 = inttoptr i64 %var_2_670 to double*
; Matched:%var_2_375:  %var_2_375 = load double, double* %var_2_374, align 8
; %var_2_672 = load double, double* %var_2_671, align 8
%var_2_673 = insertelement <2 x double> undef, double %var_2_669, i32 0
%var_2_674 = insertelement <2 x double> %var_2_673, double %var_2_672, i32 1
%var_2_675 = fadd <2 x double> %var_2_665, %var_2_674
store <2 x double> %var_2_675, <2 x double>* %var_2_594, align 1
; Matched:%var_2_379:  %var_2_379 = add i64 %var_2_911, 50
; %var_2_676 = add i64 %var_2_634, 50
; Matched:\<badref\>:  store i64 %var_2_379, i64* %PC, align 8
; store i64 %var_2_676, i64* %var_2_3, align 8
%bc20 = bitcast <2 x double> %var_2_675 to <2 x i64>
%var_2_677 = extractelement <2 x i64> %bc20, i32 0
%bc = bitcast <2 x double> %var_2_675 to <2 x i64>
%var_2_678 = extractelement <2 x i64> %bc, i32 1
; Matched:%var_2_382:  %var_2_382 = inttoptr i64 %var_2_369 to i64*
; %var_2_679 = inttoptr i64 %var_2_666 to i64*
; Matched:\<badref\>:  store i64 %var_2_380, i64* %var_2_382, align 8
; store i64 %var_2_677, i64* %var_2_679, align 8
; Matched:%var_2_383:  %var_2_383 = inttoptr i64 %var_2_373 to i64*
; %var_2_680 = inttoptr i64 %var_2_670 to i64*
; Matched:\<badref\>:  store i64 %var_2_381, i64* %var_2_383, align 8
; store i64 %var_2_678, i64* %var_2_680, align 8
%var_2_681 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_385:  %var_2_385 = add i64 %var_2_384, -160
; %var_2_682 = add i64 %var_2_681, -160
%var_2_683 = load i64, i64* %var_2_3, align 8
%var_2_684 = add i64 %var_2_683, 8
store i64 %var_2_684, i64* %var_2_3, align 8
; Matched:%var_2_388:  %var_2_388 = inttoptr i64 %var_2_385 to i64*
; %var_2_685 = inttoptr i64 %var_2_682 to i64*
; Matched:%var_2_389:  %var_2_389 = load i64, i64* %var_2_388, align 8
; %var_2_686 = load i64, i64* %var_2_685, align 8
; Matched:%var_2_343:  %var_2_343 = add i64 %var_2_338, -152
; %var_2_687 = add i64 %var_2_681, -152
; Matched:%var_2_426:  %var_2_426 = inttoptr i64 %var_2_425 to i64*
; %var_2_688 = inttoptr i64 %var_2_687 to i64*
; Matched:%var_2_427:  %var_2_427 = load i64, i64* %var_2_426, align 8
; %var_2_689 = load i64, i64* %var_2_688, align 8
; Matched:\<badref\>:  store i64 %var_2_424, i64* %var_2_73, align 1, !tbaa !1285
; store i64 %var_2_686, i64* %var_2_71, align 1
; Matched:\<badref\>:  store i64 %var_2_345, i64* %var_2_45, align 1, !tbaa !1285
; store i64 %var_2_689, i64* %var_2_42, align 1
; Matched:%var_2_393:  %var_2_393 = add i64 %var_2_384, -224
; %var_2_690 = add i64 %var_2_681, -224
%var_2_691 = add i64 %var_2_683, 16
store i64 %var_2_691, i64* %var_2_3, align 8
%var_2_692 = load <2 x double>, <2 x double>* %var_2_594, align 1
; Matched:%var_2_396:  %var_2_396 = inttoptr i64 %var_2_393 to double*
; %var_2_693 = inttoptr i64 %var_2_690 to double*
; Matched:%var_2_474:  %var_2_474 = load double, double* %var_2_473, align 8
; %var_2_694 = load double, double* %var_2_693, align 8
; Matched:%var_2_398:  %var_2_398 = add i64 %var_2_384, -216
; %var_2_695 = add i64 %var_2_681, -216
; Matched:%var_2_399:  %var_2_399 = inttoptr i64 %var_2_398 to double*
; %var_2_696 = inttoptr i64 %var_2_695 to double*
; Matched:%var_2_400:  %var_2_400 = load double, double* %var_2_399, align 8
; %var_2_697 = load double, double* %var_2_696, align 8
%var_2_698 = insertelement <2 x double> undef, double %var_2_694, i32 0
%var_2_699 = insertelement <2 x double> %var_2_698, double %var_2_697, i32 1
%var_2_700 = fdiv <2 x double> %var_2_692, %var_2_699
store <2 x double> %var_2_700, <2 x double>* %var_2_594, align 1
; Matched:%var_2_404:  %var_2_404 = add i64 %var_2_384, -64
; %var_2_701 = add i64 %var_2_681, -64
; Matched:%var_2_405:  %var_2_405 = add i64 %var_2_386, 21
; %var_2_702 = add i64 %var_2_683, 21
; Matched:\<badref\>:  store i64 %var_2_405, i64* %PC, align 8
; store i64 %var_2_702, i64* %var_2_3, align 8
; Matched:%var_2_406:  %var_2_406 = inttoptr i64 %var_2_404 to double*
; %var_2_703 = inttoptr i64 %var_2_701 to double*
; Matched:%var_2_407:  %var_2_407 = load double, double* %var_2_406, align 8
; %var_2_704 = load double, double* %var_2_703, align 8
; Matched:%var_2_408:  %var_2_408 = add i64 %var_2_384, -56
; %var_2_705 = add i64 %var_2_681, -56
; Matched:%var_2_409:  %var_2_409 = inttoptr i64 %var_2_408 to double*
; %var_2_706 = inttoptr i64 %var_2_705 to double*
; Matched:%var_2_410:  %var_2_410 = load double, double* %var_2_409, align 8
; %var_2_707 = load double, double* %var_2_706, align 8
%var_2_708 = insertelement <2 x double> undef, double %var_2_704, i32 0
%var_2_709 = insertelement <2 x double> %var_2_708, double %var_2_707, i32 1
%var_2_710 = fadd <2 x double> %var_2_700, %var_2_709
store <2 x double> %var_2_710, <2 x double>* %var_2_594, align 1
; Matched:%var_2_414:  %var_2_414 = add i64 %var_2_386, 26
; %var_2_711 = add i64 %var_2_683, 26
; Matched:\<badref\>:  store i64 %var_2_491, i64* %PC, align 8
; store i64 %var_2_711, i64* %var_2_3, align 8
%bc21 = bitcast <2 x double> %var_2_710 to <2 x i64>
%var_2_712 = extractelement <2 x i64> %bc21, i32 0
%bc15 = bitcast <2 x double> %var_2_710 to <2 x i64>
%var_2_713 = extractelement <2 x i64> %bc15, i32 1
; Matched:%var_2_417:  %var_2_417 = inttoptr i64 %var_2_404 to i64*
; %var_2_714 = inttoptr i64 %var_2_701 to i64*
; Matched:\<badref\>:  store i64 %var_2_415, i64* %var_2_417, align 8
; store i64 %var_2_712, i64* %var_2_714, align 8
; Matched:%var_2_418:  %var_2_418 = inttoptr i64 %var_2_408 to i64*
; %var_2_715 = inttoptr i64 %var_2_705 to i64*
; Matched:\<badref\>:  store i64 %var_2_416, i64* %var_2_418, align 8
; store i64 %var_2_713, i64* %var_2_715, align 8
%var_2_716 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_420:  %var_2_420 = add i64 %var_2_419, -160
; %var_2_717 = add i64 %var_2_716, -160
%var_2_718 = load i64, i64* %var_2_3, align 8
%var_2_719 = add i64 %var_2_718, 8
store i64 %var_2_719, i64* %var_2_3, align 8
; Matched:%var_2_423:  %var_2_423 = inttoptr i64 %var_2_420 to i64*
; %var_2_720 = inttoptr i64 %var_2_717 to i64*
; Matched:%var_2_424:  %var_2_424 = load i64, i64* %var_2_423, align 8
; %var_2_721 = load i64, i64* %var_2_720, align 8
; Matched:%var_2_390:  %var_2_390 = add i64 %var_2_384, -152
; %var_2_722 = add i64 %var_2_716, -152
; Matched:%var_2_344:  %var_2_344 = inttoptr i64 %var_2_343 to i64*
; %var_2_723 = inttoptr i64 %var_2_722 to i64*
; Matched:%var_2_345:  %var_2_345 = load i64, i64* %var_2_344, align 8
; %var_2_724 = load i64, i64* %var_2_723, align 8
; Matched:\<badref\>:  store i64 %var_2_342, i64* %var_2_73, align 1, !tbaa !1285
; store i64 %var_2_721, i64* %var_2_71, align 1
; Matched:\<badref\>:  store i64 %var_2_392, i64* %var_2_45, align 1, !tbaa !1285
; store i64 %var_2_724, i64* %var_2_42, align 1
%var_2_725 = add i64 %var_2_716, -224
%var_2_726 = add i64 %var_2_718, 16
store i64 %var_2_726, i64* %var_2_3, align 8
; Matched:%var_2_430:  %var_2_430 = inttoptr i64 %var_2_428 to i64*
; %var_2_727 = inttoptr i64 %var_2_725 to i64*
; Matched:%var_2_349:  %var_2_349 = load i64, i64* %var_2_348, align 8
; %var_2_728 = load i64, i64* %var_2_727, align 8
%var_2_729 = add i64 %var_2_716, -216
; Matched:%var_2_433:  %var_2_433 = inttoptr i64 %var_2_432 to i64*
; %var_2_730 = inttoptr i64 %var_2_729 to i64*
; Matched:%var_2_352:  %var_2_352 = load i64, i64* %var_2_351, align 8
; %var_2_731 = load i64, i64* %var_2_730, align 8
; Matched:\<badref\>:  store i64 %var_2_349, i64* %var_2_113, align 1, !tbaa !1285
; store i64 %var_2_728, i64* %var_2_112, align 1
; Matched:\<badref\>:  store i64 %var_2_434, i64* %var_2_114, align 1, !tbaa !1285
; store i64 %var_2_731, i64* %var_2_113, align 1
; Matched:%var_2_984:  %var_2_984 = add i64 %var_2_975, 24
; %var_2_732 = add i64 %var_2_718, 24
; Matched:\<badref\>:  store i64 %var_2_202, i64* %PC, align 8
; store i64 %var_2_732, i64* %var_2_3, align 8
%var_2_733 = load <2 x double>, <2 x double>* %var_2_593, align 1
; Matched:%var_2_515:  %var_2_515 = inttoptr i64 %var_2_512 to double*
; %var_2_734 = inttoptr i64 %var_2_725 to double*
; Matched:%var_2_516:  %var_2_516 = load double, double* %var_2_515, align 8
; %var_2_735 = load double, double* %var_2_734, align 8
; Matched:%var_2_439:  %var_2_439 = inttoptr i64 %var_2_432 to double*
; %var_2_736 = inttoptr i64 %var_2_729 to double*
; Matched:%var_2_440:  %var_2_440 = load double, double* %var_2_439, align 8
; %var_2_737 = load double, double* %var_2_736, align 8
%var_2_738 = insertelement <2 x double> undef, double %var_2_735, i32 0
%var_2_739 = insertelement <2 x double> %var_2_738, double %var_2_737, i32 1
%var_2_740 = fmul <2 x double> %var_2_733, %var_2_739
store <2 x double> %var_2_740, <2 x double>* %var_2_593, align 1
%var_2_741 = load <2 x double>, <2 x double>* %var_2_594, align 1
%var_2_742 = fdiv <2 x double> %var_2_741, %var_2_740
store <2 x double> %var_2_742, <2 x double>* %var_2_594, align 1
; Matched:%var_2_446:  %var_2_446 = add i64 %var_2_419, -80
; %var_2_743 = add i64 %var_2_716, -80
; Matched:%var_2_447:  %var_2_447 = add i64 %var_2_421, 33
; %var_2_744 = add i64 %var_2_718, 33
; Matched:\<badref\>:  store i64 %var_2_447, i64* %PC, align 8
; store i64 %var_2_744, i64* %var_2_3, align 8
; Matched:%var_2_448:  %var_2_448 = inttoptr i64 %var_2_446 to double*
; %var_2_745 = inttoptr i64 %var_2_743 to double*
; Matched:%var_2_449:  %var_2_449 = load double, double* %var_2_448, align 8
; %var_2_746 = load double, double* %var_2_745, align 8
; Matched:%var_2_450:  %var_2_450 = add i64 %var_2_419, -72
; %var_2_747 = add i64 %var_2_716, -72
; Matched:%var_2_451:  %var_2_451 = inttoptr i64 %var_2_450 to double*
; %var_2_748 = inttoptr i64 %var_2_747 to double*
; Matched:%var_2_452:  %var_2_452 = load double, double* %var_2_451, align 8
; %var_2_749 = load double, double* %var_2_748, align 8
%var_2_750 = insertelement <2 x double> undef, double %var_2_746, i32 0
%var_2_751 = insertelement <2 x double> %var_2_750, double %var_2_749, i32 1
%var_2_752 = fadd <2 x double> %var_2_742, %var_2_751
store <2 x double> %var_2_752, <2 x double>* %var_2_594, align 1
; Matched:%var_2_456:  %var_2_456 = add i64 %var_2_421, 38
; %var_2_753 = add i64 %var_2_718, 38
; Matched:\<badref\>:  store i64 %var_2_456, i64* %PC, align 8
; store i64 %var_2_753, i64* %var_2_3, align 8
%bc22 = bitcast <2 x double> %var_2_752 to <2 x i64>
%var_2_754 = extractelement <2 x i64> %bc22, i32 0
%bc16 = bitcast <2 x double> %var_2_752 to <2 x i64>
%var_2_755 = extractelement <2 x i64> %bc16, i32 1
; Matched:%var_2_459:  %var_2_459 = inttoptr i64 %var_2_446 to i64*
; %var_2_756 = inttoptr i64 %var_2_743 to i64*
; Matched:\<badref\>:  store i64 %var_2_457, i64* %var_2_459, align 8
; store i64 %var_2_754, i64* %var_2_756, align 8
; Matched:%var_2_460:  %var_2_460 = inttoptr i64 %var_2_450 to i64*
; %var_2_757 = inttoptr i64 %var_2_747 to i64*
; Matched:\<badref\>:  store i64 %var_2_458, i64* %var_2_460, align 8
; store i64 %var_2_755, i64* %var_2_757, align 8
%var_2_758 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_497:  %var_2_497 = add i64 %var_2_496, -240
; %var_2_759 = add i64 %var_2_758, -240
%var_2_760 = load i64, i64* %var_2_3, align 8
%var_2_761 = add i64 %var_2_760, 8
store i64 %var_2_761, i64* %var_2_3, align 8
; Matched:%var_2_465:  %var_2_465 = inttoptr i64 %var_2_462 to i64*
; %var_2_762 = inttoptr i64 %var_2_759 to i64*
; Matched:%var_2_501:  %var_2_501 = load i64, i64* %var_2_500, align 8
; %var_2_763 = load i64, i64* %var_2_762, align 8
; Matched:%var_2_467:  %var_2_467 = add i64 %var_2_461, -232
; %var_2_764 = add i64 %var_2_758, -232
; Matched:%var_2_468:  %var_2_468 = inttoptr i64 %var_2_467 to i64*
; %var_2_765 = inttoptr i64 %var_2_764 to i64*
; Matched:%var_2_504:  %var_2_504 = load i64, i64* %var_2_503, align 8
; %var_2_766 = load i64, i64* %var_2_765, align 8
; Matched:\<badref\>:  store i64 %var_2_466, i64* %var_2_73, align 1, !tbaa !1285
; store i64 %var_2_763, i64* %var_2_71, align 1
; Matched:\<badref\>:  store i64 %var_2_469, i64* %var_2_45, align 1, !tbaa !1285
; store i64 %var_2_766, i64* %var_2_42, align 1
; Matched:%var_2_470:  %var_2_470 = add i64 %var_2_461, -224
; %var_2_767 = add i64 %var_2_758, -224
%var_2_768 = add i64 %var_2_760, 16
store i64 %var_2_768, i64* %var_2_3, align 8
%var_2_769 = load <2 x double>, <2 x double>* %var_2_594, align 1
; Matched:%var_2_473:  %var_2_473 = inttoptr i64 %var_2_470 to double*
; %var_2_770 = inttoptr i64 %var_2_767 to double*
; Matched:%var_2_397:  %var_2_397 = load double, double* %var_2_396, align 8
; %var_2_771 = load double, double* %var_2_770, align 8
; Matched:%var_2_475:  %var_2_475 = add i64 %var_2_461, -216
; %var_2_772 = add i64 %var_2_758, -216
; Matched:%var_2_476:  %var_2_476 = inttoptr i64 %var_2_475 to double*
; %var_2_773 = inttoptr i64 %var_2_772 to double*
; Matched:%var_2_477:  %var_2_477 = load double, double* %var_2_476, align 8
; %var_2_774 = load double, double* %var_2_773, align 8
%var_2_775 = insertelement <2 x double> undef, double %var_2_771, i32 0
%var_2_776 = insertelement <2 x double> %var_2_775, double %var_2_774, i32 1
%var_2_777 = fdiv <2 x double> %var_2_769, %var_2_776
store <2 x double> %var_2_777, <2 x double>* %var_2_594, align 1
; Matched:%var_2_481:  %var_2_481 = add i64 %var_2_461, -112
; %var_2_778 = add i64 %var_2_758, -112
; Matched:%var_2_482:  %var_2_482 = add i64 %var_2_463, 21
; %var_2_779 = add i64 %var_2_760, 21
; Matched:\<badref\>:  store i64 %var_2_482, i64* %PC, align 8
; store i64 %var_2_779, i64* %var_2_3, align 8
; Matched:%var_2_483:  %var_2_483 = inttoptr i64 %var_2_481 to double*
; %var_2_780 = inttoptr i64 %var_2_778 to double*
; Matched:%var_2_484:  %var_2_484 = load double, double* %var_2_483, align 8
; %var_2_781 = load double, double* %var_2_780, align 8
; Matched:%var_2_485:  %var_2_485 = add i64 %var_2_461, -104
; %var_2_782 = add i64 %var_2_758, -104
; Matched:%var_2_486:  %var_2_486 = inttoptr i64 %var_2_485 to double*
; %var_2_783 = inttoptr i64 %var_2_782 to double*
; Matched:%var_2_487:  %var_2_487 = load double, double* %var_2_486, align 8
; %var_2_784 = load double, double* %var_2_783, align 8
%var_2_785 = insertelement <2 x double> undef, double %var_2_781, i32 0
%var_2_786 = insertelement <2 x double> %var_2_785, double %var_2_784, i32 1
%var_2_787 = fadd <2 x double> %var_2_777, %var_2_786
store <2 x double> %var_2_787, <2 x double>* %var_2_594, align 1
; Matched:%var_2_491:  %var_2_491 = add i64 %var_2_463, 26
; %var_2_788 = add i64 %var_2_760, 26
; Matched:\<badref\>:  store i64 %var_2_414, i64* %PC, align 8
; store i64 %var_2_788, i64* %var_2_3, align 8
%bc23 = bitcast <2 x double> %var_2_787 to <2 x i64>
%var_2_789 = extractelement <2 x i64> %bc23, i32 0
%bc17 = bitcast <2 x double> %var_2_787 to <2 x i64>
%var_2_790 = extractelement <2 x i64> %bc17, i32 1
; Matched:%var_2_494:  %var_2_494 = inttoptr i64 %var_2_481 to i64*
; %var_2_791 = inttoptr i64 %var_2_778 to i64*
; Matched:\<badref\>:  store i64 %var_2_492, i64* %var_2_494, align 8
; store i64 %var_2_789, i64* %var_2_791, align 8
; Matched:%var_2_495:  %var_2_495 = inttoptr i64 %var_2_485 to i64*
; %var_2_792 = inttoptr i64 %var_2_782 to i64*
; Matched:\<badref\>:  store i64 %var_2_493, i64* %var_2_495, align 8
; store i64 %var_2_790, i64* %var_2_792, align 8
%var_2_793 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_462:  %var_2_462 = add i64 %var_2_461, -240
; %var_2_794 = add i64 %var_2_793, -240
%var_2_795 = load i64, i64* %var_2_3, align 8
%var_2_796 = add i64 %var_2_795, 8
store i64 %var_2_796, i64* %var_2_3, align 8
; Matched:%var_2_500:  %var_2_500 = inttoptr i64 %var_2_497 to i64*
; %var_2_797 = inttoptr i64 %var_2_794 to i64*
; Matched:%var_2_466:  %var_2_466 = load i64, i64* %var_2_465, align 8
; %var_2_798 = load i64, i64* %var_2_797, align 8
; Matched:%var_2_502:  %var_2_502 = add i64 %var_2_496, -232
; %var_2_799 = add i64 %var_2_793, -232
; Matched:%var_2_503:  %var_2_503 = inttoptr i64 %var_2_502 to i64*
; %var_2_800 = inttoptr i64 %var_2_799 to i64*
; Matched:%var_2_469:  %var_2_469 = load i64, i64* %var_2_468, align 8
; %var_2_801 = load i64, i64* %var_2_800, align 8
; Matched:\<badref\>:  store i64 %var_2_501, i64* %var_2_73, align 1, !tbaa !1285
; store i64 %var_2_798, i64* %var_2_71, align 1
; Matched:\<badref\>:  store i64 %var_2_504, i64* %var_2_45, align 1, !tbaa !1285
; store i64 %var_2_801, i64* %var_2_42, align 1
; Matched:%var_2_505:  %var_2_505 = add i64 %var_2_496, -176
; %var_2_802 = add i64 %var_2_793, -176
%var_2_803 = add i64 %var_2_795, 16
store i64 %var_2_803, i64* %var_2_3, align 8
; Matched:%var_2_507:  %var_2_507 = inttoptr i64 %var_2_505 to i64*
; %var_2_804 = inttoptr i64 %var_2_802 to i64*
; Matched:%var_2_508:  %var_2_508 = load i64, i64* %var_2_507, align 8
; %var_2_805 = load i64, i64* %var_2_804, align 8
; Matched:%var_2_509:  %var_2_509 = add i64 %var_2_496, -168
; %var_2_806 = add i64 %var_2_793, -168
; Matched:%var_2_510:  %var_2_510 = inttoptr i64 %var_2_509 to i64*
; %var_2_807 = inttoptr i64 %var_2_806 to i64*
; Matched:%var_2_511:  %var_2_511 = load i64, i64* %var_2_510, align 8
; %var_2_808 = load i64, i64* %var_2_807, align 8
; Matched:\<badref\>:  store i64 %var_2_508, i64* %var_2_113, align 1, !tbaa !1285
; store i64 %var_2_805, i64* %var_2_112, align 1
; Matched:\<badref\>:  store i64 %var_2_511, i64* %var_2_114, align 1, !tbaa !1285
; store i64 %var_2_808, i64* %var_2_113, align 1
%var_2_809 = add i64 %var_2_793, -224
; Matched:%var_2_435:  %var_2_435 = add i64 %var_2_421, 24
; %var_2_810 = add i64 %var_2_795, 24
; Matched:\<badref\>:  store i64 %var_2_1065, i64* %PC, align 8
; store i64 %var_2_810, i64* %var_2_3, align 8
%var_2_811 = load <2 x double>, <2 x double>* %var_2_593, align 1
; Matched:%var_2_437:  %var_2_437 = inttoptr i64 %var_2_428 to double*
; %var_2_812 = inttoptr i64 %var_2_809 to double*
; Matched:%var_2_438:  %var_2_438 = load double, double* %var_2_437, align 8
; %var_2_813 = load double, double* %var_2_812, align 8
%var_2_814 = add i64 %var_2_793, -216
; Matched:%var_2_518:  %var_2_518 = inttoptr i64 %var_2_517 to double*
; %var_2_815 = inttoptr i64 %var_2_814 to double*
; Matched:%var_2_519:  %var_2_519 = load double, double* %var_2_518, align 8
; %var_2_816 = load double, double* %var_2_815, align 8
%var_2_817 = insertelement <2 x double> undef, double %var_2_813, i32 0
%var_2_818 = insertelement <2 x double> %var_2_817, double %var_2_816, i32 1
%var_2_819 = fmul <2 x double> %var_2_811, %var_2_818
store <2 x double> %var_2_819, <2 x double>* %var_2_593, align 1
; Matched:%var_2_523:  %var_2_523 = add i64 %var_2_496, -160
; %var_2_820 = add i64 %var_2_793, -160
; Matched:%var_2_1042:  %var_2_1042 = add i64 %var_2_1028, 32
; %var_2_821 = add i64 %var_2_795, 32
; Matched:\<badref\>:  store i64 %var_2_1069, i64* %PC, align 8
; store i64 %var_2_821, i64* %var_2_3, align 8
; Matched:%var_2_525:  %var_2_525 = inttoptr i64 %var_2_523 to double*
; %var_2_822 = inttoptr i64 %var_2_820 to double*
; Matched:%var_2_526:  %var_2_526 = load double, double* %var_2_525, align 8
; %var_2_823 = load double, double* %var_2_822, align 8
; Matched:%var_2_527:  %var_2_527 = add i64 %var_2_496, -152
; %var_2_824 = add i64 %var_2_793, -152
; Matched:%var_2_528:  %var_2_528 = inttoptr i64 %var_2_527 to double*
; %var_2_825 = inttoptr i64 %var_2_824 to double*
; Matched:%var_2_529:  %var_2_529 = load double, double* %var_2_528, align 8
; %var_2_826 = load double, double* %var_2_825, align 8
%var_2_827 = insertelement <2 x double> undef, double %var_2_823, i32 0
%var_2_828 = insertelement <2 x double> %var_2_827, double %var_2_826, i32 1
%var_2_829 = fsub <2 x double> %var_2_819, %var_2_828
store <2 x double> %var_2_829, <2 x double>* %var_2_593, align 1
%var_2_830 = load <2 x double>, <2 x double>* %var_2_594, align 1
%var_2_831 = fdiv <2 x double> %var_2_830, %var_2_829
store <2 x double> %var_2_831, <2 x double>* %var_2_594, align 1
; Matched:%var_2_535:  %var_2_535 = add i64 %var_2_496, -128
; %var_2_832 = add i64 %var_2_793, -128
; Matched:%var_2_1047:  %var_2_1047 = add i64 %var_2_1028, 41
; %var_2_833 = add i64 %var_2_795, 41
; Matched:\<badref\>:  store i64 %var_2_1074, i64* %PC, align 8
; store i64 %var_2_833, i64* %var_2_3, align 8
; Matched:%var_2_537:  %var_2_537 = inttoptr i64 %var_2_535 to double*
; %var_2_834 = inttoptr i64 %var_2_832 to double*
; Matched:%var_2_538:  %var_2_538 = load double, double* %var_2_537, align 8
; %var_2_835 = load double, double* %var_2_834, align 8
; Matched:%var_2_539:  %var_2_539 = add i64 %var_2_496, -120
; %var_2_836 = add i64 %var_2_793, -120
; Matched:%var_2_540:  %var_2_540 = inttoptr i64 %var_2_539 to double*
; %var_2_837 = inttoptr i64 %var_2_836 to double*
; Matched:%var_2_541:  %var_2_541 = load double, double* %var_2_540, align 8
; %var_2_838 = load double, double* %var_2_837, align 8
%var_2_839 = insertelement <2 x double> undef, double %var_2_835, i32 0
%var_2_840 = insertelement <2 x double> %var_2_839, double %var_2_838, i32 1
%var_2_841 = fadd <2 x double> %var_2_831, %var_2_840
store <2 x double> %var_2_841, <2 x double>* %var_2_594, align 1
; Matched:%var_2_1078:  %var_2_1078 = add i64 %var_2_1055, 46
; %var_2_842 = add i64 %var_2_795, 46
; Matched:\<badref\>:  store i64 %var_2_1051, i64* %PC, align 8
; store i64 %var_2_842, i64* %var_2_3, align 8
%bc24 = bitcast <2 x double> %var_2_841 to <2 x i64>
%var_2_843 = extractelement <2 x i64> %bc24, i32 0
%bc18 = bitcast <2 x double> %var_2_841 to <2 x i64>
%var_2_844 = extractelement <2 x i64> %bc18, i32 1
; Matched:%var_2_548:  %var_2_548 = inttoptr i64 %var_2_535 to i64*
; %var_2_845 = inttoptr i64 %var_2_832 to i64*
; Matched:\<badref\>:  store i64 %var_2_546, i64* %var_2_548, align 8
; store i64 %var_2_843, i64* %var_2_845, align 8
; Matched:%var_2_549:  %var_2_549 = inttoptr i64 %var_2_539 to i64*
; %var_2_846 = inttoptr i64 %var_2_836 to i64*
; Matched:\<badref\>:  store i64 %var_2_547, i64* %var_2_549, align 8
; store i64 %var_2_844, i64* %var_2_846, align 8
; Matched:%var_2_550:  %var_2_550 = load i64, i64* %RBP, align 8
; %var_2_847 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_551:  %var_2_551 = add i64 %var_2_550, -176
; %var_2_848 = add i64 %var_2_847, -176
%var_2_849 = load i64, i64* %var_2_3, align 8
%var_2_850 = add i64 %var_2_849, 8
store i64 %var_2_850, i64* %var_2_3, align 8
; Matched:%var_2_554:  %var_2_554 = inttoptr i64 %var_2_551 to i64*
; %var_2_851 = inttoptr i64 %var_2_848 to i64*
; Matched:%var_2_555:  %var_2_555 = load i64, i64* %var_2_554, align 8
; %var_2_852 = load i64, i64* %var_2_851, align 8
; Matched:%var_2_556:  %var_2_556 = add i64 %var_2_550, -168
; %var_2_853 = add i64 %var_2_847, -168
; Matched:%var_2_557:  %var_2_557 = inttoptr i64 %var_2_556 to i64*
; %var_2_854 = inttoptr i64 %var_2_853 to i64*
; Matched:%var_2_558:  %var_2_558 = load i64, i64* %var_2_557, align 8
; %var_2_855 = load i64, i64* %var_2_854, align 8
; Matched:\<badref\>:  store i64 %var_2_555, i64* %var_2_73, align 1, !tbaa !1285
; store i64 %var_2_852, i64* %var_2_71, align 1
; Matched:\<badref\>:  store i64 %var_2_558, i64* %var_2_45, align 1, !tbaa !1285
; store i64 %var_2_855, i64* %var_2_42, align 1
; Matched:%var_2_559:  %var_2_559 = add i64 %var_2_550, -224
; %var_2_856 = add i64 %var_2_847, -224
%var_2_857 = add i64 %var_2_849, 16
store i64 %var_2_857, i64* %var_2_3, align 8
%var_2_858 = load <2 x double>, <2 x double>* %var_2_594, align 1
; Matched:%var_2_562:  %var_2_562 = inttoptr i64 %var_2_559 to double*
; %var_2_859 = inttoptr i64 %var_2_856 to double*
; Matched:%var_2_563:  %var_2_563 = load double, double* %var_2_562, align 8
; %var_2_860 = load double, double* %var_2_859, align 8
; Matched:%var_2_564:  %var_2_564 = add i64 %var_2_550, -216
; %var_2_861 = add i64 %var_2_847, -216
; Matched:%var_2_565:  %var_2_565 = inttoptr i64 %var_2_564 to double*
; %var_2_862 = inttoptr i64 %var_2_861 to double*
; Matched:%var_2_566:  %var_2_566 = load double, double* %var_2_565, align 8
; %var_2_863 = load double, double* %var_2_862, align 8
%var_2_864 = insertelement <2 x double> undef, double %var_2_860, i32 0
%var_2_865 = insertelement <2 x double> %var_2_864, double %var_2_863, i32 1
%var_2_866 = fadd <2 x double> %var_2_858, %var_2_865
store <2 x double> %var_2_866, <2 x double>* %var_2_594, align 1
; Matched:%var_2_570:  %var_2_570 = add i64 %var_2_552, 24
; %var_2_867 = add i64 %var_2_849, 24
; Matched:\<badref\>:  store i64 %var_2_1038, i64* %PC, align 8
; store i64 %var_2_867, i64* %var_2_3, align 8
%bc25 = bitcast <2 x double> %var_2_866 to <2 x i64>
%var_2_868 = extractelement <2 x i64> %bc25, i32 0
%bc19 = bitcast <2 x double> %var_2_866 to <2 x i64>
%var_2_869 = extractelement <2 x i64> %bc19, i32 1
; Matched:%var_2_573:  %var_2_573 = inttoptr i64 %var_2_559 to i64*
; %var_2_870 = inttoptr i64 %var_2_856 to i64*
; Matched:\<badref\>:  store i64 %var_2_571, i64* %var_2_573, align 8
; store i64 %var_2_868, i64* %var_2_870, align 8
; Matched:%var_2_574:  %var_2_574 = inttoptr i64 %var_2_564 to i64*
; %var_2_871 = inttoptr i64 %var_2_861 to i64*
; Matched:\<badref\>:  store i64 %var_2_572, i64* %var_2_574, align 8
; store i64 %var_2_869, i64* %var_2_871, align 8
%var_2_872 = load i64, i64* %var_2_3, align 8
%var_2_873 = add i64 %var_2_872, -236
; Matched:\<badref\>:  store i64 %var_2_576, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_873, i64* %var_2_3, align 8
  br label %block_.L_400934

block_.L_400a25:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit
; Matched:  %RDI = getelementptr inbounds %union.anon, %union.anon* %var_2_5, i64 0, i32 0
; %RDI.i147 = getelementptr inbounds %union.anon, %union.anon* %var_2_53, i64 0, i32 0
; Matched:\<badref\>:  store i64 add (i64 ptrtoint (%seg_400c30__rodata_type* @seg_400c30__rodata to i64), i64 40), i64* %RDI, align 8, !tbaa !1261
; store i64 ptrtoint (%G__0x400c58_type* @G__0x400c58 to i64), i64* %RDI.i147, align 8
; Matched:\<badref\>:  store i64 add (i64 ptrtoint (%seg_400c30__rodata_type* @seg_400c30__rodata to i64), i64 99), i64* %RSI, align 8, !tbaa !1261
; store i64 ptrtoint (%G__0x400c61_type* @G__0x400c61 to i64), i64* %RSI.i87, align 8
; Matched:%var_2_618:  %var_2_618 = load i64, i64* %RBP, align 8
; %var_2_874 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_619:  %var_2_619 = add i64 %var_2_618, -24
; %var_2_875 = add i64 %var_2_874, -24
; Matched:%var_2_620:  %var_2_620 = add i64 %var_2_911, 25
; %var_2_876 = add i64 %var_2_634, 25
; Matched:\<badref\>:  store i64 %var_2_620, i64* %PC, align 8
; store i64 %var_2_876, i64* %var_2_3, align 8
; Matched:%var_2_621:  %var_2_621 = inttoptr i64 %var_2_619 to i64*
; %var_2_877 = inttoptr i64 %var_2_875 to i64*
; Matched:%var_2_622:  %var_2_622 = load i64, i64* %var_2_621, align 8
; %var_2_878 = load i64, i64* %var_2_877, align 8
; Matched:\<badref\>:  store i64 %var_2_622, i64* %var_2_73, align 1, !tbaa !1285
; store i64 %var_2_878, i64* %var_2_71, align 1
store double 0.000000e+00, double* %var_2_302, align 1
; Matched:%var_2_3:  %var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
; %var_2_879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
; Matched:  %AL = bitcast %union.anon* %var_2_3 to i8*
; %AL.i140 = bitcast %union.anon* %var_2_879 to i8*
; Matched:\<badref\>:  store i8 1, i8* %AL, align 1, !tbaa !1289
; store i8 1, i8* %AL.i140, align 1
; Matched:%var_2_623:  %var_2_623 = add i64 %var_2_911, -1285
; %var_2_880 = add i64 %var_2_634, -1285
; Matched:%var_2_624:  %var_2_624 = add i64 %var_2_911, 32
; %var_2_881 = add i64 %var_2_634, 32
%var_2_882 = load i64, i64* %var_2_6, align 8
%var_2_883 = add i64 %var_2_882, -8
; Matched:%var_2_627:  %var_2_627 = inttoptr i64 %var_2_626 to i64*
; %var_2_884 = inttoptr i64 %var_2_883 to i64*
; Matched:\<badref\>:  store i64 %var_2_624, i64* %var_2_627, align 8
; store i64 %var_2_881, i64* %var_2_884, align 8
; Matched:\<badref\>:  store i64 %var_2_805, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_883, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_623, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_880, i64* %var_2_3, align 8
%var_2_885 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %var_2_631)
; Matched:%var_2_690:  %var_2_690 = load i64, i64* %PC, align 8
; %var_2_886 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 add (i64 ptrtoint (%seg_400c30__rodata_type* @seg_400c30__rodata to i64), i64 40), i64* %RDI, align 8, !tbaa !1261
; store i64 ptrtoint (%G__0x400c58_type* @G__0x400c58 to i64), i64* %RDI.i147, align 8
; Matched:\<badref\>:  store i64 add (i64 ptrtoint (%seg_400c30__rodata_type* @seg_400c30__rodata to i64), i64 64), i64* %RSI, align 8, !tbaa !1261
; store i64 ptrtoint (%G__0x400c69_type* @G__0x400c69 to i64), i64* %RSI.i87, align 8
; Matched:%var_2_630:  %var_2_630 = load i64, i64* %RBP, align 8
; %var_2_887 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_631:  %var_2_631 = add i64 %var_2_630, -32
; %var_2_888 = add i64 %var_2_887, -32
; Matched:%var_2_693:  %var_2_693 = add i64 %var_2_690, 25
; %var_2_889 = add i64 %var_2_886, 25
; Matched:\<badref\>:  store i64 %var_2_693, i64* %PC, align 8
; store i64 %var_2_889, i64* %var_2_3, align 8
; Matched:%var_2_633:  %var_2_633 = inttoptr i64 %var_2_631 to i64*
; %var_2_890 = inttoptr i64 %var_2_888 to i64*
; Matched:%var_2_634:  %var_2_634 = load i64, i64* %var_2_633, align 8
; %var_2_891 = load i64, i64* %var_2_890, align 8
; Matched:\<badref\>:  store i64 %var_2_634, i64* %var_2_73, align 1, !tbaa !1285
; store i64 %var_2_891, i64* %var_2_71, align 1
store double 0.000000e+00, double* %var_2_302, align 1
; Matched:  %EAX = bitcast %union.anon* %var_2_3 to i32*
; %EAX.i126 = bitcast %union.anon* %var_2_879 to i32*
; Matched:%var_2_635:  %var_2_635 = add i64 %var_2_630, -300
; %var_2_892 = add i64 %var_2_887, -300
; Matched:%var_2_636:  %var_2_636 = load i32, i32* %EAX, align 4
; %var_2_893 = load i32, i32* %EAX.i126, align 4
; Matched:%var_2_698:  %var_2_698 = add i64 %var_2_690, 31
; %var_2_894 = add i64 %var_2_886, 31
; Matched:\<badref\>:  store i64 %var_2_698, i64* %PC, align 8
; store i64 %var_2_894, i64* %var_2_3, align 8
; Matched:%var_2_638:  %var_2_638 = inttoptr i64 %var_2_635 to i32*
; %var_2_895 = inttoptr i64 %var_2_892 to i32*
; Matched:\<badref\>:  store i32 %var_2_636, i32* %var_2_638, align 4
; store i32 %var_2_893, i32* %var_2_895, align 4
; Matched:%var_2_683:  %var_2_683 = load i64, i64* %PC, align 8
; %var_2_896 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i8 1, i8* %AL, align 1, !tbaa !1289
; store i8 1, i8* %AL.i140, align 1
; Matched:%var_2_640:  %var_2_640 = add i64 %var_2_639, -1348
; %var_2_897 = add i64 %var_2_896, -1348
; Matched:%var_2_702:  %var_2_702 = add i64 %var_2_700, 7
; %var_2_898 = add i64 %var_2_896, 7
%var_2_899 = load i64, i64* %var_2_6, align 8
%var_2_900 = add i64 %var_2_899, -8
; Matched:%var_2_705:  %var_2_705 = inttoptr i64 %var_2_704 to i64*
; %var_2_901 = inttoptr i64 %var_2_900 to i64*
; Matched:\<badref\>:  store i64 %var_2_685, i64* %var_2_688, align 8
; store i64 %var_2_898, i64* %var_2_901, align 8
; Matched:\<badref\>:  store i64 %var_2_687, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_900, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_640, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_897, i64* %var_2_3, align 8
%var_2_902 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %var_2_885)
; Matched:%var_2_646:  %var_2_646 = load i64, i64* %RBP, align 8
; %var_2_903 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_647:  %var_2_647 = add i64 %var_2_646, -96
; %var_2_904 = add i64 %var_2_903, -96
%var_2_905 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_791:  %var_2_791 = add i64 %var_2_790, 5
; %var_2_906 = add i64 %var_2_905, 5
; Matched:\<badref\>:  store i64 %var_2_791, i64* %PC, align 8
; store i64 %var_2_906, i64* %var_2_3, align 8
; Matched:%var_2_650:  %var_2_650 = inttoptr i64 %var_2_647 to i64*
; %var_2_907 = inttoptr i64 %var_2_904 to i64*
; Matched:%var_2_651:  %var_2_651 = load i64, i64* %var_2_650, align 8
; %var_2_908 = load i64, i64* %var_2_907, align 8
; Matched:%var_2_652:  %var_2_652 = add i64 %var_2_646, -88
; %var_2_909 = add i64 %var_2_903, -88
; Matched:%var_2_653:  %var_2_653 = inttoptr i64 %var_2_652 to i64*
; %var_2_910 = inttoptr i64 %var_2_909 to i64*
; Matched:%var_2_654:  %var_2_654 = load i64, i64* %var_2_653, align 8
; %var_2_911 = load i64, i64* %var_2_910, align 8
; Matched:\<badref\>:  store i64 %var_2_651, i64* %var_2_73, align 1, !tbaa !1285
; store i64 %var_2_908, i64* %var_2_71, align 1
; Matched:\<badref\>:  store i64 %var_2_654, i64* %var_2_45, align 1, !tbaa !1285
; store i64 %var_2_911, i64* %var_2_42, align 1
; Matched:%var_2_655:  %var_2_655 = add i64 %var_2_646, -304
; %var_2_912 = add i64 %var_2_903, -304
; Matched:%var_2_656:  %var_2_656 = load i32, i32* %EAX, align 4
; %var_2_913 = load i32, i32* %EAX.i126, align 4
; Matched:%var_2_657:  %var_2_657 = add i64 %var_2_648, 11
; %var_2_914 = add i64 %var_2_905, 11
; Matched:\<badref\>:  store i64 %var_2_799, i64* %PC, align 8
; store i64 %var_2_914, i64* %var_2_3, align 8
; Matched:%var_2_658:  %var_2_658 = inttoptr i64 %var_2_655 to i32*
; %var_2_915 = inttoptr i64 %var_2_912 to i32*
; Matched:\<badref\>:  store i32 %var_2_656, i32* %var_2_658, align 4
; store i32 %var_2_913, i32* %var_2_915, align 4
%var_2_916 = load i64, i64* %var_2_3, align 8
%var_2_917 = add i64 %var_2_916, -982
; Matched:%var_2_803:  %var_2_803 = add i64 %var_2_801, 5
; %var_2_918 = add i64 %var_2_916, 5
%var_2_919 = load i64, i64* %var_2_6, align 8
%var_2_920 = add i64 %var_2_919, -8
; Matched:%var_2_752:  %var_2_752 = inttoptr i64 %var_2_751 to i64*
; %var_2_921 = inttoptr i64 %var_2_920 to i64*
; Matched:\<badref\>:  store i64 %var_2_803, i64* %var_2_806, align 8
; store i64 %var_2_918, i64* %var_2_921, align 8
; Matched:\<badref\>:  store i64 %var_2_167, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_920, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_660, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_917, i64* %var_2_3, align 8
%call2_400a76 = tail call %struct.Memory* @sub_4006a0.sum_vec(%struct.State* nonnull %0, i64 %var_2_917, %struct.Memory* %var_2_902)
; Matched:%var_2_808:  %var_2_808 = load i64, i64* %PC, align 8
; %var_2_922 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 add (i64 ptrtoint (%seg_400c30__rodata_type* @seg_400c30__rodata to i64), i64 40), i64* %RDI, align 8, !tbaa !1261
; store i64 ptrtoint (%G__0x400c58_type* @G__0x400c58 to i64), i64* %RDI.i147, align 8
; Matched:\<badref\>:  store i64 add (i64 ptrtoint (%seg_400c30__rodata_type* @seg_400c30__rodata to i64), i64 49), i64* %RSI, align 8, !tbaa !1261
; store i64 ptrtoint (%G__0x400c70_type* @G__0x400c70 to i64), i64* %RSI.i87, align 8
; Matched:\<badref\>:  store i8 1, i8* %AL, align 1, !tbaa !1289
; store i8 1, i8* %AL.i140, align 1
; Matched:%var_2_667:  %var_2_667 = add i64 %var_2_666, -1371
; %var_2_923 = add i64 %var_2_922, -1371
; Matched:%var_2_783:  %var_2_783 = add i64 %var_2_781, 27
; %var_2_924 = add i64 %var_2_922, 27
%var_2_925 = load i64, i64* %var_2_6, align 8
%var_2_926 = add i64 %var_2_925, -8
; Matched:%var_2_732:  %var_2_732 = inttoptr i64 %var_2_731 to i64*
; %var_2_927 = inttoptr i64 %var_2_926 to i64*
; Matched:\<badref\>:  store i64 %var_2_729, i64* %var_2_732, align 8
; store i64 %var_2_924, i64* %var_2_927, align 8
; Matched:\<badref\>:  store i64 %var_2_955, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_926, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_667, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_923, i64* %var_2_3, align 8
%var_2_928 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_400a76)
; Matched:%var_2_629:  %var_2_629 = load i64, i64* %PC, align 8
; %var_2_929 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 add (i64 ptrtoint (%seg_400c30__rodata_type* @seg_400c30__rodata to i64), i64 40), i64* %RDI, align 8, !tbaa !1261
; store i64 ptrtoint (%G__0x400c58_type* @G__0x400c58 to i64), i64* %RDI.i147, align 8
; Matched:\<badref\>:  store i64 add (i64 ptrtoint (%seg_400c30__rodata_type* @seg_400c30__rodata to i64), i64 85), i64* %RSI, align 8, !tbaa !1261
; store i64 ptrtoint (%G__0x400c79_type* @G__0x400c79 to i64), i64* %RSI.i87, align 8
; Matched:%var_2_674:  %var_2_674 = load i64, i64* %RBP, align 8
; %var_2_930 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_675:  %var_2_675 = add i64 %var_2_674, -40
; %var_2_931 = add i64 %var_2_930, -40
; Matched:%var_2_632:  %var_2_632 = add i64 %var_2_629, 25
; %var_2_932 = add i64 %var_2_929, 25
; Matched:\<badref\>:  store i64 %var_2_632, i64* %PC, align 8
; store i64 %var_2_932, i64* %var_2_3, align 8
; Matched:%var_2_677:  %var_2_677 = inttoptr i64 %var_2_675 to i64*
; %var_2_933 = inttoptr i64 %var_2_931 to i64*
; Matched:%var_2_678:  %var_2_678 = load i64, i64* %var_2_677, align 8
; %var_2_934 = load i64, i64* %var_2_933, align 8
; Matched:\<badref\>:  store i64 %var_2_678, i64* %var_2_73, align 1, !tbaa !1285
; store i64 %var_2_934, i64* %var_2_71, align 1
store double 0.000000e+00, double* %var_2_302, align 1
; Matched:%var_2_679:  %var_2_679 = add i64 %var_2_674, -308
; %var_2_935 = add i64 %var_2_930, -308
; Matched:%var_2_680:  %var_2_680 = load i32, i32* %EAX, align 4
; %var_2_936 = load i32, i32* %EAX.i126, align 4
; Matched:%var_2_637:  %var_2_637 = add i64 %var_2_629, 31
; %var_2_937 = add i64 %var_2_929, 31
; Matched:\<badref\>:  store i64 %var_2_637, i64* %PC, align 8
; store i64 %var_2_937, i64* %var_2_3, align 8
; Matched:%var_2_682:  %var_2_682 = inttoptr i64 %var_2_679 to i32*
; %var_2_938 = inttoptr i64 %var_2_935 to i32*
; Matched:\<badref\>:  store i32 %var_2_680, i32* %var_2_682, align 4
; store i32 %var_2_936, i32* %var_2_938, align 4
; Matched:%var_2_700:  %var_2_700 = load i64, i64* %PC, align 8
; %var_2_939 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i8 1, i8* %AL, align 1, !tbaa !1289
; store i8 1, i8* %AL.i140, align 1
; Matched:%var_2_684:  %var_2_684 = add i64 %var_2_683, -1429
; %var_2_940 = add i64 %var_2_939, -1429
; Matched:%var_2_641:  %var_2_641 = add i64 %var_2_639, 7
; %var_2_941 = add i64 %var_2_939, 7
%var_2_942 = load i64, i64* %var_2_6, align 8
%var_2_943 = add i64 %var_2_942, -8
; Matched:%var_2_644:  %var_2_644 = inttoptr i64 %var_2_643 to i64*
; %var_2_944 = inttoptr i64 %var_2_943 to i64*
; Matched:\<badref\>:  store i64 %var_2_702, i64* %var_2_705, align 8
; store i64 %var_2_941, i64* %var_2_944, align 8
; Matched:\<badref\>:  store i64 %var_2_999, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_943, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_684, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_940, i64* %var_2_3, align 8
%var_2_945 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %var_2_928)
; Matched:%var_2_673:  %var_2_673 = load i64, i64* %PC, align 8
; %var_2_946 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 add (i64 ptrtoint (%seg_400c30__rodata_type* @seg_400c30__rodata to i64), i64 40), i64* %RDI, align 8, !tbaa !1261
; store i64 ptrtoint (%G__0x400c58_type* @G__0x400c58 to i64), i64* %RDI.i147, align 8
; Matched:\<badref\>:  store i64 add (i64 ptrtoint (%seg_400c30__rodata_type* @seg_400c30__rodata to i64), i64 124), i64* %RSI, align 8, !tbaa !1261
; store i64 ptrtoint (%G__0x400c85_type* @G__0x400c85 to i64), i64* %RSI.i87, align 8
; Matched:%var_2_691:  %var_2_691 = load i64, i64* %RBP, align 8
; %var_2_947 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_692:  %var_2_692 = add i64 %var_2_691, -48
; %var_2_948 = add i64 %var_2_947, -48
; Matched:%var_2_676:  %var_2_676 = add i64 %var_2_673, 25
; %var_2_949 = add i64 %var_2_946, 25
; Matched:\<badref\>:  store i64 %var_2_676, i64* %PC, align 8
; store i64 %var_2_949, i64* %var_2_3, align 8
; Matched:%var_2_694:  %var_2_694 = inttoptr i64 %var_2_692 to i64*
; %var_2_950 = inttoptr i64 %var_2_948 to i64*
; Matched:%var_2_695:  %var_2_695 = load i64, i64* %var_2_694, align 8
; %var_2_951 = load i64, i64* %var_2_950, align 8
; Matched:\<badref\>:  store i64 %var_2_695, i64* %var_2_73, align 1, !tbaa !1285
; store i64 %var_2_951, i64* %var_2_71, align 1
store double 0.000000e+00, double* %var_2_302, align 1
; Matched:%var_2_696:  %var_2_696 = add i64 %var_2_691, -312
; %var_2_952 = add i64 %var_2_947, -312
; Matched:%var_2_697:  %var_2_697 = load i32, i32* %EAX, align 4
; %var_2_953 = load i32, i32* %EAX.i126, align 4
; Matched:%var_2_681:  %var_2_681 = add i64 %var_2_673, 31
; %var_2_954 = add i64 %var_2_946, 31
; Matched:\<badref\>:  store i64 %var_2_681, i64* %PC, align 8
; store i64 %var_2_954, i64* %var_2_3, align 8
; Matched:%var_2_699:  %var_2_699 = inttoptr i64 %var_2_696 to i32*
; %var_2_955 = inttoptr i64 %var_2_952 to i32*
; Matched:\<badref\>:  store i32 %var_2_697, i32* %var_2_699, align 4
; store i32 %var_2_953, i32* %var_2_955, align 4
; Matched:%var_2_639:  %var_2_639 = load i64, i64* %PC, align 8
; %var_2_956 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i8 1, i8* %AL, align 1, !tbaa !1289
; store i8 1, i8* %AL.i140, align 1
; Matched:%var_2_701:  %var_2_701 = add i64 %var_2_700, -1467
; %var_2_957 = add i64 %var_2_956, -1467
; Matched:%var_2_685:  %var_2_685 = add i64 %var_2_683, 7
; %var_2_958 = add i64 %var_2_956, 7
%var_2_959 = load i64, i64* %var_2_6, align 8
%var_2_960 = add i64 %var_2_959, -8
; Matched:%var_2_688:  %var_2_688 = inttoptr i64 %var_2_687 to i64*
; %var_2_961 = inttoptr i64 %var_2_960 to i64*
; Matched:\<badref\>:  store i64 %var_2_641, i64* %var_2_644, align 8
; store i64 %var_2_958, i64* %var_2_961, align 8
; Matched:\<badref\>:  store i64 %var_2_927, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_960, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_701, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_957, i64* %var_2_3, align 8
%var_2_962 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %var_2_945)
; Matched:%var_2_707:  %var_2_707 = load i64, i64* %RBP, align 8
; %var_2_963 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_708:  %var_2_708 = add i64 %var_2_707, -64
; %var_2_964 = add i64 %var_2_963, -64
%var_2_965 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_710:  %var_2_710 = add i64 %var_2_709, 5
; %var_2_966 = add i64 %var_2_965, 5
; Matched:\<badref\>:  store i64 %var_2_710, i64* %PC, align 8
; store i64 %var_2_966, i64* %var_2_3, align 8
; Matched:%var_2_711:  %var_2_711 = inttoptr i64 %var_2_708 to i64*
; %var_2_967 = inttoptr i64 %var_2_964 to i64*
; Matched:%var_2_712:  %var_2_712 = load i64, i64* %var_2_711, align 8
; %var_2_968 = load i64, i64* %var_2_967, align 8
; Matched:%var_2_713:  %var_2_713 = add i64 %var_2_707, -56
; %var_2_969 = add i64 %var_2_963, -56
; Matched:%var_2_714:  %var_2_714 = inttoptr i64 %var_2_713 to i64*
; %var_2_970 = inttoptr i64 %var_2_969 to i64*
; Matched:%var_2_715:  %var_2_715 = load i64, i64* %var_2_714, align 8
; %var_2_971 = load i64, i64* %var_2_970, align 8
; Matched:\<badref\>:  store i64 %var_2_712, i64* %var_2_73, align 1, !tbaa !1285
; store i64 %var_2_968, i64* %var_2_71, align 1
; Matched:\<badref\>:  store i64 %var_2_715, i64* %var_2_45, align 1, !tbaa !1285
; store i64 %var_2_971, i64* %var_2_42, align 1
; Matched:%var_2_716:  %var_2_716 = add i64 %var_2_707, -316
; %var_2_972 = add i64 %var_2_963, -316
; Matched:%var_2_717:  %var_2_717 = load i32, i32* %EAX, align 4
; %var_2_973 = load i32, i32* %EAX.i126, align 4
; Matched:%var_2_852:  %var_2_852 = add i64 %var_2_823, 11
; %var_2_974 = add i64 %var_2_965, 11
; Matched:\<badref\>:  store i64 %var_2_745, i64* %PC, align 8
; store i64 %var_2_974, i64* %var_2_3, align 8
; Matched:%var_2_719:  %var_2_719 = inttoptr i64 %var_2_716 to i32*
; %var_2_975 = inttoptr i64 %var_2_972 to i32*
; Matched:\<badref\>:  store i32 %var_2_717, i32* %var_2_719, align 4
; store i32 %var_2_973, i32* %var_2_975, align 4
%var_2_976 = load i64, i64* %var_2_3, align 8
%var_2_977 = add i64 %var_2_976, -1101
; Matched:%var_2_661:  %var_2_661 = add i64 %var_2_659, 5
; %var_2_978 = add i64 %var_2_976, 5
%var_2_979 = load i64, i64* %var_2_6, align 8
%var_2_980 = add i64 %var_2_979, -8
; Matched:%var_2_806:  %var_2_806 = inttoptr i64 %var_2_805 to i64*
; %var_2_981 = inttoptr i64 %var_2_980 to i64*
; Matched:\<badref\>:  store i64 %var_2_661, i64* %var_2_664, align 8
; store i64 %var_2_978, i64* %var_2_981, align 8
; Matched:\<badref\>:  store i64 %var_2_812, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_980, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_721, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_977, i64* %var_2_3, align 8
%call2_400aed = tail call %struct.Memory* @sub_4006a0.sum_vec(%struct.State* nonnull %0, i64 %var_2_977, %struct.Memory* %var_2_962)
; Matched:%var_2_666:  %var_2_666 = load i64, i64* %PC, align 8
; %var_2_982 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 add (i64 ptrtoint (%seg_400c30__rodata_type* @seg_400c30__rodata to i64), i64 40), i64* %RDI, align 8, !tbaa !1261
; store i64 ptrtoint (%G__0x400c58_type* @G__0x400c58 to i64), i64* %RDI.i147, align 8
; Matched:\<badref\>:  store i64 add (i64 ptrtoint (%seg_400c30__rodata_type* @seg_400c30__rodata to i64), i64 133), i64* %RSI, align 8, !tbaa !1261
; store i64 ptrtoint (%G__0x400cac_type* @G__0x400cac to i64), i64* %RSI.i87, align 8
; Matched:\<badref\>:  store i8 1, i8* %AL, align 1, !tbaa !1289
; store i8 1, i8* %AL.i140, align 1
; Matched:%var_2_728:  %var_2_728 = add i64 %var_2_727, -1490
; %var_2_983 = add i64 %var_2_982, -1490
; Matched:%var_2_756:  %var_2_756 = add i64 %var_2_754, 27
; %var_2_984 = add i64 %var_2_982, 27
%var_2_985 = load i64, i64* %var_2_6, align 8
%var_2_986 = add i64 %var_2_985, -8
; Matched:%var_2_786:  %var_2_786 = inttoptr i64 %var_2_785 to i64*
; %var_2_987 = inttoptr i64 %var_2_986 to i64*
; Matched:\<badref\>:  store i64 %var_2_783, i64* %var_2_786, align 8
; store i64 %var_2_984, i64* %var_2_987, align 8
; Matched:\<badref\>:  store i64 %var_2_731, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_986, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_728, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_983, i64* %var_2_3, align 8
%var_2_988 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_400aed)
; Matched:%var_2_734:  %var_2_734 = load i64, i64* %RBP, align 8
; %var_2_989 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_735:  %var_2_735 = add i64 %var_2_734, -80
; %var_2_990 = add i64 %var_2_989, -80
%var_2_991 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_71:  %var_2_71 = add i64 %var_2_70, 5
; %var_2_992 = add i64 %var_2_991, 5
; Matched:\<badref\>:  store i64 %var_2_71, i64* %PC, align 8
; store i64 %var_2_992, i64* %var_2_3, align 8
; Matched:%var_2_738:  %var_2_738 = inttoptr i64 %var_2_735 to i64*
; %var_2_993 = inttoptr i64 %var_2_990 to i64*
; Matched:%var_2_739:  %var_2_739 = load i64, i64* %var_2_738, align 8
; %var_2_994 = load i64, i64* %var_2_993, align 8
; Matched:%var_2_740:  %var_2_740 = add i64 %var_2_734, -72
; %var_2_995 = add i64 %var_2_989, -72
; Matched:%var_2_741:  %var_2_741 = inttoptr i64 %var_2_740 to i64*
; %var_2_996 = inttoptr i64 %var_2_995 to i64*
; Matched:%var_2_742:  %var_2_742 = load i64, i64* %var_2_741, align 8
; %var_2_997 = load i64, i64* %var_2_996, align 8
; Matched:\<badref\>:  store i64 %var_2_739, i64* %var_2_73, align 1, !tbaa !1285
; store i64 %var_2_994, i64* %var_2_71, align 1
; Matched:\<badref\>:  store i64 %var_2_742, i64* %var_2_45, align 1, !tbaa !1285
; store i64 %var_2_997, i64* %var_2_42, align 1
; Matched:%var_2_743:  %var_2_743 = add i64 %var_2_734, -320
; %var_2_998 = add i64 %var_2_989, -320
; Matched:%var_2_744:  %var_2_744 = load i32, i32* %EAX, align 4
; %var_2_999 = load i32, i32* %EAX.i126, align 4
; Matched:%var_2_772:  %var_2_772 = add i64 %var_2_763, 11
; %var_2_1000 = add i64 %var_2_991, 11
; Matched:\<badref\>:  store i64 %var_2_718, i64* %PC, align 8
; store i64 %var_2_1000, i64* %var_2_3, align 8
; Matched:%var_2_746:  %var_2_746 = inttoptr i64 %var_2_743 to i32*
; %var_2_1001 = inttoptr i64 %var_2_998 to i32*
; Matched:\<badref\>:  store i32 %var_2_744, i32* %var_2_746, align 4
; store i32 %var_2_999, i32* %var_2_1001, align 4
%var_2_1002 = load i64, i64* %var_2_3, align 8
%var_2_1003 = add i64 %var_2_1002, -1144
; Matched:%var_2_722:  %var_2_722 = add i64 %var_2_720, 5
; %var_2_1004 = add i64 %var_2_1002, 5
%var_2_1005 = load i64, i64* %var_2_6, align 8
%var_2_1006 = add i64 %var_2_1005, -8
; Matched:%var_2_664:  %var_2_664 = inttoptr i64 %var_2_663 to i64*
; %var_2_1007 = inttoptr i64 %var_2_1006 to i64*
; Matched:\<badref\>:  store i64 %var_2_722, i64* %var_2_725, align 8
; store i64 %var_2_1004, i64* %var_2_1007, align 8
; Matched:\<badref\>:  store i64 %var_2_663, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1006, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_748, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1003, i64* %var_2_3, align 8
%call2_400b18 = tail call %struct.Memory* @sub_4006a0.sum_vec(%struct.State* nonnull %0, i64 %var_2_1003, %struct.Memory* %var_2_988)
; Matched:%var_2_727:  %var_2_727 = load i64, i64* %PC, align 8
; %var_2_1008 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 add (i64 ptrtoint (%seg_400c30__rodata_type* @seg_400c30__rodata to i64), i64 40), i64* %RDI, align 8, !tbaa !1261
; store i64 ptrtoint (%G__0x400c58_type* @G__0x400c58 to i64), i64* %RDI.i147, align 8
; Matched:\<badref\>:  store i64 add (i64 ptrtoint (%seg_400c30__rodata_type* @seg_400c30__rodata to i64), i64 57), i64* %RSI, align 8, !tbaa !1261
; store i64 ptrtoint (%G__0x400c93_type* @G__0x400c93 to i64), i64* %RSI.i87, align 8
; Matched:\<badref\>:  store i8 1, i8* %AL, align 1, !tbaa !1289
; store i8 1, i8* %AL.i140, align 1
; Matched:%var_2_755:  %var_2_755 = add i64 %var_2_754, -1533
; %var_2_1009 = add i64 %var_2_1008, -1533
; Matched:%var_2_810:  %var_2_810 = add i64 %var_2_808, 27
; %var_2_1010 = add i64 %var_2_1008, 27
%var_2_1011 = load i64, i64* %var_2_6, align 8
%var_2_1012 = add i64 %var_2_1011, -8
; Matched:%var_2_759:  %var_2_759 = inttoptr i64 %var_2_758 to i64*
; %var_2_1013 = inttoptr i64 %var_2_1012 to i64*
; Matched:\<badref\>:  store i64 %var_2_756, i64* %var_2_759, align 8
; store i64 %var_2_1010, i64* %var_2_1013, align 8
; Matched:\<badref\>:  store i64 %var_2_626, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1012, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_755, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1009, i64* %var_2_3, align 8
%var_2_1014 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_400b18)
; Matched:%var_2_761:  %var_2_761 = load i64, i64* %RBP, align 8
; %var_2_1015 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_762:  %var_2_762 = add i64 %var_2_761, -112
; %var_2_1016 = add i64 %var_2_1015, -112
%var_2_1017 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_764:  %var_2_764 = add i64 %var_2_763, 5
; %var_2_1018 = add i64 %var_2_1017, 5
; Matched:\<badref\>:  store i64 %var_2_79, i64* %PC, align 8
; store i64 %var_2_1018, i64* %var_2_3, align 8
; Matched:%var_2_765:  %var_2_765 = inttoptr i64 %var_2_762 to i64*
; %var_2_1019 = inttoptr i64 %var_2_1016 to i64*
; Matched:%var_2_766:  %var_2_766 = load i64, i64* %var_2_765, align 8
; %var_2_1020 = load i64, i64* %var_2_1019, align 8
; Matched:%var_2_767:  %var_2_767 = add i64 %var_2_761, -104
; %var_2_1021 = add i64 %var_2_1015, -104
; Matched:%var_2_768:  %var_2_768 = inttoptr i64 %var_2_767 to i64*
; %var_2_1022 = inttoptr i64 %var_2_1021 to i64*
; Matched:%var_2_769:  %var_2_769 = load i64, i64* %var_2_768, align 8
; %var_2_1023 = load i64, i64* %var_2_1022, align 8
; Matched:\<badref\>:  store i64 %var_2_766, i64* %var_2_73, align 1, !tbaa !1285
; store i64 %var_2_1020, i64* %var_2_71, align 1
; Matched:\<badref\>:  store i64 %var_2_769, i64* %var_2_45, align 1, !tbaa !1285
; store i64 %var_2_1023, i64* %var_2_42, align 1
; Matched:%var_2_770:  %var_2_770 = add i64 %var_2_761, -324
; %var_2_1024 = add i64 %var_2_1015, -324
; Matched:%var_2_771:  %var_2_771 = load i32, i32* %EAX, align 4
; %var_2_1025 = load i32, i32* %EAX.i126, align 4
; Matched:%var_2_799:  %var_2_799 = add i64 %var_2_790, 11
; %var_2_1026 = add i64 %var_2_1017, 11
; Matched:\<badref\>:  store i64 %var_2_657, i64* %PC, align 8
; store i64 %var_2_1026, i64* %var_2_3, align 8
; Matched:%var_2_773:  %var_2_773 = inttoptr i64 %var_2_770 to i32*
; %var_2_1027 = inttoptr i64 %var_2_1024 to i32*
; Matched:\<badref\>:  store i32 %var_2_771, i32* %var_2_773, align 4
; store i32 %var_2_1025, i32* %var_2_1027, align 4
%var_2_1028 = load i64, i64* %var_2_3, align 8
%var_2_1029 = add i64 %var_2_1028, -1187
; Matched:%var_2_776:  %var_2_776 = add i64 %var_2_774, 5
; %var_2_1030 = add i64 %var_2_1028, 5
%var_2_1031 = load i64, i64* %var_2_6, align 8
%var_2_1032 = add i64 %var_2_1031, -8
; Matched:%var_2_725:  %var_2_725 = inttoptr i64 %var_2_724 to i64*
; %var_2_1033 = inttoptr i64 %var_2_1032 to i64*
; Matched:\<badref\>:  store i64 %var_2_776, i64* %var_2_779, align 8
; store i64 %var_2_1030, i64* %var_2_1033, align 8
; Matched:\<badref\>:  store i64 %var_2_670, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1032, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_775, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1029, i64* %var_2_3, align 8
%call2_400b43 = tail call %struct.Memory* @sub_4006a0.sum_vec(%struct.State* nonnull %0, i64 %var_2_1029, %struct.Memory* %var_2_1014)
; Matched:%var_2_781:  %var_2_781 = load i64, i64* %PC, align 8
; %var_2_1034 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 add (i64 ptrtoint (%seg_400c30__rodata_type* @seg_400c30__rodata to i64), i64 40), i64* %RDI, align 8, !tbaa !1261
; store i64 ptrtoint (%G__0x400c58_type* @G__0x400c58 to i64), i64* %RDI.i147, align 8
; Matched:\<badref\>:  store i64 add (i64 ptrtoint (%seg_400c30__rodata_type* @seg_400c30__rodata to i64), i64 73), i64* %RSI, align 8, !tbaa !1261
; store i64 ptrtoint (%G__0x400ca0_type* @G__0x400ca0 to i64), i64* %RSI.i87, align 8
; Matched:\<badref\>:  store i8 1, i8* %AL, align 1, !tbaa !1289
; store i8 1, i8* %AL.i140, align 1
; Matched:%var_2_782:  %var_2_782 = add i64 %var_2_781, -1576
; %var_2_1035 = add i64 %var_2_1034, -1576
; Matched:%var_2_668:  %var_2_668 = add i64 %var_2_666, 27
; %var_2_1036 = add i64 %var_2_1034, 27
%var_2_1037 = load i64, i64* %var_2_6, align 8
%var_2_1038 = add i64 %var_2_1037, -8
; Matched:%var_2_813:  %var_2_813 = inttoptr i64 %var_2_812 to i64*
; %var_2_1039 = inttoptr i64 %var_2_1038 to i64*
; Matched:\<badref\>:  store i64 %var_2_810, i64* %var_2_813, align 8
; store i64 %var_2_1036, i64* %var_2_1039, align 8
; Matched:\<badref\>:  store i64 %var_2_144, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1038, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_782, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1035, i64* %var_2_3, align 8
%var_2_1040 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_400b43)
; Matched:%var_2_788:  %var_2_788 = load i64, i64* %RBP, align 8
; %var_2_1041 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_789:  %var_2_789 = add i64 %var_2_788, -128
; %var_2_1042 = add i64 %var_2_1041, -128
%var_2_1043 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_85:  %var_2_85 = add i64 %var_2_84, 5
; %var_2_1044 = add i64 %var_2_1043, 5
; Matched:\<badref\>:  store i64 %var_2_85, i64* %PC, align 8
; store i64 %var_2_1044, i64* %var_2_3, align 8
; Matched:%var_2_792:  %var_2_792 = inttoptr i64 %var_2_789 to i64*
; %var_2_1045 = inttoptr i64 %var_2_1042 to i64*
; Matched:%var_2_793:  %var_2_793 = load i64, i64* %var_2_792, align 8
; %var_2_1046 = load i64, i64* %var_2_1045, align 8
; Matched:%var_2_794:  %var_2_794 = add i64 %var_2_788, -120
; %var_2_1047 = add i64 %var_2_1041, -120
; Matched:%var_2_795:  %var_2_795 = inttoptr i64 %var_2_794 to i64*
; %var_2_1048 = inttoptr i64 %var_2_1047 to i64*
; Matched:%var_2_796:  %var_2_796 = load i64, i64* %var_2_795, align 8
; %var_2_1049 = load i64, i64* %var_2_1048, align 8
; Matched:\<badref\>:  store i64 %var_2_793, i64* %var_2_73, align 1, !tbaa !1285
; store i64 %var_2_1046, i64* %var_2_71, align 1
; Matched:\<badref\>:  store i64 %var_2_796, i64* %var_2_45, align 1, !tbaa !1285
; store i64 %var_2_1049, i64* %var_2_42, align 1
; Matched:%var_2_797:  %var_2_797 = add i64 %var_2_788, -328
; %var_2_1050 = add i64 %var_2_1041, -328
; Matched:%var_2_798:  %var_2_798 = load i32, i32* %EAX, align 4
; %var_2_1051 = load i32, i32* %EAX.i126, align 4
; Matched:%var_2_718:  %var_2_718 = add i64 %var_2_709, 11
; %var_2_1052 = add i64 %var_2_1043, 11
; Matched:\<badref\>:  store i64 %var_2_852, i64* %PC, align 8
; store i64 %var_2_1052, i64* %var_2_3, align 8
; Matched:%var_2_800:  %var_2_800 = inttoptr i64 %var_2_797 to i32*
; %var_2_1053 = inttoptr i64 %var_2_1050 to i32*
; Matched:\<badref\>:  store i32 %var_2_798, i32* %var_2_800, align 4
; store i32 %var_2_1051, i32* %var_2_1053, align 4
%var_2_1054 = load i64, i64* %var_2_3, align 8
%var_2_1055 = add i64 %var_2_1054, -1230
; Matched:%var_2_749:  %var_2_749 = add i64 %var_2_747, 5
; %var_2_1056 = add i64 %var_2_1054, 5
%var_2_1057 = load i64, i64* %var_2_6, align 8
%var_2_1058 = add i64 %var_2_1057, -8
; Matched:%var_2_956:  %var_2_956 = inttoptr i64 %var_2_955 to i64*
; %var_2_1059 = inttoptr i64 %var_2_1058 to i64*
; Matched:\<badref\>:  store i64 %var_2_749, i64* %var_2_752, align 8
; store i64 %var_2_1056, i64* %var_2_1059, align 8
; Matched:\<badref\>:  store i64 %var_2_643, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1058, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_802, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1055, i64* %var_2_3, align 8
%call2_400b6e = tail call %struct.Memory* @sub_4006a0.sum_vec(%struct.State* nonnull %0, i64 %var_2_1055, %struct.Memory* %var_2_1040)
; Matched:%var_2_754:  %var_2_754 = load i64, i64* %PC, align 8
; %var_2_1060 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 add (i64 ptrtoint (%seg_400c30__rodata_type* @seg_400c30__rodata to i64), i64 40), i64* %RDI, align 8, !tbaa !1261
; store i64 ptrtoint (%G__0x400c58_type* @G__0x400c58 to i64), i64* %RDI.i147, align 8
; Matched:\<badref\>:  store i64 add (i64 ptrtoint (%seg_400c30__rodata_type* @seg_400c30__rodata to i64), i64 112), i64* %RSI, align 8, !tbaa !1261
; store i64 ptrtoint (%G__0x400cb5_type* @G__0x400cb5 to i64), i64* %RSI.i87, align 8
; Matched:\<badref\>:  store i8 1, i8* %AL, align 1, !tbaa !1289
; store i8 1, i8* %AL.i140, align 1
; Matched:%var_2_809:  %var_2_809 = add i64 %var_2_808, -1619
; %var_2_1061 = add i64 %var_2_1060, -1619
; Matched:%var_2_729:  %var_2_729 = add i64 %var_2_727, 27
; %var_2_1062 = add i64 %var_2_1060, 27
%var_2_1063 = load i64, i64* %var_2_6, align 8
%var_2_1064 = add i64 %var_2_1063, -8
; Matched:%var_2_671:  %var_2_671 = inttoptr i64 %var_2_670 to i64*
; %var_2_1065 = inttoptr i64 %var_2_1064 to i64*
; Matched:\<badref\>:  store i64 %var_2_668, i64* %var_2_671, align 8
; store i64 %var_2_1062, i64* %var_2_1065, align 8
; Matched:\<badref\>:  store i64 %var_2_1017, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1064, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_809, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1061, i64* %var_2_3, align 8
%var_2_1066 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_400b6e)
; Matched:%var_2_4:  %var_2_4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
; %var_2_1067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
; Matched:  %ECX = bitcast %union.anon* %var_2_4 to i32*
; %ECX.i9 = bitcast %union.anon* %var_2_1067 to i32*
; Matched:  %RCX = getelementptr inbounds %union.anon, %union.anon* %var_2_4, i64 0, i32 0
; %RCX.i = getelementptr inbounds %union.anon, %union.anon* %var_2_1067, i64 0, i32 0
%var_2_1068 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 0, i64* %RCX, align 8, !tbaa !1261
; store i64 0, i64* %RCX.i, align 8
; Matched:%var_2_816:  %var_2_816 = load i64, i64* %RBP, align 8
; %var_2_1069 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_817:  %var_2_817 = add i64 %var_2_816, -332
; %var_2_1070 = add i64 %var_2_1069, -332
; Matched:%var_2_818:  %var_2_818 = load i32, i32* %EAX, align 4
; %var_2_1071 = load i32, i32* %EAX.i126, align 4
%var_2_1072 = add i64 %var_2_1068, 8
store i64 %var_2_1072, i64* %var_2_3, align 8
; Matched:%var_2_820:  %var_2_820 = inttoptr i64 %var_2_817 to i32*
; %var_2_1073 = inttoptr i64 %var_2_1070 to i32*
; Matched:\<badref\>:  store i32 %var_2_818, i32* %var_2_820, align 4
; store i32 %var_2_1071, i32* %var_2_1073, align 4
; Matched:  %RAX = getelementptr inbounds %union.anon, %union.anon* %var_2_3, i64 0, i32 0
; %RAX.i = getelementptr inbounds %union.anon, %union.anon* %var_2_879, i64 0, i32 0
; Matched:%var_2_821:  %var_2_821 = load i32, i32* %ECX, align 4
; %var_2_1074 = load i32, i32* %ECX.i9, align 4
; Matched:%var_2_822:  %var_2_822 = zext i32 %var_2_821 to i64
; %var_2_1075 = zext i32 %var_2_1074 to i64
%var_2_1076 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_822, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1075, i64* %RAX.i, align 8
; Matched:%var_2_824:  %var_2_824 = load i64, i64* %RSP, align 8
; %var_2_1077 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_825:  %var_2_825 = add i64 %var_2_824, 336
; %var_2_1078 = add i64 %var_2_1077, 336
; Matched:\<badref\>:  store i64 %var_2_825, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1078, i64* %var_2_6, align 8
; Matched:%var_2_826:  %var_2_826 = icmp ugt i64 %var_2_824, -337
; %var_2_1079 = icmp ugt i64 %var_2_1077, -337
; Matched:%var_2_827:  %var_2_827 = zext i1 %var_2_826 to i8
; %var_2_1080 = zext i1 %var_2_1079 to i8
; Matched:\<badref\>:  store i8 %var_2_827, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_1080, i8* %var_2_14, align 1
; Matched:%var_2_828:  %var_2_828 = trunc i64 %var_2_825 to i32
; %var_2_1081 = trunc i64 %var_2_1078 to i32
; Matched:%var_2_829:  %var_2_829 = and i32 %var_2_828, 255
; %var_2_1082 = and i32 %var_2_1081, 255
; Matched:%var_2_830:  %var_2_830 = tail call i32 @llvm.ctpop.i32(i32 %var_2_829) #14
; %var_2_1083 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1082)
; Matched:%var_2_831:  %var_2_831 = trunc i32 %var_2_830 to i8
; %var_2_1084 = trunc i32 %var_2_1083 to i8
; Matched:%var_2_832:  %var_2_832 = and i8 %var_2_831, 1
; %var_2_1085 = and i8 %var_2_1084, 1
; Matched:%var_2_833:  %var_2_833 = xor i8 %var_2_832, 1
; %var_2_1086 = xor i8 %var_2_1085, 1
; Matched:\<badref\>:  store i8 %var_2_833, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_1086, i8* %var_2_21, align 1
; Matched:%var_2_834:  %var_2_834 = xor i64 %var_2_824, 16
; %var_2_1087 = xor i64 %var_2_1077, 16
; Matched:%var_2_835:  %var_2_835 = xor i64 %var_2_834, %var_2_825
; %var_2_1088 = xor i64 %var_2_1087, %var_2_1078
; Matched:%var_2_836:  %var_2_836 = lshr i64 %var_2_835, 4
; %var_2_1089 = lshr i64 %var_2_1088, 4
; Matched:%var_2_837:  %var_2_837 = trunc i64 %var_2_836 to i8
; %var_2_1090 = trunc i64 %var_2_1089 to i8
; Matched:%var_2_838:  %var_2_838 = and i8 %var_2_837, 1
; %var_2_1091 = and i8 %var_2_1090, 1
; Matched:\<badref\>:  store i8 %var_2_838, i8* %var_2_31, align 1, !tbaa !1280
; store i8 %var_2_1091, i8* %var_2_27, align 1
; Matched:%var_2_839:  %var_2_839 = icmp eq i64 %var_2_825, 0
; %var_2_1092 = icmp eq i64 %var_2_1078, 0
; Matched:%var_2_840:  %var_2_840 = zext i1 %var_2_839 to i8
; %var_2_1093 = zext i1 %var_2_1092 to i8
; Matched:\<badref\>:  store i8 %var_2_840, i8* %var_2_34, align 1, !tbaa !1281
; store i8 %var_2_1093, i8* %var_2_30, align 1
; Matched:%var_2_841:  %var_2_841 = lshr i64 %var_2_825, 63
; %var_2_1094 = lshr i64 %var_2_1078, 63
; Matched:%var_2_842:  %var_2_842 = trunc i64 %var_2_841 to i8
; %var_2_1095 = trunc i64 %var_2_1094 to i8
; Matched:\<badref\>:  store i8 %var_2_842, i8* %var_2_37, align 1, !tbaa !1282
; store i8 %var_2_1095, i8* %var_2_33, align 1
; Matched:%var_2_843:  %var_2_843 = lshr i64 %var_2_824, 63
; %var_2_1096 = lshr i64 %var_2_1077, 63
; Matched:%var_2_844:  %var_2_844 = xor i64 %var_2_841, %var_2_843
; %var_2_1097 = xor i64 %var_2_1094, %var_2_1096
; Matched:%var_2_845:  %var_2_845 = add nuw nsw i64 %var_2_844, %var_2_841
; %var_2_1098 = add nuw nsw i64 %var_2_1097, %var_2_1094
; Matched:%var_2_846:  %var_2_846 = icmp eq i64 %var_2_845, 2
; %var_2_1099 = icmp eq i64 %var_2_1098, 2
; Matched:%var_2_847:  %var_2_847 = zext i1 %var_2_846 to i8
; %var_2_1100 = zext i1 %var_2_1099 to i8
; Matched:\<badref\>:  store i8 %var_2_847, i8* %var_2_43, align 1, !tbaa !1283
; store i8 %var_2_1100, i8* %var_2_39, align 1
; Matched:%var_2_97:  %var_2_97 = add i64 %var_2_96, 10
; %var_2_1101 = add i64 %var_2_1076, 10
; Matched:\<badref\>:  store i64 %var_2_97, i64* %PC, align 8
; store i64 %var_2_1101, i64* %var_2_3, align 8
; Matched:%var_2_849:  %var_2_849 = add i64 %var_2_824, 344
; %var_2_1102 = add i64 %var_2_1077, 344
; Matched:%var_2_850:  %var_2_850 = inttoptr i64 %var_2_825 to i64*
; %var_2_1103 = inttoptr i64 %var_2_1078 to i64*
; Matched:%var_2_851:  %var_2_851 = load i64, i64* %var_2_850, align 8
; %var_2_1104 = load i64, i64* %var_2_1103, align 8
; Matched:\<badref\>:  store i64 %var_2_851, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_1104, i64* %RBP.i, align 8
; Matched:\<badref\>:  store i64 %var_2_849, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1102, i64* %var_2_6, align 8
; Matched:%var_2_745:  %var_2_745 = add i64 %var_2_736, 11
; %var_2_1105 = add i64 %var_2_1076, 11
; Matched:\<badref\>:  store i64 %var_2_772, i64* %PC, align 8
; store i64 %var_2_1105, i64* %var_2_3, align 8
; Matched:%var_2_853:  %var_2_853 = inttoptr i64 %var_2_849 to i64*
; %var_2_1106 = inttoptr i64 %var_2_1102 to i64*
; Matched:%var_2_854:  %var_2_854 = load i64, i64* %var_2_853, align 8
; %var_2_1107 = load i64, i64* %var_2_1106, align 8
; Matched:\<badref\>:  store i64 %var_2_854, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1107, i64* %var_2_3, align 8
; Matched:%var_2_855:  %var_2_855 = add i64 %var_2_824, 352
; %var_2_1108 = add i64 %var_2_1077, 352
; Matched:\<badref\>:  store i64 %var_2_855, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1108, i64* %var_2_6, align 8
ret %struct.Memory* %var_2_1066
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
define %struct.Memory* @routine_subq__0x150___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -336
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 336
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
define %struct.Memory* @routine_movl__0x2625a0__MINUS0x114__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -276
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 2500000, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x120__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -288
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
define %struct.Memory* @routine_movsd_MINUS0x120__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -288
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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
define %struct.Memory* @routine_callq_.make_vec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x511__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x511__rip__type* @G_0x511__rip_ to i64)
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
define %struct.Memory* @routine_movapd__xmm0__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %11, align 8
  %12 = add i64 %3, -136
  %13 = inttoptr i64 %12 to i64*
  store i64 %10, i64* %13, align 8
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
define %struct.Memory* @routine_movsd_0x509__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x509__rip__type* @G_0x509__rip_ to i64)
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
define %struct.Memory* @routine_movapd__xmm0__MINUS0xa0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %11, align 8
  %12 = add i64 %3, -152
  %13 = inttoptr i64 %12 to i64*
  store i64 %10, i64* %13, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x4e9__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x4e9__rip__type* @G_0x4e9__rip_ to i64)
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
define %struct.Memory* @routine_movapd__xmm0__MINUS0xb0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %11, align 8
  %12 = add i64 %3, -168
  %13 = inttoptr i64 %12 to i64*
  store i64 %10, i64* %13, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x4c9__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x4c9__rip__type* @G_0x4c9__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x4d1__rip____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x4d1__rip__type* @G_0x4d1__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movapd__xmm0__MINUS0xd0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %11, align 8
  %12 = add i64 %3, -200
  %13 = inttoptr i64 %12 to i64*
  store i64 %10, i64* %13, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm2___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
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
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x4a6__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x4a6__rip__type* @G_0x4a6__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x4a6__rip____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x4a6__rip__type* @G_0x4a6__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movapd__xmm0__MINUS0xc0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %11, align 8
  %12 = add i64 %3, -184
  %13 = inttoptr i64 %12 to i64*
  store i64 %10, i64* %13, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x483__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x483__rip__type* @G_0x483__rip_ to i64)
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
define %struct.Memory* @routine_movapd__xmm0__MINUS0xf0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %11, align 8
  %12 = add i64 %3, -232
  %13 = inttoptr i64 %12 to i64*
  store i64 %10, i64* %13, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movapd_MINUS0x90__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %3, -136
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 %11, i64* %13, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movapd__xmm0__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %11, align 8
  %12 = add i64 %3, -120
  %13 = inttoptr i64 %12 to i64*
  store i64 %10, i64* %13, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movapd__xmm0__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %11, align 8
  %12 = add i64 %3, -104
  %13 = inttoptr i64 %12 to i64*
  store i64 %10, i64* %13, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movapd__xmm0__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %11, align 8
  %12 = add i64 %3, -88
  %13 = inttoptr i64 %12 to i64*
  store i64 %10, i64* %13, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movapd__xmm0__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %11, align 8
  %12 = add i64 %3, -72
  %13 = inttoptr i64 %12 to i64*
  store i64 %10, i64* %13, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movapd__xmm0__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %11, align 8
  %12 = add i64 %3, -56
  %13 = inttoptr i64 %12 to i64*
  store i64 %10, i64* %13, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0xf8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -248
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
define %struct.Memory* @routine_movsd_MINUS0xf8__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -248
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
define %struct.Memory* @routine_cvtsi2sdl_MINUS0x114__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -276
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = sitofp i32 %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
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
define %struct.Memory* @routine_jb_.L_400924(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x448__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x448__rip__type* @G_0x448__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x428__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x428__rip__type* @G_0x428__rip_ to i64)
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
define %struct.Memory* @routine_movsd_MINUS0xf8__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -248
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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
define %struct.Memory* @routine_callq_.pow_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x40c__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x40c__rip__type* @G_0x40c__rip_ to i64)
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
define %struct.Memory* @routine_addsd_MINUS0x18__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x128__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -296
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
define %struct.Memory* @routine_callq_.sqrt_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_MINUS0x128__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -296
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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
define %struct.Memory* @routine_addsd_MINUS0x20__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %12 = fadd double %9, %11
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
define %struct.Memory* @routine_mulsd_MINUS0xf8__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -248
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x100__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -256
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x108__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -264
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x110__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -272
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
define %struct.Memory* @routine_movsd_MINUS0x100__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -256
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
define %struct.Memory* @routine_mulsd_MINUS0x108__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -264
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
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
define %struct.Memory* @routine_addsd_MINUS0x28__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
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
define %struct.Memory* @routine_mulsd_MINUS0x110__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -272
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
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
define %struct.Memory* @routine_addsd_MINUS0x30__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
define %struct.Memory* @routine_movsd__xmm1__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_movsd_0x329__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x329__rip__type* @G_0x329__rip_ to i64)
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
define %struct.Memory* @routine_addsd_MINUS0xf8__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -248
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0xf8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -248
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
define %struct.Memory* @routine_jmpq_.L_4007e6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movapd_MINUS0xc0__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %3, -184
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 %11, i64* %13, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movapd__xmm0__MINUS0xe0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %11, align 8
  %12 = add i64 %3, -216
  %13 = inttoptr i64 %12 to i64*
  store i64 %10, i64* %13, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0xe0__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
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
define %struct.Memory* @routine_jb_.L_400a25(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movapd_MINUS0xa0__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %3, -152
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 %11, i64* %13, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movapd_MINUS0xe0__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %3, -216
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  store i64 %11, i64* %13, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movapd_MINUS0xe0__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %3, -216
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  store i64 %11, i64* %13, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addpd_MINUS0xa0__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -160
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x double>*
  %9 = load <2 x double>, <2 x double>* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = add i64 %4, -152
  %13 = inttoptr i64 %12 to double*
  %14 = load double, double* %13, align 8
  %15 = insertelement <2 x double> undef, double %11, i32 0
  %16 = insertelement <2 x double> %15, double %14, i32 1
  %17 = fadd <2 x double> %9, %16
  store <2 x double> %17, <2 x double>* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulpd__xmm2___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x double>*
  %8 = load <2 x double>, <2 x double>* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to <2 x double>*
  %10 = load <2 x double>, <2 x double>* %9, align 1
  %11 = fmul <2 x double> %8, %10
  store <2 x double> %11, <2 x double>* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divpd__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast [32 x %union.VectorReg]* %3 to <2 x double>*
  %8 = load <2 x double>, <2 x double>* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to <2 x double>*
  %10 = load <2 x double>, <2 x double>* %9, align 1
  %11 = fdiv <2 x double> %8, %10
  store <2 x double> %11, <2 x double>* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addpd_MINUS0x60__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x double>*
  %9 = load <2 x double>, <2 x double>* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = add i64 %4, -88
  %13 = inttoptr i64 %12 to double*
  %14 = load double, double* %13, align 8
  %15 = insertelement <2 x double> undef, double %11, i32 0
  %16 = insertelement <2 x double> %15, double %14, i32 1
  %17 = fadd <2 x double> %9, %16
  store <2 x double> %17, <2 x double>* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divpd_MINUS0xe0__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -224
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x double>*
  %9 = load <2 x double>, <2 x double>* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = add i64 %4, -216
  %13 = inttoptr i64 %12 to double*
  %14 = load double, double* %13, align 8
  %15 = insertelement <2 x double> undef, double %11, i32 0
  %16 = insertelement <2 x double> %15, double %14, i32 1
  %17 = fdiv <2 x double> %9, %16
  store <2 x double> %17, <2 x double>* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addpd_MINUS0x40__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x double>*
  %9 = load <2 x double>, <2 x double>* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = add i64 %4, -56
  %13 = inttoptr i64 %12 to double*
  %14 = load double, double* %13, align 8
  %15 = insertelement <2 x double> undef, double %11, i32 0
  %16 = insertelement <2 x double> %15, double %14, i32 1
  %17 = fadd <2 x double> %9, %16
  store <2 x double> %17, <2 x double>* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulpd_MINUS0xe0__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -224
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x double>*
  %9 = load <2 x double>, <2 x double>* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = add i64 %4, -216
  %13 = inttoptr i64 %12 to double*
  %14 = load double, double* %13, align 8
  %15 = insertelement <2 x double> undef, double %11, i32 0
  %16 = insertelement <2 x double> %15, double %14, i32 1
  %17 = fmul <2 x double> %9, %16
  store <2 x double> %17, <2 x double>* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addpd_MINUS0x50__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x double>*
  %9 = load <2 x double>, <2 x double>* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = add i64 %4, -72
  %13 = inttoptr i64 %12 to double*
  %14 = load double, double* %13, align 8
  %15 = insertelement <2 x double> undef, double %11, i32 0
  %16 = insertelement <2 x double> %15, double %14, i32 1
  %17 = fadd <2 x double> %9, %16
  store <2 x double> %17, <2 x double>* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movapd_MINUS0xf0__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %3, -232
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 %11, i64* %13, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addpd_MINUS0x70__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -112
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x double>*
  %9 = load <2 x double>, <2 x double>* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = add i64 %4, -104
  %13 = inttoptr i64 %12 to double*
  %14 = load double, double* %13, align 8
  %15 = insertelement <2 x double> undef, double %11, i32 0
  %16 = insertelement <2 x double> %15, double %14, i32 1
  %17 = fadd <2 x double> %9, %16
  store <2 x double> %17, <2 x double>* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movapd_MINUS0xb0__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %3, -168
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  store i64 %11, i64* %13, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subpd_MINUS0xa0__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -160
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x double>*
  %9 = load <2 x double>, <2 x double>* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = add i64 %4, -152
  %13 = inttoptr i64 %12 to double*
  %14 = load double, double* %13, align 8
  %15 = insertelement <2 x double> undef, double %11, i32 0
  %16 = insertelement <2 x double> %15, double %14, i32 1
  %17 = fsub <2 x double> %9, %16
  store <2 x double> %17, <2 x double>* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addpd_MINUS0x80__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -128
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x double>*
  %9 = load <2 x double>, <2 x double>* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = add i64 %4, -120
  %13 = inttoptr i64 %12 to double*
  %14 = load double, double* %13, align 8
  %15 = insertelement <2 x double> undef, double %11, i32 0
  %16 = insertelement <2 x double> %15, double %14, i32 1
  %17 = fadd <2 x double> %9, %16
  store <2 x double> %17, <2 x double>* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movapd_MINUS0xb0__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %3, -168
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 %11, i64* %13, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addpd_MINUS0xe0__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -224
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x double>*
  %9 = load <2 x double>, <2 x double>* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = add i64 %4, -216
  %13 = inttoptr i64 %12 to double*
  %14 = load double, double* %13, align 8
  %15 = insertelement <2 x double> undef, double %11, i32 0
  %16 = insertelement <2 x double> %15, double %14, i32 1
  %17 = fadd <2 x double> %9, %16
  store <2 x double> %17, <2 x double>* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400934(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x400c58___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400c58_type* @G__0x400c58 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x400c61___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400c61_type* @G__0x400c61 to i64), i64* %RSI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x400c69___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400c69_type* @G__0x400c69 to i64), i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x12c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -300
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movapd_MINUS0x60__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = add i64 %3, -88
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 %11, i64* %13, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x130__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -304
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.sum_vec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x400c70___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400c70_type* @G__0x400c70 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x400c79___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400c79_type* @G__0x400c79 to i64), i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x134__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -308
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x400c85___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400c85_type* @G__0x400c85 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x138__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -312
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movapd_MINUS0x40__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = add i64 %3, -56
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 %11, i64* %13, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x13c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -316
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x400cac___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400cac_type* @G__0x400cac to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movapd_MINUS0x50__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = add i64 %3, -72
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 %11, i64* %13, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x140__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -320
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x400c93___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400c93_type* @G__0x400c93 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movapd_MINUS0x70__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %3, -104
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 %11, i64* %13, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x144__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -324
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x400ca0___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400ca0_type* @G__0x400ca0 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movapd_MINUS0x80__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = add i64 %3, -120
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 %11, i64* %13, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x148__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -328
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x400cb5___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400cb5_type* @G__0x400cb5 to i64), i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x14c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -332
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x150___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 336
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -337
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
