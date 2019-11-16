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


define %struct.Memory* @unRLE_obuf_to_output_FAST(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .unRLE_obuf_to_output_FAST:	 RIP: 407340	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 407340	 Bytes: 1
  %loadMem_407340 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407340 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407340)
  store %struct.Memory* %call_407340, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 407341	 Bytes: 3
  %loadMem_407341 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407341 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407341)
  store %struct.Memory* %call_407341, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x10(%rbp)	 RIP: 407344	 Bytes: 4
  %loadMem_407344 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407344 = call %struct.Memory* @routine_movq__rdi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407344)
  store %struct.Memory* %call_407344, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 407348	 Bytes: 4
  %loadMem_407348 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407348 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407348)
  store %struct.Memory* %call_407348, %struct.Memory** %MEMORY

  ; Code: cmpb $0x0, 0x14(%rdi)	 RIP: 40734c	 Bytes: 4
  %loadMem_40734c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40734c = call %struct.Memory* @routine_cmpb__0x0__0x14__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40734c)
  store %struct.Memory* %call_40734c, %struct.Memory** %MEMORY

  ; Code: je .L_4079b7	 RIP: 407350	 Bytes: 6
  %loadMem_407350 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407350 = call %struct.Memory* @routine_je_.L_4079b7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407350, i8* %BRANCH_TAKEN, i64 1639, i64 6, i64 6)
  store %struct.Memory* %call_407350, %struct.Memory** %MEMORY

  %loadBr_407350 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_407350 = icmp eq i8 %loadBr_407350, 1
  br i1 %cmpBr_407350, label %block_.L_4079b7, label %block_407356

block_407356:
  ; Code: jmpq .L_40735b	 RIP: 407356	 Bytes: 5
  %loadMem_407356 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407356 = call %struct.Memory* @routine_jmpq_.L_40735b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407356, i64 5, i64 5)
  store %struct.Memory* %call_407356, %struct.Memory** %MEMORY

  br label %block_.L_40735b

  ; Code: .L_40735b:	 RIP: 40735b	 Bytes: 0
block_.L_40735b:

  ; Code: jmpq .L_407360	 RIP: 40735b	 Bytes: 5
  %loadMem_40735b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40735b = call %struct.Memory* @routine_jmpq_.L_407360(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40735b, i64 5, i64 5)
  store %struct.Memory* %call_40735b, %struct.Memory** %MEMORY

  br label %block_.L_407360

  ; Code: .L_407360:	 RIP: 407360	 Bytes: 0
block_.L_407360:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 407360	 Bytes: 4
  %loadMem_407360 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407360 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407360)
  store %struct.Memory* %call_407360, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 407364	 Bytes: 3
  %loadMem_407364 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407364 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407364)
  store %struct.Memory* %call_407364, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x20(%rax)	 RIP: 407367	 Bytes: 4
  %loadMem_407367 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407367 = call %struct.Memory* @routine_cmpl__0x0__0x20__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407367)
  store %struct.Memory* %call_407367, %struct.Memory** %MEMORY

  ; Code: jne .L_40737a	 RIP: 40736b	 Bytes: 6
  %loadMem_40736b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40736b = call %struct.Memory* @routine_jne_.L_40737a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40736b, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_40736b, %struct.Memory** %MEMORY

  %loadBr_40736b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40736b = icmp eq i8 %loadBr_40736b, 1
  br i1 %cmpBr_40736b, label %block_.L_40737a, label %block_407371

block_407371:
  ; Code: movb $0x0, -0x1(%rbp)	 RIP: 407371	 Bytes: 4
  %loadMem_407371 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407371 = call %struct.Memory* @routine_movb__0x0__MINUS0x1__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407371)
  store %struct.Memory* %call_407371, %struct.Memory** %MEMORY

  ; Code: jmpq .L_407d85	 RIP: 407375	 Bytes: 5
  %loadMem_407375 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407375 = call %struct.Memory* @routine_jmpq_.L_407d85(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407375, i64 2576, i64 5)
  store %struct.Memory* %call_407375, %struct.Memory** %MEMORY

  br label %block_.L_407d85

  ; Code: .L_40737a:	 RIP: 40737a	 Bytes: 0
block_.L_40737a:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 40737a	 Bytes: 4
  %loadMem_40737a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40737a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40737a)
  store %struct.Memory* %call_40737a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x10(%rax)	 RIP: 40737e	 Bytes: 4
  %loadMem_40737e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40737e = call %struct.Memory* @routine_cmpl__0x0__0x10__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40737e)
  store %struct.Memory* %call_40737e, %struct.Memory** %MEMORY

  ; Code: jne .L_40738d	 RIP: 407382	 Bytes: 6
  %loadMem_407382 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407382 = call %struct.Memory* @routine_jne_.L_40738d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407382, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_407382, %struct.Memory** %MEMORY

  %loadBr_407382 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_407382 = icmp eq i8 %loadBr_407382, 1
  br i1 %cmpBr_407382, label %block_.L_40738d, label %block_407388

block_407388:
  ; Code: jmpq .L_407440	 RIP: 407388	 Bytes: 5
  %loadMem_407388 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407388 = call %struct.Memory* @routine_jmpq_.L_407440(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407388, i64 184, i64 5)
  store %struct.Memory* %call_407388, %struct.Memory** %MEMORY

  br label %block_.L_407440

  ; Code: .L_40738d:	 RIP: 40738d	 Bytes: 0
block_.L_40738d:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 40738d	 Bytes: 4
  %loadMem_40738d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40738d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40738d)
  store %struct.Memory* %call_40738d, %struct.Memory** %MEMORY

  ; Code: movb 0xc(%rax), %cl	 RIP: 407391	 Bytes: 3
  %loadMem_407391 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407391 = call %struct.Memory* @routine_movb_0xc__rax____cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407391)
  store %struct.Memory* %call_407391, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 407394	 Bytes: 4
  %loadMem_407394 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407394 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407394)
  store %struct.Memory* %call_407394, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 407398	 Bytes: 3
  %loadMem_407398 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407398 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407398)
  store %struct.Memory* %call_407398, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax), %rax	 RIP: 40739b	 Bytes: 4
  %loadMem_40739b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40739b = call %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40739b)
  store %struct.Memory* %call_40739b, %struct.Memory** %MEMORY

  ; Code: movb %cl, (%rax)	 RIP: 40739f	 Bytes: 2
  %loadMem_40739f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40739f = call %struct.Memory* @routine_movb__cl____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40739f)
  store %struct.Memory* %call_40739f, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4073a1	 Bytes: 4
  %loadMem_4073a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4073a1 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4073a1)
  store %struct.Memory* %call_4073a1, %struct.Memory** %MEMORY

  ; Code: movl 0xc70(%rax), %edx	 RIP: 4073a5	 Bytes: 6
  %loadMem_4073a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4073a5 = call %struct.Memory* @routine_movl_0xc70__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4073a5)
  store %struct.Memory* %call_4073a5, %struct.Memory** %MEMORY

  ; Code: shll $0x8, %edx	 RIP: 4073ab	 Bytes: 3
  %loadMem_4073ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4073ab = call %struct.Memory* @routine_shll__0x8___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4073ab)
  store %struct.Memory* %call_4073ab, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4073ae	 Bytes: 4
  %loadMem_4073ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4073ae = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4073ae)
  store %struct.Memory* %call_4073ae, %struct.Memory** %MEMORY

  ; Code: movl 0xc70(%rax), %esi	 RIP: 4073b2	 Bytes: 6
  %loadMem_4073b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4073b2 = call %struct.Memory* @routine_movl_0xc70__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4073b2)
  store %struct.Memory* %call_4073b2, %struct.Memory** %MEMORY

  ; Code: shrl $0x18, %esi	 RIP: 4073b8	 Bytes: 3
  %loadMem_4073b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4073b8 = call %struct.Memory* @routine_shrl__0x18___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4073b8)
  store %struct.Memory* %call_4073b8, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4073bb	 Bytes: 4
  %loadMem_4073bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4073bb = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4073bb)
  store %struct.Memory* %call_4073bb, %struct.Memory** %MEMORY

  ; Code: movzbl 0xc(%rax), %edi	 RIP: 4073bf	 Bytes: 4
  %loadMem_4073bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4073bf = call %struct.Memory* @routine_movzbl_0xc__rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4073bf)
  store %struct.Memory* %call_4073bf, %struct.Memory** %MEMORY

  ; Code: xorl %edi, %esi	 RIP: 4073c3	 Bytes: 2
  %loadMem_4073c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4073c3 = call %struct.Memory* @routine_xorl__edi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4073c3)
  store %struct.Memory* %call_4073c3, %struct.Memory** %MEMORY

  ; Code: movl %esi, %esi	 RIP: 4073c5	 Bytes: 2
  %loadMem_4073c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4073c5 = call %struct.Memory* @routine_movl__esi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4073c5)
  store %struct.Memory* %call_4073c5, %struct.Memory** %MEMORY

  ; Code: movl %esi, %eax	 RIP: 4073c7	 Bytes: 2
  %loadMem_4073c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4073c7 = call %struct.Memory* @routine_movl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4073c7)
  store %struct.Memory* %call_4073c7, %struct.Memory** %MEMORY

  ; Code: xorl 0x618170(,%rax,4), %edx	 RIP: 4073c9	 Bytes: 7
  %loadMem_4073c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4073c9 = call %struct.Memory* @routine_xorl_0x618170___rax_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4073c9)
  store %struct.Memory* %call_4073c9, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4073d0	 Bytes: 4
  %loadMem_4073d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4073d0 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4073d0)
  store %struct.Memory* %call_4073d0, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0xc70(%rax)	 RIP: 4073d4	 Bytes: 6
  %loadMem_4073d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4073d4 = call %struct.Memory* @routine_movl__edx__0xc70__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4073d4)
  store %struct.Memory* %call_4073d4, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4073da	 Bytes: 4
  %loadMem_4073da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4073da = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4073da)
  store %struct.Memory* %call_4073da, %struct.Memory** %MEMORY

  ; Code: movl 0x10(%rax), %edx	 RIP: 4073de	 Bytes: 3
  %loadMem_4073de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4073de = call %struct.Memory* @routine_movl_0x10__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4073de)
  store %struct.Memory* %call_4073de, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %edx	 RIP: 4073e1	 Bytes: 3
  %loadMem_4073e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4073e1 = call %struct.Memory* @routine_addl__0xffffffff___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4073e1)
  store %struct.Memory* %call_4073e1, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x10(%rax)	 RIP: 4073e4	 Bytes: 3
  %loadMem_4073e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4073e4 = call %struct.Memory* @routine_movl__edx__0x10__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4073e4)
  store %struct.Memory* %call_4073e4, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4073e7	 Bytes: 4
  %loadMem_4073e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4073e7 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4073e7)
  store %struct.Memory* %call_4073e7, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 4073eb	 Bytes: 3
  %loadMem_4073eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4073eb = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4073eb)
  store %struct.Memory* %call_4073eb, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax), %r8	 RIP: 4073ee	 Bytes: 4
  %loadMem_4073ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4073ee = call %struct.Memory* @routine_movq_0x18__rax____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4073ee)
  store %struct.Memory* %call_4073ee, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %r8	 RIP: 4073f2	 Bytes: 4
  %loadMem_4073f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4073f2 = call %struct.Memory* @routine_addq__0x1___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4073f2)
  store %struct.Memory* %call_4073f2, %struct.Memory** %MEMORY

  ; Code: movq %r8, 0x18(%rax)	 RIP: 4073f6	 Bytes: 4
  %loadMem_4073f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4073f6 = call %struct.Memory* @routine_movq__r8__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4073f6)
  store %struct.Memory* %call_4073f6, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4073fa	 Bytes: 4
  %loadMem_4073fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4073fa = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4073fa)
  store %struct.Memory* %call_4073fa, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 4073fe	 Bytes: 3
  %loadMem_4073fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4073fe = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4073fe)
  store %struct.Memory* %call_4073fe, %struct.Memory** %MEMORY

  ; Code: movl 0x20(%rax), %edx	 RIP: 407401	 Bytes: 3
  %loadMem_407401 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407401 = call %struct.Memory* @routine_movl_0x20__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407401)
  store %struct.Memory* %call_407401, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %edx	 RIP: 407404	 Bytes: 3
  %loadMem_407404 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407404 = call %struct.Memory* @routine_addl__0xffffffff___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407404)
  store %struct.Memory* %call_407404, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x20(%rax)	 RIP: 407407	 Bytes: 3
  %loadMem_407407 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407407 = call %struct.Memory* @routine_movl__edx__0x20__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407407)
  store %struct.Memory* %call_407407, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 40740a	 Bytes: 4
  %loadMem_40740a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40740a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40740a)
  store %struct.Memory* %call_40740a, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40740e	 Bytes: 3
  %loadMem_40740e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40740e = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40740e)
  store %struct.Memory* %call_40740e, %struct.Memory** %MEMORY

  ; Code: movl 0x24(%rax), %edx	 RIP: 407411	 Bytes: 3
  %loadMem_407411 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407411 = call %struct.Memory* @routine_movl_0x24__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407411)
  store %struct.Memory* %call_407411, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 407414	 Bytes: 3
  %loadMem_407414 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407414 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407414)
  store %struct.Memory* %call_407414, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x24(%rax)	 RIP: 407417	 Bytes: 3
  %loadMem_407417 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407417 = call %struct.Memory* @routine_movl__edx__0x24__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407417)
  store %struct.Memory* %call_407417, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 40741a	 Bytes: 4
  %loadMem_40741a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40741a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40741a)
  store %struct.Memory* %call_40741a, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40741e	 Bytes: 3
  %loadMem_40741e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40741e = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40741e)
  store %struct.Memory* %call_40741e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x24(%rax)	 RIP: 407421	 Bytes: 4
  %loadMem_407421 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407421 = call %struct.Memory* @routine_cmpl__0x0__0x24__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407421)
  store %struct.Memory* %call_407421, %struct.Memory** %MEMORY

  ; Code: jne .L_40743b	 RIP: 407425	 Bytes: 6
  %loadMem_407425 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407425 = call %struct.Memory* @routine_jne_.L_40743b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407425, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_407425, %struct.Memory** %MEMORY

  %loadBr_407425 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_407425 = icmp eq i8 %loadBr_407425, 1
  br i1 %cmpBr_407425, label %block_.L_40743b, label %block_40742b

block_40742b:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 40742b	 Bytes: 4
  %loadMem_40742b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40742b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40742b)
  store %struct.Memory* %call_40742b, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40742f	 Bytes: 3
  %loadMem_40742f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40742f = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40742f)
  store %struct.Memory* %call_40742f, %struct.Memory** %MEMORY

  ; Code: movl 0x28(%rax), %ecx	 RIP: 407432	 Bytes: 3
  %loadMem_407432 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407432 = call %struct.Memory* @routine_movl_0x28__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407432)
  store %struct.Memory* %call_407432, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 407435	 Bytes: 3
  %loadMem_407435 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407435 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407435)
  store %struct.Memory* %call_407435, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x28(%rax)	 RIP: 407438	 Bytes: 3
  %loadMem_407438 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407438 = call %struct.Memory* @routine_movl__ecx__0x28__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407438)
  store %struct.Memory* %call_407438, %struct.Memory** %MEMORY

  ; Code: .L_40743b:	 RIP: 40743b	 Bytes: 0
  br label %block_.L_40743b
block_.L_40743b:

  ; Code: jmpq .L_407360	 RIP: 40743b	 Bytes: 5
  %loadMem_40743b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40743b = call %struct.Memory* @routine_jmpq_.L_407360(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40743b, i64 -219, i64 5)
  store %struct.Memory* %call_40743b, %struct.Memory** %MEMORY

  br label %block_.L_407360

  ; Code: .L_407440:	 RIP: 407440	 Bytes: 0
block_.L_407440:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 407440	 Bytes: 4
  %loadMem_407440 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407440 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407440)
  store %struct.Memory* %call_407440, %struct.Memory** %MEMORY

  ; Code: movl 0x444(%rax), %ecx	 RIP: 407444	 Bytes: 6
  %loadMem_407444 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407444 = call %struct.Memory* @routine_movl_0x444__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407444)
  store %struct.Memory* %call_407444, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 40744a	 Bytes: 4
  %loadMem_40744a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40744a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40744a)
  store %struct.Memory* %call_40744a, %struct.Memory** %MEMORY

  ; Code: movl 0xfa50(%rax), %edx	 RIP: 40744e	 Bytes: 6
  %loadMem_40744e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40744e = call %struct.Memory* @routine_movl_0xfa50__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40744e)
  store %struct.Memory* %call_40744e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 407454	 Bytes: 3
  %loadMem_407454 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407454 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407454)
  store %struct.Memory* %call_407454, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %ecx	 RIP: 407457	 Bytes: 2
  %loadMem_407457 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407457 = call %struct.Memory* @routine_cmpl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407457)
  store %struct.Memory* %call_407457, %struct.Memory** %MEMORY

  ; Code: jne .L_407468	 RIP: 407459	 Bytes: 6
  %loadMem_407459 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407459 = call %struct.Memory* @routine_jne_.L_407468(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407459, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_407459, %struct.Memory** %MEMORY

  %loadBr_407459 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_407459 = icmp eq i8 %loadBr_407459, 1
  br i1 %cmpBr_407459, label %block_.L_407468, label %block_40745f

block_40745f:
  ; Code: movb $0x0, -0x1(%rbp)	 RIP: 40745f	 Bytes: 4
  %loadMem_40745f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40745f = call %struct.Memory* @routine_movb__0x0__MINUS0x1__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40745f)
  store %struct.Memory* %call_40745f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_407d85	 RIP: 407463	 Bytes: 5
  %loadMem_407463 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407463 = call %struct.Memory* @routine_jmpq_.L_407d85(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407463, i64 2338, i64 5)
  store %struct.Memory* %call_407463, %struct.Memory** %MEMORY

  br label %block_.L_407d85

  ; Code: .L_407468:	 RIP: 407468	 Bytes: 0
block_.L_407468:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 407468	 Bytes: 4
  %loadMem_407468 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407468 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407468)
  store %struct.Memory* %call_407468, %struct.Memory** %MEMORY

  ; Code: movl 0x444(%rax), %ecx	 RIP: 40746c	 Bytes: 6
  %loadMem_40746c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40746c = call %struct.Memory* @routine_movl_0x444__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40746c)
  store %struct.Memory* %call_40746c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 407472	 Bytes: 4
  %loadMem_407472 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407472 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407472)
  store %struct.Memory* %call_407472, %struct.Memory** %MEMORY

  ; Code: movl 0xfa50(%rax), %edx	 RIP: 407476	 Bytes: 6
  %loadMem_407476 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407476 = call %struct.Memory* @routine_movl_0xfa50__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407476)
  store %struct.Memory* %call_407476, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 40747c	 Bytes: 3
  %loadMem_40747c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40747c = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40747c)
  store %struct.Memory* %call_40747c, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %ecx	 RIP: 40747f	 Bytes: 2
  %loadMem_40747f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40747f = call %struct.Memory* @routine_cmpl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40747f)
  store %struct.Memory* %call_40747f, %struct.Memory** %MEMORY

  ; Code: jle .L_407490	 RIP: 407481	 Bytes: 6
  %loadMem_407481 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407481 = call %struct.Memory* @routine_jle_.L_407490(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407481, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_407481, %struct.Memory** %MEMORY

  %loadBr_407481 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_407481 = icmp eq i8 %loadBr_407481, 1
  br i1 %cmpBr_407481, label %block_.L_407490, label %block_407487

block_407487:
  ; Code: movb $0x1, -0x1(%rbp)	 RIP: 407487	 Bytes: 4
  %loadMem_407487 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407487 = call %struct.Memory* @routine_movb__0x1__MINUS0x1__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407487)
  store %struct.Memory* %call_407487, %struct.Memory** %MEMORY

  ; Code: jmpq .L_407d85	 RIP: 40748b	 Bytes: 5
  %loadMem_40748b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40748b = call %struct.Memory* @routine_jmpq_.L_407d85(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40748b, i64 2298, i64 5)
  store %struct.Memory* %call_40748b, %struct.Memory** %MEMORY

  br label %block_.L_407d85

  ; Code: .L_407490:	 RIP: 407490	 Bytes: 0
block_.L_407490:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 407490	 Bytes: 4
  %loadMem_407490 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407490 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407490)
  store %struct.Memory* %call_407490, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x10(%rax)	 RIP: 407494	 Bytes: 7
  %loadMem_407494 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407494 = call %struct.Memory* @routine_movl__0x1__0x10__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407494)
  store %struct.Memory* %call_407494, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 40749b	 Bytes: 4
  %loadMem_40749b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40749b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40749b)
  store %struct.Memory* %call_40749b, %struct.Memory** %MEMORY

  ; Code: movl 0x40(%rax), %ecx	 RIP: 40749f	 Bytes: 3
  %loadMem_40749f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40749f = call %struct.Memory* @routine_movl_0x40__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40749f)
  store %struct.Memory* %call_40749f, %struct.Memory** %MEMORY

  ; Code: movb %cl, %dl	 RIP: 4074a2	 Bytes: 2
  %loadMem_4074a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4074a2 = call %struct.Memory* @routine_movb__cl___dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4074a2)
  store %struct.Memory* %call_4074a2, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4074a4	 Bytes: 4
  %loadMem_4074a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4074a4 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4074a4)
  store %struct.Memory* %call_4074a4, %struct.Memory** %MEMORY

  ; Code: movb %dl, 0xc(%rax)	 RIP: 4074a8	 Bytes: 3
  %loadMem_4074a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4074a8 = call %struct.Memory* @routine_movb__dl__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4074a8)
  store %struct.Memory* %call_4074a8, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4074ab	 Bytes: 4
  %loadMem_4074ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4074ab = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4074ab)
  store %struct.Memory* %call_4074ab, %struct.Memory** %MEMORY

  ; Code: movq 0xc50(%rax), %rax	 RIP: 4074af	 Bytes: 7
  %loadMem_4074af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4074af = call %struct.Memory* @routine_movq_0xc50__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4074af)
  store %struct.Memory* %call_4074af, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rsi	 RIP: 4074b6	 Bytes: 4
  %loadMem_4074b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4074b6 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4074b6)
  store %struct.Memory* %call_4074b6, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rsi), %ecx	 RIP: 4074ba	 Bytes: 3
  %loadMem_4074ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4074ba = call %struct.Memory* @routine_movl_0x3c__rsi____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4074ba)
  store %struct.Memory* %call_4074ba, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %esi	 RIP: 4074bd	 Bytes: 2
  %loadMem_4074bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4074bd = call %struct.Memory* @routine_movl__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4074bd)
  store %struct.Memory* %call_4074bd, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rsi,4), %ecx	 RIP: 4074bf	 Bytes: 3
  %loadMem_4074bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4074bf = call %struct.Memory* @routine_movl___rax__rsi_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4074bf)
  store %struct.Memory* %call_4074bf, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4074c2	 Bytes: 4
  %loadMem_4074c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4074c2 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4074c2)
  store %struct.Memory* %call_4074c2, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x3c(%rax)	 RIP: 4074c6	 Bytes: 3
  %loadMem_4074c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4074c6 = call %struct.Memory* @routine_movl__ecx__0x3c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4074c6)
  store %struct.Memory* %call_4074c6, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4074c9	 Bytes: 4
  %loadMem_4074c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4074c9 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4074c9)
  store %struct.Memory* %call_4074c9, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rax), %ecx	 RIP: 4074cd	 Bytes: 3
  %loadMem_4074cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4074cd = call %struct.Memory* @routine_movl_0x3c__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4074cd)
  store %struct.Memory* %call_4074cd, %struct.Memory** %MEMORY

  ; Code: andl $0xff, %ecx	 RIP: 4074d0	 Bytes: 6
  %loadMem_4074d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4074d0 = call %struct.Memory* @routine_andl__0xff___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4074d0)
  store %struct.Memory* %call_4074d0, %struct.Memory** %MEMORY

  ; Code: movb %cl, %dl	 RIP: 4074d6	 Bytes: 2
  %loadMem_4074d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4074d6 = call %struct.Memory* @routine_movb__cl___dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4074d6)
  store %struct.Memory* %call_4074d6, %struct.Memory** %MEMORY

  ; Code: movb %dl, -0x11(%rbp)	 RIP: 4074d8	 Bytes: 3
  %loadMem_4074d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4074d8 = call %struct.Memory* @routine_movb__dl__MINUS0x11__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4074d8)
  store %struct.Memory* %call_4074d8, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4074db	 Bytes: 4
  %loadMem_4074db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4074db = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4074db)
  store %struct.Memory* %call_4074db, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rax), %ecx	 RIP: 4074df	 Bytes: 3
  %loadMem_4074df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4074df = call %struct.Memory* @routine_movl_0x3c__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4074df)
  store %struct.Memory* %call_4074df, %struct.Memory** %MEMORY

  ; Code: shrl $0x8, %ecx	 RIP: 4074e2	 Bytes: 3
  %loadMem_4074e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4074e2 = call %struct.Memory* @routine_shrl__0x8___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4074e2)
  store %struct.Memory* %call_4074e2, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x3c(%rax)	 RIP: 4074e5	 Bytes: 3
  %loadMem_4074e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4074e5 = call %struct.Memory* @routine_movl__ecx__0x3c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4074e5)
  store %struct.Memory* %call_4074e5, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4074e8	 Bytes: 4
  %loadMem_4074e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4074e8 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4074e8)
  store %struct.Memory* %call_4074e8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x18(%rax)	 RIP: 4074ec	 Bytes: 4
  %loadMem_4074ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4074ec = call %struct.Memory* @routine_cmpl__0x0__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4074ec)
  store %struct.Memory* %call_4074ec, %struct.Memory** %MEMORY

  ; Code: jne .L_40753a	 RIP: 4074f0	 Bytes: 6
  %loadMem_4074f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4074f0 = call %struct.Memory* @routine_jne_.L_40753a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4074f0, i8* %BRANCH_TAKEN, i64 74, i64 6, i64 6)
  store %struct.Memory* %call_4074f0, %struct.Memory** %MEMORY

  %loadBr_4074f0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4074f0 = icmp eq i8 %loadBr_4074f0, 1
  br i1 %cmpBr_4074f0, label %block_.L_40753a, label %block_4074f6

block_4074f6:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 4074f6	 Bytes: 4
  %loadMem_4074f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4074f6 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4074f6)
  store %struct.Memory* %call_4074f6, %struct.Memory** %MEMORY

  ; Code: movslq 0x1c(%rax), %rax	 RIP: 4074fa	 Bytes: 4
  %loadMem_4074fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4074fa = call %struct.Memory* @routine_movslq_0x1c__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4074fa)
  store %struct.Memory* %call_4074fa, %struct.Memory** %MEMORY

  ; Code: movl 0x618570(,%rax,4), %ecx	 RIP: 4074fe	 Bytes: 7
  %loadMem_4074fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4074fe = call %struct.Memory* @routine_movl_0x618570___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4074fe)
  store %struct.Memory* %call_4074fe, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 407505	 Bytes: 4
  %loadMem_407505 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407505 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407505)
  store %struct.Memory* %call_407505, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x18(%rax)	 RIP: 407509	 Bytes: 3
  %loadMem_407509 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407509 = call %struct.Memory* @routine_movl__ecx__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407509)
  store %struct.Memory* %call_407509, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 40750c	 Bytes: 4
  %loadMem_40750c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40750c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40750c)
  store %struct.Memory* %call_40750c, %struct.Memory** %MEMORY

  ; Code: movl 0x1c(%rax), %ecx	 RIP: 407510	 Bytes: 3
  %loadMem_407510 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407510 = call %struct.Memory* @routine_movl_0x1c__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407510)
  store %struct.Memory* %call_407510, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 407513	 Bytes: 3
  %loadMem_407513 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407513 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407513)
  store %struct.Memory* %call_407513, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x1c(%rax)	 RIP: 407516	 Bytes: 3
  %loadMem_407516 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407516 = call %struct.Memory* @routine_movl__ecx__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407516)
  store %struct.Memory* %call_407516, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 407519	 Bytes: 4
  %loadMem_407519 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407519 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407519)
  store %struct.Memory* %call_407519, %struct.Memory** %MEMORY

  ; Code: cmpl $0x200, 0x1c(%rax)	 RIP: 40751d	 Bytes: 7
  %loadMem_40751d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40751d = call %struct.Memory* @routine_cmpl__0x200__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40751d)
  store %struct.Memory* %call_40751d, %struct.Memory** %MEMORY

  ; Code: jne .L_407535	 RIP: 407524	 Bytes: 6
  %loadMem_407524 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407524 = call %struct.Memory* @routine_jne_.L_407535(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407524, i8* %BRANCH_TAKEN, i64 17, i64 6, i64 6)
  store %struct.Memory* %call_407524, %struct.Memory** %MEMORY

  %loadBr_407524 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_407524 = icmp eq i8 %loadBr_407524, 1
  br i1 %cmpBr_407524, label %block_.L_407535, label %block_40752a

block_40752a:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 40752a	 Bytes: 4
  %loadMem_40752a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40752a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40752a)
  store %struct.Memory* %call_40752a, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x1c(%rax)	 RIP: 40752e	 Bytes: 7
  %loadMem_40752e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40752e = call %struct.Memory* @routine_movl__0x0__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40752e)
  store %struct.Memory* %call_40752e, %struct.Memory** %MEMORY

  ; Code: .L_407535:	 RIP: 407535	 Bytes: 0
  br label %block_.L_407535
block_.L_407535:

  ; Code: jmpq .L_40753a	 RIP: 407535	 Bytes: 5
  %loadMem_407535 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407535 = call %struct.Memory* @routine_jmpq_.L_40753a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407535, i64 5, i64 5)
  store %struct.Memory* %call_407535, %struct.Memory** %MEMORY

  br label %block_.L_40753a

  ; Code: .L_40753a:	 RIP: 40753a	 Bytes: 0
block_.L_40753a:

  ; Code: xorl %eax, %eax	 RIP: 40753a	 Bytes: 2
  %loadMem_40753a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40753a = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40753a)
  store %struct.Memory* %call_40753a, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %ecx	 RIP: 40753c	 Bytes: 5
  %loadMem_40753c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40753c = call %struct.Memory* @routine_movl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40753c)
  store %struct.Memory* %call_40753c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 407541	 Bytes: 4
  %loadMem_407541 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407541 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407541)
  store %struct.Memory* %call_407541, %struct.Memory** %MEMORY

  ; Code: movl 0x18(%rdx), %esi	 RIP: 407545	 Bytes: 3
  %loadMem_407545 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407545 = call %struct.Memory* @routine_movl_0x18__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407545)
  store %struct.Memory* %call_407545, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %esi	 RIP: 407548	 Bytes: 3
  %loadMem_407548 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407548 = call %struct.Memory* @routine_addl__0xffffffff___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407548)
  store %struct.Memory* %call_407548, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x18(%rdx)	 RIP: 40754b	 Bytes: 3
  %loadMem_40754b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40754b = call %struct.Memory* @routine_movl__esi__0x18__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40754b)
  store %struct.Memory* %call_40754b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 40754e	 Bytes: 4
  %loadMem_40754e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40754e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40754e)
  store %struct.Memory* %call_40754e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x18(%rdx)	 RIP: 407552	 Bytes: 4
  %loadMem_407552 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407552 = call %struct.Memory* @routine_cmpl__0x1__0x18__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407552)
  store %struct.Memory* %call_407552, %struct.Memory** %MEMORY

  ; Code: cmovel %ecx, %eax	 RIP: 407556	 Bytes: 3
  %loadMem_407556 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407556 = call %struct.Memory* @routine_cmovel__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407556)
  store %struct.Memory* %call_407556, %struct.Memory** %MEMORY

  ; Code: movzbl -0x11(%rbp), %ecx	 RIP: 407559	 Bytes: 4
  %loadMem_407559 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407559 = call %struct.Memory* @routine_movzbl_MINUS0x11__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407559)
  store %struct.Memory* %call_407559, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %ecx	 RIP: 40755d	 Bytes: 2
  %loadMem_40755d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40755d = call %struct.Memory* @routine_xorl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40755d)
  store %struct.Memory* %call_40755d, %struct.Memory** %MEMORY

  ; Code: movb %cl, %dil	 RIP: 40755f	 Bytes: 3
  %loadMem_40755f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40755f = call %struct.Memory* @routine_movb__cl___dil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40755f)
  store %struct.Memory* %call_40755f, %struct.Memory** %MEMORY

  ; Code: movb %dil, -0x11(%rbp)	 RIP: 407562	 Bytes: 4
  %loadMem_407562 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407562 = call %struct.Memory* @routine_movb__dil__MINUS0x11__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407562)
  store %struct.Memory* %call_407562, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 407566	 Bytes: 4
  %loadMem_407566 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407566 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407566)
  store %struct.Memory* %call_407566, %struct.Memory** %MEMORY

  ; Code: movl 0x444(%rdx), %eax	 RIP: 40756a	 Bytes: 6
  %loadMem_40756a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40756a = call %struct.Memory* @routine_movl_0x444__rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40756a)
  store %struct.Memory* %call_40756a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 407570	 Bytes: 3
  %loadMem_407570 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407570 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407570)
  store %struct.Memory* %call_407570, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x444(%rdx)	 RIP: 407573	 Bytes: 6
  %loadMem_407573 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407573 = call %struct.Memory* @routine_movl__eax__0x444__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407573)
  store %struct.Memory* %call_407573, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 407579	 Bytes: 4
  %loadMem_407579 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407579 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407579)
  store %struct.Memory* %call_407579, %struct.Memory** %MEMORY

  ; Code: movl 0x444(%rdx), %eax	 RIP: 40757d	 Bytes: 6
  %loadMem_40757d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40757d = call %struct.Memory* @routine_movl_0x444__rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40757d)
  store %struct.Memory* %call_40757d, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 407583	 Bytes: 4
  %loadMem_407583 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407583 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407583)
  store %struct.Memory* %call_407583, %struct.Memory** %MEMORY

  ; Code: movl 0xfa50(%rdx), %ecx	 RIP: 407587	 Bytes: 6
  %loadMem_407587 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407587 = call %struct.Memory* @routine_movl_0xfa50__rdx____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407587)
  store %struct.Memory* %call_407587, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 40758d	 Bytes: 3
  %loadMem_40758d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40758d = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40758d)
  store %struct.Memory* %call_40758d, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 407590	 Bytes: 2
  %loadMem_407590 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407590 = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407590)
  store %struct.Memory* %call_407590, %struct.Memory** %MEMORY

  ; Code: jne .L_40759d	 RIP: 407592	 Bytes: 6
  %loadMem_407592 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407592 = call %struct.Memory* @routine_jne_.L_40759d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407592, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_407592, %struct.Memory** %MEMORY

  %loadBr_407592 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_407592 = icmp eq i8 %loadBr_407592, 1
  br i1 %cmpBr_407592, label %block_.L_40759d, label %block_407598

block_407598:
  ; Code: jmpq .L_40735b	 RIP: 407598	 Bytes: 5
  %loadMem_407598 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407598 = call %struct.Memory* @routine_jmpq_.L_40735b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407598, i64 -573, i64 5)
  store %struct.Memory* %call_407598, %struct.Memory** %MEMORY

  br label %block_.L_40735b

  ; Code: .L_40759d:	 RIP: 40759d	 Bytes: 0
block_.L_40759d:

  ; Code: movzbl -0x11(%rbp), %eax	 RIP: 40759d	 Bytes: 4
  %loadMem_40759d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40759d = call %struct.Memory* @routine_movzbl_MINUS0x11__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40759d)
  store %struct.Memory* %call_40759d, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4075a1	 Bytes: 4
  %loadMem_4075a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4075a1 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4075a1)
  store %struct.Memory* %call_4075a1, %struct.Memory** %MEMORY

  ; Code: cmpl 0x40(%rcx), %eax	 RIP: 4075a5	 Bytes: 3
  %loadMem_4075a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4075a5 = call %struct.Memory* @routine_cmpl_0x40__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4075a5)
  store %struct.Memory* %call_4075a5, %struct.Memory** %MEMORY

  ; Code: je .L_4075be	 RIP: 4075a8	 Bytes: 6
  %loadMem_4075a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4075a8 = call %struct.Memory* @routine_je_.L_4075be(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4075a8, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_4075a8, %struct.Memory** %MEMORY

  %loadBr_4075a8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4075a8 = icmp eq i8 %loadBr_4075a8, 1
  br i1 %cmpBr_4075a8, label %block_.L_4075be, label %block_4075ae

block_4075ae:
  ; Code: movzbl -0x11(%rbp), %eax	 RIP: 4075ae	 Bytes: 4
  %loadMem_4075ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4075ae = call %struct.Memory* @routine_movzbl_MINUS0x11__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4075ae)
  store %struct.Memory* %call_4075ae, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4075b2	 Bytes: 4
  %loadMem_4075b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4075b2 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4075b2)
  store %struct.Memory* %call_4075b2, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x40(%rcx)	 RIP: 4075b6	 Bytes: 3
  %loadMem_4075b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4075b6 = call %struct.Memory* @routine_movl__eax__0x40__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4075b6)
  store %struct.Memory* %call_4075b6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40735b	 RIP: 4075b9	 Bytes: 5
  %loadMem_4075b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4075b9 = call %struct.Memory* @routine_jmpq_.L_40735b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4075b9, i64 -606, i64 5)
  store %struct.Memory* %call_4075b9, %struct.Memory** %MEMORY

  br label %block_.L_40735b

  ; Code: .L_4075be:	 RIP: 4075be	 Bytes: 0
block_.L_4075be:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4075be	 Bytes: 4
  %loadMem_4075be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4075be = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4075be)
  store %struct.Memory* %call_4075be, %struct.Memory** %MEMORY

  ; Code: movl $0x2, 0x10(%rax)	 RIP: 4075c2	 Bytes: 7
  %loadMem_4075c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4075c2 = call %struct.Memory* @routine_movl__0x2__0x10__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4075c2)
  store %struct.Memory* %call_4075c2, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4075c9	 Bytes: 4
  %loadMem_4075c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4075c9 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4075c9)
  store %struct.Memory* %call_4075c9, %struct.Memory** %MEMORY

  ; Code: movq 0xc50(%rax), %rax	 RIP: 4075cd	 Bytes: 7
  %loadMem_4075cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4075cd = call %struct.Memory* @routine_movq_0xc50__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4075cd)
  store %struct.Memory* %call_4075cd, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4075d4	 Bytes: 4
  %loadMem_4075d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4075d4 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4075d4)
  store %struct.Memory* %call_4075d4, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rcx), %edx	 RIP: 4075d8	 Bytes: 3
  %loadMem_4075d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4075d8 = call %struct.Memory* @routine_movl_0x3c__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4075d8)
  store %struct.Memory* %call_4075d8, %struct.Memory** %MEMORY

  ; Code: movl %edx, %ecx	 RIP: 4075db	 Bytes: 2
  %loadMem_4075db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4075db = call %struct.Memory* @routine_movl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4075db)
  store %struct.Memory* %call_4075db, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 4075dd	 Bytes: 3
  %loadMem_4075dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4075dd = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4075dd)
  store %struct.Memory* %call_4075dd, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4075e0	 Bytes: 4
  %loadMem_4075e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4075e0 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4075e0)
  store %struct.Memory* %call_4075e0, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x3c(%rax)	 RIP: 4075e4	 Bytes: 3
  %loadMem_4075e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4075e4 = call %struct.Memory* @routine_movl__edx__0x3c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4075e4)
  store %struct.Memory* %call_4075e4, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4075e7	 Bytes: 4
  %loadMem_4075e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4075e7 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4075e7)
  store %struct.Memory* %call_4075e7, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rax), %edx	 RIP: 4075eb	 Bytes: 3
  %loadMem_4075eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4075eb = call %struct.Memory* @routine_movl_0x3c__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4075eb)
  store %struct.Memory* %call_4075eb, %struct.Memory** %MEMORY

  ; Code: andl $0xff, %edx	 RIP: 4075ee	 Bytes: 6
  %loadMem_4075ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4075ee = call %struct.Memory* @routine_andl__0xff___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4075ee)
  store %struct.Memory* %call_4075ee, %struct.Memory** %MEMORY

  ; Code: movb %dl, %sil	 RIP: 4075f4	 Bytes: 3
  %loadMem_4075f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4075f4 = call %struct.Memory* @routine_movb__dl___sil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4075f4)
  store %struct.Memory* %call_4075f4, %struct.Memory** %MEMORY

  ; Code: movb %sil, -0x11(%rbp)	 RIP: 4075f7	 Bytes: 4
  %loadMem_4075f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4075f7 = call %struct.Memory* @routine_movb__sil__MINUS0x11__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4075f7)
  store %struct.Memory* %call_4075f7, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4075fb	 Bytes: 4
  %loadMem_4075fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4075fb = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4075fb)
  store %struct.Memory* %call_4075fb, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rax), %edx	 RIP: 4075ff	 Bytes: 3
  %loadMem_4075ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4075ff = call %struct.Memory* @routine_movl_0x3c__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4075ff)
  store %struct.Memory* %call_4075ff, %struct.Memory** %MEMORY

  ; Code: shrl $0x8, %edx	 RIP: 407602	 Bytes: 3
  %loadMem_407602 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407602 = call %struct.Memory* @routine_shrl__0x8___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407602)
  store %struct.Memory* %call_407602, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x3c(%rax)	 RIP: 407605	 Bytes: 3
  %loadMem_407605 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407605 = call %struct.Memory* @routine_movl__edx__0x3c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407605)
  store %struct.Memory* %call_407605, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 407608	 Bytes: 4
  %loadMem_407608 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407608 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407608)
  store %struct.Memory* %call_407608, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x18(%rax)	 RIP: 40760c	 Bytes: 4
  %loadMem_40760c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40760c = call %struct.Memory* @routine_cmpl__0x0__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40760c)
  store %struct.Memory* %call_40760c, %struct.Memory** %MEMORY

  ; Code: jne .L_40765a	 RIP: 407610	 Bytes: 6
  %loadMem_407610 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407610 = call %struct.Memory* @routine_jne_.L_40765a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407610, i8* %BRANCH_TAKEN, i64 74, i64 6, i64 6)
  store %struct.Memory* %call_407610, %struct.Memory** %MEMORY

  %loadBr_407610 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_407610 = icmp eq i8 %loadBr_407610, 1
  br i1 %cmpBr_407610, label %block_.L_40765a, label %block_407616

block_407616:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 407616	 Bytes: 4
  %loadMem_407616 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407616 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407616)
  store %struct.Memory* %call_407616, %struct.Memory** %MEMORY

  ; Code: movslq 0x1c(%rax), %rax	 RIP: 40761a	 Bytes: 4
  %loadMem_40761a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40761a = call %struct.Memory* @routine_movslq_0x1c__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40761a)
  store %struct.Memory* %call_40761a, %struct.Memory** %MEMORY

  ; Code: movl 0x618570(,%rax,4), %ecx	 RIP: 40761e	 Bytes: 7
  %loadMem_40761e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40761e = call %struct.Memory* @routine_movl_0x618570___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40761e)
  store %struct.Memory* %call_40761e, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 407625	 Bytes: 4
  %loadMem_407625 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407625 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407625)
  store %struct.Memory* %call_407625, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x18(%rax)	 RIP: 407629	 Bytes: 3
  %loadMem_407629 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407629 = call %struct.Memory* @routine_movl__ecx__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407629)
  store %struct.Memory* %call_407629, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 40762c	 Bytes: 4
  %loadMem_40762c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40762c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40762c)
  store %struct.Memory* %call_40762c, %struct.Memory** %MEMORY

  ; Code: movl 0x1c(%rax), %ecx	 RIP: 407630	 Bytes: 3
  %loadMem_407630 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407630 = call %struct.Memory* @routine_movl_0x1c__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407630)
  store %struct.Memory* %call_407630, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 407633	 Bytes: 3
  %loadMem_407633 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407633 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407633)
  store %struct.Memory* %call_407633, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x1c(%rax)	 RIP: 407636	 Bytes: 3
  %loadMem_407636 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407636 = call %struct.Memory* @routine_movl__ecx__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407636)
  store %struct.Memory* %call_407636, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 407639	 Bytes: 4
  %loadMem_407639 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407639 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407639)
  store %struct.Memory* %call_407639, %struct.Memory** %MEMORY

  ; Code: cmpl $0x200, 0x1c(%rax)	 RIP: 40763d	 Bytes: 7
  %loadMem_40763d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40763d = call %struct.Memory* @routine_cmpl__0x200__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40763d)
  store %struct.Memory* %call_40763d, %struct.Memory** %MEMORY

  ; Code: jne .L_407655	 RIP: 407644	 Bytes: 6
  %loadMem_407644 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407644 = call %struct.Memory* @routine_jne_.L_407655(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407644, i8* %BRANCH_TAKEN, i64 17, i64 6, i64 6)
  store %struct.Memory* %call_407644, %struct.Memory** %MEMORY

  %loadBr_407644 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_407644 = icmp eq i8 %loadBr_407644, 1
  br i1 %cmpBr_407644, label %block_.L_407655, label %block_40764a

block_40764a:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 40764a	 Bytes: 4
  %loadMem_40764a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40764a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40764a)
  store %struct.Memory* %call_40764a, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x1c(%rax)	 RIP: 40764e	 Bytes: 7
  %loadMem_40764e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40764e = call %struct.Memory* @routine_movl__0x0__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40764e)
  store %struct.Memory* %call_40764e, %struct.Memory** %MEMORY

  ; Code: .L_407655:	 RIP: 407655	 Bytes: 0
  br label %block_.L_407655
block_.L_407655:

  ; Code: jmpq .L_40765a	 RIP: 407655	 Bytes: 5
  %loadMem_407655 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407655 = call %struct.Memory* @routine_jmpq_.L_40765a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407655, i64 5, i64 5)
  store %struct.Memory* %call_407655, %struct.Memory** %MEMORY

  br label %block_.L_40765a

  ; Code: .L_40765a:	 RIP: 40765a	 Bytes: 0
block_.L_40765a:

  ; Code: xorl %eax, %eax	 RIP: 40765a	 Bytes: 2
  %loadMem_40765a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40765a = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40765a)
  store %struct.Memory* %call_40765a, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %ecx	 RIP: 40765c	 Bytes: 5
  %loadMem_40765c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40765c = call %struct.Memory* @routine_movl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40765c)
  store %struct.Memory* %call_40765c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 407661	 Bytes: 4
  %loadMem_407661 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407661 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407661)
  store %struct.Memory* %call_407661, %struct.Memory** %MEMORY

  ; Code: movl 0x18(%rdx), %esi	 RIP: 407665	 Bytes: 3
  %loadMem_407665 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407665 = call %struct.Memory* @routine_movl_0x18__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407665)
  store %struct.Memory* %call_407665, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %esi	 RIP: 407668	 Bytes: 3
  %loadMem_407668 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407668 = call %struct.Memory* @routine_addl__0xffffffff___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407668)
  store %struct.Memory* %call_407668, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x18(%rdx)	 RIP: 40766b	 Bytes: 3
  %loadMem_40766b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40766b = call %struct.Memory* @routine_movl__esi__0x18__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40766b)
  store %struct.Memory* %call_40766b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 40766e	 Bytes: 4
  %loadMem_40766e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40766e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40766e)
  store %struct.Memory* %call_40766e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x18(%rdx)	 RIP: 407672	 Bytes: 4
  %loadMem_407672 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407672 = call %struct.Memory* @routine_cmpl__0x1__0x18__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407672)
  store %struct.Memory* %call_407672, %struct.Memory** %MEMORY

  ; Code: cmovel %ecx, %eax	 RIP: 407676	 Bytes: 3
  %loadMem_407676 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407676 = call %struct.Memory* @routine_cmovel__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407676)
  store %struct.Memory* %call_407676, %struct.Memory** %MEMORY

  ; Code: movzbl -0x11(%rbp), %ecx	 RIP: 407679	 Bytes: 4
  %loadMem_407679 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407679 = call %struct.Memory* @routine_movzbl_MINUS0x11__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407679)
  store %struct.Memory* %call_407679, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %ecx	 RIP: 40767d	 Bytes: 2
  %loadMem_40767d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40767d = call %struct.Memory* @routine_xorl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40767d)
  store %struct.Memory* %call_40767d, %struct.Memory** %MEMORY

  ; Code: movb %cl, %dil	 RIP: 40767f	 Bytes: 3
  %loadMem_40767f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40767f = call %struct.Memory* @routine_movb__cl___dil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40767f)
  store %struct.Memory* %call_40767f, %struct.Memory** %MEMORY

  ; Code: movb %dil, -0x11(%rbp)	 RIP: 407682	 Bytes: 4
  %loadMem_407682 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407682 = call %struct.Memory* @routine_movb__dil__MINUS0x11__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407682)
  store %struct.Memory* %call_407682, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 407686	 Bytes: 4
  %loadMem_407686 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407686 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407686)
  store %struct.Memory* %call_407686, %struct.Memory** %MEMORY

  ; Code: movl 0x444(%rdx), %eax	 RIP: 40768a	 Bytes: 6
  %loadMem_40768a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40768a = call %struct.Memory* @routine_movl_0x444__rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40768a)
  store %struct.Memory* %call_40768a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 407690	 Bytes: 3
  %loadMem_407690 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407690 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407690)
  store %struct.Memory* %call_407690, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x444(%rdx)	 RIP: 407693	 Bytes: 6
  %loadMem_407693 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407693 = call %struct.Memory* @routine_movl__eax__0x444__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407693)
  store %struct.Memory* %call_407693, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 407699	 Bytes: 4
  %loadMem_407699 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407699 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407699)
  store %struct.Memory* %call_407699, %struct.Memory** %MEMORY

  ; Code: movl 0x444(%rdx), %eax	 RIP: 40769d	 Bytes: 6
  %loadMem_40769d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40769d = call %struct.Memory* @routine_movl_0x444__rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40769d)
  store %struct.Memory* %call_40769d, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4076a3	 Bytes: 4
  %loadMem_4076a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4076a3 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4076a3)
  store %struct.Memory* %call_4076a3, %struct.Memory** %MEMORY

  ; Code: movl 0xfa50(%rdx), %ecx	 RIP: 4076a7	 Bytes: 6
  %loadMem_4076a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4076a7 = call %struct.Memory* @routine_movl_0xfa50__rdx____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4076a7)
  store %struct.Memory* %call_4076a7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 4076ad	 Bytes: 3
  %loadMem_4076ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4076ad = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4076ad)
  store %struct.Memory* %call_4076ad, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 4076b0	 Bytes: 2
  %loadMem_4076b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4076b0 = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4076b0)
  store %struct.Memory* %call_4076b0, %struct.Memory** %MEMORY

  ; Code: jne .L_4076bd	 RIP: 4076b2	 Bytes: 6
  %loadMem_4076b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4076b2 = call %struct.Memory* @routine_jne_.L_4076bd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4076b2, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4076b2, %struct.Memory** %MEMORY

  %loadBr_4076b2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4076b2 = icmp eq i8 %loadBr_4076b2, 1
  br i1 %cmpBr_4076b2, label %block_.L_4076bd, label %block_4076b8

block_4076b8:
  ; Code: jmpq .L_40735b	 RIP: 4076b8	 Bytes: 5
  %loadMem_4076b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4076b8 = call %struct.Memory* @routine_jmpq_.L_40735b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4076b8, i64 -861, i64 5)
  store %struct.Memory* %call_4076b8, %struct.Memory** %MEMORY

  br label %block_.L_40735b

  ; Code: .L_4076bd:	 RIP: 4076bd	 Bytes: 0
block_.L_4076bd:

  ; Code: movzbl -0x11(%rbp), %eax	 RIP: 4076bd	 Bytes: 4
  %loadMem_4076bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4076bd = call %struct.Memory* @routine_movzbl_MINUS0x11__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4076bd)
  store %struct.Memory* %call_4076bd, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4076c1	 Bytes: 4
  %loadMem_4076c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4076c1 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4076c1)
  store %struct.Memory* %call_4076c1, %struct.Memory** %MEMORY

  ; Code: cmpl 0x40(%rcx), %eax	 RIP: 4076c5	 Bytes: 3
  %loadMem_4076c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4076c5 = call %struct.Memory* @routine_cmpl_0x40__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4076c5)
  store %struct.Memory* %call_4076c5, %struct.Memory** %MEMORY

  ; Code: je .L_4076de	 RIP: 4076c8	 Bytes: 6
  %loadMem_4076c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4076c8 = call %struct.Memory* @routine_je_.L_4076de(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4076c8, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_4076c8, %struct.Memory** %MEMORY

  %loadBr_4076c8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4076c8 = icmp eq i8 %loadBr_4076c8, 1
  br i1 %cmpBr_4076c8, label %block_.L_4076de, label %block_4076ce

block_4076ce:
  ; Code: movzbl -0x11(%rbp), %eax	 RIP: 4076ce	 Bytes: 4
  %loadMem_4076ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4076ce = call %struct.Memory* @routine_movzbl_MINUS0x11__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4076ce)
  store %struct.Memory* %call_4076ce, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4076d2	 Bytes: 4
  %loadMem_4076d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4076d2 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4076d2)
  store %struct.Memory* %call_4076d2, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x40(%rcx)	 RIP: 4076d6	 Bytes: 3
  %loadMem_4076d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4076d6 = call %struct.Memory* @routine_movl__eax__0x40__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4076d6)
  store %struct.Memory* %call_4076d6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40735b	 RIP: 4076d9	 Bytes: 5
  %loadMem_4076d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4076d9 = call %struct.Memory* @routine_jmpq_.L_40735b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4076d9, i64 -894, i64 5)
  store %struct.Memory* %call_4076d9, %struct.Memory** %MEMORY

  br label %block_.L_40735b

  ; Code: .L_4076de:	 RIP: 4076de	 Bytes: 0
block_.L_4076de:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4076de	 Bytes: 4
  %loadMem_4076de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4076de = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4076de)
  store %struct.Memory* %call_4076de, %struct.Memory** %MEMORY

  ; Code: movl $0x3, 0x10(%rax)	 RIP: 4076e2	 Bytes: 7
  %loadMem_4076e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4076e2 = call %struct.Memory* @routine_movl__0x3__0x10__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4076e2)
  store %struct.Memory* %call_4076e2, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4076e9	 Bytes: 4
  %loadMem_4076e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4076e9 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4076e9)
  store %struct.Memory* %call_4076e9, %struct.Memory** %MEMORY

  ; Code: movq 0xc50(%rax), %rax	 RIP: 4076ed	 Bytes: 7
  %loadMem_4076ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4076ed = call %struct.Memory* @routine_movq_0xc50__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4076ed)
  store %struct.Memory* %call_4076ed, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4076f4	 Bytes: 4
  %loadMem_4076f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4076f4 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4076f4)
  store %struct.Memory* %call_4076f4, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rcx), %edx	 RIP: 4076f8	 Bytes: 3
  %loadMem_4076f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4076f8 = call %struct.Memory* @routine_movl_0x3c__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4076f8)
  store %struct.Memory* %call_4076f8, %struct.Memory** %MEMORY

  ; Code: movl %edx, %ecx	 RIP: 4076fb	 Bytes: 2
  %loadMem_4076fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4076fb = call %struct.Memory* @routine_movl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4076fb)
  store %struct.Memory* %call_4076fb, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 4076fd	 Bytes: 3
  %loadMem_4076fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4076fd = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4076fd)
  store %struct.Memory* %call_4076fd, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 407700	 Bytes: 4
  %loadMem_407700 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407700 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407700)
  store %struct.Memory* %call_407700, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x3c(%rax)	 RIP: 407704	 Bytes: 3
  %loadMem_407704 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407704 = call %struct.Memory* @routine_movl__edx__0x3c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407704)
  store %struct.Memory* %call_407704, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 407707	 Bytes: 4
  %loadMem_407707 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407707 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407707)
  store %struct.Memory* %call_407707, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rax), %edx	 RIP: 40770b	 Bytes: 3
  %loadMem_40770b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40770b = call %struct.Memory* @routine_movl_0x3c__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40770b)
  store %struct.Memory* %call_40770b, %struct.Memory** %MEMORY

  ; Code: andl $0xff, %edx	 RIP: 40770e	 Bytes: 6
  %loadMem_40770e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40770e = call %struct.Memory* @routine_andl__0xff___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40770e)
  store %struct.Memory* %call_40770e, %struct.Memory** %MEMORY

  ; Code: movb %dl, %sil	 RIP: 407714	 Bytes: 3
  %loadMem_407714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407714 = call %struct.Memory* @routine_movb__dl___sil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407714)
  store %struct.Memory* %call_407714, %struct.Memory** %MEMORY

  ; Code: movb %sil, -0x11(%rbp)	 RIP: 407717	 Bytes: 4
  %loadMem_407717 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407717 = call %struct.Memory* @routine_movb__sil__MINUS0x11__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407717)
  store %struct.Memory* %call_407717, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 40771b	 Bytes: 4
  %loadMem_40771b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40771b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40771b)
  store %struct.Memory* %call_40771b, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rax), %edx	 RIP: 40771f	 Bytes: 3
  %loadMem_40771f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40771f = call %struct.Memory* @routine_movl_0x3c__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40771f)
  store %struct.Memory* %call_40771f, %struct.Memory** %MEMORY

  ; Code: shrl $0x8, %edx	 RIP: 407722	 Bytes: 3
  %loadMem_407722 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407722 = call %struct.Memory* @routine_shrl__0x8___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407722)
  store %struct.Memory* %call_407722, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x3c(%rax)	 RIP: 407725	 Bytes: 3
  %loadMem_407725 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407725 = call %struct.Memory* @routine_movl__edx__0x3c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407725)
  store %struct.Memory* %call_407725, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 407728	 Bytes: 4
  %loadMem_407728 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407728 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407728)
  store %struct.Memory* %call_407728, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x18(%rax)	 RIP: 40772c	 Bytes: 4
  %loadMem_40772c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40772c = call %struct.Memory* @routine_cmpl__0x0__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40772c)
  store %struct.Memory* %call_40772c, %struct.Memory** %MEMORY

  ; Code: jne .L_40777a	 RIP: 407730	 Bytes: 6
  %loadMem_407730 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407730 = call %struct.Memory* @routine_jne_.L_40777a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407730, i8* %BRANCH_TAKEN, i64 74, i64 6, i64 6)
  store %struct.Memory* %call_407730, %struct.Memory** %MEMORY

  %loadBr_407730 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_407730 = icmp eq i8 %loadBr_407730, 1
  br i1 %cmpBr_407730, label %block_.L_40777a, label %block_407736

block_407736:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 407736	 Bytes: 4
  %loadMem_407736 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407736 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407736)
  store %struct.Memory* %call_407736, %struct.Memory** %MEMORY

  ; Code: movslq 0x1c(%rax), %rax	 RIP: 40773a	 Bytes: 4
  %loadMem_40773a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40773a = call %struct.Memory* @routine_movslq_0x1c__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40773a)
  store %struct.Memory* %call_40773a, %struct.Memory** %MEMORY

  ; Code: movl 0x618570(,%rax,4), %ecx	 RIP: 40773e	 Bytes: 7
  %loadMem_40773e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40773e = call %struct.Memory* @routine_movl_0x618570___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40773e)
  store %struct.Memory* %call_40773e, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 407745	 Bytes: 4
  %loadMem_407745 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407745 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407745)
  store %struct.Memory* %call_407745, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x18(%rax)	 RIP: 407749	 Bytes: 3
  %loadMem_407749 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407749 = call %struct.Memory* @routine_movl__ecx__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407749)
  store %struct.Memory* %call_407749, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 40774c	 Bytes: 4
  %loadMem_40774c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40774c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40774c)
  store %struct.Memory* %call_40774c, %struct.Memory** %MEMORY

  ; Code: movl 0x1c(%rax), %ecx	 RIP: 407750	 Bytes: 3
  %loadMem_407750 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407750 = call %struct.Memory* @routine_movl_0x1c__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407750)
  store %struct.Memory* %call_407750, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 407753	 Bytes: 3
  %loadMem_407753 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407753 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407753)
  store %struct.Memory* %call_407753, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x1c(%rax)	 RIP: 407756	 Bytes: 3
  %loadMem_407756 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407756 = call %struct.Memory* @routine_movl__ecx__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407756)
  store %struct.Memory* %call_407756, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 407759	 Bytes: 4
  %loadMem_407759 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407759 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407759)
  store %struct.Memory* %call_407759, %struct.Memory** %MEMORY

  ; Code: cmpl $0x200, 0x1c(%rax)	 RIP: 40775d	 Bytes: 7
  %loadMem_40775d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40775d = call %struct.Memory* @routine_cmpl__0x200__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40775d)
  store %struct.Memory* %call_40775d, %struct.Memory** %MEMORY

  ; Code: jne .L_407775	 RIP: 407764	 Bytes: 6
  %loadMem_407764 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407764 = call %struct.Memory* @routine_jne_.L_407775(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407764, i8* %BRANCH_TAKEN, i64 17, i64 6, i64 6)
  store %struct.Memory* %call_407764, %struct.Memory** %MEMORY

  %loadBr_407764 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_407764 = icmp eq i8 %loadBr_407764, 1
  br i1 %cmpBr_407764, label %block_.L_407775, label %block_40776a

block_40776a:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 40776a	 Bytes: 4
  %loadMem_40776a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40776a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40776a)
  store %struct.Memory* %call_40776a, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x1c(%rax)	 RIP: 40776e	 Bytes: 7
  %loadMem_40776e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40776e = call %struct.Memory* @routine_movl__0x0__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40776e)
  store %struct.Memory* %call_40776e, %struct.Memory** %MEMORY

  ; Code: .L_407775:	 RIP: 407775	 Bytes: 0
  br label %block_.L_407775
block_.L_407775:

  ; Code: jmpq .L_40777a	 RIP: 407775	 Bytes: 5
  %loadMem_407775 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407775 = call %struct.Memory* @routine_jmpq_.L_40777a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407775, i64 5, i64 5)
  store %struct.Memory* %call_407775, %struct.Memory** %MEMORY

  br label %block_.L_40777a

  ; Code: .L_40777a:	 RIP: 40777a	 Bytes: 0
block_.L_40777a:

  ; Code: xorl %eax, %eax	 RIP: 40777a	 Bytes: 2
  %loadMem_40777a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40777a = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40777a)
  store %struct.Memory* %call_40777a, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %ecx	 RIP: 40777c	 Bytes: 5
  %loadMem_40777c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40777c = call %struct.Memory* @routine_movl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40777c)
  store %struct.Memory* %call_40777c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 407781	 Bytes: 4
  %loadMem_407781 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407781 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407781)
  store %struct.Memory* %call_407781, %struct.Memory** %MEMORY

  ; Code: movl 0x18(%rdx), %esi	 RIP: 407785	 Bytes: 3
  %loadMem_407785 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407785 = call %struct.Memory* @routine_movl_0x18__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407785)
  store %struct.Memory* %call_407785, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %esi	 RIP: 407788	 Bytes: 3
  %loadMem_407788 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407788 = call %struct.Memory* @routine_addl__0xffffffff___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407788)
  store %struct.Memory* %call_407788, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x18(%rdx)	 RIP: 40778b	 Bytes: 3
  %loadMem_40778b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40778b = call %struct.Memory* @routine_movl__esi__0x18__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40778b)
  store %struct.Memory* %call_40778b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 40778e	 Bytes: 4
  %loadMem_40778e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40778e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40778e)
  store %struct.Memory* %call_40778e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x18(%rdx)	 RIP: 407792	 Bytes: 4
  %loadMem_407792 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407792 = call %struct.Memory* @routine_cmpl__0x1__0x18__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407792)
  store %struct.Memory* %call_407792, %struct.Memory** %MEMORY

  ; Code: cmovel %ecx, %eax	 RIP: 407796	 Bytes: 3
  %loadMem_407796 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407796 = call %struct.Memory* @routine_cmovel__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407796)
  store %struct.Memory* %call_407796, %struct.Memory** %MEMORY

  ; Code: movzbl -0x11(%rbp), %ecx	 RIP: 407799	 Bytes: 4
  %loadMem_407799 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407799 = call %struct.Memory* @routine_movzbl_MINUS0x11__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407799)
  store %struct.Memory* %call_407799, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %ecx	 RIP: 40779d	 Bytes: 2
  %loadMem_40779d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40779d = call %struct.Memory* @routine_xorl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40779d)
  store %struct.Memory* %call_40779d, %struct.Memory** %MEMORY

  ; Code: movb %cl, %dil	 RIP: 40779f	 Bytes: 3
  %loadMem_40779f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40779f = call %struct.Memory* @routine_movb__cl___dil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40779f)
  store %struct.Memory* %call_40779f, %struct.Memory** %MEMORY

  ; Code: movb %dil, -0x11(%rbp)	 RIP: 4077a2	 Bytes: 4
  %loadMem_4077a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4077a2 = call %struct.Memory* @routine_movb__dil__MINUS0x11__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4077a2)
  store %struct.Memory* %call_4077a2, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4077a6	 Bytes: 4
  %loadMem_4077a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4077a6 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4077a6)
  store %struct.Memory* %call_4077a6, %struct.Memory** %MEMORY

  ; Code: movl 0x444(%rdx), %eax	 RIP: 4077aa	 Bytes: 6
  %loadMem_4077aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4077aa = call %struct.Memory* @routine_movl_0x444__rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4077aa)
  store %struct.Memory* %call_4077aa, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4077b0	 Bytes: 3
  %loadMem_4077b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4077b0 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4077b0)
  store %struct.Memory* %call_4077b0, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x444(%rdx)	 RIP: 4077b3	 Bytes: 6
  %loadMem_4077b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4077b3 = call %struct.Memory* @routine_movl__eax__0x444__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4077b3)
  store %struct.Memory* %call_4077b3, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4077b9	 Bytes: 4
  %loadMem_4077b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4077b9 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4077b9)
  store %struct.Memory* %call_4077b9, %struct.Memory** %MEMORY

  ; Code: movl 0x444(%rdx), %eax	 RIP: 4077bd	 Bytes: 6
  %loadMem_4077bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4077bd = call %struct.Memory* @routine_movl_0x444__rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4077bd)
  store %struct.Memory* %call_4077bd, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4077c3	 Bytes: 4
  %loadMem_4077c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4077c3 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4077c3)
  store %struct.Memory* %call_4077c3, %struct.Memory** %MEMORY

  ; Code: movl 0xfa50(%rdx), %ecx	 RIP: 4077c7	 Bytes: 6
  %loadMem_4077c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4077c7 = call %struct.Memory* @routine_movl_0xfa50__rdx____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4077c7)
  store %struct.Memory* %call_4077c7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 4077cd	 Bytes: 3
  %loadMem_4077cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4077cd = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4077cd)
  store %struct.Memory* %call_4077cd, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 4077d0	 Bytes: 2
  %loadMem_4077d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4077d0 = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4077d0)
  store %struct.Memory* %call_4077d0, %struct.Memory** %MEMORY

  ; Code: jne .L_4077dd	 RIP: 4077d2	 Bytes: 6
  %loadMem_4077d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4077d2 = call %struct.Memory* @routine_jne_.L_4077dd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4077d2, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4077d2, %struct.Memory** %MEMORY

  %loadBr_4077d2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4077d2 = icmp eq i8 %loadBr_4077d2, 1
  br i1 %cmpBr_4077d2, label %block_.L_4077dd, label %block_4077d8

block_4077d8:
  ; Code: jmpq .L_40735b	 RIP: 4077d8	 Bytes: 5
  %loadMem_4077d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4077d8 = call %struct.Memory* @routine_jmpq_.L_40735b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4077d8, i64 -1149, i64 5)
  store %struct.Memory* %call_4077d8, %struct.Memory** %MEMORY

  br label %block_.L_40735b

  ; Code: .L_4077dd:	 RIP: 4077dd	 Bytes: 0
block_.L_4077dd:

  ; Code: movzbl -0x11(%rbp), %eax	 RIP: 4077dd	 Bytes: 4
  %loadMem_4077dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4077dd = call %struct.Memory* @routine_movzbl_MINUS0x11__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4077dd)
  store %struct.Memory* %call_4077dd, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4077e1	 Bytes: 4
  %loadMem_4077e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4077e1 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4077e1)
  store %struct.Memory* %call_4077e1, %struct.Memory** %MEMORY

  ; Code: cmpl 0x40(%rcx), %eax	 RIP: 4077e5	 Bytes: 3
  %loadMem_4077e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4077e5 = call %struct.Memory* @routine_cmpl_0x40__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4077e5)
  store %struct.Memory* %call_4077e5, %struct.Memory** %MEMORY

  ; Code: je .L_4077fe	 RIP: 4077e8	 Bytes: 6
  %loadMem_4077e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4077e8 = call %struct.Memory* @routine_je_.L_4077fe(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4077e8, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_4077e8, %struct.Memory** %MEMORY

  %loadBr_4077e8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4077e8 = icmp eq i8 %loadBr_4077e8, 1
  br i1 %cmpBr_4077e8, label %block_.L_4077fe, label %block_4077ee

block_4077ee:
  ; Code: movzbl -0x11(%rbp), %eax	 RIP: 4077ee	 Bytes: 4
  %loadMem_4077ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4077ee = call %struct.Memory* @routine_movzbl_MINUS0x11__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4077ee)
  store %struct.Memory* %call_4077ee, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4077f2	 Bytes: 4
  %loadMem_4077f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4077f2 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4077f2)
  store %struct.Memory* %call_4077f2, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x40(%rcx)	 RIP: 4077f6	 Bytes: 3
  %loadMem_4077f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4077f6 = call %struct.Memory* @routine_movl__eax__0x40__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4077f6)
  store %struct.Memory* %call_4077f6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40735b	 RIP: 4077f9	 Bytes: 5
  %loadMem_4077f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4077f9 = call %struct.Memory* @routine_jmpq_.L_40735b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4077f9, i64 -1182, i64 5)
  store %struct.Memory* %call_4077f9, %struct.Memory** %MEMORY

  br label %block_.L_40735b

  ; Code: .L_4077fe:	 RIP: 4077fe	 Bytes: 0
block_.L_4077fe:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4077fe	 Bytes: 4
  %loadMem_4077fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4077fe = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4077fe)
  store %struct.Memory* %call_4077fe, %struct.Memory** %MEMORY

  ; Code: movq 0xc50(%rax), %rax	 RIP: 407802	 Bytes: 7
  %loadMem_407802 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407802 = call %struct.Memory* @routine_movq_0xc50__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407802)
  store %struct.Memory* %call_407802, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 407809	 Bytes: 4
  %loadMem_407809 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407809 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407809)
  store %struct.Memory* %call_407809, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rcx), %edx	 RIP: 40780d	 Bytes: 3
  %loadMem_40780d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40780d = call %struct.Memory* @routine_movl_0x3c__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40780d)
  store %struct.Memory* %call_40780d, %struct.Memory** %MEMORY

  ; Code: movl %edx, %ecx	 RIP: 407810	 Bytes: 2
  %loadMem_407810 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407810 = call %struct.Memory* @routine_movl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407810)
  store %struct.Memory* %call_407810, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 407812	 Bytes: 3
  %loadMem_407812 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407812 = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407812)
  store %struct.Memory* %call_407812, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 407815	 Bytes: 4
  %loadMem_407815 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407815 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407815)
  store %struct.Memory* %call_407815, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x3c(%rax)	 RIP: 407819	 Bytes: 3
  %loadMem_407819 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407819 = call %struct.Memory* @routine_movl__edx__0x3c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407819)
  store %struct.Memory* %call_407819, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 40781c	 Bytes: 4
  %loadMem_40781c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40781c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40781c)
  store %struct.Memory* %call_40781c, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rax), %edx	 RIP: 407820	 Bytes: 3
  %loadMem_407820 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407820 = call %struct.Memory* @routine_movl_0x3c__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407820)
  store %struct.Memory* %call_407820, %struct.Memory** %MEMORY

  ; Code: andl $0xff, %edx	 RIP: 407823	 Bytes: 6
  %loadMem_407823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407823 = call %struct.Memory* @routine_andl__0xff___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407823)
  store %struct.Memory* %call_407823, %struct.Memory** %MEMORY

  ; Code: movb %dl, %sil	 RIP: 407829	 Bytes: 3
  %loadMem_407829 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407829 = call %struct.Memory* @routine_movb__dl___sil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407829)
  store %struct.Memory* %call_407829, %struct.Memory** %MEMORY

  ; Code: movb %sil, -0x11(%rbp)	 RIP: 40782c	 Bytes: 4
  %loadMem_40782c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40782c = call %struct.Memory* @routine_movb__sil__MINUS0x11__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40782c)
  store %struct.Memory* %call_40782c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 407830	 Bytes: 4
  %loadMem_407830 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407830 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407830)
  store %struct.Memory* %call_407830, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rax), %edx	 RIP: 407834	 Bytes: 3
  %loadMem_407834 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407834 = call %struct.Memory* @routine_movl_0x3c__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407834)
  store %struct.Memory* %call_407834, %struct.Memory** %MEMORY

  ; Code: shrl $0x8, %edx	 RIP: 407837	 Bytes: 3
  %loadMem_407837 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407837 = call %struct.Memory* @routine_shrl__0x8___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407837)
  store %struct.Memory* %call_407837, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x3c(%rax)	 RIP: 40783a	 Bytes: 3
  %loadMem_40783a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40783a = call %struct.Memory* @routine_movl__edx__0x3c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40783a)
  store %struct.Memory* %call_40783a, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 40783d	 Bytes: 4
  %loadMem_40783d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40783d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40783d)
  store %struct.Memory* %call_40783d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x18(%rax)	 RIP: 407841	 Bytes: 4
  %loadMem_407841 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407841 = call %struct.Memory* @routine_cmpl__0x0__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407841)
  store %struct.Memory* %call_407841, %struct.Memory** %MEMORY

  ; Code: jne .L_40788f	 RIP: 407845	 Bytes: 6
  %loadMem_407845 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407845 = call %struct.Memory* @routine_jne_.L_40788f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407845, i8* %BRANCH_TAKEN, i64 74, i64 6, i64 6)
  store %struct.Memory* %call_407845, %struct.Memory** %MEMORY

  %loadBr_407845 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_407845 = icmp eq i8 %loadBr_407845, 1
  br i1 %cmpBr_407845, label %block_.L_40788f, label %block_40784b

block_40784b:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 40784b	 Bytes: 4
  %loadMem_40784b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40784b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40784b)
  store %struct.Memory* %call_40784b, %struct.Memory** %MEMORY

  ; Code: movslq 0x1c(%rax), %rax	 RIP: 40784f	 Bytes: 4
  %loadMem_40784f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40784f = call %struct.Memory* @routine_movslq_0x1c__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40784f)
  store %struct.Memory* %call_40784f, %struct.Memory** %MEMORY

  ; Code: movl 0x618570(,%rax,4), %ecx	 RIP: 407853	 Bytes: 7
  %loadMem_407853 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407853 = call %struct.Memory* @routine_movl_0x618570___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407853)
  store %struct.Memory* %call_407853, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 40785a	 Bytes: 4
  %loadMem_40785a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40785a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40785a)
  store %struct.Memory* %call_40785a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x18(%rax)	 RIP: 40785e	 Bytes: 3
  %loadMem_40785e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40785e = call %struct.Memory* @routine_movl__ecx__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40785e)
  store %struct.Memory* %call_40785e, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 407861	 Bytes: 4
  %loadMem_407861 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407861 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407861)
  store %struct.Memory* %call_407861, %struct.Memory** %MEMORY

  ; Code: movl 0x1c(%rax), %ecx	 RIP: 407865	 Bytes: 3
  %loadMem_407865 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407865 = call %struct.Memory* @routine_movl_0x1c__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407865)
  store %struct.Memory* %call_407865, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 407868	 Bytes: 3
  %loadMem_407868 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407868 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407868)
  store %struct.Memory* %call_407868, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x1c(%rax)	 RIP: 40786b	 Bytes: 3
  %loadMem_40786b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40786b = call %struct.Memory* @routine_movl__ecx__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40786b)
  store %struct.Memory* %call_40786b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 40786e	 Bytes: 4
  %loadMem_40786e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40786e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40786e)
  store %struct.Memory* %call_40786e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x200, 0x1c(%rax)	 RIP: 407872	 Bytes: 7
  %loadMem_407872 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407872 = call %struct.Memory* @routine_cmpl__0x200__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407872)
  store %struct.Memory* %call_407872, %struct.Memory** %MEMORY

  ; Code: jne .L_40788a	 RIP: 407879	 Bytes: 6
  %loadMem_407879 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407879 = call %struct.Memory* @routine_jne_.L_40788a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407879, i8* %BRANCH_TAKEN, i64 17, i64 6, i64 6)
  store %struct.Memory* %call_407879, %struct.Memory** %MEMORY

  %loadBr_407879 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_407879 = icmp eq i8 %loadBr_407879, 1
  br i1 %cmpBr_407879, label %block_.L_40788a, label %block_40787f

block_40787f:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 40787f	 Bytes: 4
  %loadMem_40787f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40787f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40787f)
  store %struct.Memory* %call_40787f, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x1c(%rax)	 RIP: 407883	 Bytes: 7
  %loadMem_407883 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407883 = call %struct.Memory* @routine_movl__0x0__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407883)
  store %struct.Memory* %call_407883, %struct.Memory** %MEMORY

  ; Code: .L_40788a:	 RIP: 40788a	 Bytes: 0
  br label %block_.L_40788a
block_.L_40788a:

  ; Code: jmpq .L_40788f	 RIP: 40788a	 Bytes: 5
  %loadMem_40788a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40788a = call %struct.Memory* @routine_jmpq_.L_40788f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40788a, i64 5, i64 5)
  store %struct.Memory* %call_40788a, %struct.Memory** %MEMORY

  br label %block_.L_40788f

  ; Code: .L_40788f:	 RIP: 40788f	 Bytes: 0
block_.L_40788f:

  ; Code: xorl %eax, %eax	 RIP: 40788f	 Bytes: 2
  %loadMem_40788f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40788f = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40788f)
  store %struct.Memory* %call_40788f, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %ecx	 RIP: 407891	 Bytes: 5
  %loadMem_407891 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407891 = call %struct.Memory* @routine_movl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407891)
  store %struct.Memory* %call_407891, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 407896	 Bytes: 4
  %loadMem_407896 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407896 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407896)
  store %struct.Memory* %call_407896, %struct.Memory** %MEMORY

  ; Code: movl 0x18(%rdx), %esi	 RIP: 40789a	 Bytes: 3
  %loadMem_40789a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40789a = call %struct.Memory* @routine_movl_0x18__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40789a)
  store %struct.Memory* %call_40789a, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %esi	 RIP: 40789d	 Bytes: 3
  %loadMem_40789d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40789d = call %struct.Memory* @routine_addl__0xffffffff___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40789d)
  store %struct.Memory* %call_40789d, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x18(%rdx)	 RIP: 4078a0	 Bytes: 3
  %loadMem_4078a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4078a0 = call %struct.Memory* @routine_movl__esi__0x18__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4078a0)
  store %struct.Memory* %call_4078a0, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4078a3	 Bytes: 4
  %loadMem_4078a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4078a3 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4078a3)
  store %struct.Memory* %call_4078a3, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x18(%rdx)	 RIP: 4078a7	 Bytes: 4
  %loadMem_4078a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4078a7 = call %struct.Memory* @routine_cmpl__0x1__0x18__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4078a7)
  store %struct.Memory* %call_4078a7, %struct.Memory** %MEMORY

  ; Code: cmovel %ecx, %eax	 RIP: 4078ab	 Bytes: 3
  %loadMem_4078ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4078ab = call %struct.Memory* @routine_cmovel__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4078ab)
  store %struct.Memory* %call_4078ab, %struct.Memory** %MEMORY

  ; Code: movzbl -0x11(%rbp), %ecx	 RIP: 4078ae	 Bytes: 4
  %loadMem_4078ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4078ae = call %struct.Memory* @routine_movzbl_MINUS0x11__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4078ae)
  store %struct.Memory* %call_4078ae, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %ecx	 RIP: 4078b2	 Bytes: 2
  %loadMem_4078b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4078b2 = call %struct.Memory* @routine_xorl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4078b2)
  store %struct.Memory* %call_4078b2, %struct.Memory** %MEMORY

  ; Code: movb %cl, %dil	 RIP: 4078b4	 Bytes: 3
  %loadMem_4078b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4078b4 = call %struct.Memory* @routine_movb__cl___dil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4078b4)
  store %struct.Memory* %call_4078b4, %struct.Memory** %MEMORY

  ; Code: movb %dil, -0x11(%rbp)	 RIP: 4078b7	 Bytes: 4
  %loadMem_4078b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4078b7 = call %struct.Memory* @routine_movb__dil__MINUS0x11__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4078b7)
  store %struct.Memory* %call_4078b7, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4078bb	 Bytes: 4
  %loadMem_4078bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4078bb = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4078bb)
  store %struct.Memory* %call_4078bb, %struct.Memory** %MEMORY

  ; Code: movl 0x444(%rdx), %eax	 RIP: 4078bf	 Bytes: 6
  %loadMem_4078bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4078bf = call %struct.Memory* @routine_movl_0x444__rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4078bf)
  store %struct.Memory* %call_4078bf, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4078c5	 Bytes: 3
  %loadMem_4078c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4078c5 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4078c5)
  store %struct.Memory* %call_4078c5, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x444(%rdx)	 RIP: 4078c8	 Bytes: 6
  %loadMem_4078c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4078c8 = call %struct.Memory* @routine_movl__eax__0x444__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4078c8)
  store %struct.Memory* %call_4078c8, %struct.Memory** %MEMORY

  ; Code: movzbl -0x11(%rbp), %eax	 RIP: 4078ce	 Bytes: 4
  %loadMem_4078ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4078ce = call %struct.Memory* @routine_movzbl_MINUS0x11__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4078ce)
  store %struct.Memory* %call_4078ce, %struct.Memory** %MEMORY

  ; Code: addl $0x4, %eax	 RIP: 4078d2	 Bytes: 3
  %loadMem_4078d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4078d2 = call %struct.Memory* @routine_addl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4078d2)
  store %struct.Memory* %call_4078d2, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4078d5	 Bytes: 4
  %loadMem_4078d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4078d5 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4078d5)
  store %struct.Memory* %call_4078d5, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x10(%rdx)	 RIP: 4078d9	 Bytes: 3
  %loadMem_4078d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4078d9 = call %struct.Memory* @routine_movl__eax__0x10__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4078d9)
  store %struct.Memory* %call_4078d9, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4078dc	 Bytes: 4
  %loadMem_4078dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4078dc = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4078dc)
  store %struct.Memory* %call_4078dc, %struct.Memory** %MEMORY

  ; Code: movq 0xc50(%rdx), %rdx	 RIP: 4078e0	 Bytes: 7
  %loadMem_4078e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4078e0 = call %struct.Memory* @routine_movq_0xc50__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4078e0)
  store %struct.Memory* %call_4078e0, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %r8	 RIP: 4078e7	 Bytes: 4
  %loadMem_4078e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4078e7 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4078e7)
  store %struct.Memory* %call_4078e7, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%r8), %eax	 RIP: 4078eb	 Bytes: 4
  %loadMem_4078eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4078eb = call %struct.Memory* @routine_movl_0x3c__r8____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4078eb)
  store %struct.Memory* %call_4078eb, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 4078ef	 Bytes: 3
  %loadMem_4078ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4078ef = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4078ef)
  store %struct.Memory* %call_4078ef, %struct.Memory** %MEMORY

  ; Code: movl (%rdx,%r8,4), %eax	 RIP: 4078f2	 Bytes: 4
  %loadMem_4078f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4078f2 = call %struct.Memory* @routine_movl___rdx__r8_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4078f2)
  store %struct.Memory* %call_4078f2, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4078f6	 Bytes: 4
  %loadMem_4078f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4078f6 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4078f6)
  store %struct.Memory* %call_4078f6, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x3c(%rdx)	 RIP: 4078fa	 Bytes: 3
  %loadMem_4078fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4078fa = call %struct.Memory* @routine_movl__eax__0x3c__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4078fa)
  store %struct.Memory* %call_4078fa, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4078fd	 Bytes: 4
  %loadMem_4078fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4078fd = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4078fd)
  store %struct.Memory* %call_4078fd, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rdx), %eax	 RIP: 407901	 Bytes: 3
  %loadMem_407901 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407901 = call %struct.Memory* @routine_movl_0x3c__rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407901)
  store %struct.Memory* %call_407901, %struct.Memory** %MEMORY

  ; Code: andl $0xff, %eax	 RIP: 407904	 Bytes: 5
  %loadMem_407904 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407904 = call %struct.Memory* @routine_andl__0xff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407904)
  store %struct.Memory* %call_407904, %struct.Memory** %MEMORY

  ; Code: movb %al, %dil	 RIP: 407909	 Bytes: 3
  %loadMem_407909 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407909 = call %struct.Memory* @routine_movb__al___dil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407909)
  store %struct.Memory* %call_407909, %struct.Memory** %MEMORY

  ; Code: movzbl %dil, %eax	 RIP: 40790c	 Bytes: 4
  %loadMem_40790c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40790c = call %struct.Memory* @routine_movzbl__dil___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40790c)
  store %struct.Memory* %call_40790c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 407910	 Bytes: 4
  %loadMem_407910 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407910 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407910)
  store %struct.Memory* %call_407910, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x40(%rdx)	 RIP: 407914	 Bytes: 3
  %loadMem_407914 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407914 = call %struct.Memory* @routine_movl__eax__0x40__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407914)
  store %struct.Memory* %call_407914, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 407917	 Bytes: 4
  %loadMem_407917 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407917 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407917)
  store %struct.Memory* %call_407917, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rdx), %eax	 RIP: 40791b	 Bytes: 3
  %loadMem_40791b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40791b = call %struct.Memory* @routine_movl_0x3c__rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40791b)
  store %struct.Memory* %call_40791b, %struct.Memory** %MEMORY

  ; Code: shrl $0x8, %eax	 RIP: 40791e	 Bytes: 3
  %loadMem_40791e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40791e = call %struct.Memory* @routine_shrl__0x8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40791e)
  store %struct.Memory* %call_40791e, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x3c(%rdx)	 RIP: 407921	 Bytes: 3
  %loadMem_407921 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407921 = call %struct.Memory* @routine_movl__eax__0x3c__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407921)
  store %struct.Memory* %call_407921, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 407924	 Bytes: 4
  %loadMem_407924 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407924 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407924)
  store %struct.Memory* %call_407924, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x18(%rdx)	 RIP: 407928	 Bytes: 4
  %loadMem_407928 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407928 = call %struct.Memory* @routine_cmpl__0x0__0x18__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407928)
  store %struct.Memory* %call_407928, %struct.Memory** %MEMORY

  ; Code: jne .L_407976	 RIP: 40792c	 Bytes: 6
  %loadMem_40792c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40792c = call %struct.Memory* @routine_jne_.L_407976(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40792c, i8* %BRANCH_TAKEN, i64 74, i64 6, i64 6)
  store %struct.Memory* %call_40792c, %struct.Memory** %MEMORY

  %loadBr_40792c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40792c = icmp eq i8 %loadBr_40792c, 1
  br i1 %cmpBr_40792c, label %block_.L_407976, label %block_407932

block_407932:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 407932	 Bytes: 4
  %loadMem_407932 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407932 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407932)
  store %struct.Memory* %call_407932, %struct.Memory** %MEMORY

  ; Code: movslq 0x1c(%rax), %rax	 RIP: 407936	 Bytes: 4
  %loadMem_407936 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407936 = call %struct.Memory* @routine_movslq_0x1c__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407936)
  store %struct.Memory* %call_407936, %struct.Memory** %MEMORY

  ; Code: movl 0x618570(,%rax,4), %ecx	 RIP: 40793a	 Bytes: 7
  %loadMem_40793a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40793a = call %struct.Memory* @routine_movl_0x618570___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40793a)
  store %struct.Memory* %call_40793a, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 407941	 Bytes: 4
  %loadMem_407941 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407941 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407941)
  store %struct.Memory* %call_407941, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x18(%rax)	 RIP: 407945	 Bytes: 3
  %loadMem_407945 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407945 = call %struct.Memory* @routine_movl__ecx__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407945)
  store %struct.Memory* %call_407945, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 407948	 Bytes: 4
  %loadMem_407948 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407948 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407948)
  store %struct.Memory* %call_407948, %struct.Memory** %MEMORY

  ; Code: movl 0x1c(%rax), %ecx	 RIP: 40794c	 Bytes: 3
  %loadMem_40794c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40794c = call %struct.Memory* @routine_movl_0x1c__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40794c)
  store %struct.Memory* %call_40794c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 40794f	 Bytes: 3
  %loadMem_40794f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40794f = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40794f)
  store %struct.Memory* %call_40794f, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x1c(%rax)	 RIP: 407952	 Bytes: 3
  %loadMem_407952 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407952 = call %struct.Memory* @routine_movl__ecx__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407952)
  store %struct.Memory* %call_407952, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 407955	 Bytes: 4
  %loadMem_407955 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407955 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407955)
  store %struct.Memory* %call_407955, %struct.Memory** %MEMORY

  ; Code: cmpl $0x200, 0x1c(%rax)	 RIP: 407959	 Bytes: 7
  %loadMem_407959 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407959 = call %struct.Memory* @routine_cmpl__0x200__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407959)
  store %struct.Memory* %call_407959, %struct.Memory** %MEMORY

  ; Code: jne .L_407971	 RIP: 407960	 Bytes: 6
  %loadMem_407960 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407960 = call %struct.Memory* @routine_jne_.L_407971(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407960, i8* %BRANCH_TAKEN, i64 17, i64 6, i64 6)
  store %struct.Memory* %call_407960, %struct.Memory** %MEMORY

  %loadBr_407960 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_407960 = icmp eq i8 %loadBr_407960, 1
  br i1 %cmpBr_407960, label %block_.L_407971, label %block_407966

block_407966:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 407966	 Bytes: 4
  %loadMem_407966 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407966 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407966)
  store %struct.Memory* %call_407966, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x1c(%rax)	 RIP: 40796a	 Bytes: 7
  %loadMem_40796a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40796a = call %struct.Memory* @routine_movl__0x0__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40796a)
  store %struct.Memory* %call_40796a, %struct.Memory** %MEMORY

  ; Code: .L_407971:	 RIP: 407971	 Bytes: 0
  br label %block_.L_407971
block_.L_407971:

  ; Code: jmpq .L_407976	 RIP: 407971	 Bytes: 5
  %loadMem_407971 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407971 = call %struct.Memory* @routine_jmpq_.L_407976(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407971, i64 5, i64 5)
  store %struct.Memory* %call_407971, %struct.Memory** %MEMORY

  br label %block_.L_407976

  ; Code: .L_407976:	 RIP: 407976	 Bytes: 0
block_.L_407976:

  ; Code: xorl %eax, %eax	 RIP: 407976	 Bytes: 2
  %loadMem_407976 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407976 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407976)
  store %struct.Memory* %call_407976, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %ecx	 RIP: 407978	 Bytes: 5
  %loadMem_407978 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407978 = call %struct.Memory* @routine_movl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407978)
  store %struct.Memory* %call_407978, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 40797d	 Bytes: 4
  %loadMem_40797d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40797d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40797d)
  store %struct.Memory* %call_40797d, %struct.Memory** %MEMORY

  ; Code: movl 0x18(%rdx), %esi	 RIP: 407981	 Bytes: 3
  %loadMem_407981 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407981 = call %struct.Memory* @routine_movl_0x18__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407981)
  store %struct.Memory* %call_407981, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %esi	 RIP: 407984	 Bytes: 3
  %loadMem_407984 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407984 = call %struct.Memory* @routine_addl__0xffffffff___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407984)
  store %struct.Memory* %call_407984, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x18(%rdx)	 RIP: 407987	 Bytes: 3
  %loadMem_407987 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407987 = call %struct.Memory* @routine_movl__esi__0x18__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407987)
  store %struct.Memory* %call_407987, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 40798a	 Bytes: 4
  %loadMem_40798a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40798a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40798a)
  store %struct.Memory* %call_40798a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x18(%rdx)	 RIP: 40798e	 Bytes: 4
  %loadMem_40798e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40798e = call %struct.Memory* @routine_cmpl__0x1__0x18__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40798e)
  store %struct.Memory* %call_40798e, %struct.Memory** %MEMORY

  ; Code: cmovel %ecx, %eax	 RIP: 407992	 Bytes: 3
  %loadMem_407992 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407992 = call %struct.Memory* @routine_cmovel__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407992)
  store %struct.Memory* %call_407992, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 407995	 Bytes: 4
  %loadMem_407995 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407995 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407995)
  store %struct.Memory* %call_407995, %struct.Memory** %MEMORY

  ; Code: xorl 0x40(%rdx), %eax	 RIP: 407999	 Bytes: 3
  %loadMem_407999 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407999 = call %struct.Memory* @routine_xorl_0x40__rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407999)
  store %struct.Memory* %call_407999, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x40(%rdx)	 RIP: 40799c	 Bytes: 3
  %loadMem_40799c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40799c = call %struct.Memory* @routine_movl__eax__0x40__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40799c)
  store %struct.Memory* %call_40799c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 40799f	 Bytes: 4
  %loadMem_40799f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40799f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40799f)
  store %struct.Memory* %call_40799f, %struct.Memory** %MEMORY

  ; Code: movl 0x444(%rdx), %eax	 RIP: 4079a3	 Bytes: 6
  %loadMem_4079a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4079a3 = call %struct.Memory* @routine_movl_0x444__rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4079a3)
  store %struct.Memory* %call_4079a3, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4079a9	 Bytes: 3
  %loadMem_4079a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4079a9 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4079a9)
  store %struct.Memory* %call_4079a9, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x444(%rdx)	 RIP: 4079ac	 Bytes: 6
  %loadMem_4079ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4079ac = call %struct.Memory* @routine_movl__eax__0x444__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4079ac)
  store %struct.Memory* %call_4079ac, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40735b	 RIP: 4079b2	 Bytes: 5
  %loadMem_4079b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4079b2 = call %struct.Memory* @routine_jmpq_.L_40735b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4079b2, i64 -1623, i64 5)
  store %struct.Memory* %call_4079b2, %struct.Memory** %MEMORY

  br label %block_.L_40735b

  ; Code: .L_4079b7:	 RIP: 4079b7	 Bytes: 0
block_.L_4079b7:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4079b7	 Bytes: 4
  %loadMem_4079b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4079b7 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4079b7)
  store %struct.Memory* %call_4079b7, %struct.Memory** %MEMORY

  ; Code: movl 0xc70(%rax), %ecx	 RIP: 4079bb	 Bytes: 6
  %loadMem_4079bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4079bb = call %struct.Memory* @routine_movl_0xc70__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4079bb)
  store %struct.Memory* %call_4079bb, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x18(%rbp)	 RIP: 4079c1	 Bytes: 3
  %loadMem_4079c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4079c1 = call %struct.Memory* @routine_movl__ecx__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4079c1)
  store %struct.Memory* %call_4079c1, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4079c4	 Bytes: 4
  %loadMem_4079c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4079c4 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4079c4)
  store %struct.Memory* %call_4079c4, %struct.Memory** %MEMORY

  ; Code: movb 0xc(%rax), %dl	 RIP: 4079c8	 Bytes: 3
  %loadMem_4079c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4079c8 = call %struct.Memory* @routine_movb_0xc__rax____dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4079c8)
  store %struct.Memory* %call_4079c8, %struct.Memory** %MEMORY

  ; Code: movb %dl, -0x19(%rbp)	 RIP: 4079cb	 Bytes: 3
  %loadMem_4079cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4079cb = call %struct.Memory* @routine_movb__dl__MINUS0x19__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4079cb)
  store %struct.Memory* %call_4079cb, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4079ce	 Bytes: 4
  %loadMem_4079ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4079ce = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4079ce)
  store %struct.Memory* %call_4079ce, %struct.Memory** %MEMORY

  ; Code: movl 0x10(%rax), %ecx	 RIP: 4079d2	 Bytes: 3
  %loadMem_4079d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4079d2 = call %struct.Memory* @routine_movl_0x10__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4079d2)
  store %struct.Memory* %call_4079d2, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x20(%rbp)	 RIP: 4079d5	 Bytes: 3
  %loadMem_4079d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4079d5 = call %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4079d5)
  store %struct.Memory* %call_4079d5, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4079d8	 Bytes: 4
  %loadMem_4079d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4079d8 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4079d8)
  store %struct.Memory* %call_4079d8, %struct.Memory** %MEMORY

  ; Code: movl 0x444(%rax), %ecx	 RIP: 4079dc	 Bytes: 6
  %loadMem_4079dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4079dc = call %struct.Memory* @routine_movl_0x444__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4079dc)
  store %struct.Memory* %call_4079dc, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x24(%rbp)	 RIP: 4079e2	 Bytes: 3
  %loadMem_4079e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4079e2 = call %struct.Memory* @routine_movl__ecx__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4079e2)
  store %struct.Memory* %call_4079e2, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4079e5	 Bytes: 4
  %loadMem_4079e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4079e5 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4079e5)
  store %struct.Memory* %call_4079e5, %struct.Memory** %MEMORY

  ; Code: movl 0x40(%rax), %ecx	 RIP: 4079e9	 Bytes: 3
  %loadMem_4079e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4079e9 = call %struct.Memory* @routine_movl_0x40__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4079e9)
  store %struct.Memory* %call_4079e9, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x28(%rbp)	 RIP: 4079ec	 Bytes: 3
  %loadMem_4079ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4079ec = call %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4079ec)
  store %struct.Memory* %call_4079ec, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4079ef	 Bytes: 4
  %loadMem_4079ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4079ef = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4079ef)
  store %struct.Memory* %call_4079ef, %struct.Memory** %MEMORY

  ; Code: movq 0xc50(%rax), %rax	 RIP: 4079f3	 Bytes: 7
  %loadMem_4079f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4079f3 = call %struct.Memory* @routine_movq_0xc50__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4079f3)
  store %struct.Memory* %call_4079f3, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x30(%rbp)	 RIP: 4079fa	 Bytes: 4
  %loadMem_4079fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4079fa = call %struct.Memory* @routine_movq__rax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4079fa)
  store %struct.Memory* %call_4079fa, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4079fe	 Bytes: 4
  %loadMem_4079fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4079fe = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4079fe)
  store %struct.Memory* %call_4079fe, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rax), %ecx	 RIP: 407a02	 Bytes: 3
  %loadMem_407a02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407a02 = call %struct.Memory* @routine_movl_0x3c__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407a02)
  store %struct.Memory* %call_407a02, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x34(%rbp)	 RIP: 407a05	 Bytes: 3
  %loadMem_407a05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407a05 = call %struct.Memory* @routine_movl__ecx__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407a05)
  store %struct.Memory* %call_407a05, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 407a08	 Bytes: 4
  %loadMem_407a08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407a08 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407a08)
  store %struct.Memory* %call_407a08, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 407a0c	 Bytes: 3
  %loadMem_407a0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407a0c = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407a0c)
  store %struct.Memory* %call_407a0c, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax), %rax	 RIP: 407a0f	 Bytes: 4
  %loadMem_407a0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407a0f = call %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407a0f)
  store %struct.Memory* %call_407a0f, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x40(%rbp)	 RIP: 407a13	 Bytes: 4
  %loadMem_407a13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407a13 = call %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407a13)
  store %struct.Memory* %call_407a13, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 407a17	 Bytes: 4
  %loadMem_407a17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407a17 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407a17)
  store %struct.Memory* %call_407a17, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 407a1b	 Bytes: 3
  %loadMem_407a1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407a1b = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407a1b)
  store %struct.Memory* %call_407a1b, %struct.Memory** %MEMORY

  ; Code: movl 0x20(%rax), %ecx	 RIP: 407a1e	 Bytes: 3
  %loadMem_407a1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407a1e = call %struct.Memory* @routine_movl_0x20__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407a1e)
  store %struct.Memory* %call_407a1e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x44(%rbp)	 RIP: 407a21	 Bytes: 3
  %loadMem_407a21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407a21 = call %struct.Memory* @routine_movl__ecx__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407a21)
  store %struct.Memory* %call_407a21, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %ecx	 RIP: 407a24	 Bytes: 3
  %loadMem_407a24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407a24 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407a24)
  store %struct.Memory* %call_407a24, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x48(%rbp)	 RIP: 407a27	 Bytes: 3
  %loadMem_407a27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407a27 = call %struct.Memory* @routine_movl__ecx__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407a27)
  store %struct.Memory* %call_407a27, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 407a2a	 Bytes: 4
  %loadMem_407a2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407a2a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407a2a)
  store %struct.Memory* %call_407a2a, %struct.Memory** %MEMORY

  ; Code: movl 0xfa50(%rax), %ecx	 RIP: 407a2e	 Bytes: 6
  %loadMem_407a2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407a2e = call %struct.Memory* @routine_movl_0xfa50__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407a2e)
  store %struct.Memory* %call_407a2e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 407a34	 Bytes: 3
  %loadMem_407a34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407a34 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407a34)
  store %struct.Memory* %call_407a34, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x4c(%rbp)	 RIP: 407a37	 Bytes: 3
  %loadMem_407a37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407a37 = call %struct.Memory* @routine_movl__ecx__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407a37)
  store %struct.Memory* %call_407a37, %struct.Memory** %MEMORY

  ; Code: .L_407a3a:	 RIP: 407a3a	 Bytes: 0
  br label %block_.L_407a3a
block_.L_407a3a:

  ; Code: cmpl $0x0, -0x20(%rbp)	 RIP: 407a3a	 Bytes: 4
  %loadMem_407a3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407a3a = call %struct.Memory* @routine_cmpl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407a3a)
  store %struct.Memory* %call_407a3a, %struct.Memory** %MEMORY

  ; Code: jle .L_407b0c	 RIP: 407a3e	 Bytes: 6
  %loadMem_407a3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407a3e = call %struct.Memory* @routine_jle_.L_407b0c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407a3e, i8* %BRANCH_TAKEN, i64 206, i64 6, i64 6)
  store %struct.Memory* %call_407a3e, %struct.Memory** %MEMORY

  %loadBr_407a3e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_407a3e = icmp eq i8 %loadBr_407a3e, 1
  br i1 %cmpBr_407a3e, label %block_.L_407b0c, label %block_407a44

block_407a44:
  ; Code: jmpq .L_407a49	 RIP: 407a44	 Bytes: 5
  %loadMem_407a44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407a44 = call %struct.Memory* @routine_jmpq_.L_407a49(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407a44, i64 5, i64 5)
  store %struct.Memory* %call_407a44, %struct.Memory** %MEMORY

  br label %block_.L_407a49

  ; Code: .L_407a49:	 RIP: 407a49	 Bytes: 0
block_.L_407a49:

  ; Code: cmpl $0x0, -0x44(%rbp)	 RIP: 407a49	 Bytes: 4
  %loadMem_407a49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407a49 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407a49)
  store %struct.Memory* %call_407a49, %struct.Memory** %MEMORY

  ; Code: jne .L_407a58	 RIP: 407a4d	 Bytes: 6
  %loadMem_407a4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407a4d = call %struct.Memory* @routine_jne_.L_407a58(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407a4d, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_407a4d, %struct.Memory** %MEMORY

  %loadBr_407a4d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_407a4d = icmp eq i8 %loadBr_407a4d, 1
  br i1 %cmpBr_407a4d, label %block_.L_407a58, label %block_407a53

block_407a53:
  ; Code: jmpq .L_407cd1	 RIP: 407a53	 Bytes: 5
  %loadMem_407a53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407a53 = call %struct.Memory* @routine_jmpq_.L_407cd1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407a53, i64 638, i64 5)
  store %struct.Memory* %call_407a53, %struct.Memory** %MEMORY

  br label %block_.L_407cd1

  ; Code: .L_407a58:	 RIP: 407a58	 Bytes: 0
block_.L_407a58:

  ; Code: cmpl $0x1, -0x20(%rbp)	 RIP: 407a58	 Bytes: 4
  %loadMem_407a58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407a58 = call %struct.Memory* @routine_cmpl__0x1__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407a58)
  store %struct.Memory* %call_407a58, %struct.Memory** %MEMORY

  ; Code: jne .L_407a67	 RIP: 407a5c	 Bytes: 6
  %loadMem_407a5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407a5c = call %struct.Memory* @routine_jne_.L_407a67(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407a5c, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_407a5c, %struct.Memory** %MEMORY

  %loadBr_407a5c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_407a5c = icmp eq i8 %loadBr_407a5c, 1
  br i1 %cmpBr_407a5c, label %block_.L_407a67, label %block_407a62

block_407a62:
  ; Code: jmpq .L_407ab3	 RIP: 407a62	 Bytes: 5
  %loadMem_407a62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407a62 = call %struct.Memory* @routine_jmpq_.L_407ab3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407a62, i64 81, i64 5)
  store %struct.Memory* %call_407a62, %struct.Memory** %MEMORY

  br label %block_.L_407ab3

  ; Code: .L_407a67:	 RIP: 407a67	 Bytes: 0
block_.L_407a67:

  ; Code: movb -0x19(%rbp), %al	 RIP: 407a67	 Bytes: 3
  %loadMem_407a67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407a67 = call %struct.Memory* @routine_movb_MINUS0x19__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407a67)
  store %struct.Memory* %call_407a67, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 407a6a	 Bytes: 4
  %loadMem_407a6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407a6a = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407a6a)
  store %struct.Memory* %call_407a6a, %struct.Memory** %MEMORY

  ; Code: movb %al, (%rcx)	 RIP: 407a6e	 Bytes: 2
  %loadMem_407a6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407a6e = call %struct.Memory* @routine_movb__al____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407a6e)
  store %struct.Memory* %call_407a6e, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 407a70	 Bytes: 3
  %loadMem_407a70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407a70 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407a70)
  store %struct.Memory* %call_407a70, %struct.Memory** %MEMORY

  ; Code: shll $0x8, %edx	 RIP: 407a73	 Bytes: 3
  %loadMem_407a73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407a73 = call %struct.Memory* @routine_shll__0x8___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407a73)
  store %struct.Memory* %call_407a73, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %esi	 RIP: 407a76	 Bytes: 3
  %loadMem_407a76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407a76 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407a76)
  store %struct.Memory* %call_407a76, %struct.Memory** %MEMORY

  ; Code: shrl $0x18, %esi	 RIP: 407a79	 Bytes: 3
  %loadMem_407a79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407a79 = call %struct.Memory* @routine_shrl__0x18___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407a79)
  store %struct.Memory* %call_407a79, %struct.Memory** %MEMORY

  ; Code: movzbl -0x19(%rbp), %edi	 RIP: 407a7c	 Bytes: 4
  %loadMem_407a7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407a7c = call %struct.Memory* @routine_movzbl_MINUS0x19__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407a7c)
  store %struct.Memory* %call_407a7c, %struct.Memory** %MEMORY

  ; Code: xorl %edi, %esi	 RIP: 407a80	 Bytes: 2
  %loadMem_407a80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407a80 = call %struct.Memory* @routine_xorl__edi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407a80)
  store %struct.Memory* %call_407a80, %struct.Memory** %MEMORY

  ; Code: movl %esi, %esi	 RIP: 407a82	 Bytes: 2
  %loadMem_407a82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407a82 = call %struct.Memory* @routine_movl__esi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407a82)
  store %struct.Memory* %call_407a82, %struct.Memory** %MEMORY

  ; Code: movl %esi, %ecx	 RIP: 407a84	 Bytes: 2
  %loadMem_407a84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407a84 = call %struct.Memory* @routine_movl__esi___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407a84)
  store %struct.Memory* %call_407a84, %struct.Memory** %MEMORY

  ; Code: xorl 0x618170(,%rcx,4), %edx	 RIP: 407a86	 Bytes: 7
  %loadMem_407a86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407a86 = call %struct.Memory* @routine_xorl_0x618170___rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407a86)
  store %struct.Memory* %call_407a86, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x18(%rbp)	 RIP: 407a8d	 Bytes: 3
  %loadMem_407a8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407a8d = call %struct.Memory* @routine_movl__edx__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407a8d)
  store %struct.Memory* %call_407a8d, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %edx	 RIP: 407a90	 Bytes: 3
  %loadMem_407a90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407a90 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407a90)
  store %struct.Memory* %call_407a90, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %edx	 RIP: 407a93	 Bytes: 3
  %loadMem_407a93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407a93 = call %struct.Memory* @routine_addl__0xffffffff___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407a93)
  store %struct.Memory* %call_407a93, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x20(%rbp)	 RIP: 407a96	 Bytes: 3
  %loadMem_407a96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407a96 = call %struct.Memory* @routine_movl__edx__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407a96)
  store %struct.Memory* %call_407a96, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 407a99	 Bytes: 4
  %loadMem_407a99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407a99 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407a99)
  store %struct.Memory* %call_407a99, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rcx	 RIP: 407a9d	 Bytes: 4
  %loadMem_407a9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407a9d = call %struct.Memory* @routine_addq__0x1___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407a9d)
  store %struct.Memory* %call_407a9d, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x40(%rbp)	 RIP: 407aa1	 Bytes: 4
  %loadMem_407aa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407aa1 = call %struct.Memory* @routine_movq__rcx__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407aa1)
  store %struct.Memory* %call_407aa1, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %edx	 RIP: 407aa5	 Bytes: 3
  %loadMem_407aa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407aa5 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407aa5)
  store %struct.Memory* %call_407aa5, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %edx	 RIP: 407aa8	 Bytes: 3
  %loadMem_407aa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407aa8 = call %struct.Memory* @routine_addl__0xffffffff___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407aa8)
  store %struct.Memory* %call_407aa8, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x44(%rbp)	 RIP: 407aab	 Bytes: 3
  %loadMem_407aab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407aab = call %struct.Memory* @routine_movl__edx__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407aab)
  store %struct.Memory* %call_407aab, %struct.Memory** %MEMORY

  ; Code: jmpq .L_407a49	 RIP: 407aae	 Bytes: 5
  %loadMem_407aae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407aae = call %struct.Memory* @routine_jmpq_.L_407a49(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407aae, i64 -101, i64 5)
  store %struct.Memory* %call_407aae, %struct.Memory** %MEMORY

  br label %block_.L_407a49

  ; Code: .L_407ab3:	 RIP: 407ab3	 Bytes: 0
block_.L_407ab3:

  ; Code: jmpq .L_407ab8	 RIP: 407ab3	 Bytes: 5
  %loadMem_407ab3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407ab3 = call %struct.Memory* @routine_jmpq_.L_407ab8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407ab3, i64 5, i64 5)
  store %struct.Memory* %call_407ab3, %struct.Memory** %MEMORY

  br label %block_.L_407ab8

  ; Code: .L_407ab8:	 RIP: 407ab8	 Bytes: 0
block_.L_407ab8:

  ; Code: cmpl $0x0, -0x44(%rbp)	 RIP: 407ab8	 Bytes: 4
  %loadMem_407ab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407ab8 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407ab8)
  store %struct.Memory* %call_407ab8, %struct.Memory** %MEMORY

  ; Code: jne .L_407ace	 RIP: 407abc	 Bytes: 6
  %loadMem_407abc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407abc = call %struct.Memory* @routine_jne_.L_407ace(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407abc, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_407abc, %struct.Memory** %MEMORY

  %loadBr_407abc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_407abc = icmp eq i8 %loadBr_407abc, 1
  br i1 %cmpBr_407abc, label %block_.L_407ace, label %block_407ac2

block_407ac2:
  ; Code: movl $0x1, -0x20(%rbp)	 RIP: 407ac2	 Bytes: 7
  %loadMem_407ac2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407ac2 = call %struct.Memory* @routine_movl__0x1__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407ac2)
  store %struct.Memory* %call_407ac2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_407cd1	 RIP: 407ac9	 Bytes: 5
  %loadMem_407ac9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407ac9 = call %struct.Memory* @routine_jmpq_.L_407cd1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407ac9, i64 520, i64 5)
  store %struct.Memory* %call_407ac9, %struct.Memory** %MEMORY

  br label %block_.L_407cd1

  ; Code: .L_407ace:	 RIP: 407ace	 Bytes: 0
block_.L_407ace:

  ; Code: movb -0x19(%rbp), %al	 RIP: 407ace	 Bytes: 3
  %loadMem_407ace = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407ace = call %struct.Memory* @routine_movb_MINUS0x19__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407ace)
  store %struct.Memory* %call_407ace, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 407ad1	 Bytes: 4
  %loadMem_407ad1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407ad1 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407ad1)
  store %struct.Memory* %call_407ad1, %struct.Memory** %MEMORY

  ; Code: movb %al, (%rcx)	 RIP: 407ad5	 Bytes: 2
  %loadMem_407ad5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407ad5 = call %struct.Memory* @routine_movb__al____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407ad5)
  store %struct.Memory* %call_407ad5, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 407ad7	 Bytes: 3
  %loadMem_407ad7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407ad7 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407ad7)
  store %struct.Memory* %call_407ad7, %struct.Memory** %MEMORY

  ; Code: shll $0x8, %edx	 RIP: 407ada	 Bytes: 3
  %loadMem_407ada = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407ada = call %struct.Memory* @routine_shll__0x8___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407ada)
  store %struct.Memory* %call_407ada, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %esi	 RIP: 407add	 Bytes: 3
  %loadMem_407add = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407add = call %struct.Memory* @routine_movl_MINUS0x18__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407add)
  store %struct.Memory* %call_407add, %struct.Memory** %MEMORY

  ; Code: shrl $0x18, %esi	 RIP: 407ae0	 Bytes: 3
  %loadMem_407ae0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407ae0 = call %struct.Memory* @routine_shrl__0x18___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407ae0)
  store %struct.Memory* %call_407ae0, %struct.Memory** %MEMORY

  ; Code: movzbl -0x19(%rbp), %edi	 RIP: 407ae3	 Bytes: 4
  %loadMem_407ae3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407ae3 = call %struct.Memory* @routine_movzbl_MINUS0x19__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407ae3)
  store %struct.Memory* %call_407ae3, %struct.Memory** %MEMORY

  ; Code: xorl %edi, %esi	 RIP: 407ae7	 Bytes: 2
  %loadMem_407ae7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407ae7 = call %struct.Memory* @routine_xorl__edi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407ae7)
  store %struct.Memory* %call_407ae7, %struct.Memory** %MEMORY

  ; Code: movl %esi, %esi	 RIP: 407ae9	 Bytes: 2
  %loadMem_407ae9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407ae9 = call %struct.Memory* @routine_movl__esi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407ae9)
  store %struct.Memory* %call_407ae9, %struct.Memory** %MEMORY

  ; Code: movl %esi, %ecx	 RIP: 407aeb	 Bytes: 2
  %loadMem_407aeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407aeb = call %struct.Memory* @routine_movl__esi___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407aeb)
  store %struct.Memory* %call_407aeb, %struct.Memory** %MEMORY

  ; Code: xorl 0x618170(,%rcx,4), %edx	 RIP: 407aed	 Bytes: 7
  %loadMem_407aed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407aed = call %struct.Memory* @routine_xorl_0x618170___rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407aed)
  store %struct.Memory* %call_407aed, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x18(%rbp)	 RIP: 407af4	 Bytes: 3
  %loadMem_407af4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407af4 = call %struct.Memory* @routine_movl__edx__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407af4)
  store %struct.Memory* %call_407af4, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 407af7	 Bytes: 4
  %loadMem_407af7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407af7 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407af7)
  store %struct.Memory* %call_407af7, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rcx	 RIP: 407afb	 Bytes: 4
  %loadMem_407afb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407afb = call %struct.Memory* @routine_addq__0x1___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407afb)
  store %struct.Memory* %call_407afb, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x40(%rbp)	 RIP: 407aff	 Bytes: 4
  %loadMem_407aff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407aff = call %struct.Memory* @routine_movq__rcx__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407aff)
  store %struct.Memory* %call_407aff, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %edx	 RIP: 407b03	 Bytes: 3
  %loadMem_407b03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407b03 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407b03)
  store %struct.Memory* %call_407b03, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %edx	 RIP: 407b06	 Bytes: 3
  %loadMem_407b06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407b06 = call %struct.Memory* @routine_addl__0xffffffff___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407b06)
  store %struct.Memory* %call_407b06, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x44(%rbp)	 RIP: 407b09	 Bytes: 3
  %loadMem_407b09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407b09 = call %struct.Memory* @routine_movl__edx__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407b09)
  store %struct.Memory* %call_407b09, %struct.Memory** %MEMORY

  ; Code: .L_407b0c:	 RIP: 407b0c	 Bytes: 0
  br label %block_.L_407b0c
block_.L_407b0c:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 407b0c	 Bytes: 3
  %loadMem_407b0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407b0c = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407b0c)
  store %struct.Memory* %call_407b0c, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4c(%rbp), %eax	 RIP: 407b0f	 Bytes: 3
  %loadMem_407b0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407b0f = call %struct.Memory* @routine_cmpl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407b0f)
  store %struct.Memory* %call_407b0f, %struct.Memory** %MEMORY

  ; Code: jle .L_407b21	 RIP: 407b12	 Bytes: 6
  %loadMem_407b12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407b12 = call %struct.Memory* @routine_jle_.L_407b21(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407b12, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_407b12, %struct.Memory** %MEMORY

  %loadBr_407b12 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_407b12 = icmp eq i8 %loadBr_407b12, 1
  br i1 %cmpBr_407b12, label %block_.L_407b21, label %block_407b18

block_407b18:
  ; Code: movb $0x1, -0x1(%rbp)	 RIP: 407b18	 Bytes: 4
  %loadMem_407b18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407b18 = call %struct.Memory* @routine_movb__0x1__MINUS0x1__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407b18)
  store %struct.Memory* %call_407b18, %struct.Memory** %MEMORY

  ; Code: jmpq .L_407d85	 RIP: 407b1c	 Bytes: 5
  %loadMem_407b1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407b1c = call %struct.Memory* @routine_jmpq_.L_407d85(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407b1c, i64 617, i64 5)
  store %struct.Memory* %call_407b1c, %struct.Memory** %MEMORY

  br label %block_.L_407d85

  ; Code: .L_407b21:	 RIP: 407b21	 Bytes: 0
block_.L_407b21:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 407b21	 Bytes: 3
  %loadMem_407b21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407b21 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407b21)
  store %struct.Memory* %call_407b21, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4c(%rbp), %eax	 RIP: 407b24	 Bytes: 3
  %loadMem_407b24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407b24 = call %struct.Memory* @routine_cmpl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407b24)
  store %struct.Memory* %call_407b24, %struct.Memory** %MEMORY

  ; Code: jne .L_407b39	 RIP: 407b27	 Bytes: 6
  %loadMem_407b27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407b27 = call %struct.Memory* @routine_jne_.L_407b39(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407b27, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_407b27, %struct.Memory** %MEMORY

  %loadBr_407b27 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_407b27 = icmp eq i8 %loadBr_407b27, 1
  br i1 %cmpBr_407b27, label %block_.L_407b39, label %block_407b2d

block_407b2d:
  ; Code: movl $0x0, -0x20(%rbp)	 RIP: 407b2d	 Bytes: 7
  %loadMem_407b2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407b2d = call %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407b2d)
  store %struct.Memory* %call_407b2d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_407cd1	 RIP: 407b34	 Bytes: 5
  %loadMem_407b34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407b34 = call %struct.Memory* @routine_jmpq_.L_407cd1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407b34, i64 413, i64 5)
  store %struct.Memory* %call_407b34, %struct.Memory** %MEMORY

  br label %block_.L_407cd1

  ; Code: .L_407b39:	 RIP: 407b39	 Bytes: 0
block_.L_407b39:

  ; Code: movl -0x28(%rbp), %eax	 RIP: 407b39	 Bytes: 3
  %loadMem_407b39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407b39 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407b39)
  store %struct.Memory* %call_407b39, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 407b3c	 Bytes: 2
  %loadMem_407b3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407b3c = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407b3c)
  store %struct.Memory* %call_407b3c, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x19(%rbp)	 RIP: 407b3e	 Bytes: 3
  %loadMem_407b3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407b3e = call %struct.Memory* @routine_movb__cl__MINUS0x19__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407b3e)
  store %struct.Memory* %call_407b3e, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rdx	 RIP: 407b41	 Bytes: 4
  %loadMem_407b41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407b41 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407b41)
  store %struct.Memory* %call_407b41, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %eax	 RIP: 407b45	 Bytes: 3
  %loadMem_407b45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407b45 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407b45)
  store %struct.Memory* %call_407b45, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 407b48	 Bytes: 2
  %loadMem_407b48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407b48 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407b48)
  store %struct.Memory* %call_407b48, %struct.Memory** %MEMORY

  ; Code: movl (%rdx,%rsi,4), %eax	 RIP: 407b4a	 Bytes: 3
  %loadMem_407b4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407b4a = call %struct.Memory* @routine_movl___rdx__rsi_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407b4a)
  store %struct.Memory* %call_407b4a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x34(%rbp)	 RIP: 407b4d	 Bytes: 3
  %loadMem_407b4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407b4d = call %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407b4d)
  store %struct.Memory* %call_407b4d, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %eax	 RIP: 407b50	 Bytes: 3
  %loadMem_407b50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407b50 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407b50)
  store %struct.Memory* %call_407b50, %struct.Memory** %MEMORY

  ; Code: andl $0xff, %eax	 RIP: 407b53	 Bytes: 5
  %loadMem_407b53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407b53 = call %struct.Memory* @routine_andl__0xff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407b53)
  store %struct.Memory* %call_407b53, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 407b58	 Bytes: 2
  %loadMem_407b58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407b58 = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407b58)
  store %struct.Memory* %call_407b58, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x11(%rbp)	 RIP: 407b5a	 Bytes: 3
  %loadMem_407b5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407b5a = call %struct.Memory* @routine_movb__cl__MINUS0x11__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407b5a)
  store %struct.Memory* %call_407b5a, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %eax	 RIP: 407b5d	 Bytes: 3
  %loadMem_407b5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407b5d = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407b5d)
  store %struct.Memory* %call_407b5d, %struct.Memory** %MEMORY

  ; Code: shrl $0x8, %eax	 RIP: 407b60	 Bytes: 3
  %loadMem_407b60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407b60 = call %struct.Memory* @routine_shrl__0x8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407b60)
  store %struct.Memory* %call_407b60, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x34(%rbp)	 RIP: 407b63	 Bytes: 3
  %loadMem_407b63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407b63 = call %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407b63)
  store %struct.Memory* %call_407b63, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 407b66	 Bytes: 3
  %loadMem_407b66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407b66 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407b66)
  store %struct.Memory* %call_407b66, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 407b69	 Bytes: 3
  %loadMem_407b69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407b69 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407b69)
  store %struct.Memory* %call_407b69, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 407b6c	 Bytes: 3
  %loadMem_407b6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407b6c = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407b6c)
  store %struct.Memory* %call_407b6c, %struct.Memory** %MEMORY

  ; Code: movzbl -0x11(%rbp), %eax	 RIP: 407b6f	 Bytes: 4
  %loadMem_407b6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407b6f = call %struct.Memory* @routine_movzbl_MINUS0x11__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407b6f)
  store %struct.Memory* %call_407b6f, %struct.Memory** %MEMORY

  ; Code: cmpl -0x28(%rbp), %eax	 RIP: 407b73	 Bytes: 3
  %loadMem_407b73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407b73 = call %struct.Memory* @routine_cmpl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407b73)
  store %struct.Memory* %call_407b73, %struct.Memory** %MEMORY

  ; Code: je .L_407b88	 RIP: 407b76	 Bytes: 6
  %loadMem_407b76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407b76 = call %struct.Memory* @routine_je_.L_407b88(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407b76, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_407b76, %struct.Memory** %MEMORY

  %loadBr_407b76 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_407b76 = icmp eq i8 %loadBr_407b76, 1
  br i1 %cmpBr_407b76, label %block_.L_407b88, label %block_407b7c

block_407b7c:
  ; Code: movzbl -0x11(%rbp), %eax	 RIP: 407b7c	 Bytes: 4
  %loadMem_407b7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407b7c = call %struct.Memory* @routine_movzbl_MINUS0x11__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407b7c)
  store %struct.Memory* %call_407b7c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 407b80	 Bytes: 3
  %loadMem_407b80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407b80 = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407b80)
  store %struct.Memory* %call_407b80, %struct.Memory** %MEMORY

  ; Code: jmpq .L_407ab8	 RIP: 407b83	 Bytes: 5
  %loadMem_407b83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407b83 = call %struct.Memory* @routine_jmpq_.L_407ab8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407b83, i64 -203, i64 5)
  store %struct.Memory* %call_407b83, %struct.Memory** %MEMORY

  br label %block_.L_407ab8

  ; Code: .L_407b88:	 RIP: 407b88	 Bytes: 0
block_.L_407b88:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 407b88	 Bytes: 3
  %loadMem_407b88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407b88 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407b88)
  store %struct.Memory* %call_407b88, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4c(%rbp), %eax	 RIP: 407b8b	 Bytes: 3
  %loadMem_407b8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407b8b = call %struct.Memory* @routine_cmpl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407b8b)
  store %struct.Memory* %call_407b8b, %struct.Memory** %MEMORY

  ; Code: jne .L_407b99	 RIP: 407b8e	 Bytes: 6
  %loadMem_407b8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407b8e = call %struct.Memory* @routine_jne_.L_407b99(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407b8e, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_407b8e, %struct.Memory** %MEMORY

  %loadBr_407b8e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_407b8e = icmp eq i8 %loadBr_407b8e, 1
  br i1 %cmpBr_407b8e, label %block_.L_407b99, label %block_407b94

block_407b94:
  ; Code: jmpq .L_407ab8	 RIP: 407b94	 Bytes: 5
  %loadMem_407b94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407b94 = call %struct.Memory* @routine_jmpq_.L_407ab8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407b94, i64 -220, i64 5)
  store %struct.Memory* %call_407b94, %struct.Memory** %MEMORY

  br label %block_.L_407ab8

  ; Code: .L_407b99:	 RIP: 407b99	 Bytes: 0
block_.L_407b99:

  ; Code: movl $0x2, -0x20(%rbp)	 RIP: 407b99	 Bytes: 7
  %loadMem_407b99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407b99 = call %struct.Memory* @routine_movl__0x2__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407b99)
  store %struct.Memory* %call_407b99, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 407ba0	 Bytes: 4
  %loadMem_407ba0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407ba0 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407ba0)
  store %struct.Memory* %call_407ba0, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 407ba4	 Bytes: 3
  %loadMem_407ba4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407ba4 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407ba4)
  store %struct.Memory* %call_407ba4, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 407ba7	 Bytes: 2
  %loadMem_407ba7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407ba7 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407ba7)
  store %struct.Memory* %call_407ba7, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rdx,4), %ecx	 RIP: 407ba9	 Bytes: 3
  %loadMem_407ba9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407ba9 = call %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407ba9)
  store %struct.Memory* %call_407ba9, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x34(%rbp)	 RIP: 407bac	 Bytes: 3
  %loadMem_407bac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407bac = call %struct.Memory* @routine_movl__ecx__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407bac)
  store %struct.Memory* %call_407bac, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 407baf	 Bytes: 3
  %loadMem_407baf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407baf = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407baf)
  store %struct.Memory* %call_407baf, %struct.Memory** %MEMORY

  ; Code: andl $0xff, %ecx	 RIP: 407bb2	 Bytes: 6
  %loadMem_407bb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407bb2 = call %struct.Memory* @routine_andl__0xff___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407bb2)
  store %struct.Memory* %call_407bb2, %struct.Memory** %MEMORY

  ; Code: movb %cl, %sil	 RIP: 407bb8	 Bytes: 3
  %loadMem_407bb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407bb8 = call %struct.Memory* @routine_movb__cl___sil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407bb8)
  store %struct.Memory* %call_407bb8, %struct.Memory** %MEMORY

  ; Code: movb %sil, -0x11(%rbp)	 RIP: 407bbb	 Bytes: 4
  %loadMem_407bbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407bbb = call %struct.Memory* @routine_movb__sil__MINUS0x11__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407bbb)
  store %struct.Memory* %call_407bbb, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 407bbf	 Bytes: 3
  %loadMem_407bbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407bbf = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407bbf)
  store %struct.Memory* %call_407bbf, %struct.Memory** %MEMORY

  ; Code: shrl $0x8, %ecx	 RIP: 407bc2	 Bytes: 3
  %loadMem_407bc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407bc2 = call %struct.Memory* @routine_shrl__0x8___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407bc2)
  store %struct.Memory* %call_407bc2, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x34(%rbp)	 RIP: 407bc5	 Bytes: 3
  %loadMem_407bc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407bc5 = call %struct.Memory* @routine_movl__ecx__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407bc5)
  store %struct.Memory* %call_407bc5, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 407bc8	 Bytes: 3
  %loadMem_407bc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407bc8 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407bc8)
  store %struct.Memory* %call_407bc8, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 407bcb	 Bytes: 3
  %loadMem_407bcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407bcb = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407bcb)
  store %struct.Memory* %call_407bcb, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x24(%rbp)	 RIP: 407bce	 Bytes: 3
  %loadMem_407bce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407bce = call %struct.Memory* @routine_movl__ecx__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407bce)
  store %struct.Memory* %call_407bce, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 407bd1	 Bytes: 3
  %loadMem_407bd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407bd1 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407bd1)
  store %struct.Memory* %call_407bd1, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4c(%rbp), %ecx	 RIP: 407bd4	 Bytes: 3
  %loadMem_407bd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407bd4 = call %struct.Memory* @routine_cmpl_MINUS0x4c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407bd4)
  store %struct.Memory* %call_407bd4, %struct.Memory** %MEMORY

  ; Code: jne .L_407be2	 RIP: 407bd7	 Bytes: 6
  %loadMem_407bd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407bd7 = call %struct.Memory* @routine_jne_.L_407be2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407bd7, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_407bd7, %struct.Memory** %MEMORY

  %loadBr_407bd7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_407bd7 = icmp eq i8 %loadBr_407bd7, 1
  br i1 %cmpBr_407bd7, label %block_.L_407be2, label %block_407bdd

block_407bdd:
  ; Code: jmpq .L_407a3a	 RIP: 407bdd	 Bytes: 5
  %loadMem_407bdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407bdd = call %struct.Memory* @routine_jmpq_.L_407a3a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407bdd, i64 -419, i64 5)
  store %struct.Memory* %call_407bdd, %struct.Memory** %MEMORY

  br label %block_.L_407a3a

  ; Code: .L_407be2:	 RIP: 407be2	 Bytes: 0
block_.L_407be2:

  ; Code: movzbl -0x11(%rbp), %eax	 RIP: 407be2	 Bytes: 4
  %loadMem_407be2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407be2 = call %struct.Memory* @routine_movzbl_MINUS0x11__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407be2)
  store %struct.Memory* %call_407be2, %struct.Memory** %MEMORY

  ; Code: cmpl -0x28(%rbp), %eax	 RIP: 407be6	 Bytes: 3
  %loadMem_407be6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407be6 = call %struct.Memory* @routine_cmpl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407be6)
  store %struct.Memory* %call_407be6, %struct.Memory** %MEMORY

  ; Code: je .L_407bfb	 RIP: 407be9	 Bytes: 6
  %loadMem_407be9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407be9 = call %struct.Memory* @routine_je_.L_407bfb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407be9, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_407be9, %struct.Memory** %MEMORY

  %loadBr_407be9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_407be9 = icmp eq i8 %loadBr_407be9, 1
  br i1 %cmpBr_407be9, label %block_.L_407bfb, label %block_407bef

block_407bef:
  ; Code: movzbl -0x11(%rbp), %eax	 RIP: 407bef	 Bytes: 4
  %loadMem_407bef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407bef = call %struct.Memory* @routine_movzbl_MINUS0x11__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407bef)
  store %struct.Memory* %call_407bef, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 407bf3	 Bytes: 3
  %loadMem_407bf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407bf3 = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407bf3)
  store %struct.Memory* %call_407bf3, %struct.Memory** %MEMORY

  ; Code: jmpq .L_407a3a	 RIP: 407bf6	 Bytes: 5
  %loadMem_407bf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407bf6 = call %struct.Memory* @routine_jmpq_.L_407a3a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407bf6, i64 -444, i64 5)
  store %struct.Memory* %call_407bf6, %struct.Memory** %MEMORY

  br label %block_.L_407a3a

  ; Code: .L_407bfb:	 RIP: 407bfb	 Bytes: 0
block_.L_407bfb:

  ; Code: movl $0x3, -0x20(%rbp)	 RIP: 407bfb	 Bytes: 7
  %loadMem_407bfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407bfb = call %struct.Memory* @routine_movl__0x3__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407bfb)
  store %struct.Memory* %call_407bfb, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 407c02	 Bytes: 4
  %loadMem_407c02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407c02 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407c02)
  store %struct.Memory* %call_407c02, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 407c06	 Bytes: 3
  %loadMem_407c06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407c06 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407c06)
  store %struct.Memory* %call_407c06, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 407c09	 Bytes: 2
  %loadMem_407c09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407c09 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407c09)
  store %struct.Memory* %call_407c09, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rdx,4), %ecx	 RIP: 407c0b	 Bytes: 3
  %loadMem_407c0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407c0b = call %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407c0b)
  store %struct.Memory* %call_407c0b, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x34(%rbp)	 RIP: 407c0e	 Bytes: 3
  %loadMem_407c0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407c0e = call %struct.Memory* @routine_movl__ecx__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407c0e)
  store %struct.Memory* %call_407c0e, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 407c11	 Bytes: 3
  %loadMem_407c11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407c11 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407c11)
  store %struct.Memory* %call_407c11, %struct.Memory** %MEMORY

  ; Code: andl $0xff, %ecx	 RIP: 407c14	 Bytes: 6
  %loadMem_407c14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407c14 = call %struct.Memory* @routine_andl__0xff___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407c14)
  store %struct.Memory* %call_407c14, %struct.Memory** %MEMORY

  ; Code: movb %cl, %sil	 RIP: 407c1a	 Bytes: 3
  %loadMem_407c1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407c1a = call %struct.Memory* @routine_movb__cl___sil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407c1a)
  store %struct.Memory* %call_407c1a, %struct.Memory** %MEMORY

  ; Code: movb %sil, -0x11(%rbp)	 RIP: 407c1d	 Bytes: 4
  %loadMem_407c1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407c1d = call %struct.Memory* @routine_movb__sil__MINUS0x11__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407c1d)
  store %struct.Memory* %call_407c1d, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 407c21	 Bytes: 3
  %loadMem_407c21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407c21 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407c21)
  store %struct.Memory* %call_407c21, %struct.Memory** %MEMORY

  ; Code: shrl $0x8, %ecx	 RIP: 407c24	 Bytes: 3
  %loadMem_407c24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407c24 = call %struct.Memory* @routine_shrl__0x8___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407c24)
  store %struct.Memory* %call_407c24, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x34(%rbp)	 RIP: 407c27	 Bytes: 3
  %loadMem_407c27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407c27 = call %struct.Memory* @routine_movl__ecx__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407c27)
  store %struct.Memory* %call_407c27, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 407c2a	 Bytes: 3
  %loadMem_407c2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407c2a = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407c2a)
  store %struct.Memory* %call_407c2a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 407c2d	 Bytes: 3
  %loadMem_407c2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407c2d = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407c2d)
  store %struct.Memory* %call_407c2d, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x24(%rbp)	 RIP: 407c30	 Bytes: 3
  %loadMem_407c30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407c30 = call %struct.Memory* @routine_movl__ecx__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407c30)
  store %struct.Memory* %call_407c30, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 407c33	 Bytes: 3
  %loadMem_407c33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407c33 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407c33)
  store %struct.Memory* %call_407c33, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4c(%rbp), %ecx	 RIP: 407c36	 Bytes: 3
  %loadMem_407c36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407c36 = call %struct.Memory* @routine_cmpl_MINUS0x4c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407c36)
  store %struct.Memory* %call_407c36, %struct.Memory** %MEMORY

  ; Code: jne .L_407c44	 RIP: 407c39	 Bytes: 6
  %loadMem_407c39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407c39 = call %struct.Memory* @routine_jne_.L_407c44(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407c39, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_407c39, %struct.Memory** %MEMORY

  %loadBr_407c39 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_407c39 = icmp eq i8 %loadBr_407c39, 1
  br i1 %cmpBr_407c39, label %block_.L_407c44, label %block_407c3f

block_407c3f:
  ; Code: jmpq .L_407a3a	 RIP: 407c3f	 Bytes: 5
  %loadMem_407c3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407c3f = call %struct.Memory* @routine_jmpq_.L_407a3a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407c3f, i64 -517, i64 5)
  store %struct.Memory* %call_407c3f, %struct.Memory** %MEMORY

  br label %block_.L_407a3a

  ; Code: .L_407c44:	 RIP: 407c44	 Bytes: 0
block_.L_407c44:

  ; Code: movzbl -0x11(%rbp), %eax	 RIP: 407c44	 Bytes: 4
  %loadMem_407c44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407c44 = call %struct.Memory* @routine_movzbl_MINUS0x11__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407c44)
  store %struct.Memory* %call_407c44, %struct.Memory** %MEMORY

  ; Code: cmpl -0x28(%rbp), %eax	 RIP: 407c48	 Bytes: 3
  %loadMem_407c48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407c48 = call %struct.Memory* @routine_cmpl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407c48)
  store %struct.Memory* %call_407c48, %struct.Memory** %MEMORY

  ; Code: je .L_407c5d	 RIP: 407c4b	 Bytes: 6
  %loadMem_407c4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407c4b = call %struct.Memory* @routine_je_.L_407c5d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407c4b, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_407c4b, %struct.Memory** %MEMORY

  %loadBr_407c4b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_407c4b = icmp eq i8 %loadBr_407c4b, 1
  br i1 %cmpBr_407c4b, label %block_.L_407c5d, label %block_407c51

block_407c51:
  ; Code: movzbl -0x11(%rbp), %eax	 RIP: 407c51	 Bytes: 4
  %loadMem_407c51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407c51 = call %struct.Memory* @routine_movzbl_MINUS0x11__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407c51)
  store %struct.Memory* %call_407c51, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 407c55	 Bytes: 3
  %loadMem_407c55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407c55 = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407c55)
  store %struct.Memory* %call_407c55, %struct.Memory** %MEMORY

  ; Code: jmpq .L_407a3a	 RIP: 407c58	 Bytes: 5
  %loadMem_407c58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407c58 = call %struct.Memory* @routine_jmpq_.L_407a3a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407c58, i64 -542, i64 5)
  store %struct.Memory* %call_407c58, %struct.Memory** %MEMORY

  br label %block_.L_407a3a

  ; Code: .L_407c5d:	 RIP: 407c5d	 Bytes: 0
block_.L_407c5d:

  ; Code: movq -0x30(%rbp), %rax	 RIP: 407c5d	 Bytes: 4
  %loadMem_407c5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407c5d = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407c5d)
  store %struct.Memory* %call_407c5d, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 407c61	 Bytes: 3
  %loadMem_407c61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407c61 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407c61)
  store %struct.Memory* %call_407c61, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 407c64	 Bytes: 2
  %loadMem_407c64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407c64 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407c64)
  store %struct.Memory* %call_407c64, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rdx,4), %ecx	 RIP: 407c66	 Bytes: 3
  %loadMem_407c66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407c66 = call %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407c66)
  store %struct.Memory* %call_407c66, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x34(%rbp)	 RIP: 407c69	 Bytes: 3
  %loadMem_407c69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407c69 = call %struct.Memory* @routine_movl__ecx__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407c69)
  store %struct.Memory* %call_407c69, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 407c6c	 Bytes: 3
  %loadMem_407c6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407c6c = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407c6c)
  store %struct.Memory* %call_407c6c, %struct.Memory** %MEMORY

  ; Code: andl $0xff, %ecx	 RIP: 407c6f	 Bytes: 6
  %loadMem_407c6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407c6f = call %struct.Memory* @routine_andl__0xff___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407c6f)
  store %struct.Memory* %call_407c6f, %struct.Memory** %MEMORY

  ; Code: movb %cl, %sil	 RIP: 407c75	 Bytes: 3
  %loadMem_407c75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407c75 = call %struct.Memory* @routine_movb__cl___sil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407c75)
  store %struct.Memory* %call_407c75, %struct.Memory** %MEMORY

  ; Code: movb %sil, -0x11(%rbp)	 RIP: 407c78	 Bytes: 4
  %loadMem_407c78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407c78 = call %struct.Memory* @routine_movb__sil__MINUS0x11__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407c78)
  store %struct.Memory* %call_407c78, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 407c7c	 Bytes: 3
  %loadMem_407c7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407c7c = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407c7c)
  store %struct.Memory* %call_407c7c, %struct.Memory** %MEMORY

  ; Code: shrl $0x8, %ecx	 RIP: 407c7f	 Bytes: 3
  %loadMem_407c7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407c7f = call %struct.Memory* @routine_shrl__0x8___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407c7f)
  store %struct.Memory* %call_407c7f, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x34(%rbp)	 RIP: 407c82	 Bytes: 3
  %loadMem_407c82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407c82 = call %struct.Memory* @routine_movl__ecx__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407c82)
  store %struct.Memory* %call_407c82, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 407c85	 Bytes: 3
  %loadMem_407c85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407c85 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407c85)
  store %struct.Memory* %call_407c85, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 407c88	 Bytes: 3
  %loadMem_407c88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407c88 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407c88)
  store %struct.Memory* %call_407c88, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x24(%rbp)	 RIP: 407c8b	 Bytes: 3
  %loadMem_407c8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407c8b = call %struct.Memory* @routine_movl__ecx__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407c8b)
  store %struct.Memory* %call_407c8b, %struct.Memory** %MEMORY

  ; Code: movzbl -0x11(%rbp), %ecx	 RIP: 407c8e	 Bytes: 4
  %loadMem_407c8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407c8e = call %struct.Memory* @routine_movzbl_MINUS0x11__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407c8e)
  store %struct.Memory* %call_407c8e, %struct.Memory** %MEMORY

  ; Code: addl $0x4, %ecx	 RIP: 407c92	 Bytes: 3
  %loadMem_407c92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407c92 = call %struct.Memory* @routine_addl__0x4___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407c92)
  store %struct.Memory* %call_407c92, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x20(%rbp)	 RIP: 407c95	 Bytes: 3
  %loadMem_407c95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407c95 = call %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407c95)
  store %struct.Memory* %call_407c95, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 407c98	 Bytes: 4
  %loadMem_407c98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407c98 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407c98)
  store %struct.Memory* %call_407c98, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 407c9c	 Bytes: 3
  %loadMem_407c9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407c9c = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407c9c)
  store %struct.Memory* %call_407c9c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 407c9f	 Bytes: 2
  %loadMem_407c9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407c9f = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407c9f)
  store %struct.Memory* %call_407c9f, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rdx,4), %ecx	 RIP: 407ca1	 Bytes: 3
  %loadMem_407ca1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407ca1 = call %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407ca1)
  store %struct.Memory* %call_407ca1, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x34(%rbp)	 RIP: 407ca4	 Bytes: 3
  %loadMem_407ca4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407ca4 = call %struct.Memory* @routine_movl__ecx__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407ca4)
  store %struct.Memory* %call_407ca4, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 407ca7	 Bytes: 3
  %loadMem_407ca7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407ca7 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407ca7)
  store %struct.Memory* %call_407ca7, %struct.Memory** %MEMORY

  ; Code: andl $0xff, %ecx	 RIP: 407caa	 Bytes: 6
  %loadMem_407caa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407caa = call %struct.Memory* @routine_andl__0xff___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407caa)
  store %struct.Memory* %call_407caa, %struct.Memory** %MEMORY

  ; Code: movb %cl, %sil	 RIP: 407cb0	 Bytes: 3
  %loadMem_407cb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407cb0 = call %struct.Memory* @routine_movb__cl___sil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407cb0)
  store %struct.Memory* %call_407cb0, %struct.Memory** %MEMORY

  ; Code: movzbl %sil, %ecx	 RIP: 407cb3	 Bytes: 4
  %loadMem_407cb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407cb3 = call %struct.Memory* @routine_movzbl__sil___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407cb3)
  store %struct.Memory* %call_407cb3, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x28(%rbp)	 RIP: 407cb7	 Bytes: 3
  %loadMem_407cb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407cb7 = call %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407cb7)
  store %struct.Memory* %call_407cb7, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 407cba	 Bytes: 3
  %loadMem_407cba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407cba = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407cba)
  store %struct.Memory* %call_407cba, %struct.Memory** %MEMORY

  ; Code: shrl $0x8, %ecx	 RIP: 407cbd	 Bytes: 3
  %loadMem_407cbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407cbd = call %struct.Memory* @routine_shrl__0x8___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407cbd)
  store %struct.Memory* %call_407cbd, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x34(%rbp)	 RIP: 407cc0	 Bytes: 3
  %loadMem_407cc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407cc0 = call %struct.Memory* @routine_movl__ecx__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407cc0)
  store %struct.Memory* %call_407cc0, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 407cc3	 Bytes: 3
  %loadMem_407cc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407cc3 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407cc3)
  store %struct.Memory* %call_407cc3, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 407cc6	 Bytes: 3
  %loadMem_407cc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407cc6 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407cc6)
  store %struct.Memory* %call_407cc6, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x24(%rbp)	 RIP: 407cc9	 Bytes: 3
  %loadMem_407cc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407cc9 = call %struct.Memory* @routine_movl__ecx__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407cc9)
  store %struct.Memory* %call_407cc9, %struct.Memory** %MEMORY

  ; Code: jmpq .L_407a3a	 RIP: 407ccc	 Bytes: 5
  %loadMem_407ccc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407ccc = call %struct.Memory* @routine_jmpq_.L_407a3a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407ccc, i64 -658, i64 5)
  store %struct.Memory* %call_407ccc, %struct.Memory** %MEMORY

  br label %block_.L_407a3a

  ; Code: .L_407cd1:	 RIP: 407cd1	 Bytes: 0
block_.L_407cd1:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 407cd1	 Bytes: 4
  %loadMem_407cd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407cd1 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407cd1)
  store %struct.Memory* %call_407cd1, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 407cd5	 Bytes: 3
  %loadMem_407cd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407cd5 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407cd5)
  store %struct.Memory* %call_407cd5, %struct.Memory** %MEMORY

  ; Code: movl 0x24(%rax), %ecx	 RIP: 407cd8	 Bytes: 3
  %loadMem_407cd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407cd8 = call %struct.Memory* @routine_movl_0x24__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407cd8)
  store %struct.Memory* %call_407cd8, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x50(%rbp)	 RIP: 407cdb	 Bytes: 3
  %loadMem_407cdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407cdb = call %struct.Memory* @routine_movl__ecx__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407cdb)
  store %struct.Memory* %call_407cdb, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %ecx	 RIP: 407cde	 Bytes: 3
  %loadMem_407cde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407cde = call %struct.Memory* @routine_movl_MINUS0x48__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407cde)
  store %struct.Memory* %call_407cde, %struct.Memory** %MEMORY

  ; Code: subl -0x44(%rbp), %ecx	 RIP: 407ce1	 Bytes: 3
  %loadMem_407ce1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407ce1 = call %struct.Memory* @routine_subl_MINUS0x44__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407ce1)
  store %struct.Memory* %call_407ce1, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 407ce4	 Bytes: 4
  %loadMem_407ce4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407ce4 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407ce4)
  store %struct.Memory* %call_407ce4, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 407ce8	 Bytes: 3
  %loadMem_407ce8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407ce8 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407ce8)
  store %struct.Memory* %call_407ce8, %struct.Memory** %MEMORY

  ; Code: addl 0x24(%rax), %ecx	 RIP: 407ceb	 Bytes: 3
  %loadMem_407ceb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407ceb = call %struct.Memory* @routine_addl_0x24__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407ceb)
  store %struct.Memory* %call_407ceb, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x24(%rax)	 RIP: 407cee	 Bytes: 3
  %loadMem_407cee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407cee = call %struct.Memory* @routine_movl__ecx__0x24__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407cee)
  store %struct.Memory* %call_407cee, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 407cf1	 Bytes: 4
  %loadMem_407cf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407cf1 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407cf1)
  store %struct.Memory* %call_407cf1, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 407cf5	 Bytes: 3
  %loadMem_407cf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407cf5 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407cf5)
  store %struct.Memory* %call_407cf5, %struct.Memory** %MEMORY

  ; Code: movl 0x24(%rax), %ecx	 RIP: 407cf8	 Bytes: 3
  %loadMem_407cf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407cf8 = call %struct.Memory* @routine_movl_0x24__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407cf8)
  store %struct.Memory* %call_407cf8, %struct.Memory** %MEMORY

  ; Code: cmpl -0x50(%rbp), %ecx	 RIP: 407cfb	 Bytes: 3
  %loadMem_407cfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407cfb = call %struct.Memory* @routine_cmpl_MINUS0x50__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407cfb)
  store %struct.Memory* %call_407cfb, %struct.Memory** %MEMORY

  ; Code: jae .L_407d14	 RIP: 407cfe	 Bytes: 6
  %loadMem_407cfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407cfe = call %struct.Memory* @routine_jae_.L_407d14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407cfe, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_407cfe, %struct.Memory** %MEMORY

  %loadBr_407cfe = load i8, i8* %BRANCH_TAKEN
  %cmpBr_407cfe = icmp eq i8 %loadBr_407cfe, 1
  br i1 %cmpBr_407cfe, label %block_.L_407d14, label %block_407d04

block_407d04:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 407d04	 Bytes: 4
  %loadMem_407d04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407d04 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407d04)
  store %struct.Memory* %call_407d04, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 407d08	 Bytes: 3
  %loadMem_407d08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407d08 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407d08)
  store %struct.Memory* %call_407d08, %struct.Memory** %MEMORY

  ; Code: movl 0x28(%rax), %ecx	 RIP: 407d0b	 Bytes: 3
  %loadMem_407d0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407d0b = call %struct.Memory* @routine_movl_0x28__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407d0b)
  store %struct.Memory* %call_407d0b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 407d0e	 Bytes: 3
  %loadMem_407d0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407d0e = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407d0e)
  store %struct.Memory* %call_407d0e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x28(%rax)	 RIP: 407d11	 Bytes: 3
  %loadMem_407d11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407d11 = call %struct.Memory* @routine_movl__ecx__0x28__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407d11)
  store %struct.Memory* %call_407d11, %struct.Memory** %MEMORY

  ; Code: .L_407d14:	 RIP: 407d14	 Bytes: 0
  br label %block_.L_407d14
block_.L_407d14:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 407d14	 Bytes: 3
  %loadMem_407d14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407d14 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407d14)
  store %struct.Memory* %call_407d14, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 407d17	 Bytes: 4
  %loadMem_407d17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407d17 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407d17)
  store %struct.Memory* %call_407d17, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0xc70(%rcx)	 RIP: 407d1b	 Bytes: 6
  %loadMem_407d1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407d1b = call %struct.Memory* @routine_movl__eax__0xc70__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407d1b)
  store %struct.Memory* %call_407d1b, %struct.Memory** %MEMORY

  ; Code: movb -0x19(%rbp), %dl	 RIP: 407d21	 Bytes: 3
  %loadMem_407d21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407d21 = call %struct.Memory* @routine_movb_MINUS0x19__rbp____dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407d21)
  store %struct.Memory* %call_407d21, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 407d24	 Bytes: 4
  %loadMem_407d24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407d24 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407d24)
  store %struct.Memory* %call_407d24, %struct.Memory** %MEMORY

  ; Code: movb %dl, 0xc(%rcx)	 RIP: 407d28	 Bytes: 3
  %loadMem_407d28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407d28 = call %struct.Memory* @routine_movb__dl__0xc__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407d28)
  store %struct.Memory* %call_407d28, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 407d2b	 Bytes: 3
  %loadMem_407d2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407d2b = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407d2b)
  store %struct.Memory* %call_407d2b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 407d2e	 Bytes: 4
  %loadMem_407d2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407d2e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407d2e)
  store %struct.Memory* %call_407d2e, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x10(%rcx)	 RIP: 407d32	 Bytes: 3
  %loadMem_407d32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407d32 = call %struct.Memory* @routine_movl__eax__0x10__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407d32)
  store %struct.Memory* %call_407d32, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 407d35	 Bytes: 3
  %loadMem_407d35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407d35 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407d35)
  store %struct.Memory* %call_407d35, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 407d38	 Bytes: 4
  %loadMem_407d38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407d38 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407d38)
  store %struct.Memory* %call_407d38, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x444(%rcx)	 RIP: 407d3c	 Bytes: 6
  %loadMem_407d3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407d3c = call %struct.Memory* @routine_movl__eax__0x444__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407d3c)
  store %struct.Memory* %call_407d3c, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 407d42	 Bytes: 3
  %loadMem_407d42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407d42 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407d42)
  store %struct.Memory* %call_407d42, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 407d45	 Bytes: 4
  %loadMem_407d45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407d45 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407d45)
  store %struct.Memory* %call_407d45, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x40(%rcx)	 RIP: 407d49	 Bytes: 3
  %loadMem_407d49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407d49 = call %struct.Memory* @routine_movl__eax__0x40__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407d49)
  store %struct.Memory* %call_407d49, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rcx	 RIP: 407d4c	 Bytes: 4
  %loadMem_407d4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407d4c = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407d4c)
  store %struct.Memory* %call_407d4c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rsi	 RIP: 407d50	 Bytes: 4
  %loadMem_407d50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407d50 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407d50)
  store %struct.Memory* %call_407d50, %struct.Memory** %MEMORY

  ; Code: movq %rcx, 0xc50(%rsi)	 RIP: 407d54	 Bytes: 7
  %loadMem_407d54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407d54 = call %struct.Memory* @routine_movq__rcx__0xc50__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407d54)
  store %struct.Memory* %call_407d54, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %eax	 RIP: 407d5b	 Bytes: 3
  %loadMem_407d5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407d5b = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407d5b)
  store %struct.Memory* %call_407d5b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 407d5e	 Bytes: 4
  %loadMem_407d5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407d5e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407d5e)
  store %struct.Memory* %call_407d5e, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x3c(%rcx)	 RIP: 407d62	 Bytes: 3
  %loadMem_407d62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407d62 = call %struct.Memory* @routine_movl__eax__0x3c__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407d62)
  store %struct.Memory* %call_407d62, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 407d65	 Bytes: 4
  %loadMem_407d65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407d65 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407d65)
  store %struct.Memory* %call_407d65, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rsi	 RIP: 407d69	 Bytes: 4
  %loadMem_407d69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407d69 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407d69)
  store %struct.Memory* %call_407d69, %struct.Memory** %MEMORY

  ; Code: movq (%rsi), %rsi	 RIP: 407d6d	 Bytes: 3
  %loadMem_407d6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407d6d = call %struct.Memory* @routine_movq___rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407d6d)
  store %struct.Memory* %call_407d6d, %struct.Memory** %MEMORY

  ; Code: movq %rcx, 0x18(%rsi)	 RIP: 407d70	 Bytes: 4
  %loadMem_407d70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407d70 = call %struct.Memory* @routine_movq__rcx__0x18__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407d70)
  store %struct.Memory* %call_407d70, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %eax	 RIP: 407d74	 Bytes: 3
  %loadMem_407d74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407d74 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407d74)
  store %struct.Memory* %call_407d74, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 407d77	 Bytes: 4
  %loadMem_407d77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407d77 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407d77)
  store %struct.Memory* %call_407d77, %struct.Memory** %MEMORY

  ; Code: movq (%rcx), %rcx	 RIP: 407d7b	 Bytes: 3
  %loadMem_407d7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407d7b = call %struct.Memory* @routine_movq___rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407d7b)
  store %struct.Memory* %call_407d7b, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x20(%rcx)	 RIP: 407d7e	 Bytes: 3
  %loadMem_407d7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407d7e = call %struct.Memory* @routine_movl__eax__0x20__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407d7e)
  store %struct.Memory* %call_407d7e, %struct.Memory** %MEMORY

  ; Code: movb $0x0, -0x1(%rbp)	 RIP: 407d81	 Bytes: 4
  %loadMem_407d81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407d81 = call %struct.Memory* @routine_movb__0x0__MINUS0x1__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407d81)
  store %struct.Memory* %call_407d81, %struct.Memory** %MEMORY

  ; Code: .L_407d85:	 RIP: 407d85	 Bytes: 0
  br label %block_.L_407d85
block_.L_407d85:

  ; Code: movzbl -0x1(%rbp), %eax	 RIP: 407d85	 Bytes: 4
  %loadMem_407d85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407d85 = call %struct.Memory* @routine_movzbl_MINUS0x1__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407d85)
  store %struct.Memory* %call_407d85, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 407d89	 Bytes: 1
  %loadMem_407d89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407d89 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407d89)
  store %struct.Memory* %call_407d89, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 407d8a	 Bytes: 1
  %loadMem_407d8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407d8a = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407d8a)
  store %struct.Memory* %call_407d8a, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_407d8a
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4PUSHI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64) #0 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 13, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = add i64 %5, -8
  %7 = inttoptr i64 %6 to i64*
  store i64 %2, i64* %7
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_pushq__rbp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rsp___rbp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rdi__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 {
  %5 = inttoptr i64 %2 to i8*
  %6 = load i8, i8* %5
  %7 = trunc i64 %3 to i8
  %8 = sub i8 %6, %7
  %9 = icmp ult i8 %6, %7
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = zext i8 %8 to i32
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12) #22
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i8 %6, %7
  %19 = xor i8 %18, %8
  %20 = lshr i8 %19, 4
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i8 %8, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i8 %8, 7
  %27 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i8 %6, 7
  %29 = lshr i8 %7, 7
  %30 = xor i8 %28, %29
  %31 = xor i8 %26, %28
  %32 = add   i8 %31, %30
  %33 = icmp eq i8 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cmpb__0x0__0x14__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RDI
  %10 = add i64 %9, 20
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L2JZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 {
  %6 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %2, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %9 = icmp ne i8 %7, 0
  %10 = select i1 %9, i64 %3, i64 %4
  store i64 %10, i64* %8, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_je_.L_4079b7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_40735b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_407360(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_movq___rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 {
  %5 = inttoptr i64 %2 to i32*
  %6 = load i32, i32* %5
  %7 = trunc i64 %3 to i32
  %8 = sub i32 %6, %7
  %9 = icmp ult i32 %6, %7
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
  %18 = xor i32 %6, %7
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
  %30 = lshr i32 %6, 31
  %31 = lshr i32 %7, 31
  %32 = xor i32 %30, %31
  %33 = xor i32 %27, %30
  %34 = add   i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cmpl__0x0__0x20__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 32
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 {
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

define %struct.Memory* @routine_jne_.L_40737a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__0x0__MINUS0x1__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_407d85(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_cmpl__0x0__0x10__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 16
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_40738d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jmpq_.L_407440(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  store i8 %6, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb_0xc__rax____cl(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %CL, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__cl____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RAX
  %14 = load i8, i8* %CL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_0xc70__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 3184
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
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

define %struct.Memory* @routine_shll__0x8___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 8)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movl_0xc70__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 3184
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SHRI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = trunc i64 %4 to i5
  switch i5 %6, label %11 [
    i5 0, label %42
    i5 1, label %7
  ]

; <label>:7:                                      ; preds = %5
  %8 = trunc i64 %3 to i32
  %9 = lshr i32 %8, 31
  %10 = trunc i32 %9 to i8
  br label %19

; <label>:11:                                     ; preds = %5
  %12 = and i64 %4, 31
  %13 = add   i64 %12, 4294967295
  %14 = and i64 %3, 4294967295
  %15 = and i64 %13, 4294967295
  %16 = lshr i64 %14, %15
  %17 = icmp ne i8 0, 0
  %18 = zext i1 %17 to i8
  br label %19

; <label>:19:                                     ; preds = %11, %7
  %20 = phi i8 [ 0, %11 ], [ 0, %7 ]
  %21 = phi i64 [ %16, %11 ], [ %3, %7 ]
  %22 = phi i8 [ %18, %11 ], [ %10, %7 ]
  %23 = trunc i64 %21 to i8
  %24 = and i8 %23, 1
  %25 = lshr i64 %21, 1
  %26 = trunc i64 %25 to i32
  %27 = and i32 %26, 2147483647
  %28 = zext i32 %27 to i64
  store i64 %28, i64* %2, align 8
  %29 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %24, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  %31 = and i32 %26, 255
  %32 = tail call i32 @llvm.ctpop.i32(i32 %31) #22
  %33 = trunc i32 %32 to i8
  %34 = and i8 %33, 1
  %35 = xor i8 %34, 1
  store i8 %35, i8* %30, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %20, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %38 = icmp eq i32 %27, 0
  %39 = zext i1 %38 to i8
  store i8 %39, i8* %37, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 0, i8* %40, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %22, i8* %41, align 1
  br label %42

; <label>:42:                                     ; preds = %19, %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_shrl__0x18___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RSI
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHRI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 24)
  ret %struct.Memory* %12
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  %7 = zext i8 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movzbl_0xc__rax____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = xor i64 %4, %3
  %7 = trunc i64 %6 to i32
  %8 = and i64 %6, 4294967295
  store i64 %8, i64* %2, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %7, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10) #22
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = icmp eq i32 %7, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i32 %7, 31
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_xorl__edi___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = load i32, i32* %EDI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__esi___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__esi___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = trunc i64 %3 to i32
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7
  %9 = xor i32 %8, %6
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %2, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 0, i8* %11, align 1
  %12 = and i32 %9, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12) #22
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = icmp eq i32 %9, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i32 %9, 31
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %25, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_xorl_0x618170___rax_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %RAX
  %14 = mul i64 %13, 4
  %15 = add i64 %14, 6390128
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %15)
  ret %struct.Memory* %18
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__edx__0xc70__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 3184
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_0x10__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
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

define %struct.Memory* @routine_addl__0xffffffff___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 -1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__edx__0x10__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 16
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movq_0x18__rax____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = add i64 %4, %3
  store i64 %6, i64* %2, align 8
  %7 = icmp ult i64 %6, %3
  %8 = icmp ult i64 %6, %4
  %9 = or i1 %7, %8
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13) #22
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i64 %4, %3
  %20 = xor i64 %19, %6
  %21 = lshr i64 %20, 4
  %22 = trunc i64 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i64 %6, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %6, 63
  %29 = trunc i64 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i64 %3, 63
  %32 = lshr i64 %4, 63
  %33 = xor i64 %28, %31
  %34 = xor i64 %28, %32
  %35 = add   i64 %33, %34
  %36 = icmp eq i64 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_addq__0x1___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R8
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__r8__0x18__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 24
  %14 = load i64, i64* %R8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movl_0x20__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__edx__0x20__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 32
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl_0x24__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl__0x1___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__edx__0x24__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 36
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_cmpl__0x0__0x24__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 36
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_40743b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






define %struct.Memory* @routine_movl_0x28__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl__0x1___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RCX
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__ecx__0x28__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 40
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl_0x444__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 1092
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_0xfa50__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 64080
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 {
  %5 = trunc i64 %2 to i32
  %6 = trunc i64 %3 to i32
  %7 = sub i32 %5, %6
  %8 = icmp ult i32 %5, %6
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = and i32 %7, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11) #22
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i64 %3, %2
  %18 = trunc i64 %17 to i32
  %19 = xor i32 %18, %7
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %7, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %7, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %5, 31
  %31 = lshr i32 %6, 31
  %32 = xor i32 %31, %30
  %33 = xor i32 %27, %30
  %34 = add   i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cmpl__edx___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %EDX = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_407468(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

















define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JLEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 {
  %6 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp ne i8 %7, 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  %12 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  %15 = xor i1 %11, %14
  %16 = or i1 %8, %15
  %17 = zext i1 %16 to i8
  store i8 %17, i8* %2, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %19 = select i1 %16, i64 %3, i64 %4
  store i64 %19, i64* %18, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jle_.L_407490(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JLEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movb__0x1__MINUS0x1__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}





define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x1__0x10__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 16
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl_0x40__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #2 {
  %5 = trunc i64 %3 to i8
  store i8 %5, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__cl___dl(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %CL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %DL, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movb__dl__0xc__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 12
  %15 = load i8, i8* %DL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}




define %struct.Memory* @routine_movq_0xc50__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 3152
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x3c__rsi____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = add i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl___rax__rsi_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %18)
  ret %struct.Memory* %21
}




define %struct.Memory* @routine_movl__ecx__0x3c__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 60
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_0x3c__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = and i64 %4, %3
  %7 = trunc i64 %6 to i32
  %8 = and i64 %6, 4294967295
  store i64 %8, i64* %2, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %7, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10) #22
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = icmp eq i32 %7, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i32 %7, 31
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_andl__0xff___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RCX
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 255)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movb__dl__MINUS0x11__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 17
  %15 = load i8, i8* %DL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}






define %struct.Memory* @routine_shrl__0x8___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RCX
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHRI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 8)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_cmpl__0x0__0x18__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_40753a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_0x1c__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 28
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_0x618570___rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RAX
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 6391152
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl__ecx__0x18__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 24
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_0x1c__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__ecx__0x1c__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 28
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_cmpl__0x200__0x1c__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 28
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 512)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_407535(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_movl__0x0__0x1c__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 28
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_40753a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_xorl__eax___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x1___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 1)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_movl_0x18__rdx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl__0xffffffff___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RSI
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 -1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__esi__0x18__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 24
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_cmpl__0x1__0x18__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5CMOVZI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readonly dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %6 = load i8, i8* %5, align 1
  %7 = icmp ne i8 %6, 0
  %8 = load i64, i64* %2, align 8
  %9 = select i1 %7, i64 %3, i64 %8
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cmovel__ecx___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5CMOVZI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movzbl_MINUS0x11__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 17
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_xorl__eax___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movb__cl___dil(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 11
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %DIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %CL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %DIL, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movb__dil__MINUS0x11__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 17
  %15 = load i8, i8* %DIL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 4
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}




define %struct.Memory* @routine_movl_0x444__rdx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 1092
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl__0x1___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_movl__eax__0x444__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 1092
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_movl_0xfa50__rdx____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 64080
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_cmpl__ecx___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %ECX = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_40759d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_movzbl_MINUS0x11__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 17
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 {
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

define %struct.Memory* @routine_cmpl_0x40__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RCX
  %15 = add i64 %14, 64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_je_.L_4075be(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_movl__eax__0x40__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = add i64 %12, 64
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl__0x2__0x10__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 16
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_movl_0x3c__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RCX
  %13 = add i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edx___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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




define %struct.Memory* @routine_movl__edx__0x3c__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 60
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_0x3c__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_andl__0xff___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 255)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movb__dl___sil(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 9
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %DL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %SIL, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movb__sil__MINUS0x11__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 17
  %15 = load i8, i8* %SIL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 4
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}






define %struct.Memory* @routine_shrl__0x8___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHRI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 8)
  ret %struct.Memory* %12
}








define %struct.Memory* @routine_jne_.L_40765a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
























define %struct.Memory* @routine_jne_.L_407655(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






define %struct.Memory* @routine_jmpq_.L_40765a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
















































define %struct.Memory* @routine_jne_.L_4076bd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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










define %struct.Memory* @routine_je_.L_4076de(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_movl__0x3__0x10__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 16
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}








































define %struct.Memory* @routine_jne_.L_40777a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
























define %struct.Memory* @routine_jne_.L_407775(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






define %struct.Memory* @routine_jmpq_.L_40777a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
















































define %struct.Memory* @routine_jne_.L_4077dd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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










define %struct.Memory* @routine_je_.L_4077fe(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}
















































define %struct.Memory* @routine_jne_.L_40788f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
























define %struct.Memory* @routine_jne_.L_40788a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






define %struct.Memory* @routine_jmpq_.L_40788f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






































define %struct.Memory* @routine_addl__0x4___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 4)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movl__eax__0x10__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 16
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movq_0xc50__rdx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 3152
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq_MINUS0x10__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x3c__r8____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = add i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl___rdx__r8_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %R8
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %18)
  ret %struct.Memory* %21
}




define %struct.Memory* @routine_movl__eax__0x3c__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 60
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_0x3c__rdx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_andl__0xff___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 5
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 255)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movb__al___dil(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %AL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 11
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %DIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %AL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %DIL, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 255
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movzbl__dil___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = load i8, i8* %DIL
  %14 = zext i8 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl__eax__0x40__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 64
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_shrl__0x8___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHRI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 8)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_cmpl__0x0__0x18__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_407976(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
























define %struct.Memory* @routine_jne_.L_407971(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






define %struct.Memory* @routine_jmpq_.L_407976(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






















define %struct.Memory* @routine_xorl_0x40__rdx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}
















define %struct.Memory* @routine_movl_0xc70__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 3184
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 24
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movb_0xc__rax____dl(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %DL, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movb__dl__MINUS0x19__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 25
  %15 = load i8, i8* %DL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}




define %struct.Memory* @routine_movl_0x10__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 32
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl__ecx__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 36
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movq__rax__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movl__ecx__MINUS0x34__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 52
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movl_0x20__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx__MINUS0x44__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 68
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x44__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 72
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_0xfa50__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 64080
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__ecx__MINUS0x4c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 76
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_cmpl__0x0__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 32
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jle_.L_407b0c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JLEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jmpq_.L_407a49(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x44__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 68
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_407a58(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jmpq_.L_407cd1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cmpl__0x1__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 32
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_407a67(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jmpq_.L_407ab3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movb_MINUS0x19__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %AL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 25
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movb__al____rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %AL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RCX = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RCX
  %14 = load i8, i8* %AL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x18__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movzbl_MINUS0x19__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 25
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl__esi___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_xorl_0x618170___rcx_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %RCX
  %14 = mul i64 %13, 4
  %15 = add i64 %14, 6390128
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__edx__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 24
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x20__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__edx__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 32
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_addq__0x1___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RCX
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__rcx__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl_MINUS0x44__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__edx__MINUS0x44__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 68
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_jmpq_.L_407ab8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jne_.L_407ace(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x1__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 32
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}










































define %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_cmpl_MINUS0x4c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 76
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jle_.L_407b21(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JLEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_jne_.L_407b39(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 32
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_movb__al___cl(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %AL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %AL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %CL, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movb__cl__MINUS0x19__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 25
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movq_MINUS0x30__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_movl__eax___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl___rdx__rsi_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %18)
  ret %struct.Memory* %21
}


define %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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








define %struct.Memory* @routine_movb__cl__MINUS0x11__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 17
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}












define %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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




define %struct.Memory* @routine_cmpl_MINUS0x28__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 40
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_je_.L_407b88(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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








define %struct.Memory* @routine_jne_.L_407b99(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_movl__0x2__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 32
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %18)
  ret %struct.Memory* %21
}








define %struct.Memory* @routine_movb__cl___sil(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 9
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %CL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %SIL, i64 %15)
  ret %struct.Memory* %18
}










define %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_cmpl_MINUS0x4c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RBP
  %15 = sub i64 %14, 76
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_407be2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jmpq_.L_407a3a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_je_.L_407bfb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}








define %struct.Memory* @routine_movl__0x3__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 32
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}




































define %struct.Memory* @routine_jne_.L_407c44(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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








define %struct.Memory* @routine_je_.L_407c5d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}








































define %struct.Memory* @routine_addl__0x4___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RCX
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 4)
  ret %struct.Memory* %12
}




















define %struct.Memory* @routine_movzbl__sil___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RCX = bitcast %union.anon* %12 to i64*
  %13 = load i8, i8* %SIL
  %14 = zext i8 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
}






















define %struct.Memory* @routine_movl_0x24__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 80
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x48__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = trunc i64 %3 to i32
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7
  %9 = sub i32 %6, %8
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %2, align 8
  %11 = icmp ult i32 %6, %8
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = and i32 %9, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14) #22
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i32 %8, %6
  %21 = xor i32 %20, %9
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %9, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %9, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %6, 31
  %33 = lshr i32 %8, 31
  %34 = xor i32 %33, %32
  %35 = xor i32 %29, %32
  %36 = add   i32 %35, %34
  %37 = icmp eq i32 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_subl_MINUS0x44__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 68
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}





define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
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

define %struct.Memory* @routine_addl_0x24__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 36
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__ecx__0x24__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 36
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_cmpl_MINUS0x50__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RBP
  %15 = sub i64 %14, 80
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JNBEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 {
  %6 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  %9 = zext i1 %8 to i8
  store i8 %9, i8* %2, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %11 = select i1 %8, i64 %3, i64 %4
  store i64 %11, i64* %10, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jae_.L_407d14(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNBEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__0xc70__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = add i64 %12, 3184
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movb_MINUS0x19__rbp____dl(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 25
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %DL, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movb__dl__0xc__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RCX = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RCX
  %14 = add i64 %13, 12
  %15 = load i8, i8* %DL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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




define %struct.Memory* @routine_movl__eax__0x10__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = add i64 %12, 16
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl__eax__0x444__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = add i64 %12, 1092
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq__rcx__0xc50__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = add i64 %12, 3152
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movl__eax__0x3c__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = add i64 %12, 60
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movq___rsi____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RSI
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__rcx__0x18__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = add i64 %12, 24
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq___rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RCX
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__eax__0x20__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = add i64 %12, 32
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movzbl_MINUS0x1__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3POPI3RnWImEEEP6MemoryS4_R5StateT_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64* nocapture) #0 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 13, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = add i64 %5, 8
  %7 = inttoptr i64 %5 to i64*
  %8 = load i64, i64* %7
  store i64 %8, i64* %2, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_popq__rbp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3RETEP6MemoryR5State(%struct.Memory* returned, %struct.State* nocapture dereferenceable(3376)) #0 {
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

define %struct.Memory* @routine_retq(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

