; ModuleID = '/tmp/tmpr_2070qk-query.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x16b__rip__type = type <{ [8 x i8] }>
%G_0x233__rip__type = type <{ [8 x i8] }>
%G_0x277__rip__type = type <{ [4 x i8] }>
%G_0x27b__rip__type = type <{ [4 x i8] }>
%G_0x27f__rip__type = type <{ [4 x i8] }>
%G_0xf4__rip__type = type <{ [8 x i8] }>
%G__0x400828_type = type <{ [8 x i8] }>
%G__0x400838_type = type <{ [8 x i8] }>
%G__0x400865_type = type <{ [8 x i8] }>
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
@G_0x16b__rip_ = global %G_0x16b__rip__type zeroinitializer
@G_0x233__rip_ = global %G_0x233__rip__type zeroinitializer
@G_0x277__rip_ = global %G_0x277__rip__type zeroinitializer
@G_0x27b__rip_ = global %G_0x27b__rip__type zeroinitializer
@G_0x27f__rip_ = global %G_0x27f__rip__type zeroinitializer
@G_0xf4__rip_ = global %G_0xf4__rip__type zeroinitializer
@G__0x400828 = global %G__0x400828_type zeroinitializer
@G__0x400838 = global %G__0x400838_type zeroinitializer
@G__0x400865 = global %G__0x400865_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nounwind readnone
declare float @llvm.trunc.f32(float) #0

declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_400520.myadd(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @main(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
entry:
%var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
; Matched:%var_2_10:  %var_2_10 = load i64, i64* %RBP, align 8
; %var_2_4 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_11:  %var_2_11 = add i64 %1, 1
; %var_2_5 = add i64 %1, 1
; Matched:\<badref\>:  store i64 %var_2_11, i64* %PC, align 8
; store i64 %var_2_5, i64* %var_2_3, align 8
; Matched:  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
; %var_2_6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
; Matched:%var_2_12:  %var_2_12 = load i64, i64* %RSP, align 8, !tbaa !1261
; %var_2_7 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_13:  %var_2_13 = add i64 %var_2_12, -8
; %var_2_8 = add i64 %var_2_7, -8
; Matched:%var_2_14:  %var_2_14 = inttoptr i64 %var_2_13 to i64*
; %var_2_9 = inttoptr i64 %var_2_8 to i64*
; Matched:\<badref\>:  store i64 %var_2_10, i64* %var_2_14, align 8
; store i64 %var_2_4, i64* %var_2_9, align 8
; Matched:%var_2_15:  %var_2_15 = load i64, i64* %PC, align 8
; %var_2_10 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_13, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_8, i64* %RBP.i, align 8
; Matched:%var_2_16:  %var_2_16 = add i64 %var_2_12, -136
; %var_2_11 = add i64 %var_2_7, -136
; Matched:\<badref\>:  store i64 %var_2_16, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_11, i64* %var_2_6, align 8
; Matched:%var_2_17:  %var_2_17 = icmp ult i64 %var_2_13, 128
; %var_2_12 = icmp ult i64 %var_2_8, 128
; Matched:%var_2_18:  %var_2_18 = zext i1 %var_2_17 to i8
; %var_2_13 = zext i1 %var_2_12 to i8
%var_2_14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
; Matched:\<badref\>:  store i8 %var_2_18, i8* %var_2_19, align 1, !tbaa !1265
; store i8 %var_2_13, i8* %var_2_14, align 1
; Matched:%var_2_20:  %var_2_20 = trunc i64 %var_2_16 to i32
; %var_2_15 = trunc i64 %var_2_11 to i32
; Matched:%var_2_21:  %var_2_21 = and i32 %var_2_20, 255
; %var_2_16 = and i32 %var_2_15, 255
; Matched:%var_2_22:  %var_2_22 = tail call i32 @llvm.ctpop.i32(i32 %var_2_21) #12
; %var_2_17 = tail call i32 @llvm.ctpop.i32(i32 %var_2_16)
; Matched:%var_2_23:  %var_2_23 = trunc i32 %var_2_22 to i8
; %var_2_18 = trunc i32 %var_2_17 to i8
; Matched:%var_2_24:  %var_2_24 = and i8 %var_2_23, 1
; %var_2_19 = and i8 %var_2_18, 1
; Matched:%var_2_25:  %var_2_25 = xor i8 %var_2_24, 1
; %var_2_20 = xor i8 %var_2_19, 1
%var_2_21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
; Matched:\<badref\>:  store i8 %var_2_25, i8* %var_2_26, align 1, !tbaa !1279
; store i8 %var_2_20, i8* %var_2_21, align 1
; Matched:%var_2_27:  %var_2_27 = xor i64 %var_2_13, %var_2_16
; %var_2_22 = xor i64 %var_2_8, %var_2_11
; Matched:%var_2_28:  %var_2_28 = lshr i64 %var_2_27, 4
; %var_2_23 = lshr i64 %var_2_22, 4
; Matched:%var_2_29:  %var_2_29 = trunc i64 %var_2_28 to i8
; %var_2_24 = trunc i64 %var_2_23 to i8
; Matched:%var_2_30:  %var_2_30 = and i8 %var_2_29, 1
; %var_2_25 = and i8 %var_2_24, 1
%var_2_26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
; Matched:\<badref\>:  store i8 %var_2_30, i8* %var_2_31, align 1, !tbaa !1280
; store i8 %var_2_25, i8* %var_2_26, align 1
; Matched:%var_2_32:  %var_2_32 = icmp eq i64 %var_2_16, 0
; %var_2_27 = icmp eq i64 %var_2_11, 0
; Matched:%var_2_33:  %var_2_33 = zext i1 %var_2_32 to i8
; %var_2_28 = zext i1 %var_2_27 to i8
%var_2_29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
; Matched:\<badref\>:  store i8 %var_2_33, i8* %var_2_34, align 1, !tbaa !1281
; store i8 %var_2_28, i8* %var_2_29, align 1
; Matched:%var_2_35:  %var_2_35 = lshr i64 %var_2_16, 63
; %var_2_30 = lshr i64 %var_2_11, 63
; Matched:%var_2_36:  %var_2_36 = trunc i64 %var_2_35 to i8
; %var_2_31 = trunc i64 %var_2_30 to i8
%var_2_32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
; Matched:\<badref\>:  store i8 %var_2_36, i8* %var_2_37, align 1, !tbaa !1282
; store i8 %var_2_31, i8* %var_2_32, align 1
; Matched:%var_2_38:  %var_2_38 = lshr i64 %var_2_13, 63
; %var_2_33 = lshr i64 %var_2_8, 63
; Matched:%var_2_39:  %var_2_39 = xor i64 %var_2_35, %var_2_38
; %var_2_34 = xor i64 %var_2_30, %var_2_33
; Matched:%var_2_40:  %var_2_40 = add nuw nsw i64 %var_2_39, %var_2_38
; %var_2_35 = add nuw nsw i64 %var_2_34, %var_2_33
; Matched:%var_2_41:  %var_2_41 = icmp eq i64 %var_2_40, 2
; %var_2_36 = icmp eq i64 %var_2_35, 2
; Matched:%var_2_42:  %var_2_42 = zext i1 %var_2_41 to i8
; %var_2_37 = zext i1 %var_2_36 to i8
%var_2_38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; Matched:\<badref\>:  store i8 %var_2_42, i8* %var_2_43, align 1, !tbaa !1283
; store i8 %var_2_37, i8* %var_2_38, align 1
%var_2_39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
%RAX.i113 = getelementptr inbounds %union.anon, %union.anon* %var_2_39, i64 0, i32 0
  store i64 ptrtoint (%G__0x400828_type* @G__0x400828 to i64), i64* %RAX.i113, align 8
; Matched:%var_2_44:  %var_2_44 = add i64 %var_2_12, -12
; %var_2_40 = add i64 %var_2_7, -12
; Matched:%var_2_45:  %var_2_45 = add i64 %var_2_15, 27
; %var_2_41 = add i64 %var_2_10, 27
; Matched:\<badref\>:  store i64 %var_2_618, i64* %PC, align 8
; store i64 %var_2_41, i64* %var_2_3, align 8
; Matched:%var_2_46:  %var_2_46 = inttoptr i64 %var_2_44 to i32*
; %var_2_42 = inttoptr i64 %var_2_40 to i32*
; Matched:\<badref\>:  store i32 0, i32* %var_2_46, align 4
; store i32 0, i32* %var_2_42, align 4
%var_2_43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
; Matched:  %EDI = bitcast %union.anon* %var_2_5 to i32*
; %EDI.i = bitcast %union.anon* %var_2_43 to i32*
; Matched:%var_2_47:  %var_2_47 = load i64, i64* %RBP, align 8
; %var_2_44 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_48:  %var_2_48 = add i64 %var_2_47, -8
; %var_2_45 = add i64 %var_2_44, -8
; Matched:%var_2_49:  %var_2_49 = load i32, i32* %EDI, align 4
; %var_2_46 = load i32, i32* %EDI.i, align 4
; Matched:%var_2_160:  %var_2_160 = load i64, i64* %PC, align 8
; %var_2_47 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_51:  %var_2_51 = add i64 %var_2_50, 3
; %var_2_48 = add i64 %var_2_47, 3
; Matched:\<badref\>:  store i64 %var_2_161, i64* %PC, align 8
; store i64 %var_2_48, i64* %var_2_3, align 8
; Matched:%var_2_52:  %var_2_52 = inttoptr i64 %var_2_48 to i32*
; %var_2_49 = inttoptr i64 %var_2_45 to i32*
; Matched:\<badref\>:  store i32 %var_2_49, i32* %var_2_52, align 4
; store i32 %var_2_46, i32* %var_2_49, align 4
; Matched:  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
; %RSI.i288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
; Matched:%var_2_53:  %var_2_53 = load i64, i64* %RBP, align 8
; %var_2_50 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_54:  %var_2_54 = add i64 %var_2_53, -16
; %var_2_51 = add i64 %var_2_50, -16
; Matched:%var_2_55:  %var_2_55 = load i64, i64* %RSI, align 8
; %var_2_52 = load i64, i64* %RSI.i288, align 8
%var_2_53 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_57:  %var_2_57 = add i64 %var_2_56, 4
; %var_2_54 = add i64 %var_2_53, 4
; Matched:\<badref\>:  store i64 %var_2_212, i64* %PC, align 8
; store i64 %var_2_54, i64* %var_2_3, align 8
; Matched:%var_2_58:  %var_2_58 = inttoptr i64 %var_2_54 to i64*
; %var_2_55 = inttoptr i64 %var_2_51 to i64*
; Matched:\<badref\>:  store i64 %var_2_55, i64* %var_2_58, align 8
; store i64 %var_2_52, i64* %var_2_55, align 8
%RDI.i286 = getelementptr inbounds %union.anon, %union.anon* %var_2_43, i64 0, i32 0
; Matched:%var_2_59:  %var_2_59 = load i64, i64* %RAX, align 8
; %var_2_56 = load i64, i64* %RAX.i113, align 8
; Matched:%var_2_60:  %var_2_60 = load i64, i64* %PC, align 8
; %var_2_57 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_59, i64* %RDI, align 8, !tbaa !1261
; store i64 %var_2_56, i64* %RDI.i286, align 8
; Matched:  %AL = bitcast %union.anon* %var_2_3 to i8*
; %AL.i283 = bitcast %union.anon* %var_2_39 to i8*
; Matched:\<badref\>:  store i8 0, i8* %AL, align 1, !tbaa !1284
; store i8 0, i8* %AL.i283, align 1
; Matched:%var_2_61:  %var_2_61 = add i64 %var_2_60, -339
; %var_2_58 = add i64 %var_2_57, -339
; Matched:%var_2_62:  %var_2_62 = add i64 %var_2_60, 10
; %var_2_59 = add i64 %var_2_57, 10
; Matched:%var_2_693:  %var_2_693 = load i64, i64* %RSP, align 8, !tbaa !1261
; %var_2_60 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_64:  %var_2_64 = add i64 %var_2_63, -8
; %var_2_61 = add i64 %var_2_60, -8
; Matched:%var_2_65:  %var_2_65 = inttoptr i64 %var_2_64 to i64*
; %var_2_62 = inttoptr i64 %var_2_61 to i64*
; Matched:\<badref\>:  store i64 %var_2_62, i64* %var_2_65, align 8
; store i64 %var_2_59, i64* %var_2_62, align 8
; Matched:\<badref\>:  store i64 %var_2_64, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_61, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_61, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_58, i64* %var_2_3, align 8
%var_2_63 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %2)
%var_2_64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
%var_2_65 = bitcast [32 x %union.VectorReg]* %var_2_64 to i8*
%var_2_66 = load i64, i64* %var_2_3, align 8
%var_2_67 = add i64 %var_2_66, ptrtoint (%G_0x27f__rip__type* @G_0x27f__rip_ to i64)
%var_2_68 = add i64 %var_2_66, 8
store i64 %var_2_68, i64* %var_2_3, align 8
%var_2_69 = inttoptr i64 %var_2_67 to i32*
%var_2_70 = load i32, i32* %var_2_69, align 4
; Matched:%var_2_70:  %var_2_70 = bitcast [32 x %union.VectorReg]* %var_2_6 to float*
; %var_2_71 = bitcast [32 x %union.VectorReg]* %var_2_64 to float*
%var_2_72 = bitcast [32 x %union.VectorReg]* %var_2_64 to i32*
store i32 %var_2_70, i32* %var_2_72, align 1
%var_2_73 = getelementptr inbounds i8, i8* %var_2_65, i64 4
%var_2_74 = bitcast i8* %var_2_73 to float*
store float 0.000000e+00, float* %var_2_74, align 1
%var_2_75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
%var_2_76 = bitcast i64* %var_2_75 to float*
store float 0.000000e+00, float* %var_2_76, align 1
%var_2_77 = getelementptr inbounds i8, i8* %var_2_65, i64 12
%var_2_78 = bitcast i8* %var_2_77 to float*
store float 0.000000e+00, float* %var_2_78, align 1
%var_2_79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
%var_2_80 = bitcast %union.VectorReg* %var_2_79 to i8*
%var_2_81 = add i64 %var_2_66, add (i64 ptrtoint (%G_0x27b__rip__type* @G_0x27b__rip_ to i64), i64 8)
%var_2_82 = add i64 %var_2_66, 16
store i64 %var_2_82, i64* %var_2_3, align 8
%var_2_83 = inttoptr i64 %var_2_81 to i32*
%var_2_84 = load i32, i32* %var_2_83, align 4
; Matched:%var_2_80:  %var_2_80 = bitcast %union.VectorReg* %var_2_7 to float*
; %var_2_85 = bitcast %union.VectorReg* %var_2_79 to float*
%var_2_86 = bitcast %union.VectorReg* %var_2_79 to i32*
store i32 %var_2_84, i32* %var_2_86, align 1
%var_2_87 = getelementptr inbounds i8, i8* %var_2_80, i64 4
%var_2_88 = bitcast i8* %var_2_87 to float*
store float 0.000000e+00, float* %var_2_88, align 1
%var_2_89 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
%var_2_90 = bitcast i64* %var_2_89 to float*
store float 0.000000e+00, float* %var_2_90, align 1
%var_2_91 = getelementptr inbounds i8, i8* %var_2_80, i64 12
%var_2_92 = bitcast i8* %var_2_91 to float*
store float 0.000000e+00, float* %var_2_92, align 1
%var_2_93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
%var_2_94 = bitcast %union.VectorReg* %var_2_93 to i8*
%var_2_95 = add i64 %var_2_66, add (i64 ptrtoint (%G_0x277__rip__type* @G_0x277__rip_ to i64), i64 16)
%var_2_96 = add i64 %var_2_66, 24
store i64 %var_2_96, i64* %var_2_3, align 8
%var_2_97 = inttoptr i64 %var_2_95 to i32*
%var_2_98 = load i32, i32* %var_2_97, align 4
; Matched:%var_2_90:  %var_2_90 = bitcast %union.VectorReg* %var_2_8 to float*
; %var_2_99 = bitcast %union.VectorReg* %var_2_93 to float*
%var_2_100 = bitcast %union.VectorReg* %var_2_93 to i32*
store i32 %var_2_98, i32* %var_2_100, align 1
%var_2_101 = getelementptr inbounds i8, i8* %var_2_94, i64 4
%var_2_102 = bitcast i8* %var_2_101 to float*
store float 0.000000e+00, float* %var_2_102, align 1
%var_2_103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
%var_2_104 = bitcast i64* %var_2_103 to float*
store float 0.000000e+00, float* %var_2_104, align 1
%var_2_105 = getelementptr inbounds i8, i8* %var_2_94, i64 12
%var_2_106 = bitcast i8* %var_2_105 to float*
store float 0.000000e+00, float* %var_2_106, align 1
; Matched:%var_2_9:  %var_2_9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
; %var_2_107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
%var_2_108 = bitcast %union.VectorReg* %var_2_107 to <4 x i32>*
store <4 x i32> zeroinitializer, <4 x i32>* %var_2_108, align 1
; Matched:%var_2_106:  %var_2_106 = load i64, i64* %RBP, align 8
; %var_2_109 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_107:  %var_2_107 = add i64 %var_2_106, -20
; %var_2_110 = add i64 %var_2_109, -20
; Matched:%var_2_688:  %var_2_688 = add i64 %var_2_656, 32
; %var_2_111 = add i64 %var_2_66, 32
; Matched:\<badref\>:  store i64 %var_2_688, i64* %PC, align 8
; store i64 %var_2_111, i64* %var_2_3, align 8
%var_2_112 = bitcast %union.VectorReg* %var_2_107 to <2 x float>*
%var_2_113 = load <2 x float>, <2 x float>* %var_2_112, align 1
%var_2_114 = extractelement <2 x float> %var_2_113, i32 0
; Matched:%var_2_112:  %var_2_112 = inttoptr i64 %var_2_107 to float*
; %var_2_115 = inttoptr i64 %var_2_110 to float*
; Matched:\<badref\>:  store float %var_2_111, float* %var_2_112, align 4
; store float %var_2_114, float* %var_2_115, align 4
%var_2_116 = load i64, i64* %RBP.i, align 8
%var_2_117 = add i64 %var_2_116, -64
%var_2_118 = load i64, i64* %var_2_3, align 8
%var_2_119 = add i64 %var_2_118, 8
store i64 %var_2_119, i64* %var_2_3, align 8
%var_2_120 = inttoptr i64 %var_2_117 to i64*
store i64 1, i64* %var_2_120, align 8
%var_2_121 = load i64, i64* %RBP.i, align 8
%var_2_122 = add i64 %var_2_121, -72
%var_2_123 = load i64, i64* %var_2_3, align 8
%var_2_124 = add i64 %var_2_123, 8
store i64 %var_2_124, i64* %var_2_3, align 8
%var_2_125 = inttoptr i64 %var_2_122 to i64*
store i64 1907, i64* %var_2_125, align 8
; Matched:%var_2_123:  %var_2_123 = load i64, i64* %RBP, align 8
; %var_2_126 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_124:  %var_2_124 = add i64 %var_2_123, -24
; %var_2_127 = add i64 %var_2_126, -24
%var_2_128 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_350:  %var_2_350 = add i64 %var_2_349, 5
; %var_2_129 = add i64 %var_2_128, 5
; Matched:\<badref\>:  store i64 %var_2_431, i64* %PC, align 8
; store i64 %var_2_129, i64* %var_2_3, align 8
%var_2_130 = bitcast %union.VectorReg* %var_2_93 to <2 x float>*
%var_2_131 = load <2 x float>, <2 x float>* %var_2_130, align 1
%var_2_132 = extractelement <2 x float> %var_2_131, i32 0
; Matched:%var_2_130:  %var_2_130 = inttoptr i64 %var_2_124 to float*
; %var_2_133 = inttoptr i64 %var_2_127 to float*
; Matched:\<badref\>:  store float %var_2_129, float* %var_2_130, align 4
; store float %var_2_132, float* %var_2_133, align 4
; Matched:%var_2_131:  %var_2_131 = load i64, i64* %RBP, align 8
; %var_2_134 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_132:  %var_2_132 = add i64 %var_2_131, -28
; %var_2_135 = add i64 %var_2_134, -28
%var_2_136 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_134:  %var_2_134 = add i64 %var_2_133, 5
; %var_2_137 = add i64 %var_2_136, 5
; Matched:\<badref\>:  store i64 %var_2_134, i64* %PC, align 8
; store i64 %var_2_137, i64* %var_2_3, align 8
%var_2_138 = bitcast %union.VectorReg* %var_2_79 to <2 x float>*
%var_2_139 = load <2 x float>, <2 x float>* %var_2_138, align 1
%var_2_140 = extractelement <2 x float> %var_2_139, i32 0
; Matched:%var_2_138:  %var_2_138 = inttoptr i64 %var_2_132 to float*
; %var_2_141 = inttoptr i64 %var_2_135 to float*
; Matched:\<badref\>:  store float %var_2_137, float* %var_2_138, align 4
; store float %var_2_140, float* %var_2_141, align 4
; Matched:%var_2_139:  %var_2_139 = load i64, i64* %RBP, align 8
; %var_2_142 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_140:  %var_2_140 = add i64 %var_2_139, -32
; %var_2_143 = add i64 %var_2_142, -32
%var_2_144 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_701:  %var_2_701 = add i64 %var_2_697, 5
; %var_2_145 = add i64 %var_2_144, 5
; Matched:\<badref\>:  store i64 %var_2_701, i64* %PC, align 8
; store i64 %var_2_145, i64* %var_2_3, align 8
%var_2_146 = bitcast [32 x %union.VectorReg]* %var_2_64 to <2 x float>*
%var_2_147 = load <2 x float>, <2 x float>* %var_2_146, align 1
%var_2_148 = extractelement <2 x float> %var_2_147, i32 0
; Matched:%var_2_146:  %var_2_146 = inttoptr i64 %var_2_140 to float*
; %var_2_149 = inttoptr i64 %var_2_143 to float*
; Matched:\<badref\>:  store float %var_2_145, float* %var_2_146, align 4
; store float %var_2_148, float* %var_2_149, align 4
; Matched:%var_2_147:  %var_2_147 = load i64, i64* %RBP, align 8
; %var_2_150 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_148:  %var_2_148 = add i64 %var_2_147, -80
; %var_2_151 = add i64 %var_2_150, -80
%var_2_152 = load i64, i64* %var_2_3, align 8
%var_2_153 = add i64 %var_2_152, 8
store i64 %var_2_153, i64* %var_2_3, align 8
; Matched:%var_2_151:  %var_2_151 = inttoptr i64 %var_2_148 to i64*
; %var_2_154 = inttoptr i64 %var_2_151 to i64*
; Matched:\<badref\>:  store i64 40000000, i64* %var_2_151, align 8
; store i64 40000000, i64* %var_2_154, align 8
%var_2_155 = load i64, i64* %RBP.i, align 8
%var_2_156 = add i64 %var_2_155, -88
%var_2_157 = load i64, i64* %var_2_3, align 8
%var_2_158 = add i64 %var_2_157, 8
store i64 %var_2_158, i64* %var_2_3, align 8
%var_2_159 = inttoptr i64 %var_2_156 to i64*
store i64 1, i64* %var_2_159, align 8
; Matched:  %EAX = bitcast %union.anon* %var_2_3 to i32*
; %EAX.i250 = bitcast %union.anon* %var_2_39 to i32*
; Matched:%var_2_157:  %var_2_157 = load i64, i64* %RBP, align 8
; %var_2_160 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_158:  %var_2_158 = add i64 %var_2_157, -100
; %var_2_161 = add i64 %var_2_160, -100
; Matched:%var_2_159:  %var_2_159 = load i32, i32* %EAX, align 4
; %var_2_162 = load i32, i32* %EAX.i250, align 4
; Matched:%var_2_50:  %var_2_50 = load i64, i64* %PC, align 8
; %var_2_163 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_161:  %var_2_161 = add i64 %var_2_160, 3
; %var_2_164 = add i64 %var_2_163, 3
; Matched:\<badref\>:  store i64 %var_2_51, i64* %PC, align 8
; store i64 %var_2_164, i64* %var_2_3, align 8
; Matched:%var_2_162:  %var_2_162 = inttoptr i64 %var_2_158 to i32*
; %var_2_165 = inttoptr i64 %var_2_161 to i32*
; Matched:\<badref\>:  store i32 %var_2_159, i32* %var_2_162, align 4
; store i32 %var_2_162, i32* %var_2_165, align 4
%var_2_166 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %var_2_64, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
%var_2_167 = bitcast i64* %var_2_75 to double*
  %RCX.i231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX.i227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
%var_2_168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
%var_2_169 = bitcast %union.VectorReg* %var_2_79 to <2 x i32>*
%var_2_170 = bitcast i64* %var_2_89 to <2 x i32>*
; Matched:%var_2_168:  %var_2_168 = bitcast i8* %var_2_82 to i32*
; %var_2_171 = bitcast i8* %var_2_87 to i32*
%var_2_172 = bitcast i64* %var_2_89 to i32*
%var_2_173 = bitcast i8* %var_2_91 to i32*
; Matched:%var_2_171:  %var_2_171 = bitcast %union.VectorReg* %var_2_7 to double*
; %var_2_174 = bitcast %union.VectorReg* %var_2_79 to double*
%var_2_175 = bitcast [32 x %union.VectorReg]* %var_2_64 to double*
%var_2_176 = bitcast i64* %var_2_75 to <2 x i32>*
; Matched:%var_2_174:  %var_2_174 = bitcast i8* %var_2_72 to i32*
; %var_2_177 = bitcast i8* %var_2_73 to i32*
; Matched:%var_2_175:  %var_2_175 = bitcast i64* %var_2_74 to i32*
; %var_2_178 = bitcast i64* %var_2_75 to i32*
; Matched:%var_2_176:  %var_2_176 = bitcast i8* %var_2_76 to i32*
; %var_2_179 = bitcast i8* %var_2_77 to i32*
%var_2_180 = bitcast i64* %var_2_103 to <2 x i32>*
; Matched:%var_2_178:  %var_2_178 = bitcast i8* %var_2_92 to i32*
; %var_2_181 = bitcast i8* %var_2_101 to i32*
; Matched:%var_2_179:  %var_2_179 = bitcast i64* %var_2_94 to i32*
; %var_2_182 = bitcast i64* %var_2_103 to i32*
; Matched:%var_2_180:  %var_2_180 = bitcast i8* %var_2_96 to i32*
; %var_2_183 = bitcast i8* %var_2_105 to i32*
%var_2_184 = bitcast %union.VectorReg* %var_2_93 to <2 x i32>*
%.pre = load i64, i64* %var_2_3, align 8
  br label %block_.L_4005cf

block_.L_4005cf:                                  ; preds = %block_.L_4006c8, %entry
%var_2_185 = phi i64 [ %.pre, %entry ], [ %var_2_622, %block_.L_4006c8 ]
%MEMORY.0 = phi %struct.Memory* [ %var_2_63, %entry ], [ %var_2_558, %block_.L_4006c8 ]
%var_2_186 = load i64, i64* %RBP.i, align 8
%var_2_187 = add i64 %var_2_186, -88
; Matched:%var_2_552:  %var_2_552 = add i64 %var_2_549, 4
; %var_2_188 = add i64 %var_2_185, 4
; Matched:\<badref\>:  store i64 %var_2_552, i64* %PC, align 8
; store i64 %var_2_188, i64* %var_2_3, align 8
%var_2_189 = inttoptr i64 %var_2_187 to i64*
%var_2_190 = load i64, i64* %var_2_189, align 8
; Matched:\<badref\>:  store i64 %var_2_603, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_190, i64* %RAX.i113, align 8
%var_2_191 = add i64 %var_2_186, -80
; Matched:%var_2_556:  %var_2_556 = add i64 %var_2_549, 8
; %var_2_192 = add i64 %var_2_185, 8
; Matched:\<badref\>:  store i64 %var_2_556, i64* %PC, align 8
; store i64 %var_2_192, i64* %var_2_3, align 8
%var_2_193 = inttoptr i64 %var_2_191 to i64*
%var_2_194 = load i64, i64* %var_2_193, align 8
%var_2_195 = sub i64 %var_2_190, %var_2_194
; Matched:%var_2_560:  %var_2_560 = icmp ult i64 %var_2_554, %var_2_558
; %var_2_196 = icmp ult i64 %var_2_190, %var_2_194
; Matched:%var_2_561:  %var_2_561 = zext i1 %var_2_560 to i8
; %var_2_197 = zext i1 %var_2_196 to i8
; Matched:\<badref\>:  store i8 %var_2_561, i8* %var_2_19, align 1, !tbaa !1265
; store i8 %var_2_197, i8* %var_2_14, align 1
; Matched:%var_2_562:  %var_2_562 = trunc i64 %var_2_559 to i32
; %var_2_198 = trunc i64 %var_2_195 to i32
; Matched:%var_2_563:  %var_2_563 = and i32 %var_2_562, 255
; %var_2_199 = and i32 %var_2_198, 255
; Matched:%var_2_564:  %var_2_564 = tail call i32 @llvm.ctpop.i32(i32 %var_2_563) #12
; %var_2_200 = tail call i32 @llvm.ctpop.i32(i32 %var_2_199)
; Matched:%var_2_565:  %var_2_565 = trunc i32 %var_2_564 to i8
; %var_2_201 = trunc i32 %var_2_200 to i8
; Matched:%var_2_566:  %var_2_566 = and i8 %var_2_565, 1
; %var_2_202 = and i8 %var_2_201, 1
; Matched:%var_2_567:  %var_2_567 = xor i8 %var_2_566, 1
; %var_2_203 = xor i8 %var_2_202, 1
; Matched:\<badref\>:  store i8 %var_2_567, i8* %var_2_26, align 1, !tbaa !1279
; store i8 %var_2_203, i8* %var_2_21, align 1
; Matched:%var_2_568:  %var_2_568 = xor i64 %var_2_558, %var_2_554
; %var_2_204 = xor i64 %var_2_194, %var_2_190
; Matched:%var_2_569:  %var_2_569 = xor i64 %var_2_568, %var_2_559
; %var_2_205 = xor i64 %var_2_204, %var_2_195
; Matched:%var_2_570:  %var_2_570 = lshr i64 %var_2_569, 4
; %var_2_206 = lshr i64 %var_2_205, 4
; Matched:%var_2_571:  %var_2_571 = trunc i64 %var_2_570 to i8
; %var_2_207 = trunc i64 %var_2_206 to i8
; Matched:%var_2_572:  %var_2_572 = and i8 %var_2_571, 1
; %var_2_208 = and i8 %var_2_207, 1
; Matched:\<badref\>:  store i8 %var_2_572, i8* %var_2_31, align 1, !tbaa !1280
; store i8 %var_2_208, i8* %var_2_26, align 1
%var_2_209 = icmp eq i64 %var_2_195, 0
; Matched:%var_2_574:  %var_2_574 = zext i1 %var_2_573 to i8
; %var_2_210 = zext i1 %var_2_209 to i8
; Matched:\<badref\>:  store i8 %var_2_574, i8* %var_2_34, align 1, !tbaa !1281
; store i8 %var_2_210, i8* %var_2_29, align 1
%var_2_211 = lshr i64 %var_2_195, 63
%var_2_212 = trunc i64 %var_2_211 to i8
; Matched:\<badref\>:  store i8 %var_2_576, i8* %var_2_37, align 1, !tbaa !1282
; store i8 %var_2_212, i8* %var_2_32, align 1
%var_2_213 = lshr i64 %var_2_190, 63
%var_2_214 = lshr i64 %var_2_194, 63
%var_2_215 = xor i64 %var_2_214, %var_2_213
%var_2_216 = xor i64 %var_2_211, %var_2_213
%var_2_217 = add nuw nsw i64 %var_2_216, %var_2_215
%var_2_218 = icmp eq i64 %var_2_217, 2
; Matched:%var_2_583:  %var_2_583 = zext i1 %var_2_582 to i8
; %var_2_219 = zext i1 %var_2_218 to i8
; Matched:\<badref\>:  store i8 %var_2_583, i8* %var_2_43, align 1, !tbaa !1283
; store i8 %var_2_219, i8* %var_2_38, align 1
%var_2_220 = icmp ne i8 %var_2_212, 0
%var_2_221 = xor i1 %var_2_220, %var_2_218
%.demorgan = or i1 %var_2_209, %var_2_221
  %.v = select i1 %.demorgan, i64 14, i64 271
%var_2_222 = add i64 %var_2_185, %.v
; Matched:\<badref\>:  store i64 %var_2_586, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_222, i64* %var_2_3, align 8
  br i1 %.demorgan, label %block_4005dd, label %block_.L_4006de

block_4005dd:                                     ; preds = %block_.L_4005cf
; Matched:%var_2_182:  %var_2_182 = add i64 %var_2_550, -20
; %var_2_223 = add i64 %var_2_186, -20
; Matched:\<badref\>:  store i64 %var_2_182, i64* %RDI, align 8, !tbaa !1261
; store i64 %var_2_223, i64* %RDI.i286, align 8
; Matched:%var_2_183:  %var_2_183 = add i64 %var_2_550, -44
; %var_2_224 = add i64 %var_2_186, -44
; Matched:\<badref\>:  store i64 %var_2_183, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_224, i64* %RSI.i288, align 8
%var_2_225 = add i64 %var_2_222, add (i64 ptrtoint (%G_0x233__rip__type* @G_0x233__rip_ to i64), i64 8)
%var_2_226 = add i64 %var_2_222, 16
store i64 %var_2_226, i64* %var_2_3, align 8
%var_2_227 = inttoptr i64 %var_2_225 to i64*
%var_2_228 = load i64, i64* %var_2_227, align 8
store i64 %var_2_228, i64* %var_2_166, align 1
store double 0.000000e+00, double* %var_2_167, align 1
  store i64 74383, i64* %RAX.i113, align 8
  store i64 74383, i64* %RCX.i231, align 8
; Matched:%var_2_185:  %var_2_185 = add i64 %var_2_550, -72
; %var_2_229 = add i64 %var_2_186, -72
; Matched:%var_2_186:  %var_2_186 = add i64 %var_2_586, 31
; %var_2_230 = add i64 %var_2_222, 31
; Matched:\<badref\>:  store i64 %var_2_186, i64* %PC, align 8
; store i64 %var_2_230, i64* %var_2_3, align 8
; Matched:%var_2_187:  %var_2_187 = inttoptr i64 %var_2_185 to i64*
; %var_2_231 = inttoptr i64 %var_2_229 to i64*
; Matched:%var_2_188:  %var_2_188 = load i64, i64* %var_2_187, align 8
; %var_2_232 = load i64, i64* %var_2_231, align 8
; Matched:%var_2_189:  %var_2_189 = sext i64 %var_2_188 to i128
; %var_2_233 = sext i64 %var_2_232 to i128
; Matched:%var_2_190:  %var_2_190 = and i128 %var_2_189, -18446744073709551616
; %var_2_234 = and i128 %var_2_233, -18446744073709551616
; Matched:%var_2_191:  %var_2_191 = zext i64 %var_2_188 to i128
; %var_2_235 = zext i64 %var_2_232 to i128
; Matched:%var_2_192:  %var_2_192 = or i128 %var_2_190, %var_2_191
; %var_2_236 = or i128 %var_2_234, %var_2_235
; Matched:%var_2_193:  %var_2_193 = mul nsw i128 %var_2_192, 27611
; %var_2_237 = mul nsw i128 %var_2_236, 27611
; Matched:%var_2_194:  %var_2_194 = trunc i128 %var_2_193 to i64
; %var_2_238 = trunc i128 %var_2_237 to i64
; Matched:\<badref\>:  store i64 %var_2_194, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_238, i64* %RDX.i227, align 8
; Matched:%var_2_195:  %var_2_195 = sext i64 %var_2_194 to i128
; %var_2_239 = sext i64 %var_2_238 to i128
; Matched:%var_2_196:  %var_2_196 = icmp ne i128 %var_2_195, %var_2_193
; %var_2_240 = icmp ne i128 %var_2_239, %var_2_237
; Matched:%var_2_197:  %var_2_197 = zext i1 %var_2_196 to i8
; %var_2_241 = zext i1 %var_2_240 to i8
; Matched:\<badref\>:  store i8 %var_2_197, i8* %var_2_19, align 1, !tbaa !1265
; store i8 %var_2_241, i8* %var_2_14, align 1
; Matched:%var_2_198:  %var_2_198 = trunc i128 %var_2_193 to i32
; %var_2_242 = trunc i128 %var_2_237 to i32
; Matched:%var_2_199:  %var_2_199 = and i32 %var_2_198, 255
; %var_2_243 = and i32 %var_2_242, 255
; Matched:%var_2_200:  %var_2_200 = tail call i32 @llvm.ctpop.i32(i32 %var_2_199) #12
; %var_2_244 = tail call i32 @llvm.ctpop.i32(i32 %var_2_243)
; Matched:%var_2_201:  %var_2_201 = trunc i32 %var_2_200 to i8
; %var_2_245 = trunc i32 %var_2_244 to i8
; Matched:%var_2_202:  %var_2_202 = and i8 %var_2_201, 1
; %var_2_246 = and i8 %var_2_245, 1
; Matched:%var_2_203:  %var_2_203 = xor i8 %var_2_202, 1
; %var_2_247 = xor i8 %var_2_246, 1
; Matched:\<badref\>:  store i8 %var_2_203, i8* %var_2_26, align 1, !tbaa !1279
; store i8 %var_2_247, i8* %var_2_21, align 1
store i8 0, i8* %var_2_26, align 1
store i8 0, i8* %var_2_29, align 1
; Matched:%var_2_204:  %var_2_204 = lshr i64 %var_2_194, 63
; %var_2_248 = lshr i64 %var_2_238, 63
; Matched:%var_2_205:  %var_2_205 = trunc i64 %var_2_204 to i8
; %var_2_249 = trunc i64 %var_2_248 to i8
; Matched:\<badref\>:  store i8 %var_2_205, i8* %var_2_37, align 1, !tbaa !1282
; store i8 %var_2_249, i8* %var_2_32, align 1
; Matched:\<badref\>:  store i8 %var_2_197, i8* %var_2_43, align 1, !tbaa !1283
; store i8 %var_2_241, i8* %var_2_38, align 1
; Matched:%var_2_206:  %var_2_206 = add i64 %var_2_550, -96
; %var_2_250 = add i64 %var_2_186, -96
; Matched:%var_2_207:  %var_2_207 = add i64 %var_2_586, 35
; %var_2_251 = add i64 %var_2_222, 35
; Matched:\<badref\>:  store i64 %var_2_207, i64* %PC, align 8
; store i64 %var_2_251, i64* %var_2_3, align 8
; Matched:%var_2_208:  %var_2_208 = inttoptr i64 %var_2_206 to i64*
; %var_2_252 = inttoptr i64 %var_2_250 to i64*
; Matched:\<badref\>:  store i64 %var_2_194, i64* %var_2_208, align 8
; store i64 %var_2_238, i64* %var_2_252, align 8
; Matched:%var_2_209:  %var_2_209 = load i64, i64* %RBP, align 8
; %var_2_253 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_210:  %var_2_210 = add i64 %var_2_209, -96
; %var_2_254 = add i64 %var_2_253, -96
%var_2_255 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_212:  %var_2_212 = add i64 %var_2_211, 4
; %var_2_256 = add i64 %var_2_255, 4
; Matched:\<badref\>:  store i64 %var_2_57, i64* %PC, align 8
; store i64 %var_2_256, i64* %var_2_3, align 8
; Matched:%var_2_213:  %var_2_213 = inttoptr i64 %var_2_210 to i64*
; %var_2_257 = inttoptr i64 %var_2_254 to i64*
; Matched:%var_2_214:  %var_2_214 = load i64, i64* %var_2_213, align 8
; %var_2_258 = load i64, i64* %var_2_257, align 8
; Matched:\<badref\>:  store i64 %var_2_214, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_258, i64* %RDX.i227, align 8
%var_2_259 = add i64 %var_2_255, 8
store i64 %var_2_259, i64* %var_2_3, align 8
; Matched:%var_2_216:  %var_2_216 = load i64, i64* %var_2_213, align 8
; %var_2_260 = load i64, i64* %var_2_257, align 8
; Matched:\<badref\>:  store i64 %var_2_216, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_260, i64* %RAX.i113, align 8
; Matched:%var_2_217:  %var_2_217 = add i64 %var_2_209, -112
; %var_2_261 = add i64 %var_2_253, -112
; Matched:%var_2_218:  %var_2_218 = add i64 %var_2_211, 12
; %var_2_262 = add i64 %var_2_255, 12
; Matched:\<badref\>:  store i64 %var_2_218, i64* %PC, align 8
; store i64 %var_2_262, i64* %var_2_3, align 8
; Matched:%var_2_219:  %var_2_219 = inttoptr i64 %var_2_217 to i64*
; %var_2_263 = inttoptr i64 %var_2_261 to i64*
; Matched:\<badref\>:  store i64 %var_2_214, i64* %var_2_219, align 8
; store i64 %var_2_258, i64* %var_2_263, align 8
%var_2_264 = load i64, i64* %var_2_3, align 8
%var_2_265 = load i64, i64* %var_2_168, align 8
%var_2_266 = ashr i64 %var_2_265, 63
; Matched:\<badref\>:  store i64 %var_2_222, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_266, i64* %RDX.i227, align 8
%var_2_267 = load i64, i64* %RCX.i231, align 8
%var_2_268 = add i64 %var_2_264, 5
; Matched:\<badref\>:  store i64 %var_2_350, i64* %PC, align 8
; store i64 %var_2_268, i64* %var_2_3, align 8
%var_2_269 = sext i64 %var_2_267 to i128
%var_2_270 = and i128 %var_2_269, -18446744073709551616
%var_2_271 = zext i64 %var_2_266 to i128
%var_2_272 = shl nuw i128 %var_2_271, 64
%var_2_273 = zext i64 %var_2_265 to i128
%var_2_274 = or i128 %var_2_272, %var_2_273
%var_2_275 = zext i64 %var_2_267 to i128
%var_2_276 = or i128 %var_2_270, %var_2_275
%var_2_277 = sdiv i128 %var_2_274, %var_2_276
%var_2_278 = trunc i128 %var_2_277 to i64
%var_2_279 = and i128 %var_2_277, 18446744073709551615
%var_2_280 = sext i64 %var_2_278 to i128
%var_2_281 = and i128 %var_2_280, -18446744073709551616
%var_2_282 = or i128 %var_2_281, %var_2_279
%var_2_283 = icmp eq i128 %var_2_277, %var_2_282
br i1 %var_2_283, label %var_2_286, label %var_2_284

var_2_284:
%var_2_285 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %var_2_268, %struct.Memory* %MEMORY.0)
  %.pre4 = load i64, i64* %RAX.i113, align 8
; Matched:  %.pre5 = load i64, i64* %PC, align 8
; %.pre5 = load i64, i64* %var_2_3, align 8
  br label %routine_idivq__rcx.exit

var_2_286:
%var_2_287 = srem i128 %var_2_274, %var_2_276
%var_2_288 = trunc i128 %var_2_287 to i64
store i64 %var_2_278, i64* %var_2_168, align 8
store i64 %var_2_288, i64* %RDX.i227, align 8
store i8 0, i8* %var_2_14, align 1
store i8 0, i8* %var_2_21, align 1
store i8 0, i8* %var_2_26, align 1
store i8 0, i8* %var_2_29, align 1
store i8 0, i8* %var_2_32, align 1
store i8 0, i8* %var_2_38, align 1
  br label %routine_idivq__rcx.exit

routine_idivq__rcx.exit:                          ; preds = %var_2_286, %var_2_284
; Matched:%var_2_245:  %var_2_245 = phi i64 [ %.pre5, %var_2_240 ], [ %var_2_224, %var_2_242 ]
; %var_2_289 = phi i64 [ %.pre5, %var_2_284 ], [ %var_2_268, %var_2_286 ]
%var_2_290 = phi i64 [ %.pre4, %var_2_284 ], [ %var_2_278, %var_2_286 ]
%var_2_291 = phi %struct.Memory* [ %var_2_285, %var_2_284 ], [ %MEMORY.0, %var_2_286 ]
%var_2_292 = sext i64 %var_2_290 to i128
%var_2_293 = and i128 %var_2_292, -18446744073709551616
%var_2_294 = zext i64 %var_2_290 to i128
%var_2_295 = or i128 %var_2_293, %var_2_294
%var_2_296 = mul nsw i128 %var_2_295, 74383
%var_2_297 = trunc i128 %var_2_296 to i64
store i64 %var_2_297, i64* %RAX.i113, align 8
%var_2_298 = sext i64 %var_2_297 to i128
%var_2_299 = icmp ne i128 %var_2_298, %var_2_296
%var_2_300 = zext i1 %var_2_299 to i8
store i8 %var_2_300, i8* %var_2_14, align 1
%var_2_301 = trunc i128 %var_2_296 to i32
%var_2_302 = and i32 %var_2_301, 255
%var_2_303 = tail call i32 @llvm.ctpop.i32(i32 %var_2_302)
%var_2_304 = trunc i32 %var_2_303 to i8
%var_2_305 = and i8 %var_2_304, 1
%var_2_306 = xor i8 %var_2_305, 1
store i8 %var_2_306, i8* %var_2_21, align 1
store i8 0, i8* %var_2_26, align 1
store i8 0, i8* %var_2_29, align 1
%var_2_307 = lshr i64 %var_2_297, 63
%var_2_308 = trunc i64 %var_2_307 to i8
store i8 %var_2_308, i8* %var_2_32, align 1
store i8 %var_2_300, i8* %var_2_38, align 1
%var_2_309 = load i64, i64* %RBP.i, align 8
%var_2_310 = add i64 %var_2_309, -112
; Matched:%var_2_267:  %var_2_267 = add i64 %var_2_245, 11
; %var_2_311 = add i64 %var_2_289, 11
; Matched:\<badref\>:  store i64 %var_2_267, i64* %PC, align 8
; store i64 %var_2_311, i64* %var_2_3, align 8
%var_2_312 = inttoptr i64 %var_2_310 to i64*
%var_2_313 = load i64, i64* %var_2_312, align 8
%var_2_314 = sub i64 %var_2_313, %var_2_297
store i64 %var_2_314, i64* %RCX.i231, align 8
%var_2_315 = icmp ult i64 %var_2_313, %var_2_297
%var_2_316 = zext i1 %var_2_315 to i8
store i8 %var_2_316, i8* %var_2_14, align 1
%var_2_317 = trunc i64 %var_2_314 to i32
%var_2_318 = and i32 %var_2_317, 255
%var_2_319 = tail call i32 @llvm.ctpop.i32(i32 %var_2_318)
%var_2_320 = trunc i32 %var_2_319 to i8
%var_2_321 = and i8 %var_2_320, 1
%var_2_322 = xor i8 %var_2_321, 1
store i8 %var_2_322, i8* %var_2_21, align 1
%var_2_323 = xor i64 %var_2_297, %var_2_313
%var_2_324 = xor i64 %var_2_323, %var_2_314
%var_2_325 = lshr i64 %var_2_324, 4
%var_2_326 = trunc i64 %var_2_325 to i8
%var_2_327 = and i8 %var_2_326, 1
store i8 %var_2_327, i8* %var_2_26, align 1
%var_2_328 = icmp eq i64 %var_2_314, 0
%var_2_329 = zext i1 %var_2_328 to i8
store i8 %var_2_329, i8* %var_2_29, align 1
%var_2_330 = lshr i64 %var_2_314, 63
%var_2_331 = trunc i64 %var_2_330 to i8
store i8 %var_2_331, i8* %var_2_32, align 1
%var_2_332 = lshr i64 %var_2_313, 63
%var_2_333 = xor i64 %var_2_307, %var_2_332
%var_2_334 = xor i64 %var_2_330, %var_2_332
%var_2_335 = add nuw nsw i64 %var_2_334, %var_2_333
%var_2_336 = icmp eq i64 %var_2_335, 2
%var_2_337 = zext i1 %var_2_336 to i8
store i8 %var_2_337, i8* %var_2_38, align 1
%var_2_338 = add i64 %var_2_309, -72
; Matched:%var_2_295:  %var_2_295 = add i64 %var_2_245, 18
; %var_2_339 = add i64 %var_2_289, 18
; Matched:\<badref\>:  store i64 %var_2_295, i64* %PC, align 8
; store i64 %var_2_339, i64* %var_2_3, align 8
%var_2_340 = inttoptr i64 %var_2_338 to i64*
store i64 %var_2_314, i64* %var_2_340, align 8
; Matched:%var_2_297:  %var_2_297 = load i64, i64* %RBP, align 8
; %var_2_341 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_298:  %var_2_298 = add i64 %var_2_297, -72
; %var_2_342 = add i64 %var_2_341, -72
; Matched:%var_2_299:  %var_2_299 = load i64, i64* %PC, align 8
; %var_2_343 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_300:  %var_2_300 = add i64 %var_2_299, 6
; %var_2_344 = add i64 %var_2_343, 6
; Matched:\<badref\>:  store i64 %var_2_300, i64* %PC, align 8
; store i64 %var_2_344, i64* %var_2_3, align 8
%var_2_345 = load <2 x i32>, <2 x i32>* %var_2_169, align 1
%var_2_346 = load <2 x i32>, <2 x i32>* %var_2_170, align 1
; Matched:%var_2_303:  %var_2_303 = inttoptr i64 %var_2_298 to i64*
; %var_2_347 = inttoptr i64 %var_2_342 to i64*
; Matched:%var_2_304:  %var_2_304 = load i64, i64* %var_2_303, align 8
; %var_2_348 = load i64, i64* %var_2_347, align 8
; Matched:%var_2_305:  %var_2_305 = sitofp i64 %var_2_304 to float
; %var_2_349 = sitofp i64 %var_2_348 to float
; Matched:\<badref\>:  store float %var_2_305, float* %var_2_80, align 1, !tbaa !1285
; store float %var_2_349, float* %var_2_85, align 1
%var_2_350 = extractelement <2 x i32> %var_2_345, i32 1
; Matched:\<badref\>:  store i32 %var_2_306, i32* %var_2_168, align 1, !tbaa !1285
; store i32 %var_2_350, i32* %var_2_171, align 1
%var_2_351 = extractelement <2 x i32> %var_2_346, i32 0
; Matched:\<badref\>:  store i32 %var_2_388, i32* %var_2_169, align 1, !tbaa !1285
; store i32 %var_2_351, i32* %var_2_172, align 1
%var_2_352 = extractelement <2 x i32> %var_2_346, i32 1
; Matched:\<badref\>:  store i32 %var_2_389, i32* %var_2_170, align 1, !tbaa !1285
; store i32 %var_2_352, i32* %var_2_173, align 1
%var_2_353 = load <2 x float>, <2 x float>* %var_2_138, align 1
%var_2_354 = extractelement <2 x float> %var_2_353, i32 0
; Matched:%var_2_311:  %var_2_311 = fpext float %var_2_310 to double
; %var_2_355 = fpext float %var_2_354 to double
; Matched:%var_2_312:  %var_2_312 = load double, double* %var_2_172, align 1
; %var_2_356 = load double, double* %var_2_175, align 1
; Matched:%var_2_313:  %var_2_313 = fdiv double %var_2_311, %var_2_312
; %var_2_357 = fdiv double %var_2_355, %var_2_356
; Matched:\<badref\>:  store double %var_2_313, double* %var_2_171, align 1, !tbaa !1288
; store double %var_2_357, double* %var_2_174, align 1
%.cast3 = bitcast double %var_2_356 to <2 x i32>
%var_2_358 = load <2 x i32>, <2 x i32>* %var_2_176, align 1
; Matched:%var_2_315:  %var_2_315 = fptrunc double %var_2_313 to float
; %var_2_359 = fptrunc double %var_2_357 to float
; Matched:\<badref\>:  store float %var_2_315, float* %var_2_70, align 1, !tbaa !1285
; store float %var_2_359, float* %var_2_71, align 1
%var_2_360 = extractelement <2 x i32> %.cast3, i32 1
; Matched:\<badref\>:  store i32 %var_2_397, i32* %var_2_174, align 1, !tbaa !1285
; store i32 %var_2_360, i32* %var_2_177, align 1
%var_2_361 = extractelement <2 x i32> %var_2_358, i32 0
; Matched:\<badref\>:  store i32 %var_2_468, i32* %var_2_175, align 1, !tbaa !1285
; store i32 %var_2_361, i32* %var_2_178, align 1
%var_2_362 = extractelement <2 x i32> %var_2_358, i32 1
; Matched:\<badref\>:  store i32 %var_2_444, i32* %var_2_176, align 1, !tbaa !1285
; store i32 %var_2_362, i32* %var_2_179, align 1
; Matched:%var_2_319:  %var_2_319 = add i64 %var_2_297, -36
; %var_2_363 = add i64 %var_2_341, -36
; Matched:%var_2_320:  %var_2_320 = add i64 %var_2_299, 23
; %var_2_364 = add i64 %var_2_343, 23
; Matched:\<badref\>:  store i64 %var_2_320, i64* %PC, align 8
; store i64 %var_2_364, i64* %var_2_3, align 8
%var_2_365 = load <2 x float>, <2 x float>* %var_2_146, align 1
%var_2_366 = extractelement <2 x float> %var_2_365, i32 0
; Matched:%var_2_323:  %var_2_323 = inttoptr i64 %var_2_319 to float*
; %var_2_367 = inttoptr i64 %var_2_363 to float*
; Matched:\<badref\>:  store float %var_2_322, float* %var_2_323, align 4
; store float %var_2_366, float* %var_2_367, align 4
; Matched:%var_2_324:  %var_2_324 = load i64, i64* %RBP, align 8
; %var_2_368 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_325:  %var_2_325 = add i64 %var_2_324, -28
; %var_2_369 = add i64 %var_2_368, -28
%var_2_370 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_657:  %var_2_657 = add i64 %var_2_656, 5
; %var_2_371 = add i64 %var_2_370, 5
; Matched:\<badref\>:  store i64 %var_2_657, i64* %PC, align 8
; store i64 %var_2_371, i64* %var_2_3, align 8
; Matched:%var_2_328:  %var_2_328 = inttoptr i64 %var_2_325 to i32*
; %var_2_372 = inttoptr i64 %var_2_369 to i32*
; Matched:%var_2_329:  %var_2_329 = load i32, i32* %var_2_328, align 4
; %var_2_373 = load i32, i32* %var_2_372, align 4
; Matched:\<badref\>:  store i32 %var_2_329, i32* %var_2_71, align 1, !tbaa !1285
; store i32 %var_2_373, i32* %var_2_72, align 1
store float 0.000000e+00, float* %var_2_74, align 1
store float 0.000000e+00, float* %var_2_76, align 1
store float 0.000000e+00, float* %var_2_78, align 1
; Matched:%var_2_330:  %var_2_330 = add i64 %var_2_324, -24
; %var_2_374 = add i64 %var_2_368, -24
; Matched:%var_2_331:  %var_2_331 = add i64 %var_2_326, 10
; %var_2_375 = add i64 %var_2_370, 10
; Matched:\<badref\>:  store i64 %var_2_331, i64* %PC, align 8
; store i64 %var_2_375, i64* %var_2_3, align 8
%var_2_376 = load <2 x float>, <2 x float>* %var_2_146, align 1
%var_2_377 = load <2 x i32>, <2 x i32>* %var_2_176, align 1
; Matched:%var_2_334:  %var_2_334 = inttoptr i64 %var_2_330 to float*
; %var_2_378 = inttoptr i64 %var_2_374 to float*
; Matched:%var_2_335:  %var_2_335 = load float, float* %var_2_334, align 4
; %var_2_379 = load float, float* %var_2_378, align 4
%var_2_380 = extractelement <2 x float> %var_2_376, i32 0
; Matched:%var_2_337:  %var_2_337 = fmul float %var_2_336, %var_2_335
; %var_2_381 = fmul float %var_2_380, %var_2_379
; Matched:\<badref\>:  store float %var_2_337, float* %var_2_70, align 1, !tbaa !1285
; store float %var_2_381, float* %var_2_71, align 1
%var_2_382 = bitcast <2 x float> %var_2_376 to <2 x i32>
%var_2_383 = extractelement <2 x i32> %var_2_382, i32 1
; Matched:\<badref\>:  store i32 %var_2_420, i32* %var_2_174, align 1, !tbaa !1285
; store i32 %var_2_383, i32* %var_2_177, align 1
%var_2_384 = extractelement <2 x i32> %var_2_377, i32 0
; Matched:\<badref\>:  store i32 %var_2_398, i32* %var_2_175, align 1, !tbaa !1285
; store i32 %var_2_384, i32* %var_2_178, align 1
%var_2_385 = extractelement <2 x i32> %var_2_377, i32 1
; Matched:\<badref\>:  store i32 %var_2_318, i32* %var_2_176, align 1, !tbaa !1285
; store i32 %var_2_385, i32* %var_2_179, align 1
; Matched:%var_2_342:  %var_2_342 = add i64 %var_2_324, -52
; %var_2_386 = add i64 %var_2_368, -52
; Matched:%var_2_343:  %var_2_343 = add i64 %var_2_326, 15
; %var_2_387 = add i64 %var_2_370, 15
; Matched:\<badref\>:  store i64 %var_2_343, i64* %PC, align 8
; store i64 %var_2_387, i64* %var_2_3, align 8
%var_2_388 = load <2 x float>, <2 x float>* %var_2_146, align 1
%var_2_389 = extractelement <2 x float> %var_2_388, i32 0
; Matched:%var_2_346:  %var_2_346 = inttoptr i64 %var_2_342 to float*
; %var_2_390 = inttoptr i64 %var_2_386 to float*
; Matched:\<badref\>:  store float %var_2_345, float* %var_2_346, align 4
; store float %var_2_389, float* %var_2_390, align 4
; Matched:%var_2_347:  %var_2_347 = load i64, i64* %RBP, align 8
; %var_2_391 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_348:  %var_2_348 = add i64 %var_2_347, -52
; %var_2_392 = add i64 %var_2_391, -52
%var_2_393 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_327:  %var_2_327 = add i64 %var_2_326, 5
; %var_2_394 = add i64 %var_2_393, 5
; Matched:\<badref\>:  store i64 %var_2_408, i64* %PC, align 8
; store i64 %var_2_394, i64* %var_2_3, align 8
; Matched:%var_2_351:  %var_2_351 = inttoptr i64 %var_2_348 to i32*
; %var_2_395 = inttoptr i64 %var_2_392 to i32*
; Matched:%var_2_352:  %var_2_352 = load i32, i32* %var_2_351, align 4
; %var_2_396 = load i32, i32* %var_2_395, align 4
; Matched:\<badref\>:  store i32 %var_2_352, i32* %var_2_71, align 1, !tbaa !1285
; store i32 %var_2_396, i32* %var_2_72, align 1
store float 0.000000e+00, float* %var_2_74, align 1
store float 0.000000e+00, float* %var_2_76, align 1
store float 0.000000e+00, float* %var_2_78, align 1
; Matched:%var_2_353:  %var_2_353 = add i64 %var_2_347, -32
; %var_2_397 = add i64 %var_2_391, -32
; Matched:%var_2_354:  %var_2_354 = add i64 %var_2_349, 10
; %var_2_398 = add i64 %var_2_393, 10
; Matched:\<badref\>:  store i64 %var_2_354, i64* %PC, align 8
; store i64 %var_2_398, i64* %var_2_3, align 8
; Matched:%var_2_355:  %var_2_355 = inttoptr i64 %var_2_353 to i32*
; %var_2_399 = inttoptr i64 %var_2_397 to i32*
; Matched:%var_2_356:  %var_2_356 = load i32, i32* %var_2_355, align 4
; %var_2_400 = load i32, i32* %var_2_399, align 4
; Matched:\<badref\>:  store i32 %var_2_356, i32* %var_2_81, align 1, !tbaa !1285
; store i32 %var_2_400, i32* %var_2_86, align 1
store float 0.000000e+00, float* %var_2_88, align 1
store float 0.000000e+00, float* %var_2_90, align 1
store float 0.000000e+00, float* %var_2_92, align 1
; Matched:%var_2_357:  %var_2_357 = add i64 %var_2_349, 15
; %var_2_401 = add i64 %var_2_393, 15
; Matched:\<badref\>:  store i64 %var_2_446, i64* %PC, align 8
; store i64 %var_2_401, i64* %var_2_3, align 8
; Matched:%var_2_358:  %var_2_358 = load i32, i32* %var_2_351, align 4
; %var_2_402 = load i32, i32* %var_2_395, align 4
; Matched:\<badref\>:  store i32 %var_2_358, i32* %var_2_91, align 1, !tbaa !1285
; store i32 %var_2_402, i32* %var_2_100, align 1
store float 0.000000e+00, float* %var_2_102, align 1
store float 0.000000e+00, float* %var_2_104, align 1
store float 0.000000e+00, float* %var_2_106, align 1
; Matched:%var_2_359:  %var_2_359 = add i64 %var_2_349, 20
; %var_2_403 = add i64 %var_2_393, 20
; Matched:\<badref\>:  store i64 %var_2_449, i64* %PC, align 8
; store i64 %var_2_403, i64* %var_2_3, align 8
%var_2_404 = load <2 x float>, <2 x float>* %var_2_130, align 1
%var_2_405 = load <2 x i32>, <2 x i32>* %var_2_180, align 1
; Matched:%var_2_362:  %var_2_362 = inttoptr i64 %var_2_353 to float*
; %var_2_406 = inttoptr i64 %var_2_397 to float*
; Matched:%var_2_363:  %var_2_363 = load float, float* %var_2_362, align 4
; %var_2_407 = load float, float* %var_2_406, align 4
%var_2_408 = extractelement <2 x float> %var_2_404, i32 0
; Matched:%var_2_365:  %var_2_365 = fdiv float %var_2_364, %var_2_363
; %var_2_409 = fdiv float %var_2_408, %var_2_407
; Matched:\<badref\>:  store float %var_2_365, float* %var_2_90, align 1, !tbaa !1285
; store float %var_2_409, float* %var_2_99, align 1
%var_2_410 = bitcast <2 x float> %var_2_404 to <2 x i32>
%var_2_411 = extractelement <2 x i32> %var_2_410, i32 1
; Matched:\<badref\>:  store i32 %var_2_377, i32* %var_2_178, align 1, !tbaa !1285
; store i32 %var_2_411, i32* %var_2_181, align 1
%var_2_412 = extractelement <2 x i32> %var_2_405, i32 0
; Matched:\<badref\>:  store i32 %var_2_368, i32* %var_2_179, align 1, !tbaa !1285
; store i32 %var_2_412, i32* %var_2_182, align 1
%var_2_413 = extractelement <2 x i32> %var_2_405, i32 1
; Matched:\<badref\>:  store i32 %var_2_626, i32* %var_2_180, align 1, !tbaa !1285
; store i32 %var_2_413, i32* %var_2_183, align 1
%var_2_414 = load <2 x float>, <2 x float>* %var_2_130, align 1
%var_2_415 = extractelement <2 x float> %var_2_414, i32 0
; Matched:%var_2_372:  %var_2_372 = tail call float @llvm.trunc.f32(float %var_2_371) #12
; %var_2_416 = tail call float @llvm.trunc.f32(float %var_2_415)
; Matched:%var_2_373:  %var_2_373 = fptosi float %var_2_372 to i64
; %var_2_417 = fptosi float %var_2_416 to i64
; Matched:\<badref\>:  store i64 %var_2_373, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_417, i64* %RAX.i113, align 8
%var_2_418 = bitcast <2 x float> %var_2_414 to <2 x i32>
%var_2_419 = load <2 x i32>, <2 x i32>* %var_2_180, align 1
; Matched:%var_2_376:  %var_2_376 = sitofp i64 %var_2_373 to float
; %var_2_420 = sitofp i64 %var_2_417 to float
; Matched:\<badref\>:  store float %var_2_376, float* %var_2_90, align 1, !tbaa !1285
; store float %var_2_420, float* %var_2_99, align 1
%var_2_421 = extractelement <2 x i32> %var_2_418, i32 1
; Matched:\<badref\>:  store i32 %var_2_367, i32* %var_2_178, align 1, !tbaa !1285
; store i32 %var_2_421, i32* %var_2_181, align 1
%var_2_422 = extractelement <2 x i32> %var_2_419, i32 0
; Matched:\<badref\>:  store i32 %var_2_378, i32* %var_2_179, align 1, !tbaa !1285
; store i32 %var_2_422, i32* %var_2_182, align 1
%var_2_423 = extractelement <2 x i32> %var_2_419, i32 1
; Matched:\<badref\>:  store i32 %var_2_369, i32* %var_2_180, align 1, !tbaa !1285
; store i32 %var_2_423, i32* %var_2_183, align 1
%var_2_424 = load <2 x float>, <2 x float>* %var_2_138, align 1
%var_2_425 = load <2 x i32>, <2 x i32>* %var_2_170, align 1
%var_2_426 = load <2 x float>, <2 x float>* %var_2_130, align 1
%var_2_427 = extractelement <2 x float> %var_2_424, i32 0
%var_2_428 = extractelement <2 x float> %var_2_426, i32 0
; Matched:%var_2_385:  %var_2_385 = fmul float %var_2_383, %var_2_384
; %var_2_429 = fmul float %var_2_427, %var_2_428
; Matched:\<badref\>:  store float %var_2_385, float* %var_2_80, align 1, !tbaa !1285
; store float %var_2_429, float* %var_2_85, align 1
%var_2_430 = bitcast <2 x float> %var_2_424 to <2 x i32>
%var_2_431 = extractelement <2 x i32> %var_2_430, i32 1
; Matched:\<badref\>:  store i32 %var_2_387, i32* %var_2_168, align 1, !tbaa !1285
; store i32 %var_2_431, i32* %var_2_171, align 1
%var_2_432 = extractelement <2 x i32> %var_2_425, i32 0
; Matched:\<badref\>:  store i32 %var_2_458, i32* %var_2_169, align 1, !tbaa !1285
; store i32 %var_2_432, i32* %var_2_172, align 1
%var_2_433 = extractelement <2 x i32> %var_2_425, i32 1
; Matched:\<badref\>:  store i32 %var_2_459, i32* %var_2_170, align 1, !tbaa !1285
; store i32 %var_2_433, i32* %var_2_173, align 1
%var_2_434 = load <2 x float>, <2 x float>* %var_2_146, align 1
%var_2_435 = load <2 x i32>, <2 x i32>* %var_2_176, align 1
%var_2_436 = load <2 x float>, <2 x float>* %var_2_138, align 1
%var_2_437 = extractelement <2 x float> %var_2_434, i32 0
%var_2_438 = extractelement <2 x float> %var_2_436, i32 0
; Matched:%var_2_395:  %var_2_395 = fsub float %var_2_393, %var_2_394
; %var_2_439 = fsub float %var_2_437, %var_2_438
; Matched:\<badref\>:  store float %var_2_395, float* %var_2_70, align 1, !tbaa !1285
; store float %var_2_439, float* %var_2_71, align 1
%var_2_440 = bitcast <2 x float> %var_2_434 to <2 x i32>
%var_2_441 = extractelement <2 x i32> %var_2_440, i32 1
; Matched:\<badref\>:  store i32 %var_2_467, i32* %var_2_174, align 1, !tbaa !1285
; store i32 %var_2_441, i32* %var_2_177, align 1
%var_2_442 = extractelement <2 x i32> %var_2_435, i32 0
; Matched:\<badref\>:  store i32 %var_2_443, i32* %var_2_175, align 1, !tbaa !1285
; store i32 %var_2_442, i32* %var_2_178, align 1
%var_2_443 = extractelement <2 x i32> %var_2_435, i32 1
; Matched:\<badref\>:  store i32 %var_2_422, i32* %var_2_176, align 1, !tbaa !1285
; store i32 %var_2_443, i32* %var_2_179, align 1
; Matched:%var_2_400:  %var_2_400 = add i64 %var_2_347, -24
; %var_2_444 = add i64 %var_2_391, -24
; Matched:%var_2_401:  %var_2_401 = add i64 %var_2_349, 43
; %var_2_445 = add i64 %var_2_393, 43
; Matched:\<badref\>:  store i64 %var_2_401, i64* %PC, align 8
; store i64 %var_2_445, i64* %var_2_3, align 8
%var_2_446 = load <2 x float>, <2 x float>* %var_2_146, align 1
%var_2_447 = extractelement <2 x float> %var_2_446, i32 0
; Matched:%var_2_404:  %var_2_404 = inttoptr i64 %var_2_400 to float*
; %var_2_448 = inttoptr i64 %var_2_444 to float*
; Matched:\<badref\>:  store float %var_2_403, float* %var_2_404, align 4
; store float %var_2_447, float* %var_2_448, align 4
; Matched:%var_2_405:  %var_2_405 = load i64, i64* %RBP, align 8
; %var_2_449 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_406:  %var_2_406 = add i64 %var_2_405, -24
; %var_2_450 = add i64 %var_2_449, -24
%var_2_451 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_142:  %var_2_142 = add i64 %var_2_141, 5
; %var_2_452 = add i64 %var_2_451, 5
; Matched:\<badref\>:  store i64 %var_2_142, i64* %PC, align 8
; store i64 %var_2_452, i64* %var_2_3, align 8
; Matched:%var_2_409:  %var_2_409 = inttoptr i64 %var_2_406 to i32*
; %var_2_453 = inttoptr i64 %var_2_450 to i32*
; Matched:%var_2_410:  %var_2_410 = load i32, i32* %var_2_409, align 4
; %var_2_454 = load i32, i32* %var_2_453, align 4
; Matched:\<badref\>:  store i32 %var_2_410, i32* %var_2_71, align 1, !tbaa !1285
; store i32 %var_2_454, i32* %var_2_72, align 1
store float 0.000000e+00, float* %var_2_74, align 1
store float 0.000000e+00, float* %var_2_76, align 1
store float 0.000000e+00, float* %var_2_78, align 1
; Matched:%var_2_411:  %var_2_411 = add i64 %var_2_405, -32
; %var_2_455 = add i64 %var_2_449, -32
; Matched:%var_2_412:  %var_2_412 = add i64 %var_2_407, 10
; %var_2_456 = add i64 %var_2_451, 10
; Matched:\<badref\>:  store i64 %var_2_412, i64* %PC, align 8
; store i64 %var_2_456, i64* %var_2_3, align 8
%var_2_457 = load <2 x float>, <2 x float>* %var_2_146, align 1
%var_2_458 = load <2 x i32>, <2 x i32>* %var_2_176, align 1
; Matched:%var_2_415:  %var_2_415 = inttoptr i64 %var_2_411 to float*
; %var_2_459 = inttoptr i64 %var_2_455 to float*
; Matched:%var_2_416:  %var_2_416 = load float, float* %var_2_415, align 4
; %var_2_460 = load float, float* %var_2_459, align 4
%var_2_461 = extractelement <2 x float> %var_2_457, i32 0
; Matched:%var_2_418:  %var_2_418 = fdiv float %var_2_417, %var_2_416
; %var_2_462 = fdiv float %var_2_461, %var_2_460
; Matched:\<badref\>:  store float %var_2_418, float* %var_2_70, align 1, !tbaa !1285
; store float %var_2_462, float* %var_2_71, align 1
%var_2_463 = bitcast <2 x float> %var_2_457 to <2 x i32>
%var_2_464 = extractelement <2 x i32> %var_2_463, i32 1
; Matched:\<badref\>:  store i32 %var_2_316, i32* %var_2_174, align 1, !tbaa !1285
; store i32 %var_2_464, i32* %var_2_177, align 1
%var_2_465 = extractelement <2 x i32> %var_2_458, i32 0
; Matched:\<badref\>:  store i32 %var_2_421, i32* %var_2_175, align 1, !tbaa !1285
; store i32 %var_2_465, i32* %var_2_178, align 1
%var_2_466 = extractelement <2 x i32> %var_2_458, i32 1
; Matched:\<badref\>:  store i32 %var_2_469, i32* %var_2_176, align 1, !tbaa !1285
; store i32 %var_2_466, i32* %var_2_179, align 1
; Matched:%var_2_423:  %var_2_423 = add i64 %var_2_405, -40
; %var_2_467 = add i64 %var_2_449, -40
; Matched:%var_2_446:  %var_2_446 = add i64 %var_2_430, 15
; %var_2_468 = add i64 %var_2_451, 15
; Matched:\<badref\>:  store i64 %var_2_424, i64* %PC, align 8
; store i64 %var_2_468, i64* %var_2_3, align 8
%var_2_469 = load <2 x float>, <2 x float>* %var_2_146, align 1
%var_2_470 = extractelement <2 x float> %var_2_469, i32 0
; Matched:%var_2_427:  %var_2_427 = inttoptr i64 %var_2_423 to float*
; %var_2_471 = inttoptr i64 %var_2_467 to float*
; Matched:\<badref\>:  store float %var_2_426, float* %var_2_427, align 4
; store float %var_2_470, float* %var_2_471, align 4
; Matched:%var_2_428:  %var_2_428 = load i64, i64* %RBP, align 8
; %var_2_472 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_429:  %var_2_429 = add i64 %var_2_428, -36
; %var_2_473 = add i64 %var_2_472, -36
%var_2_474 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_408:  %var_2_408 = add i64 %var_2_407, 5
; %var_2_475 = add i64 %var_2_474, 5
; Matched:\<badref\>:  store i64 %var_2_327, i64* %PC, align 8
; store i64 %var_2_475, i64* %var_2_3, align 8
; Matched:%var_2_432:  %var_2_432 = inttoptr i64 %var_2_429 to i32*
; %var_2_476 = inttoptr i64 %var_2_473 to i32*
; Matched:%var_2_433:  %var_2_433 = load i32, i32* %var_2_432, align 4
; %var_2_477 = load i32, i32* %var_2_476, align 4
; Matched:\<badref\>:  store i32 %var_2_433, i32* %var_2_71, align 1, !tbaa !1285
; store i32 %var_2_477, i32* %var_2_72, align 1
store float 0.000000e+00, float* %var_2_74, align 1
store float 0.000000e+00, float* %var_2_76, align 1
store float 0.000000e+00, float* %var_2_78, align 1
; Matched:%var_2_434:  %var_2_434 = add i64 %var_2_430, 10
; %var_2_478 = add i64 %var_2_474, 10
; Matched:\<badref\>:  store i64 %var_2_434, i64* %PC, align 8
; store i64 %var_2_478, i64* %var_2_3, align 8
%var_2_479 = load <2 x float>, <2 x float>* %var_2_146, align 1
%var_2_480 = load <2 x i32>, <2 x i32>* %var_2_176, align 1
; Matched:%var_2_437:  %var_2_437 = inttoptr i64 %var_2_429 to float*
; %var_2_481 = inttoptr i64 %var_2_473 to float*
; Matched:%var_2_438:  %var_2_438 = load float, float* %var_2_437, align 4
; %var_2_482 = load float, float* %var_2_481, align 4
%var_2_483 = extractelement <2 x float> %var_2_479, i32 0
; Matched:%var_2_440:  %var_2_440 = fmul float %var_2_439, %var_2_438
; %var_2_484 = fmul float %var_2_483, %var_2_482
; Matched:\<badref\>:  store float %var_2_440, float* %var_2_70, align 1, !tbaa !1285
; store float %var_2_484, float* %var_2_71, align 1
%var_2_485 = bitcast <2 x float> %var_2_479 to <2 x i32>
%var_2_486 = extractelement <2 x i32> %var_2_485, i32 1
; Matched:\<badref\>:  store i32 %var_2_339, i32* %var_2_174, align 1, !tbaa !1285
; store i32 %var_2_486, i32* %var_2_177, align 1
%var_2_487 = extractelement <2 x i32> %var_2_480, i32 0
; Matched:\<badref\>:  store i32 %var_2_317, i32* %var_2_175, align 1, !tbaa !1285
; store i32 %var_2_487, i32* %var_2_178, align 1
%var_2_488 = extractelement <2 x i32> %var_2_480, i32 1
; Matched:\<badref\>:  store i32 %var_2_399, i32* %var_2_176, align 1, !tbaa !1285
; store i32 %var_2_488, i32* %var_2_179, align 1
; Matched:%var_2_445:  %var_2_445 = add i64 %var_2_428, -40
; %var_2_489 = add i64 %var_2_472, -40
; Matched:%var_2_424:  %var_2_424 = add i64 %var_2_407, 15
; %var_2_490 = add i64 %var_2_474, 15
; Matched:\<badref\>:  store i64 %var_2_357, i64* %PC, align 8
; store i64 %var_2_490, i64* %var_2_3, align 8
; Matched:%var_2_447:  %var_2_447 = inttoptr i64 %var_2_445 to i32*
; %var_2_491 = inttoptr i64 %var_2_489 to i32*
; Matched:%var_2_448:  %var_2_448 = load i32, i32* %var_2_447, align 4
; %var_2_492 = load i32, i32* %var_2_491, align 4
; Matched:\<badref\>:  store i32 %var_2_448, i32* %var_2_81, align 1, !tbaa !1285
; store i32 %var_2_492, i32* %var_2_86, align 1
store float 0.000000e+00, float* %var_2_88, align 1
store float 0.000000e+00, float* %var_2_90, align 1
store float 0.000000e+00, float* %var_2_92, align 1
; Matched:%var_2_449:  %var_2_449 = add i64 %var_2_430, 20
; %var_2_493 = add i64 %var_2_474, 20
; Matched:\<badref\>:  store i64 %var_2_359, i64* %PC, align 8
; store i64 %var_2_493, i64* %var_2_3, align 8
%var_2_494 = load <2 x float>, <2 x float>* %var_2_138, align 1
%var_2_495 = load <2 x i32>, <2 x i32>* %var_2_170, align 1
; Matched:%var_2_452:  %var_2_452 = inttoptr i64 %var_2_445 to float*
; %var_2_496 = inttoptr i64 %var_2_489 to float*
; Matched:%var_2_453:  %var_2_453 = load float, float* %var_2_452, align 4
; %var_2_497 = load float, float* %var_2_496, align 4
%var_2_498 = extractelement <2 x float> %var_2_494, i32 0
; Matched:%var_2_455:  %var_2_455 = fmul float %var_2_454, %var_2_453
; %var_2_499 = fmul float %var_2_498, %var_2_497
; Matched:\<badref\>:  store float %var_2_455, float* %var_2_80, align 1, !tbaa !1285
; store float %var_2_499, float* %var_2_85, align 1
%var_2_500 = bitcast <2 x float> %var_2_494 to <2 x i32>
%var_2_501 = extractelement <2 x i32> %var_2_500, i32 1
; Matched:\<badref\>:  store i32 %var_2_457, i32* %var_2_168, align 1, !tbaa !1285
; store i32 %var_2_501, i32* %var_2_171, align 1
%var_2_502 = extractelement <2 x i32> %var_2_495, i32 0
; Matched:\<badref\>:  store i32 %var_2_307, i32* %var_2_169, align 1, !tbaa !1285
; store i32 %var_2_502, i32* %var_2_172, align 1
%var_2_503 = extractelement <2 x i32> %var_2_495, i32 1
; Matched:\<badref\>:  store i32 %var_2_308, i32* %var_2_170, align 1, !tbaa !1285
; store i32 %var_2_503, i32* %var_2_173, align 1
%var_2_504 = load <2 x float>, <2 x float>* %var_2_146, align 1
%var_2_505 = load <2 x i32>, <2 x i32>* %var_2_176, align 1
%var_2_506 = load <2 x float>, <2 x float>* %var_2_138, align 1
%var_2_507 = extractelement <2 x float> %var_2_504, i32 0
%var_2_508 = extractelement <2 x float> %var_2_506, i32 0
; Matched:%var_2_465:  %var_2_465 = fadd float %var_2_463, %var_2_464
; %var_2_509 = fadd float %var_2_507, %var_2_508
; Matched:\<badref\>:  store float %var_2_465, float* %var_2_70, align 1, !tbaa !1285
; store float %var_2_509, float* %var_2_71, align 1
%var_2_510 = bitcast <2 x float> %var_2_504 to <2 x i32>
%var_2_511 = extractelement <2 x i32> %var_2_510, i32 1
; Matched:\<badref\>:  store i32 %var_2_442, i32* %var_2_174, align 1, !tbaa !1285
; store i32 %var_2_511, i32* %var_2_177, align 1
%var_2_512 = extractelement <2 x i32> %var_2_505, i32 0
; Matched:\<badref\>:  store i32 %var_2_340, i32* %var_2_175, align 1, !tbaa !1285
; store i32 %var_2_512, i32* %var_2_178, align 1
%var_2_513 = extractelement <2 x i32> %var_2_505, i32 1
; Matched:\<badref\>:  store i32 %var_2_341, i32* %var_2_176, align 1, !tbaa !1285
; store i32 %var_2_513, i32* %var_2_179, align 1
; Matched:%var_2_470:  %var_2_470 = add i64 %var_2_428, -44
; %var_2_514 = add i64 %var_2_472, -44
; Matched:%var_2_471:  %var_2_471 = add i64 %var_2_430, 29
; %var_2_515 = add i64 %var_2_474, 29
; Matched:\<badref\>:  store i64 %var_2_471, i64* %PC, align 8
; store i64 %var_2_515, i64* %var_2_3, align 8
%var_2_516 = load <2 x float>, <2 x float>* %var_2_146, align 1
%var_2_517 = extractelement <2 x float> %var_2_516, i32 0
; Matched:%var_2_474:  %var_2_474 = inttoptr i64 %var_2_470 to float*
; %var_2_518 = inttoptr i64 %var_2_514 to float*
; Matched:\<badref\>:  store float %var_2_473, float* %var_2_474, align 4
; store float %var_2_517, float* %var_2_518, align 4
%var_2_519 = load i64, i64* %var_2_3, align 8
%var_2_520 = add i64 %var_2_519, -384
; Matched:%var_2_477:  %var_2_477 = add i64 %var_2_475, 5
; %var_2_521 = add i64 %var_2_519, 5
; Matched:%var_2_478:  %var_2_478 = load i64, i64* %RSP, align 8, !tbaa !1261
; %var_2_522 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_694:  %var_2_694 = add i64 %var_2_693, -8
; %var_2_523 = add i64 %var_2_522, -8
; Matched:%var_2_480:  %var_2_480 = inttoptr i64 %var_2_479 to i64*
; %var_2_524 = inttoptr i64 %var_2_523 to i64*
; Matched:\<badref\>:  store i64 %var_2_477, i64* %var_2_480, align 8
; store i64 %var_2_521, i64* %var_2_524, align 8
; Matched:\<badref\>:  store i64 %var_2_694, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_523, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_476, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_520, i64* %var_2_3, align 8
%call2_4006a0 = tail call %struct.Memory* @sub_400520.myadd(%struct.State* nonnull %0, i64 %var_2_520, %struct.Memory* %var_2_291)
%var_2_525 = load i64, i64* %var_2_3, align 8
%var_2_526 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%G_0x16b__rip__type* @G_0x16b__rip_ to i64), i64 163) to i64*), align 8
store i64 %var_2_526, i64* %var_2_166, align 1
store double 0.000000e+00, double* %var_2_167, align 1
%var_2_527 = load i64, i64* %RBP.i, align 8
%var_2_528 = add i64 %var_2_527, -44
; Matched:%var_2_486:  %var_2_486 = add i64 %var_2_482, 13
; %var_2_529 = add i64 %var_2_525, 13
; Matched:\<badref\>:  store i64 %var_2_486, i64* %PC, align 8
; store i64 %var_2_529, i64* %var_2_3, align 8
%var_2_530 = inttoptr i64 %var_2_528 to float*
%var_2_531 = load float, float* %var_2_530, align 4
%var_2_532 = fpext float %var_2_531 to double
; Matched:\<badref\>:  store double %var_2_489, double* %var_2_171, align 1, !tbaa !1288
; store double %var_2_532, double* %var_2_174, align 1
%var_2_533 = add i64 %var_2_525, 17
; Matched:\<badref\>:  store i64 %var_2_490, i64* %PC, align 8
; store i64 %var_2_533, i64* %var_2_3, align 8
%var_2_534 = bitcast i64 %var_2_526 to double
%var_2_535 = fcmp uno double %var_2_534, %var_2_532
br i1 %var_2_535, label %var_2_536, label %var_2_546

var_2_536:
%var_2_537 = fadd double %var_2_532, %var_2_534
%var_2_538 = bitcast double %var_2_537 to i64
%var_2_539 = and i64 %var_2_538, 9221120237041090560
%var_2_540 = icmp eq i64 %var_2_539, 9218868437227405312
%var_2_541 = and i64 %var_2_538, 2251799813685247
%var_2_542 = icmp ne i64 %var_2_541, 0
%var_2_543 = and i1 %var_2_540, %var_2_542
br i1 %var_2_543, label %var_2_544, label %var_2_552

var_2_544:
%var_2_545 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %var_2_533, %struct.Memory* %call2_4006a0)
; Matched:  %.pre6 = load i64, i64* %PC, align 8
; %.pre6 = load i64, i64* %var_2_3, align 8
  br label %routine_ucomisd__xmm1___xmm0.exit

var_2_546:
%var_2_547 = fcmp ogt double %var_2_534, %var_2_532
br i1 %var_2_547, label %var_2_552, label %var_2_548

var_2_548:
%var_2_549 = fcmp olt double %var_2_534, %var_2_532
br i1 %var_2_549, label %var_2_552, label %var_2_550

var_2_550:
%var_2_551 = fcmp oeq double %var_2_534, %var_2_532
br i1 %var_2_551, label %var_2_552, label %var_2_556

var_2_552:
; Matched:%var_2_510:  %var_2_510 = phi i8 [ 0, %var_2_503 ], [ 0, %var_2_505 ], [ 1, %var_2_507 ], [ 1, %var_2_493 ]
; %var_2_553 = phi i8 [ 0, %var_2_546 ], [ 0, %var_2_548 ], [ 1, %var_2_550 ], [ 1, %var_2_536 ]
; Matched:%var_2_511:  %var_2_511 = phi i8 [ 0, %var_2_503 ], [ 0, %var_2_505 ], [ 0, %var_2_507 ], [ 1, %var_2_493 ]
; %var_2_554 = phi i8 [ 0, %var_2_546 ], [ 0, %var_2_548 ], [ 0, %var_2_550 ], [ 1, %var_2_536 ]
; Matched:%var_2_512:  %var_2_512 = phi i8 [ 0, %var_2_503 ], [ 1, %var_2_505 ], [ 0, %var_2_507 ], [ 1, %var_2_493 ]
; %var_2_555 = phi i8 [ 0, %var_2_546 ], [ 1, %var_2_548 ], [ 0, %var_2_550 ], [ 1, %var_2_536 ]
; Matched:\<badref\>:  store i8 %var_2_510, i8* %var_2_34, align 1, !tbaa !1284
; store i8 %var_2_553, i8* %var_2_29, align 1
; Matched:\<badref\>:  store i8 %var_2_511, i8* %var_2_26, align 1, !tbaa !1284
; store i8 %var_2_554, i8* %var_2_21, align 1
; Matched:\<badref\>:  store i8 %var_2_512, i8* %var_2_19, align 1, !tbaa !1284
; store i8 %var_2_555, i8* %var_2_14, align 1
br label %var_2_556

var_2_556:
store i8 0, i8* %var_2_38, align 1
store i8 0, i8* %var_2_32, align 1
store i8 0, i8* %var_2_26, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit

routine_ucomisd__xmm1___xmm0.exit:                ; preds = %var_2_556, %var_2_544
; Matched:%var_2_514:  %var_2_514 = phi i64 [ %.pre6, %var_2_501 ], [ %var_2_490, %var_2_513 ]
; %var_2_557 = phi i64 [ %.pre6, %var_2_544 ], [ %var_2_533, %var_2_556 ]
%var_2_558 = phi %struct.Memory* [ %var_2_545, %var_2_544 ], [ %call2_4006a0, %var_2_556 ]
%var_2_559 = load i8, i8* %var_2_14, align 1
; Matched:%var_2_517:  %var_2_517 = icmp ne i8 %var_2_516, 0
; %var_2_560 = icmp ne i8 %var_2_559, 0
; Matched:  %.v10 = select i1 %var_2_517, i64 18, i64 6
; %.v10 = select i1 %var_2_560, i64 18, i64 6
; Matched:%var_2_518:  %var_2_518 = add i64 %var_2_514, %.v10
; %var_2_561 = add i64 %var_2_557, %.v10
; Matched:\<badref\>:  store i64 %var_2_518, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_561, i64* %var_2_3, align 8
%cmpBr_4006b6 = icmp eq i8 %var_2_559, 1
  br i1 %cmpBr_4006b6, label %block_.L_4006c8, label %block_4006bc

block_4006bc:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit
; Matched:%var_2_520:  %var_2_520 = load i64, i64* %RBP, align 8
; %var_2_562 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_521:  %var_2_521 = add i64 %var_2_520, -64
; %var_2_563 = add i64 %var_2_562, -64
; Matched:%var_2_522:  %var_2_522 = add i64 %var_2_518, 4
; %var_2_564 = add i64 %var_2_561, 4
; Matched:\<badref\>:  store i64 %var_2_522, i64* %PC, align 8
; store i64 %var_2_564, i64* %var_2_3, align 8
; Matched:%var_2_523:  %var_2_523 = inttoptr i64 %var_2_521 to i64*
; %var_2_565 = inttoptr i64 %var_2_563 to i64*
; Matched:%var_2_524:  %var_2_524 = load i64, i64* %var_2_523, align 8
; %var_2_566 = load i64, i64* %var_2_565, align 8
; Matched:%var_2_525:  %var_2_525 = add i64 %var_2_524, 1
; %var_2_567 = add i64 %var_2_566, 1
; Matched:\<badref\>:  store i64 %var_2_525, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_567, i64* %RAX.i113, align 8
; Matched:%var_2_526:  %var_2_526 = icmp eq i64 %var_2_524, -1
; %var_2_568 = icmp eq i64 %var_2_566, -1
; Matched:%var_2_527:  %var_2_527 = icmp eq i64 %var_2_525, 0
; %var_2_569 = icmp eq i64 %var_2_567, 0
; Matched:%var_2_528:  %var_2_528 = or i1 %var_2_526, %var_2_527
; %var_2_570 = or i1 %var_2_568, %var_2_569
; Matched:%var_2_529:  %var_2_529 = zext i1 %var_2_528 to i8
; %var_2_571 = zext i1 %var_2_570 to i8
; Matched:\<badref\>:  store i8 %var_2_529, i8* %var_2_19, align 1, !tbaa !1265
; store i8 %var_2_571, i8* %var_2_14, align 1
; Matched:%var_2_530:  %var_2_530 = trunc i64 %var_2_525 to i32
; %var_2_572 = trunc i64 %var_2_567 to i32
; Matched:%var_2_531:  %var_2_531 = and i32 %var_2_530, 255
; %var_2_573 = and i32 %var_2_572, 255
; Matched:%var_2_532:  %var_2_532 = tail call i32 @llvm.ctpop.i32(i32 %var_2_531) #12
; %var_2_574 = tail call i32 @llvm.ctpop.i32(i32 %var_2_573)
; Matched:%var_2_533:  %var_2_533 = trunc i32 %var_2_532 to i8
; %var_2_575 = trunc i32 %var_2_574 to i8
; Matched:%var_2_534:  %var_2_534 = and i8 %var_2_533, 1
; %var_2_576 = and i8 %var_2_575, 1
; Matched:%var_2_535:  %var_2_535 = xor i8 %var_2_534, 1
; %var_2_577 = xor i8 %var_2_576, 1
; Matched:\<badref\>:  store i8 %var_2_535, i8* %var_2_26, align 1, !tbaa !1279
; store i8 %var_2_577, i8* %var_2_21, align 1
; Matched:%var_2_536:  %var_2_536 = xor i64 %var_2_525, %var_2_524
; %var_2_578 = xor i64 %var_2_567, %var_2_566
; Matched:%var_2_537:  %var_2_537 = lshr i64 %var_2_536, 4
; %var_2_579 = lshr i64 %var_2_578, 4
; Matched:%var_2_538:  %var_2_538 = trunc i64 %var_2_537 to i8
; %var_2_580 = trunc i64 %var_2_579 to i8
; Matched:%var_2_539:  %var_2_539 = and i8 %var_2_538, 1
; %var_2_581 = and i8 %var_2_580, 1
; Matched:\<badref\>:  store i8 %var_2_539, i8* %var_2_31, align 1, !tbaa !1280
; store i8 %var_2_581, i8* %var_2_26, align 1
; Matched:%var_2_540:  %var_2_540 = zext i1 %var_2_527 to i8
; %var_2_582 = zext i1 %var_2_569 to i8
; Matched:\<badref\>:  store i8 %var_2_540, i8* %var_2_34, align 1, !tbaa !1281
; store i8 %var_2_582, i8* %var_2_29, align 1
; Matched:%var_2_541:  %var_2_541 = lshr i64 %var_2_525, 63
; %var_2_583 = lshr i64 %var_2_567, 63
; Matched:%var_2_542:  %var_2_542 = trunc i64 %var_2_541 to i8
; %var_2_584 = trunc i64 %var_2_583 to i8
; Matched:\<badref\>:  store i8 %var_2_542, i8* %var_2_37, align 1, !tbaa !1282
; store i8 %var_2_584, i8* %var_2_32, align 1
; Matched:%var_2_543:  %var_2_543 = lshr i64 %var_2_524, 63
; %var_2_585 = lshr i64 %var_2_566, 63
; Matched:%var_2_544:  %var_2_544 = xor i64 %var_2_541, %var_2_543
; %var_2_586 = xor i64 %var_2_583, %var_2_585
; Matched:%var_2_545:  %var_2_545 = add nuw nsw i64 %var_2_544, %var_2_541
; %var_2_587 = add nuw nsw i64 %var_2_586, %var_2_583
; Matched:%var_2_546:  %var_2_546 = icmp eq i64 %var_2_545, 2
; %var_2_588 = icmp eq i64 %var_2_587, 2
; Matched:%var_2_547:  %var_2_547 = zext i1 %var_2_546 to i8
; %var_2_589 = zext i1 %var_2_588 to i8
; Matched:\<badref\>:  store i8 %var_2_547, i8* %var_2_43, align 1, !tbaa !1283
; store i8 %var_2_589, i8* %var_2_38, align 1
; Matched:%var_2_548:  %var_2_548 = add i64 %var_2_518, 12
; %var_2_590 = add i64 %var_2_561, 12
; Matched:\<badref\>:  store i64 %var_2_548, i64* %PC, align 8
; store i64 %var_2_590, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_525, i64* %var_2_523, align 8
; store i64 %var_2_567, i64* %var_2_565, align 8
; Matched:  %.pre7 = load i64, i64* %PC, align 8
; %.pre7 = load i64, i64* %var_2_3, align 8
  br label %block_.L_4006c8

block_.L_4006c8:                                  ; preds = %block_4006bc, %routine_ucomisd__xmm1___xmm0.exit
; Matched:%var_2_737:  %var_2_737 = phi i64 [ %.pre7, %block_4006bc ], [ %var_2_518, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit ]
; %var_2_591 = phi i64 [ %.pre7, %block_4006bc ], [ %var_2_561, %routine_ucomisd__xmm1___xmm0.exit ]
; Matched:%var_2_738:  %var_2_738 = load i64, i64* %RBP, align 8
; %var_2_592 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_739:  %var_2_739 = add i64 %var_2_738, -88
; %var_2_593 = add i64 %var_2_592, -88
; Matched:%var_2_740:  %var_2_740 = add i64 %var_2_737, 9
; %var_2_594 = add i64 %var_2_591, 9
; Matched:\<badref\>:  store i64 %var_2_740, i64* %PC, align 8
; store i64 %var_2_594, i64* %var_2_3, align 8
; Matched:%var_2_741:  %var_2_741 = inttoptr i64 %var_2_739 to i64*
; %var_2_595 = inttoptr i64 %var_2_593 to i64*
; Matched:%var_2_742:  %var_2_742 = load i64, i64* %var_2_741, align 8
; %var_2_596 = load i64, i64* %var_2_595, align 8
; Matched:%var_2_743:  %var_2_743 = add i64 %var_2_742, 1
; %var_2_597 = add i64 %var_2_596, 1
; Matched:\<badref\>:  store i64 %var_2_743, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_597, i64* %RAX.i113, align 8
; Matched:%var_2_744:  %var_2_744 = icmp eq i64 %var_2_742, -1
; %var_2_598 = icmp eq i64 %var_2_596, -1
; Matched:%var_2_745:  %var_2_745 = icmp eq i64 %var_2_743, 0
; %var_2_599 = icmp eq i64 %var_2_597, 0
; Matched:%var_2_746:  %var_2_746 = or i1 %var_2_744, %var_2_745
; %var_2_600 = or i1 %var_2_598, %var_2_599
; Matched:%var_2_747:  %var_2_747 = zext i1 %var_2_746 to i8
; %var_2_601 = zext i1 %var_2_600 to i8
; Matched:\<badref\>:  store i8 %var_2_747, i8* %var_2_19, align 1, !tbaa !1265
; store i8 %var_2_601, i8* %var_2_14, align 1
; Matched:%var_2_748:  %var_2_748 = trunc i64 %var_2_743 to i32
; %var_2_602 = trunc i64 %var_2_597 to i32
; Matched:%var_2_749:  %var_2_749 = and i32 %var_2_748, 255
; %var_2_603 = and i32 %var_2_602, 255
; Matched:%var_2_750:  %var_2_750 = tail call i32 @llvm.ctpop.i32(i32 %var_2_749) #12
; %var_2_604 = tail call i32 @llvm.ctpop.i32(i32 %var_2_603)
; Matched:%var_2_751:  %var_2_751 = trunc i32 %var_2_750 to i8
; %var_2_605 = trunc i32 %var_2_604 to i8
; Matched:%var_2_752:  %var_2_752 = and i8 %var_2_751, 1
; %var_2_606 = and i8 %var_2_605, 1
; Matched:%var_2_753:  %var_2_753 = xor i8 %var_2_752, 1
; %var_2_607 = xor i8 %var_2_606, 1
; Matched:\<badref\>:  store i8 %var_2_753, i8* %var_2_26, align 1, !tbaa !1279
; store i8 %var_2_607, i8* %var_2_21, align 1
; Matched:%var_2_754:  %var_2_754 = xor i64 %var_2_743, %var_2_742
; %var_2_608 = xor i64 %var_2_597, %var_2_596
; Matched:%var_2_755:  %var_2_755 = lshr i64 %var_2_754, 4
; %var_2_609 = lshr i64 %var_2_608, 4
; Matched:%var_2_756:  %var_2_756 = trunc i64 %var_2_755 to i8
; %var_2_610 = trunc i64 %var_2_609 to i8
; Matched:%var_2_757:  %var_2_757 = and i8 %var_2_756, 1
; %var_2_611 = and i8 %var_2_610, 1
; Matched:\<badref\>:  store i8 %var_2_757, i8* %var_2_31, align 1, !tbaa !1280
; store i8 %var_2_611, i8* %var_2_26, align 1
; Matched:%var_2_758:  %var_2_758 = zext i1 %var_2_745 to i8
; %var_2_612 = zext i1 %var_2_599 to i8
; Matched:\<badref\>:  store i8 %var_2_758, i8* %var_2_34, align 1, !tbaa !1281
; store i8 %var_2_612, i8* %var_2_29, align 1
; Matched:%var_2_759:  %var_2_759 = lshr i64 %var_2_743, 63
; %var_2_613 = lshr i64 %var_2_597, 63
; Matched:%var_2_760:  %var_2_760 = trunc i64 %var_2_759 to i8
; %var_2_614 = trunc i64 %var_2_613 to i8
; Matched:\<badref\>:  store i8 %var_2_760, i8* %var_2_37, align 1, !tbaa !1282
; store i8 %var_2_614, i8* %var_2_32, align 1
; Matched:%var_2_761:  %var_2_761 = lshr i64 %var_2_742, 63
; %var_2_615 = lshr i64 %var_2_596, 63
; Matched:%var_2_762:  %var_2_762 = xor i64 %var_2_759, %var_2_761
; %var_2_616 = xor i64 %var_2_613, %var_2_615
; Matched:%var_2_763:  %var_2_763 = add nuw nsw i64 %var_2_762, %var_2_759
; %var_2_617 = add nuw nsw i64 %var_2_616, %var_2_613
; Matched:%var_2_764:  %var_2_764 = icmp eq i64 %var_2_763, 2
; %var_2_618 = icmp eq i64 %var_2_617, 2
; Matched:%var_2_765:  %var_2_765 = zext i1 %var_2_764 to i8
; %var_2_619 = zext i1 %var_2_618 to i8
; Matched:\<badref\>:  store i8 %var_2_765, i8* %var_2_43, align 1, !tbaa !1283
; store i8 %var_2_619, i8* %var_2_38, align 1
; Matched:%var_2_766:  %var_2_766 = add i64 %var_2_737, 17
; %var_2_620 = add i64 %var_2_591, 17
; Matched:\<badref\>:  store i64 %var_2_766, i64* %PC, align 8
; store i64 %var_2_620, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_743, i64* %var_2_741, align 8
; store i64 %var_2_597, i64* %var_2_595, align 8
%var_2_621 = load i64, i64* %var_2_3, align 8
%var_2_622 = add i64 %var_2_621, -266
; Matched:\<badref\>:  store i64 %var_2_768, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_622, i64* %var_2_3, align 8
  br label %block_.L_4005cf

block_.L_4006de:                                  ; preds = %block_.L_4005cf
  store i64 ptrtoint (%G__0x400838_type* @G__0x400838 to i64), i64* %RDI.i286, align 8
; Matched:%var_2_587:  %var_2_587 = add i64 %var_2_550, -36
; %var_2_623 = add i64 %var_2_186, -36
; Matched:%var_2_588:  %var_2_588 = add i64 %var_2_586, 15
; %var_2_624 = add i64 %var_2_222, 15
; Matched:\<badref\>:  store i64 %var_2_588, i64* %PC, align 8
; store i64 %var_2_624, i64* %var_2_3, align 8
; Matched:%var_2_589:  %var_2_589 = inttoptr i64 %var_2_587 to float*
; %var_2_625 = inttoptr i64 %var_2_623 to float*
; Matched:%var_2_590:  %var_2_590 = load float, float* %var_2_589, align 4
; %var_2_626 = load float, float* %var_2_625, align 4
; Matched:%var_2_591:  %var_2_591 = fpext float %var_2_590 to double
; %var_2_627 = fpext float %var_2_626 to double
; Matched:\<badref\>:  store double %var_2_591, double* %var_2_172, align 1, !tbaa !1288
; store double %var_2_627, double* %var_2_175, align 1
; Matched:%var_2_592:  %var_2_592 = add i64 %var_2_550, -40
; %var_2_628 = add i64 %var_2_186, -40
; Matched:%var_2_593:  %var_2_593 = add i64 %var_2_586, 20
; %var_2_629 = add i64 %var_2_222, 20
; Matched:\<badref\>:  store i64 %var_2_593, i64* %PC, align 8
; store i64 %var_2_629, i64* %var_2_3, align 8
; Matched:%var_2_594:  %var_2_594 = inttoptr i64 %var_2_592 to float*
; %var_2_630 = inttoptr i64 %var_2_628 to float*
; Matched:%var_2_595:  %var_2_595 = load float, float* %var_2_594, align 4
; %var_2_631 = load float, float* %var_2_630, align 4
; Matched:%var_2_596:  %var_2_596 = fpext float %var_2_595 to double
; %var_2_632 = fpext float %var_2_631 to double
; Matched:\<badref\>:  store double %var_2_596, double* %var_2_171, align 1, !tbaa !1288
; store double %var_2_632, double* %var_2_174, align 1
; Matched:%var_2_597:  %var_2_597 = add i64 %var_2_550, -64
; %var_2_633 = add i64 %var_2_186, -64
; Matched:%var_2_598:  %var_2_598 = add i64 %var_2_586, 24
; %var_2_634 = add i64 %var_2_222, 24
; Matched:\<badref\>:  store i64 %var_2_598, i64* %PC, align 8
; store i64 %var_2_634, i64* %var_2_3, align 8
; Matched:%var_2_599:  %var_2_599 = inttoptr i64 %var_2_597 to i64*
; %var_2_635 = inttoptr i64 %var_2_633 to i64*
; Matched:%var_2_600:  %var_2_600 = load i64, i64* %var_2_599, align 8
; %var_2_636 = load i64, i64* %var_2_635, align 8
; Matched:\<badref\>:  store i64 %var_2_600, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_636, i64* %RAX.i113, align 8
%var_2_637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
%RCX.i78 = getelementptr inbounds %union.anon, %union.anon* %var_2_637, i64 0, i32 0
; Matched:%var_2_601:  %var_2_601 = and i64 %var_2_600, 4294967295
; %var_2_638 = and i64 %var_2_636, 4294967295
; Matched:\<badref\>:  store i64 %var_2_601, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_638, i64* %RCX.i78, align 8
; Matched:%var_2_602:  %var_2_602 = add i64 %var_2_586, 30
; %var_2_639 = add i64 %var_2_222, 30
; Matched:\<badref\>:  store i64 %var_2_602, i64* %PC, align 8
; store i64 %var_2_639, i64* %var_2_3, align 8
; Matched:%var_2_603:  %var_2_603 = load i64, i64* %var_2_553, align 8
; %var_2_640 = load i64, i64* %var_2_189, align 8
; Matched:\<badref\>:  store i64 %var_2_554, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_640, i64* %RAX.i113, align 8
; Matched:%var_2_604:  %var_2_604 = and i64 %var_2_603, 4294967295
; %var_2_641 = and i64 %var_2_640, 4294967295
; Matched:\<badref\>:  store i64 %var_2_604, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_641, i64* %RDX.i227, align 8
; Matched:  %ECX = bitcast %union.anon* %var_2_4 to i32*
; %ECX.i69 = bitcast %union.anon* %var_2_637 to i32*
; Matched:\<badref\>:  store i64 %var_2_601, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_638, i64* %RSI.i288, align 8
; Matched:\<badref\>:  store i8 2, i8* %AL, align 1, !tbaa !1284
; store i8 2, i8* %AL.i283, align 1
; Matched:%var_2_605:  %var_2_605 = add i64 %var_2_586, -702
; %var_2_642 = add i64 %var_2_222, -702
; Matched:%var_2_606:  %var_2_606 = add i64 %var_2_586, 41
; %var_2_643 = add i64 %var_2_222, 41
; Matched:%var_2_607:  %var_2_607 = load i64, i64* %RSP, align 8, !tbaa !1261
; %var_2_644 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_479:  %var_2_479 = add i64 %var_2_478, -8
; %var_2_645 = add i64 %var_2_644, -8
; Matched:%var_2_609:  %var_2_609 = inttoptr i64 %var_2_608 to i64*
; %var_2_646 = inttoptr i64 %var_2_645 to i64*
; Matched:\<badref\>:  store i64 %var_2_606, i64* %var_2_609, align 8
; store i64 %var_2_643, i64* %var_2_646, align 8
; Matched:\<badref\>:  store i64 %var_2_479, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_645, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_605, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_642, i64* %var_2_3, align 8
%var_2_647 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.0)
; Matched:%var_2_611:  %var_2_611 = load i64, i64* %PC, align 8
; %var_2_648 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x400865_type* @G__0x400865 to i64), i64* %RDI.i286, align 8
%var_2_649 = bitcast [32 x %union.VectorReg]* %var_2_64 to <4 x i32>*
store <4 x i32> zeroinitializer, <4 x i32>* %var_2_649, align 1
; Matched:%var_2_613:  %var_2_613 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_400800__rodata_type* @seg_400800__rodata to i64), i64 16) to i64*), align 16
; %var_2_650 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%G_0xf4__rip__type* @G_0xf4__rip_ to i64), i64 44) to i64*), align 8
; Matched:%var_2_614:  %var_2_614 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_7, i64 0, i32 0, i32 0, i32 0, i64 0
; %var_2_651 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_79, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:\<badref\>:  store i64 %var_2_613, i64* %var_2_614, align 1, !tbaa !1288
; store i64 %var_2_650, i64* %var_2_651, align 1
%var_2_652 = bitcast i64* %var_2_89 to double*
store double 0.000000e+00, double* %var_2_652, align 1
; Matched:%var_2_616:  %var_2_616 = load i64, i64* %RBP, align 8
; %var_2_653 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_617:  %var_2_617 = add i64 %var_2_616, -64
; %var_2_654 = add i64 %var_2_653, -64
; Matched:%var_2_618:  %var_2_618 = add i64 %var_2_611, 27
; %var_2_655 = add i64 %var_2_648, 27
; Matched:\<badref\>:  store i64 %var_2_45, i64* %PC, align 8
; store i64 %var_2_655, i64* %var_2_3, align 8
%var_2_656 = load <2 x i32>, <2 x i32>* %var_2_184, align 1
%var_2_657 = load <2 x i32>, <2 x i32>* %var_2_180, align 1
; Matched:%var_2_621:  %var_2_621 = inttoptr i64 %var_2_617 to i64*
; %var_2_658 = inttoptr i64 %var_2_654 to i64*
; Matched:%var_2_622:  %var_2_622 = load i64, i64* %var_2_621, align 8
; %var_2_659 = load i64, i64* %var_2_658, align 8
; Matched:%var_2_623:  %var_2_623 = sitofp i64 %var_2_622 to float
; %var_2_660 = sitofp i64 %var_2_659 to float
; Matched:\<badref\>:  store float %var_2_623, float* %var_2_90, align 1, !tbaa !1285
; store float %var_2_660, float* %var_2_99, align 1
%var_2_661 = extractelement <2 x i32> %var_2_656, i32 1
; Matched:\<badref\>:  store i32 %var_2_624, i32* %var_2_178, align 1, !tbaa !1285
; store i32 %var_2_661, i32* %var_2_181, align 1
%var_2_662 = extractelement <2 x i32> %var_2_657, i32 0
; Matched:\<badref\>:  store i32 %var_2_641, i32* %var_2_179, align 1, !tbaa !1285
; store i32 %var_2_662, i32* %var_2_182, align 1
%var_2_663 = extractelement <2 x i32> %var_2_657, i32 1
; Matched:\<badref\>:  store i32 %var_2_379, i32* %var_2_180, align 1, !tbaa !1285
; store i32 %var_2_663, i32* %var_2_183, align 1
%var_2_664 = load <2 x float>, <2 x float>* %var_2_130, align 1
%var_2_665 = extractelement <2 x float> %var_2_664, i32 0
; Matched:%var_2_629:  %var_2_629 = fpext float %var_2_628 to double
; %var_2_666 = fpext float %var_2_665 to double
; Matched:%var_2_630:  %var_2_630 = bitcast %union.VectorReg* %var_2_8 to double*
; %var_2_667 = bitcast %union.VectorReg* %var_2_93 to double*
; Matched:\<badref\>:  store double %var_2_629, double* %var_2_630, align 1, !tbaa !1288
; store double %var_2_666, double* %var_2_667, align 1
; Matched:%var_2_631:  %var_2_631 = bitcast i64 %var_2_613 to double
; %var_2_668 = bitcast i64 %var_2_650 to double
; Matched:%var_2_632:  %var_2_632 = fmul double %var_2_629, %var_2_631
; %var_2_669 = fmul double %var_2_666, %var_2_668
; Matched:\<badref\>:  store double %var_2_632, double* %var_2_171, align 1, !tbaa !1288
; store double %var_2_669, double* %var_2_174, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_84, align 1, !tbaa !1288
; store i64 0, i64* %var_2_89, align 1
; Matched:%var_2_633:  %var_2_633 = add i64 %var_2_616, -80
; %var_2_670 = add i64 %var_2_653, -80
; Matched:%var_2_634:  %var_2_634 = add i64 %var_2_611, 41
; %var_2_671 = add i64 %var_2_648, 41
; Matched:\<badref\>:  store i64 %var_2_634, i64* %PC, align 8
; store i64 %var_2_671, i64* %var_2_3, align 8
%var_2_672 = bitcast double %var_2_666 to <2 x i32>
%var_2_673 = load <2 x i32>, <2 x i32>* %var_2_180, align 1
; Matched:%var_2_637:  %var_2_637 = inttoptr i64 %var_2_633 to i64*
; %var_2_674 = inttoptr i64 %var_2_670 to i64*
; Matched:%var_2_638:  %var_2_638 = load i64, i64* %var_2_637, align 8
; %var_2_675 = load i64, i64* %var_2_674, align 8
; Matched:%var_2_639:  %var_2_639 = sitofp i64 %var_2_638 to float
; %var_2_676 = sitofp i64 %var_2_675 to float
; Matched:\<badref\>:  store float %var_2_639, float* %var_2_90, align 1, !tbaa !1285
; store float %var_2_676, float* %var_2_99, align 1
%var_2_677 = extractelement <2 x i32> %var_2_672, i32 1
; Matched:\<badref\>:  store i32 %var_2_640, i32* %var_2_178, align 1, !tbaa !1285
; store i32 %var_2_677, i32* %var_2_181, align 1
%var_2_678 = extractelement <2 x i32> %var_2_673, i32 0
; Matched:\<badref\>:  store i32 %var_2_625, i32* %var_2_179, align 1, !tbaa !1285
; store i32 %var_2_678, i32* %var_2_182, align 1
%var_2_679 = extractelement <2 x i32> %var_2_673, i32 1
; Matched:\<badref\>:  store i32 %var_2_642, i32* %var_2_180, align 1, !tbaa !1285
; store i32 %var_2_679, i32* %var_2_183, align 1
%var_2_680 = load <2 x float>, <2 x float>* %var_2_130, align 1
%var_2_681 = extractelement <2 x float> %var_2_680, i32 0
; Matched:%var_2_645:  %var_2_645 = fpext float %var_2_644 to double
; %var_2_682 = fpext float %var_2_681 to double
; Matched:\<badref\>:  store double %var_2_645, double* %var_2_630, align 1, !tbaa !1288
; store double %var_2_682, double* %var_2_667, align 1
; Matched:%var_2_646:  %var_2_646 = fdiv double %var_2_632, %var_2_645
; %var_2_683 = fdiv double %var_2_669, %var_2_682
%.cast = bitcast double %var_2_683 to <2 x i32>
; Matched:%var_2_647:  %var_2_647 = fptrunc double %var_2_646 to float
; %var_2_684 = fptrunc double %var_2_683 to float
; Matched:\<badref\>:  store float %var_2_647, float* %var_2_80, align 1, !tbaa !1285
; store float %var_2_684, float* %var_2_85, align 1
%var_2_685 = extractelement <2 x i32> %.cast, i32 1
; Matched:\<badref\>:  store i32 %var_2_648, i32* %var_2_168, align 1, !tbaa !1285
; store i32 %var_2_685, i32* %var_2_171, align 1
store i32 0, i32* %var_2_172, align 1
store i32 0, i32* %var_2_173, align 1
; Matched:%var_2_649:  %var_2_649 = add i64 %var_2_616, -48
; %var_2_686 = add i64 %var_2_653, -48
; Matched:%var_2_650:  %var_2_650 = add i64 %var_2_611, 58
; %var_2_687 = add i64 %var_2_648, 58
; Matched:\<badref\>:  store i64 %var_2_650, i64* %PC, align 8
; store i64 %var_2_687, i64* %var_2_3, align 8
%var_2_688 = load <2 x float>, <2 x float>* %var_2_138, align 1
%var_2_689 = extractelement <2 x float> %var_2_688, i32 0
; Matched:%var_2_653:  %var_2_653 = inttoptr i64 %var_2_649 to float*
; %var_2_690 = inttoptr i64 %var_2_686 to float*
; Matched:\<badref\>:  store float %var_2_652, float* %var_2_653, align 4
; store float %var_2_689, float* %var_2_690, align 4
; Matched:%var_2_654:  %var_2_654 = load i64, i64* %RBP, align 8
; %var_2_691 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_655:  %var_2_655 = add i64 %var_2_654, -48
; %var_2_692 = add i64 %var_2_691, -48
%var_2_693 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_126:  %var_2_126 = add i64 %var_2_125, 5
; %var_2_694 = add i64 %var_2_693, 5
; Matched:\<badref\>:  store i64 %var_2_126, i64* %PC, align 8
; store i64 %var_2_694, i64* %var_2_3, align 8
; Matched:%var_2_658:  %var_2_658 = inttoptr i64 %var_2_655 to float*
; %var_2_695 = inttoptr i64 %var_2_692 to float*
; Matched:%var_2_659:  %var_2_659 = load float, float* %var_2_658, align 4
; %var_2_696 = load float, float* %var_2_695, align 4
; Matched:%var_2_660:  %var_2_660 = fpext float %var_2_659 to double
; %var_2_697 = fpext float %var_2_696 to double
; Matched:\<badref\>:  store double %var_2_660, double* %var_2_171, align 1, !tbaa !1288
; store double %var_2_697, double* %var_2_174, align 1
; Matched:%var_2_661:  %var_2_661 = add i64 %var_2_654, -20
; %var_2_698 = add i64 %var_2_691, -20
; Matched:%var_2_662:  %var_2_662 = add i64 %var_2_656, 10
; %var_2_699 = add i64 %var_2_693, 10
; Matched:\<badref\>:  store i64 %var_2_662, i64* %PC, align 8
; store i64 %var_2_699, i64* %var_2_3, align 8
; Matched:%var_2_663:  %var_2_663 = inttoptr i64 %var_2_661 to float*
; %var_2_700 = inttoptr i64 %var_2_698 to float*
; Matched:%var_2_664:  %var_2_664 = load float, float* %var_2_663, align 4
; %var_2_701 = load float, float* %var_2_700, align 4
; Matched:%var_2_665:  %var_2_665 = fpext float %var_2_664 to double
; %var_2_702 = fpext float %var_2_701 to double
%var_2_703 = bitcast i64* %var_2_103 to <2 x i32>*
%var_2_704 = load <2 x i32>, <2 x i32>* %var_2_703, align 1
; Matched:%var_2_668:  %var_2_668 = load double, double* %var_2_172, align 1
; %var_2_705 = load double, double* %var_2_175, align 1
; Matched:%var_2_669:  %var_2_669 = fmul double %var_2_665, %var_2_668
; %var_2_706 = fmul double %var_2_702, %var_2_705
; Matched:\<badref\>:  store double %var_2_669, double* %var_2_630, align 1, !tbaa !1288
; store double %var_2_706, double* %var_2_667, align 1
; Matched:  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
; %R8.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
; Matched:%var_2_670:  %var_2_670 = add i64 %var_2_654, -80
; %var_2_707 = add i64 %var_2_691, -80
; Matched:%var_2_671:  %var_2_671 = add i64 %var_2_656, 18
; %var_2_708 = add i64 %var_2_693, 18
; Matched:\<badref\>:  store i64 %var_2_671, i64* %PC, align 8
; store i64 %var_2_708, i64* %var_2_3, align 8
; Matched:%var_2_672:  %var_2_672 = inttoptr i64 %var_2_670 to i64*
; %var_2_709 = inttoptr i64 %var_2_707 to i64*
; Matched:%var_2_673:  %var_2_673 = load i64, i64* %var_2_672, align 8
; %var_2_710 = load i64, i64* %var_2_709, align 8
; Matched:\<badref\>:  store i64 %var_2_673, i64* %R8, align 8, !tbaa !1261
; store i64 %var_2_710, i64* %R8.i, align 8
; Matched:%var_2_674:  %var_2_674 = and i64 %var_2_673, 4294967295
; %var_2_711 = and i64 %var_2_710, 4294967295
; Matched:\<badref\>:  store i64 %var_2_674, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_711, i64* %RCX.i78, align 8
%var_2_712 = bitcast double %var_2_697 to <2 x i32>
%var_2_713 = load <2 x i32>, <2 x i32>* %var_2_170, align 1
%var_2_714 = extractelement <2 x i32> %var_2_712, i32 0
; Matched:\<badref\>:  store i32 %var_2_677, i32* %var_2_71, align 1, !tbaa !1285
; store i32 %var_2_714, i32* %var_2_72, align 1
%var_2_715 = extractelement <2 x i32> %var_2_712, i32 1
; Matched:\<badref\>:  store i32 %var_2_678, i32* %var_2_174, align 1, !tbaa !1285
; store i32 %var_2_715, i32* %var_2_177, align 1
%var_2_716 = extractelement <2 x i32> %var_2_713, i32 0
; Matched:\<badref\>:  store i32 %var_2_679, i32* %var_2_175, align 1, !tbaa !1285
; store i32 %var_2_716, i32* %var_2_178, align 1
%var_2_717 = extractelement <2 x i32> %var_2_713, i32 1
; Matched:\<badref\>:  store i32 %var_2_680, i32* %var_2_176, align 1, !tbaa !1285
; store i32 %var_2_717, i32* %var_2_179, align 1
%var_2_718 = bitcast double %var_2_706 to <2 x i32>
%var_2_719 = extractelement <2 x i32> %var_2_718, i32 0
; Matched:\<badref\>:  store i32 %var_2_682, i32* %var_2_81, align 1, !tbaa !1285
; store i32 %var_2_719, i32* %var_2_86, align 1
%var_2_720 = extractelement <2 x i32> %var_2_718, i32 1
; Matched:\<badref\>:  store i32 %var_2_683, i32* %var_2_168, align 1, !tbaa !1285
; store i32 %var_2_720, i32* %var_2_171, align 1
%var_2_721 = extractelement <2 x i32> %var_2_704, i32 0
; Matched:\<badref\>:  store i32 %var_2_684, i32* %var_2_169, align 1, !tbaa !1285
; store i32 %var_2_721, i32* %var_2_172, align 1
%var_2_722 = extractelement <2 x i32> %var_2_704, i32 1
; Matched:\<badref\>:  store i32 %var_2_685, i32* %var_2_170, align 1, !tbaa !1285
; store i32 %var_2_722, i32* %var_2_173, align 1
; Matched:\<badref\>:  store i64 %var_2_674, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_711, i64* %RSI.i288, align 8
; Matched:%var_2_686:  %var_2_686 = add i64 %var_2_654, -116
; %var_2_723 = add i64 %var_2_691, -116
; Matched:%var_2_687:  %var_2_687 = load i32, i32* %EAX, align 4
; %var_2_724 = load i32, i32* %EAX.i250, align 4
; Matched:%var_2_108:  %var_2_108 = add i64 %var_2_68, 32
; %var_2_725 = add i64 %var_2_693, 32
; Matched:\<badref\>:  store i64 %var_2_108, i64* %PC, align 8
; store i64 %var_2_725, i64* %var_2_3, align 8
; Matched:%var_2_689:  %var_2_689 = inttoptr i64 %var_2_686 to i32*
; %var_2_726 = inttoptr i64 %var_2_723 to i32*
; Matched:\<badref\>:  store i32 %var_2_687, i32* %var_2_689, align 4
; store i32 %var_2_724, i32* %var_2_726, align 4
; Matched:%var_2_690:  %var_2_690 = load i64, i64* %PC, align 8
; %var_2_727 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i8 2, i8* %AL, align 1, !tbaa !1284
; store i8 2, i8* %AL.i283, align 1
; Matched:%var_2_691:  %var_2_691 = add i64 %var_2_690, -833
; %var_2_728 = add i64 %var_2_727, -833
; Matched:%var_2_692:  %var_2_692 = add i64 %var_2_690, 7
; %var_2_729 = add i64 %var_2_727, 7
; Matched:%var_2_63:  %var_2_63 = load i64, i64* %RSP, align 8, !tbaa !1261
; %var_2_730 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_608:  %var_2_608 = add i64 %var_2_607, -8
; %var_2_731 = add i64 %var_2_730, -8
; Matched:%var_2_695:  %var_2_695 = inttoptr i64 %var_2_694 to i64*
; %var_2_732 = inttoptr i64 %var_2_731 to i64*
; Matched:\<badref\>:  store i64 %var_2_692, i64* %var_2_695, align 8
; store i64 %var_2_729, i64* %var_2_732, align 8
; Matched:\<badref\>:  store i64 %var_2_608, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_731, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_691, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_728, i64* %var_2_3, align 8
%var_2_733 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %var_2_647)
%var_2_734 = load i64, i64* %var_2_3, align 8
  store i64 0, i64* %RCX.i78, align 8
; Matched:%var_2_698:  %var_2_698 = load i64, i64* %RBP, align 8
; %var_2_735 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_699:  %var_2_699 = add i64 %var_2_698, -120
; %var_2_736 = add i64 %var_2_735, -120
; Matched:%var_2_700:  %var_2_700 = load i32, i32* %EAX, align 4
; %var_2_737 = load i32, i32* %EAX.i250, align 4
; Matched:%var_2_224:  %var_2_224 = add i64 %var_2_220, 5
; %var_2_738 = add i64 %var_2_734, 5
; Matched:\<badref\>:  store i64 %var_2_224, i64* %PC, align 8
; store i64 %var_2_738, i64* %var_2_3, align 8
; Matched:%var_2_702:  %var_2_702 = inttoptr i64 %var_2_699 to i32*
; %var_2_739 = inttoptr i64 %var_2_736 to i32*
; Matched:\<badref\>:  store i32 %var_2_700, i32* %var_2_702, align 4
; store i32 %var_2_737, i32* %var_2_739, align 4
; Matched:%var_2_703:  %var_2_703 = load i32, i32* %ECX, align 4
; %var_2_740 = load i32, i32* %ECX.i69, align 4
; Matched:%var_2_704:  %var_2_704 = zext i32 %var_2_703 to i64
; %var_2_741 = zext i32 %var_2_740 to i64
%var_2_742 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_704, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_741, i64* %RAX.i113, align 8
; Matched:%var_2_706:  %var_2_706 = load i64, i64* %RSP, align 8
; %var_2_743 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_707:  %var_2_707 = add i64 %var_2_706, 128
; %var_2_744 = add i64 %var_2_743, 128
; Matched:\<badref\>:  store i64 %var_2_707, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_744, i64* %var_2_6, align 8
; Matched:%var_2_708:  %var_2_708 = icmp ugt i64 %var_2_706, -129
; %var_2_745 = icmp ugt i64 %var_2_743, -129
; Matched:%var_2_709:  %var_2_709 = zext i1 %var_2_708 to i8
; %var_2_746 = zext i1 %var_2_745 to i8
; Matched:\<badref\>:  store i8 %var_2_709, i8* %var_2_19, align 1, !tbaa !1265
; store i8 %var_2_746, i8* %var_2_14, align 1
; Matched:%var_2_710:  %var_2_710 = trunc i64 %var_2_707 to i32
; %var_2_747 = trunc i64 %var_2_744 to i32
; Matched:%var_2_711:  %var_2_711 = and i32 %var_2_710, 255
; %var_2_748 = and i32 %var_2_747, 255
; Matched:%var_2_712:  %var_2_712 = tail call i32 @llvm.ctpop.i32(i32 %var_2_711) #12
; %var_2_749 = tail call i32 @llvm.ctpop.i32(i32 %var_2_748)
; Matched:%var_2_713:  %var_2_713 = trunc i32 %var_2_712 to i8
; %var_2_750 = trunc i32 %var_2_749 to i8
; Matched:%var_2_714:  %var_2_714 = and i8 %var_2_713, 1
; %var_2_751 = and i8 %var_2_750, 1
; Matched:%var_2_715:  %var_2_715 = xor i8 %var_2_714, 1
; %var_2_752 = xor i8 %var_2_751, 1
; Matched:\<badref\>:  store i8 %var_2_715, i8* %var_2_26, align 1, !tbaa !1279
; store i8 %var_2_752, i8* %var_2_21, align 1
; Matched:%var_2_716:  %var_2_716 = xor i64 %var_2_707, %var_2_706
; %var_2_753 = xor i64 %var_2_744, %var_2_743
; Matched:%var_2_717:  %var_2_717 = lshr i64 %var_2_716, 4
; %var_2_754 = lshr i64 %var_2_753, 4
; Matched:%var_2_718:  %var_2_718 = trunc i64 %var_2_717 to i8
; %var_2_755 = trunc i64 %var_2_754 to i8
; Matched:%var_2_719:  %var_2_719 = and i8 %var_2_718, 1
; %var_2_756 = and i8 %var_2_755, 1
; Matched:\<badref\>:  store i8 %var_2_719, i8* %var_2_31, align 1, !tbaa !1280
; store i8 %var_2_756, i8* %var_2_26, align 1
; Matched:%var_2_720:  %var_2_720 = icmp eq i64 %var_2_707, 0
; %var_2_757 = icmp eq i64 %var_2_744, 0
; Matched:%var_2_721:  %var_2_721 = zext i1 %var_2_720 to i8
; %var_2_758 = zext i1 %var_2_757 to i8
; Matched:\<badref\>:  store i8 %var_2_721, i8* %var_2_34, align 1, !tbaa !1281
; store i8 %var_2_758, i8* %var_2_29, align 1
; Matched:%var_2_722:  %var_2_722 = lshr i64 %var_2_707, 63
; %var_2_759 = lshr i64 %var_2_744, 63
; Matched:%var_2_723:  %var_2_723 = trunc i64 %var_2_722 to i8
; %var_2_760 = trunc i64 %var_2_759 to i8
; Matched:\<badref\>:  store i8 %var_2_723, i8* %var_2_37, align 1, !tbaa !1282
; store i8 %var_2_760, i8* %var_2_32, align 1
; Matched:%var_2_724:  %var_2_724 = lshr i64 %var_2_706, 63
; %var_2_761 = lshr i64 %var_2_743, 63
; Matched:%var_2_725:  %var_2_725 = xor i64 %var_2_722, %var_2_724
; %var_2_762 = xor i64 %var_2_759, %var_2_761
; Matched:%var_2_726:  %var_2_726 = add nuw nsw i64 %var_2_725, %var_2_722
; %var_2_763 = add nuw nsw i64 %var_2_762, %var_2_759
; Matched:%var_2_727:  %var_2_727 = icmp eq i64 %var_2_726, 2
; %var_2_764 = icmp eq i64 %var_2_763, 2
; Matched:%var_2_728:  %var_2_728 = zext i1 %var_2_727 to i8
; %var_2_765 = zext i1 %var_2_764 to i8
; Matched:\<badref\>:  store i8 %var_2_728, i8* %var_2_43, align 1, !tbaa !1283
; store i8 %var_2_765, i8* %var_2_38, align 1
; Matched:%var_2_729:  %var_2_729 = add i64 %var_2_705, 10
; %var_2_766 = add i64 %var_2_742, 10
; Matched:\<badref\>:  store i64 %var_2_729, i64* %PC, align 8
; store i64 %var_2_766, i64* %var_2_3, align 8
; Matched:%var_2_730:  %var_2_730 = add i64 %var_2_706, 136
; %var_2_767 = add i64 %var_2_743, 136
; Matched:%var_2_731:  %var_2_731 = inttoptr i64 %var_2_707 to i64*
; %var_2_768 = inttoptr i64 %var_2_744 to i64*
; Matched:%var_2_732:  %var_2_732 = load i64, i64* %var_2_731, align 8
; %var_2_769 = load i64, i64* %var_2_768, align 8
; Matched:\<badref\>:  store i64 %var_2_732, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_769, i64* %RBP.i, align 8
; Matched:\<badref\>:  store i64 %var_2_730, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_767, i64* %var_2_6, align 8
; Matched:%var_2_733:  %var_2_733 = add i64 %var_2_705, 11
; %var_2_770 = add i64 %var_2_742, 11
; Matched:\<badref\>:  store i64 %var_2_733, i64* %PC, align 8
; store i64 %var_2_770, i64* %var_2_3, align 8
; Matched:%var_2_734:  %var_2_734 = inttoptr i64 %var_2_730 to i64*
; %var_2_771 = inttoptr i64 %var_2_767 to i64*
; Matched:%var_2_735:  %var_2_735 = load i64, i64* %var_2_734, align 8
; %var_2_772 = load i64, i64* %var_2_771, align 8
; Matched:\<badref\>:  store i64 %var_2_735, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_772, i64* %var_2_3, align 8
; Matched:%var_2_736:  %var_2_736 = add i64 %var_2_706, 144
; %var_2_773 = add i64 %var_2_743, 144
; Matched:\<badref\>:  store i64 %var_2_736, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_773, i64* %var_2_6, align 8
ret %struct.Memory* %var_2_733
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
define %struct.Memory* @routine_subq__0x80___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -128
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 128
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
define %struct.Memory* @routine_movq__0x400828___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400828_type* @G__0x400828 to i64), i64* %RAX, align 8
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
define %struct.Memory* @routine_movq__rax___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
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
define %struct.Memory* @routine_movss_0x27f__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x27f__rip__type* @G_0x27f__rip_ to i64)
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
define %struct.Memory* @routine_movss_0x27b__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x27b__rip__type* @G_0x27b__rip_ to i64)
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
define %struct.Memory* @routine_movss_0x277__rip____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x277__rip__type* @G_0x277__rip_ to i64)
  %7 = add i64 %5, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_xorps__xmm3___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm3__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
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
define %struct.Memory* @routine_movq__0x1__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 1, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x773__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 1907, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm2__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
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
define %struct.Memory* @routine_movss__xmm1__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
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
define %struct.Memory* @routine_movq__0x2625a00__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 40000000, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x1__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 1, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x64__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -100
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq_MINUS0x50__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = sub i64 %3, %9
  %11 = icmp ult i64 %3, %9
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = trunc i64 %10 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %9, %3
  %22 = xor i64 %21, %10
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %10, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %10, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %3, 63
  %34 = lshr i64 %9, 63
  %35 = xor i64 %34, %33
  %36 = xor i64 %30, %33
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_4006de(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x14__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x2c__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x233__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x233__rip__type* @G_0x233__rip_ to i64)
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
define %struct.Memory* @routine_movl__0x1228f___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 74383, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x6bdb__MINUS0x48__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = sext i64 %8 to i128
  %10 = and i128 %9, -18446744073709551616
  %11 = zext i64 %8 to i128
  %12 = or i128 %10, %11
  %13 = mul nsw i128 %12, 27611
  %14 = trunc i128 %13 to i64
  store i64 %14, i64* %RDX, align 8
  %15 = sext i64 %14 to i128
  %16 = icmp ne i128 %15, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = trunc i128 %13 to i32
  %20 = and i32 %19, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %27, align 1
  %28 = lshr i64 %14, 63
  %29 = trunc i64 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %17, i8* %31, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x60__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cqto(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = ashr i64 %7, 63
  store i64 %8, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivq__rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = sext i64 %3 to i128
  %11 = and i128 %10, -18446744073709551616
  %12 = zext i64 %9 to i128
  %13 = shl nuw i128 %12, 64
  %14 = zext i64 %7 to i128
  %15 = or i128 %13, %14
  %16 = zext i64 %3 to i128
  %17 = or i128 %11, %16
  %18 = sdiv i128 %15, %17
  %19 = trunc i128 %18 to i64
  %20 = and i128 %18, 18446744073709551615
  %21 = sext i64 %19 to i128
  %22 = and i128 %21, -18446744073709551616
  %23 = or i128 %22, %20
  %24 = icmp eq i128 %18, %23
  br i1 %24, label %27, label %25

; <label>:25:                                     ; preds = %block_400488
  %26 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

; <label>:27:                                     ; preds = %block_400488
  %28 = srem i128 %15, %17
  %29 = trunc i128 %28 to i64
  store i64 %19, i64* %6, align 8
  store i64 %29, i64* %8, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit: ; preds = %27, %25
  %36 = phi %struct.Memory* [ %26, %25 ], [ %2, %27 ]
  ret %struct.Memory* %36
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x1228f___rax___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 74383
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RAX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %24, align 1
  %25 = lshr i64 %11, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %28, align 1
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
define %struct.Memory* @routine_subq__rax___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sub i64 %3, %4
  store i64 %7, i64* %RCX, align 8
  %8 = icmp ult i64 %3, %4
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
  %18 = xor i64 %4, %3
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
  %31 = lshr i64 %4, 63
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
define %struct.Memory* @routine_movq__rcx__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssq_MINUS0x48__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -72
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
define %struct.Memory* @routine_cvtss2sd__xmm1___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  %9 = fpext float %8 to double
  %10 = bitcast %union.VectorReg* %3 to double*
  store double %9, double* %10, align 1
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
define %struct.Memory* @routine_cvtsd2ss__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast [32 x %union.VectorReg]* %3 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to double*
  %14 = load double, double* %13, align 1
  %15 = fptrunc double %14 to float
  %16 = bitcast [32 x %union.VectorReg]* %3 to float*
  store float %15, float* %16, align 1
  %17 = extractelement <2 x i32> %9, i32 1
  %18 = getelementptr inbounds i8, i8* %5, i64 4
  %19 = bitcast i8* %18 to i32*
  store i32 %17, i32* %19, align 1
  %20 = extractelement <2 x i32> %12, i32 0
  %21 = bitcast i64* %10 to i32*
  store i32 %20, i32* %21, align 1
  %22 = extractelement <2 x i32> %12, i32 1
  %23 = getelementptr inbounds i8, i8* %5, i64 12
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
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
define %struct.Memory* @routine_movss_MINUS0x1c__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -28
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulss_MINUS0x18__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -24
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fmul float %16, %15
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %10 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 0
  %24 = bitcast i64* %11 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %13, i32 1
  %26 = getelementptr inbounds i8, i8* %4, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
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
define %struct.Memory* @routine_movss_MINUS0x34__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -52
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x20__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -32
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x34__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -52
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divss_MINUS0x20__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -32
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fdiv float %16, %15
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %10 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 0
  %24 = bitcast i64* %11 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %13, i32 1
  %26 = getelementptr inbounds i8, i8* %4, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttss2si__xmm2___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  %9 = tail call float @llvm.trunc.f32(float %8)
  %10 = fptosi float %9 to i64
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssq__rax___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = sitofp i64 %5 to float
  %14 = bitcast %union.VectorReg* %3 to float*
  store float %13, float* %14, align 1
  %15 = extractelement <2 x i32> %9, i32 1
  %16 = getelementptr inbounds i8, i8* %4, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %12, i32 0
  %19 = bitcast i64* %10 to i32*
  store i32 %18, i32* %19, align 1
  %20 = extractelement <2 x i32> %12, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 12
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulss__xmm2___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
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
define %struct.Memory* @routine_subss__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast [32 x %union.VectorReg]* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 1
  %15 = extractelement <2 x float> %9, i32 0
  %16 = extractelement <2 x float> %14, i32 0
  %17 = fsub float %15, %16
  %18 = bitcast [32 x %union.VectorReg]* %3 to float*
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
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
define %struct.Memory* @routine_movss_MINUS0x18__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -24
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divss_MINUS0x20__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -32
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fdiv float %16, %15
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %10 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 0
  %24 = bitcast i64* %11 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %13, i32 1
  %26 = getelementptr inbounds i8, i8* %4, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
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
define %struct.Memory* @routine_movss_MINUS0x24__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -36
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulss_MINUS0x24__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -36
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fmul float %16, %15
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %10 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 0
  %24 = bitcast i64* %11 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %13, i32 1
  %26 = getelementptr inbounds i8, i8* %4, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x28__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -40
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulss_MINUS0x28__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -40
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fmul float %16, %15
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %10 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 0
  %24 = bitcast i64* %11 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %13, i32 1
  %26 = getelementptr inbounds i8, i8* %4, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast [32 x %union.VectorReg]* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 1
  %15 = extractelement <2 x float> %9, i32 0
  %16 = extractelement <2 x float> %14, i32 0
  %17 = fadd float %15, %16
  %18 = bitcast [32 x %union.VectorReg]* %3 to float*
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
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
define %struct.Memory* @routine_callq_.myadd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x16b__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%G_0x16b__rip__type* @G_0x16b__rip_ to i64), i64 163) to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0x2c__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
define %struct.Memory* @routine_jb_.L_4006c8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x1___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1
  store i64 %6, i64* %RAX, align 8
  %7 = icmp eq i64 %3, -1
  %8 = icmp eq i64 %6, 0
  %9 = or i1 %7, %8
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i64 %6, %3
  %20 = lshr i64 %19, 4
  %21 = trunc i64 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = zext i1 %8 to i8
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
define %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4006cd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4005cf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x400838___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400838_type* @G__0x400838 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0x24__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0x28__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x400865___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400865_type* @G__0x400865 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movsd_0xf4__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%G_0xf4__rip__type* @G_0xf4__rip_ to i64), i64 44) to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssq_MINUS0x40__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
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
define %struct.Memory* @routine_cvtss2sd__xmm2___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  %9 = fpext float %8 to double
  %10 = bitcast %union.VectorReg* %3 to double*
  store double %9, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd__xmm2___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssq_MINUS0x50__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -80
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
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
define %struct.Memory* @routine_divsd__xmm2___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fdiv double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsd2ss__xmm1___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %8 = load <2 x i32>, <2 x i32>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to <2 x i32>*
  %11 = load <2 x i32>, <2 x i32>* %10, align 1
  %.cast = bitcast <2 x i32> %8 to double
  %12 = fptrunc double %.cast to float
  %13 = bitcast %union.VectorReg* %3 to float*
  store float %12, float* %13, align 1
  %14 = extractelement <2 x i32> %8, i32 1
  %15 = getelementptr inbounds i8, i8* %4, i64 4
  %16 = bitcast i8* %15 to i32*
  store i32 %14, i32* %16, align 1
  %17 = extractelement <2 x i32> %11, i32 0
  %18 = bitcast i64* %9 to i32*
  store i32 %17, i32* %18, align 1
  %19 = extractelement <2 x i32> %11, i32 1
  %20 = getelementptr inbounds i8, i8* %4, i64 12
  %21 = bitcast i8* %20 to i32*
  store i32 %19, i32* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm1__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
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
define %struct.Memory* @routine_cvtss2sd_MINUS0x30__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0x14__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
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
define %struct.Memory* @routine_movq_MINUS0x50__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %R8D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x74__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -116
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl__eax__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -120
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
define %struct.Memory* @routine_addq__0x80___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 128
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -129
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
