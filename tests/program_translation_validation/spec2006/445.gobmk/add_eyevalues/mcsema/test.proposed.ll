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


define %struct.Memory* @add_eyevalues(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .add_eyevalues:	 RIP: 43cc10	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 43cc10	 Bytes: 1
  %loadMem_43cc10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc10 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc10)
  store %struct.Memory* %call_43cc10, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 43cc11	 Bytes: 3
  %loadMem_43cc11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc11 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc11)
  store %struct.Memory* %call_43cc11, %struct.Memory** %MEMORY

  ; Code: subq $0x78, %rsp	 RIP: 43cc14	 Bytes: 4
  %loadMem_43cc14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc14 = call %struct.Memory* @routine_subq__0x78___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc14)
  store %struct.Memory* %call_43cc14, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x8(%rbp)	 RIP: 43cc18	 Bytes: 4
  %loadMem_43cc18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc18 = call %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc18)
  store %struct.Memory* %call_43cc18, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x10(%rbp)	 RIP: 43cc1c	 Bytes: 4
  %loadMem_43cc1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc1c = call %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc1c)
  store %struct.Memory* %call_43cc1c, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x18(%rbp)	 RIP: 43cc20	 Bytes: 4
  %loadMem_43cc20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc20 = call %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc20)
  store %struct.Memory* %call_43cc20, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 43cc24	 Bytes: 4
  %loadMem_43cc24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc24 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc24)
  store %struct.Memory* %call_43cc24, %struct.Memory** %MEMORY

  ; Code: movzbl (%rdx), %eax	 RIP: 43cc28	 Bytes: 3
  %loadMem_43cc28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc28 = call %struct.Memory* @routine_movzbl___rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc28)
  store %struct.Memory* %call_43cc28, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 43cc2b	 Bytes: 4
  %loadMem_43cc2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc2b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc2b)
  store %struct.Memory* %call_43cc2b, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rdx), %ecx	 RIP: 43cc2f	 Bytes: 4
  %loadMem_43cc2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc2f = call %struct.Memory* @routine_movzbl_0x2__rdx____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc2f)
  store %struct.Memory* %call_43cc2f, %struct.Memory** %MEMORY

  ; Code: addl %ecx, %eax	 RIP: 43cc33	 Bytes: 2
  %loadMem_43cc33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc33 = call %struct.Memory* @routine_addl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc33)
  store %struct.Memory* %call_43cc33, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 43cc35	 Bytes: 4
  %loadMem_43cc35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc35 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc35)
  store %struct.Memory* %call_43cc35, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rdx), %ecx	 RIP: 43cc39	 Bytes: 4
  %loadMem_43cc39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc39 = call %struct.Memory* @routine_movzbl_0x2__rdx____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc39)
  store %struct.Memory* %call_43cc39, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 43cc3d	 Bytes: 4
  %loadMem_43cc3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc3d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc3d)
  store %struct.Memory* %call_43cc3d, %struct.Memory** %MEMORY

  ; Code: movzbl (%rdx), %r8d	 RIP: 43cc41	 Bytes: 4
  %loadMem_43cc41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc41 = call %struct.Memory* @routine_movzbl___rdx____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc41)
  store %struct.Memory* %call_43cc41, %struct.Memory** %MEMORY

  ; Code: addl %r8d, %ecx	 RIP: 43cc45	 Bytes: 3
  %loadMem_43cc45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc45 = call %struct.Memory* @routine_addl__r8d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc45)
  store %struct.Memory* %call_43cc45, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 43cc48	 Bytes: 2
  %loadMem_43cc48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc48 = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc48)
  store %struct.Memory* %call_43cc48, %struct.Memory** %MEMORY

  ; Code: jge .L_43cc69	 RIP: 43cc4a	 Bytes: 6
  %loadMem_43cc4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc4a = call %struct.Memory* @routine_jge_.L_43cc69(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc4a, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_43cc4a, %struct.Memory** %MEMORY

  %loadBr_43cc4a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43cc4a = icmp eq i8 %loadBr_43cc4a, 1
  br i1 %cmpBr_43cc4a, label %block_.L_43cc69, label %block_43cc50

block_43cc50:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 43cc50	 Bytes: 4
  %loadMem_43cc50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc50 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc50)
  store %struct.Memory* %call_43cc50, %struct.Memory** %MEMORY

  ; Code: movzbl (%rax), %ecx	 RIP: 43cc54	 Bytes: 3
  %loadMem_43cc54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc54 = call %struct.Memory* @routine_movzbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc54)
  store %struct.Memory* %call_43cc54, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43cc57	 Bytes: 4
  %loadMem_43cc57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc57 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc57)
  store %struct.Memory* %call_43cc57, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %edx	 RIP: 43cc5b	 Bytes: 4
  %loadMem_43cc5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc5b = call %struct.Memory* @routine_movzbl_0x2__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc5b)
  store %struct.Memory* %call_43cc5b, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43cc5f	 Bytes: 2
  %loadMem_43cc5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc5f = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc5f)
  store %struct.Memory* %call_43cc5f, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x24(%rbp)	 RIP: 43cc61	 Bytes: 3
  %loadMem_43cc61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc61 = call %struct.Memory* @routine_movl__ecx__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc61)
  store %struct.Memory* %call_43cc61, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43cc7d	 RIP: 43cc64	 Bytes: 5
  %loadMem_43cc64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc64 = call %struct.Memory* @routine_jmpq_.L_43cc7d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc64, i64 25, i64 5)
  store %struct.Memory* %call_43cc64, %struct.Memory** %MEMORY

  br label %block_.L_43cc7d

  ; Code: .L_43cc69:	 RIP: 43cc69	 Bytes: 0
block_.L_43cc69:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43cc69	 Bytes: 4
  %loadMem_43cc69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc69 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc69)
  store %struct.Memory* %call_43cc69, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %ecx	 RIP: 43cc6d	 Bytes: 4
  %loadMem_43cc6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc6d = call %struct.Memory* @routine_movzbl_0x2__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc6d)
  store %struct.Memory* %call_43cc6d, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43cc71	 Bytes: 4
  %loadMem_43cc71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc71 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc71)
  store %struct.Memory* %call_43cc71, %struct.Memory** %MEMORY

  ; Code: movzbl (%rax), %edx	 RIP: 43cc75	 Bytes: 3
  %loadMem_43cc75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc75 = call %struct.Memory* @routine_movzbl___rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc75)
  store %struct.Memory* %call_43cc75, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43cc78	 Bytes: 2
  %loadMem_43cc78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc78 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc78)
  store %struct.Memory* %call_43cc78, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x24(%rbp)	 RIP: 43cc7a	 Bytes: 3
  %loadMem_43cc7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc7a = call %struct.Memory* @routine_movl__ecx__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc7a)
  store %struct.Memory* %call_43cc7a, %struct.Memory** %MEMORY

  ; Code: .L_43cc7d:	 RIP: 43cc7d	 Bytes: 0
  br label %block_.L_43cc7d
block_.L_43cc7d:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 43cc7d	 Bytes: 3
  %loadMem_43cc7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc7d = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc7d)
  store %struct.Memory* %call_43cc7d, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 43cc80	 Bytes: 4
  %loadMem_43cc80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc80 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc80)
  store %struct.Memory* %call_43cc80, %struct.Memory** %MEMORY

  ; Code: movzbl (%rcx), %edx	 RIP: 43cc84	 Bytes: 3
  %loadMem_43cc84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc84 = call %struct.Memory* @routine_movzbl___rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc84)
  store %struct.Memory* %call_43cc84, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 43cc87	 Bytes: 4
  %loadMem_43cc87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc87 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc87)
  store %struct.Memory* %call_43cc87, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rcx), %esi	 RIP: 43cc8b	 Bytes: 4
  %loadMem_43cc8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc8b = call %struct.Memory* @routine_movzbl_0x1__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc8b)
  store %struct.Memory* %call_43cc8b, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 43cc8f	 Bytes: 2
  %loadMem_43cc8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc8f = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc8f)
  store %struct.Memory* %call_43cc8f, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 43cc91	 Bytes: 4
  %loadMem_43cc91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc91 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc91)
  store %struct.Memory* %call_43cc91, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rcx), %esi	 RIP: 43cc95	 Bytes: 4
  %loadMem_43cc95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc95 = call %struct.Memory* @routine_movzbl_0x1__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc95)
  store %struct.Memory* %call_43cc95, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 43cc99	 Bytes: 4
  %loadMem_43cc99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc99 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc99)
  store %struct.Memory* %call_43cc99, %struct.Memory** %MEMORY

  ; Code: movzbl (%rcx), %edi	 RIP: 43cc9d	 Bytes: 3
  %loadMem_43cc9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc9d = call %struct.Memory* @routine_movzbl___rcx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc9d)
  store %struct.Memory* %call_43cc9d, %struct.Memory** %MEMORY

  ; Code: addl %edi, %esi	 RIP: 43cca0	 Bytes: 2
  %loadMem_43cca0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cca0 = call %struct.Memory* @routine_addl__edi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cca0)
  store %struct.Memory* %call_43cca0, %struct.Memory** %MEMORY

  ; Code: cmpl %esi, %edx	 RIP: 43cca2	 Bytes: 2
  %loadMem_43cca2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cca2 = call %struct.Memory* @routine_cmpl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cca2)
  store %struct.Memory* %call_43cca2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 43cca4	 Bytes: 3
  %loadMem_43cca4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cca4 = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cca4)
  store %struct.Memory* %call_43cca4, %struct.Memory** %MEMORY

  ; Code: jge .L_43ccc6	 RIP: 43cca7	 Bytes: 6
  %loadMem_43cca7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cca7 = call %struct.Memory* @routine_jge_.L_43ccc6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cca7, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_43cca7, %struct.Memory** %MEMORY

  %loadBr_43cca7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43cca7 = icmp eq i8 %loadBr_43cca7, 1
  br i1 %cmpBr_43cca7, label %block_.L_43ccc6, label %block_43ccad

block_43ccad:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 43ccad	 Bytes: 4
  %loadMem_43ccad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ccad = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ccad)
  store %struct.Memory* %call_43ccad, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %ecx	 RIP: 43ccb1	 Bytes: 4
  %loadMem_43ccb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ccb1 = call %struct.Memory* @routine_movzbl_0x1__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ccb1)
  store %struct.Memory* %call_43ccb1, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43ccb5	 Bytes: 4
  %loadMem_43ccb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ccb5 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ccb5)
  store %struct.Memory* %call_43ccb5, %struct.Memory** %MEMORY

  ; Code: movzbl (%rax), %edx	 RIP: 43ccb9	 Bytes: 3
  %loadMem_43ccb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ccb9 = call %struct.Memory* @routine_movzbl___rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ccb9)
  store %struct.Memory* %call_43ccb9, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43ccbc	 Bytes: 2
  %loadMem_43ccbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ccbc = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ccbc)
  store %struct.Memory* %call_43ccbc, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x2c(%rbp)	 RIP: 43ccbe	 Bytes: 3
  %loadMem_43ccbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ccbe = call %struct.Memory* @routine_movl__ecx__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ccbe)
  store %struct.Memory* %call_43ccbe, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43ccda	 RIP: 43ccc1	 Bytes: 5
  %loadMem_43ccc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ccc1 = call %struct.Memory* @routine_jmpq_.L_43ccda(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ccc1, i64 25, i64 5)
  store %struct.Memory* %call_43ccc1, %struct.Memory** %MEMORY

  br label %block_.L_43ccda

  ; Code: .L_43ccc6:	 RIP: 43ccc6	 Bytes: 0
block_.L_43ccc6:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43ccc6	 Bytes: 4
  %loadMem_43ccc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ccc6 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ccc6)
  store %struct.Memory* %call_43ccc6, %struct.Memory** %MEMORY

  ; Code: movzbl (%rax), %ecx	 RIP: 43ccca	 Bytes: 3
  %loadMem_43ccca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ccca = call %struct.Memory* @routine_movzbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ccca)
  store %struct.Memory* %call_43ccca, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43cccd	 Bytes: 4
  %loadMem_43cccd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cccd = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cccd)
  store %struct.Memory* %call_43cccd, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %edx	 RIP: 43ccd1	 Bytes: 4
  %loadMem_43ccd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ccd1 = call %struct.Memory* @routine_movzbl_0x1__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ccd1)
  store %struct.Memory* %call_43ccd1, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43ccd5	 Bytes: 2
  %loadMem_43ccd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ccd5 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ccd5)
  store %struct.Memory* %call_43ccd5, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x2c(%rbp)	 RIP: 43ccd7	 Bytes: 3
  %loadMem_43ccd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ccd7 = call %struct.Memory* @routine_movl__ecx__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ccd7)
  store %struct.Memory* %call_43ccd7, %struct.Memory** %MEMORY

  ; Code: .L_43ccda:	 RIP: 43ccda	 Bytes: 0
  br label %block_.L_43ccda
block_.L_43ccda:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 43ccda	 Bytes: 3
  %loadMem_43ccda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ccda = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ccda)
  store %struct.Memory* %call_43ccda, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 43ccdd	 Bytes: 3
  %loadMem_43ccdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ccdd = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ccdd)
  store %struct.Memory* %call_43ccdd, %struct.Memory** %MEMORY

  ; Code: cmpl %eax, %ecx	 RIP: 43cce0	 Bytes: 2
  %loadMem_43cce0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cce0 = call %struct.Memory* @routine_cmpl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cce0)
  store %struct.Memory* %call_43cce0, %struct.Memory** %MEMORY

  ; Code: jge .L_43cd4a	 RIP: 43cce2	 Bytes: 6
  %loadMem_43cce2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cce2 = call %struct.Memory* @routine_jge_.L_43cd4a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cce2, i8* %BRANCH_TAKEN, i64 104, i64 6, i64 6)
  store %struct.Memory* %call_43cce2, %struct.Memory** %MEMORY

  %loadBr_43cce2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43cce2 = icmp eq i8 %loadBr_43cce2, 1
  br i1 %cmpBr_43cce2, label %block_.L_43cd4a, label %block_43cce8

block_43cce8:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 43cce8	 Bytes: 4
  %loadMem_43cce8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cce8 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cce8)
  store %struct.Memory* %call_43cce8, %struct.Memory** %MEMORY

  ; Code: movzbl (%rax), %ecx	 RIP: 43ccec	 Bytes: 3
  %loadMem_43ccec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ccec = call %struct.Memory* @routine_movzbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ccec)
  store %struct.Memory* %call_43ccec, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43ccef	 Bytes: 4
  %loadMem_43ccef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ccef = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ccef)
  store %struct.Memory* %call_43ccef, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %edx	 RIP: 43ccf3	 Bytes: 4
  %loadMem_43ccf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ccf3 = call %struct.Memory* @routine_movzbl_0x2__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ccf3)
  store %struct.Memory* %call_43ccf3, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43ccf7	 Bytes: 2
  %loadMem_43ccf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ccf7 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ccf7)
  store %struct.Memory* %call_43ccf7, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43ccf9	 Bytes: 4
  %loadMem_43ccf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ccf9 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ccf9)
  store %struct.Memory* %call_43ccf9, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %edx	 RIP: 43ccfd	 Bytes: 4
  %loadMem_43ccfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ccfd = call %struct.Memory* @routine_movzbl_0x2__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ccfd)
  store %struct.Memory* %call_43ccfd, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43cd01	 Bytes: 4
  %loadMem_43cd01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd01 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd01)
  store %struct.Memory* %call_43cd01, %struct.Memory** %MEMORY

  ; Code: movzbl (%rax), %esi	 RIP: 43cd05	 Bytes: 3
  %loadMem_43cd05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd05 = call %struct.Memory* @routine_movzbl___rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd05)
  store %struct.Memory* %call_43cd05, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 43cd08	 Bytes: 2
  %loadMem_43cd08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd08 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd08)
  store %struct.Memory* %call_43cd08, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %ecx	 RIP: 43cd0a	 Bytes: 2
  %loadMem_43cd0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd0a = call %struct.Memory* @routine_cmpl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd0a)
  store %struct.Memory* %call_43cd0a, %struct.Memory** %MEMORY

  ; Code: jge .L_43cd2b	 RIP: 43cd0c	 Bytes: 6
  %loadMem_43cd0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd0c = call %struct.Memory* @routine_jge_.L_43cd2b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd0c, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_43cd0c, %struct.Memory** %MEMORY

  %loadBr_43cd0c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43cd0c = icmp eq i8 %loadBr_43cd0c, 1
  br i1 %cmpBr_43cd0c, label %block_.L_43cd2b, label %block_43cd12

block_43cd12:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 43cd12	 Bytes: 4
  %loadMem_43cd12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd12 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd12)
  store %struct.Memory* %call_43cd12, %struct.Memory** %MEMORY

  ; Code: movzbl (%rax), %ecx	 RIP: 43cd16	 Bytes: 3
  %loadMem_43cd16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd16 = call %struct.Memory* @routine_movzbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd16)
  store %struct.Memory* %call_43cd16, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43cd19	 Bytes: 4
  %loadMem_43cd19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd19 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd19)
  store %struct.Memory* %call_43cd19, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %edx	 RIP: 43cd1d	 Bytes: 4
  %loadMem_43cd1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd1d = call %struct.Memory* @routine_movzbl_0x2__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd1d)
  store %struct.Memory* %call_43cd1d, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43cd21	 Bytes: 2
  %loadMem_43cd21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd21 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd21)
  store %struct.Memory* %call_43cd21, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x30(%rbp)	 RIP: 43cd23	 Bytes: 3
  %loadMem_43cd23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd23 = call %struct.Memory* @routine_movl__ecx__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd23)
  store %struct.Memory* %call_43cd23, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43cd3f	 RIP: 43cd26	 Bytes: 5
  %loadMem_43cd26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd26 = call %struct.Memory* @routine_jmpq_.L_43cd3f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd26, i64 25, i64 5)
  store %struct.Memory* %call_43cd26, %struct.Memory** %MEMORY

  br label %block_.L_43cd3f

  ; Code: .L_43cd2b:	 RIP: 43cd2b	 Bytes: 0
block_.L_43cd2b:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43cd2b	 Bytes: 4
  %loadMem_43cd2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd2b = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd2b)
  store %struct.Memory* %call_43cd2b, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %ecx	 RIP: 43cd2f	 Bytes: 4
  %loadMem_43cd2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd2f = call %struct.Memory* @routine_movzbl_0x2__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd2f)
  store %struct.Memory* %call_43cd2f, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43cd33	 Bytes: 4
  %loadMem_43cd33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd33 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd33)
  store %struct.Memory* %call_43cd33, %struct.Memory** %MEMORY

  ; Code: movzbl (%rax), %edx	 RIP: 43cd37	 Bytes: 3
  %loadMem_43cd37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd37 = call %struct.Memory* @routine_movzbl___rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd37)
  store %struct.Memory* %call_43cd37, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43cd3a	 Bytes: 2
  %loadMem_43cd3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd3a = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd3a)
  store %struct.Memory* %call_43cd3a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x30(%rbp)	 RIP: 43cd3c	 Bytes: 3
  %loadMem_43cd3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd3c = call %struct.Memory* @routine_movl__ecx__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd3c)
  store %struct.Memory* %call_43cd3c, %struct.Memory** %MEMORY

  ; Code: .L_43cd3f:	 RIP: 43cd3f	 Bytes: 0
  br label %block_.L_43cd3f
block_.L_43cd3f:

  ; Code: movl -0x30(%rbp), %eax	 RIP: 43cd3f	 Bytes: 3
  %loadMem_43cd3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd3f = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd3f)
  store %struct.Memory* %call_43cd3f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x34(%rbp)	 RIP: 43cd42	 Bytes: 3
  %loadMem_43cd42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd42 = call %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd42)
  store %struct.Memory* %call_43cd42, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43cda7	 RIP: 43cd45	 Bytes: 5
  %loadMem_43cd45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd45 = call %struct.Memory* @routine_jmpq_.L_43cda7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd45, i64 98, i64 5)
  store %struct.Memory* %call_43cd45, %struct.Memory** %MEMORY

  br label %block_.L_43cda7

  ; Code: .L_43cd4a:	 RIP: 43cd4a	 Bytes: 0
block_.L_43cd4a:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43cd4a	 Bytes: 4
  %loadMem_43cd4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd4a = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd4a)
  store %struct.Memory* %call_43cd4a, %struct.Memory** %MEMORY

  ; Code: movzbl (%rax), %ecx	 RIP: 43cd4e	 Bytes: 3
  %loadMem_43cd4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd4e = call %struct.Memory* @routine_movzbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd4e)
  store %struct.Memory* %call_43cd4e, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43cd51	 Bytes: 4
  %loadMem_43cd51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd51 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd51)
  store %struct.Memory* %call_43cd51, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %edx	 RIP: 43cd55	 Bytes: 4
  %loadMem_43cd55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd55 = call %struct.Memory* @routine_movzbl_0x1__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd55)
  store %struct.Memory* %call_43cd55, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43cd59	 Bytes: 2
  %loadMem_43cd59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd59 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd59)
  store %struct.Memory* %call_43cd59, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43cd5b	 Bytes: 4
  %loadMem_43cd5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd5b = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd5b)
  store %struct.Memory* %call_43cd5b, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %edx	 RIP: 43cd5f	 Bytes: 4
  %loadMem_43cd5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd5f = call %struct.Memory* @routine_movzbl_0x1__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd5f)
  store %struct.Memory* %call_43cd5f, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43cd63	 Bytes: 4
  %loadMem_43cd63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd63 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd63)
  store %struct.Memory* %call_43cd63, %struct.Memory** %MEMORY

  ; Code: movzbl (%rax), %esi	 RIP: 43cd67	 Bytes: 3
  %loadMem_43cd67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd67 = call %struct.Memory* @routine_movzbl___rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd67)
  store %struct.Memory* %call_43cd67, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 43cd6a	 Bytes: 2
  %loadMem_43cd6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd6a = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd6a)
  store %struct.Memory* %call_43cd6a, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %ecx	 RIP: 43cd6c	 Bytes: 2
  %loadMem_43cd6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd6c = call %struct.Memory* @routine_cmpl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd6c)
  store %struct.Memory* %call_43cd6c, %struct.Memory** %MEMORY

  ; Code: jge .L_43cd8d	 RIP: 43cd6e	 Bytes: 6
  %loadMem_43cd6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd6e = call %struct.Memory* @routine_jge_.L_43cd8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd6e, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_43cd6e, %struct.Memory** %MEMORY

  %loadBr_43cd6e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43cd6e = icmp eq i8 %loadBr_43cd6e, 1
  br i1 %cmpBr_43cd6e, label %block_.L_43cd8d, label %block_43cd74

block_43cd74:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 43cd74	 Bytes: 4
  %loadMem_43cd74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd74 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd74)
  store %struct.Memory* %call_43cd74, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %ecx	 RIP: 43cd78	 Bytes: 4
  %loadMem_43cd78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd78 = call %struct.Memory* @routine_movzbl_0x1__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd78)
  store %struct.Memory* %call_43cd78, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43cd7c	 Bytes: 4
  %loadMem_43cd7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd7c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd7c)
  store %struct.Memory* %call_43cd7c, %struct.Memory** %MEMORY

  ; Code: movzbl (%rax), %edx	 RIP: 43cd80	 Bytes: 3
  %loadMem_43cd80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd80 = call %struct.Memory* @routine_movzbl___rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd80)
  store %struct.Memory* %call_43cd80, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43cd83	 Bytes: 2
  %loadMem_43cd83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd83 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd83)
  store %struct.Memory* %call_43cd83, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x38(%rbp)	 RIP: 43cd85	 Bytes: 3
  %loadMem_43cd85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd85 = call %struct.Memory* @routine_movl__ecx__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd85)
  store %struct.Memory* %call_43cd85, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43cda1	 RIP: 43cd88	 Bytes: 5
  %loadMem_43cd88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd88 = call %struct.Memory* @routine_jmpq_.L_43cda1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd88, i64 25, i64 5)
  store %struct.Memory* %call_43cd88, %struct.Memory** %MEMORY

  br label %block_.L_43cda1

  ; Code: .L_43cd8d:	 RIP: 43cd8d	 Bytes: 0
block_.L_43cd8d:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43cd8d	 Bytes: 4
  %loadMem_43cd8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd8d = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd8d)
  store %struct.Memory* %call_43cd8d, %struct.Memory** %MEMORY

  ; Code: movzbl (%rax), %ecx	 RIP: 43cd91	 Bytes: 3
  %loadMem_43cd91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd91 = call %struct.Memory* @routine_movzbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd91)
  store %struct.Memory* %call_43cd91, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43cd94	 Bytes: 4
  %loadMem_43cd94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd94 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd94)
  store %struct.Memory* %call_43cd94, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %edx	 RIP: 43cd98	 Bytes: 4
  %loadMem_43cd98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd98 = call %struct.Memory* @routine_movzbl_0x1__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd98)
  store %struct.Memory* %call_43cd98, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43cd9c	 Bytes: 2
  %loadMem_43cd9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd9c = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd9c)
  store %struct.Memory* %call_43cd9c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x38(%rbp)	 RIP: 43cd9e	 Bytes: 3
  %loadMem_43cd9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd9e = call %struct.Memory* @routine_movl__ecx__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd9e)
  store %struct.Memory* %call_43cd9e, %struct.Memory** %MEMORY

  ; Code: .L_43cda1:	 RIP: 43cda1	 Bytes: 0
  br label %block_.L_43cda1
block_.L_43cda1:

  ; Code: movl -0x38(%rbp), %eax	 RIP: 43cda1	 Bytes: 3
  %loadMem_43cda1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cda1 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cda1)
  store %struct.Memory* %call_43cda1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x34(%rbp)	 RIP: 43cda4	 Bytes: 3
  %loadMem_43cda4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cda4 = call %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cda4)
  store %struct.Memory* %call_43cda4, %struct.Memory** %MEMORY

  ; Code: .L_43cda7:	 RIP: 43cda7	 Bytes: 0
  br label %block_.L_43cda7
block_.L_43cda7:

  ; Code: movl -0x34(%rbp), %eax	 RIP: 43cda7	 Bytes: 3
  %loadMem_43cda7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cda7 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cda7)
  store %struct.Memory* %call_43cda7, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 43cdaa	 Bytes: 2
  %loadMem_43cdaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cdaa = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cdaa)
  store %struct.Memory* %call_43cdaa, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x20(%rbp)	 RIP: 43cdac	 Bytes: 3
  %loadMem_43cdac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cdac = call %struct.Memory* @routine_movb__cl__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cdac)
  store %struct.Memory* %call_43cdac, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 43cdaf	 Bytes: 4
  %loadMem_43cdaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cdaf = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cdaf)
  store %struct.Memory* %call_43cdaf, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rdx), %eax	 RIP: 43cdb3	 Bytes: 4
  %loadMem_43cdb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cdb3 = call %struct.Memory* @routine_movzbl_0x1__rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cdb3)
  store %struct.Memory* %call_43cdb3, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 43cdb7	 Bytes: 4
  %loadMem_43cdb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cdb7 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cdb7)
  store %struct.Memory* %call_43cdb7, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rdx), %esi	 RIP: 43cdbb	 Bytes: 4
  %loadMem_43cdbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cdbb = call %struct.Memory* @routine_movzbl_0x1__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cdbb)
  store %struct.Memory* %call_43cdbb, %struct.Memory** %MEMORY

  ; Code: addl %esi, %eax	 RIP: 43cdbf	 Bytes: 2
  %loadMem_43cdbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cdbf = call %struct.Memory* @routine_addl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cdbf)
  store %struct.Memory* %call_43cdbf, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 43cdc1	 Bytes: 4
  %loadMem_43cdc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cdc1 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cdc1)
  store %struct.Memory* %call_43cdc1, %struct.Memory** %MEMORY

  ; Code: movzbl (%rdx), %esi	 RIP: 43cdc5	 Bytes: 3
  %loadMem_43cdc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cdc5 = call %struct.Memory* @routine_movzbl___rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cdc5)
  store %struct.Memory* %call_43cdc5, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 43cdc8	 Bytes: 4
  %loadMem_43cdc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cdc8 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cdc8)
  store %struct.Memory* %call_43cdc8, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rdx), %edi	 RIP: 43cdcc	 Bytes: 4
  %loadMem_43cdcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cdcc = call %struct.Memory* @routine_movzbl_0x3__rdx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cdcc)
  store %struct.Memory* %call_43cdcc, %struct.Memory** %MEMORY

  ; Code: addl %edi, %esi	 RIP: 43cdd0	 Bytes: 2
  %loadMem_43cdd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cdd0 = call %struct.Memory* @routine_addl__edi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cdd0)
  store %struct.Memory* %call_43cdd0, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 43cdd2	 Bytes: 4
  %loadMem_43cdd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cdd2 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cdd2)
  store %struct.Memory* %call_43cdd2, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rdx), %edi	 RIP: 43cdd6	 Bytes: 4
  %loadMem_43cdd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cdd6 = call %struct.Memory* @routine_movzbl_0x1__rdx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cdd6)
  store %struct.Memory* %call_43cdd6, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 43cdda	 Bytes: 4
  %loadMem_43cdda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cdda = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cdda)
  store %struct.Memory* %call_43cdda, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rdx), %r8d	 RIP: 43cdde	 Bytes: 5
  %loadMem_43cdde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cdde = call %struct.Memory* @routine_movzbl_0x2__rdx____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cdde)
  store %struct.Memory* %call_43cdde, %struct.Memory** %MEMORY

  ; Code: addl %r8d, %edi	 RIP: 43cde3	 Bytes: 3
  %loadMem_43cde3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cde3 = call %struct.Memory* @routine_addl__r8d___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cde3)
  store %struct.Memory* %call_43cde3, %struct.Memory** %MEMORY

  ; Code: cmpl %edi, %esi	 RIP: 43cde6	 Bytes: 2
  %loadMem_43cde6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cde6 = call %struct.Memory* @routine_cmpl__edi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cde6)
  store %struct.Memory* %call_43cde6, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3c(%rbp)	 RIP: 43cde8	 Bytes: 3
  %loadMem_43cde8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cde8 = call %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cde8)
  store %struct.Memory* %call_43cde8, %struct.Memory** %MEMORY

  ; Code: jge .L_43ce0a	 RIP: 43cdeb	 Bytes: 6
  %loadMem_43cdeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cdeb = call %struct.Memory* @routine_jge_.L_43ce0a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cdeb, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_43cdeb, %struct.Memory** %MEMORY

  %loadBr_43cdeb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43cdeb = icmp eq i8 %loadBr_43cdeb, 1
  br i1 %cmpBr_43cdeb, label %block_.L_43ce0a, label %block_43cdf1

block_43cdf1:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 43cdf1	 Bytes: 4
  %loadMem_43cdf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cdf1 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cdf1)
  store %struct.Memory* %call_43cdf1, %struct.Memory** %MEMORY

  ; Code: movzbl (%rax), %ecx	 RIP: 43cdf5	 Bytes: 3
  %loadMem_43cdf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cdf5 = call %struct.Memory* @routine_movzbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cdf5)
  store %struct.Memory* %call_43cdf5, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43cdf8	 Bytes: 4
  %loadMem_43cdf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cdf8 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cdf8)
  store %struct.Memory* %call_43cdf8, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rax), %edx	 RIP: 43cdfc	 Bytes: 4
  %loadMem_43cdfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cdfc = call %struct.Memory* @routine_movzbl_0x3__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cdfc)
  store %struct.Memory* %call_43cdfc, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43ce00	 Bytes: 2
  %loadMem_43ce00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ce00 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ce00)
  store %struct.Memory* %call_43ce00, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x40(%rbp)	 RIP: 43ce02	 Bytes: 3
  %loadMem_43ce02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ce02 = call %struct.Memory* @routine_movl__ecx__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ce02)
  store %struct.Memory* %call_43ce02, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43ce1f	 RIP: 43ce05	 Bytes: 5
  %loadMem_43ce05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ce05 = call %struct.Memory* @routine_jmpq_.L_43ce1f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ce05, i64 26, i64 5)
  store %struct.Memory* %call_43ce05, %struct.Memory** %MEMORY

  br label %block_.L_43ce1f

  ; Code: .L_43ce0a:	 RIP: 43ce0a	 Bytes: 0
block_.L_43ce0a:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43ce0a	 Bytes: 4
  %loadMem_43ce0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ce0a = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ce0a)
  store %struct.Memory* %call_43ce0a, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %ecx	 RIP: 43ce0e	 Bytes: 4
  %loadMem_43ce0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ce0e = call %struct.Memory* @routine_movzbl_0x1__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ce0e)
  store %struct.Memory* %call_43ce0e, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43ce12	 Bytes: 4
  %loadMem_43ce12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ce12 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ce12)
  store %struct.Memory* %call_43ce12, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %edx	 RIP: 43ce16	 Bytes: 4
  %loadMem_43ce16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ce16 = call %struct.Memory* @routine_movzbl_0x2__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ce16)
  store %struct.Memory* %call_43ce16, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43ce1a	 Bytes: 2
  %loadMem_43ce1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ce1a = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ce1a)
  store %struct.Memory* %call_43ce1a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x40(%rbp)	 RIP: 43ce1c	 Bytes: 3
  %loadMem_43ce1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ce1c = call %struct.Memory* @routine_movl__ecx__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ce1c)
  store %struct.Memory* %call_43ce1c, %struct.Memory** %MEMORY

  ; Code: .L_43ce1f:	 RIP: 43ce1f	 Bytes: 0
  br label %block_.L_43ce1f
block_.L_43ce1f:

  ; Code: movl -0x40(%rbp), %eax	 RIP: 43ce1f	 Bytes: 3
  %loadMem_43ce1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ce1f = call %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ce1f)
  store %struct.Memory* %call_43ce1f, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %ecx	 RIP: 43ce22	 Bytes: 3
  %loadMem_43ce22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ce22 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ce22)
  store %struct.Memory* %call_43ce22, %struct.Memory** %MEMORY

  ; Code: cmpl %eax, %ecx	 RIP: 43ce25	 Bytes: 2
  %loadMem_43ce25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ce25 = call %struct.Memory* @routine_cmpl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ce25)
  store %struct.Memory* %call_43ce25, %struct.Memory** %MEMORY

  ; Code: jge .L_43ce91	 RIP: 43ce27	 Bytes: 6
  %loadMem_43ce27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ce27 = call %struct.Memory* @routine_jge_.L_43ce91(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ce27, i8* %BRANCH_TAKEN, i64 106, i64 6, i64 6)
  store %struct.Memory* %call_43ce27, %struct.Memory** %MEMORY

  %loadBr_43ce27 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43ce27 = icmp eq i8 %loadBr_43ce27, 1
  br i1 %cmpBr_43ce27, label %block_.L_43ce91, label %block_43ce2d

block_43ce2d:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 43ce2d	 Bytes: 4
  %loadMem_43ce2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ce2d = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ce2d)
  store %struct.Memory* %call_43ce2d, %struct.Memory** %MEMORY

  ; Code: movzbl (%rax), %ecx	 RIP: 43ce31	 Bytes: 3
  %loadMem_43ce31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ce31 = call %struct.Memory* @routine_movzbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ce31)
  store %struct.Memory* %call_43ce31, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43ce34	 Bytes: 4
  %loadMem_43ce34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ce34 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ce34)
  store %struct.Memory* %call_43ce34, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rax), %edx	 RIP: 43ce38	 Bytes: 4
  %loadMem_43ce38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ce38 = call %struct.Memory* @routine_movzbl_0x3__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ce38)
  store %struct.Memory* %call_43ce38, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43ce3c	 Bytes: 2
  %loadMem_43ce3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ce3c = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ce3c)
  store %struct.Memory* %call_43ce3c, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43ce3e	 Bytes: 4
  %loadMem_43ce3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ce3e = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ce3e)
  store %struct.Memory* %call_43ce3e, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %edx	 RIP: 43ce42	 Bytes: 4
  %loadMem_43ce42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ce42 = call %struct.Memory* @routine_movzbl_0x1__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ce42)
  store %struct.Memory* %call_43ce42, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43ce46	 Bytes: 4
  %loadMem_43ce46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ce46 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ce46)
  store %struct.Memory* %call_43ce46, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %esi	 RIP: 43ce4a	 Bytes: 4
  %loadMem_43ce4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ce4a = call %struct.Memory* @routine_movzbl_0x2__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ce4a)
  store %struct.Memory* %call_43ce4a, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 43ce4e	 Bytes: 2
  %loadMem_43ce4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ce4e = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ce4e)
  store %struct.Memory* %call_43ce4e, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %ecx	 RIP: 43ce50	 Bytes: 2
  %loadMem_43ce50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ce50 = call %struct.Memory* @routine_cmpl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ce50)
  store %struct.Memory* %call_43ce50, %struct.Memory** %MEMORY

  ; Code: jge .L_43ce71	 RIP: 43ce52	 Bytes: 6
  %loadMem_43ce52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ce52 = call %struct.Memory* @routine_jge_.L_43ce71(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ce52, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_43ce52, %struct.Memory** %MEMORY

  %loadBr_43ce52 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43ce52 = icmp eq i8 %loadBr_43ce52, 1
  br i1 %cmpBr_43ce52, label %block_.L_43ce71, label %block_43ce58

block_43ce58:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 43ce58	 Bytes: 4
  %loadMem_43ce58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ce58 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ce58)
  store %struct.Memory* %call_43ce58, %struct.Memory** %MEMORY

  ; Code: movzbl (%rax), %ecx	 RIP: 43ce5c	 Bytes: 3
  %loadMem_43ce5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ce5c = call %struct.Memory* @routine_movzbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ce5c)
  store %struct.Memory* %call_43ce5c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43ce5f	 Bytes: 4
  %loadMem_43ce5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ce5f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ce5f)
  store %struct.Memory* %call_43ce5f, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rax), %edx	 RIP: 43ce63	 Bytes: 4
  %loadMem_43ce63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ce63 = call %struct.Memory* @routine_movzbl_0x3__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ce63)
  store %struct.Memory* %call_43ce63, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43ce67	 Bytes: 2
  %loadMem_43ce67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ce67 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ce67)
  store %struct.Memory* %call_43ce67, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x44(%rbp)	 RIP: 43ce69	 Bytes: 3
  %loadMem_43ce69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ce69 = call %struct.Memory* @routine_movl__ecx__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ce69)
  store %struct.Memory* %call_43ce69, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43ce86	 RIP: 43ce6c	 Bytes: 5
  %loadMem_43ce6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ce6c = call %struct.Memory* @routine_jmpq_.L_43ce86(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ce6c, i64 26, i64 5)
  store %struct.Memory* %call_43ce6c, %struct.Memory** %MEMORY

  br label %block_.L_43ce86

  ; Code: .L_43ce71:	 RIP: 43ce71	 Bytes: 0
block_.L_43ce71:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43ce71	 Bytes: 4
  %loadMem_43ce71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ce71 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ce71)
  store %struct.Memory* %call_43ce71, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %ecx	 RIP: 43ce75	 Bytes: 4
  %loadMem_43ce75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ce75 = call %struct.Memory* @routine_movzbl_0x1__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ce75)
  store %struct.Memory* %call_43ce75, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43ce79	 Bytes: 4
  %loadMem_43ce79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ce79 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ce79)
  store %struct.Memory* %call_43ce79, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %edx	 RIP: 43ce7d	 Bytes: 4
  %loadMem_43ce7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ce7d = call %struct.Memory* @routine_movzbl_0x2__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ce7d)
  store %struct.Memory* %call_43ce7d, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43ce81	 Bytes: 2
  %loadMem_43ce81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ce81 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ce81)
  store %struct.Memory* %call_43ce81, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x44(%rbp)	 RIP: 43ce83	 Bytes: 3
  %loadMem_43ce83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ce83 = call %struct.Memory* @routine_movl__ecx__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ce83)
  store %struct.Memory* %call_43ce83, %struct.Memory** %MEMORY

  ; Code: .L_43ce86:	 RIP: 43ce86	 Bytes: 0
  br label %block_.L_43ce86
block_.L_43ce86:

  ; Code: movl -0x44(%rbp), %eax	 RIP: 43ce86	 Bytes: 3
  %loadMem_43ce86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ce86 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ce86)
  store %struct.Memory* %call_43ce86, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x48(%rbp)	 RIP: 43ce89	 Bytes: 3
  %loadMem_43ce89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ce89 = call %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ce89)
  store %struct.Memory* %call_43ce89, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43cea6	 RIP: 43ce8c	 Bytes: 5
  %loadMem_43ce8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ce8c = call %struct.Memory* @routine_jmpq_.L_43cea6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ce8c, i64 26, i64 5)
  store %struct.Memory* %call_43ce8c, %struct.Memory** %MEMORY

  br label %block_.L_43cea6

  ; Code: .L_43ce91:	 RIP: 43ce91	 Bytes: 0
block_.L_43ce91:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43ce91	 Bytes: 4
  %loadMem_43ce91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ce91 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ce91)
  store %struct.Memory* %call_43ce91, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %ecx	 RIP: 43ce95	 Bytes: 4
  %loadMem_43ce95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ce95 = call %struct.Memory* @routine_movzbl_0x1__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ce95)
  store %struct.Memory* %call_43ce95, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43ce99	 Bytes: 4
  %loadMem_43ce99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ce99 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ce99)
  store %struct.Memory* %call_43ce99, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %edx	 RIP: 43ce9d	 Bytes: 4
  %loadMem_43ce9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ce9d = call %struct.Memory* @routine_movzbl_0x1__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ce9d)
  store %struct.Memory* %call_43ce9d, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43cea1	 Bytes: 2
  %loadMem_43cea1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cea1 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cea1)
  store %struct.Memory* %call_43cea1, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x48(%rbp)	 RIP: 43cea3	 Bytes: 3
  %loadMem_43cea3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cea3 = call %struct.Memory* @routine_movl__ecx__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cea3)
  store %struct.Memory* %call_43cea3, %struct.Memory** %MEMORY

  ; Code: .L_43cea6:	 RIP: 43cea6	 Bytes: 0
  br label %block_.L_43cea6
block_.L_43cea6:

  ; Code: movl -0x48(%rbp), %eax	 RIP: 43cea6	 Bytes: 3
  %loadMem_43cea6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cea6 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cea6)
  store %struct.Memory* %call_43cea6, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 43cea9	 Bytes: 4
  %loadMem_43cea9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cea9 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cea9)
  store %struct.Memory* %call_43cea9, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rcx), %edx	 RIP: 43cead	 Bytes: 4
  %loadMem_43cead = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cead = call %struct.Memory* @routine_movzbl_0x1__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cead)
  store %struct.Memory* %call_43cead, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 43ceb1	 Bytes: 4
  %loadMem_43ceb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ceb1 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ceb1)
  store %struct.Memory* %call_43ceb1, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rcx), %esi	 RIP: 43ceb5	 Bytes: 4
  %loadMem_43ceb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ceb5 = call %struct.Memory* @routine_movzbl_0x1__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ceb5)
  store %struct.Memory* %call_43ceb5, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 43ceb9	 Bytes: 2
  %loadMem_43ceb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ceb9 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ceb9)
  store %struct.Memory* %call_43ceb9, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 43cebb	 Bytes: 4
  %loadMem_43cebb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cebb = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cebb)
  store %struct.Memory* %call_43cebb, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rcx), %esi	 RIP: 43cebf	 Bytes: 4
  %loadMem_43cebf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cebf = call %struct.Memory* @routine_movzbl_0x3__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cebf)
  store %struct.Memory* %call_43cebf, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 43cec3	 Bytes: 4
  %loadMem_43cec3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cec3 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cec3)
  store %struct.Memory* %call_43cec3, %struct.Memory** %MEMORY

  ; Code: movzbl (%rcx), %edi	 RIP: 43cec7	 Bytes: 3
  %loadMem_43cec7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cec7 = call %struct.Memory* @routine_movzbl___rcx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cec7)
  store %struct.Memory* %call_43cec7, %struct.Memory** %MEMORY

  ; Code: addl %edi, %esi	 RIP: 43ceca	 Bytes: 2
  %loadMem_43ceca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ceca = call %struct.Memory* @routine_addl__edi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ceca)
  store %struct.Memory* %call_43ceca, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 43cecc	 Bytes: 4
  %loadMem_43cecc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cecc = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cecc)
  store %struct.Memory* %call_43cecc, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rcx), %edi	 RIP: 43ced0	 Bytes: 4
  %loadMem_43ced0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ced0 = call %struct.Memory* @routine_movzbl_0x2__rcx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ced0)
  store %struct.Memory* %call_43ced0, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 43ced4	 Bytes: 4
  %loadMem_43ced4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ced4 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ced4)
  store %struct.Memory* %call_43ced4, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rcx), %r8d	 RIP: 43ced8	 Bytes: 5
  %loadMem_43ced8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ced8 = call %struct.Memory* @routine_movzbl_0x1__rcx____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ced8)
  store %struct.Memory* %call_43ced8, %struct.Memory** %MEMORY

  ; Code: addl %r8d, %edi	 RIP: 43cedd	 Bytes: 3
  %loadMem_43cedd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cedd = call %struct.Memory* @routine_addl__r8d___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cedd)
  store %struct.Memory* %call_43cedd, %struct.Memory** %MEMORY

  ; Code: cmpl %edi, %esi	 RIP: 43cee0	 Bytes: 2
  %loadMem_43cee0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cee0 = call %struct.Memory* @routine_cmpl__edi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cee0)
  store %struct.Memory* %call_43cee0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c(%rbp)	 RIP: 43cee2	 Bytes: 3
  %loadMem_43cee2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cee2 = call %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cee2)
  store %struct.Memory* %call_43cee2, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x50(%rbp)	 RIP: 43cee5	 Bytes: 3
  %loadMem_43cee5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cee5 = call %struct.Memory* @routine_movl__edx__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cee5)
  store %struct.Memory* %call_43cee5, %struct.Memory** %MEMORY

  ; Code: jge .L_43cf07	 RIP: 43cee8	 Bytes: 6
  %loadMem_43cee8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cee8 = call %struct.Memory* @routine_jge_.L_43cf07(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cee8, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_43cee8, %struct.Memory** %MEMORY

  %loadBr_43cee8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43cee8 = icmp eq i8 %loadBr_43cee8, 1
  br i1 %cmpBr_43cee8, label %block_.L_43cf07, label %block_43ceee

block_43ceee:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 43ceee	 Bytes: 4
  %loadMem_43ceee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ceee = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ceee)
  store %struct.Memory* %call_43ceee, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rax), %ecx	 RIP: 43cef2	 Bytes: 4
  %loadMem_43cef2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cef2 = call %struct.Memory* @routine_movzbl_0x3__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cef2)
  store %struct.Memory* %call_43cef2, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43cef6	 Bytes: 4
  %loadMem_43cef6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cef6 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cef6)
  store %struct.Memory* %call_43cef6, %struct.Memory** %MEMORY

  ; Code: movzbl (%rax), %edx	 RIP: 43cefa	 Bytes: 3
  %loadMem_43cefa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cefa = call %struct.Memory* @routine_movzbl___rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cefa)
  store %struct.Memory* %call_43cefa, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43cefd	 Bytes: 2
  %loadMem_43cefd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cefd = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cefd)
  store %struct.Memory* %call_43cefd, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x54(%rbp)	 RIP: 43ceff	 Bytes: 3
  %loadMem_43ceff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ceff = call %struct.Memory* @routine_movl__ecx__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ceff)
  store %struct.Memory* %call_43ceff, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43cf1c	 RIP: 43cf02	 Bytes: 5
  %loadMem_43cf02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cf02 = call %struct.Memory* @routine_jmpq_.L_43cf1c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cf02, i64 26, i64 5)
  store %struct.Memory* %call_43cf02, %struct.Memory** %MEMORY

  br label %block_.L_43cf1c

  ; Code: .L_43cf07:	 RIP: 43cf07	 Bytes: 0
block_.L_43cf07:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43cf07	 Bytes: 4
  %loadMem_43cf07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cf07 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cf07)
  store %struct.Memory* %call_43cf07, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %ecx	 RIP: 43cf0b	 Bytes: 4
  %loadMem_43cf0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cf0b = call %struct.Memory* @routine_movzbl_0x2__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cf0b)
  store %struct.Memory* %call_43cf0b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43cf0f	 Bytes: 4
  %loadMem_43cf0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cf0f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cf0f)
  store %struct.Memory* %call_43cf0f, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %edx	 RIP: 43cf13	 Bytes: 4
  %loadMem_43cf13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cf13 = call %struct.Memory* @routine_movzbl_0x1__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cf13)
  store %struct.Memory* %call_43cf13, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43cf17	 Bytes: 2
  %loadMem_43cf17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cf17 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cf17)
  store %struct.Memory* %call_43cf17, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x54(%rbp)	 RIP: 43cf19	 Bytes: 3
  %loadMem_43cf19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cf19 = call %struct.Memory* @routine_movl__ecx__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cf19)
  store %struct.Memory* %call_43cf19, %struct.Memory** %MEMORY

  ; Code: .L_43cf1c:	 RIP: 43cf1c	 Bytes: 0
  br label %block_.L_43cf1c
block_.L_43cf1c:

  ; Code: movl -0x54(%rbp), %eax	 RIP: 43cf1c	 Bytes: 3
  %loadMem_43cf1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cf1c = call %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cf1c)
  store %struct.Memory* %call_43cf1c, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %ecx	 RIP: 43cf1f	 Bytes: 3
  %loadMem_43cf1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cf1f = call %struct.Memory* @routine_movl_MINUS0x50__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cf1f)
  store %struct.Memory* %call_43cf1f, %struct.Memory** %MEMORY

  ; Code: cmpl %eax, %ecx	 RIP: 43cf22	 Bytes: 2
  %loadMem_43cf22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cf22 = call %struct.Memory* @routine_cmpl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cf22)
  store %struct.Memory* %call_43cf22, %struct.Memory** %MEMORY

  ; Code: jge .L_43cf8e	 RIP: 43cf24	 Bytes: 6
  %loadMem_43cf24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cf24 = call %struct.Memory* @routine_jge_.L_43cf8e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cf24, i8* %BRANCH_TAKEN, i64 106, i64 6, i64 6)
  store %struct.Memory* %call_43cf24, %struct.Memory** %MEMORY

  %loadBr_43cf24 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43cf24 = icmp eq i8 %loadBr_43cf24, 1
  br i1 %cmpBr_43cf24, label %block_.L_43cf8e, label %block_43cf2a

block_43cf2a:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 43cf2a	 Bytes: 4
  %loadMem_43cf2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cf2a = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cf2a)
  store %struct.Memory* %call_43cf2a, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rax), %ecx	 RIP: 43cf2e	 Bytes: 4
  %loadMem_43cf2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cf2e = call %struct.Memory* @routine_movzbl_0x3__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cf2e)
  store %struct.Memory* %call_43cf2e, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43cf32	 Bytes: 4
  %loadMem_43cf32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cf32 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cf32)
  store %struct.Memory* %call_43cf32, %struct.Memory** %MEMORY

  ; Code: movzbl (%rax), %edx	 RIP: 43cf36	 Bytes: 3
  %loadMem_43cf36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cf36 = call %struct.Memory* @routine_movzbl___rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cf36)
  store %struct.Memory* %call_43cf36, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43cf39	 Bytes: 2
  %loadMem_43cf39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cf39 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cf39)
  store %struct.Memory* %call_43cf39, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43cf3b	 Bytes: 4
  %loadMem_43cf3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cf3b = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cf3b)
  store %struct.Memory* %call_43cf3b, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %edx	 RIP: 43cf3f	 Bytes: 4
  %loadMem_43cf3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cf3f = call %struct.Memory* @routine_movzbl_0x2__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cf3f)
  store %struct.Memory* %call_43cf3f, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43cf43	 Bytes: 4
  %loadMem_43cf43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cf43 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cf43)
  store %struct.Memory* %call_43cf43, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %esi	 RIP: 43cf47	 Bytes: 4
  %loadMem_43cf47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cf47 = call %struct.Memory* @routine_movzbl_0x1__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cf47)
  store %struct.Memory* %call_43cf47, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 43cf4b	 Bytes: 2
  %loadMem_43cf4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cf4b = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cf4b)
  store %struct.Memory* %call_43cf4b, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %ecx	 RIP: 43cf4d	 Bytes: 2
  %loadMem_43cf4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cf4d = call %struct.Memory* @routine_cmpl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cf4d)
  store %struct.Memory* %call_43cf4d, %struct.Memory** %MEMORY

  ; Code: jge .L_43cf6e	 RIP: 43cf4f	 Bytes: 6
  %loadMem_43cf4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cf4f = call %struct.Memory* @routine_jge_.L_43cf6e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cf4f, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_43cf4f, %struct.Memory** %MEMORY

  %loadBr_43cf4f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43cf4f = icmp eq i8 %loadBr_43cf4f, 1
  br i1 %cmpBr_43cf4f, label %block_.L_43cf6e, label %block_43cf55

block_43cf55:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 43cf55	 Bytes: 4
  %loadMem_43cf55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cf55 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cf55)
  store %struct.Memory* %call_43cf55, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rax), %ecx	 RIP: 43cf59	 Bytes: 4
  %loadMem_43cf59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cf59 = call %struct.Memory* @routine_movzbl_0x3__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cf59)
  store %struct.Memory* %call_43cf59, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43cf5d	 Bytes: 4
  %loadMem_43cf5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cf5d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cf5d)
  store %struct.Memory* %call_43cf5d, %struct.Memory** %MEMORY

  ; Code: movzbl (%rax), %edx	 RIP: 43cf61	 Bytes: 3
  %loadMem_43cf61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cf61 = call %struct.Memory* @routine_movzbl___rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cf61)
  store %struct.Memory* %call_43cf61, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43cf64	 Bytes: 2
  %loadMem_43cf64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cf64 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cf64)
  store %struct.Memory* %call_43cf64, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x58(%rbp)	 RIP: 43cf66	 Bytes: 3
  %loadMem_43cf66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cf66 = call %struct.Memory* @routine_movl__ecx__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cf66)
  store %struct.Memory* %call_43cf66, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43cf83	 RIP: 43cf69	 Bytes: 5
  %loadMem_43cf69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cf69 = call %struct.Memory* @routine_jmpq_.L_43cf83(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cf69, i64 26, i64 5)
  store %struct.Memory* %call_43cf69, %struct.Memory** %MEMORY

  br label %block_.L_43cf83

  ; Code: .L_43cf6e:	 RIP: 43cf6e	 Bytes: 0
block_.L_43cf6e:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43cf6e	 Bytes: 4
  %loadMem_43cf6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cf6e = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cf6e)
  store %struct.Memory* %call_43cf6e, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %ecx	 RIP: 43cf72	 Bytes: 4
  %loadMem_43cf72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cf72 = call %struct.Memory* @routine_movzbl_0x2__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cf72)
  store %struct.Memory* %call_43cf72, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43cf76	 Bytes: 4
  %loadMem_43cf76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cf76 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cf76)
  store %struct.Memory* %call_43cf76, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %edx	 RIP: 43cf7a	 Bytes: 4
  %loadMem_43cf7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cf7a = call %struct.Memory* @routine_movzbl_0x1__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cf7a)
  store %struct.Memory* %call_43cf7a, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43cf7e	 Bytes: 2
  %loadMem_43cf7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cf7e = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cf7e)
  store %struct.Memory* %call_43cf7e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x58(%rbp)	 RIP: 43cf80	 Bytes: 3
  %loadMem_43cf80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cf80 = call %struct.Memory* @routine_movl__ecx__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cf80)
  store %struct.Memory* %call_43cf80, %struct.Memory** %MEMORY

  ; Code: .L_43cf83:	 RIP: 43cf83	 Bytes: 0
  br label %block_.L_43cf83
block_.L_43cf83:

  ; Code: movl -0x58(%rbp), %eax	 RIP: 43cf83	 Bytes: 3
  %loadMem_43cf83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cf83 = call %struct.Memory* @routine_movl_MINUS0x58__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cf83)
  store %struct.Memory* %call_43cf83, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x5c(%rbp)	 RIP: 43cf86	 Bytes: 3
  %loadMem_43cf86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cf86 = call %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cf86)
  store %struct.Memory* %call_43cf86, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43cfa3	 RIP: 43cf89	 Bytes: 5
  %loadMem_43cf89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cf89 = call %struct.Memory* @routine_jmpq_.L_43cfa3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cf89, i64 26, i64 5)
  store %struct.Memory* %call_43cf89, %struct.Memory** %MEMORY

  br label %block_.L_43cfa3

  ; Code: .L_43cf8e:	 RIP: 43cf8e	 Bytes: 0
block_.L_43cf8e:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43cf8e	 Bytes: 4
  %loadMem_43cf8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cf8e = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cf8e)
  store %struct.Memory* %call_43cf8e, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %ecx	 RIP: 43cf92	 Bytes: 4
  %loadMem_43cf92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cf92 = call %struct.Memory* @routine_movzbl_0x1__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cf92)
  store %struct.Memory* %call_43cf92, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43cf96	 Bytes: 4
  %loadMem_43cf96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cf96 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cf96)
  store %struct.Memory* %call_43cf96, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %edx	 RIP: 43cf9a	 Bytes: 4
  %loadMem_43cf9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cf9a = call %struct.Memory* @routine_movzbl_0x1__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cf9a)
  store %struct.Memory* %call_43cf9a, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43cf9e	 Bytes: 2
  %loadMem_43cf9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cf9e = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cf9e)
  store %struct.Memory* %call_43cf9e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x5c(%rbp)	 RIP: 43cfa0	 Bytes: 3
  %loadMem_43cfa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cfa0 = call %struct.Memory* @routine_movl__ecx__MINUS0x5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cfa0)
  store %struct.Memory* %call_43cfa0, %struct.Memory** %MEMORY

  ; Code: .L_43cfa3:	 RIP: 43cfa3	 Bytes: 0
  br label %block_.L_43cfa3
block_.L_43cfa3:

  ; Code: movl -0x5c(%rbp), %eax	 RIP: 43cfa3	 Bytes: 3
  %loadMem_43cfa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cfa3 = call %struct.Memory* @routine_movl_MINUS0x5c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cfa3)
  store %struct.Memory* %call_43cfa3, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %ecx	 RIP: 43cfa6	 Bytes: 3
  %loadMem_43cfa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cfa6 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cfa6)
  store %struct.Memory* %call_43cfa6, %struct.Memory** %MEMORY

  ; Code: cmpl %eax, %ecx	 RIP: 43cfa9	 Bytes: 2
  %loadMem_43cfa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cfa9 = call %struct.Memory* @routine_cmpl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cfa9)
  store %struct.Memory* %call_43cfa9, %struct.Memory** %MEMORY

  ; Code: jge .L_43d0b1	 RIP: 43cfab	 Bytes: 6
  %loadMem_43cfab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cfab = call %struct.Memory* @routine_jge_.L_43d0b1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cfab, i8* %BRANCH_TAKEN, i64 262, i64 6, i64 6)
  store %struct.Memory* %call_43cfab, %struct.Memory** %MEMORY

  %loadBr_43cfab = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43cfab = icmp eq i8 %loadBr_43cfab, 1
  br i1 %cmpBr_43cfab, label %block_.L_43d0b1, label %block_43cfb1

block_43cfb1:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 43cfb1	 Bytes: 4
  %loadMem_43cfb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cfb1 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cfb1)
  store %struct.Memory* %call_43cfb1, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %ecx	 RIP: 43cfb5	 Bytes: 4
  %loadMem_43cfb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cfb5 = call %struct.Memory* @routine_movzbl_0x1__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cfb5)
  store %struct.Memory* %call_43cfb5, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43cfb9	 Bytes: 4
  %loadMem_43cfb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cfb9 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cfb9)
  store %struct.Memory* %call_43cfb9, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %edx	 RIP: 43cfbd	 Bytes: 4
  %loadMem_43cfbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cfbd = call %struct.Memory* @routine_movzbl_0x1__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cfbd)
  store %struct.Memory* %call_43cfbd, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43cfc1	 Bytes: 2
  %loadMem_43cfc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cfc1 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cfc1)
  store %struct.Memory* %call_43cfc1, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43cfc3	 Bytes: 4
  %loadMem_43cfc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cfc3 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cfc3)
  store %struct.Memory* %call_43cfc3, %struct.Memory** %MEMORY

  ; Code: movzbl (%rax), %edx	 RIP: 43cfc7	 Bytes: 3
  %loadMem_43cfc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cfc7 = call %struct.Memory* @routine_movzbl___rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cfc7)
  store %struct.Memory* %call_43cfc7, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43cfca	 Bytes: 4
  %loadMem_43cfca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cfca = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cfca)
  store %struct.Memory* %call_43cfca, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rax), %esi	 RIP: 43cfce	 Bytes: 4
  %loadMem_43cfce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cfce = call %struct.Memory* @routine_movzbl_0x3__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cfce)
  store %struct.Memory* %call_43cfce, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 43cfd2	 Bytes: 2
  %loadMem_43cfd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cfd2 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cfd2)
  store %struct.Memory* %call_43cfd2, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43cfd4	 Bytes: 4
  %loadMem_43cfd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cfd4 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cfd4)
  store %struct.Memory* %call_43cfd4, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %esi	 RIP: 43cfd8	 Bytes: 4
  %loadMem_43cfd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cfd8 = call %struct.Memory* @routine_movzbl_0x1__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cfd8)
  store %struct.Memory* %call_43cfd8, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43cfdc	 Bytes: 4
  %loadMem_43cfdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cfdc = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cfdc)
  store %struct.Memory* %call_43cfdc, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %edi	 RIP: 43cfe0	 Bytes: 4
  %loadMem_43cfe0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cfe0 = call %struct.Memory* @routine_movzbl_0x2__rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cfe0)
  store %struct.Memory* %call_43cfe0, %struct.Memory** %MEMORY

  ; Code: addl %edi, %esi	 RIP: 43cfe4	 Bytes: 2
  %loadMem_43cfe4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cfe4 = call %struct.Memory* @routine_addl__edi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cfe4)
  store %struct.Memory* %call_43cfe4, %struct.Memory** %MEMORY

  ; Code: cmpl %esi, %edx	 RIP: 43cfe6	 Bytes: 2
  %loadMem_43cfe6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cfe6 = call %struct.Memory* @routine_cmpl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cfe6)
  store %struct.Memory* %call_43cfe6, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x60(%rbp)	 RIP: 43cfe8	 Bytes: 3
  %loadMem_43cfe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cfe8 = call %struct.Memory* @routine_movl__ecx__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cfe8)
  store %struct.Memory* %call_43cfe8, %struct.Memory** %MEMORY

  ; Code: jge .L_43d00a	 RIP: 43cfeb	 Bytes: 6
  %loadMem_43cfeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cfeb = call %struct.Memory* @routine_jge_.L_43d00a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cfeb, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_43cfeb, %struct.Memory** %MEMORY

  %loadBr_43cfeb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43cfeb = icmp eq i8 %loadBr_43cfeb, 1
  br i1 %cmpBr_43cfeb, label %block_.L_43d00a, label %block_43cff1

block_43cff1:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 43cff1	 Bytes: 4
  %loadMem_43cff1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cff1 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cff1)
  store %struct.Memory* %call_43cff1, %struct.Memory** %MEMORY

  ; Code: movzbl (%rax), %ecx	 RIP: 43cff5	 Bytes: 3
  %loadMem_43cff5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cff5 = call %struct.Memory* @routine_movzbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cff5)
  store %struct.Memory* %call_43cff5, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43cff8	 Bytes: 4
  %loadMem_43cff8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cff8 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cff8)
  store %struct.Memory* %call_43cff8, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rax), %edx	 RIP: 43cffc	 Bytes: 4
  %loadMem_43cffc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cffc = call %struct.Memory* @routine_movzbl_0x3__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cffc)
  store %struct.Memory* %call_43cffc, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43d000	 Bytes: 2
  %loadMem_43d000 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d000 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d000)
  store %struct.Memory* %call_43d000, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x64(%rbp)	 RIP: 43d002	 Bytes: 3
  %loadMem_43d002 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d002 = call %struct.Memory* @routine_movl__ecx__MINUS0x64__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d002)
  store %struct.Memory* %call_43d002, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43d01f	 RIP: 43d005	 Bytes: 5
  %loadMem_43d005 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d005 = call %struct.Memory* @routine_jmpq_.L_43d01f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d005, i64 26, i64 5)
  store %struct.Memory* %call_43d005, %struct.Memory** %MEMORY

  br label %block_.L_43d01f

  ; Code: .L_43d00a:	 RIP: 43d00a	 Bytes: 0
block_.L_43d00a:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d00a	 Bytes: 4
  %loadMem_43d00a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d00a = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d00a)
  store %struct.Memory* %call_43d00a, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %ecx	 RIP: 43d00e	 Bytes: 4
  %loadMem_43d00e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d00e = call %struct.Memory* @routine_movzbl_0x1__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d00e)
  store %struct.Memory* %call_43d00e, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d012	 Bytes: 4
  %loadMem_43d012 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d012 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d012)
  store %struct.Memory* %call_43d012, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %edx	 RIP: 43d016	 Bytes: 4
  %loadMem_43d016 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d016 = call %struct.Memory* @routine_movzbl_0x2__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d016)
  store %struct.Memory* %call_43d016, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43d01a	 Bytes: 2
  %loadMem_43d01a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d01a = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d01a)
  store %struct.Memory* %call_43d01a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x64(%rbp)	 RIP: 43d01c	 Bytes: 3
  %loadMem_43d01c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d01c = call %struct.Memory* @routine_movl__ecx__MINUS0x64__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d01c)
  store %struct.Memory* %call_43d01c, %struct.Memory** %MEMORY

  ; Code: .L_43d01f:	 RIP: 43d01f	 Bytes: 0
  br label %block_.L_43d01f
block_.L_43d01f:

  ; Code: movl -0x64(%rbp), %eax	 RIP: 43d01f	 Bytes: 3
  %loadMem_43d01f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d01f = call %struct.Memory* @routine_movl_MINUS0x64__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d01f)
  store %struct.Memory* %call_43d01f, %struct.Memory** %MEMORY

  ; Code: movl -0x60(%rbp), %ecx	 RIP: 43d022	 Bytes: 3
  %loadMem_43d022 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d022 = call %struct.Memory* @routine_movl_MINUS0x60__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d022)
  store %struct.Memory* %call_43d022, %struct.Memory** %MEMORY

  ; Code: cmpl %eax, %ecx	 RIP: 43d025	 Bytes: 2
  %loadMem_43d025 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d025 = call %struct.Memory* @routine_cmpl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d025)
  store %struct.Memory* %call_43d025, %struct.Memory** %MEMORY

  ; Code: jge .L_43d091	 RIP: 43d027	 Bytes: 6
  %loadMem_43d027 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d027 = call %struct.Memory* @routine_jge_.L_43d091(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d027, i8* %BRANCH_TAKEN, i64 106, i64 6, i64 6)
  store %struct.Memory* %call_43d027, %struct.Memory** %MEMORY

  %loadBr_43d027 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43d027 = icmp eq i8 %loadBr_43d027, 1
  br i1 %cmpBr_43d027, label %block_.L_43d091, label %block_43d02d

block_43d02d:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d02d	 Bytes: 4
  %loadMem_43d02d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d02d = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d02d)
  store %struct.Memory* %call_43d02d, %struct.Memory** %MEMORY

  ; Code: movzbl (%rax), %ecx	 RIP: 43d031	 Bytes: 3
  %loadMem_43d031 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d031 = call %struct.Memory* @routine_movzbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d031)
  store %struct.Memory* %call_43d031, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d034	 Bytes: 4
  %loadMem_43d034 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d034 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d034)
  store %struct.Memory* %call_43d034, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rax), %edx	 RIP: 43d038	 Bytes: 4
  %loadMem_43d038 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d038 = call %struct.Memory* @routine_movzbl_0x3__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d038)
  store %struct.Memory* %call_43d038, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43d03c	 Bytes: 2
  %loadMem_43d03c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d03c = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d03c)
  store %struct.Memory* %call_43d03c, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d03e	 Bytes: 4
  %loadMem_43d03e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d03e = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d03e)
  store %struct.Memory* %call_43d03e, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %edx	 RIP: 43d042	 Bytes: 4
  %loadMem_43d042 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d042 = call %struct.Memory* @routine_movzbl_0x1__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d042)
  store %struct.Memory* %call_43d042, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d046	 Bytes: 4
  %loadMem_43d046 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d046 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d046)
  store %struct.Memory* %call_43d046, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %esi	 RIP: 43d04a	 Bytes: 4
  %loadMem_43d04a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d04a = call %struct.Memory* @routine_movzbl_0x2__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d04a)
  store %struct.Memory* %call_43d04a, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 43d04e	 Bytes: 2
  %loadMem_43d04e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d04e = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d04e)
  store %struct.Memory* %call_43d04e, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %ecx	 RIP: 43d050	 Bytes: 2
  %loadMem_43d050 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d050 = call %struct.Memory* @routine_cmpl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d050)
  store %struct.Memory* %call_43d050, %struct.Memory** %MEMORY

  ; Code: jge .L_43d071	 RIP: 43d052	 Bytes: 6
  %loadMem_43d052 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d052 = call %struct.Memory* @routine_jge_.L_43d071(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d052, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_43d052, %struct.Memory** %MEMORY

  %loadBr_43d052 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43d052 = icmp eq i8 %loadBr_43d052, 1
  br i1 %cmpBr_43d052, label %block_.L_43d071, label %block_43d058

block_43d058:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d058	 Bytes: 4
  %loadMem_43d058 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d058 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d058)
  store %struct.Memory* %call_43d058, %struct.Memory** %MEMORY

  ; Code: movzbl (%rax), %ecx	 RIP: 43d05c	 Bytes: 3
  %loadMem_43d05c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d05c = call %struct.Memory* @routine_movzbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d05c)
  store %struct.Memory* %call_43d05c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d05f	 Bytes: 4
  %loadMem_43d05f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d05f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d05f)
  store %struct.Memory* %call_43d05f, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rax), %edx	 RIP: 43d063	 Bytes: 4
  %loadMem_43d063 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d063 = call %struct.Memory* @routine_movzbl_0x3__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d063)
  store %struct.Memory* %call_43d063, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43d067	 Bytes: 2
  %loadMem_43d067 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d067 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d067)
  store %struct.Memory* %call_43d067, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x68(%rbp)	 RIP: 43d069	 Bytes: 3
  %loadMem_43d069 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d069 = call %struct.Memory* @routine_movl__ecx__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d069)
  store %struct.Memory* %call_43d069, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43d086	 RIP: 43d06c	 Bytes: 5
  %loadMem_43d06c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d06c = call %struct.Memory* @routine_jmpq_.L_43d086(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d06c, i64 26, i64 5)
  store %struct.Memory* %call_43d06c, %struct.Memory** %MEMORY

  br label %block_.L_43d086

  ; Code: .L_43d071:	 RIP: 43d071	 Bytes: 0
block_.L_43d071:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d071	 Bytes: 4
  %loadMem_43d071 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d071 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d071)
  store %struct.Memory* %call_43d071, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %ecx	 RIP: 43d075	 Bytes: 4
  %loadMem_43d075 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d075 = call %struct.Memory* @routine_movzbl_0x1__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d075)
  store %struct.Memory* %call_43d075, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d079	 Bytes: 4
  %loadMem_43d079 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d079 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d079)
  store %struct.Memory* %call_43d079, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %edx	 RIP: 43d07d	 Bytes: 4
  %loadMem_43d07d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d07d = call %struct.Memory* @routine_movzbl_0x2__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d07d)
  store %struct.Memory* %call_43d07d, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43d081	 Bytes: 2
  %loadMem_43d081 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d081 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d081)
  store %struct.Memory* %call_43d081, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x68(%rbp)	 RIP: 43d083	 Bytes: 3
  %loadMem_43d083 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d083 = call %struct.Memory* @routine_movl__ecx__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d083)
  store %struct.Memory* %call_43d083, %struct.Memory** %MEMORY

  ; Code: .L_43d086:	 RIP: 43d086	 Bytes: 0
  br label %block_.L_43d086
block_.L_43d086:

  ; Code: movl -0x68(%rbp), %eax	 RIP: 43d086	 Bytes: 3
  %loadMem_43d086 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d086 = call %struct.Memory* @routine_movl_MINUS0x68__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d086)
  store %struct.Memory* %call_43d086, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6c(%rbp)	 RIP: 43d089	 Bytes: 3
  %loadMem_43d089 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d089 = call %struct.Memory* @routine_movl__eax__MINUS0x6c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d089)
  store %struct.Memory* %call_43d089, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43d0a6	 RIP: 43d08c	 Bytes: 5
  %loadMem_43d08c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d08c = call %struct.Memory* @routine_jmpq_.L_43d0a6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d08c, i64 26, i64 5)
  store %struct.Memory* %call_43d08c, %struct.Memory** %MEMORY

  br label %block_.L_43d0a6

  ; Code: .L_43d091:	 RIP: 43d091	 Bytes: 0
block_.L_43d091:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d091	 Bytes: 4
  %loadMem_43d091 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d091 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d091)
  store %struct.Memory* %call_43d091, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %ecx	 RIP: 43d095	 Bytes: 4
  %loadMem_43d095 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d095 = call %struct.Memory* @routine_movzbl_0x1__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d095)
  store %struct.Memory* %call_43d095, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d099	 Bytes: 4
  %loadMem_43d099 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d099 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d099)
  store %struct.Memory* %call_43d099, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %edx	 RIP: 43d09d	 Bytes: 4
  %loadMem_43d09d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d09d = call %struct.Memory* @routine_movzbl_0x1__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d09d)
  store %struct.Memory* %call_43d09d, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43d0a1	 Bytes: 2
  %loadMem_43d0a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d0a1 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d0a1)
  store %struct.Memory* %call_43d0a1, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x6c(%rbp)	 RIP: 43d0a3	 Bytes: 3
  %loadMem_43d0a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d0a3 = call %struct.Memory* @routine_movl__ecx__MINUS0x6c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d0a3)
  store %struct.Memory* %call_43d0a3, %struct.Memory** %MEMORY

  ; Code: .L_43d0a6:	 RIP: 43d0a6	 Bytes: 0
  br label %block_.L_43d0a6
block_.L_43d0a6:

  ; Code: movl -0x6c(%rbp), %eax	 RIP: 43d0a6	 Bytes: 3
  %loadMem_43d0a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d0a6 = call %struct.Memory* @routine_movl_MINUS0x6c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d0a6)
  store %struct.Memory* %call_43d0a6, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x70(%rbp)	 RIP: 43d0a9	 Bytes: 3
  %loadMem_43d0a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d0a9 = call %struct.Memory* @routine_movl__eax__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d0a9)
  store %struct.Memory* %call_43d0a9, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43d1ac	 RIP: 43d0ac	 Bytes: 5
  %loadMem_43d0ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d0ac = call %struct.Memory* @routine_jmpq_.L_43d1ac(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d0ac, i64 256, i64 5)
  store %struct.Memory* %call_43d0ac, %struct.Memory** %MEMORY

  br label %block_.L_43d1ac

  ; Code: .L_43d0b1:	 RIP: 43d0b1	 Bytes: 0
block_.L_43d0b1:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d0b1	 Bytes: 4
  %loadMem_43d0b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d0b1 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d0b1)
  store %struct.Memory* %call_43d0b1, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %ecx	 RIP: 43d0b5	 Bytes: 4
  %loadMem_43d0b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d0b5 = call %struct.Memory* @routine_movzbl_0x1__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d0b5)
  store %struct.Memory* %call_43d0b5, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d0b9	 Bytes: 4
  %loadMem_43d0b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d0b9 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d0b9)
  store %struct.Memory* %call_43d0b9, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %edx	 RIP: 43d0bd	 Bytes: 4
  %loadMem_43d0bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d0bd = call %struct.Memory* @routine_movzbl_0x1__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d0bd)
  store %struct.Memory* %call_43d0bd, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43d0c1	 Bytes: 2
  %loadMem_43d0c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d0c1 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d0c1)
  store %struct.Memory* %call_43d0c1, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d0c3	 Bytes: 4
  %loadMem_43d0c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d0c3 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d0c3)
  store %struct.Memory* %call_43d0c3, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rax), %edx	 RIP: 43d0c7	 Bytes: 4
  %loadMem_43d0c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d0c7 = call %struct.Memory* @routine_movzbl_0x3__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d0c7)
  store %struct.Memory* %call_43d0c7, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d0cb	 Bytes: 4
  %loadMem_43d0cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d0cb = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d0cb)
  store %struct.Memory* %call_43d0cb, %struct.Memory** %MEMORY

  ; Code: movzbl (%rax), %esi	 RIP: 43d0cf	 Bytes: 3
  %loadMem_43d0cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d0cf = call %struct.Memory* @routine_movzbl___rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d0cf)
  store %struct.Memory* %call_43d0cf, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 43d0d2	 Bytes: 2
  %loadMem_43d0d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d0d2 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d0d2)
  store %struct.Memory* %call_43d0d2, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d0d4	 Bytes: 4
  %loadMem_43d0d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d0d4 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d0d4)
  store %struct.Memory* %call_43d0d4, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %esi	 RIP: 43d0d8	 Bytes: 4
  %loadMem_43d0d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d0d8 = call %struct.Memory* @routine_movzbl_0x2__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d0d8)
  store %struct.Memory* %call_43d0d8, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d0dc	 Bytes: 4
  %loadMem_43d0dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d0dc = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d0dc)
  store %struct.Memory* %call_43d0dc, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %edi	 RIP: 43d0e0	 Bytes: 4
  %loadMem_43d0e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d0e0 = call %struct.Memory* @routine_movzbl_0x1__rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d0e0)
  store %struct.Memory* %call_43d0e0, %struct.Memory** %MEMORY

  ; Code: addl %edi, %esi	 RIP: 43d0e4	 Bytes: 2
  %loadMem_43d0e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d0e4 = call %struct.Memory* @routine_addl__edi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d0e4)
  store %struct.Memory* %call_43d0e4, %struct.Memory** %MEMORY

  ; Code: cmpl %esi, %edx	 RIP: 43d0e6	 Bytes: 2
  %loadMem_43d0e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d0e6 = call %struct.Memory* @routine_cmpl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d0e6)
  store %struct.Memory* %call_43d0e6, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x74(%rbp)	 RIP: 43d0e8	 Bytes: 3
  %loadMem_43d0e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d0e8 = call %struct.Memory* @routine_movl__ecx__MINUS0x74__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d0e8)
  store %struct.Memory* %call_43d0e8, %struct.Memory** %MEMORY

  ; Code: jge .L_43d10a	 RIP: 43d0eb	 Bytes: 6
  %loadMem_43d0eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d0eb = call %struct.Memory* @routine_jge_.L_43d10a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d0eb, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_43d0eb, %struct.Memory** %MEMORY

  %loadBr_43d0eb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43d0eb = icmp eq i8 %loadBr_43d0eb, 1
  br i1 %cmpBr_43d0eb, label %block_.L_43d10a, label %block_43d0f1

block_43d0f1:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d0f1	 Bytes: 4
  %loadMem_43d0f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d0f1 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d0f1)
  store %struct.Memory* %call_43d0f1, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rax), %ecx	 RIP: 43d0f5	 Bytes: 4
  %loadMem_43d0f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d0f5 = call %struct.Memory* @routine_movzbl_0x3__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d0f5)
  store %struct.Memory* %call_43d0f5, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d0f9	 Bytes: 4
  %loadMem_43d0f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d0f9 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d0f9)
  store %struct.Memory* %call_43d0f9, %struct.Memory** %MEMORY

  ; Code: movzbl (%rax), %edx	 RIP: 43d0fd	 Bytes: 3
  %loadMem_43d0fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d0fd = call %struct.Memory* @routine_movzbl___rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d0fd)
  store %struct.Memory* %call_43d0fd, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43d100	 Bytes: 2
  %loadMem_43d100 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d100 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d100)
  store %struct.Memory* %call_43d100, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x78(%rbp)	 RIP: 43d102	 Bytes: 3
  %loadMem_43d102 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d102 = call %struct.Memory* @routine_movl__ecx__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d102)
  store %struct.Memory* %call_43d102, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43d11f	 RIP: 43d105	 Bytes: 5
  %loadMem_43d105 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d105 = call %struct.Memory* @routine_jmpq_.L_43d11f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d105, i64 26, i64 5)
  store %struct.Memory* %call_43d105, %struct.Memory** %MEMORY

  br label %block_.L_43d11f

  ; Code: .L_43d10a:	 RIP: 43d10a	 Bytes: 0
block_.L_43d10a:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d10a	 Bytes: 4
  %loadMem_43d10a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d10a = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d10a)
  store %struct.Memory* %call_43d10a, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %ecx	 RIP: 43d10e	 Bytes: 4
  %loadMem_43d10e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d10e = call %struct.Memory* @routine_movzbl_0x2__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d10e)
  store %struct.Memory* %call_43d10e, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d112	 Bytes: 4
  %loadMem_43d112 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d112 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d112)
  store %struct.Memory* %call_43d112, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %edx	 RIP: 43d116	 Bytes: 4
  %loadMem_43d116 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d116 = call %struct.Memory* @routine_movzbl_0x1__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d116)
  store %struct.Memory* %call_43d116, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43d11a	 Bytes: 2
  %loadMem_43d11a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d11a = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d11a)
  store %struct.Memory* %call_43d11a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x78(%rbp)	 RIP: 43d11c	 Bytes: 3
  %loadMem_43d11c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d11c = call %struct.Memory* @routine_movl__ecx__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d11c)
  store %struct.Memory* %call_43d11c, %struct.Memory** %MEMORY

  ; Code: .L_43d11f:	 RIP: 43d11f	 Bytes: 0
  br label %block_.L_43d11f
block_.L_43d11f:

  ; Code: movl -0x78(%rbp), %eax	 RIP: 43d11f	 Bytes: 3
  %loadMem_43d11f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d11f = call %struct.Memory* @routine_movl_MINUS0x78__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d11f)
  store %struct.Memory* %call_43d11f, %struct.Memory** %MEMORY

  ; Code: movl -0x74(%rbp), %ecx	 RIP: 43d122	 Bytes: 3
  %loadMem_43d122 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d122 = call %struct.Memory* @routine_movl_MINUS0x74__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d122)
  store %struct.Memory* %call_43d122, %struct.Memory** %MEMORY

  ; Code: cmpl %eax, %ecx	 RIP: 43d125	 Bytes: 2
  %loadMem_43d125 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d125 = call %struct.Memory* @routine_cmpl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d125)
  store %struct.Memory* %call_43d125, %struct.Memory** %MEMORY

  ; Code: jge .L_43d191	 RIP: 43d127	 Bytes: 6
  %loadMem_43d127 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d127 = call %struct.Memory* @routine_jge_.L_43d191(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d127, i8* %BRANCH_TAKEN, i64 106, i64 6, i64 6)
  store %struct.Memory* %call_43d127, %struct.Memory** %MEMORY

  %loadBr_43d127 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43d127 = icmp eq i8 %loadBr_43d127, 1
  br i1 %cmpBr_43d127, label %block_.L_43d191, label %block_43d12d

block_43d12d:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d12d	 Bytes: 4
  %loadMem_43d12d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d12d = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d12d)
  store %struct.Memory* %call_43d12d, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rax), %ecx	 RIP: 43d131	 Bytes: 4
  %loadMem_43d131 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d131 = call %struct.Memory* @routine_movzbl_0x3__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d131)
  store %struct.Memory* %call_43d131, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d135	 Bytes: 4
  %loadMem_43d135 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d135 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d135)
  store %struct.Memory* %call_43d135, %struct.Memory** %MEMORY

  ; Code: movzbl (%rax), %edx	 RIP: 43d139	 Bytes: 3
  %loadMem_43d139 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d139 = call %struct.Memory* @routine_movzbl___rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d139)
  store %struct.Memory* %call_43d139, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43d13c	 Bytes: 2
  %loadMem_43d13c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d13c = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d13c)
  store %struct.Memory* %call_43d13c, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d13e	 Bytes: 4
  %loadMem_43d13e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d13e = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d13e)
  store %struct.Memory* %call_43d13e, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %edx	 RIP: 43d142	 Bytes: 4
  %loadMem_43d142 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d142 = call %struct.Memory* @routine_movzbl_0x2__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d142)
  store %struct.Memory* %call_43d142, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d146	 Bytes: 4
  %loadMem_43d146 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d146 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d146)
  store %struct.Memory* %call_43d146, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %esi	 RIP: 43d14a	 Bytes: 4
  %loadMem_43d14a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d14a = call %struct.Memory* @routine_movzbl_0x1__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d14a)
  store %struct.Memory* %call_43d14a, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 43d14e	 Bytes: 2
  %loadMem_43d14e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d14e = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d14e)
  store %struct.Memory* %call_43d14e, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %ecx	 RIP: 43d150	 Bytes: 2
  %loadMem_43d150 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d150 = call %struct.Memory* @routine_cmpl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d150)
  store %struct.Memory* %call_43d150, %struct.Memory** %MEMORY

  ; Code: jge .L_43d171	 RIP: 43d152	 Bytes: 6
  %loadMem_43d152 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d152 = call %struct.Memory* @routine_jge_.L_43d171(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d152, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_43d152, %struct.Memory** %MEMORY

  %loadBr_43d152 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43d152 = icmp eq i8 %loadBr_43d152, 1
  br i1 %cmpBr_43d152, label %block_.L_43d171, label %block_43d158

block_43d158:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d158	 Bytes: 4
  %loadMem_43d158 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d158 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d158)
  store %struct.Memory* %call_43d158, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rax), %ecx	 RIP: 43d15c	 Bytes: 4
  %loadMem_43d15c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d15c = call %struct.Memory* @routine_movzbl_0x3__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d15c)
  store %struct.Memory* %call_43d15c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d160	 Bytes: 4
  %loadMem_43d160 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d160 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d160)
  store %struct.Memory* %call_43d160, %struct.Memory** %MEMORY

  ; Code: movzbl (%rax), %edx	 RIP: 43d164	 Bytes: 3
  %loadMem_43d164 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d164 = call %struct.Memory* @routine_movzbl___rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d164)
  store %struct.Memory* %call_43d164, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43d167	 Bytes: 2
  %loadMem_43d167 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d167 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d167)
  store %struct.Memory* %call_43d167, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x7c(%rbp)	 RIP: 43d169	 Bytes: 3
  %loadMem_43d169 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d169 = call %struct.Memory* @routine_movl__ecx__MINUS0x7c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d169)
  store %struct.Memory* %call_43d169, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43d186	 RIP: 43d16c	 Bytes: 5
  %loadMem_43d16c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d16c = call %struct.Memory* @routine_jmpq_.L_43d186(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d16c, i64 26, i64 5)
  store %struct.Memory* %call_43d16c, %struct.Memory** %MEMORY

  br label %block_.L_43d186

  ; Code: .L_43d171:	 RIP: 43d171	 Bytes: 0
block_.L_43d171:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d171	 Bytes: 4
  %loadMem_43d171 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d171 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d171)
  store %struct.Memory* %call_43d171, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %ecx	 RIP: 43d175	 Bytes: 4
  %loadMem_43d175 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d175 = call %struct.Memory* @routine_movzbl_0x2__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d175)
  store %struct.Memory* %call_43d175, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d179	 Bytes: 4
  %loadMem_43d179 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d179 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d179)
  store %struct.Memory* %call_43d179, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %edx	 RIP: 43d17d	 Bytes: 4
  %loadMem_43d17d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d17d = call %struct.Memory* @routine_movzbl_0x1__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d17d)
  store %struct.Memory* %call_43d17d, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43d181	 Bytes: 2
  %loadMem_43d181 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d181 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d181)
  store %struct.Memory* %call_43d181, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x7c(%rbp)	 RIP: 43d183	 Bytes: 3
  %loadMem_43d183 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d183 = call %struct.Memory* @routine_movl__ecx__MINUS0x7c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d183)
  store %struct.Memory* %call_43d183, %struct.Memory** %MEMORY

  ; Code: .L_43d186:	 RIP: 43d186	 Bytes: 0
  br label %block_.L_43d186
block_.L_43d186:

  ; Code: movl -0x7c(%rbp), %eax	 RIP: 43d186	 Bytes: 3
  %loadMem_43d186 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d186 = call %struct.Memory* @routine_movl_MINUS0x7c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d186)
  store %struct.Memory* %call_43d186, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x80(%rbp)	 RIP: 43d189	 Bytes: 3
  %loadMem_43d189 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d189 = call %struct.Memory* @routine_movl__eax__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d189)
  store %struct.Memory* %call_43d189, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43d1a6	 RIP: 43d18c	 Bytes: 5
  %loadMem_43d18c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d18c = call %struct.Memory* @routine_jmpq_.L_43d1a6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d18c, i64 26, i64 5)
  store %struct.Memory* %call_43d18c, %struct.Memory** %MEMORY

  br label %block_.L_43d1a6

  ; Code: .L_43d191:	 RIP: 43d191	 Bytes: 0
block_.L_43d191:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d191	 Bytes: 4
  %loadMem_43d191 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d191 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d191)
  store %struct.Memory* %call_43d191, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %ecx	 RIP: 43d195	 Bytes: 4
  %loadMem_43d195 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d195 = call %struct.Memory* @routine_movzbl_0x1__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d195)
  store %struct.Memory* %call_43d195, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d199	 Bytes: 4
  %loadMem_43d199 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d199 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d199)
  store %struct.Memory* %call_43d199, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %edx	 RIP: 43d19d	 Bytes: 4
  %loadMem_43d19d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d19d = call %struct.Memory* @routine_movzbl_0x1__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d19d)
  store %struct.Memory* %call_43d19d, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43d1a1	 Bytes: 2
  %loadMem_43d1a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d1a1 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d1a1)
  store %struct.Memory* %call_43d1a1, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x80(%rbp)	 RIP: 43d1a3	 Bytes: 3
  %loadMem_43d1a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d1a3 = call %struct.Memory* @routine_movl__ecx__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d1a3)
  store %struct.Memory* %call_43d1a3, %struct.Memory** %MEMORY

  ; Code: .L_43d1a6:	 RIP: 43d1a6	 Bytes: 0
  br label %block_.L_43d1a6
block_.L_43d1a6:

  ; Code: movl -0x80(%rbp), %eax	 RIP: 43d1a6	 Bytes: 3
  %loadMem_43d1a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d1a6 = call %struct.Memory* @routine_movl_MINUS0x80__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d1a6)
  store %struct.Memory* %call_43d1a6, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x70(%rbp)	 RIP: 43d1a9	 Bytes: 3
  %loadMem_43d1a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d1a9 = call %struct.Memory* @routine_movl__eax__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d1a9)
  store %struct.Memory* %call_43d1a9, %struct.Memory** %MEMORY

  ; Code: .L_43d1ac:	 RIP: 43d1ac	 Bytes: 0
  br label %block_.L_43d1ac
block_.L_43d1ac:

  ; Code: movl -0x70(%rbp), %eax	 RIP: 43d1ac	 Bytes: 3
  %loadMem_43d1ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d1ac = call %struct.Memory* @routine_movl_MINUS0x70__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d1ac)
  store %struct.Memory* %call_43d1ac, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 43d1af	 Bytes: 2
  %loadMem_43d1af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d1af = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d1af)
  store %struct.Memory* %call_43d1af, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x1f(%rbp)	 RIP: 43d1b1	 Bytes: 3
  %loadMem_43d1b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d1b1 = call %struct.Memory* @routine_movb__cl__MINUS0x1f__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d1b1)
  store %struct.Memory* %call_43d1b1, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 43d1b4	 Bytes: 4
  %loadMem_43d1b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d1b4 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d1b4)
  store %struct.Memory* %call_43d1b4, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rdx), %eax	 RIP: 43d1b8	 Bytes: 4
  %loadMem_43d1b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d1b8 = call %struct.Memory* @routine_movzbl_0x2__rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d1b8)
  store %struct.Memory* %call_43d1b8, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 43d1bc	 Bytes: 4
  %loadMem_43d1bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d1bc = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d1bc)
  store %struct.Memory* %call_43d1bc, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rdx), %esi	 RIP: 43d1c0	 Bytes: 4
  %loadMem_43d1c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d1c0 = call %struct.Memory* @routine_movzbl_0x2__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d1c0)
  store %struct.Memory* %call_43d1c0, %struct.Memory** %MEMORY

  ; Code: addl %esi, %eax	 RIP: 43d1c4	 Bytes: 2
  %loadMem_43d1c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d1c4 = call %struct.Memory* @routine_addl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d1c4)
  store %struct.Memory* %call_43d1c4, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 43d1c6	 Bytes: 4
  %loadMem_43d1c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d1c6 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d1c6)
  store %struct.Memory* %call_43d1c6, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rdx), %esi	 RIP: 43d1ca	 Bytes: 4
  %loadMem_43d1ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d1ca = call %struct.Memory* @routine_movzbl_0x3__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d1ca)
  store %struct.Memory* %call_43d1ca, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 43d1ce	 Bytes: 4
  %loadMem_43d1ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d1ce = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d1ce)
  store %struct.Memory* %call_43d1ce, %struct.Memory** %MEMORY

  ; Code: movzbl (%rdx), %edi	 RIP: 43d1d2	 Bytes: 3
  %loadMem_43d1d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d1d2 = call %struct.Memory* @routine_movzbl___rdx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d1d2)
  store %struct.Memory* %call_43d1d2, %struct.Memory** %MEMORY

  ; Code: addl %edi, %esi	 RIP: 43d1d5	 Bytes: 2
  %loadMem_43d1d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d1d5 = call %struct.Memory* @routine_addl__edi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d1d5)
  store %struct.Memory* %call_43d1d5, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 43d1d7	 Bytes: 4
  %loadMem_43d1d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d1d7 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d1d7)
  store %struct.Memory* %call_43d1d7, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rdx), %edi	 RIP: 43d1db	 Bytes: 4
  %loadMem_43d1db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d1db = call %struct.Memory* @routine_movzbl_0x2__rdx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d1db)
  store %struct.Memory* %call_43d1db, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 43d1df	 Bytes: 4
  %loadMem_43d1df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d1df = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d1df)
  store %struct.Memory* %call_43d1df, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rdx), %r8d	 RIP: 43d1e3	 Bytes: 5
  %loadMem_43d1e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d1e3 = call %struct.Memory* @routine_movzbl_0x1__rdx____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d1e3)
  store %struct.Memory* %call_43d1e3, %struct.Memory** %MEMORY

  ; Code: addl %r8d, %edi	 RIP: 43d1e8	 Bytes: 3
  %loadMem_43d1e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d1e8 = call %struct.Memory* @routine_addl__r8d___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d1e8)
  store %struct.Memory* %call_43d1e8, %struct.Memory** %MEMORY

  ; Code: cmpl %edi, %esi	 RIP: 43d1eb	 Bytes: 2
  %loadMem_43d1eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d1eb = call %struct.Memory* @routine_cmpl__edi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d1eb)
  store %struct.Memory* %call_43d1eb, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x84(%rbp)	 RIP: 43d1ed	 Bytes: 6
  %loadMem_43d1ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d1ed = call %struct.Memory* @routine_movl__eax__MINUS0x84__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d1ed)
  store %struct.Memory* %call_43d1ed, %struct.Memory** %MEMORY

  ; Code: jge .L_43d216	 RIP: 43d1f3	 Bytes: 6
  %loadMem_43d1f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d1f3 = call %struct.Memory* @routine_jge_.L_43d216(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d1f3, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_43d1f3, %struct.Memory** %MEMORY

  %loadBr_43d1f3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43d1f3 = icmp eq i8 %loadBr_43d1f3, 1
  br i1 %cmpBr_43d1f3, label %block_.L_43d216, label %block_43d1f9

block_43d1f9:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d1f9	 Bytes: 4
  %loadMem_43d1f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d1f9 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d1f9)
  store %struct.Memory* %call_43d1f9, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %ecx	 RIP: 43d1fd	 Bytes: 4
  %loadMem_43d1fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d1fd = call %struct.Memory* @routine_movzbl_0x2__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d1fd)
  store %struct.Memory* %call_43d1fd, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d201	 Bytes: 4
  %loadMem_43d201 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d201 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d201)
  store %struct.Memory* %call_43d201, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %edx	 RIP: 43d205	 Bytes: 4
  %loadMem_43d205 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d205 = call %struct.Memory* @routine_movzbl_0x1__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d205)
  store %struct.Memory* %call_43d205, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43d209	 Bytes: 2
  %loadMem_43d209 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d209 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d209)
  store %struct.Memory* %call_43d209, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x88(%rbp)	 RIP: 43d20b	 Bytes: 6
  %loadMem_43d20b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d20b = call %struct.Memory* @routine_movl__ecx__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d20b)
  store %struct.Memory* %call_43d20b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43d22d	 RIP: 43d211	 Bytes: 5
  %loadMem_43d211 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d211 = call %struct.Memory* @routine_jmpq_.L_43d22d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d211, i64 28, i64 5)
  store %struct.Memory* %call_43d211, %struct.Memory** %MEMORY

  br label %block_.L_43d22d

  ; Code: .L_43d216:	 RIP: 43d216	 Bytes: 0
block_.L_43d216:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d216	 Bytes: 4
  %loadMem_43d216 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d216 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d216)
  store %struct.Memory* %call_43d216, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rax), %ecx	 RIP: 43d21a	 Bytes: 4
  %loadMem_43d21a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d21a = call %struct.Memory* @routine_movzbl_0x3__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d21a)
  store %struct.Memory* %call_43d21a, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d21e	 Bytes: 4
  %loadMem_43d21e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d21e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d21e)
  store %struct.Memory* %call_43d21e, %struct.Memory** %MEMORY

  ; Code: movzbl (%rax), %edx	 RIP: 43d222	 Bytes: 3
  %loadMem_43d222 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d222 = call %struct.Memory* @routine_movzbl___rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d222)
  store %struct.Memory* %call_43d222, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43d225	 Bytes: 2
  %loadMem_43d225 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d225 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d225)
  store %struct.Memory* %call_43d225, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x88(%rbp)	 RIP: 43d227	 Bytes: 6
  %loadMem_43d227 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d227 = call %struct.Memory* @routine_movl__ecx__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d227)
  store %struct.Memory* %call_43d227, %struct.Memory** %MEMORY

  ; Code: .L_43d22d:	 RIP: 43d22d	 Bytes: 0
  br label %block_.L_43d22d
block_.L_43d22d:

  ; Code: movl -0x88(%rbp), %eax	 RIP: 43d22d	 Bytes: 6
  %loadMem_43d22d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d22d = call %struct.Memory* @routine_movl_MINUS0x88__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d22d)
  store %struct.Memory* %call_43d22d, %struct.Memory** %MEMORY

  ; Code: movl -0x84(%rbp), %ecx	 RIP: 43d233	 Bytes: 6
  %loadMem_43d233 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d233 = call %struct.Memory* @routine_movl_MINUS0x84__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d233)
  store %struct.Memory* %call_43d233, %struct.Memory** %MEMORY

  ; Code: cmpl %eax, %ecx	 RIP: 43d239	 Bytes: 2
  %loadMem_43d239 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d239 = call %struct.Memory* @routine_cmpl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d239)
  store %struct.Memory* %call_43d239, %struct.Memory** %MEMORY

  ; Code: jge .L_43d25e	 RIP: 43d23b	 Bytes: 6
  %loadMem_43d23b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d23b = call %struct.Memory* @routine_jge_.L_43d25e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d23b, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_43d23b, %struct.Memory** %MEMORY

  %loadBr_43d23b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43d23b = icmp eq i8 %loadBr_43d23b, 1
  br i1 %cmpBr_43d23b, label %block_.L_43d25e, label %block_43d241

block_43d241:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d241	 Bytes: 4
  %loadMem_43d241 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d241 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d241)
  store %struct.Memory* %call_43d241, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %ecx	 RIP: 43d245	 Bytes: 4
  %loadMem_43d245 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d245 = call %struct.Memory* @routine_movzbl_0x2__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d245)
  store %struct.Memory* %call_43d245, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d249	 Bytes: 4
  %loadMem_43d249 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d249 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d249)
  store %struct.Memory* %call_43d249, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %edx	 RIP: 43d24d	 Bytes: 4
  %loadMem_43d24d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d24d = call %struct.Memory* @routine_movzbl_0x2__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d24d)
  store %struct.Memory* %call_43d24d, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43d251	 Bytes: 2
  %loadMem_43d251 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d251 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d251)
  store %struct.Memory* %call_43d251, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x8c(%rbp)	 RIP: 43d253	 Bytes: 6
  %loadMem_43d253 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d253 = call %struct.Memory* @routine_movl__ecx__MINUS0x8c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d253)
  store %struct.Memory* %call_43d253, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43d2c9	 RIP: 43d259	 Bytes: 5
  %loadMem_43d259 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d259 = call %struct.Memory* @routine_jmpq_.L_43d2c9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d259, i64 112, i64 5)
  store %struct.Memory* %call_43d259, %struct.Memory** %MEMORY

  br label %block_.L_43d2c9

  ; Code: .L_43d25e:	 RIP: 43d25e	 Bytes: 0
block_.L_43d25e:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d25e	 Bytes: 4
  %loadMem_43d25e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d25e = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d25e)
  store %struct.Memory* %call_43d25e, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rax), %ecx	 RIP: 43d262	 Bytes: 4
  %loadMem_43d262 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d262 = call %struct.Memory* @routine_movzbl_0x3__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d262)
  store %struct.Memory* %call_43d262, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d266	 Bytes: 4
  %loadMem_43d266 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d266 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d266)
  store %struct.Memory* %call_43d266, %struct.Memory** %MEMORY

  ; Code: movzbl (%rax), %edx	 RIP: 43d26a	 Bytes: 3
  %loadMem_43d26a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d26a = call %struct.Memory* @routine_movzbl___rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d26a)
  store %struct.Memory* %call_43d26a, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43d26d	 Bytes: 2
  %loadMem_43d26d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d26d = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d26d)
  store %struct.Memory* %call_43d26d, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d26f	 Bytes: 4
  %loadMem_43d26f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d26f = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d26f)
  store %struct.Memory* %call_43d26f, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %edx	 RIP: 43d273	 Bytes: 4
  %loadMem_43d273 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d273 = call %struct.Memory* @routine_movzbl_0x2__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d273)
  store %struct.Memory* %call_43d273, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d277	 Bytes: 4
  %loadMem_43d277 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d277 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d277)
  store %struct.Memory* %call_43d277, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %esi	 RIP: 43d27b	 Bytes: 4
  %loadMem_43d27b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d27b = call %struct.Memory* @routine_movzbl_0x1__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d27b)
  store %struct.Memory* %call_43d27b, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 43d27f	 Bytes: 2
  %loadMem_43d27f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d27f = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d27f)
  store %struct.Memory* %call_43d27f, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %ecx	 RIP: 43d281	 Bytes: 2
  %loadMem_43d281 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d281 = call %struct.Memory* @routine_cmpl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d281)
  store %struct.Memory* %call_43d281, %struct.Memory** %MEMORY

  ; Code: jge .L_43d2a6	 RIP: 43d283	 Bytes: 6
  %loadMem_43d283 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d283 = call %struct.Memory* @routine_jge_.L_43d2a6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d283, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_43d283, %struct.Memory** %MEMORY

  %loadBr_43d283 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43d283 = icmp eq i8 %loadBr_43d283, 1
  br i1 %cmpBr_43d283, label %block_.L_43d2a6, label %block_43d289

block_43d289:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d289	 Bytes: 4
  %loadMem_43d289 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d289 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d289)
  store %struct.Memory* %call_43d289, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %ecx	 RIP: 43d28d	 Bytes: 4
  %loadMem_43d28d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d28d = call %struct.Memory* @routine_movzbl_0x2__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d28d)
  store %struct.Memory* %call_43d28d, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d291	 Bytes: 4
  %loadMem_43d291 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d291 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d291)
  store %struct.Memory* %call_43d291, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %edx	 RIP: 43d295	 Bytes: 4
  %loadMem_43d295 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d295 = call %struct.Memory* @routine_movzbl_0x1__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d295)
  store %struct.Memory* %call_43d295, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43d299	 Bytes: 2
  %loadMem_43d299 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d299 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d299)
  store %struct.Memory* %call_43d299, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x90(%rbp)	 RIP: 43d29b	 Bytes: 6
  %loadMem_43d29b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d29b = call %struct.Memory* @routine_movl__ecx__MINUS0x90__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d29b)
  store %struct.Memory* %call_43d29b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43d2bd	 RIP: 43d2a1	 Bytes: 5
  %loadMem_43d2a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d2a1 = call %struct.Memory* @routine_jmpq_.L_43d2bd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d2a1, i64 28, i64 5)
  store %struct.Memory* %call_43d2a1, %struct.Memory** %MEMORY

  br label %block_.L_43d2bd

  ; Code: .L_43d2a6:	 RIP: 43d2a6	 Bytes: 0
block_.L_43d2a6:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d2a6	 Bytes: 4
  %loadMem_43d2a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d2a6 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d2a6)
  store %struct.Memory* %call_43d2a6, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rax), %ecx	 RIP: 43d2aa	 Bytes: 4
  %loadMem_43d2aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d2aa = call %struct.Memory* @routine_movzbl_0x3__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d2aa)
  store %struct.Memory* %call_43d2aa, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d2ae	 Bytes: 4
  %loadMem_43d2ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d2ae = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d2ae)
  store %struct.Memory* %call_43d2ae, %struct.Memory** %MEMORY

  ; Code: movzbl (%rax), %edx	 RIP: 43d2b2	 Bytes: 3
  %loadMem_43d2b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d2b2 = call %struct.Memory* @routine_movzbl___rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d2b2)
  store %struct.Memory* %call_43d2b2, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43d2b5	 Bytes: 2
  %loadMem_43d2b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d2b5 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d2b5)
  store %struct.Memory* %call_43d2b5, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x90(%rbp)	 RIP: 43d2b7	 Bytes: 6
  %loadMem_43d2b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d2b7 = call %struct.Memory* @routine_movl__ecx__MINUS0x90__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d2b7)
  store %struct.Memory* %call_43d2b7, %struct.Memory** %MEMORY

  ; Code: .L_43d2bd:	 RIP: 43d2bd	 Bytes: 0
  br label %block_.L_43d2bd
block_.L_43d2bd:

  ; Code: movl -0x90(%rbp), %eax	 RIP: 43d2bd	 Bytes: 6
  %loadMem_43d2bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d2bd = call %struct.Memory* @routine_movl_MINUS0x90__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d2bd)
  store %struct.Memory* %call_43d2bd, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8c(%rbp)	 RIP: 43d2c3	 Bytes: 6
  %loadMem_43d2c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d2c3 = call %struct.Memory* @routine_movl__eax__MINUS0x8c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d2c3)
  store %struct.Memory* %call_43d2c3, %struct.Memory** %MEMORY

  ; Code: .L_43d2c9:	 RIP: 43d2c9	 Bytes: 0
  br label %block_.L_43d2c9
block_.L_43d2c9:

  ; Code: movl -0x8c(%rbp), %eax	 RIP: 43d2c9	 Bytes: 6
  %loadMem_43d2c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d2c9 = call %struct.Memory* @routine_movl_MINUS0x8c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d2c9)
  store %struct.Memory* %call_43d2c9, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 43d2cf	 Bytes: 4
  %loadMem_43d2cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d2cf = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d2cf)
  store %struct.Memory* %call_43d2cf, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rcx), %edx	 RIP: 43d2d3	 Bytes: 4
  %loadMem_43d2d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d2d3 = call %struct.Memory* @routine_movzbl_0x2__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d2d3)
  store %struct.Memory* %call_43d2d3, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 43d2d7	 Bytes: 4
  %loadMem_43d2d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d2d7 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d2d7)
  store %struct.Memory* %call_43d2d7, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rcx), %esi	 RIP: 43d2db	 Bytes: 4
  %loadMem_43d2db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d2db = call %struct.Memory* @routine_movzbl_0x2__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d2db)
  store %struct.Memory* %call_43d2db, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 43d2df	 Bytes: 2
  %loadMem_43d2df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d2df = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d2df)
  store %struct.Memory* %call_43d2df, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 43d2e1	 Bytes: 4
  %loadMem_43d2e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d2e1 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d2e1)
  store %struct.Memory* %call_43d2e1, %struct.Memory** %MEMORY

  ; Code: movzbl (%rcx), %esi	 RIP: 43d2e5	 Bytes: 3
  %loadMem_43d2e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d2e5 = call %struct.Memory* @routine_movzbl___rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d2e5)
  store %struct.Memory* %call_43d2e5, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 43d2e8	 Bytes: 4
  %loadMem_43d2e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d2e8 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d2e8)
  store %struct.Memory* %call_43d2e8, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rcx), %edi	 RIP: 43d2ec	 Bytes: 4
  %loadMem_43d2ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d2ec = call %struct.Memory* @routine_movzbl_0x3__rcx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d2ec)
  store %struct.Memory* %call_43d2ec, %struct.Memory** %MEMORY

  ; Code: addl %edi, %esi	 RIP: 43d2f0	 Bytes: 2
  %loadMem_43d2f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d2f0 = call %struct.Memory* @routine_addl__edi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d2f0)
  store %struct.Memory* %call_43d2f0, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 43d2f2	 Bytes: 4
  %loadMem_43d2f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d2f2 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d2f2)
  store %struct.Memory* %call_43d2f2, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rcx), %edi	 RIP: 43d2f6	 Bytes: 4
  %loadMem_43d2f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d2f6 = call %struct.Memory* @routine_movzbl_0x1__rcx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d2f6)
  store %struct.Memory* %call_43d2f6, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 43d2fa	 Bytes: 4
  %loadMem_43d2fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d2fa = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d2fa)
  store %struct.Memory* %call_43d2fa, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rcx), %r8d	 RIP: 43d2fe	 Bytes: 5
  %loadMem_43d2fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d2fe = call %struct.Memory* @routine_movzbl_0x2__rcx____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d2fe)
  store %struct.Memory* %call_43d2fe, %struct.Memory** %MEMORY

  ; Code: addl %r8d, %edi	 RIP: 43d303	 Bytes: 3
  %loadMem_43d303 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d303 = call %struct.Memory* @routine_addl__r8d___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d303)
  store %struct.Memory* %call_43d303, %struct.Memory** %MEMORY

  ; Code: cmpl %edi, %esi	 RIP: 43d306	 Bytes: 2
  %loadMem_43d306 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d306 = call %struct.Memory* @routine_cmpl__edi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d306)
  store %struct.Memory* %call_43d306, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x94(%rbp)	 RIP: 43d308	 Bytes: 6
  %loadMem_43d308 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d308 = call %struct.Memory* @routine_movl__eax__MINUS0x94__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d308)
  store %struct.Memory* %call_43d308, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x98(%rbp)	 RIP: 43d30e	 Bytes: 6
  %loadMem_43d30e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d30e = call %struct.Memory* @routine_movl__edx__MINUS0x98__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d30e)
  store %struct.Memory* %call_43d30e, %struct.Memory** %MEMORY

  ; Code: jge .L_43d337	 RIP: 43d314	 Bytes: 6
  %loadMem_43d314 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d314 = call %struct.Memory* @routine_jge_.L_43d337(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d314, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_43d314, %struct.Memory** %MEMORY

  %loadBr_43d314 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43d314 = icmp eq i8 %loadBr_43d314, 1
  br i1 %cmpBr_43d314, label %block_.L_43d337, label %block_43d31a

block_43d31a:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d31a	 Bytes: 4
  %loadMem_43d31a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d31a = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d31a)
  store %struct.Memory* %call_43d31a, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %ecx	 RIP: 43d31e	 Bytes: 4
  %loadMem_43d31e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d31e = call %struct.Memory* @routine_movzbl_0x1__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d31e)
  store %struct.Memory* %call_43d31e, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d322	 Bytes: 4
  %loadMem_43d322 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d322 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d322)
  store %struct.Memory* %call_43d322, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %edx	 RIP: 43d326	 Bytes: 4
  %loadMem_43d326 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d326 = call %struct.Memory* @routine_movzbl_0x2__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d326)
  store %struct.Memory* %call_43d326, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43d32a	 Bytes: 2
  %loadMem_43d32a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d32a = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d32a)
  store %struct.Memory* %call_43d32a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x9c(%rbp)	 RIP: 43d32c	 Bytes: 6
  %loadMem_43d32c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d32c = call %struct.Memory* @routine_movl__ecx__MINUS0x9c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d32c)
  store %struct.Memory* %call_43d32c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43d34e	 RIP: 43d332	 Bytes: 5
  %loadMem_43d332 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d332 = call %struct.Memory* @routine_jmpq_.L_43d34e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d332, i64 28, i64 5)
  store %struct.Memory* %call_43d332, %struct.Memory** %MEMORY

  br label %block_.L_43d34e

  ; Code: .L_43d337:	 RIP: 43d337	 Bytes: 0
block_.L_43d337:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d337	 Bytes: 4
  %loadMem_43d337 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d337 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d337)
  store %struct.Memory* %call_43d337, %struct.Memory** %MEMORY

  ; Code: movzbl (%rax), %ecx	 RIP: 43d33b	 Bytes: 3
  %loadMem_43d33b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d33b = call %struct.Memory* @routine_movzbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d33b)
  store %struct.Memory* %call_43d33b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d33e	 Bytes: 4
  %loadMem_43d33e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d33e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d33e)
  store %struct.Memory* %call_43d33e, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rax), %edx	 RIP: 43d342	 Bytes: 4
  %loadMem_43d342 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d342 = call %struct.Memory* @routine_movzbl_0x3__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d342)
  store %struct.Memory* %call_43d342, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43d346	 Bytes: 2
  %loadMem_43d346 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d346 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d346)
  store %struct.Memory* %call_43d346, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x9c(%rbp)	 RIP: 43d348	 Bytes: 6
  %loadMem_43d348 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d348 = call %struct.Memory* @routine_movl__ecx__MINUS0x9c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d348)
  store %struct.Memory* %call_43d348, %struct.Memory** %MEMORY

  ; Code: .L_43d34e:	 RIP: 43d34e	 Bytes: 0
  br label %block_.L_43d34e
block_.L_43d34e:

  ; Code: movl -0x9c(%rbp), %eax	 RIP: 43d34e	 Bytes: 6
  %loadMem_43d34e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d34e = call %struct.Memory* @routine_movl_MINUS0x9c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d34e)
  store %struct.Memory* %call_43d34e, %struct.Memory** %MEMORY

  ; Code: movl -0x98(%rbp), %ecx	 RIP: 43d354	 Bytes: 6
  %loadMem_43d354 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d354 = call %struct.Memory* @routine_movl_MINUS0x98__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d354)
  store %struct.Memory* %call_43d354, %struct.Memory** %MEMORY

  ; Code: cmpl %eax, %ecx	 RIP: 43d35a	 Bytes: 2
  %loadMem_43d35a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d35a = call %struct.Memory* @routine_cmpl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d35a)
  store %struct.Memory* %call_43d35a, %struct.Memory** %MEMORY

  ; Code: jge .L_43d37f	 RIP: 43d35c	 Bytes: 6
  %loadMem_43d35c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d35c = call %struct.Memory* @routine_jge_.L_43d37f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d35c, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_43d35c, %struct.Memory** %MEMORY

  %loadBr_43d35c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43d35c = icmp eq i8 %loadBr_43d35c, 1
  br i1 %cmpBr_43d35c, label %block_.L_43d37f, label %block_43d362

block_43d362:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d362	 Bytes: 4
  %loadMem_43d362 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d362 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d362)
  store %struct.Memory* %call_43d362, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %ecx	 RIP: 43d366	 Bytes: 4
  %loadMem_43d366 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d366 = call %struct.Memory* @routine_movzbl_0x2__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d366)
  store %struct.Memory* %call_43d366, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d36a	 Bytes: 4
  %loadMem_43d36a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d36a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d36a)
  store %struct.Memory* %call_43d36a, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %edx	 RIP: 43d36e	 Bytes: 4
  %loadMem_43d36e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d36e = call %struct.Memory* @routine_movzbl_0x2__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d36e)
  store %struct.Memory* %call_43d36e, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43d372	 Bytes: 2
  %loadMem_43d372 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d372 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d372)
  store %struct.Memory* %call_43d372, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0xa0(%rbp)	 RIP: 43d374	 Bytes: 6
  %loadMem_43d374 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d374 = call %struct.Memory* @routine_movl__ecx__MINUS0xa0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d374)
  store %struct.Memory* %call_43d374, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43d3ea	 RIP: 43d37a	 Bytes: 5
  %loadMem_43d37a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d37a = call %struct.Memory* @routine_jmpq_.L_43d3ea(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d37a, i64 112, i64 5)
  store %struct.Memory* %call_43d37a, %struct.Memory** %MEMORY

  br label %block_.L_43d3ea

  ; Code: .L_43d37f:	 RIP: 43d37f	 Bytes: 0
block_.L_43d37f:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d37f	 Bytes: 4
  %loadMem_43d37f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d37f = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d37f)
  store %struct.Memory* %call_43d37f, %struct.Memory** %MEMORY

  ; Code: movzbl (%rax), %ecx	 RIP: 43d383	 Bytes: 3
  %loadMem_43d383 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d383 = call %struct.Memory* @routine_movzbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d383)
  store %struct.Memory* %call_43d383, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d386	 Bytes: 4
  %loadMem_43d386 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d386 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d386)
  store %struct.Memory* %call_43d386, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rax), %edx	 RIP: 43d38a	 Bytes: 4
  %loadMem_43d38a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d38a = call %struct.Memory* @routine_movzbl_0x3__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d38a)
  store %struct.Memory* %call_43d38a, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43d38e	 Bytes: 2
  %loadMem_43d38e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d38e = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d38e)
  store %struct.Memory* %call_43d38e, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d390	 Bytes: 4
  %loadMem_43d390 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d390 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d390)
  store %struct.Memory* %call_43d390, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %edx	 RIP: 43d394	 Bytes: 4
  %loadMem_43d394 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d394 = call %struct.Memory* @routine_movzbl_0x1__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d394)
  store %struct.Memory* %call_43d394, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d398	 Bytes: 4
  %loadMem_43d398 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d398 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d398)
  store %struct.Memory* %call_43d398, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %esi	 RIP: 43d39c	 Bytes: 4
  %loadMem_43d39c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d39c = call %struct.Memory* @routine_movzbl_0x2__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d39c)
  store %struct.Memory* %call_43d39c, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 43d3a0	 Bytes: 2
  %loadMem_43d3a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d3a0 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d3a0)
  store %struct.Memory* %call_43d3a0, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %ecx	 RIP: 43d3a2	 Bytes: 2
  %loadMem_43d3a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d3a2 = call %struct.Memory* @routine_cmpl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d3a2)
  store %struct.Memory* %call_43d3a2, %struct.Memory** %MEMORY

  ; Code: jge .L_43d3c7	 RIP: 43d3a4	 Bytes: 6
  %loadMem_43d3a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d3a4 = call %struct.Memory* @routine_jge_.L_43d3c7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d3a4, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_43d3a4, %struct.Memory** %MEMORY

  %loadBr_43d3a4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43d3a4 = icmp eq i8 %loadBr_43d3a4, 1
  br i1 %cmpBr_43d3a4, label %block_.L_43d3c7, label %block_43d3aa

block_43d3aa:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d3aa	 Bytes: 4
  %loadMem_43d3aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d3aa = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d3aa)
  store %struct.Memory* %call_43d3aa, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %ecx	 RIP: 43d3ae	 Bytes: 4
  %loadMem_43d3ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d3ae = call %struct.Memory* @routine_movzbl_0x1__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d3ae)
  store %struct.Memory* %call_43d3ae, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d3b2	 Bytes: 4
  %loadMem_43d3b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d3b2 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d3b2)
  store %struct.Memory* %call_43d3b2, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %edx	 RIP: 43d3b6	 Bytes: 4
  %loadMem_43d3b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d3b6 = call %struct.Memory* @routine_movzbl_0x2__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d3b6)
  store %struct.Memory* %call_43d3b6, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43d3ba	 Bytes: 2
  %loadMem_43d3ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d3ba = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d3ba)
  store %struct.Memory* %call_43d3ba, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0xa4(%rbp)	 RIP: 43d3bc	 Bytes: 6
  %loadMem_43d3bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d3bc = call %struct.Memory* @routine_movl__ecx__MINUS0xa4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d3bc)
  store %struct.Memory* %call_43d3bc, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43d3de	 RIP: 43d3c2	 Bytes: 5
  %loadMem_43d3c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d3c2 = call %struct.Memory* @routine_jmpq_.L_43d3de(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d3c2, i64 28, i64 5)
  store %struct.Memory* %call_43d3c2, %struct.Memory** %MEMORY

  br label %block_.L_43d3de

  ; Code: .L_43d3c7:	 RIP: 43d3c7	 Bytes: 0
block_.L_43d3c7:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d3c7	 Bytes: 4
  %loadMem_43d3c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d3c7 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d3c7)
  store %struct.Memory* %call_43d3c7, %struct.Memory** %MEMORY

  ; Code: movzbl (%rax), %ecx	 RIP: 43d3cb	 Bytes: 3
  %loadMem_43d3cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d3cb = call %struct.Memory* @routine_movzbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d3cb)
  store %struct.Memory* %call_43d3cb, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d3ce	 Bytes: 4
  %loadMem_43d3ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d3ce = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d3ce)
  store %struct.Memory* %call_43d3ce, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rax), %edx	 RIP: 43d3d2	 Bytes: 4
  %loadMem_43d3d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d3d2 = call %struct.Memory* @routine_movzbl_0x3__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d3d2)
  store %struct.Memory* %call_43d3d2, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43d3d6	 Bytes: 2
  %loadMem_43d3d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d3d6 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d3d6)
  store %struct.Memory* %call_43d3d6, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0xa4(%rbp)	 RIP: 43d3d8	 Bytes: 6
  %loadMem_43d3d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d3d8 = call %struct.Memory* @routine_movl__ecx__MINUS0xa4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d3d8)
  store %struct.Memory* %call_43d3d8, %struct.Memory** %MEMORY

  ; Code: .L_43d3de:	 RIP: 43d3de	 Bytes: 0
  br label %block_.L_43d3de
block_.L_43d3de:

  ; Code: movl -0xa4(%rbp), %eax	 RIP: 43d3de	 Bytes: 6
  %loadMem_43d3de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d3de = call %struct.Memory* @routine_movl_MINUS0xa4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d3de)
  store %struct.Memory* %call_43d3de, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xa0(%rbp)	 RIP: 43d3e4	 Bytes: 6
  %loadMem_43d3e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d3e4 = call %struct.Memory* @routine_movl__eax__MINUS0xa0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d3e4)
  store %struct.Memory* %call_43d3e4, %struct.Memory** %MEMORY

  ; Code: .L_43d3ea:	 RIP: 43d3ea	 Bytes: 0
  br label %block_.L_43d3ea
block_.L_43d3ea:

  ; Code: movl -0xa0(%rbp), %eax	 RIP: 43d3ea	 Bytes: 6
  %loadMem_43d3ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d3ea = call %struct.Memory* @routine_movl_MINUS0xa0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d3ea)
  store %struct.Memory* %call_43d3ea, %struct.Memory** %MEMORY

  ; Code: movl -0x94(%rbp), %ecx	 RIP: 43d3f0	 Bytes: 6
  %loadMem_43d3f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d3f0 = call %struct.Memory* @routine_movl_MINUS0x94__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d3f0)
  store %struct.Memory* %call_43d3f0, %struct.Memory** %MEMORY

  ; Code: cmpl %eax, %ecx	 RIP: 43d3f6	 Bytes: 2
  %loadMem_43d3f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d3f6 = call %struct.Memory* @routine_cmpl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d3f6)
  store %struct.Memory* %call_43d3f6, %struct.Memory** %MEMORY

  ; Code: jge .L_43d522	 RIP: 43d3f8	 Bytes: 6
  %loadMem_43d3f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d3f8 = call %struct.Memory* @routine_jge_.L_43d522(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d3f8, i8* %BRANCH_TAKEN, i64 298, i64 6, i64 6)
  store %struct.Memory* %call_43d3f8, %struct.Memory** %MEMORY

  %loadBr_43d3f8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43d3f8 = icmp eq i8 %loadBr_43d3f8, 1
  br i1 %cmpBr_43d3f8, label %block_.L_43d522, label %block_43d3fe

block_43d3fe:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d3fe	 Bytes: 4
  %loadMem_43d3fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d3fe = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d3fe)
  store %struct.Memory* %call_43d3fe, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %ecx	 RIP: 43d402	 Bytes: 4
  %loadMem_43d402 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d402 = call %struct.Memory* @routine_movzbl_0x2__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d402)
  store %struct.Memory* %call_43d402, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d406	 Bytes: 4
  %loadMem_43d406 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d406 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d406)
  store %struct.Memory* %call_43d406, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %edx	 RIP: 43d40a	 Bytes: 4
  %loadMem_43d40a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d40a = call %struct.Memory* @routine_movzbl_0x2__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d40a)
  store %struct.Memory* %call_43d40a, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43d40e	 Bytes: 2
  %loadMem_43d40e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d40e = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d40e)
  store %struct.Memory* %call_43d40e, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d410	 Bytes: 4
  %loadMem_43d410 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d410 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d410)
  store %struct.Memory* %call_43d410, %struct.Memory** %MEMORY

  ; Code: movzbl (%rax), %edx	 RIP: 43d414	 Bytes: 3
  %loadMem_43d414 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d414 = call %struct.Memory* @routine_movzbl___rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d414)
  store %struct.Memory* %call_43d414, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d417	 Bytes: 4
  %loadMem_43d417 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d417 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d417)
  store %struct.Memory* %call_43d417, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rax), %esi	 RIP: 43d41b	 Bytes: 4
  %loadMem_43d41b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d41b = call %struct.Memory* @routine_movzbl_0x3__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d41b)
  store %struct.Memory* %call_43d41b, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 43d41f	 Bytes: 2
  %loadMem_43d41f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d41f = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d41f)
  store %struct.Memory* %call_43d41f, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d421	 Bytes: 4
  %loadMem_43d421 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d421 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d421)
  store %struct.Memory* %call_43d421, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %esi	 RIP: 43d425	 Bytes: 4
  %loadMem_43d425 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d425 = call %struct.Memory* @routine_movzbl_0x1__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d425)
  store %struct.Memory* %call_43d425, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d429	 Bytes: 4
  %loadMem_43d429 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d429 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d429)
  store %struct.Memory* %call_43d429, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %edi	 RIP: 43d42d	 Bytes: 4
  %loadMem_43d42d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d42d = call %struct.Memory* @routine_movzbl_0x2__rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d42d)
  store %struct.Memory* %call_43d42d, %struct.Memory** %MEMORY

  ; Code: addl %edi, %esi	 RIP: 43d431	 Bytes: 2
  %loadMem_43d431 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d431 = call %struct.Memory* @routine_addl__edi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d431)
  store %struct.Memory* %call_43d431, %struct.Memory** %MEMORY

  ; Code: cmpl %esi, %edx	 RIP: 43d433	 Bytes: 2
  %loadMem_43d433 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d433 = call %struct.Memory* @routine_cmpl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d433)
  store %struct.Memory* %call_43d433, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0xa8(%rbp)	 RIP: 43d435	 Bytes: 6
  %loadMem_43d435 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d435 = call %struct.Memory* @routine_movl__ecx__MINUS0xa8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d435)
  store %struct.Memory* %call_43d435, %struct.Memory** %MEMORY

  ; Code: jge .L_43d45e	 RIP: 43d43b	 Bytes: 6
  %loadMem_43d43b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d43b = call %struct.Memory* @routine_jge_.L_43d45e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d43b, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_43d43b, %struct.Memory** %MEMORY

  %loadBr_43d43b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43d43b = icmp eq i8 %loadBr_43d43b, 1
  br i1 %cmpBr_43d43b, label %block_.L_43d45e, label %block_43d441

block_43d441:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d441	 Bytes: 4
  %loadMem_43d441 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d441 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d441)
  store %struct.Memory* %call_43d441, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %ecx	 RIP: 43d445	 Bytes: 4
  %loadMem_43d445 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d445 = call %struct.Memory* @routine_movzbl_0x1__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d445)
  store %struct.Memory* %call_43d445, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d449	 Bytes: 4
  %loadMem_43d449 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d449 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d449)
  store %struct.Memory* %call_43d449, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %edx	 RIP: 43d44d	 Bytes: 4
  %loadMem_43d44d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d44d = call %struct.Memory* @routine_movzbl_0x2__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d44d)
  store %struct.Memory* %call_43d44d, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43d451	 Bytes: 2
  %loadMem_43d451 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d451 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d451)
  store %struct.Memory* %call_43d451, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0xac(%rbp)	 RIP: 43d453	 Bytes: 6
  %loadMem_43d453 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d453 = call %struct.Memory* @routine_movl__ecx__MINUS0xac__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d453)
  store %struct.Memory* %call_43d453, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43d475	 RIP: 43d459	 Bytes: 5
  %loadMem_43d459 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d459 = call %struct.Memory* @routine_jmpq_.L_43d475(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d459, i64 28, i64 5)
  store %struct.Memory* %call_43d459, %struct.Memory** %MEMORY

  br label %block_.L_43d475

  ; Code: .L_43d45e:	 RIP: 43d45e	 Bytes: 0
block_.L_43d45e:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d45e	 Bytes: 4
  %loadMem_43d45e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d45e = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d45e)
  store %struct.Memory* %call_43d45e, %struct.Memory** %MEMORY

  ; Code: movzbl (%rax), %ecx	 RIP: 43d462	 Bytes: 3
  %loadMem_43d462 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d462 = call %struct.Memory* @routine_movzbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d462)
  store %struct.Memory* %call_43d462, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d465	 Bytes: 4
  %loadMem_43d465 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d465 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d465)
  store %struct.Memory* %call_43d465, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rax), %edx	 RIP: 43d469	 Bytes: 4
  %loadMem_43d469 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d469 = call %struct.Memory* @routine_movzbl_0x3__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d469)
  store %struct.Memory* %call_43d469, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43d46d	 Bytes: 2
  %loadMem_43d46d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d46d = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d46d)
  store %struct.Memory* %call_43d46d, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0xac(%rbp)	 RIP: 43d46f	 Bytes: 6
  %loadMem_43d46f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d46f = call %struct.Memory* @routine_movl__ecx__MINUS0xac__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d46f)
  store %struct.Memory* %call_43d46f, %struct.Memory** %MEMORY

  ; Code: .L_43d475:	 RIP: 43d475	 Bytes: 0
  br label %block_.L_43d475
block_.L_43d475:

  ; Code: movl -0xac(%rbp), %eax	 RIP: 43d475	 Bytes: 6
  %loadMem_43d475 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d475 = call %struct.Memory* @routine_movl_MINUS0xac__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d475)
  store %struct.Memory* %call_43d475, %struct.Memory** %MEMORY

  ; Code: movl -0xa8(%rbp), %ecx	 RIP: 43d47b	 Bytes: 6
  %loadMem_43d47b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d47b = call %struct.Memory* @routine_movl_MINUS0xa8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d47b)
  store %struct.Memory* %call_43d47b, %struct.Memory** %MEMORY

  ; Code: cmpl %eax, %ecx	 RIP: 43d481	 Bytes: 2
  %loadMem_43d481 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d481 = call %struct.Memory* @routine_cmpl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d481)
  store %struct.Memory* %call_43d481, %struct.Memory** %MEMORY

  ; Code: jge .L_43d4a6	 RIP: 43d483	 Bytes: 6
  %loadMem_43d483 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d483 = call %struct.Memory* @routine_jge_.L_43d4a6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d483, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_43d483, %struct.Memory** %MEMORY

  %loadBr_43d483 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43d483 = icmp eq i8 %loadBr_43d483, 1
  br i1 %cmpBr_43d483, label %block_.L_43d4a6, label %block_43d489

block_43d489:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d489	 Bytes: 4
  %loadMem_43d489 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d489 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d489)
  store %struct.Memory* %call_43d489, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %ecx	 RIP: 43d48d	 Bytes: 4
  %loadMem_43d48d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d48d = call %struct.Memory* @routine_movzbl_0x2__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d48d)
  store %struct.Memory* %call_43d48d, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d491	 Bytes: 4
  %loadMem_43d491 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d491 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d491)
  store %struct.Memory* %call_43d491, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %edx	 RIP: 43d495	 Bytes: 4
  %loadMem_43d495 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d495 = call %struct.Memory* @routine_movzbl_0x2__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d495)
  store %struct.Memory* %call_43d495, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43d499	 Bytes: 2
  %loadMem_43d499 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d499 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d499)
  store %struct.Memory* %call_43d499, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0xb0(%rbp)	 RIP: 43d49b	 Bytes: 6
  %loadMem_43d49b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d49b = call %struct.Memory* @routine_movl__ecx__MINUS0xb0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d49b)
  store %struct.Memory* %call_43d49b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43d511	 RIP: 43d4a1	 Bytes: 5
  %loadMem_43d4a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d4a1 = call %struct.Memory* @routine_jmpq_.L_43d511(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d4a1, i64 112, i64 5)
  store %struct.Memory* %call_43d4a1, %struct.Memory** %MEMORY

  br label %block_.L_43d511

  ; Code: .L_43d4a6:	 RIP: 43d4a6	 Bytes: 0
block_.L_43d4a6:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d4a6	 Bytes: 4
  %loadMem_43d4a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d4a6 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d4a6)
  store %struct.Memory* %call_43d4a6, %struct.Memory** %MEMORY

  ; Code: movzbl (%rax), %ecx	 RIP: 43d4aa	 Bytes: 3
  %loadMem_43d4aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d4aa = call %struct.Memory* @routine_movzbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d4aa)
  store %struct.Memory* %call_43d4aa, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d4ad	 Bytes: 4
  %loadMem_43d4ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d4ad = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d4ad)
  store %struct.Memory* %call_43d4ad, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rax), %edx	 RIP: 43d4b1	 Bytes: 4
  %loadMem_43d4b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d4b1 = call %struct.Memory* @routine_movzbl_0x3__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d4b1)
  store %struct.Memory* %call_43d4b1, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43d4b5	 Bytes: 2
  %loadMem_43d4b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d4b5 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d4b5)
  store %struct.Memory* %call_43d4b5, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d4b7	 Bytes: 4
  %loadMem_43d4b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d4b7 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d4b7)
  store %struct.Memory* %call_43d4b7, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %edx	 RIP: 43d4bb	 Bytes: 4
  %loadMem_43d4bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d4bb = call %struct.Memory* @routine_movzbl_0x1__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d4bb)
  store %struct.Memory* %call_43d4bb, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d4bf	 Bytes: 4
  %loadMem_43d4bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d4bf = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d4bf)
  store %struct.Memory* %call_43d4bf, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %esi	 RIP: 43d4c3	 Bytes: 4
  %loadMem_43d4c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d4c3 = call %struct.Memory* @routine_movzbl_0x2__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d4c3)
  store %struct.Memory* %call_43d4c3, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 43d4c7	 Bytes: 2
  %loadMem_43d4c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d4c7 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d4c7)
  store %struct.Memory* %call_43d4c7, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %ecx	 RIP: 43d4c9	 Bytes: 2
  %loadMem_43d4c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d4c9 = call %struct.Memory* @routine_cmpl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d4c9)
  store %struct.Memory* %call_43d4c9, %struct.Memory** %MEMORY

  ; Code: jge .L_43d4ee	 RIP: 43d4cb	 Bytes: 6
  %loadMem_43d4cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d4cb = call %struct.Memory* @routine_jge_.L_43d4ee(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d4cb, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_43d4cb, %struct.Memory** %MEMORY

  %loadBr_43d4cb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43d4cb = icmp eq i8 %loadBr_43d4cb, 1
  br i1 %cmpBr_43d4cb, label %block_.L_43d4ee, label %block_43d4d1

block_43d4d1:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d4d1	 Bytes: 4
  %loadMem_43d4d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d4d1 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d4d1)
  store %struct.Memory* %call_43d4d1, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %ecx	 RIP: 43d4d5	 Bytes: 4
  %loadMem_43d4d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d4d5 = call %struct.Memory* @routine_movzbl_0x1__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d4d5)
  store %struct.Memory* %call_43d4d5, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d4d9	 Bytes: 4
  %loadMem_43d4d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d4d9 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d4d9)
  store %struct.Memory* %call_43d4d9, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %edx	 RIP: 43d4dd	 Bytes: 4
  %loadMem_43d4dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d4dd = call %struct.Memory* @routine_movzbl_0x2__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d4dd)
  store %struct.Memory* %call_43d4dd, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43d4e1	 Bytes: 2
  %loadMem_43d4e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d4e1 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d4e1)
  store %struct.Memory* %call_43d4e1, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0xb4(%rbp)	 RIP: 43d4e3	 Bytes: 6
  %loadMem_43d4e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d4e3 = call %struct.Memory* @routine_movl__ecx__MINUS0xb4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d4e3)
  store %struct.Memory* %call_43d4e3, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43d505	 RIP: 43d4e9	 Bytes: 5
  %loadMem_43d4e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d4e9 = call %struct.Memory* @routine_jmpq_.L_43d505(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d4e9, i64 28, i64 5)
  store %struct.Memory* %call_43d4e9, %struct.Memory** %MEMORY

  br label %block_.L_43d505

  ; Code: .L_43d4ee:	 RIP: 43d4ee	 Bytes: 0
block_.L_43d4ee:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d4ee	 Bytes: 4
  %loadMem_43d4ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d4ee = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d4ee)
  store %struct.Memory* %call_43d4ee, %struct.Memory** %MEMORY

  ; Code: movzbl (%rax), %ecx	 RIP: 43d4f2	 Bytes: 3
  %loadMem_43d4f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d4f2 = call %struct.Memory* @routine_movzbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d4f2)
  store %struct.Memory* %call_43d4f2, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d4f5	 Bytes: 4
  %loadMem_43d4f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d4f5 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d4f5)
  store %struct.Memory* %call_43d4f5, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rax), %edx	 RIP: 43d4f9	 Bytes: 4
  %loadMem_43d4f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d4f9 = call %struct.Memory* @routine_movzbl_0x3__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d4f9)
  store %struct.Memory* %call_43d4f9, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43d4fd	 Bytes: 2
  %loadMem_43d4fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d4fd = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d4fd)
  store %struct.Memory* %call_43d4fd, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0xb4(%rbp)	 RIP: 43d4ff	 Bytes: 6
  %loadMem_43d4ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d4ff = call %struct.Memory* @routine_movl__ecx__MINUS0xb4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d4ff)
  store %struct.Memory* %call_43d4ff, %struct.Memory** %MEMORY

  ; Code: .L_43d505:	 RIP: 43d505	 Bytes: 0
  br label %block_.L_43d505
block_.L_43d505:

  ; Code: movl -0xb4(%rbp), %eax	 RIP: 43d505	 Bytes: 6
  %loadMem_43d505 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d505 = call %struct.Memory* @routine_movl_MINUS0xb4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d505)
  store %struct.Memory* %call_43d505, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xb0(%rbp)	 RIP: 43d50b	 Bytes: 6
  %loadMem_43d50b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d50b = call %struct.Memory* @routine_movl__eax__MINUS0xb0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d50b)
  store %struct.Memory* %call_43d50b, %struct.Memory** %MEMORY

  ; Code: .L_43d511:	 RIP: 43d511	 Bytes: 0
  br label %block_.L_43d511
block_.L_43d511:

  ; Code: movl -0xb0(%rbp), %eax	 RIP: 43d511	 Bytes: 6
  %loadMem_43d511 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d511 = call %struct.Memory* @routine_movl_MINUS0xb0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d511)
  store %struct.Memory* %call_43d511, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xb8(%rbp)	 RIP: 43d517	 Bytes: 6
  %loadMem_43d517 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d517 = call %struct.Memory* @routine_movl__eax__MINUS0xb8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d517)
  store %struct.Memory* %call_43d517, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43d641	 RIP: 43d51d	 Bytes: 5
  %loadMem_43d51d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d51d = call %struct.Memory* @routine_jmpq_.L_43d641(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d51d, i64 292, i64 5)
  store %struct.Memory* %call_43d51d, %struct.Memory** %MEMORY

  br label %block_.L_43d641

  ; Code: .L_43d522:	 RIP: 43d522	 Bytes: 0
block_.L_43d522:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d522	 Bytes: 4
  %loadMem_43d522 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d522 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d522)
  store %struct.Memory* %call_43d522, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %ecx	 RIP: 43d526	 Bytes: 4
  %loadMem_43d526 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d526 = call %struct.Memory* @routine_movzbl_0x2__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d526)
  store %struct.Memory* %call_43d526, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d52a	 Bytes: 4
  %loadMem_43d52a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d52a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d52a)
  store %struct.Memory* %call_43d52a, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %edx	 RIP: 43d52e	 Bytes: 4
  %loadMem_43d52e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d52e = call %struct.Memory* @routine_movzbl_0x2__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d52e)
  store %struct.Memory* %call_43d52e, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43d532	 Bytes: 2
  %loadMem_43d532 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d532 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d532)
  store %struct.Memory* %call_43d532, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d534	 Bytes: 4
  %loadMem_43d534 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d534 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d534)
  store %struct.Memory* %call_43d534, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rax), %edx	 RIP: 43d538	 Bytes: 4
  %loadMem_43d538 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d538 = call %struct.Memory* @routine_movzbl_0x3__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d538)
  store %struct.Memory* %call_43d538, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d53c	 Bytes: 4
  %loadMem_43d53c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d53c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d53c)
  store %struct.Memory* %call_43d53c, %struct.Memory** %MEMORY

  ; Code: movzbl (%rax), %esi	 RIP: 43d540	 Bytes: 3
  %loadMem_43d540 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d540 = call %struct.Memory* @routine_movzbl___rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d540)
  store %struct.Memory* %call_43d540, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 43d543	 Bytes: 2
  %loadMem_43d543 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d543 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d543)
  store %struct.Memory* %call_43d543, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d545	 Bytes: 4
  %loadMem_43d545 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d545 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d545)
  store %struct.Memory* %call_43d545, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %esi	 RIP: 43d549	 Bytes: 4
  %loadMem_43d549 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d549 = call %struct.Memory* @routine_movzbl_0x2__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d549)
  store %struct.Memory* %call_43d549, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d54d	 Bytes: 4
  %loadMem_43d54d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d54d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d54d)
  store %struct.Memory* %call_43d54d, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %edi	 RIP: 43d551	 Bytes: 4
  %loadMem_43d551 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d551 = call %struct.Memory* @routine_movzbl_0x1__rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d551)
  store %struct.Memory* %call_43d551, %struct.Memory** %MEMORY

  ; Code: addl %edi, %esi	 RIP: 43d555	 Bytes: 2
  %loadMem_43d555 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d555 = call %struct.Memory* @routine_addl__edi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d555)
  store %struct.Memory* %call_43d555, %struct.Memory** %MEMORY

  ; Code: cmpl %esi, %edx	 RIP: 43d557	 Bytes: 2
  %loadMem_43d557 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d557 = call %struct.Memory* @routine_cmpl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d557)
  store %struct.Memory* %call_43d557, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0xbc(%rbp)	 RIP: 43d559	 Bytes: 6
  %loadMem_43d559 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d559 = call %struct.Memory* @routine_movl__ecx__MINUS0xbc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d559)
  store %struct.Memory* %call_43d559, %struct.Memory** %MEMORY

  ; Code: jge .L_43d582	 RIP: 43d55f	 Bytes: 6
  %loadMem_43d55f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d55f = call %struct.Memory* @routine_jge_.L_43d582(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d55f, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_43d55f, %struct.Memory** %MEMORY

  %loadBr_43d55f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43d55f = icmp eq i8 %loadBr_43d55f, 1
  br i1 %cmpBr_43d55f, label %block_.L_43d582, label %block_43d565

block_43d565:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d565	 Bytes: 4
  %loadMem_43d565 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d565 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d565)
  store %struct.Memory* %call_43d565, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %ecx	 RIP: 43d569	 Bytes: 4
  %loadMem_43d569 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d569 = call %struct.Memory* @routine_movzbl_0x2__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d569)
  store %struct.Memory* %call_43d569, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d56d	 Bytes: 4
  %loadMem_43d56d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d56d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d56d)
  store %struct.Memory* %call_43d56d, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %edx	 RIP: 43d571	 Bytes: 4
  %loadMem_43d571 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d571 = call %struct.Memory* @routine_movzbl_0x1__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d571)
  store %struct.Memory* %call_43d571, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43d575	 Bytes: 2
  %loadMem_43d575 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d575 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d575)
  store %struct.Memory* %call_43d575, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0xc0(%rbp)	 RIP: 43d577	 Bytes: 6
  %loadMem_43d577 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d577 = call %struct.Memory* @routine_movl__ecx__MINUS0xc0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d577)
  store %struct.Memory* %call_43d577, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43d599	 RIP: 43d57d	 Bytes: 5
  %loadMem_43d57d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d57d = call %struct.Memory* @routine_jmpq_.L_43d599(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d57d, i64 28, i64 5)
  store %struct.Memory* %call_43d57d, %struct.Memory** %MEMORY

  br label %block_.L_43d599

  ; Code: .L_43d582:	 RIP: 43d582	 Bytes: 0
block_.L_43d582:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d582	 Bytes: 4
  %loadMem_43d582 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d582 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d582)
  store %struct.Memory* %call_43d582, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rax), %ecx	 RIP: 43d586	 Bytes: 4
  %loadMem_43d586 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d586 = call %struct.Memory* @routine_movzbl_0x3__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d586)
  store %struct.Memory* %call_43d586, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d58a	 Bytes: 4
  %loadMem_43d58a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d58a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d58a)
  store %struct.Memory* %call_43d58a, %struct.Memory** %MEMORY

  ; Code: movzbl (%rax), %edx	 RIP: 43d58e	 Bytes: 3
  %loadMem_43d58e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d58e = call %struct.Memory* @routine_movzbl___rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d58e)
  store %struct.Memory* %call_43d58e, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43d591	 Bytes: 2
  %loadMem_43d591 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d591 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d591)
  store %struct.Memory* %call_43d591, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0xc0(%rbp)	 RIP: 43d593	 Bytes: 6
  %loadMem_43d593 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d593 = call %struct.Memory* @routine_movl__ecx__MINUS0xc0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d593)
  store %struct.Memory* %call_43d593, %struct.Memory** %MEMORY

  ; Code: .L_43d599:	 RIP: 43d599	 Bytes: 0
  br label %block_.L_43d599
block_.L_43d599:

  ; Code: movl -0xc0(%rbp), %eax	 RIP: 43d599	 Bytes: 6
  %loadMem_43d599 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d599 = call %struct.Memory* @routine_movl_MINUS0xc0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d599)
  store %struct.Memory* %call_43d599, %struct.Memory** %MEMORY

  ; Code: movl -0xbc(%rbp), %ecx	 RIP: 43d59f	 Bytes: 6
  %loadMem_43d59f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d59f = call %struct.Memory* @routine_movl_MINUS0xbc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d59f)
  store %struct.Memory* %call_43d59f, %struct.Memory** %MEMORY

  ; Code: cmpl %eax, %ecx	 RIP: 43d5a5	 Bytes: 2
  %loadMem_43d5a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d5a5 = call %struct.Memory* @routine_cmpl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d5a5)
  store %struct.Memory* %call_43d5a5, %struct.Memory** %MEMORY

  ; Code: jge .L_43d5ca	 RIP: 43d5a7	 Bytes: 6
  %loadMem_43d5a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d5a7 = call %struct.Memory* @routine_jge_.L_43d5ca(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d5a7, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_43d5a7, %struct.Memory** %MEMORY

  %loadBr_43d5a7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43d5a7 = icmp eq i8 %loadBr_43d5a7, 1
  br i1 %cmpBr_43d5a7, label %block_.L_43d5ca, label %block_43d5ad

block_43d5ad:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d5ad	 Bytes: 4
  %loadMem_43d5ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d5ad = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d5ad)
  store %struct.Memory* %call_43d5ad, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %ecx	 RIP: 43d5b1	 Bytes: 4
  %loadMem_43d5b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d5b1 = call %struct.Memory* @routine_movzbl_0x2__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d5b1)
  store %struct.Memory* %call_43d5b1, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d5b5	 Bytes: 4
  %loadMem_43d5b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d5b5 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d5b5)
  store %struct.Memory* %call_43d5b5, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %edx	 RIP: 43d5b9	 Bytes: 4
  %loadMem_43d5b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d5b9 = call %struct.Memory* @routine_movzbl_0x2__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d5b9)
  store %struct.Memory* %call_43d5b9, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43d5bd	 Bytes: 2
  %loadMem_43d5bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d5bd = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d5bd)
  store %struct.Memory* %call_43d5bd, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0xc4(%rbp)	 RIP: 43d5bf	 Bytes: 6
  %loadMem_43d5bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d5bf = call %struct.Memory* @routine_movl__ecx__MINUS0xc4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d5bf)
  store %struct.Memory* %call_43d5bf, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43d635	 RIP: 43d5c5	 Bytes: 5
  %loadMem_43d5c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d5c5 = call %struct.Memory* @routine_jmpq_.L_43d635(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d5c5, i64 112, i64 5)
  store %struct.Memory* %call_43d5c5, %struct.Memory** %MEMORY

  br label %block_.L_43d635

  ; Code: .L_43d5ca:	 RIP: 43d5ca	 Bytes: 0
block_.L_43d5ca:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d5ca	 Bytes: 4
  %loadMem_43d5ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d5ca = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d5ca)
  store %struct.Memory* %call_43d5ca, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rax), %ecx	 RIP: 43d5ce	 Bytes: 4
  %loadMem_43d5ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d5ce = call %struct.Memory* @routine_movzbl_0x3__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d5ce)
  store %struct.Memory* %call_43d5ce, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d5d2	 Bytes: 4
  %loadMem_43d5d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d5d2 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d5d2)
  store %struct.Memory* %call_43d5d2, %struct.Memory** %MEMORY

  ; Code: movzbl (%rax), %edx	 RIP: 43d5d6	 Bytes: 3
  %loadMem_43d5d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d5d6 = call %struct.Memory* @routine_movzbl___rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d5d6)
  store %struct.Memory* %call_43d5d6, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43d5d9	 Bytes: 2
  %loadMem_43d5d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d5d9 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d5d9)
  store %struct.Memory* %call_43d5d9, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d5db	 Bytes: 4
  %loadMem_43d5db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d5db = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d5db)
  store %struct.Memory* %call_43d5db, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %edx	 RIP: 43d5df	 Bytes: 4
  %loadMem_43d5df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d5df = call %struct.Memory* @routine_movzbl_0x2__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d5df)
  store %struct.Memory* %call_43d5df, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d5e3	 Bytes: 4
  %loadMem_43d5e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d5e3 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d5e3)
  store %struct.Memory* %call_43d5e3, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %esi	 RIP: 43d5e7	 Bytes: 4
  %loadMem_43d5e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d5e7 = call %struct.Memory* @routine_movzbl_0x1__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d5e7)
  store %struct.Memory* %call_43d5e7, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 43d5eb	 Bytes: 2
  %loadMem_43d5eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d5eb = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d5eb)
  store %struct.Memory* %call_43d5eb, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %ecx	 RIP: 43d5ed	 Bytes: 2
  %loadMem_43d5ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d5ed = call %struct.Memory* @routine_cmpl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d5ed)
  store %struct.Memory* %call_43d5ed, %struct.Memory** %MEMORY

  ; Code: jge .L_43d612	 RIP: 43d5ef	 Bytes: 6
  %loadMem_43d5ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d5ef = call %struct.Memory* @routine_jge_.L_43d612(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d5ef, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_43d5ef, %struct.Memory** %MEMORY

  %loadBr_43d5ef = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43d5ef = icmp eq i8 %loadBr_43d5ef, 1
  br i1 %cmpBr_43d5ef, label %block_.L_43d612, label %block_43d5f5

block_43d5f5:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d5f5	 Bytes: 4
  %loadMem_43d5f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d5f5 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d5f5)
  store %struct.Memory* %call_43d5f5, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %ecx	 RIP: 43d5f9	 Bytes: 4
  %loadMem_43d5f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d5f9 = call %struct.Memory* @routine_movzbl_0x2__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d5f9)
  store %struct.Memory* %call_43d5f9, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d5fd	 Bytes: 4
  %loadMem_43d5fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d5fd = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d5fd)
  store %struct.Memory* %call_43d5fd, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %edx	 RIP: 43d601	 Bytes: 4
  %loadMem_43d601 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d601 = call %struct.Memory* @routine_movzbl_0x1__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d601)
  store %struct.Memory* %call_43d601, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43d605	 Bytes: 2
  %loadMem_43d605 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d605 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d605)
  store %struct.Memory* %call_43d605, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0xc8(%rbp)	 RIP: 43d607	 Bytes: 6
  %loadMem_43d607 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d607 = call %struct.Memory* @routine_movl__ecx__MINUS0xc8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d607)
  store %struct.Memory* %call_43d607, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43d629	 RIP: 43d60d	 Bytes: 5
  %loadMem_43d60d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d60d = call %struct.Memory* @routine_jmpq_.L_43d629(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d60d, i64 28, i64 5)
  store %struct.Memory* %call_43d60d, %struct.Memory** %MEMORY

  br label %block_.L_43d629

  ; Code: .L_43d612:	 RIP: 43d612	 Bytes: 0
block_.L_43d612:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d612	 Bytes: 4
  %loadMem_43d612 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d612 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d612)
  store %struct.Memory* %call_43d612, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rax), %ecx	 RIP: 43d616	 Bytes: 4
  %loadMem_43d616 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d616 = call %struct.Memory* @routine_movzbl_0x3__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d616)
  store %struct.Memory* %call_43d616, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d61a	 Bytes: 4
  %loadMem_43d61a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d61a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d61a)
  store %struct.Memory* %call_43d61a, %struct.Memory** %MEMORY

  ; Code: movzbl (%rax), %edx	 RIP: 43d61e	 Bytes: 3
  %loadMem_43d61e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d61e = call %struct.Memory* @routine_movzbl___rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d61e)
  store %struct.Memory* %call_43d61e, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43d621	 Bytes: 2
  %loadMem_43d621 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d621 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d621)
  store %struct.Memory* %call_43d621, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0xc8(%rbp)	 RIP: 43d623	 Bytes: 6
  %loadMem_43d623 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d623 = call %struct.Memory* @routine_movl__ecx__MINUS0xc8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d623)
  store %struct.Memory* %call_43d623, %struct.Memory** %MEMORY

  ; Code: .L_43d629:	 RIP: 43d629	 Bytes: 0
  br label %block_.L_43d629
block_.L_43d629:

  ; Code: movl -0xc8(%rbp), %eax	 RIP: 43d629	 Bytes: 6
  %loadMem_43d629 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d629 = call %struct.Memory* @routine_movl_MINUS0xc8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d629)
  store %struct.Memory* %call_43d629, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc4(%rbp)	 RIP: 43d62f	 Bytes: 6
  %loadMem_43d62f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d62f = call %struct.Memory* @routine_movl__eax__MINUS0xc4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d62f)
  store %struct.Memory* %call_43d62f, %struct.Memory** %MEMORY

  ; Code: .L_43d635:	 RIP: 43d635	 Bytes: 0
  br label %block_.L_43d635
block_.L_43d635:

  ; Code: movl -0xc4(%rbp), %eax	 RIP: 43d635	 Bytes: 6
  %loadMem_43d635 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d635 = call %struct.Memory* @routine_movl_MINUS0xc4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d635)
  store %struct.Memory* %call_43d635, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xb8(%rbp)	 RIP: 43d63b	 Bytes: 6
  %loadMem_43d63b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d63b = call %struct.Memory* @routine_movl__eax__MINUS0xb8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d63b)
  store %struct.Memory* %call_43d63b, %struct.Memory** %MEMORY

  ; Code: .L_43d641:	 RIP: 43d641	 Bytes: 0
  br label %block_.L_43d641
block_.L_43d641:

  ; Code: movl -0xb8(%rbp), %eax	 RIP: 43d641	 Bytes: 6
  %loadMem_43d641 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d641 = call %struct.Memory* @routine_movl_MINUS0xb8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d641)
  store %struct.Memory* %call_43d641, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 43d647	 Bytes: 2
  %loadMem_43d647 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d647 = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d647)
  store %struct.Memory* %call_43d647, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x1e(%rbp)	 RIP: 43d649	 Bytes: 3
  %loadMem_43d649 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d649 = call %struct.Memory* @routine_movb__cl__MINUS0x1e__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d649)
  store %struct.Memory* %call_43d649, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 43d64c	 Bytes: 4
  %loadMem_43d64c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d64c = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d64c)
  store %struct.Memory* %call_43d64c, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rdx), %eax	 RIP: 43d650	 Bytes: 4
  %loadMem_43d650 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d650 = call %struct.Memory* @routine_movzbl_0x3__rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d650)
  store %struct.Memory* %call_43d650, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 43d654	 Bytes: 4
  %loadMem_43d654 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d654 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d654)
  store %struct.Memory* %call_43d654, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rdx), %esi	 RIP: 43d658	 Bytes: 4
  %loadMem_43d658 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d658 = call %struct.Memory* @routine_movzbl_0x1__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d658)
  store %struct.Memory* %call_43d658, %struct.Memory** %MEMORY

  ; Code: addl %esi, %eax	 RIP: 43d65c	 Bytes: 2
  %loadMem_43d65c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d65c = call %struct.Memory* @routine_addl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d65c)
  store %struct.Memory* %call_43d65c, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 43d65e	 Bytes: 4
  %loadMem_43d65e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d65e = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d65e)
  store %struct.Memory* %call_43d65e, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rdx), %esi	 RIP: 43d662	 Bytes: 4
  %loadMem_43d662 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d662 = call %struct.Memory* @routine_movzbl_0x1__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d662)
  store %struct.Memory* %call_43d662, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 43d666	 Bytes: 4
  %loadMem_43d666 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d666 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d666)
  store %struct.Memory* %call_43d666, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rdx), %edi	 RIP: 43d66a	 Bytes: 4
  %loadMem_43d66a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d66a = call %struct.Memory* @routine_movzbl_0x3__rdx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d66a)
  store %struct.Memory* %call_43d66a, %struct.Memory** %MEMORY

  ; Code: addl %edi, %esi	 RIP: 43d66e	 Bytes: 2
  %loadMem_43d66e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d66e = call %struct.Memory* @routine_addl__edi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d66e)
  store %struct.Memory* %call_43d66e, %struct.Memory** %MEMORY

  ; Code: cmpl %esi, %eax	 RIP: 43d670	 Bytes: 2
  %loadMem_43d670 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d670 = call %struct.Memory* @routine_cmpl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d670)
  store %struct.Memory* %call_43d670, %struct.Memory** %MEMORY

  ; Code: jge .L_43d695	 RIP: 43d672	 Bytes: 6
  %loadMem_43d672 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d672 = call %struct.Memory* @routine_jge_.L_43d695(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d672, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_43d672, %struct.Memory** %MEMORY

  %loadBr_43d672 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43d672 = icmp eq i8 %loadBr_43d672, 1
  br i1 %cmpBr_43d672, label %block_.L_43d695, label %block_43d678

block_43d678:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d678	 Bytes: 4
  %loadMem_43d678 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d678 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d678)
  store %struct.Memory* %call_43d678, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %ecx	 RIP: 43d67c	 Bytes: 4
  %loadMem_43d67c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d67c = call %struct.Memory* @routine_movzbl_0x1__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d67c)
  store %struct.Memory* %call_43d67c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d680	 Bytes: 4
  %loadMem_43d680 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d680 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d680)
  store %struct.Memory* %call_43d680, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rax), %edx	 RIP: 43d684	 Bytes: 4
  %loadMem_43d684 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d684 = call %struct.Memory* @routine_movzbl_0x3__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d684)
  store %struct.Memory* %call_43d684, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43d688	 Bytes: 2
  %loadMem_43d688 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d688 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d688)
  store %struct.Memory* %call_43d688, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0xcc(%rbp)	 RIP: 43d68a	 Bytes: 6
  %loadMem_43d68a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d68a = call %struct.Memory* @routine_movl__ecx__MINUS0xcc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d68a)
  store %struct.Memory* %call_43d68a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43d6ad	 RIP: 43d690	 Bytes: 5
  %loadMem_43d690 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d690 = call %struct.Memory* @routine_jmpq_.L_43d6ad(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d690, i64 29, i64 5)
  store %struct.Memory* %call_43d690, %struct.Memory** %MEMORY

  br label %block_.L_43d6ad

  ; Code: .L_43d695:	 RIP: 43d695	 Bytes: 0
block_.L_43d695:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d695	 Bytes: 4
  %loadMem_43d695 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d695 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d695)
  store %struct.Memory* %call_43d695, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rax), %ecx	 RIP: 43d699	 Bytes: 4
  %loadMem_43d699 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d699 = call %struct.Memory* @routine_movzbl_0x3__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d699)
  store %struct.Memory* %call_43d699, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d69d	 Bytes: 4
  %loadMem_43d69d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d69d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d69d)
  store %struct.Memory* %call_43d69d, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %edx	 RIP: 43d6a1	 Bytes: 4
  %loadMem_43d6a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d6a1 = call %struct.Memory* @routine_movzbl_0x1__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d6a1)
  store %struct.Memory* %call_43d6a1, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43d6a5	 Bytes: 2
  %loadMem_43d6a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d6a5 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d6a5)
  store %struct.Memory* %call_43d6a5, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0xcc(%rbp)	 RIP: 43d6a7	 Bytes: 6
  %loadMem_43d6a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d6a7 = call %struct.Memory* @routine_movl__ecx__MINUS0xcc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d6a7)
  store %struct.Memory* %call_43d6a7, %struct.Memory** %MEMORY

  ; Code: .L_43d6ad:	 RIP: 43d6ad	 Bytes: 0
  br label %block_.L_43d6ad
block_.L_43d6ad:

  ; Code: movl -0xcc(%rbp), %eax	 RIP: 43d6ad	 Bytes: 6
  %loadMem_43d6ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d6ad = call %struct.Memory* @routine_movl_MINUS0xcc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d6ad)
  store %struct.Memory* %call_43d6ad, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 43d6b3	 Bytes: 4
  %loadMem_43d6b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d6b3 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d6b3)
  store %struct.Memory* %call_43d6b3, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rcx), %edx	 RIP: 43d6b7	 Bytes: 4
  %loadMem_43d6b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d6b7 = call %struct.Memory* @routine_movzbl_0x3__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d6b7)
  store %struct.Memory* %call_43d6b7, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 43d6bb	 Bytes: 4
  %loadMem_43d6bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d6bb = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d6bb)
  store %struct.Memory* %call_43d6bb, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rcx), %esi	 RIP: 43d6bf	 Bytes: 4
  %loadMem_43d6bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d6bf = call %struct.Memory* @routine_movzbl_0x2__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d6bf)
  store %struct.Memory* %call_43d6bf, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 43d6c3	 Bytes: 2
  %loadMem_43d6c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d6c3 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d6c3)
  store %struct.Memory* %call_43d6c3, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 43d6c5	 Bytes: 4
  %loadMem_43d6c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d6c5 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d6c5)
  store %struct.Memory* %call_43d6c5, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rcx), %esi	 RIP: 43d6c9	 Bytes: 4
  %loadMem_43d6c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d6c9 = call %struct.Memory* @routine_movzbl_0x2__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d6c9)
  store %struct.Memory* %call_43d6c9, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 43d6cd	 Bytes: 4
  %loadMem_43d6cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d6cd = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d6cd)
  store %struct.Memory* %call_43d6cd, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rcx), %edi	 RIP: 43d6d1	 Bytes: 4
  %loadMem_43d6d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d6d1 = call %struct.Memory* @routine_movzbl_0x3__rcx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d6d1)
  store %struct.Memory* %call_43d6d1, %struct.Memory** %MEMORY

  ; Code: addl %edi, %esi	 RIP: 43d6d5	 Bytes: 2
  %loadMem_43d6d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d6d5 = call %struct.Memory* @routine_addl__edi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d6d5)
  store %struct.Memory* %call_43d6d5, %struct.Memory** %MEMORY

  ; Code: cmpl %esi, %edx	 RIP: 43d6d7	 Bytes: 2
  %loadMem_43d6d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d6d7 = call %struct.Memory* @routine_cmpl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d6d7)
  store %struct.Memory* %call_43d6d7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xd0(%rbp)	 RIP: 43d6d9	 Bytes: 6
  %loadMem_43d6d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d6d9 = call %struct.Memory* @routine_movl__eax__MINUS0xd0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d6d9)
  store %struct.Memory* %call_43d6d9, %struct.Memory** %MEMORY

  ; Code: jge .L_43d702	 RIP: 43d6df	 Bytes: 6
  %loadMem_43d6df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d6df = call %struct.Memory* @routine_jge_.L_43d702(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d6df, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_43d6df, %struct.Memory** %MEMORY

  %loadBr_43d6df = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43d6df = icmp eq i8 %loadBr_43d6df, 1
  br i1 %cmpBr_43d6df, label %block_.L_43d702, label %block_43d6e5

block_43d6e5:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d6e5	 Bytes: 4
  %loadMem_43d6e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d6e5 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d6e5)
  store %struct.Memory* %call_43d6e5, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rax), %ecx	 RIP: 43d6e9	 Bytes: 4
  %loadMem_43d6e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d6e9 = call %struct.Memory* @routine_movzbl_0x3__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d6e9)
  store %struct.Memory* %call_43d6e9, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d6ed	 Bytes: 4
  %loadMem_43d6ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d6ed = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d6ed)
  store %struct.Memory* %call_43d6ed, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %edx	 RIP: 43d6f1	 Bytes: 4
  %loadMem_43d6f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d6f1 = call %struct.Memory* @routine_movzbl_0x2__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d6f1)
  store %struct.Memory* %call_43d6f1, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43d6f5	 Bytes: 2
  %loadMem_43d6f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d6f5 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d6f5)
  store %struct.Memory* %call_43d6f5, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0xd4(%rbp)	 RIP: 43d6f7	 Bytes: 6
  %loadMem_43d6f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d6f7 = call %struct.Memory* @routine_movl__ecx__MINUS0xd4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d6f7)
  store %struct.Memory* %call_43d6f7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43d71a	 RIP: 43d6fd	 Bytes: 5
  %loadMem_43d6fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d6fd = call %struct.Memory* @routine_jmpq_.L_43d71a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d6fd, i64 29, i64 5)
  store %struct.Memory* %call_43d6fd, %struct.Memory** %MEMORY

  br label %block_.L_43d71a

  ; Code: .L_43d702:	 RIP: 43d702	 Bytes: 0
block_.L_43d702:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d702	 Bytes: 4
  %loadMem_43d702 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d702 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d702)
  store %struct.Memory* %call_43d702, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %ecx	 RIP: 43d706	 Bytes: 4
  %loadMem_43d706 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d706 = call %struct.Memory* @routine_movzbl_0x2__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d706)
  store %struct.Memory* %call_43d706, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d70a	 Bytes: 4
  %loadMem_43d70a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d70a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d70a)
  store %struct.Memory* %call_43d70a, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rax), %edx	 RIP: 43d70e	 Bytes: 4
  %loadMem_43d70e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d70e = call %struct.Memory* @routine_movzbl_0x3__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d70e)
  store %struct.Memory* %call_43d70e, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43d712	 Bytes: 2
  %loadMem_43d712 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d712 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d712)
  store %struct.Memory* %call_43d712, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0xd4(%rbp)	 RIP: 43d714	 Bytes: 6
  %loadMem_43d714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d714 = call %struct.Memory* @routine_movl__ecx__MINUS0xd4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d714)
  store %struct.Memory* %call_43d714, %struct.Memory** %MEMORY

  ; Code: .L_43d71a:	 RIP: 43d71a	 Bytes: 0
  br label %block_.L_43d71a
block_.L_43d71a:

  ; Code: movl -0xd4(%rbp), %eax	 RIP: 43d71a	 Bytes: 6
  %loadMem_43d71a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d71a = call %struct.Memory* @routine_movl_MINUS0xd4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d71a)
  store %struct.Memory* %call_43d71a, %struct.Memory** %MEMORY

  ; Code: movl -0xd0(%rbp), %ecx	 RIP: 43d720	 Bytes: 6
  %loadMem_43d720 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d720 = call %struct.Memory* @routine_movl_MINUS0xd0__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d720)
  store %struct.Memory* %call_43d720, %struct.Memory** %MEMORY

  ; Code: cmpl %eax, %ecx	 RIP: 43d726	 Bytes: 2
  %loadMem_43d726 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d726 = call %struct.Memory* @routine_cmpl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d726)
  store %struct.Memory* %call_43d726, %struct.Memory** %MEMORY

  ; Code: jge .L_43d7a0	 RIP: 43d728	 Bytes: 6
  %loadMem_43d728 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d728 = call %struct.Memory* @routine_jge_.L_43d7a0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d728, i8* %BRANCH_TAKEN, i64 120, i64 6, i64 6)
  store %struct.Memory* %call_43d728, %struct.Memory** %MEMORY

  %loadBr_43d728 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43d728 = icmp eq i8 %loadBr_43d728, 1
  br i1 %cmpBr_43d728, label %block_.L_43d7a0, label %block_43d72e

block_43d72e:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d72e	 Bytes: 4
  %loadMem_43d72e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d72e = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d72e)
  store %struct.Memory* %call_43d72e, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rax), %ecx	 RIP: 43d732	 Bytes: 4
  %loadMem_43d732 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d732 = call %struct.Memory* @routine_movzbl_0x3__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d732)
  store %struct.Memory* %call_43d732, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d736	 Bytes: 4
  %loadMem_43d736 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d736 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d736)
  store %struct.Memory* %call_43d736, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %edx	 RIP: 43d73a	 Bytes: 4
  %loadMem_43d73a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d73a = call %struct.Memory* @routine_movzbl_0x2__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d73a)
  store %struct.Memory* %call_43d73a, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43d73e	 Bytes: 2
  %loadMem_43d73e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d73e = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d73e)
  store %struct.Memory* %call_43d73e, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d740	 Bytes: 4
  %loadMem_43d740 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d740 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d740)
  store %struct.Memory* %call_43d740, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %edx	 RIP: 43d744	 Bytes: 4
  %loadMem_43d744 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d744 = call %struct.Memory* @routine_movzbl_0x2__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d744)
  store %struct.Memory* %call_43d744, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d748	 Bytes: 4
  %loadMem_43d748 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d748 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d748)
  store %struct.Memory* %call_43d748, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rax), %esi	 RIP: 43d74c	 Bytes: 4
  %loadMem_43d74c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d74c = call %struct.Memory* @routine_movzbl_0x3__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d74c)
  store %struct.Memory* %call_43d74c, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 43d750	 Bytes: 2
  %loadMem_43d750 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d750 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d750)
  store %struct.Memory* %call_43d750, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %ecx	 RIP: 43d752	 Bytes: 2
  %loadMem_43d752 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d752 = call %struct.Memory* @routine_cmpl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d752)
  store %struct.Memory* %call_43d752, %struct.Memory** %MEMORY

  ; Code: jge .L_43d777	 RIP: 43d754	 Bytes: 6
  %loadMem_43d754 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d754 = call %struct.Memory* @routine_jge_.L_43d777(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d754, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_43d754, %struct.Memory** %MEMORY

  %loadBr_43d754 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43d754 = icmp eq i8 %loadBr_43d754, 1
  br i1 %cmpBr_43d754, label %block_.L_43d777, label %block_43d75a

block_43d75a:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d75a	 Bytes: 4
  %loadMem_43d75a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d75a = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d75a)
  store %struct.Memory* %call_43d75a, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rax), %ecx	 RIP: 43d75e	 Bytes: 4
  %loadMem_43d75e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d75e = call %struct.Memory* @routine_movzbl_0x3__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d75e)
  store %struct.Memory* %call_43d75e, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d762	 Bytes: 4
  %loadMem_43d762 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d762 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d762)
  store %struct.Memory* %call_43d762, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %edx	 RIP: 43d766	 Bytes: 4
  %loadMem_43d766 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d766 = call %struct.Memory* @routine_movzbl_0x2__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d766)
  store %struct.Memory* %call_43d766, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43d76a	 Bytes: 2
  %loadMem_43d76a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d76a = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d76a)
  store %struct.Memory* %call_43d76a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0xd8(%rbp)	 RIP: 43d76c	 Bytes: 6
  %loadMem_43d76c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d76c = call %struct.Memory* @routine_movl__ecx__MINUS0xd8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d76c)
  store %struct.Memory* %call_43d76c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43d78f	 RIP: 43d772	 Bytes: 5
  %loadMem_43d772 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d772 = call %struct.Memory* @routine_jmpq_.L_43d78f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d772, i64 29, i64 5)
  store %struct.Memory* %call_43d772, %struct.Memory** %MEMORY

  br label %block_.L_43d78f

  ; Code: .L_43d777:	 RIP: 43d777	 Bytes: 0
block_.L_43d777:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d777	 Bytes: 4
  %loadMem_43d777 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d777 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d777)
  store %struct.Memory* %call_43d777, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %ecx	 RIP: 43d77b	 Bytes: 4
  %loadMem_43d77b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d77b = call %struct.Memory* @routine_movzbl_0x2__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d77b)
  store %struct.Memory* %call_43d77b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d77f	 Bytes: 4
  %loadMem_43d77f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d77f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d77f)
  store %struct.Memory* %call_43d77f, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rax), %edx	 RIP: 43d783	 Bytes: 4
  %loadMem_43d783 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d783 = call %struct.Memory* @routine_movzbl_0x3__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d783)
  store %struct.Memory* %call_43d783, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43d787	 Bytes: 2
  %loadMem_43d787 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d787 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d787)
  store %struct.Memory* %call_43d787, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0xd8(%rbp)	 RIP: 43d789	 Bytes: 6
  %loadMem_43d789 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d789 = call %struct.Memory* @routine_movl__ecx__MINUS0xd8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d789)
  store %struct.Memory* %call_43d789, %struct.Memory** %MEMORY

  ; Code: .L_43d78f:	 RIP: 43d78f	 Bytes: 0
  br label %block_.L_43d78f
block_.L_43d78f:

  ; Code: movl -0xd8(%rbp), %eax	 RIP: 43d78f	 Bytes: 6
  %loadMem_43d78f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d78f = call %struct.Memory* @routine_movl_MINUS0xd8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d78f)
  store %struct.Memory* %call_43d78f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xdc(%rbp)	 RIP: 43d795	 Bytes: 6
  %loadMem_43d795 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d795 = call %struct.Memory* @routine_movl__eax__MINUS0xdc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d795)
  store %struct.Memory* %call_43d795, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43d80d	 RIP: 43d79b	 Bytes: 5
  %loadMem_43d79b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d79b = call %struct.Memory* @routine_jmpq_.L_43d80d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d79b, i64 114, i64 5)
  store %struct.Memory* %call_43d79b, %struct.Memory** %MEMORY

  br label %block_.L_43d80d

  ; Code: .L_43d7a0:	 RIP: 43d7a0	 Bytes: 0
block_.L_43d7a0:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d7a0	 Bytes: 4
  %loadMem_43d7a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d7a0 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d7a0)
  store %struct.Memory* %call_43d7a0, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rax), %ecx	 RIP: 43d7a4	 Bytes: 4
  %loadMem_43d7a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d7a4 = call %struct.Memory* @routine_movzbl_0x3__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d7a4)
  store %struct.Memory* %call_43d7a4, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d7a8	 Bytes: 4
  %loadMem_43d7a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d7a8 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d7a8)
  store %struct.Memory* %call_43d7a8, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %edx	 RIP: 43d7ac	 Bytes: 4
  %loadMem_43d7ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d7ac = call %struct.Memory* @routine_movzbl_0x1__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d7ac)
  store %struct.Memory* %call_43d7ac, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43d7b0	 Bytes: 2
  %loadMem_43d7b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d7b0 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d7b0)
  store %struct.Memory* %call_43d7b0, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d7b2	 Bytes: 4
  %loadMem_43d7b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d7b2 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d7b2)
  store %struct.Memory* %call_43d7b2, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %edx	 RIP: 43d7b6	 Bytes: 4
  %loadMem_43d7b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d7b6 = call %struct.Memory* @routine_movzbl_0x1__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d7b6)
  store %struct.Memory* %call_43d7b6, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d7ba	 Bytes: 4
  %loadMem_43d7ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d7ba = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d7ba)
  store %struct.Memory* %call_43d7ba, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rax), %esi	 RIP: 43d7be	 Bytes: 4
  %loadMem_43d7be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d7be = call %struct.Memory* @routine_movzbl_0x3__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d7be)
  store %struct.Memory* %call_43d7be, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 43d7c2	 Bytes: 2
  %loadMem_43d7c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d7c2 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d7c2)
  store %struct.Memory* %call_43d7c2, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %ecx	 RIP: 43d7c4	 Bytes: 2
  %loadMem_43d7c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d7c4 = call %struct.Memory* @routine_cmpl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d7c4)
  store %struct.Memory* %call_43d7c4, %struct.Memory** %MEMORY

  ; Code: jge .L_43d7e9	 RIP: 43d7c6	 Bytes: 6
  %loadMem_43d7c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d7c6 = call %struct.Memory* @routine_jge_.L_43d7e9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d7c6, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_43d7c6, %struct.Memory** %MEMORY

  %loadBr_43d7c6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43d7c6 = icmp eq i8 %loadBr_43d7c6, 1
  br i1 %cmpBr_43d7c6, label %block_.L_43d7e9, label %block_43d7cc

block_43d7cc:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d7cc	 Bytes: 4
  %loadMem_43d7cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d7cc = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d7cc)
  store %struct.Memory* %call_43d7cc, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %ecx	 RIP: 43d7d0	 Bytes: 4
  %loadMem_43d7d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d7d0 = call %struct.Memory* @routine_movzbl_0x1__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d7d0)
  store %struct.Memory* %call_43d7d0, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d7d4	 Bytes: 4
  %loadMem_43d7d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d7d4 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d7d4)
  store %struct.Memory* %call_43d7d4, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rax), %edx	 RIP: 43d7d8	 Bytes: 4
  %loadMem_43d7d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d7d8 = call %struct.Memory* @routine_movzbl_0x3__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d7d8)
  store %struct.Memory* %call_43d7d8, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43d7dc	 Bytes: 2
  %loadMem_43d7dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d7dc = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d7dc)
  store %struct.Memory* %call_43d7dc, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0xe0(%rbp)	 RIP: 43d7de	 Bytes: 6
  %loadMem_43d7de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d7de = call %struct.Memory* @routine_movl__ecx__MINUS0xe0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d7de)
  store %struct.Memory* %call_43d7de, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43d801	 RIP: 43d7e4	 Bytes: 5
  %loadMem_43d7e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d7e4 = call %struct.Memory* @routine_jmpq_.L_43d801(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d7e4, i64 29, i64 5)
  store %struct.Memory* %call_43d7e4, %struct.Memory** %MEMORY

  br label %block_.L_43d801

  ; Code: .L_43d7e9:	 RIP: 43d7e9	 Bytes: 0
block_.L_43d7e9:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d7e9	 Bytes: 4
  %loadMem_43d7e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d7e9 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d7e9)
  store %struct.Memory* %call_43d7e9, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rax), %ecx	 RIP: 43d7ed	 Bytes: 4
  %loadMem_43d7ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d7ed = call %struct.Memory* @routine_movzbl_0x3__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d7ed)
  store %struct.Memory* %call_43d7ed, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d7f1	 Bytes: 4
  %loadMem_43d7f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d7f1 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d7f1)
  store %struct.Memory* %call_43d7f1, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %edx	 RIP: 43d7f5	 Bytes: 4
  %loadMem_43d7f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d7f5 = call %struct.Memory* @routine_movzbl_0x1__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d7f5)
  store %struct.Memory* %call_43d7f5, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43d7f9	 Bytes: 2
  %loadMem_43d7f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d7f9 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d7f9)
  store %struct.Memory* %call_43d7f9, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0xe0(%rbp)	 RIP: 43d7fb	 Bytes: 6
  %loadMem_43d7fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d7fb = call %struct.Memory* @routine_movl__ecx__MINUS0xe0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d7fb)
  store %struct.Memory* %call_43d7fb, %struct.Memory** %MEMORY

  ; Code: .L_43d801:	 RIP: 43d801	 Bytes: 0
  br label %block_.L_43d801
block_.L_43d801:

  ; Code: movl -0xe0(%rbp), %eax	 RIP: 43d801	 Bytes: 6
  %loadMem_43d801 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d801 = call %struct.Memory* @routine_movl_MINUS0xe0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d801)
  store %struct.Memory* %call_43d801, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xdc(%rbp)	 RIP: 43d807	 Bytes: 6
  %loadMem_43d807 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d807 = call %struct.Memory* @routine_movl__eax__MINUS0xdc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d807)
  store %struct.Memory* %call_43d807, %struct.Memory** %MEMORY

  ; Code: .L_43d80d:	 RIP: 43d80d	 Bytes: 0
  br label %block_.L_43d80d
block_.L_43d80d:

  ; Code: movl -0xdc(%rbp), %eax	 RIP: 43d80d	 Bytes: 6
  %loadMem_43d80d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d80d = call %struct.Memory* @routine_movl_MINUS0xdc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d80d)
  store %struct.Memory* %call_43d80d, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 43d813	 Bytes: 2
  %loadMem_43d813 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d813 = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d813)
  store %struct.Memory* %call_43d813, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x1d(%rbp)	 RIP: 43d815	 Bytes: 3
  %loadMem_43d815 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d815 = call %struct.Memory* @routine_movb__cl__MINUS0x1d__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d815)
  store %struct.Memory* %call_43d815, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 43d818	 Bytes: 4
  %loadMem_43d818 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d818 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d818)
  store %struct.Memory* %call_43d818, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rdx), %eax	 RIP: 43d81c	 Bytes: 4
  %loadMem_43d81c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d81c = call %struct.Memory* @routine_movzbl_0x3__rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d81c)
  store %struct.Memory* %call_43d81c, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 43d820	 Bytes: 4
  %loadMem_43d820 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d820 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d820)
  store %struct.Memory* %call_43d820, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rdx), %esi	 RIP: 43d824	 Bytes: 4
  %loadMem_43d824 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d824 = call %struct.Memory* @routine_movzbl_0x2__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d824)
  store %struct.Memory* %call_43d824, %struct.Memory** %MEMORY

  ; Code: subl %esi, %eax	 RIP: 43d828	 Bytes: 2
  %loadMem_43d828 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d828 = call %struct.Memory* @routine_subl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d828)
  store %struct.Memory* %call_43d828, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, %eax	 RIP: 43d82a	 Bytes: 3
  %loadMem_43d82a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d82a = call %struct.Memory* @routine_cmpl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d82a)
  store %struct.Memory* %call_43d82a, %struct.Memory** %MEMORY

  ; Code: jne .L_43d84e	 RIP: 43d82d	 Bytes: 6
  %loadMem_43d82d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d82d = call %struct.Memory* @routine_jne_.L_43d84e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d82d, i8* %BRANCH_TAKEN, i64 33, i64 6, i64 6)
  store %struct.Memory* %call_43d82d, %struct.Memory** %MEMORY

  %loadBr_43d82d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43d82d = icmp eq i8 %loadBr_43d82d, 1
  br i1 %cmpBr_43d82d, label %block_.L_43d84e, label %block_43d833

block_43d833:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d833	 Bytes: 4
  %loadMem_43d833 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d833 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d833)
  store %struct.Memory* %call_43d833, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %ecx	 RIP: 43d837	 Bytes: 4
  %loadMem_43d837 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d837 = call %struct.Memory* @routine_movzbl_0x2__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d837)
  store %struct.Memory* %call_43d837, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d83b	 Bytes: 4
  %loadMem_43d83b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d83b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d83b)
  store %struct.Memory* %call_43d83b, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %edx	 RIP: 43d83f	 Bytes: 4
  %loadMem_43d83f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d83f = call %struct.Memory* @routine_movzbl_0x1__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d83f)
  store %struct.Memory* %call_43d83f, %struct.Memory** %MEMORY

  ; Code: subl %edx, %ecx	 RIP: 43d843	 Bytes: 2
  %loadMem_43d843 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d843 = call %struct.Memory* @routine_subl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d843)
  store %struct.Memory* %call_43d843, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %ecx	 RIP: 43d845	 Bytes: 3
  %loadMem_43d845 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d845 = call %struct.Memory* @routine_cmpl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d845)
  store %struct.Memory* %call_43d845, %struct.Memory** %MEMORY

  ; Code: je .L_43d884	 RIP: 43d848	 Bytes: 6
  %loadMem_43d848 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d848 = call %struct.Memory* @routine_je_.L_43d884(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d848, i8* %BRANCH_TAKEN, i64 60, i64 6, i64 6)
  store %struct.Memory* %call_43d848, %struct.Memory** %MEMORY

  %loadBr_43d848 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43d848 = icmp eq i8 %loadBr_43d848, 1
  br i1 %cmpBr_43d848, label %block_.L_43d884, label %block_.L_43d84e

  ; Code: .L_43d84e:	 RIP: 43d84e	 Bytes: 0
block_.L_43d84e:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d84e	 Bytes: 4
  %loadMem_43d84e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d84e = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d84e)
  store %struct.Memory* %call_43d84e, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %ecx	 RIP: 43d852	 Bytes: 4
  %loadMem_43d852 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d852 = call %struct.Memory* @routine_movzbl_0x2__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d852)
  store %struct.Memory* %call_43d852, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d856	 Bytes: 4
  %loadMem_43d856 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d856 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d856)
  store %struct.Memory* %call_43d856, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %edx	 RIP: 43d85a	 Bytes: 4
  %loadMem_43d85a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d85a = call %struct.Memory* @routine_movzbl_0x1__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d85a)
  store %struct.Memory* %call_43d85a, %struct.Memory** %MEMORY

  ; Code: subl %edx, %ecx	 RIP: 43d85e	 Bytes: 2
  %loadMem_43d85e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d85e = call %struct.Memory* @routine_subl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d85e)
  store %struct.Memory* %call_43d85e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %ecx	 RIP: 43d860	 Bytes: 3
  %loadMem_43d860 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d860 = call %struct.Memory* @routine_cmpl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d860)
  store %struct.Memory* %call_43d860, %struct.Memory** %MEMORY

  ; Code: jne .L_43da50	 RIP: 43d863	 Bytes: 6
  %loadMem_43d863 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d863 = call %struct.Memory* @routine_jne_.L_43da50(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d863, i8* %BRANCH_TAKEN, i64 493, i64 6, i64 6)
  store %struct.Memory* %call_43d863, %struct.Memory** %MEMORY

  %loadBr_43d863 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43d863 = icmp eq i8 %loadBr_43d863, 1
  br i1 %cmpBr_43d863, label %block_.L_43da50, label %block_43d869

block_43d869:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d869	 Bytes: 4
  %loadMem_43d869 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d869 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d869)
  store %struct.Memory* %call_43d869, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rax), %ecx	 RIP: 43d86d	 Bytes: 4
  %loadMem_43d86d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d86d = call %struct.Memory* @routine_movzbl_0x3__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d86d)
  store %struct.Memory* %call_43d86d, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d871	 Bytes: 4
  %loadMem_43d871 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d871 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d871)
  store %struct.Memory* %call_43d871, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %edx	 RIP: 43d875	 Bytes: 4
  %loadMem_43d875 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d875 = call %struct.Memory* @routine_movzbl_0x2__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d875)
  store %struct.Memory* %call_43d875, %struct.Memory** %MEMORY

  ; Code: subl %edx, %ecx	 RIP: 43d879	 Bytes: 2
  %loadMem_43d879 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d879 = call %struct.Memory* @routine_subl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d879)
  store %struct.Memory* %call_43d879, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, %ecx	 RIP: 43d87b	 Bytes: 3
  %loadMem_43d87b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d87b = call %struct.Memory* @routine_cmpl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d87b)
  store %struct.Memory* %call_43d87b, %struct.Memory** %MEMORY

  ; Code: jne .L_43da50	 RIP: 43d87e	 Bytes: 6
  %loadMem_43d87e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d87e = call %struct.Memory* @routine_jne_.L_43da50(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d87e, i8* %BRANCH_TAKEN, i64 466, i64 6, i64 6)
  store %struct.Memory* %call_43d87e, %struct.Memory** %MEMORY

  %loadBr_43d87e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43d87e = icmp eq i8 %loadBr_43d87e, 1
  br i1 %cmpBr_43d87e, label %block_.L_43da50, label %block_.L_43d884

  ; Code: .L_43d884:	 RIP: 43d884	 Bytes: 0
block_.L_43d884:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d884	 Bytes: 4
  %loadMem_43d884 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d884 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d884)
  store %struct.Memory* %call_43d884, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %ecx	 RIP: 43d888	 Bytes: 4
  %loadMem_43d888 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d888 = call %struct.Memory* @routine_movzbl_0x2__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d888)
  store %struct.Memory* %call_43d888, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d88c	 Bytes: 4
  %loadMem_43d88c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d88c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d88c)
  store %struct.Memory* %call_43d88c, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rax), %edx	 RIP: 43d890	 Bytes: 4
  %loadMem_43d890 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d890 = call %struct.Memory* @routine_movzbl_0x3__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d890)
  store %struct.Memory* %call_43d890, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43d894	 Bytes: 2
  %loadMem_43d894 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d894 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d894)
  store %struct.Memory* %call_43d894, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d896	 Bytes: 4
  %loadMem_43d896 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d896 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d896)
  store %struct.Memory* %call_43d896, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rax), %edx	 RIP: 43d89a	 Bytes: 4
  %loadMem_43d89a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d89a = call %struct.Memory* @routine_movzbl_0x3__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d89a)
  store %struct.Memory* %call_43d89a, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d89e	 Bytes: 4
  %loadMem_43d89e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d89e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d89e)
  store %struct.Memory* %call_43d89e, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %esi	 RIP: 43d8a2	 Bytes: 4
  %loadMem_43d8a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d8a2 = call %struct.Memory* @routine_movzbl_0x1__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d8a2)
  store %struct.Memory* %call_43d8a2, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 43d8a6	 Bytes: 2
  %loadMem_43d8a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d8a6 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d8a6)
  store %struct.Memory* %call_43d8a6, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %ecx	 RIP: 43d8a8	 Bytes: 2
  %loadMem_43d8a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d8a8 = call %struct.Memory* @routine_cmpl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d8a8)
  store %struct.Memory* %call_43d8a8, %struct.Memory** %MEMORY

  ; Code: jge .L_43d8cd	 RIP: 43d8aa	 Bytes: 6
  %loadMem_43d8aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d8aa = call %struct.Memory* @routine_jge_.L_43d8cd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d8aa, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_43d8aa, %struct.Memory** %MEMORY

  %loadBr_43d8aa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43d8aa = icmp eq i8 %loadBr_43d8aa, 1
  br i1 %cmpBr_43d8aa, label %block_.L_43d8cd, label %block_43d8b0

block_43d8b0:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d8b0	 Bytes: 4
  %loadMem_43d8b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d8b0 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d8b0)
  store %struct.Memory* %call_43d8b0, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %ecx	 RIP: 43d8b4	 Bytes: 4
  %loadMem_43d8b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d8b4 = call %struct.Memory* @routine_movzbl_0x2__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d8b4)
  store %struct.Memory* %call_43d8b4, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d8b8	 Bytes: 4
  %loadMem_43d8b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d8b8 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d8b8)
  store %struct.Memory* %call_43d8b8, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rax), %edx	 RIP: 43d8bc	 Bytes: 4
  %loadMem_43d8bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d8bc = call %struct.Memory* @routine_movzbl_0x3__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d8bc)
  store %struct.Memory* %call_43d8bc, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43d8c0	 Bytes: 2
  %loadMem_43d8c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d8c0 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d8c0)
  store %struct.Memory* %call_43d8c0, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0xe4(%rbp)	 RIP: 43d8c2	 Bytes: 6
  %loadMem_43d8c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d8c2 = call %struct.Memory* @routine_movl__ecx__MINUS0xe4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d8c2)
  store %struct.Memory* %call_43d8c2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43d8e5	 RIP: 43d8c8	 Bytes: 5
  %loadMem_43d8c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d8c8 = call %struct.Memory* @routine_jmpq_.L_43d8e5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d8c8, i64 29, i64 5)
  store %struct.Memory* %call_43d8c8, %struct.Memory** %MEMORY

  br label %block_.L_43d8e5

  ; Code: .L_43d8cd:	 RIP: 43d8cd	 Bytes: 0
block_.L_43d8cd:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d8cd	 Bytes: 4
  %loadMem_43d8cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d8cd = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d8cd)
  store %struct.Memory* %call_43d8cd, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rax), %ecx	 RIP: 43d8d1	 Bytes: 4
  %loadMem_43d8d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d8d1 = call %struct.Memory* @routine_movzbl_0x3__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d8d1)
  store %struct.Memory* %call_43d8d1, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d8d5	 Bytes: 4
  %loadMem_43d8d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d8d5 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d8d5)
  store %struct.Memory* %call_43d8d5, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %edx	 RIP: 43d8d9	 Bytes: 4
  %loadMem_43d8d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d8d9 = call %struct.Memory* @routine_movzbl_0x1__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d8d9)
  store %struct.Memory* %call_43d8d9, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43d8dd	 Bytes: 2
  %loadMem_43d8dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d8dd = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d8dd)
  store %struct.Memory* %call_43d8dd, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0xe4(%rbp)	 RIP: 43d8df	 Bytes: 6
  %loadMem_43d8df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d8df = call %struct.Memory* @routine_movl__ecx__MINUS0xe4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d8df)
  store %struct.Memory* %call_43d8df, %struct.Memory** %MEMORY

  ; Code: .L_43d8e5:	 RIP: 43d8e5	 Bytes: 0
  br label %block_.L_43d8e5
block_.L_43d8e5:

  ; Code: movl -0xe4(%rbp), %eax	 RIP: 43d8e5	 Bytes: 6
  %loadMem_43d8e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d8e5 = call %struct.Memory* @routine_movl_MINUS0xe4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d8e5)
  store %struct.Memory* %call_43d8e5, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 43d8eb	 Bytes: 4
  %loadMem_43d8eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d8eb = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d8eb)
  store %struct.Memory* %call_43d8eb, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rcx), %edx	 RIP: 43d8ef	 Bytes: 4
  %loadMem_43d8ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d8ef = call %struct.Memory* @routine_movzbl_0x3__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d8ef)
  store %struct.Memory* %call_43d8ef, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 43d8f3	 Bytes: 4
  %loadMem_43d8f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d8f3 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d8f3)
  store %struct.Memory* %call_43d8f3, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rcx), %esi	 RIP: 43d8f7	 Bytes: 4
  %loadMem_43d8f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d8f7 = call %struct.Memory* @routine_movzbl_0x2__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d8f7)
  store %struct.Memory* %call_43d8f7, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 43d8fb	 Bytes: 2
  %loadMem_43d8fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d8fb = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d8fb)
  store %struct.Memory* %call_43d8fb, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 43d8fd	 Bytes: 4
  %loadMem_43d8fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d8fd = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d8fd)
  store %struct.Memory* %call_43d8fd, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rcx), %esi	 RIP: 43d901	 Bytes: 4
  %loadMem_43d901 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d901 = call %struct.Memory* @routine_movzbl_0x1__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d901)
  store %struct.Memory* %call_43d901, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 43d905	 Bytes: 4
  %loadMem_43d905 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d905 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d905)
  store %struct.Memory* %call_43d905, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rcx), %edi	 RIP: 43d909	 Bytes: 4
  %loadMem_43d909 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d909 = call %struct.Memory* @routine_movzbl_0x3__rcx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d909)
  store %struct.Memory* %call_43d909, %struct.Memory** %MEMORY

  ; Code: addl %edi, %esi	 RIP: 43d90d	 Bytes: 2
  %loadMem_43d90d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d90d = call %struct.Memory* @routine_addl__edi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d90d)
  store %struct.Memory* %call_43d90d, %struct.Memory** %MEMORY

  ; Code: cmpl %esi, %edx	 RIP: 43d90f	 Bytes: 2
  %loadMem_43d90f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d90f = call %struct.Memory* @routine_cmpl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d90f)
  store %struct.Memory* %call_43d90f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xe8(%rbp)	 RIP: 43d911	 Bytes: 6
  %loadMem_43d911 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d911 = call %struct.Memory* @routine_movl__eax__MINUS0xe8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d911)
  store %struct.Memory* %call_43d911, %struct.Memory** %MEMORY

  ; Code: jge .L_43d93a	 RIP: 43d917	 Bytes: 6
  %loadMem_43d917 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d917 = call %struct.Memory* @routine_jge_.L_43d93a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d917, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_43d917, %struct.Memory** %MEMORY

  %loadBr_43d917 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43d917 = icmp eq i8 %loadBr_43d917, 1
  br i1 %cmpBr_43d917, label %block_.L_43d93a, label %block_43d91d

block_43d91d:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d91d	 Bytes: 4
  %loadMem_43d91d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d91d = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d91d)
  store %struct.Memory* %call_43d91d, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rax), %ecx	 RIP: 43d921	 Bytes: 4
  %loadMem_43d921 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d921 = call %struct.Memory* @routine_movzbl_0x3__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d921)
  store %struct.Memory* %call_43d921, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d925	 Bytes: 4
  %loadMem_43d925 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d925 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d925)
  store %struct.Memory* %call_43d925, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %edx	 RIP: 43d929	 Bytes: 4
  %loadMem_43d929 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d929 = call %struct.Memory* @routine_movzbl_0x2__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d929)
  store %struct.Memory* %call_43d929, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43d92d	 Bytes: 2
  %loadMem_43d92d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d92d = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d92d)
  store %struct.Memory* %call_43d92d, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0xec(%rbp)	 RIP: 43d92f	 Bytes: 6
  %loadMem_43d92f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d92f = call %struct.Memory* @routine_movl__ecx__MINUS0xec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d92f)
  store %struct.Memory* %call_43d92f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43d952	 RIP: 43d935	 Bytes: 5
  %loadMem_43d935 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d935 = call %struct.Memory* @routine_jmpq_.L_43d952(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d935, i64 29, i64 5)
  store %struct.Memory* %call_43d935, %struct.Memory** %MEMORY

  br label %block_.L_43d952

  ; Code: .L_43d93a:	 RIP: 43d93a	 Bytes: 0
block_.L_43d93a:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d93a	 Bytes: 4
  %loadMem_43d93a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d93a = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d93a)
  store %struct.Memory* %call_43d93a, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %ecx	 RIP: 43d93e	 Bytes: 4
  %loadMem_43d93e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d93e = call %struct.Memory* @routine_movzbl_0x1__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d93e)
  store %struct.Memory* %call_43d93e, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d942	 Bytes: 4
  %loadMem_43d942 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d942 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d942)
  store %struct.Memory* %call_43d942, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rax), %edx	 RIP: 43d946	 Bytes: 4
  %loadMem_43d946 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d946 = call %struct.Memory* @routine_movzbl_0x3__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d946)
  store %struct.Memory* %call_43d946, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43d94a	 Bytes: 2
  %loadMem_43d94a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d94a = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d94a)
  store %struct.Memory* %call_43d94a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0xec(%rbp)	 RIP: 43d94c	 Bytes: 6
  %loadMem_43d94c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d94c = call %struct.Memory* @routine_movl__ecx__MINUS0xec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d94c)
  store %struct.Memory* %call_43d94c, %struct.Memory** %MEMORY

  ; Code: .L_43d952:	 RIP: 43d952	 Bytes: 0
  br label %block_.L_43d952
block_.L_43d952:

  ; Code: movl -0xec(%rbp), %eax	 RIP: 43d952	 Bytes: 6
  %loadMem_43d952 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d952 = call %struct.Memory* @routine_movl_MINUS0xec__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d952)
  store %struct.Memory* %call_43d952, %struct.Memory** %MEMORY

  ; Code: movl -0xe8(%rbp), %ecx	 RIP: 43d958	 Bytes: 6
  %loadMem_43d958 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d958 = call %struct.Memory* @routine_movl_MINUS0xe8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d958)
  store %struct.Memory* %call_43d958, %struct.Memory** %MEMORY

  ; Code: cmpl %eax, %ecx	 RIP: 43d95e	 Bytes: 2
  %loadMem_43d95e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d95e = call %struct.Memory* @routine_cmpl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d95e)
  store %struct.Memory* %call_43d95e, %struct.Memory** %MEMORY

  ; Code: jge .L_43d9d8	 RIP: 43d960	 Bytes: 6
  %loadMem_43d960 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d960 = call %struct.Memory* @routine_jge_.L_43d9d8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d960, i8* %BRANCH_TAKEN, i64 120, i64 6, i64 6)
  store %struct.Memory* %call_43d960, %struct.Memory** %MEMORY

  %loadBr_43d960 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43d960 = icmp eq i8 %loadBr_43d960, 1
  br i1 %cmpBr_43d960, label %block_.L_43d9d8, label %block_43d966

block_43d966:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d966	 Bytes: 4
  %loadMem_43d966 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d966 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d966)
  store %struct.Memory* %call_43d966, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rax), %ecx	 RIP: 43d96a	 Bytes: 4
  %loadMem_43d96a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d96a = call %struct.Memory* @routine_movzbl_0x3__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d96a)
  store %struct.Memory* %call_43d96a, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d96e	 Bytes: 4
  %loadMem_43d96e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d96e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d96e)
  store %struct.Memory* %call_43d96e, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %edx	 RIP: 43d972	 Bytes: 4
  %loadMem_43d972 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d972 = call %struct.Memory* @routine_movzbl_0x2__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d972)
  store %struct.Memory* %call_43d972, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43d976	 Bytes: 2
  %loadMem_43d976 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d976 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d976)
  store %struct.Memory* %call_43d976, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d978	 Bytes: 4
  %loadMem_43d978 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d978 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d978)
  store %struct.Memory* %call_43d978, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %edx	 RIP: 43d97c	 Bytes: 4
  %loadMem_43d97c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d97c = call %struct.Memory* @routine_movzbl_0x1__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d97c)
  store %struct.Memory* %call_43d97c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d980	 Bytes: 4
  %loadMem_43d980 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d980 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d980)
  store %struct.Memory* %call_43d980, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rax), %esi	 RIP: 43d984	 Bytes: 4
  %loadMem_43d984 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d984 = call %struct.Memory* @routine_movzbl_0x3__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d984)
  store %struct.Memory* %call_43d984, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 43d988	 Bytes: 2
  %loadMem_43d988 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d988 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d988)
  store %struct.Memory* %call_43d988, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %ecx	 RIP: 43d98a	 Bytes: 2
  %loadMem_43d98a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d98a = call %struct.Memory* @routine_cmpl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d98a)
  store %struct.Memory* %call_43d98a, %struct.Memory** %MEMORY

  ; Code: jge .L_43d9af	 RIP: 43d98c	 Bytes: 6
  %loadMem_43d98c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d98c = call %struct.Memory* @routine_jge_.L_43d9af(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d98c, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_43d98c, %struct.Memory** %MEMORY

  %loadBr_43d98c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43d98c = icmp eq i8 %loadBr_43d98c, 1
  br i1 %cmpBr_43d98c, label %block_.L_43d9af, label %block_43d992

block_43d992:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d992	 Bytes: 4
  %loadMem_43d992 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d992 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d992)
  store %struct.Memory* %call_43d992, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rax), %ecx	 RIP: 43d996	 Bytes: 4
  %loadMem_43d996 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d996 = call %struct.Memory* @routine_movzbl_0x3__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d996)
  store %struct.Memory* %call_43d996, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d99a	 Bytes: 4
  %loadMem_43d99a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d99a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d99a)
  store %struct.Memory* %call_43d99a, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %edx	 RIP: 43d99e	 Bytes: 4
  %loadMem_43d99e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d99e = call %struct.Memory* @routine_movzbl_0x2__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d99e)
  store %struct.Memory* %call_43d99e, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43d9a2	 Bytes: 2
  %loadMem_43d9a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d9a2 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d9a2)
  store %struct.Memory* %call_43d9a2, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0xf0(%rbp)	 RIP: 43d9a4	 Bytes: 6
  %loadMem_43d9a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d9a4 = call %struct.Memory* @routine_movl__ecx__MINUS0xf0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d9a4)
  store %struct.Memory* %call_43d9a4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43d9c7	 RIP: 43d9aa	 Bytes: 5
  %loadMem_43d9aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d9aa = call %struct.Memory* @routine_jmpq_.L_43d9c7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d9aa, i64 29, i64 5)
  store %struct.Memory* %call_43d9aa, %struct.Memory** %MEMORY

  br label %block_.L_43d9c7

  ; Code: .L_43d9af:	 RIP: 43d9af	 Bytes: 0
block_.L_43d9af:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d9af	 Bytes: 4
  %loadMem_43d9af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d9af = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d9af)
  store %struct.Memory* %call_43d9af, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %ecx	 RIP: 43d9b3	 Bytes: 4
  %loadMem_43d9b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d9b3 = call %struct.Memory* @routine_movzbl_0x1__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d9b3)
  store %struct.Memory* %call_43d9b3, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d9b7	 Bytes: 4
  %loadMem_43d9b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d9b7 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d9b7)
  store %struct.Memory* %call_43d9b7, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rax), %edx	 RIP: 43d9bb	 Bytes: 4
  %loadMem_43d9bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d9bb = call %struct.Memory* @routine_movzbl_0x3__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d9bb)
  store %struct.Memory* %call_43d9bb, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43d9bf	 Bytes: 2
  %loadMem_43d9bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d9bf = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d9bf)
  store %struct.Memory* %call_43d9bf, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0xf0(%rbp)	 RIP: 43d9c1	 Bytes: 6
  %loadMem_43d9c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d9c1 = call %struct.Memory* @routine_movl__ecx__MINUS0xf0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d9c1)
  store %struct.Memory* %call_43d9c1, %struct.Memory** %MEMORY

  ; Code: .L_43d9c7:	 RIP: 43d9c7	 Bytes: 0
  br label %block_.L_43d9c7
block_.L_43d9c7:

  ; Code: movl -0xf0(%rbp), %eax	 RIP: 43d9c7	 Bytes: 6
  %loadMem_43d9c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d9c7 = call %struct.Memory* @routine_movl_MINUS0xf0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d9c7)
  store %struct.Memory* %call_43d9c7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xf4(%rbp)	 RIP: 43d9cd	 Bytes: 6
  %loadMem_43d9cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d9cd = call %struct.Memory* @routine_movl__eax__MINUS0xf4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d9cd)
  store %struct.Memory* %call_43d9cd, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43da45	 RIP: 43d9d3	 Bytes: 5
  %loadMem_43d9d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d9d3 = call %struct.Memory* @routine_jmpq_.L_43da45(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d9d3, i64 114, i64 5)
  store %struct.Memory* %call_43d9d3, %struct.Memory** %MEMORY

  br label %block_.L_43da45

  ; Code: .L_43d9d8:	 RIP: 43d9d8	 Bytes: 0
block_.L_43d9d8:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d9d8	 Bytes: 4
  %loadMem_43d9d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d9d8 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d9d8)
  store %struct.Memory* %call_43d9d8, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %ecx	 RIP: 43d9dc	 Bytes: 4
  %loadMem_43d9dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d9dc = call %struct.Memory* @routine_movzbl_0x2__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d9dc)
  store %struct.Memory* %call_43d9dc, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d9e0	 Bytes: 4
  %loadMem_43d9e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d9e0 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d9e0)
  store %struct.Memory* %call_43d9e0, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rax), %edx	 RIP: 43d9e4	 Bytes: 4
  %loadMem_43d9e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d9e4 = call %struct.Memory* @routine_movzbl_0x3__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d9e4)
  store %struct.Memory* %call_43d9e4, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43d9e8	 Bytes: 2
  %loadMem_43d9e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d9e8 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d9e8)
  store %struct.Memory* %call_43d9e8, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43d9ea	 Bytes: 4
  %loadMem_43d9ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d9ea = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d9ea)
  store %struct.Memory* %call_43d9ea, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rax), %edx	 RIP: 43d9ee	 Bytes: 4
  %loadMem_43d9ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d9ee = call %struct.Memory* @routine_movzbl_0x3__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d9ee)
  store %struct.Memory* %call_43d9ee, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43d9f2	 Bytes: 4
  %loadMem_43d9f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d9f2 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d9f2)
  store %struct.Memory* %call_43d9f2, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %esi	 RIP: 43d9f6	 Bytes: 4
  %loadMem_43d9f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d9f6 = call %struct.Memory* @routine_movzbl_0x1__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d9f6)
  store %struct.Memory* %call_43d9f6, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 43d9fa	 Bytes: 2
  %loadMem_43d9fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d9fa = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d9fa)
  store %struct.Memory* %call_43d9fa, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %ecx	 RIP: 43d9fc	 Bytes: 2
  %loadMem_43d9fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d9fc = call %struct.Memory* @routine_cmpl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d9fc)
  store %struct.Memory* %call_43d9fc, %struct.Memory** %MEMORY

  ; Code: jge .L_43da21	 RIP: 43d9fe	 Bytes: 6
  %loadMem_43d9fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43d9fe = call %struct.Memory* @routine_jge_.L_43da21(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43d9fe, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_43d9fe, %struct.Memory** %MEMORY

  %loadBr_43d9fe = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43d9fe = icmp eq i8 %loadBr_43d9fe, 1
  br i1 %cmpBr_43d9fe, label %block_.L_43da21, label %block_43da04

block_43da04:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 43da04	 Bytes: 4
  %loadMem_43da04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43da04 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43da04)
  store %struct.Memory* %call_43da04, %struct.Memory** %MEMORY

  ; Code: movzbl 0x2(%rax), %ecx	 RIP: 43da08	 Bytes: 4
  %loadMem_43da08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43da08 = call %struct.Memory* @routine_movzbl_0x2__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43da08)
  store %struct.Memory* %call_43da08, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43da0c	 Bytes: 4
  %loadMem_43da0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43da0c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43da0c)
  store %struct.Memory* %call_43da0c, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rax), %edx	 RIP: 43da10	 Bytes: 4
  %loadMem_43da10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43da10 = call %struct.Memory* @routine_movzbl_0x3__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43da10)
  store %struct.Memory* %call_43da10, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43da14	 Bytes: 2
  %loadMem_43da14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43da14 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43da14)
  store %struct.Memory* %call_43da14, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0xf8(%rbp)	 RIP: 43da16	 Bytes: 6
  %loadMem_43da16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43da16 = call %struct.Memory* @routine_movl__ecx__MINUS0xf8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43da16)
  store %struct.Memory* %call_43da16, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43da39	 RIP: 43da1c	 Bytes: 5
  %loadMem_43da1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43da1c = call %struct.Memory* @routine_jmpq_.L_43da39(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43da1c, i64 29, i64 5)
  store %struct.Memory* %call_43da1c, %struct.Memory** %MEMORY

  br label %block_.L_43da39

  ; Code: .L_43da21:	 RIP: 43da21	 Bytes: 0
block_.L_43da21:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43da21	 Bytes: 4
  %loadMem_43da21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43da21 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43da21)
  store %struct.Memory* %call_43da21, %struct.Memory** %MEMORY

  ; Code: movzbl 0x3(%rax), %ecx	 RIP: 43da25	 Bytes: 4
  %loadMem_43da25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43da25 = call %struct.Memory* @routine_movzbl_0x3__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43da25)
  store %struct.Memory* %call_43da25, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43da29	 Bytes: 4
  %loadMem_43da29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43da29 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43da29)
  store %struct.Memory* %call_43da29, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rax), %edx	 RIP: 43da2d	 Bytes: 4
  %loadMem_43da2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43da2d = call %struct.Memory* @routine_movzbl_0x1__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43da2d)
  store %struct.Memory* %call_43da2d, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43da31	 Bytes: 2
  %loadMem_43da31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43da31 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43da31)
  store %struct.Memory* %call_43da31, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0xf8(%rbp)	 RIP: 43da33	 Bytes: 6
  %loadMem_43da33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43da33 = call %struct.Memory* @routine_movl__ecx__MINUS0xf8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43da33)
  store %struct.Memory* %call_43da33, %struct.Memory** %MEMORY

  ; Code: .L_43da39:	 RIP: 43da39	 Bytes: 0
  br label %block_.L_43da39
block_.L_43da39:

  ; Code: movl -0xf8(%rbp), %eax	 RIP: 43da39	 Bytes: 6
  %loadMem_43da39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43da39 = call %struct.Memory* @routine_movl_MINUS0xf8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43da39)
  store %struct.Memory* %call_43da39, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xf4(%rbp)	 RIP: 43da3f	 Bytes: 6
  %loadMem_43da3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43da3f = call %struct.Memory* @routine_movl__eax__MINUS0xf4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43da3f)
  store %struct.Memory* %call_43da3f, %struct.Memory** %MEMORY

  ; Code: .L_43da45:	 RIP: 43da45	 Bytes: 0
  br label %block_.L_43da45
block_.L_43da45:

  ; Code: movl -0xf4(%rbp), %eax	 RIP: 43da45	 Bytes: 6
  %loadMem_43da45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43da45 = call %struct.Memory* @routine_movl_MINUS0xf4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43da45)
  store %struct.Memory* %call_43da45, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 43da4b	 Bytes: 2
  %loadMem_43da4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43da4b = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43da4b)
  store %struct.Memory* %call_43da4b, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x1d(%rbp)	 RIP: 43da4d	 Bytes: 3
  %loadMem_43da4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43da4d = call %struct.Memory* @routine_movb__cl__MINUS0x1d__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43da4d)
  store %struct.Memory* %call_43da4d, %struct.Memory** %MEMORY

  ; Code: .L_43da50:	 RIP: 43da50	 Bytes: 0
  br label %block_.L_43da50
block_.L_43da50:

  ; Code: movb -0x20(%rbp), %al	 RIP: 43da50	 Bytes: 3
  %loadMem_43da50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43da50 = call %struct.Memory* @routine_movb_MINUS0x20__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43da50)
  store %struct.Memory* %call_43da50, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 43da53	 Bytes: 4
  %loadMem_43da53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43da53 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43da53)
  store %struct.Memory* %call_43da53, %struct.Memory** %MEMORY

  ; Code: movb %al, (%rcx)	 RIP: 43da57	 Bytes: 2
  %loadMem_43da57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43da57 = call %struct.Memory* @routine_movb__al____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43da57)
  store %struct.Memory* %call_43da57, %struct.Memory** %MEMORY

  ; Code: movb -0x1f(%rbp), %al	 RIP: 43da59	 Bytes: 3
  %loadMem_43da59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43da59 = call %struct.Memory* @routine_movb_MINUS0x1f__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43da59)
  store %struct.Memory* %call_43da59, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 43da5c	 Bytes: 4
  %loadMem_43da5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43da5c = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43da5c)
  store %struct.Memory* %call_43da5c, %struct.Memory** %MEMORY

  ; Code: movb %al, 0x1(%rcx)	 RIP: 43da60	 Bytes: 3
  %loadMem_43da60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43da60 = call %struct.Memory* @routine_movb__al__0x1__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43da60)
  store %struct.Memory* %call_43da60, %struct.Memory** %MEMORY

  ; Code: movb -0x1e(%rbp), %al	 RIP: 43da63	 Bytes: 3
  %loadMem_43da63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43da63 = call %struct.Memory* @routine_movb_MINUS0x1e__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43da63)
  store %struct.Memory* %call_43da63, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 43da66	 Bytes: 4
  %loadMem_43da66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43da66 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43da66)
  store %struct.Memory* %call_43da66, %struct.Memory** %MEMORY

  ; Code: movb %al, 0x2(%rcx)	 RIP: 43da6a	 Bytes: 3
  %loadMem_43da6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43da6a = call %struct.Memory* @routine_movb__al__0x2__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43da6a)
  store %struct.Memory* %call_43da6a, %struct.Memory** %MEMORY

  ; Code: movb -0x1d(%rbp), %al	 RIP: 43da6d	 Bytes: 3
  %loadMem_43da6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43da6d = call %struct.Memory* @routine_movb_MINUS0x1d__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43da6d)
  store %struct.Memory* %call_43da6d, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 43da70	 Bytes: 4
  %loadMem_43da70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43da70 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43da70)
  store %struct.Memory* %call_43da70, %struct.Memory** %MEMORY

  ; Code: movb %al, 0x3(%rcx)	 RIP: 43da74	 Bytes: 3
  %loadMem_43da74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43da74 = call %struct.Memory* @routine_movb__al__0x3__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43da74)
  store %struct.Memory* %call_43da74, %struct.Memory** %MEMORY

  ; Code: addq $0x78, %rsp	 RIP: 43da77	 Bytes: 4
  %loadMem_43da77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43da77 = call %struct.Memory* @routine_addq__0x78___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43da77)
  store %struct.Memory* %call_43da77, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 43da7b	 Bytes: 1
  %loadMem_43da7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43da7b = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43da7b)
  store %struct.Memory* %call_43da7b, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 43da7c	 Bytes: 1
  %loadMem_43da7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43da7c = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43da7c)
  store %struct.Memory* %call_43da7c, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_43da7c
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

define %struct.Memory* @routine_subq__0x78___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 120)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  %7 = zext i8 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movzbl___rdx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12)
  ret %struct.Memory* %15
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


define %struct.Memory* @routine_movzbl_0x2__rdx____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 2
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
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

define %struct.Memory* @routine_addl__ecx___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i32, i32* %ECX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_movzbl___rdx____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl__r8d___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RCX
  %13 = load i32, i32* %R8D
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JNLEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 {
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

define %struct.Memory* @routine_jge_.L_43cc69(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movzbl___rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12)
  ret %struct.Memory* %15
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


define %struct.Memory* @routine_movzbl_0x2__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 2
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl__edx___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RCX
  %13 = load i32, i32* %EDX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_43cc7d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movzbl_0x2__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 2
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movzbl___rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12)
  ret %struct.Memory* %15
}





define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movzbl___rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12)
  ret %struct.Memory* %15
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


define %struct.Memory* @routine_movzbl_0x1__rcx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RCX
  %13 = add i64 %12, 1
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl__esi___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i32, i32* %ESI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_movzbl___rcx____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_addl__edi___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_cmpl__esi___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %ESI = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_jge_.L_43ccc6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_movzbl_0x1__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 1
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movl__ecx__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43ccda(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_movzbl_0x1__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 1
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl__eax___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_43cd4a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


















define %struct.Memory* @routine_movzbl___rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12)
  ret %struct.Memory* %15
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


define %struct.Memory* @routine_jge_.L_43cd2b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












define %struct.Memory* @routine_movl__ecx__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43cd3f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_jmpq_.L_43cda7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
























define %struct.Memory* @routine_jge_.L_43cd8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












define %struct.Memory* @routine_movl__ecx__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 56
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43cda1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #2 {
  %5 = trunc i64 %3 to i8
  store i8 %5, i8* %2, align 1
  ret %struct.Memory* %0
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__cl__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 32
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}




define %struct.Memory* @routine_movzbl_0x1__rdx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 1
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movzbl_0x1__rdx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 1
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl__esi___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RAX
  %13 = load i32, i32* %ESI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movzbl___rdx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12)
  ret %struct.Memory* %15
}




define %struct.Memory* @routine_movzbl_0x3__rdx____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 3
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movzbl_0x1__rdx____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 1
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movzbl_0x2__rdx____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 2
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_addl__r8d___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = load i32, i32* %R8D
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_cmpl__edi___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %EDI = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 60
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_43ce0a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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








define %struct.Memory* @routine_movzbl_0x3__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 3
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__ecx__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 64
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43ce1f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x3c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jge_.L_43ce91(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


















define %struct.Memory* @routine_movzbl_0x2__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 2
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jge_.L_43ce71(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jmpq_.L_43ce86(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 72
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43cea6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movzbl_0x1__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 1
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movzbl_0x3__rcx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RCX
  %13 = add i64 %12, 3
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movzbl_0x2__rcx____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = add i64 %12, 2
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movzbl_0x1__rcx____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast i32* %R8D to i64*
  %13 = load i64, i64* %RCX
  %14 = add i64 %13, 1
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 76
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__edx__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 80
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_43cf07(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_movzbl_0x3__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 3
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movl__ecx__MINUS0x54__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 84
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43cf1c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x50__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jge_.L_43cf8e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


















define %struct.Memory* @routine_movzbl_0x1__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 1
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jge_.L_43cf6e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












define %struct.Memory* @routine_movl__ecx__MINUS0x58__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 88
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43cf83(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_movl_MINUS0x58__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 92
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43cfa3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_movl__ecx__MINUS0x5c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 92
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x5c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 92
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jge_.L_43d0b1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


















define %struct.Memory* @routine_movzbl_0x3__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 3
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movzbl_0x2__rax____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 2
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl__ecx__MINUS0x60__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 96
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_43d00a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












define %struct.Memory* @routine_movl__ecx__MINUS0x64__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 100
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43d01f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_movl_MINUS0x64__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 100
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x60__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jge_.L_43d091(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
























define %struct.Memory* @routine_jge_.L_43d071(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












define %struct.Memory* @routine_movl__ecx__MINUS0x68__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 104
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43d086(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_movl_MINUS0x68__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x6c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 108
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43d0a6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_movl__ecx__MINUS0x6c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 108
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x6c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 108
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x70__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 112
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43d1ac(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




























define %struct.Memory* @routine_movzbl_0x1__rax____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 1
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl__ecx__MINUS0x74__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 116
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_43d10a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












define %struct.Memory* @routine_movl__ecx__MINUS0x78__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 120
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43d11f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_movl_MINUS0x78__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x74__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 116
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jge_.L_43d191(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
























define %struct.Memory* @routine_jge_.L_43d171(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












define %struct.Memory* @routine_movl__ecx__MINUS0x7c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 124
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43d186(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_movl_MINUS0x7c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 124
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x80__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 128
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43d1a6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_movl__ecx__MINUS0x80__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 128
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x80__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x70__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movb__cl__MINUS0x1f__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 31
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}




define %struct.Memory* @routine_movzbl_0x2__rdx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 2
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movzbl_0x2__rdx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 2
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movzbl_0x3__rdx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 3
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movzbl___rdx____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12)
  ret %struct.Memory* %15
}






define %struct.Memory* @routine_movzbl_0x2__rdx____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 2
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movzbl_0x1__rdx____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 1
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movl__eax__MINUS0x84__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 132
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_43d216(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












define %struct.Memory* @routine_movl__ecx__MINUS0x88__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 136
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43d22d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_movl_MINUS0x88__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x84__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 132
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jge_.L_43d25e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












define %struct.Memory* @routine_movl__ecx__MINUS0x8c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 140
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43d2c9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
























define %struct.Memory* @routine_jge_.L_43d2a6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












define %struct.Memory* @routine_movl__ecx__MINUS0x90__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 144
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43d2bd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_movl_MINUS0x90__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x8c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 140
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x8c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 140
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movzbl_0x2__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 2
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movzbl_0x2__rcx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RCX
  %13 = add i64 %12, 2
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movzbl___rcx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12)
  ret %struct.Memory* %15
}




define %struct.Memory* @routine_movzbl_0x3__rcx____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = add i64 %12, 3
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movzbl_0x1__rcx____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = add i64 %12, 1
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movzbl_0x2__rcx____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast i32* %R8D to i64*
  %13 = load i64, i64* %RCX
  %14 = add i64 %13, 2
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movl__eax__MINUS0x94__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 148
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__edx__MINUS0x98__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 152
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_43d337(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












define %struct.Memory* @routine_movl__ecx__MINUS0x9c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 156
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43d34e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_movl_MINUS0x9c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 156
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x98__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jge_.L_43d37f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












define %struct.Memory* @routine_movl__ecx__MINUS0xa0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 160
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43d3ea(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
























define %struct.Memory* @routine_jge_.L_43d3c7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












define %struct.Memory* @routine_movl__ecx__MINUS0xa4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 164
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43d3de(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_movl_MINUS0xa4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 164
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0xa0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 160
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0xa0__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 160
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x94__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 148
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jge_.L_43d522(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


































define %struct.Memory* @routine_movl__ecx__MINUS0xa8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 168
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_43d45e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












define %struct.Memory* @routine_movl__ecx__MINUS0xac__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 172
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43d475(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_movl_MINUS0xac__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 172
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0xa8__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jge_.L_43d4a6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












define %struct.Memory* @routine_movl__ecx__MINUS0xb0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 176
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43d511(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
























define %struct.Memory* @routine_jge_.L_43d4ee(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












define %struct.Memory* @routine_movl__ecx__MINUS0xb4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 180
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43d505(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_movl_MINUS0xb4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 180
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0xb0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 176
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0xb0__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 176
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0xb8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 184
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43d641(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


































define %struct.Memory* @routine_movl__ecx__MINUS0xbc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 188
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_43d582(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












define %struct.Memory* @routine_movl__ecx__MINUS0xc0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 192
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43d599(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_movl_MINUS0xc0__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 192
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0xbc__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 188
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jge_.L_43d5ca(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












define %struct.Memory* @routine_movl__ecx__MINUS0xc4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 196
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43d635(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
























define %struct.Memory* @routine_jge_.L_43d612(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












define %struct.Memory* @routine_movl__ecx__MINUS0xc8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 200
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43d629(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_movl_MINUS0xc8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 200
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0xc4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 196
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0xc4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 196
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0xb8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 184
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movb__cl__MINUS0x1e__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 30
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}




define %struct.Memory* @routine_movzbl_0x3__rdx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 3
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


















define %struct.Memory* @routine_cmpl__esi___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %ESI = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_43d695(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












define %struct.Memory* @routine_movl__ecx__MINUS0xcc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 204
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43d6ad(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_movl_MINUS0xcc__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 204
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movzbl_0x3__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 3
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




















define %struct.Memory* @routine_movl__eax__MINUS0xd0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 208
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_43d702(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












define %struct.Memory* @routine_movl__ecx__MINUS0xd4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 212
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43d71a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_movl_MINUS0xd4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 212
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0xd0__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 208
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jge_.L_43d7a0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
























define %struct.Memory* @routine_jge_.L_43d777(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












define %struct.Memory* @routine_movl__ecx__MINUS0xd8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 216
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43d78f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_movl_MINUS0xd8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 216
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0xdc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 220
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43d80d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
























define %struct.Memory* @routine_jge_.L_43d7e9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












define %struct.Memory* @routine_movl__ecx__MINUS0xe0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 224
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43d801(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_movl_MINUS0xe0__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 224
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0xdc__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 220
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movb__cl__MINUS0x1d__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 29
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}









define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
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

define %struct.Memory* @routine_subl__esi___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RAX
  %13 = load i32, i32* %ESI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 {
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

define %struct.Memory* @routine_cmpl__0x2___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %EAX
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
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

define %struct.Memory* @routine_jne_.L_43d84e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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










define %struct.Memory* @routine_subl__edx___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RCX
  %13 = load i32, i32* %EDX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_cmpl__0x1___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %ECX
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
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

define %struct.Memory* @routine_je_.L_43d884(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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














define %struct.Memory* @routine_jne_.L_43da50(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












define %struct.Memory* @routine_cmpl__0x2___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %ECX
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


























define %struct.Memory* @routine_jge_.L_43d8cd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












define %struct.Memory* @routine_movl__ecx__MINUS0xe4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 228
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43d8e5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_movl_MINUS0xe4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 228
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}
























define %struct.Memory* @routine_movl__eax__MINUS0xe8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 232
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_43d93a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












define %struct.Memory* @routine_movl__ecx__MINUS0xec__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 236
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43d952(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_movl_MINUS0xec__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 236
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0xe8__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 232
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jge_.L_43d9d8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
























define %struct.Memory* @routine_jge_.L_43d9af(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












define %struct.Memory* @routine_movl__ecx__MINUS0xf0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 240
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43d9c7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_movl_MINUS0xf0__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 240
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0xf4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 244
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43da45(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
























define %struct.Memory* @routine_jge_.L_43da21(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












define %struct.Memory* @routine_movl__ecx__MINUS0xf8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 248
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43da39(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_movl_MINUS0xf8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 248
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0xf4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 244
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}





define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  store i8 %6, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb_MINUS0x20__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 32
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_movb_MINUS0x1f__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 31
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movb__al__0x1__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 1
  %15 = load i8, i8* %AL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movb_MINUS0x1e__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 30
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movb__al__0x2__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 2
  %15 = load i8, i8* %AL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movb_MINUS0x1d__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 29
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movb__al__0x3__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 3
  %15 = load i8, i8* %AL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
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

define %struct.Memory* @routine_addq__0x78___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 120)
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

