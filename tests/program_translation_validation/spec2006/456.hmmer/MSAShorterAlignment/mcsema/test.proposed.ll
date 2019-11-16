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


define %struct.Memory* @MSAShorterAlignment(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .MSAShorterAlignment:	 RIP: 42fa00	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 42fa00	 Bytes: 1
  %loadMem_42fa00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fa00 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fa00)
  store %struct.Memory* %call_42fa00, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 42fa01	 Bytes: 3
  %loadMem_42fa01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fa01 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fa01)
  store %struct.Memory* %call_42fa01, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x8(%rbp)	 RIP: 42fa04	 Bytes: 4
  %loadMem_42fa04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fa04 = call %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fa04)
  store %struct.Memory* %call_42fa04, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x10(%rbp)	 RIP: 42fa08	 Bytes: 4
  %loadMem_42fa08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fa08 = call %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fa08)
  store %struct.Memory* %call_42fa08, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 42fa0c	 Bytes: 7
  %loadMem_42fa0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fa0c = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fa0c)
  store %struct.Memory* %call_42fa0c, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 42fa13	 Bytes: 7
  %loadMem_42fa13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fa13 = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fa13)
  store %struct.Memory* %call_42fa13, %struct.Memory** %MEMORY

  ; Code: .L_42fa1a:	 RIP: 42fa1a	 Bytes: 0
  br label %block_.L_42fa1a
block_.L_42fa1a:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 42fa1a	 Bytes: 3
  %loadMem_42fa1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fa1a = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fa1a)
  store %struct.Memory* %call_42fa1a, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42fa1d	 Bytes: 4
  %loadMem_42fa1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fa1d = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fa1d)
  store %struct.Memory* %call_42fa1d, %struct.Memory** %MEMORY

  ; Code: cmpl 0x18(%rcx), %eax	 RIP: 42fa21	 Bytes: 3
  %loadMem_42fa21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fa21 = call %struct.Memory* @routine_cmpl_0x18__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fa21)
  store %struct.Memory* %call_42fa21, %struct.Memory** %MEMORY

  ; Code: jge .L_42fcdd	 RIP: 42fa24	 Bytes: 6
  %loadMem_42fa24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fa24 = call %struct.Memory* @routine_jge_.L_42fcdd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fa24, i8* %BRANCH_TAKEN, i64 697, i64 6, i64 6)
  store %struct.Memory* %call_42fa24, %struct.Memory** %MEMORY

  %loadBr_42fa24 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42fa24 = icmp eq i8 %loadBr_42fa24, 1
  br i1 %cmpBr_42fa24, label %block_.L_42fcdd, label %block_42fa2a

block_42fa2a:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 42fa2a	 Bytes: 4
  %loadMem_42fa2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fa2a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fa2a)
  store %struct.Memory* %call_42fa2a, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 42fa2e	 Bytes: 4
  %loadMem_42fa2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fa2e = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fa2e)
  store %struct.Memory* %call_42fa2e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax,%rcx,4)	 RIP: 42fa32	 Bytes: 4
  %loadMem_42fa32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fa32 = call %struct.Memory* @routine_cmpl__0x0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fa32)
  store %struct.Memory* %call_42fa32, %struct.Memory** %MEMORY

  ; Code: jne .L_42fa41	 RIP: 42fa36	 Bytes: 6
  %loadMem_42fa36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fa36 = call %struct.Memory* @routine_jne_.L_42fa41(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fa36, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_42fa36, %struct.Memory** %MEMORY

  %loadBr_42fa36 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42fa36 = icmp eq i8 %loadBr_42fa36, 1
  br i1 %cmpBr_42fa36, label %block_.L_42fa41, label %block_42fa3c

block_42fa3c:
  ; Code: jmpq .L_42fccf	 RIP: 42fa3c	 Bytes: 5
  %loadMem_42fa3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fa3c = call %struct.Memory* @routine_jmpq_.L_42fccf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fa3c, i64 659, i64 5)
  store %struct.Memory* %call_42fa3c, %struct.Memory** %MEMORY

  br label %block_.L_42fccf

  ; Code: .L_42fa41:	 RIP: 42fa41	 Bytes: 0
block_.L_42fa41:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 42fa41	 Bytes: 3
  %loadMem_42fa41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fa41 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fa41)
  store %struct.Memory* %call_42fa41, %struct.Memory** %MEMORY

  ; Code: cmpl -0x14(%rbp), %eax	 RIP: 42fa44	 Bytes: 3
  %loadMem_42fa44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fa44 = call %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fa44)
  store %struct.Memory* %call_42fa44, %struct.Memory** %MEMORY

  ; Code: je .L_42fcc6	 RIP: 42fa47	 Bytes: 6
  %loadMem_42fa47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fa47 = call %struct.Memory* @routine_je_.L_42fcc6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fa47, i8* %BRANCH_TAKEN, i64 639, i64 6, i64 6)
  store %struct.Memory* %call_42fa47, %struct.Memory** %MEMORY

  %loadBr_42fa47 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42fa47 = icmp eq i8 %loadBr_42fa47, 1
  br i1 %cmpBr_42fa47, label %block_.L_42fcc6, label %block_42fa4d

block_42fa4d:
  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 42fa4d	 Bytes: 7
  %loadMem_42fa4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fa4d = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fa4d)
  store %struct.Memory* %call_42fa4d, %struct.Memory** %MEMORY

  ; Code: .L_42fa54:	 RIP: 42fa54	 Bytes: 0
  br label %block_.L_42fa54
block_.L_42fa54:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 42fa54	 Bytes: 3
  %loadMem_42fa54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fa54 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fa54)
  store %struct.Memory* %call_42fa54, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42fa57	 Bytes: 4
  %loadMem_42fa57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fa57 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fa57)
  store %struct.Memory* %call_42fa57, %struct.Memory** %MEMORY

  ; Code: cmpl 0x1c(%rcx), %eax	 RIP: 42fa5b	 Bytes: 3
  %loadMem_42fa5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fa5b = call %struct.Memory* @routine_cmpl_0x1c__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fa5b)
  store %struct.Memory* %call_42fa5b, %struct.Memory** %MEMORY

  ; Code: jge .L_42fbde	 RIP: 42fa5e	 Bytes: 6
  %loadMem_42fa5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fa5e = call %struct.Memory* @routine_jge_.L_42fbde(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fa5e, i8* %BRANCH_TAKEN, i64 384, i64 6, i64 6)
  store %struct.Memory* %call_42fa5e, %struct.Memory** %MEMORY

  %loadBr_42fa5e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42fa5e = icmp eq i8 %loadBr_42fa5e, 1
  br i1 %cmpBr_42fa5e, label %block_.L_42fbde, label %block_42fa64

block_42fa64:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42fa64	 Bytes: 4
  %loadMem_42fa64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fa64 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fa64)
  store %struct.Memory* %call_42fa64, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 42fa68	 Bytes: 3
  %loadMem_42fa68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fa68 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fa68)
  store %struct.Memory* %call_42fa68, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 42fa6b	 Bytes: 4
  %loadMem_42fa6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fa6b = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fa6b)
  store %struct.Memory* %call_42fa6b, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42fa6f	 Bytes: 4
  %loadMem_42fa6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fa6f = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fa6f)
  store %struct.Memory* %call_42fa6f, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 42fa73	 Bytes: 4
  %loadMem_42fa73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fa73 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fa73)
  store %struct.Memory* %call_42fa73, %struct.Memory** %MEMORY

  ; Code: movb (%rax,%rcx,1), %dl	 RIP: 42fa77	 Bytes: 3
  %loadMem_42fa77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fa77 = call %struct.Memory* @routine_movb___rax__rcx_1____dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fa77)
  store %struct.Memory* %call_42fa77, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42fa7a	 Bytes: 4
  %loadMem_42fa7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fa7a = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fa7a)
  store %struct.Memory* %call_42fa7a, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 42fa7e	 Bytes: 3
  %loadMem_42fa7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fa7e = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fa7e)
  store %struct.Memory* %call_42fa7e, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 42fa81	 Bytes: 4
  %loadMem_42fa81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fa81 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fa81)
  store %struct.Memory* %call_42fa81, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42fa85	 Bytes: 4
  %loadMem_42fa85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fa85 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fa85)
  store %struct.Memory* %call_42fa85, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 42fa89	 Bytes: 4
  %loadMem_42fa89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fa89 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fa89)
  store %struct.Memory* %call_42fa89, %struct.Memory** %MEMORY

  ; Code: movb %dl, (%rax,%rcx,1)	 RIP: 42fa8d	 Bytes: 3
  %loadMem_42fa8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fa8d = call %struct.Memory* @routine_movb__dl____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fa8d)
  store %struct.Memory* %call_42fa8d, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42fa90	 Bytes: 4
  %loadMem_42fa90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fa90 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fa90)
  store %struct.Memory* %call_42fa90, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x70(%rax)	 RIP: 42fa94	 Bytes: 5
  %loadMem_42fa94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fa94 = call %struct.Memory* @routine_cmpq__0x0__0x70__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fa94)
  store %struct.Memory* %call_42fa94, %struct.Memory** %MEMORY

  ; Code: je .L_42fae4	 RIP: 42fa99	 Bytes: 6
  %loadMem_42fa99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fa99 = call %struct.Memory* @routine_je_.L_42fae4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fa99, i8* %BRANCH_TAKEN, i64 75, i64 6, i64 6)
  store %struct.Memory* %call_42fa99, %struct.Memory** %MEMORY

  %loadBr_42fa99 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42fa99 = icmp eq i8 %loadBr_42fa99, 1
  br i1 %cmpBr_42fa99, label %block_.L_42fae4, label %block_42fa9f

block_42fa9f:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42fa9f	 Bytes: 4
  %loadMem_42fa9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fa9f = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fa9f)
  store %struct.Memory* %call_42fa9f, %struct.Memory** %MEMORY

  ; Code: movq 0x70(%rax), %rax	 RIP: 42faa3	 Bytes: 4
  %loadMem_42faa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42faa3 = call %struct.Memory* @routine_movq_0x70__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42faa3)
  store %struct.Memory* %call_42faa3, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 42faa7	 Bytes: 4
  %loadMem_42faa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42faa7 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42faa7)
  store %struct.Memory* %call_42faa7, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, (%rax,%rcx,8)	 RIP: 42faab	 Bytes: 5
  %loadMem_42faab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42faab = call %struct.Memory* @routine_cmpq__0x0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42faab)
  store %struct.Memory* %call_42faab, %struct.Memory** %MEMORY

  ; Code: je .L_42fae4	 RIP: 42fab0	 Bytes: 6
  %loadMem_42fab0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fab0 = call %struct.Memory* @routine_je_.L_42fae4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fab0, i8* %BRANCH_TAKEN, i64 52, i64 6, i64 6)
  store %struct.Memory* %call_42fab0, %struct.Memory** %MEMORY

  %loadBr_42fab0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42fab0 = icmp eq i8 %loadBr_42fab0, 1
  br i1 %cmpBr_42fab0, label %block_.L_42fae4, label %block_42fab6

block_42fab6:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42fab6	 Bytes: 4
  %loadMem_42fab6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fab6 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fab6)
  store %struct.Memory* %call_42fab6, %struct.Memory** %MEMORY

  ; Code: movq 0x70(%rax), %rax	 RIP: 42faba	 Bytes: 4
  %loadMem_42faba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42faba = call %struct.Memory* @routine_movq_0x70__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42faba)
  store %struct.Memory* %call_42faba, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 42fabe	 Bytes: 4
  %loadMem_42fabe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fabe = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fabe)
  store %struct.Memory* %call_42fabe, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42fac2	 Bytes: 4
  %loadMem_42fac2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fac2 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fac2)
  store %struct.Memory* %call_42fac2, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 42fac6	 Bytes: 4
  %loadMem_42fac6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fac6 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fac6)
  store %struct.Memory* %call_42fac6, %struct.Memory** %MEMORY

  ; Code: movb (%rax,%rcx,1), %dl	 RIP: 42faca	 Bytes: 3
  %loadMem_42faca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42faca = call %struct.Memory* @routine_movb___rax__rcx_1____dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42faca)
  store %struct.Memory* %call_42faca, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42facd	 Bytes: 4
  %loadMem_42facd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42facd = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42facd)
  store %struct.Memory* %call_42facd, %struct.Memory** %MEMORY

  ; Code: movq 0x70(%rax), %rax	 RIP: 42fad1	 Bytes: 4
  %loadMem_42fad1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fad1 = call %struct.Memory* @routine_movq_0x70__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fad1)
  store %struct.Memory* %call_42fad1, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 42fad5	 Bytes: 4
  %loadMem_42fad5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fad5 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fad5)
  store %struct.Memory* %call_42fad5, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42fad9	 Bytes: 4
  %loadMem_42fad9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fad9 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fad9)
  store %struct.Memory* %call_42fad9, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 42fadd	 Bytes: 4
  %loadMem_42fadd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fadd = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fadd)
  store %struct.Memory* %call_42fadd, %struct.Memory** %MEMORY

  ; Code: movb %dl, (%rax,%rcx,1)	 RIP: 42fae1	 Bytes: 3
  %loadMem_42fae1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fae1 = call %struct.Memory* @routine_movb__dl____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fae1)
  store %struct.Memory* %call_42fae1, %struct.Memory** %MEMORY

  ; Code: .L_42fae4:	 RIP: 42fae4	 Bytes: 0
  br label %block_.L_42fae4
block_.L_42fae4:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42fae4	 Bytes: 4
  %loadMem_42fae4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fae4 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fae4)
  store %struct.Memory* %call_42fae4, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x78(%rax)	 RIP: 42fae8	 Bytes: 5
  %loadMem_42fae8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fae8 = call %struct.Memory* @routine_cmpq__0x0__0x78__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fae8)
  store %struct.Memory* %call_42fae8, %struct.Memory** %MEMORY

  ; Code: je .L_42fb38	 RIP: 42faed	 Bytes: 6
  %loadMem_42faed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42faed = call %struct.Memory* @routine_je_.L_42fb38(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42faed, i8* %BRANCH_TAKEN, i64 75, i64 6, i64 6)
  store %struct.Memory* %call_42faed, %struct.Memory** %MEMORY

  %loadBr_42faed = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42faed = icmp eq i8 %loadBr_42faed, 1
  br i1 %cmpBr_42faed, label %block_.L_42fb38, label %block_42faf3

block_42faf3:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42faf3	 Bytes: 4
  %loadMem_42faf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42faf3 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42faf3)
  store %struct.Memory* %call_42faf3, %struct.Memory** %MEMORY

  ; Code: movq 0x78(%rax), %rax	 RIP: 42faf7	 Bytes: 4
  %loadMem_42faf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42faf7 = call %struct.Memory* @routine_movq_0x78__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42faf7)
  store %struct.Memory* %call_42faf7, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 42fafb	 Bytes: 4
  %loadMem_42fafb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fafb = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fafb)
  store %struct.Memory* %call_42fafb, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, (%rax,%rcx,8)	 RIP: 42faff	 Bytes: 5
  %loadMem_42faff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42faff = call %struct.Memory* @routine_cmpq__0x0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42faff)
  store %struct.Memory* %call_42faff, %struct.Memory** %MEMORY

  ; Code: je .L_42fb38	 RIP: 42fb04	 Bytes: 6
  %loadMem_42fb04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fb04 = call %struct.Memory* @routine_je_.L_42fb38(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fb04, i8* %BRANCH_TAKEN, i64 52, i64 6, i64 6)
  store %struct.Memory* %call_42fb04, %struct.Memory** %MEMORY

  %loadBr_42fb04 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42fb04 = icmp eq i8 %loadBr_42fb04, 1
  br i1 %cmpBr_42fb04, label %block_.L_42fb38, label %block_42fb0a

block_42fb0a:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42fb0a	 Bytes: 4
  %loadMem_42fb0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fb0a = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fb0a)
  store %struct.Memory* %call_42fb0a, %struct.Memory** %MEMORY

  ; Code: movq 0x78(%rax), %rax	 RIP: 42fb0e	 Bytes: 4
  %loadMem_42fb0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fb0e = call %struct.Memory* @routine_movq_0x78__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fb0e)
  store %struct.Memory* %call_42fb0e, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 42fb12	 Bytes: 4
  %loadMem_42fb12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fb12 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fb12)
  store %struct.Memory* %call_42fb12, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42fb16	 Bytes: 4
  %loadMem_42fb16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fb16 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fb16)
  store %struct.Memory* %call_42fb16, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 42fb1a	 Bytes: 4
  %loadMem_42fb1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fb1a = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fb1a)
  store %struct.Memory* %call_42fb1a, %struct.Memory** %MEMORY

  ; Code: movb (%rax,%rcx,1), %dl	 RIP: 42fb1e	 Bytes: 3
  %loadMem_42fb1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fb1e = call %struct.Memory* @routine_movb___rax__rcx_1____dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fb1e)
  store %struct.Memory* %call_42fb1e, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42fb21	 Bytes: 4
  %loadMem_42fb21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fb21 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fb21)
  store %struct.Memory* %call_42fb21, %struct.Memory** %MEMORY

  ; Code: movq 0x78(%rax), %rax	 RIP: 42fb25	 Bytes: 4
  %loadMem_42fb25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fb25 = call %struct.Memory* @routine_movq_0x78__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fb25)
  store %struct.Memory* %call_42fb25, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 42fb29	 Bytes: 4
  %loadMem_42fb29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fb29 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fb29)
  store %struct.Memory* %call_42fb29, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42fb2d	 Bytes: 4
  %loadMem_42fb2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fb2d = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fb2d)
  store %struct.Memory* %call_42fb2d, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 42fb31	 Bytes: 4
  %loadMem_42fb31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fb31 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fb31)
  store %struct.Memory* %call_42fb31, %struct.Memory** %MEMORY

  ; Code: movb %dl, (%rax,%rcx,1)	 RIP: 42fb35	 Bytes: 3
  %loadMem_42fb35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fb35 = call %struct.Memory* @routine_movb__dl____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fb35)
  store %struct.Memory* %call_42fb35, %struct.Memory** %MEMORY

  ; Code: .L_42fb38:	 RIP: 42fb38	 Bytes: 0
  br label %block_.L_42fb38
block_.L_42fb38:

  ; Code: movl $0x0, -0x20(%rbp)	 RIP: 42fb38	 Bytes: 7
  %loadMem_42fb38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fb38 = call %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fb38)
  store %struct.Memory* %call_42fb38, %struct.Memory** %MEMORY

  ; Code: .L_42fb3f:	 RIP: 42fb3f	 Bytes: 0
  br label %block_.L_42fb3f
block_.L_42fb3f:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 42fb3f	 Bytes: 3
  %loadMem_42fb3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fb3f = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fb3f)
  store %struct.Memory* %call_42fb3f, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42fb42	 Bytes: 4
  %loadMem_42fb42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fb42 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fb42)
  store %struct.Memory* %call_42fb42, %struct.Memory** %MEMORY

  ; Code: cmpl 0x130(%rcx), %eax	 RIP: 42fb46	 Bytes: 6
  %loadMem_42fb46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fb46 = call %struct.Memory* @routine_cmpl_0x130__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fb46)
  store %struct.Memory* %call_42fb46, %struct.Memory** %MEMORY

  ; Code: jge .L_42fbcb	 RIP: 42fb4c	 Bytes: 6
  %loadMem_42fb4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fb4c = call %struct.Memory* @routine_jge_.L_42fbcb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fb4c, i8* %BRANCH_TAKEN, i64 127, i64 6, i64 6)
  store %struct.Memory* %call_42fb4c, %struct.Memory** %MEMORY

  %loadBr_42fb4c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42fb4c = icmp eq i8 %loadBr_42fb4c, 1
  br i1 %cmpBr_42fb4c, label %block_.L_42fbcb, label %block_42fb52

block_42fb52:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42fb52	 Bytes: 4
  %loadMem_42fb52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fb52 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fb52)
  store %struct.Memory* %call_42fb52, %struct.Memory** %MEMORY

  ; Code: movq 0x120(%rax), %rax	 RIP: 42fb56	 Bytes: 7
  %loadMem_42fb56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fb56 = call %struct.Memory* @routine_movq_0x120__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fb56)
  store %struct.Memory* %call_42fb56, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 42fb5d	 Bytes: 4
  %loadMem_42fb5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fb5d = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fb5d)
  store %struct.Memory* %call_42fb5d, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42fb61	 Bytes: 4
  %loadMem_42fb61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fb61 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fb61)
  store %struct.Memory* %call_42fb61, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 42fb65	 Bytes: 4
  %loadMem_42fb65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fb65 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fb65)
  store %struct.Memory* %call_42fb65, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, (%rax,%rcx,8)	 RIP: 42fb69	 Bytes: 5
  %loadMem_42fb69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fb69 = call %struct.Memory* @routine_cmpq__0x0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fb69)
  store %struct.Memory* %call_42fb69, %struct.Memory** %MEMORY

  ; Code: je .L_42fbb8	 RIP: 42fb6e	 Bytes: 6
  %loadMem_42fb6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fb6e = call %struct.Memory* @routine_je_.L_42fbb8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fb6e, i8* %BRANCH_TAKEN, i64 74, i64 6, i64 6)
  store %struct.Memory* %call_42fb6e, %struct.Memory** %MEMORY

  %loadBr_42fb6e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42fb6e = icmp eq i8 %loadBr_42fb6e, 1
  br i1 %cmpBr_42fb6e, label %block_.L_42fbb8, label %block_42fb74

block_42fb74:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42fb74	 Bytes: 4
  %loadMem_42fb74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fb74 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fb74)
  store %struct.Memory* %call_42fb74, %struct.Memory** %MEMORY

  ; Code: movq 0x120(%rax), %rax	 RIP: 42fb78	 Bytes: 7
  %loadMem_42fb78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fb78 = call %struct.Memory* @routine_movq_0x120__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fb78)
  store %struct.Memory* %call_42fb78, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 42fb7f	 Bytes: 4
  %loadMem_42fb7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fb7f = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fb7f)
  store %struct.Memory* %call_42fb7f, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42fb83	 Bytes: 4
  %loadMem_42fb83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fb83 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fb83)
  store %struct.Memory* %call_42fb83, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 42fb87	 Bytes: 4
  %loadMem_42fb87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fb87 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fb87)
  store %struct.Memory* %call_42fb87, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42fb8b	 Bytes: 4
  %loadMem_42fb8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fb8b = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fb8b)
  store %struct.Memory* %call_42fb8b, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 42fb8f	 Bytes: 4
  %loadMem_42fb8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fb8f = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fb8f)
  store %struct.Memory* %call_42fb8f, %struct.Memory** %MEMORY

  ; Code: movb (%rax,%rcx,1), %dl	 RIP: 42fb93	 Bytes: 3
  %loadMem_42fb93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fb93 = call %struct.Memory* @routine_movb___rax__rcx_1____dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fb93)
  store %struct.Memory* %call_42fb93, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42fb96	 Bytes: 4
  %loadMem_42fb96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fb96 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fb96)
  store %struct.Memory* %call_42fb96, %struct.Memory** %MEMORY

  ; Code: movq 0x120(%rax), %rax	 RIP: 42fb9a	 Bytes: 7
  %loadMem_42fb9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fb9a = call %struct.Memory* @routine_movq_0x120__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fb9a)
  store %struct.Memory* %call_42fb9a, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 42fba1	 Bytes: 4
  %loadMem_42fba1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fba1 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fba1)
  store %struct.Memory* %call_42fba1, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42fba5	 Bytes: 4
  %loadMem_42fba5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fba5 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fba5)
  store %struct.Memory* %call_42fba5, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 42fba9	 Bytes: 4
  %loadMem_42fba9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fba9 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fba9)
  store %struct.Memory* %call_42fba9, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42fbad	 Bytes: 4
  %loadMem_42fbad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fbad = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fbad)
  store %struct.Memory* %call_42fbad, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 42fbb1	 Bytes: 4
  %loadMem_42fbb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fbb1 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fbb1)
  store %struct.Memory* %call_42fbb1, %struct.Memory** %MEMORY

  ; Code: movb %dl, (%rax,%rcx,1)	 RIP: 42fbb5	 Bytes: 3
  %loadMem_42fbb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fbb5 = call %struct.Memory* @routine_movb__dl____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fbb5)
  store %struct.Memory* %call_42fbb5, %struct.Memory** %MEMORY

  ; Code: .L_42fbb8:	 RIP: 42fbb8	 Bytes: 0
  br label %block_.L_42fbb8
block_.L_42fbb8:

  ; Code: jmpq .L_42fbbd	 RIP: 42fbb8	 Bytes: 5
  %loadMem_42fbb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fbb8 = call %struct.Memory* @routine_jmpq_.L_42fbbd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fbb8, i64 5, i64 5)
  store %struct.Memory* %call_42fbb8, %struct.Memory** %MEMORY

  br label %block_.L_42fbbd

  ; Code: .L_42fbbd:	 RIP: 42fbbd	 Bytes: 0
block_.L_42fbbd:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 42fbbd	 Bytes: 3
  %loadMem_42fbbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fbbd = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fbbd)
  store %struct.Memory* %call_42fbbd, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42fbc0	 Bytes: 3
  %loadMem_42fbc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fbc0 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fbc0)
  store %struct.Memory* %call_42fbc0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 42fbc3	 Bytes: 3
  %loadMem_42fbc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fbc3 = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fbc3)
  store %struct.Memory* %call_42fbc3, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42fb3f	 RIP: 42fbc6	 Bytes: 5
  %loadMem_42fbc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fbc6 = call %struct.Memory* @routine_jmpq_.L_42fb3f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fbc6, i64 -135, i64 5)
  store %struct.Memory* %call_42fbc6, %struct.Memory** %MEMORY

  br label %block_.L_42fb3f

  ; Code: .L_42fbcb:	 RIP: 42fbcb	 Bytes: 0
block_.L_42fbcb:

  ; Code: jmpq .L_42fbd0	 RIP: 42fbcb	 Bytes: 5
  %loadMem_42fbcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fbcb = call %struct.Memory* @routine_jmpq_.L_42fbd0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fbcb, i64 5, i64 5)
  store %struct.Memory* %call_42fbcb, %struct.Memory** %MEMORY

  br label %block_.L_42fbd0

  ; Code: .L_42fbd0:	 RIP: 42fbd0	 Bytes: 0
block_.L_42fbd0:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 42fbd0	 Bytes: 3
  %loadMem_42fbd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fbd0 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fbd0)
  store %struct.Memory* %call_42fbd0, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42fbd3	 Bytes: 3
  %loadMem_42fbd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fbd3 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fbd3)
  store %struct.Memory* %call_42fbd3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 42fbd6	 Bytes: 3
  %loadMem_42fbd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fbd6 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fbd6)
  store %struct.Memory* %call_42fbd6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42fa54	 RIP: 42fbd9	 Bytes: 5
  %loadMem_42fbd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fbd9 = call %struct.Memory* @routine_jmpq_.L_42fa54(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fbd9, i64 -389, i64 5)
  store %struct.Memory* %call_42fbd9, %struct.Memory** %MEMORY

  br label %block_.L_42fa54

  ; Code: .L_42fbde:	 RIP: 42fbde	 Bytes: 0
block_.L_42fbde:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42fbde	 Bytes: 4
  %loadMem_42fbde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fbde = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fbde)
  store %struct.Memory* %call_42fbde, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x48(%rax)	 RIP: 42fbe2	 Bytes: 5
  %loadMem_42fbe2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fbe2 = call %struct.Memory* @routine_cmpq__0x0__0x48__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fbe2)
  store %struct.Memory* %call_42fbe2, %struct.Memory** %MEMORY

  ; Code: je .L_42fc0b	 RIP: 42fbe7	 Bytes: 6
  %loadMem_42fbe7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fbe7 = call %struct.Memory* @routine_je_.L_42fc0b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fbe7, i8* %BRANCH_TAKEN, i64 36, i64 6, i64 6)
  store %struct.Memory* %call_42fbe7, %struct.Memory** %MEMORY

  %loadBr_42fbe7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42fbe7 = icmp eq i8 %loadBr_42fbe7, 1
  br i1 %cmpBr_42fbe7, label %block_.L_42fc0b, label %block_42fbed

block_42fbed:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42fbed	 Bytes: 4
  %loadMem_42fbed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fbed = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fbed)
  store %struct.Memory* %call_42fbed, %struct.Memory** %MEMORY

  ; Code: movq 0x48(%rax), %rax	 RIP: 42fbf1	 Bytes: 4
  %loadMem_42fbf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fbf1 = call %struct.Memory* @routine_movq_0x48__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fbf1)
  store %struct.Memory* %call_42fbf1, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 42fbf5	 Bytes: 4
  %loadMem_42fbf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fbf5 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fbf5)
  store %struct.Memory* %call_42fbf5, %struct.Memory** %MEMORY

  ; Code: movb (%rax,%rcx,1), %dl	 RIP: 42fbf9	 Bytes: 3
  %loadMem_42fbf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fbf9 = call %struct.Memory* @routine_movb___rax__rcx_1____dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fbf9)
  store %struct.Memory* %call_42fbf9, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42fbfc	 Bytes: 4
  %loadMem_42fbfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fbfc = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fbfc)
  store %struct.Memory* %call_42fbfc, %struct.Memory** %MEMORY

  ; Code: movq 0x48(%rax), %rax	 RIP: 42fc00	 Bytes: 4
  %loadMem_42fc00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fc00 = call %struct.Memory* @routine_movq_0x48__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fc00)
  store %struct.Memory* %call_42fc00, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 42fc04	 Bytes: 4
  %loadMem_42fc04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fc04 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fc04)
  store %struct.Memory* %call_42fc04, %struct.Memory** %MEMORY

  ; Code: movb %dl, (%rax,%rcx,1)	 RIP: 42fc08	 Bytes: 3
  %loadMem_42fc08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fc08 = call %struct.Memory* @routine_movb__dl____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fc08)
  store %struct.Memory* %call_42fc08, %struct.Memory** %MEMORY

  ; Code: .L_42fc0b:	 RIP: 42fc0b	 Bytes: 0
  br label %block_.L_42fc0b
block_.L_42fc0b:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42fc0b	 Bytes: 4
  %loadMem_42fc0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fc0b = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fc0b)
  store %struct.Memory* %call_42fc0b, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x50(%rax)	 RIP: 42fc0f	 Bytes: 5
  %loadMem_42fc0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fc0f = call %struct.Memory* @routine_cmpq__0x0__0x50__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fc0f)
  store %struct.Memory* %call_42fc0f, %struct.Memory** %MEMORY

  ; Code: je .L_42fc38	 RIP: 42fc14	 Bytes: 6
  %loadMem_42fc14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fc14 = call %struct.Memory* @routine_je_.L_42fc38(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fc14, i8* %BRANCH_TAKEN, i64 36, i64 6, i64 6)
  store %struct.Memory* %call_42fc14, %struct.Memory** %MEMORY

  %loadBr_42fc14 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42fc14 = icmp eq i8 %loadBr_42fc14, 1
  br i1 %cmpBr_42fc14, label %block_.L_42fc38, label %block_42fc1a

block_42fc1a:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42fc1a	 Bytes: 4
  %loadMem_42fc1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fc1a = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fc1a)
  store %struct.Memory* %call_42fc1a, %struct.Memory** %MEMORY

  ; Code: movq 0x50(%rax), %rax	 RIP: 42fc1e	 Bytes: 4
  %loadMem_42fc1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fc1e = call %struct.Memory* @routine_movq_0x50__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fc1e)
  store %struct.Memory* %call_42fc1e, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 42fc22	 Bytes: 4
  %loadMem_42fc22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fc22 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fc22)
  store %struct.Memory* %call_42fc22, %struct.Memory** %MEMORY

  ; Code: movb (%rax,%rcx,1), %dl	 RIP: 42fc26	 Bytes: 3
  %loadMem_42fc26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fc26 = call %struct.Memory* @routine_movb___rax__rcx_1____dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fc26)
  store %struct.Memory* %call_42fc26, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42fc29	 Bytes: 4
  %loadMem_42fc29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fc29 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fc29)
  store %struct.Memory* %call_42fc29, %struct.Memory** %MEMORY

  ; Code: movq 0x50(%rax), %rax	 RIP: 42fc2d	 Bytes: 4
  %loadMem_42fc2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fc2d = call %struct.Memory* @routine_movq_0x50__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fc2d)
  store %struct.Memory* %call_42fc2d, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 42fc31	 Bytes: 4
  %loadMem_42fc31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fc31 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fc31)
  store %struct.Memory* %call_42fc31, %struct.Memory** %MEMORY

  ; Code: movb %dl, (%rax,%rcx,1)	 RIP: 42fc35	 Bytes: 3
  %loadMem_42fc35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fc35 = call %struct.Memory* @routine_movb__dl____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fc35)
  store %struct.Memory* %call_42fc35, %struct.Memory** %MEMORY

  ; Code: .L_42fc38:	 RIP: 42fc38	 Bytes: 0
  br label %block_.L_42fc38
block_.L_42fc38:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42fc38	 Bytes: 4
  %loadMem_42fc38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fc38 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fc38)
  store %struct.Memory* %call_42fc38, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x58(%rax)	 RIP: 42fc3c	 Bytes: 5
  %loadMem_42fc3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fc3c = call %struct.Memory* @routine_cmpq__0x0__0x58__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fc3c)
  store %struct.Memory* %call_42fc3c, %struct.Memory** %MEMORY

  ; Code: je .L_42fc65	 RIP: 42fc41	 Bytes: 6
  %loadMem_42fc41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fc41 = call %struct.Memory* @routine_je_.L_42fc65(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fc41, i8* %BRANCH_TAKEN, i64 36, i64 6, i64 6)
  store %struct.Memory* %call_42fc41, %struct.Memory** %MEMORY

  %loadBr_42fc41 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42fc41 = icmp eq i8 %loadBr_42fc41, 1
  br i1 %cmpBr_42fc41, label %block_.L_42fc65, label %block_42fc47

block_42fc47:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42fc47	 Bytes: 4
  %loadMem_42fc47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fc47 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fc47)
  store %struct.Memory* %call_42fc47, %struct.Memory** %MEMORY

  ; Code: movq 0x58(%rax), %rax	 RIP: 42fc4b	 Bytes: 4
  %loadMem_42fc4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fc4b = call %struct.Memory* @routine_movq_0x58__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fc4b)
  store %struct.Memory* %call_42fc4b, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 42fc4f	 Bytes: 4
  %loadMem_42fc4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fc4f = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fc4f)
  store %struct.Memory* %call_42fc4f, %struct.Memory** %MEMORY

  ; Code: movb (%rax,%rcx,1), %dl	 RIP: 42fc53	 Bytes: 3
  %loadMem_42fc53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fc53 = call %struct.Memory* @routine_movb___rax__rcx_1____dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fc53)
  store %struct.Memory* %call_42fc53, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42fc56	 Bytes: 4
  %loadMem_42fc56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fc56 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fc56)
  store %struct.Memory* %call_42fc56, %struct.Memory** %MEMORY

  ; Code: movq 0x58(%rax), %rax	 RIP: 42fc5a	 Bytes: 4
  %loadMem_42fc5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fc5a = call %struct.Memory* @routine_movq_0x58__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fc5a)
  store %struct.Memory* %call_42fc5a, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 42fc5e	 Bytes: 4
  %loadMem_42fc5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fc5e = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fc5e)
  store %struct.Memory* %call_42fc5e, %struct.Memory** %MEMORY

  ; Code: movb %dl, (%rax,%rcx,1)	 RIP: 42fc62	 Bytes: 3
  %loadMem_42fc62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fc62 = call %struct.Memory* @routine_movb__dl____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fc62)
  store %struct.Memory* %call_42fc62, %struct.Memory** %MEMORY

  ; Code: .L_42fc65:	 RIP: 42fc65	 Bytes: 0
  br label %block_.L_42fc65
block_.L_42fc65:

  ; Code: movl $0x0, -0x20(%rbp)	 RIP: 42fc65	 Bytes: 7
  %loadMem_42fc65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fc65 = call %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fc65)
  store %struct.Memory* %call_42fc65, %struct.Memory** %MEMORY

  ; Code: .L_42fc6c:	 RIP: 42fc6c	 Bytes: 0
  br label %block_.L_42fc6c
block_.L_42fc6c:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 42fc6c	 Bytes: 3
  %loadMem_42fc6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fc6c = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fc6c)
  store %struct.Memory* %call_42fc6c, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42fc6f	 Bytes: 4
  %loadMem_42fc6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fc6f = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fc6f)
  store %struct.Memory* %call_42fc6f, %struct.Memory** %MEMORY

  ; Code: cmpl 0x110(%rcx), %eax	 RIP: 42fc73	 Bytes: 6
  %loadMem_42fc73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fc73 = call %struct.Memory* @routine_cmpl_0x110__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fc73)
  store %struct.Memory* %call_42fc73, %struct.Memory** %MEMORY

  ; Code: jge .L_42fcc1	 RIP: 42fc79	 Bytes: 6
  %loadMem_42fc79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fc79 = call %struct.Memory* @routine_jge_.L_42fcc1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fc79, i8* %BRANCH_TAKEN, i64 72, i64 6, i64 6)
  store %struct.Memory* %call_42fc79, %struct.Memory** %MEMORY

  %loadBr_42fc79 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42fc79 = icmp eq i8 %loadBr_42fc79, 1
  br i1 %cmpBr_42fc79, label %block_.L_42fcc1, label %block_42fc7f

block_42fc7f:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42fc7f	 Bytes: 4
  %loadMem_42fc7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fc7f = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fc7f)
  store %struct.Memory* %call_42fc7f, %struct.Memory** %MEMORY

  ; Code: movq 0x100(%rax), %rax	 RIP: 42fc83	 Bytes: 7
  %loadMem_42fc83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fc83 = call %struct.Memory* @routine_movq_0x100__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fc83)
  store %struct.Memory* %call_42fc83, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 42fc8a	 Bytes: 4
  %loadMem_42fc8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fc8a = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fc8a)
  store %struct.Memory* %call_42fc8a, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42fc8e	 Bytes: 4
  %loadMem_42fc8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fc8e = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fc8e)
  store %struct.Memory* %call_42fc8e, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 42fc92	 Bytes: 4
  %loadMem_42fc92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fc92 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fc92)
  store %struct.Memory* %call_42fc92, %struct.Memory** %MEMORY

  ; Code: movb (%rax,%rcx,1), %dl	 RIP: 42fc96	 Bytes: 3
  %loadMem_42fc96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fc96 = call %struct.Memory* @routine_movb___rax__rcx_1____dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fc96)
  store %struct.Memory* %call_42fc96, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42fc99	 Bytes: 4
  %loadMem_42fc99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fc99 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fc99)
  store %struct.Memory* %call_42fc99, %struct.Memory** %MEMORY

  ; Code: movq 0x100(%rax), %rax	 RIP: 42fc9d	 Bytes: 7
  %loadMem_42fc9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fc9d = call %struct.Memory* @routine_movq_0x100__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fc9d)
  store %struct.Memory* %call_42fc9d, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 42fca4	 Bytes: 4
  %loadMem_42fca4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fca4 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fca4)
  store %struct.Memory* %call_42fca4, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42fca8	 Bytes: 4
  %loadMem_42fca8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fca8 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fca8)
  store %struct.Memory* %call_42fca8, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 42fcac	 Bytes: 4
  %loadMem_42fcac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fcac = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fcac)
  store %struct.Memory* %call_42fcac, %struct.Memory** %MEMORY

  ; Code: movb %dl, (%rax,%rcx,1)	 RIP: 42fcb0	 Bytes: 3
  %loadMem_42fcb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fcb0 = call %struct.Memory* @routine_movb__dl____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fcb0)
  store %struct.Memory* %call_42fcb0, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 42fcb3	 Bytes: 3
  %loadMem_42fcb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fcb3 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fcb3)
  store %struct.Memory* %call_42fcb3, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42fcb6	 Bytes: 3
  %loadMem_42fcb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fcb6 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fcb6)
  store %struct.Memory* %call_42fcb6, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 42fcb9	 Bytes: 3
  %loadMem_42fcb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fcb9 = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fcb9)
  store %struct.Memory* %call_42fcb9, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42fc6c	 RIP: 42fcbc	 Bytes: 5
  %loadMem_42fcbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fcbc = call %struct.Memory* @routine_jmpq_.L_42fc6c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fcbc, i64 -80, i64 5)
  store %struct.Memory* %call_42fcbc, %struct.Memory** %MEMORY

  br label %block_.L_42fc6c

  ; Code: .L_42fcc1:	 RIP: 42fcc1	 Bytes: 0
block_.L_42fcc1:

  ; Code: jmpq .L_42fcc6	 RIP: 42fcc1	 Bytes: 5
  %loadMem_42fcc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fcc1 = call %struct.Memory* @routine_jmpq_.L_42fcc6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fcc1, i64 5, i64 5)
  store %struct.Memory* %call_42fcc1, %struct.Memory** %MEMORY

  br label %block_.L_42fcc6

  ; Code: .L_42fcc6:	 RIP: 42fcc6	 Bytes: 0
block_.L_42fcc6:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 42fcc6	 Bytes: 3
  %loadMem_42fcc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fcc6 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fcc6)
  store %struct.Memory* %call_42fcc6, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42fcc9	 Bytes: 3
  %loadMem_42fcc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fcc9 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fcc9)
  store %struct.Memory* %call_42fcc9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 42fccc	 Bytes: 3
  %loadMem_42fccc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fccc = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fccc)
  store %struct.Memory* %call_42fccc, %struct.Memory** %MEMORY

  ; Code: .L_42fccf:	 RIP: 42fccf	 Bytes: 0
  br label %block_.L_42fccf
block_.L_42fccf:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 42fccf	 Bytes: 3
  %loadMem_42fccf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fccf = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fccf)
  store %struct.Memory* %call_42fccf, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42fcd2	 Bytes: 3
  %loadMem_42fcd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fcd2 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fcd2)
  store %struct.Memory* %call_42fcd2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 42fcd5	 Bytes: 3
  %loadMem_42fcd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fcd5 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fcd5)
  store %struct.Memory* %call_42fcd5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42fa1a	 RIP: 42fcd8	 Bytes: 5
  %loadMem_42fcd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fcd8 = call %struct.Memory* @routine_jmpq_.L_42fa1a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fcd8, i64 -702, i64 5)
  store %struct.Memory* %call_42fcd8, %struct.Memory** %MEMORY

  br label %block_.L_42fa1a

  ; Code: .L_42fcdd:	 RIP: 42fcdd	 Bytes: 0
block_.L_42fcdd:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 42fcdd	 Bytes: 3
  %loadMem_42fcdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fcdd = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fcdd)
  store %struct.Memory* %call_42fcdd, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42fce0	 Bytes: 4
  %loadMem_42fce0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fce0 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fce0)
  store %struct.Memory* %call_42fce0, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x18(%rcx)	 RIP: 42fce4	 Bytes: 3
  %loadMem_42fce4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fce4 = call %struct.Memory* @routine_movl__eax__0x18__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fce4)
  store %struct.Memory* %call_42fce4, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 42fce7	 Bytes: 7
  %loadMem_42fce7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fce7 = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fce7)
  store %struct.Memory* %call_42fce7, %struct.Memory** %MEMORY

  ; Code: .L_42fcee:	 RIP: 42fcee	 Bytes: 0
  br label %block_.L_42fcee
block_.L_42fcee:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 42fcee	 Bytes: 3
  %loadMem_42fcee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fcee = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fcee)
  store %struct.Memory* %call_42fcee, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42fcf1	 Bytes: 4
  %loadMem_42fcf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fcf1 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fcf1)
  store %struct.Memory* %call_42fcf1, %struct.Memory** %MEMORY

  ; Code: cmpl 0x1c(%rcx), %eax	 RIP: 42fcf5	 Bytes: 3
  %loadMem_42fcf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fcf5 = call %struct.Memory* @routine_cmpl_0x1c__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fcf5)
  store %struct.Memory* %call_42fcf5, %struct.Memory** %MEMORY

  ; Code: jge .L_42fe16	 RIP: 42fcf8	 Bytes: 6
  %loadMem_42fcf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fcf8 = call %struct.Memory* @routine_jge_.L_42fe16(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fcf8, i8* %BRANCH_TAKEN, i64 286, i64 6, i64 6)
  store %struct.Memory* %call_42fcf8, %struct.Memory** %MEMORY

  %loadBr_42fcf8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42fcf8 = icmp eq i8 %loadBr_42fcf8, 1
  br i1 %cmpBr_42fcf8, label %block_.L_42fe16, label %block_42fcfe

block_42fcfe:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42fcfe	 Bytes: 4
  %loadMem_42fcfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fcfe = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fcfe)
  store %struct.Memory* %call_42fcfe, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 42fd02	 Bytes: 3
  %loadMem_42fd02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fd02 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fd02)
  store %struct.Memory* %call_42fd02, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 42fd05	 Bytes: 4
  %loadMem_42fd05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fd05 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fd05)
  store %struct.Memory* %call_42fd05, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42fd09	 Bytes: 4
  %loadMem_42fd09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fd09 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fd09)
  store %struct.Memory* %call_42fd09, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 42fd0d	 Bytes: 4
  %loadMem_42fd0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fd0d = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fd0d)
  store %struct.Memory* %call_42fd0d, %struct.Memory** %MEMORY

  ; Code: movb $0x0, (%rax,%rcx,1)	 RIP: 42fd11	 Bytes: 4
  %loadMem_42fd11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fd11 = call %struct.Memory* @routine_movb__0x0____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fd11)
  store %struct.Memory* %call_42fd11, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42fd15	 Bytes: 4
  %loadMem_42fd15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fd15 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fd15)
  store %struct.Memory* %call_42fd15, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x70(%rax)	 RIP: 42fd19	 Bytes: 5
  %loadMem_42fd19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fd19 = call %struct.Memory* @routine_cmpq__0x0__0x70__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fd19)
  store %struct.Memory* %call_42fd19, %struct.Memory** %MEMORY

  ; Code: je .L_42fd53	 RIP: 42fd1e	 Bytes: 6
  %loadMem_42fd1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fd1e = call %struct.Memory* @routine_je_.L_42fd53(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fd1e, i8* %BRANCH_TAKEN, i64 53, i64 6, i64 6)
  store %struct.Memory* %call_42fd1e, %struct.Memory** %MEMORY

  %loadBr_42fd1e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42fd1e = icmp eq i8 %loadBr_42fd1e, 1
  br i1 %cmpBr_42fd1e, label %block_.L_42fd53, label %block_42fd24

block_42fd24:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42fd24	 Bytes: 4
  %loadMem_42fd24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fd24 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fd24)
  store %struct.Memory* %call_42fd24, %struct.Memory** %MEMORY

  ; Code: movq 0x70(%rax), %rax	 RIP: 42fd28	 Bytes: 4
  %loadMem_42fd28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fd28 = call %struct.Memory* @routine_movq_0x70__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fd28)
  store %struct.Memory* %call_42fd28, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 42fd2c	 Bytes: 4
  %loadMem_42fd2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fd2c = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fd2c)
  store %struct.Memory* %call_42fd2c, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, (%rax,%rcx,8)	 RIP: 42fd30	 Bytes: 5
  %loadMem_42fd30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fd30 = call %struct.Memory* @routine_cmpq__0x0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fd30)
  store %struct.Memory* %call_42fd30, %struct.Memory** %MEMORY

  ; Code: je .L_42fd53	 RIP: 42fd35	 Bytes: 6
  %loadMem_42fd35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fd35 = call %struct.Memory* @routine_je_.L_42fd53(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fd35, i8* %BRANCH_TAKEN, i64 30, i64 6, i64 6)
  store %struct.Memory* %call_42fd35, %struct.Memory** %MEMORY

  %loadBr_42fd35 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42fd35 = icmp eq i8 %loadBr_42fd35, 1
  br i1 %cmpBr_42fd35, label %block_.L_42fd53, label %block_42fd3b

block_42fd3b:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42fd3b	 Bytes: 4
  %loadMem_42fd3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fd3b = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fd3b)
  store %struct.Memory* %call_42fd3b, %struct.Memory** %MEMORY

  ; Code: movq 0x70(%rax), %rax	 RIP: 42fd3f	 Bytes: 4
  %loadMem_42fd3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fd3f = call %struct.Memory* @routine_movq_0x70__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fd3f)
  store %struct.Memory* %call_42fd3f, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 42fd43	 Bytes: 4
  %loadMem_42fd43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fd43 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fd43)
  store %struct.Memory* %call_42fd43, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42fd47	 Bytes: 4
  %loadMem_42fd47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fd47 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fd47)
  store %struct.Memory* %call_42fd47, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 42fd4b	 Bytes: 4
  %loadMem_42fd4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fd4b = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fd4b)
  store %struct.Memory* %call_42fd4b, %struct.Memory** %MEMORY

  ; Code: movb $0x0, (%rax,%rcx,1)	 RIP: 42fd4f	 Bytes: 4
  %loadMem_42fd4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fd4f = call %struct.Memory* @routine_movb__0x0____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fd4f)
  store %struct.Memory* %call_42fd4f, %struct.Memory** %MEMORY

  ; Code: .L_42fd53:	 RIP: 42fd53	 Bytes: 0
  br label %block_.L_42fd53
block_.L_42fd53:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42fd53	 Bytes: 4
  %loadMem_42fd53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fd53 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fd53)
  store %struct.Memory* %call_42fd53, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x78(%rax)	 RIP: 42fd57	 Bytes: 5
  %loadMem_42fd57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fd57 = call %struct.Memory* @routine_cmpq__0x0__0x78__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fd57)
  store %struct.Memory* %call_42fd57, %struct.Memory** %MEMORY

  ; Code: je .L_42fd91	 RIP: 42fd5c	 Bytes: 6
  %loadMem_42fd5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fd5c = call %struct.Memory* @routine_je_.L_42fd91(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fd5c, i8* %BRANCH_TAKEN, i64 53, i64 6, i64 6)
  store %struct.Memory* %call_42fd5c, %struct.Memory** %MEMORY

  %loadBr_42fd5c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42fd5c = icmp eq i8 %loadBr_42fd5c, 1
  br i1 %cmpBr_42fd5c, label %block_.L_42fd91, label %block_42fd62

block_42fd62:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42fd62	 Bytes: 4
  %loadMem_42fd62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fd62 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fd62)
  store %struct.Memory* %call_42fd62, %struct.Memory** %MEMORY

  ; Code: movq 0x78(%rax), %rax	 RIP: 42fd66	 Bytes: 4
  %loadMem_42fd66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fd66 = call %struct.Memory* @routine_movq_0x78__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fd66)
  store %struct.Memory* %call_42fd66, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 42fd6a	 Bytes: 4
  %loadMem_42fd6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fd6a = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fd6a)
  store %struct.Memory* %call_42fd6a, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, (%rax,%rcx,8)	 RIP: 42fd6e	 Bytes: 5
  %loadMem_42fd6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fd6e = call %struct.Memory* @routine_cmpq__0x0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fd6e)
  store %struct.Memory* %call_42fd6e, %struct.Memory** %MEMORY

  ; Code: je .L_42fd91	 RIP: 42fd73	 Bytes: 6
  %loadMem_42fd73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fd73 = call %struct.Memory* @routine_je_.L_42fd91(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fd73, i8* %BRANCH_TAKEN, i64 30, i64 6, i64 6)
  store %struct.Memory* %call_42fd73, %struct.Memory** %MEMORY

  %loadBr_42fd73 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42fd73 = icmp eq i8 %loadBr_42fd73, 1
  br i1 %cmpBr_42fd73, label %block_.L_42fd91, label %block_42fd79

block_42fd79:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42fd79	 Bytes: 4
  %loadMem_42fd79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fd79 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fd79)
  store %struct.Memory* %call_42fd79, %struct.Memory** %MEMORY

  ; Code: movq 0x78(%rax), %rax	 RIP: 42fd7d	 Bytes: 4
  %loadMem_42fd7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fd7d = call %struct.Memory* @routine_movq_0x78__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fd7d)
  store %struct.Memory* %call_42fd7d, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 42fd81	 Bytes: 4
  %loadMem_42fd81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fd81 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fd81)
  store %struct.Memory* %call_42fd81, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42fd85	 Bytes: 4
  %loadMem_42fd85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fd85 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fd85)
  store %struct.Memory* %call_42fd85, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 42fd89	 Bytes: 4
  %loadMem_42fd89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fd89 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fd89)
  store %struct.Memory* %call_42fd89, %struct.Memory** %MEMORY

  ; Code: movb $0x0, (%rax,%rcx,1)	 RIP: 42fd8d	 Bytes: 4
  %loadMem_42fd8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fd8d = call %struct.Memory* @routine_movb__0x0____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fd8d)
  store %struct.Memory* %call_42fd8d, %struct.Memory** %MEMORY

  ; Code: .L_42fd91:	 RIP: 42fd91	 Bytes: 0
  br label %block_.L_42fd91
block_.L_42fd91:

  ; Code: movl $0x0, -0x20(%rbp)	 RIP: 42fd91	 Bytes: 7
  %loadMem_42fd91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fd91 = call %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fd91)
  store %struct.Memory* %call_42fd91, %struct.Memory** %MEMORY

  ; Code: .L_42fd98:	 RIP: 42fd98	 Bytes: 0
  br label %block_.L_42fd98
block_.L_42fd98:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 42fd98	 Bytes: 3
  %loadMem_42fd98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fd98 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fd98)
  store %struct.Memory* %call_42fd98, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42fd9b	 Bytes: 4
  %loadMem_42fd9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fd9b = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fd9b)
  store %struct.Memory* %call_42fd9b, %struct.Memory** %MEMORY

  ; Code: cmpl 0x130(%rcx), %eax	 RIP: 42fd9f	 Bytes: 6
  %loadMem_42fd9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fd9f = call %struct.Memory* @routine_cmpl_0x130__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fd9f)
  store %struct.Memory* %call_42fd9f, %struct.Memory** %MEMORY

  ; Code: jge .L_42fe03	 RIP: 42fda5	 Bytes: 6
  %loadMem_42fda5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fda5 = call %struct.Memory* @routine_jge_.L_42fe03(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fda5, i8* %BRANCH_TAKEN, i64 94, i64 6, i64 6)
  store %struct.Memory* %call_42fda5, %struct.Memory** %MEMORY

  %loadBr_42fda5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42fda5 = icmp eq i8 %loadBr_42fda5, 1
  br i1 %cmpBr_42fda5, label %block_.L_42fe03, label %block_42fdab

block_42fdab:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42fdab	 Bytes: 4
  %loadMem_42fdab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fdab = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fdab)
  store %struct.Memory* %call_42fdab, %struct.Memory** %MEMORY

  ; Code: movq 0x120(%rax), %rax	 RIP: 42fdaf	 Bytes: 7
  %loadMem_42fdaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fdaf = call %struct.Memory* @routine_movq_0x120__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fdaf)
  store %struct.Memory* %call_42fdaf, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 42fdb6	 Bytes: 4
  %loadMem_42fdb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fdb6 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fdb6)
  store %struct.Memory* %call_42fdb6, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42fdba	 Bytes: 4
  %loadMem_42fdba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fdba = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fdba)
  store %struct.Memory* %call_42fdba, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 42fdbe	 Bytes: 4
  %loadMem_42fdbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fdbe = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fdbe)
  store %struct.Memory* %call_42fdbe, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, (%rax,%rcx,8)	 RIP: 42fdc2	 Bytes: 5
  %loadMem_42fdc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fdc2 = call %struct.Memory* @routine_cmpq__0x0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fdc2)
  store %struct.Memory* %call_42fdc2, %struct.Memory** %MEMORY

  ; Code: je .L_42fdf0	 RIP: 42fdc7	 Bytes: 6
  %loadMem_42fdc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fdc7 = call %struct.Memory* @routine_je_.L_42fdf0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fdc7, i8* %BRANCH_TAKEN, i64 41, i64 6, i64 6)
  store %struct.Memory* %call_42fdc7, %struct.Memory** %MEMORY

  %loadBr_42fdc7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42fdc7 = icmp eq i8 %loadBr_42fdc7, 1
  br i1 %cmpBr_42fdc7, label %block_.L_42fdf0, label %block_42fdcd

block_42fdcd:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42fdcd	 Bytes: 4
  %loadMem_42fdcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fdcd = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fdcd)
  store %struct.Memory* %call_42fdcd, %struct.Memory** %MEMORY

  ; Code: movq 0x120(%rax), %rax	 RIP: 42fdd1	 Bytes: 7
  %loadMem_42fdd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fdd1 = call %struct.Memory* @routine_movq_0x120__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fdd1)
  store %struct.Memory* %call_42fdd1, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 42fdd8	 Bytes: 4
  %loadMem_42fdd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fdd8 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fdd8)
  store %struct.Memory* %call_42fdd8, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42fddc	 Bytes: 4
  %loadMem_42fddc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fddc = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fddc)
  store %struct.Memory* %call_42fddc, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 42fde0	 Bytes: 4
  %loadMem_42fde0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fde0 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fde0)
  store %struct.Memory* %call_42fde0, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42fde4	 Bytes: 4
  %loadMem_42fde4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fde4 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fde4)
  store %struct.Memory* %call_42fde4, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 42fde8	 Bytes: 4
  %loadMem_42fde8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fde8 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fde8)
  store %struct.Memory* %call_42fde8, %struct.Memory** %MEMORY

  ; Code: movb $0x0, (%rax,%rcx,1)	 RIP: 42fdec	 Bytes: 4
  %loadMem_42fdec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fdec = call %struct.Memory* @routine_movb__0x0____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fdec)
  store %struct.Memory* %call_42fdec, %struct.Memory** %MEMORY

  ; Code: .L_42fdf0:	 RIP: 42fdf0	 Bytes: 0
  br label %block_.L_42fdf0
block_.L_42fdf0:

  ; Code: jmpq .L_42fdf5	 RIP: 42fdf0	 Bytes: 5
  %loadMem_42fdf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fdf0 = call %struct.Memory* @routine_jmpq_.L_42fdf5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fdf0, i64 5, i64 5)
  store %struct.Memory* %call_42fdf0, %struct.Memory** %MEMORY

  br label %block_.L_42fdf5

  ; Code: .L_42fdf5:	 RIP: 42fdf5	 Bytes: 0
block_.L_42fdf5:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 42fdf5	 Bytes: 3
  %loadMem_42fdf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fdf5 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fdf5)
  store %struct.Memory* %call_42fdf5, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42fdf8	 Bytes: 3
  %loadMem_42fdf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fdf8 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fdf8)
  store %struct.Memory* %call_42fdf8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 42fdfb	 Bytes: 3
  %loadMem_42fdfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fdfb = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fdfb)
  store %struct.Memory* %call_42fdfb, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42fd98	 RIP: 42fdfe	 Bytes: 5
  %loadMem_42fdfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fdfe = call %struct.Memory* @routine_jmpq_.L_42fd98(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fdfe, i64 -102, i64 5)
  store %struct.Memory* %call_42fdfe, %struct.Memory** %MEMORY

  br label %block_.L_42fd98

  ; Code: .L_42fe03:	 RIP: 42fe03	 Bytes: 0
block_.L_42fe03:

  ; Code: jmpq .L_42fe08	 RIP: 42fe03	 Bytes: 5
  %loadMem_42fe03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fe03 = call %struct.Memory* @routine_jmpq_.L_42fe08(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fe03, i64 5, i64 5)
  store %struct.Memory* %call_42fe03, %struct.Memory** %MEMORY

  br label %block_.L_42fe08

  ; Code: .L_42fe08:	 RIP: 42fe08	 Bytes: 0
block_.L_42fe08:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 42fe08	 Bytes: 3
  %loadMem_42fe08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fe08 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fe08)
  store %struct.Memory* %call_42fe08, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42fe0b	 Bytes: 3
  %loadMem_42fe0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fe0b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fe0b)
  store %struct.Memory* %call_42fe0b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 42fe0e	 Bytes: 3
  %loadMem_42fe0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fe0e = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fe0e)
  store %struct.Memory* %call_42fe0e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42fcee	 RIP: 42fe11	 Bytes: 5
  %loadMem_42fe11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fe11 = call %struct.Memory* @routine_jmpq_.L_42fcee(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fe11, i64 -291, i64 5)
  store %struct.Memory* %call_42fe11, %struct.Memory** %MEMORY

  br label %block_.L_42fcee

  ; Code: .L_42fe16:	 RIP: 42fe16	 Bytes: 0
block_.L_42fe16:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42fe16	 Bytes: 4
  %loadMem_42fe16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fe16 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fe16)
  store %struct.Memory* %call_42fe16, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x48(%rax)	 RIP: 42fe1a	 Bytes: 5
  %loadMem_42fe1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fe1a = call %struct.Memory* @routine_cmpq__0x0__0x48__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fe1a)
  store %struct.Memory* %call_42fe1a, %struct.Memory** %MEMORY

  ; Code: je .L_42fe35	 RIP: 42fe1f	 Bytes: 6
  %loadMem_42fe1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fe1f = call %struct.Memory* @routine_je_.L_42fe35(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fe1f, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_42fe1f, %struct.Memory** %MEMORY

  %loadBr_42fe1f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42fe1f = icmp eq i8 %loadBr_42fe1f, 1
  br i1 %cmpBr_42fe1f, label %block_.L_42fe35, label %block_42fe25

block_42fe25:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42fe25	 Bytes: 4
  %loadMem_42fe25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fe25 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fe25)
  store %struct.Memory* %call_42fe25, %struct.Memory** %MEMORY

  ; Code: movq 0x48(%rax), %rax	 RIP: 42fe29	 Bytes: 4
  %loadMem_42fe29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fe29 = call %struct.Memory* @routine_movq_0x48__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fe29)
  store %struct.Memory* %call_42fe29, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 42fe2d	 Bytes: 4
  %loadMem_42fe2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fe2d = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fe2d)
  store %struct.Memory* %call_42fe2d, %struct.Memory** %MEMORY

  ; Code: movb $0x0, (%rax,%rcx,1)	 RIP: 42fe31	 Bytes: 4
  %loadMem_42fe31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fe31 = call %struct.Memory* @routine_movb__0x0____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fe31)
  store %struct.Memory* %call_42fe31, %struct.Memory** %MEMORY

  ; Code: .L_42fe35:	 RIP: 42fe35	 Bytes: 0
  br label %block_.L_42fe35
block_.L_42fe35:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42fe35	 Bytes: 4
  %loadMem_42fe35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fe35 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fe35)
  store %struct.Memory* %call_42fe35, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x50(%rax)	 RIP: 42fe39	 Bytes: 5
  %loadMem_42fe39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fe39 = call %struct.Memory* @routine_cmpq__0x0__0x50__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fe39)
  store %struct.Memory* %call_42fe39, %struct.Memory** %MEMORY

  ; Code: je .L_42fe54	 RIP: 42fe3e	 Bytes: 6
  %loadMem_42fe3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fe3e = call %struct.Memory* @routine_je_.L_42fe54(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fe3e, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_42fe3e, %struct.Memory** %MEMORY

  %loadBr_42fe3e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42fe3e = icmp eq i8 %loadBr_42fe3e, 1
  br i1 %cmpBr_42fe3e, label %block_.L_42fe54, label %block_42fe44

block_42fe44:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42fe44	 Bytes: 4
  %loadMem_42fe44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fe44 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fe44)
  store %struct.Memory* %call_42fe44, %struct.Memory** %MEMORY

  ; Code: movq 0x50(%rax), %rax	 RIP: 42fe48	 Bytes: 4
  %loadMem_42fe48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fe48 = call %struct.Memory* @routine_movq_0x50__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fe48)
  store %struct.Memory* %call_42fe48, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 42fe4c	 Bytes: 4
  %loadMem_42fe4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fe4c = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fe4c)
  store %struct.Memory* %call_42fe4c, %struct.Memory** %MEMORY

  ; Code: movb $0x0, (%rax,%rcx,1)	 RIP: 42fe50	 Bytes: 4
  %loadMem_42fe50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fe50 = call %struct.Memory* @routine_movb__0x0____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fe50)
  store %struct.Memory* %call_42fe50, %struct.Memory** %MEMORY

  ; Code: .L_42fe54:	 RIP: 42fe54	 Bytes: 0
  br label %block_.L_42fe54
block_.L_42fe54:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42fe54	 Bytes: 4
  %loadMem_42fe54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fe54 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fe54)
  store %struct.Memory* %call_42fe54, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x58(%rax)	 RIP: 42fe58	 Bytes: 5
  %loadMem_42fe58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fe58 = call %struct.Memory* @routine_cmpq__0x0__0x58__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fe58)
  store %struct.Memory* %call_42fe58, %struct.Memory** %MEMORY

  ; Code: je .L_42fe73	 RIP: 42fe5d	 Bytes: 6
  %loadMem_42fe5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fe5d = call %struct.Memory* @routine_je_.L_42fe73(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fe5d, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_42fe5d, %struct.Memory** %MEMORY

  %loadBr_42fe5d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42fe5d = icmp eq i8 %loadBr_42fe5d, 1
  br i1 %cmpBr_42fe5d, label %block_.L_42fe73, label %block_42fe63

block_42fe63:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42fe63	 Bytes: 4
  %loadMem_42fe63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fe63 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fe63)
  store %struct.Memory* %call_42fe63, %struct.Memory** %MEMORY

  ; Code: movq 0x58(%rax), %rax	 RIP: 42fe67	 Bytes: 4
  %loadMem_42fe67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fe67 = call %struct.Memory* @routine_movq_0x58__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fe67)
  store %struct.Memory* %call_42fe67, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 42fe6b	 Bytes: 4
  %loadMem_42fe6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fe6b = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fe6b)
  store %struct.Memory* %call_42fe6b, %struct.Memory** %MEMORY

  ; Code: movb $0x0, (%rax,%rcx,1)	 RIP: 42fe6f	 Bytes: 4
  %loadMem_42fe6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fe6f = call %struct.Memory* @routine_movb__0x0____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fe6f)
  store %struct.Memory* %call_42fe6f, %struct.Memory** %MEMORY

  ; Code: .L_42fe73:	 RIP: 42fe73	 Bytes: 0
  br label %block_.L_42fe73
block_.L_42fe73:

  ; Code: movl $0x0, -0x20(%rbp)	 RIP: 42fe73	 Bytes: 7
  %loadMem_42fe73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fe73 = call %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fe73)
  store %struct.Memory* %call_42fe73, %struct.Memory** %MEMORY

  ; Code: .L_42fe7a:	 RIP: 42fe7a	 Bytes: 0
  br label %block_.L_42fe7a
block_.L_42fe7a:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 42fe7a	 Bytes: 3
  %loadMem_42fe7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fe7a = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fe7a)
  store %struct.Memory* %call_42fe7a, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42fe7d	 Bytes: 4
  %loadMem_42fe7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fe7d = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fe7d)
  store %struct.Memory* %call_42fe7d, %struct.Memory** %MEMORY

  ; Code: cmpl 0x110(%rcx), %eax	 RIP: 42fe81	 Bytes: 6
  %loadMem_42fe81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fe81 = call %struct.Memory* @routine_cmpl_0x110__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fe81)
  store %struct.Memory* %call_42fe81, %struct.Memory** %MEMORY

  ; Code: jge .L_42feb6	 RIP: 42fe87	 Bytes: 6
  %loadMem_42fe87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fe87 = call %struct.Memory* @routine_jge_.L_42feb6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fe87, i8* %BRANCH_TAKEN, i64 47, i64 6, i64 6)
  store %struct.Memory* %call_42fe87, %struct.Memory** %MEMORY

  %loadBr_42fe87 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42fe87 = icmp eq i8 %loadBr_42fe87, 1
  br i1 %cmpBr_42fe87, label %block_.L_42feb6, label %block_42fe8d

block_42fe8d:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42fe8d	 Bytes: 4
  %loadMem_42fe8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fe8d = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fe8d)
  store %struct.Memory* %call_42fe8d, %struct.Memory** %MEMORY

  ; Code: movq 0x100(%rax), %rax	 RIP: 42fe91	 Bytes: 7
  %loadMem_42fe91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fe91 = call %struct.Memory* @routine_movq_0x100__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fe91)
  store %struct.Memory* %call_42fe91, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 42fe98	 Bytes: 4
  %loadMem_42fe98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fe98 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fe98)
  store %struct.Memory* %call_42fe98, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42fe9c	 Bytes: 4
  %loadMem_42fe9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fe9c = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fe9c)
  store %struct.Memory* %call_42fe9c, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 42fea0	 Bytes: 4
  %loadMem_42fea0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fea0 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fea0)
  store %struct.Memory* %call_42fea0, %struct.Memory** %MEMORY

  ; Code: movb $0x0, (%rax,%rcx,1)	 RIP: 42fea4	 Bytes: 4
  %loadMem_42fea4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fea4 = call %struct.Memory* @routine_movb__0x0____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fea4)
  store %struct.Memory* %call_42fea4, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 42fea8	 Bytes: 3
  %loadMem_42fea8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42fea8 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42fea8)
  store %struct.Memory* %call_42fea8, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42feab	 Bytes: 3
  %loadMem_42feab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42feab = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42feab)
  store %struct.Memory* %call_42feab, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 42feae	 Bytes: 3
  %loadMem_42feae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42feae = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42feae)
  store %struct.Memory* %call_42feae, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42fe7a	 RIP: 42feb1	 Bytes: 5
  %loadMem_42feb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42feb1 = call %struct.Memory* @routine_jmpq_.L_42fe7a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42feb1, i64 -55, i64 5)
  store %struct.Memory* %call_42feb1, %struct.Memory** %MEMORY

  br label %block_.L_42fe7a

  ; Code: .L_42feb6:	 RIP: 42feb6	 Bytes: 0
block_.L_42feb6:

  ; Code: popq %rbp	 RIP: 42feb6	 Bytes: 1
  %loadMem_42feb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42feb6 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42feb6)
  store %struct.Memory* %call_42feb6, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 42feb7	 Bytes: 1
  %loadMem_42feb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42feb7 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42feb7)
  store %struct.Memory* %call_42feb7, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_42feb7
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 20
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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

define %struct.Memory* @routine_cmpl_0x18__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 24
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
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

define %struct.Memory* @routine_jge_.L_42fcdd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_cmpl__0x0____rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RCX
  %14 = mul i64 %13, 4
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 0)
  ret %struct.Memory* %18
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

define %struct.Memory* @routine_jne_.L_42fa41(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_42fccf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 20
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

define %struct.Memory* @routine_je_.L_42fcc6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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




define %struct.Memory* @routine_cmpl_0x1c__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 28
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_42fbde(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RCX
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %15)
  ret %struct.Memory* %18
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  store i8 %6, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb___rax__rcx_1____dl(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 5
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RCX = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
  %18 = add i64 %17, %16
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %DL, i64 %18)
  ret %struct.Memory* %21
}










define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__dl____rax__rcx_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 5
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RCX = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
  %18 = add i64 %17, %16
  %19 = load i8, i8* %DL
  %20 = zext i8 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 {
  %5 = inttoptr i64 %2 to i64*
  %6 = load i64, i64* %5
  %7 = sub i64 %6, %3
  %8 = icmp ult i64 %6, %3
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = trunc i64 %7 to i32
  %12 = and i32 %11, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12) #22
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i64 %6, %3
  %19 = xor i64 %18, %7
  %20 = lshr i64 %19, 4
  %21 = trunc i64 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i64 %7, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %7, 63
  %28 = trunc i64 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %6, 63
  %31 = lshr i64 %3, 63
  %32 = xor i64 %30, %31
  %33 = xor i64 %27, %30
  %34 = add   i64 %33, %32
  %35 = icmp eq i64 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cmpq__0x0__0x70__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 112
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_42fae4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_movq_0x70__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 112
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_cmpq__0x0____rax__rcx_8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RCX
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 5
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 0)
  ret %struct.Memory* %18
}






























define %struct.Memory* @routine_cmpq__0x0__0x78__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 120
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_42fb38(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_movq_0x78__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 120
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
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




define %struct.Memory* @routine_cmpl_0x130__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 304
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_42fbcb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_movq_0x120__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 288
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_je_.L_42fbb8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


































define %struct.Memory* @routine_jmpq_.L_42fbbd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_jmpq_.L_42fb3f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_42fbd0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_jmpq_.L_42fa54(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_cmpq__0x0__0x48__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_42fc0b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_movq_0x48__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}
















define %struct.Memory* @routine_cmpq__0x0__0x50__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 80
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_42fc38(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_movq_0x50__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 80
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}
















define %struct.Memory* @routine_cmpq__0x0__0x58__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 88
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_42fc65(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_movq_0x58__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 88
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}




















define %struct.Memory* @routine_cmpl_0x110__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 272
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_42fcc1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_movq_0x100__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 256
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}




























define %struct.Memory* @routine_jmpq_.L_42fc6c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_42fcc6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_42fa1a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movl__eax__0x18__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 24
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}










define %struct.Memory* @routine_jge_.L_42fe16(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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











define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__0x0____rax__rcx_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RCX
  %14 = add i64 %13, %12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 0)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_je_.L_42fd53(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




























define %struct.Memory* @routine_je_.L_42fd91(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
































define %struct.Memory* @routine_jge_.L_42fe03(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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














define %struct.Memory* @routine_je_.L_42fdf0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


















define %struct.Memory* @routine_jmpq_.L_42fdf5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_42fd98(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_42fe08(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_42fcee(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_je_.L_42fe35(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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














define %struct.Memory* @routine_je_.L_42fe54(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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














define %struct.Memory* @routine_je_.L_42fe73(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


















define %struct.Memory* @routine_jge_.L_42feb6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




















define %struct.Memory* @routine_jmpq_.L_42fe7a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

