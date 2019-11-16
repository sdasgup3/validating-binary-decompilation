; ModuleID = '/tmp/tmpsdkkol0f-query.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x603a94_type = type <{ [4 x i8] }>
%G_0x610250_type = type <{ [4 x i8] }>
%G_0x610254_type = type <{ [4 x i8] }>
%G_0x610258_type = type <{ [4 x i8] }>
%G_0x61025c_type = type <{ [4 x i8] }>
%G_0x610260_type = type <{ [4 x i8] }>
%G_0x610264_type = type <{ [4 x i8] }>
%G_0x610268_type = type <{ [4 x i8] }>
%G_0x61026c_type = type <{ [4 x i8] }>
%G_0x610270_type = type <{ [4 x i8] }>
%G_0x610274_type = type <{ [4 x i8] }>
%G_0x610278_type = type <{ [4 x i8] }>
%G_0x61027c_type = type <{ [4 x i8] }>
%G_0x610280_type = type <{ [4 x i8] }>
%G_0x6191c4_type = type <{ [4 x i8] }>
%G_0x6191e0_type = type <{ [4 x i8] }>
%G_0x6191e4_type = type <{ [4 x i8] }>
%G_0x6191e8_type = type <{ [4 x i8] }>
%G_0x6191ec_type = type <{ [4 x i8] }>
%G_0x6191f0_type = type <{ [4 x i8] }>
%G_0x6191f4_type = type <{ [4 x i8] }>
%G_0x6191f8_type = type <{ [4 x i8] }>
%G_0x6191fc_type = type <{ [4 x i8] }>
%G_0x619200_type = type <{ [4 x i8] }>
%G_0x619204_type = type <{ [4 x i8] }>
%G_0x619208_type = type <{ [4 x i8] }>
%G_0x61920c_type = type <{ [4 x i8] }>
%G_0x619210_type = type <{ [4 x i8] }>
%G_0x619214_type = type <{ [4 x i8] }>
%G_0x619218_type = type <{ [4 x i8] }>
%G_0x61921c_type = type <{ [4 x i8] }>
%G_0x619220_type = type <{ [4 x i8] }>
%G__0x401374_type = type <{ [8 x i8] }>
%G__0x401386_type = type <{ [8 x i8] }>
%G__0x401399_type = type <{ [8 x i8] }>
%G__0x4013ac_type = type <{ [8 x i8] }>
%G__0x603aa0_type = type <{ [8 x i8] }>
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
@G_0x603a94 = local_unnamed_addr global %G_0x603a94_type zeroinitializer
@G_0x610250 = local_unnamed_addr global %G_0x610250_type zeroinitializer
@G_0x610254 = local_unnamed_addr global %G_0x610254_type zeroinitializer
@G_0x610258 = local_unnamed_addr global %G_0x610258_type zeroinitializer
@G_0x61025c = local_unnamed_addr global %G_0x61025c_type zeroinitializer
@G_0x610260 = local_unnamed_addr global %G_0x610260_type zeroinitializer
@G_0x610264 = local_unnamed_addr global %G_0x610264_type zeroinitializer
@G_0x610268 = local_unnamed_addr global %G_0x610268_type zeroinitializer
@G_0x61026c = local_unnamed_addr global %G_0x61026c_type zeroinitializer
@G_0x610270 = local_unnamed_addr global %G_0x610270_type zeroinitializer
@G_0x610274 = local_unnamed_addr global %G_0x610274_type zeroinitializer
@G_0x610278 = local_unnamed_addr global %G_0x610278_type zeroinitializer
@G_0x61027c = local_unnamed_addr global %G_0x61027c_type zeroinitializer
@G_0x610280 = local_unnamed_addr global %G_0x610280_type zeroinitializer
@G_0x6191c4 = local_unnamed_addr global %G_0x6191c4_type zeroinitializer
@G_0x6191e0 = local_unnamed_addr global %G_0x6191e0_type zeroinitializer
@G_0x6191e4 = local_unnamed_addr global %G_0x6191e4_type zeroinitializer
@G_0x6191e8 = local_unnamed_addr global %G_0x6191e8_type zeroinitializer
@G_0x6191ec = local_unnamed_addr global %G_0x6191ec_type zeroinitializer
@G_0x6191f0 = local_unnamed_addr global %G_0x6191f0_type zeroinitializer
@G_0x6191f4 = local_unnamed_addr global %G_0x6191f4_type zeroinitializer
@G_0x6191f8 = local_unnamed_addr global %G_0x6191f8_type zeroinitializer
@G_0x6191fc = local_unnamed_addr global %G_0x6191fc_type zeroinitializer
@G_0x619200 = local_unnamed_addr global %G_0x619200_type zeroinitializer
@G_0x619204 = local_unnamed_addr global %G_0x619204_type zeroinitializer
@G_0x619208 = local_unnamed_addr global %G_0x619208_type zeroinitializer
@G_0x61920c = local_unnamed_addr global %G_0x61920c_type zeroinitializer
@G_0x619210 = local_unnamed_addr global %G_0x619210_type zeroinitializer
@G_0x619214 = local_unnamed_addr global %G_0x619214_type zeroinitializer
@G_0x619218 = local_unnamed_addr global %G_0x619218_type zeroinitializer
@G_0x61921c = local_unnamed_addr global %G_0x61921c_type zeroinitializer
@G_0x619220 = local_unnamed_addr global %G_0x619220_type zeroinitializer
@G__0x401374 = global %G__0x401374_type zeroinitializer
@G__0x401386 = global %G__0x401386_type zeroinitializer
@G__0x401399 = global %G__0x401399_type zeroinitializer
@G__0x4013ac = global %G__0x4013ac_type zeroinitializer
@G__0x603aa0 = global %G__0x603aa0_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_400580.Fit(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400610.Place(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4007a0.Trial(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @Puzzle(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
entry:
  %var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %var_2_6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %var_2_43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i1121 = getelementptr inbounds %union.anon, %union.anon* %var_2_43, i64 0, i32 0
  %EAX.i1111 = bitcast %union.anon* %var_2_43 to i32*
  %var_2_45538 = load i64, i64* %RBP.i, align 8
  %var_2_46539 = add i64 %var_2_45538, -16
  %var_2_48540 = inttoptr i64 %var_2_46539 to i32*
  %var_2_49541 = load i32, i32* %var_2_48540, align 4
  %var_2_50542 = add i32 %var_2_49541, -511
  %var_2_63543 = icmp eq i32 %var_2_50542, 0
  %var_2_65544 = lshr i32 %var_2_50542, 31
  %var_2_67545 = lshr i32 %var_2_49541, 31
  %var_2_68546 = xor i32 %var_2_65544, %var_2_67545
  %var_2_69547 = add nuw nsw i32 %var_2_68546, %var_2_67545
  %var_2_70548 = icmp eq i32 %var_2_69547, 2
  %var_2_72549 = icmp ne i32 %var_2_65544, 0
  %var_2_73550 = xor i1 %var_2_72549, %var_2_70548
  %.demorgan551 = or i1 %var_2_63543, %var_2_73550
  br i1 %.demorgan551, label %block_40088c.preheader, label %block_.L_4008a9

block_40088c.preheader:                           ; preds = %entry
  br label %block_40088c

block_40088c:                                     ; preds = %block_40088c.preheader, %block_40088c
  %var_2_49552 = phi i32 [ %var_2_49, %block_40088c ], [ %var_2_49541, %block_40088c.preheader ]
  %var_2_77 = sext i32 %var_2_49552 to i64
  %var_2_78 = shl nsw i64 %var_2_77, 2
  %var_2_79 = add nsw i64 %var_2_78, 6348624
  %var_2_81 = inttoptr i64 %var_2_79 to i32*
  store i32 1, i32* %var_2_81, align 4
  %var_2_84 = load i64, i64* %var_2_3, align 8
  %var_2_85 = add i64 %var_2_84, 3
  store i64 %var_2_85, i64* %var_2_3, align 8
  %var_2_45 = load i64, i64* %RBP.i, align 8
  %var_2_46 = add i64 %var_2_45, -16
  %var_2_48 = inttoptr i64 %var_2_46 to i32*
  %var_2_49 = load i32, i32* %var_2_48, align 4
  %var_2_50 = add i32 %var_2_49, -511
  %var_2_63 = icmp eq i32 %var_2_50, 0
  %var_2_65 = lshr i32 %var_2_50, 31
  %var_2_67 = lshr i32 %var_2_49, 31
  %var_2_68 = xor i32 %var_2_65, %var_2_67
  %var_2_69 = add nuw nsw i32 %var_2_68, %var_2_67
  %var_2_70 = icmp eq i32 %var_2_69, 2
  %var_2_72 = icmp ne i32 %var_2_65, 0
  %var_2_73 = xor i1 %var_2_72, %var_2_70
  %.demorgan = or i1 %var_2_63, %var_2_73
  br i1 %.demorgan, label %block_40088c, label %block_.L_4008a9.loopexit

block_.L_4008a9.loopexit:                         ; preds = %block_40088c
  br label %block_.L_4008a9

block_.L_4008a9:                                  ; preds = %block_.L_4008a9.loopexit, %entry
  %var_2_45.lcssa = phi i64 [ %var_2_45538, %entry ], [ %var_2_45, %block_.L_4008a9.loopexit ]
  %var_2_114 = add i64 %var_2_45.lcssa, -4
  %var_2_116 = inttoptr i64 %var_2_114 to i32*
  store i32 1, i32* %var_2_116, align 4
  %var_2_118522 = load i64, i64* %RBP.i, align 8
  %var_2_119523 = add i64 %var_2_118522, -4
  %var_2_121524 = inttoptr i64 %var_2_119523 to i32*
  %var_2_122525 = load i32, i32* %var_2_121524, align 4
  %var_2_123526 = add i32 %var_2_122525, -5
  %var_2_135527 = icmp eq i32 %var_2_123526, 0
  %var_2_137528 = lshr i32 %var_2_123526, 31
  %var_2_139529 = lshr i32 %var_2_122525, 31
  %var_2_140530 = xor i32 %var_2_137528, %var_2_139529
  %var_2_141531 = add nuw nsw i32 %var_2_140530, %var_2_139529
  %var_2_142532 = icmp eq i32 %var_2_141531, 2
  %var_2_144533 = icmp ne i32 %var_2_137528, 0
  %var_2_145534 = xor i1 %var_2_144533, %var_2_142532
  %.demorgan242535 = or i1 %var_2_135527, %var_2_145534
  br i1 %.demorgan242535, label %block_4008ba.preheader, label %block_.L_400931

block_4008ba.preheader:                           ; preds = %block_.L_4008a9
  br label %block_4008ba

block_.L_4008b0.loopexit.loopexit:                ; preds = %block_.L_4008c1.loopexit
  br label %block_.L_4008b0.loopexit

block_.L_4008b0.loopexit:                         ; preds = %block_.L_4008b0.loopexit.loopexit, %block_4008ba
  %var_2_1515075 = phi i64 [ %var_2_151507, %block_4008ba ], [ %var_2_1515076, %block_.L_4008b0.loopexit.loopexit ]
  %var_2_119 = add i64 %var_2_1515075, -4
  %var_2_121 = inttoptr i64 %var_2_119 to i32*
  %var_2_122 = load i32, i32* %var_2_121, align 4
  %var_2_123 = add i32 %var_2_122, -5
  %var_2_135 = icmp eq i32 %var_2_123, 0
  %var_2_137 = lshr i32 %var_2_123, 31
  %var_2_139 = lshr i32 %var_2_122, 31
  %var_2_140 = xor i32 %var_2_137, %var_2_139
  %var_2_141 = add nuw nsw i32 %var_2_140, %var_2_139
  %var_2_142 = icmp eq i32 %var_2_141, 2
  %var_2_144 = icmp ne i32 %var_2_137, 0
  %var_2_145 = xor i1 %var_2_144, %var_2_142
  %.demorgan242 = or i1 %var_2_135, %var_2_145
  br i1 %.demorgan242, label %block_4008ba, label %block_.L_400931.loopexit

block_4008ba:                                     ; preds = %block_4008ba.preheader, %block_.L_4008b0.loopexit
  %var_2_151507 = phi i64 [ %var_2_1515075, %block_.L_4008b0.loopexit ], [ %var_2_118522, %block_4008ba.preheader ]
  %var_2_152508 = add i64 %var_2_151507, -8
  %var_2_154509 = inttoptr i64 %var_2_152508 to i32*
  %var_2_155510 = load i32, i32* %var_2_154509, align 4
  %var_2_156511 = add i32 %var_2_155510, -5
  %var_2_168512 = icmp eq i32 %var_2_156511, 0
  %var_2_170513 = lshr i32 %var_2_156511, 31
  %var_2_172514 = lshr i32 %var_2_155510, 31
  %var_2_173515 = xor i32 %var_2_170513, %var_2_172514
  %var_2_174516 = add nuw nsw i32 %var_2_173515, %var_2_172514
  %var_2_175517 = icmp eq i32 %var_2_174516, 2
  %var_2_177518 = icmp ne i32 %var_2_170513, 0
  %var_2_178519 = xor i1 %var_2_177518, %var_2_175517
  %.demorgan243520 = or i1 %var_2_168512, %var_2_178519
  br i1 %.demorgan243520, label %block_4008cb.preheader, label %block_.L_4008b0.loopexit

block_4008cb.preheader:                           ; preds = %block_4008ba
  br label %block_4008cb

block_.L_4008c1.loopexit.loopexit:                ; preds = %block_4008dc
  br label %block_.L_4008c1.loopexit

block_.L_4008c1.loopexit:                         ; preds = %block_.L_4008c1.loopexit.loopexit, %block_4008cb
  %var_2_1515076 = phi i64 [ %var_2_184491, %block_4008cb ], [ %var_2_184, %block_.L_4008c1.loopexit.loopexit ]
  %var_2_152 = add i64 %var_2_1515076, -8
  %var_2_154 = inttoptr i64 %var_2_152 to i32*
  %var_2_155 = load i32, i32* %var_2_154, align 4
  %var_2_156 = add i32 %var_2_155, -5
  %var_2_168 = icmp eq i32 %var_2_156, 0
  %var_2_170 = lshr i32 %var_2_156, 31
  %var_2_172 = lshr i32 %var_2_155, 31
  %var_2_173 = xor i32 %var_2_170, %var_2_172
  %var_2_174 = add nuw nsw i32 %var_2_173, %var_2_172
  %var_2_175 = icmp eq i32 %var_2_174, 2
  %var_2_177 = icmp ne i32 %var_2_170, 0
  %var_2_178 = xor i1 %var_2_177, %var_2_175
  %.demorgan243 = or i1 %var_2_168, %var_2_178
  br i1 %.demorgan243, label %block_4008cb, label %block_.L_4008b0.loopexit.loopexit

block_4008cb:                                     ; preds = %block_4008cb.preheader, %block_.L_4008c1.loopexit
  %var_2_184491 = phi i64 [ %var_2_1515076, %block_.L_4008c1.loopexit ], [ %var_2_151507, %block_4008cb.preheader ]
  %var_2_185492 = add i64 %var_2_184491, -12
  %var_2_187493 = inttoptr i64 %var_2_185492 to i32*
  %var_2_188494 = load i32, i32* %var_2_187493, align 4
  %var_2_189495 = add i32 %var_2_188494, -5
  %var_2_201496 = icmp eq i32 %var_2_189495, 0
  %var_2_203497 = lshr i32 %var_2_189495, 31
  %var_2_205498 = lshr i32 %var_2_188494, 31
  %var_2_206499 = xor i32 %var_2_203497, %var_2_205498
  %var_2_207500 = add nuw nsw i32 %var_2_206499, %var_2_205498
  %var_2_208501 = icmp eq i32 %var_2_207500, 2
  %var_2_210502 = icmp ne i32 %var_2_203497, 0
  %var_2_211503 = xor i1 %var_2_210502, %var_2_208501
  %.demorgan244504 = or i1 %var_2_201496, %var_2_211503
  br i1 %.demorgan244504, label %block_4008dc.preheader, label %block_.L_4008c1.loopexit

block_4008dc.preheader:                           ; preds = %block_4008cb
  br label %block_4008dc

block_4008dc:                                     ; preds = %block_4008dc.preheader, %block_4008dc
  %var_2_188506 = phi i32 [ %var_2_188, %block_4008dc ], [ %var_2_188494, %block_4008dc.preheader ]
  %var_2_184505 = phi i64 [ %var_2_184, %block_4008dc ], [ %var_2_184491, %block_4008dc.preheader ]
  %var_2_218 = add i64 %var_2_184505, -8
  %var_2_220 = inttoptr i64 %var_2_218 to i32*
  %var_2_221 = load i32, i32* %var_2_220, align 4
  %var_2_225 = shl i32 %var_2_188506, 3
  %var_2_227 = add i32 %var_2_221, %var_2_225
  %var_2_228 = shl i32 %var_2_227, 3
  %var_2_230 = load i64, i64* %RAX.i1121, align 8
  %var_2_231 = trunc i64 %var_2_230 to i32
  %var_2_232 = add i32 %var_2_228, %var_2_231
  %var_2_261 = sext i32 %var_2_232 to i64
  %var_2_262 = shl nsw i64 %var_2_261, 2
  %var_2_263 = add nsw i64 %var_2_262, 6348624
  %var_2_265 = inttoptr i64 %var_2_263 to i32*
  store i32 0, i32* %var_2_265, align 4
  %var_2_268 = load i64, i64* %var_2_3, align 8
  %var_2_269 = add i64 %var_2_268, 3
  store i64 %var_2_269, i64* %var_2_3, align 8
  %var_2_184 = load i64, i64* %RBP.i, align 8
  %var_2_185 = add i64 %var_2_184, -12
  %var_2_187 = inttoptr i64 %var_2_185 to i32*
  %var_2_188 = load i32, i32* %var_2_187, align 4
  %var_2_189 = add i32 %var_2_188, -5
  %var_2_201 = icmp eq i32 %var_2_189, 0
  %var_2_203 = lshr i32 %var_2_189, 31
  %var_2_205 = lshr i32 %var_2_188, 31
  %var_2_206 = xor i32 %var_2_203, %var_2_205
  %var_2_207 = add nuw nsw i32 %var_2_206, %var_2_205
  %var_2_208 = icmp eq i32 %var_2_207, 2
  %var_2_210 = icmp ne i32 %var_2_203, 0
  %var_2_211 = xor i1 %var_2_210, %var_2_208
  %.demorgan244 = or i1 %var_2_201, %var_2_211
  br i1 %.demorgan244, label %block_4008dc, label %block_.L_4008c1.loopexit.loopexit

block_.L_400931.loopexit:                         ; preds = %block_.L_4008b0.loopexit
  br label %block_.L_400931

block_.L_400931:                                  ; preds = %block_.L_400931.loopexit, %block_.L_4008a9
  %var_2_364478 = phi i32 [ %var_2_122525, %block_.L_4008a9 ], [ %var_2_122, %block_.L_400931.loopexit ]
  %var_2_526445 = phi i64 [ %var_2_118522, %block_.L_4008a9 ], [ %var_2_1515075, %block_.L_400931.loopexit ]
  %var_2_361476 = add i64 %var_2_526445, -4
  %var_2_363477 = inttoptr i64 %var_2_361476 to i32*
  %var_2_365479 = add i32 %var_2_364478, -12
  %var_2_377480 = icmp eq i32 %var_2_365479, 0
  %var_2_379481 = lshr i32 %var_2_365479, 31
  %var_2_381482 = lshr i32 %var_2_364478, 31
  %var_2_382483 = xor i32 %var_2_379481, %var_2_381482
  %var_2_383484 = add nuw nsw i32 %var_2_382483, %var_2_381482
  %var_2_384485 = icmp eq i32 %var_2_383484, 2
  %var_2_386486 = icmp ne i32 %var_2_379481, 0
  %var_2_387487 = xor i1 %var_2_386486, %var_2_384485
  %.demorgan246488 = or i1 %var_2_377480, %var_2_387487
  br i1 %.demorgan246488, label %block_400942.preheader, label %block_.L_400997

block_400942.preheader:                           ; preds = %block_.L_400931
  %var_2_394462 = add i64 %var_2_526445, -16
  %var_2_396463 = inttoptr i64 %var_2_394462 to i32*
  br label %block_400942

block_.L_400938.loopexit.loopexit:                ; preds = %block_400956
  %var_2_364.pre = load i32, i32* %var_2_363477, align 4
  br label %block_.L_400938.loopexit

block_.L_400938.loopexit:                         ; preds = %block_.L_400938.loopexit.loopexit, %block_400942
  %var_2_530448.pre = phi i32 [ %var_2_364.pre, %block_.L_400938.loopexit.loopexit ], [ %var_2_3646, %block_400942 ]
  %var_2_365 = add i32 %var_2_530448.pre, -12
  %var_2_377 = icmp eq i32 %var_2_365, 0
  %var_2_379 = lshr i32 %var_2_365, 31
  %var_2_381 = lshr i32 %var_2_530448.pre, 31
  %var_2_382 = xor i32 %var_2_379, %var_2_381
  %var_2_383 = add nuw nsw i32 %var_2_382, %var_2_381
  %var_2_384 = icmp eq i32 %var_2_383, 2
  %var_2_386 = icmp ne i32 %var_2_379, 0
  %var_2_387 = xor i1 %var_2_386, %var_2_384
  %.demorgan246 = or i1 %var_2_377, %var_2_387
  br i1 %.demorgan246, label %block_400942, label %block_.L_400997.loopexit

block_400942:                                     ; preds = %block_400942.preheader, %block_.L_400938.loopexit
  %var_2_3646 = phi i32 [ %var_2_530448.pre, %block_.L_400938.loopexit ], [ %var_2_364478, %block_400942.preheader ]
  %var_2_397464 = load i32, i32* %var_2_396463, align 4
  %var_2_398465 = add i32 %var_2_397464, -511
  %var_2_411466 = icmp eq i32 %var_2_398465, 0
  %var_2_413467 = lshr i32 %var_2_398465, 31
  %var_2_415468 = lshr i32 %var_2_397464, 31
  %var_2_416469 = xor i32 %var_2_413467, %var_2_415468
  %var_2_417470 = add nuw nsw i32 %var_2_416469, %var_2_415468
  %var_2_418471 = icmp eq i32 %var_2_417470, 2
  %var_2_420472 = icmp ne i32 %var_2_413467, 0
  %var_2_421473 = xor i1 %var_2_420472, %var_2_418471
  %.demorgan247474 = or i1 %var_2_411466, %var_2_421473
  br i1 %.demorgan247474, label %block_400956.preheader, label %block_.L_400938.loopexit

block_400956.preheader:                           ; preds = %block_400942
  %var_2_464.pre = load i64, i64* %var_2_3, align 8
  br label %block_400956

block_400956:                                     ; preds = %block_400956, %block_400956.preheader
  %var_2_464 = phi i64 [ %var_2_464.pre, %block_400956.preheader ], [ %var_2_465, %block_400956 ]
  %var_2_465 = add i64 %var_2_464, 3
  store i64 %var_2_465, i64* %var_2_3, align 8
  %var_2_397 = load i32, i32* %var_2_396463, align 4
  %var_2_398 = add i32 %var_2_397, -511
  %var_2_411 = icmp eq i32 %var_2_398, 0
  %var_2_413 = lshr i32 %var_2_398, 31
  %var_2_415 = lshr i32 %var_2_397, 31
  %var_2_416 = xor i32 %var_2_413, %var_2_415
  %var_2_417 = add nuw nsw i32 %var_2_416, %var_2_415
  %var_2_418 = icmp eq i32 %var_2_417, 2
  %var_2_420 = icmp ne i32 %var_2_413, 0
  %var_2_421 = xor i1 %var_2_420, %var_2_418
  %.demorgan247 = or i1 %var_2_411, %var_2_421
  br i1 %.demorgan247, label %block_400956, label %block_.L_400938.loopexit.loopexit

block_.L_400997.loopexit:                         ; preds = %block_.L_400938.loopexit
  br label %block_.L_400997

block_.L_400997:                                  ; preds = %block_.L_400997.loopexit, %block_.L_400931
  %var_2_530448 = phi i32 [ %var_2_364478, %block_.L_400931 ], [ %var_2_530448.pre, %block_.L_400997.loopexit ]
  %var_2_531449 = add i32 %var_2_530448, -3
  %var_2_543450 = icmp eq i32 %var_2_531449, 0
  %var_2_545451 = lshr i32 %var_2_531449, 31
  %var_2_547452 = lshr i32 %var_2_530448, 31
  %var_2_548453 = xor i32 %var_2_545451, %var_2_547452
  %var_2_549454 = add nuw nsw i32 %var_2_548453, %var_2_547452
  %var_2_550455 = icmp eq i32 %var_2_549454, 2
  %var_2_552456 = icmp ne i32 %var_2_545451, 0
  %var_2_553457 = xor i1 %var_2_552456, %var_2_550455
  %.demorgan249458 = or i1 %var_2_543450, %var_2_553457
  br i1 %.demorgan249458, label %block_4009a8.preheader, label %block_.L_400a1f

block_4009a8.preheader:                           ; preds = %block_.L_400997
  br label %block_4009a8

block_.L_40099e.loopexit.loopexit:                ; preds = %block_.L_4009af.loopexit
  br label %block_.L_40099e.loopexit

block_.L_40099e.loopexit:                         ; preds = %block_.L_40099e.loopexit.loopexit, %block_4009a8
  %var_2_55943010 = phi i64 [ %var_2_559430, %block_4009a8 ], [ %var_2_55943011, %block_.L_40099e.loopexit.loopexit ]
  %var_2_527 = add i64 %var_2_55943010, -4
  %var_2_529 = inttoptr i64 %var_2_527 to i32*
  %var_2_530 = load i32, i32* %var_2_529, align 4
  %var_2_531 = add i32 %var_2_530, -3
  %var_2_543 = icmp eq i32 %var_2_531, 0
  %var_2_545 = lshr i32 %var_2_531, 31
  %var_2_547 = lshr i32 %var_2_530, 31
  %var_2_548 = xor i32 %var_2_545, %var_2_547
  %var_2_549 = add nuw nsw i32 %var_2_548, %var_2_547
  %var_2_550 = icmp eq i32 %var_2_549, 2
  %var_2_552 = icmp ne i32 %var_2_545, 0
  %var_2_553 = xor i1 %var_2_552, %var_2_550
  %.demorgan249 = or i1 %var_2_543, %var_2_553
  br i1 %.demorgan249, label %block_4009a8, label %block_.L_400a1f.loopexit

block_4009a8:                                     ; preds = %block_4009a8.preheader, %block_.L_40099e.loopexit
  %var_2_559430 = phi i64 [ %var_2_55943010, %block_.L_40099e.loopexit ], [ %var_2_526445, %block_4009a8.preheader ]
  %var_2_560431 = add i64 %var_2_559430, -8
  %var_2_562432 = inttoptr i64 %var_2_560431 to i32*
  %var_2_563433 = load i32, i32* %var_2_562432, align 4
  %var_2_564434 = add i32 %var_2_563433, -1
  %var_2_576435 = icmp eq i32 %var_2_564434, 0
  %var_2_578436 = lshr i32 %var_2_564434, 31
  %var_2_580437 = lshr i32 %var_2_563433, 31
  %var_2_581438 = xor i32 %var_2_578436, %var_2_580437
  %var_2_582439 = add nuw nsw i32 %var_2_581438, %var_2_580437
  %var_2_583440 = icmp eq i32 %var_2_582439, 2
  %var_2_585441 = icmp ne i32 %var_2_578436, 0
  %var_2_586442 = xor i1 %var_2_585441, %var_2_583440
  %.demorgan250443 = or i1 %var_2_576435, %var_2_586442
  br i1 %.demorgan250443, label %block_4009b9.preheader, label %block_.L_40099e.loopexit

block_4009b9.preheader:                           ; preds = %block_4009a8
  br label %block_4009b9

block_.L_4009af.loopexit.loopexit:                ; preds = %block_4009ca
  br label %block_.L_4009af.loopexit

block_.L_4009af.loopexit:                         ; preds = %block_.L_4009af.loopexit.loopexit, %block_4009b9
  %var_2_55943011 = phi i64 [ %var_2_592424, %block_4009b9 ], [ %var_2_592, %block_.L_4009af.loopexit.loopexit ]
  %var_2_560 = add i64 %var_2_55943011, -8
  %var_2_562 = inttoptr i64 %var_2_560 to i32*
  %var_2_563 = load i32, i32* %var_2_562, align 4
  %var_2_564 = add i32 %var_2_563, -1
  %var_2_576 = icmp eq i32 %var_2_564, 0
  %var_2_578 = lshr i32 %var_2_564, 31
  %var_2_580 = lshr i32 %var_2_563, 31
  %var_2_581 = xor i32 %var_2_578, %var_2_580
  %var_2_582 = add nuw nsw i32 %var_2_581, %var_2_580
  %var_2_583 = icmp eq i32 %var_2_582, 2
  %var_2_585 = icmp ne i32 %var_2_578, 0
  %var_2_586 = xor i1 %var_2_585, %var_2_583
  %.demorgan250 = or i1 %var_2_576, %var_2_586
  br i1 %.demorgan250, label %block_4009b9, label %block_.L_40099e.loopexit.loopexit

block_4009b9:                                     ; preds = %block_4009b9.preheader, %block_.L_4009af.loopexit
  %var_2_592424 = phi i64 [ %var_2_55943011, %block_.L_4009af.loopexit ], [ %var_2_559430, %block_4009b9.preheader ]
  %var_2_593425 = add i64 %var_2_592424, -12
  %var_2_595426 = inttoptr i64 %var_2_593425 to i32*
  %var_2_596427 = load i32, i32* %var_2_595426, align 4
  %var_4_3 = icmp sgt i32 %var_2_596427, 0
  br i1 %var_4_3, label %block_.L_4009af.loopexit, label %block_4009ca.preheader

block_4009ca.preheader:                           ; preds = %block_4009b9
  br label %block_4009ca

block_4009ca:                                     ; preds = %block_4009ca.preheader, %block_4009ca
  %var_2_621 = phi i32 [ %var_2_596, %block_4009ca ], [ %var_2_596427, %block_4009ca.preheader ]
  %var_2_592428 = phi i64 [ %var_2_592, %block_4009ca ], [ %var_2_592424, %block_4009ca.preheader ]
  %var_2_615 = add i64 %var_2_592428, -8
  %var_2_617 = inttoptr i64 %var_2_615 to i32*
  %var_2_618 = load i32, i32* %var_2_617, align 4
  %var_2_622 = shl i32 %var_2_621, 3
  %var_2_624 = add i32 %var_2_618, %var_2_622
  %var_2_625 = shl i32 %var_2_624, 3
  %var_2_627 = load i64, i64* %RAX.i1121, align 8
  %var_2_628 = trunc i64 %var_2_627 to i32
  %var_2_629 = add i32 %var_2_625, %var_2_628
  %var_2_658 = sext i32 %var_2_629 to i64
  %var_2_659 = shl nsw i64 %var_2_658, 2
  %var_2_660 = add nsw i64 %var_2_659, 6306464
  %var_2_662 = inttoptr i64 %var_2_660 to i32*
  store i32 1, i32* %var_2_662, align 4
  %var_2_665 = load i64, i64* %var_2_3, align 8
  %var_2_666 = add i64 %var_2_665, 3
  store i64 %var_2_666, i64* %var_2_3, align 8
  %var_2_592 = load i64, i64* %RBP.i, align 8
  %var_2_593 = add i64 %var_2_592, -12
  %var_2_595 = inttoptr i64 %var_2_593 to i32*
  %var_2_596 = load i32, i32* %var_2_595, align 4
  %var_4_4 = icmp sgt i32 %var_2_596, 0
  br i1 %var_4_4, label %block_.L_4009af.loopexit.loopexit, label %block_4009ca

block_.L_400a1f.loopexit:                         ; preds = %block_.L_40099e.loopexit
  br label %block_.L_400a1f

block_.L_400a1f:                                  ; preds = %block_.L_400a1f.loopexit, %block_.L_400997
  %var_2_757408 = phi i64 [ %var_2_526445, %block_.L_400997 ], [ %var_2_55943010, %block_.L_400a1f.loopexit ]
  store i32 0, i32* bitcast (%G_0x6191f0_type* @G_0x6191f0 to i32*), align 8
  store i32 11, i32* bitcast (%G_0x610250_type* @G_0x610250 to i32*), align 8
  %var_2_758409 = add i64 %var_2_757408, -4
  %var_2_760410 = inttoptr i64 %var_2_758409 to i32*
  %var_2_761411 = load i32, i32* %var_2_760410, align 4
  %var_2_762412 = add i32 %var_2_761411, -1
  %var_2_774413 = icmp eq i32 %var_2_762412, 0
  %var_2_776414 = lshr i32 %var_2_762412, 31
  %var_2_778415 = lshr i32 %var_2_761411, 31
  %var_2_779416 = xor i32 %var_2_776414, %var_2_778415
  %var_2_780417 = add nuw nsw i32 %var_2_779416, %var_2_778415
  %var_2_781418 = icmp eq i32 %var_2_780417, 2
  %var_2_783419 = icmp ne i32 %var_2_776414, 0
  %var_2_784420 = xor i1 %var_2_783419, %var_2_781418
  %.demorgan253421 = or i1 %var_2_774413, %var_2_784420
  br i1 %.demorgan253421, label %block_400a46.preheader, label %block_.L_400abd

block_400a46.preheader:                           ; preds = %block_.L_400a1f
  br label %block_400a46

block_.L_400a3c.loopexit.loopexit:                ; preds = %block_.L_400a4d.loopexit
  br label %block_.L_400a3c.loopexit

block_.L_400a3c.loopexit:                         ; preds = %block_.L_400a3c.loopexit.loopexit, %block_400a46
  %var_2_79040316 = phi i64 [ %var_2_790403, %block_400a46 ], [ %var_2_79040317, %block_.L_400a3c.loopexit.loopexit ]
  %var_2_758 = add i64 %var_2_79040316, -4
  %var_2_760 = inttoptr i64 %var_2_758 to i32*
  %var_2_761 = load i32, i32* %var_2_760, align 4
  %var_2_762 = add i32 %var_2_761, -1
  %var_2_774 = icmp eq i32 %var_2_762, 0
  %var_2_776 = lshr i32 %var_2_762, 31
  %var_2_778 = lshr i32 %var_2_761, 31
  %var_2_779 = xor i32 %var_2_776, %var_2_778
  %var_2_780 = add nuw nsw i32 %var_2_779, %var_2_778
  %var_2_781 = icmp eq i32 %var_2_780, 2
  %var_2_783 = icmp ne i32 %var_2_776, 0
  %var_2_784 = xor i1 %var_2_783, %var_2_781
  %.demorgan253 = or i1 %var_2_774, %var_2_784
  br i1 %.demorgan253, label %block_400a46, label %block_.L_400abd.loopexit

block_400a46:                                     ; preds = %block_400a46.preheader, %block_.L_400a3c.loopexit
  %var_2_790403 = phi i64 [ %var_2_79040316, %block_.L_400a3c.loopexit ], [ %var_2_757408, %block_400a46.preheader ]
  %var_2_791404 = add i64 %var_2_790403, -8
  %var_2_793405 = inttoptr i64 %var_2_791404 to i32*
  %var_2_794406 = load i32, i32* %var_2_793405, align 4
  %var_4_5 = icmp sgt i32 %var_2_794406, 0
  br i1 %var_4_5, label %block_.L_400a3c.loopexit, label %block_400a57.preheader

block_400a57.preheader:                           ; preds = %block_400a46
  br label %block_400a57

block_.L_400a4d.loopexit.loopexit:                ; preds = %block_400a68
  br label %block_.L_400a4d.loopexit

block_.L_400a4d.loopexit:                         ; preds = %block_.L_400a4d.loopexit.loopexit, %block_400a57
  %var_2_79040317 = phi i64 [ %var_2_812387, %block_400a57 ], [ %var_2_812, %block_.L_400a4d.loopexit.loopexit ]
  %var_2_791 = add i64 %var_2_79040317, -8
  %var_2_793 = inttoptr i64 %var_2_791 to i32*
  %var_2_794 = load i32, i32* %var_2_793, align 4
  %var_4_6 = icmp sgt i32 %var_2_794, 0
  br i1 %var_4_6, label %block_.L_400a3c.loopexit.loopexit, label %block_400a57

block_400a57:                                     ; preds = %block_400a57.preheader, %block_.L_400a4d.loopexit
  %var_2_812387 = phi i64 [ %var_2_79040317, %block_.L_400a4d.loopexit ], [ %var_2_790403, %block_400a57.preheader ]
  %var_2_813388 = add i64 %var_2_812387, -12
  %var_2_815389 = inttoptr i64 %var_2_813388 to i32*
  %var_2_816390 = load i32, i32* %var_2_815389, align 4
  %var_2_817391 = add i32 %var_2_816390, -3
  %var_2_829392 = icmp eq i32 %var_2_817391, 0
  %var_2_831393 = lshr i32 %var_2_817391, 31
  %var_2_833394 = lshr i32 %var_2_816390, 31
  %var_2_834395 = xor i32 %var_2_831393, %var_2_833394
  %var_2_835396 = add nuw nsw i32 %var_2_834395, %var_2_833394
  %var_2_836397 = icmp eq i32 %var_2_835396, 2
  %var_2_838398 = icmp ne i32 %var_2_831393, 0
  %var_2_839399 = xor i1 %var_2_838398, %var_2_836397
  %.demorgan254400 = or i1 %var_2_829392, %var_2_839399
  br i1 %.demorgan254400, label %block_400a68.preheader, label %block_.L_400a4d.loopexit

block_400a68.preheader:                           ; preds = %block_400a57
  br label %block_400a68

block_400a68:                                     ; preds = %block_400a68.preheader, %block_400a68
  %var_2_816402 = phi i32 [ %var_2_816, %block_400a68 ], [ %var_2_816390, %block_400a68.preheader ]
  %var_2_812401 = phi i64 [ %var_2_812, %block_400a68 ], [ %var_2_812387, %block_400a68.preheader ]
  %var_2_846 = add i64 %var_2_812401, -8
  %var_2_848 = inttoptr i64 %var_2_846 to i32*
  %var_2_849 = load i32, i32* %var_2_848, align 4
  %var_2_853 = shl i32 %var_2_816402, 3
  %var_2_855 = add i32 %var_2_849, %var_2_853
  %var_2_856 = shl i32 %var_2_855, 3
  %var_2_858 = load i64, i64* %RAX.i1121, align 8
  %var_2_859 = trunc i64 %var_2_858 to i32
  %var_2_860 = add i32 %var_2_856, %var_2_859
  %var_2_889 = sext i32 %var_2_860 to i64
  %var_2_890 = shl nsw i64 %var_2_889, 2
  %var_2_891 = add nsw i64 %var_2_890, 6308512
  %var_2_893 = inttoptr i64 %var_2_891 to i32*
  store i32 1, i32* %var_2_893, align 4
  %var_2_896 = load i64, i64* %var_2_3, align 8
  %var_2_897 = add i64 %var_2_896, 3
  store i64 %var_2_897, i64* %var_2_3, align 8
  %var_2_812 = load i64, i64* %RBP.i, align 8
  %var_2_813 = add i64 %var_2_812, -12
  %var_2_815 = inttoptr i64 %var_2_813 to i32*
  %var_2_816 = load i32, i32* %var_2_815, align 4
  %var_2_817 = add i32 %var_2_816, -3
  %var_2_829 = icmp eq i32 %var_2_817, 0
  %var_2_831 = lshr i32 %var_2_817, 31
  %var_2_833 = lshr i32 %var_2_816, 31
  %var_2_834 = xor i32 %var_2_831, %var_2_833
  %var_2_835 = add nuw nsw i32 %var_2_834, %var_2_833
  %var_2_836 = icmp eq i32 %var_2_835, 2
  %var_2_838 = icmp ne i32 %var_2_831, 0
  %var_2_839 = xor i1 %var_2_838, %var_2_836
  %.demorgan254 = or i1 %var_2_829, %var_2_839
  br i1 %.demorgan254, label %block_400a68, label %block_.L_400a4d.loopexit.loopexit

block_.L_400abd.loopexit:                         ; preds = %block_.L_400a3c.loopexit
  br label %block_.L_400abd

block_.L_400abd:                                  ; preds = %block_.L_400abd.loopexit, %block_.L_400a1f
  %var_2_988381 = phi i64 [ %var_2_757408, %block_.L_400a1f ], [ %var_2_79040316, %block_.L_400abd.loopexit ]
  store i32 0, i32* bitcast (%G_0x6191f4_type* @G_0x6191f4 to i32*), align 8
  store i32 193, i32* bitcast (%G_0x610254_type* @G_0x610254 to i32*), align 8
  %var_2_989382 = add i64 %var_2_988381, -4
  %var_2_991383 = inttoptr i64 %var_2_989382 to i32*
  %var_2_992384 = load i32, i32* %var_2_991383, align 4
  %var_4_7 = icmp sgt i32 %var_2_992384, 0
  br i1 %var_4_7, label %block_.L_400b5b, label %block_400ae4.preheader

block_400ae4.preheader:                           ; preds = %block_.L_400abd
  br label %block_400ae4

block_.L_400ada.loopexit.loopexit:                ; preds = %block_.L_400aeb.loopexit
  br label %block_.L_400ada.loopexit

block_.L_400ada.loopexit:                         ; preds = %block_.L_400ada.loopexit.loopexit, %block_400ae4
  %var_2_101036621 = phi i64 [ %var_2_1010366, %block_400ae4 ], [ %var_2_101036622, %block_.L_400ada.loopexit.loopexit ]
  %var_2_989 = add i64 %var_2_101036621, -4
  %var_2_991 = inttoptr i64 %var_2_989 to i32*
  %var_2_992 = load i32, i32* %var_2_991, align 4
  %var_4_8 = icmp sgt i32 %var_2_992, 0
  br i1 %var_4_8, label %block_.L_400b5b.loopexit, label %block_400ae4

block_400ae4:                                     ; preds = %block_400ae4.preheader, %block_.L_400ada.loopexit
  %var_2_1010366 = phi i64 [ %var_2_101036621, %block_.L_400ada.loopexit ], [ %var_2_988381, %block_400ae4.preheader ]
  %var_2_1011367 = add i64 %var_2_1010366, -8
  %var_2_1013368 = inttoptr i64 %var_2_1011367 to i32*
  %var_2_1014369 = load i32, i32* %var_2_1013368, align 4
  %var_2_1015370 = add i32 %var_2_1014369, -3
  %var_2_1027371 = icmp eq i32 %var_2_1015370, 0
  %var_2_1029372 = lshr i32 %var_2_1015370, 31
  %var_2_1031373 = lshr i32 %var_2_1014369, 31
  %var_2_1032374 = xor i32 %var_2_1029372, %var_2_1031373
  %var_2_1033375 = add nuw nsw i32 %var_2_1032374, %var_2_1031373
  %var_2_1034376 = icmp eq i32 %var_2_1033375, 2
  %var_2_1036377 = icmp ne i32 %var_2_1029372, 0
  %var_2_1037378 = xor i1 %var_2_1036377, %var_2_1034376
  %.demorgan257379 = or i1 %var_2_1027371, %var_2_1037378
  br i1 %.demorgan257379, label %block_400af5.preheader, label %block_.L_400ada.loopexit

block_400af5.preheader:                           ; preds = %block_400ae4
  br label %block_400af5

block_.L_400aeb.loopexit.loopexit:                ; preds = %block_400b06
  br label %block_.L_400aeb.loopexit

block_.L_400aeb.loopexit:                         ; preds = %block_.L_400aeb.loopexit.loopexit, %block_400af5
  %var_2_101036622 = phi i64 [ %var_2_1043350, %block_400af5 ], [ %var_2_1043, %block_.L_400aeb.loopexit.loopexit ]
  %var_2_1011 = add i64 %var_2_101036622, -8
  %var_2_1013 = inttoptr i64 %var_2_1011 to i32*
  %var_2_1014 = load i32, i32* %var_2_1013, align 4
  %var_2_1015 = add i32 %var_2_1014, -3
  %var_2_1027 = icmp eq i32 %var_2_1015, 0
  %var_2_1029 = lshr i32 %var_2_1015, 31
  %var_2_1031 = lshr i32 %var_2_1014, 31
  %var_2_1032 = xor i32 %var_2_1029, %var_2_1031
  %var_2_1033 = add nuw nsw i32 %var_2_1032, %var_2_1031
  %var_2_1034 = icmp eq i32 %var_2_1033, 2
  %var_2_1036 = icmp ne i32 %var_2_1029, 0
  %var_2_1037 = xor i1 %var_2_1036, %var_2_1034
  %.demorgan257 = or i1 %var_2_1027, %var_2_1037
  br i1 %.demorgan257, label %block_400af5, label %block_.L_400ada.loopexit.loopexit

block_400af5:                                     ; preds = %block_400af5.preheader, %block_.L_400aeb.loopexit
  %var_2_1043350 = phi i64 [ %var_2_101036622, %block_.L_400aeb.loopexit ], [ %var_2_1010366, %block_400af5.preheader ]
  %var_2_1044351 = add i64 %var_2_1043350, -12
  %var_2_1046352 = inttoptr i64 %var_2_1044351 to i32*
  %var_2_1047353 = load i32, i32* %var_2_1046352, align 4
  %var_2_1048354 = add i32 %var_2_1047353, -1
  %var_2_1060355 = icmp eq i32 %var_2_1048354, 0
  %var_2_1062356 = lshr i32 %var_2_1048354, 31
  %var_2_1064357 = lshr i32 %var_2_1047353, 31
  %var_2_1065358 = xor i32 %var_2_1062356, %var_2_1064357
  %var_2_1066359 = add nuw nsw i32 %var_2_1065358, %var_2_1064357
  %var_2_1067360 = icmp eq i32 %var_2_1066359, 2
  %var_2_1069361 = icmp ne i32 %var_2_1062356, 0
  %var_2_1070362 = xor i1 %var_2_1069361, %var_2_1067360
  %.demorgan258363 = or i1 %var_2_1060355, %var_2_1070362
  br i1 %.demorgan258363, label %block_400b06.preheader, label %block_.L_400aeb.loopexit

block_400b06.preheader:                           ; preds = %block_400af5
  br label %block_400b06

block_400b06:                                     ; preds = %block_400b06.preheader, %block_400b06
  %var_2_1047365 = phi i32 [ %var_2_1047, %block_400b06 ], [ %var_2_1047353, %block_400b06.preheader ]
  %var_2_1043364 = phi i64 [ %var_2_1043, %block_400b06 ], [ %var_2_1043350, %block_400b06.preheader ]
  %var_2_1077 = add i64 %var_2_1043364, -8
  %var_2_1079 = inttoptr i64 %var_2_1077 to i32*
  %var_2_1080 = load i32, i32* %var_2_1079, align 4
  %var_2_1084 = shl i32 %var_2_1047365, 3
  %var_2_1086 = add i32 %var_2_1080, %var_2_1084
  %var_2_1087 = shl i32 %var_2_1086, 3
  %var_2_1089 = load i64, i64* %RAX.i1121, align 8
  %var_2_1090 = trunc i64 %var_2_1089 to i32
  %var_2_1091 = add i32 %var_2_1087, %var_2_1090
  %var_2_1120 = sext i32 %var_2_1091 to i64
  %var_2_1121 = shl nsw i64 %var_2_1120, 2
  %var_2_1122 = add nsw i64 %var_2_1121, 6310560
  %var_2_1124 = inttoptr i64 %var_2_1122 to i32*
  store i32 1, i32* %var_2_1124, align 4
  %var_2_1127 = load i64, i64* %var_2_3, align 8
  %var_2_1128 = add i64 %var_2_1127, 3
  store i64 %var_2_1128, i64* %var_2_3, align 8
  %var_2_1043 = load i64, i64* %RBP.i, align 8
  %var_2_1044 = add i64 %var_2_1043, -12
  %var_2_1046 = inttoptr i64 %var_2_1044 to i32*
  %var_2_1047 = load i32, i32* %var_2_1046, align 4
  %var_2_1048 = add i32 %var_2_1047, -1
  %var_2_1060 = icmp eq i32 %var_2_1048, 0
  %var_2_1062 = lshr i32 %var_2_1048, 31
  %var_2_1064 = lshr i32 %var_2_1047, 31
  %var_2_1065 = xor i32 %var_2_1062, %var_2_1064
  %var_2_1066 = add nuw nsw i32 %var_2_1065, %var_2_1064
  %var_2_1067 = icmp eq i32 %var_2_1066, 2
  %var_2_1069 = icmp ne i32 %var_2_1062, 0
  %var_2_1070 = xor i1 %var_2_1069, %var_2_1067
  %.demorgan258 = or i1 %var_2_1060, %var_2_1070
  br i1 %.demorgan258, label %block_400b06, label %block_.L_400aeb.loopexit.loopexit

block_.L_400b5b.loopexit:                         ; preds = %block_.L_400ada.loopexit
  br label %block_.L_400b5b

block_.L_400b5b:                                  ; preds = %block_.L_400b5b.loopexit, %block_.L_400abd
  %var_2_1219334 = phi i64 [ %var_2_988381, %block_.L_400abd ], [ %var_2_101036621, %block_.L_400b5b.loopexit ]
  store i32 0, i32* bitcast (%G_0x6191f8_type* @G_0x6191f8 to i32*), align 8
  store i32 88, i32* bitcast (%G_0x610258_type* @G_0x610258 to i32*), align 8
  %var_2_1220335 = add i64 %var_2_1219334, -4
  %var_2_1222336 = inttoptr i64 %var_2_1220335 to i32*
  %var_2_1223337 = load i32, i32* %var_2_1222336, align 4
  %var_2_1224338 = add i32 %var_2_1223337, -1
  %var_2_1236339 = icmp eq i32 %var_2_1224338, 0
  %var_2_1238340 = lshr i32 %var_2_1224338, 31
  %var_2_1240341 = lshr i32 %var_2_1223337, 31
  %var_2_1241342 = xor i32 %var_2_1238340, %var_2_1240341
  %var_2_1242343 = add nuw nsw i32 %var_2_1241342, %var_2_1240341
  %var_2_1243344 = icmp eq i32 %var_2_1242343, 2
  %var_2_1245345 = icmp ne i32 %var_2_1238340, 0
  %var_2_1246346 = xor i1 %var_2_1245345, %var_2_1243344
  %.demorgan261347 = or i1 %var_2_1236339, %var_2_1246346
  br i1 %.demorgan261347, label %block_400b82.preheader, label %block_.L_400bf9

block_400b82.preheader:                           ; preds = %block_.L_400b5b
  br label %block_400b82

block_.L_400b78.loopexit.loopexit:                ; preds = %block_.L_400b89.loopexit
  br label %block_.L_400b78.loopexit

block_.L_400b78.loopexit:                         ; preds = %block_.L_400b78.loopexit.loopexit, %block_400b82
  %var_2_125231926 = phi i64 [ %var_2_1252319, %block_400b82 ], [ %var_2_125231927, %block_.L_400b78.loopexit.loopexit ]
  %var_2_1220 = add i64 %var_2_125231926, -4
  %var_2_1222 = inttoptr i64 %var_2_1220 to i32*
  %var_2_1223 = load i32, i32* %var_2_1222, align 4
  %var_2_1224 = add i32 %var_2_1223, -1
  %var_2_1236 = icmp eq i32 %var_2_1224, 0
  %var_2_1238 = lshr i32 %var_2_1224, 31
  %var_2_1240 = lshr i32 %var_2_1223, 31
  %var_2_1241 = xor i32 %var_2_1238, %var_2_1240
  %var_2_1242 = add nuw nsw i32 %var_2_1241, %var_2_1240
  %var_2_1243 = icmp eq i32 %var_2_1242, 2
  %var_2_1245 = icmp ne i32 %var_2_1238, 0
  %var_2_1246 = xor i1 %var_2_1245, %var_2_1243
  %.demorgan261 = or i1 %var_2_1236, %var_2_1246
  br i1 %.demorgan261, label %block_400b82, label %block_.L_400bf9.loopexit

block_400b82:                                     ; preds = %block_400b82.preheader, %block_.L_400b78.loopexit
  %var_2_1252319 = phi i64 [ %var_2_125231926, %block_.L_400b78.loopexit ], [ %var_2_1219334, %block_400b82.preheader ]
  %var_2_1253320 = add i64 %var_2_1252319, -8
  %var_2_1255321 = inttoptr i64 %var_2_1253320 to i32*
  %var_2_1256322 = load i32, i32* %var_2_1255321, align 4
  %var_2_1257323 = add i32 %var_2_1256322, -3
  %var_2_1269324 = icmp eq i32 %var_2_1257323, 0
  %var_2_1271325 = lshr i32 %var_2_1257323, 31
  %var_2_1273326 = lshr i32 %var_2_1256322, 31
  %var_2_1274327 = xor i32 %var_2_1271325, %var_2_1273326
  %var_2_1275328 = add nuw nsw i32 %var_2_1274327, %var_2_1273326
  %var_2_1276329 = icmp eq i32 %var_2_1275328, 2
  %var_2_1278330 = icmp ne i32 %var_2_1271325, 0
  %var_2_1279331 = xor i1 %var_2_1278330, %var_2_1276329
  %.demorgan262332 = or i1 %var_2_1269324, %var_2_1279331
  br i1 %.demorgan262332, label %block_400b93.preheader, label %block_.L_400b78.loopexit

block_400b93.preheader:                           ; preds = %block_400b82
  br label %block_400b93

block_.L_400b89.loopexit.loopexit:                ; preds = %block_400ba4
  br label %block_.L_400b89.loopexit

block_.L_400b89.loopexit:                         ; preds = %block_.L_400b89.loopexit.loopexit, %block_400b93
  %var_2_125231927 = phi i64 [ %var_2_1285313, %block_400b93 ], [ %var_2_1285, %block_.L_400b89.loopexit.loopexit ]
  %var_2_1253 = add i64 %var_2_125231927, -8
  %var_2_1255 = inttoptr i64 %var_2_1253 to i32*
  %var_2_1256 = load i32, i32* %var_2_1255, align 4
  %var_2_1257 = add i32 %var_2_1256, -3
  %var_2_1269 = icmp eq i32 %var_2_1257, 0
  %var_2_1271 = lshr i32 %var_2_1257, 31
  %var_2_1273 = lshr i32 %var_2_1256, 31
  %var_2_1274 = xor i32 %var_2_1271, %var_2_1273
  %var_2_1275 = add nuw nsw i32 %var_2_1274, %var_2_1273
  %var_2_1276 = icmp eq i32 %var_2_1275, 2
  %var_2_1278 = icmp ne i32 %var_2_1271, 0
  %var_2_1279 = xor i1 %var_2_1278, %var_2_1276
  %.demorgan262 = or i1 %var_2_1269, %var_2_1279
  br i1 %.demorgan262, label %block_400b93, label %block_.L_400b78.loopexit.loopexit

block_400b93:                                     ; preds = %block_400b93.preheader, %block_.L_400b89.loopexit
  %var_2_1285313 = phi i64 [ %var_2_125231927, %block_.L_400b89.loopexit ], [ %var_2_1252319, %block_400b93.preheader ]
  %var_2_1286314 = add i64 %var_2_1285313, -12
  %var_2_1288315 = inttoptr i64 %var_2_1286314 to i32*
  %var_2_1289316 = load i32, i32* %var_2_1288315, align 4
  %var_4_9 = icmp sgt i32 %var_2_1289316, 0
  br i1 %var_4_9, label %block_.L_400b89.loopexit, label %block_400ba4.preheader

block_400ba4.preheader:                           ; preds = %block_400b93
  br label %block_400ba4

block_400ba4:                                     ; preds = %block_400ba4.preheader, %block_400ba4
  %var_2_1314 = phi i32 [ %var_2_1289, %block_400ba4 ], [ %var_2_1289316, %block_400ba4.preheader ]
  %var_2_1285317 = phi i64 [ %var_2_1285, %block_400ba4 ], [ %var_2_1285313, %block_400ba4.preheader ]
  %var_2_1308 = add i64 %var_2_1285317, -8
  %var_2_1310 = inttoptr i64 %var_2_1308 to i32*
  %var_2_1311 = load i32, i32* %var_2_1310, align 4
  %var_2_1315 = shl i32 %var_2_1314, 3
  %var_2_1317 = add i32 %var_2_1311, %var_2_1315
  %var_2_1318 = shl i32 %var_2_1317, 3
  %var_2_1320 = load i64, i64* %RAX.i1121, align 8
  %var_2_1321 = trunc i64 %var_2_1320 to i32
  %var_2_1322 = add i32 %var_2_1318, %var_2_1321
  %var_2_1351 = sext i32 %var_2_1322 to i64
  %var_2_1352 = shl nsw i64 %var_2_1351, 2
  %var_2_1353 = add nsw i64 %var_2_1352, 6312608
  %var_2_1355 = inttoptr i64 %var_2_1353 to i32*
  store i32 1, i32* %var_2_1355, align 4
  %var_2_1358 = load i64, i64* %var_2_3, align 8
  %var_2_1359 = add i64 %var_2_1358, 3
  store i64 %var_2_1359, i64* %var_2_3, align 8
  %var_2_1285 = load i64, i64* %RBP.i, align 8
  %var_2_1286 = add i64 %var_2_1285, -12
  %var_2_1288 = inttoptr i64 %var_2_1286 to i32*
  %var_2_1289 = load i32, i32* %var_2_1288, align 4
  %var_4_10 = icmp sgt i32 %var_2_1289, 0
  br i1 %var_4_10, label %block_.L_400b89.loopexit.loopexit, label %block_400ba4

block_.L_400bf9.loopexit:                         ; preds = %block_.L_400b78.loopexit
  br label %block_.L_400bf9

block_.L_400bf9:                                  ; preds = %block_.L_400bf9.loopexit, %block_.L_400b5b
  %var_2_1450297 = phi i64 [ %var_2_1219334, %block_.L_400b5b ], [ %var_2_125231926, %block_.L_400bf9.loopexit ]
  store i32 0, i32* bitcast (%G_0x6191fc_type* @G_0x6191fc to i32*), align 8
  store i32 25, i32* bitcast (%G_0x61025c_type* @G_0x61025c to i32*), align 8
  %var_2_1451298 = add i64 %var_2_1450297, -4
  %var_2_1453299 = inttoptr i64 %var_2_1451298 to i32*
  %var_2_1454300 = load i32, i32* %var_2_1453299, align 4
  %var_2_1455301 = add i32 %var_2_1454300, -3
  %var_2_1467302 = icmp eq i32 %var_2_1455301, 0
  %var_2_1469303 = lshr i32 %var_2_1455301, 31
  %var_2_1471304 = lshr i32 %var_2_1454300, 31
  %var_2_1472305 = xor i32 %var_2_1469303, %var_2_1471304
  %var_2_1473306 = add nuw nsw i32 %var_2_1472305, %var_2_1471304
  %var_2_1474307 = icmp eq i32 %var_2_1473306, 2
  %var_2_1476308 = icmp ne i32 %var_2_1469303, 0
  %var_2_1477309 = xor i1 %var_2_1476308, %var_2_1474307
  %.demorgan265310 = or i1 %var_2_1467302, %var_2_1477309
  br i1 %.demorgan265310, label %block_400c20.preheader, label %block_.L_400c97

block_400c20.preheader:                           ; preds = %block_.L_400bf9
  br label %block_400c20

block_.L_400c16.loopexit.loopexit:                ; preds = %block_.L_400c27.loopexit
  br label %block_.L_400c16.loopexit

block_.L_400c16.loopexit:                         ; preds = %block_.L_400c16.loopexit.loopexit, %block_400c20
  %var_2_148329232 = phi i64 [ %var_2_1483292, %block_400c20 ], [ %var_2_148329233, %block_.L_400c16.loopexit.loopexit ]
  %var_2_1451 = add i64 %var_2_148329232, -4
  %var_2_1453 = inttoptr i64 %var_2_1451 to i32*
  %var_2_1454 = load i32, i32* %var_2_1453, align 4
  %var_2_1455 = add i32 %var_2_1454, -3
  %var_2_1467 = icmp eq i32 %var_2_1455, 0
  %var_2_1469 = lshr i32 %var_2_1455, 31
  %var_2_1471 = lshr i32 %var_2_1454, 31
  %var_2_1472 = xor i32 %var_2_1469, %var_2_1471
  %var_2_1473 = add nuw nsw i32 %var_2_1472, %var_2_1471
  %var_2_1474 = icmp eq i32 %var_2_1473, 2
  %var_2_1476 = icmp ne i32 %var_2_1469, 0
  %var_2_1477 = xor i1 %var_2_1476, %var_2_1474
  %.demorgan265 = or i1 %var_2_1467, %var_2_1477
  br i1 %.demorgan265, label %block_400c20, label %block_.L_400c97.loopexit

block_400c20:                                     ; preds = %block_400c20.preheader, %block_.L_400c16.loopexit
  %var_2_1483292 = phi i64 [ %var_2_148329232, %block_.L_400c16.loopexit ], [ %var_2_1450297, %block_400c20.preheader ]
  %var_2_1484293 = add i64 %var_2_1483292, -8
  %var_2_1486294 = inttoptr i64 %var_2_1484293 to i32*
  %var_2_1487295 = load i32, i32* %var_2_1486294, align 4
  %var_4_11 = icmp sgt i32 %var_2_1487295, 0
  br i1 %var_4_11, label %block_.L_400c16.loopexit, label %block_400c31.preheader

block_400c31.preheader:                           ; preds = %block_400c20
  br label %block_400c31

block_.L_400c27.loopexit.loopexit:                ; preds = %block_400c42
  br label %block_.L_400c27.loopexit

block_.L_400c27.loopexit:                         ; preds = %block_.L_400c27.loopexit.loopexit, %block_400c31
  %var_2_148329233 = phi i64 [ %var_2_1505276, %block_400c31 ], [ %var_2_1505, %block_.L_400c27.loopexit.loopexit ]
  %var_2_1484 = add i64 %var_2_148329233, -8
  %var_2_1486 = inttoptr i64 %var_2_1484 to i32*
  %var_2_1487 = load i32, i32* %var_2_1486, align 4
  %var_4_12 = icmp sgt i32 %var_2_1487, 0
  br i1 %var_4_12, label %block_.L_400c16.loopexit.loopexit, label %block_400c31

block_400c31:                                     ; preds = %block_400c31.preheader, %block_.L_400c27.loopexit
  %var_2_1505276 = phi i64 [ %var_2_148329233, %block_.L_400c27.loopexit ], [ %var_2_1483292, %block_400c31.preheader ]
  %var_2_1506277 = add i64 %var_2_1505276, -12
  %var_2_1508278 = inttoptr i64 %var_2_1506277 to i32*
  %var_2_1509279 = load i32, i32* %var_2_1508278, align 4
  %var_2_1510280 = add i32 %var_2_1509279, -1
  %var_2_1522281 = icmp eq i32 %var_2_1510280, 0
  %var_2_1524282 = lshr i32 %var_2_1510280, 31
  %var_2_1526283 = lshr i32 %var_2_1509279, 31
  %var_2_1527284 = xor i32 %var_2_1524282, %var_2_1526283
  %var_2_1528285 = add nuw nsw i32 %var_2_1527284, %var_2_1526283
  %var_2_1529286 = icmp eq i32 %var_2_1528285, 2
  %var_2_1531287 = icmp ne i32 %var_2_1524282, 0
  %var_2_1532288 = xor i1 %var_2_1531287, %var_2_1529286
  %.demorgan266289 = or i1 %var_2_1522281, %var_2_1532288
  br i1 %.demorgan266289, label %block_400c42.preheader, label %block_.L_400c27.loopexit

block_400c42.preheader:                           ; preds = %block_400c31
  br label %block_400c42

block_400c42:                                     ; preds = %block_400c42.preheader, %block_400c42
  %var_2_1509291 = phi i32 [ %var_2_1509, %block_400c42 ], [ %var_2_1509279, %block_400c42.preheader ]
  %var_2_1505290 = phi i64 [ %var_2_1505, %block_400c42 ], [ %var_2_1505276, %block_400c42.preheader ]
  %var_2_1539 = add i64 %var_2_1505290, -8
  %var_2_1541 = inttoptr i64 %var_2_1539 to i32*
  %var_2_1542 = load i32, i32* %var_2_1541, align 4
  %var_2_1546 = shl i32 %var_2_1509291, 3
  %var_2_1548 = add i32 %var_2_1542, %var_2_1546
  %var_2_1549 = shl i32 %var_2_1548, 3
  %var_2_1551 = load i64, i64* %RAX.i1121, align 8
  %var_2_1552 = trunc i64 %var_2_1551 to i32
  %var_2_1553 = add i32 %var_2_1549, %var_2_1552
  %var_2_1582 = sext i32 %var_2_1553 to i64
  %var_2_1583 = shl nsw i64 %var_2_1582, 2
  %var_2_1584 = add nsw i64 %var_2_1583, 6314656
  %var_2_1586 = inttoptr i64 %var_2_1584 to i32*
  store i32 1, i32* %var_2_1586, align 4
  %var_2_1589 = load i64, i64* %var_2_3, align 8
  %var_2_1590 = add i64 %var_2_1589, 3
  store i64 %var_2_1590, i64* %var_2_3, align 8
  %var_2_1505 = load i64, i64* %RBP.i, align 8
  %var_2_1506 = add i64 %var_2_1505, -12
  %var_2_1508 = inttoptr i64 %var_2_1506 to i32*
  %var_2_1509 = load i32, i32* %var_2_1508, align 4
  %var_2_1510 = add i32 %var_2_1509, -1
  %var_2_1522 = icmp eq i32 %var_2_1510, 0
  %var_2_1524 = lshr i32 %var_2_1510, 31
  %var_2_1526 = lshr i32 %var_2_1509, 31
  %var_2_1527 = xor i32 %var_2_1524, %var_2_1526
  %var_2_1528 = add nuw nsw i32 %var_2_1527, %var_2_1526
  %var_2_1529 = icmp eq i32 %var_2_1528, 2
  %var_2_1531 = icmp ne i32 %var_2_1524, 0
  %var_2_1532 = xor i1 %var_2_1531, %var_2_1529
  %.demorgan266 = or i1 %var_2_1522, %var_2_1532
  br i1 %.demorgan266, label %block_400c42, label %block_.L_400c27.loopexit.loopexit

block_.L_400c97.loopexit:                         ; preds = %block_.L_400c16.loopexit
  br label %block_.L_400c97

block_.L_400c97:                                  ; preds = %block_.L_400c97.loopexit, %block_.L_400bf9
  %var_2_1681270 = phi i64 [ %var_2_1450297, %block_.L_400bf9 ], [ %var_2_148329232, %block_.L_400c97.loopexit ]
  store i32 0, i32* bitcast (%G_0x619200_type* @G_0x619200 to i32*), align 8
  store i32 67, i32* bitcast (%G_0x610260_type* @G_0x610260 to i32*), align 8
  %var_2_1682271 = add i64 %var_2_1681270, -4
  %var_2_1684272 = inttoptr i64 %var_2_1682271 to i32*
  %var_2_1685273 = load i32, i32* %var_2_1684272, align 4
  %var_4_13 = icmp sgt i32 %var_2_1685273, 0
  br i1 %var_4_13, label %block_.L_400d35, label %block_400cbe.preheader

block_400cbe.preheader:                           ; preds = %block_.L_400c97
  br label %block_400cbe

block_.L_400cb4.loopexit.loopexit:                ; preds = %block_.L_400cc5.loopexit
  br label %block_.L_400cb4.loopexit

block_.L_400cb4.loopexit:                         ; preds = %block_.L_400cb4.loopexit.loopexit, %block_400cbe
  %var_2_170325537 = phi i64 [ %var_2_1703255, %block_400cbe ], [ %var_2_170325538, %block_.L_400cb4.loopexit.loopexit ]
  %var_2_1682 = add i64 %var_2_170325537, -4
  %var_2_1684 = inttoptr i64 %var_2_1682 to i32*
  %var_2_1685 = load i32, i32* %var_2_1684, align 4
  %var_4_14 = icmp sgt i32 %var_2_1685, 0
  br i1 %var_4_14, label %block_.L_400d35.loopexit, label %block_400cbe

block_400cbe:                                     ; preds = %block_400cbe.preheader, %block_.L_400cb4.loopexit
  %var_2_1703255 = phi i64 [ %var_2_170325537, %block_.L_400cb4.loopexit ], [ %var_2_1681270, %block_400cbe.preheader ]
  %var_2_1704256 = add i64 %var_2_1703255, -8
  %var_2_1706257 = inttoptr i64 %var_2_1704256 to i32*
  %var_2_1707258 = load i32, i32* %var_2_1706257, align 4
  %var_2_1708259 = add i32 %var_2_1707258, -1
  %var_2_1720260 = icmp eq i32 %var_2_1708259, 0
  %var_2_1722261 = lshr i32 %var_2_1708259, 31
  %var_2_1724262 = lshr i32 %var_2_1707258, 31
  %var_2_1725263 = xor i32 %var_2_1722261, %var_2_1724262
  %var_2_1726264 = add nuw nsw i32 %var_2_1725263, %var_2_1724262
  %var_2_1727265 = icmp eq i32 %var_2_1726264, 2
  %var_2_1729266 = icmp ne i32 %var_2_1722261, 0
  %var_2_1730267 = xor i1 %var_2_1729266, %var_2_1727265
  %.demorgan269268 = or i1 %var_2_1720260, %var_2_1730267
  br i1 %.demorgan269268, label %block_400ccf.preheader, label %block_.L_400cb4.loopexit

block_400ccf.preheader:                           ; preds = %block_400cbe
  br label %block_400ccf

block_.L_400cc5.loopexit.loopexit:                ; preds = %block_400ce0
  br label %block_.L_400cc5.loopexit

block_.L_400cc5.loopexit:                         ; preds = %block_.L_400cc5.loopexit.loopexit, %block_400ccf
  %var_2_170325538 = phi i64 [ %var_2_1736239, %block_400ccf ], [ %var_2_1736, %block_.L_400cc5.loopexit.loopexit ]
  %var_2_1704 = add i64 %var_2_170325538, -8
  %var_2_1706 = inttoptr i64 %var_2_1704 to i32*
  %var_2_1707 = load i32, i32* %var_2_1706, align 4
  %var_2_1708 = add i32 %var_2_1707, -1
  %var_2_1720 = icmp eq i32 %var_2_1708, 0
  %var_2_1722 = lshr i32 %var_2_1708, 31
  %var_2_1724 = lshr i32 %var_2_1707, 31
  %var_2_1725 = xor i32 %var_2_1722, %var_2_1724
  %var_2_1726 = add nuw nsw i32 %var_2_1725, %var_2_1724
  %var_2_1727 = icmp eq i32 %var_2_1726, 2
  %var_2_1729 = icmp ne i32 %var_2_1722, 0
  %var_2_1730 = xor i1 %var_2_1729, %var_2_1727
  %.demorgan269 = or i1 %var_2_1720, %var_2_1730
  br i1 %.demorgan269, label %block_400ccf, label %block_.L_400cb4.loopexit.loopexit

block_400ccf:                                     ; preds = %block_400ccf.preheader, %block_.L_400cc5.loopexit
  %var_2_1736239 = phi i64 [ %var_2_170325538, %block_.L_400cc5.loopexit ], [ %var_2_1703255, %block_400ccf.preheader ]
  %var_2_1737240 = add i64 %var_2_1736239, -12
  %var_2_1739241 = inttoptr i64 %var_2_1737240 to i32*
  %var_2_1740242 = load i32, i32* %var_2_1739241, align 4
  %var_2_1741243 = add i32 %var_2_1740242, -3
  %var_2_1753244 = icmp eq i32 %var_2_1741243, 0
  %var_2_1755245 = lshr i32 %var_2_1741243, 31
  %var_2_1757246 = lshr i32 %var_2_1740242, 31
  %var_2_1758247 = xor i32 %var_2_1755245, %var_2_1757246
  %var_2_1759248 = add nuw nsw i32 %var_2_1758247, %var_2_1757246
  %var_2_1760249 = icmp eq i32 %var_2_1759248, 2
  %var_2_1762250 = icmp ne i32 %var_2_1755245, 0
  %var_2_1763251 = xor i1 %var_2_1762250, %var_2_1760249
  %.demorgan270252 = or i1 %var_2_1753244, %var_2_1763251
  br i1 %.demorgan270252, label %block_400ce0.preheader, label %block_.L_400cc5.loopexit

block_400ce0.preheader:                           ; preds = %block_400ccf
  br label %block_400ce0

block_400ce0:                                     ; preds = %block_400ce0.preheader, %block_400ce0
  %var_2_1740254 = phi i32 [ %var_2_1740, %block_400ce0 ], [ %var_2_1740242, %block_400ce0.preheader ]
  %var_2_1736253 = phi i64 [ %var_2_1736, %block_400ce0 ], [ %var_2_1736239, %block_400ce0.preheader ]
  %var_2_1770 = add i64 %var_2_1736253, -8
  %var_2_1772 = inttoptr i64 %var_2_1770 to i32*
  %var_2_1773 = load i32, i32* %var_2_1772, align 4
  %var_2_1777 = shl i32 %var_2_1740254, 3
  %var_2_1779 = add i32 %var_2_1773, %var_2_1777
  %var_2_1780 = shl i32 %var_2_1779, 3
  %var_2_1782 = load i64, i64* %RAX.i1121, align 8
  %var_2_1783 = trunc i64 %var_2_1782 to i32
  %var_2_1784 = add i32 %var_2_1780, %var_2_1783
  %var_2_1813 = sext i32 %var_2_1784 to i64
  %var_2_1814 = shl nsw i64 %var_2_1813, 2
  %var_2_1815 = add nsw i64 %var_2_1814, 6316704
  %var_2_1817 = inttoptr i64 %var_2_1815 to i32*
  store i32 1, i32* %var_2_1817, align 4
  %var_2_1820 = load i64, i64* %var_2_3, align 8
  %var_2_1821 = add i64 %var_2_1820, 3
  store i64 %var_2_1821, i64* %var_2_3, align 8
  %var_2_1736 = load i64, i64* %RBP.i, align 8
  %var_2_1737 = add i64 %var_2_1736, -12
  %var_2_1739 = inttoptr i64 %var_2_1737 to i32*
  %var_2_1740 = load i32, i32* %var_2_1739, align 4
  %var_2_1741 = add i32 %var_2_1740, -3
  %var_2_1753 = icmp eq i32 %var_2_1741, 0
  %var_2_1755 = lshr i32 %var_2_1741, 31
  %var_2_1757 = lshr i32 %var_2_1740, 31
  %var_2_1758 = xor i32 %var_2_1755, %var_2_1757
  %var_2_1759 = add nuw nsw i32 %var_2_1758, %var_2_1757
  %var_2_1760 = icmp eq i32 %var_2_1759, 2
  %var_2_1762 = icmp ne i32 %var_2_1755, 0
  %var_2_1763 = xor i1 %var_2_1762, %var_2_1760
  %.demorgan270 = or i1 %var_2_1753, %var_2_1763
  br i1 %.demorgan270, label %block_400ce0, label %block_.L_400cc5.loopexit.loopexit

block_.L_400d35.loopexit:                         ; preds = %block_.L_400cb4.loopexit
  br label %block_.L_400d35

block_.L_400d35:                                  ; preds = %block_.L_400d35.loopexit, %block_.L_400c97
  %var_2_1912223 = phi i64 [ %var_2_1681270, %block_.L_400c97 ], [ %var_2_170325537, %block_.L_400d35.loopexit ]
  store i32 0, i32* bitcast (%G_0x619204_type* @G_0x619204 to i32*), align 8
  store i32 200, i32* bitcast (%G_0x610264_type* @G_0x610264 to i32*), align 8
  %var_2_1913224 = add i64 %var_2_1912223, -4
  %var_2_1915225 = inttoptr i64 %var_2_1913224 to i32*
  %var_2_1916226 = load i32, i32* %var_2_1915225, align 4
  %var_2_1917227 = add i32 %var_2_1916226, -2
  %var_2_1929228 = icmp eq i32 %var_2_1917227, 0
  %var_2_1931229 = lshr i32 %var_2_1917227, 31
  %var_2_1933230 = lshr i32 %var_2_1916226, 31
  %var_2_1934231 = xor i32 %var_2_1931229, %var_2_1933230
  %var_2_1935232 = add nuw nsw i32 %var_2_1934231, %var_2_1933230
  %var_2_1936233 = icmp eq i32 %var_2_1935232, 2
  %var_2_1938234 = icmp ne i32 %var_2_1931229, 0
  %var_2_1939235 = xor i1 %var_2_1938234, %var_2_1936233
  %.demorgan273236 = or i1 %var_2_1929228, %var_2_1939235
  br i1 %.demorgan273236, label %block_400d5c.preheader, label %block_.L_400dd3

block_400d5c.preheader:                           ; preds = %block_.L_400d35
  br label %block_400d5c

block_.L_400d52.loopexit.loopexit:                ; preds = %block_.L_400d63.loopexit
  br label %block_.L_400d52.loopexit

block_.L_400d52.loopexit:                         ; preds = %block_.L_400d52.loopexit.loopexit, %block_400d5c
  %var_2_194521842 = phi i64 [ %var_2_1945218, %block_400d5c ], [ %var_2_194521843, %block_.L_400d52.loopexit.loopexit ]
  %var_2_1913 = add i64 %var_2_194521842, -4
  %var_2_1915 = inttoptr i64 %var_2_1913 to i32*
  %var_2_1916 = load i32, i32* %var_2_1915, align 4
  %var_2_1917 = add i32 %var_2_1916, -2
  %var_2_1929 = icmp eq i32 %var_2_1917, 0
  %var_2_1931 = lshr i32 %var_2_1917, 31
  %var_2_1933 = lshr i32 %var_2_1916, 31
  %var_2_1934 = xor i32 %var_2_1931, %var_2_1933
  %var_2_1935 = add nuw nsw i32 %var_2_1934, %var_2_1933
  %var_2_1936 = icmp eq i32 %var_2_1935, 2
  %var_2_1938 = icmp ne i32 %var_2_1931, 0
  %var_2_1939 = xor i1 %var_2_1938, %var_2_1936
  %.demorgan273 = or i1 %var_2_1929, %var_2_1939
  br i1 %.demorgan273, label %block_400d5c, label %block_.L_400dd3.loopexit

block_400d5c:                                     ; preds = %block_400d5c.preheader, %block_.L_400d52.loopexit
  %var_2_1945218 = phi i64 [ %var_2_194521842, %block_.L_400d52.loopexit ], [ %var_2_1912223, %block_400d5c.preheader ]
  %var_2_1946219 = add i64 %var_2_1945218, -8
  %var_2_1948220 = inttoptr i64 %var_2_1946219 to i32*
  %var_2_1949221 = load i32, i32* %var_2_1948220, align 4
  %var_4_15 = icmp sgt i32 %var_2_1949221, 0
  br i1 %var_4_15, label %block_.L_400d52.loopexit, label %block_400d6d.preheader

block_400d6d.preheader:                           ; preds = %block_400d5c
  br label %block_400d6d

block_.L_400d63.loopexit.loopexit:                ; preds = %block_400d7e
  br label %block_.L_400d63.loopexit

block_.L_400d63.loopexit:                         ; preds = %block_.L_400d63.loopexit.loopexit, %block_400d6d
  %var_2_194521843 = phi i64 [ %var_2_1967212, %block_400d6d ], [ %var_2_1967, %block_.L_400d63.loopexit.loopexit ]
  %var_2_1946 = add i64 %var_2_194521843, -8
  %var_2_1948 = inttoptr i64 %var_2_1946 to i32*
  %var_2_1949 = load i32, i32* %var_2_1948, align 4
  %var_4_16 = icmp sgt i32 %var_2_1949, 0
  br i1 %var_4_16, label %block_.L_400d52.loopexit.loopexit, label %block_400d6d

block_400d6d:                                     ; preds = %block_400d6d.preheader, %block_.L_400d63.loopexit
  %var_2_1967212 = phi i64 [ %var_2_194521843, %block_.L_400d63.loopexit ], [ %var_2_1945218, %block_400d6d.preheader ]
  %var_2_1968213 = add i64 %var_2_1967212, -12
  %var_2_1970214 = inttoptr i64 %var_2_1968213 to i32*
  %var_2_1971215 = load i32, i32* %var_2_1970214, align 4
  %var_4_17 = icmp sgt i32 %var_2_1971215, 0
  br i1 %var_4_17, label %block_.L_400d63.loopexit, label %block_400d7e.preheader

block_400d7e.preheader:                           ; preds = %block_400d6d
  br label %block_400d7e

block_400d7e:                                     ; preds = %block_400d7e.preheader, %block_400d7e
  %var_2_1996 = phi i32 [ %var_2_1971, %block_400d7e ], [ %var_2_1971215, %block_400d7e.preheader ]
  %var_2_1967216 = phi i64 [ %var_2_1967, %block_400d7e ], [ %var_2_1967212, %block_400d7e.preheader ]
  %var_2_1990 = add i64 %var_2_1967216, -8
  %var_2_1992 = inttoptr i64 %var_2_1990 to i32*
  %var_2_1993 = load i32, i32* %var_2_1992, align 4
  %var_2_1997 = shl i32 %var_2_1996, 3
  %var_2_1999 = add i32 %var_2_1993, %var_2_1997
  %var_2_2000 = shl i32 %var_2_1999, 3
  %var_2_2002 = load i64, i64* %RAX.i1121, align 8
  %var_2_2003 = trunc i64 %var_2_2002 to i32
  %var_2_2004 = add i32 %var_2_2000, %var_2_2003
  %var_2_2033 = sext i32 %var_2_2004 to i64
  %var_2_2034 = shl nsw i64 %var_2_2033, 2
  %var_2_2035 = add nsw i64 %var_2_2034, 6318752
  %var_2_2037 = inttoptr i64 %var_2_2035 to i32*
  store i32 1, i32* %var_2_2037, align 4
  %var_2_2040 = load i64, i64* %var_2_3, align 8
  %var_2_2041 = add i64 %var_2_2040, 3
  store i64 %var_2_2041, i64* %var_2_3, align 8
  %var_2_1967 = load i64, i64* %RBP.i, align 8
  %var_2_1968 = add i64 %var_2_1967, -12
  %var_2_1970 = inttoptr i64 %var_2_1968 to i32*
  %var_2_1971 = load i32, i32* %var_2_1970, align 4
  %var_4_18 = icmp sgt i32 %var_2_1971, 0
  br i1 %var_4_18, label %block_.L_400d63.loopexit.loopexit, label %block_400d7e

block_.L_400dd3.loopexit:                         ; preds = %block_.L_400d52.loopexit
  br label %block_.L_400dd3

block_.L_400dd3:                                  ; preds = %block_.L_400dd3.loopexit, %block_.L_400d35
  %var_2_2132206 = phi i64 [ %var_2_1912223, %block_.L_400d35 ], [ %var_2_194521842, %block_.L_400dd3.loopexit ]
  store i32 1, i32* bitcast (%G_0x619208_type* @G_0x619208 to i32*), align 8
  store i32 2, i32* bitcast (%G_0x610268_type* @G_0x610268 to i32*), align 8
  %var_2_2133207 = add i64 %var_2_2132206, -4
  %var_2_2135208 = inttoptr i64 %var_2_2133207 to i32*
  %var_2_2136209 = load i32, i32* %var_2_2135208, align 4
  %var_4_19 = icmp sgt i32 %var_2_2136209, 0
  br i1 %var_4_19, label %block_.L_400e71, label %block_400dfa.preheader

block_400dfa.preheader:                           ; preds = %block_.L_400dd3
  br label %block_400dfa

block_.L_400df0.loopexit.loopexit:                ; preds = %block_.L_400e01.loopexit
  br label %block_.L_400df0.loopexit

block_.L_400df0.loopexit:                         ; preds = %block_.L_400df0.loopexit.loopexit, %block_400dfa
  %var_2_215419148 = phi i64 [ %var_2_2154191, %block_400dfa ], [ %var_2_215419149, %block_.L_400df0.loopexit.loopexit ]
  %var_2_2133 = add i64 %var_2_215419148, -4
  %var_2_2135 = inttoptr i64 %var_2_2133 to i32*
  %var_2_2136 = load i32, i32* %var_2_2135, align 4
  %var_4_20 = icmp sgt i32 %var_2_2136, 0
  br i1 %var_4_20, label %block_.L_400e71.loopexit, label %block_400dfa

block_400dfa:                                     ; preds = %block_400dfa.preheader, %block_.L_400df0.loopexit
  %var_2_2154191 = phi i64 [ %var_2_215419148, %block_.L_400df0.loopexit ], [ %var_2_2132206, %block_400dfa.preheader ]
  %var_2_2155192 = add i64 %var_2_2154191, -8
  %var_2_2157193 = inttoptr i64 %var_2_2155192 to i32*
  %var_2_2158194 = load i32, i32* %var_2_2157193, align 4
  %var_2_2159195 = add i32 %var_2_2158194, -2
  %var_2_2171196 = icmp eq i32 %var_2_2159195, 0
  %var_2_2173197 = lshr i32 %var_2_2159195, 31
  %var_2_2175198 = lshr i32 %var_2_2158194, 31
  %var_2_2176199 = xor i32 %var_2_2173197, %var_2_2175198
  %var_2_2177200 = add nuw nsw i32 %var_2_2176199, %var_2_2175198
  %var_2_2178201 = icmp eq i32 %var_2_2177200, 2
  %var_2_2180202 = icmp ne i32 %var_2_2173197, 0
  %var_2_2181203 = xor i1 %var_2_2180202, %var_2_2178201
  %.demorgan276204 = or i1 %var_2_2171196, %var_2_2181203
  br i1 %.demorgan276204, label %block_400e0b.preheader, label %block_.L_400df0.loopexit

block_400e0b.preheader:                           ; preds = %block_400dfa
  br label %block_400e0b

block_.L_400e01.loopexit.loopexit:                ; preds = %block_400e1c
  br label %block_.L_400e01.loopexit

block_.L_400e01.loopexit:                         ; preds = %block_.L_400e01.loopexit.loopexit, %block_400e0b
  %var_2_215419149 = phi i64 [ %var_2_2187185, %block_400e0b ], [ %var_2_2187, %block_.L_400e01.loopexit.loopexit ]
  %var_2_2155 = add i64 %var_2_215419149, -8
  %var_2_2157 = inttoptr i64 %var_2_2155 to i32*
  %var_2_2158 = load i32, i32* %var_2_2157, align 4
  %var_2_2159 = add i32 %var_2_2158, -2
  %var_2_2171 = icmp eq i32 %var_2_2159, 0
  %var_2_2173 = lshr i32 %var_2_2159, 31
  %var_2_2175 = lshr i32 %var_2_2158, 31
  %var_2_2176 = xor i32 %var_2_2173, %var_2_2175
  %var_2_2177 = add nuw nsw i32 %var_2_2176, %var_2_2175
  %var_2_2178 = icmp eq i32 %var_2_2177, 2
  %var_2_2180 = icmp ne i32 %var_2_2173, 0
  %var_2_2181 = xor i1 %var_2_2180, %var_2_2178
  %.demorgan276 = or i1 %var_2_2171, %var_2_2181
  br i1 %.demorgan276, label %block_400e0b, label %block_.L_400df0.loopexit.loopexit

block_400e0b:                                     ; preds = %block_400e0b.preheader, %block_.L_400e01.loopexit
  %var_2_2187185 = phi i64 [ %var_2_215419149, %block_.L_400e01.loopexit ], [ %var_2_2154191, %block_400e0b.preheader ]
  %var_2_2188186 = add i64 %var_2_2187185, -12
  %var_2_2190187 = inttoptr i64 %var_2_2188186 to i32*
  %var_2_2191188 = load i32, i32* %var_2_2190187, align 4
  %var_4_21 = icmp sgt i32 %var_2_2191188, 0
  br i1 %var_4_21, label %block_.L_400e01.loopexit, label %block_400e1c.preheader

block_400e1c.preheader:                           ; preds = %block_400e0b
  br label %block_400e1c

block_400e1c:                                     ; preds = %block_400e1c.preheader, %block_400e1c
  %var_2_2216 = phi i32 [ %var_2_2191, %block_400e1c ], [ %var_2_2191188, %block_400e1c.preheader ]
  %var_2_2187189 = phi i64 [ %var_2_2187, %block_400e1c ], [ %var_2_2187185, %block_400e1c.preheader ]
  %var_2_2210 = add i64 %var_2_2187189, -8
  %var_2_2212 = inttoptr i64 %var_2_2210 to i32*
  %var_2_2213 = load i32, i32* %var_2_2212, align 4
  %var_2_2217 = shl i32 %var_2_2216, 3
  %var_2_2219 = add i32 %var_2_2213, %var_2_2217
  %var_2_2220 = shl i32 %var_2_2219, 3
  %var_2_2222 = load i64, i64* %RAX.i1121, align 8
  %var_2_2223 = trunc i64 %var_2_2222 to i32
  %var_2_2224 = add i32 %var_2_2220, %var_2_2223
  %var_2_2253 = sext i32 %var_2_2224 to i64
  %var_2_2254 = shl nsw i64 %var_2_2253, 2
  %var_2_2255 = add nsw i64 %var_2_2254, 6320800
  %var_2_2257 = inttoptr i64 %var_2_2255 to i32*
  store i32 1, i32* %var_2_2257, align 4
  %var_2_2260 = load i64, i64* %var_2_3, align 8
  %var_2_2261 = add i64 %var_2_2260, 3
  store i64 %var_2_2261, i64* %var_2_3, align 8
  %var_2_2187 = load i64, i64* %RBP.i, align 8
  %var_2_2188 = add i64 %var_2_2187, -12
  %var_2_2190 = inttoptr i64 %var_2_2188 to i32*
  %var_2_2191 = load i32, i32* %var_2_2190, align 4
  %var_4_22 = icmp sgt i32 %var_2_2191, 0
  br i1 %var_4_22, label %block_.L_400e01.loopexit.loopexit, label %block_400e1c

block_.L_400e71.loopexit:                         ; preds = %block_.L_400df0.loopexit
  br label %block_.L_400e71

block_.L_400e71:                                  ; preds = %block_.L_400e71.loopexit, %block_.L_400dd3
  %var_2_2352179 = phi i64 [ %var_2_2132206, %block_.L_400dd3 ], [ %var_2_215419148, %block_.L_400e71.loopexit ]
  store i32 1, i32* bitcast (%G_0x61920c_type* @G_0x61920c to i32*), align 8
  store i32 16, i32* bitcast (%G_0x61026c_type* @G_0x61026c to i32*), align 8
  %var_2_2353180 = add i64 %var_2_2352179, -4
  %var_2_2355181 = inttoptr i64 %var_2_2353180 to i32*
  %var_2_2356182 = load i32, i32* %var_2_2355181, align 4
  %var_4_23 = icmp sgt i32 %var_2_2356182, 0
  br i1 %var_4_23, label %block_.L_400f0f, label %block_400e98.preheader

block_400e98.preheader:                           ; preds = %block_.L_400e71
  br label %block_400e98

block_.L_400e8e.loopexit.loopexit:                ; preds = %block_.L_400e9f.loopexit
  br label %block_.L_400e8e.loopexit

block_.L_400e8e.loopexit:                         ; preds = %block_.L_400e8e.loopexit.loopexit, %block_400e98
  %var_2_237417454 = phi i64 [ %var_2_2374174, %block_400e98 ], [ %var_2_237417455, %block_.L_400e8e.loopexit.loopexit ]
  %var_2_2353 = add i64 %var_2_237417454, -4
  %var_2_2355 = inttoptr i64 %var_2_2353 to i32*
  %var_2_2356 = load i32, i32* %var_2_2355, align 4
  %var_4_24 = icmp sgt i32 %var_2_2356, 0
  br i1 %var_4_24, label %block_.L_400f0f.loopexit, label %block_400e98

block_400e98:                                     ; preds = %block_400e98.preheader, %block_.L_400e8e.loopexit
  %var_2_2374174 = phi i64 [ %var_2_237417454, %block_.L_400e8e.loopexit ], [ %var_2_2352179, %block_400e98.preheader ]
  %var_2_2375175 = add i64 %var_2_2374174, -8
  %var_2_2377176 = inttoptr i64 %var_2_2375175 to i32*
  %var_2_2378177 = load i32, i32* %var_2_2377176, align 4
  %var_4_25 = icmp sgt i32 %var_2_2378177, 0
  br i1 %var_4_25, label %block_.L_400e8e.loopexit, label %block_400ea9.preheader

block_400ea9.preheader:                           ; preds = %block_400e98
  br label %block_400ea9

block_.L_400e9f.loopexit.loopexit:                ; preds = %block_400eba
  br label %block_.L_400e9f.loopexit

block_.L_400e9f.loopexit:                         ; preds = %block_.L_400e9f.loopexit.loopexit, %block_400ea9
  %var_2_237417455 = phi i64 [ %var_2_2396158, %block_400ea9 ], [ %var_2_2396, %block_.L_400e9f.loopexit.loopexit ]
  %var_2_2375 = add i64 %var_2_237417455, -8
  %var_2_2377 = inttoptr i64 %var_2_2375 to i32*
  %var_2_2378 = load i32, i32* %var_2_2377, align 4
  %var_4_26 = icmp sgt i32 %var_2_2378, 0
  br i1 %var_4_26, label %block_.L_400e8e.loopexit.loopexit, label %block_400ea9

block_400ea9:                                     ; preds = %block_400ea9.preheader, %block_.L_400e9f.loopexit
  %var_2_2396158 = phi i64 [ %var_2_237417455, %block_.L_400e9f.loopexit ], [ %var_2_2374174, %block_400ea9.preheader ]
  %var_2_2397159 = add i64 %var_2_2396158, -12
  %var_2_2399160 = inttoptr i64 %var_2_2397159 to i32*
  %var_2_2400161 = load i32, i32* %var_2_2399160, align 4
  %var_2_2401162 = add i32 %var_2_2400161, -2
  %var_2_2413163 = icmp eq i32 %var_2_2401162, 0
  %var_2_2415164 = lshr i32 %var_2_2401162, 31
  %var_2_2417165 = lshr i32 %var_2_2400161, 31
  %var_2_2418166 = xor i32 %var_2_2415164, %var_2_2417165
  %var_2_2419167 = add nuw nsw i32 %var_2_2418166, %var_2_2417165
  %var_2_2420168 = icmp eq i32 %var_2_2419167, 2
  %var_2_2422169 = icmp ne i32 %var_2_2415164, 0
  %var_2_2423170 = xor i1 %var_2_2422169, %var_2_2420168
  %.demorgan279171 = or i1 %var_2_2413163, %var_2_2423170
  br i1 %.demorgan279171, label %block_400eba.preheader, label %block_.L_400e9f.loopexit

block_400eba.preheader:                           ; preds = %block_400ea9
  br label %block_400eba

block_400eba:                                     ; preds = %block_400eba.preheader, %block_400eba
  %var_2_2400173 = phi i32 [ %var_2_2400, %block_400eba ], [ %var_2_2400161, %block_400eba.preheader ]
  %var_2_2396172 = phi i64 [ %var_2_2396, %block_400eba ], [ %var_2_2396158, %block_400eba.preheader ]
  %var_2_2430 = add i64 %var_2_2396172, -8
  %var_2_2432 = inttoptr i64 %var_2_2430 to i32*
  %var_2_2433 = load i32, i32* %var_2_2432, align 4
  %var_2_2437 = shl i32 %var_2_2400173, 3
  %var_2_2439 = add i32 %var_2_2433, %var_2_2437
  %var_2_2440 = shl i32 %var_2_2439, 3
  %var_2_2442 = load i64, i64* %RAX.i1121, align 8
  %var_2_2443 = trunc i64 %var_2_2442 to i32
  %var_2_2444 = add i32 %var_2_2440, %var_2_2443
  %var_2_2473 = sext i32 %var_2_2444 to i64
  %var_2_2474 = shl nsw i64 %var_2_2473, 2
  %var_2_2475 = add nsw i64 %var_2_2474, 6322848
  %var_2_2477 = inttoptr i64 %var_2_2475 to i32*
  store i32 1, i32* %var_2_2477, align 4
  %var_2_2480 = load i64, i64* %var_2_3, align 8
  %var_2_2481 = add i64 %var_2_2480, 3
  store i64 %var_2_2481, i64* %var_2_3, align 8
  %var_2_2396 = load i64, i64* %RBP.i, align 8
  %var_2_2397 = add i64 %var_2_2396, -12
  %var_2_2399 = inttoptr i64 %var_2_2397 to i32*
  %var_2_2400 = load i32, i32* %var_2_2399, align 4
  %var_2_2401 = add i32 %var_2_2400, -2
  %var_2_2413 = icmp eq i32 %var_2_2401, 0
  %var_2_2415 = lshr i32 %var_2_2401, 31
  %var_2_2417 = lshr i32 %var_2_2400, 31
  %var_2_2418 = xor i32 %var_2_2415, %var_2_2417
  %var_2_2419 = add nuw nsw i32 %var_2_2418, %var_2_2417
  %var_2_2420 = icmp eq i32 %var_2_2419, 2
  %var_2_2422 = icmp ne i32 %var_2_2415, 0
  %var_2_2423 = xor i1 %var_2_2422, %var_2_2420
  %.demorgan279 = or i1 %var_2_2413, %var_2_2423
  br i1 %.demorgan279, label %block_400eba, label %block_.L_400e9f.loopexit.loopexit

block_.L_400f0f.loopexit:                         ; preds = %block_.L_400e8e.loopexit
  br label %block_.L_400f0f

block_.L_400f0f:                                  ; preds = %block_.L_400f0f.loopexit, %block_.L_400e71
  %var_2_2572142 = phi i64 [ %var_2_2352179, %block_.L_400e71 ], [ %var_2_237417454, %block_.L_400f0f.loopexit ]
  store i32 1, i32* bitcast (%G_0x619210_type* @G_0x619210 to i32*), align 8
  store i32 128, i32* bitcast (%G_0x610270_type* @G_0x610270 to i32*), align 8
  %var_2_2573143 = add i64 %var_2_2572142, -4
  %var_2_2575144 = inttoptr i64 %var_2_2573143 to i32*
  %var_2_2576145 = load i32, i32* %var_2_2575144, align 4
  %var_2_2577146 = add i32 %var_2_2576145, -1
  %var_2_2589147 = icmp eq i32 %var_2_2577146, 0
  %var_2_2591148 = lshr i32 %var_2_2577146, 31
  %var_2_2593149 = lshr i32 %var_2_2576145, 31
  %var_2_2594150 = xor i32 %var_2_2591148, %var_2_2593149
  %var_2_2595151 = add nuw nsw i32 %var_2_2594150, %var_2_2593149
  %var_2_2596152 = icmp eq i32 %var_2_2595151, 2
  %var_2_2598153 = icmp ne i32 %var_2_2591148, 0
  %var_2_2599154 = xor i1 %var_2_2598153, %var_2_2596152
  %.demorgan282155 = or i1 %var_2_2589147, %var_2_2599154
  br i1 %.demorgan282155, label %block_400f36.preheader, label %block_.L_400fad

block_400f36.preheader:                           ; preds = %block_.L_400f0f
  br label %block_400f36

block_.L_400f2c.loopexit.loopexit:                ; preds = %block_.L_400f3d.loopexit
  br label %block_.L_400f2c.loopexit

block_.L_400f2c.loopexit:                         ; preds = %block_.L_400f2c.loopexit.loopexit, %block_400f36
  %var_2_260512759 = phi i64 [ %var_2_2605127, %block_400f36 ], [ %var_2_260512760, %block_.L_400f2c.loopexit.loopexit ]
  %var_2_2573 = add i64 %var_2_260512759, -4
  %var_2_2575 = inttoptr i64 %var_2_2573 to i32*
  %var_2_2576 = load i32, i32* %var_2_2575, align 4
  %var_2_2577 = add i32 %var_2_2576, -1
  %var_2_2589 = icmp eq i32 %var_2_2577, 0
  %var_2_2591 = lshr i32 %var_2_2577, 31
  %var_2_2593 = lshr i32 %var_2_2576, 31
  %var_2_2594 = xor i32 %var_2_2591, %var_2_2593
  %var_2_2595 = add nuw nsw i32 %var_2_2594, %var_2_2593
  %var_2_2596 = icmp eq i32 %var_2_2595, 2
  %var_2_2598 = icmp ne i32 %var_2_2591, 0
  %var_2_2599 = xor i1 %var_2_2598, %var_2_2596
  %.demorgan282 = or i1 %var_2_2589, %var_2_2599
  br i1 %.demorgan282, label %block_400f36, label %block_.L_400fad.loopexit

block_400f36:                                     ; preds = %block_400f36.preheader, %block_.L_400f2c.loopexit
  %var_2_2605127 = phi i64 [ %var_2_260512759, %block_.L_400f2c.loopexit ], [ %var_2_2572142, %block_400f36.preheader ]
  %var_2_2606128 = add i64 %var_2_2605127, -8
  %var_2_2608129 = inttoptr i64 %var_2_2606128 to i32*
  %var_2_2609130 = load i32, i32* %var_2_2608129, align 4
  %var_2_2610131 = add i32 %var_2_2609130, -1
  %var_2_2622132 = icmp eq i32 %var_2_2610131, 0
  %var_2_2624133 = lshr i32 %var_2_2610131, 31
  %var_2_2626134 = lshr i32 %var_2_2609130, 31
  %var_2_2627135 = xor i32 %var_2_2624133, %var_2_2626134
  %var_2_2628136 = add nuw nsw i32 %var_2_2627135, %var_2_2626134
  %var_2_2629137 = icmp eq i32 %var_2_2628136, 2
  %var_2_2631138 = icmp ne i32 %var_2_2624133, 0
  %var_2_2632139 = xor i1 %var_2_2631138, %var_2_2629137
  %.demorgan283140 = or i1 %var_2_2622132, %var_2_2632139
  br i1 %.demorgan283140, label %block_400f47.preheader, label %block_.L_400f2c.loopexit

block_400f47.preheader:                           ; preds = %block_400f36
  br label %block_400f47

block_.L_400f3d.loopexit.loopexit:                ; preds = %block_400f58
  br label %block_.L_400f3d.loopexit

block_.L_400f3d.loopexit:                         ; preds = %block_.L_400f3d.loopexit.loopexit, %block_400f47
  %var_2_260512760 = phi i64 [ %var_2_2638121, %block_400f47 ], [ %var_2_2638, %block_.L_400f3d.loopexit.loopexit ]
  %var_2_2606 = add i64 %var_2_260512760, -8
  %var_2_2608 = inttoptr i64 %var_2_2606 to i32*
  %var_2_2609 = load i32, i32* %var_2_2608, align 4
  %var_2_2610 = add i32 %var_2_2609, -1
  %var_2_2622 = icmp eq i32 %var_2_2610, 0
  %var_2_2624 = lshr i32 %var_2_2610, 31
  %var_2_2626 = lshr i32 %var_2_2609, 31
  %var_2_2627 = xor i32 %var_2_2624, %var_2_2626
  %var_2_2628 = add nuw nsw i32 %var_2_2627, %var_2_2626
  %var_2_2629 = icmp eq i32 %var_2_2628, 2
  %var_2_2631 = icmp ne i32 %var_2_2624, 0
  %var_2_2632 = xor i1 %var_2_2631, %var_2_2629
  %.demorgan283 = or i1 %var_2_2622, %var_2_2632
  br i1 %.demorgan283, label %block_400f47, label %block_.L_400f2c.loopexit.loopexit

block_400f47:                                     ; preds = %block_400f47.preheader, %block_.L_400f3d.loopexit
  %var_2_2638121 = phi i64 [ %var_2_260512760, %block_.L_400f3d.loopexit ], [ %var_2_2605127, %block_400f47.preheader ]
  %var_2_2639122 = add i64 %var_2_2638121, -12
  %var_2_2641123 = inttoptr i64 %var_2_2639122 to i32*
  %var_2_2642124 = load i32, i32* %var_2_2641123, align 4
  %var_4_27 = icmp sgt i32 %var_2_2642124, 0
  br i1 %var_4_27, label %block_.L_400f3d.loopexit, label %block_400f58.preheader

block_400f58.preheader:                           ; preds = %block_400f47
  br label %block_400f58

block_400f58:                                     ; preds = %block_400f58.preheader, %block_400f58
  %var_2_2667 = phi i32 [ %var_2_2642, %block_400f58 ], [ %var_2_2642124, %block_400f58.preheader ]
  %var_2_2638125 = phi i64 [ %var_2_2638, %block_400f58 ], [ %var_2_2638121, %block_400f58.preheader ]
  %var_2_2661 = add i64 %var_2_2638125, -8
  %var_2_2663 = inttoptr i64 %var_2_2661 to i32*
  %var_2_2664 = load i32, i32* %var_2_2663, align 4
  %var_2_2668 = shl i32 %var_2_2667, 3
  %var_2_2670 = add i32 %var_2_2664, %var_2_2668
  %var_2_2671 = shl i32 %var_2_2670, 3
  %var_2_2673 = load i64, i64* %RAX.i1121, align 8
  %var_2_2674 = trunc i64 %var_2_2673 to i32
  %var_2_2675 = add i32 %var_2_2671, %var_2_2674
  %var_2_2704 = sext i32 %var_2_2675 to i64
  %var_2_2705 = shl nsw i64 %var_2_2704, 2
  %var_2_2706 = add nsw i64 %var_2_2705, 6324896
  %var_2_2708 = inttoptr i64 %var_2_2706 to i32*
  store i32 1, i32* %var_2_2708, align 4
  %var_2_2711 = load i64, i64* %var_2_3, align 8
  %var_2_2712 = add i64 %var_2_2711, 3
  store i64 %var_2_2712, i64* %var_2_3, align 8
  %var_2_2638 = load i64, i64* %RBP.i, align 8
  %var_2_2639 = add i64 %var_2_2638, -12
  %var_2_2641 = inttoptr i64 %var_2_2639 to i32*
  %var_2_2642 = load i32, i32* %var_2_2641, align 4
  %var_4_28 = icmp sgt i32 %var_2_2642, 0
  br i1 %var_4_28, label %block_.L_400f3d.loopexit.loopexit, label %block_400f58

block_.L_400fad.loopexit:                         ; preds = %block_.L_400f2c.loopexit
  br label %block_.L_400fad

block_.L_400fad:                                  ; preds = %block_.L_400fad.loopexit, %block_.L_400f0f
  %var_2_2803105 = phi i64 [ %var_2_2572142, %block_.L_400f0f ], [ %var_2_260512759, %block_.L_400fad.loopexit ]
  store i32 2, i32* bitcast (%G_0x619214_type* @G_0x619214 to i32*), align 8
  store i32 9, i32* bitcast (%G_0x610274_type* @G_0x610274 to i32*), align 8
  %var_2_2804106 = add i64 %var_2_2803105, -4
  %var_2_2806107 = inttoptr i64 %var_2_2804106 to i32*
  %var_2_2807108 = load i32, i32* %var_2_2806107, align 4
  %var_2_2808109 = add i32 %var_2_2807108, -1
  %var_2_2820110 = icmp eq i32 %var_2_2808109, 0
  %var_2_2822111 = lshr i32 %var_2_2808109, 31
  %var_2_2824112 = lshr i32 %var_2_2807108, 31
  %var_2_2825113 = xor i32 %var_2_2822111, %var_2_2824112
  %var_2_2826114 = add nuw nsw i32 %var_2_2825113, %var_2_2824112
  %var_2_2827115 = icmp eq i32 %var_2_2826114, 2
  %var_2_2829116 = icmp ne i32 %var_2_2822111, 0
  %var_2_2830117 = xor i1 %var_2_2829116, %var_2_2827115
  %.demorgan286118 = or i1 %var_2_2820110, %var_2_2830117
  br i1 %.demorgan286118, label %block_400fd4.preheader, label %block_.L_40104b

block_400fd4.preheader:                           ; preds = %block_.L_400fad
  br label %block_400fd4

block_.L_400fca.loopexit.loopexit:                ; preds = %block_.L_400fdb.loopexit
  br label %block_.L_400fca.loopexit

block_.L_400fca.loopexit:                         ; preds = %block_.L_400fca.loopexit.loopexit, %block_400fd4
  %var_2_283610065 = phi i64 [ %var_2_2836100, %block_400fd4 ], [ %var_2_283610066, %block_.L_400fca.loopexit.loopexit ]
  %var_2_2804 = add i64 %var_2_283610065, -4
  %var_2_2806 = inttoptr i64 %var_2_2804 to i32*
  %var_2_2807 = load i32, i32* %var_2_2806, align 4
  %var_2_2808 = add i32 %var_2_2807, -1
  %var_2_2820 = icmp eq i32 %var_2_2808, 0
  %var_2_2822 = lshr i32 %var_2_2808, 31
  %var_2_2824 = lshr i32 %var_2_2807, 31
  %var_2_2825 = xor i32 %var_2_2822, %var_2_2824
  %var_2_2826 = add nuw nsw i32 %var_2_2825, %var_2_2824
  %var_2_2827 = icmp eq i32 %var_2_2826, 2
  %var_2_2829 = icmp ne i32 %var_2_2822, 0
  %var_2_2830 = xor i1 %var_2_2829, %var_2_2827
  %.demorgan286 = or i1 %var_2_2820, %var_2_2830
  br i1 %.demorgan286, label %block_400fd4, label %block_.L_40104b.loopexit

block_400fd4:                                     ; preds = %block_400fd4.preheader, %block_.L_400fca.loopexit
  %var_2_2836100 = phi i64 [ %var_2_283610065, %block_.L_400fca.loopexit ], [ %var_2_2803105, %block_400fd4.preheader ]
  %var_2_2837101 = add i64 %var_2_2836100, -8
  %var_2_2839102 = inttoptr i64 %var_2_2837101 to i32*
  %var_2_2840103 = load i32, i32* %var_2_2839102, align 4
  %var_4_29 = icmp sgt i32 %var_2_2840103, 0
  br i1 %var_4_29, label %block_.L_400fca.loopexit, label %block_400fe5.preheader

block_400fe5.preheader:                           ; preds = %block_400fd4
  br label %block_400fe5

block_.L_400fdb.loopexit.loopexit:                ; preds = %block_400ff6
  br label %block_.L_400fdb.loopexit

block_.L_400fdb.loopexit:                         ; preds = %block_.L_400fdb.loopexit.loopexit, %block_400fe5
  %var_2_283610066 = phi i64 [ %var_2_285884, %block_400fe5 ], [ %var_2_2858, %block_.L_400fdb.loopexit.loopexit ]
  %var_2_2837 = add i64 %var_2_283610066, -8
  %var_2_2839 = inttoptr i64 %var_2_2837 to i32*
  %var_2_2840 = load i32, i32* %var_2_2839, align 4
  %var_4_30 = icmp sgt i32 %var_2_2840, 0
  br i1 %var_4_30, label %block_.L_400fca.loopexit.loopexit, label %block_400fe5

block_400fe5:                                     ; preds = %block_400fe5.preheader, %block_.L_400fdb.loopexit
  %var_2_285884 = phi i64 [ %var_2_283610066, %block_.L_400fdb.loopexit ], [ %var_2_2836100, %block_400fe5.preheader ]
  %var_2_285985 = add i64 %var_2_285884, -12
  %var_2_286186 = inttoptr i64 %var_2_285985 to i32*
  %var_2_286287 = load i32, i32* %var_2_286186, align 4
  %var_2_286388 = add i32 %var_2_286287, -1
  %var_2_287589 = icmp eq i32 %var_2_286388, 0
  %var_2_287790 = lshr i32 %var_2_286388, 31
  %var_2_287991 = lshr i32 %var_2_286287, 31
  %var_2_288092 = xor i32 %var_2_287790, %var_2_287991
  %var_2_288193 = add nuw nsw i32 %var_2_288092, %var_2_287991
  %var_2_288294 = icmp eq i32 %var_2_288193, 2
  %var_2_288495 = icmp ne i32 %var_2_287790, 0
  %var_2_288596 = xor i1 %var_2_288495, %var_2_288294
  %.demorgan28797 = or i1 %var_2_287589, %var_2_288596
  br i1 %.demorgan28797, label %block_400ff6.preheader, label %block_.L_400fdb.loopexit

block_400ff6.preheader:                           ; preds = %block_400fe5
  br label %block_400ff6

block_400ff6:                                     ; preds = %block_400ff6.preheader, %block_400ff6
  %var_2_286299 = phi i32 [ %var_2_2862, %block_400ff6 ], [ %var_2_286287, %block_400ff6.preheader ]
  %var_2_285898 = phi i64 [ %var_2_2858, %block_400ff6 ], [ %var_2_285884, %block_400ff6.preheader ]
  %var_2_2892 = add i64 %var_2_285898, -8
  %var_2_2894 = inttoptr i64 %var_2_2892 to i32*
  %var_2_2895 = load i32, i32* %var_2_2894, align 4
  %var_2_2899 = shl i32 %var_2_286299, 3
  %var_2_2901 = add i32 %var_2_2895, %var_2_2899
  %var_2_2902 = shl i32 %var_2_2901, 3
  %var_2_2904 = load i64, i64* %RAX.i1121, align 8
  %var_2_2905 = trunc i64 %var_2_2904 to i32
  %var_2_2906 = add i32 %var_2_2902, %var_2_2905
  %var_2_2935 = sext i32 %var_2_2906 to i64
  %var_2_2936 = shl nsw i64 %var_2_2935, 2
  %var_2_2937 = add nsw i64 %var_2_2936, 6326944
  %var_2_2939 = inttoptr i64 %var_2_2937 to i32*
  store i32 1, i32* %var_2_2939, align 4
  %var_2_2942 = load i64, i64* %var_2_3, align 8
  %var_2_2943 = add i64 %var_2_2942, 3
  store i64 %var_2_2943, i64* %var_2_3, align 8
  %var_2_2858 = load i64, i64* %RBP.i, align 8
  %var_2_2859 = add i64 %var_2_2858, -12
  %var_2_2861 = inttoptr i64 %var_2_2859 to i32*
  %var_2_2862 = load i32, i32* %var_2_2861, align 4
  %var_2_2863 = add i32 %var_2_2862, -1
  %var_2_2875 = icmp eq i32 %var_2_2863, 0
  %var_2_2877 = lshr i32 %var_2_2863, 31
  %var_2_2879 = lshr i32 %var_2_2862, 31
  %var_2_2880 = xor i32 %var_2_2877, %var_2_2879
  %var_2_2881 = add nuw nsw i32 %var_2_2880, %var_2_2879
  %var_2_2882 = icmp eq i32 %var_2_2881, 2
  %var_2_2884 = icmp ne i32 %var_2_2877, 0
  %var_2_2885 = xor i1 %var_2_2884, %var_2_2882
  %.demorgan287 = or i1 %var_2_2875, %var_2_2885
  br i1 %.demorgan287, label %block_400ff6, label %block_.L_400fdb.loopexit.loopexit

block_.L_40104b.loopexit:                         ; preds = %block_.L_400fca.loopexit
  br label %block_.L_40104b

block_.L_40104b:                                  ; preds = %block_.L_40104b.loopexit, %block_.L_400fad
  %var_2_303478 = phi i64 [ %var_2_2803105, %block_.L_400fad ], [ %var_2_283610065, %block_.L_40104b.loopexit ]
  store i32 2, i32* bitcast (%G_0x619218_type* @G_0x619218 to i32*), align 8
  store i32 65, i32* bitcast (%G_0x610278_type* @G_0x610278 to i32*), align 8
  %var_2_303579 = add i64 %var_2_303478, -4
  %var_2_303780 = inttoptr i64 %var_2_303579 to i32*
  %var_2_303881 = load i32, i32* %var_2_303780, align 4
  %var_4_31 = icmp sgt i32 %var_2_303881, 0
  br i1 %var_4_31, label %block_.L_4010e9, label %block_401072.preheader

block_401072.preheader:                           ; preds = %block_.L_40104b
  br label %block_401072

block_.L_401068.loopexit.loopexit:                ; preds = %block_.L_401079.loopexit
  br label %block_.L_401068.loopexit

block_.L_401068.loopexit:                         ; preds = %block_.L_401068.loopexit.loopexit, %block_401072
  %var_2_30566370 = phi i64 [ %var_2_305663, %block_401072 ], [ %var_2_30566371, %block_.L_401068.loopexit.loopexit ]
  %var_2_3035 = add i64 %var_2_30566370, -4
  %var_2_3037 = inttoptr i64 %var_2_3035 to i32*
  %var_2_3038 = load i32, i32* %var_2_3037, align 4
  %var_4_32 = icmp sgt i32 %var_2_3038, 0
  br i1 %var_4_32, label %block_.L_4010e9.loopexit, label %block_401072

block_401072:                                     ; preds = %block_401072.preheader, %block_.L_401068.loopexit
  %var_2_305663 = phi i64 [ %var_2_30566370, %block_.L_401068.loopexit ], [ %var_2_303478, %block_401072.preheader ]
  %var_2_305764 = add i64 %var_2_305663, -8
  %var_2_305965 = inttoptr i64 %var_2_305764 to i32*
  %var_2_306066 = load i32, i32* %var_2_305965, align 4
  %var_2_306167 = add i32 %var_2_306066, -1
  %var_2_307368 = icmp eq i32 %var_2_306167, 0
  %var_2_307569 = lshr i32 %var_2_306167, 31
  %var_2_307770 = lshr i32 %var_2_306066, 31
  %var_2_307871 = xor i32 %var_2_307569, %var_2_307770
  %var_2_307972 = add nuw nsw i32 %var_2_307871, %var_2_307770
  %var_2_308073 = icmp eq i32 %var_2_307972, 2
  %var_2_308274 = icmp ne i32 %var_2_307569, 0
  %var_2_308375 = xor i1 %var_2_308274, %var_2_308073
  %.demorgan29076 = or i1 %var_2_307368, %var_2_308375
  br i1 %.demorgan29076, label %block_401083.preheader, label %block_.L_401068.loopexit

block_401083.preheader:                           ; preds = %block_401072
  br label %block_401083

block_.L_401079.loopexit.loopexit:                ; preds = %block_401094
  br label %block_.L_401079.loopexit

block_.L_401079.loopexit:                         ; preds = %block_.L_401079.loopexit.loopexit, %block_401083
  %var_2_30566371 = phi i64 [ %var_2_308947, %block_401083 ], [ %var_2_3089, %block_.L_401079.loopexit.loopexit ]
  %var_2_3057 = add i64 %var_2_30566371, -8
  %var_2_3059 = inttoptr i64 %var_2_3057 to i32*
  %var_2_3060 = load i32, i32* %var_2_3059, align 4
  %var_2_3061 = add i32 %var_2_3060, -1
  %var_2_3073 = icmp eq i32 %var_2_3061, 0
  %var_2_3075 = lshr i32 %var_2_3061, 31
  %var_2_3077 = lshr i32 %var_2_3060, 31
  %var_2_3078 = xor i32 %var_2_3075, %var_2_3077
  %var_2_3079 = add nuw nsw i32 %var_2_3078, %var_2_3077
  %var_2_3080 = icmp eq i32 %var_2_3079, 2
  %var_2_3082 = icmp ne i32 %var_2_3075, 0
  %var_2_3083 = xor i1 %var_2_3082, %var_2_3080
  %.demorgan290 = or i1 %var_2_3073, %var_2_3083
  br i1 %.demorgan290, label %block_401083, label %block_.L_401068.loopexit.loopexit

block_401083:                                     ; preds = %block_401083.preheader, %block_.L_401079.loopexit
  %var_2_308947 = phi i64 [ %var_2_30566371, %block_.L_401079.loopexit ], [ %var_2_305663, %block_401083.preheader ]
  %var_2_309048 = add i64 %var_2_308947, -12
  %var_2_309249 = inttoptr i64 %var_2_309048 to i32*
  %var_2_309350 = load i32, i32* %var_2_309249, align 4
  %var_2_309451 = add i32 %var_2_309350, -1
  %var_2_310652 = icmp eq i32 %var_2_309451, 0
  %var_2_310853 = lshr i32 %var_2_309451, 31
  %var_2_311054 = lshr i32 %var_2_309350, 31
  %var_2_311155 = xor i32 %var_2_310853, %var_2_311054
  %var_2_311256 = add nuw nsw i32 %var_2_311155, %var_2_311054
  %var_2_311357 = icmp eq i32 %var_2_311256, 2
  %var_2_311558 = icmp ne i32 %var_2_310853, 0
  %var_2_311659 = xor i1 %var_2_311558, %var_2_311357
  %.demorgan29160 = or i1 %var_2_310652, %var_2_311659
  br i1 %.demorgan29160, label %block_401094.preheader, label %block_.L_401079.loopexit

block_401094.preheader:                           ; preds = %block_401083
  br label %block_401094

block_401094:                                     ; preds = %block_401094.preheader, %block_401094
  %var_2_309362 = phi i32 [ %var_2_3093, %block_401094 ], [ %var_2_309350, %block_401094.preheader ]
  %var_2_308961 = phi i64 [ %var_2_3089, %block_401094 ], [ %var_2_308947, %block_401094.preheader ]
  %var_2_3123 = add i64 %var_2_308961, -8
  %var_2_3125 = inttoptr i64 %var_2_3123 to i32*
  %var_2_3126 = load i32, i32* %var_2_3125, align 4
  %var_2_3130 = shl i32 %var_2_309362, 3
  %var_2_3132 = add i32 %var_2_3126, %var_2_3130
  %var_2_3133 = shl i32 %var_2_3132, 3
  %var_2_3135 = load i64, i64* %RAX.i1121, align 8
  %var_2_3136 = trunc i64 %var_2_3135 to i32
  %var_2_3137 = add i32 %var_2_3133, %var_2_3136
  %var_2_3166 = sext i32 %var_2_3137 to i64
  %var_2_3167 = shl nsw i64 %var_2_3166, 2
  %var_2_3168 = add nsw i64 %var_2_3167, 6328992
  %var_2_3170 = inttoptr i64 %var_2_3168 to i32*
  store i32 1, i32* %var_2_3170, align 4
  %var_2_3173 = load i64, i64* %var_2_3, align 8
  %var_2_3174 = add i64 %var_2_3173, 3
  store i64 %var_2_3174, i64* %var_2_3, align 8
  %var_2_3089 = load i64, i64* %RBP.i, align 8
  %var_2_3090 = add i64 %var_2_3089, -12
  %var_2_3092 = inttoptr i64 %var_2_3090 to i32*
  %var_2_3093 = load i32, i32* %var_2_3092, align 4
  %var_2_3094 = add i32 %var_2_3093, -1
  %var_2_3106 = icmp eq i32 %var_2_3094, 0
  %var_2_3108 = lshr i32 %var_2_3094, 31
  %var_2_3110 = lshr i32 %var_2_3093, 31
  %var_2_3111 = xor i32 %var_2_3108, %var_2_3110
  %var_2_3112 = add nuw nsw i32 %var_2_3111, %var_2_3110
  %var_2_3113 = icmp eq i32 %var_2_3112, 2
  %var_2_3115 = icmp ne i32 %var_2_3108, 0
  %var_2_3116 = xor i1 %var_2_3115, %var_2_3113
  %.demorgan291 = or i1 %var_2_3106, %var_2_3116
  br i1 %.demorgan291, label %block_401094, label %block_.L_401079.loopexit.loopexit

block_.L_4010e9.loopexit:                         ; preds = %block_.L_401068.loopexit
  br label %block_.L_4010e9

block_.L_4010e9:                                  ; preds = %block_.L_4010e9.loopexit, %block_.L_40104b
  %var_2_326532 = phi i64 [ %var_2_303478, %block_.L_40104b ], [ %var_2_30566370, %block_.L_4010e9.loopexit ]
  store i32 2, i32* bitcast (%G_0x61921c_type* @G_0x61921c to i32*), align 8
  store i32 72, i32* bitcast (%G_0x61027c_type* @G_0x61027c to i32*), align 8
  %var_2_326633 = add i64 %var_2_326532, -4
  %var_2_326834 = inttoptr i64 %var_2_326633 to i32*
  %var_2_326935 = load i32, i32* %var_2_326834, align 4
  %var_2_327036 = add i32 %var_2_326935, -1
  %var_2_328237 = icmp eq i32 %var_2_327036, 0
  %var_2_328438 = lshr i32 %var_2_327036, 31
  %var_2_328639 = lshr i32 %var_2_326935, 31
  %var_2_328740 = xor i32 %var_2_328438, %var_2_328639
  %var_2_328841 = add nuw nsw i32 %var_2_328740, %var_2_328639
  %var_2_328942 = icmp eq i32 %var_2_328841, 2
  %var_2_329143 = icmp ne i32 %var_2_328438, 0
  %var_2_329244 = xor i1 %var_2_329143, %var_2_328942
  %.demorgan29445 = or i1 %var_2_328237, %var_2_329244
  br i1 %.demorgan29445, label %block_401110.preheader, label %block_.L_401187

block_401110.preheader:                           ; preds = %block_.L_4010e9
  br label %block_401110

block_.L_401106.loopexit.loopexit:                ; preds = %block_.L_401117.loopexit
  br label %block_.L_401106.loopexit

block_.L_401106.loopexit:                         ; preds = %block_.L_401106.loopexit.loopexit, %block_401110
  %var_2_32981775 = phi i64 [ %var_2_329817, %block_401110 ], [ %var_2_32981776, %block_.L_401106.loopexit.loopexit ]
  %var_2_3266 = add i64 %var_2_32981775, -4
  %var_2_3268 = inttoptr i64 %var_2_3266 to i32*
  %var_2_3269 = load i32, i32* %var_2_3268, align 4
  %var_2_3270 = add i32 %var_2_3269, -1
  %var_2_3282 = icmp eq i32 %var_2_3270, 0
  %var_2_3284 = lshr i32 %var_2_3270, 31
  %var_2_3286 = lshr i32 %var_2_3269, 31
  %var_2_3287 = xor i32 %var_2_3284, %var_2_3286
  %var_2_3288 = add nuw nsw i32 %var_2_3287, %var_2_3286
  %var_2_3289 = icmp eq i32 %var_2_3288, 2
  %var_2_3291 = icmp ne i32 %var_2_3284, 0
  %var_2_3292 = xor i1 %var_2_3291, %var_2_3289
  %.demorgan294 = or i1 %var_2_3282, %var_2_3292
  br i1 %.demorgan294, label %block_401110, label %block_.L_401187.loopexit

block_401110:                                     ; preds = %block_401110.preheader, %block_.L_401106.loopexit
  %var_2_329817 = phi i64 [ %var_2_32981775, %block_.L_401106.loopexit ], [ %var_2_326532, %block_401110.preheader ]
  %var_2_329918 = add i64 %var_2_329817, -8
  %var_2_330119 = inttoptr i64 %var_2_329918 to i32*
  %var_2_330220 = load i32, i32* %var_2_330119, align 4
  %var_2_330321 = add i32 %var_2_330220, -1
  %var_2_331522 = icmp eq i32 %var_2_330321, 0
  %var_2_331723 = lshr i32 %var_2_330321, 31
  %var_2_331924 = lshr i32 %var_2_330220, 31
  %var_2_332025 = xor i32 %var_2_331723, %var_2_331924
  %var_2_332126 = add nuw nsw i32 %var_2_332025, %var_2_331924
  %var_2_332227 = icmp eq i32 %var_2_332126, 2
  %var_2_332428 = icmp ne i32 %var_2_331723, 0
  %var_2_332529 = xor i1 %var_2_332428, %var_2_332227
  %.demorgan29530 = or i1 %var_2_331522, %var_2_332529
  br i1 %.demorgan29530, label %block_401121.preheader, label %block_.L_401106.loopexit

block_401121.preheader:                           ; preds = %block_401110
  br label %block_401121

block_.L_401117.loopexit.loopexit:                ; preds = %block_401132
  br label %block_.L_401117.loopexit

block_.L_401117.loopexit:                         ; preds = %block_.L_401117.loopexit.loopexit, %block_401121
  %var_2_32981776 = phi i64 [ %var_2_33311, %block_401121 ], [ %var_2_3331, %block_.L_401117.loopexit.loopexit ]
  %var_2_3299 = add i64 %var_2_32981776, -8
  %var_2_3301 = inttoptr i64 %var_2_3299 to i32*
  %var_2_3302 = load i32, i32* %var_2_3301, align 4
  %var_2_3303 = add i32 %var_2_3302, -1
  %var_2_3315 = icmp eq i32 %var_2_3303, 0
  %var_2_3317 = lshr i32 %var_2_3303, 31
  %var_2_3319 = lshr i32 %var_2_3302, 31
  %var_2_3320 = xor i32 %var_2_3317, %var_2_3319
  %var_2_3321 = add nuw nsw i32 %var_2_3320, %var_2_3319
  %var_2_3322 = icmp eq i32 %var_2_3321, 2
  %var_2_3324 = icmp ne i32 %var_2_3317, 0
  %var_2_3325 = xor i1 %var_2_3324, %var_2_3322
  %.demorgan295 = or i1 %var_2_3315, %var_2_3325
  br i1 %.demorgan295, label %block_401121, label %block_.L_401106.loopexit.loopexit

block_401121:                                     ; preds = %block_401121.preheader, %block_.L_401117.loopexit
  %var_2_33311 = phi i64 [ %var_2_32981776, %block_.L_401117.loopexit ], [ %var_2_329817, %block_401121.preheader ]
  %var_2_33322 = add i64 %var_2_33311, -12
  %var_2_33343 = inttoptr i64 %var_2_33322 to i32*
  %var_2_33354 = load i32, i32* %var_2_33343, align 4
  %var_2_33365 = add i32 %var_2_33354, -1
  %var_2_33486 = icmp eq i32 %var_2_33365, 0
  %var_2_33507 = lshr i32 %var_2_33365, 31
  %var_2_33528 = lshr i32 %var_2_33354, 31
  %var_2_33539 = xor i32 %var_2_33507, %var_2_33528
  %var_2_335410 = add nuw nsw i32 %var_2_33539, %var_2_33528
  %var_2_335511 = icmp eq i32 %var_2_335410, 2
  %var_2_335712 = icmp ne i32 %var_2_33507, 0
  %var_2_335813 = xor i1 %var_2_335712, %var_2_335511
  %.demorgan29614 = or i1 %var_2_33486, %var_2_335813
  br i1 %.demorgan29614, label %block_401132.preheader, label %block_.L_401117.loopexit

block_401132.preheader:                           ; preds = %block_401121
  br label %block_401132

block_401132:                                     ; preds = %block_401132.preheader, %block_401132
  %var_2_333516 = phi i32 [ %var_2_3335, %block_401132 ], [ %var_2_33354, %block_401132.preheader ]
  %var_2_333115 = phi i64 [ %var_2_3331, %block_401132 ], [ %var_2_33311, %block_401132.preheader ]
  %var_2_3365 = add i64 %var_2_333115, -8
  %var_2_3367 = inttoptr i64 %var_2_3365 to i32*
  %var_2_3368 = load i32, i32* %var_2_3367, align 4
  %var_2_3372 = shl i32 %var_2_333516, 3
  %var_2_3374 = add i32 %var_2_3368, %var_2_3372
  %var_2_3375 = shl i32 %var_2_3374, 3
  %var_2_3377 = load i64, i64* %RAX.i1121, align 8
  %var_2_3378 = trunc i64 %var_2_3377 to i32
  %var_2_3379 = add i32 %var_2_3375, %var_2_3378
  %var_2_3408 = sext i32 %var_2_3379 to i64
  %var_2_3409 = shl nsw i64 %var_2_3408, 2
  %var_2_3410 = add nsw i64 %var_2_3409, 6331040
  %var_2_3412 = inttoptr i64 %var_2_3410 to i32*
  store i32 1, i32* %var_2_3412, align 4
  %var_2_3415 = load i64, i64* %var_2_3, align 8
  %var_2_3416 = add i64 %var_2_3415, 3
  store i64 %var_2_3416, i64* %var_2_3, align 8
  %var_2_3331 = load i64, i64* %RBP.i, align 8
  %var_2_3332 = add i64 %var_2_3331, -12
  %var_2_3334 = inttoptr i64 %var_2_3332 to i32*
  %var_2_3335 = load i32, i32* %var_2_3334, align 4
  %var_2_3336 = add i32 %var_2_3335, -1
  %var_2_3348 = icmp eq i32 %var_2_3336, 0
  %var_2_3350 = lshr i32 %var_2_3336, 31
  %var_2_3352 = lshr i32 %var_2_3335, 31
  %var_2_3353 = xor i32 %var_2_3350, %var_2_3352
  %var_2_3354 = add nuw nsw i32 %var_2_3353, %var_2_3352
  %var_2_3355 = icmp eq i32 %var_2_3354, 2
  %var_2_3357 = icmp ne i32 %var_2_3350, 0
  %var_2_3358 = xor i1 %var_2_3357, %var_2_3355
  %.demorgan296 = or i1 %var_2_3348, %var_2_3358
  br i1 %.demorgan296, label %block_401132, label %block_.L_401117.loopexit.loopexit

block_.L_401187.loopexit:                         ; preds = %block_.L_401106.loopexit
  br label %block_.L_401187

block_.L_401187:                                  ; preds = %block_.L_401187.loopexit, %block_.L_4010e9
  store i32 3, i32* bitcast (%G_0x619220_type* @G_0x619220 to i32*), align 8
  store i32 73, i32* bitcast (%G_0x610280_type* @G_0x610280 to i32*), align 8
  store i32 13, i32* bitcast (%G_0x6191e0_type* @G_0x6191e0 to i32*), align 8
  store i32 3, i32* bitcast (%G_0x6191e4_type* @G_0x6191e4 to i32*), align 8
  store i32 1, i32* bitcast (%G_0x6191e8_type* @G_0x6191e8 to i32*), align 8
  store i32 1, i32* bitcast (%G_0x6191ec_type* @G_0x6191ec to i32*), align 8
  %var_2_3508 = load i64, i64* %var_2_3, align 8
  store i32 0, i32* bitcast (%G_0x6191c4_type* @G_0x6191c4 to i32*), align 8
  %var_2_3515 = add i64 %var_2_3508, -3154
  %var_2_3517 = load i64, i64* %var_2_6, align 8
  %var_2_3518 = add i64 %var_2_3517, -8
  store i64 %var_2_3518, i64* %var_2_6, align 8
  %call2_4011e0 = tail call %struct.Memory* @sub_400580.Fit(%struct.State* nonnull %0, i64 %var_2_3515, %struct.Memory* %2)
  %var_2_3520 = load i32, i32* %EAX.i1111, align 4
  %var_2_3527 = icmp eq i32 %var_2_3520, 0
  br i1 %var_2_3527, label %block_.L_401204, label %block_4011ee

block_4011ee:                                     ; preds = %block_.L_401187
  %var_2_3521 = load i64, i64* %var_2_3, align 8
  %var_2_3538 = add i64 %var_2_3521, -3029
  %var_2_3540 = load i64, i64* %var_2_6, align 8
  %var_2_3541 = add i64 %var_2_3540, -8
  store i64 %var_2_3541, i64* %var_2_6, align 8
  %call2_4011f3 = tail call %struct.Memory* @sub_400610.Place(%struct.State* nonnull %0, i64 %var_2_3538, %struct.Memory* %call2_4011e0)
  %var_2_3543 = load i32, i32* %EAX.i1111, align 4
  %var_2_3544 = load i64, i64* %var_2_3, align 8
  store i32 %var_2_3543, i32* bitcast (%G_0x603a94_type* @G_0x603a94 to i32*), align 8
  %var_2_3545 = add i64 %var_2_3544, 32
  br label %block_.L_401218

block_.L_401204:                                  ; preds = %block_.L_401187
  %AL.i62 = bitcast %union.anon* %var_2_43 to i8*
  store i8 0, i8* %AL.i62, align 1
  %var_2_3548 = load i64, i64* %var_2_6, align 8
  %var_2_3549 = add i64 %var_2_3548, -8
  store i64 %var_2_3549, i64* %var_2_6, align 8
  %var_2_3551 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_4011e0)
  %var_2_3555 = load i64, i64* %var_2_3, align 8
  %var_2_3556 = add i64 %var_2_3555, 3
  store i64 %var_2_3556, i64* %var_2_3, align 8
  br label %block_.L_401218

block_.L_401218:                                  ; preds = %block_.L_401204, %block_4011ee
  %var_2_3559 = phi i64 [ %var_2_3556, %block_.L_401204 ], [ %var_2_3545, %block_4011ee ]
  %MEMORY.45 = phi %struct.Memory* [ %var_2_3551, %block_.L_401204 ], [ %call2_4011f3, %block_4011ee ]
  %var_2_3561 = add i64 %var_2_3559, -2680
  %var_2_3563 = load i64, i64* %var_2_6, align 8
  %var_2_3564 = add i64 %var_2_3563, -8
  store i64 %var_2_3564, i64* %var_2_6, align 8
  %call2_40121f = tail call %struct.Memory* @sub_4007a0.Trial(%struct.State* nonnull %0, i64 %var_2_3561, %struct.Memory* %MEMORY.45)
  %var_2_3566 = load i32, i32* %EAX.i1111, align 4
  %var_2_3567 = load i64, i64* %var_2_3, align 8
  %var_2_3573 = icmp eq i32 %var_2_3566, 0
  %.v316 = select i1 %var_2_3573, i64 9, i64 34
  %var_2_3577 = add i64 %.v316, %var_2_3567
  store i64 %var_2_3577, i64* %var_2_3, align 8
  br i1 %var_2_3573, label %block_40122d, label %block_.L_401246

block_40122d:                                     ; preds = %block_.L_401218
  %AL.i47 = bitcast %union.anon* %var_2_43 to i8*
  store i8 0, i8* %AL.i47, align 1
  %var_2_3578 = add i64 %var_2_3577, -3597
  %var_2_3579 = add i64 %var_2_3577, 17
  %var_2_3580 = load i64, i64* %var_2_6, align 8
  %var_2_3581 = add i64 %var_2_3580, -8
  %var_2_3582 = inttoptr i64 %var_2_3581 to i64*
  store i64 %var_2_3579, i64* %var_2_3582, align 8
  store i64 %var_2_3581, i64* %var_2_6, align 8
  store i64 %var_2_3578, i64* %var_2_3, align 8
  %var_2_3583 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_40121f)
  %var_2_3584 = load i64, i64* %RBP.i, align 8
  %var_2_3585 = add i64 %var_2_3584, -24
  %var_2_3586 = load i32, i32* %EAX.i1111, align 4
  %var_2_3587 = load i64, i64* %var_2_3, align 8
  %var_2_3588 = add i64 %var_2_3587, 3
  store i64 %var_2_3588, i64* %var_2_3, align 8
  %var_2_3589 = inttoptr i64 %var_2_3585 to i32*
  store i32 %var_2_3586, i32* %var_2_3589, align 4
  %var_2_3590 = load i64, i64* %var_2_3, align 8
  %var_2_3591 = add i64 %var_2_3590, 47
  br label %block_.L_401270

block_.L_401246:                                  ; preds = %block_.L_401218
  %var_2_3592 = load i32, i32* bitcast (%G_0x6191c4_type* @G_0x6191c4 to i32*), align 8
  %var_2_3606 = icmp eq i32 %var_2_3592, 2005
  %.v317 = select i1 %var_2_3606, i64 37, i64 17
  %var_2_3615 = add i64 %.v317, %var_2_3577
  store i64 %var_2_3615, i64* %var_2_3, align 8
  %.pre241 = bitcast %union.anon* %var_2_43 to i8*
  br i1 %var_2_3606, label %block_.L_40126b, label %block_401257

block_401257:                                     ; preds = %block_.L_401246
  store i8 0, i8* %.pre241, align 1
  %var_2_3616 = add i64 %var_2_3615, -3639
  %var_2_3617 = add i64 %var_2_3615, 17
  %var_2_3618 = load i64, i64* %var_2_6, align 8
  %var_2_3619 = add i64 %var_2_3618, -8
  %var_2_3620 = inttoptr i64 %var_2_3619 to i64*
  store i64 %var_2_3617, i64* %var_2_3620, align 8
  store i64 %var_2_3619, i64* %var_2_6, align 8
  store i64 %var_2_3616, i64* %var_2_3, align 8
  %var_2_3621 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_40121f)
  %var_2_3622 = load i64, i64* %RBP.i, align 8
  %var_2_3623 = add i64 %var_2_3622, -28
  %var_2_3624 = load i32, i32* %EAX.i1111, align 4
  %var_2_3625 = load i64, i64* %var_2_3, align 8
  %var_2_3626 = add i64 %var_2_3625, 3
  store i64 %var_2_3626, i64* %var_2_3, align 8
  %var_2_3627 = inttoptr i64 %var_2_3623 to i32*
  store i32 %var_2_3624, i32* %var_2_3627, align 4
  %.pre239 = load i64, i64* %var_2_3, align 8
  br label %block_.L_40126b

block_.L_40126b:                                  ; preds = %block_401257, %block_.L_401246
  %var_2_3628 = phi i64 [ %.pre239, %block_401257 ], [ %var_2_3615, %block_.L_401246 ]
  %MEMORY.46 = phi %struct.Memory* [ %var_2_3621, %block_401257 ], [ %call2_40121f, %block_.L_401246 ]
  %var_2_3629 = add i64 %var_2_3628, 5
  store i64 %var_2_3629, i64* %var_2_3, align 8
  br label %block_.L_401270

block_.L_401270:                                  ; preds = %block_.L_40126b, %block_40122d
  %AL.i21.pre-phi = phi i8* [ %.pre241, %block_.L_40126b ], [ %AL.i47, %block_40122d ]
  %storemerge = phi i64 [ %var_2_3629, %block_.L_40126b ], [ %var_2_3591, %block_40122d ]
  %MEMORY.47 = phi %struct.Memory* [ %MEMORY.46, %block_.L_40126b ], [ %var_2_3583, %block_40122d ]
  store i8 0, i8* %AL.i21.pre-phi, align 1
  %var_2_3632 = add i64 %storemerge, -3664
  %var_2_3633 = add i64 %storemerge, 24
  %var_2_3634 = load i64, i64* %var_2_6, align 8
  %var_2_3635 = add i64 %var_2_3634, -8
  %var_2_3636 = inttoptr i64 %var_2_3635 to i64*
  store i64 %var_2_3633, i64* %var_2_3636, align 8
  store i64 %var_2_3635, i64* %var_2_6, align 8
  store i64 %var_2_3632, i64* %var_2_3, align 8
  %var_2_3637 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.47)
  store i8 0, i8* %AL.i21.pre-phi, align 1
  %var_2_3649 = load i64, i64* %var_2_6, align 8
  %var_2_3650 = add i64 %var_2_3649, -8
  store i64 %var_2_3650, i64* %var_2_6, align 8
  %var_2_3652 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %var_2_3637)
  %var_2_3656 = load i64, i64* %var_2_3, align 8
  %var_2_3657 = add i64 %var_2_3656, 3
  store i64 %var_2_3657, i64* %var_2_3, align 8
  ret %struct.Memory* %var_2_3652
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
define %struct.Memory* @routine_subq__0x30___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -48
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 48
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
define %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1ff__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -511
  %10 = icmp ult i32 %8, 511
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
define %struct.Memory* @routine_jg_.L_4008a9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_movl__0x1__0x60df50___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6348624
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 1, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40087f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x5__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -5
  %10 = icmp ult i32 %8, 5
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
define %struct.Memory* @routine_jg_.L_400931(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x5__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -5
  %10 = icmp ult i32 %8, 5
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
define %struct.Memory* @routine_jg_.L_40091e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x5__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -5
  %10 = icmp ult i32 %8, 5
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
define %struct.Memory* @routine_jg_.L_40090b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_shll__0x3___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %.tr = trunc i64 %3 to i32
  %6 = shl i32 %.tr, 3
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %RDX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %9 = lshr i64 %3, 29
  %10 = trunc i64 %9 to i8
  %11 = and i8 %10, 1
  store i8 %11, i8* %8, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = and i32 %6, 248
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %12, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i32 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i32 %.tr, 28
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__edx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i32, i32* %EDX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = icmp ult i32 %10, %9
  %13 = icmp ult i32 %10, %5
  %14 = or i1 %12, %13
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %10, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i64 %6, %4
  %24 = trunc i64 %23 to i32
  %25 = xor i32 %24, %10
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %10, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %10, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %9, 31
  %37 = lshr i32 %5, 31
  %38 = xor i32 %33, %36
  %39 = xor i32 %33, %37
  %40 = add nuw nsw i32 %38, %39
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__0x3___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %.tr = trunc i64 %3 to i32
  %6 = shl i32 %.tr, 3
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %RCX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %9 = lshr i64 %3, 29
  %10 = trunc i64 %9 to i8
  %11 = and i8 %10, 1
  store i8 %11, i8* %8, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = and i32 %6, 248
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %12, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i32 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i32 %.tr, 28
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i32, i32* %ECX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
  %12 = icmp ult i32 %10, %9
  %13 = icmp ult i32 %10, %5
  %14 = or i1 %12, %13
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %10, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i64 %6, %4
  %24 = trunc i64 %23 to i32
  %25 = xor i32 %24, %10
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %10, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %10, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %9, 31
  %37 = lshr i32 %5, 31
  %38 = xor i32 %33, %36
  %39 = xor i32 %33, %37
  %40 = add nuw nsw i32 %38, %39
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__eax___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x60df50___rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6348624
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 0, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4008d2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400910(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4008c1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400923(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_4008b0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xc__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -12
  %10 = icmp ult i32 %8, 12
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
define %struct.Memory* @routine_jg_.L_400997(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_400984(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x603aa0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x603aa0_type* @G__0x603aa0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_shlq__0xb___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 11
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 53
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %14 = icmp eq i64 %6, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %13, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = lshr i64 %3, 52
  %18 = trunc i64 %17 to i8
  %19 = and i8 %18, 1
  store i8 %19, i8* %16, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
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
define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  store i32 0, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400949(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400989(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400938(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -3
  %10 = icmp ult i32 %8, 3
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
define %struct.Memory* @routine_jg_.L_400a1f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_jg_.L_400a0c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_jg_.L_4009f9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__0x603aa0___rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6306464
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 1, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4009c0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4009fe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4009af(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400a11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40099e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x6191f0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x6191f0_type* @G_0x6191f0 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xb__0x610250(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 11, i32* bitcast (%G_0x610250_type* @G_0x610250 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_jg_.L_400abd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jg_.L_400aaa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -3
  %10 = icmp ult i32 %8, 3
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
define %struct.Memory* @routine_jg_.L_400a97(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__0x6042a0___rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6308512
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 1, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400a5e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400a9c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400a4d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400aaf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400a3c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x6191f4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x6191f4_type* @G_0x6191f4 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xc1__0x610254(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 193, i32* bitcast (%G_0x610254_type* @G_0x610254 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_jg_.L_400b5b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -3
  %10 = icmp ult i32 %8, 3
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
define %struct.Memory* @routine_jg_.L_400b48(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_jg_.L_400b35(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__0x604aa0___rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6310560
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 1, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400afc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400b3a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400aeb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400b4d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400ada(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x6191f8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x6191f8_type* @G_0x6191f8 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x58__0x610258(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 88, i32* bitcast (%G_0x610258_type* @G_0x610258 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_400bf9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_400be6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_400bd3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__0x6052a0___rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6312608
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 1, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400b9a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400bd8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400b89(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400beb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400b78(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x6191fc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x6191fc_type* @G_0x6191fc to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x19__0x61025c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 25, i32* bitcast (%G_0x61025c_type* @G_0x61025c to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_400c97(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_400c84(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_400c71(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__0x605aa0___rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6314656
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 1, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400c38(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400c76(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400c27(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400c89(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400c16(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x619200(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x619200_type* @G_0x619200 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x43__0x610260(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 67, i32* bitcast (%G_0x610260_type* @G_0x610260 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_400d35(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_400d22(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_400d0f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__0x6062a0___rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6316704
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 1, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400cd6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400d14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400cc5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400d27(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400cb4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x619204(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x619204_type* @G_0x619204 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xc8__0x610264(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 200, i32* bitcast (%G_0x610264_type* @G_0x610264 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -2
  %10 = icmp ult i32 %8, 2
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
define %struct.Memory* @routine_jg_.L_400dd3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_400dc0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_400dad(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__0x606aa0___rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6318752
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 1, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400d74(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400db2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400d63(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400dc5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400d52(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0x619208(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* bitcast (%G_0x619208_type* @G_0x619208 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2__0x610268(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 2, i32* bitcast (%G_0x610268_type* @G_0x610268 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_400e71(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -2
  %10 = icmp ult i32 %8, 2
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
define %struct.Memory* @routine_jg_.L_400e5e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_400e4b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__0x6072a0___rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6320800
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 1, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400e12(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400e50(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400e01(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400e63(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400df0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0x61920c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* bitcast (%G_0x61920c_type* @G_0x61920c to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x10__0x61026c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 16, i32* bitcast (%G_0x61026c_type* @G_0x61026c to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_400f0f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_400efc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -2
  %10 = icmp ult i32 %8, 2
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
define %struct.Memory* @routine_jg_.L_400ee9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__0x607aa0___rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6322848
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 1, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400eb0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400eee(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400e9f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400f01(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400e8e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0x619210(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* bitcast (%G_0x619210_type* @G_0x619210 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x80__0x610270(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 128, i32* bitcast (%G_0x610270_type* @G_0x610270 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_400fad(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_400f9a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_400f87(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__0x6082a0___rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6324896
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 1, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400f4e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400f8c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400f3d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400f9f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400f2c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2__0x619214(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 2, i32* bitcast (%G_0x619214_type* @G_0x619214 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x9__0x610274(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 9, i32* bitcast (%G_0x610274_type* @G_0x610274 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_40104b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_401038(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_401025(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__0x608aa0___rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6326944
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 1, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400fec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40102a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400fdb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40103d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400fca(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2__0x619218(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 2, i32* bitcast (%G_0x619218_type* @G_0x619218 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x41__0x610278(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 65, i32* bitcast (%G_0x610278_type* @G_0x610278 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_4010e9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_4010d6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_4010c3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__0x6092a0___rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6328992
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 1, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40108a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4010c8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401079(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4010db(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401068(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2__0x61921c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 2, i32* bitcast (%G_0x61921c_type* @G_0x61921c to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x48__0x61027c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 72, i32* bitcast (%G_0x61027c_type* @G_0x61027c to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_401187(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_401174(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_401161(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__0x609aa0___rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6331040
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 1, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401128(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401166(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401117(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401179(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401106(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_xorl__edi___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x3__0x619220(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 3, i32* bitcast (%G_0x619220_type* @G_0x619220 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x49__0x610280(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 73, i32* bitcast (%G_0x610280_type* @G_0x610280 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xd__0x6191e0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 13, i32* bitcast (%G_0x6191e0_type* @G_0x6191e0 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3__0x6191e4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 3, i32* bitcast (%G_0x6191e4_type* @G_0x6191e4 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0x6191e8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* bitcast (%G_0x6191e8_type* @G_0x6191e8 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0x6191ec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* bitcast (%G_0x6191ec_type* @G_0x6191ec to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x49__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 73, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x6191c4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x6191c4_type* @G_0x6191c4 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x10__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_callq_.Fit(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_401204(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.Place(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__0x603a94(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x603a94_type* @G_0x603a94 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401218(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x401374___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x401374_type* @G__0x401374 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movl_0x603a94___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x603a94_type* @G_0x603a94 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.Trial(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_401246(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x401386___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x401386_type* @G__0x401386 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jmpq_.L_401270(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x7d5__0x6191c4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x6191c4_type* @G_0x6191c4 to i32*), align 8
  %6 = add i32 %5, -2005
  %7 = icmp ult i32 %5, 2005
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
  %16 = xor i32 %5, 16
  %17 = xor i32 %16, %6
  %18 = lshr i32 %17, 4
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %6, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %6, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %5, 31
  %29 = xor i32 %25, %28
  %30 = add nuw nsw i32 %29, %28
  %31 = icmp eq i32 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_40126b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x401399___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x401399_type* @G__0x401399 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movq__0x4013ac___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4013ac_type* @G__0x4013ac to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x603a94___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x603a94_type* @G_0x603a94 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x6191c4___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x6191c4_type* @G_0x6191c4 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x30___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 48
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -49
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
