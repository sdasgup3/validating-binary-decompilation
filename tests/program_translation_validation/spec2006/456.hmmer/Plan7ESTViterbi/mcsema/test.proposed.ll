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
declare %struct.Memory* @sub_407940.FreePlan7Matrix(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_427ef0.Scorify(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals


define %struct.Memory* @Plan7ESTViterbi(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .Plan7ESTViterbi:	 RIP: 40d730	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 40d730	 Bytes: 1
  %loadMem_40d730 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d730 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d730)
  store %struct.Memory* %call_40d730, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 40d731	 Bytes: 3
  %loadMem_40d731 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d731 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d731)
  store %struct.Memory* %call_40d731, %struct.Memory** %MEMORY

  ; Code: subq $0x60, %rsp	 RIP: 40d734	 Bytes: 4
  %loadMem_40d734 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d734 = call %struct.Memory* @routine_subq__0x60___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d734)
  store %struct.Memory* %call_40d734, %struct.Memory** %MEMORY

  ; Code: leaq -0x30(%rbp), %rax	 RIP: 40d738	 Bytes: 4
  %loadMem_40d738 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d738 = call %struct.Memory* @routine_leaq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d738)
  store %struct.Memory* %call_40d738, %struct.Memory** %MEMORY

  ; Code: leaq -0x38(%rbp), %r8	 RIP: 40d73c	 Bytes: 4
  %loadMem_40d73c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d73c = call %struct.Memory* @routine_leaq_MINUS0x38__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d73c)
  store %struct.Memory* %call_40d73c, %struct.Memory** %MEMORY

  ; Code: leaq -0x40(%rbp), %r9	 RIP: 40d740	 Bytes: 4
  %loadMem_40d740 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d740 = call %struct.Memory* @routine_leaq_MINUS0x40__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d740)
  store %struct.Memory* %call_40d740, %struct.Memory** %MEMORY

  ; Code: leaq -0x48(%rbp), %r10	 RIP: 40d744	 Bytes: 4
  %loadMem_40d744 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d744 = call %struct.Memory* @routine_leaq_MINUS0x48__rbp____r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d744)
  store %struct.Memory* %call_40d744, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x8(%rbp)	 RIP: 40d748	 Bytes: 4
  %loadMem_40d748 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d748 = call %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d748)
  store %struct.Memory* %call_40d748, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0xc(%rbp)	 RIP: 40d74c	 Bytes: 3
  %loadMem_40d74c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d74c = call %struct.Memory* @routine_movl__esi__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d74c)
  store %struct.Memory* %call_40d74c, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x18(%rbp)	 RIP: 40d74f	 Bytes: 4
  %loadMem_40d74f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d74f = call %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d74f)
  store %struct.Memory* %call_40d74f, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x20(%rbp)	 RIP: 40d753	 Bytes: 4
  %loadMem_40d753 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d753 = call %struct.Memory* @routine_movq__rcx__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d753)
  store %struct.Memory* %call_40d753, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %esi	 RIP: 40d757	 Bytes: 3
  %loadMem_40d757 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d757 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d757)
  store %struct.Memory* %call_40d757, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 40d75a	 Bytes: 3
  %loadMem_40d75a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d75a = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d75a)
  store %struct.Memory* %call_40d75a, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 40d75d	 Bytes: 4
  %loadMem_40d75d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d75d = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d75d)
  store %struct.Memory* %call_40d75d, %struct.Memory** %MEMORY

  ; Code: movl 0x88(%rcx), %r11d	 RIP: 40d761	 Bytes: 7
  %loadMem_40d761 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d761 = call %struct.Memory* @routine_movl_0x88__rcx____r11d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d761)
  store %struct.Memory* %call_40d761, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edi	 RIP: 40d768	 Bytes: 2
  %loadMem_40d768 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d768 = call %struct.Memory* @routine_movl__esi___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d768)
  store %struct.Memory* %call_40d768, %struct.Memory** %MEMORY

  ; Code: movl %r11d, %esi	 RIP: 40d76a	 Bytes: 3
  %loadMem_40d76a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d76a = call %struct.Memory* @routine_movl__r11d___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d76a)
  store %struct.Memory* %call_40d76a, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 40d76d	 Bytes: 3
  %loadMem_40d76d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d76d = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d76d)
  store %struct.Memory* %call_40d76d, %struct.Memory** %MEMORY

  ; Code: movq %r8, %rcx	 RIP: 40d770	 Bytes: 3
  %loadMem_40d770 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d770 = call %struct.Memory* @routine_movq__r8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d770)
  store %struct.Memory* %call_40d770, %struct.Memory** %MEMORY

  ; Code: movq %r9, %r8	 RIP: 40d773	 Bytes: 3
  %loadMem_40d773 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d773 = call %struct.Memory* @routine_movq__r9___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d773)
  store %struct.Memory* %call_40d773, %struct.Memory** %MEMORY

  ; Code: movq %r10, %r9	 RIP: 40d776	 Bytes: 3
  %loadMem_40d776 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d776 = call %struct.Memory* @routine_movq__r10___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d776)
  store %struct.Memory* %call_40d776, %struct.Memory** %MEMORY

  ; Code: callq .AllocPlan7Matrix	 RIP: 40d779	 Bytes: 5
  %loadMem1_40d779 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40d779 = call %struct.Memory* @routine_callq_.AllocPlan7Matrix(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40d779, i64 -24297, i64 5, i64 5)
  store %struct.Memory* %call1_40d779, %struct.Memory** %MEMORY

  %loadMem2_40d779 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40d779 = load i64, i64* %3
  %call2_40d779 = call %struct.Memory* @sub_407890.AllocPlan7Matrix(%struct.State* %0, i64  %loadPC_40d779, %struct.Memory* %loadMem2_40d779)
  store %struct.Memory* %call2_40d779, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x28(%rbp)	 RIP: 40d77e	 Bytes: 4
  %loadMem_40d77e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d77e = call %struct.Memory* @routine_movq__rax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d77e)
  store %struct.Memory* %call_40d77e, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 40d782	 Bytes: 4
  %loadMem_40d782 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d782 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d782)
  store %struct.Memory* %call_40d782, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40d786	 Bytes: 3
  %loadMem_40d786 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d786 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d786)
  store %struct.Memory* %call_40d786, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x10(%rax)	 RIP: 40d789	 Bytes: 7
  %loadMem_40d789 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d789 = call %struct.Memory* @routine_movl__0x0__0x10__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d789)
  store %struct.Memory* %call_40d789, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 40d790	 Bytes: 4
  %loadMem_40d790 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d790 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d790)
  store %struct.Memory* %call_40d790, %struct.Memory** %MEMORY

  ; Code: movl 0x150(%rax), %esi	 RIP: 40d794	 Bytes: 6
  %loadMem_40d794 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d794 = call %struct.Memory* @routine_movl_0x150__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d794)
  store %struct.Memory* %call_40d794, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 40d79a	 Bytes: 4
  %loadMem_40d79a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d79a = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d79a)
  store %struct.Memory* %call_40d79a, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40d79e	 Bytes: 3
  %loadMem_40d79e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d79e = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d79e)
  store %struct.Memory* %call_40d79e, %struct.Memory** %MEMORY

  ; Code: movl %esi, (%rax)	 RIP: 40d7a1	 Bytes: 2
  %loadMem_40d7a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d7a1 = call %struct.Memory* @routine_movl__esi____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d7a1)
  store %struct.Memory* %call_40d7a1, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 40d7a3	 Bytes: 4
  %loadMem_40d7a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d7a3 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d7a3)
  store %struct.Memory* %call_40d7a3, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40d7a7	 Bytes: 3
  %loadMem_40d7a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d7a7 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d7a7)
  store %struct.Memory* %call_40d7a7, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, 0xc(%rax)	 RIP: 40d7aa	 Bytes: 7
  %loadMem_40d7aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d7aa = call %struct.Memory* @routine_movl__0xc521974f__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d7aa)
  store %struct.Memory* %call_40d7aa, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 40d7b1	 Bytes: 4
  %loadMem_40d7b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d7b1 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d7b1)
  store %struct.Memory* %call_40d7b1, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40d7b5	 Bytes: 3
  %loadMem_40d7b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d7b5 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d7b5)
  store %struct.Memory* %call_40d7b5, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, 0x8(%rax)	 RIP: 40d7b8	 Bytes: 7
  %loadMem_40d7b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d7b8 = call %struct.Memory* @routine_movl__0xc521974f__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d7b8)
  store %struct.Memory* %call_40d7b8, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 40d7bf	 Bytes: 4
  %loadMem_40d7bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d7bf = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d7bf)
  store %struct.Memory* %call_40d7bf, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40d7c3	 Bytes: 3
  %loadMem_40d7c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d7c3 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d7c3)
  store %struct.Memory* %call_40d7c3, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, 0x4(%rax)	 RIP: 40d7c6	 Bytes: 7
  %loadMem_40d7c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d7c6 = call %struct.Memory* @routine_movl__0xc521974f__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d7c6)
  store %struct.Memory* %call_40d7c6, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x50(%rbp)	 RIP: 40d7cd	 Bytes: 7
  %loadMem_40d7cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d7cd = call %struct.Memory* @routine_movl__0x0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d7cd)
  store %struct.Memory* %call_40d7cd, %struct.Memory** %MEMORY

  ; Code: .L_40d7d4:	 RIP: 40d7d4	 Bytes: 0
  br label %block_.L_40d7d4
block_.L_40d7d4:

  ; Code: movl -0x50(%rbp), %eax	 RIP: 40d7d4	 Bytes: 3
  %loadMem_40d7d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d7d4 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d7d4)
  store %struct.Memory* %call_40d7d4, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 40d7d7	 Bytes: 4
  %loadMem_40d7d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d7d7 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d7d7)
  store %struct.Memory* %call_40d7d7, %struct.Memory** %MEMORY

  ; Code: cmpl 0x88(%rcx), %eax	 RIP: 40d7db	 Bytes: 6
  %loadMem_40d7db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d7db = call %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d7db)
  store %struct.Memory* %call_40d7db, %struct.Memory** %MEMORY

  ; Code: jg .L_40d82b	 RIP: 40d7e1	 Bytes: 6
  %loadMem_40d7e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d7e1 = call %struct.Memory* @routine_jg_.L_40d82b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d7e1, i8* %BRANCH_TAKEN, i64 74, i64 6, i64 6)
  store %struct.Memory* %call_40d7e1, %struct.Memory** %MEMORY

  %loadBr_40d7e1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40d7e1 = icmp eq i8 %loadBr_40d7e1, 1
  br i1 %cmpBr_40d7e1, label %block_.L_40d82b, label %block_40d7e7

block_40d7e7:
  ; Code: movq -0x48(%rbp), %rax	 RIP: 40d7e7	 Bytes: 4
  %loadMem_40d7e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d7e7 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d7e7)
  store %struct.Memory* %call_40d7e7, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40d7eb	 Bytes: 3
  %loadMem_40d7eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d7eb = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d7eb)
  store %struct.Memory* %call_40d7eb, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 40d7ee	 Bytes: 4
  %loadMem_40d7ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d7ee = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d7ee)
  store %struct.Memory* %call_40d7ee, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, (%rax,%rcx,4)	 RIP: 40d7f2	 Bytes: 7
  %loadMem_40d7f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d7f2 = call %struct.Memory* @routine_movl__0xc521974f____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d7f2)
  store %struct.Memory* %call_40d7f2, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rax	 RIP: 40d7f9	 Bytes: 4
  %loadMem_40d7f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d7f9 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d7f9)
  store %struct.Memory* %call_40d7f9, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40d7fd	 Bytes: 3
  %loadMem_40d7fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d7fd = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d7fd)
  store %struct.Memory* %call_40d7fd, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 40d800	 Bytes: 4
  %loadMem_40d800 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d800 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d800)
  store %struct.Memory* %call_40d800, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, (%rax,%rcx,4)	 RIP: 40d804	 Bytes: 7
  %loadMem_40d804 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d804 = call %struct.Memory* @routine_movl__0xc521974f____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d804)
  store %struct.Memory* %call_40d804, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 40d80b	 Bytes: 4
  %loadMem_40d80b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d80b = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d80b)
  store %struct.Memory* %call_40d80b, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40d80f	 Bytes: 3
  %loadMem_40d80f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d80f = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d80f)
  store %struct.Memory* %call_40d80f, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 40d812	 Bytes: 4
  %loadMem_40d812 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d812 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d812)
  store %struct.Memory* %call_40d812, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, (%rax,%rcx,4)	 RIP: 40d816	 Bytes: 7
  %loadMem_40d816 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d816 = call %struct.Memory* @routine_movl__0xc521974f____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d816)
  store %struct.Memory* %call_40d816, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %eax	 RIP: 40d81d	 Bytes: 3
  %loadMem_40d81d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d81d = call %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d81d)
  store %struct.Memory* %call_40d81d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40d820	 Bytes: 3
  %loadMem_40d820 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d820 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d820)
  store %struct.Memory* %call_40d820, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x50(%rbp)	 RIP: 40d823	 Bytes: 3
  %loadMem_40d823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d823 = call %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d823)
  store %struct.Memory* %call_40d823, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40d7d4	 RIP: 40d826	 Bytes: 5
  %loadMem_40d826 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d826 = call %struct.Memory* @routine_jmpq_.L_40d7d4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d826, i64 -82, i64 5)
  store %struct.Memory* %call_40d826, %struct.Memory** %MEMORY

  br label %block_.L_40d7d4

  ; Code: .L_40d82b:	 RIP: 40d82b	 Bytes: 0
block_.L_40d82b:

  ; Code: movq -0x30(%rbp), %rax	 RIP: 40d82b	 Bytes: 4
  %loadMem_40d82b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d82b = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d82b)
  store %struct.Memory* %call_40d82b, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40d82f	 Bytes: 3
  %loadMem_40d82f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d82f = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d82f)
  store %struct.Memory* %call_40d82f, %struct.Memory** %MEMORY

  ; Code: movl 0x10(%rax), %ecx	 RIP: 40d832	 Bytes: 3
  %loadMem_40d832 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d832 = call %struct.Memory* @routine_movl_0x10__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d832)
  store %struct.Memory* %call_40d832, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 40d835	 Bytes: 4
  %loadMem_40d835 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d835 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d835)
  store %struct.Memory* %call_40d835, %struct.Memory** %MEMORY

  ; Code: addl 0x154(%rax), %ecx	 RIP: 40d839	 Bytes: 6
  %loadMem_40d839 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d839 = call %struct.Memory* @routine_addl_0x154__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d839)
  store %struct.Memory* %call_40d839, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 40d83f	 Bytes: 4
  %loadMem_40d83f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d83f = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d83f)
  store %struct.Memory* %call_40d83f, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 40d843	 Bytes: 4
  %loadMem_40d843 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d843 = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d843)
  store %struct.Memory* %call_40d843, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x10(%rax)	 RIP: 40d847	 Bytes: 3
  %loadMem_40d847 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d847 = call %struct.Memory* @routine_movl__ecx__0x10__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d847)
  store %struct.Memory* %call_40d847, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 40d84a	 Bytes: 4
  %loadMem_40d84a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d84a = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d84a)
  store %struct.Memory* %call_40d84a, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 40d84e	 Bytes: 4
  %loadMem_40d84e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d84e = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d84e)
  store %struct.Memory* %call_40d84e, %struct.Memory** %MEMORY

  ; Code: movl 0x10(%rax), %ecx	 RIP: 40d852	 Bytes: 3
  %loadMem_40d852 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d852 = call %struct.Memory* @routine_movl_0x10__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d852)
  store %struct.Memory* %call_40d852, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 40d855	 Bytes: 4
  %loadMem_40d855 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d855 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d855)
  store %struct.Memory* %call_40d855, %struct.Memory** %MEMORY

  ; Code: addl 0x150(%rax), %ecx	 RIP: 40d859	 Bytes: 6
  %loadMem_40d859 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d859 = call %struct.Memory* @routine_addl_0x150__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d859)
  store %struct.Memory* %call_40d859, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 40d85f	 Bytes: 4
  %loadMem_40d85f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d85f = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d85f)
  store %struct.Memory* %call_40d85f, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 40d863	 Bytes: 4
  %loadMem_40d863 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d863 = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d863)
  store %struct.Memory* %call_40d863, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax)	 RIP: 40d867	 Bytes: 2
  %loadMem_40d867 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d867 = call %struct.Memory* @routine_movl__ecx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d867)
  store %struct.Memory* %call_40d867, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 40d869	 Bytes: 4
  %loadMem_40d869 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d869 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d869)
  store %struct.Memory* %call_40d869, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40d86d	 Bytes: 3
  %loadMem_40d86d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d86d = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d86d)
  store %struct.Memory* %call_40d86d, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, 0xc(%rax)	 RIP: 40d870	 Bytes: 7
  %loadMem_40d870 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d870 = call %struct.Memory* @routine_movl__0xc521974f__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d870)
  store %struct.Memory* %call_40d870, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 40d877	 Bytes: 4
  %loadMem_40d877 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d877 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d877)
  store %struct.Memory* %call_40d877, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40d87b	 Bytes: 3
  %loadMem_40d87b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d87b = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d87b)
  store %struct.Memory* %call_40d87b, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, 0x8(%rax)	 RIP: 40d87e	 Bytes: 7
  %loadMem_40d87e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d87e = call %struct.Memory* @routine_movl__0xc521974f__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d87e)
  store %struct.Memory* %call_40d87e, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 40d885	 Bytes: 4
  %loadMem_40d885 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d885 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d885)
  store %struct.Memory* %call_40d885, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40d889	 Bytes: 3
  %loadMem_40d889 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d889 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d889)
  store %struct.Memory* %call_40d889, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, 0x4(%rax)	 RIP: 40d88c	 Bytes: 7
  %loadMem_40d88c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d88c = call %struct.Memory* @routine_movl__0xc521974f__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d88c)
  store %struct.Memory* %call_40d88c, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x50(%rbp)	 RIP: 40d893	 Bytes: 7
  %loadMem_40d893 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d893 = call %struct.Memory* @routine_movl__0x0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d893)
  store %struct.Memory* %call_40d893, %struct.Memory** %MEMORY

  ; Code: .L_40d89a:	 RIP: 40d89a	 Bytes: 0
  br label %block_.L_40d89a
block_.L_40d89a:

  ; Code: movl -0x50(%rbp), %eax	 RIP: 40d89a	 Bytes: 3
  %loadMem_40d89a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d89a = call %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d89a)
  store %struct.Memory* %call_40d89a, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 40d89d	 Bytes: 4
  %loadMem_40d89d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d89d = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d89d)
  store %struct.Memory* %call_40d89d, %struct.Memory** %MEMORY

  ; Code: cmpl 0x88(%rcx), %eax	 RIP: 40d8a1	 Bytes: 6
  %loadMem_40d8a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d8a1 = call %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d8a1)
  store %struct.Memory* %call_40d8a1, %struct.Memory** %MEMORY

  ; Code: jg .L_40d8f1	 RIP: 40d8a7	 Bytes: 6
  %loadMem_40d8a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d8a7 = call %struct.Memory* @routine_jg_.L_40d8f1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d8a7, i8* %BRANCH_TAKEN, i64 74, i64 6, i64 6)
  store %struct.Memory* %call_40d8a7, %struct.Memory** %MEMORY

  %loadBr_40d8a7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40d8a7 = icmp eq i8 %loadBr_40d8a7, 1
  br i1 %cmpBr_40d8a7, label %block_.L_40d8f1, label %block_40d8ad

block_40d8ad:
  ; Code: movq -0x48(%rbp), %rax	 RIP: 40d8ad	 Bytes: 4
  %loadMem_40d8ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d8ad = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d8ad)
  store %struct.Memory* %call_40d8ad, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40d8b1	 Bytes: 3
  %loadMem_40d8b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d8b1 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d8b1)
  store %struct.Memory* %call_40d8b1, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 40d8b4	 Bytes: 4
  %loadMem_40d8b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d8b4 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d8b4)
  store %struct.Memory* %call_40d8b4, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, (%rax,%rcx,4)	 RIP: 40d8b8	 Bytes: 7
  %loadMem_40d8b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d8b8 = call %struct.Memory* @routine_movl__0xc521974f____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d8b8)
  store %struct.Memory* %call_40d8b8, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rax	 RIP: 40d8bf	 Bytes: 4
  %loadMem_40d8bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d8bf = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d8bf)
  store %struct.Memory* %call_40d8bf, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40d8c3	 Bytes: 3
  %loadMem_40d8c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d8c3 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d8c3)
  store %struct.Memory* %call_40d8c3, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 40d8c6	 Bytes: 4
  %loadMem_40d8c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d8c6 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d8c6)
  store %struct.Memory* %call_40d8c6, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, (%rax,%rcx,4)	 RIP: 40d8ca	 Bytes: 7
  %loadMem_40d8ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d8ca = call %struct.Memory* @routine_movl__0xc521974f____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d8ca)
  store %struct.Memory* %call_40d8ca, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 40d8d1	 Bytes: 4
  %loadMem_40d8d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d8d1 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d8d1)
  store %struct.Memory* %call_40d8d1, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40d8d5	 Bytes: 3
  %loadMem_40d8d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d8d5 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d8d5)
  store %struct.Memory* %call_40d8d5, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 40d8d8	 Bytes: 4
  %loadMem_40d8d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d8d8 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d8d8)
  store %struct.Memory* %call_40d8d8, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, (%rax,%rcx,4)	 RIP: 40d8dc	 Bytes: 7
  %loadMem_40d8dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d8dc = call %struct.Memory* @routine_movl__0xc521974f____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d8dc)
  store %struct.Memory* %call_40d8dc, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %eax	 RIP: 40d8e3	 Bytes: 3
  %loadMem_40d8e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d8e3 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d8e3)
  store %struct.Memory* %call_40d8e3, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40d8e6	 Bytes: 3
  %loadMem_40d8e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d8e6 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d8e6)
  store %struct.Memory* %call_40d8e6, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x50(%rbp)	 RIP: 40d8e9	 Bytes: 3
  %loadMem_40d8e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d8e9 = call %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d8e9)
  store %struct.Memory* %call_40d8e9, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40d89a	 RIP: 40d8ec	 Bytes: 5
  %loadMem_40d8ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d8ec = call %struct.Memory* @routine_jmpq_.L_40d89a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d8ec, i64 -82, i64 5)
  store %struct.Memory* %call_40d8ec, %struct.Memory** %MEMORY

  br label %block_.L_40d89a

  ; Code: .L_40d8f1:	 RIP: 40d8f1	 Bytes: 0
block_.L_40d8f1:

  ; Code: movl $0x2, -0x4c(%rbp)	 RIP: 40d8f1	 Bytes: 7
  %loadMem_40d8f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d8f1 = call %struct.Memory* @routine_movl__0x2__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d8f1)
  store %struct.Memory* %call_40d8f1, %struct.Memory** %MEMORY

  ; Code: .L_40d8f8:	 RIP: 40d8f8	 Bytes: 0
  br label %block_.L_40d8f8
block_.L_40d8f8:

  ; Code: movl -0x4c(%rbp), %eax	 RIP: 40d8f8	 Bytes: 3
  %loadMem_40d8f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d8f8 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d8f8)
  store %struct.Memory* %call_40d8f8, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 40d8fb	 Bytes: 3
  %loadMem_40d8fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d8fb = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d8fb)
  store %struct.Memory* %call_40d8fb, %struct.Memory** %MEMORY

  ; Code: jg .L_40e4a6	 RIP: 40d8fe	 Bytes: 6
  %loadMem_40d8fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d8fe = call %struct.Memory* @routine_jg_.L_40e4a6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d8fe, i8* %BRANCH_TAKEN, i64 2984, i64 6, i64 6)
  store %struct.Memory* %call_40d8fe, %struct.Memory** %MEMORY

  %loadBr_40d8fe = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40d8fe = icmp eq i8 %loadBr_40d8fe, 1
  br i1 %cmpBr_40d8fe, label %block_.L_40e4a6, label %block_40d904

block_40d904:
  ; Code: movq -0x48(%rbp), %rax	 RIP: 40d904	 Bytes: 4
  %loadMem_40d904 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d904 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d904)
  store %struct.Memory* %call_40d904, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rcx	 RIP: 40d908	 Bytes: 4
  %loadMem_40d908 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d908 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d908)
  store %struct.Memory* %call_40d908, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40d90c	 Bytes: 4
  %loadMem_40d90c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d90c = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d90c)
  store %struct.Memory* %call_40d90c, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, (%rax)	 RIP: 40d910	 Bytes: 6
  %loadMem_40d910 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d910 = call %struct.Memory* @routine_movl__0xc521974f____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d910)
  store %struct.Memory* %call_40d910, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rax	 RIP: 40d916	 Bytes: 4
  %loadMem_40d916 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d916 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d916)
  store %struct.Memory* %call_40d916, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rcx	 RIP: 40d91a	 Bytes: 4
  %loadMem_40d91a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d91a = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d91a)
  store %struct.Memory* %call_40d91a, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40d91e	 Bytes: 4
  %loadMem_40d91e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d91e = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d91e)
  store %struct.Memory* %call_40d91e, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, (%rax)	 RIP: 40d922	 Bytes: 6
  %loadMem_40d922 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d922 = call %struct.Memory* @routine_movl__0xc521974f____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d922)
  store %struct.Memory* %call_40d922, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 40d928	 Bytes: 4
  %loadMem_40d928 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d928 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d928)
  store %struct.Memory* %call_40d928, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rcx	 RIP: 40d92c	 Bytes: 4
  %loadMem_40d92c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d92c = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d92c)
  store %struct.Memory* %call_40d92c, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40d930	 Bytes: 4
  %loadMem_40d930 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d930 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d930)
  store %struct.Memory* %call_40d930, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, (%rax)	 RIP: 40d934	 Bytes: 6
  %loadMem_40d934 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d934 = call %struct.Memory* @routine_movl__0xc521974f____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d934)
  store %struct.Memory* %call_40d934, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, -0x4c(%rbp)	 RIP: 40d93a	 Bytes: 4
  %loadMem_40d93a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d93a = call %struct.Memory* @routine_cmpl__0x2__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d93a)
  store %struct.Memory* %call_40d93a, %struct.Memory** %MEMORY

  ; Code: jle .L_40d9d9	 RIP: 40d93e	 Bytes: 6
  %loadMem_40d93e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d93e = call %struct.Memory* @routine_jle_.L_40d9d9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d93e, i8* %BRANCH_TAKEN, i64 155, i64 6, i64 6)
  store %struct.Memory* %call_40d93e, %struct.Memory** %MEMORY

  %loadBr_40d93e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40d93e = icmp eq i8 %loadBr_40d93e, 1
  br i1 %cmpBr_40d93e, label %block_.L_40d9d9, label %block_40d944

block_40d944:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 40d944	 Bytes: 4
  %loadMem_40d944 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d944 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d944)
  store %struct.Memory* %call_40d944, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %ecx	 RIP: 40d948	 Bytes: 3
  %loadMem_40d948 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d948 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d948)
  store %struct.Memory* %call_40d948, %struct.Memory** %MEMORY

  ; Code: subl $0x2, %ecx	 RIP: 40d94b	 Bytes: 3
  %loadMem_40d94b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d94b = call %struct.Memory* @routine_subl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d94b)
  store %struct.Memory* %call_40d94b, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40d94e	 Bytes: 3
  %loadMem_40d94e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d94e = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d94e)
  store %struct.Memory* %call_40d94e, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rdx,1), %ecx	 RIP: 40d951	 Bytes: 4
  %loadMem_40d951 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d951 = call %struct.Memory* @routine_movsbl___rax__rdx_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d951)
  store %struct.Memory* %call_40d951, %struct.Memory** %MEMORY

  ; Code: cmpl $0x4, %ecx	 RIP: 40d955	 Bytes: 3
  %loadMem_40d955 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d955 = call %struct.Memory* @routine_cmpl__0x4___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d955)
  store %struct.Memory* %call_40d955, %struct.Memory** %MEMORY

  ; Code: jge .L_40d9cd	 RIP: 40d958	 Bytes: 6
  %loadMem_40d958 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d958 = call %struct.Memory* @routine_jge_.L_40d9cd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d958, i8* %BRANCH_TAKEN, i64 117, i64 6, i64 6)
  store %struct.Memory* %call_40d958, %struct.Memory** %MEMORY

  %loadBr_40d958 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40d958 = icmp eq i8 %loadBr_40d958, 1
  br i1 %cmpBr_40d958, label %block_.L_40d9cd, label %block_40d95e

block_40d95e:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 40d95e	 Bytes: 4
  %loadMem_40d95e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d95e = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d95e)
  store %struct.Memory* %call_40d95e, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %ecx	 RIP: 40d962	 Bytes: 3
  %loadMem_40d962 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d962 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d962)
  store %struct.Memory* %call_40d962, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 40d965	 Bytes: 3
  %loadMem_40d965 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d965 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d965)
  store %struct.Memory* %call_40d965, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40d968	 Bytes: 3
  %loadMem_40d968 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d968 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d968)
  store %struct.Memory* %call_40d968, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rdx,1), %ecx	 RIP: 40d96b	 Bytes: 4
  %loadMem_40d96b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d96b = call %struct.Memory* @routine_movsbl___rax__rdx_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d96b)
  store %struct.Memory* %call_40d96b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x4, %ecx	 RIP: 40d96f	 Bytes: 3
  %loadMem_40d96f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d96f = call %struct.Memory* @routine_cmpl__0x4___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d96f)
  store %struct.Memory* %call_40d96f, %struct.Memory** %MEMORY

  ; Code: jge .L_40d9cd	 RIP: 40d972	 Bytes: 6
  %loadMem_40d972 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d972 = call %struct.Memory* @routine_jge_.L_40d9cd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d972, i8* %BRANCH_TAKEN, i64 91, i64 6, i64 6)
  store %struct.Memory* %call_40d972, %struct.Memory** %MEMORY

  %loadBr_40d972 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40d972 = icmp eq i8 %loadBr_40d972, 1
  br i1 %cmpBr_40d972, label %block_.L_40d9cd, label %block_40d978

block_40d978:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 40d978	 Bytes: 4
  %loadMem_40d978 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d978 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d978)
  store %struct.Memory* %call_40d978, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rcx	 RIP: 40d97c	 Bytes: 4
  %loadMem_40d97c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d97c = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d97c)
  store %struct.Memory* %call_40d97c, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 40d980	 Bytes: 4
  %loadMem_40d980 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d980 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d980)
  store %struct.Memory* %call_40d980, %struct.Memory** %MEMORY

  ; Code: cmpl $0x4, %edx	 RIP: 40d984	 Bytes: 3
  %loadMem_40d984 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d984 = call %struct.Memory* @routine_cmpl__0x4___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d984)
  store %struct.Memory* %call_40d984, %struct.Memory** %MEMORY

  ; Code: jge .L_40d9cd	 RIP: 40d987	 Bytes: 6
  %loadMem_40d987 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d987 = call %struct.Memory* @routine_jge_.L_40d9cd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d987, i8* %BRANCH_TAKEN, i64 70, i64 6, i64 6)
  store %struct.Memory* %call_40d987, %struct.Memory** %MEMORY

  %loadBr_40d987 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40d987 = icmp eq i8 %loadBr_40d987, 1
  br i1 %cmpBr_40d987, label %block_.L_40d9cd, label %block_40d98d

block_40d98d:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 40d98d	 Bytes: 4
  %loadMem_40d98d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d98d = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d98d)
  store %struct.Memory* %call_40d98d, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %ecx	 RIP: 40d991	 Bytes: 3
  %loadMem_40d991 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d991 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d991)
  store %struct.Memory* %call_40d991, %struct.Memory** %MEMORY

  ; Code: subl $0x2, %ecx	 RIP: 40d994	 Bytes: 3
  %loadMem_40d994 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d994 = call %struct.Memory* @routine_subl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d994)
  store %struct.Memory* %call_40d994, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40d997	 Bytes: 3
  %loadMem_40d997 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d997 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d997)
  store %struct.Memory* %call_40d997, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rdx,1), %ecx	 RIP: 40d99a	 Bytes: 4
  %loadMem_40d99a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d99a = call %struct.Memory* @routine_movsbl___rax__rdx_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d99a)
  store %struct.Memory* %call_40d99a, %struct.Memory** %MEMORY

  ; Code: shll $0x4, %ecx	 RIP: 40d99e	 Bytes: 3
  %loadMem_40d99e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d99e = call %struct.Memory* @routine_shll__0x4___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d99e)
  store %struct.Memory* %call_40d99e, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 40d9a1	 Bytes: 4
  %loadMem_40d9a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d9a1 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d9a1)
  store %struct.Memory* %call_40d9a1, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %esi	 RIP: 40d9a5	 Bytes: 3
  %loadMem_40d9a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d9a5 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d9a5)
  store %struct.Memory* %call_40d9a5, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 40d9a8	 Bytes: 3
  %loadMem_40d9a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d9a8 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d9a8)
  store %struct.Memory* %call_40d9a8, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdx	 RIP: 40d9ab	 Bytes: 3
  %loadMem_40d9ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d9ab = call %struct.Memory* @routine_movslq__esi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d9ab)
  store %struct.Memory* %call_40d9ab, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rdx,1), %esi	 RIP: 40d9ae	 Bytes: 4
  %loadMem_40d9ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d9ae = call %struct.Memory* @routine_movsbl___rax__rdx_1____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d9ae)
  store %struct.Memory* %call_40d9ae, %struct.Memory** %MEMORY

  ; Code: shll $0x2, %esi	 RIP: 40d9b2	 Bytes: 3
  %loadMem_40d9b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d9b2 = call %struct.Memory* @routine_shll__0x2___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d9b2)
  store %struct.Memory* %call_40d9b2, %struct.Memory** %MEMORY

  ; Code: addl %esi, %ecx	 RIP: 40d9b5	 Bytes: 2
  %loadMem_40d9b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d9b5 = call %struct.Memory* @routine_addl__esi___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d9b5)
  store %struct.Memory* %call_40d9b5, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 40d9b7	 Bytes: 4
  %loadMem_40d9b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d9b7 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d9b7)
  store %struct.Memory* %call_40d9b7, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 40d9bb	 Bytes: 4
  %loadMem_40d9bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d9bb = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d9bb)
  store %struct.Memory* %call_40d9bb, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rdx,1), %esi	 RIP: 40d9bf	 Bytes: 4
  %loadMem_40d9bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d9bf = call %struct.Memory* @routine_movsbl___rax__rdx_1____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d9bf)
  store %struct.Memory* %call_40d9bf, %struct.Memory** %MEMORY

  ; Code: addl %esi, %ecx	 RIP: 40d9c3	 Bytes: 2
  %loadMem_40d9c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d9c3 = call %struct.Memory* @routine_addl__esi___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d9c3)
  store %struct.Memory* %call_40d9c3, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x58(%rbp)	 RIP: 40d9c5	 Bytes: 3
  %loadMem_40d9c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d9c5 = call %struct.Memory* @routine_movl__ecx__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d9c5)
  store %struct.Memory* %call_40d9c5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40d9d4	 RIP: 40d9c8	 Bytes: 5
  %loadMem_40d9c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d9c8 = call %struct.Memory* @routine_jmpq_.L_40d9d4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d9c8, i64 12, i64 5)
  store %struct.Memory* %call_40d9c8, %struct.Memory** %MEMORY

  br label %block_.L_40d9d4

  ; Code: .L_40d9cd:	 RIP: 40d9cd	 Bytes: 0
block_.L_40d9cd:

  ; Code: movl $0x40, -0x58(%rbp)	 RIP: 40d9cd	 Bytes: 7
  %loadMem_40d9cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d9cd = call %struct.Memory* @routine_movl__0x40__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d9cd)
  store %struct.Memory* %call_40d9cd, %struct.Memory** %MEMORY

  ; Code: .L_40d9d4:	 RIP: 40d9d4	 Bytes: 0
  br label %block_.L_40d9d4
block_.L_40d9d4:

  ; Code: jmpq .L_40d9d9	 RIP: 40d9d4	 Bytes: 5
  %loadMem_40d9d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d9d4 = call %struct.Memory* @routine_jmpq_.L_40d9d9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d9d4, i64 5, i64 5)
  store %struct.Memory* %call_40d9d4, %struct.Memory** %MEMORY

  br label %block_.L_40d9d9

  ; Code: .L_40d9d9:	 RIP: 40d9d9	 Bytes: 0
block_.L_40d9d9:

  ; Code: movl $0x1, -0x50(%rbp)	 RIP: 40d9d9	 Bytes: 7
  %loadMem_40d9d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d9d9 = call %struct.Memory* @routine_movl__0x1__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d9d9)
  store %struct.Memory* %call_40d9d9, %struct.Memory** %MEMORY

  ; Code: .L_40d9e0:	 RIP: 40d9e0	 Bytes: 0
  br label %block_.L_40d9e0
block_.L_40d9e0:

  ; Code: movl -0x50(%rbp), %eax	 RIP: 40d9e0	 Bytes: 3
  %loadMem_40d9e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d9e0 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d9e0)
  store %struct.Memory* %call_40d9e0, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 40d9e3	 Bytes: 4
  %loadMem_40d9e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d9e3 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d9e3)
  store %struct.Memory* %call_40d9e3, %struct.Memory** %MEMORY

  ; Code: cmpl 0x88(%rcx), %eax	 RIP: 40d9e7	 Bytes: 6
  %loadMem_40d9e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d9e7 = call %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d9e7)
  store %struct.Memory* %call_40d9e7, %struct.Memory** %MEMORY

  ; Code: jg .L_40e279	 RIP: 40d9ed	 Bytes: 6
  %loadMem_40d9ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d9ed = call %struct.Memory* @routine_jg_.L_40e279(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d9ed, i8* %BRANCH_TAKEN, i64 2188, i64 6, i64 6)
  store %struct.Memory* %call_40d9ed, %struct.Memory** %MEMORY

  %loadBr_40d9ed = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40d9ed = icmp eq i8 %loadBr_40d9ed, 1
  br i1 %cmpBr_40d9ed, label %block_.L_40e279, label %block_40d9f3

block_40d9f3:
  ; Code: cmpl $0x2, -0x4c(%rbp)	 RIP: 40d9f3	 Bytes: 4
  %loadMem_40d9f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d9f3 = call %struct.Memory* @routine_cmpl__0x2__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d9f3)
  store %struct.Memory* %call_40d9f3, %struct.Memory** %MEMORY

  ; Code: jle .L_40dba2	 RIP: 40d9f7	 Bytes: 6
  %loadMem_40d9f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d9f7 = call %struct.Memory* @routine_jle_.L_40dba2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d9f7, i8* %BRANCH_TAKEN, i64 427, i64 6, i64 6)
  store %struct.Memory* %call_40d9f7, %struct.Memory** %MEMORY

  %loadBr_40d9f7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40d9f7 = icmp eq i8 %loadBr_40d9f7, 1
  br i1 %cmpBr_40d9f7, label %block_.L_40dba2, label %block_40d9fd

block_40d9fd:
  ; Code: movq -0x38(%rbp), %rax	 RIP: 40d9fd	 Bytes: 4
  %loadMem_40d9fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d9fd = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d9fd)
  store %struct.Memory* %call_40d9fd, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %ecx	 RIP: 40da01	 Bytes: 3
  %loadMem_40da01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40da01 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40da01)
  store %struct.Memory* %call_40da01, %struct.Memory** %MEMORY

  ; Code: subl $0x3, %ecx	 RIP: 40da04	 Bytes: 3
  %loadMem_40da04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40da04 = call %struct.Memory* @routine_subl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40da04)
  store %struct.Memory* %call_40da04, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40da07	 Bytes: 3
  %loadMem_40da07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40da07 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40da07)
  store %struct.Memory* %call_40da07, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 40da0a	 Bytes: 4
  %loadMem_40da0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40da0a = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40da0a)
  store %struct.Memory* %call_40da0a, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %ecx	 RIP: 40da0e	 Bytes: 3
  %loadMem_40da0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40da0e = call %struct.Memory* @routine_movl_MINUS0x50__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40da0e)
  store %struct.Memory* %call_40da0e, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 40da11	 Bytes: 3
  %loadMem_40da11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40da11 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40da11)
  store %struct.Memory* %call_40da11, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40da14	 Bytes: 3
  %loadMem_40da14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40da14 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40da14)
  store %struct.Memory* %call_40da14, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rdx,4), %ecx	 RIP: 40da17	 Bytes: 3
  %loadMem_40da17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40da17 = call %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40da17)
  store %struct.Memory* %call_40da17, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 40da1a	 Bytes: 4
  %loadMem_40da1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40da1a = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40da1a)
  store %struct.Memory* %call_40da1a, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rax), %rax	 RIP: 40da1e	 Bytes: 7
  %loadMem_40da1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40da1e = call %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40da1e)
  store %struct.Memory* %call_40da1e, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40da25	 Bytes: 3
  %loadMem_40da25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40da25 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40da25)
  store %struct.Memory* %call_40da25, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %esi	 RIP: 40da28	 Bytes: 3
  %loadMem_40da28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40da28 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40da28)
  store %struct.Memory* %call_40da28, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 40da2b	 Bytes: 3
  %loadMem_40da2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40da2b = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40da2b)
  store %struct.Memory* %call_40da2b, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdx	 RIP: 40da2e	 Bytes: 3
  %loadMem_40da2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40da2e = call %struct.Memory* @routine_movslq__esi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40da2e)
  store %struct.Memory* %call_40da2e, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rdx,4), %ecx	 RIP: 40da31	 Bytes: 3
  %loadMem_40da31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40da31 = call %struct.Memory* @routine_addl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40da31)
  store %struct.Memory* %call_40da31, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 40da34	 Bytes: 4
  %loadMem_40da34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40da34 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40da34)
  store %struct.Memory* %call_40da34, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 40da38	 Bytes: 4
  %loadMem_40da38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40da38 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40da38)
  store %struct.Memory* %call_40da38, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 40da3c	 Bytes: 4
  %loadMem_40da3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40da3c = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40da3c)
  store %struct.Memory* %call_40da3c, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rdx	 RIP: 40da40	 Bytes: 4
  %loadMem_40da40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40da40 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40da40)
  store %struct.Memory* %call_40da40, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax,%rdx,4)	 RIP: 40da44	 Bytes: 3
  %loadMem_40da44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40da44 = call %struct.Memory* @routine_movl__ecx____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40da44)
  store %struct.Memory* %call_40da44, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rax	 RIP: 40da47	 Bytes: 4
  %loadMem_40da47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40da47 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40da47)
  store %struct.Memory* %call_40da47, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %ecx	 RIP: 40da4b	 Bytes: 3
  %loadMem_40da4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40da4b = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40da4b)
  store %struct.Memory* %call_40da4b, %struct.Memory** %MEMORY

  ; Code: subl $0x3, %ecx	 RIP: 40da4e	 Bytes: 3
  %loadMem_40da4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40da4e = call %struct.Memory* @routine_subl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40da4e)
  store %struct.Memory* %call_40da4e, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40da51	 Bytes: 3
  %loadMem_40da51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40da51 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40da51)
  store %struct.Memory* %call_40da51, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 40da54	 Bytes: 4
  %loadMem_40da54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40da54 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40da54)
  store %struct.Memory* %call_40da54, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %ecx	 RIP: 40da58	 Bytes: 3
  %loadMem_40da58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40da58 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40da58)
  store %struct.Memory* %call_40da58, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 40da5b	 Bytes: 3
  %loadMem_40da5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40da5b = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40da5b)
  store %struct.Memory* %call_40da5b, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40da5e	 Bytes: 3
  %loadMem_40da5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40da5e = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40da5e)
  store %struct.Memory* %call_40da5e, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rdx,4), %ecx	 RIP: 40da61	 Bytes: 3
  %loadMem_40da61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40da61 = call %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40da61)
  store %struct.Memory* %call_40da61, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 40da64	 Bytes: 4
  %loadMem_40da64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40da64 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40da64)
  store %struct.Memory* %call_40da64, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rax), %rax	 RIP: 40da68	 Bytes: 7
  %loadMem_40da68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40da68 = call %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40da68)
  store %struct.Memory* %call_40da68, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax), %rax	 RIP: 40da6f	 Bytes: 4
  %loadMem_40da6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40da6f = call %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40da6f)
  store %struct.Memory* %call_40da6f, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %esi	 RIP: 40da73	 Bytes: 3
  %loadMem_40da73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40da73 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40da73)
  store %struct.Memory* %call_40da73, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 40da76	 Bytes: 3
  %loadMem_40da76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40da76 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40da76)
  store %struct.Memory* %call_40da76, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdx	 RIP: 40da79	 Bytes: 3
  %loadMem_40da79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40da79 = call %struct.Memory* @routine_movslq__esi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40da79)
  store %struct.Memory* %call_40da79, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rdx,4), %ecx	 RIP: 40da7c	 Bytes: 3
  %loadMem_40da7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40da7c = call %struct.Memory* @routine_addl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40da7c)
  store %struct.Memory* %call_40da7c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x54(%rbp)	 RIP: 40da7f	 Bytes: 3
  %loadMem_40da7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40da7f = call %struct.Memory* @routine_movl__ecx__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40da7f)
  store %struct.Memory* %call_40da7f, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 40da82	 Bytes: 4
  %loadMem_40da82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40da82 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40da82)
  store %struct.Memory* %call_40da82, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 40da86	 Bytes: 4
  %loadMem_40da86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40da86 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40da86)
  store %struct.Memory* %call_40da86, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 40da8a	 Bytes: 4
  %loadMem_40da8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40da8a = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40da8a)
  store %struct.Memory* %call_40da8a, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rdx	 RIP: 40da8e	 Bytes: 4
  %loadMem_40da8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40da8e = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40da8e)
  store %struct.Memory* %call_40da8e, %struct.Memory** %MEMORY

  ; Code: cmpl (%rax,%rdx,4), %ecx	 RIP: 40da92	 Bytes: 3
  %loadMem_40da92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40da92 = call %struct.Memory* @routine_cmpl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40da92)
  store %struct.Memory* %call_40da92, %struct.Memory** %MEMORY

  ; Code: jle .L_40dab1	 RIP: 40da95	 Bytes: 6
  %loadMem_40da95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40da95 = call %struct.Memory* @routine_jle_.L_40dab1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40da95, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_40da95, %struct.Memory** %MEMORY

  %loadBr_40da95 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40da95 = icmp eq i8 %loadBr_40da95, 1
  br i1 %cmpBr_40da95, label %block_.L_40dab1, label %block_40da9b

block_40da9b:
  ; Code: movl -0x54(%rbp), %eax	 RIP: 40da9b	 Bytes: 3
  %loadMem_40da9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40da9b = call %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40da9b)
  store %struct.Memory* %call_40da9b, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 40da9e	 Bytes: 4
  %loadMem_40da9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40da9e = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40da9e)
  store %struct.Memory* %call_40da9e, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 40daa2	 Bytes: 4
  %loadMem_40daa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40daa2 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40daa2)
  store %struct.Memory* %call_40daa2, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40daa6	 Bytes: 4
  %loadMem_40daa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40daa6 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40daa6)
  store %struct.Memory* %call_40daa6, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rdx	 RIP: 40daaa	 Bytes: 4
  %loadMem_40daaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40daaa = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40daaa)
  store %struct.Memory* %call_40daaa, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 40daae	 Bytes: 3
  %loadMem_40daae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40daae = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40daae)
  store %struct.Memory* %call_40daae, %struct.Memory** %MEMORY

  ; Code: .L_40dab1:	 RIP: 40dab1	 Bytes: 0
  br label %block_.L_40dab1
block_.L_40dab1:

  ; Code: movq -0x30(%rbp), %rax	 RIP: 40dab1	 Bytes: 4
  %loadMem_40dab1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dab1 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dab1)
  store %struct.Memory* %call_40dab1, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %ecx	 RIP: 40dab5	 Bytes: 3
  %loadMem_40dab5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dab5 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dab5)
  store %struct.Memory* %call_40dab5, %struct.Memory** %MEMORY

  ; Code: subl $0x3, %ecx	 RIP: 40dab8	 Bytes: 3
  %loadMem_40dab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dab8 = call %struct.Memory* @routine_subl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dab8)
  store %struct.Memory* %call_40dab8, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40dabb	 Bytes: 3
  %loadMem_40dabb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dabb = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dabb)
  store %struct.Memory* %call_40dabb, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 40dabe	 Bytes: 4
  %loadMem_40dabe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dabe = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dabe)
  store %struct.Memory* %call_40dabe, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %ecx	 RIP: 40dac2	 Bytes: 2
  %loadMem_40dac2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dac2 = call %struct.Memory* @routine_movl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dac2)
  store %struct.Memory* %call_40dac2, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 40dac4	 Bytes: 4
  %loadMem_40dac4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dac4 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dac4)
  store %struct.Memory* %call_40dac4, %struct.Memory** %MEMORY

  ; Code: movq 0x170(%rax), %rax	 RIP: 40dac8	 Bytes: 7
  %loadMem_40dac8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dac8 = call %struct.Memory* @routine_movq_0x170__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dac8)
  store %struct.Memory* %call_40dac8, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rdx	 RIP: 40dacf	 Bytes: 4
  %loadMem_40dacf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dacf = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dacf)
  store %struct.Memory* %call_40dacf, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rdx,4), %ecx	 RIP: 40dad3	 Bytes: 3
  %loadMem_40dad3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dad3 = call %struct.Memory* @routine_addl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dad3)
  store %struct.Memory* %call_40dad3, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x54(%rbp)	 RIP: 40dad6	 Bytes: 3
  %loadMem_40dad6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dad6 = call %struct.Memory* @routine_movl__ecx__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dad6)
  store %struct.Memory* %call_40dad6, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 40dad9	 Bytes: 4
  %loadMem_40dad9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dad9 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dad9)
  store %struct.Memory* %call_40dad9, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 40dadd	 Bytes: 4
  %loadMem_40dadd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dadd = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dadd)
  store %struct.Memory* %call_40dadd, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 40dae1	 Bytes: 4
  %loadMem_40dae1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dae1 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dae1)
  store %struct.Memory* %call_40dae1, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rdx	 RIP: 40dae5	 Bytes: 4
  %loadMem_40dae5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dae5 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dae5)
  store %struct.Memory* %call_40dae5, %struct.Memory** %MEMORY

  ; Code: cmpl (%rax,%rdx,4), %ecx	 RIP: 40dae9	 Bytes: 3
  %loadMem_40dae9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dae9 = call %struct.Memory* @routine_cmpl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dae9)
  store %struct.Memory* %call_40dae9, %struct.Memory** %MEMORY

  ; Code: jle .L_40db08	 RIP: 40daec	 Bytes: 6
  %loadMem_40daec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40daec = call %struct.Memory* @routine_jle_.L_40db08(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40daec, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_40daec, %struct.Memory** %MEMORY

  %loadBr_40daec = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40daec = icmp eq i8 %loadBr_40daec, 1
  br i1 %cmpBr_40daec, label %block_.L_40db08, label %block_40daf2

block_40daf2:
  ; Code: movl -0x54(%rbp), %eax	 RIP: 40daf2	 Bytes: 3
  %loadMem_40daf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40daf2 = call %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40daf2)
  store %struct.Memory* %call_40daf2, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 40daf5	 Bytes: 4
  %loadMem_40daf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40daf5 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40daf5)
  store %struct.Memory* %call_40daf5, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 40daf9	 Bytes: 4
  %loadMem_40daf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40daf9 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40daf9)
  store %struct.Memory* %call_40daf9, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40dafd	 Bytes: 4
  %loadMem_40dafd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dafd = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dafd)
  store %struct.Memory* %call_40dafd, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rdx	 RIP: 40db01	 Bytes: 4
  %loadMem_40db01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40db01 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40db01)
  store %struct.Memory* %call_40db01, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 40db05	 Bytes: 3
  %loadMem_40db05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40db05 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40db05)
  store %struct.Memory* %call_40db05, %struct.Memory** %MEMORY

  ; Code: .L_40db08:	 RIP: 40db08	 Bytes: 0
  br label %block_.L_40db08
block_.L_40db08:

  ; Code: movq -0x48(%rbp), %rax	 RIP: 40db08	 Bytes: 4
  %loadMem_40db08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40db08 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40db08)
  store %struct.Memory* %call_40db08, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %ecx	 RIP: 40db0c	 Bytes: 3
  %loadMem_40db0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40db0c = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40db0c)
  store %struct.Memory* %call_40db0c, %struct.Memory** %MEMORY

  ; Code: subl $0x3, %ecx	 RIP: 40db0f	 Bytes: 3
  %loadMem_40db0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40db0f = call %struct.Memory* @routine_subl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40db0f)
  store %struct.Memory* %call_40db0f, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40db12	 Bytes: 3
  %loadMem_40db12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40db12 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40db12)
  store %struct.Memory* %call_40db12, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 40db15	 Bytes: 4
  %loadMem_40db15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40db15 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40db15)
  store %struct.Memory* %call_40db15, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %ecx	 RIP: 40db19	 Bytes: 3
  %loadMem_40db19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40db19 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40db19)
  store %struct.Memory* %call_40db19, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 40db1c	 Bytes: 3
  %loadMem_40db1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40db1c = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40db1c)
  store %struct.Memory* %call_40db1c, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40db1f	 Bytes: 3
  %loadMem_40db1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40db1f = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40db1f)
  store %struct.Memory* %call_40db1f, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rdx,4), %ecx	 RIP: 40db22	 Bytes: 3
  %loadMem_40db22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40db22 = call %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40db22)
  store %struct.Memory* %call_40db22, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 40db25	 Bytes: 4
  %loadMem_40db25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40db25 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40db25)
  store %struct.Memory* %call_40db25, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rax), %rax	 RIP: 40db29	 Bytes: 7
  %loadMem_40db29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40db29 = call %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40db29)
  store %struct.Memory* %call_40db29, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 40db30	 Bytes: 4
  %loadMem_40db30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40db30 = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40db30)
  store %struct.Memory* %call_40db30, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %esi	 RIP: 40db34	 Bytes: 3
  %loadMem_40db34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40db34 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40db34)
  store %struct.Memory* %call_40db34, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 40db37	 Bytes: 3
  %loadMem_40db37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40db37 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40db37)
  store %struct.Memory* %call_40db37, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdx	 RIP: 40db3a	 Bytes: 3
  %loadMem_40db3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40db3a = call %struct.Memory* @routine_movslq__esi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40db3a)
  store %struct.Memory* %call_40db3a, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rdx,4), %ecx	 RIP: 40db3d	 Bytes: 3
  %loadMem_40db3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40db3d = call %struct.Memory* @routine_addl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40db3d)
  store %struct.Memory* %call_40db3d, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x54(%rbp)	 RIP: 40db40	 Bytes: 3
  %loadMem_40db40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40db40 = call %struct.Memory* @routine_movl__ecx__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40db40)
  store %struct.Memory* %call_40db40, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 40db43	 Bytes: 4
  %loadMem_40db43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40db43 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40db43)
  store %struct.Memory* %call_40db43, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 40db47	 Bytes: 4
  %loadMem_40db47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40db47 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40db47)
  store %struct.Memory* %call_40db47, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 40db4b	 Bytes: 4
  %loadMem_40db4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40db4b = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40db4b)
  store %struct.Memory* %call_40db4b, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rdx	 RIP: 40db4f	 Bytes: 4
  %loadMem_40db4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40db4f = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40db4f)
  store %struct.Memory* %call_40db4f, %struct.Memory** %MEMORY

  ; Code: cmpl (%rax,%rdx,4), %ecx	 RIP: 40db53	 Bytes: 3
  %loadMem_40db53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40db53 = call %struct.Memory* @routine_cmpl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40db53)
  store %struct.Memory* %call_40db53, %struct.Memory** %MEMORY

  ; Code: jle .L_40db72	 RIP: 40db56	 Bytes: 6
  %loadMem_40db56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40db56 = call %struct.Memory* @routine_jle_.L_40db72(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40db56, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_40db56, %struct.Memory** %MEMORY

  %loadBr_40db56 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40db56 = icmp eq i8 %loadBr_40db56, 1
  br i1 %cmpBr_40db56, label %block_.L_40db72, label %block_40db5c

block_40db5c:
  ; Code: movl -0x54(%rbp), %eax	 RIP: 40db5c	 Bytes: 3
  %loadMem_40db5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40db5c = call %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40db5c)
  store %struct.Memory* %call_40db5c, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 40db5f	 Bytes: 4
  %loadMem_40db5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40db5f = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40db5f)
  store %struct.Memory* %call_40db5f, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 40db63	 Bytes: 4
  %loadMem_40db63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40db63 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40db63)
  store %struct.Memory* %call_40db63, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40db67	 Bytes: 4
  %loadMem_40db67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40db67 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40db67)
  store %struct.Memory* %call_40db67, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rdx	 RIP: 40db6b	 Bytes: 4
  %loadMem_40db6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40db6b = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40db6b)
  store %struct.Memory* %call_40db6b, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 40db6f	 Bytes: 3
  %loadMem_40db6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40db6f = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40db6f)
  store %struct.Memory* %call_40db6f, %struct.Memory** %MEMORY

  ; Code: .L_40db72:	 RIP: 40db72	 Bytes: 0
  br label %block_.L_40db72
block_.L_40db72:

  ; Code: movq -0x18(%rbp), %rax	 RIP: 40db72	 Bytes: 4
  %loadMem_40db72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40db72 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40db72)
  store %struct.Memory* %call_40db72, %struct.Memory** %MEMORY

  ; Code: movq 0x1a8(%rax), %rax	 RIP: 40db76	 Bytes: 7
  %loadMem_40db76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40db76 = call %struct.Memory* @routine_movq_0x1a8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40db76)
  store %struct.Memory* %call_40db76, %struct.Memory** %MEMORY

  ; Code: movslq -0x58(%rbp), %rcx	 RIP: 40db7d	 Bytes: 4
  %loadMem_40db7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40db7d = call %struct.Memory* @routine_movslq_MINUS0x58__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40db7d)
  store %struct.Memory* %call_40db7d, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40db81	 Bytes: 4
  %loadMem_40db81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40db81 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40db81)
  store %struct.Memory* %call_40db81, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 40db85	 Bytes: 4
  %loadMem_40db85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40db85 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40db85)
  store %struct.Memory* %call_40db85, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 40db89	 Bytes: 3
  %loadMem_40db89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40db89 = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40db89)
  store %struct.Memory* %call_40db89, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 40db8c	 Bytes: 4
  %loadMem_40db8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40db8c = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40db8c)
  store %struct.Memory* %call_40db8c, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rcx	 RIP: 40db90	 Bytes: 4
  %loadMem_40db90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40db90 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40db90)
  store %struct.Memory* %call_40db90, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40db94	 Bytes: 4
  %loadMem_40db94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40db94 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40db94)
  store %struct.Memory* %call_40db94, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 40db98	 Bytes: 4
  %loadMem_40db98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40db98 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40db98)
  store %struct.Memory* %call_40db98, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rcx,4), %edx	 RIP: 40db9c	 Bytes: 3
  %loadMem_40db9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40db9c = call %struct.Memory* @routine_addl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40db9c)
  store %struct.Memory* %call_40db9c, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax,%rcx,4)	 RIP: 40db9f	 Bytes: 3
  %loadMem_40db9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40db9f = call %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40db9f)
  store %struct.Memory* %call_40db9f, %struct.Memory** %MEMORY

  ; Code: .L_40dba2:	 RIP: 40dba2	 Bytes: 0
  br label %block_.L_40dba2
block_.L_40dba2:

  ; Code: movq -0x38(%rbp), %rax	 RIP: 40dba2	 Bytes: 4
  %loadMem_40dba2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dba2 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dba2)
  store %struct.Memory* %call_40dba2, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %ecx	 RIP: 40dba6	 Bytes: 3
  %loadMem_40dba6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dba6 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dba6)
  store %struct.Memory* %call_40dba6, %struct.Memory** %MEMORY

  ; Code: subl $0x2, %ecx	 RIP: 40dba9	 Bytes: 3
  %loadMem_40dba9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dba9 = call %struct.Memory* @routine_subl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dba9)
  store %struct.Memory* %call_40dba9, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40dbac	 Bytes: 3
  %loadMem_40dbac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dbac = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dbac)
  store %struct.Memory* %call_40dbac, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 40dbaf	 Bytes: 4
  %loadMem_40dbaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dbaf = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dbaf)
  store %struct.Memory* %call_40dbaf, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %ecx	 RIP: 40dbb3	 Bytes: 3
  %loadMem_40dbb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dbb3 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dbb3)
  store %struct.Memory* %call_40dbb3, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 40dbb6	 Bytes: 3
  %loadMem_40dbb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dbb6 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dbb6)
  store %struct.Memory* %call_40dbb6, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40dbb9	 Bytes: 3
  %loadMem_40dbb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dbb9 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dbb9)
  store %struct.Memory* %call_40dbb9, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rdx,4), %ecx	 RIP: 40dbbc	 Bytes: 3
  %loadMem_40dbbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dbbc = call %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dbbc)
  store %struct.Memory* %call_40dbbc, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 40dbbf	 Bytes: 4
  %loadMem_40dbbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dbbf = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dbbf)
  store %struct.Memory* %call_40dbbf, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rax), %rax	 RIP: 40dbc3	 Bytes: 7
  %loadMem_40dbc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dbc3 = call %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dbc3)
  store %struct.Memory* %call_40dbc3, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40dbca	 Bytes: 3
  %loadMem_40dbca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dbca = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dbca)
  store %struct.Memory* %call_40dbca, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %esi	 RIP: 40dbcd	 Bytes: 3
  %loadMem_40dbcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dbcd = call %struct.Memory* @routine_movl_MINUS0x50__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dbcd)
  store %struct.Memory* %call_40dbcd, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 40dbd0	 Bytes: 3
  %loadMem_40dbd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dbd0 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dbd0)
  store %struct.Memory* %call_40dbd0, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdx	 RIP: 40dbd3	 Bytes: 3
  %loadMem_40dbd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dbd3 = call %struct.Memory* @routine_movslq__esi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dbd3)
  store %struct.Memory* %call_40dbd3, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rdx,4), %ecx	 RIP: 40dbd6	 Bytes: 3
  %loadMem_40dbd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dbd6 = call %struct.Memory* @routine_addl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dbd6)
  store %struct.Memory* %call_40dbd6, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 40dbd9	 Bytes: 4
  %loadMem_40dbd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dbd9 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dbd9)
  store %struct.Memory* %call_40dbd9, %struct.Memory** %MEMORY

  ; Code: addl 0x1b8(%rax), %ecx	 RIP: 40dbdd	 Bytes: 6
  %loadMem_40dbdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dbdd = call %struct.Memory* @routine_addl_0x1b8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dbdd)
  store %struct.Memory* %call_40dbdd, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x54(%rbp)	 RIP: 40dbe3	 Bytes: 3
  %loadMem_40dbe3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dbe3 = call %struct.Memory* @routine_movl__ecx__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dbe3)
  store %struct.Memory* %call_40dbe3, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 40dbe6	 Bytes: 4
  %loadMem_40dbe6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dbe6 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dbe6)
  store %struct.Memory* %call_40dbe6, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 40dbea	 Bytes: 4
  %loadMem_40dbea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dbea = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dbea)
  store %struct.Memory* %call_40dbea, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 40dbee	 Bytes: 4
  %loadMem_40dbee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dbee = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dbee)
  store %struct.Memory* %call_40dbee, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rdx	 RIP: 40dbf2	 Bytes: 4
  %loadMem_40dbf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dbf2 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dbf2)
  store %struct.Memory* %call_40dbf2, %struct.Memory** %MEMORY

  ; Code: cmpl (%rax,%rdx,4), %ecx	 RIP: 40dbf6	 Bytes: 3
  %loadMem_40dbf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dbf6 = call %struct.Memory* @routine_cmpl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dbf6)
  store %struct.Memory* %call_40dbf6, %struct.Memory** %MEMORY

  ; Code: jle .L_40dc15	 RIP: 40dbf9	 Bytes: 6
  %loadMem_40dbf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dbf9 = call %struct.Memory* @routine_jle_.L_40dc15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dbf9, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_40dbf9, %struct.Memory** %MEMORY

  %loadBr_40dbf9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40dbf9 = icmp eq i8 %loadBr_40dbf9, 1
  br i1 %cmpBr_40dbf9, label %block_.L_40dc15, label %block_40dbff

block_40dbff:
  ; Code: movl -0x54(%rbp), %eax	 RIP: 40dbff	 Bytes: 3
  %loadMem_40dbff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dbff = call %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dbff)
  store %struct.Memory* %call_40dbff, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 40dc02	 Bytes: 4
  %loadMem_40dc02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dc02 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dc02)
  store %struct.Memory* %call_40dc02, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 40dc06	 Bytes: 4
  %loadMem_40dc06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dc06 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dc06)
  store %struct.Memory* %call_40dc06, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40dc0a	 Bytes: 4
  %loadMem_40dc0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dc0a = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dc0a)
  store %struct.Memory* %call_40dc0a, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rdx	 RIP: 40dc0e	 Bytes: 4
  %loadMem_40dc0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dc0e = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dc0e)
  store %struct.Memory* %call_40dc0e, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 40dc12	 Bytes: 3
  %loadMem_40dc12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dc12 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dc12)
  store %struct.Memory* %call_40dc12, %struct.Memory** %MEMORY

  ; Code: .L_40dc15:	 RIP: 40dc15	 Bytes: 0
  br label %block_.L_40dc15
block_.L_40dc15:

  ; Code: movq -0x40(%rbp), %rax	 RIP: 40dc15	 Bytes: 4
  %loadMem_40dc15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dc15 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dc15)
  store %struct.Memory* %call_40dc15, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %ecx	 RIP: 40dc19	 Bytes: 3
  %loadMem_40dc19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dc19 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dc19)
  store %struct.Memory* %call_40dc19, %struct.Memory** %MEMORY

  ; Code: subl $0x2, %ecx	 RIP: 40dc1c	 Bytes: 3
  %loadMem_40dc1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dc1c = call %struct.Memory* @routine_subl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dc1c)
  store %struct.Memory* %call_40dc1c, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40dc1f	 Bytes: 3
  %loadMem_40dc1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dc1f = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dc1f)
  store %struct.Memory* %call_40dc1f, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 40dc22	 Bytes: 4
  %loadMem_40dc22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dc22 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dc22)
  store %struct.Memory* %call_40dc22, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %ecx	 RIP: 40dc26	 Bytes: 3
  %loadMem_40dc26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dc26 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dc26)
  store %struct.Memory* %call_40dc26, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 40dc29	 Bytes: 3
  %loadMem_40dc29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dc29 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dc29)
  store %struct.Memory* %call_40dc29, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40dc2c	 Bytes: 3
  %loadMem_40dc2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dc2c = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dc2c)
  store %struct.Memory* %call_40dc2c, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rdx,4), %ecx	 RIP: 40dc2f	 Bytes: 3
  %loadMem_40dc2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dc2f = call %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dc2f)
  store %struct.Memory* %call_40dc2f, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 40dc32	 Bytes: 4
  %loadMem_40dc32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dc32 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dc32)
  store %struct.Memory* %call_40dc32, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rax), %rax	 RIP: 40dc36	 Bytes: 7
  %loadMem_40dc36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dc36 = call %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dc36)
  store %struct.Memory* %call_40dc36, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax), %rax	 RIP: 40dc3d	 Bytes: 4
  %loadMem_40dc3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dc3d = call %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dc3d)
  store %struct.Memory* %call_40dc3d, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %esi	 RIP: 40dc41	 Bytes: 3
  %loadMem_40dc41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dc41 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dc41)
  store %struct.Memory* %call_40dc41, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 40dc44	 Bytes: 3
  %loadMem_40dc44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dc44 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dc44)
  store %struct.Memory* %call_40dc44, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdx	 RIP: 40dc47	 Bytes: 3
  %loadMem_40dc47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dc47 = call %struct.Memory* @routine_movslq__esi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dc47)
  store %struct.Memory* %call_40dc47, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rdx,4), %ecx	 RIP: 40dc4a	 Bytes: 3
  %loadMem_40dc4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dc4a = call %struct.Memory* @routine_addl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dc4a)
  store %struct.Memory* %call_40dc4a, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 40dc4d	 Bytes: 4
  %loadMem_40dc4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dc4d = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dc4d)
  store %struct.Memory* %call_40dc4d, %struct.Memory** %MEMORY

  ; Code: addl 0x1b8(%rax), %ecx	 RIP: 40dc51	 Bytes: 6
  %loadMem_40dc51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dc51 = call %struct.Memory* @routine_addl_0x1b8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dc51)
  store %struct.Memory* %call_40dc51, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x54(%rbp)	 RIP: 40dc57	 Bytes: 3
  %loadMem_40dc57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dc57 = call %struct.Memory* @routine_movl__ecx__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dc57)
  store %struct.Memory* %call_40dc57, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 40dc5a	 Bytes: 4
  %loadMem_40dc5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dc5a = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dc5a)
  store %struct.Memory* %call_40dc5a, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 40dc5e	 Bytes: 4
  %loadMem_40dc5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dc5e = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dc5e)
  store %struct.Memory* %call_40dc5e, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 40dc62	 Bytes: 4
  %loadMem_40dc62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dc62 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dc62)
  store %struct.Memory* %call_40dc62, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rdx	 RIP: 40dc66	 Bytes: 4
  %loadMem_40dc66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dc66 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dc66)
  store %struct.Memory* %call_40dc66, %struct.Memory** %MEMORY

  ; Code: cmpl (%rax,%rdx,4), %ecx	 RIP: 40dc6a	 Bytes: 3
  %loadMem_40dc6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dc6a = call %struct.Memory* @routine_cmpl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dc6a)
  store %struct.Memory* %call_40dc6a, %struct.Memory** %MEMORY

  ; Code: jle .L_40dc89	 RIP: 40dc6d	 Bytes: 6
  %loadMem_40dc6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dc6d = call %struct.Memory* @routine_jle_.L_40dc89(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dc6d, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_40dc6d, %struct.Memory** %MEMORY

  %loadBr_40dc6d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40dc6d = icmp eq i8 %loadBr_40dc6d, 1
  br i1 %cmpBr_40dc6d, label %block_.L_40dc89, label %block_40dc73

block_40dc73:
  ; Code: movl -0x54(%rbp), %eax	 RIP: 40dc73	 Bytes: 3
  %loadMem_40dc73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dc73 = call %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dc73)
  store %struct.Memory* %call_40dc73, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 40dc76	 Bytes: 4
  %loadMem_40dc76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dc76 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dc76)
  store %struct.Memory* %call_40dc76, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 40dc7a	 Bytes: 4
  %loadMem_40dc7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dc7a = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dc7a)
  store %struct.Memory* %call_40dc7a, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40dc7e	 Bytes: 4
  %loadMem_40dc7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dc7e = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dc7e)
  store %struct.Memory* %call_40dc7e, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rdx	 RIP: 40dc82	 Bytes: 4
  %loadMem_40dc82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dc82 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dc82)
  store %struct.Memory* %call_40dc82, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 40dc86	 Bytes: 3
  %loadMem_40dc86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dc86 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dc86)
  store %struct.Memory* %call_40dc86, %struct.Memory** %MEMORY

  ; Code: .L_40dc89:	 RIP: 40dc89	 Bytes: 0
  br label %block_.L_40dc89
block_.L_40dc89:

  ; Code: movq -0x30(%rbp), %rax	 RIP: 40dc89	 Bytes: 4
  %loadMem_40dc89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dc89 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dc89)
  store %struct.Memory* %call_40dc89, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %ecx	 RIP: 40dc8d	 Bytes: 3
  %loadMem_40dc8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dc8d = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dc8d)
  store %struct.Memory* %call_40dc8d, %struct.Memory** %MEMORY

  ; Code: subl $0x2, %ecx	 RIP: 40dc90	 Bytes: 3
  %loadMem_40dc90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dc90 = call %struct.Memory* @routine_subl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dc90)
  store %struct.Memory* %call_40dc90, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40dc93	 Bytes: 3
  %loadMem_40dc93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dc93 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dc93)
  store %struct.Memory* %call_40dc93, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 40dc96	 Bytes: 4
  %loadMem_40dc96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dc96 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dc96)
  store %struct.Memory* %call_40dc96, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %ecx	 RIP: 40dc9a	 Bytes: 2
  %loadMem_40dc9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dc9a = call %struct.Memory* @routine_movl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dc9a)
  store %struct.Memory* %call_40dc9a, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 40dc9c	 Bytes: 4
  %loadMem_40dc9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dc9c = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dc9c)
  store %struct.Memory* %call_40dc9c, %struct.Memory** %MEMORY

  ; Code: movq 0x170(%rax), %rax	 RIP: 40dca0	 Bytes: 7
  %loadMem_40dca0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dca0 = call %struct.Memory* @routine_movq_0x170__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dca0)
  store %struct.Memory* %call_40dca0, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rdx	 RIP: 40dca7	 Bytes: 4
  %loadMem_40dca7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dca7 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dca7)
  store %struct.Memory* %call_40dca7, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rdx,4), %ecx	 RIP: 40dcab	 Bytes: 3
  %loadMem_40dcab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dcab = call %struct.Memory* @routine_addl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dcab)
  store %struct.Memory* %call_40dcab, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 40dcae	 Bytes: 4
  %loadMem_40dcae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dcae = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dcae)
  store %struct.Memory* %call_40dcae, %struct.Memory** %MEMORY

  ; Code: addl 0x1b8(%rax), %ecx	 RIP: 40dcb2	 Bytes: 6
  %loadMem_40dcb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dcb2 = call %struct.Memory* @routine_addl_0x1b8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dcb2)
  store %struct.Memory* %call_40dcb2, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x54(%rbp)	 RIP: 40dcb8	 Bytes: 3
  %loadMem_40dcb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dcb8 = call %struct.Memory* @routine_movl__ecx__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dcb8)
  store %struct.Memory* %call_40dcb8, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 40dcbb	 Bytes: 4
  %loadMem_40dcbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dcbb = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dcbb)
  store %struct.Memory* %call_40dcbb, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 40dcbf	 Bytes: 4
  %loadMem_40dcbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dcbf = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dcbf)
  store %struct.Memory* %call_40dcbf, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 40dcc3	 Bytes: 4
  %loadMem_40dcc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dcc3 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dcc3)
  store %struct.Memory* %call_40dcc3, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rdx	 RIP: 40dcc7	 Bytes: 4
  %loadMem_40dcc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dcc7 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dcc7)
  store %struct.Memory* %call_40dcc7, %struct.Memory** %MEMORY

  ; Code: cmpl (%rax,%rdx,4), %ecx	 RIP: 40dccb	 Bytes: 3
  %loadMem_40dccb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dccb = call %struct.Memory* @routine_cmpl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dccb)
  store %struct.Memory* %call_40dccb, %struct.Memory** %MEMORY

  ; Code: jle .L_40dcea	 RIP: 40dcce	 Bytes: 6
  %loadMem_40dcce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dcce = call %struct.Memory* @routine_jle_.L_40dcea(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dcce, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_40dcce, %struct.Memory** %MEMORY

  %loadBr_40dcce = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40dcce = icmp eq i8 %loadBr_40dcce, 1
  br i1 %cmpBr_40dcce, label %block_.L_40dcea, label %block_40dcd4

block_40dcd4:
  ; Code: movl -0x54(%rbp), %eax	 RIP: 40dcd4	 Bytes: 3
  %loadMem_40dcd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dcd4 = call %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dcd4)
  store %struct.Memory* %call_40dcd4, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 40dcd7	 Bytes: 4
  %loadMem_40dcd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dcd7 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dcd7)
  store %struct.Memory* %call_40dcd7, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 40dcdb	 Bytes: 4
  %loadMem_40dcdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dcdb = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dcdb)
  store %struct.Memory* %call_40dcdb, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40dcdf	 Bytes: 4
  %loadMem_40dcdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dcdf = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dcdf)
  store %struct.Memory* %call_40dcdf, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rdx	 RIP: 40dce3	 Bytes: 4
  %loadMem_40dce3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dce3 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dce3)
  store %struct.Memory* %call_40dce3, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 40dce7	 Bytes: 3
  %loadMem_40dce7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dce7 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dce7)
  store %struct.Memory* %call_40dce7, %struct.Memory** %MEMORY

  ; Code: .L_40dcea:	 RIP: 40dcea	 Bytes: 0
  br label %block_.L_40dcea
block_.L_40dcea:

  ; Code: movq -0x48(%rbp), %rax	 RIP: 40dcea	 Bytes: 4
  %loadMem_40dcea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dcea = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dcea)
  store %struct.Memory* %call_40dcea, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %ecx	 RIP: 40dcee	 Bytes: 3
  %loadMem_40dcee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dcee = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dcee)
  store %struct.Memory* %call_40dcee, %struct.Memory** %MEMORY

  ; Code: subl $0x2, %ecx	 RIP: 40dcf1	 Bytes: 3
  %loadMem_40dcf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dcf1 = call %struct.Memory* @routine_subl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dcf1)
  store %struct.Memory* %call_40dcf1, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40dcf4	 Bytes: 3
  %loadMem_40dcf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dcf4 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dcf4)
  store %struct.Memory* %call_40dcf4, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 40dcf7	 Bytes: 4
  %loadMem_40dcf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dcf7 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dcf7)
  store %struct.Memory* %call_40dcf7, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %ecx	 RIP: 40dcfb	 Bytes: 3
  %loadMem_40dcfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dcfb = call %struct.Memory* @routine_movl_MINUS0x50__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dcfb)
  store %struct.Memory* %call_40dcfb, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 40dcfe	 Bytes: 3
  %loadMem_40dcfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dcfe = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dcfe)
  store %struct.Memory* %call_40dcfe, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40dd01	 Bytes: 3
  %loadMem_40dd01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dd01 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dd01)
  store %struct.Memory* %call_40dd01, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rdx,4), %ecx	 RIP: 40dd04	 Bytes: 3
  %loadMem_40dd04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dd04 = call %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dd04)
  store %struct.Memory* %call_40dd04, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 40dd07	 Bytes: 4
  %loadMem_40dd07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dd07 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dd07)
  store %struct.Memory* %call_40dd07, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rax), %rax	 RIP: 40dd0b	 Bytes: 7
  %loadMem_40dd0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dd0b = call %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dd0b)
  store %struct.Memory* %call_40dd0b, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 40dd12	 Bytes: 4
  %loadMem_40dd12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dd12 = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dd12)
  store %struct.Memory* %call_40dd12, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %esi	 RIP: 40dd16	 Bytes: 3
  %loadMem_40dd16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dd16 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dd16)
  store %struct.Memory* %call_40dd16, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 40dd19	 Bytes: 3
  %loadMem_40dd19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dd19 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dd19)
  store %struct.Memory* %call_40dd19, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdx	 RIP: 40dd1c	 Bytes: 3
  %loadMem_40dd1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dd1c = call %struct.Memory* @routine_movslq__esi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dd1c)
  store %struct.Memory* %call_40dd1c, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rdx,4), %ecx	 RIP: 40dd1f	 Bytes: 3
  %loadMem_40dd1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dd1f = call %struct.Memory* @routine_addl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dd1f)
  store %struct.Memory* %call_40dd1f, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 40dd22	 Bytes: 4
  %loadMem_40dd22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dd22 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dd22)
  store %struct.Memory* %call_40dd22, %struct.Memory** %MEMORY

  ; Code: addl 0x1b8(%rax), %ecx	 RIP: 40dd26	 Bytes: 6
  %loadMem_40dd26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dd26 = call %struct.Memory* @routine_addl_0x1b8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dd26)
  store %struct.Memory* %call_40dd26, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x54(%rbp)	 RIP: 40dd2c	 Bytes: 3
  %loadMem_40dd2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dd2c = call %struct.Memory* @routine_movl__ecx__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dd2c)
  store %struct.Memory* %call_40dd2c, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 40dd2f	 Bytes: 4
  %loadMem_40dd2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dd2f = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dd2f)
  store %struct.Memory* %call_40dd2f, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 40dd33	 Bytes: 4
  %loadMem_40dd33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dd33 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dd33)
  store %struct.Memory* %call_40dd33, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 40dd37	 Bytes: 4
  %loadMem_40dd37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dd37 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dd37)
  store %struct.Memory* %call_40dd37, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rdx	 RIP: 40dd3b	 Bytes: 4
  %loadMem_40dd3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dd3b = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dd3b)
  store %struct.Memory* %call_40dd3b, %struct.Memory** %MEMORY

  ; Code: cmpl (%rax,%rdx,4), %ecx	 RIP: 40dd3f	 Bytes: 3
  %loadMem_40dd3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dd3f = call %struct.Memory* @routine_cmpl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dd3f)
  store %struct.Memory* %call_40dd3f, %struct.Memory** %MEMORY

  ; Code: jle .L_40dd5e	 RIP: 40dd42	 Bytes: 6
  %loadMem_40dd42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dd42 = call %struct.Memory* @routine_jle_.L_40dd5e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dd42, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_40dd42, %struct.Memory** %MEMORY

  %loadBr_40dd42 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40dd42 = icmp eq i8 %loadBr_40dd42, 1
  br i1 %cmpBr_40dd42, label %block_.L_40dd5e, label %block_40dd48

block_40dd48:
  ; Code: movl -0x54(%rbp), %eax	 RIP: 40dd48	 Bytes: 3
  %loadMem_40dd48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dd48 = call %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dd48)
  store %struct.Memory* %call_40dd48, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 40dd4b	 Bytes: 4
  %loadMem_40dd4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dd4b = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dd4b)
  store %struct.Memory* %call_40dd4b, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 40dd4f	 Bytes: 4
  %loadMem_40dd4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dd4f = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dd4f)
  store %struct.Memory* %call_40dd4f, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40dd53	 Bytes: 4
  %loadMem_40dd53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dd53 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dd53)
  store %struct.Memory* %call_40dd53, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rdx	 RIP: 40dd57	 Bytes: 4
  %loadMem_40dd57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dd57 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dd57)
  store %struct.Memory* %call_40dd57, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 40dd5b	 Bytes: 3
  %loadMem_40dd5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dd5b = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dd5b)
  store %struct.Memory* %call_40dd5b, %struct.Memory** %MEMORY

  ; Code: .L_40dd5e:	 RIP: 40dd5e	 Bytes: 0
  br label %block_.L_40dd5e
block_.L_40dd5e:

  ; Code: cmpl $0x3, -0x4c(%rbp)	 RIP: 40dd5e	 Bytes: 4
  %loadMem_40dd5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dd5e = call %struct.Memory* @routine_cmpl__0x3__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dd5e)
  store %struct.Memory* %call_40dd5e, %struct.Memory** %MEMORY

  ; Code: jle .L_40df29	 RIP: 40dd62	 Bytes: 6
  %loadMem_40dd62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dd62 = call %struct.Memory* @routine_jle_.L_40df29(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dd62, i8* %BRANCH_TAKEN, i64 455, i64 6, i64 6)
  store %struct.Memory* %call_40dd62, %struct.Memory** %MEMORY

  %loadBr_40dd62 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40dd62 = icmp eq i8 %loadBr_40dd62, 1
  br i1 %cmpBr_40dd62, label %block_.L_40df29, label %block_40dd68

block_40dd68:
  ; Code: movq -0x38(%rbp), %rax	 RIP: 40dd68	 Bytes: 4
  %loadMem_40dd68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dd68 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dd68)
  store %struct.Memory* %call_40dd68, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %ecx	 RIP: 40dd6c	 Bytes: 3
  %loadMem_40dd6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dd6c = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dd6c)
  store %struct.Memory* %call_40dd6c, %struct.Memory** %MEMORY

  ; Code: subl $0x4, %ecx	 RIP: 40dd6f	 Bytes: 3
  %loadMem_40dd6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dd6f = call %struct.Memory* @routine_subl__0x4___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dd6f)
  store %struct.Memory* %call_40dd6f, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40dd72	 Bytes: 3
  %loadMem_40dd72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dd72 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dd72)
  store %struct.Memory* %call_40dd72, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 40dd75	 Bytes: 4
  %loadMem_40dd75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dd75 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dd75)
  store %struct.Memory* %call_40dd75, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %ecx	 RIP: 40dd79	 Bytes: 3
  %loadMem_40dd79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dd79 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dd79)
  store %struct.Memory* %call_40dd79, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 40dd7c	 Bytes: 3
  %loadMem_40dd7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dd7c = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dd7c)
  store %struct.Memory* %call_40dd7c, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40dd7f	 Bytes: 3
  %loadMem_40dd7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dd7f = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dd7f)
  store %struct.Memory* %call_40dd7f, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rdx,4), %ecx	 RIP: 40dd82	 Bytes: 3
  %loadMem_40dd82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dd82 = call %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dd82)
  store %struct.Memory* %call_40dd82, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 40dd85	 Bytes: 4
  %loadMem_40dd85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dd85 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dd85)
  store %struct.Memory* %call_40dd85, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rax), %rax	 RIP: 40dd89	 Bytes: 7
  %loadMem_40dd89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dd89 = call %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dd89)
  store %struct.Memory* %call_40dd89, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40dd90	 Bytes: 3
  %loadMem_40dd90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dd90 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dd90)
  store %struct.Memory* %call_40dd90, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %esi	 RIP: 40dd93	 Bytes: 3
  %loadMem_40dd93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dd93 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dd93)
  store %struct.Memory* %call_40dd93, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 40dd96	 Bytes: 3
  %loadMem_40dd96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dd96 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dd96)
  store %struct.Memory* %call_40dd96, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdx	 RIP: 40dd99	 Bytes: 3
  %loadMem_40dd99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dd99 = call %struct.Memory* @routine_movslq__esi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dd99)
  store %struct.Memory* %call_40dd99, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rdx,4), %ecx	 RIP: 40dd9c	 Bytes: 3
  %loadMem_40dd9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dd9c = call %struct.Memory* @routine_addl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dd9c)
  store %struct.Memory* %call_40dd9c, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 40dd9f	 Bytes: 4
  %loadMem_40dd9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dd9f = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dd9f)
  store %struct.Memory* %call_40dd9f, %struct.Memory** %MEMORY

  ; Code: addl 0x1bc(%rax), %ecx	 RIP: 40dda3	 Bytes: 6
  %loadMem_40dda3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dda3 = call %struct.Memory* @routine_addl_0x1bc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dda3)
  store %struct.Memory* %call_40dda3, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x54(%rbp)	 RIP: 40dda9	 Bytes: 3
  %loadMem_40dda9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dda9 = call %struct.Memory* @routine_movl__ecx__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dda9)
  store %struct.Memory* %call_40dda9, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 40ddac	 Bytes: 4
  %loadMem_40ddac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ddac = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ddac)
  store %struct.Memory* %call_40ddac, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 40ddb0	 Bytes: 4
  %loadMem_40ddb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ddb0 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ddb0)
  store %struct.Memory* %call_40ddb0, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 40ddb4	 Bytes: 4
  %loadMem_40ddb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ddb4 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ddb4)
  store %struct.Memory* %call_40ddb4, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rdx	 RIP: 40ddb8	 Bytes: 4
  %loadMem_40ddb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ddb8 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ddb8)
  store %struct.Memory* %call_40ddb8, %struct.Memory** %MEMORY

  ; Code: cmpl (%rax,%rdx,4), %ecx	 RIP: 40ddbc	 Bytes: 3
  %loadMem_40ddbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ddbc = call %struct.Memory* @routine_cmpl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ddbc)
  store %struct.Memory* %call_40ddbc, %struct.Memory** %MEMORY

  ; Code: jle .L_40dddb	 RIP: 40ddbf	 Bytes: 6
  %loadMem_40ddbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ddbf = call %struct.Memory* @routine_jle_.L_40dddb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ddbf, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_40ddbf, %struct.Memory** %MEMORY

  %loadBr_40ddbf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40ddbf = icmp eq i8 %loadBr_40ddbf, 1
  br i1 %cmpBr_40ddbf, label %block_.L_40dddb, label %block_40ddc5

block_40ddc5:
  ; Code: movl -0x54(%rbp), %eax	 RIP: 40ddc5	 Bytes: 3
  %loadMem_40ddc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ddc5 = call %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ddc5)
  store %struct.Memory* %call_40ddc5, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 40ddc8	 Bytes: 4
  %loadMem_40ddc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ddc8 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ddc8)
  store %struct.Memory* %call_40ddc8, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 40ddcc	 Bytes: 4
  %loadMem_40ddcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ddcc = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ddcc)
  store %struct.Memory* %call_40ddcc, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40ddd0	 Bytes: 4
  %loadMem_40ddd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ddd0 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ddd0)
  store %struct.Memory* %call_40ddd0, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rdx	 RIP: 40ddd4	 Bytes: 4
  %loadMem_40ddd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ddd4 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ddd4)
  store %struct.Memory* %call_40ddd4, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 40ddd8	 Bytes: 3
  %loadMem_40ddd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ddd8 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ddd8)
  store %struct.Memory* %call_40ddd8, %struct.Memory** %MEMORY

  ; Code: .L_40dddb:	 RIP: 40dddb	 Bytes: 0
  br label %block_.L_40dddb
block_.L_40dddb:

  ; Code: movq -0x40(%rbp), %rax	 RIP: 40dddb	 Bytes: 4
  %loadMem_40dddb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dddb = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dddb)
  store %struct.Memory* %call_40dddb, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %ecx	 RIP: 40dddf	 Bytes: 3
  %loadMem_40dddf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dddf = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dddf)
  store %struct.Memory* %call_40dddf, %struct.Memory** %MEMORY

  ; Code: subl $0x4, %ecx	 RIP: 40dde2	 Bytes: 3
  %loadMem_40dde2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dde2 = call %struct.Memory* @routine_subl__0x4___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dde2)
  store %struct.Memory* %call_40dde2, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40dde5	 Bytes: 3
  %loadMem_40dde5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dde5 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dde5)
  store %struct.Memory* %call_40dde5, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 40dde8	 Bytes: 4
  %loadMem_40dde8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dde8 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dde8)
  store %struct.Memory* %call_40dde8, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %ecx	 RIP: 40ddec	 Bytes: 3
  %loadMem_40ddec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ddec = call %struct.Memory* @routine_movl_MINUS0x50__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ddec)
  store %struct.Memory* %call_40ddec, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 40ddef	 Bytes: 3
  %loadMem_40ddef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ddef = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ddef)
  store %struct.Memory* %call_40ddef, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40ddf2	 Bytes: 3
  %loadMem_40ddf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ddf2 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ddf2)
  store %struct.Memory* %call_40ddf2, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rdx,4), %ecx	 RIP: 40ddf5	 Bytes: 3
  %loadMem_40ddf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ddf5 = call %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ddf5)
  store %struct.Memory* %call_40ddf5, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 40ddf8	 Bytes: 4
  %loadMem_40ddf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ddf8 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ddf8)
  store %struct.Memory* %call_40ddf8, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rax), %rax	 RIP: 40ddfc	 Bytes: 7
  %loadMem_40ddfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ddfc = call %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ddfc)
  store %struct.Memory* %call_40ddfc, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax), %rax	 RIP: 40de03	 Bytes: 4
  %loadMem_40de03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40de03 = call %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40de03)
  store %struct.Memory* %call_40de03, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %esi	 RIP: 40de07	 Bytes: 3
  %loadMem_40de07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40de07 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40de07)
  store %struct.Memory* %call_40de07, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 40de0a	 Bytes: 3
  %loadMem_40de0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40de0a = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40de0a)
  store %struct.Memory* %call_40de0a, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdx	 RIP: 40de0d	 Bytes: 3
  %loadMem_40de0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40de0d = call %struct.Memory* @routine_movslq__esi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40de0d)
  store %struct.Memory* %call_40de0d, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rdx,4), %ecx	 RIP: 40de10	 Bytes: 3
  %loadMem_40de10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40de10 = call %struct.Memory* @routine_addl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40de10)
  store %struct.Memory* %call_40de10, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 40de13	 Bytes: 4
  %loadMem_40de13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40de13 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40de13)
  store %struct.Memory* %call_40de13, %struct.Memory** %MEMORY

  ; Code: addl 0x1bc(%rax), %ecx	 RIP: 40de17	 Bytes: 6
  %loadMem_40de17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40de17 = call %struct.Memory* @routine_addl_0x1bc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40de17)
  store %struct.Memory* %call_40de17, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x54(%rbp)	 RIP: 40de1d	 Bytes: 3
  %loadMem_40de1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40de1d = call %struct.Memory* @routine_movl__ecx__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40de1d)
  store %struct.Memory* %call_40de1d, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 40de20	 Bytes: 4
  %loadMem_40de20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40de20 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40de20)
  store %struct.Memory* %call_40de20, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 40de24	 Bytes: 4
  %loadMem_40de24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40de24 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40de24)
  store %struct.Memory* %call_40de24, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 40de28	 Bytes: 4
  %loadMem_40de28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40de28 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40de28)
  store %struct.Memory* %call_40de28, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rdx	 RIP: 40de2c	 Bytes: 4
  %loadMem_40de2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40de2c = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40de2c)
  store %struct.Memory* %call_40de2c, %struct.Memory** %MEMORY

  ; Code: cmpl (%rax,%rdx,4), %ecx	 RIP: 40de30	 Bytes: 3
  %loadMem_40de30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40de30 = call %struct.Memory* @routine_cmpl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40de30)
  store %struct.Memory* %call_40de30, %struct.Memory** %MEMORY

  ; Code: jle .L_40de4f	 RIP: 40de33	 Bytes: 6
  %loadMem_40de33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40de33 = call %struct.Memory* @routine_jle_.L_40de4f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40de33, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_40de33, %struct.Memory** %MEMORY

  %loadBr_40de33 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40de33 = icmp eq i8 %loadBr_40de33, 1
  br i1 %cmpBr_40de33, label %block_.L_40de4f, label %block_40de39

block_40de39:
  ; Code: movl -0x54(%rbp), %eax	 RIP: 40de39	 Bytes: 3
  %loadMem_40de39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40de39 = call %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40de39)
  store %struct.Memory* %call_40de39, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 40de3c	 Bytes: 4
  %loadMem_40de3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40de3c = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40de3c)
  store %struct.Memory* %call_40de3c, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 40de40	 Bytes: 4
  %loadMem_40de40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40de40 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40de40)
  store %struct.Memory* %call_40de40, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40de44	 Bytes: 4
  %loadMem_40de44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40de44 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40de44)
  store %struct.Memory* %call_40de44, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rdx	 RIP: 40de48	 Bytes: 4
  %loadMem_40de48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40de48 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40de48)
  store %struct.Memory* %call_40de48, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 40de4c	 Bytes: 3
  %loadMem_40de4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40de4c = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40de4c)
  store %struct.Memory* %call_40de4c, %struct.Memory** %MEMORY

  ; Code: .L_40de4f:	 RIP: 40de4f	 Bytes: 0
  br label %block_.L_40de4f
block_.L_40de4f:

  ; Code: movq -0x30(%rbp), %rax	 RIP: 40de4f	 Bytes: 4
  %loadMem_40de4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40de4f = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40de4f)
  store %struct.Memory* %call_40de4f, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %ecx	 RIP: 40de53	 Bytes: 3
  %loadMem_40de53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40de53 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40de53)
  store %struct.Memory* %call_40de53, %struct.Memory** %MEMORY

  ; Code: subl $0x4, %ecx	 RIP: 40de56	 Bytes: 3
  %loadMem_40de56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40de56 = call %struct.Memory* @routine_subl__0x4___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40de56)
  store %struct.Memory* %call_40de56, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40de59	 Bytes: 3
  %loadMem_40de59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40de59 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40de59)
  store %struct.Memory* %call_40de59, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 40de5c	 Bytes: 4
  %loadMem_40de5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40de5c = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40de5c)
  store %struct.Memory* %call_40de5c, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %ecx	 RIP: 40de60	 Bytes: 2
  %loadMem_40de60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40de60 = call %struct.Memory* @routine_movl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40de60)
  store %struct.Memory* %call_40de60, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 40de62	 Bytes: 4
  %loadMem_40de62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40de62 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40de62)
  store %struct.Memory* %call_40de62, %struct.Memory** %MEMORY

  ; Code: movq 0x170(%rax), %rax	 RIP: 40de66	 Bytes: 7
  %loadMem_40de66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40de66 = call %struct.Memory* @routine_movq_0x170__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40de66)
  store %struct.Memory* %call_40de66, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rdx	 RIP: 40de6d	 Bytes: 4
  %loadMem_40de6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40de6d = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40de6d)
  store %struct.Memory* %call_40de6d, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rdx,4), %ecx	 RIP: 40de71	 Bytes: 3
  %loadMem_40de71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40de71 = call %struct.Memory* @routine_addl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40de71)
  store %struct.Memory* %call_40de71, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 40de74	 Bytes: 4
  %loadMem_40de74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40de74 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40de74)
  store %struct.Memory* %call_40de74, %struct.Memory** %MEMORY

  ; Code: addl 0x1bc(%rax), %ecx	 RIP: 40de78	 Bytes: 6
  %loadMem_40de78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40de78 = call %struct.Memory* @routine_addl_0x1bc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40de78)
  store %struct.Memory* %call_40de78, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x54(%rbp)	 RIP: 40de7e	 Bytes: 3
  %loadMem_40de7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40de7e = call %struct.Memory* @routine_movl__ecx__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40de7e)
  store %struct.Memory* %call_40de7e, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 40de81	 Bytes: 4
  %loadMem_40de81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40de81 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40de81)
  store %struct.Memory* %call_40de81, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 40de85	 Bytes: 4
  %loadMem_40de85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40de85 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40de85)
  store %struct.Memory* %call_40de85, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 40de89	 Bytes: 4
  %loadMem_40de89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40de89 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40de89)
  store %struct.Memory* %call_40de89, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rdx	 RIP: 40de8d	 Bytes: 4
  %loadMem_40de8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40de8d = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40de8d)
  store %struct.Memory* %call_40de8d, %struct.Memory** %MEMORY

  ; Code: cmpl (%rax,%rdx,4), %ecx	 RIP: 40de91	 Bytes: 3
  %loadMem_40de91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40de91 = call %struct.Memory* @routine_cmpl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40de91)
  store %struct.Memory* %call_40de91, %struct.Memory** %MEMORY

  ; Code: jle .L_40deb0	 RIP: 40de94	 Bytes: 6
  %loadMem_40de94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40de94 = call %struct.Memory* @routine_jle_.L_40deb0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40de94, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_40de94, %struct.Memory** %MEMORY

  %loadBr_40de94 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40de94 = icmp eq i8 %loadBr_40de94, 1
  br i1 %cmpBr_40de94, label %block_.L_40deb0, label %block_40de9a

block_40de9a:
  ; Code: movl -0x54(%rbp), %eax	 RIP: 40de9a	 Bytes: 3
  %loadMem_40de9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40de9a = call %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40de9a)
  store %struct.Memory* %call_40de9a, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 40de9d	 Bytes: 4
  %loadMem_40de9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40de9d = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40de9d)
  store %struct.Memory* %call_40de9d, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 40dea1	 Bytes: 4
  %loadMem_40dea1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dea1 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dea1)
  store %struct.Memory* %call_40dea1, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40dea5	 Bytes: 4
  %loadMem_40dea5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dea5 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dea5)
  store %struct.Memory* %call_40dea5, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rdx	 RIP: 40dea9	 Bytes: 4
  %loadMem_40dea9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dea9 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dea9)
  store %struct.Memory* %call_40dea9, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 40dead	 Bytes: 3
  %loadMem_40dead = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dead = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dead)
  store %struct.Memory* %call_40dead, %struct.Memory** %MEMORY

  ; Code: .L_40deb0:	 RIP: 40deb0	 Bytes: 0
  br label %block_.L_40deb0
block_.L_40deb0:

  ; Code: movq -0x48(%rbp), %rax	 RIP: 40deb0	 Bytes: 4
  %loadMem_40deb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40deb0 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40deb0)
  store %struct.Memory* %call_40deb0, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %ecx	 RIP: 40deb4	 Bytes: 3
  %loadMem_40deb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40deb4 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40deb4)
  store %struct.Memory* %call_40deb4, %struct.Memory** %MEMORY

  ; Code: subl $0x4, %ecx	 RIP: 40deb7	 Bytes: 3
  %loadMem_40deb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40deb7 = call %struct.Memory* @routine_subl__0x4___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40deb7)
  store %struct.Memory* %call_40deb7, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40deba	 Bytes: 3
  %loadMem_40deba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40deba = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40deba)
  store %struct.Memory* %call_40deba, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 40debd	 Bytes: 4
  %loadMem_40debd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40debd = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40debd)
  store %struct.Memory* %call_40debd, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %ecx	 RIP: 40dec1	 Bytes: 3
  %loadMem_40dec1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dec1 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dec1)
  store %struct.Memory* %call_40dec1, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 40dec4	 Bytes: 3
  %loadMem_40dec4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dec4 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dec4)
  store %struct.Memory* %call_40dec4, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40dec7	 Bytes: 3
  %loadMem_40dec7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dec7 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dec7)
  store %struct.Memory* %call_40dec7, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rdx,4), %ecx	 RIP: 40deca	 Bytes: 3
  %loadMem_40deca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40deca = call %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40deca)
  store %struct.Memory* %call_40deca, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 40decd	 Bytes: 4
  %loadMem_40decd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40decd = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40decd)
  store %struct.Memory* %call_40decd, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rax), %rax	 RIP: 40ded1	 Bytes: 7
  %loadMem_40ded1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ded1 = call %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ded1)
  store %struct.Memory* %call_40ded1, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 40ded8	 Bytes: 4
  %loadMem_40ded8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ded8 = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ded8)
  store %struct.Memory* %call_40ded8, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %esi	 RIP: 40dedc	 Bytes: 3
  %loadMem_40dedc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dedc = call %struct.Memory* @routine_movl_MINUS0x50__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dedc)
  store %struct.Memory* %call_40dedc, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 40dedf	 Bytes: 3
  %loadMem_40dedf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dedf = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dedf)
  store %struct.Memory* %call_40dedf, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdx	 RIP: 40dee2	 Bytes: 3
  %loadMem_40dee2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dee2 = call %struct.Memory* @routine_movslq__esi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dee2)
  store %struct.Memory* %call_40dee2, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rdx,4), %ecx	 RIP: 40dee5	 Bytes: 3
  %loadMem_40dee5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dee5 = call %struct.Memory* @routine_addl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dee5)
  store %struct.Memory* %call_40dee5, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 40dee8	 Bytes: 4
  %loadMem_40dee8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dee8 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dee8)
  store %struct.Memory* %call_40dee8, %struct.Memory** %MEMORY

  ; Code: addl 0x1bc(%rax), %ecx	 RIP: 40deec	 Bytes: 6
  %loadMem_40deec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40deec = call %struct.Memory* @routine_addl_0x1bc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40deec)
  store %struct.Memory* %call_40deec, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x54(%rbp)	 RIP: 40def2	 Bytes: 3
  %loadMem_40def2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40def2 = call %struct.Memory* @routine_movl__ecx__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40def2)
  store %struct.Memory* %call_40def2, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 40def5	 Bytes: 4
  %loadMem_40def5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40def5 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40def5)
  store %struct.Memory* %call_40def5, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 40def9	 Bytes: 4
  %loadMem_40def9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40def9 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40def9)
  store %struct.Memory* %call_40def9, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 40defd	 Bytes: 4
  %loadMem_40defd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40defd = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40defd)
  store %struct.Memory* %call_40defd, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rdx	 RIP: 40df01	 Bytes: 4
  %loadMem_40df01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40df01 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40df01)
  store %struct.Memory* %call_40df01, %struct.Memory** %MEMORY

  ; Code: cmpl (%rax,%rdx,4), %ecx	 RIP: 40df05	 Bytes: 3
  %loadMem_40df05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40df05 = call %struct.Memory* @routine_cmpl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40df05)
  store %struct.Memory* %call_40df05, %struct.Memory** %MEMORY

  ; Code: jle .L_40df24	 RIP: 40df08	 Bytes: 6
  %loadMem_40df08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40df08 = call %struct.Memory* @routine_jle_.L_40df24(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40df08, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_40df08, %struct.Memory** %MEMORY

  %loadBr_40df08 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40df08 = icmp eq i8 %loadBr_40df08, 1
  br i1 %cmpBr_40df08, label %block_.L_40df24, label %block_40df0e

block_40df0e:
  ; Code: movl -0x54(%rbp), %eax	 RIP: 40df0e	 Bytes: 3
  %loadMem_40df0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40df0e = call %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40df0e)
  store %struct.Memory* %call_40df0e, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 40df11	 Bytes: 4
  %loadMem_40df11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40df11 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40df11)
  store %struct.Memory* %call_40df11, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 40df15	 Bytes: 4
  %loadMem_40df15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40df15 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40df15)
  store %struct.Memory* %call_40df15, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40df19	 Bytes: 4
  %loadMem_40df19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40df19 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40df19)
  store %struct.Memory* %call_40df19, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rdx	 RIP: 40df1d	 Bytes: 4
  %loadMem_40df1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40df1d = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40df1d)
  store %struct.Memory* %call_40df1d, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 40df21	 Bytes: 3
  %loadMem_40df21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40df21 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40df21)
  store %struct.Memory* %call_40df21, %struct.Memory** %MEMORY

  ; Code: .L_40df24:	 RIP: 40df24	 Bytes: 0
  br label %block_.L_40df24
block_.L_40df24:

  ; Code: jmpq .L_40df29	 RIP: 40df24	 Bytes: 5
  %loadMem_40df24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40df24 = call %struct.Memory* @routine_jmpq_.L_40df29(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40df24, i64 5, i64 5)
  store %struct.Memory* %call_40df24, %struct.Memory** %MEMORY

  br label %block_.L_40df29

  ; Code: .L_40df29:	 RIP: 40df29	 Bytes: 0
block_.L_40df29:

  ; Code: movq -0x38(%rbp), %rax	 RIP: 40df29	 Bytes: 4
  %loadMem_40df29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40df29 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40df29)
  store %struct.Memory* %call_40df29, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rcx	 RIP: 40df2d	 Bytes: 4
  %loadMem_40df2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40df2d = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40df2d)
  store %struct.Memory* %call_40df2d, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40df31	 Bytes: 4
  %loadMem_40df31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40df31 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40df31)
  store %struct.Memory* %call_40df31, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %edx	 RIP: 40df35	 Bytes: 3
  %loadMem_40df35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40df35 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40df35)
  store %struct.Memory* %call_40df35, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 40df38	 Bytes: 3
  %loadMem_40df38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40df38 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40df38)
  store %struct.Memory* %call_40df38, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40df3b	 Bytes: 3
  %loadMem_40df3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40df3b = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40df3b)
  store %struct.Memory* %call_40df3b, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 40df3e	 Bytes: 3
  %loadMem_40df3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40df3e = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40df3e)
  store %struct.Memory* %call_40df3e, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 40df41	 Bytes: 4
  %loadMem_40df41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40df41 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40df41)
  store %struct.Memory* %call_40df41, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rax), %rax	 RIP: 40df45	 Bytes: 7
  %loadMem_40df45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40df45 = call %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40df45)
  store %struct.Memory* %call_40df45, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 40df4c	 Bytes: 4
  %loadMem_40df4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40df4c = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40df4c)
  store %struct.Memory* %call_40df4c, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %esi	 RIP: 40df50	 Bytes: 3
  %loadMem_40df50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40df50 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40df50)
  store %struct.Memory* %call_40df50, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 40df53	 Bytes: 3
  %loadMem_40df53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40df53 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40df53)
  store %struct.Memory* %call_40df53, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 40df56	 Bytes: 3
  %loadMem_40df56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40df56 = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40df56)
  store %struct.Memory* %call_40df56, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rcx,4), %edx	 RIP: 40df59	 Bytes: 3
  %loadMem_40df59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40df59 = call %struct.Memory* @routine_addl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40df59)
  store %struct.Memory* %call_40df59, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 40df5c	 Bytes: 4
  %loadMem_40df5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40df5c = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40df5c)
  store %struct.Memory* %call_40df5c, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rcx	 RIP: 40df60	 Bytes: 4
  %loadMem_40df60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40df60 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40df60)
  store %struct.Memory* %call_40df60, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40df64	 Bytes: 4
  %loadMem_40df64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40df64 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40df64)
  store %struct.Memory* %call_40df64, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 40df68	 Bytes: 4
  %loadMem_40df68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40df68 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40df68)
  store %struct.Memory* %call_40df68, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax,%rcx,4)	 RIP: 40df6c	 Bytes: 3
  %loadMem_40df6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40df6c = call %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40df6c)
  store %struct.Memory* %call_40df6c, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 40df6f	 Bytes: 4
  %loadMem_40df6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40df6f = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40df6f)
  store %struct.Memory* %call_40df6f, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rcx	 RIP: 40df73	 Bytes: 4
  %loadMem_40df73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40df73 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40df73)
  store %struct.Memory* %call_40df73, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40df77	 Bytes: 4
  %loadMem_40df77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40df77 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40df77)
  store %struct.Memory* %call_40df77, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %edx	 RIP: 40df7b	 Bytes: 3
  %loadMem_40df7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40df7b = call %struct.Memory* @routine_movl_MINUS0x50__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40df7b)
  store %struct.Memory* %call_40df7b, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 40df7e	 Bytes: 3
  %loadMem_40df7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40df7e = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40df7e)
  store %struct.Memory* %call_40df7e, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40df81	 Bytes: 3
  %loadMem_40df81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40df81 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40df81)
  store %struct.Memory* %call_40df81, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 40df84	 Bytes: 3
  %loadMem_40df84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40df84 = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40df84)
  store %struct.Memory* %call_40df84, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 40df87	 Bytes: 4
  %loadMem_40df87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40df87 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40df87)
  store %struct.Memory* %call_40df87, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rax), %rax	 RIP: 40df8b	 Bytes: 7
  %loadMem_40df8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40df8b = call %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40df8b)
  store %struct.Memory* %call_40df8b, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rax), %rax	 RIP: 40df92	 Bytes: 4
  %loadMem_40df92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40df92 = call %struct.Memory* @routine_movq_0x30__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40df92)
  store %struct.Memory* %call_40df92, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %esi	 RIP: 40df96	 Bytes: 3
  %loadMem_40df96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40df96 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40df96)
  store %struct.Memory* %call_40df96, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 40df99	 Bytes: 3
  %loadMem_40df99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40df99 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40df99)
  store %struct.Memory* %call_40df99, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 40df9c	 Bytes: 3
  %loadMem_40df9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40df9c = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40df9c)
  store %struct.Memory* %call_40df9c, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rcx,4), %edx	 RIP: 40df9f	 Bytes: 3
  %loadMem_40df9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40df9f = call %struct.Memory* @routine_addl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40df9f)
  store %struct.Memory* %call_40df9f, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x54(%rbp)	 RIP: 40dfa2	 Bytes: 3
  %loadMem_40dfa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dfa2 = call %struct.Memory* @routine_movl__edx__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dfa2)
  store %struct.Memory* %call_40dfa2, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 40dfa5	 Bytes: 4
  %loadMem_40dfa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dfa5 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dfa5)
  store %struct.Memory* %call_40dfa5, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rcx	 RIP: 40dfa9	 Bytes: 4
  %loadMem_40dfa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dfa9 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dfa9)
  store %struct.Memory* %call_40dfa9, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40dfad	 Bytes: 4
  %loadMem_40dfad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dfad = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dfad)
  store %struct.Memory* %call_40dfad, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 40dfb1	 Bytes: 4
  %loadMem_40dfb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dfb1 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dfb1)
  store %struct.Memory* %call_40dfb1, %struct.Memory** %MEMORY

  ; Code: cmpl (%rax,%rcx,4), %edx	 RIP: 40dfb5	 Bytes: 3
  %loadMem_40dfb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dfb5 = call %struct.Memory* @routine_cmpl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dfb5)
  store %struct.Memory* %call_40dfb5, %struct.Memory** %MEMORY

  ; Code: jle .L_40dfd4	 RIP: 40dfb8	 Bytes: 6
  %loadMem_40dfb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dfb8 = call %struct.Memory* @routine_jle_.L_40dfd4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dfb8, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_40dfb8, %struct.Memory** %MEMORY

  %loadBr_40dfb8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40dfb8 = icmp eq i8 %loadBr_40dfb8, 1
  br i1 %cmpBr_40dfb8, label %block_.L_40dfd4, label %block_40dfbe

block_40dfbe:
  ; Code: movl -0x54(%rbp), %eax	 RIP: 40dfbe	 Bytes: 3
  %loadMem_40dfbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dfbe = call %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dfbe)
  store %struct.Memory* %call_40dfbe, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rcx	 RIP: 40dfc1	 Bytes: 4
  %loadMem_40dfc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dfc1 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dfc1)
  store %struct.Memory* %call_40dfc1, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 40dfc5	 Bytes: 4
  %loadMem_40dfc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dfc5 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dfc5)
  store %struct.Memory* %call_40dfc5, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40dfc9	 Bytes: 4
  %loadMem_40dfc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dfc9 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dfc9)
  store %struct.Memory* %call_40dfc9, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rdx	 RIP: 40dfcd	 Bytes: 4
  %loadMem_40dfcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dfcd = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dfcd)
  store %struct.Memory* %call_40dfcd, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 40dfd1	 Bytes: 3
  %loadMem_40dfd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dfd1 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dfd1)
  store %struct.Memory* %call_40dfd1, %struct.Memory** %MEMORY

  ; Code: .L_40dfd4:	 RIP: 40dfd4	 Bytes: 0
  br label %block_.L_40dfd4
block_.L_40dfd4:

  ; Code: cmpl $0x2, -0x4c(%rbp)	 RIP: 40dfd4	 Bytes: 4
  %loadMem_40dfd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dfd4 = call %struct.Memory* @routine_cmpl__0x2__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dfd4)
  store %struct.Memory* %call_40dfd4, %struct.Memory** %MEMORY

  ; Code: jle .L_40e0af	 RIP: 40dfd8	 Bytes: 6
  %loadMem_40dfd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dfd8 = call %struct.Memory* @routine_jle_.L_40e0af(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dfd8, i8* %BRANCH_TAKEN, i64 215, i64 6, i64 6)
  store %struct.Memory* %call_40dfd8, %struct.Memory** %MEMORY

  %loadBr_40dfd8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40dfd8 = icmp eq i8 %loadBr_40dfd8, 1
  br i1 %cmpBr_40dfd8, label %block_.L_40e0af, label %block_40dfde

block_40dfde:
  ; Code: movq -0x38(%rbp), %rax	 RIP: 40dfde	 Bytes: 4
  %loadMem_40dfde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dfde = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dfde)
  store %struct.Memory* %call_40dfde, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %ecx	 RIP: 40dfe2	 Bytes: 3
  %loadMem_40dfe2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dfe2 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dfe2)
  store %struct.Memory* %call_40dfe2, %struct.Memory** %MEMORY

  ; Code: subl $0x3, %ecx	 RIP: 40dfe5	 Bytes: 3
  %loadMem_40dfe5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dfe5 = call %struct.Memory* @routine_subl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dfe5)
  store %struct.Memory* %call_40dfe5, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40dfe8	 Bytes: 3
  %loadMem_40dfe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dfe8 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dfe8)
  store %struct.Memory* %call_40dfe8, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 40dfeb	 Bytes: 4
  %loadMem_40dfeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dfeb = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dfeb)
  store %struct.Memory* %call_40dfeb, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rdx	 RIP: 40dfef	 Bytes: 4
  %loadMem_40dfef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dfef = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dfef)
  store %struct.Memory* %call_40dfef, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rdx,4), %ecx	 RIP: 40dff3	 Bytes: 3
  %loadMem_40dff3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dff3 = call %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dff3)
  store %struct.Memory* %call_40dff3, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 40dff6	 Bytes: 4
  %loadMem_40dff6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dff6 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dff6)
  store %struct.Memory* %call_40dff6, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rax), %rax	 RIP: 40dffa	 Bytes: 7
  %loadMem_40dffa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40dffa = call %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40dffa)
  store %struct.Memory* %call_40dffa, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 40e001	 Bytes: 4
  %loadMem_40e001 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e001 = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e001)
  store %struct.Memory* %call_40e001, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rdx	 RIP: 40e005	 Bytes: 4
  %loadMem_40e005 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e005 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e005)
  store %struct.Memory* %call_40e005, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rdx,4), %ecx	 RIP: 40e009	 Bytes: 3
  %loadMem_40e009 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e009 = call %struct.Memory* @routine_addl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e009)
  store %struct.Memory* %call_40e009, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rax	 RIP: 40e00c	 Bytes: 4
  %loadMem_40e00c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e00c = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e00c)
  store %struct.Memory* %call_40e00c, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 40e010	 Bytes: 4
  %loadMem_40e010 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e010 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e010)
  store %struct.Memory* %call_40e010, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 40e014	 Bytes: 4
  %loadMem_40e014 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e014 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e014)
  store %struct.Memory* %call_40e014, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rdx	 RIP: 40e018	 Bytes: 4
  %loadMem_40e018 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e018 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e018)
  store %struct.Memory* %call_40e018, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax,%rdx,4)	 RIP: 40e01c	 Bytes: 3
  %loadMem_40e01c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e01c = call %struct.Memory* @routine_movl__ecx____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e01c)
  store %struct.Memory* %call_40e01c, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rax	 RIP: 40e01f	 Bytes: 4
  %loadMem_40e01f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e01f = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e01f)
  store %struct.Memory* %call_40e01f, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %ecx	 RIP: 40e023	 Bytes: 3
  %loadMem_40e023 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e023 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e023)
  store %struct.Memory* %call_40e023, %struct.Memory** %MEMORY

  ; Code: subl $0x3, %ecx	 RIP: 40e026	 Bytes: 3
  %loadMem_40e026 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e026 = call %struct.Memory* @routine_subl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e026)
  store %struct.Memory* %call_40e026, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40e029	 Bytes: 3
  %loadMem_40e029 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e029 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e029)
  store %struct.Memory* %call_40e029, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 40e02c	 Bytes: 4
  %loadMem_40e02c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e02c = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e02c)
  store %struct.Memory* %call_40e02c, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rdx	 RIP: 40e030	 Bytes: 4
  %loadMem_40e030 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e030 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e030)
  store %struct.Memory* %call_40e030, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rdx,4), %ecx	 RIP: 40e034	 Bytes: 3
  %loadMem_40e034 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e034 = call %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e034)
  store %struct.Memory* %call_40e034, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 40e037	 Bytes: 4
  %loadMem_40e037 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e037 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e037)
  store %struct.Memory* %call_40e037, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rax), %rax	 RIP: 40e03b	 Bytes: 7
  %loadMem_40e03b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e03b = call %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e03b)
  store %struct.Memory* %call_40e03b, %struct.Memory** %MEMORY

  ; Code: movq 0x20(%rax), %rax	 RIP: 40e042	 Bytes: 4
  %loadMem_40e042 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e042 = call %struct.Memory* @routine_movq_0x20__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e042)
  store %struct.Memory* %call_40e042, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rdx	 RIP: 40e046	 Bytes: 4
  %loadMem_40e046 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e046 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e046)
  store %struct.Memory* %call_40e046, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rdx,4), %ecx	 RIP: 40e04a	 Bytes: 3
  %loadMem_40e04a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e04a = call %struct.Memory* @routine_addl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e04a)
  store %struct.Memory* %call_40e04a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x54(%rbp)	 RIP: 40e04d	 Bytes: 3
  %loadMem_40e04d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e04d = call %struct.Memory* @routine_movl__ecx__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e04d)
  store %struct.Memory* %call_40e04d, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rax	 RIP: 40e050	 Bytes: 4
  %loadMem_40e050 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e050 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e050)
  store %struct.Memory* %call_40e050, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 40e054	 Bytes: 4
  %loadMem_40e054 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e054 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e054)
  store %struct.Memory* %call_40e054, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 40e058	 Bytes: 4
  %loadMem_40e058 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e058 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e058)
  store %struct.Memory* %call_40e058, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rdx	 RIP: 40e05c	 Bytes: 4
  %loadMem_40e05c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e05c = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e05c)
  store %struct.Memory* %call_40e05c, %struct.Memory** %MEMORY

  ; Code: cmpl (%rax,%rdx,4), %ecx	 RIP: 40e060	 Bytes: 3
  %loadMem_40e060 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e060 = call %struct.Memory* @routine_cmpl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e060)
  store %struct.Memory* %call_40e060, %struct.Memory** %MEMORY

  ; Code: jle .L_40e07f	 RIP: 40e063	 Bytes: 6
  %loadMem_40e063 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e063 = call %struct.Memory* @routine_jle_.L_40e07f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e063, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_40e063, %struct.Memory** %MEMORY

  %loadBr_40e063 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40e063 = icmp eq i8 %loadBr_40e063, 1
  br i1 %cmpBr_40e063, label %block_.L_40e07f, label %block_40e069

block_40e069:
  ; Code: movl -0x54(%rbp), %eax	 RIP: 40e069	 Bytes: 3
  %loadMem_40e069 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e069 = call %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e069)
  store %struct.Memory* %call_40e069, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 40e06c	 Bytes: 4
  %loadMem_40e06c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e06c = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e06c)
  store %struct.Memory* %call_40e06c, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 40e070	 Bytes: 4
  %loadMem_40e070 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e070 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e070)
  store %struct.Memory* %call_40e070, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40e074	 Bytes: 4
  %loadMem_40e074 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e074 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e074)
  store %struct.Memory* %call_40e074, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rdx	 RIP: 40e078	 Bytes: 4
  %loadMem_40e078 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e078 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e078)
  store %struct.Memory* %call_40e078, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 40e07c	 Bytes: 3
  %loadMem_40e07c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e07c = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e07c)
  store %struct.Memory* %call_40e07c, %struct.Memory** %MEMORY

  ; Code: .L_40e07f:	 RIP: 40e07f	 Bytes: 0
  br label %block_.L_40e07f
block_.L_40e07f:

  ; Code: movq -0x18(%rbp), %rax	 RIP: 40e07f	 Bytes: 4
  %loadMem_40e07f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e07f = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e07f)
  store %struct.Memory* %call_40e07f, %struct.Memory** %MEMORY

  ; Code: movq 0x1b0(%rax), %rax	 RIP: 40e083	 Bytes: 7
  %loadMem_40e083 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e083 = call %struct.Memory* @routine_movq_0x1b0__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e083)
  store %struct.Memory* %call_40e083, %struct.Memory** %MEMORY

  ; Code: movslq -0x58(%rbp), %rcx	 RIP: 40e08a	 Bytes: 4
  %loadMem_40e08a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e08a = call %struct.Memory* @routine_movslq_MINUS0x58__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e08a)
  store %struct.Memory* %call_40e08a, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40e08e	 Bytes: 4
  %loadMem_40e08e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e08e = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e08e)
  store %struct.Memory* %call_40e08e, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 40e092	 Bytes: 4
  %loadMem_40e092 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e092 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e092)
  store %struct.Memory* %call_40e092, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 40e096	 Bytes: 3
  %loadMem_40e096 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e096 = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e096)
  store %struct.Memory* %call_40e096, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rax	 RIP: 40e099	 Bytes: 4
  %loadMem_40e099 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e099 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e099)
  store %struct.Memory* %call_40e099, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rcx	 RIP: 40e09d	 Bytes: 4
  %loadMem_40e09d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e09d = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e09d)
  store %struct.Memory* %call_40e09d, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40e0a1	 Bytes: 4
  %loadMem_40e0a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e0a1 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e0a1)
  store %struct.Memory* %call_40e0a1, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 40e0a5	 Bytes: 4
  %loadMem_40e0a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e0a5 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e0a5)
  store %struct.Memory* %call_40e0a5, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rcx,4), %edx	 RIP: 40e0a9	 Bytes: 3
  %loadMem_40e0a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e0a9 = call %struct.Memory* @routine_addl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e0a9)
  store %struct.Memory* %call_40e0a9, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax,%rcx,4)	 RIP: 40e0ac	 Bytes: 3
  %loadMem_40e0ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e0ac = call %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e0ac)
  store %struct.Memory* %call_40e0ac, %struct.Memory** %MEMORY

  ; Code: .L_40e0af:	 RIP: 40e0af	 Bytes: 0
  br label %block_.L_40e0af
block_.L_40e0af:

  ; Code: movq -0x38(%rbp), %rax	 RIP: 40e0af	 Bytes: 4
  %loadMem_40e0af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e0af = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e0af)
  store %struct.Memory* %call_40e0af, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %ecx	 RIP: 40e0b3	 Bytes: 3
  %loadMem_40e0b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e0b3 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e0b3)
  store %struct.Memory* %call_40e0b3, %struct.Memory** %MEMORY

  ; Code: subl $0x2, %ecx	 RIP: 40e0b6	 Bytes: 3
  %loadMem_40e0b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e0b6 = call %struct.Memory* @routine_subl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e0b6)
  store %struct.Memory* %call_40e0b6, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40e0b9	 Bytes: 3
  %loadMem_40e0b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e0b9 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e0b9)
  store %struct.Memory* %call_40e0b9, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 40e0bc	 Bytes: 4
  %loadMem_40e0bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e0bc = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e0bc)
  store %struct.Memory* %call_40e0bc, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rdx	 RIP: 40e0c0	 Bytes: 4
  %loadMem_40e0c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e0c0 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e0c0)
  store %struct.Memory* %call_40e0c0, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rdx,4), %ecx	 RIP: 40e0c4	 Bytes: 3
  %loadMem_40e0c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e0c4 = call %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e0c4)
  store %struct.Memory* %call_40e0c4, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 40e0c7	 Bytes: 4
  %loadMem_40e0c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e0c7 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e0c7)
  store %struct.Memory* %call_40e0c7, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rax), %rax	 RIP: 40e0cb	 Bytes: 7
  %loadMem_40e0cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e0cb = call %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e0cb)
  store %struct.Memory* %call_40e0cb, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 40e0d2	 Bytes: 4
  %loadMem_40e0d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e0d2 = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e0d2)
  store %struct.Memory* %call_40e0d2, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rdx	 RIP: 40e0d6	 Bytes: 4
  %loadMem_40e0d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e0d6 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e0d6)
  store %struct.Memory* %call_40e0d6, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rdx,4), %ecx	 RIP: 40e0da	 Bytes: 3
  %loadMem_40e0da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e0da = call %struct.Memory* @routine_addl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e0da)
  store %struct.Memory* %call_40e0da, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 40e0dd	 Bytes: 4
  %loadMem_40e0dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e0dd = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e0dd)
  store %struct.Memory* %call_40e0dd, %struct.Memory** %MEMORY

  ; Code: addl 0x1b8(%rax), %ecx	 RIP: 40e0e1	 Bytes: 6
  %loadMem_40e0e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e0e1 = call %struct.Memory* @routine_addl_0x1b8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e0e1)
  store %struct.Memory* %call_40e0e1, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x54(%rbp)	 RIP: 40e0e7	 Bytes: 3
  %loadMem_40e0e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e0e7 = call %struct.Memory* @routine_movl__ecx__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e0e7)
  store %struct.Memory* %call_40e0e7, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rax	 RIP: 40e0ea	 Bytes: 4
  %loadMem_40e0ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e0ea = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e0ea)
  store %struct.Memory* %call_40e0ea, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 40e0ee	 Bytes: 4
  %loadMem_40e0ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e0ee = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e0ee)
  store %struct.Memory* %call_40e0ee, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 40e0f2	 Bytes: 4
  %loadMem_40e0f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e0f2 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e0f2)
  store %struct.Memory* %call_40e0f2, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rdx	 RIP: 40e0f6	 Bytes: 4
  %loadMem_40e0f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e0f6 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e0f6)
  store %struct.Memory* %call_40e0f6, %struct.Memory** %MEMORY

  ; Code: cmpl (%rax,%rdx,4), %ecx	 RIP: 40e0fa	 Bytes: 3
  %loadMem_40e0fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e0fa = call %struct.Memory* @routine_cmpl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e0fa)
  store %struct.Memory* %call_40e0fa, %struct.Memory** %MEMORY

  ; Code: jle .L_40e119	 RIP: 40e0fd	 Bytes: 6
  %loadMem_40e0fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e0fd = call %struct.Memory* @routine_jle_.L_40e119(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e0fd, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_40e0fd, %struct.Memory** %MEMORY

  %loadBr_40e0fd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40e0fd = icmp eq i8 %loadBr_40e0fd, 1
  br i1 %cmpBr_40e0fd, label %block_.L_40e119, label %block_40e103

block_40e103:
  ; Code: movl -0x54(%rbp), %eax	 RIP: 40e103	 Bytes: 3
  %loadMem_40e103 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e103 = call %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e103)
  store %struct.Memory* %call_40e103, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 40e106	 Bytes: 4
  %loadMem_40e106 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e106 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e106)
  store %struct.Memory* %call_40e106, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 40e10a	 Bytes: 4
  %loadMem_40e10a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e10a = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e10a)
  store %struct.Memory* %call_40e10a, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40e10e	 Bytes: 4
  %loadMem_40e10e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e10e = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e10e)
  store %struct.Memory* %call_40e10e, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rdx	 RIP: 40e112	 Bytes: 4
  %loadMem_40e112 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e112 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e112)
  store %struct.Memory* %call_40e112, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 40e116	 Bytes: 3
  %loadMem_40e116 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e116 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e116)
  store %struct.Memory* %call_40e116, %struct.Memory** %MEMORY

  ; Code: .L_40e119:	 RIP: 40e119	 Bytes: 0
  br label %block_.L_40e119
block_.L_40e119:

  ; Code: movq -0x40(%rbp), %rax	 RIP: 40e119	 Bytes: 4
  %loadMem_40e119 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e119 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e119)
  store %struct.Memory* %call_40e119, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %ecx	 RIP: 40e11d	 Bytes: 3
  %loadMem_40e11d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e11d = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e11d)
  store %struct.Memory* %call_40e11d, %struct.Memory** %MEMORY

  ; Code: subl $0x2, %ecx	 RIP: 40e120	 Bytes: 3
  %loadMem_40e120 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e120 = call %struct.Memory* @routine_subl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e120)
  store %struct.Memory* %call_40e120, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40e123	 Bytes: 3
  %loadMem_40e123 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e123 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e123)
  store %struct.Memory* %call_40e123, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 40e126	 Bytes: 4
  %loadMem_40e126 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e126 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e126)
  store %struct.Memory* %call_40e126, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rdx	 RIP: 40e12a	 Bytes: 4
  %loadMem_40e12a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e12a = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e12a)
  store %struct.Memory* %call_40e12a, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rdx,4), %ecx	 RIP: 40e12e	 Bytes: 3
  %loadMem_40e12e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e12e = call %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e12e)
  store %struct.Memory* %call_40e12e, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 40e131	 Bytes: 4
  %loadMem_40e131 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e131 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e131)
  store %struct.Memory* %call_40e131, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rax), %rax	 RIP: 40e135	 Bytes: 7
  %loadMem_40e135 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e135 = call %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e135)
  store %struct.Memory* %call_40e135, %struct.Memory** %MEMORY

  ; Code: movq 0x20(%rax), %rax	 RIP: 40e13c	 Bytes: 4
  %loadMem_40e13c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e13c = call %struct.Memory* @routine_movq_0x20__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e13c)
  store %struct.Memory* %call_40e13c, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rdx	 RIP: 40e140	 Bytes: 4
  %loadMem_40e140 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e140 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e140)
  store %struct.Memory* %call_40e140, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rdx,4), %ecx	 RIP: 40e144	 Bytes: 3
  %loadMem_40e144 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e144 = call %struct.Memory* @routine_addl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e144)
  store %struct.Memory* %call_40e144, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 40e147	 Bytes: 4
  %loadMem_40e147 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e147 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e147)
  store %struct.Memory* %call_40e147, %struct.Memory** %MEMORY

  ; Code: addl 0x1b8(%rax), %ecx	 RIP: 40e14b	 Bytes: 6
  %loadMem_40e14b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e14b = call %struct.Memory* @routine_addl_0x1b8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e14b)
  store %struct.Memory* %call_40e14b, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x54(%rbp)	 RIP: 40e151	 Bytes: 3
  %loadMem_40e151 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e151 = call %struct.Memory* @routine_movl__ecx__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e151)
  store %struct.Memory* %call_40e151, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rax	 RIP: 40e154	 Bytes: 4
  %loadMem_40e154 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e154 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e154)
  store %struct.Memory* %call_40e154, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 40e158	 Bytes: 4
  %loadMem_40e158 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e158 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e158)
  store %struct.Memory* %call_40e158, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 40e15c	 Bytes: 4
  %loadMem_40e15c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e15c = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e15c)
  store %struct.Memory* %call_40e15c, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rdx	 RIP: 40e160	 Bytes: 4
  %loadMem_40e160 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e160 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e160)
  store %struct.Memory* %call_40e160, %struct.Memory** %MEMORY

  ; Code: cmpl (%rax,%rdx,4), %ecx	 RIP: 40e164	 Bytes: 3
  %loadMem_40e164 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e164 = call %struct.Memory* @routine_cmpl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e164)
  store %struct.Memory* %call_40e164, %struct.Memory** %MEMORY

  ; Code: jle .L_40e183	 RIP: 40e167	 Bytes: 6
  %loadMem_40e167 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e167 = call %struct.Memory* @routine_jle_.L_40e183(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e167, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_40e167, %struct.Memory** %MEMORY

  %loadBr_40e167 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40e167 = icmp eq i8 %loadBr_40e167, 1
  br i1 %cmpBr_40e167, label %block_.L_40e183, label %block_40e16d

block_40e16d:
  ; Code: movl -0x54(%rbp), %eax	 RIP: 40e16d	 Bytes: 3
  %loadMem_40e16d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e16d = call %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e16d)
  store %struct.Memory* %call_40e16d, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 40e170	 Bytes: 4
  %loadMem_40e170 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e170 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e170)
  store %struct.Memory* %call_40e170, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 40e174	 Bytes: 4
  %loadMem_40e174 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e174 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e174)
  store %struct.Memory* %call_40e174, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40e178	 Bytes: 4
  %loadMem_40e178 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e178 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e178)
  store %struct.Memory* %call_40e178, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rdx	 RIP: 40e17c	 Bytes: 4
  %loadMem_40e17c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e17c = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e17c)
  store %struct.Memory* %call_40e17c, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 40e180	 Bytes: 3
  %loadMem_40e180 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e180 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e180)
  store %struct.Memory* %call_40e180, %struct.Memory** %MEMORY

  ; Code: .L_40e183:	 RIP: 40e183	 Bytes: 0
  br label %block_.L_40e183
block_.L_40e183:

  ; Code: cmpl $0x4, -0x4c(%rbp)	 RIP: 40e183	 Bytes: 4
  %loadMem_40e183 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e183 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e183)
  store %struct.Memory* %call_40e183, %struct.Memory** %MEMORY

  ; Code: jle .L_40e266	 RIP: 40e187	 Bytes: 6
  %loadMem_40e187 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e187 = call %struct.Memory* @routine_jle_.L_40e266(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e187, i8* %BRANCH_TAKEN, i64 223, i64 6, i64 6)
  store %struct.Memory* %call_40e187, %struct.Memory** %MEMORY

  %loadBr_40e187 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40e187 = icmp eq i8 %loadBr_40e187, 1
  br i1 %cmpBr_40e187, label %block_.L_40e266, label %block_40e18d

block_40e18d:
  ; Code: movq -0x38(%rbp), %rax	 RIP: 40e18d	 Bytes: 4
  %loadMem_40e18d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e18d = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e18d)
  store %struct.Memory* %call_40e18d, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %ecx	 RIP: 40e191	 Bytes: 3
  %loadMem_40e191 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e191 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e191)
  store %struct.Memory* %call_40e191, %struct.Memory** %MEMORY

  ; Code: subl $0x4, %ecx	 RIP: 40e194	 Bytes: 3
  %loadMem_40e194 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e194 = call %struct.Memory* @routine_subl__0x4___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e194)
  store %struct.Memory* %call_40e194, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40e197	 Bytes: 3
  %loadMem_40e197 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e197 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e197)
  store %struct.Memory* %call_40e197, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 40e19a	 Bytes: 4
  %loadMem_40e19a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e19a = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e19a)
  store %struct.Memory* %call_40e19a, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rdx	 RIP: 40e19e	 Bytes: 4
  %loadMem_40e19e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e19e = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e19e)
  store %struct.Memory* %call_40e19e, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rdx,4), %ecx	 RIP: 40e1a2	 Bytes: 3
  %loadMem_40e1a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e1a2 = call %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e1a2)
  store %struct.Memory* %call_40e1a2, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 40e1a5	 Bytes: 4
  %loadMem_40e1a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e1a5 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e1a5)
  store %struct.Memory* %call_40e1a5, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rax), %rax	 RIP: 40e1a9	 Bytes: 7
  %loadMem_40e1a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e1a9 = call %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e1a9)
  store %struct.Memory* %call_40e1a9, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 40e1b0	 Bytes: 4
  %loadMem_40e1b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e1b0 = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e1b0)
  store %struct.Memory* %call_40e1b0, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rdx	 RIP: 40e1b4	 Bytes: 4
  %loadMem_40e1b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e1b4 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e1b4)
  store %struct.Memory* %call_40e1b4, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rdx,4), %ecx	 RIP: 40e1b8	 Bytes: 3
  %loadMem_40e1b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e1b8 = call %struct.Memory* @routine_addl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e1b8)
  store %struct.Memory* %call_40e1b8, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 40e1bb	 Bytes: 4
  %loadMem_40e1bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e1bb = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e1bb)
  store %struct.Memory* %call_40e1bb, %struct.Memory** %MEMORY

  ; Code: addl 0x1bc(%rax), %ecx	 RIP: 40e1bf	 Bytes: 6
  %loadMem_40e1bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e1bf = call %struct.Memory* @routine_addl_0x1bc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e1bf)
  store %struct.Memory* %call_40e1bf, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x54(%rbp)	 RIP: 40e1c5	 Bytes: 3
  %loadMem_40e1c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e1c5 = call %struct.Memory* @routine_movl__ecx__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e1c5)
  store %struct.Memory* %call_40e1c5, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rax	 RIP: 40e1c8	 Bytes: 4
  %loadMem_40e1c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e1c8 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e1c8)
  store %struct.Memory* %call_40e1c8, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 40e1cc	 Bytes: 4
  %loadMem_40e1cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e1cc = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e1cc)
  store %struct.Memory* %call_40e1cc, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 40e1d0	 Bytes: 4
  %loadMem_40e1d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e1d0 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e1d0)
  store %struct.Memory* %call_40e1d0, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rdx	 RIP: 40e1d4	 Bytes: 4
  %loadMem_40e1d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e1d4 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e1d4)
  store %struct.Memory* %call_40e1d4, %struct.Memory** %MEMORY

  ; Code: cmpl (%rax,%rdx,4), %ecx	 RIP: 40e1d8	 Bytes: 3
  %loadMem_40e1d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e1d8 = call %struct.Memory* @routine_cmpl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e1d8)
  store %struct.Memory* %call_40e1d8, %struct.Memory** %MEMORY

  ; Code: jle .L_40e1f7	 RIP: 40e1db	 Bytes: 6
  %loadMem_40e1db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e1db = call %struct.Memory* @routine_jle_.L_40e1f7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e1db, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_40e1db, %struct.Memory** %MEMORY

  %loadBr_40e1db = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40e1db = icmp eq i8 %loadBr_40e1db, 1
  br i1 %cmpBr_40e1db, label %block_.L_40e1f7, label %block_40e1e1

block_40e1e1:
  ; Code: movl -0x54(%rbp), %eax	 RIP: 40e1e1	 Bytes: 3
  %loadMem_40e1e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e1e1 = call %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e1e1)
  store %struct.Memory* %call_40e1e1, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 40e1e4	 Bytes: 4
  %loadMem_40e1e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e1e4 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e1e4)
  store %struct.Memory* %call_40e1e4, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 40e1e8	 Bytes: 4
  %loadMem_40e1e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e1e8 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e1e8)
  store %struct.Memory* %call_40e1e8, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40e1ec	 Bytes: 4
  %loadMem_40e1ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e1ec = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e1ec)
  store %struct.Memory* %call_40e1ec, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rdx	 RIP: 40e1f0	 Bytes: 4
  %loadMem_40e1f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e1f0 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e1f0)
  store %struct.Memory* %call_40e1f0, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 40e1f4	 Bytes: 3
  %loadMem_40e1f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e1f4 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e1f4)
  store %struct.Memory* %call_40e1f4, %struct.Memory** %MEMORY

  ; Code: .L_40e1f7:	 RIP: 40e1f7	 Bytes: 0
  br label %block_.L_40e1f7
block_.L_40e1f7:

  ; Code: movq -0x40(%rbp), %rax	 RIP: 40e1f7	 Bytes: 4
  %loadMem_40e1f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e1f7 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e1f7)
  store %struct.Memory* %call_40e1f7, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %ecx	 RIP: 40e1fb	 Bytes: 3
  %loadMem_40e1fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e1fb = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e1fb)
  store %struct.Memory* %call_40e1fb, %struct.Memory** %MEMORY

  ; Code: subl $0x4, %ecx	 RIP: 40e1fe	 Bytes: 3
  %loadMem_40e1fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e1fe = call %struct.Memory* @routine_subl__0x4___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e1fe)
  store %struct.Memory* %call_40e1fe, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40e201	 Bytes: 3
  %loadMem_40e201 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e201 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e201)
  store %struct.Memory* %call_40e201, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 40e204	 Bytes: 4
  %loadMem_40e204 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e204 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e204)
  store %struct.Memory* %call_40e204, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rdx	 RIP: 40e208	 Bytes: 4
  %loadMem_40e208 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e208 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e208)
  store %struct.Memory* %call_40e208, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rdx,4), %ecx	 RIP: 40e20c	 Bytes: 3
  %loadMem_40e20c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e20c = call %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e20c)
  store %struct.Memory* %call_40e20c, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 40e20f	 Bytes: 4
  %loadMem_40e20f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e20f = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e20f)
  store %struct.Memory* %call_40e20f, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rax), %rax	 RIP: 40e213	 Bytes: 7
  %loadMem_40e213 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e213 = call %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e213)
  store %struct.Memory* %call_40e213, %struct.Memory** %MEMORY

  ; Code: movq 0x20(%rax), %rax	 RIP: 40e21a	 Bytes: 4
  %loadMem_40e21a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e21a = call %struct.Memory* @routine_movq_0x20__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e21a)
  store %struct.Memory* %call_40e21a, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rdx	 RIP: 40e21e	 Bytes: 4
  %loadMem_40e21e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e21e = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e21e)
  store %struct.Memory* %call_40e21e, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rdx,4), %ecx	 RIP: 40e222	 Bytes: 3
  %loadMem_40e222 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e222 = call %struct.Memory* @routine_addl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e222)
  store %struct.Memory* %call_40e222, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 40e225	 Bytes: 4
  %loadMem_40e225 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e225 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e225)
  store %struct.Memory* %call_40e225, %struct.Memory** %MEMORY

  ; Code: addl 0x1bc(%rax), %ecx	 RIP: 40e229	 Bytes: 6
  %loadMem_40e229 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e229 = call %struct.Memory* @routine_addl_0x1bc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e229)
  store %struct.Memory* %call_40e229, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x54(%rbp)	 RIP: 40e22f	 Bytes: 3
  %loadMem_40e22f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e22f = call %struct.Memory* @routine_movl__ecx__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e22f)
  store %struct.Memory* %call_40e22f, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rax	 RIP: 40e232	 Bytes: 4
  %loadMem_40e232 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e232 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e232)
  store %struct.Memory* %call_40e232, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 40e236	 Bytes: 4
  %loadMem_40e236 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e236 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e236)
  store %struct.Memory* %call_40e236, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 40e23a	 Bytes: 4
  %loadMem_40e23a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e23a = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e23a)
  store %struct.Memory* %call_40e23a, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rdx	 RIP: 40e23e	 Bytes: 4
  %loadMem_40e23e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e23e = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e23e)
  store %struct.Memory* %call_40e23e, %struct.Memory** %MEMORY

  ; Code: cmpl (%rax,%rdx,4), %ecx	 RIP: 40e242	 Bytes: 3
  %loadMem_40e242 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e242 = call %struct.Memory* @routine_cmpl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e242)
  store %struct.Memory* %call_40e242, %struct.Memory** %MEMORY

  ; Code: jle .L_40e261	 RIP: 40e245	 Bytes: 6
  %loadMem_40e245 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e245 = call %struct.Memory* @routine_jle_.L_40e261(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e245, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_40e245, %struct.Memory** %MEMORY

  %loadBr_40e245 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40e245 = icmp eq i8 %loadBr_40e245, 1
  br i1 %cmpBr_40e245, label %block_.L_40e261, label %block_40e24b

block_40e24b:
  ; Code: movl -0x54(%rbp), %eax	 RIP: 40e24b	 Bytes: 3
  %loadMem_40e24b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e24b = call %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e24b)
  store %struct.Memory* %call_40e24b, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 40e24e	 Bytes: 4
  %loadMem_40e24e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e24e = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e24e)
  store %struct.Memory* %call_40e24e, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 40e252	 Bytes: 4
  %loadMem_40e252 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e252 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e252)
  store %struct.Memory* %call_40e252, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40e256	 Bytes: 4
  %loadMem_40e256 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e256 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e256)
  store %struct.Memory* %call_40e256, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rdx	 RIP: 40e25a	 Bytes: 4
  %loadMem_40e25a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e25a = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e25a)
  store %struct.Memory* %call_40e25a, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 40e25e	 Bytes: 3
  %loadMem_40e25e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e25e = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e25e)
  store %struct.Memory* %call_40e25e, %struct.Memory** %MEMORY

  ; Code: .L_40e261:	 RIP: 40e261	 Bytes: 0
  br label %block_.L_40e261
block_.L_40e261:

  ; Code: jmpq .L_40e266	 RIP: 40e261	 Bytes: 5
  %loadMem_40e261 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e261 = call %struct.Memory* @routine_jmpq_.L_40e266(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e261, i64 5, i64 5)
  store %struct.Memory* %call_40e261, %struct.Memory** %MEMORY

  br label %block_.L_40e266

  ; Code: .L_40e266:	 RIP: 40e266	 Bytes: 0
block_.L_40e266:

  ; Code: jmpq .L_40e26b	 RIP: 40e266	 Bytes: 5
  %loadMem_40e266 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e266 = call %struct.Memory* @routine_jmpq_.L_40e26b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e266, i64 5, i64 5)
  store %struct.Memory* %call_40e266, %struct.Memory** %MEMORY

  br label %block_.L_40e26b

  ; Code: .L_40e26b:	 RIP: 40e26b	 Bytes: 0
block_.L_40e26b:

  ; Code: movl -0x50(%rbp), %eax	 RIP: 40e26b	 Bytes: 3
  %loadMem_40e26b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e26b = call %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e26b)
  store %struct.Memory* %call_40e26b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40e26e	 Bytes: 3
  %loadMem_40e26e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e26e = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e26e)
  store %struct.Memory* %call_40e26e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x50(%rbp)	 RIP: 40e271	 Bytes: 3
  %loadMem_40e271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e271 = call %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e271)
  store %struct.Memory* %call_40e271, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40d9e0	 RIP: 40e274	 Bytes: 5
  %loadMem_40e274 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e274 = call %struct.Memory* @routine_jmpq_.L_40d9e0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e274, i64 -2196, i64 5)
  store %struct.Memory* %call_40e274, %struct.Memory** %MEMORY

  br label %block_.L_40d9e0

  ; Code: .L_40e279:	 RIP: 40e279	 Bytes: 0
block_.L_40e279:

  ; Code: movq -0x30(%rbp), %rax	 RIP: 40e279	 Bytes: 4
  %loadMem_40e279 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e279 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e279)
  store %struct.Memory* %call_40e279, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %ecx	 RIP: 40e27d	 Bytes: 3
  %loadMem_40e27d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e27d = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e27d)
  store %struct.Memory* %call_40e27d, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 40e280	 Bytes: 3
  %loadMem_40e280 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e280 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e280)
  store %struct.Memory* %call_40e280, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40e283	 Bytes: 3
  %loadMem_40e283 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e283 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e283)
  store %struct.Memory* %call_40e283, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 40e286	 Bytes: 4
  %loadMem_40e286 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e286 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e286)
  store %struct.Memory* %call_40e286, %struct.Memory** %MEMORY

  ; Code: movl 0x10(%rax), %ecx	 RIP: 40e28a	 Bytes: 3
  %loadMem_40e28a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e28a = call %struct.Memory* @routine_movl_0x10__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e28a)
  store %struct.Memory* %call_40e28a, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 40e28d	 Bytes: 4
  %loadMem_40e28d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e28d = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e28d)
  store %struct.Memory* %call_40e28d, %struct.Memory** %MEMORY

  ; Code: addl 0x154(%rax), %ecx	 RIP: 40e291	 Bytes: 6
  %loadMem_40e291 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e291 = call %struct.Memory* @routine_addl_0x154__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e291)
  store %struct.Memory* %call_40e291, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 40e297	 Bytes: 4
  %loadMem_40e297 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e297 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e297)
  store %struct.Memory* %call_40e297, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 40e29b	 Bytes: 4
  %loadMem_40e29b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e29b = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e29b)
  store %struct.Memory* %call_40e29b, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 40e29f	 Bytes: 4
  %loadMem_40e29f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e29f = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e29f)
  store %struct.Memory* %call_40e29f, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x10(%rax)	 RIP: 40e2a3	 Bytes: 3
  %loadMem_40e2a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e2a3 = call %struct.Memory* @routine_movl__ecx__0x10__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e2a3)
  store %struct.Memory* %call_40e2a3, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 40e2a6	 Bytes: 4
  %loadMem_40e2a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e2a6 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e2a6)
  store %struct.Memory* %call_40e2a6, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 40e2aa	 Bytes: 4
  %loadMem_40e2aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e2aa = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e2aa)
  store %struct.Memory* %call_40e2aa, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 40e2ae	 Bytes: 4
  %loadMem_40e2ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e2ae = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e2ae)
  store %struct.Memory* %call_40e2ae, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 40e2b2	 Bytes: 4
  %loadMem_40e2b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e2b2 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e2b2)
  store %struct.Memory* %call_40e2b2, %struct.Memory** %MEMORY

  ; Code: movslq 0x88(%rdx), %rdx	 RIP: 40e2b6	 Bytes: 7
  %loadMem_40e2b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e2b6 = call %struct.Memory* @routine_movslq_0x88__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e2b6)
  store %struct.Memory* %call_40e2b6, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rdx,4), %ecx	 RIP: 40e2bd	 Bytes: 3
  %loadMem_40e2bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e2bd = call %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e2bd)
  store %struct.Memory* %call_40e2bd, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 40e2c0	 Bytes: 4
  %loadMem_40e2c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e2c0 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e2c0)
  store %struct.Memory* %call_40e2c0, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 40e2c4	 Bytes: 4
  %loadMem_40e2c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e2c4 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e2c4)
  store %struct.Memory* %call_40e2c4, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 40e2c8	 Bytes: 4
  %loadMem_40e2c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e2c8 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e2c8)
  store %struct.Memory* %call_40e2c8, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x4(%rax)	 RIP: 40e2cc	 Bytes: 3
  %loadMem_40e2cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e2cc = call %struct.Memory* @routine_movl__ecx__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e2cc)
  store %struct.Memory* %call_40e2cc, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x50(%rbp)	 RIP: 40e2cf	 Bytes: 7
  %loadMem_40e2cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e2cf = call %struct.Memory* @routine_movl__0x1__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e2cf)
  store %struct.Memory* %call_40e2cf, %struct.Memory** %MEMORY

  ; Code: .L_40e2d6:	 RIP: 40e2d6	 Bytes: 0
  br label %block_.L_40e2d6
block_.L_40e2d6:

  ; Code: movl -0x50(%rbp), %eax	 RIP: 40e2d6	 Bytes: 3
  %loadMem_40e2d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e2d6 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e2d6)
  store %struct.Memory* %call_40e2d6, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 40e2d9	 Bytes: 4
  %loadMem_40e2d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e2d9 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e2d9)
  store %struct.Memory* %call_40e2d9, %struct.Memory** %MEMORY

  ; Code: cmpl 0x88(%rcx), %eax	 RIP: 40e2dd	 Bytes: 6
  %loadMem_40e2dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e2dd = call %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e2dd)
  store %struct.Memory* %call_40e2dd, %struct.Memory** %MEMORY

  ; Code: jg .L_40e34b	 RIP: 40e2e3	 Bytes: 6
  %loadMem_40e2e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e2e3 = call %struct.Memory* @routine_jg_.L_40e34b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e2e3, i8* %BRANCH_TAKEN, i64 104, i64 6, i64 6)
  store %struct.Memory* %call_40e2e3, %struct.Memory** %MEMORY

  %loadBr_40e2e3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40e2e3 = icmp eq i8 %loadBr_40e2e3, 1
  br i1 %cmpBr_40e2e3, label %block_.L_40e34b, label %block_40e2e9

block_40e2e9:
  ; Code: movq -0x38(%rbp), %rax	 RIP: 40e2e9	 Bytes: 4
  %loadMem_40e2e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e2e9 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e2e9)
  store %struct.Memory* %call_40e2e9, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rcx	 RIP: 40e2ed	 Bytes: 4
  %loadMem_40e2ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e2ed = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e2ed)
  store %struct.Memory* %call_40e2ed, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40e2f1	 Bytes: 4
  %loadMem_40e2f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e2f1 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e2f1)
  store %struct.Memory* %call_40e2f1, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 40e2f5	 Bytes: 4
  %loadMem_40e2f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e2f5 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e2f5)
  store %struct.Memory* %call_40e2f5, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 40e2f9	 Bytes: 3
  %loadMem_40e2f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e2f9 = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e2f9)
  store %struct.Memory* %call_40e2f9, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 40e2fc	 Bytes: 4
  %loadMem_40e2fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e2fc = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e2fc)
  store %struct.Memory* %call_40e2fc, %struct.Memory** %MEMORY

  ; Code: movq 0x178(%rax), %rax	 RIP: 40e300	 Bytes: 7
  %loadMem_40e300 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e300 = call %struct.Memory* @routine_movq_0x178__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e300)
  store %struct.Memory* %call_40e300, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 40e307	 Bytes: 4
  %loadMem_40e307 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e307 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e307)
  store %struct.Memory* %call_40e307, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rcx,4), %edx	 RIP: 40e30b	 Bytes: 3
  %loadMem_40e30b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e30b = call %struct.Memory* @routine_addl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e30b)
  store %struct.Memory* %call_40e30b, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x54(%rbp)	 RIP: 40e30e	 Bytes: 3
  %loadMem_40e30e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e30e = call %struct.Memory* @routine_movl__edx__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e30e)
  store %struct.Memory* %call_40e30e, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 40e311	 Bytes: 4
  %loadMem_40e311 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e311 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e311)
  store %struct.Memory* %call_40e311, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rcx	 RIP: 40e315	 Bytes: 4
  %loadMem_40e315 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e315 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e315)
  store %struct.Memory* %call_40e315, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40e319	 Bytes: 4
  %loadMem_40e319 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e319 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e319)
  store %struct.Memory* %call_40e319, %struct.Memory** %MEMORY

  ; Code: cmpl 0x4(%rax), %edx	 RIP: 40e31d	 Bytes: 3
  %loadMem_40e31d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e31d = call %struct.Memory* @routine_cmpl_0x4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e31d)
  store %struct.Memory* %call_40e31d, %struct.Memory** %MEMORY

  ; Code: jle .L_40e338	 RIP: 40e320	 Bytes: 6
  %loadMem_40e320 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e320 = call %struct.Memory* @routine_jle_.L_40e338(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e320, i8* %BRANCH_TAKEN, i64 24, i64 6, i64 6)
  store %struct.Memory* %call_40e320, %struct.Memory** %MEMORY

  %loadBr_40e320 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40e320 = icmp eq i8 %loadBr_40e320, 1
  br i1 %cmpBr_40e320, label %block_.L_40e338, label %block_40e326

block_40e326:
  ; Code: movl -0x54(%rbp), %eax	 RIP: 40e326	 Bytes: 3
  %loadMem_40e326 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e326 = call %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e326)
  store %struct.Memory* %call_40e326, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rcx	 RIP: 40e329	 Bytes: 4
  %loadMem_40e329 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e329 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e329)
  store %struct.Memory* %call_40e329, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 40e32d	 Bytes: 4
  %loadMem_40e32d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e32d = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e32d)
  store %struct.Memory* %call_40e32d, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40e331	 Bytes: 4
  %loadMem_40e331 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e331 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e331)
  store %struct.Memory* %call_40e331, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x4(%rcx)	 RIP: 40e335	 Bytes: 3
  %loadMem_40e335 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e335 = call %struct.Memory* @routine_movl__eax__0x4__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e335)
  store %struct.Memory* %call_40e335, %struct.Memory** %MEMORY

  ; Code: .L_40e338:	 RIP: 40e338	 Bytes: 0
  br label %block_.L_40e338
block_.L_40e338:

  ; Code: jmpq .L_40e33d	 RIP: 40e338	 Bytes: 5
  %loadMem_40e338 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e338 = call %struct.Memory* @routine_jmpq_.L_40e33d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e338, i64 5, i64 5)
  store %struct.Memory* %call_40e338, %struct.Memory** %MEMORY

  br label %block_.L_40e33d

  ; Code: .L_40e33d:	 RIP: 40e33d	 Bytes: 0
block_.L_40e33d:

  ; Code: movl -0x50(%rbp), %eax	 RIP: 40e33d	 Bytes: 3
  %loadMem_40e33d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e33d = call %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e33d)
  store %struct.Memory* %call_40e33d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40e340	 Bytes: 3
  %loadMem_40e340 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e340 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e340)
  store %struct.Memory* %call_40e340, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x50(%rbp)	 RIP: 40e343	 Bytes: 3
  %loadMem_40e343 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e343 = call %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e343)
  store %struct.Memory* %call_40e343, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40e2d6	 RIP: 40e346	 Bytes: 5
  %loadMem_40e346 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e346 = call %struct.Memory* @routine_jmpq_.L_40e2d6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e346, i64 -112, i64 5)
  store %struct.Memory* %call_40e346, %struct.Memory** %MEMORY

  br label %block_.L_40e2d6

  ; Code: .L_40e34b:	 RIP: 40e34b	 Bytes: 0
block_.L_40e34b:

  ; Code: movq -0x30(%rbp), %rax	 RIP: 40e34b	 Bytes: 4
  %loadMem_40e34b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e34b = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e34b)
  store %struct.Memory* %call_40e34b, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %ecx	 RIP: 40e34f	 Bytes: 3
  %loadMem_40e34f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e34f = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e34f)
  store %struct.Memory* %call_40e34f, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 40e352	 Bytes: 3
  %loadMem_40e352 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e352 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e352)
  store %struct.Memory* %call_40e352, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40e355	 Bytes: 3
  %loadMem_40e355 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e355 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e355)
  store %struct.Memory* %call_40e355, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 40e358	 Bytes: 4
  %loadMem_40e358 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e358 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e358)
  store %struct.Memory* %call_40e358, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %ecx	 RIP: 40e35c	 Bytes: 3
  %loadMem_40e35c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e35c = call %struct.Memory* @routine_movl_0xc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e35c)
  store %struct.Memory* %call_40e35c, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 40e35f	 Bytes: 4
  %loadMem_40e35f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e35f = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e35f)
  store %struct.Memory* %call_40e35f, %struct.Memory** %MEMORY

  ; Code: addl 0x16c(%rax), %ecx	 RIP: 40e363	 Bytes: 6
  %loadMem_40e363 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e363 = call %struct.Memory* @routine_addl_0x16c__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e363)
  store %struct.Memory* %call_40e363, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 40e369	 Bytes: 4
  %loadMem_40e369 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e369 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e369)
  store %struct.Memory* %call_40e369, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 40e36d	 Bytes: 4
  %loadMem_40e36d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e36d = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e36d)
  store %struct.Memory* %call_40e36d, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 40e371	 Bytes: 4
  %loadMem_40e371 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e371 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e371)
  store %struct.Memory* %call_40e371, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0xc(%rax)	 RIP: 40e375	 Bytes: 3
  %loadMem_40e375 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e375 = call %struct.Memory* @routine_movl__ecx__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e375)
  store %struct.Memory* %call_40e375, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 40e378	 Bytes: 4
  %loadMem_40e378 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e378 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e378)
  store %struct.Memory* %call_40e378, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 40e37c	 Bytes: 4
  %loadMem_40e37c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e37c = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e37c)
  store %struct.Memory* %call_40e37c, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 40e380	 Bytes: 4
  %loadMem_40e380 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e380 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e380)
  store %struct.Memory* %call_40e380, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %ecx	 RIP: 40e384	 Bytes: 3
  %loadMem_40e384 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e384 = call %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e384)
  store %struct.Memory* %call_40e384, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 40e387	 Bytes: 4
  %loadMem_40e387 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e387 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e387)
  store %struct.Memory* %call_40e387, %struct.Memory** %MEMORY

  ; Code: addl 0x15c(%rax), %ecx	 RIP: 40e38b	 Bytes: 6
  %loadMem_40e38b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e38b = call %struct.Memory* @routine_addl_0x15c__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e38b)
  store %struct.Memory* %call_40e38b, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x54(%rbp)	 RIP: 40e391	 Bytes: 3
  %loadMem_40e391 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e391 = call %struct.Memory* @routine_movl__ecx__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e391)
  store %struct.Memory* %call_40e391, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 40e394	 Bytes: 4
  %loadMem_40e394 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e394 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e394)
  store %struct.Memory* %call_40e394, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 40e398	 Bytes: 4
  %loadMem_40e398 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e398 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e398)
  store %struct.Memory* %call_40e398, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 40e39c	 Bytes: 4
  %loadMem_40e39c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e39c = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e39c)
  store %struct.Memory* %call_40e39c, %struct.Memory** %MEMORY

  ; Code: cmpl 0xc(%rax), %ecx	 RIP: 40e3a0	 Bytes: 3
  %loadMem_40e3a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e3a0 = call %struct.Memory* @routine_cmpl_0xc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e3a0)
  store %struct.Memory* %call_40e3a0, %struct.Memory** %MEMORY

  ; Code: jle .L_40e3bb	 RIP: 40e3a3	 Bytes: 6
  %loadMem_40e3a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e3a3 = call %struct.Memory* @routine_jle_.L_40e3bb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e3a3, i8* %BRANCH_TAKEN, i64 24, i64 6, i64 6)
  store %struct.Memory* %call_40e3a3, %struct.Memory** %MEMORY

  %loadBr_40e3a3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40e3a3 = icmp eq i8 %loadBr_40e3a3, 1
  br i1 %cmpBr_40e3a3, label %block_.L_40e3bb, label %block_40e3a9

block_40e3a9:
  ; Code: movl -0x54(%rbp), %eax	 RIP: 40e3a9	 Bytes: 3
  %loadMem_40e3a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e3a9 = call %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e3a9)
  store %struct.Memory* %call_40e3a9, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rcx	 RIP: 40e3ac	 Bytes: 4
  %loadMem_40e3ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e3ac = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e3ac)
  store %struct.Memory* %call_40e3ac, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 40e3b0	 Bytes: 4
  %loadMem_40e3b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e3b0 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e3b0)
  store %struct.Memory* %call_40e3b0, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40e3b4	 Bytes: 4
  %loadMem_40e3b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e3b4 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e3b4)
  store %struct.Memory* %call_40e3b4, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0xc(%rcx)	 RIP: 40e3b8	 Bytes: 3
  %loadMem_40e3b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e3b8 = call %struct.Memory* @routine_movl__eax__0xc__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e3b8)
  store %struct.Memory* %call_40e3b8, %struct.Memory** %MEMORY

  ; Code: .L_40e3bb:	 RIP: 40e3bb	 Bytes: 0
  br label %block_.L_40e3bb
block_.L_40e3bb:

  ; Code: movq -0x30(%rbp), %rax	 RIP: 40e3bb	 Bytes: 4
  %loadMem_40e3bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e3bb = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e3bb)
  store %struct.Memory* %call_40e3bb, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rcx	 RIP: 40e3bf	 Bytes: 4
  %loadMem_40e3bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e3bf = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e3bf)
  store %struct.Memory* %call_40e3bf, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40e3c3	 Bytes: 4
  %loadMem_40e3c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e3c3 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e3c3)
  store %struct.Memory* %call_40e3c3, %struct.Memory** %MEMORY

  ; Code: movl 0x10(%rax), %edx	 RIP: 40e3c7	 Bytes: 3
  %loadMem_40e3c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e3c7 = call %struct.Memory* @routine_movl_0x10__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e3c7)
  store %struct.Memory* %call_40e3c7, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 40e3ca	 Bytes: 4
  %loadMem_40e3ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e3ca = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e3ca)
  store %struct.Memory* %call_40e3ca, %struct.Memory** %MEMORY

  ; Code: addl 0x150(%rax), %edx	 RIP: 40e3ce	 Bytes: 6
  %loadMem_40e3ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e3ce = call %struct.Memory* @routine_addl_0x150__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e3ce)
  store %struct.Memory* %call_40e3ce, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 40e3d4	 Bytes: 4
  %loadMem_40e3d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e3d4 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e3d4)
  store %struct.Memory* %call_40e3d4, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rcx	 RIP: 40e3d8	 Bytes: 4
  %loadMem_40e3d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e3d8 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e3d8)
  store %struct.Memory* %call_40e3d8, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40e3dc	 Bytes: 4
  %loadMem_40e3dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e3dc = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e3dc)
  store %struct.Memory* %call_40e3dc, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax)	 RIP: 40e3e0	 Bytes: 2
  %loadMem_40e3e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e3e0 = call %struct.Memory* @routine_movl__edx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e3e0)
  store %struct.Memory* %call_40e3e0, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 40e3e2	 Bytes: 4
  %loadMem_40e3e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e3e2 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e3e2)
  store %struct.Memory* %call_40e3e2, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rcx	 RIP: 40e3e6	 Bytes: 4
  %loadMem_40e3e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e3e6 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e3e6)
  store %struct.Memory* %call_40e3e6, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40e3ea	 Bytes: 4
  %loadMem_40e3ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e3ea = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e3ea)
  store %struct.Memory* %call_40e3ea, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %edx	 RIP: 40e3ee	 Bytes: 3
  %loadMem_40e3ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e3ee = call %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e3ee)
  store %struct.Memory* %call_40e3ee, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 40e3f1	 Bytes: 4
  %loadMem_40e3f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e3f1 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e3f1)
  store %struct.Memory* %call_40e3f1, %struct.Memory** %MEMORY

  ; Code: addl 0x168(%rax), %edx	 RIP: 40e3f5	 Bytes: 6
  %loadMem_40e3f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e3f5 = call %struct.Memory* @routine_addl_0x168__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e3f5)
  store %struct.Memory* %call_40e3f5, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x54(%rbp)	 RIP: 40e3fb	 Bytes: 3
  %loadMem_40e3fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e3fb = call %struct.Memory* @routine_movl__edx__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e3fb)
  store %struct.Memory* %call_40e3fb, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 40e3fe	 Bytes: 4
  %loadMem_40e3fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e3fe = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e3fe)
  store %struct.Memory* %call_40e3fe, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rcx	 RIP: 40e402	 Bytes: 4
  %loadMem_40e402 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e402 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e402)
  store %struct.Memory* %call_40e402, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40e406	 Bytes: 4
  %loadMem_40e406 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e406 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e406)
  store %struct.Memory* %call_40e406, %struct.Memory** %MEMORY

  ; Code: cmpl (%rax), %edx	 RIP: 40e40a	 Bytes: 2
  %loadMem_40e40a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e40a = call %struct.Memory* @routine_cmpl___rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e40a)
  store %struct.Memory* %call_40e40a, %struct.Memory** %MEMORY

  ; Code: jle .L_40e423	 RIP: 40e40c	 Bytes: 6
  %loadMem_40e40c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e40c = call %struct.Memory* @routine_jle_.L_40e423(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e40c, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_40e40c, %struct.Memory** %MEMORY

  %loadBr_40e40c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40e40c = icmp eq i8 %loadBr_40e40c, 1
  br i1 %cmpBr_40e40c, label %block_.L_40e423, label %block_40e412

block_40e412:
  ; Code: movl -0x54(%rbp), %eax	 RIP: 40e412	 Bytes: 3
  %loadMem_40e412 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e412 = call %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e412)
  store %struct.Memory* %call_40e412, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rcx	 RIP: 40e415	 Bytes: 4
  %loadMem_40e415 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e415 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e415)
  store %struct.Memory* %call_40e415, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 40e419	 Bytes: 4
  %loadMem_40e419 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e419 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e419)
  store %struct.Memory* %call_40e419, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40e41d	 Bytes: 4
  %loadMem_40e41d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e41d = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e41d)
  store %struct.Memory* %call_40e41d, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 40e421	 Bytes: 2
  %loadMem_40e421 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e421 = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e421)
  store %struct.Memory* %call_40e421, %struct.Memory** %MEMORY

  ; Code: .L_40e423:	 RIP: 40e423	 Bytes: 0
  br label %block_.L_40e423
block_.L_40e423:

  ; Code: movq -0x30(%rbp), %rax	 RIP: 40e423	 Bytes: 4
  %loadMem_40e423 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e423 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e423)
  store %struct.Memory* %call_40e423, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %ecx	 RIP: 40e427	 Bytes: 3
  %loadMem_40e427 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e427 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e427)
  store %struct.Memory* %call_40e427, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 40e42a	 Bytes: 3
  %loadMem_40e42a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e42a = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e42a)
  store %struct.Memory* %call_40e42a, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40e42d	 Bytes: 3
  %loadMem_40e42d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e42d = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e42d)
  store %struct.Memory* %call_40e42d, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 40e430	 Bytes: 4
  %loadMem_40e430 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e430 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e430)
  store %struct.Memory* %call_40e430, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rax), %ecx	 RIP: 40e434	 Bytes: 3
  %loadMem_40e434 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e434 = call %struct.Memory* @routine_movl_0x8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e434)
  store %struct.Memory* %call_40e434, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 40e437	 Bytes: 4
  %loadMem_40e437 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e437 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e437)
  store %struct.Memory* %call_40e437, %struct.Memory** %MEMORY

  ; Code: addl 0x164(%rax), %ecx	 RIP: 40e43b	 Bytes: 6
  %loadMem_40e43b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e43b = call %struct.Memory* @routine_addl_0x164__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e43b)
  store %struct.Memory* %call_40e43b, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 40e441	 Bytes: 4
  %loadMem_40e441 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e441 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e441)
  store %struct.Memory* %call_40e441, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 40e445	 Bytes: 4
  %loadMem_40e445 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e445 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e445)
  store %struct.Memory* %call_40e445, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 40e449	 Bytes: 4
  %loadMem_40e449 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e449 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e449)
  store %struct.Memory* %call_40e449, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8(%rax)	 RIP: 40e44d	 Bytes: 3
  %loadMem_40e44d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e44d = call %struct.Memory* @routine_movl__ecx__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e44d)
  store %struct.Memory* %call_40e44d, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 40e450	 Bytes: 4
  %loadMem_40e450 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e450 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e450)
  store %struct.Memory* %call_40e450, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 40e454	 Bytes: 4
  %loadMem_40e454 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e454 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e454)
  store %struct.Memory* %call_40e454, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 40e458	 Bytes: 4
  %loadMem_40e458 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e458 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e458)
  store %struct.Memory* %call_40e458, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %ecx	 RIP: 40e45c	 Bytes: 3
  %loadMem_40e45c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e45c = call %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e45c)
  store %struct.Memory* %call_40e45c, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 40e45f	 Bytes: 4
  %loadMem_40e45f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e45f = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e45f)
  store %struct.Memory* %call_40e45f, %struct.Memory** %MEMORY

  ; Code: addl 0x158(%rax), %ecx	 RIP: 40e463	 Bytes: 6
  %loadMem_40e463 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e463 = call %struct.Memory* @routine_addl_0x158__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e463)
  store %struct.Memory* %call_40e463, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x54(%rbp)	 RIP: 40e469	 Bytes: 3
  %loadMem_40e469 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e469 = call %struct.Memory* @routine_movl__ecx__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e469)
  store %struct.Memory* %call_40e469, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 40e46c	 Bytes: 4
  %loadMem_40e46c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e46c = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e46c)
  store %struct.Memory* %call_40e46c, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 40e470	 Bytes: 4
  %loadMem_40e470 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e470 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e470)
  store %struct.Memory* %call_40e470, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 40e474	 Bytes: 4
  %loadMem_40e474 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e474 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e474)
  store %struct.Memory* %call_40e474, %struct.Memory** %MEMORY

  ; Code: cmpl 0x8(%rax), %ecx	 RIP: 40e478	 Bytes: 3
  %loadMem_40e478 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e478 = call %struct.Memory* @routine_cmpl_0x8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e478)
  store %struct.Memory* %call_40e478, %struct.Memory** %MEMORY

  ; Code: jle .L_40e493	 RIP: 40e47b	 Bytes: 6
  %loadMem_40e47b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e47b = call %struct.Memory* @routine_jle_.L_40e493(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e47b, i8* %BRANCH_TAKEN, i64 24, i64 6, i64 6)
  store %struct.Memory* %call_40e47b, %struct.Memory** %MEMORY

  %loadBr_40e47b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40e47b = icmp eq i8 %loadBr_40e47b, 1
  br i1 %cmpBr_40e47b, label %block_.L_40e493, label %block_40e481

block_40e481:
  ; Code: movl -0x54(%rbp), %eax	 RIP: 40e481	 Bytes: 3
  %loadMem_40e481 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e481 = call %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e481)
  store %struct.Memory* %call_40e481, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rcx	 RIP: 40e484	 Bytes: 4
  %loadMem_40e484 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e484 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e484)
  store %struct.Memory* %call_40e484, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 40e488	 Bytes: 4
  %loadMem_40e488 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e488 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e488)
  store %struct.Memory* %call_40e488, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40e48c	 Bytes: 4
  %loadMem_40e48c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e48c = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e48c)
  store %struct.Memory* %call_40e48c, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x8(%rcx)	 RIP: 40e490	 Bytes: 3
  %loadMem_40e490 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e490 = call %struct.Memory* @routine_movl__eax__0x8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e490)
  store %struct.Memory* %call_40e490, %struct.Memory** %MEMORY

  ; Code: .L_40e493:	 RIP: 40e493	 Bytes: 0
  br label %block_.L_40e493
block_.L_40e493:

  ; Code: jmpq .L_40e498	 RIP: 40e493	 Bytes: 5
  %loadMem_40e493 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e493 = call %struct.Memory* @routine_jmpq_.L_40e498(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e493, i64 5, i64 5)
  store %struct.Memory* %call_40e493, %struct.Memory** %MEMORY

  br label %block_.L_40e498

  ; Code: .L_40e498:	 RIP: 40e498	 Bytes: 0
block_.L_40e498:

  ; Code: movl -0x4c(%rbp), %eax	 RIP: 40e498	 Bytes: 3
  %loadMem_40e498 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e498 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e498)
  store %struct.Memory* %call_40e498, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40e49b	 Bytes: 3
  %loadMem_40e49b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e49b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e49b)
  store %struct.Memory* %call_40e49b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c(%rbp)	 RIP: 40e49e	 Bytes: 3
  %loadMem_40e49e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e49e = call %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e49e)
  store %struct.Memory* %call_40e49e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40d8f8	 RIP: 40e4a1	 Bytes: 5
  %loadMem_40e4a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e4a1 = call %struct.Memory* @routine_jmpq_.L_40d8f8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e4a1, i64 -2985, i64 5)
  store %struct.Memory* %call_40e4a1, %struct.Memory** %MEMORY

  br label %block_.L_40d8f8

  ; Code: .L_40e4a6:	 RIP: 40e4a6	 Bytes: 0
block_.L_40e4a6:

  ; Code: movq -0x30(%rbp), %rax	 RIP: 40e4a6	 Bytes: 4
  %loadMem_40e4a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e4a6 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e4a6)
  store %struct.Memory* %call_40e4a6, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 40e4aa	 Bytes: 4
  %loadMem_40e4aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e4aa = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e4aa)
  store %struct.Memory* %call_40e4aa, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40e4ae	 Bytes: 4
  %loadMem_40e4ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e4ae = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e4ae)
  store %struct.Memory* %call_40e4ae, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rax), %edx	 RIP: 40e4b2	 Bytes: 3
  %loadMem_40e4b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e4b2 = call %struct.Memory* @routine_movl_0x8__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e4b2)
  store %struct.Memory* %call_40e4b2, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 40e4b5	 Bytes: 4
  %loadMem_40e4b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e4b5 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e4b5)
  store %struct.Memory* %call_40e4b5, %struct.Memory** %MEMORY

  ; Code: addl 0x160(%rax), %edx	 RIP: 40e4b9	 Bytes: 6
  %loadMem_40e4b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e4b9 = call %struct.Memory* @routine_addl_0x160__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e4b9)
  store %struct.Memory* %call_40e4b9, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x54(%rbp)	 RIP: 40e4bf	 Bytes: 3
  %loadMem_40e4bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e4bf = call %struct.Memory* @routine_movl__edx__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e4bf)
  store %struct.Memory* %call_40e4bf, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, -0x20(%rbp)	 RIP: 40e4c2	 Bytes: 5
  %loadMem_40e4c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e4c2 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e4c2)
  store %struct.Memory* %call_40e4c2, %struct.Memory** %MEMORY

  ; Code: je .L_40e4dd	 RIP: 40e4c7	 Bytes: 6
  %loadMem_40e4c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e4c7 = call %struct.Memory* @routine_je_.L_40e4dd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e4c7, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_40e4c7, %struct.Memory** %MEMORY

  %loadBr_40e4c7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40e4c7 = icmp eq i8 %loadBr_40e4c7, 1
  br i1 %cmpBr_40e4c7, label %block_.L_40e4dd, label %block_40e4cd

block_40e4cd:
  ; Code: movq -0x28(%rbp), %rax	 RIP: 40e4cd	 Bytes: 4
  %loadMem_40e4cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e4cd = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e4cd)
  store %struct.Memory* %call_40e4cd, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 40e4d1	 Bytes: 4
  %loadMem_40e4d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e4d1 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e4d1)
  store %struct.Memory* %call_40e4d1, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rcx)	 RIP: 40e4d5	 Bytes: 3
  %loadMem_40e4d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e4d5 = call %struct.Memory* @routine_movq__rax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e4d5)
  store %struct.Memory* %call_40e4d5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40e4e6	 RIP: 40e4d8	 Bytes: 5
  %loadMem_40e4d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e4d8 = call %struct.Memory* @routine_jmpq_.L_40e4e6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e4d8, i64 14, i64 5)
  store %struct.Memory* %call_40e4d8, %struct.Memory** %MEMORY

  br label %block_.L_40e4e6

  ; Code: .L_40e4dd:	 RIP: 40e4dd	 Bytes: 0
block_.L_40e4dd:

  ; Code: movq -0x28(%rbp), %rdi	 RIP: 40e4dd	 Bytes: 4
  %loadMem_40e4dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e4dd = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e4dd)
  store %struct.Memory* %call_40e4dd, %struct.Memory** %MEMORY

  ; Code: callq .FreePlan7Matrix	 RIP: 40e4e1	 Bytes: 5
  %loadMem1_40e4e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40e4e1 = call %struct.Memory* @routine_callq_.FreePlan7Matrix(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40e4e1, i64 -27553, i64 5, i64 5)
  store %struct.Memory* %call1_40e4e1, %struct.Memory** %MEMORY

  %loadMem2_40e4e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40e4e1 = load i64, i64* %3
  %call2_40e4e1 = call %struct.Memory* @sub_407940.FreePlan7Matrix(%struct.State* %0, i64  %loadPC_40e4e1, %struct.Memory* %loadMem2_40e4e1)
  store %struct.Memory* %call2_40e4e1, %struct.Memory** %MEMORY

  ; Code: .L_40e4e6:	 RIP: 40e4e6	 Bytes: 0
  br label %block_.L_40e4e6
block_.L_40e4e6:

  ; Code: movl -0x54(%rbp), %edi	 RIP: 40e4e6	 Bytes: 3
  %loadMem_40e4e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e4e6 = call %struct.Memory* @routine_movl_MINUS0x54__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e4e6)
  store %struct.Memory* %call_40e4e6, %struct.Memory** %MEMORY

  ; Code: callq .Scorify	 RIP: 40e4e9	 Bytes: 5
  %loadMem1_40e4e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40e4e9 = call %struct.Memory* @routine_callq_.Scorify(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40e4e9, i64 104967, i64 5, i64 5)
  store %struct.Memory* %call1_40e4e9, %struct.Memory** %MEMORY

  %loadMem2_40e4e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40e4e9 = load i64, i64* %3
  %call2_40e4e9 = call %struct.Memory* @sub_427ef0.Scorify(%struct.State* %0, i64  %loadPC_40e4e9, %struct.Memory* %loadMem2_40e4e9)
  store %struct.Memory* %call2_40e4e9, %struct.Memory** %MEMORY

  ; Code: addq $0x60, %rsp	 RIP: 40e4ee	 Bytes: 4
  %loadMem_40e4ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e4ee = call %struct.Memory* @routine_addq__0x60___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e4ee)
  store %struct.Memory* %call_40e4ee, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 40e4f2	 Bytes: 1
  %loadMem_40e4f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e4f2 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e4f2)
  store %struct.Memory* %call_40e4f2, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 40e4f3	 Bytes: 1
  %loadMem_40e4f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e4f3 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e4f3)
  store %struct.Memory* %call_40e4f3, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_40e4f3
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

define %struct.Memory* @routine_jg_.L_40d82b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_40d7d4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addl_0x154__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 340
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__ecx__0x10__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 16
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}










define %struct.Memory* @routine_addl_0x150__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 336
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movl__ecx____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




























define %struct.Memory* @routine_jg_.L_40d8f1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
































define %struct.Memory* @routine_jmpq_.L_40d89a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__0x2__MINUS0x4c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
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


define %struct.Memory* @routine_jg_.L_40e4a6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x2__MINUS0x4c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_jle_.L_40d9d9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_subl__0x2___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 2)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  %7 = sext i8 %6 to i64
  %8 = and i64 %7, 4294967295
  store i64 %8, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsbl___rax__rdx_1____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = add i64 %16, %15
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 4
  store i64 %19, i64* %PC
  %20 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %17)
  ret %struct.Memory* %20
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

define %struct.Memory* @routine_cmpl__0x4___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
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

define %struct.Memory* @routine_jge_.L_40d9cd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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














define %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = add i64 %16, %15
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 4
  store i64 %19, i64* %PC
  %20 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %17)
  ret %struct.Memory* %20
}


define %struct.Memory* @routine_cmpl__0x4___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDX = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %EDX
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_shll__0x4___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 4)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_movsbl___rax__rdx_1____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = add i64 %16, %15
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 4
  store i64 %19, i64* %PC
  %20 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %17)
  ret %struct.Memory* %20
}


define %struct.Memory* @routine_shll__0x2___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 2)
  ret %struct.Memory* %12
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

define %struct.Memory* @routine_addl__esi___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RCX
  %13 = load i32, i32* %ESI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
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


define %struct.Memory* @routine_jmpq_.L_40d9d4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__0x40__MINUS0x58__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 88
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 64)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_40d9d9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jg_.L_40e279(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_jle_.L_40dba2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






define %struct.Memory* @routine_subl__0x3___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 3)
  ret %struct.Memory* %12
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








define %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx____rax__rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %ECX
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
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










define %struct.Memory* @routine_cmpl___rax__rdx_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i32, i32* %ECX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %RAX
  %18 = load i64, i64* %RDX
  %19 = mul i64 %18, 4
  %20 = add i64 %19, %17
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_jle_.L_40dab1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %EAX
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}












define %struct.Memory* @routine_movl___rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12)
  ret %struct.Memory* %15
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


















define %struct.Memory* @routine_jle_.L_40db08(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




































define %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 40
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}






















define %struct.Memory* @routine_jle_.L_40db72(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
















define %struct.Memory* @routine_movq_0x1a8__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 424
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movslq_MINUS0x58__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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




































define %struct.Memory* @routine_addl_0x1b8__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 440
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}














define %struct.Memory* @routine_jle_.L_40dc15(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






























































define %struct.Memory* @routine_jle_.L_40dc89(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


















































define %struct.Memory* @routine_jle_.L_40dcea(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






























































define %struct.Memory* @routine_jle_.L_40dd5e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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














define %struct.Memory* @routine_cmpl__0x3__MINUS0x4c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jle_.L_40df29(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






define %struct.Memory* @routine_subl__0x4___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 4)
  ret %struct.Memory* %12
}






























define %struct.Memory* @routine_addl_0x1bc__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 444
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}














define %struct.Memory* @routine_jle_.L_40dddb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






























































define %struct.Memory* @routine_jle_.L_40de4f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


















































define %struct.Memory* @routine_jle_.L_40deb0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






























































define %struct.Memory* @routine_jle_.L_40df24(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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














define %struct.Memory* @routine_jmpq_.L_40df29(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_cmpl___rax__rcx_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = load i32, i32* %EDX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %RAX
  %18 = load i64, i64* %RCX
  %19 = mul i64 %18, 4
  %20 = add i64 %19, %17
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_jle_.L_40dfd4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












define %struct.Memory* @routine_jle_.L_40e0af(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






















































define %struct.Memory* @routine_movq_0x20__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}


















define %struct.Memory* @routine_jle_.L_40e07f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












define %struct.Memory* @routine_movq_0x1b0__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 432
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}






























































define %struct.Memory* @routine_jle_.L_40e119(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






















































define %struct.Memory* @routine_jle_.L_40e183(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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














define %struct.Memory* @routine_cmpl__0x4__MINUS0x4c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jle_.L_40e266(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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










































define %struct.Memory* @routine_jle_.L_40e1f7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






















































define %struct.Memory* @routine_jle_.L_40e261(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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














define %struct.Memory* @routine_jmpq_.L_40e266(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_40e26b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_40d9e0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_movl__ecx__0x4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 4
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}










define %struct.Memory* @routine_jg_.L_40e34b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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














define %struct.Memory* @routine_cmpl_0x4__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RAX
  %15 = add i64 %14, 4
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jle_.L_40e338(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jmpq_.L_40e33d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_40e2d6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_movl__ecx__0xc__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addl_0x15c__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 348
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}










define %struct.Memory* @routine_cmpl_0xc__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RAX
  %15 = add i64 %14, 12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jle_.L_40e3bb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_addl_0x150__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 336
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_movl__edx____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i32, i32* %EDX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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










define %struct.Memory* @routine_cmpl___rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jle_.L_40e423(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












define %struct.Memory* @routine_addl_0x158__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 344
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}










define %struct.Memory* @routine_cmpl_0x8__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RAX
  %15 = add i64 %14, 8
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jle_.L_40e493(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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










define %struct.Memory* @routine_movl__eax__0x8__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_40e498(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_40d8f8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_40e4dd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jmpq_.L_40e4e6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

