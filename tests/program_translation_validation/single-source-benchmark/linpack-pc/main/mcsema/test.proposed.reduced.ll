; ModuleID = '/tmp/tmpartv0k2m-query.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x174f__rip__type = type <{ [8 x i8] }>
%G_0x1865__rip__type = type <{ [8 x i8] }>
%G_0x186d__rip__type = type <{ [8 x i8] }>
%G_0x1b6a__rip__type = type <{ [8 x i8] }>
%G_0x1c80__rip__type = type <{ [8 x i8] }>
%G_0x1c88__rip__type = type <{ [8 x i8] }>
%G_0x2190__rip__type = type <{ [8 x i8] }>
%G_0x2198__rip__type = type <{ [8 x i8] }>
%G_0x2308__rip__type = type <{ [4 x i8] }>
%G_0x231f__rip__type = type <{ [4 x i8] }>
%G_0x23ae__rip__type = type <{ [16 x i8] }>
%G_0x23e6__rip__type = type <{ [16 x i8] }>
%G_0x2420__rip__type = type <{ [16 x i8] }>
%G_0x2458__rip__type = type <{ [16 x i8] }>
%G_0x26a0__rip__type = type <{ [8 x i8] }>
%G_0x27eb__rip__type = type <{ [4 x i8] }>
%G_0x604040_type = type <{ [8 x i8] }>
%G_0x604050_type = type <{ [4 x i8] }>
%G_0x604054_type = type <{ [4 x i8] }>
%G_0x604058_type = type <{ [4 x i8] }>
%G_0x62bad0_type = type <{ [16 x i8] }>
%G_0x62bb0c_type = type <{ [16 x i8] }>
%G_0x62bb48_type = type <{ [16 x i8] }>
%G_0x62bb84_type = type <{ [16 x i8] }>
%G_0x62bb9c_type = type <{ [16 x i8] }>
%G_0x62bbb4_type = type <{ [16 x i8] }>
%G_0x62bbc0_type = type <{ [16 x i8] }>
%G_0x62bbfc_type = type <{ [16 x i8] }>
%G_0x62bcec_type = type <{ [4 x i8] }>
%G_0x62bcf0_type = type <{ [4 x i8] }>
%G_0x62c010_type = type <{ [4 x i8] }>
%G_0x62c014_type = type <{ [4 x i8] }>
%G__0x402eb0_type = type <{ [8 x i8] }>
%G__0x402eca_type = type <{ [8 x i8] }>
%G__0x402eeb_type = type <{ [8 x i8] }>
%G__0x402ef3_type = type <{ [8 x i8] }>
%G__0x402efb_type = type <{ [8 x i8] }>
%G__0x402f31_type = type <{ [8 x i8] }>
%G__0x402f42_type = type <{ [8 x i8] }>
%G__0x402f54_type = type <{ [8 x i8] }>
%G__0x402f7b_type = type <{ [8 x i8] }>
%G__0x402f9e_type = type <{ [8 x i8] }>
%G__0x402fbf_type = type <{ [8 x i8] }>
%G__0x402ff4_type = type <{ [8 x i8] }>
%G__0x40302a_type = type <{ [8 x i8] }>
%G__0x403062_type = type <{ [8 x i8] }>
%G__0x40306f_type = type <{ [8 x i8] }>
%G__0x40308d_type = type <{ [8 x i8] }>
%G__0x4030a7_type = type <{ [8 x i8] }>
%G__0x4030ce_type = type <{ [8 x i8] }>
%G__0x4030fd_type = type <{ [8 x i8] }>
%G__0x403111_type = type <{ [8 x i8] }>
%G__0x403140_type = type <{ [8 x i8] }>
%G__0x403169_type = type <{ [8 x i8] }>
%G__0x604060_type = type <{ [8 x i8] }>
%G__0x62b480_type = type <{ [8 x i8] }>
%G__0x62b7a0_type = type <{ [8 x i8] }>
%G__0x62bac0_type = type <{ [8 x i8] }>
%G__0x62bcf0_type = type <{ [8 x i8] }>
%G__0x62c020_type = type <{ [8 x i8] }>
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
@G_0x174f__rip_ = global %G_0x174f__rip__type zeroinitializer
@G_0x1865__rip_ = global %G_0x1865__rip__type zeroinitializer
@G_0x186d__rip_ = global %G_0x186d__rip__type zeroinitializer
@G_0x1b6a__rip_ = global %G_0x1b6a__rip__type zeroinitializer
@G_0x1c80__rip_ = global %G_0x1c80__rip__type zeroinitializer
@G_0x1c88__rip_ = global %G_0x1c88__rip__type zeroinitializer
@G_0x2190__rip_ = global %G_0x2190__rip__type zeroinitializer
@G_0x2198__rip_ = global %G_0x2198__rip__type zeroinitializer
@G_0x2308__rip_ = global %G_0x2308__rip__type zeroinitializer
@G_0x231f__rip_ = global %G_0x231f__rip__type zeroinitializer
@G_0x23ae__rip_ = global %G_0x23ae__rip__type zeroinitializer
@G_0x23e6__rip_ = global %G_0x23e6__rip__type zeroinitializer
@G_0x2420__rip_ = global %G_0x2420__rip__type zeroinitializer
@G_0x2458__rip_ = global %G_0x2458__rip__type zeroinitializer
@G_0x26a0__rip_ = global %G_0x26a0__rip__type zeroinitializer
@G_0x27eb__rip_ = global %G_0x27eb__rip__type zeroinitializer
@G_0x604040 = local_unnamed_addr global %G_0x604040_type zeroinitializer
@G_0x604050 = local_unnamed_addr global %G_0x604050_type zeroinitializer
@G_0x604054 = local_unnamed_addr global %G_0x604054_type zeroinitializer
@G_0x604058 = local_unnamed_addr global %G_0x604058_type zeroinitializer
@G_0x62bad0 = local_unnamed_addr global %G_0x62bad0_type zeroinitializer
@G_0x62bb0c = local_unnamed_addr global %G_0x62bb0c_type zeroinitializer
@G_0x62bb48 = local_unnamed_addr global %G_0x62bb48_type zeroinitializer
@G_0x62bb84 = local_unnamed_addr global %G_0x62bb84_type zeroinitializer
@G_0x62bb9c = local_unnamed_addr global %G_0x62bb9c_type zeroinitializer
@G_0x62bbb4 = local_unnamed_addr global %G_0x62bbb4_type zeroinitializer
@G_0x62bbc0 = local_unnamed_addr global %G_0x62bbc0_type zeroinitializer
@G_0x62bbfc = local_unnamed_addr global %G_0x62bbfc_type zeroinitializer
@G_0x62bcec = local_unnamed_addr global %G_0x62bcec_type zeroinitializer
@G_0x62bcf0 = local_unnamed_addr global %G_0x62bcf0_type zeroinitializer
@G_0x62c010 = local_unnamed_addr global %G_0x62c010_type zeroinitializer
@G_0x62c014 = local_unnamed_addr global %G_0x62c014_type zeroinitializer
@G__0x402eb0 = global %G__0x402eb0_type zeroinitializer
@G__0x402eca = global %G__0x402eca_type zeroinitializer
@G__0x402eeb = global %G__0x402eeb_type zeroinitializer
@G__0x402ef3 = global %G__0x402ef3_type zeroinitializer
@G__0x402efb = global %G__0x402efb_type zeroinitializer
@G__0x402f31 = global %G__0x402f31_type zeroinitializer
@G__0x402f42 = global %G__0x402f42_type zeroinitializer
@G__0x402f54 = global %G__0x402f54_type zeroinitializer
@G__0x402f7b = global %G__0x402f7b_type zeroinitializer
@G__0x402f9e = global %G__0x402f9e_type zeroinitializer
@G__0x402fbf = global %G__0x402fbf_type zeroinitializer
@G__0x402ff4 = global %G__0x402ff4_type zeroinitializer
@G__0x40302a = global %G__0x40302a_type zeroinitializer
@G__0x403062 = global %G__0x403062_type zeroinitializer
@G__0x40306f = global %G__0x40306f_type zeroinitializer
@G__0x40308d = global %G__0x40308d_type zeroinitializer
@G__0x4030a7 = global %G__0x4030a7_type zeroinitializer
@G__0x4030ce = global %G__0x4030ce_type zeroinitializer
@G__0x4030fd = global %G__0x4030fd_type zeroinitializer
@G__0x403111 = global %G__0x403111_type zeroinitializer
@G__0x403140 = global %G__0x403140_type zeroinitializer
@G__0x403169 = global %G__0x403169_type zeroinitializer
@G__0x604060 = global %G__0x604060_type zeroinitializer
@G__0x62b480 = global %G__0x62b480_type zeroinitializer
@G__0x62b7a0 = global %G__0x62b7a0_type zeroinitializer
@G__0x62bac0 = global %G__0x62bac0_type zeroinitializer
@G__0x62bcf0 = global %G__0x62bcf0_type zeroinitializer
@G__0x62c020 = global %G__0x62c020_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @memset(i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_401760.matgen(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4005f0.second(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401930.dgefa(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401c40.dgesl(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401fc0.dmxpy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4027c0.epslon(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_402870.print_time(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

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
%var_2_7 = load i64, i64* %var_2_6, align 8
%var_2_8 = add i64 %var_2_7, -8
; Matched:%var_2_14:  %var_2_14 = inttoptr i64 %var_2_13 to i64*
; %var_2_9 = inttoptr i64 %var_2_8 to i64*
; Matched:\<badref\>:  store i64 %var_2_10, i64* %var_2_14, align 8
; store i64 %var_2_4, i64* %var_2_9, align 8
%var_2_10 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_13, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_8, i64* %RBP.i, align 8
%var_2_11 = add i64 %var_2_7, -1016
; Matched:\<badref\>:  store i64 %var_2_16, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_11, i64* %var_2_6, align 8
%var_2_12 = icmp ult i64 %var_2_8, 1008
%var_2_13 = zext i1 %var_2_12 to i8
%var_2_14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
store i8 %var_2_13, i8* %var_2_14, align 1
%var_2_15 = trunc i64 %var_2_11 to i32
%var_2_16 = and i32 %var_2_15, 255
%var_2_17 = tail call i32 @llvm.ctpop.i32(i32 %var_2_16)
%var_2_18 = trunc i32 %var_2_17 to i8
%var_2_19 = and i8 %var_2_18, 1
%var_2_20 = xor i8 %var_2_19, 1
%var_2_21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
store i8 %var_2_20, i8* %var_2_21, align 1
%var_2_22 = xor i64 %var_2_8, 16
%var_2_23 = xor i64 %var_2_22, %var_2_11
%var_2_24 = lshr i64 %var_2_23, 4
%var_2_25 = trunc i64 %var_2_24 to i8
%var_2_26 = and i8 %var_2_25, 1
%var_2_27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
store i8 %var_2_26, i8* %var_2_27, align 1
%var_2_28 = icmp eq i64 %var_2_11, 0
%var_2_29 = zext i1 %var_2_28 to i8
%var_2_30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
store i8 %var_2_29, i8* %var_2_30, align 1
%var_2_31 = lshr i64 %var_2_11, 63
%var_2_32 = trunc i64 %var_2_31 to i8
%var_2_33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
store i8 %var_2_32, i8* %var_2_33, align 1
%var_2_34 = lshr i64 %var_2_8, 63
%var_2_35 = xor i64 %var_2_31, %var_2_34
%var_2_36 = add nuw nsw i64 %var_2_35, %var_2_34
%var_2_37 = icmp eq i64 %var_2_36, 2
%var_2_38 = zext i1 %var_2_37 to i8
%var_2_39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
store i8 %var_2_38, i8* %var_2_39, align 1
  %RSI.i245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  store i64 ptrtoint (%G__0x402eeb_type* @G__0x402eeb to i64), i64* %RSI.i245, align 8
%var_2_40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
%var_2_41 = bitcast [32 x %union.VectorReg]* %var_2_40 to i8*
%var_2_42 = add i64 %var_2_10, add (i64 ptrtoint (%G_0x27eb__rip__type* @G_0x27eb__rip_ to i64), i64 20)
%var_2_43 = add i64 %var_2_10, 28
store i64 %var_2_43, i64* %var_2_3, align 8
%var_2_44 = inttoptr i64 %var_2_42 to i32*
%var_2_45 = load i32, i32* %var_2_44, align 4
%var_2_46 = bitcast [32 x %union.VectorReg]* %var_2_40 to float*
%var_2_47 = bitcast [32 x %union.VectorReg]* %var_2_40 to i32*
store i32 %var_2_45, i32* %var_2_47, align 1
%var_2_48 = getelementptr inbounds i8, i8* %var_2_41, i64 4
%var_2_49 = bitcast i8* %var_2_48 to float*
store float 0.000000e+00, float* %var_2_49, align 1
%var_2_50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
%var_2_51 = bitcast i64* %var_2_50 to float*
store float 0.000000e+00, float* %var_2_51, align 1
%var_2_52 = getelementptr inbounds i8, i8* %var_2_41, i64 12
%var_2_53 = bitcast i8* %var_2_52 to float*
store float 0.000000e+00, float* %var_2_53, align 1
%var_2_54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
%RAX.i271 = getelementptr inbounds %union.anon, %union.anon* %var_2_54, i64 0, i32 0
  store i64 ptrtoint (%G__0x402eca_type* @G__0x402eca to i64), i64* %RAX.i271, align 8
%var_2_55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
%RCX.i347 = getelementptr inbounds %union.anon, %union.anon* %var_2_55, i64 0, i32 0
  store i64 ptrtoint (%G__0x402eb0_type* @G__0x402eb0 to i64), i64* %RCX.i347, align 8
%var_2_56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
; Matched:  %EDX = bitcast %union.anon* %var_2_5 to i32*
; %EDX.i = bitcast %union.anon* %var_2_56 to i32*
%RDX.i359 = getelementptr inbounds %union.anon, %union.anon* %var_2_56, i64 0, i32 0
  store i64 0, i64* %RDX.i359, align 8
store i8 0, i8* %var_2_14, align 1
store i8 1, i8* %var_2_21, align 1
store i8 1, i8* %var_2_30, align 1
store i8 0, i8* %var_2_33, align 1
store i8 0, i8* %var_2_39, align 1
store i8 0, i8* %var_2_27, align 1
  %RDI.i594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
%var_2_57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
store i64 720, i64* %var_2_57, align 8
  %R9.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
%var_2_58 = load i64, i64* %RBP.i, align 8
%var_2_59 = add i64 %var_2_58, -832
store i64 %var_2_59, i64* %R9.i, align 8
%var_2_60 = add i64 %var_2_58, -4
; Matched:%var_2_35:  %var_2_35 = add i64 %var_2_15, 72
; %var_2_61 = add i64 %var_2_10, 72
; Matched:\<badref\>:  store i64 %var_2_35, i64* %PC, align 8
; store i64 %var_2_61, i64* %var_2_3, align 8
%var_2_62 = inttoptr i64 %var_2_60 to i32*
store i32 0, i32* %var_2_62, align 4
; Matched:%var_2_37:  %var_2_37 = load i64, i64* %R9, align 8
; %var_2_63 = load i64, i64* %R9.i, align 8
%var_2_64 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_37, i64* %RDI, align 8, !tbaa !1261
; store i64 %var_2_63, i64* %RDI.i594, align 8
; Matched:%var_2_39:  %var_2_39 = load i64, i64* %RBP, align 8
; %var_2_65 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_40:  %var_2_40 = add i64 %var_2_39, -840
; %var_2_66 = add i64 %var_2_65, -840
; Matched:%var_2_41:  %var_2_41 = load i64, i64* %RSI, align 8
; %var_2_67 = load i64, i64* %RSI.i245, align 8
; Matched:%var_2_1405:  %var_2_1405 = add i64 %var_2_1400, 10
; %var_2_68 = add i64 %var_2_64, 10
; Matched:\<badref\>:  store i64 %var_2_2198, i64* %PC, align 8
; store i64 %var_2_68, i64* %var_2_3, align 8
; Matched:%var_2_43:  %var_2_43 = inttoptr i64 %var_2_40 to i64*
; %var_2_69 = inttoptr i64 %var_2_66 to i64*
; Matched:\<badref\>:  store i64 %var_2_41, i64* %var_2_43, align 8
; store i64 %var_2_67, i64* %var_2_69, align 8
; Matched:%var_2_44:  %var_2_44 = load i32, i32* %EDX, align 4
; %var_2_70 = load i32, i32* %EDX.i, align 4
; Matched:%var_2_45:  %var_2_45 = zext i32 %var_2_44 to i64
; %var_2_71 = zext i32 %var_2_70 to i64
; Matched:%var_2_46:  %var_2_46 = load i64, i64* %PC, align 8
; %var_2_72 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_45, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_71, i64* %RSI.i245, align 8
; Matched:%var_2_47:  %var_2_47 = load i64, i64* %R8, align 8
; %var_2_73 = load i64, i64* %var_2_57, align 8
; Matched:\<badref\>:  store i64 %var_2_47, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_73, i64* %RDX.i359, align 8
; Matched:%var_2_48:  %var_2_48 = load i64, i64* %RBP, align 8
; %var_2_74 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_49:  %var_2_49 = add i64 %var_2_48, -848
; %var_2_75 = add i64 %var_2_74, -848
; Matched:%var_2_50:  %var_2_50 = load i64, i64* %RCX, align 8
; %var_2_76 = load i64, i64* %RCX.i347, align 8
; Matched:%var_2_51:  %var_2_51 = add i64 %var_2_46, 12
; %var_2_77 = add i64 %var_2_72, 12
; Matched:\<badref\>:  store i64 %var_2_51, i64* %PC, align 8
; store i64 %var_2_77, i64* %var_2_3, align 8
; Matched:%var_2_52:  %var_2_52 = inttoptr i64 %var_2_49 to i64*
; %var_2_78 = inttoptr i64 %var_2_75 to i64*
; Matched:\<badref\>:  store i64 %var_2_50, i64* %var_2_52, align 8
; store i64 %var_2_76, i64* %var_2_78, align 8
; Matched:%var_2_53:  %var_2_53 = load i64, i64* %RBP, align 8
; %var_2_79 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_54:  %var_2_54 = add i64 %var_2_53, -852
; %var_2_80 = add i64 %var_2_79, -852
%var_2_81 = load i64, i64* %var_2_3, align 8
%var_2_82 = add i64 %var_2_81, 8
store i64 %var_2_82, i64* %var_2_3, align 8
%var_2_83 = bitcast [32 x %union.VectorReg]* %var_2_40 to <2 x float>*
%var_2_84 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_85 = extractelement <2 x float> %var_2_84, i32 0
; Matched:%var_2_60:  %var_2_60 = inttoptr i64 %var_2_54 to float*
; %var_2_86 = inttoptr i64 %var_2_80 to float*
; Matched:\<badref\>:  store float %var_2_59, float* %var_2_60, align 4
; store float %var_2_85, float* %var_2_86, align 4
; Matched:%var_2_61:  %var_2_61 = load i64, i64* %RBP, align 8
; %var_2_87 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_62:  %var_2_62 = add i64 %var_2_61, -864
; %var_2_88 = add i64 %var_2_87, -864
; Matched:%var_2_63:  %var_2_63 = load i64, i64* %RAX, align 8
; %var_2_89 = load i64, i64* %RAX.i271, align 8
%var_2_90 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_82:  %var_2_82 = add i64 %var_2_81, 7
; %var_2_91 = add i64 %var_2_90, 7
; Matched:\<badref\>:  store i64 %var_2_91, i64* %PC, align 8
; store i64 %var_2_91, i64* %var_2_3, align 8
; Matched:%var_2_66:  %var_2_66 = inttoptr i64 %var_2_62 to i64*
; %var_2_92 = inttoptr i64 %var_2_88 to i64*
; Matched:\<badref\>:  store i64 %var_2_63, i64* %var_2_66, align 8
; store i64 %var_2_89, i64* %var_2_92, align 8
; Matched:%var_2_449:  %var_2_449 = load i64, i64* %PC, align 8
; %var_2_93 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_68:  %var_2_68 = add i64 %var_2_67, -462
; %var_2_94 = add i64 %var_2_93, -462
; Matched:%var_2_451:  %var_2_451 = add i64 %var_2_449, 5
; %var_2_95 = add i64 %var_2_93, 5
%var_2_96 = load i64, i64* %var_2_6, align 8
%var_2_97 = add i64 %var_2_96, -8
; Matched:%var_2_350:  %var_2_350 = inttoptr i64 %var_2_349 to i64*
; %var_2_98 = inttoptr i64 %var_2_97 to i64*
; Matched:\<badref\>:  store i64 %var_2_347, i64* %var_2_350, align 8
; store i64 %var_2_95, i64* %var_2_98, align 8
; Matched:\<badref\>:  store i64 %var_2_349, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_97, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_68, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_94, i64* %var_2_3, align 8
%var_2_99 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %2)
; Matched:%var_2_74:  %var_2_74 = load i64, i64* %RBP, align 8
; %var_2_100 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_75:  %var_2_75 = add i64 %var_2_74, -832
; %var_2_101 = add i64 %var_2_100, -832
%var_2_102 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_77:  %var_2_77 = add i64 %var_2_76, 7
; %var_2_103 = add i64 %var_2_102, 7
; Matched:\<badref\>:  store i64 %var_2_65, i64* %PC, align 8
; store i64 %var_2_103, i64* %var_2_3, align 8
; Matched:%var_2_78:  %var_2_78 = inttoptr i64 %var_2_75 to i8*
; %var_2_104 = inttoptr i64 %var_2_101 to i8*
; Matched:\<badref\>:  store i8 32, i8* %var_2_78, align 1
; store i8 32, i8* %var_2_104, align 1
; Matched:%var_2_79:  %var_2_79 = load i64, i64* %RBP, align 8
; %var_2_105 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_80:  %var_2_80 = add i64 %var_2_79, -848
; %var_2_106 = add i64 %var_2_105, -848
%var_2_107 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_91:  %var_2_91 = add i64 %var_2_90, 7
; %var_2_108 = add i64 %var_2_107, 7
; Matched:\<badref\>:  store i64 %var_2_77, i64* %PC, align 8
; store i64 %var_2_108, i64* %var_2_3, align 8
; Matched:%var_2_83:  %var_2_83 = inttoptr i64 %var_2_80 to i64*
; %var_2_109 = inttoptr i64 %var_2_106 to i64*
; Matched:%var_2_84:  %var_2_84 = load i64, i64* %var_2_83, align 8
; %var_2_110 = load i64, i64* %var_2_109, align 8
; Matched:\<badref\>:  store i64 %var_2_84, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_110, i64* %RAX.i271, align 8
; Matched:%var_2_85:  %var_2_85 = add i64 %var_2_79, -96
; %var_2_111 = add i64 %var_2_105, -96
%var_2_112 = add i64 %var_2_107, 11
; Matched:\<badref\>:  store i64 %var_2_86, i64* %PC, align 8
; store i64 %var_2_112, i64* %var_2_3, align 8
; Matched:%var_2_87:  %var_2_87 = inttoptr i64 %var_2_85 to i64*
; %var_2_113 = inttoptr i64 %var_2_111 to i64*
; Matched:\<badref\>:  store i64 %var_2_84, i64* %var_2_87, align 8
; store i64 %var_2_110, i64* %var_2_113, align 8
; Matched:%var_2_88:  %var_2_88 = load i64, i64* %RBP, align 8
; %var_2_114 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_89:  %var_2_89 = add i64 %var_2_88, -864
; %var_2_115 = add i64 %var_2_114, -864
%var_2_116 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2812:  %var_2_2812 = add i64 %var_2_2811, 7
; %var_2_117 = add i64 %var_2_116, 7
; Matched:\<badref\>:  store i64 %var_2_2557, i64* %PC, align 8
; store i64 %var_2_117, i64* %var_2_3, align 8
; Matched:%var_2_92:  %var_2_92 = inttoptr i64 %var_2_89 to i64*
; %var_2_118 = inttoptr i64 %var_2_115 to i64*
; Matched:%var_2_93:  %var_2_93 = load i64, i64* %var_2_92, align 8
; %var_2_119 = load i64, i64* %var_2_118, align 8
; Matched:\<badref\>:  store i64 %var_2_93, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_119, i64* %RCX.i347, align 8
; Matched:%var_2_94:  %var_2_94 = add i64 %var_2_88, -104
; %var_2_120 = add i64 %var_2_114, -104
%var_2_121 = add i64 %var_2_116, 11
; Matched:\<badref\>:  store i64 %var_2_972, i64* %PC, align 8
; store i64 %var_2_121, i64* %var_2_3, align 8
; Matched:%var_2_96:  %var_2_96 = inttoptr i64 %var_2_94 to i64*
; %var_2_122 = inttoptr i64 %var_2_120 to i64*
; Matched:\<badref\>:  store i64 %var_2_93, i64* %var_2_96, align 8
; store i64 %var_2_119, i64* %var_2_122, align 8
; Matched:%var_2_280:  %var_2_280 = load i64, i64* %PC, align 8
; %var_2_123 = load i64, i64* %var_2_3, align 8
  store i32 201, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  store i32 200, i32* bitcast (%G_0x604054_type* @G_0x604054 to i32*), align 8
; Matched:%var_2_98:  %var_2_98 = load i64, i64* %RBP, align 8
; %var_2_124 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_99:  %var_2_99 = add i64 %var_2_98, -852
; %var_2_125 = add i64 %var_2_124, -852
; Matched:%var_2_100:  %var_2_100 = add i64 %var_2_97, 30
; %var_2_126 = add i64 %var_2_123, 30
; Matched:\<badref\>:  store i64 %var_2_100, i64* %PC, align 8
; store i64 %var_2_126, i64* %var_2_3, align 8
; Matched:%var_2_101:  %var_2_101 = inttoptr i64 %var_2_99 to i32*
; %var_2_127 = inttoptr i64 %var_2_125 to i32*
; Matched:%var_2_102:  %var_2_102 = load i32, i32* %var_2_101, align 4
; %var_2_128 = load i32, i32* %var_2_127, align 4
; Matched:\<badref\>:  store i32 %var_2_102, i32* %var_2_26, align 1, !tbaa !1265
; store i32 %var_2_128, i32* %var_2_47, align 1
store float 0.000000e+00, float* %var_2_49, align 1
store float 0.000000e+00, float* %var_2_51, align 1
store float 0.000000e+00, float* %var_2_53, align 1
; Matched:%var_2_103:  %var_2_103 = add i64 %var_2_98, -8
; %var_2_129 = add i64 %var_2_124, -8
; Matched:%var_2_283:  %var_2_283 = add i64 %var_2_280, 35
; %var_2_130 = add i64 %var_2_123, 35
; Matched:\<badref\>:  store i64 %var_2_283, i64* %PC, align 8
; store i64 %var_2_130, i64* %var_2_3, align 8
%var_2_131 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_132 = extractelement <2 x float> %var_2_131, i32 0
; Matched:%var_2_107:  %var_2_107 = inttoptr i64 %var_2_103 to float*
; %var_2_133 = inttoptr i64 %var_2_129 to float*
; Matched:\<badref\>:  store float %var_2_106, float* %var_2_107, align 4
; store float %var_2_132, float* %var_2_133, align 4
%var_2_134 = load i64, i64* %var_2_3, align 8
  store i32 100, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
%var_2_135 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
store i64 %var_2_135, i64* %RDI.i594, align 8
; Matched:%var_2_110:  %var_2_110 = load i64, i64* %RBP, align 8
; %var_2_136 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_111:  %var_2_111 = add i64 %var_2_110, -840
; %var_2_137 = add i64 %var_2_136, -840
; Matched:%var_2_112:  %var_2_112 = add i64 %var_2_108, 26
; %var_2_138 = add i64 %var_2_134, 26
; Matched:\<badref\>:  store i64 %var_2_112, i64* %PC, align 8
; store i64 %var_2_138, i64* %var_2_3, align 8
; Matched:%var_2_113:  %var_2_113 = inttoptr i64 %var_2_111 to i64*
; %var_2_139 = inttoptr i64 %var_2_137 to i64*
; Matched:%var_2_114:  %var_2_114 = load i64, i64* %var_2_113, align 8
; %var_2_140 = load i64, i64* %var_2_139, align 8
; Matched:\<badref\>:  store i64 %var_2_114, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_140, i64* %RSI.i245, align 8
; Matched:  %AL = bitcast %union.anon* %var_2_3 to i8*
; %AL.i1482 = bitcast %union.anon* %var_2_54 to i8*
; Matched:\<badref\>:  store i8 0, i8* %AL, align 1, !tbaa !1286
; store i8 0, i8* %AL.i1482, align 1
; Matched:%var_2_115:  %var_2_115 = add i64 %var_2_108, -515
; %var_2_141 = add i64 %var_2_134, -515
; Matched:%var_2_116:  %var_2_116 = add i64 %var_2_108, 33
; %var_2_142 = add i64 %var_2_134, 33
%var_2_143 = load i64, i64* %var_2_6, align 8
%var_2_144 = add i64 %var_2_143, -8
; Matched:%var_2_119:  %var_2_119 = inttoptr i64 %var_2_118 to i64*
; %var_2_145 = inttoptr i64 %var_2_144 to i64*
; Matched:\<badref\>:  store i64 %var_2_116, i64* %var_2_119, align 8
; store i64 %var_2_142, i64* %var_2_145, align 8
; Matched:\<badref\>:  store i64 %var_2_2018, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_144, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_115, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_141, i64* %var_2_3, align 8
%var_2_146 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %var_2_99)
%var_2_147 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x402ef3_type* @G__0x402ef3 to i64), i64* %RSI.i245, align 8
%var_2_148 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
store i64 %var_2_148, i64* %RDI.i594, align 8
; Matched:  %EAX = bitcast %union.anon* %var_2_3 to i32*
; %EAX.i1471 = bitcast %union.anon* %var_2_54 to i32*
; Matched:%var_2_123:  %var_2_123 = load i64, i64* %RBP, align 8
; %var_2_149 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_124:  %var_2_124 = add i64 %var_2_123, -868
; %var_2_150 = add i64 %var_2_149, -868
; Matched:%var_2_125:  %var_2_125 = load i32, i32* %EAX, align 4
; %var_2_151 = load i32, i32* %EAX.i1471, align 4
; Matched:%var_2_2280:  %var_2_2280 = add i64 %var_2_2275, 24
; %var_2_152 = add i64 %var_2_147, 24
; Matched:\<badref\>:  store i64 %var_2_140, i64* %PC, align 8
; store i64 %var_2_152, i64* %var_2_3, align 8
; Matched:%var_2_127:  %var_2_127 = inttoptr i64 %var_2_124 to i32*
; %var_2_153 = inttoptr i64 %var_2_150 to i32*
; Matched:\<badref\>:  store i32 %var_2_125, i32* %var_2_127, align 4
; store i32 %var_2_151, i32* %var_2_153, align 4
; Matched:%var_2_128:  %var_2_128 = load i64, i64* %PC, align 8
; %var_2_154 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i8 0, i8* %AL, align 1, !tbaa !1286
; store i8 0, i8* %AL.i1482, align 1
; Matched:%var_2_129:  %var_2_129 = add i64 %var_2_128, -572
; %var_2_155 = add i64 %var_2_154, -572
; Matched:%var_2_130:  %var_2_130 = add i64 %var_2_128, 7
; %var_2_156 = add i64 %var_2_154, 7
%var_2_157 = load i64, i64* %var_2_6, align 8
%var_2_158 = add i64 %var_2_157, -8
; Matched:%var_2_183:  %var_2_183 = inttoptr i64 %var_2_182 to i64*
; %var_2_159 = inttoptr i64 %var_2_158 to i64*
; Matched:\<badref\>:  store i64 %var_2_438, i64* %var_2_441, align 8
; store i64 %var_2_156, i64* %var_2_159, align 8
; Matched:\<badref\>:  store i64 %var_2_1509, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_158, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_129, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_155, i64* %var_2_3, align 8
%var_2_160 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %var_2_146)
%var_2_161 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x402efb_type* @G__0x402efb to i64), i64* %RSI.i245, align 8
%var_2_162 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
store i64 %var_2_162, i64* %RDI.i594, align 8
; Matched:%var_2_137:  %var_2_137 = load i64, i64* %RBP, align 8
; %var_2_163 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_138:  %var_2_138 = add i64 %var_2_137, -872
; %var_2_164 = add i64 %var_2_163, -872
; Matched:%var_2_139:  %var_2_139 = load i32, i32* %EAX, align 4
; %var_2_165 = load i32, i32* %EAX.i1471, align 4
; Matched:%var_2_1166:  %var_2_1166 = add i64 %var_2_1161, 24
; %var_2_166 = add i64 %var_2_161, 24
; Matched:\<badref\>:  store i64 %var_2_1817, i64* %PC, align 8
; store i64 %var_2_166, i64* %var_2_3, align 8
; Matched:%var_2_141:  %var_2_141 = inttoptr i64 %var_2_138 to i32*
; %var_2_167 = inttoptr i64 %var_2_164 to i32*
; Matched:\<badref\>:  store i32 %var_2_139, i32* %var_2_141, align 4
; store i32 %var_2_165, i32* %var_2_167, align 4
; Matched:%var_2_2282:  %var_2_2282 = load i64, i64* %PC, align 8
; %var_2_168 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i8 0, i8* %AL, align 1, !tbaa !1286
; store i8 0, i8* %AL.i1482, align 1
; Matched:%var_2_143:  %var_2_143 = add i64 %var_2_142, -603
; %var_2_169 = add i64 %var_2_168, -603
; Matched:%var_2_2284:  %var_2_2284 = add i64 %var_2_2282, 7
; %var_2_170 = add i64 %var_2_168, 7
%var_2_171 = load i64, i64* %var_2_6, align 8
%var_2_172 = add i64 %var_2_171, -8
; Matched:%var_2_1810:  %var_2_1810 = inttoptr i64 %var_2_1809 to i64*
; %var_2_173 = inttoptr i64 %var_2_172 to i64*
; Matched:\<badref\>:  store i64 %var_2_1807, i64* %var_2_1810, align 8
; store i64 %var_2_170, i64* %var_2_173, align 8
; Matched:\<badref\>:  store i64 %var_2_1543, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_172, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_143, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_169, i64* %var_2_3, align 8
%var_2_174 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %var_2_160)
%var_2_175 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x402f31_type* @G__0x402f31 to i64), i64* %RSI.i245, align 8
%var_2_176 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
store i64 %var_2_176, i64* %RDI.i594, align 8
; Matched:%var_2_151:  %var_2_151 = load i64, i64* %RBP, align 8
; %var_2_177 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_152:  %var_2_152 = add i64 %var_2_151, -96
; %var_2_178 = add i64 %var_2_177, -96
; Matched:%var_2_153:  %var_2_153 = add i64 %var_2_149, 22
; %var_2_179 = add i64 %var_2_175, 22
; Matched:\<badref\>:  store i64 %var_2_153, i64* %PC, align 8
; store i64 %var_2_179, i64* %var_2_3, align 8
; Matched:%var_2_154:  %var_2_154 = inttoptr i64 %var_2_152 to i64*
; %var_2_180 = inttoptr i64 %var_2_178 to i64*
; Matched:%var_2_155:  %var_2_155 = load i64, i64* %var_2_154, align 8
; %var_2_181 = load i64, i64* %var_2_180, align 8
; Matched:\<badref\>:  store i64 %var_2_155, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_181, i64* %RDX.i359, align 8
; Matched:%var_2_156:  %var_2_156 = add i64 %var_2_151, -876
; %var_2_182 = add i64 %var_2_177, -876
; Matched:%var_2_157:  %var_2_157 = load i32, i32* %EAX, align 4
; %var_2_183 = load i32, i32* %EAX.i1471, align 4
%var_2_184 = add i64 %var_2_175, 28
store i64 %var_2_184, i64* %var_2_3, align 8
; Matched:%var_2_159:  %var_2_159 = inttoptr i64 %var_2_156 to i32*
; %var_2_185 = inttoptr i64 %var_2_182 to i32*
; Matched:\<badref\>:  store i32 %var_2_157, i32* %var_2_159, align 4
; store i32 %var_2_183, i32* %var_2_185, align 4
; Matched:%var_2_1140:  %var_2_1140 = load i64, i64* %PC, align 8
; %var_2_186 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i8 0, i8* %AL, align 1, !tbaa !1286
; store i8 0, i8* %AL.i1482, align 1
; Matched:%var_2_161:  %var_2_161 = add i64 %var_2_160, -638
; %var_2_187 = add i64 %var_2_186, -638
; Matched:%var_2_2324:  %var_2_2324 = add i64 %var_2_2322, 7
; %var_2_188 = add i64 %var_2_186, 7
%var_2_189 = load i64, i64* %var_2_6, align 8
%var_2_190 = add i64 %var_2_189, -8
; Matched:%var_2_2327:  %var_2_2327 = inttoptr i64 %var_2_2326 to i64*
; %var_2_191 = inttoptr i64 %var_2_190 to i64*
; Matched:\<badref\>:  store i64 %var_2_2284, i64* %var_2_2287, align 8
; store i64 %var_2_188, i64* %var_2_191, align 8
; Matched:\<badref\>:  store i64 %var_2_1601, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_190, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_161, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_187, i64* %var_2_3, align 8
%var_2_192 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %var_2_174)
%var_2_193 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x402f42_type* @G__0x402f42 to i64), i64* %RSI.i245, align 8
%var_2_194 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
store i64 %var_2_194, i64* %RDI.i594, align 8
; Matched:%var_2_169:  %var_2_169 = load i64, i64* %RBP, align 8
; %var_2_195 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_170:  %var_2_170 = add i64 %var_2_169, -104
; %var_2_196 = add i64 %var_2_195, -104
; Matched:%var_2_171:  %var_2_171 = add i64 %var_2_167, 22
; %var_2_197 = add i64 %var_2_193, 22
; Matched:\<badref\>:  store i64 %var_2_171, i64* %PC, align 8
; store i64 %var_2_197, i64* %var_2_3, align 8
; Matched:%var_2_172:  %var_2_172 = inttoptr i64 %var_2_170 to i64*
; %var_2_198 = inttoptr i64 %var_2_196 to i64*
; Matched:%var_2_173:  %var_2_173 = load i64, i64* %var_2_172, align 8
; %var_2_199 = load i64, i64* %var_2_198, align 8
; Matched:\<badref\>:  store i64 %var_2_173, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_199, i64* %RDX.i359, align 8
; Matched:%var_2_174:  %var_2_174 = add i64 %var_2_169, -880
; %var_2_200 = add i64 %var_2_195, -880
; Matched:%var_2_175:  %var_2_175 = load i32, i32* %EAX, align 4
; %var_2_201 = load i32, i32* %EAX.i1471, align 4
%var_2_202 = add i64 %var_2_193, 28
store i64 %var_2_202, i64* %var_2_3, align 8
; Matched:%var_2_177:  %var_2_177 = inttoptr i64 %var_2_174 to i32*
; %var_2_203 = inttoptr i64 %var_2_200 to i32*
; Matched:\<badref\>:  store i32 %var_2_175, i32* %var_2_177, align 4
; store i32 %var_2_201, i32* %var_2_203, align 4
; Matched:%var_2_2354:  %var_2_2354 = load i64, i64* %PC, align 8
; %var_2_204 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i8 0, i8* %AL, align 1, !tbaa !1286
; store i8 0, i8* %AL.i1482, align 1
; Matched:%var_2_179:  %var_2_179 = add i64 %var_2_178, -673
; %var_2_205 = add i64 %var_2_204, -673
; Matched:%var_2_1835:  %var_2_1835 = add i64 %var_2_1833, 7
; %var_2_206 = add i64 %var_2_204, 7
%var_2_207 = load i64, i64* %var_2_6, align 8
%var_2_208 = add i64 %var_2_207, -8
; Matched:%var_2_1145:  %var_2_1145 = inttoptr i64 %var_2_1144 to i64*
; %var_2_209 = inttoptr i64 %var_2_208 to i64*
; Matched:\<badref\>:  store i64 %var_2_2324, i64* %var_2_2327, align 8
; store i64 %var_2_206, i64* %var_2_209, align 8
; Matched:\<badref\>:  store i64 %var_2_2828, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_208, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_179, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_205, i64* %var_2_3, align 8
%var_2_210 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %var_2_192)
%var_2_211 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %RDI.i594, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %RCX.i347, align 8
%var_2_212 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2632:  %var_2_2632 = add i64 %var_2_2935, -20
; %var_2_213 = add i64 %var_2_212, -20
; Matched:\<badref\>:  store i64 %var_2_2010, i64* %R8, align 8, !tbaa !1261
; store i64 %var_2_213, i64* %var_2_57, align 8
%var_2_214 = add i64 %var_2_211, add (i64 ptrtoint (%G_0x26a0__rip__type* @G_0x26a0__rip_ to i64), i64 24)
%var_2_215 = add i64 %var_2_211, 32
store i64 %var_2_215, i64* %var_2_3, align 8
%var_2_216 = inttoptr i64 %var_2_214 to i64*
%var_2_217 = load i64, i64* %var_2_216, align 8
%var_2_218 = bitcast [32 x %union.VectorReg]* %var_2_40 to double*
%var_2_219 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %var_2_40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
store i64 %var_2_217, i64* %var_2_219, align 1
%var_2_220 = bitcast i64* %var_2_50 to double*
store double 0.000000e+00, double* %var_2_220, align 1
%var_2_221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
%var_2_222 = add i64 %var_2_211, add (i64 ptrtoint (%G_0x26a0__rip__type* @G_0x26a0__rip_ to i64), i64 32)
%var_2_223 = add i64 %var_2_211, 40
store i64 %var_2_223, i64* %var_2_3, align 8
%var_2_224 = inttoptr i64 %var_2_222 to i64*
%var_2_225 = load i64, i64* %var_2_224, align 8
%var_2_226 = bitcast %union.VectorReg* %var_2_221 to double*
%var_2_227 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_221, i64 0, i32 0, i32 0, i32 0, i64 0
store i64 %var_2_225, i64* %var_2_227, align 1
%var_2_228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
%var_2_229 = bitcast i64* %var_2_228 to double*
store double 0.000000e+00, double* %var_2_229, align 1
; Matched:%var_2_197:  %var_2_197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
; %var_2_230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
%var_2_231 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
%var_2_232 = sext i32 %var_2_231 to i64
%var_2_233 = mul nsw i64 %var_2_232, %var_2_232
; Matched:%var_2_201:  %var_2_201 = trunc i64 %var_2_200 to i32
; %var_2_234 = trunc i64 %var_2_233 to i32
; Matched:%var_2_202:  %var_2_202 = and i64 %var_2_200, 4294967295
; %var_2_235 = and i64 %var_2_233, 4294967295
; Matched:%var_2_203:  %var_2_203 = shl i64 %var_2_200, 32
; %var_2_236 = shl i64 %var_2_233, 32
; Matched:%var_2_204:  %var_2_204 = ashr exact i64 %var_2_203, 32
; %var_2_237 = ashr exact i64 %var_2_236, 32
; Matched:%var_2_205:  %var_2_205 = icmp ne i64 %var_2_204, %var_2_200
; %var_2_238 = icmp ne i64 %var_2_237, %var_2_233
; Matched:%var_2_206:  %var_2_206 = zext i1 %var_2_205 to i8
; %var_2_239 = zext i1 %var_2_238 to i8
; Matched:%var_2_207:  %var_2_207 = and i32 %var_2_201, 255
; %var_2_240 = and i32 %var_2_234, 255
; Matched:%var_2_208:  %var_2_208 = tail call i32 @llvm.ctpop.i32(i32 %var_2_207) #12
; %var_2_241 = tail call i32 @llvm.ctpop.i32(i32 %var_2_240)
; Matched:%var_2_209:  %var_2_209 = trunc i32 %var_2_208 to i8
; %var_2_242 = trunc i32 %var_2_241 to i8
; Matched:%var_2_210:  %var_2_210 = and i8 %var_2_209, 1
; %var_2_243 = and i8 %var_2_242, 1
; Matched:%var_2_211:  %var_2_211 = xor i8 %var_2_210, 1
; %var_2_244 = xor i8 %var_2_243, 1
; Matched:%var_2_212:  %var_2_212 = lshr i32 %var_2_201, 31
; %var_2_245 = lshr i32 %var_2_234, 31
; Matched:%var_2_213:  %var_2_213 = trunc i32 %var_2_212 to i8
; %var_2_246 = trunc i32 %var_2_245 to i8
%var_2_247 = trunc i64 %var_2_233 to i32
%sext = shl i64 %var_2_233, 32
%var_2_248 = ashr exact i64 %sext, 32
%var_2_249 = mul nsw i64 %var_2_232, %var_2_248
%var_2_250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
%var_2_251 = trunc i64 %var_2_249 to i32
%var_2_252 = sitofp i32 %var_2_251 to double
%var_2_253 = bitcast %union.VectorReg* %var_2_250 to double*
; Matched:\<badref\>:  store double %var_2_218, double* %var_2_219, align 1, !tbaa !1287
; store double %var_2_252, double* %var_2_253, align 1
%var_2_254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
%var_2_255 = bitcast %union.VectorReg* %var_2_254 to i8*
%var_2_256 = bitcast i64 %var_2_217 to <2 x i32>
%var_2_257 = bitcast i64* %var_2_50 to <2 x i32>*
%var_2_258 = extractelement <2 x i32> %var_2_256, i32 0
%var_2_259 = bitcast %union.VectorReg* %var_2_254 to i32*
store i32 %var_2_258, i32* %var_2_259, align 1
%var_2_260 = extractelement <2 x i32> %var_2_256, i32 1
%var_2_261 = getelementptr inbounds i8, i8* %var_2_255, i64 4
%var_2_262 = bitcast i8* %var_2_261 to i32*
store i32 %var_2_260, i32* %var_2_262, align 1
%var_2_263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
%var_2_264 = bitcast i64* %var_2_263 to i32*
store i32 0, i32* %var_2_264, align 1
%var_2_265 = getelementptr inbounds i8, i8* %var_2_255, i64 12
%var_2_266 = bitcast i8* %var_2_265 to i32*
store i32 0, i32* %var_2_266, align 1
%var_2_267 = bitcast %union.VectorReg* %var_2_254 to double*
%var_2_268 = load double, double* %var_2_267, align 1
%var_2_269 = fmul double %var_2_268, %var_2_252
%var_2_270 = load double, double* %var_2_226, align 1
%var_2_271 = fdiv double %var_2_269, %var_2_270
; Matched:\<badref\>:  store i64 %var_2_202, i64* %var_2_197, align 8, !tbaa !1261
; store i64 %var_2_235, i64* %var_2_230, align 8
; Matched:\<badref\>:  store i8 %var_2_206, i8* %var_2_17, align 1, !tbaa !1267
; store i8 %var_2_239, i8* %var_2_14, align 1
; Matched:\<badref\>:  store i8 %var_2_211, i8* %var_2_18, align 1, !tbaa !1281
; store i8 %var_2_244, i8* %var_2_21, align 1
store i8 0, i8* %var_2_27, align 1
store i8 0, i8* %var_2_30, align 1
; Matched:\<badref\>:  store i8 %var_2_213, i8* %var_2_21, align 1, !tbaa !1283
; store i8 %var_2_246, i8* %var_2_33, align 1
; Matched:\<badref\>:  store i8 %var_2_206, i8* %var_2_22, align 1, !tbaa !1284
; store i8 %var_2_239, i8* %var_2_39, align 1
%var_2_272 = sitofp i32 %var_2_247 to double
; Matched:\<badref\>:  store double %var_2_236, double* %var_2_193, align 1, !tbaa !1287
; store double %var_2_272, double* %var_2_226, align 1
%var_2_273 = load double, double* %var_2_218, align 1
%var_2_274 = bitcast i64* %var_2_50 to <2 x i32>*
%var_2_275 = load <2 x i32>, <2 x i32>* %var_2_274, align 1
%var_2_276 = fmul double %var_2_272, %var_2_273
%var_2_277 = fadd double %var_2_276, %var_2_271
store double %var_2_277, double* %var_2_267, align 1
%var_2_278 = bitcast double %var_2_276 to <2 x i32>
%var_2_279 = fptrunc double %var_2_277 to float
store float %var_2_279, float* %var_2_46, align 1
%var_2_280 = extractelement <2 x i32> %var_2_278, i32 1
%var_2_281 = bitcast i8* %var_2_48 to i32*
; Matched:\<badref\>:  store i32 %var_2_244, i32* %var_2_245, align 1, !tbaa !1265
; store i32 %var_2_280, i32* %var_2_281, align 1
%var_2_282 = extractelement <2 x i32> %var_2_275, i32 0
%var_2_283 = bitcast i64* %var_2_50 to i32*
; Matched:\<badref\>:  store i32 %var_2_644, i32* %var_2_247, align 1, !tbaa !1265
; store i32 %var_2_282, i32* %var_2_283, align 1
%var_2_284 = extractelement <2 x i32> %var_2_275, i32 1
%var_2_285 = bitcast i8* %var_2_52 to i32*
; Matched:\<badref\>:  store i32 %var_2_2537, i32* %var_2_249, align 1, !tbaa !1265
; store i32 %var_2_284, i32* %var_2_285, align 1
; Matched:%var_2_250:  %var_2_250 = load i64, i64* %RBP, align 8
; %var_2_286 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_251:  %var_2_251 = add i64 %var_2_250, -12
; %var_2_287 = add i64 %var_2_286, -12
; Matched:%var_2_252:  %var_2_252 = add i64 %var_2_185, 121
; %var_2_288 = add i64 %var_2_211, 121
; Matched:\<badref\>:  store i64 %var_2_252, i64* %PC, align 8
; store i64 %var_2_288, i64* %var_2_3, align 8
%var_2_289 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_290 = extractelement <2 x float> %var_2_289, i32 0
; Matched:%var_2_255:  %var_2_255 = inttoptr i64 %var_2_251 to float*
; %var_2_291 = inttoptr i64 %var_2_287 to float*
; Matched:\<badref\>:  store float %var_2_254, float* %var_2_255, align 4
; store float %var_2_290, float* %var_2_291, align 4
; Matched:%var_2_256:  %var_2_256 = load i64, i64* %PC, align 8
; %var_2_292 = load i64, i64* %var_2_3, align 8
%var_2_293 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
%var_2_294 = zext i32 %var_2_293 to i64
store i64 %var_2_294, i64* %RSI.i245, align 8
%var_2_295 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
%var_2_296 = zext i32 %var_2_295 to i64
store i64 %var_2_296, i64* %RDX.i359, align 8
; Matched:%var_2_261:  %var_2_261 = load i64, i64* %RBP, align 8
; %var_2_297 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_262:  %var_2_262 = add i64 %var_2_261, -884
; %var_2_298 = add i64 %var_2_297, -884
; Matched:%var_2_263:  %var_2_263 = load i32, i32* %EAX, align 4
; %var_2_299 = load i32, i32* %EAX.i1471, align 4
; Matched:%var_2_264:  %var_2_264 = add i64 %var_2_256, 20
; %var_2_300 = add i64 %var_2_292, 20
; Matched:\<badref\>:  store i64 %var_2_264, i64* %PC, align 8
; store i64 %var_2_300, i64* %var_2_3, align 8
; Matched:%var_2_265:  %var_2_265 = inttoptr i64 %var_2_262 to i32*
; %var_2_301 = inttoptr i64 %var_2_298 to i32*
; Matched:\<badref\>:  store i32 %var_2_263, i32* %var_2_265, align 4
; store i32 %var_2_299, i32* %var_2_301, align 4
%var_2_302 = load i64, i64* %var_2_3, align 8
%var_2_303 = add i64 %var_2_302, 3899
; Matched:%var_2_3099:  %var_2_3099 = add i64 %var_2_3097, 5
; %var_2_304 = add i64 %var_2_302, 5
%var_2_305 = load i64, i64* %var_2_6, align 8
%var_2_306 = add i64 %var_2_305, -8
; Matched:%var_2_303:  %var_2_303 = inttoptr i64 %var_2_302 to i64*
; %var_2_307 = inttoptr i64 %var_2_306 to i64*
; Matched:\<badref\>:  store i64 %var_2_300, i64* %var_2_303, align 8
; store i64 %var_2_304, i64* %var_2_307, align 8
; Matched:\<badref\>:  store i64 %var_2_1823, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_306, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_267, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_303, i64* %var_2_3, align 8
%call2_400825 = tail call %struct.Memory* @sub_401760.matgen(%struct.State* %0, i64 %var_2_303, %struct.Memory* %var_2_210)
%var_2_308 = load i64, i64* %var_2_3, align 8
%var_2_309 = add i64 %var_2_308, -570
; Matched:%var_2_347:  %var_2_347 = add i64 %var_2_345, 5
; %var_2_310 = add i64 %var_2_308, 5
%var_2_311 = load i64, i64* %var_2_6, align 8
%var_2_312 = add i64 %var_2_311, -8
; Matched:%var_2_271:  %var_2_271 = inttoptr i64 %var_2_270 to i64*
; %var_2_313 = inttoptr i64 %var_2_312 to i64*
; Matched:\<badref\>:  store i64 %var_2_268, i64* %var_2_271, align 8
; store i64 %var_2_310, i64* %var_2_313, align 8
; Matched:\<badref\>:  store i64 %var_2_2358, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_312, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_274, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_309, i64* %var_2_3, align 8
%call2_40082a = tail call %struct.Memory* @sub_4005f0.second(%struct.State* %0, i64 %var_2_309, %struct.Memory* %call2_400825)
; Matched:%var_2_97:  %var_2_97 = load i64, i64* %PC, align 8
; %var_2_314 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %RDI.i594, align 8
  store i64 ptrtoint (%G__0x62b7a0_type* @G__0x62b7a0 to i64), i64* %RCX.i347, align 8
store i64 ptrtoint (%G__0x62bac0_type* @G__0x62bac0 to i64), i64* %var_2_57, align 8
; Matched:%var_2_2717:  %var_2_2717 = load i64, i64* %RBP, align 8
; %var_2_315 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_282:  %var_2_282 = add i64 %var_2_281, -40
; %var_2_316 = add i64 %var_2_315, -40
; Matched:%var_2_104:  %var_2_104 = add i64 %var_2_97, 35
; %var_2_317 = add i64 %var_2_314, 35
; Matched:\<badref\>:  store i64 %var_2_104, i64* %PC, align 8
; store i64 %var_2_317, i64* %var_2_3, align 8
%var_2_318 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_319 = extractelement <2 x float> %var_2_318, i32 0
; Matched:%var_2_1724:  %var_2_1724 = inttoptr i64 %var_2_1719 to float*
; %var_2_320 = inttoptr i64 %var_2_316 to float*
; Matched:\<badref\>:  store float %var_2_332, float* %var_2_333, align 4
; store float %var_2_319, float* %var_2_320, align 4
%var_2_321 = load i64, i64* %var_2_3, align 8
%var_2_322 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
%var_2_323 = zext i32 %var_2_322 to i64
store i64 %var_2_323, i64* %RSI.i245, align 8
%var_2_324 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
%var_2_325 = zext i32 %var_2_324 to i64
store i64 %var_2_325, i64* %RDX.i359, align 8
%var_2_326 = add i64 %var_2_321, 4318
; Matched:%var_2_340:  %var_2_340 = add i64 %var_2_334, 19
; %var_2_327 = add i64 %var_2_321, 19
%var_2_328 = load i64, i64* %var_2_6, align 8
%var_2_329 = add i64 %var_2_328, -8
; Matched:%var_2_325:  %var_2_325 = inttoptr i64 %var_2_324 to i64*
; %var_2_330 = inttoptr i64 %var_2_329 to i64*
; Matched:\<badref\>:  store i64 %var_2_322, i64* %var_2_325, align 8
; store i64 %var_2_327, i64* %var_2_330, align 8
; Matched:\<badref\>:  store i64 %var_2_2029, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_329, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_292, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_326, i64* %var_2_3, align 8
%call2_400860 = tail call %struct.Memory* @sub_401930.dgefa(%struct.State* %0, i64 %var_2_326, %struct.Memory* %call2_40082a)
%var_2_331 = load i64, i64* %var_2_3, align 8
%var_2_332 = add i64 %var_2_331, -629
; Matched:%var_2_268:  %var_2_268 = add i64 %var_2_266, 5
; %var_2_333 = add i64 %var_2_331, 5
%var_2_334 = load i64, i64* %var_2_6, align 8
%var_2_335 = add i64 %var_2_334, -8
; Matched:%var_2_1602:  %var_2_1602 = inttoptr i64 %var_2_1601 to i64*
; %var_2_336 = inttoptr i64 %var_2_335 to i64*
; Matched:\<badref\>:  store i64 %var_2_1599, i64* %var_2_1602, align 8
; store i64 %var_2_333, i64* %var_2_336, align 8
; Matched:\<badref\>:  store i64 %var_2_146, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_335, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_299, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_332, i64* %var_2_3, align 8
%call2_400865 = tail call %struct.Memory* @sub_4005f0.second(%struct.State* %0, i64 %var_2_332, %struct.Memory* %call2_400860)
%var_2_337 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_3047:  %var_2_3047 = add i64 %var_2_3046, -40
; %var_2_338 = add i64 %var_2_337, -40
%var_2_339 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_714:  %var_2_714 = add i64 %var_2_713, 5
; %var_2_340 = add i64 %var_2_339, 5
; Matched:\<badref\>:  store i64 %var_2_459, i64* %PC, align 8
; store i64 %var_2_340, i64* %var_2_3, align 8
%var_2_341 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_342 = load <2 x i32>, <2 x i32>* %var_2_257, align 1
; Matched:%var_2_3052:  %var_2_3052 = inttoptr i64 %var_2_3047 to float*
; %var_2_343 = inttoptr i64 %var_2_338 to float*
; Matched:%var_2_3053:  %var_2_3053 = load float, float* %var_2_3052, align 4
; %var_2_344 = load float, float* %var_2_343, align 4
%var_2_345 = extractelement <2 x float> %var_2_341, i32 0
; Matched:%var_2_314:  %var_2_314 = fsub float %var_2_313, %var_2_312
; %var_2_346 = fsub float %var_2_345, %var_2_344
; Matched:\<badref\>:  store float %var_2_314, float* %var_2_25, align 1, !tbaa !1265
; store float %var_2_346, float* %var_2_46, align 1
%var_2_347 = bitcast <2 x float> %var_2_341 to <2 x i32>
%var_2_348 = extractelement <2 x i32> %var_2_347, i32 1
; Matched:\<badref\>:  store i32 %var_2_1412, i32* %var_2_245, align 1, !tbaa !1265
; store i32 %var_2_348, i32* %var_2_281, align 1
%var_2_349 = extractelement <2 x i32> %var_2_342, i32 0
; Matched:\<badref\>:  store i32 %var_2_1281, i32* %var_2_247, align 1, !tbaa !1265
; store i32 %var_2_349, i32* %var_2_283, align 1
%var_2_350 = extractelement <2 x i32> %var_2_342, i32 1
; Matched:\<badref\>:  store i32 %var_2_248, i32* %var_2_249, align 1, !tbaa !1265
; store i32 %var_2_350, i32* %var_2_285, align 1
%var_2_351 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_352 = extractelement <2 x float> %var_2_351, i32 0
store float %var_2_352, float* bitcast (%G_0x62bad0_type* @G_0x62bad0 to float*), align 8
%var_2_353 = add i64 %var_2_339, -634
; Matched:%var_2_293:  %var_2_293 = add i64 %var_2_287, 19
; %var_2_354 = add i64 %var_2_339, 19
%var_2_355 = load i64, i64* %var_2_6, align 8
%var_2_356 = add i64 %var_2_355, -8
; Matched:%var_2_343:  %var_2_343 = inttoptr i64 %var_2_342 to i64*
; %var_2_357 = inttoptr i64 %var_2_356 to i64*
; Matched:\<badref\>:  store i64 %var_2_340, i64* %var_2_343, align 8
; store i64 %var_2_354, i64* %var_2_357, align 8
; Matched:\<badref\>:  store i64 %var_2_2272, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_356, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_321, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_353, i64* %var_2_3, align 8
%call2_400878 = tail call %struct.Memory* @sub_4005f0.second(%struct.State* %0, i64 %var_2_353, %struct.Memory* %call2_400865)
%var_2_358 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %RDI.i594, align 8
  store i64 ptrtoint (%G__0x62b7a0_type* @G__0x62b7a0 to i64), i64* %RCX.i347, align 8
store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %var_2_57, align 8
  store i64 0, i64* %R9.i, align 8
store i8 0, i8* %var_2_14, align 1
store i8 1, i8* %var_2_21, align 1
store i8 1, i8* %var_2_30, align 1
store i8 0, i8* %var_2_33, align 1
store i8 0, i8* %var_2_39, align 1
store i8 0, i8* %var_2_27, align 1
; Matched:%var_2_1604:  %var_2_1604 = load i64, i64* %RBP, align 8
; %var_2_359 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2718:  %var_2_2718 = add i64 %var_2_2717, -40
; %var_2_360 = add i64 %var_2_359, -40
; Matched:%var_2_330:  %var_2_330 = add i64 %var_2_327, 38
; %var_2_361 = add i64 %var_2_358, 38
; Matched:\<badref\>:  store i64 %var_2_2187, i64* %PC, align 8
; store i64 %var_2_361, i64* %var_2_3, align 8
%var_2_362 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_363 = extractelement <2 x float> %var_2_362, i32 0
; Matched:%var_2_333:  %var_2_333 = inttoptr i64 %var_2_329 to float*
; %var_2_364 = inttoptr i64 %var_2_360 to float*
; Matched:\<badref\>:  store float %var_2_285, float* %var_2_286, align 4
; store float %var_2_363, float* %var_2_364, align 4
%var_2_365 = load i64, i64* %var_2_3, align 8
%var_2_366 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
%var_2_367 = zext i32 %var_2_366 to i64
store i64 %var_2_367, i64* %RSI.i245, align 8
%var_2_368 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
%var_2_369 = zext i32 %var_2_368 to i64
store i64 %var_2_369, i64* %RDX.i359, align 8
%var_2_370 = add i64 %var_2_365, 5021
; Matched:%var_2_322:  %var_2_322 = add i64 %var_2_307, 19
; %var_2_371 = add i64 %var_2_365, 19
%var_2_372 = load i64, i64* %var_2_6, align 8
%var_2_373 = add i64 %var_2_372, -8
; Matched:%var_2_296:  %var_2_296 = inttoptr i64 %var_2_295 to i64*
; %var_2_374 = inttoptr i64 %var_2_373 to i64*
; Matched:\<badref\>:  store i64 %var_2_293, i64* %var_2_296, align 8
; store i64 %var_2_371, i64* %var_2_374, align 8
; Matched:\<badref\>:  store i64 %var_2_270, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_373, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_339, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_370, i64* %var_2_3, align 8
%call2_4008b1 = tail call %struct.Memory* @sub_401c40.dgesl(%struct.State* %0, i64 %var_2_370, %struct.Memory* %call2_400878)
%var_2_375 = load i64, i64* %var_2_3, align 8
%var_2_376 = add i64 %var_2_375, -710
; Matched:%var_2_1599:  %var_2_1599 = add i64 %var_2_1597, 5
; %var_2_377 = add i64 %var_2_375, 5
%var_2_378 = load i64, i64* %var_2_6, align 8
%var_2_379 = add i64 %var_2_378, -8
; Matched:%var_2_278:  %var_2_278 = inttoptr i64 %var_2_277 to i64*
; %var_2_380 = inttoptr i64 %var_2_379 to i64*
; Matched:\<badref\>:  store i64 %var_2_275, i64* %var_2_278, align 8
; store i64 %var_2_377, i64* %var_2_380, align 8
; Matched:\<badref\>:  store i64 %var_2_1128, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_379, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_346, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_376, i64* %var_2_3, align 8
%call2_4008b6 = tail call %struct.Memory* @sub_4005f0.second(%struct.State* %0, i64 %var_2_376, %struct.Memory* %call2_4008b1)
%var_2_381 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1547:  %var_2_1547 = add i64 %var_2_1546, -40
; %var_2_382 = add i64 %var_2_381, -40
%var_2_383 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2720:  %var_2_2720 = add i64 %var_2_2719, 5
; %var_2_384 = add i64 %var_2_383, 5
; Matched:\<badref\>:  store i64 %var_2_2126, i64* %PC, align 8
; store i64 %var_2_384, i64* %var_2_3, align 8
%var_2_385 = load <2 x float>, <2 x float>* %var_2_83, align 1
; Matched:%var_2_357:  %var_2_357 = inttoptr i64 %var_2_353 to float*
; %var_2_386 = inttoptr i64 %var_2_382 to float*
; Matched:%var_2_1276:  %var_2_1276 = load float, float* %var_2_1275, align 4
; %var_2_387 = load float, float* %var_2_386, align 4
%var_2_388 = extractelement <2 x float> %var_2_385, i32 0
; Matched:%var_2_1555:  %var_2_1555 = fsub float %var_2_1554, %var_2_1553
; %var_2_389 = fsub float %var_2_388, %var_2_387
; Matched:\<badref\>:  store float %var_2_641, float* %var_2_25, align 1, !tbaa !1265
; store float %var_2_389, float* %var_2_46, align 1
%var_2_390 = bitcast <2 x float> %var_2_385 to <2 x i32>
%var_2_391 = extractelement <2 x i32> %var_2_390, i32 1
; Matched:\<badref\>:  store i32 %var_2_660, i32* %var_2_245, align 1, !tbaa !1265
; store i32 %var_2_391, i32* %var_2_281, align 1
%var_2_392 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_393 = extractelement <2 x float> %var_2_392, i32 0
store float %var_2_393, float* bitcast (%G_0x62bb0c_type* @G_0x62bb0c to float*), align 8
%var_2_394 = load i32, i32* bitcast (%G_0x62bad0_type* @G_0x62bad0 to i32*), align 8
store i32 %var_2_394, i32* %var_2_47, align 1
store float 0.000000e+00, float* %var_2_49, align 1
store float 0.000000e+00, float* %var_2_51, align 1
store float 0.000000e+00, float* %var_2_53, align 1
%var_2_395 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_396 = load <2 x i32>, <2 x i32>* %var_2_257, align 1
%var_2_397 = extractelement <2 x float> %var_2_395, i32 0
%var_2_398 = fadd float %var_2_397, %var_2_393
store float %var_2_398, float* %var_2_46, align 1
%var_2_399 = bitcast <2 x float> %var_2_395 to <2 x i32>
%var_2_400 = extractelement <2 x i32> %var_2_399, i32 1
; Matched:\<badref\>:  store i32 %var_2_2183, i32* %var_2_245, align 1, !tbaa !1265
; store i32 %var_2_400, i32* %var_2_281, align 1
%var_2_401 = extractelement <2 x i32> %var_2_396, i32 0
; Matched:\<badref\>:  store i32 %var_2_2184, i32* %var_2_247, align 1, !tbaa !1265
; store i32 %var_2_401, i32* %var_2_283, align 1
%var_2_402 = extractelement <2 x i32> %var_2_396, i32 1
; Matched:\<badref\>:  store i32 %var_2_1571, i32* %var_2_249, align 1, !tbaa !1265
; store i32 %var_2_402, i32* %var_2_285, align 1
; Matched:%var_2_692:  %var_2_692 = add i64 %var_2_691, -16
; %var_2_403 = add i64 %var_2_381, -16
; Matched:%var_2_2901:  %var_2_2901 = add i64 %var_2_2872, 37
; %var_2_404 = add i64 %var_2_383, 37
; Matched:\<badref\>:  store i64 %var_2_375, i64* %PC, align 8
; store i64 %var_2_404, i64* %var_2_3, align 8
%var_2_405 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_406 = extractelement <2 x float> %var_2_405, i32 0
; Matched:%var_2_1333:  %var_2_1333 = inttoptr i64 %var_2_1329 to float*
; %var_2_407 = inttoptr i64 %var_2_403 to float*
; Matched:\<badref\>:  store float %var_2_695, float* %var_2_696, align 4
; store float %var_2_406, float* %var_2_407, align 4
%var_2_408 = load i64, i64* %var_2_3, align 8
%var_2_409 = add i64 %var_2_408, 11
; Matched:\<badref\>:  store i64 %var_2_1726, i64* %PC, align 8
; store i64 %var_2_409, i64* %var_2_3, align 8
  store i32 0, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  br label %block_.L_4008eb

block_.L_4008eb:                                  ; preds = %block_4008ff, %entry
%var_2_410 = phi i32 [ %var_2_454, %block_4008ff ], [ 0, %entry ]
%var_2_411 = phi i64 [ %var_2_477, %block_4008ff ], [ %var_2_409, %entry ]
; Matched:%var_2_2682:  %var_2_2682 = zext i32 %var_2_2680 to i64
; %var_2_412 = zext i32 %var_2_410 to i64
; Matched:\<badref\>:  store i64 %var_2_2682, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_412, i64* %RAX.i271, align 8
%var_2_413 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
%var_2_414 = sub i32 %var_2_410, %var_2_413
%var_2_415 = icmp ult i32 %var_2_410, %var_2_413
%var_2_416 = zext i1 %var_2_415 to i8
store i8 %var_2_416, i8* %var_2_14, align 1
%var_2_417 = and i32 %var_2_414, 255
%var_2_418 = tail call i32 @llvm.ctpop.i32(i32 %var_2_417)
%var_2_419 = trunc i32 %var_2_418 to i8
%var_2_420 = and i8 %var_2_419, 1
%var_2_421 = xor i8 %var_2_420, 1
store i8 %var_2_421, i8* %var_2_21, align 1
%var_2_422 = xor i32 %var_2_413, %var_2_410
%var_2_423 = xor i32 %var_2_422, %var_2_414
%var_2_424 = lshr i32 %var_2_423, 4
%var_2_425 = trunc i32 %var_2_424 to i8
%var_2_426 = and i8 %var_2_425, 1
store i8 %var_2_426, i8* %var_2_27, align 1
%var_2_427 = icmp eq i32 %var_2_414, 0
%var_2_428 = zext i1 %var_2_427 to i8
store i8 %var_2_428, i8* %var_2_30, align 1
%var_2_429 = lshr i32 %var_2_414, 31
%var_2_430 = trunc i32 %var_2_429 to i8
store i8 %var_2_430, i8* %var_2_33, align 1
%var_2_431 = lshr i32 %var_2_410, 31
%var_2_432 = lshr i32 %var_2_413, 31
%var_2_433 = xor i32 %var_2_432, %var_2_431
%var_2_434 = xor i32 %var_2_429, %var_2_431
%var_2_435 = add nuw nsw i32 %var_2_434, %var_2_433
%var_2_436 = icmp eq i32 %var_2_435, 2
%var_2_437 = zext i1 %var_2_436 to i8
store i8 %var_2_437, i8* %var_2_39, align 1
%var_2_438 = icmp ne i8 %var_2_430, 0
%var_2_439 = xor i1 %var_2_438, %var_2_436
%.v92 = select i1 %var_2_439, i64 20, i64 76
%var_2_440 = add i64 %var_2_411, %.v92
; Matched:\<badref\>:  store i64 %var_2_594, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_440, i64* %var_2_3, align 8
br i1 %var_2_439, label %block_4008ff, label %block_.L_400937

block_4008ff:                                     ; preds = %block_.L_4008eb
%var_2_441 = sext i32 %var_2_410 to i64
; Matched:\<badref\>:  store i64 %var_2_1644, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_441, i64* %RAX.i271, align 8
%var_2_442 = shl nsw i64 %var_2_441, 2
%var_2_443 = add nsw i64 %var_2_442, 6468736
; Matched:%var_2_1647:  %var_2_1647 = add i64 %var_2_594, 17
; %var_2_444 = add i64 %var_2_440, 17
; Matched:\<badref\>:  store i64 %var_2_1647, i64* %PC, align 8
; store i64 %var_2_444, i64* %var_2_3, align 8
%var_2_445 = inttoptr i64 %var_2_443 to i32*
%var_2_446 = load i32, i32* %var_2_445, align 4
store i32 %var_2_446, i32* %var_2_47, align 1
store float 0.000000e+00, float* %var_2_49, align 1
store float 0.000000e+00, float* %var_2_51, align 1
store float 0.000000e+00, float* %var_2_53, align 1
%var_2_447 = add nsw i64 %var_2_442, 6470896
; Matched:%var_2_1651:  %var_2_1651 = add i64 %var_2_594, 34
; %var_2_448 = add i64 %var_2_440, 34
; Matched:\<badref\>:  store i64 %var_2_1651, i64* %PC, align 8
; store i64 %var_2_448, i64* %var_2_3, align 8
%var_2_449 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_450 = extractelement <2 x float> %var_2_449, i32 0
%var_2_451 = inttoptr i64 %var_2_447 to float*
store float %var_2_450, float* %var_2_451, align 4
%var_2_452 = load i64, i64* %var_2_3, align 8
%var_2_453 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
%var_2_454 = add i32 %var_2_453, 1
%var_2_455 = zext i32 %var_2_454 to i64
store i64 %var_2_455, i64* %RAX.i271, align 8
%var_2_456 = icmp eq i32 %var_2_453, -1
%var_2_457 = icmp eq i32 %var_2_454, 0
%var_2_458 = or i1 %var_2_456, %var_2_457
%var_2_459 = zext i1 %var_2_458 to i8
store i8 %var_2_459, i8* %var_2_14, align 1
%var_2_460 = and i32 %var_2_454, 255
%var_2_461 = tail call i32 @llvm.ctpop.i32(i32 %var_2_460)
%var_2_462 = trunc i32 %var_2_461 to i8
%var_2_463 = and i8 %var_2_462, 1
%var_2_464 = xor i8 %var_2_463, 1
store i8 %var_2_464, i8* %var_2_21, align 1
%var_2_465 = xor i32 %var_2_454, %var_2_453
%var_2_466 = lshr i32 %var_2_465, 4
%var_2_467 = trunc i32 %var_2_466 to i8
%var_2_468 = and i8 %var_2_467, 1
store i8 %var_2_468, i8* %var_2_27, align 1
%var_2_469 = zext i1 %var_2_457 to i8
store i8 %var_2_469, i8* %var_2_30, align 1
%var_2_470 = lshr i32 %var_2_454, 31
%var_2_471 = trunc i32 %var_2_470 to i8
store i8 %var_2_471, i8* %var_2_33, align 1
%var_2_472 = lshr i32 %var_2_453, 31
%var_2_473 = xor i32 %var_2_470, %var_2_472
%var_2_474 = add nuw nsw i32 %var_2_473, %var_2_470
%var_2_475 = icmp eq i32 %var_2_474, 2
%var_2_476 = zext i1 %var_2_475 to i8
store i8 %var_2_476, i8* %var_2_39, align 1
store i32 %var_2_454, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
%var_2_477 = add i64 %var_2_452, -54
; Matched:\<badref\>:  store i64 %var_2_1680, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_477, i64* %var_2_3, align 8
  br label %block_.L_4008eb

block_.L_400937:                                  ; preds = %block_.L_4008eb
%var_2_478 = bitcast %union.VectorReg* %var_2_221 to i8*
%var_2_479 = bitcast %union.VectorReg* %var_2_250 to i8*
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %RDI.i594, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %RCX.i347, align 8
%var_2_480 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1017:  %var_2_1017 = add i64 %var_2_1016, -20
; %var_2_481 = add i64 %var_2_480, -20
; Matched:\<badref\>:  store i64 %var_2_3003, i64* %R8, align 8, !tbaa !1261
; store i64 %var_2_481, i64* %var_2_57, align 8
%var_2_482 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
%var_2_483 = zext i32 %var_2_482 to i64
store i64 %var_2_483, i64* %RSI.i245, align 8
%var_2_484 = zext i32 %var_2_413 to i64
store i64 %var_2_484, i64* %RDX.i359, align 8
%var_2_485 = add i64 %var_2_440, 3625
; Matched:%var_2_2623:  %var_2_2623 = add i64 %var_2_594, 43
; %var_2_486 = add i64 %var_2_440, 43
%var_2_487 = load i64, i64* %var_2_6, align 8
%var_2_488 = add i64 %var_2_487, -8
; Matched:%var_2_2626:  %var_2_2626 = inttoptr i64 %var_2_2625 to i64*
; %var_2_489 = inttoptr i64 %var_2_488 to i64*
; Matched:\<badref\>:  store i64 %var_2_2623, i64* %var_2_2626, align 8
; store i64 %var_2_486, i64* %var_2_489, align 8
; Matched:\<badref\>:  store i64 %var_2_2372, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_488, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_2622, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_485, i64* %var_2_3, align 8
%call2_40095d = tail call %struct.Memory* @sub_401760.matgen(%struct.State* nonnull %0, i64 %var_2_485, %struct.Memory* %call2_4008b6)
%var_2_490 = load i64, i64* %var_2_3, align 8
%var_2_491 = add i64 %var_2_490, 11
; Matched:\<badref\>:  store i64 %var_2_2725, i64* %PC, align 8
; store i64 %var_2_491, i64* %var_2_3, align 8
  store i32 0, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
; Matched:%var_2_2630:  %var_2_2630 = bitcast %union.anon* %var_2_4 to [2 x i32]*
; %var_2_492 = bitcast %union.anon* %var_2_55 to [2 x i32]*
; Matched:  %ECX = bitcast %union.anon* %var_2_4 to i32*
; %var_2_493 = bitcast %union.anon* %var_2_55 to i32*
; Matched:%var_2_2631:  %var_2_2631 = getelementptr inbounds [2 x i32], [2 x i32]* %var_2_2630, i64 0, i64 1
; %var_2_494 = getelementptr inbounds [2 x i32], [2 x i32]* %var_2_492, i64 0, i64 1
  br label %block_.L_40096d

block_.L_40096d:                                  ; preds = %block_400981, %block_.L_400937
%var_2_495 = phi i32 [ %var_2_544, %block_400981 ], [ 0, %block_.L_400937 ]
%var_2_496 = phi i64 [ %var_2_567, %block_400981 ], [ %var_2_491, %block_.L_400937 ]
; Matched:%var_2_383:  %var_2_383 = zext i32 %var_2_381 to i64
; %var_2_497 = zext i32 %var_2_495 to i64
; Matched:\<badref\>:  store i64 %var_2_383, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_497, i64* %RAX.i271, align 8
%var_2_498 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
%var_2_499 = sub i32 %var_2_495, %var_2_498
%var_2_500 = icmp ult i32 %var_2_495, %var_2_498
%var_2_501 = zext i1 %var_2_500 to i8
store i8 %var_2_501, i8* %var_2_14, align 1
%var_2_502 = and i32 %var_2_499, 255
%var_2_503 = tail call i32 @llvm.ctpop.i32(i32 %var_2_502)
%var_2_504 = trunc i32 %var_2_503 to i8
%var_2_505 = and i8 %var_2_504, 1
%var_2_506 = xor i8 %var_2_505, 1
store i8 %var_2_506, i8* %var_2_21, align 1
%var_2_507 = xor i32 %var_2_498, %var_2_495
%var_2_508 = xor i32 %var_2_507, %var_2_499
%var_2_509 = lshr i32 %var_2_508, 4
%var_2_510 = trunc i32 %var_2_509 to i8
%var_2_511 = and i8 %var_2_510, 1
store i8 %var_2_511, i8* %var_2_27, align 1
%var_2_512 = icmp eq i32 %var_2_499, 0
%var_2_513 = zext i1 %var_2_512 to i8
store i8 %var_2_513, i8* %var_2_30, align 1
%var_2_514 = lshr i32 %var_2_499, 31
%var_2_515 = trunc i32 %var_2_514 to i8
store i8 %var_2_515, i8* %var_2_33, align 1
%var_2_516 = lshr i32 %var_2_495, 31
%var_2_517 = lshr i32 %var_2_498, 31
%var_2_518 = xor i32 %var_2_517, %var_2_516
%var_2_519 = xor i32 %var_2_514, %var_2_516
%var_2_520 = add nuw nsw i32 %var_2_519, %var_2_518
%var_2_521 = icmp eq i32 %var_2_520, 2
%var_2_522 = zext i1 %var_2_521 to i8
store i8 %var_2_522, i8* %var_2_39, align 1
%var_2_523 = icmp ne i8 %var_2_515, 0
%var_2_524 = xor i1 %var_2_523, %var_2_521
%.v93 = select i1 %var_2_524, i64 20, i64 90
%var_2_525 = add i64 %var_2_496, %.v93
; Matched:\<badref\>:  store i64 %var_2_411, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_525, i64* %var_2_3, align 8
br i1 %var_2_524, label %block_400981, label %block_.L_4009c7

block_400981:                                     ; preds = %block_.L_40096d
%var_2_526 = sext i32 %var_2_495 to i64
; Matched:\<badref\>:  store i64 %var_2_1953, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_526, i64* %RAX.i271, align 8
%var_2_527 = shl nsw i64 %var_2_526, 2
%var_2_528 = add nsw i64 %var_2_527, 6468736
; Matched:%var_2_3142:  %var_2_3142 = add i64 %var_2_411, 17
; %var_2_529 = add i64 %var_2_525, 17
; Matched:\<badref\>:  store i64 %var_2_3142, i64* %PC, align 8
; store i64 %var_2_529, i64* %var_2_3, align 8
%var_2_530 = inttoptr i64 %var_2_528 to i32*
%var_2_531 = load i32, i32* %var_2_530, align 4
store i32 %var_2_531, i32* %var_2_47, align 1
store float 0.000000e+00, float* %var_2_49, align 1
; Matched:%var_2_3145:  %var_2_3145 = load i64, i64* %var_2_190, align 1
; %var_2_532 = load i64, i64* %var_2_219, align 1
; Matched:%var_2_3146:  %var_2_3146 = trunc i64 %var_2_3145 to i32
; %var_2_533 = trunc i64 %var_2_532 to i32
; Matched:\<badref\>:  store i32 %var_2_3146, i32* %ECX, align 1, !tbaa !1289
; store i32 %var_2_533, i32* %var_2_493, align 1
; Matched:\<badref\>:  store i32 0, i32* %var_2_2631, align 1, !tbaa !1289
; store i32 0, i32* %var_2_494, align 1
; Matched:%var_2_3147:  %var_2_3147 = load i64, i64* %RCX, align 8
; %var_2_534 = load i64, i64* %RCX.i347, align 8
; Matched:%var_2_3148:  %var_2_3148 = xor i64 %var_2_3147, -2147483648
; %var_2_535 = xor i64 %var_2_534, -2147483648
; Matched:%var_2_3149:  %var_2_3149 = and i64 %var_2_3148, 4294967295
; %var_2_536 = and i64 %var_2_535, 4294967295
; Matched:\<badref\>:  store i64 %var_2_3149, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_536, i64* %RCX.i347, align 8
; Matched:%var_2_3150:  %var_2_3150 = trunc i64 %var_2_3148 to i32
; %var_2_537 = trunc i64 %var_2_535 to i32
; Matched:\<badref\>:  store i32 %var_2_3150, i32* %var_2_26, align 1, !tbaa !1289
; store i32 %var_2_537, i32* %var_2_47, align 1
store i32 0, i32* %var_2_281, align 1
store i32 0, i32* %var_2_283, align 1
store i32 0, i32* %var_2_285, align 1
; Matched:%var_2_3151:  %var_2_3151 = add i64 %var_2_411, 48
; %var_2_538 = add i64 %var_2_525, 48
; Matched:\<badref\>:  store i64 %var_2_3151, i64* %PC, align 8
; store i64 %var_2_538, i64* %var_2_3, align 8
%var_2_539 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_540 = extractelement <2 x float> %var_2_539, i32 0
%var_2_541 = inttoptr i64 %var_2_528 to float*
store float %var_2_540, float* %var_2_541, align 4
%var_2_542 = load i64, i64* %var_2_3, align 8
%var_2_543 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
%var_2_544 = add i32 %var_2_543, 1
%var_2_545 = zext i32 %var_2_544 to i64
store i64 %var_2_545, i64* %RAX.i271, align 8
%var_2_546 = icmp eq i32 %var_2_543, -1
%var_2_547 = icmp eq i32 %var_2_544, 0
%var_2_548 = or i1 %var_2_546, %var_2_547
%var_2_549 = zext i1 %var_2_548 to i8
store i8 %var_2_549, i8* %var_2_14, align 1
%var_2_550 = and i32 %var_2_544, 255
%var_2_551 = tail call i32 @llvm.ctpop.i32(i32 %var_2_550)
%var_2_552 = trunc i32 %var_2_551 to i8
%var_2_553 = and i8 %var_2_552, 1
%var_2_554 = xor i8 %var_2_553, 1
store i8 %var_2_554, i8* %var_2_21, align 1
%var_2_555 = xor i32 %var_2_544, %var_2_543
%var_2_556 = lshr i32 %var_2_555, 4
%var_2_557 = trunc i32 %var_2_556 to i8
%var_2_558 = and i8 %var_2_557, 1
store i8 %var_2_558, i8* %var_2_27, align 1
%var_2_559 = zext i1 %var_2_547 to i8
store i8 %var_2_559, i8* %var_2_30, align 1
%var_2_560 = lshr i32 %var_2_544, 31
%var_2_561 = trunc i32 %var_2_560 to i8
store i8 %var_2_561, i8* %var_2_33, align 1
%var_2_562 = lshr i32 %var_2_543, 31
%var_2_563 = xor i32 %var_2_560, %var_2_562
%var_2_564 = add nuw nsw i32 %var_2_563, %var_2_560
%var_2_565 = icmp eq i32 %var_2_564, 2
%var_2_566 = zext i1 %var_2_565 to i8
store i8 %var_2_566, i8* %var_2_39, align 1
store i32 %var_2_544, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
%var_2_567 = add i64 %var_2_542, -68
; Matched:\<badref\>:  store i64 %var_2_3180, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_567, i64* %var_2_3, align 8
  br label %block_.L_40096d

block_.L_4009c7:                                  ; preds = %block_.L_40096d
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %RSI.i245, align 8
store i64 ptrtoint (%G__0x62bcf0_type* @G__0x62bcf0 to i64), i64* %var_2_57, align 8
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %R9.i, align 8
%var_2_568 = zext i32 %var_2_498 to i64
; Matched:\<badref\>:  store i64 %var_2_1441, i64* %RDI, align 8, !tbaa !1261
; store i64 %var_2_568, i64* %RDI.i594, align 8
store i64 %var_2_568, i64* %RDX.i359, align 8
; Matched:%var_2_1877:  %var_2_1877 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_604040__bss_type* @seg_604040__bss to i64), i64 16) to i32*), align 16
; %var_2_569 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
; Matched:%var_2_1878:  %var_2_1878 = zext i32 %var_2_1877 to i64
; %var_2_570 = zext i32 %var_2_569 to i64
; Matched:\<badref\>:  store i64 %var_2_1878, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_570, i64* %RCX.i347, align 8
%var_2_571 = add i64 %var_2_525, 5625
; Matched:%var_2_1880:  %var_2_1880 = add i64 %var_2_411, 56
; %var_2_572 = add i64 %var_2_525, 56
%var_2_573 = load i64, i64* %var_2_6, align 8
%var_2_574 = add i64 %var_2_573, -8
; Matched:%var_2_1883:  %var_2_1883 = inttoptr i64 %var_2_1882 to i64*
; %var_2_575 = inttoptr i64 %var_2_574 to i64*
; Matched:\<badref\>:  store i64 %var_2_1880, i64* %var_2_1883, align 8
; store i64 %var_2_572, i64* %var_2_575, align 8
; Matched:\<badref\>:  store i64 %var_2_132, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_574, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1879, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_571, i64* %var_2_3, align 8
%call2_4009fa = tail call %struct.Memory* @sub_401fc0.dmxpy(%struct.State* nonnull %0, i64 %var_2_571, %struct.Memory* %call2_40095d)
%var_2_576 = load i64, i64* %var_2_3, align 8
%var_2_577 = bitcast [32 x %union.VectorReg]* %var_2_40 to <4 x i32>*
store <4 x i32> zeroinitializer, <4 x i32>* %var_2_577, align 1
; Matched:%var_2_1887:  %var_2_1887 = load i64, i64* %RBP, align 8
; %var_2_578 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1888:  %var_2_1888 = add i64 %var_2_1887, -28
; %var_2_579 = add i64 %var_2_578, -28
%var_2_580 = add i64 %var_2_576, 8
store i64 %var_2_580, i64* %var_2_3, align 8
%var_2_581 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_582 = extractelement <2 x float> %var_2_581, i32 0
; Matched:%var_2_1892:  %var_2_1892 = inttoptr i64 %var_2_1888 to float*
; %var_2_583 = inttoptr i64 %var_2_579 to float*
; Matched:\<badref\>:  store float %var_2_2868, float* %var_2_2869, align 4
; store float %var_2_582, float* %var_2_583, align 4
; Matched:%var_2_526:  %var_2_526 = load i64, i64* %RBP, align 8
; %var_2_584 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1894:  %var_2_1894 = add i64 %var_2_1893, -24
; %var_2_585 = add i64 %var_2_584, -24
%var_2_586 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_459:  %var_2_459 = add i64 %var_2_458, 5
; %var_2_587 = add i64 %var_2_586, 5
; Matched:\<badref\>:  store i64 %var_2_1401, i64* %PC, align 8
; store i64 %var_2_587, i64* %var_2_3, align 8
%var_2_588 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_589 = extractelement <2 x float> %var_2_588, i32 0
; Matched:%var_2_537:  %var_2_537 = inttoptr i64 %var_2_533 to float*
; %var_2_590 = inttoptr i64 %var_2_585 to float*
; Matched:\<badref\>:  store float %var_2_536, float* %var_2_537, align 4
; store float %var_2_589, float* %var_2_590, align 4
%var_2_591 = load i64, i64* %var_2_3, align 8
%var_2_592 = add i64 %var_2_591, 11
; Matched:\<badref\>:  store i64 %var_2_380, i64* %PC, align 8
; store i64 %var_2_592, i64* %var_2_3, align 8
  store i32 0, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
%var_2_593 = bitcast %union.VectorReg* %var_2_250 to i32*
%var_2_594 = getelementptr inbounds i8, i8* %var_2_479, i64 4
%var_2_595 = bitcast i8* %var_2_594 to i32*
%var_2_596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
%var_2_597 = bitcast i64* %var_2_596 to i32*
%var_2_598 = getelementptr inbounds i8, i8* %var_2_479, i64 12
%var_2_599 = bitcast i8* %var_2_598 to i32*
%var_2_600 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_250, i64 0, i32 0, i32 0, i32 0, i64 0
%var_2_601 = bitcast %union.VectorReg* %var_2_221 to i32*
%var_2_602 = getelementptr inbounds i8, i8* %var_2_478, i64 4
%var_2_603 = bitcast i8* %var_2_602 to i32*
%var_2_604 = bitcast i64* %var_2_228 to i32*
%var_2_605 = getelementptr inbounds i8, i8* %var_2_478, i64 12
%var_2_606 = bitcast i8* %var_2_605 to i32*
  br label %block_.L_400a17

block_.L_400a17:                                  ; preds = %block_.L_400afe, %block_.L_4009c7
%var_2_607 = phi i32 [ 0, %block_.L_4009c7 ], [ %var_2_906, %block_.L_400afe ]
%var_2_608 = phi i64 [ %var_2_592, %block_.L_4009c7 ], [ %var_2_929, %block_.L_400afe ]
%MEMORY.2 = phi %struct.Memory* [ %call2_4009fa, %block_.L_4009c7 ], [ %var_2_836, %block_.L_400afe ]
; Matched:%var_2_1918:  %var_2_1918 = zext i32 %var_2_1916 to i64
; %var_2_609 = zext i32 %var_2_607 to i64
; Matched:\<badref\>:  store i64 %var_2_1918, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_609, i64* %RAX.i271, align 8
%var_2_610 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
%var_2_611 = sub i32 %var_2_607, %var_2_610
%var_2_612 = icmp ult i32 %var_2_607, %var_2_610
%var_2_613 = zext i1 %var_2_612 to i8
store i8 %var_2_613, i8* %var_2_14, align 1
%var_2_614 = and i32 %var_2_611, 255
%var_2_615 = tail call i32 @llvm.ctpop.i32(i32 %var_2_614)
%var_2_616 = trunc i32 %var_2_615 to i8
%var_2_617 = and i8 %var_2_616, 1
%var_2_618 = xor i8 %var_2_617, 1
store i8 %var_2_618, i8* %var_2_21, align 1
%var_2_619 = xor i32 %var_2_610, %var_2_607
%var_2_620 = xor i32 %var_2_619, %var_2_611
%var_2_621 = lshr i32 %var_2_620, 4
%var_2_622 = trunc i32 %var_2_621 to i8
%var_2_623 = and i8 %var_2_622, 1
store i8 %var_2_623, i8* %var_2_27, align 1
%var_2_624 = icmp eq i32 %var_2_611, 0
%var_2_625 = zext i1 %var_2_624 to i8
store i8 %var_2_625, i8* %var_2_30, align 1
%var_2_626 = lshr i32 %var_2_611, 31
%var_2_627 = trunc i32 %var_2_626 to i8
store i8 %var_2_627, i8* %var_2_33, align 1
%var_2_628 = lshr i32 %var_2_607, 31
%var_2_629 = lshr i32 %var_2_610, 31
%var_2_630 = xor i32 %var_2_629, %var_2_628
%var_2_631 = xor i32 %var_2_626, %var_2_628
%var_2_632 = add nuw nsw i32 %var_2_631, %var_2_630
%var_2_633 = icmp eq i32 %var_2_632, 2
%var_2_634 = zext i1 %var_2_633 to i8
store i8 %var_2_634, i8* %var_2_39, align 1
%var_2_635 = icmp ne i8 %var_2_627, 0
%var_2_636 = xor i1 %var_2_635, %var_2_633
%.v94 = select i1 %var_2_636, i64 20, i64 270
%var_2_637 = add i64 %var_2_608, %.v94
; Matched:\<badref\>:  store i64 %var_2_2710, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_637, i64* %var_2_3, align 8
br i1 %var_2_636, label %block_400a2b, label %block_.L_400b25

block_400a2b:                                     ; preds = %block_.L_400a17
%var_2_638 = load i64, i64* %RBP.i, align 8
%var_2_639 = add i64 %var_2_638, -28
; Matched:%var_2_1949:  %var_2_1949 = add i64 %var_2_2710, 5
; %var_2_640 = add i64 %var_2_637, 5
; Matched:\<badref\>:  store i64 %var_2_1949, i64* %PC, align 8
; store i64 %var_2_640, i64* %var_2_3, align 8
%var_2_641 = inttoptr i64 %var_2_639 to float*
%var_2_642 = load float, float* %var_2_641, align 4
%var_2_643 = fpext float %var_2_642 to double
; Matched:\<badref\>:  store double %var_2_1952, double* %var_2_189, align 1, !tbaa !1287
; store double %var_2_643, double* %var_2_218, align 1
%var_2_644 = sext i32 %var_2_607 to i64
; Matched:\<badref\>:  store i64 %var_2_3139, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_644, i64* %RAX.i271, align 8
%var_2_645 = shl nsw i64 %var_2_644, 2
%var_2_646 = add nsw i64 %var_2_645, 6468736
; Matched:%var_2_1956:  %var_2_1956 = add i64 %var_2_2710, 22
; %var_2_647 = add i64 %var_2_637, 22
; Matched:\<badref\>:  store i64 %var_2_1956, i64* %PC, align 8
; store i64 %var_2_647, i64* %var_2_3, align 8
%var_2_648 = inttoptr i64 %var_2_646 to float*
%var_2_649 = load float, float* %var_2_648, align 4
%var_2_650 = fpext float %var_2_649 to double
store double %var_2_650, double* %var_2_226, align 1
%var_2_651 = add i64 %var_2_637, add (i64 ptrtoint (%G_0x2458__rip__type* @G_0x2458__rip_ to i64), i64 22)
%var_2_652 = add i64 %var_2_637, 29
store i64 %var_2_652, i64* %var_2_3, align 8
%var_2_653 = inttoptr i64 %var_2_651 to i32*
%var_2_654 = load i32, i32* %var_2_653, align 4
%var_2_655 = add i64 %var_2_637, add (i64 ptrtoint (%G_0x2458__rip__type* @G_0x2458__rip_ to i64), i64 26)
%var_2_656 = inttoptr i64 %var_2_655 to i32*
%var_2_657 = load i32, i32* %var_2_656, align 4
%var_2_658 = add i64 %var_2_637, add (i64 ptrtoint (%G_0x2458__rip__type* @G_0x2458__rip_ to i64), i64 30)
%var_2_659 = inttoptr i64 %var_2_658 to i32*
%var_2_660 = load i32, i32* %var_2_659, align 4
%var_2_661 = add i64 %var_2_637, add (i64 ptrtoint (%G_0x2458__rip__type* @G_0x2458__rip_ to i64), i64 34)
%var_2_662 = inttoptr i64 %var_2_661 to i32*
%var_2_663 = load i32, i32* %var_2_662, align 4
store i32 %var_2_654, i32* %var_2_593, align 1
store i32 %var_2_657, i32* %var_2_595, align 1
store i32 %var_2_660, i32* %var_2_597, align 1
store i32 %var_2_663, i32* %var_2_599, align 1
%var_2_664 = bitcast double %var_2_650 to i64
; Matched:%var_2_1965:  %var_2_1965 = load i64, i64* %var_2_195, align 1
; %var_2_665 = load i64, i64* %var_2_228, align 1
%var_2_666 = load i64, i64* %var_2_600, align 1
; Matched:%var_2_1967:  %var_2_1967 = load i64, i64* %var_2_1905, align 1
; %var_2_667 = load i64, i64* %var_2_596, align 1
%var_2_668 = and i64 %var_2_666, %var_2_664
; Matched:%var_2_2894:  %var_2_2894 = and i64 %var_2_2892, %var_2_2890
; %var_2_669 = and i64 %var_2_667, %var_2_665
%var_2_670 = trunc i64 %var_2_668 to i32
%var_2_671 = lshr i64 %var_2_668, 32
%var_2_672 = trunc i64 %var_2_671 to i32
store i32 %var_2_670, i32* %var_2_601, align 1
store i32 %var_2_672, i32* %var_2_603, align 1
; Matched:%var_2_1973:  %var_2_1973 = trunc i64 %var_2_1969 to i32
; %var_2_673 = trunc i64 %var_2_669 to i32
; Matched:\<badref\>:  store i32 %var_2_1973, i32* %var_2_1913, align 1, !tbaa !1289
; store i32 %var_2_673, i32* %var_2_604, align 1
; Matched:%var_2_2899:  %var_2_2899 = lshr i64 %var_2_2894, 32
; %var_2_674 = lshr i64 %var_2_669, 32
; Matched:%var_2_2900:  %var_2_2900 = trunc i64 %var_2_2899 to i32
; %var_2_675 = trunc i64 %var_2_674 to i32
; Matched:\<badref\>:  store i32 %var_2_1975, i32* %var_2_1915, align 1, !tbaa !1289
; store i32 %var_2_675, i32* %var_2_606, align 1
%var_2_676 = add i64 %var_2_637, 37
; Matched:\<badref\>:  store i64 %var_2_1976, i64* %PC, align 8
; store i64 %var_2_676, i64* %var_2_3, align 8
%var_2_677 = load double, double* %var_2_226, align 1
%var_2_678 = fcmp uno double %var_2_643, %var_2_677
br i1 %var_2_678, label %var_2_679, label %var_2_689

var_2_679:
%var_2_680 = fadd double %var_2_643, %var_2_677
%var_2_681 = bitcast double %var_2_680 to i64
%var_2_682 = and i64 %var_2_681, 9221120237041090560
%var_2_683 = icmp eq i64 %var_2_682, 9218868437227405312
%var_2_684 = and i64 %var_2_681, 2251799813685247
%var_2_685 = icmp ne i64 %var_2_684, 0
%var_2_686 = and i1 %var_2_683, %var_2_685
br i1 %var_2_686, label %var_2_687, label %var_2_695

var_2_687:
%var_2_688 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %var_2_676, %struct.Memory* %MEMORY.2)
%.pre83 = load i64, i64* %var_2_3, align 8
%.pre84 = load i8, i8* %var_2_14, align 1
%.pre85 = load i8, i8* %var_2_30, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit1207

var_2_689:
%var_2_690 = fcmp ogt double %var_2_643, %var_2_677
br i1 %var_2_690, label %var_2_695, label %var_2_691

var_2_691:
%var_2_692 = fcmp olt double %var_2_643, %var_2_677
br i1 %var_2_692, label %var_2_695, label %var_2_693

var_2_693:
%var_2_694 = fcmp oeq double %var_2_643, %var_2_677
br i1 %var_2_694, label %var_2_695, label %var_2_699

var_2_695:
%var_2_696 = phi i8 [ 0, %var_2_689 ], [ 0, %var_2_691 ], [ 1, %var_2_693 ], [ 1, %var_2_679 ]
; Matched:%var_2_2922:  %var_2_2922 = phi i8 [ 0, %var_2_2914 ], [ 0, %var_2_2916 ], [ 0, %var_2_2918 ], [ 1, %var_2_2904 ]
; %var_2_697 = phi i8 [ 0, %var_2_689 ], [ 0, %var_2_691 ], [ 0, %var_2_693 ], [ 1, %var_2_679 ]
%var_2_698 = phi i8 [ 0, %var_2_689 ], [ 1, %var_2_691 ], [ 0, %var_2_693 ], [ 1, %var_2_679 ]
; Matched:\<badref\>:  store i8 %var_2_2921, i8* %var_2_20, align 1, !tbaa !1286
; store i8 %var_2_696, i8* %var_2_30, align 1
; Matched:\<badref\>:  store i8 %var_2_1997, i8* %var_2_18, align 1, !tbaa !1286
; store i8 %var_2_697, i8* %var_2_21, align 1
; Matched:\<badref\>:  store i8 %var_2_2923, i8* %var_2_17, align 1, !tbaa !1286
; store i8 %var_2_698, i8* %var_2_14, align 1
br label %var_2_699

var_2_699:
%var_2_700 = phi i8 [ %var_2_696, %var_2_695 ], [ %var_2_625, %var_2_693 ]
%var_2_701 = phi i8 [ %var_2_698, %var_2_695 ], [ %var_2_613, %var_2_693 ]
store i8 0, i8* %var_2_39, align 1
store i8 0, i8* %var_2_33, align 1
store i8 0, i8* %var_2_27, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit1207

routine_ucomisd__xmm1___xmm0.exit1207:            ; preds = %var_2_699, %var_2_687
%var_2_702 = phi i8 [ %.pre85, %var_2_687 ], [ %var_2_700, %var_2_699 ]
%var_2_703 = phi i8 [ %.pre84, %var_2_687 ], [ %var_2_701, %var_2_699 ]
%var_2_704 = phi i64 [ %.pre83, %var_2_687 ], [ %var_2_676, %var_2_699 ]
%var_2_705 = phi %struct.Memory* [ %var_2_688, %var_2_687 ], [ %MEMORY.2, %var_2_699 ]
%var_2_706 = or i8 %var_2_702, %var_2_703
%var_2_707 = icmp ne i8 %var_2_706, 0
%.v104 = select i1 %var_2_707, i64 24, i64 6
%var_2_708 = add i64 %var_2_704, %.v104
; Matched:\<badref\>:  store i64 %var_2_2008, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_708, i64* %var_2_3, align 8
br i1 %var_2_707, label %block_.L_400a68, label %block_400a56

block_400a56:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit1207
%var_2_709 = load i64, i64* %RBP.i, align 8
%var_2_710 = add i64 %var_2_709, -28
; Matched:%var_2_1067:  %var_2_1067 = add i64 %var_2_2008, 5
; %var_2_711 = add i64 %var_2_708, 5
; Matched:\<badref\>:  store i64 %var_2_1067, i64* %PC, align 8
; store i64 %var_2_711, i64* %var_2_3, align 8
%var_2_712 = inttoptr i64 %var_2_710 to float*
%var_2_713 = load float, float* %var_2_712, align 4
%var_2_714 = fpext float %var_2_713 to double
; Matched:\<badref\>:  store double %var_2_1070, double* %var_2_189, align 1, !tbaa !1287
; store double %var_2_714, double* %var_2_218, align 1
; Matched:%var_2_1071:  %var_2_1071 = add i64 %var_2_1065, -896
; %var_2_715 = add i64 %var_2_709, -896
; Matched:%var_2_1072:  %var_2_1072 = add i64 %var_2_2008, 13
; %var_2_716 = add i64 %var_2_708, 13
; Matched:\<badref\>:  store i64 %var_2_1072, i64* %PC, align 8
; store i64 %var_2_716, i64* %var_2_3, align 8
; Matched:%var_2_1073:  %var_2_1073 = inttoptr i64 %var_2_1071 to double*
; %var_2_717 = inttoptr i64 %var_2_715 to double*
; Matched:\<badref\>:  store double %var_2_1070, double* %var_2_1073, align 8
; store double %var_2_714, double* %var_2_717, align 8
; Matched:%var_2_1074:  %var_2_1074 = load i64, i64* %PC, align 8
; %var_2_718 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2679:  %var_2_2679 = add i64 %var_2_2678, 41
; %var_2_719 = add i64 %var_2_718, 41
; Matched:\<badref\>:  store i64 %var_2_2679, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_719, i64* %var_2_3, align 8
  br label %block_.L_400a8c

block_.L_400a68:                                  ; preds = %routine_ucomisd__xmm1___xmm0.exit1207
%var_2_720 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
%var_2_721 = sext i32 %var_2_720 to i64
; Matched:\<badref\>:  store i64 %var_2_787, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_721, i64* %RAX.i271, align 8
%var_2_722 = shl nsw i64 %var_2_721, 2
%var_2_723 = add nsw i64 %var_2_722, 6468736
; Matched:%var_2_599:  %var_2_599 = add i64 %var_2_2008, 17
; %var_2_724 = add i64 %var_2_708, 17
; Matched:\<badref\>:  store i64 %var_2_599, i64* %PC, align 8
; store i64 %var_2_724, i64* %var_2_3, align 8
%var_2_725 = inttoptr i64 %var_2_723 to float*
%var_2_726 = load float, float* %var_2_725, align 4
%var_2_727 = fpext float %var_2_726 to double
store double %var_2_727, double* %var_2_218, align 1
%var_2_728 = add i64 %var_2_708, add (i64 ptrtoint (%G_0x2420__rip__type* @G_0x2420__rip_ to i64), i64 17)
%var_2_729 = add i64 %var_2_708, 24
store i64 %var_2_729, i64* %var_2_3, align 8
%var_2_730 = inttoptr i64 %var_2_728 to i32*
%var_2_731 = load i32, i32* %var_2_730, align 4
%var_2_732 = add i64 %var_2_708, add (i64 ptrtoint (%G_0x2420__rip__type* @G_0x2420__rip_ to i64), i64 21)
%var_2_733 = inttoptr i64 %var_2_732 to i32*
%var_2_734 = load i32, i32* %var_2_733, align 4
%var_2_735 = add i64 %var_2_708, add (i64 ptrtoint (%G_0x2420__rip__type* @G_0x2420__rip_ to i64), i64 25)
%var_2_736 = inttoptr i64 %var_2_735 to i32*
%var_2_737 = load i32, i32* %var_2_736, align 4
%var_2_738 = add i64 %var_2_708, add (i64 ptrtoint (%G_0x2420__rip__type* @G_0x2420__rip_ to i64), i64 29)
%var_2_739 = inttoptr i64 %var_2_738 to i32*
%var_2_740 = load i32, i32* %var_2_739, align 4
store i32 %var_2_731, i32* %var_2_601, align 1
store i32 %var_2_734, i32* %var_2_603, align 1
store i32 %var_2_737, i32* %var_2_604, align 1
store i32 %var_2_740, i32* %var_2_606, align 1
%var_2_741 = bitcast double %var_2_727 to i64
; Matched:%var_2_608:  %var_2_608 = load i64, i64* %var_2_29, align 1
; %var_2_742 = load i64, i64* %var_2_50, align 1
%var_2_743 = load i64, i64* %var_2_227, align 1
; Matched:%var_2_610:  %var_2_610 = load i64, i64* %var_2_195, align 1
; %var_2_744 = load i64, i64* %var_2_228, align 1
%var_2_745 = and i64 %var_2_743, %var_2_741
; Matched:%var_2_612:  %var_2_612 = and i64 %var_2_610, %var_2_608
; %var_2_746 = and i64 %var_2_744, %var_2_742
%var_2_747 = trunc i64 %var_2_745 to i32
%var_2_748 = lshr i64 %var_2_745, 32
%var_2_749 = trunc i64 %var_2_748 to i32
store i32 %var_2_747, i32* %var_2_47, align 1
store i32 %var_2_749, i32* %var_2_281, align 1
; Matched:%var_2_616:  %var_2_616 = trunc i64 %var_2_612 to i32
; %var_2_750 = trunc i64 %var_2_746 to i32
; Matched:\<badref\>:  store i32 %var_2_616, i32* %var_2_247, align 1, !tbaa !1289
; store i32 %var_2_750, i32* %var_2_283, align 1
; Matched:%var_2_617:  %var_2_617 = lshr i64 %var_2_612, 32
; %var_2_751 = lshr i64 %var_2_746, 32
; Matched:%var_2_926:  %var_2_926 = trunc i64 %var_2_925 to i32
; %var_2_752 = trunc i64 %var_2_751 to i32
; Matched:\<badref\>:  store i32 %var_2_926, i32* %var_2_249, align 1, !tbaa !1289
; store i32 %var_2_752, i32* %var_2_285, align 1
; Matched:%var_2_619:  %var_2_619 = load i64, i64* %RBP, align 8
; %var_2_753 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_620:  %var_2_620 = add i64 %var_2_619, -896
; %var_2_754 = add i64 %var_2_753, -896
; Matched:%var_2_621:  %var_2_621 = add i64 %var_2_2008, 36
; %var_2_755 = add i64 %var_2_708, 36
; Matched:\<badref\>:  store i64 %var_2_621, i64* %PC, align 8
; store i64 %var_2_755, i64* %var_2_3, align 8
; Matched:%var_2_622:  %var_2_622 = load i64, i64* %var_2_190, align 1
; %var_2_756 = load i64, i64* %var_2_219, align 1
; Matched:%var_2_623:  %var_2_623 = inttoptr i64 %var_2_620 to i64*
; %var_2_757 = inttoptr i64 %var_2_754 to i64*
; Matched:\<badref\>:  store i64 %var_2_622, i64* %var_2_623, align 8
; store i64 %var_2_756, i64* %var_2_757, align 8
; Matched:  %.pre89 = load i64, i64* %PC, align 8
; %.pre86 = load i64, i64* %var_2_3, align 8
  br label %block_.L_400a8c

block_.L_400a8c:                                  ; preds = %block_.L_400a68, %block_400a56
; Matched:%var_2_2857:  %var_2_2857 = phi i64 [ %var_2_1075, %block_400a56 ], [ %.pre87, %block_400a68 ]
; %var_2_758 = phi i64 [ %.pre86, %block_.L_400a68 ], [ %var_2_719, %block_400a56 ]
; Matched:%var_2_2858:  %var_2_2858 = load i64, i64* %RBP, align 8
; %var_2_759 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2859:  %var_2_2859 = add i64 %var_2_2858, -896
; %var_2_760 = add i64 %var_2_759, -896
; Matched:%var_2_528:  %var_2_528 = add i64 %var_2_525, 8
; %var_2_761 = add i64 %var_2_758, 8
; Matched:\<badref\>:  store i64 %var_2_528, i64* %PC, align 8
; store i64 %var_2_761, i64* %var_2_3, align 8
; Matched:%var_2_2861:  %var_2_2861 = inttoptr i64 %var_2_2859 to i64*
; %var_2_762 = inttoptr i64 %var_2_760 to i64*
; Matched:%var_2_2862:  %var_2_2862 = load i64, i64* %var_2_2861, align 8
; %var_2_763 = load i64, i64* %var_2_762, align 8
%.cast = bitcast i64 %var_2_763 to <2 x i32>
; Matched:  %.cast20 = bitcast i64 %var_2_2862 to double
; %.cast20 = bitcast i64 %var_2_763 to double
; Matched:%var_2_2863:  %var_2_2863 = fptrunc double %.cast20 to float
; %var_2_764 = fptrunc double %.cast20 to float
; Matched:\<badref\>:  store float %var_2_2863, float* %var_2_25, align 1, !tbaa !1265
; store float %var_2_764, float* %var_2_46, align 1
%var_2_765 = extractelement <2 x i32> %.cast, i32 1
; Matched:\<badref\>:  store i32 %var_2_2864, i32* %var_2_245, align 1, !tbaa !1265
; store i32 %var_2_765, i32* %var_2_281, align 1
store i32 0, i32* %var_2_283, align 1
store i32 0, i32* %var_2_285, align 1
; Matched:%var_2_2865:  %var_2_2865 = add i64 %var_2_2858, -28
; %var_2_766 = add i64 %var_2_759, -28
; Matched:%var_2_2866:  %var_2_2866 = add i64 %var_2_2857, 17
; %var_2_767 = add i64 %var_2_758, 17
; Matched:\<badref\>:  store i64 %var_2_534, i64* %PC, align 8
; store i64 %var_2_767, i64* %var_2_3, align 8
%var_2_768 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_769 = extractelement <2 x float> %var_2_768, i32 0
; Matched:%var_2_2869:  %var_2_2869 = inttoptr i64 %var_2_2865 to float*
; %var_2_770 = inttoptr i64 %var_2_766 to float*
; Matched:\<badref\>:  store float %var_2_1891, float* %var_2_1892, align 4
; store float %var_2_769, float* %var_2_770, align 4
%var_2_771 = load i64, i64* %RBP.i, align 8
%var_2_772 = add i64 %var_2_771, -24
%var_2_773 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_764:  %var_2_764 = add i64 %var_2_763, 5
; %var_2_774 = add i64 %var_2_773, 5
; Matched:\<badref\>:  store i64 %var_2_764, i64* %PC, align 8
; store i64 %var_2_774, i64* %var_2_3, align 8
%var_2_775 = inttoptr i64 %var_2_772 to float*
%var_2_776 = load float, float* %var_2_775, align 4
%var_2_777 = fpext float %var_2_776 to double
; Matched:\<badref\>:  store double %var_2_2876, double* %var_2_189, align 1, !tbaa !1287
; store double %var_2_777, double* %var_2_218, align 1
%var_2_778 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
%var_2_779 = sext i32 %var_2_778 to i64
; Matched:\<badref\>:  store i64 %var_2_1378, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_779, i64* %RAX.i271, align 8
%var_2_780 = shl nsw i64 %var_2_779, 2
%var_2_781 = add nsw i64 %var_2_780, 6470896
; Matched:%var_2_707:  %var_2_707 = add i64 %var_2_699, 22
; %var_2_782 = add i64 %var_2_773, 22
; Matched:\<badref\>:  store i64 %var_2_707, i64* %PC, align 8
; store i64 %var_2_782, i64* %var_2_3, align 8
%var_2_783 = inttoptr i64 %var_2_781 to float*
%var_2_784 = load float, float* %var_2_783, align 4
%var_2_785 = fpext float %var_2_784 to double
store double %var_2_785, double* %var_2_226, align 1
%var_2_786 = add i64 %var_2_773, add (i64 ptrtoint (%G_0x23e6__rip__type* @G_0x23e6__rip_ to i64), i64 22)
; Matched:%var_2_2165:  %var_2_2165 = add i64 %var_2_2125, 29
; %var_2_787 = add i64 %var_2_773, 29
; Matched:\<badref\>:  store i64 %var_2_2165, i64* %PC, align 8
; store i64 %var_2_787, i64* %var_2_3, align 8
%var_2_788 = inttoptr i64 %var_2_786 to i32*
%var_2_789 = load i32, i32* %var_2_788, align 4
%var_2_790 = add i64 %var_2_773, add (i64 ptrtoint (%G_0x23e6__rip__type* @G_0x23e6__rip_ to i64), i64 26)
%var_2_791 = inttoptr i64 %var_2_790 to i32*
%var_2_792 = load i32, i32* %var_2_791, align 4
%var_2_793 = add i64 %var_2_773, add (i64 ptrtoint (%G_0x23e6__rip__type* @G_0x23e6__rip_ to i64), i64 30)
%var_2_794 = inttoptr i64 %var_2_793 to i32*
%var_2_795 = load i32, i32* %var_2_794, align 4
%var_2_796 = add i64 %var_2_773, add (i64 ptrtoint (%G_0x23e6__rip__type* @G_0x23e6__rip_ to i64), i64 34)
%var_2_797 = inttoptr i64 %var_2_796 to i32*
%var_2_798 = load i32, i32* %var_2_797, align 4
store i32 %var_2_789, i32* %var_2_593, align 1
store i32 %var_2_792, i32* %var_2_595, align 1
store i32 %var_2_795, i32* %var_2_597, align 1
store i32 %var_2_798, i32* %var_2_599, align 1
%var_2_799 = bitcast double %var_2_785 to i64
; Matched:%var_2_2890:  %var_2_2890 = load i64, i64* %var_2_195, align 1
; %var_2_800 = load i64, i64* %var_2_228, align 1
%var_2_801 = load i64, i64* %var_2_600, align 1
; Matched:%var_2_2892:  %var_2_2892 = load i64, i64* %var_2_1905, align 1
; %var_2_802 = load i64, i64* %var_2_596, align 1
%var_2_803 = and i64 %var_2_801, %var_2_799
; Matched:%var_2_1969:  %var_2_1969 = and i64 %var_2_1967, %var_2_1965
; %var_2_804 = and i64 %var_2_802, %var_2_800
%var_2_805 = trunc i64 %var_2_803 to i32
%var_2_806 = lshr i64 %var_2_803, 32
%var_2_807 = trunc i64 %var_2_806 to i32
store i32 %var_2_805, i32* %var_2_601, align 1
store i32 %var_2_807, i32* %var_2_603, align 1
; Matched:%var_2_2898:  %var_2_2898 = trunc i64 %var_2_2894 to i32
; %var_2_808 = trunc i64 %var_2_804 to i32
; Matched:\<badref\>:  store i32 %var_2_2898, i32* %var_2_1913, align 1, !tbaa !1289
; store i32 %var_2_808, i32* %var_2_604, align 1
; Matched:%var_2_1974:  %var_2_1974 = lshr i64 %var_2_1969, 32
; %var_2_809 = lshr i64 %var_2_804, 32
; Matched:%var_2_1975:  %var_2_1975 = trunc i64 %var_2_1974 to i32
; %var_2_810 = trunc i64 %var_2_809 to i32
; Matched:\<badref\>:  store i32 %var_2_2900, i32* %var_2_1915, align 1, !tbaa !1289
; store i32 %var_2_810, i32* %var_2_606, align 1
%var_2_811 = add i64 %var_2_773, 37
; Matched:\<badref\>:  store i64 %var_2_2901, i64* %PC, align 8
; store i64 %var_2_811, i64* %var_2_3, align 8
%var_2_812 = load double, double* %var_2_226, align 1
%var_2_813 = fcmp uno double %var_2_777, %var_2_812
br i1 %var_2_813, label %var_2_814, label %var_2_824

var_2_814:
%var_2_815 = fadd double %var_2_777, %var_2_812
%var_2_816 = bitcast double %var_2_815 to i64
%var_2_817 = and i64 %var_2_816, 9221120237041090560
%var_2_818 = icmp eq i64 %var_2_817, 9218868437227405312
%var_2_819 = and i64 %var_2_816, 2251799813685247
%var_2_820 = icmp ne i64 %var_2_819, 0
%var_2_821 = and i1 %var_2_818, %var_2_820
br i1 %var_2_821, label %var_2_822, label %var_2_830

var_2_822:
%var_2_823 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %var_2_811, %struct.Memory* %var_2_705)
%.pre87 = load i64, i64* %var_2_3, align 8
  br label %routine_ucomisd__xmm1___xmm0.exit

var_2_824:
%var_2_825 = fcmp ogt double %var_2_777, %var_2_812
br i1 %var_2_825, label %var_2_830, label %var_2_826

var_2_826:
%var_2_827 = fcmp olt double %var_2_777, %var_2_812
br i1 %var_2_827, label %var_2_830, label %var_2_828

var_2_828:
%var_2_829 = fcmp oeq double %var_2_777, %var_2_812
br i1 %var_2_829, label %var_2_830, label %var_2_834

var_2_830:
; Matched:%var_2_2422:  %var_2_2422 = phi i8 [ 0, %var_2_2415 ], [ 0, %var_2_2417 ], [ 1, %var_2_2419 ], [ 1, %var_2_2405 ]
; %var_2_831 = phi i8 [ 0, %var_2_824 ], [ 0, %var_2_826 ], [ 1, %var_2_828 ], [ 1, %var_2_814 ]
; Matched:%var_2_1997:  %var_2_1997 = phi i8 [ 0, %var_2_1989 ], [ 0, %var_2_1991 ], [ 0, %var_2_1993 ], [ 1, %var_2_1979 ]
; %var_2_832 = phi i8 [ 0, %var_2_824 ], [ 0, %var_2_826 ], [ 0, %var_2_828 ], [ 1, %var_2_814 ]
; Matched:%var_2_1998:  %var_2_1998 = phi i8 [ 0, %var_2_1989 ], [ 1, %var_2_1991 ], [ 0, %var_2_1993 ], [ 1, %var_2_1979 ]
; %var_2_833 = phi i8 [ 0, %var_2_824 ], [ 1, %var_2_826 ], [ 0, %var_2_828 ], [ 1, %var_2_814 ]
; Matched:\<badref\>:  store i8 %var_2_1996, i8* %var_2_20, align 1, !tbaa !1286
; store i8 %var_2_831, i8* %var_2_30, align 1
; Matched:\<badref\>:  store i8 %var_2_2423, i8* %var_2_18, align 1, !tbaa !1286
; store i8 %var_2_832, i8* %var_2_21, align 1
; Matched:\<badref\>:  store i8 %var_2_1998, i8* %var_2_17, align 1, !tbaa !1286
; store i8 %var_2_833, i8* %var_2_14, align 1
br label %var_2_834

var_2_834:
store i8 0, i8* %var_2_39, align 1
store i8 0, i8* %var_2_33, align 1
store i8 0, i8* %var_2_27, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit

routine_ucomisd__xmm1___xmm0.exit:                ; preds = %var_2_834, %var_2_822
%var_2_835 = phi i64 [ %.pre87, %var_2_822 ], [ %var_2_811, %var_2_834 ]
%var_2_836 = phi %struct.Memory* [ %var_2_823, %var_2_822 ], [ %var_2_705, %var_2_834 ]
%var_2_837 = load i8, i8* %var_2_14, align 1
%var_2_838 = load i8, i8* %var_2_30, align 1
%var_2_839 = or i8 %var_2_838, %var_2_837
%var_2_840 = icmp ne i8 %var_2_839, 0
%.v124 = select i1 %var_2_840, i64 24, i64 6
%var_2_841 = add i64 %var_2_835, %.v124
; Matched:\<badref\>:  store i64 %var_2_2931, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_841, i64* %var_2_3, align 8
br i1 %var_2_840, label %block_.L_400ada, label %block_400ac8

block_400ac8:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit
%var_2_842 = load i64, i64* %RBP.i, align 8
%var_2_843 = add i64 %var_2_842, -24
; Matched:%var_2_2671:  %var_2_2671 = add i64 %var_2_2931, 5
; %var_2_844 = add i64 %var_2_841, 5
; Matched:\<badref\>:  store i64 %var_2_2671, i64* %PC, align 8
; store i64 %var_2_844, i64* %var_2_3, align 8
%var_2_845 = inttoptr i64 %var_2_843 to float*
%var_2_846 = load float, float* %var_2_845, align 4
%var_2_847 = fpext float %var_2_846 to double
; Matched:\<badref\>:  store double %var_2_2674, double* %var_2_189, align 1, !tbaa !1287
; store double %var_2_847, double* %var_2_218, align 1
; Matched:%var_2_2675:  %var_2_2675 = add i64 %var_2_2669, -904
; %var_2_848 = add i64 %var_2_842, -904
; Matched:%var_2_2676:  %var_2_2676 = add i64 %var_2_2931, 13
; %var_2_849 = add i64 %var_2_841, 13
; Matched:\<badref\>:  store i64 %var_2_2676, i64* %PC, align 8
; store i64 %var_2_849, i64* %var_2_3, align 8
; Matched:%var_2_2677:  %var_2_2677 = inttoptr i64 %var_2_2675 to double*
; %var_2_850 = inttoptr i64 %var_2_848 to double*
; Matched:\<badref\>:  store double %var_2_2674, double* %var_2_2677, align 8
; store double %var_2_847, double* %var_2_850, align 8
; Matched:%var_2_2678:  %var_2_2678 = load i64, i64* %PC, align 8
; %var_2_851 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1075:  %var_2_1075 = add i64 %var_2_1074, 41
; %var_2_852 = add i64 %var_2_851, 41
; Matched:\<badref\>:  store i64 %var_2_1075, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_852, i64* %var_2_3, align 8
  br label %block_.L_400afe

block_.L_400ada:                                  ; preds = %routine_ucomisd__xmm1___xmm0.exit
%var_2_853 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
%var_2_854 = sext i32 %var_2_853 to i64
; Matched:\<badref\>:  store i64 %var_2_2878, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_854, i64* %RAX.i271, align 8
%var_2_855 = shl nsw i64 %var_2_854, 2
%var_2_856 = add nsw i64 %var_2_855, 6470896
; Matched:%var_2_907:  %var_2_907 = add i64 %var_2_2931, 17
; %var_2_857 = add i64 %var_2_841, 17
; Matched:\<badref\>:  store i64 %var_2_907, i64* %PC, align 8
; store i64 %var_2_857, i64* %var_2_3, align 8
%var_2_858 = inttoptr i64 %var_2_856 to float*
%var_2_859 = load float, float* %var_2_858, align 4
%var_2_860 = fpext float %var_2_859 to double
store double %var_2_860, double* %var_2_218, align 1
%var_2_861 = add i64 %var_2_841, add (i64 ptrtoint (%G_0x23ae__rip__type* @G_0x23ae__rip_ to i64), i64 17)
%var_2_862 = add i64 %var_2_841, 24
store i64 %var_2_862, i64* %var_2_3, align 8
%var_2_863 = inttoptr i64 %var_2_861 to i32*
%var_2_864 = load i32, i32* %var_2_863, align 4
%var_2_865 = add i64 %var_2_841, add (i64 ptrtoint (%G_0x23ae__rip__type* @G_0x23ae__rip_ to i64), i64 21)
%var_2_866 = inttoptr i64 %var_2_865 to i32*
%var_2_867 = load i32, i32* %var_2_866, align 4
%var_2_868 = add i64 %var_2_841, add (i64 ptrtoint (%G_0x23ae__rip__type* @G_0x23ae__rip_ to i64), i64 25)
%var_2_869 = inttoptr i64 %var_2_868 to i32*
%var_2_870 = load i32, i32* %var_2_869, align 4
%var_2_871 = add i64 %var_2_841, add (i64 ptrtoint (%G_0x23ae__rip__type* @G_0x23ae__rip_ to i64), i64 29)
%var_2_872 = inttoptr i64 %var_2_871 to i32*
%var_2_873 = load i32, i32* %var_2_872, align 4
store i32 %var_2_864, i32* %var_2_601, align 1
store i32 %var_2_867, i32* %var_2_603, align 1
store i32 %var_2_870, i32* %var_2_604, align 1
store i32 %var_2_873, i32* %var_2_606, align 1
%var_2_874 = bitcast double %var_2_860 to i64
; Matched:%var_2_916:  %var_2_916 = load i64, i64* %var_2_29, align 1
; %var_2_875 = load i64, i64* %var_2_50, align 1
%var_2_876 = load i64, i64* %var_2_227, align 1
; Matched:%var_2_918:  %var_2_918 = load i64, i64* %var_2_195, align 1
; %var_2_877 = load i64, i64* %var_2_228, align 1
%var_2_878 = and i64 %var_2_876, %var_2_874
; Matched:%var_2_920:  %var_2_920 = and i64 %var_2_918, %var_2_916
; %var_2_879 = and i64 %var_2_877, %var_2_875
%var_2_880 = trunc i64 %var_2_878 to i32
%var_2_881 = lshr i64 %var_2_878, 32
%var_2_882 = trunc i64 %var_2_881 to i32
store i32 %var_2_880, i32* %var_2_47, align 1
store i32 %var_2_882, i32* %var_2_281, align 1
; Matched:%var_2_924:  %var_2_924 = trunc i64 %var_2_920 to i32
; %var_2_883 = trunc i64 %var_2_879 to i32
; Matched:\<badref\>:  store i32 %var_2_924, i32* %var_2_247, align 1, !tbaa !1289
; store i32 %var_2_883, i32* %var_2_283, align 1
; Matched:%var_2_925:  %var_2_925 = lshr i64 %var_2_920, 32
; %var_2_884 = lshr i64 %var_2_879, 32
; Matched:%var_2_618:  %var_2_618 = trunc i64 %var_2_617 to i32
; %var_2_885 = trunc i64 %var_2_884 to i32
; Matched:\<badref\>:  store i32 %var_2_618, i32* %var_2_249, align 1, !tbaa !1289
; store i32 %var_2_885, i32* %var_2_285, align 1
; Matched:%var_2_927:  %var_2_927 = load i64, i64* %RBP, align 8
; %var_2_886 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_928:  %var_2_928 = add i64 %var_2_927, -904
; %var_2_887 = add i64 %var_2_886, -904
; Matched:%var_2_929:  %var_2_929 = add i64 %var_2_2931, 36
; %var_2_888 = add i64 %var_2_841, 36
; Matched:\<badref\>:  store i64 %var_2_929, i64* %PC, align 8
; store i64 %var_2_888, i64* %var_2_3, align 8
; Matched:%var_2_930:  %var_2_930 = load i64, i64* %var_2_190, align 1
; %var_2_889 = load i64, i64* %var_2_219, align 1
; Matched:%var_2_931:  %var_2_931 = inttoptr i64 %var_2_928 to i64*
; %var_2_890 = inttoptr i64 %var_2_887 to i64*
; Matched:\<badref\>:  store i64 %var_2_930, i64* %var_2_931, align 8
; store i64 %var_2_889, i64* %var_2_890, align 8
; Matched:  %.pre87 = load i64, i64* %PC, align 8
; %.pre88 = load i64, i64* %var_2_3, align 8
  br label %block_.L_400afe

block_.L_400afe:                                  ; preds = %block_.L_400ada, %block_400ac8
; Matched:%var_2_525:  %var_2_525 = phi i64 [ %var_2_2679, %block_400ac8 ], [ %.pre89, %block_400ada ]
; %var_2_891 = phi i64 [ %.pre88, %block_.L_400ada ], [ %var_2_852, %block_400ac8 ]
; Matched:%var_2_1893:  %var_2_1893 = load i64, i64* %RBP, align 8
; %var_2_892 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_527:  %var_2_527 = add i64 %var_2_526, -904
; %var_2_893 = add i64 %var_2_892, -904
; Matched:%var_2_2860:  %var_2_2860 = add i64 %var_2_2857, 8
; %var_2_894 = add i64 %var_2_891, 8
; Matched:\<badref\>:  store i64 %var_2_2860, i64* %PC, align 8
; store i64 %var_2_894, i64* %var_2_3, align 8
; Matched:%var_2_529:  %var_2_529 = inttoptr i64 %var_2_527 to i64*
; %var_2_895 = inttoptr i64 %var_2_893 to i64*
; Matched:%var_2_530:  %var_2_530 = load i64, i64* %var_2_529, align 8
; %var_2_896 = load i64, i64* %var_2_895, align 8
%.cast21 = bitcast i64 %var_2_896 to <2 x i32>
; Matched:  %.cast22 = bitcast i64 %var_2_530 to double
; %.cast22 = bitcast i64 %var_2_896 to double
; Matched:%var_2_531:  %var_2_531 = fptrunc double %.cast22 to float
; %var_2_897 = fptrunc double %.cast22 to float
; Matched:\<badref\>:  store float %var_2_531, float* %var_2_25, align 1, !tbaa !1265
; store float %var_2_897, float* %var_2_46, align 1
%var_2_898 = extractelement <2 x i32> %.cast21, i32 1
; Matched:\<badref\>:  store i32 %var_2_532, i32* %var_2_245, align 1, !tbaa !1265
; store i32 %var_2_898, i32* %var_2_281, align 1
store i32 0, i32* %var_2_283, align 1
store i32 0, i32* %var_2_285, align 1
; Matched:%var_2_533:  %var_2_533 = add i64 %var_2_526, -24
; %var_2_899 = add i64 %var_2_892, -24
; Matched:%var_2_534:  %var_2_534 = add i64 %var_2_525, 17
; %var_2_900 = add i64 %var_2_891, 17
; Matched:\<badref\>:  store i64 %var_2_2866, i64* %PC, align 8
; store i64 %var_2_900, i64* %var_2_3, align 8
%var_2_901 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_902 = extractelement <2 x float> %var_2_901, i32 0
; Matched:%var_2_1899:  %var_2_1899 = inttoptr i64 %var_2_1894 to float*
; %var_2_903 = inttoptr i64 %var_2_899 to float*
; Matched:\<badref\>:  store float %var_2_1898, float* %var_2_1899, align 4
; store float %var_2_902, float* %var_2_903, align 4
%var_2_904 = load i64, i64* %var_2_3, align 8
%var_2_905 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
%var_2_906 = add i32 %var_2_905, 1
%var_2_907 = zext i32 %var_2_906 to i64
store i64 %var_2_907, i64* %RAX.i271, align 8
%var_2_908 = icmp eq i32 %var_2_905, -1
%var_2_909 = icmp eq i32 %var_2_906, 0
%var_2_910 = or i1 %var_2_908, %var_2_909
%var_2_911 = zext i1 %var_2_910 to i8
store i8 %var_2_911, i8* %var_2_14, align 1
%var_2_912 = and i32 %var_2_906, 255
%var_2_913 = tail call i32 @llvm.ctpop.i32(i32 %var_2_912)
%var_2_914 = trunc i32 %var_2_913 to i8
%var_2_915 = and i8 %var_2_914, 1
%var_2_916 = xor i8 %var_2_915, 1
store i8 %var_2_916, i8* %var_2_21, align 1
%var_2_917 = xor i32 %var_2_906, %var_2_905
%var_2_918 = lshr i32 %var_2_917, 4
%var_2_919 = trunc i32 %var_2_918 to i8
%var_2_920 = and i8 %var_2_919, 1
store i8 %var_2_920, i8* %var_2_27, align 1
%var_2_921 = zext i1 %var_2_909 to i8
store i8 %var_2_921, i8* %var_2_30, align 1
%var_2_922 = lshr i32 %var_2_906, 31
%var_2_923 = trunc i32 %var_2_922 to i8
store i8 %var_2_923, i8* %var_2_33, align 1
%var_2_924 = lshr i32 %var_2_905, 31
%var_2_925 = xor i32 %var_2_922, %var_2_924
%var_2_926 = add nuw nsw i32 %var_2_925, %var_2_922
%var_2_927 = icmp eq i32 %var_2_926, 2
%var_2_928 = zext i1 %var_2_927 to i8
store i8 %var_2_928, i8* %var_2_39, align 1
store i32 %var_2_906, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
%var_2_929 = add i64 %var_2_904, -248
; Matched:\<badref\>:  store i64 %var_2_563, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_929, i64* %var_2_3, align 8
  br label %block_.L_400a17

block_.L_400b25:                                  ; preds = %block_.L_400a17
%var_2_930 = add i64 %var_2_637, ptrtoint (%G_0x231f__rip__type* @G_0x231f__rip_ to i64)
%var_2_931 = add i64 %var_2_637, 8
store i64 %var_2_931, i64* %var_2_3, align 8
%var_2_932 = inttoptr i64 %var_2_930 to i32*
%var_2_933 = load i32, i32* %var_2_932, align 4
store i32 %var_2_933, i32* %var_2_47, align 1
store float 0.000000e+00, float* %var_2_49, align 1
store float 0.000000e+00, float* %var_2_51, align 1
store float 0.000000e+00, float* %var_2_53, align 1
%var_2_934 = add i64 %var_2_637, 7323
; Matched:%var_2_2106:  %var_2_2106 = add i64 %var_2_2710, 13
; %var_2_935 = add i64 %var_2_637, 13
%var_2_936 = load i64, i64* %var_2_6, align 8
%var_2_937 = add i64 %var_2_936, -8
; Matched:%var_2_2109:  %var_2_2109 = inttoptr i64 %var_2_2108 to i64*
; %var_2_938 = inttoptr i64 %var_2_937 to i64*
; Matched:\<badref\>:  store i64 %var_2_2106, i64* %var_2_2109, align 8
; store i64 %var_2_935, i64* %var_2_938, align 8
; Matched:\<badref\>:  store i64 %var_2_2714, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_937, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_2105, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_934, i64* %var_2_3, align 8
%call2_400b2d = tail call %struct.Memory* @sub_4027c0.epslon(%struct.State* nonnull %0, i64 %var_2_934, %struct.Memory* %MEMORY.2)
%var_2_939 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x402f54_type* @G__0x402f54 to i64), i64* %RSI.i245, align 8
%var_2_940 = add i64 %var_2_939, add (i64 ptrtoint (%G_0x2308__rip__type* @G_0x2308__rip_ to i64), i64 10)
%var_2_941 = add i64 %var_2_939, 18
store i64 %var_2_941, i64* %var_2_3, align 8
%var_2_942 = inttoptr i64 %var_2_940 to i32*
%var_2_943 = load i32, i32* %var_2_942, align 4
%var_2_944 = bitcast %union.VectorReg* %var_2_221 to float*
store i32 %var_2_943, i32* %var_2_601, align 1
%var_2_945 = bitcast i8* %var_2_602 to float*
store float 0.000000e+00, float* %var_2_945, align 1
%var_2_946 = bitcast i64* %var_2_228 to float*
store float 0.000000e+00, float* %var_2_946, align 1
%var_2_947 = bitcast i8* %var_2_605 to float*
store float 0.000000e+00, float* %var_2_947, align 1
; Matched:%var_2_2117:  %var_2_2117 = load i64, i64* %RBP, align 8
; %var_2_948 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2118:  %var_2_2118 = add i64 %var_2_2117, -36
; %var_2_949 = add i64 %var_2_948, -36
; Matched:%var_2_2119:  %var_2_2119 = add i64 %var_2_2111, 23
; %var_2_950 = add i64 %var_2_939, 23
; Matched:\<badref\>:  store i64 %var_2_1779, i64* %PC, align 8
; store i64 %var_2_950, i64* %var_2_3, align 8
%var_2_951 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_952 = extractelement <2 x float> %var_2_951, i32 0
; Matched:%var_2_2122:  %var_2_2122 = inttoptr i64 %var_2_2118 to float*
; %var_2_953 = inttoptr i64 %var_2_949 to float*
; Matched:\<badref\>:  store float %var_2_2121, float* %var_2_2122, align 4
; store float %var_2_952, float* %var_2_953, align 4
; Matched:%var_2_2123:  %var_2_2123 = load i64, i64* %RBP, align 8
; %var_2_954 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2124:  %var_2_2124 = add i64 %var_2_2123, -28
; %var_2_955 = add i64 %var_2_954, -28
%var_2_956 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2194:  %var_2_2194 = add i64 %var_2_2193, 5
; %var_2_957 = add i64 %var_2_956, 5
; Matched:\<badref\>:  store i64 %var_2_2194, i64* %PC, align 8
; store i64 %var_2_957, i64* %var_2_3, align 8
; Matched:%var_2_2127:  %var_2_2127 = inttoptr i64 %var_2_2124 to i32*
; %var_2_958 = inttoptr i64 %var_2_955 to i32*
; Matched:%var_2_2128:  %var_2_2128 = load i32, i32* %var_2_2127, align 4
; %var_2_959 = load i32, i32* %var_2_958, align 4
; Matched:\<badref\>:  store i32 %var_2_2128, i32* %var_2_26, align 1, !tbaa !1265
; store i32 %var_2_959, i32* %var_2_47, align 1
store float 0.000000e+00, float* %var_2_49, align 1
store float 0.000000e+00, float* %var_2_51, align 1
store float 0.000000e+00, float* %var_2_53, align 1
%var_2_960 = bitcast %union.VectorReg* %var_2_250 to <2 x i32>*
%var_2_961 = load <2 x i32>, <2 x i32>* %var_2_960, align 1
%var_2_962 = bitcast i64* %var_2_596 to <2 x i32>*
%var_2_963 = load <2 x i32>, <2 x i32>* %var_2_962, align 1
%var_2_964 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
%var_2_965 = sitofp i32 %var_2_964 to float
%var_2_966 = bitcast %union.VectorReg* %var_2_250 to float*
store float %var_2_965, float* %var_2_966, align 1
%var_2_967 = extractelement <2 x i32> %var_2_961, i32 1
; Matched:\<badref\>:  store i32 %var_2_2136, i32* %var_2_1904, align 1, !tbaa !1265
; store i32 %var_2_967, i32* %var_2_595, align 1
%var_2_968 = extractelement <2 x i32> %var_2_963, i32 0
; Matched:\<badref\>:  store i32 %var_2_2137, i32* %var_2_1906, align 1, !tbaa !1265
; store i32 %var_2_968, i32* %var_2_597, align 1
%var_2_969 = extractelement <2 x i32> %var_2_963, i32 1
; Matched:\<badref\>:  store i32 %var_2_2163, i32* %var_2_1908, align 1, !tbaa !1265
; store i32 %var_2_969, i32* %var_2_599, align 1
; Matched:%var_2_2139:  %var_2_2139 = add i64 %var_2_2123, -20
; %var_2_970 = add i64 %var_2_954, -20
; Matched:%var_2_2140:  %var_2_2140 = add i64 %var_2_2125, 19
; %var_2_971 = add i64 %var_2_956, 19
; Matched:\<badref\>:  store i64 %var_2_2140, i64* %PC, align 8
; store i64 %var_2_971, i64* %var_2_3, align 8
%var_2_972 = bitcast %union.VectorReg* %var_2_250 to <2 x float>*
%var_2_973 = load <2 x float>, <2 x float>* %var_2_972, align 1
%var_2_974 = load <2 x i32>, <2 x i32>* %var_2_962, align 1
; Matched:%var_2_2144:  %var_2_2144 = inttoptr i64 %var_2_2139 to float*
; %var_2_975 = inttoptr i64 %var_2_970 to float*
; Matched:%var_2_2145:  %var_2_2145 = load float, float* %var_2_2144, align 4
; %var_2_976 = load float, float* %var_2_975, align 4
%var_2_977 = extractelement <2 x float> %var_2_973, i32 0
; Matched:%var_2_2147:  %var_2_2147 = fmul float %var_2_2146, %var_2_2145
; %var_2_978 = fmul float %var_2_977, %var_2_976
; Matched:\<badref\>:  store float %var_2_2147, float* %var_2_2135, align 1, !tbaa !1265
; store float %var_2_978, float* %var_2_966, align 1
%var_2_979 = bitcast <2 x float> %var_2_973 to <2 x i32>
%var_2_980 = extractelement <2 x i32> %var_2_979, i32 1
; Matched:\<badref\>:  store i32 %var_2_2149, i32* %var_2_1904, align 1, !tbaa !1265
; store i32 %var_2_980, i32* %var_2_595, align 1
%var_2_981 = extractelement <2 x i32> %var_2_974, i32 0
; Matched:\<badref\>:  store i32 %var_2_2150, i32* %var_2_1906, align 1, !tbaa !1265
; store i32 %var_2_981, i32* %var_2_597, align 1
%var_2_982 = extractelement <2 x i32> %var_2_974, i32 1
; Matched:\<badref\>:  store i32 %var_2_2175, i32* %var_2_1908, align 1, !tbaa !1265
; store i32 %var_2_982, i32* %var_2_599, align 1
; Matched:%var_2_2152:  %var_2_2152 = add i64 %var_2_2123, -24
; %var_2_983 = add i64 %var_2_954, -24
; Matched:%var_2_2380:  %var_2_2380 = add i64 %var_2_2375, 24
; %var_2_984 = add i64 %var_2_956, 24
; Matched:\<badref\>:  store i64 %var_2_434, i64* %PC, align 8
; store i64 %var_2_984, i64* %var_2_3, align 8
%var_2_985 = load <2 x float>, <2 x float>* %var_2_972, align 1
%var_2_986 = load <2 x i32>, <2 x i32>* %var_2_962, align 1
; Matched:%var_2_2156:  %var_2_2156 = inttoptr i64 %var_2_2152 to float*
; %var_2_987 = inttoptr i64 %var_2_983 to float*
; Matched:%var_2_2157:  %var_2_2157 = load float, float* %var_2_2156, align 4
; %var_2_988 = load float, float* %var_2_987, align 4
%var_2_989 = extractelement <2 x float> %var_2_985, i32 0
; Matched:%var_2_2159:  %var_2_2159 = fmul float %var_2_2158, %var_2_2157
; %var_2_990 = fmul float %var_2_989, %var_2_988
; Matched:\<badref\>:  store float %var_2_2159, float* %var_2_2135, align 1, !tbaa !1265
; store float %var_2_990, float* %var_2_966, align 1
%var_2_991 = bitcast <2 x float> %var_2_985 to <2 x i32>
%var_2_992 = extractelement <2 x i32> %var_2_991, i32 1
; Matched:\<badref\>:  store i32 %var_2_2161, i32* %var_2_1904, align 1, !tbaa !1265
; store i32 %var_2_992, i32* %var_2_595, align 1
%var_2_993 = extractelement <2 x i32> %var_2_986, i32 0
; Matched:\<badref\>:  store i32 %var_2_2162, i32* %var_2_1906, align 1, !tbaa !1265
; store i32 %var_2_993, i32* %var_2_597, align 1
%var_2_994 = extractelement <2 x i32> %var_2_986, i32 1
; Matched:\<badref\>:  store i32 %var_2_2138, i32* %var_2_1908, align 1, !tbaa !1265
; store i32 %var_2_994, i32* %var_2_599, align 1
; Matched:%var_2_2164:  %var_2_2164 = add i64 %var_2_2123, -36
; %var_2_995 = add i64 %var_2_954, -36
; Matched:%var_2_2165:  %var_2_2165 = add i64 %var_2_2125, 29
; %var_2_996 = add i64 %var_2_956, 29
; Matched:\<badref\>:  store i64 %var_2_2165, i64* %PC, align 8
; store i64 %var_2_996, i64* %var_2_3, align 8
%var_2_997 = load <2 x float>, <2 x float>* %var_2_972, align 1
%var_2_998 = load <2 x i32>, <2 x i32>* %var_2_962, align 1
; Matched:%var_2_2168:  %var_2_2168 = inttoptr i64 %var_2_2164 to float*
; %var_2_999 = inttoptr i64 %var_2_995 to float*
; Matched:%var_2_2169:  %var_2_2169 = load float, float* %var_2_2168, align 4
; %var_2_1000 = load float, float* %var_2_999, align 4
%var_2_1001 = extractelement <2 x float> %var_2_997, i32 0
; Matched:%var_2_2171:  %var_2_2171 = fmul float %var_2_2170, %var_2_2169
; %var_2_1002 = fmul float %var_2_1001, %var_2_1000
; Matched:\<badref\>:  store float %var_2_2171, float* %var_2_2135, align 1, !tbaa !1265
; store float %var_2_1002, float* %var_2_966, align 1
%var_2_1003 = bitcast <2 x float> %var_2_997 to <2 x i32>
%var_2_1004 = extractelement <2 x i32> %var_2_1003, i32 1
; Matched:\<badref\>:  store i32 %var_2_2173, i32* %var_2_1904, align 1, !tbaa !1265
; store i32 %var_2_1004, i32* %var_2_595, align 1
%var_2_1005 = extractelement <2 x i32> %var_2_998, i32 0
; Matched:\<badref\>:  store i32 %var_2_2174, i32* %var_2_1906, align 1, !tbaa !1265
; store i32 %var_2_1005, i32* %var_2_597, align 1
%var_2_1006 = extractelement <2 x i32> %var_2_998, i32 1
; Matched:\<badref\>:  store i32 %var_2_2151, i32* %var_2_1908, align 1, !tbaa !1265
; store i32 %var_2_1006, i32* %var_2_599, align 1
%var_2_1007 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_1008 = load <2 x i32>, <2 x i32>* %var_2_257, align 1
%var_2_1009 = load <2 x float>, <2 x float>* %var_2_972, align 1
%var_2_1010 = extractelement <2 x float> %var_2_1007, i32 0
%var_2_1011 = extractelement <2 x float> %var_2_1009, i32 0
; Matched:%var_2_2181:  %var_2_2181 = fdiv float %var_2_2179, %var_2_2180
; %var_2_1012 = fdiv float %var_2_1010, %var_2_1011
; Matched:\<badref\>:  store float %var_2_2181, float* %var_2_25, align 1, !tbaa !1265
; store float %var_2_1012, float* %var_2_46, align 1
%var_2_1013 = bitcast <2 x float> %var_2_1007 to <2 x i32>
%var_2_1014 = extractelement <2 x i32> %var_2_1013, i32 1
; Matched:\<badref\>:  store i32 %var_2_1569, i32* %var_2_245, align 1, !tbaa !1265
; store i32 %var_2_1014, i32* %var_2_281, align 1
%var_2_1015 = extractelement <2 x i32> %var_2_1008, i32 0
; Matched:\<badref\>:  store i32 %var_2_754, i32* %var_2_247, align 1, !tbaa !1265
; store i32 %var_2_1015, i32* %var_2_283, align 1
%var_2_1016 = extractelement <2 x i32> %var_2_1008, i32 1
; Matched:\<badref\>:  store i32 %var_2_1437, i32* %var_2_249, align 1, !tbaa !1265
; store i32 %var_2_1016, i32* %var_2_285, align 1
; Matched:%var_2_2186:  %var_2_2186 = add i64 %var_2_2123, -32
; %var_2_1017 = add i64 %var_2_954, -32
; Matched:%var_2_2308:  %var_2_2308 = add i64 %var_2_2289, 38
; %var_2_1018 = add i64 %var_2_956, 38
; Matched:\<badref\>:  store i64 %var_2_330, i64* %PC, align 8
; store i64 %var_2_1018, i64* %var_2_3, align 8
%var_2_1019 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_1020 = extractelement <2 x float> %var_2_1019, i32 0
; Matched:%var_2_2190:  %var_2_2190 = inttoptr i64 %var_2_2186 to float*
; %var_2_1021 = inttoptr i64 %var_2_1017 to float*
; Matched:\<badref\>:  store float %var_2_2189, float* %var_2_2190, align 4
; store float %var_2_1020, float* %var_2_1021, align 4
; Matched:%var_2_2191:  %var_2_2191 = load i64, i64* %RBP, align 8
; %var_2_1022 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2192:  %var_2_2192 = add i64 %var_2_2191, -36
; %var_2_1023 = add i64 %var_2_1022, -36
%var_2_1024 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1351:  %var_2_1351 = add i64 %var_2_1350, 5
; %var_2_1025 = add i64 %var_2_1024, 5
; Matched:\<badref\>:  store i64 %var_2_3107, i64* %PC, align 8
; store i64 %var_2_1025, i64* %var_2_3, align 8
; Matched:%var_2_2195:  %var_2_2195 = inttoptr i64 %var_2_2192 to i32*
; %var_2_1026 = inttoptr i64 %var_2_1023 to i32*
; Matched:%var_2_2196:  %var_2_2196 = load i32, i32* %var_2_2195, align 4
; %var_2_1027 = load i32, i32* %var_2_1026, align 4
; Matched:\<badref\>:  store i32 %var_2_2196, i32* %var_2_26, align 1, !tbaa !1265
; store i32 %var_2_1027, i32* %var_2_47, align 1
store float 0.000000e+00, float* %var_2_49, align 1
; Matched:%var_2_2197:  %var_2_2197 = add i64 %var_2_2191, -48
; %var_2_1028 = add i64 %var_2_1022, -48
; Matched:%var_2_1772:  %var_2_1772 = add i64 %var_2_1766, 10
; %var_2_1029 = add i64 %var_2_1024, 10
; Matched:\<badref\>:  store i64 %var_2_1529, i64* %PC, align 8
; store i64 %var_2_1029, i64* %var_2_3, align 8
%var_2_1030 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_1031 = extractelement <2 x float> %var_2_1030, i32 0
; Matched:%var_2_2201:  %var_2_2201 = inttoptr i64 %var_2_2197 to float*
; %var_2_1032 = inttoptr i64 %var_2_1028 to float*
; Matched:\<badref\>:  store float %var_2_2200, float* %var_2_2201, align 4
; store float %var_2_1031, float* %var_2_1032, align 4
%var_2_1033 = load i64, i64* %var_2_3, align 8
%var_2_1034 = load i32, i32* bitcast (%G_0x62bcf0_type* @G_0x62bcf0 to i32*), align 8
store i32 %var_2_1034, i32* %var_2_47, align 1
store float 0.000000e+00, float* %var_2_49, align 1
store float 0.000000e+00, float* %var_2_51, align 1
store float 0.000000e+00, float* %var_2_53, align 1
%var_2_1035 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_1036 = load <2 x i32>, <2 x i32>* %var_2_257, align 1
%var_2_1037 = bitcast %union.VectorReg* %var_2_221 to <2 x float>*
%var_2_1038 = load <2 x float>, <2 x float>* %var_2_1037, align 1
%var_2_1039 = extractelement <2 x float> %var_2_1035, i32 0
%var_2_1040 = extractelement <2 x float> %var_2_1038, i32 0
; Matched:%var_2_2210:  %var_2_2210 = fsub float %var_2_2208, %var_2_2209
; %var_2_1041 = fsub float %var_2_1039, %var_2_1040
; Matched:\<badref\>:  store float %var_2_2210, float* %var_2_25, align 1, !tbaa !1265
; store float %var_2_1041, float* %var_2_46, align 1
%var_2_1042 = bitcast <2 x float> %var_2_1035 to <2 x i32>
%var_2_1043 = extractelement <2 x i32> %var_2_1042, i32 1
; Matched:\<badref\>:  store i32 %var_2_643, i32* %var_2_245, align 1, !tbaa !1265
; store i32 %var_2_1043, i32* %var_2_281, align 1
%var_2_1044 = extractelement <2 x i32> %var_2_1036, i32 0
; Matched:\<badref\>:  store i32 %var_2_1326, i32* %var_2_247, align 1, !tbaa !1265
; store i32 %var_2_1044, i32* %var_2_283, align 1
%var_2_1045 = extractelement <2 x i32> %var_2_1036, i32 1
; Matched:\<badref\>:  store i32 %var_2_1282, i32* %var_2_249, align 1, !tbaa !1265
; store i32 %var_2_1045, i32* %var_2_285, align 1
; Matched:%var_2_2215:  %var_2_2215 = load i64, i64* %RBP, align 8
; %var_2_1046 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2216:  %var_2_2216 = add i64 %var_2_2215, -52
; %var_2_1047 = add i64 %var_2_1046, -52
%var_2_1048 = add i64 %var_2_1033, 18
store i64 %var_2_1048, i64* %var_2_3, align 8
%var_2_1049 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_1050 = extractelement <2 x float> %var_2_1049, i32 0
; Matched:%var_2_2220:  %var_2_2220 = inttoptr i64 %var_2_2216 to float*
; %var_2_1051 = inttoptr i64 %var_2_1047 to float*
; Matched:\<badref\>:  store float %var_2_2219, float* %var_2_2220, align 4
; store float %var_2_1050, float* %var_2_1051, align 4
%var_2_1052 = load i64, i64* %var_2_3, align 8
%var_2_1053 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
%var_2_1054 = add i32 %var_2_1053, -1
; Matched:%var_2_2224:  %var_2_2224 = zext i32 %var_2_2223 to i64
; %var_2_1055 = zext i32 %var_2_1054 to i64
; Matched:\<badref\>:  store i64 %var_2_2224, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1055, i64* %RAX.i271, align 8
%var_2_1056 = icmp eq i32 %var_2_1053, 0
%var_2_1057 = zext i1 %var_2_1056 to i8
store i8 %var_2_1057, i8* %var_2_14, align 1
; Matched:%var_2_2227:  %var_2_2227 = and i32 %var_2_2223, 255
; %var_2_1058 = and i32 %var_2_1054, 255
; Matched:%var_2_2228:  %var_2_2228 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2227) #12
; %var_2_1059 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1058)
; Matched:%var_2_2229:  %var_2_2229 = trunc i32 %var_2_2228 to i8
; %var_2_1060 = trunc i32 %var_2_1059 to i8
; Matched:%var_2_2230:  %var_2_2230 = and i8 %var_2_2229, 1
; %var_2_1061 = and i8 %var_2_1060, 1
; Matched:%var_2_2231:  %var_2_2231 = xor i8 %var_2_2230, 1
; %var_2_1062 = xor i8 %var_2_1061, 1
; Matched:\<badref\>:  store i8 %var_2_2231, i8* %var_2_18, align 1, !tbaa !1281
; store i8 %var_2_1062, i8* %var_2_21, align 1
; Matched:%var_2_2232:  %var_2_2232 = xor i32 %var_2_2223, %var_2_2222
; %var_2_1063 = xor i32 %var_2_1054, %var_2_1053
; Matched:%var_2_2233:  %var_2_2233 = lshr i32 %var_2_2232, 4
; %var_2_1064 = lshr i32 %var_2_1063, 4
; Matched:%var_2_2234:  %var_2_2234 = trunc i32 %var_2_2233 to i8
; %var_2_1065 = trunc i32 %var_2_1064 to i8
; Matched:%var_2_2235:  %var_2_2235 = and i8 %var_2_2234, 1
; %var_2_1066 = and i8 %var_2_1065, 1
; Matched:\<badref\>:  store i8 %var_2_2235, i8* %var_2_19, align 1, !tbaa !1285
; store i8 %var_2_1066, i8* %var_2_27, align 1
; Matched:%var_2_2236:  %var_2_2236 = icmp eq i32 %var_2_2223, 0
; %var_2_1067 = icmp eq i32 %var_2_1054, 0
; Matched:%var_2_2237:  %var_2_2237 = zext i1 %var_2_2236 to i8
; %var_2_1068 = zext i1 %var_2_1067 to i8
; Matched:\<badref\>:  store i8 %var_2_2237, i8* %var_2_20, align 1, !tbaa !1282
; store i8 %var_2_1068, i8* %var_2_30, align 1
; Matched:%var_2_2238:  %var_2_2238 = lshr i32 %var_2_2223, 31
; %var_2_1069 = lshr i32 %var_2_1054, 31
; Matched:%var_2_2239:  %var_2_2239 = trunc i32 %var_2_2238 to i8
; %var_2_1070 = trunc i32 %var_2_1069 to i8
; Matched:\<badref\>:  store i8 %var_2_2239, i8* %var_2_21, align 1, !tbaa !1283
; store i8 %var_2_1070, i8* %var_2_33, align 1
; Matched:%var_2_2240:  %var_2_2240 = lshr i32 %var_2_2222, 31
; %var_2_1071 = lshr i32 %var_2_1053, 31
; Matched:%var_2_2241:  %var_2_2241 = xor i32 %var_2_2238, %var_2_2240
; %var_2_1072 = xor i32 %var_2_1069, %var_2_1071
; Matched:%var_2_2242:  %var_2_2242 = add nuw nsw i32 %var_2_2241, %var_2_2240
; %var_2_1073 = add nuw nsw i32 %var_2_1072, %var_2_1071
; Matched:%var_2_2243:  %var_2_2243 = icmp eq i32 %var_2_2242, 2
; %var_2_1074 = icmp eq i32 %var_2_1073, 2
; Matched:%var_2_2244:  %var_2_2244 = zext i1 %var_2_2243 to i8
; %var_2_1075 = zext i1 %var_2_1074 to i8
; Matched:\<badref\>:  store i8 %var_2_2244, i8* %var_2_22, align 1, !tbaa !1284
; store i8 %var_2_1075, i8* %var_2_39, align 1
%var_2_1076 = sext i32 %var_2_1054 to i64
; Matched:\<badref\>:  store i64 %var_2_2245, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1076, i64* %RCX.i347, align 8
%var_2_1077 = shl nsw i64 %var_2_1076, 2
%var_2_1078 = add nsw i64 %var_2_1077, 6470896
; Matched:%var_2_2398:  %var_2_2398 = add i64 %var_2_2389, 22
; %var_2_1079 = add i64 %var_2_1052, 22
; Matched:\<badref\>:  store i64 %var_2_2398, i64* %PC, align 8
; store i64 %var_2_1079, i64* %var_2_3, align 8
%var_2_1080 = inttoptr i64 %var_2_1078 to i32*
%var_2_1081 = load i32, i32* %var_2_1080, align 4
store i32 %var_2_1081, i32* %var_2_47, align 1
store float 0.000000e+00, float* %var_2_49, align 1
store float 0.000000e+00, float* %var_2_51, align 1
store float 0.000000e+00, float* %var_2_53, align 1
%var_2_1082 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_1083 = load <2 x i32>, <2 x i32>* %var_2_257, align 1
%var_2_1084 = load <2 x float>, <2 x float>* %var_2_1037, align 1
%var_2_1085 = extractelement <2 x float> %var_2_1082, i32 0
%var_2_1086 = extractelement <2 x float> %var_2_1084, i32 0
; Matched:%var_2_2256:  %var_2_2256 = fsub float %var_2_2254, %var_2_2255
; %var_2_1087 = fsub float %var_2_1085, %var_2_1086
; Matched:\<badref\>:  store float %var_2_2256, float* %var_2_25, align 1, !tbaa !1265
; store float %var_2_1087, float* %var_2_46, align 1
%var_2_1088 = bitcast <2 x float> %var_2_1082 to <2 x i32>
%var_2_1089 = extractelement <2 x i32> %var_2_1088, i32 1
; Matched:\<badref\>:  store i32 %var_2_1297, i32* %var_2_245, align 1, !tbaa !1265
; store i32 %var_2_1089, i32* %var_2_281, align 1
%var_2_1090 = extractelement <2 x i32> %var_2_1083, i32 0
; Matched:\<badref\>:  store i32 %var_2_1391, i32* %var_2_247, align 1, !tbaa !1265
; store i32 %var_2_1090, i32* %var_2_283, align 1
%var_2_1091 = extractelement <2 x i32> %var_2_1083, i32 1
; Matched:\<badref\>:  store i32 %var_2_1299, i32* %var_2_249, align 1, !tbaa !1265
; store i32 %var_2_1091, i32* %var_2_285, align 1
; Matched:%var_2_2261:  %var_2_2261 = load i64, i64* %RBP, align 8
; %var_2_1092 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2262:  %var_2_2262 = add i64 %var_2_2261, -56
; %var_2_1093 = add i64 %var_2_1092, -56
; Matched:%var_2_2263:  %var_2_2263 = add i64 %var_2_2221, 31
; %var_2_1094 = add i64 %var_2_1052, 31
; Matched:\<badref\>:  store i64 %var_2_2263, i64* %PC, align 8
; store i64 %var_2_1094, i64* %var_2_3, align 8
%var_2_1095 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_1096 = extractelement <2 x float> %var_2_1095, i32 0
; Matched:%var_2_2266:  %var_2_2266 = inttoptr i64 %var_2_2262 to float*
; %var_2_1097 = inttoptr i64 %var_2_1093 to float*
; Matched:\<badref\>:  store float %var_2_2265, float* %var_2_2266, align 4
; store float %var_2_1096, float* %var_2_1097, align 4
; Matched:%var_2_2787:  %var_2_2787 = load i64, i64* %PC, align 8
; %var_2_1098 = load i64, i64* %var_2_3, align 8
%var_2_1099 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
store i64 %var_2_1099, i64* %RDI.i594, align 8
; Matched:\<badref\>:  store i8 0, i8* %AL, align 1, !tbaa !1286
; store i8 0, i8* %AL.i1482, align 1
; Matched:%var_2_2269:  %var_2_2269 = add i64 %var_2_2267, -1722
; %var_2_1100 = add i64 %var_2_1098, -1722
; Matched:%var_2_2790:  %var_2_2790 = add i64 %var_2_2787, 15
; %var_2_1101 = add i64 %var_2_1098, 15
%var_2_1102 = load i64, i64* %var_2_6, align 8
%var_2_1103 = add i64 %var_2_1102, -8
; Matched:%var_2_2793:  %var_2_2793 = inttoptr i64 %var_2_2792 to i64*
; %var_2_1104 = inttoptr i64 %var_2_1103 to i64*
; Matched:\<badref\>:  store i64 %var_2_2790, i64* %var_2_2793, align 8
; store i64 %var_2_1101, i64* %var_2_1104, align 8
; Matched:\<badref\>:  store i64 %var_2_808, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1103, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_2269, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1100, i64* %var_2_3, align 8
%var_2_1105 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %call2_400b2d)
%var_2_1106 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x402f7b_type* @G__0x402f7b to i64), i64* %RSI.i245, align 8
%var_2_1107 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
store i64 %var_2_1107, i64* %RDI.i594, align 8
; Matched:%var_2_2277:  %var_2_2277 = load i64, i64* %RBP, align 8
; %var_2_1108 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2278:  %var_2_2278 = add i64 %var_2_2277, -908
; %var_2_1109 = add i64 %var_2_1108, -908
; Matched:%var_2_2279:  %var_2_2279 = load i32, i32* %EAX, align 4
; %var_2_1110 = load i32, i32* %EAX.i1471, align 4
; Matched:%var_2_126:  %var_2_126 = add i64 %var_2_121, 24
; %var_2_1111 = add i64 %var_2_1106, 24
; Matched:\<badref\>:  store i64 %var_2_1152, i64* %PC, align 8
; store i64 %var_2_1111, i64* %var_2_3, align 8
; Matched:%var_2_2281:  %var_2_2281 = inttoptr i64 %var_2_2278 to i32*
; %var_2_1112 = inttoptr i64 %var_2_1109 to i32*
; Matched:\<badref\>:  store i32 %var_2_2279, i32* %var_2_2281, align 4
; store i32 %var_2_1110, i32* %var_2_1112, align 4
; Matched:%var_2_1168:  %var_2_1168 = load i64, i64* %PC, align 8
; %var_2_1113 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i8 0, i8* %AL, align 1, !tbaa !1286
; store i8 0, i8* %AL.i1482, align 1
; Matched:%var_2_2283:  %var_2_2283 = add i64 %var_2_2282, -1761
; %var_2_1114 = add i64 %var_2_1113, -1761
; Matched:%var_2_1170:  %var_2_1170 = add i64 %var_2_1168, 7
; %var_2_1115 = add i64 %var_2_1113, 7
%var_2_1116 = load i64, i64* %var_2_6, align 8
%var_2_1117 = add i64 %var_2_1116, -8
; Matched:%var_2_2807:  %var_2_2807 = inttoptr i64 %var_2_2806 to i64*
; %var_2_1118 = inttoptr i64 %var_2_1117 to i64*
; Matched:\<badref\>:  store i64 %var_2_2356, i64* %var_2_2359, align 8
; store i64 %var_2_1115, i64* %var_2_1118, align 8
; Matched:\<badref\>:  store i64 %var_2_324, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1117, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_2283, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1114, i64* %var_2_3, align 8
%var_2_1119 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %var_2_1105)
%var_2_1120 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x402f9e_type* @G__0x402f9e to i64), i64* %RSI.i245, align 8
%var_2_1121 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
store i64 %var_2_1121, i64* %RDI.i594, align 8
; Matched:%var_2_2291:  %var_2_2291 = load i64, i64* %RBP, align 8
; %var_2_1122 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2292:  %var_2_2292 = add i64 %var_2_2291, -32
; %var_2_1123 = add i64 %var_2_1122, -32
; Matched:%var_2_1779:  %var_2_1779 = add i64 %var_2_1766, 23
; %var_2_1124 = add i64 %var_2_1120, 23
; Matched:\<badref\>:  store i64 %var_2_2293, i64* %PC, align 8
; store i64 %var_2_1124, i64* %var_2_3, align 8
; Matched:%var_2_2294:  %var_2_2294 = inttoptr i64 %var_2_2292 to float*
; %var_2_1125 = inttoptr i64 %var_2_1123 to float*
; Matched:%var_2_2295:  %var_2_2295 = load float, float* %var_2_2294, align 4
; %var_2_1126 = load float, float* %var_2_1125, align 4
; Matched:%var_2_2296:  %var_2_2296 = fpext float %var_2_2295 to double
; %var_2_1127 = fpext float %var_2_1126 to double
; Matched:\<badref\>:  store double %var_2_2296, double* %var_2_189, align 1, !tbaa !1287
; store double %var_2_1127, double* %var_2_218, align 1
; Matched:%var_2_2297:  %var_2_2297 = add i64 %var_2_2291, -28
; %var_2_1128 = add i64 %var_2_1122, -28
%var_2_1129 = add i64 %var_2_1120, 28
store i64 %var_2_1129, i64* %var_2_3, align 8
; Matched:%var_2_2299:  %var_2_2299 = inttoptr i64 %var_2_2297 to float*
; %var_2_1130 = inttoptr i64 %var_2_1128 to float*
; Matched:%var_2_2300:  %var_2_2300 = load float, float* %var_2_2299, align 4
; %var_2_1131 = load float, float* %var_2_1130, align 4
; Matched:%var_2_2301:  %var_2_2301 = fpext float %var_2_2300 to double
; %var_2_1132 = fpext float %var_2_1131 to double
; Matched:\<badref\>:  store double %var_2_2301, double* %var_2_193, align 1, !tbaa !1287
; store double %var_2_1132, double* %var_2_226, align 1
; Matched:%var_2_2302:  %var_2_2302 = add i64 %var_2_2291, -48
; %var_2_1133 = add i64 %var_2_1122, -48
; Matched:%var_2_2303:  %var_2_2303 = add i64 %var_2_2289, 33
; %var_2_1134 = add i64 %var_2_1120, 33
; Matched:\<badref\>:  store i64 %var_2_2303, i64* %PC, align 8
; store i64 %var_2_1134, i64* %var_2_3, align 8
; Matched:%var_2_2304:  %var_2_2304 = inttoptr i64 %var_2_2302 to float*
; %var_2_1135 = inttoptr i64 %var_2_1133 to float*
; Matched:%var_2_2305:  %var_2_2305 = load float, float* %var_2_2304, align 4
; %var_2_1136 = load float, float* %var_2_1135, align 4
; Matched:%var_2_2306:  %var_2_2306 = fpext float %var_2_2305 to double
; %var_2_1137 = fpext float %var_2_1136 to double
; Matched:\<badref\>:  store double %var_2_2306, double* %var_2_219, align 1, !tbaa !1287
; store double %var_2_1137, double* %var_2_253, align 1
; Matched:%var_2_2307:  %var_2_2307 = add i64 %var_2_2291, -52
; %var_2_1138 = add i64 %var_2_1122, -52
; Matched:%var_2_2187:  %var_2_2187 = add i64 %var_2_2125, 38
; %var_2_1139 = add i64 %var_2_1120, 38
; Matched:\<badref\>:  store i64 %var_2_2308, i64* %PC, align 8
; store i64 %var_2_1139, i64* %var_2_3, align 8
; Matched:%var_2_2309:  %var_2_2309 = inttoptr i64 %var_2_2307 to float*
; %var_2_1140 = inttoptr i64 %var_2_1138 to float*
; Matched:%var_2_2310:  %var_2_2310 = load float, float* %var_2_2309, align 4
; %var_2_1141 = load float, float* %var_2_1140, align 4
; Matched:%var_2_2311:  %var_2_2311 = fpext float %var_2_2310 to double
; %var_2_1142 = fpext float %var_2_1141 to double
; Matched:\<badref\>:  store double %var_2_2311, double* %var_2_232, align 1, !tbaa !1287
; store double %var_2_1142, double* %var_2_267, align 1
; Matched:%var_2_2614:  %var_2_2614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
; %var_2_1143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
; Matched:%var_2_2312:  %var_2_2312 = add i64 %var_2_2291, -56
; %var_2_1144 = add i64 %var_2_1122, -56
; Matched:%var_2_2313:  %var_2_2313 = add i64 %var_2_2289, 43
; %var_2_1145 = add i64 %var_2_1120, 43
; Matched:\<badref\>:  store i64 %var_2_2313, i64* %PC, align 8
; store i64 %var_2_1145, i64* %var_2_3, align 8
; Matched:%var_2_2314:  %var_2_2314 = inttoptr i64 %var_2_2312 to float*
; %var_2_1146 = inttoptr i64 %var_2_1144 to float*
; Matched:%var_2_2315:  %var_2_2315 = load float, float* %var_2_2314, align 4
; %var_2_1147 = load float, float* %var_2_1146, align 4
; Matched:%var_2_2316:  %var_2_2316 = fpext float %var_2_2315 to double
; %var_2_1148 = fpext float %var_2_1147 to double
; Matched:%var_2_2317:  %var_2_2317 = bitcast %union.VectorReg* %var_2_2614 to double*
; %var_2_1149 = bitcast %union.VectorReg* %var_2_1143 to double*
; Matched:\<badref\>:  store double %var_2_2316, double* %var_2_2317, align 1, !tbaa !1287
; store double %var_2_1148, double* %var_2_1149, align 1
; Matched:%var_2_2318:  %var_2_2318 = add i64 %var_2_2291, -912
; %var_2_1150 = add i64 %var_2_1122, -912
; Matched:%var_2_2319:  %var_2_2319 = load i32, i32* %EAX, align 4
; %var_2_1151 = load i32, i32* %EAX.i1471, align 4
; Matched:%var_2_2320:  %var_2_2320 = add i64 %var_2_2289, 49
; %var_2_1152 = add i64 %var_2_1120, 49
; Matched:\<badref\>:  store i64 %var_2_2320, i64* %PC, align 8
; store i64 %var_2_1152, i64* %var_2_3, align 8
; Matched:%var_2_2321:  %var_2_2321 = inttoptr i64 %var_2_2318 to i32*
; %var_2_1153 = inttoptr i64 %var_2_1150 to i32*
; Matched:\<badref\>:  store i32 %var_2_2319, i32* %var_2_2321, align 4
; store i32 %var_2_1151, i32* %var_2_1153, align 4
; Matched:%var_2_178:  %var_2_178 = load i64, i64* %PC, align 8
; %var_2_1154 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i8 0, i8* %AL, align 1, !tbaa !1286
; store i8 5, i8* %AL.i1482, align 1
; Matched:%var_2_2323:  %var_2_2323 = add i64 %var_2_2322, -1817
; %var_2_1155 = add i64 %var_2_1154, -1817
; Matched:%var_2_180:  %var_2_180 = add i64 %var_2_178, 7
; %var_2_1156 = add i64 %var_2_1154, 7
%var_2_1157 = load i64, i64* %var_2_6, align 8
%var_2_1158 = add i64 %var_2_1157, -8
; Matched:%var_2_1824:  %var_2_1824 = inttoptr i64 %var_2_1823 to i64*
; %var_2_1159 = inttoptr i64 %var_2_1158 to i64*
; Matched:\<badref\>:  store i64 %var_2_2384, i64* %var_2_2387, align 8
; store i64 %var_2_1156, i64* %var_2_1159, align 8
; Matched:\<badref\>:  store i64 %var_2_1445, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1158, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_2323, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1155, i64* %var_2_3, align 8
%var_2_1160 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %var_2_1119)
%var_2_1161 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x402fbf_type* @G__0x402fbf to i64), i64* %RSI.i245, align 8
%var_2_1162 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
store i64 %var_2_1162, i64* %RDI.i594, align 8
%var_2_1163 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
%var_2_1164 = zext i32 %var_2_1163 to i64
store i64 %var_2_1164, i64* %RDX.i359, align 8
; Matched:%var_2_2333:  %var_2_2333 = load i64, i64* %RBP, align 8
; %var_2_1165 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2334:  %var_2_2334 = add i64 %var_2_2333, -916
; %var_2_1166 = add i64 %var_2_1165, -916
; Matched:%var_2_2335:  %var_2_2335 = load i32, i32* %EAX, align 4
; %var_2_1167 = load i32, i32* %EAX.i1471, align 4
; Matched:%var_2_1138:  %var_2_1138 = add i64 %var_2_1131, 31
; %var_2_1168 = add i64 %var_2_1161, 31
; Matched:\<badref\>:  store i64 %var_2_1138, i64* %PC, align 8
; store i64 %var_2_1168, i64* %var_2_3, align 8
; Matched:%var_2_2337:  %var_2_2337 = inttoptr i64 %var_2_2334 to i32*
; %var_2_1169 = inttoptr i64 %var_2_1166 to i32*
; Matched:\<badref\>:  store i32 %var_2_2335, i32* %var_2_2337, align 4
; store i32 %var_2_1167, i32* %var_2_1169, align 4
; Matched:%var_2_1154:  %var_2_1154 = load i64, i64* %PC, align 8
; %var_2_1170 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i8 0, i8* %AL, align 1, !tbaa !1286
; store i8 0, i8* %AL.i1482, align 1
; Matched:%var_2_2339:  %var_2_2339 = add i64 %var_2_2338, -1855
; %var_2_1171 = add i64 %var_2_1170, -1855
; Matched:%var_2_1156:  %var_2_1156 = add i64 %var_2_1154, 7
; %var_2_1172 = add i64 %var_2_1170, 7
%var_2_1173 = load i64, i64* %var_2_6, align 8
%var_2_1174 = add i64 %var_2_1173, -8
; Matched:%var_2_2343:  %var_2_2343 = inttoptr i64 %var_2_2342 to i64*
; %var_2_1175 = inttoptr i64 %var_2_1174 to i64*
; Matched:\<badref\>:  store i64 %var_2_180, i64* %var_2_183, align 8
; store i64 %var_2_1172, i64* %var_2_1175, align 8
; Matched:\<badref\>:  store i64 %var_2_453, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1174, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_2339, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1171, i64* %var_2_3, align 8
%var_2_1176 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %var_2_1160)
%var_2_1177 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x402ff4_type* @G__0x402ff4 to i64), i64* %RSI.i245, align 8
%var_2_1178 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
store i64 %var_2_1178, i64* %RDI.i594, align 8
%var_2_1179 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
%var_2_1180 = zext i32 %var_2_1179 to i64
store i64 %var_2_1180, i64* %RDX.i359, align 8
; Matched:%var_2_2349:  %var_2_2349 = load i64, i64* %RBP, align 8
; %var_2_1181 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2350:  %var_2_2350 = add i64 %var_2_2349, -920
; %var_2_1182 = add i64 %var_2_1181, -920
; Matched:%var_2_2351:  %var_2_2351 = load i32, i32* %EAX, align 4
; %var_2_1183 = load i32, i32* %EAX.i1471, align 4
; Matched:%var_2_2352:  %var_2_2352 = add i64 %var_2_2345, 31
; %var_2_1184 = add i64 %var_2_1177, 31
; Matched:\<badref\>:  store i64 %var_2_2352, i64* %PC, align 8
; store i64 %var_2_1184, i64* %var_2_3, align 8
; Matched:%var_2_2353:  %var_2_2353 = inttoptr i64 %var_2_2350 to i32*
; %var_2_1185 = inttoptr i64 %var_2_1182 to i32*
; Matched:\<badref\>:  store i32 %var_2_2351, i32* %var_2_2353, align 4
; store i32 %var_2_1183, i32* %var_2_1185, align 4
; Matched:%var_2_160:  %var_2_160 = load i64, i64* %PC, align 8
; %var_2_1186 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i8 0, i8* %AL, align 1, !tbaa !1286
; store i8 0, i8* %AL.i1482, align 1
; Matched:%var_2_2355:  %var_2_2355 = add i64 %var_2_2354, -1893
; %var_2_1187 = add i64 %var_2_1186, -1893
; Matched:%var_2_162:  %var_2_162 = add i64 %var_2_160, 7
; %var_2_1188 = add i64 %var_2_1186, 7
%var_2_1189 = load i64, i64* %var_2_6, align 8
%var_2_1190 = add i64 %var_2_1189, -8
; Matched:%var_2_2373:  %var_2_2373 = inttoptr i64 %var_2_2372 to i64*
; %var_2_1191 = inttoptr i64 %var_2_1190 to i64*
; Matched:\<badref\>:  store i64 %var_2_2370, i64* %var_2_2373, align 8
; store i64 %var_2_1188, i64* %var_2_1191, align 8
; Matched:\<badref\>:  store i64 %var_2_1158, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1190, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_2355, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1187, i64* %var_2_3, align 8
%var_2_1192 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %var_2_1176)
%var_2_1193 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x40302a_type* @G__0x40302a to i64), i64* %RSI.i245, align 8
%var_2_1194 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
store i64 %var_2_1194, i64* %RDI.i594, align 8
; Matched:%var_2_2363:  %var_2_2363 = load i64, i64* %RBP, align 8
; %var_2_1195 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2364:  %var_2_2364 = add i64 %var_2_2363, -924
; %var_2_1196 = add i64 %var_2_1195, -924
; Matched:%var_2_2365:  %var_2_2365 = load i32, i32* %EAX, align 4
; %var_2_1197 = load i32, i32* %EAX.i1471, align 4
; Matched:%var_2_1831:  %var_2_1831 = add i64 %var_2_1826, 24
; %var_2_1198 = add i64 %var_2_1193, 24
; Matched:\<badref\>:  store i64 %var_2_2153, i64* %PC, align 8
; store i64 %var_2_1198, i64* %var_2_3, align 8
; Matched:%var_2_2367:  %var_2_2367 = inttoptr i64 %var_2_2364 to i32*
; %var_2_1199 = inttoptr i64 %var_2_1196 to i32*
; Matched:\<badref\>:  store i32 %var_2_2365, i32* %var_2_2367, align 4
; store i32 %var_2_1197, i32* %var_2_1199, align 4
; Matched:%var_2_142:  %var_2_142 = load i64, i64* %PC, align 8
; %var_2_1200 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i8 0, i8* %AL, align 1, !tbaa !1286
; store i8 0, i8* %AL.i1482, align 1
; Matched:%var_2_2369:  %var_2_2369 = add i64 %var_2_2368, -1924
; %var_2_1201 = add i64 %var_2_1200, -1924
; Matched:%var_2_2804:  %var_2_2804 = add i64 %var_2_2802, 7
; %var_2_1202 = add i64 %var_2_1200, 7
%var_2_1203 = load i64, i64* %var_2_6, align 8
%var_2_1204 = add i64 %var_2_1203, -8
; Matched:%var_2_2359:  %var_2_2359 = inttoptr i64 %var_2_2358 to i64*
; %var_2_1205 = inttoptr i64 %var_2_1204 to i64*
; Matched:\<badref\>:  store i64 %var_2_1835, i64* %var_2_1838, align 8
; store i64 %var_2_1202, i64* %var_2_1205, align 8
; Matched:\<badref\>:  store i64 %var_2_1025, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1204, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_2369, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1201, i64* %var_2_3, align 8
%var_2_1206 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %var_2_1192)
%var_2_1207 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x403062_type* @G__0x403062 to i64), i64* %RSI.i245, align 8
%var_2_1208 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
store i64 %var_2_1208, i64* %RDI.i594, align 8
; Matched:%var_2_2377:  %var_2_2377 = load i64, i64* %RBP, align 8
; %var_2_1209 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2378:  %var_2_2378 = add i64 %var_2_2377, -928
; %var_2_1210 = add i64 %var_2_1209, -928
; Matched:%var_2_2379:  %var_2_2379 = load i32, i32* %EAX, align 4
; %var_2_1211 = load i32, i32* %EAX.i1471, align 4
; Matched:%var_2_2366:  %var_2_2366 = add i64 %var_2_2361, 24
; %var_2_1212 = add i64 %var_2_1207, 24
; Matched:\<badref\>:  store i64 %var_2_2280, i64* %PC, align 8
; store i64 %var_2_1212, i64* %var_2_3, align 8
; Matched:%var_2_2381:  %var_2_2381 = inttoptr i64 %var_2_2378 to i32*
; %var_2_1213 = inttoptr i64 %var_2_1210 to i32*
; Matched:\<badref\>:  store i32 %var_2_2379, i32* %var_2_2381, align 4
; store i32 %var_2_1211, i32* %var_2_1213, align 4
; Matched:%var_2_2338:  %var_2_2338 = load i64, i64* %PC, align 8
; %var_2_1214 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i8 0, i8* %AL, align 1, !tbaa !1286
; store i8 0, i8* %AL.i1482, align 1
; Matched:%var_2_2383:  %var_2_2383 = add i64 %var_2_2382, -1955
; %var_2_1215 = add i64 %var_2_1214, -1955
; Matched:%var_2_2340:  %var_2_2340 = add i64 %var_2_2338, 7
; %var_2_1216 = add i64 %var_2_1214, 7
%var_2_1217 = load i64, i64* %var_2_6, align 8
%var_2_1218 = add i64 %var_2_1217, -8
; Matched:%var_2_441:  %var_2_441 = inttoptr i64 %var_2_440 to i64*
; %var_2_1219 = inttoptr i64 %var_2_1218 to i64*
; Matched:\<badref\>:  store i64 %var_2_1821, i64* %var_2_1824, align 8
; store i64 %var_2_1216, i64* %var_2_1219, align 8
; Matched:\<badref\>:  store i64 %var_2_182, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1218, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_2383, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1215, i64* %var_2_3, align 8
%var_2_1220 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %var_2_1206)
%var_2_1221 = load i64, i64* %var_2_3, align 8
store i32 0, i32* %var_2_47, align 1
store i32 0, i32* %var_2_281, align 1
store i32 0, i32* %var_2_283, align 1
store i32 0, i32* %var_2_285, align 1
%var_2_1222 = load i64, i64* %RBP.i, align 8
%var_2_1223 = add i64 %var_2_1222, -16
%var_2_1224 = add i64 %var_2_1221, 8
store i64 %var_2_1224, i64* %var_2_3, align 8
; Matched:%var_2_2394:  %var_2_2394 = inttoptr i64 %var_2_2392 to i32*
; %var_2_1225 = inttoptr i64 %var_2_1223 to i32*
; Matched:%var_2_2395:  %var_2_2395 = load i32, i32* %var_2_2394, align 4
; %var_2_1226 = load i32, i32* %var_2_1225, align 4
; Matched:\<badref\>:  store i32 %var_2_2395, i32* %var_2_1910, align 1, !tbaa !1265
; store i32 %var_2_1226, i32* %var_2_601, align 1
store float 0.000000e+00, float* %var_2_945, align 1
store float 0.000000e+00, float* %var_2_946, align 1
store float 0.000000e+00, float* %var_2_947, align 1
%var_2_1227 = load <2 x float>, <2 x float>* %var_2_1037, align 1
%var_2_1228 = extractelement <2 x float> %var_2_1227, i32 0
store float %var_2_1228, float* bitcast (%G_0x62bb48_type* @G_0x62bb48 to float*), align 8
; Matched:%var_2_2248:  %var_2_2248 = add i64 %var_2_2221, 22
; %var_2_1229 = add i64 %var_2_1221, 22
; Matched:\<badref\>:  store i64 %var_2_2248, i64* %PC, align 8
; store i64 %var_2_1229, i64* %var_2_3, align 8
%var_2_1230 = inttoptr i64 %var_2_1223 to float*
%var_2_1231 = load float, float* %var_2_1230, align 4
%var_2_1232 = fpext float %var_2_1231 to double
; Matched:\<badref\>:  store double %var_2_2401, double* %var_2_193, align 1, !tbaa !1287
; store double %var_2_1232, double* %var_2_226, align 1
%var_2_1233 = add i64 %var_2_1221, 26
; Matched:\<badref\>:  store i64 %var_2_1427, i64* %PC, align 8
; store i64 %var_2_1233, i64* %var_2_3, align 8
%var_2_1234 = load double, double* %var_2_218, align 1
%var_2_1235 = fcmp uno double %var_2_1232, %var_2_1234
br i1 %var_2_1235, label %var_2_1236, label %var_2_1246

var_2_1236:
%var_2_1237 = fadd double %var_2_1232, %var_2_1234
%var_2_1238 = bitcast double %var_2_1237 to i64
%var_2_1239 = and i64 %var_2_1238, 9221120237041090560
%var_2_1240 = icmp eq i64 %var_2_1239, 9218868437227405312
%var_2_1241 = and i64 %var_2_1238, 2251799813685247
%var_2_1242 = icmp ne i64 %var_2_1241, 0
%var_2_1243 = and i1 %var_2_1240, %var_2_1242
br i1 %var_2_1243, label %var_2_1244, label %var_2_1252

var_2_1244:
%var_2_1245 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %var_2_1233, %struct.Memory* %var_2_1220)
; Matched:  %.pre = load i64, i64* %RBP, align 8
; %.pre = load i64, i64* %RBP.i, align 8
; Matched:  %.pre74 = load i64, i64* %PC, align 8
; %.pre74 = load i64, i64* %var_2_3, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit

var_2_1246:
%var_2_1247 = fcmp ogt double %var_2_1232, %var_2_1234
br i1 %var_2_1247, label %var_2_1252, label %var_2_1248

var_2_1248:
%var_2_1249 = fcmp olt double %var_2_1232, %var_2_1234
br i1 %var_2_1249, label %var_2_1252, label %var_2_1250

var_2_1250:
%var_2_1251 = fcmp oeq double %var_2_1232, %var_2_1234
br i1 %var_2_1251, label %var_2_1252, label %var_2_1256

var_2_1252:
; Matched:%var_2_2921:  %var_2_2921 = phi i8 [ 0, %var_2_2914 ], [ 0, %var_2_2916 ], [ 1, %var_2_2918 ], [ 1, %var_2_2904 ]
; %var_2_1253 = phi i8 [ 0, %var_2_1246 ], [ 0, %var_2_1248 ], [ 1, %var_2_1250 ], [ 1, %var_2_1236 ]
; Matched:%var_2_2423:  %var_2_2423 = phi i8 [ 0, %var_2_2415 ], [ 0, %var_2_2417 ], [ 0, %var_2_2419 ], [ 1, %var_2_2405 ]
; %var_2_1254 = phi i8 [ 0, %var_2_1246 ], [ 0, %var_2_1248 ], [ 0, %var_2_1250 ], [ 1, %var_2_1236 ]
; Matched:%var_2_2424:  %var_2_2424 = phi i8 [ 0, %var_2_2415 ], [ 1, %var_2_2417 ], [ 0, %var_2_2419 ], [ 1, %var_2_2405 ]
; %var_2_1255 = phi i8 [ 0, %var_2_1246 ], [ 1, %var_2_1248 ], [ 0, %var_2_1250 ], [ 1, %var_2_1236 ]
; Matched:\<badref\>:  store i8 %var_2_2422, i8* %var_2_20, align 1, !tbaa !1286
; store i8 %var_2_1253, i8* %var_2_30, align 1
; Matched:\<badref\>:  store i8 %var_2_2922, i8* %var_2_18, align 1, !tbaa !1286
; store i8 %var_2_1254, i8* %var_2_21, align 1
; Matched:\<badref\>:  store i8 %var_2_2424, i8* %var_2_17, align 1, !tbaa !1286
; store i8 %var_2_1255, i8* %var_2_14, align 1
br label %var_2_1256

var_2_1256:
store i8 0, i8* %var_2_39, align 1
store i8 0, i8* %var_2_33, align 1
store i8 0, i8* %var_2_27, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %var_2_1256, %var_2_1244
; Matched:%var_2_2426:  %var_2_2426 = phi i64 [ %.pre74, %var_2_2413 ], [ %var_2_2402, %var_2_2425 ]
; %var_2_1257 = phi i64 [ %.pre74, %var_2_1244 ], [ %var_2_1233, %var_2_1256 ]
; Matched:%var_2_2427:  %var_2_2427 = phi i64 [ %.pre, %var_2_2413 ], [ %var_2_2391, %var_2_2425 ]
; %var_2_1258 = phi i64 [ %.pre, %var_2_1244 ], [ %var_2_1222, %var_2_1256 ]
%var_2_1259 = phi %struct.Memory* [ %var_2_1245, %var_2_1244 ], [ %var_2_1220, %var_2_1256 ]
; Matched:%var_2_2429:  %var_2_2429 = add i64 %var_2_2427, -932
; %var_2_1260 = add i64 %var_2_1258, -932
; Matched:%var_2_2430:  %var_2_2430 = load i32, i32* %EAX, align 4
; %var_2_1261 = load i32, i32* %EAX.i1471, align 4
; Matched:%var_2_2431:  %var_2_2431 = add i64 %var_2_2426, 6
; %var_2_1262 = add i64 %var_2_1257, 6
; Matched:\<badref\>:  store i64 %var_2_2431, i64* %PC, align 8
; store i64 %var_2_1262, i64* %var_2_3, align 8
; Matched:%var_2_2432:  %var_2_2432 = inttoptr i64 %var_2_2429 to i32*
; %var_2_1263 = inttoptr i64 %var_2_1260 to i32*
; Matched:\<badref\>:  store i32 %var_2_2430, i32* %var_2_2432, align 4
; store i32 %var_2_1261, i32* %var_2_1263, align 4
%var_2_1264 = load i64, i64* %var_2_3, align 8
%var_2_1265 = load i8, i8* %var_2_14, align 1
%var_2_1266 = load i8, i8* %var_2_30, align 1
%var_2_1267 = or i8 %var_2_1266, %var_2_1265
%var_2_1268 = icmp ne i8 %var_2_1267, 0
%.v123 = select i1 %var_2_1268, i64 84, i64 6
%var_2_1269 = add i64 %var_2_1264, %.v123
; Matched:\<badref\>:  store i64 %var_2_2438, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1269, i64* %var_2_3, align 8
br i1 %var_2_1268, label %block_.L_400d0e, label %block_400cc0

block_400cc0:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
%var_2_1270 = add i64 %var_2_1269, ptrtoint (%G_0x2190__rip__type* @G_0x2190__rip_ to i64)
%var_2_1271 = add i64 %var_2_1269, 8
store i64 %var_2_1271, i64* %var_2_3, align 8
%var_2_1272 = inttoptr i64 %var_2_1270 to i64*
%var_2_1273 = load i64, i64* %var_2_1272, align 8
store i64 %var_2_1273, i64* %var_2_219, align 1
store double 0.000000e+00, double* %var_2_220, align 1
%var_2_1274 = add i64 %var_2_1269, add (i64 ptrtoint (%G_0x2198__rip__type* @G_0x2198__rip_ to i64), i64 8)
%var_2_1275 = add i64 %var_2_1269, 16
store i64 %var_2_1275, i64* %var_2_3, align 8
%var_2_1276 = inttoptr i64 %var_2_1274 to i64*
%var_2_1277 = load i64, i64* %var_2_1276, align 8
store i64 %var_2_1277, i64* %var_2_227, align 1
store double 0.000000e+00, double* %var_2_229, align 1
%var_2_1278 = load i64, i64* %RBP.i, align 8
%var_2_1279 = add i64 %var_2_1278, -12
; Matched:%var_2_500:  %var_2_500 = add i64 %var_2_2438, 21
; %var_2_1280 = add i64 %var_2_1269, 21
; Matched:\<badref\>:  store i64 %var_2_500, i64* %PC, align 8
; store i64 %var_2_1280, i64* %var_2_3, align 8
%var_2_1281 = inttoptr i64 %var_2_1279 to float*
%var_2_1282 = load float, float* %var_2_1281, align 4
%var_2_1283 = fpext float %var_2_1282 to double
; Matched:\<badref\>:  store double %var_2_503, double* %var_2_219, align 1, !tbaa !1287
; store double %var_2_1283, double* %var_2_253, align 1
%var_2_1284 = add i64 %var_2_1278, -16
; Matched:%var_2_505:  %var_2_505 = add i64 %var_2_2438, 26
; %var_2_1285 = add i64 %var_2_1269, 26
; Matched:\<badref\>:  store i64 %var_2_505, i64* %PC, align 8
; store i64 %var_2_1285, i64* %var_2_3, align 8
%var_2_1286 = inttoptr i64 %var_2_1284 to float*
%var_2_1287 = load float, float* %var_2_1286, align 4
%var_2_1288 = fpext float %var_2_1287 to double
; Matched:\<badref\>:  store double %var_2_1359, double* %var_2_232, align 1, !tbaa !1287
; store double %var_2_1288, double* %var_2_267, align 1
%var_2_1289 = bitcast i64 %var_2_1277 to double
%var_2_1290 = fmul double %var_2_1288, %var_2_1289
%var_2_1291 = fdiv double %var_2_1283, %var_2_1290
store double %var_2_1291, double* %var_2_253, align 1
%var_2_1292 = bitcast double %var_2_1290 to <2 x i32>
%var_2_1293 = fptrunc double %var_2_1291 to float
store float %var_2_1293, float* %var_2_944, align 1
%var_2_1294 = extractelement <2 x i32> %var_2_1292, i32 1
store i32 %var_2_1294, i32* %var_2_603, align 1
store i32 0, i32* %var_2_604, align 1
store i32 0, i32* %var_2_606, align 1
%var_2_1295 = load <2 x float>, <2 x float>* %var_2_1037, align 1
%var_2_1296 = extractelement <2 x float> %var_2_1295, i32 0
store float %var_2_1296, float* bitcast (%G_0x62bb84_type* @G_0x62bb84 to float*), align 8
%var_2_1297 = fpext float %var_2_1296 to double
; Matched:\<badref\>:  store double %var_2_517, double* %var_2_193, align 1, !tbaa !1287
; store double %var_2_1297, double* %var_2_226, align 1
%var_2_1298 = bitcast i64 %var_2_1273 to double
%var_2_1299 = fdiv double %var_2_1298, %var_2_1297
%.cast23 = bitcast double %var_2_1299 to <2 x i32>
%var_2_1300 = fptrunc double %var_2_1299 to float
store float %var_2_1300, float* %var_2_46, align 1
%var_2_1301 = extractelement <2 x i32> %.cast23, i32 1
store i32 %var_2_1301, i32* %var_2_281, align 1
store i32 0, i32* %var_2_283, align 1
store i32 0, i32* %var_2_285, align 1
%var_2_1302 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_1303 = extractelement <2 x float> %var_2_1302, i32 0
store float %var_2_1303, float* bitcast (%G_0x62bbc0_type* @G_0x62bbc0 to float*), align 8
%var_2_1304 = add i64 %var_2_1269, 99
; Matched:\<badref\>:  store i64 %var_2_524, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1304, i64* %var_2_3, align 8
  br label %block_.L_400d23

block_.L_400d0e:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit
%var_2_1305 = bitcast [32 x %union.VectorReg]* %var_2_40 to <4 x i32>*
store <4 x i32> zeroinitializer, <4 x i32>* %var_2_1305, align 1
%var_2_1306 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_1307 = extractelement <2 x float> %var_2_1306, i32 0
store float %var_2_1307, float* bitcast (%G_0x62bb84_type* @G_0x62bb84 to float*), align 8
%var_2_1308 = add i64 %var_2_1269, 21
; Matched:\<badref\>:  store i64 %var_2_2765, i64* %PC, align 8
; store i64 %var_2_1308, i64* %var_2_3, align 8
store float %var_2_1307, float* bitcast (%G_0x62bbc0_type* @G_0x62bbc0 to float*), align 8
  %.pre75 = load i64, i64* %RBP.i, align 8
  br label %block_.L_400d23

block_.L_400d23:                                  ; preds = %block_.L_400d0e, %block_400cc0
; Matched:%var_2_2520:  %var_2_2520 = phi i64 [ %.pre75, %block_400d0e ], [ %var_2_498, %block_400cc0 ]
; %var_2_1309 = phi i64 [ %.pre75, %block_.L_400d0e ], [ %var_2_1278, %block_400cc0 ]
%var_2_1310 = phi i64 [ %var_2_1308, %block_.L_400d0e ], [ %var_2_1304, %block_400cc0 ]
%.pre-phi = bitcast %union.VectorReg* %var_2_221 to <2 x i32>*
%.pre-phi91 = bitcast i64* %var_2_228 to <2 x i32>*
  store i64 0, i64* %RDI.i594, align 8
store i8 0, i8* %var_2_14, align 1
store i8 1, i8* %var_2_21, align 1
store i8 1, i8* %var_2_30, align 1
store i8 0, i8* %var_2_33, align 1
store i8 0, i8* %var_2_39, align 1
store i8 0, i8* %var_2_27, align 1
; Matched:%var_2_2522:  %var_2_2522 = add i64 %var_2_2520, -16
; %var_2_1311 = add i64 %var_2_1309, -16
; Matched:%var_2_2523:  %var_2_2523 = add i64 %var_2_2521, 7
; %var_2_1312 = add i64 %var_2_1310, 7
; Matched:\<badref\>:  store i64 %var_2_2523, i64* %PC, align 8
; store i64 %var_2_1312, i64* %var_2_3, align 8
; Matched:%var_2_2524:  %var_2_2524 = inttoptr i64 %var_2_2522 to i32*
; %var_2_1313 = inttoptr i64 %var_2_1311 to i32*
; Matched:%var_2_2525:  %var_2_2525 = load i32, i32* %var_2_2524, align 4
; %var_2_1314 = load i32, i32* %var_2_1313, align 4
; Matched:\<badref\>:  store i32 %var_2_2525, i32* %var_2_26, align 1, !tbaa !1265
; store i32 %var_2_1314, i32* %var_2_47, align 1
store float 0.000000e+00, float* %var_2_49, align 1
store float 0.000000e+00, float* %var_2_51, align 1
store float 0.000000e+00, float* %var_2_53, align 1
; Matched:%var_2_2526:  %var_2_2526 = add i64 %var_2_2520, -8
; %var_2_1315 = add i64 %var_2_1309, -8
; Matched:%var_2_2527:  %var_2_2527 = add i64 %var_2_2521, 12
; %var_2_1316 = add i64 %var_2_1310, 12
; Matched:\<badref\>:  store i64 %var_2_2527, i64* %PC, align 8
; store i64 %var_2_1316, i64* %var_2_3, align 8
%var_2_1317 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_1318 = load <2 x i32>, <2 x i32>* %var_2_257, align 1
; Matched:%var_2_2530:  %var_2_2530 = inttoptr i64 %var_2_2526 to float*
; %var_2_1319 = inttoptr i64 %var_2_1315 to float*
; Matched:%var_2_2531:  %var_2_2531 = load float, float* %var_2_2530, align 4
; %var_2_1320 = load float, float* %var_2_1319, align 4
%var_2_1321 = extractelement <2 x float> %var_2_1317, i32 0
; Matched:%var_2_2533:  %var_2_2533 = fdiv float %var_2_2532, %var_2_2531
; %var_2_1322 = fdiv float %var_2_1321, %var_2_1320
; Matched:\<badref\>:  store float %var_2_2533, float* %var_2_25, align 1, !tbaa !1265
; store float %var_2_1322, float* %var_2_46, align 1
%var_2_1323 = bitcast <2 x float> %var_2_1317 to <2 x i32>
%var_2_1324 = extractelement <2 x i32> %var_2_1323, i32 1
; Matched:\<badref\>:  store i32 %var_2_316, i32* %var_2_245, align 1, !tbaa !1265
; store i32 %var_2_1324, i32* %var_2_281, align 1
%var_2_1325 = extractelement <2 x i32> %var_2_1318, i32 0
; Matched:\<badref\>:  store i32 %var_2_2213, i32* %var_2_247, align 1, !tbaa !1265
; store i32 %var_2_1325, i32* %var_2_283, align 1
%var_2_1326 = extractelement <2 x i32> %var_2_1318, i32 1
; Matched:\<badref\>:  store i32 %var_2_318, i32* %var_2_249, align 1, !tbaa !1265
; store i32 %var_2_1326, i32* %var_2_285, align 1
%var_2_1327 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_1328 = extractelement <2 x float> %var_2_1327, i32 0
store float %var_2_1328, float* bitcast (%G_0x62bbfc_type* @G_0x62bbfc to float*), align 8
%var_2_1329 = add i64 %var_2_1310, 6989
; Matched:%var_2_2541:  %var_2_2541 = add i64 %var_2_2521, 26
; %var_2_1330 = add i64 %var_2_1310, 26
%var_2_1331 = load i64, i64* %var_2_6, align 8
%var_2_1332 = add i64 %var_2_1331, -8
; Matched:%var_2_2544:  %var_2_2544 = inttoptr i64 %var_2_2543 to i64*
; %var_2_1333 = inttoptr i64 %var_2_1332 to i64*
; Matched:\<badref\>:  store i64 %var_2_2541, i64* %var_2_2544, align 8
; store i64 %var_2_1330, i64* %var_2_1333, align 8
; Matched:\<badref\>:  store i64 %var_2_1837, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1332, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_2540, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1329, i64* %var_2_3, align 8
%call2_400d38 = tail call %struct.Memory* @sub_402870.print_time(%struct.State* nonnull %0, i64 %var_2_1329, %struct.Memory* %var_2_1259)
; Matched:%var_2_2546:  %var_2_2546 = load i64, i64* %PC, align 8
; %var_2_1334 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x40306f_type* @G__0x40306f to i64), i64* %RSI.i245, align 8
%var_2_1335 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
store i64 %var_2_1335, i64* %RDI.i594, align 8
; Matched:\<badref\>:  store i8 0, i8* %AL, align 1, !tbaa !1286
; store i8 0, i8* %AL.i1482, align 1
; Matched:%var_2_2548:  %var_2_2548 = add i64 %var_2_2546, -2125
; %var_2_1336 = add i64 %var_2_1334, -2125
; Matched:%var_2_2549:  %var_2_2549 = add i64 %var_2_2546, 25
; %var_2_1337 = add i64 %var_2_1334, 25
%var_2_1338 = load i64, i64* %var_2_6, align 8
%var_2_1339 = add i64 %var_2_1338, -8
; Matched:%var_2_2552:  %var_2_2552 = inttoptr i64 %var_2_2551 to i64*
; %var_2_1340 = inttoptr i64 %var_2_1339 to i64*
; Matched:\<badref\>:  store i64 %var_2_2549, i64* %var_2_2552, align 8
; store i64 %var_2_1337, i64* %var_2_1340, align 8
; Matched:\<badref\>:  store i64 %var_2_302, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1339, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_2548, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1336, i64* %var_2_3, align 8
%var_2_1341 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %call2_400d38)
%var_2_1342 = load i64, i64* %RBP.i, align 8
%var_2_1343 = add i64 %var_2_1342, -64
%var_2_1344 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2557:  %var_2_2557 = add i64 %var_2_2556, 7
; %var_2_1345 = add i64 %var_2_1344, 7
; Matched:\<badref\>:  store i64 %var_2_82, i64* %PC, align 8
; store i64 %var_2_1345, i64* %var_2_3, align 8
%var_2_1346 = inttoptr i64 %var_2_1343 to i32*
store i32 -3, i32* %var_2_1346, align 4
%var_2_1347 = load i64, i64* %RBP.i, align 8
%var_2_1348 = add i64 %var_2_1347, -68
%var_2_1349 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_65:  %var_2_65 = add i64 %var_2_64, 7
; %var_2_1350 = add i64 %var_2_1349, 7
; Matched:\<badref\>:  store i64 %var_2_2562, i64* %PC, align 8
; store i64 %var_2_1350, i64* %var_2_3, align 8
%var_2_1351 = inttoptr i64 %var_2_1348 to i32*
store i32 100, i32* %var_2_1351, align 4
; Matched:%var_2_2564:  %var_2_2564 = load i64, i64* %RBP, align 8
; %var_2_1352 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2565:  %var_2_2565 = add i64 %var_2_2564, -936
; %var_2_1353 = add i64 %var_2_1352, -936
; Matched:%var_2_2566:  %var_2_2566 = load i32, i32* %EAX, align 4
; %var_2_1354 = load i32, i32* %EAX.i1471, align 4
; Matched:%var_2_2567:  %var_2_2567 = load i64, i64* %PC, align 8
; %var_2_1355 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2568:  %var_2_2568 = add i64 %var_2_2567, 6
; %var_2_1356 = add i64 %var_2_1355, 6
; Matched:\<badref\>:  store i64 %var_2_2568, i64* %PC, align 8
; store i64 %var_2_1356, i64* %var_2_3, align 8
; Matched:%var_2_2569:  %var_2_2569 = inttoptr i64 %var_2_2565 to i32*
; %var_2_1357 = inttoptr i64 %var_2_1353 to i32*
; Matched:\<badref\>:  store i32 %var_2_2566, i32* %var_2_2569, align 4
; store i32 %var_2_1354, i32* %var_2_1357, align 4
; Matched:  %.pre76 = load i64, i64* %PC, align 8
; %.pre76 = load i64, i64* %var_2_3, align 8
%var_2_1358 = bitcast %union.VectorReg* %var_2_221 to <4 x i32>*
  br label %block_.L_400d6a

block_.L_400d6a:                                  ; preds = %block_.L_400e2d, %block_.L_400d23
; Matched:%var_2_1215:  %var_2_1215 = phi i64 [ %.pre76, %block_400d23 ], [ %var_2_2742, %block_400e2d ]
; %var_2_1359 = phi i64 [ %.pre76, %block_.L_400d23 ], [ %var_2_1597, %block_.L_400e2d ]
%MEMORY.6 = phi %struct.Memory* [ %var_2_1341, %block_.L_400d23 ], [ %var_2_1529, %block_.L_400e2d ]
; Matched:%var_2_1216:  %var_2_1216 = add i64 %var_2_1215, -1914
; %var_2_1360 = add i64 %var_2_1359, -1914
; Matched:%var_2_1217:  %var_2_1217 = add i64 %var_2_1215, 5
; %var_2_1361 = add i64 %var_2_1359, 5
%var_2_1362 = load i64, i64* %var_2_6, align 8
%var_2_1363 = add i64 %var_2_1362, -8
; Matched:%var_2_1220:  %var_2_1220 = inttoptr i64 %var_2_1219 to i64*
; %var_2_1364 = inttoptr i64 %var_2_1363 to i64*
; Matched:\<badref\>:  store i64 %var_2_1217, i64* %var_2_1220, align 8
; store i64 %var_2_1361, i64* %var_2_1364, align 8
; Matched:\<badref\>:  store i64 %var_2_164, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1363, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1216, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1360, i64* %var_2_3, align 8
; Matched:%var_2_1221:  %var_2_1221 = tail call %struct.Memory* @sub_4005f0_second_renamed_(%struct.State* nonnull %0, i64 %var_2_1216, %struct.Memory* %MEMORY.7)
; %call2_400d6a = tail call %struct.Memory* @sub_4005f0.second(%struct.State* nonnull %0, i64 %var_2_1360, %struct.Memory* %MEMORY.6)
; Matched:%var_2_1222:  %var_2_1222 = load i64, i64* %RBP, align 8
; %var_2_1365 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1223:  %var_2_1223 = add i64 %var_2_1222, -80
; %var_2_1366 = add i64 %var_2_1365, -80
%var_2_1367 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1721:  %var_2_1721 = add i64 %var_2_1720, 5
; %var_2_1368 = add i64 %var_2_1367, 5
; Matched:\<badref\>:  store i64 %var_2_1721, i64* %PC, align 8
; store i64 %var_2_1368, i64* %var_2_3, align 8
%var_2_1369 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_1370 = extractelement <2 x float> %var_2_1369, i32 0
; Matched:%var_2_1228:  %var_2_1228 = inttoptr i64 %var_2_1223 to float*
; %var_2_1371 = inttoptr i64 %var_2_1366 to float*
; Matched:\<badref\>:  store float %var_2_1227, float* %var_2_1228, align 4
; store float %var_2_1370, float* %var_2_1371, align 4
; Matched:%var_2_2072:  %var_2_2072 = load i64, i64* %RBP, align 8
; %var_2_1372 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2073:  %var_2_2073 = add i64 %var_2_2072, -64
; %var_2_1373 = add i64 %var_2_1372, -64
; Matched:%var_2_2074:  %var_2_2074 = load i64, i64* %PC, align 8
; %var_2_1374 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2075:  %var_2_2075 = add i64 %var_2_2074, 3
; %var_2_1375 = add i64 %var_2_1374, 3
; Matched:\<badref\>:  store i64 %var_2_1232, i64* %PC, align 8
; store i64 %var_2_1375, i64* %var_2_3, align 8
; Matched:%var_2_2076:  %var_2_2076 = inttoptr i64 %var_2_2073 to i32*
; %var_2_1376 = inttoptr i64 %var_2_1373 to i32*
; Matched:%var_2_2077:  %var_2_2077 = load i32, i32* %var_2_2076, align 4
; %var_2_1377 = load i32, i32* %var_2_1376, align 4
; Matched:%var_2_1235:  %var_2_1235 = add i32 %var_2_1234, 1
; %var_2_1378 = add i32 %var_2_1377, 1
; Matched:%var_2_1236:  %var_2_1236 = zext i32 %var_2_1235 to i64
; %var_2_1379 = zext i32 %var_2_1378 to i64
; Matched:\<badref\>:  store i64 %var_2_1236, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1379, i64* %RAX.i271, align 8
; Matched:%var_2_2080:  %var_2_2080 = icmp eq i32 %var_2_2077, -1
; %var_2_1380 = icmp eq i32 %var_2_1377, -1
; Matched:%var_2_2081:  %var_2_2081 = icmp eq i32 %var_2_2078, 0
; %var_2_1381 = icmp eq i32 %var_2_1378, 0
; Matched:%var_2_1239:  %var_2_1239 = or i1 %var_2_1237, %var_2_1238
; %var_2_1382 = or i1 %var_2_1380, %var_2_1381
; Matched:%var_2_1240:  %var_2_1240 = zext i1 %var_2_1239 to i8
; %var_2_1383 = zext i1 %var_2_1382 to i8
; Matched:\<badref\>:  store i8 %var_2_1240, i8* %var_2_17, align 1, !tbaa !1267
; store i8 %var_2_1383, i8* %var_2_14, align 1
; Matched:%var_2_1241:  %var_2_1241 = and i32 %var_2_1235, 255
; %var_2_1384 = and i32 %var_2_1378, 255
; Matched:%var_2_1242:  %var_2_1242 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1241) #12
; %var_2_1385 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1384)
; Matched:%var_2_1243:  %var_2_1243 = trunc i32 %var_2_1242 to i8
; %var_2_1386 = trunc i32 %var_2_1385 to i8
; Matched:%var_2_2087:  %var_2_2087 = and i8 %var_2_2086, 1
; %var_2_1387 = and i8 %var_2_1386, 1
; Matched:%var_2_2088:  %var_2_2088 = xor i8 %var_2_2087, 1
; %var_2_1388 = xor i8 %var_2_1387, 1
; Matched:\<badref\>:  store i8 %var_2_1245, i8* %var_2_18, align 1, !tbaa !1281
; store i8 %var_2_1388, i8* %var_2_21, align 1
; Matched:%var_2_1246:  %var_2_1246 = xor i32 %var_2_1235, %var_2_1234
; %var_2_1389 = xor i32 %var_2_1378, %var_2_1377
; Matched:%var_2_1247:  %var_2_1247 = lshr i32 %var_2_1246, 4
; %var_2_1390 = lshr i32 %var_2_1389, 4
; Matched:%var_2_1248:  %var_2_1248 = trunc i32 %var_2_1247 to i8
; %var_2_1391 = trunc i32 %var_2_1390 to i8
; Matched:%var_2_1249:  %var_2_1249 = and i8 %var_2_1248, 1
; %var_2_1392 = and i8 %var_2_1391, 1
; Matched:\<badref\>:  store i8 %var_2_1249, i8* %var_2_19, align 1, !tbaa !1285
; store i8 %var_2_1392, i8* %var_2_27, align 1
; Matched:%var_2_2093:  %var_2_2093 = zext i1 %var_2_2081 to i8
; %var_2_1393 = zext i1 %var_2_1381 to i8
; Matched:\<badref\>:  store i8 %var_2_2093, i8* %var_2_20, align 1, !tbaa !1282
; store i8 %var_2_1393, i8* %var_2_30, align 1
; Matched:%var_2_1251:  %var_2_1251 = lshr i32 %var_2_1235, 31
; %var_2_1394 = lshr i32 %var_2_1378, 31
; Matched:%var_2_1252:  %var_2_1252 = trunc i32 %var_2_1251 to i8
; %var_2_1395 = trunc i32 %var_2_1394 to i8
; Matched:\<badref\>:  store i8 %var_2_1252, i8* %var_2_21, align 1, !tbaa !1283
; store i8 %var_2_1395, i8* %var_2_33, align 1
; Matched:%var_2_2096:  %var_2_2096 = lshr i32 %var_2_2077, 31
; %var_2_1396 = lshr i32 %var_2_1377, 31
; Matched:%var_2_2097:  %var_2_2097 = xor i32 %var_2_2094, %var_2_2096
; %var_2_1397 = xor i32 %var_2_1394, %var_2_1396
; Matched:%var_2_2098:  %var_2_2098 = add nuw nsw i32 %var_2_2097, %var_2_2094
; %var_2_1398 = add nuw nsw i32 %var_2_1397, %var_2_1394
; Matched:%var_2_1256:  %var_2_1256 = icmp eq i32 %var_2_1255, 2
; %var_2_1399 = icmp eq i32 %var_2_1398, 2
; Matched:%var_2_1257:  %var_2_1257 = zext i1 %var_2_1256 to i8
; %var_2_1400 = zext i1 %var_2_1399 to i8
; Matched:\<badref\>:  store i8 %var_2_2100, i8* %var_2_22, align 1, !tbaa !1284
; store i8 %var_2_1400, i8* %var_2_39, align 1
; Matched:%var_2_1258:  %var_2_1258 = add i64 %var_2_1231, 9
; %var_2_1401 = add i64 %var_2_1374, 9
; Matched:\<badref\>:  store i64 %var_2_1258, i64* %PC, align 8
; store i64 %var_2_1401, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_1235, i32* %var_2_1233, align 4
; store i32 %var_2_1378, i32* %var_2_1376, align 4
%var_2_1402 = load i64, i64* %var_2_3, align 8
%var_2_1403 = add i64 %var_2_1402, 11
; Matched:\<badref\>:  store i64 %var_2_2629, i64* %PC, align 8
; store i64 %var_2_1403, i64* %var_2_3, align 8
  store i32 0, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  br label %block_.L_400d88

block_.L_400d88:                                  ; preds = %block_400d98, %block_.L_400d6a
%var_2_1404 = phi i32 [ %var_2_1451, %block_400d98 ], [ 0, %block_.L_400d6a ]
; Matched:%var_2_838:  %var_2_838 = phi i64 [ %var_2_3039, %block_401379 ], [ %var_2_464, %block_4012f1 ]
; %var_2_1405 = phi i64 [ %var_2_1474, %block_400d98 ], [ %var_2_1403, %block_.L_400d6a ]
; Matched:%var_2_566:  %var_2_566 = zext i32 %var_2_564 to i64
; %var_2_1406 = zext i32 %var_2_1404 to i64
; Matched:\<badref\>:  store i64 %var_2_467, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1406, i64* %RAX.i271, align 8
%var_2_1407 = load i64, i64* %RBP.i, align 8
%var_2_1408 = add i64 %var_2_1407, -68
; Matched:%var_2_2937:  %var_2_2937 = add i64 %var_2_2933, 10
; %var_2_1409 = add i64 %var_2_1405, 10
; Matched:\<badref\>:  store i64 %var_2_2937, i64* %PC, align 8
; store i64 %var_2_1409, i64* %var_2_3, align 8
%var_2_1410 = inttoptr i64 %var_2_1408 to i32*
%var_2_1411 = load i32, i32* %var_2_1410, align 4
%var_2_1412 = sub i32 %var_2_1404, %var_2_1411
; Matched:%var_2_2941:  %var_2_2941 = icmp ult i32 %var_2_2932, %var_2_2939
; %var_2_1413 = icmp ult i32 %var_2_1404, %var_2_1411
; Matched:%var_2_2942:  %var_2_2942 = zext i1 %var_2_2941 to i8
; %var_2_1414 = zext i1 %var_2_1413 to i8
; Matched:\<badref\>:  store i8 %var_2_2942, i8* %var_2_17, align 1, !tbaa !1267
; store i8 %var_2_1414, i8* %var_2_14, align 1
; Matched:%var_2_2943:  %var_2_2943 = and i32 %var_2_2940, 255
; %var_2_1415 = and i32 %var_2_1412, 255
; Matched:%var_2_2944:  %var_2_2944 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2943) #12
; %var_2_1416 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1415)
; Matched:%var_2_850:  %var_2_850 = trunc i32 %var_2_849 to i8
; %var_2_1417 = trunc i32 %var_2_1416 to i8
; Matched:%var_2_851:  %var_2_851 = and i8 %var_2_850, 1
; %var_2_1418 = and i8 %var_2_1417, 1
; Matched:%var_2_852:  %var_2_852 = xor i8 %var_2_851, 1
; %var_2_1419 = xor i8 %var_2_1418, 1
; Matched:\<badref\>:  store i8 %var_2_2947, i8* %var_2_18, align 1, !tbaa !1281
; store i8 %var_2_1419, i8* %var_2_21, align 1
; Matched:%var_2_2948:  %var_2_2948 = xor i32 %var_2_2939, %var_2_2932
; %var_2_1420 = xor i32 %var_2_1411, %var_2_1404
; Matched:%var_2_2949:  %var_2_2949 = xor i32 %var_2_2948, %var_2_2940
; %var_2_1421 = xor i32 %var_2_1420, %var_2_1412
; Matched:%var_2_2950:  %var_2_2950 = lshr i32 %var_2_2949, 4
; %var_2_1422 = lshr i32 %var_2_1421, 4
; Matched:%var_2_2951:  %var_2_2951 = trunc i32 %var_2_2950 to i8
; %var_2_1423 = trunc i32 %var_2_1422 to i8
; Matched:%var_2_857:  %var_2_857 = and i8 %var_2_856, 1
; %var_2_1424 = and i8 %var_2_1423, 1
; Matched:\<badref\>:  store i8 %var_2_857, i8* %var_2_19, align 1, !tbaa !1285
; store i8 %var_2_1424, i8* %var_2_27, align 1
; Matched:%var_2_858:  %var_2_858 = icmp eq i32 %var_2_845, 0
; %var_2_1425 = icmp eq i32 %var_2_1412, 0
; Matched:%var_2_2954:  %var_2_2954 = zext i1 %var_2_2953 to i8
; %var_2_1426 = zext i1 %var_2_1425 to i8
; Matched:\<badref\>:  store i8 %var_2_2954, i8* %var_2_20, align 1, !tbaa !1282
; store i8 %var_2_1426, i8* %var_2_30, align 1
%var_2_1427 = lshr i32 %var_2_1412, 31
%var_2_1428 = trunc i32 %var_2_1427 to i8
; Matched:\<badref\>:  store i8 %var_2_2956, i8* %var_2_21, align 1, !tbaa !1283
; store i8 %var_2_1428, i8* %var_2_33, align 1
%var_2_1429 = lshr i32 %var_2_1404, 31
%var_2_1430 = lshr i32 %var_2_1411, 31
%var_2_1431 = xor i32 %var_2_1430, %var_2_1429
%var_2_1432 = xor i32 %var_2_1427, %var_2_1429
%var_2_1433 = add nuw nsw i32 %var_2_1432, %var_2_1431
%var_2_1434 = icmp eq i32 %var_2_1433, 2
; Matched:%var_2_2963:  %var_2_2963 = zext i1 %var_2_2962 to i8
; %var_2_1435 = zext i1 %var_2_1434 to i8
; Matched:\<badref\>:  store i8 %var_2_2963, i8* %var_2_22, align 1, !tbaa !1284
; store i8 %var_2_1435, i8* %var_2_39, align 1
%var_2_1436 = icmp ne i8 %var_2_1428, 0
%var_2_1437 = xor i1 %var_2_1436, %var_2_1434
; Matched:  %.v99 = select i1 %var_2_870, i64 16, i64 81
; %.v95 = select i1 %var_2_1437, i64 16, i64 81
; Matched:%var_2_2966:  %var_2_2966 = add i64 %var_2_2933, %.v96
; %var_2_1438 = add i64 %var_2_1405, %.v95
; Matched:\<badref\>:  store i64 %var_2_2966, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1438, i64* %var_2_3, align 8
br i1 %var_2_1437, label %block_400d98, label %block_.L_400dd9

block_400d98:                                     ; preds = %block_.L_400d88
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %RDI.i594, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %RCX.i347, align 8
; Matched:%var_2_3003:  %var_2_3003 = add i64 %var_2_840, -20
; %var_2_1439 = add i64 %var_2_1407, -20
; Matched:\<badref\>:  store i64 %var_2_2618, i64* %R8, align 8, !tbaa !1261
; store i64 %var_2_1439, i64* %var_2_57, align 8
%var_2_1440 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
%var_2_1441 = zext i32 %var_2_1440 to i64
store i64 %var_2_1441, i64* %RSI.i245, align 8
%var_2_1442 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
%var_2_1443 = zext i32 %var_2_1442 to i64
store i64 %var_2_1443, i64* %RDX.i359, align 8
; Matched:%var_2_2637:  %var_2_2637 = add i64 %var_2_2966, 2504
; %var_2_1444 = add i64 %var_2_1438, 2504
; Matched:%var_2_2638:  %var_2_2638 = add i64 %var_2_2966, 43
; %var_2_1445 = add i64 %var_2_1438, 43
%var_2_1446 = load i64, i64* %var_2_6, align 8
%var_2_1447 = add i64 %var_2_1446, -8
; Matched:%var_2_2641:  %var_2_2641 = inttoptr i64 %var_2_2640 to i64*
; %var_2_1448 = inttoptr i64 %var_2_1447 to i64*
; Matched:\<badref\>:  store i64 %var_2_3009, i64* %var_2_3012, align 8
; store i64 %var_2_1445, i64* %var_2_1448, align 8
; Matched:\<badref\>:  store i64 %var_2_1715, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1447, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_2637, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1444, i64* %var_2_3, align 8
; Matched:%var_2_2642:  %var_2_2642 = tail call %struct.Memory* @sub_401760_matgen_renamed_(%struct.State* nonnull %0, i64 %var_2_2637, %struct.Memory* %MEMORY.7)
; %call2_400dbe = tail call %struct.Memory* @sub_401760.matgen(%struct.State* nonnull %0, i64 %var_2_1444, %struct.Memory* %MEMORY.6)
; Matched:%var_2_3014:  %var_2_3014 = load i64, i64* %PC, align 8
; %var_2_1449 = load i64, i64* %var_2_3, align 8
%var_2_1450 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
%var_2_1451 = add i32 %var_2_1450, 1
%var_2_1452 = zext i32 %var_2_1451 to i64
store i64 %var_2_1452, i64* %RAX.i271, align 8
%var_2_1453 = icmp eq i32 %var_2_1450, -1
%var_2_1454 = icmp eq i32 %var_2_1451, 0
%var_2_1455 = or i1 %var_2_1453, %var_2_1454
%var_2_1456 = zext i1 %var_2_1455 to i8
store i8 %var_2_1456, i8* %var_2_14, align 1
%var_2_1457 = and i32 %var_2_1451, 255
%var_2_1458 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1457)
%var_2_1459 = trunc i32 %var_2_1458 to i8
%var_2_1460 = and i8 %var_2_1459, 1
%var_2_1461 = xor i8 %var_2_1460, 1
store i8 %var_2_1461, i8* %var_2_21, align 1
%var_2_1462 = xor i32 %var_2_1451, %var_2_1450
%var_2_1463 = lshr i32 %var_2_1462, 4
%var_2_1464 = trunc i32 %var_2_1463 to i8
%var_2_1465 = and i8 %var_2_1464, 1
store i8 %var_2_1465, i8* %var_2_27, align 1
%var_2_1466 = zext i1 %var_2_1454 to i8
store i8 %var_2_1466, i8* %var_2_30, align 1
%var_2_1467 = lshr i32 %var_2_1451, 31
%var_2_1468 = trunc i32 %var_2_1467 to i8
store i8 %var_2_1468, i8* %var_2_33, align 1
%var_2_1469 = lshr i32 %var_2_1450, 31
%var_2_1470 = xor i32 %var_2_1467, %var_2_1469
%var_2_1471 = add nuw nsw i32 %var_2_1470, %var_2_1467
%var_2_1472 = icmp eq i32 %var_2_1471, 2
%var_2_1473 = zext i1 %var_2_1472 to i8
store i8 %var_2_1473, i8* %var_2_39, align 1
store i32 %var_2_1451, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
; Matched:%var_2_3039:  %var_2_3039 = add i64 %var_2_3014, -59
; %var_2_1474 = add i64 %var_2_1449, -59
; Matched:\<badref\>:  store i64 %var_2_3039, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1474, i64* %var_2_3, align 8
  br label %block_.L_400d88

block_.L_400dd9:                                  ; preds = %block_.L_400d88
; Matched:%var_2_932:  %var_2_932 = add i64 %var_2_2966, -2025
; %var_2_1475 = add i64 %var_2_1438, -2025
; Matched:%var_2_1728:  %var_2_1728 = add i64 %var_2_871, 5
; %var_2_1476 = add i64 %var_2_1438, 5
%var_2_1477 = load i64, i64* %var_2_6, align 8
%var_2_1478 = add i64 %var_2_1477, -8
; Matched:%var_2_1731:  %var_2_1731 = inttoptr i64 %var_2_1730 to i64*
; %var_2_1479 = inttoptr i64 %var_2_1478 to i64*
; Matched:\<badref\>:  store i64 %var_2_1728, i64* %var_2_1731, align 8
; store i64 %var_2_1476, i64* %var_2_1479, align 8
; Matched:\<badref\>:  store i64 %var_2_2640, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1478, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_932, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1475, i64* %var_2_3, align 8
; Matched:%var_2_937:  %var_2_937 = tail call %struct.Memory* @sub_4005f0_second_renamed_(%struct.State* nonnull %0, i64 %var_2_932, %struct.Memory* %MEMORY.7)
; %call2_400dd9 = tail call %struct.Memory* @sub_4005f0.second(%struct.State* nonnull %0, i64 %var_2_1475, %struct.Memory* %MEMORY.6)
%var_2_1480 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x40308d_type* @G__0x40308d to i64), i64* %RSI.i245, align 8
store <4 x i32> zeroinitializer, <4 x i32>* %var_2_1358, align 1
%var_2_1481 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1491:  %var_2_1491 = add i64 %var_2_1481, -84
; %var_2_1482 = add i64 %var_2_1481, -84
%var_2_1483 = add i64 %var_2_1480, 18
store i64 %var_2_1483, i64* %var_2_3, align 8
%var_2_1484 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_1485 = extractelement <2 x float> %var_2_1484, i32 0
; Matched:%var_2_944:  %var_2_944 = inttoptr i64 %var_2_940 to float*
; %var_2_1486 = inttoptr i64 %var_2_1482 to float*
; Matched:\<badref\>:  store float %var_2_943, float* %var_2_944, align 4
; store float %var_2_1485, float* %var_2_1486, align 4
%var_2_1487 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1742:  %var_2_1742 = add i64 %var_2_1741, -84
; %var_2_1488 = add i64 %var_2_1487, -84
%var_2_1489 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_3049:  %var_2_3049 = add i64 %var_2_3048, 5
; %var_2_1490 = add i64 %var_2_1489, 5
; Matched:\<badref\>:  store i64 %var_2_355, i64* %PC, align 8
; store i64 %var_2_1490, i64* %var_2_3, align 8
; Matched:%var_2_1745:  %var_2_1745 = inttoptr i64 %var_2_1742 to i32*
; %var_2_1491 = inttoptr i64 %var_2_1488 to i32*
; Matched:%var_2_950:  %var_2_950 = load i32, i32* %var_2_949, align 4
; %var_2_1492 = load i32, i32* %var_2_1491, align 4
; Matched:\<badref\>:  store i32 %var_2_950, i32* %var_2_26, align 1, !tbaa !1265
; store i32 %var_2_1492, i32* %var_2_47, align 1
store float 0.000000e+00, float* %var_2_49, align 1
store float 0.000000e+00, float* %var_2_51, align 1
store float 0.000000e+00, float* %var_2_53, align 1
; Matched:%var_2_951:  %var_2_951 = add i64 %var_2_945, -80
; %var_2_1493 = add i64 %var_2_1487, -80
; Matched:%var_2_2512:  %var_2_2512 = add i64 %var_2_2487, 10
; %var_2_1494 = add i64 %var_2_1489, 10
; Matched:\<badref\>:  store i64 %var_2_1561, i64* %PC, align 8
; store i64 %var_2_1494, i64* %var_2_3, align 8
%var_2_1495 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_1496 = load <2 x i32>, <2 x i32>* %var_2_257, align 1
; Matched:%var_2_1751:  %var_2_1751 = inttoptr i64 %var_2_1747 to float*
; %var_2_1497 = inttoptr i64 %var_2_1493 to float*
; Matched:%var_2_1752:  %var_2_1752 = load float, float* %var_2_1751, align 4
; %var_2_1498 = load float, float* %var_2_1497, align 4
%var_2_1499 = extractelement <2 x float> %var_2_1495, i32 0
; Matched:%var_2_958:  %var_2_958 = fsub float %var_2_957, %var_2_956
; %var_2_1500 = fsub float %var_2_1499, %var_2_1498
; Matched:\<badref\>:  store float %var_2_958, float* %var_2_25, align 1, !tbaa !1265
; store float %var_2_1500, float* %var_2_46, align 1
%var_2_1501 = bitcast <2 x float> %var_2_1495 to <2 x i32>
%var_2_1502 = extractelement <2 x i32> %var_2_1501, i32 1
; Matched:\<badref\>:  store i32 %var_2_362, i32* %var_2_245, align 1, !tbaa !1265
; store i32 %var_2_1502, i32* %var_2_281, align 1
%var_2_1503 = extractelement <2 x i32> %var_2_1496, i32 0
; Matched:\<badref\>:  store i32 %var_2_3058, i32* %var_2_247, align 1, !tbaa !1265
; store i32 %var_2_1503, i32* %var_2_283, align 1
%var_2_1504 = extractelement <2 x i32> %var_2_1496, i32 1
; Matched:\<badref\>:  store i32 %var_2_662, i32* %var_2_249, align 1, !tbaa !1265
; store i32 %var_2_1504, i32* %var_2_285, align 1
; Matched:%var_2_963:  %var_2_963 = add i64 %var_2_945, -72
; %var_2_1505 = add i64 %var_2_1487, -72
; Matched:%var_2_1760:  %var_2_1760 = add i64 %var_2_1743, 15
; %var_2_1506 = add i64 %var_2_1489, 15
; Matched:\<badref\>:  store i64 %var_2_964, i64* %PC, align 8
; store i64 %var_2_1506, i64* %var_2_3, align 8
%var_2_1507 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_1508 = extractelement <2 x float> %var_2_1507, i32 0
; Matched:%var_2_967:  %var_2_967 = inttoptr i64 %var_2_963 to float*
; %var_2_1509 = inttoptr i64 %var_2_1505 to float*
; Matched:\<badref\>:  store float %var_2_966, float* %var_2_967, align 4
; store float %var_2_1508, float* %var_2_1509, align 4
%var_2_1510 = load i64, i64* %var_2_3, align 8
%var_2_1511 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
store i64 %var_2_1511, i64* %RDI.i594, align 8
; Matched:%var_2_970:  %var_2_970 = load i64, i64* %RBP, align 8
; %var_2_1512 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_971:  %var_2_971 = add i64 %var_2_970, -68
; %var_2_1513 = add i64 %var_2_1512, -68
%var_2_1514 = add i64 %var_2_1510, 11
; Matched:\<badref\>:  store i64 %var_2_464, i64* %PC, align 8
; store i64 %var_2_1514, i64* %var_2_3, align 8
; Matched:%var_2_973:  %var_2_973 = inttoptr i64 %var_2_971 to i32*
; %var_2_1515 = inttoptr i64 %var_2_1513 to i32*
; Matched:%var_2_974:  %var_2_974 = load i32, i32* %var_2_973, align 4
; %var_2_1516 = load i32, i32* %var_2_1515, align 4
; Matched:%var_2_975:  %var_2_975 = zext i32 %var_2_974 to i64
; %var_2_1517 = zext i32 %var_2_1516 to i64
; Matched:\<badref\>:  store i64 %var_2_975, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1517, i64* %RDX.i359, align 8
%var_2_1518 = load <2 x i32>, <2 x i32>* %.pre-phi, align 1
%var_2_1519 = load <2 x i32>, <2 x i32>* %.pre-phi91, align 1
%var_2_1520 = extractelement <2 x i32> %var_2_1518, i32 0
; Matched:\<badref\>:  store i32 %var_2_978, i32* %var_2_26, align 1, !tbaa !1265
; store i32 %var_2_1520, i32* %var_2_47, align 1
%var_2_1521 = extractelement <2 x i32> %var_2_1518, i32 1
; Matched:\<badref\>:  store i32 %var_2_979, i32* %var_2_245, align 1, !tbaa !1265
; store i32 %var_2_1521, i32* %var_2_281, align 1
%var_2_1522 = extractelement <2 x i32> %var_2_1519, i32 0
; Matched:\<badref\>:  store i32 %var_2_1788, i32* %var_2_247, align 1, !tbaa !1265
; store i32 %var_2_1522, i32* %var_2_283, align 1
%var_2_1523 = extractelement <2 x i32> %var_2_1519, i32 1
; Matched:\<badref\>:  store i32 %var_2_981, i32* %var_2_249, align 1, !tbaa !1265
; store i32 %var_2_1523, i32* %var_2_285, align 1
; Matched:\<badref\>:  store i8 0, i8* %AL, align 1, !tbaa !1286
; store i8 1, i8* %AL.i1482, align 1
; Matched:%var_2_982:  %var_2_982 = add i64 %var_2_968, -2319
; %var_2_1524 = add i64 %var_2_1510, -2319
; Matched:%var_2_983:  %var_2_983 = add i64 %var_2_968, 21
; %var_2_1525 = add i64 %var_2_1510, 21
%var_2_1526 = load i64, i64* %var_2_6, align 8
%var_2_1527 = add i64 %var_2_1526, -8
; Matched:%var_2_986:  %var_2_986 = inttoptr i64 %var_2_985 to i64*
; %var_2_1528 = inttoptr i64 %var_2_1527 to i64*
; Matched:\<badref\>:  store i64 %var_2_983, i64* %var_2_986, align 8
; store i64 %var_2_1525, i64* %var_2_1528, align 8
; Matched:\<badref\>:  store i64 %var_2_2551, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1527, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_982, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1524, i64* %var_2_3, align 8
%var_2_1529 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.6)
%var_2_1530 = load i64, i64* %RBP.i, align 8
%var_2_1531 = add i64 %var_2_1530, -64
%var_2_1532 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1515:  %var_2_1515 = add i64 %var_2_1514, 4
; %var_2_1533 = add i64 %var_2_1532, 4
; Matched:\<badref\>:  store i64 %var_2_991, i64* %PC, align 8
; store i64 %var_2_1533, i64* %var_2_3, align 8
%var_2_1534 = inttoptr i64 %var_2_1531 to i32*
%var_2_1535 = load i32, i32* %var_2_1534, align 4
store i8 0, i8* %var_2_14, align 1
; Matched:%var_2_994:  %var_2_994 = and i32 %var_2_993, 255
; %var_2_1536 = and i32 %var_2_1535, 255
; Matched:%var_2_1519:  %var_2_1519 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1518) #12
; %var_2_1537 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1536)
; Matched:%var_2_2734:  %var_2_2734 = trunc i32 %var_2_2733 to i8
; %var_2_1538 = trunc i32 %var_2_1537 to i8
; Matched:%var_2_1521:  %var_2_1521 = and i8 %var_2_1520, 1
; %var_2_1539 = and i8 %var_2_1538, 1
; Matched:%var_2_998:  %var_2_998 = xor i8 %var_2_997, 1
; %var_2_1540 = xor i8 %var_2_1539, 1
; Matched:\<badref\>:  store i8 %var_2_998, i8* %var_2_18, align 1, !tbaa !1281
; store i8 %var_2_1540, i8* %var_2_21, align 1
store i8 0, i8* %var_2_27, align 1
; Matched:%var_2_999:  %var_2_999 = icmp eq i32 %var_2_993, 0
; %var_2_1541 = icmp eq i32 %var_2_1535, 0
; Matched:%var_2_1000:  %var_2_1000 = zext i1 %var_2_999 to i8
; %var_2_1542 = zext i1 %var_2_1541 to i8
; Matched:\<badref\>:  store i8 %var_2_1524, i8* %var_2_20, align 1, !tbaa !1282
; store i8 %var_2_1542, i8* %var_2_30, align 1
%var_2_1543 = lshr i32 %var_2_1535, 31
%var_2_1544 = trunc i32 %var_2_1543 to i8
; Matched:\<badref\>:  store i8 %var_2_1002, i8* %var_2_21, align 1, !tbaa !1283
; store i8 %var_2_1544, i8* %var_2_33, align 1
store i8 0, i8* %var_2_39, align 1
; Matched:%var_2_1003:  %var_2_1003 = add i64 %var_2_988, -940
; %var_2_1545 = add i64 %var_2_1530, -940
; Matched:%var_2_1004:  %var_2_1004 = load i32, i32* %EAX, align 4
; %var_2_1546 = load i32, i32* %EAX.i1471, align 4
; Matched:%var_2_3061:  %var_2_3061 = add i64 %var_2_3048, 10
; %var_2_1547 = add i64 %var_2_1532, 10
; Matched:\<badref\>:  store i64 %var_2_1748, i64* %PC, align 8
; store i64 %var_2_1547, i64* %var_2_3, align 8
; Matched:%var_2_1006:  %var_2_1006 = inttoptr i64 %var_2_1003 to i32*
; %var_2_1548 = inttoptr i64 %var_2_1545 to i32*
; Matched:\<badref\>:  store i32 %var_2_1004, i32* %var_2_1006, align 4
; store i32 %var_2_1546, i32* %var_2_1548, align 4
%var_2_1549 = load i64, i64* %var_2_3, align 8
%var_2_1550 = add i64 %var_2_1549, 15
%var_2_1551 = add i64 %var_2_1549, 6
%var_2_1552 = load i8, i8* %var_2_33, align 1
%var_2_1553 = icmp ne i8 %var_2_1552, 0
%var_2_1554 = load i8, i8* %var_2_39, align 1
%var_2_1555 = icmp ne i8 %var_2_1554, 0
%var_2_1556 = xor i1 %var_2_1553, %var_2_1555
%var_2_1557 = select i1 %var_2_1556, i64 %var_2_1551, i64 %var_2_1550
; Matched:\<badref\>:  store i64 %var_2_1015, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1557, i64* %var_2_3, align 8
br i1 %var_2_1556, label %block_400e24, label %block_.L_400e2d

block_400e24:                                     ; preds = %block_.L_400dd9
; Matched:%var_2_2439:  %var_2_2439 = load i64, i64* %RBP, align 8
; %var_2_1558 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2440:  %var_2_2440 = add i64 %var_2_2439, -68
; %var_2_1559 = add i64 %var_2_1558, -68
; Matched:%var_2_2441:  %var_2_2441 = add i64 %var_2_1015, 3
; %var_2_1560 = add i64 %var_2_1557, 3
; Matched:\<badref\>:  store i64 %var_2_2441, i64* %PC, align 8
; store i64 %var_2_1560, i64* %var_2_3, align 8
; Matched:%var_2_2442:  %var_2_2442 = inttoptr i64 %var_2_2440 to i32*
; %var_2_1561 = inttoptr i64 %var_2_1559 to i32*
; Matched:%var_2_2443:  %var_2_2443 = load i32, i32* %var_2_2442, align 4
; %var_2_1562 = load i32, i32* %var_2_1561, align 4
; Matched:%var_2_2444:  %var_2_2444 = shl i32 %var_2_2443, 1
; %var_2_1563 = shl i32 %var_2_1562, 1
; Matched:%var_2_2445:  %var_2_2445 = icmp slt i32 %var_2_2443, 0
; %var_2_1564 = icmp slt i32 %var_2_1562, 0
; Matched:%var_2_2446:  %var_2_2446 = icmp slt i32 %var_2_2444, 0
; %var_2_1565 = icmp slt i32 %var_2_1563, 0
; Matched:%var_2_2447:  %var_2_2447 = xor i1 %var_2_2445, %var_2_2446
; %var_2_1566 = xor i1 %var_2_1564, %var_2_1565
; Matched:%var_2_2448:  %var_2_2448 = zext i32 %var_2_2444 to i64
; %var_2_1567 = zext i32 %var_2_1563 to i64
; Matched:\<badref\>:  store i64 %var_2_2448, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1567, i64* %RAX.i271, align 8
; Matched:  %.lobit = lshr i32 %var_2_2443, 31
; %.lobit = lshr i32 %var_2_1562, 31
; Matched:%var_2_2449:  %var_2_2449 = trunc i32 %.lobit to i8
; %var_2_1568 = trunc i32 %.lobit to i8
; Matched:\<badref\>:  store i8 %var_2_2449, i8* %var_2_17, align 1, !tbaa !1286
; store i8 %var_2_1568, i8* %var_2_14, align 1
; Matched:%var_2_2450:  %var_2_2450 = and i32 %var_2_2444, 254
; %var_2_1569 = and i32 %var_2_1563, 254
; Matched:%var_2_2451:  %var_2_2451 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2450) #12
; %var_2_1570 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1569)
; Matched:%var_2_2452:  %var_2_2452 = trunc i32 %var_2_2451 to i8
; %var_2_1571 = trunc i32 %var_2_1570 to i8
; Matched:%var_2_2453:  %var_2_2453 = and i8 %var_2_2452, 1
; %var_2_1572 = and i8 %var_2_1571, 1
; Matched:%var_2_2454:  %var_2_2454 = xor i8 %var_2_2453, 1
; %var_2_1573 = xor i8 %var_2_1572, 1
; Matched:\<badref\>:  store i8 %var_2_2454, i8* %var_2_18, align 1, !tbaa !1286
; store i8 %var_2_1573, i8* %var_2_21, align 1
store i8 0, i8* %var_2_27, align 1
; Matched:%var_2_2455:  %var_2_2455 = icmp eq i32 %var_2_2444, 0
; %var_2_1574 = icmp eq i32 %var_2_1563, 0
; Matched:%var_2_2456:  %var_2_2456 = zext i1 %var_2_2455 to i8
; %var_2_1575 = zext i1 %var_2_1574 to i8
; Matched:\<badref\>:  store i8 %var_2_2456, i8* %var_2_20, align 1, !tbaa !1286
; store i8 %var_2_1575, i8* %var_2_30, align 1
; Matched:%var_2_2457:  %var_2_2457 = lshr i32 %var_2_2443, 30
; %var_2_1576 = lshr i32 %var_2_1562, 30
; Matched:%var_2_2458:  %var_2_2458 = trunc i32 %var_2_2457 to i8
; %var_2_1577 = trunc i32 %var_2_1576 to i8
; Matched:%var_2_2459:  %var_2_2459 = and i8 %var_2_2458, 1
; %var_2_1578 = and i8 %var_2_1577, 1
; Matched:\<badref\>:  store i8 %var_2_2459, i8* %var_2_21, align 1, !tbaa !1286
; store i8 %var_2_1578, i8* %var_2_33, align 1
; Matched:%var_2_2460:  %var_2_2460 = zext i1 %var_2_2447 to i8
; %var_2_1579 = zext i1 %var_2_1566 to i8
; Matched:\<badref\>:  store i8 %var_2_2460, i8* %var_2_22, align 1, !tbaa !1286
; store i8 %var_2_1579, i8* %var_2_39, align 1
%var_2_1580 = add i64 %var_2_1557, 8
store i64 %var_2_1580, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_2444, i32* %var_2_2442, align 4
; store i32 %var_2_1563, i32* %var_2_1561, align 4
; Matched:  %.pre77 = load i64, i64* %PC, align 8
; %.pre77 = load i64, i64* %var_2_3, align 8
  br label %block_.L_400e2d

block_.L_400e2d:                                  ; preds = %block_.L_400dd9, %block_400e24
; Matched:%var_2_2726:  %var_2_2726 = phi i64 [ %var_2_1008, %block_400dd9 ], [ %.pre77, %block_400e24 ]
; %var_2_1581 = phi i64 [ %var_2_1550, %block_.L_400dd9 ], [ %.pre77, %block_400e24 ]
%var_2_1582 = load i64, i64* %RBP.i, align 8
%var_2_1583 = add i64 %var_2_1582, -64
; Matched:%var_2_2729:  %var_2_2729 = add i64 %var_2_2726, 9
; %var_2_1584 = add i64 %var_2_1581, 9
; Matched:\<badref\>:  store i64 %var_2_2729, i64* %PC, align 8
; store i64 %var_2_1584, i64* %var_2_3, align 8
%var_2_1585 = inttoptr i64 %var_2_1583 to i32*
%var_2_1586 = load i32, i32* %var_2_1585, align 4
store i8 0, i8* %var_2_14, align 1
; Matched:%var_2_2732:  %var_2_2732 = and i32 %var_2_2731, 255
; %var_2_1587 = and i32 %var_2_1586, 255
; Matched:%var_2_2578:  %var_2_2578 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2577) #12
; %var_2_1588 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1587)
; Matched:%var_2_996:  %var_2_996 = trunc i32 %var_2_995 to i8
; %var_2_1589 = trunc i32 %var_2_1588 to i8
; Matched:%var_2_2580:  %var_2_2580 = and i8 %var_2_2579, 1
; %var_2_1590 = and i8 %var_2_1589, 1
; Matched:%var_2_2736:  %var_2_2736 = xor i8 %var_2_2735, 1
; %var_2_1591 = xor i8 %var_2_1590, 1
; Matched:\<badref\>:  store i8 %var_2_2581, i8* %var_2_18, align 1, !tbaa !1281
; store i8 %var_2_1591, i8* %var_2_21, align 1
store i8 0, i8* %var_2_27, align 1
; Matched:%var_2_1523:  %var_2_1523 = icmp eq i32 %var_2_1517, 0
; %var_2_1592 = icmp eq i32 %var_2_1586, 0
; Matched:%var_2_2738:  %var_2_2738 = zext i1 %var_2_2737 to i8
; %var_2_1593 = zext i1 %var_2_1592 to i8
; Matched:\<badref\>:  store i8 %var_2_2583, i8* %var_2_20, align 1, !tbaa !1282
; store i8 %var_2_1593, i8* %var_2_30, align 1
%var_2_1594 = lshr i32 %var_2_1586, 31
%var_2_1595 = trunc i32 %var_2_1594 to i8
; Matched:\<badref\>:  store i8 %var_2_2740, i8* %var_2_21, align 1, !tbaa !1283
; store i8 %var_2_1595, i8* %var_2_33, align 1
store i8 0, i8* %var_2_39, align 1
%var_2_1596 = icmp ne i8 %var_2_1595, 0
; Matched:  %.v = select i1 %var_2_2741, i64 -204, i64 6
; %.v = select i1 %var_2_1596, i64 -204, i64 6
; Matched:%var_2_2742:  %var_2_2742 = add i64 %var_2_2729, %.v
; %var_2_1597 = add i64 %var_2_1584, %.v
; Matched:\<badref\>:  store i64 %var_2_2742, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1597, i64* %var_2_3, align 8
br i1 %var_2_1596, label %block_.L_400d6a, label %block_400e3c

block_400e3c:                                     ; preds = %block_.L_400e2d
  store i64 ptrtoint (%G__0x4030a7_type* @G__0x4030a7 to i64), i64* %RSI.i245, align 8
%var_2_1598 = bitcast [32 x %union.VectorReg]* %var_2_40 to <4 x i32>*
store <4 x i32> zeroinitializer, <4 x i32>* %var_2_1598, align 1
; Matched:%var_2_2767:  %var_2_2767 = add i64 %var_2_2727, -72
; %var_2_1599 = add i64 %var_2_1582, -72
; Matched:%var_2_2768:  %var_2_2768 = add i64 %var_2_2742, 18
; %var_2_1600 = add i64 %var_2_1597, 18
; Matched:\<badref\>:  store i64 %var_2_2768, i64* %PC, align 8
; store i64 %var_2_1600, i64* %var_2_3, align 8
; Matched:%var_2_2769:  %var_2_2769 = inttoptr i64 %var_2_2767 to float*
; %var_2_1601 = inttoptr i64 %var_2_1599 to float*
; Matched:%var_2_2770:  %var_2_2770 = load float, float* %var_2_2769, align 4
; %var_2_1602 = load float, float* %var_2_1601, align 4
; Matched:%var_2_2771:  %var_2_2771 = fpext float %var_2_2770 to double
; %var_2_1603 = fpext float %var_2_1602 to double
; Matched:\<badref\>:  store double %var_2_2771, double* %var_2_193, align 1, !tbaa !1287
; store double %var_2_1603, double* %var_2_226, align 1
; Matched:%var_2_1771:  %var_2_1771 = add i64 %var_2_1764, -68
; %var_2_1604 = add i64 %var_2_1582, -68
; Matched:%var_2_2773:  %var_2_2773 = add i64 %var_2_2742, 23
; %var_2_1605 = add i64 %var_2_1597, 23
; Matched:\<badref\>:  store i64 %var_2_2773, i64* %PC, align 8
; store i64 %var_2_1605, i64* %var_2_3, align 8
; Matched:%var_2_2774:  %var_2_2774 = inttoptr i64 %var_2_2772 to i32*
; %var_2_1606 = inttoptr i64 %var_2_1604 to i32*
; Matched:%var_2_1774:  %var_2_1774 = load i32, i32* %var_2_1773, align 4
; %var_2_1607 = load i32, i32* %var_2_1606, align 4
; Matched:%var_2_1775:  %var_2_1775 = sitofp i32 %var_2_1774 to double
; %var_2_1608 = sitofp i32 %var_2_1607 to double
; Matched:\<badref\>:  store double %var_2_2776, double* %var_2_219, align 1, !tbaa !1287
; store double %var_2_1608, double* %var_2_253, align 1
%var_2_1609 = bitcast i64* %var_2_228 to <2 x i32>*
%var_2_1610 = load <2 x i32>, <2 x i32>* %var_2_1609, align 1
; Matched:%var_2_2779:  %var_2_2779 = fdiv double %var_2_2771, %var_2_2776
; %var_2_1611 = fdiv double %var_2_1603, %var_2_1608
%.cast25 = bitcast double %var_2_1611 to <2 x i32>
; Matched:%var_2_2780:  %var_2_2780 = fptrunc double %var_2_2779 to float
; %var_2_1612 = fptrunc double %var_2_1611 to float
; Matched:\<badref\>:  store float %var_2_2780, float* %var_2_2113, align 1, !tbaa !1265
; store float %var_2_1612, float* %var_2_944, align 1
%var_2_1613 = extractelement <2 x i32> %.cast25, i32 1
; Matched:\<badref\>:  store i32 %var_2_2781, i32* %var_2_1912, align 1, !tbaa !1265
; store i32 %var_2_1613, i32* %var_2_603, align 1
%var_2_1614 = extractelement <2 x i32> %var_2_1610, i32 0
; Matched:\<badref\>:  store i32 %var_2_1194, i32* %var_2_1913, align 1, !tbaa !1265
; store i32 %var_2_1614, i32* %var_2_604, align 1
%var_2_1615 = extractelement <2 x i32> %var_2_1610, i32 1
; Matched:\<badref\>:  store i32 %var_2_2783, i32* %var_2_1915, align 1, !tbaa !1265
; store i32 %var_2_1615, i32* %var_2_606, align 1
; Matched:%var_2_2784:  %var_2_2784 = add i64 %var_2_2742, 36
; %var_2_1616 = add i64 %var_2_1597, 36
; Matched:\<badref\>:  store i64 %var_2_2784, i64* %PC, align 8
; store i64 %var_2_1616, i64* %var_2_3, align 8
%var_2_1617 = load <2 x float>, <2 x float>* %var_2_1037, align 1
%var_2_1618 = extractelement <2 x float> %var_2_1617, i32 0
; Matched:\<badref\>:  store float %var_2_2786, float* %var_2_2769, align 4
; store float %var_2_1618, float* %var_2_1601, align 4
; Matched:%var_2_2267:  %var_2_2267 = load i64, i64* %PC, align 8
; %var_2_1619 = load i64, i64* %var_2_3, align 8
%var_2_1620 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
store i64 %var_2_1620, i64* %RDI.i594, align 8
; Matched:\<badref\>:  store i8 0, i8* %AL, align 1, !tbaa !1286
; store i8 1, i8* %AL.i1482, align 1
; Matched:%var_2_2789:  %var_2_2789 = add i64 %var_2_2787, -2416
; %var_2_1621 = add i64 %var_2_1619, -2416
; Matched:%var_2_2270:  %var_2_2270 = add i64 %var_2_2267, 15
; %var_2_1622 = add i64 %var_2_1619, 15
%var_2_1623 = load i64, i64* %var_2_6, align 8
%var_2_1624 = add i64 %var_2_1623, -8
; Matched:%var_2_2273:  %var_2_2273 = inttoptr i64 %var_2_2272 to i64*
; %var_2_1625 = inttoptr i64 %var_2_1624 to i64*
; Matched:\<badref\>:  store i64 %var_2_2270, i64* %var_2_2273, align 8
; store i64 %var_2_1622, i64* %var_2_1625, align 8
; Matched:\<badref\>:  store i64 %var_2_1730, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1624, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_2789, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1621, i64* %var_2_3, align 8
%var_2_1626 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %var_2_1529)
%var_2_1627 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x4030ce_type* @G__0x4030ce to i64), i64* %RSI.i245, align 8
%var_2_1628 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
store i64 %var_2_1628, i64* %RDI.i594, align 8
; Matched:%var_2_2797:  %var_2_2797 = load i64, i64* %RBP, align 8
; %var_2_1629 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2798:  %var_2_2798 = add i64 %var_2_2797, -944
; %var_2_1630 = add i64 %var_2_1629, -944
; Matched:%var_2_2799:  %var_2_2799 = load i32, i32* %EAX, align 4
; %var_2_1631 = load i32, i32* %EAX.i1471, align 4
; Matched:%var_2_1817:  %var_2_1817 = add i64 %var_2_1812, 24
; %var_2_1632 = add i64 %var_2_1627, 24
; Matched:\<badref\>:  store i64 %var_2_2380, i64* %PC, align 8
; store i64 %var_2_1632, i64* %var_2_3, align 8
; Matched:%var_2_2801:  %var_2_2801 = inttoptr i64 %var_2_2798 to i32*
; %var_2_1633 = inttoptr i64 %var_2_1630 to i32*
; Matched:\<badref\>:  store i32 %var_2_2799, i32* %var_2_2801, align 4
; store i32 %var_2_1631, i32* %var_2_1633, align 4
; Matched:%var_2_1833:  %var_2_1833 = load i64, i64* %PC, align 8
; %var_2_1634 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i8 0, i8* %AL, align 1, !tbaa !1286
; store i8 0, i8* %AL.i1482, align 1
; Matched:%var_2_2803:  %var_2_2803 = add i64 %var_2_2802, -2455
; %var_2_1635 = add i64 %var_2_1634, -2455
; Matched:%var_2_1142:  %var_2_1142 = add i64 %var_2_1140, 7
; %var_2_1636 = add i64 %var_2_1634, 7
%var_2_1637 = load i64, i64* %var_2_6, align 8
%var_2_1638 = add i64 %var_2_1637, -8
; Matched:%var_2_165:  %var_2_165 = inttoptr i64 %var_2_164 to i64*
; %var_2_1639 = inttoptr i64 %var_2_1638 to i64*
; Matched:\<badref\>:  store i64 %var_2_162, i64* %var_2_165, align 8
; store i64 %var_2_1636, i64* %var_2_1639, align 8
; Matched:\<badref\>:  store i64 %var_2_2792, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1638, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_2803, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1635, i64* %var_2_3, align 8
%var_2_1640 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %var_2_1626)
%var_2_1641 = load i64, i64* %RBP.i, align 8
%var_2_1642 = add i64 %var_2_1641, -64
%var_2_1643 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2562:  %var_2_2562 = add i64 %var_2_2561, 7
; %var_2_1644 = add i64 %var_2_1643, 7
; Matched:\<badref\>:  store i64 %var_2_2812, i64* %PC, align 8
; store i64 %var_2_1644, i64* %var_2_3, align 8
%var_2_1645 = inttoptr i64 %var_2_1642 to i32*
store i32 -3, i32* %var_2_1645, align 4
%var_2_1646 = load i64, i64* %var_2_3, align 8
  store i32 100, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
; Matched:%var_2_2815:  %var_2_2815 = load i64, i64* %RBP, align 8
; %var_2_1647 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2816:  %var_2_2816 = add i64 %var_2_2815, -948
; %var_2_1648 = add i64 %var_2_1647, -948
; Matched:%var_2_2817:  %var_2_2817 = load i32, i32* %EAX, align 4
; %var_2_1649 = load i32, i32* %EAX.i1471, align 4
; Matched:%var_2_1185:  %var_2_1185 = add i64 %var_2_1175, 17
; %var_2_1650 = add i64 %var_2_1646, 17
; Matched:\<badref\>:  store i64 %var_2_1851, i64* %PC, align 8
; store i64 %var_2_1650, i64* %var_2_3, align 8
; Matched:%var_2_2819:  %var_2_2819 = inttoptr i64 %var_2_2816 to i32*
; %var_2_1651 = inttoptr i64 %var_2_1648 to i32*
; Matched:\<badref\>:  store i32 %var_2_2817, i32* %var_2_2819, align 4
; store i32 %var_2_1649, i32* %var_2_1651, align 4
%.pre78 = load i64, i64* %var_2_3, align 8
%var_2_1652 = bitcast %union.VectorReg* %var_2_221 to <4 x i32>*
  br label %block_.L_400ea6

block_.L_400ea6:                                  ; preds = %block_.L_400fa0, %block_400e3c
%var_2_1653 = phi i64 [ %.pre78, %block_400e3c ], [ %var_2_1876, %block_.L_400fa0 ]
%MEMORY.9 = phi %struct.Memory* [ %var_2_1640, %block_400e3c ], [ %var_2_1812, %block_.L_400fa0 ]
%var_2_1654 = add i64 %var_2_1653, -2230
%var_2_1655 = add i64 %var_2_1653, 5
%var_2_1656 = load i64, i64* %var_2_6, align 8
%var_2_1657 = add i64 %var_2_1656, -8
%var_2_1658 = inttoptr i64 %var_2_1657 to i64*
store i64 %var_2_1655, i64* %var_2_1658, align 8
; Matched:\<badref\>:  store i64 %var_2_2342, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1657, i64* %var_2_6, align 8
store i64 %var_2_1654, i64* %var_2_3, align 8
%call2_400ea6 = tail call %struct.Memory* @sub_4005f0.second(%struct.State* nonnull %0, i64 %var_2_1654, %struct.Memory* %MEMORY.9)
; Matched:%var_2_2065:  %var_2_2065 = load i64, i64* %RBP, align 8
; %var_2_1659 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2066:  %var_2_2066 = add i64 %var_2_2065, -80
; %var_2_1660 = add i64 %var_2_1659, -80
%var_2_1661 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2126:  %var_2_2126 = add i64 %var_2_2125, 5
; %var_2_1662 = add i64 %var_2_1661, 5
; Matched:\<badref\>:  store i64 %var_2_3049, i64* %PC, align 8
; store i64 %var_2_1662, i64* %var_2_3, align 8
%var_2_1663 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_1664 = extractelement <2 x float> %var_2_1663, i32 0
; Matched:%var_2_2071:  %var_2_2071 = inttoptr i64 %var_2_2066 to float*
; %var_2_1665 = inttoptr i64 %var_2_1660 to float*
; Matched:\<badref\>:  store float %var_2_2070, float* %var_2_2071, align 4
; store float %var_2_1664, float* %var_2_1665, align 4
; Matched:%var_2_1229:  %var_2_1229 = load i64, i64* %RBP, align 8
; %var_2_1666 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1230:  %var_2_1230 = add i64 %var_2_1229, -64
; %var_2_1667 = add i64 %var_2_1666, -64
; Matched:%var_2_1231:  %var_2_1231 = load i64, i64* %PC, align 8
; %var_2_1668 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1232:  %var_2_1232 = add i64 %var_2_1231, 3
; %var_2_1669 = add i64 %var_2_1668, 3
; Matched:\<badref\>:  store i64 %var_2_2075, i64* %PC, align 8
; store i64 %var_2_1669, i64* %var_2_3, align 8
; Matched:%var_2_1233:  %var_2_1233 = inttoptr i64 %var_2_1230 to i32*
; %var_2_1670 = inttoptr i64 %var_2_1667 to i32*
; Matched:%var_2_1234:  %var_2_1234 = load i32, i32* %var_2_1233, align 4
; %var_2_1671 = load i32, i32* %var_2_1670, align 4
; Matched:%var_2_2078:  %var_2_2078 = add i32 %var_2_2077, 1
; %var_2_1672 = add i32 %var_2_1671, 1
; Matched:%var_2_2079:  %var_2_2079 = zext i32 %var_2_2078 to i64
; %var_2_1673 = zext i32 %var_2_1672 to i64
; Matched:\<badref\>:  store i64 %var_2_2079, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1673, i64* %RAX.i271, align 8
; Matched:%var_2_1237:  %var_2_1237 = icmp eq i32 %var_2_1234, -1
; %var_2_1674 = icmp eq i32 %var_2_1671, -1
; Matched:%var_2_1238:  %var_2_1238 = icmp eq i32 %var_2_1235, 0
; %var_2_1675 = icmp eq i32 %var_2_1672, 0
; Matched:%var_2_2082:  %var_2_2082 = or i1 %var_2_2080, %var_2_2081
; %var_2_1676 = or i1 %var_2_1674, %var_2_1675
; Matched:%var_2_2083:  %var_2_2083 = zext i1 %var_2_2082 to i8
; %var_2_1677 = zext i1 %var_2_1676 to i8
; Matched:\<badref\>:  store i8 %var_2_2083, i8* %var_2_17, align 1, !tbaa !1267
; store i8 %var_2_1677, i8* %var_2_14, align 1
; Matched:%var_2_2084:  %var_2_2084 = and i32 %var_2_2078, 255
; %var_2_1678 = and i32 %var_2_1672, 255
; Matched:%var_2_2085:  %var_2_2085 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2084) #12
; %var_2_1679 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1678)
; Matched:%var_2_2086:  %var_2_2086 = trunc i32 %var_2_2085 to i8
; %var_2_1680 = trunc i32 %var_2_1679 to i8
; Matched:%var_2_1244:  %var_2_1244 = and i8 %var_2_1243, 1
; %var_2_1681 = and i8 %var_2_1680, 1
; Matched:%var_2_1245:  %var_2_1245 = xor i8 %var_2_1244, 1
; %var_2_1682 = xor i8 %var_2_1681, 1
; Matched:\<badref\>:  store i8 %var_2_2088, i8* %var_2_18, align 1, !tbaa !1281
; store i8 %var_2_1682, i8* %var_2_21, align 1
; Matched:%var_2_2089:  %var_2_2089 = xor i32 %var_2_2078, %var_2_2077
; %var_2_1683 = xor i32 %var_2_1672, %var_2_1671
; Matched:%var_2_2090:  %var_2_2090 = lshr i32 %var_2_2089, 4
; %var_2_1684 = lshr i32 %var_2_1683, 4
; Matched:%var_2_2091:  %var_2_2091 = trunc i32 %var_2_2090 to i8
; %var_2_1685 = trunc i32 %var_2_1684 to i8
; Matched:%var_2_2092:  %var_2_2092 = and i8 %var_2_2091, 1
; %var_2_1686 = and i8 %var_2_1685, 1
; Matched:\<badref\>:  store i8 %var_2_2092, i8* %var_2_19, align 1, !tbaa !1285
; store i8 %var_2_1686, i8* %var_2_27, align 1
; Matched:%var_2_1250:  %var_2_1250 = zext i1 %var_2_1238 to i8
; %var_2_1687 = zext i1 %var_2_1675 to i8
; Matched:\<badref\>:  store i8 %var_2_1250, i8* %var_2_20, align 1, !tbaa !1282
; store i8 %var_2_1687, i8* %var_2_30, align 1
; Matched:%var_2_2094:  %var_2_2094 = lshr i32 %var_2_2078, 31
; %var_2_1688 = lshr i32 %var_2_1672, 31
; Matched:%var_2_2095:  %var_2_2095 = trunc i32 %var_2_2094 to i8
; %var_2_1689 = trunc i32 %var_2_1688 to i8
; Matched:\<badref\>:  store i8 %var_2_2095, i8* %var_2_21, align 1, !tbaa !1283
; store i8 %var_2_1689, i8* %var_2_33, align 1
; Matched:%var_2_1253:  %var_2_1253 = lshr i32 %var_2_1234, 31
; %var_2_1690 = lshr i32 %var_2_1671, 31
; Matched:%var_2_1254:  %var_2_1254 = xor i32 %var_2_1251, %var_2_1253
; %var_2_1691 = xor i32 %var_2_1688, %var_2_1690
; Matched:%var_2_1255:  %var_2_1255 = add nuw nsw i32 %var_2_1254, %var_2_1251
; %var_2_1692 = add nuw nsw i32 %var_2_1691, %var_2_1688
; Matched:%var_2_2099:  %var_2_2099 = icmp eq i32 %var_2_2098, 2
; %var_2_1693 = icmp eq i32 %var_2_1692, 2
; Matched:%var_2_2100:  %var_2_2100 = zext i1 %var_2_2099 to i8
; %var_2_1694 = zext i1 %var_2_1693 to i8
; Matched:\<badref\>:  store i8 %var_2_1257, i8* %var_2_22, align 1, !tbaa !1284
; store i8 %var_2_1694, i8* %var_2_39, align 1
; Matched:%var_2_2101:  %var_2_2101 = add i64 %var_2_2074, 9
; %var_2_1695 = add i64 %var_2_1668, 9
; Matched:\<badref\>:  store i64 %var_2_2101, i64* %PC, align 8
; store i64 %var_2_1695, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_2078, i32* %var_2_2076, align 4
; store i32 %var_2_1672, i32* %var_2_1670, align 4
%var_2_1696 = load i64, i64* %var_2_3, align 8
%var_2_1697 = add i64 %var_2_1696, 11
; Matched:\<badref\>:  store i64 %var_2_3112, i64* %PC, align 8
; store i64 %var_2_1697, i64* %var_2_3, align 8
  store i32 0, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  br label %block_.L_400ec4

block_.L_400ec4:                                  ; preds = %block_400ed8, %block_.L_400ea6
%var_2_1698 = phi i32 [ %var_2_1752, %block_400ed8 ], [ 0, %block_.L_400ea6 ]
; Matched:%var_2_1682:  %var_2_1682 = phi i64 [ %var_2_1726, %block_4014ab ], [ %var_2_1124, %block_4014d4 ]
; %var_2_1699 = phi i64 [ %var_2_1775, %block_400ed8 ], [ %var_2_1697, %block_.L_400ea6 ]
; Matched:%var_2_2934:  %var_2_2934 = zext i32 %var_2_2932 to i64
; %var_2_1700 = zext i32 %var_2_1698 to i64
; Matched:\<badref\>:  store i64 %var_2_874, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1700, i64* %RAX.i271, align 8
%var_2_1701 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
%var_2_1702 = sub i32 %var_2_1698, %var_2_1701
%var_2_1703 = icmp ult i32 %var_2_1698, %var_2_1701
%var_2_1704 = zext i1 %var_2_1703 to i8
store i8 %var_2_1704, i8* %var_2_14, align 1
%var_2_1705 = and i32 %var_2_1702, 255
%var_2_1706 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1705)
%var_2_1707 = trunc i32 %var_2_1706 to i8
%var_2_1708 = and i8 %var_2_1707, 1
%var_2_1709 = xor i8 %var_2_1708, 1
store i8 %var_2_1709, i8* %var_2_21, align 1
%var_2_1710 = xor i32 %var_2_1701, %var_2_1698
%var_2_1711 = xor i32 %var_2_1710, %var_2_1702
%var_2_1712 = lshr i32 %var_2_1711, 4
%var_2_1713 = trunc i32 %var_2_1712 to i8
%var_2_1714 = and i8 %var_2_1713, 1
store i8 %var_2_1714, i8* %var_2_27, align 1
%var_2_1715 = icmp eq i32 %var_2_1702, 0
%var_2_1716 = zext i1 %var_2_1715 to i8
store i8 %var_2_1716, i8* %var_2_30, align 1
%var_2_1717 = lshr i32 %var_2_1702, 31
%var_2_1718 = trunc i32 %var_2_1717 to i8
store i8 %var_2_1718, i8* %var_2_33, align 1
%var_2_1719 = lshr i32 %var_2_1698, 31
%var_2_1720 = lshr i32 %var_2_1701, 31
%var_2_1721 = xor i32 %var_2_1720, %var_2_1719
%var_2_1722 = xor i32 %var_2_1717, %var_2_1719
%var_2_1723 = add nuw nsw i32 %var_2_1722, %var_2_1721
%var_2_1724 = icmp eq i32 %var_2_1723, 2
%var_2_1725 = zext i1 %var_2_1724 to i8
store i8 %var_2_1725, i8* %var_2_39, align 1
%var_2_1726 = icmp ne i8 %var_2_1718, 0
%var_2_1727 = xor i1 %var_2_1726, %var_2_1724
; Matched:  %.v103 = select i1 %var_2_901, i64 20, i64 134
; %.v96 = select i1 %var_2_1727, i64 20, i64 134
; Matched:%var_2_902:  %var_2_902 = add i64 %var_2_873, %.v103
; %var_2_1728 = add i64 %var_2_1699, %.v96
; Matched:\<badref\>:  store i64 %var_2_1643, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1728, i64* %var_2_3, align 8
br i1 %var_2_1727, label %block_400ed8, label %block_.L_400f4a

block_400ed8:                                     ; preds = %block_.L_400ec4
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %RDI.i594, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %RCX.i347, align 8
%var_2_1729 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_187:  %var_2_187 = add i64 %var_2_186, -20
; %var_2_1730 = add i64 %var_2_1729, -20
; Matched:\<badref\>:  store i64 %var_2_1017, i64* %R8, align 8, !tbaa !1261
; store i64 %var_2_1730, i64* %var_2_57, align 8
%var_2_1731 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
%var_2_1732 = zext i32 %var_2_1731 to i64
store i64 %var_2_1732, i64* %RSI.i245, align 8
%var_2_1733 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
%var_2_1734 = zext i32 %var_2_1733 to i64
store i64 %var_2_1734, i64* %RDX.i359, align 8
; Matched:%var_2_1022:  %var_2_1022 = add i64 %var_2_1643, 2184
; %var_2_1735 = add i64 %var_2_1728, 2184
; Matched:%var_2_1023:  %var_2_1023 = add i64 %var_2_1643, 43
; %var_2_1736 = add i64 %var_2_1728, 43
%var_2_1737 = load i64, i64* %var_2_6, align 8
%var_2_1738 = add i64 %var_2_1737, -8
; Matched:%var_2_1086:  %var_2_1086 = inttoptr i64 %var_2_1085 to i64*
; %var_2_1739 = inttoptr i64 %var_2_1738 to i64*
; Matched:\<badref\>:  store i64 %var_2_1083, i64* %var_2_1086, align 8
; store i64 %var_2_1736, i64* %var_2_1739, align 8
; Matched:\<badref\>:  store i64 %var_2_2326, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1738, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1022, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1735, i64* %var_2_3, align 8
; Matched:%var_2_1027:  %var_2_1027 = tail call %struct.Memory* @sub_401760_matgen_renamed_(%struct.State* nonnull %0, i64 %var_2_1022, %struct.Memory* %MEMORY.11)
; %call2_400efe = tail call %struct.Memory* @sub_401760.matgen(%struct.State* nonnull %0, i64 %var_2_1735, %struct.Memory* %MEMORY.9)
; Matched:%var_2_1028:  %var_2_1028 = load i64, i64* %PC, align 8
; %var_2_1740 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %RDI.i594, align 8
  store i64 ptrtoint (%G__0x62b7a0_type* @G__0x62b7a0 to i64), i64* %RCX.i347, align 8
store i64 ptrtoint (%G__0x62bac0_type* @G__0x62bac0 to i64), i64* %var_2_57, align 8
%var_2_1741 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
%var_2_1742 = zext i32 %var_2_1741 to i64
store i64 %var_2_1742, i64* %RSI.i245, align 8
%var_2_1743 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
%var_2_1744 = zext i32 %var_2_1743 to i64
store i64 %var_2_1744, i64* %RDX.i359, align 8
; Matched:%var_2_1033:  %var_2_1033 = add i64 %var_2_1028, 2605
; %var_2_1745 = add i64 %var_2_1740, 2605
; Matched:%var_2_1034:  %var_2_1034 = add i64 %var_2_1028, 49
; %var_2_1746 = add i64 %var_2_1740, 49
%var_2_1747 = load i64, i64* %var_2_6, align 8
%var_2_1748 = add i64 %var_2_1747, -8
; Matched:%var_2_1037:  %var_2_1037 = inttoptr i64 %var_2_1036 to i64*
; %var_2_1749 = inttoptr i64 %var_2_1748 to i64*
; Matched:\<badref\>:  store i64 %var_2_1034, i64* %var_2_1037, align 8
; store i64 %var_2_1746, i64* %var_2_1749, align 8
; Matched:\<badref\>:  store i64 %var_2_440, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1748, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1033, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1745, i64* %var_2_3, align 8
; Matched:%var_2_1038:  %var_2_1038 = tail call %struct.Memory* @sub_401930_dgefa_renamed_(%struct.State* nonnull %0, i64 %var_2_1033, %struct.Memory* %MEMORY.11)
; %call2_400f2f = tail call %struct.Memory* @sub_401930.dgefa(%struct.State* nonnull %0, i64 %var_2_1745, %struct.Memory* %MEMORY.9)
; Matched:%var_2_1099:  %var_2_1099 = load i64, i64* %PC, align 8
; %var_2_1750 = load i64, i64* %var_2_3, align 8
%var_2_1751 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
%var_2_1752 = add i32 %var_2_1751, 1
%var_2_1753 = zext i32 %var_2_1752 to i64
store i64 %var_2_1753, i64* %RAX.i271, align 8
%var_2_1754 = icmp eq i32 %var_2_1751, -1
%var_2_1755 = icmp eq i32 %var_2_1752, 0
%var_2_1756 = or i1 %var_2_1754, %var_2_1755
%var_2_1757 = zext i1 %var_2_1756 to i8
store i8 %var_2_1757, i8* %var_2_14, align 1
%var_2_1758 = and i32 %var_2_1752, 255
%var_2_1759 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1758)
%var_2_1760 = trunc i32 %var_2_1759 to i8
%var_2_1761 = and i8 %var_2_1760, 1
%var_2_1762 = xor i8 %var_2_1761, 1
store i8 %var_2_1762, i8* %var_2_21, align 1
%var_2_1763 = xor i32 %var_2_1752, %var_2_1751
%var_2_1764 = lshr i32 %var_2_1763, 4
%var_2_1765 = trunc i32 %var_2_1764 to i8
%var_2_1766 = and i8 %var_2_1765, 1
store i8 %var_2_1766, i8* %var_2_27, align 1
%var_2_1767 = zext i1 %var_2_1755 to i8
store i8 %var_2_1767, i8* %var_2_30, align 1
%var_2_1768 = lshr i32 %var_2_1752, 31
%var_2_1769 = trunc i32 %var_2_1768 to i8
store i8 %var_2_1769, i8* %var_2_33, align 1
%var_2_1770 = lshr i32 %var_2_1751, 31
%var_2_1771 = xor i32 %var_2_1768, %var_2_1770
%var_2_1772 = add nuw nsw i32 %var_2_1771, %var_2_1768
%var_2_1773 = icmp eq i32 %var_2_1772, 2
%var_2_1774 = zext i1 %var_2_1773 to i8
store i8 %var_2_1774, i8* %var_2_39, align 1
store i32 %var_2_1752, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
; Matched:%var_2_1124:  %var_2_1124 = add i64 %var_2_1099, -112
; %var_2_1775 = add i64 %var_2_1750, -112
; Matched:\<badref\>:  store i64 %var_2_2057, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1775, i64* %var_2_3, align 8
  br label %block_.L_400ec4

block_.L_400f4a:                                  ; preds = %block_.L_400ec4
; Matched:%var_2_1474:  %var_2_1474 = add i64 %var_2_1643, -2394
; %var_2_1776 = add i64 %var_2_1728, -2394
; Matched:%var_2_1541:  %var_2_1541 = add i64 %var_2_1711, 5
; %var_2_1777 = add i64 %var_2_1728, 5
%var_2_1778 = load i64, i64* %var_2_6, align 8
%var_2_1779 = add i64 %var_2_1778, -8
; Matched:%var_2_1544:  %var_2_1544 = inttoptr i64 %var_2_1543 to i64*
; %var_2_1780 = inttoptr i64 %var_2_1779 to i64*
; Matched:\<badref\>:  store i64 %var_2_3041, i64* %var_2_3044, align 8
; store i64 %var_2_1777, i64* %var_2_1780, align 8
; Matched:\<badref\>:  store i64 %var_2_2543, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1779, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1474, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1776, i64* %var_2_3, align 8
; Matched:%var_2_1479:  %var_2_1479 = tail call %struct.Memory* @sub_4005f0_second_renamed_(%struct.State* nonnull %0, i64 %var_2_1474, %struct.Memory* %MEMORY.11)
; %call2_400f4a = tail call %struct.Memory* @sub_4005f0.second(%struct.State* nonnull %0, i64 %var_2_1776, %struct.Memory* %MEMORY.9)
%var_2_1781 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x40308d_type* @G__0x40308d to i64), i64* %RSI.i245, align 8
store <4 x i32> zeroinitializer, <4 x i32>* %var_2_1652, align 1
%var_2_1782 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1482:  %var_2_1482 = add i64 %var_2_1481, -80
; %var_2_1783 = add i64 %var_2_1782, -80
%var_2_1784 = add i64 %var_2_1781, 18
store i64 %var_2_1784, i64* %var_2_3, align 8
%var_2_1785 = load <2 x float>, <2 x float>* %var_2_83, align 1
; Matched:%var_2_955:  %var_2_955 = inttoptr i64 %var_2_951 to float*
; %var_2_1786 = inttoptr i64 %var_2_1783 to float*
; Matched:%var_2_1486:  %var_2_1486 = load float, float* %var_2_1485, align 4
; %var_2_1787 = load float, float* %var_2_1786, align 4
%var_2_1788 = extractelement <2 x float> %var_2_1785, i32 0
; Matched:%var_2_1754:  %var_2_1754 = fsub float %var_2_1753, %var_2_1752
; %var_2_1789 = fsub float %var_2_1788, %var_2_1787
; Matched:\<badref\>:  store float %var_2_1488, float* %var_2_25, align 1, !tbaa !1265
; store float %var_2_1789, float* %var_2_46, align 1
%var_2_1790 = bitcast <2 x float> %var_2_1785 to <2 x i32>
%var_2_1791 = extractelement <2 x i32> %var_2_1790, i32 1
; Matched:\<badref\>:  store i32 %var_2_1280, i32* %var_2_245, align 1, !tbaa !1265
; store i32 %var_2_1791, i32* %var_2_281, align 1
; Matched:%var_2_940:  %var_2_940 = add i64 %var_2_939, -84
; %var_2_1792 = add i64 %var_2_1782, -84
; Matched:%var_2_2293:  %var_2_2293 = add i64 %var_2_2289, 23
; %var_2_1793 = add i64 %var_2_1781, 23
; Matched:\<badref\>:  store i64 %var_2_1492, i64* %PC, align 8
; store i64 %var_2_1793, i64* %var_2_3, align 8
%var_2_1794 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_1795 = extractelement <2 x float> %var_2_1794, i32 0
; Matched:%var_2_1495:  %var_2_1495 = inttoptr i64 %var_2_1491 to float*
; %var_2_1796 = inttoptr i64 %var_2_1792 to float*
; Matched:\<badref\>:  store float %var_2_1739, float* %var_2_1740, align 4
; store float %var_2_1795, float* %var_2_1796, align 4
; Matched:%var_2_1496:  %var_2_1496 = load i64, i64* %PC, align 8
; %var_2_1797 = load i64, i64* %var_2_3, align 8
%var_2_1798 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
store i64 %var_2_1798, i64* %RDI.i594, align 8
%var_2_1799 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
%var_2_1800 = zext i32 %var_2_1799 to i64
store i64 %var_2_1800, i64* %RDX.i359, align 8
%var_2_1801 = load <2 x i32>, <2 x i32>* %.pre-phi, align 1
%var_2_1802 = load <2 x i32>, <2 x i32>* %.pre-phi91, align 1
%var_2_1803 = extractelement <2 x i32> %var_2_1801, i32 0
; Matched:\<badref\>:  store i32 %var_2_1786, i32* %var_2_26, align 1, !tbaa !1265
; store i32 %var_2_1803, i32* %var_2_47, align 1
%var_2_1804 = extractelement <2 x i32> %var_2_1801, i32 1
; Matched:\<badref\>:  store i32 %var_2_1787, i32* %var_2_245, align 1, !tbaa !1265
; store i32 %var_2_1804, i32* %var_2_281, align 1
%var_2_1805 = extractelement <2 x i32> %var_2_1802, i32 0
; Matched:\<badref\>:  store i32 %var_2_1504, i32* %var_2_247, align 1, !tbaa !1265
; store i32 %var_2_1805, i32* %var_2_283, align 1
%var_2_1806 = extractelement <2 x i32> %var_2_1802, i32 1
; Matched:\<badref\>:  store i32 %var_2_1789, i32* %var_2_249, align 1, !tbaa !1265
; store i32 %var_2_1806, i32* %var_2_285, align 1
; Matched:\<badref\>:  store i8 0, i8* %AL, align 1, !tbaa !1286
; store i8 1, i8* %AL.i1482, align 1
; Matched:%var_2_1506:  %var_2_1506 = add i64 %var_2_1496, -2678
; %var_2_1807 = add i64 %var_2_1797, -2678
; Matched:%var_2_1507:  %var_2_1507 = add i64 %var_2_1496, 25
; %var_2_1808 = add i64 %var_2_1797, 25
%var_2_1809 = load i64, i64* %var_2_6, align 8
%var_2_1810 = add i64 %var_2_1809, -8
; Matched:%var_2_1510:  %var_2_1510 = inttoptr i64 %var_2_1509 to i64*
; %var_2_1811 = inttoptr i64 %var_2_1810 to i64*
; Matched:\<badref\>:  store i64 %var_2_1507, i64* %var_2_1510, align 8
; store i64 %var_2_1808, i64* %var_2_1811, align 8
; Matched:\<badref\>:  store i64 %var_2_1096, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1810, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1506, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1807, i64* %var_2_3, align 8
%var_2_1812 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.9)
%var_2_1813 = load i64, i64* %RBP.i, align 8
%var_2_1814 = add i64 %var_2_1813, -64
%var_2_1815 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_991:  %var_2_991 = add i64 %var_2_990, 4
; %var_2_1816 = add i64 %var_2_1815, 4
; Matched:\<badref\>:  store i64 %var_2_1515, i64* %PC, align 8
; store i64 %var_2_1816, i64* %var_2_3, align 8
%var_2_1817 = inttoptr i64 %var_2_1814 to i32*
%var_2_1818 = load i32, i32* %var_2_1817, align 4
store i8 0, i8* %var_2_14, align 1
; Matched:%var_2_2577:  %var_2_2577 = and i32 %var_2_2576, 255
; %var_2_1819 = and i32 %var_2_1818, 255
; Matched:%var_2_995:  %var_2_995 = tail call i32 @llvm.ctpop.i32(i32 %var_2_994) #12
; %var_2_1820 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1819)
; Matched:%var_2_1520:  %var_2_1520 = trunc i32 %var_2_1519 to i8
; %var_2_1821 = trunc i32 %var_2_1820 to i8
; Matched:%var_2_2735:  %var_2_2735 = and i8 %var_2_2734, 1
; %var_2_1822 = and i8 %var_2_1821, 1
; Matched:%var_2_1522:  %var_2_1522 = xor i8 %var_2_1521, 1
; %var_2_1823 = xor i8 %var_2_1822, 1
; Matched:\<badref\>:  store i8 %var_2_2736, i8* %var_2_18, align 1, !tbaa !1281
; store i8 %var_2_1823, i8* %var_2_21, align 1
store i8 0, i8* %var_2_27, align 1
; Matched:%var_2_2582:  %var_2_2582 = icmp eq i32 %var_2_2576, 0
; %var_2_1824 = icmp eq i32 %var_2_1818, 0
; Matched:%var_2_2583:  %var_2_2583 = zext i1 %var_2_2582 to i8
; %var_2_1825 = zext i1 %var_2_1824 to i8
; Matched:\<badref\>:  store i8 %var_2_1000, i8* %var_2_20, align 1, !tbaa !1282
; store i8 %var_2_1825, i8* %var_2_30, align 1
%var_2_1826 = lshr i32 %var_2_1818, 31
%var_2_1827 = trunc i32 %var_2_1826 to i8
; Matched:\<badref\>:  store i8 %var_2_1526, i8* %var_2_21, align 1, !tbaa !1283
; store i8 %var_2_1827, i8* %var_2_33, align 1
store i8 0, i8* %var_2_39, align 1
; Matched:%var_2_1527:  %var_2_1527 = add i64 %var_2_1512, -952
; %var_2_1828 = add i64 %var_2_1813, -952
; Matched:%var_2_1528:  %var_2_1528 = load i32, i32* %EAX, align 4
; %var_2_1829 = load i32, i32* %EAX.i1471, align 4
; Matched:%var_2_719:  %var_2_719 = add i64 %var_2_713, 10
; %var_2_1830 = add i64 %var_2_1815, 10
; Matched:\<badref\>:  store i64 %var_2_1405, i64* %PC, align 8
; store i64 %var_2_1830, i64* %var_2_3, align 8
; Matched:%var_2_1530:  %var_2_1530 = inttoptr i64 %var_2_1527 to i32*
; %var_2_1831 = inttoptr i64 %var_2_1828 to i32*
; Matched:\<badref\>:  store i32 %var_2_1528, i32* %var_2_1530, align 4
; store i32 %var_2_1829, i32* %var_2_1831, align 4
%var_2_1832 = load i64, i64* %var_2_3, align 8
%var_2_1833 = add i64 %var_2_1832, 23
%var_2_1834 = add i64 %var_2_1832, 6
%var_2_1835 = load i8, i8* %var_2_33, align 1
%var_2_1836 = icmp ne i8 %var_2_1835, 0
%var_2_1837 = load i8, i8* %var_2_39, align 1
%var_2_1838 = icmp ne i8 %var_2_1837, 0
%var_2_1839 = xor i1 %var_2_1836, %var_2_1838
%var_2_1840 = select i1 %var_2_1839, i64 %var_2_1834, i64 %var_2_1833
; Matched:\<badref\>:  store i64 %var_2_1539, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1840, i64* %var_2_3, align 8
br i1 %var_2_1839, label %block_400f8f, label %block_.L_400fa0

block_400f8f:                                     ; preds = %block_.L_400f4a
%var_2_1841 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
%var_2_1842 = shl i32 %var_2_1841, 1
%var_2_1843 = icmp slt i32 %var_2_1841, 0
%var_2_1844 = icmp slt i32 %var_2_1842, 0
%var_2_1845 = xor i1 %var_2_1843, %var_2_1844
%var_2_1846 = zext i32 %var_2_1842 to i64
store i64 %var_2_1846, i64* %RAX.i271, align 8
%.lobit27 = lshr i32 %var_2_1841, 31
%var_2_1847 = trunc i32 %.lobit27 to i8
store i8 %var_2_1847, i8* %var_2_14, align 1
%var_2_1848 = and i32 %var_2_1842, 254
%var_2_1849 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1848)
%var_2_1850 = trunc i32 %var_2_1849 to i8
%var_2_1851 = and i8 %var_2_1850, 1
%var_2_1852 = xor i8 %var_2_1851, 1
store i8 %var_2_1852, i8* %var_2_21, align 1
store i8 0, i8* %var_2_27, align 1
%var_2_1853 = icmp eq i32 %var_2_1842, 0
%var_2_1854 = zext i1 %var_2_1853 to i8
store i8 %var_2_1854, i8* %var_2_30, align 1
%var_2_1855 = lshr i32 %var_2_1841, 30
%var_2_1856 = trunc i32 %var_2_1855 to i8
%var_2_1857 = and i8 %var_2_1856, 1
store i8 %var_2_1857, i8* %var_2_33, align 1
%var_2_1858 = zext i1 %var_2_1845 to i8
store i8 %var_2_1858, i8* %var_2_39, align 1
%var_2_1859 = add i64 %var_2_1840, 16
store i64 %var_2_1859, i64* %var_2_3, align 8
store i32 %var_2_1842, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  br label %block_.L_400fa0

block_.L_400fa0:                                  ; preds = %block_.L_400f4a, %block_400f8f
%var_2_1860 = phi i64 [ %var_2_1833, %block_.L_400f4a ], [ %var_2_1859, %block_400f8f ]
%var_2_1861 = load i64, i64* %RBP.i, align 8
%var_2_1862 = add i64 %var_2_1861, -64
%var_2_1863 = add i64 %var_2_1860, 9
store i64 %var_2_1863, i64* %var_2_3, align 8
%var_2_1864 = inttoptr i64 %var_2_1862 to i32*
%var_2_1865 = load i32, i32* %var_2_1864, align 4
store i8 0, i8* %var_2_14, align 1
; Matched:%var_2_1518:  %var_2_1518 = and i32 %var_2_1517, 255
; %var_2_1866 = and i32 %var_2_1865, 255
; Matched:%var_2_2733:  %var_2_2733 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2732) #12
; %var_2_1867 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1866)
; Matched:%var_2_2579:  %var_2_2579 = trunc i32 %var_2_2578 to i8
; %var_2_1868 = trunc i32 %var_2_1867 to i8
; Matched:%var_2_997:  %var_2_997 = and i8 %var_2_996, 1
; %var_2_1869 = and i8 %var_2_1868, 1
; Matched:%var_2_2581:  %var_2_2581 = xor i8 %var_2_2580, 1
; %var_2_1870 = xor i8 %var_2_1869, 1
; Matched:\<badref\>:  store i8 %var_2_1522, i8* %var_2_18, align 1, !tbaa !1281
; store i8 %var_2_1870, i8* %var_2_21, align 1
store i8 0, i8* %var_2_27, align 1
; Matched:%var_2_2737:  %var_2_2737 = icmp eq i32 %var_2_2731, 0
; %var_2_1871 = icmp eq i32 %var_2_1865, 0
; Matched:%var_2_1524:  %var_2_1524 = zext i1 %var_2_1523 to i8
; %var_2_1872 = zext i1 %var_2_1871 to i8
; Matched:\<badref\>:  store i8 %var_2_2738, i8* %var_2_20, align 1, !tbaa !1282
; store i8 %var_2_1872, i8* %var_2_30, align 1
%var_2_1873 = lshr i32 %var_2_1865, 31
%var_2_1874 = trunc i32 %var_2_1873 to i8
; Matched:\<badref\>:  store i8 %var_2_2585, i8* %var_2_21, align 1, !tbaa !1283
; store i8 %var_2_1874, i8* %var_2_33, align 1
store i8 0, i8* %var_2_39, align 1
%var_2_1875 = icmp ne i8 %var_2_1874, 0
%.v36 = select i1 %var_2_1875, i64 -259, i64 6
%var_2_1876 = add i64 %var_2_1863, %.v36
store i64 %var_2_1876, i64* %var_2_3, align 8
br i1 %var_2_1875, label %block_.L_400ea6, label %block_.L_400fd3

block_.L_400fd3:                                  ; preds = %block_.L_400fa0
  store i32 1000, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  store i64 ptrtoint (%G__0x4030fd_type* @G__0x4030fd to i64), i64* %RSI.i245, align 8
  store i64 0, i64* %RDX.i359, align 8
store i8 0, i8* %var_2_14, align 1
store i8 1, i8* %var_2_21, align 1
store i8 1, i8* %var_2_30, align 1
store i8 0, i8* %var_2_33, align 1
store i8 0, i8* %var_2_39, align 1
store i8 0, i8* %var_2_27, align 1
%var_2_1877 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
store i64 %var_2_1877, i64* %RDI.i594, align 8
; Matched:\<badref\>:  store i8 0, i8* %AL, align 1, !tbaa !1286
; store i8 0, i8* %AL.i1482, align 1
%var_2_1878 = add i64 %var_2_1876, -2751
%var_2_1879 = add i64 %var_2_1876, 63
%var_2_1880 = load i64, i64* %var_2_6, align 8
%var_2_1881 = add i64 %var_2_1880, -8
%var_2_1882 = inttoptr i64 %var_2_1881 to i64*
store i64 %var_2_1879, i64* %var_2_1882, align 8
; Matched:\<badref\>:  store i64 %var_2_2286, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1881, i64* %var_2_6, align 8
store i64 %var_2_1878, i64* %var_2_3, align 8
%var_2_1883 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %var_2_1812)
%var_2_1884 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x403111_type* @G__0x403111 to i64), i64* %RSI.i245, align 8
%var_2_1885 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
store i64 %var_2_1885, i64* %RDI.i594, align 8
%var_2_1886 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
%var_2_1887 = zext i32 %var_2_1886 to i64
store i64 %var_2_1887, i64* %RDX.i359, align 8
; Matched:%var_2_1135:  %var_2_1135 = load i64, i64* %RBP, align 8
; %var_2_1888 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1136:  %var_2_1136 = add i64 %var_2_1135, -956
; %var_2_1889 = add i64 %var_2_1888, -956
; Matched:%var_2_1137:  %var_2_1137 = load i32, i32* %EAX, align 4
; %var_2_1890 = load i32, i32* %EAX.i1471, align 4
; Matched:%var_2_1803:  %var_2_1803 = add i64 %var_2_1796, 31
; %var_2_1891 = add i64 %var_2_1884, 31
; Matched:\<badref\>:  store i64 %var_2_1803, i64* %PC, align 8
; store i64 %var_2_1891, i64* %var_2_3, align 8
; Matched:%var_2_1139:  %var_2_1139 = inttoptr i64 %var_2_1136 to i32*
; %var_2_1892 = inttoptr i64 %var_2_1889 to i32*
; Matched:\<badref\>:  store i32 %var_2_1137, i32* %var_2_1139, align 4
; store i32 %var_2_1890, i32* %var_2_1892, align 4
; Matched:%var_2_436:  %var_2_436 = load i64, i64* %PC, align 8
; %var_2_1893 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i8 0, i8* %AL, align 1, !tbaa !1286
; store i8 0, i8* %AL.i1482, align 1
; Matched:%var_2_1141:  %var_2_1141 = add i64 %var_2_1140, -2845
; %var_2_1894 = add i64 %var_2_1893, -2845
; Matched:%var_2_438:  %var_2_438 = add i64 %var_2_436, 7
; %var_2_1895 = add i64 %var_2_1893, 7
%var_2_1896 = load i64, i64* %var_2_6, align 8
%var_2_1897 = add i64 %var_2_1896, -8
; Matched:%var_2_2387:  %var_2_2387 = inttoptr i64 %var_2_2386 to i64*
; %var_2_1898 = inttoptr i64 %var_2_1897 to i64*
; Matched:\<badref\>:  store i64 %var_2_1170, i64* %var_2_1173, align 8
; store i64 %var_2_1895, i64* %var_2_1898, align 8
; Matched:\<badref\>:  store i64 %var_2_935, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1897, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1141, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1894, i64* %var_2_3, align 8
%var_2_1899 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %var_2_1883)
%var_2_1900 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x40302a_type* @G__0x40302a to i64), i64* %RSI.i245, align 8
%var_2_1901 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
store i64 %var_2_1901, i64* %RDI.i594, align 8
; Matched:%var_2_1149:  %var_2_1149 = load i64, i64* %RBP, align 8
; %var_2_1902 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1150:  %var_2_1150 = add i64 %var_2_1149, -960
; %var_2_1903 = add i64 %var_2_1902, -960
; Matched:%var_2_1151:  %var_2_1151 = load i32, i32* %EAX, align 4
; %var_2_1904 = load i32, i32* %EAX.i1471, align 4
; Matched:%var_2_140:  %var_2_140 = add i64 %var_2_135, 24
; %var_2_1905 = add i64 %var_2_1900, 24
; Matched:\<badref\>:  store i64 %var_2_1166, i64* %PC, align 8
; store i64 %var_2_1905, i64* %var_2_3, align 8
; Matched:%var_2_1153:  %var_2_1153 = inttoptr i64 %var_2_1150 to i32*
; %var_2_1906 = inttoptr i64 %var_2_1903 to i32*
; Matched:\<badref\>:  store i32 %var_2_1151, i32* %var_2_1153, align 4
; store i32 %var_2_1904, i32* %var_2_1906, align 4
; Matched:%var_2_2368:  %var_2_2368 = load i64, i64* %PC, align 8
; %var_2_1907 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i8 0, i8* %AL, align 1, !tbaa !1286
; store i8 0, i8* %AL.i1482, align 1
; Matched:%var_2_1155:  %var_2_1155 = add i64 %var_2_1154, -2876
; %var_2_1908 = add i64 %var_2_1907, -2876
; Matched:%var_2_2370:  %var_2_2370 = add i64 %var_2_2368, 7
; %var_2_1909 = add i64 %var_2_1907, 7
%var_2_1910 = load i64, i64* %var_2_6, align 8
%var_2_1911 = add i64 %var_2_1910, -8
; Matched:%var_2_1159:  %var_2_1159 = inttoptr i64 %var_2_1158 to i64*
; %var_2_1912 = inttoptr i64 %var_2_1911 to i64*
; Matched:\<badref\>:  store i64 %var_2_1156, i64* %var_2_1159, align 8
; store i64 %var_2_1909, i64* %var_2_1912, align 8
; Matched:\<badref\>:  store i64 %var_2_277, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1911, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1155, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1908, i64* %var_2_3, align 8
%var_2_1913 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %var_2_1899)
%var_2_1914 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x403062_type* @G__0x403062 to i64), i64* %RSI.i245, align 8
%var_2_1915 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
store i64 %var_2_1915, i64* %RDI.i594, align 8
; Matched:%var_2_1163:  %var_2_1163 = load i64, i64* %RBP, align 8
; %var_2_1916 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1164:  %var_2_1164 = add i64 %var_2_1163, -964
; %var_2_1917 = add i64 %var_2_1916, -964
; Matched:%var_2_1165:  %var_2_1165 = load i32, i32* %EAX, align 4
; %var_2_1918 = load i32, i32* %EAX.i1471, align 4
; Matched:%var_2_434:  %var_2_434 = add i64 %var_2_429, 24
; %var_2_1919 = add i64 %var_2_1914, 24
; Matched:\<badref\>:  store i64 %var_2_1831, i64* %PC, align 8
; store i64 %var_2_1919, i64* %var_2_3, align 8
; Matched:%var_2_1167:  %var_2_1167 = inttoptr i64 %var_2_1164 to i32*
; %var_2_1920 = inttoptr i64 %var_2_1917 to i32*
; Matched:\<badref\>:  store i32 %var_2_1165, i32* %var_2_1167, align 4
; store i32 %var_2_1918, i32* %var_2_1920, align 4
; Matched:%var_2_2802:  %var_2_2802 = load i64, i64* %PC, align 8
; %var_2_1921 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i8 0, i8* %AL, align 1, !tbaa !1286
; store i8 0, i8* %AL.i1482, align 1
; Matched:%var_2_1169:  %var_2_1169 = add i64 %var_2_1168, -2907
; %var_2_1922 = add i64 %var_2_1921, -2907
; Matched:%var_2_2356:  %var_2_2356 = add i64 %var_2_2354, 7
; %var_2_1923 = add i64 %var_2_1921, 7
%var_2_1924 = load i64, i64* %var_2_6, align 8
%var_2_1925 = add i64 %var_2_1924, -8
; Matched:%var_2_1838:  %var_2_1838 = inttoptr i64 %var_2_1837 to i64*
; %var_2_1926 = inttoptr i64 %var_2_1925 to i64*
; Matched:\<badref\>:  store i64 %var_2_1142, i64* %var_2_1145, align 8
; store i64 %var_2_1923, i64* %var_2_1926, align 8
; Matched:\<badref\>:  store i64 %var_2_985, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1925, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1169, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1922, i64* %var_2_3, align 8
%var_2_1927 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %var_2_1913)
%var_2_1928 = load i64, i64* %var_2_3, align 8
store i32 0, i32* %var_2_47, align 1
store i32 0, i32* %var_2_281, align 1
store i32 0, i32* %var_2_283, align 1
store i32 0, i32* %var_2_285, align 1
%var_2_1929 = load <2 x i32>, <2 x i32>* %.pre-phi, align 1
%var_2_1930 = load <2 x i32>, <2 x i32>* %.pre-phi91, align 1
; Matched:%var_2_1574:  %var_2_1574 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_604040__bss_type* @seg_604040__bss to i64), i64 163792) to i32*), align 16
; %var_2_1931 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
; Matched:%var_2_1179:  %var_2_1179 = sitofp i32 %var_2_1178 to float
; %var_2_1932 = sitofp i32 %var_2_1931 to float
; Matched:\<badref\>:  store float %var_2_1179, float* %var_2_2113, align 1, !tbaa !1265
; store float %var_2_1932, float* %var_2_944, align 1
%var_2_1933 = extractelement <2 x i32> %var_2_1929, i32 1
; Matched:\<badref\>:  store i32 %var_2_3076, i32* %var_2_1912, align 1, !tbaa !1265
; store i32 %var_2_1933, i32* %var_2_603, align 1
%var_2_1934 = extractelement <2 x i32> %var_2_1930, i32 0
; Matched:\<badref\>:  store i32 %var_2_1847, i32* %var_2_1913, align 1, !tbaa !1265
; store i32 %var_2_1934, i32* %var_2_604, align 1
%var_2_1935 = extractelement <2 x i32> %var_2_1930, i32 1
; Matched:\<badref\>:  store i32 %var_2_1195, i32* %var_2_1915, align 1, !tbaa !1265
; store i32 %var_2_1935, i32* %var_2_606, align 1
; Matched:%var_2_1183:  %var_2_1183 = load i64, i64* %RBP, align 8
; %var_2_1936 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1184:  %var_2_1184 = add i64 %var_2_1183, -72
; %var_2_1937 = add i64 %var_2_1936, -72
; Matched:%var_2_1313:  %var_2_1313 = add i64 %var_2_1308, 17
; %var_2_1938 = add i64 %var_2_1928, 17
; Matched:\<badref\>:  store i64 %var_2_744, i64* %PC, align 8
; store i64 %var_2_1938, i64* %var_2_3, align 8
%var_2_1939 = load <2 x float>, <2 x float>* %var_2_1037, align 1
%var_2_1940 = load <2 x i32>, <2 x i32>* %.pre-phi91, align 1
; Matched:%var_2_1188:  %var_2_1188 = inttoptr i64 %var_2_1184 to float*
; %var_2_1941 = inttoptr i64 %var_2_1937 to float*
; Matched:%var_2_1189:  %var_2_1189 = load float, float* %var_2_1188, align 4
; %var_2_1942 = load float, float* %var_2_1941, align 4
%var_2_1943 = extractelement <2 x float> %var_2_1939, i32 0
; Matched:%var_2_1191:  %var_2_1191 = fmul float %var_2_1190, %var_2_1189
; %var_2_1944 = fmul float %var_2_1943, %var_2_1942
; Matched:\<badref\>:  store float %var_2_1191, float* %var_2_2113, align 1, !tbaa !1265
; store float %var_2_1944, float* %var_2_944, align 1
%var_2_1945 = bitcast <2 x float> %var_2_1939 to <2 x i32>
%var_2_1946 = extractelement <2 x i32> %var_2_1945, i32 1
; Matched:\<badref\>:  store i32 %var_2_1859, i32* %var_2_1912, align 1, !tbaa !1265
; store i32 %var_2_1946, i32* %var_2_603, align 1
%var_2_1947 = extractelement <2 x i32> %var_2_1940, i32 0
; Matched:\<badref\>:  store i32 %var_2_1860, i32* %var_2_1913, align 1, !tbaa !1265
; store i32 %var_2_1947, i32* %var_2_604, align 1
%var_2_1948 = extractelement <2 x i32> %var_2_1940, i32 1
; Matched:\<badref\>:  store i32 %var_2_1182, i32* %var_2_1915, align 1, !tbaa !1265
; store i32 %var_2_1948, i32* %var_2_606, align 1
; Matched:%var_2_1196:  %var_2_1196 = add i64 %var_2_1183, -44
; %var_2_1949 = add i64 %var_2_1936, -44
; Matched:%var_2_1344:  %var_2_1344 = add i64 %var_2_1336, 22
; %var_2_1950 = add i64 %var_2_1928, 22
; Matched:\<badref\>:  store i64 %var_2_2881, i64* %PC, align 8
; store i64 %var_2_1950, i64* %var_2_3, align 8
%var_2_1951 = load <2 x float>, <2 x float>* %var_2_1037, align 1
%var_2_1952 = extractelement <2 x float> %var_2_1951, i32 0
; Matched:%var_2_1200:  %var_2_1200 = inttoptr i64 %var_2_1196 to float*
; %var_2_1953 = inttoptr i64 %var_2_1949 to float*
; Matched:\<badref\>:  store float %var_2_1199, float* %var_2_1200, align 4
; store float %var_2_1952, float* %var_2_1953, align 4
%var_2_1954 = load i64, i64* %var_2_3, align 8
%var_2_1955 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_1956 = extractelement <2 x float> %var_2_1955, i32 0
store float %var_2_1956, float* bitcast (%G_0x62bb9c_type* @G_0x62bb9c to float*), align 8
  store i32 1, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
; Matched:%var_2_1204:  %var_2_1204 = load i64, i64* %RBP, align 8
; %var_2_1957 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1205:  %var_2_1205 = add i64 %var_2_1204, -968
; %var_2_1958 = add i64 %var_2_1957, -968
; Matched:%var_2_1206:  %var_2_1206 = load i32, i32* %EAX, align 4
; %var_2_1959 = load i32, i32* %EAX.i1471, align 4
; Matched:%var_2_2402:  %var_2_2402 = add i64 %var_2_2389, 26
; %var_2_1960 = add i64 %var_2_1954, 26
; Matched:\<badref\>:  store i64 %var_2_1207, i64* %PC, align 8
; store i64 %var_2_1960, i64* %var_2_3, align 8
; Matched:%var_2_1208:  %var_2_1208 = inttoptr i64 %var_2_1205 to i32*
; %var_2_1961 = inttoptr i64 %var_2_1958 to i32*
; Matched:\<badref\>:  store i32 %var_2_1206, i32* %var_2_1208, align 4
; store i32 %var_2_1959, i32* %var_2_1961, align 4
%var_2_1962 = bitcast i64* %var_2_596 to double*
%var_2_1963 = bitcast %union.VectorReg* %var_2_254 to <2 x i32>*
%var_2_1964 = bitcast i64* %var_2_263 to <2 x i32>*
; Matched:%var_2_1212:  %var_2_1212 = bitcast %union.VectorReg* %var_2_9 to float*
; %var_2_1965 = bitcast %union.VectorReg* %var_2_254 to float*
%var_2_1966 = bitcast %union.VectorReg* %var_2_254 to <2 x float>*
%.pre79 = load i64, i64* %var_2_3, align 8
  %.pre80 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
%var_2_1967 = bitcast i64* %var_2_50 to <2 x i32>*
  br label %block_.L_401082

block_.L_401082:                                  ; preds = %block_.L_4011cb, %block_.L_400fd3
%var_2_1968 = phi i32 [ %var_2_2415, %block_.L_4011cb ], [ %.pre80, %block_.L_400fd3 ]
%var_2_1969 = phi i64 [ %var_2_2438, %block_.L_4011cb ], [ %.pre79, %block_.L_400fd3 ]
%var_2_1970 = add i32 %var_2_1968, -6
; Matched:%var_2_3116:  %var_2_3116 = icmp ult i32 %var_2_3113, 6
; %var_2_1971 = icmp ult i32 %var_2_1968, 6
; Matched:%var_2_3117:  %var_2_3117 = zext i1 %var_2_3116 to i8
; %var_2_1972 = zext i1 %var_2_1971 to i8
; Matched:\<badref\>:  store i8 %var_2_3117, i8* %var_2_17, align 1, !tbaa !1267
; store i8 %var_2_1972, i8* %var_2_14, align 1
; Matched:%var_2_3118:  %var_2_3118 = and i32 %var_2_3115, 255
; %var_2_1973 = and i32 %var_2_1970, 255
; Matched:%var_2_3119:  %var_2_3119 = tail call i32 @llvm.ctpop.i32(i32 %var_2_3118) #12
; %var_2_1974 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1973)
; Matched:%var_2_3120:  %var_2_3120 = trunc i32 %var_2_3119 to i8
; %var_2_1975 = trunc i32 %var_2_1974 to i8
; Matched:%var_2_3121:  %var_2_3121 = and i8 %var_2_3120, 1
; %var_2_1976 = and i8 %var_2_1975, 1
; Matched:%var_2_3122:  %var_2_3122 = xor i8 %var_2_3121, 1
; %var_2_1977 = xor i8 %var_2_1976, 1
; Matched:\<badref\>:  store i8 %var_2_3122, i8* %var_2_18, align 1, !tbaa !1281
; store i8 %var_2_1977, i8* %var_2_21, align 1
; Matched:%var_2_3123:  %var_2_3123 = xor i32 %var_2_3115, %var_2_3113
; %var_2_1978 = xor i32 %var_2_1970, %var_2_1968
; Matched:%var_2_3124:  %var_2_3124 = lshr i32 %var_2_3123, 4
; %var_2_1979 = lshr i32 %var_2_1978, 4
; Matched:%var_2_3125:  %var_2_3125 = trunc i32 %var_2_3124 to i8
; %var_2_1980 = trunc i32 %var_2_1979 to i8
; Matched:%var_2_3126:  %var_2_3126 = and i8 %var_2_3125, 1
; %var_2_1981 = and i8 %var_2_1980, 1
; Matched:\<badref\>:  store i8 %var_2_3126, i8* %var_2_19, align 1, !tbaa !1285
; store i8 %var_2_1981, i8* %var_2_27, align 1
; Matched:%var_2_3127:  %var_2_3127 = icmp eq i32 %var_2_3115, 0
; %var_2_1982 = icmp eq i32 %var_2_1970, 0
; Matched:%var_2_3128:  %var_2_3128 = zext i1 %var_2_3127 to i8
; %var_2_1983 = zext i1 %var_2_1982 to i8
; Matched:\<badref\>:  store i8 %var_2_3128, i8* %var_2_20, align 1, !tbaa !1282
; store i8 %var_2_1983, i8* %var_2_30, align 1
%var_2_1984 = lshr i32 %var_2_1970, 31
%var_2_1985 = trunc i32 %var_2_1984 to i8
; Matched:\<badref\>:  store i8 %var_2_3130, i8* %var_2_21, align 1, !tbaa !1283
; store i8 %var_2_1985, i8* %var_2_33, align 1
%var_2_1986 = lshr i32 %var_2_1968, 31
%var_2_1987 = xor i32 %var_2_1984, %var_2_1986
%var_2_1988 = add nuw nsw i32 %var_2_1987, %var_2_1986
%var_2_1989 = icmp eq i32 %var_2_1988, 2
; Matched:%var_2_3135:  %var_2_3135 = zext i1 %var_2_3134 to i8
; %var_2_1990 = zext i1 %var_2_1989 to i8
; Matched:\<badref\>:  store i8 %var_2_3135, i8* %var_2_22, align 1, !tbaa !1284
; store i8 %var_2_1990, i8* %var_2_39, align 1
%var_2_1991 = icmp ne i8 %var_2_1985, 0
%var_2_1992 = xor i1 %var_2_1991, %var_2_1989
%.v97 = select i1 %var_2_1992, i64 14, i64 623
%var_2_1993 = add i64 %var_2_1969, %.v97
; Matched:\<badref\>:  store i64 %var_2_3138, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1993, i64* %var_2_3, align 8
br i1 %var_2_1992, label %block_401090, label %block_.L_4012f1

block_401090:                                     ; preds = %block_.L_401082
; Matched:%var_2_2711:  %var_2_2711 = add i64 %var_2_3138, -2720
; %var_2_1994 = add i64 %var_2_1993, -2720
; Matched:%var_2_2712:  %var_2_2712 = add i64 %var_2_3138, 5
; %var_2_1995 = add i64 %var_2_1993, 5
%var_2_1996 = load i64, i64* %var_2_6, align 8
%var_2_1997 = add i64 %var_2_1996, -8
; Matched:%var_2_2715:  %var_2_2715 = inttoptr i64 %var_2_2714 to i64*
; %var_2_1998 = inttoptr i64 %var_2_1997 to i64*
; Matched:\<badref\>:  store i64 %var_2_2712, i64* %var_2_2715, align 8
; store i64 %var_2_1995, i64* %var_2_1998, align 8
; Matched:\<badref\>:  store i64 %var_2_1477, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1997, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_2711, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1994, i64* %var_2_3, align 8
; Matched:%var_2_2716:  %var_2_2716 = tail call %struct.Memory* @sub_4005f0_second_renamed_(%struct.State* nonnull %0, i64 %var_2_2711, %struct.Memory* %var_2_1174)
; %call2_401090 = tail call %struct.Memory* @sub_4005f0.second(%struct.State* nonnull %0, i64 %var_2_1994, %struct.Memory* %var_2_1927)
; Matched:%var_2_328:  %var_2_328 = load i64, i64* %RBP, align 8
; %var_2_1999 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_329:  %var_2_329 = add i64 %var_2_328, -40
; %var_2_2000 = add i64 %var_2_1999, -40
%var_2_2001 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_700:  %var_2_700 = add i64 %var_2_699, 5
; %var_2_2002 = add i64 %var_2_2001, 5
; Matched:\<badref\>:  store i64 %var_2_2720, i64* %PC, align 8
; store i64 %var_2_2002, i64* %var_2_3, align 8
%var_2_2003 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_2004 = extractelement <2 x float> %var_2_2003, i32 0
; Matched:%var_2_2723:  %var_2_2723 = inttoptr i64 %var_2_2718 to float*
; %var_2_2005 = inttoptr i64 %var_2_2000 to float*
; Matched:\<badref\>:  store float %var_2_1723, float* %var_2_1724, align 4
; store float %var_2_2004, float* %var_2_2005, align 4
%var_2_2006 = load i64, i64* %var_2_3, align 8
%var_2_2007 = add i64 %var_2_2006, 11
; Matched:\<badref\>:  store i64 %var_2_95, i64* %PC, align 8
; store i64 %var_2_2007, i64* %var_2_3, align 8
  store i32 0, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  br label %block_.L_4010a5

block_.L_4010a5:                                  ; preds = %block_4010b9, %block_401090
%var_2_2008 = phi i32 [ %var_2_2062, %block_4010b9 ], [ 0, %block_401090 ]
; Matched:%var_2_1614:  %var_2_1614 = phi i64 [ %var_2_2103, %block_400ea6 ], [ %var_2_1064, %block_400ed8 ]
; %var_2_2009 = phi i64 [ %var_2_2085, %block_4010b9 ], [ %var_2_2007, %block_401090 ]
; Matched:%var_2_467:  %var_2_467 = zext i32 %var_2_465 to i64
; %var_2_2010 = zext i32 %var_2_2008 to i64
; Matched:\<badref\>:  store i64 %var_2_839, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2010, i64* %RAX.i271, align 8
%var_2_2011 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
%var_2_2012 = sub i32 %var_2_2008, %var_2_2011
%var_2_2013 = icmp ult i32 %var_2_2008, %var_2_2011
%var_2_2014 = zext i1 %var_2_2013 to i8
store i8 %var_2_2014, i8* %var_2_14, align 1
%var_2_2015 = and i32 %var_2_2012, 255
%var_2_2016 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2015)
%var_2_2017 = trunc i32 %var_2_2016 to i8
%var_2_2018 = and i8 %var_2_2017, 1
%var_2_2019 = xor i8 %var_2_2018, 1
store i8 %var_2_2019, i8* %var_2_21, align 1
%var_2_2020 = xor i32 %var_2_2011, %var_2_2008
%var_2_2021 = xor i32 %var_2_2020, %var_2_2012
%var_2_2022 = lshr i32 %var_2_2021, 4
%var_2_2023 = trunc i32 %var_2_2022 to i8
%var_2_2024 = and i8 %var_2_2023, 1
store i8 %var_2_2024, i8* %var_2_27, align 1
%var_2_2025 = icmp eq i32 %var_2_2012, 0
%var_2_2026 = zext i1 %var_2_2025 to i8
store i8 %var_2_2026, i8* %var_2_30, align 1
%var_2_2027 = lshr i32 %var_2_2012, 31
%var_2_2028 = trunc i32 %var_2_2027 to i8
store i8 %var_2_2028, i8* %var_2_33, align 1
%var_2_2029 = lshr i32 %var_2_2008, 31
%var_2_2030 = lshr i32 %var_2_2011, 31
%var_2_2031 = xor i32 %var_2_2030, %var_2_2029
%var_2_2032 = xor i32 %var_2_2027, %var_2_2029
%var_2_2033 = add nuw nsw i32 %var_2_2032, %var_2_2031
%var_2_2034 = icmp eq i32 %var_2_2033, 2
%var_2_2035 = zext i1 %var_2_2034 to i8
store i8 %var_2_2035, i8* %var_2_39, align 1
%var_2_2036 = icmp ne i8 %var_2_2028, 0
%var_2_2037 = xor i1 %var_2_2036, %var_2_2034
; Matched:  %.v101 = select i1 %var_2_1710, i64 20, i64 134
; %.v102 = select i1 %var_2_2037, i64 20, i64 134
; Matched:%var_2_1711:  %var_2_1711 = add i64 %var_2_1682, %.v101
; %var_2_2038 = add i64 %var_2_2009, %.v102
; Matched:\<badref\>:  store i64 %var_2_902, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2038, i64* %var_2_3, align 8
br i1 %var_2_2037, label %block_4010b9, label %block_.L_40112b

block_4010b9:                                     ; preds = %block_.L_4010a5
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %RDI.i594, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %RCX.i347, align 8
%var_2_2039 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2010:  %var_2_2010 = add i64 %var_2_2009, -20
; %var_2_2040 = add i64 %var_2_2039, -20
; Matched:\<badref\>:  store i64 %var_2_2632, i64* %R8, align 8, !tbaa !1261
; store i64 %var_2_2040, i64* %var_2_57, align 8
%var_2_2041 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
%var_2_2042 = zext i32 %var_2_2041 to i64
store i64 %var_2_2042, i64* %RSI.i245, align 8
%var_2_2043 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
%var_2_2044 = zext i32 %var_2_2043 to i64
store i64 %var_2_2044, i64* %RDX.i359, align 8
; Matched:%var_2_2015:  %var_2_2015 = add i64 %var_2_902, 1703
; %var_2_2045 = add i64 %var_2_2038, 1703
; Matched:%var_2_2016:  %var_2_2016 = add i64 %var_2_902, 43
; %var_2_2046 = add i64 %var_2_2038, 43
%var_2_2047 = load i64, i64* %var_2_6, align 8
%var_2_2048 = add i64 %var_2_2047, -8
; Matched:%var_2_1026:  %var_2_1026 = inttoptr i64 %var_2_1025 to i64*
; %var_2_2049 = inttoptr i64 %var_2_2048 to i64*
; Matched:\<badref\>:  store i64 %var_2_1023, i64* %var_2_1026, align 8
; store i64 %var_2_2046, i64* %var_2_2049, align 8
; Matched:\<badref\>:  store i64 %var_2_3101, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_2048, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_2015, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2045, i64* %var_2_3, align 8
; Matched:%var_2_2020:  %var_2_2020 = tail call %struct.Memory* @sub_401760_matgen_renamed_(%struct.State* nonnull %0, i64 %var_2_2015, %struct.Memory* %var_2_1174)
; %call2_4010df = tail call %struct.Memory* @sub_401760.matgen(%struct.State* nonnull %0, i64 %var_2_2045, %struct.Memory* %var_2_1927)
; Matched:%var_2_2021:  %var_2_2021 = load i64, i64* %PC, align 8
; %var_2_2050 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %RDI.i594, align 8
  store i64 ptrtoint (%G__0x62b7a0_type* @G__0x62b7a0 to i64), i64* %RCX.i347, align 8
store i64 ptrtoint (%G__0x62bac0_type* @G__0x62bac0 to i64), i64* %var_2_57, align 8
%var_2_2051 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
%var_2_2052 = zext i32 %var_2_2051 to i64
store i64 %var_2_2052, i64* %RSI.i245, align 8
%var_2_2053 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
%var_2_2054 = zext i32 %var_2_2053 to i64
store i64 %var_2_2054, i64* %RDX.i359, align 8
; Matched:%var_2_2026:  %var_2_2026 = add i64 %var_2_2021, 2124
; %var_2_2055 = add i64 %var_2_2050, 2124
; Matched:%var_2_2027:  %var_2_2027 = add i64 %var_2_2021, 49
; %var_2_2056 = add i64 %var_2_2050, 49
%var_2_2057 = load i64, i64* %var_2_6, align 8
%var_2_2058 = add i64 %var_2_2057, -8
; Matched:%var_2_2030:  %var_2_2030 = inttoptr i64 %var_2_2029 to i64*
; %var_2_2059 = inttoptr i64 %var_2_2058 to i64*
; Matched:\<badref\>:  store i64 %var_2_2027, i64* %var_2_2030, align 8
; store i64 %var_2_2056, i64* %var_2_2059, align 8
; Matched:\<badref\>:  store i64 %var_2_2476, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_2058, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_2026, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2055, i64* %var_2_3, align 8
; Matched:%var_2_2031:  %var_2_2031 = tail call %struct.Memory* @sub_401930_dgefa_renamed_(%struct.State* nonnull %0, i64 %var_2_2026, %struct.Memory* %var_2_1174)
; %call2_401110 = tail call %struct.Memory* @sub_401930.dgefa(%struct.State* nonnull %0, i64 %var_2_2055, %struct.Memory* %var_2_1927)
; Matched:%var_2_1039:  %var_2_1039 = load i64, i64* %PC, align 8
; %var_2_2060 = load i64, i64* %var_2_3, align 8
%var_2_2061 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
%var_2_2062 = add i32 %var_2_2061, 1
%var_2_2063 = zext i32 %var_2_2062 to i64
store i64 %var_2_2063, i64* %RAX.i271, align 8
%var_2_2064 = icmp eq i32 %var_2_2061, -1
%var_2_2065 = icmp eq i32 %var_2_2062, 0
%var_2_2066 = or i1 %var_2_2064, %var_2_2065
%var_2_2067 = zext i1 %var_2_2066 to i8
store i8 %var_2_2067, i8* %var_2_14, align 1
%var_2_2068 = and i32 %var_2_2062, 255
%var_2_2069 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2068)
%var_2_2070 = trunc i32 %var_2_2069 to i8
%var_2_2071 = and i8 %var_2_2070, 1
%var_2_2072 = xor i8 %var_2_2071, 1
store i8 %var_2_2072, i8* %var_2_21, align 1
%var_2_2073 = xor i32 %var_2_2062, %var_2_2061
%var_2_2074 = lshr i32 %var_2_2073, 4
%var_2_2075 = trunc i32 %var_2_2074 to i8
%var_2_2076 = and i8 %var_2_2075, 1
store i8 %var_2_2076, i8* %var_2_27, align 1
%var_2_2077 = zext i1 %var_2_2065 to i8
store i8 %var_2_2077, i8* %var_2_30, align 1
%var_2_2078 = lshr i32 %var_2_2062, 31
%var_2_2079 = trunc i32 %var_2_2078 to i8
store i8 %var_2_2079, i8* %var_2_33, align 1
%var_2_2080 = lshr i32 %var_2_2061, 31
%var_2_2081 = xor i32 %var_2_2078, %var_2_2080
%var_2_2082 = add nuw nsw i32 %var_2_2081, %var_2_2078
%var_2_2083 = icmp eq i32 %var_2_2082, 2
%var_2_2084 = zext i1 %var_2_2083 to i8
store i8 %var_2_2084, i8* %var_2_39, align 1
store i32 %var_2_2062, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
; Matched:%var_2_1064:  %var_2_1064 = add i64 %var_2_1039, -112
; %var_2_2085 = add i64 %var_2_2060, -112
; Matched:\<badref\>:  store i64 %var_2_1124, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2085, i64* %var_2_3, align 8
  br label %block_.L_4010a5

block_.L_40112b:                                  ; preds = %block_.L_4010a5
; Matched:%var_2_3040:  %var_2_3040 = add i64 %var_2_902, -2875
; %var_2_2086 = add i64 %var_2_2038, -2875
; Matched:%var_2_1475:  %var_2_1475 = add i64 %var_2_1643, 5
; %var_2_2087 = add i64 %var_2_2038, 5
%var_2_2088 = load i64, i64* %var_2_6, align 8
%var_2_2089 = add i64 %var_2_2088, -8
; Matched:%var_2_1478:  %var_2_1478 = inttoptr i64 %var_2_1477 to i64*
; %var_2_2090 = inttoptr i64 %var_2_2089 to i64*
; Matched:\<badref\>:  store i64 %var_2_1541, i64* %var_2_1544, align 8
; store i64 %var_2_2087, i64* %var_2_2090, align 8
; Matched:\<badref\>:  store i64 %var_2_627, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_2089, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_3040, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2086, i64* %var_2_3, align 8
; Matched:%var_2_3045:  %var_2_3045 = tail call %struct.Memory* @sub_4005f0_second_renamed_(%struct.State* nonnull %0, i64 %var_2_3040, %struct.Memory* %var_2_1174)
; %call2_40112b = tail call %struct.Memory* @sub_4005f0.second(%struct.State* nonnull %0, i64 %var_2_2086, %struct.Memory* %var_2_1927)
%var_2_2091 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_634:  %var_2_634 = add i64 %var_2_633, -40
; %var_2_2092 = add i64 %var_2_2091, -40
%var_2_2093 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_3107:  %var_2_3107 = add i64 %var_2_3106, 5
; %var_2_2094 = add i64 %var_2_2093, 5
; Matched:\<badref\>:  store i64 %var_2_1744, i64* %PC, align 8
; store i64 %var_2_2094, i64* %var_2_3, align 8
%var_2_2095 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_2096 = load <2 x i32>, <2 x i32>* %var_2_257, align 1
; Matched:%var_2_1552:  %var_2_1552 = inttoptr i64 %var_2_1547 to float*
; %var_2_2097 = inttoptr i64 %var_2_2092 to float*
; Matched:%var_2_1553:  %var_2_1553 = load float, float* %var_2_1552, align 4
; %var_2_2098 = load float, float* %var_2_2097, align 4
%var_2_2099 = extractelement <2 x float> %var_2_2095, i32 0
; Matched:%var_2_3055:  %var_2_3055 = fsub float %var_2_3054, %var_2_3053
; %var_2_2100 = fsub float %var_2_2099, %var_2_2098
; Matched:\<badref\>:  store float %var_2_360, float* %var_2_25, align 1, !tbaa !1265
; store float %var_2_2100, float* %var_2_46, align 1
%var_2_2101 = bitcast <2 x float> %var_2_2095 to <2 x i32>
%var_2_2102 = extractelement <2 x i32> %var_2_2101, i32 1
; Matched:\<badref\>:  store i32 %var_2_798, i32* %var_2_245, align 1, !tbaa !1265
; store i32 %var_2_2102, i32* %var_2_281, align 1
%var_2_2103 = extractelement <2 x i32> %var_2_2096, i32 0
; Matched:\<badref\>:  store i32 %var_2_372, i32* %var_2_247, align 1, !tbaa !1265
; store i32 %var_2_2103, i32* %var_2_283, align 1
%var_2_2104 = extractelement <2 x i32> %var_2_2096, i32 1
; Matched:\<badref\>:  store i32 %var_2_2185, i32* %var_2_249, align 1, !tbaa !1265
; store i32 %var_2_2104, i32* %var_2_285, align 1
; Matched:%var_2_1560:  %var_2_1560 = add i64 %var_2_1546, -44
; %var_2_2105 = add i64 %var_2_2091, -44
; Matched:%var_2_1561:  %var_2_1561 = add i64 %var_2_1548, 10
; %var_2_2106 = add i64 %var_2_2093, 10
; Matched:\<badref\>:  store i64 %var_2_768, i64* %PC, align 8
; store i64 %var_2_2106, i64* %var_2_3, align 8
%var_2_2107 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_2108 = load <2 x i32>, <2 x i32>* %var_2_257, align 1
; Matched:%var_2_1564:  %var_2_1564 = inttoptr i64 %var_2_1560 to float*
; %var_2_2109 = inttoptr i64 %var_2_2105 to float*
; Matched:%var_2_1565:  %var_2_1565 = load float, float* %var_2_1564, align 4
; %var_2_2110 = load float, float* %var_2_2109, align 4
%var_2_2111 = extractelement <2 x float> %var_2_2107, i32 0
; Matched:%var_2_1567:  %var_2_1567 = fsub float %var_2_1566, %var_2_1565
; %var_2_2112 = fsub float %var_2_2111, %var_2_2110
; Matched:\<badref\>:  store float %var_2_3067, float* %var_2_25, align 1, !tbaa !1265
; store float %var_2_2112, float* %var_2_46, align 1
%var_2_2113 = bitcast <2 x float> %var_2_2107 to <2 x i32>
%var_2_2114 = extractelement <2 x i32> %var_2_2113, i32 1
; Matched:\<badref\>:  store i32 %var_2_1490, i32* %var_2_245, align 1, !tbaa !1265
; store i32 %var_2_2114, i32* %var_2_281, align 1
%var_2_2115 = extractelement <2 x i32> %var_2_2108, i32 0
; Matched:\<badref\>:  store i32 %var_2_1757, i32* %var_2_247, align 1, !tbaa !1265
; store i32 %var_2_2115, i32* %var_2_283, align 1
%var_2_2116 = extractelement <2 x i32> %var_2_2108, i32 1
; Matched:\<badref\>:  store i32 %var_2_3071, i32* %var_2_249, align 1, !tbaa !1265
; store i32 %var_2_2116, i32* %var_2_285, align 1
%var_2_2117 = load <2 x i32>, <2 x i32>* %.pre-phi, align 1
%var_2_2118 = load <2 x i32>, <2 x i32>* %.pre-phi91, align 1
; Matched:%var_2_1178:  %var_2_1178 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_604040__bss_type* @seg_604040__bss to i64), i64 163792) to i32*), align 16
; %var_2_2119 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
; Matched:%var_2_1575:  %var_2_1575 = sitofp i32 %var_2_1574 to float
; %var_2_2120 = sitofp i32 %var_2_2119 to float
; Matched:\<badref\>:  store float %var_2_1575, float* %var_2_2113, align 1, !tbaa !1265
; store float %var_2_2120, float* %var_2_944, align 1
%var_2_2121 = extractelement <2 x i32> %var_2_2117, i32 1
; Matched:\<badref\>:  store i32 %var_2_1846, i32* %var_2_1912, align 1, !tbaa !1265
; store i32 %var_2_2121, i32* %var_2_603, align 1
%var_2_2122 = extractelement <2 x i32> %var_2_2118, i32 0
; Matched:\<badref\>:  store i32 %var_2_1181, i32* %var_2_1913, align 1, !tbaa !1265
; store i32 %var_2_2122, i32* %var_2_604, align 1
%var_2_2123 = extractelement <2 x i32> %var_2_2118, i32 1
; Matched:\<badref\>:  store i32 %var_2_1861, i32* %var_2_1915, align 1, !tbaa !1265
; store i32 %var_2_2123, i32* %var_2_606, align 1
%var_2_2124 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_2125 = load <2 x i32>, <2 x i32>* %var_2_257, align 1
%var_2_2126 = load <2 x float>, <2 x float>* %var_2_1037, align 1
%var_2_2127 = extractelement <2 x float> %var_2_2124, i32 0
%var_2_2128 = extractelement <2 x float> %var_2_2126, i32 0
; Matched:%var_2_3084:  %var_2_3084 = fdiv float %var_2_3082, %var_2_3083
; %var_2_2129 = fdiv float %var_2_2127, %var_2_2128
; Matched:\<badref\>:  store float %var_2_3084, float* %var_2_25, align 1, !tbaa !1265
; store float %var_2_2129, float* %var_2_46, align 1
%var_2_2130 = bitcast <2 x float> %var_2_2124 to <2 x i32>
%var_2_2131 = extractelement <2 x i32> %var_2_2130, i32 1
; Matched:\<badref\>:  store i32 %var_2_688, i32* %var_2_245, align 1, !tbaa !1265
; store i32 %var_2_2131, i32* %var_2_281, align 1
%var_2_2132 = extractelement <2 x i32> %var_2_2125, i32 0
; Matched:\<badref\>:  store i32 %var_2_729, i32* %var_2_247, align 1, !tbaa !1265
; store i32 %var_2_2132, i32* %var_2_283, align 1
%var_2_2133 = extractelement <2 x i32> %var_2_2125, i32 1
; Matched:\<badref\>:  store i32 %var_2_1588, i32* %var_2_249, align 1, !tbaa !1265
; store i32 %var_2_2133, i32* %var_2_285, align 1
%var_2_2134 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
%var_2_2135 = sext i32 %var_2_2134 to i64
; Matched:\<badref\>:  store i64 %var_2_1378, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2135, i64* %RAX.i271, align 8
%var_2_2136 = shl nsw i64 %var_2_2135, 2
%var_2_2137 = add nsw i64 %var_2_2136, 6470352
%var_2_2138 = add i64 %var_2_2093, 40
store i64 %var_2_2138, i64* %var_2_3, align 8
%var_2_2139 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_2140 = extractelement <2 x float> %var_2_2139, i32 0
%var_2_2141 = inttoptr i64 %var_2_2137 to float*
store float %var_2_2140, float* %var_2_2141, align 4
; Matched:%var_2_273:  %var_2_273 = load i64, i64* %PC, align 8
; %var_2_2142 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_3098:  %var_2_3098 = add i64 %var_2_3097, -2920
; %var_2_2143 = add i64 %var_2_2142, -2920
; Matched:%var_2_275:  %var_2_275 = add i64 %var_2_273, 5
; %var_2_2144 = add i64 %var_2_2142, 5
%var_2_2145 = load i64, i64* %var_2_6, align 8
%var_2_2146 = add i64 %var_2_2145, -8
; Matched:%var_2_3102:  %var_2_3102 = inttoptr i64 %var_2_3101 to i64*
; %var_2_2147 = inttoptr i64 %var_2_2146 to i64*
; Matched:\<badref\>:  store i64 %var_2_3099, i64* %var_2_3102, align 8
; store i64 %var_2_2144, i64* %var_2_2147, align 8
; Matched:\<badref\>:  store i64 %var_2_2806, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_2146, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_3098, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2143, i64* %var_2_3, align 8
; Matched:%var_2_3103:  %var_2_3103 = tail call %struct.Memory* @sub_4005f0_second_renamed_(%struct.State* nonnull %0, i64 %var_2_3098, %struct.Memory* %var_2_1174)
; %call2_401158 = tail call %struct.Memory* @sub_4005f0.second(%struct.State* nonnull %0, i64 %var_2_2143, %struct.Memory* %var_2_1927)
; Matched:%var_2_1718:  %var_2_1718 = load i64, i64* %RBP, align 8
; %var_2_2148 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1605:  %var_2_1605 = add i64 %var_2_1604, -40
; %var_2_2149 = add i64 %var_2_2148, -40
%var_2_2150 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_308:  %var_2_308 = add i64 %var_2_307, 5
; %var_2_2151 = add i64 %var_2_2150, 5
; Matched:\<badref\>:  store i64 %var_2_308, i64* %PC, align 8
; store i64 %var_2_2151, i64* %var_2_3, align 8
%var_2_2152 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_2153 = extractelement <2 x float> %var_2_2152, i32 0
; Matched:%var_2_286:  %var_2_286 = inttoptr i64 %var_2_282 to float*
; %var_2_2154 = inttoptr i64 %var_2_2149 to float*
; Matched:\<badref\>:  store float %var_2_3109, float* %var_2_3110, align 4
; store float %var_2_2153, float* %var_2_2154, align 4
%var_2_2155 = load i64, i64* %var_2_3, align 8
%var_2_2156 = add i64 %var_2_2155, 11
; Matched:\<badref\>:  store i64 %var_2_1260, i64* %PC, align 8
; store i64 %var_2_2156, i64* %var_2_3, align 8
  store i32 0, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  br label %block_.L_40116d

block_.L_40116d:                                  ; preds = %block_401181, %block_.L_40112b
%var_2_2157 = phi i32 [ %var_2_2199, %block_401181 ], [ 0, %block_.L_40112b ]
; Matched:%var_2_1917:  %var_2_1917 = phi i64 [ %var_2_2856, %block_40159c ], [ %var_2_1612, %block_401546 ]
; %var_2_2158 = phi i64 [ %var_2_2222, %block_401181 ], [ %var_2_2156, %block_.L_40112b ]
; Matched:%var_2_1683:  %var_2_1683 = zext i32 %var_2_1681 to i64
; %var_2_2159 = zext i32 %var_2_2157 to i64
; Matched:\<badref\>:  store i64 %var_2_1615, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2159, i64* %RAX.i271, align 8
%var_2_2160 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
%var_2_2161 = sub i32 %var_2_2157, %var_2_2160
%var_2_2162 = icmp ult i32 %var_2_2157, %var_2_2160
%var_2_2163 = zext i1 %var_2_2162 to i8
store i8 %var_2_2163, i8* %var_2_14, align 1
%var_2_2164 = and i32 %var_2_2161, 255
%var_2_2165 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2164)
%var_2_2166 = trunc i32 %var_2_2165 to i8
%var_2_2167 = and i8 %var_2_2166, 1
%var_2_2168 = xor i8 %var_2_2167, 1
store i8 %var_2_2168, i8* %var_2_21, align 1
%var_2_2169 = xor i32 %var_2_2160, %var_2_2157
%var_2_2170 = xor i32 %var_2_2169, %var_2_2161
%var_2_2171 = lshr i32 %var_2_2170, 4
%var_2_2172 = trunc i32 %var_2_2171 to i8
%var_2_2173 = and i8 %var_2_2172, 1
store i8 %var_2_2173, i8* %var_2_27, align 1
%var_2_2174 = icmp eq i32 %var_2_2161, 0
%var_2_2175 = zext i1 %var_2_2174 to i8
store i8 %var_2_2175, i8* %var_2_30, align 1
%var_2_2176 = lshr i32 %var_2_2161, 31
%var_2_2177 = trunc i32 %var_2_2176 to i8
store i8 %var_2_2177, i8* %var_2_33, align 1
%var_2_2178 = lshr i32 %var_2_2157, 31
%var_2_2179 = lshr i32 %var_2_2160, 31
%var_2_2180 = xor i32 %var_2_2179, %var_2_2178
%var_2_2181 = xor i32 %var_2_2176, %var_2_2178
%var_2_2182 = add nuw nsw i32 %var_2_2181, %var_2_2180
%var_2_2183 = icmp eq i32 %var_2_2182, 2
%var_2_2184 = zext i1 %var_2_2183 to i8
store i8 %var_2_2184, i8* %var_2_39, align 1
%var_2_2185 = icmp ne i8 %var_2_2177, 0
%var_2_2186 = xor i1 %var_2_2185, %var_2_2183
; Matched:  %.v102 = select i1 %var_2_1945, i64 20, i64 94
; %.v103 = select i1 %var_2_2186, i64 20, i64 94
; Matched:%var_2_495:  %var_2_495 = add i64 %var_2_466, %.v104
; %var_2_2187 = add i64 %var_2_2158, %.v103
; Matched:\<badref\>:  store i64 %var_2_495, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2187, i64* %var_2_3, align 8
br i1 %var_2_2186, label %block_401181, label %block_.L_4011cb

block_401181:                                     ; preds = %block_.L_40116d
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %RDI.i594, align 8
  store i64 ptrtoint (%G__0x62b7a0_type* @G__0x62b7a0 to i64), i64* %RCX.i347, align 8
store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %var_2_57, align 8
  store i64 0, i64* %R9.i, align 8
store i8 0, i8* %var_2_14, align 1
store i8 1, i8* %var_2_21, align 1
store i8 1, i8* %var_2_30, align 1
store i8 0, i8* %var_2_33, align 1
store i8 0, i8* %var_2_39, align 1
store i8 0, i8* %var_2_27, align 1
%var_2_2188 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
%var_2_2189 = zext i32 %var_2_2188 to i64
store i64 %var_2_2189, i64* %RSI.i245, align 8
%var_2_2190 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
%var_2_2191 = zext i32 %var_2_2190 to i64
store i64 %var_2_2191, i64* %RDX.i359, align 8
; Matched:%var_2_2971:  %var_2_2971 = add i64 %var_2_495, 2751
; %var_2_2192 = add i64 %var_2_2187, 2751
; Matched:%var_2_2972:  %var_2_2972 = add i64 %var_2_495, 52
; %var_2_2193 = add i64 %var_2_2187, 52
%var_2_2194 = load i64, i64* %var_2_6, align 8
%var_2_2195 = add i64 %var_2_2194, -8
; Matched:%var_2_2975:  %var_2_2975 = inttoptr i64 %var_2_2974 to i64*
; %var_2_2196 = inttoptr i64 %var_2_2195 to i64*
; Matched:\<badref\>:  store i64 %var_2_2826, i64* %var_2_2829, align 8
; store i64 %var_2_2193, i64* %var_2_2196, align 8
; Matched:\<badref\>:  store i64 %var_2_1172, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_2195, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_2971, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2192, i64* %var_2_3, align 8
; Matched:%var_2_2976:  %var_2_2976 = tail call %struct.Memory* @sub_401c40_dgesl_renamed_(%struct.State* nonnull %0, i64 %var_2_2971, %struct.Memory* %var_2_1174)
; %call2_4011b0 = tail call %struct.Memory* @sub_401c40.dgesl(%struct.State* nonnull %0, i64 %var_2_2192, %struct.Memory* %var_2_1927)
; Matched:%var_2_2977:  %var_2_2977 = load i64, i64* %PC, align 8
; %var_2_2197 = load i64, i64* %var_2_3, align 8
%var_2_2198 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
%var_2_2199 = add i32 %var_2_2198, 1
%var_2_2200 = zext i32 %var_2_2199 to i64
store i64 %var_2_2200, i64* %RAX.i271, align 8
%var_2_2201 = icmp eq i32 %var_2_2198, -1
%var_2_2202 = icmp eq i32 %var_2_2199, 0
%var_2_2203 = or i1 %var_2_2201, %var_2_2202
%var_2_2204 = zext i1 %var_2_2203 to i8
store i8 %var_2_2204, i8* %var_2_14, align 1
%var_2_2205 = and i32 %var_2_2199, 255
%var_2_2206 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2205)
%var_2_2207 = trunc i32 %var_2_2206 to i8
%var_2_2208 = and i8 %var_2_2207, 1
%var_2_2209 = xor i8 %var_2_2208, 1
store i8 %var_2_2209, i8* %var_2_21, align 1
%var_2_2210 = xor i32 %var_2_2199, %var_2_2198
%var_2_2211 = lshr i32 %var_2_2210, 4
%var_2_2212 = trunc i32 %var_2_2211 to i8
%var_2_2213 = and i8 %var_2_2212, 1
store i8 %var_2_2213, i8* %var_2_27, align 1
%var_2_2214 = zext i1 %var_2_2202 to i8
store i8 %var_2_2214, i8* %var_2_30, align 1
%var_2_2215 = lshr i32 %var_2_2199, 31
%var_2_2216 = trunc i32 %var_2_2215 to i8
store i8 %var_2_2216, i8* %var_2_33, align 1
%var_2_2217 = lshr i32 %var_2_2198, 31
%var_2_2218 = xor i32 %var_2_2215, %var_2_2217
%var_2_2219 = add nuw nsw i32 %var_2_2218, %var_2_2215
%var_2_2220 = icmp eq i32 %var_2_2219, 2
%var_2_2221 = zext i1 %var_2_2220 to i8
store i8 %var_2_2221, i8* %var_2_39, align 1
store i32 %var_2_2199, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
; Matched:%var_2_3002:  %var_2_3002 = add i64 %var_2_2977, -72
; %var_2_2222 = add i64 %var_2_2197, -72
; Matched:\<badref\>:  store i64 %var_2_3002, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2222, i64* %var_2_3, align 8
  br label %block_.L_40116d

block_.L_4011cb:                                  ; preds = %block_.L_40116d
; Matched:%var_2_1261:  %var_2_1261 = add i64 %var_2_495, -3035
; %var_2_2223 = add i64 %var_2_2187, -3035
; Matched:%var_2_1262:  %var_2_1262 = add i64 %var_2_495, 5
; %var_2_2224 = add i64 %var_2_2187, 5
%var_2_2225 = load i64, i64* %var_2_6, align 8
%var_2_2226 = add i64 %var_2_2225, -8
; Matched:%var_2_1265:  %var_2_1265 = inttoptr i64 %var_2_1264 to i64*
; %var_2_2227 = inttoptr i64 %var_2_2226 to i64*
; Matched:\<badref\>:  store i64 %var_2_625, i64* %var_2_628, align 8
; store i64 %var_2_2224, i64* %var_2_2227, align 8
; Matched:\<badref\>:  store i64 %var_2_1264, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_2226, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1261, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2223, i64* %var_2_3, align 8
; Matched:%var_2_1266:  %var_2_1266 = tail call %struct.Memory* @sub_4005f0_second_renamed_(%struct.State* nonnull %0, i64 %var_2_1261, %struct.Memory* %var_2_1174)
; %call2_4011cb = tail call %struct.Memory* @sub_4005f0.second(%struct.State* nonnull %0, i64 %var_2_2223, %struct.Memory* %var_2_1927)
%var_2_2228 = load i64, i64* %var_2_3, align 8
%var_2_2229 = add i64 %var_2_2228, ptrtoint (%G_0x1c80__rip__type* @G_0x1c80__rip_ to i64)
%var_2_2230 = add i64 %var_2_2228, 8
store i64 %var_2_2230, i64* %var_2_3, align 8
%var_2_2231 = inttoptr i64 %var_2_2229 to i64*
%var_2_2232 = load i64, i64* %var_2_2231, align 8
store i64 %var_2_2232, i64* %var_2_227, align 1
store double 0.000000e+00, double* %var_2_229, align 1
%var_2_2233 = add i64 %var_2_2228, add (i64 ptrtoint (%G_0x1c88__rip__type* @G_0x1c88__rip_ to i64), i64 8)
%var_2_2234 = add i64 %var_2_2228, 16
store i64 %var_2_2234, i64* %var_2_3, align 8
%var_2_2235 = inttoptr i64 %var_2_2233 to i64*
%var_2_2236 = load i64, i64* %var_2_2235, align 8
store i64 %var_2_2236, i64* %var_2_600, align 1
store double 0.000000e+00, double* %var_2_1962, align 1
%var_2_2237 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1271:  %var_2_1271 = add i64 %var_2_1270, -40
; %var_2_2238 = add i64 %var_2_2237, -40
; Matched:%var_2_635:  %var_2_635 = add i64 %var_2_630, 21
; %var_2_2239 = add i64 %var_2_2228, 21
; Matched:\<badref\>:  store i64 %var_2_635, i64* %PC, align 8
; store i64 %var_2_2239, i64* %var_2_3, align 8
%var_2_2240 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_2241 = load <2 x i32>, <2 x i32>* %var_2_257, align 1
; Matched:%var_2_311:  %var_2_311 = inttoptr i64 %var_2_306 to float*
; %var_2_2242 = inttoptr i64 %var_2_2238 to float*
; Matched:%var_2_312:  %var_2_312 = load float, float* %var_2_311, align 4
; %var_2_2243 = load float, float* %var_2_2242, align 4
%var_2_2244 = extractelement <2 x float> %var_2_2240, i32 0
; Matched:%var_2_641:  %var_2_641 = fsub float %var_2_640, %var_2_639
; %var_2_2245 = fsub float %var_2_2244, %var_2_2243
; Matched:\<badref\>:  store float %var_2_1555, float* %var_2_25, align 1, !tbaa !1265
; store float %var_2_2245, float* %var_2_46, align 1
%var_2_2246 = bitcast <2 x float> %var_2_2240 to <2 x i32>
%var_2_2247 = extractelement <2 x i32> %var_2_2246, i32 1
; Matched:\<badref\>:  store i32 %var_2_1557, i32* %var_2_245, align 1, !tbaa !1265
; store i32 %var_2_2247, i32* %var_2_281, align 1
%var_2_2248 = extractelement <2 x i32> %var_2_2241, i32 0
; Matched:\<badref\>:  store i32 %var_2_317, i32* %var_2_247, align 1, !tbaa !1265
; store i32 %var_2_2248, i32* %var_2_283, align 1
%var_2_2249 = extractelement <2 x i32> %var_2_2241, i32 1
; Matched:\<badref\>:  store i32 %var_2_962, i32* %var_2_249, align 1, !tbaa !1265
; store i32 %var_2_2249, i32* %var_2_285, align 1
%var_2_2250 = load <2 x i32>, <2 x i32>* %var_2_1963, align 1
%var_2_2251 = load <2 x i32>, <2 x i32>* %var_2_1964, align 1
; Matched:%var_2_1285:  %var_2_1285 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_604040__bss_type* @seg_604040__bss to i64), i64 163792) to i32*), align 16
; %var_2_2252 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
; Matched:%var_2_649:  %var_2_649 = sitofp i32 %var_2_648 to float
; %var_2_2253 = sitofp i32 %var_2_2252 to float
; Matched:\<badref\>:  store float %var_2_649, float* %var_2_1212, align 1, !tbaa !1265
; store float %var_2_2253, float* %var_2_1965, align 1
%var_2_2254 = extractelement <2 x i32> %var_2_2250, i32 1
; Matched:\<badref\>:  store i32 %var_2_1287, i32* %var_2_227, align 1, !tbaa !1265
; store i32 %var_2_2254, i32* %var_2_262, align 1
%var_2_2255 = extractelement <2 x i32> %var_2_2251, i32 0
; Matched:\<badref\>:  store i32 %var_2_651, i32* %var_2_229, align 1, !tbaa !1265
; store i32 %var_2_2255, i32* %var_2_264, align 1
%var_2_2256 = extractelement <2 x i32> %var_2_2251, i32 1
; Matched:\<badref\>:  store i32 %var_2_1289, i32* %var_2_231, align 1, !tbaa !1265
; store i32 %var_2_2256, i32* %var_2_266, align 1
%var_2_2257 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_2258 = load <2 x i32>, <2 x i32>* %var_2_257, align 1
%var_2_2259 = load <2 x float>, <2 x float>* %var_2_1966, align 1
%var_2_2260 = extractelement <2 x float> %var_2_2257, i32 0
%var_2_2261 = extractelement <2 x float> %var_2_2259, i32 0
; Matched:%var_2_658:  %var_2_658 = fdiv float %var_2_656, %var_2_657
; %var_2_2262 = fdiv float %var_2_2260, %var_2_2261
; Matched:\<badref\>:  store float %var_2_658, float* %var_2_25, align 1, !tbaa !1265
; store float %var_2_2262, float* %var_2_46, align 1
%var_2_2263 = bitcast <2 x float> %var_2_2257 to <2 x i32>
%var_2_2264 = extractelement <2 x i32> %var_2_2263, i32 1
; Matched:\<badref\>:  store i32 %var_2_1435, i32* %var_2_245, align 1, !tbaa !1265
; store i32 %var_2_2264, i32* %var_2_281, align 1
%var_2_2265 = extractelement <2 x i32> %var_2_2258, i32 0
; Matched:\<badref\>:  store i32 %var_2_1570, i32* %var_2_247, align 1, !tbaa !1265
; store i32 %var_2_2265, i32* %var_2_283, align 1
%var_2_2266 = extractelement <2 x i32> %var_2_2258, i32 1
; Matched:\<badref\>:  store i32 %var_2_3059, i32* %var_2_249, align 1, !tbaa !1265
; store i32 %var_2_2266, i32* %var_2_285, align 1
%var_2_2267 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
%var_2_2268 = sext i32 %var_2_2267 to i64
%var_2_2269 = shl nsw i64 %var_2_2268, 2
%var_2_2270 = add nsw i64 %var_2_2269, 6470412
; Matched:%var_2_667:  %var_2_667 = add i64 %var_2_630, 51
; %var_2_2271 = add i64 %var_2_2228, 51
; Matched:\<badref\>:  store i64 %var_2_1304, i64* %PC, align 8
; store i64 %var_2_2271, i64* %var_2_3, align 8
%var_2_2272 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_2273 = extractelement <2 x float> %var_2_2272, i32 0
%var_2_2274 = inttoptr i64 %var_2_2270 to float*
store float %var_2_2273, float* %var_2_2274, align 4
%var_2_2275 = load i64, i64* %var_2_3, align 8
%var_2_2276 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
%var_2_2277 = sext i32 %var_2_2276 to i64
; Matched:\<badref\>:  store i64 %var_2_1310, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2277, i64* %RAX.i271, align 8
%var_2_2278 = shl nsw i64 %var_2_2277, 2
%var_2_2279 = add nsw i64 %var_2_2278, 6470352
; Matched:%var_2_2818:  %var_2_2818 = add i64 %var_2_2814, 17
; %var_2_2280 = add i64 %var_2_2275, 17
; Matched:\<badref\>:  store i64 %var_2_1185, i64* %PC, align 8
; store i64 %var_2_2280, i64* %var_2_3, align 8
%var_2_2281 = inttoptr i64 %var_2_2279 to i32*
%var_2_2282 = load i32, i32* %var_2_2281, align 4
store i32 %var_2_2282, i32* %var_2_47, align 1
store float 0.000000e+00, float* %var_2_49, align 1
store float 0.000000e+00, float* %var_2_51, align 1
store float 0.000000e+00, float* %var_2_53, align 1
; Matched:\<badref\>:  store i64 %var_2_1310, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2277, i64* %RAX.i271, align 8
%var_2_2283 = add nsw i64 %var_2_2278, 6470412
; Matched:%var_2_680:  %var_2_680 = add i64 %var_2_671, 34
; %var_2_2284 = add i64 %var_2_2275, 34
; Matched:\<badref\>:  store i64 %var_2_680, i64* %PC, align 8
; store i64 %var_2_2284, i64* %var_2_3, align 8
%var_2_2285 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_2286 = load <2 x i32>, <2 x i32>* %var_2_257, align 1
%var_2_2287 = inttoptr i64 %var_2_2283 to float*
%var_2_2288 = load float, float* %var_2_2287, align 4
%var_2_2289 = extractelement <2 x float> %var_2_2285, i32 0
%var_2_2290 = fadd float %var_2_2289, %var_2_2288
store float %var_2_2290, float* %var_2_46, align 1
%var_2_2291 = bitcast <2 x float> %var_2_2285 to <2 x i32>
%var_2_2292 = extractelement <2 x i32> %var_2_2291, i32 1
; Matched:\<badref\>:  store i32 %var_2_1586, i32* %var_2_245, align 1, !tbaa !1265
; store i32 %var_2_2292, i32* %var_2_281, align 1
%var_2_2293 = extractelement <2 x i32> %var_2_2286, i32 0
; Matched:\<badref\>:  store i32 %var_2_1366, i32* %var_2_247, align 1, !tbaa !1265
; store i32 %var_2_2293, i32* %var_2_283, align 1
%var_2_2294 = extractelement <2 x i32> %var_2_2286, i32 1
; Matched:\<badref\>:  store i32 %var_2_1758, i32* %var_2_249, align 1, !tbaa !1265
; store i32 %var_2_2294, i32* %var_2_285, align 1
%var_2_2295 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1329:  %var_2_1329 = add i64 %var_2_1328, -16
; %var_2_2296 = add i64 %var_2_2295, -16
; Matched:%var_2_693:  %var_2_693 = add i64 %var_2_671, 39
; %var_2_2297 = add i64 %var_2_2275, 39
; Matched:\<badref\>:  store i64 %var_2_1330, i64* %PC, align 8
; store i64 %var_2_2297, i64* %var_2_3, align 8
%var_2_2298 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_2299 = extractelement <2 x float> %var_2_2298, i32 0
; Matched:%var_2_378:  %var_2_378 = inttoptr i64 %var_2_374 to float*
; %var_2_2300 = inttoptr i64 %var_2_2296 to float*
; Matched:\<badref\>:  store float %var_2_1332, float* %var_2_1333, align 4
; store float %var_2_2299, float* %var_2_2300, align 4
%var_2_2301 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_698:  %var_2_698 = add i64 %var_2_697, -16
; %var_2_2302 = add i64 %var_2_2301, -16
%var_2_2303 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1767:  %var_2_1767 = add i64 %var_2_1766, 5
; %var_2_2304 = add i64 %var_2_2303, 5
; Matched:\<badref\>:  store i64 %var_2_1767, i64* %PC, align 8
; store i64 %var_2_2304, i64* %var_2_3, align 8
; Matched:%var_2_765:  %var_2_765 = inttoptr i64 %var_2_762 to i32*
; %var_2_2305 = inttoptr i64 %var_2_2302 to i32*
; Matched:%var_2_1403:  %var_2_1403 = load i32, i32* %var_2_1402, align 4
; %var_2_2306 = load i32, i32* %var_2_2305, align 4
; Matched:\<badref\>:  store i32 %var_2_766, i32* %var_2_26, align 1, !tbaa !1265
; store i32 %var_2_2306, i32* %var_2_47, align 1
store float 0.000000e+00, float* %var_2_49, align 1
store float 0.000000e+00, float* %var_2_51, align 1
store float 0.000000e+00, float* %var_2_53, align 1
%var_2_2307 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
%var_2_2308 = sext i32 %var_2_2307 to i64
; Matched:\<badref\>:  store i64 %var_2_904, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2308, i64* %RAX.i271, align 8
%var_2_2309 = shl nsw i64 %var_2_2308, 2
%var_2_2310 = add nsw i64 %var_2_2309, 6470472
; Matched:%var_2_1863:  %var_2_1863 = add i64 %var_2_1840, 22
; %var_2_2311 = add i64 %var_2_2303, 22
; Matched:\<badref\>:  store i64 %var_2_1863, i64* %PC, align 8
; store i64 %var_2_2311, i64* %var_2_3, align 8
%var_2_2312 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_2313 = extractelement <2 x float> %var_2_2312, i32 0
%var_2_2314 = inttoptr i64 %var_2_2310 to float*
store float %var_2_2313, float* %var_2_2314, align 4
%var_2_2315 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1349:  %var_2_1349 = add i64 %var_2_1348, -12
; %var_2_2316 = add i64 %var_2_2315, -12
%var_2_2317 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1549:  %var_2_1549 = add i64 %var_2_1548, 5
; %var_2_2318 = add i64 %var_2_2317, 5
; Matched:\<badref\>:  store i64 %var_2_1549, i64* %PC, align 8
; store i64 %var_2_2318, i64* %var_2_3, align 8
; Matched:%var_2_1352:  %var_2_1352 = inttoptr i64 %var_2_1349 to float*
; %var_2_2319 = inttoptr i64 %var_2_2316 to float*
; Matched:%var_2_1353:  %var_2_1353 = load float, float* %var_2_1352, align 4
; %var_2_2320 = load float, float* %var_2_2319, align 4
; Matched:%var_2_717:  %var_2_717 = fpext float %var_2_716 to double
; %var_2_2321 = fpext float %var_2_2320 to double
; Matched:\<badref\>:  store double %var_2_717, double* %var_2_189, align 1, !tbaa !1287
; store double %var_2_2321, double* %var_2_218, align 1
%var_2_2322 = add i64 %var_2_2315, -16
; Matched:%var_2_952:  %var_2_952 = add i64 %var_2_947, 10
; %var_2_2323 = add i64 %var_2_2317, 10
; Matched:\<badref\>:  store i64 %var_2_3061, i64* %PC, align 8
; store i64 %var_2_2323, i64* %var_2_3, align 8
%var_2_2324 = inttoptr i64 %var_2_2322 to float*
%var_2_2325 = load float, float* %var_2_2324, align 4
%var_2_2326 = fpext float %var_2_2325 to double
; Matched:\<badref\>:  store double %var_2_508, double* %var_2_232, align 1, !tbaa !1287
; store double %var_2_2326, double* %var_2_267, align 1
; Matched:%var_2_723:  %var_2_723 = load double, double* %var_2_219, align 1
; %var_2_2327 = load double, double* %var_2_253, align 1
; Matched:%var_2_1361:  %var_2_1361 = fmul double %var_2_1359, %var_2_1360
; %var_2_2328 = fmul double %var_2_2326, %var_2_2327
; Matched:\<badref\>:  store double %var_2_724, double* %var_2_219, align 1, !tbaa !1287
; store double %var_2_2328, double* %var_2_253, align 1
%var_2_2329 = load <2 x i32>, <2 x i32>* %var_2_1967, align 1
; Matched:%var_2_726:  %var_2_726 = fdiv double %var_2_717, %var_2_724
; %var_2_2330 = fdiv double %var_2_2321, %var_2_2328
%.cast28 = bitcast double %var_2_2330 to <2 x i32>
; Matched:%var_2_1364:  %var_2_1364 = fptrunc double %var_2_1363 to float
; %var_2_2331 = fptrunc double %var_2_2330 to float
; Matched:\<badref\>:  store float %var_2_727, float* %var_2_25, align 1, !tbaa !1265
; store float %var_2_2331, float* %var_2_46, align 1
%var_2_2332 = extractelement <2 x i32> %.cast28, i32 1
; Matched:\<badref\>:  store i32 %var_2_1365, i32* %var_2_245, align 1, !tbaa !1265
; store i32 %var_2_2332, i32* %var_2_281, align 1
%var_2_2333 = extractelement <2 x i32> %var_2_2329, i32 0
; Matched:\<badref\>:  store i32 %var_2_1558, i32* %var_2_247, align 1, !tbaa !1265
; store i32 %var_2_2333, i32* %var_2_283, align 1
%var_2_2334 = extractelement <2 x i32> %var_2_2329, i32 1
; Matched:\<badref\>:  store i32 %var_2_3088, i32* %var_2_249, align 1, !tbaa !1265
; store i32 %var_2_2334, i32* %var_2_285, align 1
%var_2_2335 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
%var_2_2336 = sext i32 %var_2_2335 to i64
%var_2_2337 = shl nsw i64 %var_2_2336, 2
%var_2_2338 = add nsw i64 %var_2_2337, 6470532
; Matched:%var_2_735:  %var_2_735 = add i64 %var_2_713, 39
; %var_2_2339 = add i64 %var_2_2317, 39
; Matched:\<badref\>:  store i64 %var_2_1372, i64* %PC, align 8
; store i64 %var_2_2339, i64* %var_2_3, align 8
%var_2_2340 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_2341 = extractelement <2 x float> %var_2_2340, i32 0
%var_2_2342 = inttoptr i64 %var_2_2338 to float*
store float %var_2_2341, float* %var_2_2342, align 4
%var_2_2343 = load i64, i64* %var_2_3, align 8
%var_2_2344 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
%var_2_2345 = sext i32 %var_2_2344 to i64
; Matched:\<badref\>:  store i64 %var_2_1590, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2345, i64* %RAX.i271, align 8
%var_2_2346 = shl nsw i64 %var_2_2345, 2
%var_2_2347 = add nsw i64 %var_2_2346, 6470532
; Matched:%var_2_1381:  %var_2_1381 = add i64 %var_2_1376, 17
; %var_2_2348 = add i64 %var_2_2343, 17
; Matched:\<badref\>:  store i64 %var_2_1313, i64* %PC, align 8
; store i64 %var_2_2348, i64* %var_2_3, align 8
%var_2_2349 = inttoptr i64 %var_2_2347 to float*
%var_2_2350 = load float, float* %var_2_2349, align 4
%var_2_2351 = fpext float %var_2_2350 to double
%var_2_2352 = load double, double* %var_2_226, align 1
%var_2_2353 = fdiv double %var_2_2352, %var_2_2351
store double %var_2_2353, double* %var_2_226, align 1
%var_2_2354 = bitcast double %var_2_2351 to <2 x i32>
%var_2_2355 = load <2 x i32>, <2 x i32>* %var_2_257, align 1
%var_2_2356 = fptrunc double %var_2_2353 to float
store float %var_2_2356, float* %var_2_46, align 1
%var_2_2357 = extractelement <2 x i32> %var_2_2354, i32 1
store i32 %var_2_2357, i32* %var_2_281, align 1
%var_2_2358 = extractelement <2 x i32> %var_2_2355, i32 0
; Matched:\<badref\>:  store i32 %var_2_799, i32* %var_2_247, align 1, !tbaa !1265
; store i32 %var_2_2358, i32* %var_2_283, align 1
%var_2_2359 = extractelement <2 x i32> %var_2_2355, i32 1
; Matched:\<badref\>:  store i32 %var_2_755, i32* %var_2_249, align 1, !tbaa !1265
; store i32 %var_2_2359, i32* %var_2_285, align 1
; Matched:\<badref\>:  store i64 %var_2_1590, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2345, i64* %RAX.i271, align 8
%var_2_2360 = add nsw i64 %var_2_2346, 6470592
; Matched:%var_2_757:  %var_2_757 = add i64 %var_2_739, 42
; %var_2_2361 = add i64 %var_2_2343, 42
; Matched:\<badref\>:  store i64 %var_2_757, i64* %PC, align 8
; store i64 %var_2_2361, i64* %var_2_3, align 8
%var_2_2362 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_2363 = extractelement <2 x float> %var_2_2362, i32 0
%var_2_2364 = inttoptr i64 %var_2_2360 to float*
store float %var_2_2363, float* %var_2_2364, align 4
%var_2_2365 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1399:  %var_2_1399 = add i64 %var_2_1398, -16
; %var_2_2366 = add i64 %var_2_2365, -16
%var_2_2367 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1225:  %var_2_1225 = add i64 %var_2_1224, 5
; %var_2_2368 = add i64 %var_2_2367, 5
; Matched:\<badref\>:  store i64 %var_2_1351, i64* %PC, align 8
; store i64 %var_2_2368, i64* %var_2_3, align 8
; Matched:%var_2_1338:  %var_2_1338 = inttoptr i64 %var_2_1335 to i32*
; %var_2_2369 = inttoptr i64 %var_2_2366 to i32*
; Matched:%var_2_1339:  %var_2_1339 = load i32, i32* %var_2_1338, align 4
; %var_2_2370 = load i32, i32* %var_2_2369, align 4
; Matched:\<badref\>:  store i32 %var_2_1339, i32* %var_2_26, align 1, !tbaa !1265
; store i32 %var_2_2370, i32* %var_2_47, align 1
store float 0.000000e+00, float* %var_2_49, align 1
store float 0.000000e+00, float* %var_2_51, align 1
store float 0.000000e+00, float* %var_2_53, align 1
; Matched:%var_2_767:  %var_2_767 = add i64 %var_2_761, -8
; %var_2_2371 = add i64 %var_2_2365, -8
; Matched:%var_2_1529:  %var_2_1529 = add i64 %var_2_1514, 10
; %var_2_2372 = add i64 %var_2_2367, 10
; Matched:\<badref\>:  store i64 %var_2_1356, i64* %PC, align 8
; store i64 %var_2_2372, i64* %var_2_3, align 8
%var_2_2373 = load <2 x float>, <2 x float>* %var_2_83, align 1
; Matched:%var_2_770:  %var_2_770 = inttoptr i64 %var_2_767 to float*
; %var_2_2374 = inttoptr i64 %var_2_2371 to float*
; Matched:%var_2_771:  %var_2_771 = load float, float* %var_2_770, align 4
; %var_2_2375 = load float, float* %var_2_2374, align 4
%var_2_2376 = extractelement <2 x float> %var_2_2373, i32 0
; Matched:%var_2_773:  %var_2_773 = fdiv float %var_2_772, %var_2_771
; %var_2_2377 = fdiv float %var_2_2376, %var_2_2375
; Matched:\<badref\>:  store float %var_2_773, float* %var_2_25, align 1, !tbaa !1265
; store float %var_2_2377, float* %var_2_46, align 1
%var_2_2378 = bitcast <2 x float> %var_2_2373 to <2 x i32>
%var_2_2379 = extractelement <2 x i32> %var_2_2378, i32 1
; Matched:\<badref\>:  store i32 %var_2_1325, i32* %var_2_245, align 1, !tbaa !1265
; store i32 %var_2_2379, i32* %var_2_281, align 1
%var_2_2380 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
%var_2_2381 = sext i32 %var_2_2380 to i64
%var_2_2382 = shl nsw i64 %var_2_2381, 2
%var_2_2383 = add nsw i64 %var_2_2382, 6470652
; Matched:%var_2_780:  %var_2_780 = add i64 %var_2_763, 27
; %var_2_2384 = add i64 %var_2_2367, 27
; Matched:\<badref\>:  store i64 %var_2_780, i64* %PC, align 8
; store i64 %var_2_2384, i64* %var_2_3, align 8
%var_2_2385 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_2386 = extractelement <2 x float> %var_2_2385, i32 0
%var_2_2387 = inttoptr i64 %var_2_2383 to float*
store float %var_2_2386, float* %var_2_2387, align 4
%var_2_2388 = load i64, i64* %var_2_3, align 8
%var_2_2389 = load i32, i32* bitcast (%G_0x62bb9c_type* @G_0x62bb9c to i32*), align 8
store i32 %var_2_2389, i32* %var_2_47, align 1
store float 0.000000e+00, float* %var_2_49, align 1
store float 0.000000e+00, float* %var_2_51, align 1
store float 0.000000e+00, float* %var_2_53, align 1
%var_2_2390 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
%var_2_2391 = sext i32 %var_2_2390 to i64
; Matched:\<badref\>:  store i64 %var_2_741, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2391, i64* %RAX.i271, align 8
%var_2_2392 = shl nsw i64 %var_2_2391, 2
%var_2_2393 = add nsw i64 %var_2_2392, 6470532
; Matched:%var_2_1873:  %var_2_1873 = add i64 %var_2_1867, 26
; %var_2_2394 = add i64 %var_2_2388, 26
; Matched:\<badref\>:  store i64 %var_2_2402, i64* %PC, align 8
; store i64 %var_2_2394, i64* %var_2_3, align 8
%var_2_2395 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_2396 = load <2 x i32>, <2 x i32>* %var_2_257, align 1
%var_2_2397 = inttoptr i64 %var_2_2393 to float*
%var_2_2398 = load float, float* %var_2_2397, align 4
%var_2_2399 = extractelement <2 x float> %var_2_2395, i32 0
%var_2_2400 = fadd float %var_2_2399, %var_2_2398
store float %var_2_2400, float* %var_2_46, align 1
%var_2_2401 = bitcast <2 x float> %var_2_2395 to <2 x i32>
%var_2_2402 = extractelement <2 x i32> %var_2_2401, i32 1
; Matched:\<badref\>:  store i32 %var_2_775, i32* %var_2_245, align 1, !tbaa !1265
; store i32 %var_2_2402, i32* %var_2_281, align 1
%var_2_2403 = extractelement <2 x i32> %var_2_2396, i32 0
; Matched:\<badref\>:  store i32 %var_2_3087, i32* %var_2_247, align 1, !tbaa !1265
; store i32 %var_2_2403, i32* %var_2_283, align 1
%var_2_2404 = extractelement <2 x i32> %var_2_2396, i32 1
; Matched:\<badref\>:  store i32 %var_2_645, i32* %var_2_249, align 1, !tbaa !1265
; store i32 %var_2_2404, i32* %var_2_285, align 1
%var_2_2405 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_2406 = extractelement <2 x float> %var_2_2405, i32 0
store float %var_2_2406, float* bitcast (%G_0x62bb9c_type* @G_0x62bb9c to float*), align 8
%var_2_2407 = zext i32 %var_2_2390 to i64
; Matched:\<badref\>:  store i64 %var_2_1876, i64* %RDI, align 8, !tbaa !1261
; store i64 %var_2_2407, i64* %RDI.i594, align 8
; Matched:%var_2_1442:  %var_2_1442 = add i64 %var_2_1421, 5572
; %var_2_2408 = add i64 %var_2_2388, 5572
; Matched:%var_2_806:  %var_2_806 = add i64 %var_2_784, 47
; %var_2_2409 = add i64 %var_2_2388, 47
%var_2_2410 = load i64, i64* %var_2_6, align 8
%var_2_2411 = add i64 %var_2_2410, -8
; Matched:%var_2_1446:  %var_2_1446 = inttoptr i64 %var_2_1445 to i64*
; %var_2_2412 = inttoptr i64 %var_2_2411 to i64*
; Matched:\<badref\>:  store i64 %var_2_1443, i64* %var_2_1446, align 8
; store i64 %var_2_2409, i64* %var_2_2412, align 8
; Matched:\<badref\>:  store i64 %var_2_1809, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_2411, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1442, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2408, i64* %var_2_3, align 8
; Matched:%var_2_1447:  %var_2_1447 = tail call %struct.Memory* @sub_402870_print_time_renamed_(%struct.State* nonnull %0, i64 %var_2_1442, %struct.Memory* %var_2_1174)
; %call2_4012d6 = tail call %struct.Memory* @sub_402870.print_time(%struct.State* nonnull %0, i64 %var_2_2408, %struct.Memory* %var_2_1927)
%var_2_2413 = load i64, i64* %var_2_3, align 8
%var_2_2414 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
%var_2_2415 = add i32 %var_2_2414, 1
%var_2_2416 = zext i32 %var_2_2415 to i64
store i64 %var_2_2416, i64* %RAX.i271, align 8
%var_2_2417 = icmp eq i32 %var_2_2414, -1
%var_2_2418 = icmp eq i32 %var_2_2415, 0
%var_2_2419 = or i1 %var_2_2417, %var_2_2418
%var_2_2420 = zext i1 %var_2_2419 to i8
store i8 %var_2_2420, i8* %var_2_14, align 1
%var_2_2421 = and i32 %var_2_2415, 255
%var_2_2422 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2421)
%var_2_2423 = trunc i32 %var_2_2422 to i8
%var_2_2424 = and i8 %var_2_2423, 1
%var_2_2425 = xor i8 %var_2_2424, 1
store i8 %var_2_2425, i8* %var_2_21, align 1
%var_2_2426 = xor i32 %var_2_2415, %var_2_2414
%var_2_2427 = lshr i32 %var_2_2426, 4
%var_2_2428 = trunc i32 %var_2_2427 to i8
%var_2_2429 = and i8 %var_2_2428, 1
store i8 %var_2_2429, i8* %var_2_27, align 1
%var_2_2430 = zext i1 %var_2_2418 to i8
store i8 %var_2_2430, i8* %var_2_30, align 1
%var_2_2431 = lshr i32 %var_2_2415, 31
%var_2_2432 = trunc i32 %var_2_2431 to i8
store i8 %var_2_2432, i8* %var_2_33, align 1
%var_2_2433 = lshr i32 %var_2_2414, 31
%var_2_2434 = xor i32 %var_2_2431, %var_2_2433
%var_2_2435 = add nuw nsw i32 %var_2_2434, %var_2_2431
%var_2_2436 = icmp eq i32 %var_2_2435, 2
%var_2_2437 = zext i1 %var_2_2436 to i8
store i8 %var_2_2437, i8* %var_2_39, align 1
store i32 %var_2_2415, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
%var_2_2438 = add i64 %var_2_2413, -601
; Matched:\<badref\>:  store i64 %var_2_836, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2438, i64* %var_2_3, align 8
  br label %block_.L_401082

block_.L_4012f1:                                  ; preds = %block_.L_401082
  store i64 ptrtoint (%G__0x403140_type* @G__0x403140 to i64), i64* %RSI.i245, align 8
%var_2_2439 = bitcast [32 x %union.VectorReg]* %var_2_40 to <4 x i32>*
store <4 x i32> zeroinitializer, <4 x i32>* %var_2_2439, align 1
%var_2_2440 = add i64 %var_2_1993, add (i64 ptrtoint (%G_0x1b6a__rip__type* @G_0x1b6a__rip_ to i64), i64 13)
%var_2_2441 = add i64 %var_2_1993, 21
store i64 %var_2_2441, i64* %var_2_3, align 8
%var_2_2442 = inttoptr i64 %var_2_2440 to i64*
%var_2_2443 = load i64, i64* %var_2_2442, align 8
%var_2_2444 = load float, float* bitcast (%G_0x62bb9c_type* @G_0x62bb9c to float*), align 8
%var_2_2445 = fpext float %var_2_2444 to double
%var_2_2446 = bitcast i64 %var_2_2443 to double
%var_2_2447 = fdiv double %var_2_2445, %var_2_2446
store double %var_2_2447, double* %var_2_253, align 1
%.cast30 = bitcast i64 %var_2_2443 to <2 x i32>
%var_2_2448 = fptrunc double %var_2_2447 to float
store float %var_2_2448, float* %var_2_944, align 1
%var_2_2449 = extractelement <2 x i32> %.cast30, i32 1
store i32 %var_2_2449, i32* %var_2_603, align 1
store i32 0, i32* %var_2_604, align 1
store i32 0, i32* %var_2_606, align 1
%var_2_2450 = load <2 x float>, <2 x float>* %var_2_1037, align 1
%var_2_2451 = extractelement <2 x float> %var_2_2450, i32 0
store float %var_2_2451, float* bitcast (%G_0x62bb9c_type* @G_0x62bb9c to float*), align 8
%var_2_2452 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
store i64 %var_2_2452, i64* %RDI.i594, align 8
; Matched:\<badref\>:  store i8 0, i8* %AL, align 1, !tbaa !1286
; store i8 1, i8* %AL.i1482, align 1
; Matched:%var_2_423:  %var_2_423 = add i64 %var_2_3138, -3585
; %var_2_2453 = add i64 %var_2_1993, -3585
; Matched:%var_2_424:  %var_2_424 = add i64 %var_2_3138, 62
; %var_2_2454 = add i64 %var_2_1993, 62
%var_2_2455 = load i64, i64* %var_2_6, align 8
%var_2_2456 = add i64 %var_2_2455, -8
; Matched:%var_2_427:  %var_2_427 = inttoptr i64 %var_2_426 to i64*
; %var_2_2457 = inttoptr i64 %var_2_2456 to i64*
; Matched:\<badref\>:  store i64 %var_2_424, i64* %var_2_427, align 8
; store i64 %var_2_2454, i64* %var_2_2457, align 8
; Matched:\<badref\>:  store i64 %var_2_3043, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_2456, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_423, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2453, i64* %var_2_3, align 8
%var_2_2458 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %var_2_1927)
%var_2_2459 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x403169_type* @G__0x403169 to i64), i64* %RSI.i245, align 8
%var_2_2460 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
store i64 %var_2_2460, i64* %RDI.i594, align 8
; Matched:%var_2_431:  %var_2_431 = load i64, i64* %RBP, align 8
; %var_2_2461 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_432:  %var_2_432 = add i64 %var_2_431, -972
; %var_2_2462 = add i64 %var_2_2461, -972
; Matched:%var_2_433:  %var_2_433 = load i32, i32* %EAX, align 4
; %var_2_2463 = load i32, i32* %EAX.i1471, align 4
; Matched:%var_2_2800:  %var_2_2800 = add i64 %var_2_2795, 24
; %var_2_2464 = add i64 %var_2_2459, 24
; Matched:\<badref\>:  store i64 %var_2_2366, i64* %PC, align 8
; store i64 %var_2_2464, i64* %var_2_3, align 8
; Matched:%var_2_435:  %var_2_435 = inttoptr i64 %var_2_432 to i32*
; %var_2_2465 = inttoptr i64 %var_2_2462 to i32*
; Matched:\<badref\>:  store i32 %var_2_433, i32* %var_2_435, align 4
; store i32 %var_2_2463, i32* %var_2_2465, align 4
; Matched:%var_2_2382:  %var_2_2382 = load i64, i64* %PC, align 8
; %var_2_2466 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i8 0, i8* %AL, align 1, !tbaa !1286
; store i8 0, i8* %AL.i1482, align 1
; Matched:%var_2_437:  %var_2_437 = add i64 %var_2_436, -3671
; %var_2_2467 = add i64 %var_2_2466, -3671
; Matched:%var_2_2384:  %var_2_2384 = add i64 %var_2_2382, 7
; %var_2_2468 = add i64 %var_2_2466, 7
%var_2_2469 = load i64, i64* %var_2_6, align 8
%var_2_2470 = add i64 %var_2_2469, -8
; Matched:%var_2_1173:  %var_2_1173 = inttoptr i64 %var_2_1172 to i64*
; %var_2_2471 = inttoptr i64 %var_2_2470 to i64*
; Matched:\<badref\>:  store i64 %var_2_144, i64* %var_2_147, align 8
; store i64 %var_2_2468, i64* %var_2_2471, align 8
; Matched:\<badref\>:  store i64 %var_2_1219, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_2470, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_437, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2467, i64* %var_2_3, align 8
%var_2_2472 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %var_2_2458)
; Matched:%var_2_443:  %var_2_443 = load i64, i64* %RBP, align 8
; %var_2_2473 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_444:  %var_2_444 = add i64 %var_2_443, -976
; %var_2_2474 = add i64 %var_2_2473, -976
; Matched:%var_2_445:  %var_2_445 = load i32, i32* %EAX, align 4
; %var_2_2475 = load i32, i32* %EAX.i1471, align 4
; Matched:%var_2_446:  %var_2_446 = load i64, i64* %PC, align 8
; %var_2_2476 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_447:  %var_2_447 = add i64 %var_2_446, 6
; %var_2_2477 = add i64 %var_2_2476, 6
; Matched:\<badref\>:  store i64 %var_2_447, i64* %PC, align 8
; store i64 %var_2_2477, i64* %var_2_3, align 8
; Matched:%var_2_448:  %var_2_448 = inttoptr i64 %var_2_444 to i32*
; %var_2_2478 = inttoptr i64 %var_2_2474 to i32*
; Matched:\<badref\>:  store i32 %var_2_445, i32* %var_2_448, align 4
; store i32 %var_2_2475, i32* %var_2_2478, align 4
%var_2_2479 = load i64, i64* %var_2_3, align 8
%var_2_2480 = add i64 %var_2_2479, -3428
; Matched:%var_2_300:  %var_2_300 = add i64 %var_2_298, 5
; %var_2_2481 = add i64 %var_2_2479, 5
%var_2_2482 = load i64, i64* %var_2_6, align 8
%var_2_2483 = add i64 %var_2_2482, -8
; Matched:%var_2_72:  %var_2_72 = inttoptr i64 %var_2_71 to i64*
; %var_2_2484 = inttoptr i64 %var_2_2483 to i64*
; Matched:\<badref\>:  store i64 %var_2_69, i64* %var_2_72, align 8
; store i64 %var_2_2481, i64* %var_2_2484, align 8
; Matched:\<badref\>:  store i64 %var_2_71, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_2483, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_450, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2480, i64* %var_2_3, align 8
%call2_401354 = tail call %struct.Memory* @sub_4005f0.second(%struct.State* nonnull %0, i64 %var_2_2480, %struct.Memory* %var_2_2472)
; Matched:%var_2_456:  %var_2_456 = load i64, i64* %RBP, align 8
; %var_2_2485 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_457:  %var_2_457 = add i64 %var_2_456, -80
; %var_2_2486 = add i64 %var_2_2485, -80
%var_2_2487 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1896:  %var_2_1896 = add i64 %var_2_1895, 5
; %var_2_2488 = add i64 %var_2_2487, 5
; Matched:\<badref\>:  store i64 %var_2_1896, i64* %PC, align 8
; store i64 %var_2_2488, i64* %var_2_3, align 8
%var_2_2489 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_2490 = extractelement <2 x float> %var_2_2489, i32 0
; Matched:%var_2_462:  %var_2_462 = inttoptr i64 %var_2_457 to float*
; %var_2_2491 = inttoptr i64 %var_2_2486 to float*
; Matched:\<badref\>:  store float %var_2_461, float* %var_2_462, align 4
; store float %var_2_2490, float* %var_2_2491, align 4
%var_2_2492 = load i64, i64* %var_2_3, align 8
%var_2_2493 = add i64 %var_2_2492, 11
; Matched:\<badref\>:  store i64 %var_2_1612, i64* %PC, align 8
; store i64 %var_2_2493, i64* %var_2_3, align 8
  store i32 0, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  br label %block_.L_401369

block_.L_401369:                                  ; preds = %block_401379, %block_.L_4012f1
%var_2_2494 = phi i32 [ %var_2_2541, %block_401379 ], [ 0, %block_.L_4012f1 ]
%var_2_2495 = phi i64 [ %var_2_2564, %block_401379 ], [ %var_2_2493, %block_.L_4012f1 ]
; Matched:%var_2_1615:  %var_2_1615 = zext i32 %var_2_1613 to i64
; %var_2_2496 = zext i32 %var_2_2494 to i64
; Matched:\<badref\>:  store i64 %var_2_2934, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2496, i64* %RAX.i271, align 8
%var_2_2497 = load i64, i64* %RBP.i, align 8
%var_2_2498 = add i64 %var_2_2497, -68
; Matched:%var_2_842:  %var_2_842 = add i64 %var_2_838, 10
; %var_2_2499 = add i64 %var_2_2495, 10
; Matched:\<badref\>:  store i64 %var_2_842, i64* %PC, align 8
; store i64 %var_2_2499, i64* %var_2_3, align 8
%var_2_2500 = inttoptr i64 %var_2_2498 to i32*
%var_2_2501 = load i32, i32* %var_2_2500, align 4
%var_2_2502 = sub i32 %var_2_2494, %var_2_2501
; Matched:%var_2_846:  %var_2_846 = icmp ult i32 %var_2_837, %var_2_844
; %var_2_2503 = icmp ult i32 %var_2_2494, %var_2_2501
; Matched:%var_2_847:  %var_2_847 = zext i1 %var_2_846 to i8
; %var_2_2504 = zext i1 %var_2_2503 to i8
; Matched:\<badref\>:  store i8 %var_2_847, i8* %var_2_17, align 1, !tbaa !1267
; store i8 %var_2_2504, i8* %var_2_14, align 1
; Matched:%var_2_848:  %var_2_848 = and i32 %var_2_845, 255
; %var_2_2505 = and i32 %var_2_2502, 255
; Matched:%var_2_849:  %var_2_849 = tail call i32 @llvm.ctpop.i32(i32 %var_2_848) #12
; %var_2_2506 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2505)
; Matched:%var_2_2945:  %var_2_2945 = trunc i32 %var_2_2944 to i8
; %var_2_2507 = trunc i32 %var_2_2506 to i8
; Matched:%var_2_2946:  %var_2_2946 = and i8 %var_2_2945, 1
; %var_2_2508 = and i8 %var_2_2507, 1
; Matched:%var_2_2947:  %var_2_2947 = xor i8 %var_2_2946, 1
; %var_2_2509 = xor i8 %var_2_2508, 1
; Matched:\<badref\>:  store i8 %var_2_852, i8* %var_2_18, align 1, !tbaa !1281
; store i8 %var_2_2509, i8* %var_2_21, align 1
; Matched:%var_2_853:  %var_2_853 = xor i32 %var_2_844, %var_2_837
; %var_2_2510 = xor i32 %var_2_2501, %var_2_2494
; Matched:%var_2_854:  %var_2_854 = xor i32 %var_2_853, %var_2_845
; %var_2_2511 = xor i32 %var_2_2510, %var_2_2502
; Matched:%var_2_855:  %var_2_855 = lshr i32 %var_2_854, 4
; %var_2_2512 = lshr i32 %var_2_2511, 4
; Matched:%var_2_856:  %var_2_856 = trunc i32 %var_2_855 to i8
; %var_2_2513 = trunc i32 %var_2_2512 to i8
; Matched:%var_2_2952:  %var_2_2952 = and i8 %var_2_2951, 1
; %var_2_2514 = and i8 %var_2_2513, 1
; Matched:\<badref\>:  store i8 %var_2_2952, i8* %var_2_19, align 1, !tbaa !1285
; store i8 %var_2_2514, i8* %var_2_27, align 1
; Matched:%var_2_2953:  %var_2_2953 = icmp eq i32 %var_2_2940, 0
; %var_2_2515 = icmp eq i32 %var_2_2502, 0
; Matched:%var_2_859:  %var_2_859 = zext i1 %var_2_858 to i8
; %var_2_2516 = zext i1 %var_2_2515 to i8
; Matched:\<badref\>:  store i8 %var_2_859, i8* %var_2_20, align 1, !tbaa !1282
; store i8 %var_2_2516, i8* %var_2_30, align 1
%var_2_2517 = lshr i32 %var_2_2502, 31
%var_2_2518 = trunc i32 %var_2_2517 to i8
; Matched:\<badref\>:  store i8 %var_2_861, i8* %var_2_21, align 1, !tbaa !1283
; store i8 %var_2_2518, i8* %var_2_33, align 1
%var_2_2519 = lshr i32 %var_2_2494, 31
%var_2_2520 = lshr i32 %var_2_2501, 31
%var_2_2521 = xor i32 %var_2_2520, %var_2_2519
%var_2_2522 = xor i32 %var_2_2517, %var_2_2519
%var_2_2523 = add nuw nsw i32 %var_2_2522, %var_2_2521
%var_2_2524 = icmp eq i32 %var_2_2523, 2
; Matched:%var_2_868:  %var_2_868 = zext i1 %var_2_867 to i8
; %var_2_2525 = zext i1 %var_2_2524 to i8
; Matched:\<badref\>:  store i8 %var_2_868, i8* %var_2_22, align 1, !tbaa !1284
; store i8 %var_2_2525, i8* %var_2_39, align 1
%var_2_2526 = icmp ne i8 %var_2_2518, 0
%var_2_2527 = xor i1 %var_2_2526, %var_2_2524
%.v98 = select i1 %var_2_2527, i64 16, i64 81
%var_2_2528 = add i64 %var_2_2495, %.v98
; Matched:\<badref\>:  store i64 %var_2_871, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2528, i64* %var_2_3, align 8
br i1 %var_2_2527, label %block_401379, label %block_.L_4013ba

block_401379:                                     ; preds = %block_.L_401369
  store i64 ptrtoint (%G__0x62c020_type* @G__0x62c020 to i64), i64* %RDI.i594, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %RCX.i347, align 8
; Matched:%var_2_1077:  %var_2_1077 = add i64 %var_2_1076, -20
; %var_2_2529 = add i64 %var_2_2497, -20
; Matched:\<badref\>:  store i64 %var_2_187, i64* %R8, align 8, !tbaa !1261
; store i64 %var_2_2529, i64* %var_2_57, align 8
%var_2_2530 = load i32, i32* bitcast (%G_0x604054_type* @G_0x604054 to i32*), align 8
%var_2_2531 = zext i32 %var_2_2530 to i64
store i64 %var_2_2531, i64* %RSI.i245, align 8
%var_2_2532 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
%var_2_2533 = zext i32 %var_2_2532 to i64
store i64 %var_2_2533, i64* %RDX.i359, align 8
; Matched:%var_2_3008:  %var_2_3008 = add i64 %var_2_871, 999
; %var_2_2534 = add i64 %var_2_2528, 999
; Matched:%var_2_3009:  %var_2_3009 = add i64 %var_2_871, 43
; %var_2_2535 = add i64 %var_2_2528, 43
%var_2_2536 = load i64, i64* %var_2_6, align 8
%var_2_2537 = add i64 %var_2_2536, -8
; Matched:%var_2_3012:  %var_2_3012 = inttoptr i64 %var_2_3011 to i64*
; %var_2_2538 = inttoptr i64 %var_2_2537 to i64*
; Matched:\<badref\>:  store i64 %var_2_2638, i64* %var_2_2641, align 8
; store i64 %var_2_2535, i64* %var_2_2538, align 8
; Matched:\<badref\>:  store i64 %var_2_2386, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_2537, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_3008, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2534, i64* %var_2_3, align 8
; Matched:%var_2_3013:  %var_2_3013 = tail call %struct.Memory* @sub_401760_matgen_renamed_(%struct.State* nonnull %0, i64 %var_2_3008, %struct.Memory* %var_2_455)
; %call2_40139f = tail call %struct.Memory* @sub_401760.matgen(%struct.State* nonnull %0, i64 %var_2_2534, %struct.Memory* %call2_401354)
%var_2_2539 = load i64, i64* %var_2_3, align 8
%var_2_2540 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
%var_2_2541 = add i32 %var_2_2540, 1
%var_2_2542 = zext i32 %var_2_2541 to i64
store i64 %var_2_2542, i64* %RAX.i271, align 8
%var_2_2543 = icmp eq i32 %var_2_2540, -1
%var_2_2544 = icmp eq i32 %var_2_2541, 0
%var_2_2545 = or i1 %var_2_2543, %var_2_2544
%var_2_2546 = zext i1 %var_2_2545 to i8
store i8 %var_2_2546, i8* %var_2_14, align 1
%var_2_2547 = and i32 %var_2_2541, 255
%var_2_2548 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2547)
%var_2_2549 = trunc i32 %var_2_2548 to i8
%var_2_2550 = and i8 %var_2_2549, 1
%var_2_2551 = xor i8 %var_2_2550, 1
store i8 %var_2_2551, i8* %var_2_21, align 1
%var_2_2552 = xor i32 %var_2_2541, %var_2_2540
%var_2_2553 = lshr i32 %var_2_2552, 4
%var_2_2554 = trunc i32 %var_2_2553 to i8
%var_2_2555 = and i8 %var_2_2554, 1
store i8 %var_2_2555, i8* %var_2_27, align 1
%var_2_2556 = zext i1 %var_2_2544 to i8
store i8 %var_2_2556, i8* %var_2_30, align 1
%var_2_2557 = lshr i32 %var_2_2541, 31
%var_2_2558 = trunc i32 %var_2_2557 to i8
store i8 %var_2_2558, i8* %var_2_33, align 1
%var_2_2559 = lshr i32 %var_2_2540, 31
%var_2_2560 = xor i32 %var_2_2557, %var_2_2559
%var_2_2561 = add nuw nsw i32 %var_2_2560, %var_2_2557
%var_2_2562 = icmp eq i32 %var_2_2561, 2
%var_2_2563 = zext i1 %var_2_2562 to i8
store i8 %var_2_2563, i8* %var_2_39, align 1
store i32 %var_2_2541, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
%var_2_2564 = add i64 %var_2_2539, -59
; Matched:\<badref\>:  store i64 %var_2_2668, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2564, i64* %var_2_3, align 8
  br label %block_.L_401369

block_.L_4013ba:                                  ; preds = %block_.L_401369
%var_2_2565 = add i64 %var_2_2528, -3530
; Matched:%var_2_933:  %var_2_933 = add i64 %var_2_2966, 5
; %var_2_2566 = add i64 %var_2_2528, 5
%var_2_2567 = load i64, i64* %var_2_6, align 8
%var_2_2568 = add i64 %var_2_2567, -8
; Matched:%var_2_936:  %var_2_936 = inttoptr i64 %var_2_935 to i64*
; %var_2_2569 = inttoptr i64 %var_2_2568 to i64*
; Matched:\<badref\>:  store i64 %var_2_933, i64* %var_2_936, align 8
; store i64 %var_2_2566, i64* %var_2_2569, align 8
; Matched:\<badref\>:  store i64 %var_2_2625, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_2568, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1727, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2565, i64* %var_2_3, align 8
%call2_4013ba = tail call %struct.Memory* @sub_4005f0.second(%struct.State* nonnull %0, i64 %var_2_2565, %struct.Memory* %call2_401354)
%var_2_2570 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x4030a7_type* @G__0x4030a7 to i64), i64* %RSI.i245, align 8
%var_2_2571 = bitcast %union.VectorReg* %var_2_221 to <4 x i32>*
store <4 x i32> zeroinitializer, <4 x i32>* %var_2_2571, align 1
%var_2_2572 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1736:  %var_2_1736 = add i64 %var_2_1735, -84
; %var_2_2573 = add i64 %var_2_2572, -84
%var_2_2574 = add i64 %var_2_2570, 18
store i64 %var_2_2574, i64* %var_2_3, align 8
%var_2_2575 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_2576 = extractelement <2 x float> %var_2_2575, i32 0
; Matched:%var_2_1740:  %var_2_1740 = inttoptr i64 %var_2_1736 to float*
; %var_2_2577 = inttoptr i64 %var_2_2573 to float*
; Matched:\<badref\>:  store float %var_2_1494, float* %var_2_1495, align 4
; store float %var_2_2576, float* %var_2_2577, align 4
%var_2_2578 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_946:  %var_2_946 = add i64 %var_2_945, -84
; %var_2_2579 = add i64 %var_2_2578, -84
%var_2_2580 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2873:  %var_2_2873 = add i64 %var_2_2872, 5
; %var_2_2581 = add i64 %var_2_2580, 5
; Matched:\<badref\>:  store i64 %var_2_1337, i64* %PC, align 8
; store i64 %var_2_2581, i64* %var_2_3, align 8
; Matched:%var_2_949:  %var_2_949 = inttoptr i64 %var_2_946 to i32*
; %var_2_2582 = inttoptr i64 %var_2_2579 to i32*
; Matched:%var_2_1746:  %var_2_1746 = load i32, i32* %var_2_1745, align 4
; %var_2_2583 = load i32, i32* %var_2_2582, align 4
; Matched:\<badref\>:  store i32 %var_2_1746, i32* %var_2_26, align 1, !tbaa !1265
; store i32 %var_2_2583, i32* %var_2_47, align 1
store float 0.000000e+00, float* %var_2_49, align 1
store float 0.000000e+00, float* %var_2_51, align 1
store float 0.000000e+00, float* %var_2_53, align 1
; Matched:%var_2_1747:  %var_2_1747 = add i64 %var_2_1741, -80
; %var_2_2584 = add i64 %var_2_2578, -80
; Matched:%var_2_1356:  %var_2_1356 = add i64 %var_2_1350, 10
; %var_2_2585 = add i64 %var_2_2580, 10
; Matched:\<badref\>:  store i64 %var_2_1005, i64* %PC, align 8
; store i64 %var_2_2585, i64* %var_2_3, align 8
%var_2_2586 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_2587 = load <2 x i32>, <2 x i32>* %var_2_257, align 1
; Matched:%var_2_1485:  %var_2_1485 = inttoptr i64 %var_2_1482 to float*
; %var_2_2588 = inttoptr i64 %var_2_2584 to float*
; Matched:%var_2_956:  %var_2_956 = load float, float* %var_2_955, align 4
; %var_2_2589 = load float, float* %var_2_2588, align 4
%var_2_2590 = extractelement <2 x float> %var_2_2586, i32 0
; Matched:%var_2_1488:  %var_2_1488 = fsub float %var_2_1487, %var_2_1486
; %var_2_2591 = fsub float %var_2_2590, %var_2_2589
; Matched:\<badref\>:  store float %var_2_1754, float* %var_2_25, align 1, !tbaa !1265
; store float %var_2_2591, float* %var_2_46, align 1
%var_2_2592 = bitcast <2 x float> %var_2_2586 to <2 x i32>
%var_2_2593 = extractelement <2 x i32> %var_2_2592, i32 1
; Matched:\<badref\>:  store i32 %var_2_2258, i32* %var_2_245, align 1, !tbaa !1265
; store i32 %var_2_2593, i32* %var_2_281, align 1
%var_2_2594 = extractelement <2 x i32> %var_2_2587, i32 0
; Matched:\<badref\>:  store i32 %var_2_1298, i32* %var_2_247, align 1, !tbaa !1265
; store i32 %var_2_2594, i32* %var_2_283, align 1
%var_2_2595 = extractelement <2 x i32> %var_2_2587, i32 1
; Matched:\<badref\>:  store i32 %var_2_2260, i32* %var_2_249, align 1, !tbaa !1265
; store i32 %var_2_2595, i32* %var_2_285, align 1
; Matched:%var_2_1759:  %var_2_1759 = add i64 %var_2_1741, -76
; %var_2_2596 = add i64 %var_2_2578, -76
; Matched:%var_2_964:  %var_2_964 = add i64 %var_2_947, 15
; %var_2_2597 = add i64 %var_2_2580, 15
; Matched:\<badref\>:  store i64 %var_2_1760, i64* %PC, align 8
; store i64 %var_2_2597, i64* %var_2_3, align 8
%var_2_2598 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_2599 = extractelement <2 x float> %var_2_2598, i32 0
; Matched:%var_2_1763:  %var_2_1763 = inttoptr i64 %var_2_1759 to float*
; %var_2_2600 = inttoptr i64 %var_2_2596 to float*
; Matched:\<badref\>:  store float %var_2_1781, float* %var_2_1768, align 4
; store float %var_2_2599, float* %var_2_2600, align 4
%var_2_2601 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1765:  %var_2_1765 = add i64 %var_2_1764, -76
; %var_2_2602 = add i64 %var_2_2601, -76
%var_2_2603 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1744:  %var_2_1744 = add i64 %var_2_1743, 5
; %var_2_2604 = add i64 %var_2_2603, 5
; Matched:\<badref\>:  store i64 %var_2_1607, i64* %PC, align 8
; store i64 %var_2_2604, i64* %var_2_3, align 8
; Matched:%var_2_1768:  %var_2_1768 = inttoptr i64 %var_2_1765 to float*
; %var_2_2605 = inttoptr i64 %var_2_2602 to float*
; Matched:%var_2_1769:  %var_2_1769 = load float, float* %var_2_1768, align 4
; %var_2_2606 = load float, float* %var_2_2605, align 4
; Matched:%var_2_1770:  %var_2_1770 = fpext float %var_2_1769 to double
; %var_2_2607 = fpext float %var_2_2606 to double
; Matched:\<badref\>:  store double %var_2_1770, double* %var_2_189, align 1, !tbaa !1287
; store double %var_2_2607, double* %var_2_218, align 1
; Matched:%var_2_2772:  %var_2_2772 = add i64 %var_2_2727, -68
; %var_2_2608 = add i64 %var_2_2601, -68
; Matched:%var_2_1005:  %var_2_1005 = add i64 %var_2_990, 10
; %var_2_2609 = add i64 %var_2_2603, 10
; Matched:\<badref\>:  store i64 %var_2_719, i64* %PC, align 8
; store i64 %var_2_2609, i64* %var_2_3, align 8
; Matched:%var_2_1773:  %var_2_1773 = inttoptr i64 %var_2_1771 to i32*
; %var_2_2610 = inttoptr i64 %var_2_2608 to i32*
; Matched:%var_2_2775:  %var_2_2775 = load i32, i32* %var_2_2774, align 4
; %var_2_2611 = load i32, i32* %var_2_2610, align 4
; Matched:%var_2_2776:  %var_2_2776 = sitofp i32 %var_2_2775 to double
; %var_2_2612 = sitofp i32 %var_2_2611 to double
; Matched:\<badref\>:  store double %var_2_1775, double* %var_2_219, align 1, !tbaa !1287
; store double %var_2_2612, double* %var_2_253, align 1
; Matched:%var_2_1776:  %var_2_1776 = fdiv double %var_2_1770, %var_2_1775
; %var_2_2613 = fdiv double %var_2_2607, %var_2_2612
%.cast31 = bitcast double %var_2_2613 to <2 x i32>
; Matched:%var_2_1777:  %var_2_1777 = fptrunc double %var_2_1776 to float
; %var_2_2614 = fptrunc double %var_2_2613 to float
; Matched:\<badref\>:  store float %var_2_1777, float* %var_2_25, align 1, !tbaa !1265
; store float %var_2_2614, float* %var_2_46, align 1
%var_2_2615 = extractelement <2 x i32> %.cast31, i32 1
; Matched:\<badref\>:  store i32 %var_2_1778, i32* %var_2_245, align 1, !tbaa !1265
; store i32 %var_2_2615, i32* %var_2_281, align 1
; Matched:%var_2_1492:  %var_2_1492 = add i64 %var_2_1480, 23
; %var_2_2616 = add i64 %var_2_2603, 23
; Matched:\<badref\>:  store i64 %var_2_2119, i64* %PC, align 8
; store i64 %var_2_2616, i64* %var_2_3, align 8
%var_2_2617 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_2618 = extractelement <2 x float> %var_2_2617, i32 0
; Matched:\<badref\>:  store float %var_2_1762, float* %var_2_1763, align 4
; store float %var_2_2618, float* %var_2_2605, align 4
; Matched:%var_2_1782:  %var_2_1782 = load i64, i64* %PC, align 8
; %var_2_2619 = load i64, i64* %var_2_3, align 8
%var_2_2620 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
store i64 %var_2_2620, i64* %RDI.i594, align 8
%var_2_2621 = load <2 x i32>, <2 x i32>* %.pre-phi, align 1
%var_2_2622 = load <2 x i32>, <2 x i32>* %.pre-phi91, align 1
%var_2_2623 = extractelement <2 x i32> %var_2_2621, i32 0
; Matched:\<badref\>:  store i32 %var_2_1502, i32* %var_2_26, align 1, !tbaa !1265
; store i32 %var_2_2623, i32* %var_2_47, align 1
%var_2_2624 = extractelement <2 x i32> %var_2_2621, i32 1
; Matched:\<badref\>:  store i32 %var_2_1503, i32* %var_2_245, align 1, !tbaa !1265
; store i32 %var_2_2624, i32* %var_2_281, align 1
%var_2_2625 = extractelement <2 x i32> %var_2_2622, i32 0
; Matched:\<badref\>:  store i32 %var_2_980, i32* %var_2_247, align 1, !tbaa !1265
; store i32 %var_2_2625, i32* %var_2_283, align 1
%var_2_2626 = extractelement <2 x i32> %var_2_2622, i32 1
; Matched:\<badref\>:  store i32 %var_2_1505, i32* %var_2_249, align 1, !tbaa !1265
; store i32 %var_2_2626, i32* %var_2_285, align 1
; Matched:\<badref\>:  store i8 0, i8* %AL, align 1, !tbaa !1286
; store i8 1, i8* %AL.i1482, align 1
; Matched:%var_2_1790:  %var_2_1790 = add i64 %var_2_1782, -3847
; %var_2_2627 = add i64 %var_2_2619, -3847
; Matched:%var_2_1791:  %var_2_1791 = add i64 %var_2_1782, 18
; %var_2_2628 = add i64 %var_2_2619, 18
%var_2_2629 = load i64, i64* %var_2_6, align 8
%var_2_2630 = add i64 %var_2_2629, -8
; Matched:%var_2_1794:  %var_2_1794 = inttoptr i64 %var_2_1793 to i64*
; %var_2_2631 = inttoptr i64 %var_2_2630 to i64*
; Matched:\<badref\>:  store i64 %var_2_1791, i64* %var_2_1794, align 8
; store i64 %var_2_2628, i64* %var_2_2631, align 8
; Matched:\<badref\>:  store i64 %var_2_2062, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_2630, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1790, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2627, i64* %var_2_3, align 8
%var_2_2632 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %call2_4013ba)
%var_2_2633 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x403111_type* @G__0x403111 to i64), i64* %RSI.i245, align 8
%var_2_2634 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
store i64 %var_2_2634, i64* %RDI.i594, align 8
%var_2_2635 = load i32, i32* bitcast (%G_0x604054_type* @G_0x604054 to i32*), align 8
%var_2_2636 = zext i32 %var_2_2635 to i64
store i64 %var_2_2636, i64* %RDX.i359, align 8
; Matched:%var_2_1800:  %var_2_1800 = load i64, i64* %RBP, align 8
; %var_2_2637 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1801:  %var_2_1801 = add i64 %var_2_1800, -980
; %var_2_2638 = add i64 %var_2_2637, -980
; Matched:%var_2_1802:  %var_2_1802 = load i32, i32* %EAX, align 4
; %var_2_2639 = load i32, i32* %EAX.i1471, align 4
; Matched:%var_2_2336:  %var_2_2336 = add i64 %var_2_2329, 31
; %var_2_2640 = add i64 %var_2_2633, 31
; Matched:\<badref\>:  store i64 %var_2_2336, i64* %PC, align 8
; store i64 %var_2_2640, i64* %var_2_3, align 8
; Matched:%var_2_1804:  %var_2_1804 = inttoptr i64 %var_2_1801 to i32*
; %var_2_2641 = inttoptr i64 %var_2_2638 to i32*
; Matched:\<badref\>:  store i32 %var_2_1802, i32* %var_2_1804, align 4
; store i32 %var_2_2639, i32* %var_2_2641, align 4
; Matched:%var_2_2322:  %var_2_2322 = load i64, i64* %PC, align 8
; %var_2_2642 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i8 0, i8* %AL, align 1, !tbaa !1286
; store i8 0, i8* %AL.i1482, align 1
; Matched:%var_2_1806:  %var_2_1806 = add i64 %var_2_1805, -3896
; %var_2_2643 = add i64 %var_2_2642, -3896
; Matched:%var_2_144:  %var_2_144 = add i64 %var_2_142, 7
; %var_2_2644 = add i64 %var_2_2642, 7
%var_2_2645 = load i64, i64* %var_2_6, align 8
%var_2_2646 = add i64 %var_2_2645, -8
; Matched:%var_2_2287:  %var_2_2287 = inttoptr i64 %var_2_2286 to i64*
; %var_2_2647 = inttoptr i64 %var_2_2646 to i64*
; Matched:\<badref\>:  store i64 %var_2_130, i64* %var_2_133, align 8
; store i64 %var_2_2644, i64* %var_2_2647, align 8
; Matched:\<badref\>:  store i64 %var_2_1085, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_2646, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1806, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2643, i64* %var_2_3, align 8
%var_2_2648 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %var_2_2632)
%var_2_2649 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x40302a_type* @G__0x40302a to i64), i64* %RSI.i245, align 8
%var_2_2650 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
store i64 %var_2_2650, i64* %RDI.i594, align 8
; Matched:%var_2_1814:  %var_2_1814 = load i64, i64* %RBP, align 8
; %var_2_2651 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1815:  %var_2_1815 = add i64 %var_2_1814, -984
; %var_2_2652 = add i64 %var_2_2651, -984
; Matched:%var_2_1816:  %var_2_1816 = load i32, i32* %EAX, align 4
; %var_2_2653 = load i32, i32* %EAX.i1471, align 4
; Matched:%var_2_1152:  %var_2_1152 = add i64 %var_2_1147, 24
; %var_2_2654 = add i64 %var_2_2649, 24
; Matched:\<badref\>:  store i64 %var_2_2800, i64* %PC, align 8
; store i64 %var_2_2654, i64* %var_2_3, align 8
; Matched:%var_2_1818:  %var_2_1818 = inttoptr i64 %var_2_1815 to i32*
; %var_2_2655 = inttoptr i64 %var_2_2652 to i32*
; Matched:\<badref\>:  store i32 %var_2_1816, i32* %var_2_1818, align 4
; store i32 %var_2_2653, i32* %var_2_2655, align 4
; Matched:%var_2_1819:  %var_2_1819 = load i64, i64* %PC, align 8
; %var_2_2656 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i8 0, i8* %AL, align 1, !tbaa !1286
; store i8 0, i8* %AL.i1482, align 1
; Matched:%var_2_1820:  %var_2_1820 = add i64 %var_2_1819, -3927
; %var_2_2657 = add i64 %var_2_2656, -3927
; Matched:%var_2_1821:  %var_2_1821 = add i64 %var_2_1819, 7
; %var_2_2658 = add i64 %var_2_2656, 7
%var_2_2659 = load i64, i64* %var_2_6, align 8
%var_2_2660 = add i64 %var_2_2659, -8
; Matched:%var_2_147:  %var_2_147 = inttoptr i64 %var_2_146 to i64*
; %var_2_2661 = inttoptr i64 %var_2_2660 to i64*
; Matched:\<badref\>:  store i64 %var_2_2804, i64* %var_2_2807, align 8
; store i64 %var_2_2658, i64* %var_2_2661, align 8
; Matched:\<badref\>:  store i64 %var_2_2974, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_2660, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1820, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2657, i64* %var_2_3, align 8
%var_2_2662 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %var_2_2648)
%var_2_2663 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x403062_type* @G__0x403062 to i64), i64* %RSI.i245, align 8
%var_2_2664 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
store i64 %var_2_2664, i64* %RDI.i594, align 8
; Matched:%var_2_1828:  %var_2_1828 = load i64, i64* %RBP, align 8
; %var_2_2665 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1829:  %var_2_1829 = add i64 %var_2_1828, -988
; %var_2_2666 = add i64 %var_2_2665, -988
; Matched:%var_2_1830:  %var_2_1830 = load i32, i32* %EAX, align 4
; %var_2_2667 = load i32, i32* %EAX.i1471, align 4
; Matched:%var_2_2153:  %var_2_2153 = add i64 %var_2_2125, 24
; %var_2_2668 = add i64 %var_2_2663, 24
; Matched:\<badref\>:  store i64 %var_2_126, i64* %PC, align 8
; store i64 %var_2_2668, i64* %var_2_3, align 8
; Matched:%var_2_1832:  %var_2_1832 = inttoptr i64 %var_2_1829 to i32*
; %var_2_2669 = inttoptr i64 %var_2_2666 to i32*
; Matched:\<badref\>:  store i32 %var_2_1830, i32* %var_2_1832, align 4
; store i32 %var_2_2667, i32* %var_2_2669, align 4
; Matched:%var_2_1805:  %var_2_1805 = load i64, i64* %PC, align 8
; %var_2_2670 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i8 0, i8* %AL, align 1, !tbaa !1286
; store i8 0, i8* %AL.i1482, align 1
; Matched:%var_2_1834:  %var_2_1834 = add i64 %var_2_1833, -3958
; %var_2_2671 = add i64 %var_2_2670, -3958
; Matched:%var_2_1807:  %var_2_1807 = add i64 %var_2_1805, 7
; %var_2_2672 = add i64 %var_2_2670, 7
%var_2_2673 = load i64, i64* %var_2_6, align 8
%var_2_2674 = add i64 %var_2_2673, -8
; Matched:%var_2_133:  %var_2_133 = inttoptr i64 %var_2_132 to i64*
; %var_2_2675 = inttoptr i64 %var_2_2674 to i64*
; Matched:\<badref\>:  store i64 %var_2_2340, i64* %var_2_2343, align 8
; store i64 %var_2_2672, i64* %var_2_2675, align 8
; Matched:\<badref\>:  store i64 %var_2_3011, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_2674, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1834, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2671, i64* %var_2_3, align 8
%var_2_2676 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %var_2_2662)
%var_2_2677 = load i64, i64* %var_2_3, align 8
%var_2_2678 = bitcast [32 x %union.VectorReg]* %var_2_40 to <4 x i32>*
store <4 x i32> zeroinitializer, <4 x i32>* %var_2_2678, align 1
%var_2_2679 = load <2 x i32>, <2 x i32>* %.pre-phi, align 1
%var_2_2680 = load <2 x i32>, <2 x i32>* %.pre-phi91, align 1
; Matched:%var_2_1844:  %var_2_1844 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_604040__bss_type* @seg_604040__bss to i64), i64 163792) to i32*), align 16
; %var_2_2681 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
; Matched:%var_2_3075:  %var_2_3075 = sitofp i32 %var_2_3074 to float
; %var_2_2682 = sitofp i32 %var_2_2681 to float
; Matched:\<badref\>:  store float %var_2_1845, float* %var_2_2113, align 1, !tbaa !1265
; store float %var_2_2682, float* %var_2_944, align 1
%var_2_2683 = extractelement <2 x i32> %var_2_2679, i32 1
; Matched:\<badref\>:  store i32 %var_2_1180, i32* %var_2_1912, align 1, !tbaa !1265
; store i32 %var_2_2683, i32* %var_2_603, align 1
%var_2_2684 = extractelement <2 x i32> %var_2_2680, i32 0
; Matched:\<badref\>:  store i32 %var_2_2782, i32* %var_2_1913, align 1, !tbaa !1265
; store i32 %var_2_2684, i32* %var_2_604, align 1
%var_2_2685 = extractelement <2 x i32> %var_2_2680, i32 1
; Matched:\<badref\>:  store i32 %var_2_1578, i32* %var_2_1915, align 1, !tbaa !1265
; store i32 %var_2_2685, i32* %var_2_606, align 1
; Matched:%var_2_1849:  %var_2_1849 = load i64, i64* %RBP, align 8
; %var_2_2686 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1850:  %var_2_1850 = add i64 %var_2_1849, -76
; %var_2_2687 = add i64 %var_2_2686, -76
; Matched:%var_2_1851:  %var_2_1851 = add i64 %var_2_1840, 17
; %var_2_2688 = add i64 %var_2_2677, 17
; Matched:\<badref\>:  store i64 %var_2_676, i64* %PC, align 8
; store i64 %var_2_2688, i64* %var_2_3, align 8
%var_2_2689 = load <2 x float>, <2 x float>* %var_2_1037, align 1
%var_2_2690 = load <2 x i32>, <2 x i32>* %.pre-phi91, align 1
; Matched:%var_2_1854:  %var_2_1854 = inttoptr i64 %var_2_1850 to float*
; %var_2_2691 = inttoptr i64 %var_2_2687 to float*
; Matched:%var_2_1855:  %var_2_1855 = load float, float* %var_2_1854, align 4
; %var_2_2692 = load float, float* %var_2_2691, align 4
%var_2_2693 = extractelement <2 x float> %var_2_2689, i32 0
; Matched:%var_2_1857:  %var_2_1857 = fmul float %var_2_1856, %var_2_1855
; %var_2_2694 = fmul float %var_2_2693, %var_2_2692
; Matched:\<badref\>:  store float %var_2_1857, float* %var_2_2113, align 1, !tbaa !1265
; store float %var_2_2694, float* %var_2_944, align 1
%var_2_2695 = bitcast <2 x float> %var_2_2689 to <2 x i32>
%var_2_2696 = extractelement <2 x i32> %var_2_2695, i32 1
; Matched:\<badref\>:  store i32 %var_2_1193, i32* %var_2_1912, align 1, !tbaa !1265
; store i32 %var_2_2696, i32* %var_2_603, align 1
%var_2_2697 = extractelement <2 x i32> %var_2_2690, i32 0
; Matched:\<badref\>:  store i32 %var_2_3077, i32* %var_2_1913, align 1, !tbaa !1265
; store i32 %var_2_2697, i32* %var_2_604, align 1
%var_2_2698 = extractelement <2 x i32> %var_2_2690, i32 1
; Matched:\<badref\>:  store i32 %var_2_1848, i32* %var_2_1915, align 1, !tbaa !1265
; store i32 %var_2_2698, i32* %var_2_606, align 1
; Matched:%var_2_1862:  %var_2_1862 = add i64 %var_2_1849, -44
; %var_2_2699 = add i64 %var_2_2686, -44
; Matched:%var_2_1197:  %var_2_1197 = add i64 %var_2_1175, 22
; %var_2_2700 = add i64 %var_2_2677, 22
; Matched:\<badref\>:  store i64 %var_2_1197, i64* %PC, align 8
; store i64 %var_2_2700, i64* %var_2_3, align 8
%var_2_2701 = load <2 x float>, <2 x float>* %var_2_1037, align 1
%var_2_2702 = extractelement <2 x float> %var_2_2701, i32 0
; Matched:%var_2_1866:  %var_2_1866 = inttoptr i64 %var_2_1862 to float*
; %var_2_2703 = inttoptr i64 %var_2_2699 to float*
; Matched:\<badref\>:  store float %var_2_1865, float* %var_2_1866, align 4
; store float %var_2_2702, float* %var_2_2703, align 4
%var_2_2704 = load i64, i64* %var_2_3, align 8
%var_2_2705 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_2706 = extractelement <2 x float> %var_2_2705, i32 0
store float %var_2_2706, float* bitcast (%G_0x62bbb4_type* @G_0x62bbb4 to float*), align 8
  store i32 7, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
; Matched:%var_2_1870:  %var_2_1870 = load i64, i64* %RBP, align 8
; %var_2_2707 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1871:  %var_2_1871 = add i64 %var_2_1870, -992
; %var_2_2708 = add i64 %var_2_2707, -992
; Matched:%var_2_1872:  %var_2_1872 = load i32, i32* %EAX, align 4
; %var_2_2709 = load i32, i32* %EAX.i1471, align 4
; Matched:%var_2_790:  %var_2_790 = add i64 %var_2_784, 26
; %var_2_2710 = add i64 %var_2_2704, 26
; Matched:\<badref\>:  store i64 %var_2_790, i64* %PC, align 8
; store i64 %var_2_2710, i64* %var_2_3, align 8
; Matched:%var_2_1874:  %var_2_1874 = inttoptr i64 %var_2_1871 to i32*
; %var_2_2711 = inttoptr i64 %var_2_2708 to i32*
; Matched:\<badref\>:  store i32 %var_2_1872, i32* %var_2_1874, align 4
; store i32 %var_2_2709, i32* %var_2_2711, align 4
%.pre81 = load i64, i64* %var_2_3, align 8
  %.pre82 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
%var_2_2712 = bitcast i64* %var_2_50 to <2 x i32>*
  br label %block_.L_40149d

block_.L_40149d:                                  ; preds = %block_.L_4015e6, %block_.L_4013ba
%var_2_2713 = phi i32 [ %var_2_3160, %block_.L_4015e6 ], [ %.pre82, %block_.L_4013ba ]
%var_2_2714 = phi i64 [ %var_2_3183, %block_.L_4015e6 ], [ %.pre81, %block_.L_4013ba ]
%var_2_2715 = add i32 %var_2_2713, -12
; Matched:%var_2_2591:  %var_2_2591 = icmp ult i32 %var_2_2588, 12
; %var_2_2716 = icmp ult i32 %var_2_2713, 12
; Matched:%var_2_2592:  %var_2_2592 = zext i1 %var_2_2591 to i8
; %var_2_2717 = zext i1 %var_2_2716 to i8
; Matched:\<badref\>:  store i8 %var_2_2592, i8* %var_2_17, align 1, !tbaa !1267
; store i8 %var_2_2717, i8* %var_2_14, align 1
; Matched:%var_2_2593:  %var_2_2593 = and i32 %var_2_2590, 255
; %var_2_2718 = and i32 %var_2_2715, 255
; Matched:%var_2_2594:  %var_2_2594 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2593) #12
; %var_2_2719 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2718)
; Matched:%var_2_2595:  %var_2_2595 = trunc i32 %var_2_2594 to i8
; %var_2_2720 = trunc i32 %var_2_2719 to i8
; Matched:%var_2_2596:  %var_2_2596 = and i8 %var_2_2595, 1
; %var_2_2721 = and i8 %var_2_2720, 1
; Matched:%var_2_2597:  %var_2_2597 = xor i8 %var_2_2596, 1
; %var_2_2722 = xor i8 %var_2_2721, 1
; Matched:\<badref\>:  store i8 %var_2_2597, i8* %var_2_18, align 1, !tbaa !1281
; store i8 %var_2_2722, i8* %var_2_21, align 1
; Matched:%var_2_2598:  %var_2_2598 = xor i32 %var_2_2590, %var_2_2588
; %var_2_2723 = xor i32 %var_2_2715, %var_2_2713
; Matched:%var_2_2599:  %var_2_2599 = lshr i32 %var_2_2598, 4
; %var_2_2724 = lshr i32 %var_2_2723, 4
; Matched:%var_2_2600:  %var_2_2600 = trunc i32 %var_2_2599 to i8
; %var_2_2725 = trunc i32 %var_2_2724 to i8
; Matched:%var_2_2601:  %var_2_2601 = and i8 %var_2_2600, 1
; %var_2_2726 = and i8 %var_2_2725, 1
; Matched:\<badref\>:  store i8 %var_2_2601, i8* %var_2_19, align 1, !tbaa !1285
; store i8 %var_2_2726, i8* %var_2_27, align 1
; Matched:%var_2_2602:  %var_2_2602 = icmp eq i32 %var_2_2590, 0
; %var_2_2727 = icmp eq i32 %var_2_2715, 0
; Matched:%var_2_2603:  %var_2_2603 = zext i1 %var_2_2602 to i8
; %var_2_2728 = zext i1 %var_2_2727 to i8
; Matched:\<badref\>:  store i8 %var_2_2603, i8* %var_2_20, align 1, !tbaa !1282
; store i8 %var_2_2728, i8* %var_2_30, align 1
%var_2_2729 = lshr i32 %var_2_2715, 31
%var_2_2730 = trunc i32 %var_2_2729 to i8
; Matched:\<badref\>:  store i8 %var_2_2605, i8* %var_2_21, align 1, !tbaa !1283
; store i8 %var_2_2730, i8* %var_2_33, align 1
%var_2_2731 = lshr i32 %var_2_2713, 31
%var_2_2732 = xor i32 %var_2_2729, %var_2_2731
%var_2_2733 = add nuw nsw i32 %var_2_2732, %var_2_2731
%var_2_2734 = icmp eq i32 %var_2_2733, 2
; Matched:%var_2_2610:  %var_2_2610 = zext i1 %var_2_2609 to i8
; %var_2_2735 = zext i1 %var_2_2734 to i8
; Matched:\<badref\>:  store i8 %var_2_2610, i8* %var_2_22, align 1, !tbaa !1284
; store i8 %var_2_2735, i8* %var_2_39, align 1
%var_2_2736 = icmp ne i8 %var_2_2730, 0
%var_2_2737 = xor i1 %var_2_2736, %var_2_2734
%.v99 = select i1 %var_2_2737, i64 14, i64 623
%var_2_2738 = add i64 %var_2_2714, %.v99
; Matched:\<badref\>:  store i64 %var_2_2613, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2738, i64* %var_2_3, align 8
br i1 %var_2_2737, label %block_4014ab, label %block_.L_40170c

block_4014ab:                                     ; preds = %block_.L_40149d
; Matched:%var_2_1712:  %var_2_1712 = add i64 %var_2_2613, -3771
; %var_2_2739 = add i64 %var_2_2738, -3771
; Matched:%var_2_1713:  %var_2_1713 = add i64 %var_2_2613, 5
; %var_2_2740 = add i64 %var_2_2738, 5
%var_2_2741 = load i64, i64* %var_2_6, align 8
%var_2_2742 = add i64 %var_2_2741, -8
; Matched:%var_2_1716:  %var_2_1716 = inttoptr i64 %var_2_1715 to i64*
; %var_2_2743 = inttoptr i64 %var_2_2742 to i64*
; Matched:\<badref\>:  store i64 %var_2_1713, i64* %var_2_1716, align 8
; store i64 %var_2_2740, i64* %var_2_2743, align 8
; Matched:\<badref\>:  store i64 %var_2_1793, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_2742, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1712, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2739, i64* %var_2_3, align 8
; Matched:%var_2_1717:  %var_2_1717 = tail call %struct.Memory* @sub_4005f0_second_renamed_(%struct.State* nonnull %0, i64 %var_2_1712, %struct.Memory* %var_2_1839)
; %call2_4014ab = tail call %struct.Memory* @sub_4005f0.second(%struct.State* nonnull %0, i64 %var_2_2739, %struct.Memory* %var_2_2676)
; Matched:%var_2_281:  %var_2_281 = load i64, i64* %RBP, align 8
; %var_2_2744 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_3105:  %var_2_3105 = add i64 %var_2_3104, -40
; %var_2_2745 = add i64 %var_2_2744, -40
%var_2_2746 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1337:  %var_2_1337 = add i64 %var_2_1336, 5
; %var_2_2747 = add i64 %var_2_2746, 5
; Matched:\<badref\>:  store i64 %var_2_1225, i64* %PC, align 8
; store i64 %var_2_2747, i64* %var_2_3, align 8
%var_2_2748 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_2749 = extractelement <2 x float> %var_2_2748, i32 0
; Matched:%var_2_1610:  %var_2_1610 = inttoptr i64 %var_2_1605 to float*
; %var_2_2750 = inttoptr i64 %var_2_2745 to float*
; Matched:\<badref\>:  store float %var_2_1609, float* %var_2_1610, align 4
; store float %var_2_2749, float* %var_2_2750, align 4
%var_2_2751 = load i64, i64* %var_2_3, align 8
%var_2_2752 = add i64 %var_2_2751, 11
; Matched:\<badref\>:  store i64 %var_2_2103, i64* %PC, align 8
; store i64 %var_2_2752, i64* %var_2_3, align 8
  store i32 0, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  br label %block_.L_4014c0

block_.L_4014c0:                                  ; preds = %block_4014d4, %block_4014ab
%var_2_2753 = phi i32 [ %var_2_2807, %block_4014d4 ], [ 0, %block_4014ab ]
; Matched:%var_2_873:  %var_2_873 = phi i64 [ %var_2_2725, %block_401090 ], [ %var_2_2057, %block_4010b9 ]
; %var_2_2754 = phi i64 [ %var_2_2830, %block_4014d4 ], [ %var_2_2752, %block_4014ab ]
; Matched:%var_2_874:  %var_2_874 = zext i32 %var_2_872 to i64
; %var_2_2755 = zext i32 %var_2_2753 to i64
; Matched:\<badref\>:  store i64 %var_2_566, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2755, i64* %RAX.i271, align 8
%var_2_2756 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
%var_2_2757 = sub i32 %var_2_2753, %var_2_2756
%var_2_2758 = icmp ult i32 %var_2_2753, %var_2_2756
%var_2_2759 = zext i1 %var_2_2758 to i8
store i8 %var_2_2759, i8* %var_2_14, align 1
%var_2_2760 = and i32 %var_2_2757, 255
%var_2_2761 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2760)
%var_2_2762 = trunc i32 %var_2_2761 to i8
%var_2_2763 = and i8 %var_2_2762, 1
%var_2_2764 = xor i8 %var_2_2763, 1
store i8 %var_2_2764, i8* %var_2_21, align 1
%var_2_2765 = xor i32 %var_2_2756, %var_2_2753
%var_2_2766 = xor i32 %var_2_2765, %var_2_2757
%var_2_2767 = lshr i32 %var_2_2766, 4
%var_2_2768 = trunc i32 %var_2_2767 to i8
%var_2_2769 = and i8 %var_2_2768, 1
store i8 %var_2_2769, i8* %var_2_27, align 1
%var_2_2770 = icmp eq i32 %var_2_2757, 0
%var_2_2771 = zext i1 %var_2_2770 to i8
store i8 %var_2_2771, i8* %var_2_30, align 1
%var_2_2772 = lshr i32 %var_2_2757, 31
%var_2_2773 = trunc i32 %var_2_2772 to i8
store i8 %var_2_2773, i8* %var_2_33, align 1
%var_2_2774 = lshr i32 %var_2_2753, 31
%var_2_2775 = lshr i32 %var_2_2756, 31
%var_2_2776 = xor i32 %var_2_2775, %var_2_2774
%var_2_2777 = xor i32 %var_2_2772, %var_2_2774
%var_2_2778 = add nuw nsw i32 %var_2_2777, %var_2_2776
%var_2_2779 = icmp eq i32 %var_2_2778, 2
%var_2_2780 = zext i1 %var_2_2779 to i8
store i8 %var_2_2780, i8* %var_2_39, align 1
%var_2_2781 = icmp ne i8 %var_2_2773, 0
%var_2_2782 = xor i1 %var_2_2781, %var_2_2779
; Matched:  %.v97 = select i1 %var_2_1642, i64 20, i64 134
; %.v100 = select i1 %var_2_2782, i64 20, i64 134
; Matched:%var_2_1643:  %var_2_1643 = add i64 %var_2_1614, %.v97
; %var_2_2783 = add i64 %var_2_2754, %.v100
; Matched:\<badref\>:  store i64 %var_2_1711, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2783, i64* %var_2_3, align 8
br i1 %var_2_2782, label %block_4014d4, label %block_.L_401546

block_4014d4:                                     ; preds = %block_.L_4014c0
  store i64 ptrtoint (%G__0x62c020_type* @G__0x62c020 to i64), i64* %RDI.i594, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %RCX.i347, align 8
%var_2_2784 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2618:  %var_2_2618 = add i64 %var_2_2617, -20
; %var_2_2785 = add i64 %var_2_2784, -20
; Matched:\<badref\>:  store i64 %var_2_1077, i64* %R8, align 8, !tbaa !1261
; store i64 %var_2_2785, i64* %var_2_57, align 8
%var_2_2786 = load i32, i32* bitcast (%G_0x604054_type* @G_0x604054 to i32*), align 8
%var_2_2787 = zext i32 %var_2_2786 to i64
store i64 %var_2_2787, i64* %RSI.i245, align 8
%var_2_2788 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
%var_2_2789 = zext i32 %var_2_2788 to i64
store i64 %var_2_2789, i64* %RDX.i359, align 8
; Matched:%var_2_1082:  %var_2_1082 = add i64 %var_2_1711, 652
; %var_2_2790 = add i64 %var_2_2783, 652
; Matched:%var_2_1083:  %var_2_1083 = add i64 %var_2_1711, 43
; %var_2_2791 = add i64 %var_2_2783, 43
%var_2_2792 = load i64, i64* %var_2_6, align 8
%var_2_2793 = add i64 %var_2_2792, -8
; Matched:%var_2_2019:  %var_2_2019 = inttoptr i64 %var_2_2018 to i64*
; %var_2_2794 = inttoptr i64 %var_2_2793 to i64*
; Matched:\<badref\>:  store i64 %var_2_2016, i64* %var_2_2019, align 8
; store i64 %var_2_2791, i64* %var_2_2794, align 8
; Matched:\<badref\>:  store i64 %var_2_1144, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_2793, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1082, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2790, i64* %var_2_3, align 8
; Matched:%var_2_1087:  %var_2_1087 = tail call %struct.Memory* @sub_401760_matgen_renamed_(%struct.State* nonnull %0, i64 %var_2_1082, %struct.Memory* %var_2_1839)
; %call2_4014fa = tail call %struct.Memory* @sub_401760.matgen(%struct.State* nonnull %0, i64 %var_2_2790, %struct.Memory* %var_2_2676)
; Matched:%var_2_1088:  %var_2_1088 = load i64, i64* %PC, align 8
; %var_2_2795 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x62c020_type* @G__0x62c020 to i64), i64* %RDI.i594, align 8
  store i64 ptrtoint (%G__0x62b7a0_type* @G__0x62b7a0 to i64), i64* %RCX.i347, align 8
store i64 ptrtoint (%G__0x62bac0_type* @G__0x62bac0 to i64), i64* %var_2_57, align 8
%var_2_2796 = load i32, i32* bitcast (%G_0x604054_type* @G_0x604054 to i32*), align 8
%var_2_2797 = zext i32 %var_2_2796 to i64
store i64 %var_2_2797, i64* %RSI.i245, align 8
%var_2_2798 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
%var_2_2799 = zext i32 %var_2_2798 to i64
store i64 %var_2_2799, i64* %RDX.i359, align 8
; Matched:%var_2_1093:  %var_2_1093 = add i64 %var_2_1088, 1073
; %var_2_2800 = add i64 %var_2_2795, 1073
; Matched:%var_2_1094:  %var_2_1094 = add i64 %var_2_1088, 49
; %var_2_2801 = add i64 %var_2_2795, 49
%var_2_2802 = load i64, i64* %var_2_6, align 8
%var_2_2803 = add i64 %var_2_2802, -8
; Matched:%var_2_1097:  %var_2_1097 = inttoptr i64 %var_2_1096 to i64*
; %var_2_2804 = inttoptr i64 %var_2_2803 to i64*
; Matched:\<badref\>:  store i64 %var_2_1094, i64* %var_2_1097, align 8
; store i64 %var_2_2801, i64* %var_2_2804, align 8
; Matched:\<badref\>:  store i64 %var_2_342, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_2803, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1093, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2800, i64* %var_2_3, align 8
; Matched:%var_2_1098:  %var_2_1098 = tail call %struct.Memory* @sub_401930_dgefa_renamed_(%struct.State* nonnull %0, i64 %var_2_1093, %struct.Memory* %var_2_1839)
; %call2_40152b = tail call %struct.Memory* @sub_401930.dgefa(%struct.State* nonnull %0, i64 %var_2_2800, %struct.Memory* %var_2_2676)
; Matched:%var_2_2032:  %var_2_2032 = load i64, i64* %PC, align 8
; %var_2_2805 = load i64, i64* %var_2_3, align 8
%var_2_2806 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
%var_2_2807 = add i32 %var_2_2806, 1
%var_2_2808 = zext i32 %var_2_2807 to i64
store i64 %var_2_2808, i64* %RAX.i271, align 8
%var_2_2809 = icmp eq i32 %var_2_2806, -1
%var_2_2810 = icmp eq i32 %var_2_2807, 0
%var_2_2811 = or i1 %var_2_2809, %var_2_2810
%var_2_2812 = zext i1 %var_2_2811 to i8
store i8 %var_2_2812, i8* %var_2_14, align 1
%var_2_2813 = and i32 %var_2_2807, 255
%var_2_2814 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2813)
%var_2_2815 = trunc i32 %var_2_2814 to i8
%var_2_2816 = and i8 %var_2_2815, 1
%var_2_2817 = xor i8 %var_2_2816, 1
store i8 %var_2_2817, i8* %var_2_21, align 1
%var_2_2818 = xor i32 %var_2_2807, %var_2_2806
%var_2_2819 = lshr i32 %var_2_2818, 4
%var_2_2820 = trunc i32 %var_2_2819 to i8
%var_2_2821 = and i8 %var_2_2820, 1
store i8 %var_2_2821, i8* %var_2_27, align 1
%var_2_2822 = zext i1 %var_2_2810 to i8
store i8 %var_2_2822, i8* %var_2_30, align 1
%var_2_2823 = lshr i32 %var_2_2807, 31
%var_2_2824 = trunc i32 %var_2_2823 to i8
store i8 %var_2_2824, i8* %var_2_33, align 1
%var_2_2825 = lshr i32 %var_2_2806, 31
%var_2_2826 = xor i32 %var_2_2823, %var_2_2825
%var_2_2827 = add nuw nsw i32 %var_2_2826, %var_2_2823
%var_2_2828 = icmp eq i32 %var_2_2827, 2
%var_2_2829 = zext i1 %var_2_2828 to i8
store i8 %var_2_2829, i8* %var_2_39, align 1
store i32 %var_2_2807, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
; Matched:%var_2_2057:  %var_2_2057 = add i64 %var_2_2032, -112
; %var_2_2830 = add i64 %var_2_2805, -112
; Matched:\<badref\>:  store i64 %var_2_1064, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2830, i64* %var_2_3, align 8
  br label %block_.L_4014c0

block_.L_401546:                                  ; preds = %block_.L_4014c0
; Matched:%var_2_1540:  %var_2_1540 = add i64 %var_2_1711, -3926
; %var_2_2831 = add i64 %var_2_2783, -3926
; Matched:%var_2_3041:  %var_2_3041 = add i64 %var_2_902, 5
; %var_2_2832 = add i64 %var_2_2783, 5
%var_2_2833 = load i64, i64* %var_2_6, align 8
%var_2_2834 = add i64 %var_2_2833, -8
; Matched:%var_2_3044:  %var_2_3044 = inttoptr i64 %var_2_3043 to i64*
; %var_2_2835 = inttoptr i64 %var_2_2834 to i64*
; Matched:\<badref\>:  store i64 %var_2_1475, i64* %var_2_1478, align 8
; store i64 %var_2_2832, i64* %var_2_2835, align 8
; Matched:\<badref\>:  store i64 %var_2_426, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_2834, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1540, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2831, i64* %var_2_3, align 8
; Matched:%var_2_1545:  %var_2_1545 = tail call %struct.Memory* @sub_4005f0_second_renamed_(%struct.State* nonnull %0, i64 %var_2_1540, %struct.Memory* %var_2_1839)
; %call2_401546 = tail call %struct.Memory* @sub_4005f0.second(%struct.State* nonnull %0, i64 %var_2_2831, %struct.Memory* %var_2_2676)
%var_2_2836 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_353:  %var_2_353 = add i64 %var_2_352, -40
; %var_2_2837 = add i64 %var_2_2836, -40
%var_2_2838 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_355:  %var_2_355 = add i64 %var_2_354, 5
; %var_2_2839 = add i64 %var_2_2838, 5
; Matched:\<badref\>:  store i64 %var_2_2873, i64* %PC, align 8
; store i64 %var_2_2839, i64* %var_2_3, align 8
%var_2_2840 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_2841 = load <2 x i32>, <2 x i32>* %var_2_257, align 1
; Matched:%var_2_1275:  %var_2_1275 = inttoptr i64 %var_2_1271 to float*
; %var_2_2842 = inttoptr i64 %var_2_2837 to float*
; Matched:%var_2_358:  %var_2_358 = load float, float* %var_2_357, align 4
; %var_2_2843 = load float, float* %var_2_2842, align 4
%var_2_2844 = extractelement <2 x float> %var_2_2840, i32 0
; Matched:%var_2_1278:  %var_2_1278 = fsub float %var_2_1277, %var_2_1276
; %var_2_2845 = fsub float %var_2_2844, %var_2_2843
; Matched:\<badref\>:  store float %var_2_1278, float* %var_2_25, align 1, !tbaa !1265
; store float %var_2_2845, float* %var_2_46, align 1
%var_2_2846 = bitcast <2 x float> %var_2_2840 to <2 x i32>
%var_2_2847 = extractelement <2 x i32> %var_2_2846, i32 1
; Matched:\<badref\>:  store i32 %var_2_2212, i32* %var_2_245, align 1, !tbaa !1265
; store i32 %var_2_2847, i32* %var_2_281, align 1
%var_2_2848 = extractelement <2 x i32> %var_2_2841, i32 0
; Matched:\<badref\>:  store i32 %var_2_661, i32* %var_2_247, align 1, !tbaa !1265
; store i32 %var_2_2848, i32* %var_2_283, align 1
%var_2_2849 = extractelement <2 x i32> %var_2_2841, i32 1
; Matched:\<badref\>:  store i32 %var_2_2214, i32* %var_2_249, align 1, !tbaa !1265
; store i32 %var_2_2849, i32* %var_2_285, align 1
; Matched:%var_2_3060:  %var_2_3060 = add i64 %var_2_3046, -44
; %var_2_2850 = add i64 %var_2_2836, -44
; Matched:%var_2_2198:  %var_2_2198 = add i64 %var_2_2193, 10
; %var_2_2851 = add i64 %var_2_2838, 10
; Matched:\<badref\>:  store i64 %var_2_42, i64* %PC, align 8
; store i64 %var_2_2851, i64* %var_2_3, align 8
%var_2_2852 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_2853 = load <2 x i32>, <2 x i32>* %var_2_257, align 1
; Matched:%var_2_3064:  %var_2_3064 = inttoptr i64 %var_2_3060 to float*
; %var_2_2854 = inttoptr i64 %var_2_2850 to float*
; Matched:%var_2_3065:  %var_2_3065 = load float, float* %var_2_3064, align 4
; %var_2_2855 = load float, float* %var_2_2854, align 4
%var_2_2856 = extractelement <2 x float> %var_2_2852, i32 0
; Matched:%var_2_3067:  %var_2_3067 = fsub float %var_2_3066, %var_2_3065
; %var_2_2857 = fsub float %var_2_2856, %var_2_2855
; Matched:\<badref\>:  store float %var_2_1567, float* %var_2_25, align 1, !tbaa !1265
; store float %var_2_2857, float* %var_2_46, align 1
%var_2_2858 = bitcast <2 x float> %var_2_2852 to <2 x i32>
%var_2_2859 = extractelement <2 x i32> %var_2_2858, i32 1
; Matched:\<badref\>:  store i32 %var_2_3057, i32* %var_2_245, align 1, !tbaa !1265
; store i32 %var_2_2859, i32* %var_2_281, align 1
%var_2_2860 = extractelement <2 x i32> %var_2_2853, i32 0
; Matched:\<badref\>:  store i32 %var_2_1436, i32* %var_2_247, align 1, !tbaa !1265
; store i32 %var_2_2860, i32* %var_2_283, align 1
%var_2_2861 = extractelement <2 x i32> %var_2_2853, i32 1
; Matched:\<badref\>:  store i32 %var_2_1392, i32* %var_2_249, align 1, !tbaa !1265
; store i32 %var_2_2861, i32* %var_2_285, align 1
%var_2_2862 = load <2 x i32>, <2 x i32>* %.pre-phi, align 1
%var_2_2863 = load <2 x i32>, <2 x i32>* %.pre-phi91, align 1
; Matched:%var_2_3074:  %var_2_3074 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_604040__bss_type* @seg_604040__bss to i64), i64 163792) to i32*), align 16
; %var_2_2864 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
; Matched:%var_2_1845:  %var_2_1845 = sitofp i32 %var_2_1844 to float
; %var_2_2865 = sitofp i32 %var_2_2864 to float
; Matched:\<badref\>:  store float %var_2_3075, float* %var_2_2113, align 1, !tbaa !1265
; store float %var_2_2865, float* %var_2_944, align 1
%var_2_2866 = extractelement <2 x i32> %var_2_2862, i32 1
; Matched:\<badref\>:  store i32 %var_2_1576, i32* %var_2_1912, align 1, !tbaa !1265
; store i32 %var_2_2866, i32* %var_2_603, align 1
%var_2_2867 = extractelement <2 x i32> %var_2_2863, i32 0
; Matched:\<badref\>:  store i32 %var_2_1577, i32* %var_2_1913, align 1, !tbaa !1265
; store i32 %var_2_2867, i32* %var_2_604, align 1
%var_2_2868 = extractelement <2 x i32> %var_2_2863, i32 1
; Matched:\<badref\>:  store i32 %var_2_3078, i32* %var_2_1915, align 1, !tbaa !1265
; store i32 %var_2_2868, i32* %var_2_606, align 1
%var_2_2869 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_2870 = load <2 x i32>, <2 x i32>* %var_2_257, align 1
%var_2_2871 = load <2 x float>, <2 x float>* %var_2_1037, align 1
%var_2_2872 = extractelement <2 x float> %var_2_2869, i32 0
%var_2_2873 = extractelement <2 x float> %var_2_2871, i32 0
; Matched:%var_2_1584:  %var_2_1584 = fdiv float %var_2_1582, %var_2_1583
; %var_2_2874 = fdiv float %var_2_2872, %var_2_2873
; Matched:\<badref\>:  store float %var_2_1584, float* %var_2_25, align 1, !tbaa !1265
; store float %var_2_2874, float* %var_2_46, align 1
%var_2_2875 = bitcast <2 x float> %var_2_2869 to <2 x i32>
%var_2_2876 = extractelement <2 x i32> %var_2_2875, i32 1
; Matched:\<badref\>:  store i32 %var_2_1756, i32* %var_2_245, align 1, !tbaa !1265
; store i32 %var_2_2876, i32* %var_2_281, align 1
%var_2_2877 = extractelement <2 x i32> %var_2_2870, i32 0
; Matched:\<badref\>:  store i32 %var_2_3070, i32* %var_2_247, align 1, !tbaa !1265
; store i32 %var_2_2877, i32* %var_2_283, align 1
%var_2_2878 = extractelement <2 x i32> %var_2_2870, i32 1
; Matched:\<badref\>:  store i32 %var_2_373, i32* %var_2_249, align 1, !tbaa !1265
; store i32 %var_2_2878, i32* %var_2_285, align 1
%var_2_2879 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
%var_2_2880 = sext i32 %var_2_2879 to i64
; Matched:\<badref\>:  store i64 %var_2_596, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2880, i64* %RAX.i271, align 8
%var_2_2881 = shl nsw i64 %var_2_2880, 2
%var_2_2882 = add nsw i64 %var_2_2881, 6470352
%var_2_2883 = add i64 %var_2_2838, 40
store i64 %var_2_2883, i64* %var_2_3, align 8
%var_2_2884 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_2885 = extractelement <2 x float> %var_2_2884, i32 0
%var_2_2886 = inttoptr i64 %var_2_2882 to float*
store float %var_2_2885, float* %var_2_2886, align 4
; Matched:%var_2_67:  %var_2_67 = load i64, i64* %PC, align 8
; %var_2_2887 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1598:  %var_2_1598 = add i64 %var_2_1597, -3971
; %var_2_2888 = add i64 %var_2_2887, -3971
; Matched:%var_2_69:  %var_2_69 = add i64 %var_2_67, 5
; %var_2_2889 = add i64 %var_2_2887, 5
%var_2_2890 = load i64, i64* %var_2_6, align 8
%var_2_2891 = add i64 %var_2_2890, -8
; Matched:%var_2_454:  %var_2_454 = inttoptr i64 %var_2_453 to i64*
; %var_2_2892 = inttoptr i64 %var_2_2891 to i64*
; Matched:\<badref\>:  store i64 %var_2_451, i64* %var_2_454, align 8
; store i64 %var_2_2889, i64* %var_2_2892, align 8
; Matched:\<badref\>:  store i64 %var_2_1036, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_2891, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1598, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2888, i64* %var_2_3, align 8
; Matched:%var_2_1603:  %var_2_1603 = tail call %struct.Memory* @sub_4005f0_second_renamed_(%struct.State* nonnull %0, i64 %var_2_1598, %struct.Memory* %var_2_1839)
; %call2_401573 = tail call %struct.Memory* @sub_4005f0.second(%struct.State* nonnull %0, i64 %var_2_2888, %struct.Memory* %var_2_2676)
; Matched:%var_2_3104:  %var_2_3104 = load i64, i64* %RBP, align 8
; %var_2_2893 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1719:  %var_2_1719 = add i64 %var_2_1718, -40
; %var_2_2894 = add i64 %var_2_2893, -40
%var_2_2895 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_948:  %var_2_948 = add i64 %var_2_947, 5
; %var_2_2896 = add i64 %var_2_2895, 5
; Matched:\<badref\>:  store i64 %var_2_948, i64* %PC, align 8
; store i64 %var_2_2896, i64* %var_2_3, align 8
%var_2_2897 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_2898 = extractelement <2 x float> %var_2_2897, i32 0
; Matched:%var_2_3110:  %var_2_3110 = inttoptr i64 %var_2_3105 to float*
; %var_2_2899 = inttoptr i64 %var_2_2894 to float*
; Matched:\<badref\>:  store float %var_2_2722, float* %var_2_2723, align 4
; store float %var_2_2898, float* %var_2_2899, align 4
%var_2_2900 = load i64, i64* %var_2_3, align 8
%var_2_2901 = add i64 %var_2_2900, 11
; Matched:\<badref\>:  store i64 %var_2_1901, i64* %PC, align 8
; store i64 %var_2_2901, i64* %var_2_3, align 8
  store i32 0, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  br label %block_.L_401588

block_.L_401588:                                  ; preds = %block_40159c, %block_.L_401546
%var_2_2902 = phi i32 [ %var_2_2944, %block_40159c ], [ 0, %block_.L_401546 ]
; Matched:%var_2_466:  %var_2_466 = phi i64 [ %var_2_3112, %block_40112b ], [ %var_2_3002, %block_401181 ]
; %var_2_2903 = phi i64 [ %var_2_2967, %block_40159c ], [ %var_2_2901, %block_.L_401546 ]
; Matched:%var_2_839:  %var_2_839 = zext i32 %var_2_837 to i64
; %var_2_2904 = zext i32 %var_2_2902 to i64
; Matched:\<badref\>:  store i64 %var_2_1683, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2904, i64* %RAX.i271, align 8
%var_2_2905 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
%var_2_2906 = sub i32 %var_2_2902, %var_2_2905
%var_2_2907 = icmp ult i32 %var_2_2902, %var_2_2905
%var_2_2908 = zext i1 %var_2_2907 to i8
store i8 %var_2_2908, i8* %var_2_14, align 1
%var_2_2909 = and i32 %var_2_2906, 255
%var_2_2910 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2909)
%var_2_2911 = trunc i32 %var_2_2910 to i8
%var_2_2912 = and i8 %var_2_2911, 1
%var_2_2913 = xor i8 %var_2_2912, 1
store i8 %var_2_2913, i8* %var_2_21, align 1
%var_2_2914 = xor i32 %var_2_2905, %var_2_2902
%var_2_2915 = xor i32 %var_2_2914, %var_2_2906
%var_2_2916 = lshr i32 %var_2_2915, 4
%var_2_2917 = trunc i32 %var_2_2916 to i8
%var_2_2918 = and i8 %var_2_2917, 1
store i8 %var_2_2918, i8* %var_2_27, align 1
%var_2_2919 = icmp eq i32 %var_2_2906, 0
%var_2_2920 = zext i1 %var_2_2919 to i8
store i8 %var_2_2920, i8* %var_2_30, align 1
%var_2_2921 = lshr i32 %var_2_2906, 31
%var_2_2922 = trunc i32 %var_2_2921 to i8
store i8 %var_2_2922, i8* %var_2_33, align 1
%var_2_2923 = lshr i32 %var_2_2902, 31
%var_2_2924 = lshr i32 %var_2_2905, 31
%var_2_2925 = xor i32 %var_2_2924, %var_2_2923
%var_2_2926 = xor i32 %var_2_2921, %var_2_2923
%var_2_2927 = add nuw nsw i32 %var_2_2926, %var_2_2925
%var_2_2928 = icmp eq i32 %var_2_2927, 2
%var_2_2929 = zext i1 %var_2_2928 to i8
store i8 %var_2_2929, i8* %var_2_39, align 1
%var_2_2930 = icmp ne i8 %var_2_2922, 0
%var_2_2931 = xor i1 %var_2_2930, %var_2_2928
; Matched:  %.v104 = select i1 %var_2_494, i64 20, i64 94
; %.v101 = select i1 %var_2_2931, i64 20, i64 94
; Matched:%var_2_1946:  %var_2_1946 = add i64 %var_2_1917, %.v102
; %var_2_2932 = add i64 %var_2_2903, %.v101
; Matched:\<badref\>:  store i64 %var_2_1946, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2932, i64* %var_2_3, align 8
br i1 %var_2_2931, label %block_40159c, label %block_.L_4015e6

block_40159c:                                     ; preds = %block_.L_401588
  store i64 ptrtoint (%G__0x62c020_type* @G__0x62c020 to i64), i64* %RDI.i594, align 8
  store i64 ptrtoint (%G__0x62b7a0_type* @G__0x62b7a0 to i64), i64* %RCX.i347, align 8
store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %var_2_57, align 8
  store i64 0, i64* %R9.i, align 8
store i8 0, i8* %var_2_14, align 1
store i8 1, i8* %var_2_21, align 1
store i8 1, i8* %var_2_30, align 1
store i8 0, i8* %var_2_33, align 1
store i8 0, i8* %var_2_39, align 1
store i8 0, i8* %var_2_27, align 1
%var_2_2933 = load i32, i32* bitcast (%G_0x604054_type* @G_0x604054 to i32*), align 8
%var_2_2934 = zext i32 %var_2_2933 to i64
store i64 %var_2_2934, i64* %RSI.i245, align 8
%var_2_2935 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
%var_2_2936 = zext i32 %var_2_2935 to i64
store i64 %var_2_2936, i64* %RDX.i359, align 8
; Matched:%var_2_2825:  %var_2_2825 = add i64 %var_2_1946, 1700
; %var_2_2937 = add i64 %var_2_2932, 1700
; Matched:%var_2_2826:  %var_2_2826 = add i64 %var_2_1946, 52
; %var_2_2938 = add i64 %var_2_2932, 52
%var_2_2939 = load i64, i64* %var_2_6, align 8
%var_2_2940 = add i64 %var_2_2939, -8
; Matched:%var_2_2829:  %var_2_2829 = inttoptr i64 %var_2_2828 to i64*
; %var_2_2941 = inttoptr i64 %var_2_2940 to i64*
; Matched:\<badref\>:  store i64 %var_2_2972, i64* %var_2_2975, align 8
; store i64 %var_2_2938, i64* %var_2_2941, align 8
; Matched:\<badref\>:  store i64 %var_2_118, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_2940, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_2825, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2937, i64* %var_2_3, align 8
; Matched:%var_2_2830:  %var_2_2830 = tail call %struct.Memory* @sub_401c40_dgesl_renamed_(%struct.State* nonnull %0, i64 %var_2_2825, %struct.Memory* %var_2_1839)
; %call2_4015cb = tail call %struct.Memory* @sub_401c40.dgesl(%struct.State* nonnull %0, i64 %var_2_2937, %struct.Memory* %var_2_2676)
; Matched:%var_2_2831:  %var_2_2831 = load i64, i64* %PC, align 8
; %var_2_2942 = load i64, i64* %var_2_3, align 8
%var_2_2943 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
%var_2_2944 = add i32 %var_2_2943, 1
%var_2_2945 = zext i32 %var_2_2944 to i64
store i64 %var_2_2945, i64* %RAX.i271, align 8
%var_2_2946 = icmp eq i32 %var_2_2943, -1
%var_2_2947 = icmp eq i32 %var_2_2944, 0
%var_2_2948 = or i1 %var_2_2946, %var_2_2947
%var_2_2949 = zext i1 %var_2_2948 to i8
store i8 %var_2_2949, i8* %var_2_14, align 1
%var_2_2950 = and i32 %var_2_2944, 255
%var_2_2951 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2950)
%var_2_2952 = trunc i32 %var_2_2951 to i8
%var_2_2953 = and i8 %var_2_2952, 1
%var_2_2954 = xor i8 %var_2_2953, 1
store i8 %var_2_2954, i8* %var_2_21, align 1
%var_2_2955 = xor i32 %var_2_2944, %var_2_2943
%var_2_2956 = lshr i32 %var_2_2955, 4
%var_2_2957 = trunc i32 %var_2_2956 to i8
%var_2_2958 = and i8 %var_2_2957, 1
store i8 %var_2_2958, i8* %var_2_27, align 1
%var_2_2959 = zext i1 %var_2_2947 to i8
store i8 %var_2_2959, i8* %var_2_30, align 1
%var_2_2960 = lshr i32 %var_2_2944, 31
%var_2_2961 = trunc i32 %var_2_2960 to i8
store i8 %var_2_2961, i8* %var_2_33, align 1
%var_2_2962 = lshr i32 %var_2_2943, 31
%var_2_2963 = xor i32 %var_2_2960, %var_2_2962
%var_2_2964 = add nuw nsw i32 %var_2_2963, %var_2_2960
%var_2_2965 = icmp eq i32 %var_2_2964, 2
%var_2_2966 = zext i1 %var_2_2965 to i8
store i8 %var_2_2966, i8* %var_2_39, align 1
store i32 %var_2_2944, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
; Matched:%var_2_2856:  %var_2_2856 = add i64 %var_2_2831, -72
; %var_2_2967 = add i64 %var_2_2942, -72
; Matched:\<badref\>:  store i64 %var_2_2856, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2967, i64* %var_2_3, align 8
  br label %block_.L_401588

block_.L_4015e6:                                  ; preds = %block_.L_401588
; Matched:%var_2_624:  %var_2_624 = add i64 %var_2_1946, -4086
; %var_2_2968 = add i64 %var_2_2932, -4086
; Matched:%var_2_625:  %var_2_625 = add i64 %var_2_1946, 5
; %var_2_2969 = add i64 %var_2_2932, 5
%var_2_2970 = load i64, i64* %var_2_6, align 8
%var_2_2971 = add i64 %var_2_2970, -8
; Matched:%var_2_628:  %var_2_628 = inttoptr i64 %var_2_627 to i64*
; %var_2_2972 = inttoptr i64 %var_2_2971 to i64*
; Matched:\<badref\>:  store i64 %var_2_1262, i64* %var_2_1265, align 8
; store i64 %var_2_2969, i64* %var_2_2972, align 8
; Matched:\<badref\>:  store i64 %var_2_1882, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_2971, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_624, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2968, i64* %var_2_3, align 8
; Matched:%var_2_629:  %var_2_629 = tail call %struct.Memory* @sub_4005f0_second_renamed_(%struct.State* nonnull %0, i64 %var_2_624, %struct.Memory* %var_2_1839)
; %call2_4015e6 = tail call %struct.Memory* @sub_4005f0.second(%struct.State* nonnull %0, i64 %var_2_2968, %struct.Memory* %var_2_2676)
%var_2_2973 = load i64, i64* %var_2_3, align 8
%var_2_2974 = add i64 %var_2_2973, ptrtoint (%G_0x1865__rip__type* @G_0x1865__rip_ to i64)
%var_2_2975 = add i64 %var_2_2973, 8
store i64 %var_2_2975, i64* %var_2_3, align 8
%var_2_2976 = inttoptr i64 %var_2_2974 to i64*
%var_2_2977 = load i64, i64* %var_2_2976, align 8
store i64 %var_2_2977, i64* %var_2_227, align 1
store double 0.000000e+00, double* %var_2_229, align 1
%var_2_2978 = add i64 %var_2_2973, add (i64 ptrtoint (%G_0x186d__rip__type* @G_0x186d__rip_ to i64), i64 8)
%var_2_2979 = add i64 %var_2_2973, 16
store i64 %var_2_2979, i64* %var_2_3, align 8
%var_2_2980 = inttoptr i64 %var_2_2978 to i64*
%var_2_2981 = load i64, i64* %var_2_2980, align 8
store i64 %var_2_2981, i64* %var_2_600, align 1
store double 0.000000e+00, double* %var_2_1962, align 1
%var_2_2982 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_306:  %var_2_306 = add i64 %var_2_305, -40
; %var_2_2983 = add i64 %var_2_2982, -40
; Matched:%var_2_1272:  %var_2_1272 = add i64 %var_2_1267, 21
; %var_2_2984 = add i64 %var_2_2973, 21
; Matched:\<badref\>:  store i64 %var_2_1272, i64* %PC, align 8
; store i64 %var_2_2984, i64* %var_2_3, align 8
%var_2_2985 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_2986 = load <2 x i32>, <2 x i32>* %var_2_257, align 1
; Matched:%var_2_638:  %var_2_638 = inttoptr i64 %var_2_634 to float*
; %var_2_2987 = inttoptr i64 %var_2_2983 to float*
; Matched:%var_2_639:  %var_2_639 = load float, float* %var_2_638, align 4
; %var_2_2988 = load float, float* %var_2_2987, align 4
%var_2_2989 = extractelement <2 x float> %var_2_2985, i32 0
; Matched:%var_2_360:  %var_2_360 = fsub float %var_2_359, %var_2_358
; %var_2_2990 = fsub float %var_2_2989, %var_2_2988
; Matched:\<badref\>:  store float %var_2_3055, float* %var_2_25, align 1, !tbaa !1265
; store float %var_2_2990, float* %var_2_46, align 1
%var_2_2991 = bitcast <2 x float> %var_2_2985 to <2 x i32>
%var_2_2992 = extractelement <2 x i32> %var_2_2991, i32 1
; Matched:\<badref\>:  store i32 %var_2_3086, i32* %var_2_245, align 1, !tbaa !1265
; store i32 %var_2_2992, i32* %var_2_281, align 1
%var_2_2993 = extractelement <2 x i32> %var_2_2986, i32 0
; Matched:\<badref\>:  store i32 %var_2_689, i32* %var_2_247, align 1, !tbaa !1265
; store i32 %var_2_2993, i32* %var_2_283, align 1
%var_2_2994 = extractelement <2 x i32> %var_2_2986, i32 1
; Matched:\<badref\>:  store i32 %var_2_730, i32* %var_2_249, align 1, !tbaa !1265
; store i32 %var_2_2994, i32* %var_2_285, align 1
%var_2_2995 = load <2 x i32>, <2 x i32>* %var_2_1963, align 1
%var_2_2996 = load <2 x i32>, <2 x i32>* %var_2_1964, align 1
; Matched:%var_2_648:  %var_2_648 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_604040__bss_type* @seg_604040__bss to i64), i64 163792) to i32*), align 16
; %var_2_2997 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
; Matched:%var_2_1286:  %var_2_1286 = sitofp i32 %var_2_1285 to float
; %var_2_2998 = sitofp i32 %var_2_2997 to float
; Matched:\<badref\>:  store float %var_2_1286, float* %var_2_1212, align 1, !tbaa !1265
; store float %var_2_2998, float* %var_2_1965, align 1
%var_2_2999 = extractelement <2 x i32> %var_2_2995, i32 1
; Matched:\<badref\>:  store i32 %var_2_650, i32* %var_2_227, align 1, !tbaa !1265
; store i32 %var_2_2999, i32* %var_2_262, align 1
%var_2_3000 = extractelement <2 x i32> %var_2_2996, i32 0
; Matched:\<badref\>:  store i32 %var_2_1288, i32* %var_2_229, align 1, !tbaa !1265
; store i32 %var_2_3000, i32* %var_2_264, align 1
%var_2_3001 = extractelement <2 x i32> %var_2_2996, i32 1
; Matched:\<badref\>:  store i32 %var_2_652, i32* %var_2_231, align 1, !tbaa !1265
; store i32 %var_2_3001, i32* %var_2_266, align 1
%var_2_3002 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_3003 = load <2 x i32>, <2 x i32>* %var_2_257, align 1
%var_2_3004 = load <2 x float>, <2 x float>* %var_2_1966, align 1
%var_2_3005 = extractelement <2 x float> %var_2_3002, i32 0
%var_2_3006 = extractelement <2 x float> %var_2_3004, i32 0
; Matched:%var_2_1295:  %var_2_1295 = fdiv float %var_2_1293, %var_2_1294
; %var_2_3007 = fdiv float %var_2_3005, %var_2_3006
; Matched:\<badref\>:  store float %var_2_1295, float* %var_2_25, align 1, !tbaa !1265
; store float %var_2_3007, float* %var_2_46, align 1
%var_2_3008 = bitcast <2 x float> %var_2_3002 to <2 x i32>
%var_2_3009 = extractelement <2 x i32> %var_2_3008, i32 1
; Matched:\<badref\>:  store i32 %var_2_960, i32* %var_2_245, align 1, !tbaa !1265
; store i32 %var_2_3009, i32* %var_2_281, align 1
%var_2_3010 = extractelement <2 x i32> %var_2_3003, i32 0
; Matched:\<badref\>:  store i32 %var_2_961, i32* %var_2_247, align 1, !tbaa !1265
; store i32 %var_2_3010, i32* %var_2_283, align 1
%var_2_3011 = extractelement <2 x i32> %var_2_3003, i32 1
; Matched:\<badref\>:  store i32 %var_2_690, i32* %var_2_249, align 1, !tbaa !1265
; store i32 %var_2_3011, i32* %var_2_285, align 1
%var_2_3012 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
%var_2_3013 = sext i32 %var_2_3012 to i64
%var_2_3014 = shl nsw i64 %var_2_3013, 2
%var_2_3015 = add nsw i64 %var_2_3014, 6470412
; Matched:%var_2_1304:  %var_2_1304 = add i64 %var_2_1267, 51
; %var_2_3016 = add i64 %var_2_2973, 51
; Matched:\<badref\>:  store i64 %var_2_667, i64* %PC, align 8
; store i64 %var_2_3016, i64* %var_2_3, align 8
%var_2_3017 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_3018 = extractelement <2 x float> %var_2_3017, i32 0
%var_2_3019 = inttoptr i64 %var_2_3015 to float*
store float %var_2_3018, float* %var_2_3019, align 4
%var_2_3020 = load i64, i64* %var_2_3, align 8
%var_2_3021 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
%var_2_3022 = sext i32 %var_2_3021 to i64
; Matched:\<badref\>:  store i64 %var_2_673, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_3022, i64* %RAX.i271, align 8
%var_2_3023 = shl nsw i64 %var_2_3022, 2
%var_2_3024 = add nsw i64 %var_2_3023, 6470352
; Matched:%var_2_744:  %var_2_744 = add i64 %var_2_739, 17
; %var_2_3025 = add i64 %var_2_3020, 17
; Matched:\<badref\>:  store i64 %var_2_2818, i64* %PC, align 8
; store i64 %var_2_3025, i64* %var_2_3, align 8
%var_2_3026 = inttoptr i64 %var_2_3024 to i32*
%var_2_3027 = load i32, i32* %var_2_3026, align 4
store i32 %var_2_3027, i32* %var_2_47, align 1
store float 0.000000e+00, float* %var_2_49, align 1
store float 0.000000e+00, float* %var_2_51, align 1
store float 0.000000e+00, float* %var_2_53, align 1
; Matched:\<badref\>:  store i64 %var_2_673, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_3022, i64* %RAX.i271, align 8
%var_2_3028 = add nsw i64 %var_2_3023, 6470412
; Matched:%var_2_1317:  %var_2_1317 = add i64 %var_2_1308, 34
; %var_2_3029 = add i64 %var_2_3020, 34
; Matched:\<badref\>:  store i64 %var_2_1317, i64* %PC, align 8
; store i64 %var_2_3029, i64* %var_2_3, align 8
%var_2_3030 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_3031 = load <2 x i32>, <2 x i32>* %var_2_257, align 1
%var_2_3032 = inttoptr i64 %var_2_3028 to float*
%var_2_3033 = load float, float* %var_2_3032, align 4
%var_2_3034 = extractelement <2 x float> %var_2_3030, i32 0
%var_2_3035 = fadd float %var_2_3034, %var_2_3033
store float %var_2_3035, float* %var_2_46, align 1
%var_2_3036 = bitcast <2 x float> %var_2_3030 to <2 x i32>
%var_2_3037 = extractelement <2 x i32> %var_2_3036, i32 1
; Matched:\<badref\>:  store i32 %var_2_371, i32* %var_2_245, align 1, !tbaa !1265
; store i32 %var_2_3037, i32* %var_2_281, align 1
%var_2_3038 = extractelement <2 x i32> %var_2_3031, i32 0
; Matched:\<badref\>:  store i32 %var_2_246, i32* %var_2_247, align 1, !tbaa !1265
; store i32 %var_2_3038, i32* %var_2_283, align 1
%var_2_3039 = extractelement <2 x i32> %var_2_3031, i32 1
; Matched:\<badref\>:  store i32 %var_2_800, i32* %var_2_249, align 1, !tbaa !1265
; store i32 %var_2_3039, i32* %var_2_285, align 1
%var_2_3040 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_374:  %var_2_374 = add i64 %var_2_352, -16
; %var_2_3041 = add i64 %var_2_3040, -16
; Matched:%var_2_1330:  %var_2_1330 = add i64 %var_2_1308, 39
; %var_2_3042 = add i64 %var_2_3020, 39
; Matched:\<badref\>:  store i64 %var_2_735, i64* %PC, align 8
; store i64 %var_2_3042, i64* %var_2_3, align 8
%var_2_3043 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_3044 = extractelement <2 x float> %var_2_3043, i32 0
; Matched:%var_2_696:  %var_2_696 = inttoptr i64 %var_2_692 to float*
; %var_2_3045 = inttoptr i64 %var_2_3041 to float*
; Matched:\<badref\>:  store float %var_2_377, float* %var_2_378, align 4
; store float %var_2_3044, float* %var_2_3045, align 4
%var_2_3046 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1335:  %var_2_1335 = add i64 %var_2_1334, -16
; %var_2_3047 = add i64 %var_2_3046, -16
%var_2_3048 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1401:  %var_2_1401 = add i64 %var_2_1400, 5
; %var_2_3049 = add i64 %var_2_3048, 5
; Matched:\<badref\>:  store i64 %var_2_714, i64* %PC, align 8
; store i64 %var_2_3049, i64* %var_2_3, align 8
; Matched:%var_2_1402:  %var_2_1402 = inttoptr i64 %var_2_1399 to i32*
; %var_2_3050 = inttoptr i64 %var_2_3047 to i32*
; Matched:%var_2_702:  %var_2_702 = load i32, i32* %var_2_701, align 4
; %var_2_3051 = load i32, i32* %var_2_3050, align 4
; Matched:\<badref\>:  store i32 %var_2_1403, i32* %var_2_26, align 1, !tbaa !1265
; store i32 %var_2_3051, i32* %var_2_47, align 1
store float 0.000000e+00, float* %var_2_49, align 1
store float 0.000000e+00, float* %var_2_51, align 1
store float 0.000000e+00, float* %var_2_53, align 1
%var_2_3052 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
%var_2_3053 = sext i32 %var_2_3052 to i64
; Matched:\<badref\>:  store i64 %var_2_673, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_3053, i64* %RAX.i271, align 8
%var_2_3054 = shl nsw i64 %var_2_3053, 2
%var_2_3055 = add nsw i64 %var_2_3054, 6470472
; Matched:%var_2_2881:  %var_2_2881 = add i64 %var_2_2872, 22
; %var_2_3056 = add i64 %var_2_3048, 22
; Matched:\<badref\>:  store i64 %var_2_1344, i64* %PC, align 8
; store i64 %var_2_3056, i64* %var_2_3, align 8
%var_2_3057 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_3058 = extractelement <2 x float> %var_2_3057, i32 0
%var_2_3059 = inttoptr i64 %var_2_3055 to float*
store float %var_2_3058, float* %var_2_3059, align 4
%var_2_3060 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_712:  %var_2_712 = add i64 %var_2_711, -12
; %var_2_3061 = add i64 %var_2_3060, -12
%var_2_3062 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2068:  %var_2_2068 = add i64 %var_2_2067, 5
; %var_2_3063 = add i64 %var_2_3062, 5
; Matched:\<badref\>:  store i64 %var_2_2068, i64* %PC, align 8
; store i64 %var_2_3063, i64* %var_2_3, align 8
; Matched:%var_2_715:  %var_2_715 = inttoptr i64 %var_2_712 to float*
; %var_2_3064 = inttoptr i64 %var_2_3061 to float*
; Matched:%var_2_716:  %var_2_716 = load float, float* %var_2_715, align 4
; %var_2_3065 = load float, float* %var_2_3064, align 4
; Matched:%var_2_1354:  %var_2_1354 = fpext float %var_2_1353 to double
; %var_2_3066 = fpext float %var_2_3065 to double
; Matched:\<badref\>:  store double %var_2_1354, double* %var_2_189, align 1, !tbaa !1287
; store double %var_2_3066, double* %var_2_218, align 1
%var_2_3067 = add i64 %var_2_3060, -16
; Matched:%var_2_1748:  %var_2_1748 = add i64 %var_2_1743, 10
; %var_2_3068 = add i64 %var_2_3062, 10
; Matched:\<badref\>:  store i64 %var_2_1772, i64* %PC, align 8
; store i64 %var_2_3068, i64* %var_2_3, align 8
%var_2_3069 = inttoptr i64 %var_2_3067 to float*
%var_2_3070 = load float, float* %var_2_3069, align 4
%var_2_3071 = fpext float %var_2_3070 to double
; Matched:\<badref\>:  store double %var_2_722, double* %var_2_232, align 1, !tbaa !1287
; store double %var_2_3071, double* %var_2_267, align 1
; Matched:%var_2_1360:  %var_2_1360 = load double, double* %var_2_219, align 1
; %var_2_3072 = load double, double* %var_2_253, align 1
; Matched:%var_2_724:  %var_2_724 = fmul double %var_2_722, %var_2_723
; %var_2_3073 = fmul double %var_2_3071, %var_2_3072
; Matched:\<badref\>:  store double %var_2_1361, double* %var_2_219, align 1, !tbaa !1287
; store double %var_2_3073, double* %var_2_253, align 1
%var_2_3074 = load <2 x i32>, <2 x i32>* %var_2_2712, align 1
; Matched:%var_2_1363:  %var_2_1363 = fdiv double %var_2_1354, %var_2_1361
; %var_2_3075 = fdiv double %var_2_3066, %var_2_3073
%.cast33 = bitcast double %var_2_3075 to <2 x i32>
; Matched:%var_2_727:  %var_2_727 = fptrunc double %var_2_726 to float
; %var_2_3076 = fptrunc double %var_2_3075 to float
; Matched:\<badref\>:  store float %var_2_1364, float* %var_2_25, align 1, !tbaa !1265
; store float %var_2_3076, float* %var_2_46, align 1
%var_2_3077 = extractelement <2 x i32> %.cast33, i32 1
; Matched:\<badref\>:  store i32 %var_2_728, i32* %var_2_245, align 1, !tbaa !1265
; store i32 %var_2_3077, i32* %var_2_281, align 1
%var_2_3078 = extractelement <2 x i32> %var_2_3074, i32 0
; Matched:\<badref\>:  store i32 %var_2_2536, i32* %var_2_247, align 1, !tbaa !1265
; store i32 %var_2_3078, i32* %var_2_283, align 1
%var_2_3079 = extractelement <2 x i32> %var_2_3074, i32 1
; Matched:\<badref\>:  store i32 %var_2_1327, i32* %var_2_249, align 1, !tbaa !1265
; store i32 %var_2_3079, i32* %var_2_285, align 1
%var_2_3080 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
%var_2_3081 = sext i32 %var_2_3080 to i64
%var_2_3082 = shl nsw i64 %var_2_3081, 2
%var_2_3083 = add nsw i64 %var_2_3082, 6470532
; Matched:%var_2_1372:  %var_2_1372 = add i64 %var_2_1350, 39
; %var_2_3084 = add i64 %var_2_3062, 39
; Matched:\<badref\>:  store i64 %var_2_693, i64* %PC, align 8
; store i64 %var_2_3084, i64* %var_2_3, align 8
%var_2_3085 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_3086 = extractelement <2 x float> %var_2_3085, i32 0
%var_2_3087 = inttoptr i64 %var_2_3083 to float*
store float %var_2_3086, float* %var_2_3087, align 4
%var_2_3088 = load i64, i64* %var_2_3, align 8
%var_2_3089 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
%var_2_3090 = sext i32 %var_2_3089 to i64
; Matched:\<badref\>:  store i64 %var_2_3090, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_3090, i64* %RAX.i271, align 8
%var_2_3091 = shl nsw i64 %var_2_3090, 2
%var_2_3092 = add nsw i64 %var_2_3091, 6470532
; Matched:%var_2_676:  %var_2_676 = add i64 %var_2_671, 17
; %var_2_3093 = add i64 %var_2_3088, 17
; Matched:\<badref\>:  store i64 %var_2_1381, i64* %PC, align 8
; store i64 %var_2_3093, i64* %var_2_3, align 8
%var_2_3094 = inttoptr i64 %var_2_3092 to float*
%var_2_3095 = load float, float* %var_2_3094, align 4
%var_2_3096 = fpext float %var_2_3095 to double
%var_2_3097 = load double, double* %var_2_226, align 1
%var_2_3098 = fdiv double %var_2_3097, %var_2_3096
store double %var_2_3098, double* %var_2_226, align 1
%var_2_3099 = bitcast double %var_2_3096 to <2 x i32>
%var_2_3100 = load <2 x i32>, <2 x i32>* %var_2_257, align 1
%var_2_3101 = fptrunc double %var_2_3098 to float
store float %var_2_3101, float* %var_2_46, align 1
%var_2_3102 = extractelement <2 x i32> %var_2_3099, i32 1
store i32 %var_2_3102, i32* %var_2_281, align 1
%var_2_3103 = extractelement <2 x i32> %var_2_3100, i32 0
; Matched:\<badref\>:  store i32 %var_2_2259, i32* %var_2_247, align 1, !tbaa !1265
; store i32 %var_2_3103, i32* %var_2_283, align 1
%var_2_3104 = extractelement <2 x i32> %var_2_3100, i32 1
; Matched:\<badref\>:  store i32 %var_2_1559, i32* %var_2_249, align 1, !tbaa !1265
; store i32 %var_2_3104, i32* %var_2_285, align 1
; Matched:\<badref\>:  store i64 %var_2_3090, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_3090, i64* %RAX.i271, align 8
%var_2_3105 = add nsw i64 %var_2_3091, 6470592
; Matched:%var_2_1394:  %var_2_1394 = add i64 %var_2_1376, 42
; %var_2_3106 = add i64 %var_2_3088, 42
; Matched:\<badref\>:  store i64 %var_2_1394, i64* %PC, align 8
; store i64 %var_2_3106, i64* %var_2_3, align 8
%var_2_3107 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_3108 = extractelement <2 x float> %var_2_3107, i32 0
%var_2_3109 = inttoptr i64 %var_2_3105 to float*
store float %var_2_3108, float* %var_2_3109, align 4
%var_2_3110 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_762:  %var_2_762 = add i64 %var_2_761, -16
; %var_2_3111 = add i64 %var_2_3110, -16
%var_2_3112 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1607:  %var_2_1607 = add i64 %var_2_1606, 5
; %var_2_3113 = add i64 %var_2_3112, 5
; Matched:\<badref\>:  store i64 %var_2_700, i64* %PC, align 8
; store i64 %var_2_3113, i64* %var_2_3, align 8
; Matched:%var_2_701:  %var_2_701 = inttoptr i64 %var_2_698 to i32*
; %var_2_3114 = inttoptr i64 %var_2_3111 to i32*
; Matched:%var_2_766:  %var_2_766 = load i32, i32* %var_2_765, align 4
; %var_2_3115 = load i32, i32* %var_2_3114, align 4
; Matched:\<badref\>:  store i32 %var_2_702, i32* %var_2_26, align 1, !tbaa !1265
; store i32 %var_2_3115, i32* %var_2_47, align 1
store float 0.000000e+00, float* %var_2_49, align 1
store float 0.000000e+00, float* %var_2_51, align 1
store float 0.000000e+00, float* %var_2_53, align 1
; Matched:%var_2_1404:  %var_2_1404 = add i64 %var_2_1398, -8
; %var_2_3116 = add i64 %var_2_3110, -8
; Matched:%var_2_768:  %var_2_768 = add i64 %var_2_763, 10
; %var_2_3117 = add i64 %var_2_3112, 10
; Matched:\<badref\>:  store i64 %var_2_2512, i64* %PC, align 8
; store i64 %var_2_3117, i64* %var_2_3, align 8
%var_2_3118 = load <2 x float>, <2 x float>* %var_2_83, align 1
; Matched:%var_2_1407:  %var_2_1407 = inttoptr i64 %var_2_1404 to float*
; %var_2_3119 = inttoptr i64 %var_2_3116 to float*
; Matched:%var_2_1408:  %var_2_1408 = load float, float* %var_2_1407, align 4
; %var_2_3120 = load float, float* %var_2_3119, align 4
%var_2_3121 = extractelement <2 x float> %var_2_3118, i32 0
; Matched:%var_2_1410:  %var_2_1410 = fdiv float %var_2_1409, %var_2_1408
; %var_2_3122 = fdiv float %var_2_3121, %var_2_3120
; Matched:\<badref\>:  store float %var_2_1410, float* %var_2_25, align 1, !tbaa !1265
; store float %var_2_3122, float* %var_2_46, align 1
%var_2_3123 = bitcast <2 x float> %var_2_3118 to <2 x i32>
%var_2_3124 = extractelement <2 x i32> %var_2_3123, i32 1
; Matched:\<badref\>:  store i32 %var_2_3069, i32* %var_2_245, align 1, !tbaa !1265
; store i32 %var_2_3124, i32* %var_2_281, align 1
%var_2_3125 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
%var_2_3126 = sext i32 %var_2_3125 to i64
%var_2_3127 = shl nsw i64 %var_2_3126, 2
%var_2_3128 = add nsw i64 %var_2_3127, 6470652
; Matched:%var_2_1417:  %var_2_1417 = add i64 %var_2_1400, 27
; %var_2_3129 = add i64 %var_2_3112, 27
; Matched:\<badref\>:  store i64 %var_2_1417, i64* %PC, align 8
; store i64 %var_2_3129, i64* %var_2_3, align 8
%var_2_3130 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_3131 = extractelement <2 x float> %var_2_3130, i32 0
%var_2_3132 = inttoptr i64 %var_2_3128 to float*
store float %var_2_3131, float* %var_2_3132, align 4
%var_2_3133 = load i64, i64* %var_2_3, align 8
%var_2_3134 = load i32, i32* bitcast (%G_0x62bbb4_type* @G_0x62bbb4 to i32*), align 8
store i32 %var_2_3134, i32* %var_2_47, align 1
store float 0.000000e+00, float* %var_2_49, align 1
store float 0.000000e+00, float* %var_2_51, align 1
store float 0.000000e+00, float* %var_2_53, align 1
%var_2_3135 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
%var_2_3136 = sext i32 %var_2_3135 to i64
; Matched:\<badref\>:  store i64 %var_2_1310, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_3136, i64* %RAX.i271, align 8
%var_2_3137 = shl nsw i64 %var_2_3136, 2
%var_2_3138 = add nsw i64 %var_2_3137, 6470532
; Matched:%var_2_1207:  %var_2_1207 = add i64 %var_2_1201, 26
; %var_2_3139 = add i64 %var_2_3133, 26
; Matched:\<badref\>:  store i64 %var_2_1873, i64* %PC, align 8
; store i64 %var_2_3139, i64* %var_2_3, align 8
%var_2_3140 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_3141 = load <2 x i32>, <2 x i32>* %var_2_257, align 1
%var_2_3142 = inttoptr i64 %var_2_3138 to float*
%var_2_3143 = load float, float* %var_2_3142, align 4
%var_2_3144 = extractelement <2 x float> %var_2_3140, i32 0
%var_2_3145 = fadd float %var_2_3144, %var_2_3143
store float %var_2_3145, float* %var_2_46, align 1
%var_2_3146 = bitcast <2 x float> %var_2_3140 to <2 x i32>
%var_2_3147 = extractelement <2 x i32> %var_2_3146, i32 1
; Matched:\<badref\>:  store i32 %var_2_2535, i32* %var_2_245, align 1, !tbaa !1265
; store i32 %var_2_3147, i32* %var_2_281, align 1
%var_2_3148 = extractelement <2 x i32> %var_2_3141, i32 0
; Matched:\<badref\>:  store i32 %var_2_1587, i32* %var_2_247, align 1, !tbaa !1265
; store i32 %var_2_3148, i32* %var_2_283, align 1
%var_2_3149 = extractelement <2 x i32> %var_2_3141, i32 1
; Matched:\<badref\>:  store i32 %var_2_1367, i32* %var_2_249, align 1, !tbaa !1265
; store i32 %var_2_3149, i32* %var_2_285, align 1
%var_2_3150 = load <2 x float>, <2 x float>* %var_2_83, align 1
%var_2_3151 = extractelement <2 x float> %var_2_3150, i32 0
store float %var_2_3151, float* bitcast (%G_0x62bbb4_type* @G_0x62bbb4 to float*), align 8
%var_2_3152 = zext i32 %var_2_3135 to i64
; Matched:\<badref\>:  store i64 %var_2_804, i64* %RDI, align 8, !tbaa !1261
; store i64 %var_2_3152, i64* %RDI.i594, align 8
; Matched:%var_2_805:  %var_2_805 = add i64 %var_2_784, 4521
; %var_2_3153 = add i64 %var_2_3133, 4521
; Matched:%var_2_1443:  %var_2_1443 = add i64 %var_2_1421, 47
; %var_2_3154 = add i64 %var_2_3133, 47
%var_2_3155 = load i64, i64* %var_2_6, align 8
%var_2_3156 = add i64 %var_2_3155, -8
; Matched:%var_2_809:  %var_2_809 = inttoptr i64 %var_2_808 to i64*
; %var_2_3157 = inttoptr i64 %var_2_3156 to i64*
; Matched:\<badref\>:  store i64 %var_2_806, i64* %var_2_809, align 8
; store i64 %var_2_3154, i64* %var_2_3157, align 8
; Matched:\<badref\>:  store i64 %var_2_2108, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_3156, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_805, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_3153, i64* %var_2_3, align 8
; Matched:%var_2_810:  %var_2_810 = tail call %struct.Memory* @sub_402870_print_time_renamed_(%struct.State* nonnull %0, i64 %var_2_805, %struct.Memory* %var_2_1839)
; %call2_4016f1 = tail call %struct.Memory* @sub_402870.print_time(%struct.State* nonnull %0, i64 %var_2_3153, %struct.Memory* %var_2_2676)
%var_2_3158 = load i64, i64* %var_2_3, align 8
%var_2_3159 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
%var_2_3160 = add i32 %var_2_3159, 1
%var_2_3161 = zext i32 %var_2_3160 to i64
store i64 %var_2_3161, i64* %RAX.i271, align 8
%var_2_3162 = icmp eq i32 %var_2_3159, -1
%var_2_3163 = icmp eq i32 %var_2_3160, 0
%var_2_3164 = or i1 %var_2_3162, %var_2_3163
%var_2_3165 = zext i1 %var_2_3164 to i8
store i8 %var_2_3165, i8* %var_2_14, align 1
%var_2_3166 = and i32 %var_2_3160, 255
%var_2_3167 = tail call i32 @llvm.ctpop.i32(i32 %var_2_3166)
%var_2_3168 = trunc i32 %var_2_3167 to i8
%var_2_3169 = and i8 %var_2_3168, 1
%var_2_3170 = xor i8 %var_2_3169, 1
store i8 %var_2_3170, i8* %var_2_21, align 1
%var_2_3171 = xor i32 %var_2_3160, %var_2_3159
%var_2_3172 = lshr i32 %var_2_3171, 4
%var_2_3173 = trunc i32 %var_2_3172 to i8
%var_2_3174 = and i8 %var_2_3173, 1
store i8 %var_2_3174, i8* %var_2_27, align 1
%var_2_3175 = zext i1 %var_2_3163 to i8
store i8 %var_2_3175, i8* %var_2_30, align 1
%var_2_3176 = lshr i32 %var_2_3160, 31
%var_2_3177 = trunc i32 %var_2_3176 to i8
store i8 %var_2_3177, i8* %var_2_33, align 1
%var_2_3178 = lshr i32 %var_2_3159, 31
%var_2_3179 = xor i32 %var_2_3176, %var_2_3178
%var_2_3180 = add nuw nsw i32 %var_2_3179, %var_2_3176
%var_2_3181 = icmp eq i32 %var_2_3180, 2
%var_2_3182 = zext i1 %var_2_3181 to i8
store i8 %var_2_3182, i8* %var_2_39, align 1
store i32 %var_2_3160, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
%var_2_3183 = add i64 %var_2_3158, -601
; Matched:\<badref\>:  store i64 %var_2_1473, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_3183, i64* %var_2_3, align 8
  br label %block_.L_40149d

block_.L_40170c:                                  ; preds = %block_.L_40149d
  store i64 ptrtoint (%G__0x403140_type* @G__0x403140 to i64), i64* %RSI.i245, align 8
%var_2_3184 = bitcast [32 x %union.VectorReg]* %var_2_40 to <4 x i32>*
store <4 x i32> zeroinitializer, <4 x i32>* %var_2_3184, align 1
%var_2_3185 = add i64 %var_2_2738, add (i64 ptrtoint (%G_0x174f__rip__type* @G_0x174f__rip_ to i64), i64 13)
%var_2_3186 = add i64 %var_2_2738, 21
store i64 %var_2_3186, i64* %var_2_3, align 8
%var_2_3187 = inttoptr i64 %var_2_3185 to i64*
%var_2_3188 = load i64, i64* %var_2_3187, align 8
%var_2_3189 = load float, float* bitcast (%G_0x62bbb4_type* @G_0x62bbb4 to float*), align 8
%var_2_3190 = fpext float %var_2_3189 to double
%var_2_3191 = bitcast i64 %var_2_3188 to double
%var_2_3192 = fdiv double %var_2_3190, %var_2_3191
store double %var_2_3192, double* %var_2_253, align 1
%.cast35 = bitcast i64 %var_2_3188 to <2 x i32>
%var_2_3193 = fptrunc double %var_2_3192 to float
store float %var_2_3193, float* %var_2_944, align 1
%var_2_3194 = extractelement <2 x i32> %.cast35, i32 1
store i32 %var_2_3194, i32* %var_2_603, align 1
store i32 0, i32* %var_2_604, align 1
store i32 0, i32* %var_2_606, align 1
%var_2_3195 = load <2 x float>, <2 x float>* %var_2_1037, align 1
%var_2_3196 = extractelement <2 x float> %var_2_3195, i32 0
store float %var_2_3196, float* bitcast (%G_0x62bbb4_type* @G_0x62bbb4 to float*), align 8
%var_2_3197 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
store i64 %var_2_3197, i64* %RDI.i594, align 8
; Matched:\<badref\>:  store i8 0, i8* %AL, align 1, !tbaa !1286
; store i8 1, i8* %AL.i1482, align 1
; Matched:%var_2_2473:  %var_2_2473 = add i64 %var_2_2613, -4636
; %var_2_3198 = add i64 %var_2_2738, -4636
; Matched:%var_2_2474:  %var_2_2474 = add i64 %var_2_2613, 62
; %var_2_3199 = add i64 %var_2_2738, 62
%var_2_3200 = load i64, i64* %var_2_6, align 8
%var_2_3201 = add i64 %var_2_3200, -8
; Matched:%var_2_2477:  %var_2_2477 = inttoptr i64 %var_2_2476 to i64*
; %var_2_3202 = inttoptr i64 %var_2_3201 to i64*
; Matched:\<badref\>:  store i64 %var_2_2474, i64* %var_2_2477, align 8
; store i64 %var_2_3199, i64* %var_2_3202, align 8
; Matched:\<badref\>:  store i64 %var_2_295, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_3201, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_2473, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_3198, i64* %var_2_3, align 8
%var_2_3203 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %var_2_2676)
%var_2_3204 = load i64, i64* %var_2_3, align 8
  store i64 0, i64* %RCX.i347, align 8
; Matched:%var_2_2480:  %var_2_2480 = load i64, i64* %RBP, align 8
; %var_2_3205 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2481:  %var_2_2481 = add i64 %var_2_2480, -996
; %var_2_3206 = add i64 %var_2_3205, -996
; Matched:%var_2_2482:  %var_2_2482 = load i32, i32* %EAX, align 4
; %var_2_3207 = load i32, i32* %EAX.i1471, align 4
%var_2_3208 = add i64 %var_2_3204, 8
store i64 %var_2_3208, i64* %var_2_3, align 8
; Matched:%var_2_2484:  %var_2_2484 = inttoptr i64 %var_2_2481 to i32*
; %var_2_3209 = inttoptr i64 %var_2_3206 to i32*
; Matched:\<badref\>:  store i32 %var_2_2482, i32* %var_2_2484, align 4
; store i32 %var_2_3207, i32* %var_2_3209, align 4
; Matched:%var_2_2485:  %var_2_2485 = load i32, i32* %ECX, align 4
; %var_2_3210 = load i32, i32* %var_2_493, align 4
; Matched:%var_2_2486:  %var_2_2486 = zext i32 %var_2_2485 to i64
; %var_2_3211 = zext i32 %var_2_3210 to i64
%var_2_3212 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_2486, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_3211, i64* %RAX.i271, align 8
; Matched:%var_2_2488:  %var_2_2488 = load i64, i64* %RSP, align 8
; %var_2_3213 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_2489:  %var_2_2489 = add i64 %var_2_2488, 1008
; %var_2_3214 = add i64 %var_2_3213, 1008
; Matched:\<badref\>:  store i64 %var_2_2489, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_3214, i64* %var_2_6, align 8
; Matched:%var_2_2490:  %var_2_2490 = icmp ugt i64 %var_2_2488, -1009
; %var_2_3215 = icmp ugt i64 %var_2_3213, -1009
; Matched:%var_2_2491:  %var_2_2491 = zext i1 %var_2_2490 to i8
; %var_2_3216 = zext i1 %var_2_3215 to i8
; Matched:\<badref\>:  store i8 %var_2_2491, i8* %var_2_17, align 1, !tbaa !1267
; store i8 %var_2_3216, i8* %var_2_14, align 1
; Matched:%var_2_2492:  %var_2_2492 = trunc i64 %var_2_2489 to i32
; %var_2_3217 = trunc i64 %var_2_3214 to i32
; Matched:%var_2_2493:  %var_2_2493 = and i32 %var_2_2492, 255
; %var_2_3218 = and i32 %var_2_3217, 255
; Matched:%var_2_2494:  %var_2_2494 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2493) #12
; %var_2_3219 = tail call i32 @llvm.ctpop.i32(i32 %var_2_3218)
; Matched:%var_2_2495:  %var_2_2495 = trunc i32 %var_2_2494 to i8
; %var_2_3220 = trunc i32 %var_2_3219 to i8
; Matched:%var_2_2496:  %var_2_2496 = and i8 %var_2_2495, 1
; %var_2_3221 = and i8 %var_2_3220, 1
; Matched:%var_2_2497:  %var_2_2497 = xor i8 %var_2_2496, 1
; %var_2_3222 = xor i8 %var_2_3221, 1
; Matched:\<badref\>:  store i8 %var_2_2497, i8* %var_2_18, align 1, !tbaa !1281
; store i8 %var_2_3222, i8* %var_2_21, align 1
; Matched:%var_2_2498:  %var_2_2498 = xor i64 %var_2_2488, 16
; %var_2_3223 = xor i64 %var_2_3213, 16
; Matched:%var_2_2499:  %var_2_2499 = xor i64 %var_2_2498, %var_2_2489
; %var_2_3224 = xor i64 %var_2_3223, %var_2_3214
; Matched:%var_2_2500:  %var_2_2500 = lshr i64 %var_2_2499, 4
; %var_2_3225 = lshr i64 %var_2_3224, 4
; Matched:%var_2_2501:  %var_2_2501 = trunc i64 %var_2_2500 to i8
; %var_2_3226 = trunc i64 %var_2_3225 to i8
; Matched:%var_2_2502:  %var_2_2502 = and i8 %var_2_2501, 1
; %var_2_3227 = and i8 %var_2_3226, 1
; Matched:\<badref\>:  store i8 %var_2_2502, i8* %var_2_19, align 1, !tbaa !1285
; store i8 %var_2_3227, i8* %var_2_27, align 1
; Matched:%var_2_2503:  %var_2_2503 = icmp eq i64 %var_2_2489, 0
; %var_2_3228 = icmp eq i64 %var_2_3214, 0
; Matched:%var_2_2504:  %var_2_2504 = zext i1 %var_2_2503 to i8
; %var_2_3229 = zext i1 %var_2_3228 to i8
; Matched:\<badref\>:  store i8 %var_2_2504, i8* %var_2_20, align 1, !tbaa !1282
; store i8 %var_2_3229, i8* %var_2_30, align 1
; Matched:%var_2_2505:  %var_2_2505 = lshr i64 %var_2_2489, 63
; %var_2_3230 = lshr i64 %var_2_3214, 63
; Matched:%var_2_2506:  %var_2_2506 = trunc i64 %var_2_2505 to i8
; %var_2_3231 = trunc i64 %var_2_3230 to i8
; Matched:\<badref\>:  store i8 %var_2_2506, i8* %var_2_21, align 1, !tbaa !1283
; store i8 %var_2_3231, i8* %var_2_33, align 1
; Matched:%var_2_2507:  %var_2_2507 = lshr i64 %var_2_2488, 63
; %var_2_3232 = lshr i64 %var_2_3213, 63
; Matched:%var_2_2508:  %var_2_2508 = xor i64 %var_2_2505, %var_2_2507
; %var_2_3233 = xor i64 %var_2_3230, %var_2_3232
; Matched:%var_2_2509:  %var_2_2509 = add nuw nsw i64 %var_2_2508, %var_2_2505
; %var_2_3234 = add nuw nsw i64 %var_2_3233, %var_2_3230
; Matched:%var_2_2510:  %var_2_2510 = icmp eq i64 %var_2_2509, 2
; %var_2_3235 = icmp eq i64 %var_2_3234, 2
; Matched:%var_2_2511:  %var_2_2511 = zext i1 %var_2_2510 to i8
; %var_2_3236 = zext i1 %var_2_3235 to i8
; Matched:\<badref\>:  store i8 %var_2_2511, i8* %var_2_22, align 1, !tbaa !1284
; store i8 %var_2_3236, i8* %var_2_39, align 1
; Matched:%var_2_42:  %var_2_42 = add i64 %var_2_38, 10
; %var_2_3237 = add i64 %var_2_3212, 10
; Matched:\<badref\>:  store i64 %var_2_952, i64* %PC, align 8
; store i64 %var_2_3237, i64* %var_2_3, align 8
; Matched:%var_2_2513:  %var_2_2513 = add i64 %var_2_2488, 1016
; %var_2_3238 = add i64 %var_2_3213, 1016
; Matched:%var_2_2514:  %var_2_2514 = inttoptr i64 %var_2_2489 to i64*
; %var_2_3239 = inttoptr i64 %var_2_3214 to i64*
; Matched:%var_2_2515:  %var_2_2515 = load i64, i64* %var_2_2514, align 8
; %var_2_3240 = load i64, i64* %var_2_3239, align 8
; Matched:\<badref\>:  store i64 %var_2_2515, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_3240, i64* %RBP.i, align 8
; Matched:\<badref\>:  store i64 %var_2_2513, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_3238, i64* %var_2_6, align 8
%var_2_3241 = add i64 %var_2_3212, 11
; Matched:\<badref\>:  store i64 %var_2_2516, i64* %PC, align 8
; store i64 %var_2_3241, i64* %var_2_3, align 8
; Matched:%var_2_2517:  %var_2_2517 = inttoptr i64 %var_2_2513 to i64*
; %var_2_3242 = inttoptr i64 %var_2_3238 to i64*
; Matched:%var_2_2518:  %var_2_2518 = load i64, i64* %var_2_2517, align 8
; %var_2_3243 = load i64, i64* %var_2_3242, align 8
; Matched:\<badref\>:  store i64 %var_2_2518, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_3243, i64* %var_2_3, align 8
; Matched:%var_2_2519:  %var_2_2519 = add i64 %var_2_2488, 1024
; %var_2_3244 = add i64 %var_2_3213, 1024
; Matched:\<badref\>:  store i64 %var_2_2519, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_3244, i64* %var_2_6, align 8
ret %struct.Memory* %var_2_3203
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
define %struct.Memory* @routine_subq__0x3f0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -1008
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 1008
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
define %struct.Memory* @routine_movq__0x402eeb___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x402eeb_type* @G__0x402eeb to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x27eb__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x27eb__rip__type* @G_0x27eb__rip_ to i64)
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
define %struct.Memory* @routine_movq__0x402eca___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x402eca_type* @G__0x402eca to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x402eb0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x402eb0_type* @G__0x402eb0 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__edx___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__0x2d0___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 720, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %5 = load i32, i32* %EDI, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x340__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -832
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R9, align 8
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
define %struct.Memory* @routine_movq__r9___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x348__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -840
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x350__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -848
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x354__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -852
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x360__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -864
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.memset_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__0x20__MINUS0x340__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -832
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  store i8 32, i8* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x350__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -848
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x360__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -864
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xc9__0x604050(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 201, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xc8__0x604054(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 200, i32* bitcast (%G_0x604054_type* @G_0x604054 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x354__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -852
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
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
define %struct.Memory* @routine_movl__0x64__0x604058(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 100, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x604040___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x348__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -840
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq__0x402ef3___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x402ef3_type* @G__0x402ef3 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x364__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -868
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x402efb___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x402efb_type* @G__0x402efb to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x368__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -872
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x402f31___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x402f31_type* @G__0x402f31 to i64), i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x36c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -876
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x402f42___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x402f42_type* @G__0x402f42 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x68__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x370__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -880
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x604060___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x62b480___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x14__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x26a0__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x26a0__rip__type* @G_0x26a0__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x26a0__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x26a0__rip__type* @G_0x26a0__rip_ to i64)
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
define %struct.Memory* @routine_movl_0x604058___r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  %6 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_0x604058___r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R10D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 9
  store i64 %7, i64* %PC, align 8
  %8 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %9 = sext i32 %5 to i64
  %10 = sext i32 %8 to i64
  %11 = mul nsw i64 %10, %9
  %12 = trunc i64 %11 to i32
  %13 = and i64 %11, 4294967295
  store i64 %13, i64* %4, align 8
  %14 = shl i64 %11, 32
  %15 = ashr exact i64 %14, 32
  %16 = icmp ne i64 %15, %11
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %12, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %26, align 1
  %27 = lshr i32 %12, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %17, i8* %30, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdl__r10d___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = load i32, i32* %R10D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = sitofp i32 %5 to double
  %9 = bitcast %union.VectorReg* %4 to double*
  store double %8, double* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm0___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
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
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd__xmm2___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
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
define %struct.Memory* @routine_divsd__xmm1___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
define %struct.Memory* @routine_cvtsi2sdl__r10d___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i32, i32* %R10D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = sitofp i32 %5 to double
  %9 = bitcast %union.VectorReg* %4 to double*
  store double %8, double* %9, align 1
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
define %struct.Memory* @routine_addsd__xmm0___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fadd double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsd2ss__xmm3___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
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
define %struct.Memory* @routine_movss__xmm0__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
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
define %struct.Memory* @routine_movl_0x604050___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x604058___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x374__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -884
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.matgen(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.second(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x62b7a0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x62b7a0_type* @G__0x62b7a0 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x62bac0___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x62bac0_type* @G__0x62bac0 to i64), i64* %R8, align 8
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
define %struct.Memory* @routine_callq_.dgefa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subss_MINUS0x28__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -40
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
  %17 = fsub float %16, %15
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
define %struct.Memory* @routine_movss__xmm0__0x62bad0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0x62bad0_type* @G_0x62bad0 to float*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x62b480___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_xorl__r9d___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 0, i64* %3, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.dgesl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss__xmm0__0x62bb0c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0x62bb0c_type* @G_0x62bb0c to float*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x62bad0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x62bad0_type* @G_0x62bad0 to i32*), align 8
  %8 = bitcast %union.VectorReg* %3 to i32*
  store i32 %7, i32* %8, align 1
  %9 = getelementptr inbounds i8, i8* %4, i64 4
  %10 = bitcast i8* %9 to float*
  store float 0.000000e+00, float* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 12
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addss_0x62bb0c___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x float>*
  %8 = load <2 x float>, <2 x float>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to <2 x i32>*
  %11 = load <2 x i32>, <2 x i32>* %10, align 1
  %12 = load float, float* bitcast (%G_0x62bb0c_type* @G_0x62bb0c to float*), align 8
  %13 = extractelement <2 x float> %8, i32 0
  %14 = fadd float %13, %12
  %15 = bitcast %union.VectorReg* %3 to float*
  store float %14, float* %15, align 1
  %16 = bitcast <2 x float> %8 to <2 x i32>
  %17 = extractelement <2 x i32> %16, i32 1
  %18 = getelementptr inbounds i8, i8* %4, i64 4
  %19 = bitcast i8* %18 to i32*
  store i32 %17, i32* %19, align 1
  %20 = extractelement <2 x i32> %11, i32 0
  %21 = bitcast i64* %9 to i32*
  store i32 %20, i32* %21, align 1
  %22 = extractelement <2 x i32> %11, i32 1
  %23 = getelementptr inbounds i8, i8* %4, i64 12
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
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
define %struct.Memory* @routine_movl__0x0__0x62bcec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x62bcec___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x604058___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
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
define %struct.Memory* @routine_jge_.L_400937(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_0x62bcec___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x62b480___rax_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, 6468736
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 9
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = bitcast %union.VectorReg* %3 to i32*
  store i32 %11, i32* %12, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 4
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %16 = bitcast i64* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  %17 = getelementptr inbounds i8, i8* %4, i64 12
  %18 = bitcast i8* %17 to float*
  store float 0.000000e+00, float* %18, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x62bcf0___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6470896
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = extractelement <2 x float> %10, i32 0
  %12 = inttoptr i64 %6 to float*
  store float %11, float* %12, align 4
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
define %struct.Memory* @routine_movl__eax__0x62bcec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4008eb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4009c7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movd__xmm0___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 4
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  %7 = trunc i64 %6 to i32
  %8 = bitcast i64* %RCX to [2 x i32]*
  %9 = bitcast i64* %RCX to i32*
  store i32 %7, i32* %9, align 1
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 0, i32* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__0x80000000___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = xor i64 %3, -2147483648
  %7 = trunc i64 %6 to i32
  %8 = and i64 %6, 4294967295
  store i64 %8, i64* %RCX, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %7, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = icmp eq i32 %7, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i32 %7, 31
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movd__ecx___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = bitcast %union.VectorReg* %4 to i8*
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %4 to i32*
  store i32 %6, i32* %9, align 1
  %10 = getelementptr inbounds i8, i8* %5, i64 4
  %11 = bitcast i8* %10 to i32*
  store i32 0, i32* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to i32*
  store i32 0, i32* %13, align 1
  %14 = getelementptr inbounds i8, i8* %5, i64 12
  %15 = bitcast i8* %14 to i32*
  store i32 0, i32* %15, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x62b480___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6468736
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = extractelement <2 x float> %10, i32 0
  %12 = inttoptr i64 %6 to float*
  store float %11, float* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40096d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x62b480___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x62bcf0___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x62bcf0_type* @G__0x62bcf0 to i64), i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x604060___r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x604058___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x604050___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.dmxpy(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
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
define %struct.Memory* @routine_jge_.L_400b25(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cvtss2sd_MINUS0x1c__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
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
define %struct.Memory* @routine_cvtss2sd_0x62b480___rax_4____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6468736
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to float*
  %10 = load float, float* %9, align 4
  %11 = fpext float %10 to double
  %12 = bitcast %union.VectorReg* %3 to double*
  store double %11, double* %12, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps_0x2458__rip____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x2458__rip__type* @G_0x2458__rip_ to i64)
  %7 = add i64 %5, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i64 %5, add (i64 ptrtoint (%G_0x2458__rip__type* @G_0x2458__rip_ to i64), i64 4)
  %11 = inttoptr i64 %10 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i64 %5, add (i64 ptrtoint (%G_0x2458__rip__type* @G_0x2458__rip_ to i64), i64 8)
  %14 = inttoptr i64 %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = add i64 %5, add (i64 ptrtoint (%G_0x2458__rip__type* @G_0x2458__rip_ to i64), i64 12)
  %17 = inttoptr i64 %16 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %19, align 1
  %20 = getelementptr inbounds i8, i8* %4, i64 4
  %21 = bitcast i8* %20 to i32*
  store i32 %12, i32* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %23 = bitcast i64* %22 to i32*
  store i32 %15, i32* %23, align 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %18, i32* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_pand__xmm2___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %3, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %12 = load i64, i64* %11, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %14 = load i64, i64* %13, align 1
  %15 = and i64 %12, %8
  %16 = and i64 %14, %10
  %17 = trunc i64 %15 to i32
  %18 = lshr i64 %15, 32
  %19 = trunc i64 %18 to i32
  %20 = bitcast %union.VectorReg* %3 to i32*
  store i32 %17, i32* %20, align 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %19, i32* %22, align 1
  %23 = trunc i64 %16 to i32
  %24 = bitcast i64* %9 to i32*
  store i32 %23, i32* %24, align 1
  %25 = lshr i64 %16, 32
  %26 = trunc i64 %25 to i32
  %27 = getelementptr inbounds i8, i8* %4, i64 12
  %28 = bitcast i8* %27 to i32*
  store i32 %26, i32* %28, align 1
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
define %struct.Memory* @routine_jbe_.L_400a68(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x380__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -896
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
define %struct.Memory* @routine_jmpq_.L_400a8c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_0x62b480___rax_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6468736
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to float*
  %10 = load float, float* %9, align 4
  %11 = fpext float %10 to double
  %12 = bitcast %union.VectorReg* %3 to double*
  store double %11, double* %12, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps_0x2420__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x2420__rip__type* @G_0x2420__rip_ to i64)
  %7 = add i64 %5, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i64 %5, add (i64 ptrtoint (%G_0x2420__rip__type* @G_0x2420__rip_ to i64), i64 4)
  %11 = inttoptr i64 %10 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i64 %5, add (i64 ptrtoint (%G_0x2420__rip__type* @G_0x2420__rip_ to i64), i64 8)
  %14 = inttoptr i64 %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = add i64 %5, add (i64 ptrtoint (%G_0x2420__rip__type* @G_0x2420__rip_ to i64), i64 12)
  %17 = inttoptr i64 %16 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %19, align 1
  %20 = getelementptr inbounds i8, i8* %4, i64 4
  %21 = bitcast i8* %20 to i32*
  store i32 %12, i32* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %23 = bitcast i64* %22 to i32*
  store i32 %15, i32* %23, align 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %18, i32* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_pand__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %12 = load i64, i64* %11, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %14 = load i64, i64* %13, align 1
  %15 = and i64 %12, %8
  %16 = and i64 %14, %10
  %17 = trunc i64 %15 to i32
  %18 = lshr i64 %15, 32
  %19 = trunc i64 %18 to i32
  %20 = bitcast [32 x %union.VectorReg]* %3 to i32*
  store i32 %17, i32* %20, align 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %19, i32* %22, align 1
  %23 = trunc i64 %16 to i32
  %24 = bitcast i64* %9 to i32*
  store i32 %23, i32* %24, align 1
  %25 = lshr i64 %16, 32
  %26 = trunc i64 %25 to i32
  %27 = getelementptr inbounds i8, i8* %4, i64 12
  %28 = bitcast i8* %27 to i32*
  store i32 %26, i32* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x380__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -896
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
define %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %8 = load <2 x i32>, <2 x i32>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
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
define %struct.Memory* @routine_cvtss2sd_MINUS0x18__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
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
define %struct.Memory* @routine_cvtss2sd_0x62bcf0___rax_4____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6470896
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to float*
  %10 = load float, float* %9, align 4
  %11 = fpext float %10 to double
  %12 = bitcast %union.VectorReg* %3 to double*
  store double %11, double* %12, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps_0x23e6__rip____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x23e6__rip__type* @G_0x23e6__rip_ to i64)
  %7 = add i64 %5, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i64 %5, add (i64 ptrtoint (%G_0x23e6__rip__type* @G_0x23e6__rip_ to i64), i64 4)
  %11 = inttoptr i64 %10 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i64 %5, add (i64 ptrtoint (%G_0x23e6__rip__type* @G_0x23e6__rip_ to i64), i64 8)
  %14 = inttoptr i64 %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = add i64 %5, add (i64 ptrtoint (%G_0x23e6__rip__type* @G_0x23e6__rip_ to i64), i64 12)
  %17 = inttoptr i64 %16 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %19, align 1
  %20 = getelementptr inbounds i8, i8* %4, i64 4
  %21 = bitcast i8* %20 to i32*
  store i32 %12, i32* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %23 = bitcast i64* %22 to i32*
  store i32 %15, i32* %23, align 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %18, i32* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_400ada(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x388__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -904
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
define %struct.Memory* @routine_jmpq_.L_400afe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_0x62bcf0___rax_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6470896
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to float*
  %10 = load float, float* %9, align 4
  %11 = fpext float %10 to double
  %12 = bitcast %union.VectorReg* %3 to double*
  store double %11, double* %12, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps_0x23ae__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x23ae__rip__type* @G_0x23ae__rip_ to i64)
  %7 = add i64 %5, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i64 %5, add (i64 ptrtoint (%G_0x23ae__rip__type* @G_0x23ae__rip_ to i64), i64 4)
  %11 = inttoptr i64 %10 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i64 %5, add (i64 ptrtoint (%G_0x23ae__rip__type* @G_0x23ae__rip_ to i64), i64 8)
  %14 = inttoptr i64 %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = add i64 %5, add (i64 ptrtoint (%G_0x23ae__rip__type* @G_0x23ae__rip_ to i64), i64 12)
  %17 = inttoptr i64 %16 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %19, align 1
  %20 = getelementptr inbounds i8, i8* %4, i64 4
  %21 = bitcast i8* %20 to i32*
  store i32 %12, i32* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %23 = bitcast i64* %22 to i32*
  store i32 %15, i32* %23, align 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %18, i32* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x388__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -904
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
define %struct.Memory* @routine_jmpq_.L_400a17(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x231f__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x231f__rip__type* @G_0x231f__rip_ to i64)
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
define %struct.Memory* @routine_callq_.epslon(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x402f54___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x402f54_type* @G__0x402f54 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x2308__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x2308__rip__type* @G_0x2308__rip_ to i64)
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
define %struct.Memory* @routine_cvtsi2ssl_0x604058___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %8 = load <2 x i32>, <2 x i32>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to <2 x i32>*
  %11 = load <2 x i32>, <2 x i32>* %10, align 1
  %12 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %13 = sitofp i32 %12 to float
  %14 = bitcast %union.VectorReg* %3 to float*
  store float %13, float* %14, align 1
  %15 = extractelement <2 x i32> %8, i32 1
  %16 = getelementptr inbounds i8, i8* %4, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %11, i32 0
  %19 = bitcast i64* %9 to i32*
  store i32 %18, i32* %19, align 1
  %20 = extractelement <2 x i32> %11, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 12
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulss_MINUS0x14__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -20
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
define %struct.Memory* @routine_mulss_MINUS0x18__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -24
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
define %struct.Memory* @routine_mulss_MINUS0x24__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -36
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
define %struct.Memory* @routine_divss__xmm2___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
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
  %17 = fdiv float %15, %16
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
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
define %struct.Memory* @routine_movss_0x62bcf0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x62bcf0_type* @G_0x62bcf0 to i32*), align 8
  %8 = bitcast %union.VectorReg* %3 to i32*
  store i32 %7, i32* %8, align 1
  %9 = getelementptr inbounds i8, i8* %4, i64 4
  %10 = bitcast i8* %9 to float*
  store float 0.000000e+00, float* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 12
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
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
define %struct.Memory* @routine_movl_0x604058___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp eq i32 %6, 0
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %7, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %6
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %7, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %7, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %6, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__eax___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x62bcf0___rcx_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, 6470896
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 9
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = bitcast %union.VectorReg* %3 to i32*
  store i32 %11, i32* %12, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 4
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %16 = bitcast i64* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  %17 = getelementptr inbounds i8, i8* %4, i64 12
  %18 = bitcast i8* %17 to float*
  store float 0.000000e+00, float* %18, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
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
define %struct.Memory* @routine_movq__0x402f7b___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x402f7b_type* @G__0x402f7b to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x38c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -908
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x402f9e___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x402f9e_type* @G__0x402f9e to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0x20__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
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
define %struct.Memory* @routine_cvtss2sd_MINUS0x1c__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
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
define %struct.Memory* @routine_cvtss2sd_MINUS0x30__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
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
define %struct.Memory* @routine_cvtss2sd_MINUS0x34__rbp____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
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
define %struct.Memory* @routine_cvtss2sd_MINUS0x38__rbp____xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
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
define %struct.Memory* @routine_movl__eax__MINUS0x390__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -912
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x5___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 5, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x402fbf___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x402fbf_type* @G__0x402fbf to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x394__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -916
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x402ff4___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x402ff4_type* @G__0x402ff4 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x604050___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x398__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -920
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x40302a___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x40302a_type* @G__0x40302a to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x39c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -924
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x403062___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x403062_type* @G__0x403062 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3a0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -928
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x10__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -16
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
define %struct.Memory* @routine_movss__xmm1__0x62bb48(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0x62bb48_type* @G_0x62bb48 to float*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0x10__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
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
define %struct.Memory* @routine_movl__eax__MINUS0x3a4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -932
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_400d0e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x2190__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x2190__rip__type* @G_0x2190__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x2198__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x2198__rip__type* @G_0x2198__rip_ to i64)
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
define %struct.Memory* @routine_cvtss2sd_MINUS0xc__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
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
define %struct.Memory* @routine_cvtss2sd_MINUS0x10__rbp____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
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
define %struct.Memory* @routine_mulsd__xmm3___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
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
define %struct.Memory* @routine_divsd__xmm1___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fdiv double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsd2ss__xmm2___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to double*
  %14 = load double, double* %13, align 1
  %15 = fptrunc double %14 to float
  %16 = bitcast %union.VectorReg* %3 to float*
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
define %struct.Memory* @routine_movss__xmm1__0x62bb84(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0x62bb84_type* @G_0x62bb84 to float*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_0x62bb84___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = load float, float* bitcast (%G_0x62bb84_type* @G_0x62bb84 to float*), align 8
  %7 = fpext float %6 to double
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
define %struct.Memory* @routine_movss__xmm0__0x62bbc0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0x62bbc0_type* @G_0x62bbc0 to float*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400d23(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x62bb84(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0x62bb84_type* @G_0x62bb84 to float*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__edi___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RDI, align 8
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
define %struct.Memory* @routine_movss_MINUS0x10__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -16
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
define %struct.Memory* @routine_divss_MINUS0x8__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -8
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
define %struct.Memory* @routine_movss__xmm0__0x62bbfc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0x62bbfc_type* @G_0x62bbfc to float*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.print_time(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x40306f___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x40306f_type* @G__0x40306f to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xfffffffd__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -3, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x64__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 100, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3a8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -936
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
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
define %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x44__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -68
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
define %struct.Memory* @routine_jge_.L_400dd9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_400d88(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x40308d___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x40308d_type* @G__0x40308d to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_xorps__xmm1___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
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
define %struct.Memory* @routine_movss_MINUS0x54__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -84
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
define %struct.Memory* @routine_subss_MINUS0x50__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -80
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
  %17 = fsub float %16, %15
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
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
define %struct.Memory* @routine_movl_MINUS0x44__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_movl__eax__MINUS0x3ac__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -940
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_400e2d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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
define %struct.Memory* @routine_shll__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = shl i32 %6, 1
  %8 = icmp slt i32 %6, 0
  %9 = icmp slt i32 %7, 0
  %10 = xor i1 %8, %9
  %11 = zext i32 %7 to i64
  store i64 %11, i64* %RAX, align 8
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
define %struct.Memory* @routine_jmpq_.L_400e32(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jl_.L_400d6a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %.v, %3
  store i64 %12, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4030a7___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4030a7_type* @G__0x4030a7 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0x48__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
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
define %struct.Memory* @routine_cvtsi2sdl_MINUS0x44__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
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
define %struct.Memory* @routine_movss__xmm1__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
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
define %struct.Memory* @routine_movq__0x4030ce___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4030ce_type* @G__0x4030ce to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3b0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -944
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x64__0x62c010(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 100, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3b4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -948
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x62c010___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
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
define %struct.Memory* @routine_jge_.L_400f4a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_400ec4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x62c010___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3b8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -952
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_400fa0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x62c010___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x62c010(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400fa5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jl_.L_400ea6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %.v, %3
  store i64 %12, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3e8__0x62c010(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1000, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x62c010(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = and i32 %5, 255
  %8 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 1
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %13, align 1
  %14 = icmp eq i32 %5, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = lshr i32 %5, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_400fd3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__0x62c010(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4030fd___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4030fd_type* @G__0x4030fd to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x403111___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x403111_type* @G__0x403111 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3bc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -956
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3c0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -960
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3c4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -964
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssl_0x62c010___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %8 = load <2 x i32>, <2 x i32>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to <2 x i32>*
  %11 = load <2 x i32>, <2 x i32>* %10, align 1
  %12 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %13 = sitofp i32 %12 to float
  %14 = bitcast %union.VectorReg* %3 to float*
  store float %13, float* %14, align 1
  %15 = extractelement <2 x i32> %8, i32 1
  %16 = getelementptr inbounds i8, i8* %4, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %11, i32 0
  %19 = bitcast i64* %9 to i32*
  store i32 %18, i32* %19, align 1
  %20 = extractelement <2 x i32> %11, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 12
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulss_MINUS0x48__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -72
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
define %struct.Memory* @routine_movss__xmm1__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
define %struct.Memory* @routine_movss__xmm0__0x62bb9c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0x62bb9c_type* @G_0x62bb9c to float*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0x62c014(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3c8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -968
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x6__0x62c014(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %6 = add i32 %5, -6
  %7 = icmp ult i32 %5, 6
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = and i32 %6, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = xor i32 %6, %5
  %17 = lshr i32 %16, 4
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i32 %6, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = lshr i32 %6, 31
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %5, 31
  %28 = xor i32 %24, %27
  %29 = add nuw nsw i32 %28, %27
  %30 = icmp eq i32 %29, 2
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %31, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4012f1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_40112b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4010a5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subss_MINUS0x2c__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -44
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
  %17 = fsub float %16, %15
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
define %struct.Memory* @routine_divss__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %17 = fdiv float %15, %16
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
define %struct.Memory* @routine_movslq_0x62c014___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x62bad0___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6470352
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = extractelement <2 x float> %10, i32 0
  %12 = inttoptr i64 %6 to float*
  store float %11, float* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4011cb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40116d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x1c80__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x1c80__rip__type* @G_0x1c80__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x1c88__rip____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x1c88__rip__type* @G_0x1c88__rip_ to i64)
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
define %struct.Memory* @routine_cvtsi2ssl_0x62c010___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %8 = load <2 x i32>, <2 x i32>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to <2 x i32>*
  %11 = load <2 x i32>, <2 x i32>* %10, align 1
  %12 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %13 = sitofp i32 %12 to float
  %14 = bitcast %union.VectorReg* %3 to float*
  store float %13, float* %14, align 1
  %15 = extractelement <2 x i32> %8, i32 1
  %16 = getelementptr inbounds i8, i8* %4, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %11, i32 0
  %19 = bitcast i64* %9 to i32*
  store i32 %18, i32* %19, align 1
  %20 = extractelement <2 x i32> %11, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 12
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divss__xmm3___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
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
  %17 = fdiv float %15, %16
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
define %struct.Memory* @routine_movss__xmm0__0x62bb0c___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6470412
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = extractelement <2 x float> %10, i32 0
  %12 = inttoptr i64 %6 to float*
  store float %11, float* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x62bad0___rax_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, 6470352
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 9
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = bitcast %union.VectorReg* %3 to i32*
  store i32 %11, i32* %12, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 4
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %16 = bitcast i64* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  %17 = getelementptr inbounds i8, i8* %4, i64 12
  %18 = bitcast i8* %17 to float*
  store float 0.000000e+00, float* %18, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addss_0x62bb0c___rax_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, 6470412
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 9
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to <2 x float>*
  %11 = load <2 x float>, <2 x float>* %10, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to <2 x i32>*
  %14 = load <2 x i32>, <2 x i32>* %13, align 1
  %15 = inttoptr i64 %7 to float*
  %16 = load float, float* %15, align 4
  %17 = extractelement <2 x float> %11, i32 0
  %18 = fadd float %17, %16
  %19 = bitcast %union.VectorReg* %3 to float*
  store float %18, float* %19, align 1
  %20 = bitcast <2 x float> %11 to <2 x i32>
  %21 = extractelement <2 x i32> %20, i32 1
  %22 = getelementptr inbounds i8, i8* %4, i64 4
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  %24 = extractelement <2 x i32> %14, i32 0
  %25 = bitcast i64* %12 to i32*
  store i32 %24, i32* %25, align 1
  %26 = extractelement <2 x i32> %14, i32 1
  %27 = getelementptr inbounds i8, i8* %4, i64 12
  %28 = bitcast i8* %27 to i32*
  store i32 %26, i32* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x62bb48___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6470472
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = extractelement <2 x float> %10, i32 0
  %12 = inttoptr i64 %6 to float*
  store float %11, float* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0xc__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
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
define %struct.Memory* @routine_mulsd__xmm3___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
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
define %struct.Memory* @routine_divsd__xmm2___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
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
define %struct.Memory* @routine_movss__xmm0__0x62bb84___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6470532
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = extractelement <2 x float> %10, i32 0
  %12 = inttoptr i64 %6 to float*
  store float %11, float* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_0x62bb84___rax_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6470532
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to float*
  %10 = load float, float* %9, align 4
  %11 = fpext float %10 to double
  %12 = bitcast %union.VectorReg* %3 to double*
  store double %11, double* %12, align 1
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
define %struct.Memory* @routine_movss__xmm0__0x62bbc0___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6470592
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = extractelement <2 x float> %10, i32 0
  %12 = inttoptr i64 %6 to float*
  store float %11, float* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x62bbfc___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6470652
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = extractelement <2 x float> %10, i32 0
  %12 = inttoptr i64 %6 to float*
  store float %11, float* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x62bb9c___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x62bb9c_type* @G_0x62bb9c to i32*), align 8
  %8 = bitcast %union.VectorReg* %3 to i32*
  store i32 %7, i32* %8, align 1
  %9 = getelementptr inbounds i8, i8* %4, i64 4
  %10 = bitcast i8* %9 to float*
  store float 0.000000e+00, float* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 12
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addss_0x62bb84___rax_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, 6470532
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 9
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to <2 x float>*
  %11 = load <2 x float>, <2 x float>* %10, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to <2 x i32>*
  %14 = load <2 x i32>, <2 x i32>* %13, align 1
  %15 = inttoptr i64 %7 to float*
  %16 = load float, float* %15, align 4
  %17 = extractelement <2 x float> %11, i32 0
  %18 = fadd float %17, %16
  %19 = bitcast %union.VectorReg* %3 to float*
  store float %18, float* %19, align 1
  %20 = bitcast <2 x float> %11 to <2 x i32>
  %21 = extractelement <2 x i32> %20, i32 1
  %22 = getelementptr inbounds i8, i8* %4, i64 4
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  %24 = extractelement <2 x i32> %14, i32 0
  %25 = bitcast i64* %12 to i32*
  store i32 %24, i32* %25, align 1
  %26 = extractelement <2 x i32> %14, i32 1
  %27 = getelementptr inbounds i8, i8* %4, i64 12
  %28 = bitcast i8* %27 to i32*
  store i32 %26, i32* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x62c014___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x62c014___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x62c014(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401082(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x403140___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x403140_type* @G__0x403140 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x1b6a__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x1b6a__rip__type* @G_0x1b6a__rip_ to i64)
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
define %struct.Memory* @routine_cvtss2sd_0x62bb9c___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = load float, float* bitcast (%G_0x62bb9c_type* @G_0x62bb9c to float*), align 8
  %7 = fpext float %6 to double
  %8 = bitcast %union.VectorReg* %3 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm1__0x62bb9c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0x62bb9c_type* @G_0x62bb9c to float*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x403169___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x403169_type* @G__0x403169 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3cc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -972
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3d0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -976
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4013ba(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x62c020___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x62c020_type* @G__0x62c020 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x604054___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x604054_type* @G_0x604054 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401369(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
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
define %struct.Memory* @routine_cvtss2sd_MINUS0x4c__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
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
define %struct.Memory* @routine_movl_0x604054___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x604054_type* @G_0x604054 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3d4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -980
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3d8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -984
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3dc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -988
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulss_MINUS0x4c__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -76
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
define %struct.Memory* @routine_movss__xmm0__0x62bbb4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0x62bbb4_type* @G_0x62bbb4 to float*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x7__0x62c014(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 7, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3e0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -992
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xc__0x62c014(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %6 = add i32 %5, -12
  %7 = icmp ult i32 %5, 12
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = and i32 %6, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = xor i32 %6, %5
  %17 = lshr i32 %16, 4
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i32 %6, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = lshr i32 %6, 31
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %5, 31
  %28 = xor i32 %24, %27
  %29 = add nuw nsw i32 %28, %27
  %30 = icmp eq i32 %29, 2
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %31, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_40170c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_401546(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4014c0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4015e6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_401588(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x1865__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x1865__rip__type* @G_0x1865__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x186d__rip____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x186d__rip__type* @G_0x186d__rip_ to i64)
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
define %struct.Memory* @routine_movss_0x62bbb4___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x62bbb4_type* @G_0x62bbb4 to i32*), align 8
  %8 = bitcast %union.VectorReg* %3 to i32*
  store i32 %7, i32* %8, align 1
  %9 = getelementptr inbounds i8, i8* %4, i64 4
  %10 = bitcast i8* %9 to float*
  store float 0.000000e+00, float* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 12
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40149d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x174f__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x174f__rip__type* @G_0x174f__rip_ to i64)
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
define %struct.Memory* @routine_cvtss2sd_0x62bbb4___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = load float, float* bitcast (%G_0x62bbb4_type* @G_0x62bbb4 to float*), align 8
  %7 = fpext float %6 to double
  %8 = bitcast %union.VectorReg* %3 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm1__0x62bbb4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0x62bbb4_type* @G_0x62bbb4 to float*), align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x3e4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -996
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
define %struct.Memory* @routine_addq__0x3f0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1008
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -1009
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
