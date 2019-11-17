; ModuleID = '/tmp/tmpe5bxaiq5-query.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G__0x401e52_type = type <{ [4 x i8] }>
%G__0x401e53_type = type <{ [4 x i8] }>
%G__0x401e55_type = type <{ [4 x i8] }>
%G__0x401e56_type = type <{ [4 x i8] }>
%G__0x401e58_type = type <{ [4 x i8] }>
%G__0x401e5a_type = type <{ [4 x i8] }>
%G__0x401e5c_type = type <{ [4 x i8] }>
%G__0x401e5d_type = type <{ [4 x i8] }>
%G__0x401e5f_type = type <{ [4 x i8] }>
%G__0x401e60_type = type <{ [4 x i8] }>
%G__0x401e62_type = type <{ [8 x i8] }>
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
@G__0x401e52 = global %G__0x401e52_type zeroinitializer
@G__0x401e53 = global %G__0x401e53_type zeroinitializer
@G__0x401e55 = global %G__0x401e55_type zeroinitializer
@G__0x401e56 = global %G__0x401e56_type zeroinitializer
@G__0x401e58 = global %G__0x401e58_type zeroinitializer
@G__0x401e5a = global %G__0x401e5a_type zeroinitializer
@G__0x401e5c = global %G__0x401e5c_type zeroinitializer
@G__0x401e5d = global %G__0x401e5d_type zeroinitializer
@G__0x401e5f = global %G__0x401e5f_type zeroinitializer
@G__0x401e60 = global %G__0x401e60_type zeroinitializer
@G__0x401e62 = global %G__0x401e62_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @exit(i64)

declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @strcmp(i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @set_param(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
entry:
  %var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %var_2_55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i97 = getelementptr inbounds %union.anon, %union.anon* %var_2_55, i64 0, i32 0
  store i64 and (i64 ptrtoint (%G__0x401e52_type* @G__0x401e52 to i64), i64 4294967295), i64* %RAX.i97, align 8
  %EAX.i127 = bitcast %union.anon* %var_2_55 to i32*
  %var_2_61 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %2)
  %var_2_62 = load i32, i32* %EAX.i127, align 4
  %var_2_63 = load i64, i64* %var_2_3, align 8
  %var_2_69 = icmp eq i32 %var_2_62, 0
  %.v = select i1 %var_2_69, i64 34, i64 9
  %var_2_73 = add i64 %.v, %var_2_63
  br i1 %var_2_69, label %block_.L_401ae2, label %block_401ac9

block_401ac9:                                     ; preds = %entry
  store i64 and (i64 ptrtoint (%G__0x401e55_type* @G__0x401e55 to i64), i64 4294967295), i64* %RAX.i97, align 8
  %var_2_84 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %var_2_61)
  %var_2_85 = load i32, i32* %EAX.i127, align 4
  %var_2_86 = load i64, i64* %var_2_3, align 8
  %var_2_92 = icmp eq i32 %var_2_85, 0
  %.v10 = select i1 %var_2_92, i64 9, i64 46
  %var_2_96 = add i64 %.v10, %var_2_86
  br i1 %var_2_92, label %block_.L_401ae2, label %block_.L_401b07

block_.L_401ae2:                                  ; preds = %block_401ac9, %entry
  %var_2_97 = phi i64 [ %var_2_73, %entry ], [ %var_2_96, %block_401ac9 ]
  %MEMORY.0 = phi %struct.Memory* [ %var_2_61, %entry ], [ %var_2_84, %block_401ac9 ]
  %var_2_98 = load i64, i64* %RBP.i, align 8
  %var_2_99 = add i64 %var_2_98, -8
  %var_2_100 = add i64 %var_2_97, 4
  store i64 %var_2_100, i64* %var_2_3, align 8
  %var_2_101 = inttoptr i64 %var_2_99 to i64*
  %var_2_102 = load i64, i64* %var_2_101, align 8
  store i64 %var_2_102, i64* %RAX.i97, align 8
  %var_2_108 = add i64 %var_2_97, 14
  store i64 %var_2_108, i64* %var_2_3, align 8
  %var_2_110 = load i64, i64* %var_2_101, align 8
  store i64 %var_2_110, i64* %RAX.i97, align 8
  %var_2_117 = add i64 %var_2_97, 25
  store i64 %var_2_117, i64* %var_2_3, align 8
  %var_2_119 = load i64, i64* %var_2_101, align 8
  store i64 %var_2_119, i64* %RAX.i97, align 8
  %var_2_124 = add i64 %var_2_97, 415
  store i64 %var_2_124, i64* %var_2_3, align 8
  br label %block_.L_401c81

block_.L_401b07:                                  ; preds = %block_401ac9
  store i64 and (i64 ptrtoint (%G__0x401e53_type* @G__0x401e53 to i64), i64 4294967295), i64* %RAX.i97, align 8
  %var_2_135 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %var_2_84)
  %var_2_136 = load i32, i32* %EAX.i127, align 4
  %var_2_137 = load i64, i64* %var_2_3, align 8
  %var_2_143 = icmp eq i32 %var_2_136, 0
  %.v11 = select i1 %var_2_143, i64 34, i64 9
  %var_2_147 = add i64 %.v11, %var_2_137
  br i1 %var_2_143, label %block_.L_401b39, label %block_401b20

block_401b20:                                     ; preds = %block_.L_401b07
  store i64 and (i64 ptrtoint (%G__0x401e56_type* @G__0x401e56 to i64), i64 4294967295), i64* %RAX.i97, align 8
  %var_2_158 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %var_2_135)
  %var_2_159 = load i32, i32* %EAX.i127, align 4
  %var_2_160 = load i64, i64* %var_2_3, align 8
  %var_2_166 = icmp eq i32 %var_2_159, 0
  %.v12 = select i1 %var_2_166, i64 9, i64 46
  %var_2_170 = add i64 %.v12, %var_2_160
  br i1 %var_2_166, label %block_.L_401b39, label %block_.L_401b5e

block_.L_401b39:                                  ; preds = %block_401b20, %block_.L_401b07
  %var_2_171 = phi i64 [ %var_2_147, %block_.L_401b07 ], [ %var_2_170, %block_401b20 ]
  %MEMORY.1 = phi %struct.Memory* [ %var_2_135, %block_.L_401b07 ], [ %var_2_158, %block_401b20 ]
  %var_2_172 = load i64, i64* %RBP.i, align 8
  %var_2_173 = add i64 %var_2_172, -8
  %var_2_174 = add i64 %var_2_171, 4
  store i64 %var_2_174, i64* %var_2_3, align 8
  %var_2_175 = inttoptr i64 %var_2_173 to i64*
  %var_2_176 = load i64, i64* %var_2_175, align 8
  store i64 %var_2_176, i64* %RAX.i97, align 8
  %var_2_182 = add i64 %var_2_171, 14
  store i64 %var_2_182, i64* %var_2_3, align 8
  %var_2_184 = load i64, i64* %var_2_175, align 8
  store i64 %var_2_184, i64* %RAX.i97, align 8
  %var_2_191 = add i64 %var_2_171, 25
  store i64 %var_2_191, i64* %var_2_3, align 8
  %var_2_193 = load i64, i64* %var_2_175, align 8
  store i64 %var_2_193, i64* %RAX.i97, align 8
  %var_2_198 = add i64 %var_2_171, 328
  store i64 %var_2_198, i64* %var_2_3, align 8
  br label %block_.L_401c81

block_.L_401b5e:                                  ; preds = %block_401b20
  store i64 and (i64 ptrtoint (%G__0x401e58_type* @G__0x401e58 to i64), i64 4294967295), i64* %RAX.i97, align 8
  %var_2_209 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %var_2_158)
  %var_2_210 = load i32, i32* %EAX.i127, align 4
  %var_2_211 = load i64, i64* %var_2_3, align 8
  %var_2_217 = icmp eq i32 %var_2_210, 0
  %.v13 = select i1 %var_2_217, i64 34, i64 9
  %var_2_221 = add i64 %.v13, %var_2_211
  br i1 %var_2_217, label %block_.L_401b90, label %block_401b77

block_401b77:                                     ; preds = %block_.L_401b5e
  store i64 and (i64 ptrtoint (%G__0x401e5a_type* @G__0x401e5a to i64), i64 4294967295), i64* %RAX.i97, align 8
  %var_2_232 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %var_2_209)
  %var_2_233 = load i32, i32* %EAX.i127, align 4
  %var_2_234 = load i64, i64* %var_2_3, align 8
  %var_2_240 = icmp eq i32 %var_2_233, 0
  %.v14 = select i1 %var_2_240, i64 9, i64 46
  %var_2_244 = add i64 %.v14, %var_2_234
  br i1 %var_2_240, label %block_.L_401b90, label %block_.L_401bb5

block_.L_401b90:                                  ; preds = %block_401b77, %block_.L_401b5e
  %var_2_245 = phi i64 [ %var_2_221, %block_.L_401b5e ], [ %var_2_244, %block_401b77 ]
  %MEMORY.2 = phi %struct.Memory* [ %var_2_209, %block_.L_401b5e ], [ %var_2_232, %block_401b77 ]
  %var_2_246 = load i64, i64* %RBP.i, align 8
  %var_2_247 = add i64 %var_2_246, -8
  %var_2_248 = add i64 %var_2_245, 4
  store i64 %var_2_248, i64* %var_2_3, align 8
  %var_2_249 = inttoptr i64 %var_2_247 to i64*
  %var_2_250 = load i64, i64* %var_2_249, align 8
  store i64 %var_2_250, i64* %RAX.i97, align 8
  %var_2_256 = add i64 %var_2_245, 14
  store i64 %var_2_256, i64* %var_2_3, align 8
  %var_2_258 = load i64, i64* %var_2_249, align 8
  store i64 %var_2_258, i64* %RAX.i97, align 8
  %var_2_265 = add i64 %var_2_245, 25
  store i64 %var_2_265, i64* %var_2_3, align 8
  %var_2_267 = load i64, i64* %var_2_249, align 8
  store i64 %var_2_267, i64* %RAX.i97, align 8
  %var_2_272 = add i64 %var_2_245, 241
  store i64 %var_2_272, i64* %var_2_3, align 8
  br label %block_.L_401c81

block_.L_401bb5:                                  ; preds = %block_401b77
  store i64 and (i64 ptrtoint (%G__0x401e5d_type* @G__0x401e5d to i64), i64 4294967295), i64* %RAX.i97, align 8
  %var_2_283 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %var_2_232)
  %var_2_284 = load i32, i32* %EAX.i127, align 4
  %var_2_285 = load i64, i64* %var_2_3, align 8
  %var_2_291 = icmp eq i32 %var_2_284, 0
  %.v15 = select i1 %var_2_291, i64 34, i64 9
  %var_2_295 = add i64 %.v15, %var_2_285
  br i1 %var_2_291, label %block_.L_401be7, label %block_401bce

block_401bce:                                     ; preds = %block_.L_401bb5
  store i64 and (i64 ptrtoint (%G__0x401e60_type* @G__0x401e60 to i64), i64 4294967295), i64* %RAX.i97, align 8
  %var_2_306 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %var_2_283)
  %var_2_307 = load i32, i32* %EAX.i127, align 4
  %var_2_308 = load i64, i64* %var_2_3, align 8
  %var_2_314 = icmp eq i32 %var_2_307, 0
  %.v16 = select i1 %var_2_314, i64 9, i64 46
  %var_2_318 = add i64 %.v16, %var_2_308
  br i1 %var_2_314, label %block_.L_401be7, label %block_.L_401c0c

block_.L_401be7:                                  ; preds = %block_401bce, %block_.L_401bb5
  %var_2_319 = phi i64 [ %var_2_295, %block_.L_401bb5 ], [ %var_2_318, %block_401bce ]
  %MEMORY.3 = phi %struct.Memory* [ %var_2_283, %block_.L_401bb5 ], [ %var_2_306, %block_401bce ]
  %var_2_320 = load i64, i64* %RBP.i, align 8
  %var_2_321 = add i64 %var_2_320, -8
  %var_2_322 = add i64 %var_2_319, 4
  store i64 %var_2_322, i64* %var_2_3, align 8
  %var_2_323 = inttoptr i64 %var_2_321 to i64*
  %var_2_324 = load i64, i64* %var_2_323, align 8
  store i64 %var_2_324, i64* %RAX.i97, align 8
  %var_2_330 = add i64 %var_2_319, 14
  store i64 %var_2_330, i64* %var_2_3, align 8
  %var_2_332 = load i64, i64* %var_2_323, align 8
  store i64 %var_2_332, i64* %RAX.i97, align 8
  %var_2_339 = add i64 %var_2_319, 25
  store i64 %var_2_339, i64* %var_2_3, align 8
  %var_2_341 = load i64, i64* %var_2_323, align 8
  store i64 %var_2_341, i64* %RAX.i97, align 8
  %var_2_346 = add i64 %var_2_319, 154
  store i64 %var_2_346, i64* %var_2_3, align 8
  br label %block_.L_401c81

block_.L_401c0c:                                  ; preds = %block_401bce
  store i64 and (i64 ptrtoint (%G__0x401e5c_type* @G__0x401e5c to i64), i64 4294967295), i64* %RAX.i97, align 8
  %var_2_357 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %var_2_306)
  %var_2_358 = load i32, i32* %EAX.i127, align 4
  %var_2_359 = load i64, i64* %var_2_3, align 8
  %var_2_365 = icmp eq i32 %var_2_358, 0
  %.v17 = select i1 %var_2_365, i64 34, i64 9
  %var_2_369 = add i64 %.v17, %var_2_359
  br i1 %var_2_365, label %block_.L_401c3e, label %block_401c25

block_401c25:                                     ; preds = %block_.L_401c0c
  store i64 and (i64 ptrtoint (%G__0x401e5f_type* @G__0x401e5f to i64), i64 4294967295), i64* %RAX.i97, align 8
  %var_2_380 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %var_2_357)
  %var_2_381 = load i32, i32* %EAX.i127, align 4
  %var_2_382 = load i64, i64* %var_2_3, align 8
  %var_2_388 = icmp eq i32 %var_2_381, 0
  %.v18 = select i1 %var_2_388, i64 9, i64 46
  %var_2_392 = add i64 %.v18, %var_2_382
  br i1 %var_2_388, label %block_.L_401c3e, label %block_.L_401c63

block_.L_401c3e:                                  ; preds = %block_401c25, %block_.L_401c0c
  %var_2_393 = phi i64 [ %var_2_369, %block_.L_401c0c ], [ %var_2_392, %block_401c25 ]
  %MEMORY.4 = phi %struct.Memory* [ %var_2_357, %block_.L_401c0c ], [ %var_2_380, %block_401c25 ]
  %var_2_394 = load i64, i64* %RBP.i, align 8
  %var_2_395 = add i64 %var_2_394, -8
  %var_2_396 = add i64 %var_2_393, 4
  store i64 %var_2_396, i64* %var_2_3, align 8
  %var_2_397 = inttoptr i64 %var_2_395 to i64*
  %var_2_398 = load i64, i64* %var_2_397, align 8
  store i64 %var_2_398, i64* %RAX.i97, align 8
  %var_2_404 = add i64 %var_2_393, 14
  store i64 %var_2_404, i64* %var_2_3, align 8
  %var_2_406 = load i64, i64* %var_2_397, align 8
  store i64 %var_2_406, i64* %RAX.i97, align 8
  %var_2_413 = add i64 %var_2_393, 25
  store i64 %var_2_413, i64* %var_2_3, align 8
  %var_2_415 = load i64, i64* %var_2_397, align 8
  store i64 %var_2_415, i64* %RAX.i97, align 8
  %var_2_420 = add i64 %var_2_393, 67
  store i64 %var_2_420, i64* %var_2_3, align 8
  br label %block_.L_401c81

block_.L_401c63:                                  ; preds = %block_401c25
  %var_2_426 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %var_2_380)
  %var_2_439 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @exit to i64), %struct.Memory* %var_2_426)
  %.pre = load i64, i64* %var_2_3, align 8
  br label %block_.L_401c81

block_.L_401c81:                                  ; preds = %block_.L_401c63, %block_.L_401c3e, %block_.L_401be7, %block_.L_401b90, %block_.L_401b39, %block_.L_401ae2
  %var_2_440 = phi i64 [ %var_2_124, %block_.L_401ae2 ], [ %var_2_198, %block_.L_401b39 ], [ %var_2_272, %block_.L_401b90 ], [ %var_2_346, %block_.L_401be7 ], [ %var_2_420, %block_.L_401c3e ], [ %.pre, %block_.L_401c63 ]
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.0, %block_.L_401ae2 ], [ %MEMORY.1, %block_.L_401b39 ], [ %MEMORY.2, %block_.L_401b90 ], [ %MEMORY.3, %block_.L_401be7 ], [ %MEMORY.4, %block_.L_401c3e ], [ %var_2_439, %block_.L_401c63 ]
  %var_2_468 = add i64 %var_2_440, 6
  store i64 %var_2_468, i64* %var_2_3, align 8
  ret %struct.Memory* %MEMORY.5
}

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_subq__0x20___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -32
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 32
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x401e52___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x401e52_type* @G__0x401e52 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_je_.L_401ae2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x401e55___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x401e55_type* @G__0x401e55 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jne_.L_401b07(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x20____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  store i32 32, i32* %4, align 4
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x20__0x4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 32, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x40__0x8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 64, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401c81(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x401e53___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x401e53_type* @G__0x401e53 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_je_.L_401b39(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x401e56___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x401e56_type* @G__0x401e56 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jne_.L_401b5e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x40____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  store i32 64, i32* %4, align 4
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x40__0x4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 64, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x80__0x8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 128, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x401e58___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x401e58_type* @G__0x401e58 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_je_.L_401b90(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x401e5a___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x401e5a_type* @G__0x401e5a to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jne_.L_401bb5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x80____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  store i32 128, i32* %4, align 4
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x80__0x4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 128, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x100__0x8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 256, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x401e5d___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x401e5d_type* @G__0x401e5d to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_je_.L_401be7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x401e60___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x401e60_type* @G__0x401e60 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jne_.L_401c0c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x100____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  store i32 256, i32* %4, align 4
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x100__0x4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 256, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x200__0x8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 512, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x401e5c___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x401e5c_type* @G__0x401e5c to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_je_.L_401c3e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x401e5f___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x401e5f_type* @G__0x401e5f to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jne_.L_401c63(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x200____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  store i32 512, i32* %4, align 4
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x200__0x4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 512, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x400__0x8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1024, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movq__0x401e62___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x401e62_type* @G__0x401e62 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_callq_.exit_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_addq__0x20___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 32
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -33
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

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
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
attributes #2 = { alwaysinline norecurse nounwind }
attributes #3 = { alwaysinline nounwind }
