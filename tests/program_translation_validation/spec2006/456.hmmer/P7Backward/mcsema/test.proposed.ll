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

declare %struct.Memory* @sub_407890.AllocPlan7Matrix(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4281b0.ILogsum(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_407940.FreePlan7Matrix(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_427ef0.Scorify(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals


define %struct.Memory* @P7Backward(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .P7Backward:	 RIP: 435860	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 435860	 Bytes: 1
  %loadMem_435860 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435860 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435860)
  store %struct.Memory* %call_435860, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 435861	 Bytes: 3
  %loadMem_435861 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435861 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435861)
  store %struct.Memory* %call_435861, %struct.Memory** %MEMORY

  ; Code: subq $0x60, %rsp	 RIP: 435864	 Bytes: 4
  %loadMem_435864 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435864 = call %struct.Memory* @routine_subq__0x60___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435864)
  store %struct.Memory* %call_435864, %struct.Memory** %MEMORY

  ; Code: leaq -0x30(%rbp), %rax	 RIP: 435868	 Bytes: 4
  %loadMem_435868 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435868 = call %struct.Memory* @routine_leaq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435868)
  store %struct.Memory* %call_435868, %struct.Memory** %MEMORY

  ; Code: leaq -0x38(%rbp), %r8	 RIP: 43586c	 Bytes: 4
  %loadMem_43586c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43586c = call %struct.Memory* @routine_leaq_MINUS0x38__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43586c)
  store %struct.Memory* %call_43586c, %struct.Memory** %MEMORY

  ; Code: leaq -0x40(%rbp), %r9	 RIP: 435870	 Bytes: 4
  %loadMem_435870 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435870 = call %struct.Memory* @routine_leaq_MINUS0x40__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435870)
  store %struct.Memory* %call_435870, %struct.Memory** %MEMORY

  ; Code: leaq -0x48(%rbp), %r10	 RIP: 435874	 Bytes: 4
  %loadMem_435874 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435874 = call %struct.Memory* @routine_leaq_MINUS0x48__rbp____r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435874)
  store %struct.Memory* %call_435874, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x8(%rbp)	 RIP: 435878	 Bytes: 4
  %loadMem_435878 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435878 = call %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435878)
  store %struct.Memory* %call_435878, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0xc(%rbp)	 RIP: 43587c	 Bytes: 3
  %loadMem_43587c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43587c = call %struct.Memory* @routine_movl__esi__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43587c)
  store %struct.Memory* %call_43587c, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x18(%rbp)	 RIP: 43587f	 Bytes: 4
  %loadMem_43587f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43587f = call %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43587f)
  store %struct.Memory* %call_43587f, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x20(%rbp)	 RIP: 435883	 Bytes: 4
  %loadMem_435883 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435883 = call %struct.Memory* @routine_movq__rcx__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435883)
  store %struct.Memory* %call_435883, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %esi	 RIP: 435887	 Bytes: 3
  %loadMem_435887 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435887 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435887)
  store %struct.Memory* %call_435887, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 43588a	 Bytes: 3
  %loadMem_43588a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43588a = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43588a)
  store %struct.Memory* %call_43588a, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 43588d	 Bytes: 4
  %loadMem_43588d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43588d = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43588d)
  store %struct.Memory* %call_43588d, %struct.Memory** %MEMORY

  ; Code: movl 0x88(%rcx), %r11d	 RIP: 435891	 Bytes: 7
  %loadMem_435891 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435891 = call %struct.Memory* @routine_movl_0x88__rcx____r11d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435891)
  store %struct.Memory* %call_435891, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edi	 RIP: 435898	 Bytes: 2
  %loadMem_435898 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435898 = call %struct.Memory* @routine_movl__esi___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435898)
  store %struct.Memory* %call_435898, %struct.Memory** %MEMORY

  ; Code: movl %r11d, %esi	 RIP: 43589a	 Bytes: 3
  %loadMem_43589a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43589a = call %struct.Memory* @routine_movl__r11d___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43589a)
  store %struct.Memory* %call_43589a, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 43589d	 Bytes: 3
  %loadMem_43589d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43589d = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43589d)
  store %struct.Memory* %call_43589d, %struct.Memory** %MEMORY

  ; Code: movq %r8, %rcx	 RIP: 4358a0	 Bytes: 3
  %loadMem_4358a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4358a0 = call %struct.Memory* @routine_movq__r8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4358a0)
  store %struct.Memory* %call_4358a0, %struct.Memory** %MEMORY

  ; Code: movq %r9, %r8	 RIP: 4358a3	 Bytes: 3
  %loadMem_4358a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4358a3 = call %struct.Memory* @routine_movq__r9___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4358a3)
  store %struct.Memory* %call_4358a3, %struct.Memory** %MEMORY

  ; Code: movq %r10, %r9	 RIP: 4358a6	 Bytes: 3
  %loadMem_4358a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4358a6 = call %struct.Memory* @routine_movq__r10___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4358a6)
  store %struct.Memory* %call_4358a6, %struct.Memory** %MEMORY

  ; Code: callq .AllocPlan7Matrix	 RIP: 4358a9	 Bytes: 5
  %loadMem1_4358a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4358a9 = call %struct.Memory* @routine_callq_.AllocPlan7Matrix(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4358a9, i64 -188441, i64 5, i64 5)
  store %struct.Memory* %call1_4358a9, %struct.Memory** %MEMORY

  %loadMem2_4358a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4358a9 = load i64, i64* %3
  %call2_4358a9 = call %struct.Memory* @sub_407890.AllocPlan7Matrix(%struct.State* %0, i64  %loadPC_4358a9, %struct.Memory* %loadMem2_4358a9)
  store %struct.Memory* %call2_4358a9, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x28(%rbp)	 RIP: 4358ae	 Bytes: 4
  %loadMem_4358ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4358ae = call %struct.Memory* @routine_movq__rax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4358ae)
  store %struct.Memory* %call_4358ae, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 4358b2	 Bytes: 4
  %loadMem_4358b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4358b2 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4358b2)
  store %struct.Memory* %call_4358b2, %struct.Memory** %MEMORY

  ; Code: movl 0x160(%rax), %esi	 RIP: 4358b6	 Bytes: 6
  %loadMem_4358b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4358b6 = call %struct.Memory* @routine_movl_0x160__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4358b6)
  store %struct.Memory* %call_4358b6, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 4358bc	 Bytes: 4
  %loadMem_4358bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4358bc = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4358bc)
  store %struct.Memory* %call_4358bc, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 4358c0	 Bytes: 4
  %loadMem_4358c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4358c0 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4358c0)
  store %struct.Memory* %call_4358c0, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4358c4	 Bytes: 4
  %loadMem_4358c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4358c4 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4358c4)
  store %struct.Memory* %call_4358c4, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x8(%rax)	 RIP: 4358c8	 Bytes: 3
  %loadMem_4358c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4358c8 = call %struct.Memory* @routine_movl__esi__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4358c8)
  store %struct.Memory* %call_4358c8, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 4358cb	 Bytes: 4
  %loadMem_4358cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4358cb = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4358cb)
  store %struct.Memory* %call_4358cb, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 4358cf	 Bytes: 4
  %loadMem_4358cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4358cf = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4358cf)
  store %struct.Memory* %call_4358cf, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4358d3	 Bytes: 4
  %loadMem_4358d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4358d3 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4358d3)
  store %struct.Memory* %call_4358d3, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rax), %esi	 RIP: 4358d7	 Bytes: 3
  %loadMem_4358d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4358d7 = call %struct.Memory* @routine_movl_0x8__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4358d7)
  store %struct.Memory* %call_4358d7, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 4358da	 Bytes: 4
  %loadMem_4358da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4358da = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4358da)
  store %struct.Memory* %call_4358da, %struct.Memory** %MEMORY

  ; Code: addl 0x158(%rax), %esi	 RIP: 4358de	 Bytes: 6
  %loadMem_4358de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4358de = call %struct.Memory* @routine_addl_0x158__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4358de)
  store %struct.Memory* %call_4358de, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 4358e4	 Bytes: 4
  %loadMem_4358e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4358e4 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4358e4)
  store %struct.Memory* %call_4358e4, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 4358e8	 Bytes: 4
  %loadMem_4358e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4358e8 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4358e8)
  store %struct.Memory* %call_4358e8, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4358ec	 Bytes: 4
  %loadMem_4358ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4358ec = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4358ec)
  store %struct.Memory* %call_4358ec, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x4(%rax)	 RIP: 4358f0	 Bytes: 3
  %loadMem_4358f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4358f0 = call %struct.Memory* @routine_movl__esi__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4358f0)
  store %struct.Memory* %call_4358f0, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 4358f3	 Bytes: 4
  %loadMem_4358f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4358f3 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4358f3)
  store %struct.Memory* %call_4358f3, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 4358f7	 Bytes: 4
  %loadMem_4358f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4358f7 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4358f7)
  store %struct.Memory* %call_4358f7, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4358fb	 Bytes: 4
  %loadMem_4358fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4358fb = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4358fb)
  store %struct.Memory* %call_4358fb, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, 0x10(%rax)	 RIP: 4358ff	 Bytes: 7
  %loadMem_4358ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4358ff = call %struct.Memory* @routine_movl__0xc521974f__0x10__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4358ff)
  store %struct.Memory* %call_4358ff, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 435906	 Bytes: 4
  %loadMem_435906 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435906 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435906)
  store %struct.Memory* %call_435906, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 43590a	 Bytes: 4
  %loadMem_43590a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43590a = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43590a)
  store %struct.Memory* %call_43590a, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 43590e	 Bytes: 4
  %loadMem_43590e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43590e = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43590e)
  store %struct.Memory* %call_43590e, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, (%rax)	 RIP: 435912	 Bytes: 6
  %loadMem_435912 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435912 = call %struct.Memory* @routine_movl__0xc521974f____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435912)
  store %struct.Memory* %call_435912, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 435918	 Bytes: 4
  %loadMem_435918 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435918 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435918)
  store %struct.Memory* %call_435918, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 43591c	 Bytes: 4
  %loadMem_43591c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43591c = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43591c)
  store %struct.Memory* %call_43591c, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 435920	 Bytes: 4
  %loadMem_435920 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435920 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435920)
  store %struct.Memory* %call_435920, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, 0xc(%rax)	 RIP: 435924	 Bytes: 7
  %loadMem_435924 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435924 = call %struct.Memory* @routine_movl__0xc521974f__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435924)
  store %struct.Memory* %call_435924, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 43592b	 Bytes: 4
  %loadMem_43592b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43592b = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43592b)
  store %struct.Memory* %call_43592b, %struct.Memory** %MEMORY

  ; Code: movl 0x88(%rax), %esi	 RIP: 43592f	 Bytes: 6
  %loadMem_43592f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43592f = call %struct.Memory* @routine_movl_0x88__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43592f)
  store %struct.Memory* %call_43592f, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x50(%rbp)	 RIP: 435935	 Bytes: 3
  %loadMem_435935 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435935 = call %struct.Memory* @routine_movl__esi__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435935)
  store %struct.Memory* %call_435935, %struct.Memory** %MEMORY

  ; Code: .L_435938:	 RIP: 435938	 Bytes: 0
  br label %block_.L_435938
block_.L_435938:

  ; Code: cmpl $0x1, -0x50(%rbp)	 RIP: 435938	 Bytes: 4
  %loadMem_435938 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435938 = call %struct.Memory* @routine_cmpl__0x1__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435938)
  store %struct.Memory* %call_435938, %struct.Memory** %MEMORY

  ; Code: jl .L_4359ed	 RIP: 43593c	 Bytes: 6
  %loadMem_43593c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43593c = call %struct.Memory* @routine_jl_.L_4359ed(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43593c, i8* %BRANCH_TAKEN, i64 177, i64 6, i64 6)
  store %struct.Memory* %call_43593c, %struct.Memory** %MEMORY

  %loadBr_43593c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43593c = icmp eq i8 %loadBr_43593c, 1
  br i1 %cmpBr_43593c, label %block_.L_4359ed, label %block_435942

block_435942:
  ; Code: movq -0x30(%rbp), %rax	 RIP: 435942	 Bytes: 4
  %loadMem_435942 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435942 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435942)
  store %struct.Memory* %call_435942, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 435946	 Bytes: 4
  %loadMem_435946 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435946 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435946)
  store %struct.Memory* %call_435946, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 43594a	 Bytes: 4
  %loadMem_43594a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43594a = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43594a)
  store %struct.Memory* %call_43594a, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %edx	 RIP: 43594e	 Bytes: 3
  %loadMem_43594e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43594e = call %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43594e)
  store %struct.Memory* %call_43594e, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 435951	 Bytes: 4
  %loadMem_435951 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435951 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435951)
  store %struct.Memory* %call_435951, %struct.Memory** %MEMORY

  ; Code: movq 0x178(%rax), %rax	 RIP: 435955	 Bytes: 7
  %loadMem_435955 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435955 = call %struct.Memory* @routine_movq_0x178__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435955)
  store %struct.Memory* %call_435955, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 43595c	 Bytes: 4
  %loadMem_43595c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43595c = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43595c)
  store %struct.Memory* %call_43595c, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rcx,4), %edx	 RIP: 435960	 Bytes: 3
  %loadMem_435960 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435960 = call %struct.Memory* @routine_addl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435960)
  store %struct.Memory* %call_435960, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 435963	 Bytes: 4
  %loadMem_435963 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435963 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435963)
  store %struct.Memory* %call_435963, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 435967	 Bytes: 4
  %loadMem_435967 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435967 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435967)
  store %struct.Memory* %call_435967, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 43596b	 Bytes: 4
  %loadMem_43596b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43596b = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43596b)
  store %struct.Memory* %call_43596b, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 43596f	 Bytes: 4
  %loadMem_43596f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43596f = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43596f)
  store %struct.Memory* %call_43596f, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax,%rcx,4)	 RIP: 435973	 Bytes: 3
  %loadMem_435973 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435973 = call %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435973)
  store %struct.Memory* %call_435973, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 435976	 Bytes: 4
  %loadMem_435976 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435976 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435976)
  store %struct.Memory* %call_435976, %struct.Memory** %MEMORY

  ; Code: movq 0x140(%rax), %rax	 RIP: 43597a	 Bytes: 7
  %loadMem_43597a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43597a = call %struct.Memory* @routine_movq_0x140__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43597a)
  store %struct.Memory* %call_43597a, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 435981	 Bytes: 4
  %loadMem_435981 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435981 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435981)
  store %struct.Memory* %call_435981, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rsi	 RIP: 435985	 Bytes: 4
  %loadMem_435985 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435985 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435985)
  store %struct.Memory* %call_435985, %struct.Memory** %MEMORY

  ; Code: movsbl (%rcx,%rsi,1), %edx	 RIP: 435989	 Bytes: 4
  %loadMem_435989 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435989 = call %struct.Memory* @routine_movsbl___rcx__rsi_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435989)
  store %struct.Memory* %call_435989, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 43598d	 Bytes: 3
  %loadMem_43598d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43598d = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43598d)
  store %struct.Memory* %call_43598d, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 435990	 Bytes: 4
  %loadMem_435990 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435990 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435990)
  store %struct.Memory* %call_435990, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 435994	 Bytes: 4
  %loadMem_435994 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435994 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435994)
  store %struct.Memory* %call_435994, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 435998	 Bytes: 3
  %loadMem_435998 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435998 = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435998)
  store %struct.Memory* %call_435998, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 43599b	 Bytes: 4
  %loadMem_43599b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43599b = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43599b)
  store %struct.Memory* %call_43599b, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 43599f	 Bytes: 4
  %loadMem_43599f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43599f = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43599f)
  store %struct.Memory* %call_43599f, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4359a3	 Bytes: 4
  %loadMem_4359a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4359a3 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4359a3)
  store %struct.Memory* %call_4359a3, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 4359a7	 Bytes: 4
  %loadMem_4359a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4359a7 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4359a7)
  store %struct.Memory* %call_4359a7, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rcx,4), %edx	 RIP: 4359ab	 Bytes: 3
  %loadMem_4359ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4359ab = call %struct.Memory* @routine_addl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4359ab)
  store %struct.Memory* %call_4359ab, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax,%rcx,4)	 RIP: 4359ae	 Bytes: 3
  %loadMem_4359ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4359ae = call %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4359ae)
  store %struct.Memory* %call_4359ae, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 4359b1	 Bytes: 4
  %loadMem_4359b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4359b1 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4359b1)
  store %struct.Memory* %call_4359b1, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 4359b5	 Bytes: 4
  %loadMem_4359b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4359b5 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4359b5)
  store %struct.Memory* %call_4359b5, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4359b9	 Bytes: 4
  %loadMem_4359b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4359b9 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4359b9)
  store %struct.Memory* %call_4359b9, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 4359bd	 Bytes: 4
  %loadMem_4359bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4359bd = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4359bd)
  store %struct.Memory* %call_4359bd, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, (%rax,%rcx,4)	 RIP: 4359c1	 Bytes: 7
  %loadMem_4359c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4359c1 = call %struct.Memory* @routine_movl__0xc521974f____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4359c1)
  store %struct.Memory* %call_4359c1, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rax	 RIP: 4359c8	 Bytes: 4
  %loadMem_4359c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4359c8 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4359c8)
  store %struct.Memory* %call_4359c8, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 4359cc	 Bytes: 4
  %loadMem_4359cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4359cc = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4359cc)
  store %struct.Memory* %call_4359cc, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4359d0	 Bytes: 4
  %loadMem_4359d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4359d0 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4359d0)
  store %struct.Memory* %call_4359d0, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 4359d4	 Bytes: 4
  %loadMem_4359d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4359d4 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4359d4)
  store %struct.Memory* %call_4359d4, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, (%rax,%rcx,4)	 RIP: 4359d8	 Bytes: 7
  %loadMem_4359d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4359d8 = call %struct.Memory* @routine_movl__0xc521974f____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4359d8)
  store %struct.Memory* %call_4359d8, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %eax	 RIP: 4359df	 Bytes: 3
  %loadMem_4359df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4359df = call %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4359df)
  store %struct.Memory* %call_4359df, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %eax	 RIP: 4359e2	 Bytes: 3
  %loadMem_4359e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4359e2 = call %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4359e2)
  store %struct.Memory* %call_4359e2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x50(%rbp)	 RIP: 4359e5	 Bytes: 3
  %loadMem_4359e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4359e5 = call %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4359e5)
  store %struct.Memory* %call_4359e5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_435938	 RIP: 4359e8	 Bytes: 5
  %loadMem_4359e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4359e8 = call %struct.Memory* @routine_jmpq_.L_435938(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4359e8, i64 -176, i64 5)
  store %struct.Memory* %call_4359e8, %struct.Memory** %MEMORY

  br label %block_.L_435938

  ; Code: .L_4359ed:	 RIP: 4359ed	 Bytes: 0
block_.L_4359ed:

  ; Code: movq -0x18(%rbp), %rax	 RIP: 4359ed	 Bytes: 4
  %loadMem_4359ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4359ed = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4359ed)
  store %struct.Memory* %call_4359ed, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rax), %rax	 RIP: 4359f1	 Bytes: 7
  %loadMem_4359f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4359f1 = call %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4359f1)
  store %struct.Memory* %call_4359f1, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 4359f8	 Bytes: 4
  %loadMem_4359f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4359f8 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4359f8)
  store %struct.Memory* %call_4359f8, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4359fc	 Bytes: 4
  %loadMem_4359fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4359fc = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4359fc)
  store %struct.Memory* %call_4359fc, %struct.Memory** %MEMORY

  ; Code: movl 0x88(%rcx), %edx	 RIP: 435a00	 Bytes: 6
  %loadMem_435a00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435a00 = call %struct.Memory* @routine_movl_0x88__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435a00)
  store %struct.Memory* %call_435a00, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 435a06	 Bytes: 3
  %loadMem_435a06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435a06 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435a06)
  store %struct.Memory* %call_435a06, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 435a09	 Bytes: 3
  %loadMem_435a09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435a09 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435a09)
  store %struct.Memory* %call_435a09, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, (%rax,%rcx,4)	 RIP: 435a0c	 Bytes: 7
  %loadMem_435a0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435a0c = call %struct.Memory* @routine_movl__0xc521974f____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435a0c)
  store %struct.Memory* %call_435a0c, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 435a13	 Bytes: 4
  %loadMem_435a13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435a13 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435a13)
  store %struct.Memory* %call_435a13, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rax), %rax	 RIP: 435a17	 Bytes: 7
  %loadMem_435a17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435a17 = call %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435a17)
  store %struct.Memory* %call_435a17, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rax), %rax	 RIP: 435a1e	 Bytes: 4
  %loadMem_435a1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435a1e = call %struct.Memory* @routine_movq_0x30__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435a1e)
  store %struct.Memory* %call_435a1e, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 435a22	 Bytes: 4
  %loadMem_435a22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435a22 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435a22)
  store %struct.Memory* %call_435a22, %struct.Memory** %MEMORY

  ; Code: movl 0x88(%rcx), %edx	 RIP: 435a26	 Bytes: 6
  %loadMem_435a26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435a26 = call %struct.Memory* @routine_movl_0x88__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435a26)
  store %struct.Memory* %call_435a26, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 435a2c	 Bytes: 3
  %loadMem_435a2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435a2c = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435a2c)
  store %struct.Memory* %call_435a2c, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 435a2f	 Bytes: 3
  %loadMem_435a2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435a2f = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435a2f)
  store %struct.Memory* %call_435a2f, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, (%rax,%rcx,4)	 RIP: 435a32	 Bytes: 7
  %loadMem_435a32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435a32 = call %struct.Memory* @routine_movl__0xc521974f____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435a32)
  store %struct.Memory* %call_435a32, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %edx	 RIP: 435a39	 Bytes: 3
  %loadMem_435a39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435a39 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435a39)
  store %struct.Memory* %call_435a39, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 435a3c	 Bytes: 3
  %loadMem_435a3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435a3c = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435a3c)
  store %struct.Memory* %call_435a3c, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x4c(%rbp)	 RIP: 435a3f	 Bytes: 3
  %loadMem_435a3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435a3f = call %struct.Memory* @routine_movl__edx__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435a3f)
  store %struct.Memory* %call_435a3f, %struct.Memory** %MEMORY

  ; Code: .L_435a42:	 RIP: 435a42	 Bytes: 0
  br label %block_.L_435a42
block_.L_435a42:

  ; Code: cmpl $0x0, -0x4c(%rbp)	 RIP: 435a42	 Bytes: 4
  %loadMem_435a42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435a42 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435a42)
  store %struct.Memory* %call_435a42, %struct.Memory** %MEMORY

  ; Code: jl .L_435f7e	 RIP: 435a46	 Bytes: 6
  %loadMem_435a46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435a46 = call %struct.Memory* @routine_jl_.L_435f7e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435a46, i8* %BRANCH_TAKEN, i64 1336, i64 6, i64 6)
  store %struct.Memory* %call_435a46, %struct.Memory** %MEMORY

  %loadBr_435a46 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_435a46 = icmp eq i8 %loadBr_435a46, 1
  br i1 %cmpBr_435a46, label %block_.L_435f7e, label %block_435a4c

block_435a4c:
  ; Code: movq -0x30(%rbp), %rax	 RIP: 435a4c	 Bytes: 4
  %loadMem_435a4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435a4c = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435a4c)
  store %struct.Memory* %call_435a4c, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %ecx	 RIP: 435a50	 Bytes: 3
  %loadMem_435a50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435a50 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435a50)
  store %struct.Memory* %call_435a50, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 435a53	 Bytes: 3
  %loadMem_435a53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435a53 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435a53)
  store %struct.Memory* %call_435a53, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 435a56	 Bytes: 3
  %loadMem_435a56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435a56 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435a56)
  store %struct.Memory* %call_435a56, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 435a59	 Bytes: 4
  %loadMem_435a59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435a59 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435a59)
  store %struct.Memory* %call_435a59, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rax), %ecx	 RIP: 435a5d	 Bytes: 3
  %loadMem_435a5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435a5d = call %struct.Memory* @routine_movl_0x8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435a5d)
  store %struct.Memory* %call_435a5d, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 435a60	 Bytes: 4
  %loadMem_435a60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435a60 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435a60)
  store %struct.Memory* %call_435a60, %struct.Memory** %MEMORY

  ; Code: addl 0x164(%rax), %ecx	 RIP: 435a64	 Bytes: 6
  %loadMem_435a64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435a64 = call %struct.Memory* @routine_addl_0x164__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435a64)
  store %struct.Memory* %call_435a64, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 435a6a	 Bytes: 4
  %loadMem_435a6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435a6a = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435a6a)
  store %struct.Memory* %call_435a6a, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 435a6e	 Bytes: 4
  %loadMem_435a6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435a6e = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435a6e)
  store %struct.Memory* %call_435a6e, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 435a72	 Bytes: 4
  %loadMem_435a72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435a72 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435a72)
  store %struct.Memory* %call_435a72, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8(%rax)	 RIP: 435a76	 Bytes: 3
  %loadMem_435a76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435a76 = call %struct.Memory* @routine_movl__ecx__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435a76)
  store %struct.Memory* %call_435a76, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 435a79	 Bytes: 4
  %loadMem_435a79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435a79 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435a79)
  store %struct.Memory* %call_435a79, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 435a7d	 Bytes: 4
  %loadMem_435a7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435a7d = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435a7d)
  store %struct.Memory* %call_435a7d, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 435a81	 Bytes: 4
  %loadMem_435a81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435a81 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435a81)
  store %struct.Memory* %call_435a81, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, (%rax)	 RIP: 435a85	 Bytes: 6
  %loadMem_435a85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435a85 = call %struct.Memory* @routine_movl__0xc521974f____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435a85)
  store %struct.Memory* %call_435a85, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 435a8b	 Bytes: 4
  %loadMem_435a8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435a8b = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435a8b)
  store %struct.Memory* %call_435a8b, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 435a8f	 Bytes: 4
  %loadMem_435a8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435a8f = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435a8f)
  store %struct.Memory* %call_435a8f, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 435a93	 Bytes: 4
  %loadMem_435a93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435a93 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435a93)
  store %struct.Memory* %call_435a93, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %edi	 RIP: 435a97	 Bytes: 2
  %loadMem_435a97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435a97 = call %struct.Memory* @routine_movl___rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435a97)
  store %struct.Memory* %call_435a97, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 435a99	 Bytes: 4
  %loadMem_435a99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435a99 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435a99)
  store %struct.Memory* %call_435a99, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %ecx	 RIP: 435a9d	 Bytes: 3
  %loadMem_435a9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435a9d = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435a9d)
  store %struct.Memory* %call_435a9d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 435aa0	 Bytes: 3
  %loadMem_435aa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435aa0 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435aa0)
  store %struct.Memory* %call_435aa0, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 435aa3	 Bytes: 3
  %loadMem_435aa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435aa3 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435aa3)
  store %struct.Memory* %call_435aa3, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 435aa6	 Bytes: 4
  %loadMem_435aa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435aa6 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435aa6)
  store %struct.Memory* %call_435aa6, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 435aaa	 Bytes: 4
  %loadMem_435aaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435aaa = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435aaa)
  store %struct.Memory* %call_435aaa, %struct.Memory** %MEMORY

  ; Code: movslq 0x88(%rdx), %rdx	 RIP: 435aae	 Bytes: 7
  %loadMem_435aae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435aae = call %struct.Memory* @routine_movslq_0x88__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435aae)
  store %struct.Memory* %call_435aae, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rdx,4), %ecx	 RIP: 435ab5	 Bytes: 3
  %loadMem_435ab5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435ab5 = call %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435ab5)
  store %struct.Memory* %call_435ab5, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 435ab8	 Bytes: 4
  %loadMem_435ab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435ab8 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435ab8)
  store %struct.Memory* %call_435ab8, %struct.Memory** %MEMORY

  ; Code: movq 0x170(%rax), %rax	 RIP: 435abc	 Bytes: 7
  %loadMem_435abc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435abc = call %struct.Memory* @routine_movq_0x170__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435abc)
  store %struct.Memory* %call_435abc, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 435ac3	 Bytes: 4
  %loadMem_435ac3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435ac3 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435ac3)
  store %struct.Memory* %call_435ac3, %struct.Memory** %MEMORY

  ; Code: movl 0x88(%rdx), %esi	 RIP: 435ac7	 Bytes: 6
  %loadMem_435ac7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435ac7 = call %struct.Memory* @routine_movl_0x88__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435ac7)
  store %struct.Memory* %call_435ac7, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 435acd	 Bytes: 3
  %loadMem_435acd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435acd = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435acd)
  store %struct.Memory* %call_435acd, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdx	 RIP: 435ad0	 Bytes: 3
  %loadMem_435ad0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435ad0 = call %struct.Memory* @routine_movslq__esi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435ad0)
  store %struct.Memory* %call_435ad0, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rdx,4), %ecx	 RIP: 435ad3	 Bytes: 3
  %loadMem_435ad3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435ad3 = call %struct.Memory* @routine_addl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435ad3)
  store %struct.Memory* %call_435ad3, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %esi	 RIP: 435ad6	 Bytes: 2
  %loadMem_435ad6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435ad6 = call %struct.Memory* @routine_movl__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435ad6)
  store %struct.Memory* %call_435ad6, %struct.Memory** %MEMORY

  ; Code: callq .ILogsum	 RIP: 435ad8	 Bytes: 5
  %loadMem1_435ad8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_435ad8 = call %struct.Memory* @routine_callq_.ILogsum(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_435ad8, i64 -55592, i64 5, i64 5)
  store %struct.Memory* %call1_435ad8, %struct.Memory** %MEMORY

  %loadMem2_435ad8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_435ad8 = load i64, i64* %3
  %call2_435ad8 = call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* %0, i64  %loadPC_435ad8, %struct.Memory* %loadMem2_435ad8)
  store %struct.Memory* %call2_435ad8, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rdx	 RIP: 435add	 Bytes: 4
  %loadMem_435add = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435add = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435add)
  store %struct.Memory* %call_435add, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %r8	 RIP: 435ae1	 Bytes: 4
  %loadMem_435ae1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435ae1 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435ae1)
  store %struct.Memory* %call_435ae1, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%r8,8), %rdx	 RIP: 435ae5	 Bytes: 4
  %loadMem_435ae5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435ae5 = call %struct.Memory* @routine_movq___rdx__r8_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435ae5)
  store %struct.Memory* %call_435ae5, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rdx)	 RIP: 435ae9	 Bytes: 2
  %loadMem_435ae9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435ae9 = call %struct.Memory* @routine_movl__eax____rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435ae9)
  store %struct.Memory* %call_435ae9, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 435aeb	 Bytes: 4
  %loadMem_435aeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435aeb = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435aeb)
  store %struct.Memory* %call_435aeb, %struct.Memory** %MEMORY

  ; Code: movl 0x88(%rdx), %eax	 RIP: 435aef	 Bytes: 6
  %loadMem_435aef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435aef = call %struct.Memory* @routine_movl_0x88__rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435aef)
  store %struct.Memory* %call_435aef, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 435af5	 Bytes: 3
  %loadMem_435af5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435af5 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435af5)
  store %struct.Memory* %call_435af5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x50(%rbp)	 RIP: 435af8	 Bytes: 3
  %loadMem_435af8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435af8 = call %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435af8)
  store %struct.Memory* %call_435af8, %struct.Memory** %MEMORY

  ; Code: .L_435afb:	 RIP: 435afb	 Bytes: 0
  br label %block_.L_435afb
block_.L_435afb:

  ; Code: cmpl $0x1, -0x50(%rbp)	 RIP: 435afb	 Bytes: 4
  %loadMem_435afb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435afb = call %struct.Memory* @routine_cmpl__0x1__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435afb)
  store %struct.Memory* %call_435afb, %struct.Memory** %MEMORY

  ; Code: jl .L_435b60	 RIP: 435aff	 Bytes: 6
  %loadMem_435aff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435aff = call %struct.Memory* @routine_jl_.L_435b60(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435aff, i8* %BRANCH_TAKEN, i64 97, i64 6, i64 6)
  store %struct.Memory* %call_435aff, %struct.Memory** %MEMORY

  %loadBr_435aff = load i8, i8* %BRANCH_TAKEN
  %cmpBr_435aff = icmp eq i8 %loadBr_435aff, 1
  br i1 %cmpBr_435aff, label %block_.L_435b60, label %block_435b05

block_435b05:
  ; Code: movq -0x30(%rbp), %rax	 RIP: 435b05	 Bytes: 4
  %loadMem_435b05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435b05 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435b05)
  store %struct.Memory* %call_435b05, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rcx	 RIP: 435b09	 Bytes: 4
  %loadMem_435b09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435b09 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435b09)
  store %struct.Memory* %call_435b09, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 435b0d	 Bytes: 4
  %loadMem_435b0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435b0d = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435b0d)
  store %struct.Memory* %call_435b0d, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %edi	 RIP: 435b11	 Bytes: 2
  %loadMem_435b11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435b11 = call %struct.Memory* @routine_movl___rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435b11)
  store %struct.Memory* %call_435b11, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 435b13	 Bytes: 4
  %loadMem_435b13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435b13 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435b13)
  store %struct.Memory* %call_435b13, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %edx	 RIP: 435b17	 Bytes: 3
  %loadMem_435b17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435b17 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435b17)
  store %struct.Memory* %call_435b17, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 435b1a	 Bytes: 3
  %loadMem_435b1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435b1a = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435b1a)
  store %struct.Memory* %call_435b1a, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 435b1d	 Bytes: 3
  %loadMem_435b1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435b1d = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435b1d)
  store %struct.Memory* %call_435b1d, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 435b20	 Bytes: 4
  %loadMem_435b20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435b20 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435b20)
  store %struct.Memory* %call_435b20, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 435b24	 Bytes: 4
  %loadMem_435b24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435b24 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435b24)
  store %struct.Memory* %call_435b24, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 435b28	 Bytes: 3
  %loadMem_435b28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435b28 = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435b28)
  store %struct.Memory* %call_435b28, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 435b2b	 Bytes: 4
  %loadMem_435b2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435b2b = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435b2b)
  store %struct.Memory* %call_435b2b, %struct.Memory** %MEMORY

  ; Code: movq 0x170(%rax), %rax	 RIP: 435b2f	 Bytes: 7
  %loadMem_435b2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435b2f = call %struct.Memory* @routine_movq_0x170__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435b2f)
  store %struct.Memory* %call_435b2f, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 435b36	 Bytes: 4
  %loadMem_435b36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435b36 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435b36)
  store %struct.Memory* %call_435b36, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rcx,4), %edx	 RIP: 435b3a	 Bytes: 3
  %loadMem_435b3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435b3a = call %struct.Memory* @routine_addl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435b3a)
  store %struct.Memory* %call_435b3a, %struct.Memory** %MEMORY

  ; Code: movl %edx, %esi	 RIP: 435b3d	 Bytes: 2
  %loadMem_435b3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435b3d = call %struct.Memory* @routine_movl__edx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435b3d)
  store %struct.Memory* %call_435b3d, %struct.Memory** %MEMORY

  ; Code: callq .ILogsum	 RIP: 435b3f	 Bytes: 5
  %loadMem1_435b3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_435b3f = call %struct.Memory* @routine_callq_.ILogsum(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_435b3f, i64 -55695, i64 5, i64 5)
  store %struct.Memory* %call1_435b3f, %struct.Memory** %MEMORY

  %loadMem2_435b3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_435b3f = load i64, i64* %3
  %call2_435b3f = call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* %0, i64  %loadPC_435b3f, %struct.Memory* %loadMem2_435b3f)
  store %struct.Memory* %call2_435b3f, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rcx	 RIP: 435b44	 Bytes: 4
  %loadMem_435b44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435b44 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435b44)
  store %struct.Memory* %call_435b44, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %r8	 RIP: 435b48	 Bytes: 4
  %loadMem_435b48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435b48 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435b48)
  store %struct.Memory* %call_435b48, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r8,8), %rcx	 RIP: 435b4c	 Bytes: 4
  %loadMem_435b4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435b4c = call %struct.Memory* @routine_movq___rcx__r8_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435b4c)
  store %struct.Memory* %call_435b4c, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 435b50	 Bytes: 2
  %loadMem_435b50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435b50 = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435b50)
  store %struct.Memory* %call_435b50, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %eax	 RIP: 435b52	 Bytes: 3
  %loadMem_435b52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435b52 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435b52)
  store %struct.Memory* %call_435b52, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %eax	 RIP: 435b55	 Bytes: 3
  %loadMem_435b55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435b55 = call %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435b55)
  store %struct.Memory* %call_435b55, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x50(%rbp)	 RIP: 435b58	 Bytes: 3
  %loadMem_435b58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435b58 = call %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435b58)
  store %struct.Memory* %call_435b58, %struct.Memory** %MEMORY

  ; Code: jmpq .L_435afb	 RIP: 435b5b	 Bytes: 5
  %loadMem_435b5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435b5b = call %struct.Memory* @routine_jmpq_.L_435afb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435b5b, i64 -96, i64 5)
  store %struct.Memory* %call_435b5b, %struct.Memory** %MEMORY

  br label %block_.L_435afb

  ; Code: .L_435b60:	 RIP: 435b60	 Bytes: 0
block_.L_435b60:

  ; Code: movq -0x30(%rbp), %rax	 RIP: 435b60	 Bytes: 4
  %loadMem_435b60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435b60 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435b60)
  store %struct.Memory* %call_435b60, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rcx	 RIP: 435b64	 Bytes: 4
  %loadMem_435b64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435b64 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435b64)
  store %struct.Memory* %call_435b64, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 435b68	 Bytes: 4
  %loadMem_435b68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435b68 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435b68)
  store %struct.Memory* %call_435b68, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %edx	 RIP: 435b6c	 Bytes: 2
  %loadMem_435b6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435b6c = call %struct.Memory* @routine_movl___rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435b6c)
  store %struct.Memory* %call_435b6c, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 435b6e	 Bytes: 4
  %loadMem_435b6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435b6e = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435b6e)
  store %struct.Memory* %call_435b6e, %struct.Memory** %MEMORY

  ; Code: addl 0x168(%rax), %edx	 RIP: 435b72	 Bytes: 6
  %loadMem_435b72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435b72 = call %struct.Memory* @routine_addl_0x168__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435b72)
  store %struct.Memory* %call_435b72, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 435b78	 Bytes: 4
  %loadMem_435b78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435b78 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435b78)
  store %struct.Memory* %call_435b78, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %esi	 RIP: 435b7c	 Bytes: 3
  %loadMem_435b7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435b7c = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435b7c)
  store %struct.Memory* %call_435b7c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 435b7f	 Bytes: 3
  %loadMem_435b7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435b7f = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435b7f)
  store %struct.Memory* %call_435b7f, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 435b82	 Bytes: 3
  %loadMem_435b82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435b82 = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435b82)
  store %struct.Memory* %call_435b82, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 435b85	 Bytes: 4
  %loadMem_435b85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435b85 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435b85)
  store %struct.Memory* %call_435b85, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %esi	 RIP: 435b89	 Bytes: 3
  %loadMem_435b89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435b89 = call %struct.Memory* @routine_movl_0xc__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435b89)
  store %struct.Memory* %call_435b89, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 435b8c	 Bytes: 4
  %loadMem_435b8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435b8c = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435b8c)
  store %struct.Memory* %call_435b8c, %struct.Memory** %MEMORY

  ; Code: addl 0x16c(%rax), %esi	 RIP: 435b90	 Bytes: 6
  %loadMem_435b90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435b90 = call %struct.Memory* @routine_addl_0x16c__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435b90)
  store %struct.Memory* %call_435b90, %struct.Memory** %MEMORY

  ; Code: movl %edx, %edi	 RIP: 435b96	 Bytes: 2
  %loadMem_435b96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435b96 = call %struct.Memory* @routine_movl__edx___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435b96)
  store %struct.Memory* %call_435b96, %struct.Memory** %MEMORY

  ; Code: callq .ILogsum	 RIP: 435b98	 Bytes: 5
  %loadMem1_435b98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_435b98 = call %struct.Memory* @routine_callq_.ILogsum(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_435b98, i64 -55784, i64 5, i64 5)
  store %struct.Memory* %call1_435b98, %struct.Memory** %MEMORY

  %loadMem2_435b98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_435b98 = load i64, i64* %3
  %call2_435b98 = call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* %0, i64  %loadPC_435b98, %struct.Memory* %loadMem2_435b98)
  store %struct.Memory* %call2_435b98, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rcx	 RIP: 435b9d	 Bytes: 4
  %loadMem_435b9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435b9d = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435b9d)
  store %struct.Memory* %call_435b9d, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %r8	 RIP: 435ba1	 Bytes: 4
  %loadMem_435ba1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435ba1 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435ba1)
  store %struct.Memory* %call_435ba1, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r8,8), %rcx	 RIP: 435ba5	 Bytes: 4
  %loadMem_435ba5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435ba5 = call %struct.Memory* @routine_movq___rcx__r8_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435ba5)
  store %struct.Memory* %call_435ba5, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0xc(%rcx)	 RIP: 435ba9	 Bytes: 3
  %loadMem_435ba9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435ba9 = call %struct.Memory* @routine_movl__eax__0xc__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435ba9)
  store %struct.Memory* %call_435ba9, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rcx	 RIP: 435bac	 Bytes: 4
  %loadMem_435bac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435bac = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435bac)
  store %struct.Memory* %call_435bac, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %r8	 RIP: 435bb0	 Bytes: 4
  %loadMem_435bb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435bb0 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435bb0)
  store %struct.Memory* %call_435bb0, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r8,8), %rcx	 RIP: 435bb4	 Bytes: 4
  %loadMem_435bb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435bb4 = call %struct.Memory* @routine_movq___rcx__r8_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435bb4)
  store %struct.Memory* %call_435bb4, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rcx), %eax	 RIP: 435bb8	 Bytes: 3
  %loadMem_435bb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435bb8 = call %struct.Memory* @routine_movl_0x8__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435bb8)
  store %struct.Memory* %call_435bb8, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 435bbb	 Bytes: 4
  %loadMem_435bbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435bbb = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435bbb)
  store %struct.Memory* %call_435bbb, %struct.Memory** %MEMORY

  ; Code: addl 0x158(%rcx), %eax	 RIP: 435bbf	 Bytes: 6
  %loadMem_435bbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435bbf = call %struct.Memory* @routine_addl_0x158__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435bbf)
  store %struct.Memory* %call_435bbf, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rcx	 RIP: 435bc5	 Bytes: 4
  %loadMem_435bc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435bc5 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435bc5)
  store %struct.Memory* %call_435bc5, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %r8	 RIP: 435bc9	 Bytes: 4
  %loadMem_435bc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435bc9 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435bc9)
  store %struct.Memory* %call_435bc9, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r8,8), %rcx	 RIP: 435bcd	 Bytes: 4
  %loadMem_435bcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435bcd = call %struct.Memory* @routine_movq___rcx__r8_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435bcd)
  store %struct.Memory* %call_435bcd, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rcx), %edx	 RIP: 435bd1	 Bytes: 3
  %loadMem_435bd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435bd1 = call %struct.Memory* @routine_movl_0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435bd1)
  store %struct.Memory* %call_435bd1, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 435bd4	 Bytes: 4
  %loadMem_435bd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435bd4 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435bd4)
  store %struct.Memory* %call_435bd4, %struct.Memory** %MEMORY

  ; Code: addl 0x15c(%rcx), %edx	 RIP: 435bd8	 Bytes: 6
  %loadMem_435bd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435bd8 = call %struct.Memory* @routine_addl_0x15c__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435bd8)
  store %struct.Memory* %call_435bd8, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 435bde	 Bytes: 2
  %loadMem_435bde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435bde = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435bde)
  store %struct.Memory* %call_435bde, %struct.Memory** %MEMORY

  ; Code: movl %edx, %esi	 RIP: 435be0	 Bytes: 2
  %loadMem_435be0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435be0 = call %struct.Memory* @routine_movl__edx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435be0)
  store %struct.Memory* %call_435be0, %struct.Memory** %MEMORY

  ; Code: callq .ILogsum	 RIP: 435be2	 Bytes: 5
  %loadMem1_435be2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_435be2 = call %struct.Memory* @routine_callq_.ILogsum(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_435be2, i64 -55858, i64 5, i64 5)
  store %struct.Memory* %call1_435be2, %struct.Memory** %MEMORY

  %loadMem2_435be2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_435be2 = load i64, i64* %3
  %call2_435be2 = call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* %0, i64  %loadPC_435be2, %struct.Memory* %loadMem2_435be2)
  store %struct.Memory* %call2_435be2, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rcx	 RIP: 435be7	 Bytes: 4
  %loadMem_435be7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435be7 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435be7)
  store %struct.Memory* %call_435be7, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %r8	 RIP: 435beb	 Bytes: 4
  %loadMem_435beb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435beb = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435beb)
  store %struct.Memory* %call_435beb, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r8,8), %rcx	 RIP: 435bef	 Bytes: 4
  %loadMem_435bef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435bef = call %struct.Memory* @routine_movq___rcx__r8_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435bef)
  store %struct.Memory* %call_435bef, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x4(%rcx)	 RIP: 435bf3	 Bytes: 3
  %loadMem_435bf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435bf3 = call %struct.Memory* @routine_movl__eax__0x4__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435bf3)
  store %struct.Memory* %call_435bf3, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rcx	 RIP: 435bf6	 Bytes: 4
  %loadMem_435bf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435bf6 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435bf6)
  store %struct.Memory* %call_435bf6, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %r8	 RIP: 435bfa	 Bytes: 4
  %loadMem_435bfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435bfa = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435bfa)
  store %struct.Memory* %call_435bfa, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r8,8), %rcx	 RIP: 435bfe	 Bytes: 4
  %loadMem_435bfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435bfe = call %struct.Memory* @routine_movq___rcx__r8_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435bfe)
  store %struct.Memory* %call_435bfe, %struct.Memory** %MEMORY

  ; Code: movl (%rcx), %eax	 RIP: 435c02	 Bytes: 2
  %loadMem_435c02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435c02 = call %struct.Memory* @routine_movl___rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435c02)
  store %struct.Memory* %call_435c02, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 435c04	 Bytes: 4
  %loadMem_435c04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435c04 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435c04)
  store %struct.Memory* %call_435c04, %struct.Memory** %MEMORY

  ; Code: addl 0x150(%rcx), %eax	 RIP: 435c08	 Bytes: 6
  %loadMem_435c08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435c08 = call %struct.Memory* @routine_addl_0x150__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435c08)
  store %struct.Memory* %call_435c08, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rcx	 RIP: 435c0e	 Bytes: 4
  %loadMem_435c0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435c0e = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435c0e)
  store %struct.Memory* %call_435c0e, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %edx	 RIP: 435c12	 Bytes: 3
  %loadMem_435c12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435c12 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435c12)
  store %struct.Memory* %call_435c12, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 435c15	 Bytes: 3
  %loadMem_435c15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435c15 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435c15)
  store %struct.Memory* %call_435c15, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %r8	 RIP: 435c18	 Bytes: 3
  %loadMem_435c18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435c18 = call %struct.Memory* @routine_movslq__edx___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435c18)
  store %struct.Memory* %call_435c18, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r8,8), %rcx	 RIP: 435c1b	 Bytes: 4
  %loadMem_435c1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435c1b = call %struct.Memory* @routine_movq___rcx__r8_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435c1b)
  store %struct.Memory* %call_435c1b, %struct.Memory** %MEMORY

  ; Code: movl 0x10(%rcx), %edx	 RIP: 435c1f	 Bytes: 3
  %loadMem_435c1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435c1f = call %struct.Memory* @routine_movl_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435c1f)
  store %struct.Memory* %call_435c1f, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 435c22	 Bytes: 4
  %loadMem_435c22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435c22 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435c22)
  store %struct.Memory* %call_435c22, %struct.Memory** %MEMORY

  ; Code: addl 0x154(%rcx), %edx	 RIP: 435c26	 Bytes: 6
  %loadMem_435c26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435c26 = call %struct.Memory* @routine_addl_0x154__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435c26)
  store %struct.Memory* %call_435c26, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 435c2c	 Bytes: 2
  %loadMem_435c2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435c2c = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435c2c)
  store %struct.Memory* %call_435c2c, %struct.Memory** %MEMORY

  ; Code: movl %edx, %esi	 RIP: 435c2e	 Bytes: 2
  %loadMem_435c2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435c2e = call %struct.Memory* @routine_movl__edx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435c2e)
  store %struct.Memory* %call_435c2e, %struct.Memory** %MEMORY

  ; Code: callq .ILogsum	 RIP: 435c30	 Bytes: 5
  %loadMem1_435c30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_435c30 = call %struct.Memory* @routine_callq_.ILogsum(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_435c30, i64 -55936, i64 5, i64 5)
  store %struct.Memory* %call1_435c30, %struct.Memory** %MEMORY

  %loadMem2_435c30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_435c30 = load i64, i64* %3
  %call2_435c30 = call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* %0, i64  %loadPC_435c30, %struct.Memory* %loadMem2_435c30)
  store %struct.Memory* %call2_435c30, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rcx	 RIP: 435c35	 Bytes: 4
  %loadMem_435c35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435c35 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435c35)
  store %struct.Memory* %call_435c35, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %r8	 RIP: 435c39	 Bytes: 4
  %loadMem_435c39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435c39 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435c39)
  store %struct.Memory* %call_435c39, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r8,8), %rcx	 RIP: 435c3d	 Bytes: 4
  %loadMem_435c3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435c3d = call %struct.Memory* @routine_movq___rcx__r8_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435c3d)
  store %struct.Memory* %call_435c3d, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x10(%rcx)	 RIP: 435c41	 Bytes: 3
  %loadMem_435c41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435c41 = call %struct.Memory* @routine_movl__eax__0x10__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435c41)
  store %struct.Memory* %call_435c41, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x4c(%rbp)	 RIP: 435c44	 Bytes: 4
  %loadMem_435c44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435c44 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435c44)
  store %struct.Memory* %call_435c44, %struct.Memory** %MEMORY

  ; Code: jle .L_435f6b	 RIP: 435c48	 Bytes: 6
  %loadMem_435c48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435c48 = call %struct.Memory* @routine_jle_.L_435f6b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435c48, i8* %BRANCH_TAKEN, i64 803, i64 6, i64 6)
  store %struct.Memory* %call_435c48, %struct.Memory** %MEMORY

  %loadBr_435c48 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_435c48 = icmp eq i8 %loadBr_435c48, 1
  br i1 %cmpBr_435c48, label %block_.L_435f6b, label %block_435c4e

block_435c4e:
  ; Code: movq -0x30(%rbp), %rax	 RIP: 435c4e	 Bytes: 4
  %loadMem_435c4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435c4e = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435c4e)
  store %struct.Memory* %call_435c4e, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rcx	 RIP: 435c52	 Bytes: 4
  %loadMem_435c52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435c52 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435c52)
  store %struct.Memory* %call_435c52, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 435c56	 Bytes: 4
  %loadMem_435c56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435c56 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435c56)
  store %struct.Memory* %call_435c56, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %edx	 RIP: 435c5a	 Bytes: 3
  %loadMem_435c5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435c5a = call %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435c5a)
  store %struct.Memory* %call_435c5a, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 435c5d	 Bytes: 4
  %loadMem_435c5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435c5d = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435c5d)
  store %struct.Memory* %call_435c5d, %struct.Memory** %MEMORY

  ; Code: movq 0x178(%rax), %rax	 RIP: 435c61	 Bytes: 7
  %loadMem_435c61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435c61 = call %struct.Memory* @routine_movq_0x178__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435c61)
  store %struct.Memory* %call_435c61, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 435c68	 Bytes: 4
  %loadMem_435c68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435c68 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435c68)
  store %struct.Memory* %call_435c68, %struct.Memory** %MEMORY

  ; Code: movslq 0x88(%rcx), %rcx	 RIP: 435c6c	 Bytes: 7
  %loadMem_435c6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435c6c = call %struct.Memory* @routine_movslq_0x88__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435c6c)
  store %struct.Memory* %call_435c6c, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rcx,4), %edx	 RIP: 435c73	 Bytes: 3
  %loadMem_435c73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435c73 = call %struct.Memory* @routine_addl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435c73)
  store %struct.Memory* %call_435c73, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 435c76	 Bytes: 4
  %loadMem_435c76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435c76 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435c76)
  store %struct.Memory* %call_435c76, %struct.Memory** %MEMORY

  ; Code: movq 0x140(%rax), %rax	 RIP: 435c7a	 Bytes: 7
  %loadMem_435c7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435c7a = call %struct.Memory* @routine_movq_0x140__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435c7a)
  store %struct.Memory* %call_435c7a, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 435c81	 Bytes: 4
  %loadMem_435c81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435c81 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435c81)
  store %struct.Memory* %call_435c81, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rsi	 RIP: 435c85	 Bytes: 4
  %loadMem_435c85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435c85 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435c85)
  store %struct.Memory* %call_435c85, %struct.Memory** %MEMORY

  ; Code: movsbl (%rcx,%rsi,1), %edi	 RIP: 435c89	 Bytes: 4
  %loadMem_435c89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435c89 = call %struct.Memory* @routine_movsbl___rcx__rsi_1____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435c89)
  store %struct.Memory* %call_435c89, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %rcx	 RIP: 435c8d	 Bytes: 3
  %loadMem_435c8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435c8d = call %struct.Memory* @routine_movslq__edi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435c8d)
  store %struct.Memory* %call_435c8d, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 435c90	 Bytes: 4
  %loadMem_435c90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435c90 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435c90)
  store %struct.Memory* %call_435c90, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 435c94	 Bytes: 4
  %loadMem_435c94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435c94 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435c94)
  store %struct.Memory* %call_435c94, %struct.Memory** %MEMORY

  ; Code: movslq 0x88(%rcx), %rcx	 RIP: 435c98	 Bytes: 7
  %loadMem_435c98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435c98 = call %struct.Memory* @routine_movslq_0x88__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435c98)
  store %struct.Memory* %call_435c98, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rcx,4), %edx	 RIP: 435c9f	 Bytes: 3
  %loadMem_435c9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435c9f = call %struct.Memory* @routine_addl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435c9f)
  store %struct.Memory* %call_435c9f, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 435ca2	 Bytes: 4
  %loadMem_435ca2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435ca2 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435ca2)
  store %struct.Memory* %call_435ca2, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rcx	 RIP: 435ca6	 Bytes: 4
  %loadMem_435ca6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435ca6 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435ca6)
  store %struct.Memory* %call_435ca6, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 435caa	 Bytes: 4
  %loadMem_435caa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435caa = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435caa)
  store %struct.Memory* %call_435caa, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 435cae	 Bytes: 4
  %loadMem_435cae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435cae = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435cae)
  store %struct.Memory* %call_435cae, %struct.Memory** %MEMORY

  ; Code: movslq 0x88(%rcx), %rcx	 RIP: 435cb2	 Bytes: 7
  %loadMem_435cb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435cb2 = call %struct.Memory* @routine_movslq_0x88__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435cb2)
  store %struct.Memory* %call_435cb2, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax,%rcx,4)	 RIP: 435cb9	 Bytes: 3
  %loadMem_435cb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435cb9 = call %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435cb9)
  store %struct.Memory* %call_435cb9, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 435cbc	 Bytes: 4
  %loadMem_435cbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435cbc = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435cbc)
  store %struct.Memory* %call_435cbc, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rcx	 RIP: 435cc0	 Bytes: 4
  %loadMem_435cc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435cc0 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435cc0)
  store %struct.Memory* %call_435cc0, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 435cc4	 Bytes: 4
  %loadMem_435cc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435cc4 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435cc4)
  store %struct.Memory* %call_435cc4, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 435cc8	 Bytes: 4
  %loadMem_435cc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435cc8 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435cc8)
  store %struct.Memory* %call_435cc8, %struct.Memory** %MEMORY

  ; Code: movslq 0x88(%rcx), %rcx	 RIP: 435ccc	 Bytes: 7
  %loadMem_435ccc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435ccc = call %struct.Memory* @routine_movslq_0x88__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435ccc)
  store %struct.Memory* %call_435ccc, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, (%rax,%rcx,4)	 RIP: 435cd3	 Bytes: 7
  %loadMem_435cd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435cd3 = call %struct.Memory* @routine_movl__0xc521974f____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435cd3)
  store %struct.Memory* %call_435cd3, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 435cda	 Bytes: 4
  %loadMem_435cda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435cda = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435cda)
  store %struct.Memory* %call_435cda, %struct.Memory** %MEMORY

  ; Code: movl 0x88(%rax), %edx	 RIP: 435cde	 Bytes: 6
  %loadMem_435cde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435cde = call %struct.Memory* @routine_movl_0x88__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435cde)
  store %struct.Memory* %call_435cde, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 435ce4	 Bytes: 3
  %loadMem_435ce4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435ce4 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435ce4)
  store %struct.Memory* %call_435ce4, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x50(%rbp)	 RIP: 435ce7	 Bytes: 3
  %loadMem_435ce7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435ce7 = call %struct.Memory* @routine_movl__edx__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435ce7)
  store %struct.Memory* %call_435ce7, %struct.Memory** %MEMORY

  ; Code: .L_435cea:	 RIP: 435cea	 Bytes: 0
  br label %block_.L_435cea
block_.L_435cea:

  ; Code: cmpl $0x1, -0x50(%rbp)	 RIP: 435cea	 Bytes: 4
  %loadMem_435cea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435cea = call %struct.Memory* @routine_cmpl__0x1__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435cea)
  store %struct.Memory* %call_435cea, %struct.Memory** %MEMORY

  ; Code: jl .L_435f66	 RIP: 435cee	 Bytes: 6
  %loadMem_435cee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435cee = call %struct.Memory* @routine_jl_.L_435f66(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435cee, i8* %BRANCH_TAKEN, i64 632, i64 6, i64 6)
  store %struct.Memory* %call_435cee, %struct.Memory** %MEMORY

  %loadBr_435cee = load i8, i8* %BRANCH_TAKEN
  %cmpBr_435cee = icmp eq i8 %loadBr_435cee, 1
  br i1 %cmpBr_435cee, label %block_.L_435f66, label %block_435cf4

block_435cf4:
  ; Code: movq -0x30(%rbp), %rax	 RIP: 435cf4	 Bytes: 4
  %loadMem_435cf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435cf4 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435cf4)
  store %struct.Memory* %call_435cf4, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rcx	 RIP: 435cf8	 Bytes: 4
  %loadMem_435cf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435cf8 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435cf8)
  store %struct.Memory* %call_435cf8, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 435cfc	 Bytes: 4
  %loadMem_435cfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435cfc = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435cfc)
  store %struct.Memory* %call_435cfc, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %edx	 RIP: 435d00	 Bytes: 3
  %loadMem_435d00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435d00 = call %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435d00)
  store %struct.Memory* %call_435d00, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 435d03	 Bytes: 4
  %loadMem_435d03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435d03 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435d03)
  store %struct.Memory* %call_435d03, %struct.Memory** %MEMORY

  ; Code: movq 0x178(%rax), %rax	 RIP: 435d07	 Bytes: 7
  %loadMem_435d07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435d07 = call %struct.Memory* @routine_movq_0x178__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435d07)
  store %struct.Memory* %call_435d07, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 435d0e	 Bytes: 4
  %loadMem_435d0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435d0e = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435d0e)
  store %struct.Memory* %call_435d0e, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rcx,4), %edx	 RIP: 435d12	 Bytes: 3
  %loadMem_435d12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435d12 = call %struct.Memory* @routine_addl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435d12)
  store %struct.Memory* %call_435d12, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 435d15	 Bytes: 4
  %loadMem_435d15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435d15 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435d15)
  store %struct.Memory* %call_435d15, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %esi	 RIP: 435d19	 Bytes: 3
  %loadMem_435d19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435d19 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435d19)
  store %struct.Memory* %call_435d19, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 435d1c	 Bytes: 3
  %loadMem_435d1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435d1c = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435d1c)
  store %struct.Memory* %call_435d1c, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 435d1f	 Bytes: 3
  %loadMem_435d1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435d1f = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435d1f)
  store %struct.Memory* %call_435d1f, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 435d22	 Bytes: 4
  %loadMem_435d22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435d22 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435d22)
  store %struct.Memory* %call_435d22, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %esi	 RIP: 435d26	 Bytes: 3
  %loadMem_435d26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435d26 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435d26)
  store %struct.Memory* %call_435d26, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 435d29	 Bytes: 3
  %loadMem_435d29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435d29 = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435d29)
  store %struct.Memory* %call_435d29, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 435d2c	 Bytes: 3
  %loadMem_435d2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435d2c = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435d2c)
  store %struct.Memory* %call_435d2c, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %esi	 RIP: 435d2f	 Bytes: 3
  %loadMem_435d2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435d2f = call %struct.Memory* @routine_movl___rax__rcx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435d2f)
  store %struct.Memory* %call_435d2f, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 435d32	 Bytes: 4
  %loadMem_435d32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435d32 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435d32)
  store %struct.Memory* %call_435d32, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rax), %rax	 RIP: 435d36	 Bytes: 7
  %loadMem_435d36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435d36 = call %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435d36)
  store %struct.Memory* %call_435d36, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 435d3d	 Bytes: 3
  %loadMem_435d3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435d3d = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435d3d)
  store %struct.Memory* %call_435d3d, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 435d40	 Bytes: 4
  %loadMem_435d40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435d40 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435d40)
  store %struct.Memory* %call_435d40, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rcx,4), %esi	 RIP: 435d44	 Bytes: 3
  %loadMem_435d44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435d44 = call %struct.Memory* @routine_addl___rax__rcx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435d44)
  store %struct.Memory* %call_435d44, %struct.Memory** %MEMORY

  ; Code: movl %edx, %edi	 RIP: 435d47	 Bytes: 2
  %loadMem_435d47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435d47 = call %struct.Memory* @routine_movl__edx___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435d47)
  store %struct.Memory* %call_435d47, %struct.Memory** %MEMORY

  ; Code: callq .ILogsum	 RIP: 435d49	 Bytes: 5
  %loadMem1_435d49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_435d49 = call %struct.Memory* @routine_callq_.ILogsum(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_435d49, i64 -56217, i64 5, i64 5)
  store %struct.Memory* %call1_435d49, %struct.Memory** %MEMORY

  %loadMem2_435d49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_435d49 = load i64, i64* %3
  %call2_435d49 = call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* %0, i64  %loadPC_435d49, %struct.Memory* %loadMem2_435d49)
  store %struct.Memory* %call2_435d49, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 435d4e	 Bytes: 4
  %loadMem_435d4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435d4e = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435d4e)
  store %struct.Memory* %call_435d4e, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %edx	 RIP: 435d52	 Bytes: 3
  %loadMem_435d52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435d52 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435d52)
  store %struct.Memory* %call_435d52, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 435d55	 Bytes: 3
  %loadMem_435d55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435d55 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435d55)
  store %struct.Memory* %call_435d55, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %r8	 RIP: 435d58	 Bytes: 3
  %loadMem_435d58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435d58 = call %struct.Memory* @routine_movslq__edx___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435d58)
  store %struct.Memory* %call_435d58, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r8,8), %rcx	 RIP: 435d5b	 Bytes: 4
  %loadMem_435d5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435d5b = call %struct.Memory* @routine_movq___rcx__r8_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435d5b)
  store %struct.Memory* %call_435d5b, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %r8	 RIP: 435d5f	 Bytes: 4
  %loadMem_435d5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435d5f = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435d5f)
  store %struct.Memory* %call_435d5f, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%r8,4), %edx	 RIP: 435d63	 Bytes: 4
  %loadMem_435d63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435d63 = call %struct.Memory* @routine_movl___rcx__r8_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435d63)
  store %struct.Memory* %call_435d63, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 435d67	 Bytes: 4
  %loadMem_435d67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435d67 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435d67)
  store %struct.Memory* %call_435d67, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rcx), %rcx	 RIP: 435d6b	 Bytes: 7
  %loadMem_435d6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435d6b = call %struct.Memory* @routine_movq_0x138__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435d6b)
  store %struct.Memory* %call_435d6b, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rcx), %rcx	 RIP: 435d72	 Bytes: 4
  %loadMem_435d72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435d72 = call %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435d72)
  store %struct.Memory* %call_435d72, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %r8	 RIP: 435d76	 Bytes: 4
  %loadMem_435d76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435d76 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435d76)
  store %struct.Memory* %call_435d76, %struct.Memory** %MEMORY

  ; Code: addl (%rcx,%r8,4), %edx	 RIP: 435d7a	 Bytes: 4
  %loadMem_435d7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435d7a = call %struct.Memory* @routine_addl___rcx__r8_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435d7a)
  store %struct.Memory* %call_435d7a, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rcx	 RIP: 435d7e	 Bytes: 4
  %loadMem_435d7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435d7e = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435d7e)
  store %struct.Memory* %call_435d7e, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %r8	 RIP: 435d82	 Bytes: 4
  %loadMem_435d82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435d82 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435d82)
  store %struct.Memory* %call_435d82, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r8,8), %rcx	 RIP: 435d86	 Bytes: 4
  %loadMem_435d86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435d86 = call %struct.Memory* @routine_movq___rcx__r8_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435d86)
  store %struct.Memory* %call_435d86, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %esi	 RIP: 435d8a	 Bytes: 3
  %loadMem_435d8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435d8a = call %struct.Memory* @routine_movl_MINUS0x50__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435d8a)
  store %struct.Memory* %call_435d8a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 435d8d	 Bytes: 3
  %loadMem_435d8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435d8d = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435d8d)
  store %struct.Memory* %call_435d8d, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %r8	 RIP: 435d90	 Bytes: 3
  %loadMem_435d90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435d90 = call %struct.Memory* @routine_movslq__esi___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435d90)
  store %struct.Memory* %call_435d90, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%r8,4), %esi	 RIP: 435d93	 Bytes: 4
  %loadMem_435d93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435d93 = call %struct.Memory* @routine_movl___rcx__r8_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435d93)
  store %struct.Memory* %call_435d93, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 435d97	 Bytes: 4
  %loadMem_435d97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435d97 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435d97)
  store %struct.Memory* %call_435d97, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rcx), %rcx	 RIP: 435d9b	 Bytes: 7
  %loadMem_435d9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435d9b = call %struct.Memory* @routine_movq_0x138__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435d9b)
  store %struct.Memory* %call_435d9b, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rcx), %rcx	 RIP: 435da2	 Bytes: 4
  %loadMem_435da2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435da2 = call %struct.Memory* @routine_movq_0x10__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435da2)
  store %struct.Memory* %call_435da2, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %r8	 RIP: 435da6	 Bytes: 4
  %loadMem_435da6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435da6 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435da6)
  store %struct.Memory* %call_435da6, %struct.Memory** %MEMORY

  ; Code: addl (%rcx,%r8,4), %esi	 RIP: 435daa	 Bytes: 4
  %loadMem_435daa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435daa = call %struct.Memory* @routine_addl___rcx__r8_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435daa)
  store %struct.Memory* %call_435daa, %struct.Memory** %MEMORY

  ; Code: movl %edx, %edi	 RIP: 435dae	 Bytes: 2
  %loadMem_435dae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435dae = call %struct.Memory* @routine_movl__edx___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435dae)
  store %struct.Memory* %call_435dae, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x58(%rbp)	 RIP: 435db0	 Bytes: 3
  %loadMem_435db0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435db0 = call %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435db0)
  store %struct.Memory* %call_435db0, %struct.Memory** %MEMORY

  ; Code: callq .ILogsum	 RIP: 435db3	 Bytes: 5
  %loadMem1_435db3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_435db3 = call %struct.Memory* @routine_callq_.ILogsum(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_435db3, i64 -56323, i64 5, i64 5)
  store %struct.Memory* %call1_435db3, %struct.Memory** %MEMORY

  %loadMem2_435db3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_435db3 = load i64, i64* %3
  %call2_435db3 = call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* %0, i64  %loadPC_435db3, %struct.Memory* %loadMem2_435db3)
  store %struct.Memory* %call2_435db3, %struct.Memory** %MEMORY

  ; Code: movl -0x58(%rbp), %edi	 RIP: 435db8	 Bytes: 3
  %loadMem_435db8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435db8 = call %struct.Memory* @routine_movl_MINUS0x58__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435db8)
  store %struct.Memory* %call_435db8, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 435dbb	 Bytes: 2
  %loadMem_435dbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435dbb = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435dbb)
  store %struct.Memory* %call_435dbb, %struct.Memory** %MEMORY

  ; Code: callq .ILogsum	 RIP: 435dbd	 Bytes: 5
  %loadMem1_435dbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_435dbd = call %struct.Memory* @routine_callq_.ILogsum(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_435dbd, i64 -56333, i64 5, i64 5)
  store %struct.Memory* %call1_435dbd, %struct.Memory** %MEMORY

  %loadMem2_435dbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_435dbd = load i64, i64* %3
  %call2_435dbd = call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* %0, i64  %loadPC_435dbd, %struct.Memory* %loadMem2_435dbd)
  store %struct.Memory* %call2_435dbd, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 435dc2	 Bytes: 4
  %loadMem_435dc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435dc2 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435dc2)
  store %struct.Memory* %call_435dc2, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %r8	 RIP: 435dc6	 Bytes: 4
  %loadMem_435dc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435dc6 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435dc6)
  store %struct.Memory* %call_435dc6, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r8,8), %rcx	 RIP: 435dca	 Bytes: 4
  %loadMem_435dca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435dca = call %struct.Memory* @routine_movq___rcx__r8_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435dca)
  store %struct.Memory* %call_435dca, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %r8	 RIP: 435dce	 Bytes: 4
  %loadMem_435dce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435dce = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435dce)
  store %struct.Memory* %call_435dce, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%r8,4)	 RIP: 435dd2	 Bytes: 4
  %loadMem_435dd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435dd2 = call %struct.Memory* @routine_movl__eax____rcx__r8_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435dd2)
  store %struct.Memory* %call_435dd2, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 435dd6	 Bytes: 4
  %loadMem_435dd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435dd6 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435dd6)
  store %struct.Memory* %call_435dd6, %struct.Memory** %MEMORY

  ; Code: movq 0x140(%rcx), %rcx	 RIP: 435dda	 Bytes: 7
  %loadMem_435dda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435dda = call %struct.Memory* @routine_movq_0x140__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435dda)
  store %struct.Memory* %call_435dda, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %r8	 RIP: 435de1	 Bytes: 4
  %loadMem_435de1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435de1 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435de1)
  store %struct.Memory* %call_435de1, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %r9	 RIP: 435de5	 Bytes: 4
  %loadMem_435de5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435de5 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435de5)
  store %struct.Memory* %call_435de5, %struct.Memory** %MEMORY

  ; Code: movsbl (%r8,%r9,1), %eax	 RIP: 435de9	 Bytes: 5
  %loadMem_435de9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435de9 = call %struct.Memory* @routine_movsbl___r8__r9_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435de9)
  store %struct.Memory* %call_435de9, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %r8	 RIP: 435dee	 Bytes: 3
  %loadMem_435dee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435dee = call %struct.Memory* @routine_movslq__eax___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435dee)
  store %struct.Memory* %call_435dee, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r8,8), %rcx	 RIP: 435df1	 Bytes: 4
  %loadMem_435df1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435df1 = call %struct.Memory* @routine_movq___rcx__r8_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435df1)
  store %struct.Memory* %call_435df1, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %r8	 RIP: 435df5	 Bytes: 4
  %loadMem_435df5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435df5 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435df5)
  store %struct.Memory* %call_435df5, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%r8,4), %eax	 RIP: 435df9	 Bytes: 4
  %loadMem_435df9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435df9 = call %struct.Memory* @routine_movl___rcx__r8_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435df9)
  store %struct.Memory* %call_435df9, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 435dfd	 Bytes: 4
  %loadMem_435dfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435dfd = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435dfd)
  store %struct.Memory* %call_435dfd, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %r8	 RIP: 435e01	 Bytes: 4
  %loadMem_435e01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435e01 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435e01)
  store %struct.Memory* %call_435e01, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r8,8), %rcx	 RIP: 435e05	 Bytes: 4
  %loadMem_435e05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435e05 = call %struct.Memory* @routine_movq___rcx__r8_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435e05)
  store %struct.Memory* %call_435e05, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %r8	 RIP: 435e09	 Bytes: 4
  %loadMem_435e09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435e09 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435e09)
  store %struct.Memory* %call_435e09, %struct.Memory** %MEMORY

  ; Code: addl (%rcx,%r8,4), %eax	 RIP: 435e0d	 Bytes: 4
  %loadMem_435e0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435e0d = call %struct.Memory* @routine_addl___rcx__r8_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435e0d)
  store %struct.Memory* %call_435e0d, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%r8,4)	 RIP: 435e11	 Bytes: 4
  %loadMem_435e11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435e11 = call %struct.Memory* @routine_movl__eax____rcx__r8_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435e11)
  store %struct.Memory* %call_435e11, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 435e15	 Bytes: 4
  %loadMem_435e15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435e15 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435e15)
  store %struct.Memory* %call_435e15, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %eax	 RIP: 435e19	 Bytes: 3
  %loadMem_435e19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435e19 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435e19)
  store %struct.Memory* %call_435e19, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 435e1c	 Bytes: 3
  %loadMem_435e1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435e1c = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435e1c)
  store %struct.Memory* %call_435e1c, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %r8	 RIP: 435e1f	 Bytes: 3
  %loadMem_435e1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435e1f = call %struct.Memory* @routine_movslq__eax___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435e1f)
  store %struct.Memory* %call_435e1f, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r8,8), %rcx	 RIP: 435e22	 Bytes: 4
  %loadMem_435e22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435e22 = call %struct.Memory* @routine_movq___rcx__r8_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435e22)
  store %struct.Memory* %call_435e22, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %r8	 RIP: 435e26	 Bytes: 4
  %loadMem_435e26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435e26 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435e26)
  store %struct.Memory* %call_435e26, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%r8,4), %eax	 RIP: 435e2a	 Bytes: 4
  %loadMem_435e2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435e2a = call %struct.Memory* @routine_movl___rcx__r8_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435e2a)
  store %struct.Memory* %call_435e2a, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 435e2e	 Bytes: 4
  %loadMem_435e2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435e2e = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435e2e)
  store %struct.Memory* %call_435e2e, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rcx), %rcx	 RIP: 435e32	 Bytes: 7
  %loadMem_435e32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435e32 = call %struct.Memory* @routine_movq_0x138__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435e32)
  store %struct.Memory* %call_435e32, %struct.Memory** %MEMORY

  ; Code: movq 0x20(%rcx), %rcx	 RIP: 435e39	 Bytes: 4
  %loadMem_435e39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435e39 = call %struct.Memory* @routine_movq_0x20__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435e39)
  store %struct.Memory* %call_435e39, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %r8	 RIP: 435e3d	 Bytes: 4
  %loadMem_435e3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435e3d = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435e3d)
  store %struct.Memory* %call_435e3d, %struct.Memory** %MEMORY

  ; Code: addl (%rcx,%r8,4), %eax	 RIP: 435e41	 Bytes: 4
  %loadMem_435e41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435e41 = call %struct.Memory* @routine_addl___rcx__r8_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435e41)
  store %struct.Memory* %call_435e41, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 435e45	 Bytes: 4
  %loadMem_435e45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435e45 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435e45)
  store %struct.Memory* %call_435e45, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %edx	 RIP: 435e49	 Bytes: 3
  %loadMem_435e49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435e49 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435e49)
  store %struct.Memory* %call_435e49, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 435e4c	 Bytes: 3
  %loadMem_435e4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435e4c = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435e4c)
  store %struct.Memory* %call_435e4c, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %r8	 RIP: 435e4f	 Bytes: 3
  %loadMem_435e4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435e4f = call %struct.Memory* @routine_movslq__edx___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435e4f)
  store %struct.Memory* %call_435e4f, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r8,8), %rcx	 RIP: 435e52	 Bytes: 4
  %loadMem_435e52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435e52 = call %struct.Memory* @routine_movq___rcx__r8_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435e52)
  store %struct.Memory* %call_435e52, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %edx	 RIP: 435e56	 Bytes: 3
  %loadMem_435e56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435e56 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435e56)
  store %struct.Memory* %call_435e56, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 435e59	 Bytes: 3
  %loadMem_435e59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435e59 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435e59)
  store %struct.Memory* %call_435e59, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %r8	 RIP: 435e5c	 Bytes: 3
  %loadMem_435e5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435e5c = call %struct.Memory* @routine_movslq__edx___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435e5c)
  store %struct.Memory* %call_435e5c, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%r8,4), %edx	 RIP: 435e5f	 Bytes: 4
  %loadMem_435e5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435e5f = call %struct.Memory* @routine_movl___rcx__r8_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435e5f)
  store %struct.Memory* %call_435e5f, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 435e63	 Bytes: 4
  %loadMem_435e63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435e63 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435e63)
  store %struct.Memory* %call_435e63, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rcx), %rcx	 RIP: 435e67	 Bytes: 7
  %loadMem_435e67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435e67 = call %struct.Memory* @routine_movq_0x138__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435e67)
  store %struct.Memory* %call_435e67, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rcx), %rcx	 RIP: 435e6e	 Bytes: 4
  %loadMem_435e6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435e6e = call %struct.Memory* @routine_movq_0x18__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435e6e)
  store %struct.Memory* %call_435e6e, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %r8	 RIP: 435e72	 Bytes: 4
  %loadMem_435e72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435e72 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435e72)
  store %struct.Memory* %call_435e72, %struct.Memory** %MEMORY

  ; Code: addl (%rcx,%r8,4), %edx	 RIP: 435e76	 Bytes: 4
  %loadMem_435e76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435e76 = call %struct.Memory* @routine_addl___rcx__r8_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435e76)
  store %struct.Memory* %call_435e76, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 435e7a	 Bytes: 2
  %loadMem_435e7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435e7a = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435e7a)
  store %struct.Memory* %call_435e7a, %struct.Memory** %MEMORY

  ; Code: movl %edx, %esi	 RIP: 435e7c	 Bytes: 2
  %loadMem_435e7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435e7c = call %struct.Memory* @routine_movl__edx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435e7c)
  store %struct.Memory* %call_435e7c, %struct.Memory** %MEMORY

  ; Code: callq .ILogsum	 RIP: 435e7e	 Bytes: 5
  %loadMem1_435e7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_435e7e = call %struct.Memory* @routine_callq_.ILogsum(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_435e7e, i64 -56526, i64 5, i64 5)
  store %struct.Memory* %call1_435e7e, %struct.Memory** %MEMORY

  %loadMem2_435e7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_435e7e = load i64, i64* %3
  %call2_435e7e = call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* %0, i64  %loadPC_435e7e, %struct.Memory* %loadMem2_435e7e)
  store %struct.Memory* %call2_435e7e, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 435e83	 Bytes: 4
  %loadMem_435e83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435e83 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435e83)
  store %struct.Memory* %call_435e83, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %r8	 RIP: 435e87	 Bytes: 4
  %loadMem_435e87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435e87 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435e87)
  store %struct.Memory* %call_435e87, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r8,8), %rcx	 RIP: 435e8b	 Bytes: 4
  %loadMem_435e8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435e8b = call %struct.Memory* @routine_movq___rcx__r8_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435e8b)
  store %struct.Memory* %call_435e8b, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %r8	 RIP: 435e8f	 Bytes: 4
  %loadMem_435e8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435e8f = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435e8f)
  store %struct.Memory* %call_435e8f, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%r8,4)	 RIP: 435e93	 Bytes: 4
  %loadMem_435e93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435e93 = call %struct.Memory* @routine_movl__eax____rcx__r8_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435e93)
  store %struct.Memory* %call_435e93, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 435e97	 Bytes: 4
  %loadMem_435e97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435e97 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435e97)
  store %struct.Memory* %call_435e97, %struct.Memory** %MEMORY

  ; Code: movq 0x148(%rcx), %rcx	 RIP: 435e9b	 Bytes: 7
  %loadMem_435e9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435e9b = call %struct.Memory* @routine_movq_0x148__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435e9b)
  store %struct.Memory* %call_435e9b, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %r8	 RIP: 435ea2	 Bytes: 4
  %loadMem_435ea2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435ea2 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435ea2)
  store %struct.Memory* %call_435ea2, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %r9	 RIP: 435ea6	 Bytes: 4
  %loadMem_435ea6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435ea6 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435ea6)
  store %struct.Memory* %call_435ea6, %struct.Memory** %MEMORY

  ; Code: movsbl (%r8,%r9,1), %eax	 RIP: 435eaa	 Bytes: 5
  %loadMem_435eaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435eaa = call %struct.Memory* @routine_movsbl___r8__r9_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435eaa)
  store %struct.Memory* %call_435eaa, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %r8	 RIP: 435eaf	 Bytes: 3
  %loadMem_435eaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435eaf = call %struct.Memory* @routine_movslq__eax___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435eaf)
  store %struct.Memory* %call_435eaf, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r8,8), %rcx	 RIP: 435eb2	 Bytes: 4
  %loadMem_435eb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435eb2 = call %struct.Memory* @routine_movq___rcx__r8_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435eb2)
  store %struct.Memory* %call_435eb2, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %r8	 RIP: 435eb6	 Bytes: 4
  %loadMem_435eb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435eb6 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435eb6)
  store %struct.Memory* %call_435eb6, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%r8,4), %eax	 RIP: 435eba	 Bytes: 4
  %loadMem_435eba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435eba = call %struct.Memory* @routine_movl___rcx__r8_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435eba)
  store %struct.Memory* %call_435eba, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 435ebe	 Bytes: 4
  %loadMem_435ebe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435ebe = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435ebe)
  store %struct.Memory* %call_435ebe, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %r8	 RIP: 435ec2	 Bytes: 4
  %loadMem_435ec2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435ec2 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435ec2)
  store %struct.Memory* %call_435ec2, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r8,8), %rcx	 RIP: 435ec6	 Bytes: 4
  %loadMem_435ec6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435ec6 = call %struct.Memory* @routine_movq___rcx__r8_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435ec6)
  store %struct.Memory* %call_435ec6, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %r8	 RIP: 435eca	 Bytes: 4
  %loadMem_435eca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435eca = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435eca)
  store %struct.Memory* %call_435eca, %struct.Memory** %MEMORY

  ; Code: addl (%rcx,%r8,4), %eax	 RIP: 435ece	 Bytes: 4
  %loadMem_435ece = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435ece = call %struct.Memory* @routine_addl___rcx__r8_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435ece)
  store %struct.Memory* %call_435ece, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%r8,4)	 RIP: 435ed2	 Bytes: 4
  %loadMem_435ed2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435ed2 = call %struct.Memory* @routine_movl__eax____rcx__r8_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435ed2)
  store %struct.Memory* %call_435ed2, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rcx	 RIP: 435ed6	 Bytes: 4
  %loadMem_435ed6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435ed6 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435ed6)
  store %struct.Memory* %call_435ed6, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %r8	 RIP: 435eda	 Bytes: 4
  %loadMem_435eda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435eda = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435eda)
  store %struct.Memory* %call_435eda, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r8,8), %rcx	 RIP: 435ede	 Bytes: 4
  %loadMem_435ede = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435ede = call %struct.Memory* @routine_movq___rcx__r8_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435ede)
  store %struct.Memory* %call_435ede, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %eax	 RIP: 435ee2	 Bytes: 3
  %loadMem_435ee2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435ee2 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435ee2)
  store %struct.Memory* %call_435ee2, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 435ee5	 Bytes: 3
  %loadMem_435ee5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435ee5 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435ee5)
  store %struct.Memory* %call_435ee5, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %r8	 RIP: 435ee8	 Bytes: 3
  %loadMem_435ee8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435ee8 = call %struct.Memory* @routine_movslq__eax___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435ee8)
  store %struct.Memory* %call_435ee8, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%r8,4), %eax	 RIP: 435eeb	 Bytes: 4
  %loadMem_435eeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435eeb = call %struct.Memory* @routine_movl___rcx__r8_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435eeb)
  store %struct.Memory* %call_435eeb, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 435eef	 Bytes: 4
  %loadMem_435eef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435eef = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435eef)
  store %struct.Memory* %call_435eef, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rcx), %rcx	 RIP: 435ef3	 Bytes: 7
  %loadMem_435ef3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435ef3 = call %struct.Memory* @routine_movq_0x138__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435ef3)
  store %struct.Memory* %call_435ef3, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rcx), %rcx	 RIP: 435efa	 Bytes: 4
  %loadMem_435efa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435efa = call %struct.Memory* @routine_movq_0x30__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435efa)
  store %struct.Memory* %call_435efa, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %r8	 RIP: 435efe	 Bytes: 4
  %loadMem_435efe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435efe = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435efe)
  store %struct.Memory* %call_435efe, %struct.Memory** %MEMORY

  ; Code: addl (%rcx,%r8,4), %eax	 RIP: 435f02	 Bytes: 4
  %loadMem_435f02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435f02 = call %struct.Memory* @routine_addl___rcx__r8_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435f02)
  store %struct.Memory* %call_435f02, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 435f06	 Bytes: 4
  %loadMem_435f06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435f06 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435f06)
  store %struct.Memory* %call_435f06, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %edx	 RIP: 435f0a	 Bytes: 3
  %loadMem_435f0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435f0a = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435f0a)
  store %struct.Memory* %call_435f0a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 435f0d	 Bytes: 3
  %loadMem_435f0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435f0d = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435f0d)
  store %struct.Memory* %call_435f0d, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %r8	 RIP: 435f10	 Bytes: 3
  %loadMem_435f10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435f10 = call %struct.Memory* @routine_movslq__edx___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435f10)
  store %struct.Memory* %call_435f10, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r8,8), %rcx	 RIP: 435f13	 Bytes: 4
  %loadMem_435f13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435f13 = call %struct.Memory* @routine_movq___rcx__r8_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435f13)
  store %struct.Memory* %call_435f13, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %edx	 RIP: 435f17	 Bytes: 3
  %loadMem_435f17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435f17 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435f17)
  store %struct.Memory* %call_435f17, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 435f1a	 Bytes: 3
  %loadMem_435f1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435f1a = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435f1a)
  store %struct.Memory* %call_435f1a, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %r8	 RIP: 435f1d	 Bytes: 3
  %loadMem_435f1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435f1d = call %struct.Memory* @routine_movslq__edx___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435f1d)
  store %struct.Memory* %call_435f1d, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%r8,4), %edx	 RIP: 435f20	 Bytes: 4
  %loadMem_435f20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435f20 = call %struct.Memory* @routine_movl___rcx__r8_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435f20)
  store %struct.Memory* %call_435f20, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 435f24	 Bytes: 4
  %loadMem_435f24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435f24 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435f24)
  store %struct.Memory* %call_435f24, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rcx), %rcx	 RIP: 435f28	 Bytes: 7
  %loadMem_435f28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435f28 = call %struct.Memory* @routine_movq_0x138__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435f28)
  store %struct.Memory* %call_435f28, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rcx), %rcx	 RIP: 435f2f	 Bytes: 4
  %loadMem_435f2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435f2f = call %struct.Memory* @routine_movq_0x28__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435f2f)
  store %struct.Memory* %call_435f2f, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %r8	 RIP: 435f33	 Bytes: 4
  %loadMem_435f33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435f33 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435f33)
  store %struct.Memory* %call_435f33, %struct.Memory** %MEMORY

  ; Code: addl (%rcx,%r8,4), %edx	 RIP: 435f37	 Bytes: 4
  %loadMem_435f37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435f37 = call %struct.Memory* @routine_addl___rcx__r8_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435f37)
  store %struct.Memory* %call_435f37, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 435f3b	 Bytes: 2
  %loadMem_435f3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435f3b = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435f3b)
  store %struct.Memory* %call_435f3b, %struct.Memory** %MEMORY

  ; Code: movl %edx, %esi	 RIP: 435f3d	 Bytes: 2
  %loadMem_435f3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435f3d = call %struct.Memory* @routine_movl__edx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435f3d)
  store %struct.Memory* %call_435f3d, %struct.Memory** %MEMORY

  ; Code: callq .ILogsum	 RIP: 435f3f	 Bytes: 5
  %loadMem1_435f3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_435f3f = call %struct.Memory* @routine_callq_.ILogsum(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_435f3f, i64 -56719, i64 5, i64 5)
  store %struct.Memory* %call1_435f3f, %struct.Memory** %MEMORY

  %loadMem2_435f3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_435f3f = load i64, i64* %3
  %call2_435f3f = call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* %0, i64  %loadPC_435f3f, %struct.Memory* %loadMem2_435f3f)
  store %struct.Memory* %call2_435f3f, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rcx	 RIP: 435f44	 Bytes: 4
  %loadMem_435f44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435f44 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435f44)
  store %struct.Memory* %call_435f44, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %r8	 RIP: 435f48	 Bytes: 4
  %loadMem_435f48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435f48 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435f48)
  store %struct.Memory* %call_435f48, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r8,8), %rcx	 RIP: 435f4c	 Bytes: 4
  %loadMem_435f4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435f4c = call %struct.Memory* @routine_movq___rcx__r8_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435f4c)
  store %struct.Memory* %call_435f4c, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %r8	 RIP: 435f50	 Bytes: 4
  %loadMem_435f50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435f50 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435f50)
  store %struct.Memory* %call_435f50, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%r8,4)	 RIP: 435f54	 Bytes: 4
  %loadMem_435f54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435f54 = call %struct.Memory* @routine_movl__eax____rcx__r8_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435f54)
  store %struct.Memory* %call_435f54, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %eax	 RIP: 435f58	 Bytes: 3
  %loadMem_435f58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435f58 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435f58)
  store %struct.Memory* %call_435f58, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %eax	 RIP: 435f5b	 Bytes: 3
  %loadMem_435f5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435f5b = call %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435f5b)
  store %struct.Memory* %call_435f5b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x50(%rbp)	 RIP: 435f5e	 Bytes: 3
  %loadMem_435f5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435f5e = call %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435f5e)
  store %struct.Memory* %call_435f5e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_435cea	 RIP: 435f61	 Bytes: 5
  %loadMem_435f61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435f61 = call %struct.Memory* @routine_jmpq_.L_435cea(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435f61, i64 -631, i64 5)
  store %struct.Memory* %call_435f61, %struct.Memory** %MEMORY

  br label %block_.L_435cea

  ; Code: .L_435f66:	 RIP: 435f66	 Bytes: 0
block_.L_435f66:

  ; Code: jmpq .L_435f6b	 RIP: 435f66	 Bytes: 5
  %loadMem_435f66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435f66 = call %struct.Memory* @routine_jmpq_.L_435f6b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435f66, i64 5, i64 5)
  store %struct.Memory* %call_435f66, %struct.Memory** %MEMORY

  br label %block_.L_435f6b

  ; Code: .L_435f6b:	 RIP: 435f6b	 Bytes: 0
block_.L_435f6b:

  ; Code: jmpq .L_435f70	 RIP: 435f6b	 Bytes: 5
  %loadMem_435f6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435f6b = call %struct.Memory* @routine_jmpq_.L_435f70(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435f6b, i64 5, i64 5)
  store %struct.Memory* %call_435f6b, %struct.Memory** %MEMORY

  br label %block_.L_435f70

  ; Code: .L_435f70:	 RIP: 435f70	 Bytes: 0
block_.L_435f70:

  ; Code: movl -0x4c(%rbp), %eax	 RIP: 435f70	 Bytes: 3
  %loadMem_435f70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435f70 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435f70)
  store %struct.Memory* %call_435f70, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %eax	 RIP: 435f73	 Bytes: 3
  %loadMem_435f73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435f73 = call %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435f73)
  store %struct.Memory* %call_435f73, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c(%rbp)	 RIP: 435f76	 Bytes: 3
  %loadMem_435f76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435f76 = call %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435f76)
  store %struct.Memory* %call_435f76, %struct.Memory** %MEMORY

  ; Code: jmpq .L_435a42	 RIP: 435f79	 Bytes: 5
  %loadMem_435f79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435f79 = call %struct.Memory* @routine_jmpq_.L_435a42(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435f79, i64 -1335, i64 5)
  store %struct.Memory* %call_435f79, %struct.Memory** %MEMORY

  br label %block_.L_435a42

  ; Code: .L_435f7e:	 RIP: 435f7e	 Bytes: 0
block_.L_435f7e:

  ; Code: movq -0x30(%rbp), %rax	 RIP: 435f7e	 Bytes: 4
  %loadMem_435f7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435f7e = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435f7e)
  store %struct.Memory* %call_435f7e, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 435f82	 Bytes: 3
  %loadMem_435f82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435f82 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435f82)
  store %struct.Memory* %call_435f82, %struct.Memory** %MEMORY

  ; Code: movl 0x10(%rax), %ecx	 RIP: 435f85	 Bytes: 3
  %loadMem_435f85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435f85 = call %struct.Memory* @routine_movl_0x10__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435f85)
  store %struct.Memory* %call_435f85, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x54(%rbp)	 RIP: 435f88	 Bytes: 3
  %loadMem_435f88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435f88 = call %struct.Memory* @routine_movl__ecx__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435f88)
  store %struct.Memory* %call_435f88, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, -0x20(%rbp)	 RIP: 435f8b	 Bytes: 5
  %loadMem_435f8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435f8b = call %struct.Memory* @routine_cmpq__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435f8b)
  store %struct.Memory* %call_435f8b, %struct.Memory** %MEMORY

  ; Code: je .L_435fa6	 RIP: 435f90	 Bytes: 6
  %loadMem_435f90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435f90 = call %struct.Memory* @routine_je_.L_435fa6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435f90, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_435f90, %struct.Memory** %MEMORY

  %loadBr_435f90 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_435f90 = icmp eq i8 %loadBr_435f90, 1
  br i1 %cmpBr_435f90, label %block_.L_435fa6, label %block_435f96

block_435f96:
  ; Code: movq -0x28(%rbp), %rax	 RIP: 435f96	 Bytes: 4
  %loadMem_435f96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435f96 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435f96)
  store %struct.Memory* %call_435f96, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 435f9a	 Bytes: 4
  %loadMem_435f9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435f9a = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435f9a)
  store %struct.Memory* %call_435f9a, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rcx)	 RIP: 435f9e	 Bytes: 3
  %loadMem_435f9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435f9e = call %struct.Memory* @routine_movq__rax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435f9e)
  store %struct.Memory* %call_435f9e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_435faf	 RIP: 435fa1	 Bytes: 5
  %loadMem_435fa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435fa1 = call %struct.Memory* @routine_jmpq_.L_435faf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435fa1, i64 14, i64 5)
  store %struct.Memory* %call_435fa1, %struct.Memory** %MEMORY

  br label %block_.L_435faf

  ; Code: .L_435fa6:	 RIP: 435fa6	 Bytes: 0
block_.L_435fa6:

  ; Code: movq -0x28(%rbp), %rdi	 RIP: 435fa6	 Bytes: 4
  %loadMem_435fa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435fa6 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435fa6)
  store %struct.Memory* %call_435fa6, %struct.Memory** %MEMORY

  ; Code: callq .FreePlan7Matrix	 RIP: 435faa	 Bytes: 5
  %loadMem1_435faa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_435faa = call %struct.Memory* @routine_callq_.FreePlan7Matrix(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_435faa, i64 -190058, i64 5, i64 5)
  store %struct.Memory* %call1_435faa, %struct.Memory** %MEMORY

  %loadMem2_435faa = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_435faa = load i64, i64* %3
  %call2_435faa = call %struct.Memory* @sub_407940.FreePlan7Matrix(%struct.State* %0, i64  %loadPC_435faa, %struct.Memory* %loadMem2_435faa)
  store %struct.Memory* %call2_435faa, %struct.Memory** %MEMORY

  ; Code: .L_435faf:	 RIP: 435faf	 Bytes: 0
  br label %block_.L_435faf
block_.L_435faf:

  ; Code: movl -0x54(%rbp), %edi	 RIP: 435faf	 Bytes: 3
  %loadMem_435faf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435faf = call %struct.Memory* @routine_movl_MINUS0x54__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435faf)
  store %struct.Memory* %call_435faf, %struct.Memory** %MEMORY

  ; Code: callq .Scorify	 RIP: 435fb2	 Bytes: 5
  %loadMem1_435fb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_435fb2 = call %struct.Memory* @routine_callq_.Scorify(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_435fb2, i64 -57538, i64 5, i64 5)
  store %struct.Memory* %call1_435fb2, %struct.Memory** %MEMORY

  %loadMem2_435fb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_435fb2 = load i64, i64* %3
  %call2_435fb2 = call %struct.Memory* @sub_427ef0.Scorify(%struct.State* %0, i64  %loadPC_435fb2, %struct.Memory* %loadMem2_435fb2)
  store %struct.Memory* %call2_435fb2, %struct.Memory** %MEMORY

  ; Code: addq $0x60, %rsp	 RIP: 435fb7	 Bytes: 4
  %loadMem_435fb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435fb7 = call %struct.Memory* @routine_addq__0x60___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435fb7)
  store %struct.Memory* %call_435fb7, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 435fbb	 Bytes: 1
  %loadMem_435fbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435fbb = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435fbb)
  store %struct.Memory* %call_435fbb, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 435fbc	 Bytes: 1
  %loadMem_435fbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_435fbc = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_435fbc)
  store %struct.Memory* %call_435fbc, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_435fbc
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

define %struct.Memory* @routine_subq__0x60___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 96)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_MINUS0x30__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x38__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x40__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x48__rbp____r10(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R10, i64 %13)
  ret %struct.Memory* %16
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__esi__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_movq__rcx__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_MINUS0xc__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
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

define %struct.Memory* @routine_addl__0x1___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 1)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movl_0x88__rcx____r11d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 23
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R11D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R11D to i64*
  %13 = load i64, i64* %RCX
  %14 = add i64 %13, 136
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__esi___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__r11d___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 23
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R11D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R11D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movq__r8___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movq__r9___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R9
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movq__r10___r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9 = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R10
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %12)
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

define %struct.Memory* @routine_callq_.AllocPlan7Matrix(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__rax__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x160__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 352
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12
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


define %struct.Memory* @routine_movl__esi__0x8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_movl_0x8__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_addl_0x158__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 344
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_movl__esi__0x4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 4
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}







define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0xc521974f__0x10__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -987654321)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_movl__0xc521974f____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 -987654321)
  ret %struct.Memory* %12
}








define %struct.Memory* @routine_movl__0xc521974f__0xc__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 12
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -987654321)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl_0x88__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__esi__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 80
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

define %struct.Memory* @routine_cmpl__0x1__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 80
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L2JLEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 {
  %6 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  %7 = load i8, i8* %6, align 1
  %8 = icmp ne i8 %7, 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  %12 = xor i1 %8, %11
  %13 = zext i1 %12 to i8
  store i8 %13, i8* %2, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %15 = select i1 %12, i64 %3, i64 %4
  store i64 %15, i64* %14, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jl_.L_4359ed(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JLEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}








define %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq_0x178__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 376
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl___rax__rcx_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 3
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %15, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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




define %struct.Memory* @routine_movq_0x140__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 320
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  %7 = sext i8 %6 to i64
  %8 = and i64 %7, 4294967295
  store i64 %8, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsbl___rcx__rsi_1____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RSI
  %17 = add i64 %16, %15
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 4
  store i64 %19, i64* %PC
  %20 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %17)
  ret %struct.Memory* %20
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq__edx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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














define %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movl__0xc521974f____rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 -987654321)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 -1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 80
  %14 = load i32, i32* %EAX
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

define %struct.Memory* @routine_jmpq_.L_435938(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 312
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl_0x88__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
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

define %struct.Memory* @routine_subl__0x1___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 1)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_movq_0x30__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 48
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}












define %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__edx__MINUS0x4c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 76
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_cmpl__0x0__MINUS0x4c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 76
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jl_.L_435f7e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JLEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_movslq__ecx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_0x8__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addl_0x164__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 356
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__ecx__0x8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}
















define %struct.Memory* @routine_movl___rax____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12)
  ret %struct.Memory* %15
}












define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_0x88__rdx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 136
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %10)
  ret %struct.Memory* %13
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




define %struct.Memory* @routine_movq_0x170__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 368
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl_0x88__rdx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_subl__0x1___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movslq__esi___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl___rax__rdx_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RDX
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 3
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15, i64 %19)
  ret %struct.Memory* %22
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


define %struct.Memory* @routine_callq_.ILogsum(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq___rdx__r8_8____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %R8
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__eax____rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl_0x88__rdx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_subl__0x1___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 1)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_jl_.L_435b60(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JLEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movl_MINUS0x4c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 76
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


















define %struct.Memory* @routine_movl__edx___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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




define %struct.Memory* @routine_movq___rcx__r8_8____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %R8
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__eax____rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_jmpq_.L_435afb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_movl___rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12)
  ret %struct.Memory* %15
}




define %struct.Memory* @routine_addl_0x168__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 360
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl_MINUS0x4c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movslq__esi___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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




define %struct.Memory* @routine_movl_0xc__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addl_0x16c__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 364
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__edx___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movl__eax__0xc__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_movl_0x8__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addl_0x158__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 344
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_movl_0xc__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addl_0x15c__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 348
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__eax___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_movl__eax__0x4__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 4
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_movl___rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12)
  ret %struct.Memory* %15
}




define %struct.Memory* @routine_addl_0x150__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 336
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_movslq__edx___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_0x10__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addl_0x154__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 340
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_jle_.L_435f6b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
















define %struct.Memory* @routine_movslq_0x88__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 136
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}










define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsbl___rcx__rsi_1____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RSI
  %17 = add i64 %16, %15
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 4
  store i64 %19, i64* %PC
  %20 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %17)
  ret %struct.Memory* %20
}


define %struct.Memory* @routine_movslq__edi___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




































define %struct.Memory* @routine_movl_0x88__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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




define %struct.Memory* @routine_jl_.L_435f66(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JLEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}




























define %struct.Memory* @routine_movl_MINUS0x50__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl___rax__rcx_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %18)
  ret %struct.Memory* %21
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




define %struct.Memory* @routine_addl___rax__rcx_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 3
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %15, i64 %19)
  ret %struct.Memory* %22
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










define %struct.Memory* @routine_movslq_MINUS0x50__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl___rcx__r8_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %R8
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %18)
  ret %struct.Memory* %21
}




define %struct.Memory* @routine_movq_0x138__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 312
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_addl___rcx__r8_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %R8
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %15, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movq_MINUS0x48__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movslq__esi___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl___rcx__r8_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %R8
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %18)
  ret %struct.Memory* %21
}






define %struct.Memory* @routine_movq_0x10__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 16
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_addl___rcx__r8_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %R8
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %15, i64 %19)
  ret %struct.Memory* %22
}




define %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 88
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_MINUS0x58__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
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




define %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movl__eax____rcx__r8_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %R8
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %EAX
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}




define %struct.Memory* @routine_movq_0x140__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 320
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq_MINUS0x8__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsbl___r8__r9_1____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 19
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R9 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %R8
  %16 = load i64, i64* %R9
  %17 = add i64 %16, %15
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 5
  store i64 %19, i64* %PC
  %20 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %17)
  ret %struct.Memory* %20
}


define %struct.Memory* @routine_movslq__eax___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl___rcx__r8_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %R8
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %18)
  ret %struct.Memory* %21
}










define %struct.Memory* @routine_addl___rcx__r8_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %R8
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %15, i64 %19)
  ret %struct.Memory* %22
}






define %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
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














define %struct.Memory* @routine_movq_0x20__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 32
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}
















define %struct.Memory* @routine_movl_MINUS0x50__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_movq_0x18__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}
























define %struct.Memory* @routine_movq_0x148__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 328
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}














































define %struct.Memory* @routine_movq_0x30__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 48
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}




























define %struct.Memory* @routine_movq_0x28__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 40
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}




























define %struct.Memory* @routine_jmpq_.L_435cea(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_435f6b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_435f70(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_435a42(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpq__0x0__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
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

define %struct.Memory* @routine_je_.L_435fa6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax____rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jmpq_.L_435faf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.FreePlan7Matrix(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl_MINUS0x54__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.Scorify(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addq__0x60___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 96)
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

