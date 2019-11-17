; ModuleID = 'test.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"
%union.anon = type { i64 }
%seg_400388__init_type = type <{ [23 x i8] }>
%seg_4003a0__text_type = type <{ [354 x i8] }>
%seg_400504__fini_type = type <{ [9 x i8] }>
%seg_400510__rodata_type = type <{ [4 x i8] }>
%seg_400514__eh_frame_hdr_type = type <{ [52 x i8] }>
%seg_400548__eh_frame_type = type <{ [208 x i8] }>
%seg_600e40__init_array_type = type <{ i64, i64 }>
%seg_601018__data_type = type <{ [16 x i8] }>
%__bss_start_type = type <{ [8 x i8] }>
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
%struct.uint8v32_t = type { [32 x i8] }
%struct.anon.2 = type { i8, i8 }
%struct.int32v8_t = type { [8 x i32] }
%struct.float32v8_t = type { [8 x float] }
%struct.uint8v8_t = type { [8 x i8] }
%struct.uint8v16_t = type { [16 x i8] }
%struct.uint16v8_t = type { [8 x i16] }
%struct.uint8v4_t = type { [4 x i8] }
%struct.int16v4_t = type { [4 x i16] }
%struct.int32v4_t = type { [4 x i32] }
%struct.uint64v2_t = type { [2 x i64] }
%struct.uint64v4_t = type { [4 x i64] }
%struct.uint128v2_t = type { [2 x i128] }
%struct.uint16v16_t = type { [16 x i16] }
%struct.float64v4_t = type { [4 x double] }
%"class.(anonymous namespace)::BitMatrix" = type { %"class.std::bitset", [16 x [16 x i8]] }
%"class.std::bitset" = type { %struct.uint64v4_t }
%struct.bcd80_t = type { [9 x %union.FPUAbridgedTagWord], %union.FPUAbridgedTagWord }
%struct.FpuFSAVE = type { %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, i32, %union.SegmentSelector, i16, i32, %union.SegmentSelector, i16, [8 x %struct.FPUStackElem] }
%struct.anon.5 = type { i32, i32 }
@switch.table = private unnamed_addr constant [4 x i32] [i32 2048, i32 3072, i32 0, i32 1024]
@DR0 = external global i64, align 8
@DR1 = external global i64, align 8
@DR2 = external global i64, align 8
@DR3 = external global i64, align 8
@DR4 = external global i64, align 8
@DR5 = external global i64, align 8
@DR6 = external global i64, align 8
@DR7 = external global i64, align 8
@gCR0 = external global %union.anon, align 1
@gCR1 = external global %union.anon, align 1
@gCR2 = external global %union.anon, align 1
@gCR3 = external global %union.anon, align 1
@gCR4 = external global %union.anon, align 1
@gCR8 = external global %union.anon, align 1
@seg_400388__init = internal constant %seg_400388__init_type <{ [23 x i8] c"H\83\EC\08H\8B\05e\0C \00H\85\C0t\02\FF\D0H\83\C4\08\C3" }>
@seg_4003a0__text = internal constant %seg_4003a0__text_type <{ [354 x i8] c"1\EDI\89\D1^H\89\E2H\83\E4\F0PTI\C7\C0\00\05@\00H\C7\C1\90\04@\00H\C7\C7\88\04@\00\FF\15&\0C \00\F4\0F\1FD\00\00\F3\C3f.\0F\1F\84\00\00\00\00\00\0F\1F@\00U\B8(\10`\00H=(\10`\00H\89\E5t\17\B8\00\00\00\00H\85\C0t\0D]\BF(\10`\00\FF\E0\0F\1FD\00\00]\C3f\0F\1FD\00\00\BE(\10`\00UH\81\EE(\10`\00H\89\E5H\C1\FE\03H\89\F0H\C1\E8?H\01\C6H\D1\FEt\15\B8\00\00\00\00H\85\C0t\0B]\BF(\10`\00\FF\E0\0F\1F\00]\C3f\0F\1FD\00\00\80=\D1\0B \00\00u\17UH\89\E5\E8~\FF\FF\FF\C6\05\BF\0B \00\01]\C3\0F\1FD\00\00\F3\C3\0F\1F@\00f.\0F\1F\84\00\00\00\00\00UH\89\E5]\EB\89\90U\C3f\0F\1FD\00\00AWAVI\89\D7AUATL\8D%\9E\09 \00UH\8D-\9E\09 \00SA\89\FDI\89\F6L)\E5H\83\EC\08H\C1\FD\03\E8\C7\FE\FF\FFH\85\EDt 1\DB\0F\1F\84\00\00\00\00\00L\89\FAL\89\F6D\89\EFA\FF\14\DCH\83\C3\01H9\DDu\EAH\83\C4\08[]A\5CA]A^A_\C3\90f.\0F\1F\84\00\00\00\00\00\F3\C3" }>
@seg_400504__fini = internal constant %seg_400504__fini_type <{ [9 x i8] c"H\83\EC\08H\83\C4\08\C3" }>
@seg_400510__rodata = internal constant %seg_400510__rodata_type <{ [4 x i8] c"\01\00\02\00" }>
@seg_400514__eh_frame_hdr = internal constant %seg_400514__eh_frame_hdr_type <{ [52 x i8] c"\01\1B\03;0\00\00\00\05\00\00\00\8C\FE\FF\FFL\00\00\00\BC\FE\FF\FFx\00\00\00t\FF\FF\FF\8C\00\00\00|\FF\FF\FF\A4\00\00\00\EC\FF\FF\FF\EC\00\00\00" }>
@seg_400548__eh_frame = internal constant %seg_400548__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\008\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00<\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\E0\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@seg_601018__data = internal global %seg_601018__data_type zeroinitializer
@__bss_start = global %__bss_start_type zeroinitializer
@0 = internal global i1 false

; Function Declaraions
declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare i32 @__remill_fpu_exception_test_and_clear(i32, i32)
declare void @llvm.lifetime.start(i64, i8* nocapture)
declare void @llvm.lifetime.end(i64, i8* nocapture)
declare i32 @llvm.ctpop.i32(i32)
declare i32 @llvm.bswap.i32(i32)
declare i64 @llvm.bswap.i64(i64)
declare i32 @llvm.cttz.i32(i32, i1)
declare i64 @llvm.cttz.i64(i64, i1)
declare i32 @llvm.ctlz.i32(i32, i1)
declare i64 @llvm.ctlz.i64(i64, i1)
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1)
declare double @llvm.nearbyint.f64(double)
declare double @llvm.fabs.f64(double)
declare <4 x double> @llvm.nearbyint.v4f64(<4 x double>)
declare <4 x double> @llvm.fabs.v4f64(<4 x double>)
declare double @llvm.trunc.f64(double)
declare <4 x double> @llvm.trunc.v4f64(<4 x double>)
declare float @llvm.nearbyint.f32(float)
declare float @llvm.fabs.f32(float)
declare <4 x float> @llvm.nearbyint.v4f32(<4 x float>)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>)
declare float @llvm.trunc.f32(float)
declare <4 x float> @llvm.trunc.v4f32(<4 x float>)
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1)

; Buiitins  
declare double @atan(double) local_unnamed_addr #9
declare double @cos(double) local_unnamed_addr #9
declare double @sin(double) local_unnamed_addr #9
declare double @sqrt(double) local_unnamed_addr #9
declare double @tan(double) local_unnamed_addr #9
declare extern_weak x86_64_sysvcc i64 @abort() #18
declare extern_weak x86_64_sysvcc i64 @abs(i64) #18
declare extern_weak x86_64_sysvcc i64 @asin(i64) #18
declare extern_weak x86_64_sysvcc i64 @atof(i64) #18
declare extern_weak x86_64_sysvcc i64 @atoi(i64) #18
declare extern_weak x86_64_sysvcc i64 @atol(i64) #18
declare extern_weak x86_64_sysvcc i64 @calloc(i64, i64) #18
declare extern_weak x86_64_sysvcc i64 @clock() #18
declare extern_weak x86_64_sysvcc i64 @cosf(i64) #18
declare extern_weak x86_64_sysvcc i64 @exit(i64) #18
declare extern_weak x86_64_sysvcc i64 @exp(i64) #18
declare extern_weak x86_64_sysvcc i64 @fflush(i64) #18
declare extern_weak x86_64_sysvcc i64 @floor(i64) #18
declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #18
declare extern_weak x86_64_sysvcc i64 @fputs(i64, i64) #18
declare extern_weak x86_64_sysvcc i64 @free(i64) #18
declare extern_weak x86_64_sysvcc i64 @fwrite(i64, i64, i64, i64) #18
declare extern_weak x86_64_sysvcc i64 @getchar() #18
declare extern_weak x86_64_sysvcc i64 @gettimeofday(i64, i64) #18
declare extern_weak x86_64_sysvcc i64 @__isoc99_fscanf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #18
declare extern_weak x86_64_sysvcc i64 @__isoc99_scanf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #18
declare extern_weak x86_64_sysvcc i64 @__isoc99_sscanf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #18
declare extern_weak x86_64_sysvcc i64 @log(i64) #18
declare extern_weak x86_64_sysvcc i64 @lrand48() #18
declare extern_weak x86_64_sysvcc i64 @malloc(i64) #18
declare extern_weak x86_64_sysvcc i64 @memalign(i64, i64) #18
declare extern_weak x86_64_sysvcc i64 @memcpy(i64, i64, i64) #18
declare extern_weak x86_64_sysvcc i64 @memset(i64, i64, i64) #18
declare extern_weak x86_64_sysvcc i64 @perror(i64) #18
declare extern_weak x86_64_sysvcc i64 @posix_memalign(i64, i64, i64) #18
declare extern_weak x86_64_sysvcc i64 @pow(i64, i64) #18
declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #18
declare extern_weak x86_64_sysvcc i64 @putchar(i64) #18
declare extern_weak x86_64_sysvcc i64 @puts(i64) #18
declare extern_weak x86_64_sysvcc i64 @rand() #18
declare extern_weak x86_64_sysvcc i64 @random() #18
declare extern_weak x86_64_sysvcc i64 @realloc(i64, i64) #18
declare extern_weak x86_64_sysvcc i64 @seed48(i64) #18
declare extern_weak x86_64_sysvcc i64 @sinf(i64) #18
declare extern_weak x86_64_sysvcc i64 @sprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #18
declare extern_weak x86_64_sysvcc i64 @srand(i64) #18
declare extern_weak x86_64_sysvcc i64 @strcat(i64, i64) #18
declare extern_weak x86_64_sysvcc i64 @strcmp(i64, i64) #18
declare extern_weak x86_64_sysvcc i64 @strcpy(i64, i64) #18
declare extern_weak x86_64_sysvcc i64 @strdup(i64) #18
declare extern_weak x86_64_sysvcc i64 @strlen(i64) #18
declare extern_weak x86_64_sysvcc i64 @strncmp(i64, i64, i64) #18
declare extern_weak x86_64_sysvcc i64 @strtoll(i64, i64, i64) #18
declare extern_weak x86_64_sysvcc i64 @time(i64) #18
declare extern_weak x86_64_sysvcc i64 @ungetc(i64, i64) #18
declare extern_weak x86_64_sysvcc i64 @pthread_join(i64, i64) #18
declare extern_weak x86_64_sysvcc i64 @pthread_create(i64, i64, i64, i64) #18

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

define internal %struct.Memory* @ext_pthread_create(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64)* @pthread_create to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_pthread_join(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @pthread_join to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_gettimeofday(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @gettimeofday to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext___isoc99_scanf(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @__isoc99_scanf to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}


define internal %struct.Memory* @ext_fflush(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @fflush to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext___isoc99_fscanf(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @__isoc99_fscanf to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext___isoc99_sscanf(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @__isoc99_sscanf to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_memcpy(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memcpy to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_posix_memalign(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @posix_memalign to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_fprintf(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_memset(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_perror(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @perror to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_floor(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @floor to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_malloc(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_atoi(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @atoi to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_strcpy(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @strcpy to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_ungetc(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @ungetc to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_pow(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @pow to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_seed48(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @seed48 to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_asin(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @asin to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_strdup(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @strdup to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_cosf(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @cosf to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_abs(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_abort(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 ()* @abort to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_exit(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exit to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_putchar(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @putchar to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_strncmp(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_strcmp(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_rand(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 ()* @rand to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_calloc(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_fwrite(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64)* @fwrite to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_realloc(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @realloc to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}


define internal %struct.Memory* @ext_log(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}


define internal %struct.Memory* @ext_exp(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exp to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_sprintf(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_strcat(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @strcat to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_puts(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @puts to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_atol(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @atol to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_atof(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @atof to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_clock(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 ()* @clock to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_strlen(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_free(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_srand(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @srand to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_fputs(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @fputs to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_strtoll(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strtoll to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_sinf(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @sinf to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_time(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @time to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_printf(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_memalign(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @memalign to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_random(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 ()* @random to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_lrand48(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 ()* @lrand48 to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_getchar(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 ()* @getchar to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

declare %struct.Memory* @ext_sqrt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias)
declare %struct.Memory* @ext_atan(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias)
declare %struct.Memory* @ext_cos(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) 
declare %struct.Memory* @ext_tan(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) 
declare %struct.Memory* @ext_sin(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) 


; Data Access Globals


define %struct.Memory* @bitrv2(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .bitrv2:	 RIP: 4011f0	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 4011f0	 Bytes: 1
  %loadMem_4011f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011f0 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011f0)
  store %struct.Memory* %call_4011f0, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 4011f1	 Bytes: 3
  %loadMem_4011f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011f1 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011f1)
  store %struct.Memory* %call_4011f1, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x4(%rbp)	 RIP: 4011f4	 Bytes: 3
  %loadMem_4011f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011f4 = call %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011f4)
  store %struct.Memory* %call_4011f4, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x10(%rbp)	 RIP: 4011f7	 Bytes: 4
  %loadMem_4011f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011f7 = call %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011f7)
  store %struct.Memory* %call_4011f7, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x18(%rbp)	 RIP: 4011fb	 Bytes: 4
  %loadMem_4011fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011fb = call %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011fb)
  store %struct.Memory* %call_4011fb, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4011ff	 Bytes: 4
  %loadMem_4011ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011ff = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011ff)
  store %struct.Memory* %call_4011ff, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rdx)	 RIP: 401203	 Bytes: 6
  %loadMem_401203 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401203 = call %struct.Memory* @routine_movl__0x0____rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401203)
  store %struct.Memory* %call_401203, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edi	 RIP: 401209	 Bytes: 3
  %loadMem_401209 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401209 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401209)
  store %struct.Memory* %call_401209, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x2c(%rbp)	 RIP: 40120c	 Bytes: 3
  %loadMem_40120c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40120c = call %struct.Memory* @routine_movl__edi__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40120c)
  store %struct.Memory* %call_40120c, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x30(%rbp)	 RIP: 40120f	 Bytes: 7
  %loadMem_40120f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40120f = call %struct.Memory* @routine_movl__0x1__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40120f)
  store %struct.Memory* %call_40120f, %struct.Memory** %MEMORY

  ; Code: .L_401216:	 RIP: 401216	 Bytes: 0
  br label %block_.L_401216
block_.L_401216:

  ; Code: movl -0x30(%rbp), %eax	 RIP: 401216	 Bytes: 3
  %loadMem_401216 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401216 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401216)
  store %struct.Memory* %call_401216, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %eax	 RIP: 401219	 Bytes: 3
  %loadMem_401219 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401219 = call %struct.Memory* @routine_shll__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401219)
  store %struct.Memory* %call_401219, %struct.Memory** %MEMORY

  ; Code: cmpl -0x2c(%rbp), %eax	 RIP: 40121c	 Bytes: 3
  %loadMem_40121c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40121c = call %struct.Memory* @routine_cmpl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40121c)
  store %struct.Memory* %call_40121c, %struct.Memory** %MEMORY

  ; Code: jge .L_40127b	 RIP: 40121f	 Bytes: 6
  %loadMem_40121f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40121f = call %struct.Memory* @routine_jge_.L_40127b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40121f, i8* %BRANCH_TAKEN, i64 92, i64 6, i64 6)
  store %struct.Memory* %call_40121f, %struct.Memory** %MEMORY

  %loadBr_40121f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40121f = icmp eq i8 %loadBr_40121f, 1
  br i1 %cmpBr_40121f, label %block_.L_40127b, label %block_401225

block_401225:
  ; Code: movl -0x2c(%rbp), %eax	 RIP: 401225	 Bytes: 3
  %loadMem_401225 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401225 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401225)
  store %struct.Memory* %call_401225, %struct.Memory** %MEMORY

  ; Code: sarl $0x1, %eax	 RIP: 401228	 Bytes: 3
  %loadMem_401228 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401228 = call %struct.Memory* @routine_sarl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401228)
  store %struct.Memory* %call_401228, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 40122b	 Bytes: 3
  %loadMem_40122b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40122b = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40122b)
  store %struct.Memory* %call_40122b, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 40122e	 Bytes: 7
  %loadMem_40122e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40122e = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40122e)
  store %struct.Memory* %call_40122e, %struct.Memory** %MEMORY

  ; Code: .L_401235:	 RIP: 401235	 Bytes: 0
  br label %block_.L_401235
block_.L_401235:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 401235	 Bytes: 3
  %loadMem_401235 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401235 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401235)
  store %struct.Memory* %call_401235, %struct.Memory** %MEMORY

  ; Code: cmpl -0x30(%rbp), %eax	 RIP: 401238	 Bytes: 3
  %loadMem_401238 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401238 = call %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401238)
  store %struct.Memory* %call_401238, %struct.Memory** %MEMORY

  ; Code: jge .L_40126d	 RIP: 40123b	 Bytes: 6
  %loadMem_40123b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40123b = call %struct.Memory* @routine_jge_.L_40126d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40123b, i8* %BRANCH_TAKEN, i64 50, i64 6, i64 6)
  store %struct.Memory* %call_40123b, %struct.Memory** %MEMORY

  %loadBr_40123b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40123b = icmp eq i8 %loadBr_40123b, 1
  br i1 %cmpBr_40123b, label %block_.L_40126d, label %block_401241

block_401241:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 401241	 Bytes: 4
  %loadMem_401241 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401241 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401241)
  store %struct.Memory* %call_401241, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 401245	 Bytes: 4
  %loadMem_401245 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401245 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401245)
  store %struct.Memory* %call_401245, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 401249	 Bytes: 3
  %loadMem_401249 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401249 = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401249)
  store %struct.Memory* %call_401249, %struct.Memory** %MEMORY

  ; Code: addl -0x2c(%rbp), %edx	 RIP: 40124c	 Bytes: 3
  %loadMem_40124c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40124c = call %struct.Memory* @routine_addl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40124c)
  store %struct.Memory* %call_40124c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 40124f	 Bytes: 4
  %loadMem_40124f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40124f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40124f)
  store %struct.Memory* %call_40124f, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %esi	 RIP: 401253	 Bytes: 3
  %loadMem_401253 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401253 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401253)
  store %struct.Memory* %call_401253, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %esi	 RIP: 401256	 Bytes: 3
  %loadMem_401256 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401256 = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401256)
  store %struct.Memory* %call_401256, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 401259	 Bytes: 3
  %loadMem_401259 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401259 = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401259)
  store %struct.Memory* %call_401259, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax,%rcx,4)	 RIP: 40125c	 Bytes: 3
  %loadMem_40125c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40125c = call %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40125c)
  store %struct.Memory* %call_40125c, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 40125f	 Bytes: 3
  %loadMem_40125f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40125f = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40125f)
  store %struct.Memory* %call_40125f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401262	 Bytes: 3
  %loadMem_401262 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401262 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401262)
  store %struct.Memory* %call_401262, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 401265	 Bytes: 3
  %loadMem_401265 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401265 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401265)
  store %struct.Memory* %call_401265, %struct.Memory** %MEMORY

  ; Code: jmpq .L_401235	 RIP: 401268	 Bytes: 5
  %loadMem_401268 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401268 = call %struct.Memory* @routine_jmpq_.L_401235(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401268, i64 -51, i64 5)
  store %struct.Memory* %call_401268, %struct.Memory** %MEMORY

  br label %block_.L_401235

  ; Code: .L_40126d:	 RIP: 40126d	 Bytes: 0
block_.L_40126d:

  ; Code: movl -0x30(%rbp), %eax	 RIP: 40126d	 Bytes: 3
  %loadMem_40126d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40126d = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40126d)
  store %struct.Memory* %call_40126d, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 401270	 Bytes: 3
  %loadMem_401270 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401270 = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401270)
  store %struct.Memory* %call_401270, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x30(%rbp)	 RIP: 401273	 Bytes: 3
  %loadMem_401273 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401273 = call %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401273)
  store %struct.Memory* %call_401273, %struct.Memory** %MEMORY

  ; Code: jmpq .L_401216	 RIP: 401276	 Bytes: 5
  %loadMem_401276 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401276 = call %struct.Memory* @routine_jmpq_.L_401216(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401276, i64 -96, i64 5)
  store %struct.Memory* %call_401276, %struct.Memory** %MEMORY

  br label %block_.L_401216

  ; Code: .L_40127b:	 RIP: 40127b	 Bytes: 0
block_.L_40127b:

  ; Code: movl -0x30(%rbp), %eax	 RIP: 40127b	 Bytes: 3
  %loadMem_40127b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40127b = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40127b)
  store %struct.Memory* %call_40127b, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 40127e	 Bytes: 3
  %loadMem_40127e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40127e = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40127e)
  store %struct.Memory* %call_40127e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x34(%rbp)	 RIP: 401281	 Bytes: 3
  %loadMem_401281 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401281 = call %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401281)
  store %struct.Memory* %call_401281, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %eax	 RIP: 401284	 Bytes: 3
  %loadMem_401284 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401284 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401284)
  store %struct.Memory* %call_401284, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %eax	 RIP: 401287	 Bytes: 3
  %loadMem_401287 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401287 = call %struct.Memory* @routine_shll__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401287)
  store %struct.Memory* %call_401287, %struct.Memory** %MEMORY

  ; Code: cmpl -0x2c(%rbp), %eax	 RIP: 40128a	 Bytes: 3
  %loadMem_40128a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40128a = call %struct.Memory* @routine_cmpl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40128a)
  store %struct.Memory* %call_40128a, %struct.Memory** %MEMORY

  ; Code: jne .L_401694	 RIP: 40128d	 Bytes: 6
  %loadMem_40128d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40128d = call %struct.Memory* @routine_jne_.L_401694(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40128d, i8* %BRANCH_TAKEN, i64 1031, i64 6, i64 6)
  store %struct.Memory* %call_40128d, %struct.Memory** %MEMORY

  %loadBr_40128d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40128d = icmp eq i8 %loadBr_40128d, 1
  br i1 %cmpBr_40128d, label %block_.L_401694, label %block_401293

block_401293:
  ; Code: movl $0x0, -0x24(%rbp)	 RIP: 401293	 Bytes: 7
  %loadMem_401293 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401293 = call %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401293)
  store %struct.Memory* %call_401293, %struct.Memory** %MEMORY

  ; Code: .L_40129a:	 RIP: 40129a	 Bytes: 0
  br label %block_.L_40129a
block_.L_40129a:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 40129a	 Bytes: 3
  %loadMem_40129a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40129a = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40129a)
  store %struct.Memory* %call_40129a, %struct.Memory** %MEMORY

  ; Code: cmpl -0x30(%rbp), %eax	 RIP: 40129d	 Bytes: 3
  %loadMem_40129d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40129d = call %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40129d)
  store %struct.Memory* %call_40129d, %struct.Memory** %MEMORY

  ; Code: jge .L_40168f	 RIP: 4012a0	 Bytes: 6
  %loadMem_4012a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012a0 = call %struct.Memory* @routine_jge_.L_40168f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012a0, i8* %BRANCH_TAKEN, i64 1007, i64 6, i64 6)
  store %struct.Memory* %call_4012a0, %struct.Memory** %MEMORY

  %loadBr_4012a0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4012a0 = icmp eq i8 %loadBr_4012a0, 1
  br i1 %cmpBr_4012a0, label %block_.L_40168f, label %block_4012a6

block_4012a6:
  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 4012a6	 Bytes: 7
  %loadMem_4012a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012a6 = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012a6)
  store %struct.Memory* %call_4012a6, %struct.Memory** %MEMORY

  ; Code: .L_4012ad:	 RIP: 4012ad	 Bytes: 0
  br label %block_.L_4012ad
block_.L_4012ad:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4012ad	 Bytes: 3
  %loadMem_4012ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012ad = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012ad)
  store %struct.Memory* %call_4012ad, %struct.Memory** %MEMORY

  ; Code: cmpl -0x24(%rbp), %eax	 RIP: 4012b0	 Bytes: 3
  %loadMem_4012b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012b0 = call %struct.Memory* @routine_cmpl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012b0)
  store %struct.Memory* %call_4012b0, %struct.Memory** %MEMORY

  ; Code: jge .L_4015bd	 RIP: 4012b3	 Bytes: 6
  %loadMem_4012b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012b3 = call %struct.Memory* @routine_jge_.L_4015bd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012b3, i8* %BRANCH_TAKEN, i64 778, i64 6, i64 6)
  store %struct.Memory* %call_4012b3, %struct.Memory** %MEMORY

  %loadBr_4012b3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4012b3 = icmp eq i8 %loadBr_4012b3, 1
  br i1 %cmpBr_4012b3, label %block_.L_4015bd, label %block_4012b9

block_4012b9:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4012b9	 Bytes: 3
  %loadMem_4012b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012b9 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012b9)
  store %struct.Memory* %call_4012b9, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 4012bc	 Bytes: 3
  %loadMem_4012bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012bc = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012bc)
  store %struct.Memory* %call_4012bc, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4012bf	 Bytes: 4
  %loadMem_4012bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012bf = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012bf)
  store %struct.Memory* %call_4012bf, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 4012c3	 Bytes: 4
  %loadMem_4012c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012c3 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012c3)
  store %struct.Memory* %call_4012c3, %struct.Memory** %MEMORY

  ; Code: addl (%rcx,%rdx,4), %eax	 RIP: 4012c7	 Bytes: 3
  %loadMem_4012c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012c7 = call %struct.Memory* @routine_addl___rcx__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012c7)
  store %struct.Memory* %call_4012c7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 4012ca	 Bytes: 3
  %loadMem_4012ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012ca = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012ca)
  store %struct.Memory* %call_4012ca, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 4012cd	 Bytes: 3
  %loadMem_4012cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012cd = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012cd)
  store %struct.Memory* %call_4012cd, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 4012d0	 Bytes: 3
  %loadMem_4012d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012d0 = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012d0)
  store %struct.Memory* %call_4012d0, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4012d3	 Bytes: 4
  %loadMem_4012d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012d3 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012d3)
  store %struct.Memory* %call_4012d3, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 4012d7	 Bytes: 4
  %loadMem_4012d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012d7 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012d7)
  store %struct.Memory* %call_4012d7, %struct.Memory** %MEMORY

  ; Code: addl (%rcx,%rdx,4), %eax	 RIP: 4012db	 Bytes: 3
  %loadMem_4012db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012db = call %struct.Memory* @routine_addl___rcx__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012db)
  store %struct.Memory* %call_4012db, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 4012de	 Bytes: 3
  %loadMem_4012de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012de = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012de)
  store %struct.Memory* %call_4012de, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4012e1	 Bytes: 4
  %loadMem_4012e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012e1 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012e1)
  store %struct.Memory* %call_4012e1, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 4012e5	 Bytes: 4
  %loadMem_4012e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012e5 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012e5)
  store %struct.Memory* %call_4012e5, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 4012e9	 Bytes: 5
  %loadMem_4012e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012e9 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012e9)
  store %struct.Memory* %call_4012e9, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x40(%rbp)	 RIP: 4012ee	 Bytes: 5
  %loadMem_4012ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012ee = call %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012ee)
  store %struct.Memory* %call_4012ee, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4012f3	 Bytes: 4
  %loadMem_4012f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012f3 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012f3)
  store %struct.Memory* %call_4012f3, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 4012f7	 Bytes: 3
  %loadMem_4012f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012f7 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012f7)
  store %struct.Memory* %call_4012f7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4012fa	 Bytes: 3
  %loadMem_4012fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012fa = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012fa)
  store %struct.Memory* %call_4012fa, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4012fd	 Bytes: 3
  %loadMem_4012fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012fd = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012fd)
  store %struct.Memory* %call_4012fd, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 401300	 Bytes: 5
  %loadMem_401300 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401300 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401300)
  store %struct.Memory* %call_401300, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x48(%rbp)	 RIP: 401305	 Bytes: 5
  %loadMem_401305 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401305 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401305)
  store %struct.Memory* %call_401305, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 40130a	 Bytes: 4
  %loadMem_40130a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40130a = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40130a)
  store %struct.Memory* %call_40130a, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 40130e	 Bytes: 4
  %loadMem_40130e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40130e = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40130e)
  store %struct.Memory* %call_40130e, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 401312	 Bytes: 5
  %loadMem_401312 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401312 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401312)
  store %struct.Memory* %call_401312, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x50(%rbp)	 RIP: 401317	 Bytes: 5
  %loadMem_401317 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401317 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401317)
  store %struct.Memory* %call_401317, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 40131c	 Bytes: 4
  %loadMem_40131c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40131c = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40131c)
  store %struct.Memory* %call_40131c, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 401320	 Bytes: 3
  %loadMem_401320 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401320 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401320)
  store %struct.Memory* %call_401320, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401323	 Bytes: 3
  %loadMem_401323 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401323 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401323)
  store %struct.Memory* %call_401323, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 401326	 Bytes: 3
  %loadMem_401326 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401326 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401326)
  store %struct.Memory* %call_401326, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 401329	 Bytes: 5
  %loadMem_401329 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401329 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401329)
  store %struct.Memory* %call_401329, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x58(%rbp)	 RIP: 40132e	 Bytes: 5
  %loadMem_40132e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40132e = call %struct.Memory* @routine_movsd__xmm0__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40132e)
  store %struct.Memory* %call_40132e, %struct.Memory** %MEMORY

  ; Code: movsd -0x50(%rbp), %xmm0	 RIP: 401333	 Bytes: 5
  %loadMem_401333 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401333 = call %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401333)
  store %struct.Memory* %call_401333, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 401338	 Bytes: 4
  %loadMem_401338 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401338 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401338)
  store %struct.Memory* %call_401338, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 40133c	 Bytes: 4
  %loadMem_40133c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40133c = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40133c)
  store %struct.Memory* %call_40133c, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 401340	 Bytes: 5
  %loadMem_401340 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401340 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401340)
  store %struct.Memory* %call_401340, %struct.Memory** %MEMORY

  ; Code: movsd -0x58(%rbp), %xmm0	 RIP: 401345	 Bytes: 5
  %loadMem_401345 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401345 = call %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401345)
  store %struct.Memory* %call_401345, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 40134a	 Bytes: 4
  %loadMem_40134a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40134a = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40134a)
  store %struct.Memory* %call_40134a, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 40134e	 Bytes: 3
  %loadMem_40134e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40134e = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40134e)
  store %struct.Memory* %call_40134e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401351	 Bytes: 3
  %loadMem_401351 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401351 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401351)
  store %struct.Memory* %call_401351, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 401354	 Bytes: 3
  %loadMem_401354 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401354 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401354)
  store %struct.Memory* %call_401354, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 401357	 Bytes: 5
  %loadMem_401357 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401357 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401357)
  store %struct.Memory* %call_401357, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm0	 RIP: 40135c	 Bytes: 5
  %loadMem_40135c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40135c = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40135c)
  store %struct.Memory* %call_40135c, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 401361	 Bytes: 4
  %loadMem_401361 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401361 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401361)
  store %struct.Memory* %call_401361, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 401365	 Bytes: 4
  %loadMem_401365 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401365 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401365)
  store %struct.Memory* %call_401365, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 401369	 Bytes: 5
  %loadMem_401369 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401369 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401369)
  store %struct.Memory* %call_401369, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm0	 RIP: 40136e	 Bytes: 5
  %loadMem_40136e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40136e = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40136e)
  store %struct.Memory* %call_40136e, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 401373	 Bytes: 4
  %loadMem_401373 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401373 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401373)
  store %struct.Memory* %call_401373, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 401377	 Bytes: 3
  %loadMem_401377 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401377 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401377)
  store %struct.Memory* %call_401377, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40137a	 Bytes: 3
  %loadMem_40137a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40137a = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40137a)
  store %struct.Memory* %call_40137a, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 40137d	 Bytes: 3
  %loadMem_40137d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40137d = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40137d)
  store %struct.Memory* %call_40137d, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 401380	 Bytes: 5
  %loadMem_401380 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401380 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401380)
  store %struct.Memory* %call_401380, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %eax	 RIP: 401385	 Bytes: 3
  %loadMem_401385 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401385 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401385)
  store %struct.Memory* %call_401385, %struct.Memory** %MEMORY

  ; Code: addl -0x20(%rbp), %eax	 RIP: 401388	 Bytes: 3
  %loadMem_401388 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401388 = call %struct.Memory* @routine_addl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401388)
  store %struct.Memory* %call_401388, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 40138b	 Bytes: 3
  %loadMem_40138b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40138b = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40138b)
  store %struct.Memory* %call_40138b, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %eax	 RIP: 40138e	 Bytes: 3
  %loadMem_40138e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40138e = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40138e)
  store %struct.Memory* %call_40138e, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 401391	 Bytes: 3
  %loadMem_401391 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401391 = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401391)
  store %struct.Memory* %call_401391, %struct.Memory** %MEMORY

  ; Code: addl -0x28(%rbp), %eax	 RIP: 401394	 Bytes: 3
  %loadMem_401394 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401394 = call %struct.Memory* @routine_addl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401394)
  store %struct.Memory* %call_401394, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 401397	 Bytes: 3
  %loadMem_401397 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401397 = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401397)
  store %struct.Memory* %call_401397, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 40139a	 Bytes: 4
  %loadMem_40139a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40139a = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40139a)
  store %struct.Memory* %call_40139a, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 40139e	 Bytes: 4
  %loadMem_40139e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40139e = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40139e)
  store %struct.Memory* %call_40139e, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 4013a2	 Bytes: 5
  %loadMem_4013a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013a2 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013a2)
  store %struct.Memory* %call_4013a2, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x40(%rbp)	 RIP: 4013a7	 Bytes: 5
  %loadMem_4013a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013a7 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013a7)
  store %struct.Memory* %call_4013a7, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4013ac	 Bytes: 4
  %loadMem_4013ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013ac = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013ac)
  store %struct.Memory* %call_4013ac, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 4013b0	 Bytes: 3
  %loadMem_4013b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013b0 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013b0)
  store %struct.Memory* %call_4013b0, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4013b3	 Bytes: 3
  %loadMem_4013b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013b3 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013b3)
  store %struct.Memory* %call_4013b3, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4013b6	 Bytes: 3
  %loadMem_4013b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013b6 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013b6)
  store %struct.Memory* %call_4013b6, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 4013b9	 Bytes: 5
  %loadMem_4013b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013b9 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013b9)
  store %struct.Memory* %call_4013b9, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x48(%rbp)	 RIP: 4013be	 Bytes: 5
  %loadMem_4013be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013be = call %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013be)
  store %struct.Memory* %call_4013be, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4013c3	 Bytes: 4
  %loadMem_4013c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013c3 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013c3)
  store %struct.Memory* %call_4013c3, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 4013c7	 Bytes: 4
  %loadMem_4013c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013c7 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013c7)
  store %struct.Memory* %call_4013c7, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 4013cb	 Bytes: 5
  %loadMem_4013cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013cb = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013cb)
  store %struct.Memory* %call_4013cb, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x50(%rbp)	 RIP: 4013d0	 Bytes: 5
  %loadMem_4013d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013d0 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013d0)
  store %struct.Memory* %call_4013d0, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4013d5	 Bytes: 4
  %loadMem_4013d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013d5 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013d5)
  store %struct.Memory* %call_4013d5, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 4013d9	 Bytes: 3
  %loadMem_4013d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013d9 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013d9)
  store %struct.Memory* %call_4013d9, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4013dc	 Bytes: 3
  %loadMem_4013dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013dc = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013dc)
  store %struct.Memory* %call_4013dc, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4013df	 Bytes: 3
  %loadMem_4013df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013df = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013df)
  store %struct.Memory* %call_4013df, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 4013e2	 Bytes: 5
  %loadMem_4013e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013e2 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013e2)
  store %struct.Memory* %call_4013e2, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x58(%rbp)	 RIP: 4013e7	 Bytes: 5
  %loadMem_4013e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013e7 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013e7)
  store %struct.Memory* %call_4013e7, %struct.Memory** %MEMORY

  ; Code: movsd -0x50(%rbp), %xmm0	 RIP: 4013ec	 Bytes: 5
  %loadMem_4013ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013ec = call %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013ec)
  store %struct.Memory* %call_4013ec, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4013f1	 Bytes: 4
  %loadMem_4013f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013f1 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013f1)
  store %struct.Memory* %call_4013f1, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 4013f5	 Bytes: 4
  %loadMem_4013f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013f5 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013f5)
  store %struct.Memory* %call_4013f5, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 4013f9	 Bytes: 5
  %loadMem_4013f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013f9 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013f9)
  store %struct.Memory* %call_4013f9, %struct.Memory** %MEMORY

  ; Code: movsd -0x58(%rbp), %xmm0	 RIP: 4013fe	 Bytes: 5
  %loadMem_4013fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013fe = call %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013fe)
  store %struct.Memory* %call_4013fe, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 401403	 Bytes: 4
  %loadMem_401403 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401403 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401403)
  store %struct.Memory* %call_401403, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 401407	 Bytes: 3
  %loadMem_401407 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401407 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401407)
  store %struct.Memory* %call_401407, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40140a	 Bytes: 3
  %loadMem_40140a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40140a = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40140a)
  store %struct.Memory* %call_40140a, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 40140d	 Bytes: 3
  %loadMem_40140d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40140d = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40140d)
  store %struct.Memory* %call_40140d, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 401410	 Bytes: 5
  %loadMem_401410 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401410 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401410)
  store %struct.Memory* %call_401410, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm0	 RIP: 401415	 Bytes: 5
  %loadMem_401415 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401415 = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401415)
  store %struct.Memory* %call_401415, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 40141a	 Bytes: 4
  %loadMem_40141a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40141a = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40141a)
  store %struct.Memory* %call_40141a, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 40141e	 Bytes: 4
  %loadMem_40141e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40141e = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40141e)
  store %struct.Memory* %call_40141e, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 401422	 Bytes: 5
  %loadMem_401422 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401422 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401422)
  store %struct.Memory* %call_401422, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm0	 RIP: 401427	 Bytes: 5
  %loadMem_401427 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401427 = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401427)
  store %struct.Memory* %call_401427, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 40142c	 Bytes: 4
  %loadMem_40142c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40142c = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40142c)
  store %struct.Memory* %call_40142c, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 401430	 Bytes: 3
  %loadMem_401430 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401430 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401430)
  store %struct.Memory* %call_401430, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401433	 Bytes: 3
  %loadMem_401433 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401433 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401433)
  store %struct.Memory* %call_401433, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 401436	 Bytes: 3
  %loadMem_401436 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401436 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401436)
  store %struct.Memory* %call_401436, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 401439	 Bytes: 5
  %loadMem_401439 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401439 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401439)
  store %struct.Memory* %call_401439, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %eax	 RIP: 40143e	 Bytes: 3
  %loadMem_40143e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40143e = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40143e)
  store %struct.Memory* %call_40143e, %struct.Memory** %MEMORY

  ; Code: addl -0x20(%rbp), %eax	 RIP: 401441	 Bytes: 3
  %loadMem_401441 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401441 = call %struct.Memory* @routine_addl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401441)
  store %struct.Memory* %call_401441, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 401444	 Bytes: 3
  %loadMem_401444 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401444 = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401444)
  store %struct.Memory* %call_401444, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %eax	 RIP: 401447	 Bytes: 3
  %loadMem_401447 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401447 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401447)
  store %struct.Memory* %call_401447, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %esi	 RIP: 40144a	 Bytes: 3
  %loadMem_40144a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40144a = call %struct.Memory* @routine_movl_MINUS0x28__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40144a)
  store %struct.Memory* %call_40144a, %struct.Memory** %MEMORY

  ; Code: subl %eax, %esi	 RIP: 40144d	 Bytes: 2
  %loadMem_40144d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40144d = call %struct.Memory* @routine_subl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40144d)
  store %struct.Memory* %call_40144d, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x28(%rbp)	 RIP: 40144f	 Bytes: 3
  %loadMem_40144f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40144f = call %struct.Memory* @routine_movl__esi__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40144f)
  store %struct.Memory* %call_40144f, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 401452	 Bytes: 4
  %loadMem_401452 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401452 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401452)
  store %struct.Memory* %call_401452, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 401456	 Bytes: 4
  %loadMem_401456 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401456 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401456)
  store %struct.Memory* %call_401456, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 40145a	 Bytes: 5
  %loadMem_40145a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40145a = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40145a)
  store %struct.Memory* %call_40145a, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x40(%rbp)	 RIP: 40145f	 Bytes: 5
  %loadMem_40145f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40145f = call %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40145f)
  store %struct.Memory* %call_40145f, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 401464	 Bytes: 4
  %loadMem_401464 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401464 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401464)
  store %struct.Memory* %call_401464, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 401468	 Bytes: 3
  %loadMem_401468 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401468 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401468)
  store %struct.Memory* %call_401468, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40146b	 Bytes: 3
  %loadMem_40146b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40146b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40146b)
  store %struct.Memory* %call_40146b, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 40146e	 Bytes: 3
  %loadMem_40146e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40146e = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40146e)
  store %struct.Memory* %call_40146e, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 401471	 Bytes: 5
  %loadMem_401471 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401471 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401471)
  store %struct.Memory* %call_401471, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x48(%rbp)	 RIP: 401476	 Bytes: 5
  %loadMem_401476 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401476 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401476)
  store %struct.Memory* %call_401476, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 40147b	 Bytes: 4
  %loadMem_40147b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40147b = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40147b)
  store %struct.Memory* %call_40147b, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 40147f	 Bytes: 4
  %loadMem_40147f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40147f = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40147f)
  store %struct.Memory* %call_40147f, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 401483	 Bytes: 5
  %loadMem_401483 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401483 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401483)
  store %struct.Memory* %call_401483, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x50(%rbp)	 RIP: 401488	 Bytes: 5
  %loadMem_401488 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401488 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401488)
  store %struct.Memory* %call_401488, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 40148d	 Bytes: 4
  %loadMem_40148d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40148d = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40148d)
  store %struct.Memory* %call_40148d, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 401491	 Bytes: 3
  %loadMem_401491 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401491 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401491)
  store %struct.Memory* %call_401491, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401494	 Bytes: 3
  %loadMem_401494 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401494 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401494)
  store %struct.Memory* %call_401494, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 401497	 Bytes: 3
  %loadMem_401497 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401497 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401497)
  store %struct.Memory* %call_401497, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 40149a	 Bytes: 5
  %loadMem_40149a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40149a = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40149a)
  store %struct.Memory* %call_40149a, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x58(%rbp)	 RIP: 40149f	 Bytes: 5
  %loadMem_40149f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40149f = call %struct.Memory* @routine_movsd__xmm0__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40149f)
  store %struct.Memory* %call_40149f, %struct.Memory** %MEMORY

  ; Code: movsd -0x50(%rbp), %xmm0	 RIP: 4014a4	 Bytes: 5
  %loadMem_4014a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014a4 = call %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014a4)
  store %struct.Memory* %call_4014a4, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4014a9	 Bytes: 4
  %loadMem_4014a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014a9 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014a9)
  store %struct.Memory* %call_4014a9, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 4014ad	 Bytes: 4
  %loadMem_4014ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014ad = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014ad)
  store %struct.Memory* %call_4014ad, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 4014b1	 Bytes: 5
  %loadMem_4014b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014b1 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014b1)
  store %struct.Memory* %call_4014b1, %struct.Memory** %MEMORY

  ; Code: movsd -0x58(%rbp), %xmm0	 RIP: 4014b6	 Bytes: 5
  %loadMem_4014b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014b6 = call %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014b6)
  store %struct.Memory* %call_4014b6, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4014bb	 Bytes: 4
  %loadMem_4014bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014bb = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014bb)
  store %struct.Memory* %call_4014bb, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 4014bf	 Bytes: 3
  %loadMem_4014bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014bf = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014bf)
  store %struct.Memory* %call_4014bf, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4014c2	 Bytes: 3
  %loadMem_4014c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014c2 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014c2)
  store %struct.Memory* %call_4014c2, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4014c5	 Bytes: 3
  %loadMem_4014c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014c5 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014c5)
  store %struct.Memory* %call_4014c5, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 4014c8	 Bytes: 5
  %loadMem_4014c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014c8 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014c8)
  store %struct.Memory* %call_4014c8, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm0	 RIP: 4014cd	 Bytes: 5
  %loadMem_4014cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014cd = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014cd)
  store %struct.Memory* %call_4014cd, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4014d2	 Bytes: 4
  %loadMem_4014d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014d2 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014d2)
  store %struct.Memory* %call_4014d2, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 4014d6	 Bytes: 4
  %loadMem_4014d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014d6 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014d6)
  store %struct.Memory* %call_4014d6, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 4014da	 Bytes: 5
  %loadMem_4014da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014da = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014da)
  store %struct.Memory* %call_4014da, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm0	 RIP: 4014df	 Bytes: 5
  %loadMem_4014df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014df = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014df)
  store %struct.Memory* %call_4014df, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4014e4	 Bytes: 4
  %loadMem_4014e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014e4 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014e4)
  store %struct.Memory* %call_4014e4, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 4014e8	 Bytes: 3
  %loadMem_4014e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014e8 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014e8)
  store %struct.Memory* %call_4014e8, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4014eb	 Bytes: 3
  %loadMem_4014eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014eb = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014eb)
  store %struct.Memory* %call_4014eb, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4014ee	 Bytes: 3
  %loadMem_4014ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014ee = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014ee)
  store %struct.Memory* %call_4014ee, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 4014f1	 Bytes: 5
  %loadMem_4014f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014f1 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014f1)
  store %struct.Memory* %call_4014f1, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %eax	 RIP: 4014f6	 Bytes: 3
  %loadMem_4014f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014f6 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014f6)
  store %struct.Memory* %call_4014f6, %struct.Memory** %MEMORY

  ; Code: addl -0x20(%rbp), %eax	 RIP: 4014f9	 Bytes: 3
  %loadMem_4014f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014f9 = call %struct.Memory* @routine_addl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014f9)
  store %struct.Memory* %call_4014f9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 4014fc	 Bytes: 3
  %loadMem_4014fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014fc = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014fc)
  store %struct.Memory* %call_4014fc, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %eax	 RIP: 4014ff	 Bytes: 3
  %loadMem_4014ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014ff = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014ff)
  store %struct.Memory* %call_4014ff, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 401502	 Bytes: 3
  %loadMem_401502 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401502 = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401502)
  store %struct.Memory* %call_401502, %struct.Memory** %MEMORY

  ; Code: addl -0x28(%rbp), %eax	 RIP: 401505	 Bytes: 3
  %loadMem_401505 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401505 = call %struct.Memory* @routine_addl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401505)
  store %struct.Memory* %call_401505, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 401508	 Bytes: 3
  %loadMem_401508 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401508 = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401508)
  store %struct.Memory* %call_401508, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 40150b	 Bytes: 4
  %loadMem_40150b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40150b = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40150b)
  store %struct.Memory* %call_40150b, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 40150f	 Bytes: 4
  %loadMem_40150f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40150f = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40150f)
  store %struct.Memory* %call_40150f, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 401513	 Bytes: 5
  %loadMem_401513 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401513 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401513)
  store %struct.Memory* %call_401513, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x40(%rbp)	 RIP: 401518	 Bytes: 5
  %loadMem_401518 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401518 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401518)
  store %struct.Memory* %call_401518, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 40151d	 Bytes: 4
  %loadMem_40151d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40151d = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40151d)
  store %struct.Memory* %call_40151d, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 401521	 Bytes: 3
  %loadMem_401521 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401521 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401521)
  store %struct.Memory* %call_401521, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401524	 Bytes: 3
  %loadMem_401524 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401524 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401524)
  store %struct.Memory* %call_401524, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 401527	 Bytes: 3
  %loadMem_401527 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401527 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401527)
  store %struct.Memory* %call_401527, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 40152a	 Bytes: 5
  %loadMem_40152a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40152a = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40152a)
  store %struct.Memory* %call_40152a, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x48(%rbp)	 RIP: 40152f	 Bytes: 5
  %loadMem_40152f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40152f = call %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40152f)
  store %struct.Memory* %call_40152f, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 401534	 Bytes: 4
  %loadMem_401534 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401534 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401534)
  store %struct.Memory* %call_401534, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 401538	 Bytes: 4
  %loadMem_401538 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401538 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401538)
  store %struct.Memory* %call_401538, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 40153c	 Bytes: 5
  %loadMem_40153c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40153c = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40153c)
  store %struct.Memory* %call_40153c, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x50(%rbp)	 RIP: 401541	 Bytes: 5
  %loadMem_401541 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401541 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401541)
  store %struct.Memory* %call_401541, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 401546	 Bytes: 4
  %loadMem_401546 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401546 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401546)
  store %struct.Memory* %call_401546, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 40154a	 Bytes: 3
  %loadMem_40154a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40154a = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40154a)
  store %struct.Memory* %call_40154a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40154d	 Bytes: 3
  %loadMem_40154d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40154d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40154d)
  store %struct.Memory* %call_40154d, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 401550	 Bytes: 3
  %loadMem_401550 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401550 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401550)
  store %struct.Memory* %call_401550, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 401553	 Bytes: 5
  %loadMem_401553 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401553 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401553)
  store %struct.Memory* %call_401553, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x58(%rbp)	 RIP: 401558	 Bytes: 5
  %loadMem_401558 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401558 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401558)
  store %struct.Memory* %call_401558, %struct.Memory** %MEMORY

  ; Code: movsd -0x50(%rbp), %xmm0	 RIP: 40155d	 Bytes: 5
  %loadMem_40155d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40155d = call %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40155d)
  store %struct.Memory* %call_40155d, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 401562	 Bytes: 4
  %loadMem_401562 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401562 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401562)
  store %struct.Memory* %call_401562, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 401566	 Bytes: 4
  %loadMem_401566 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401566 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401566)
  store %struct.Memory* %call_401566, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 40156a	 Bytes: 5
  %loadMem_40156a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40156a = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40156a)
  store %struct.Memory* %call_40156a, %struct.Memory** %MEMORY

  ; Code: movsd -0x58(%rbp), %xmm0	 RIP: 40156f	 Bytes: 5
  %loadMem_40156f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40156f = call %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40156f)
  store %struct.Memory* %call_40156f, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 401574	 Bytes: 4
  %loadMem_401574 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401574 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401574)
  store %struct.Memory* %call_401574, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 401578	 Bytes: 3
  %loadMem_401578 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401578 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401578)
  store %struct.Memory* %call_401578, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40157b	 Bytes: 3
  %loadMem_40157b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40157b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40157b)
  store %struct.Memory* %call_40157b, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 40157e	 Bytes: 3
  %loadMem_40157e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40157e = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40157e)
  store %struct.Memory* %call_40157e, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 401581	 Bytes: 5
  %loadMem_401581 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401581 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401581)
  store %struct.Memory* %call_401581, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm0	 RIP: 401586	 Bytes: 5
  %loadMem_401586 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401586 = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401586)
  store %struct.Memory* %call_401586, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 40158b	 Bytes: 4
  %loadMem_40158b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40158b = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40158b)
  store %struct.Memory* %call_40158b, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 40158f	 Bytes: 4
  %loadMem_40158f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40158f = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40158f)
  store %struct.Memory* %call_40158f, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 401593	 Bytes: 5
  %loadMem_401593 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401593 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401593)
  store %struct.Memory* %call_401593, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm0	 RIP: 401598	 Bytes: 5
  %loadMem_401598 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401598 = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401598)
  store %struct.Memory* %call_401598, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 40159d	 Bytes: 4
  %loadMem_40159d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40159d = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40159d)
  store %struct.Memory* %call_40159d, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 4015a1	 Bytes: 3
  %loadMem_4015a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015a1 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015a1)
  store %struct.Memory* %call_4015a1, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4015a4	 Bytes: 3
  %loadMem_4015a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015a4 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015a4)
  store %struct.Memory* %call_4015a4, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4015a7	 Bytes: 3
  %loadMem_4015a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015a7 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015a7)
  store %struct.Memory* %call_4015a7, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 4015aa	 Bytes: 5
  %loadMem_4015aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015aa = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015aa)
  store %struct.Memory* %call_4015aa, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4015af	 Bytes: 3
  %loadMem_4015af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015af = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015af)
  store %struct.Memory* %call_4015af, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4015b2	 Bytes: 3
  %loadMem_4015b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015b2 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015b2)
  store %struct.Memory* %call_4015b2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 4015b5	 Bytes: 3
  %loadMem_4015b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015b5 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015b5)
  store %struct.Memory* %call_4015b5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4012ad	 RIP: 4015b8	 Bytes: 5
  %loadMem_4015b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015b8 = call %struct.Memory* @routine_jmpq_.L_4012ad(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015b8, i64 -779, i64 5)
  store %struct.Memory* %call_4015b8, %struct.Memory** %MEMORY

  br label %block_.L_4012ad

  ; Code: .L_4015bd:	 RIP: 4015bd	 Bytes: 0
block_.L_4015bd:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 4015bd	 Bytes: 3
  %loadMem_4015bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015bd = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015bd)
  store %struct.Memory* %call_4015bd, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 4015c0	 Bytes: 3
  %loadMem_4015c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015c0 = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015c0)
  store %struct.Memory* %call_4015c0, %struct.Memory** %MEMORY

  ; Code: addl -0x34(%rbp), %eax	 RIP: 4015c3	 Bytes: 3
  %loadMem_4015c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015c3 = call %struct.Memory* @routine_addl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015c3)
  store %struct.Memory* %call_4015c3, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4015c6	 Bytes: 4
  %loadMem_4015c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015c6 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015c6)
  store %struct.Memory* %call_4015c6, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 4015ca	 Bytes: 4
  %loadMem_4015ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015ca = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015ca)
  store %struct.Memory* %call_4015ca, %struct.Memory** %MEMORY

  ; Code: addl (%rcx,%rdx,4), %eax	 RIP: 4015ce	 Bytes: 3
  %loadMem_4015ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015ce = call %struct.Memory* @routine_addl___rcx__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015ce)
  store %struct.Memory* %call_4015ce, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 4015d1	 Bytes: 3
  %loadMem_4015d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015d1 = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015d1)
  store %struct.Memory* %call_4015d1, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 4015d4	 Bytes: 3
  %loadMem_4015d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015d4 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015d4)
  store %struct.Memory* %call_4015d4, %struct.Memory** %MEMORY

  ; Code: addl -0x34(%rbp), %eax	 RIP: 4015d7	 Bytes: 3
  %loadMem_4015d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015d7 = call %struct.Memory* @routine_addl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015d7)
  store %struct.Memory* %call_4015d7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 4015da	 Bytes: 3
  %loadMem_4015da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015da = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015da)
  store %struct.Memory* %call_4015da, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4015dd	 Bytes: 4
  %loadMem_4015dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015dd = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015dd)
  store %struct.Memory* %call_4015dd, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 4015e1	 Bytes: 4
  %loadMem_4015e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015e1 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015e1)
  store %struct.Memory* %call_4015e1, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 4015e5	 Bytes: 5
  %loadMem_4015e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015e5 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015e5)
  store %struct.Memory* %call_4015e5, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x40(%rbp)	 RIP: 4015ea	 Bytes: 5
  %loadMem_4015ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015ea = call %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015ea)
  store %struct.Memory* %call_4015ea, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4015ef	 Bytes: 4
  %loadMem_4015ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015ef = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015ef)
  store %struct.Memory* %call_4015ef, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 4015f3	 Bytes: 3
  %loadMem_4015f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015f3 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015f3)
  store %struct.Memory* %call_4015f3, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4015f6	 Bytes: 3
  %loadMem_4015f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015f6 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015f6)
  store %struct.Memory* %call_4015f6, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4015f9	 Bytes: 3
  %loadMem_4015f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015f9 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015f9)
  store %struct.Memory* %call_4015f9, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 4015fc	 Bytes: 5
  %loadMem_4015fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015fc = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015fc)
  store %struct.Memory* %call_4015fc, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x48(%rbp)	 RIP: 401601	 Bytes: 5
  %loadMem_401601 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401601 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401601)
  store %struct.Memory* %call_401601, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 401606	 Bytes: 4
  %loadMem_401606 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401606 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401606)
  store %struct.Memory* %call_401606, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 40160a	 Bytes: 4
  %loadMem_40160a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40160a = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40160a)
  store %struct.Memory* %call_40160a, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 40160e	 Bytes: 5
  %loadMem_40160e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40160e = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40160e)
  store %struct.Memory* %call_40160e, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x50(%rbp)	 RIP: 401613	 Bytes: 5
  %loadMem_401613 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401613 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401613)
  store %struct.Memory* %call_401613, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 401618	 Bytes: 4
  %loadMem_401618 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401618 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401618)
  store %struct.Memory* %call_401618, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 40161c	 Bytes: 3
  %loadMem_40161c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40161c = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40161c)
  store %struct.Memory* %call_40161c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40161f	 Bytes: 3
  %loadMem_40161f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40161f = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40161f)
  store %struct.Memory* %call_40161f, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 401622	 Bytes: 3
  %loadMem_401622 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401622 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401622)
  store %struct.Memory* %call_401622, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 401625	 Bytes: 5
  %loadMem_401625 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401625 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401625)
  store %struct.Memory* %call_401625, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x58(%rbp)	 RIP: 40162a	 Bytes: 5
  %loadMem_40162a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40162a = call %struct.Memory* @routine_movsd__xmm0__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40162a)
  store %struct.Memory* %call_40162a, %struct.Memory** %MEMORY

  ; Code: movsd -0x50(%rbp), %xmm0	 RIP: 40162f	 Bytes: 5
  %loadMem_40162f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40162f = call %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40162f)
  store %struct.Memory* %call_40162f, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 401634	 Bytes: 4
  %loadMem_401634 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401634 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401634)
  store %struct.Memory* %call_401634, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 401638	 Bytes: 4
  %loadMem_401638 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401638 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401638)
  store %struct.Memory* %call_401638, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 40163c	 Bytes: 5
  %loadMem_40163c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40163c = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40163c)
  store %struct.Memory* %call_40163c, %struct.Memory** %MEMORY

  ; Code: movsd -0x58(%rbp), %xmm0	 RIP: 401641	 Bytes: 5
  %loadMem_401641 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401641 = call %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401641)
  store %struct.Memory* %call_401641, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 401646	 Bytes: 4
  %loadMem_401646 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401646 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401646)
  store %struct.Memory* %call_401646, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 40164a	 Bytes: 3
  %loadMem_40164a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40164a = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40164a)
  store %struct.Memory* %call_40164a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40164d	 Bytes: 3
  %loadMem_40164d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40164d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40164d)
  store %struct.Memory* %call_40164d, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 401650	 Bytes: 3
  %loadMem_401650 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401650 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401650)
  store %struct.Memory* %call_401650, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 401653	 Bytes: 5
  %loadMem_401653 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401653 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401653)
  store %struct.Memory* %call_401653, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm0	 RIP: 401658	 Bytes: 5
  %loadMem_401658 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401658 = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401658)
  store %struct.Memory* %call_401658, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 40165d	 Bytes: 4
  %loadMem_40165d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40165d = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40165d)
  store %struct.Memory* %call_40165d, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 401661	 Bytes: 4
  %loadMem_401661 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401661 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401661)
  store %struct.Memory* %call_401661, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 401665	 Bytes: 5
  %loadMem_401665 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401665 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401665)
  store %struct.Memory* %call_401665, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm0	 RIP: 40166a	 Bytes: 5
  %loadMem_40166a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40166a = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40166a)
  store %struct.Memory* %call_40166a, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 40166f	 Bytes: 4
  %loadMem_40166f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40166f = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40166f)
  store %struct.Memory* %call_40166f, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 401673	 Bytes: 3
  %loadMem_401673 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401673 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401673)
  store %struct.Memory* %call_401673, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401676	 Bytes: 3
  %loadMem_401676 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401676 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401676)
  store %struct.Memory* %call_401676, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 401679	 Bytes: 3
  %loadMem_401679 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401679 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401679)
  store %struct.Memory* %call_401679, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 40167c	 Bytes: 5
  %loadMem_40167c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40167c = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40167c)
  store %struct.Memory* %call_40167c, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 401681	 Bytes: 3
  %loadMem_401681 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401681 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401681)
  store %struct.Memory* %call_401681, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401684	 Bytes: 3
  %loadMem_401684 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401684 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401684)
  store %struct.Memory* %call_401684, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 401687	 Bytes: 3
  %loadMem_401687 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401687 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401687)
  store %struct.Memory* %call_401687, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40129a	 RIP: 40168a	 Bytes: 5
  %loadMem_40168a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40168a = call %struct.Memory* @routine_jmpq_.L_40129a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40168a, i64 -1008, i64 5)
  store %struct.Memory* %call_40168a, %struct.Memory** %MEMORY

  br label %block_.L_40129a

  ; Code: .L_40168f:	 RIP: 40168f	 Bytes: 0
block_.L_40168f:

  ; Code: jmpq .L_401862	 RIP: 40168f	 Bytes: 5
  %loadMem_40168f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40168f = call %struct.Memory* @routine_jmpq_.L_401862(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40168f, i64 467, i64 5)
  store %struct.Memory* %call_40168f, %struct.Memory** %MEMORY

  br label %block_.L_401862

  ; Code: .L_401694:	 RIP: 401694	 Bytes: 0
block_.L_401694:

  ; Code: movl $0x1, -0x24(%rbp)	 RIP: 401694	 Bytes: 7
  %loadMem_401694 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401694 = call %struct.Memory* @routine_movl__0x1__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401694)
  store %struct.Memory* %call_401694, %struct.Memory** %MEMORY

  ; Code: .L_40169b:	 RIP: 40169b	 Bytes: 0
  br label %block_.L_40169b
block_.L_40169b:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 40169b	 Bytes: 3
  %loadMem_40169b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40169b = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40169b)
  store %struct.Memory* %call_40169b, %struct.Memory** %MEMORY

  ; Code: cmpl -0x30(%rbp), %eax	 RIP: 40169e	 Bytes: 3
  %loadMem_40169e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40169e = call %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40169e)
  store %struct.Memory* %call_40169e, %struct.Memory** %MEMORY

  ; Code: jge .L_40185d	 RIP: 4016a1	 Bytes: 6
  %loadMem_4016a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016a1 = call %struct.Memory* @routine_jge_.L_40185d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016a1, i8* %BRANCH_TAKEN, i64 444, i64 6, i64 6)
  store %struct.Memory* %call_4016a1, %struct.Memory** %MEMORY

  %loadBr_4016a1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4016a1 = icmp eq i8 %loadBr_4016a1, 1
  br i1 %cmpBr_4016a1, label %block_.L_40185d, label %block_4016a7

block_4016a7:
  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 4016a7	 Bytes: 7
  %loadMem_4016a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016a7 = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016a7)
  store %struct.Memory* %call_4016a7, %struct.Memory** %MEMORY

  ; Code: .L_4016ae:	 RIP: 4016ae	 Bytes: 0
  br label %block_.L_4016ae
block_.L_4016ae:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4016ae	 Bytes: 3
  %loadMem_4016ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016ae = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016ae)
  store %struct.Memory* %call_4016ae, %struct.Memory** %MEMORY

  ; Code: cmpl -0x24(%rbp), %eax	 RIP: 4016b1	 Bytes: 3
  %loadMem_4016b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016b1 = call %struct.Memory* @routine_cmpl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016b1)
  store %struct.Memory* %call_4016b1, %struct.Memory** %MEMORY

  ; Code: jge .L_40184a	 RIP: 4016b4	 Bytes: 6
  %loadMem_4016b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016b4 = call %struct.Memory* @routine_jge_.L_40184a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016b4, i8* %BRANCH_TAKEN, i64 406, i64 6, i64 6)
  store %struct.Memory* %call_4016b4, %struct.Memory** %MEMORY

  %loadBr_4016b4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4016b4 = icmp eq i8 %loadBr_4016b4, 1
  br i1 %cmpBr_4016b4, label %block_.L_40184a, label %block_4016ba

block_4016ba:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4016ba	 Bytes: 3
  %loadMem_4016ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016ba = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016ba)
  store %struct.Memory* %call_4016ba, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 4016bd	 Bytes: 3
  %loadMem_4016bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016bd = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016bd)
  store %struct.Memory* %call_4016bd, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4016c0	 Bytes: 4
  %loadMem_4016c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016c0 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016c0)
  store %struct.Memory* %call_4016c0, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 4016c4	 Bytes: 4
  %loadMem_4016c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016c4 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016c4)
  store %struct.Memory* %call_4016c4, %struct.Memory** %MEMORY

  ; Code: addl (%rcx,%rdx,4), %eax	 RIP: 4016c8	 Bytes: 3
  %loadMem_4016c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016c8 = call %struct.Memory* @routine_addl___rcx__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016c8)
  store %struct.Memory* %call_4016c8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 4016cb	 Bytes: 3
  %loadMem_4016cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016cb = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016cb)
  store %struct.Memory* %call_4016cb, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 4016ce	 Bytes: 3
  %loadMem_4016ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016ce = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016ce)
  store %struct.Memory* %call_4016ce, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 4016d1	 Bytes: 3
  %loadMem_4016d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016d1 = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016d1)
  store %struct.Memory* %call_4016d1, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4016d4	 Bytes: 4
  %loadMem_4016d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016d4 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016d4)
  store %struct.Memory* %call_4016d4, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 4016d8	 Bytes: 4
  %loadMem_4016d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016d8 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016d8)
  store %struct.Memory* %call_4016d8, %struct.Memory** %MEMORY

  ; Code: addl (%rcx,%rdx,4), %eax	 RIP: 4016dc	 Bytes: 3
  %loadMem_4016dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016dc = call %struct.Memory* @routine_addl___rcx__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016dc)
  store %struct.Memory* %call_4016dc, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 4016df	 Bytes: 3
  %loadMem_4016df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016df = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016df)
  store %struct.Memory* %call_4016df, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4016e2	 Bytes: 4
  %loadMem_4016e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016e2 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016e2)
  store %struct.Memory* %call_4016e2, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 4016e6	 Bytes: 4
  %loadMem_4016e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016e6 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016e6)
  store %struct.Memory* %call_4016e6, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 4016ea	 Bytes: 5
  %loadMem_4016ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016ea = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016ea)
  store %struct.Memory* %call_4016ea, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x40(%rbp)	 RIP: 4016ef	 Bytes: 5
  %loadMem_4016ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016ef = call %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016ef)
  store %struct.Memory* %call_4016ef, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4016f4	 Bytes: 4
  %loadMem_4016f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016f4 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016f4)
  store %struct.Memory* %call_4016f4, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 4016f8	 Bytes: 3
  %loadMem_4016f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016f8 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016f8)
  store %struct.Memory* %call_4016f8, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4016fb	 Bytes: 3
  %loadMem_4016fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016fb = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016fb)
  store %struct.Memory* %call_4016fb, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4016fe	 Bytes: 3
  %loadMem_4016fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016fe = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016fe)
  store %struct.Memory* %call_4016fe, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 401701	 Bytes: 5
  %loadMem_401701 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401701 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401701)
  store %struct.Memory* %call_401701, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x48(%rbp)	 RIP: 401706	 Bytes: 5
  %loadMem_401706 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401706 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401706)
  store %struct.Memory* %call_401706, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 40170b	 Bytes: 4
  %loadMem_40170b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40170b = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40170b)
  store %struct.Memory* %call_40170b, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 40170f	 Bytes: 4
  %loadMem_40170f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40170f = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40170f)
  store %struct.Memory* %call_40170f, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 401713	 Bytes: 5
  %loadMem_401713 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401713 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401713)
  store %struct.Memory* %call_401713, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x50(%rbp)	 RIP: 401718	 Bytes: 5
  %loadMem_401718 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401718 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401718)
  store %struct.Memory* %call_401718, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 40171d	 Bytes: 4
  %loadMem_40171d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40171d = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40171d)
  store %struct.Memory* %call_40171d, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 401721	 Bytes: 3
  %loadMem_401721 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401721 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401721)
  store %struct.Memory* %call_401721, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401724	 Bytes: 3
  %loadMem_401724 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401724 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401724)
  store %struct.Memory* %call_401724, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 401727	 Bytes: 3
  %loadMem_401727 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401727 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401727)
  store %struct.Memory* %call_401727, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 40172a	 Bytes: 5
  %loadMem_40172a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40172a = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40172a)
  store %struct.Memory* %call_40172a, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x58(%rbp)	 RIP: 40172f	 Bytes: 5
  %loadMem_40172f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40172f = call %struct.Memory* @routine_movsd__xmm0__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40172f)
  store %struct.Memory* %call_40172f, %struct.Memory** %MEMORY

  ; Code: movsd -0x50(%rbp), %xmm0	 RIP: 401734	 Bytes: 5
  %loadMem_401734 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401734 = call %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401734)
  store %struct.Memory* %call_401734, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 401739	 Bytes: 4
  %loadMem_401739 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401739 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401739)
  store %struct.Memory* %call_401739, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 40173d	 Bytes: 4
  %loadMem_40173d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40173d = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40173d)
  store %struct.Memory* %call_40173d, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 401741	 Bytes: 5
  %loadMem_401741 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401741 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401741)
  store %struct.Memory* %call_401741, %struct.Memory** %MEMORY

  ; Code: movsd -0x58(%rbp), %xmm0	 RIP: 401746	 Bytes: 5
  %loadMem_401746 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401746 = call %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401746)
  store %struct.Memory* %call_401746, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 40174b	 Bytes: 4
  %loadMem_40174b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40174b = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40174b)
  store %struct.Memory* %call_40174b, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 40174f	 Bytes: 3
  %loadMem_40174f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40174f = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40174f)
  store %struct.Memory* %call_40174f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401752	 Bytes: 3
  %loadMem_401752 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401752 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401752)
  store %struct.Memory* %call_401752, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 401755	 Bytes: 3
  %loadMem_401755 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401755 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401755)
  store %struct.Memory* %call_401755, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 401758	 Bytes: 5
  %loadMem_401758 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401758 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401758)
  store %struct.Memory* %call_401758, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm0	 RIP: 40175d	 Bytes: 5
  %loadMem_40175d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40175d = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40175d)
  store %struct.Memory* %call_40175d, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 401762	 Bytes: 4
  %loadMem_401762 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401762 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401762)
  store %struct.Memory* %call_401762, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 401766	 Bytes: 4
  %loadMem_401766 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401766 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401766)
  store %struct.Memory* %call_401766, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 40176a	 Bytes: 5
  %loadMem_40176a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40176a = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40176a)
  store %struct.Memory* %call_40176a, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm0	 RIP: 40176f	 Bytes: 5
  %loadMem_40176f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40176f = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40176f)
  store %struct.Memory* %call_40176f, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 401774	 Bytes: 4
  %loadMem_401774 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401774 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401774)
  store %struct.Memory* %call_401774, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 401778	 Bytes: 3
  %loadMem_401778 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401778 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401778)
  store %struct.Memory* %call_401778, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40177b	 Bytes: 3
  %loadMem_40177b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40177b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40177b)
  store %struct.Memory* %call_40177b, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 40177e	 Bytes: 3
  %loadMem_40177e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40177e = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40177e)
  store %struct.Memory* %call_40177e, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 401781	 Bytes: 5
  %loadMem_401781 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401781 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401781)
  store %struct.Memory* %call_401781, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %eax	 RIP: 401786	 Bytes: 3
  %loadMem_401786 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401786 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401786)
  store %struct.Memory* %call_401786, %struct.Memory** %MEMORY

  ; Code: addl -0x20(%rbp), %eax	 RIP: 401789	 Bytes: 3
  %loadMem_401789 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401789 = call %struct.Memory* @routine_addl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401789)
  store %struct.Memory* %call_401789, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 40178c	 Bytes: 3
  %loadMem_40178c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40178c = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40178c)
  store %struct.Memory* %call_40178c, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %eax	 RIP: 40178f	 Bytes: 3
  %loadMem_40178f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40178f = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40178f)
  store %struct.Memory* %call_40178f, %struct.Memory** %MEMORY

  ; Code: addl -0x28(%rbp), %eax	 RIP: 401792	 Bytes: 3
  %loadMem_401792 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401792 = call %struct.Memory* @routine_addl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401792)
  store %struct.Memory* %call_401792, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 401795	 Bytes: 3
  %loadMem_401795 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401795 = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401795)
  store %struct.Memory* %call_401795, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 401798	 Bytes: 4
  %loadMem_401798 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401798 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401798)
  store %struct.Memory* %call_401798, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 40179c	 Bytes: 4
  %loadMem_40179c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40179c = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40179c)
  store %struct.Memory* %call_40179c, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 4017a0	 Bytes: 5
  %loadMem_4017a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017a0 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017a0)
  store %struct.Memory* %call_4017a0, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x40(%rbp)	 RIP: 4017a5	 Bytes: 5
  %loadMem_4017a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017a5 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017a5)
  store %struct.Memory* %call_4017a5, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4017aa	 Bytes: 4
  %loadMem_4017aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017aa = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017aa)
  store %struct.Memory* %call_4017aa, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 4017ae	 Bytes: 3
  %loadMem_4017ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017ae = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017ae)
  store %struct.Memory* %call_4017ae, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4017b1	 Bytes: 3
  %loadMem_4017b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017b1 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017b1)
  store %struct.Memory* %call_4017b1, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4017b4	 Bytes: 3
  %loadMem_4017b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017b4 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017b4)
  store %struct.Memory* %call_4017b4, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 4017b7	 Bytes: 5
  %loadMem_4017b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017b7 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017b7)
  store %struct.Memory* %call_4017b7, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x48(%rbp)	 RIP: 4017bc	 Bytes: 5
  %loadMem_4017bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017bc = call %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017bc)
  store %struct.Memory* %call_4017bc, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4017c1	 Bytes: 4
  %loadMem_4017c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017c1 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017c1)
  store %struct.Memory* %call_4017c1, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 4017c5	 Bytes: 4
  %loadMem_4017c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017c5 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017c5)
  store %struct.Memory* %call_4017c5, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 4017c9	 Bytes: 5
  %loadMem_4017c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017c9 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017c9)
  store %struct.Memory* %call_4017c9, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x50(%rbp)	 RIP: 4017ce	 Bytes: 5
  %loadMem_4017ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017ce = call %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017ce)
  store %struct.Memory* %call_4017ce, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4017d3	 Bytes: 4
  %loadMem_4017d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017d3 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017d3)
  store %struct.Memory* %call_4017d3, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 4017d7	 Bytes: 3
  %loadMem_4017d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017d7 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017d7)
  store %struct.Memory* %call_4017d7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4017da	 Bytes: 3
  %loadMem_4017da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017da = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017da)
  store %struct.Memory* %call_4017da, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4017dd	 Bytes: 3
  %loadMem_4017dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017dd = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017dd)
  store %struct.Memory* %call_4017dd, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 4017e0	 Bytes: 5
  %loadMem_4017e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017e0 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017e0)
  store %struct.Memory* %call_4017e0, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x58(%rbp)	 RIP: 4017e5	 Bytes: 5
  %loadMem_4017e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017e5 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017e5)
  store %struct.Memory* %call_4017e5, %struct.Memory** %MEMORY

  ; Code: movsd -0x50(%rbp), %xmm0	 RIP: 4017ea	 Bytes: 5
  %loadMem_4017ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017ea = call %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017ea)
  store %struct.Memory* %call_4017ea, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4017ef	 Bytes: 4
  %loadMem_4017ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017ef = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017ef)
  store %struct.Memory* %call_4017ef, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 4017f3	 Bytes: 4
  %loadMem_4017f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017f3 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017f3)
  store %struct.Memory* %call_4017f3, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 4017f7	 Bytes: 5
  %loadMem_4017f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017f7 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017f7)
  store %struct.Memory* %call_4017f7, %struct.Memory** %MEMORY

  ; Code: movsd -0x58(%rbp), %xmm0	 RIP: 4017fc	 Bytes: 5
  %loadMem_4017fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017fc = call %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017fc)
  store %struct.Memory* %call_4017fc, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 401801	 Bytes: 4
  %loadMem_401801 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401801 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401801)
  store %struct.Memory* %call_401801, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 401805	 Bytes: 3
  %loadMem_401805 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401805 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401805)
  store %struct.Memory* %call_401805, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401808	 Bytes: 3
  %loadMem_401808 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401808 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401808)
  store %struct.Memory* %call_401808, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 40180b	 Bytes: 3
  %loadMem_40180b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40180b = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40180b)
  store %struct.Memory* %call_40180b, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 40180e	 Bytes: 5
  %loadMem_40180e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40180e = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40180e)
  store %struct.Memory* %call_40180e, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm0	 RIP: 401813	 Bytes: 5
  %loadMem_401813 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401813 = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401813)
  store %struct.Memory* %call_401813, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 401818	 Bytes: 4
  %loadMem_401818 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401818 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401818)
  store %struct.Memory* %call_401818, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 40181c	 Bytes: 4
  %loadMem_40181c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40181c = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40181c)
  store %struct.Memory* %call_40181c, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 401820	 Bytes: 5
  %loadMem_401820 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401820 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401820)
  store %struct.Memory* %call_401820, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm0	 RIP: 401825	 Bytes: 5
  %loadMem_401825 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401825 = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401825)
  store %struct.Memory* %call_401825, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 40182a	 Bytes: 4
  %loadMem_40182a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40182a = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40182a)
  store %struct.Memory* %call_40182a, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 40182e	 Bytes: 3
  %loadMem_40182e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40182e = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40182e)
  store %struct.Memory* %call_40182e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401831	 Bytes: 3
  %loadMem_401831 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401831 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401831)
  store %struct.Memory* %call_401831, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 401834	 Bytes: 3
  %loadMem_401834 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401834 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401834)
  store %struct.Memory* %call_401834, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 401837	 Bytes: 5
  %loadMem_401837 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401837 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401837)
  store %struct.Memory* %call_401837, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 40183c	 Bytes: 3
  %loadMem_40183c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40183c = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40183c)
  store %struct.Memory* %call_40183c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40183f	 Bytes: 3
  %loadMem_40183f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40183f = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40183f)
  store %struct.Memory* %call_40183f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 401842	 Bytes: 3
  %loadMem_401842 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401842 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401842)
  store %struct.Memory* %call_401842, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4016ae	 RIP: 401845	 Bytes: 5
  %loadMem_401845 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401845 = call %struct.Memory* @routine_jmpq_.L_4016ae(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401845, i64 -407, i64 5)
  store %struct.Memory* %call_401845, %struct.Memory** %MEMORY

  br label %block_.L_4016ae

  ; Code: .L_40184a:	 RIP: 40184a	 Bytes: 0
block_.L_40184a:

  ; Code: jmpq .L_40184f	 RIP: 40184a	 Bytes: 5
  %loadMem_40184a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40184a = call %struct.Memory* @routine_jmpq_.L_40184f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40184a, i64 5, i64 5)
  store %struct.Memory* %call_40184a, %struct.Memory** %MEMORY

  br label %block_.L_40184f

  ; Code: .L_40184f:	 RIP: 40184f	 Bytes: 0
block_.L_40184f:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 40184f	 Bytes: 3
  %loadMem_40184f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40184f = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40184f)
  store %struct.Memory* %call_40184f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401852	 Bytes: 3
  %loadMem_401852 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401852 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401852)
  store %struct.Memory* %call_401852, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 401855	 Bytes: 3
  %loadMem_401855 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401855 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401855)
  store %struct.Memory* %call_401855, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40169b	 RIP: 401858	 Bytes: 5
  %loadMem_401858 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401858 = call %struct.Memory* @routine_jmpq_.L_40169b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401858, i64 -445, i64 5)
  store %struct.Memory* %call_401858, %struct.Memory** %MEMORY

  br label %block_.L_40169b

  ; Code: .L_40185d:	 RIP: 40185d	 Bytes: 0
block_.L_40185d:

  ; Code: jmpq .L_401862	 RIP: 40185d	 Bytes: 5
  %loadMem_40185d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40185d = call %struct.Memory* @routine_jmpq_.L_401862(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40185d, i64 5, i64 5)
  store %struct.Memory* %call_40185d, %struct.Memory** %MEMORY

  br label %block_.L_401862

  ; Code: .L_401862:	 RIP: 401862	 Bytes: 0
block_.L_401862:

  ; Code: popq %rbp	 RIP: 401862	 Bytes: 1
  %loadMem_401862 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401862 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401862)
  store %struct.Memory* %call_401862, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 401863	 Bytes: 1
  %loadMem_401863 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401863 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401863)
  store %struct.Memory* %call_401863, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_401863
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4PUSHI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64) #0 alwaysinline {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 13, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = add i64 %5, -8
  %7 = inttoptr i64 %6 to i64*
  store i64 %2, i64* %7
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_pushq__rbp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RBP
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 1
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4PUSHI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %9)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 alwaysinline {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rsp___rbp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 13
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RBP, i64 %12)
  ret %struct.Memory* %15
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 alwaysinline {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDI = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 4
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 alwaysinline {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 alwaysinline {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 alwaysinline {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x0____rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RDX
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 0)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 alwaysinline {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edi__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDI = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__0x1__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RBP
  %10 = sub i64 %9, 48
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 alwaysinline {
  %6 = trunc i64 %4 to i5
  switch i5 %6, label %13 [
    i5 0, label %45
    i5 1, label %7
  ]

; <label>:7:                                      ; preds = %5
  %8 = trunc i64 %3 to i32
  %9 = shl i32 %8, 1
  %10 = icmp slt i32 %8, 0
  %11 = icmp slt i32 %9, 0
  %12 = xor i1 %10, %11
  br label %23

; <label>:13:                                     ; preds = %5
  %14 = and i64 %4, 31
  %15 = add   i64 %14, 4294967295
  %16 = and i64 %3, 4294967295
  %17 = and i64 %15, 4294967295
  %18 = shl i64 %16, %17
  %19 = trunc i64 %18 to i32
  %20 = icmp slt i32 %19, 0
  %21 = icmp ne i8 0, 0
  %22 = shl i32 %19, 1
  br label %23

; <label>:23:                                     ; preds = %13, %7
  %24 = phi i1 [ %10, %7 ], [ %20, %13 ]
  %25 = phi i1 [ %12, %7 ], [ %21, %13 ]
  %26 = phi i32 [ %9, %7 ], [ %22, %13 ]
  %27 = zext i32 %26 to i64
  store i64 %27, i64* %2, align 8
  %28 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  %29 = zext i1 %24 to i8
  store i8 %29, i8* %28, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  %31 = and i32 %26, 254
  %32 = tail call i32 @llvm.ctpop.i32(i32 %31) #22
  %33 = trunc i32 %32 to i8
  %34 = and i8 %33, 1
  %35 = xor i8 %34, 1
  store i8 %35, i8* %30, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %38 = icmp eq i32 %26, 0
  %39 = zext i1 %38 to i8
  store i8 %39, i8* %37, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  %41 = lshr i32 %26, 31
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %40, align 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  %44 = zext i1 %25 to i8
  store i8 %44, i8* %43, align 1
  br label %45

; <label>:45:                                     ; preds = %23, %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_shll__0x3___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RAX
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 3)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 alwaysinline {
  %5 = trunc i64 %2 to i32
  %6 = inttoptr i64 %3 to i32*
  %7 = load i32, i32* %6
  %8 = sub i32 %5, %7
  %9 = icmp ult i32 %5, %7
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %8, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12) #22
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %5
  %19 = xor i32 %18, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %8, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %8, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %5, 31
  %31 = lshr i32 %7, 31
  %32 = xor i32 %31, %30
  %33 = xor i32 %27, %30
  %34 = add   i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cmpl_MINUS0x2c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RBP
  %15 = sub i64 %14, 44
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JNLEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 alwaysinline {
  %6 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  %7 = load i8, i8* %6, align 1
  %8 = icmp ne i8 %7, 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  %12 = xor i1 %8, %11
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i8
  store i8 %14, i8* %2, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %16 = select i1 %12, i64 %4, i64 %3
  store i64 %16, i64* %15, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jge_.L_40127b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNLEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 alwaysinline {
  %6 = trunc i64 %4 to i5
  switch i5 %6, label %10 [
    i5 0, label %43
    i5 1, label %7
  ]

; <label>:7:                                      ; preds = %5
  %8 = shl i64 %3, 32
  %9 = ashr i64 %8, 33
  br label %19

; <label>:10:                                     ; preds = %5
  %11 = and i64 %4, 31
  %12 = add  i64 %11, -1
  %13 = shl i64 %3, 32
  %14 = ashr exact i64 %13, 32
  %15 = ashr i64 %14, %12
  %16 = icmp ne i8 0, 0
  %17 = zext i1 %16 to i8
  %18 = lshr i64 %15, 1
  br label %19

; <label>:19:                                     ; preds = %10, %7
  %20 = phi i8 [ 0, %10 ], [ 0, %7 ]
  %21 = phi i64 [ %18, %10 ], [ %9, %7 ]
  %22 = phi i8 [ %17, %10 ], [ 0, %7 ]
  %23 = phi i64 [ %15, %10 ], [ %3, %7 ]
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = trunc i64 %21 to i32
  %27 = and i64 %21, 4294967295
  store i64 %27, i64* %2, align 8
  %28 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %25, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  %30 = and i32 %26, 255
  %31 = tail call i32 @llvm.ctpop.i32(i32 %30) #22
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  store i8 %34, i8* %29, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %20, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %37 = icmp eq i32 %26, 0
  %38 = zext i1 %37 to i8
  store i8 %38, i8* %36, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  %40 = lshr i32 %26, 31
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %39, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %22, i8* %42, align 1
  br label %43

; <label>:43:                                     ; preds = %19, %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_sarl__0x1___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RAX
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RBP
  %10 = sub i64 %9, 28
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RBP
  %15 = sub i64 %14, 48
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_40126d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNLEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 alwaysinline {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %18)
  ret %struct.Memory* %21
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 alwaysinline {
  %6 = trunc i64 %3 to i32
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7
  %9 = add i32 %8, %6
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %2, align 8
  %11 = icmp ult i32 %9, %6
  %12 = icmp ult i32 %9, %8
  %13 = or i1 %11, %12
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %9, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16) #22
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %8, %6
  %23 = xor i32 %22, %9
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %9, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %9, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %6, 31
  %35 = lshr i32 %8, 31
  %36 = xor i32 %31, %34
  %37 = xor i32 %31, %35
  %38 = add   i32 %36, %37
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_addl_MINUS0x2c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 44
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl_MINUS0x30__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x1c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 28
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 alwaysinline {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq__esi___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ESI = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RCX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %EDX
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 alwaysinline {
  %6 = trunc i64 %3 to i32
  %7 = trunc i64 %4 to i32
  %8 = add i32 %7, %6
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %2, align 8
  %10 = icmp ult i32 %8, %6
  %11 = icmp ult i32 %8, %7
  %12 = or i1 %10, %11
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %8, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15) #22
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %4, %3
  %22 = trunc i64 %21 to i32
  %23 = xor i32 %22, %8
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %8, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %8, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %6, 31
  %35 = lshr i32 %7, 31
  %36 = xor i32 %31, %34
  %37 = xor i32 %31, %35
  %38 = add   i32 %36, %37
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_addl__0x1___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RAX
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 28
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 alwaysinline {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_401235(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_shll__0x1___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RAX
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 48
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_401216(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 52
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}







define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 alwaysinline {
  %6 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  %9 = zext i1 %8 to i8
  store i8 %9, i8* %2, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %11 = select i1 %8, i64 %3, i64 %4
  store i64 %11, i64* %10, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jne_.L_401694(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RBP
  %10 = sub i64 %9, 36
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jge_.L_40168f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNLEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_cmpl_MINUS0x24__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RBP
  %15 = sub i64 %14, 36
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_4015bd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNLEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl___rcx__rdx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %RDX
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 3
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %15, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 32
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 alwaysinline {
  %5 = inttoptr i64 %3 to double*
  %6 = load double, double* %5
  %7 = bitcast i8* %2 to double*
  store double %6, double* %7, align 1
  %8 = getelementptr inbounds i8, i8* %2, i64 8
  %9 = bitcast i8* %8 to double*
  store double 0.000000e+00, double* %9, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %14, i64 %18)
  ret %struct.Memory* %21
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i8* nocapture readonly) #7 alwaysinline {
  %5 = bitcast i8* %3 to double*
  %6 = load double, double* %5, align 1
  %7 = inttoptr i64 %2 to double*
  store double %6, double* %7
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 64
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movslq__eax___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 72
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 80
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movsd__xmm0__MINUS0x58__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 88
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %RDX
  %16 = mul i64 %15, 8
  %17 = add i64 %16, %14
  %18 = bitcast %union.vec128_t* %XMM0 to i8*
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %17, i8* %18)
  ret %struct.Memory* %21
}


define %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x20__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 32
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_addl_MINUS0x28__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 40
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




























































































define %struct.Memory* @routine_movl_MINUS0x28__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 alwaysinline {
  %6 = trunc i64 %3 to i32
  %7 = trunc i64 %4 to i32
  %8 = sub i32 %6, %7
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %2, align 8
  %10 = icmp ult i32 %6, %7
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %8, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13) #22
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i64 %4, %3
  %20 = trunc i64 %19 to i32
  %21 = xor i32 %20, %8
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %8, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %8, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %6, 31
  %33 = lshr i32 %7, 31
  %34 = xor i32 %33, %32
  %35 = xor i32 %29, %32
  %36 = add   i32 %35, %34
  %37 = icmp eq i32 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_subl__eax___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__esi__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ESI = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






















































































































































































define %struct.Memory* @routine_jmpq_.L_4012ad(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_addl_MINUS0x34__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 52
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




































































































define %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 36
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_40129a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_401862(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl__0x1__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RBP
  %10 = sub i64 %9, 36
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_jge_.L_40185d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNLEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}








define %struct.Memory* @routine_jge_.L_40184a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNLEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}












































































































































































































define %struct.Memory* @routine_jmpq_.L_4016ae(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_40184f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_40169b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3POPI3RnWImEEEP6MemoryS4_R5StateT_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64* nocapture) #0 alwaysinline {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 13, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = add i64 %5, 8
  %7 = inttoptr i64 %5 to i64*
  %8 = load i64, i64* %7
  store i64 %8, i64* %2, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_popq__rbp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 1
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3POPI3RnWImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64* %RBP)
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3RETEP6MemoryR5State(%struct.Memory* returned, %struct.State* nocapture dereferenceable(3376)) #0 alwaysinline {
  %3 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 13, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = inttoptr i64 %5 to i64*
  %7 = load i64, i64* %6
  store i64 %7, i64* %3, align 8
  %8 = add i64 %5, 8
  store i64 %8, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_retq(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 1
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3RETEP6MemoryR5State(%struct.Memory* %2, %struct.State* %0)
  ret %struct.Memory* %8
}

