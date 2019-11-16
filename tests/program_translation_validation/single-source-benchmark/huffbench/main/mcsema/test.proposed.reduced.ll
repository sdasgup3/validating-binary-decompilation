; ModuleID = '/tmp/tmpgr4d4ke_-query.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x602080_type = type <{ [8 x i8] }>
%G__0x4016d7_type = type <{ [4 x i8] }>
%G__0x4016db_type = type <{ [8 x i8] }>
%G__0x4016de_type = type <{ [8 x i8] }>
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
@G_0x602080 = local_unnamed_addr global %G_0x602080_type zeroinitializer
@G__0x4016d7 = global %G__0x4016d7_type zeroinitializer
@G__0x4016db = global %G__0x4016db_type zeroinitializer
@G__0x4016de = global %G__0x4016de_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @fflush(i64)

declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @free(i64)

declare extern_weak x86_64_sysvcc i64 @strcmp(i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_400760.generate_test_data(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4008b0.compdecomp(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @main(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
; Matched:%var_2_31:  %var_2_31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
; %var_2_29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
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
; Matched:%var_2_41:  %var_2_41 = add i64 %var_2_9, -12
; %var_2_39 = add i64 %var_2_7, -12
; Matched:%var_2_42:  %var_2_42 = add i64 %var_2_12, 14
; %var_2_40 = add i64 %var_2_10, 14
; Matched:\<badref\>:  store i64 %var_2_42, i64* %PC, align 8
; store i64 %var_2_40, i64* %var_2_3, align 8
; Matched:%var_2_43:  %var_2_43 = inttoptr i64 %var_2_41 to i32*
; %var_2_41 = inttoptr i64 %var_2_39 to i32*
; Matched:\<badref\>:  store i32 0, i32* %var_2_43, align 4
; store i32 0, i32* %var_2_41, align 4
%var_2_42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
; Matched:  %EDI = bitcast %union.anon* %var_2_5 to i32*
; %EDI.i = bitcast %union.anon* %var_2_42 to i32*
; Matched:%var_2_44:  %var_2_44 = load i64, i64* %RBP, align 8
; %var_2_43 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_45:  %var_2_45 = add i64 %var_2_44, -8
; %var_2_44 = add i64 %var_2_43, -8
; Matched:%var_2_46:  %var_2_46 = load i32, i32* %EDI, align 4
; %var_2_45 = load i32, i32* %EDI.i, align 4
; Matched:%var_2_47:  %var_2_47 = load i64, i64* %PC, align 8
; %var_2_46 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_161:  %var_2_161 = add i64 %var_2_160, 3
; %var_2_47 = add i64 %var_2_46, 3
; Matched:\<badref\>:  store i64 %var_2_48, i64* %PC, align 8
; store i64 %var_2_47, i64* %var_2_3, align 8
; Matched:%var_2_49:  %var_2_49 = inttoptr i64 %var_2_45 to i32*
; %var_2_48 = inttoptr i64 %var_2_44 to i32*
; Matched:\<badref\>:  store i32 %var_2_46, i32* %var_2_49, align 4
; store i32 %var_2_45, i32* %var_2_48, align 4
; Matched:  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
; %RSI.i107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
; Matched:%var_2_50:  %var_2_50 = load i64, i64* %RBP, align 8
; %var_2_49 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_51:  %var_2_51 = add i64 %var_2_50, -16
; %var_2_50 = add i64 %var_2_49, -16
; Matched:%var_2_52:  %var_2_52 = load i64, i64* %RSI, align 8
; %var_2_51 = load i64, i64* %RSI.i107, align 8
; Matched:%var_2_381:  %var_2_381 = load i64, i64* %PC, align 8
; %var_2_52 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_382:  %var_2_382 = add i64 %var_2_381, 4
; %var_2_53 = add i64 %var_2_52, 4
; Matched:\<badref\>:  store i64 %var_2_360, i64* %PC, align 8
; store i64 %var_2_53, i64* %var_2_3, align 8
; Matched:%var_2_55:  %var_2_55 = inttoptr i64 %var_2_51 to i64*
; %var_2_54 = inttoptr i64 %var_2_50 to i64*
; Matched:\<badref\>:  store i64 %var_2_52, i64* %var_2_55, align 8
; store i64 %var_2_51, i64* %var_2_54, align 8
%var_2_55 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_57:  %var_2_57 = add i64 %var_2_56, -21
; %var_2_56 = add i64 %var_2_55, -21
; Matched:%var_2_58:  %var_2_58 = load i64, i64* %PC, align 8
; %var_2_57 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_59:  %var_2_59 = add i64 %var_2_58, 4
; %var_2_58 = add i64 %var_2_57, 4
; Matched:\<badref\>:  store i64 %var_2_394, i64* %PC, align 8
; store i64 %var_2_58, i64* %var_2_3, align 8
; Matched:%var_2_369:  %var_2_369 = inttoptr i64 %var_2_367 to i8*
; %var_2_59 = inttoptr i64 %var_2_56 to i8*
; Matched:\<badref\>:  store i8 0, i8* %var_2_60, align 1
; store i8 0, i8* %var_2_59, align 1
%var_2_60 = load i64, i64* %RBP.i, align 8
%var_2_61 = add i64 %var_2_60, -8
%var_2_62 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_64:  %var_2_64 = add i64 %var_2_63, 4
; %var_2_63 = add i64 %var_2_62, 4
; Matched:\<badref\>:  store i64 %var_2_59, i64* %PC, align 8
; store i64 %var_2_63, i64* %var_2_3, align 8
%var_2_64 = inttoptr i64 %var_2_61 to i32*
%var_2_65 = load i32, i32* %var_2_64, align 4
%var_2_66 = add i32 %var_2_65, -1
%var_2_67 = icmp eq i32 %var_2_65, 0
%var_2_68 = zext i1 %var_2_67 to i8
store i8 %var_2_68, i8* %var_2_14, align 1
; Matched:%var_2_70:  %var_2_70 = and i32 %var_2_67, 255
; %var_2_69 = and i32 %var_2_66, 255
; Matched:%var_2_71:  %var_2_71 = tail call i32 @llvm.ctpop.i32(i32 %var_2_70) #12
; %var_2_70 = tail call i32 @llvm.ctpop.i32(i32 %var_2_69)
; Matched:%var_2_72:  %var_2_72 = trunc i32 %var_2_71 to i8
; %var_2_71 = trunc i32 %var_2_70 to i8
; Matched:%var_2_73:  %var_2_73 = and i8 %var_2_72, 1
; %var_2_72 = and i8 %var_2_71, 1
; Matched:%var_2_74:  %var_2_74 = xor i8 %var_2_73, 1
; %var_2_73 = xor i8 %var_2_72, 1
; Matched:\<badref\>:  store i8 %var_2_74, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_73, i8* %var_2_21, align 1
; Matched:%var_2_75:  %var_2_75 = xor i32 %var_2_67, %var_2_66
; %var_2_74 = xor i32 %var_2_66, %var_2_65
; Matched:%var_2_76:  %var_2_76 = lshr i32 %var_2_75, 4
; %var_2_75 = lshr i32 %var_2_74, 4
; Matched:%var_2_77:  %var_2_77 = trunc i32 %var_2_76 to i8
; %var_2_76 = trunc i32 %var_2_75 to i8
; Matched:%var_2_78:  %var_2_78 = and i8 %var_2_77, 1
; %var_2_77 = and i8 %var_2_76, 1
; Matched:\<badref\>:  store i8 %var_2_78, i8* %var_2_28, align 1, !tbaa !1280
; store i8 %var_2_77, i8* %var_2_26, align 1
%var_2_78 = icmp eq i32 %var_2_66, 0
; Matched:%var_2_80:  %var_2_80 = zext i1 %var_2_79 to i8
; %var_2_79 = zext i1 %var_2_78 to i8
; Matched:\<badref\>:  store i8 %var_2_80, i8* %var_2_31, align 1, !tbaa !1281
; store i8 %var_2_79, i8* %var_2_29, align 1
%var_2_80 = lshr i32 %var_2_66, 31
%var_2_81 = trunc i32 %var_2_80 to i8
; Matched:\<badref\>:  store i8 %var_2_82, i8* %var_2_34, align 1, !tbaa !1282
; store i8 %var_2_81, i8* %var_2_32, align 1
%var_2_82 = lshr i32 %var_2_65, 31
%var_2_83 = xor i32 %var_2_80, %var_2_82
%var_2_84 = add nuw nsw i32 %var_2_83, %var_2_82
%var_2_85 = icmp eq i32 %var_2_84, 2
; Matched:%var_2_87:  %var_2_87 = zext i1 %var_2_86 to i8
; %var_2_86 = zext i1 %var_2_85 to i8
; Matched:\<badref\>:  store i8 %var_2_87, i8* %var_2_40, align 1, !tbaa !1283
; store i8 %var_2_86, i8* %var_2_38, align 1
%var_2_87 = icmp ne i8 %var_2_81, 0
%var_2_88 = xor i1 %var_2_87, %var_2_85
%var_2_89 = or i1 %var_2_78, %var_2_88
%.v = select i1 %var_2_89, i64 91, i64 10
%var_2_90 = add i64 %var_2_62, %.v
; Matched:\<badref\>:  store i64 %var_2_91, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_90, i64* %var_2_3, align 8
br i1 %var_2_89, label %entry.block_.L_401525_crit_edge, label %block_4014d4

entry.block_.L_401525_crit_edge:                  ; preds = %entry
  %.pre13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %.pre14 = getelementptr inbounds %union.anon, %union.anon* %.pre13, i64 0, i32 0
  %.pre15 = bitcast %union.anon* %.pre13 to i32*
%.pre16 = getelementptr inbounds %union.anon, %union.anon* %var_2_42, i64 0, i32 0
  br label %block_.L_401525

block_4014d4:                                     ; preds = %entry
%var_2_91 = add i64 %var_2_60, -20
; Matched:%var_2_191:  %var_2_191 = add i64 %var_2_91, 7
; %var_2_92 = add i64 %var_2_90, 7
; Matched:\<badref\>:  store i64 %var_2_191, i64* %PC, align 8
; store i64 %var_2_92, i64* %var_2_3, align 8
%var_2_93 = inttoptr i64 %var_2_91 to i32*
store i32 1, i32* %var_2_93, align 4
%var_2_94 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
%RAX.i126 = getelementptr inbounds %union.anon, %union.anon* %var_2_94, i64 0, i32 0
%EAX.i123 = bitcast %union.anon* %var_2_94 to i32*
%RDI.i117 = getelementptr inbounds %union.anon, %union.anon* %var_2_42, i64 0, i32 0
  %RCX.i114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
%.pre = load i64, i64* %var_2_3, align 8
  br label %block_.L_4014db

block_.L_4014db:                                  ; preds = %block_.L_40150d, %block_4014d4
%var_2_95 = phi i64 [ %.pre, %block_4014d4 ], [ %var_2_194, %block_.L_40150d ]
%MEMORY.0 = phi %struct.Memory* [ %2, %block_4014d4 ], [ %var_2_146, %block_.L_40150d ]
%var_2_96 = load i64, i64* %RBP.i, align 8
%var_2_97 = add i64 %var_2_96, -20
; Matched:%var_2_113:  %var_2_113 = add i64 %var_2_110, 3
; %var_2_98 = add i64 %var_2_95, 3
; Matched:\<badref\>:  store i64 %var_2_113, i64* %PC, align 8
; store i64 %var_2_98, i64* %var_2_3, align 8
%var_2_99 = inttoptr i64 %var_2_97 to i32*
%var_2_100 = load i32, i32* %var_2_99, align 4
; Matched:%var_2_116:  %var_2_116 = zext i32 %var_2_115 to i64
; %var_2_101 = zext i32 %var_2_100 to i64
; Matched:\<badref\>:  store i64 %var_2_116, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_101, i64* %RAX.i126, align 8
%var_2_102 = add i64 %var_2_96, -8
; Matched:%var_2_118:  %var_2_118 = add i64 %var_2_110, 6
; %var_2_103 = add i64 %var_2_95, 6
; Matched:\<badref\>:  store i64 %var_2_118, i64* %PC, align 8
; store i64 %var_2_103, i64* %var_2_3, align 8
%var_2_104 = inttoptr i64 %var_2_102 to i32*
%var_2_105 = load i32, i32* %var_2_104, align 4
%var_2_106 = sub i32 %var_2_100, %var_2_105
; Matched:%var_2_122:  %var_2_122 = icmp ult i32 %var_2_115, %var_2_120
; %var_2_107 = icmp ult i32 %var_2_100, %var_2_105
; Matched:%var_2_123:  %var_2_123 = zext i1 %var_2_122 to i8
; %var_2_108 = zext i1 %var_2_107 to i8
; Matched:\<badref\>:  store i8 %var_2_123, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_108, i8* %var_2_14, align 1
; Matched:%var_2_124:  %var_2_124 = and i32 %var_2_121, 255
; %var_2_109 = and i32 %var_2_106, 255
; Matched:%var_2_125:  %var_2_125 = tail call i32 @llvm.ctpop.i32(i32 %var_2_124) #12
; %var_2_110 = tail call i32 @llvm.ctpop.i32(i32 %var_2_109)
; Matched:%var_2_126:  %var_2_126 = trunc i32 %var_2_125 to i8
; %var_2_111 = trunc i32 %var_2_110 to i8
; Matched:%var_2_127:  %var_2_127 = and i8 %var_2_126, 1
; %var_2_112 = and i8 %var_2_111, 1
; Matched:%var_2_128:  %var_2_128 = xor i8 %var_2_127, 1
; %var_2_113 = xor i8 %var_2_112, 1
; Matched:\<badref\>:  store i8 %var_2_128, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_113, i8* %var_2_21, align 1
; Matched:%var_2_129:  %var_2_129 = xor i32 %var_2_120, %var_2_115
; %var_2_114 = xor i32 %var_2_105, %var_2_100
; Matched:%var_2_130:  %var_2_130 = xor i32 %var_2_129, %var_2_121
; %var_2_115 = xor i32 %var_2_114, %var_2_106
; Matched:%var_2_131:  %var_2_131 = lshr i32 %var_2_130, 4
; %var_2_116 = lshr i32 %var_2_115, 4
; Matched:%var_2_132:  %var_2_132 = trunc i32 %var_2_131 to i8
; %var_2_117 = trunc i32 %var_2_116 to i8
; Matched:%var_2_133:  %var_2_133 = and i8 %var_2_132, 1
; %var_2_118 = and i8 %var_2_117, 1
; Matched:\<badref\>:  store i8 %var_2_133, i8* %var_2_28, align 1, !tbaa !1280
; store i8 %var_2_118, i8* %var_2_26, align 1
; Matched:%var_2_134:  %var_2_134 = icmp eq i32 %var_2_121, 0
; %var_2_119 = icmp eq i32 %var_2_106, 0
; Matched:%var_2_135:  %var_2_135 = zext i1 %var_2_134 to i8
; %var_2_120 = zext i1 %var_2_119 to i8
; Matched:\<badref\>:  store i8 %var_2_135, i8* %var_2_31, align 1, !tbaa !1281
; store i8 %var_2_120, i8* %var_2_29, align 1
%var_2_121 = lshr i32 %var_2_106, 31
%var_2_122 = trunc i32 %var_2_121 to i8
; Matched:\<badref\>:  store i8 %var_2_137, i8* %var_2_34, align 1, !tbaa !1282
; store i8 %var_2_122, i8* %var_2_32, align 1
%var_2_123 = lshr i32 %var_2_100, 31
%var_2_124 = lshr i32 %var_2_105, 31
%var_2_125 = xor i32 %var_2_124, %var_2_123
%var_2_126 = xor i32 %var_2_121, %var_2_123
%var_2_127 = add nuw nsw i32 %var_2_126, %var_2_125
%var_2_128 = icmp eq i32 %var_2_127, 2
; Matched:%var_2_144:  %var_2_144 = zext i1 %var_2_143 to i8
; %var_2_129 = zext i1 %var_2_128 to i8
; Matched:\<badref\>:  store i8 %var_2_144, i8* %var_2_40, align 1, !tbaa !1283
; store i8 %var_2_129, i8* %var_2_38, align 1
%var_2_130 = icmp ne i8 %var_2_122, 0
%var_2_131 = xor i1 %var_2_130, %var_2_128
%.v17 = select i1 %var_2_131, i64 12, i64 69
%var_2_132 = add i64 %var_2_95, %.v17
; Matched:\<badref\>:  store i64 %var_2_147, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_132, i64* %var_2_3, align 8
br i1 %var_2_131, label %block_4014e7, label %block_.L_401520.loopexit

block_4014e7:                                     ; preds = %block_.L_4014db
; Matched:%var_2_274:  %var_2_274 = add i64 %var_2_111, -16
; %var_2_133 = add i64 %var_2_96, -16
; Matched:%var_2_275:  %var_2_275 = add i64 %var_2_147, 4
; %var_2_134 = add i64 %var_2_132, 4
; Matched:\<badref\>:  store i64 %var_2_275, i64* %PC, align 8
; store i64 %var_2_134, i64* %var_2_3, align 8
; Matched:%var_2_276:  %var_2_276 = inttoptr i64 %var_2_274 to i64*
; %var_2_135 = inttoptr i64 %var_2_133 to i64*
; Matched:%var_2_277:  %var_2_277 = load i64, i64* %var_2_276, align 8
; %var_2_136 = load i64, i64* %var_2_135, align 8
; Matched:\<badref\>:  store i64 %var_2_277, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_136, i64* %RAX.i126, align 8
; Matched:%var_2_278:  %var_2_278 = add i64 %var_2_277, 8
; %var_2_137 = add i64 %var_2_136, 8
; Matched:%var_2_279:  %var_2_279 = add i64 %var_2_147, 8
; %var_2_138 = add i64 %var_2_132, 8
; Matched:\<badref\>:  store i64 %var_2_279, i64* %PC, align 8
; store i64 %var_2_138, i64* %var_2_3, align 8
; Matched:%var_2_280:  %var_2_280 = inttoptr i64 %var_2_278 to i64*
; %var_2_139 = inttoptr i64 %var_2_137 to i64*
; Matched:%var_2_281:  %var_2_281 = load i64, i64* %var_2_280, align 8
; %var_2_140 = load i64, i64* %var_2_139, align 8
; Matched:\<badref\>:  store i64 %var_2_281, i64* %RDI, align 8, !tbaa !1261
; store i64 %var_2_140, i64* %RDI.i117, align 8
  store i64 and (i64 ptrtoint (%G__0x4016d7_type* @G__0x4016d7 to i64), i64 4294967295), i64* %RCX.i114, align 8
; Matched:\<badref\>:  store i64 add (i64 ptrtoint (%seg_401660__rodata_type* @seg_401660__rodata to i64), i64 126), i64* %RSI, align 8, !tbaa !1261
; store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x4016d7_type* @G__0x4016d7 to i64), i64 4294967295) to i32) to i64), i64* %RSI.i107, align 8
; Matched:%var_2_282:  %var_2_282 = add i64 %var_2_147, -3783
; %var_2_141 = add i64 %var_2_132, -3783
; Matched:%var_2_283:  %var_2_283 = add i64 %var_2_147, 20
; %var_2_142 = add i64 %var_2_132, 20
%var_2_143 = load i64, i64* %var_2_6, align 8
%var_2_144 = add i64 %var_2_143, -8
; Matched:%var_2_286:  %var_2_286 = inttoptr i64 %var_2_285 to i64*
; %var_2_145 = inttoptr i64 %var_2_144 to i64*
; Matched:\<badref\>:  store i64 %var_2_283, i64* %var_2_286, align 8
; store i64 %var_2_142, i64* %var_2_145, align 8
; Matched:\<badref\>:  store i64 %var_2_202, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_144, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_282, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_141, i64* %var_2_3, align 8
%var_2_146 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %MEMORY.0)
%var_2_147 = load i32, i32* %EAX.i123, align 4
; Matched:%var_2_289:  %var_2_289 = load i64, i64* %PC, align 8
; %var_2_148 = load i64, i64* %var_2_3, align 8
store i8 0, i8* %var_2_14, align 1
; Matched:%var_2_290:  %var_2_290 = and i32 %var_2_288, 255
; %var_2_149 = and i32 %var_2_147, 255
; Matched:%var_2_291:  %var_2_291 = tail call i32 @llvm.ctpop.i32(i32 %var_2_290) #12
; %var_2_150 = tail call i32 @llvm.ctpop.i32(i32 %var_2_149)
; Matched:%var_2_292:  %var_2_292 = trunc i32 %var_2_291 to i8
; %var_2_151 = trunc i32 %var_2_150 to i8
; Matched:%var_2_293:  %var_2_293 = and i8 %var_2_292, 1
; %var_2_152 = and i8 %var_2_151, 1
; Matched:%var_2_294:  %var_2_294 = xor i8 %var_2_293, 1
; %var_2_153 = xor i8 %var_2_152, 1
; Matched:\<badref\>:  store i8 %var_2_294, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_153, i8* %var_2_21, align 1
store i8 0, i8* %var_2_26, align 1
%var_2_154 = icmp eq i32 %var_2_147, 0
; Matched:%var_2_296:  %var_2_296 = zext i1 %var_2_295 to i8
; %var_2_155 = zext i1 %var_2_154 to i8
; Matched:\<badref\>:  store i8 %var_2_296, i8* %var_2_31, align 1, !tbaa !1281
; store i8 %var_2_155, i8* %var_2_29, align 1
; Matched:%var_2_297:  %var_2_297 = lshr i32 %var_2_288, 31
; %var_2_156 = lshr i32 %var_2_147, 31
; Matched:%var_2_298:  %var_2_298 = trunc i32 %var_2_297 to i8
; %var_2_157 = trunc i32 %var_2_156 to i8
; Matched:\<badref\>:  store i8 %var_2_298, i8* %var_2_34, align 1, !tbaa !1282
; store i8 %var_2_157, i8* %var_2_32, align 1
store i8 0, i8* %var_2_38, align 1
; Matched:  %.v16 = select i1 %var_2_295, i64 9, i64 18
; %.v20 = select i1 %var_2_154, i64 9, i64 18
; Matched:%var_2_299:  %var_2_299 = add i64 %var_2_289, %.v16
; %var_2_158 = add i64 %var_2_148, %.v20
; Matched:\<badref\>:  store i64 %var_2_299, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_158, i64* %var_2_3, align 8
%var_2_159 = load i64, i64* %RBP.i, align 8
br i1 %var_2_154, label %block_401504, label %block_.L_40150d

block_401504:                                     ; preds = %block_4014e7
; Matched:%var_2_367:  %var_2_367 = add i64 %var_2_300, -21
; %var_2_160 = add i64 %var_2_159, -21
; Matched:%var_2_368:  %var_2_368 = add i64 %var_2_299, 4
; %var_2_161 = add i64 %var_2_158, 4
; Matched:\<badref\>:  store i64 %var_2_368, i64* %PC, align 8
; store i64 %var_2_161, i64* %var_2_3, align 8
; Matched:%var_2_60:  %var_2_60 = inttoptr i64 %var_2_57 to i8*
; %var_2_162 = inttoptr i64 %var_2_160 to i8*
; Matched:\<badref\>:  store i8 1, i8* %var_2_369, align 1
; store i8 1, i8* %var_2_162, align 1
%var_2_163 = load i64, i64* %var_2_3, align 8
%var_2_164 = add i64 %var_2_163, 24
; Matched:\<badref\>:  store i64 %var_2_371, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_164, i64* %var_2_3, align 8
  br label %block_.L_401520

block_.L_40150d:                                  ; preds = %block_4014e7
%var_2_165 = add i64 %var_2_159, -20
; Matched:%var_2_214:  %var_2_214 = add i64 %var_2_299, 8
; %var_2_166 = add i64 %var_2_158, 8
; Matched:\<badref\>:  store i64 %var_2_214, i64* %PC, align 8
; store i64 %var_2_166, i64* %var_2_3, align 8
%var_2_167 = inttoptr i64 %var_2_165 to i32*
%var_2_168 = load i32, i32* %var_2_167, align 4
%var_2_169 = add i32 %var_2_168, 1
%var_2_170 = zext i32 %var_2_169 to i64
store i64 %var_2_170, i64* %RAX.i126, align 8
; Matched:%var_2_166:  %var_2_166 = icmp eq i32 %var_2_163, -1
; %var_2_171 = icmp eq i32 %var_2_168, -1
; Matched:%var_2_167:  %var_2_167 = icmp eq i32 %var_2_164, 0
; %var_2_172 = icmp eq i32 %var_2_169, 0
; Matched:%var_2_168:  %var_2_168 = or i1 %var_2_166, %var_2_167
; %var_2_173 = or i1 %var_2_171, %var_2_172
; Matched:%var_2_222:  %var_2_222 = zext i1 %var_2_221 to i8
; %var_2_174 = zext i1 %var_2_173 to i8
; Matched:\<badref\>:  store i8 %var_2_222, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_174, i8* %var_2_14, align 1
; Matched:%var_2_223:  %var_2_223 = and i32 %var_2_217, 255
; %var_2_175 = and i32 %var_2_169, 255
; Matched:%var_2_224:  %var_2_224 = tail call i32 @llvm.ctpop.i32(i32 %var_2_223) #12
; %var_2_176 = tail call i32 @llvm.ctpop.i32(i32 %var_2_175)
; Matched:%var_2_172:  %var_2_172 = trunc i32 %var_2_171 to i8
; %var_2_177 = trunc i32 %var_2_176 to i8
; Matched:%var_2_173:  %var_2_173 = and i8 %var_2_172, 1
; %var_2_178 = and i8 %var_2_177, 1
; Matched:%var_2_174:  %var_2_174 = xor i8 %var_2_173, 1
; %var_2_179 = xor i8 %var_2_178, 1
; Matched:\<badref\>:  store i8 %var_2_174, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_179, i8* %var_2_21, align 1
; Matched:%var_2_228:  %var_2_228 = xor i32 %var_2_217, %var_2_216
; %var_2_180 = xor i32 %var_2_169, %var_2_168
; Matched:%var_2_229:  %var_2_229 = lshr i32 %var_2_228, 4
; %var_2_181 = lshr i32 %var_2_180, 4
; Matched:%var_2_230:  %var_2_230 = trunc i32 %var_2_229 to i8
; %var_2_182 = trunc i32 %var_2_181 to i8
; Matched:%var_2_231:  %var_2_231 = and i8 %var_2_230, 1
; %var_2_183 = and i8 %var_2_182, 1
; Matched:\<badref\>:  store i8 %var_2_178, i8* %var_2_28, align 1, !tbaa !1280
; store i8 %var_2_183, i8* %var_2_26, align 1
; Matched:%var_2_179:  %var_2_179 = zext i1 %var_2_167 to i8
; %var_2_184 = zext i1 %var_2_172 to i8
; Matched:\<badref\>:  store i8 %var_2_179, i8* %var_2_31, align 1, !tbaa !1281
; store i8 %var_2_184, i8* %var_2_29, align 1
; Matched:%var_2_180:  %var_2_180 = lshr i32 %var_2_164, 31
; %var_2_185 = lshr i32 %var_2_169, 31
; Matched:%var_2_234:  %var_2_234 = trunc i32 %var_2_233 to i8
; %var_2_186 = trunc i32 %var_2_185 to i8
; Matched:\<badref\>:  store i8 %var_2_234, i8* %var_2_34, align 1, !tbaa !1282
; store i8 %var_2_186, i8* %var_2_32, align 1
; Matched:%var_2_235:  %var_2_235 = lshr i32 %var_2_216, 31
; %var_2_187 = lshr i32 %var_2_168, 31
; Matched:%var_2_236:  %var_2_236 = xor i32 %var_2_233, %var_2_235
; %var_2_188 = xor i32 %var_2_185, %var_2_187
; Matched:%var_2_184:  %var_2_184 = add nuw nsw i32 %var_2_183, %var_2_180
; %var_2_189 = add nuw nsw i32 %var_2_188, %var_2_185
; Matched:%var_2_185:  %var_2_185 = icmp eq i32 %var_2_184, 2
; %var_2_190 = icmp eq i32 %var_2_189, 2
; Matched:%var_2_186:  %var_2_186 = zext i1 %var_2_185 to i8
; %var_2_191 = zext i1 %var_2_190 to i8
; Matched:\<badref\>:  store i8 %var_2_186, i8* %var_2_40, align 1, !tbaa !1283
; store i8 %var_2_191, i8* %var_2_38, align 1
; Matched:%var_2_240:  %var_2_240 = add i64 %var_2_299, 14
; %var_2_192 = add i64 %var_2_158, 14
; Matched:\<badref\>:  store i64 %var_2_240, i64* %PC, align 8
; store i64 %var_2_192, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_217, i32* %var_2_215, align 4
; store i32 %var_2_169, i32* %var_2_167, align 4
%var_2_193 = load i64, i64* %var_2_3, align 8
%var_2_194 = add i64 %var_2_193, -64
; Matched:\<badref\>:  store i64 %var_2_242, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_194, i64* %var_2_3, align 8
  br label %block_.L_4014db

block_.L_401520.loopexit:                         ; preds = %block_.L_4014db
  br label %block_.L_401520

block_.L_401520:                                  ; preds = %block_.L_401520.loopexit, %block_401504
%var_2_195 = phi i64 [ %var_2_164, %block_401504 ], [ %var_2_132, %block_.L_401520.loopexit ]
%MEMORY.1 = phi %struct.Memory* [ %var_2_146, %block_401504 ], [ %MEMORY.0, %block_.L_401520.loopexit ]
%var_2_196 = add i64 %var_2_195, 5
; Matched:\<badref\>:  store i64 %var_2_408, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_196, i64* %var_2_3, align 8
  br label %block_.L_401525

block_.L_401525:                                  ; preds = %entry.block_.L_401525_crit_edge, %block_.L_401520
  %RDI.i86.pre-phi = phi i64* [ %.pre16, %entry.block_.L_401525_crit_edge ], [ %RDI.i117, %block_.L_401520 ]
  %EAX.i85.pre-phi = phi i32* [ %.pre15, %entry.block_.L_401525_crit_edge ], [ %EAX.i123, %block_.L_401520 ]
  %RAX.i88.pre-phi = phi i64* [ %.pre14, %entry.block_.L_401525_crit_edge ], [ %RAX.i126, %block_.L_401520 ]
%.pre-phi = phi %union.anon* [ %.pre13, %entry.block_.L_401525_crit_edge ], [ %var_2_94, %block_.L_401520 ]
%var_2_197 = phi i64 [ %var_2_90, %entry.block_.L_401525_crit_edge ], [ %var_2_196, %block_.L_401520 ]
  %MEMORY.2 = phi %struct.Memory* [ %2, %entry.block_.L_401525_crit_edge ], [ %MEMORY.1, %block_.L_401520 ]
  store i64 10000000, i64* %RAX.i88.pre-phi, align 8
  store i64 10000000, i64* %RDI.i86.pre-phi, align 8
%var_2_198 = add i64 %var_2_197, -3525
; Matched:%var_2_351:  %var_2_351 = add i64 %var_2_349, 12
; %var_2_199 = add i64 %var_2_197, 12
%var_2_200 = load i64, i64* %var_2_6, align 8
%var_2_201 = add i64 %var_2_200, -8
; Matched:%var_2_354:  %var_2_354 = inttoptr i64 %var_2_353 to i64*
; %var_2_202 = inttoptr i64 %var_2_201 to i64*
; Matched:\<badref\>:  store i64 %var_2_351, i64* %var_2_354, align 8
; store i64 %var_2_199, i64* %var_2_202, align 8
; Matched:\<badref\>:  store i64 %var_2_101, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_201, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_350, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_198, i64* %var_2_3, align 8
%call2_40152c = tail call %struct.Memory* @sub_400760.generate_test_data(%struct.State* nonnull %0, i64 %var_2_198, %struct.Memory* %MEMORY.2)
%var_2_203 = load i64, i64* %RBP.i, align 8
%var_2_204 = add i64 %var_2_203, -32
%var_2_205 = load i64, i64* %RAX.i88.pre-phi, align 8
; Matched:%var_2_53:  %var_2_53 = load i64, i64* %PC, align 8
; %var_2_206 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_54:  %var_2_54 = add i64 %var_2_53, 4
; %var_2_207 = add i64 %var_2_206, 4
; Matched:\<badref\>:  store i64 %var_2_64, i64* %PC, align 8
; store i64 %var_2_207, i64* %var_2_3, align 8
%var_2_208 = inttoptr i64 %var_2_204 to i64*
store i64 %var_2_205, i64* %var_2_208, align 8
%var_2_209 = load i64, i64* %RBP.i, align 8
%var_2_210 = add i64 %var_2_209, -20
; Matched:%var_2_364:  %var_2_364 = load i64, i64* %PC, align 8
; %var_2_211 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_341:  %var_2_341 = add i64 %var_2_317, 7
; %var_2_212 = add i64 %var_2_211, 7
; Matched:\<badref\>:  store i64 %var_2_365, i64* %PC, align 8
; store i64 %var_2_212, i64* %var_2_3, align 8
%var_2_213 = inttoptr i64 %var_2_210 to i32*
store i32 0, i32* %var_2_213, align 4
; Matched:  %.pre11 = load i64, i64* %PC, align 8
; %.pre11 = load i64, i64* %var_2_3, align 8
  br label %block_.L_40153c

block_.L_40153c:                                  ; preds = %block_401546, %block_.L_401525
; Matched:%var_2_243:  %var_2_243 = phi i64 [ %.pre11, %block_401525 ], [ %var_2_189, %block_401546 ]
; %var_2_214 = phi i64 [ %var_2_285, %block_401546 ], [ %.pre11, %block_.L_401525 ]
%var_2_215 = load i64, i64* %RBP.i, align 8
%var_2_216 = add i64 %var_2_215, -20
; Matched:%var_2_246:  %var_2_246 = add i64 %var_2_243, 4
; %var_2_217 = add i64 %var_2_214, 4
; Matched:\<badref\>:  store i64 %var_2_246, i64* %PC, align 8
; store i64 %var_2_217, i64* %var_2_3, align 8
%var_2_218 = inttoptr i64 %var_2_216 to i32*
%var_2_219 = load i32, i32* %var_2_218, align 4
%var_2_220 = add i32 %var_2_219, -30
; Matched:%var_2_250:  %var_2_250 = icmp ult i32 %var_2_248, 30
; %var_2_221 = icmp ult i32 %var_2_219, 30
; Matched:%var_2_251:  %var_2_251 = zext i1 %var_2_250 to i8
; %var_2_222 = zext i1 %var_2_221 to i8
; Matched:\<badref\>:  store i8 %var_2_251, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_222, i8* %var_2_14, align 1
; Matched:%var_2_252:  %var_2_252 = and i32 %var_2_249, 255
; %var_2_223 = and i32 %var_2_220, 255
; Matched:%var_2_253:  %var_2_253 = tail call i32 @llvm.ctpop.i32(i32 %var_2_252) #12
; %var_2_224 = tail call i32 @llvm.ctpop.i32(i32 %var_2_223)
; Matched:%var_2_254:  %var_2_254 = trunc i32 %var_2_253 to i8
; %var_2_225 = trunc i32 %var_2_224 to i8
; Matched:%var_2_255:  %var_2_255 = and i8 %var_2_254, 1
; %var_2_226 = and i8 %var_2_225, 1
; Matched:%var_2_256:  %var_2_256 = xor i8 %var_2_255, 1
; %var_2_227 = xor i8 %var_2_226, 1
; Matched:\<badref\>:  store i8 %var_2_256, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_227, i8* %var_2_21, align 1
; Matched:%var_2_257:  %var_2_257 = xor i32 %var_2_248, 16
; %var_2_228 = xor i32 %var_2_219, 16
; Matched:%var_2_258:  %var_2_258 = xor i32 %var_2_257, %var_2_249
; %var_2_229 = xor i32 %var_2_228, %var_2_220
; Matched:%var_2_259:  %var_2_259 = lshr i32 %var_2_258, 4
; %var_2_230 = lshr i32 %var_2_229, 4
; Matched:%var_2_260:  %var_2_260 = trunc i32 %var_2_259 to i8
; %var_2_231 = trunc i32 %var_2_230 to i8
; Matched:%var_2_261:  %var_2_261 = and i8 %var_2_260, 1
; %var_2_232 = and i8 %var_2_231, 1
; Matched:\<badref\>:  store i8 %var_2_261, i8* %var_2_28, align 1, !tbaa !1280
; store i8 %var_2_232, i8* %var_2_26, align 1
; Matched:%var_2_262:  %var_2_262 = icmp eq i32 %var_2_249, 0
; %var_2_233 = icmp eq i32 %var_2_220, 0
; Matched:%var_2_263:  %var_2_263 = zext i1 %var_2_262 to i8
; %var_2_234 = zext i1 %var_2_233 to i8
; Matched:\<badref\>:  store i8 %var_2_263, i8* %var_2_31, align 1, !tbaa !1281
; store i8 %var_2_234, i8* %var_2_29, align 1
%var_2_235 = lshr i32 %var_2_220, 31
%var_2_236 = trunc i32 %var_2_235 to i8
; Matched:\<badref\>:  store i8 %var_2_265, i8* %var_2_34, align 1, !tbaa !1282
; store i8 %var_2_236, i8* %var_2_32, align 1
%var_2_237 = lshr i32 %var_2_219, 31
%var_2_238 = xor i32 %var_2_235, %var_2_237
%var_2_239 = add nuw nsw i32 %var_2_238, %var_2_237
%var_2_240 = icmp eq i32 %var_2_239, 2
; Matched:%var_2_270:  %var_2_270 = zext i1 %var_2_269 to i8
; %var_2_241 = zext i1 %var_2_240 to i8
; Matched:\<badref\>:  store i8 %var_2_270, i8* %var_2_40, align 1, !tbaa !1283
; store i8 %var_2_241, i8* %var_2_38, align 1
%var_2_242 = icmp ne i8 %var_2_236, 0
%var_2_243 = xor i1 %var_2_242, %var_2_240
; Matched:  %.v14 = select i1 %var_2_272, i64 10, i64 40
; %.v18 = select i1 %var_2_243, i64 10, i64 40
; Matched:%var_2_273:  %var_2_273 = add i64 %var_2_243, %.v14
; %var_2_244 = add i64 %var_2_214, %.v18
; Matched:\<badref\>:  store i64 %var_2_273, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_244, i64* %var_2_3, align 8
br i1 %var_2_243, label %block_401546, label %block_.L_401564

block_401546:                                     ; preds = %block_.L_40153c
  store i64 10000000, i64* %RAX.i88.pre-phi, align 8
; Matched:\<badref\>:  store i64 add (i64 ptrtoint (%seg_401660__rodata_type* @seg_401660__rodata to i64), i64 123), i64* %RSI, align 8, !tbaa !1261
; store i64 10000000, i64* %RSI.i107, align 8
%var_2_245 = add i64 %var_2_215, -32
; Matched:%var_2_149:  %var_2_149 = add i64 %var_2_273, 11
; %var_2_246 = add i64 %var_2_244, 11
; Matched:\<badref\>:  store i64 %var_2_149, i64* %PC, align 8
; store i64 %var_2_246, i64* %var_2_3, align 8
%var_2_247 = inttoptr i64 %var_2_245 to i64*
%var_2_248 = load i64, i64* %var_2_247, align 8
store i64 %var_2_248, i64* %RDI.i86.pre-phi, align 8
; Matched:%var_2_152:  %var_2_152 = add i64 %var_2_273, -3222
; %var_2_249 = add i64 %var_2_244, -3222
; Matched:%var_2_153:  %var_2_153 = add i64 %var_2_273, 16
; %var_2_250 = add i64 %var_2_244, 16
%var_2_251 = load i64, i64* %var_2_6, align 8
%var_2_252 = add i64 %var_2_251, -8
; Matched:%var_2_156:  %var_2_156 = inttoptr i64 %var_2_155 to i64*
; %var_2_253 = inttoptr i64 %var_2_252 to i64*
; Matched:\<badref\>:  store i64 %var_2_153, i64* %var_2_156, align 8
; store i64 %var_2_250, i64* %var_2_253, align 8
; Matched:\<badref\>:  store i64 %var_2_285, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_252, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_152, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_249, i64* %var_2_3, align 8
; Matched:%var_2_157:  %var_2_157 = tail call %struct.Memory* @sub_4008b0_compdecomp_renamed_(%struct.State* nonnull %0, i64 %var_2_152, %struct.Memory* %var_2_355)
; %call2_401551 = tail call %struct.Memory* @sub_4008b0.compdecomp(%struct.State* nonnull %0, i64 %var_2_249, %struct.Memory* %call2_40152c)
%var_2_254 = load i64, i64* %RBP.i, align 8
%var_2_255 = add i64 %var_2_254, -20
; Matched:%var_2_208:  %var_2_208 = load i64, i64* %PC, align 8
; %var_2_256 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_108:  %var_2_108 = add i64 %var_2_107, 3
; %var_2_257 = add i64 %var_2_256, 3
; Matched:\<badref\>:  store i64 %var_2_209, i64* %PC, align 8
; store i64 %var_2_257, i64* %var_2_3, align 8
%var_2_258 = inttoptr i64 %var_2_255 to i32*
%var_2_259 = load i32, i32* %var_2_258, align 4
%var_2_260 = add i32 %var_2_259, 1
%var_2_261 = zext i32 %var_2_260 to i64
store i64 %var_2_261, i64* %RAX.i88.pre-phi, align 8
; Matched:%var_2_219:  %var_2_219 = icmp eq i32 %var_2_216, -1
; %var_2_262 = icmp eq i32 %var_2_259, -1
; Matched:%var_2_220:  %var_2_220 = icmp eq i32 %var_2_217, 0
; %var_2_263 = icmp eq i32 %var_2_260, 0
; Matched:%var_2_221:  %var_2_221 = or i1 %var_2_219, %var_2_220
; %var_2_264 = or i1 %var_2_262, %var_2_263
; Matched:%var_2_169:  %var_2_169 = zext i1 %var_2_168 to i8
; %var_2_265 = zext i1 %var_2_264 to i8
; Matched:\<badref\>:  store i8 %var_2_169, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_265, i8* %var_2_14, align 1
; Matched:%var_2_170:  %var_2_170 = and i32 %var_2_164, 255
; %var_2_266 = and i32 %var_2_260, 255
; Matched:%var_2_171:  %var_2_171 = tail call i32 @llvm.ctpop.i32(i32 %var_2_170) #12
; %var_2_267 = tail call i32 @llvm.ctpop.i32(i32 %var_2_266)
; Matched:%var_2_225:  %var_2_225 = trunc i32 %var_2_224 to i8
; %var_2_268 = trunc i32 %var_2_267 to i8
; Matched:%var_2_226:  %var_2_226 = and i8 %var_2_225, 1
; %var_2_269 = and i8 %var_2_268, 1
; Matched:%var_2_227:  %var_2_227 = xor i8 %var_2_226, 1
; %var_2_270 = xor i8 %var_2_269, 1
; Matched:\<badref\>:  store i8 %var_2_227, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_270, i8* %var_2_21, align 1
; Matched:%var_2_175:  %var_2_175 = xor i32 %var_2_164, %var_2_163
; %var_2_271 = xor i32 %var_2_260, %var_2_259
; Matched:%var_2_176:  %var_2_176 = lshr i32 %var_2_175, 4
; %var_2_272 = lshr i32 %var_2_271, 4
; Matched:%var_2_177:  %var_2_177 = trunc i32 %var_2_176 to i8
; %var_2_273 = trunc i32 %var_2_272 to i8
; Matched:%var_2_178:  %var_2_178 = and i8 %var_2_177, 1
; %var_2_274 = and i8 %var_2_273, 1
; Matched:\<badref\>:  store i8 %var_2_231, i8* %var_2_28, align 1, !tbaa !1280
; store i8 %var_2_274, i8* %var_2_26, align 1
; Matched:%var_2_232:  %var_2_232 = zext i1 %var_2_220 to i8
; %var_2_275 = zext i1 %var_2_263 to i8
; Matched:\<badref\>:  store i8 %var_2_232, i8* %var_2_31, align 1, !tbaa !1281
; store i8 %var_2_275, i8* %var_2_29, align 1
; Matched:%var_2_233:  %var_2_233 = lshr i32 %var_2_217, 31
; %var_2_276 = lshr i32 %var_2_260, 31
; Matched:%var_2_181:  %var_2_181 = trunc i32 %var_2_180 to i8
; %var_2_277 = trunc i32 %var_2_276 to i8
; Matched:\<badref\>:  store i8 %var_2_181, i8* %var_2_34, align 1, !tbaa !1282
; store i8 %var_2_277, i8* %var_2_32, align 1
; Matched:%var_2_182:  %var_2_182 = lshr i32 %var_2_163, 31
; %var_2_278 = lshr i32 %var_2_259, 31
; Matched:%var_2_183:  %var_2_183 = xor i32 %var_2_180, %var_2_182
; %var_2_279 = xor i32 %var_2_276, %var_2_278
; Matched:%var_2_237:  %var_2_237 = add nuw nsw i32 %var_2_236, %var_2_233
; %var_2_280 = add nuw nsw i32 %var_2_279, %var_2_276
; Matched:%var_2_238:  %var_2_238 = icmp eq i32 %var_2_237, 2
; %var_2_281 = icmp eq i32 %var_2_280, 2
; Matched:%var_2_239:  %var_2_239 = zext i1 %var_2_238 to i8
; %var_2_282 = zext i1 %var_2_281 to i8
; Matched:\<badref\>:  store i8 %var_2_239, i8* %var_2_40, align 1, !tbaa !1283
; store i8 %var_2_282, i8* %var_2_38, align 1
; Matched:%var_2_187:  %var_2_187 = add i64 %var_2_160, 9
; %var_2_283 = add i64 %var_2_256, 9
; Matched:\<badref\>:  store i64 %var_2_187, i64* %PC, align 8
; store i64 %var_2_283, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_164, i32* %var_2_162, align 4
; store i32 %var_2_260, i32* %var_2_258, align 4
; Matched:%var_2_188:  %var_2_188 = load i64, i64* %PC, align 8
; %var_2_284 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_189:  %var_2_189 = add i64 %var_2_188, -35
; %var_2_285 = add i64 %var_2_284, -35
; Matched:\<badref\>:  store i64 %var_2_189, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_285, i64* %var_2_3, align 8
  br label %block_.L_40153c

block_.L_401564:                                  ; preds = %block_.L_40153c
; Matched:%var_2_6:  %var_2_6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
; %var_2_286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
; Matched:%var_2_372:  %var_2_372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
; %var_2_287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
%var_2_288 = bitcast %union.VectorReg* %var_2_286 to <4 x i32>*
store <4 x i32> zeroinitializer, <4 x i32>* %var_2_288, align 1
; Matched:%var_2_374:  %var_2_374 = add i64 %var_2_244, -40
; %var_2_289 = add i64 %var_2_215, -40
; Matched:%var_2_375:  %var_2_375 = add i64 %var_2_273, 8
; %var_2_290 = add i64 %var_2_244, 8
; Matched:\<badref\>:  store i64 %var_2_375, i64* %PC, align 8
; store i64 %var_2_290, i64* %var_2_3, align 8
; Matched:%var_2_376:  %var_2_376 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_6, i64 0, i32 0, i32 0, i32 0, i64 0
; %var_2_291 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_286, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:%var_2_377:  %var_2_377 = load i64, i64* %var_2_376, align 1
; %var_2_292 = load i64, i64* %var_2_291, align 1
; Matched:%var_2_378:  %var_2_378 = inttoptr i64 %var_2_374 to i64*
; %var_2_293 = inttoptr i64 %var_2_289 to i64*
; Matched:\<badref\>:  store i64 %var_2_377, i64* %var_2_378, align 8
; store i64 %var_2_292, i64* %var_2_293, align 8
%var_2_294 = load i64, i64* %RBP.i, align 8
%var_2_295 = add i64 %var_2_294, -32
; Matched:%var_2_359:  %var_2_359 = load i64, i64* %PC, align 8
; %var_2_296 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_360:  %var_2_360 = add i64 %var_2_359, 4
; %var_2_297 = add i64 %var_2_296, 4
; Matched:\<badref\>:  store i64 %var_2_54, i64* %PC, align 8
; store i64 %var_2_297, i64* %var_2_3, align 8
%var_2_298 = inttoptr i64 %var_2_295 to i64*
%var_2_299 = load i64, i64* %var_2_298, align 8
store i64 %var_2_299, i64* %RDI.i86.pre-phi, align 8
; Matched:%var_2_385:  %var_2_385 = add i64 %var_2_381, -3948
; %var_2_300 = add i64 %var_2_296, -3948
; Matched:%var_2_386:  %var_2_386 = add i64 %var_2_381, 9
; %var_2_301 = add i64 %var_2_296, 9
%var_2_302 = load i64, i64* %var_2_6, align 8
%var_2_303 = add i64 %var_2_302, -8
; Matched:%var_2_389:  %var_2_389 = inttoptr i64 %var_2_388 to i64*
; %var_2_304 = inttoptr i64 %var_2_303 to i64*
; Matched:\<badref\>:  store i64 %var_2_386, i64* %var_2_389, align 8
; store i64 %var_2_301, i64* %var_2_304, align 8
; Matched:\<badref\>:  store i64 %var_2_155, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_303, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_385, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_300, i64* %var_2_3, align 8
%var_2_305 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %call2_40152c)
%var_2_306 = load i64, i64* %RBP.i, align 8
%var_2_307 = add i64 %var_2_306, -21
; Matched:%var_2_393:  %var_2_393 = load i64, i64* %PC, align 8
; %var_2_308 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_394:  %var_2_394 = add i64 %var_2_393, 4
; %var_2_309 = add i64 %var_2_308, 4
; Matched:\<badref\>:  store i64 %var_2_382, i64* %PC, align 8
; store i64 %var_2_309, i64* %var_2_3, align 8
%var_2_310 = inttoptr i64 %var_2_307 to i8*
%var_2_311 = load i8, i8* %var_2_310, align 1
%var_2_312 = and i8 %var_2_311, 1
store i8 0, i8* %var_2_14, align 1
; Matched:%var_2_398:  %var_2_398 = zext i8 %var_2_397 to i32
; %var_2_313 = zext i8 %var_2_312 to i32
; Matched:%var_2_399:  %var_2_399 = tail call i32 @llvm.ctpop.i32(i32 %var_2_398) #12
; %var_2_314 = tail call i32 @llvm.ctpop.i32(i32 %var_2_313)
; Matched:%var_2_400:  %var_2_400 = trunc i32 %var_2_399 to i8
; %var_2_315 = trunc i32 %var_2_314 to i8
; Matched:%var_2_401:  %var_2_401 = xor i8 %var_2_400, 1
; %var_2_316 = xor i8 %var_2_315, 1
; Matched:\<badref\>:  store i8 %var_2_401, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_316, i8* %var_2_21, align 1
; Matched:%var_2_402:  %var_2_402 = xor i8 %var_2_397, 1
; %var_2_317 = xor i8 %var_2_312, 1
; Matched:\<badref\>:  store i8 %var_2_402, i8* %var_2_31, align 1, !tbaa !1281
; store i8 %var_2_317, i8* %var_2_29, align 1
store i8 0, i8* %var_2_32, align 1
store i8 0, i8* %var_2_38, align 1
store i8 0, i8* %var_2_26, align 1
; Matched:%var_2_403:  %var_2_403 = icmp ne i8 %var_2_402, 0
; %var_2_318 = icmp ne i8 %var_2_317, 0
; Matched:  %.v15 = select i1 %var_2_403, i64 48, i64 10
; %.v19 = select i1 %var_2_318, i64 48, i64 10
; Matched:%var_2_404:  %var_2_404 = add i64 %var_2_393, %.v15
; %var_2_319 = add i64 %var_2_308, %.v19
%cmpBr_401579 = icmp eq i8 %var_2_312, 0
; Matched:%var_2_406:  %var_2_406 = add i64 %var_2_404, 10
; %var_2_320 = add i64 %var_2_319, 10
; Matched:\<badref\>:  store i64 %var_2_406, i64* %PC, align 8
; store i64 %var_2_320, i64* %var_2_3, align 8
  br i1 %cmpBr_401579, label %block_.L_4015a5, label %block_40157f

block_40157f:                                     ; preds = %block_.L_401564
; Matched:\<badref\>:  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401660__rodata_type* @seg_401660__rodata to i64), i64 119), i64 4294967295) to i32) to i64), i64* %RSI, align 8, !tbaa !1261
; store i64 ptrtoint (%G__0x4016db_type* @G__0x4016db to i64), i64* %RSI.i107, align 8
%var_2_321 = load i64, i64* bitcast (%G_0x602080_type* @G_0x602080 to i64*), align 8
store i64 %var_2_321, i64* %RDI.i86.pre-phi, align 8
; Matched:%var_2_194:  %var_2_194 = add i64 %var_2_391, -40
; %var_2_322 = add i64 %var_2_306, -40
; Matched:%var_2_195:  %var_2_195 = add i64 %var_2_404, 23
; %var_2_323 = add i64 %var_2_319, 23
; Matched:\<badref\>:  store i64 %var_2_195, i64* %PC, align 8
; store i64 %var_2_323, i64* %var_2_3, align 8
; Matched:%var_2_196:  %var_2_196 = inttoptr i64 %var_2_194 to i64*
; %var_2_324 = inttoptr i64 %var_2_322 to i64*
; Matched:%var_2_96:  %var_2_96 = load i64, i64* %var_2_95, align 8
; %var_2_325 = load i64, i64* %var_2_324, align 8
; Matched:\<badref\>:  store i64 %var_2_197, i64* %var_2_376, align 1, !tbaa !1284
; store i64 %var_2_325, i64* %var_2_291, align 1
; Matched:%var_2_97:  %var_2_97 = bitcast i64* %var_2_372 to double*
; %var_2_326 = bitcast i64* %var_2_287 to double*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_198, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_326, align 1
  %AL.i35 = bitcast %union.anon* %.pre-phi to i8*
  store i8 1, i8* %AL.i35, align 1
; Matched:%var_2_199:  %var_2_199 = add i64 %var_2_404, -3919
; %var_2_327 = add i64 %var_2_319, -3919
; Matched:%var_2_200:  %var_2_200 = add i64 %var_2_404, 30
; %var_2_328 = add i64 %var_2_319, 30
%var_2_329 = load i64, i64* %var_2_6, align 8
%var_2_330 = add i64 %var_2_329, -8
; Matched:%var_2_102:  %var_2_102 = inttoptr i64 %var_2_101 to i64*
; %var_2_331 = inttoptr i64 %var_2_330 to i64*
; Matched:\<badref\>:  store i64 %var_2_99, i64* %var_2_102, align 8
; store i64 %var_2_328, i64* %var_2_331, align 8
; Matched:\<badref\>:  store i64 %var_2_353, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_330, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_199, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_327, i64* %var_2_3, align 8
%var_2_332 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %var_2_305)
%var_2_333 = load i64, i64* %RBP.i, align 8
%var_2_334 = add i64 %var_2_333, -44
%var_2_335 = load i32, i32* %EAX.i85.pre-phi, align 4
; Matched:%var_2_107:  %var_2_107 = load i64, i64* %PC, align 8
; %var_2_336 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_48:  %var_2_48 = add i64 %var_2_47, 3
; %var_2_337 = add i64 %var_2_336, 3
; Matched:\<badref\>:  store i64 %var_2_108, i64* %PC, align 8
; store i64 %var_2_337, i64* %var_2_3, align 8
%var_2_338 = inttoptr i64 %var_2_334 to i32*
store i32 %var_2_335, i32* %var_2_338, align 4
; Matched:%var_2_211:  %var_2_211 = load i64, i64* %PC, align 8
; %var_2_339 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_212:  %var_2_212 = add i64 %var_2_211, 38
; %var_2_340 = add i64 %var_2_339, 38
; Matched:\<badref\>:  store i64 %var_2_212, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_340, i64* %var_2_3, align 8
  br label %block_.L_4015c6

block_.L_4015a5:                                  ; preds = %block_.L_401564
; Matched:\<badref\>:  store i64 10000000, i64* %RSI, align 8, !tbaa !1261
; store i64 ptrtoint (%G__0x4016de_type* @G__0x4016de to i64), i64* %RSI.i107, align 8
%var_2_341 = load i64, i64* bitcast (%G_0x602080_type* @G_0x602080 to i64*), align 8
store i64 %var_2_341, i64* %RDI.i86.pre-phi, align 8
; Matched:%var_2_93:  %var_2_93 = add i64 %var_2_391, -40
; %var_2_342 = add i64 %var_2_306, -40
; Matched:%var_2_94:  %var_2_94 = add i64 %var_2_404, 23
; %var_2_343 = add i64 %var_2_319, 23
; Matched:\<badref\>:  store i64 %var_2_94, i64* %PC, align 8
; store i64 %var_2_343, i64* %var_2_3, align 8
; Matched:%var_2_95:  %var_2_95 = inttoptr i64 %var_2_93 to i64*
; %var_2_344 = inttoptr i64 %var_2_342 to i64*
; Matched:%var_2_197:  %var_2_197 = load i64, i64* %var_2_196, align 8
; %var_2_345 = load i64, i64* %var_2_344, align 8
; Matched:\<badref\>:  store i64 %var_2_96, i64* %var_2_376, align 1, !tbaa !1284
; store i64 %var_2_345, i64* %var_2_291, align 1
; Matched:%var_2_198:  %var_2_198 = bitcast i64* %var_2_372 to double*
; %var_2_346 = bitcast i64* %var_2_287 to double*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_97, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_346, align 1
  %AL.i = bitcast %union.anon* %.pre-phi to i8*
  store i8 1, i8* %AL.i, align 1
; Matched:%var_2_98:  %var_2_98 = add i64 %var_2_404, -3957
; %var_2_347 = add i64 %var_2_319, -3957
; Matched:%var_2_99:  %var_2_99 = add i64 %var_2_404, 30
; %var_2_348 = add i64 %var_2_319, 30
%var_2_349 = load i64, i64* %var_2_6, align 8
%var_2_350 = add i64 %var_2_349, -8
; Matched:%var_2_203:  %var_2_203 = inttoptr i64 %var_2_202 to i64*
; %var_2_351 = inttoptr i64 %var_2_350 to i64*
; Matched:\<badref\>:  store i64 %var_2_200, i64* %var_2_203, align 8
; store i64 %var_2_348, i64* %var_2_351, align 8
; Matched:\<badref\>:  store i64 %var_2_388, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_350, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_98, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_347, i64* %var_2_3, align 8
%var_2_352 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %var_2_305)
%var_2_353 = load i64, i64* %RBP.i, align 8
%var_2_354 = add i64 %var_2_353, -48
%var_2_355 = load i32, i32* %EAX.i85.pre-phi, align 4
; Matched:%var_2_160:  %var_2_160 = load i64, i64* %PC, align 8
; %var_2_356 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_209:  %var_2_209 = add i64 %var_2_208, 3
; %var_2_357 = add i64 %var_2_356, 3
; Matched:\<badref\>:  store i64 %var_2_161, i64* %PC, align 8
; store i64 %var_2_357, i64* %var_2_3, align 8
%var_2_358 = inttoptr i64 %var_2_354 to i32*
store i32 %var_2_355, i32* %var_2_358, align 4
; Matched:  %.pre12 = load i64, i64* %PC, align 8
; %.pre12 = load i64, i64* %var_2_3, align 8
  br label %block_.L_4015c6

block_.L_4015c6:                                  ; preds = %block_.L_4015a5, %block_40157f
; Matched:%var_2_301:  %var_2_301 = phi i64 [ %.pre12, %block_4015a5 ], [ %var_2_212, %block_40157f ]
; %var_2_359 = phi i64 [ %.pre12, %block_.L_4015a5 ], [ %var_2_340, %block_40157f ]
%MEMORY.4 = phi %struct.Memory* [ %var_2_352, %block_.L_4015a5 ], [ %var_2_332, %block_40157f ]
%var_2_360 = load i64, i64* bitcast (%G_0x602080_type* @G_0x602080 to i64*), align 8
store i64 %var_2_360, i64* %RDI.i86.pre-phi, align 8
; Matched:%var_2_303:  %var_2_303 = add i64 %var_2_301, -3958
; %var_2_361 = add i64 %var_2_359, -3958
; Matched:%var_2_304:  %var_2_304 = add i64 %var_2_301, 13
; %var_2_362 = add i64 %var_2_359, 13
%var_2_363 = load i64, i64* %var_2_6, align 8
%var_2_364 = add i64 %var_2_363, -8
; Matched:%var_2_307:  %var_2_307 = inttoptr i64 %var_2_306 to i64*
; %var_2_365 = inttoptr i64 %var_2_364 to i64*
; Matched:\<badref\>:  store i64 %var_2_304, i64* %var_2_307, align 8
; store i64 %var_2_362, i64* %var_2_365, align 8
; Matched:\<badref\>:  store i64 %var_2_306, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_364, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_303, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_361, i64* %var_2_3, align 8
%var_2_366 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @fflush to i64), %struct.Memory* %MEMORY.4)
%var_2_367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
%ECX.i9 = bitcast %union.anon* %var_2_367 to i32*
%RCX.i = getelementptr inbounds %union.anon, %union.anon* %var_2_367, i64 0, i32 0
; Matched:%var_2_309:  %var_2_309 = load i64, i64* %PC, align 8
; %var_2_368 = load i64, i64* %var_2_3, align 8
  store i64 0, i64* %RCX.i, align 8
%var_2_369 = load i64, i64* %RBP.i, align 8
%var_2_370 = add i64 %var_2_369, -52
%var_2_371 = load i32, i32* %EAX.i85.pre-phi, align 4
; Matched:%var_2_313:  %var_2_313 = add i64 %var_2_309, 5
; %var_2_372 = add i64 %var_2_368, 5
; Matched:\<badref\>:  store i64 %var_2_313, i64* %PC, align 8
; store i64 %var_2_372, i64* %var_2_3, align 8
%var_2_373 = inttoptr i64 %var_2_370 to i32*
store i32 %var_2_371, i32* %var_2_373, align 4
%var_2_374 = load i32, i32* %ECX.i9, align 4
%var_2_375 = zext i32 %var_2_374 to i64
; Matched:%var_2_317:  %var_2_317 = load i64, i64* %PC, align 8
; %var_2_376 = load i64, i64* %var_2_3, align 8
store i64 %var_2_375, i64* %RAX.i88.pre-phi, align 8
; Matched:%var_2_318:  %var_2_318 = load i64, i64* %RSP, align 8
; %var_2_377 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_319:  %var_2_319 = add i64 %var_2_318, 64
; %var_2_378 = add i64 %var_2_377, 64
; Matched:\<badref\>:  store i64 %var_2_319, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_378, i64* %var_2_6, align 8
; Matched:%var_2_320:  %var_2_320 = icmp ugt i64 %var_2_318, -65
; %var_2_379 = icmp ugt i64 %var_2_377, -65
; Matched:%var_2_321:  %var_2_321 = zext i1 %var_2_320 to i8
; %var_2_380 = zext i1 %var_2_379 to i8
; Matched:\<badref\>:  store i8 %var_2_321, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_380, i8* %var_2_14, align 1
; Matched:%var_2_322:  %var_2_322 = trunc i64 %var_2_319 to i32
; %var_2_381 = trunc i64 %var_2_378 to i32
; Matched:%var_2_323:  %var_2_323 = and i32 %var_2_322, 255
; %var_2_382 = and i32 %var_2_381, 255
; Matched:%var_2_324:  %var_2_324 = tail call i32 @llvm.ctpop.i32(i32 %var_2_323) #12
; %var_2_383 = tail call i32 @llvm.ctpop.i32(i32 %var_2_382)
; Matched:%var_2_325:  %var_2_325 = trunc i32 %var_2_324 to i8
; %var_2_384 = trunc i32 %var_2_383 to i8
; Matched:%var_2_326:  %var_2_326 = and i8 %var_2_325, 1
; %var_2_385 = and i8 %var_2_384, 1
; Matched:%var_2_327:  %var_2_327 = xor i8 %var_2_326, 1
; %var_2_386 = xor i8 %var_2_385, 1
; Matched:\<badref\>:  store i8 %var_2_327, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_386, i8* %var_2_21, align 1
; Matched:%var_2_328:  %var_2_328 = xor i64 %var_2_319, %var_2_318
; %var_2_387 = xor i64 %var_2_378, %var_2_377
; Matched:%var_2_329:  %var_2_329 = lshr i64 %var_2_328, 4
; %var_2_388 = lshr i64 %var_2_387, 4
; Matched:%var_2_330:  %var_2_330 = trunc i64 %var_2_329 to i8
; %var_2_389 = trunc i64 %var_2_388 to i8
; Matched:%var_2_331:  %var_2_331 = and i8 %var_2_330, 1
; %var_2_390 = and i8 %var_2_389, 1
; Matched:\<badref\>:  store i8 %var_2_331, i8* %var_2_28, align 1, !tbaa !1280
; store i8 %var_2_390, i8* %var_2_26, align 1
; Matched:%var_2_332:  %var_2_332 = icmp eq i64 %var_2_319, 0
; %var_2_391 = icmp eq i64 %var_2_378, 0
; Matched:%var_2_333:  %var_2_333 = zext i1 %var_2_332 to i8
; %var_2_392 = zext i1 %var_2_391 to i8
; Matched:\<badref\>:  store i8 %var_2_333, i8* %var_2_31, align 1, !tbaa !1281
; store i8 %var_2_392, i8* %var_2_29, align 1
; Matched:%var_2_334:  %var_2_334 = lshr i64 %var_2_319, 63
; %var_2_393 = lshr i64 %var_2_378, 63
; Matched:%var_2_335:  %var_2_335 = trunc i64 %var_2_334 to i8
; %var_2_394 = trunc i64 %var_2_393 to i8
; Matched:\<badref\>:  store i8 %var_2_335, i8* %var_2_34, align 1, !tbaa !1282
; store i8 %var_2_394, i8* %var_2_32, align 1
; Matched:%var_2_336:  %var_2_336 = lshr i64 %var_2_318, 63
; %var_2_395 = lshr i64 %var_2_377, 63
; Matched:%var_2_337:  %var_2_337 = xor i64 %var_2_334, %var_2_336
; %var_2_396 = xor i64 %var_2_393, %var_2_395
; Matched:%var_2_338:  %var_2_338 = add nuw nsw i64 %var_2_337, %var_2_334
; %var_2_397 = add nuw nsw i64 %var_2_396, %var_2_393
; Matched:%var_2_339:  %var_2_339 = icmp eq i64 %var_2_338, 2
; %var_2_398 = icmp eq i64 %var_2_397, 2
; Matched:%var_2_340:  %var_2_340 = zext i1 %var_2_339 to i8
; %var_2_399 = zext i1 %var_2_398 to i8
; Matched:\<badref\>:  store i8 %var_2_340, i8* %var_2_40, align 1, !tbaa !1283
; store i8 %var_2_399, i8* %var_2_38, align 1
; Matched:%var_2_365:  %var_2_365 = add i64 %var_2_364, 7
; %var_2_400 = add i64 %var_2_376, 7
; Matched:\<badref\>:  store i64 %var_2_341, i64* %PC, align 8
; store i64 %var_2_400, i64* %var_2_3, align 8
; Matched:%var_2_342:  %var_2_342 = add i64 %var_2_318, 72
; %var_2_401 = add i64 %var_2_377, 72
; Matched:%var_2_343:  %var_2_343 = inttoptr i64 %var_2_319 to i64*
; %var_2_402 = inttoptr i64 %var_2_378 to i64*
; Matched:%var_2_344:  %var_2_344 = load i64, i64* %var_2_343, align 8
; %var_2_403 = load i64, i64* %var_2_402, align 8
; Matched:\<badref\>:  store i64 %var_2_344, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_403, i64* %RBP.i, align 8
; Matched:\<badref\>:  store i64 %var_2_342, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_401, i64* %var_2_6, align 8
; Matched:%var_2_345:  %var_2_345 = add i64 %var_2_317, 8
; %var_2_404 = add i64 %var_2_376, 8
; Matched:\<badref\>:  store i64 %var_2_345, i64* %PC, align 8
; store i64 %var_2_404, i64* %var_2_3, align 8
; Matched:%var_2_346:  %var_2_346 = inttoptr i64 %var_2_342 to i64*
; %var_2_405 = inttoptr i64 %var_2_401 to i64*
; Matched:%var_2_347:  %var_2_347 = load i64, i64* %var_2_346, align 8
; %var_2_406 = load i64, i64* %var_2_405, align 8
; Matched:\<badref\>:  store i64 %var_2_347, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_406, i64* %var_2_3, align 8
; Matched:%var_2_348:  %var_2_348 = add i64 %var_2_318, 80
; %var_2_407 = add i64 %var_2_377, 80
; Matched:\<badref\>:  store i64 %var_2_348, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_407, i64* %var_2_6, align 8
ret %struct.Memory* %var_2_366
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
define %struct.Memory* @routine_movb__0x0__MINUS0x15__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -21
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  store i8 0, i8* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -1
  %10 = icmp eq i32 %8, 0
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
define %struct.Memory* @routine_jle_.L_401525(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -8
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %4, %10
  %12 = icmp ult i32 %4, %10
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %11, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %10, %4
  %22 = xor i32 %21, %11
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %11, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %11, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %4, 31
  %34 = lshr i32 %10, 31
  %35 = xor i32 %34, %33
  %36 = xor i32 %30, %33
  %37 = add nuw nsw i32 %36, %35
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_401520(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x8__rax____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4016d7___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x4016d7_type* @G__0x4016d7 to i64), i64 4294967295), i64* %RCX, align 8
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
define %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_jne_.L_40150d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__0x1__MINUS0x15__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -21
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  store i8 1, i8* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401520(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401512(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_4014db(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401525(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x989680___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 10000000, i64* %RAX, align 8
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
define %struct.Memory* @routine_callq_.generate_test_data(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_cmpl__0x1e__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -30
  %10 = icmp ult i32 %8, 30
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
  %19 = xor i32 %8, 16
  %20 = xor i32 %19, %9
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %9, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %9, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %8, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_401564(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.compdecomp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40153c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_callq_.free_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_testb__0x1__MINUS0x15__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -21
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = and i8 %8, 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %10, align 1
  %11 = zext i8 %9 to i32
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = xor i8 %9, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4015a5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4016db___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4016db_type* @G__0x4016db to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x602080___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602080_type* @G_0x602080 to i64*), align 8
  store i64 %5, i64* %RDI, align 8
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
define %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4015c6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4016de___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4016de_type* @G__0x4016de to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.fflush_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
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
