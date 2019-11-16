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


define %struct.Memory* @P7Forward(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .P7Forward:	 RIP: 407f70	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 407f70	 Bytes: 1
  %loadMem_407f70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407f70 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407f70)
  store %struct.Memory* %call_407f70, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 407f71	 Bytes: 3
  %loadMem_407f71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407f71 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407f71)
  store %struct.Memory* %call_407f71, %struct.Memory** %MEMORY

  ; Code: subq $0x60, %rsp	 RIP: 407f74	 Bytes: 4
  %loadMem_407f74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407f74 = call %struct.Memory* @routine_subq__0x60___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407f74)
  store %struct.Memory* %call_407f74, %struct.Memory** %MEMORY

  ; Code: leaq -0x30(%rbp), %rax	 RIP: 407f78	 Bytes: 4
  %loadMem_407f78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407f78 = call %struct.Memory* @routine_leaq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407f78)
  store %struct.Memory* %call_407f78, %struct.Memory** %MEMORY

  ; Code: leaq -0x38(%rbp), %r8	 RIP: 407f7c	 Bytes: 4
  %loadMem_407f7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407f7c = call %struct.Memory* @routine_leaq_MINUS0x38__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407f7c)
  store %struct.Memory* %call_407f7c, %struct.Memory** %MEMORY

  ; Code: leaq -0x40(%rbp), %r9	 RIP: 407f80	 Bytes: 4
  %loadMem_407f80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407f80 = call %struct.Memory* @routine_leaq_MINUS0x40__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407f80)
  store %struct.Memory* %call_407f80, %struct.Memory** %MEMORY

  ; Code: leaq -0x48(%rbp), %r10	 RIP: 407f84	 Bytes: 4
  %loadMem_407f84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407f84 = call %struct.Memory* @routine_leaq_MINUS0x48__rbp____r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407f84)
  store %struct.Memory* %call_407f84, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x8(%rbp)	 RIP: 407f88	 Bytes: 4
  %loadMem_407f88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407f88 = call %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407f88)
  store %struct.Memory* %call_407f88, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0xc(%rbp)	 RIP: 407f8c	 Bytes: 3
  %loadMem_407f8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407f8c = call %struct.Memory* @routine_movl__esi__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407f8c)
  store %struct.Memory* %call_407f8c, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x18(%rbp)	 RIP: 407f8f	 Bytes: 4
  %loadMem_407f8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407f8f = call %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407f8f)
  store %struct.Memory* %call_407f8f, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x20(%rbp)	 RIP: 407f93	 Bytes: 4
  %loadMem_407f93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407f93 = call %struct.Memory* @routine_movq__rcx__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407f93)
  store %struct.Memory* %call_407f93, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %esi	 RIP: 407f97	 Bytes: 3
  %loadMem_407f97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407f97 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407f97)
  store %struct.Memory* %call_407f97, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 407f9a	 Bytes: 3
  %loadMem_407f9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407f9a = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407f9a)
  store %struct.Memory* %call_407f9a, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 407f9d	 Bytes: 4
  %loadMem_407f9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407f9d = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407f9d)
  store %struct.Memory* %call_407f9d, %struct.Memory** %MEMORY

  ; Code: movl 0x88(%rcx), %r11d	 RIP: 407fa1	 Bytes: 7
  %loadMem_407fa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407fa1 = call %struct.Memory* @routine_movl_0x88__rcx____r11d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407fa1)
  store %struct.Memory* %call_407fa1, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edi	 RIP: 407fa8	 Bytes: 2
  %loadMem_407fa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407fa8 = call %struct.Memory* @routine_movl__esi___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407fa8)
  store %struct.Memory* %call_407fa8, %struct.Memory** %MEMORY

  ; Code: movl %r11d, %esi	 RIP: 407faa	 Bytes: 3
  %loadMem_407faa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407faa = call %struct.Memory* @routine_movl__r11d___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407faa)
  store %struct.Memory* %call_407faa, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 407fad	 Bytes: 3
  %loadMem_407fad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407fad = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407fad)
  store %struct.Memory* %call_407fad, %struct.Memory** %MEMORY

  ; Code: movq %r8, %rcx	 RIP: 407fb0	 Bytes: 3
  %loadMem_407fb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407fb0 = call %struct.Memory* @routine_movq__r8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407fb0)
  store %struct.Memory* %call_407fb0, %struct.Memory** %MEMORY

  ; Code: movq %r9, %r8	 RIP: 407fb3	 Bytes: 3
  %loadMem_407fb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407fb3 = call %struct.Memory* @routine_movq__r9___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407fb3)
  store %struct.Memory* %call_407fb3, %struct.Memory** %MEMORY

  ; Code: movq %r10, %r9	 RIP: 407fb6	 Bytes: 3
  %loadMem_407fb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407fb6 = call %struct.Memory* @routine_movq__r10___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407fb6)
  store %struct.Memory* %call_407fb6, %struct.Memory** %MEMORY

  ; Code: callq .AllocPlan7Matrix	 RIP: 407fb9	 Bytes: 5
  %loadMem1_407fb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_407fb9 = call %struct.Memory* @routine_callq_.AllocPlan7Matrix(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_407fb9, i64 -1833, i64 5, i64 5)
  store %struct.Memory* %call1_407fb9, %struct.Memory** %MEMORY

  %loadMem2_407fb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_407fb9 = load i64, i64* %3
  %call2_407fb9 = call %struct.Memory* @sub_407890.AllocPlan7Matrix(%struct.State* %0, i64  %loadPC_407fb9, %struct.Memory* %loadMem2_407fb9)
  store %struct.Memory* %call2_407fb9, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x28(%rbp)	 RIP: 407fbe	 Bytes: 4
  %loadMem_407fbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407fbe = call %struct.Memory* @routine_movq__rax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407fbe)
  store %struct.Memory* %call_407fbe, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 407fc2	 Bytes: 4
  %loadMem_407fc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407fc2 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407fc2)
  store %struct.Memory* %call_407fc2, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 407fc6	 Bytes: 3
  %loadMem_407fc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407fc6 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407fc6)
  store %struct.Memory* %call_407fc6, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x10(%rax)	 RIP: 407fc9	 Bytes: 7
  %loadMem_407fc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407fc9 = call %struct.Memory* @routine_movl__0x0__0x10__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407fc9)
  store %struct.Memory* %call_407fc9, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 407fd0	 Bytes: 4
  %loadMem_407fd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407fd0 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407fd0)
  store %struct.Memory* %call_407fd0, %struct.Memory** %MEMORY

  ; Code: movl 0x150(%rax), %esi	 RIP: 407fd4	 Bytes: 6
  %loadMem_407fd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407fd4 = call %struct.Memory* @routine_movl_0x150__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407fd4)
  store %struct.Memory* %call_407fd4, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 407fda	 Bytes: 4
  %loadMem_407fda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407fda = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407fda)
  store %struct.Memory* %call_407fda, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 407fde	 Bytes: 3
  %loadMem_407fde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407fde = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407fde)
  store %struct.Memory* %call_407fde, %struct.Memory** %MEMORY

  ; Code: movl %esi, (%rax)	 RIP: 407fe1	 Bytes: 2
  %loadMem_407fe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407fe1 = call %struct.Memory* @routine_movl__esi____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407fe1)
  store %struct.Memory* %call_407fe1, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 407fe3	 Bytes: 4
  %loadMem_407fe3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407fe3 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407fe3)
  store %struct.Memory* %call_407fe3, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 407fe7	 Bytes: 3
  %loadMem_407fe7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407fe7 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407fe7)
  store %struct.Memory* %call_407fe7, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, 0xc(%rax)	 RIP: 407fea	 Bytes: 7
  %loadMem_407fea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407fea = call %struct.Memory* @routine_movl__0xc521974f__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407fea)
  store %struct.Memory* %call_407fea, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 407ff1	 Bytes: 4
  %loadMem_407ff1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407ff1 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407ff1)
  store %struct.Memory* %call_407ff1, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 407ff5	 Bytes: 3
  %loadMem_407ff5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407ff5 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407ff5)
  store %struct.Memory* %call_407ff5, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, 0x8(%rax)	 RIP: 407ff8	 Bytes: 7
  %loadMem_407ff8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407ff8 = call %struct.Memory* @routine_movl__0xc521974f__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407ff8)
  store %struct.Memory* %call_407ff8, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 407fff	 Bytes: 4
  %loadMem_407fff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407fff = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407fff)
  store %struct.Memory* %call_407fff, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 408003	 Bytes: 3
  %loadMem_408003 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408003 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408003)
  store %struct.Memory* %call_408003, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, 0x4(%rax)	 RIP: 408006	 Bytes: 7
  %loadMem_408006 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408006 = call %struct.Memory* @routine_movl__0xc521974f__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408006)
  store %struct.Memory* %call_408006, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x50(%rbp)	 RIP: 40800d	 Bytes: 7
  %loadMem_40800d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40800d = call %struct.Memory* @routine_movl__0x0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40800d)
  store %struct.Memory* %call_40800d, %struct.Memory** %MEMORY

  ; Code: .L_408014:	 RIP: 408014	 Bytes: 0
  br label %block_.L_408014
block_.L_408014:

  ; Code: movl -0x50(%rbp), %eax	 RIP: 408014	 Bytes: 3
  %loadMem_408014 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408014 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408014)
  store %struct.Memory* %call_408014, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 408017	 Bytes: 4
  %loadMem_408017 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408017 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408017)
  store %struct.Memory* %call_408017, %struct.Memory** %MEMORY

  ; Code: cmpl 0x88(%rcx), %eax	 RIP: 40801b	 Bytes: 6
  %loadMem_40801b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40801b = call %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40801b)
  store %struct.Memory* %call_40801b, %struct.Memory** %MEMORY

  ; Code: jg .L_40806b	 RIP: 408021	 Bytes: 6
  %loadMem_408021 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408021 = call %struct.Memory* @routine_jg_.L_40806b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408021, i8* %BRANCH_TAKEN, i64 74, i64 6, i64 6)
  store %struct.Memory* %call_408021, %struct.Memory** %MEMORY

  %loadBr_408021 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_408021 = icmp eq i8 %loadBr_408021, 1
  br i1 %cmpBr_408021, label %block_.L_40806b, label %block_408027

block_408027:
  ; Code: movq -0x48(%rbp), %rax	 RIP: 408027	 Bytes: 4
  %loadMem_408027 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408027 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408027)
  store %struct.Memory* %call_408027, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40802b	 Bytes: 3
  %loadMem_40802b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40802b = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40802b)
  store %struct.Memory* %call_40802b, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 40802e	 Bytes: 4
  %loadMem_40802e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40802e = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40802e)
  store %struct.Memory* %call_40802e, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, (%rax,%rcx,4)	 RIP: 408032	 Bytes: 7
  %loadMem_408032 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408032 = call %struct.Memory* @routine_movl__0xc521974f____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408032)
  store %struct.Memory* %call_408032, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rax	 RIP: 408039	 Bytes: 4
  %loadMem_408039 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408039 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408039)
  store %struct.Memory* %call_408039, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40803d	 Bytes: 3
  %loadMem_40803d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40803d = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40803d)
  store %struct.Memory* %call_40803d, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 408040	 Bytes: 4
  %loadMem_408040 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408040 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408040)
  store %struct.Memory* %call_408040, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, (%rax,%rcx,4)	 RIP: 408044	 Bytes: 7
  %loadMem_408044 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408044 = call %struct.Memory* @routine_movl__0xc521974f____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408044)
  store %struct.Memory* %call_408044, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 40804b	 Bytes: 4
  %loadMem_40804b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40804b = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40804b)
  store %struct.Memory* %call_40804b, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40804f	 Bytes: 3
  %loadMem_40804f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40804f = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40804f)
  store %struct.Memory* %call_40804f, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 408052	 Bytes: 4
  %loadMem_408052 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408052 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408052)
  store %struct.Memory* %call_408052, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, (%rax,%rcx,4)	 RIP: 408056	 Bytes: 7
  %loadMem_408056 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408056 = call %struct.Memory* @routine_movl__0xc521974f____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408056)
  store %struct.Memory* %call_408056, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %eax	 RIP: 40805d	 Bytes: 3
  %loadMem_40805d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40805d = call %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40805d)
  store %struct.Memory* %call_40805d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 408060	 Bytes: 3
  %loadMem_408060 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408060 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408060)
  store %struct.Memory* %call_408060, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x50(%rbp)	 RIP: 408063	 Bytes: 3
  %loadMem_408063 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408063 = call %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408063)
  store %struct.Memory* %call_408063, %struct.Memory** %MEMORY

  ; Code: jmpq .L_408014	 RIP: 408066	 Bytes: 5
  %loadMem_408066 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408066 = call %struct.Memory* @routine_jmpq_.L_408014(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408066, i64 -82, i64 5)
  store %struct.Memory* %call_408066, %struct.Memory** %MEMORY

  br label %block_.L_408014

  ; Code: .L_40806b:	 RIP: 40806b	 Bytes: 0
block_.L_40806b:

  ; Code: movl $0x1, -0x4c(%rbp)	 RIP: 40806b	 Bytes: 7
  %loadMem_40806b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40806b = call %struct.Memory* @routine_movl__0x1__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40806b)
  store %struct.Memory* %call_40806b, %struct.Memory** %MEMORY

  ; Code: .L_408072:	 RIP: 408072	 Bytes: 0
  br label %block_.L_408072
block_.L_408072:

  ; Code: movl -0x4c(%rbp), %eax	 RIP: 408072	 Bytes: 3
  %loadMem_408072 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408072 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408072)
  store %struct.Memory* %call_408072, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 408075	 Bytes: 3
  %loadMem_408075 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408075 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408075)
  store %struct.Memory* %call_408075, %struct.Memory** %MEMORY

  ; Code: jg .L_40868c	 RIP: 408078	 Bytes: 6
  %loadMem_408078 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408078 = call %struct.Memory* @routine_jg_.L_40868c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408078, i8* %BRANCH_TAKEN, i64 1556, i64 6, i64 6)
  store %struct.Memory* %call_408078, %struct.Memory** %MEMORY

  %loadBr_408078 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_408078 = icmp eq i8 %loadBr_408078, 1
  br i1 %cmpBr_408078, label %block_.L_40868c, label %block_40807e

block_40807e:
  ; Code: movq -0x48(%rbp), %rax	 RIP: 40807e	 Bytes: 4
  %loadMem_40807e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40807e = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40807e)
  store %struct.Memory* %call_40807e, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rcx	 RIP: 408082	 Bytes: 4
  %loadMem_408082 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408082 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408082)
  store %struct.Memory* %call_408082, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 408086	 Bytes: 4
  %loadMem_408086 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408086 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408086)
  store %struct.Memory* %call_408086, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, (%rax)	 RIP: 40808a	 Bytes: 6
  %loadMem_40808a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40808a = call %struct.Memory* @routine_movl__0xc521974f____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40808a)
  store %struct.Memory* %call_40808a, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rax	 RIP: 408090	 Bytes: 4
  %loadMem_408090 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408090 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408090)
  store %struct.Memory* %call_408090, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rcx	 RIP: 408094	 Bytes: 4
  %loadMem_408094 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408094 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408094)
  store %struct.Memory* %call_408094, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 408098	 Bytes: 4
  %loadMem_408098 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408098 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408098)
  store %struct.Memory* %call_408098, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, (%rax)	 RIP: 40809c	 Bytes: 6
  %loadMem_40809c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40809c = call %struct.Memory* @routine_movl__0xc521974f____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40809c)
  store %struct.Memory* %call_40809c, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 4080a2	 Bytes: 4
  %loadMem_4080a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4080a2 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4080a2)
  store %struct.Memory* %call_4080a2, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rcx	 RIP: 4080a6	 Bytes: 4
  %loadMem_4080a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4080a6 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4080a6)
  store %struct.Memory* %call_4080a6, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4080aa	 Bytes: 4
  %loadMem_4080aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4080aa = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4080aa)
  store %struct.Memory* %call_4080aa, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, (%rax)	 RIP: 4080ae	 Bytes: 6
  %loadMem_4080ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4080ae = call %struct.Memory* @routine_movl__0xc521974f____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4080ae)
  store %struct.Memory* %call_4080ae, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x50(%rbp)	 RIP: 4080b4	 Bytes: 7
  %loadMem_4080b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4080b4 = call %struct.Memory* @routine_movl__0x1__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4080b4)
  store %struct.Memory* %call_4080b4, %struct.Memory** %MEMORY

  ; Code: .L_4080bb:	 RIP: 4080bb	 Bytes: 0
  br label %block_.L_4080bb
block_.L_4080bb:

  ; Code: movl -0x50(%rbp), %eax	 RIP: 4080bb	 Bytes: 3
  %loadMem_4080bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4080bb = call %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4080bb)
  store %struct.Memory* %call_4080bb, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4080be	 Bytes: 4
  %loadMem_4080be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4080be = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4080be)
  store %struct.Memory* %call_4080be, %struct.Memory** %MEMORY

  ; Code: cmpl 0x88(%rcx), %eax	 RIP: 4080c2	 Bytes: 6
  %loadMem_4080c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4080c2 = call %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4080c2)
  store %struct.Memory* %call_4080c2, %struct.Memory** %MEMORY

  ; Code: jge .L_40835c	 RIP: 4080c8	 Bytes: 6
  %loadMem_4080c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4080c8 = call %struct.Memory* @routine_jge_.L_40835c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4080c8, i8* %BRANCH_TAKEN, i64 660, i64 6, i64 6)
  store %struct.Memory* %call_4080c8, %struct.Memory** %MEMORY

  %loadBr_4080c8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4080c8 = icmp eq i8 %loadBr_4080c8, 1
  br i1 %cmpBr_4080c8, label %block_.L_40835c, label %block_4080ce

block_4080ce:
  ; Code: movq -0x38(%rbp), %rax	 RIP: 4080ce	 Bytes: 4
  %loadMem_4080ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4080ce = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4080ce)
  store %struct.Memory* %call_4080ce, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %ecx	 RIP: 4080d2	 Bytes: 3
  %loadMem_4080d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4080d2 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4080d2)
  store %struct.Memory* %call_4080d2, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 4080d5	 Bytes: 3
  %loadMem_4080d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4080d5 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4080d5)
  store %struct.Memory* %call_4080d5, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 4080d8	 Bytes: 3
  %loadMem_4080d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4080d8 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4080d8)
  store %struct.Memory* %call_4080d8, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 4080db	 Bytes: 4
  %loadMem_4080db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4080db = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4080db)
  store %struct.Memory* %call_4080db, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %ecx	 RIP: 4080df	 Bytes: 3
  %loadMem_4080df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4080df = call %struct.Memory* @routine_movl_MINUS0x50__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4080df)
  store %struct.Memory* %call_4080df, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 4080e2	 Bytes: 3
  %loadMem_4080e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4080e2 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4080e2)
  store %struct.Memory* %call_4080e2, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 4080e5	 Bytes: 3
  %loadMem_4080e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4080e5 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4080e5)
  store %struct.Memory* %call_4080e5, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rdx,4), %ecx	 RIP: 4080e8	 Bytes: 3
  %loadMem_4080e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4080e8 = call %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4080e8)
  store %struct.Memory* %call_4080e8, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 4080eb	 Bytes: 4
  %loadMem_4080eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4080eb = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4080eb)
  store %struct.Memory* %call_4080eb, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rax), %rax	 RIP: 4080ef	 Bytes: 7
  %loadMem_4080ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4080ef = call %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4080ef)
  store %struct.Memory* %call_4080ef, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 4080f6	 Bytes: 3
  %loadMem_4080f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4080f6 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4080f6)
  store %struct.Memory* %call_4080f6, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %esi	 RIP: 4080f9	 Bytes: 3
  %loadMem_4080f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4080f9 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4080f9)
  store %struct.Memory* %call_4080f9, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 4080fc	 Bytes: 3
  %loadMem_4080fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4080fc = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4080fc)
  store %struct.Memory* %call_4080fc, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdx	 RIP: 4080ff	 Bytes: 3
  %loadMem_4080ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4080ff = call %struct.Memory* @routine_movslq__esi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4080ff)
  store %struct.Memory* %call_4080ff, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rdx,4), %ecx	 RIP: 408102	 Bytes: 3
  %loadMem_408102 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408102 = call %struct.Memory* @routine_addl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408102)
  store %struct.Memory* %call_408102, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rax	 RIP: 408105	 Bytes: 4
  %loadMem_408105 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408105 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408105)
  store %struct.Memory* %call_408105, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %esi	 RIP: 408109	 Bytes: 3
  %loadMem_408109 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408109 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408109)
  store %struct.Memory* %call_408109, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 40810c	 Bytes: 3
  %loadMem_40810c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40810c = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40810c)
  store %struct.Memory* %call_40810c, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdx	 RIP: 40810f	 Bytes: 3
  %loadMem_40810f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40810f = call %struct.Memory* @routine_movslq__esi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40810f)
  store %struct.Memory* %call_40810f, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 408112	 Bytes: 4
  %loadMem_408112 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408112 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408112)
  store %struct.Memory* %call_408112, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %esi	 RIP: 408116	 Bytes: 3
  %loadMem_408116 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408116 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408116)
  store %struct.Memory* %call_408116, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 408119	 Bytes: 3
  %loadMem_408119 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408119 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408119)
  store %struct.Memory* %call_408119, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdx	 RIP: 40811c	 Bytes: 3
  %loadMem_40811c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40811c = call %struct.Memory* @routine_movslq__esi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40811c)
  store %struct.Memory* %call_40811c, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rdx,4), %esi	 RIP: 40811f	 Bytes: 3
  %loadMem_40811f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40811f = call %struct.Memory* @routine_movl___rax__rdx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40811f)
  store %struct.Memory* %call_40811f, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 408122	 Bytes: 4
  %loadMem_408122 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408122 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408122)
  store %struct.Memory* %call_408122, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rax), %rax	 RIP: 408126	 Bytes: 7
  %loadMem_408126 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408126 = call %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408126)
  store %struct.Memory* %call_408126, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax), %rax	 RIP: 40812d	 Bytes: 4
  %loadMem_40812d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40812d = call %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40812d)
  store %struct.Memory* %call_40812d, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %edi	 RIP: 408131	 Bytes: 3
  %loadMem_408131 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408131 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408131)
  store %struct.Memory* %call_408131, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edi	 RIP: 408134	 Bytes: 3
  %loadMem_408134 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408134 = call %struct.Memory* @routine_subl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408134)
  store %struct.Memory* %call_408134, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %rdx	 RIP: 408137	 Bytes: 3
  %loadMem_408137 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408137 = call %struct.Memory* @routine_movslq__edi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408137)
  store %struct.Memory* %call_408137, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rdx,4), %esi	 RIP: 40813a	 Bytes: 3
  %loadMem_40813a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40813a = call %struct.Memory* @routine_addl___rax__rdx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40813a)
  store %struct.Memory* %call_40813a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edi	 RIP: 40813d	 Bytes: 2
  %loadMem_40813d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40813d = call %struct.Memory* @routine_movl__ecx___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40813d)
  store %struct.Memory* %call_40813d, %struct.Memory** %MEMORY

  ; Code: callq .ILogsum	 RIP: 40813f	 Bytes: 5
  %loadMem1_40813f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40813f = call %struct.Memory* @routine_callq_.ILogsum(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40813f, i64 131185, i64 5, i64 5)
  store %struct.Memory* %call1_40813f, %struct.Memory** %MEMORY

  %loadMem2_40813f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40813f = load i64, i64* %3
  %call2_40813f = call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* %0, i64  %loadPC_40813f, %struct.Memory* %loadMem2_40813f)
  store %struct.Memory* %call2_40813f, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rdx	 RIP: 408144	 Bytes: 4
  %loadMem_408144 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408144 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408144)
  store %struct.Memory* %call_408144, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %ecx	 RIP: 408148	 Bytes: 3
  %loadMem_408148 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408148 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408148)
  store %struct.Memory* %call_408148, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 40814b	 Bytes: 3
  %loadMem_40814b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40814b = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40814b)
  store %struct.Memory* %call_40814b, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %r8	 RIP: 40814e	 Bytes: 3
  %loadMem_40814e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40814e = call %struct.Memory* @routine_movslq__ecx___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40814e)
  store %struct.Memory* %call_40814e, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%r8,8), %rdx	 RIP: 408151	 Bytes: 4
  %loadMem_408151 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408151 = call %struct.Memory* @routine_movq___rdx__r8_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408151)
  store %struct.Memory* %call_408151, %struct.Memory** %MEMORY

  ; Code: movl (%rdx), %ecx	 RIP: 408155	 Bytes: 2
  %loadMem_408155 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408155 = call %struct.Memory* @routine_movl___rdx____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408155)
  store %struct.Memory* %call_408155, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 408157	 Bytes: 4
  %loadMem_408157 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408157 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408157)
  store %struct.Memory* %call_408157, %struct.Memory** %MEMORY

  ; Code: movq 0x170(%rdx), %rdx	 RIP: 40815b	 Bytes: 7
  %loadMem_40815b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40815b = call %struct.Memory* @routine_movq_0x170__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40815b)
  store %struct.Memory* %call_40815b, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %r8	 RIP: 408162	 Bytes: 4
  %loadMem_408162 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408162 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408162)
  store %struct.Memory* %call_408162, %struct.Memory** %MEMORY

  ; Code: addl (%rdx,%r8,4), %ecx	 RIP: 408166	 Bytes: 4
  %loadMem_408166 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408166 = call %struct.Memory* @routine_addl___rdx__r8_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408166)
  store %struct.Memory* %call_408166, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rdx	 RIP: 40816a	 Bytes: 4
  %loadMem_40816a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40816a = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40816a)
  store %struct.Memory* %call_40816a, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %esi	 RIP: 40816e	 Bytes: 3
  %loadMem_40816e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40816e = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40816e)
  store %struct.Memory* %call_40816e, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 408171	 Bytes: 3
  %loadMem_408171 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408171 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408171)
  store %struct.Memory* %call_408171, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %r8	 RIP: 408174	 Bytes: 3
  %loadMem_408174 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408174 = call %struct.Memory* @routine_movslq__esi___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408174)
  store %struct.Memory* %call_408174, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%r8,8), %rdx	 RIP: 408177	 Bytes: 4
  %loadMem_408177 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408177 = call %struct.Memory* @routine_movq___rdx__r8_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408177)
  store %struct.Memory* %call_408177, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %esi	 RIP: 40817b	 Bytes: 3
  %loadMem_40817b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40817b = call %struct.Memory* @routine_movl_MINUS0x50__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40817b)
  store %struct.Memory* %call_40817b, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 40817e	 Bytes: 3
  %loadMem_40817e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40817e = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40817e)
  store %struct.Memory* %call_40817e, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %r8	 RIP: 408181	 Bytes: 3
  %loadMem_408181 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408181 = call %struct.Memory* @routine_movslq__esi___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408181)
  store %struct.Memory* %call_408181, %struct.Memory** %MEMORY

  ; Code: movl (%rdx,%r8,4), %esi	 RIP: 408184	 Bytes: 4
  %loadMem_408184 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408184 = call %struct.Memory* @routine_movl___rdx__r8_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408184)
  store %struct.Memory* %call_408184, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 408188	 Bytes: 4
  %loadMem_408188 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408188 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408188)
  store %struct.Memory* %call_408188, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rdx), %rdx	 RIP: 40818c	 Bytes: 7
  %loadMem_40818c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40818c = call %struct.Memory* @routine_movq_0x138__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40818c)
  store %struct.Memory* %call_40818c, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rdx), %rdx	 RIP: 408193	 Bytes: 4
  %loadMem_408193 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408193 = call %struct.Memory* @routine_movq_0x28__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408193)
  store %struct.Memory* %call_408193, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %edi	 RIP: 408197	 Bytes: 3
  %loadMem_408197 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408197 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408197)
  store %struct.Memory* %call_408197, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edi	 RIP: 40819a	 Bytes: 3
  %loadMem_40819a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40819a = call %struct.Memory* @routine_subl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40819a)
  store %struct.Memory* %call_40819a, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %r8	 RIP: 40819d	 Bytes: 3
  %loadMem_40819d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40819d = call %struct.Memory* @routine_movslq__edi___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40819d)
  store %struct.Memory* %call_40819d, %struct.Memory** %MEMORY

  ; Code: addl (%rdx,%r8,4), %esi	 RIP: 4081a0	 Bytes: 4
  %loadMem_4081a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4081a0 = call %struct.Memory* @routine_addl___rdx__r8_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4081a0)
  store %struct.Memory* %call_4081a0, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edi	 RIP: 4081a4	 Bytes: 2
  %loadMem_4081a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4081a4 = call %struct.Memory* @routine_movl__ecx___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4081a4)
  store %struct.Memory* %call_4081a4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x58(%rbp)	 RIP: 4081a6	 Bytes: 3
  %loadMem_4081a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4081a6 = call %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4081a6)
  store %struct.Memory* %call_4081a6, %struct.Memory** %MEMORY

  ; Code: callq .ILogsum	 RIP: 4081a9	 Bytes: 5
  %loadMem1_4081a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4081a9 = call %struct.Memory* @routine_callq_.ILogsum(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4081a9, i64 131079, i64 5, i64 5)
  store %struct.Memory* %call1_4081a9, %struct.Memory** %MEMORY

  %loadMem2_4081a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4081a9 = load i64, i64* %3
  %call2_4081a9 = call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* %0, i64  %loadPC_4081a9, %struct.Memory* %loadMem2_4081a9)
  store %struct.Memory* %call2_4081a9, %struct.Memory** %MEMORY

  ; Code: movl -0x58(%rbp), %edi	 RIP: 4081ae	 Bytes: 3
  %loadMem_4081ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4081ae = call %struct.Memory* @routine_movl_MINUS0x58__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4081ae)
  store %struct.Memory* %call_4081ae, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 4081b1	 Bytes: 2
  %loadMem_4081b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4081b1 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4081b1)
  store %struct.Memory* %call_4081b1, %struct.Memory** %MEMORY

  ; Code: callq .ILogsum	 RIP: 4081b3	 Bytes: 5
  %loadMem1_4081b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4081b3 = call %struct.Memory* @routine_callq_.ILogsum(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4081b3, i64 131069, i64 5, i64 5)
  store %struct.Memory* %call1_4081b3, %struct.Memory** %MEMORY

  %loadMem2_4081b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4081b3 = load i64, i64* %3
  %call2_4081b3 = call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* %0, i64  %loadPC_4081b3, %struct.Memory* %loadMem2_4081b3)
  store %struct.Memory* %call2_4081b3, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdx	 RIP: 4081b8	 Bytes: 4
  %loadMem_4081b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4081b8 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4081b8)
  store %struct.Memory* %call_4081b8, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %r8	 RIP: 4081bc	 Bytes: 4
  %loadMem_4081bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4081bc = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4081bc)
  store %struct.Memory* %call_4081bc, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%r8,8), %rdx	 RIP: 4081c0	 Bytes: 4
  %loadMem_4081c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4081c0 = call %struct.Memory* @routine_movq___rdx__r8_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4081c0)
  store %struct.Memory* %call_4081c0, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %r8	 RIP: 4081c4	 Bytes: 4
  %loadMem_4081c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4081c4 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4081c4)
  store %struct.Memory* %call_4081c4, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rdx,%r8,4)	 RIP: 4081c8	 Bytes: 4
  %loadMem_4081c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4081c8 = call %struct.Memory* @routine_movl__eax____rdx__r8_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4081c8)
  store %struct.Memory* %call_4081c8, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 4081cc	 Bytes: 4
  %loadMem_4081cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4081cc = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4081cc)
  store %struct.Memory* %call_4081cc, %struct.Memory** %MEMORY

  ; Code: movq 0x140(%rdx), %rdx	 RIP: 4081d0	 Bytes: 7
  %loadMem_4081d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4081d0 = call %struct.Memory* @routine_movq_0x140__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4081d0)
  store %struct.Memory* %call_4081d0, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %r8	 RIP: 4081d7	 Bytes: 4
  %loadMem_4081d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4081d7 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4081d7)
  store %struct.Memory* %call_4081d7, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %r9	 RIP: 4081db	 Bytes: 4
  %loadMem_4081db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4081db = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4081db)
  store %struct.Memory* %call_4081db, %struct.Memory** %MEMORY

  ; Code: movsbl (%r8,%r9,1), %eax	 RIP: 4081df	 Bytes: 5
  %loadMem_4081df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4081df = call %struct.Memory* @routine_movsbl___r8__r9_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4081df)
  store %struct.Memory* %call_4081df, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %r8	 RIP: 4081e4	 Bytes: 3
  %loadMem_4081e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4081e4 = call %struct.Memory* @routine_movslq__eax___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4081e4)
  store %struct.Memory* %call_4081e4, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%r8,8), %rdx	 RIP: 4081e7	 Bytes: 4
  %loadMem_4081e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4081e7 = call %struct.Memory* @routine_movq___rdx__r8_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4081e7)
  store %struct.Memory* %call_4081e7, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %r8	 RIP: 4081eb	 Bytes: 4
  %loadMem_4081eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4081eb = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4081eb)
  store %struct.Memory* %call_4081eb, %struct.Memory** %MEMORY

  ; Code: movl (%rdx,%r8,4), %eax	 RIP: 4081ef	 Bytes: 4
  %loadMem_4081ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4081ef = call %struct.Memory* @routine_movl___rdx__r8_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4081ef)
  store %struct.Memory* %call_4081ef, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdx	 RIP: 4081f3	 Bytes: 4
  %loadMem_4081f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4081f3 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4081f3)
  store %struct.Memory* %call_4081f3, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %r8	 RIP: 4081f7	 Bytes: 4
  %loadMem_4081f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4081f7 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4081f7)
  store %struct.Memory* %call_4081f7, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%r8,8), %rdx	 RIP: 4081fb	 Bytes: 4
  %loadMem_4081fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4081fb = call %struct.Memory* @routine_movq___rdx__r8_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4081fb)
  store %struct.Memory* %call_4081fb, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %r8	 RIP: 4081ff	 Bytes: 4
  %loadMem_4081ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4081ff = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4081ff)
  store %struct.Memory* %call_4081ff, %struct.Memory** %MEMORY

  ; Code: addl (%rdx,%r8,4), %eax	 RIP: 408203	 Bytes: 4
  %loadMem_408203 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408203 = call %struct.Memory* @routine_addl___rdx__r8_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408203)
  store %struct.Memory* %call_408203, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rdx,%r8,4)	 RIP: 408207	 Bytes: 4
  %loadMem_408207 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408207 = call %struct.Memory* @routine_movl__eax____rdx__r8_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408207)
  store %struct.Memory* %call_408207, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdx	 RIP: 40820b	 Bytes: 4
  %loadMem_40820b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40820b = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40820b)
  store %struct.Memory* %call_40820b, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %r8	 RIP: 40820f	 Bytes: 4
  %loadMem_40820f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40820f = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40820f)
  store %struct.Memory* %call_40820f, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%r8,8), %rdx	 RIP: 408213	 Bytes: 4
  %loadMem_408213 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408213 = call %struct.Memory* @routine_movq___rdx__r8_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408213)
  store %struct.Memory* %call_408213, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %eax	 RIP: 408217	 Bytes: 3
  %loadMem_408217 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408217 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408217)
  store %struct.Memory* %call_408217, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 40821a	 Bytes: 3
  %loadMem_40821a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40821a = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40821a)
  store %struct.Memory* %call_40821a, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %r8	 RIP: 40821d	 Bytes: 3
  %loadMem_40821d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40821d = call %struct.Memory* @routine_movslq__eax___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40821d)
  store %struct.Memory* %call_40821d, %struct.Memory** %MEMORY

  ; Code: movl (%rdx,%r8,4), %eax	 RIP: 408220	 Bytes: 4
  %loadMem_408220 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408220 = call %struct.Memory* @routine_movl___rdx__r8_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408220)
  store %struct.Memory* %call_408220, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 408224	 Bytes: 4
  %loadMem_408224 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408224 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408224)
  store %struct.Memory* %call_408224, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rdx), %rdx	 RIP: 408228	 Bytes: 7
  %loadMem_408228 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408228 = call %struct.Memory* @routine_movq_0x138__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408228)
  store %struct.Memory* %call_408228, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rdx), %rdx	 RIP: 40822f	 Bytes: 4
  %loadMem_40822f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40822f = call %struct.Memory* @routine_movq_0x10__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40822f)
  store %struct.Memory* %call_40822f, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %ecx	 RIP: 408233	 Bytes: 3
  %loadMem_408233 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408233 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408233)
  store %struct.Memory* %call_408233, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 408236	 Bytes: 3
  %loadMem_408236 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408236 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408236)
  store %struct.Memory* %call_408236, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %r8	 RIP: 408239	 Bytes: 3
  %loadMem_408239 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408239 = call %struct.Memory* @routine_movslq__ecx___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408239)
  store %struct.Memory* %call_408239, %struct.Memory** %MEMORY

  ; Code: addl (%rdx,%r8,4), %eax	 RIP: 40823c	 Bytes: 4
  %loadMem_40823c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40823c = call %struct.Memory* @routine_addl___rdx__r8_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40823c)
  store %struct.Memory* %call_40823c, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rdx	 RIP: 408240	 Bytes: 4
  %loadMem_408240 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408240 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408240)
  store %struct.Memory* %call_408240, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %r8	 RIP: 408244	 Bytes: 4
  %loadMem_408244 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408244 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408244)
  store %struct.Memory* %call_408244, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%r8,8), %rdx	 RIP: 408248	 Bytes: 4
  %loadMem_408248 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408248 = call %struct.Memory* @routine_movq___rdx__r8_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408248)
  store %struct.Memory* %call_408248, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %ecx	 RIP: 40824c	 Bytes: 3
  %loadMem_40824c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40824c = call %struct.Memory* @routine_movl_MINUS0x50__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40824c)
  store %struct.Memory* %call_40824c, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 40824f	 Bytes: 3
  %loadMem_40824f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40824f = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40824f)
  store %struct.Memory* %call_40824f, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %r8	 RIP: 408252	 Bytes: 3
  %loadMem_408252 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408252 = call %struct.Memory* @routine_movslq__ecx___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408252)
  store %struct.Memory* %call_408252, %struct.Memory** %MEMORY

  ; Code: movl (%rdx,%r8,4), %ecx	 RIP: 408255	 Bytes: 4
  %loadMem_408255 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408255 = call %struct.Memory* @routine_movl___rdx__r8_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408255)
  store %struct.Memory* %call_408255, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 408259	 Bytes: 4
  %loadMem_408259 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408259 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408259)
  store %struct.Memory* %call_408259, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rdx), %rdx	 RIP: 40825d	 Bytes: 7
  %loadMem_40825d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40825d = call %struct.Memory* @routine_movq_0x138__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40825d)
  store %struct.Memory* %call_40825d, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rdx), %rdx	 RIP: 408264	 Bytes: 4
  %loadMem_408264 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408264 = call %struct.Memory* @routine_movq_0x30__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408264)
  store %struct.Memory* %call_408264, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %esi	 RIP: 408268	 Bytes: 3
  %loadMem_408268 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408268 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408268)
  store %struct.Memory* %call_408268, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 40826b	 Bytes: 3
  %loadMem_40826b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40826b = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40826b)
  store %struct.Memory* %call_40826b, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %r8	 RIP: 40826e	 Bytes: 3
  %loadMem_40826e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40826e = call %struct.Memory* @routine_movslq__esi___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40826e)
  store %struct.Memory* %call_40826e, %struct.Memory** %MEMORY

  ; Code: addl (%rdx,%r8,4), %ecx	 RIP: 408271	 Bytes: 4
  %loadMem_408271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408271 = call %struct.Memory* @routine_addl___rdx__r8_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408271)
  store %struct.Memory* %call_408271, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 408275	 Bytes: 2
  %loadMem_408275 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408275 = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408275)
  store %struct.Memory* %call_408275, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %esi	 RIP: 408277	 Bytes: 2
  %loadMem_408277 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408277 = call %struct.Memory* @routine_movl__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408277)
  store %struct.Memory* %call_408277, %struct.Memory** %MEMORY

  ; Code: callq .ILogsum	 RIP: 408279	 Bytes: 5
  %loadMem1_408279 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_408279 = call %struct.Memory* @routine_callq_.ILogsum(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_408279, i64 130871, i64 5, i64 5)
  store %struct.Memory* %call1_408279, %struct.Memory** %MEMORY

  %loadMem2_408279 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_408279 = load i64, i64* %3
  %call2_408279 = call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* %0, i64  %loadPC_408279, %struct.Memory* %loadMem2_408279)
  store %struct.Memory* %call2_408279, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rdx	 RIP: 40827e	 Bytes: 4
  %loadMem_40827e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40827e = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40827e)
  store %struct.Memory* %call_40827e, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %r8	 RIP: 408282	 Bytes: 4
  %loadMem_408282 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408282 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408282)
  store %struct.Memory* %call_408282, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%r8,8), %rdx	 RIP: 408286	 Bytes: 4
  %loadMem_408286 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408286 = call %struct.Memory* @routine_movq___rdx__r8_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408286)
  store %struct.Memory* %call_408286, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %r8	 RIP: 40828a	 Bytes: 4
  %loadMem_40828a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40828a = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40828a)
  store %struct.Memory* %call_40828a, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rdx,%r8,4)	 RIP: 40828e	 Bytes: 4
  %loadMem_40828e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40828e = call %struct.Memory* @routine_movl__eax____rdx__r8_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40828e)
  store %struct.Memory* %call_40828e, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdx	 RIP: 408292	 Bytes: 4
  %loadMem_408292 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408292 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408292)
  store %struct.Memory* %call_408292, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %eax	 RIP: 408296	 Bytes: 3
  %loadMem_408296 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408296 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408296)
  store %struct.Memory* %call_408296, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 408299	 Bytes: 3
  %loadMem_408299 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408299 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408299)
  store %struct.Memory* %call_408299, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %r8	 RIP: 40829c	 Bytes: 3
  %loadMem_40829c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40829c = call %struct.Memory* @routine_movslq__eax___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40829c)
  store %struct.Memory* %call_40829c, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%r8,8), %rdx	 RIP: 40829f	 Bytes: 4
  %loadMem_40829f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40829f = call %struct.Memory* @routine_movq___rdx__r8_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40829f)
  store %struct.Memory* %call_40829f, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %r8	 RIP: 4082a3	 Bytes: 4
  %loadMem_4082a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4082a3 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4082a3)
  store %struct.Memory* %call_4082a3, %struct.Memory** %MEMORY

  ; Code: movl (%rdx,%r8,4), %eax	 RIP: 4082a7	 Bytes: 4
  %loadMem_4082a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4082a7 = call %struct.Memory* @routine_movl___rdx__r8_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4082a7)
  store %struct.Memory* %call_4082a7, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 4082ab	 Bytes: 4
  %loadMem_4082ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4082ab = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4082ab)
  store %struct.Memory* %call_4082ab, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rdx), %rdx	 RIP: 4082af	 Bytes: 7
  %loadMem_4082af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4082af = call %struct.Memory* @routine_movq_0x138__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4082af)
  store %struct.Memory* %call_4082af, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rdx), %rdx	 RIP: 4082b6	 Bytes: 4
  %loadMem_4082b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4082b6 = call %struct.Memory* @routine_movq_0x8__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4082b6)
  store %struct.Memory* %call_4082b6, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %r8	 RIP: 4082ba	 Bytes: 4
  %loadMem_4082ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4082ba = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4082ba)
  store %struct.Memory* %call_4082ba, %struct.Memory** %MEMORY

  ; Code: addl (%rdx,%r8,4), %eax	 RIP: 4082be	 Bytes: 4
  %loadMem_4082be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4082be = call %struct.Memory* @routine_addl___rdx__r8_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4082be)
  store %struct.Memory* %call_4082be, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdx	 RIP: 4082c2	 Bytes: 4
  %loadMem_4082c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4082c2 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4082c2)
  store %struct.Memory* %call_4082c2, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %ecx	 RIP: 4082c6	 Bytes: 3
  %loadMem_4082c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4082c6 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4082c6)
  store %struct.Memory* %call_4082c6, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 4082c9	 Bytes: 3
  %loadMem_4082c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4082c9 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4082c9)
  store %struct.Memory* %call_4082c9, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %r8	 RIP: 4082cc	 Bytes: 3
  %loadMem_4082cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4082cc = call %struct.Memory* @routine_movslq__ecx___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4082cc)
  store %struct.Memory* %call_4082cc, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%r8,8), %rdx	 RIP: 4082cf	 Bytes: 4
  %loadMem_4082cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4082cf = call %struct.Memory* @routine_movq___rdx__r8_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4082cf)
  store %struct.Memory* %call_4082cf, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %r8	 RIP: 4082d3	 Bytes: 4
  %loadMem_4082d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4082d3 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4082d3)
  store %struct.Memory* %call_4082d3, %struct.Memory** %MEMORY

  ; Code: movl (%rdx,%r8,4), %ecx	 RIP: 4082d7	 Bytes: 4
  %loadMem_4082d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4082d7 = call %struct.Memory* @routine_movl___rdx__r8_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4082d7)
  store %struct.Memory* %call_4082d7, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 4082db	 Bytes: 4
  %loadMem_4082db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4082db = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4082db)
  store %struct.Memory* %call_4082db, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rdx), %rdx	 RIP: 4082df	 Bytes: 7
  %loadMem_4082df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4082df = call %struct.Memory* @routine_movq_0x138__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4082df)
  store %struct.Memory* %call_4082df, %struct.Memory** %MEMORY

  ; Code: movq 0x20(%rdx), %rdx	 RIP: 4082e6	 Bytes: 4
  %loadMem_4082e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4082e6 = call %struct.Memory* @routine_movq_0x20__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4082e6)
  store %struct.Memory* %call_4082e6, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %r8	 RIP: 4082ea	 Bytes: 4
  %loadMem_4082ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4082ea = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4082ea)
  store %struct.Memory* %call_4082ea, %struct.Memory** %MEMORY

  ; Code: addl (%rdx,%r8,4), %ecx	 RIP: 4082ee	 Bytes: 4
  %loadMem_4082ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4082ee = call %struct.Memory* @routine_addl___rdx__r8_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4082ee)
  store %struct.Memory* %call_4082ee, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 4082f2	 Bytes: 2
  %loadMem_4082f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4082f2 = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4082f2)
  store %struct.Memory* %call_4082f2, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %esi	 RIP: 4082f4	 Bytes: 2
  %loadMem_4082f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4082f4 = call %struct.Memory* @routine_movl__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4082f4)
  store %struct.Memory* %call_4082f4, %struct.Memory** %MEMORY

  ; Code: callq .ILogsum	 RIP: 4082f6	 Bytes: 5
  %loadMem1_4082f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4082f6 = call %struct.Memory* @routine_callq_.ILogsum(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4082f6, i64 130746, i64 5, i64 5)
  store %struct.Memory* %call1_4082f6, %struct.Memory** %MEMORY

  %loadMem2_4082f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4082f6 = load i64, i64* %3
  %call2_4082f6 = call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* %0, i64  %loadPC_4082f6, %struct.Memory* %loadMem2_4082f6)
  store %struct.Memory* %call2_4082f6, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdx	 RIP: 4082fb	 Bytes: 4
  %loadMem_4082fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4082fb = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4082fb)
  store %struct.Memory* %call_4082fb, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %r8	 RIP: 4082ff	 Bytes: 4
  %loadMem_4082ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4082ff = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4082ff)
  store %struct.Memory* %call_4082ff, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%r8,8), %rdx	 RIP: 408303	 Bytes: 4
  %loadMem_408303 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408303 = call %struct.Memory* @routine_movq___rdx__r8_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408303)
  store %struct.Memory* %call_408303, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %r8	 RIP: 408307	 Bytes: 4
  %loadMem_408307 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408307 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408307)
  store %struct.Memory* %call_408307, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rdx,%r8,4)	 RIP: 40830b	 Bytes: 4
  %loadMem_40830b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40830b = call %struct.Memory* @routine_movl__eax____rdx__r8_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40830b)
  store %struct.Memory* %call_40830b, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 40830f	 Bytes: 4
  %loadMem_40830f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40830f = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40830f)
  store %struct.Memory* %call_40830f, %struct.Memory** %MEMORY

  ; Code: movq 0x148(%rdx), %rdx	 RIP: 408313	 Bytes: 7
  %loadMem_408313 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408313 = call %struct.Memory* @routine_movq_0x148__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408313)
  store %struct.Memory* %call_408313, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %r8	 RIP: 40831a	 Bytes: 4
  %loadMem_40831a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40831a = call %struct.Memory* @routine_movq_MINUS0x8__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40831a)
  store %struct.Memory* %call_40831a, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %r9	 RIP: 40831e	 Bytes: 4
  %loadMem_40831e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40831e = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40831e)
  store %struct.Memory* %call_40831e, %struct.Memory** %MEMORY

  ; Code: movsbl (%r8,%r9,1), %eax	 RIP: 408322	 Bytes: 5
  %loadMem_408322 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408322 = call %struct.Memory* @routine_movsbl___r8__r9_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408322)
  store %struct.Memory* %call_408322, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %r8	 RIP: 408327	 Bytes: 3
  %loadMem_408327 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408327 = call %struct.Memory* @routine_movslq__eax___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408327)
  store %struct.Memory* %call_408327, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%r8,8), %rdx	 RIP: 40832a	 Bytes: 4
  %loadMem_40832a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40832a = call %struct.Memory* @routine_movq___rdx__r8_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40832a)
  store %struct.Memory* %call_40832a, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %r8	 RIP: 40832e	 Bytes: 4
  %loadMem_40832e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40832e = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40832e)
  store %struct.Memory* %call_40832e, %struct.Memory** %MEMORY

  ; Code: movl (%rdx,%r8,4), %eax	 RIP: 408332	 Bytes: 4
  %loadMem_408332 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408332 = call %struct.Memory* @routine_movl___rdx__r8_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408332)
  store %struct.Memory* %call_408332, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdx	 RIP: 408336	 Bytes: 4
  %loadMem_408336 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408336 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408336)
  store %struct.Memory* %call_408336, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %r8	 RIP: 40833a	 Bytes: 4
  %loadMem_40833a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40833a = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40833a)
  store %struct.Memory* %call_40833a, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%r8,8), %rdx	 RIP: 40833e	 Bytes: 4
  %loadMem_40833e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40833e = call %struct.Memory* @routine_movq___rdx__r8_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40833e)
  store %struct.Memory* %call_40833e, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %r8	 RIP: 408342	 Bytes: 4
  %loadMem_408342 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408342 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408342)
  store %struct.Memory* %call_408342, %struct.Memory** %MEMORY

  ; Code: addl (%rdx,%r8,4), %eax	 RIP: 408346	 Bytes: 4
  %loadMem_408346 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408346 = call %struct.Memory* @routine_addl___rdx__r8_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408346)
  store %struct.Memory* %call_408346, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rdx,%r8,4)	 RIP: 40834a	 Bytes: 4
  %loadMem_40834a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40834a = call %struct.Memory* @routine_movl__eax____rdx__r8_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40834a)
  store %struct.Memory* %call_40834a, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %eax	 RIP: 40834e	 Bytes: 3
  %loadMem_40834e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40834e = call %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40834e)
  store %struct.Memory* %call_40834e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 408351	 Bytes: 3
  %loadMem_408351 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408351 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408351)
  store %struct.Memory* %call_408351, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x50(%rbp)	 RIP: 408354	 Bytes: 3
  %loadMem_408354 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408354 = call %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408354)
  store %struct.Memory* %call_408354, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4080bb	 RIP: 408357	 Bytes: 5
  %loadMem_408357 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408357 = call %struct.Memory* @routine_jmpq_.L_4080bb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408357, i64 -668, i64 5)
  store %struct.Memory* %call_408357, %struct.Memory** %MEMORY

  br label %block_.L_4080bb

  ; Code: .L_40835c:	 RIP: 40835c	 Bytes: 0
block_.L_40835c:

  ; Code: movq -0x38(%rbp), %rax	 RIP: 40835c	 Bytes: 4
  %loadMem_40835c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40835c = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40835c)
  store %struct.Memory* %call_40835c, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %ecx	 RIP: 408360	 Bytes: 3
  %loadMem_408360 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408360 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408360)
  store %struct.Memory* %call_408360, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 408363	 Bytes: 3
  %loadMem_408363 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408363 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408363)
  store %struct.Memory* %call_408363, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 408366	 Bytes: 3
  %loadMem_408366 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408366 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408366)
  store %struct.Memory* %call_408366, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 408369	 Bytes: 4
  %loadMem_408369 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408369 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408369)
  store %struct.Memory* %call_408369, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 40836d	 Bytes: 4
  %loadMem_40836d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40836d = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40836d)
  store %struct.Memory* %call_40836d, %struct.Memory** %MEMORY

  ; Code: movl 0x88(%rdx), %ecx	 RIP: 408371	 Bytes: 6
  %loadMem_408371 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408371 = call %struct.Memory* @routine_movl_0x88__rdx____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408371)
  store %struct.Memory* %call_408371, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 408377	 Bytes: 3
  %loadMem_408377 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408377 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408377)
  store %struct.Memory* %call_408377, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40837a	 Bytes: 3
  %loadMem_40837a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40837a = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40837a)
  store %struct.Memory* %call_40837a, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rdx,4), %ecx	 RIP: 40837d	 Bytes: 3
  %loadMem_40837d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40837d = call %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40837d)
  store %struct.Memory* %call_40837d, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 408380	 Bytes: 4
  %loadMem_408380 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408380 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408380)
  store %struct.Memory* %call_408380, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rax), %rax	 RIP: 408384	 Bytes: 7
  %loadMem_408384 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408384 = call %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408384)
  store %struct.Memory* %call_408384, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40838b	 Bytes: 3
  %loadMem_40838b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40838b = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40838b)
  store %struct.Memory* %call_40838b, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 40838e	 Bytes: 4
  %loadMem_40838e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40838e = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40838e)
  store %struct.Memory* %call_40838e, %struct.Memory** %MEMORY

  ; Code: movl 0x88(%rdx), %esi	 RIP: 408392	 Bytes: 6
  %loadMem_408392 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408392 = call %struct.Memory* @routine_movl_0x88__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408392)
  store %struct.Memory* %call_408392, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 408398	 Bytes: 3
  %loadMem_408398 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408398 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408398)
  store %struct.Memory* %call_408398, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdx	 RIP: 40839b	 Bytes: 3
  %loadMem_40839b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40839b = call %struct.Memory* @routine_movslq__esi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40839b)
  store %struct.Memory* %call_40839b, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rdx,4), %ecx	 RIP: 40839e	 Bytes: 3
  %loadMem_40839e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40839e = call %struct.Memory* @routine_addl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40839e)
  store %struct.Memory* %call_40839e, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rax	 RIP: 4083a1	 Bytes: 4
  %loadMem_4083a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4083a1 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4083a1)
  store %struct.Memory* %call_4083a1, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %esi	 RIP: 4083a5	 Bytes: 3
  %loadMem_4083a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4083a5 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4083a5)
  store %struct.Memory* %call_4083a5, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 4083a8	 Bytes: 3
  %loadMem_4083a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4083a8 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4083a8)
  store %struct.Memory* %call_4083a8, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdx	 RIP: 4083ab	 Bytes: 3
  %loadMem_4083ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4083ab = call %struct.Memory* @routine_movslq__esi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4083ab)
  store %struct.Memory* %call_4083ab, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 4083ae	 Bytes: 4
  %loadMem_4083ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4083ae = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4083ae)
  store %struct.Memory* %call_4083ae, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 4083b2	 Bytes: 4
  %loadMem_4083b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4083b2 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4083b2)
  store %struct.Memory* %call_4083b2, %struct.Memory** %MEMORY

  ; Code: movl 0x88(%rdx), %esi	 RIP: 4083b6	 Bytes: 6
  %loadMem_4083b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4083b6 = call %struct.Memory* @routine_movl_0x88__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4083b6)
  store %struct.Memory* %call_4083b6, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 4083bc	 Bytes: 3
  %loadMem_4083bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4083bc = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4083bc)
  store %struct.Memory* %call_4083bc, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdx	 RIP: 4083bf	 Bytes: 3
  %loadMem_4083bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4083bf = call %struct.Memory* @routine_movslq__esi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4083bf)
  store %struct.Memory* %call_4083bf, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rdx,4), %esi	 RIP: 4083c2	 Bytes: 3
  %loadMem_4083c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4083c2 = call %struct.Memory* @routine_movl___rax__rdx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4083c2)
  store %struct.Memory* %call_4083c2, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 4083c5	 Bytes: 4
  %loadMem_4083c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4083c5 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4083c5)
  store %struct.Memory* %call_4083c5, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rax), %rax	 RIP: 4083c9	 Bytes: 7
  %loadMem_4083c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4083c9 = call %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4083c9)
  store %struct.Memory* %call_4083c9, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax), %rax	 RIP: 4083d0	 Bytes: 4
  %loadMem_4083d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4083d0 = call %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4083d0)
  store %struct.Memory* %call_4083d0, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 4083d4	 Bytes: 4
  %loadMem_4083d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4083d4 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4083d4)
  store %struct.Memory* %call_4083d4, %struct.Memory** %MEMORY

  ; Code: movl 0x88(%rdx), %edi	 RIP: 4083d8	 Bytes: 6
  %loadMem_4083d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4083d8 = call %struct.Memory* @routine_movl_0x88__rdx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4083d8)
  store %struct.Memory* %call_4083d8, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edi	 RIP: 4083de	 Bytes: 3
  %loadMem_4083de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4083de = call %struct.Memory* @routine_subl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4083de)
  store %struct.Memory* %call_4083de, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %rdx	 RIP: 4083e1	 Bytes: 3
  %loadMem_4083e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4083e1 = call %struct.Memory* @routine_movslq__edi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4083e1)
  store %struct.Memory* %call_4083e1, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rdx,4), %esi	 RIP: 4083e4	 Bytes: 3
  %loadMem_4083e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4083e4 = call %struct.Memory* @routine_addl___rax__rdx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4083e4)
  store %struct.Memory* %call_4083e4, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edi	 RIP: 4083e7	 Bytes: 2
  %loadMem_4083e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4083e7 = call %struct.Memory* @routine_movl__ecx___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4083e7)
  store %struct.Memory* %call_4083e7, %struct.Memory** %MEMORY

  ; Code: callq .ILogsum	 RIP: 4083e9	 Bytes: 5
  %loadMem1_4083e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4083e9 = call %struct.Memory* @routine_callq_.ILogsum(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4083e9, i64 130503, i64 5, i64 5)
  store %struct.Memory* %call1_4083e9, %struct.Memory** %MEMORY

  %loadMem2_4083e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4083e9 = load i64, i64* %3
  %call2_4083e9 = call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* %0, i64  %loadPC_4083e9, %struct.Memory* %loadMem2_4083e9)
  store %struct.Memory* %call2_4083e9, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rdx	 RIP: 4083ee	 Bytes: 4
  %loadMem_4083ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4083ee = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4083ee)
  store %struct.Memory* %call_4083ee, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %ecx	 RIP: 4083f2	 Bytes: 3
  %loadMem_4083f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4083f2 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4083f2)
  store %struct.Memory* %call_4083f2, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 4083f5	 Bytes: 3
  %loadMem_4083f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4083f5 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4083f5)
  store %struct.Memory* %call_4083f5, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %r8	 RIP: 4083f8	 Bytes: 3
  %loadMem_4083f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4083f8 = call %struct.Memory* @routine_movslq__ecx___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4083f8)
  store %struct.Memory* %call_4083f8, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%r8,8), %rdx	 RIP: 4083fb	 Bytes: 4
  %loadMem_4083fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4083fb = call %struct.Memory* @routine_movq___rdx__r8_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4083fb)
  store %struct.Memory* %call_4083fb, %struct.Memory** %MEMORY

  ; Code: movl (%rdx), %ecx	 RIP: 4083ff	 Bytes: 2
  %loadMem_4083ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4083ff = call %struct.Memory* @routine_movl___rdx____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4083ff)
  store %struct.Memory* %call_4083ff, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 408401	 Bytes: 4
  %loadMem_408401 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408401 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408401)
  store %struct.Memory* %call_408401, %struct.Memory** %MEMORY

  ; Code: movq 0x170(%rdx), %rdx	 RIP: 408405	 Bytes: 7
  %loadMem_408405 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408405 = call %struct.Memory* @routine_movq_0x170__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408405)
  store %struct.Memory* %call_408405, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %r8	 RIP: 40840c	 Bytes: 4
  %loadMem_40840c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40840c = call %struct.Memory* @routine_movq_MINUS0x18__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40840c)
  store %struct.Memory* %call_40840c, %struct.Memory** %MEMORY

  ; Code: movl 0x88(%r8), %esi	 RIP: 408410	 Bytes: 7
  %loadMem_408410 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408410 = call %struct.Memory* @routine_movl_0x88__r8____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408410)
  store %struct.Memory* %call_408410, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 408417	 Bytes: 3
  %loadMem_408417 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408417 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408417)
  store %struct.Memory* %call_408417, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %r8	 RIP: 40841a	 Bytes: 3
  %loadMem_40841a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40841a = call %struct.Memory* @routine_movslq__esi___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40841a)
  store %struct.Memory* %call_40841a, %struct.Memory** %MEMORY

  ; Code: addl (%rdx,%r8,4), %ecx	 RIP: 40841d	 Bytes: 4
  %loadMem_40841d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40841d = call %struct.Memory* @routine_addl___rdx__r8_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40841d)
  store %struct.Memory* %call_40841d, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rdx	 RIP: 408421	 Bytes: 4
  %loadMem_408421 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408421 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408421)
  store %struct.Memory* %call_408421, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %esi	 RIP: 408425	 Bytes: 3
  %loadMem_408425 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408425 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408425)
  store %struct.Memory* %call_408425, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 408428	 Bytes: 3
  %loadMem_408428 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408428 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408428)
  store %struct.Memory* %call_408428, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %r8	 RIP: 40842b	 Bytes: 3
  %loadMem_40842b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40842b = call %struct.Memory* @routine_movslq__esi___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40842b)
  store %struct.Memory* %call_40842b, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%r8,8), %rdx	 RIP: 40842e	 Bytes: 4
  %loadMem_40842e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40842e = call %struct.Memory* @routine_movq___rdx__r8_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40842e)
  store %struct.Memory* %call_40842e, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %r8	 RIP: 408432	 Bytes: 4
  %loadMem_408432 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408432 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408432)
  store %struct.Memory* %call_408432, %struct.Memory** %MEMORY

  ; Code: movl 0x88(%r8), %esi	 RIP: 408436	 Bytes: 7
  %loadMem_408436 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408436 = call %struct.Memory* @routine_movl_0x88__r8____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408436)
  store %struct.Memory* %call_408436, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 40843d	 Bytes: 3
  %loadMem_40843d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40843d = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40843d)
  store %struct.Memory* %call_40843d, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %r8	 RIP: 408440	 Bytes: 3
  %loadMem_408440 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408440 = call %struct.Memory* @routine_movslq__esi___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408440)
  store %struct.Memory* %call_408440, %struct.Memory** %MEMORY

  ; Code: movl (%rdx,%r8,4), %esi	 RIP: 408443	 Bytes: 4
  %loadMem_408443 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408443 = call %struct.Memory* @routine_movl___rdx__r8_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408443)
  store %struct.Memory* %call_408443, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 408447	 Bytes: 4
  %loadMem_408447 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408447 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408447)
  store %struct.Memory* %call_408447, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rdx), %rdx	 RIP: 40844b	 Bytes: 7
  %loadMem_40844b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40844b = call %struct.Memory* @routine_movq_0x138__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40844b)
  store %struct.Memory* %call_40844b, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rdx), %rdx	 RIP: 408452	 Bytes: 4
  %loadMem_408452 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408452 = call %struct.Memory* @routine_movq_0x28__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408452)
  store %struct.Memory* %call_408452, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %r8	 RIP: 408456	 Bytes: 4
  %loadMem_408456 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408456 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408456)
  store %struct.Memory* %call_408456, %struct.Memory** %MEMORY

  ; Code: movl 0x88(%r8), %edi	 RIP: 40845a	 Bytes: 7
  %loadMem_40845a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40845a = call %struct.Memory* @routine_movl_0x88__r8____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40845a)
  store %struct.Memory* %call_40845a, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edi	 RIP: 408461	 Bytes: 3
  %loadMem_408461 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408461 = call %struct.Memory* @routine_subl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408461)
  store %struct.Memory* %call_408461, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %r8	 RIP: 408464	 Bytes: 3
  %loadMem_408464 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408464 = call %struct.Memory* @routine_movslq__edi___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408464)
  store %struct.Memory* %call_408464, %struct.Memory** %MEMORY

  ; Code: addl (%rdx,%r8,4), %esi	 RIP: 408467	 Bytes: 4
  %loadMem_408467 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408467 = call %struct.Memory* @routine_addl___rdx__r8_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408467)
  store %struct.Memory* %call_408467, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edi	 RIP: 40846b	 Bytes: 2
  %loadMem_40846b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40846b = call %struct.Memory* @routine_movl__ecx___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40846b)
  store %struct.Memory* %call_40846b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x5c(%rbp)	 RIP: 40846d	 Bytes: 3
  %loadMem_40846d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40846d = call %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40846d)
  store %struct.Memory* %call_40846d, %struct.Memory** %MEMORY

  ; Code: callq .ILogsum	 RIP: 408470	 Bytes: 5
  %loadMem1_408470 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_408470 = call %struct.Memory* @routine_callq_.ILogsum(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_408470, i64 130368, i64 5, i64 5)
  store %struct.Memory* %call1_408470, %struct.Memory** %MEMORY

  %loadMem2_408470 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_408470 = load i64, i64* %3
  %call2_408470 = call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* %0, i64  %loadPC_408470, %struct.Memory* %loadMem2_408470)
  store %struct.Memory* %call2_408470, %struct.Memory** %MEMORY

  ; Code: movl -0x5c(%rbp), %edi	 RIP: 408475	 Bytes: 3
  %loadMem_408475 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408475 = call %struct.Memory* @routine_movl_MINUS0x5c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408475)
  store %struct.Memory* %call_408475, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 408478	 Bytes: 2
  %loadMem_408478 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408478 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408478)
  store %struct.Memory* %call_408478, %struct.Memory** %MEMORY

  ; Code: callq .ILogsum	 RIP: 40847a	 Bytes: 5
  %loadMem1_40847a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40847a = call %struct.Memory* @routine_callq_.ILogsum(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40847a, i64 130358, i64 5, i64 5)
  store %struct.Memory* %call1_40847a, %struct.Memory** %MEMORY

  %loadMem2_40847a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40847a = load i64, i64* %3
  %call2_40847a = call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* %0, i64  %loadPC_40847a, %struct.Memory* %loadMem2_40847a)
  store %struct.Memory* %call2_40847a, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdx	 RIP: 40847f	 Bytes: 4
  %loadMem_40847f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40847f = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40847f)
  store %struct.Memory* %call_40847f, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %r8	 RIP: 408483	 Bytes: 4
  %loadMem_408483 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408483 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408483)
  store %struct.Memory* %call_408483, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%r8,8), %rdx	 RIP: 408487	 Bytes: 4
  %loadMem_408487 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408487 = call %struct.Memory* @routine_movq___rdx__r8_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408487)
  store %struct.Memory* %call_408487, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %r8	 RIP: 40848b	 Bytes: 4
  %loadMem_40848b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40848b = call %struct.Memory* @routine_movq_MINUS0x18__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40848b)
  store %struct.Memory* %call_40848b, %struct.Memory** %MEMORY

  ; Code: movslq 0x88(%r8), %r8	 RIP: 40848f	 Bytes: 7
  %loadMem_40848f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40848f = call %struct.Memory* @routine_movslq_0x88__r8____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40848f)
  store %struct.Memory* %call_40848f, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rdx,%r8,4)	 RIP: 408496	 Bytes: 4
  %loadMem_408496 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408496 = call %struct.Memory* @routine_movl__eax____rdx__r8_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408496)
  store %struct.Memory* %call_408496, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 40849a	 Bytes: 4
  %loadMem_40849a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40849a = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40849a)
  store %struct.Memory* %call_40849a, %struct.Memory** %MEMORY

  ; Code: movq 0x140(%rdx), %rdx	 RIP: 40849e	 Bytes: 7
  %loadMem_40849e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40849e = call %struct.Memory* @routine_movq_0x140__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40849e)
  store %struct.Memory* %call_40849e, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %r8	 RIP: 4084a5	 Bytes: 4
  %loadMem_4084a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4084a5 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4084a5)
  store %struct.Memory* %call_4084a5, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %r9	 RIP: 4084a9	 Bytes: 4
  %loadMem_4084a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4084a9 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4084a9)
  store %struct.Memory* %call_4084a9, %struct.Memory** %MEMORY

  ; Code: movsbl (%r8,%r9,1), %eax	 RIP: 4084ad	 Bytes: 5
  %loadMem_4084ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4084ad = call %struct.Memory* @routine_movsbl___r8__r9_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4084ad)
  store %struct.Memory* %call_4084ad, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %r8	 RIP: 4084b2	 Bytes: 3
  %loadMem_4084b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4084b2 = call %struct.Memory* @routine_movslq__eax___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4084b2)
  store %struct.Memory* %call_4084b2, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%r8,8), %rdx	 RIP: 4084b5	 Bytes: 4
  %loadMem_4084b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4084b5 = call %struct.Memory* @routine_movq___rdx__r8_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4084b5)
  store %struct.Memory* %call_4084b5, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %r8	 RIP: 4084b9	 Bytes: 4
  %loadMem_4084b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4084b9 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4084b9)
  store %struct.Memory* %call_4084b9, %struct.Memory** %MEMORY

  ; Code: movslq 0x88(%r8), %r8	 RIP: 4084bd	 Bytes: 7
  %loadMem_4084bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4084bd = call %struct.Memory* @routine_movslq_0x88__r8____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4084bd)
  store %struct.Memory* %call_4084bd, %struct.Memory** %MEMORY

  ; Code: movl (%rdx,%r8,4), %eax	 RIP: 4084c4	 Bytes: 4
  %loadMem_4084c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4084c4 = call %struct.Memory* @routine_movl___rdx__r8_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4084c4)
  store %struct.Memory* %call_4084c4, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdx	 RIP: 4084c8	 Bytes: 4
  %loadMem_4084c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4084c8 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4084c8)
  store %struct.Memory* %call_4084c8, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %r8	 RIP: 4084cc	 Bytes: 4
  %loadMem_4084cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4084cc = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4084cc)
  store %struct.Memory* %call_4084cc, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%r8,8), %rdx	 RIP: 4084d0	 Bytes: 4
  %loadMem_4084d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4084d0 = call %struct.Memory* @routine_movq___rdx__r8_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4084d0)
  store %struct.Memory* %call_4084d0, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %r8	 RIP: 4084d4	 Bytes: 4
  %loadMem_4084d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4084d4 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4084d4)
  store %struct.Memory* %call_4084d4, %struct.Memory** %MEMORY

  ; Code: movslq 0x88(%r8), %r8	 RIP: 4084d8	 Bytes: 7
  %loadMem_4084d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4084d8 = call %struct.Memory* @routine_movslq_0x88__r8____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4084d8)
  store %struct.Memory* %call_4084d8, %struct.Memory** %MEMORY

  ; Code: addl (%rdx,%r8,4), %eax	 RIP: 4084df	 Bytes: 4
  %loadMem_4084df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4084df = call %struct.Memory* @routine_addl___rdx__r8_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4084df)
  store %struct.Memory* %call_4084df, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rdx,%r8,4)	 RIP: 4084e3	 Bytes: 4
  %loadMem_4084e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4084e3 = call %struct.Memory* @routine_movl__eax____rdx__r8_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4084e3)
  store %struct.Memory* %call_4084e3, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rdx	 RIP: 4084e7	 Bytes: 4
  %loadMem_4084e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4084e7 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4084e7)
  store %struct.Memory* %call_4084e7, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %eax	 RIP: 4084eb	 Bytes: 3
  %loadMem_4084eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4084eb = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4084eb)
  store %struct.Memory* %call_4084eb, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 4084ee	 Bytes: 3
  %loadMem_4084ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4084ee = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4084ee)
  store %struct.Memory* %call_4084ee, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %r8	 RIP: 4084f1	 Bytes: 3
  %loadMem_4084f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4084f1 = call %struct.Memory* @routine_movslq__eax___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4084f1)
  store %struct.Memory* %call_4084f1, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%r8,8), %rdx	 RIP: 4084f4	 Bytes: 4
  %loadMem_4084f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4084f4 = call %struct.Memory* @routine_movq___rdx__r8_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4084f4)
  store %struct.Memory* %call_4084f4, %struct.Memory** %MEMORY

  ; Code: movl 0x10(%rdx), %eax	 RIP: 4084f8	 Bytes: 3
  %loadMem_4084f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4084f8 = call %struct.Memory* @routine_movl_0x10__rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4084f8)
  store %struct.Memory* %call_4084f8, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 4084fb	 Bytes: 4
  %loadMem_4084fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4084fb = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4084fb)
  store %struct.Memory* %call_4084fb, %struct.Memory** %MEMORY

  ; Code: addl 0x154(%rdx), %eax	 RIP: 4084ff	 Bytes: 6
  %loadMem_4084ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4084ff = call %struct.Memory* @routine_addl_0x154__rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4084ff)
  store %struct.Memory* %call_4084ff, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rdx	 RIP: 408505	 Bytes: 4
  %loadMem_408505 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408505 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408505)
  store %struct.Memory* %call_408505, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %r8	 RIP: 408509	 Bytes: 4
  %loadMem_408509 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408509 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408509)
  store %struct.Memory* %call_408509, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%r8,8), %rdx	 RIP: 40850d	 Bytes: 4
  %loadMem_40850d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40850d = call %struct.Memory* @routine_movq___rdx__r8_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40850d)
  store %struct.Memory* %call_40850d, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x10(%rdx)	 RIP: 408511	 Bytes: 3
  %loadMem_408511 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408511 = call %struct.Memory* @routine_movl__eax__0x10__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408511)
  store %struct.Memory* %call_408511, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rdx	 RIP: 408514	 Bytes: 4
  %loadMem_408514 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408514 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408514)
  store %struct.Memory* %call_408514, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %r8	 RIP: 408518	 Bytes: 4
  %loadMem_408518 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408518 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408518)
  store %struct.Memory* %call_408518, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%r8,8), %rdx	 RIP: 40851c	 Bytes: 4
  %loadMem_40851c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40851c = call %struct.Memory* @routine_movq___rdx__r8_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40851c)
  store %struct.Memory* %call_40851c, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, 0x4(%rdx)	 RIP: 408520	 Bytes: 7
  %loadMem_408520 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408520 = call %struct.Memory* @routine_movl__0xc521974f__0x4__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408520)
  store %struct.Memory* %call_408520, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x50(%rbp)	 RIP: 408527	 Bytes: 7
  %loadMem_408527 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408527 = call %struct.Memory* @routine_movl__0x1__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408527)
  store %struct.Memory* %call_408527, %struct.Memory** %MEMORY

  ; Code: .L_40852e:	 RIP: 40852e	 Bytes: 0
  br label %block_.L_40852e
block_.L_40852e:

  ; Code: movl -0x50(%rbp), %eax	 RIP: 40852e	 Bytes: 3
  %loadMem_40852e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40852e = call %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40852e)
  store %struct.Memory* %call_40852e, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 408531	 Bytes: 4
  %loadMem_408531 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408531 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408531)
  store %struct.Memory* %call_408531, %struct.Memory** %MEMORY

  ; Code: cmpl 0x88(%rcx), %eax	 RIP: 408535	 Bytes: 6
  %loadMem_408535 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408535 = call %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408535)
  store %struct.Memory* %call_408535, %struct.Memory** %MEMORY

  ; Code: jg .L_408599	 RIP: 40853b	 Bytes: 6
  %loadMem_40853b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40853b = call %struct.Memory* @routine_jg_.L_408599(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40853b, i8* %BRANCH_TAKEN, i64 94, i64 6, i64 6)
  store %struct.Memory* %call_40853b, %struct.Memory** %MEMORY

  %loadBr_40853b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40853b = icmp eq i8 %loadBr_40853b, 1
  br i1 %cmpBr_40853b, label %block_.L_408599, label %block_408541

block_408541:
  ; Code: movq -0x30(%rbp), %rax	 RIP: 408541	 Bytes: 4
  %loadMem_408541 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408541 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408541)
  store %struct.Memory* %call_408541, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rcx	 RIP: 408545	 Bytes: 4
  %loadMem_408545 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408545 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408545)
  store %struct.Memory* %call_408545, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 408549	 Bytes: 4
  %loadMem_408549 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408549 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408549)
  store %struct.Memory* %call_408549, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %edi	 RIP: 40854d	 Bytes: 3
  %loadMem_40854d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40854d = call %struct.Memory* @routine_movl_0x4__rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40854d)
  store %struct.Memory* %call_40854d, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 408550	 Bytes: 4
  %loadMem_408550 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408550 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408550)
  store %struct.Memory* %call_408550, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rcx	 RIP: 408554	 Bytes: 4
  %loadMem_408554 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408554 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408554)
  store %struct.Memory* %call_408554, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 408558	 Bytes: 4
  %loadMem_408558 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408558 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408558)
  store %struct.Memory* %call_408558, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 40855c	 Bytes: 4
  %loadMem_40855c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40855c = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40855c)
  store %struct.Memory* %call_40855c, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 408560	 Bytes: 3
  %loadMem_408560 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408560 = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408560)
  store %struct.Memory* %call_408560, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 408563	 Bytes: 4
  %loadMem_408563 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408563 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408563)
  store %struct.Memory* %call_408563, %struct.Memory** %MEMORY

  ; Code: movq 0x178(%rax), %rax	 RIP: 408567	 Bytes: 7
  %loadMem_408567 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408567 = call %struct.Memory* @routine_movq_0x178__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408567)
  store %struct.Memory* %call_408567, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 40856e	 Bytes: 4
  %loadMem_40856e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40856e = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40856e)
  store %struct.Memory* %call_40856e, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rcx,4), %edx	 RIP: 408572	 Bytes: 3
  %loadMem_408572 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408572 = call %struct.Memory* @routine_addl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408572)
  store %struct.Memory* %call_408572, %struct.Memory** %MEMORY

  ; Code: movl %edx, %esi	 RIP: 408575	 Bytes: 2
  %loadMem_408575 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408575 = call %struct.Memory* @routine_movl__edx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408575)
  store %struct.Memory* %call_408575, %struct.Memory** %MEMORY

  ; Code: callq .ILogsum	 RIP: 408577	 Bytes: 5
  %loadMem1_408577 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_408577 = call %struct.Memory* @routine_callq_.ILogsum(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_408577, i64 130105, i64 5, i64 5)
  store %struct.Memory* %call1_408577, %struct.Memory** %MEMORY

  %loadMem2_408577 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_408577 = load i64, i64* %3
  %call2_408577 = call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* %0, i64  %loadPC_408577, %struct.Memory* %loadMem2_408577)
  store %struct.Memory* %call2_408577, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rcx	 RIP: 40857c	 Bytes: 4
  %loadMem_40857c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40857c = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40857c)
  store %struct.Memory* %call_40857c, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %r8	 RIP: 408580	 Bytes: 4
  %loadMem_408580 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408580 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408580)
  store %struct.Memory* %call_408580, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r8,8), %rcx	 RIP: 408584	 Bytes: 4
  %loadMem_408584 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408584 = call %struct.Memory* @routine_movq___rcx__r8_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408584)
  store %struct.Memory* %call_408584, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x4(%rcx)	 RIP: 408588	 Bytes: 3
  %loadMem_408588 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408588 = call %struct.Memory* @routine_movl__eax__0x4__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408588)
  store %struct.Memory* %call_408588, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %eax	 RIP: 40858b	 Bytes: 3
  %loadMem_40858b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40858b = call %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40858b)
  store %struct.Memory* %call_40858b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40858e	 Bytes: 3
  %loadMem_40858e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40858e = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40858e)
  store %struct.Memory* %call_40858e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x50(%rbp)	 RIP: 408591	 Bytes: 3
  %loadMem_408591 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408591 = call %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408591)
  store %struct.Memory* %call_408591, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40852e	 RIP: 408594	 Bytes: 5
  %loadMem_408594 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408594 = call %struct.Memory* @routine_jmpq_.L_40852e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408594, i64 -102, i64 5)
  store %struct.Memory* %call_408594, %struct.Memory** %MEMORY

  br label %block_.L_40852e

  ; Code: .L_408599:	 RIP: 408599	 Bytes: 0
block_.L_408599:

  ; Code: movq -0x30(%rbp), %rax	 RIP: 408599	 Bytes: 4
  %loadMem_408599 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408599 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408599)
  store %struct.Memory* %call_408599, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %ecx	 RIP: 40859d	 Bytes: 3
  %loadMem_40859d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40859d = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40859d)
  store %struct.Memory* %call_40859d, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 4085a0	 Bytes: 3
  %loadMem_4085a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4085a0 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4085a0)
  store %struct.Memory* %call_4085a0, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 4085a3	 Bytes: 3
  %loadMem_4085a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4085a3 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4085a3)
  store %struct.Memory* %call_4085a3, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 4085a6	 Bytes: 4
  %loadMem_4085a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4085a6 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4085a6)
  store %struct.Memory* %call_4085a6, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %ecx	 RIP: 4085aa	 Bytes: 3
  %loadMem_4085aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4085aa = call %struct.Memory* @routine_movl_0xc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4085aa)
  store %struct.Memory* %call_4085aa, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 4085ad	 Bytes: 4
  %loadMem_4085ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4085ad = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4085ad)
  store %struct.Memory* %call_4085ad, %struct.Memory** %MEMORY

  ; Code: addl 0x16c(%rax), %ecx	 RIP: 4085b1	 Bytes: 6
  %loadMem_4085b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4085b1 = call %struct.Memory* @routine_addl_0x16c__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4085b1)
  store %struct.Memory* %call_4085b1, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 4085b7	 Bytes: 4
  %loadMem_4085b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4085b7 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4085b7)
  store %struct.Memory* %call_4085b7, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 4085bb	 Bytes: 4
  %loadMem_4085bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4085bb = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4085bb)
  store %struct.Memory* %call_4085bb, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 4085bf	 Bytes: 4
  %loadMem_4085bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4085bf = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4085bf)
  store %struct.Memory* %call_4085bf, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %esi	 RIP: 4085c3	 Bytes: 3
  %loadMem_4085c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4085c3 = call %struct.Memory* @routine_movl_0x4__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4085c3)
  store %struct.Memory* %call_4085c3, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 4085c6	 Bytes: 4
  %loadMem_4085c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4085c6 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4085c6)
  store %struct.Memory* %call_4085c6, %struct.Memory** %MEMORY

  ; Code: addl 0x15c(%rax), %esi	 RIP: 4085ca	 Bytes: 6
  %loadMem_4085ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4085ca = call %struct.Memory* @routine_addl_0x15c__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4085ca)
  store %struct.Memory* %call_4085ca, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edi	 RIP: 4085d0	 Bytes: 2
  %loadMem_4085d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4085d0 = call %struct.Memory* @routine_movl__ecx___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4085d0)
  store %struct.Memory* %call_4085d0, %struct.Memory** %MEMORY

  ; Code: callq .ILogsum	 RIP: 4085d2	 Bytes: 5
  %loadMem1_4085d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4085d2 = call %struct.Memory* @routine_callq_.ILogsum(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4085d2, i64 130014, i64 5, i64 5)
  store %struct.Memory* %call1_4085d2, %struct.Memory** %MEMORY

  %loadMem2_4085d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4085d2 = load i64, i64* %3
  %call2_4085d2 = call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* %0, i64  %loadPC_4085d2, %struct.Memory* %loadMem2_4085d2)
  store %struct.Memory* %call2_4085d2, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rdx	 RIP: 4085d7	 Bytes: 4
  %loadMem_4085d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4085d7 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4085d7)
  store %struct.Memory* %call_4085d7, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %r8	 RIP: 4085db	 Bytes: 4
  %loadMem_4085db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4085db = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4085db)
  store %struct.Memory* %call_4085db, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%r8,8), %rdx	 RIP: 4085df	 Bytes: 4
  %loadMem_4085df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4085df = call %struct.Memory* @routine_movq___rdx__r8_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4085df)
  store %struct.Memory* %call_4085df, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0xc(%rdx)	 RIP: 4085e3	 Bytes: 3
  %loadMem_4085e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4085e3 = call %struct.Memory* @routine_movl__eax__0xc__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4085e3)
  store %struct.Memory* %call_4085e3, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rdx	 RIP: 4085e6	 Bytes: 4
  %loadMem_4085e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4085e6 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4085e6)
  store %struct.Memory* %call_4085e6, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %r8	 RIP: 4085ea	 Bytes: 4
  %loadMem_4085ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4085ea = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4085ea)
  store %struct.Memory* %call_4085ea, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%r8,8), %rdx	 RIP: 4085ee	 Bytes: 4
  %loadMem_4085ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4085ee = call %struct.Memory* @routine_movq___rdx__r8_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4085ee)
  store %struct.Memory* %call_4085ee, %struct.Memory** %MEMORY

  ; Code: movl 0x10(%rdx), %eax	 RIP: 4085f2	 Bytes: 3
  %loadMem_4085f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4085f2 = call %struct.Memory* @routine_movl_0x10__rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4085f2)
  store %struct.Memory* %call_4085f2, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 4085f5	 Bytes: 4
  %loadMem_4085f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4085f5 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4085f5)
  store %struct.Memory* %call_4085f5, %struct.Memory** %MEMORY

  ; Code: addl 0x150(%rdx), %eax	 RIP: 4085f9	 Bytes: 6
  %loadMem_4085f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4085f9 = call %struct.Memory* @routine_addl_0x150__rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4085f9)
  store %struct.Memory* %call_4085f9, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rdx	 RIP: 4085ff	 Bytes: 4
  %loadMem_4085ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4085ff = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4085ff)
  store %struct.Memory* %call_4085ff, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %r8	 RIP: 408603	 Bytes: 4
  %loadMem_408603 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408603 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408603)
  store %struct.Memory* %call_408603, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%r8,8), %rdx	 RIP: 408607	 Bytes: 4
  %loadMem_408607 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408607 = call %struct.Memory* @routine_movq___rdx__r8_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408607)
  store %struct.Memory* %call_408607, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rdx), %ecx	 RIP: 40860b	 Bytes: 3
  %loadMem_40860b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40860b = call %struct.Memory* @routine_movl_0xc__rdx____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40860b)
  store %struct.Memory* %call_40860b, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 40860e	 Bytes: 4
  %loadMem_40860e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40860e = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40860e)
  store %struct.Memory* %call_40860e, %struct.Memory** %MEMORY

  ; Code: addl 0x168(%rdx), %ecx	 RIP: 408612	 Bytes: 6
  %loadMem_408612 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408612 = call %struct.Memory* @routine_addl_0x168__rdx____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408612)
  store %struct.Memory* %call_408612, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 408618	 Bytes: 2
  %loadMem_408618 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408618 = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408618)
  store %struct.Memory* %call_408618, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %esi	 RIP: 40861a	 Bytes: 2
  %loadMem_40861a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40861a = call %struct.Memory* @routine_movl__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40861a)
  store %struct.Memory* %call_40861a, %struct.Memory** %MEMORY

  ; Code: callq .ILogsum	 RIP: 40861c	 Bytes: 5
  %loadMem1_40861c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40861c = call %struct.Memory* @routine_callq_.ILogsum(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40861c, i64 129940, i64 5, i64 5)
  store %struct.Memory* %call1_40861c, %struct.Memory** %MEMORY

  %loadMem2_40861c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40861c = load i64, i64* %3
  %call2_40861c = call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* %0, i64  %loadPC_40861c, %struct.Memory* %loadMem2_40861c)
  store %struct.Memory* %call2_40861c, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rdx	 RIP: 408621	 Bytes: 4
  %loadMem_408621 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408621 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408621)
  store %struct.Memory* %call_408621, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %r8	 RIP: 408625	 Bytes: 4
  %loadMem_408625 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408625 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408625)
  store %struct.Memory* %call_408625, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%r8,8), %rdx	 RIP: 408629	 Bytes: 4
  %loadMem_408629 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408629 = call %struct.Memory* @routine_movq___rdx__r8_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408629)
  store %struct.Memory* %call_408629, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rdx)	 RIP: 40862d	 Bytes: 2
  %loadMem_40862d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40862d = call %struct.Memory* @routine_movl__eax____rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40862d)
  store %struct.Memory* %call_40862d, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rdx	 RIP: 40862f	 Bytes: 4
  %loadMem_40862f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40862f = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40862f)
  store %struct.Memory* %call_40862f, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %eax	 RIP: 408633	 Bytes: 3
  %loadMem_408633 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408633 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408633)
  store %struct.Memory* %call_408633, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 408636	 Bytes: 3
  %loadMem_408636 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408636 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408636)
  store %struct.Memory* %call_408636, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %r8	 RIP: 408639	 Bytes: 3
  %loadMem_408639 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408639 = call %struct.Memory* @routine_movslq__eax___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408639)
  store %struct.Memory* %call_408639, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%r8,8), %rdx	 RIP: 40863c	 Bytes: 4
  %loadMem_40863c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40863c = call %struct.Memory* @routine_movq___rdx__r8_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40863c)
  store %struct.Memory* %call_40863c, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rdx), %eax	 RIP: 408640	 Bytes: 3
  %loadMem_408640 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408640 = call %struct.Memory* @routine_movl_0x8__rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408640)
  store %struct.Memory* %call_408640, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 408643	 Bytes: 4
  %loadMem_408643 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408643 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408643)
  store %struct.Memory* %call_408643, %struct.Memory** %MEMORY

  ; Code: addl 0x164(%rdx), %eax	 RIP: 408647	 Bytes: 6
  %loadMem_408647 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408647 = call %struct.Memory* @routine_addl_0x164__rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408647)
  store %struct.Memory* %call_408647, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rdx	 RIP: 40864d	 Bytes: 4
  %loadMem_40864d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40864d = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40864d)
  store %struct.Memory* %call_40864d, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %r8	 RIP: 408651	 Bytes: 4
  %loadMem_408651 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408651 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408651)
  store %struct.Memory* %call_408651, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%r8,8), %rdx	 RIP: 408655	 Bytes: 4
  %loadMem_408655 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408655 = call %struct.Memory* @routine_movq___rdx__r8_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408655)
  store %struct.Memory* %call_408655, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rdx), %ecx	 RIP: 408659	 Bytes: 3
  %loadMem_408659 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408659 = call %struct.Memory* @routine_movl_0x4__rdx____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408659)
  store %struct.Memory* %call_408659, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 40865c	 Bytes: 4
  %loadMem_40865c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40865c = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40865c)
  store %struct.Memory* %call_40865c, %struct.Memory** %MEMORY

  ; Code: addl 0x158(%rdx), %ecx	 RIP: 408660	 Bytes: 6
  %loadMem_408660 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408660 = call %struct.Memory* @routine_addl_0x158__rdx____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408660)
  store %struct.Memory* %call_408660, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 408666	 Bytes: 2
  %loadMem_408666 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408666 = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408666)
  store %struct.Memory* %call_408666, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %esi	 RIP: 408668	 Bytes: 2
  %loadMem_408668 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408668 = call %struct.Memory* @routine_movl__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408668)
  store %struct.Memory* %call_408668, %struct.Memory** %MEMORY

  ; Code: callq .ILogsum	 RIP: 40866a	 Bytes: 5
  %loadMem1_40866a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40866a = call %struct.Memory* @routine_callq_.ILogsum(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40866a, i64 129862, i64 5, i64 5)
  store %struct.Memory* %call1_40866a, %struct.Memory** %MEMORY

  %loadMem2_40866a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40866a = load i64, i64* %3
  %call2_40866a = call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* %0, i64  %loadPC_40866a, %struct.Memory* %loadMem2_40866a)
  store %struct.Memory* %call2_40866a, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rdx	 RIP: 40866f	 Bytes: 4
  %loadMem_40866f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40866f = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40866f)
  store %struct.Memory* %call_40866f, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %r8	 RIP: 408673	 Bytes: 4
  %loadMem_408673 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408673 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408673)
  store %struct.Memory* %call_408673, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%r8,8), %rdx	 RIP: 408677	 Bytes: 4
  %loadMem_408677 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408677 = call %struct.Memory* @routine_movq___rdx__r8_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408677)
  store %struct.Memory* %call_408677, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x8(%rdx)	 RIP: 40867b	 Bytes: 3
  %loadMem_40867b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40867b = call %struct.Memory* @routine_movl__eax__0x8__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40867b)
  store %struct.Memory* %call_40867b, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %eax	 RIP: 40867e	 Bytes: 3
  %loadMem_40867e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40867e = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40867e)
  store %struct.Memory* %call_40867e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 408681	 Bytes: 3
  %loadMem_408681 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408681 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408681)
  store %struct.Memory* %call_408681, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c(%rbp)	 RIP: 408684	 Bytes: 3
  %loadMem_408684 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408684 = call %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408684)
  store %struct.Memory* %call_408684, %struct.Memory** %MEMORY

  ; Code: jmpq .L_408072	 RIP: 408687	 Bytes: 5
  %loadMem_408687 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408687 = call %struct.Memory* @routine_jmpq_.L_408072(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408687, i64 -1557, i64 5)
  store %struct.Memory* %call_408687, %struct.Memory** %MEMORY

  br label %block_.L_408072

  ; Code: .L_40868c:	 RIP: 40868c	 Bytes: 0
block_.L_40868c:

  ; Code: movq -0x30(%rbp), %rax	 RIP: 40868c	 Bytes: 4
  %loadMem_40868c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40868c = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40868c)
  store %struct.Memory* %call_40868c, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 408690	 Bytes: 4
  %loadMem_408690 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408690 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408690)
  store %struct.Memory* %call_408690, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 408694	 Bytes: 4
  %loadMem_408694 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408694 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408694)
  store %struct.Memory* %call_408694, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rax), %edx	 RIP: 408698	 Bytes: 3
  %loadMem_408698 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408698 = call %struct.Memory* @routine_movl_0x8__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408698)
  store %struct.Memory* %call_408698, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 40869b	 Bytes: 4
  %loadMem_40869b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40869b = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40869b)
  store %struct.Memory* %call_40869b, %struct.Memory** %MEMORY

  ; Code: addl 0x160(%rax), %edx	 RIP: 40869f	 Bytes: 6
  %loadMem_40869f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40869f = call %struct.Memory* @routine_addl_0x160__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40869f)
  store %struct.Memory* %call_40869f, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x54(%rbp)	 RIP: 4086a5	 Bytes: 3
  %loadMem_4086a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4086a5 = call %struct.Memory* @routine_movl__edx__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4086a5)
  store %struct.Memory* %call_4086a5, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, -0x20(%rbp)	 RIP: 4086a8	 Bytes: 5
  %loadMem_4086a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4086a8 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4086a8)
  store %struct.Memory* %call_4086a8, %struct.Memory** %MEMORY

  ; Code: je .L_4086c3	 RIP: 4086ad	 Bytes: 6
  %loadMem_4086ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4086ad = call %struct.Memory* @routine_je_.L_4086c3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4086ad, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_4086ad, %struct.Memory** %MEMORY

  %loadBr_4086ad = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4086ad = icmp eq i8 %loadBr_4086ad, 1
  br i1 %cmpBr_4086ad, label %block_.L_4086c3, label %block_4086b3

block_4086b3:
  ; Code: movq -0x28(%rbp), %rax	 RIP: 4086b3	 Bytes: 4
  %loadMem_4086b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4086b3 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4086b3)
  store %struct.Memory* %call_4086b3, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 4086b7	 Bytes: 4
  %loadMem_4086b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4086b7 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4086b7)
  store %struct.Memory* %call_4086b7, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rcx)	 RIP: 4086bb	 Bytes: 3
  %loadMem_4086bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4086bb = call %struct.Memory* @routine_movq__rax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4086bb)
  store %struct.Memory* %call_4086bb, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4086cc	 RIP: 4086be	 Bytes: 5
  %loadMem_4086be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4086be = call %struct.Memory* @routine_jmpq_.L_4086cc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4086be, i64 14, i64 5)
  store %struct.Memory* %call_4086be, %struct.Memory** %MEMORY

  br label %block_.L_4086cc

  ; Code: .L_4086c3:	 RIP: 4086c3	 Bytes: 0
block_.L_4086c3:

  ; Code: movq -0x28(%rbp), %rdi	 RIP: 4086c3	 Bytes: 4
  %loadMem_4086c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4086c3 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4086c3)
  store %struct.Memory* %call_4086c3, %struct.Memory** %MEMORY

  ; Code: callq .FreePlan7Matrix	 RIP: 4086c7	 Bytes: 5
  %loadMem1_4086c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4086c7 = call %struct.Memory* @routine_callq_.FreePlan7Matrix(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4086c7, i64 -3463, i64 5, i64 5)
  store %struct.Memory* %call1_4086c7, %struct.Memory** %MEMORY

  %loadMem2_4086c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4086c7 = load i64, i64* %3
  %call2_4086c7 = call %struct.Memory* @sub_407940.FreePlan7Matrix(%struct.State* %0, i64  %loadPC_4086c7, %struct.Memory* %loadMem2_4086c7)
  store %struct.Memory* %call2_4086c7, %struct.Memory** %MEMORY

  ; Code: .L_4086cc:	 RIP: 4086cc	 Bytes: 0
  br label %block_.L_4086cc
block_.L_4086cc:

  ; Code: movl -0x54(%rbp), %edi	 RIP: 4086cc	 Bytes: 3
  %loadMem_4086cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4086cc = call %struct.Memory* @routine_movl_MINUS0x54__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4086cc)
  store %struct.Memory* %call_4086cc, %struct.Memory** %MEMORY

  ; Code: callq .Scorify	 RIP: 4086cf	 Bytes: 5
  %loadMem1_4086cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4086cf = call %struct.Memory* @routine_callq_.Scorify(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4086cf, i64 129057, i64 5, i64 5)
  store %struct.Memory* %call1_4086cf, %struct.Memory** %MEMORY

  %loadMem2_4086cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4086cf = load i64, i64* %3
  %call2_4086cf = call %struct.Memory* @sub_427ef0.Scorify(%struct.State* %0, i64  %loadPC_4086cf, %struct.Memory* %loadMem2_4086cf)
  store %struct.Memory* %call2_4086cf, %struct.Memory** %MEMORY

  ; Code: addq $0x60, %rsp	 RIP: 4086d4	 Bytes: 4
  %loadMem_4086d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4086d4 = call %struct.Memory* @routine_addq__0x60___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4086d4)
  store %struct.Memory* %call_4086d4, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 4086d8	 Bytes: 1
  %loadMem_4086d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4086d8 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4086d8)
  store %struct.Memory* %call_4086d8, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 4086d9	 Bytes: 1
  %loadMem_4086d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4086d9 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4086d9)
  store %struct.Memory* %call_4086d9, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_4086d9
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x0__0x10__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_movl_0x150__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 336
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl__esi____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
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






define %struct.Memory* @routine_movl__0xc521974f__0x8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -987654321)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movl__0xc521974f__0x4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 4
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -987654321)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 136
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4JNLEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 {
  %6 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  %12 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  %15 = xor i1 %11, %14
  %16 = xor i1 %15, true
  %17 = and i1 %8, %16
  %18 = zext i1 %17 to i8
  store i8 %18, i8* %2, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %20 = select i1 %17, i64 %3, i64 %4
  store i64 %20, i64* %19, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jg_.L_40806b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4JNLEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
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



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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

define %struct.Memory* @routine_jmpq_.L_408014(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__0x1__MINUS0x4c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jg_.L_40868c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4JNLEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
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


















define %struct.Memory* @routine_movl__0x1__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_jge_.L_40835c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_subl__0x1___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 1)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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














define %struct.Memory* @routine_movl___rax__rdx_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %18)
  ret %struct.Memory* %21
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


define %struct.Memory* @routine_movl_MINUS0x50__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_subl__0x1___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movslq__edi___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl___rax__rdx_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RDX
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 3
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %15, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movl__ecx___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
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






define %struct.Memory* @routine_movslq__ecx___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
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


define %struct.Memory* @routine_movl___rdx____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12)
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


define %struct.Memory* @routine_movq_0x170__rdx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 368
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %10)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_addl___rdx__r8_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = load i64, i64* %RDX
  %17 = load i64, i64* %R8
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movq_MINUS0x48__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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










define %struct.Memory* @routine_movl___rdx__r8_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %18)
  ret %struct.Memory* %21
}




define %struct.Memory* @routine_movq_0x138__rdx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 312
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq_0x28__rdx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 40
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movslq__edi___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl___rdx__r8_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %RDX
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




define %struct.Memory* @routine_movq_MINUS0x38__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 56
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






define %struct.Memory* @routine_movl__eax____rdx__r8_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
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




define %struct.Memory* @routine_movq_0x140__rdx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 320
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %10)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  %7 = sext i8 %6 to i64
  %8 = and i64 %7, 4294967295
  store i64 %8, i64* %2, align 8
  ret %struct.Memory* %0
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










define %struct.Memory* @routine_addl___rdx__r8_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RDX
  %17 = load i64, i64* %R8
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %15, i64 %19)
  ret %struct.Memory* %22
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










define %struct.Memory* @routine_movq_0x10__rdx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 16
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %10)
  ret %struct.Memory* %13
}






















define %struct.Memory* @routine_movl___rdx__r8_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = load i64, i64* %R8
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %18)
  ret %struct.Memory* %21
}






define %struct.Memory* @routine_movq_0x30__rdx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 48
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %10)
  ret %struct.Memory* %13
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
































define %struct.Memory* @routine_movq_0x8__rdx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movq_MINUS0x40__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


















define %struct.Memory* @routine_movq_0x20__rdx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 32
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %10)
  ret %struct.Memory* %13
}
























define %struct.Memory* @routine_movq_0x148__rdx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 328
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %10)
  ret %struct.Memory* %13
}


































define %struct.Memory* @routine_jmpq_.L_4080bb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_movl_0x88__rdx____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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




































define %struct.Memory* @routine_movl_0x88__rdx____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




























define %struct.Memory* @routine_movq_MINUS0x18__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x88__r8____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = add i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}




































define %struct.Memory* @routine_movl_0x88__r8____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = add i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
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




define %struct.Memory* @routine_movl_MINUS0x5c__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 92
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}














define %struct.Memory* @routine_movslq_0x88__r8____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 136
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %10)
  ret %struct.Memory* %13
}
















































define %struct.Memory* @routine_movl_0x10__rdx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addl_0x154__rdx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 340
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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








define %struct.Memory* @routine_movl__0xc521974f__0x4__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 4
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -987654321)
  ret %struct.Memory* %13
}










define %struct.Memory* @routine_jg_.L_408599(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4JNLEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}








define %struct.Memory* @routine_movl_0x4__rax____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
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








define %struct.Memory* @routine_jmpq_.L_40852e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_movl_0xc__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addl_0x16c__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 364
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




define %struct.Memory* @routine_movl_0x4__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addl_0x15c__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 348
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}












define %struct.Memory* @routine_movl__eax__0xc__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}












define %struct.Memory* @routine_addl_0x150__rdx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 336
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_movl_0xc__rdx____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addl_0x168__rdx____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 360
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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












define %struct.Memory* @routine_movl_0x8__rdx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addl_0x164__rdx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 356
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_movl_0x4__rdx____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addl_0x158__rdx____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 344
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}














define %struct.Memory* @routine_movl__eax__0x8__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_jmpq_.L_408072(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl_0x8__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addl_0x160__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 352
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__edx__MINUS0x54__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 84
  %14 = load i32, i32* %EDX
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

define %struct.Memory* @routine_je_.L_4086c3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jmpq_.L_4086cc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

