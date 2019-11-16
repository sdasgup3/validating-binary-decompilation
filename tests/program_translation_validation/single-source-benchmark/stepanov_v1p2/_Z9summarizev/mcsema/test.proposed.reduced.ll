; ModuleID = '/tmp/tmpxj9lk20b-query.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x2002__rip__type = type <{ [8 x i8] }>
%G_0x203d__rip__type = type <{ [8 x i8] }>
%G_0x2071__rip__type = type <{ [8 x i8] }>
%G_0x20a6__rip__type = type <{ [8 x i8] }>
%G_0x20d1__rip__type = type <{ [8 x i8] }>
%G_0x2209__rip__type = type <{ [8 x i8] }>
%G_0x2243__rip__type = type <{ [8 x i8] }>
%G_0x605050_type = type <{ [4 x i8] }>
%G_0x605090_type = type <{ [4 x i8] }>
%G_0x6050a0_type = type <{ [8 x i8] }>
%G__0x402d58_type = type <{ [8 x i8] }>
%G__0x402d89_type = type <{ [8 x i8] }>
%G__0x402db5_type = type <{ [8 x i8] }>
%G__0x402de0_type = type <{ [8 x i8] }>
%G__0x402e0a_type = type <{ [8 x i8] }>
%G__0x402e2a_type = type <{ [8 x i8] }>
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
@G_0x2002__rip_ = global %G_0x2002__rip__type zeroinitializer
@G_0x203d__rip_ = global %G_0x203d__rip__type zeroinitializer
@G_0x2071__rip_ = global %G_0x2071__rip__type zeroinitializer
@G_0x20a6__rip_ = global %G_0x20a6__rip__type zeroinitializer
@G_0x20d1__rip_ = global %G_0x20d1__rip__type zeroinitializer
@G_0x2209__rip_ = global %G_0x2209__rip__type zeroinitializer
@G_0x2243__rip_ = global %G_0x2243__rip__type zeroinitializer
@G_0x605050 = local_unnamed_addr global %G_0x605050_type zeroinitializer
@G_0x605090 = local_unnamed_addr global %G_0x605090_type zeroinitializer
@G_0x6050a0 = local_unnamed_addr global %G_0x6050a0_type zeroinitializer
@G__0x402d58 = global %G__0x402d58_type zeroinitializer
@G__0x402d89 = global %G__0x402d89_type zeroinitializer
@G__0x402db5 = global %G__0x402db5_type zeroinitializer
@G__0x402de0 = global %G__0x402de0_type zeroinitializer
@G__0x402e0a = global %G__0x402e0a_type zeroinitializer
@G__0x402e2a = global %G__0x402e2a_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @exp(i64)

declare extern_weak x86_64_sysvcc i64 @log(i64)

declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @_Z9summarizev(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
entry:
%var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
; Matched:%var_2_8:  %var_2_8 = load i64, i64* %RBP, align 8
; %var_2_4 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_9:  %var_2_9 = add i64 %1, 1
; %var_2_5 = add i64 %1, 1
; Matched:\<badref\>:  store i64 %var_2_9, i64* %PC, align 8
; store i64 %var_2_5, i64* %var_2_3, align 8
%var_2_6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
; Matched:%var_2_10:  %var_2_10 = load i64, i64* %RSP, align 8, !tbaa !1261
; %var_2_7 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_11:  %var_2_11 = add i64 %var_2_10, -8
; %var_2_8 = add i64 %var_2_7, -8
; Matched:%var_2_12:  %var_2_12 = inttoptr i64 %var_2_11 to i64*
; %var_2_9 = inttoptr i64 %var_2_8 to i64*
; Matched:\<badref\>:  store i64 %var_2_8, i64* %var_2_12, align 8
; store i64 %var_2_4, i64* %var_2_9, align 8
; Matched:%var_2_13:  %var_2_13 = load i64, i64* %PC, align 8
; %var_2_10 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_11, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_8, i64* %RBP.i, align 8
; Matched:%var_2_14:  %var_2_14 = add i64 %var_2_10, -120
; %var_2_11 = add i64 %var_2_7, -120
; Matched:%var_2_15:  %var_2_15 = icmp ult i64 %var_2_11, 112
; %var_2_12 = icmp ult i64 %var_2_8, 112
; Matched:%var_2_16:  %var_2_16 = zext i1 %var_2_15 to i8
; %var_2_13 = zext i1 %var_2_12 to i8
; Matched:%var_2_17:  %var_2_17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
; %var_2_14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
; Matched:\<badref\>:  store i8 %var_2_16, i8* %var_2_17, align 1, !tbaa !1265
; store i8 %var_2_13, i8* %var_2_14, align 1
; Matched:%var_2_18:  %var_2_18 = trunc i64 %var_2_14 to i32
; %var_2_15 = trunc i64 %var_2_11 to i32
; Matched:%var_2_19:  %var_2_19 = and i32 %var_2_18, 255
; %var_2_16 = and i32 %var_2_15, 255
; Matched:%var_2_20:  %var_2_20 = tail call i32 @llvm.ctpop.i32(i32 %var_2_19) #12
; %var_2_17 = tail call i32 @llvm.ctpop.i32(i32 %var_2_16)
; Matched:%var_2_21:  %var_2_21 = trunc i32 %var_2_20 to i8
; %var_2_18 = trunc i32 %var_2_17 to i8
; Matched:%var_2_22:  %var_2_22 = and i8 %var_2_21, 1
; %var_2_19 = and i8 %var_2_18, 1
; Matched:%var_2_23:  %var_2_23 = xor i8 %var_2_22, 1
; %var_2_20 = xor i8 %var_2_19, 1
; Matched:%var_2_24:  %var_2_24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
; %var_2_21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
; Matched:\<badref\>:  store i8 %var_2_23, i8* %var_2_24, align 1, !tbaa !1279
; store i8 %var_2_20, i8* %var_2_21, align 1
; Matched:%var_2_25:  %var_2_25 = xor i64 %var_2_11, 16
; %var_2_22 = xor i64 %var_2_8, 16
; Matched:%var_2_26:  %var_2_26 = xor i64 %var_2_25, %var_2_14
; %var_2_23 = xor i64 %var_2_22, %var_2_11
; Matched:%var_2_27:  %var_2_27 = lshr i64 %var_2_26, 4
; %var_2_24 = lshr i64 %var_2_23, 4
; Matched:%var_2_28:  %var_2_28 = trunc i64 %var_2_27 to i8
; %var_2_25 = trunc i64 %var_2_24 to i8
; Matched:%var_2_29:  %var_2_29 = and i8 %var_2_28, 1
; %var_2_26 = and i8 %var_2_25, 1
; Matched:%var_2_30:  %var_2_30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
; %var_2_27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
; Matched:\<badref\>:  store i8 %var_2_29, i8* %var_2_30, align 1, !tbaa !1280
; store i8 %var_2_26, i8* %var_2_27, align 1
; Matched:%var_2_31:  %var_2_31 = icmp eq i64 %var_2_14, 0
; %var_2_28 = icmp eq i64 %var_2_11, 0
; Matched:%var_2_32:  %var_2_32 = zext i1 %var_2_31 to i8
; %var_2_29 = zext i1 %var_2_28 to i8
; Matched:%var_2_33:  %var_2_33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
; %var_2_30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
; Matched:\<badref\>:  store i8 %var_2_32, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_29, i8* %var_2_30, align 1
; Matched:%var_2_34:  %var_2_34 = lshr i64 %var_2_14, 63
; %var_2_31 = lshr i64 %var_2_11, 63
; Matched:%var_2_35:  %var_2_35 = trunc i64 %var_2_34 to i8
; %var_2_32 = trunc i64 %var_2_31 to i8
; Matched:%var_2_36:  %var_2_36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
; %var_2_33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
; Matched:\<badref\>:  store i8 %var_2_35, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_32, i8* %var_2_33, align 1
; Matched:%var_2_37:  %var_2_37 = lshr i64 %var_2_11, 63
; %var_2_34 = lshr i64 %var_2_8, 63
; Matched:%var_2_38:  %var_2_38 = xor i64 %var_2_34, %var_2_37
; %var_2_35 = xor i64 %var_2_31, %var_2_34
; Matched:%var_2_39:  %var_2_39 = add nuw nsw i64 %var_2_38, %var_2_37
; %var_2_36 = add nuw nsw i64 %var_2_35, %var_2_34
; Matched:%var_2_40:  %var_2_40 = icmp eq i64 %var_2_39, 2
; %var_2_37 = icmp eq i64 %var_2_36, 2
; Matched:%var_2_41:  %var_2_41 = zext i1 %var_2_40 to i8
; %var_2_38 = zext i1 %var_2_37 to i8
; Matched:%var_2_42:  %var_2_42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; %var_2_39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; Matched:\<badref\>:  store i8 %var_2_41, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_38, i8* %var_2_39, align 1
; Matched:  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
; %RDI.i30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
; Matched:\<badref\>:  store i64 add (i64 ptrtoint (%seg_402d20__rodata_type* @seg_402d20__rodata to i64), i64 266), i64* %RDI, align 8, !tbaa !1261
; store i64 ptrtoint (%G__0x402d58_type* @G__0x402d58 to i64), i64* %RDI.i30, align 8
; Matched:%var_2_3:  %var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
; %var_2_40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
; Matched:  %AL = bitcast %union.anon* %var_2_3 to i8*
; %AL.i45 = bitcast %union.anon* %var_2_40 to i8*
; Matched:\<badref\>:  store i8 1, i8* %AL, align 1, !tbaa !1284
; store i8 0, i8* %AL.i45, align 1
; Matched:%var_2_43:  %var_2_43 = add i64 %var_2_13, -1393
; %var_2_41 = add i64 %var_2_10, -1393
; Matched:%var_2_44:  %var_2_44 = add i64 %var_2_13, 24
; %var_2_42 = add i64 %var_2_10, 24
; Matched:%var_2_45:  %var_2_45 = add i64 %var_2_10, -128
; %var_2_43 = add i64 %var_2_7, -128
; Matched:%var_2_46:  %var_2_46 = inttoptr i64 %var_2_45 to i64*
; %var_2_44 = inttoptr i64 %var_2_43 to i64*
; Matched:\<badref\>:  store i64 %var_2_44, i64* %var_2_46, align 8
; store i64 %var_2_42, i64* %var_2_44, align 8
; Matched:\<badref\>:  store i64 %var_2_45, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_43, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_43, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_41, i64* %var_2_3, align 8
%var_2_45 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %2)
%var_2_46 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 add (i64 ptrtoint (%seg_402d20__rodata_type* @seg_402d20__rodata to i64), i64 56), i64* %RDI, align 8, !tbaa !1261
; store i64 ptrtoint (%G__0x402d89_type* @G__0x402d89 to i64), i64* %RDI.i30, align 8
; Matched:  %EAX = bitcast %union.anon* %var_2_3 to i32*
; %EAX.i112 = bitcast %union.anon* %var_2_40 to i32*
; Matched:%var_2_49:  %var_2_49 = load i64, i64* %RBP, align 8
; %var_2_47 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_50:  %var_2_50 = add i64 %var_2_49, -52
; %var_2_48 = add i64 %var_2_47, -52
; Matched:%var_2_51:  %var_2_51 = load i32, i32* %EAX, align 4
; %var_2_49 = load i32, i32* %EAX.i112, align 4
; Matched:%var_2_52:  %var_2_52 = add i64 %var_2_48, 13
; %var_2_50 = add i64 %var_2_46, 13
; Matched:\<badref\>:  store i64 %var_2_535, i64* %PC, align 8
; store i64 %var_2_50, i64* %var_2_3, align 8
; Matched:%var_2_53:  %var_2_53 = inttoptr i64 %var_2_50 to i32*
; %var_2_51 = inttoptr i64 %var_2_48 to i32*
; Matched:\<badref\>:  store i32 %var_2_51, i32* %var_2_53, align 4
; store i32 %var_2_49, i32* %var_2_51, align 4
; Matched:%var_2_54:  %var_2_54 = load i64, i64* %PC, align 8
; %var_2_52 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i8 1, i8* %AL, align 1, !tbaa !1284
; store i8 0, i8* %AL.i45, align 1
; Matched:%var_2_55:  %var_2_55 = add i64 %var_2_54, -1430
; %var_2_53 = add i64 %var_2_52, -1430
; Matched:%var_2_56:  %var_2_56 = add i64 %var_2_54, 7
; %var_2_54 = add i64 %var_2_52, 7
%var_2_55 = load i64, i64* %var_2_6, align 8
%var_2_56 = add i64 %var_2_55, -8
; Matched:%var_2_439:  %var_2_439 = inttoptr i64 %var_2_438 to i64*
; %var_2_57 = inttoptr i64 %var_2_56 to i64*
; Matched:\<badref\>:  store i64 %var_2_436, i64* %var_2_439, align 8
; store i64 %var_2_54, i64* %var_2_57, align 8
; Matched:\<badref\>:  store i64 %var_2_329, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_56, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_55, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_53, i64* %var_2_3, align 8
%var_2_58 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %var_2_45)
%var_2_59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
%var_2_60 = bitcast [32 x %union.VectorReg]* %var_2_59 to i8*
%var_2_61 = load i64, i64* %var_2_3, align 8
%var_2_62 = add i64 %var_2_61, ptrtoint (%G_0x2243__rip__type* @G_0x2243__rip_ to i64)
; Matched:%var_2_409:  %var_2_409 = add i64 %var_2_400, 8
; %var_2_63 = add i64 %var_2_61, 8
; Matched:\<badref\>:  store i64 %var_2_409, i64* %PC, align 8
; store i64 %var_2_63, i64* %var_2_3, align 8
%var_2_64 = inttoptr i64 %var_2_62 to i64*
%var_2_65 = load i64, i64* %var_2_64, align 8
%var_2_66 = bitcast [32 x %union.VectorReg]* %var_2_59 to double*
%var_2_67 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %var_2_59, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
store i64 %var_2_65, i64* %var_2_67, align 1
%var_2_68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
%var_2_69 = bitcast i64* %var_2_68 to double*
store double 0.000000e+00, double* %var_2_69, align 1
%var_2_70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
%var_2_71 = bitcast %union.VectorReg* %var_2_70 to i8*
%var_2_72 = add i64 %var_2_61, add (i64 ptrtoint (%G_0x2243__rip__type* @G_0x2243__rip_ to i64), i64 8)
%var_2_73 = add i64 %var_2_61, 16
store i64 %var_2_73, i64* %var_2_3, align 8
%var_2_74 = inttoptr i64 %var_2_72 to double*
%var_2_75 = load double, double* %var_2_74, align 8
%var_2_76 = bitcast %union.VectorReg* %var_2_70 to double*
%var_2_77 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_70, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:%var_2_72:  %var_2_72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
; %var_2_78 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_99:  %var_2_99 = bitcast i64* %var_2_72 to i32*
; %var_2_79 = bitcast i64* %var_2_78 to double*
%var_2_80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
%var_2_81 = bitcast %union.VectorReg* %var_2_80 to i8*
%var_2_82 = load i32, i32* bitcast (%G_0x605050_type* @G_0x605050 to i32*), align 8
%var_2_83 = sitofp i32 %var_2_82 to double
%var_2_84 = bitcast %union.VectorReg* %var_2_80 to double*
; Matched:\<badref\>:  store double %var_2_342, double* %var_2_77, align 1, !tbaa !1285
; store double %var_2_83, double* %var_2_84, align 1
%var_2_85 = fmul double %var_2_83, %var_2_75
%var_2_86 = bitcast i64 %var_2_65 to double
%var_2_87 = fdiv double %var_2_85, %var_2_86
store double %var_2_87, double* %var_2_76, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_72, align 1, !tbaa !1285
; store i64 0, i64* %var_2_78, align 1
%var_2_88 = load i64, i64* %RBP.i, align 8
%var_2_89 = add i64 %var_2_88, -16
; Matched:%var_2_83:  %var_2_83 = add i64 %var_2_62, 38
; %var_2_90 = add i64 %var_2_61, 38
; Matched:\<badref\>:  store i64 %var_2_83, i64* %PC, align 8
; store i64 %var_2_90, i64* %var_2_3, align 8
%var_2_91 = inttoptr i64 %var_2_89 to double*
store double %var_2_87, double* %var_2_91, align 8
%var_2_92 = load i64, i64* %RBP.i, align 8
%var_2_93 = add i64 %var_2_92, -4
; Matched:%var_2_247:  %var_2_247 = load i64, i64* %PC, align 8
; %var_2_94 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_88:  %var_2_88 = add i64 %var_2_87, 7
; %var_2_95 = add i64 %var_2_94, 7
; Matched:\<badref\>:  store i64 %var_2_88, i64* %PC, align 8
; store i64 %var_2_95, i64* %var_2_3, align 8
%var_2_96 = inttoptr i64 %var_2_93 to i32*
store i32 0, i32* %var_2_96, align 4
; Matched:%var_2_90:  %var_2_90 = load i64, i64* %RBP, align 8
; %var_2_97 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_91:  %var_2_91 = add i64 %var_2_90, -56
; %var_2_98 = add i64 %var_2_97, -56
; Matched:%var_2_92:  %var_2_92 = load i32, i32* %EAX, align 4
; %var_2_99 = load i32, i32* %EAX.i112, align 4
%var_2_100 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_94:  %var_2_94 = add i64 %var_2_93, 3
; %var_2_101 = add i64 %var_2_100, 3
; Matched:\<badref\>:  store i64 %var_2_475, i64* %PC, align 8
; store i64 %var_2_101, i64* %var_2_3, align 8
; Matched:%var_2_95:  %var_2_95 = inttoptr i64 %var_2_91 to i32*
; %var_2_102 = inttoptr i64 %var_2_98 to i32*
; Matched:\<badref\>:  store i32 %var_2_92, i32* %var_2_95, align 4
; store i32 %var_2_99, i32* %var_2_102, align 4
; Matched:  %RAX = getelementptr inbounds %union.anon, %union.anon* %var_2_3, i64 0, i32 0
; %RAX.i281 = getelementptr inbounds %union.anon, %union.anon* %var_2_40, i64 0, i32 0
; Matched:  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
; %RSI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
%var_2_103 = bitcast %union.VectorReg* %var_2_70 to i32*
%var_2_104 = getelementptr inbounds i8, i8* %var_2_71, i64 4
%var_2_105 = bitcast i8* %var_2_104 to i32*
; Matched:%var_2_73:  %var_2_73 = bitcast i64* %var_2_72 to double*
; %var_2_106 = bitcast i64* %var_2_78 to i32*
; Matched:%var_2_100:  %var_2_100 = getelementptr inbounds i8, i8* %var_2_68, i64 12
; %var_2_107 = getelementptr inbounds i8, i8* %var_2_71, i64 12
; Matched:%var_2_101:  %var_2_101 = bitcast i8* %var_2_100 to i32*
; %var_2_108 = bitcast i8* %var_2_107 to i32*
; Matched:%var_2_102:  %var_2_102 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_6, i64 0, i32 0, i32 0, i32 0, i64 0
; %var_2_109 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_80, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:%var_2_103:  %var_2_103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
; %var_2_110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_104:  %var_2_104 = bitcast i64* %var_2_103 to double*
; %var_2_111 = bitcast i64* %var_2_110 to double*
%var_2_112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
%var_2_113 = bitcast %union.VectorReg* %var_2_112 to double*
; Matched:%var_2_106:  %var_2_106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
; %var_2_114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
%var_2_115 = bitcast %union.VectorReg* %var_2_70 to <2 x i32>*
%var_2_116 = bitcast i64* %var_2_78 to <2 x i32>*
%var_2_117 = bitcast [32 x %union.VectorReg]* %var_2_59 to i32*
%var_2_118 = getelementptr inbounds i8, i8* %var_2_60, i64 4
%var_2_119 = bitcast i8* %var_2_118 to i32*
; Matched:%var_2_112:  %var_2_112 = bitcast i64* %var_2_66 to i32*
; %var_2_120 = bitcast i64* %var_2_68 to i32*
; Matched:%var_2_113:  %var_2_113 = getelementptr inbounds i8, i8* %var_2_61, i64 12
; %var_2_121 = getelementptr inbounds i8, i8* %var_2_60, i64 12
; Matched:%var_2_114:  %var_2_114 = bitcast i8* %var_2_113 to i32*
; %var_2_122 = bitcast i8* %var_2_121 to i32*
%var_2_123 = bitcast %union.VectorReg* %var_2_80 to i32*
%var_2_124 = getelementptr inbounds i8, i8* %var_2_81, i64 4
%var_2_125 = bitcast i8* %var_2_124 to i32*
; Matched:%var_2_118:  %var_2_118 = bitcast i64* %var_2_103 to i32*
; %var_2_126 = bitcast i64* %var_2_110 to i32*
; Matched:%var_2_119:  %var_2_119 = getelementptr inbounds i8, i8* %var_2_74, i64 12
; %var_2_127 = getelementptr inbounds i8, i8* %var_2_81, i64 12
; Matched:%var_2_120:  %var_2_120 = bitcast i8* %var_2_119 to i32*
; %var_2_128 = bitcast i8* %var_2_127 to i32*
%.pre = load i64, i64* %var_2_3, align 8
%var_2_129 = bitcast i64* %var_2_78 to <2 x i32>*
  br label %block_.L_400b0d

block_.L_400b0d:                                  ; preds = %block_400b1d, %entry
%var_2_130 = phi i64 [ %.pre, %entry ], [ %var_2_267, %block_400b1d ]
%MEMORY.0 = phi %struct.Memory* [ %var_2_58, %entry ], [ %var_2_229, %block_400b1d ]
%var_2_131 = load i64, i64* %RBP.i, align 8
%var_2_132 = add i64 %var_2_131, -4
; Matched:%var_2_288:  %var_2_288 = add i64 %var_2_285, 3
; %var_2_133 = add i64 %var_2_130, 3
; Matched:\<badref\>:  store i64 %var_2_288, i64* %PC, align 8
; store i64 %var_2_133, i64* %var_2_3, align 8
%var_2_134 = inttoptr i64 %var_2_132 to i32*
%var_2_135 = load i32, i32* %var_2_134, align 4
; Matched:%var_2_291:  %var_2_291 = zext i32 %var_2_290 to i64
; %var_2_136 = zext i32 %var_2_135 to i64
; Matched:\<badref\>:  store i64 %var_2_256, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_136, i64* %RAX.i281, align 8
%var_2_137 = load i32, i32* bitcast (%G_0x605090_type* @G_0x605090 to i32*), align 8
%var_2_138 = sub i32 %var_2_135, %var_2_137
; Matched:%var_2_294:  %var_2_294 = icmp ult i32 %var_2_290, %var_2_292
; %var_2_139 = icmp ult i32 %var_2_135, %var_2_137
; Matched:%var_2_260:  %var_2_260 = zext i1 %var_2_259 to i8
; %var_2_140 = zext i1 %var_2_139 to i8
; Matched:\<badref\>:  store i8 %var_2_260, i8* %var_2_17, align 1, !tbaa !1265
; store i8 %var_2_140, i8* %var_2_14, align 1
; Matched:%var_2_296:  %var_2_296 = and i32 %var_2_293, 255
; %var_2_141 = and i32 %var_2_138, 255
; Matched:%var_2_297:  %var_2_297 = tail call i32 @llvm.ctpop.i32(i32 %var_2_296) #12
; %var_2_142 = tail call i32 @llvm.ctpop.i32(i32 %var_2_141)
; Matched:%var_2_263:  %var_2_263 = trunc i32 %var_2_262 to i8
; %var_2_143 = trunc i32 %var_2_142 to i8
; Matched:%var_2_264:  %var_2_264 = and i8 %var_2_263, 1
; %var_2_144 = and i8 %var_2_143, 1
; Matched:%var_2_265:  %var_2_265 = xor i8 %var_2_264, 1
; %var_2_145 = xor i8 %var_2_144, 1
; Matched:\<badref\>:  store i8 %var_2_300, i8* %var_2_24, align 1, !tbaa !1279
; store i8 %var_2_145, i8* %var_2_21, align 1
; Matched:%var_2_266:  %var_2_266 = xor i32 %var_2_257, %var_2_255
; %var_2_146 = xor i32 %var_2_137, %var_2_135
; Matched:%var_2_267:  %var_2_267 = xor i32 %var_2_266, %var_2_258
; %var_2_147 = xor i32 %var_2_146, %var_2_138
; Matched:%var_2_303:  %var_2_303 = lshr i32 %var_2_302, 4
; %var_2_148 = lshr i32 %var_2_147, 4
; Matched:%var_2_304:  %var_2_304 = trunc i32 %var_2_303 to i8
; %var_2_149 = trunc i32 %var_2_148 to i8
; Matched:%var_2_270:  %var_2_270 = and i8 %var_2_269, 1
; %var_2_150 = and i8 %var_2_149, 1
; Matched:\<badref\>:  store i8 %var_2_270, i8* %var_2_30, align 1, !tbaa !1280
; store i8 %var_2_150, i8* %var_2_27, align 1
; Matched:%var_2_271:  %var_2_271 = icmp eq i32 %var_2_258, 0
; %var_2_151 = icmp eq i32 %var_2_138, 0
; Matched:%var_2_307:  %var_2_307 = zext i1 %var_2_306 to i8
; %var_2_152 = zext i1 %var_2_151 to i8
; Matched:\<badref\>:  store i8 %var_2_272, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_152, i8* %var_2_30, align 1
%var_2_153 = lshr i32 %var_2_138, 31
%var_2_154 = trunc i32 %var_2_153 to i8
; Matched:\<badref\>:  store i8 %var_2_309, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_154, i8* %var_2_33, align 1
%var_2_155 = lshr i32 %var_2_135, 31
%var_2_156 = lshr i32 %var_2_137, 31
%var_2_157 = xor i32 %var_2_156, %var_2_155
%var_2_158 = xor i32 %var_2_153, %var_2_155
%var_2_159 = add nuw nsw i32 %var_2_158, %var_2_157
%var_2_160 = icmp eq i32 %var_2_159, 2
; Matched:%var_2_316:  %var_2_316 = zext i1 %var_2_315 to i8
; %var_2_161 = zext i1 %var_2_160 to i8
; Matched:\<badref\>:  store i8 %var_2_316, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_161, i8* %var_2_39, align 1
%var_2_162 = icmp ne i8 %var_2_154, 0
%var_2_163 = xor i1 %var_2_162, %var_2_160
%.v = select i1 %var_2_163, i64 16, i64 134
%var_2_164 = add i64 %var_2_130, %.v
; Matched:\<badref\>:  store i64 %var_2_319, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_164, i64* %var_2_3, align 8
br i1 %var_2_163, label %block_400b1d, label %block_.L_400b93

block_400b1d:                                     ; preds = %block_.L_400b0d
; Matched:\<badref\>:  store i64 add (i64 ptrtoint (%seg_402d20__rodata_type* @seg_402d20__rodata to i64), i64 234), i64* %RDI, align 8, !tbaa !1261
; store i64 ptrtoint (%G__0x402db5_type* @G__0x402db5 to i64), i64* %RDI.i30, align 8
%var_2_165 = add i64 %var_2_164, add (i64 ptrtoint (%G_0x2209__rip__type* @G_0x2209__rip_ to i64), i64 10)
%var_2_166 = add i64 %var_2_164, 18
store i64 %var_2_166, i64* %var_2_3, align 8
%var_2_167 = inttoptr i64 %var_2_165 to i64*
%var_2_168 = load i64, i64* %var_2_167, align 8
store i64 %var_2_168, i64* %var_2_67, align 1
store double 0.000000e+00, double* %var_2_69, align 1
; Matched:%var_2_123:  %var_2_123 = add i64 %var_2_319, 21
; %var_2_169 = add i64 %var_2_164, 21
; Matched:\<badref\>:  store i64 %var_2_123, i64* %PC, align 8
; store i64 %var_2_169, i64* %var_2_3, align 8
; Matched:%var_2_124:  %var_2_124 = load i32, i32* %var_2_289, align 4
; %var_2_170 = load i32, i32* %var_2_134, align 4
; Matched:%var_2_125:  %var_2_125 = zext i32 %var_2_124 to i64
; %var_2_171 = zext i32 %var_2_170 to i64
; Matched:\<badref\>:  store i64 %var_2_125, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_171, i64* %RSI.i, align 8
; Matched:%var_2_126:  %var_2_126 = add i64 %var_2_319, 25
; %var_2_172 = add i64 %var_2_164, 25
; Matched:\<badref\>:  store i64 %var_2_126, i64* %PC, align 8
; store i64 %var_2_172, i64* %var_2_3, align 8
%var_2_173 = load i32, i32* %var_2_134, align 4
%var_2_174 = sext i32 %var_2_173 to i64
; Matched:\<badref\>:  store i64 %var_2_512, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_174, i64* %RAX.i281, align 8
%var_2_175 = bitcast i64 %var_2_168 to <2 x i32>
%var_2_176 = extractelement <2 x i32> %var_2_175, i32 0
store i32 %var_2_176, i32* %var_2_103, align 1
%var_2_177 = extractelement <2 x i32> %var_2_175, i32 1
store i32 %var_2_177, i32* %var_2_105, align 1
; Matched:\<badref\>:  store i32 0, i32* %var_2_99, align 1, !tbaa !1287
; store i32 0, i32* %var_2_106, align 1
; Matched:\<badref\>:  store i32 0, i32* %var_2_101, align 1, !tbaa !1287
; store i32 0, i32* %var_2_108, align 1
%var_2_178 = shl nsw i64 %var_2_174, 3
%var_2_179 = add nsw i64 %var_2_178, 6312096
; Matched:%var_2_134:  %var_2_134 = add i64 %var_2_319, 37
; %var_2_180 = add i64 %var_2_164, 37
; Matched:\<badref\>:  store i64 %var_2_134, i64* %PC, align 8
; store i64 %var_2_180, i64* %var_2_3, align 8
%var_2_181 = load double, double* %var_2_76, align 1
%var_2_182 = load <2 x i32>, <2 x i32>* %var_2_129, align 1
%var_2_183 = inttoptr i64 %var_2_179 to double*
%var_2_184 = load double, double* %var_2_183, align 8
%var_2_185 = fmul double %var_2_181, %var_2_184
store double %var_2_185, double* %var_2_76, align 1
%var_2_186 = add i64 %var_2_131, -16
; Matched:%var_2_141:  %var_2_141 = add i64 %var_2_319, 42
; %var_2_187 = add i64 %var_2_164, 42
; Matched:\<badref\>:  store i64 %var_2_141, i64* %PC, align 8
; store i64 %var_2_187, i64* %var_2_3, align 8
%var_2_188 = inttoptr i64 %var_2_186 to i64*
%var_2_189 = load i64, i64* %var_2_188, align 8
; Matched:\<badref\>:  store i64 %var_2_143, i64* %var_2_102, align 1, !tbaa !1285
; store i64 %var_2_189, i64* %var_2_109, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_104, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_111, align 1
; Matched:%var_2_144:  %var_2_144 = add i64 %var_2_319, 46
; %var_2_190 = add i64 %var_2_164, 46
; Matched:\<badref\>:  store i64 %var_2_144, i64* %PC, align 8
; store i64 %var_2_190, i64* %var_2_3, align 8
%var_2_191 = load i32, i32* %var_2_134, align 4
%var_2_192 = sext i32 %var_2_191 to i64
; Matched:\<badref\>:  store i64 %var_2_532, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_192, i64* %RAX.i281, align 8
%var_2_193 = shl nsw i64 %var_2_192, 3
%var_2_194 = add nsw i64 %var_2_193, 6312096
; Matched:%var_2_149:  %var_2_149 = add i64 %var_2_319, 55
; %var_2_195 = add i64 %var_2_164, 55
; Matched:\<badref\>:  store i64 %var_2_149, i64* %PC, align 8
; store i64 %var_2_195, i64* %var_2_3, align 8
%var_2_196 = bitcast i64 %var_2_189 to double
%var_2_197 = inttoptr i64 %var_2_194 to double*
%var_2_198 = load double, double* %var_2_197, align 8
%var_2_199 = fdiv double %var_2_196, %var_2_198
%var_2_200 = bitcast i64 %var_2_168 to double
%var_2_201 = fmul double %var_2_199, %var_2_200
store double %var_2_201, double* %var_2_84, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_103, align 1, !tbaa !1285
; store i64 0, i64* %var_2_110, align 1
; Matched:%var_2_156:  %var_2_156 = add i64 %var_2_319, 63
; %var_2_202 = add i64 %var_2_164, 63
; Matched:\<badref\>:  store i64 %var_2_156, i64* %PC, align 8
; store i64 %var_2_202, i64* %var_2_3, align 8
%var_2_203 = load i32, i32* %var_2_134, align 4
%var_2_204 = sext i32 %var_2_203 to i64
; Matched:\<badref\>:  store i64 %var_2_128, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_204, i64* %RAX.i281, align 8
%var_2_205 = shl nsw i64 %var_2_204, 3
%var_2_206 = add nsw i64 %var_2_205, 6312096
; Matched:%var_2_161:  %var_2_161 = add i64 %var_2_319, 72
; %var_2_207 = add i64 %var_2_164, 72
; Matched:\<badref\>:  store i64 %var_2_161, i64* %PC, align 8
; store i64 %var_2_207, i64* %var_2_3, align 8
%var_2_208 = inttoptr i64 %var_2_206 to double*
%var_2_209 = load double, double* %var_2_208, align 8
%var_2_210 = load double, double* bitcast (%G_0x6050a0_type* @G_0x6050a0 to double*), align 8
%var_2_211 = fdiv double %var_2_209, %var_2_210
%var_2_212 = fmul double %var_2_211, %var_2_200
store double %var_2_212, double* %var_2_113, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_106, align 1, !tbaa !1285
; store i64 0, i64* %var_2_114, align 1
%var_2_213 = bitcast double %var_2_185 to <2 x i32>
%var_2_214 = extractelement <2 x i32> %var_2_213, i32 0
store i32 %var_2_214, i32* %var_2_117, align 1
%var_2_215 = extractelement <2 x i32> %var_2_213, i32 1
store i32 %var_2_215, i32* %var_2_119, align 1
%var_2_216 = extractelement <2 x i32> %var_2_182, i32 0
; Matched:\<badref\>:  store i32 %var_2_380, i32* %var_2_112, align 1, !tbaa !1287
; store i32 %var_2_216, i32* %var_2_120, align 1
%var_2_217 = extractelement <2 x i32> %var_2_182, i32 1
; Matched:\<badref\>:  store i32 %var_2_406, i32* %var_2_114, align 1, !tbaa !1287
; store i32 %var_2_217, i32* %var_2_122, align 1
%var_2_218 = bitcast double %var_2_201 to <2 x i32>
%var_2_219 = extractelement <2 x i32> %var_2_218, i32 0
store i32 %var_2_219, i32* %var_2_103, align 1
%var_2_220 = extractelement <2 x i32> %var_2_218, i32 1
store i32 %var_2_220, i32* %var_2_105, align 1
; Matched:\<badref\>:  store i32 0, i32* %var_2_99, align 1, !tbaa !1287
; store i32 0, i32* %var_2_106, align 1
; Matched:\<badref\>:  store i32 0, i32* %var_2_101, align 1, !tbaa !1287
; store i32 0, i32* %var_2_108, align 1
%var_2_221 = bitcast double %var_2_212 to <2 x i32>
%var_2_222 = extractelement <2 x i32> %var_2_221, i32 0
store i32 %var_2_222, i32* %var_2_123, align 1
%var_2_223 = extractelement <2 x i32> %var_2_221, i32 1
store i32 %var_2_223, i32* %var_2_125, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_104, align 1, !tbaa !1285
; store i32 0, i32* %var_2_126, align 1
; Matched:\<badref\>:  store i32 0, i32* %var_2_120, align 1, !tbaa !1287
; store i32 0, i32* %var_2_128, align 1
; Matched:\<badref\>:  store i8 1, i8* %AL, align 1, !tbaa !1284
; store i8 3, i8* %AL.i45, align 1
; Matched:%var_2_178:  %var_2_178 = add i64 %var_2_319, -1501
; %var_2_224 = add i64 %var_2_164, -1501
; Matched:%var_2_179:  %var_2_179 = add i64 %var_2_319, 101
; %var_2_225 = add i64 %var_2_164, 101
%var_2_226 = load i64, i64* %var_2_6, align 8
%var_2_227 = add i64 %var_2_226, -8
; Matched:%var_2_182:  %var_2_182 = inttoptr i64 %var_2_181 to i64*
; %var_2_228 = inttoptr i64 %var_2_227 to i64*
; Matched:\<badref\>:  store i64 %var_2_179, i64* %var_2_182, align 8
; store i64 %var_2_225, i64* %var_2_228, align 8
; Matched:\<badref\>:  store i64 %var_2_357, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_227, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_178, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_224, i64* %var_2_3, align 8
%var_2_229 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.0)
; Matched:%var_2_184:  %var_2_184 = load i64, i64* %RBP, align 8
; %var_2_230 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_185:  %var_2_185 = add i64 %var_2_184, -60
; %var_2_231 = add i64 %var_2_230, -60
; Matched:%var_2_186:  %var_2_186 = load i32, i32* %EAX, align 4
; %var_2_232 = load i32, i32* %EAX.i112, align 4
%var_2_233 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_621:  %var_2_621 = add i64 %var_2_620, 3
; %var_2_234 = add i64 %var_2_233, 3
; Matched:\<badref\>:  store i64 %var_2_94, i64* %PC, align 8
; store i64 %var_2_234, i64* %var_2_3, align 8
; Matched:%var_2_189:  %var_2_189 = inttoptr i64 %var_2_185 to i32*
; %var_2_235 = inttoptr i64 %var_2_231 to i32*
; Matched:\<badref\>:  store i32 %var_2_186, i32* %var_2_189, align 4
; store i32 %var_2_232, i32* %var_2_235, align 4
; Matched:%var_2_190:  %var_2_190 = load i64, i64* %RBP, align 8
; %var_2_236 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_619:  %var_2_619 = add i64 %var_2_618, -4
; %var_2_237 = add i64 %var_2_236, -4
%var_2_238 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_188:  %var_2_188 = add i64 %var_2_187, 3
; %var_2_239 = add i64 %var_2_238, 3
; Matched:\<badref\>:  store i64 %var_2_193, i64* %PC, align 8
; store i64 %var_2_239, i64* %var_2_3, align 8
; Matched:%var_2_622:  %var_2_622 = inttoptr i64 %var_2_619 to i32*
; %var_2_240 = inttoptr i64 %var_2_237 to i32*
; Matched:%var_2_623:  %var_2_623 = load i32, i32* %var_2_622, align 4
; %var_2_241 = load i32, i32* %var_2_240, align 4
; Matched:%var_2_196:  %var_2_196 = add i32 %var_2_195, 1
; %var_2_242 = add i32 %var_2_241, 1
; Matched:%var_2_197:  %var_2_197 = zext i32 %var_2_196 to i64
; %var_2_243 = zext i32 %var_2_242 to i64
; Matched:\<badref\>:  store i64 %var_2_625, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_243, i64* %RAX.i281, align 8
; Matched:%var_2_626:  %var_2_626 = icmp eq i32 %var_2_623, -1
; %var_2_244 = icmp eq i32 %var_2_241, -1
; Matched:%var_2_199:  %var_2_199 = icmp eq i32 %var_2_196, 0
; %var_2_245 = icmp eq i32 %var_2_242, 0
; Matched:%var_2_628:  %var_2_628 = or i1 %var_2_626, %var_2_627
; %var_2_246 = or i1 %var_2_244, %var_2_245
; Matched:%var_2_629:  %var_2_629 = zext i1 %var_2_628 to i8
; %var_2_247 = zext i1 %var_2_246 to i8
; Matched:\<badref\>:  store i8 %var_2_629, i8* %var_2_17, align 1, !tbaa !1265
; store i8 %var_2_247, i8* %var_2_14, align 1
; Matched:%var_2_202:  %var_2_202 = and i32 %var_2_196, 255
; %var_2_248 = and i32 %var_2_242, 255
; Matched:%var_2_203:  %var_2_203 = tail call i32 @llvm.ctpop.i32(i32 %var_2_202) #12
; %var_2_249 = tail call i32 @llvm.ctpop.i32(i32 %var_2_248)
; Matched:%var_2_632:  %var_2_632 = trunc i32 %var_2_631 to i8
; %var_2_250 = trunc i32 %var_2_249 to i8
; Matched:%var_2_633:  %var_2_633 = and i8 %var_2_632, 1
; %var_2_251 = and i8 %var_2_250, 1
; Matched:%var_2_206:  %var_2_206 = xor i8 %var_2_205, 1
; %var_2_252 = xor i8 %var_2_251, 1
; Matched:\<badref\>:  store i8 %var_2_634, i8* %var_2_24, align 1, !tbaa !1279
; store i8 %var_2_252, i8* %var_2_21, align 1
; Matched:%var_2_635:  %var_2_635 = xor i32 %var_2_624, %var_2_623
; %var_2_253 = xor i32 %var_2_242, %var_2_241
; Matched:%var_2_636:  %var_2_636 = lshr i32 %var_2_635, 4
; %var_2_254 = lshr i32 %var_2_253, 4
; Matched:%var_2_209:  %var_2_209 = trunc i32 %var_2_208 to i8
; %var_2_255 = trunc i32 %var_2_254 to i8
; Matched:%var_2_210:  %var_2_210 = and i8 %var_2_209, 1
; %var_2_256 = and i8 %var_2_255, 1
; Matched:\<badref\>:  store i8 %var_2_638, i8* %var_2_30, align 1, !tbaa !1280
; store i8 %var_2_256, i8* %var_2_27, align 1
; Matched:%var_2_639:  %var_2_639 = zext i1 %var_2_627 to i8
; %var_2_257 = zext i1 %var_2_245 to i8
; Matched:\<badref\>:  store i8 %var_2_211, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_257, i8* %var_2_30, align 1
; Matched:%var_2_640:  %var_2_640 = lshr i32 %var_2_624, 31
; %var_2_258 = lshr i32 %var_2_242, 31
; Matched:%var_2_641:  %var_2_641 = trunc i32 %var_2_640 to i8
; %var_2_259 = trunc i32 %var_2_258 to i8
; Matched:\<badref\>:  store i8 %var_2_641, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_259, i8* %var_2_33, align 1
; Matched:%var_2_214:  %var_2_214 = lshr i32 %var_2_195, 31
; %var_2_260 = lshr i32 %var_2_241, 31
; Matched:%var_2_215:  %var_2_215 = xor i32 %var_2_212, %var_2_214
; %var_2_261 = xor i32 %var_2_258, %var_2_260
; Matched:%var_2_644:  %var_2_644 = add nuw nsw i32 %var_2_643, %var_2_640
; %var_2_262 = add nuw nsw i32 %var_2_261, %var_2_258
; Matched:%var_2_645:  %var_2_645 = icmp eq i32 %var_2_644, 2
; %var_2_263 = icmp eq i32 %var_2_262, 2
; Matched:%var_2_218:  %var_2_218 = zext i1 %var_2_217 to i8
; %var_2_264 = zext i1 %var_2_263 to i8
; Matched:\<badref\>:  store i8 %var_2_646, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_264, i8* %var_2_39, align 1
; Matched:%var_2_219:  %var_2_219 = add i64 %var_2_192, 9
; %var_2_265 = add i64 %var_2_238, 9
; Matched:\<badref\>:  store i64 %var_2_219, i64* %PC, align 8
; store i64 %var_2_265, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_196, i32* %var_2_194, align 4
; store i32 %var_2_242, i32* %var_2_240, align 4
%var_2_266 = load i64, i64* %var_2_3, align 8
%var_2_267 = add i64 %var_2_266, -129
; Matched:\<badref\>:  store i64 %var_2_221, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_267, i64* %var_2_3, align 8
  br label %block_.L_400b0d

block_.L_400b93:                                  ; preds = %block_.L_400b0d
%var_2_268 = bitcast [32 x %union.VectorReg]* %var_2_59 to <4 x i32>*
store <4 x i32> zeroinitializer, <4 x i32>* %var_2_268, align 1
; Matched:%var_2_223:  %var_2_223 = add i64 %var_2_286, -24
; %var_2_269 = add i64 %var_2_131, -24
; Matched:%var_2_224:  %var_2_224 = add i64 %var_2_319, 8
; %var_2_270 = add i64 %var_2_164, 8
; Matched:\<badref\>:  store i64 %var_2_224, i64* %PC, align 8
; store i64 %var_2_270, i64* %var_2_3, align 8
; Matched:%var_2_225:  %var_2_225 = load i64, i64* %var_2_65, align 1
; %var_2_271 = load i64, i64* %var_2_67, align 1
; Matched:%var_2_226:  %var_2_226 = inttoptr i64 %var_2_223 to i64*
; %var_2_272 = inttoptr i64 %var_2_269 to i64*
; Matched:\<badref\>:  store i64 %var_2_225, i64* %var_2_226, align 8
; store i64 %var_2_271, i64* %var_2_272, align 8
; Matched:%var_2_227:  %var_2_227 = load i64, i64* %RBP, align 8
; %var_2_273 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_228:  %var_2_228 = add i64 %var_2_227, -32
; %var_2_274 = add i64 %var_2_273, -32
%var_2_275 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_611:  %var_2_611 = add i64 %var_2_610, 5
; %var_2_276 = add i64 %var_2_275, 5
; Matched:\<badref\>:  store i64 %var_2_611, i64* %PC, align 8
; store i64 %var_2_276, i64* %var_2_3, align 8
; Matched:%var_2_231:  %var_2_231 = load i64, i64* %var_2_65, align 1
; %var_2_277 = load i64, i64* %var_2_67, align 1
; Matched:%var_2_232:  %var_2_232 = inttoptr i64 %var_2_228 to i64*
; %var_2_278 = inttoptr i64 %var_2_274 to i64*
; Matched:\<badref\>:  store i64 %var_2_231, i64* %var_2_232, align 8
; store i64 %var_2_277, i64* %var_2_278, align 8
; Matched:%var_2_233:  %var_2_233 = load i64, i64* %RBP, align 8
; %var_2_279 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_234:  %var_2_234 = add i64 %var_2_233, -40
; %var_2_280 = add i64 %var_2_279, -40
%var_2_281 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_547:  %var_2_547 = add i64 %var_2_546, 5
; %var_2_282 = add i64 %var_2_281, 5
; Matched:\<badref\>:  store i64 %var_2_547, i64* %PC, align 8
; store i64 %var_2_282, i64* %var_2_3, align 8
; Matched:%var_2_237:  %var_2_237 = load i64, i64* %var_2_65, align 1
; %var_2_283 = load i64, i64* %var_2_67, align 1
; Matched:%var_2_238:  %var_2_238 = inttoptr i64 %var_2_234 to i64*
; %var_2_284 = inttoptr i64 %var_2_280 to i64*
; Matched:\<badref\>:  store i64 %var_2_237, i64* %var_2_238, align 8
; store i64 %var_2_283, i64* %var_2_284, align 8
; Matched:%var_2_239:  %var_2_239 = load i64, i64* %RBP, align 8
; %var_2_285 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_240:  %var_2_240 = add i64 %var_2_239, -48
; %var_2_286 = add i64 %var_2_285, -48
%var_2_287 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_236:  %var_2_236 = add i64 %var_2_235, 5
; %var_2_288 = add i64 %var_2_287, 5
; Matched:\<badref\>:  store i64 %var_2_236, i64* %PC, align 8
; store i64 %var_2_288, i64* %var_2_3, align 8
; Matched:%var_2_243:  %var_2_243 = load i64, i64* %var_2_65, align 1
; %var_2_289 = load i64, i64* %var_2_67, align 1
; Matched:%var_2_244:  %var_2_244 = inttoptr i64 %var_2_240 to i64*
; %var_2_290 = inttoptr i64 %var_2_286 to i64*
; Matched:\<badref\>:  store i64 %var_2_243, i64* %var_2_244, align 8
; store i64 %var_2_289, i64* %var_2_290, align 8
%var_2_291 = load i64, i64* %RBP.i, align 8
%var_2_292 = add i64 %var_2_291, -4
; Matched:%var_2_87:  %var_2_87 = load i64, i64* %PC, align 8
; %var_2_293 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_248:  %var_2_248 = add i64 %var_2_247, 7
; %var_2_294 = add i64 %var_2_293, 7
; Matched:\<badref\>:  store i64 %var_2_248, i64* %PC, align 8
; store i64 %var_2_294, i64* %var_2_3, align 8
%var_2_295 = inttoptr i64 %var_2_292 to i32*
store i32 0, i32* %var_2_295, align 4
; Matched:  %.pre12 = load i64, i64* %PC, align 8
; %.pre11 = load i64, i64* %var_2_3, align 8
  br label %block_.L_400bb1

block_.L_400bb1:                                  ; preds = %block_400bc1, %block_.L_400b93
; Matched:%var_2_250:  %var_2_250 = phi i64 [ %.pre12, %block_400b93 ], [ %var_2_649, %block_400bc1 ]
; %var_2_296 = phi i64 [ %.pre11, %block_.L_400b93 ], [ %var_2_470, %block_400bc1 ]
%MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_.L_400b93 ], [ %var_2_428, %block_400bc1 ]
%var_2_297 = load i64, i64* %RBP.i, align 8
%var_2_298 = add i64 %var_2_297, -4
; Matched:%var_2_253:  %var_2_253 = add i64 %var_2_250, 3
; %var_2_299 = add i64 %var_2_296, 3
; Matched:\<badref\>:  store i64 %var_2_253, i64* %PC, align 8
; store i64 %var_2_299, i64* %var_2_3, align 8
%var_2_300 = inttoptr i64 %var_2_298 to i32*
%var_2_301 = load i32, i32* %var_2_300, align 4
; Matched:%var_2_256:  %var_2_256 = zext i32 %var_2_255 to i64
; %var_2_302 = zext i32 %var_2_301 to i64
; Matched:\<badref\>:  store i64 %var_2_291, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_302, i64* %RAX.i281, align 8
%var_2_303 = load i32, i32* bitcast (%G_0x605090_type* @G_0x605090 to i32*), align 8
%var_2_304 = sub i32 %var_2_301, %var_2_303
; Matched:%var_2_259:  %var_2_259 = icmp ult i32 %var_2_255, %var_2_257
; %var_2_305 = icmp ult i32 %var_2_301, %var_2_303
; Matched:%var_2_295:  %var_2_295 = zext i1 %var_2_294 to i8
; %var_2_306 = zext i1 %var_2_305 to i8
; Matched:\<badref\>:  store i8 %var_2_295, i8* %var_2_17, align 1, !tbaa !1265
; store i8 %var_2_306, i8* %var_2_14, align 1
; Matched:%var_2_261:  %var_2_261 = and i32 %var_2_258, 255
; %var_2_307 = and i32 %var_2_304, 255
; Matched:%var_2_262:  %var_2_262 = tail call i32 @llvm.ctpop.i32(i32 %var_2_261) #12
; %var_2_308 = tail call i32 @llvm.ctpop.i32(i32 %var_2_307)
; Matched:%var_2_298:  %var_2_298 = trunc i32 %var_2_297 to i8
; %var_2_309 = trunc i32 %var_2_308 to i8
; Matched:%var_2_299:  %var_2_299 = and i8 %var_2_298, 1
; %var_2_310 = and i8 %var_2_309, 1
; Matched:%var_2_300:  %var_2_300 = xor i8 %var_2_299, 1
; %var_2_311 = xor i8 %var_2_310, 1
; Matched:\<badref\>:  store i8 %var_2_265, i8* %var_2_24, align 1, !tbaa !1279
; store i8 %var_2_311, i8* %var_2_21, align 1
; Matched:%var_2_301:  %var_2_301 = xor i32 %var_2_292, %var_2_290
; %var_2_312 = xor i32 %var_2_303, %var_2_301
; Matched:%var_2_302:  %var_2_302 = xor i32 %var_2_301, %var_2_293
; %var_2_313 = xor i32 %var_2_312, %var_2_304
; Matched:%var_2_268:  %var_2_268 = lshr i32 %var_2_267, 4
; %var_2_314 = lshr i32 %var_2_313, 4
; Matched:%var_2_269:  %var_2_269 = trunc i32 %var_2_268 to i8
; %var_2_315 = trunc i32 %var_2_314 to i8
; Matched:%var_2_305:  %var_2_305 = and i8 %var_2_304, 1
; %var_2_316 = and i8 %var_2_315, 1
; Matched:\<badref\>:  store i8 %var_2_305, i8* %var_2_30, align 1, !tbaa !1280
; store i8 %var_2_316, i8* %var_2_27, align 1
; Matched:%var_2_306:  %var_2_306 = icmp eq i32 %var_2_293, 0
; %var_2_317 = icmp eq i32 %var_2_304, 0
; Matched:%var_2_272:  %var_2_272 = zext i1 %var_2_271 to i8
; %var_2_318 = zext i1 %var_2_317 to i8
; Matched:\<badref\>:  store i8 %var_2_307, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_318, i8* %var_2_30, align 1
%var_2_319 = lshr i32 %var_2_304, 31
%var_2_320 = trunc i32 %var_2_319 to i8
; Matched:\<badref\>:  store i8 %var_2_274, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_320, i8* %var_2_33, align 1
%var_2_321 = lshr i32 %var_2_301, 31
%var_2_322 = lshr i32 %var_2_303, 31
%var_2_323 = xor i32 %var_2_322, %var_2_321
%var_2_324 = xor i32 %var_2_319, %var_2_321
%var_2_325 = add nuw nsw i32 %var_2_324, %var_2_323
%var_2_326 = icmp eq i32 %var_2_325, 2
; Matched:%var_2_281:  %var_2_281 = zext i1 %var_2_280 to i8
; %var_2_327 = zext i1 %var_2_326 to i8
; Matched:\<badref\>:  store i8 %var_2_281, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_327, i8* %var_2_39, align 1
%var_2_328 = icmp ne i8 %var_2_320, 0
%var_2_329 = xor i1 %var_2_328, %var_2_326
; Matched:  %.v13 = select i1 %var_2_283, i64 16, i64 151
; %.v12 = select i1 %var_2_329, i64 16, i64 151
; Matched:%var_2_284:  %var_2_284 = add i64 %var_2_250, %.v13
; %var_2_330 = add i64 %var_2_296, %.v12
; Matched:\<badref\>:  store i64 %var_2_284, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_330, i64* %var_2_3, align 8
br i1 %var_2_329, label %block_400bc1, label %block_.L_400c48

block_400bc1:                                     ; preds = %block_.L_400bb1
; Matched:%var_2_510:  %var_2_510 = add i64 %var_2_284, 4
; %var_2_331 = add i64 %var_2_330, 4
; Matched:\<badref\>:  store i64 %var_2_510, i64* %PC, align 8
; store i64 %var_2_331, i64* %var_2_3, align 8
%var_2_332 = load i32, i32* %var_2_300, align 4
%var_2_333 = sext i32 %var_2_332 to i64
; Matched:\<badref\>:  store i64 %var_2_594, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_333, i64* %RAX.i281, align 8
%var_2_334 = shl nsw i64 %var_2_333, 3
%var_2_335 = add nsw i64 %var_2_334, 6312096
; Matched:%var_2_515:  %var_2_515 = add i64 %var_2_284, 13
; %var_2_336 = add i64 %var_2_330, 13
; Matched:\<badref\>:  store i64 %var_2_515, i64* %PC, align 8
; store i64 %var_2_336, i64* %var_2_3, align 8
%var_2_337 = inttoptr i64 %var_2_335 to i64*
%var_2_338 = load i64, i64* %var_2_337, align 8
store i64 %var_2_338, i64* %var_2_67, align 1
store double 0.000000e+00, double* %var_2_69, align 1
%var_2_339 = add i64 %var_2_297, -32
; Matched:%var_2_519:  %var_2_519 = add i64 %var_2_284, 18
; %var_2_340 = add i64 %var_2_330, 18
; Matched:\<badref\>:  store i64 %var_2_519, i64* %PC, align 8
; store i64 %var_2_340, i64* %var_2_3, align 8
%var_2_341 = bitcast i64 %var_2_338 to double
%var_2_342 = inttoptr i64 %var_2_339 to double*
%var_2_343 = load double, double* %var_2_342, align 8
%var_2_344 = fadd double %var_2_341, %var_2_343
store double %var_2_344, double* %var_2_66, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_66, align 1, !tbaa !1285
; store i64 0, i64* %var_2_68, align 1
; Matched:%var_2_524:  %var_2_524 = add i64 %var_2_284, 23
; %var_2_345 = add i64 %var_2_330, 23
; Matched:\<badref\>:  store i64 %var_2_524, i64* %PC, align 8
; store i64 %var_2_345, i64* %var_2_3, align 8
%var_2_346 = inttoptr i64 %var_2_339 to double*
store double %var_2_344, double* %var_2_346, align 8
%var_2_347 = load i64, i64* %RBP.i, align 8
%var_2_348 = add i64 %var_2_347, -4
%var_2_349 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_591:  %var_2_591 = add i64 %var_2_590, 4
; %var_2_350 = add i64 %var_2_349, 4
; Matched:\<badref\>:  store i64 %var_2_529, i64* %PC, align 8
; store i64 %var_2_350, i64* %var_2_3, align 8
%var_2_351 = inttoptr i64 %var_2_348 to i32*
%var_2_352 = load i32, i32* %var_2_351, align 4
%var_2_353 = sext i32 %var_2_352 to i64
; Matched:\<badref\>:  store i64 %var_2_158, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_353, i64* %RAX.i281, align 8
%var_2_354 = shl nsw i64 %var_2_353, 3
%var_2_355 = add nsw i64 %var_2_354, 6312096
; Matched:%var_2_597:  %var_2_597 = add i64 %var_2_590, 13
; %var_2_356 = add i64 %var_2_349, 13
; Matched:\<badref\>:  store i64 %var_2_413, i64* %PC, align 8
; store i64 %var_2_356, i64* %var_2_3, align 8
%var_2_357 = inttoptr i64 %var_2_355 to i64*
%var_2_358 = load i64, i64* %var_2_357, align 8
store i64 %var_2_358, i64* %var_2_67, align 1
store double 0.000000e+00, double* %var_2_69, align 1
; Matched:%var_2_538:  %var_2_538 = add i64 %var_2_528, -1672
; %var_2_359 = add i64 %var_2_349, -1672
; Matched:%var_2_539:  %var_2_539 = add i64 %var_2_528, 18
; %var_2_360 = add i64 %var_2_349, 18
%var_2_361 = load i64, i64* %var_2_6, align 8
%var_2_362 = add i64 %var_2_361, -8
; Matched:%var_2_542:  %var_2_542 = inttoptr i64 %var_2_541 to i64*
; %var_2_363 = inttoptr i64 %var_2_362 to i64*
; Matched:\<badref\>:  store i64 %var_2_539, i64* %var_2_542, align 8
; store i64 %var_2_360, i64* %var_2_363, align 8
; Matched:\<badref\>:  store i64 %var_2_541, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_362, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_538, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_359, i64* %var_2_3, align 8
%var_2_364 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %MEMORY.1)
; Matched:%var_2_544:  %var_2_544 = load i64, i64* %RBP, align 8
; %var_2_365 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_545:  %var_2_545 = add i64 %var_2_544, -24
; %var_2_366 = add i64 %var_2_365, -24
%var_2_367 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_230:  %var_2_230 = add i64 %var_2_229, 5
; %var_2_368 = add i64 %var_2_367, 5
; Matched:\<badref\>:  store i64 %var_2_230, i64* %PC, align 8
; store i64 %var_2_368, i64* %var_2_3, align 8
; Matched:%var_2_548:  %var_2_548 = load double, double* %var_2_64, align 1
; %var_2_369 = load double, double* %var_2_66, align 1
; Matched:%var_2_549:  %var_2_549 = inttoptr i64 %var_2_545 to double*
; %var_2_370 = inttoptr i64 %var_2_366 to double*
; Matched:%var_2_550:  %var_2_550 = load double, double* %var_2_549, align 8
; %var_2_371 = load double, double* %var_2_370, align 8
; Matched:%var_2_551:  %var_2_551 = fadd double %var_2_548, %var_2_550
; %var_2_372 = fadd double %var_2_369, %var_2_371
; Matched:\<badref\>:  store double %var_2_551, double* %var_2_64, align 1, !tbaa !1285
; store double %var_2_372, double* %var_2_66, align 1
; Matched:%var_2_586:  %var_2_586 = add i64 %var_2_580, 10
; %var_2_373 = add i64 %var_2_367, 10
; Matched:\<badref\>:  store i64 %var_2_616, i64* %PC, align 8
; store i64 %var_2_373, i64* %var_2_3, align 8
; Matched:%var_2_553:  %var_2_553 = inttoptr i64 %var_2_545 to double*
; %var_2_374 = inttoptr i64 %var_2_366 to double*
; Matched:\<badref\>:  store double %var_2_551, double* %var_2_553, align 8
; store double %var_2_372, double* %var_2_374, align 8
%var_2_375 = load i64, i64* %RBP.i, align 8
%var_2_376 = add i64 %var_2_375, -16
%var_2_377 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_242:  %var_2_242 = add i64 %var_2_241, 5
; %var_2_378 = add i64 %var_2_377, 5
; Matched:\<badref\>:  store i64 %var_2_242, i64* %PC, align 8
; store i64 %var_2_378, i64* %var_2_3, align 8
%var_2_379 = inttoptr i64 %var_2_376 to i64*
%var_2_380 = load i64, i64* %var_2_379, align 8
; Matched:\<badref\>:  store i64 %var_2_559, i64* %var_2_65, align 1, !tbaa !1285
; store i64 %var_2_380, i64* %var_2_67, align 1
store double 0.000000e+00, double* %var_2_69, align 1
%var_2_381 = add i64 %var_2_375, -4
; Matched:%var_2_561:  %var_2_561 = add i64 %var_2_556, 9
; %var_2_382 = add i64 %var_2_377, 9
; Matched:\<badref\>:  store i64 %var_2_561, i64* %PC, align 8
; store i64 %var_2_382, i64* %var_2_3, align 8
%var_2_383 = inttoptr i64 %var_2_381 to i32*
%var_2_384 = load i32, i32* %var_2_383, align 4
%var_2_385 = sext i32 %var_2_384 to i64
; Matched:\<badref\>:  store i64 %var_2_564, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_385, i64* %RAX.i281, align 8
%var_2_386 = shl nsw i64 %var_2_385, 3
%var_2_387 = add nsw i64 %var_2_386, 6312096
; Matched:%var_2_567:  %var_2_567 = add i64 %var_2_556, 18
; %var_2_388 = add i64 %var_2_377, 18
; Matched:\<badref\>:  store i64 %var_2_567, i64* %PC, align 8
; store i64 %var_2_388, i64* %var_2_3, align 8
%var_2_389 = bitcast i64 %var_2_380 to double
%var_2_390 = inttoptr i64 %var_2_387 to double*
%var_2_391 = load double, double* %var_2_390, align 8
%var_2_392 = fdiv double %var_2_389, %var_2_391
store double %var_2_392, double* %var_2_66, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_66, align 1, !tbaa !1285
; store i64 0, i64* %var_2_68, align 1
; Matched:%var_2_572:  %var_2_572 = add i64 %var_2_556, -1700
; %var_2_393 = add i64 %var_2_377, -1700
; Matched:%var_2_573:  %var_2_573 = add i64 %var_2_556, 23
; %var_2_394 = add i64 %var_2_377, 23
%var_2_395 = load i64, i64* %var_2_6, align 8
%var_2_396 = add i64 %var_2_395, -8
; Matched:%var_2_576:  %var_2_576 = inttoptr i64 %var_2_575 to i64*
; %var_2_397 = inttoptr i64 %var_2_396 to i64*
; Matched:\<badref\>:  store i64 %var_2_573, i64* %var_2_576, align 8
; store i64 %var_2_394, i64* %var_2_397, align 8
; Matched:\<badref\>:  store i64 %var_2_58, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_396, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_572, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_393, i64* %var_2_3, align 8
%var_2_398 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %var_2_364)
; Matched:%var_2_578:  %var_2_578 = load i64, i64* %RBP, align 8
; %var_2_399 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_579:  %var_2_579 = add i64 %var_2_578, -40
; %var_2_400 = add i64 %var_2_399, -40
%var_2_401 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_581:  %var_2_581 = add i64 %var_2_580, 5
; %var_2_402 = add i64 %var_2_401, 5
; Matched:\<badref\>:  store i64 %var_2_581, i64* %PC, align 8
; store i64 %var_2_402, i64* %var_2_3, align 8
; Matched:%var_2_582:  %var_2_582 = load double, double* %var_2_64, align 1
; %var_2_403 = load double, double* %var_2_66, align 1
; Matched:%var_2_583:  %var_2_583 = inttoptr i64 %var_2_579 to double*
; %var_2_404 = inttoptr i64 %var_2_400 to double*
; Matched:%var_2_584:  %var_2_584 = load double, double* %var_2_583, align 8
; %var_2_405 = load double, double* %var_2_404, align 8
; Matched:%var_2_585:  %var_2_585 = fadd double %var_2_582, %var_2_584
; %var_2_406 = fadd double %var_2_403, %var_2_405
; Matched:\<badref\>:  store double %var_2_585, double* %var_2_64, align 1, !tbaa !1285
; store double %var_2_406, double* %var_2_66, align 1
; Matched:%var_2_616:  %var_2_616 = add i64 %var_2_610, 10
; %var_2_407 = add i64 %var_2_401, 10
; Matched:\<badref\>:  store i64 %var_2_552, i64* %PC, align 8
; store i64 %var_2_407, i64* %var_2_3, align 8
; Matched:%var_2_587:  %var_2_587 = inttoptr i64 %var_2_579 to double*
; %var_2_408 = inttoptr i64 %var_2_400 to double*
; Matched:\<badref\>:  store double %var_2_585, double* %var_2_587, align 8
; store double %var_2_406, double* %var_2_408, align 8
%var_2_409 = load i64, i64* %RBP.i, align 8
%var_2_410 = add i64 %var_2_409, -4
%var_2_411 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_529:  %var_2_529 = add i64 %var_2_528, 4
; %var_2_412 = add i64 %var_2_411, 4
; Matched:\<badref\>:  store i64 %var_2_591, i64* %PC, align 8
; store i64 %var_2_412, i64* %var_2_3, align 8
%var_2_413 = inttoptr i64 %var_2_410 to i32*
%var_2_414 = load i32, i32* %var_2_413, align 4
%var_2_415 = sext i32 %var_2_414 to i64
; Matched:\<badref\>:  store i64 %var_2_146, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_415, i64* %RAX.i281, align 8
%var_2_416 = shl nsw i64 %var_2_415, 3
%var_2_417 = add nsw i64 %var_2_416, 6312096
; Matched:%var_2_535:  %var_2_535 = add i64 %var_2_528, 13
; %var_2_418 = add i64 %var_2_411, 13
; Matched:\<badref\>:  store i64 %var_2_597, i64* %PC, align 8
; store i64 %var_2_418, i64* %var_2_3, align 8
%var_2_419 = inttoptr i64 %var_2_417 to double*
%var_2_420 = load double, double* %var_2_419, align 8
%var_2_421 = load double, double* bitcast (%G_0x6050a0_type* @G_0x6050a0 to double*), align 8
%var_2_422 = fdiv double %var_2_420, %var_2_421
store double %var_2_422, double* %var_2_66, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_66, align 1, !tbaa !1285
; store i64 0, i64* %var_2_68, align 1
; Matched:%var_2_602:  %var_2_602 = add i64 %var_2_590, -1733
; %var_2_423 = add i64 %var_2_411, -1733
; Matched:%var_2_603:  %var_2_603 = add i64 %var_2_590, 27
; %var_2_424 = add i64 %var_2_411, 27
%var_2_425 = load i64, i64* %var_2_6, align 8
%var_2_426 = add i64 %var_2_425, -8
; Matched:%var_2_606:  %var_2_606 = inttoptr i64 %var_2_605 to i64*
; %var_2_427 = inttoptr i64 %var_2_426 to i64*
; Matched:\<badref\>:  store i64 %var_2_603, i64* %var_2_606, align 8
; store i64 %var_2_424, i64* %var_2_427, align 8
; Matched:\<badref\>:  store i64 %var_2_605, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_426, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_602, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_423, i64* %var_2_3, align 8
%var_2_428 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %var_2_398)
; Matched:%var_2_608:  %var_2_608 = load i64, i64* %RBP, align 8
; %var_2_429 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_609:  %var_2_609 = add i64 %var_2_608, -48
; %var_2_430 = add i64 %var_2_429, -48
%var_2_431 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_502:  %var_2_502 = add i64 %var_2_478, 5
; %var_2_432 = add i64 %var_2_431, 5
; Matched:\<badref\>:  store i64 %var_2_502, i64* %PC, align 8
; store i64 %var_2_432, i64* %var_2_3, align 8
; Matched:%var_2_612:  %var_2_612 = load double, double* %var_2_64, align 1
; %var_2_433 = load double, double* %var_2_66, align 1
; Matched:%var_2_613:  %var_2_613 = inttoptr i64 %var_2_609 to double*
; %var_2_434 = inttoptr i64 %var_2_430 to double*
; Matched:%var_2_614:  %var_2_614 = load double, double* %var_2_613, align 8
; %var_2_435 = load double, double* %var_2_434, align 8
; Matched:%var_2_615:  %var_2_615 = fadd double %var_2_612, %var_2_614
; %var_2_436 = fadd double %var_2_433, %var_2_435
; Matched:\<badref\>:  store double %var_2_615, double* %var_2_64, align 1, !tbaa !1285
; store double %var_2_436, double* %var_2_66, align 1
; Matched:%var_2_552:  %var_2_552 = add i64 %var_2_546, 10
; %var_2_437 = add i64 %var_2_431, 10
; Matched:\<badref\>:  store i64 %var_2_586, i64* %PC, align 8
; store i64 %var_2_437, i64* %var_2_3, align 8
; Matched:%var_2_617:  %var_2_617 = inttoptr i64 %var_2_609 to double*
; %var_2_438 = inttoptr i64 %var_2_430 to double*
; Matched:\<badref\>:  store double %var_2_615, double* %var_2_617, align 8
; store double %var_2_436, double* %var_2_438, align 8
; Matched:%var_2_618:  %var_2_618 = load i64, i64* %RBP, align 8
; %var_2_439 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_191:  %var_2_191 = add i64 %var_2_190, -4
; %var_2_440 = add i64 %var_2_439, -4
%var_2_441 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_475:  %var_2_475 = add i64 %var_2_474, 3
; %var_2_442 = add i64 %var_2_441, 3
; Matched:\<badref\>:  store i64 %var_2_188, i64* %PC, align 8
; store i64 %var_2_442, i64* %var_2_3, align 8
; Matched:%var_2_194:  %var_2_194 = inttoptr i64 %var_2_191 to i32*
; %var_2_443 = inttoptr i64 %var_2_440 to i32*
; Matched:%var_2_195:  %var_2_195 = load i32, i32* %var_2_194, align 4
; %var_2_444 = load i32, i32* %var_2_443, align 4
; Matched:%var_2_624:  %var_2_624 = add i32 %var_2_623, 1
; %var_2_445 = add i32 %var_2_444, 1
; Matched:%var_2_625:  %var_2_625 = zext i32 %var_2_624 to i64
; %var_2_446 = zext i32 %var_2_445 to i64
; Matched:\<badref\>:  store i64 %var_2_197, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_446, i64* %RAX.i281, align 8
; Matched:%var_2_198:  %var_2_198 = icmp eq i32 %var_2_195, -1
; %var_2_447 = icmp eq i32 %var_2_444, -1
; Matched:%var_2_627:  %var_2_627 = icmp eq i32 %var_2_624, 0
; %var_2_448 = icmp eq i32 %var_2_445, 0
; Matched:%var_2_200:  %var_2_200 = or i1 %var_2_198, %var_2_199
; %var_2_449 = or i1 %var_2_447, %var_2_448
; Matched:%var_2_201:  %var_2_201 = zext i1 %var_2_200 to i8
; %var_2_450 = zext i1 %var_2_449 to i8
; Matched:\<badref\>:  store i8 %var_2_201, i8* %var_2_17, align 1, !tbaa !1265
; store i8 %var_2_450, i8* %var_2_14, align 1
; Matched:%var_2_630:  %var_2_630 = and i32 %var_2_624, 255
; %var_2_451 = and i32 %var_2_445, 255
; Matched:%var_2_631:  %var_2_631 = tail call i32 @llvm.ctpop.i32(i32 %var_2_630) #12
; %var_2_452 = tail call i32 @llvm.ctpop.i32(i32 %var_2_451)
; Matched:%var_2_204:  %var_2_204 = trunc i32 %var_2_203 to i8
; %var_2_453 = trunc i32 %var_2_452 to i8
; Matched:%var_2_205:  %var_2_205 = and i8 %var_2_204, 1
; %var_2_454 = and i8 %var_2_453, 1
; Matched:%var_2_634:  %var_2_634 = xor i8 %var_2_633, 1
; %var_2_455 = xor i8 %var_2_454, 1
; Matched:\<badref\>:  store i8 %var_2_206, i8* %var_2_24, align 1, !tbaa !1279
; store i8 %var_2_455, i8* %var_2_21, align 1
; Matched:%var_2_207:  %var_2_207 = xor i32 %var_2_196, %var_2_195
; %var_2_456 = xor i32 %var_2_445, %var_2_444
; Matched:%var_2_208:  %var_2_208 = lshr i32 %var_2_207, 4
; %var_2_457 = lshr i32 %var_2_456, 4
; Matched:%var_2_637:  %var_2_637 = trunc i32 %var_2_636 to i8
; %var_2_458 = trunc i32 %var_2_457 to i8
; Matched:%var_2_638:  %var_2_638 = and i8 %var_2_637, 1
; %var_2_459 = and i8 %var_2_458, 1
; Matched:\<badref\>:  store i8 %var_2_210, i8* %var_2_30, align 1, !tbaa !1280
; store i8 %var_2_459, i8* %var_2_27, align 1
; Matched:%var_2_211:  %var_2_211 = zext i1 %var_2_199 to i8
; %var_2_460 = zext i1 %var_2_448 to i8
; Matched:\<badref\>:  store i8 %var_2_639, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_460, i8* %var_2_30, align 1
; Matched:%var_2_212:  %var_2_212 = lshr i32 %var_2_196, 31
; %var_2_461 = lshr i32 %var_2_445, 31
; Matched:%var_2_213:  %var_2_213 = trunc i32 %var_2_212 to i8
; %var_2_462 = trunc i32 %var_2_461 to i8
; Matched:\<badref\>:  store i8 %var_2_213, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_462, i8* %var_2_33, align 1
; Matched:%var_2_642:  %var_2_642 = lshr i32 %var_2_623, 31
; %var_2_463 = lshr i32 %var_2_444, 31
; Matched:%var_2_643:  %var_2_643 = xor i32 %var_2_640, %var_2_642
; %var_2_464 = xor i32 %var_2_461, %var_2_463
; Matched:%var_2_216:  %var_2_216 = add nuw nsw i32 %var_2_215, %var_2_212
; %var_2_465 = add nuw nsw i32 %var_2_464, %var_2_461
; Matched:%var_2_217:  %var_2_217 = icmp eq i32 %var_2_216, 2
; %var_2_466 = icmp eq i32 %var_2_465, 2
; Matched:%var_2_646:  %var_2_646 = zext i1 %var_2_645 to i8
; %var_2_467 = zext i1 %var_2_466 to i8
; Matched:\<badref\>:  store i8 %var_2_218, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_467, i8* %var_2_39, align 1
; Matched:%var_2_647:  %var_2_647 = add i64 %var_2_620, 9
; %var_2_468 = add i64 %var_2_441, 9
; Matched:\<badref\>:  store i64 %var_2_647, i64* %PC, align 8
; store i64 %var_2_468, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_624, i32* %var_2_622, align 4
; store i32 %var_2_445, i32* %var_2_443, align 4
; Matched:%var_2_648:  %var_2_648 = load i64, i64* %PC, align 8
; %var_2_469 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_649:  %var_2_649 = add i64 %var_2_648, -146
; %var_2_470 = add i64 %var_2_469, -146
; Matched:\<badref\>:  store i64 %var_2_649, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_470, i64* %var_2_3, align 8
  br label %block_.L_400bb1

block_.L_400c48:                                  ; preds = %block_.L_400bb1
; Matched:%var_2_320:  %var_2_320 = add i64 %var_2_251, -24
; %var_2_471 = add i64 %var_2_297, -24
; Matched:%var_2_321:  %var_2_321 = add i64 %var_2_284, 5
; %var_2_472 = add i64 %var_2_330, 5
; Matched:\<badref\>:  store i64 %var_2_321, i64* %PC, align 8
; store i64 %var_2_472, i64* %var_2_3, align 8
; Matched:%var_2_322:  %var_2_322 = inttoptr i64 %var_2_320 to double*
; %var_2_473 = inttoptr i64 %var_2_471 to double*
; Matched:%var_2_323:  %var_2_323 = load double, double* %var_2_322, align 8
; %var_2_474 = load double, double* %var_2_473, align 8
; Matched:%var_2_448:  %var_2_448 = sitofp i32 %var_2_447 to double
; %var_2_475 = sitofp i32 %var_2_303 to double
; Matched:\<badref\>:  store double %var_2_448, double* %var_2_70, align 1, !tbaa !1285
; store double %var_2_475, double* %var_2_76, align 1
; Matched:%var_2_325:  %var_2_325 = fdiv double %var_2_323, %var_2_324
; %var_2_476 = fdiv double %var_2_474, %var_2_475
; Matched:\<badref\>:  store double %var_2_325, double* %var_2_64, align 1, !tbaa !1285
; store double %var_2_476, double* %var_2_66, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_66, align 1, !tbaa !1285
; store i64 0, i64* %var_2_68, align 1
; Matched:%var_2_326:  %var_2_326 = add i64 %var_2_284, -1832
; %var_2_477 = add i64 %var_2_330, -1832
; Matched:%var_2_327:  %var_2_327 = add i64 %var_2_284, 23
; %var_2_478 = add i64 %var_2_330, 23
%var_2_479 = load i64, i64* %var_2_6, align 8
%var_2_480 = add i64 %var_2_479, -8
; Matched:%var_2_330:  %var_2_330 = inttoptr i64 %var_2_329 to i64*
; %var_2_481 = inttoptr i64 %var_2_480 to i64*
; Matched:\<badref\>:  store i64 %var_2_327, i64* %var_2_330, align 8
; store i64 %var_2_478, i64* %var_2_481, align 8
; Matched:\<badref\>:  store i64 %var_2_181, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_480, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_326, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_477, i64* %var_2_3, align 8
%var_2_482 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @exp to i64), %struct.Memory* %MEMORY.1)
%var_2_483 = load i64, i64* %var_2_3, align 8
%var_2_484 = add i64 %var_2_483, ptrtoint (%G_0x20d1__rip__type* @G_0x20d1__rip_ to i64)
; Matched:%var_2_409:  %var_2_409 = add i64 %var_2_400, 8
; %var_2_485 = add i64 %var_2_483, 8
; Matched:\<badref\>:  store i64 %var_2_409, i64* %PC, align 8
; store i64 %var_2_485, i64* %var_2_3, align 8
%var_2_486 = inttoptr i64 %var_2_484 to i64*
%var_2_487 = load i64, i64* %var_2_486, align 8
store i64 %var_2_487, i64* %var_2_77, align 1
; Matched:\<badref\>:  store i32 0, i32* %var_2_99, align 1, !tbaa !1287
; store double 0.000000e+00, double* %var_2_79, align 1
%var_2_488 = load double, double* %var_2_66, align 1
%.cast2 = bitcast i64 %var_2_487 to double
%var_2_489 = fmul double %.cast2, %var_2_488
store double %var_2_489, double* %var_2_66, align 1
%var_2_490 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_337:  %var_2_337 = add i64 %var_2_336, -40
; %var_2_491 = add i64 %var_2_490, -40
; Matched:%var_2_338:  %var_2_338 = add i64 %var_2_332, 17
; %var_2_492 = add i64 %var_2_483, 17
; Matched:\<badref\>:  store i64 %var_2_338, i64* %PC, align 8
; store i64 %var_2_492, i64* %var_2_3, align 8
; Matched:%var_2_339:  %var_2_339 = inttoptr i64 %var_2_337 to double*
; %var_2_493 = inttoptr i64 %var_2_491 to double*
; Matched:%var_2_340:  %var_2_340 = load double, double* %var_2_339, align 8
; %var_2_494 = load double, double* %var_2_493, align 8
; Matched:%var_2_341:  %var_2_341 = load i32, i32* bitcast (%current_test_type* @current_test to i32*), align 8
; %var_2_495 = load i32, i32* bitcast (%G_0x605090_type* @G_0x605090 to i32*), align 8
; Matched:%var_2_342:  %var_2_342 = sitofp i32 %var_2_341 to double
; %var_2_496 = sitofp i32 %var_2_495 to double
; Matched:\<badref\>:  store double %var_2_76, double* %var_2_77, align 1, !tbaa !1285
; store double %var_2_496, double* %var_2_84, align 1
; Matched:%var_2_343:  %var_2_343 = fdiv double %var_2_340, %var_2_342
; %var_2_497 = fdiv double %var_2_494, %var_2_496
; Matched:\<badref\>:  store double %var_2_343, double* %var_2_70, align 1, !tbaa !1285
; store double %var_2_497, double* %var_2_76, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_72, align 1, !tbaa !1285
; store i64 0, i64* %var_2_78, align 1
%var_2_498 = add i64 %var_2_490, -72
; Matched:%var_2_373:  %var_2_373 = add i64 %var_2_360, 35
; %var_2_499 = add i64 %var_2_483, 35
; Matched:\<badref\>:  store i64 %var_2_373, i64* %PC, align 8
; store i64 %var_2_499, i64* %var_2_3, align 8
%var_2_500 = inttoptr i64 %var_2_498 to double*
store double %var_2_489, double* %var_2_500, align 8
; Matched:%var_2_347:  %var_2_347 = load i64, i64* %PC, align 8
; %var_2_501 = load i64, i64* %var_2_3, align 8
%var_2_502 = load <2 x i32>, <2 x i32>* %var_2_115, align 1
%var_2_503 = load <2 x i32>, <2 x i32>* %var_2_116, align 1
%var_2_504 = extractelement <2 x i32> %var_2_502, i32 0
; Matched:\<badref\>:  store i32 %var_2_403, i32* %var_2_109, align 1, !tbaa !1287
; store i32 %var_2_504, i32* %var_2_117, align 1
%var_2_505 = extractelement <2 x i32> %var_2_502, i32 1
; Matched:\<badref\>:  store i32 %var_2_351, i32* %var_2_111, align 1, !tbaa !1287
; store i32 %var_2_505, i32* %var_2_119, align 1
%var_2_506 = extractelement <2 x i32> %var_2_503, i32 0
; Matched:\<badref\>:  store i32 %var_2_405, i32* %var_2_112, align 1, !tbaa !1287
; store i32 %var_2_506, i32* %var_2_120, align 1
%var_2_507 = extractelement <2 x i32> %var_2_503, i32 1
; Matched:\<badref\>:  store i32 %var_2_381, i32* %var_2_114, align 1, !tbaa !1287
; store i32 %var_2_507, i32* %var_2_122, align 1
; Matched:%var_2_354:  %var_2_354 = add i64 %var_2_347, -1890
; %var_2_508 = add i64 %var_2_501, -1890
; Matched:%var_2_383:  %var_2_383 = add i64 %var_2_375, 8
; %var_2_509 = add i64 %var_2_501, 8
%var_2_510 = load i64, i64* %var_2_6, align 8
%var_2_511 = add i64 %var_2_510, -8
; Matched:%var_2_386:  %var_2_386 = inttoptr i64 %var_2_385 to i64*
; %var_2_512 = inttoptr i64 %var_2_511 to i64*
; Matched:\<badref\>:  store i64 %var_2_355, i64* %var_2_358, align 8
; store i64 %var_2_509, i64* %var_2_512, align 8
; Matched:\<badref\>:  store i64 %var_2_468, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_511, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_354, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_508, i64* %var_2_3, align 8
%var_2_513 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @exp to i64), %struct.Memory* %var_2_482)
%var_2_514 = load i64, i64* %var_2_3, align 8
%var_2_515 = add i64 %var_2_514, ptrtoint (%G_0x20a6__rip__type* @G_0x20a6__rip_ to i64)
; Matched:%var_2_409:  %var_2_409 = add i64 %var_2_400, 8
; %var_2_516 = add i64 %var_2_514, 8
; Matched:\<badref\>:  store i64 %var_2_409, i64* %PC, align 8
; store i64 %var_2_516, i64* %var_2_3, align 8
%var_2_517 = inttoptr i64 %var_2_515 to i64*
%var_2_518 = load i64, i64* %var_2_517, align 8
store i64 %var_2_518, i64* %var_2_77, align 1
; Matched:\<badref\>:  store i32 0, i32* %var_2_99, align 1, !tbaa !1287
; store double 0.000000e+00, double* %var_2_79, align 1
%var_2_519 = load double, double* %var_2_66, align 1
%.cast3 = bitcast i64 %var_2_518 to double
%var_2_520 = fmul double %.cast3, %var_2_519
store double %var_2_520, double* %var_2_66, align 1
%var_2_521 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_365:  %var_2_365 = add i64 %var_2_364, -48
; %var_2_522 = add i64 %var_2_521, -48
; Matched:%var_2_366:  %var_2_366 = add i64 %var_2_360, 17
; %var_2_523 = add i64 %var_2_514, 17
; Matched:\<badref\>:  store i64 %var_2_366, i64* %PC, align 8
; store i64 %var_2_523, i64* %var_2_3, align 8
; Matched:%var_2_367:  %var_2_367 = inttoptr i64 %var_2_365 to double*
; %var_2_524 = inttoptr i64 %var_2_522 to double*
; Matched:%var_2_368:  %var_2_368 = load double, double* %var_2_367, align 8
; %var_2_525 = load double, double* %var_2_524, align 8
; Matched:%var_2_75:  %var_2_75 = load i32, i32* bitcast (%iterations_type* @iterations to i32*), align 8
; %var_2_526 = load i32, i32* bitcast (%G_0x605090_type* @G_0x605090 to i32*), align 8
; Matched:%var_2_76:  %var_2_76 = sitofp i32 %var_2_75 to double
; %var_2_527 = sitofp i32 %var_2_526 to double
; Matched:\<badref\>:  store double %var_2_370, double* %var_2_77, align 1, !tbaa !1285
; store double %var_2_527, double* %var_2_84, align 1
; Matched:%var_2_371:  %var_2_371 = fdiv double %var_2_368, %var_2_370
; %var_2_528 = fdiv double %var_2_525, %var_2_527
; Matched:\<badref\>:  store double %var_2_371, double* %var_2_70, align 1, !tbaa !1285
; store double %var_2_528, double* %var_2_76, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_72, align 1, !tbaa !1285
; store i64 0, i64* %var_2_78, align 1
%var_2_529 = add i64 %var_2_521, -80
; Matched:%var_2_345:  %var_2_345 = add i64 %var_2_332, 35
; %var_2_530 = add i64 %var_2_514, 35
; Matched:\<badref\>:  store i64 %var_2_345, i64* %PC, align 8
; store i64 %var_2_530, i64* %var_2_3, align 8
%var_2_531 = inttoptr i64 %var_2_529 to double*
store double %var_2_520, double* %var_2_531, align 8
; Matched:%var_2_375:  %var_2_375 = load i64, i64* %PC, align 8
; %var_2_532 = load i64, i64* %var_2_3, align 8
%var_2_533 = load <2 x i32>, <2 x i32>* %var_2_115, align 1
%var_2_534 = load <2 x i32>, <2 x i32>* %var_2_116, align 1
%var_2_535 = extractelement <2 x i32> %var_2_533, i32 0
; Matched:\<badref\>:  store i32 %var_2_350, i32* %var_2_109, align 1, !tbaa !1287
; store i32 %var_2_535, i32* %var_2_117, align 1
%var_2_536 = extractelement <2 x i32> %var_2_533, i32 1
; Matched:\<badref\>:  store i32 %var_2_379, i32* %var_2_111, align 1, !tbaa !1287
; store i32 %var_2_536, i32* %var_2_119, align 1
%var_2_537 = extractelement <2 x i32> %var_2_534, i32 0
; Matched:\<badref\>:  store i32 %var_2_170, i32* %var_2_112, align 1, !tbaa !1287
; store i32 %var_2_537, i32* %var_2_120, align 1
%var_2_538 = extractelement <2 x i32> %var_2_534, i32 1
; Matched:\<badref\>:  store i32 %var_2_353, i32* %var_2_114, align 1, !tbaa !1287
; store i32 %var_2_538, i32* %var_2_122, align 1
; Matched:%var_2_382:  %var_2_382 = add i64 %var_2_375, -1933
; %var_2_539 = add i64 %var_2_532, -1933
; Matched:%var_2_355:  %var_2_355 = add i64 %var_2_347, 8
; %var_2_540 = add i64 %var_2_532, 8
%var_2_541 = load i64, i64* %var_2_6, align 8
%var_2_542 = add i64 %var_2_541, -8
; Matched:%var_2_358:  %var_2_358 = inttoptr i64 %var_2_357 to i64*
; %var_2_543 = inttoptr i64 %var_2_542 to i64*
; Matched:\<badref\>:  store i64 %var_2_383, i64* %var_2_386, align 8
; store i64 %var_2_540, i64* %var_2_543, align 8
; Matched:\<badref\>:  store i64 %var_2_438, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_542, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_382, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_539, i64* %var_2_3, align 8
%var_2_544 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @exp to i64), %struct.Memory* %var_2_513)
%var_2_545 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 add (i64 ptrtoint (%seg_402d20__rodata_type* @seg_402d20__rodata to i64), i64 105), i64* %RDI, align 8, !tbaa !1261
; store i64 ptrtoint (%G__0x402de0_type* @G__0x402de0 to i64), i64* %RDI.i30, align 8
%var_2_546 = add i64 %var_2_545, add (i64 ptrtoint (%G_0x2071__rip__type* @G_0x2071__rip_ to i64), i64 10)
; Matched:%var_2_567:  %var_2_567 = add i64 %var_2_556, 18
; %var_2_547 = add i64 %var_2_545, 18
; Matched:\<badref\>:  store i64 %var_2_567, i64* %PC, align 8
; store i64 %var_2_547, i64* %var_2_3, align 8
%var_2_548 = inttoptr i64 %var_2_546 to i64*
%var_2_549 = load i64, i64* %var_2_548, align 8
store i64 %var_2_549, i64* %var_2_77, align 1
; Matched:\<badref\>:  store i32 0, i32* %var_2_99, align 1, !tbaa !1287
; store double 0.000000e+00, double* %var_2_79, align 1
%var_2_550 = load double, double* %var_2_66, align 1
%.cast4 = bitcast i64 %var_2_549 to double
%var_2_551 = fmul double %.cast4, %var_2_550
store double %var_2_551, double* %var_2_66, align 1
%var_2_552 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_393:  %var_2_393 = add i64 %var_2_392, -72
; %var_2_553 = add i64 %var_2_552, -72
; Matched:%var_2_394:  %var_2_394 = add i64 %var_2_388, 27
; %var_2_554 = add i64 %var_2_545, 27
; Matched:\<badref\>:  store i64 %var_2_394, i64* %PC, align 8
; store i64 %var_2_554, i64* %var_2_3, align 8
; Matched:%var_2_395:  %var_2_395 = inttoptr i64 %var_2_393 to i64*
; %var_2_555 = inttoptr i64 %var_2_553 to i64*
; Matched:%var_2_396:  %var_2_396 = load i64, i64* %var_2_395, align 8
; %var_2_556 = load i64, i64* %var_2_555, align 8
; Matched:\<badref\>:  store i64 %var_2_396, i64* %var_2_71, align 1, !tbaa !1285
; store i64 %var_2_556, i64* %var_2_77, align 1
; Matched:\<badref\>:  store i32 0, i32* %var_2_99, align 1, !tbaa !1287
; store double 0.000000e+00, double* %var_2_79, align 1
%var_2_557 = add i64 %var_2_552, -88
; Matched:%var_2_398:  %var_2_398 = add i64 %var_2_388, 32
; %var_2_558 = add i64 %var_2_545, 32
; Matched:\<badref\>:  store i64 %var_2_398, i64* %PC, align 8
; store i64 %var_2_558, i64* %var_2_3, align 8
%var_2_559 = inttoptr i64 %var_2_557 to double*
store double %var_2_551, double* %var_2_559, align 8
%var_2_560 = load i64, i64* %var_2_3, align 8
%var_2_561 = load <2 x i32>, <2 x i32>* %var_2_115, align 1
%var_2_562 = load <2 x i32>, <2 x i32>* %var_2_116, align 1
%var_2_563 = extractelement <2 x i32> %var_2_561, i32 0
; Matched:\<badref\>:  store i32 %var_2_378, i32* %var_2_109, align 1, !tbaa !1287
; store i32 %var_2_563, i32* %var_2_117, align 1
%var_2_564 = extractelement <2 x i32> %var_2_561, i32 1
; Matched:\<badref\>:  store i32 %var_2_404, i32* %var_2_111, align 1, !tbaa !1287
; store i32 %var_2_564, i32* %var_2_119, align 1
%var_2_565 = extractelement <2 x i32> %var_2_562, i32 0
; Matched:\<badref\>:  store i32 %var_2_352, i32* %var_2_112, align 1, !tbaa !1287
; store i32 %var_2_565, i32* %var_2_120, align 1
%var_2_566 = extractelement <2 x i32> %var_2_562, i32 1
; Matched:\<badref\>:  store i32 %var_2_171, i32* %var_2_114, align 1, !tbaa !1287
; store i32 %var_2_566, i32* %var_2_122, align 1
; Matched:%var_2_407:  %var_2_407 = load i64, i64* %RBP, align 8
; %var_2_567 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_408:  %var_2_408 = add i64 %var_2_407, -80
; %var_2_568 = add i64 %var_2_567, -80
; Matched:%var_2_409:  %var_2_409 = add i64 %var_2_400, 8
; %var_2_569 = add i64 %var_2_560, 8
; Matched:\<badref\>:  store i64 %var_2_409, i64* %PC, align 8
; store i64 %var_2_569, i64* %var_2_3, align 8
; Matched:%var_2_410:  %var_2_410 = inttoptr i64 %var_2_408 to i64*
; %var_2_570 = inttoptr i64 %var_2_568 to i64*
; Matched:%var_2_411:  %var_2_411 = load i64, i64* %var_2_410, align 8
; %var_2_571 = load i64, i64* %var_2_570, align 8
; Matched:\<badref\>:  store i64 %var_2_411, i64* %var_2_71, align 1, !tbaa !1285
; store i64 %var_2_571, i64* %var_2_77, align 1
; Matched:\<badref\>:  store i32 0, i32* %var_2_99, align 1, !tbaa !1287
; store double 0.000000e+00, double* %var_2_79, align 1
; Matched:%var_2_412:  %var_2_412 = add i64 %var_2_407, -88
; %var_2_572 = add i64 %var_2_567, -88
; Matched:%var_2_413:  %var_2_413 = add i64 %var_2_400, 13
; %var_2_573 = add i64 %var_2_560, 13
; Matched:\<badref\>:  store i64 %var_2_52, i64* %PC, align 8
; store i64 %var_2_573, i64* %var_2_3, align 8
; Matched:%var_2_414:  %var_2_414 = inttoptr i64 %var_2_412 to i64*
; %var_2_574 = inttoptr i64 %var_2_572 to i64*
; Matched:%var_2_415:  %var_2_415 = load i64, i64* %var_2_414, align 8
; %var_2_575 = load i64, i64* %var_2_574, align 8
; Matched:\<badref\>:  store i64 %var_2_415, i64* %var_2_102, align 1, !tbaa !1285
; store i64 %var_2_575, i64* %var_2_109, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_104, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_111, align 1
; Matched:\<badref\>:  store i8 1, i8* %AL, align 1, !tbaa !1284
; store i8 3, i8* %AL.i45, align 1
; Matched:%var_2_416:  %var_2_416 = add i64 %var_2_400, -1941
; %var_2_576 = add i64 %var_2_560, -1941
; Matched:%var_2_417:  %var_2_417 = add i64 %var_2_400, 20
; %var_2_577 = add i64 %var_2_560, 20
%var_2_578 = load i64, i64* %var_2_6, align 8
%var_2_579 = add i64 %var_2_578, -8
; Matched:%var_2_420:  %var_2_420 = inttoptr i64 %var_2_419 to i64*
; %var_2_580 = inttoptr i64 %var_2_579 to i64*
; Matched:\<badref\>:  store i64 %var_2_417, i64* %var_2_420, align 8
; store i64 %var_2_577, i64* %var_2_580, align 8
; Matched:\<badref\>:  store i64 %var_2_419, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_579, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_416, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_576, i64* %var_2_3, align 8
%var_2_581 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %var_2_544)
%var_2_582 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 add (i64 ptrtoint (%seg_402d20__rodata_type* @seg_402d20__rodata to i64), i64 149), i64* %RDI, align 8, !tbaa !1261
; store i64 ptrtoint (%G__0x402e0a_type* @G__0x402e0a to i64), i64* %RDI.i30, align 8
%var_2_583 = add i64 %var_2_582, add (i64 ptrtoint (%G_0x203d__rip__type* @G_0x203d__rip_ to i64), i64 10)
; Matched:%var_2_567:  %var_2_567 = add i64 %var_2_556, 18
; %var_2_584 = add i64 %var_2_582, 18
; Matched:\<badref\>:  store i64 %var_2_567, i64* %PC, align 8
; store i64 %var_2_584, i64* %var_2_3, align 8
%var_2_585 = inttoptr i64 %var_2_583 to i64*
%var_2_586 = load i64, i64* %var_2_585, align 8
store i64 %var_2_586, i64* %var_2_67, align 1
store double 0.000000e+00, double* %var_2_69, align 1
%var_2_587 = load i64, i64* %RBP.i, align 8
%var_2_588 = add i64 %var_2_587, -32
; Matched:%var_2_426:  %var_2_426 = add i64 %var_2_422, 23
; %var_2_589 = add i64 %var_2_582, 23
; Matched:\<badref\>:  store i64 %var_2_426, i64* %PC, align 8
; store i64 %var_2_589, i64* %var_2_3, align 8
%var_2_590 = bitcast i64 %var_2_586 to double
%var_2_591 = inttoptr i64 %var_2_588 to double*
%var_2_592 = load double, double* %var_2_591, align 8
%var_2_593 = fmul double %var_2_590, %var_2_592
store double %var_2_593, double* %var_2_66, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_66, align 1, !tbaa !1285
; store i64 0, i64* %var_2_68, align 1
; Matched:%var_2_430:  %var_2_430 = add i64 %var_2_424, -92
; %var_2_594 = add i64 %var_2_587, -92
; Matched:%var_2_431:  %var_2_431 = load i32, i32* %EAX, align 4
; %var_2_595 = load i32, i32* %EAX.i112, align 4
; Matched:%var_2_432:  %var_2_432 = add i64 %var_2_422, 26
; %var_2_596 = add i64 %var_2_582, 26
; Matched:\<badref\>:  store i64 %var_2_432, i64* %PC, align 8
; store i64 %var_2_596, i64* %var_2_3, align 8
; Matched:%var_2_433:  %var_2_433 = inttoptr i64 %var_2_430 to i32*
; %var_2_597 = inttoptr i64 %var_2_594 to i32*
; Matched:\<badref\>:  store i32 %var_2_431, i32* %var_2_433, align 4
; store i32 %var_2_595, i32* %var_2_597, align 4
; Matched:%var_2_434:  %var_2_434 = load i64, i64* %PC, align 8
; %var_2_598 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i8 3, i8* %AL, align 1, !tbaa !1284
; store i8 1, i8* %AL.i45, align 1
; Matched:%var_2_435:  %var_2_435 = add i64 %var_2_434, -1987
; %var_2_599 = add i64 %var_2_598, -1987
; Matched:%var_2_436:  %var_2_436 = add i64 %var_2_434, 7
; %var_2_600 = add i64 %var_2_598, 7
%var_2_601 = load i64, i64* %var_2_6, align 8
%var_2_602 = add i64 %var_2_601, -8
; Matched:%var_2_59:  %var_2_59 = inttoptr i64 %var_2_58 to i64*
; %var_2_603 = inttoptr i64 %var_2_602 to i64*
; Matched:\<badref\>:  store i64 %var_2_56, i64* %var_2_59, align 8
; store i64 %var_2_600, i64* %var_2_603, align 8
; Matched:\<badref\>:  store i64 %var_2_575, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_602, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_435, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_599, i64* %var_2_3, align 8
%var_2_604 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %var_2_581)
; Matched:%var_2_441:  %var_2_441 = load i64, i64* %RBP, align 8
; %var_2_605 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_442:  %var_2_442 = add i64 %var_2_441, -48
; %var_2_606 = add i64 %var_2_605, -48
%var_2_607 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_557:  %var_2_557 = add i64 %var_2_556, 5
; %var_2_608 = add i64 %var_2_607, 5
; Matched:\<badref\>:  store i64 %var_2_557, i64* %PC, align 8
; store i64 %var_2_608, i64* %var_2_3, align 8
; Matched:%var_2_445:  %var_2_445 = inttoptr i64 %var_2_442 to double*
; %var_2_609 = inttoptr i64 %var_2_606 to double*
; Matched:%var_2_446:  %var_2_446 = load double, double* %var_2_445, align 8
; %var_2_610 = load double, double* %var_2_609, align 8
%var_2_611 = load i32, i32* bitcast (%G_0x605090_type* @G_0x605090 to i32*), align 8
; Matched:%var_2_324:  %var_2_324 = sitofp i32 %var_2_257 to double
; %var_2_612 = sitofp i32 %var_2_611 to double
; Matched:\<badref\>:  store double %var_2_324, double* %var_2_70, align 1, !tbaa !1285
; store double %var_2_612, double* %var_2_76, align 1
; Matched:%var_2_449:  %var_2_449 = fdiv double %var_2_446, %var_2_448
; %var_2_613 = fdiv double %var_2_610, %var_2_612
; Matched:\<badref\>:  store double %var_2_449, double* %var_2_64, align 1, !tbaa !1285
; store double %var_2_613, double* %var_2_66, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_66, align 1, !tbaa !1285
; store i64 0, i64* %var_2_68, align 1
; Matched:%var_2_450:  %var_2_450 = add i64 %var_2_441, -96
; %var_2_614 = add i64 %var_2_605, -96
; Matched:%var_2_451:  %var_2_451 = load i32, i32* %EAX, align 4
; %var_2_615 = load i32, i32* %EAX.i112, align 4
; Matched:%var_2_452:  %var_2_452 = add i64 %var_2_443, 21
; %var_2_616 = add i64 %var_2_607, 21
; Matched:\<badref\>:  store i64 %var_2_452, i64* %PC, align 8
; store i64 %var_2_616, i64* %var_2_3, align 8
; Matched:%var_2_453:  %var_2_453 = inttoptr i64 %var_2_450 to i32*
; %var_2_617 = inttoptr i64 %var_2_614 to i32*
; Matched:\<badref\>:  store i32 %var_2_451, i32* %var_2_453, align 4
; store i32 %var_2_615, i32* %var_2_617, align 4
; Matched:%var_2_454:  %var_2_454 = load i64, i64* %PC, align 8
; %var_2_618 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_455:  %var_2_455 = add i64 %var_2_454, -2047
; %var_2_619 = add i64 %var_2_618, -2047
; Matched:%var_2_456:  %var_2_456 = add i64 %var_2_454, 5
; %var_2_620 = add i64 %var_2_618, 5
%var_2_621 = load i64, i64* %var_2_6, align 8
%var_2_622 = add i64 %var_2_621, -8
; Matched:%var_2_459:  %var_2_459 = inttoptr i64 %var_2_458 to i64*
; %var_2_623 = inttoptr i64 %var_2_622 to i64*
; Matched:\<badref\>:  store i64 %var_2_456, i64* %var_2_459, align 8
; store i64 %var_2_620, i64* %var_2_623, align 8
; Matched:\<badref\>:  store i64 %var_2_385, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_622, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_455, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_619, i64* %var_2_3, align 8
%var_2_624 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @exp to i64), %struct.Memory* %var_2_604)
%var_2_625 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 add (i64 ptrtoint (%seg_402d20__rodata_type* @seg_402d20__rodata to i64), i64 192), i64* %RDI, align 8, !tbaa !1261
; store i64 ptrtoint (%G__0x402e2a_type* @G__0x402e2a to i64), i64* %RDI.i30, align 8
%var_2_626 = add i64 %var_2_625, add (i64 ptrtoint (%G_0x2002__rip__type* @G_0x2002__rip_ to i64), i64 10)
; Matched:%var_2_567:  %var_2_567 = add i64 %var_2_556, 18
; %var_2_627 = add i64 %var_2_625, 18
; Matched:\<badref\>:  store i64 %var_2_567, i64* %PC, align 8
; store i64 %var_2_627, i64* %var_2_3, align 8
%var_2_628 = inttoptr i64 %var_2_626 to i64*
%var_2_629 = load i64, i64* %var_2_628, align 8
store i64 %var_2_629, i64* %var_2_77, align 1
; Matched:\<badref\>:  store i32 0, i32* %var_2_99, align 1, !tbaa !1287
; store double 0.000000e+00, double* %var_2_79, align 1
%var_2_630 = load double, double* %var_2_66, align 1
%.cast5 = bitcast i64 %var_2_629 to double
%var_2_631 = fmul double %.cast5, %var_2_630
store double %var_2_631, double* %var_2_66, align 1
; Matched:\<badref\>:  store i8 3, i8* %AL, align 1, !tbaa !1284
; store i8 1, i8* %AL.i45, align 1
; Matched:%var_2_465:  %var_2_465 = add i64 %var_2_461, -2020
; %var_2_632 = add i64 %var_2_625, -2020
; Matched:%var_2_466:  %var_2_466 = add i64 %var_2_461, 29
; %var_2_633 = add i64 %var_2_625, 29
%var_2_634 = load i64, i64* %var_2_6, align 8
%var_2_635 = add i64 %var_2_634, -8
; Matched:%var_2_469:  %var_2_469 = inttoptr i64 %var_2_468 to i64*
; %var_2_636 = inttoptr i64 %var_2_635 to i64*
; Matched:\<badref\>:  store i64 %var_2_466, i64* %var_2_469, align 8
; store i64 %var_2_633, i64* %var_2_636, align 8
; Matched:\<badref\>:  store i64 %var_2_458, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_635, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_465, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_632, i64* %var_2_3, align 8
%var_2_637 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %var_2_624)
; Matched:%var_2_471:  %var_2_471 = load i64, i64* %RBP, align 8
; %var_2_638 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_472:  %var_2_472 = add i64 %var_2_471, -100
; %var_2_639 = add i64 %var_2_638, -100
; Matched:%var_2_473:  %var_2_473 = load i32, i32* %EAX, align 4
; %var_2_640 = load i32, i32* %EAX.i112, align 4
%var_2_641 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_193:  %var_2_193 = add i64 %var_2_192, 3
; %var_2_642 = add i64 %var_2_641, 3
; Matched:\<badref\>:  store i64 %var_2_621, i64* %PC, align 8
; store i64 %var_2_642, i64* %var_2_3, align 8
; Matched:%var_2_476:  %var_2_476 = inttoptr i64 %var_2_472 to i32*
; %var_2_643 = inttoptr i64 %var_2_639 to i32*
; Matched:\<badref\>:  store i32 %var_2_473, i32* %var_2_476, align 4
; store i32 %var_2_640, i32* %var_2_643, align 4
; Matched:%var_2_477:  %var_2_477 = load i64, i64* %RSP, align 8
; %var_2_644 = load i64, i64* %var_2_6, align 8
%var_2_645 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_479:  %var_2_479 = add i64 %var_2_477, 112
; %var_2_646 = add i64 %var_2_644, 112
; Matched:\<badref\>:  store i64 %var_2_479, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_646, i64* %var_2_6, align 8
; Matched:%var_2_480:  %var_2_480 = icmp ugt i64 %var_2_477, -113
; %var_2_647 = icmp ugt i64 %var_2_644, -113
; Matched:%var_2_481:  %var_2_481 = zext i1 %var_2_480 to i8
; %var_2_648 = zext i1 %var_2_647 to i8
; Matched:\<badref\>:  store i8 %var_2_481, i8* %var_2_17, align 1, !tbaa !1265
; store i8 %var_2_648, i8* %var_2_14, align 1
; Matched:%var_2_482:  %var_2_482 = trunc i64 %var_2_479 to i32
; %var_2_649 = trunc i64 %var_2_646 to i32
; Matched:%var_2_483:  %var_2_483 = and i32 %var_2_482, 255
; %var_2_650 = and i32 %var_2_649, 255
; Matched:%var_2_484:  %var_2_484 = tail call i32 @llvm.ctpop.i32(i32 %var_2_483) #12
; %var_2_651 = tail call i32 @llvm.ctpop.i32(i32 %var_2_650)
; Matched:%var_2_485:  %var_2_485 = trunc i32 %var_2_484 to i8
; %var_2_652 = trunc i32 %var_2_651 to i8
; Matched:%var_2_486:  %var_2_486 = and i8 %var_2_485, 1
; %var_2_653 = and i8 %var_2_652, 1
; Matched:%var_2_487:  %var_2_487 = xor i8 %var_2_486, 1
; %var_2_654 = xor i8 %var_2_653, 1
; Matched:\<badref\>:  store i8 %var_2_487, i8* %var_2_24, align 1, !tbaa !1279
; store i8 %var_2_654, i8* %var_2_21, align 1
; Matched:%var_2_488:  %var_2_488 = xor i64 %var_2_477, 16
; %var_2_655 = xor i64 %var_2_644, 16
; Matched:%var_2_489:  %var_2_489 = xor i64 %var_2_488, %var_2_479
; %var_2_656 = xor i64 %var_2_655, %var_2_646
; Matched:%var_2_490:  %var_2_490 = lshr i64 %var_2_489, 4
; %var_2_657 = lshr i64 %var_2_656, 4
; Matched:%var_2_491:  %var_2_491 = trunc i64 %var_2_490 to i8
; %var_2_658 = trunc i64 %var_2_657 to i8
; Matched:%var_2_492:  %var_2_492 = and i8 %var_2_491, 1
; %var_2_659 = and i8 %var_2_658, 1
; Matched:\<badref\>:  store i8 %var_2_492, i8* %var_2_30, align 1, !tbaa !1280
; store i8 %var_2_659, i8* %var_2_27, align 1
; Matched:%var_2_493:  %var_2_493 = icmp eq i64 %var_2_479, 0
; %var_2_660 = icmp eq i64 %var_2_646, 0
; Matched:%var_2_494:  %var_2_494 = zext i1 %var_2_493 to i8
; %var_2_661 = zext i1 %var_2_660 to i8
; Matched:\<badref\>:  store i8 %var_2_494, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_661, i8* %var_2_30, align 1
; Matched:%var_2_495:  %var_2_495 = lshr i64 %var_2_479, 63
; %var_2_662 = lshr i64 %var_2_646, 63
; Matched:%var_2_496:  %var_2_496 = trunc i64 %var_2_495 to i8
; %var_2_663 = trunc i64 %var_2_662 to i8
; Matched:\<badref\>:  store i8 %var_2_496, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_663, i8* %var_2_33, align 1
; Matched:%var_2_497:  %var_2_497 = lshr i64 %var_2_477, 63
; %var_2_664 = lshr i64 %var_2_644, 63
; Matched:%var_2_498:  %var_2_498 = xor i64 %var_2_495, %var_2_497
; %var_2_665 = xor i64 %var_2_662, %var_2_664
; Matched:%var_2_499:  %var_2_499 = add nuw nsw i64 %var_2_498, %var_2_495
; %var_2_666 = add nuw nsw i64 %var_2_665, %var_2_662
; Matched:%var_2_500:  %var_2_500 = icmp eq i64 %var_2_499, 2
; %var_2_667 = icmp eq i64 %var_2_666, 2
; Matched:%var_2_501:  %var_2_501 = zext i1 %var_2_500 to i8
; %var_2_668 = zext i1 %var_2_667 to i8
; Matched:\<badref\>:  store i8 %var_2_501, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_668, i8* %var_2_39, align 1
; Matched:%var_2_444:  %var_2_444 = add i64 %var_2_443, 5
; %var_2_669 = add i64 %var_2_645, 5
; Matched:\<badref\>:  store i64 %var_2_444, i64* %PC, align 8
; store i64 %var_2_669, i64* %var_2_3, align 8
; Matched:%var_2_503:  %var_2_503 = add i64 %var_2_477, 120
; %var_2_670 = add i64 %var_2_644, 120
; Matched:%var_2_504:  %var_2_504 = inttoptr i64 %var_2_479 to i64*
; %var_2_671 = inttoptr i64 %var_2_646 to i64*
; Matched:%var_2_505:  %var_2_505 = load i64, i64* %var_2_504, align 8
; %var_2_672 = load i64, i64* %var_2_671, align 8
; Matched:\<badref\>:  store i64 %var_2_505, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_672, i64* %RBP.i, align 8
; Matched:\<badref\>:  store i64 %var_2_503, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_670, i64* %var_2_6, align 8
; Matched:%var_2_506:  %var_2_506 = add i64 %var_2_478, 6
; %var_2_673 = add i64 %var_2_645, 6
; Matched:\<badref\>:  store i64 %var_2_506, i64* %PC, align 8
; store i64 %var_2_673, i64* %var_2_3, align 8
; Matched:%var_2_507:  %var_2_507 = inttoptr i64 %var_2_503 to i64*
; %var_2_674 = inttoptr i64 %var_2_670 to i64*
; Matched:%var_2_508:  %var_2_508 = load i64, i64* %var_2_507, align 8
; %var_2_675 = load i64, i64* %var_2_674, align 8
; Matched:\<badref\>:  store i64 %var_2_508, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_675, i64* %var_2_3, align 8
; Matched:%var_2_509:  %var_2_509 = add i64 %var_2_477, 128
; %var_2_676 = add i64 %var_2_644, 128
; Matched:\<badref\>:  store i64 %var_2_509, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_676, i64* %var_2_6, align 8
ret %struct.Memory* %var_2_637
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
define %struct.Memory* @routine_subq__0x70___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -112
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 112
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
define %struct.Memory* @routine_movq__0x402d58___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x402d58_type* @G__0x402d58 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movq__0x402d89___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x402d89_type* @G__0x402d89 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movsd_0x2243__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x2243__rip__type* @G_0x2243__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x2243__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x2243__rip__type* @G_0x2243__rip_ to i64)
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
define %struct.Memory* @routine_cvtsi2sdl_0x605050___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = load i32, i32* bitcast (%G_0x605050_type* @G_0x605050 to i32*), align 8
  %7 = sitofp i32 %6 to double
  %8 = bitcast %union.VectorReg* %3 to double*
  store double %7, double* %8, align 1
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
define %struct.Memory* @routine_movsd__xmm1__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_cmpl_0x605090___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x605090_type* @G_0x605090 to i32*), align 8
  %8 = sub i32 %4, %7
  %9 = icmp ult i32 %4, %7
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %8, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %4
  %19 = xor i32 %18, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %8, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %8, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %4, 31
  %31 = lshr i32 %7, 31
  %32 = xor i32 %31, %30
  %33 = xor i32 %27, %30
  %34 = add nuw nsw i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_400b93(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x402db5___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x402db5_type* @G__0x402db5 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x2209__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x2209__rip__type* @G_0x2209__rip_ to i64)
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
define %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
define %struct.Memory* @routine_mulsd_0x6050a0___rax_8____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, 6312096
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to double*
  %10 = load double, double* %9, align 1
  %11 = inttoptr i64 %6 to double*
  %12 = load double, double* %11, align 8
  %13 = fmul double %10, %12
  store double %13, double* %9, align 1
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
define %struct.Memory* @routine_divsd_0x6050a0___rax_8____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, 6312096
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to double*
  %10 = load double, double* %9, align 1
  %11 = inttoptr i64 %6 to double*
  %12 = load double, double* %11, align 8
  %13 = fdiv double %10, %12
  store double %13, double* %9, align 1
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
define %struct.Memory* @routine_movsd_0x6050a0___rax_8____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 3
  %5 = add i64 %4, 6312096
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 9
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %9, i64* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to double*
  store double 0.000000e+00, double* %12, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd_0x6050a0___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x6050a0_type* @G_0x6050a0 to double*), align 8
  %9 = fdiv double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd__xmm0___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
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
define %struct.Memory* @routine_movb__0x3___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 3, i8* %AL, align 1
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
define %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400b0d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_400c48(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x6050a0___rax_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 3
  %5 = add i64 %4, 6312096
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 9
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %9, i64* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to double*
  store double 0.000000e+00, double* %12, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_MINUS0x20__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
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
define %struct.Memory* @routine_callq_.log_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_divsd_0x6050a0___rax_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, 6312096
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to double*
  %10 = load double, double* %9, align 1
  %11 = inttoptr i64 %6 to double*
  %12 = load double, double* %11, align 8
  %13 = fdiv double %10, %12
  store double %13, double* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_MINUS0x28__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd_0x6050a0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x6050a0_type* @G_0x6050a0 to double*), align 8
  %9 = fdiv double %7, %8
  store double %9, double* %6, align 1
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
define %struct.Memory* @routine_jmpq_.L_400bb1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_cvtsi2sdl_0x605090___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = load i32, i32* bitcast (%G_0x605090_type* @G_0x605090 to i32*), align 8
  %7 = sitofp i32 %6 to double
  %8 = bitcast %union.VectorReg* %3 to double*
  store double %7, double* %8, align 1
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
define %struct.Memory* @routine_callq_.exp_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x20d1__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x20d1__rip__type* @G_0x20d1__rip_ to i64)
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
define %struct.Memory* @routine_cvtsi2sdl_0x605090___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = load i32, i32* bitcast (%G_0x605090_type* @G_0x605090 to i32*), align 8
  %7 = sitofp i32 %6 to double
  %8 = bitcast %union.VectorReg* %3 to double*
  store double %7, double* %8, align 1
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_movsd_0x20a6__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x20a6__rip__type* @G_0x20a6__rip_ to i64)
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
define %struct.Memory* @routine_movq__0x402de0___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x402de0_type* @G__0x402de0 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x2071__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x2071__rip__type* @G_0x2071__rip_ to i64)
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
define %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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
define %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x402e0a___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x402e0a_type* @G__0x402e0a to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x203d__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x203d__rip__type* @G_0x203d__rip_ to i64)
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
define %struct.Memory* @routine_mulsd_MINUS0x20__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
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
define %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl__eax__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x402e2a___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x402e2a_type* @G__0x402e2a to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x2002__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x2002__rip__type* @G_0x2002__rip_ to i64)
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x70___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 112
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -113
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
