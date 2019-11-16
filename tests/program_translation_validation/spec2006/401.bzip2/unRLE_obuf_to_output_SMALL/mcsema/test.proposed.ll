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

declare %struct.Memory* @sub_406350.BZ2_indexIntoF(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals


define %struct.Memory* @unRLE_obuf_to_output_SMALL(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .unRLE_obuf_to_output_SMALL:	 RIP: 406690	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 406690	 Bytes: 1
  %loadMem_406690 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406690 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406690)
  store %struct.Memory* %call_406690, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 406691	 Bytes: 3
  %loadMem_406691 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406691 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406691)
  store %struct.Memory* %call_406691, %struct.Memory** %MEMORY

  ; Code: subq $0x20, %rsp	 RIP: 406694	 Bytes: 4
  %loadMem_406694 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406694 = call %struct.Memory* @routine_subq__0x20___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406694)
  store %struct.Memory* %call_406694, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x10(%rbp)	 RIP: 406698	 Bytes: 4
  %loadMem_406698 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406698 = call %struct.Memory* @routine_movq__rdi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406698)
  store %struct.Memory* %call_406698, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 40669c	 Bytes: 4
  %loadMem_40669c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40669c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40669c)
  store %struct.Memory* %call_40669c, %struct.Memory** %MEMORY

  ; Code: cmpb $0x0, 0x14(%rdi)	 RIP: 4066a0	 Bytes: 4
  %loadMem_4066a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4066a0 = call %struct.Memory* @routine_cmpb__0x0__0x14__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4066a0)
  store %struct.Memory* %call_4066a0, %struct.Memory** %MEMORY

  ; Code: je .L_406e29	 RIP: 4066a4	 Bytes: 6
  %loadMem_4066a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4066a4 = call %struct.Memory* @routine_je_.L_406e29(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4066a4, i8* %BRANCH_TAKEN, i64 1925, i64 6, i64 6)
  store %struct.Memory* %call_4066a4, %struct.Memory** %MEMORY

  %loadBr_4066a4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4066a4 = icmp eq i8 %loadBr_4066a4, 1
  br i1 %cmpBr_4066a4, label %block_.L_406e29, label %block_4066aa

block_4066aa:
  ; Code: jmpq .L_4066af	 RIP: 4066aa	 Bytes: 5
  %loadMem_4066aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4066aa = call %struct.Memory* @routine_jmpq_.L_4066af(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4066aa, i64 5, i64 5)
  store %struct.Memory* %call_4066aa, %struct.Memory** %MEMORY

  br label %block_.L_4066af

  ; Code: .L_4066af:	 RIP: 4066af	 Bytes: 0
block_.L_4066af:

  ; Code: jmpq .L_4066b4	 RIP: 4066af	 Bytes: 5
  %loadMem_4066af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4066af = call %struct.Memory* @routine_jmpq_.L_4066b4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4066af, i64 5, i64 5)
  store %struct.Memory* %call_4066af, %struct.Memory** %MEMORY

  br label %block_.L_4066b4

  ; Code: .L_4066b4:	 RIP: 4066b4	 Bytes: 0
block_.L_4066b4:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4066b4	 Bytes: 4
  %loadMem_4066b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4066b4 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4066b4)
  store %struct.Memory* %call_4066b4, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 4066b8	 Bytes: 3
  %loadMem_4066b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4066b8 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4066b8)
  store %struct.Memory* %call_4066b8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x20(%rax)	 RIP: 4066bb	 Bytes: 4
  %loadMem_4066bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4066bb = call %struct.Memory* @routine_cmpl__0x0__0x20__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4066bb)
  store %struct.Memory* %call_4066bb, %struct.Memory** %MEMORY

  ; Code: jne .L_4066ce	 RIP: 4066bf	 Bytes: 6
  %loadMem_4066bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4066bf = call %struct.Memory* @routine_jne_.L_4066ce(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4066bf, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_4066bf, %struct.Memory** %MEMORY

  %loadBr_4066bf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4066bf = icmp eq i8 %loadBr_4066bf, 1
  br i1 %cmpBr_4066bf, label %block_.L_4066ce, label %block_4066c5

block_4066c5:
  ; Code: movb $0x0, -0x1(%rbp)	 RIP: 4066c5	 Bytes: 4
  %loadMem_4066c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4066c5 = call %struct.Memory* @routine_movb__0x0__MINUS0x1__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4066c5)
  store %struct.Memory* %call_4066c5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_407333	 RIP: 4066c9	 Bytes: 5
  %loadMem_4066c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4066c9 = call %struct.Memory* @routine_jmpq_.L_407333(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4066c9, i64 3178, i64 5)
  store %struct.Memory* %call_4066c9, %struct.Memory** %MEMORY

  br label %block_.L_407333

  ; Code: .L_4066ce:	 RIP: 4066ce	 Bytes: 0
block_.L_4066ce:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4066ce	 Bytes: 4
  %loadMem_4066ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4066ce = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4066ce)
  store %struct.Memory* %call_4066ce, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x10(%rax)	 RIP: 4066d2	 Bytes: 4
  %loadMem_4066d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4066d2 = call %struct.Memory* @routine_cmpl__0x0__0x10__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4066d2)
  store %struct.Memory* %call_4066d2, %struct.Memory** %MEMORY

  ; Code: jne .L_4066e1	 RIP: 4066d6	 Bytes: 6
  %loadMem_4066d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4066d6 = call %struct.Memory* @routine_jne_.L_4066e1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4066d6, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4066d6, %struct.Memory** %MEMORY

  %loadBr_4066d6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4066d6 = icmp eq i8 %loadBr_4066d6, 1
  br i1 %cmpBr_4066d6, label %block_.L_4066e1, label %block_4066dc

block_4066dc:
  ; Code: jmpq .L_406794	 RIP: 4066dc	 Bytes: 5
  %loadMem_4066dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4066dc = call %struct.Memory* @routine_jmpq_.L_406794(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4066dc, i64 184, i64 5)
  store %struct.Memory* %call_4066dc, %struct.Memory** %MEMORY

  br label %block_.L_406794

  ; Code: .L_4066e1:	 RIP: 4066e1	 Bytes: 0
block_.L_4066e1:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4066e1	 Bytes: 4
  %loadMem_4066e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4066e1 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4066e1)
  store %struct.Memory* %call_4066e1, %struct.Memory** %MEMORY

  ; Code: movb 0xc(%rax), %cl	 RIP: 4066e5	 Bytes: 3
  %loadMem_4066e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4066e5 = call %struct.Memory* @routine_movb_0xc__rax____cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4066e5)
  store %struct.Memory* %call_4066e5, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4066e8	 Bytes: 4
  %loadMem_4066e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4066e8 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4066e8)
  store %struct.Memory* %call_4066e8, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 4066ec	 Bytes: 3
  %loadMem_4066ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4066ec = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4066ec)
  store %struct.Memory* %call_4066ec, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax), %rax	 RIP: 4066ef	 Bytes: 4
  %loadMem_4066ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4066ef = call %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4066ef)
  store %struct.Memory* %call_4066ef, %struct.Memory** %MEMORY

  ; Code: movb %cl, (%rax)	 RIP: 4066f3	 Bytes: 2
  %loadMem_4066f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4066f3 = call %struct.Memory* @routine_movb__cl____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4066f3)
  store %struct.Memory* %call_4066f3, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4066f5	 Bytes: 4
  %loadMem_4066f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4066f5 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4066f5)
  store %struct.Memory* %call_4066f5, %struct.Memory** %MEMORY

  ; Code: movl 0xc70(%rax), %edx	 RIP: 4066f9	 Bytes: 6
  %loadMem_4066f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4066f9 = call %struct.Memory* @routine_movl_0xc70__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4066f9)
  store %struct.Memory* %call_4066f9, %struct.Memory** %MEMORY

  ; Code: shll $0x8, %edx	 RIP: 4066ff	 Bytes: 3
  %loadMem_4066ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4066ff = call %struct.Memory* @routine_shll__0x8___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4066ff)
  store %struct.Memory* %call_4066ff, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 406702	 Bytes: 4
  %loadMem_406702 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406702 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406702)
  store %struct.Memory* %call_406702, %struct.Memory** %MEMORY

  ; Code: movl 0xc70(%rax), %esi	 RIP: 406706	 Bytes: 6
  %loadMem_406706 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406706 = call %struct.Memory* @routine_movl_0xc70__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406706)
  store %struct.Memory* %call_406706, %struct.Memory** %MEMORY

  ; Code: shrl $0x18, %esi	 RIP: 40670c	 Bytes: 3
  %loadMem_40670c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40670c = call %struct.Memory* @routine_shrl__0x18___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40670c)
  store %struct.Memory* %call_40670c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 40670f	 Bytes: 4
  %loadMem_40670f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40670f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40670f)
  store %struct.Memory* %call_40670f, %struct.Memory** %MEMORY

  ; Code: movzbl 0xc(%rax), %edi	 RIP: 406713	 Bytes: 4
  %loadMem_406713 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406713 = call %struct.Memory* @routine_movzbl_0xc__rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406713)
  store %struct.Memory* %call_406713, %struct.Memory** %MEMORY

  ; Code: xorl %edi, %esi	 RIP: 406717	 Bytes: 2
  %loadMem_406717 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406717 = call %struct.Memory* @routine_xorl__edi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406717)
  store %struct.Memory* %call_406717, %struct.Memory** %MEMORY

  ; Code: movl %esi, %esi	 RIP: 406719	 Bytes: 2
  %loadMem_406719 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406719 = call %struct.Memory* @routine_movl__esi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406719)
  store %struct.Memory* %call_406719, %struct.Memory** %MEMORY

  ; Code: movl %esi, %eax	 RIP: 40671b	 Bytes: 2
  %loadMem_40671b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40671b = call %struct.Memory* @routine_movl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40671b)
  store %struct.Memory* %call_40671b, %struct.Memory** %MEMORY

  ; Code: xorl 0x618170(,%rax,4), %edx	 RIP: 40671d	 Bytes: 7
  %loadMem_40671d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40671d = call %struct.Memory* @routine_xorl_0x618170___rax_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40671d)
  store %struct.Memory* %call_40671d, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 406724	 Bytes: 4
  %loadMem_406724 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406724 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406724)
  store %struct.Memory* %call_406724, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0xc70(%rax)	 RIP: 406728	 Bytes: 6
  %loadMem_406728 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406728 = call %struct.Memory* @routine_movl__edx__0xc70__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406728)
  store %struct.Memory* %call_406728, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 40672e	 Bytes: 4
  %loadMem_40672e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40672e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40672e)
  store %struct.Memory* %call_40672e, %struct.Memory** %MEMORY

  ; Code: movl 0x10(%rax), %edx	 RIP: 406732	 Bytes: 3
  %loadMem_406732 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406732 = call %struct.Memory* @routine_movl_0x10__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406732)
  store %struct.Memory* %call_406732, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %edx	 RIP: 406735	 Bytes: 3
  %loadMem_406735 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406735 = call %struct.Memory* @routine_addl__0xffffffff___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406735)
  store %struct.Memory* %call_406735, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x10(%rax)	 RIP: 406738	 Bytes: 3
  %loadMem_406738 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406738 = call %struct.Memory* @routine_movl__edx__0x10__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406738)
  store %struct.Memory* %call_406738, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 40673b	 Bytes: 4
  %loadMem_40673b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40673b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40673b)
  store %struct.Memory* %call_40673b, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40673f	 Bytes: 3
  %loadMem_40673f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40673f = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40673f)
  store %struct.Memory* %call_40673f, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax), %r8	 RIP: 406742	 Bytes: 4
  %loadMem_406742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406742 = call %struct.Memory* @routine_movq_0x18__rax____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406742)
  store %struct.Memory* %call_406742, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %r8	 RIP: 406746	 Bytes: 4
  %loadMem_406746 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406746 = call %struct.Memory* @routine_addq__0x1___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406746)
  store %struct.Memory* %call_406746, %struct.Memory** %MEMORY

  ; Code: movq %r8, 0x18(%rax)	 RIP: 40674a	 Bytes: 4
  %loadMem_40674a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40674a = call %struct.Memory* @routine_movq__r8__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40674a)
  store %struct.Memory* %call_40674a, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 40674e	 Bytes: 4
  %loadMem_40674e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40674e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40674e)
  store %struct.Memory* %call_40674e, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 406752	 Bytes: 3
  %loadMem_406752 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406752 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406752)
  store %struct.Memory* %call_406752, %struct.Memory** %MEMORY

  ; Code: movl 0x20(%rax), %edx	 RIP: 406755	 Bytes: 3
  %loadMem_406755 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406755 = call %struct.Memory* @routine_movl_0x20__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406755)
  store %struct.Memory* %call_406755, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %edx	 RIP: 406758	 Bytes: 3
  %loadMem_406758 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406758 = call %struct.Memory* @routine_addl__0xffffffff___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406758)
  store %struct.Memory* %call_406758, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x20(%rax)	 RIP: 40675b	 Bytes: 3
  %loadMem_40675b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40675b = call %struct.Memory* @routine_movl__edx__0x20__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40675b)
  store %struct.Memory* %call_40675b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 40675e	 Bytes: 4
  %loadMem_40675e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40675e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40675e)
  store %struct.Memory* %call_40675e, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 406762	 Bytes: 3
  %loadMem_406762 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406762 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406762)
  store %struct.Memory* %call_406762, %struct.Memory** %MEMORY

  ; Code: movl 0x24(%rax), %edx	 RIP: 406765	 Bytes: 3
  %loadMem_406765 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406765 = call %struct.Memory* @routine_movl_0x24__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406765)
  store %struct.Memory* %call_406765, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 406768	 Bytes: 3
  %loadMem_406768 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406768 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406768)
  store %struct.Memory* %call_406768, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x24(%rax)	 RIP: 40676b	 Bytes: 3
  %loadMem_40676b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40676b = call %struct.Memory* @routine_movl__edx__0x24__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40676b)
  store %struct.Memory* %call_40676b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 40676e	 Bytes: 4
  %loadMem_40676e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40676e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40676e)
  store %struct.Memory* %call_40676e, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 406772	 Bytes: 3
  %loadMem_406772 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406772 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406772)
  store %struct.Memory* %call_406772, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x24(%rax)	 RIP: 406775	 Bytes: 4
  %loadMem_406775 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406775 = call %struct.Memory* @routine_cmpl__0x0__0x24__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406775)
  store %struct.Memory* %call_406775, %struct.Memory** %MEMORY

  ; Code: jne .L_40678f	 RIP: 406779	 Bytes: 6
  %loadMem_406779 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406779 = call %struct.Memory* @routine_jne_.L_40678f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406779, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_406779, %struct.Memory** %MEMORY

  %loadBr_406779 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_406779 = icmp eq i8 %loadBr_406779, 1
  br i1 %cmpBr_406779, label %block_.L_40678f, label %block_40677f

block_40677f:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 40677f	 Bytes: 4
  %loadMem_40677f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40677f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40677f)
  store %struct.Memory* %call_40677f, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 406783	 Bytes: 3
  %loadMem_406783 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406783 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406783)
  store %struct.Memory* %call_406783, %struct.Memory** %MEMORY

  ; Code: movl 0x28(%rax), %ecx	 RIP: 406786	 Bytes: 3
  %loadMem_406786 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406786 = call %struct.Memory* @routine_movl_0x28__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406786)
  store %struct.Memory* %call_406786, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 406789	 Bytes: 3
  %loadMem_406789 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406789 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406789)
  store %struct.Memory* %call_406789, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x28(%rax)	 RIP: 40678c	 Bytes: 3
  %loadMem_40678c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40678c = call %struct.Memory* @routine_movl__ecx__0x28__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40678c)
  store %struct.Memory* %call_40678c, %struct.Memory** %MEMORY

  ; Code: .L_40678f:	 RIP: 40678f	 Bytes: 0
  br label %block_.L_40678f
block_.L_40678f:

  ; Code: jmpq .L_4066b4	 RIP: 40678f	 Bytes: 5
  %loadMem_40678f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40678f = call %struct.Memory* @routine_jmpq_.L_4066b4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40678f, i64 -219, i64 5)
  store %struct.Memory* %call_40678f, %struct.Memory** %MEMORY

  br label %block_.L_4066b4

  ; Code: .L_406794:	 RIP: 406794	 Bytes: 0
block_.L_406794:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 406794	 Bytes: 4
  %loadMem_406794 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406794 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406794)
  store %struct.Memory* %call_406794, %struct.Memory** %MEMORY

  ; Code: movl 0x444(%rax), %ecx	 RIP: 406798	 Bytes: 6
  %loadMem_406798 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406798 = call %struct.Memory* @routine_movl_0x444__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406798)
  store %struct.Memory* %call_406798, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 40679e	 Bytes: 4
  %loadMem_40679e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40679e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40679e)
  store %struct.Memory* %call_40679e, %struct.Memory** %MEMORY

  ; Code: movl 0xfa50(%rax), %edx	 RIP: 4067a2	 Bytes: 6
  %loadMem_4067a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4067a2 = call %struct.Memory* @routine_movl_0xfa50__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4067a2)
  store %struct.Memory* %call_4067a2, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 4067a8	 Bytes: 3
  %loadMem_4067a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4067a8 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4067a8)
  store %struct.Memory* %call_4067a8, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %ecx	 RIP: 4067ab	 Bytes: 2
  %loadMem_4067ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4067ab = call %struct.Memory* @routine_cmpl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4067ab)
  store %struct.Memory* %call_4067ab, %struct.Memory** %MEMORY

  ; Code: jne .L_4067bc	 RIP: 4067ad	 Bytes: 6
  %loadMem_4067ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4067ad = call %struct.Memory* @routine_jne_.L_4067bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4067ad, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_4067ad, %struct.Memory** %MEMORY

  %loadBr_4067ad = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4067ad = icmp eq i8 %loadBr_4067ad, 1
  br i1 %cmpBr_4067ad, label %block_.L_4067bc, label %block_4067b3

block_4067b3:
  ; Code: movb $0x0, -0x1(%rbp)	 RIP: 4067b3	 Bytes: 4
  %loadMem_4067b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4067b3 = call %struct.Memory* @routine_movb__0x0__MINUS0x1__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4067b3)
  store %struct.Memory* %call_4067b3, %struct.Memory** %MEMORY

  ; Code: jmpq .L_407333	 RIP: 4067b7	 Bytes: 5
  %loadMem_4067b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4067b7 = call %struct.Memory* @routine_jmpq_.L_407333(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4067b7, i64 2940, i64 5)
  store %struct.Memory* %call_4067b7, %struct.Memory** %MEMORY

  br label %block_.L_407333

  ; Code: .L_4067bc:	 RIP: 4067bc	 Bytes: 0
block_.L_4067bc:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4067bc	 Bytes: 4
  %loadMem_4067bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4067bc = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4067bc)
  store %struct.Memory* %call_4067bc, %struct.Memory** %MEMORY

  ; Code: movl 0x444(%rax), %ecx	 RIP: 4067c0	 Bytes: 6
  %loadMem_4067c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4067c0 = call %struct.Memory* @routine_movl_0x444__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4067c0)
  store %struct.Memory* %call_4067c0, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4067c6	 Bytes: 4
  %loadMem_4067c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4067c6 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4067c6)
  store %struct.Memory* %call_4067c6, %struct.Memory** %MEMORY

  ; Code: movl 0xfa50(%rax), %edx	 RIP: 4067ca	 Bytes: 6
  %loadMem_4067ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4067ca = call %struct.Memory* @routine_movl_0xfa50__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4067ca)
  store %struct.Memory* %call_4067ca, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 4067d0	 Bytes: 3
  %loadMem_4067d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4067d0 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4067d0)
  store %struct.Memory* %call_4067d0, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %ecx	 RIP: 4067d3	 Bytes: 2
  %loadMem_4067d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4067d3 = call %struct.Memory* @routine_cmpl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4067d3)
  store %struct.Memory* %call_4067d3, %struct.Memory** %MEMORY

  ; Code: jle .L_4067e4	 RIP: 4067d5	 Bytes: 6
  %loadMem_4067d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4067d5 = call %struct.Memory* @routine_jle_.L_4067e4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4067d5, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_4067d5, %struct.Memory** %MEMORY

  %loadBr_4067d5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4067d5 = icmp eq i8 %loadBr_4067d5, 1
  br i1 %cmpBr_4067d5, label %block_.L_4067e4, label %block_4067db

block_4067db:
  ; Code: movb $0x1, -0x1(%rbp)	 RIP: 4067db	 Bytes: 4
  %loadMem_4067db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4067db = call %struct.Memory* @routine_movb__0x1__MINUS0x1__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4067db)
  store %struct.Memory* %call_4067db, %struct.Memory** %MEMORY

  ; Code: jmpq .L_407333	 RIP: 4067df	 Bytes: 5
  %loadMem_4067df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4067df = call %struct.Memory* @routine_jmpq_.L_407333(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4067df, i64 2900, i64 5)
  store %struct.Memory* %call_4067df, %struct.Memory** %MEMORY

  br label %block_.L_407333

  ; Code: .L_4067e4:	 RIP: 4067e4	 Bytes: 0
block_.L_4067e4:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4067e4	 Bytes: 4
  %loadMem_4067e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4067e4 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4067e4)
  store %struct.Memory* %call_4067e4, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x10(%rax)	 RIP: 4067e8	 Bytes: 7
  %loadMem_4067e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4067e8 = call %struct.Memory* @routine_movl__0x1__0x10__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4067e8)
  store %struct.Memory* %call_4067e8, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4067ef	 Bytes: 4
  %loadMem_4067ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4067ef = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4067ef)
  store %struct.Memory* %call_4067ef, %struct.Memory** %MEMORY

  ; Code: movl 0x40(%rax), %ecx	 RIP: 4067f3	 Bytes: 3
  %loadMem_4067f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4067f3 = call %struct.Memory* @routine_movl_0x40__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4067f3)
  store %struct.Memory* %call_4067f3, %struct.Memory** %MEMORY

  ; Code: movb %cl, %dl	 RIP: 4067f6	 Bytes: 2
  %loadMem_4067f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4067f6 = call %struct.Memory* @routine_movb__cl___dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4067f6)
  store %struct.Memory* %call_4067f6, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4067f8	 Bytes: 4
  %loadMem_4067f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4067f8 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4067f8)
  store %struct.Memory* %call_4067f8, %struct.Memory** %MEMORY

  ; Code: movb %dl, 0xc(%rax)	 RIP: 4067fc	 Bytes: 3
  %loadMem_4067fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4067fc = call %struct.Memory* @routine_movb__dl__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4067fc)
  store %struct.Memory* %call_4067fc, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4067ff	 Bytes: 4
  %loadMem_4067ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4067ff = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4067ff)
  store %struct.Memory* %call_4067ff, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rax), %edi	 RIP: 406803	 Bytes: 3
  %loadMem_406803 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406803 = call %struct.Memory* @routine_movl_0x3c__rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406803)
  store %struct.Memory* %call_406803, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 406806	 Bytes: 4
  %loadMem_406806 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406806 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406806)
  store %struct.Memory* %call_406806, %struct.Memory** %MEMORY

  ; Code: addq $0x448, %rax	 RIP: 40680a	 Bytes: 6
  %loadMem_40680a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40680a = call %struct.Memory* @routine_addq__0x448___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40680a)
  store %struct.Memory* %call_40680a, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 406810	 Bytes: 3
  %loadMem_406810 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406810 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406810)
  store %struct.Memory* %call_406810, %struct.Memory** %MEMORY

  ; Code: callq .BZ2_indexIntoF	 RIP: 406813	 Bytes: 5
  %loadMem1_406813 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_406813 = call %struct.Memory* @routine_callq_.BZ2_indexIntoF(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_406813, i64 -1219, i64 5, i64 5)
  store %struct.Memory* %call1_406813, %struct.Memory** %MEMORY

  %loadMem2_406813 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_406813 = load i64, i64* %3
  %call2_406813 = call %struct.Memory* @sub_406350.BZ2_indexIntoF(%struct.State* %0, i64  %loadPC_406813, %struct.Memory* %loadMem2_406813)
  store %struct.Memory* %call2_406813, %struct.Memory** %MEMORY

  ; Code: movb %al, %dl	 RIP: 406818	 Bytes: 2
  %loadMem_406818 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406818 = call %struct.Memory* @routine_movb__al___dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406818)
  store %struct.Memory* %call_406818, %struct.Memory** %MEMORY

  ; Code: movb %dl, -0x11(%rbp)	 RIP: 40681a	 Bytes: 3
  %loadMem_40681a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40681a = call %struct.Memory* @routine_movb__dl__MINUS0x11__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40681a)
  store %struct.Memory* %call_40681a, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rsi	 RIP: 40681d	 Bytes: 4
  %loadMem_40681d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40681d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40681d)
  store %struct.Memory* %call_40681d, %struct.Memory** %MEMORY

  ; Code: movq 0xc58(%rsi), %rsi	 RIP: 406821	 Bytes: 7
  %loadMem_406821 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406821 = call %struct.Memory* @routine_movq_0xc58__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406821)
  store %struct.Memory* %call_406821, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %r8	 RIP: 406828	 Bytes: 4
  %loadMem_406828 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406828 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406828)
  store %struct.Memory* %call_406828, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%r8), %eax	 RIP: 40682c	 Bytes: 4
  %loadMem_40682c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40682c = call %struct.Memory* @routine_movl_0x3c__r8____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40682c)
  store %struct.Memory* %call_40682c, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 406830	 Bytes: 3
  %loadMem_406830 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406830 = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406830)
  store %struct.Memory* %call_406830, %struct.Memory** %MEMORY

  ; Code: movzwl (%rsi,%r8,2), %eax	 RIP: 406833	 Bytes: 5
  %loadMem_406833 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406833 = call %struct.Memory* @routine_movzwl___rsi__r8_2____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406833)
  store %struct.Memory* %call_406833, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rsi	 RIP: 406838	 Bytes: 4
  %loadMem_406838 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406838 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406838)
  store %struct.Memory* %call_406838, %struct.Memory** %MEMORY

  ; Code: movq 0xc60(%rsi), %rsi	 RIP: 40683c	 Bytes: 7
  %loadMem_40683c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40683c = call %struct.Memory* @routine_movq_0xc60__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40683c)
  store %struct.Memory* %call_40683c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %r8	 RIP: 406843	 Bytes: 4
  %loadMem_406843 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406843 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406843)
  store %struct.Memory* %call_406843, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%r8), %ecx	 RIP: 406847	 Bytes: 4
  %loadMem_406847 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406847 = call %struct.Memory* @routine_movl_0x3c__r8____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406847)
  store %struct.Memory* %call_406847, %struct.Memory** %MEMORY

  ; Code: shrl $0x1, %ecx	 RIP: 40684b	 Bytes: 3
  %loadMem_40684b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40684b = call %struct.Memory* @routine_shrl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40684b)
  store %struct.Memory* %call_40684b, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %ecx	 RIP: 40684e	 Bytes: 2
  %loadMem_40684e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40684e = call %struct.Memory* @routine_movl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40684e)
  store %struct.Memory* %call_40684e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %r8d	 RIP: 406850	 Bytes: 3
  %loadMem_406850 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406850 = call %struct.Memory* @routine_movl__ecx___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406850)
  store %struct.Memory* %call_406850, %struct.Memory** %MEMORY

  ; Code: movzbl (%rsi,%r8,1), %ecx	 RIP: 406853	 Bytes: 5
  %loadMem_406853 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406853 = call %struct.Memory* @routine_movzbl___rsi__r8_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406853)
  store %struct.Memory* %call_406853, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rsi	 RIP: 406858	 Bytes: 4
  %loadMem_406858 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406858 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406858)
  store %struct.Memory* %call_406858, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rsi), %edi	 RIP: 40685c	 Bytes: 3
  %loadMem_40685c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40685c = call %struct.Memory* @routine_movl_0x3c__rsi____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40685c)
  store %struct.Memory* %call_40685c, %struct.Memory** %MEMORY

  ; Code: shll $0x2, %edi	 RIP: 40685f	 Bytes: 3
  %loadMem_40685f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40685f = call %struct.Memory* @routine_shll__0x2___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40685f)
  store %struct.Memory* %call_40685f, %struct.Memory** %MEMORY

  ; Code: andl $0x4, %edi	 RIP: 406862	 Bytes: 3
  %loadMem_406862 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406862 = call %struct.Memory* @routine_andl__0x4___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406862)
  store %struct.Memory* %call_406862, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x18(%rbp)	 RIP: 406865	 Bytes: 3
  %loadMem_406865 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406865 = call %struct.Memory* @routine_movl__ecx__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406865)
  store %struct.Memory* %call_406865, %struct.Memory** %MEMORY

  ; Code: movl %edi, %ecx	 RIP: 406868	 Bytes: 2
  %loadMem_406868 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406868 = call %struct.Memory* @routine_movl__edi___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406868)
  store %struct.Memory* %call_406868, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edi	 RIP: 40686a	 Bytes: 3
  %loadMem_40686a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40686a = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40686a)
  store %struct.Memory* %call_40686a, %struct.Memory** %MEMORY

  ; Code: shrl %cl, %edi	 RIP: 40686d	 Bytes: 2
  %loadMem_40686d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40686d = call %struct.Memory* @routine_shrl__cl___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40686d)
  store %struct.Memory* %call_40686d, %struct.Memory** %MEMORY

  ; Code: andl $0xf, %edi	 RIP: 40686f	 Bytes: 3
  %loadMem_40686f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40686f = call %struct.Memory* @routine_andl__0xf___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40686f)
  store %struct.Memory* %call_40686f, %struct.Memory** %MEMORY

  ; Code: shll $0x10, %edi	 RIP: 406872	 Bytes: 3
  %loadMem_406872 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406872 = call %struct.Memory* @routine_shll__0x10___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406872)
  store %struct.Memory* %call_406872, %struct.Memory** %MEMORY

  ; Code: orl %edi, %eax	 RIP: 406875	 Bytes: 2
  %loadMem_406875 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406875 = call %struct.Memory* @routine_orl__edi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406875)
  store %struct.Memory* %call_406875, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rsi	 RIP: 406877	 Bytes: 4
  %loadMem_406877 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406877 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406877)
  store %struct.Memory* %call_406877, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x3c(%rsi)	 RIP: 40687b	 Bytes: 3
  %loadMem_40687b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40687b = call %struct.Memory* @routine_movl__eax__0x3c__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40687b)
  store %struct.Memory* %call_40687b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rsi	 RIP: 40687e	 Bytes: 4
  %loadMem_40687e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40687e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40687e)
  store %struct.Memory* %call_40687e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x18(%rsi)	 RIP: 406882	 Bytes: 4
  %loadMem_406882 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406882 = call %struct.Memory* @routine_cmpl__0x0__0x18__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406882)
  store %struct.Memory* %call_406882, %struct.Memory** %MEMORY

  ; Code: jne .L_4068d0	 RIP: 406886	 Bytes: 6
  %loadMem_406886 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406886 = call %struct.Memory* @routine_jne_.L_4068d0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406886, i8* %BRANCH_TAKEN, i64 74, i64 6, i64 6)
  store %struct.Memory* %call_406886, %struct.Memory** %MEMORY

  %loadBr_406886 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_406886 = icmp eq i8 %loadBr_406886, 1
  br i1 %cmpBr_406886, label %block_.L_4068d0, label %block_40688c

block_40688c:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 40688c	 Bytes: 4
  %loadMem_40688c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40688c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40688c)
  store %struct.Memory* %call_40688c, %struct.Memory** %MEMORY

  ; Code: movslq 0x1c(%rax), %rax	 RIP: 406890	 Bytes: 4
  %loadMem_406890 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406890 = call %struct.Memory* @routine_movslq_0x1c__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406890)
  store %struct.Memory* %call_406890, %struct.Memory** %MEMORY

  ; Code: movl 0x618570(,%rax,4), %ecx	 RIP: 406894	 Bytes: 7
  %loadMem_406894 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406894 = call %struct.Memory* @routine_movl_0x618570___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406894)
  store %struct.Memory* %call_406894, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 40689b	 Bytes: 4
  %loadMem_40689b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40689b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40689b)
  store %struct.Memory* %call_40689b, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x18(%rax)	 RIP: 40689f	 Bytes: 3
  %loadMem_40689f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40689f = call %struct.Memory* @routine_movl__ecx__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40689f)
  store %struct.Memory* %call_40689f, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4068a2	 Bytes: 4
  %loadMem_4068a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4068a2 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4068a2)
  store %struct.Memory* %call_4068a2, %struct.Memory** %MEMORY

  ; Code: movl 0x1c(%rax), %ecx	 RIP: 4068a6	 Bytes: 3
  %loadMem_4068a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4068a6 = call %struct.Memory* @routine_movl_0x1c__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4068a6)
  store %struct.Memory* %call_4068a6, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 4068a9	 Bytes: 3
  %loadMem_4068a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4068a9 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4068a9)
  store %struct.Memory* %call_4068a9, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x1c(%rax)	 RIP: 4068ac	 Bytes: 3
  %loadMem_4068ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4068ac = call %struct.Memory* @routine_movl__ecx__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4068ac)
  store %struct.Memory* %call_4068ac, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4068af	 Bytes: 4
  %loadMem_4068af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4068af = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4068af)
  store %struct.Memory* %call_4068af, %struct.Memory** %MEMORY

  ; Code: cmpl $0x200, 0x1c(%rax)	 RIP: 4068b3	 Bytes: 7
  %loadMem_4068b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4068b3 = call %struct.Memory* @routine_cmpl__0x200__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4068b3)
  store %struct.Memory* %call_4068b3, %struct.Memory** %MEMORY

  ; Code: jne .L_4068cb	 RIP: 4068ba	 Bytes: 6
  %loadMem_4068ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4068ba = call %struct.Memory* @routine_jne_.L_4068cb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4068ba, i8* %BRANCH_TAKEN, i64 17, i64 6, i64 6)
  store %struct.Memory* %call_4068ba, %struct.Memory** %MEMORY

  %loadBr_4068ba = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4068ba = icmp eq i8 %loadBr_4068ba, 1
  br i1 %cmpBr_4068ba, label %block_.L_4068cb, label %block_4068c0

block_4068c0:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 4068c0	 Bytes: 4
  %loadMem_4068c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4068c0 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4068c0)
  store %struct.Memory* %call_4068c0, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x1c(%rax)	 RIP: 4068c4	 Bytes: 7
  %loadMem_4068c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4068c4 = call %struct.Memory* @routine_movl__0x0__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4068c4)
  store %struct.Memory* %call_4068c4, %struct.Memory** %MEMORY

  ; Code: .L_4068cb:	 RIP: 4068cb	 Bytes: 0
  br label %block_.L_4068cb
block_.L_4068cb:

  ; Code: jmpq .L_4068d0	 RIP: 4068cb	 Bytes: 5
  %loadMem_4068cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4068cb = call %struct.Memory* @routine_jmpq_.L_4068d0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4068cb, i64 5, i64 5)
  store %struct.Memory* %call_4068cb, %struct.Memory** %MEMORY

  br label %block_.L_4068d0

  ; Code: .L_4068d0:	 RIP: 4068d0	 Bytes: 0
block_.L_4068d0:

  ; Code: xorl %eax, %eax	 RIP: 4068d0	 Bytes: 2
  %loadMem_4068d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4068d0 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4068d0)
  store %struct.Memory* %call_4068d0, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %ecx	 RIP: 4068d2	 Bytes: 5
  %loadMem_4068d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4068d2 = call %struct.Memory* @routine_movl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4068d2)
  store %struct.Memory* %call_4068d2, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4068d7	 Bytes: 4
  %loadMem_4068d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4068d7 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4068d7)
  store %struct.Memory* %call_4068d7, %struct.Memory** %MEMORY

  ; Code: movl 0x18(%rdx), %esi	 RIP: 4068db	 Bytes: 3
  %loadMem_4068db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4068db = call %struct.Memory* @routine_movl_0x18__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4068db)
  store %struct.Memory* %call_4068db, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %esi	 RIP: 4068de	 Bytes: 3
  %loadMem_4068de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4068de = call %struct.Memory* @routine_addl__0xffffffff___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4068de)
  store %struct.Memory* %call_4068de, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x18(%rdx)	 RIP: 4068e1	 Bytes: 3
  %loadMem_4068e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4068e1 = call %struct.Memory* @routine_movl__esi__0x18__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4068e1)
  store %struct.Memory* %call_4068e1, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4068e4	 Bytes: 4
  %loadMem_4068e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4068e4 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4068e4)
  store %struct.Memory* %call_4068e4, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x18(%rdx)	 RIP: 4068e8	 Bytes: 4
  %loadMem_4068e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4068e8 = call %struct.Memory* @routine_cmpl__0x1__0x18__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4068e8)
  store %struct.Memory* %call_4068e8, %struct.Memory** %MEMORY

  ; Code: cmovel %ecx, %eax	 RIP: 4068ec	 Bytes: 3
  %loadMem_4068ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4068ec = call %struct.Memory* @routine_cmovel__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4068ec)
  store %struct.Memory* %call_4068ec, %struct.Memory** %MEMORY

  ; Code: movzbl -0x11(%rbp), %ecx	 RIP: 4068ef	 Bytes: 4
  %loadMem_4068ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4068ef = call %struct.Memory* @routine_movzbl_MINUS0x11__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4068ef)
  store %struct.Memory* %call_4068ef, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %ecx	 RIP: 4068f3	 Bytes: 2
  %loadMem_4068f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4068f3 = call %struct.Memory* @routine_xorl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4068f3)
  store %struct.Memory* %call_4068f3, %struct.Memory** %MEMORY

  ; Code: movb %cl, %dil	 RIP: 4068f5	 Bytes: 3
  %loadMem_4068f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4068f5 = call %struct.Memory* @routine_movb__cl___dil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4068f5)
  store %struct.Memory* %call_4068f5, %struct.Memory** %MEMORY

  ; Code: movb %dil, -0x11(%rbp)	 RIP: 4068f8	 Bytes: 4
  %loadMem_4068f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4068f8 = call %struct.Memory* @routine_movb__dil__MINUS0x11__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4068f8)
  store %struct.Memory* %call_4068f8, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4068fc	 Bytes: 4
  %loadMem_4068fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4068fc = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4068fc)
  store %struct.Memory* %call_4068fc, %struct.Memory** %MEMORY

  ; Code: movl 0x444(%rdx), %eax	 RIP: 406900	 Bytes: 6
  %loadMem_406900 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406900 = call %struct.Memory* @routine_movl_0x444__rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406900)
  store %struct.Memory* %call_406900, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 406906	 Bytes: 3
  %loadMem_406906 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406906 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406906)
  store %struct.Memory* %call_406906, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x444(%rdx)	 RIP: 406909	 Bytes: 6
  %loadMem_406909 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406909 = call %struct.Memory* @routine_movl__eax__0x444__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406909)
  store %struct.Memory* %call_406909, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 40690f	 Bytes: 4
  %loadMem_40690f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40690f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40690f)
  store %struct.Memory* %call_40690f, %struct.Memory** %MEMORY

  ; Code: movl 0x444(%rdx), %eax	 RIP: 406913	 Bytes: 6
  %loadMem_406913 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406913 = call %struct.Memory* @routine_movl_0x444__rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406913)
  store %struct.Memory* %call_406913, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 406919	 Bytes: 4
  %loadMem_406919 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406919 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406919)
  store %struct.Memory* %call_406919, %struct.Memory** %MEMORY

  ; Code: movl 0xfa50(%rdx), %ecx	 RIP: 40691d	 Bytes: 6
  %loadMem_40691d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40691d = call %struct.Memory* @routine_movl_0xfa50__rdx____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40691d)
  store %struct.Memory* %call_40691d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 406923	 Bytes: 3
  %loadMem_406923 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406923 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406923)
  store %struct.Memory* %call_406923, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 406926	 Bytes: 2
  %loadMem_406926 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406926 = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406926)
  store %struct.Memory* %call_406926, %struct.Memory** %MEMORY

  ; Code: jne .L_406933	 RIP: 406928	 Bytes: 6
  %loadMem_406928 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406928 = call %struct.Memory* @routine_jne_.L_406933(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406928, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_406928, %struct.Memory** %MEMORY

  %loadBr_406928 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_406928 = icmp eq i8 %loadBr_406928, 1
  br i1 %cmpBr_406928, label %block_.L_406933, label %block_40692e

block_40692e:
  ; Code: jmpq .L_4066af	 RIP: 40692e	 Bytes: 5
  %loadMem_40692e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40692e = call %struct.Memory* @routine_jmpq_.L_4066af(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40692e, i64 -639, i64 5)
  store %struct.Memory* %call_40692e, %struct.Memory** %MEMORY

  br label %block_.L_4066af

  ; Code: .L_406933:	 RIP: 406933	 Bytes: 0
block_.L_406933:

  ; Code: movzbl -0x11(%rbp), %eax	 RIP: 406933	 Bytes: 4
  %loadMem_406933 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406933 = call %struct.Memory* @routine_movzbl_MINUS0x11__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406933)
  store %struct.Memory* %call_406933, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 406937	 Bytes: 4
  %loadMem_406937 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406937 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406937)
  store %struct.Memory* %call_406937, %struct.Memory** %MEMORY

  ; Code: cmpl 0x40(%rcx), %eax	 RIP: 40693b	 Bytes: 3
  %loadMem_40693b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40693b = call %struct.Memory* @routine_cmpl_0x40__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40693b)
  store %struct.Memory* %call_40693b, %struct.Memory** %MEMORY

  ; Code: je .L_406954	 RIP: 40693e	 Bytes: 6
  %loadMem_40693e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40693e = call %struct.Memory* @routine_je_.L_406954(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40693e, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_40693e, %struct.Memory** %MEMORY

  %loadBr_40693e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40693e = icmp eq i8 %loadBr_40693e, 1
  br i1 %cmpBr_40693e, label %block_.L_406954, label %block_406944

block_406944:
  ; Code: movzbl -0x11(%rbp), %eax	 RIP: 406944	 Bytes: 4
  %loadMem_406944 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406944 = call %struct.Memory* @routine_movzbl_MINUS0x11__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406944)
  store %struct.Memory* %call_406944, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 406948	 Bytes: 4
  %loadMem_406948 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406948 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406948)
  store %struct.Memory* %call_406948, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x40(%rcx)	 RIP: 40694c	 Bytes: 3
  %loadMem_40694c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40694c = call %struct.Memory* @routine_movl__eax__0x40__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40694c)
  store %struct.Memory* %call_40694c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4066af	 RIP: 40694f	 Bytes: 5
  %loadMem_40694f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40694f = call %struct.Memory* @routine_jmpq_.L_4066af(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40694f, i64 -672, i64 5)
  store %struct.Memory* %call_40694f, %struct.Memory** %MEMORY

  br label %block_.L_4066af

  ; Code: .L_406954:	 RIP: 406954	 Bytes: 0
block_.L_406954:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 406954	 Bytes: 4
  %loadMem_406954 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406954 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406954)
  store %struct.Memory* %call_406954, %struct.Memory** %MEMORY

  ; Code: movl $0x2, 0x10(%rax)	 RIP: 406958	 Bytes: 7
  %loadMem_406958 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406958 = call %struct.Memory* @routine_movl__0x2__0x10__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406958)
  store %struct.Memory* %call_406958, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 40695f	 Bytes: 4
  %loadMem_40695f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40695f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40695f)
  store %struct.Memory* %call_40695f, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rax), %edi	 RIP: 406963	 Bytes: 3
  %loadMem_406963 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406963 = call %struct.Memory* @routine_movl_0x3c__rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406963)
  store %struct.Memory* %call_406963, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 406966	 Bytes: 4
  %loadMem_406966 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406966 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406966)
  store %struct.Memory* %call_406966, %struct.Memory** %MEMORY

  ; Code: addq $0x448, %rax	 RIP: 40696a	 Bytes: 6
  %loadMem_40696a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40696a = call %struct.Memory* @routine_addq__0x448___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40696a)
  store %struct.Memory* %call_40696a, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 406970	 Bytes: 3
  %loadMem_406970 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406970 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406970)
  store %struct.Memory* %call_406970, %struct.Memory** %MEMORY

  ; Code: callq .BZ2_indexIntoF	 RIP: 406973	 Bytes: 5
  %loadMem1_406973 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_406973 = call %struct.Memory* @routine_callq_.BZ2_indexIntoF(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_406973, i64 -1571, i64 5, i64 5)
  store %struct.Memory* %call1_406973, %struct.Memory** %MEMORY

  %loadMem2_406973 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_406973 = load i64, i64* %3
  %call2_406973 = call %struct.Memory* @sub_406350.BZ2_indexIntoF(%struct.State* %0, i64  %loadPC_406973, %struct.Memory* %loadMem2_406973)
  store %struct.Memory* %call2_406973, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 406978	 Bytes: 2
  %loadMem_406978 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406978 = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406978)
  store %struct.Memory* %call_406978, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x11(%rbp)	 RIP: 40697a	 Bytes: 3
  %loadMem_40697a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40697a = call %struct.Memory* @routine_movb__cl__MINUS0x11__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40697a)
  store %struct.Memory* %call_40697a, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rsi	 RIP: 40697d	 Bytes: 4
  %loadMem_40697d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40697d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40697d)
  store %struct.Memory* %call_40697d, %struct.Memory** %MEMORY

  ; Code: movq 0xc58(%rsi), %rsi	 RIP: 406981	 Bytes: 7
  %loadMem_406981 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406981 = call %struct.Memory* @routine_movq_0xc58__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406981)
  store %struct.Memory* %call_406981, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 406988	 Bytes: 4
  %loadMem_406988 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406988 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406988)
  store %struct.Memory* %call_406988, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rdx), %eax	 RIP: 40698c	 Bytes: 3
  %loadMem_40698c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40698c = call %struct.Memory* @routine_movl_0x3c__rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40698c)
  store %struct.Memory* %call_40698c, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 40698f	 Bytes: 2
  %loadMem_40698f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40698f = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40698f)
  store %struct.Memory* %call_40698f, %struct.Memory** %MEMORY

  ; Code: movzwl (%rsi,%rdx,2), %eax	 RIP: 406991	 Bytes: 4
  %loadMem_406991 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406991 = call %struct.Memory* @routine_movzwl___rsi__rdx_2____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406991)
  store %struct.Memory* %call_406991, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 406995	 Bytes: 4
  %loadMem_406995 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406995 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406995)
  store %struct.Memory* %call_406995, %struct.Memory** %MEMORY

  ; Code: movq 0xc60(%rdx), %rdx	 RIP: 406999	 Bytes: 7
  %loadMem_406999 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406999 = call %struct.Memory* @routine_movq_0xc60__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406999)
  store %struct.Memory* %call_406999, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rsi	 RIP: 4069a0	 Bytes: 4
  %loadMem_4069a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4069a0 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4069a0)
  store %struct.Memory* %call_4069a0, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rsi), %edi	 RIP: 4069a4	 Bytes: 3
  %loadMem_4069a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4069a4 = call %struct.Memory* @routine_movl_0x3c__rsi____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4069a4)
  store %struct.Memory* %call_4069a4, %struct.Memory** %MEMORY

  ; Code: shrl $0x1, %edi	 RIP: 4069a7	 Bytes: 3
  %loadMem_4069a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4069a7 = call %struct.Memory* @routine_shrl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4069a7)
  store %struct.Memory* %call_4069a7, %struct.Memory** %MEMORY

  ; Code: movl %edi, %edi	 RIP: 4069aa	 Bytes: 2
  %loadMem_4069aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4069aa = call %struct.Memory* @routine_movl__edi___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4069aa)
  store %struct.Memory* %call_4069aa, %struct.Memory** %MEMORY

  ; Code: movl %edi, %esi	 RIP: 4069ac	 Bytes: 2
  %loadMem_4069ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4069ac = call %struct.Memory* @routine_movl__edi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4069ac)
  store %struct.Memory* %call_4069ac, %struct.Memory** %MEMORY

  ; Code: movzbl (%rdx,%rsi,1), %edi	 RIP: 4069ae	 Bytes: 4
  %loadMem_4069ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4069ae = call %struct.Memory* @routine_movzbl___rdx__rsi_1____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4069ae)
  store %struct.Memory* %call_4069ae, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4069b2	 Bytes: 4
  %loadMem_4069b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4069b2 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4069b2)
  store %struct.Memory* %call_4069b2, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rdx), %r8d	 RIP: 4069b6	 Bytes: 4
  %loadMem_4069b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4069b6 = call %struct.Memory* @routine_movl_0x3c__rdx____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4069b6)
  store %struct.Memory* %call_4069b6, %struct.Memory** %MEMORY

  ; Code: shll $0x2, %r8d	 RIP: 4069ba	 Bytes: 4
  %loadMem_4069ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4069ba = call %struct.Memory* @routine_shll__0x2___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4069ba)
  store %struct.Memory* %call_4069ba, %struct.Memory** %MEMORY

  ; Code: andl $0x4, %r8d	 RIP: 4069be	 Bytes: 4
  %loadMem_4069be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4069be = call %struct.Memory* @routine_andl__0x4___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4069be)
  store %struct.Memory* %call_4069be, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %ecx	 RIP: 4069c2	 Bytes: 3
  %loadMem_4069c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4069c2 = call %struct.Memory* @routine_movl__r8d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4069c2)
  store %struct.Memory* %call_4069c2, %struct.Memory** %MEMORY

  ; Code: shrl %cl, %edi	 RIP: 4069c5	 Bytes: 2
  %loadMem_4069c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4069c5 = call %struct.Memory* @routine_shrl__cl___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4069c5)
  store %struct.Memory* %call_4069c5, %struct.Memory** %MEMORY

  ; Code: andl $0xf, %edi	 RIP: 4069c7	 Bytes: 3
  %loadMem_4069c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4069c7 = call %struct.Memory* @routine_andl__0xf___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4069c7)
  store %struct.Memory* %call_4069c7, %struct.Memory** %MEMORY

  ; Code: shll $0x10, %edi	 RIP: 4069ca	 Bytes: 3
  %loadMem_4069ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4069ca = call %struct.Memory* @routine_shll__0x10___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4069ca)
  store %struct.Memory* %call_4069ca, %struct.Memory** %MEMORY

  ; Code: orl %edi, %eax	 RIP: 4069cd	 Bytes: 2
  %loadMem_4069cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4069cd = call %struct.Memory* @routine_orl__edi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4069cd)
  store %struct.Memory* %call_4069cd, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4069cf	 Bytes: 4
  %loadMem_4069cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4069cf = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4069cf)
  store %struct.Memory* %call_4069cf, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x3c(%rdx)	 RIP: 4069d3	 Bytes: 3
  %loadMem_4069d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4069d3 = call %struct.Memory* @routine_movl__eax__0x3c__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4069d3)
  store %struct.Memory* %call_4069d3, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4069d6	 Bytes: 4
  %loadMem_4069d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4069d6 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4069d6)
  store %struct.Memory* %call_4069d6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x18(%rdx)	 RIP: 4069da	 Bytes: 4
  %loadMem_4069da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4069da = call %struct.Memory* @routine_cmpl__0x0__0x18__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4069da)
  store %struct.Memory* %call_4069da, %struct.Memory** %MEMORY

  ; Code: jne .L_406a28	 RIP: 4069de	 Bytes: 6
  %loadMem_4069de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4069de = call %struct.Memory* @routine_jne_.L_406a28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4069de, i8* %BRANCH_TAKEN, i64 74, i64 6, i64 6)
  store %struct.Memory* %call_4069de, %struct.Memory** %MEMORY

  %loadBr_4069de = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4069de = icmp eq i8 %loadBr_4069de, 1
  br i1 %cmpBr_4069de, label %block_.L_406a28, label %block_4069e4

block_4069e4:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 4069e4	 Bytes: 4
  %loadMem_4069e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4069e4 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4069e4)
  store %struct.Memory* %call_4069e4, %struct.Memory** %MEMORY

  ; Code: movslq 0x1c(%rax), %rax	 RIP: 4069e8	 Bytes: 4
  %loadMem_4069e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4069e8 = call %struct.Memory* @routine_movslq_0x1c__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4069e8)
  store %struct.Memory* %call_4069e8, %struct.Memory** %MEMORY

  ; Code: movl 0x618570(,%rax,4), %ecx	 RIP: 4069ec	 Bytes: 7
  %loadMem_4069ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4069ec = call %struct.Memory* @routine_movl_0x618570___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4069ec)
  store %struct.Memory* %call_4069ec, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4069f3	 Bytes: 4
  %loadMem_4069f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4069f3 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4069f3)
  store %struct.Memory* %call_4069f3, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x18(%rax)	 RIP: 4069f7	 Bytes: 3
  %loadMem_4069f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4069f7 = call %struct.Memory* @routine_movl__ecx__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4069f7)
  store %struct.Memory* %call_4069f7, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4069fa	 Bytes: 4
  %loadMem_4069fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4069fa = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4069fa)
  store %struct.Memory* %call_4069fa, %struct.Memory** %MEMORY

  ; Code: movl 0x1c(%rax), %ecx	 RIP: 4069fe	 Bytes: 3
  %loadMem_4069fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4069fe = call %struct.Memory* @routine_movl_0x1c__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4069fe)
  store %struct.Memory* %call_4069fe, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 406a01	 Bytes: 3
  %loadMem_406a01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a01 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a01)
  store %struct.Memory* %call_406a01, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x1c(%rax)	 RIP: 406a04	 Bytes: 3
  %loadMem_406a04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a04 = call %struct.Memory* @routine_movl__ecx__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a04)
  store %struct.Memory* %call_406a04, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 406a07	 Bytes: 4
  %loadMem_406a07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a07 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a07)
  store %struct.Memory* %call_406a07, %struct.Memory** %MEMORY

  ; Code: cmpl $0x200, 0x1c(%rax)	 RIP: 406a0b	 Bytes: 7
  %loadMem_406a0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a0b = call %struct.Memory* @routine_cmpl__0x200__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a0b)
  store %struct.Memory* %call_406a0b, %struct.Memory** %MEMORY

  ; Code: jne .L_406a23	 RIP: 406a12	 Bytes: 6
  %loadMem_406a12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a12 = call %struct.Memory* @routine_jne_.L_406a23(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a12, i8* %BRANCH_TAKEN, i64 17, i64 6, i64 6)
  store %struct.Memory* %call_406a12, %struct.Memory** %MEMORY

  %loadBr_406a12 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_406a12 = icmp eq i8 %loadBr_406a12, 1
  br i1 %cmpBr_406a12, label %block_.L_406a23, label %block_406a18

block_406a18:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 406a18	 Bytes: 4
  %loadMem_406a18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a18 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a18)
  store %struct.Memory* %call_406a18, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x1c(%rax)	 RIP: 406a1c	 Bytes: 7
  %loadMem_406a1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a1c = call %struct.Memory* @routine_movl__0x0__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a1c)
  store %struct.Memory* %call_406a1c, %struct.Memory** %MEMORY

  ; Code: .L_406a23:	 RIP: 406a23	 Bytes: 0
  br label %block_.L_406a23
block_.L_406a23:

  ; Code: jmpq .L_406a28	 RIP: 406a23	 Bytes: 5
  %loadMem_406a23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a23 = call %struct.Memory* @routine_jmpq_.L_406a28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a23, i64 5, i64 5)
  store %struct.Memory* %call_406a23, %struct.Memory** %MEMORY

  br label %block_.L_406a28

  ; Code: .L_406a28:	 RIP: 406a28	 Bytes: 0
block_.L_406a28:

  ; Code: xorl %eax, %eax	 RIP: 406a28	 Bytes: 2
  %loadMem_406a28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a28 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a28)
  store %struct.Memory* %call_406a28, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %ecx	 RIP: 406a2a	 Bytes: 5
  %loadMem_406a2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a2a = call %struct.Memory* @routine_movl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a2a)
  store %struct.Memory* %call_406a2a, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 406a2f	 Bytes: 4
  %loadMem_406a2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a2f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a2f)
  store %struct.Memory* %call_406a2f, %struct.Memory** %MEMORY

  ; Code: movl 0x18(%rdx), %esi	 RIP: 406a33	 Bytes: 3
  %loadMem_406a33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a33 = call %struct.Memory* @routine_movl_0x18__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a33)
  store %struct.Memory* %call_406a33, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %esi	 RIP: 406a36	 Bytes: 3
  %loadMem_406a36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a36 = call %struct.Memory* @routine_addl__0xffffffff___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a36)
  store %struct.Memory* %call_406a36, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x18(%rdx)	 RIP: 406a39	 Bytes: 3
  %loadMem_406a39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a39 = call %struct.Memory* @routine_movl__esi__0x18__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a39)
  store %struct.Memory* %call_406a39, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 406a3c	 Bytes: 4
  %loadMem_406a3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a3c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a3c)
  store %struct.Memory* %call_406a3c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x18(%rdx)	 RIP: 406a40	 Bytes: 4
  %loadMem_406a40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a40 = call %struct.Memory* @routine_cmpl__0x1__0x18__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a40)
  store %struct.Memory* %call_406a40, %struct.Memory** %MEMORY

  ; Code: cmovel %ecx, %eax	 RIP: 406a44	 Bytes: 3
  %loadMem_406a44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a44 = call %struct.Memory* @routine_cmovel__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a44)
  store %struct.Memory* %call_406a44, %struct.Memory** %MEMORY

  ; Code: movzbl -0x11(%rbp), %ecx	 RIP: 406a47	 Bytes: 4
  %loadMem_406a47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a47 = call %struct.Memory* @routine_movzbl_MINUS0x11__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a47)
  store %struct.Memory* %call_406a47, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %ecx	 RIP: 406a4b	 Bytes: 2
  %loadMem_406a4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a4b = call %struct.Memory* @routine_xorl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a4b)
  store %struct.Memory* %call_406a4b, %struct.Memory** %MEMORY

  ; Code: movb %cl, %dil	 RIP: 406a4d	 Bytes: 3
  %loadMem_406a4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a4d = call %struct.Memory* @routine_movb__cl___dil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a4d)
  store %struct.Memory* %call_406a4d, %struct.Memory** %MEMORY

  ; Code: movb %dil, -0x11(%rbp)	 RIP: 406a50	 Bytes: 4
  %loadMem_406a50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a50 = call %struct.Memory* @routine_movb__dil__MINUS0x11__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a50)
  store %struct.Memory* %call_406a50, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 406a54	 Bytes: 4
  %loadMem_406a54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a54 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a54)
  store %struct.Memory* %call_406a54, %struct.Memory** %MEMORY

  ; Code: movl 0x444(%rdx), %eax	 RIP: 406a58	 Bytes: 6
  %loadMem_406a58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a58 = call %struct.Memory* @routine_movl_0x444__rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a58)
  store %struct.Memory* %call_406a58, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 406a5e	 Bytes: 3
  %loadMem_406a5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a5e = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a5e)
  store %struct.Memory* %call_406a5e, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x444(%rdx)	 RIP: 406a61	 Bytes: 6
  %loadMem_406a61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a61 = call %struct.Memory* @routine_movl__eax__0x444__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a61)
  store %struct.Memory* %call_406a61, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 406a67	 Bytes: 4
  %loadMem_406a67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a67 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a67)
  store %struct.Memory* %call_406a67, %struct.Memory** %MEMORY

  ; Code: movl 0x444(%rdx), %eax	 RIP: 406a6b	 Bytes: 6
  %loadMem_406a6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a6b = call %struct.Memory* @routine_movl_0x444__rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a6b)
  store %struct.Memory* %call_406a6b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 406a71	 Bytes: 4
  %loadMem_406a71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a71 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a71)
  store %struct.Memory* %call_406a71, %struct.Memory** %MEMORY

  ; Code: movl 0xfa50(%rdx), %ecx	 RIP: 406a75	 Bytes: 6
  %loadMem_406a75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a75 = call %struct.Memory* @routine_movl_0xfa50__rdx____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a75)
  store %struct.Memory* %call_406a75, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 406a7b	 Bytes: 3
  %loadMem_406a7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a7b = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a7b)
  store %struct.Memory* %call_406a7b, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 406a7e	 Bytes: 2
  %loadMem_406a7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a7e = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a7e)
  store %struct.Memory* %call_406a7e, %struct.Memory** %MEMORY

  ; Code: jne .L_406a8b	 RIP: 406a80	 Bytes: 6
  %loadMem_406a80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a80 = call %struct.Memory* @routine_jne_.L_406a8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a80, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_406a80, %struct.Memory** %MEMORY

  %loadBr_406a80 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_406a80 = icmp eq i8 %loadBr_406a80, 1
  br i1 %cmpBr_406a80, label %block_.L_406a8b, label %block_406a86

block_406a86:
  ; Code: jmpq .L_4066af	 RIP: 406a86	 Bytes: 5
  %loadMem_406a86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a86 = call %struct.Memory* @routine_jmpq_.L_4066af(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a86, i64 -983, i64 5)
  store %struct.Memory* %call_406a86, %struct.Memory** %MEMORY

  br label %block_.L_4066af

  ; Code: .L_406a8b:	 RIP: 406a8b	 Bytes: 0
block_.L_406a8b:

  ; Code: movzbl -0x11(%rbp), %eax	 RIP: 406a8b	 Bytes: 4
  %loadMem_406a8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a8b = call %struct.Memory* @routine_movzbl_MINUS0x11__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a8b)
  store %struct.Memory* %call_406a8b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 406a8f	 Bytes: 4
  %loadMem_406a8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a8f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a8f)
  store %struct.Memory* %call_406a8f, %struct.Memory** %MEMORY

  ; Code: cmpl 0x40(%rcx), %eax	 RIP: 406a93	 Bytes: 3
  %loadMem_406a93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a93 = call %struct.Memory* @routine_cmpl_0x40__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a93)
  store %struct.Memory* %call_406a93, %struct.Memory** %MEMORY

  ; Code: je .L_406aac	 RIP: 406a96	 Bytes: 6
  %loadMem_406a96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a96 = call %struct.Memory* @routine_je_.L_406aac(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a96, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_406a96, %struct.Memory** %MEMORY

  %loadBr_406a96 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_406a96 = icmp eq i8 %loadBr_406a96, 1
  br i1 %cmpBr_406a96, label %block_.L_406aac, label %block_406a9c

block_406a9c:
  ; Code: movzbl -0x11(%rbp), %eax	 RIP: 406a9c	 Bytes: 4
  %loadMem_406a9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a9c = call %struct.Memory* @routine_movzbl_MINUS0x11__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a9c)
  store %struct.Memory* %call_406a9c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 406aa0	 Bytes: 4
  %loadMem_406aa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406aa0 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406aa0)
  store %struct.Memory* %call_406aa0, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x40(%rcx)	 RIP: 406aa4	 Bytes: 3
  %loadMem_406aa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406aa4 = call %struct.Memory* @routine_movl__eax__0x40__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406aa4)
  store %struct.Memory* %call_406aa4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4066af	 RIP: 406aa7	 Bytes: 5
  %loadMem_406aa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406aa7 = call %struct.Memory* @routine_jmpq_.L_4066af(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406aa7, i64 -1016, i64 5)
  store %struct.Memory* %call_406aa7, %struct.Memory** %MEMORY

  br label %block_.L_4066af

  ; Code: .L_406aac:	 RIP: 406aac	 Bytes: 0
block_.L_406aac:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 406aac	 Bytes: 4
  %loadMem_406aac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406aac = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406aac)
  store %struct.Memory* %call_406aac, %struct.Memory** %MEMORY

  ; Code: movl $0x3, 0x10(%rax)	 RIP: 406ab0	 Bytes: 7
  %loadMem_406ab0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ab0 = call %struct.Memory* @routine_movl__0x3__0x10__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ab0)
  store %struct.Memory* %call_406ab0, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 406ab7	 Bytes: 4
  %loadMem_406ab7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ab7 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ab7)
  store %struct.Memory* %call_406ab7, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rax), %edi	 RIP: 406abb	 Bytes: 3
  %loadMem_406abb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406abb = call %struct.Memory* @routine_movl_0x3c__rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406abb)
  store %struct.Memory* %call_406abb, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 406abe	 Bytes: 4
  %loadMem_406abe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406abe = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406abe)
  store %struct.Memory* %call_406abe, %struct.Memory** %MEMORY

  ; Code: addq $0x448, %rax	 RIP: 406ac2	 Bytes: 6
  %loadMem_406ac2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ac2 = call %struct.Memory* @routine_addq__0x448___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ac2)
  store %struct.Memory* %call_406ac2, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 406ac8	 Bytes: 3
  %loadMem_406ac8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ac8 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ac8)
  store %struct.Memory* %call_406ac8, %struct.Memory** %MEMORY

  ; Code: callq .BZ2_indexIntoF	 RIP: 406acb	 Bytes: 5
  %loadMem1_406acb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_406acb = call %struct.Memory* @routine_callq_.BZ2_indexIntoF(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_406acb, i64 -1915, i64 5, i64 5)
  store %struct.Memory* %call1_406acb, %struct.Memory** %MEMORY

  %loadMem2_406acb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_406acb = load i64, i64* %3
  %call2_406acb = call %struct.Memory* @sub_406350.BZ2_indexIntoF(%struct.State* %0, i64  %loadPC_406acb, %struct.Memory* %loadMem2_406acb)
  store %struct.Memory* %call2_406acb, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 406ad0	 Bytes: 2
  %loadMem_406ad0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ad0 = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ad0)
  store %struct.Memory* %call_406ad0, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x11(%rbp)	 RIP: 406ad2	 Bytes: 3
  %loadMem_406ad2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ad2 = call %struct.Memory* @routine_movb__cl__MINUS0x11__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ad2)
  store %struct.Memory* %call_406ad2, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rsi	 RIP: 406ad5	 Bytes: 4
  %loadMem_406ad5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ad5 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ad5)
  store %struct.Memory* %call_406ad5, %struct.Memory** %MEMORY

  ; Code: movq 0xc58(%rsi), %rsi	 RIP: 406ad9	 Bytes: 7
  %loadMem_406ad9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ad9 = call %struct.Memory* @routine_movq_0xc58__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ad9)
  store %struct.Memory* %call_406ad9, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 406ae0	 Bytes: 4
  %loadMem_406ae0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ae0 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ae0)
  store %struct.Memory* %call_406ae0, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rdx), %eax	 RIP: 406ae4	 Bytes: 3
  %loadMem_406ae4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ae4 = call %struct.Memory* @routine_movl_0x3c__rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ae4)
  store %struct.Memory* %call_406ae4, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 406ae7	 Bytes: 2
  %loadMem_406ae7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ae7 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ae7)
  store %struct.Memory* %call_406ae7, %struct.Memory** %MEMORY

  ; Code: movzwl (%rsi,%rdx,2), %eax	 RIP: 406ae9	 Bytes: 4
  %loadMem_406ae9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ae9 = call %struct.Memory* @routine_movzwl___rsi__rdx_2____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ae9)
  store %struct.Memory* %call_406ae9, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 406aed	 Bytes: 4
  %loadMem_406aed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406aed = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406aed)
  store %struct.Memory* %call_406aed, %struct.Memory** %MEMORY

  ; Code: movq 0xc60(%rdx), %rdx	 RIP: 406af1	 Bytes: 7
  %loadMem_406af1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406af1 = call %struct.Memory* @routine_movq_0xc60__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406af1)
  store %struct.Memory* %call_406af1, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rsi	 RIP: 406af8	 Bytes: 4
  %loadMem_406af8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406af8 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406af8)
  store %struct.Memory* %call_406af8, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rsi), %edi	 RIP: 406afc	 Bytes: 3
  %loadMem_406afc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406afc = call %struct.Memory* @routine_movl_0x3c__rsi____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406afc)
  store %struct.Memory* %call_406afc, %struct.Memory** %MEMORY

  ; Code: shrl $0x1, %edi	 RIP: 406aff	 Bytes: 3
  %loadMem_406aff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406aff = call %struct.Memory* @routine_shrl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406aff)
  store %struct.Memory* %call_406aff, %struct.Memory** %MEMORY

  ; Code: movl %edi, %edi	 RIP: 406b02	 Bytes: 2
  %loadMem_406b02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b02 = call %struct.Memory* @routine_movl__edi___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b02)
  store %struct.Memory* %call_406b02, %struct.Memory** %MEMORY

  ; Code: movl %edi, %esi	 RIP: 406b04	 Bytes: 2
  %loadMem_406b04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b04 = call %struct.Memory* @routine_movl__edi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b04)
  store %struct.Memory* %call_406b04, %struct.Memory** %MEMORY

  ; Code: movzbl (%rdx,%rsi,1), %edi	 RIP: 406b06	 Bytes: 4
  %loadMem_406b06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b06 = call %struct.Memory* @routine_movzbl___rdx__rsi_1____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b06)
  store %struct.Memory* %call_406b06, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 406b0a	 Bytes: 4
  %loadMem_406b0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b0a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b0a)
  store %struct.Memory* %call_406b0a, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rdx), %r8d	 RIP: 406b0e	 Bytes: 4
  %loadMem_406b0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b0e = call %struct.Memory* @routine_movl_0x3c__rdx____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b0e)
  store %struct.Memory* %call_406b0e, %struct.Memory** %MEMORY

  ; Code: shll $0x2, %r8d	 RIP: 406b12	 Bytes: 4
  %loadMem_406b12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b12 = call %struct.Memory* @routine_shll__0x2___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b12)
  store %struct.Memory* %call_406b12, %struct.Memory** %MEMORY

  ; Code: andl $0x4, %r8d	 RIP: 406b16	 Bytes: 4
  %loadMem_406b16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b16 = call %struct.Memory* @routine_andl__0x4___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b16)
  store %struct.Memory* %call_406b16, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %ecx	 RIP: 406b1a	 Bytes: 3
  %loadMem_406b1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b1a = call %struct.Memory* @routine_movl__r8d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b1a)
  store %struct.Memory* %call_406b1a, %struct.Memory** %MEMORY

  ; Code: shrl %cl, %edi	 RIP: 406b1d	 Bytes: 2
  %loadMem_406b1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b1d = call %struct.Memory* @routine_shrl__cl___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b1d)
  store %struct.Memory* %call_406b1d, %struct.Memory** %MEMORY

  ; Code: andl $0xf, %edi	 RIP: 406b1f	 Bytes: 3
  %loadMem_406b1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b1f = call %struct.Memory* @routine_andl__0xf___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b1f)
  store %struct.Memory* %call_406b1f, %struct.Memory** %MEMORY

  ; Code: shll $0x10, %edi	 RIP: 406b22	 Bytes: 3
  %loadMem_406b22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b22 = call %struct.Memory* @routine_shll__0x10___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b22)
  store %struct.Memory* %call_406b22, %struct.Memory** %MEMORY

  ; Code: orl %edi, %eax	 RIP: 406b25	 Bytes: 2
  %loadMem_406b25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b25 = call %struct.Memory* @routine_orl__edi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b25)
  store %struct.Memory* %call_406b25, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 406b27	 Bytes: 4
  %loadMem_406b27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b27 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b27)
  store %struct.Memory* %call_406b27, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x3c(%rdx)	 RIP: 406b2b	 Bytes: 3
  %loadMem_406b2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b2b = call %struct.Memory* @routine_movl__eax__0x3c__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b2b)
  store %struct.Memory* %call_406b2b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 406b2e	 Bytes: 4
  %loadMem_406b2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b2e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b2e)
  store %struct.Memory* %call_406b2e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x18(%rdx)	 RIP: 406b32	 Bytes: 4
  %loadMem_406b32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b32 = call %struct.Memory* @routine_cmpl__0x0__0x18__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b32)
  store %struct.Memory* %call_406b32, %struct.Memory** %MEMORY

  ; Code: jne .L_406b80	 RIP: 406b36	 Bytes: 6
  %loadMem_406b36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b36 = call %struct.Memory* @routine_jne_.L_406b80(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b36, i8* %BRANCH_TAKEN, i64 74, i64 6, i64 6)
  store %struct.Memory* %call_406b36, %struct.Memory** %MEMORY

  %loadBr_406b36 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_406b36 = icmp eq i8 %loadBr_406b36, 1
  br i1 %cmpBr_406b36, label %block_.L_406b80, label %block_406b3c

block_406b3c:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 406b3c	 Bytes: 4
  %loadMem_406b3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b3c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b3c)
  store %struct.Memory* %call_406b3c, %struct.Memory** %MEMORY

  ; Code: movslq 0x1c(%rax), %rax	 RIP: 406b40	 Bytes: 4
  %loadMem_406b40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b40 = call %struct.Memory* @routine_movslq_0x1c__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b40)
  store %struct.Memory* %call_406b40, %struct.Memory** %MEMORY

  ; Code: movl 0x618570(,%rax,4), %ecx	 RIP: 406b44	 Bytes: 7
  %loadMem_406b44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b44 = call %struct.Memory* @routine_movl_0x618570___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b44)
  store %struct.Memory* %call_406b44, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 406b4b	 Bytes: 4
  %loadMem_406b4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b4b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b4b)
  store %struct.Memory* %call_406b4b, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x18(%rax)	 RIP: 406b4f	 Bytes: 3
  %loadMem_406b4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b4f = call %struct.Memory* @routine_movl__ecx__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b4f)
  store %struct.Memory* %call_406b4f, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 406b52	 Bytes: 4
  %loadMem_406b52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b52 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b52)
  store %struct.Memory* %call_406b52, %struct.Memory** %MEMORY

  ; Code: movl 0x1c(%rax), %ecx	 RIP: 406b56	 Bytes: 3
  %loadMem_406b56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b56 = call %struct.Memory* @routine_movl_0x1c__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b56)
  store %struct.Memory* %call_406b56, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 406b59	 Bytes: 3
  %loadMem_406b59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b59 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b59)
  store %struct.Memory* %call_406b59, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x1c(%rax)	 RIP: 406b5c	 Bytes: 3
  %loadMem_406b5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b5c = call %struct.Memory* @routine_movl__ecx__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b5c)
  store %struct.Memory* %call_406b5c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 406b5f	 Bytes: 4
  %loadMem_406b5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b5f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b5f)
  store %struct.Memory* %call_406b5f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x200, 0x1c(%rax)	 RIP: 406b63	 Bytes: 7
  %loadMem_406b63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b63 = call %struct.Memory* @routine_cmpl__0x200__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b63)
  store %struct.Memory* %call_406b63, %struct.Memory** %MEMORY

  ; Code: jne .L_406b7b	 RIP: 406b6a	 Bytes: 6
  %loadMem_406b6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b6a = call %struct.Memory* @routine_jne_.L_406b7b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b6a, i8* %BRANCH_TAKEN, i64 17, i64 6, i64 6)
  store %struct.Memory* %call_406b6a, %struct.Memory** %MEMORY

  %loadBr_406b6a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_406b6a = icmp eq i8 %loadBr_406b6a, 1
  br i1 %cmpBr_406b6a, label %block_.L_406b7b, label %block_406b70

block_406b70:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 406b70	 Bytes: 4
  %loadMem_406b70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b70 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b70)
  store %struct.Memory* %call_406b70, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x1c(%rax)	 RIP: 406b74	 Bytes: 7
  %loadMem_406b74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b74 = call %struct.Memory* @routine_movl__0x0__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b74)
  store %struct.Memory* %call_406b74, %struct.Memory** %MEMORY

  ; Code: .L_406b7b:	 RIP: 406b7b	 Bytes: 0
  br label %block_.L_406b7b
block_.L_406b7b:

  ; Code: jmpq .L_406b80	 RIP: 406b7b	 Bytes: 5
  %loadMem_406b7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b7b = call %struct.Memory* @routine_jmpq_.L_406b80(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b7b, i64 5, i64 5)
  store %struct.Memory* %call_406b7b, %struct.Memory** %MEMORY

  br label %block_.L_406b80

  ; Code: .L_406b80:	 RIP: 406b80	 Bytes: 0
block_.L_406b80:

  ; Code: xorl %eax, %eax	 RIP: 406b80	 Bytes: 2
  %loadMem_406b80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b80 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b80)
  store %struct.Memory* %call_406b80, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %ecx	 RIP: 406b82	 Bytes: 5
  %loadMem_406b82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b82 = call %struct.Memory* @routine_movl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b82)
  store %struct.Memory* %call_406b82, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 406b87	 Bytes: 4
  %loadMem_406b87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b87 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b87)
  store %struct.Memory* %call_406b87, %struct.Memory** %MEMORY

  ; Code: movl 0x18(%rdx), %esi	 RIP: 406b8b	 Bytes: 3
  %loadMem_406b8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b8b = call %struct.Memory* @routine_movl_0x18__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b8b)
  store %struct.Memory* %call_406b8b, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %esi	 RIP: 406b8e	 Bytes: 3
  %loadMem_406b8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b8e = call %struct.Memory* @routine_addl__0xffffffff___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b8e)
  store %struct.Memory* %call_406b8e, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x18(%rdx)	 RIP: 406b91	 Bytes: 3
  %loadMem_406b91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b91 = call %struct.Memory* @routine_movl__esi__0x18__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b91)
  store %struct.Memory* %call_406b91, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 406b94	 Bytes: 4
  %loadMem_406b94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b94 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b94)
  store %struct.Memory* %call_406b94, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x18(%rdx)	 RIP: 406b98	 Bytes: 4
  %loadMem_406b98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b98 = call %struct.Memory* @routine_cmpl__0x1__0x18__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b98)
  store %struct.Memory* %call_406b98, %struct.Memory** %MEMORY

  ; Code: cmovel %ecx, %eax	 RIP: 406b9c	 Bytes: 3
  %loadMem_406b9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b9c = call %struct.Memory* @routine_cmovel__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b9c)
  store %struct.Memory* %call_406b9c, %struct.Memory** %MEMORY

  ; Code: movzbl -0x11(%rbp), %ecx	 RIP: 406b9f	 Bytes: 4
  %loadMem_406b9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b9f = call %struct.Memory* @routine_movzbl_MINUS0x11__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b9f)
  store %struct.Memory* %call_406b9f, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %ecx	 RIP: 406ba3	 Bytes: 2
  %loadMem_406ba3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ba3 = call %struct.Memory* @routine_xorl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ba3)
  store %struct.Memory* %call_406ba3, %struct.Memory** %MEMORY

  ; Code: movb %cl, %dil	 RIP: 406ba5	 Bytes: 3
  %loadMem_406ba5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ba5 = call %struct.Memory* @routine_movb__cl___dil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ba5)
  store %struct.Memory* %call_406ba5, %struct.Memory** %MEMORY

  ; Code: movb %dil, -0x11(%rbp)	 RIP: 406ba8	 Bytes: 4
  %loadMem_406ba8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ba8 = call %struct.Memory* @routine_movb__dil__MINUS0x11__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ba8)
  store %struct.Memory* %call_406ba8, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 406bac	 Bytes: 4
  %loadMem_406bac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406bac = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406bac)
  store %struct.Memory* %call_406bac, %struct.Memory** %MEMORY

  ; Code: movl 0x444(%rdx), %eax	 RIP: 406bb0	 Bytes: 6
  %loadMem_406bb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406bb0 = call %struct.Memory* @routine_movl_0x444__rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406bb0)
  store %struct.Memory* %call_406bb0, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 406bb6	 Bytes: 3
  %loadMem_406bb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406bb6 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406bb6)
  store %struct.Memory* %call_406bb6, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x444(%rdx)	 RIP: 406bb9	 Bytes: 6
  %loadMem_406bb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406bb9 = call %struct.Memory* @routine_movl__eax__0x444__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406bb9)
  store %struct.Memory* %call_406bb9, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 406bbf	 Bytes: 4
  %loadMem_406bbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406bbf = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406bbf)
  store %struct.Memory* %call_406bbf, %struct.Memory** %MEMORY

  ; Code: movl 0x444(%rdx), %eax	 RIP: 406bc3	 Bytes: 6
  %loadMem_406bc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406bc3 = call %struct.Memory* @routine_movl_0x444__rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406bc3)
  store %struct.Memory* %call_406bc3, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 406bc9	 Bytes: 4
  %loadMem_406bc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406bc9 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406bc9)
  store %struct.Memory* %call_406bc9, %struct.Memory** %MEMORY

  ; Code: movl 0xfa50(%rdx), %ecx	 RIP: 406bcd	 Bytes: 6
  %loadMem_406bcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406bcd = call %struct.Memory* @routine_movl_0xfa50__rdx____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406bcd)
  store %struct.Memory* %call_406bcd, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 406bd3	 Bytes: 3
  %loadMem_406bd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406bd3 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406bd3)
  store %struct.Memory* %call_406bd3, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 406bd6	 Bytes: 2
  %loadMem_406bd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406bd6 = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406bd6)
  store %struct.Memory* %call_406bd6, %struct.Memory** %MEMORY

  ; Code: jne .L_406be3	 RIP: 406bd8	 Bytes: 6
  %loadMem_406bd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406bd8 = call %struct.Memory* @routine_jne_.L_406be3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406bd8, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_406bd8, %struct.Memory** %MEMORY

  %loadBr_406bd8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_406bd8 = icmp eq i8 %loadBr_406bd8, 1
  br i1 %cmpBr_406bd8, label %block_.L_406be3, label %block_406bde

block_406bde:
  ; Code: jmpq .L_4066af	 RIP: 406bde	 Bytes: 5
  %loadMem_406bde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406bde = call %struct.Memory* @routine_jmpq_.L_4066af(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406bde, i64 -1327, i64 5)
  store %struct.Memory* %call_406bde, %struct.Memory** %MEMORY

  br label %block_.L_4066af

  ; Code: .L_406be3:	 RIP: 406be3	 Bytes: 0
block_.L_406be3:

  ; Code: movzbl -0x11(%rbp), %eax	 RIP: 406be3	 Bytes: 4
  %loadMem_406be3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406be3 = call %struct.Memory* @routine_movzbl_MINUS0x11__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406be3)
  store %struct.Memory* %call_406be3, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 406be7	 Bytes: 4
  %loadMem_406be7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406be7 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406be7)
  store %struct.Memory* %call_406be7, %struct.Memory** %MEMORY

  ; Code: cmpl 0x40(%rcx), %eax	 RIP: 406beb	 Bytes: 3
  %loadMem_406beb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406beb = call %struct.Memory* @routine_cmpl_0x40__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406beb)
  store %struct.Memory* %call_406beb, %struct.Memory** %MEMORY

  ; Code: je .L_406c04	 RIP: 406bee	 Bytes: 6
  %loadMem_406bee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406bee = call %struct.Memory* @routine_je_.L_406c04(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406bee, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_406bee, %struct.Memory** %MEMORY

  %loadBr_406bee = load i8, i8* %BRANCH_TAKEN
  %cmpBr_406bee = icmp eq i8 %loadBr_406bee, 1
  br i1 %cmpBr_406bee, label %block_.L_406c04, label %block_406bf4

block_406bf4:
  ; Code: movzbl -0x11(%rbp), %eax	 RIP: 406bf4	 Bytes: 4
  %loadMem_406bf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406bf4 = call %struct.Memory* @routine_movzbl_MINUS0x11__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406bf4)
  store %struct.Memory* %call_406bf4, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 406bf8	 Bytes: 4
  %loadMem_406bf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406bf8 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406bf8)
  store %struct.Memory* %call_406bf8, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x40(%rcx)	 RIP: 406bfc	 Bytes: 3
  %loadMem_406bfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406bfc = call %struct.Memory* @routine_movl__eax__0x40__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406bfc)
  store %struct.Memory* %call_406bfc, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4066af	 RIP: 406bff	 Bytes: 5
  %loadMem_406bff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406bff = call %struct.Memory* @routine_jmpq_.L_4066af(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406bff, i64 -1360, i64 5)
  store %struct.Memory* %call_406bff, %struct.Memory** %MEMORY

  br label %block_.L_4066af

  ; Code: .L_406c04:	 RIP: 406c04	 Bytes: 0
block_.L_406c04:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 406c04	 Bytes: 4
  %loadMem_406c04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c04 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c04)
  store %struct.Memory* %call_406c04, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rax), %edi	 RIP: 406c08	 Bytes: 3
  %loadMem_406c08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c08 = call %struct.Memory* @routine_movl_0x3c__rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c08)
  store %struct.Memory* %call_406c08, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 406c0b	 Bytes: 4
  %loadMem_406c0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c0b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c0b)
  store %struct.Memory* %call_406c0b, %struct.Memory** %MEMORY

  ; Code: addq $0x448, %rax	 RIP: 406c0f	 Bytes: 6
  %loadMem_406c0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c0f = call %struct.Memory* @routine_addq__0x448___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c0f)
  store %struct.Memory* %call_406c0f, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 406c15	 Bytes: 3
  %loadMem_406c15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c15 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c15)
  store %struct.Memory* %call_406c15, %struct.Memory** %MEMORY

  ; Code: callq .BZ2_indexIntoF	 RIP: 406c18	 Bytes: 5
  %loadMem1_406c18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_406c18 = call %struct.Memory* @routine_callq_.BZ2_indexIntoF(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_406c18, i64 -2248, i64 5, i64 5)
  store %struct.Memory* %call1_406c18, %struct.Memory** %MEMORY

  %loadMem2_406c18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_406c18 = load i64, i64* %3
  %call2_406c18 = call %struct.Memory* @sub_406350.BZ2_indexIntoF(%struct.State* %0, i64  %loadPC_406c18, %struct.Memory* %loadMem2_406c18)
  store %struct.Memory* %call2_406c18, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 406c1d	 Bytes: 2
  %loadMem_406c1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c1d = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c1d)
  store %struct.Memory* %call_406c1d, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x11(%rbp)	 RIP: 406c1f	 Bytes: 3
  %loadMem_406c1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c1f = call %struct.Memory* @routine_movb__cl__MINUS0x11__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c1f)
  store %struct.Memory* %call_406c1f, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rsi	 RIP: 406c22	 Bytes: 4
  %loadMem_406c22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c22 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c22)
  store %struct.Memory* %call_406c22, %struct.Memory** %MEMORY

  ; Code: movq 0xc58(%rsi), %rsi	 RIP: 406c26	 Bytes: 7
  %loadMem_406c26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c26 = call %struct.Memory* @routine_movq_0xc58__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c26)
  store %struct.Memory* %call_406c26, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 406c2d	 Bytes: 4
  %loadMem_406c2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c2d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c2d)
  store %struct.Memory* %call_406c2d, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rdx), %eax	 RIP: 406c31	 Bytes: 3
  %loadMem_406c31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c31 = call %struct.Memory* @routine_movl_0x3c__rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c31)
  store %struct.Memory* %call_406c31, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 406c34	 Bytes: 2
  %loadMem_406c34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c34 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c34)
  store %struct.Memory* %call_406c34, %struct.Memory** %MEMORY

  ; Code: movzwl (%rsi,%rdx,2), %eax	 RIP: 406c36	 Bytes: 4
  %loadMem_406c36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c36 = call %struct.Memory* @routine_movzwl___rsi__rdx_2____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c36)
  store %struct.Memory* %call_406c36, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 406c3a	 Bytes: 4
  %loadMem_406c3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c3a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c3a)
  store %struct.Memory* %call_406c3a, %struct.Memory** %MEMORY

  ; Code: movq 0xc60(%rdx), %rdx	 RIP: 406c3e	 Bytes: 7
  %loadMem_406c3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c3e = call %struct.Memory* @routine_movq_0xc60__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c3e)
  store %struct.Memory* %call_406c3e, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rsi	 RIP: 406c45	 Bytes: 4
  %loadMem_406c45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c45 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c45)
  store %struct.Memory* %call_406c45, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rsi), %edi	 RIP: 406c49	 Bytes: 3
  %loadMem_406c49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c49 = call %struct.Memory* @routine_movl_0x3c__rsi____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c49)
  store %struct.Memory* %call_406c49, %struct.Memory** %MEMORY

  ; Code: shrl $0x1, %edi	 RIP: 406c4c	 Bytes: 3
  %loadMem_406c4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c4c = call %struct.Memory* @routine_shrl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c4c)
  store %struct.Memory* %call_406c4c, %struct.Memory** %MEMORY

  ; Code: movl %edi, %edi	 RIP: 406c4f	 Bytes: 2
  %loadMem_406c4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c4f = call %struct.Memory* @routine_movl__edi___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c4f)
  store %struct.Memory* %call_406c4f, %struct.Memory** %MEMORY

  ; Code: movl %edi, %esi	 RIP: 406c51	 Bytes: 2
  %loadMem_406c51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c51 = call %struct.Memory* @routine_movl__edi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c51)
  store %struct.Memory* %call_406c51, %struct.Memory** %MEMORY

  ; Code: movzbl (%rdx,%rsi,1), %edi	 RIP: 406c53	 Bytes: 4
  %loadMem_406c53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c53 = call %struct.Memory* @routine_movzbl___rdx__rsi_1____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c53)
  store %struct.Memory* %call_406c53, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 406c57	 Bytes: 4
  %loadMem_406c57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c57 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c57)
  store %struct.Memory* %call_406c57, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rdx), %r8d	 RIP: 406c5b	 Bytes: 4
  %loadMem_406c5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c5b = call %struct.Memory* @routine_movl_0x3c__rdx____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c5b)
  store %struct.Memory* %call_406c5b, %struct.Memory** %MEMORY

  ; Code: shll $0x2, %r8d	 RIP: 406c5f	 Bytes: 4
  %loadMem_406c5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c5f = call %struct.Memory* @routine_shll__0x2___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c5f)
  store %struct.Memory* %call_406c5f, %struct.Memory** %MEMORY

  ; Code: andl $0x4, %r8d	 RIP: 406c63	 Bytes: 4
  %loadMem_406c63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c63 = call %struct.Memory* @routine_andl__0x4___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c63)
  store %struct.Memory* %call_406c63, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %ecx	 RIP: 406c67	 Bytes: 3
  %loadMem_406c67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c67 = call %struct.Memory* @routine_movl__r8d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c67)
  store %struct.Memory* %call_406c67, %struct.Memory** %MEMORY

  ; Code: shrl %cl, %edi	 RIP: 406c6a	 Bytes: 2
  %loadMem_406c6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c6a = call %struct.Memory* @routine_shrl__cl___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c6a)
  store %struct.Memory* %call_406c6a, %struct.Memory** %MEMORY

  ; Code: andl $0xf, %edi	 RIP: 406c6c	 Bytes: 3
  %loadMem_406c6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c6c = call %struct.Memory* @routine_andl__0xf___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c6c)
  store %struct.Memory* %call_406c6c, %struct.Memory** %MEMORY

  ; Code: shll $0x10, %edi	 RIP: 406c6f	 Bytes: 3
  %loadMem_406c6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c6f = call %struct.Memory* @routine_shll__0x10___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c6f)
  store %struct.Memory* %call_406c6f, %struct.Memory** %MEMORY

  ; Code: orl %edi, %eax	 RIP: 406c72	 Bytes: 2
  %loadMem_406c72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c72 = call %struct.Memory* @routine_orl__edi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c72)
  store %struct.Memory* %call_406c72, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 406c74	 Bytes: 4
  %loadMem_406c74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c74 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c74)
  store %struct.Memory* %call_406c74, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x3c(%rdx)	 RIP: 406c78	 Bytes: 3
  %loadMem_406c78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c78 = call %struct.Memory* @routine_movl__eax__0x3c__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c78)
  store %struct.Memory* %call_406c78, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 406c7b	 Bytes: 4
  %loadMem_406c7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c7b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c7b)
  store %struct.Memory* %call_406c7b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x18(%rdx)	 RIP: 406c7f	 Bytes: 4
  %loadMem_406c7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c7f = call %struct.Memory* @routine_cmpl__0x0__0x18__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c7f)
  store %struct.Memory* %call_406c7f, %struct.Memory** %MEMORY

  ; Code: jne .L_406ccd	 RIP: 406c83	 Bytes: 6
  %loadMem_406c83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c83 = call %struct.Memory* @routine_jne_.L_406ccd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c83, i8* %BRANCH_TAKEN, i64 74, i64 6, i64 6)
  store %struct.Memory* %call_406c83, %struct.Memory** %MEMORY

  %loadBr_406c83 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_406c83 = icmp eq i8 %loadBr_406c83, 1
  br i1 %cmpBr_406c83, label %block_.L_406ccd, label %block_406c89

block_406c89:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 406c89	 Bytes: 4
  %loadMem_406c89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c89 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c89)
  store %struct.Memory* %call_406c89, %struct.Memory** %MEMORY

  ; Code: movslq 0x1c(%rax), %rax	 RIP: 406c8d	 Bytes: 4
  %loadMem_406c8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c8d = call %struct.Memory* @routine_movslq_0x1c__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c8d)
  store %struct.Memory* %call_406c8d, %struct.Memory** %MEMORY

  ; Code: movl 0x618570(,%rax,4), %ecx	 RIP: 406c91	 Bytes: 7
  %loadMem_406c91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c91 = call %struct.Memory* @routine_movl_0x618570___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c91)
  store %struct.Memory* %call_406c91, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 406c98	 Bytes: 4
  %loadMem_406c98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c98 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c98)
  store %struct.Memory* %call_406c98, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x18(%rax)	 RIP: 406c9c	 Bytes: 3
  %loadMem_406c9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c9c = call %struct.Memory* @routine_movl__ecx__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c9c)
  store %struct.Memory* %call_406c9c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 406c9f	 Bytes: 4
  %loadMem_406c9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c9f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c9f)
  store %struct.Memory* %call_406c9f, %struct.Memory** %MEMORY

  ; Code: movl 0x1c(%rax), %ecx	 RIP: 406ca3	 Bytes: 3
  %loadMem_406ca3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ca3 = call %struct.Memory* @routine_movl_0x1c__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ca3)
  store %struct.Memory* %call_406ca3, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 406ca6	 Bytes: 3
  %loadMem_406ca6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ca6 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ca6)
  store %struct.Memory* %call_406ca6, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x1c(%rax)	 RIP: 406ca9	 Bytes: 3
  %loadMem_406ca9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ca9 = call %struct.Memory* @routine_movl__ecx__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ca9)
  store %struct.Memory* %call_406ca9, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 406cac	 Bytes: 4
  %loadMem_406cac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406cac = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406cac)
  store %struct.Memory* %call_406cac, %struct.Memory** %MEMORY

  ; Code: cmpl $0x200, 0x1c(%rax)	 RIP: 406cb0	 Bytes: 7
  %loadMem_406cb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406cb0 = call %struct.Memory* @routine_cmpl__0x200__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406cb0)
  store %struct.Memory* %call_406cb0, %struct.Memory** %MEMORY

  ; Code: jne .L_406cc8	 RIP: 406cb7	 Bytes: 6
  %loadMem_406cb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406cb7 = call %struct.Memory* @routine_jne_.L_406cc8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406cb7, i8* %BRANCH_TAKEN, i64 17, i64 6, i64 6)
  store %struct.Memory* %call_406cb7, %struct.Memory** %MEMORY

  %loadBr_406cb7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_406cb7 = icmp eq i8 %loadBr_406cb7, 1
  br i1 %cmpBr_406cb7, label %block_.L_406cc8, label %block_406cbd

block_406cbd:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 406cbd	 Bytes: 4
  %loadMem_406cbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406cbd = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406cbd)
  store %struct.Memory* %call_406cbd, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x1c(%rax)	 RIP: 406cc1	 Bytes: 7
  %loadMem_406cc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406cc1 = call %struct.Memory* @routine_movl__0x0__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406cc1)
  store %struct.Memory* %call_406cc1, %struct.Memory** %MEMORY

  ; Code: .L_406cc8:	 RIP: 406cc8	 Bytes: 0
  br label %block_.L_406cc8
block_.L_406cc8:

  ; Code: jmpq .L_406ccd	 RIP: 406cc8	 Bytes: 5
  %loadMem_406cc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406cc8 = call %struct.Memory* @routine_jmpq_.L_406ccd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406cc8, i64 5, i64 5)
  store %struct.Memory* %call_406cc8, %struct.Memory** %MEMORY

  br label %block_.L_406ccd

  ; Code: .L_406ccd:	 RIP: 406ccd	 Bytes: 0
block_.L_406ccd:

  ; Code: xorl %eax, %eax	 RIP: 406ccd	 Bytes: 2
  %loadMem_406ccd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ccd = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ccd)
  store %struct.Memory* %call_406ccd, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %ecx	 RIP: 406ccf	 Bytes: 5
  %loadMem_406ccf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ccf = call %struct.Memory* @routine_movl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ccf)
  store %struct.Memory* %call_406ccf, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 406cd4	 Bytes: 4
  %loadMem_406cd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406cd4 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406cd4)
  store %struct.Memory* %call_406cd4, %struct.Memory** %MEMORY

  ; Code: movl 0x18(%rdx), %esi	 RIP: 406cd8	 Bytes: 3
  %loadMem_406cd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406cd8 = call %struct.Memory* @routine_movl_0x18__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406cd8)
  store %struct.Memory* %call_406cd8, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %esi	 RIP: 406cdb	 Bytes: 3
  %loadMem_406cdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406cdb = call %struct.Memory* @routine_addl__0xffffffff___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406cdb)
  store %struct.Memory* %call_406cdb, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x18(%rdx)	 RIP: 406cde	 Bytes: 3
  %loadMem_406cde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406cde = call %struct.Memory* @routine_movl__esi__0x18__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406cde)
  store %struct.Memory* %call_406cde, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 406ce1	 Bytes: 4
  %loadMem_406ce1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ce1 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ce1)
  store %struct.Memory* %call_406ce1, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x18(%rdx)	 RIP: 406ce5	 Bytes: 4
  %loadMem_406ce5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ce5 = call %struct.Memory* @routine_cmpl__0x1__0x18__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ce5)
  store %struct.Memory* %call_406ce5, %struct.Memory** %MEMORY

  ; Code: cmovel %ecx, %eax	 RIP: 406ce9	 Bytes: 3
  %loadMem_406ce9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ce9 = call %struct.Memory* @routine_cmovel__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ce9)
  store %struct.Memory* %call_406ce9, %struct.Memory** %MEMORY

  ; Code: movzbl -0x11(%rbp), %ecx	 RIP: 406cec	 Bytes: 4
  %loadMem_406cec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406cec = call %struct.Memory* @routine_movzbl_MINUS0x11__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406cec)
  store %struct.Memory* %call_406cec, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %ecx	 RIP: 406cf0	 Bytes: 2
  %loadMem_406cf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406cf0 = call %struct.Memory* @routine_xorl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406cf0)
  store %struct.Memory* %call_406cf0, %struct.Memory** %MEMORY

  ; Code: movb %cl, %dil	 RIP: 406cf2	 Bytes: 3
  %loadMem_406cf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406cf2 = call %struct.Memory* @routine_movb__cl___dil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406cf2)
  store %struct.Memory* %call_406cf2, %struct.Memory** %MEMORY

  ; Code: movb %dil, -0x11(%rbp)	 RIP: 406cf5	 Bytes: 4
  %loadMem_406cf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406cf5 = call %struct.Memory* @routine_movb__dil__MINUS0x11__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406cf5)
  store %struct.Memory* %call_406cf5, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 406cf9	 Bytes: 4
  %loadMem_406cf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406cf9 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406cf9)
  store %struct.Memory* %call_406cf9, %struct.Memory** %MEMORY

  ; Code: movl 0x444(%rdx), %eax	 RIP: 406cfd	 Bytes: 6
  %loadMem_406cfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406cfd = call %struct.Memory* @routine_movl_0x444__rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406cfd)
  store %struct.Memory* %call_406cfd, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 406d03	 Bytes: 3
  %loadMem_406d03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d03 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d03)
  store %struct.Memory* %call_406d03, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x444(%rdx)	 RIP: 406d06	 Bytes: 6
  %loadMem_406d06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d06 = call %struct.Memory* @routine_movl__eax__0x444__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d06)
  store %struct.Memory* %call_406d06, %struct.Memory** %MEMORY

  ; Code: movzbl -0x11(%rbp), %eax	 RIP: 406d0c	 Bytes: 4
  %loadMem_406d0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d0c = call %struct.Memory* @routine_movzbl_MINUS0x11__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d0c)
  store %struct.Memory* %call_406d0c, %struct.Memory** %MEMORY

  ; Code: addl $0x4, %eax	 RIP: 406d10	 Bytes: 3
  %loadMem_406d10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d10 = call %struct.Memory* @routine_addl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d10)
  store %struct.Memory* %call_406d10, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 406d13	 Bytes: 4
  %loadMem_406d13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d13 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d13)
  store %struct.Memory* %call_406d13, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x10(%rdx)	 RIP: 406d17	 Bytes: 3
  %loadMem_406d17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d17 = call %struct.Memory* @routine_movl__eax__0x10__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d17)
  store %struct.Memory* %call_406d17, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 406d1a	 Bytes: 4
  %loadMem_406d1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d1a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d1a)
  store %struct.Memory* %call_406d1a, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rdx), %edi	 RIP: 406d1e	 Bytes: 3
  %loadMem_406d1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d1e = call %struct.Memory* @routine_movl_0x3c__rdx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d1e)
  store %struct.Memory* %call_406d1e, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 406d21	 Bytes: 4
  %loadMem_406d21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d21 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d21)
  store %struct.Memory* %call_406d21, %struct.Memory** %MEMORY

  ; Code: addq $0x448, %rdx	 RIP: 406d25	 Bytes: 7
  %loadMem_406d25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d25 = call %struct.Memory* @routine_addq__0x448___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d25)
  store %struct.Memory* %call_406d25, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %rsi	 RIP: 406d2c	 Bytes: 3
  %loadMem_406d2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d2c = call %struct.Memory* @routine_movq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d2c)
  store %struct.Memory* %call_406d2c, %struct.Memory** %MEMORY

  ; Code: callq .BZ2_indexIntoF	 RIP: 406d2f	 Bytes: 5
  %loadMem1_406d2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_406d2f = call %struct.Memory* @routine_callq_.BZ2_indexIntoF(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_406d2f, i64 -2527, i64 5, i64 5)
  store %struct.Memory* %call1_406d2f, %struct.Memory** %MEMORY

  %loadMem2_406d2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_406d2f = load i64, i64* %3
  %call2_406d2f = call %struct.Memory* @sub_406350.BZ2_indexIntoF(%struct.State* %0, i64  %loadPC_406d2f, %struct.Memory* %loadMem2_406d2f)
  store %struct.Memory* %call2_406d2f, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 406d34	 Bytes: 4
  %loadMem_406d34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d34 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d34)
  store %struct.Memory* %call_406d34, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x40(%rdx)	 RIP: 406d38	 Bytes: 3
  %loadMem_406d38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d38 = call %struct.Memory* @routine_movl__eax__0x40__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d38)
  store %struct.Memory* %call_406d38, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 406d3b	 Bytes: 4
  %loadMem_406d3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d3b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d3b)
  store %struct.Memory* %call_406d3b, %struct.Memory** %MEMORY

  ; Code: movq 0xc58(%rdx), %rdx	 RIP: 406d3f	 Bytes: 7
  %loadMem_406d3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d3f = call %struct.Memory* @routine_movq_0xc58__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d3f)
  store %struct.Memory* %call_406d3f, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rsi	 RIP: 406d46	 Bytes: 4
  %loadMem_406d46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d46 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d46)
  store %struct.Memory* %call_406d46, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rsi), %eax	 RIP: 406d4a	 Bytes: 3
  %loadMem_406d4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d4a = call %struct.Memory* @routine_movl_0x3c__rsi____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d4a)
  store %struct.Memory* %call_406d4a, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 406d4d	 Bytes: 2
  %loadMem_406d4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d4d = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d4d)
  store %struct.Memory* %call_406d4d, %struct.Memory** %MEMORY

  ; Code: movzwl (%rdx,%rsi,2), %eax	 RIP: 406d4f	 Bytes: 4
  %loadMem_406d4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d4f = call %struct.Memory* @routine_movzwl___rdx__rsi_2____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d4f)
  store %struct.Memory* %call_406d4f, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 406d53	 Bytes: 4
  %loadMem_406d53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d53 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d53)
  store %struct.Memory* %call_406d53, %struct.Memory** %MEMORY

  ; Code: movq 0xc60(%rdx), %rdx	 RIP: 406d57	 Bytes: 7
  %loadMem_406d57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d57 = call %struct.Memory* @routine_movq_0xc60__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d57)
  store %struct.Memory* %call_406d57, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rsi	 RIP: 406d5e	 Bytes: 4
  %loadMem_406d5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d5e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d5e)
  store %struct.Memory* %call_406d5e, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rsi), %ecx	 RIP: 406d62	 Bytes: 3
  %loadMem_406d62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d62 = call %struct.Memory* @routine_movl_0x3c__rsi____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d62)
  store %struct.Memory* %call_406d62, %struct.Memory** %MEMORY

  ; Code: shrl $0x1, %ecx	 RIP: 406d65	 Bytes: 3
  %loadMem_406d65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d65 = call %struct.Memory* @routine_shrl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d65)
  store %struct.Memory* %call_406d65, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %ecx	 RIP: 406d68	 Bytes: 2
  %loadMem_406d68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d68 = call %struct.Memory* @routine_movl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d68)
  store %struct.Memory* %call_406d68, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %esi	 RIP: 406d6a	 Bytes: 2
  %loadMem_406d6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d6a = call %struct.Memory* @routine_movl__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d6a)
  store %struct.Memory* %call_406d6a, %struct.Memory** %MEMORY

  ; Code: movzbl (%rdx,%rsi,1), %ecx	 RIP: 406d6c	 Bytes: 4
  %loadMem_406d6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d6c = call %struct.Memory* @routine_movzbl___rdx__rsi_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d6c)
  store %struct.Memory* %call_406d6c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 406d70	 Bytes: 4
  %loadMem_406d70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d70 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d70)
  store %struct.Memory* %call_406d70, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rdx), %edi	 RIP: 406d74	 Bytes: 3
  %loadMem_406d74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d74 = call %struct.Memory* @routine_movl_0x3c__rdx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d74)
  store %struct.Memory* %call_406d74, %struct.Memory** %MEMORY

  ; Code: shll $0x2, %edi	 RIP: 406d77	 Bytes: 3
  %loadMem_406d77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d77 = call %struct.Memory* @routine_shll__0x2___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d77)
  store %struct.Memory* %call_406d77, %struct.Memory** %MEMORY

  ; Code: andl $0x4, %edi	 RIP: 406d7a	 Bytes: 3
  %loadMem_406d7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d7a = call %struct.Memory* @routine_andl__0x4___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d7a)
  store %struct.Memory* %call_406d7a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x1c(%rbp)	 RIP: 406d7d	 Bytes: 3
  %loadMem_406d7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d7d = call %struct.Memory* @routine_movl__ecx__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d7d)
  store %struct.Memory* %call_406d7d, %struct.Memory** %MEMORY

  ; Code: movl %edi, %ecx	 RIP: 406d80	 Bytes: 2
  %loadMem_406d80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d80 = call %struct.Memory* @routine_movl__edi___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d80)
  store %struct.Memory* %call_406d80, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %edi	 RIP: 406d82	 Bytes: 3
  %loadMem_406d82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d82 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d82)
  store %struct.Memory* %call_406d82, %struct.Memory** %MEMORY

  ; Code: shrl %cl, %edi	 RIP: 406d85	 Bytes: 2
  %loadMem_406d85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d85 = call %struct.Memory* @routine_shrl__cl___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d85)
  store %struct.Memory* %call_406d85, %struct.Memory** %MEMORY

  ; Code: andl $0xf, %edi	 RIP: 406d87	 Bytes: 3
  %loadMem_406d87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d87 = call %struct.Memory* @routine_andl__0xf___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d87)
  store %struct.Memory* %call_406d87, %struct.Memory** %MEMORY

  ; Code: shll $0x10, %edi	 RIP: 406d8a	 Bytes: 3
  %loadMem_406d8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d8a = call %struct.Memory* @routine_shll__0x10___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d8a)
  store %struct.Memory* %call_406d8a, %struct.Memory** %MEMORY

  ; Code: orl %edi, %eax	 RIP: 406d8d	 Bytes: 2
  %loadMem_406d8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d8d = call %struct.Memory* @routine_orl__edi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d8d)
  store %struct.Memory* %call_406d8d, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 406d8f	 Bytes: 4
  %loadMem_406d8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d8f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d8f)
  store %struct.Memory* %call_406d8f, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x3c(%rdx)	 RIP: 406d93	 Bytes: 3
  %loadMem_406d93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d93 = call %struct.Memory* @routine_movl__eax__0x3c__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d93)
  store %struct.Memory* %call_406d93, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 406d96	 Bytes: 4
  %loadMem_406d96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d96 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d96)
  store %struct.Memory* %call_406d96, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x18(%rdx)	 RIP: 406d9a	 Bytes: 4
  %loadMem_406d9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d9a = call %struct.Memory* @routine_cmpl__0x0__0x18__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d9a)
  store %struct.Memory* %call_406d9a, %struct.Memory** %MEMORY

  ; Code: jne .L_406de8	 RIP: 406d9e	 Bytes: 6
  %loadMem_406d9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d9e = call %struct.Memory* @routine_jne_.L_406de8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d9e, i8* %BRANCH_TAKEN, i64 74, i64 6, i64 6)
  store %struct.Memory* %call_406d9e, %struct.Memory** %MEMORY

  %loadBr_406d9e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_406d9e = icmp eq i8 %loadBr_406d9e, 1
  br i1 %cmpBr_406d9e, label %block_.L_406de8, label %block_406da4

block_406da4:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 406da4	 Bytes: 4
  %loadMem_406da4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406da4 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406da4)
  store %struct.Memory* %call_406da4, %struct.Memory** %MEMORY

  ; Code: movslq 0x1c(%rax), %rax	 RIP: 406da8	 Bytes: 4
  %loadMem_406da8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406da8 = call %struct.Memory* @routine_movslq_0x1c__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406da8)
  store %struct.Memory* %call_406da8, %struct.Memory** %MEMORY

  ; Code: movl 0x618570(,%rax,4), %ecx	 RIP: 406dac	 Bytes: 7
  %loadMem_406dac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406dac = call %struct.Memory* @routine_movl_0x618570___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406dac)
  store %struct.Memory* %call_406dac, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 406db3	 Bytes: 4
  %loadMem_406db3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406db3 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406db3)
  store %struct.Memory* %call_406db3, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x18(%rax)	 RIP: 406db7	 Bytes: 3
  %loadMem_406db7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406db7 = call %struct.Memory* @routine_movl__ecx__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406db7)
  store %struct.Memory* %call_406db7, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 406dba	 Bytes: 4
  %loadMem_406dba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406dba = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406dba)
  store %struct.Memory* %call_406dba, %struct.Memory** %MEMORY

  ; Code: movl 0x1c(%rax), %ecx	 RIP: 406dbe	 Bytes: 3
  %loadMem_406dbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406dbe = call %struct.Memory* @routine_movl_0x1c__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406dbe)
  store %struct.Memory* %call_406dbe, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 406dc1	 Bytes: 3
  %loadMem_406dc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406dc1 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406dc1)
  store %struct.Memory* %call_406dc1, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x1c(%rax)	 RIP: 406dc4	 Bytes: 3
  %loadMem_406dc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406dc4 = call %struct.Memory* @routine_movl__ecx__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406dc4)
  store %struct.Memory* %call_406dc4, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 406dc7	 Bytes: 4
  %loadMem_406dc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406dc7 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406dc7)
  store %struct.Memory* %call_406dc7, %struct.Memory** %MEMORY

  ; Code: cmpl $0x200, 0x1c(%rax)	 RIP: 406dcb	 Bytes: 7
  %loadMem_406dcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406dcb = call %struct.Memory* @routine_cmpl__0x200__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406dcb)
  store %struct.Memory* %call_406dcb, %struct.Memory** %MEMORY

  ; Code: jne .L_406de3	 RIP: 406dd2	 Bytes: 6
  %loadMem_406dd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406dd2 = call %struct.Memory* @routine_jne_.L_406de3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406dd2, i8* %BRANCH_TAKEN, i64 17, i64 6, i64 6)
  store %struct.Memory* %call_406dd2, %struct.Memory** %MEMORY

  %loadBr_406dd2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_406dd2 = icmp eq i8 %loadBr_406dd2, 1
  br i1 %cmpBr_406dd2, label %block_.L_406de3, label %block_406dd8

block_406dd8:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 406dd8	 Bytes: 4
  %loadMem_406dd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406dd8 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406dd8)
  store %struct.Memory* %call_406dd8, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x1c(%rax)	 RIP: 406ddc	 Bytes: 7
  %loadMem_406ddc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ddc = call %struct.Memory* @routine_movl__0x0__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ddc)
  store %struct.Memory* %call_406ddc, %struct.Memory** %MEMORY

  ; Code: .L_406de3:	 RIP: 406de3	 Bytes: 0
  br label %block_.L_406de3
block_.L_406de3:

  ; Code: jmpq .L_406de8	 RIP: 406de3	 Bytes: 5
  %loadMem_406de3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406de3 = call %struct.Memory* @routine_jmpq_.L_406de8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406de3, i64 5, i64 5)
  store %struct.Memory* %call_406de3, %struct.Memory** %MEMORY

  br label %block_.L_406de8

  ; Code: .L_406de8:	 RIP: 406de8	 Bytes: 0
block_.L_406de8:

  ; Code: xorl %eax, %eax	 RIP: 406de8	 Bytes: 2
  %loadMem_406de8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406de8 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406de8)
  store %struct.Memory* %call_406de8, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %ecx	 RIP: 406dea	 Bytes: 5
  %loadMem_406dea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406dea = call %struct.Memory* @routine_movl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406dea)
  store %struct.Memory* %call_406dea, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 406def	 Bytes: 4
  %loadMem_406def = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406def = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406def)
  store %struct.Memory* %call_406def, %struct.Memory** %MEMORY

  ; Code: movl 0x18(%rdx), %esi	 RIP: 406df3	 Bytes: 3
  %loadMem_406df3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406df3 = call %struct.Memory* @routine_movl_0x18__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406df3)
  store %struct.Memory* %call_406df3, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %esi	 RIP: 406df6	 Bytes: 3
  %loadMem_406df6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406df6 = call %struct.Memory* @routine_addl__0xffffffff___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406df6)
  store %struct.Memory* %call_406df6, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x18(%rdx)	 RIP: 406df9	 Bytes: 3
  %loadMem_406df9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406df9 = call %struct.Memory* @routine_movl__esi__0x18__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406df9)
  store %struct.Memory* %call_406df9, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 406dfc	 Bytes: 4
  %loadMem_406dfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406dfc = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406dfc)
  store %struct.Memory* %call_406dfc, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x18(%rdx)	 RIP: 406e00	 Bytes: 4
  %loadMem_406e00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e00 = call %struct.Memory* @routine_cmpl__0x1__0x18__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e00)
  store %struct.Memory* %call_406e00, %struct.Memory** %MEMORY

  ; Code: cmovel %ecx, %eax	 RIP: 406e04	 Bytes: 3
  %loadMem_406e04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e04 = call %struct.Memory* @routine_cmovel__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e04)
  store %struct.Memory* %call_406e04, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 406e07	 Bytes: 4
  %loadMem_406e07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e07 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e07)
  store %struct.Memory* %call_406e07, %struct.Memory** %MEMORY

  ; Code: xorl 0x40(%rdx), %eax	 RIP: 406e0b	 Bytes: 3
  %loadMem_406e0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e0b = call %struct.Memory* @routine_xorl_0x40__rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e0b)
  store %struct.Memory* %call_406e0b, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x40(%rdx)	 RIP: 406e0e	 Bytes: 3
  %loadMem_406e0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e0e = call %struct.Memory* @routine_movl__eax__0x40__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e0e)
  store %struct.Memory* %call_406e0e, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 406e11	 Bytes: 4
  %loadMem_406e11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e11 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e11)
  store %struct.Memory* %call_406e11, %struct.Memory** %MEMORY

  ; Code: movl 0x444(%rdx), %eax	 RIP: 406e15	 Bytes: 6
  %loadMem_406e15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e15 = call %struct.Memory* @routine_movl_0x444__rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e15)
  store %struct.Memory* %call_406e15, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 406e1b	 Bytes: 3
  %loadMem_406e1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e1b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e1b)
  store %struct.Memory* %call_406e1b, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x444(%rdx)	 RIP: 406e1e	 Bytes: 6
  %loadMem_406e1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e1e = call %struct.Memory* @routine_movl__eax__0x444__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e1e)
  store %struct.Memory* %call_406e1e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4066af	 RIP: 406e24	 Bytes: 5
  %loadMem_406e24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e24 = call %struct.Memory* @routine_jmpq_.L_4066af(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e24, i64 -1909, i64 5)
  store %struct.Memory* %call_406e24, %struct.Memory** %MEMORY

  br label %block_.L_4066af

  ; Code: .L_406e29:	 RIP: 406e29	 Bytes: 0
block_.L_406e29:

  ; Code: jmpq .L_406e2e	 RIP: 406e29	 Bytes: 5
  %loadMem_406e29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e29 = call %struct.Memory* @routine_jmpq_.L_406e2e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e29, i64 5, i64 5)
  store %struct.Memory* %call_406e29, %struct.Memory** %MEMORY

  br label %block_.L_406e2e

  ; Code: .L_406e2e:	 RIP: 406e2e	 Bytes: 0
block_.L_406e2e:

  ; Code: jmpq .L_406e33	 RIP: 406e2e	 Bytes: 5
  %loadMem_406e2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e2e = call %struct.Memory* @routine_jmpq_.L_406e33(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e2e, i64 5, i64 5)
  store %struct.Memory* %call_406e2e, %struct.Memory** %MEMORY

  br label %block_.L_406e33

  ; Code: .L_406e33:	 RIP: 406e33	 Bytes: 0
block_.L_406e33:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 406e33	 Bytes: 4
  %loadMem_406e33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e33 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e33)
  store %struct.Memory* %call_406e33, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 406e37	 Bytes: 3
  %loadMem_406e37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e37 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e37)
  store %struct.Memory* %call_406e37, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x20(%rax)	 RIP: 406e3a	 Bytes: 4
  %loadMem_406e3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e3a = call %struct.Memory* @routine_cmpl__0x0__0x20__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e3a)
  store %struct.Memory* %call_406e3a, %struct.Memory** %MEMORY

  ; Code: jne .L_406e4d	 RIP: 406e3e	 Bytes: 6
  %loadMem_406e3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e3e = call %struct.Memory* @routine_jne_.L_406e4d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e3e, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_406e3e, %struct.Memory** %MEMORY

  %loadBr_406e3e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_406e3e = icmp eq i8 %loadBr_406e3e, 1
  br i1 %cmpBr_406e3e, label %block_.L_406e4d, label %block_406e44

block_406e44:
  ; Code: movb $0x0, -0x1(%rbp)	 RIP: 406e44	 Bytes: 4
  %loadMem_406e44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e44 = call %struct.Memory* @routine_movb__0x0__MINUS0x1__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e44)
  store %struct.Memory* %call_406e44, %struct.Memory** %MEMORY

  ; Code: jmpq .L_407333	 RIP: 406e48	 Bytes: 5
  %loadMem_406e48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e48 = call %struct.Memory* @routine_jmpq_.L_407333(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e48, i64 1259, i64 5)
  store %struct.Memory* %call_406e48, %struct.Memory** %MEMORY

  br label %block_.L_407333

  ; Code: .L_406e4d:	 RIP: 406e4d	 Bytes: 0
block_.L_406e4d:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 406e4d	 Bytes: 4
  %loadMem_406e4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e4d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e4d)
  store %struct.Memory* %call_406e4d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x10(%rax)	 RIP: 406e51	 Bytes: 4
  %loadMem_406e51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e51 = call %struct.Memory* @routine_cmpl__0x0__0x10__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e51)
  store %struct.Memory* %call_406e51, %struct.Memory** %MEMORY

  ; Code: jne .L_406e60	 RIP: 406e55	 Bytes: 6
  %loadMem_406e55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e55 = call %struct.Memory* @routine_jne_.L_406e60(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e55, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_406e55, %struct.Memory** %MEMORY

  %loadBr_406e55 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_406e55 = icmp eq i8 %loadBr_406e55, 1
  br i1 %cmpBr_406e55, label %block_.L_406e60, label %block_406e5b

block_406e5b:
  ; Code: jmpq .L_406f13	 RIP: 406e5b	 Bytes: 5
  %loadMem_406e5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e5b = call %struct.Memory* @routine_jmpq_.L_406f13(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e5b, i64 184, i64 5)
  store %struct.Memory* %call_406e5b, %struct.Memory** %MEMORY

  br label %block_.L_406f13

  ; Code: .L_406e60:	 RIP: 406e60	 Bytes: 0
block_.L_406e60:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 406e60	 Bytes: 4
  %loadMem_406e60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e60 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e60)
  store %struct.Memory* %call_406e60, %struct.Memory** %MEMORY

  ; Code: movb 0xc(%rax), %cl	 RIP: 406e64	 Bytes: 3
  %loadMem_406e64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e64 = call %struct.Memory* @routine_movb_0xc__rax____cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e64)
  store %struct.Memory* %call_406e64, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 406e67	 Bytes: 4
  %loadMem_406e67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e67 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e67)
  store %struct.Memory* %call_406e67, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 406e6b	 Bytes: 3
  %loadMem_406e6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e6b = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e6b)
  store %struct.Memory* %call_406e6b, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax), %rax	 RIP: 406e6e	 Bytes: 4
  %loadMem_406e6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e6e = call %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e6e)
  store %struct.Memory* %call_406e6e, %struct.Memory** %MEMORY

  ; Code: movb %cl, (%rax)	 RIP: 406e72	 Bytes: 2
  %loadMem_406e72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e72 = call %struct.Memory* @routine_movb__cl____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e72)
  store %struct.Memory* %call_406e72, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 406e74	 Bytes: 4
  %loadMem_406e74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e74 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e74)
  store %struct.Memory* %call_406e74, %struct.Memory** %MEMORY

  ; Code: movl 0xc70(%rax), %edx	 RIP: 406e78	 Bytes: 6
  %loadMem_406e78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e78 = call %struct.Memory* @routine_movl_0xc70__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e78)
  store %struct.Memory* %call_406e78, %struct.Memory** %MEMORY

  ; Code: shll $0x8, %edx	 RIP: 406e7e	 Bytes: 3
  %loadMem_406e7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e7e = call %struct.Memory* @routine_shll__0x8___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e7e)
  store %struct.Memory* %call_406e7e, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 406e81	 Bytes: 4
  %loadMem_406e81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e81 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e81)
  store %struct.Memory* %call_406e81, %struct.Memory** %MEMORY

  ; Code: movl 0xc70(%rax), %esi	 RIP: 406e85	 Bytes: 6
  %loadMem_406e85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e85 = call %struct.Memory* @routine_movl_0xc70__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e85)
  store %struct.Memory* %call_406e85, %struct.Memory** %MEMORY

  ; Code: shrl $0x18, %esi	 RIP: 406e8b	 Bytes: 3
  %loadMem_406e8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e8b = call %struct.Memory* @routine_shrl__0x18___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e8b)
  store %struct.Memory* %call_406e8b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 406e8e	 Bytes: 4
  %loadMem_406e8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e8e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e8e)
  store %struct.Memory* %call_406e8e, %struct.Memory** %MEMORY

  ; Code: movzbl 0xc(%rax), %edi	 RIP: 406e92	 Bytes: 4
  %loadMem_406e92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e92 = call %struct.Memory* @routine_movzbl_0xc__rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e92)
  store %struct.Memory* %call_406e92, %struct.Memory** %MEMORY

  ; Code: xorl %edi, %esi	 RIP: 406e96	 Bytes: 2
  %loadMem_406e96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e96 = call %struct.Memory* @routine_xorl__edi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e96)
  store %struct.Memory* %call_406e96, %struct.Memory** %MEMORY

  ; Code: movl %esi, %esi	 RIP: 406e98	 Bytes: 2
  %loadMem_406e98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e98 = call %struct.Memory* @routine_movl__esi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e98)
  store %struct.Memory* %call_406e98, %struct.Memory** %MEMORY

  ; Code: movl %esi, %eax	 RIP: 406e9a	 Bytes: 2
  %loadMem_406e9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e9a = call %struct.Memory* @routine_movl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e9a)
  store %struct.Memory* %call_406e9a, %struct.Memory** %MEMORY

  ; Code: xorl 0x618170(,%rax,4), %edx	 RIP: 406e9c	 Bytes: 7
  %loadMem_406e9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e9c = call %struct.Memory* @routine_xorl_0x618170___rax_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e9c)
  store %struct.Memory* %call_406e9c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 406ea3	 Bytes: 4
  %loadMem_406ea3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ea3 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ea3)
  store %struct.Memory* %call_406ea3, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0xc70(%rax)	 RIP: 406ea7	 Bytes: 6
  %loadMem_406ea7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ea7 = call %struct.Memory* @routine_movl__edx__0xc70__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ea7)
  store %struct.Memory* %call_406ea7, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 406ead	 Bytes: 4
  %loadMem_406ead = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ead = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ead)
  store %struct.Memory* %call_406ead, %struct.Memory** %MEMORY

  ; Code: movl 0x10(%rax), %edx	 RIP: 406eb1	 Bytes: 3
  %loadMem_406eb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406eb1 = call %struct.Memory* @routine_movl_0x10__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406eb1)
  store %struct.Memory* %call_406eb1, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %edx	 RIP: 406eb4	 Bytes: 3
  %loadMem_406eb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406eb4 = call %struct.Memory* @routine_addl__0xffffffff___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406eb4)
  store %struct.Memory* %call_406eb4, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x10(%rax)	 RIP: 406eb7	 Bytes: 3
  %loadMem_406eb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406eb7 = call %struct.Memory* @routine_movl__edx__0x10__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406eb7)
  store %struct.Memory* %call_406eb7, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 406eba	 Bytes: 4
  %loadMem_406eba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406eba = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406eba)
  store %struct.Memory* %call_406eba, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 406ebe	 Bytes: 3
  %loadMem_406ebe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ebe = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ebe)
  store %struct.Memory* %call_406ebe, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax), %r8	 RIP: 406ec1	 Bytes: 4
  %loadMem_406ec1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ec1 = call %struct.Memory* @routine_movq_0x18__rax____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ec1)
  store %struct.Memory* %call_406ec1, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %r8	 RIP: 406ec5	 Bytes: 4
  %loadMem_406ec5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ec5 = call %struct.Memory* @routine_addq__0x1___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ec5)
  store %struct.Memory* %call_406ec5, %struct.Memory** %MEMORY

  ; Code: movq %r8, 0x18(%rax)	 RIP: 406ec9	 Bytes: 4
  %loadMem_406ec9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ec9 = call %struct.Memory* @routine_movq__r8__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ec9)
  store %struct.Memory* %call_406ec9, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 406ecd	 Bytes: 4
  %loadMem_406ecd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ecd = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ecd)
  store %struct.Memory* %call_406ecd, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 406ed1	 Bytes: 3
  %loadMem_406ed1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ed1 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ed1)
  store %struct.Memory* %call_406ed1, %struct.Memory** %MEMORY

  ; Code: movl 0x20(%rax), %edx	 RIP: 406ed4	 Bytes: 3
  %loadMem_406ed4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ed4 = call %struct.Memory* @routine_movl_0x20__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ed4)
  store %struct.Memory* %call_406ed4, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %edx	 RIP: 406ed7	 Bytes: 3
  %loadMem_406ed7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ed7 = call %struct.Memory* @routine_addl__0xffffffff___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ed7)
  store %struct.Memory* %call_406ed7, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x20(%rax)	 RIP: 406eda	 Bytes: 3
  %loadMem_406eda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406eda = call %struct.Memory* @routine_movl__edx__0x20__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406eda)
  store %struct.Memory* %call_406eda, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 406edd	 Bytes: 4
  %loadMem_406edd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406edd = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406edd)
  store %struct.Memory* %call_406edd, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 406ee1	 Bytes: 3
  %loadMem_406ee1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ee1 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ee1)
  store %struct.Memory* %call_406ee1, %struct.Memory** %MEMORY

  ; Code: movl 0x24(%rax), %edx	 RIP: 406ee4	 Bytes: 3
  %loadMem_406ee4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ee4 = call %struct.Memory* @routine_movl_0x24__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ee4)
  store %struct.Memory* %call_406ee4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 406ee7	 Bytes: 3
  %loadMem_406ee7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ee7 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ee7)
  store %struct.Memory* %call_406ee7, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x24(%rax)	 RIP: 406eea	 Bytes: 3
  %loadMem_406eea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406eea = call %struct.Memory* @routine_movl__edx__0x24__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406eea)
  store %struct.Memory* %call_406eea, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 406eed	 Bytes: 4
  %loadMem_406eed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406eed = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406eed)
  store %struct.Memory* %call_406eed, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 406ef1	 Bytes: 3
  %loadMem_406ef1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ef1 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ef1)
  store %struct.Memory* %call_406ef1, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x24(%rax)	 RIP: 406ef4	 Bytes: 4
  %loadMem_406ef4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ef4 = call %struct.Memory* @routine_cmpl__0x0__0x24__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ef4)
  store %struct.Memory* %call_406ef4, %struct.Memory** %MEMORY

  ; Code: jne .L_406f0e	 RIP: 406ef8	 Bytes: 6
  %loadMem_406ef8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ef8 = call %struct.Memory* @routine_jne_.L_406f0e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ef8, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_406ef8, %struct.Memory** %MEMORY

  %loadBr_406ef8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_406ef8 = icmp eq i8 %loadBr_406ef8, 1
  br i1 %cmpBr_406ef8, label %block_.L_406f0e, label %block_406efe

block_406efe:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 406efe	 Bytes: 4
  %loadMem_406efe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406efe = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406efe)
  store %struct.Memory* %call_406efe, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 406f02	 Bytes: 3
  %loadMem_406f02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f02 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f02)
  store %struct.Memory* %call_406f02, %struct.Memory** %MEMORY

  ; Code: movl 0x28(%rax), %ecx	 RIP: 406f05	 Bytes: 3
  %loadMem_406f05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f05 = call %struct.Memory* @routine_movl_0x28__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f05)
  store %struct.Memory* %call_406f05, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 406f08	 Bytes: 3
  %loadMem_406f08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f08 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f08)
  store %struct.Memory* %call_406f08, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x28(%rax)	 RIP: 406f0b	 Bytes: 3
  %loadMem_406f0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f0b = call %struct.Memory* @routine_movl__ecx__0x28__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f0b)
  store %struct.Memory* %call_406f0b, %struct.Memory** %MEMORY

  ; Code: .L_406f0e:	 RIP: 406f0e	 Bytes: 0
  br label %block_.L_406f0e
block_.L_406f0e:

  ; Code: jmpq .L_406e33	 RIP: 406f0e	 Bytes: 5
  %loadMem_406f0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f0e = call %struct.Memory* @routine_jmpq_.L_406e33(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f0e, i64 -219, i64 5)
  store %struct.Memory* %call_406f0e, %struct.Memory** %MEMORY

  br label %block_.L_406e33

  ; Code: .L_406f13:	 RIP: 406f13	 Bytes: 0
block_.L_406f13:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 406f13	 Bytes: 4
  %loadMem_406f13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f13 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f13)
  store %struct.Memory* %call_406f13, %struct.Memory** %MEMORY

  ; Code: movl 0x444(%rax), %ecx	 RIP: 406f17	 Bytes: 6
  %loadMem_406f17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f17 = call %struct.Memory* @routine_movl_0x444__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f17)
  store %struct.Memory* %call_406f17, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 406f1d	 Bytes: 4
  %loadMem_406f1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f1d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f1d)
  store %struct.Memory* %call_406f1d, %struct.Memory** %MEMORY

  ; Code: movl 0xfa50(%rax), %edx	 RIP: 406f21	 Bytes: 6
  %loadMem_406f21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f21 = call %struct.Memory* @routine_movl_0xfa50__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f21)
  store %struct.Memory* %call_406f21, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 406f27	 Bytes: 3
  %loadMem_406f27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f27 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f27)
  store %struct.Memory* %call_406f27, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %ecx	 RIP: 406f2a	 Bytes: 2
  %loadMem_406f2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f2a = call %struct.Memory* @routine_cmpl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f2a)
  store %struct.Memory* %call_406f2a, %struct.Memory** %MEMORY

  ; Code: jne .L_406f3b	 RIP: 406f2c	 Bytes: 6
  %loadMem_406f2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f2c = call %struct.Memory* @routine_jne_.L_406f3b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f2c, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_406f2c, %struct.Memory** %MEMORY

  %loadBr_406f2c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_406f2c = icmp eq i8 %loadBr_406f2c, 1
  br i1 %cmpBr_406f2c, label %block_.L_406f3b, label %block_406f32

block_406f32:
  ; Code: movb $0x0, -0x1(%rbp)	 RIP: 406f32	 Bytes: 4
  %loadMem_406f32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f32 = call %struct.Memory* @routine_movb__0x0__MINUS0x1__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f32)
  store %struct.Memory* %call_406f32, %struct.Memory** %MEMORY

  ; Code: jmpq .L_407333	 RIP: 406f36	 Bytes: 5
  %loadMem_406f36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f36 = call %struct.Memory* @routine_jmpq_.L_407333(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f36, i64 1021, i64 5)
  store %struct.Memory* %call_406f36, %struct.Memory** %MEMORY

  br label %block_.L_407333

  ; Code: .L_406f3b:	 RIP: 406f3b	 Bytes: 0
block_.L_406f3b:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 406f3b	 Bytes: 4
  %loadMem_406f3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f3b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f3b)
  store %struct.Memory* %call_406f3b, %struct.Memory** %MEMORY

  ; Code: movl 0x444(%rax), %ecx	 RIP: 406f3f	 Bytes: 6
  %loadMem_406f3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f3f = call %struct.Memory* @routine_movl_0x444__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f3f)
  store %struct.Memory* %call_406f3f, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 406f45	 Bytes: 4
  %loadMem_406f45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f45 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f45)
  store %struct.Memory* %call_406f45, %struct.Memory** %MEMORY

  ; Code: movl 0xfa50(%rax), %edx	 RIP: 406f49	 Bytes: 6
  %loadMem_406f49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f49 = call %struct.Memory* @routine_movl_0xfa50__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f49)
  store %struct.Memory* %call_406f49, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 406f4f	 Bytes: 3
  %loadMem_406f4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f4f = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f4f)
  store %struct.Memory* %call_406f4f, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %ecx	 RIP: 406f52	 Bytes: 2
  %loadMem_406f52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f52 = call %struct.Memory* @routine_cmpl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f52)
  store %struct.Memory* %call_406f52, %struct.Memory** %MEMORY

  ; Code: jle .L_406f63	 RIP: 406f54	 Bytes: 6
  %loadMem_406f54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f54 = call %struct.Memory* @routine_jle_.L_406f63(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f54, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_406f54, %struct.Memory** %MEMORY

  %loadBr_406f54 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_406f54 = icmp eq i8 %loadBr_406f54, 1
  br i1 %cmpBr_406f54, label %block_.L_406f63, label %block_406f5a

block_406f5a:
  ; Code: movb $0x1, -0x1(%rbp)	 RIP: 406f5a	 Bytes: 4
  %loadMem_406f5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f5a = call %struct.Memory* @routine_movb__0x1__MINUS0x1__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f5a)
  store %struct.Memory* %call_406f5a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_407333	 RIP: 406f5e	 Bytes: 5
  %loadMem_406f5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f5e = call %struct.Memory* @routine_jmpq_.L_407333(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f5e, i64 981, i64 5)
  store %struct.Memory* %call_406f5e, %struct.Memory** %MEMORY

  br label %block_.L_407333

  ; Code: .L_406f63:	 RIP: 406f63	 Bytes: 0
block_.L_406f63:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 406f63	 Bytes: 4
  %loadMem_406f63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f63 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f63)
  store %struct.Memory* %call_406f63, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x10(%rax)	 RIP: 406f67	 Bytes: 7
  %loadMem_406f67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f67 = call %struct.Memory* @routine_movl__0x1__0x10__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f67)
  store %struct.Memory* %call_406f67, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 406f6e	 Bytes: 4
  %loadMem_406f6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f6e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f6e)
  store %struct.Memory* %call_406f6e, %struct.Memory** %MEMORY

  ; Code: movl 0x40(%rax), %ecx	 RIP: 406f72	 Bytes: 3
  %loadMem_406f72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f72 = call %struct.Memory* @routine_movl_0x40__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f72)
  store %struct.Memory* %call_406f72, %struct.Memory** %MEMORY

  ; Code: movb %cl, %dl	 RIP: 406f75	 Bytes: 2
  %loadMem_406f75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f75 = call %struct.Memory* @routine_movb__cl___dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f75)
  store %struct.Memory* %call_406f75, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 406f77	 Bytes: 4
  %loadMem_406f77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f77 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f77)
  store %struct.Memory* %call_406f77, %struct.Memory** %MEMORY

  ; Code: movb %dl, 0xc(%rax)	 RIP: 406f7b	 Bytes: 3
  %loadMem_406f7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f7b = call %struct.Memory* @routine_movb__dl__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f7b)
  store %struct.Memory* %call_406f7b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 406f7e	 Bytes: 4
  %loadMem_406f7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f7e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f7e)
  store %struct.Memory* %call_406f7e, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rax), %edi	 RIP: 406f82	 Bytes: 3
  %loadMem_406f82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f82 = call %struct.Memory* @routine_movl_0x3c__rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f82)
  store %struct.Memory* %call_406f82, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 406f85	 Bytes: 4
  %loadMem_406f85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f85 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f85)
  store %struct.Memory* %call_406f85, %struct.Memory** %MEMORY

  ; Code: addq $0x448, %rax	 RIP: 406f89	 Bytes: 6
  %loadMem_406f89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f89 = call %struct.Memory* @routine_addq__0x448___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f89)
  store %struct.Memory* %call_406f89, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 406f8f	 Bytes: 3
  %loadMem_406f8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f8f = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f8f)
  store %struct.Memory* %call_406f8f, %struct.Memory** %MEMORY

  ; Code: callq .BZ2_indexIntoF	 RIP: 406f92	 Bytes: 5
  %loadMem1_406f92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_406f92 = call %struct.Memory* @routine_callq_.BZ2_indexIntoF(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_406f92, i64 -3138, i64 5, i64 5)
  store %struct.Memory* %call1_406f92, %struct.Memory** %MEMORY

  %loadMem2_406f92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_406f92 = load i64, i64* %3
  %call2_406f92 = call %struct.Memory* @sub_406350.BZ2_indexIntoF(%struct.State* %0, i64  %loadPC_406f92, %struct.Memory* %loadMem2_406f92)
  store %struct.Memory* %call2_406f92, %struct.Memory** %MEMORY

  ; Code: movb %al, %dl	 RIP: 406f97	 Bytes: 2
  %loadMem_406f97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f97 = call %struct.Memory* @routine_movb__al___dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f97)
  store %struct.Memory* %call_406f97, %struct.Memory** %MEMORY

  ; Code: movb %dl, -0x11(%rbp)	 RIP: 406f99	 Bytes: 3
  %loadMem_406f99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f99 = call %struct.Memory* @routine_movb__dl__MINUS0x11__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f99)
  store %struct.Memory* %call_406f99, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rsi	 RIP: 406f9c	 Bytes: 4
  %loadMem_406f9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f9c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f9c)
  store %struct.Memory* %call_406f9c, %struct.Memory** %MEMORY

  ; Code: movq 0xc58(%rsi), %rsi	 RIP: 406fa0	 Bytes: 7
  %loadMem_406fa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406fa0 = call %struct.Memory* @routine_movq_0xc58__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406fa0)
  store %struct.Memory* %call_406fa0, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %r8	 RIP: 406fa7	 Bytes: 4
  %loadMem_406fa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406fa7 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406fa7)
  store %struct.Memory* %call_406fa7, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%r8), %eax	 RIP: 406fab	 Bytes: 4
  %loadMem_406fab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406fab = call %struct.Memory* @routine_movl_0x3c__r8____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406fab)
  store %struct.Memory* %call_406fab, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 406faf	 Bytes: 3
  %loadMem_406faf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406faf = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406faf)
  store %struct.Memory* %call_406faf, %struct.Memory** %MEMORY

  ; Code: movzwl (%rsi,%r8,2), %eax	 RIP: 406fb2	 Bytes: 5
  %loadMem_406fb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406fb2 = call %struct.Memory* @routine_movzwl___rsi__r8_2____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406fb2)
  store %struct.Memory* %call_406fb2, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rsi	 RIP: 406fb7	 Bytes: 4
  %loadMem_406fb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406fb7 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406fb7)
  store %struct.Memory* %call_406fb7, %struct.Memory** %MEMORY

  ; Code: movq 0xc60(%rsi), %rsi	 RIP: 406fbb	 Bytes: 7
  %loadMem_406fbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406fbb = call %struct.Memory* @routine_movq_0xc60__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406fbb)
  store %struct.Memory* %call_406fbb, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %r8	 RIP: 406fc2	 Bytes: 4
  %loadMem_406fc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406fc2 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406fc2)
  store %struct.Memory* %call_406fc2, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%r8), %ecx	 RIP: 406fc6	 Bytes: 4
  %loadMem_406fc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406fc6 = call %struct.Memory* @routine_movl_0x3c__r8____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406fc6)
  store %struct.Memory* %call_406fc6, %struct.Memory** %MEMORY

  ; Code: shrl $0x1, %ecx	 RIP: 406fca	 Bytes: 3
  %loadMem_406fca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406fca = call %struct.Memory* @routine_shrl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406fca)
  store %struct.Memory* %call_406fca, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %ecx	 RIP: 406fcd	 Bytes: 2
  %loadMem_406fcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406fcd = call %struct.Memory* @routine_movl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406fcd)
  store %struct.Memory* %call_406fcd, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %r8d	 RIP: 406fcf	 Bytes: 3
  %loadMem_406fcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406fcf = call %struct.Memory* @routine_movl__ecx___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406fcf)
  store %struct.Memory* %call_406fcf, %struct.Memory** %MEMORY

  ; Code: movzbl (%rsi,%r8,1), %ecx	 RIP: 406fd2	 Bytes: 5
  %loadMem_406fd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406fd2 = call %struct.Memory* @routine_movzbl___rsi__r8_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406fd2)
  store %struct.Memory* %call_406fd2, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rsi	 RIP: 406fd7	 Bytes: 4
  %loadMem_406fd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406fd7 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406fd7)
  store %struct.Memory* %call_406fd7, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rsi), %edi	 RIP: 406fdb	 Bytes: 3
  %loadMem_406fdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406fdb = call %struct.Memory* @routine_movl_0x3c__rsi____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406fdb)
  store %struct.Memory* %call_406fdb, %struct.Memory** %MEMORY

  ; Code: shll $0x2, %edi	 RIP: 406fde	 Bytes: 3
  %loadMem_406fde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406fde = call %struct.Memory* @routine_shll__0x2___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406fde)
  store %struct.Memory* %call_406fde, %struct.Memory** %MEMORY

  ; Code: andl $0x4, %edi	 RIP: 406fe1	 Bytes: 3
  %loadMem_406fe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406fe1 = call %struct.Memory* @routine_andl__0x4___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406fe1)
  store %struct.Memory* %call_406fe1, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x20(%rbp)	 RIP: 406fe4	 Bytes: 3
  %loadMem_406fe4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406fe4 = call %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406fe4)
  store %struct.Memory* %call_406fe4, %struct.Memory** %MEMORY

  ; Code: movl %edi, %ecx	 RIP: 406fe7	 Bytes: 2
  %loadMem_406fe7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406fe7 = call %struct.Memory* @routine_movl__edi___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406fe7)
  store %struct.Memory* %call_406fe7, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %edi	 RIP: 406fe9	 Bytes: 3
  %loadMem_406fe9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406fe9 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406fe9)
  store %struct.Memory* %call_406fe9, %struct.Memory** %MEMORY

  ; Code: shrl %cl, %edi	 RIP: 406fec	 Bytes: 2
  %loadMem_406fec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406fec = call %struct.Memory* @routine_shrl__cl___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406fec)
  store %struct.Memory* %call_406fec, %struct.Memory** %MEMORY

  ; Code: andl $0xf, %edi	 RIP: 406fee	 Bytes: 3
  %loadMem_406fee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406fee = call %struct.Memory* @routine_andl__0xf___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406fee)
  store %struct.Memory* %call_406fee, %struct.Memory** %MEMORY

  ; Code: shll $0x10, %edi	 RIP: 406ff1	 Bytes: 3
  %loadMem_406ff1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ff1 = call %struct.Memory* @routine_shll__0x10___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ff1)
  store %struct.Memory* %call_406ff1, %struct.Memory** %MEMORY

  ; Code: orl %edi, %eax	 RIP: 406ff4	 Bytes: 2
  %loadMem_406ff4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ff4 = call %struct.Memory* @routine_orl__edi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ff4)
  store %struct.Memory* %call_406ff4, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rsi	 RIP: 406ff6	 Bytes: 4
  %loadMem_406ff6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ff6 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ff6)
  store %struct.Memory* %call_406ff6, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x3c(%rsi)	 RIP: 406ffa	 Bytes: 3
  %loadMem_406ffa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ffa = call %struct.Memory* @routine_movl__eax__0x3c__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ffa)
  store %struct.Memory* %call_406ffa, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rsi	 RIP: 406ffd	 Bytes: 4
  %loadMem_406ffd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ffd = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ffd)
  store %struct.Memory* %call_406ffd, %struct.Memory** %MEMORY

  ; Code: movl 0x444(%rsi), %eax	 RIP: 407001	 Bytes: 6
  %loadMem_407001 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407001 = call %struct.Memory* @routine_movl_0x444__rsi____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407001)
  store %struct.Memory* %call_407001, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 407007	 Bytes: 3
  %loadMem_407007 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407007 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407007)
  store %struct.Memory* %call_407007, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x444(%rsi)	 RIP: 40700a	 Bytes: 6
  %loadMem_40700a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40700a = call %struct.Memory* @routine_movl__eax__0x444__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40700a)
  store %struct.Memory* %call_40700a, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rsi	 RIP: 407010	 Bytes: 4
  %loadMem_407010 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407010 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407010)
  store %struct.Memory* %call_407010, %struct.Memory** %MEMORY

  ; Code: movl 0x444(%rsi), %eax	 RIP: 407014	 Bytes: 6
  %loadMem_407014 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407014 = call %struct.Memory* @routine_movl_0x444__rsi____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407014)
  store %struct.Memory* %call_407014, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rsi	 RIP: 40701a	 Bytes: 4
  %loadMem_40701a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40701a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40701a)
  store %struct.Memory* %call_40701a, %struct.Memory** %MEMORY

  ; Code: movl 0xfa50(%rsi), %edi	 RIP: 40701e	 Bytes: 6
  %loadMem_40701e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40701e = call %struct.Memory* @routine_movl_0xfa50__rsi____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40701e)
  store %struct.Memory* %call_40701e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edi	 RIP: 407024	 Bytes: 3
  %loadMem_407024 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407024 = call %struct.Memory* @routine_addl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407024)
  store %struct.Memory* %call_407024, %struct.Memory** %MEMORY

  ; Code: cmpl %edi, %eax	 RIP: 407027	 Bytes: 2
  %loadMem_407027 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407027 = call %struct.Memory* @routine_cmpl__edi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407027)
  store %struct.Memory* %call_407027, %struct.Memory** %MEMORY

  ; Code: jne .L_407034	 RIP: 407029	 Bytes: 6
  %loadMem_407029 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407029 = call %struct.Memory* @routine_jne_.L_407034(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407029, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_407029, %struct.Memory** %MEMORY

  %loadBr_407029 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_407029 = icmp eq i8 %loadBr_407029, 1
  br i1 %cmpBr_407029, label %block_.L_407034, label %block_40702f

block_40702f:
  ; Code: jmpq .L_406e2e	 RIP: 40702f	 Bytes: 5
  %loadMem_40702f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40702f = call %struct.Memory* @routine_jmpq_.L_406e2e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40702f, i64 -513, i64 5)
  store %struct.Memory* %call_40702f, %struct.Memory** %MEMORY

  br label %block_.L_406e2e

  ; Code: .L_407034:	 RIP: 407034	 Bytes: 0
block_.L_407034:

  ; Code: movzbl -0x11(%rbp), %eax	 RIP: 407034	 Bytes: 4
  %loadMem_407034 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407034 = call %struct.Memory* @routine_movzbl_MINUS0x11__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407034)
  store %struct.Memory* %call_407034, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 407038	 Bytes: 4
  %loadMem_407038 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407038 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407038)
  store %struct.Memory* %call_407038, %struct.Memory** %MEMORY

  ; Code: cmpl 0x40(%rcx), %eax	 RIP: 40703c	 Bytes: 3
  %loadMem_40703c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40703c = call %struct.Memory* @routine_cmpl_0x40__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40703c)
  store %struct.Memory* %call_40703c, %struct.Memory** %MEMORY

  ; Code: je .L_407055	 RIP: 40703f	 Bytes: 6
  %loadMem_40703f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40703f = call %struct.Memory* @routine_je_.L_407055(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40703f, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_40703f, %struct.Memory** %MEMORY

  %loadBr_40703f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40703f = icmp eq i8 %loadBr_40703f, 1
  br i1 %cmpBr_40703f, label %block_.L_407055, label %block_407045

block_407045:
  ; Code: movzbl -0x11(%rbp), %eax	 RIP: 407045	 Bytes: 4
  %loadMem_407045 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407045 = call %struct.Memory* @routine_movzbl_MINUS0x11__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407045)
  store %struct.Memory* %call_407045, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 407049	 Bytes: 4
  %loadMem_407049 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407049 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407049)
  store %struct.Memory* %call_407049, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x40(%rcx)	 RIP: 40704d	 Bytes: 3
  %loadMem_40704d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40704d = call %struct.Memory* @routine_movl__eax__0x40__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40704d)
  store %struct.Memory* %call_40704d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_406e2e	 RIP: 407050	 Bytes: 5
  %loadMem_407050 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407050 = call %struct.Memory* @routine_jmpq_.L_406e2e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407050, i64 -546, i64 5)
  store %struct.Memory* %call_407050, %struct.Memory** %MEMORY

  br label %block_.L_406e2e

  ; Code: .L_407055:	 RIP: 407055	 Bytes: 0
block_.L_407055:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 407055	 Bytes: 4
  %loadMem_407055 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407055 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407055)
  store %struct.Memory* %call_407055, %struct.Memory** %MEMORY

  ; Code: movl $0x2, 0x10(%rax)	 RIP: 407059	 Bytes: 7
  %loadMem_407059 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407059 = call %struct.Memory* @routine_movl__0x2__0x10__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407059)
  store %struct.Memory* %call_407059, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 407060	 Bytes: 4
  %loadMem_407060 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407060 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407060)
  store %struct.Memory* %call_407060, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rax), %edi	 RIP: 407064	 Bytes: 3
  %loadMem_407064 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407064 = call %struct.Memory* @routine_movl_0x3c__rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407064)
  store %struct.Memory* %call_407064, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 407067	 Bytes: 4
  %loadMem_407067 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407067 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407067)
  store %struct.Memory* %call_407067, %struct.Memory** %MEMORY

  ; Code: addq $0x448, %rax	 RIP: 40706b	 Bytes: 6
  %loadMem_40706b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40706b = call %struct.Memory* @routine_addq__0x448___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40706b)
  store %struct.Memory* %call_40706b, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 407071	 Bytes: 3
  %loadMem_407071 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407071 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407071)
  store %struct.Memory* %call_407071, %struct.Memory** %MEMORY

  ; Code: callq .BZ2_indexIntoF	 RIP: 407074	 Bytes: 5
  %loadMem1_407074 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_407074 = call %struct.Memory* @routine_callq_.BZ2_indexIntoF(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_407074, i64 -3364, i64 5, i64 5)
  store %struct.Memory* %call1_407074, %struct.Memory** %MEMORY

  %loadMem2_407074 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_407074 = load i64, i64* %3
  %call2_407074 = call %struct.Memory* @sub_406350.BZ2_indexIntoF(%struct.State* %0, i64  %loadPC_407074, %struct.Memory* %loadMem2_407074)
  store %struct.Memory* %call2_407074, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 407079	 Bytes: 2
  %loadMem_407079 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407079 = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407079)
  store %struct.Memory* %call_407079, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x11(%rbp)	 RIP: 40707b	 Bytes: 3
  %loadMem_40707b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40707b = call %struct.Memory* @routine_movb__cl__MINUS0x11__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40707b)
  store %struct.Memory* %call_40707b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rsi	 RIP: 40707e	 Bytes: 4
  %loadMem_40707e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40707e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40707e)
  store %struct.Memory* %call_40707e, %struct.Memory** %MEMORY

  ; Code: movq 0xc58(%rsi), %rsi	 RIP: 407082	 Bytes: 7
  %loadMem_407082 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407082 = call %struct.Memory* @routine_movq_0xc58__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407082)
  store %struct.Memory* %call_407082, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 407089	 Bytes: 4
  %loadMem_407089 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407089 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407089)
  store %struct.Memory* %call_407089, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rdx), %eax	 RIP: 40708d	 Bytes: 3
  %loadMem_40708d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40708d = call %struct.Memory* @routine_movl_0x3c__rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40708d)
  store %struct.Memory* %call_40708d, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 407090	 Bytes: 2
  %loadMem_407090 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407090 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407090)
  store %struct.Memory* %call_407090, %struct.Memory** %MEMORY

  ; Code: movzwl (%rsi,%rdx,2), %eax	 RIP: 407092	 Bytes: 4
  %loadMem_407092 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407092 = call %struct.Memory* @routine_movzwl___rsi__rdx_2____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407092)
  store %struct.Memory* %call_407092, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 407096	 Bytes: 4
  %loadMem_407096 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407096 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407096)
  store %struct.Memory* %call_407096, %struct.Memory** %MEMORY

  ; Code: movq 0xc60(%rdx), %rdx	 RIP: 40709a	 Bytes: 7
  %loadMem_40709a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40709a = call %struct.Memory* @routine_movq_0xc60__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40709a)
  store %struct.Memory* %call_40709a, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rsi	 RIP: 4070a1	 Bytes: 4
  %loadMem_4070a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4070a1 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4070a1)
  store %struct.Memory* %call_4070a1, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rsi), %edi	 RIP: 4070a5	 Bytes: 3
  %loadMem_4070a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4070a5 = call %struct.Memory* @routine_movl_0x3c__rsi____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4070a5)
  store %struct.Memory* %call_4070a5, %struct.Memory** %MEMORY

  ; Code: shrl $0x1, %edi	 RIP: 4070a8	 Bytes: 3
  %loadMem_4070a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4070a8 = call %struct.Memory* @routine_shrl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4070a8)
  store %struct.Memory* %call_4070a8, %struct.Memory** %MEMORY

  ; Code: movl %edi, %edi	 RIP: 4070ab	 Bytes: 2
  %loadMem_4070ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4070ab = call %struct.Memory* @routine_movl__edi___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4070ab)
  store %struct.Memory* %call_4070ab, %struct.Memory** %MEMORY

  ; Code: movl %edi, %esi	 RIP: 4070ad	 Bytes: 2
  %loadMem_4070ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4070ad = call %struct.Memory* @routine_movl__edi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4070ad)
  store %struct.Memory* %call_4070ad, %struct.Memory** %MEMORY

  ; Code: movzbl (%rdx,%rsi,1), %edi	 RIP: 4070af	 Bytes: 4
  %loadMem_4070af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4070af = call %struct.Memory* @routine_movzbl___rdx__rsi_1____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4070af)
  store %struct.Memory* %call_4070af, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4070b3	 Bytes: 4
  %loadMem_4070b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4070b3 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4070b3)
  store %struct.Memory* %call_4070b3, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rdx), %r8d	 RIP: 4070b7	 Bytes: 4
  %loadMem_4070b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4070b7 = call %struct.Memory* @routine_movl_0x3c__rdx____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4070b7)
  store %struct.Memory* %call_4070b7, %struct.Memory** %MEMORY

  ; Code: shll $0x2, %r8d	 RIP: 4070bb	 Bytes: 4
  %loadMem_4070bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4070bb = call %struct.Memory* @routine_shll__0x2___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4070bb)
  store %struct.Memory* %call_4070bb, %struct.Memory** %MEMORY

  ; Code: andl $0x4, %r8d	 RIP: 4070bf	 Bytes: 4
  %loadMem_4070bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4070bf = call %struct.Memory* @routine_andl__0x4___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4070bf)
  store %struct.Memory* %call_4070bf, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %ecx	 RIP: 4070c3	 Bytes: 3
  %loadMem_4070c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4070c3 = call %struct.Memory* @routine_movl__r8d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4070c3)
  store %struct.Memory* %call_4070c3, %struct.Memory** %MEMORY

  ; Code: shrl %cl, %edi	 RIP: 4070c6	 Bytes: 2
  %loadMem_4070c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4070c6 = call %struct.Memory* @routine_shrl__cl___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4070c6)
  store %struct.Memory* %call_4070c6, %struct.Memory** %MEMORY

  ; Code: andl $0xf, %edi	 RIP: 4070c8	 Bytes: 3
  %loadMem_4070c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4070c8 = call %struct.Memory* @routine_andl__0xf___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4070c8)
  store %struct.Memory* %call_4070c8, %struct.Memory** %MEMORY

  ; Code: shll $0x10, %edi	 RIP: 4070cb	 Bytes: 3
  %loadMem_4070cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4070cb = call %struct.Memory* @routine_shll__0x10___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4070cb)
  store %struct.Memory* %call_4070cb, %struct.Memory** %MEMORY

  ; Code: orl %edi, %eax	 RIP: 4070ce	 Bytes: 2
  %loadMem_4070ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4070ce = call %struct.Memory* @routine_orl__edi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4070ce)
  store %struct.Memory* %call_4070ce, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4070d0	 Bytes: 4
  %loadMem_4070d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4070d0 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4070d0)
  store %struct.Memory* %call_4070d0, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x3c(%rdx)	 RIP: 4070d4	 Bytes: 3
  %loadMem_4070d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4070d4 = call %struct.Memory* @routine_movl__eax__0x3c__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4070d4)
  store %struct.Memory* %call_4070d4, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4070d7	 Bytes: 4
  %loadMem_4070d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4070d7 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4070d7)
  store %struct.Memory* %call_4070d7, %struct.Memory** %MEMORY

  ; Code: movl 0x444(%rdx), %eax	 RIP: 4070db	 Bytes: 6
  %loadMem_4070db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4070db = call %struct.Memory* @routine_movl_0x444__rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4070db)
  store %struct.Memory* %call_4070db, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4070e1	 Bytes: 3
  %loadMem_4070e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4070e1 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4070e1)
  store %struct.Memory* %call_4070e1, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x444(%rdx)	 RIP: 4070e4	 Bytes: 6
  %loadMem_4070e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4070e4 = call %struct.Memory* @routine_movl__eax__0x444__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4070e4)
  store %struct.Memory* %call_4070e4, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4070ea	 Bytes: 4
  %loadMem_4070ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4070ea = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4070ea)
  store %struct.Memory* %call_4070ea, %struct.Memory** %MEMORY

  ; Code: movl 0x444(%rdx), %eax	 RIP: 4070ee	 Bytes: 6
  %loadMem_4070ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4070ee = call %struct.Memory* @routine_movl_0x444__rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4070ee)
  store %struct.Memory* %call_4070ee, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4070f4	 Bytes: 4
  %loadMem_4070f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4070f4 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4070f4)
  store %struct.Memory* %call_4070f4, %struct.Memory** %MEMORY

  ; Code: movl 0xfa50(%rdx), %edi	 RIP: 4070f8	 Bytes: 6
  %loadMem_4070f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4070f8 = call %struct.Memory* @routine_movl_0xfa50__rdx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4070f8)
  store %struct.Memory* %call_4070f8, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edi	 RIP: 4070fe	 Bytes: 3
  %loadMem_4070fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4070fe = call %struct.Memory* @routine_addl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4070fe)
  store %struct.Memory* %call_4070fe, %struct.Memory** %MEMORY

  ; Code: cmpl %edi, %eax	 RIP: 407101	 Bytes: 2
  %loadMem_407101 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407101 = call %struct.Memory* @routine_cmpl__edi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407101)
  store %struct.Memory* %call_407101, %struct.Memory** %MEMORY

  ; Code: jne .L_40710e	 RIP: 407103	 Bytes: 6
  %loadMem_407103 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407103 = call %struct.Memory* @routine_jne_.L_40710e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407103, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_407103, %struct.Memory** %MEMORY

  %loadBr_407103 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_407103 = icmp eq i8 %loadBr_407103, 1
  br i1 %cmpBr_407103, label %block_.L_40710e, label %block_407109

block_407109:
  ; Code: jmpq .L_406e2e	 RIP: 407109	 Bytes: 5
  %loadMem_407109 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407109 = call %struct.Memory* @routine_jmpq_.L_406e2e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407109, i64 -731, i64 5)
  store %struct.Memory* %call_407109, %struct.Memory** %MEMORY

  br label %block_.L_406e2e

  ; Code: .L_40710e:	 RIP: 40710e	 Bytes: 0
block_.L_40710e:

  ; Code: movzbl -0x11(%rbp), %eax	 RIP: 40710e	 Bytes: 4
  %loadMem_40710e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40710e = call %struct.Memory* @routine_movzbl_MINUS0x11__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40710e)
  store %struct.Memory* %call_40710e, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 407112	 Bytes: 4
  %loadMem_407112 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407112 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407112)
  store %struct.Memory* %call_407112, %struct.Memory** %MEMORY

  ; Code: cmpl 0x40(%rcx), %eax	 RIP: 407116	 Bytes: 3
  %loadMem_407116 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407116 = call %struct.Memory* @routine_cmpl_0x40__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407116)
  store %struct.Memory* %call_407116, %struct.Memory** %MEMORY

  ; Code: je .L_40712f	 RIP: 407119	 Bytes: 6
  %loadMem_407119 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407119 = call %struct.Memory* @routine_je_.L_40712f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407119, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_407119, %struct.Memory** %MEMORY

  %loadBr_407119 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_407119 = icmp eq i8 %loadBr_407119, 1
  br i1 %cmpBr_407119, label %block_.L_40712f, label %block_40711f

block_40711f:
  ; Code: movzbl -0x11(%rbp), %eax	 RIP: 40711f	 Bytes: 4
  %loadMem_40711f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40711f = call %struct.Memory* @routine_movzbl_MINUS0x11__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40711f)
  store %struct.Memory* %call_40711f, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 407123	 Bytes: 4
  %loadMem_407123 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407123 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407123)
  store %struct.Memory* %call_407123, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x40(%rcx)	 RIP: 407127	 Bytes: 3
  %loadMem_407127 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407127 = call %struct.Memory* @routine_movl__eax__0x40__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407127)
  store %struct.Memory* %call_407127, %struct.Memory** %MEMORY

  ; Code: jmpq .L_406e2e	 RIP: 40712a	 Bytes: 5
  %loadMem_40712a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40712a = call %struct.Memory* @routine_jmpq_.L_406e2e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40712a, i64 -764, i64 5)
  store %struct.Memory* %call_40712a, %struct.Memory** %MEMORY

  br label %block_.L_406e2e

  ; Code: .L_40712f:	 RIP: 40712f	 Bytes: 0
block_.L_40712f:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 40712f	 Bytes: 4
  %loadMem_40712f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40712f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40712f)
  store %struct.Memory* %call_40712f, %struct.Memory** %MEMORY

  ; Code: movl $0x3, 0x10(%rax)	 RIP: 407133	 Bytes: 7
  %loadMem_407133 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407133 = call %struct.Memory* @routine_movl__0x3__0x10__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407133)
  store %struct.Memory* %call_407133, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 40713a	 Bytes: 4
  %loadMem_40713a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40713a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40713a)
  store %struct.Memory* %call_40713a, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rax), %edi	 RIP: 40713e	 Bytes: 3
  %loadMem_40713e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40713e = call %struct.Memory* @routine_movl_0x3c__rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40713e)
  store %struct.Memory* %call_40713e, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 407141	 Bytes: 4
  %loadMem_407141 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407141 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407141)
  store %struct.Memory* %call_407141, %struct.Memory** %MEMORY

  ; Code: addq $0x448, %rax	 RIP: 407145	 Bytes: 6
  %loadMem_407145 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407145 = call %struct.Memory* @routine_addq__0x448___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407145)
  store %struct.Memory* %call_407145, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40714b	 Bytes: 3
  %loadMem_40714b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40714b = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40714b)
  store %struct.Memory* %call_40714b, %struct.Memory** %MEMORY

  ; Code: callq .BZ2_indexIntoF	 RIP: 40714e	 Bytes: 5
  %loadMem1_40714e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40714e = call %struct.Memory* @routine_callq_.BZ2_indexIntoF(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40714e, i64 -3582, i64 5, i64 5)
  store %struct.Memory* %call1_40714e, %struct.Memory** %MEMORY

  %loadMem2_40714e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40714e = load i64, i64* %3
  %call2_40714e = call %struct.Memory* @sub_406350.BZ2_indexIntoF(%struct.State* %0, i64  %loadPC_40714e, %struct.Memory* %loadMem2_40714e)
  store %struct.Memory* %call2_40714e, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 407153	 Bytes: 2
  %loadMem_407153 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407153 = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407153)
  store %struct.Memory* %call_407153, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x11(%rbp)	 RIP: 407155	 Bytes: 3
  %loadMem_407155 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407155 = call %struct.Memory* @routine_movb__cl__MINUS0x11__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407155)
  store %struct.Memory* %call_407155, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rsi	 RIP: 407158	 Bytes: 4
  %loadMem_407158 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407158 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407158)
  store %struct.Memory* %call_407158, %struct.Memory** %MEMORY

  ; Code: movq 0xc58(%rsi), %rsi	 RIP: 40715c	 Bytes: 7
  %loadMem_40715c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40715c = call %struct.Memory* @routine_movq_0xc58__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40715c)
  store %struct.Memory* %call_40715c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 407163	 Bytes: 4
  %loadMem_407163 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407163 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407163)
  store %struct.Memory* %call_407163, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rdx), %eax	 RIP: 407167	 Bytes: 3
  %loadMem_407167 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407167 = call %struct.Memory* @routine_movl_0x3c__rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407167)
  store %struct.Memory* %call_407167, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 40716a	 Bytes: 2
  %loadMem_40716a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40716a = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40716a)
  store %struct.Memory* %call_40716a, %struct.Memory** %MEMORY

  ; Code: movzwl (%rsi,%rdx,2), %eax	 RIP: 40716c	 Bytes: 4
  %loadMem_40716c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40716c = call %struct.Memory* @routine_movzwl___rsi__rdx_2____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40716c)
  store %struct.Memory* %call_40716c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 407170	 Bytes: 4
  %loadMem_407170 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407170 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407170)
  store %struct.Memory* %call_407170, %struct.Memory** %MEMORY

  ; Code: movq 0xc60(%rdx), %rdx	 RIP: 407174	 Bytes: 7
  %loadMem_407174 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407174 = call %struct.Memory* @routine_movq_0xc60__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407174)
  store %struct.Memory* %call_407174, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rsi	 RIP: 40717b	 Bytes: 4
  %loadMem_40717b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40717b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40717b)
  store %struct.Memory* %call_40717b, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rsi), %edi	 RIP: 40717f	 Bytes: 3
  %loadMem_40717f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40717f = call %struct.Memory* @routine_movl_0x3c__rsi____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40717f)
  store %struct.Memory* %call_40717f, %struct.Memory** %MEMORY

  ; Code: shrl $0x1, %edi	 RIP: 407182	 Bytes: 3
  %loadMem_407182 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407182 = call %struct.Memory* @routine_shrl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407182)
  store %struct.Memory* %call_407182, %struct.Memory** %MEMORY

  ; Code: movl %edi, %edi	 RIP: 407185	 Bytes: 2
  %loadMem_407185 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407185 = call %struct.Memory* @routine_movl__edi___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407185)
  store %struct.Memory* %call_407185, %struct.Memory** %MEMORY

  ; Code: movl %edi, %esi	 RIP: 407187	 Bytes: 2
  %loadMem_407187 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407187 = call %struct.Memory* @routine_movl__edi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407187)
  store %struct.Memory* %call_407187, %struct.Memory** %MEMORY

  ; Code: movzbl (%rdx,%rsi,1), %edi	 RIP: 407189	 Bytes: 4
  %loadMem_407189 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407189 = call %struct.Memory* @routine_movzbl___rdx__rsi_1____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407189)
  store %struct.Memory* %call_407189, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 40718d	 Bytes: 4
  %loadMem_40718d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40718d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40718d)
  store %struct.Memory* %call_40718d, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rdx), %r8d	 RIP: 407191	 Bytes: 4
  %loadMem_407191 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407191 = call %struct.Memory* @routine_movl_0x3c__rdx____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407191)
  store %struct.Memory* %call_407191, %struct.Memory** %MEMORY

  ; Code: shll $0x2, %r8d	 RIP: 407195	 Bytes: 4
  %loadMem_407195 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407195 = call %struct.Memory* @routine_shll__0x2___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407195)
  store %struct.Memory* %call_407195, %struct.Memory** %MEMORY

  ; Code: andl $0x4, %r8d	 RIP: 407199	 Bytes: 4
  %loadMem_407199 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407199 = call %struct.Memory* @routine_andl__0x4___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407199)
  store %struct.Memory* %call_407199, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %ecx	 RIP: 40719d	 Bytes: 3
  %loadMem_40719d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40719d = call %struct.Memory* @routine_movl__r8d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40719d)
  store %struct.Memory* %call_40719d, %struct.Memory** %MEMORY

  ; Code: shrl %cl, %edi	 RIP: 4071a0	 Bytes: 2
  %loadMem_4071a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4071a0 = call %struct.Memory* @routine_shrl__cl___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4071a0)
  store %struct.Memory* %call_4071a0, %struct.Memory** %MEMORY

  ; Code: andl $0xf, %edi	 RIP: 4071a2	 Bytes: 3
  %loadMem_4071a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4071a2 = call %struct.Memory* @routine_andl__0xf___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4071a2)
  store %struct.Memory* %call_4071a2, %struct.Memory** %MEMORY

  ; Code: shll $0x10, %edi	 RIP: 4071a5	 Bytes: 3
  %loadMem_4071a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4071a5 = call %struct.Memory* @routine_shll__0x10___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4071a5)
  store %struct.Memory* %call_4071a5, %struct.Memory** %MEMORY

  ; Code: orl %edi, %eax	 RIP: 4071a8	 Bytes: 2
  %loadMem_4071a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4071a8 = call %struct.Memory* @routine_orl__edi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4071a8)
  store %struct.Memory* %call_4071a8, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4071aa	 Bytes: 4
  %loadMem_4071aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4071aa = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4071aa)
  store %struct.Memory* %call_4071aa, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x3c(%rdx)	 RIP: 4071ae	 Bytes: 3
  %loadMem_4071ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4071ae = call %struct.Memory* @routine_movl__eax__0x3c__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4071ae)
  store %struct.Memory* %call_4071ae, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4071b1	 Bytes: 4
  %loadMem_4071b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4071b1 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4071b1)
  store %struct.Memory* %call_4071b1, %struct.Memory** %MEMORY

  ; Code: movl 0x444(%rdx), %eax	 RIP: 4071b5	 Bytes: 6
  %loadMem_4071b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4071b5 = call %struct.Memory* @routine_movl_0x444__rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4071b5)
  store %struct.Memory* %call_4071b5, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4071bb	 Bytes: 3
  %loadMem_4071bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4071bb = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4071bb)
  store %struct.Memory* %call_4071bb, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x444(%rdx)	 RIP: 4071be	 Bytes: 6
  %loadMem_4071be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4071be = call %struct.Memory* @routine_movl__eax__0x444__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4071be)
  store %struct.Memory* %call_4071be, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4071c4	 Bytes: 4
  %loadMem_4071c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4071c4 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4071c4)
  store %struct.Memory* %call_4071c4, %struct.Memory** %MEMORY

  ; Code: movl 0x444(%rdx), %eax	 RIP: 4071c8	 Bytes: 6
  %loadMem_4071c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4071c8 = call %struct.Memory* @routine_movl_0x444__rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4071c8)
  store %struct.Memory* %call_4071c8, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4071ce	 Bytes: 4
  %loadMem_4071ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4071ce = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4071ce)
  store %struct.Memory* %call_4071ce, %struct.Memory** %MEMORY

  ; Code: movl 0xfa50(%rdx), %edi	 RIP: 4071d2	 Bytes: 6
  %loadMem_4071d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4071d2 = call %struct.Memory* @routine_movl_0xfa50__rdx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4071d2)
  store %struct.Memory* %call_4071d2, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edi	 RIP: 4071d8	 Bytes: 3
  %loadMem_4071d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4071d8 = call %struct.Memory* @routine_addl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4071d8)
  store %struct.Memory* %call_4071d8, %struct.Memory** %MEMORY

  ; Code: cmpl %edi, %eax	 RIP: 4071db	 Bytes: 2
  %loadMem_4071db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4071db = call %struct.Memory* @routine_cmpl__edi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4071db)
  store %struct.Memory* %call_4071db, %struct.Memory** %MEMORY

  ; Code: jne .L_4071e8	 RIP: 4071dd	 Bytes: 6
  %loadMem_4071dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4071dd = call %struct.Memory* @routine_jne_.L_4071e8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4071dd, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4071dd, %struct.Memory** %MEMORY

  %loadBr_4071dd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4071dd = icmp eq i8 %loadBr_4071dd, 1
  br i1 %cmpBr_4071dd, label %block_.L_4071e8, label %block_4071e3

block_4071e3:
  ; Code: jmpq .L_406e2e	 RIP: 4071e3	 Bytes: 5
  %loadMem_4071e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4071e3 = call %struct.Memory* @routine_jmpq_.L_406e2e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4071e3, i64 -949, i64 5)
  store %struct.Memory* %call_4071e3, %struct.Memory** %MEMORY

  br label %block_.L_406e2e

  ; Code: .L_4071e8:	 RIP: 4071e8	 Bytes: 0
block_.L_4071e8:

  ; Code: movzbl -0x11(%rbp), %eax	 RIP: 4071e8	 Bytes: 4
  %loadMem_4071e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4071e8 = call %struct.Memory* @routine_movzbl_MINUS0x11__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4071e8)
  store %struct.Memory* %call_4071e8, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4071ec	 Bytes: 4
  %loadMem_4071ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4071ec = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4071ec)
  store %struct.Memory* %call_4071ec, %struct.Memory** %MEMORY

  ; Code: cmpl 0x40(%rcx), %eax	 RIP: 4071f0	 Bytes: 3
  %loadMem_4071f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4071f0 = call %struct.Memory* @routine_cmpl_0x40__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4071f0)
  store %struct.Memory* %call_4071f0, %struct.Memory** %MEMORY

  ; Code: je .L_407209	 RIP: 4071f3	 Bytes: 6
  %loadMem_4071f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4071f3 = call %struct.Memory* @routine_je_.L_407209(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4071f3, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_4071f3, %struct.Memory** %MEMORY

  %loadBr_4071f3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4071f3 = icmp eq i8 %loadBr_4071f3, 1
  br i1 %cmpBr_4071f3, label %block_.L_407209, label %block_4071f9

block_4071f9:
  ; Code: movzbl -0x11(%rbp), %eax	 RIP: 4071f9	 Bytes: 4
  %loadMem_4071f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4071f9 = call %struct.Memory* @routine_movzbl_MINUS0x11__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4071f9)
  store %struct.Memory* %call_4071f9, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4071fd	 Bytes: 4
  %loadMem_4071fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4071fd = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4071fd)
  store %struct.Memory* %call_4071fd, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x40(%rcx)	 RIP: 407201	 Bytes: 3
  %loadMem_407201 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407201 = call %struct.Memory* @routine_movl__eax__0x40__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407201)
  store %struct.Memory* %call_407201, %struct.Memory** %MEMORY

  ; Code: jmpq .L_406e2e	 RIP: 407204	 Bytes: 5
  %loadMem_407204 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407204 = call %struct.Memory* @routine_jmpq_.L_406e2e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407204, i64 -982, i64 5)
  store %struct.Memory* %call_407204, %struct.Memory** %MEMORY

  br label %block_.L_406e2e

  ; Code: .L_407209:	 RIP: 407209	 Bytes: 0
block_.L_407209:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 407209	 Bytes: 4
  %loadMem_407209 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407209 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407209)
  store %struct.Memory* %call_407209, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rax), %edi	 RIP: 40720d	 Bytes: 3
  %loadMem_40720d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40720d = call %struct.Memory* @routine_movl_0x3c__rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40720d)
  store %struct.Memory* %call_40720d, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 407210	 Bytes: 4
  %loadMem_407210 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407210 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407210)
  store %struct.Memory* %call_407210, %struct.Memory** %MEMORY

  ; Code: addq $0x448, %rax	 RIP: 407214	 Bytes: 6
  %loadMem_407214 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407214 = call %struct.Memory* @routine_addq__0x448___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407214)
  store %struct.Memory* %call_407214, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40721a	 Bytes: 3
  %loadMem_40721a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40721a = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40721a)
  store %struct.Memory* %call_40721a, %struct.Memory** %MEMORY

  ; Code: callq .BZ2_indexIntoF	 RIP: 40721d	 Bytes: 5
  %loadMem1_40721d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40721d = call %struct.Memory* @routine_callq_.BZ2_indexIntoF(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40721d, i64 -3789, i64 5, i64 5)
  store %struct.Memory* %call1_40721d, %struct.Memory** %MEMORY

  %loadMem2_40721d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40721d = load i64, i64* %3
  %call2_40721d = call %struct.Memory* @sub_406350.BZ2_indexIntoF(%struct.State* %0, i64  %loadPC_40721d, %struct.Memory* %loadMem2_40721d)
  store %struct.Memory* %call2_40721d, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 407222	 Bytes: 2
  %loadMem_407222 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407222 = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407222)
  store %struct.Memory* %call_407222, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x11(%rbp)	 RIP: 407224	 Bytes: 3
  %loadMem_407224 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407224 = call %struct.Memory* @routine_movb__cl__MINUS0x11__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407224)
  store %struct.Memory* %call_407224, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rsi	 RIP: 407227	 Bytes: 4
  %loadMem_407227 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407227 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407227)
  store %struct.Memory* %call_407227, %struct.Memory** %MEMORY

  ; Code: movq 0xc58(%rsi), %rsi	 RIP: 40722b	 Bytes: 7
  %loadMem_40722b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40722b = call %struct.Memory* @routine_movq_0xc58__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40722b)
  store %struct.Memory* %call_40722b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 407232	 Bytes: 4
  %loadMem_407232 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407232 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407232)
  store %struct.Memory* %call_407232, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rdx), %eax	 RIP: 407236	 Bytes: 3
  %loadMem_407236 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407236 = call %struct.Memory* @routine_movl_0x3c__rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407236)
  store %struct.Memory* %call_407236, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 407239	 Bytes: 2
  %loadMem_407239 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407239 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407239)
  store %struct.Memory* %call_407239, %struct.Memory** %MEMORY

  ; Code: movzwl (%rsi,%rdx,2), %eax	 RIP: 40723b	 Bytes: 4
  %loadMem_40723b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40723b = call %struct.Memory* @routine_movzwl___rsi__rdx_2____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40723b)
  store %struct.Memory* %call_40723b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 40723f	 Bytes: 4
  %loadMem_40723f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40723f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40723f)
  store %struct.Memory* %call_40723f, %struct.Memory** %MEMORY

  ; Code: movq 0xc60(%rdx), %rdx	 RIP: 407243	 Bytes: 7
  %loadMem_407243 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407243 = call %struct.Memory* @routine_movq_0xc60__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407243)
  store %struct.Memory* %call_407243, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rsi	 RIP: 40724a	 Bytes: 4
  %loadMem_40724a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40724a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40724a)
  store %struct.Memory* %call_40724a, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rsi), %edi	 RIP: 40724e	 Bytes: 3
  %loadMem_40724e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40724e = call %struct.Memory* @routine_movl_0x3c__rsi____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40724e)
  store %struct.Memory* %call_40724e, %struct.Memory** %MEMORY

  ; Code: shrl $0x1, %edi	 RIP: 407251	 Bytes: 3
  %loadMem_407251 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407251 = call %struct.Memory* @routine_shrl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407251)
  store %struct.Memory* %call_407251, %struct.Memory** %MEMORY

  ; Code: movl %edi, %edi	 RIP: 407254	 Bytes: 2
  %loadMem_407254 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407254 = call %struct.Memory* @routine_movl__edi___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407254)
  store %struct.Memory* %call_407254, %struct.Memory** %MEMORY

  ; Code: movl %edi, %esi	 RIP: 407256	 Bytes: 2
  %loadMem_407256 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407256 = call %struct.Memory* @routine_movl__edi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407256)
  store %struct.Memory* %call_407256, %struct.Memory** %MEMORY

  ; Code: movzbl (%rdx,%rsi,1), %edi	 RIP: 407258	 Bytes: 4
  %loadMem_407258 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407258 = call %struct.Memory* @routine_movzbl___rdx__rsi_1____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407258)
  store %struct.Memory* %call_407258, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 40725c	 Bytes: 4
  %loadMem_40725c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40725c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40725c)
  store %struct.Memory* %call_40725c, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rdx), %r8d	 RIP: 407260	 Bytes: 4
  %loadMem_407260 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407260 = call %struct.Memory* @routine_movl_0x3c__rdx____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407260)
  store %struct.Memory* %call_407260, %struct.Memory** %MEMORY

  ; Code: shll $0x2, %r8d	 RIP: 407264	 Bytes: 4
  %loadMem_407264 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407264 = call %struct.Memory* @routine_shll__0x2___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407264)
  store %struct.Memory* %call_407264, %struct.Memory** %MEMORY

  ; Code: andl $0x4, %r8d	 RIP: 407268	 Bytes: 4
  %loadMem_407268 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407268 = call %struct.Memory* @routine_andl__0x4___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407268)
  store %struct.Memory* %call_407268, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %ecx	 RIP: 40726c	 Bytes: 3
  %loadMem_40726c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40726c = call %struct.Memory* @routine_movl__r8d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40726c)
  store %struct.Memory* %call_40726c, %struct.Memory** %MEMORY

  ; Code: shrl %cl, %edi	 RIP: 40726f	 Bytes: 2
  %loadMem_40726f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40726f = call %struct.Memory* @routine_shrl__cl___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40726f)
  store %struct.Memory* %call_40726f, %struct.Memory** %MEMORY

  ; Code: andl $0xf, %edi	 RIP: 407271	 Bytes: 3
  %loadMem_407271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407271 = call %struct.Memory* @routine_andl__0xf___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407271)
  store %struct.Memory* %call_407271, %struct.Memory** %MEMORY

  ; Code: shll $0x10, %edi	 RIP: 407274	 Bytes: 3
  %loadMem_407274 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407274 = call %struct.Memory* @routine_shll__0x10___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407274)
  store %struct.Memory* %call_407274, %struct.Memory** %MEMORY

  ; Code: orl %edi, %eax	 RIP: 407277	 Bytes: 2
  %loadMem_407277 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407277 = call %struct.Memory* @routine_orl__edi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407277)
  store %struct.Memory* %call_407277, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 407279	 Bytes: 4
  %loadMem_407279 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407279 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407279)
  store %struct.Memory* %call_407279, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x3c(%rdx)	 RIP: 40727d	 Bytes: 3
  %loadMem_40727d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40727d = call %struct.Memory* @routine_movl__eax__0x3c__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40727d)
  store %struct.Memory* %call_40727d, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 407280	 Bytes: 4
  %loadMem_407280 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407280 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407280)
  store %struct.Memory* %call_407280, %struct.Memory** %MEMORY

  ; Code: movl 0x444(%rdx), %eax	 RIP: 407284	 Bytes: 6
  %loadMem_407284 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407284 = call %struct.Memory* @routine_movl_0x444__rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407284)
  store %struct.Memory* %call_407284, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40728a	 Bytes: 3
  %loadMem_40728a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40728a = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40728a)
  store %struct.Memory* %call_40728a, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x444(%rdx)	 RIP: 40728d	 Bytes: 6
  %loadMem_40728d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40728d = call %struct.Memory* @routine_movl__eax__0x444__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40728d)
  store %struct.Memory* %call_40728d, %struct.Memory** %MEMORY

  ; Code: movzbl -0x11(%rbp), %eax	 RIP: 407293	 Bytes: 4
  %loadMem_407293 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407293 = call %struct.Memory* @routine_movzbl_MINUS0x11__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407293)
  store %struct.Memory* %call_407293, %struct.Memory** %MEMORY

  ; Code: addl $0x4, %eax	 RIP: 407297	 Bytes: 3
  %loadMem_407297 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407297 = call %struct.Memory* @routine_addl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407297)
  store %struct.Memory* %call_407297, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 40729a	 Bytes: 4
  %loadMem_40729a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40729a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40729a)
  store %struct.Memory* %call_40729a, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x10(%rdx)	 RIP: 40729e	 Bytes: 3
  %loadMem_40729e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40729e = call %struct.Memory* @routine_movl__eax__0x10__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40729e)
  store %struct.Memory* %call_40729e, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4072a1	 Bytes: 4
  %loadMem_4072a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4072a1 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4072a1)
  store %struct.Memory* %call_4072a1, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rdx), %edi	 RIP: 4072a5	 Bytes: 3
  %loadMem_4072a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4072a5 = call %struct.Memory* @routine_movl_0x3c__rdx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4072a5)
  store %struct.Memory* %call_4072a5, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4072a8	 Bytes: 4
  %loadMem_4072a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4072a8 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4072a8)
  store %struct.Memory* %call_4072a8, %struct.Memory** %MEMORY

  ; Code: addq $0x448, %rdx	 RIP: 4072ac	 Bytes: 7
  %loadMem_4072ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4072ac = call %struct.Memory* @routine_addq__0x448___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4072ac)
  store %struct.Memory* %call_4072ac, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %rsi	 RIP: 4072b3	 Bytes: 3
  %loadMem_4072b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4072b3 = call %struct.Memory* @routine_movq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4072b3)
  store %struct.Memory* %call_4072b3, %struct.Memory** %MEMORY

  ; Code: callq .BZ2_indexIntoF	 RIP: 4072b6	 Bytes: 5
  %loadMem1_4072b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4072b6 = call %struct.Memory* @routine_callq_.BZ2_indexIntoF(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4072b6, i64 -3942, i64 5, i64 5)
  store %struct.Memory* %call1_4072b6, %struct.Memory** %MEMORY

  %loadMem2_4072b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4072b6 = load i64, i64* %3
  %call2_4072b6 = call %struct.Memory* @sub_406350.BZ2_indexIntoF(%struct.State* %0, i64  %loadPC_4072b6, %struct.Memory* %loadMem2_4072b6)
  store %struct.Memory* %call2_4072b6, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4072bb	 Bytes: 4
  %loadMem_4072bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4072bb = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4072bb)
  store %struct.Memory* %call_4072bb, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x40(%rdx)	 RIP: 4072bf	 Bytes: 3
  %loadMem_4072bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4072bf = call %struct.Memory* @routine_movl__eax__0x40__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4072bf)
  store %struct.Memory* %call_4072bf, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4072c2	 Bytes: 4
  %loadMem_4072c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4072c2 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4072c2)
  store %struct.Memory* %call_4072c2, %struct.Memory** %MEMORY

  ; Code: movq 0xc58(%rdx), %rdx	 RIP: 4072c6	 Bytes: 7
  %loadMem_4072c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4072c6 = call %struct.Memory* @routine_movq_0xc58__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4072c6)
  store %struct.Memory* %call_4072c6, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rsi	 RIP: 4072cd	 Bytes: 4
  %loadMem_4072cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4072cd = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4072cd)
  store %struct.Memory* %call_4072cd, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rsi), %eax	 RIP: 4072d1	 Bytes: 3
  %loadMem_4072d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4072d1 = call %struct.Memory* @routine_movl_0x3c__rsi____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4072d1)
  store %struct.Memory* %call_4072d1, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 4072d4	 Bytes: 2
  %loadMem_4072d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4072d4 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4072d4)
  store %struct.Memory* %call_4072d4, %struct.Memory** %MEMORY

  ; Code: movzwl (%rdx,%rsi,2), %eax	 RIP: 4072d6	 Bytes: 4
  %loadMem_4072d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4072d6 = call %struct.Memory* @routine_movzwl___rdx__rsi_2____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4072d6)
  store %struct.Memory* %call_4072d6, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4072da	 Bytes: 4
  %loadMem_4072da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4072da = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4072da)
  store %struct.Memory* %call_4072da, %struct.Memory** %MEMORY

  ; Code: movq 0xc60(%rdx), %rdx	 RIP: 4072de	 Bytes: 7
  %loadMem_4072de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4072de = call %struct.Memory* @routine_movq_0xc60__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4072de)
  store %struct.Memory* %call_4072de, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rsi	 RIP: 4072e5	 Bytes: 4
  %loadMem_4072e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4072e5 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4072e5)
  store %struct.Memory* %call_4072e5, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rsi), %edi	 RIP: 4072e9	 Bytes: 3
  %loadMem_4072e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4072e9 = call %struct.Memory* @routine_movl_0x3c__rsi____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4072e9)
  store %struct.Memory* %call_4072e9, %struct.Memory** %MEMORY

  ; Code: shrl $0x1, %edi	 RIP: 4072ec	 Bytes: 3
  %loadMem_4072ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4072ec = call %struct.Memory* @routine_shrl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4072ec)
  store %struct.Memory* %call_4072ec, %struct.Memory** %MEMORY

  ; Code: movl %edi, %edi	 RIP: 4072ef	 Bytes: 2
  %loadMem_4072ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4072ef = call %struct.Memory* @routine_movl__edi___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4072ef)
  store %struct.Memory* %call_4072ef, %struct.Memory** %MEMORY

  ; Code: movl %edi, %esi	 RIP: 4072f1	 Bytes: 2
  %loadMem_4072f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4072f1 = call %struct.Memory* @routine_movl__edi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4072f1)
  store %struct.Memory* %call_4072f1, %struct.Memory** %MEMORY

  ; Code: movzbl (%rdx,%rsi,1), %edi	 RIP: 4072f3	 Bytes: 4
  %loadMem_4072f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4072f3 = call %struct.Memory* @routine_movzbl___rdx__rsi_1____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4072f3)
  store %struct.Memory* %call_4072f3, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4072f7	 Bytes: 4
  %loadMem_4072f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4072f7 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4072f7)
  store %struct.Memory* %call_4072f7, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rdx), %r8d	 RIP: 4072fb	 Bytes: 4
  %loadMem_4072fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4072fb = call %struct.Memory* @routine_movl_0x3c__rdx____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4072fb)
  store %struct.Memory* %call_4072fb, %struct.Memory** %MEMORY

  ; Code: shll $0x2, %r8d	 RIP: 4072ff	 Bytes: 4
  %loadMem_4072ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4072ff = call %struct.Memory* @routine_shll__0x2___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4072ff)
  store %struct.Memory* %call_4072ff, %struct.Memory** %MEMORY

  ; Code: andl $0x4, %r8d	 RIP: 407303	 Bytes: 4
  %loadMem_407303 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407303 = call %struct.Memory* @routine_andl__0x4___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407303)
  store %struct.Memory* %call_407303, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %ecx	 RIP: 407307	 Bytes: 3
  %loadMem_407307 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407307 = call %struct.Memory* @routine_movl__r8d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407307)
  store %struct.Memory* %call_407307, %struct.Memory** %MEMORY

  ; Code: shrl %cl, %edi	 RIP: 40730a	 Bytes: 2
  %loadMem_40730a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40730a = call %struct.Memory* @routine_shrl__cl___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40730a)
  store %struct.Memory* %call_40730a, %struct.Memory** %MEMORY

  ; Code: andl $0xf, %edi	 RIP: 40730c	 Bytes: 3
  %loadMem_40730c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40730c = call %struct.Memory* @routine_andl__0xf___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40730c)
  store %struct.Memory* %call_40730c, %struct.Memory** %MEMORY

  ; Code: shll $0x10, %edi	 RIP: 40730f	 Bytes: 3
  %loadMem_40730f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40730f = call %struct.Memory* @routine_shll__0x10___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40730f)
  store %struct.Memory* %call_40730f, %struct.Memory** %MEMORY

  ; Code: orl %edi, %eax	 RIP: 407312	 Bytes: 2
  %loadMem_407312 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407312 = call %struct.Memory* @routine_orl__edi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407312)
  store %struct.Memory* %call_407312, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 407314	 Bytes: 4
  %loadMem_407314 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407314 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407314)
  store %struct.Memory* %call_407314, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x3c(%rdx)	 RIP: 407318	 Bytes: 3
  %loadMem_407318 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407318 = call %struct.Memory* @routine_movl__eax__0x3c__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407318)
  store %struct.Memory* %call_407318, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 40731b	 Bytes: 4
  %loadMem_40731b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40731b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40731b)
  store %struct.Memory* %call_40731b, %struct.Memory** %MEMORY

  ; Code: movl 0x444(%rdx), %eax	 RIP: 40731f	 Bytes: 6
  %loadMem_40731f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40731f = call %struct.Memory* @routine_movl_0x444__rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40731f)
  store %struct.Memory* %call_40731f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 407325	 Bytes: 3
  %loadMem_407325 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407325 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407325)
  store %struct.Memory* %call_407325, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x444(%rdx)	 RIP: 407328	 Bytes: 6
  %loadMem_407328 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407328 = call %struct.Memory* @routine_movl__eax__0x444__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407328)
  store %struct.Memory* %call_407328, %struct.Memory** %MEMORY

  ; Code: jmpq .L_406e2e	 RIP: 40732e	 Bytes: 5
  %loadMem_40732e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40732e = call %struct.Memory* @routine_jmpq_.L_406e2e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40732e, i64 -1280, i64 5)
  store %struct.Memory* %call_40732e, %struct.Memory** %MEMORY

  br label %block_.L_406e2e

  ; Code: .L_407333:	 RIP: 407333	 Bytes: 0
block_.L_407333:

  ; Code: movzbl -0x1(%rbp), %eax	 RIP: 407333	 Bytes: 4
  %loadMem_407333 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407333 = call %struct.Memory* @routine_movzbl_MINUS0x1__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407333)
  store %struct.Memory* %call_407333, %struct.Memory** %MEMORY

  ; Code: addq $0x20, %rsp	 RIP: 407337	 Bytes: 4
  %loadMem_407337 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407337 = call %struct.Memory* @routine_addq__0x20___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407337)
  store %struct.Memory* %call_407337, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 40733b	 Bytes: 1
  %loadMem_40733b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40733b = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40733b)
  store %struct.Memory* %call_40733b, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 40733c	 Bytes: 1
  %loadMem_40733c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40733c = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40733c)
  store %struct.Memory* %call_40733c, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_40733c
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = sub i64 %3, %4
  store i64 %6, i64* %2, align 8
  %7 = icmp ult i64 %3, %4
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = trunc i64 %6 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11) #22
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i64 %4, %3
  %18 = xor i64 %17, %6
  %19 = lshr i64 %18, 4
  %20 = trunc i64 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i64 %6, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i64 %6, 63
  %27 = trunc i64 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %3, 63
  %30 = lshr i64 %4, 63
  %31 = xor i64 %30, %29
  %32 = xor i64 %26, %29
  %33 = add   i64 %32, %31
  %34 = icmp eq i64 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_subq__0x20___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 13
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSP = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RSP
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 32)
  ret %struct.Memory* %12
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

define %struct.Memory* @routine_je_.L_406e29(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4066af(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_4066b4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_4066ce(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jmpq_.L_407333(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jne_.L_4066e1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jmpq_.L_406794(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jne_.L_40678f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jne_.L_4067bc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jle_.L_4067e4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_movl_0x3c__rax____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addq__0x448___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 1096)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__rax___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12)
  ret %struct.Memory* %15
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4CALLI2InImEEEP6MemoryS4_R5StateT_S2_(%struct.Memory* readnone, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 {
  %5 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, -8
  %8 = inttoptr i64 %7 to i64*
  store i64 %3, i64* %8
  store i64 %7, i64* %5, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %9, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_callq_.BZ2_indexIntoF(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4CALLI2InImEEEP6MemoryS4_R5StateT_S2_(%struct.Memory* %2, %struct.State* %0, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movb__al___dl(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %AL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %DL, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_movq_0xc58__rsi____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 3160
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %10)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i16*
  %6 = load i16, i16* %5
  %7 = zext i16 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movzwl___rsi__r8_2____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %R8
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %18)
  ret %struct.Memory* %21
}




define %struct.Memory* @routine_movq_0xc60__rsi____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 3168
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl_0x3c__r8____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = add i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_shrl__0x1___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHRI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__ecx___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i32, i32* %ECX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movzbl___rsi__r8_1____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %R8
  %17 = add i64 %16, %15
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 5
  store i64 %19, i64* %PC
  %20 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %17)
  ret %struct.Memory* %20
}




define %struct.Memory* @routine_movl_0x3c__rsi____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = add i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_shll__0x2___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %9, i64 2)
  ret %struct.Memory* %12
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

define %struct.Memory* @routine_andl__0x4___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %9, i64 4)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_movl__edi___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x18__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SHRI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* readnone, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
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

define %struct.Memory* @routine_shrl__cl___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %RDI = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RDI
  %14 = load i8, i8* %CL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHRI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_andl__0xf___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %9, i64 15)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_shll__0x10___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %9, i64 16)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L2ORI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = or i64 %4, %3
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

define %struct.Memory* @routine_orl__edi___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = load i32, i32* %EDI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2ORI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl__eax__0x3c__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 60
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_cmpl__0x0__0x18__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_4068d0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jne_.L_4068cb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jmpq_.L_4068d0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jne_.L_406933(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_je_.L_406954(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__eax___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movzwl___rsi__rdx_2____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %18)
  ret %struct.Memory* %21
}




define %struct.Memory* @routine_movq_0xc60__rdx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 3168
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_shrl__0x1___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHRI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__edi___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edi___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %EDI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movzbl___rdx__rsi_1____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RSI
  %17 = add i64 %16, %15
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 4
  store i64 %19, i64* %PC
  %20 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %17)
  ret %struct.Memory* %20
}




define %struct.Memory* @routine_movl_0x3c__rdx____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 60
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_shll__0x2___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R8D to i64*
  %10 = load i32, i32* %R8D
  %11 = zext i32 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 %11, i64 2)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_andl__0x4___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R8D to i64*
  %10 = load i32, i32* %R8D
  %11 = zext i32 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 %11, i64 4)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movl__r8d___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R8D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_jne_.L_406a28(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
























define %struct.Memory* @routine_jne_.L_406a23(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






define %struct.Memory* @routine_jmpq_.L_406a28(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
















































define %struct.Memory* @routine_jne_.L_406a8b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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










define %struct.Memory* @routine_je_.L_406aac(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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








































































define %struct.Memory* @routine_jne_.L_406b80(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
























define %struct.Memory* @routine_jne_.L_406b7b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






define %struct.Memory* @routine_jmpq_.L_406b80(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
















































define %struct.Memory* @routine_jne_.L_406be3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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










define %struct.Memory* @routine_je_.L_406c04(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
















































































define %struct.Memory* @routine_jne_.L_406ccd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
























define %struct.Memory* @routine_jne_.L_406cc8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






define %struct.Memory* @routine_jmpq_.L_406ccd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl_0x3c__rdx____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addq__0x448___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 1096)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__rdx___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12)
  ret %struct.Memory* %15
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




define %struct.Memory* @routine_movq_0xc58__rdx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 3160
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl_0x3c__rsi____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RSI
  %13 = add i64 %12, 60
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


define %struct.Memory* @routine_movzwl___rdx__rsi_2____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %18)
  ret %struct.Memory* %21
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


define %struct.Memory* @routine_movzbl___rdx__rsi_1____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RSI
  %17 = add i64 %16, %15
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 4
  store i64 %19, i64* %PC
  %20 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %17)
  ret %struct.Memory* %20
}










define %struct.Memory* @routine_movl__ecx__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 28
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_MINUS0x1c__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


















define %struct.Memory* @routine_jne_.L_406de8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
























define %struct.Memory* @routine_jne_.L_406de3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






define %struct.Memory* @routine_jmpq_.L_406de8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_jmpq_.L_406e2e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_406e33(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jne_.L_406e4d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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










define %struct.Memory* @routine_jne_.L_406e60(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jmpq_.L_406f13(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






















































































define %struct.Memory* @routine_jne_.L_406f0e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


























define %struct.Memory* @routine_jne_.L_406f3b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


















define %struct.Memory* @routine_jle_.L_406f63(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_movl_MINUS0x20__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}
















define %struct.Memory* @routine_movl_0x444__rsi____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RSI
  %13 = add i64 %12, 1092
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__0x444__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 1092
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_movl_0xfa50__rsi____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = add i64 %12, 64080
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl__0x1___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_cmpl__edi___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %EDI = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_407034(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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










define %struct.Memory* @routine_je_.L_407055(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






























































































define %struct.Memory* @routine_movl_0xfa50__rdx____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 64080
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jne_.L_40710e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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










define %struct.Memory* @routine_je_.L_40712f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




































































































define %struct.Memory* @routine_jne_.L_4071e8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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










define %struct.Memory* @routine_je_.L_407209(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_addq__0x20___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 13
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSP = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RSP
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 32)
  ret %struct.Memory* %12
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

