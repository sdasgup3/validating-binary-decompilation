; ModuleID = '/tmp/tmpt5xf573r-query.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x198__rip__type = type <{ [8 x i8] }>
%G_0xba__rip__type = type <{ [8 x i8] }>
%G_0xd2__rip__type = type <{ [8 x i8] }>
%G__0x4009f8_type = type <{ [8 x i8] }>
%G__0x400a07_type = type <{ [8 x i8] }>
%G__0x400a18_type = type <{ [8 x i8] }>
%G__0x400a2b_type = type <{ [8 x i8] }>
%G__0x400a37_type = type <{ [8 x i8] }>
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
@G_0x198__rip_ = global %G_0x198__rip__type zeroinitializer
@G_0xba__rip_ = global %G_0xba__rip__type zeroinitializer
@G_0xd2__rip_ = global %G_0xd2__rip__type zeroinitializer
@G__0x4009f8 = global %G__0x4009f8_type zeroinitializer
@G__0x400a07 = global %G__0x400a07_type zeroinitializer
@G__0x400a18 = global %G__0x400a18_type zeroinitializer
@G__0x400a2b = global %G__0x400a2b_type zeroinitializer
@G__0x400a37 = global %G__0x400a37_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_400520.ack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4005f0.fibFP(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400680.tak(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4005a0.fib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400710.takFP(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @main(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
entry:
%var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
; Matched:%var_2_13:  %var_2_13 = load i64, i64* %RBP, align 8
; %var_2_4 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_14:  %var_2_14 = add i64 %1, 1
; %var_2_5 = add i64 %1, 1
; Matched:\<badref\>:  store i64 %var_2_14, i64* %PC, align 8
; store i64 %var_2_5, i64* %var_2_3, align 8
%var_2_6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
; Matched:%var_2_15:  %var_2_15 = load i64, i64* %RSP, align 8, !tbaa !1261
; %var_2_7 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_16:  %var_2_16 = add i64 %var_2_15, -8
; %var_2_8 = add i64 %var_2_7, -8
; Matched:%var_2_17:  %var_2_17 = inttoptr i64 %var_2_16 to i64*
; %var_2_9 = inttoptr i64 %var_2_8 to i64*
; Matched:\<badref\>:  store i64 %var_2_13, i64* %var_2_17, align 8
; store i64 %var_2_4, i64* %var_2_9, align 8
%var_2_10 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_16, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_8, i64* %RBP.i, align 8
; Matched:%var_2_19:  %var_2_19 = add i64 %var_2_15, -88
; %var_2_11 = add i64 %var_2_7, -88
; Matched:\<badref\>:  store i64 %var_2_19, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_11, i64* %var_2_6, align 8
; Matched:%var_2_20:  %var_2_20 = icmp ult i64 %var_2_16, 80
; %var_2_12 = icmp ult i64 %var_2_8, 80
; Matched:%var_2_21:  %var_2_21 = zext i1 %var_2_20 to i8
; %var_2_13 = zext i1 %var_2_12 to i8
; Matched:%var_2_22:  %var_2_22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
; %var_2_14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
; Matched:\<badref\>:  store i8 %var_2_21, i8* %var_2_22, align 1, !tbaa !1265
; store i8 %var_2_13, i8* %var_2_14, align 1
; Matched:%var_2_23:  %var_2_23 = trunc i64 %var_2_19 to i32
; %var_2_15 = trunc i64 %var_2_11 to i32
; Matched:%var_2_24:  %var_2_24 = and i32 %var_2_23, 255
; %var_2_16 = and i32 %var_2_15, 255
; Matched:%var_2_25:  %var_2_25 = tail call i32 @llvm.ctpop.i32(i32 %var_2_24) #12
; %var_2_17 = tail call i32 @llvm.ctpop.i32(i32 %var_2_16)
; Matched:%var_2_26:  %var_2_26 = trunc i32 %var_2_25 to i8
; %var_2_18 = trunc i32 %var_2_17 to i8
; Matched:%var_2_27:  %var_2_27 = and i8 %var_2_26, 1
; %var_2_19 = and i8 %var_2_18, 1
; Matched:%var_2_28:  %var_2_28 = xor i8 %var_2_27, 1
; %var_2_20 = xor i8 %var_2_19, 1
; Matched:%var_2_29:  %var_2_29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
; %var_2_21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
; Matched:\<badref\>:  store i8 %var_2_28, i8* %var_2_29, align 1, !tbaa !1279
; store i8 %var_2_20, i8* %var_2_21, align 1
; Matched:%var_2_30:  %var_2_30 = xor i64 %var_2_16, 16
; %var_2_22 = xor i64 %var_2_8, 16
; Matched:%var_2_31:  %var_2_31 = xor i64 %var_2_30, %var_2_19
; %var_2_23 = xor i64 %var_2_22, %var_2_11
; Matched:%var_2_32:  %var_2_32 = lshr i64 %var_2_31, 4
; %var_2_24 = lshr i64 %var_2_23, 4
; Matched:%var_2_33:  %var_2_33 = trunc i64 %var_2_32 to i8
; %var_2_25 = trunc i64 %var_2_24 to i8
; Matched:%var_2_34:  %var_2_34 = and i8 %var_2_33, 1
; %var_2_26 = and i8 %var_2_25, 1
%var_2_27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
; Matched:\<badref\>:  store i8 %var_2_34, i8* %var_2_35, align 1, !tbaa !1280
; store i8 %var_2_26, i8* %var_2_27, align 1
; Matched:%var_2_36:  %var_2_36 = icmp eq i64 %var_2_19, 0
; %var_2_28 = icmp eq i64 %var_2_11, 0
; Matched:%var_2_37:  %var_2_37 = zext i1 %var_2_36 to i8
; %var_2_29 = zext i1 %var_2_28 to i8
%var_2_30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
; Matched:\<badref\>:  store i8 %var_2_37, i8* %var_2_38, align 1, !tbaa !1281
; store i8 %var_2_29, i8* %var_2_30, align 1
; Matched:%var_2_39:  %var_2_39 = lshr i64 %var_2_19, 63
; %var_2_31 = lshr i64 %var_2_11, 63
; Matched:%var_2_40:  %var_2_40 = trunc i64 %var_2_39 to i8
; %var_2_32 = trunc i64 %var_2_31 to i8
; Matched:%var_2_41:  %var_2_41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
; %var_2_33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
; Matched:\<badref\>:  store i8 %var_2_40, i8* %var_2_41, align 1, !tbaa !1282
; store i8 %var_2_32, i8* %var_2_33, align 1
; Matched:%var_2_42:  %var_2_42 = lshr i64 %var_2_16, 63
; %var_2_34 = lshr i64 %var_2_8, 63
; Matched:%var_2_43:  %var_2_43 = xor i64 %var_2_39, %var_2_42
; %var_2_35 = xor i64 %var_2_31, %var_2_34
; Matched:%var_2_44:  %var_2_44 = add nuw nsw i64 %var_2_43, %var_2_42
; %var_2_36 = add nuw nsw i64 %var_2_35, %var_2_34
; Matched:%var_2_45:  %var_2_45 = icmp eq i64 %var_2_44, 2
; %var_2_37 = icmp eq i64 %var_2_36, 2
; Matched:%var_2_46:  %var_2_46 = zext i1 %var_2_45 to i8
; %var_2_38 = zext i1 %var_2_37 to i8
; Matched:%var_2_47:  %var_2_47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; %var_2_39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; Matched:\<badref\>:  store i8 %var_2_46, i8* %var_2_47, align 1, !tbaa !1283
; store i8 %var_2_38, i8* %var_2_39, align 1
%var_2_40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
%RAX.i39 = getelementptr inbounds %union.anon, %union.anon* %var_2_40, i64 0, i32 0
  store i64 3, i64* %RAX.i39, align 8
; Matched:%var_2_48:  %var_2_48 = add i64 %var_2_15, -12
; %var_2_41 = add i64 %var_2_7, -12
; Matched:%var_2_49:  %var_2_49 = add i64 %var_2_18, 19
; %var_2_42 = add i64 %var_2_10, 19
; Matched:\<badref\>:  store i64 %var_2_49, i64* %PC, align 8
; store i64 %var_2_42, i64* %var_2_3, align 8
; Matched:%var_2_50:  %var_2_50 = inttoptr i64 %var_2_48 to i32*
; %var_2_43 = inttoptr i64 %var_2_41 to i32*
; Matched:\<badref\>:  store i32 0, i32* %var_2_50, align 4
; store i32 0, i32* %var_2_43, align 4
%var_2_44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
; Matched:  %EDI = bitcast %union.anon* %var_2_7 to i32*
; %EDI.i = bitcast %union.anon* %var_2_44 to i32*
; Matched:%var_2_51:  %var_2_51 = load i64, i64* %RBP, align 8
; %var_2_45 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_52:  %var_2_52 = add i64 %var_2_51, -8
; %var_2_46 = add i64 %var_2_45, -8
; Matched:%var_2_53:  %var_2_53 = load i32, i32* %EDI, align 4
; %var_2_47 = load i32, i32* %EDI.i, align 4
%var_2_48 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_352:  %var_2_352 = add i64 %var_2_351, 3
; %var_2_49 = add i64 %var_2_48, 3
; Matched:\<badref\>:  store i64 %var_2_352, i64* %PC, align 8
; store i64 %var_2_49, i64* %var_2_3, align 8
; Matched:%var_2_56:  %var_2_56 = inttoptr i64 %var_2_52 to i32*
; %var_2_50 = inttoptr i64 %var_2_46 to i32*
; Matched:\<badref\>:  store i32 %var_2_53, i32* %var_2_56, align 4
; store i32 %var_2_47, i32* %var_2_50, align 4
; Matched:%var_2_6:  %var_2_6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
; %var_2_51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
; Matched:  %RSI = getelementptr inbounds %union.anon, %union.anon* %var_2_6, i64 0, i32 0
; %RSI.i169 = getelementptr inbounds %union.anon, %union.anon* %var_2_51, i64 0, i32 0
; Matched:%var_2_57:  %var_2_57 = load i64, i64* %RBP, align 8
; %var_2_52 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_58:  %var_2_58 = add i64 %var_2_57, -16
; %var_2_53 = add i64 %var_2_52, -16
; Matched:%var_2_59:  %var_2_59 = load i64, i64* %RSI, align 8
; %var_2_54 = load i64, i64* %RSI.i169, align 8
%var_2_55 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_244:  %var_2_244 = add i64 %var_2_243, 4
; %var_2_56 = add i64 %var_2_55, 4
; Matched:\<badref\>:  store i64 %var_2_244, i64* %PC, align 8
; store i64 %var_2_56, i64* %var_2_3, align 8
; Matched:%var_2_62:  %var_2_62 = inttoptr i64 %var_2_58 to i64*
; %var_2_57 = inttoptr i64 %var_2_53 to i64*
; Matched:\<badref\>:  store i64 %var_2_59, i64* %var_2_62, align 8
; store i64 %var_2_54, i64* %var_2_57, align 8
; Matched:%var_2_63:  %var_2_63 = load i64, i64* %RBP, align 8
; %var_2_58 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_64:  %var_2_64 = add i64 %var_2_63, -20
; %var_2_59 = add i64 %var_2_58, -20
%var_2_60 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_465:  %var_2_465 = add i64 %var_2_440, 7
; %var_2_61 = add i64 %var_2_60, 7
; Matched:\<badref\>:  store i64 %var_2_66, i64* %PC, align 8
; store i64 %var_2_61, i64* %var_2_3, align 8
; Matched:%var_2_67:  %var_2_67 = inttoptr i64 %var_2_64 to i32*
; %var_2_62 = inttoptr i64 %var_2_59 to i32*
; Matched:\<badref\>:  store i32 10, i32* %var_2_67, align 4
; store i32 10, i32* %var_2_62, align 4
%RDI.i164 = getelementptr inbounds %union.anon, %union.anon* %var_2_44, i64 0, i32 0
; Matched:%var_2_68:  %var_2_68 = load i64, i64* %RBP, align 8
; %var_2_63 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_69:  %var_2_69 = add i64 %var_2_68, -20
; %var_2_64 = add i64 %var_2_63, -20
%var_2_65 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_71:  %var_2_71 = add i64 %var_2_70, 3
; %var_2_66 = add i64 %var_2_65, 3
; Matched:\<badref\>:  store i64 %var_2_71, i64* %PC, align 8
; store i64 %var_2_66, i64* %var_2_3, align 8
; Matched:%var_2_72:  %var_2_72 = inttoptr i64 %var_2_69 to i32*
; %var_2_67 = inttoptr i64 %var_2_64 to i32*
; Matched:%var_2_73:  %var_2_73 = load i32, i32* %var_2_72, align 4
; %var_2_68 = load i32, i32* %var_2_67, align 4
; Matched:%var_2_74:  %var_2_74 = add i32 %var_2_73, 1
; %var_2_69 = add i32 %var_2_68, 1
; Matched:%var_2_75:  %var_2_75 = zext i32 %var_2_74 to i64
; %var_2_70 = zext i32 %var_2_69 to i64
; Matched:\<badref\>:  store i64 %var_2_75, i64* %RDI, align 8, !tbaa !1261
; store i64 %var_2_70, i64* %RDI.i164, align 8
; Matched:%var_2_101:  %var_2_101 = icmp eq i32 %var_2_98, -1
; %var_2_71 = icmp eq i32 %var_2_68, -1
; Matched:%var_2_77:  %var_2_77 = icmp eq i32 %var_2_74, 0
; %var_2_72 = icmp eq i32 %var_2_69, 0
; Matched:%var_2_78:  %var_2_78 = or i1 %var_2_76, %var_2_77
; %var_2_73 = or i1 %var_2_71, %var_2_72
; Matched:%var_2_79:  %var_2_79 = zext i1 %var_2_78 to i8
; %var_2_74 = zext i1 %var_2_73 to i8
; Matched:\<badref\>:  store i8 %var_2_79, i8* %var_2_22, align 1, !tbaa !1265
; store i8 %var_2_74, i8* %var_2_14, align 1
; Matched:%var_2_80:  %var_2_80 = and i32 %var_2_74, 255
; %var_2_75 = and i32 %var_2_69, 255
; Matched:%var_2_81:  %var_2_81 = tail call i32 @llvm.ctpop.i32(i32 %var_2_80) #12
; %var_2_76 = tail call i32 @llvm.ctpop.i32(i32 %var_2_75)
; Matched:%var_2_107:  %var_2_107 = trunc i32 %var_2_106 to i8
; %var_2_77 = trunc i32 %var_2_76 to i8
; Matched:%var_2_108:  %var_2_108 = and i8 %var_2_107, 1
; %var_2_78 = and i8 %var_2_77, 1
; Matched:%var_2_84:  %var_2_84 = xor i8 %var_2_83, 1
; %var_2_79 = xor i8 %var_2_78, 1
; Matched:\<badref\>:  store i8 %var_2_84, i8* %var_2_29, align 1, !tbaa !1279
; store i8 %var_2_79, i8* %var_2_21, align 1
; Matched:%var_2_85:  %var_2_85 = xor i32 %var_2_74, %var_2_73
; %var_2_80 = xor i32 %var_2_69, %var_2_68
; Matched:%var_2_86:  %var_2_86 = lshr i32 %var_2_85, 4
; %var_2_81 = lshr i32 %var_2_80, 4
; Matched:%var_2_87:  %var_2_87 = trunc i32 %var_2_86 to i8
; %var_2_82 = trunc i32 %var_2_81 to i8
; Matched:%var_2_88:  %var_2_88 = and i8 %var_2_87, 1
; %var_2_83 = and i8 %var_2_82, 1
; Matched:\<badref\>:  store i8 %var_2_113, i8* %var_2_35, align 1, !tbaa !1280
; store i8 %var_2_83, i8* %var_2_27, align 1
; Matched:%var_2_114:  %var_2_114 = zext i1 %var_2_102 to i8
; %var_2_84 = zext i1 %var_2_72 to i8
; Matched:\<badref\>:  store i8 %var_2_89, i8* %var_2_38, align 1, !tbaa !1281
; store i8 %var_2_84, i8* %var_2_30, align 1
; Matched:%var_2_90:  %var_2_90 = lshr i32 %var_2_74, 31
; %var_2_85 = lshr i32 %var_2_69, 31
; Matched:%var_2_91:  %var_2_91 = trunc i32 %var_2_90 to i8
; %var_2_86 = trunc i32 %var_2_85 to i8
; Matched:\<badref\>:  store i8 %var_2_91, i8* %var_2_41, align 1, !tbaa !1282
; store i8 %var_2_86, i8* %var_2_33, align 1
; Matched:%var_2_92:  %var_2_92 = lshr i32 %var_2_73, 31
; %var_2_87 = lshr i32 %var_2_68, 31
; Matched:%var_2_93:  %var_2_93 = xor i32 %var_2_90, %var_2_92
; %var_2_88 = xor i32 %var_2_85, %var_2_87
; Matched:%var_2_119:  %var_2_119 = add nuw nsw i32 %var_2_118, %var_2_115
; %var_2_89 = add nuw nsw i32 %var_2_88, %var_2_85
; Matched:%var_2_120:  %var_2_120 = icmp eq i32 %var_2_119, 2
; %var_2_90 = icmp eq i32 %var_2_89, 2
; Matched:%var_2_96:  %var_2_96 = zext i1 %var_2_95 to i8
; %var_2_91 = zext i1 %var_2_90 to i8
; Matched:\<badref\>:  store i8 %var_2_96, i8* %var_2_47, align 1, !tbaa !1283
; store i8 %var_2_91, i8* %var_2_39, align 1
%var_2_92 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
%RCX.i159 = getelementptr inbounds %union.anon, %union.anon* %var_2_92, i64 0, i32 0
; Matched:%var_2_97:  %var_2_97 = add i64 %var_2_70, 9
; %var_2_93 = add i64 %var_2_65, 9
; Matched:\<badref\>:  store i64 %var_2_97, i64* %PC, align 8
; store i64 %var_2_93, i64* %var_2_3, align 8
; Matched:%var_2_98:  %var_2_98 = load i32, i32* %var_2_72, align 4
; %var_2_94 = load i32, i32* %var_2_67, align 4
; Matched:%var_2_99:  %var_2_99 = add i32 %var_2_98, 1
; %var_2_95 = add i32 %var_2_94, 1
; Matched:%var_2_100:  %var_2_100 = zext i32 %var_2_99 to i64
; %var_2_96 = zext i32 %var_2_95 to i64
; Matched:\<badref\>:  store i64 %var_2_100, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_96, i64* %RCX.i159, align 8
; Matched:%var_2_76:  %var_2_76 = icmp eq i32 %var_2_73, -1
; %var_2_97 = icmp eq i32 %var_2_94, -1
; Matched:%var_2_102:  %var_2_102 = icmp eq i32 %var_2_99, 0
; %var_2_98 = icmp eq i32 %var_2_95, 0
; Matched:%var_2_103:  %var_2_103 = or i1 %var_2_101, %var_2_102
; %var_2_99 = or i1 %var_2_97, %var_2_98
; Matched:%var_2_104:  %var_2_104 = zext i1 %var_2_103 to i8
; %var_2_100 = zext i1 %var_2_99 to i8
; Matched:\<badref\>:  store i8 %var_2_104, i8* %var_2_22, align 1, !tbaa !1265
; store i8 %var_2_100, i8* %var_2_14, align 1
; Matched:%var_2_105:  %var_2_105 = and i32 %var_2_99, 255
; %var_2_101 = and i32 %var_2_95, 255
; Matched:%var_2_106:  %var_2_106 = tail call i32 @llvm.ctpop.i32(i32 %var_2_105) #12
; %var_2_102 = tail call i32 @llvm.ctpop.i32(i32 %var_2_101)
; Matched:%var_2_82:  %var_2_82 = trunc i32 %var_2_81 to i8
; %var_2_103 = trunc i32 %var_2_102 to i8
; Matched:%var_2_83:  %var_2_83 = and i8 %var_2_82, 1
; %var_2_104 = and i8 %var_2_103, 1
; Matched:%var_2_109:  %var_2_109 = xor i8 %var_2_108, 1
; %var_2_105 = xor i8 %var_2_104, 1
; Matched:\<badref\>:  store i8 %var_2_109, i8* %var_2_29, align 1, !tbaa !1279
; store i8 %var_2_105, i8* %var_2_21, align 1
; Matched:%var_2_110:  %var_2_110 = xor i32 %var_2_99, %var_2_98
; %var_2_106 = xor i32 %var_2_95, %var_2_94
; Matched:%var_2_111:  %var_2_111 = lshr i32 %var_2_110, 4
; %var_2_107 = lshr i32 %var_2_106, 4
; Matched:%var_2_112:  %var_2_112 = trunc i32 %var_2_111 to i8
; %var_2_108 = trunc i32 %var_2_107 to i8
; Matched:%var_2_113:  %var_2_113 = and i8 %var_2_112, 1
; %var_2_109 = and i8 %var_2_108, 1
; Matched:\<badref\>:  store i8 %var_2_88, i8* %var_2_35, align 1, !tbaa !1280
; store i8 %var_2_109, i8* %var_2_27, align 1
; Matched:%var_2_89:  %var_2_89 = zext i1 %var_2_77 to i8
; %var_2_110 = zext i1 %var_2_98 to i8
; Matched:\<badref\>:  store i8 %var_2_114, i8* %var_2_38, align 1, !tbaa !1281
; store i8 %var_2_110, i8* %var_2_30, align 1
; Matched:%var_2_115:  %var_2_115 = lshr i32 %var_2_99, 31
; %var_2_111 = lshr i32 %var_2_95, 31
; Matched:%var_2_116:  %var_2_116 = trunc i32 %var_2_115 to i8
; %var_2_112 = trunc i32 %var_2_111 to i8
; Matched:\<badref\>:  store i8 %var_2_116, i8* %var_2_41, align 1, !tbaa !1282
; store i8 %var_2_112, i8* %var_2_33, align 1
; Matched:%var_2_117:  %var_2_117 = lshr i32 %var_2_98, 31
; %var_2_113 = lshr i32 %var_2_94, 31
; Matched:%var_2_118:  %var_2_118 = xor i32 %var_2_115, %var_2_117
; %var_2_114 = xor i32 %var_2_111, %var_2_113
; Matched:%var_2_94:  %var_2_94 = add nuw nsw i32 %var_2_93, %var_2_90
; %var_2_115 = add nuw nsw i32 %var_2_114, %var_2_111
; Matched:%var_2_95:  %var_2_95 = icmp eq i32 %var_2_94, 2
; %var_2_116 = icmp eq i32 %var_2_115, 2
; Matched:%var_2_121:  %var_2_121 = zext i1 %var_2_120 to i8
; %var_2_117 = zext i1 %var_2_116 to i8
; Matched:\<badref\>:  store i8 %var_2_121, i8* %var_2_47, align 1, !tbaa !1283
; store i8 %var_2_117, i8* %var_2_39, align 1
; Matched:%var_2_122:  %var_2_122 = add i64 %var_2_68, -24
; %var_2_118 = add i64 %var_2_63, -24
; Matched:%var_2_205:  %var_2_205 = add i64 %var_2_202, 15
; %var_2_119 = add i64 %var_2_65, 15
; Matched:\<badref\>:  store i64 %var_2_123, i64* %PC, align 8
; store i64 %var_2_119, i64* %var_2_3, align 8
; Matched:%var_2_124:  %var_2_124 = inttoptr i64 %var_2_122 to i32*
; %var_2_120 = inttoptr i64 %var_2_118 to i32*
; Matched:\<badref\>:  store i32 %var_2_74, i32* %var_2_124, align 4
; store i32 %var_2_69, i32* %var_2_120, align 4
; Matched:  %EAX = bitcast %union.anon* %var_2_3 to i32*
; %EAX.i151 = bitcast %union.anon* %var_2_40 to i32*
; Matched:%var_2_125:  %var_2_125 = load i32, i32* %EAX, align 4
; %var_2_121 = load i32, i32* %EAX.i151, align 4
; Matched:%var_2_126:  %var_2_126 = zext i32 %var_2_125 to i64
; %var_2_122 = zext i32 %var_2_121 to i64
%var_2_123 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_126, i64* %RDI, align 8, !tbaa !1261
; store i64 %var_2_122, i64* %RDI.i164, align 8
; Matched:  %ECX = bitcast %union.anon* %var_2_4 to i32*
; %ECX.i148 = bitcast %union.anon* %var_2_92 to i32*
; Matched:%var_2_128:  %var_2_128 = load i32, i32* %ECX, align 4
; %var_2_124 = load i32, i32* %ECX.i148, align 4
; Matched:%var_2_129:  %var_2_129 = zext i32 %var_2_128 to i64
; %var_2_125 = zext i32 %var_2_124 to i64
; Matched:\<badref\>:  store i64 %var_2_129, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_125, i64* %RSI.i169, align 8
%var_2_126 = add i64 %var_2_123, -785
; Matched:%var_2_131:  %var_2_131 = add i64 %var_2_127, 9
; %var_2_127 = add i64 %var_2_123, 9
%var_2_128 = load i64, i64* %var_2_6, align 8
%var_2_129 = add i64 %var_2_128, -8
; Matched:%var_2_134:  %var_2_134 = inttoptr i64 %var_2_133 to i64*
; %var_2_130 = inttoptr i64 %var_2_129 to i64*
; Matched:\<badref\>:  store i64 %var_2_131, i64* %var_2_134, align 8
; store i64 %var_2_127, i64* %var_2_130, align 8
; Matched:\<badref\>:  store i64 %var_2_396, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_129, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_130, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_126, i64* %var_2_3, align 8
%call2_400835 = tail call %struct.Memory* @sub_400520.ack(%struct.State* %0, i64 %var_2_126, %struct.Memory* %2)
%var_2_131 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x4009f8_type* @G__0x4009f8 to i64), i64* %RDI.i164, align 8
; Matched:%var_2_137:  %var_2_137 = load i64, i64* %RBP, align 8
; %var_2_132 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_138:  %var_2_138 = add i64 %var_2_137, -24
; %var_2_133 = add i64 %var_2_132, -24
%var_2_134 = add i64 %var_2_131, 13
store i64 %var_2_134, i64* %var_2_3, align 8
; Matched:%var_2_140:  %var_2_140 = inttoptr i64 %var_2_138 to i32*
; %var_2_135 = inttoptr i64 %var_2_133 to i32*
; Matched:%var_2_141:  %var_2_141 = load i32, i32* %var_2_140, align 4
; %var_2_136 = load i32, i32* %var_2_135, align 4
; Matched:%var_2_142:  %var_2_142 = zext i32 %var_2_141 to i64
; %var_2_137 = zext i32 %var_2_136 to i64
; Matched:\<badref\>:  store i64 %var_2_142, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_137, i64* %RSI.i169, align 8
; Matched:%var_2_5:  %var_2_5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
; %var_2_138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
; Matched:  %RDX = getelementptr inbounds %union.anon, %union.anon* %var_2_5, i64 0, i32 0
; %RDX.i140 = getelementptr inbounds %union.anon, %union.anon* %var_2_138, i64 0, i32 0
; Matched:%var_2_143:  %var_2_143 = load i32, i32* %EAX, align 4
; %var_2_139 = load i32, i32* %EAX.i151, align 4
; Matched:%var_2_144:  %var_2_144 = zext i32 %var_2_143 to i64
; %var_2_140 = zext i32 %var_2_139 to i64
; Matched:\<badref\>:  store i64 %var_2_144, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_140, i64* %RDX.i140, align 8
; Matched:  %AL = bitcast %union.anon* %var_2_3 to i8*
; %AL.i137 = bitcast %union.anon* %var_2_40 to i8*
; Matched:\<badref\>:  store i8 1, i8* %AL, align 1, !tbaa !1284
; store i8 0, i8* %AL.i137, align 1
; Matched:%var_2_145:  %var_2_145 = add i64 %var_2_136, -1050
; %var_2_141 = add i64 %var_2_131, -1050
; Matched:%var_2_146:  %var_2_146 = add i64 %var_2_136, 22
; %var_2_142 = add i64 %var_2_131, 22
%var_2_143 = load i64, i64* %var_2_6, align 8
%var_2_144 = add i64 %var_2_143, -8
; Matched:%var_2_149:  %var_2_149 = inttoptr i64 %var_2_148 to i64*
; %var_2_145 = inttoptr i64 %var_2_144 to i64*
; Matched:\<badref\>:  store i64 %var_2_146, i64* %var_2_149, align 8
; store i64 %var_2_142, i64* %var_2_145, align 8
; Matched:\<badref\>:  store i64 %var_2_238, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_144, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_145, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_141, i64* %var_2_3, align 8
%var_2_146 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_400835)
%var_2_147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
; Matched:%var_2_151:  %var_2_151 = bitcast [32 x %union.VectorReg]* %var_2_10 to i8*
; %var_2_148 = bitcast [32 x %union.VectorReg]* %var_2_147 to i8*
%var_2_149 = load i64, i64* %var_2_3, align 8
%var_2_150 = add i64 %var_2_149, ptrtoint (%G_0x198__rip__type* @G_0x198__rip_ to i64)
%var_2_151 = add i64 %var_2_149, 8
store i64 %var_2_151, i64* %var_2_3, align 8
%var_2_152 = inttoptr i64 %var_2_150 to i64*
%var_2_153 = load i64, i64* %var_2_152, align 8
%var_2_154 = bitcast [32 x %union.VectorReg]* %var_2_147 to double*
%var_2_155 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %var_2_147, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
store i64 %var_2_153, i64* %var_2_155, align 1
%var_2_156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
%var_2_157 = bitcast i64* %var_2_156 to double*
store double 0.000000e+00, double* %var_2_157, align 1
%var_2_158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
%var_2_159 = load i64, i64* %RBP.i, align 8
%var_2_160 = add i64 %var_2_159, -20
%var_2_161 = add i64 %var_2_149, 13
store i64 %var_2_161, i64* %var_2_3, align 8
%var_2_162 = inttoptr i64 %var_2_160 to i32*
; Matched:%var_2_162:  %var_2_162 = load i32, i32* %var_2_161, align 4
; %var_2_163 = load i32, i32* %var_2_162, align 4
; Matched:%var_2_163:  %var_2_163 = sitofp i32 %var_2_162 to double
; %var_2_164 = sitofp i32 %var_2_163 to double
; Matched:%var_2_164:  %var_2_164 = bitcast %union.VectorReg* %var_2_11 to double*
; %var_2_165 = bitcast %union.VectorReg* %var_2_158 to double*
; Matched:\<badref\>:  store double %var_2_163, double* %var_2_164, align 1, !tbaa !1285
; store double %var_2_164, double* %var_2_165, align 1
%var_2_166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
%var_2_167 = bitcast %union.VectorReg* %var_2_166 to i8*
%var_2_168 = bitcast i64 %var_2_153 to <2 x i32>
%var_2_169 = extractelement <2 x i32> %var_2_168, i32 0
%var_2_170 = bitcast %union.VectorReg* %var_2_166 to i32*
store i32 %var_2_169, i32* %var_2_170, align 1
%var_2_171 = extractelement <2 x i32> %var_2_168, i32 1
%var_2_172 = getelementptr inbounds i8, i8* %var_2_167, i64 4
%var_2_173 = bitcast i8* %var_2_172 to i32*
store i32 %var_2_171, i32* %var_2_173, align 1
; Matched:%var_2_172:  %var_2_172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
; %var_2_174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_412:  %var_2_412 = bitcast i64* %var_2_172 to double*
; %var_2_175 = bitcast i64* %var_2_174 to i32*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_412, align 1, !tbaa !1285
; store i32 0, i32* %var_2_175, align 1
; Matched:%var_2_174:  %var_2_174 = getelementptr inbounds i8, i8* %var_2_165, i64 12
; %var_2_176 = getelementptr inbounds i8, i8* %var_2_167, i64 12
; Matched:%var_2_175:  %var_2_175 = bitcast i8* %var_2_174 to i32*
; %var_2_177 = bitcast i8* %var_2_176 to i32*
; Matched:\<badref\>:  store i32 0, i32* %var_2_175, align 1, !tbaa !1287
; store i32 0, i32* %var_2_177, align 1
; Matched:%var_2_176:  %var_2_176 = bitcast %union.VectorReg* %var_2_12 to double*
; %var_2_178 = bitcast %union.VectorReg* %var_2_166 to double*
; Matched:%var_2_177:  %var_2_177 = load double, double* %var_2_176, align 1
; %var_2_179 = load double, double* %var_2_178, align 1
; Matched:%var_2_178:  %var_2_178 = fadd double %var_2_177, %var_2_163
; %var_2_180 = fadd double %var_2_179, %var_2_164
; Matched:\<badref\>:  store double %var_2_178, double* %var_2_176, align 1, !tbaa !1285
; store double %var_2_180, double* %var_2_178, align 1
; Matched:%var_2_179:  %var_2_179 = add i64 %var_2_152, 25
; %var_2_181 = add i64 %var_2_149, 25
; Matched:\<badref\>:  store i64 %var_2_179, i64* %PC, align 8
; store i64 %var_2_181, i64* %var_2_3, align 8
%var_2_182 = load i32, i32* %var_2_162, align 4
%var_2_183 = sitofp i32 %var_2_182 to double
; Matched:\<badref\>:  store double %var_2_181, double* %var_2_164, align 1, !tbaa !1285
; store double %var_2_183, double* %var_2_165, align 1
%var_2_184 = bitcast i64 %var_2_153 to double
%var_2_185 = fadd double %var_2_183, %var_2_184
store double %var_2_185, double* %var_2_154, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_156, align 1, !tbaa !1285
; store i64 0, i64* %var_2_156, align 1
; Matched:%var_2_184:  %var_2_184 = add i64 %var_2_158, -28
; %var_2_186 = add i64 %var_2_159, -28
; Matched:%var_2_185:  %var_2_185 = load i32, i32* %EAX, align 4
; %var_2_187 = load i32, i32* %EAX.i151, align 4
%var_2_188 = add i64 %var_2_149, 32
store i64 %var_2_188, i64* %var_2_3, align 8
; Matched:%var_2_187:  %var_2_187 = inttoptr i64 %var_2_184 to i32*
; %var_2_189 = inttoptr i64 %var_2_186 to i32*
; Matched:\<badref\>:  store i32 %var_2_185, i32* %var_2_187, align 4
; store i32 %var_2_187, i32* %var_2_189, align 4
; Matched:%var_2_188:  %var_2_188 = load i64, i64* %RBP, align 8
; %var_2_190 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_189:  %var_2_189 = add i64 %var_2_188, -40
; %var_2_191 = add i64 %var_2_190, -40
; Matched:%var_2_190:  %var_2_190 = load i64, i64* %PC, align 8
; %var_2_192 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_436:  %var_2_436 = add i64 %var_2_432, 5
; %var_2_193 = add i64 %var_2_192, 5
; Matched:\<badref\>:  store i64 %var_2_191, i64* %PC, align 8
; store i64 %var_2_193, i64* %var_2_3, align 8
; Matched:%var_2_192:  %var_2_192 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_12, i64 0, i32 0, i32 0, i32 0, i64 0
; %var_2_194 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_166, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:%var_2_193:  %var_2_193 = load i64, i64* %var_2_192, align 1
; %var_2_195 = load i64, i64* %var_2_194, align 1
; Matched:%var_2_194:  %var_2_194 = inttoptr i64 %var_2_189 to i64*
; %var_2_196 = inttoptr i64 %var_2_191 to i64*
; Matched:\<badref\>:  store i64 %var_2_193, i64* %var_2_194, align 8
; store i64 %var_2_195, i64* %var_2_196, align 8
%var_2_197 = load i64, i64* %var_2_3, align 8
%var_2_198 = add i64 %var_2_197, -645
; Matched:%var_2_356:  %var_2_356 = add i64 %var_2_354, 5
; %var_2_199 = add i64 %var_2_197, 5
%var_2_200 = load i64, i64* %var_2_6, align 8
%var_2_201 = add i64 %var_2_200, -8
; Matched:%var_2_423:  %var_2_423 = inttoptr i64 %var_2_422 to i64*
; %var_2_202 = inttoptr i64 %var_2_201 to i64*
; Matched:\<badref\>:  store i64 %var_2_420, i64* %var_2_423, align 8
; store i64 %var_2_199, i64* %var_2_202, align 8
; Matched:\<badref\>:  store i64 %var_2_133, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_201, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_196, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_198, i64* %var_2_3, align 8
%call2_400875 = tail call %struct.Memory* @sub_4005f0.fibFP(%struct.State* %0, i64 %var_2_198, %struct.Memory* %var_2_146)
%var_2_203 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x400a07_type* @G__0x400a07 to i64), i64* %RDI.i164, align 8
; Matched:%var_2_203:  %var_2_203 = load i64, i64* %RBP, align 8
; %var_2_204 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_204:  %var_2_204 = add i64 %var_2_203, -40
; %var_2_205 = add i64 %var_2_204, -40
; Matched:%var_2_123:  %var_2_123 = add i64 %var_2_70, 15
; %var_2_206 = add i64 %var_2_203, 15
; Matched:\<badref\>:  store i64 %var_2_205, i64* %PC, align 8
; store i64 %var_2_206, i64* %var_2_3, align 8
; Matched:%var_2_206:  %var_2_206 = inttoptr i64 %var_2_204 to i64*
; %var_2_207 = inttoptr i64 %var_2_205 to i64*
; Matched:%var_2_207:  %var_2_207 = load i64, i64* %var_2_206, align 8
; %var_2_208 = load i64, i64* %var_2_207, align 8
%var_2_209 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_158, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:\<badref\>:  store i64 %var_2_207, i64* %var_2_208, align 1, !tbaa !1285
; store i64 %var_2_208, i64* %var_2_209, align 1
; Matched:%var_2_209:  %var_2_209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
; %var_2_210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_210:  %var_2_210 = bitcast i64* %var_2_209 to double*
; %var_2_211 = bitcast i64* %var_2_210 to double*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_210, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_211, align 1
; Matched:%var_2_211:  %var_2_211 = add i64 %var_2_203, -48
; %var_2_212 = add i64 %var_2_204, -48
; Matched:%var_2_212:  %var_2_212 = add i64 %var_2_202, 20
; %var_2_213 = add i64 %var_2_203, 20
; Matched:\<badref\>:  store i64 %var_2_212, i64* %PC, align 8
; store i64 %var_2_213, i64* %var_2_3, align 8
; Matched:%var_2_213:  %var_2_213 = load i64, i64* %var_2_155, align 1
; %var_2_214 = load i64, i64* %var_2_155, align 1
; Matched:%var_2_214:  %var_2_214 = inttoptr i64 %var_2_211 to i64*
; %var_2_215 = inttoptr i64 %var_2_212 to i64*
; Matched:\<badref\>:  store i64 %var_2_213, i64* %var_2_214, align 8
; store i64 %var_2_214, i64* %var_2_215, align 8
%var_2_216 = load i64, i64* %var_2_3, align 8
%var_2_217 = bitcast %union.VectorReg* %var_2_158 to <2 x i32>*
%var_2_218 = load <2 x i32>, <2 x i32>* %var_2_217, align 1
%var_2_219 = bitcast i64* %var_2_210 to <2 x i32>*
%var_2_220 = load <2 x i32>, <2 x i32>* %var_2_219, align 1
%var_2_221 = extractelement <2 x i32> %var_2_218, i32 0
; Matched:%var_2_221:  %var_2_221 = bitcast [32 x %union.VectorReg]* %var_2_10 to i32*
; %var_2_222 = bitcast [32 x %union.VectorReg]* %var_2_147 to i32*
; Matched:\<badref\>:  store i32 %var_2_220, i32* %var_2_221, align 1, !tbaa !1287
; store i32 %var_2_221, i32* %var_2_222, align 1
%var_2_223 = extractelement <2 x i32> %var_2_218, i32 1
; Matched:%var_2_223:  %var_2_223 = getelementptr inbounds i8, i8* %var_2_151, i64 4
; %var_2_224 = getelementptr inbounds i8, i8* %var_2_148, i64 4
; Matched:%var_2_224:  %var_2_224 = bitcast i8* %var_2_223 to i32*
; %var_2_225 = bitcast i8* %var_2_224 to i32*
; Matched:\<badref\>:  store i32 %var_2_222, i32* %var_2_224, align 1, !tbaa !1287
; store i32 %var_2_223, i32* %var_2_225, align 1
%var_2_226 = extractelement <2 x i32> %var_2_220, i32 0
; Matched:%var_2_226:  %var_2_226 = bitcast i64* %var_2_156 to i32*
; %var_2_227 = bitcast i64* %var_2_156 to i32*
; Matched:\<badref\>:  store i32 %var_2_225, i32* %var_2_226, align 1, !tbaa !1287
; store i32 %var_2_226, i32* %var_2_227, align 1
%var_2_228 = extractelement <2 x i32> %var_2_220, i32 1
; Matched:%var_2_228:  %var_2_228 = getelementptr inbounds i8, i8* %var_2_151, i64 12
; %var_2_229 = getelementptr inbounds i8, i8* %var_2_148, i64 12
; Matched:%var_2_229:  %var_2_229 = bitcast i8* %var_2_228 to i32*
; %var_2_230 = bitcast i8* %var_2_229 to i32*
; Matched:\<badref\>:  store i32 %var_2_227, i32* %var_2_229, align 1, !tbaa !1287
; store i32 %var_2_228, i32* %var_2_230, align 1
; Matched:%var_2_230:  %var_2_230 = load i64, i64* %RBP, align 8
; %var_2_231 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_231:  %var_2_231 = add i64 %var_2_230, -48
; %var_2_232 = add i64 %var_2_231, -48
%var_2_233 = add i64 %var_2_216, 8
store i64 %var_2_233, i64* %var_2_3, align 8
; Matched:%var_2_233:  %var_2_233 = inttoptr i64 %var_2_231 to i64*
; %var_2_234 = inttoptr i64 %var_2_232 to i64*
; Matched:%var_2_234:  %var_2_234 = load i64, i64* %var_2_233, align 8
; %var_2_235 = load i64, i64* %var_2_234, align 8
; Matched:\<badref\>:  store i64 %var_2_234, i64* %var_2_208, align 1, !tbaa !1285
; store i64 %var_2_235, i64* %var_2_209, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_210, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_211, align 1
; Matched:\<badref\>:  store i8 0, i8* %AL, align 1, !tbaa !1284
; store i8 2, i8* %AL.i137, align 1
; Matched:%var_2_235:  %var_2_235 = add i64 %var_2_215, -1134
; %var_2_236 = add i64 %var_2_216, -1134
; Matched:%var_2_236:  %var_2_236 = add i64 %var_2_215, 15
; %var_2_237 = add i64 %var_2_216, 15
%var_2_238 = load i64, i64* %var_2_6, align 8
%var_2_239 = add i64 %var_2_238, -8
; Matched:%var_2_239:  %var_2_239 = inttoptr i64 %var_2_238 to i64*
; %var_2_240 = inttoptr i64 %var_2_239 to i64*
; Matched:\<badref\>:  store i64 %var_2_236, i64* %var_2_239, align 8
; store i64 %var_2_237, i64* %var_2_240, align 8
; Matched:\<badref\>:  store i64 %var_2_199, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_239, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_235, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_236, i64* %var_2_3, align 8
%var_2_241 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_400875)
; Matched:%var_2_241:  %var_2_241 = load i64, i64* %RBP, align 8
; %var_2_242 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_242:  %var_2_242 = add i64 %var_2_241, -20
; %var_2_243 = add i64 %var_2_242, -20
%var_2_244 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_61:  %var_2_61 = add i64 %var_2_60, 4
; %var_2_245 = add i64 %var_2_244, 4
; Matched:\<badref\>:  store i64 %var_2_61, i64* %PC, align 8
; store i64 %var_2_245, i64* %var_2_3, align 8
; Matched:%var_2_245:  %var_2_245 = inttoptr i64 %var_2_242 to i32*
; %var_2_246 = inttoptr i64 %var_2_243 to i32*
; Matched:%var_2_246:  %var_2_246 = load i32, i32* %var_2_245, align 4
; %var_2_247 = load i32, i32* %var_2_246, align 4
; Matched:%var_2_247:  %var_2_247 = sext i32 %var_2_246 to i64
; %var_2_248 = sext i32 %var_2_247 to i64
; Matched:%var_2_248:  %var_2_248 = mul nsw i64 %var_2_247, 3
; %var_2_249 = mul nsw i64 %var_2_248, 3
; Matched:%var_2_288:  %var_2_288 = trunc i64 %var_2_287 to i32
; %var_2_250 = trunc i64 %var_2_249 to i32
; Matched:%var_2_250:  %var_2_250 = and i64 %var_2_248, 4294967295
; %var_2_251 = and i64 %var_2_249, 4294967295
; Matched:\<badref\>:  store i64 %var_2_250, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_251, i64* %RSI.i169, align 8
; Matched:%var_2_290:  %var_2_290 = mul i64 %var_2_286, 12884901888
; %var_2_252 = mul i64 %var_2_248, 12884901888
; Matched:%var_2_252:  %var_2_252 = ashr exact i64 %var_2_251, 32
; %var_2_253 = ashr exact i64 %var_2_252, 32
; Matched:%var_2_253:  %var_2_253 = icmp ne i64 %var_2_252, %var_2_248
; %var_2_254 = icmp ne i64 %var_2_253, %var_2_249
; Matched:%var_2_254:  %var_2_254 = zext i1 %var_2_253 to i8
; %var_2_255 = zext i1 %var_2_254 to i8
; Matched:\<badref\>:  store i8 %var_2_254, i8* %var_2_22, align 1, !tbaa !1265
; store i8 %var_2_255, i8* %var_2_14, align 1
; Matched:%var_2_294:  %var_2_294 = and i32 %var_2_288, 255
; %var_2_256 = and i32 %var_2_250, 255
; Matched:%var_2_295:  %var_2_295 = tail call i32 @llvm.ctpop.i32(i32 %var_2_294) #12
; %var_2_257 = tail call i32 @llvm.ctpop.i32(i32 %var_2_256)
; Matched:%var_2_296:  %var_2_296 = trunc i32 %var_2_295 to i8
; %var_2_258 = trunc i32 %var_2_257 to i8
; Matched:%var_2_297:  %var_2_297 = and i8 %var_2_296, 1
; %var_2_259 = and i8 %var_2_258, 1
; Matched:%var_2_259:  %var_2_259 = xor i8 %var_2_258, 1
; %var_2_260 = xor i8 %var_2_259, 1
; Matched:\<badref\>:  store i8 %var_2_259, i8* %var_2_29, align 1, !tbaa !1279
; store i8 %var_2_260, i8* %var_2_21, align 1
store i8 0, i8* %var_2_27, align 1
store i8 0, i8* %var_2_30, align 1
; Matched:%var_2_299:  %var_2_299 = lshr i32 %var_2_288, 31
; %var_2_261 = lshr i32 %var_2_250, 31
; Matched:%var_2_300:  %var_2_300 = trunc i32 %var_2_299 to i8
; %var_2_262 = trunc i32 %var_2_261 to i8
; Matched:\<badref\>:  store i8 %var_2_300, i8* %var_2_41, align 1, !tbaa !1282
; store i8 %var_2_262, i8* %var_2_33, align 1
; Matched:\<badref\>:  store i8 %var_2_293, i8* %var_2_47, align 1, !tbaa !1283
; store i8 %var_2_255, i8* %var_2_39, align 1
; Matched:%var_2_66:  %var_2_66 = add i64 %var_2_65, 7
; %var_2_263 = add i64 %var_2_244, 7
; Matched:\<badref\>:  store i64 %var_2_262, i64* %PC, align 8
; store i64 %var_2_263, i64* %var_2_3, align 8
; Matched:%var_2_263:  %var_2_263 = load i32, i32* %var_2_245, align 4
; %var_2_264 = load i32, i32* %var_2_246, align 4
; Matched:%var_2_264:  %var_2_264 = shl i32 %var_2_263, 1
; %var_2_265 = shl i32 %var_2_264, 1
; Matched:%var_2_265:  %var_2_265 = icmp slt i32 %var_2_263, 0
; %var_2_266 = icmp slt i32 %var_2_264, 0
; Matched:%var_2_266:  %var_2_266 = icmp slt i32 %var_2_264, 0
; %var_2_267 = icmp slt i32 %var_2_265, 0
; Matched:%var_2_307:  %var_2_307 = xor i1 %var_2_305, %var_2_306
; %var_2_268 = xor i1 %var_2_266, %var_2_267
; Matched:%var_2_268:  %var_2_268 = zext i32 %var_2_264 to i64
; %var_2_269 = zext i32 %var_2_265 to i64
; Matched:\<badref\>:  store i64 %var_2_268, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_269, i64* %RCX.i159, align 8
; Matched:  %.lobit = lshr i32 %var_2_263, 31
; %.lobit = lshr i32 %var_2_264, 31
; Matched:%var_2_269:  %var_2_269 = trunc i32 %.lobit to i8
; %var_2_270 = trunc i32 %.lobit to i8
; Matched:\<badref\>:  store i8 %var_2_269, i8* %var_2_22, align 1, !tbaa !1284
; store i8 %var_2_270, i8* %var_2_14, align 1
; Matched:%var_2_270:  %var_2_270 = and i32 %var_2_264, 254
; %var_2_271 = and i32 %var_2_265, 254
; Matched:%var_2_271:  %var_2_271 = tail call i32 @llvm.ctpop.i32(i32 %var_2_270) #12
; %var_2_272 = tail call i32 @llvm.ctpop.i32(i32 %var_2_271)
; Matched:%var_2_312:  %var_2_312 = trunc i32 %var_2_311 to i8
; %var_2_273 = trunc i32 %var_2_272 to i8
; Matched:%var_2_313:  %var_2_313 = and i8 %var_2_312, 1
; %var_2_274 = and i8 %var_2_273, 1
; Matched:%var_2_274:  %var_2_274 = xor i8 %var_2_273, 1
; %var_2_275 = xor i8 %var_2_274, 1
; Matched:\<badref\>:  store i8 %var_2_274, i8* %var_2_29, align 1, !tbaa !1284
; store i8 %var_2_275, i8* %var_2_21, align 1
store i8 0, i8* %var_2_27, align 1
; Matched:%var_2_275:  %var_2_275 = icmp eq i32 %var_2_264, 0
; %var_2_276 = icmp eq i32 %var_2_265, 0
; Matched:%var_2_276:  %var_2_276 = zext i1 %var_2_275 to i8
; %var_2_277 = zext i1 %var_2_276 to i8
; Matched:\<badref\>:  store i8 %var_2_276, i8* %var_2_38, align 1, !tbaa !1284
; store i8 %var_2_277, i8* %var_2_30, align 1
; Matched:%var_2_317:  %var_2_317 = lshr i32 %var_2_303, 30
; %var_2_278 = lshr i32 %var_2_264, 30
; Matched:%var_2_318:  %var_2_318 = trunc i32 %var_2_317 to i8
; %var_2_279 = trunc i32 %var_2_278 to i8
; Matched:%var_2_279:  %var_2_279 = and i8 %var_2_278, 1
; %var_2_280 = and i8 %var_2_279, 1
; Matched:\<badref\>:  store i8 %var_2_279, i8* %var_2_41, align 1, !tbaa !1284
; store i8 %var_2_280, i8* %var_2_33, align 1
; Matched:%var_2_280:  %var_2_280 = zext i1 %var_2_267 to i8
; %var_2_281 = zext i1 %var_2_268 to i8
; Matched:\<badref\>:  store i8 %var_2_280, i8* %var_2_47, align 1, !tbaa !1284
; store i8 %var_2_281, i8* %var_2_39, align 1
%var_2_282 = add i64 %var_2_244, 12
store i64 %var_2_282, i64* %var_2_3, align 8
; Matched:%var_2_282:  %var_2_282 = load i32, i32* %var_2_245, align 4
; %var_2_283 = load i32, i32* %var_2_246, align 4
; Matched:%var_2_283:  %var_2_283 = zext i32 %var_2_282 to i64
; %var_2_284 = zext i32 %var_2_283 to i64
; Matched:\<badref\>:  store i64 %var_2_283, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_284, i64* %RDX.i140, align 8
; Matched:%var_2_369:  %var_2_369 = add i64 %var_2_361, 16
; %var_2_285 = add i64 %var_2_244, 16
; Matched:\<badref\>:  store i64 %var_2_369, i64* %PC, align 8
; store i64 %var_2_285, i64* %var_2_3, align 8
; Matched:%var_2_285:  %var_2_285 = load i32, i32* %var_2_245, align 4
; %var_2_286 = load i32, i32* %var_2_246, align 4
; Matched:%var_2_286:  %var_2_286 = sext i32 %var_2_285 to i64
; %var_2_287 = sext i32 %var_2_286 to i64
; Matched:%var_2_287:  %var_2_287 = mul nsw i64 %var_2_286, 3
; %var_2_288 = mul nsw i64 %var_2_287, 3
; Matched:%var_2_249:  %var_2_249 = trunc i64 %var_2_248 to i32
; %var_2_289 = trunc i64 %var_2_288 to i32
; Matched:%var_2_289:  %var_2_289 = and i64 %var_2_287, 4294967295
; %var_2_290 = and i64 %var_2_288, 4294967295
; Matched:\<badref\>:  store i64 %var_2_289, i64* %RDI, align 8, !tbaa !1261
; store i64 %var_2_290, i64* %RDI.i164, align 8
; Matched:%var_2_251:  %var_2_251 = mul i64 %var_2_247, 12884901888
; %var_2_291 = mul i64 %var_2_287, 12884901888
; Matched:%var_2_291:  %var_2_291 = ashr exact i64 %var_2_290, 32
; %var_2_292 = ashr exact i64 %var_2_291, 32
; Matched:%var_2_292:  %var_2_292 = icmp ne i64 %var_2_291, %var_2_287
; %var_2_293 = icmp ne i64 %var_2_292, %var_2_288
; Matched:%var_2_293:  %var_2_293 = zext i1 %var_2_292 to i8
; %var_2_294 = zext i1 %var_2_293 to i8
; Matched:\<badref\>:  store i8 %var_2_293, i8* %var_2_22, align 1, !tbaa !1265
; store i8 %var_2_294, i8* %var_2_14, align 1
; Matched:%var_2_255:  %var_2_255 = and i32 %var_2_249, 255
; %var_2_295 = and i32 %var_2_289, 255
; Matched:%var_2_256:  %var_2_256 = tail call i32 @llvm.ctpop.i32(i32 %var_2_255) #12
; %var_2_296 = tail call i32 @llvm.ctpop.i32(i32 %var_2_295)
; Matched:%var_2_257:  %var_2_257 = trunc i32 %var_2_256 to i8
; %var_2_297 = trunc i32 %var_2_296 to i8
; Matched:%var_2_258:  %var_2_258 = and i8 %var_2_257, 1
; %var_2_298 = and i8 %var_2_297, 1
; Matched:%var_2_298:  %var_2_298 = xor i8 %var_2_297, 1
; %var_2_299 = xor i8 %var_2_298, 1
; Matched:\<badref\>:  store i8 %var_2_298, i8* %var_2_29, align 1, !tbaa !1279
; store i8 %var_2_299, i8* %var_2_21, align 1
store i8 0, i8* %var_2_27, align 1
store i8 0, i8* %var_2_30, align 1
; Matched:%var_2_260:  %var_2_260 = lshr i32 %var_2_249, 31
; %var_2_300 = lshr i32 %var_2_289, 31
; Matched:%var_2_261:  %var_2_261 = trunc i32 %var_2_260 to i8
; %var_2_301 = trunc i32 %var_2_300 to i8
; Matched:\<badref\>:  store i8 %var_2_261, i8* %var_2_41, align 1, !tbaa !1282
; store i8 %var_2_301, i8* %var_2_33, align 1
; Matched:\<badref\>:  store i8 %var_2_254, i8* %var_2_47, align 1, !tbaa !1283
; store i8 %var_2_294, i8* %var_2_39, align 1
; Matched:%var_2_8:  %var_2_8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
; %var_2_302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
; Matched:  %R8D = bitcast %union.anon* %var_2_8 to i32*
; %R8D.i77 = bitcast %union.anon* %var_2_302 to i32*
; Matched:%var_2_301:  %var_2_301 = getelementptr inbounds %union.anon, %union.anon* %var_2_8, i64 0, i32 0
; %var_2_303 = getelementptr inbounds %union.anon, %union.anon* %var_2_302, i64 0, i32 0
; Matched:%var_2_212:  %var_2_212 = add i64 %var_2_202, 20
; %var_2_304 = add i64 %var_2_244, 20
; Matched:\<badref\>:  store i64 %var_2_212, i64* %PC, align 8
; store i64 %var_2_304, i64* %var_2_3, align 8
; Matched:%var_2_303:  %var_2_303 = load i32, i32* %var_2_245, align 4
; %var_2_305 = load i32, i32* %var_2_246, align 4
; Matched:%var_2_304:  %var_2_304 = shl i32 %var_2_303, 1
; %var_2_306 = shl i32 %var_2_305, 1
; Matched:%var_2_305:  %var_2_305 = icmp slt i32 %var_2_303, 0
; %var_2_307 = icmp slt i32 %var_2_305, 0
; Matched:%var_2_306:  %var_2_306 = icmp slt i32 %var_2_304, 0
; %var_2_308 = icmp slt i32 %var_2_306, 0
; Matched:%var_2_267:  %var_2_267 = xor i1 %var_2_265, %var_2_266
; %var_2_309 = xor i1 %var_2_307, %var_2_308
; Matched:%var_2_308:  %var_2_308 = zext i32 %var_2_304 to i64
; %var_2_310 = zext i32 %var_2_306 to i64
; Matched:\<badref\>:  store i64 %var_2_308, i64* %var_2_301, align 8, !tbaa !1261
; store i64 %var_2_310, i64* %var_2_303, align 8
; Matched:  %.lobit1 = lshr i32 %var_2_303, 31
; %.lobit1 = lshr i32 %var_2_305, 31
; Matched:%var_2_309:  %var_2_309 = trunc i32 %.lobit1 to i8
; %var_2_311 = trunc i32 %.lobit1 to i8
; Matched:\<badref\>:  store i8 %var_2_309, i8* %var_2_22, align 1, !tbaa !1284
; store i8 %var_2_311, i8* %var_2_14, align 1
; Matched:%var_2_310:  %var_2_310 = and i32 %var_2_304, 254
; %var_2_312 = and i32 %var_2_306, 254
; Matched:%var_2_311:  %var_2_311 = tail call i32 @llvm.ctpop.i32(i32 %var_2_310) #12
; %var_2_313 = tail call i32 @llvm.ctpop.i32(i32 %var_2_312)
; Matched:%var_2_272:  %var_2_272 = trunc i32 %var_2_271 to i8
; %var_2_314 = trunc i32 %var_2_313 to i8
; Matched:%var_2_273:  %var_2_273 = and i8 %var_2_272, 1
; %var_2_315 = and i8 %var_2_314, 1
; Matched:%var_2_314:  %var_2_314 = xor i8 %var_2_313, 1
; %var_2_316 = xor i8 %var_2_315, 1
; Matched:\<badref\>:  store i8 %var_2_314, i8* %var_2_29, align 1, !tbaa !1284
; store i8 %var_2_316, i8* %var_2_21, align 1
store i8 0, i8* %var_2_27, align 1
; Matched:%var_2_315:  %var_2_315 = icmp eq i32 %var_2_304, 0
; %var_2_317 = icmp eq i32 %var_2_306, 0
; Matched:%var_2_316:  %var_2_316 = zext i1 %var_2_315 to i8
; %var_2_318 = zext i1 %var_2_317 to i8
; Matched:\<badref\>:  store i8 %var_2_316, i8* %var_2_38, align 1, !tbaa !1284
; store i8 %var_2_318, i8* %var_2_30, align 1
; Matched:%var_2_277:  %var_2_277 = lshr i32 %var_2_263, 30
; %var_2_319 = lshr i32 %var_2_305, 30
; Matched:%var_2_278:  %var_2_278 = trunc i32 %var_2_277 to i8
; %var_2_320 = trunc i32 %var_2_319 to i8
; Matched:%var_2_319:  %var_2_319 = and i8 %var_2_318, 1
; %var_2_321 = and i8 %var_2_320, 1
; Matched:\<badref\>:  store i8 %var_2_319, i8* %var_2_41, align 1, !tbaa !1284
; store i8 %var_2_321, i8* %var_2_33, align 1
; Matched:%var_2_320:  %var_2_320 = zext i1 %var_2_307 to i8
; %var_2_322 = zext i1 %var_2_309 to i8
; Matched:\<badref\>:  store i8 %var_2_320, i8* %var_2_47, align 1, !tbaa !1284
; store i8 %var_2_322, i8* %var_2_39, align 1
; Matched:%var_2_9:  %var_2_9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
; %var_2_323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
; Matched:  %R9D = bitcast %union.anon* %var_2_9 to i32*
; %R9D.i72 = bitcast %union.anon* %var_2_323 to i32*
; Matched:%var_2_321:  %var_2_321 = getelementptr inbounds %union.anon, %union.anon* %var_2_9, i64 0, i32 0
; %var_2_324 = getelementptr inbounds %union.anon, %union.anon* %var_2_323, i64 0, i32 0
; Matched:%var_2_322:  %var_2_322 = load i64, i64* %RBP, align 8
; %var_2_325 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_323:  %var_2_323 = add i64 %var_2_322, -20
; %var_2_326 = add i64 %var_2_325, -20
; Matched:%var_2_416:  %var_2_416 = add i64 %var_2_408, 27
; %var_2_327 = add i64 %var_2_244, 27
; Matched:\<badref\>:  store i64 %var_2_416, i64* %PC, align 8
; store i64 %var_2_327, i64* %var_2_3, align 8
; Matched:%var_2_325:  %var_2_325 = inttoptr i64 %var_2_323 to i32*
; %var_2_328 = inttoptr i64 %var_2_326 to i32*
; Matched:%var_2_326:  %var_2_326 = load i32, i32* %var_2_325, align 4
; %var_2_329 = load i32, i32* %var_2_328, align 4
; Matched:%var_2_327:  %var_2_327 = zext i32 %var_2_326 to i64
; %var_2_330 = zext i32 %var_2_329 to i64
; Matched:\<badref\>:  store i64 %var_2_327, i64* %var_2_321, align 8, !tbaa !1261
; store i64 %var_2_330, i64* %var_2_324, align 8
; Matched:  %ESI = bitcast %union.anon* %var_2_6 to i32*
; %ESI.i = bitcast %union.anon* %var_2_51 to i32*
; Matched:%var_2_328:  %var_2_328 = add i64 %var_2_322, -52
; %var_2_331 = add i64 %var_2_325, -52
; Matched:%var_2_329:  %var_2_329 = load i32, i32* %ESI, align 4
; %var_2_332 = load i32, i32* %ESI.i, align 4
%var_2_333 = add i64 %var_2_244, 30
store i64 %var_2_333, i64* %var_2_3, align 8
; Matched:%var_2_331:  %var_2_331 = inttoptr i64 %var_2_328 to i32*
; %var_2_334 = inttoptr i64 %var_2_331 to i32*
; Matched:\<badref\>:  store i32 %var_2_329, i32* %var_2_331, align 4
; store i32 %var_2_332, i32* %var_2_334, align 4
; Matched:%var_2_332:  %var_2_332 = load i32, i32* %R8D, align 4
; %var_2_335 = load i32, i32* %R8D.i77, align 4
; Matched:%var_2_333:  %var_2_333 = zext i32 %var_2_332 to i64
; %var_2_336 = zext i32 %var_2_335 to i64
; Matched:%var_2_342:  %var_2_342 = load i64, i64* %PC, align 8
; %var_2_337 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_333, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_336, i64* %RSI.i169, align 8
; Matched:  %EDX = bitcast %union.anon* %var_2_5 to i32*
; %EDX.i = bitcast %union.anon* %var_2_138 to i32*
; Matched:%var_2_335:  %var_2_335 = load i64, i64* %RBP, align 8
; %var_2_338 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_336:  %var_2_336 = add i64 %var_2_335, -56
; %var_2_339 = add i64 %var_2_338, -56
; Matched:%var_2_337:  %var_2_337 = load i32, i32* %EDX, align 4
; %var_2_340 = load i32, i32* %EDX.i, align 4
; Matched:%var_2_346:  %var_2_346 = add i64 %var_2_342, 6
; %var_2_341 = add i64 %var_2_337, 6
; Matched:\<badref\>:  store i64 %var_2_338, i64* %PC, align 8
; store i64 %var_2_341, i64* %var_2_3, align 8
; Matched:%var_2_339:  %var_2_339 = inttoptr i64 %var_2_336 to i32*
; %var_2_342 = inttoptr i64 %var_2_339 to i32*
; Matched:\<badref\>:  store i32 %var_2_337, i32* %var_2_339, align 4
; store i32 %var_2_340, i32* %var_2_342, align 4
; Matched:%var_2_340:  %var_2_340 = load i32, i32* %R9D, align 4
; %var_2_343 = load i32, i32* %R9D.i72, align 4
; Matched:%var_2_341:  %var_2_341 = zext i32 %var_2_340 to i64
; %var_2_344 = zext i32 %var_2_343 to i64
; Matched:%var_2_334:  %var_2_334 = load i64, i64* %PC, align 8
; %var_2_345 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_341, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_344, i64* %RDX.i140, align 8
; Matched:%var_2_343:  %var_2_343 = load i64, i64* %RBP, align 8
; %var_2_346 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_344:  %var_2_344 = add i64 %var_2_343, -60
; %var_2_347 = add i64 %var_2_346, -60
; Matched:%var_2_345:  %var_2_345 = load i32, i32* %EAX, align 4
; %var_2_348 = load i32, i32* %EAX.i151, align 4
; Matched:%var_2_338:  %var_2_338 = add i64 %var_2_334, 6
; %var_2_349 = add i64 %var_2_345, 6
; Matched:\<badref\>:  store i64 %var_2_346, i64* %PC, align 8
; store i64 %var_2_349, i64* %var_2_3, align 8
; Matched:%var_2_347:  %var_2_347 = inttoptr i64 %var_2_344 to i32*
; %var_2_350 = inttoptr i64 %var_2_347 to i32*
; Matched:\<badref\>:  store i32 %var_2_345, i32* %var_2_347, align 4
; store i32 %var_2_348, i32* %var_2_350, align 4
; Matched:%var_2_348:  %var_2_348 = load i64, i64* %RBP, align 8
; %var_2_351 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_349:  %var_2_349 = add i64 %var_2_348, -64
; %var_2_352 = add i64 %var_2_351, -64
; Matched:%var_2_350:  %var_2_350 = load i32, i32* %ECX, align 4
; %var_2_353 = load i32, i32* %ECX.i148, align 4
%var_2_354 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_55:  %var_2_55 = add i64 %var_2_54, 3
; %var_2_355 = add i64 %var_2_354, 3
; Matched:\<badref\>:  store i64 %var_2_55, i64* %PC, align 8
; store i64 %var_2_355, i64* %var_2_3, align 8
; Matched:%var_2_353:  %var_2_353 = inttoptr i64 %var_2_349 to i32*
; %var_2_356 = inttoptr i64 %var_2_352 to i32*
; Matched:\<badref\>:  store i32 %var_2_350, i32* %var_2_353, align 4
; store i32 %var_2_353, i32* %var_2_356, align 4
%var_2_357 = load i64, i64* %var_2_3, align 8
%var_2_358 = add i64 %var_2_357, -588
; Matched:%var_2_420:  %var_2_420 = add i64 %var_2_418, 5
; %var_2_359 = add i64 %var_2_357, 5
%var_2_360 = load i64, i64* %var_2_6, align 8
%var_2_361 = add i64 %var_2_360, -8
; Matched:%var_2_359:  %var_2_359 = inttoptr i64 %var_2_358 to i64*
; %var_2_362 = inttoptr i64 %var_2_361 to i64*
; Matched:\<badref\>:  store i64 %var_2_197, i64* %var_2_200, align 8
; store i64 %var_2_359, i64* %var_2_362, align 8
; Matched:\<badref\>:  store i64 %var_2_422, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_361, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_355, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_358, i64* %var_2_3, align 8
%call2_4008cc = tail call %struct.Memory* @sub_400680.tak(%struct.State* %0, i64 %var_2_358, %struct.Memory* %var_2_241)
%var_2_363 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x400a18_type* @G__0x400a18 to i64), i64* %RDI.i164, align 8
; Matched:%var_2_362:  %var_2_362 = load i64, i64* %RBP, align 8
; %var_2_364 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_363:  %var_2_363 = add i64 %var_2_362, -52
; %var_2_365 = add i64 %var_2_364, -52
%var_2_366 = add i64 %var_2_363, 13
store i64 %var_2_366, i64* %var_2_3, align 8
; Matched:%var_2_365:  %var_2_365 = inttoptr i64 %var_2_363 to i32*
; %var_2_367 = inttoptr i64 %var_2_365 to i32*
; Matched:%var_2_366:  %var_2_366 = load i32, i32* %var_2_365, align 4
; %var_2_368 = load i32, i32* %var_2_367, align 4
; Matched:%var_2_367:  %var_2_367 = zext i32 %var_2_366 to i64
; %var_2_369 = zext i32 %var_2_368 to i64
; Matched:\<badref\>:  store i64 %var_2_367, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_369, i64* %RSI.i169, align 8
; Matched:%var_2_368:  %var_2_368 = add i64 %var_2_362, -64
; %var_2_370 = add i64 %var_2_364, -64
; Matched:%var_2_369:  %var_2_369 = add i64 %var_2_361, 16
; %var_2_371 = add i64 %var_2_363, 16
; Matched:\<badref\>:  store i64 %var_2_369, i64* %PC, align 8
; store i64 %var_2_371, i64* %var_2_3, align 8
; Matched:%var_2_370:  %var_2_370 = inttoptr i64 %var_2_368 to i32*
; %var_2_372 = inttoptr i64 %var_2_370 to i32*
; Matched:%var_2_371:  %var_2_371 = load i32, i32* %var_2_370, align 4
; %var_2_373 = load i32, i32* %var_2_372, align 4
; Matched:%var_2_372:  %var_2_372 = zext i32 %var_2_371 to i64
; %var_2_374 = zext i32 %var_2_373 to i64
; Matched:\<badref\>:  store i64 %var_2_372, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_374, i64* %RDX.i140, align 8
; Matched:%var_2_373:  %var_2_373 = add i64 %var_2_362, -56
; %var_2_375 = add i64 %var_2_364, -56
; Matched:%var_2_374:  %var_2_374 = add i64 %var_2_361, 19
; %var_2_376 = add i64 %var_2_363, 19
; Matched:\<badref\>:  store i64 %var_2_374, i64* %PC, align 8
; store i64 %var_2_376, i64* %var_2_3, align 8
; Matched:%var_2_375:  %var_2_375 = inttoptr i64 %var_2_373 to i32*
; %var_2_377 = inttoptr i64 %var_2_375 to i32*
; Matched:%var_2_376:  %var_2_376 = load i32, i32* %var_2_375, align 4
; %var_2_378 = load i32, i32* %var_2_377, align 4
; Matched:%var_2_377:  %var_2_377 = zext i32 %var_2_376 to i64
; %var_2_379 = zext i32 %var_2_378 to i64
; Matched:\<badref\>:  store i64 %var_2_377, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_379, i64* %RCX.i159, align 8
; Matched:%var_2_378:  %var_2_378 = load i32, i32* %EAX, align 4
; %var_2_380 = load i32, i32* %EAX.i151, align 4
; Matched:%var_2_379:  %var_2_379 = zext i32 %var_2_378 to i64
; %var_2_381 = zext i32 %var_2_380 to i64
; Matched:\<badref\>:  store i64 %var_2_379, i64* %var_2_301, align 8, !tbaa !1261
; store i64 %var_2_381, i64* %var_2_303, align 8
; Matched:\<badref\>:  store i8 1, i8* %AL, align 1, !tbaa !1284
; store i8 0, i8* %AL.i137, align 1
; Matched:%var_2_380:  %var_2_380 = add i64 %var_2_361, -1201
; %var_2_382 = add i64 %var_2_363, -1201
; Matched:%var_2_381:  %var_2_381 = add i64 %var_2_361, 29
; %var_2_383 = add i64 %var_2_363, 29
%var_2_384 = load i64, i64* %var_2_6, align 8
%var_2_385 = add i64 %var_2_384, -8
; Matched:%var_2_384:  %var_2_384 = inttoptr i64 %var_2_383 to i64*
; %var_2_386 = inttoptr i64 %var_2_385 to i64*
; Matched:\<badref\>:  store i64 %var_2_381, i64* %var_2_384, align 8
; store i64 %var_2_383, i64* %var_2_386, align 8
; Matched:\<badref\>:  store i64 %var_2_405, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_385, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_380, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_382, i64* %var_2_3, align 8
%var_2_387 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_4008cc)
%var_2_388 = load i64, i64* %var_2_3, align 8
  store i64 3, i64* %RDI.i164, align 8
; Matched:%var_2_387:  %var_2_387 = load i64, i64* %RBP, align 8
; %var_2_389 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_388:  %var_2_388 = add i64 %var_2_387, -68
; %var_2_390 = add i64 %var_2_389, -68
; Matched:%var_2_389:  %var_2_389 = load i32, i32* %EAX, align 4
; %var_2_391 = load i32, i32* %EAX.i151, align 4
%var_2_392 = add i64 %var_2_388, 8
store i64 %var_2_392, i64* %var_2_3, align 8
; Matched:%var_2_391:  %var_2_391 = inttoptr i64 %var_2_388 to i32*
; %var_2_393 = inttoptr i64 %var_2_390 to i32*
; Matched:\<badref\>:  store i32 %var_2_389, i32* %var_2_391, align 4
; store i32 %var_2_391, i32* %var_2_393, align 4
%var_2_394 = load i64, i64* %var_2_3, align 8
%var_2_395 = add i64 %var_2_394, -854
; Matched:%var_2_197:  %var_2_197 = add i64 %var_2_195, 5
; %var_2_396 = add i64 %var_2_394, 5
%var_2_397 = load i64, i64* %var_2_6, align 8
%var_2_398 = add i64 %var_2_397, -8
; Matched:%var_2_397:  %var_2_397 = inttoptr i64 %var_2_396 to i64*
; %var_2_399 = inttoptr i64 %var_2_398 to i64*
; Matched:\<badref\>:  store i64 %var_2_394, i64* %var_2_397, align 8
; store i64 %var_2_396, i64* %var_2_399, align 8
; Matched:\<badref\>:  store i64 %var_2_358, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_398, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_393, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_395, i64* %var_2_3, align 8
%call2_4008f6 = tail call %struct.Memory* @sub_4005a0.fib(%struct.State* %0, i64 %var_2_395, %struct.Memory* %var_2_387)
; Matched:%var_2_399:  %var_2_399 = load i64, i64* %PC, align 8
; %var_2_400 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x400a2b_type* @G__0x400a2b to i64), i64* %RDI.i164, align 8
; Matched:%var_2_400:  %var_2_400 = load i32, i32* %EAX, align 4
; %var_2_401 = load i32, i32* %EAX.i151, align 4
; Matched:%var_2_401:  %var_2_401 = zext i32 %var_2_400 to i64
; %var_2_402 = zext i32 %var_2_401 to i64
; Matched:\<badref\>:  store i64 %var_2_401, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_402, i64* %RSI.i169, align 8
; Matched:\<badref\>:  store i8 1, i8* %AL, align 1, !tbaa !1284
; store i8 0, i8* %AL.i137, align 1
; Matched:%var_2_402:  %var_2_402 = add i64 %var_2_399, -1243
; %var_2_403 = add i64 %var_2_400, -1243
; Matched:%var_2_403:  %var_2_403 = add i64 %var_2_399, 19
; %var_2_404 = add i64 %var_2_400, 19
%var_2_405 = load i64, i64* %var_2_6, align 8
%var_2_406 = add i64 %var_2_405, -8
; Matched:%var_2_406:  %var_2_406 = inttoptr i64 %var_2_405 to i64*
; %var_2_407 = inttoptr i64 %var_2_406 to i64*
; Matched:\<badref\>:  store i64 %var_2_403, i64* %var_2_406, align 8
; store i64 %var_2_404, i64* %var_2_407, align 8
; Matched:\<badref\>:  store i64 %var_2_429, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_406, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_402, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_403, i64* %var_2_3, align 8
%var_2_408 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_4008f6)
; Matched:%var_2_408:  %var_2_408 = load i64, i64* %PC, align 8
; %var_2_409 = load i64, i64* %var_2_3, align 8
%var_2_410 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%G_0xd2__rip__type* @G_0xd2__rip_ to i64), i64 10) to i64*), align 8
store i64 %var_2_410, i64* %var_2_155, align 1
store double 0.000000e+00, double* %var_2_157, align 1
%var_2_411 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%G_0xba__rip__type* @G_0xba__rip_ to i64), i64 38) to i64*), align 8
store i64 %var_2_411, i64* %var_2_209, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_210, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_211, align 1
; Matched:\<badref\>:  store i64 %var_2_411, i64* %var_2_192, align 1, !tbaa !1285
; store i64 %var_2_411, i64* %var_2_194, align 1
; Matched:%var_2_173:  %var_2_173 = bitcast i64* %var_2_172 to i32*
; %var_2_412 = bitcast i64* %var_2_174 to double*
; Matched:\<badref\>:  store i32 0, i32* %var_2_173, align 1, !tbaa !1287
; store double 0.000000e+00, double* %var_2_412, align 1
; Matched:%var_2_413:  %var_2_413 = load i64, i64* %RBP, align 8
; %var_2_413 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_414:  %var_2_414 = add i64 %var_2_413, -72
; %var_2_414 = add i64 %var_2_413, -72
; Matched:%var_2_415:  %var_2_415 = load i32, i32* %EAX, align 4
; %var_2_415 = load i32, i32* %EAX.i151, align 4
; Matched:%var_2_416:  %var_2_416 = add i64 %var_2_408, 27
; %var_2_416 = add i64 %var_2_409, 27
; Matched:\<badref\>:  store i64 %var_2_416, i64* %PC, align 8
; store i64 %var_2_416, i64* %var_2_3, align 8
; Matched:%var_2_417:  %var_2_417 = inttoptr i64 %var_2_414 to i32*
; %var_2_417 = inttoptr i64 %var_2_414 to i32*
; Matched:\<badref\>:  store i32 %var_2_415, i32* %var_2_417, align 4
; store i32 %var_2_415, i32* %var_2_417, align 4
%var_2_418 = load i64, i64* %var_2_3, align 8
%var_2_419 = add i64 %var_2_418, -537
; Matched:%var_2_394:  %var_2_394 = add i64 %var_2_392, 5
; %var_2_420 = add i64 %var_2_418, 5
%var_2_421 = load i64, i64* %var_2_6, align 8
%var_2_422 = add i64 %var_2_421, -8
; Matched:%var_2_200:  %var_2_200 = inttoptr i64 %var_2_199 to i64*
; %var_2_423 = inttoptr i64 %var_2_422 to i64*
; Matched:\<badref\>:  store i64 %var_2_356, i64* %var_2_359, align 8
; store i64 %var_2_420, i64* %var_2_423, align 8
; Matched:\<badref\>:  store i64 %var_2_383, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_422, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_419, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_419, i64* %var_2_3, align 8
%call2_400929 = tail call %struct.Memory* @sub_400710.takFP(%struct.State* %0, i64 %var_2_419, %struct.Memory* %var_2_408)
; Matched:%var_2_425:  %var_2_425 = load i64, i64* %PC, align 8
; %var_2_424 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x400a37_type* @G__0x400a37 to i64), i64* %RDI.i164, align 8
; Matched:\<badref\>:  store i8 2, i8* %AL, align 1, !tbaa !1284
; store i8 1, i8* %AL.i137, align 1
; Matched:%var_2_426:  %var_2_426 = add i64 %var_2_425, -1294
; %var_2_425 = add i64 %var_2_424, -1294
; Matched:%var_2_427:  %var_2_427 = add i64 %var_2_425, 17
; %var_2_426 = add i64 %var_2_424, 17
%var_2_427 = load i64, i64* %var_2_6, align 8
%var_2_428 = add i64 %var_2_427, -8
; Matched:%var_2_430:  %var_2_430 = inttoptr i64 %var_2_429 to i64*
; %var_2_429 = inttoptr i64 %var_2_428 to i64*
; Matched:\<badref\>:  store i64 %var_2_427, i64* %var_2_430, align 8
; store i64 %var_2_426, i64* %var_2_429, align 8
; Matched:\<badref\>:  store i64 %var_2_148, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_428, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_426, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_425, i64* %var_2_3, align 8
%var_2_430 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_400929)
; Matched:%var_2_432:  %var_2_432 = load i64, i64* %PC, align 8
; %var_2_431 = load i64, i64* %var_2_3, align 8
  store i64 0, i64* %RCX.i159, align 8
; Matched:%var_2_433:  %var_2_433 = load i64, i64* %RBP, align 8
; %var_2_432 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_434:  %var_2_434 = add i64 %var_2_433, -76
; %var_2_433 = add i64 %var_2_432, -76
; Matched:%var_2_435:  %var_2_435 = load i32, i32* %EAX, align 4
; %var_2_434 = load i32, i32* %EAX.i151, align 4
; Matched:%var_2_191:  %var_2_191 = add i64 %var_2_190, 5
; %var_2_435 = add i64 %var_2_431, 5
; Matched:\<badref\>:  store i64 %var_2_436, i64* %PC, align 8
; store i64 %var_2_435, i64* %var_2_3, align 8
; Matched:%var_2_437:  %var_2_437 = inttoptr i64 %var_2_434 to i32*
; %var_2_436 = inttoptr i64 %var_2_433 to i32*
; Matched:\<badref\>:  store i32 %var_2_435, i32* %var_2_437, align 4
; store i32 %var_2_434, i32* %var_2_436, align 4
; Matched:%var_2_438:  %var_2_438 = load i32, i32* %ECX, align 4
; %var_2_437 = load i32, i32* %ECX.i148, align 4
; Matched:%var_2_439:  %var_2_439 = zext i32 %var_2_438 to i64
; %var_2_438 = zext i32 %var_2_437 to i64
%var_2_439 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_439, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_438, i64* %RAX.i39, align 8
; Matched:%var_2_441:  %var_2_441 = load i64, i64* %RSP, align 8
; %var_2_440 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_442:  %var_2_442 = add i64 %var_2_441, 80
; %var_2_441 = add i64 %var_2_440, 80
; Matched:\<badref\>:  store i64 %var_2_442, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_441, i64* %var_2_6, align 8
; Matched:%var_2_443:  %var_2_443 = icmp ugt i64 %var_2_441, -81
; %var_2_442 = icmp ugt i64 %var_2_440, -81
; Matched:%var_2_444:  %var_2_444 = zext i1 %var_2_443 to i8
; %var_2_443 = zext i1 %var_2_442 to i8
; Matched:\<badref\>:  store i8 %var_2_444, i8* %var_2_22, align 1, !tbaa !1265
; store i8 %var_2_443, i8* %var_2_14, align 1
; Matched:%var_2_445:  %var_2_445 = trunc i64 %var_2_442 to i32
; %var_2_444 = trunc i64 %var_2_441 to i32
; Matched:%var_2_446:  %var_2_446 = and i32 %var_2_445, 255
; %var_2_445 = and i32 %var_2_444, 255
; Matched:%var_2_447:  %var_2_447 = tail call i32 @llvm.ctpop.i32(i32 %var_2_446) #12
; %var_2_446 = tail call i32 @llvm.ctpop.i32(i32 %var_2_445)
; Matched:%var_2_448:  %var_2_448 = trunc i32 %var_2_447 to i8
; %var_2_447 = trunc i32 %var_2_446 to i8
; Matched:%var_2_449:  %var_2_449 = and i8 %var_2_448, 1
; %var_2_448 = and i8 %var_2_447, 1
; Matched:%var_2_450:  %var_2_450 = xor i8 %var_2_449, 1
; %var_2_449 = xor i8 %var_2_448, 1
; Matched:\<badref\>:  store i8 %var_2_450, i8* %var_2_29, align 1, !tbaa !1279
; store i8 %var_2_449, i8* %var_2_21, align 1
; Matched:%var_2_451:  %var_2_451 = xor i64 %var_2_441, 16
; %var_2_450 = xor i64 %var_2_440, 16
; Matched:%var_2_452:  %var_2_452 = xor i64 %var_2_451, %var_2_442
; %var_2_451 = xor i64 %var_2_450, %var_2_441
; Matched:%var_2_453:  %var_2_453 = lshr i64 %var_2_452, 4
; %var_2_452 = lshr i64 %var_2_451, 4
; Matched:%var_2_454:  %var_2_454 = trunc i64 %var_2_453 to i8
; %var_2_453 = trunc i64 %var_2_452 to i8
; Matched:%var_2_455:  %var_2_455 = and i8 %var_2_454, 1
; %var_2_454 = and i8 %var_2_453, 1
; Matched:\<badref\>:  store i8 %var_2_455, i8* %var_2_35, align 1, !tbaa !1280
; store i8 %var_2_454, i8* %var_2_27, align 1
; Matched:%var_2_456:  %var_2_456 = icmp eq i64 %var_2_442, 0
; %var_2_455 = icmp eq i64 %var_2_441, 0
; Matched:%var_2_457:  %var_2_457 = zext i1 %var_2_456 to i8
; %var_2_456 = zext i1 %var_2_455 to i8
; Matched:\<badref\>:  store i8 %var_2_457, i8* %var_2_38, align 1, !tbaa !1281
; store i8 %var_2_456, i8* %var_2_30, align 1
; Matched:%var_2_458:  %var_2_458 = lshr i64 %var_2_442, 63
; %var_2_457 = lshr i64 %var_2_441, 63
; Matched:%var_2_459:  %var_2_459 = trunc i64 %var_2_458 to i8
; %var_2_458 = trunc i64 %var_2_457 to i8
; Matched:\<badref\>:  store i8 %var_2_459, i8* %var_2_41, align 1, !tbaa !1282
; store i8 %var_2_458, i8* %var_2_33, align 1
; Matched:%var_2_460:  %var_2_460 = lshr i64 %var_2_441, 63
; %var_2_459 = lshr i64 %var_2_440, 63
; Matched:%var_2_461:  %var_2_461 = xor i64 %var_2_458, %var_2_460
; %var_2_460 = xor i64 %var_2_457, %var_2_459
; Matched:%var_2_462:  %var_2_462 = add nuw nsw i64 %var_2_461, %var_2_458
; %var_2_461 = add nuw nsw i64 %var_2_460, %var_2_457
; Matched:%var_2_463:  %var_2_463 = icmp eq i64 %var_2_462, 2
; %var_2_462 = icmp eq i64 %var_2_461, 2
; Matched:%var_2_464:  %var_2_464 = zext i1 %var_2_463 to i8
; %var_2_463 = zext i1 %var_2_462 to i8
; Matched:\<badref\>:  store i8 %var_2_464, i8* %var_2_47, align 1, !tbaa !1283
; store i8 %var_2_463, i8* %var_2_39, align 1
; Matched:%var_2_262:  %var_2_262 = add i64 %var_2_243, 7
; %var_2_464 = add i64 %var_2_439, 7
; Matched:\<badref\>:  store i64 %var_2_465, i64* %PC, align 8
; store i64 %var_2_464, i64* %var_2_3, align 8
; Matched:%var_2_466:  %var_2_466 = add i64 %var_2_441, 88
; %var_2_465 = add i64 %var_2_440, 88
; Matched:%var_2_467:  %var_2_467 = inttoptr i64 %var_2_442 to i64*
; %var_2_466 = inttoptr i64 %var_2_441 to i64*
; Matched:%var_2_468:  %var_2_468 = load i64, i64* %var_2_467, align 8
; %var_2_467 = load i64, i64* %var_2_466, align 8
; Matched:\<badref\>:  store i64 %var_2_468, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_467, i64* %RBP.i, align 8
; Matched:\<badref\>:  store i64 %var_2_466, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_465, i64* %var_2_6, align 8
%var_2_468 = add i64 %var_2_439, 8
store i64 %var_2_468, i64* %var_2_3, align 8
; Matched:%var_2_470:  %var_2_470 = inttoptr i64 %var_2_466 to i64*
; %var_2_469 = inttoptr i64 %var_2_465 to i64*
; Matched:%var_2_471:  %var_2_471 = load i64, i64* %var_2_470, align 8
; %var_2_470 = load i64, i64* %var_2_469, align 8
; Matched:\<badref\>:  store i64 %var_2_471, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_470, i64* %var_2_3, align 8
; Matched:%var_2_472:  %var_2_472 = add i64 %var_2_441, 96
; %var_2_471 = add i64 %var_2_440, 96
; Matched:\<badref\>:  store i64 %var_2_472, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_471, i64* %var_2_6, align 8
ret %struct.Memory* %var_2_430
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
define %struct.Memory* @routine_subq__0x50___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -80
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 80
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
define %struct.Memory* @routine_movl__0x3___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 3, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__0xa__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 10, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__edi__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.ack(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4009f8___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4009f8_type* @G__0x4009f8 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x18__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
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
define %struct.Memory* @routine_movsd_0x198__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x198__rip__type* @G_0x198__rip_ to i64)
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
define %struct.Memory* @routine_cvtsi2sdl_MINUS0x14__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = sitofp i32 %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm0___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
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
define %struct.Memory* @routine_addsd__xmm1___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fadd double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fadd double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm2__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_movq__0x400a07___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400a07_type* @G__0x400a07 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movb__0x2___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 2, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__0x3__MINUS0x14__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = mul nsw i64 %9, 3
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967295
  store i64 %12, i64* %RSI, align 8
  %13 = mul i64 %9, 12884901888
  %14 = ashr exact i64 %13, 32
  %15 = icmp ne i64 %14, %10
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %25, align 1
  %26 = lshr i32 %11, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %16, i8* %29, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = shl i32 %6, 1
  %8 = icmp slt i32 %6, 0
  %9 = icmp slt i32 %7, 0
  %10 = xor i1 %8, %9
  %11 = zext i32 %7 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %.lobit = lshr i32 %6, 31
  %13 = trunc i32 %.lobit to i8
  store i8 %13, i8* %12, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %7, 254
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %25 = lshr i32 %6, 30
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  store i8 %27, i8* %24, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %29 = zext i1 %10 to i8
  store i8 %29, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__0x3__MINUS0x14__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = mul nsw i64 %9, 3
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967295
  store i64 %12, i64* %RDI, align 8
  %13 = mul i64 %9, 12884901888
  %14 = ashr exact i64 %13, 32
  %15 = icmp ne i64 %14, %10
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %25, align 1
  %26 = lshr i32 %11, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %16, i8* %29, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__0x1___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R8D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = shl i32 %5, 1
  %9 = icmp slt i32 %5, 0
  %10 = icmp slt i32 %8, 0
  %11 = xor i1 %9, %10
  %12 = zext i32 %8 to i64
  store i64 %12, i64* %4, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %.lobit = lshr i32 %5, 31
  %14 = trunc i32 %.lobit to i8
  store i8 %14, i8* %13, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %16 = and i32 %8, 254
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  store i8 %20, i8* %15, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %23 = icmp eq i32 %8, 0
  %24 = zext i1 %23 to i8
  store i8 %24, i8* %22, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %26 = lshr i32 %5, 30
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  store i8 %28, i8* %25, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %30 = zext i1 %11 to i8
  store i8 %30, i8* %29, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %R8D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %R9D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.tak(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x400a18___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400a18_type* @G__0x400a18 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x40__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x38__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_movl__eax___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.fib(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x400a2b___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400a2b_type* @G__0x400a2b to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movsd_0xd2__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%G_0xd2__rip__type* @G_0xd2__rip_ to i64), i64 10) to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0xba__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%G_0xba__rip__type* @G_0xba__rip_ to i64), i64 38) to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0xba__rip____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%G_0xba__rip__type* @G_0xba__rip_ to i64), i64 38) to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movq__0x400a37___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400a37_type* @G__0x400a37 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
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
define %struct.Memory* @routine_addq__0x50___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 80
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -81
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
