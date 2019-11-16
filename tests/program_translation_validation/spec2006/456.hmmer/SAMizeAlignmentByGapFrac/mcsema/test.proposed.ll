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

declare %struct.Memory* @sub_4015c0.tolower_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4013f0.toupper_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals


define %struct.Memory* @SAMizeAlignmentByGapFrac(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .SAMizeAlignmentByGapFrac:	 RIP: 403390	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 403390	 Bytes: 1
  %loadMem_403390 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403390 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403390)
  store %struct.Memory* %call_403390, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 403391	 Bytes: 3
  %loadMem_403391 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403391 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403391)
  store %struct.Memory* %call_403391, %struct.Memory** %MEMORY

  ; Code: subq $0x20, %rsp	 RIP: 403394	 Bytes: 4
  %loadMem_403394 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403394 = call %struct.Memory* @routine_subq__0x20___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403394)
  store %struct.Memory* %call_403394, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x8(%rbp)	 RIP: 403398	 Bytes: 4
  %loadMem_403398 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403398 = call %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403398)
  store %struct.Memory* %call_403398, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0xc(%rbp)	 RIP: 40339c	 Bytes: 3
  %loadMem_40339c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40339c = call %struct.Memory* @routine_movl__esi__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40339c)
  store %struct.Memory* %call_40339c, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x10(%rbp)	 RIP: 40339f	 Bytes: 3
  %loadMem_40339f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40339f = call %struct.Memory* @routine_movl__edx__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40339f)
  store %struct.Memory* %call_40339f, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x14(%rbp)	 RIP: 4033a2	 Bytes: 5
  %loadMem_4033a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033a2 = call %struct.Memory* @routine_movss__xmm0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033a2)
  store %struct.Memory* %call_4033a2, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 4033a7	 Bytes: 7
  %loadMem_4033a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033a7 = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033a7)
  store %struct.Memory* %call_4033a7, %struct.Memory** %MEMORY

  ; Code: .L_4033ae:	 RIP: 4033ae	 Bytes: 0
  br label %block_.L_4033ae
block_.L_4033ae:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 4033ae	 Bytes: 3
  %loadMem_4033ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033ae = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033ae)
  store %struct.Memory* %call_4033ae, %struct.Memory** %MEMORY

  ; Code: cmpl -0x10(%rbp), %eax	 RIP: 4033b1	 Bytes: 3
  %loadMem_4033b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033b1 = call %struct.Memory* @routine_cmpl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033b1)
  store %struct.Memory* %call_4033b1, %struct.Memory** %MEMORY

  ; Code: jge .L_4036b2	 RIP: 4033b4	 Bytes: 6
  %loadMem_4033b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033b4 = call %struct.Memory* @routine_jge_.L_4036b2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033b4, i8* %BRANCH_TAKEN, i64 766, i64 6, i64 6)
  store %struct.Memory* %call_4033b4, %struct.Memory** %MEMORY

  %loadBr_4033b4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4033b4 = icmp eq i8 %loadBr_4033b4, 1
  br i1 %cmpBr_4033b4, label %block_.L_4036b2, label %block_4033ba

block_4033ba:
  ; Code: movl $0x0, -0x20(%rbp)	 RIP: 4033ba	 Bytes: 7
  %loadMem_4033ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033ba = call %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033ba)
  store %struct.Memory* %call_4033ba, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 4033c1	 Bytes: 7
  %loadMem_4033c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033c1 = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033c1)
  store %struct.Memory* %call_4033c1, %struct.Memory** %MEMORY

  ; Code: .L_4033c8:	 RIP: 4033c8	 Bytes: 0
  br label %block_.L_4033c8
block_.L_4033c8:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4033c8	 Bytes: 3
  %loadMem_4033c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033c8 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033c8)
  store %struct.Memory* %call_4033c8, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 4033cb	 Bytes: 3
  %loadMem_4033cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033cb = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033cb)
  store %struct.Memory* %call_4033cb, %struct.Memory** %MEMORY

  ; Code: jge .L_403481	 RIP: 4033ce	 Bytes: 6
  %loadMem_4033ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033ce = call %struct.Memory* @routine_jge_.L_403481(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033ce, i8* %BRANCH_TAKEN, i64 179, i64 6, i64 6)
  store %struct.Memory* %call_4033ce, %struct.Memory** %MEMORY

  %loadBr_4033ce = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4033ce = icmp eq i8 %loadBr_4033ce, 1
  br i1 %cmpBr_4033ce, label %block_.L_403481, label %block_4033d4

block_4033d4:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 4033d4	 Bytes: 4
  %loadMem_4033d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033d4 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033d4)
  store %struct.Memory* %call_4033d4, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 4033d8	 Bytes: 4
  %loadMem_4033d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033d8 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033d8)
  store %struct.Memory* %call_4033d8, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4033dc	 Bytes: 4
  %loadMem_4033dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033dc = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033dc)
  store %struct.Memory* %call_4033dc, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 4033e0	 Bytes: 4
  %loadMem_4033e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033e0 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033e0)
  store %struct.Memory* %call_4033e0, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 4033e4	 Bytes: 4
  %loadMem_4033e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033e4 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033e4)
  store %struct.Memory* %call_4033e4, %struct.Memory** %MEMORY

  ; Code: cmpl $0x20, %edx	 RIP: 4033e8	 Bytes: 3
  %loadMem_4033e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033e8 = call %struct.Memory* @routine_cmpl__0x20___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033e8)
  store %struct.Memory* %call_4033e8, %struct.Memory** %MEMORY

  ; Code: je .L_403465	 RIP: 4033eb	 Bytes: 6
  %loadMem_4033eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033eb = call %struct.Memory* @routine_je_.L_403465(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033eb, i8* %BRANCH_TAKEN, i64 122, i64 6, i64 6)
  store %struct.Memory* %call_4033eb, %struct.Memory** %MEMORY

  %loadBr_4033eb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4033eb = icmp eq i8 %loadBr_4033eb, 1
  br i1 %cmpBr_4033eb, label %block_.L_403465, label %block_4033f1

block_4033f1:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 4033f1	 Bytes: 4
  %loadMem_4033f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033f1 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033f1)
  store %struct.Memory* %call_4033f1, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 4033f5	 Bytes: 4
  %loadMem_4033f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033f5 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033f5)
  store %struct.Memory* %call_4033f5, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4033f9	 Bytes: 4
  %loadMem_4033f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033f9 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033f9)
  store %struct.Memory* %call_4033f9, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 4033fd	 Bytes: 4
  %loadMem_4033fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033fd = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033fd)
  store %struct.Memory* %call_4033fd, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 403401	 Bytes: 4
  %loadMem_403401 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403401 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403401)
  store %struct.Memory* %call_403401, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2e, %edx	 RIP: 403405	 Bytes: 3
  %loadMem_403405 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403405 = call %struct.Memory* @routine_cmpl__0x2e___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403405)
  store %struct.Memory* %call_403405, %struct.Memory** %MEMORY

  ; Code: je .L_403465	 RIP: 403408	 Bytes: 6
  %loadMem_403408 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403408 = call %struct.Memory* @routine_je_.L_403465(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403408, i8* %BRANCH_TAKEN, i64 93, i64 6, i64 6)
  store %struct.Memory* %call_403408, %struct.Memory** %MEMORY

  %loadBr_403408 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_403408 = icmp eq i8 %loadBr_403408, 1
  br i1 %cmpBr_403408, label %block_.L_403465, label %block_40340e

block_40340e:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 40340e	 Bytes: 4
  %loadMem_40340e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40340e = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40340e)
  store %struct.Memory* %call_40340e, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 403412	 Bytes: 4
  %loadMem_403412 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403412 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403412)
  store %struct.Memory* %call_403412, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 403416	 Bytes: 4
  %loadMem_403416 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403416 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403416)
  store %struct.Memory* %call_403416, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 40341a	 Bytes: 4
  %loadMem_40341a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40341a = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40341a)
  store %struct.Memory* %call_40341a, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 40341e	 Bytes: 4
  %loadMem_40341e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40341e = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40341e)
  store %struct.Memory* %call_40341e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5f, %edx	 RIP: 403422	 Bytes: 3
  %loadMem_403422 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403422 = call %struct.Memory* @routine_cmpl__0x5f___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403422)
  store %struct.Memory* %call_403422, %struct.Memory** %MEMORY

  ; Code: je .L_403465	 RIP: 403425	 Bytes: 6
  %loadMem_403425 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403425 = call %struct.Memory* @routine_je_.L_403465(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403425, i8* %BRANCH_TAKEN, i64 64, i64 6, i64 6)
  store %struct.Memory* %call_403425, %struct.Memory** %MEMORY

  %loadBr_403425 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_403425 = icmp eq i8 %loadBr_403425, 1
  br i1 %cmpBr_403425, label %block_.L_403465, label %block_40342b

block_40342b:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 40342b	 Bytes: 4
  %loadMem_40342b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40342b = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40342b)
  store %struct.Memory* %call_40342b, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 40342f	 Bytes: 4
  %loadMem_40342f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40342f = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40342f)
  store %struct.Memory* %call_40342f, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 403433	 Bytes: 4
  %loadMem_403433 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403433 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403433)
  store %struct.Memory* %call_403433, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 403437	 Bytes: 4
  %loadMem_403437 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403437 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403437)
  store %struct.Memory* %call_403437, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 40343b	 Bytes: 4
  %loadMem_40343b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40343b = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40343b)
  store %struct.Memory* %call_40343b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2d, %edx	 RIP: 40343f	 Bytes: 3
  %loadMem_40343f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40343f = call %struct.Memory* @routine_cmpl__0x2d___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40343f)
  store %struct.Memory* %call_40343f, %struct.Memory** %MEMORY

  ; Code: je .L_403465	 RIP: 403442	 Bytes: 6
  %loadMem_403442 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403442 = call %struct.Memory* @routine_je_.L_403465(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403442, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_403442, %struct.Memory** %MEMORY

  %loadBr_403442 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_403442 = icmp eq i8 %loadBr_403442, 1
  br i1 %cmpBr_403442, label %block_.L_403465, label %block_403448

block_403448:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 403448	 Bytes: 4
  %loadMem_403448 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403448 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403448)
  store %struct.Memory* %call_403448, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 40344c	 Bytes: 4
  %loadMem_40344c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40344c = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40344c)
  store %struct.Memory* %call_40344c, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 403450	 Bytes: 4
  %loadMem_403450 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403450 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403450)
  store %struct.Memory* %call_403450, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 403454	 Bytes: 4
  %loadMem_403454 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403454 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403454)
  store %struct.Memory* %call_403454, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 403458	 Bytes: 4
  %loadMem_403458 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403458 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403458)
  store %struct.Memory* %call_403458, %struct.Memory** %MEMORY

  ; Code: cmpl $0x7e, %edx	 RIP: 40345c	 Bytes: 3
  %loadMem_40345c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40345c = call %struct.Memory* @routine_cmpl__0x7e___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40345c)
  store %struct.Memory* %call_40345c, %struct.Memory** %MEMORY

  ; Code: jne .L_40346e	 RIP: 40345f	 Bytes: 6
  %loadMem_40345f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40345f = call %struct.Memory* @routine_jne_.L_40346e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40345f, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_40345f, %struct.Memory** %MEMORY

  %loadBr_40345f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40345f = icmp eq i8 %loadBr_40345f, 1
  br i1 %cmpBr_40345f, label %block_.L_40346e, label %block_.L_403465

  ; Code: .L_403465:	 RIP: 403465	 Bytes: 0
block_.L_403465:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 403465	 Bytes: 3
  %loadMem_403465 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403465 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403465)
  store %struct.Memory* %call_403465, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 403468	 Bytes: 3
  %loadMem_403468 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403468 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403468)
  store %struct.Memory* %call_403468, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 40346b	 Bytes: 3
  %loadMem_40346b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40346b = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40346b)
  store %struct.Memory* %call_40346b, %struct.Memory** %MEMORY

  ; Code: .L_40346e:	 RIP: 40346e	 Bytes: 0
  br label %block_.L_40346e
block_.L_40346e:

  ; Code: jmpq .L_403473	 RIP: 40346e	 Bytes: 5
  %loadMem_40346e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40346e = call %struct.Memory* @routine_jmpq_.L_403473(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40346e, i64 5, i64 5)
  store %struct.Memory* %call_40346e, %struct.Memory** %MEMORY

  br label %block_.L_403473

  ; Code: .L_403473:	 RIP: 403473	 Bytes: 0
block_.L_403473:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 403473	 Bytes: 3
  %loadMem_403473 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403473 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403473)
  store %struct.Memory* %call_403473, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 403476	 Bytes: 3
  %loadMem_403476 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403476 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403476)
  store %struct.Memory* %call_403476, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 403479	 Bytes: 3
  %loadMem_403479 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403479 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403479)
  store %struct.Memory* %call_403479, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4033c8	 RIP: 40347c	 Bytes: 5
  %loadMem_40347c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40347c = call %struct.Memory* @routine_jmpq_.L_4033c8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40347c, i64 -180, i64 5)
  store %struct.Memory* %call_40347c, %struct.Memory** %MEMORY

  br label %block_.L_4033c8

  ; Code: .L_403481:	 RIP: 403481	 Bytes: 0
block_.L_403481:

  ; Code: cvtsi2ssl -0x20(%rbp), %xmm0	 RIP: 403481	 Bytes: 5
  %loadMem_403481 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403481 = call %struct.Memory* @routine_cvtsi2ssl_MINUS0x20__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403481)
  store %struct.Memory* %call_403481, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl -0xc(%rbp), %xmm1	 RIP: 403486	 Bytes: 5
  %loadMem_403486 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403486 = call %struct.Memory* @routine_cvtsi2ssl_MINUS0xc__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403486)
  store %struct.Memory* %call_403486, %struct.Memory** %MEMORY

  ; Code: divss %xmm1, %xmm0	 RIP: 40348b	 Bytes: 4
  %loadMem_40348b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40348b = call %struct.Memory* @routine_divss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40348b)
  store %struct.Memory* %call_40348b, %struct.Memory** %MEMORY

  ; Code: ucomiss -0x14(%rbp), %xmm0	 RIP: 40348f	 Bytes: 4
  %loadMem_40348f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40348f = call %struct.Memory* @routine_ucomiss_MINUS0x14__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40348f)
  store %struct.Memory* %call_40348f, %struct.Memory** %MEMORY

  ; Code: jbe .L_40359c	 RIP: 403493	 Bytes: 6
  %loadMem_403493 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403493 = call %struct.Memory* @routine_jbe_.L_40359c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403493, i8* %BRANCH_TAKEN, i64 265, i64 6, i64 6)
  store %struct.Memory* %call_403493, %struct.Memory** %MEMORY

  %loadBr_403493 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_403493 = icmp eq i8 %loadBr_403493, 1
  br i1 %cmpBr_403493, label %block_.L_40359c, label %block_403499

block_403499:
  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 403499	 Bytes: 7
  %loadMem_403499 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403499 = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403499)
  store %struct.Memory* %call_403499, %struct.Memory** %MEMORY

  ; Code: .L_4034a0:	 RIP: 4034a0	 Bytes: 0
  br label %block_.L_4034a0
block_.L_4034a0:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4034a0	 Bytes: 3
  %loadMem_4034a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034a0 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034a0)
  store %struct.Memory* %call_4034a0, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 4034a3	 Bytes: 3
  %loadMem_4034a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034a3 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034a3)
  store %struct.Memory* %call_4034a3, %struct.Memory** %MEMORY

  ; Code: jge .L_403597	 RIP: 4034a6	 Bytes: 6
  %loadMem_4034a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034a6 = call %struct.Memory* @routine_jge_.L_403597(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034a6, i8* %BRANCH_TAKEN, i64 241, i64 6, i64 6)
  store %struct.Memory* %call_4034a6, %struct.Memory** %MEMORY

  %loadBr_4034a6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4034a6 = icmp eq i8 %loadBr_4034a6, 1
  br i1 %cmpBr_4034a6, label %block_.L_403597, label %block_4034ac

block_4034ac:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 4034ac	 Bytes: 4
  %loadMem_4034ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034ac = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034ac)
  store %struct.Memory* %call_4034ac, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 4034b0	 Bytes: 4
  %loadMem_4034b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034b0 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034b0)
  store %struct.Memory* %call_4034b0, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4034b4	 Bytes: 4
  %loadMem_4034b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034b4 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034b4)
  store %struct.Memory* %call_4034b4, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 4034b8	 Bytes: 4
  %loadMem_4034b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034b8 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034b8)
  store %struct.Memory* %call_4034b8, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 4034bc	 Bytes: 4
  %loadMem_4034bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034bc = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034bc)
  store %struct.Memory* %call_4034bc, %struct.Memory** %MEMORY

  ; Code: cmpl $0x20, %edx	 RIP: 4034c0	 Bytes: 3
  %loadMem_4034c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034c0 = call %struct.Memory* @routine_cmpl__0x20___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034c0)
  store %struct.Memory* %call_4034c0, %struct.Memory** %MEMORY

  ; Code: je .L_40353d	 RIP: 4034c3	 Bytes: 6
  %loadMem_4034c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034c3 = call %struct.Memory* @routine_je_.L_40353d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034c3, i8* %BRANCH_TAKEN, i64 122, i64 6, i64 6)
  store %struct.Memory* %call_4034c3, %struct.Memory** %MEMORY

  %loadBr_4034c3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4034c3 = icmp eq i8 %loadBr_4034c3, 1
  br i1 %cmpBr_4034c3, label %block_.L_40353d, label %block_4034c9

block_4034c9:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 4034c9	 Bytes: 4
  %loadMem_4034c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034c9 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034c9)
  store %struct.Memory* %call_4034c9, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 4034cd	 Bytes: 4
  %loadMem_4034cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034cd = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034cd)
  store %struct.Memory* %call_4034cd, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4034d1	 Bytes: 4
  %loadMem_4034d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034d1 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034d1)
  store %struct.Memory* %call_4034d1, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 4034d5	 Bytes: 4
  %loadMem_4034d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034d5 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034d5)
  store %struct.Memory* %call_4034d5, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 4034d9	 Bytes: 4
  %loadMem_4034d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034d9 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034d9)
  store %struct.Memory* %call_4034d9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2e, %edx	 RIP: 4034dd	 Bytes: 3
  %loadMem_4034dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034dd = call %struct.Memory* @routine_cmpl__0x2e___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034dd)
  store %struct.Memory* %call_4034dd, %struct.Memory** %MEMORY

  ; Code: je .L_40353d	 RIP: 4034e0	 Bytes: 6
  %loadMem_4034e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034e0 = call %struct.Memory* @routine_je_.L_40353d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034e0, i8* %BRANCH_TAKEN, i64 93, i64 6, i64 6)
  store %struct.Memory* %call_4034e0, %struct.Memory** %MEMORY

  %loadBr_4034e0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4034e0 = icmp eq i8 %loadBr_4034e0, 1
  br i1 %cmpBr_4034e0, label %block_.L_40353d, label %block_4034e6

block_4034e6:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 4034e6	 Bytes: 4
  %loadMem_4034e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034e6 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034e6)
  store %struct.Memory* %call_4034e6, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 4034ea	 Bytes: 4
  %loadMem_4034ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034ea = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034ea)
  store %struct.Memory* %call_4034ea, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4034ee	 Bytes: 4
  %loadMem_4034ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034ee = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034ee)
  store %struct.Memory* %call_4034ee, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 4034f2	 Bytes: 4
  %loadMem_4034f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034f2 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034f2)
  store %struct.Memory* %call_4034f2, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 4034f6	 Bytes: 4
  %loadMem_4034f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034f6 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034f6)
  store %struct.Memory* %call_4034f6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5f, %edx	 RIP: 4034fa	 Bytes: 3
  %loadMem_4034fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034fa = call %struct.Memory* @routine_cmpl__0x5f___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034fa)
  store %struct.Memory* %call_4034fa, %struct.Memory** %MEMORY

  ; Code: je .L_40353d	 RIP: 4034fd	 Bytes: 6
  %loadMem_4034fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034fd = call %struct.Memory* @routine_je_.L_40353d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034fd, i8* %BRANCH_TAKEN, i64 64, i64 6, i64 6)
  store %struct.Memory* %call_4034fd, %struct.Memory** %MEMORY

  %loadBr_4034fd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4034fd = icmp eq i8 %loadBr_4034fd, 1
  br i1 %cmpBr_4034fd, label %block_.L_40353d, label %block_403503

block_403503:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 403503	 Bytes: 4
  %loadMem_403503 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403503 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403503)
  store %struct.Memory* %call_403503, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 403507	 Bytes: 4
  %loadMem_403507 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403507 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403507)
  store %struct.Memory* %call_403507, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40350b	 Bytes: 4
  %loadMem_40350b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40350b = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40350b)
  store %struct.Memory* %call_40350b, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 40350f	 Bytes: 4
  %loadMem_40350f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40350f = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40350f)
  store %struct.Memory* %call_40350f, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 403513	 Bytes: 4
  %loadMem_403513 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403513 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403513)
  store %struct.Memory* %call_403513, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2d, %edx	 RIP: 403517	 Bytes: 3
  %loadMem_403517 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403517 = call %struct.Memory* @routine_cmpl__0x2d___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403517)
  store %struct.Memory* %call_403517, %struct.Memory** %MEMORY

  ; Code: je .L_40353d	 RIP: 40351a	 Bytes: 6
  %loadMem_40351a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40351a = call %struct.Memory* @routine_je_.L_40353d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40351a, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_40351a, %struct.Memory** %MEMORY

  %loadBr_40351a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40351a = icmp eq i8 %loadBr_40351a, 1
  br i1 %cmpBr_40351a, label %block_.L_40353d, label %block_403520

block_403520:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 403520	 Bytes: 4
  %loadMem_403520 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403520 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403520)
  store %struct.Memory* %call_403520, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 403524	 Bytes: 4
  %loadMem_403524 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403524 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403524)
  store %struct.Memory* %call_403524, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 403528	 Bytes: 4
  %loadMem_403528 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403528 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403528)
  store %struct.Memory* %call_403528, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 40352c	 Bytes: 4
  %loadMem_40352c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40352c = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40352c)
  store %struct.Memory* %call_40352c, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 403530	 Bytes: 4
  %loadMem_403530 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403530 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403530)
  store %struct.Memory* %call_403530, %struct.Memory** %MEMORY

  ; Code: cmpl $0x7e, %edx	 RIP: 403534	 Bytes: 3
  %loadMem_403534 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403534 = call %struct.Memory* @routine_cmpl__0x7e___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403534)
  store %struct.Memory* %call_403534, %struct.Memory** %MEMORY

  ; Code: jne .L_403556	 RIP: 403537	 Bytes: 6
  %loadMem_403537 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403537 = call %struct.Memory* @routine_jne_.L_403556(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403537, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_403537, %struct.Memory** %MEMORY

  %loadBr_403537 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_403537 = icmp eq i8 %loadBr_403537, 1
  br i1 %cmpBr_403537, label %block_.L_403556, label %block_.L_40353d

  ; Code: .L_40353d:	 RIP: 40353d	 Bytes: 0
block_.L_40353d:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 40353d	 Bytes: 4
  %loadMem_40353d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40353d = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40353d)
  store %struct.Memory* %call_40353d, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 403541	 Bytes: 4
  %loadMem_403541 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403541 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403541)
  store %struct.Memory* %call_403541, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 403545	 Bytes: 4
  %loadMem_403545 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403545 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403545)
  store %struct.Memory* %call_403545, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 403549	 Bytes: 4
  %loadMem_403549 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403549 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403549)
  store %struct.Memory* %call_403549, %struct.Memory** %MEMORY

  ; Code: movb $0x2e, (%rax,%rcx,1)	 RIP: 40354d	 Bytes: 4
  %loadMem_40354d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40354d = call %struct.Memory* @routine_movb__0x2e____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40354d)
  store %struct.Memory* %call_40354d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_403584	 RIP: 403551	 Bytes: 5
  %loadMem_403551 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403551 = call %struct.Memory* @routine_jmpq_.L_403584(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403551, i64 51, i64 5)
  store %struct.Memory* %call_403551, %struct.Memory** %MEMORY

  br label %block_.L_403584

  ; Code: .L_403556:	 RIP: 403556	 Bytes: 0
block_.L_403556:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 403556	 Bytes: 4
  %loadMem_403556 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403556 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403556)
  store %struct.Memory* %call_403556, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 40355a	 Bytes: 4
  %loadMem_40355a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40355a = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40355a)
  store %struct.Memory* %call_40355a, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40355e	 Bytes: 4
  %loadMem_40355e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40355e = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40355e)
  store %struct.Memory* %call_40355e, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 403562	 Bytes: 4
  %loadMem_403562 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403562 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403562)
  store %struct.Memory* %call_403562, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edi	 RIP: 403566	 Bytes: 4
  %loadMem_403566 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403566 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403566)
  store %struct.Memory* %call_403566, %struct.Memory** %MEMORY

  ; Code: callq .tolower_plt	 RIP: 40356a	 Bytes: 5
  %loadMem1_40356a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40356a = call %struct.Memory* @routine_callq_.tolower_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40356a, i64 -8106, i64 5, i64 5)
  store %struct.Memory* %call1_40356a, %struct.Memory** %MEMORY

  %loadMem2_40356a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40356a = load i64, i64* %3
  %call2_40356a = call %struct.Memory* @sub_4015c0.tolower_plt(%struct.State* %0, i64  %loadPC_40356a, %struct.Memory* %loadMem2_40356a)
  store %struct.Memory* %call2_40356a, %struct.Memory** %MEMORY

  ; Code: movb %al, %dl	 RIP: 40356f	 Bytes: 2
  %loadMem_40356f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40356f = call %struct.Memory* @routine_movb__al___dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40356f)
  store %struct.Memory* %call_40356f, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 403571	 Bytes: 4
  %loadMem_403571 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403571 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403571)
  store %struct.Memory* %call_403571, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rsi	 RIP: 403575	 Bytes: 4
  %loadMem_403575 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403575 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403575)
  store %struct.Memory* %call_403575, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rsi,8), %rcx	 RIP: 403579	 Bytes: 4
  %loadMem_403579 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403579 = call %struct.Memory* @routine_movq___rcx__rsi_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403579)
  store %struct.Memory* %call_403579, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rsi	 RIP: 40357d	 Bytes: 4
  %loadMem_40357d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40357d = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40357d)
  store %struct.Memory* %call_40357d, %struct.Memory** %MEMORY

  ; Code: movb %dl, (%rcx,%rsi,1)	 RIP: 403581	 Bytes: 3
  %loadMem_403581 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403581 = call %struct.Memory* @routine_movb__dl____rcx__rsi_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403581)
  store %struct.Memory* %call_403581, %struct.Memory** %MEMORY

  ; Code: .L_403584:	 RIP: 403584	 Bytes: 0
  br label %block_.L_403584
block_.L_403584:

  ; Code: jmpq .L_403589	 RIP: 403584	 Bytes: 5
  %loadMem_403584 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403584 = call %struct.Memory* @routine_jmpq_.L_403589(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403584, i64 5, i64 5)
  store %struct.Memory* %call_403584, %struct.Memory** %MEMORY

  br label %block_.L_403589

  ; Code: .L_403589:	 RIP: 403589	 Bytes: 0
block_.L_403589:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 403589	 Bytes: 3
  %loadMem_403589 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403589 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403589)
  store %struct.Memory* %call_403589, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40358c	 Bytes: 3
  %loadMem_40358c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40358c = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40358c)
  store %struct.Memory* %call_40358c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 40358f	 Bytes: 3
  %loadMem_40358f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40358f = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40358f)
  store %struct.Memory* %call_40358f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4034a0	 RIP: 403592	 Bytes: 5
  %loadMem_403592 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403592 = call %struct.Memory* @routine_jmpq_.L_4034a0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403592, i64 -242, i64 5)
  store %struct.Memory* %call_403592, %struct.Memory** %MEMORY

  br label %block_.L_4034a0

  ; Code: .L_403597:	 RIP: 403597	 Bytes: 0
block_.L_403597:

  ; Code: jmpq .L_40369f	 RIP: 403597	 Bytes: 5
  %loadMem_403597 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403597 = call %struct.Memory* @routine_jmpq_.L_40369f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403597, i64 264, i64 5)
  store %struct.Memory* %call_403597, %struct.Memory** %MEMORY

  br label %block_.L_40369f

  ; Code: .L_40359c:	 RIP: 40359c	 Bytes: 0
block_.L_40359c:

  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 40359c	 Bytes: 7
  %loadMem_40359c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40359c = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40359c)
  store %struct.Memory* %call_40359c, %struct.Memory** %MEMORY

  ; Code: .L_4035a3:	 RIP: 4035a3	 Bytes: 0
  br label %block_.L_4035a3
block_.L_4035a3:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4035a3	 Bytes: 3
  %loadMem_4035a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035a3 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035a3)
  store %struct.Memory* %call_4035a3, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 4035a6	 Bytes: 3
  %loadMem_4035a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035a6 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035a6)
  store %struct.Memory* %call_4035a6, %struct.Memory** %MEMORY

  ; Code: jge .L_40369a	 RIP: 4035a9	 Bytes: 6
  %loadMem_4035a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035a9 = call %struct.Memory* @routine_jge_.L_40369a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035a9, i8* %BRANCH_TAKEN, i64 241, i64 6, i64 6)
  store %struct.Memory* %call_4035a9, %struct.Memory** %MEMORY

  %loadBr_4035a9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4035a9 = icmp eq i8 %loadBr_4035a9, 1
  br i1 %cmpBr_4035a9, label %block_.L_40369a, label %block_4035af

block_4035af:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 4035af	 Bytes: 4
  %loadMem_4035af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035af = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035af)
  store %struct.Memory* %call_4035af, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 4035b3	 Bytes: 4
  %loadMem_4035b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035b3 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035b3)
  store %struct.Memory* %call_4035b3, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4035b7	 Bytes: 4
  %loadMem_4035b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035b7 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035b7)
  store %struct.Memory* %call_4035b7, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 4035bb	 Bytes: 4
  %loadMem_4035bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035bb = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035bb)
  store %struct.Memory* %call_4035bb, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 4035bf	 Bytes: 4
  %loadMem_4035bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035bf = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035bf)
  store %struct.Memory* %call_4035bf, %struct.Memory** %MEMORY

  ; Code: cmpl $0x20, %edx	 RIP: 4035c3	 Bytes: 3
  %loadMem_4035c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035c3 = call %struct.Memory* @routine_cmpl__0x20___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035c3)
  store %struct.Memory* %call_4035c3, %struct.Memory** %MEMORY

  ; Code: je .L_403640	 RIP: 4035c6	 Bytes: 6
  %loadMem_4035c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035c6 = call %struct.Memory* @routine_je_.L_403640(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035c6, i8* %BRANCH_TAKEN, i64 122, i64 6, i64 6)
  store %struct.Memory* %call_4035c6, %struct.Memory** %MEMORY

  %loadBr_4035c6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4035c6 = icmp eq i8 %loadBr_4035c6, 1
  br i1 %cmpBr_4035c6, label %block_.L_403640, label %block_4035cc

block_4035cc:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 4035cc	 Bytes: 4
  %loadMem_4035cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035cc = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035cc)
  store %struct.Memory* %call_4035cc, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 4035d0	 Bytes: 4
  %loadMem_4035d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035d0 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035d0)
  store %struct.Memory* %call_4035d0, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4035d4	 Bytes: 4
  %loadMem_4035d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035d4 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035d4)
  store %struct.Memory* %call_4035d4, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 4035d8	 Bytes: 4
  %loadMem_4035d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035d8 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035d8)
  store %struct.Memory* %call_4035d8, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 4035dc	 Bytes: 4
  %loadMem_4035dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035dc = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035dc)
  store %struct.Memory* %call_4035dc, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2e, %edx	 RIP: 4035e0	 Bytes: 3
  %loadMem_4035e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035e0 = call %struct.Memory* @routine_cmpl__0x2e___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035e0)
  store %struct.Memory* %call_4035e0, %struct.Memory** %MEMORY

  ; Code: je .L_403640	 RIP: 4035e3	 Bytes: 6
  %loadMem_4035e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035e3 = call %struct.Memory* @routine_je_.L_403640(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035e3, i8* %BRANCH_TAKEN, i64 93, i64 6, i64 6)
  store %struct.Memory* %call_4035e3, %struct.Memory** %MEMORY

  %loadBr_4035e3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4035e3 = icmp eq i8 %loadBr_4035e3, 1
  br i1 %cmpBr_4035e3, label %block_.L_403640, label %block_4035e9

block_4035e9:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 4035e9	 Bytes: 4
  %loadMem_4035e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035e9 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035e9)
  store %struct.Memory* %call_4035e9, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 4035ed	 Bytes: 4
  %loadMem_4035ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035ed = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035ed)
  store %struct.Memory* %call_4035ed, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4035f1	 Bytes: 4
  %loadMem_4035f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035f1 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035f1)
  store %struct.Memory* %call_4035f1, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 4035f5	 Bytes: 4
  %loadMem_4035f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035f5 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035f5)
  store %struct.Memory* %call_4035f5, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 4035f9	 Bytes: 4
  %loadMem_4035f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035f9 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035f9)
  store %struct.Memory* %call_4035f9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5f, %edx	 RIP: 4035fd	 Bytes: 3
  %loadMem_4035fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035fd = call %struct.Memory* @routine_cmpl__0x5f___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035fd)
  store %struct.Memory* %call_4035fd, %struct.Memory** %MEMORY

  ; Code: je .L_403640	 RIP: 403600	 Bytes: 6
  %loadMem_403600 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403600 = call %struct.Memory* @routine_je_.L_403640(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403600, i8* %BRANCH_TAKEN, i64 64, i64 6, i64 6)
  store %struct.Memory* %call_403600, %struct.Memory** %MEMORY

  %loadBr_403600 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_403600 = icmp eq i8 %loadBr_403600, 1
  br i1 %cmpBr_403600, label %block_.L_403640, label %block_403606

block_403606:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 403606	 Bytes: 4
  %loadMem_403606 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403606 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403606)
  store %struct.Memory* %call_403606, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 40360a	 Bytes: 4
  %loadMem_40360a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40360a = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40360a)
  store %struct.Memory* %call_40360a, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40360e	 Bytes: 4
  %loadMem_40360e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40360e = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40360e)
  store %struct.Memory* %call_40360e, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 403612	 Bytes: 4
  %loadMem_403612 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403612 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403612)
  store %struct.Memory* %call_403612, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 403616	 Bytes: 4
  %loadMem_403616 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403616 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403616)
  store %struct.Memory* %call_403616, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2d, %edx	 RIP: 40361a	 Bytes: 3
  %loadMem_40361a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40361a = call %struct.Memory* @routine_cmpl__0x2d___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40361a)
  store %struct.Memory* %call_40361a, %struct.Memory** %MEMORY

  ; Code: je .L_403640	 RIP: 40361d	 Bytes: 6
  %loadMem_40361d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40361d = call %struct.Memory* @routine_je_.L_403640(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40361d, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_40361d, %struct.Memory** %MEMORY

  %loadBr_40361d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40361d = icmp eq i8 %loadBr_40361d, 1
  br i1 %cmpBr_40361d, label %block_.L_403640, label %block_403623

block_403623:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 403623	 Bytes: 4
  %loadMem_403623 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403623 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403623)
  store %struct.Memory* %call_403623, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 403627	 Bytes: 4
  %loadMem_403627 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403627 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403627)
  store %struct.Memory* %call_403627, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40362b	 Bytes: 4
  %loadMem_40362b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40362b = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40362b)
  store %struct.Memory* %call_40362b, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 40362f	 Bytes: 4
  %loadMem_40362f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40362f = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40362f)
  store %struct.Memory* %call_40362f, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 403633	 Bytes: 4
  %loadMem_403633 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403633 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403633)
  store %struct.Memory* %call_403633, %struct.Memory** %MEMORY

  ; Code: cmpl $0x7e, %edx	 RIP: 403637	 Bytes: 3
  %loadMem_403637 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403637 = call %struct.Memory* @routine_cmpl__0x7e___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403637)
  store %struct.Memory* %call_403637, %struct.Memory** %MEMORY

  ; Code: jne .L_403659	 RIP: 40363a	 Bytes: 6
  %loadMem_40363a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40363a = call %struct.Memory* @routine_jne_.L_403659(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40363a, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_40363a, %struct.Memory** %MEMORY

  %loadBr_40363a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40363a = icmp eq i8 %loadBr_40363a, 1
  br i1 %cmpBr_40363a, label %block_.L_403659, label %block_.L_403640

  ; Code: .L_403640:	 RIP: 403640	 Bytes: 0
block_.L_403640:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 403640	 Bytes: 4
  %loadMem_403640 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403640 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403640)
  store %struct.Memory* %call_403640, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 403644	 Bytes: 4
  %loadMem_403644 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403644 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403644)
  store %struct.Memory* %call_403644, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 403648	 Bytes: 4
  %loadMem_403648 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403648 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403648)
  store %struct.Memory* %call_403648, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 40364c	 Bytes: 4
  %loadMem_40364c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40364c = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40364c)
  store %struct.Memory* %call_40364c, %struct.Memory** %MEMORY

  ; Code: movb $0x2d, (%rax,%rcx,1)	 RIP: 403650	 Bytes: 4
  %loadMem_403650 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403650 = call %struct.Memory* @routine_movb__0x2d____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403650)
  store %struct.Memory* %call_403650, %struct.Memory** %MEMORY

  ; Code: jmpq .L_403687	 RIP: 403654	 Bytes: 5
  %loadMem_403654 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403654 = call %struct.Memory* @routine_jmpq_.L_403687(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403654, i64 51, i64 5)
  store %struct.Memory* %call_403654, %struct.Memory** %MEMORY

  br label %block_.L_403687

  ; Code: .L_403659:	 RIP: 403659	 Bytes: 0
block_.L_403659:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 403659	 Bytes: 4
  %loadMem_403659 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403659 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403659)
  store %struct.Memory* %call_403659, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 40365d	 Bytes: 4
  %loadMem_40365d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40365d = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40365d)
  store %struct.Memory* %call_40365d, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 403661	 Bytes: 4
  %loadMem_403661 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403661 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403661)
  store %struct.Memory* %call_403661, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 403665	 Bytes: 4
  %loadMem_403665 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403665 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403665)
  store %struct.Memory* %call_403665, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edi	 RIP: 403669	 Bytes: 4
  %loadMem_403669 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403669 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403669)
  store %struct.Memory* %call_403669, %struct.Memory** %MEMORY

  ; Code: callq .toupper_plt	 RIP: 40366d	 Bytes: 5
  %loadMem1_40366d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40366d = call %struct.Memory* @routine_callq_.toupper_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40366d, i64 -8829, i64 5, i64 5)
  store %struct.Memory* %call1_40366d, %struct.Memory** %MEMORY

  %loadMem2_40366d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40366d = load i64, i64* %3
  %call2_40366d = call %struct.Memory* @sub_4013f0.toupper_plt(%struct.State* %0, i64  %loadPC_40366d, %struct.Memory* %loadMem2_40366d)
  store %struct.Memory* %call2_40366d, %struct.Memory** %MEMORY

  ; Code: movb %al, %dl	 RIP: 403672	 Bytes: 2
  %loadMem_403672 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403672 = call %struct.Memory* @routine_movb__al___dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403672)
  store %struct.Memory* %call_403672, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 403674	 Bytes: 4
  %loadMem_403674 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403674 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403674)
  store %struct.Memory* %call_403674, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rsi	 RIP: 403678	 Bytes: 4
  %loadMem_403678 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403678 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403678)
  store %struct.Memory* %call_403678, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rsi,8), %rcx	 RIP: 40367c	 Bytes: 4
  %loadMem_40367c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40367c = call %struct.Memory* @routine_movq___rcx__rsi_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40367c)
  store %struct.Memory* %call_40367c, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rsi	 RIP: 403680	 Bytes: 4
  %loadMem_403680 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403680 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403680)
  store %struct.Memory* %call_403680, %struct.Memory** %MEMORY

  ; Code: movb %dl, (%rcx,%rsi,1)	 RIP: 403684	 Bytes: 3
  %loadMem_403684 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403684 = call %struct.Memory* @routine_movb__dl____rcx__rsi_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403684)
  store %struct.Memory* %call_403684, %struct.Memory** %MEMORY

  ; Code: .L_403687:	 RIP: 403687	 Bytes: 0
  br label %block_.L_403687
block_.L_403687:

  ; Code: jmpq .L_40368c	 RIP: 403687	 Bytes: 5
  %loadMem_403687 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403687 = call %struct.Memory* @routine_jmpq_.L_40368c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403687, i64 5, i64 5)
  store %struct.Memory* %call_403687, %struct.Memory** %MEMORY

  br label %block_.L_40368c

  ; Code: .L_40368c:	 RIP: 40368c	 Bytes: 0
block_.L_40368c:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 40368c	 Bytes: 3
  %loadMem_40368c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40368c = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40368c)
  store %struct.Memory* %call_40368c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40368f	 Bytes: 3
  %loadMem_40368f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40368f = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40368f)
  store %struct.Memory* %call_40368f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 403692	 Bytes: 3
  %loadMem_403692 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403692 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403692)
  store %struct.Memory* %call_403692, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4035a3	 RIP: 403695	 Bytes: 5
  %loadMem_403695 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403695 = call %struct.Memory* @routine_jmpq_.L_4035a3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403695, i64 -242, i64 5)
  store %struct.Memory* %call_403695, %struct.Memory** %MEMORY

  br label %block_.L_4035a3

  ; Code: .L_40369a:	 RIP: 40369a	 Bytes: 0
block_.L_40369a:

  ; Code: jmpq .L_40369f	 RIP: 40369a	 Bytes: 5
  %loadMem_40369a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40369a = call %struct.Memory* @routine_jmpq_.L_40369f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40369a, i64 5, i64 5)
  store %struct.Memory* %call_40369a, %struct.Memory** %MEMORY

  br label %block_.L_40369f

  ; Code: .L_40369f:	 RIP: 40369f	 Bytes: 0
block_.L_40369f:

  ; Code: jmpq .L_4036a4	 RIP: 40369f	 Bytes: 5
  %loadMem_40369f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40369f = call %struct.Memory* @routine_jmpq_.L_4036a4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40369f, i64 5, i64 5)
  store %struct.Memory* %call_40369f, %struct.Memory** %MEMORY

  br label %block_.L_4036a4

  ; Code: .L_4036a4:	 RIP: 4036a4	 Bytes: 0
block_.L_4036a4:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 4036a4	 Bytes: 3
  %loadMem_4036a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036a4 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036a4)
  store %struct.Memory* %call_4036a4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4036a7	 Bytes: 3
  %loadMem_4036a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036a7 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036a7)
  store %struct.Memory* %call_4036a7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 4036aa	 Bytes: 3
  %loadMem_4036aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036aa = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036aa)
  store %struct.Memory* %call_4036aa, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4033ae	 RIP: 4036ad	 Bytes: 5
  %loadMem_4036ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036ad = call %struct.Memory* @routine_jmpq_.L_4033ae(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036ad, i64 -767, i64 5)
  store %struct.Memory* %call_4036ad, %struct.Memory** %MEMORY

  br label %block_.L_4033ae

  ; Code: .L_4036b2:	 RIP: 4036b2	 Bytes: 0
block_.L_4036b2:

  ; Code: addq $0x20, %rsp	 RIP: 4036b2	 Bytes: 4
  %loadMem_4036b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036b2 = call %struct.Memory* @routine_addq__0x20___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036b2)
  store %struct.Memory* %call_4036b2, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 4036b6	 Bytes: 1
  %loadMem_4036b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036b6 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036b6)
  store %struct.Memory* %call_4036b6, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 4036b7	 Bytes: 1
  %loadMem_4036b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036b7 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036b7)
  store %struct.Memory* %call_4036b7, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_4036b7
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


define %struct.Memory* @routine_movl__edx__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i8* nocapture readonly) #7 {
  %5 = bitcast i8* %3 to <2 x float>*
  %6 = load <2 x float>, <2 x float>* %5, align 1
  %7 = extractelement <2 x float> %6, i32 0
  %8 = inttoptr i64 %2 to float*
  store float %7, float* %8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 20
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
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

define %struct.Memory* @routine_cmpl_MINUS0x10__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 16
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

define %struct.Memory* @routine_jge_.L_4036b2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jge_.L_403481(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  %7 = sext i8 %6 to i64
  %8 = and i64 %7, 4294967295
  store i64 %8, i64* %2, align 8
  ret %struct.Memory* %0
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

define %struct.Memory* @routine_cmpl__0x20___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 32)
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

define %struct.Memory* @routine_je_.L_403465(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












define %struct.Memory* @routine_cmpl__0x2e___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 46)
  ret %struct.Memory* %13
}














define %struct.Memory* @routine_cmpl__0x5f___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 95)
  ret %struct.Memory* %13
}














define %struct.Memory* @routine_cmpl__0x2d___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 45)
  ret %struct.Memory* %13
}














define %struct.Memory* @routine_cmpl__0x7e___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 126)
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

define %struct.Memory* @routine_jne_.L_40346e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_403473(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_4033c8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SSI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory*, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = bitcast i8* %2 to <2 x i32>*
  %6 = load <2 x i32>, <2 x i32>* %5, align 1
  %7 = getelementptr inbounds i8, i8* %2, i64 8
  %8 = bitcast i8* %7 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = inttoptr i64 %3 to i32*
  %11 = load i32, i32* %10
  %12 = sitofp i32 %11 to float
  %13 = bitcast i8* %2 to float*
  store float %12, float* %13, align 1
  %14 = extractelement <2 x i32> %6, i32 1
  %15 = getelementptr inbounds i8, i8* %2, i64 4
  %16 = bitcast i8* %15 to i32*
  store i32 %14, i32* %16, align 1
  %17 = extractelement <2 x i32> %9, i32 0
  %18 = bitcast i8* %7 to i32*
  store i32 %17, i32* %18, align 1
  %19 = extractelement <2 x i32> %9, i32 1
  %20 = getelementptr inbounds i8, i8* %2, i64 12
  %21 = bitcast i8* %20 to i32*
  store i32 %19, i32* %21, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvtsi2ssl_MINUS0x20__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SSI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cvtsi2ssl_MINUS0xc__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SSI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSSI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = bitcast i8* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = bitcast i8* %4 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %7, i32 0
  %14 = extractelement <2 x float> %12, i32 0
  %15 = fdiv float %13, %14
  %16 = bitcast i8* %2 to float*
  store float %15, float* %16, align 1
  %17 = bitcast <2 x float> %7 to <2 x i32>
  %18 = extractelement <2 x i32> %17, i32 1
  %19 = getelementptr inbounds i8, i8* %2, i64 4
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %10, i32 0
  %22 = getelementptr inbounds i8, i8* %2, i64 8
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  %24 = extractelement <2 x i32> %10, i32 1
  %25 = getelementptr inbounds i8, i8* %2, i64 12
  %26 = bitcast i8* %25 to i32*
  store i32 %24, i32* %26, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_divss__xmm1___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %union.vec128_t* %XMM1 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSSI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory*, %struct.State* dereferenceable(3376), i8* nocapture readonly, i64) #0 {
  %5 = bitcast i8* %2 to <2 x float>*
  %6 = load <2 x float>, <2 x float>* %5, align 1
  %7 = extractelement <2 x float> %6, i32 0
  %8 = inttoptr i64 %3 to float*
  %9 = load float, float* %8
  %10 = fcmp uno float %7, %9
  br i1 %10, label %11, label %23

; <label>:11:                                     ; preds = %4
  %12 = fadd float %7, %9
  %13 = bitcast float %12 to i32
  %14 = and i32 %13, 2143289344
  %15 = icmp eq i32 %14, 2139095040
  %16 = and i32 %13, 4194303
  %17 = icmp ne i32 %16, 0
  %18 = and i1 %15, %17
  br i1 %18, label %19, label %29

; <label>:19:                                     ; preds = %11
  %20 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %1, i64 %21, %struct.Memory* %0) #21
  br label %40

; <label>:23:                                     ; preds = %4
  %24 = fcmp ogt float %7, %9
  br i1 %24, label %29, label %25

; <label>:25:                                     ; preds = %23
  %26 = fcmp olt float %7, %9
  br i1 %26, label %29, label %27

; <label>:27:                                     ; preds = %25
  %28 = fcmp oeq float %7, %9
  br i1 %28, label %29, label %36

; <label>:29:                                     ; preds = %27, %25, %23, %11
  %30 = phi i8 [ 0, %23 ], [ 0, %25 ], [ 1, %27 ], [ 1, %11 ]
  %31 = phi i8 [ 0, %23 ], [ 0, %25 ], [ 0, %27 ], [ 1, %11 ]
  %32 = phi i8 [ 0, %23 ], [ 1, %25 ], [ 0, %27 ], [ 1, %11 ]
  %33 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %30, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %31, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %32, i8* %35, align 1
  br label %36

; <label>:36:                                     ; preds = %29, %27
  %37 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %39, align 1
  br label %40

; <label>:40:                                     ; preds = %36, %19
  %41 = phi %struct.Memory* [ %22, %19 ], [ %0, %36 ]
  ret %struct.Memory* %41
}

define %struct.Memory* @routine_ucomiss_MINUS0x14__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 {
  %6 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  %7 = load i8, i8* %6, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %9 = load i8, i8* %8, align 1
  %10 = or i8 %9, %7
  %11 = icmp ne i8 %10, 0
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %2, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %14 = select i1 %11, i64 %3, i64 %4
  store i64 %14, i64* %13, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jbe_.L_40359c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}








define %struct.Memory* @routine_jge_.L_403597(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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














define %struct.Memory* @routine_je_.L_40353d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
























































define %struct.Memory* @routine_jne_.L_403556(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movb__0x2e____rax__rcx_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 46)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_403584(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_movsbl___rax__rcx_1____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = add i64 %16, %15
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 4
  store i64 %19, i64* %PC
  %20 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %17)
  ret %struct.Memory* %20
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

define %struct.Memory* @routine_callq_.tolower_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #2 {
  %5 = trunc i64 %3 to i8
  store i8 %5, i8* %2, align 1
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq___rcx__rsi_8____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RSI
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__dl____rcx__rsi_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 9
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RSI = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %RSI
  %18 = add i64 %17, %16
  %19 = load i8, i8* %DL
  %20 = zext i8 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_jmpq_.L_403589(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_4034a0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_40369f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jge_.L_40369a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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














define %struct.Memory* @routine_je_.L_403640(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
























































define %struct.Memory* @routine_jne_.L_403659(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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










define %struct.Memory* @routine_movb__0x2d____rax__rcx_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 45)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_403687(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_callq_.toupper_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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














define %struct.Memory* @routine_jmpq_.L_40368c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_4035a3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jmpq_.L_4036a4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_4033ae(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

