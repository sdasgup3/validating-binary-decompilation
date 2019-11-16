; ModuleID = '/tmp/tmpazq1ujhb-query.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x1e1__rip__type = type <{ [8 x i8] }>
%G__0x4008c0_type = type <{ [8 x i8] }>
%G__0x4008de_type = type <{ [8 x i8] }>
%G__0x4008fc_type = type <{ [8 x i8] }>
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
@G_0x1e1__rip_ = global %G_0x1e1__rip__type zeroinitializer
@G__0x4008c0 = global %G__0x4008c0_type zeroinitializer
@G__0x4008de = global %G__0x4008de_type zeroinitializer
@G__0x4008fc = global %G__0x4008fc_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @cosf(i64)

declare extern_weak x86_64_sysvcc i64 @posix_memalign(i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @sinf(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_400790.double_array_divs_variable(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

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
; Matched:%var_2_15:  %var_2_15 = add i64 %var_2_11, -104
; %var_2_11 = add i64 %var_2_7, -104
; Matched:\<badref\>:  store i64 %var_2_15, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_11, i64* %var_2_6, align 8
; Matched:%var_2_16:  %var_2_16 = icmp ult i64 %var_2_12, 96
; %var_2_12 = icmp ult i64 %var_2_8, 96
; Matched:%var_2_17:  %var_2_17 = zext i1 %var_2_16 to i8
; %var_2_13 = zext i1 %var_2_12 to i8
; Matched:%var_2_18:  %var_2_18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
; %var_2_14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
; Matched:\<badref\>:  store i8 %var_2_17, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_13, i8* %var_2_14, align 1
; Matched:%var_2_19:  %var_2_19 = trunc i64 %var_2_15 to i32
; %var_2_15 = trunc i64 %var_2_11 to i32
; Matched:%var_2_20:  %var_2_20 = and i32 %var_2_19, 255
; %var_2_16 = and i32 %var_2_15, 255
; Matched:%var_2_21:  %var_2_21 = tail call i32 @llvm.ctpop.i32(i32 %var_2_20) #12
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
; Matched:%var_2_26:  %var_2_26 = xor i64 %var_2_12, %var_2_15
; %var_2_22 = xor i64 %var_2_8, %var_2_11
; Matched:%var_2_27:  %var_2_27 = lshr i64 %var_2_26, 4
; %var_2_23 = lshr i64 %var_2_22, 4
; Matched:%var_2_28:  %var_2_28 = trunc i64 %var_2_27 to i8
; %var_2_24 = trunc i64 %var_2_23 to i8
; Matched:%var_2_29:  %var_2_29 = and i8 %var_2_28, 1
; %var_2_25 = and i8 %var_2_24, 1
; Matched:%var_2_30:  %var_2_30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
; %var_2_26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
; Matched:\<badref\>:  store i8 %var_2_29, i8* %var_2_30, align 1, !tbaa !1280
; store i8 %var_2_25, i8* %var_2_26, align 1
; Matched:%var_2_31:  %var_2_31 = icmp eq i64 %var_2_15, 0
; %var_2_27 = icmp eq i64 %var_2_11, 0
; Matched:%var_2_32:  %var_2_32 = zext i1 %var_2_31 to i8
; %var_2_28 = zext i1 %var_2_27 to i8
; Matched:%var_2_33:  %var_2_33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
; %var_2_29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
; Matched:\<badref\>:  store i8 %var_2_32, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_28, i8* %var_2_29, align 1
; Matched:%var_2_34:  %var_2_34 = lshr i64 %var_2_15, 63
; %var_2_30 = lshr i64 %var_2_11, 63
; Matched:%var_2_35:  %var_2_35 = trunc i64 %var_2_34 to i8
; %var_2_31 = trunc i64 %var_2_30 to i8
; Matched:%var_2_36:  %var_2_36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
; %var_2_32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
; Matched:\<badref\>:  store i8 %var_2_35, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_31, i8* %var_2_32, align 1
; Matched:%var_2_37:  %var_2_37 = lshr i64 %var_2_12, 63
; %var_2_33 = lshr i64 %var_2_8, 63
; Matched:%var_2_38:  %var_2_38 = xor i64 %var_2_34, %var_2_37
; %var_2_34 = xor i64 %var_2_30, %var_2_33
; Matched:%var_2_39:  %var_2_39 = add nuw nsw i64 %var_2_38, %var_2_37
; %var_2_35 = add nuw nsw i64 %var_2_34, %var_2_33
; Matched:%var_2_40:  %var_2_40 = icmp eq i64 %var_2_39, 2
; %var_2_36 = icmp eq i64 %var_2_35, 2
; Matched:%var_2_41:  %var_2_41 = zext i1 %var_2_40 to i8
; %var_2_37 = zext i1 %var_2_36 to i8
; Matched:%var_2_42:  %var_2_42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; %var_2_38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; Matched:\<badref\>:  store i8 %var_2_41, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_37, i8* %var_2_38, align 1
%var_2_39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
%RAX.i83 = getelementptr inbounds %union.anon, %union.anon* %var_2_39, i64 0, i32 0
; Matched:  %EAX = bitcast %union.anon* %var_2_3 to i32*
; %EAX.i119 = bitcast %union.anon* %var_2_39 to i32*
%var_2_40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
%RCX.i120 = getelementptr inbounds %union.anon, %union.anon* %var_2_40, i64 0, i32 0
  store i64 16, i64* %RCX.i120, align 8
  store i64 16384, i64* %RAX.i83, align 8
  %RDX.i145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  store i64 16384, i64* %RDX.i145, align 8
; Matched:  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
; %R8.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
; Matched:%var_2_43:  %var_2_43 = add i64 %var_2_11, -32
; %var_2_41 = add i64 %var_2_7, -32
; Matched:\<badref\>:  store i64 %var_2_43, i64* %R8, align 8, !tbaa !1261
; store i64 %var_2_41, i64* %R8.i, align 8
; Matched:%var_2_44:  %var_2_44 = add i64 %var_2_11, -12
; %var_2_42 = add i64 %var_2_7, -12
; Matched:%var_2_45:  %var_2_45 = add i64 %var_2_14, 32
; %var_2_43 = add i64 %var_2_10, 32
; Matched:\<badref\>:  store i64 %var_2_45, i64* %PC, align 8
; store i64 %var_2_43, i64* %var_2_3, align 8
; Matched:%var_2_46:  %var_2_46 = inttoptr i64 %var_2_44 to i32*
; %var_2_44 = inttoptr i64 %var_2_42 to i32*
; Matched:\<badref\>:  store i32 0, i32* %var_2_46, align 4
; store i32 0, i32* %var_2_44, align 4
%var_2_45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
; Matched:  %EDI = bitcast %union.anon* %var_2_5 to i32*
; %EDI.i = bitcast %union.anon* %var_2_45 to i32*
; Matched:%var_2_47:  %var_2_47 = load i64, i64* %RBP, align 8
; %var_2_46 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_48:  %var_2_48 = add i64 %var_2_47, -8
; %var_2_47 = add i64 %var_2_46, -8
; Matched:%var_2_49:  %var_2_49 = load i32, i32* %EDI, align 4
; %var_2_48 = load i32, i32* %EDI.i, align 4
; Matched:%var_2_117:  %var_2_117 = load i64, i64* %PC, align 8
; %var_2_49 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_51:  %var_2_51 = add i64 %var_2_50, 3
; %var_2_50 = add i64 %var_2_49, 3
; Matched:\<badref\>:  store i64 %var_2_118, i64* %PC, align 8
; store i64 %var_2_50, i64* %var_2_3, align 8
; Matched:%var_2_52:  %var_2_52 = inttoptr i64 %var_2_48 to i32*
; %var_2_51 = inttoptr i64 %var_2_47 to i32*
; Matched:\<badref\>:  store i32 %var_2_49, i32* %var_2_52, align 4
; store i32 %var_2_48, i32* %var_2_51, align 4
  %RSI.i175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
; Matched:%var_2_53:  %var_2_53 = load i64, i64* %RBP, align 8
; %var_2_52 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_54:  %var_2_54 = add i64 %var_2_53, -16
; %var_2_53 = add i64 %var_2_52, -16
; Matched:%var_2_55:  %var_2_55 = load i64, i64* %RSI, align 8
; %var_2_54 = load i64, i64* %RSI.i175, align 8
; Matched:%var_2_350:  %var_2_350 = load i64, i64* %PC, align 8
; %var_2_55 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_351:  %var_2_351 = add i64 %var_2_350, 4
; %var_2_56 = add i64 %var_2_55, 4
; Matched:\<badref\>:  store i64 %var_2_57, i64* %PC, align 8
; store i64 %var_2_56, i64* %var_2_3, align 8
; Matched:%var_2_58:  %var_2_58 = inttoptr i64 %var_2_54 to i64*
; %var_2_57 = inttoptr i64 %var_2_53 to i64*
; Matched:\<badref\>:  store i64 %var_2_55, i64* %var_2_58, align 8
; store i64 %var_2_54, i64* %var_2_57, align 8
%RDI.i172 = getelementptr inbounds %union.anon, %union.anon* %var_2_45, i64 0, i32 0
; Matched:%var_2_59:  %var_2_59 = load i64, i64* %R8, align 8
; %var_2_58 = load i64, i64* %R8.i, align 8
; Matched:%var_2_60:  %var_2_60 = load i64, i64* %PC, align 8
; %var_2_59 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_59, i64* %RDI, align 8, !tbaa !1261
; store i64 %var_2_58, i64* %RDI.i172, align 8
; Matched:%var_2_61:  %var_2_61 = load i64, i64* %RCX, align 8
; %var_2_60 = load i64, i64* %RCX.i120, align 8
; Matched:\<badref\>:  store i64 %var_2_61, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_60, i64* %RSI.i175, align 8
; Matched:%var_2_62:  %var_2_62 = add i64 %var_2_60, -296
; %var_2_61 = add i64 %var_2_59, -296
; Matched:%var_2_316:  %var_2_316 = add i64 %var_2_305, 11
; %var_2_62 = add i64 %var_2_59, 11
%var_2_63 = load i64, i64* %var_2_6, align 8
%var_2_64 = add i64 %var_2_63, -8
; Matched:%var_2_319:  %var_2_319 = inttoptr i64 %var_2_318 to i64*
; %var_2_65 = inttoptr i64 %var_2_64 to i64*
; Matched:\<badref\>:  store i64 %var_2_316, i64* %var_2_319, align 8
; store i64 %var_2_62, i64* %var_2_65, align 8
; Matched:\<badref\>:  store i64 %var_2_278, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_64, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_62, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_61, i64* %var_2_3, align 8
%var_2_66 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @posix_memalign to i64), %struct.Memory* %2)
; Matched:%var_2_68:  %var_2_68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
; %var_2_67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
; Matched:%var_2_69:  %var_2_69 = load i64, i64* %PC, align 8
; %var_2_68 = load i64, i64* %var_2_3, align 8
  store i64 16, i64* %RSI.i175, align 8
; Matched:\<badref\>:  store i64 16384, i64* %var_2_68, align 8, !tbaa !1261
; store i64 16384, i64* %var_2_67, align 8
  store i64 16384, i64* %RDX.i145, align 8
; Matched:%var_2_70:  %var_2_70 = load i64, i64* %RBP, align 8
; %var_2_69 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_71:  %var_2_71 = add i64 %var_2_70, -32
; %var_2_70 = add i64 %var_2_69, -32
; Matched:\<badref\>:  store i64 %var_2_71, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_70, i64* %RCX.i120, align 8
; Matched:\<badref\>:  store i64 %var_2_71, i64* %RDI, align 8, !tbaa !1261
; store i64 %var_2_70, i64* %RDI.i172, align 8
; Matched:%var_2_72:  %var_2_72 = add i64 %var_2_70, -44
; %var_2_71 = add i64 %var_2_69, -44
; Matched:%var_2_73:  %var_2_73 = load i32, i32* %EAX, align 4
; %var_2_72 = load i32, i32* %EAX.i119, align 4
; Matched:%var_2_74:  %var_2_74 = add i64 %var_2_69, 28
; %var_2_73 = add i64 %var_2_68, 28
; Matched:\<badref\>:  store i64 %var_2_74, i64* %PC, align 8
; store i64 %var_2_73, i64* %var_2_3, align 8
; Matched:%var_2_75:  %var_2_75 = inttoptr i64 %var_2_72 to i32*
; %var_2_74 = inttoptr i64 %var_2_71 to i32*
; Matched:\<badref\>:  store i32 %var_2_73, i32* %var_2_75, align 4
; store i32 %var_2_72, i32* %var_2_74, align 4
; Matched:%var_2_76:  %var_2_76 = load i64, i64* %PC, align 8
; %var_2_75 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_77:  %var_2_77 = add i64 %var_2_76, -335
; %var_2_76 = add i64 %var_2_75, -335
; Matched:%var_2_276:  %var_2_276 = add i64 %var_2_274, 5
; %var_2_77 = add i64 %var_2_75, 5
%var_2_78 = load i64, i64* %var_2_6, align 8
%var_2_79 = add i64 %var_2_78, -8
; Matched:%var_2_279:  %var_2_279 = inttoptr i64 %var_2_278 to i64*
; %var_2_80 = inttoptr i64 %var_2_79 to i64*
; Matched:\<badref\>:  store i64 %var_2_276, i64* %var_2_279, align 8
; store i64 %var_2_77, i64* %var_2_80, align 8
; Matched:\<badref\>:  store i64 %var_2_80, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_79, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_77, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_76, i64* %var_2_3, align 8
%var_2_81 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @posix_memalign to i64), %struct.Memory* %var_2_66)
%var_2_82 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x4008c0_type* @G__0x4008c0 to i64), i64* %RDI.i172, align 8
  store i64 131072, i64* %RSI.i175, align 8
; Matched:%var_2_84:  %var_2_84 = load i64, i64* %RBP, align 8
; %var_2_83 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_85:  %var_2_85 = add i64 %var_2_84, -48
; %var_2_84 = add i64 %var_2_83, -48
; Matched:%var_2_86:  %var_2_86 = load i32, i32* %EAX, align 4
; %var_2_85 = load i32, i32* %EAX.i119, align 4
; Matched:%var_2_172:  %var_2_172 = add i64 %var_2_166, 18
; %var_2_86 = add i64 %var_2_82, 18
; Matched:\<badref\>:  store i64 %var_2_172, i64* %PC, align 8
; store i64 %var_2_86, i64* %var_2_3, align 8
; Matched:%var_2_88:  %var_2_88 = inttoptr i64 %var_2_85 to i32*
; %var_2_87 = inttoptr i64 %var_2_84 to i32*
; Matched:\<badref\>:  store i32 %var_2_86, i32* %var_2_88, align 4
; store i32 %var_2_85, i32* %var_2_87, align 4
; Matched:  %AL = bitcast %union.anon* %var_2_3 to i8*
; %AL.i135 = bitcast %union.anon* %var_2_39 to i8*
; Matched:%var_2_102:  %var_2_102 = load i64, i64* %PC, align 8
; %var_2_88 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i8 0, i8* %AL, align 1, !tbaa !1284
; store i8 0, i8* %AL.i135, align 1
; Matched:%var_2_90:  %var_2_90 = add i64 %var_2_89, -390
; %var_2_89 = add i64 %var_2_88, -390
; Matched:%var_2_104:  %var_2_104 = add i64 %var_2_102, 7
; %var_2_90 = add i64 %var_2_88, 7
%var_2_91 = load i64, i64* %var_2_6, align 8
%var_2_92 = add i64 %var_2_91, -8
; Matched:%var_2_94:  %var_2_94 = inttoptr i64 %var_2_93 to i64*
; %var_2_93 = inttoptr i64 %var_2_92 to i64*
; Matched:\<badref\>:  store i64 %var_2_104, i64* %var_2_107, align 8
; store i64 %var_2_90, i64* %var_2_93, align 8
; Matched:\<badref\>:  store i64 %var_2_318, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_92, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_90, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_89, i64* %var_2_3, align 8
%var_2_94 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %var_2_81)
%var_2_95 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x4008de_type* @G__0x4008de to i64), i64* %RDI.i172, align 8
  store i64 2048, i64* %RSI.i175, align 8
; Matched:%var_2_97:  %var_2_97 = load i64, i64* %RBP, align 8
; %var_2_96 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_98:  %var_2_98 = add i64 %var_2_97, -52
; %var_2_97 = add i64 %var_2_96, -52
; Matched:%var_2_99:  %var_2_99 = load i32, i32* %EAX, align 4
; %var_2_98 = load i32, i32* %EAX.i119, align 4
; Matched:%var_2_87:  %var_2_87 = add i64 %var_2_83, 18
; %var_2_99 = add i64 %var_2_95, 18
; Matched:\<badref\>:  store i64 %var_2_332, i64* %PC, align 8
; store i64 %var_2_99, i64* %var_2_3, align 8
; Matched:%var_2_101:  %var_2_101 = inttoptr i64 %var_2_98 to i32*
; %var_2_100 = inttoptr i64 %var_2_97 to i32*
; Matched:\<badref\>:  store i32 %var_2_99, i32* %var_2_101, align 4
; store i32 %var_2_98, i32* %var_2_100, align 4
; Matched:%var_2_89:  %var_2_89 = load i64, i64* %PC, align 8
; %var_2_101 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i8 0, i8* %AL, align 1, !tbaa !1284
; store i8 0, i8* %AL.i135, align 1
; Matched:%var_2_103:  %var_2_103 = add i64 %var_2_102, -415
; %var_2_102 = add i64 %var_2_101, -415
; Matched:%var_2_91:  %var_2_91 = add i64 %var_2_89, 7
; %var_2_103 = add i64 %var_2_101, 7
%var_2_104 = load i64, i64* %var_2_6, align 8
%var_2_105 = add i64 %var_2_104, -8
; Matched:%var_2_107:  %var_2_107 = inttoptr i64 %var_2_106 to i64*
; %var_2_106 = inttoptr i64 %var_2_105 to i64*
; Matched:\<badref\>:  store i64 %var_2_91, i64* %var_2_94, align 8
; store i64 %var_2_103, i64* %var_2_106, align 8
; Matched:\<badref\>:  store i64 %var_2_65, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_105, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_103, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_102, i64* %var_2_3, align 8
%var_2_107 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %var_2_94)
%var_2_108 = load i64, i64* %RBP.i, align 8
%var_2_109 = add i64 %var_2_108, -40
; Matched:%var_2_111:  %var_2_111 = load i64, i64* %PC, align 8
; %var_2_110 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_265:  %var_2_265 = add i64 %var_2_256, 8
; %var_2_111 = add i64 %var_2_110, 8
; Matched:\<badref\>:  store i64 %var_2_265, i64* %PC, align 8
; store i64 %var_2_111, i64* %var_2_3, align 8
%var_2_112 = inttoptr i64 %var_2_109 to i64*
store i64 0, i64* %var_2_112, align 8
; Matched:%var_2_114:  %var_2_114 = load i64, i64* %RBP, align 8
; %var_2_113 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_115:  %var_2_115 = add i64 %var_2_114, -56
; %var_2_114 = add i64 %var_2_113, -56
; Matched:%var_2_116:  %var_2_116 = load i32, i32* %EAX, align 4
; %var_2_115 = load i32, i32* %EAX.i119, align 4
; Matched:%var_2_50:  %var_2_50 = load i64, i64* %PC, align 8
; %var_2_116 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_118:  %var_2_118 = add i64 %var_2_117, 3
; %var_2_117 = add i64 %var_2_116, 3
; Matched:\<badref\>:  store i64 %var_2_51, i64* %PC, align 8
; store i64 %var_2_117, i64* %var_2_3, align 8
; Matched:%var_2_119:  %var_2_119 = inttoptr i64 %var_2_115 to i32*
; %var_2_118 = inttoptr i64 %var_2_114 to i32*
; Matched:\<badref\>:  store i32 %var_2_116, i32* %var_2_119, align 4
; store i32 %var_2_115, i32* %var_2_118, align 4
%var_2_119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
; Matched:%var_2_120:  %var_2_120 = bitcast [32 x %union.VectorReg]* %var_2_6 to i8*
; %var_2_120 = bitcast [32 x %union.VectorReg]* %var_2_119 to i8*
; Matched:%var_2_121:  %var_2_121 = bitcast [32 x %union.VectorReg]* %var_2_6 to double*
; %var_2_121 = bitcast [32 x %union.VectorReg]* %var_2_119 to double*
%var_2_122 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %var_2_119, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
%var_2_123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
%var_2_124 = bitcast i64* %var_2_123 to double*
%var_2_125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
; Matched:%var_2_125:  %var_2_125 = bitcast %union.VectorReg* %var_2_7 to double*
; %var_2_126 = bitcast %union.VectorReg* %var_2_125 to double*
%var_2_127 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_125, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:%var_2_127:  %var_2_127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
; %var_2_128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_128:  %var_2_128 = bitcast i64* %var_2_127 to double*
; %var_2_129 = bitcast i64* %var_2_128 to double*
%var_2_130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
; Matched:%var_2_130:  %var_2_130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
; %var_2_131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_131:  %var_2_131 = bitcast i64* %var_2_130 to double*
; %var_2_132 = bitcast i64* %var_2_131 to double*
; Matched:%var_2_8:  %var_2_8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
; %var_2_133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
; Matched:%var_2_132:  %var_2_132 = bitcast %union.VectorReg* %var_2_8 to i8*
; %var_2_134 = bitcast %union.VectorReg* %var_2_133 to i8*
%var_2_135 = bitcast %union.VectorReg* %var_2_133 to <2 x i32>*
; Matched:%var_2_134:  %var_2_134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
; %var_2_136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
%var_2_137 = bitcast i64* %var_2_136 to <2 x i32>*
; Matched:%var_2_136:  %var_2_136 = bitcast %union.VectorReg* %var_2_8 to float*
; %var_2_138 = bitcast %union.VectorReg* %var_2_133 to float*
; Matched:%var_2_137:  %var_2_137 = getelementptr inbounds i8, i8* %var_2_132, i64 4
; %var_2_139 = getelementptr inbounds i8, i8* %var_2_134, i64 4
; Matched:%var_2_138:  %var_2_138 = bitcast i8* %var_2_137 to i32*
; %var_2_140 = bitcast i8* %var_2_139 to i32*
; Matched:%var_2_139:  %var_2_139 = bitcast i64* %var_2_134 to i32*
; %var_2_141 = bitcast i64* %var_2_136 to i32*
; Matched:%var_2_140:  %var_2_140 = getelementptr inbounds i8, i8* %var_2_132, i64 12
; %var_2_142 = getelementptr inbounds i8, i8* %var_2_134, i64 12
; Matched:%var_2_141:  %var_2_141 = bitcast i8* %var_2_140 to i32*
; %var_2_143 = bitcast i8* %var_2_142 to i32*
; Matched:%var_2_142:  %var_2_142 = bitcast [32 x %union.VectorReg]* %var_2_6 to i32*
; %var_2_144 = bitcast [32 x %union.VectorReg]* %var_2_119 to i32*
; Matched:%var_2_143:  %var_2_143 = getelementptr inbounds i8, i8* %var_2_120, i64 4
; %var_2_145 = getelementptr inbounds i8, i8* %var_2_120, i64 4
; Matched:%var_2_144:  %var_2_144 = bitcast i8* %var_2_143 to i32*
; %var_2_146 = bitcast i8* %var_2_145 to i32*
; Matched:%var_2_145:  %var_2_145 = bitcast i64* %var_2_123 to i32*
; %var_2_147 = bitcast i64* %var_2_123 to i32*
; Matched:%var_2_146:  %var_2_146 = getelementptr inbounds i8, i8* %var_2_120, i64 12
; %var_2_148 = getelementptr inbounds i8, i8* %var_2_120, i64 12
; Matched:%var_2_147:  %var_2_147 = bitcast i8* %var_2_146 to i32*
; %var_2_149 = bitcast i8* %var_2_148 to i32*
%var_2_150 = bitcast [32 x %union.VectorReg]* %var_2_119 to <2 x float>*
%var_2_151 = bitcast [32 x %union.VectorReg]* %var_2_119 to <2 x i32>*
%var_2_152 = bitcast i64* %var_2_123 to <2 x i32>*
; Matched:%var_2_151:  %var_2_151 = bitcast [32 x %union.VectorReg]* %var_2_6 to float*
; %var_2_153 = bitcast [32 x %union.VectorReg]* %var_2_119 to float*
%.pre = load i64, i64* %var_2_3, align 8
  br label %block_.L_4006b1

block_.L_4006b1:                                  ; preds = %block_4006bf, %entry
%var_2_154 = phi i64 [ %.pre, %entry ], [ %var_2_352, %block_4006bf ]
%MEMORY.0 = phi %struct.Memory* [ %var_2_107, %entry ], [ %var_2_293, %block_4006bf ]
%var_2_155 = load i64, i64* %RBP.i, align 8
%var_2_156 = add i64 %var_2_155, -40
; Matched:%var_2_383:  %var_2_383 = add i64 %var_2_380, 8
; %var_2_157 = add i64 %var_2_154, 8
; Matched:\<badref\>:  store i64 %var_2_383, i64* %PC, align 8
; store i64 %var_2_157, i64* %var_2_3, align 8
%var_2_158 = inttoptr i64 %var_2_156 to i64*
%var_2_159 = load i64, i64* %var_2_158, align 8
%var_2_160 = add i64 %var_2_159, -2048
; Matched:%var_2_387:  %var_2_387 = icmp ult i64 %var_2_385, 2048
; %var_2_161 = icmp ult i64 %var_2_159, 2048
; Matched:%var_2_228:  %var_2_228 = zext i1 %var_2_227 to i8
; %var_2_162 = zext i1 %var_2_161 to i8
; Matched:\<badref\>:  store i8 %var_2_228, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_162, i8* %var_2_14, align 1
; Matched:%var_2_389:  %var_2_389 = trunc i64 %var_2_386 to i32
; %var_2_163 = trunc i64 %var_2_160 to i32
; Matched:%var_2_390:  %var_2_390 = and i32 %var_2_389, 255
; %var_2_164 = and i32 %var_2_163, 255
; Matched:%var_2_391:  %var_2_391 = tail call i32 @llvm.ctpop.i32(i32 %var_2_390) #12
; %var_2_165 = tail call i32 @llvm.ctpop.i32(i32 %var_2_164)
; Matched:%var_2_392:  %var_2_392 = trunc i32 %var_2_391 to i8
; %var_2_166 = trunc i32 %var_2_165 to i8
; Matched:%var_2_393:  %var_2_393 = and i8 %var_2_392, 1
; %var_2_167 = and i8 %var_2_166, 1
; Matched:%var_2_394:  %var_2_394 = xor i8 %var_2_393, 1
; %var_2_168 = xor i8 %var_2_167, 1
; Matched:\<badref\>:  store i8 %var_2_394, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_168, i8* %var_2_21, align 1
; Matched:%var_2_395:  %var_2_395 = xor i64 %var_2_386, %var_2_385
; %var_2_169 = xor i64 %var_2_160, %var_2_159
; Matched:%var_2_396:  %var_2_396 = lshr i64 %var_2_395, 4
; %var_2_170 = lshr i64 %var_2_169, 4
; Matched:%var_2_397:  %var_2_397 = trunc i64 %var_2_396 to i8
; %var_2_171 = trunc i64 %var_2_170 to i8
; Matched:%var_2_398:  %var_2_398 = and i8 %var_2_397, 1
; %var_2_172 = and i8 %var_2_171, 1
; Matched:\<badref\>:  store i8 %var_2_398, i8* %var_2_30, align 1, !tbaa !1280
; store i8 %var_2_172, i8* %var_2_26, align 1
; Matched:%var_2_399:  %var_2_399 = icmp eq i64 %var_2_386, 0
; %var_2_173 = icmp eq i64 %var_2_160, 0
; Matched:%var_2_400:  %var_2_400 = zext i1 %var_2_399 to i8
; %var_2_174 = zext i1 %var_2_173 to i8
; Matched:\<badref\>:  store i8 %var_2_400, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_174, i8* %var_2_29, align 1
%var_2_175 = lshr i64 %var_2_160, 63
%var_2_176 = trunc i64 %var_2_175 to i8
; Matched:\<badref\>:  store i8 %var_2_402, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_176, i8* %var_2_32, align 1
%var_2_177 = lshr i64 %var_2_159, 63
%var_2_178 = xor i64 %var_2_175, %var_2_177
%var_2_179 = add nuw nsw i64 %var_2_178, %var_2_177
%var_2_180 = icmp eq i64 %var_2_179, 2
; Matched:%var_2_407:  %var_2_407 = zext i1 %var_2_406 to i8
; %var_2_181 = zext i1 %var_2_180 to i8
; Matched:\<badref\>:  store i8 %var_2_407, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_181, i8* %var_2_38, align 1
%var_2_182 = icmp ne i8 %var_2_176, 0
%var_2_183 = xor i1 %var_2_182, %var_2_180
%.v = select i1 %var_2_183, i64 14, i64 166
%var_2_184 = add i64 %var_2_154, %.v
; Matched:\<badref\>:  store i64 %var_2_410, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_184, i64* %var_2_3, align 8
br i1 %var_2_183, label %block_4006bf, label %block_.L_400757

block_4006bf:                                     ; preds = %block_.L_4006b1
%var_2_185 = add i64 %var_2_184, ptrtoint (%G_0x1e1__rip__type* @G_0x1e1__rip_ to i64)
; Matched:%var_2_157:  %var_2_157 = add i64 %var_2_410, 8
; %var_2_186 = add i64 %var_2_184, 8
; Matched:\<badref\>:  store i64 %var_2_157, i64* %PC, align 8
; store i64 %var_2_186, i64* %var_2_3, align 8
%var_2_187 = inttoptr i64 %var_2_185 to i64*
%var_2_188 = load i64, i64* %var_2_187, align 8
store i64 %var_2_188, i64* %var_2_122, align 1
store double 0.000000e+00, double* %var_2_124, align 1
%var_2_189 = add i64 %var_2_184, add (i64 ptrtoint (%G_0x1e1__rip__type* @G_0x1e1__rip_ to i64), i64 8)
%var_2_190 = add i64 %var_2_184, 16
store i64 %var_2_190, i64* %var_2_3, align 8
%var_2_191 = inttoptr i64 %var_2_189 to i64*
%var_2_192 = load i64, i64* %var_2_191, align 8
store i64 %var_2_192, i64* %var_2_127, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_128, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_129, align 1
%var_2_193 = add i64 %var_2_184, add (i64 ptrtoint (%G_0x1e1__rip__type* @G_0x1e1__rip_ to i64), i64 16)
%var_2_194 = add i64 %var_2_184, 24
store i64 %var_2_194, i64* %var_2_3, align 8
%var_2_195 = inttoptr i64 %var_2_193 to i64*
%var_2_196 = load i64, i64* %var_2_195, align 8
store i64 %var_2_196, i64* %var_2_130, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_131, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_132, align 1
  store i64 2048, i64* %RAX.i83, align 8
  store i64 2048, i64* %RCX.i120, align 8
; Matched:%var_2_224:  %var_2_224 = add i64 %var_2_410, 35
; %var_2_197 = add i64 %var_2_184, 35
; Matched:\<badref\>:  store i64 %var_2_224, i64* %PC, align 8
; store i64 %var_2_197, i64* %var_2_3, align 8
; Matched:%var_2_385:  %var_2_385 = load i64, i64* %var_2_384, align 8
; %var_2_198 = load i64, i64* %var_2_158, align 8
; Matched:%var_2_226:  %var_2_226 = sub i64 2048, %var_2_225
; %var_2_199 = sub i64 2048, %var_2_198
; Matched:\<badref\>:  store i64 %var_2_226, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_199, i64* %RCX.i120, align 8
; Matched:%var_2_227:  %var_2_227 = icmp ugt i64 %var_2_225, 2048
; %var_2_200 = icmp ugt i64 %var_2_198, 2048
; Matched:%var_2_388:  %var_2_388 = zext i1 %var_2_387 to i8
; %var_2_201 = zext i1 %var_2_200 to i8
; Matched:\<badref\>:  store i8 %var_2_388, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_201, i8* %var_2_14, align 1
; Matched:%var_2_229:  %var_2_229 = trunc i64 %var_2_226 to i32
; %var_2_202 = trunc i64 %var_2_199 to i32
; Matched:%var_2_230:  %var_2_230 = and i32 %var_2_229, 255
; %var_2_203 = and i32 %var_2_202, 255
; Matched:%var_2_231:  %var_2_231 = tail call i32 @llvm.ctpop.i32(i32 %var_2_230) #12
; %var_2_204 = tail call i32 @llvm.ctpop.i32(i32 %var_2_203)
; Matched:%var_2_232:  %var_2_232 = trunc i32 %var_2_231 to i8
; %var_2_205 = trunc i32 %var_2_204 to i8
; Matched:%var_2_233:  %var_2_233 = and i8 %var_2_232, 1
; %var_2_206 = and i8 %var_2_205, 1
; Matched:%var_2_234:  %var_2_234 = xor i8 %var_2_233, 1
; %var_2_207 = xor i8 %var_2_206, 1
; Matched:\<badref\>:  store i8 %var_2_234, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_207, i8* %var_2_21, align 1
; Matched:%var_2_235:  %var_2_235 = xor i64 %var_2_225, %var_2_226
; %var_2_208 = xor i64 %var_2_198, %var_2_199
; Matched:%var_2_236:  %var_2_236 = lshr i64 %var_2_235, 4
; %var_2_209 = lshr i64 %var_2_208, 4
; Matched:%var_2_237:  %var_2_237 = trunc i64 %var_2_236 to i8
; %var_2_210 = trunc i64 %var_2_209 to i8
; Matched:%var_2_238:  %var_2_238 = and i8 %var_2_237, 1
; %var_2_211 = and i8 %var_2_210, 1
; Matched:\<badref\>:  store i8 %var_2_238, i8* %var_2_30, align 1, !tbaa !1280
; store i8 %var_2_211, i8* %var_2_26, align 1
; Matched:%var_2_239:  %var_2_239 = icmp eq i64 %var_2_226, 0
; %var_2_212 = icmp eq i64 %var_2_199, 0
; Matched:%var_2_240:  %var_2_240 = zext i1 %var_2_239 to i8
; %var_2_213 = zext i1 %var_2_212 to i8
; Matched:\<badref\>:  store i8 %var_2_240, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_213, i8* %var_2_29, align 1
; Matched:%var_2_241:  %var_2_241 = lshr i64 %var_2_226, 63
; %var_2_214 = lshr i64 %var_2_199, 63
; Matched:%var_2_242:  %var_2_242 = trunc i64 %var_2_241 to i8
; %var_2_215 = trunc i64 %var_2_214 to i8
; Matched:\<badref\>:  store i8 %var_2_242, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_215, i8* %var_2_32, align 1
; Matched:%var_2_243:  %var_2_243 = lshr i64 %var_2_225, 63
; %var_2_216 = lshr i64 %var_2_198, 63
; Matched:%var_2_244:  %var_2_244 = add nuw nsw i64 %var_2_241, %var_2_243
; %var_2_217 = add nuw nsw i64 %var_2_214, %var_2_216
; Matched:%var_2_245:  %var_2_245 = icmp eq i64 %var_2_244, 2
; %var_2_218 = icmp eq i64 %var_2_217, 2
; Matched:%var_2_246:  %var_2_246 = zext i1 %var_2_245 to i8
; %var_2_219 = zext i1 %var_2_218 to i8
; Matched:\<badref\>:  store i8 %var_2_246, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_219, i8* %var_2_38, align 1
%var_2_220 = load <2 x i32>, <2 x i32>* %var_2_135, align 1
%var_2_221 = load <2 x i32>, <2 x i32>* %var_2_137, align 1
; Matched:%var_2_249:  %var_2_249 = sitofp i64 %var_2_226 to float
; %var_2_222 = sitofp i64 %var_2_199 to float
; Matched:\<badref\>:  store float %var_2_249, float* %var_2_136, align 1, !tbaa !1287
; store float %var_2_222, float* %var_2_138, align 1
%var_2_223 = extractelement <2 x i32> %var_2_220, i32 1
; Matched:\<badref\>:  store i32 %var_2_250, i32* %var_2_138, align 1, !tbaa !1287
; store i32 %var_2_223, i32* %var_2_140, align 1
%var_2_224 = extractelement <2 x i32> %var_2_221, i32 0
; Matched:\<badref\>:  store i32 %var_2_251, i32* %var_2_139, align 1, !tbaa !1287
; store i32 %var_2_224, i32* %var_2_141, align 1
%var_2_225 = extractelement <2 x i32> %var_2_221, i32 1
; Matched:\<badref\>:  store i32 %var_2_252, i32* %var_2_141, align 1, !tbaa !1287
; store i32 %var_2_225, i32* %var_2_143, align 1
%var_2_226 = add i64 %var_2_155, -64
; Matched:%var_2_254:  %var_2_254 = add i64 %var_2_410, 45
; %var_2_227 = add i64 %var_2_184, 45
; Matched:\<badref\>:  store i64 %var_2_254, i64* %PC, align 8
; store i64 %var_2_227, i64* %var_2_3, align 8
%var_2_228 = inttoptr i64 %var_2_226 to i64*
store i64 %var_2_188, i64* %var_2_228, align 8
; Matched:%var_2_256:  %var_2_256 = load i64, i64* %PC, align 8
; %var_2_229 = load i64, i64* %var_2_3, align 8
%var_2_230 = load <2 x i32>, <2 x i32>* %var_2_135, align 1
%var_2_231 = load <2 x i32>, <2 x i32>* %var_2_137, align 1
%var_2_232 = extractelement <2 x i32> %var_2_230, i32 0
; Matched:\<badref\>:  store i32 %var_2_259, i32* %var_2_142, align 1, !tbaa !1287
; store i32 %var_2_232, i32* %var_2_144, align 1
%var_2_233 = extractelement <2 x i32> %var_2_230, i32 1
; Matched:\<badref\>:  store i32 %var_2_260, i32* %var_2_144, align 1, !tbaa !1287
; store i32 %var_2_233, i32* %var_2_146, align 1
%var_2_234 = extractelement <2 x i32> %var_2_231, i32 0
; Matched:\<badref\>:  store i32 %var_2_261, i32* %var_2_145, align 1, !tbaa !1287
; store i32 %var_2_234, i32* %var_2_147, align 1
%var_2_235 = extractelement <2 x i32> %var_2_231, i32 1
; Matched:\<badref\>:  store i32 %var_2_262, i32* %var_2_147, align 1, !tbaa !1287
; store i32 %var_2_235, i32* %var_2_149, align 1
; Matched:%var_2_263:  %var_2_263 = load i64, i64* %RBP, align 8
; %var_2_236 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_264:  %var_2_264 = add i64 %var_2_263, -72
; %var_2_237 = add i64 %var_2_236, -72
; Matched:%var_2_112:  %var_2_112 = add i64 %var_2_111, 8
; %var_2_238 = add i64 %var_2_229, 8
; Matched:\<badref\>:  store i64 %var_2_112, i64* %PC, align 8
; store i64 %var_2_238, i64* %var_2_3, align 8
; Matched:%var_2_266:  %var_2_266 = load i64, i64* %var_2_129, align 1
; %var_2_239 = load i64, i64* %var_2_130, align 1
; Matched:%var_2_267:  %var_2_267 = inttoptr i64 %var_2_264 to i64*
; %var_2_240 = inttoptr i64 %var_2_237 to i64*
; Matched:\<badref\>:  store i64 %var_2_266, i64* %var_2_267, align 8
; store i64 %var_2_239, i64* %var_2_240, align 8
; Matched:%var_2_268:  %var_2_268 = load i64, i64* %RBP, align 8
; %var_2_241 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_269:  %var_2_269 = add i64 %var_2_268, -80
; %var_2_242 = add i64 %var_2_241, -80
; Matched:%var_2_181:  %var_2_181 = load i64, i64* %PC, align 8
; %var_2_243 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_185:  %var_2_185 = add i64 %var_2_181, 5
; %var_2_244 = add i64 %var_2_243, 5
; Matched:\<badref\>:  store i64 %var_2_185, i64* %PC, align 8
; store i64 %var_2_244, i64* %var_2_3, align 8
; Matched:%var_2_272:  %var_2_272 = load i64, i64* %var_2_126, align 1
; %var_2_245 = load i64, i64* %var_2_127, align 1
; Matched:%var_2_273:  %var_2_273 = inttoptr i64 %var_2_269 to i64*
; %var_2_246 = inttoptr i64 %var_2_242 to i64*
; Matched:\<badref\>:  store i64 %var_2_272, i64* %var_2_273, align 8
; store i64 %var_2_245, i64* %var_2_246, align 8
; Matched:%var_2_274:  %var_2_274 = load i64, i64* %PC, align 8
; %var_2_247 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_275:  %var_2_275 = add i64 %var_2_274, -521
; %var_2_248 = add i64 %var_2_247, -521
; Matched:%var_2_78:  %var_2_78 = add i64 %var_2_76, 5
; %var_2_249 = add i64 %var_2_247, 5
%var_2_250 = load i64, i64* %var_2_6, align 8
%var_2_251 = add i64 %var_2_250, -8
; Matched:%var_2_81:  %var_2_81 = inttoptr i64 %var_2_80 to i64*
; %var_2_252 = inttoptr i64 %var_2_251 to i64*
; Matched:\<badref\>:  store i64 %var_2_78, i64* %var_2_81, align 8
; store i64 %var_2_249, i64* %var_2_252, align 8
; Matched:\<badref\>:  store i64 %var_2_163, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_251, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_275, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_248, i64* %var_2_3, align 8
%var_2_253 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @cosf to i64), %struct.Memory* %MEMORY.0)
%var_2_254 = load i64, i64* %var_2_3, align 8
%var_2_255 = load <2 x float>, <2 x float>* %var_2_150, align 1
%var_2_256 = extractelement <2 x float> %var_2_255, i32 0
; Matched:%var_2_284:  %var_2_284 = fpext float %var_2_283 to double
; %var_2_257 = fpext float %var_2_256 to double
; Matched:\<badref\>:  store double %var_2_284, double* %var_2_121, align 1, !tbaa !1285
; store double %var_2_257, double* %var_2_121, align 1
; Matched:%var_2_285:  %var_2_285 = load i64, i64* %RBP, align 8
; %var_2_258 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_286:  %var_2_286 = add i64 %var_2_285, -72
; %var_2_259 = add i64 %var_2_258, -72
; Matched:%var_2_327:  %var_2_327 = add i64 %var_2_321, 9
; %var_2_260 = add i64 %var_2_254, 9
; Matched:\<badref\>:  store i64 %var_2_287, i64* %PC, align 8
; store i64 %var_2_260, i64* %var_2_3, align 8
; Matched:%var_2_288:  %var_2_288 = inttoptr i64 %var_2_286 to double*
; %var_2_261 = inttoptr i64 %var_2_259 to double*
; Matched:%var_2_289:  %var_2_289 = load double, double* %var_2_288, align 8
; %var_2_262 = load double, double* %var_2_261, align 8
; Matched:%var_2_290:  %var_2_290 = fmul double %var_2_289, %var_2_284
; %var_2_263 = fmul double %var_2_262, %var_2_257
; Matched:\<badref\>:  store double %var_2_290, double* %var_2_125, align 1, !tbaa !1285
; store double %var_2_263, double* %var_2_126, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_127, align 1, !tbaa !1285
; store i64 0, i64* %var_2_128, align 1
; Matched:%var_2_291:  %var_2_291 = add i64 %var_2_285, -24
; %var_2_264 = add i64 %var_2_258, -24
; Matched:%var_2_292:  %var_2_292 = add i64 %var_2_281, 17
; %var_2_265 = add i64 %var_2_254, 17
; Matched:\<badref\>:  store i64 %var_2_292, i64* %PC, align 8
; store i64 %var_2_265, i64* %var_2_3, align 8
; Matched:%var_2_293:  %var_2_293 = inttoptr i64 %var_2_291 to i64*
; %var_2_266 = inttoptr i64 %var_2_264 to i64*
; Matched:%var_2_294:  %var_2_294 = load i64, i64* %var_2_293, align 8
; %var_2_267 = load i64, i64* %var_2_266, align 8
; Matched:\<badref\>:  store i64 %var_2_294, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_267, i64* %RCX.i120, align 8
; Matched:%var_2_295:  %var_2_295 = add i64 %var_2_285, -40
; %var_2_268 = add i64 %var_2_258, -40
; Matched:%var_2_296:  %var_2_296 = add i64 %var_2_281, 21
; %var_2_269 = add i64 %var_2_254, 21
; Matched:\<badref\>:  store i64 %var_2_296, i64* %PC, align 8
; store i64 %var_2_269, i64* %var_2_3, align 8
; Matched:%var_2_342:  %var_2_342 = inttoptr i64 %var_2_340 to i64*
; %var_2_270 = inttoptr i64 %var_2_268 to i64*
; Matched:%var_2_298:  %var_2_298 = load i64, i64* %var_2_297, align 8
; %var_2_271 = load i64, i64* %var_2_270, align 8
; Matched:\<badref\>:  store i64 %var_2_343, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_271, i64* %RDX.i145, align 8
; Matched:%var_2_299:  %var_2_299 = shl i64 %var_2_298, 3
; %var_2_272 = shl i64 %var_2_271, 3
; Matched:%var_2_300:  %var_2_300 = add i64 %var_2_294, %var_2_299
; %var_2_273 = add i64 %var_2_267, %var_2_272
; Matched:%var_2_337:  %var_2_337 = add i64 %var_2_321, 26
; %var_2_274 = add i64 %var_2_254, 26
; Matched:\<badref\>:  store i64 %var_2_337, i64* %PC, align 8
; store i64 %var_2_274, i64* %var_2_3, align 8
; Matched:%var_2_302:  %var_2_302 = inttoptr i64 %var_2_300 to double*
; %var_2_275 = inttoptr i64 %var_2_273 to double*
; Matched:\<badref\>:  store double %var_2_290, double* %var_2_302, align 8
; store double %var_2_263, double* %var_2_275, align 8
; Matched:%var_2_303:  %var_2_303 = load i64, i64* %RBP, align 8
; %var_2_276 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_304:  %var_2_304 = add i64 %var_2_303, -40
; %var_2_277 = add i64 %var_2_276, -40
; Matched:%var_2_305:  %var_2_305 = load i64, i64* %PC, align 8
; %var_2_278 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_306:  %var_2_306 = add i64 %var_2_305, 6
; %var_2_279 = add i64 %var_2_278, 6
; Matched:\<badref\>:  store i64 %var_2_306, i64* %PC, align 8
; store i64 %var_2_279, i64* %var_2_3, align 8
%var_2_280 = load <2 x i32>, <2 x i32>* %var_2_151, align 1
%var_2_281 = load <2 x i32>, <2 x i32>* %var_2_152, align 1
; Matched:%var_2_309:  %var_2_309 = inttoptr i64 %var_2_304 to i64*
; %var_2_282 = inttoptr i64 %var_2_277 to i64*
; Matched:%var_2_310:  %var_2_310 = load i64, i64* %var_2_309, align 8
; %var_2_283 = load i64, i64* %var_2_282, align 8
; Matched:%var_2_311:  %var_2_311 = sitofp i64 %var_2_310 to float
; %var_2_284 = sitofp i64 %var_2_283 to float
; Matched:\<badref\>:  store float %var_2_311, float* %var_2_151, align 1, !tbaa !1287
; store float %var_2_284, float* %var_2_153, align 1
%var_2_285 = extractelement <2 x i32> %var_2_280, i32 1
; Matched:\<badref\>:  store i32 %var_2_312, i32* %var_2_144, align 1, !tbaa !1287
; store i32 %var_2_285, i32* %var_2_146, align 1
%var_2_286 = extractelement <2 x i32> %var_2_281, i32 0
; Matched:\<badref\>:  store i32 %var_2_313, i32* %var_2_145, align 1, !tbaa !1287
; store i32 %var_2_286, i32* %var_2_147, align 1
%var_2_287 = extractelement <2 x i32> %var_2_281, i32 1
; Matched:\<badref\>:  store i32 %var_2_314, i32* %var_2_147, align 1, !tbaa !1287
; store i32 %var_2_287, i32* %var_2_149, align 1
; Matched:%var_2_315:  %var_2_315 = add i64 %var_2_305, -520
; %var_2_288 = add i64 %var_2_278, -520
; Matched:%var_2_63:  %var_2_63 = add i64 %var_2_60, 11
; %var_2_289 = add i64 %var_2_278, 11
%var_2_290 = load i64, i64* %var_2_6, align 8
%var_2_291 = add i64 %var_2_290, -8
; Matched:%var_2_66:  %var_2_66 = inttoptr i64 %var_2_65 to i64*
; %var_2_292 = inttoptr i64 %var_2_291 to i64*
; Matched:\<badref\>:  store i64 %var_2_63, i64* %var_2_66, align 8
; store i64 %var_2_289, i64* %var_2_292, align 8
; Matched:\<badref\>:  store i64 %var_2_178, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_291, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_315, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_288, i64* %var_2_3, align 8
%var_2_293 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @sinf to i64), %struct.Memory* %var_2_253)
%var_2_294 = load i64, i64* %var_2_3, align 8
%var_2_295 = load <2 x float>, <2 x float>* %var_2_150, align 1
%var_2_296 = extractelement <2 x float> %var_2_295, i32 0
; Matched:%var_2_324:  %var_2_324 = fpext float %var_2_323 to double
; %var_2_297 = fpext float %var_2_296 to double
; Matched:\<badref\>:  store double %var_2_324, double* %var_2_121, align 1, !tbaa !1285
; store double %var_2_297, double* %var_2_121, align 1
; Matched:%var_2_325:  %var_2_325 = load i64, i64* %RBP, align 8
; %var_2_298 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_326:  %var_2_326 = add i64 %var_2_325, -80
; %var_2_299 = add i64 %var_2_298, -80
; Matched:%var_2_287:  %var_2_287 = add i64 %var_2_281, 9
; %var_2_300 = add i64 %var_2_294, 9
; Matched:\<badref\>:  store i64 %var_2_327, i64* %PC, align 8
; store i64 %var_2_300, i64* %var_2_3, align 8
; Matched:%var_2_328:  %var_2_328 = inttoptr i64 %var_2_326 to double*
; %var_2_301 = inttoptr i64 %var_2_299 to double*
; Matched:%var_2_329:  %var_2_329 = load double, double* %var_2_328, align 8
; %var_2_302 = load double, double* %var_2_301, align 8
; Matched:%var_2_330:  %var_2_330 = fmul double %var_2_329, %var_2_324
; %var_2_303 = fmul double %var_2_302, %var_2_297
; Matched:\<badref\>:  store double %var_2_330, double* %var_2_125, align 1, !tbaa !1285
; store double %var_2_303, double* %var_2_126, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_127, align 1, !tbaa !1285
; store i64 0, i64* %var_2_128, align 1
; Matched:%var_2_331:  %var_2_331 = add i64 %var_2_325, -64
; %var_2_304 = add i64 %var_2_298, -64
; Matched:%var_2_332:  %var_2_332 = add i64 %var_2_321, 18
; %var_2_305 = add i64 %var_2_294, 18
; Matched:\<badref\>:  store i64 %var_2_87, i64* %PC, align 8
; store i64 %var_2_305, i64* %var_2_3, align 8
; Matched:%var_2_333:  %var_2_333 = inttoptr i64 %var_2_331 to double*
; %var_2_306 = inttoptr i64 %var_2_304 to double*
; Matched:%var_2_334:  %var_2_334 = load double, double* %var_2_333, align 8
; %var_2_307 = load double, double* %var_2_306, align 8
; Matched:%var_2_335:  %var_2_335 = fadd double %var_2_334, %var_2_330
; %var_2_308 = fadd double %var_2_307, %var_2_303
; Matched:\<badref\>:  store double %var_2_335, double* %var_2_121, align 1, !tbaa !1285
; store double %var_2_308, double* %var_2_121, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_123, align 1, !tbaa !1285
; store i64 0, i64* %var_2_123, align 1
; Matched:%var_2_336:  %var_2_336 = add i64 %var_2_325, -32
; %var_2_309 = add i64 %var_2_298, -32
; Matched:%var_2_301:  %var_2_301 = add i64 %var_2_281, 26
; %var_2_310 = add i64 %var_2_294, 26
; Matched:\<badref\>:  store i64 %var_2_301, i64* %PC, align 8
; store i64 %var_2_310, i64* %var_2_3, align 8
; Matched:%var_2_338:  %var_2_338 = inttoptr i64 %var_2_336 to i64*
; %var_2_311 = inttoptr i64 %var_2_309 to i64*
; Matched:%var_2_339:  %var_2_339 = load i64, i64* %var_2_338, align 8
; %var_2_312 = load i64, i64* %var_2_311, align 8
; Matched:\<badref\>:  store i64 %var_2_339, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_312, i64* %RCX.i120, align 8
; Matched:%var_2_340:  %var_2_340 = add i64 %var_2_325, -40
; %var_2_313 = add i64 %var_2_298, -40
; Matched:%var_2_341:  %var_2_341 = add i64 %var_2_321, 30
; %var_2_314 = add i64 %var_2_294, 30
; Matched:\<badref\>:  store i64 %var_2_341, i64* %PC, align 8
; store i64 %var_2_314, i64* %var_2_3, align 8
; Matched:%var_2_297:  %var_2_297 = inttoptr i64 %var_2_295 to i64*
; %var_2_315 = inttoptr i64 %var_2_313 to i64*
; Matched:%var_2_343:  %var_2_343 = load i64, i64* %var_2_342, align 8
; %var_2_316 = load i64, i64* %var_2_315, align 8
; Matched:\<badref\>:  store i64 %var_2_298, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_316, i64* %RDX.i145, align 8
; Matched:%var_2_344:  %var_2_344 = shl i64 %var_2_343, 3
; %var_2_317 = shl i64 %var_2_316, 3
; Matched:%var_2_345:  %var_2_345 = add i64 %var_2_339, %var_2_344
; %var_2_318 = add i64 %var_2_312, %var_2_317
; Matched:%var_2_346:  %var_2_346 = add i64 %var_2_321, 35
; %var_2_319 = add i64 %var_2_294, 35
; Matched:\<badref\>:  store i64 %var_2_346, i64* %PC, align 8
; store i64 %var_2_319, i64* %var_2_3, align 8
; Matched:%var_2_347:  %var_2_347 = inttoptr i64 %var_2_345 to double*
; %var_2_320 = inttoptr i64 %var_2_318 to double*
; Matched:\<badref\>:  store double %var_2_335, double* %var_2_347, align 8
; store double %var_2_308, double* %var_2_320, align 8
; Matched:%var_2_348:  %var_2_348 = load i64, i64* %RBP, align 8
; %var_2_321 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_349:  %var_2_349 = add i64 %var_2_348, -40
; %var_2_322 = add i64 %var_2_321, -40
; Matched:%var_2_56:  %var_2_56 = load i64, i64* %PC, align 8
; %var_2_323 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_57:  %var_2_57 = add i64 %var_2_56, 4
; %var_2_324 = add i64 %var_2_323, 4
; Matched:\<badref\>:  store i64 %var_2_351, i64* %PC, align 8
; store i64 %var_2_324, i64* %var_2_3, align 8
; Matched:%var_2_352:  %var_2_352 = inttoptr i64 %var_2_349 to i64*
; %var_2_325 = inttoptr i64 %var_2_322 to i64*
; Matched:%var_2_353:  %var_2_353 = load i64, i64* %var_2_352, align 8
; %var_2_326 = load i64, i64* %var_2_325, align 8
; Matched:%var_2_354:  %var_2_354 = add i64 %var_2_353, 1
; %var_2_327 = add i64 %var_2_326, 1
; Matched:\<badref\>:  store i64 %var_2_354, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_327, i64* %RAX.i83, align 8
; Matched:%var_2_355:  %var_2_355 = icmp eq i64 %var_2_353, -1
; %var_2_328 = icmp eq i64 %var_2_326, -1
; Matched:%var_2_356:  %var_2_356 = icmp eq i64 %var_2_354, 0
; %var_2_329 = icmp eq i64 %var_2_327, 0
; Matched:%var_2_357:  %var_2_357 = or i1 %var_2_355, %var_2_356
; %var_2_330 = or i1 %var_2_328, %var_2_329
; Matched:%var_2_358:  %var_2_358 = zext i1 %var_2_357 to i8
; %var_2_331 = zext i1 %var_2_330 to i8
; Matched:\<badref\>:  store i8 %var_2_358, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_331, i8* %var_2_14, align 1
; Matched:%var_2_359:  %var_2_359 = trunc i64 %var_2_354 to i32
; %var_2_332 = trunc i64 %var_2_327 to i32
; Matched:%var_2_360:  %var_2_360 = and i32 %var_2_359, 255
; %var_2_333 = and i32 %var_2_332, 255
; Matched:%var_2_361:  %var_2_361 = tail call i32 @llvm.ctpop.i32(i32 %var_2_360) #12
; %var_2_334 = tail call i32 @llvm.ctpop.i32(i32 %var_2_333)
; Matched:%var_2_362:  %var_2_362 = trunc i32 %var_2_361 to i8
; %var_2_335 = trunc i32 %var_2_334 to i8
; Matched:%var_2_363:  %var_2_363 = and i8 %var_2_362, 1
; %var_2_336 = and i8 %var_2_335, 1
; Matched:%var_2_364:  %var_2_364 = xor i8 %var_2_363, 1
; %var_2_337 = xor i8 %var_2_336, 1
; Matched:\<badref\>:  store i8 %var_2_364, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_337, i8* %var_2_21, align 1
; Matched:%var_2_365:  %var_2_365 = xor i64 %var_2_354, %var_2_353
; %var_2_338 = xor i64 %var_2_327, %var_2_326
; Matched:%var_2_366:  %var_2_366 = lshr i64 %var_2_365, 4
; %var_2_339 = lshr i64 %var_2_338, 4
; Matched:%var_2_367:  %var_2_367 = trunc i64 %var_2_366 to i8
; %var_2_340 = trunc i64 %var_2_339 to i8
; Matched:%var_2_368:  %var_2_368 = and i8 %var_2_367, 1
; %var_2_341 = and i8 %var_2_340, 1
; Matched:\<badref\>:  store i8 %var_2_368, i8* %var_2_30, align 1, !tbaa !1280
; store i8 %var_2_341, i8* %var_2_26, align 1
; Matched:%var_2_369:  %var_2_369 = zext i1 %var_2_356 to i8
; %var_2_342 = zext i1 %var_2_329 to i8
; Matched:\<badref\>:  store i8 %var_2_369, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_342, i8* %var_2_29, align 1
; Matched:%var_2_370:  %var_2_370 = lshr i64 %var_2_354, 63
; %var_2_343 = lshr i64 %var_2_327, 63
; Matched:%var_2_371:  %var_2_371 = trunc i64 %var_2_370 to i8
; %var_2_344 = trunc i64 %var_2_343 to i8
; Matched:\<badref\>:  store i8 %var_2_371, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_344, i8* %var_2_32, align 1
; Matched:%var_2_372:  %var_2_372 = lshr i64 %var_2_353, 63
; %var_2_345 = lshr i64 %var_2_326, 63
; Matched:%var_2_373:  %var_2_373 = xor i64 %var_2_370, %var_2_372
; %var_2_346 = xor i64 %var_2_343, %var_2_345
; Matched:%var_2_374:  %var_2_374 = add nuw nsw i64 %var_2_373, %var_2_370
; %var_2_347 = add nuw nsw i64 %var_2_346, %var_2_343
; Matched:%var_2_375:  %var_2_375 = icmp eq i64 %var_2_374, 2
; %var_2_348 = icmp eq i64 %var_2_347, 2
; Matched:%var_2_376:  %var_2_376 = zext i1 %var_2_375 to i8
; %var_2_349 = zext i1 %var_2_348 to i8
; Matched:\<badref\>:  store i8 %var_2_376, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_349, i8* %var_2_38, align 1
; Matched:%var_2_377:  %var_2_377 = add i64 %var_2_350, 12
; %var_2_350 = add i64 %var_2_323, 12
; Matched:\<badref\>:  store i64 %var_2_377, i64* %PC, align 8
; store i64 %var_2_350, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_354, i64* %var_2_352, align 8
; store i64 %var_2_327, i64* %var_2_325, align 8
%var_2_351 = load i64, i64* %var_2_3, align 8
%var_2_352 = add i64 %var_2_351, -161
; Matched:\<badref\>:  store i64 %var_2_379, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_352, i64* %var_2_3, align 8
  br label %block_.L_4006b1

block_.L_400757:                                  ; preds = %block_.L_4006b1
; Matched:%var_2_152:  %var_2_152 = add i64 %var_2_381, -24
; %var_2_353 = add i64 %var_2_155, -24
; Matched:%var_2_153:  %var_2_153 = add i64 %var_2_410, 4
; %var_2_354 = add i64 %var_2_184, 4
; Matched:\<badref\>:  store i64 %var_2_153, i64* %PC, align 8
; store i64 %var_2_354, i64* %var_2_3, align 8
; Matched:%var_2_154:  %var_2_154 = inttoptr i64 %var_2_152 to i64*
; %var_2_355 = inttoptr i64 %var_2_353 to i64*
; Matched:%var_2_155:  %var_2_155 = load i64, i64* %var_2_154, align 8
; %var_2_356 = load i64, i64* %var_2_355, align 8
; Matched:\<badref\>:  store i64 %var_2_155, i64* %RDI, align 8, !tbaa !1261
; store i64 %var_2_356, i64* %RDI.i172, align 8
; Matched:%var_2_156:  %var_2_156 = add i64 %var_2_381, -32
; %var_2_357 = add i64 %var_2_155, -32
; Matched:%var_2_157:  %var_2_157 = add i64 %var_2_410, 8
; %var_2_358 = add i64 %var_2_184, 8
; Matched:\<badref\>:  store i64 %var_2_157, i64* %PC, align 8
; store i64 %var_2_358, i64* %var_2_3, align 8
; Matched:%var_2_158:  %var_2_158 = inttoptr i64 %var_2_156 to i64*
; %var_2_359 = inttoptr i64 %var_2_357 to i64*
; Matched:%var_2_159:  %var_2_159 = load i64, i64* %var_2_158, align 8
; %var_2_360 = load i64, i64* %var_2_359, align 8
; Matched:\<badref\>:  store i64 %var_2_159, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_360, i64* %RSI.i175, align 8
%var_2_361 = add i64 %var_2_184, 57
; Matched:%var_2_161:  %var_2_161 = add i64 %var_2_410, 13
; %var_2_362 = add i64 %var_2_184, 13
%var_2_363 = load i64, i64* %var_2_6, align 8
%var_2_364 = add i64 %var_2_363, -8
; Matched:%var_2_164:  %var_2_164 = inttoptr i64 %var_2_163 to i64*
; %var_2_365 = inttoptr i64 %var_2_364 to i64*
; Matched:\<badref\>:  store i64 %var_2_161, i64* %var_2_164, align 8
; store i64 %var_2_362, i64* %var_2_365, align 8
; Matched:\<badref\>:  store i64 %var_2_93, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_364, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_160, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_361, i64* %var_2_3, align 8
%call2_40075f = tail call %struct.Memory* @sub_400790.double_array_divs_variable(%struct.State* nonnull %0, i64 %var_2_361, %struct.Memory* %MEMORY.0)
%var_2_366 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x4008fc_type* @G__0x4008fc to i64), i64* %RDI.i172, align 8
%var_2_367 = load i64, i64* %RBP.i, align 8
%var_2_368 = add i64 %var_2_367, -24
; Matched:%var_2_169:  %var_2_169 = add i64 %var_2_166, 14
; %var_2_369 = add i64 %var_2_366, 14
; Matched:\<badref\>:  store i64 %var_2_169, i64* %PC, align 8
; store i64 %var_2_369, i64* %var_2_3, align 8
%var_2_370 = inttoptr i64 %var_2_368 to i64*
%var_2_371 = load i64, i64* %var_2_370, align 8
; Matched:\<badref\>:  store i64 %var_2_171, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_371, i64* %RSI.i175, align 8
; Matched:%var_2_100:  %var_2_100 = add i64 %var_2_96, 18
; %var_2_372 = add i64 %var_2_366, 18
; Matched:\<badref\>:  store i64 %var_2_100, i64* %PC, align 8
; store i64 %var_2_372, i64* %var_2_3, align 8
%var_2_373 = inttoptr i64 %var_2_371 to i64*
%var_2_374 = load i64, i64* %var_2_373, align 8
%var_2_375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
store i64 %var_2_374, i64* %var_2_375, align 1
store double 0.000000e+00, double* %var_2_124, align 1
; Matched:\<badref\>:  store i8 0, i8* %AL, align 1, !tbaa !1284
; store i8 1, i8* %AL.i135, align 1
; Matched:%var_2_175:  %var_2_175 = add i64 %var_2_166, -612
; %var_2_376 = add i64 %var_2_366, -612
; Matched:%var_2_176:  %var_2_176 = add i64 %var_2_166, 25
; %var_2_377 = add i64 %var_2_366, 25
%var_2_378 = load i64, i64* %var_2_6, align 8
%var_2_379 = add i64 %var_2_378, -8
; Matched:%var_2_179:  %var_2_179 = inttoptr i64 %var_2_178 to i64*
; %var_2_380 = inttoptr i64 %var_2_379 to i64*
; Matched:\<badref\>:  store i64 %var_2_176, i64* %var_2_179, align 8
; store i64 %var_2_377, i64* %var_2_380, align 8
; Matched:\<badref\>:  store i64 %var_2_106, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_379, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_175, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_376, i64* %var_2_3, align 8
%var_2_381 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_40075f)
; Matched:  %ECX = bitcast %union.anon* %var_2_4 to i32*
; %ECX.i9 = bitcast %union.anon* %var_2_40 to i32*
; Matched:%var_2_270:  %var_2_270 = load i64, i64* %PC, align 8
; %var_2_382 = load i64, i64* %var_2_3, align 8
  store i64 0, i64* %RCX.i120, align 8
; Matched:%var_2_182:  %var_2_182 = load i64, i64* %RBP, align 8
; %var_2_383 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_183:  %var_2_183 = add i64 %var_2_182, -84
; %var_2_384 = add i64 %var_2_383, -84
; Matched:%var_2_184:  %var_2_184 = load i32, i32* %EAX, align 4
; %var_2_385 = load i32, i32* %EAX.i119, align 4
; Matched:%var_2_271:  %var_2_271 = add i64 %var_2_270, 5
; %var_2_386 = add i64 %var_2_382, 5
; Matched:\<badref\>:  store i64 %var_2_271, i64* %PC, align 8
; store i64 %var_2_386, i64* %var_2_3, align 8
; Matched:%var_2_186:  %var_2_186 = inttoptr i64 %var_2_183 to i32*
; %var_2_387 = inttoptr i64 %var_2_384 to i32*
; Matched:\<badref\>:  store i32 %var_2_184, i32* %var_2_186, align 4
; store i32 %var_2_385, i32* %var_2_387, align 4
; Matched:%var_2_187:  %var_2_187 = load i32, i32* %ECX, align 4
; %var_2_388 = load i32, i32* %ECX.i9, align 4
; Matched:%var_2_188:  %var_2_188 = zext i32 %var_2_187 to i64
; %var_2_389 = zext i32 %var_2_388 to i64
; Matched:%var_2_189:  %var_2_189 = load i64, i64* %PC, align 8
; %var_2_390 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_188, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_389, i64* %RAX.i83, align 8
; Matched:%var_2_190:  %var_2_190 = load i64, i64* %RSP, align 8
; %var_2_391 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_191:  %var_2_191 = add i64 %var_2_190, 96
; %var_2_392 = add i64 %var_2_391, 96
; Matched:\<badref\>:  store i64 %var_2_191, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_392, i64* %var_2_6, align 8
; Matched:%var_2_192:  %var_2_192 = icmp ugt i64 %var_2_190, -97
; %var_2_393 = icmp ugt i64 %var_2_391, -97
; Matched:%var_2_193:  %var_2_193 = zext i1 %var_2_192 to i8
; %var_2_394 = zext i1 %var_2_393 to i8
; Matched:\<badref\>:  store i8 %var_2_193, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_394, i8* %var_2_14, align 1
; Matched:%var_2_194:  %var_2_194 = trunc i64 %var_2_191 to i32
; %var_2_395 = trunc i64 %var_2_392 to i32
; Matched:%var_2_195:  %var_2_195 = and i32 %var_2_194, 255
; %var_2_396 = and i32 %var_2_395, 255
; Matched:%var_2_196:  %var_2_196 = tail call i32 @llvm.ctpop.i32(i32 %var_2_195) #12
; %var_2_397 = tail call i32 @llvm.ctpop.i32(i32 %var_2_396)
; Matched:%var_2_197:  %var_2_197 = trunc i32 %var_2_196 to i8
; %var_2_398 = trunc i32 %var_2_397 to i8
; Matched:%var_2_198:  %var_2_198 = and i8 %var_2_197, 1
; %var_2_399 = and i8 %var_2_398, 1
; Matched:%var_2_199:  %var_2_199 = xor i8 %var_2_198, 1
; %var_2_400 = xor i8 %var_2_399, 1
; Matched:\<badref\>:  store i8 %var_2_199, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_400, i8* %var_2_21, align 1
; Matched:%var_2_200:  %var_2_200 = xor i64 %var_2_191, %var_2_190
; %var_2_401 = xor i64 %var_2_392, %var_2_391
; Matched:%var_2_201:  %var_2_201 = lshr i64 %var_2_200, 4
; %var_2_402 = lshr i64 %var_2_401, 4
; Matched:%var_2_202:  %var_2_202 = trunc i64 %var_2_201 to i8
; %var_2_403 = trunc i64 %var_2_402 to i8
; Matched:%var_2_203:  %var_2_203 = and i8 %var_2_202, 1
; %var_2_404 = and i8 %var_2_403, 1
; Matched:\<badref\>:  store i8 %var_2_203, i8* %var_2_30, align 1, !tbaa !1280
; store i8 %var_2_404, i8* %var_2_26, align 1
; Matched:%var_2_204:  %var_2_204 = icmp eq i64 %var_2_191, 0
; %var_2_405 = icmp eq i64 %var_2_392, 0
; Matched:%var_2_205:  %var_2_205 = zext i1 %var_2_204 to i8
; %var_2_406 = zext i1 %var_2_405 to i8
; Matched:\<badref\>:  store i8 %var_2_205, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_406, i8* %var_2_29, align 1
; Matched:%var_2_206:  %var_2_206 = lshr i64 %var_2_191, 63
; %var_2_407 = lshr i64 %var_2_392, 63
; Matched:%var_2_207:  %var_2_207 = trunc i64 %var_2_206 to i8
; %var_2_408 = trunc i64 %var_2_407 to i8
; Matched:\<badref\>:  store i8 %var_2_207, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_408, i8* %var_2_32, align 1
; Matched:%var_2_208:  %var_2_208 = lshr i64 %var_2_190, 63
; %var_2_409 = lshr i64 %var_2_391, 63
; Matched:%var_2_209:  %var_2_209 = xor i64 %var_2_206, %var_2_208
; %var_2_410 = xor i64 %var_2_407, %var_2_409
; Matched:%var_2_210:  %var_2_210 = add nuw nsw i64 %var_2_209, %var_2_206
; %var_2_411 = add nuw nsw i64 %var_2_410, %var_2_407
; Matched:%var_2_211:  %var_2_211 = icmp eq i64 %var_2_210, 2
; %var_2_412 = icmp eq i64 %var_2_411, 2
; Matched:%var_2_212:  %var_2_212 = zext i1 %var_2_211 to i8
; %var_2_413 = zext i1 %var_2_412 to i8
; Matched:\<badref\>:  store i8 %var_2_212, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_413, i8* %var_2_38, align 1
; Matched:%var_2_213:  %var_2_213 = add i64 %var_2_189, 7
; %var_2_414 = add i64 %var_2_390, 7
; Matched:\<badref\>:  store i64 %var_2_213, i64* %PC, align 8
; store i64 %var_2_414, i64* %var_2_3, align 8
; Matched:%var_2_214:  %var_2_214 = add i64 %var_2_190, 104
; %var_2_415 = add i64 %var_2_391, 104
; Matched:%var_2_215:  %var_2_215 = inttoptr i64 %var_2_191 to i64*
; %var_2_416 = inttoptr i64 %var_2_392 to i64*
; Matched:%var_2_216:  %var_2_216 = load i64, i64* %var_2_215, align 8
; %var_2_417 = load i64, i64* %var_2_416, align 8
; Matched:\<badref\>:  store i64 %var_2_216, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_417, i64* %RBP.i, align 8
; Matched:\<badref\>:  store i64 %var_2_214, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_415, i64* %var_2_6, align 8
; Matched:%var_2_217:  %var_2_217 = add i64 %var_2_189, 8
; %var_2_418 = add i64 %var_2_390, 8
; Matched:\<badref\>:  store i64 %var_2_217, i64* %PC, align 8
; store i64 %var_2_418, i64* %var_2_3, align 8
; Matched:%var_2_218:  %var_2_218 = inttoptr i64 %var_2_214 to i64*
; %var_2_419 = inttoptr i64 %var_2_415 to i64*
; Matched:%var_2_219:  %var_2_219 = load i64, i64* %var_2_218, align 8
; %var_2_420 = load i64, i64* %var_2_419, align 8
; Matched:\<badref\>:  store i64 %var_2_219, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_420, i64* %var_2_3, align 8
; Matched:%var_2_220:  %var_2_220 = add i64 %var_2_190, 112
; %var_2_421 = add i64 %var_2_391, 112
; Matched:\<badref\>:  store i64 %var_2_220, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_421, i64* %var_2_6, align 8
ret %struct.Memory* %var_2_381
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
define %struct.Memory* @routine_subq__0x60___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -96
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 96
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
define %struct.Memory* @routine_movl__0x10___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 16, i64* %RAX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4000___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 16384, i64* %RAX, align 8
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
define %struct.Memory* @routine_leaq_MINUS0x18__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R8, align 8
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
define %struct.Memory* @routine_movq__r8___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.posix_memalign_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x10___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 16, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %R9D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4000___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 16384, i64* %3, align 8
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
define %struct.Memory* @routine_leaq_MINUS0x20__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
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
define %struct.Memory* @routine_movq__0x4008c0___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4008c0_type* @G__0x4008c0 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x20000___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 131072, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq__0x4008de___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4008de_type* @G__0x4008de to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x800___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2048, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq__0x0__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 0, i64* %7, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x800__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %8, -2048
  %10 = icmp ult i64 %8, 2048
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %9 to i32
  %14 = and i32 %13, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i64 %9, %8
  %21 = lshr i64 %20, 4
  %22 = trunc i64 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i64 %9, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %9, 63
  %29 = trunc i64 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i64 %8, 63
  %32 = xor i64 %28, %31
  %33 = add nuw nsw i64 %32, %31
  %34 = icmp eq i64 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_400757(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x1e1__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x1e1__rip__type* @G_0x1e1__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x1e1__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x1e1__rip__type* @G_0x1e1__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x1e1__rip____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x1e1__rip__type* @G_0x1e1__rip_ to i64)
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
define %struct.Memory* @routine_movl__0x800___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2048, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subq_MINUS0x28__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = sub i64 %3, %9
  store i64 %10, i64* %RCX, align 8
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
define %struct.Memory* @routine_cvtsi2ssq__rcx___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
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
define %struct.Memory* @routine_movaps__xmm3___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
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
define %struct.Memory* @routine_movsd__xmm2__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_movsd__xmm1__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_callq_.cosf_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cvtss2sd__xmm0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
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
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1____rcx__rdx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %6 to i64*
  store i64 %10, i64* %11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssq_MINUS0x28__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -40
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
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
define %struct.Memory* @routine_callq_.sinf_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
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
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %6 to i64*
  store i64 %10, i64* %11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_movq__rax__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4006b1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.double_array_divs_variable(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4008fc___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4008fc_type* @G__0x4008fc to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd___rsi____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RSI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
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
define %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
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
define %struct.Memory* @routine_addq__0x60___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 96
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -97
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
