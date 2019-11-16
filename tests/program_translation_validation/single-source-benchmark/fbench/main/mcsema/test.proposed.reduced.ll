; ModuleID = '/tmp/tmpvb4q63rb-query.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x602070_type = type <{ [4 x i8] }>
%G_0x602158_type = type <{ [16 x i8] }>
%G_0x602160_type = type <{ [16 x i8] }>
%G_0x602168_type = type <{ [16 x i8] }>
%G_0x602170_type = type <{ [16 x i8] }>
%G_0x602178_type = type <{ [16 x i8] }>
%G_0x602180_type = type <{ [16 x i8] }>
%G_0x602188_type = type <{ [16 x i8] }>
%G_0x602190_type = type <{ [16 x i8] }>
%G_0x602198_type = type <{ [16 x i8] }>
%G_0x6021a0_type = type <{ [2 x i8] }>
%G_0x602340_type = type <{ [2 x i8] }>
%G_0x602348_type = type <{ [8 x i8] }>
%G_0x602350_type = type <{ [8 x i8] }>
%G_0x602358_type = type <{ [8 x i8] }>
%G_0x602360_type = type <{ [8 x i8] }>
%G_0x602368_type = type <{ [8 x i8] }>
%G_0x602370_type = type <{ [8 x i8] }>
%G_0x602378_type = type <{ [16 x i8] }>
%G_0x602380_type = type <{ [16 x i8] }>
%G_0x602388_type = type <{ [16 x i8] }>
%G_0x602390_type = type <{ [16 x i8] }>
%G_0x602398_type = type <{ [16 x i8] }>
%G_0x6023a0_type = type <{ [16 x i8] }>
%G_0x602650_type = type <{ [4 x i8] }>
%G_0xc03__rip__type = type <{ [8 x i8] }>
%G_0xc49__rip__type = type <{ [8 x i8] }>
%G_0xc75__rip__type = type <{ [8 x i8] }>
%G_0xcfb__rip__type = type <{ [8 x i8] }>
%G_0xd67__rip__type = type <{ [8 x i8] }>
%G_0xea4__rip__type = type <{ [8 x i8] }>
%G_0xea5__rip__type = type <{ [8 x i8] }>
%G__0x401668_type = type <{ [8 x i8] }>
%G__0x40169e_type = type <{ [8 x i8] }>
%G__0x4016d6_type = type <{ [8 x i8] }>
%G__0x4016d7_type = type <{ [8 x i8] }>
%G__0x4016d8_type = type <{ [8 x i8] }>
%G__0x401710_type = type <{ [8 x i8] }>
%G__0x40174c_type = type <{ [8 x i8] }>
%G__0x40178f_type = type <{ [8 x i8] }>
%G__0x4017a7_type = type <{ [8 x i8] }>
%G__0x4017b4_type = type <{ [8 x i8] }>
%G__0x4017c1_type = type <{ [8 x i8] }>
%G__0x4017f1_type = type <{ [8 x i8] }>
%G__0x401821_type = type <{ [8 x i8] }>
%G__0x401851_type = type <{ [8 x i8] }>
%G__0x401881_type = type <{ [8 x i8] }>
%G__0x4018a2_type = type <{ [8 x i8] }>
%G__0x4018b3_type = type <{ [8 x i8] }>
%G__0x4018c4_type = type <{ [8 x i8] }>
%G__0x4018d1_type = type <{ [8 x i8] }>
%G__0x4018d4_type = type <{ [8 x i8] }>
%G__0x4018d6_type = type <{ [8 x i8] }>
%G__0x401906_type = type <{ [8 x i8] }>
%G__0x602080_type = type <{ [8 x i8] }>
%G__0x6021b0_type = type <{ [8 x i8] }>
%G__0x602350_type = type <{ [8 x i8] }>
%G__0x6023b0_type = type <{ [8 x i8] }>
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
@G_0x602070 = local_unnamed_addr global %G_0x602070_type zeroinitializer
@G_0x602158 = local_unnamed_addr global %G_0x602158_type zeroinitializer
@G_0x602160 = local_unnamed_addr global %G_0x602160_type zeroinitializer
@G_0x602168 = local_unnamed_addr global %G_0x602168_type zeroinitializer
@G_0x602170 = local_unnamed_addr global %G_0x602170_type zeroinitializer
@G_0x602178 = local_unnamed_addr global %G_0x602178_type zeroinitializer
@G_0x602180 = local_unnamed_addr global %G_0x602180_type zeroinitializer
@G_0x602188 = local_unnamed_addr global %G_0x602188_type zeroinitializer
@G_0x602190 = local_unnamed_addr global %G_0x602190_type zeroinitializer
@G_0x602198 = local_unnamed_addr global %G_0x602198_type zeroinitializer
@G_0x6021a0 = local_unnamed_addr global %G_0x6021a0_type zeroinitializer
@G_0x602340 = local_unnamed_addr global %G_0x602340_type zeroinitializer
@G_0x602348 = local_unnamed_addr global %G_0x602348_type zeroinitializer
@G_0x602350 = local_unnamed_addr global %G_0x602350_type zeroinitializer
@G_0x602358 = local_unnamed_addr global %G_0x602358_type zeroinitializer
@G_0x602360 = local_unnamed_addr global %G_0x602360_type zeroinitializer
@G_0x602368 = local_unnamed_addr global %G_0x602368_type zeroinitializer
@G_0x602370 = local_unnamed_addr global %G_0x602370_type zeroinitializer
@G_0x602378 = local_unnamed_addr global %G_0x602378_type zeroinitializer
@G_0x602380 = local_unnamed_addr global %G_0x602380_type zeroinitializer
@G_0x602388 = local_unnamed_addr global %G_0x602388_type zeroinitializer
@G_0x602390 = local_unnamed_addr global %G_0x602390_type zeroinitializer
@G_0x602398 = local_unnamed_addr global %G_0x602398_type zeroinitializer
@G_0x6023a0 = local_unnamed_addr global %G_0x6023a0_type zeroinitializer
@G_0x602650 = local_unnamed_addr global %G_0x602650_type zeroinitializer
@G_0xc03__rip_ = global %G_0xc03__rip__type zeroinitializer
@G_0xc49__rip_ = global %G_0xc49__rip__type zeroinitializer
@G_0xc75__rip_ = global %G_0xc75__rip__type zeroinitializer
@G_0xcfb__rip_ = global %G_0xcfb__rip__type zeroinitializer
@G_0xd67__rip_ = global %G_0xd67__rip__type zeroinitializer
@G_0xea4__rip_ = global %G_0xea4__rip__type zeroinitializer
@G_0xea5__rip_ = global %G_0xea5__rip__type zeroinitializer
@G__0x401668 = global %G__0x401668_type zeroinitializer
@G__0x40169e = global %G__0x40169e_type zeroinitializer
@G__0x4016d6 = global %G__0x4016d6_type zeroinitializer
@G__0x4016d7 = global %G__0x4016d7_type zeroinitializer
@G__0x4016d8 = global %G__0x4016d8_type zeroinitializer
@G__0x401710 = global %G__0x401710_type zeroinitializer
@G__0x40174c = global %G__0x40174c_type zeroinitializer
@G__0x40178f = global %G__0x40178f_type zeroinitializer
@G__0x4017a7 = global %G__0x4017a7_type zeroinitializer
@G__0x4017b4 = global %G__0x4017b4_type zeroinitializer
@G__0x4017c1 = global %G__0x4017c1_type zeroinitializer
@G__0x4017f1 = global %G__0x4017f1_type zeroinitializer
@G__0x401821 = global %G__0x401821_type zeroinitializer
@G__0x401851 = global %G__0x401851_type zeroinitializer
@G__0x401881 = global %G__0x401881_type zeroinitializer
@G__0x4018a2 = global %G__0x4018a2_type zeroinitializer
@G__0x4018b3 = global %G__0x4018b3_type zeroinitializer
@G__0x4018c4 = global %G__0x4018c4_type zeroinitializer
@G__0x4018d1 = global %G__0x4018d1_type zeroinitializer
@G__0x4018d4 = global %G__0x4018d4_type zeroinitializer
@G__0x4018d6 = global %G__0x4018d6_type zeroinitializer
@G__0x401906 = global %G__0x401906_type zeroinitializer
@G__0x602080 = global %G__0x602080_type zeroinitializer
@G__0x6021b0 = global %G__0x6021b0_type zeroinitializer
@G__0x602350 = global %G__0x602350_type zeroinitializer
@G__0x6023b0 = global %G__0x6023b0_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @sprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @strcmp(i64, i64)

declare extern_weak x86_64_sysvcc i64 @strlen(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @ext_sin(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr

declare %struct.Memory* @sub_400f70.trace_line(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

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
%var_2_6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
; Matched:%var_2_12:  %var_2_12 = load i64, i64* %RSP, align 8, !tbaa !1261
; %var_2_7 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_13:  %var_2_13 = add i64 %var_2_12, -8
; %var_2_8 = add i64 %var_2_7, -8
; Matched:%var_2_14:  %var_2_14 = inttoptr i64 %var_2_13 to i64*
; %var_2_9 = inttoptr i64 %var_2_8 to i64*
; Matched:\<badref\>:  store i64 %var_2_10, i64* %var_2_14, align 8
; store i64 %var_2_4, i64* %var_2_9, align 8
%var_2_10 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_13, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_8, i64* %RBP.i, align 8
; Matched:%var_2_16:  %var_2_16 = add i64 %var_2_12, -200
; %var_2_11 = add i64 %var_2_7, -200
; Matched:\<badref\>:  store i64 %var_2_16, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_11, i64* %var_2_6, align 8
; Matched:%var_2_17:  %var_2_17 = icmp ult i64 %var_2_13, 192
; %var_2_12 = icmp ult i64 %var_2_8, 192
; Matched:%var_2_18:  %var_2_18 = zext i1 %var_2_17 to i8
; %var_2_13 = zext i1 %var_2_12 to i8
%var_2_14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
; Matched:\<badref\>:  store i8 %var_2_18, i8* %var_2_19, align 1, !tbaa !1265
; store i8 %var_2_13, i8* %var_2_14, align 1
; Matched:%var_2_20:  %var_2_20 = trunc i64 %var_2_16 to i32
; %var_2_15 = trunc i64 %var_2_11 to i32
; Matched:%var_2_21:  %var_2_21 = and i32 %var_2_20, 255
; %var_2_16 = and i32 %var_2_15, 255
; Matched:%var_2_22:  %var_2_22 = tail call i32 @llvm.ctpop.i32(i32 %var_2_21) #14
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
%var_2_39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
%var_2_40 = add i64 %var_2_10, add (i64 ptrtoint (%G_0xea5__rip__type* @G_0xea5__rip_ to i64), i64 10)
; Matched:%var_2_1554:  %var_2_1554 = add i64 %var_2_1542, 18
; %var_2_41 = add i64 %var_2_10, 18
; Matched:\<badref\>:  store i64 %var_2_1554, i64* %PC, align 8
; store i64 %var_2_41, i64* %var_2_3, align 8
%var_2_42 = inttoptr i64 %var_2_40 to i64*
%var_2_43 = load i64, i64* %var_2_42, align 8
%var_2_44 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %var_2_39, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
store i64 %var_2_43, i64* %var_2_44, align 1
%var_2_45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
%var_2_46 = bitcast i64* %var_2_45 to double*
store double 0.000000e+00, double* %var_2_46, align 1
%var_2_47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
%var_2_48 = add i64 %var_2_10, add (i64 ptrtoint (%G_0xea5__rip__type* @G_0xea5__rip_ to i64), i64 18)
; Matched:%var_2_914:  %var_2_914 = add i64 %var_2_901, 26
; %var_2_49 = add i64 %var_2_10, 26
; Matched:\<badref\>:  store i64 %var_2_914, i64* %PC, align 8
; store i64 %var_2_49, i64* %var_2_3, align 8
%var_2_50 = inttoptr i64 %var_2_48 to i64*
%var_2_51 = load i64, i64* %var_2_50, align 8
%var_2_52 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_47, i64 0, i32 0, i32 0, i32 0, i64 0
store i64 %var_2_51, i64* %var_2_52, align 1
; Matched:%var_2_50:  %var_2_50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
; %var_2_53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_51:  %var_2_51 = bitcast i64* %var_2_50 to double*
; %var_2_54 = bitcast i64* %var_2_53 to double*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_51, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_54, align 1
%var_2_55 = add i64 %var_2_10, add (i64 ptrtoint (%G_0xea5__rip__type* @G_0xea5__rip_ to i64), i64 26)
%var_2_56 = add i64 %var_2_10, 34
store i64 %var_2_56, i64* %var_2_3, align 8
%var_2_57 = inttoptr i64 %var_2_55 to i64*
%var_2_58 = load i64, i64* %var_2_57, align 8
%var_2_59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
store i64 %var_2_58, i64* %var_2_59, align 1
; Matched:%var_2_54:  %var_2_54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
; %var_2_60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_55:  %var_2_55 = bitcast i64* %var_2_54 to double*
; %var_2_61 = bitcast i64* %var_2_60 to double*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_55, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_61, align 1
%var_2_62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
%var_2_63 = add i64 %var_2_10, add (i64 ptrtoint (%G_0xea5__rip__type* @G_0xea5__rip_ to i64), i64 34)
; Matched:%var_2_362:  %var_2_362 = add i64 %var_2_355, 42
; %var_2_64 = add i64 %var_2_10, 42
; Matched:\<badref\>:  store i64 %var_2_362, i64* %PC, align 8
; store i64 %var_2_64, i64* %var_2_3, align 8
%var_2_65 = inttoptr i64 %var_2_63 to i64*
%var_2_66 = load i64, i64* %var_2_65, align 8
%var_2_67 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_62, i64 0, i32 0, i32 0, i32 0, i64 0
store i64 %var_2_66, i64* %var_2_67, align 1
; Matched:%var_2_58:  %var_2_58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
; %var_2_68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_59:  %var_2_59 = bitcast i64* %var_2_58 to double*
; %var_2_69 = bitcast i64* %var_2_68 to double*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_59, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_69, align 1
%var_2_70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
%var_2_71 = add i64 %var_2_10, add (i64 ptrtoint (%G_0xea5__rip__type* @G_0xea5__rip_ to i64), i64 42)
; Matched:%var_2_958:  %var_2_958 = add i64 %var_2_901, 50
; %var_2_72 = add i64 %var_2_10, 50
; Matched:\<badref\>:  store i64 %var_2_958, i64* %PC, align 8
; store i64 %var_2_72, i64* %var_2_3, align 8
%var_2_73 = inttoptr i64 %var_2_71 to i64*
%var_2_74 = load i64, i64* %var_2_73, align 8
%var_2_75 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_70, i64 0, i32 0, i32 0, i32 0, i64 0
store i64 %var_2_74, i64* %var_2_75, align 1
; Matched:%var_2_62:  %var_2_62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
; %var_2_76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_63:  %var_2_63 = bitcast i64* %var_2_62 to double*
; %var_2_77 = bitcast i64* %var_2_76 to double*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_63, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_77, align 1
%var_2_78 = add i64 %var_2_10, add (i64 ptrtoint (%G_0xea5__rip__type* @G_0xea5__rip_ to i64), i64 50)
; Matched:%var_2_993:  %var_2_993 = add i64 %var_2_901, 58
; %var_2_79 = add i64 %var_2_10, 58
; Matched:\<badref\>:  store i64 %var_2_993, i64* %PC, align 8
; store i64 %var_2_79, i64* %var_2_3, align 8
%var_2_80 = inttoptr i64 %var_2_78 to i64*
%var_2_81 = load i64, i64* %var_2_80, align 8
%var_2_82 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 0
store i64 %var_2_81, i64* %var_2_82, align 1
; Matched:%var_2_66:  %var_2_66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
; %var_2_83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_67:  %var_2_67 = bitcast i64* %var_2_66 to double*
; %var_2_84 = bitcast i64* %var_2_83 to double*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_67, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_84, align 1
%var_2_85 = add i64 %var_2_10, add (i64 ptrtoint (%G_0xea5__rip__type* @G_0xea5__rip_ to i64), i64 58)
%var_2_86 = add i64 %var_2_10, 66
store i64 %var_2_86, i64* %var_2_3, align 8
%var_2_87 = inttoptr i64 %var_2_85 to i64*
%var_2_88 = load i64, i64* %var_2_87, align 8
%var_2_89 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6, i32 0, i32 0, i32 0, i64 0
store i64 %var_2_88, i64* %var_2_89, align 1
; Matched:%var_2_70:  %var_2_70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6, i32 0, i32 0, i32 0, i64 1
; %var_2_90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_71:  %var_2_71 = bitcast i64* %var_2_70 to double*
; %var_2_91 = bitcast i64* %var_2_90 to double*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_71, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_91, align 1
%var_2_92 = add i64 %var_2_10, add (i64 ptrtoint (%G_0xea5__rip__type* @G_0xea5__rip_ to i64), i64 66)
%var_2_93 = add i64 %var_2_10, 74
store i64 %var_2_93, i64* %var_2_3, align 8
%var_2_94 = inttoptr i64 %var_2_92 to i64*
%var_2_95 = load i64, i64* %var_2_94, align 8
%var_2_96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7, i32 0, i32 0, i32 0, i64 0
store i64 %var_2_95, i64* %var_2_96, align 1
; Matched:%var_2_74:  %var_2_74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7, i32 0, i32 0, i32 0, i64 1
; %var_2_97 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_75:  %var_2_75 = bitcast i64* %var_2_74 to double*
; %var_2_98 = bitcast i64* %var_2_97 to double*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_75, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_98, align 1
%var_2_99 = add i64 %var_2_10, add (i64 ptrtoint (%G_0xea4__rip__type* @G_0xea4__rip_ to i64), i64 74)
%var_2_100 = add i64 %var_2_10, 83
store i64 %var_2_100, i64* %var_2_3, align 8
%var_2_101 = inttoptr i64 %var_2_99 to i64*
%var_2_102 = load i64, i64* %var_2_101, align 8
%var_2_103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 8, i32 0, i32 0, i32 0, i64 0
store i64 %var_2_102, i64* %var_2_103, align 1
; Matched:%var_2_78:  %var_2_78 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 8, i32 0, i32 0, i32 0, i64 1
; %var_2_104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 8, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_79:  %var_2_79 = bitcast i64* %var_2_78 to double*
; %var_2_105 = bitcast i64* %var_2_104 to double*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_79, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_105, align 1
; Matched:%var_2_80:  %var_2_80 = load i64, i64* %RBP, align 8
; %var_2_106 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_81:  %var_2_81 = add i64 %var_2_80, -4
; %var_2_107 = add i64 %var_2_106, -4
; Matched:%var_2_82:  %var_2_82 = add i64 %var_2_15, 90
; %var_2_108 = add i64 %var_2_10, 90
; Matched:\<badref\>:  store i64 %var_2_82, i64* %PC, align 8
; store i64 %var_2_108, i64* %var_2_3, align 8
; Matched:%var_2_83:  %var_2_83 = inttoptr i64 %var_2_81 to i32*
; %var_2_109 = inttoptr i64 %var_2_107 to i32*
; Matched:\<badref\>:  store i32 0, i32* %var_2_83, align 4
; store i32 0, i32* %var_2_109, align 4
%var_2_110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
; Matched:  %EDI = bitcast %union.anon* %var_2_5 to i32*
; %EDI.i = bitcast %union.anon* %var_2_110 to i32*
; Matched:%var_2_84:  %var_2_84 = load i64, i64* %RBP, align 8
; %var_2_111 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_85:  %var_2_85 = add i64 %var_2_84, -8
; %var_2_112 = add i64 %var_2_111, -8
; Matched:%var_2_86:  %var_2_86 = load i32, i32* %EDI, align 4
; %var_2_113 = load i32, i32* %EDI.i, align 4
; Matched:%var_2_376:  %var_2_376 = load i64, i64* %PC, align 8
; %var_2_114 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_560:  %var_2_560 = add i64 %var_2_559, 3
; %var_2_115 = add i64 %var_2_114, 3
; Matched:\<badref\>:  store i64 %var_2_560, i64* %PC, align 8
; store i64 %var_2_115, i64* %var_2_3, align 8
; Matched:%var_2_89:  %var_2_89 = inttoptr i64 %var_2_85 to i32*
; %var_2_116 = inttoptr i64 %var_2_112 to i32*
; Matched:\<badref\>:  store i32 %var_2_86, i32* %var_2_89, align 4
; store i32 %var_2_113, i32* %var_2_116, align 4
  %RSI.i333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
; Matched:%var_2_90:  %var_2_90 = load i64, i64* %RBP, align 8
; %var_2_117 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_91:  %var_2_91 = add i64 %var_2_90, -16
; %var_2_118 = add i64 %var_2_117, -16
; Matched:%var_2_92:  %var_2_92 = load i64, i64* %RSI, align 8
; %var_2_119 = load i64, i64* %RSI.i333, align 8
%var_2_120 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1543:  %var_2_1543 = add i64 %var_2_1542, 4
; %var_2_121 = add i64 %var_2_120, 4
; Matched:\<badref\>:  store i64 %var_2_1543, i64* %PC, align 8
; store i64 %var_2_121, i64* %var_2_3, align 8
; Matched:%var_2_95:  %var_2_95 = inttoptr i64 %var_2_91 to i64*
; %var_2_122 = inttoptr i64 %var_2_118 to i64*
; Matched:\<badref\>:  store i64 %var_2_92, i64* %var_2_95, align 8
; store i64 %var_2_119, i64* %var_2_122, align 8
; Matched:%var_2_96:  %var_2_96 = load i64, i64* %PC, align 8
; %var_2_123 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_97:  %var_2_97 = load i64, i64* %var_2_77, align 1
; %var_2_124 = load i64, i64* %var_2_103, align 1
; Matched:\<badref\>:  store i64 %var_2_97, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 24) to i64*), align 8
; store i64 %var_2_124, i64* bitcast (%G_0x602158_type* @G_0x602158 to i64*), align 8
; Matched:%var_2_98:  %var_2_98 = load i64, i64* %var_2_73, align 1
; %var_2_125 = load i64, i64* %var_2_96, align 1
; Matched:\<badref\>:  store i64 %var_2_98, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 32) to i64*), align 16
; store i64 %var_2_125, i64* bitcast (%G_0x602160_type* @G_0x602160 to i64*), align 8
; Matched:%var_2_99:  %var_2_99 = load i64, i64* %var_2_69, align 1
; %var_2_126 = load i64, i64* %var_2_89, align 1
; Matched:\<badref\>:  store i64 %var_2_99, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 40) to i64*), align 8
; store i64 %var_2_126, i64* bitcast (%G_0x602168_type* @G_0x602168 to i64*), align 8
; Matched:%var_2_100:  %var_2_100 = load i64, i64* %var_2_65, align 1
; %var_2_127 = load i64, i64* %var_2_82, align 1
; Matched:\<badref\>:  store i64 %var_2_100, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 48) to i64*), align 16
; store i64 %var_2_127, i64* bitcast (%G_0x602170_type* @G_0x602170 to i64*), align 8
; Matched:%var_2_101:  %var_2_101 = load i64, i64* %var_2_61, align 1
; %var_2_128 = load i64, i64* %var_2_75, align 1
; Matched:\<badref\>:  store i64 %var_2_101, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 56) to i64*), align 8
; store i64 %var_2_128, i64* bitcast (%G_0x602178_type* @G_0x602178 to i64*), align 8
%var_2_129 = load i64, i64* %var_2_67, align 1
store i64 %var_2_129, i64* bitcast (%G_0x602180_type* @G_0x602180 to i64*), align 8
%var_2_130 = load i64, i64* %var_2_59, align 1
store i64 %var_2_130, i64* bitcast (%G_0x602188_type* @G_0x602188 to i64*), align 8
%var_2_131 = load i64, i64* %var_2_52, align 1
store i64 %var_2_131, i64* bitcast (%G_0x602190_type* @G_0x602190 to i64*), align 8
  store i32 1000000, i32* bitcast (%G_0x602070_type* @G_0x602070 to i32*), align 8
%var_2_132 = load i64, i64* %var_2_44, align 1
store i64 %var_2_132, i64* bitcast (%G_0x602198_type* @G_0x602198 to i64*), align 8
  store i16 4, i16* bitcast (%G_0x6021a0_type* @G_0x6021a0 to i16*), align 8
%var_2_133 = load i64, i64* %RBP.i, align 8
%var_2_134 = add i64 %var_2_133, -20
; Matched:%var_2_108:  %var_2_108 = add i64 %var_2_96, 110
; %var_2_135 = add i64 %var_2_123, 110
; Matched:\<badref\>:  store i64 %var_2_108, i64* %PC, align 8
; store i64 %var_2_135, i64* %var_2_3, align 8
%var_2_136 = inttoptr i64 %var_2_134 to i32*
store i32 0, i32* %var_2_136, align 4
%var_2_137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
%RAX.i758 = getelementptr inbounds %union.anon, %union.anon* %var_2_137, i64 0, i32 0
%var_2_138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
%RCX.i756 = getelementptr inbounds %union.anon, %union.anon* %var_2_138, i64 0, i32 0
%EAX.i753 = bitcast %union.anon* %var_2_137 to i32*
%ECX.i754 = bitcast %union.anon* %var_2_138 to i32*
; Matched:  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
; %RDX.i740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
%.pre = load i64, i64* %var_2_3, align 8
  br label %block_.L_400810

block_.L_400810:                                  ; preds = %block_.L_400888, %entry
%var_2_139 = phi i64 [ %var_2_372, %block_.L_400888 ], [ %.pre, %entry ]
%var_2_140 = load i64, i64* %RBP.i, align 8
%var_2_141 = add i64 %var_2_140, -20
; Matched:%var_2_1095:  %var_2_1095 = add i64 %var_2_1092, 3
; %var_2_142 = add i64 %var_2_139, 3
; Matched:\<badref\>:  store i64 %var_2_1095, i64* %PC, align 8
; store i64 %var_2_142, i64* %var_2_3, align 8
%var_2_143 = inttoptr i64 %var_2_141 to i32*
%var_2_144 = load i32, i32* %var_2_143, align 4
; Matched:%var_2_1098:  %var_2_1098 = zext i32 %var_2_1097 to i64
; %var_2_145 = zext i32 %var_2_144 to i64
; Matched:\<badref\>:  store i64 %var_2_1098, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_145, i64* %RAX.i758, align 8
  store i64 4, i64* %RCX.i756, align 8
%var_2_146 = add i32 %var_2_144, -4
%var_2_147 = icmp ult i32 %var_2_144, 4
%var_2_148 = zext i1 %var_2_147 to i8
store i8 %var_2_148, i8* %var_2_14, align 1
%var_2_149 = and i32 %var_2_146, 255
%var_2_150 = tail call i32 @llvm.ctpop.i32(i32 %var_2_149)
%var_2_151 = trunc i32 %var_2_150 to i8
%var_2_152 = and i8 %var_2_151, 1
%var_2_153 = xor i8 %var_2_152, 1
store i8 %var_2_153, i8* %var_2_21, align 1
%var_2_154 = xor i32 %var_2_144, %var_2_146
%var_2_155 = lshr i32 %var_2_154, 4
%var_2_156 = trunc i32 %var_2_155 to i8
%var_2_157 = and i8 %var_2_156, 1
store i8 %var_2_157, i8* %var_2_26, align 1
%var_2_158 = icmp eq i32 %var_2_146, 0
%var_2_159 = zext i1 %var_2_158 to i8
store i8 %var_2_159, i8* %var_2_29, align 1
%var_2_160 = lshr i32 %var_2_146, 31
%var_2_161 = trunc i32 %var_2_160 to i8
store i8 %var_2_161, i8* %var_2_32, align 1
%var_2_162 = lshr i32 %var_2_144, 31
%var_2_163 = xor i32 %var_2_160, %var_2_162
%var_2_164 = add nuw nsw i32 %var_2_163, %var_2_162
%var_2_165 = icmp eq i32 %var_2_164, 2
%var_2_166 = zext i1 %var_2_165 to i8
store i8 %var_2_166, i8* %var_2_38, align 1
%var_2_167 = icmp ne i8 %var_2_161, 0
%var_2_168 = xor i1 %var_2_167, %var_2_165
%.v44 = select i1 %var_2_168, i64 19, i64 139
%var_2_169 = add i64 %var_2_139, %.v44
store i64 %var_2_169, i64* %var_2_3, align 8
br i1 %var_2_168, label %block_400823, label %block_.L_40089b

block_400823:                                     ; preds = %block_.L_400810
%var_2_170 = add i64 %var_2_140, -24
%var_2_171 = add i64 %var_2_169, 7
store i64 %var_2_171, i64* %var_2_3, align 8
%var_2_172 = inttoptr i64 %var_2_170 to i32*
store i32 0, i32* %var_2_172, align 4
; Matched:  %.pre95 = load i64, i64* %PC, align 8
; %.pre42 = load i64, i64* %var_2_3, align 8
  br label %block_.L_40082a

block_.L_40082a:                                  ; preds = %block_400834, %block_400823
; Matched:%var_2_648:  %var_2_648 = phi i64 [ %.pre95, %block_400823 ], [ %var_2_588, %block_400834 ]
; %var_2_173 = phi i64 [ %var_2_342, %block_400834 ], [ %.pre42, %block_400823 ]
%var_2_174 = load i64, i64* %RBP.i, align 8
%var_2_175 = add i64 %var_2_174, -24
; Matched:%var_2_651:  %var_2_651 = add i64 %var_2_648, 4
; %var_2_176 = add i64 %var_2_173, 4
; Matched:\<badref\>:  store i64 %var_2_651, i64* %PC, align 8
; store i64 %var_2_176, i64* %var_2_3, align 8
%var_2_177 = inttoptr i64 %var_2_175 to i32*
%var_2_178 = load i32, i32* %var_2_177, align 4
%var_2_179 = add i32 %var_2_178, -4
; Matched:%var_2_655:  %var_2_655 = icmp ult i32 %var_2_653, 4
; %var_2_180 = icmp ult i32 %var_2_178, 4
; Matched:%var_2_656:  %var_2_656 = zext i1 %var_2_655 to i8
; %var_2_181 = zext i1 %var_2_180 to i8
; Matched:\<badref\>:  store i8 %var_2_656, i8* %var_2_19, align 1, !tbaa !1265
; store i8 %var_2_181, i8* %var_2_14, align 1
; Matched:%var_2_657:  %var_2_657 = and i32 %var_2_654, 255
; %var_2_182 = and i32 %var_2_179, 255
; Matched:%var_2_658:  %var_2_658 = tail call i32 @llvm.ctpop.i32(i32 %var_2_657) #14
; %var_2_183 = tail call i32 @llvm.ctpop.i32(i32 %var_2_182)
; Matched:%var_2_659:  %var_2_659 = trunc i32 %var_2_658 to i8
; %var_2_184 = trunc i32 %var_2_183 to i8
; Matched:%var_2_660:  %var_2_660 = and i8 %var_2_659, 1
; %var_2_185 = and i8 %var_2_184, 1
; Matched:%var_2_661:  %var_2_661 = xor i8 %var_2_660, 1
; %var_2_186 = xor i8 %var_2_185, 1
; Matched:\<badref\>:  store i8 %var_2_661, i8* %var_2_26, align 1, !tbaa !1279
; store i8 %var_2_186, i8* %var_2_21, align 1
; Matched:%var_2_662:  %var_2_662 = xor i32 %var_2_654, %var_2_653
; %var_2_187 = xor i32 %var_2_179, %var_2_178
; Matched:%var_2_663:  %var_2_663 = lshr i32 %var_2_662, 4
; %var_2_188 = lshr i32 %var_2_187, 4
; Matched:%var_2_664:  %var_2_664 = trunc i32 %var_2_663 to i8
; %var_2_189 = trunc i32 %var_2_188 to i8
; Matched:%var_2_665:  %var_2_665 = and i8 %var_2_664, 1
; %var_2_190 = and i8 %var_2_189, 1
; Matched:\<badref\>:  store i8 %var_2_665, i8* %var_2_31, align 1, !tbaa !1280
; store i8 %var_2_190, i8* %var_2_26, align 1
; Matched:%var_2_666:  %var_2_666 = icmp eq i32 %var_2_654, 0
; %var_2_191 = icmp eq i32 %var_2_179, 0
; Matched:%var_2_667:  %var_2_667 = zext i1 %var_2_666 to i8
; %var_2_192 = zext i1 %var_2_191 to i8
; Matched:\<badref\>:  store i8 %var_2_667, i8* %var_2_34, align 1, !tbaa !1281
; store i8 %var_2_192, i8* %var_2_29, align 1
%var_2_193 = lshr i32 %var_2_179, 31
%var_2_194 = trunc i32 %var_2_193 to i8
; Matched:\<badref\>:  store i8 %var_2_669, i8* %var_2_37, align 1, !tbaa !1282
; store i8 %var_2_194, i8* %var_2_32, align 1
%var_2_195 = lshr i32 %var_2_178, 31
%var_2_196 = xor i32 %var_2_193, %var_2_195
%var_2_197 = add nuw nsw i32 %var_2_196, %var_2_195
%var_2_198 = icmp eq i32 %var_2_197, 2
; Matched:%var_2_674:  %var_2_674 = zext i1 %var_2_673 to i8
; %var_2_199 = zext i1 %var_2_198 to i8
; Matched:\<badref\>:  store i8 %var_2_674, i8* %var_2_43, align 1, !tbaa !1283
; store i8 %var_2_199, i8* %var_2_38, align 1
%var_2_200 = icmp ne i8 %var_2_194, 0
%var_2_201 = xor i1 %var_2_200, %var_2_198
; Matched:  %.v = select i1 %var_2_676, i64 10, i64 94
; %.v = select i1 %var_2_201, i64 10, i64 94
; Matched:%var_2_677:  %var_2_677 = add i64 %var_2_648, %.v
; %var_2_202 = add i64 %var_2_173, %.v
; Matched:\<badref\>:  store i64 %var_2_677, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_202, i64* %var_2_3, align 8
br i1 %var_2_201, label %block_400834, label %block_.L_400888

block_400834:                                     ; preds = %block_.L_40082a
  store i64 ptrtoint (%G__0x6021b0_type* @G__0x6021b0 to i64), i64* %RAX.i758, align 8
  store i64 ptrtoint (%G__0x602080_type* @G__0x602080 to i64), i64* %RCX.i756, align 8
%var_2_203 = add i64 %var_2_174, -20
; Matched:%var_2_450:  %var_2_450 = add i64 %var_2_677, 24
; %var_2_204 = add i64 %var_2_202, 24
; Matched:\<badref\>:  store i64 %var_2_450, i64* %PC, align 8
; store i64 %var_2_204, i64* %var_2_3, align 8
%var_2_205 = inttoptr i64 %var_2_203 to i32*
%var_2_206 = load i32, i32* %var_2_205, align 4
%var_2_207 = sext i32 %var_2_206 to i64
%var_2_208 = shl nsw i64 %var_2_207, 5
; Matched:\<badref\>:  store i64 %var_2_454, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_208, i64* %RDX.i740, align 8
%var_2_209 = add i64 %var_2_208, ptrtoint (%G__0x602080_type* @G__0x602080 to i64)
; Matched:\<badref\>:  store i64 %var_2_455, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_209, i64* %RCX.i756, align 8
%var_2_210 = icmp ult i64 %var_2_209, ptrtoint (%G__0x602080_type* @G__0x602080 to i64)
; Matched:%var_2_457:  %var_2_457 = icmp ult i64 %var_2_455, %var_2_454
; %var_2_211 = icmp ult i64 %var_2_209, %var_2_208
; Matched:%var_2_458:  %var_2_458 = or i1 %var_2_456, %var_2_457
; %var_2_212 = or i1 %var_2_210, %var_2_211
; Matched:%var_2_459:  %var_2_459 = zext i1 %var_2_458 to i8
; %var_2_213 = zext i1 %var_2_212 to i8
; Matched:\<badref\>:  store i8 %var_2_459, i8* %var_2_19, align 1, !tbaa !1265
; store i8 %var_2_213, i8* %var_2_14, align 1
%var_2_214 = trunc i64 %var_2_209 to i32
%var_2_215 = and i32 %var_2_214, 248
%var_2_216 = tail call i32 @llvm.ctpop.i32(i32 %var_2_215)
%var_2_217 = trunc i32 %var_2_216 to i8
%var_2_218 = and i8 %var_2_217, 1
%var_2_219 = xor i8 %var_2_218, 1
store i8 %var_2_219, i8* %var_2_21, align 1
; Matched:%var_2_466:  %var_2_466 = xor i64 %var_2_455, add (i64 ptrtoint (%niter_type* @niter to i64), i64 16)
; %var_2_220 = xor i64 %var_2_209, ptrtoint (%G__0x602080_type* @G__0x602080 to i64)
; Matched:%var_2_467:  %var_2_467 = lshr exact i64 %var_2_466, 4
; %var_2_221 = lshr i64 %var_2_220, 4
; Matched:%var_2_468:  %var_2_468 = trunc i64 %var_2_467 to i8
; %var_2_222 = trunc i64 %var_2_221 to i8
; Matched:%var_2_469:  %var_2_469 = and i8 %var_2_468, 1
; %var_2_223 = and i8 %var_2_222, 1
; Matched:\<badref\>:  store i8 %var_2_469, i8* %var_2_31, align 1, !tbaa !1280
; store i8 %var_2_223, i8* %var_2_26, align 1
; Matched:%var_2_470:  %var_2_470 = icmp eq i64 %var_2_455, 0
; %var_2_224 = icmp eq i64 %var_2_209, 0
; Matched:%var_2_471:  %var_2_471 = zext i1 %var_2_470 to i8
; %var_2_225 = zext i1 %var_2_224 to i8
; Matched:\<badref\>:  store i8 %var_2_471, i8* %var_2_34, align 1, !tbaa !1281
; store i8 %var_2_225, i8* %var_2_29, align 1
%var_2_226 = lshr i64 %var_2_209, 63
; Matched:%var_2_473:  %var_2_473 = trunc i64 %var_2_472 to i8
; %var_2_227 = trunc i64 %var_2_226 to i8
; Matched:\<badref\>:  store i8 %var_2_473, i8* %var_2_37, align 1, !tbaa !1282
; store i8 %var_2_227, i8* %var_2_32, align 1
; Matched:%var_2_474:  %var_2_474 = lshr i64 %var_2_453, 58
; %var_2_228 = lshr i64 %var_2_207, 58
; Matched:%var_2_475:  %var_2_475 = and i64 %var_2_474, 1
; %var_2_229 = and i64 %var_2_228, 1
%var_2_230 = xor i64 %var_2_226, lshr (i64 ptrtoint (%G__0x602080_type* @G__0x602080 to i64), i64 63)
; Matched:%var_2_477:  %var_2_477 = xor i64 %var_2_472, %var_2_475
; %var_2_231 = xor i64 %var_2_226, %var_2_229
; Matched:%var_2_478:  %var_2_478 = add nuw nsw i64 %var_2_476, %var_2_477
; %var_2_232 = add nuw nsw i64 %var_2_230, %var_2_231
; Matched:%var_2_479:  %var_2_479 = icmp eq i64 %var_2_478, 2
; %var_2_233 = icmp eq i64 %var_2_232, 2
; Matched:%var_2_480:  %var_2_480 = zext i1 %var_2_479 to i8
; %var_2_234 = zext i1 %var_2_233 to i8
; Matched:\<badref\>:  store i8 %var_2_480, i8* %var_2_43, align 1, !tbaa !1283
; store i8 %var_2_234, i8* %var_2_38, align 1
; Matched:%var_2_481:  %var_2_481 = add i64 %var_2_677, 35
; %var_2_235 = add i64 %var_2_202, 35
; Matched:\<badref\>:  store i64 %var_2_481, i64* %PC, align 8
; store i64 %var_2_235, i64* %var_2_3, align 8
; Matched:%var_2_482:  %var_2_482 = load i32, i32* %var_2_652, align 4
; %var_2_236 = load i32, i32* %var_2_177, align 4
; Matched:%var_2_483:  %var_2_483 = sext i32 %var_2_482 to i64
; %var_2_237 = sext i32 %var_2_236 to i64
; Matched:\<badref\>:  store i64 %var_2_483, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_237, i64* %RDX.i740, align 8
; Matched:%var_2_484:  %var_2_484 = shl nsw i64 %var_2_483, 3
; %var_2_238 = shl nsw i64 %var_2_237, 3
; Matched:%var_2_485:  %var_2_485 = add i64 %var_2_484, %var_2_455
; %var_2_239 = add i64 %var_2_238, %var_2_209
; Matched:%var_2_486:  %var_2_486 = add i64 %var_2_677, 40
; %var_2_240 = add i64 %var_2_202, 40
; Matched:\<badref\>:  store i64 %var_2_486, i64* %PC, align 8
; store i64 %var_2_240, i64* %var_2_3, align 8
; Matched:%var_2_487:  %var_2_487 = inttoptr i64 %var_2_485 to i64*
; %var_2_241 = inttoptr i64 %var_2_239 to i64*
; Matched:%var_2_488:  %var_2_488 = load i64, i64* %var_2_487, align 8
; %var_2_242 = load i64, i64* %var_2_241, align 8
; Matched:\<badref\>:  store i64 %var_2_488, i64* %var_2_45, align 1, !tbaa !1284
; store i64 %var_2_242, i64* %var_2_44, align 1
store double 0.000000e+00, double* %var_2_46, align 1
; Matched:%var_2_489:  %var_2_489 = add i64 %var_2_677, 43
; %var_2_243 = add i64 %var_2_202, 43
; Matched:\<badref\>:  store i64 %var_2_489, i64* %PC, align 8
; store i64 %var_2_243, i64* %var_2_3, align 8
%var_2_244 = load i32, i32* %var_2_205, align 4
%var_2_245 = add i32 %var_2_244, 1
%var_2_246 = zext i32 %var_2_245 to i64
; Matched:\<badref\>:  store i64 %var_2_492, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_246, i64* %RSI.i333, align 8
; Matched:%var_2_493:  %var_2_493 = sext i32 %var_2_491 to i64
; %var_2_247 = sext i32 %var_2_245 to i64
; Matched:%var_2_494:  %var_2_494 = mul nsw i64 %var_2_493, 40
; %var_2_248 = mul nsw i64 %var_2_247, 40
; Matched:\<badref\>:  store i64 %var_2_494, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_248, i64* %RCX.i756, align 8
; Matched:%var_2_495:  %var_2_495 = lshr i64 %var_2_494, 63
; %var_2_249 = lshr i64 %var_2_248, 63
; Matched:%var_2_496:  %var_2_496 = load i64, i64* %RAX, align 8
; %var_2_250 = load i64, i64* %RAX.i758, align 8
; Matched:%var_2_497:  %var_2_497 = add i64 %var_2_494, %var_2_496
; %var_2_251 = add i64 %var_2_248, %var_2_250
; Matched:\<badref\>:  store i64 %var_2_497, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_251, i64* %RAX.i758, align 8
; Matched:%var_2_498:  %var_2_498 = icmp ult i64 %var_2_497, %var_2_496
; %var_2_252 = icmp ult i64 %var_2_251, %var_2_250
; Matched:%var_2_499:  %var_2_499 = icmp ult i64 %var_2_497, %var_2_494
; %var_2_253 = icmp ult i64 %var_2_251, %var_2_248
; Matched:%var_2_500:  %var_2_500 = or i1 %var_2_498, %var_2_499
; %var_2_254 = or i1 %var_2_252, %var_2_253
; Matched:%var_2_501:  %var_2_501 = zext i1 %var_2_500 to i8
; %var_2_255 = zext i1 %var_2_254 to i8
; Matched:\<badref\>:  store i8 %var_2_501, i8* %var_2_19, align 1, !tbaa !1265
; store i8 %var_2_255, i8* %var_2_14, align 1
; Matched:%var_2_502:  %var_2_502 = trunc i64 %var_2_497 to i32
; %var_2_256 = trunc i64 %var_2_251 to i32
; Matched:%var_2_503:  %var_2_503 = and i32 %var_2_502, 255
; %var_2_257 = and i32 %var_2_256, 255
; Matched:%var_2_504:  %var_2_504 = tail call i32 @llvm.ctpop.i32(i32 %var_2_503) #14
; %var_2_258 = tail call i32 @llvm.ctpop.i32(i32 %var_2_257)
; Matched:%var_2_505:  %var_2_505 = trunc i32 %var_2_504 to i8
; %var_2_259 = trunc i32 %var_2_258 to i8
; Matched:%var_2_506:  %var_2_506 = and i8 %var_2_505, 1
; %var_2_260 = and i8 %var_2_259, 1
; Matched:%var_2_507:  %var_2_507 = xor i8 %var_2_506, 1
; %var_2_261 = xor i8 %var_2_260, 1
; Matched:\<badref\>:  store i8 %var_2_507, i8* %var_2_26, align 1, !tbaa !1279
; store i8 %var_2_261, i8* %var_2_21, align 1
; Matched:%var_2_508:  %var_2_508 = xor i64 %var_2_494, %var_2_496
; %var_2_262 = xor i64 %var_2_248, %var_2_250
; Matched:%var_2_509:  %var_2_509 = xor i64 %var_2_508, %var_2_497
; %var_2_263 = xor i64 %var_2_262, %var_2_251
; Matched:%var_2_510:  %var_2_510 = lshr i64 %var_2_509, 4
; %var_2_264 = lshr i64 %var_2_263, 4
; Matched:%var_2_511:  %var_2_511 = trunc i64 %var_2_510 to i8
; %var_2_265 = trunc i64 %var_2_264 to i8
; Matched:%var_2_512:  %var_2_512 = and i8 %var_2_511, 1
; %var_2_266 = and i8 %var_2_265, 1
; Matched:\<badref\>:  store i8 %var_2_512, i8* %var_2_31, align 1, !tbaa !1280
; store i8 %var_2_266, i8* %var_2_26, align 1
; Matched:%var_2_513:  %var_2_513 = icmp eq i64 %var_2_497, 0
; %var_2_267 = icmp eq i64 %var_2_251, 0
; Matched:%var_2_514:  %var_2_514 = zext i1 %var_2_513 to i8
; %var_2_268 = zext i1 %var_2_267 to i8
; Matched:\<badref\>:  store i8 %var_2_514, i8* %var_2_34, align 1, !tbaa !1281
; store i8 %var_2_268, i8* %var_2_29, align 1
; Matched:%var_2_515:  %var_2_515 = lshr i64 %var_2_497, 63
; %var_2_269 = lshr i64 %var_2_251, 63
; Matched:%var_2_516:  %var_2_516 = trunc i64 %var_2_515 to i8
; %var_2_270 = trunc i64 %var_2_269 to i8
; Matched:\<badref\>:  store i8 %var_2_516, i8* %var_2_37, align 1, !tbaa !1282
; store i8 %var_2_270, i8* %var_2_32, align 1
; Matched:%var_2_517:  %var_2_517 = lshr i64 %var_2_496, 63
; %var_2_271 = lshr i64 %var_2_250, 63
; Matched:%var_2_518:  %var_2_518 = xor i64 %var_2_515, %var_2_517
; %var_2_272 = xor i64 %var_2_269, %var_2_271
; Matched:%var_2_519:  %var_2_519 = xor i64 %var_2_515, %var_2_495
; %var_2_273 = xor i64 %var_2_269, %var_2_249
; Matched:%var_2_520:  %var_2_520 = add nuw nsw i64 %var_2_518, %var_2_519
; %var_2_274 = add nuw nsw i64 %var_2_272, %var_2_273
; Matched:%var_2_521:  %var_2_521 = icmp eq i64 %var_2_520, 2
; %var_2_275 = icmp eq i64 %var_2_274, 2
; Matched:%var_2_522:  %var_2_522 = zext i1 %var_2_521 to i8
; %var_2_276 = zext i1 %var_2_275 to i8
; Matched:\<badref\>:  store i8 %var_2_522, i8* %var_2_43, align 1, !tbaa !1283
; store i8 %var_2_276, i8* %var_2_38, align 1
%var_2_277 = load i64, i64* %RBP.i, align 8
%var_2_278 = add i64 %var_2_277, -24
; Matched:%var_2_525:  %var_2_525 = add i64 %var_2_677, 59
; %var_2_279 = add i64 %var_2_202, 59
; Matched:\<badref\>:  store i64 %var_2_525, i64* %PC, align 8
; store i64 %var_2_279, i64* %var_2_3, align 8
%var_2_280 = inttoptr i64 %var_2_278 to i32*
%var_2_281 = load i32, i32* %var_2_280, align 4
%var_2_282 = add i32 %var_2_281, 1
; Matched:%var_2_529:  %var_2_529 = zext i32 %var_2_528 to i64
; %var_2_283 = zext i32 %var_2_282 to i64
; Matched:\<badref\>:  store i64 %var_2_529, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_283, i64* %RSI.i333, align 8
; Matched:%var_2_686:  %var_2_686 = icmp eq i32 %var_2_683, -1
; %var_2_284 = icmp eq i32 %var_2_281, -1
; Matched:%var_2_566:  %var_2_566 = icmp eq i32 %var_2_563, 0
; %var_2_285 = icmp eq i32 %var_2_282, 0
; Matched:%var_2_532:  %var_2_532 = or i1 %var_2_530, %var_2_531
; %var_2_286 = or i1 %var_2_284, %var_2_285
; Matched:%var_2_689:  %var_2_689 = zext i1 %var_2_688 to i8
; %var_2_287 = zext i1 %var_2_286 to i8
; Matched:\<badref\>:  store i8 %var_2_568, i8* %var_2_19, align 1, !tbaa !1265
; store i8 %var_2_287, i8* %var_2_14, align 1
; Matched:%var_2_690:  %var_2_690 = and i32 %var_2_684, 255
; %var_2_288 = and i32 %var_2_282, 255
; Matched:%var_2_691:  %var_2_691 = tail call i32 @llvm.ctpop.i32(i32 %var_2_690) #14
; %var_2_289 = tail call i32 @llvm.ctpop.i32(i32 %var_2_288)
; Matched:%var_2_692:  %var_2_692 = trunc i32 %var_2_691 to i8
; %var_2_290 = trunc i32 %var_2_289 to i8
; Matched:%var_2_693:  %var_2_693 = and i8 %var_2_692, 1
; %var_2_291 = and i8 %var_2_290, 1
; Matched:%var_2_573:  %var_2_573 = xor i8 %var_2_572, 1
; %var_2_292 = xor i8 %var_2_291, 1
; Matched:\<badref\>:  store i8 %var_2_538, i8* %var_2_26, align 1, !tbaa !1279
; store i8 %var_2_292, i8* %var_2_21, align 1
; Matched:%var_2_695:  %var_2_695 = xor i32 %var_2_684, %var_2_683
; %var_2_293 = xor i32 %var_2_282, %var_2_281
; Matched:%var_2_575:  %var_2_575 = lshr i32 %var_2_574, 4
; %var_2_294 = lshr i32 %var_2_293, 4
; Matched:%var_2_697:  %var_2_697 = trunc i32 %var_2_696 to i8
; %var_2_295 = trunc i32 %var_2_294 to i8
; Matched:%var_2_698:  %var_2_698 = and i8 %var_2_697, 1
; %var_2_296 = and i8 %var_2_295, 1
; Matched:\<badref\>:  store i8 %var_2_698, i8* %var_2_31, align 1, !tbaa !1280
; store i8 %var_2_296, i8* %var_2_26, align 1
; Matched:%var_2_699:  %var_2_699 = zext i1 %var_2_687 to i8
; %var_2_297 = zext i1 %var_2_285 to i8
; Matched:\<badref\>:  store i8 %var_2_578, i8* %var_2_34, align 1, !tbaa !1281
; store i8 %var_2_297, i8* %var_2_29, align 1
; Matched:%var_2_544:  %var_2_544 = lshr i32 %var_2_528, 31
; %var_2_298 = lshr i32 %var_2_282, 31
; Matched:%var_2_701:  %var_2_701 = trunc i32 %var_2_700 to i8
; %var_2_299 = trunc i32 %var_2_298 to i8
; Matched:\<badref\>:  store i8 %var_2_580, i8* %var_2_37, align 1, !tbaa !1282
; store i8 %var_2_299, i8* %var_2_32, align 1
; Matched:%var_2_702:  %var_2_702 = lshr i32 %var_2_683, 31
; %var_2_300 = lshr i32 %var_2_281, 31
; Matched:%var_2_703:  %var_2_703 = xor i32 %var_2_700, %var_2_702
; %var_2_301 = xor i32 %var_2_298, %var_2_300
; Matched:%var_2_704:  %var_2_704 = add nuw nsw i32 %var_2_703, %var_2_700
; %var_2_302 = add nuw nsw i32 %var_2_301, %var_2_298
; Matched:%var_2_705:  %var_2_705 = icmp eq i32 %var_2_704, 2
; %var_2_303 = icmp eq i32 %var_2_302, 2
; Matched:%var_2_585:  %var_2_585 = zext i1 %var_2_584 to i8
; %var_2_304 = zext i1 %var_2_303 to i8
; Matched:\<badref\>:  store i8 %var_2_550, i8* %var_2_43, align 1, !tbaa !1283
; store i8 %var_2_304, i8* %var_2_38, align 1
; Matched:%var_2_551:  %var_2_551 = sext i32 %var_2_528 to i64
; %var_2_305 = sext i32 %var_2_282 to i64
; Matched:\<badref\>:  store i64 %var_2_551, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_305, i64* %RCX.i756, align 8
; Matched:%var_2_552:  %var_2_552 = shl nsw i64 %var_2_551, 3
; %var_2_306 = shl nsw i64 %var_2_305, 3
; Matched:%var_2_553:  %var_2_553 = add i64 %var_2_497, %var_2_552
; %var_2_307 = add i64 %var_2_251, %var_2_306
; Matched:%var_2_554:  %var_2_554 = add i64 %var_2_677, 70
; %var_2_308 = add i64 %var_2_202, 70
; Matched:\<badref\>:  store i64 %var_2_554, i64* %PC, align 8
; store i64 %var_2_308, i64* %var_2_3, align 8
; Matched:%var_2_555:  %var_2_555 = load i64, i64* %var_2_45, align 1
; %var_2_309 = load i64, i64* %var_2_44, align 1
; Matched:%var_2_556:  %var_2_556 = inttoptr i64 %var_2_553 to i64*
; %var_2_310 = inttoptr i64 %var_2_307 to i64*
; Matched:\<badref\>:  store i64 %var_2_555, i64* %var_2_556, align 8
; store i64 %var_2_309, i64* %var_2_310, align 8
%var_2_311 = load i64, i64* %RBP.i, align 8
%var_2_312 = add i64 %var_2_311, -24
; Matched:%var_2_87:  %var_2_87 = load i64, i64* %PC, align 8
; %var_2_313 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_377:  %var_2_377 = add i64 %var_2_376, 3
; %var_2_314 = add i64 %var_2_313, 3
; Matched:\<badref\>:  store i64 %var_2_377, i64* %PC, align 8
; store i64 %var_2_314, i64* %var_2_3, align 8
%var_2_315 = inttoptr i64 %var_2_312 to i32*
%var_2_316 = load i32, i32* %var_2_315, align 4
%var_2_317 = add i32 %var_2_316, 1
; Matched:%var_2_685:  %var_2_685 = zext i32 %var_2_684 to i64
; %var_2_318 = zext i32 %var_2_317 to i64
; Matched:\<badref\>:  store i64 %var_2_564, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_318, i64* %RAX.i758, align 8
; Matched:%var_2_530:  %var_2_530 = icmp eq i32 %var_2_527, -1
; %var_2_319 = icmp eq i32 %var_2_316, -1
; Matched:%var_2_687:  %var_2_687 = icmp eq i32 %var_2_684, 0
; %var_2_320 = icmp eq i32 %var_2_317, 0
; Matched:%var_2_567:  %var_2_567 = or i1 %var_2_565, %var_2_566
; %var_2_321 = or i1 %var_2_319, %var_2_320
; Matched:%var_2_533:  %var_2_533 = zext i1 %var_2_532 to i8
; %var_2_322 = zext i1 %var_2_321 to i8
; Matched:\<badref\>:  store i8 %var_2_689, i8* %var_2_19, align 1, !tbaa !1265
; store i8 %var_2_322, i8* %var_2_14, align 1
; Matched:%var_2_534:  %var_2_534 = and i32 %var_2_528, 255
; %var_2_323 = and i32 %var_2_317, 255
; Matched:%var_2_535:  %var_2_535 = tail call i32 @llvm.ctpop.i32(i32 %var_2_534) #14
; %var_2_324 = tail call i32 @llvm.ctpop.i32(i32 %var_2_323)
; Matched:%var_2_536:  %var_2_536 = trunc i32 %var_2_535 to i8
; %var_2_325 = trunc i32 %var_2_324 to i8
; Matched:%var_2_537:  %var_2_537 = and i8 %var_2_536, 1
; %var_2_326 = and i8 %var_2_325, 1
; Matched:%var_2_694:  %var_2_694 = xor i8 %var_2_693, 1
; %var_2_327 = xor i8 %var_2_326, 1
; Matched:\<badref\>:  store i8 %var_2_573, i8* %var_2_26, align 1, !tbaa !1279
; store i8 %var_2_327, i8* %var_2_21, align 1
; Matched:%var_2_539:  %var_2_539 = xor i32 %var_2_528, %var_2_527
; %var_2_328 = xor i32 %var_2_317, %var_2_316
; Matched:%var_2_696:  %var_2_696 = lshr i32 %var_2_695, 4
; %var_2_329 = lshr i32 %var_2_328, 4
; Matched:%var_2_541:  %var_2_541 = trunc i32 %var_2_540 to i8
; %var_2_330 = trunc i32 %var_2_329 to i8
; Matched:%var_2_542:  %var_2_542 = and i8 %var_2_541, 1
; %var_2_331 = and i8 %var_2_330, 1
; Matched:\<badref\>:  store i8 %var_2_542, i8* %var_2_31, align 1, !tbaa !1280
; store i8 %var_2_331, i8* %var_2_26, align 1
; Matched:%var_2_543:  %var_2_543 = zext i1 %var_2_531 to i8
; %var_2_332 = zext i1 %var_2_320 to i8
; Matched:\<badref\>:  store i8 %var_2_699, i8* %var_2_34, align 1, !tbaa !1281
; store i8 %var_2_332, i8* %var_2_29, align 1
; Matched:%var_2_579:  %var_2_579 = lshr i32 %var_2_563, 31
; %var_2_333 = lshr i32 %var_2_317, 31
; Matched:%var_2_545:  %var_2_545 = trunc i32 %var_2_544 to i8
; %var_2_334 = trunc i32 %var_2_333 to i8
; Matched:\<badref\>:  store i8 %var_2_701, i8* %var_2_37, align 1, !tbaa !1282
; store i8 %var_2_334, i8* %var_2_32, align 1
; Matched:%var_2_546:  %var_2_546 = lshr i32 %var_2_527, 31
; %var_2_335 = lshr i32 %var_2_316, 31
; Matched:%var_2_547:  %var_2_547 = xor i32 %var_2_544, %var_2_546
; %var_2_336 = xor i32 %var_2_333, %var_2_335
; Matched:%var_2_548:  %var_2_548 = add nuw nsw i32 %var_2_547, %var_2_544
; %var_2_337 = add nuw nsw i32 %var_2_336, %var_2_333
; Matched:%var_2_549:  %var_2_549 = icmp eq i32 %var_2_548, 2
; %var_2_338 = icmp eq i32 %var_2_337, 2
; Matched:%var_2_706:  %var_2_706 = zext i1 %var_2_705 to i8
; %var_2_339 = zext i1 %var_2_338 to i8
; Matched:\<badref\>:  store i8 %var_2_706, i8* %var_2_43, align 1, !tbaa !1283
; store i8 %var_2_339, i8* %var_2_38, align 1
; Matched:%var_2_586:  %var_2_586 = add i64 %var_2_559, 9
; %var_2_340 = add i64 %var_2_313, 9
; Matched:\<badref\>:  store i64 %var_2_586, i64* %PC, align 8
; store i64 %var_2_340, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_684, i32* %var_2_682, align 4
; store i32 %var_2_317, i32* %var_2_315, align 4
; Matched:%var_2_587:  %var_2_587 = load i64, i64* %PC, align 8
; %var_2_341 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_588:  %var_2_588 = add i64 %var_2_587, -89
; %var_2_342 = add i64 %var_2_341, -89
; Matched:\<badref\>:  store i64 %var_2_588, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_342, i64* %var_2_3, align 8
  br label %block_.L_40082a

block_.L_400888:                                  ; preds = %block_.L_40082a
%var_2_343 = add i64 %var_2_174, -20
; Matched:%var_2_1178:  %var_2_1178 = add i64 %var_2_677, 8
; %var_2_344 = add i64 %var_2_202, 8
; Matched:\<badref\>:  store i64 %var_2_1178, i64* %PC, align 8
; store i64 %var_2_344, i64* %var_2_3, align 8
%var_2_345 = inttoptr i64 %var_2_343 to i32*
%var_2_346 = load i32, i32* %var_2_345, align 4
%var_2_347 = add i32 %var_2_346, 1
%var_2_348 = zext i32 %var_2_347 to i64
; Matched:\<badref\>:  store i64 %var_2_117, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_348, i64* %RAX.i758, align 8
; Matched:%var_2_118:  %var_2_118 = icmp eq i32 %var_2_115, -1
; %var_2_349 = icmp eq i32 %var_2_346, -1
; Matched:%var_2_119:  %var_2_119 = icmp eq i32 %var_2_116, 0
; %var_2_350 = icmp eq i32 %var_2_347, 0
; Matched:%var_2_120:  %var_2_120 = or i1 %var_2_118, %var_2_119
; %var_2_351 = or i1 %var_2_349, %var_2_350
; Matched:%var_2_121:  %var_2_121 = zext i1 %var_2_120 to i8
; %var_2_352 = zext i1 %var_2_351 to i8
; Matched:\<badref\>:  store i8 %var_2_1186, i8* %var_2_19, align 1, !tbaa !1265
; store i8 %var_2_352, i8* %var_2_14, align 1
; Matched:%var_2_122:  %var_2_122 = and i32 %var_2_116, 255
; %var_2_353 = and i32 %var_2_347, 255
; Matched:%var_2_1188:  %var_2_1188 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1187) #14
; %var_2_354 = tail call i32 @llvm.ctpop.i32(i32 %var_2_353)
; Matched:%var_2_124:  %var_2_124 = trunc i32 %var_2_123 to i8
; %var_2_355 = trunc i32 %var_2_354 to i8
; Matched:%var_2_125:  %var_2_125 = and i8 %var_2_124, 1
; %var_2_356 = and i8 %var_2_355, 1
; Matched:%var_2_126:  %var_2_126 = xor i8 %var_2_125, 1
; %var_2_357 = xor i8 %var_2_356, 1
; Matched:\<badref\>:  store i8 %var_2_126, i8* %var_2_26, align 1, !tbaa !1279
; store i8 %var_2_357, i8* %var_2_21, align 1
; Matched:%var_2_127:  %var_2_127 = xor i32 %var_2_116, %var_2_115
; %var_2_358 = xor i32 %var_2_347, %var_2_346
; Matched:%var_2_1193:  %var_2_1193 = lshr i32 %var_2_1192, 4
; %var_2_359 = lshr i32 %var_2_358, 4
; Matched:%var_2_129:  %var_2_129 = trunc i32 %var_2_128 to i8
; %var_2_360 = trunc i32 %var_2_359 to i8
; Matched:%var_2_1195:  %var_2_1195 = and i8 %var_2_1194, 1
; %var_2_361 = and i8 %var_2_360, 1
; Matched:\<badref\>:  store i8 %var_2_130, i8* %var_2_31, align 1, !tbaa !1280
; store i8 %var_2_361, i8* %var_2_26, align 1
; Matched:%var_2_131:  %var_2_131 = zext i1 %var_2_119 to i8
; %var_2_362 = zext i1 %var_2_350 to i8
; Matched:\<badref\>:  store i8 %var_2_131, i8* %var_2_34, align 1, !tbaa !1281
; store i8 %var_2_362, i8* %var_2_29, align 1
; Matched:%var_2_132:  %var_2_132 = lshr i32 %var_2_116, 31
; %var_2_363 = lshr i32 %var_2_347, 31
; Matched:%var_2_133:  %var_2_133 = trunc i32 %var_2_132 to i8
; %var_2_364 = trunc i32 %var_2_363 to i8
; Matched:\<badref\>:  store i8 %var_2_1198, i8* %var_2_37, align 1, !tbaa !1282
; store i8 %var_2_364, i8* %var_2_32, align 1
; Matched:%var_2_134:  %var_2_134 = lshr i32 %var_2_115, 31
; %var_2_365 = lshr i32 %var_2_346, 31
; Matched:%var_2_1200:  %var_2_1200 = xor i32 %var_2_1197, %var_2_1199
; %var_2_366 = xor i32 %var_2_363, %var_2_365
; Matched:%var_2_136:  %var_2_136 = add nuw nsw i32 %var_2_135, %var_2_132
; %var_2_367 = add nuw nsw i32 %var_2_366, %var_2_363
; Matched:%var_2_137:  %var_2_137 = icmp eq i32 %var_2_136, 2
; %var_2_368 = icmp eq i32 %var_2_367, 2
; Matched:%var_2_138:  %var_2_138 = zext i1 %var_2_137 to i8
; %var_2_369 = zext i1 %var_2_368 to i8
; Matched:\<badref\>:  store i8 %var_2_138, i8* %var_2_43, align 1, !tbaa !1283
; store i8 %var_2_369, i8* %var_2_38, align 1
; Matched:%var_2_1204:  %var_2_1204 = add i64 %var_2_677, 14
; %var_2_370 = add i64 %var_2_202, 14
; Matched:\<badref\>:  store i64 %var_2_1204, i64* %PC, align 8
; store i64 %var_2_370, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_116, i32* %var_2_114, align 4
; store i32 %var_2_347, i32* %var_2_345, align 4
%var_2_371 = load i64, i64* %var_2_3, align 8
%var_2_372 = add i64 %var_2_371, -134
; Matched:\<badref\>:  store i64 %var_2_1206, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_372, i64* %var_2_3, align 8
  br label %block_.L_400810

block_.L_40089b:                                  ; preds = %block_.L_400810
%var_2_373 = bitcast [32 x %union.VectorReg]* %var_2_39 to i8*
%var_2_374 = bitcast [32 x %union.VectorReg]* %var_2_39 to double*
%var_2_375 = bitcast %union.VectorReg* %var_2_47 to double*
; Matched:%var_2_1003:  %var_2_1003 = bitcast %union.VectorReg* %var_2_8 to double*
; %var_2_376 = bitcast %union.VectorReg* %var_2_62 to double*
%RDI.i682 = getelementptr inbounds %union.anon, %union.anon* %var_2_110, i64 0, i32 0
  store i64 ptrtoint (%G__0x401668_type* @G__0x401668 to i64), i64* %RDI.i682, align 8
%AL.i680 = bitcast %union.anon* %var_2_137 to i8*
  store i8 0, i8* %AL.i680, align 1
%var_2_377 = add i64 %var_2_169, -699
%var_2_378 = add i64 %var_2_169, 17
%var_2_379 = load i64, i64* %var_2_6, align 8
%var_2_380 = add i64 %var_2_379, -8
%var_2_381 = inttoptr i64 %var_2_380 to i64*
store i64 %var_2_378, i64* %var_2_381, align 8
; Matched:\<badref\>:  store i64 %var_2_1064, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_380, i64* %var_2_6, align 8
store i64 %var_2_377, i64* %var_2_3, align 8
%var_2_382 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %2)
; Matched:%var_2_1010:  %var_2_1010 = load i64, i64* %PC, align 8
; %var_2_383 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x40169e_type* @G__0x40169e to i64), i64* %RDI.i682, align 8
%var_2_384 = load i32, i32* bitcast (%G_0x602070_type* @G_0x602070 to i32*), align 8
%var_2_385 = zext i32 %var_2_384 to i64
store i64 %var_2_385, i64* %RSI.i333, align 8
; Matched:%var_2_1013:  %var_2_1013 = load i64, i64* %RBP, align 8
; %var_2_386 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1014:  %var_2_1014 = add i64 %var_2_1013, -52
; %var_2_387 = add i64 %var_2_386, -52
; Matched:%var_2_1015:  %var_2_1015 = load i32, i32* %EAX, align 4
; %var_2_388 = load i32, i32* %EAX.i753, align 4
; Matched:%var_2_1016:  %var_2_1016 = add i64 %var_2_1010, 20
; %var_2_389 = add i64 %var_2_383, 20
; Matched:\<badref\>:  store i64 %var_2_1016, i64* %PC, align 8
; store i64 %var_2_389, i64* %var_2_3, align 8
; Matched:%var_2_1017:  %var_2_1017 = inttoptr i64 %var_2_1014 to i32*
; %var_2_390 = inttoptr i64 %var_2_387 to i32*
; Matched:\<badref\>:  store i32 %var_2_1015, i32* %var_2_1017, align 4
; store i32 %var_2_388, i32* %var_2_390, align 4
; Matched:%var_2_1345:  %var_2_1345 = load i64, i64* %PC, align 8
; %var_2_391 = load i64, i64* %var_2_3, align 8
  store i8 0, i8* %AL.i680, align 1
; Matched:%var_2_1019:  %var_2_1019 = add i64 %var_2_1018, -736
; %var_2_392 = add i64 %var_2_391, -736
; Matched:%var_2_1347:  %var_2_1347 = add i64 %var_2_1345, 7
; %var_2_393 = add i64 %var_2_391, 7
%var_2_394 = load i64, i64* %var_2_6, align 8
%var_2_395 = add i64 %var_2_394, -8
; Matched:%var_2_1314:  %var_2_1314 = inttoptr i64 %var_2_1313 to i64*
; %var_2_396 = inttoptr i64 %var_2_395 to i64*
; Matched:\<badref\>:  store i64 %var_2_1329, i64* %var_2_1332, align 8
; store i64 %var_2_393, i64* %var_2_396, align 8
; Matched:\<badref\>:  store i64 %var_2_189, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_395, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1019, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_392, i64* %var_2_3, align 8
%var_2_397 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %var_2_382)
%var_2_398 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x4016d8_type* @G__0x4016d8 to i64), i64* %RDI.i682, align 8
%var_2_399 = add i64 %var_2_398, add (i64 ptrtoint (%G_0xd67__rip__type* @G_0xd67__rip_ to i64), i64 10)
; Matched:%var_2_1554:  %var_2_1554 = add i64 %var_2_1542, 18
; %var_2_400 = add i64 %var_2_398, 18
; Matched:\<badref\>:  store i64 %var_2_1554, i64* %PC, align 8
; store i64 %var_2_400, i64* %var_2_3, align 8
%var_2_401 = inttoptr i64 %var_2_399 to double*
%var_2_402 = load double, double* %var_2_401, align 8
%var_2_403 = load i32, i32* bitcast (%G_0x602070_type* @G_0x602070 to i32*), align 8
%var_2_404 = sitofp i32 %var_2_403 to double
%var_2_405 = bitcast i64* %var_2_53 to <2 x i32>*
%var_2_406 = load <2 x i32>, <2 x i32>* %var_2_405, align 1
%var_2_407 = fdiv double %var_2_404, %var_2_402
store double %var_2_407, double* %var_2_375, align 1
%.cast = bitcast double %var_2_407 to <2 x i32>
%var_2_408 = extractelement <2 x i32> %.cast, i32 0
%var_2_409 = bitcast [32 x %union.VectorReg]* %var_2_39 to i32*
store i32 %var_2_408, i32* %var_2_409, align 1
%var_2_410 = extractelement <2 x i32> %.cast, i32 1
%var_2_411 = getelementptr inbounds i8, i8* %var_2_373, i64 4
%var_2_412 = bitcast i8* %var_2_411 to i32*
store i32 %var_2_410, i32* %var_2_412, align 1
%var_2_413 = extractelement <2 x i32> %var_2_406, i32 0
%var_2_414 = bitcast i64* %var_2_45 to i32*
; Matched:\<badref\>:  store i32 %var_2_1037, i32* %var_2_1038, align 1, !tbaa !1286
; store i32 %var_2_413, i32* %var_2_414, align 1
%var_2_415 = extractelement <2 x i32> %var_2_406, i32 1
%var_2_416 = getelementptr inbounds i8, i8* %var_2_373, i64 12
%var_2_417 = bitcast i8* %var_2_416 to i32*
; Matched:\<badref\>:  store i32 %var_2_1039, i32* %var_2_1041, align 1, !tbaa !1286
; store i32 %var_2_415, i32* %var_2_417, align 1
; Matched:%var_2_1042:  %var_2_1042 = load i64, i64* %RBP, align 8
; %var_2_418 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1043:  %var_2_1043 = add i64 %var_2_1042, -56
; %var_2_419 = add i64 %var_2_418, -56
; Matched:%var_2_1044:  %var_2_1044 = load i32, i32* %EAX, align 4
; %var_2_420 = load i32, i32* %EAX.i753, align 4
; Matched:%var_2_1045:  %var_2_1045 = add i64 %var_2_1025, 37
; %var_2_421 = add i64 %var_2_398, 37
; Matched:\<badref\>:  store i64 %var_2_1045, i64* %PC, align 8
; store i64 %var_2_421, i64* %var_2_3, align 8
; Matched:%var_2_1046:  %var_2_1046 = inttoptr i64 %var_2_1043 to i32*
; %var_2_422 = inttoptr i64 %var_2_419 to i32*
; Matched:\<badref\>:  store i32 %var_2_1044, i32* %var_2_1046, align 4
; store i32 %var_2_420, i32* %var_2_422, align 4
; Matched:%var_2_1273:  %var_2_1273 = load i64, i64* %PC, align 8
; %var_2_423 = load i64, i64* %var_2_3, align 8
  store i8 1, i8* %AL.i680, align 1
; Matched:%var_2_1048:  %var_2_1048 = add i64 %var_2_1047, -780
; %var_2_424 = add i64 %var_2_423, -780
; Matched:%var_2_1257:  %var_2_1257 = add i64 %var_2_1255, 7
; %var_2_425 = add i64 %var_2_423, 7
%var_2_426 = load i64, i64* %var_2_6, align 8
%var_2_427 = add i64 %var_2_426, -8
; Matched:%var_2_1242:  %var_2_1242 = inttoptr i64 %var_2_1241 to i64*
; %var_2_428 = inttoptr i64 %var_2_427 to i64*
; Matched:\<badref\>:  store i64 %var_2_1239, i64* %var_2_1242, align 8
; store i64 %var_2_425, i64* %var_2_428, align 8
; Matched:\<badref\>:  store i64 %var_2_1313, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_427, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1048, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_424, i64* %var_2_3, align 8
%var_2_429 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %var_2_397)
%var_2_430 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x401710_type* @G__0x401710 to i64), i64* %RDI.i682, align 8
; Matched:%var_2_1055:  %var_2_1055 = load i64, i64* %RBP, align 8
; %var_2_431 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1056:  %var_2_1056 = add i64 %var_2_1055, -60
; %var_2_432 = add i64 %var_2_431, -60
; Matched:%var_2_1057:  %var_2_1057 = load i32, i32* %EAX, align 4
; %var_2_433 = load i32, i32* %EAX.i753, align 4
%var_2_434 = add i64 %var_2_430, 13
store i64 %var_2_434, i64* %var_2_3, align 8
; Matched:%var_2_1059:  %var_2_1059 = inttoptr i64 %var_2_1056 to i32*
; %var_2_435 = inttoptr i64 %var_2_432 to i32*
; Matched:\<badref\>:  store i32 %var_2_1057, i32* %var_2_1059, align 4
; store i32 %var_2_433, i32* %var_2_435, align 4
; Matched:%var_2_1520:  %var_2_1520 = load i64, i64* %PC, align 8
; %var_2_436 = load i64, i64* %var_2_3, align 8
  store i8 0, i8* %AL.i680, align 1
; Matched:%var_2_1061:  %var_2_1061 = add i64 %var_2_1060, -800
; %var_2_437 = add i64 %var_2_436, -800
; Matched:%var_2_1062:  %var_2_1062 = add i64 %var_2_1060, 7
; %var_2_438 = add i64 %var_2_436, 7
%var_2_439 = load i64, i64* %var_2_6, align 8
%var_2_440 = add i64 %var_2_439, -8
; Matched:%var_2_1350:  %var_2_1350 = inttoptr i64 %var_2_1349 to i64*
; %var_2_441 = inttoptr i64 %var_2_440 to i64*
; Matched:\<badref\>:  store i64 %var_2_1347, i64* %var_2_1350, align 8
; store i64 %var_2_438, i64* %var_2_441, align 8
; Matched:\<badref\>:  store i64 %var_2_1524, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_440, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1061, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_437, i64* %var_2_3, align 8
%var_2_442 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %var_2_429)
%var_2_443 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x40174c_type* @G__0x40174c to i64), i64* %RDI.i682, align 8
; Matched:%var_2_1068:  %var_2_1068 = load i64, i64* %RBP, align 8
; %var_2_444 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1069:  %var_2_1069 = add i64 %var_2_1068, -64
; %var_2_445 = add i64 %var_2_444, -64
; Matched:%var_2_1070:  %var_2_1070 = load i32, i32* %EAX, align 4
; %var_2_446 = load i32, i32* %EAX.i753, align 4
%var_2_447 = add i64 %var_2_443, 13
store i64 %var_2_447, i64* %var_2_3, align 8
; Matched:%var_2_1072:  %var_2_1072 = inttoptr i64 %var_2_1069 to i32*
; %var_2_448 = inttoptr i64 %var_2_445 to i32*
; Matched:\<badref\>:  store i32 %var_2_1070, i32* %var_2_1072, align 4
; store i32 %var_2_446, i32* %var_2_448, align 4
; Matched:%var_2_1291:  %var_2_1291 = load i64, i64* %PC, align 8
; %var_2_449 = load i64, i64* %var_2_3, align 8
  store i8 0, i8* %AL.i680, align 1
; Matched:%var_2_1074:  %var_2_1074 = add i64 %var_2_1073, -820
; %var_2_450 = add i64 %var_2_449, -820
; Matched:%var_2_1293:  %var_2_1293 = add i64 %var_2_1291, 7
; %var_2_451 = add i64 %var_2_449, 7
%var_2_452 = load i64, i64* %var_2_6, align 8
%var_2_453 = add i64 %var_2_452, -8
; Matched:%var_2_1538:  %var_2_1538 = inttoptr i64 %var_2_1537 to i64*
; %var_2_454 = inttoptr i64 %var_2_453 to i64*
; Matched:\<badref\>:  store i64 %var_2_1535, i64* %var_2_1538, align 8
; store i64 %var_2_451, i64* %var_2_454, align 8
; Matched:\<badref\>:  store i64 %var_2_1537, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_453, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1074, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_450, i64* %var_2_3, align 8
%var_2_455 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %var_2_442)
%var_2_456 = load i64, i64* %var_2_3, align 8
  store i32 0, i32* bitcast (%G_0x602650_type* @G_0x602650 to i32*), align 8
; Matched:%var_2_1081:  %var_2_1081 = load i64, i64* %RBP, align 8
; %var_2_457 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1082:  %var_2_1082 = add i64 %var_2_1081, -68
; %var_2_458 = add i64 %var_2_457, -68
; Matched:%var_2_1083:  %var_2_1083 = load i32, i32* %EAX, align 4
; %var_2_459 = load i32, i32* %EAX.i753, align 4
%var_2_460 = add i64 %var_2_456, 14
store i64 %var_2_460, i64* %var_2_3, align 8
; Matched:%var_2_1085:  %var_2_1085 = inttoptr i64 %var_2_1082 to i32*
; %var_2_461 = inttoptr i64 %var_2_458 to i32*
; Matched:\<badref\>:  store i32 %var_2_1083, i32* %var_2_1085, align 4
; store i32 %var_2_459, i32* %var_2_461, align 4
; Matched:  %AX = bitcast %union.anon* %var_2_3 to i16*
; %AX.i564 = bitcast %union.anon* %var_2_137 to i16*
%var_2_462 = bitcast %union.VectorReg* %var_2_70 to <2 x i32>*
%var_2_463 = bitcast i64* %var_2_76 to <2 x i32>*
%.pre35 = load i64, i64* %var_2_3, align 8
  %.pre36 = load i32, i32* bitcast (%G_0x602650_type* @G_0x602650 to i32*), align 8
%var_2_464 = bitcast %union.VectorReg* %var_2_47 to double*
  br label %block_.L_400929

block_.L_400929:                                  ; preds = %block_.L_4009de, %block_.L_40089b
%var_2_465 = phi i32 [ %.pre36, %block_.L_40089b ], [ %var_2_738, %block_.L_4009de ]
%var_2_466 = phi i64 [ %.pre35, %block_.L_40089b ], [ %var_2_761, %block_.L_4009de ]
%MEMORY.2 = phi %struct.Memory* [ %var_2_455, %block_.L_40089b ], [ %call2_400af8, %block_.L_4009de ]
; Matched:%var_2_712:  %var_2_712 = zext i32 %var_2_710 to i64
; %var_2_467 = zext i32 %var_2_465 to i64
; Matched:\<badref\>:  store i64 %var_2_712, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_467, i64* %RAX.i758, align 8
%var_2_468 = load i32, i32* bitcast (%G_0x602070_type* @G_0x602070 to i32*), align 8
%var_2_469 = sub i32 %var_2_465, %var_2_468
; Matched:%var_2_715:  %var_2_715 = icmp ult i32 %var_2_710, %var_2_713
; %var_2_470 = icmp ult i32 %var_2_465, %var_2_468
; Matched:%var_2_716:  %var_2_716 = zext i1 %var_2_715 to i8
; %var_2_471 = zext i1 %var_2_470 to i8
; Matched:\<badref\>:  store i8 %var_2_716, i8* %var_2_19, align 1, !tbaa !1265
; store i8 %var_2_471, i8* %var_2_14, align 1
; Matched:%var_2_717:  %var_2_717 = and i32 %var_2_714, 255
; %var_2_472 = and i32 %var_2_469, 255
; Matched:%var_2_718:  %var_2_718 = tail call i32 @llvm.ctpop.i32(i32 %var_2_717) #14
; %var_2_473 = tail call i32 @llvm.ctpop.i32(i32 %var_2_472)
; Matched:%var_2_719:  %var_2_719 = trunc i32 %var_2_718 to i8
; %var_2_474 = trunc i32 %var_2_473 to i8
; Matched:%var_2_720:  %var_2_720 = and i8 %var_2_719, 1
; %var_2_475 = and i8 %var_2_474, 1
; Matched:%var_2_721:  %var_2_721 = xor i8 %var_2_720, 1
; %var_2_476 = xor i8 %var_2_475, 1
; Matched:\<badref\>:  store i8 %var_2_721, i8* %var_2_26, align 1, !tbaa !1279
; store i8 %var_2_476, i8* %var_2_21, align 1
; Matched:%var_2_722:  %var_2_722 = xor i32 %var_2_713, %var_2_710
; %var_2_477 = xor i32 %var_2_468, %var_2_465
; Matched:%var_2_723:  %var_2_723 = xor i32 %var_2_722, %var_2_714
; %var_2_478 = xor i32 %var_2_477, %var_2_469
; Matched:%var_2_724:  %var_2_724 = lshr i32 %var_2_723, 4
; %var_2_479 = lshr i32 %var_2_478, 4
; Matched:%var_2_725:  %var_2_725 = trunc i32 %var_2_724 to i8
; %var_2_480 = trunc i32 %var_2_479 to i8
; Matched:%var_2_726:  %var_2_726 = and i8 %var_2_725, 1
; %var_2_481 = and i8 %var_2_480, 1
; Matched:\<badref\>:  store i8 %var_2_726, i8* %var_2_31, align 1, !tbaa !1280
; store i8 %var_2_481, i8* %var_2_26, align 1
; Matched:%var_2_727:  %var_2_727 = icmp eq i32 %var_2_714, 0
; %var_2_482 = icmp eq i32 %var_2_469, 0
; Matched:%var_2_728:  %var_2_728 = zext i1 %var_2_727 to i8
; %var_2_483 = zext i1 %var_2_482 to i8
; Matched:\<badref\>:  store i8 %var_2_728, i8* %var_2_34, align 1, !tbaa !1281
; store i8 %var_2_483, i8* %var_2_29, align 1
%var_2_484 = lshr i32 %var_2_469, 31
%var_2_485 = trunc i32 %var_2_484 to i8
; Matched:\<badref\>:  store i8 %var_2_730, i8* %var_2_37, align 1, !tbaa !1282
; store i8 %var_2_485, i8* %var_2_32, align 1
%var_2_486 = lshr i32 %var_2_465, 31
%var_2_487 = lshr i32 %var_2_468, 31
%var_2_488 = xor i32 %var_2_487, %var_2_486
%var_2_489 = xor i32 %var_2_484, %var_2_486
%var_2_490 = add nuw nsw i32 %var_2_489, %var_2_488
%var_2_491 = icmp eq i32 %var_2_490, 2
; Matched:%var_2_737:  %var_2_737 = zext i1 %var_2_736 to i8
; %var_2_492 = zext i1 %var_2_491 to i8
; Matched:\<badref\>:  store i8 %var_2_737, i8* %var_2_43, align 1, !tbaa !1283
; store i8 %var_2_492, i8* %var_2_38, align 1
%var_2_493 = icmp ne i8 %var_2_485, 0
%var_2_494 = xor i1 %var_2_493, %var_2_491
%.v45 = select i1 %var_2_494, i64 20, i64 567
%var_2_495 = add i64 %var_2_466, %.v45
%var_2_496 = add i64 %var_2_495, 10
store i64 %var_2_496, i64* %var_2_3, align 8
br i1 %var_2_494, label %block_40093d, label %block_.L_400b60

block_40093d:                                     ; preds = %block_.L_400929
  store i16 0, i16* bitcast (%G_0x602340_type* @G_0x602340 to i16*), align 8
  br label %block_.L_400947

block_.L_400947:                                  ; preds = %block_400958, %block_40093d
%var_2_497 = phi i16 [ %var_2_563, %block_400958 ], [ 0, %block_40093d ]
%var_2_498 = phi i64 [ %var_2_586, %block_400958 ], [ %var_2_496, %block_40093d ]
; Matched:%var_2_1149:  %var_2_1149 = sext i16 %var_2_1147 to i64
; %var_2_499 = sext i16 %var_2_497 to i64
; Matched:%var_2_1150:  %var_2_1150 = and i64 %var_2_1149, 4294967295
; %var_2_500 = and i64 %var_2_499, 4294967295
; Matched:\<badref\>:  store i64 %var_2_1150, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_500, i64* %RAX.i758, align 8
%var_2_501 = sext i16 %var_2_497 to i32
%var_2_502 = add nsw i32 %var_2_501, -1
%var_2_503 = icmp eq i16 %var_2_497, 0
%var_2_504 = zext i1 %var_2_503 to i8
store i8 %var_2_504, i8* %var_2_14, align 1
; Matched:%var_2_1155:  %var_2_1155 = and i32 %var_2_1152, 255
; %var_2_505 = and i32 %var_2_502, 255
; Matched:%var_2_1156:  %var_2_1156 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1155) #14
; %var_2_506 = tail call i32 @llvm.ctpop.i32(i32 %var_2_505)
; Matched:%var_2_1157:  %var_2_1157 = trunc i32 %var_2_1156 to i8
; %var_2_507 = trunc i32 %var_2_506 to i8
; Matched:%var_2_1158:  %var_2_1158 = and i8 %var_2_1157, 1
; %var_2_508 = and i8 %var_2_507, 1
; Matched:%var_2_1159:  %var_2_1159 = xor i8 %var_2_1158, 1
; %var_2_509 = xor i8 %var_2_508, 1
; Matched:\<badref\>:  store i8 %var_2_1159, i8* %var_2_26, align 1, !tbaa !1279
; store i8 %var_2_509, i8* %var_2_21, align 1
; Matched:%var_2_1160:  %var_2_1160 = xor i32 %var_2_1152, %var_2_1151
; %var_2_510 = xor i32 %var_2_502, %var_2_501
; Matched:%var_2_1161:  %var_2_1161 = lshr i32 %var_2_1160, 4
; %var_2_511 = lshr i32 %var_2_510, 4
; Matched:%var_2_1162:  %var_2_1162 = trunc i32 %var_2_1161 to i8
; %var_2_512 = trunc i32 %var_2_511 to i8
; Matched:%var_2_1163:  %var_2_1163 = and i8 %var_2_1162, 1
; %var_2_513 = and i8 %var_2_512, 1
; Matched:\<badref\>:  store i8 %var_2_1163, i8* %var_2_31, align 1, !tbaa !1280
; store i8 %var_2_513, i8* %var_2_26, align 1
%var_2_514 = icmp eq i32 %var_2_502, 0
; Matched:%var_2_1165:  %var_2_1165 = zext i1 %var_2_1164 to i8
; %var_2_515 = zext i1 %var_2_514 to i8
; Matched:\<badref\>:  store i8 %var_2_1165, i8* %var_2_34, align 1, !tbaa !1281
; store i8 %var_2_515, i8* %var_2_29, align 1
%var_2_516 = lshr i32 %var_2_502, 31
%var_2_517 = trunc i32 %var_2_516 to i8
; Matched:\<badref\>:  store i8 %var_2_1167, i8* %var_2_37, align 1, !tbaa !1282
; store i8 %var_2_517, i8* %var_2_32, align 1
%var_2_518 = lshr i32 %var_2_501, 31
%var_2_519 = xor i32 %var_2_516, %var_2_518
%var_2_520 = add nuw nsw i32 %var_2_519, %var_2_518
%var_2_521 = icmp eq i32 %var_2_520, 2
; Matched:%var_2_1172:  %var_2_1172 = zext i1 %var_2_1171 to i8
; %var_2_522 = zext i1 %var_2_521 to i8
; Matched:\<badref\>:  store i8 %var_2_1172, i8* %var_2_43, align 1, !tbaa !1283
; store i8 %var_2_522, i8* %var_2_38, align 1
%var_2_523 = icmp ne i8 %var_2_517, 0
%var_2_524 = xor i1 %var_2_523, %var_2_521
%.demorgan43 = or i1 %var_2_514, %var_2_524
  %.v50 = select i1 %.demorgan43, i64 17, i64 151
%var_2_525 = add i64 %var_2_498, %.v50
%var_2_526 = add i64 %var_2_525, 5
store i64 %var_2_526, i64* %var_2_3, align 8
  br i1 %.demorgan43, label %block_400958, label %block_.L_4009de

block_400958:                                     ; preds = %block_.L_400947
  store i64 4, i64* %RDI.i682, align 8
%var_2_527 = add i64 %var_2_525, add (i64 ptrtoint (%G_0xcfb__rip__type* @G_0xcfb__rip_ to i64), i64 5)
%var_2_528 = add i64 %var_2_525, 13
store i64 %var_2_528, i64* %var_2_3, align 8
%var_2_529 = inttoptr i64 %var_2_527 to double*
%var_2_530 = load double, double* %var_2_529, align 8
%var_2_531 = load double, double* bitcast (%G_0x602198_type* @G_0x602198 to double*), align 8
%var_2_532 = fdiv double %var_2_531, %var_2_530
store double %var_2_532, double* %var_2_375, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_50, align 1, !tbaa !1284
; store i64 0, i64* %var_2_53, align 1
%.cast10 = bitcast double %var_2_532 to <2 x i32>
%var_2_533 = extractelement <2 x i32> %.cast10, i32 0
store i32 %var_2_533, i32* %var_2_409, align 1
%var_2_534 = extractelement <2 x i32> %.cast10, i32 1
store i32 %var_2_534, i32* %var_2_412, align 1
store i32 0, i32* %var_2_414, align 1
store i32 0, i32* %var_2_417, align 1
%var_2_535 = add i64 %var_2_525, 1560
%var_2_536 = add i64 %var_2_525, 34
%var_2_537 = load i64, i64* %var_2_6, align 8
%var_2_538 = add i64 %var_2_537, -8
%var_2_539 = inttoptr i64 %var_2_538 to i64*
store i64 %var_2_536, i64* %var_2_539, align 8
; Matched:\<badref\>:  store i64 %var_2_214, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_538, i64* %var_2_6, align 8
store i64 %var_2_535, i64* %var_2_3, align 8
%call2_400975 = tail call %struct.Memory* @sub_400f70.trace_line(%struct.State* nonnull %0, i64 %var_2_535, %struct.Memory* %MEMORY.2)
; Matched:%var_2_355:  %var_2_355 = load i64, i64* %PC, align 8
; %var_2_540 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x602350_type* @G__0x602350 to i64), i64* %RCX.i756, align 8
; Matched:%var_2_356:  %var_2_356 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 520) to i64*), align 8
; %var_2_541 = load i64, i64* bitcast (%G_0x602348_type* @G_0x602348 to i64*), align 8
%var_2_542 = load i16, i16* bitcast (%G_0x602340_type* @G_0x602340 to i16*), align 8
%var_2_543 = sext i16 %var_2_542 to i64
%var_2_544 = shl nsw i64 %var_2_543, 4
; Matched:%var_2_360:  %var_2_360 = add i64 %var_2_359, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 528)
; %var_2_545 = add i64 %var_2_544, ptrtoint (%G__0x602350_type* @G__0x602350 to i64)
; Matched:\<badref\>:  store i64 %var_2_360, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_545, i64* %RSI.i333, align 8
; Matched:%var_2_361:  %var_2_361 = inttoptr i64 %var_2_360 to i64*
; %var_2_546 = inttoptr i64 %var_2_545 to i64*
; Matched:%var_2_362:  %var_2_362 = add i64 %var_2_355, 42
; %var_2_547 = add i64 %var_2_540, 42
; Matched:\<badref\>:  store i64 %var_2_362, i64* %PC, align 8
; store i64 %var_2_547, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_356, i64* %var_2_361, align 16
; store i64 %var_2_541, i64* %var_2_546, align 8
; Matched:%var_2_363:  %var_2_363 = load i64, i64* %PC, align 8
; %var_2_548 = load i64, i64* %var_2_3, align 8
%var_2_549 = load i64, i64* bitcast (%G_0x602370_type* @G_0x602370 to i64*), align 8
store i64 %var_2_549, i64* %var_2_44, align 1
store double 0.000000e+00, double* %var_2_46, align 1
; Matched:\<badref\>:  store i64 %var_2_367, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_544, i64* %RDX.i740, align 8
; Matched:%var_2_368:  %var_2_368 = load i64, i64* %RCX, align 8
; %var_2_550 = load i64, i64* %RCX.i756, align 8
; Matched:%var_2_369:  %var_2_369 = add i64 %var_2_367, %var_2_368
; %var_2_551 = add i64 %var_2_544, %var_2_550
; Matched:\<badref\>:  store i64 %var_2_369, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_551, i64* %RCX.i756, align 8
; Matched:%var_2_370:  %var_2_370 = add i64 %var_2_369, 8
; %var_2_552 = add i64 %var_2_551, 8
; Matched:%var_2_371:  %var_2_371 = add i64 %var_2_363, 30
; %var_2_553 = add i64 %var_2_548, 30
; Matched:\<badref\>:  store i64 %var_2_371, i64* %PC, align 8
; store i64 %var_2_553, i64* %var_2_3, align 8
; Matched:%var_2_372:  %var_2_372 = inttoptr i64 %var_2_370 to i64*
; %var_2_554 = inttoptr i64 %var_2_552 to i64*
; Matched:\<badref\>:  store i64 %var_2_364, i64* %var_2_372, align 8
; store i64 %var_2_549, i64* %var_2_554, align 8
; Matched:%var_2_373:  %var_2_373 = load i64, i64* %RBP, align 8
; %var_2_555 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_374:  %var_2_374 = add i64 %var_2_373, -72
; %var_2_556 = add i64 %var_2_555, -72
; Matched:%var_2_375:  %var_2_375 = load i32, i32* %EAX, align 4
; %var_2_557 = load i32, i32* %EAX.i753, align 4
; Matched:%var_2_559:  %var_2_559 = load i64, i64* %PC, align 8
; %var_2_558 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_88:  %var_2_88 = add i64 %var_2_87, 3
; %var_2_559 = add i64 %var_2_558, 3
; Matched:\<badref\>:  store i64 %var_2_88, i64* %PC, align 8
; store i64 %var_2_559, i64* %var_2_3, align 8
; Matched:%var_2_378:  %var_2_378 = inttoptr i64 %var_2_374 to i32*
; %var_2_560 = inttoptr i64 %var_2_556 to i32*
; Matched:\<badref\>:  store i32 %var_2_375, i32* %var_2_378, align 4
; store i32 %var_2_557, i32* %var_2_560, align 4
%var_2_561 = load i64, i64* %var_2_3, align 8
%var_2_562 = load i16, i16* bitcast (%G_0x602340_type* @G_0x602340 to i16*), align 8
%var_2_563 = add i16 %var_2_562, 1
; Matched:\<badref\>:  store i16 %var_2_381, i16* %AX, align 2, !tbaa !1298
; store i16 %var_2_563, i16* %AX.i564, align 2
%var_2_564 = icmp eq i16 %var_2_562, -1
%var_2_565 = icmp eq i16 %var_2_563, 0
%var_2_566 = or i1 %var_2_564, %var_2_565
%var_2_567 = zext i1 %var_2_566 to i8
store i8 %var_2_567, i8* %var_2_14, align 1
; Matched:%var_2_386:  %var_2_386 = and i16 %var_2_381, 255
; %var_2_568 = and i16 %var_2_563, 255
; Matched:%var_2_387:  %var_2_387 = zext i16 %var_2_386 to i32
; %var_2_569 = zext i16 %var_2_568 to i32
; Matched:%var_2_388:  %var_2_388 = tail call i32 @llvm.ctpop.i32(i32 %var_2_387) #14
; %var_2_570 = tail call i32 @llvm.ctpop.i32(i32 %var_2_569)
; Matched:%var_2_389:  %var_2_389 = trunc i32 %var_2_388 to i8
; %var_2_571 = trunc i32 %var_2_570 to i8
; Matched:%var_2_390:  %var_2_390 = and i8 %var_2_389, 1
; %var_2_572 = and i8 %var_2_571, 1
; Matched:%var_2_391:  %var_2_391 = xor i8 %var_2_390, 1
; %var_2_573 = xor i8 %var_2_572, 1
; Matched:\<badref\>:  store i8 %var_2_391, i8* %var_2_26, align 1, !tbaa !1279
; store i8 %var_2_573, i8* %var_2_21, align 1
%var_2_574 = xor i16 %var_2_563, %var_2_562
%var_2_575 = lshr i16 %var_2_574, 4
%var_2_576 = trunc i16 %var_2_575 to i8
%var_2_577 = and i8 %var_2_576, 1
store i8 %var_2_577, i8* %var_2_26, align 1
%var_2_578 = zext i1 %var_2_565 to i8
store i8 %var_2_578, i8* %var_2_29, align 1
; Matched:%var_2_397:  %var_2_397 = lshr i16 %var_2_381, 15
; %var_2_579 = lshr i16 %var_2_563, 15
; Matched:%var_2_398:  %var_2_398 = trunc i16 %var_2_397 to i8
; %var_2_580 = trunc i16 %var_2_579 to i8
; Matched:\<badref\>:  store i8 %var_2_398, i8* %var_2_37, align 1, !tbaa !1282
; store i8 %var_2_580, i8* %var_2_32, align 1
; Matched:%var_2_399:  %var_2_399 = lshr i16 %var_2_380, 15
; %var_2_581 = lshr i16 %var_2_562, 15
; Matched:%var_2_400:  %var_2_400 = xor i16 %var_2_397, %var_2_399
; %var_2_582 = xor i16 %var_2_579, %var_2_581
; Matched:%var_2_401:  %var_2_401 = add nuw nsw i16 %var_2_400, %var_2_397
; %var_2_583 = add nuw nsw i16 %var_2_582, %var_2_579
; Matched:%var_2_402:  %var_2_402 = icmp eq i16 %var_2_401, 2
; %var_2_584 = icmp eq i16 %var_2_583, 2
; Matched:%var_2_403:  %var_2_403 = zext i1 %var_2_402 to i8
; %var_2_585 = zext i1 %var_2_584 to i8
; Matched:\<badref\>:  store i8 %var_2_403, i8* %var_2_43, align 1, !tbaa !1283
; store i8 %var_2_585, i8* %var_2_38, align 1
store i16 %var_2_563, i16* bitcast (%G_0x602340_type* @G_0x602340 to i16*), align 8
%var_2_586 = add i64 %var_2_561, -126
; Matched:\<badref\>:  store i64 %var_2_404, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_586, i64* %var_2_3, align 8
  br label %block_.L_400947

block_.L_4009de:                                  ; preds = %block_.L_400947
  store i64 3, i64* %RDI.i682, align 8
%var_2_587 = add i64 %var_2_525, add (i64 ptrtoint (%G_0xc75__rip__type* @G_0xc75__rip_ to i64), i64 5)
%var_2_588 = add i64 %var_2_525, 13
store i64 %var_2_588, i64* %var_2_3, align 8
%var_2_589 = inttoptr i64 %var_2_587 to double*
%var_2_590 = load double, double* %var_2_589, align 8
  store i16 0, i16* bitcast (%G_0x602340_type* @G_0x602340 to i16*), align 8
%var_2_591 = load double, double* bitcast (%G_0x602198_type* @G_0x602198 to double*), align 8
%var_2_592 = fdiv double %var_2_591, %var_2_590
store double %var_2_592, double* %var_2_375, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_50, align 1, !tbaa !1284
; store i64 0, i64* %var_2_53, align 1
%.cast14 = bitcast double %var_2_592 to <2 x i32>
%var_2_593 = extractelement <2 x i32> %.cast14, i32 0
store i32 %var_2_593, i32* %var_2_409, align 1
%var_2_594 = extractelement <2 x i32> %.cast14, i32 1
store i32 %var_2_594, i32* %var_2_412, align 1
store i32 0, i32* %var_2_414, align 1
store i32 0, i32* %var_2_417, align 1
%var_2_595 = add i64 %var_2_525, 1426
%var_2_596 = add i64 %var_2_525, 44
%var_2_597 = load i64, i64* %var_2_6, align 8
%var_2_598 = add i64 %var_2_597, -8
%var_2_599 = inttoptr i64 %var_2_598 to i64*
store i64 %var_2_596, i64* %var_2_599, align 8
; Matched:\<badref\>:  store i64 %var_2_1212, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_598, i64* %var_2_6, align 8
store i64 %var_2_595, i64* %var_2_3, align 8
%call2_400a05 = tail call %struct.Memory* @sub_400f70.trace_line(%struct.State* nonnull %0, i64 %var_2_595, %struct.Memory* %MEMORY.2)
%var_2_600 = load i64, i64* %var_2_3, align 8
  store i64 6, i64* %RDI.i682, align 8
%var_2_601 = add i64 %var_2_600, add (i64 ptrtoint (%G_0xc49__rip__type* @G_0xc49__rip_ to i64), i64 5)
%var_2_602 = add i64 %var_2_600, 13
store i64 %var_2_602, i64* %var_2_3, align 8
%var_2_603 = inttoptr i64 %var_2_601 to i64*
%var_2_604 = load i64, i64* %var_2_603, align 8
store i64 %var_2_604, i64* %var_2_44, align 1
; Matched:%var_2_194:  %var_2_194 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 520) to i64*), align 8
; %var_2_605 = load i64, i64* bitcast (%G_0x602348_type* @G_0x602348 to i64*), align 8
; Matched:%var_2_195:  %var_2_195 = load i64, i64* %RBP, align 8
; %var_2_606 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_196:  %var_2_196 = add i64 %var_2_195, -48
; %var_2_607 = add i64 %var_2_606, -48
; Matched:%var_2_197:  %var_2_197 = add i64 %var_2_192, 27
; %var_2_608 = add i64 %var_2_600, 27
; Matched:\<badref\>:  store i64 %var_2_197, i64* %PC, align 8
; store i64 %var_2_608, i64* %var_2_3, align 8
; Matched:%var_2_198:  %var_2_198 = inttoptr i64 %var_2_196 to i64*
; %var_2_609 = inttoptr i64 %var_2_607 to i64*
; Matched:\<badref\>:  store i64 %var_2_194, i64* %var_2_198, align 8
; store i64 %var_2_605, i64* %var_2_609, align 8
; Matched:%var_2_199:  %var_2_199 = load i64, i64* %PC, align 8
; %var_2_610 = load i64, i64* %var_2_3, align 8
%var_2_611 = load double, double* bitcast (%G_0x602198_type* @G_0x602198 to double*), align 8
; Matched:%var_2_201:  %var_2_201 = load double, double* %var_2_1001, align 1
; %var_2_612 = load double, double* %var_2_374, align 1
; Matched:%var_2_202:  %var_2_202 = fdiv double %var_2_200, %var_2_201
; %var_2_613 = fdiv double %var_2_611, %var_2_612
; Matched:\<badref\>:  store double %var_2_202, double* %var_2_1002, align 1, !tbaa !1284
; store double %var_2_613, double* %var_2_375, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_50, align 1, !tbaa !1284
; store i64 0, i64* %var_2_53, align 1
%.cast16 = bitcast double %var_2_613 to <2 x i32>
%var_2_614 = extractelement <2 x i32> %.cast16, i32 0
; Matched:\<badref\>:  store i32 %var_2_203, i32* %var_2_1033, align 1, !tbaa !1286
; store i32 %var_2_614, i32* %var_2_409, align 1
%var_2_615 = extractelement <2 x i32> %.cast16, i32 1
; Matched:\<badref\>:  store i32 %var_2_204, i32* %var_2_1036, align 1, !tbaa !1286
; store i32 %var_2_615, i32* %var_2_412, align 1
store i32 0, i32* %var_2_414, align 1
store i32 0, i32* %var_2_417, align 1
; Matched:%var_2_205:  %var_2_205 = load i64, i64* %RBP, align 8
; %var_2_616 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_206:  %var_2_206 = add i64 %var_2_205, -76
; %var_2_617 = add i64 %var_2_616, -76
; Matched:%var_2_207:  %var_2_207 = load i32, i32* %EAX, align 4
; %var_2_618 = load i32, i32* %EAX.i753, align 4
; Matched:%var_2_208:  %var_2_208 = add i64 %var_2_199, 19
; %var_2_619 = add i64 %var_2_610, 19
; Matched:\<badref\>:  store i64 %var_2_208, i64* %PC, align 8
; store i64 %var_2_619, i64* %var_2_3, align 8
; Matched:%var_2_209:  %var_2_209 = inttoptr i64 %var_2_206 to i32*
; %var_2_620 = inttoptr i64 %var_2_617 to i32*
; Matched:\<badref\>:  store i32 %var_2_207, i32* %var_2_209, align 4
; store i32 %var_2_618, i32* %var_2_620, align 4
%var_2_621 = load i64, i64* %var_2_3, align 8
%var_2_622 = add i64 %var_2_621, 1336
; Matched:%var_2_1558:  %var_2_1558 = add i64 %var_2_1556, 5
; %var_2_623 = add i64 %var_2_621, 5
%var_2_624 = load i64, i64* %var_2_6, align 8
%var_2_625 = add i64 %var_2_624, -8
; Matched:%var_2_1561:  %var_2_1561 = inttoptr i64 %var_2_1560 to i64*
; %var_2_626 = inttoptr i64 %var_2_625 to i64*
; Matched:\<badref\>:  store i64 %var_2_1558, i64* %var_2_1561, align 8
; store i64 %var_2_623, i64* %var_2_626, align 8
; Matched:\<badref\>:  store i64 %var_2_1331, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_625, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_211, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_622, i64* %var_2_3, align 8
%call2_400a38 = tail call %struct.Memory* @sub_400f70.trace_line(%struct.State* nonnull %0, i64 %var_2_622, %struct.Memory* %MEMORY.2)
%var_2_627 = load i64, i64* %var_2_3, align 8
%var_2_628 = add i64 %var_2_627, ptrtoint (%G_0xc03__rip__type* @G_0xc03__rip_ to i64)
%var_2_629 = add i64 %var_2_627, 8
store i64 %var_2_629, i64* %var_2_3, align 8
%var_2_630 = inttoptr i64 %var_2_628 to i64*
%var_2_631 = load i64, i64* %var_2_630, align 8
store i64 %var_2_631, i64* %var_2_44, align 1
store double 0.000000e+00, double* %var_2_46, align 1
%var_2_632 = add i64 %var_2_627, add (i64 ptrtoint (%G_0xc03__rip__type* @G_0xc03__rip_ to i64), i64 8)
; Matched:%var_2_1531:  %var_2_1531 = add i64 %var_2_1527, 16
; %var_2_633 = add i64 %var_2_627, 16
; Matched:\<badref\>:  store i64 %var_2_1531, i64* %PC, align 8
; store i64 %var_2_633, i64* %var_2_3, align 8
%var_2_634 = inttoptr i64 %var_2_632 to i64*
%var_2_635 = load i64, i64* %var_2_634, align 8
store i64 %var_2_635, i64* %var_2_52, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_51, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_54, align 1
%var_2_636 = add i64 %var_2_627, add (i64 ptrtoint (%G_0xc03__rip__type* @G_0xc03__rip_ to i64), i64 16)
; Matched:%var_2_1485:  %var_2_1485 = add i64 %var_2_1482, 24
; %var_2_637 = add i64 %var_2_627, 24
; Matched:\<badref\>:  store i64 %var_2_1485, i64* %PC, align 8
; store i64 %var_2_637, i64* %var_2_3, align 8
%var_2_638 = inttoptr i64 %var_2_636 to i64*
%var_2_639 = load i64, i64* %var_2_638, align 8
store i64 %var_2_639, i64* %var_2_59, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_55, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_61, align 1
; Matched:%var_2_221:  %var_2_221 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 520) to i64*), align 8
; %var_2_640 = load i64, i64* bitcast (%G_0x602348_type* @G_0x602348 to i64*), align 8
; Matched:%var_2_222:  %var_2_222 = load i64, i64* %RBP, align 8
; %var_2_641 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_223:  %var_2_223 = add i64 %var_2_222, -40
; %var_2_642 = add i64 %var_2_641, -40
; Matched:%var_2_224:  %var_2_224 = add i64 %var_2_217, 38
; %var_2_643 = add i64 %var_2_627, 38
; Matched:\<badref\>:  store i64 %var_2_224, i64* %PC, align 8
; store i64 %var_2_643, i64* %var_2_3, align 8
; Matched:%var_2_225:  %var_2_225 = inttoptr i64 %var_2_223 to i64*
; %var_2_644 = inttoptr i64 %var_2_642 to i64*
; Matched:\<badref\>:  store i64 %var_2_221, i64* %var_2_225, align 8
; store i64 %var_2_640, i64* %var_2_644, align 8
; Matched:%var_2_226:  %var_2_226 = load i64, i64* %PC, align 8
; %var_2_645 = load i64, i64* %var_2_3, align 8
%var_2_646 = load double, double* bitcast (%G_0x602360_type* @G_0x602360 to double*), align 8
%var_2_647 = load double, double* bitcast (%G_0x602350_type* @G_0x602350 to double*), align 8
%var_2_648 = fsub double %var_2_646, %var_2_647
store double %var_2_648, double* bitcast (%G_0x602378_type* @G_0x602378 to double*), align 8
%var_2_649 = load double, double* bitcast (%G_0x602368_type* @G_0x602368 to double*), align 8
; Matched:%var_2_232:  %var_2_232 = fmul double %var_2_230, %var_2_231
; %var_2_650 = fmul double %var_2_646, %var_2_649
; Matched:\<badref\>:  store double %var_2_232, double* %var_2_1003, align 1, !tbaa !1284
; store double %var_2_650, double* %var_2_376, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_58, align 1, !tbaa !1284
; store i64 0, i64* %var_2_68, align 1
%var_2_651 = load i64, i64* bitcast (%G_0x602358_type* @G_0x602358 to i64*), align 8
store i64 %var_2_651, i64* %var_2_75, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_63, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_77, align 1
; Matched:%var_2_234:  %var_2_234 = load i64, i64* %RBP, align 8
; %var_2_652 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_235:  %var_2_235 = add i64 %var_2_234, -88
; %var_2_653 = add i64 %var_2_652, -88
; Matched:%var_2_236:  %var_2_236 = add i64 %var_2_226, 59
; %var_2_654 = add i64 %var_2_645, 59
; Matched:\<badref\>:  store i64 %var_2_236, i64* %PC, align 8
; store i64 %var_2_654, i64* %var_2_3, align 8
; Matched:%var_2_237:  %var_2_237 = load i64, i64* %var_2_45, align 1
; %var_2_655 = load i64, i64* %var_2_44, align 1
; Matched:%var_2_238:  %var_2_238 = inttoptr i64 %var_2_235 to i64*
; %var_2_656 = inttoptr i64 %var_2_653 to i64*
; Matched:\<badref\>:  store i64 %var_2_237, i64* %var_2_238, align 8
; store i64 %var_2_655, i64* %var_2_656, align 8
; Matched:%var_2_1365:  %var_2_1365 = load i64, i64* %PC, align 8
; %var_2_657 = load i64, i64* %var_2_3, align 8
%var_2_658 = load <2 x i32>, <2 x i32>* %var_2_462, align 1
%var_2_659 = load <2 x i32>, <2 x i32>* %var_2_463, align 1
%var_2_660 = extractelement <2 x i32> %var_2_658, i32 0
; Matched:\<badref\>:  store i32 %var_2_242, i32* %var_2_1033, align 1, !tbaa !1286
; store i32 %var_2_660, i32* %var_2_409, align 1
%var_2_661 = extractelement <2 x i32> %var_2_658, i32 1
; Matched:\<badref\>:  store i32 %var_2_243, i32* %var_2_1036, align 1, !tbaa !1286
; store i32 %var_2_661, i32* %var_2_412, align 1
%var_2_662 = extractelement <2 x i32> %var_2_659, i32 0
; Matched:\<badref\>:  store i32 %var_2_244, i32* %var_2_1038, align 1, !tbaa !1286
; store i32 %var_2_662, i32* %var_2_414, align 1
%var_2_663 = extractelement <2 x i32> %var_2_659, i32 1
; Matched:\<badref\>:  store i32 %var_2_245, i32* %var_2_1041, align 1, !tbaa !1286
; store i32 %var_2_663, i32* %var_2_417, align 1
; Matched:%var_2_246:  %var_2_246 = load i64, i64* %RBP, align 8
; %var_2_664 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_247:  %var_2_247 = add i64 %var_2_246, -92
; %var_2_665 = add i64 %var_2_664, -92
; Matched:%var_2_248:  %var_2_248 = load i32, i32* %EAX, align 4
; %var_2_666 = load i32, i32* %EAX.i753, align 4
; Matched:%var_2_1380:  %var_2_1380 = add i64 %var_2_1379, 6
; %var_2_667 = add i64 %var_2_657, 6
; Matched:\<badref\>:  store i64 %var_2_249, i64* %PC, align 8
; store i64 %var_2_667, i64* %var_2_3, align 8
; Matched:%var_2_250:  %var_2_250 = inttoptr i64 %var_2_247 to i32*
; %var_2_668 = inttoptr i64 %var_2_665 to i32*
; Matched:\<badref\>:  store i32 %var_2_248, i32* %var_2_250, align 4
; store i32 %var_2_666, i32* %var_2_668, align 4
; Matched:%var_2_251:  %var_2_251 = load i64, i64* %RBP, align 8
; %var_2_669 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_252:  %var_2_252 = add i64 %var_2_251, -104
; %var_2_670 = add i64 %var_2_669, -104
; Matched:%var_2_1565:  %var_2_1565 = load i64, i64* %PC, align 8
; %var_2_671 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_254:  %var_2_254 = add i64 %var_2_253, 5
; %var_2_672 = add i64 %var_2_671, 5
; Matched:\<badref\>:  store i64 %var_2_260, i64* %PC, align 8
; store i64 %var_2_672, i64* %var_2_3, align 8
; Matched:%var_2_255:  %var_2_255 = load i64, i64* %var_2_57, align 1
; %var_2_673 = load i64, i64* %var_2_67, align 1
; Matched:%var_2_256:  %var_2_256 = inttoptr i64 %var_2_252 to i64*
; %var_2_674 = inttoptr i64 %var_2_670 to i64*
; Matched:\<badref\>:  store i64 %var_2_255, i64* %var_2_256, align 8
; store i64 %var_2_673, i64* %var_2_674, align 8
; Matched:%var_2_257:  %var_2_257 = load i64, i64* %RBP, align 8
; %var_2_675 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_258:  %var_2_258 = add i64 %var_2_257, -112
; %var_2_676 = add i64 %var_2_675, -112
; Matched:%var_2_259:  %var_2_259 = load i64, i64* %PC, align 8
; %var_2_677 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1568:  %var_2_1568 = add i64 %var_2_1565, 5
; %var_2_678 = add i64 %var_2_677, 5
; Matched:\<badref\>:  store i64 %var_2_1568, i64* %PC, align 8
; store i64 %var_2_678, i64* %var_2_3, align 8
; Matched:%var_2_261:  %var_2_261 = load i64, i64* %var_2_49, align 1
; %var_2_679 = load i64, i64* %var_2_52, align 1
; Matched:%var_2_262:  %var_2_262 = inttoptr i64 %var_2_258 to i64*
; %var_2_680 = inttoptr i64 %var_2_676 to i64*
; Matched:\<badref\>:  store i64 %var_2_261, i64* %var_2_262, align 8
; store i64 %var_2_679, i64* %var_2_680, align 8
; Matched:%var_2_263:  %var_2_263 = load i64, i64* %RBP, align 8
; %var_2_681 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_264:  %var_2_264 = add i64 %var_2_263, -120
; %var_2_682 = add i64 %var_2_681, -120
; Matched:%var_2_253:  %var_2_253 = load i64, i64* %PC, align 8
; %var_2_683 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_260:  %var_2_260 = add i64 %var_2_259, 5
; %var_2_684 = add i64 %var_2_683, 5
; Matched:\<badref\>:  store i64 %var_2_254, i64* %PC, align 8
; store i64 %var_2_684, i64* %var_2_3, align 8
; Matched:%var_2_267:  %var_2_267 = load i64, i64* %var_2_53, align 1
; %var_2_685 = load i64, i64* %var_2_59, align 1
; Matched:%var_2_268:  %var_2_268 = inttoptr i64 %var_2_264 to i64*
; %var_2_686 = inttoptr i64 %var_2_682 to i64*
; Matched:\<badref\>:  store i64 %var_2_267, i64* %var_2_268, align 8
; store i64 %var_2_685, i64* %var_2_686, align 8
%var_2_687 = load i64, i64* %var_2_3, align 8
%var_2_688 = add i64 %var_2_687, -1171
; Matched:%var_2_212:  %var_2_212 = add i64 %var_2_210, 5
; %var_2_689 = add i64 %var_2_687, 5
%var_2_690 = load i64, i64* %var_2_6, align 8
%var_2_691 = add i64 %var_2_690, -8
; Matched:%var_2_274:  %var_2_274 = inttoptr i64 %var_2_273 to i64*
; %var_2_692 = inttoptr i64 %var_2_691 to i64*
; Matched:\<badref\>:  store i64 %var_2_212, i64* %var_2_215, align 8
; store i64 %var_2_689, i64* %var_2_692, align 8
; Matched:\<badref\>:  store i64 %var_2_1007, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_691, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_270, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_688, i64* %var_2_3, align 8
%call2_400ab3 = tail call %struct.Memory* @ext_sin(%struct.State* nonnull %0, i64 %var_2_688, %struct.Memory* %MEMORY.2)
%var_2_693 = load i64, i64* %var_2_3, align 8
%var_2_694 = load double, double* %var_2_374, align 1
%var_2_695 = load double, double* bitcast (%G_0x602350_type* @G_0x602350 to double*), align 8
%var_2_696 = fmul double %var_2_694, %var_2_695
store double %var_2_696, double* %var_2_374, align 1
%var_2_697 = load i64, i64* %RBP.i, align 8
%var_2_698 = add i64 %var_2_697, -104
%var_2_699 = add i64 %var_2_693, 14
store i64 %var_2_699, i64* %var_2_3, align 8
%var_2_700 = inttoptr i64 %var_2_698 to double*
%var_2_701 = load double, double* %var_2_700, align 8
%var_2_702 = fdiv double %var_2_701, %var_2_696
store double %var_2_702, double* %var_2_375, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_50, align 1, !tbaa !1284
; store i64 0, i64* %var_2_53, align 1
%var_2_703 = add i64 %var_2_697, -120
%var_2_704 = add i64 %var_2_693, 23
store i64 %var_2_704, i64* %var_2_3, align 8
%var_2_705 = inttoptr i64 %var_2_703 to double*
%var_2_706 = load double, double* %var_2_705, align 8
%var_2_707 = fsub double %var_2_706, %var_2_702
store double %var_2_707, double* %var_2_374, align 1
store i64 0, i64* %var_2_45, align 1
store double %var_2_707, double* bitcast (%G_0x602380_type* @G_0x602380 to double*), align 8
; Matched:%var_2_291:  %var_2_291 = add i64 %var_2_280, -40
; %var_2_708 = add i64 %var_2_697, -40
%var_2_709 = add i64 %var_2_693, 41
store i64 %var_2_709, i64* %var_2_3, align 8
; Matched:%var_2_293:  %var_2_293 = inttoptr i64 %var_2_291 to i64*
; %var_2_710 = inttoptr i64 %var_2_708 to i64*
; Matched:%var_2_294:  %var_2_294 = load i64, i64* %var_2_293, align 8
; %var_2_711 = load i64, i64* %var_2_710, align 8
; Matched:\<badref\>:  store i64 %var_2_294, i64* %var_2_45, align 1, !tbaa !1284
; store i64 %var_2_711, i64* %var_2_44, align 1
store double 0.000000e+00, double* %var_2_46, align 1
; Matched:%var_2_295:  %var_2_295 = add i64 %var_2_280, -48
; %var_2_712 = add i64 %var_2_697, -48
; Matched:%var_2_954:  %var_2_954 = add i64 %var_2_901, 46
; %var_2_713 = add i64 %var_2_693, 46
; Matched:\<badref\>:  store i64 %var_2_954, i64* %PC, align 8
; store i64 %var_2_713, i64* %var_2_3, align 8
; Matched:%var_2_297:  %var_2_297 = bitcast i64 %var_2_294 to double
; %var_2_714 = bitcast i64 %var_2_711 to double
; Matched:%var_2_298:  %var_2_298 = inttoptr i64 %var_2_295 to double*
; %var_2_715 = inttoptr i64 %var_2_712 to double*
; Matched:%var_2_299:  %var_2_299 = load double, double* %var_2_298, align 8
; %var_2_716 = load double, double* %var_2_715, align 8
; Matched:%var_2_300:  %var_2_300 = fsub double %var_2_297, %var_2_299
; %var_2_717 = fsub double %var_2_714, %var_2_716
; Matched:\<badref\>:  store double %var_2_300, double* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 584) to double*), align 8
; store double %var_2_717, double* bitcast (%G_0x602388_type* @G_0x602388 to double*), align 8
%var_2_718 = load i64, i64* bitcast (%G_0x602358_type* @G_0x602358 to i64*), align 8
store i64 %var_2_718, i64* %var_2_44, align 1
store double 0.000000e+00, double* %var_2_46, align 1
%var_2_719 = add i64 %var_2_693, -1176
%var_2_720 = add i64 %var_2_693, 69
%var_2_721 = load i64, i64* %var_2_6, align 8
%var_2_722 = add i64 %var_2_721, -8
%var_2_723 = inttoptr i64 %var_2_722 to i64*
store i64 %var_2_720, i64* %var_2_723, align 8
; Matched:\<badref\>:  store i64 %var_2_1022, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_722, i64* %var_2_6, align 8
store i64 %var_2_719, i64* %var_2_3, align 8
%call2_400af8 = tail call %struct.Memory* @ext_sin(%struct.State* nonnull %0, i64 %var_2_719, %struct.Memory* %call2_400ab3)
%var_2_724 = load i64, i64* %var_2_3, align 8
%var_2_725 = load i64, i64* %var_2_44, align 1
store i64 %var_2_725, i64* bitcast (%G_0x602390_type* @G_0x602390 to i64*), align 8
%.cast24 = bitcast i64 %var_2_725 to double
%var_2_726 = fmul double %.cast24, %.cast24
store double %var_2_726, double* %var_2_374, align 1
store i64 0, i64* %var_2_45, align 1
%var_2_727 = load i64, i64* %RBP.i, align 8
%var_2_728 = add i64 %var_2_727, -112
%var_2_729 = add i64 %var_2_724, 32
store i64 %var_2_729, i64* %var_2_3, align 8
%var_2_730 = inttoptr i64 %var_2_728 to double*
%var_2_731 = load double, double* %var_2_730, align 8
%var_2_732 = fdiv double %var_2_731, %var_2_726
store double %var_2_732, double* %var_2_375, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_50, align 1, !tbaa !1284
; store i64 0, i64* %var_2_53, align 1
store double %var_2_732, double* bitcast (%G_0x602390_type* @G_0x602390 to double*), align 8
%var_2_733 = add i64 %var_2_727, -88
; Matched:%var_2_958:  %var_2_958 = add i64 %var_2_901, 50
; %var_2_734 = add i64 %var_2_724, 50
; Matched:\<badref\>:  store i64 %var_2_958, i64* %PC, align 8
; store i64 %var_2_734, i64* %var_2_3, align 8
%var_2_735 = inttoptr i64 %var_2_733 to i64*
%var_2_736 = load i64, i64* %var_2_735, align 8
; Matched:\<badref\>:  store i64 %var_2_317, i64* %var_2_45, align 1, !tbaa !1284
; store i64 %var_2_736, i64* %var_2_44, align 1
store double 0.000000e+00, double* %var_2_46, align 1
store i64 %var_2_736, i64* bitcast (%G_0x602398_type* @G_0x602398 to i64*), align 8
store double %var_2_732, double* %var_2_464, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_51, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_54, align 1
store double %var_2_732, double* bitcast (%G_0x6023a0_type* @G_0x6023a0 to double*), align 8
%var_2_737 = load i32, i32* bitcast (%G_0x602650_type* @G_0x602650 to i32*), align 8
%var_2_738 = add i32 %var_2_737, 1
%var_2_739 = zext i32 %var_2_738 to i64
store i64 %var_2_739, i64* %RAX.i758, align 8
%var_2_740 = icmp eq i32 %var_2_737, -1
%var_2_741 = icmp eq i32 %var_2_738, 0
%var_2_742 = or i1 %var_2_740, %var_2_741
%var_2_743 = zext i1 %var_2_742 to i8
store i8 %var_2_743, i8* %var_2_14, align 1
%var_2_744 = and i32 %var_2_738, 255
%var_2_745 = tail call i32 @llvm.ctpop.i32(i32 %var_2_744)
%var_2_746 = trunc i32 %var_2_745 to i8
%var_2_747 = and i8 %var_2_746, 1
%var_2_748 = xor i8 %var_2_747, 1
store i8 %var_2_748, i8* %var_2_21, align 1
%var_2_749 = xor i32 %var_2_738, %var_2_737
%var_2_750 = lshr i32 %var_2_749, 4
%var_2_751 = trunc i32 %var_2_750 to i8
%var_2_752 = and i8 %var_2_751, 1
store i8 %var_2_752, i8* %var_2_26, align 1
%var_2_753 = zext i1 %var_2_741 to i8
store i8 %var_2_753, i8* %var_2_29, align 1
%var_2_754 = lshr i32 %var_2_738, 31
%var_2_755 = trunc i32 %var_2_754 to i8
store i8 %var_2_755, i8* %var_2_32, align 1
%var_2_756 = lshr i32 %var_2_737, 31
%var_2_757 = xor i32 %var_2_754, %var_2_756
%var_2_758 = add nuw nsw i32 %var_2_757, %var_2_754
%var_2_759 = icmp eq i32 %var_2_758, 2
%var_2_760 = zext i1 %var_2_759 to i8
store i8 %var_2_760, i8* %var_2_38, align 1
store i32 %var_2_738, i32* bitcast (%G_0x602650_type* @G_0x602650 to i32*), align 8
%var_2_761 = add i64 %var_2_724, -468
store i64 %var_2_761, i64* %var_2_3, align 8
  br label %block_.L_400929

block_.L_400b60:                                  ; preds = %block_.L_400929
  store i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64* %RDI.i682, align 8
  store i64 ptrtoint (%G__0x40178f_type* @G__0x40178f to i64), i64* %RSI.i333, align 8
  %RDX.i425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  store i64 ptrtoint (%G__0x4017a7_type* @G__0x4017a7 to i64), i64* %RDX.i425, align 8
%var_2_762 = load i64, i64* bitcast (%G_0x602350_type* @G_0x602350 to i64*), align 8
store i64 %var_2_762, i64* %var_2_44, align 1
store double 0.000000e+00, double* %var_2_46, align 1
%var_2_763 = load i64, i64* bitcast (%G_0x602358_type* @G_0x602358 to i64*), align 8
store i64 %var_2_763, i64* %var_2_52, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_51, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_54, align 1
  store i8 2, i8* %AL.i680, align 1
%var_2_764 = add i64 %var_2_495, -1312
%var_2_765 = add i64 %var_2_495, 55
%var_2_766 = load i64, i64* %var_2_6, align 8
%var_2_767 = add i64 %var_2_766, -8
%var_2_768 = inttoptr i64 %var_2_767 to i64*
store i64 %var_2_765, i64* %var_2_768, align 8
; Matched:\<badref\>:  store i64 %var_2_1051, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_767, i64* %var_2_6, align 8
store i64 %var_2_764, i64* %var_2_3, align 8
%var_2_769 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %MEMORY.2)
; Matched:%var_2_1215:  %var_2_1215 = load i64, i64* %PC, align 8
; %var_2_770 = load i64, i64* %var_2_3, align 8
  store i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 80), i64* %RDX.i425, align 8
store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 80), i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 80), i64 80)) to i8), i8* %var_2_14, align 1
%var_2_771 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 80) to i32), i32 255))
%var_2_772 = trunc i32 %var_2_771 to i8
%var_2_773 = and i8 %var_2_772, 1
%var_2_774 = xor i8 %var_2_773, 1
store i8 %var_2_774, i8* %var_2_21, align 1
store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 80), i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 80)), i64 4) to i8), i8 1), i8* %var_2_26, align 1
store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 80), i64 0) to i8), i8* %var_2_29, align 1
store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 80), i64 63) to i8), i8* %var_2_32, align 1
store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 80), i64 63), i64 lshr (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 80), i64 63)), i64 2) to i8), i8* %var_2_38, align 1
  store i64 ptrtoint (%G__0x40178f_type* @G__0x40178f to i64), i64* %RSI.i333, align 8
%var_2_775 = load i64, i64* bitcast (%G_0x602360_type* @G_0x602360 to i64*), align 8
store i64 %var_2_775, i64* %var_2_44, align 1
store double 0.000000e+00, double* %var_2_46, align 1
%var_2_776 = load i64, i64* bitcast (%G_0x602368_type* @G_0x602368 to i64*), align 8
store i64 %var_2_776, i64* %var_2_52, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_51, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_54, align 1
; Matched:%var_2_1222:  %var_2_1222 = load i64, i64* %RBP, align 8
; %var_2_777 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1223:  %var_2_1223 = add i64 %var_2_1222, -128
; %var_2_778 = add i64 %var_2_777, -128
; Matched:%var_2_1224:  %var_2_1224 = add i64 %var_2_1215, 56
; %var_2_779 = add i64 %var_2_770, 56
; Matched:\<badref\>:  store i64 %var_2_1224, i64* %PC, align 8
; store i64 %var_2_779, i64* %var_2_3, align 8
; Matched:%var_2_1225:  %var_2_1225 = inttoptr i64 %var_2_1223 to i64*
; %var_2_780 = inttoptr i64 %var_2_778 to i64*
; Matched:\<badref\>:  store i64 add (i64 ptrtoint (%seg_4015f0__rodata_type* @seg_4015f0__rodata to i64), i64 452), i64* %var_2_1225, align 8
; store i64 ptrtoint (%G__0x4017b4_type* @G__0x4017b4 to i64), i64* %var_2_780, align 8
; Matched:%var_2_1226:  %var_2_1226 = load i64, i64* %RDX, align 8
; %var_2_781 = load i64, i64* %RDX.i425, align 8
%var_2_782 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_1226, i64* %RDI, align 8, !tbaa !1261
; store i64 %var_2_781, i64* %RDI.i682, align 8
; Matched:%var_2_1228:  %var_2_1228 = load i64, i64* %RBP, align 8
; %var_2_783 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1229:  %var_2_1229 = add i64 %var_2_1228, -128
; %var_2_784 = add i64 %var_2_783, -128
; Matched:%var_2_1355:  %var_2_1355 = add i64 %var_2_1354, 7
; %var_2_785 = add i64 %var_2_782, 7
; Matched:\<badref\>:  store i64 %var_2_1360, i64* %PC, align 8
; store i64 %var_2_785, i64* %var_2_3, align 8
; Matched:%var_2_1231:  %var_2_1231 = inttoptr i64 %var_2_1229 to i64*
; %var_2_786 = inttoptr i64 %var_2_784 to i64*
; Matched:%var_2_1232:  %var_2_1232 = load i64, i64* %var_2_1231, align 8
; %var_2_787 = load i64, i64* %var_2_786, align 8
; Matched:\<badref\>:  store i64 %var_2_1232, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_787, i64* %RDX.i425, align 8
; Matched:%var_2_1233:  %var_2_1233 = add i64 %var_2_1228, -132
; %var_2_788 = add i64 %var_2_783, -132
; Matched:%var_2_1234:  %var_2_1234 = load i32, i32* %EAX, align 4
; %var_2_789 = load i32, i32* %EAX.i753, align 4
%var_2_790 = add i64 %var_2_782, 13
store i64 %var_2_790, i64* %var_2_3, align 8
; Matched:%var_2_1236:  %var_2_1236 = inttoptr i64 %var_2_1233 to i32*
; %var_2_791 = inttoptr i64 %var_2_788 to i32*
; Matched:\<badref\>:  store i32 %var_2_1234, i32* %var_2_1236, align 4
; store i32 %var_2_789, i32* %var_2_791, align 4
; Matched:%var_2_1060:  %var_2_1060 = load i64, i64* %PC, align 8
; %var_2_792 = load i64, i64* %var_2_3, align 8
  store i8 2, i8* %AL.i680, align 1
; Matched:%var_2_1238:  %var_2_1238 = add i64 %var_2_1237, -1436
; %var_2_793 = add i64 %var_2_792, -1436
; Matched:%var_2_1329:  %var_2_1329 = add i64 %var_2_1327, 7
; %var_2_794 = add i64 %var_2_792, 7
%var_2_795 = load i64, i64* %var_2_6, align 8
%var_2_796 = add i64 %var_2_795, -8
; Matched:%var_2_1332:  %var_2_1332 = inttoptr i64 %var_2_1331 to i64*
; %var_2_797 = inttoptr i64 %var_2_796 to i64*
; Matched:\<badref\>:  store i64 %var_2_1311, i64* %var_2_1314, align 8
; store i64 %var_2_794, i64* %var_2_797, align 8
; Matched:\<badref\>:  store i64 %var_2_1241, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_796, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1238, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_793, i64* %var_2_3, align 8
%var_2_798 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %var_2_769)
; Matched:%var_2_1262:  %var_2_1262 = load i64, i64* %PC, align 8
; %var_2_799 = load i64, i64* %var_2_3, align 8
  store i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 160), i64* %RDX.i425, align 8
store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 160), i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 160), i64 160)) to i8), i8* %var_2_14, align 1
%var_2_800 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 160) to i32), i32 255))
%var_2_801 = trunc i32 %var_2_800 to i8
%var_2_802 = and i8 %var_2_801, 1
%var_2_803 = xor i8 %var_2_802, 1
store i8 %var_2_803, i8* %var_2_21, align 1
store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 160), i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 160)), i64 4) to i8), i8 1), i8* %var_2_26, align 1
store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 160), i64 0) to i8), i8* %var_2_29, align 1
store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 160), i64 63) to i8), i8* %var_2_32, align 1
store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 160), i64 63), i64 lshr (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 160), i64 63)), i64 2) to i8), i8* %var_2_38, align 1
  store i64 ptrtoint (%G__0x4017c1_type* @G__0x4017c1 to i64), i64* %RSI.i333, align 8
%var_2_804 = load i64, i64* bitcast (%G_0x602378_type* @G_0x602378 to i64*), align 8
store i64 %var_2_804, i64* %var_2_44, align 1
store double 0.000000e+00, double* %var_2_46, align 1
  store i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 160), i64* %RDI.i682, align 8
; Matched:%var_2_1250:  %var_2_1250 = load i64, i64* %RBP, align 8
; %var_2_805 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1251:  %var_2_1251 = add i64 %var_2_1250, -136
; %var_2_806 = add i64 %var_2_805, -136
; Matched:%var_2_1252:  %var_2_1252 = load i32, i32* %EAX, align 4
; %var_2_807 = load i32, i32* %EAX.i753, align 4
; Matched:%var_2_1325:  %var_2_1325 = add i64 %var_2_1316, 45
; %var_2_808 = add i64 %var_2_799, 45
; Matched:\<badref\>:  store i64 %var_2_1325, i64* %PC, align 8
; store i64 %var_2_808, i64* %var_2_3, align 8
; Matched:%var_2_1254:  %var_2_1254 = inttoptr i64 %var_2_1251 to i32*
; %var_2_809 = inttoptr i64 %var_2_806 to i32*
; Matched:\<badref\>:  store i32 %var_2_1252, i32* %var_2_1254, align 4
; store i32 %var_2_807, i32* %var_2_809, align 4
; Matched:%var_2_1018:  %var_2_1018 = load i64, i64* %PC, align 8
; %var_2_810 = load i64, i64* %var_2_3, align 8
  store i8 1, i8* %AL.i680, align 1
; Matched:%var_2_1256:  %var_2_1256 = add i64 %var_2_1255, -1488
; %var_2_811 = add i64 %var_2_810, -1488
; Matched:%var_2_1522:  %var_2_1522 = add i64 %var_2_1520, 7
; %var_2_812 = add i64 %var_2_810, 7
%var_2_813 = load i64, i64* %var_2_6, align 8
%var_2_814 = add i64 %var_2_813, -8
; Matched:%var_2_1065:  %var_2_1065 = inttoptr i64 %var_2_1064 to i64*
; %var_2_815 = inttoptr i64 %var_2_814 to i64*
; Matched:\<badref\>:  store i64 %var_2_1062, i64* %var_2_1065, align 8
; store i64 %var_2_812, i64* %var_2_815, align 8
; Matched:\<badref\>:  store i64 %var_2_898, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_814, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1256, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_811, i64* %var_2_3, align 8
%var_2_816 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %var_2_798)
; Matched:%var_2_1280:  %var_2_1280 = load i64, i64* %PC, align 8
; %var_2_817 = load i64, i64* %var_2_3, align 8
  store i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 240), i64* %RDX.i425, align 8
store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 240), i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 240), i64 240)) to i8), i8* %var_2_14, align 1
%var_2_818 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 240) to i32), i32 255))
%var_2_819 = trunc i32 %var_2_818 to i8
%var_2_820 = and i8 %var_2_819, 1
%var_2_821 = xor i8 %var_2_820, 1
store i8 %var_2_821, i8* %var_2_21, align 1
store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 240), i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 240)), i64 4) to i8), i8 1), i8* %var_2_26, align 1
store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 240), i64 0) to i8), i8* %var_2_29, align 1
store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 240), i64 63) to i8), i8* %var_2_32, align 1
store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 240), i64 63), i64 lshr (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 240), i64 63)), i64 2) to i8), i8* %var_2_38, align 1
  store i64 ptrtoint (%G__0x4017f1_type* @G__0x4017f1 to i64), i64* %RSI.i333, align 8
%var_2_822 = load i64, i64* bitcast (%G_0x602390_type* @G_0x602390 to i64*), align 8
store i64 %var_2_822, i64* %var_2_44, align 1
store double 0.000000e+00, double* %var_2_46, align 1
  store i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 240), i64* %RDI.i682, align 8
; Matched:%var_2_1268:  %var_2_1268 = load i64, i64* %RBP, align 8
; %var_2_823 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1269:  %var_2_1269 = add i64 %var_2_1268, -140
; %var_2_824 = add i64 %var_2_823, -140
; Matched:%var_2_1270:  %var_2_1270 = load i32, i32* %EAX, align 4
; %var_2_825 = load i32, i32* %EAX.i753, align 4
; Matched:%var_2_1343:  %var_2_1343 = add i64 %var_2_1334, 45
; %var_2_826 = add i64 %var_2_817, 45
; Matched:\<badref\>:  store i64 %var_2_1343, i64* %PC, align 8
; store i64 %var_2_826, i64* %var_2_3, align 8
; Matched:%var_2_1272:  %var_2_1272 = inttoptr i64 %var_2_1269 to i32*
; %var_2_827 = inttoptr i64 %var_2_824 to i32*
; Matched:\<badref\>:  store i32 %var_2_1270, i32* %var_2_1272, align 4
; store i32 %var_2_825, i32* %var_2_827, align 4
; Matched:%var_2_1475:  %var_2_1475 = load i64, i64* %PC, align 8
; %var_2_828 = load i64, i64* %var_2_3, align 8
  store i8 1, i8* %AL.i680, align 1
; Matched:%var_2_1274:  %var_2_1274 = add i64 %var_2_1273, -1540
; %var_2_829 = add i64 %var_2_828, -1540
; Matched:%var_2_1477:  %var_2_1477 = add i64 %var_2_1475, 7
; %var_2_830 = add i64 %var_2_828, 7
%var_2_831 = load i64, i64* %var_2_6, align 8
%var_2_832 = add i64 %var_2_831, -8
; Matched:%var_2_1525:  %var_2_1525 = inttoptr i64 %var_2_1524 to i64*
; %var_2_833 = inttoptr i64 %var_2_832 to i64*
; Matched:\<badref\>:  store i64 %var_2_1522, i64* %var_2_1525, align 8
; store i64 %var_2_830, i64* %var_2_833, align 8
; Matched:\<badref\>:  store i64 %var_2_1479, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_832, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1274, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_829, i64* %var_2_3, align 8
%var_2_834 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %var_2_816)
; Matched:%var_2_1298:  %var_2_1298 = load i64, i64* %PC, align 8
; %var_2_835 = load i64, i64* %var_2_3, align 8
  store i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 320), i64* %RDX.i425, align 8
store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 320), i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 320), i64 320)) to i8), i8* %var_2_14, align 1
%var_2_836 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 320) to i32), i32 255))
%var_2_837 = trunc i32 %var_2_836 to i8
%var_2_838 = and i8 %var_2_837, 1
%var_2_839 = xor i8 %var_2_838, 1
store i8 %var_2_839, i8* %var_2_21, align 1
store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 320), i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 320)), i64 4) to i8), i8 1), i8* %var_2_26, align 1
store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 320), i64 0) to i8), i8* %var_2_29, align 1
store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 320), i64 63) to i8), i8* %var_2_32, align 1
store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 320), i64 63), i64 lshr (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 320), i64 63)), i64 2) to i8), i8* %var_2_38, align 1
  store i64 ptrtoint (%G__0x401821_type* @G__0x401821 to i64), i64* %RSI.i333, align 8
%var_2_840 = load i64, i64* bitcast (%G_0x602380_type* @G_0x602380 to i64*), align 8
store i64 %var_2_840, i64* %var_2_44, align 1
store double 0.000000e+00, double* %var_2_46, align 1
  store i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 320), i64* %RDI.i682, align 8
; Matched:%var_2_1286:  %var_2_1286 = load i64, i64* %RBP, align 8
; %var_2_841 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1287:  %var_2_1287 = add i64 %var_2_1286, -144
; %var_2_842 = add i64 %var_2_841, -144
; Matched:%var_2_1288:  %var_2_1288 = load i32, i32* %EAX, align 4
; %var_2_843 = load i32, i32* %EAX.i753, align 4
; Matched:%var_2_1253:  %var_2_1253 = add i64 %var_2_1244, 45
; %var_2_844 = add i64 %var_2_835, 45
; Matched:\<badref\>:  store i64 %var_2_1253, i64* %PC, align 8
; store i64 %var_2_844, i64* %var_2_3, align 8
; Matched:%var_2_1290:  %var_2_1290 = inttoptr i64 %var_2_1287 to i32*
; %var_2_845 = inttoptr i64 %var_2_842 to i32*
; Matched:\<badref\>:  store i32 %var_2_1288, i32* %var_2_1290, align 4
; store i32 %var_2_843, i32* %var_2_845, align 4
; Matched:%var_2_1047:  %var_2_1047 = load i64, i64* %PC, align 8
; %var_2_846 = load i64, i64* %var_2_3, align 8
  store i8 1, i8* %AL.i680, align 1
; Matched:%var_2_1292:  %var_2_1292 = add i64 %var_2_1291, -1592
; %var_2_847 = add i64 %var_2_846, -1592
; Matched:%var_2_1020:  %var_2_1020 = add i64 %var_2_1018, 7
; %var_2_848 = add i64 %var_2_846, 7
%var_2_849 = load i64, i64* %var_2_6, align 8
%var_2_850 = add i64 %var_2_849, -8
; Matched:%var_2_1023:  %var_2_1023 = inttoptr i64 %var_2_1022 to i64*
; %var_2_851 = inttoptr i64 %var_2_850 to i64*
; Matched:\<badref\>:  store i64 %var_2_1020, i64* %var_2_1023, align 8
; store i64 %var_2_848, i64* %var_2_851, align 8
; Matched:\<badref\>:  store i64 %var_2_273, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_850, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1292, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_847, i64* %var_2_3, align 8
%var_2_852 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %var_2_834)
; Matched:%var_2_1316:  %var_2_1316 = load i64, i64* %PC, align 8
; %var_2_853 = load i64, i64* %var_2_3, align 8
  store i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 400), i64* %RDX.i425, align 8
store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 400), i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 400), i64 400)) to i8), i8* %var_2_14, align 1
%var_2_854 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 400) to i32), i32 255))
%var_2_855 = trunc i32 %var_2_854 to i8
%var_2_856 = and i8 %var_2_855, 1
%var_2_857 = xor i8 %var_2_856, 1
store i8 %var_2_857, i8* %var_2_21, align 1
store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 400), i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 400)), i64 4) to i8), i8 1), i8* %var_2_26, align 1
store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 400), i64 0) to i8), i8* %var_2_29, align 1
store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 400), i64 63) to i8), i8* %var_2_32, align 1
store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 400), i64 63), i64 lshr (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 400), i64 63)), i64 2) to i8), i8* %var_2_38, align 1
  store i64 ptrtoint (%G__0x4017f1_type* @G__0x4017f1 to i64), i64* %RSI.i333, align 8
%var_2_858 = load i64, i64* bitcast (%G_0x602398_type* @G_0x602398 to i64*), align 8
store i64 %var_2_858, i64* %var_2_44, align 1
store double 0.000000e+00, double* %var_2_46, align 1
  store i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 400), i64* %RDI.i682, align 8
; Matched:%var_2_1304:  %var_2_1304 = load i64, i64* %RBP, align 8
; %var_2_859 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1305:  %var_2_1305 = add i64 %var_2_1304, -148
; %var_2_860 = add i64 %var_2_859, -148
; Matched:%var_2_1306:  %var_2_1306 = load i32, i32* %EAX, align 4
; %var_2_861 = load i32, i32* %EAX.i753, align 4
; Matched:%var_2_1271:  %var_2_1271 = add i64 %var_2_1262, 45
; %var_2_862 = add i64 %var_2_853, 45
; Matched:\<badref\>:  store i64 %var_2_1271, i64* %PC, align 8
; store i64 %var_2_862, i64* %var_2_3, align 8
; Matched:%var_2_1308:  %var_2_1308 = inttoptr i64 %var_2_1305 to i32*
; %var_2_863 = inttoptr i64 %var_2_860 to i32*
; Matched:\<badref\>:  store i32 %var_2_1306, i32* %var_2_1308, align 4
; store i32 %var_2_861, i32* %var_2_863, align 4
; Matched:%var_2_1237:  %var_2_1237 = load i64, i64* %PC, align 8
; %var_2_864 = load i64, i64* %var_2_3, align 8
  store i8 1, i8* %AL.i680, align 1
; Matched:%var_2_1310:  %var_2_1310 = add i64 %var_2_1309, -1644
; %var_2_865 = add i64 %var_2_864, -1644
; Matched:%var_2_1049:  %var_2_1049 = add i64 %var_2_1047, 7
; %var_2_866 = add i64 %var_2_864, 7
%var_2_867 = load i64, i64* %var_2_6, align 8
%var_2_868 = add i64 %var_2_867, -8
; Matched:%var_2_1480:  %var_2_1480 = inttoptr i64 %var_2_1479 to i64*
; %var_2_869 = inttoptr i64 %var_2_868 to i64*
; Matched:\<badref\>:  store i64 %var_2_1477, i64* %var_2_1480, align 8
; store i64 %var_2_866, i64* %var_2_869, align 8
; Matched:\<badref\>:  store i64 %var_2_1277, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_868, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1310, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_865, i64* %var_2_3, align 8
%var_2_870 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %var_2_852)
; Matched:%var_2_1334:  %var_2_1334 = load i64, i64* %PC, align 8
; %var_2_871 = load i64, i64* %var_2_3, align 8
  store i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 480), i64* %RDX.i425, align 8
store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 480), i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 480), i64 480)) to i8), i8* %var_2_14, align 1
%var_2_872 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 480) to i32), i32 255))
%var_2_873 = trunc i32 %var_2_872 to i8
%var_2_874 = and i8 %var_2_873, 1
%var_2_875 = xor i8 %var_2_874, 1
store i8 %var_2_875, i8* %var_2_21, align 1
store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 480), i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 480)), i64 4) to i8), i8 1), i8* %var_2_26, align 1
store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 480), i64 0) to i8), i8* %var_2_29, align 1
store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 480), i64 63) to i8), i8* %var_2_32, align 1
store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 480), i64 63), i64 lshr (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 480), i64 63)), i64 2) to i8), i8* %var_2_38, align 1
  store i64 ptrtoint (%G__0x401851_type* @G__0x401851 to i64), i64* %RSI.i333, align 8
%var_2_876 = load i64, i64* bitcast (%G_0x602388_type* @G_0x602388 to i64*), align 8
store i64 %var_2_876, i64* %var_2_44, align 1
store double 0.000000e+00, double* %var_2_46, align 1
  store i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 480), i64* %RDI.i682, align 8
; Matched:%var_2_1322:  %var_2_1322 = load i64, i64* %RBP, align 8
; %var_2_877 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1323:  %var_2_1323 = add i64 %var_2_1322, -152
; %var_2_878 = add i64 %var_2_877, -152
; Matched:%var_2_1324:  %var_2_1324 = load i32, i32* %EAX, align 4
; %var_2_879 = load i32, i32* %EAX.i753, align 4
; Matched:%var_2_1289:  %var_2_1289 = add i64 %var_2_1280, 45
; %var_2_880 = add i64 %var_2_871, 45
; Matched:\<badref\>:  store i64 %var_2_1289, i64* %PC, align 8
; store i64 %var_2_880, i64* %var_2_3, align 8
; Matched:%var_2_1326:  %var_2_1326 = inttoptr i64 %var_2_1323 to i32*
; %var_2_881 = inttoptr i64 %var_2_878 to i32*
; Matched:\<badref\>:  store i32 %var_2_1324, i32* %var_2_1326, align 4
; store i32 %var_2_879, i32* %var_2_881, align 4
; Matched:%var_2_1533:  %var_2_1533 = load i64, i64* %PC, align 8
; %var_2_882 = load i64, i64* %var_2_3, align 8
  store i8 1, i8* %AL.i680, align 1
; Matched:%var_2_1328:  %var_2_1328 = add i64 %var_2_1327, -1696
; %var_2_883 = add i64 %var_2_882, -1696
; Matched:%var_2_1275:  %var_2_1275 = add i64 %var_2_1273, 7
; %var_2_884 = add i64 %var_2_882, 7
%var_2_885 = load i64, i64* %var_2_6, align 8
%var_2_886 = add i64 %var_2_885, -8
; Matched:%var_2_1260:  %var_2_1260 = inttoptr i64 %var_2_1259 to i64*
; %var_2_887 = inttoptr i64 %var_2_886 to i64*
; Matched:\<badref\>:  store i64 %var_2_1257, i64* %var_2_1260, align 8
; store i64 %var_2_884, i64* %var_2_887, align 8
; Matched:\<badref\>:  store i64 %var_2_440, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_886, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1328, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_883, i64* %var_2_3, align 8
%var_2_888 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %var_2_870)
; Matched:%var_2_1244:  %var_2_1244 = load i64, i64* %PC, align 8
; %var_2_889 = load i64, i64* %var_2_3, align 8
  store i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 560), i64* %RDX.i425, align 8
store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 560), i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 560), i64 560)) to i8), i8* %var_2_14, align 1
%var_2_890 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 560) to i32), i32 255))
%var_2_891 = trunc i32 %var_2_890 to i8
%var_2_892 = and i8 %var_2_891, 1
%var_2_893 = xor i8 %var_2_892, 1
store i8 %var_2_893, i8* %var_2_21, align 1
store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 560), i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 560)), i64 4) to i8), i8 1), i8* %var_2_26, align 1
store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 560), i64 0) to i8), i8* %var_2_29, align 1
store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 560), i64 63) to i8), i8* %var_2_32, align 1
store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 560), i64 63), i64 lshr (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 560), i64 63)), i64 2) to i8), i8* %var_2_38, align 1
  store i64 ptrtoint (%G__0x4017f1_type* @G__0x4017f1 to i64), i64* %RSI.i333, align 8
%var_2_894 = load i64, i64* bitcast (%G_0x6023a0_type* @G_0x6023a0 to i64*), align 8
store i64 %var_2_894, i64* %var_2_44, align 1
store double 0.000000e+00, double* %var_2_46, align 1
  store i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 560), i64* %RDI.i682, align 8
; Matched:%var_2_1340:  %var_2_1340 = load i64, i64* %RBP, align 8
; %var_2_895 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1341:  %var_2_1341 = add i64 %var_2_1340, -156
; %var_2_896 = add i64 %var_2_895, -156
; Matched:%var_2_1342:  %var_2_1342 = load i32, i32* %EAX, align 4
; %var_2_897 = load i32, i32* %EAX.i753, align 4
; Matched:%var_2_1307:  %var_2_1307 = add i64 %var_2_1298, 45
; %var_2_898 = add i64 %var_2_889, 45
; Matched:\<badref\>:  store i64 %var_2_1307, i64* %PC, align 8
; store i64 %var_2_898, i64* %var_2_3, align 8
; Matched:%var_2_1344:  %var_2_1344 = inttoptr i64 %var_2_1341 to i32*
; %var_2_899 = inttoptr i64 %var_2_896 to i32*
; Matched:\<badref\>:  store i32 %var_2_1342, i32* %var_2_1344, align 4
; store i32 %var_2_897, i32* %var_2_899, align 4
; Matched:%var_2_1073:  %var_2_1073 = load i64, i64* %PC, align 8
; %var_2_900 = load i64, i64* %var_2_3, align 8
  store i8 1, i8* %AL.i680, align 1
; Matched:%var_2_1346:  %var_2_1346 = add i64 %var_2_1345, -1748
; %var_2_901 = add i64 %var_2_900, -1748
; Matched:%var_2_1075:  %var_2_1075 = add i64 %var_2_1073, 7
; %var_2_902 = add i64 %var_2_900, 7
%var_2_903 = load i64, i64* %var_2_6, align 8
%var_2_904 = add i64 %var_2_903, -8
; Matched:%var_2_1278:  %var_2_1278 = inttoptr i64 %var_2_1277 to i64*
; %var_2_905 = inttoptr i64 %var_2_904 to i64*
; Matched:\<badref\>:  store i64 %var_2_1275, i64* %var_2_1278, align 8
; store i64 %var_2_902, i64* %var_2_905, align 8
; Matched:\<badref\>:  store i64 %var_2_783, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_904, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1346, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_901, i64* %var_2_3, align 8
%var_2_906 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %var_2_888)
%var_2_907 = load i64, i64* %RBP.i, align 8
%var_2_908 = add i64 %var_2_907, -32
%var_2_909 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1230:  %var_2_1230 = add i64 %var_2_1227, 7
; %var_2_910 = add i64 %var_2_909, 7
; Matched:\<badref\>:  store i64 %var_2_1230, i64* %PC, align 8
; store i64 %var_2_910, i64* %var_2_3, align 8
%var_2_911 = inttoptr i64 %var_2_908 to i32*
store i32 0, i32* %var_2_911, align 4
%var_2_912 = load i64, i64* %RBP.i, align 8
%var_2_913 = add i64 %var_2_912, -20
%var_2_914 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1360:  %var_2_1360 = add i64 %var_2_1359, 7
; %var_2_915 = add i64 %var_2_914, 7
; Matched:\<badref\>:  store i64 %var_2_1573, i64* %PC, align 8
; store i64 %var_2_915, i64* %var_2_3, align 8
%var_2_916 = inttoptr i64 %var_2_913 to i32*
store i32 0, i32* %var_2_916, align 4
; Matched:%var_2_1362:  %var_2_1362 = load i64, i64* %RBP, align 8
; %var_2_917 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1363:  %var_2_1363 = add i64 %var_2_1362, -160
; %var_2_918 = add i64 %var_2_917, -160
; Matched:%var_2_1364:  %var_2_1364 = load i32, i32* %EAX, align 4
; %var_2_919 = load i32, i32* %EAX.i753, align 4
; Matched:%var_2_1420:  %var_2_1420 = load i64, i64* %PC, align 8
; %var_2_920 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1366:  %var_2_1366 = add i64 %var_2_1365, 6
; %var_2_921 = add i64 %var_2_920, 6
; Matched:\<badref\>:  store i64 %var_2_1421, i64* %PC, align 8
; store i64 %var_2_921, i64* %var_2_3, align 8
; Matched:%var_2_1367:  %var_2_1367 = inttoptr i64 %var_2_1363 to i32*
; %var_2_922 = inttoptr i64 %var_2_918 to i32*
; Matched:\<badref\>:  store i32 %var_2_1364, i32* %var_2_1367, align 4
; store i32 %var_2_919, i32* %var_2_922, align 4
; Matched:  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
; %R8.i143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
%var_2_923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
; Matched:%var_2_1369:  %var_2_1369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
; %var_2_924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
; Matched:  %.pre90 = load i64, i64* %PC, align 8
; %.pre37 = load i64, i64* %var_2_3, align 8
  br label %block_.L_400d2f

block_.L_400d2f:                                  ; preds = %block_.L_400ee5, %block_.L_400b60
; Matched:%var_2_618:  %var_2_618 = phi i64 [ %.pre90, %block_400b60 ], [ %var_2_141, %block_400ee5 ]
; %var_2_925 = phi i64 [ %.pre37, %block_.L_400b60 ], [ %var_2_1502, %block_.L_400ee5 ]
%MEMORY.4 = phi %struct.Memory* [ %var_2_906, %block_.L_400b60 ], [ %MEMORY.7, %block_.L_400ee5 ]
%var_2_926 = load i64, i64* %RBP.i, align 8
%var_2_927 = add i64 %var_2_926, -20
; Matched:%var_2_621:  %var_2_621 = add i64 %var_2_618, 4
; %var_2_928 = add i64 %var_2_925, 4
; Matched:\<badref\>:  store i64 %var_2_621, i64* %PC, align 8
; store i64 %var_2_928, i64* %var_2_3, align 8
%var_2_929 = inttoptr i64 %var_2_927 to i32*
%var_2_930 = load i32, i32* %var_2_929, align 4
%var_2_931 = add i32 %var_2_930, -8
; Matched:%var_2_625:  %var_2_625 = icmp ult i32 %var_2_623, 8
; %var_2_932 = icmp ult i32 %var_2_930, 8
; Matched:%var_2_626:  %var_2_626 = zext i1 %var_2_625 to i8
; %var_2_933 = zext i1 %var_2_932 to i8
; Matched:\<badref\>:  store i8 %var_2_626, i8* %var_2_19, align 1, !tbaa !1265
; store i8 %var_2_933, i8* %var_2_14, align 1
; Matched:%var_2_627:  %var_2_627 = and i32 %var_2_624, 255
; %var_2_934 = and i32 %var_2_931, 255
; Matched:%var_2_628:  %var_2_628 = tail call i32 @llvm.ctpop.i32(i32 %var_2_627) #14
; %var_2_935 = tail call i32 @llvm.ctpop.i32(i32 %var_2_934)
; Matched:%var_2_629:  %var_2_629 = trunc i32 %var_2_628 to i8
; %var_2_936 = trunc i32 %var_2_935 to i8
; Matched:%var_2_630:  %var_2_630 = and i8 %var_2_629, 1
; %var_2_937 = and i8 %var_2_936, 1
; Matched:%var_2_631:  %var_2_631 = xor i8 %var_2_630, 1
; %var_2_938 = xor i8 %var_2_937, 1
; Matched:\<badref\>:  store i8 %var_2_631, i8* %var_2_26, align 1, !tbaa !1279
; store i8 %var_2_938, i8* %var_2_21, align 1
; Matched:%var_2_632:  %var_2_632 = xor i32 %var_2_624, %var_2_623
; %var_2_939 = xor i32 %var_2_931, %var_2_930
; Matched:%var_2_633:  %var_2_633 = lshr i32 %var_2_632, 4
; %var_2_940 = lshr i32 %var_2_939, 4
; Matched:%var_2_634:  %var_2_634 = trunc i32 %var_2_633 to i8
; %var_2_941 = trunc i32 %var_2_940 to i8
; Matched:%var_2_635:  %var_2_635 = and i8 %var_2_634, 1
; %var_2_942 = and i8 %var_2_941, 1
; Matched:\<badref\>:  store i8 %var_2_635, i8* %var_2_31, align 1, !tbaa !1280
; store i8 %var_2_942, i8* %var_2_26, align 1
; Matched:%var_2_636:  %var_2_636 = icmp eq i32 %var_2_624, 0
; %var_2_943 = icmp eq i32 %var_2_931, 0
; Matched:%var_2_637:  %var_2_637 = zext i1 %var_2_636 to i8
; %var_2_944 = zext i1 %var_2_943 to i8
; Matched:\<badref\>:  store i8 %var_2_637, i8* %var_2_34, align 1, !tbaa !1281
; store i8 %var_2_944, i8* %var_2_29, align 1
%var_2_945 = lshr i32 %var_2_931, 31
%var_2_946 = trunc i32 %var_2_945 to i8
; Matched:\<badref\>:  store i8 %var_2_639, i8* %var_2_37, align 1, !tbaa !1282
; store i8 %var_2_946, i8* %var_2_32, align 1
%var_2_947 = lshr i32 %var_2_930, 31
%var_2_948 = xor i32 %var_2_945, %var_2_947
%var_2_949 = add nuw nsw i32 %var_2_948, %var_2_947
%var_2_950 = icmp eq i32 %var_2_949, 2
; Matched:%var_2_644:  %var_2_644 = zext i1 %var_2_643 to i8
; %var_2_951 = zext i1 %var_2_950 to i8
; Matched:\<badref\>:  store i8 %var_2_644, i8* %var_2_43, align 1, !tbaa !1283
; store i8 %var_2_951, i8* %var_2_38, align 1
%var_2_952 = icmp ne i8 %var_2_946, 0
%var_2_953 = xor i1 %var_2_952, %var_2_950
; Matched:  %.v99 = select i1 %var_2_646, i64 10, i64 457
; %.v46 = select i1 %var_2_953, i64 10, i64 457
; Matched:%var_2_647:  %var_2_647 = add i64 %var_2_618, %.v99
; %var_2_954 = add i64 %var_2_925, %.v46
; Matched:\<badref\>:  store i64 %var_2_647, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_954, i64* %var_2_3, align 8
br i1 %var_2_953, label %block_400d39, label %block_.L_400ef8

block_400d39:                                     ; preds = %block_.L_400d2f
  store i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64* %RAX.i758, align 8
; Matched:%var_2_742:  %var_2_742 = add i64 %var_2_647, 14
; %var_2_955 = add i64 %var_2_954, 14
; Matched:\<badref\>:  store i64 %var_2_742, i64* %PC, align 8
; store i64 %var_2_955, i64* %var_2_3, align 8
%var_2_956 = load i32, i32* %var_2_929, align 4
%var_2_957 = sext i32 %var_2_956 to i64
%var_2_958 = mul nsw i64 %var_2_957, 80
; Matched:\<badref\>:  store i64 %var_2_745, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_958, i64* %RCX.i756, align 8
; Matched:%var_2_1490:  %var_2_1490 = lshr i64 %var_2_1489, 63
; %var_2_959 = lshr i64 %var_2_958, 63
%var_2_960 = add i64 %var_2_958, ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64)
; Matched:\<badref\>:  store i64 %var_2_747, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_960, i64* %RAX.i758, align 8
%var_2_961 = icmp ult i64 %var_2_960, ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64)
; Matched:%var_2_749:  %var_2_749 = icmp ult i64 %var_2_747, %var_2_745
; %var_2_962 = icmp ult i64 %var_2_960, %var_2_958
; Matched:%var_2_828:  %var_2_828 = or i1 %var_2_826, %var_2_827
; %var_2_963 = or i1 %var_2_961, %var_2_962
; Matched:%var_2_751:  %var_2_751 = zext i1 %var_2_750 to i8
; %var_2_964 = zext i1 %var_2_963 to i8
; Matched:\<badref\>:  store i8 %var_2_1495, i8* %var_2_19, align 1, !tbaa !1265
; store i8 %var_2_964, i8* %var_2_14, align 1
%var_2_965 = trunc i64 %var_2_960 to i32
%var_2_966 = and i32 %var_2_965, 248
%var_2_967 = tail call i32 @llvm.ctpop.i32(i32 %var_2_966)
%var_2_968 = trunc i32 %var_2_967 to i8
%var_2_969 = and i8 %var_2_968, 1
%var_2_970 = xor i8 %var_2_969, 1
store i8 %var_2_970, i8* %var_2_21, align 1
; Matched:%var_2_1502:  %var_2_1502 = xor i64 %var_2_1489, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 624)
; %var_2_971 = xor i64 %var_2_958, ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64)
; Matched:%var_2_1503:  %var_2_1503 = xor i64 %var_2_1502, %var_2_1491
; %var_2_972 = xor i64 %var_2_971, %var_2_960
; Matched:%var_2_838:  %var_2_838 = lshr exact i64 %var_2_837, 4
; %var_2_973 = lshr i64 %var_2_972, 4
; Matched:%var_2_1505:  %var_2_1505 = trunc i64 %var_2_1504 to i8
; %var_2_974 = trunc i64 %var_2_973 to i8
; Matched:%var_2_840:  %var_2_840 = and i8 %var_2_839, 1
; %var_2_975 = and i8 %var_2_974, 1
; Matched:\<badref\>:  store i8 %var_2_1506, i8* %var_2_31, align 1, !tbaa !1280
; store i8 %var_2_975, i8* %var_2_26, align 1
; Matched:%var_2_1507:  %var_2_1507 = icmp eq i64 %var_2_1491, 0
; %var_2_976 = icmp eq i64 %var_2_960, 0
; Matched:%var_2_946:  %var_2_946 = zext i1 %var_2_945 to i8
; %var_2_977 = zext i1 %var_2_976 to i8
; Matched:\<badref\>:  store i8 %var_2_1508, i8* %var_2_34, align 1, !tbaa !1281
; store i8 %var_2_977, i8* %var_2_29, align 1
%var_2_978 = lshr i64 %var_2_960, 63
; Matched:%var_2_844:  %var_2_844 = trunc i64 %var_2_843 to i8
; %var_2_979 = trunc i64 %var_2_978 to i8
; Matched:\<badref\>:  store i8 %var_2_1510, i8* %var_2_37, align 1, !tbaa !1282
; store i8 %var_2_979, i8* %var_2_32, align 1
%var_2_980 = xor i64 %var_2_978, lshr (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 63)
; Matched:%var_2_1512:  %var_2_1512 = xor i64 %var_2_1509, %var_2_1490
; %var_2_981 = xor i64 %var_2_978, %var_2_959
; Matched:%var_2_1513:  %var_2_1513 = add nuw nsw i64 %var_2_1511, %var_2_1512
; %var_2_982 = add nuw nsw i64 %var_2_980, %var_2_981
; Matched:%var_2_848:  %var_2_848 = icmp eq i64 %var_2_847, 2
; %var_2_983 = icmp eq i64 %var_2_982, 2
; Matched:%var_2_1515:  %var_2_1515 = zext i1 %var_2_1514 to i8
; %var_2_984 = zext i1 %var_2_983 to i8
; Matched:\<badref\>:  store i8 %var_2_1515, i8* %var_2_43, align 1, !tbaa !1283
; store i8 %var_2_984, i8* %var_2_38, align 1
; Matched:%var_2_772:  %var_2_772 = add i64 %var_2_647, 25
; %var_2_985 = add i64 %var_2_954, 25
; Matched:\<badref\>:  store i64 %var_2_772, i64* %PC, align 8
; store i64 %var_2_985, i64* %var_2_3, align 8
%var_2_986 = load i32, i32* %var_2_929, align 4
%var_2_987 = sext i32 %var_2_986 to i64
; Matched:\<badref\>:  store i64 %var_2_1546, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_987, i64* %RCX.i756, align 8
%var_2_988 = shl nsw i64 %var_2_987, 3
%var_2_989 = add nsw i64 %var_2_988, 6299904
; Matched:%var_2_777:  %var_2_777 = add i64 %var_2_647, 33
; %var_2_990 = add i64 %var_2_954, 33
; Matched:\<badref\>:  store i64 %var_2_777, i64* %PC, align 8
; store i64 %var_2_990, i64* %var_2_3, align 8
%var_2_991 = inttoptr i64 %var_2_989 to i64*
%var_2_992 = load i64, i64* %var_2_991, align 8
store i64 %var_2_992, i64* %RSI.i333, align 8
; Matched:\<badref\>:  store i64 %var_2_747, i64* %RDI, align 8, !tbaa !1261
; store i64 %var_2_960, i64* %RDI.i682, align 8
; Matched:%var_2_780:  %var_2_780 = add i64 %var_2_647, -1849
; %var_2_993 = add i64 %var_2_954, -1849
; Matched:%var_2_781:  %var_2_781 = add i64 %var_2_647, 41
; %var_2_994 = add i64 %var_2_954, 41
%var_2_995 = load i64, i64* %var_2_6, align 8
%var_2_996 = add i64 %var_2_995, -8
; Matched:%var_2_784:  %var_2_784 = inttoptr i64 %var_2_783 to i64*
; %var_2_997 = inttoptr i64 %var_2_996 to i64*
; Matched:\<badref\>:  store i64 %var_2_781, i64* %var_2_784, align 8
; store i64 %var_2_994, i64* %var_2_997, align 8
; Matched:\<badref\>:  store i64 %var_2_1259, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_996, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_780, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_993, i64* %var_2_3, align 8
%var_2_998 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %MEMORY.4)
%var_2_999 = load i32, i32* %EAX.i753, align 4
; Matched:%var_2_787:  %var_2_787 = load i64, i64* %PC, align 8
; %var_2_1000 = load i64, i64* %var_2_3, align 8
store i8 0, i8* %var_2_14, align 1
; Matched:%var_2_788:  %var_2_788 = and i32 %var_2_786, 255
; %var_2_1001 = and i32 %var_2_999, 255
; Matched:%var_2_789:  %var_2_789 = tail call i32 @llvm.ctpop.i32(i32 %var_2_788) #14
; %var_2_1002 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1001)
; Matched:%var_2_790:  %var_2_790 = trunc i32 %var_2_789 to i8
; %var_2_1003 = trunc i32 %var_2_1002 to i8
; Matched:%var_2_791:  %var_2_791 = and i8 %var_2_790, 1
; %var_2_1004 = and i8 %var_2_1003, 1
; Matched:%var_2_792:  %var_2_792 = xor i8 %var_2_791, 1
; %var_2_1005 = xor i8 %var_2_1004, 1
; Matched:\<badref\>:  store i8 %var_2_792, i8* %var_2_26, align 1, !tbaa !1279
; store i8 %var_2_1005, i8* %var_2_21, align 1
store i8 0, i8* %var_2_26, align 1
%var_2_1006 = icmp eq i32 %var_2_999, 0
; Matched:%var_2_794:  %var_2_794 = zext i1 %var_2_793 to i8
; %var_2_1007 = zext i1 %var_2_1006 to i8
; Matched:\<badref\>:  store i8 %var_2_794, i8* %var_2_34, align 1, !tbaa !1281
; store i8 %var_2_1007, i8* %var_2_29, align 1
; Matched:%var_2_795:  %var_2_795 = lshr i32 %var_2_786, 31
; %var_2_1008 = lshr i32 %var_2_999, 31
; Matched:%var_2_796:  %var_2_796 = trunc i32 %var_2_795 to i8
; %var_2_1009 = trunc i32 %var_2_1008 to i8
; Matched:\<badref\>:  store i8 %var_2_796, i8* %var_2_37, align 1, !tbaa !1282
; store i8 %var_2_1009, i8* %var_2_32, align 1
store i8 0, i8* %var_2_38, align 1
; Matched:  %.v101 = select i1 %var_2_793, i64 387, i64 9
; %.v48 = select i1 %var_2_1006, i64 387, i64 9
; Matched:%var_2_797:  %var_2_797 = add i64 %var_2_787, %.v101
; %var_2_1010 = add i64 %var_2_1000, %.v48
; Matched:\<badref\>:  store i64 %var_2_797, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1010, i64* %var_2_3, align 8
br i1 %var_2_1006, label %block_.L_400ee5, label %block_400d6b

block_400d6b:                                     ; preds = %block_400d39
  store i64 ptrtoint (%G__0x401881_type* @G__0x401881 to i64), i64* %RDI.i682, align 8
%var_2_1011 = load i64, i64* %RBP.i, align 8
%var_2_1012 = add i64 %var_2_1011, -20
; Matched:%var_2_1427:  %var_2_1427 = add i64 %var_2_797, 13
; %var_2_1013 = add i64 %var_2_1010, 13
; Matched:\<badref\>:  store i64 %var_2_1427, i64* %PC, align 8
; store i64 %var_2_1013, i64* %var_2_3, align 8
%var_2_1014 = inttoptr i64 %var_2_1012 to i32*
%var_2_1015 = load i32, i32* %var_2_1014, align 4
%var_2_1016 = add i32 %var_2_1015, 1
%var_2_1017 = zext i32 %var_2_1016 to i64
; Matched:\<badref\>:  store i64 %var_2_1431, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1017, i64* %RAX.i758, align 8
; Matched:%var_2_1183:  %var_2_1183 = icmp eq i32 %var_2_1180, -1
; %var_2_1018 = icmp eq i32 %var_2_1015, -1
; Matched:%var_2_1433:  %var_2_1433 = icmp eq i32 %var_2_1430, 0
; %var_2_1019 = icmp eq i32 %var_2_1016, 0
; Matched:%var_2_1185:  %var_2_1185 = or i1 %var_2_1183, %var_2_1184
; %var_2_1020 = or i1 %var_2_1018, %var_2_1019
; Matched:%var_2_1435:  %var_2_1435 = zext i1 %var_2_1434 to i8
; %var_2_1021 = zext i1 %var_2_1020 to i8
; Matched:\<badref\>:  store i8 %var_2_1435, i8* %var_2_19, align 1, !tbaa !1265
; store i8 %var_2_1021, i8* %var_2_14, align 1
; Matched:%var_2_1436:  %var_2_1436 = and i32 %var_2_1430, 255
; %var_2_1022 = and i32 %var_2_1016, 255
; Matched:%var_2_1437:  %var_2_1437 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1436) #14
; %var_2_1023 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1022)
; Matched:%var_2_1438:  %var_2_1438 = trunc i32 %var_2_1437 to i8
; %var_2_1024 = trunc i32 %var_2_1023 to i8
; Matched:%var_2_1190:  %var_2_1190 = and i8 %var_2_1189, 1
; %var_2_1025 = and i8 %var_2_1024, 1
; Matched:%var_2_1440:  %var_2_1440 = xor i8 %var_2_1439, 1
; %var_2_1026 = xor i8 %var_2_1025, 1
; Matched:\<badref\>:  store i8 %var_2_1191, i8* %var_2_26, align 1, !tbaa !1279
; store i8 %var_2_1026, i8* %var_2_21, align 1
; Matched:%var_2_1441:  %var_2_1441 = xor i32 %var_2_1430, %var_2_1429
; %var_2_1027 = xor i32 %var_2_1016, %var_2_1015
; Matched:%var_2_1442:  %var_2_1442 = lshr i32 %var_2_1441, 4
; %var_2_1028 = lshr i32 %var_2_1027, 4
; Matched:%var_2_1443:  %var_2_1443 = trunc i32 %var_2_1442 to i8
; %var_2_1029 = trunc i32 %var_2_1028 to i8
; Matched:%var_2_1444:  %var_2_1444 = and i8 %var_2_1443, 1
; %var_2_1030 = and i8 %var_2_1029, 1
; Matched:\<badref\>:  store i8 %var_2_1444, i8* %var_2_31, align 1, !tbaa !1280
; store i8 %var_2_1030, i8* %var_2_26, align 1
; Matched:%var_2_1196:  %var_2_1196 = zext i1 %var_2_1184 to i8
; %var_2_1031 = zext i1 %var_2_1019 to i8
; Matched:\<badref\>:  store i8 %var_2_1445, i8* %var_2_34, align 1, !tbaa !1281
; store i8 %var_2_1031, i8* %var_2_29, align 1
; Matched:%var_2_1197:  %var_2_1197 = lshr i32 %var_2_1181, 31
; %var_2_1032 = lshr i32 %var_2_1016, 31
; Matched:%var_2_1447:  %var_2_1447 = trunc i32 %var_2_1446 to i8
; %var_2_1033 = trunc i32 %var_2_1032 to i8
; Matched:\<badref\>:  store i8 %var_2_1447, i8* %var_2_37, align 1, !tbaa !1282
; store i8 %var_2_1033, i8* %var_2_32, align 1
; Matched:%var_2_1448:  %var_2_1448 = lshr i32 %var_2_1429, 31
; %var_2_1034 = lshr i32 %var_2_1015, 31
; Matched:%var_2_1449:  %var_2_1449 = xor i32 %var_2_1446, %var_2_1448
; %var_2_1035 = xor i32 %var_2_1032, %var_2_1034
; Matched:%var_2_1450:  %var_2_1450 = add nuw nsw i32 %var_2_1449, %var_2_1446
; %var_2_1036 = add nuw nsw i32 %var_2_1035, %var_2_1032
; Matched:%var_2_1202:  %var_2_1202 = icmp eq i32 %var_2_1201, 2
; %var_2_1037 = icmp eq i32 %var_2_1036, 2
; Matched:%var_2_1452:  %var_2_1452 = zext i1 %var_2_1451 to i8
; %var_2_1038 = zext i1 %var_2_1037 to i8
; Matched:\<badref\>:  store i8 %var_2_1203, i8* %var_2_43, align 1, !tbaa !1283
; store i8 %var_2_1038, i8* %var_2_38, align 1
; Matched:\<badref\>:  store i64 %var_2_1431, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_1017, i64* %RSI.i333, align 8
  store i8 0, i8* %AL.i680, align 1
; Matched:%var_2_1453:  %var_2_1453 = add i64 %var_2_797, -1931
; %var_2_1039 = add i64 %var_2_1010, -1931
; Matched:%var_2_1454:  %var_2_1454 = add i64 %var_2_797, 25
; %var_2_1040 = add i64 %var_2_1010, 25
%var_2_1041 = load i64, i64* %var_2_6, align 8
%var_2_1042 = add i64 %var_2_1041, -8
; Matched:%var_2_1457:  %var_2_1457 = inttoptr i64 %var_2_1456 to i64*
; %var_2_1043 = inttoptr i64 %var_2_1042 to i64*
; Matched:\<badref\>:  store i64 %var_2_1454, i64* %var_2_1457, align 8
; store i64 %var_2_1040, i64* %var_2_1043, align 8
; Matched:\<badref\>:  store i64 %var_2_1077, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1042, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1453, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1039, i64* %var_2_3, align 8
%var_2_1044 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %var_2_998)
%var_2_1045 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x4018a2_type* @G__0x4018a2 to i64), i64* %RDI.i682, align 8
%var_2_1046 = load i64, i64* %RBP.i, align 8
%var_2_1047 = add i64 %var_2_1046, -20
%var_2_1048 = add i64 %var_2_1045, 14
store i64 %var_2_1048, i64* %var_2_3, align 8
%var_2_1049 = inttoptr i64 %var_2_1047 to i32*
%var_2_1050 = load i32, i32* %var_2_1049, align 4
%var_2_1051 = sext i32 %var_2_1050 to i64
; Matched:\<badref\>:  store i64 %var_2_1465, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1051, i64* %RCX.i756, align 8
%var_2_1052 = shl nsw i64 %var_2_1051, 3
%var_2_1053 = add nsw i64 %var_2_1052, 6299904
; Matched:%var_2_910:  %var_2_910 = add i64 %var_2_901, 22
; %var_2_1054 = add i64 %var_2_1045, 22
; Matched:\<badref\>:  store i64 %var_2_1468, i64* %PC, align 8
; store i64 %var_2_1054, i64* %var_2_3, align 8
%var_2_1055 = inttoptr i64 %var_2_1053 to i64*
%var_2_1056 = load i64, i64* %var_2_1055, align 8
store i64 %var_2_1056, i64* %RSI.i333, align 8
; Matched:%var_2_1471:  %var_2_1471 = add i64 %var_2_1460, -164
; %var_2_1057 = add i64 %var_2_1046, -164
; Matched:%var_2_1472:  %var_2_1472 = load i32, i32* %EAX, align 4
; %var_2_1058 = load i32, i32* %EAX.i753, align 4
; Matched:%var_2_1473:  %var_2_1473 = add i64 %var_2_1459, 28
; %var_2_1059 = add i64 %var_2_1045, 28
; Matched:\<badref\>:  store i64 %var_2_1424, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1059, i64* %var_2_3, align 8
; Matched:%var_2_1474:  %var_2_1474 = inttoptr i64 %var_2_1471 to i32*
; %var_2_1060 = inttoptr i64 %var_2_1057 to i32*
; Matched:\<badref\>:  store i32 %var_2_1472, i32* %var_2_1474, align 4
; store i32 %var_2_1058, i32* %var_2_1060, align 4
; Matched:%var_2_1327:  %var_2_1327 = load i64, i64* %PC, align 8
; %var_2_1061 = load i64, i64* %var_2_3, align 8
  store i8 0, i8* %AL.i680, align 1
; Matched:%var_2_1476:  %var_2_1476 = add i64 %var_2_1475, -1984
; %var_2_1062 = add i64 %var_2_1061, -1984
; Matched:%var_2_1311:  %var_2_1311 = add i64 %var_2_1309, 7
; %var_2_1063 = add i64 %var_2_1061, 7
%var_2_1064 = load i64, i64* %var_2_6, align 8
%var_2_1065 = add i64 %var_2_1064, -8
; Matched:%var_2_1296:  %var_2_1296 = inttoptr i64 %var_2_1295 to i64*
; %var_2_1066 = inttoptr i64 %var_2_1065 to i64*
; Matched:\<badref\>:  store i64 %var_2_1293, i64* %var_2_1296, align 8
; store i64 %var_2_1063, i64* %var_2_1066, align 8
; Matched:\<badref\>:  store i64 %var_2_1349, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1065, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1476, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1062, i64* %var_2_3, align 8
%var_2_1067 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %var_2_1044)
; Matched:%var_2_1482:  %var_2_1482 = load i64, i64* %PC, align 8
; %var_2_1068 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x4018b3_type* @G__0x4018b3 to i64), i64* %RDI.i682, align 8
  store i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64* %RCX.i756, align 8
%var_2_1069 = load i64, i64* %RBP.i, align 8
%var_2_1070 = add i64 %var_2_1069, -20
; Matched:%var_2_1485:  %var_2_1485 = add i64 %var_2_1482, 24
; %var_2_1071 = add i64 %var_2_1068, 24
; Matched:\<badref\>:  store i64 %var_2_1485, i64* %PC, align 8
; store i64 %var_2_1071, i64* %var_2_3, align 8
%var_2_1072 = inttoptr i64 %var_2_1070 to i32*
%var_2_1073 = load i32, i32* %var_2_1072, align 4
%var_2_1074 = sext i32 %var_2_1073 to i64
%var_2_1075 = mul nsw i64 %var_2_1074, 80
; Matched:%var_2_824:  %var_2_824 = lshr i64 %var_2_823, 63
; %var_2_1076 = lshr i64 %var_2_1075, 63
%var_2_1077 = add i64 %var_2_1075, ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64)
; Matched:\<badref\>:  store i64 %var_2_1491, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1077, i64* %RCX.i756, align 8
%var_2_1078 = icmp ult i64 %var_2_1077, ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64)
; Matched:%var_2_1493:  %var_2_1493 = icmp ult i64 %var_2_1491, %var_2_1489
; %var_2_1079 = icmp ult i64 %var_2_1077, %var_2_1075
; Matched:%var_2_1494:  %var_2_1494 = or i1 %var_2_1492, %var_2_1493
; %var_2_1080 = or i1 %var_2_1078, %var_2_1079
; Matched:%var_2_1495:  %var_2_1495 = zext i1 %var_2_1494 to i8
; %var_2_1081 = zext i1 %var_2_1080 to i8
; Matched:\<badref\>:  store i8 %var_2_751, i8* %var_2_19, align 1, !tbaa !1265
; store i8 %var_2_1081, i8* %var_2_14, align 1
%var_2_1082 = trunc i64 %var_2_1077 to i32
%var_2_1083 = and i32 %var_2_1082, 248
%var_2_1084 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1083)
%var_2_1085 = trunc i32 %var_2_1084 to i8
%var_2_1086 = and i8 %var_2_1085, 1
%var_2_1087 = xor i8 %var_2_1086, 1
store i8 %var_2_1087, i8* %var_2_21, align 1
; Matched:%var_2_758:  %var_2_758 = xor i64 %var_2_745, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 624)
; %var_2_1088 = xor i64 %var_2_1075, ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64)
; Matched:%var_2_837:  %var_2_837 = xor i64 %var_2_836, %var_2_825
; %var_2_1089 = xor i64 %var_2_1088, %var_2_1077
; Matched:%var_2_1504:  %var_2_1504 = lshr exact i64 %var_2_1503, 4
; %var_2_1090 = lshr i64 %var_2_1089, 4
; Matched:%var_2_839:  %var_2_839 = trunc i64 %var_2_838 to i8
; %var_2_1091 = trunc i64 %var_2_1090 to i8
; Matched:%var_2_1506:  %var_2_1506 = and i8 %var_2_1505, 1
; %var_2_1092 = and i8 %var_2_1091, 1
; Matched:\<badref\>:  store i8 %var_2_762, i8* %var_2_31, align 1, !tbaa !1280
; store i8 %var_2_1092, i8* %var_2_26, align 1
; Matched:%var_2_763:  %var_2_763 = icmp eq i64 %var_2_747, 0
; %var_2_1093 = icmp eq i64 %var_2_1077, 0
; Matched:%var_2_1508:  %var_2_1508 = zext i1 %var_2_1507 to i8
; %var_2_1094 = zext i1 %var_2_1093 to i8
; Matched:\<badref\>:  store i8 %var_2_764, i8* %var_2_34, align 1, !tbaa !1281
; store i8 %var_2_1094, i8* %var_2_29, align 1
%var_2_1095 = lshr i64 %var_2_1077, 63
; Matched:%var_2_1510:  %var_2_1510 = trunc i64 %var_2_1509 to i8
; %var_2_1096 = trunc i64 %var_2_1095 to i8
; Matched:\<badref\>:  store i8 %var_2_844, i8* %var_2_37, align 1, !tbaa !1282
; store i8 %var_2_1096, i8* %var_2_32, align 1
%var_2_1097 = xor i64 %var_2_1095, lshr (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 63)
; Matched:%var_2_768:  %var_2_768 = xor i64 %var_2_765, %var_2_746
; %var_2_1098 = xor i64 %var_2_1095, %var_2_1076
; Matched:%var_2_769:  %var_2_769 = add nuw nsw i64 %var_2_767, %var_2_768
; %var_2_1099 = add nuw nsw i64 %var_2_1097, %var_2_1098
; Matched:%var_2_1514:  %var_2_1514 = icmp eq i64 %var_2_1513, 2
; %var_2_1100 = icmp eq i64 %var_2_1099, 2
; Matched:%var_2_849:  %var_2_849 = zext i1 %var_2_848 to i8
; %var_2_1101 = zext i1 %var_2_1100 to i8
; Matched:\<badref\>:  store i8 %var_2_953, i8* %var_2_43, align 1, !tbaa !1283
; store i8 %var_2_1101, i8* %var_2_38, align 1
; Matched:\<badref\>:  store i64 %var_2_1491, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_1077, i64* %RSI.i333, align 8
; Matched:%var_2_1516:  %var_2_1516 = add i64 %var_2_1483, -168
; %var_2_1102 = add i64 %var_2_1069, -168
; Matched:%var_2_1517:  %var_2_1517 = load i32, i32* %EAX, align 4
; %var_2_1103 = load i32, i32* %EAX.i753, align 4
; Matched:%var_2_1518:  %var_2_1518 = add i64 %var_2_1482, 40
; %var_2_1104 = add i64 %var_2_1068, 40
; Matched:\<badref\>:  store i64 %var_2_1518, i64* %PC, align 8
; store i64 %var_2_1104, i64* %var_2_3, align 8
; Matched:%var_2_1519:  %var_2_1519 = inttoptr i64 %var_2_1516 to i32*
; %var_2_1105 = inttoptr i64 %var_2_1102 to i32*
; Matched:\<badref\>:  store i32 %var_2_1517, i32* %var_2_1519, align 4
; store i32 %var_2_1103, i32* %var_2_1105, align 4
; Matched:%var_2_1309:  %var_2_1309 = load i64, i64* %PC, align 8
; %var_2_1106 = load i64, i64* %var_2_3, align 8
  store i8 0, i8* %AL.i680, align 1
; Matched:%var_2_1521:  %var_2_1521 = add i64 %var_2_1520, -2031
; %var_2_1107 = add i64 %var_2_1106, -2031
; Matched:%var_2_1535:  %var_2_1535 = add i64 %var_2_1533, 7
; %var_2_1108 = add i64 %var_2_1106, 7
%var_2_1109 = load i64, i64* %var_2_6, align 8
%var_2_1110 = add i64 %var_2_1109, -8
; Matched:%var_2_1078:  %var_2_1078 = inttoptr i64 %var_2_1077 to i64*
; %var_2_1111 = inttoptr i64 %var_2_1110 to i64*
; Matched:\<badref\>:  store i64 %var_2_1075, i64* %var_2_1078, align 8
; store i64 %var_2_1108, i64* %var_2_1111, align 8
; Matched:\<badref\>:  store i64 %var_2_1373, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1110, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1521, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1107, i64* %var_2_3, align 8
%var_2_1112 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %var_2_1067)
; Matched:%var_2_1527:  %var_2_1527 = load i64, i64* %PC, align 8
; %var_2_1113 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x4018c4_type* @G__0x4018c4 to i64), i64* %RDI.i682, align 8
; Matched:%var_2_1528:  %var_2_1528 = load i64, i64* %RBP, align 8
; %var_2_1114 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1529:  %var_2_1529 = add i64 %var_2_1528, -172
; %var_2_1115 = add i64 %var_2_1114, -172
; Matched:%var_2_1530:  %var_2_1530 = load i32, i32* %EAX, align 4
; %var_2_1116 = load i32, i32* %EAX.i753, align 4
; Matched:%var_2_1531:  %var_2_1531 = add i64 %var_2_1527, 16
; %var_2_1117 = add i64 %var_2_1113, 16
; Matched:\<badref\>:  store i64 %var_2_1531, i64* %PC, align 8
; store i64 %var_2_1117, i64* %var_2_3, align 8
; Matched:%var_2_1532:  %var_2_1532 = inttoptr i64 %var_2_1529 to i32*
; %var_2_1118 = inttoptr i64 %var_2_1115 to i32*
; Matched:\<badref\>:  store i32 %var_2_1530, i32* %var_2_1532, align 4
; store i32 %var_2_1116, i32* %var_2_1118, align 4
; Matched:%var_2_1255:  %var_2_1255 = load i64, i64* %PC, align 8
; %var_2_1119 = load i64, i64* %var_2_3, align 8
  store i8 0, i8* %AL.i680, align 1
; Matched:%var_2_1534:  %var_2_1534 = add i64 %var_2_1533, -2054
; %var_2_1120 = add i64 %var_2_1119, -2054
; Matched:%var_2_1239:  %var_2_1239 = add i64 %var_2_1237, 7
; %var_2_1121 = add i64 %var_2_1119, 7
%var_2_1122 = load i64, i64* %var_2_6, align 8
%var_2_1123 = add i64 %var_2_1122, -8
; Matched:%var_2_1052:  %var_2_1052 = inttoptr i64 %var_2_1051 to i64*
; %var_2_1124 = inttoptr i64 %var_2_1123 to i64*
; Matched:\<badref\>:  store i64 %var_2_1049, i64* %var_2_1052, align 8
; store i64 %var_2_1121, i64* %var_2_1124, align 8
; Matched:\<badref\>:  store i64 %var_2_1560, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1123, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1534, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1120, i64* %var_2_3, align 8
%var_2_1125 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %var_2_1112)
%var_2_1126 = load i64, i64* %RBP.i, align 8
%var_2_1127 = add i64 %var_2_1126, -20
%var_2_1128 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_94:  %var_2_94 = add i64 %var_2_93, 4
; %var_2_1129 = add i64 %var_2_1128, 4
; Matched:\<badref\>:  store i64 %var_2_94, i64* %PC, align 8
; store i64 %var_2_1129, i64* %var_2_3, align 8
%var_2_1130 = inttoptr i64 %var_2_1127 to i32*
%var_2_1131 = load i32, i32* %var_2_1130, align 4
%var_2_1132 = sext i32 %var_2_1131 to i64
; Matched:\<badref\>:  store i64 %var_2_774, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1132, i64* %RCX.i756, align 8
%var_2_1133 = shl nsw i64 %var_2_1132, 3
%var_2_1134 = add nsw i64 %var_2_1133, 6299904
; Matched:%var_2_1549:  %var_2_1549 = add i64 %var_2_1542, 12
; %var_2_1135 = add i64 %var_2_1128, 12
; Matched:\<badref\>:  store i64 %var_2_1549, i64* %PC, align 8
; store i64 %var_2_1135, i64* %var_2_3, align 8
%var_2_1136 = inttoptr i64 %var_2_1134 to i64*
%var_2_1137 = load i64, i64* %var_2_1136, align 8
store i64 %var_2_1137, i64* %RDI.i682, align 8
; Matched:%var_2_1552:  %var_2_1552 = add i64 %var_2_1540, -176
; %var_2_1138 = add i64 %var_2_1126, -176
; Matched:%var_2_1553:  %var_2_1553 = load i32, i32* %EAX, align 4
; %var_2_1139 = load i32, i32* %EAX.i753, align 4
; Matched:%var_2_1554:  %var_2_1554 = add i64 %var_2_1542, 18
; %var_2_1140 = add i64 %var_2_1128, 18
; Matched:\<badref\>:  store i64 %var_2_1554, i64* %PC, align 8
; store i64 %var_2_1140, i64* %var_2_3, align 8
; Matched:%var_2_1555:  %var_2_1555 = inttoptr i64 %var_2_1552 to i32*
; %var_2_1141 = inttoptr i64 %var_2_1138 to i32*
; Matched:\<badref\>:  store i32 %var_2_1553, i32* %var_2_1555, align 4
; store i32 %var_2_1139, i32* %var_2_1141, align 4
; Matched:%var_2_210:  %var_2_210 = load i64, i64* %PC, align 8
; %var_2_1142 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1557:  %var_2_1557 = add i64 %var_2_1556, -2095
; %var_2_1143 = add i64 %var_2_1142, -2095
; Matched:%var_2_271:  %var_2_271 = add i64 %var_2_269, 5
; %var_2_1144 = add i64 %var_2_1142, 5
%var_2_1145 = load i64, i64* %var_2_6, align 8
%var_2_1146 = add i64 %var_2_1145, -8
; Matched:%var_2_215:  %var_2_215 = inttoptr i64 %var_2_214 to i64*
; %var_2_1147 = inttoptr i64 %var_2_1146 to i64*
; Matched:\<badref\>:  store i64 %var_2_271, i64* %var_2_274, align 8
; store i64 %var_2_1144, i64* %var_2_1147, align 8
; Matched:\<badref\>:  store i64 %var_2_352, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1146, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1557, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1143, i64* %var_2_3, align 8
%var_2_1148 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %var_2_1125)
; Matched:%var_2_1563:  %var_2_1563 = load i32, i32* %EAX, align 4
; %var_2_1149 = load i32, i32* %EAX.i753, align 4
; Matched:%var_2_1564:  %var_2_1564 = zext i32 %var_2_1563 to i64
; %var_2_1150 = zext i32 %var_2_1149 to i64
; Matched:%var_2_265:  %var_2_265 = load i64, i64* %PC, align 8
; %var_2_1151 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_1564, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1150, i64* %RDX.i425, align 8
; Matched:%var_2_1566:  %var_2_1566 = load i64, i64* %RBP, align 8
; %var_2_1152 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1567:  %var_2_1567 = add i64 %var_2_1566, -28
; %var_2_1153 = add i64 %var_2_1152, -28
; Matched:%var_2_266:  %var_2_266 = add i64 %var_2_265, 5
; %var_2_1154 = add i64 %var_2_1151, 5
; Matched:\<badref\>:  store i64 %var_2_266, i64* %PC, align 8
; store i64 %var_2_1154, i64* %var_2_3, align 8
; Matched:%var_2_1569:  %var_2_1569 = inttoptr i64 %var_2_1567 to i32*
; %var_2_1155 = inttoptr i64 %var_2_1153 to i32*
; Matched:\<badref\>:  store i32 %var_2_1563, i32* %var_2_1569, align 4
; store i32 %var_2_1149, i32* %var_2_1155, align 4
%var_2_1156 = load i64, i64* %RBP.i, align 8
%var_2_1157 = add i64 %var_2_1156, -24
%var_2_1158 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1573:  %var_2_1573 = add i64 %var_2_1572, 7
; %var_2_1159 = add i64 %var_2_1158, 7
; Matched:\<badref\>:  store i64 %var_2_1355, i64* %PC, align 8
; store i64 %var_2_1159, i64* %var_2_3, align 8
%var_2_1160 = inttoptr i64 %var_2_1157 to i32*
store i32 0, i32* %var_2_1160, align 4
; Matched:  %.pre92 = load i64, i64* %PC, align 8
; %.pre39 = load i64, i64* %var_2_3, align 8
  br label %block_.L_400e10

block_.L_400e10:                                  ; preds = %block_.L_400ebb, %block_400d6b
; Matched:%var_2_142:  %var_2_142 = phi i64 [ %.pre92, %block_400d6b ], [ %var_2_709, %block_400ebb ]
; %var_2_1161 = phi i64 [ %.pre39, %block_400d6b ], [ %var_2_1458, %block_.L_400ebb ]
%MEMORY.5 = phi %struct.Memory* [ %var_2_1148, %block_400d6b ], [ %var_2_1299, %block_.L_400ebb ]
%var_2_1162 = load i64, i64* %RBP.i, align 8
%var_2_1163 = add i64 %var_2_1162, -24
; Matched:%var_2_145:  %var_2_145 = add i64 %var_2_142, 3
; %var_2_1164 = add i64 %var_2_1161, 3
; Matched:\<badref\>:  store i64 %var_2_145, i64* %PC, align 8
; store i64 %var_2_1164, i64* %var_2_3, align 8
%var_2_1165 = inttoptr i64 %var_2_1163 to i32*
%var_2_1166 = load i32, i32* %var_2_1165, align 4
; Matched:%var_2_148:  %var_2_148 = zext i32 %var_2_147 to i64
; %var_2_1167 = zext i32 %var_2_1166 to i64
; Matched:\<badref\>:  store i64 %var_2_148, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1167, i64* %RAX.i758, align 8
%var_2_1168 = add i64 %var_2_1162, -28
; Matched:%var_2_150:  %var_2_150 = add i64 %var_2_142, 6
; %var_2_1169 = add i64 %var_2_1161, 6
; Matched:\<badref\>:  store i64 %var_2_150, i64* %PC, align 8
; store i64 %var_2_1169, i64* %var_2_3, align 8
%var_2_1170 = inttoptr i64 %var_2_1168 to i32*
%var_2_1171 = load i32, i32* %var_2_1170, align 4
%var_2_1172 = sub i32 %var_2_1166, %var_2_1171
; Matched:%var_2_154:  %var_2_154 = icmp ult i32 %var_2_147, %var_2_152
; %var_2_1173 = icmp ult i32 %var_2_1166, %var_2_1171
; Matched:%var_2_155:  %var_2_155 = zext i1 %var_2_154 to i8
; %var_2_1174 = zext i1 %var_2_1173 to i8
; Matched:\<badref\>:  store i8 %var_2_155, i8* %var_2_19, align 1, !tbaa !1265
; store i8 %var_2_1174, i8* %var_2_14, align 1
; Matched:%var_2_156:  %var_2_156 = and i32 %var_2_153, 255
; %var_2_1175 = and i32 %var_2_1172, 255
; Matched:%var_2_157:  %var_2_157 = tail call i32 @llvm.ctpop.i32(i32 %var_2_156) #14
; %var_2_1176 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1175)
; Matched:%var_2_158:  %var_2_158 = trunc i32 %var_2_157 to i8
; %var_2_1177 = trunc i32 %var_2_1176 to i8
; Matched:%var_2_159:  %var_2_159 = and i8 %var_2_158, 1
; %var_2_1178 = and i8 %var_2_1177, 1
; Matched:%var_2_160:  %var_2_160 = xor i8 %var_2_159, 1
; %var_2_1179 = xor i8 %var_2_1178, 1
; Matched:\<badref\>:  store i8 %var_2_160, i8* %var_2_26, align 1, !tbaa !1279
; store i8 %var_2_1179, i8* %var_2_21, align 1
; Matched:%var_2_161:  %var_2_161 = xor i32 %var_2_152, %var_2_147
; %var_2_1180 = xor i32 %var_2_1171, %var_2_1166
; Matched:%var_2_162:  %var_2_162 = xor i32 %var_2_161, %var_2_153
; %var_2_1181 = xor i32 %var_2_1180, %var_2_1172
; Matched:%var_2_163:  %var_2_163 = lshr i32 %var_2_162, 4
; %var_2_1182 = lshr i32 %var_2_1181, 4
; Matched:%var_2_164:  %var_2_164 = trunc i32 %var_2_163 to i8
; %var_2_1183 = trunc i32 %var_2_1182 to i8
; Matched:%var_2_165:  %var_2_165 = and i8 %var_2_164, 1
; %var_2_1184 = and i8 %var_2_1183, 1
; Matched:\<badref\>:  store i8 %var_2_165, i8* %var_2_31, align 1, !tbaa !1280
; store i8 %var_2_1184, i8* %var_2_26, align 1
; Matched:%var_2_166:  %var_2_166 = icmp eq i32 %var_2_153, 0
; %var_2_1185 = icmp eq i32 %var_2_1172, 0
; Matched:%var_2_167:  %var_2_167 = zext i1 %var_2_166 to i8
; %var_2_1186 = zext i1 %var_2_1185 to i8
; Matched:\<badref\>:  store i8 %var_2_167, i8* %var_2_34, align 1, !tbaa !1281
; store i8 %var_2_1186, i8* %var_2_29, align 1
%var_2_1187 = lshr i32 %var_2_1172, 31
%var_2_1188 = trunc i32 %var_2_1187 to i8
; Matched:\<badref\>:  store i8 %var_2_169, i8* %var_2_37, align 1, !tbaa !1282
; store i8 %var_2_1188, i8* %var_2_32, align 1
%var_2_1189 = lshr i32 %var_2_1166, 31
%var_2_1190 = lshr i32 %var_2_1171, 31
%var_2_1191 = xor i32 %var_2_1190, %var_2_1189
%var_2_1192 = xor i32 %var_2_1187, %var_2_1189
%var_2_1193 = add nuw nsw i32 %var_2_1192, %var_2_1191
%var_2_1194 = icmp eq i32 %var_2_1193, 2
; Matched:%var_2_176:  %var_2_176 = zext i1 %var_2_175 to i8
; %var_2_1195 = zext i1 %var_2_1194 to i8
; Matched:\<badref\>:  store i8 %var_2_176, i8* %var_2_43, align 1, !tbaa !1283
; store i8 %var_2_1195, i8* %var_2_38, align 1
%var_2_1196 = icmp ne i8 %var_2_1188, 0
%var_2_1197 = xor i1 %var_2_1196, %var_2_1194
; Matched:  %.v102 = select i1 %var_2_178, i64 12, i64 190
; %.v49 = select i1 %var_2_1197, i64 12, i64 190
; Matched:%var_2_179:  %var_2_179 = add i64 %var_2_142, %.v102
; %var_2_1198 = add i64 %var_2_1161, %.v49
; Matched:%var_2_180:  %var_2_180 = add i64 %var_2_179, 10
; %var_2_1199 = add i64 %var_2_1198, 10
; Matched:\<badref\>:  store i64 %var_2_180, i64* %PC, align 8
; store i64 %var_2_1199, i64* %var_2_3, align 8
br i1 %var_2_1197, label %block_400e1c, label %block_.L_400ece

block_400e1c:                                     ; preds = %block_.L_400e10
  store i64 ptrtoint (%G__0x4018d1_type* @G__0x4018d1 to i64), i64* %RDI.i682, align 8
  store i64 94, i64* %RAX.i758, align 8
  store i64 32, i64* %RCX.i756, align 8
  store i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64* %RDX.i425, align 8
%var_2_1200 = add i64 %var_2_1162, -20
; Matched:%var_2_802:  %var_2_802 = add i64 %var_2_179, 34
; %var_2_1201 = add i64 %var_2_1198, 34
; Matched:\<badref\>:  store i64 %var_2_802, i64* %PC, align 8
; store i64 %var_2_1201, i64* %var_2_3, align 8
%var_2_1202 = inttoptr i64 %var_2_1200 to i32*
%var_2_1203 = load i32, i32* %var_2_1202, align 4
%var_2_1204 = sext i32 %var_2_1203 to i64
; Matched:\<badref\>:  store i64 %var_2_805, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_1204, i64* %RSI.i333, align 8
%var_2_1205 = shl nsw i64 %var_2_1204, 3
%var_2_1206 = add nsw i64 %var_2_1205, 6299904
; Matched:%var_2_808:  %var_2_808 = add i64 %var_2_179, 42
; %var_2_1207 = add i64 %var_2_1198, 42
; Matched:\<badref\>:  store i64 %var_2_808, i64* %PC, align 8
; store i64 %var_2_1207, i64* %var_2_3, align 8
%var_2_1208 = inttoptr i64 %var_2_1206 to i64*
%var_2_1209 = load i64, i64* %var_2_1208, align 8
store i64 %var_2_1209, i64* %RSI.i333, align 8
; Matched:%var_2_811:  %var_2_811 = add i64 %var_2_179, 46
; %var_2_1210 = add i64 %var_2_1198, 46
; Matched:\<badref\>:  store i64 %var_2_811, i64* %PC, align 8
; store i64 %var_2_1210, i64* %var_2_3, align 8
%var_2_1211 = load i32, i32* %var_2_1165, align 4
%var_2_1212 = sext i32 %var_2_1211 to i64
; Matched:\<badref\>:  store i64 %var_2_813, i64* %R8, align 8, !tbaa !1261
; store i64 %var_2_1212, i64* %R8.i143, align 8
%var_2_1213 = add i64 %var_2_1209, %var_2_1212
; Matched:%var_2_815:  %var_2_815 = add i64 %var_2_179, 51
; %var_2_1214 = add i64 %var_2_1198, 51
; Matched:\<badref\>:  store i64 %var_2_815, i64* %PC, align 8
; store i64 %var_2_1214, i64* %var_2_3, align 8
%var_2_1215 = inttoptr i64 %var_2_1213 to i8*
%var_2_1216 = load i8, i8* %var_2_1215, align 1
%var_2_1217 = sext i8 %var_2_1216 to i64
%var_2_1218 = and i64 %var_2_1217, 4294967295
store i64 %var_2_1218, i64* %var_2_923, align 8
; Matched:%var_2_820:  %var_2_820 = add i64 %var_2_179, 55
; %var_2_1219 = add i64 %var_2_1198, 55
; Matched:\<badref\>:  store i64 %var_2_820, i64* %PC, align 8
; store i64 %var_2_1219, i64* %var_2_3, align 8
%var_2_1220 = load i32, i32* %var_2_1202, align 4
%var_2_1221 = sext i32 %var_2_1220 to i64
%var_2_1222 = mul nsw i64 %var_2_1221, 80
; Matched:\<badref\>:  store i64 %var_2_823, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_1222, i64* %RSI.i333, align 8
; Matched:%var_2_928:  %var_2_928 = lshr i64 %var_2_927, 63
; %var_2_1223 = lshr i64 %var_2_1222, 63
%var_2_1224 = add i64 %var_2_1222, ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64)
; Matched:\<badref\>:  store i64 %var_2_825, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1224, i64* %RDX.i425, align 8
%var_2_1225 = icmp ult i64 %var_2_1224, ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64)
; Matched:%var_2_827:  %var_2_827 = icmp ult i64 %var_2_825, %var_2_823
; %var_2_1226 = icmp ult i64 %var_2_1224, %var_2_1222
; Matched:%var_2_750:  %var_2_750 = or i1 %var_2_748, %var_2_749
; %var_2_1227 = or i1 %var_2_1225, %var_2_1226
; Matched:%var_2_829:  %var_2_829 = zext i1 %var_2_828 to i8
; %var_2_1228 = zext i1 %var_2_1227 to i8
; Matched:\<badref\>:  store i8 %var_2_933, i8* %var_2_19, align 1, !tbaa !1265
; store i8 %var_2_1228, i8* %var_2_14, align 1
%var_2_1229 = trunc i64 %var_2_1224 to i32
%var_2_1230 = and i32 %var_2_1229, 248
%var_2_1231 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1230)
%var_2_1232 = trunc i32 %var_2_1231 to i8
%var_2_1233 = and i8 %var_2_1232, 1
%var_2_1234 = xor i8 %var_2_1233, 1
store i8 %var_2_1234, i8* %var_2_21, align 1
; Matched:%var_2_940:  %var_2_940 = xor i64 %var_2_927, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 624)
; %var_2_1235 = xor i64 %var_2_1222, ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64)
; Matched:%var_2_941:  %var_2_941 = xor i64 %var_2_940, %var_2_929
; %var_2_1236 = xor i64 %var_2_1235, %var_2_1224
; Matched:%var_2_760:  %var_2_760 = lshr exact i64 %var_2_759, 4
; %var_2_1237 = lshr i64 %var_2_1236, 4
; Matched:%var_2_761:  %var_2_761 = trunc i64 %var_2_760 to i8
; %var_2_1238 = trunc i64 %var_2_1237 to i8
; Matched:%var_2_762:  %var_2_762 = and i8 %var_2_761, 1
; %var_2_1239 = and i8 %var_2_1238, 1
; Matched:\<badref\>:  store i8 %var_2_840, i8* %var_2_31, align 1, !tbaa !1280
; store i8 %var_2_1239, i8* %var_2_26, align 1
; Matched:%var_2_841:  %var_2_841 = icmp eq i64 %var_2_825, 0
; %var_2_1240 = icmp eq i64 %var_2_1224, 0
; Matched:%var_2_842:  %var_2_842 = zext i1 %var_2_841 to i8
; %var_2_1241 = zext i1 %var_2_1240 to i8
; Matched:\<badref\>:  store i8 %var_2_946, i8* %var_2_34, align 1, !tbaa !1281
; store i8 %var_2_1241, i8* %var_2_29, align 1
%var_2_1242 = lshr i64 %var_2_1224, 63
; Matched:%var_2_766:  %var_2_766 = trunc i64 %var_2_765 to i8
; %var_2_1243 = trunc i64 %var_2_1242 to i8
; Matched:\<badref\>:  store i8 %var_2_766, i8* %var_2_37, align 1, !tbaa !1282
; store i8 %var_2_1243, i8* %var_2_32, align 1
%var_2_1244 = xor i64 %var_2_1242, lshr (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 63)
; Matched:%var_2_846:  %var_2_846 = xor i64 %var_2_843, %var_2_824
; %var_2_1245 = xor i64 %var_2_1242, %var_2_1223
; Matched:%var_2_847:  %var_2_847 = add nuw nsw i64 %var_2_845, %var_2_846
; %var_2_1246 = add nuw nsw i64 %var_2_1244, %var_2_1245
; Matched:%var_2_952:  %var_2_952 = icmp eq i64 %var_2_951, 2
; %var_2_1247 = icmp eq i64 %var_2_1246, 2
; Matched:%var_2_771:  %var_2_771 = zext i1 %var_2_770 to i8
; %var_2_1248 = zext i1 %var_2_1247 to i8
; Matched:\<badref\>:  store i8 %var_2_771, i8* %var_2_43, align 1, !tbaa !1283
; store i8 %var_2_1248, i8* %var_2_38, align 1
%var_2_1249 = load i64, i64* %RBP.i, align 8
%var_2_1250 = add i64 %var_2_1249, -24
; Matched:%var_2_852:  %var_2_852 = add i64 %var_2_179, 66
; %var_2_1251 = add i64 %var_2_1198, 66
; Matched:\<badref\>:  store i64 %var_2_852, i64* %PC, align 8
; store i64 %var_2_1251, i64* %var_2_3, align 8
%var_2_1252 = inttoptr i64 %var_2_1250 to i32*
%var_2_1253 = load i32, i32* %var_2_1252, align 4
%var_2_1254 = sext i32 %var_2_1253 to i64
; Matched:\<badref\>:  store i64 %var_2_855, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_1254, i64* %RSI.i333, align 8
%var_2_1255 = add i64 %var_2_1224, %var_2_1254
; Matched:%var_2_857:  %var_2_857 = add i64 %var_2_179, 71
; %var_2_1256 = add i64 %var_2_1198, 71
; Matched:\<badref\>:  store i64 %var_2_857, i64* %PC, align 8
; store i64 %var_2_1256, i64* %var_2_3, align 8
%var_2_1257 = inttoptr i64 %var_2_1255 to i8*
%var_2_1258 = load i8, i8* %var_2_1257, align 1
; Matched:%var_2_860:  %var_2_860 = sext i8 %var_2_859 to i64
; %var_2_1259 = sext i8 %var_2_1258 to i64
; Matched:%var_2_861:  %var_2_861 = and i64 %var_2_860, 4294967295
; %var_2_1260 = and i64 %var_2_1259, 4294967295
; Matched:\<badref\>:  store i64 %var_2_861, i64* %var_2_1369, align 8, !tbaa !1261
; store i64 %var_2_1260, i64* %var_2_924, align 8
%var_2_1261 = sext i8 %var_2_1216 to i32
%var_2_1262 = sext i8 %var_2_1258 to i32
%var_2_1263 = sub nsw i32 %var_2_1261, %var_2_1262
%var_2_1264 = icmp ult i8 %var_2_1216, %var_2_1258
%var_2_1265 = zext i1 %var_2_1264 to i8
store i8 %var_2_1265, i8* %var_2_14, align 1
%var_2_1266 = and i32 %var_2_1263, 255
%var_2_1267 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1266)
%var_2_1268 = trunc i32 %var_2_1267 to i8
%var_2_1269 = and i8 %var_2_1268, 1
%var_2_1270 = xor i8 %var_2_1269, 1
store i8 %var_2_1270, i8* %var_2_21, align 1
%var_2_1271 = xor i8 %var_2_1258, %var_2_1216
%var_2_1272 = zext i8 %var_2_1271 to i32
%var_2_1273 = xor i32 %var_2_1272, %var_2_1263
%var_2_1274 = lshr i32 %var_2_1273, 4
%var_2_1275 = trunc i32 %var_2_1274 to i8
%var_2_1276 = and i8 %var_2_1275, 1
store i8 %var_2_1276, i8* %var_2_26, align 1
%var_2_1277 = icmp eq i32 %var_2_1263, 0
%var_2_1278 = zext i1 %var_2_1277 to i8
store i8 %var_2_1278, i8* %var_2_29, align 1
%var_2_1279 = lshr i32 %var_2_1263, 31
%var_2_1280 = trunc i32 %var_2_1279 to i8
store i8 %var_2_1280, i8* %var_2_32, align 1
%var_2_1281 = lshr i32 %var_2_1261, 31
%var_2_1282 = lshr i32 %var_2_1262, 31
%var_2_1283 = xor i32 %var_2_1282, %var_2_1281
%var_2_1284 = xor i32 %var_2_1279, %var_2_1281
%var_2_1285 = add nuw nsw i32 %var_2_1284, %var_2_1283
%var_2_1286 = icmp eq i32 %var_2_1285, 2
%var_2_1287 = zext i1 %var_2_1286 to i8
store i8 %var_2_1287, i8* %var_2_38, align 1
%var_2_1288 = load i32, i32* %ECX.i754, align 4
%var_2_1289 = zext i32 %var_2_1288 to i64
%var_2_1290 = load i64, i64* %RAX.i758, align 8
%var_2_1291 = select i1 %var_2_1277, i64 %var_2_1289, i64 %var_2_1290
%var_2_1292 = and i64 %var_2_1291, 4294967295
store i64 %var_2_1292, i64* %RAX.i758, align 8
%var_2_1293 = and i64 %var_2_1291, 4294967295
store i64 %var_2_1293, i64* %RSI.i333, align 8
  store i8 0, i8* %AL.i680, align 1
; Matched:%var_2_895:  %var_2_895 = add i64 %var_2_179, -2108
; %var_2_1294 = add i64 %var_2_1198, -2108
; Matched:%var_2_896:  %var_2_896 = add i64 %var_2_179, 86
; %var_2_1295 = add i64 %var_2_1198, 86
%var_2_1296 = load i64, i64* %var_2_6, align 8
%var_2_1297 = add i64 %var_2_1296, -8
; Matched:%var_2_899:  %var_2_899 = inttoptr i64 %var_2_898 to i64*
; %var_2_1298 = inttoptr i64 %var_2_1297 to i64*
; Matched:\<badref\>:  store i64 %var_2_896, i64* %var_2_899, align 8
; store i64 %var_2_1295, i64* %var_2_1298, align 8
; Matched:\<badref\>:  store i64 %var_2_1414, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1297, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_895, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1294, i64* %var_2_3, align 8
%var_2_1299 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.5)
%var_2_1300 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64* %RDX.i425, align 8
%var_2_1301 = load i64, i64* %RBP.i, align 8
%var_2_1302 = add i64 %var_2_1301, -20
%var_2_1303 = add i64 %var_2_1300, 14
store i64 %var_2_1303, i64* %var_2_3, align 8
%var_2_1304 = inttoptr i64 %var_2_1302 to i32*
%var_2_1305 = load i32, i32* %var_2_1304, align 4
%var_2_1306 = sext i32 %var_2_1305 to i64
; Matched:\<badref\>:  store i64 %var_2_907, i64* %RDI, align 8, !tbaa !1261
; store i64 %var_2_1306, i64* %RDI.i682, align 8
%var_2_1307 = shl nsw i64 %var_2_1306, 3
%var_2_1308 = add nsw i64 %var_2_1307, 6299904
; Matched:%var_2_1468:  %var_2_1468 = add i64 %var_2_1459, 22
; %var_2_1309 = add i64 %var_2_1300, 22
; Matched:\<badref\>:  store i64 %var_2_910, i64* %PC, align 8
; store i64 %var_2_1309, i64* %var_2_3, align 8
%var_2_1310 = inttoptr i64 %var_2_1308 to i64*
%var_2_1311 = load i64, i64* %var_2_1310, align 8
store i64 %var_2_1311, i64* %RDI.i682, align 8
%var_2_1312 = add i64 %var_2_1301, -24
; Matched:%var_2_914:  %var_2_914 = add i64 %var_2_901, 26
; %var_2_1313 = add i64 %var_2_1300, 26
; Matched:\<badref\>:  store i64 %var_2_914, i64* %PC, align 8
; store i64 %var_2_1313, i64* %var_2_3, align 8
%var_2_1314 = inttoptr i64 %var_2_1312 to i32*
%var_2_1315 = load i32, i32* %var_2_1314, align 4
%var_2_1316 = sext i32 %var_2_1315 to i64
; Matched:\<badref\>:  store i64 %var_2_917, i64* %R8, align 8, !tbaa !1261
; store i64 %var_2_1316, i64* %R8.i143, align 8
%var_2_1317 = add i64 %var_2_1311, %var_2_1316
; Matched:%var_2_919:  %var_2_919 = add i64 %var_2_901, 31
; %var_2_1318 = add i64 %var_2_1300, 31
; Matched:\<badref\>:  store i64 %var_2_919, i64* %PC, align 8
; store i64 %var_2_1318, i64* %var_2_3, align 8
%var_2_1319 = inttoptr i64 %var_2_1317 to i8*
%var_2_1320 = load i8, i8* %var_2_1319, align 1
%var_2_1321 = sext i8 %var_2_1320 to i64
%var_2_1322 = and i64 %var_2_1321, 4294967295
store i64 %var_2_1322, i64* %RCX.i756, align 8
; Matched:%var_2_924:  %var_2_924 = add i64 %var_2_901, 35
; %var_2_1323 = add i64 %var_2_1300, 35
; Matched:\<badref\>:  store i64 %var_2_924, i64* %PC, align 8
; store i64 %var_2_1323, i64* %var_2_3, align 8
%var_2_1324 = load i32, i32* %var_2_1304, align 4
%var_2_1325 = sext i32 %var_2_1324 to i64
%var_2_1326 = mul nsw i64 %var_2_1325, 80
; Matched:\<badref\>:  store i64 %var_2_927, i64* %RDI, align 8, !tbaa !1261
; store i64 %var_2_1326, i64* %RDI.i682, align 8
; Matched:%var_2_746:  %var_2_746 = lshr i64 %var_2_745, 63
; %var_2_1327 = lshr i64 %var_2_1326, 63
%var_2_1328 = add i64 %var_2_1326, ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64)
; Matched:\<badref\>:  store i64 %var_2_929, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1328, i64* %RDX.i425, align 8
%var_2_1329 = icmp ult i64 %var_2_1328, ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64)
; Matched:%var_2_931:  %var_2_931 = icmp ult i64 %var_2_929, %var_2_927
; %var_2_1330 = icmp ult i64 %var_2_1328, %var_2_1326
; Matched:%var_2_932:  %var_2_932 = or i1 %var_2_930, %var_2_931
; %var_2_1331 = or i1 %var_2_1329, %var_2_1330
; Matched:%var_2_933:  %var_2_933 = zext i1 %var_2_932 to i8
; %var_2_1332 = zext i1 %var_2_1331 to i8
; Matched:\<badref\>:  store i8 %var_2_829, i8* %var_2_19, align 1, !tbaa !1265
; store i8 %var_2_1332, i8* %var_2_14, align 1
%var_2_1333 = trunc i64 %var_2_1328 to i32
%var_2_1334 = and i32 %var_2_1333, 248
%var_2_1335 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1334)
%var_2_1336 = trunc i32 %var_2_1335 to i8
%var_2_1337 = and i8 %var_2_1336, 1
%var_2_1338 = xor i8 %var_2_1337, 1
store i8 %var_2_1338, i8* %var_2_21, align 1
; Matched:%var_2_836:  %var_2_836 = xor i64 %var_2_823, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 624)
; %var_2_1339 = xor i64 %var_2_1326, ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64)
; Matched:%var_2_759:  %var_2_759 = xor i64 %var_2_758, %var_2_747
; %var_2_1340 = xor i64 %var_2_1339, %var_2_1328
; Matched:%var_2_942:  %var_2_942 = lshr exact i64 %var_2_941, 4
; %var_2_1341 = lshr i64 %var_2_1340, 4
; Matched:%var_2_943:  %var_2_943 = trunc i64 %var_2_942 to i8
; %var_2_1342 = trunc i64 %var_2_1341 to i8
; Matched:%var_2_944:  %var_2_944 = and i8 %var_2_943, 1
; %var_2_1343 = and i8 %var_2_1342, 1
; Matched:\<badref\>:  store i8 %var_2_944, i8* %var_2_31, align 1, !tbaa !1280
; store i8 %var_2_1343, i8* %var_2_26, align 1
; Matched:%var_2_945:  %var_2_945 = icmp eq i64 %var_2_929, 0
; %var_2_1344 = icmp eq i64 %var_2_1328, 0
; Matched:%var_2_764:  %var_2_764 = zext i1 %var_2_763 to i8
; %var_2_1345 = zext i1 %var_2_1344 to i8
; Matched:\<badref\>:  store i8 %var_2_842, i8* %var_2_34, align 1, !tbaa !1281
; store i8 %var_2_1345, i8* %var_2_29, align 1
%var_2_1346 = lshr i64 %var_2_1328, 63
; Matched:%var_2_948:  %var_2_948 = trunc i64 %var_2_947 to i8
; %var_2_1347 = trunc i64 %var_2_1346 to i8
; Matched:\<badref\>:  store i8 %var_2_948, i8* %var_2_37, align 1, !tbaa !1282
; store i8 %var_2_1347, i8* %var_2_32, align 1
%var_2_1348 = xor i64 %var_2_1346, lshr (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 63)
; Matched:%var_2_950:  %var_2_950 = xor i64 %var_2_947, %var_2_928
; %var_2_1349 = xor i64 %var_2_1346, %var_2_1327
; Matched:%var_2_951:  %var_2_951 = add nuw nsw i64 %var_2_949, %var_2_950
; %var_2_1350 = add nuw nsw i64 %var_2_1348, %var_2_1349
; Matched:%var_2_770:  %var_2_770 = icmp eq i64 %var_2_769, 2
; %var_2_1351 = icmp eq i64 %var_2_1350, 2
; Matched:%var_2_953:  %var_2_953 = zext i1 %var_2_952 to i8
; %var_2_1352 = zext i1 %var_2_1351 to i8
; Matched:\<badref\>:  store i8 %var_2_849, i8* %var_2_43, align 1, !tbaa !1283
; store i8 %var_2_1352, i8* %var_2_38, align 1
; Matched:%var_2_954:  %var_2_954 = add i64 %var_2_901, 46
; %var_2_1353 = add i64 %var_2_1300, 46
; Matched:\<badref\>:  store i64 %var_2_954, i64* %PC, align 8
; store i64 %var_2_1353, i64* %var_2_3, align 8
%var_2_1354 = load i32, i32* %var_2_1314, align 4
%var_2_1355 = sext i32 %var_2_1354 to i64
; Matched:\<badref\>:  store i64 %var_2_956, i64* %RDI, align 8, !tbaa !1261
; store i64 %var_2_1355, i64* %RDI.i682, align 8
%var_2_1356 = add i64 %var_2_1328, %var_2_1355
; Matched:%var_2_958:  %var_2_958 = add i64 %var_2_901, 50
; %var_2_1357 = add i64 %var_2_1300, 50
; Matched:\<badref\>:  store i64 %var_2_958, i64* %PC, align 8
; store i64 %var_2_1357, i64* %var_2_3, align 8
%var_2_1358 = inttoptr i64 %var_2_1356 to i8*
%var_2_1359 = load i8, i8* %var_2_1358, align 1
; Matched:%var_2_961:  %var_2_961 = sext i8 %var_2_960 to i64
; %var_2_1360 = sext i8 %var_2_1359 to i64
; Matched:%var_2_962:  %var_2_962 = and i64 %var_2_961, 4294967295
; %var_2_1361 = and i64 %var_2_1360, 4294967295
; Matched:\<badref\>:  store i64 %var_2_962, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_1361, i64* %RSI.i333, align 8
%var_2_1362 = sext i8 %var_2_1320 to i32
%var_2_1363 = sext i8 %var_2_1359 to i32
%var_2_1364 = sub nsw i32 %var_2_1362, %var_2_1363
%var_2_1365 = icmp ult i8 %var_2_1320, %var_2_1359
%var_2_1366 = zext i1 %var_2_1365 to i8
store i8 %var_2_1366, i8* %var_2_14, align 1
%var_2_1367 = and i32 %var_2_1364, 255
%var_2_1368 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1367)
%var_2_1369 = trunc i32 %var_2_1368 to i8
%var_2_1370 = and i8 %var_2_1369, 1
%var_2_1371 = xor i8 %var_2_1370, 1
store i8 %var_2_1371, i8* %var_2_21, align 1
%var_2_1372 = xor i8 %var_2_1359, %var_2_1320
%var_2_1373 = zext i8 %var_2_1372 to i32
%var_2_1374 = xor i32 %var_2_1373, %var_2_1364
%var_2_1375 = lshr i32 %var_2_1374, 4
%var_2_1376 = trunc i32 %var_2_1375 to i8
%var_2_1377 = and i8 %var_2_1376, 1
store i8 %var_2_1377, i8* %var_2_26, align 1
%var_2_1378 = icmp eq i32 %var_2_1364, 0
%var_2_1379 = zext i1 %var_2_1378 to i8
store i8 %var_2_1379, i8* %var_2_29, align 1
%var_2_1380 = lshr i32 %var_2_1364, 31
%var_2_1381 = trunc i32 %var_2_1380 to i8
store i8 %var_2_1381, i8* %var_2_32, align 1
%var_2_1382 = lshr i32 %var_2_1362, 31
%var_2_1383 = lshr i32 %var_2_1363, 31
%var_2_1384 = xor i32 %var_2_1383, %var_2_1382
%var_2_1385 = xor i32 %var_2_1380, %var_2_1382
%var_2_1386 = add nuw nsw i32 %var_2_1385, %var_2_1384
%var_2_1387 = icmp eq i32 %var_2_1386, 2
%var_2_1388 = zext i1 %var_2_1387 to i8
store i8 %var_2_1388, i8* %var_2_38, align 1
; Matched:%var_2_990:  %var_2_990 = load i64, i64* %RBP, align 8
; %var_2_1389 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_991:  %var_2_991 = add i64 %var_2_990, -180
; %var_2_1390 = add i64 %var_2_1389, -180
; Matched:%var_2_992:  %var_2_992 = load i32, i32* %EAX, align 4
; %var_2_1391 = load i32, i32* %EAX.i753, align 4
; Matched:%var_2_993:  %var_2_993 = add i64 %var_2_901, 58
; %var_2_1392 = add i64 %var_2_1300, 58
; Matched:\<badref\>:  store i64 %var_2_993, i64* %PC, align 8
; store i64 %var_2_1392, i64* %var_2_3, align 8
; Matched:%var_2_994:  %var_2_994 = inttoptr i64 %var_2_991 to i32*
; %var_2_1393 = inttoptr i64 %var_2_1390 to i32*
; Matched:\<badref\>:  store i32 %var_2_992, i32* %var_2_994, align 4
; store i32 %var_2_1391, i32* %var_2_1393, align 4
; Matched:%var_2_995:  %var_2_995 = load i64, i64* %PC, align 8
; %var_2_1394 = load i64, i64* %var_2_3, align 8
%var_2_1395 = load i8, i8* %var_2_29, align 1
; Matched:%var_2_997:  %var_2_997 = icmp ne i8 %var_2_996, 0
; %var_2_1396 = icmp ne i8 %var_2_1395, 0
; Matched:  %.v111 = select i1 %var_2_997, i64 15, i64 6
; %.v58 = select i1 %var_2_1396, i64 15, i64 6
; Matched:%var_2_998:  %var_2_998 = add i64 %var_2_995, %.v111
; %var_2_1397 = add i64 %var_2_1394, %.v58
; Matched:\<badref\>:  store i64 %var_2_998, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1397, i64* %var_2_3, align 8
%cmpBr_400eac = icmp eq i8 %var_2_1395, 1
  br i1 %cmpBr_400eac, label %block_.L_400ebb, label %block_400eb2

block_400eb2:                                     ; preds = %block_400e1c
; Matched:%var_2_589:  %var_2_589 = load i64, i64* %RBP, align 8
; %var_2_1398 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_590:  %var_2_590 = add i64 %var_2_589, -32
; %var_2_1399 = add i64 %var_2_1398, -32
; Matched:%var_2_591:  %var_2_591 = add i64 %var_2_998, 3
; %var_2_1400 = add i64 %var_2_1397, 3
; Matched:\<badref\>:  store i64 %var_2_591, i64* %PC, align 8
; store i64 %var_2_1400, i64* %var_2_3, align 8
; Matched:%var_2_592:  %var_2_592 = inttoptr i64 %var_2_590 to i32*
; %var_2_1401 = inttoptr i64 %var_2_1399 to i32*
; Matched:%var_2_593:  %var_2_593 = load i32, i32* %var_2_592, align 4
; %var_2_1402 = load i32, i32* %var_2_1401, align 4
; Matched:%var_2_594:  %var_2_594 = add i32 %var_2_593, 1
; %var_2_1403 = add i32 %var_2_1402, 1
; Matched:%var_2_595:  %var_2_595 = zext i32 %var_2_594 to i64
; %var_2_1404 = zext i32 %var_2_1403 to i64
; Matched:\<badref\>:  store i64 %var_2_595, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1404, i64* %RAX.i758, align 8
; Matched:%var_2_596:  %var_2_596 = icmp eq i32 %var_2_593, -1
; %var_2_1405 = icmp eq i32 %var_2_1402, -1
; Matched:%var_2_597:  %var_2_597 = icmp eq i32 %var_2_594, 0
; %var_2_1406 = icmp eq i32 %var_2_1403, 0
; Matched:%var_2_598:  %var_2_598 = or i1 %var_2_596, %var_2_597
; %var_2_1407 = or i1 %var_2_1405, %var_2_1406
; Matched:%var_2_599:  %var_2_599 = zext i1 %var_2_598 to i8
; %var_2_1408 = zext i1 %var_2_1407 to i8
; Matched:\<badref\>:  store i8 %var_2_599, i8* %var_2_19, align 1, !tbaa !1265
; store i8 %var_2_1408, i8* %var_2_14, align 1
; Matched:%var_2_600:  %var_2_600 = and i32 %var_2_594, 255
; %var_2_1409 = and i32 %var_2_1403, 255
; Matched:%var_2_601:  %var_2_601 = tail call i32 @llvm.ctpop.i32(i32 %var_2_600) #14
; %var_2_1410 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1409)
; Matched:%var_2_602:  %var_2_602 = trunc i32 %var_2_601 to i8
; %var_2_1411 = trunc i32 %var_2_1410 to i8
; Matched:%var_2_603:  %var_2_603 = and i8 %var_2_602, 1
; %var_2_1412 = and i8 %var_2_1411, 1
; Matched:%var_2_604:  %var_2_604 = xor i8 %var_2_603, 1
; %var_2_1413 = xor i8 %var_2_1412, 1
; Matched:\<badref\>:  store i8 %var_2_604, i8* %var_2_26, align 1, !tbaa !1279
; store i8 %var_2_1413, i8* %var_2_21, align 1
; Matched:%var_2_605:  %var_2_605 = xor i32 %var_2_594, %var_2_593
; %var_2_1414 = xor i32 %var_2_1403, %var_2_1402
; Matched:%var_2_606:  %var_2_606 = lshr i32 %var_2_605, 4
; %var_2_1415 = lshr i32 %var_2_1414, 4
; Matched:%var_2_607:  %var_2_607 = trunc i32 %var_2_606 to i8
; %var_2_1416 = trunc i32 %var_2_1415 to i8
; Matched:%var_2_608:  %var_2_608 = and i8 %var_2_607, 1
; %var_2_1417 = and i8 %var_2_1416, 1
; Matched:\<badref\>:  store i8 %var_2_608, i8* %var_2_31, align 1, !tbaa !1280
; store i8 %var_2_1417, i8* %var_2_26, align 1
; Matched:%var_2_609:  %var_2_609 = zext i1 %var_2_597 to i8
; %var_2_1418 = zext i1 %var_2_1406 to i8
; Matched:\<badref\>:  store i8 %var_2_609, i8* %var_2_34, align 1, !tbaa !1281
; store i8 %var_2_1418, i8* %var_2_29, align 1
; Matched:%var_2_610:  %var_2_610 = lshr i32 %var_2_594, 31
; %var_2_1419 = lshr i32 %var_2_1403, 31
; Matched:%var_2_611:  %var_2_611 = trunc i32 %var_2_610 to i8
; %var_2_1420 = trunc i32 %var_2_1419 to i8
; Matched:\<badref\>:  store i8 %var_2_611, i8* %var_2_37, align 1, !tbaa !1282
; store i8 %var_2_1420, i8* %var_2_32, align 1
; Matched:%var_2_612:  %var_2_612 = lshr i32 %var_2_593, 31
; %var_2_1421 = lshr i32 %var_2_1402, 31
; Matched:%var_2_613:  %var_2_613 = xor i32 %var_2_610, %var_2_612
; %var_2_1422 = xor i32 %var_2_1419, %var_2_1421
; Matched:%var_2_614:  %var_2_614 = add nuw nsw i32 %var_2_613, %var_2_610
; %var_2_1423 = add nuw nsw i32 %var_2_1422, %var_2_1419
; Matched:%var_2_615:  %var_2_615 = icmp eq i32 %var_2_614, 2
; %var_2_1424 = icmp eq i32 %var_2_1423, 2
; Matched:%var_2_616:  %var_2_616 = zext i1 %var_2_615 to i8
; %var_2_1425 = zext i1 %var_2_1424 to i8
; Matched:\<badref\>:  store i8 %var_2_616, i8* %var_2_43, align 1, !tbaa !1283
; store i8 %var_2_1425, i8* %var_2_38, align 1
; Matched:%var_2_617:  %var_2_617 = add i64 %var_2_998, 9
; %var_2_1426 = add i64 %var_2_1397, 9
; Matched:\<badref\>:  store i64 %var_2_617, i64* %PC, align 8
; store i64 %var_2_1426, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_594, i32* %var_2_592, align 4
; store i32 %var_2_1403, i32* %var_2_1401, align 4
; Matched:  %.pre93 = load i64, i64* %PC, align 8
; %.pre40 = load i64, i64* %var_2_3, align 8
  br label %block_.L_400ebb

block_.L_400ebb:                                  ; preds = %block_400eb2, %block_400e1c
; Matched:%var_2_678:  %var_2_678 = phi i64 [ %var_2_998, %block_400e1c ], [ %.pre93, %block_400eb2 ]
; %var_2_1427 = phi i64 [ %.pre40, %block_400eb2 ], [ %var_2_1397, %block_400e1c ]
%var_2_1428 = load i64, i64* %RBP.i, align 8
%var_2_1429 = add i64 %var_2_1428, -24
; Matched:%var_2_681:  %var_2_681 = add i64 %var_2_678, 8
; %var_2_1430 = add i64 %var_2_1427, 8
; Matched:\<badref\>:  store i64 %var_2_681, i64* %PC, align 8
; store i64 %var_2_1430, i64* %var_2_3, align 8
%var_2_1431 = inttoptr i64 %var_2_1429 to i32*
%var_2_1432 = load i32, i32* %var_2_1431, align 4
%var_2_1433 = add i32 %var_2_1432, 1
; Matched:%var_2_564:  %var_2_564 = zext i32 %var_2_563 to i64
; %var_2_1434 = zext i32 %var_2_1433 to i64
; Matched:\<badref\>:  store i64 %var_2_685, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1434, i64* %RAX.i758, align 8
; Matched:%var_2_565:  %var_2_565 = icmp eq i32 %var_2_562, -1
; %var_2_1435 = icmp eq i32 %var_2_1432, -1
; Matched:%var_2_531:  %var_2_531 = icmp eq i32 %var_2_528, 0
; %var_2_1436 = icmp eq i32 %var_2_1433, 0
; Matched:%var_2_688:  %var_2_688 = or i1 %var_2_686, %var_2_687
; %var_2_1437 = or i1 %var_2_1435, %var_2_1436
; Matched:%var_2_568:  %var_2_568 = zext i1 %var_2_567 to i8
; %var_2_1438 = zext i1 %var_2_1437 to i8
; Matched:\<badref\>:  store i8 %var_2_533, i8* %var_2_19, align 1, !tbaa !1265
; store i8 %var_2_1438, i8* %var_2_14, align 1
; Matched:%var_2_569:  %var_2_569 = and i32 %var_2_563, 255
; %var_2_1439 = and i32 %var_2_1433, 255
; Matched:%var_2_570:  %var_2_570 = tail call i32 @llvm.ctpop.i32(i32 %var_2_569) #14
; %var_2_1440 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1439)
; Matched:%var_2_571:  %var_2_571 = trunc i32 %var_2_570 to i8
; %var_2_1441 = trunc i32 %var_2_1440 to i8
; Matched:%var_2_572:  %var_2_572 = and i8 %var_2_571, 1
; %var_2_1442 = and i8 %var_2_1441, 1
; Matched:%var_2_538:  %var_2_538 = xor i8 %var_2_537, 1
; %var_2_1443 = xor i8 %var_2_1442, 1
; Matched:\<badref\>:  store i8 %var_2_694, i8* %var_2_26, align 1, !tbaa !1279
; store i8 %var_2_1443, i8* %var_2_21, align 1
; Matched:%var_2_574:  %var_2_574 = xor i32 %var_2_563, %var_2_562
; %var_2_1444 = xor i32 %var_2_1433, %var_2_1432
; Matched:%var_2_540:  %var_2_540 = lshr i32 %var_2_539, 4
; %var_2_1445 = lshr i32 %var_2_1444, 4
; Matched:%var_2_576:  %var_2_576 = trunc i32 %var_2_575 to i8
; %var_2_1446 = trunc i32 %var_2_1445 to i8
; Matched:%var_2_577:  %var_2_577 = and i8 %var_2_576, 1
; %var_2_1447 = and i8 %var_2_1446, 1
; Matched:\<badref\>:  store i8 %var_2_577, i8* %var_2_31, align 1, !tbaa !1280
; store i8 %var_2_1447, i8* %var_2_26, align 1
; Matched:%var_2_578:  %var_2_578 = zext i1 %var_2_566 to i8
; %var_2_1448 = zext i1 %var_2_1436 to i8
; Matched:\<badref\>:  store i8 %var_2_543, i8* %var_2_34, align 1, !tbaa !1281
; store i8 %var_2_1448, i8* %var_2_29, align 1
; Matched:%var_2_700:  %var_2_700 = lshr i32 %var_2_684, 31
; %var_2_1449 = lshr i32 %var_2_1433, 31
; Matched:%var_2_580:  %var_2_580 = trunc i32 %var_2_579 to i8
; %var_2_1450 = trunc i32 %var_2_1449 to i8
; Matched:\<badref\>:  store i8 %var_2_545, i8* %var_2_37, align 1, !tbaa !1282
; store i8 %var_2_1450, i8* %var_2_32, align 1
; Matched:%var_2_581:  %var_2_581 = lshr i32 %var_2_562, 31
; %var_2_1451 = lshr i32 %var_2_1432, 31
; Matched:%var_2_582:  %var_2_582 = xor i32 %var_2_579, %var_2_581
; %var_2_1452 = xor i32 %var_2_1449, %var_2_1451
; Matched:%var_2_583:  %var_2_583 = add nuw nsw i32 %var_2_582, %var_2_579
; %var_2_1453 = add nuw nsw i32 %var_2_1452, %var_2_1449
; Matched:%var_2_584:  %var_2_584 = icmp eq i32 %var_2_583, 2
; %var_2_1454 = icmp eq i32 %var_2_1453, 2
; Matched:%var_2_550:  %var_2_550 = zext i1 %var_2_549 to i8
; %var_2_1455 = zext i1 %var_2_1454 to i8
; Matched:\<badref\>:  store i8 %var_2_585, i8* %var_2_43, align 1, !tbaa !1283
; store i8 %var_2_1455, i8* %var_2_38, align 1
; Matched:%var_2_707:  %var_2_707 = add i64 %var_2_678, 14
; %var_2_1456 = add i64 %var_2_1427, 14
; Matched:\<badref\>:  store i64 %var_2_707, i64* %PC, align 8
; store i64 %var_2_1456, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_563, i32* %var_2_561, align 4
; store i32 %var_2_1433, i32* %var_2_1431, align 4
; Matched:%var_2_708:  %var_2_708 = load i64, i64* %PC, align 8
; %var_2_1457 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_709:  %var_2_709 = add i64 %var_2_708, -185
; %var_2_1458 = add i64 %var_2_1457, -185
; Matched:\<badref\>:  store i64 %var_2_709, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1458, i64* %var_2_3, align 8
  br label %block_.L_400e10

block_.L_400ece:                                  ; preds = %block_.L_400e10
  store i64 ptrtoint (%G__0x4016d6_type* @G__0x4016d6 to i64), i64* %RDI.i682, align 8
  store i8 0, i8* %AL.i680, align 1
; Matched:%var_2_437:  %var_2_437 = add i64 %var_2_179, -2286
; %var_2_1459 = add i64 %var_2_1198, -2286
; Matched:%var_2_438:  %var_2_438 = add i64 %var_2_179, 17
; %var_2_1460 = add i64 %var_2_1198, 17
%var_2_1461 = load i64, i64* %var_2_6, align 8
%var_2_1462 = add i64 %var_2_1461, -8
; Matched:%var_2_441:  %var_2_441 = inttoptr i64 %var_2_440 to i64*
; %var_2_1463 = inttoptr i64 %var_2_1462 to i64*
; Matched:\<badref\>:  store i64 %var_2_438, i64* %var_2_441, align 8
; store i64 %var_2_1460, i64* %var_2_1463, align 8
; Matched:\<badref\>:  store i64 %var_2_1295, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1462, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_437, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1459, i64* %var_2_3, align 8
%var_2_1464 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.5)
; Matched:%var_2_443:  %var_2_443 = load i64, i64* %RBP, align 8
; %var_2_1465 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_444:  %var_2_444 = add i64 %var_2_443, -184
; %var_2_1466 = add i64 %var_2_1465, -184
; Matched:%var_2_445:  %var_2_445 = load i32, i32* %EAX, align 4
; %var_2_1467 = load i32, i32* %EAX.i753, align 4
; Matched:%var_2_239:  %var_2_239 = load i64, i64* %PC, align 8
; %var_2_1468 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1421:  %var_2_1421 = add i64 %var_2_1420, 6
; %var_2_1469 = add i64 %var_2_1468, 6
; Matched:\<badref\>:  store i64 %var_2_1380, i64* %PC, align 8
; store i64 %var_2_1469, i64* %var_2_3, align 8
; Matched:%var_2_448:  %var_2_448 = inttoptr i64 %var_2_444 to i32*
; %var_2_1470 = inttoptr i64 %var_2_1466 to i32*
; Matched:\<badref\>:  store i32 %var_2_445, i32* %var_2_448, align 4
; store i32 %var_2_1467, i32* %var_2_1470, align 4
; Matched:  %.pre94 = load i64, i64* %PC, align 8
; %.pre41 = load i64, i64* %var_2_3, align 8
  br label %block_.L_400ee5

block_.L_400ee5:                                  ; preds = %block_.L_400ece, %block_400d39
; Matched:%var_2_110:  %var_2_110 = phi i64 [ %var_2_797, %block_400d39 ], [ %.pre94, %block_400ece ]
; %var_2_1471 = phi i64 [ %var_2_1010, %block_400d39 ], [ %.pre41, %block_.L_400ece ]
%MEMORY.7 = phi %struct.Memory* [ %var_2_998, %block_400d39 ], [ %var_2_1464, %block_.L_400ece ]
%var_2_1472 = load i64, i64* %RBP.i, align 8
%var_2_1473 = add i64 %var_2_1472, -20
; Matched:%var_2_113:  %var_2_113 = add i64 %var_2_110, 8
; %var_2_1474 = add i64 %var_2_1471, 8
; Matched:\<badref\>:  store i64 %var_2_113, i64* %PC, align 8
; store i64 %var_2_1474, i64* %var_2_3, align 8
%var_2_1475 = inttoptr i64 %var_2_1473 to i32*
%var_2_1476 = load i32, i32* %var_2_1475, align 4
%var_2_1477 = add i32 %var_2_1476, 1
%var_2_1478 = zext i32 %var_2_1477 to i64
; Matched:\<badref\>:  store i64 %var_2_1182, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1478, i64* %RAX.i758, align 8
; Matched:%var_2_1432:  %var_2_1432 = icmp eq i32 %var_2_1429, -1
; %var_2_1479 = icmp eq i32 %var_2_1476, -1
; Matched:%var_2_1184:  %var_2_1184 = icmp eq i32 %var_2_1181, 0
; %var_2_1480 = icmp eq i32 %var_2_1477, 0
; Matched:%var_2_1434:  %var_2_1434 = or i1 %var_2_1432, %var_2_1433
; %var_2_1481 = or i1 %var_2_1479, %var_2_1480
; Matched:%var_2_1186:  %var_2_1186 = zext i1 %var_2_1185 to i8
; %var_2_1482 = zext i1 %var_2_1481 to i8
; Matched:\<badref\>:  store i8 %var_2_121, i8* %var_2_19, align 1, !tbaa !1265
; store i8 %var_2_1482, i8* %var_2_14, align 1
; Matched:%var_2_1187:  %var_2_1187 = and i32 %var_2_1181, 255
; %var_2_1483 = and i32 %var_2_1477, 255
; Matched:%var_2_123:  %var_2_123 = tail call i32 @llvm.ctpop.i32(i32 %var_2_122) #14
; %var_2_1484 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1483)
; Matched:%var_2_1189:  %var_2_1189 = trunc i32 %var_2_1188 to i8
; %var_2_1485 = trunc i32 %var_2_1484 to i8
; Matched:%var_2_1439:  %var_2_1439 = and i8 %var_2_1438, 1
; %var_2_1486 = and i8 %var_2_1485, 1
; Matched:%var_2_1191:  %var_2_1191 = xor i8 %var_2_1190, 1
; %var_2_1487 = xor i8 %var_2_1486, 1
; Matched:\<badref\>:  store i8 %var_2_1440, i8* %var_2_26, align 1, !tbaa !1279
; store i8 %var_2_1487, i8* %var_2_21, align 1
; Matched:%var_2_1192:  %var_2_1192 = xor i32 %var_2_1181, %var_2_1180
; %var_2_1488 = xor i32 %var_2_1477, %var_2_1476
; Matched:%var_2_128:  %var_2_128 = lshr i32 %var_2_127, 4
; %var_2_1489 = lshr i32 %var_2_1488, 4
; Matched:%var_2_1194:  %var_2_1194 = trunc i32 %var_2_1193 to i8
; %var_2_1490 = trunc i32 %var_2_1489 to i8
; Matched:%var_2_130:  %var_2_130 = and i8 %var_2_129, 1
; %var_2_1491 = and i8 %var_2_1490, 1
; Matched:\<badref\>:  store i8 %var_2_1195, i8* %var_2_31, align 1, !tbaa !1280
; store i8 %var_2_1491, i8* %var_2_26, align 1
; Matched:%var_2_1445:  %var_2_1445 = zext i1 %var_2_1433 to i8
; %var_2_1492 = zext i1 %var_2_1480 to i8
; Matched:\<badref\>:  store i8 %var_2_1196, i8* %var_2_34, align 1, !tbaa !1281
; store i8 %var_2_1492, i8* %var_2_29, align 1
; Matched:%var_2_1446:  %var_2_1446 = lshr i32 %var_2_1430, 31
; %var_2_1493 = lshr i32 %var_2_1477, 31
; Matched:%var_2_1198:  %var_2_1198 = trunc i32 %var_2_1197 to i8
; %var_2_1494 = trunc i32 %var_2_1493 to i8
; Matched:\<badref\>:  store i8 %var_2_133, i8* %var_2_37, align 1, !tbaa !1282
; store i8 %var_2_1494, i8* %var_2_32, align 1
; Matched:%var_2_1199:  %var_2_1199 = lshr i32 %var_2_1180, 31
; %var_2_1495 = lshr i32 %var_2_1476, 31
; Matched:%var_2_135:  %var_2_135 = xor i32 %var_2_132, %var_2_134
; %var_2_1496 = xor i32 %var_2_1493, %var_2_1495
; Matched:%var_2_1201:  %var_2_1201 = add nuw nsw i32 %var_2_1200, %var_2_1197
; %var_2_1497 = add nuw nsw i32 %var_2_1496, %var_2_1493
; Matched:%var_2_1451:  %var_2_1451 = icmp eq i32 %var_2_1450, 2
; %var_2_1498 = icmp eq i32 %var_2_1497, 2
; Matched:%var_2_1203:  %var_2_1203 = zext i1 %var_2_1202 to i8
; %var_2_1499 = zext i1 %var_2_1498 to i8
; Matched:\<badref\>:  store i8 %var_2_1452, i8* %var_2_43, align 1, !tbaa !1283
; store i8 %var_2_1499, i8* %var_2_38, align 1
; Matched:%var_2_139:  %var_2_139 = add i64 %var_2_110, 14
; %var_2_1500 = add i64 %var_2_1471, 14
; Matched:\<badref\>:  store i64 %var_2_139, i64* %PC, align 8
; store i64 %var_2_1500, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_1181, i32* %var_2_1179, align 4
; store i32 %var_2_1477, i32* %var_2_1475, align 4
; Matched:%var_2_140:  %var_2_140 = load i64, i64* %PC, align 8
; %var_2_1501 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_141:  %var_2_141 = add i64 %var_2_140, -452
; %var_2_1502 = add i64 %var_2_1501, -452
; Matched:\<badref\>:  store i64 %var_2_141, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1502, i64* %var_2_3, align 8
  br label %block_.L_400d2f

block_.L_400ef8:                                  ; preds = %block_.L_400d2f
%var_2_1503 = add i64 %var_2_926, -32
; Matched:%var_2_1131:  %var_2_1131 = add i64 %var_2_647, 4
; %var_2_1504 = add i64 %var_2_954, 4
; Matched:\<badref\>:  store i64 %var_2_1131, i64* %PC, align 8
; store i64 %var_2_1504, i64* %var_2_3, align 8
%var_2_1505 = inttoptr i64 %var_2_1503 to i32*
%var_2_1506 = load i32, i32* %var_2_1505, align 4
store i8 0, i8* %var_2_14, align 1
; Matched:%var_2_1134:  %var_2_1134 = and i32 %var_2_1133, 255
; %var_2_1507 = and i32 %var_2_1506, 255
; Matched:%var_2_1135:  %var_2_1135 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1134) #14
; %var_2_1508 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1507)
; Matched:%var_2_1136:  %var_2_1136 = trunc i32 %var_2_1135 to i8
; %var_2_1509 = trunc i32 %var_2_1508 to i8
; Matched:%var_2_1137:  %var_2_1137 = and i8 %var_2_1136, 1
; %var_2_1510 = and i8 %var_2_1509, 1
; Matched:%var_2_1138:  %var_2_1138 = xor i8 %var_2_1137, 1
; %var_2_1511 = xor i8 %var_2_1510, 1
; Matched:\<badref\>:  store i8 %var_2_1138, i8* %var_2_26, align 1, !tbaa !1279
; store i8 %var_2_1511, i8* %var_2_21, align 1
store i8 0, i8* %var_2_26, align 1
%var_2_1512 = icmp eq i32 %var_2_1506, 0
; Matched:%var_2_1140:  %var_2_1140 = zext i1 %var_2_1139 to i8
; %var_2_1513 = zext i1 %var_2_1512 to i8
; Matched:\<badref\>:  store i8 %var_2_1140, i8* %var_2_34, align 1, !tbaa !1281
; store i8 %var_2_1513, i8* %var_2_29, align 1
%var_2_1514 = lshr i32 %var_2_1506, 31
%var_2_1515 = trunc i32 %var_2_1514 to i8
; Matched:\<badref\>:  store i8 %var_2_1142, i8* %var_2_37, align 1, !tbaa !1282
; store i8 %var_2_1515, i8* %var_2_32, align 1
store i8 0, i8* %var_2_38, align 1
%var_2_1516 = icmp ne i8 %var_2_1515, 0
%var_2_1517 = or i1 %var_2_1512, %var_2_1516
; Matched:  %.v100 = select i1 %var_2_1144, i64 72, i64 10
; %.v47 = select i1 %var_2_1517, i64 72, i64 10
; Matched:%var_2_1145:  %var_2_1145 = add i64 %var_2_647, %.v100
; %var_2_1518 = add i64 %var_2_954, %.v47
; Matched:%var_2_1146:  %var_2_1146 = add i64 %var_2_1145, 10
; %var_2_1519 = add i64 %var_2_1518, 10
; Matched:\<badref\>:  store i64 %var_2_1146, i64* %PC, align 8
; store i64 %var_2_1519, i64* %var_2_3, align 8
br i1 %var_2_1517, label %block_.L_400f40, label %block_400f02

block_400f02:                                     ; preds = %block_.L_400ef8
  store i64 ptrtoint (%G__0x4018d6_type* @G__0x4018d6 to i64), i64* %RDI.i682, align 8
  store i64 ptrtoint (%G__0x4016d7_type* @G__0x4016d7 to i64), i64* %RAX.i758, align 8
  store i64 ptrtoint (%G__0x4018d4_type* @G__0x4018d4 to i64), i64* %RCX.i756, align 8
; Matched:%var_2_1382:  %var_2_1382 = add i64 %var_2_1145, 33
; %var_2_1520 = add i64 %var_2_1518, 33
; Matched:\<badref\>:  store i64 %var_2_1382, i64* %PC, align 8
; store i64 %var_2_1520, i64* %var_2_3, align 8
; Matched:%var_2_1383:  %var_2_1383 = load i32, i32* %var_2_1132, align 4
; %var_2_1521 = load i32, i32* %var_2_1505, align 4
; Matched:%var_2_1384:  %var_2_1384 = zext i32 %var_2_1383 to i64
; %var_2_1522 = zext i32 %var_2_1521 to i64
; Matched:\<badref\>:  store i64 %var_2_1384, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_1522, i64* %RSI.i333, align 8
; Matched:%var_2_1385:  %var_2_1385 = add i64 %var_2_1145, 37
; %var_2_1523 = add i64 %var_2_1518, 37
; Matched:\<badref\>:  store i64 %var_2_1385, i64* %PC, align 8
; store i64 %var_2_1523, i64* %var_2_3, align 8
; Matched:%var_2_1386:  %var_2_1386 = load i32, i32* %var_2_1132, align 4
; %var_2_1524 = load i32, i32* %var_2_1505, align 4
; Matched:%var_2_1387:  %var_2_1387 = add i32 %var_2_1386, -1
; %var_2_1525 = add i32 %var_2_1524, -1
; Matched:%var_2_1388:  %var_2_1388 = icmp eq i32 %var_2_1386, 0
; %var_2_1526 = icmp eq i32 %var_2_1524, 0
; Matched:%var_2_1389:  %var_2_1389 = zext i1 %var_2_1388 to i8
; %var_2_1527 = zext i1 %var_2_1526 to i8
; Matched:\<badref\>:  store i8 %var_2_1389, i8* %var_2_19, align 1, !tbaa !1265
; store i8 %var_2_1527, i8* %var_2_14, align 1
; Matched:%var_2_1390:  %var_2_1390 = and i32 %var_2_1387, 255
; %var_2_1528 = and i32 %var_2_1525, 255
; Matched:%var_2_1391:  %var_2_1391 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1390) #14
; %var_2_1529 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1528)
; Matched:%var_2_1392:  %var_2_1392 = trunc i32 %var_2_1391 to i8
; %var_2_1530 = trunc i32 %var_2_1529 to i8
; Matched:%var_2_1393:  %var_2_1393 = and i8 %var_2_1392, 1
; %var_2_1531 = and i8 %var_2_1530, 1
; Matched:%var_2_1394:  %var_2_1394 = xor i8 %var_2_1393, 1
; %var_2_1532 = xor i8 %var_2_1531, 1
; Matched:\<badref\>:  store i8 %var_2_1394, i8* %var_2_26, align 1, !tbaa !1279
; store i8 %var_2_1532, i8* %var_2_21, align 1
; Matched:%var_2_1395:  %var_2_1395 = xor i32 %var_2_1387, %var_2_1386
; %var_2_1533 = xor i32 %var_2_1525, %var_2_1524
; Matched:%var_2_1396:  %var_2_1396 = lshr i32 %var_2_1395, 4
; %var_2_1534 = lshr i32 %var_2_1533, 4
; Matched:%var_2_1397:  %var_2_1397 = trunc i32 %var_2_1396 to i8
; %var_2_1535 = trunc i32 %var_2_1534 to i8
; Matched:%var_2_1398:  %var_2_1398 = and i8 %var_2_1397, 1
; %var_2_1536 = and i8 %var_2_1535, 1
; Matched:\<badref\>:  store i8 %var_2_1398, i8* %var_2_31, align 1, !tbaa !1280
; store i8 %var_2_1536, i8* %var_2_26, align 1
; Matched:%var_2_1399:  %var_2_1399 = icmp eq i32 %var_2_1387, 0
; %var_2_1537 = icmp eq i32 %var_2_1525, 0
; Matched:%var_2_1400:  %var_2_1400 = zext i1 %var_2_1399 to i8
; %var_2_1538 = zext i1 %var_2_1537 to i8
; Matched:\<badref\>:  store i8 %var_2_1400, i8* %var_2_34, align 1, !tbaa !1281
; store i8 %var_2_1538, i8* %var_2_29, align 1
; Matched:%var_2_1401:  %var_2_1401 = lshr i32 %var_2_1387, 31
; %var_2_1539 = lshr i32 %var_2_1525, 31
; Matched:%var_2_1402:  %var_2_1402 = trunc i32 %var_2_1401 to i8
; %var_2_1540 = trunc i32 %var_2_1539 to i8
; Matched:\<badref\>:  store i8 %var_2_1402, i8* %var_2_37, align 1, !tbaa !1282
; store i8 %var_2_1540, i8* %var_2_32, align 1
; Matched:%var_2_1403:  %var_2_1403 = lshr i32 %var_2_1386, 31
; %var_2_1541 = lshr i32 %var_2_1524, 31
; Matched:%var_2_1404:  %var_2_1404 = xor i32 %var_2_1401, %var_2_1403
; %var_2_1542 = xor i32 %var_2_1539, %var_2_1541
; Matched:%var_2_1405:  %var_2_1405 = add nuw nsw i32 %var_2_1404, %var_2_1403
; %var_2_1543 = add nuw nsw i32 %var_2_1542, %var_2_1541
; Matched:%var_2_1406:  %var_2_1406 = icmp eq i32 %var_2_1405, 2
; %var_2_1544 = icmp eq i32 %var_2_1543, 2
; Matched:%var_2_1407:  %var_2_1407 = zext i1 %var_2_1406 to i8
; %var_2_1545 = zext i1 %var_2_1544 to i8
; Matched:\<badref\>:  store i8 %var_2_1407, i8* %var_2_43, align 1, !tbaa !1283
; store i8 %var_2_1545, i8* %var_2_38, align 1
; Matched:%var_2_1408:  %var_2_1408 = icmp ne i8 %var_2_1402, 0
; %var_2_1546 = icmp ne i8 %var_2_1540, 0
; Matched:%var_2_1409:  %var_2_1409 = xor i1 %var_2_1408, %var_2_1406
; %var_2_1547 = xor i1 %var_2_1546, %var_2_1544
; Matched:  %.demorgan = or i1 %var_2_1399, %var_2_1409
; %.demorgan = or i1 %var_2_1537, %var_2_1547
; Matched:%var_2_1410:  %var_2_1410 = select i1 %.demorgan, i64 add (i64 ptrtoint (%seg_4015f0__rodata_type* @seg_4015f0__rodata to i64), i64 231), i64 add (i64 ptrtoint (%seg_4015f0__rodata_type* @seg_4015f0__rodata to i64), i64 740)
; %var_2_1548 = select i1 %.demorgan, i64 ptrtoint (%G__0x4016d7_type* @G__0x4016d7 to i64), i64 ptrtoint (%G__0x4018d4_type* @G__0x4018d4 to i64)
; Matched:\<badref\>:  store i64 %var_2_1410, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1548, i64* %RAX.i758, align 8
; Matched:\<badref\>:  store i64 %var_2_1410, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1548, i64* %RDX.i425, align 8
  store i8 0, i8* %AL.i680, align 1
; Matched:%var_2_1411:  %var_2_1411 = add i64 %var_2_1145, -2338
; %var_2_1549 = add i64 %var_2_1518, -2338
; Matched:%var_2_1412:  %var_2_1412 = add i64 %var_2_1145, 51
; %var_2_1550 = add i64 %var_2_1518, 51
%var_2_1551 = load i64, i64* %var_2_6, align 8
%var_2_1552 = add i64 %var_2_1551, -8
; Matched:%var_2_1415:  %var_2_1415 = inttoptr i64 %var_2_1414 to i64*
; %var_2_1553 = inttoptr i64 %var_2_1552 to i64*
; Matched:\<badref\>:  store i64 %var_2_1412, i64* %var_2_1415, align 8
; store i64 %var_2_1550, i64* %var_2_1553, align 8
; Matched:\<badref\>:  store i64 %var_2_1456, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1552, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1411, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1549, i64* %var_2_3, align 8
%var_2_1554 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.4)
; Matched:%var_2_1417:  %var_2_1417 = load i64, i64* %RBP, align 8
; %var_2_1555 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1418:  %var_2_1418 = add i64 %var_2_1417, -188
; %var_2_1556 = add i64 %var_2_1555, -188
; Matched:%var_2_1419:  %var_2_1419 = load i32, i32* %EAX, align 4
; %var_2_1557 = load i32, i32* %EAX.i753, align 4
; Matched:%var_2_446:  %var_2_446 = load i64, i64* %PC, align 8
; %var_2_1558 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_447:  %var_2_447 = add i64 %var_2_446, 6
; %var_2_1559 = add i64 %var_2_1558, 6
; Matched:\<badref\>:  store i64 %var_2_447, i64* %PC, align 8
; store i64 %var_2_1559, i64* %var_2_3, align 8
; Matched:%var_2_1422:  %var_2_1422 = inttoptr i64 %var_2_1418 to i32*
; %var_2_1560 = inttoptr i64 %var_2_1556 to i32*
; Matched:\<badref\>:  store i32 %var_2_1419, i32* %var_2_1422, align 4
; store i32 %var_2_1557, i32* %var_2_1560, align 4
%var_2_1561 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1424:  %var_2_1424 = add i64 %var_2_1423, 28
; %var_2_1562 = add i64 %var_2_1561, 28
; Matched:\<badref\>:  store i64 %var_2_1473, i64* %PC, align 8
; store i64 %var_2_1562, i64* %var_2_3, align 8
  br label %block_.L_400f57

block_.L_400f40:                                  ; preds = %block_.L_400ef8
  store i64 ptrtoint (%G__0x401906_type* @G__0x401906 to i64), i64* %RDI.i682, align 8
  store i8 0, i8* %AL.i680, align 1
; Matched:%var_2_1370:  %var_2_1370 = add i64 %var_2_1145, -2400
; %var_2_1563 = add i64 %var_2_1518, -2400
; Matched:%var_2_1371:  %var_2_1371 = add i64 %var_2_1145, 17
; %var_2_1564 = add i64 %var_2_1518, 17
%var_2_1565 = load i64, i64* %var_2_6, align 8
%var_2_1566 = add i64 %var_2_1565, -8
; Matched:%var_2_1374:  %var_2_1374 = inttoptr i64 %var_2_1373 to i64*
; %var_2_1567 = inttoptr i64 %var_2_1566 to i64*
; Matched:\<badref\>:  store i64 %var_2_1371, i64* %var_2_1374, align 8
; store i64 %var_2_1564, i64* %var_2_1567, align 8
; Matched:\<badref\>:  store i64 %var_2_273, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1566, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1370, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1563, i64* %var_2_3, align 8
%var_2_1568 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.4)
; Matched:%var_2_1376:  %var_2_1376 = load i64, i64* %RBP, align 8
; %var_2_1569 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1377:  %var_2_1377 = add i64 %var_2_1376, -192
; %var_2_1570 = add i64 %var_2_1569, -192
; Matched:%var_2_1378:  %var_2_1378 = load i32, i32* %EAX, align 4
; %var_2_1571 = load i32, i32* %EAX.i753, align 4
; Matched:%var_2_1379:  %var_2_1379 = load i64, i64* %PC, align 8
; %var_2_1572 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_249:  %var_2_249 = add i64 %var_2_239, 6
; %var_2_1573 = add i64 %var_2_1572, 6
; Matched:\<badref\>:  store i64 %var_2_1366, i64* %PC, align 8
; store i64 %var_2_1573, i64* %var_2_3, align 8
; Matched:%var_2_1381:  %var_2_1381 = inttoptr i64 %var_2_1377 to i32*
; %var_2_1574 = inttoptr i64 %var_2_1570 to i32*
; Matched:\<badref\>:  store i32 %var_2_1378, i32* %var_2_1381, align 4
; store i32 %var_2_1571, i32* %var_2_1574, align 4
; Matched:  %.pre91 = load i64, i64* %PC, align 8
; %.pre38 = load i64, i64* %var_2_3, align 8
  br label %block_.L_400f57

block_.L_400f57:                                  ; preds = %block_.L_400f40, %block_400f02
; Matched:%var_2_405:  %var_2_405 = phi i64 [ %.pre91, %block_400f40 ], [ %var_2_1424, %block_400f02 ]
; %var_2_1575 = phi i64 [ %.pre38, %block_.L_400f40 ], [ %var_2_1562, %block_400f02 ]
%MEMORY.8 = phi %struct.Memory* [ %var_2_1568, %block_.L_400f40 ], [ %var_2_1554, %block_400f02 ]
  store i64 0, i64* %RAX.i758, align 8
; Matched:%var_2_406:  %var_2_406 = load i64, i64* %RSP, align 8
; %var_2_1576 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_407:  %var_2_407 = add i64 %var_2_406, 192
; %var_2_1577 = add i64 %var_2_1576, 192
; Matched:\<badref\>:  store i64 %var_2_407, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1577, i64* %var_2_6, align 8
; Matched:%var_2_408:  %var_2_408 = icmp ugt i64 %var_2_406, -193
; %var_2_1578 = icmp ugt i64 %var_2_1576, -193
; Matched:%var_2_409:  %var_2_409 = zext i1 %var_2_408 to i8
; %var_2_1579 = zext i1 %var_2_1578 to i8
; Matched:\<badref\>:  store i8 %var_2_409, i8* %var_2_19, align 1, !tbaa !1265
; store i8 %var_2_1579, i8* %var_2_14, align 1
; Matched:%var_2_410:  %var_2_410 = trunc i64 %var_2_407 to i32
; %var_2_1580 = trunc i64 %var_2_1577 to i32
; Matched:%var_2_411:  %var_2_411 = and i32 %var_2_410, 255
; %var_2_1581 = and i32 %var_2_1580, 255
; Matched:%var_2_412:  %var_2_412 = tail call i32 @llvm.ctpop.i32(i32 %var_2_411) #14
; %var_2_1582 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1581)
; Matched:%var_2_413:  %var_2_413 = trunc i32 %var_2_412 to i8
; %var_2_1583 = trunc i32 %var_2_1582 to i8
; Matched:%var_2_414:  %var_2_414 = and i8 %var_2_413, 1
; %var_2_1584 = and i8 %var_2_1583, 1
; Matched:%var_2_415:  %var_2_415 = xor i8 %var_2_414, 1
; %var_2_1585 = xor i8 %var_2_1584, 1
; Matched:\<badref\>:  store i8 %var_2_415, i8* %var_2_26, align 1, !tbaa !1279
; store i8 %var_2_1585, i8* %var_2_21, align 1
; Matched:%var_2_416:  %var_2_416 = xor i64 %var_2_407, %var_2_406
; %var_2_1586 = xor i64 %var_2_1577, %var_2_1576
; Matched:%var_2_417:  %var_2_417 = lshr i64 %var_2_416, 4
; %var_2_1587 = lshr i64 %var_2_1586, 4
; Matched:%var_2_418:  %var_2_418 = trunc i64 %var_2_417 to i8
; %var_2_1588 = trunc i64 %var_2_1587 to i8
; Matched:%var_2_419:  %var_2_419 = and i8 %var_2_418, 1
; %var_2_1589 = and i8 %var_2_1588, 1
; Matched:\<badref\>:  store i8 %var_2_419, i8* %var_2_31, align 1, !tbaa !1280
; store i8 %var_2_1589, i8* %var_2_26, align 1
; Matched:%var_2_420:  %var_2_420 = icmp eq i64 %var_2_407, 0
; %var_2_1590 = icmp eq i64 %var_2_1577, 0
; Matched:%var_2_421:  %var_2_421 = zext i1 %var_2_420 to i8
; %var_2_1591 = zext i1 %var_2_1590 to i8
; Matched:\<badref\>:  store i8 %var_2_421, i8* %var_2_34, align 1, !tbaa !1281
; store i8 %var_2_1591, i8* %var_2_29, align 1
; Matched:%var_2_422:  %var_2_422 = lshr i64 %var_2_407, 63
; %var_2_1592 = lshr i64 %var_2_1577, 63
; Matched:%var_2_423:  %var_2_423 = trunc i64 %var_2_422 to i8
; %var_2_1593 = trunc i64 %var_2_1592 to i8
; Matched:\<badref\>:  store i8 %var_2_423, i8* %var_2_37, align 1, !tbaa !1282
; store i8 %var_2_1593, i8* %var_2_32, align 1
; Matched:%var_2_424:  %var_2_424 = lshr i64 %var_2_406, 63
; %var_2_1594 = lshr i64 %var_2_1576, 63
; Matched:%var_2_425:  %var_2_425 = xor i64 %var_2_422, %var_2_424
; %var_2_1595 = xor i64 %var_2_1592, %var_2_1594
; Matched:%var_2_426:  %var_2_426 = add nuw nsw i64 %var_2_425, %var_2_422
; %var_2_1596 = add nuw nsw i64 %var_2_1595, %var_2_1592
; Matched:%var_2_427:  %var_2_427 = icmp eq i64 %var_2_426, 2
; %var_2_1597 = icmp eq i64 %var_2_1596, 2
; Matched:%var_2_428:  %var_2_428 = zext i1 %var_2_427 to i8
; %var_2_1598 = zext i1 %var_2_1597 to i8
; Matched:\<badref\>:  store i8 %var_2_428, i8* %var_2_43, align 1, !tbaa !1283
; store i8 %var_2_1598, i8* %var_2_38, align 1
; Matched:%var_2_429:  %var_2_429 = add i64 %var_2_405, 10
; %var_2_1599 = add i64 %var_2_1575, 10
; Matched:\<badref\>:  store i64 %var_2_429, i64* %PC, align 8
; store i64 %var_2_1599, i64* %var_2_3, align 8
; Matched:%var_2_430:  %var_2_430 = add i64 %var_2_406, 200
; %var_2_1600 = add i64 %var_2_1576, 200
; Matched:%var_2_431:  %var_2_431 = inttoptr i64 %var_2_407 to i64*
; %var_2_1601 = inttoptr i64 %var_2_1577 to i64*
; Matched:%var_2_432:  %var_2_432 = load i64, i64* %var_2_431, align 8
; %var_2_1602 = load i64, i64* %var_2_1601, align 8
; Matched:\<badref\>:  store i64 %var_2_432, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_1602, i64* %RBP.i, align 8
; Matched:\<badref\>:  store i64 %var_2_430, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1600, i64* %var_2_6, align 8
; Matched:%var_2_433:  %var_2_433 = add i64 %var_2_405, 11
; %var_2_1603 = add i64 %var_2_1575, 11
; Matched:\<badref\>:  store i64 %var_2_433, i64* %PC, align 8
; store i64 %var_2_1603, i64* %var_2_3, align 8
; Matched:%var_2_434:  %var_2_434 = inttoptr i64 %var_2_430 to i64*
; %var_2_1604 = inttoptr i64 %var_2_1600 to i64*
; Matched:%var_2_435:  %var_2_435 = load i64, i64* %var_2_434, align 8
; %var_2_1605 = load i64, i64* %var_2_1604, align 8
; Matched:\<badref\>:  store i64 %var_2_435, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1605, i64* %var_2_3, align 8
; Matched:%var_2_436:  %var_2_436 = add i64 %var_2_406, 208
; %var_2_1606 = add i64 %var_2_1576, 208
; Matched:\<badref\>:  store i64 %var_2_436, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1606, i64* %var_2_6, align 8
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
define %struct.Memory* @routine_subq__0xc0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -192
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 192
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
define %struct.Memory* @routine_movsd_0xea5__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xea5__rip__type* @G_0xea5__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0xea5__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xea5__rip__type* @G_0xea5__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0xea5__rip____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xea5__rip__type* @G_0xea5__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0xea5__rip____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xea5__rip__type* @G_0xea5__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0xea5__rip____xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xea5__rip__type* @G_0xea5__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0xea5__rip____xmm5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xea5__rip__type* @G_0xea5__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0xea5__rip____xmm6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xea5__rip__type* @G_0xea5__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0xea5__rip____xmm7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xea5__rip__type* @G_0xea5__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0xea4__rip____xmm8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xea4__rip__type* @G_0xea4__rip_ to i64)
  %5 = add i64 %3, 9
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 8, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 8, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
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
define %struct.Memory* @routine_movsd__xmm8__0x602158(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 8, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x602158_type* @G_0x602158 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm7__0x602160(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x602160_type* @G_0x602160 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm6__0x602168(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x602168_type* @G_0x602168 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm5__0x602170(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x602170_type* @G_0x602170 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm4__0x602178(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x602178_type* @G_0x602178 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm3__0x602180(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x602180_type* @G_0x602180 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm2__0x602188(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x602188_type* @G_0x602188 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__0x602190(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x602190_type* @G_0x602190 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xf4240__0x602070(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1000000, i32* bitcast (%G_0x602070_type* @G_0x602070 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x602198(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x602198_type* @G_0x602198 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__0x4__0x6021a0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i16 4, i16* bitcast (%G_0x6021a0_type* @G_0x6021a0 to i16*), align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_0x6021a0___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i16, i16* bitcast (%G_0x6021a0_type* @G_0x6021a0 to i16*), align 8
  %6 = sext i16 %5 to i64
  %7 = and i64 %6, 4294967295
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %EAX, align 4
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = sub i32 %5, %6
  %10 = icmp ult i32 %5, %6
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
  %19 = xor i32 %6, %5
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
  %31 = lshr i32 %5, 31
  %32 = lshr i32 %6, 31
  %33 = xor i32 %32, %31
  %34 = xor i32 %28, %31
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_40089b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -4
  %10 = icmp ult i32 %8, 4
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
define %struct.Memory* @routine_jge_.L_400888(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x6021b0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6021b0_type* @G__0x6021b0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x602080___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x602080_type* @G__0x602080 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 5
  store i64 %6, i64* %RDX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 59
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 224
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 58
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rdx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RCX, align 8
  %8 = icmp ult i64 %7, %3
  %9 = icmp ult i64 %7, %4
  %10 = or i1 %8, %9
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %7 to i32
  %14 = and i32 %13, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i64 %4, %3
  %21 = xor i64 %20, %7
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i64 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %7, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %3, 63
  %33 = lshr i64 %4, 63
  %34 = xor i64 %29, %32
  %35 = xor i64 %29, %33
  %36 = add nuw nsw i64 %34, %35
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %10, i64* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to double*
  store double 0.000000e+00, double* %13, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
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
define %struct.Memory* @routine_movslq__esi___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x28___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 40
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 248
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rcx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RAX, align 8
  %8 = icmp ult i64 %7, %3
  %9 = icmp ult i64 %7, %4
  %10 = or i1 %8, %9
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %7 to i32
  %14 = and i32 %13, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i64 %4, %3
  %21 = xor i64 %20, %7
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i64 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %7, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %3, 63
  %33 = lshr i64 %4, 63
  %34 = xor i64 %29, %32
  %35 = xor i64 %29, %33
  %36 = add nuw nsw i64 %34, %35
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
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
define %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40082a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40088d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_400810(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x401668___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x401668_type* @G__0x401668 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movq__0x40169e___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x40169e_type* @G__0x40169e to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x602070___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x602070_type* @G_0x602070 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq__0x4016d8___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4016d8_type* @G__0x4016d8 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0xd67__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xd67__rip__type* @G_0xd67__rip_ to i64)
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
define %struct.Memory* @routine_cvtsi2sdl_0x602070___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = load i32, i32* bitcast (%G_0x602070_type* @G_0x602070 to i32*), align 8
  %7 = sitofp i32 %6 to double
  %8 = bitcast %union.VectorReg* %3 to double*
  store double %7, double* %8, align 1
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
define %struct.Memory* @routine_movq__0x401710___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x401710_type* @G__0x401710 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movq__0x40174c___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x40174c_type* @G__0x40174c to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x602650(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x602650_type* @G_0x602650 to i32*), align 8
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
define %struct.Memory* @routine_movl_0x602650___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x602650_type* @G_0x602650 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x602070___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x602070_type* @G_0x602070 to i32*), align 8
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
define %struct.Memory* @routine_jge_.L_400b60(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movw__0x0__0x602340(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i16 0, i16* bitcast (%G_0x602340_type* @G_0x602340 to i16*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_0x602340___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i16, i16* bitcast (%G_0x602340_type* @G_0x602340 to i16*), align 8
  %6 = sext i16 %5 to i64
  %7 = and i64 %6, 4294967295
  store i64 %7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -1
  %8 = icmp eq i32 %4, 0
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = and i32 %7, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i32 %7, %4
  %18 = lshr i32 %17, 4
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %7, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %4, 31
  %29 = xor i32 %25, %28
  %30 = add nuw nsw i32 %29, %28
  %31 = icmp eq i32 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_4009de(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x4___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0xcfb__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xcfb__rip__type* @G_0xcfb__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x602198___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602198_type* @G_0x602198 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.trace_line(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x602350___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x602350_type* @G__0x602350 to i64), i64* %RCX, align 8
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
define %struct.Memory* @routine_movswq_0x602340___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i16, i16* bitcast (%G_0x602340_type* @G_0x602340 to i16*), align 8
  %6 = sext i16 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 4
  store i64 %6, i64* %RDX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 60
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 240
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 59
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rdx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RSI, align 8
  %8 = icmp ult i64 %7, %3
  %9 = icmp ult i64 %7, %4
  %10 = or i1 %8, %9
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %7 to i32
  %14 = and i32 %13, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i64 %4, %3
  %21 = xor i64 %20, %7
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i64 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %7, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %3, 63
  %33 = lshr i64 %4, 63
  %34 = xor i64 %29, %32
  %35 = xor i64 %29, %33
  %36 = add nuw nsw i64 %34, %35
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0____rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RSI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  store i64 %8, i64* %4, align 8
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
define %struct.Memory* @routine_movsd__xmm0__0x8__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 8
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
define %struct.Memory* @routine_movw_0x602340___ax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AX = bitcast %union.anon* %3 to i16*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  %6 = load i16, i16* bitcast (%G_0x602340_type* @G_0x602340 to i16*), align 8
  store i16 %6, i16* %AX, align 2
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addw__0x1___ax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AX = bitcast %union.anon* %3 to i16*
  %4 = load i16, i16* %AX, align 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = add i16 %4, 1
  store i16 %7, i16* %AX, align 2
  %8 = icmp eq i16 %4, -1
  %9 = icmp eq i16 %7, 0
  %10 = or i1 %8, %9
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i16 %7, 255
  %14 = zext i16 %13 to i32
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i16 %7, %4
  %21 = lshr i16 %20, 4
  %22 = trunc i16 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = zext i1 %9 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i16 %7, 15
  %28 = trunc i16 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i16 %4, 15
  %31 = xor i16 %27, %30
  %32 = add nuw nsw i16 %31, %27
  %33 = icmp eq i16 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__ax__0x602340(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AX = bitcast %union.anon* %3 to i16*
  %4 = load i16, i16* %AX, align 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  store i16 %4, i16* bitcast (%G_0x602340_type* @G_0x602340 to i16*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400947(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movsd_0xc75__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xc75__rip__type* @G_0xc75__rip_ to i64)
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
define %struct.Memory* @routine_movl__0x6___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 6, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0xc49__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xc49__rip__type* @G_0xc49__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0xc03__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xc03__rip__type* @G_0xc03__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0xc03__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xc03__rip__type* @G_0xc03__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0xc03__rip____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xc03__rip__type* @G_0xc03__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x602348___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602348_type* @G_0x602348 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm3__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x602360___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602360_type* @G_0x602360 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_0x602350___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x602350_type* @G_0x602350 to double*), align 8
  %9 = fsub double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm3__0x602378(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x602378_type* @G_0x602378 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_0x602368___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x602368_type* @G_0x602368 to double*), align 8
  %9 = fmul double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x602358___xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602358_type* @G_0x602358 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
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
define %struct.Memory* @routine_movaps__xmm4___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
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
define %struct.Memory* @routine_movsd__xmm3__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
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
define %struct.Memory* @routine_movsd__xmm2__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
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
define %struct.Memory* @routine_mulsd_0x602350___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x602350_type* @G_0x602350 to double*), align 8
  %9 = fmul double %7, %8
  store double %9, double* %6, align 1
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
define %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x602380(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x602380_type* @G_0x602380 to i64*), align 8
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
define %struct.Memory* @routine_subsd_MINUS0x30__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x602388(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x602388_type* @G_0x602388 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x602358___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602358_type* @G_0x602358 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x602390(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x602390_type* @G_0x602390 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x602390___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602390_type* @G_0x602390 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_0x602390___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x602390_type* @G_0x602390 to double*), align 8
  %9 = fmul double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__0x602390(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x602390_type* @G_0x602390 to i64*), align 8
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
define %struct.Memory* @routine_movsd__xmm0__0x602398(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x602398_type* @G_0x602398 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x602390___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602390_type* @G_0x602390 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__0x6023a0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x6023a0_type* @G_0x6023a0 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x602650(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x602650_type* @G_0x602650 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400929(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x6023b0___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x40178f___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x40178f_type* @G__0x40178f to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4017a7___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4017a7_type* @G__0x4017a7 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x602350___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602350_type* @G_0x602350 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x602358___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602358_type* @G_0x602358 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
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
define %struct.Memory* @routine_callq_.sprintf_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x6023b0___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x50___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 80
  store i64 %6, i64* %RDX, align 8
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
define %struct.Memory* @routine_movq__0x4017b4___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4017b4_type* @G__0x4017b4 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x602360___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602360_type* @G_0x602360 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x602368___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602368_type* @G_0x602368 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x80__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x84__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -132
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0xa0___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 160
  store i64 %6, i64* %RDX, align 8
  %7 = icmp ugt i64 %3, -161
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
define %struct.Memory* @routine_movq__0x4017c1___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4017c1_type* @G__0x4017c1 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x602378___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602378_type* @G_0x602378 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -136
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0xf0___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 240
  store i64 %6, i64* %RDX, align 8
  %7 = icmp ugt i64 %3, -241
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
define %struct.Memory* @routine_movq__0x4017f1___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4017f1_type* @G__0x4017f1 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x8c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -140
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x140___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 320
  store i64 %6, i64* %RDX, align 8
  %7 = icmp ugt i64 %3, -321
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
define %struct.Memory* @routine_movq__0x401821___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x401821_type* @G__0x401821 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x602380___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602380_type* @G_0x602380 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -144
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x190___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 400
  store i64 %6, i64* %RDX, align 8
  %7 = icmp ugt i64 %3, -401
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
define %struct.Memory* @routine_movsd_0x602398___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602398_type* @G_0x602398 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x94__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -148
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x1e0___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 480
  store i64 %6, i64* %RDX, align 8
  %7 = icmp ugt i64 %3, -481
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
define %struct.Memory* @routine_movq__0x401851___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x401851_type* @G__0x401851 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x602388___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602388_type* @G_0x602388 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -152
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x230___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 560
  store i64 %6, i64* %RDX, align 8
  %7 = icmp ugt i64 %3, -561
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
define %struct.Memory* @routine_movsd_0x6023a0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6023a0_type* @G_0x6023a0 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x9c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -156
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xa0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -160
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x8__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -8
  %10 = icmp ult i32 %8, 8
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
define %struct.Memory* @routine_jge_.L_400ef8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x6023b0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x50___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 80
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 240
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
define %struct.Memory* @routine_movq_0x602100___rcx_8____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 3
  %5 = add i64 %4, 6299904
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %RSI, align 8
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
define %struct.Memory* @routine_je_.L_400ee5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x401881___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x401881_type* @G__0x401881 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movq__0x4018a2___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4018a2_type* @G__0x4018a2 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xa4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -164
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4018b3___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4018b3_type* @G__0x4018b3 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x6023b0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x50___rsi___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 80
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RSI, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 240
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rsi___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RCX, align 8
  %8 = icmp ult i64 %7, %3
  %9 = icmp ult i64 %7, %4
  %10 = or i1 %8, %9
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %7 to i32
  %14 = and i32 %13, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i64 %4, %3
  %21 = xor i64 %20, %7
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i64 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %7, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %3, 63
  %33 = lshr i64 %4, 63
  %34 = xor i64 %29, %32
  %35 = xor i64 %29, %33
  %36 = add nuw nsw i64 %34, %35
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xa8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -168
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4018c4___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4018c4_type* @G__0x4018c4 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xac__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -172
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x602100___rcx_8____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 3
  %5 = add i64 %4, 6299904
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xb0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -176
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.strlen_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__edx__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x1c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -28
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
define %struct.Memory* @routine_jge_.L_400ece(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4018d1___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4018d1_type* @G__0x4018d1 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x5e___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 94, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x20___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 32, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x602100___rsi_8____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 3
  %5 = add i64 %4, 6299904
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x18__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl___rsi__r8_1____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %R8, align 8
  %6 = add i64 %5, %4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i8*
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i64
  %12 = and i64 %11, 4294967295
  store i64 %12, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rsi___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RDX, align 8
  %8 = icmp ult i64 %7, %3
  %9 = icmp ult i64 %7, %4
  %10 = or i1 %8, %9
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %7 to i32
  %14 = and i32 %13, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i64 %4, %3
  %21 = xor i64 %20, %7
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i64 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %7, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %3, 63
  %33 = lshr i64 %4, 63
  %34 = xor i64 %29, %32
  %35 = xor i64 %29, %33
  %36 = add nuw nsw i64 %34, %35
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl___rdx__rsi_1____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = add i64 %5, %4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i8*
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i64
  %12 = and i64 %11, 4294967295
  store i64 %12, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__r10d___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %R9D, align 4
  %6 = load i32, i32* %R10D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = sub i32 %5, %6
  %10 = icmp ult i32 %5, %6
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
  %19 = xor i32 %6, %5
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
  %31 = lshr i32 %5, 31
  %32 = lshr i32 %6, 31
  %33 = xor i32 %32, %31
  %34 = xor i32 %28, %31
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cmovel__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9 = load i8, i8* %8, align 1
  %10 = icmp ne i8 %9, 0
  %11 = load i64, i64* %RAX, align 8
  %12 = select i1 %10, i64 %5, i64 %11
  %13 = and i64 %12, 4294967295
  store i64 %13, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x602100___rdi_8____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = shl i64 %3, 3
  %5 = add i64 %4, 6299904
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl___rdi__r8_1____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x50___rdi___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 80
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDI, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 240
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rdi___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RDX, align 8
  %8 = icmp ult i64 %7, %3
  %9 = icmp ult i64 %7, %4
  %10 = or i1 %8, %9
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %7 to i32
  %14 = and i32 %13, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i64 %4, %3
  %21 = xor i64 %20, %7
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i64 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %7, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %3, 63
  %33 = lshr i64 %4, 63
  %34 = xor i64 %29, %32
  %35 = xor i64 %29, %33
  %36 = add nuw nsw i64 %34, %35
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl___rdx__rdi_1____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__esi___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %ECX, align 4
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = sub i32 %5, %6
  %10 = icmp ult i32 %5, %6
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
  %19 = xor i32 %6, %5
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
  %31 = lshr i32 %5, 31
  %32 = lshr i32 %6, 31
  %33 = xor i32 %32, %31
  %34 = xor i32 %28, %31
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xb4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -180
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_400ebb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400ec0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400e10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4016d6___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4016d6_type* @G__0x4016d6 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xb8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -184
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400eea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400d2f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_400f40(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4018d6___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4018d6_type* @G__0x4018d6 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4016d7___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4016d7_type* @G__0x4016d7 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4018d4___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4018d4_type* @G__0x4018d4 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x20__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_cmovgq__rcx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  %15 = xor i1 %11, %14
  %16 = xor i1 %15, true
  %17 = and i1 %8, %16
  %18 = load i64, i64* %RAX, align 8
  %19 = select i1 %17, i64 %3, i64 %18
  store i64 %19, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xbc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -188
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400f57(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x401906___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x401906_type* @G__0x401906 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xc0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -192
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0xc0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 192
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -193
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
