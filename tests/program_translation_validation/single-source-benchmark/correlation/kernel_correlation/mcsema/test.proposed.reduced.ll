; ModuleID = '/tmp/tmpudwtjeoc-query.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x47b__rip__type = type <{ [8 x i8] }>
%G_0x59f__rip__type = type <{ [8 x i8] }>
%G_0x6ae__rip__type = type <{ [8 x i8] }>
%G_0x868__rip__type = type <{ [8 x i8] }>
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
@G_0x47b__rip_ = global %G_0x47b__rip__type zeroinitializer
@G_0x59f__rip_ = global %G_0x59f__rip__type zeroinitializer
@G_0x6ae__rip_ = global %G_0x6ae__rip__type zeroinitializer
@G_0x868__rip_ = global %G_0x868__rip__type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @ext_sqrt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @kernel_correlation(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
entry:
  %var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %var_2_10 = load i64, i64* %var_2_3, align 8
  %var_2_14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %var_2_40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %var_2_41 = add i64 %var_2_10, add (i64 ptrtoint (%G_0x868__rip__type* @G_0x868__rip_ to i64), i64 7)
  %var_2_42 = add i64 %var_2_10, 15
  store i64 %var_2_42, i64* %var_2_3, align 8
  %var_2_43 = inttoptr i64 %var_2_41 to i64*
  %var_2_44 = load i64, i64* %var_2_43, align 8
  %var_2_45 = bitcast %union.VectorReg* %var_2_40 to double*
  %var_2_46 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_40, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %var_2_44, i64* %var_2_46, align 1
  %var_2_61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %var_2_62 = load i64, i64* %RBP.i, align 8
  %var_2_63 = add i64 %var_2_62, -16
  %var_2_66 = bitcast %union.VectorReg* %var_2_61 to double*
  %var_2_67 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_61, i64 0, i32 0, i32 0, i32 0, i64 0
  %var_2_68 = load i64, i64* %var_2_67, align 1
  %var_2_69 = inttoptr i64 %var_2_63 to i64*
  store i64 %var_2_68, i64* %var_2_69, align 8
  %var_2_105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %var_2_106 = bitcast i64* %var_2_105 to double*
  %var_2_107 = bitcast %union.VectorReg* %var_2_61 to <4 x i32>*
  %var_2_109148 = load i64, i64* %RBP.i, align 8
  %var_2_110149 = add i64 %var_2_109148, -56
  %var_2_112150 = inttoptr i64 %var_2_110149 to i32*
  %var_2_113151 = load i32, i32* %var_2_112150, align 4
  %var_2_115152 = add i64 %var_2_109148, -4
  %var_2_117153 = inttoptr i64 %var_2_115152 to i32*
  %var_2_118154 = load i32, i32* %var_2_117153, align 4
  %var_2_119155 = sub i32 %var_2_113151, %var_2_118154
  %var_2_134156 = lshr i32 %var_2_119155, 31
  %var_2_136157 = lshr i32 %var_2_113151, 31
  %var_2_137158 = lshr i32 %var_2_118154, 31
  %var_2_138159 = xor i32 %var_2_137158, %var_2_136157
  %var_2_139160 = xor i32 %var_2_134156, %var_2_136157
  %var_2_140161 = add nuw nsw i32 %var_2_139160, %var_2_138159
  %var_2_141162 = icmp eq i32 %var_2_140161, 2
  %var_2_143163 = icmp ne i32 %var_2_134156, 0
  %var_2_144164 = xor i1 %var_2_143163, %var_2_141162
  br i1 %var_2_144164, label %block_400c23.preheader, label %block_.L_400caa

block_400c23.preheader:                           ; preds = %entry
  %var_2_165129 = add i64 %var_2_109148, -52
  %var_2_167130 = inttoptr i64 %var_2_165129 to i32*
  %var_2_170132 = add i64 %var_2_109148, -8
  %var_2_172133 = inttoptr i64 %var_2_170132 to i32*
  %var_2_201 = add i64 %var_2_109148, -24
  %var_2_203 = inttoptr i64 %var_2_201 to i64*
  %var_2_245 = add i64 %var_2_109148, -40
  %var_2_247 = inttoptr i64 %var_2_245 to i64*
  %var_2_293 = add i64 %var_2_109148, -16
  %var_2_295 = inttoptr i64 %var_2_293 to i64*
  br label %block_400c23

block_400c23:                                     ; preds = %block_.L_400c81, %block_400c23.preheader
  store <4 x i32> zeroinitializer, <4 x i32>* %var_2_107, align 1
  %var_2_168131 = load i32, i32* %var_2_167130, align 4
  %var_2_173134 = load i32, i32* %var_2_172133, align 4
  %var_2_174135 = sub i32 %var_2_168131, %var_2_173134
  %var_2_189136 = lshr i32 %var_2_174135, 31
  %var_2_191137 = lshr i32 %var_2_168131, 31
  %var_2_192138 = lshr i32 %var_2_173134, 31
  %var_2_193139 = xor i32 %var_2_192138, %var_2_191137
  %var_2_194140 = xor i32 %var_2_189136, %var_2_191137
  %var_2_195141 = add nuw nsw i32 %var_2_194140, %var_2_193139
  %var_2_196142 = icmp eq i32 %var_2_195141, 2
  %var_2_198143 = icmp ne i32 %var_2_189136, 0
  %var_2_199144 = xor i1 %var_2_198143, %var_2_196142
  br i1 %var_2_199144, label %block_400c46.preheader, label %block_.L_400c81

block_400c46.preheader:                           ; preds = %block_400c23
  br label %block_400c46

block_400c46:                                     ; preds = %block_400c46.preheader, %block_400c46
  %var_2_168146 = phi i32 [ %var_2_168, %block_400c46 ], [ %var_2_168131, %block_400c46.preheader ]
  %var_2_204 = load i64, i64* %var_2_203, align 8
  %var_2_207 = sext i32 %var_2_168146 to i64
  %var_2_208 = mul nsw i64 %var_2_207, 8000
  %var_2_210 = add i64 %var_2_208, %var_2_204
  %var_2_238 = load i32, i32* %var_2_112150, align 4
  %var_2_239 = sext i32 %var_2_238 to i64
  %var_2_240 = shl nsw i64 %var_2_239, 3
  %var_2_241 = add i64 %var_2_210, %var_2_240
  %var_2_243 = inttoptr i64 %var_2_241 to i64*
  %var_2_244 = load i64, i64* %var_2_243, align 8
  store i64 %var_2_244, i64* %var_2_67, align 1
  store double 0.000000e+00, double* %var_2_106, align 1
  %var_2_248 = load i64, i64* %var_2_247, align 8
  %var_2_250 = load i32, i32* %var_2_112150, align 4
  %var_2_251 = sext i32 %var_2_250 to i64
  %var_2_252 = shl nsw i64 %var_2_251, 3
  %var_2_253 = add i64 %var_2_252, %var_2_248
  %var_2_255 = bitcast i64 %var_2_244 to double
  %var_2_256 = inttoptr i64 %var_2_253 to double*
  %var_2_257 = load double, double* %var_2_256, align 8
  %var_2_258 = fadd double %var_2_255, %var_2_257
  store double %var_2_258, double* %var_2_66, align 1
  store i64 0, i64* %var_2_105, align 1
  %var_2_168 = load i32, i32* %var_2_167130, align 4
  %var_2_173 = load i32, i32* %var_2_172133, align 4
  %var_2_174 = sub i32 %var_2_168, %var_2_173
  %var_2_189 = lshr i32 %var_2_174, 31
  %var_2_191 = lshr i32 %var_2_168, 31
  %var_2_192 = lshr i32 %var_2_173, 31
  %var_2_193 = xor i32 %var_2_192, %var_2_191
  %var_2_194 = xor i32 %var_2_189, %var_2_191
  %var_2_195 = add nuw nsw i32 %var_2_194, %var_2_193
  %var_2_196 = icmp eq i32 %var_2_195, 2
  %var_2_198 = icmp ne i32 %var_2_189, 0
  %var_2_199 = xor i1 %var_2_198, %var_2_196
  br i1 %var_2_199, label %block_400c46, label %block_.L_400c81.loopexit

block_.L_400c81.loopexit:                         ; preds = %block_400c46
  br label %block_.L_400c81

block_.L_400c81:                                  ; preds = %block_.L_400c81.loopexit, %block_400c23
  %var_2_296 = load i64, i64* %var_2_295, align 8
  store i64 %var_2_296, i64* %var_2_67, align 1
  store double 0.000000e+00, double* %var_2_106, align 1
  %var_2_113 = load i32, i32* %var_2_112150, align 4
  %var_2_118 = load i32, i32* %var_2_117153, align 4
  %var_2_119 = sub i32 %var_2_113, %var_2_118
  %var_2_134 = lshr i32 %var_2_119, 31
  %var_2_136 = lshr i32 %var_2_113, 31
  %var_2_137 = lshr i32 %var_2_118, 31
  %var_2_138 = xor i32 %var_2_137, %var_2_136
  %var_2_139 = xor i32 %var_2_134, %var_2_136
  %var_2_140 = add nuw nsw i32 %var_2_139, %var_2_138
  %var_2_141 = icmp eq i32 %var_2_140, 2
  %var_2_143 = icmp ne i32 %var_2_134, 0
  %var_2_144 = xor i1 %var_2_143, %var_2_141
  br i1 %var_2_144, label %block_400c23, label %block_.L_400caa.loopexit

block_.L_400caa.loopexit:                         ; preds = %block_.L_400c81
  br label %block_.L_400caa

block_.L_400caa:                                  ; preds = %block_.L_400caa.loopexit, %entry
  %var_2_359112 = phi i32 [ %var_2_118154, %entry ], [ %var_2_118, %block_.L_400caa.loopexit ]
  %var_2_354109 = phi i32 [ %var_2_113151, %entry ], [ %var_2_113, %block_.L_400caa.loopexit ]
  %var_2_360113 = sub i32 %var_2_354109, %var_2_359112
  %var_2_375114 = lshr i32 %var_2_360113, 31
  %var_2_377115 = lshr i32 %var_2_354109, 31
  %var_2_378116 = lshr i32 %var_2_359112, 31
  %var_2_379117 = xor i32 %var_2_377115, %var_2_378116
  %var_2_380118 = xor i32 %var_2_375114, %var_2_377115
  %var_2_381119 = add nuw nsw i32 %var_2_380118, %var_2_379117
  %var_2_382120 = icmp eq i32 %var_2_381119, 2
  %var_2_384121 = icmp ne i32 %var_2_375114, 0
  %var_2_385122 = xor i1 %var_2_384121, %var_2_382120
  br i1 %var_2_385122, label %block_400cbd.preheader, label %block_.L_400dee

block_400cbd.preheader:                           ; preds = %block_.L_400caa
  br label %block_400cbd

block_400cbd:                                     ; preds = %block_400cbd.preheader, %block_.L_400dce
  %var_2_40586 = phi i64 [ %var_2_750, %block_.L_400dce ], [ %var_2_109148, %block_400cbd.preheader ]
  %MEMORY.2123 = phi %struct.Memory* [ %var_2_717, %block_.L_400dce ], [ %2, %block_400cbd.preheader ]
  store <4 x i32> zeroinitializer, <4 x i32>* %var_2_107, align 1
  %var_2_40687 = add i64 %var_2_40586, -52
  %var_2_40888 = inttoptr i64 %var_2_40687 to i32*
  %var_2_40989 = load i32, i32* %var_2_40888, align 4
  %var_2_41190 = add i64 %var_2_40586, -8
  %var_2_41391 = inttoptr i64 %var_2_41190 to i32*
  %var_2_41492 = load i32, i32* %var_2_41391, align 4
  %var_2_41593 = sub i32 %var_2_40989, %var_2_41492
  %var_2_43094 = lshr i32 %var_2_41593, 31
  %var_2_43295 = lshr i32 %var_2_40989, 31
  %var_2_43396 = lshr i32 %var_2_41492, 31
  %var_2_43497 = xor i32 %var_2_43396, %var_2_43295
  %var_2_43598 = xor i32 %var_2_43094, %var_2_43295
  %var_2_43699 = add nuw nsw i32 %var_2_43598, %var_2_43497
  %var_2_437100 = icmp eq i32 %var_2_43699, 2
  %var_2_439101 = icmp ne i32 %var_2_43094, 0
  %var_2_440102 = xor i1 %var_2_439101, %var_2_437100
  br i1 %var_2_440102, label %block_400ce0.preheader, label %block_400cbd.block_.L_400d54_crit_edge

block_400ce0.preheader:                           ; preds = %block_400cbd
  %var_2_442 = add i64 %var_2_40586, -24
  %var_2_444 = inttoptr i64 %var_2_442 to i64*
  %var_2_476 = add i64 %var_2_40586, -56
  %var_2_478 = inttoptr i64 %var_2_476 to i32*
  %var_2_486 = add i64 %var_2_40586, -40
  %var_2_488 = inttoptr i64 %var_2_486 to i64*
  %var_2_564 = add i64 %var_2_40586, -48
  %var_2_566 = inttoptr i64 %var_2_564 to i64*
  br label %block_400ce0

block_400cbd.block_.L_400d54_crit_edge:           ; preds = %block_400cbd
  %.pre = add i64 %var_2_40586, -48
  %.pre10 = inttoptr i64 %.pre to i64*
  %.pre11 = add i64 %var_2_40586, -56
  %.pre12 = inttoptr i64 %.pre11 to i32*
  br label %block_.L_400d54

block_400ce0:                                     ; preds = %block_400ce0, %block_400ce0.preheader
  %var_2_409104 = phi i32 [ %var_2_409, %block_400ce0 ], [ %var_2_40989, %block_400ce0.preheader ]
  %var_2_445 = load i64, i64* %var_2_444, align 8
  %var_2_448 = sext i32 %var_2_409104 to i64
  %var_2_449 = mul nsw i64 %var_2_448, 8000
  %var_2_451 = add i64 %var_2_449, %var_2_445
  %var_2_479 = load i32, i32* %var_2_478, align 4
  %var_2_480 = sext i32 %var_2_479 to i64
  %var_2_481 = shl nsw i64 %var_2_480, 3
  %var_2_482 = add i64 %var_2_451, %var_2_481
  %var_2_484 = inttoptr i64 %var_2_482 to i64*
  %var_2_485 = load i64, i64* %var_2_484, align 8
  store i64 %var_2_485, i64* %var_2_67, align 1
  store double 0.000000e+00, double* %var_2_106, align 1
  %var_2_489 = load i64, i64* %var_2_488, align 8
  %var_2_491 = load i32, i32* %var_2_478, align 4
  %var_2_492 = sext i32 %var_2_491 to i64
  %var_2_493 = shl nsw i64 %var_2_492, 3
  %var_2_494 = add i64 %var_2_493, %var_2_489
  %var_2_496 = bitcast i64 %var_2_485 to double
  %var_2_497 = inttoptr i64 %var_2_494 to double*
  %var_2_498 = load double, double* %var_2_497, align 8
  %var_2_499 = fsub double %var_2_496, %var_2_498
  store double %var_2_499, double* %var_2_66, align 1
  store i64 0, i64* %var_2_105, align 1
  %var_2_504 = load i64, i64* %var_2_444, align 8
  %var_2_508 = load i32, i32* %var_2_40888, align 4
  %var_2_509 = sext i32 %var_2_508 to i64
  %var_2_510 = mul nsw i64 %var_2_509, 8000
  %var_2_512 = add i64 %var_2_510, %var_2_504
  %var_2_540 = load i32, i32* %var_2_478, align 4
  %var_2_541 = sext i32 %var_2_540 to i64
  %var_2_542 = shl nsw i64 %var_2_541, 3
  %var_2_543 = add i64 %var_2_512, %var_2_542
  %var_4_3 = inttoptr i64 %var_2_543 to double*
  %var_2_5463 = load double, double* %var_4_3, align 8
  %var_2_550 = load i64, i64* %var_2_488, align 8
  %var_2_555 = add i64 %var_2_542, %var_2_550
  %var_2_558 = inttoptr i64 %var_2_555 to double*
  %var_2_559 = load double, double* %var_2_558, align 8
  %var_2_560 = fsub double %var_2_5463, %var_2_559
  %var_2_562 = fmul double %var_2_499, %var_2_560
  store double %var_2_562, double* %var_2_66, align 1
  %var_2_567 = load i64, i64* %var_2_566, align 8
  %var_2_571 = load i32, i32* %var_2_478, align 4
  %var_2_572 = sext i32 %var_2_571 to i64
  %var_2_573 = shl nsw i64 %var_2_572, 3
  %var_2_574 = add i64 %var_2_573, %var_2_567
  %var_2_576 = inttoptr i64 %var_2_574 to double*
  %var_2_577 = load double, double* %var_2_576, align 8
  %var_2_578 = fadd double %var_2_562, %var_2_577
  store double %var_2_578, double* %var_2_66, align 1
  %var_2_409 = load i32, i32* %var_2_40888, align 4
  %var_2_414 = load i32, i32* %var_2_41391, align 4
  %var_2_415 = sub i32 %var_2_409, %var_2_414
  %var_2_430 = lshr i32 %var_2_415, 31
  %var_2_432 = lshr i32 %var_2_409, 31
  %var_2_433 = lshr i32 %var_2_414, 31
  %var_2_434 = xor i32 %var_2_433, %var_2_432
  %var_2_435 = xor i32 %var_2_430, %var_2_432
  %var_2_436 = add nuw nsw i32 %var_2_435, %var_2_434
  %var_2_437 = icmp eq i32 %var_2_436, 2
  %var_2_439 = icmp ne i32 %var_2_430, 0
  %var_2_440 = xor i1 %var_2_439, %var_2_437
  br i1 %var_2_440, label %block_400ce0, label %block_.L_400d54.loopexit

block_.L_400d54.loopexit:                         ; preds = %block_400ce0
  br label %block_.L_400d54

block_.L_400d54:                                  ; preds = %block_.L_400d54.loopexit, %block_400cbd.block_.L_400d54_crit_edge
  %var_2_643.pre-phi = phi i32* [ %.pre12, %block_400cbd.block_.L_400d54_crit_edge ], [ %var_2_478, %block_.L_400d54.loopexit ]
  %var_2_639.pre-phi = phi i64* [ %.pre10, %block_400cbd.block_.L_400d54_crit_edge ], [ %var_2_566, %block_.L_400d54.loopexit ]
  %var_2_613 = add i64 %var_2_40586, -16
  %var_2_615 = inttoptr i64 %var_2_613 to i64*
  %var_2_616 = load i64, i64* %var_2_615, align 8
  store i64 %var_2_616, i64* %var_2_67, align 1
  store double 0.000000e+00, double* %var_2_106, align 1
  %var_2_637 = load i64, i64* %var_2_3, align 8
  %var_2_638 = add i64 %var_2_637, 4
  store i64 %var_2_638, i64* %var_2_3, align 8
  %var_2_640 = load i64, i64* %var_2_639.pre-phi, align 8
  %var_2_642 = add i64 %var_2_637, 8
  store i64 %var_2_642, i64* %var_2_3, align 8
  %var_2_644 = load i32, i32* %var_2_643.pre-phi, align 4
  %var_2_645 = sext i32 %var_2_644 to i64
  %var_2_646 = shl nsw i64 %var_2_645, 3
  %var_2_647 = add i64 %var_2_646, %var_2_640
  %var_2_648 = add i64 %var_2_637, 13
  store i64 %var_2_648, i64* %var_2_3, align 8
  %var_2_649 = inttoptr i64 %var_2_647 to i64*
  %var_2_650 = load i64, i64* %var_2_649, align 8
  store i64 %var_2_650, i64* %var_2_67, align 1
  store double 0.000000e+00, double* %var_2_106, align 1
  %var_2_651 = add i64 %var_2_637, -1679
  %call2_400d7c = tail call %struct.Memory* @ext_sqrt(%struct.State* nonnull %0, i64 %var_2_651, %struct.Memory* %MEMORY.2123)
  %var_2_656 = load i64, i64* %RBP.i, align 8
  %var_2_657 = add i64 %var_2_656, -48
  %var_2_658 = load i64, i64* %var_2_3, align 8
  %var_2_659 = add i64 %var_2_658, 4
  store i64 %var_2_659, i64* %var_2_3, align 8
  %var_2_660 = inttoptr i64 %var_2_657 to i64*
  %var_2_661 = load i64, i64* %var_2_660, align 8
  %var_2_662 = add i64 %var_2_656, -56
  %var_2_663 = add i64 %var_2_658, 8
  store i64 %var_2_663, i64* %var_2_3, align 8
  %var_2_664 = inttoptr i64 %var_2_662 to i32*
  %var_2_665 = load i32, i32* %var_2_664, align 4
  %var_2_666 = sext i32 %var_2_665 to i64
  %var_2_667 = shl nsw i64 %var_2_666, 3
  %var_2_668 = add i64 %var_2_667, %var_2_661
  %var_2_669 = add i64 %var_2_658, 13
  store i64 %var_2_669, i64* %var_2_3, align 8
  %var_2_670 = load i64, i64* %var_2_67, align 1
  %var_2_671 = inttoptr i64 %var_2_668 to i64*
  store i64 %var_2_670, i64* %var_2_671, align 8
  %var_2_672 = load i64, i64* %RBP.i, align 8
  %var_2_673 = add i64 %var_2_672, -48
  %var_2_674 = load i64, i64* %var_2_3, align 8
  %var_2_675 = add i64 %var_2_674, 4
  store i64 %var_2_675, i64* %var_2_3, align 8
  %var_2_676 = inttoptr i64 %var_2_673 to i64*
  %var_2_677 = load i64, i64* %var_2_676, align 8
  %var_2_678 = add i64 %var_2_672, -56
  %var_2_679 = add i64 %var_2_674, 8
  store i64 %var_2_679, i64* %var_2_3, align 8
  %var_2_680 = inttoptr i64 %var_2_678 to i32*
  %var_2_681 = load i32, i32* %var_2_680, align 4
  %var_2_682 = sext i32 %var_2_681 to i64
  %var_2_683 = shl nsw i64 %var_2_682, 3
  %var_2_684 = add i64 %var_2_683, %var_2_677
  %var_2_685 = add i64 %var_2_674, 13
  store i64 %var_2_685, i64* %var_2_3, align 8
  %var_2_686 = inttoptr i64 %var_2_684 to i64*
  %var_2_687 = load i64, i64* %var_2_686, align 8
  store i64 %var_2_687, i64* %var_2_67, align 1
  store double 0.000000e+00, double* %var_2_106, align 1
  %var_2_688 = add i64 %var_2_672, -72
  %var_4_4 = inttoptr i64 %var_2_688 to double*
  %var_2_6912 = load double, double* %var_4_4, align 8
  %var_2_692 = add i64 %var_2_674, 22
  %var_2_693 = bitcast i64 %var_2_687 to double
  %var_2_694 = fcmp uno double %var_2_6912, %var_2_693
  br i1 %var_2_694, label %var_2_695, label %routine_ucomisd__xmm0___xmm1.exit

var_2_695:                                        ; preds = %block_.L_400d54
  %var_2_696 = fadd double %var_2_693, %var_2_6912
  %var_2_697 = bitcast double %var_2_696 to i64
  %var_2_698 = and i64 %var_2_697, 9221120237041090560
  %var_2_699 = icmp eq i64 %var_2_698, 9218868437227405312
  %var_2_700 = and i64 %var_2_697, 2251799813685247
  %var_2_701 = icmp ne i64 %var_2_700, 0
  %var_2_702 = and i1 %var_2_699, %var_2_701
  br i1 %var_2_702, label %var_2_703, label %routine_ucomisd__xmm0___xmm1.exit

var_2_703:                                        ; preds = %var_2_695
  %var_2_704 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %var_2_692, %struct.Memory* %call2_400d7c)
  %.pre45 = load i64, i64* %var_2_3, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %var_2_703, %var_2_695, %block_.L_400d54
  %var_2_716 = phi i64 [ %.pre45, %var_2_703 ], [ %var_2_692, %var_2_695 ], [ %var_2_692, %block_.L_400d54 ]
  %var_2_717 = phi %struct.Memory* [ %var_2_704, %var_2_703 ], [ %call2_400d7c, %var_2_695 ], [ %call2_400d7c, %block_.L_400d54 ]
  %var_2_718 = load i8, i8* %var_2_14, align 1
  %cmpBr_400da4 = icmp eq i8 %var_2_718, 1
  br i1 %cmpBr_400da4, label %block_.L_400dbc, label %block_400daa

block_400daa:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %var_2_719 = icmp ne i8 %var_2_718, 0
  %.v74 = select i1 %var_2_719, i64 24, i64 6
  %var_2_720 = add i64 %var_2_716, ptrtoint (%G_0x6ae__rip__type* @G_0x6ae__rip_ to i64)
  %var_2_721 = add i64 %var_2_720, %.v74
  %var_2_723 = inttoptr i64 %var_2_721 to i64*
  %var_2_724 = load i64, i64* %var_2_723, align 8
  store i64 %var_2_724, i64* %var_2_67, align 1
  store double 0.000000e+00, double* %var_2_106, align 1
  %var_2_725 = load i64, i64* %RBP.i, align 8
  %var_2_726 = add i64 %var_2_725, -80
  %var_2_728 = inttoptr i64 %var_2_726 to i64*
  store i64 %var_2_724, i64* %var_2_728, align 8
  %var_2_750.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_400dce

block_.L_400dbc:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %var_2_731 = load i64, i64* %RBP.i, align 8
  %var_2_732 = add i64 %var_2_731, -48
  %var_2_734 = inttoptr i64 %var_2_732 to i64*
  %var_2_735 = load i64, i64* %var_2_734, align 8
  %var_2_736 = add i64 %var_2_731, -56
  %var_2_738 = inttoptr i64 %var_2_736 to i32*
  %var_2_739 = load i32, i32* %var_2_738, align 4
  %var_2_740 = sext i32 %var_2_739 to i64
  %var_2_741 = shl nsw i64 %var_2_740, 3
  %var_2_742 = add i64 %var_2_741, %var_2_735
  %var_2_744 = inttoptr i64 %var_2_742 to i64*
  %var_2_745 = load i64, i64* %var_2_744, align 8
  store i64 %var_2_745, i64* %var_2_67, align 1
  store double 0.000000e+00, double* %var_2_106, align 1
  br label %block_.L_400dce

block_.L_400dce:                                  ; preds = %block_.L_400dbc, %block_400daa
  %var_2_750 = phi i64 [ %var_2_731, %block_.L_400dbc ], [ %var_2_750.pre, %block_400daa ]
  %var_2_751 = add i64 %var_2_750, -80
  %var_2_753 = inttoptr i64 %var_2_751 to i64*
  %var_2_754 = load i64, i64* %var_2_753, align 8
  store i64 %var_2_754, i64* %var_2_67, align 1
  store double 0.000000e+00, double* %var_2_106, align 1
  %var_2_351 = add i64 %var_2_750, -56
  %var_2_353 = inttoptr i64 %var_2_351 to i32*
  %var_2_354 = load i32, i32* %var_2_353, align 4
  %var_2_356 = add i64 %var_2_750, -4
  %var_2_358 = inttoptr i64 %var_2_356 to i32*
  %var_2_359 = load i32, i32* %var_2_358, align 4
  %var_2_360 = sub i32 %var_2_354, %var_2_359
  %var_2_375 = lshr i32 %var_2_360, 31
  %var_2_377 = lshr i32 %var_2_354, 31
  %var_2_378 = lshr i32 %var_2_359, 31
  %var_2_379 = xor i32 %var_2_378, %var_2_377
  %var_2_380 = xor i32 %var_2_375, %var_2_377
  %var_2_381 = add nuw nsw i32 %var_2_380, %var_2_379
  %var_2_382 = icmp eq i32 %var_2_381, 2
  %var_2_384 = icmp ne i32 %var_2_375, 0
  %var_2_385 = xor i1 %var_2_384, %var_2_382
  br i1 %var_2_385, label %block_400cbd, label %block_.L_400dee.loopexit

block_.L_400dee.loopexit:                         ; preds = %block_.L_400dce
  br label %block_.L_400dee

block_.L_400dee:                                  ; preds = %block_.L_400dee.loopexit, %block_.L_400caa
  %var_2_80465 = phi i64 [ %var_2_109148, %block_.L_400caa ], [ %var_2_750, %block_.L_400dee.loopexit ]
  %MEMORY.2.lcssa = phi %struct.Memory* [ %2, %block_.L_400caa ], [ %var_2_717, %block_.L_400dee.loopexit ]
  %var_2_80566 = add i64 %var_2_80465, -52
  %var_2_80767 = inttoptr i64 %var_2_80566 to i32*
  %var_2_80868 = load i32, i32* %var_2_80767, align 4
  %var_2_81069 = add i64 %var_2_80465, -8
  %var_2_81270 = inttoptr i64 %var_2_81069 to i32*
  %var_2_81371 = load i32, i32* %var_2_81270, align 4
  %var_2_81472 = sub i32 %var_2_80868, %var_2_81371
  %var_2_82973 = lshr i32 %var_2_81472, 31
  %var_2_83174 = lshr i32 %var_2_80868, 31
  %var_2_83275 = lshr i32 %var_2_81371, 31
  %var_2_83376 = xor i32 %var_2_83275, %var_2_83174
  %var_2_83477 = xor i32 %var_2_82973, %var_2_83174
  %var_2_83578 = add nuw nsw i32 %var_2_83477, %var_2_83376
  %var_2_83679 = icmp eq i32 %var_2_83578, 2
  %var_2_83880 = icmp ne i32 %var_2_82973, 0
  %var_2_83981 = xor i1 %var_2_83880, %var_2_83679
  br i1 %var_2_83981, label %block_400e01.preheader, label %block_.L_400ea1

block_400e01.preheader:                           ; preds = %block_.L_400dee
  br label %block_400e01

block_.L_400df5.loopexit.loopexit:                ; preds = %block_400e14
  br label %block_.L_400df5.loopexit

block_.L_400df5.loopexit:                         ; preds = %block_.L_400df5.loopexit.loopexit, %block_400e01
  %var_2_845447 = phi i64 [ %var_2_84544, %block_400e01 ], [ %var_2_845, %block_.L_400df5.loopexit.loopexit ]
  %MEMORY.6.lcssa = phi %struct.Memory* [ %MEMORY.582, %block_400e01 ], [ %call2_400e4a, %block_.L_400df5.loopexit.loopexit ]
  %var_2_805 = add i64 %var_2_845447, -52
  %var_2_807 = inttoptr i64 %var_2_805 to i32*
  %var_2_808 = load i32, i32* %var_2_807, align 4
  %var_2_810 = add i64 %var_2_845447, -8
  %var_2_812 = inttoptr i64 %var_2_810 to i32*
  %var_2_813 = load i32, i32* %var_2_812, align 4
  %var_2_814 = sub i32 %var_2_808, %var_2_813
  %var_2_829 = lshr i32 %var_2_814, 31
  %var_2_831 = lshr i32 %var_2_808, 31
  %var_2_832 = lshr i32 %var_2_813, 31
  %var_2_833 = xor i32 %var_2_832, %var_2_831
  %var_2_834 = xor i32 %var_2_829, %var_2_831
  %var_2_835 = add nuw nsw i32 %var_2_834, %var_2_833
  %var_2_836 = icmp eq i32 %var_2_835, 2
  %var_2_838 = icmp ne i32 %var_2_829, 0
  %var_2_839 = xor i1 %var_2_838, %var_2_836
  br i1 %var_2_839, label %block_400e01, label %block_.L_400ea1.loopexit

block_400e01:                                     ; preds = %block_400e01.preheader, %block_.L_400df5.loopexit
  %var_2_84544 = phi i64 [ %var_2_845447, %block_.L_400df5.loopexit ], [ %var_2_80465, %block_400e01.preheader ]
  %MEMORY.582 = phi %struct.Memory* [ %MEMORY.6.lcssa, %block_.L_400df5.loopexit ], [ %MEMORY.2.lcssa, %block_400e01.preheader ]
  %var_2_84645 = add i64 %var_2_84544, -56
  %var_2_84846 = inttoptr i64 %var_2_84645 to i32*
  %var_2_84947 = load i32, i32* %var_2_84846, align 4
  %var_2_85148 = add i64 %var_2_84544, -4
  %var_2_85349 = inttoptr i64 %var_2_85148 to i32*
  %var_2_85450 = load i32, i32* %var_2_85349, align 4
  %var_2_85551 = sub i32 %var_2_84947, %var_2_85450
  %var_2_87052 = lshr i32 %var_2_85551, 31
  %var_2_87253 = lshr i32 %var_2_84947, 31
  %var_2_87354 = lshr i32 %var_2_85450, 31
  %var_2_87455 = xor i32 %var_2_87354, %var_2_87253
  %var_2_87556 = xor i32 %var_2_87052, %var_2_87253
  %var_2_87657 = add nuw nsw i32 %var_2_87556, %var_2_87455
  %var_2_87758 = icmp eq i32 %var_2_87657, 2
  %var_2_87959 = icmp ne i32 %var_2_87052, 0
  %var_2_88060 = xor i1 %var_2_87959, %var_2_87758
  br i1 %var_2_88060, label %block_400e14.preheader, label %block_.L_400df5.loopexit

block_400e14.preheader:                           ; preds = %block_400e01
  br label %block_400e14

block_400e14:                                     ; preds = %block_400e14.preheader, %block_400e14
  %var_2_84963 = phi i32 [ %var_2_849, %block_400e14 ], [ %var_2_84947, %block_400e14.preheader ]
  %var_2_942 = phi i64 [ %var_2_845, %block_400e14 ], [ %var_2_84544, %block_400e14.preheader ]
  %MEMORY.661 = phi %struct.Memory* [ %call2_400e4a, %block_400e14 ], [ %MEMORY.582, %block_400e14.preheader ]
  %var_2_882 = add i64 %var_2_942, -40
  %var_2_884 = inttoptr i64 %var_2_882 to i64*
  %var_2_885 = load i64, i64* %var_2_884, align 8
  %var_2_888 = sext i32 %var_2_84963 to i64
  %var_2_889 = shl nsw i64 %var_2_888, 3
  %var_2_890 = add i64 %var_2_885, %var_2_889
  %var_2_892 = inttoptr i64 %var_2_890 to i64*
  %var_2_893 = load i64, i64* %var_2_892, align 8
  store i64 %var_2_893, i64* %var_2_67, align 1
  store double 0.000000e+00, double* %var_2_106, align 1
  %var_2_943 = add i64 %var_2_942, -16
  %var_2_944 = load i64, i64* %var_2_3, align 8
  %var_2_946 = inttoptr i64 %var_2_943 to i64*
  %var_2_947 = load i64, i64* %var_2_946, align 8
  store i64 %var_2_947, i64* %var_2_67, align 1
  store double 0.000000e+00, double* %var_2_106, align 1
  %var_2_948 = add i64 %var_2_944, -1893
  %call2_400e4a = tail call %struct.Memory* @ext_sqrt(%struct.State* nonnull %0, i64 %var_2_948, %struct.Memory* %MEMORY.661)
  %var_2_953 = load i64, i64* %RBP.i, align 8
  %var_2_954 = add i64 %var_2_953, -48
  %var_2_955 = load i64, i64* %var_2_3, align 8
  %var_2_956 = add i64 %var_2_955, 4
  store i64 %var_2_956, i64* %var_2_3, align 8
  %var_2_957 = inttoptr i64 %var_2_954 to i64*
  %var_2_958 = load i64, i64* %var_2_957, align 8
  %var_2_959 = add i64 %var_2_953, -56
  %var_2_960 = add i64 %var_2_955, 8
  store i64 %var_2_960, i64* %var_2_3, align 8
  %var_2_961 = inttoptr i64 %var_2_959 to i32*
  %var_2_962 = load i32, i32* %var_2_961, align 4
  %var_2_963 = sext i32 %var_2_962 to i64
  %var_2_964 = shl nsw i64 %var_2_963, 3
  %var_2_965 = add i64 %var_2_964, %var_2_958
  %var_2_966 = add i64 %var_2_955, 13
  store i64 %var_2_966, i64* %var_2_3, align 8
  %var_2_967 = load double, double* %var_2_66, align 1
  %var_2_968 = inttoptr i64 %var_2_965 to double*
  %var_2_969 = load double, double* %var_2_968, align 8
  %var_2_970 = fmul double %var_2_967, %var_2_969
  store double %var_2_970, double* %var_2_66, align 1
  %var_2_971 = add i64 %var_2_953, -24
  %var_2_972 = add i64 %var_2_955, 17
  store i64 %var_2_972, i64* %var_2_3, align 8
  %var_2_973 = inttoptr i64 %var_2_971 to i64*
  %var_2_974 = load i64, i64* %var_2_973, align 8
  %var_2_975 = add i64 %var_2_953, -52
  %var_2_976 = add i64 %var_2_955, 21
  store i64 %var_2_976, i64* %var_2_3, align 8
  %var_2_977 = inttoptr i64 %var_2_975 to i32*
  %var_2_978 = load i32, i32* %var_2_977, align 4
  %var_2_979 = sext i32 %var_2_978 to i64
  %var_2_980 = mul nsw i64 %var_2_979, 8000
  %var_2_982 = add i64 %var_2_980, %var_2_974
  %var_2_1009 = add i64 %var_2_955, 35
  store i64 %var_2_1009, i64* %var_2_3, align 8
  %var_2_1011 = load i32, i32* %var_2_961, align 4
  %var_2_1012 = sext i32 %var_2_1011 to i64
  %var_2_1013 = shl nsw i64 %var_2_1012, 3
  %var_2_1014 = add i64 %var_2_982, %var_2_1013
  %var_2_1015 = add i64 %var_2_955, 40
  store i64 %var_2_1015, i64* %var_2_3, align 8
  %var_2_1016 = inttoptr i64 %var_2_1014 to double*
  %var_2_1017 = load double, double* %var_2_1016, align 8
  %var_2_1018 = fdiv double %var_2_1017, %var_2_970
  store double %var_2_1018, double* %var_2_45, align 1
  %var_2_1019 = add i64 %var_2_955, 49
  store i64 %var_2_1019, i64* %var_2_3, align 8
  store double %var_2_1018, double* %var_2_1016, align 8
  %var_2_845 = load i64, i64* %RBP.i, align 8
  %var_2_846 = add i64 %var_2_845, -56
  %var_2_848 = inttoptr i64 %var_2_846 to i32*
  %var_2_849 = load i32, i32* %var_2_848, align 4
  %var_2_851 = add i64 %var_2_845, -4
  %var_2_853 = inttoptr i64 %var_2_851 to i32*
  %var_2_854 = load i32, i32* %var_2_853, align 4
  %var_2_855 = sub i32 %var_2_849, %var_2_854
  %var_2_870 = lshr i32 %var_2_855, 31
  %var_2_872 = lshr i32 %var_2_849, 31
  %var_2_873 = lshr i32 %var_2_854, 31
  %var_2_874 = xor i32 %var_2_873, %var_2_872
  %var_2_875 = xor i32 %var_2_870, %var_2_872
  %var_2_876 = add nuw nsw i32 %var_2_875, %var_2_874
  %var_2_877 = icmp eq i32 %var_2_876, 2
  %var_2_879 = icmp ne i32 %var_2_870, 0
  %var_2_880 = xor i1 %var_2_879, %var_2_877
  br i1 %var_2_880, label %block_400e14, label %block_.L_400df5.loopexit.loopexit

block_.L_400ea1.loopexit:                         ; preds = %block_.L_400df5.loopexit
  br label %block_.L_400ea1

block_.L_400ea1:                                  ; preds = %block_.L_400ea1.loopexit, %block_.L_400dee
  %var_2_1088.pre = phi i64 [ %var_2_80465, %block_.L_400dee ], [ %var_2_845447, %block_.L_400ea1.loopexit ]
  %MEMORY.5.lcssa = phi %struct.Memory* [ %MEMORY.2.lcssa, %block_.L_400dee ], [ %MEMORY.6.lcssa, %block_.L_400ea1.loopexit ]
  %.pre40 = load i64, i64* %var_2_3, align 8
  br label %block_.L_400ea8

block_.L_400ea8:                                  ; preds = %block_.L_400fca, %block_.L_400ea1
  %var_2_1687 = phi i64 [ %var_2_1088176, %block_.L_400fca ], [ %var_2_1088.pre, %block_.L_400ea1 ]
  %var_2_1087 = phi i64 [ %var_2_1646, %block_.L_400fca ], [ %.pre40, %block_.L_400ea1 ]
  %var_2_1089 = add i64 %var_2_1687, -60
  %var_2_1091 = inttoptr i64 %var_2_1089 to i32*
  %var_2_1092 = load i32, i32* %var_2_1091, align 4
  %var_2_1094 = add i64 %var_2_1687, -4
  %var_2_1096 = inttoptr i64 %var_2_1094 to i32*
  %var_2_1097 = load i32, i32* %var_2_1096, align 4
  %var_2_1098 = add i32 %var_2_1097, -1
  %var_2_1100 = lshr i32 %var_2_1098, 31
  %var_2_1101 = sub i32 %var_2_1092, %var_2_1098
  %var_2_1116 = lshr i32 %var_2_1101, 31
  %var_2_1118 = lshr i32 %var_2_1092, 31
  %var_2_1119 = xor i32 %var_2_1100, %var_2_1118
  %var_2_1120 = xor i32 %var_2_1116, %var_2_1118
  %var_2_1121 = add nuw nsw i32 %var_2_1120, %var_2_1119
  %var_2_1122 = icmp eq i32 %var_2_1121, 2
  %var_2_1124 = icmp ne i32 %var_2_1116, 0
  %var_2_1125 = xor i1 %var_2_1124, %var_2_1122
  %.v52 = select i1 %var_2_1125, i64 17, i64 309
  %var_2_1126 = add i64 %.v52, %var_2_1087
  store i64 %var_2_1126, i64* %var_2_3, align 8
  br i1 %var_2_1125, label %block_400eb9, label %block_.L_400fdd

block_400eb9:                                     ; preds = %block_.L_400ea8
  %var_2_1127 = add i64 %var_2_1126, ptrtoint (%G_0x59f__rip__type* @G_0x59f__rip_ to i64)
  %var_2_1128 = add i64 %var_2_1126, 8
  store i64 %var_2_1128, i64* %var_2_3, align 8
  %var_2_1129 = inttoptr i64 %var_2_1127 to i64*
  %var_2_1130 = load i64, i64* %var_2_1129, align 8
  store i64 %var_2_1130, i64* %var_2_67, align 1
  store double 0.000000e+00, double* %var_2_106, align 1
  %var_2_1131 = add i64 %var_2_1687, -32
  %var_2_1133 = inttoptr i64 %var_2_1131 to i64*
  %var_2_1134 = load i64, i64* %var_2_1133, align 8
  %var_2_1136 = load i32, i32* %var_2_1091, align 4
  %var_2_1137 = sext i32 %var_2_1136 to i64
  %tmp4 = mul nsw i64 %var_2_1137, 8008
  %var_2_1169 = add i64 %tmp4, %var_2_1134
  %var_2_1171 = inttoptr i64 %var_2_1169 to i64*
  store i64 %var_2_1130, i64* %var_2_1171, align 8
  %var_2_120525 = load i64, i64* %RBP.i, align 8
  %var_2_120626 = add i64 %var_2_120525, -64
  %var_2_120827 = inttoptr i64 %var_2_120626 to i32*
  %var_2_120928 = load i32, i32* %var_2_120827, align 4
  %var_2_121129 = add i64 %var_2_120525, -4
  %var_2_121330 = inttoptr i64 %var_2_121129 to i32*
  %var_2_121431 = load i32, i32* %var_2_121330, align 4
  %var_2_121532 = sub i32 %var_2_120928, %var_2_121431
  %var_2_123033 = lshr i32 %var_2_121532, 31
  %var_2_123234 = lshr i32 %var_2_120928, 31
  %var_2_123335 = lshr i32 %var_2_121431, 31
  %var_2_123436 = xor i32 %var_2_123335, %var_2_123234
  %var_2_123537 = xor i32 %var_2_123033, %var_2_123234
  %var_2_123638 = add nuw nsw i32 %var_2_123537, %var_2_123436
  %var_2_123739 = icmp eq i32 %var_2_123638, 2
  %var_2_123940 = icmp ne i32 %var_2_123033, 0
  %var_2_124041 = xor i1 %var_2_123940, %var_2_123739
  br i1 %var_2_124041, label %block_400ef1.preheader, label %block_.L_400fca

block_400ef1.preheader:                           ; preds = %block_400eb9
  br label %block_400ef1

block_400ef1:                                     ; preds = %block_400ef1.preheader, %block_.L_400f86
  %var_2_120843 = phi i32* [ %var_2_1535.pre-phi, %block_.L_400f86 ], [ %var_2_120827, %block_400ef1.preheader ]
  %var_2_120542 = phi i64 [ %var_2_12925, %block_.L_400f86 ], [ %var_2_120525, %block_400ef1.preheader ]
  store <4 x i32> zeroinitializer, <4 x i32>* %var_2_107, align 1
  %var_2_1242 = add i64 %var_2_120542, -32
  %var_2_1244 = inttoptr i64 %var_2_1242 to i64*
  %var_2_1245 = load i64, i64* %var_2_1244, align 8
  %var_2_1246 = add i64 %var_2_120542, -60
  %var_2_1248 = inttoptr i64 %var_2_1246 to i32*
  %var_2_1249 = load i32, i32* %var_2_1248, align 4
  %var_2_1250 = sext i32 %var_2_1249 to i64
  %var_2_1251 = mul nsw i64 %var_2_1250, 8000
  %var_2_1253 = add i64 %var_2_1251, %var_2_1245
  %var_2_1279 = load i32, i32* %var_2_120843, align 4
  %var_2_1280 = sext i32 %var_2_1279 to i64
  %var_2_1281 = shl nsw i64 %var_2_1280, 3
  %var_2_1282 = add i64 %var_2_1253, %var_2_1281
  %var_2_1285 = inttoptr i64 %var_2_1282 to i64*
  store i64 0, i64* %var_2_1285, align 8
  %var_2_12925 = load i64, i64* %RBP.i, align 8
  %var_2_12936 = add i64 %var_2_12925, -52
  %var_2_12957 = inttoptr i64 %var_2_12936 to i32*
  %var_2_12968 = load i32, i32* %var_2_12957, align 4
  %var_2_12989 = add i64 %var_2_12925, -8
  %var_2_130010 = inttoptr i64 %var_2_12989 to i32*
  %var_2_130111 = load i32, i32* %var_2_130010, align 4
  %var_2_130212 = sub i32 %var_2_12968, %var_2_130111
  %var_2_131713 = lshr i32 %var_2_130212, 31
  %var_2_131914 = lshr i32 %var_2_12968, 31
  %var_2_132015 = lshr i32 %var_2_130111, 31
  %var_2_132116 = xor i32 %var_2_132015, %var_2_131914
  %var_2_132217 = xor i32 %var_2_131713, %var_2_131914
  %var_2_132318 = add nuw nsw i32 %var_2_132217, %var_2_132116
  %var_2_132419 = icmp eq i32 %var_2_132318, 2
  %var_2_132620 = icmp ne i32 %var_2_131713, 0
  %var_2_132721 = xor i1 %var_2_132620, %var_2_132419
  br i1 %var_2_132721, label %block_400f22.preheader, label %block_400ef1.block_.L_400f86_crit_edge

block_400f22.preheader:                           ; preds = %block_400ef1
  %var_2_1329 = add i64 %var_2_12925, -24
  %var_2_1331 = inttoptr i64 %var_2_1329 to i64*
  %var_2_1363 = add i64 %var_2_12925, -60
  %var_2_1365 = inttoptr i64 %var_2_1363 to i32*
  %var_2_1406 = add i64 %var_2_12925, -64
  %var_2_1408 = inttoptr i64 %var_2_1406 to i32*
  %var_2_1418 = add i64 %var_2_12925, -32
  %var_2_1420 = inttoptr i64 %var_2_1418 to i64*
  br label %block_400f22

block_400ef1.block_.L_400f86_crit_edge:           ; preds = %block_400ef1
  %.pre178 = add i64 %var_2_12925, -32
  %.pre179 = inttoptr i64 %.pre178 to i64*
  %.pre180 = add i64 %var_2_12925, -60
  %.pre181 = inttoptr i64 %.pre180 to i32*
  %.pre182 = add i64 %var_2_12925, -64
  %.pre183 = inttoptr i64 %.pre182 to i32*
  br label %block_.L_400f86

block_400f22:                                     ; preds = %block_400f22, %block_400f22.preheader
  %var_2_129624 = phi i32 [ %var_2_1296, %block_400f22 ], [ %var_2_12968, %block_400f22.preheader ]
  %var_2_1332 = load i64, i64* %var_2_1331, align 8
  %var_2_1335 = sext i32 %var_2_129624 to i64
  %var_2_1336 = mul nsw i64 %var_2_1335, 8000
  %var_2_1338 = add i64 %var_2_1336, %var_2_1332
  %var_2_1366 = load i32, i32* %var_2_1365, align 4
  %var_2_1367 = sext i32 %var_2_1366 to i64
  %var_2_1368 = shl nsw i64 %var_2_1367, 3
  %var_2_1369 = add i64 %var_2_1338, %var_2_1368
  %var_2_1371 = inttoptr i64 %var_2_1369 to i64*
  %var_2_1372 = load i64, i64* %var_2_1371, align 8
  store i64 %var_2_1372, i64* %var_2_67, align 1
  store double 0.000000e+00, double* %var_2_106, align 1
  %var_2_1374 = load i64, i64* %var_2_1331, align 8
  %var_2_1376 = load i32, i32* %var_2_12957, align 4
  %var_2_1377 = sext i32 %var_2_1376 to i64
  %var_2_1378 = mul nsw i64 %var_2_1377, 8000
  %var_2_1380 = add i64 %var_2_1378, %var_2_1374
  %var_2_1409 = load i32, i32* %var_2_1408, align 4
  %var_2_1410 = sext i32 %var_2_1409 to i64
  %var_2_1411 = shl nsw i64 %var_2_1410, 3
  %var_2_1412 = add i64 %var_2_1380, %var_2_1411
  %var_2_1414 = bitcast i64 %var_2_1372 to double
  %var_2_1415 = inttoptr i64 %var_2_1412 to double*
  %var_2_1416 = load double, double* %var_2_1415, align 8
  %var_2_1417 = fmul double %var_2_1414, %var_2_1416
  store double %var_2_1417, double* %var_2_66, align 1
  store i64 0, i64* %var_2_105, align 1
  %var_2_1421 = load i64, i64* %var_2_1420, align 8
  %var_2_1425 = load i32, i32* %var_2_1365, align 4
  %var_2_1426 = sext i32 %var_2_1425 to i64
  %var_2_1427 = mul nsw i64 %var_2_1426, 8000
  %var_2_1429 = add i64 %var_2_1427, %var_2_1421
  %var_2_1455 = load i32, i32* %var_2_1408, align 4
  %var_2_1456 = sext i32 %var_2_1455 to i64
  %var_2_1457 = shl nsw i64 %var_2_1456, 3
  %var_2_1458 = add i64 %var_2_1429, %var_2_1457
  %var_2_1460 = inttoptr i64 %var_2_1458 to double*
  %var_2_1461 = load double, double* %var_2_1460, align 8
  %var_2_1462 = fadd double %var_2_1417, %var_2_1461
  store double %var_2_1462, double* %var_2_66, align 1
  store i64 0, i64* %var_2_105, align 1
  %var_2_1296 = load i32, i32* %var_2_12957, align 4
  %var_2_1301 = load i32, i32* %var_2_130010, align 4
  %var_2_1302 = sub i32 %var_2_1296, %var_2_1301
  %var_2_1317 = lshr i32 %var_2_1302, 31
  %var_2_1319 = lshr i32 %var_2_1296, 31
  %var_2_1320 = lshr i32 %var_2_1301, 31
  %var_2_1321 = xor i32 %var_2_1320, %var_2_1319
  %var_2_1322 = xor i32 %var_2_1317, %var_2_1319
  %var_2_1323 = add nuw nsw i32 %var_2_1322, %var_2_1321
  %var_2_1324 = icmp eq i32 %var_2_1323, 2
  %var_2_1326 = icmp ne i32 %var_2_1317, 0
  %var_2_1327 = xor i1 %var_2_1326, %var_2_1324
  br i1 %var_2_1327, label %block_400f22, label %block_.L_400f86.loopexit

block_.L_400f86.loopexit:                         ; preds = %block_400f22
  br label %block_.L_400f86

block_.L_400f86:                                  ; preds = %block_.L_400f86.loopexit, %block_400ef1.block_.L_400f86_crit_edge
  %var_2_1535.pre-phi = phi i32* [ %.pre183, %block_400ef1.block_.L_400f86_crit_edge ], [ %var_2_1408, %block_.L_400f86.loopexit ]
  %var_2_1503.pre-phi = phi i32* [ %.pre181, %block_400ef1.block_.L_400f86_crit_edge ], [ %var_2_1365, %block_.L_400f86.loopexit ]
  %var_2_1499.pre-phi = phi i64* [ %.pre179, %block_400ef1.block_.L_400f86_crit_edge ], [ %var_2_1420, %block_.L_400f86.loopexit ]
  %var_2_1500 = load i64, i64* %var_2_1499.pre-phi, align 8
  %var_2_1504 = load i32, i32* %var_2_1503.pre-phi, align 4
  %var_2_1505 = sext i32 %var_2_1504 to i64
  %var_2_1506 = mul nsw i64 %var_2_1505, 8000
  %var_2_1508 = add i64 %var_2_1506, %var_2_1500
  %var_2_1536 = load i32, i32* %var_2_1535.pre-phi, align 4
  %var_2_1537 = sext i32 %var_2_1536 to i64
  %var_2_1538 = shl nsw i64 %var_2_1537, 3
  %var_2_1539 = add i64 %var_2_1508, %var_2_1538
  %var_2_1541 = inttoptr i64 %var_2_1539 to i64*
  %var_2_1542 = load i64, i64* %var_2_1541, align 8
  store i64 %var_2_1542, i64* %var_2_67, align 1
  store double 0.000000e+00, double* %var_2_106, align 1
  %var_2_1209 = load i32, i32* %var_2_1535.pre-phi, align 4
  %var_2_1211 = add i64 %var_2_12925, -4
  %var_2_1213 = inttoptr i64 %var_2_1211 to i32*
  %var_2_1214 = load i32, i32* %var_2_1213, align 4
  %var_2_1215 = sub i32 %var_2_1209, %var_2_1214
  %var_2_1230 = lshr i32 %var_2_1215, 31
  %var_2_1232 = lshr i32 %var_2_1209, 31
  %var_2_1233 = lshr i32 %var_2_1214, 31
  %var_2_1234 = xor i32 %var_2_1233, %var_2_1232
  %var_2_1235 = xor i32 %var_2_1230, %var_2_1232
  %var_2_1236 = add nuw nsw i32 %var_2_1235, %var_2_1234
  %var_2_1237 = icmp eq i32 %var_2_1236, 2
  %var_2_1239 = icmp ne i32 %var_2_1230, 0
  %var_2_1240 = xor i1 %var_2_1239, %var_2_1237
  br i1 %var_2_1240, label %block_400ef1, label %block_.L_400fca.loopexit

block_.L_400fca.loopexit:                         ; preds = %block_.L_400f86
  br label %block_.L_400fca

block_.L_400fca:                                  ; preds = %block_.L_400fca.loopexit, %block_400eb9
  %var_2_1088176 = phi i64 [ %var_2_120525, %block_400eb9 ], [ %var_2_12925, %block_.L_400fca.loopexit ]
  %var_2_1645 = load i64, i64* %var_2_3, align 8
  %var_2_1646 = add i64 %var_2_1645, -304
  br label %block_.L_400ea8

block_.L_400fdd:                                  ; preds = %block_.L_400ea8
  %var_2_1647 = add i64 %var_2_1126, ptrtoint (%G_0x47b__rip__type* @G_0x47b__rip_ to i64)
  %var_2_1648 = add i64 %var_2_1126, 8
  store i64 %var_2_1648, i64* %var_2_3, align 8
  %var_2_1649 = inttoptr i64 %var_2_1647 to i64*
  %var_2_1650 = load i64, i64* %var_2_1649, align 8
  store i64 %var_2_1650, i64* %var_2_67, align 1
  store double 0.000000e+00, double* %var_2_106, align 1
  %var_2_1651 = add i64 %var_2_1687, -32
  %var_2_1653 = inttoptr i64 %var_2_1651 to i64*
  %var_2_1654 = load i64, i64* %var_2_1653, align 8
  %var_2_1656 = load i32, i32* %var_2_1096, align 4
  %var_2_1657 = add i32 %var_2_1656, -1
  %var_2_1659 = sext i32 %var_2_1657 to i64
  %tmp1 = mul nsw i64 %var_2_1659, 8008
  %var_2_1696 = add i64 %tmp1, %var_2_1654
  %var_2_1699 = inttoptr i64 %var_2_1696 to i64*
  store i64 %var_2_1650, i64* %var_2_1699, align 8
  ret %struct.Memory* %MEMORY.5.lcssa
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
define %struct.Memory* @routine_movsd_0x868__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x868__rip__type* @G_0x868__rip_ to i64)
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
define %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r9__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %R9, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movl__0x0__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -4
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
define %struct.Memory* @routine_jge_.L_400caa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_movl__0x0__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_jge_.L_400c81(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_imulq__0x1f40___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 8000
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 192
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
define %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addsd___rax__rcx_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 3
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to double*
  %11 = load double, double* %10, align 1
  %12 = inttoptr i64 %7 to double*
  %13 = load double, double* %12, align 8
  %14 = fadd double %11, %13
  store double %14, double* %10, align 1
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
define %struct.Memory* @routine_jmpq_.L_400c3a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movsd___rax__rcx_8____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %10, i64* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to double*
  store double 0.000000e+00, double* %13, align 1
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
define %struct.Memory* @routine_movsd__xmm1____rax__rcx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %6 to i64*
  store i64 %10, i64* %11, align 8
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
define %struct.Memory* @routine_jmpq_.L_400c17(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_400dee(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_400d54(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subsd___rax__rcx_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 3
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to double*
  %11 = load double, double* %10, align 1
  %12 = inttoptr i64 %7 to double*
  %13 = load double, double* %12, align 8
  %14 = fsub double %11, %13
  store double %14, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd___rax__rcx_8____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 3
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to double*
  %11 = load double, double* %10, align 1
  %12 = inttoptr i64 %7 to double*
  %13 = load double, double* %12, align 8
  %14 = fsub double %11, %13
  store double %14, double* %10, align 1
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
define %struct.Memory* @routine_jmpq_.L_400cd4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jb_.L_400dbc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x6ae__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x6ae__rip__type* @G_0x6ae__rip_ to i64)
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
define %struct.Memory* @routine_jmpq_.L_400dce(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400cb1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_400ea1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_400e8e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subsd__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 3
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to double*
  %11 = load double, double* %10, align 1
  %12 = inttoptr i64 %7 to double*
  %13 = load double, double* %12, align 8
  %14 = fmul double %11, %13
  store double %14, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400e08(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400e93(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400df5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_subl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_jge_.L_400fdd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x59f__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x59f__rip__type* @G_0x59f__rip_ to i64)
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
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_addl__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__edx__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_jge_.L_400fca(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x40__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_jge_.L_400f86(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_400f16(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_400ee5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400fcf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_400ea8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x47b__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x47b__rip__type* @G_0x47b__rip_ to i64)
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
define %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x1f40___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 8000
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 192
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
define %struct.Memory* @routine_addq__rdx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
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
