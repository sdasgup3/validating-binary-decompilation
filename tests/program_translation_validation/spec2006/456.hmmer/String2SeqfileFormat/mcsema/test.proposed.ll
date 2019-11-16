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

declare %struct.Memory* @sub_446720.sre_strdup(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_446010.s2upper(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G__0x455d2b_type = type <{ [4 x i8] }>
@G__0x455d2b= global %G__0x455d2b_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x4568a6_type = type <{ [4 x i8] }>
@G__0x4568a6= global %G__0x4568a6_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x45a56d_type = type <{ [4 x i8] }>
@G__0x45a56d= global %G__0x45a56d_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x45a573_type = type <{ [4 x i8] }>
@G__0x45a573= global %G__0x45a573_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x45a57b_type = type <{ [4 x i8] }>
@G__0x45a57b= global %G__0x45a57b_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x45a580_type = type <{ [4 x i8] }>
@G__0x45a580= global %G__0x45a580_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x45a584_type = type <{ [4 x i8] }>
@G__0x45a584= global %G__0x45a584_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x45a58c_type = type <{ [4 x i8] }>
@G__0x45a58c= global %G__0x45a58c_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x45a58f_type = type <{ [4 x i8] }>
@G__0x45a58f= global %G__0x45a58f_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x45a597_type = type <{ [4 x i8] }>
@G__0x45a597= global %G__0x45a597_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x45a599_type = type <{ [4 x i8] }>
@G__0x45a599= global %G__0x45a599_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x45a59d_type = type <{ [4 x i8] }>
@G__0x45a59d= global %G__0x45a59d_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x45a5a3_type = type <{ [4 x i8] }>
@G__0x45a5a3= global %G__0x45a5a3_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x45a5a7_type = type <{ [4 x i8] }>
@G__0x45a5a7= global %G__0x45a5a7_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x45a5ad_type = type <{ [4 x i8] }>
@G__0x45a5ad= global %G__0x45a5ad_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x45a5b7_type = type <{ [4 x i8] }>
@G__0x45a5b7= global %G__0x45a5b7_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x45a5bd_type = type <{ [4 x i8] }>
@G__0x45a5bd= global %G__0x45a5bd_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x45a5c1_type = type <{ [4 x i8] }>
@G__0x45a5c1= global %G__0x45a5c1_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x45a5c5_type = type <{ [4 x i8] }>
@G__0x45a5c5= global %G__0x45a5c5_type <{ [4 x i8] c"\00\00\00\00" }>


define %struct.Memory* @String2SeqfileFormat(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .String2SeqfileFormat:	 RIP: 443fb0	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 443fb0	 Bytes: 1
  %loadMem_443fb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443fb0 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443fb0)
  store %struct.Memory* %call_443fb0, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 443fb1	 Bytes: 3
  %loadMem_443fb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443fb1 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443fb1)
  store %struct.Memory* %call_443fb1, %struct.Memory** %MEMORY

  ; Code: subq $0x20, %rsp	 RIP: 443fb4	 Bytes: 4
  %loadMem_443fb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443fb4 = call %struct.Memory* @routine_subq__0x20___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443fb4)
  store %struct.Memory* %call_443fb4, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x10(%rbp)	 RIP: 443fb8	 Bytes: 4
  %loadMem_443fb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443fb8 = call %struct.Memory* @routine_movq__rdi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443fb8)
  store %struct.Memory* %call_443fb8, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 443fbc	 Bytes: 7
  %loadMem_443fbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443fbc = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443fbc)
  store %struct.Memory* %call_443fbc, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, -0x10(%rbp)	 RIP: 443fc3	 Bytes: 5
  %loadMem_443fc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443fc3 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443fc3)
  store %struct.Memory* %call_443fc3, %struct.Memory** %MEMORY

  ; Code: jne .L_443fda	 RIP: 443fc8	 Bytes: 6
  %loadMem_443fc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443fc8 = call %struct.Memory* @routine_jne_.L_443fda(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443fc8, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_443fc8, %struct.Memory** %MEMORY

  %loadBr_443fc8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_443fc8 = icmp eq i8 %loadBr_443fc8, 1
  br i1 %cmpBr_443fc8, label %block_.L_443fda, label %block_443fce

block_443fce:
  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 443fce	 Bytes: 7
  %loadMem_443fce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443fce = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443fce)
  store %struct.Memory* %call_443fce, %struct.Memory** %MEMORY

  ; Code: jmpq .L_444316	 RIP: 443fd5	 Bytes: 5
  %loadMem_443fd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443fd5 = call %struct.Memory* @routine_jmpq_.L_444316(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443fd5, i64 833, i64 5)
  store %struct.Memory* %call_443fd5, %struct.Memory** %MEMORY

  br label %block_.L_444316

  ; Code: .L_443fda:	 RIP: 443fda	 Bytes: 0
block_.L_443fda:

  ; Code: movl $0xffffffff, %esi	 RIP: 443fda	 Bytes: 5
  %loadMem_443fda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443fda = call %struct.Memory* @routine_movl__0xffffffff___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443fda)
  store %struct.Memory* %call_443fda, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 443fdf	 Bytes: 4
  %loadMem_443fdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443fdf = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443fdf)
  store %struct.Memory* %call_443fdf, %struct.Memory** %MEMORY

  ; Code: callq .sre_strdup	 RIP: 443fe3	 Bytes: 5
  %loadMem1_443fe3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_443fe3 = call %struct.Memory* @routine_callq_.sre_strdup(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_443fe3, i64 10045, i64 5, i64 5)
  store %struct.Memory* %call1_443fe3, %struct.Memory** %MEMORY

  %loadMem2_443fe3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_443fe3 = load i64, i64* %3
  %call2_443fe3 = call %struct.Memory* @sub_446720.sre_strdup(%struct.State* %0, i64  %loadPC_443fe3, %struct.Memory* %loadMem2_443fe3)
  store %struct.Memory* %call2_443fe3, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x18(%rbp)	 RIP: 443fe8	 Bytes: 4
  %loadMem_443fe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443fe8 = call %struct.Memory* @routine_movq__rax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443fe8)
  store %struct.Memory* %call_443fe8, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 443fec	 Bytes: 4
  %loadMem_443fec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443fec = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443fec)
  store %struct.Memory* %call_443fec, %struct.Memory** %MEMORY

  ; Code: callq .s2upper	 RIP: 443ff0	 Bytes: 5
  %loadMem1_443ff0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_443ff0 = call %struct.Memory* @routine_callq_.s2upper(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_443ff0, i64 8224, i64 5, i64 5)
  store %struct.Memory* %call1_443ff0, %struct.Memory** %MEMORY

  %loadMem2_443ff0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_443ff0 = load i64, i64* %3
  %call2_443ff0 = call %struct.Memory* @sub_446010.s2upper(%struct.State* %0, i64  %loadPC_443ff0, %struct.Memory* %loadMem2_443ff0)
  store %struct.Memory* %call2_443ff0, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 443ff5	 Bytes: 4
  %loadMem_443ff5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443ff5 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443ff5)
  store %struct.Memory* %call_443ff5, %struct.Memory** %MEMORY

  ; Code: movl $0x45a56d, %esi	 RIP: 443ff9	 Bytes: 5
  %loadMem_443ff9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443ff9 = call %struct.Memory* @routine_movl__0x45a56d___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443ff9)
  store %struct.Memory* %call_443ff9, %struct.Memory** %MEMORY

  ; Code: callq .strcmp_plt	 RIP: 443ffe	 Bytes: 5
  %loadMem1_443ffe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_443ffe = call %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_443ffe, i64 -273054, i64 5, i64 5)
  store %struct.Memory* %call1_443ffe, %struct.Memory** %MEMORY

  %loadMem2_443ffe = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_443ffe = load i64, i64* %3
  %call2_443ffe = call %struct.Memory* @ext_strcmp(%struct.State* %0, i64  %loadPC_443ffe, %struct.Memory* %loadMem2_443ffe)
  store %struct.Memory* %call2_443ffe, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 444003	 Bytes: 3
  %loadMem_444003 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444003 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444003)
  store %struct.Memory* %call_444003, %struct.Memory** %MEMORY

  ; Code: jne .L_444018	 RIP: 444006	 Bytes: 6
  %loadMem_444006 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444006 = call %struct.Memory* @routine_jne_.L_444018(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444006, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_444006, %struct.Memory** %MEMORY

  %loadBr_444006 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_444006 = icmp eq i8 %loadBr_444006, 1
  br i1 %cmpBr_444006, label %block_.L_444018, label %block_44400c

block_44400c:
  ; Code: movl $0x7, -0x1c(%rbp)	 RIP: 44400c	 Bytes: 7
  %loadMem_44400c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44400c = call %struct.Memory* @routine_movl__0x7__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44400c)
  store %struct.Memory* %call_44400c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_444307	 RIP: 444013	 Bytes: 5
  %loadMem_444013 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444013 = call %struct.Memory* @routine_jmpq_.L_444307(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444013, i64 756, i64 5)
  store %struct.Memory* %call_444013, %struct.Memory** %MEMORY

  br label %block_.L_444307

  ; Code: .L_444018:	 RIP: 444018	 Bytes: 0
block_.L_444018:

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 444018	 Bytes: 4
  %loadMem_444018 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444018 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444018)
  store %struct.Memory* %call_444018, %struct.Memory** %MEMORY

  ; Code: movl $0x45a573, %eax	 RIP: 44401c	 Bytes: 5
  %loadMem_44401c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44401c = call %struct.Memory* @routine_movl__0x45a573___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44401c)
  store %struct.Memory* %call_44401c, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 444021	 Bytes: 2
  %loadMem_444021 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444021 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444021)
  store %struct.Memory* %call_444021, %struct.Memory** %MEMORY

  ; Code: callq .strcmp_plt	 RIP: 444023	 Bytes: 5
  %loadMem1_444023 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_444023 = call %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_444023, i64 -273091, i64 5, i64 5)
  store %struct.Memory* %call1_444023, %struct.Memory** %MEMORY

  %loadMem2_444023 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_444023 = load i64, i64* %3
  %call2_444023 = call %struct.Memory* @ext_strcmp(%struct.State* %0, i64  %loadPC_444023, %struct.Memory* %loadMem2_444023)
  store %struct.Memory* %call2_444023, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 444028	 Bytes: 3
  %loadMem_444028 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444028 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444028)
  store %struct.Memory* %call_444028, %struct.Memory** %MEMORY

  ; Code: jne .L_44403d	 RIP: 44402b	 Bytes: 6
  %loadMem_44402b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44402b = call %struct.Memory* @routine_jne_.L_44403d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44402b, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_44402b, %struct.Memory** %MEMORY

  %loadBr_44402b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44402b = icmp eq i8 %loadBr_44402b, 1
  br i1 %cmpBr_44402b, label %block_.L_44403d, label %block_444031

block_444031:
  ; Code: movl $0x2, -0x1c(%rbp)	 RIP: 444031	 Bytes: 7
  %loadMem_444031 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444031 = call %struct.Memory* @routine_movl__0x2__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444031)
  store %struct.Memory* %call_444031, %struct.Memory** %MEMORY

  ; Code: jmpq .L_444302	 RIP: 444038	 Bytes: 5
  %loadMem_444038 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444038 = call %struct.Memory* @routine_jmpq_.L_444302(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444038, i64 714, i64 5)
  store %struct.Memory* %call_444038, %struct.Memory** %MEMORY

  br label %block_.L_444302

  ; Code: .L_44403d:	 RIP: 44403d	 Bytes: 0
block_.L_44403d:

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 44403d	 Bytes: 4
  %loadMem_44403d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44403d = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44403d)
  store %struct.Memory* %call_44403d, %struct.Memory** %MEMORY

  ; Code: movl $0x45a57b, %eax	 RIP: 444041	 Bytes: 5
  %loadMem_444041 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444041 = call %struct.Memory* @routine_movl__0x45a57b___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444041)
  store %struct.Memory* %call_444041, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 444046	 Bytes: 2
  %loadMem_444046 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444046 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444046)
  store %struct.Memory* %call_444046, %struct.Memory** %MEMORY

  ; Code: callq .strcmp_plt	 RIP: 444048	 Bytes: 5
  %loadMem1_444048 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_444048 = call %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_444048, i64 -273128, i64 5, i64 5)
  store %struct.Memory* %call1_444048, %struct.Memory** %MEMORY

  %loadMem2_444048 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_444048 = load i64, i64* %3
  %call2_444048 = call %struct.Memory* @ext_strcmp(%struct.State* %0, i64  %loadPC_444048, %struct.Memory* %loadMem2_444048)
  store %struct.Memory* %call2_444048, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 44404d	 Bytes: 3
  %loadMem_44404d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44404d = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44404d)
  store %struct.Memory* %call_44404d, %struct.Memory** %MEMORY

  ; Code: jne .L_444062	 RIP: 444050	 Bytes: 6
  %loadMem_444050 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444050 = call %struct.Memory* @routine_jne_.L_444062(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444050, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_444050, %struct.Memory** %MEMORY

  %loadBr_444050 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_444050 = icmp eq i8 %loadBr_444050, 1
  br i1 %cmpBr_444050, label %block_.L_444062, label %block_444056

block_444056:
  ; Code: movl $0x4, -0x1c(%rbp)	 RIP: 444056	 Bytes: 7
  %loadMem_444056 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444056 = call %struct.Memory* @routine_movl__0x4__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444056)
  store %struct.Memory* %call_444056, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4442fd	 RIP: 44405d	 Bytes: 5
  %loadMem_44405d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44405d = call %struct.Memory* @routine_jmpq_.L_4442fd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44405d, i64 672, i64 5)
  store %struct.Memory* %call_44405d, %struct.Memory** %MEMORY

  br label %block_.L_4442fd

  ; Code: .L_444062:	 RIP: 444062	 Bytes: 0
block_.L_444062:

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 444062	 Bytes: 4
  %loadMem_444062 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444062 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444062)
  store %struct.Memory* %call_444062, %struct.Memory** %MEMORY

  ; Code: movl $0x45a580, %eax	 RIP: 444066	 Bytes: 5
  %loadMem_444066 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444066 = call %struct.Memory* @routine_movl__0x45a580___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444066)
  store %struct.Memory* %call_444066, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 44406b	 Bytes: 2
  %loadMem_44406b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44406b = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44406b)
  store %struct.Memory* %call_44406b, %struct.Memory** %MEMORY

  ; Code: callq .strcmp_plt	 RIP: 44406d	 Bytes: 5
  %loadMem1_44406d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44406d = call %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44406d, i64 -273165, i64 5, i64 5)
  store %struct.Memory* %call1_44406d, %struct.Memory** %MEMORY

  %loadMem2_44406d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44406d = load i64, i64* %3
  %call2_44406d = call %struct.Memory* @ext_strcmp(%struct.State* %0, i64  %loadPC_44406d, %struct.Memory* %loadMem2_44406d)
  store %struct.Memory* %call2_44406d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 444072	 Bytes: 3
  %loadMem_444072 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444072 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444072)
  store %struct.Memory* %call_444072, %struct.Memory** %MEMORY

  ; Code: jne .L_444087	 RIP: 444075	 Bytes: 6
  %loadMem_444075 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444075 = call %struct.Memory* @routine_jne_.L_444087(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444075, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_444075, %struct.Memory** %MEMORY

  %loadBr_444075 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_444075 = icmp eq i8 %loadBr_444075, 1
  br i1 %cmpBr_444075, label %block_.L_444087, label %block_44407b

block_44407b:
  ; Code: movl $0x5, -0x1c(%rbp)	 RIP: 44407b	 Bytes: 7
  %loadMem_44407b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44407b = call %struct.Memory* @routine_movl__0x5__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44407b)
  store %struct.Memory* %call_44407b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4442f8	 RIP: 444082	 Bytes: 5
  %loadMem_444082 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444082 = call %struct.Memory* @routine_jmpq_.L_4442f8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444082, i64 630, i64 5)
  store %struct.Memory* %call_444082, %struct.Memory** %MEMORY

  br label %block_.L_4442f8

  ; Code: .L_444087:	 RIP: 444087	 Bytes: 0
block_.L_444087:

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 444087	 Bytes: 4
  %loadMem_444087 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444087 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444087)
  store %struct.Memory* %call_444087, %struct.Memory** %MEMORY

  ; Code: movl $0x45a584, %eax	 RIP: 44408b	 Bytes: 5
  %loadMem_44408b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44408b = call %struct.Memory* @routine_movl__0x45a584___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44408b)
  store %struct.Memory* %call_44408b, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 444090	 Bytes: 2
  %loadMem_444090 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444090 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444090)
  store %struct.Memory* %call_444090, %struct.Memory** %MEMORY

  ; Code: callq .strcmp_plt	 RIP: 444092	 Bytes: 5
  %loadMem1_444092 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_444092 = call %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_444092, i64 -273202, i64 5, i64 5)
  store %struct.Memory* %call1_444092, %struct.Memory** %MEMORY

  %loadMem2_444092 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_444092 = load i64, i64* %3
  %call2_444092 = call %struct.Memory* @ext_strcmp(%struct.State* %0, i64  %loadPC_444092, %struct.Memory* %loadMem2_444092)
  store %struct.Memory* %call2_444092, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 444097	 Bytes: 3
  %loadMem_444097 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444097 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444097)
  store %struct.Memory* %call_444097, %struct.Memory** %MEMORY

  ; Code: jne .L_4440ac	 RIP: 44409a	 Bytes: 6
  %loadMem_44409a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44409a = call %struct.Memory* @routine_jne_.L_4440ac(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44409a, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_44409a, %struct.Memory** %MEMORY

  %loadBr_44409a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44409a = icmp eq i8 %loadBr_44409a, 1
  br i1 %cmpBr_44409a, label %block_.L_4440ac, label %block_4440a0

block_4440a0:
  ; Code: movl $0x10, -0x1c(%rbp)	 RIP: 4440a0	 Bytes: 7
  %loadMem_4440a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4440a0 = call %struct.Memory* @routine_movl__0x10__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4440a0)
  store %struct.Memory* %call_4440a0, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4442f3	 RIP: 4440a7	 Bytes: 5
  %loadMem_4440a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4440a7 = call %struct.Memory* @routine_jmpq_.L_4442f3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4440a7, i64 588, i64 5)
  store %struct.Memory* %call_4440a7, %struct.Memory** %MEMORY

  br label %block_.L_4442f3

  ; Code: .L_4440ac:	 RIP: 4440ac	 Bytes: 0
block_.L_4440ac:

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 4440ac	 Bytes: 4
  %loadMem_4440ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4440ac = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4440ac)
  store %struct.Memory* %call_4440ac, %struct.Memory** %MEMORY

  ; Code: movl $0x45a599, %eax	 RIP: 4440b0	 Bytes: 5
  %loadMem_4440b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4440b0 = call %struct.Memory* @routine_movl__0x45a599___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4440b0)
  store %struct.Memory* %call_4440b0, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 4440b5	 Bytes: 2
  %loadMem_4440b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4440b5 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4440b5)
  store %struct.Memory* %call_4440b5, %struct.Memory** %MEMORY

  ; Code: callq .strcmp_plt	 RIP: 4440b7	 Bytes: 5
  %loadMem1_4440b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4440b7 = call %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4440b7, i64 -273239, i64 5, i64 5)
  store %struct.Memory* %call1_4440b7, %struct.Memory** %MEMORY

  %loadMem2_4440b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4440b7 = load i64, i64* %3
  %call2_4440b7 = call %struct.Memory* @ext_strcmp(%struct.State* %0, i64  %loadPC_4440b7, %struct.Memory* %loadMem2_4440b7)
  store %struct.Memory* %call2_4440b7, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4440bc	 Bytes: 3
  %loadMem_4440bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4440bc = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4440bc)
  store %struct.Memory* %call_4440bc, %struct.Memory** %MEMORY

  ; Code: jne .L_4440d1	 RIP: 4440bf	 Bytes: 6
  %loadMem_4440bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4440bf = call %struct.Memory* @routine_jne_.L_4440d1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4440bf, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_4440bf, %struct.Memory** %MEMORY

  %loadBr_4440bf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4440bf = icmp eq i8 %loadBr_4440bf, 1
  br i1 %cmpBr_4440bf, label %block_.L_4440d1, label %block_4440c5

block_4440c5:
  ; Code: movl $0xd, -0x1c(%rbp)	 RIP: 4440c5	 Bytes: 7
  %loadMem_4440c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4440c5 = call %struct.Memory* @routine_movl__0xd__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4440c5)
  store %struct.Memory* %call_4440c5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4442ee	 RIP: 4440cc	 Bytes: 5
  %loadMem_4440cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4440cc = call %struct.Memory* @routine_jmpq_.L_4442ee(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4440cc, i64 546, i64 5)
  store %struct.Memory* %call_4440cc, %struct.Memory** %MEMORY

  br label %block_.L_4442ee

  ; Code: .L_4440d1:	 RIP: 4440d1	 Bytes: 0
block_.L_4440d1:

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 4440d1	 Bytes: 4
  %loadMem_4440d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4440d1 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4440d1)
  store %struct.Memory* %call_4440d1, %struct.Memory** %MEMORY

  ; Code: movl $0x45a58c, %eax	 RIP: 4440d5	 Bytes: 5
  %loadMem_4440d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4440d5 = call %struct.Memory* @routine_movl__0x45a58c___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4440d5)
  store %struct.Memory* %call_4440d5, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 4440da	 Bytes: 2
  %loadMem_4440da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4440da = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4440da)
  store %struct.Memory* %call_4440da, %struct.Memory** %MEMORY

  ; Code: callq .strcmp_plt	 RIP: 4440dc	 Bytes: 5
  %loadMem1_4440dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4440dc = call %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4440dc, i64 -273276, i64 5, i64 5)
  store %struct.Memory* %call1_4440dc, %struct.Memory** %MEMORY

  %loadMem2_4440dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4440dc = load i64, i64* %3
  %call2_4440dc = call %struct.Memory* @ext_strcmp(%struct.State* %0, i64  %loadPC_4440dc, %struct.Memory* %loadMem2_4440dc)
  store %struct.Memory* %call2_4440dc, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4440e1	 Bytes: 3
  %loadMem_4440e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4440e1 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4440e1)
  store %struct.Memory* %call_4440e1, %struct.Memory** %MEMORY

  ; Code: jne .L_4440f6	 RIP: 4440e4	 Bytes: 6
  %loadMem_4440e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4440e4 = call %struct.Memory* @routine_jne_.L_4440f6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4440e4, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_4440e4, %struct.Memory** %MEMORY

  %loadBr_4440e4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4440e4 = icmp eq i8 %loadBr_4440e4, 1
  br i1 %cmpBr_4440e4, label %block_.L_4440f6, label %block_4440ea

block_4440ea:
  ; Code: movl $0x1, -0x1c(%rbp)	 RIP: 4440ea	 Bytes: 7
  %loadMem_4440ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4440ea = call %struct.Memory* @routine_movl__0x1__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4440ea)
  store %struct.Memory* %call_4440ea, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4442e9	 RIP: 4440f1	 Bytes: 5
  %loadMem_4440f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4440f1 = call %struct.Memory* @routine_jmpq_.L_4442e9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4440f1, i64 504, i64 5)
  store %struct.Memory* %call_4440f1, %struct.Memory** %MEMORY

  br label %block_.L_4442e9

  ; Code: .L_4440f6:	 RIP: 4440f6	 Bytes: 0
block_.L_4440f6:

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 4440f6	 Bytes: 4
  %loadMem_4440f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4440f6 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4440f6)
  store %struct.Memory* %call_4440f6, %struct.Memory** %MEMORY

  ; Code: movl $0x45a58f, %eax	 RIP: 4440fa	 Bytes: 5
  %loadMem_4440fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4440fa = call %struct.Memory* @routine_movl__0x45a58f___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4440fa)
  store %struct.Memory* %call_4440fa, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 4440ff	 Bytes: 2
  %loadMem_4440ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4440ff = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4440ff)
  store %struct.Memory* %call_4440ff, %struct.Memory** %MEMORY

  ; Code: callq .strcmp_plt	 RIP: 444101	 Bytes: 5
  %loadMem1_444101 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_444101 = call %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_444101, i64 -273313, i64 5, i64 5)
  store %struct.Memory* %call1_444101, %struct.Memory** %MEMORY

  %loadMem2_444101 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_444101 = load i64, i64* %3
  %call2_444101 = call %struct.Memory* @ext_strcmp(%struct.State* %0, i64  %loadPC_444101, %struct.Memory* %loadMem2_444101)
  store %struct.Memory* %call2_444101, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 444106	 Bytes: 3
  %loadMem_444106 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444106 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444106)
  store %struct.Memory* %call_444106, %struct.Memory** %MEMORY

  ; Code: jne .L_44411b	 RIP: 444109	 Bytes: 6
  %loadMem_444109 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444109 = call %struct.Memory* @routine_jne_.L_44411b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444109, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_444109, %struct.Memory** %MEMORY

  %loadBr_444109 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_444109 = icmp eq i8 %loadBr_444109, 1
  br i1 %cmpBr_444109, label %block_.L_44411b, label %block_44410f

block_44410f:
  ; Code: movl $0x6, -0x1c(%rbp)	 RIP: 44410f	 Bytes: 7
  %loadMem_44410f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44410f = call %struct.Memory* @routine_movl__0x6__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44410f)
  store %struct.Memory* %call_44410f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4442e4	 RIP: 444116	 Bytes: 5
  %loadMem_444116 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444116 = call %struct.Memory* @routine_jmpq_.L_4442e4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444116, i64 462, i64 5)
  store %struct.Memory* %call_444116, %struct.Memory** %MEMORY

  br label %block_.L_4442e4

  ; Code: .L_44411b:	 RIP: 44411b	 Bytes: 0
block_.L_44411b:

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 44411b	 Bytes: 4
  %loadMem_44411b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44411b = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44411b)
  store %struct.Memory* %call_44411b, %struct.Memory** %MEMORY

  ; Code: movl $0x45a597, %eax	 RIP: 44411f	 Bytes: 5
  %loadMem_44411f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44411f = call %struct.Memory* @routine_movl__0x45a597___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44411f)
  store %struct.Memory* %call_44411f, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 444124	 Bytes: 2
  %loadMem_444124 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444124 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444124)
  store %struct.Memory* %call_444124, %struct.Memory** %MEMORY

  ; Code: callq .strcmp_plt	 RIP: 444126	 Bytes: 5
  %loadMem1_444126 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_444126 = call %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_444126, i64 -273350, i64 5, i64 5)
  store %struct.Memory* %call1_444126, %struct.Memory** %MEMORY

  %loadMem2_444126 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_444126 = load i64, i64* %3
  %call2_444126 = call %struct.Memory* @ext_strcmp(%struct.State* %0, i64  %loadPC_444126, %struct.Memory* %loadMem2_444126)
  store %struct.Memory* %call2_444126, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 44412b	 Bytes: 3
  %loadMem_44412b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44412b = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44412b)
  store %struct.Memory* %call_44412b, %struct.Memory** %MEMORY

  ; Code: jne .L_444140	 RIP: 44412e	 Bytes: 6
  %loadMem_44412e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44412e = call %struct.Memory* @routine_jne_.L_444140(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44412e, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_44412e, %struct.Memory** %MEMORY

  %loadBr_44412e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44412e = icmp eq i8 %loadBr_44412e, 1
  br i1 %cmpBr_44412e, label %block_.L_444140, label %block_444134

block_444134:
  ; Code: movl $0x9, -0x1c(%rbp)	 RIP: 444134	 Bytes: 7
  %loadMem_444134 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444134 = call %struct.Memory* @routine_movl__0x9__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444134)
  store %struct.Memory* %call_444134, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4442df	 RIP: 44413b	 Bytes: 5
  %loadMem_44413b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44413b = call %struct.Memory* @routine_jmpq_.L_4442df(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44413b, i64 420, i64 5)
  store %struct.Memory* %call_44413b, %struct.Memory** %MEMORY

  br label %block_.L_4442df

  ; Code: .L_444140:	 RIP: 444140	 Bytes: 0
block_.L_444140:

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 444140	 Bytes: 4
  %loadMem_444140 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444140 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444140)
  store %struct.Memory* %call_444140, %struct.Memory** %MEMORY

  ; Code: movl $0x45a59d, %eax	 RIP: 444144	 Bytes: 5
  %loadMem_444144 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444144 = call %struct.Memory* @routine_movl__0x45a59d___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444144)
  store %struct.Memory* %call_444144, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 444149	 Bytes: 2
  %loadMem_444149 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444149 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444149)
  store %struct.Memory* %call_444149, %struct.Memory** %MEMORY

  ; Code: callq .strcmp_plt	 RIP: 44414b	 Bytes: 5
  %loadMem1_44414b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44414b = call %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44414b, i64 -273387, i64 5, i64 5)
  store %struct.Memory* %call1_44414b, %struct.Memory** %MEMORY

  %loadMem2_44414b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44414b = load i64, i64* %3
  %call2_44414b = call %struct.Memory* @ext_strcmp(%struct.State* %0, i64  %loadPC_44414b, %struct.Memory* %loadMem2_44414b)
  store %struct.Memory* %call2_44414b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 444150	 Bytes: 3
  %loadMem_444150 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444150 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444150)
  store %struct.Memory* %call_444150, %struct.Memory** %MEMORY

  ; Code: jne .L_444165	 RIP: 444153	 Bytes: 6
  %loadMem_444153 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444153 = call %struct.Memory* @routine_jne_.L_444165(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444153, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_444153, %struct.Memory** %MEMORY

  %loadBr_444153 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_444153 = icmp eq i8 %loadBr_444153, 1
  br i1 %cmpBr_444153, label %block_.L_444165, label %block_444159

block_444159:
  ; Code: movl $0x8, -0x1c(%rbp)	 RIP: 444159	 Bytes: 7
  %loadMem_444159 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444159 = call %struct.Memory* @routine_movl__0x8__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444159)
  store %struct.Memory* %call_444159, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4442da	 RIP: 444160	 Bytes: 5
  %loadMem_444160 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444160 = call %struct.Memory* @routine_jmpq_.L_4442da(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444160, i64 378, i64 5)
  store %struct.Memory* %call_444160, %struct.Memory** %MEMORY

  br label %block_.L_4442da

  ; Code: .L_444165:	 RIP: 444165	 Bytes: 0
block_.L_444165:

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 444165	 Bytes: 4
  %loadMem_444165 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444165 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444165)
  store %struct.Memory* %call_444165, %struct.Memory** %MEMORY

  ; Code: movl $0x45a5a3, %eax	 RIP: 444169	 Bytes: 5
  %loadMem_444169 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444169 = call %struct.Memory* @routine_movl__0x45a5a3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444169)
  store %struct.Memory* %call_444169, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 44416e	 Bytes: 2
  %loadMem_44416e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44416e = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44416e)
  store %struct.Memory* %call_44416e, %struct.Memory** %MEMORY

  ; Code: callq .strcmp_plt	 RIP: 444170	 Bytes: 5
  %loadMem1_444170 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_444170 = call %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_444170, i64 -273424, i64 5, i64 5)
  store %struct.Memory* %call1_444170, %struct.Memory** %MEMORY

  %loadMem2_444170 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_444170 = load i64, i64* %3
  %call2_444170 = call %struct.Memory* @ext_strcmp(%struct.State* %0, i64  %loadPC_444170, %struct.Memory* %loadMem2_444170)
  store %struct.Memory* %call2_444170, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 444175	 Bytes: 3
  %loadMem_444175 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444175 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444175)
  store %struct.Memory* %call_444175, %struct.Memory** %MEMORY

  ; Code: jne .L_44418a	 RIP: 444178	 Bytes: 6
  %loadMem_444178 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444178 = call %struct.Memory* @routine_jne_.L_44418a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444178, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_444178, %struct.Memory** %MEMORY

  %loadBr_444178 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_444178 = icmp eq i8 %loadBr_444178, 1
  br i1 %cmpBr_444178, label %block_.L_44418a, label %block_44417e

block_44417e:
  ; Code: movl $0xc, -0x1c(%rbp)	 RIP: 44417e	 Bytes: 7
  %loadMem_44417e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44417e = call %struct.Memory* @routine_movl__0xc__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44417e)
  store %struct.Memory* %call_44417e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4442d5	 RIP: 444185	 Bytes: 5
  %loadMem_444185 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444185 = call %struct.Memory* @routine_jmpq_.L_4442d5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444185, i64 336, i64 5)
  store %struct.Memory* %call_444185, %struct.Memory** %MEMORY

  br label %block_.L_4442d5

  ; Code: .L_44418a:	 RIP: 44418a	 Bytes: 0
block_.L_44418a:

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 44418a	 Bytes: 4
  %loadMem_44418a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44418a = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44418a)
  store %struct.Memory* %call_44418a, %struct.Memory** %MEMORY

  ; Code: movl $0x45a5a7, %eax	 RIP: 44418e	 Bytes: 5
  %loadMem_44418e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44418e = call %struct.Memory* @routine_movl__0x45a5a7___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44418e)
  store %struct.Memory* %call_44418e, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 444193	 Bytes: 2
  %loadMem_444193 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444193 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444193)
  store %struct.Memory* %call_444193, %struct.Memory** %MEMORY

  ; Code: callq .strcmp_plt	 RIP: 444195	 Bytes: 5
  %loadMem1_444195 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_444195 = call %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_444195, i64 -273461, i64 5, i64 5)
  store %struct.Memory* %call1_444195, %struct.Memory** %MEMORY

  %loadMem2_444195 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_444195 = load i64, i64* %3
  %call2_444195 = call %struct.Memory* @ext_strcmp(%struct.State* %0, i64  %loadPC_444195, %struct.Memory* %loadMem2_444195)
  store %struct.Memory* %call2_444195, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 44419a	 Bytes: 3
  %loadMem_44419a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44419a = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44419a)
  store %struct.Memory* %call_44419a, %struct.Memory** %MEMORY

  ; Code: jne .L_4441af	 RIP: 44419d	 Bytes: 6
  %loadMem_44419d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44419d = call %struct.Memory* @routine_jne_.L_4441af(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44419d, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_44419d, %struct.Memory** %MEMORY

  %loadBr_44419d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44419d = icmp eq i8 %loadBr_44419d, 1
  br i1 %cmpBr_44419d, label %block_.L_4441af, label %block_4441a3

block_4441a3:
  ; Code: movl $0xe, -0x1c(%rbp)	 RIP: 4441a3	 Bytes: 7
  %loadMem_4441a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4441a3 = call %struct.Memory* @routine_movl__0xe__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4441a3)
  store %struct.Memory* %call_4441a3, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4442d0	 RIP: 4441aa	 Bytes: 5
  %loadMem_4441aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4441aa = call %struct.Memory* @routine_jmpq_.L_4442d0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4441aa, i64 294, i64 5)
  store %struct.Memory* %call_4441aa, %struct.Memory** %MEMORY

  br label %block_.L_4442d0

  ; Code: .L_4441af:	 RIP: 4441af	 Bytes: 0
block_.L_4441af:

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 4441af	 Bytes: 4
  %loadMem_4441af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4441af = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4441af)
  store %struct.Memory* %call_4441af, %struct.Memory** %MEMORY

  ; Code: movl $0x45a5ad, %eax	 RIP: 4441b3	 Bytes: 5
  %loadMem_4441b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4441b3 = call %struct.Memory* @routine_movl__0x45a5ad___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4441b3)
  store %struct.Memory* %call_4441b3, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 4441b8	 Bytes: 2
  %loadMem_4441b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4441b8 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4441b8)
  store %struct.Memory* %call_4441b8, %struct.Memory** %MEMORY

  ; Code: callq .strcmp_plt	 RIP: 4441ba	 Bytes: 5
  %loadMem1_4441ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4441ba = call %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4441ba, i64 -273498, i64 5, i64 5)
  store %struct.Memory* %call1_4441ba, %struct.Memory** %MEMORY

  %loadMem2_4441ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4441ba = load i64, i64* %3
  %call2_4441ba = call %struct.Memory* @ext_strcmp(%struct.State* %0, i64  %loadPC_4441ba, %struct.Memory* %loadMem2_4441ba)
  store %struct.Memory* %call2_4441ba, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4441bf	 Bytes: 3
  %loadMem_4441bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4441bf = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4441bf)
  store %struct.Memory* %call_4441bf, %struct.Memory** %MEMORY

  ; Code: jne .L_4441d4	 RIP: 4441c2	 Bytes: 6
  %loadMem_4441c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4441c2 = call %struct.Memory* @routine_jne_.L_4441d4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4441c2, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_4441c2, %struct.Memory** %MEMORY

  %loadBr_4441c2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4441c2 = icmp eq i8 %loadBr_4441c2, 1
  br i1 %cmpBr_4441c2, label %block_.L_4441d4, label %block_4441c8

block_4441c8:
  ; Code: movl $0x65, -0x1c(%rbp)	 RIP: 4441c8	 Bytes: 7
  %loadMem_4441c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4441c8 = call %struct.Memory* @routine_movl__0x65__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4441c8)
  store %struct.Memory* %call_4441c8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4442cb	 RIP: 4441cf	 Bytes: 5
  %loadMem_4441cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4441cf = call %struct.Memory* @routine_jmpq_.L_4442cb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4441cf, i64 252, i64 5)
  store %struct.Memory* %call_4441cf, %struct.Memory** %MEMORY

  br label %block_.L_4442cb

  ; Code: .L_4441d4:	 RIP: 4441d4	 Bytes: 0
block_.L_4441d4:

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 4441d4	 Bytes: 4
  %loadMem_4441d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4441d4 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4441d4)
  store %struct.Memory* %call_4441d4, %struct.Memory** %MEMORY

  ; Code: movl $0x45a5b7, %eax	 RIP: 4441d8	 Bytes: 5
  %loadMem_4441d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4441d8 = call %struct.Memory* @routine_movl__0x45a5b7___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4441d8)
  store %struct.Memory* %call_4441d8, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 4441dd	 Bytes: 2
  %loadMem_4441dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4441dd = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4441dd)
  store %struct.Memory* %call_4441dd, %struct.Memory** %MEMORY

  ; Code: callq .strcmp_plt	 RIP: 4441df	 Bytes: 5
  %loadMem1_4441df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4441df = call %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4441df, i64 -273535, i64 5, i64 5)
  store %struct.Memory* %call1_4441df, %struct.Memory** %MEMORY

  %loadMem2_4441df = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4441df = load i64, i64* %3
  %call2_4441df = call %struct.Memory* @ext_strcmp(%struct.State* %0, i64  %loadPC_4441df, %struct.Memory* %loadMem2_4441df)
  store %struct.Memory* %call2_4441df, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4441e4	 Bytes: 3
  %loadMem_4441e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4441e4 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4441e4)
  store %struct.Memory* %call_4441e4, %struct.Memory** %MEMORY

  ; Code: jne .L_4441f9	 RIP: 4441e7	 Bytes: 6
  %loadMem_4441e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4441e7 = call %struct.Memory* @routine_jne_.L_4441f9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4441e7, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_4441e7, %struct.Memory** %MEMORY

  %loadBr_4441e7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4441e7 = icmp eq i8 %loadBr_4441e7, 1
  br i1 %cmpBr_4441e7, label %block_.L_4441f9, label %block_4441ed

block_4441ed:
  ; Code: movl $0x66, -0x1c(%rbp)	 RIP: 4441ed	 Bytes: 7
  %loadMem_4441ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4441ed = call %struct.Memory* @routine_movl__0x66__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4441ed)
  store %struct.Memory* %call_4441ed, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4442c6	 RIP: 4441f4	 Bytes: 5
  %loadMem_4441f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4441f4 = call %struct.Memory* @routine_jmpq_.L_4442c6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4441f4, i64 210, i64 5)
  store %struct.Memory* %call_4441f4, %struct.Memory** %MEMORY

  br label %block_.L_4442c6

  ; Code: .L_4441f9:	 RIP: 4441f9	 Bytes: 0
block_.L_4441f9:

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 4441f9	 Bytes: 4
  %loadMem_4441f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4441f9 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4441f9)
  store %struct.Memory* %call_4441f9, %struct.Memory** %MEMORY

  ; Code: movl $0x45a5bd, %eax	 RIP: 4441fd	 Bytes: 5
  %loadMem_4441fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4441fd = call %struct.Memory* @routine_movl__0x45a5bd___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4441fd)
  store %struct.Memory* %call_4441fd, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 444202	 Bytes: 2
  %loadMem_444202 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444202 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444202)
  store %struct.Memory* %call_444202, %struct.Memory** %MEMORY

  ; Code: callq .strcmp_plt	 RIP: 444204	 Bytes: 5
  %loadMem1_444204 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_444204 = call %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_444204, i64 -273572, i64 5, i64 5)
  store %struct.Memory* %call1_444204, %struct.Memory** %MEMORY

  %loadMem2_444204 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_444204 = load i64, i64* %3
  %call2_444204 = call %struct.Memory* @ext_strcmp(%struct.State* %0, i64  %loadPC_444204, %struct.Memory* %loadMem2_444204)
  store %struct.Memory* %call2_444204, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 444209	 Bytes: 3
  %loadMem_444209 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444209 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444209)
  store %struct.Memory* %call_444209, %struct.Memory** %MEMORY

  ; Code: jne .L_44421e	 RIP: 44420c	 Bytes: 6
  %loadMem_44420c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44420c = call %struct.Memory* @routine_jne_.L_44421e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44420c, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_44420c, %struct.Memory** %MEMORY

  %loadBr_44420c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44420c = icmp eq i8 %loadBr_44420c, 1
  br i1 %cmpBr_44420c, label %block_.L_44421e, label %block_444212

block_444212:
  ; Code: movl $0x67, -0x1c(%rbp)	 RIP: 444212	 Bytes: 7
  %loadMem_444212 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444212 = call %struct.Memory* @routine_movl__0x67__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444212)
  store %struct.Memory* %call_444212, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4442c1	 RIP: 444219	 Bytes: 5
  %loadMem_444219 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444219 = call %struct.Memory* @routine_jmpq_.L_4442c1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444219, i64 168, i64 5)
  store %struct.Memory* %call_444219, %struct.Memory** %MEMORY

  br label %block_.L_4442c1

  ; Code: .L_44421e:	 RIP: 44421e	 Bytes: 0
block_.L_44421e:

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 44421e	 Bytes: 4
  %loadMem_44421e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44421e = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44421e)
  store %struct.Memory* %call_44421e, %struct.Memory** %MEMORY

  ; Code: movl $0x455d2b, %eax	 RIP: 444222	 Bytes: 5
  %loadMem_444222 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444222 = call %struct.Memory* @routine_movl__0x455d2b___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444222)
  store %struct.Memory* %call_444222, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 444227	 Bytes: 2
  %loadMem_444227 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444227 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444227)
  store %struct.Memory* %call_444227, %struct.Memory** %MEMORY

  ; Code: callq .strcmp_plt	 RIP: 444229	 Bytes: 5
  %loadMem1_444229 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_444229 = call %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_444229, i64 -273609, i64 5, i64 5)
  store %struct.Memory* %call1_444229, %struct.Memory** %MEMORY

  %loadMem2_444229 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_444229 = load i64, i64* %3
  %call2_444229 = call %struct.Memory* @ext_strcmp(%struct.State* %0, i64  %loadPC_444229, %struct.Memory* %loadMem2_444229)
  store %struct.Memory* %call2_444229, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 44422e	 Bytes: 3
  %loadMem_44422e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44422e = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44422e)
  store %struct.Memory* %call_44422e, %struct.Memory** %MEMORY

  ; Code: jne .L_444243	 RIP: 444231	 Bytes: 6
  %loadMem_444231 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444231 = call %struct.Memory* @routine_jne_.L_444243(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444231, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_444231, %struct.Memory** %MEMORY

  %loadBr_444231 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_444231 = icmp eq i8 %loadBr_444231, 1
  br i1 %cmpBr_444231, label %block_.L_444243, label %block_444237

block_444237:
  ; Code: movl $0x68, -0x1c(%rbp)	 RIP: 444237	 Bytes: 7
  %loadMem_444237 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444237 = call %struct.Memory* @routine_movl__0x68__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444237)
  store %struct.Memory* %call_444237, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4442bc	 RIP: 44423e	 Bytes: 5
  %loadMem_44423e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44423e = call %struct.Memory* @routine_jmpq_.L_4442bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44423e, i64 126, i64 5)
  store %struct.Memory* %call_44423e, %struct.Memory** %MEMORY

  br label %block_.L_4442bc

  ; Code: .L_444243:	 RIP: 444243	 Bytes: 0
block_.L_444243:

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 444243	 Bytes: 4
  %loadMem_444243 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444243 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444243)
  store %struct.Memory* %call_444243, %struct.Memory** %MEMORY

  ; Code: movl $0x45a5c1, %eax	 RIP: 444247	 Bytes: 5
  %loadMem_444247 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444247 = call %struct.Memory* @routine_movl__0x45a5c1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444247)
  store %struct.Memory* %call_444247, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 44424c	 Bytes: 2
  %loadMem_44424c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44424c = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44424c)
  store %struct.Memory* %call_44424c, %struct.Memory** %MEMORY

  ; Code: callq .strcmp_plt	 RIP: 44424e	 Bytes: 5
  %loadMem1_44424e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44424e = call %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44424e, i64 -273646, i64 5, i64 5)
  store %struct.Memory* %call1_44424e, %struct.Memory** %MEMORY

  %loadMem2_44424e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44424e = load i64, i64* %3
  %call2_44424e = call %struct.Memory* @ext_strcmp(%struct.State* %0, i64  %loadPC_44424e, %struct.Memory* %loadMem2_44424e)
  store %struct.Memory* %call2_44424e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 444253	 Bytes: 3
  %loadMem_444253 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444253 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444253)
  store %struct.Memory* %call_444253, %struct.Memory** %MEMORY

  ; Code: jne .L_444268	 RIP: 444256	 Bytes: 6
  %loadMem_444256 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444256 = call %struct.Memory* @routine_jne_.L_444268(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444256, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_444256, %struct.Memory** %MEMORY

  %loadBr_444256 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_444256 = icmp eq i8 %loadBr_444256, 1
  br i1 %cmpBr_444256, label %block_.L_444268, label %block_44425c

block_44425c:
  ; Code: movl $0x69, -0x1c(%rbp)	 RIP: 44425c	 Bytes: 7
  %loadMem_44425c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44425c = call %struct.Memory* @routine_movl__0x69__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44425c)
  store %struct.Memory* %call_44425c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4442b7	 RIP: 444263	 Bytes: 5
  %loadMem_444263 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444263 = call %struct.Memory* @routine_jmpq_.L_4442b7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444263, i64 84, i64 5)
  store %struct.Memory* %call_444263, %struct.Memory** %MEMORY

  br label %block_.L_4442b7

  ; Code: .L_444268:	 RIP: 444268	 Bytes: 0
block_.L_444268:

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 444268	 Bytes: 4
  %loadMem_444268 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444268 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444268)
  store %struct.Memory* %call_444268, %struct.Memory** %MEMORY

  ; Code: movl $0x45a5c5, %eax	 RIP: 44426c	 Bytes: 5
  %loadMem_44426c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44426c = call %struct.Memory* @routine_movl__0x45a5c5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44426c)
  store %struct.Memory* %call_44426c, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 444271	 Bytes: 2
  %loadMem_444271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444271 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444271)
  store %struct.Memory* %call_444271, %struct.Memory** %MEMORY

  ; Code: callq .strcmp_plt	 RIP: 444273	 Bytes: 5
  %loadMem1_444273 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_444273 = call %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_444273, i64 -273683, i64 5, i64 5)
  store %struct.Memory* %call1_444273, %struct.Memory** %MEMORY

  %loadMem2_444273 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_444273 = load i64, i64* %3
  %call2_444273 = call %struct.Memory* @ext_strcmp(%struct.State* %0, i64  %loadPC_444273, %struct.Memory* %loadMem2_444273)
  store %struct.Memory* %call2_444273, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 444278	 Bytes: 3
  %loadMem_444278 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444278 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444278)
  store %struct.Memory* %call_444278, %struct.Memory** %MEMORY

  ; Code: jne .L_44428d	 RIP: 44427b	 Bytes: 6
  %loadMem_44427b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44427b = call %struct.Memory* @routine_jne_.L_44428d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44427b, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_44427b, %struct.Memory** %MEMORY

  %loadBr_44427b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44427b = icmp eq i8 %loadBr_44427b, 1
  br i1 %cmpBr_44427b, label %block_.L_44428d, label %block_444281

block_444281:
  ; Code: movl $0x6a, -0x1c(%rbp)	 RIP: 444281	 Bytes: 7
  %loadMem_444281 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444281 = call %struct.Memory* @routine_movl__0x6a__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444281)
  store %struct.Memory* %call_444281, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4442b2	 RIP: 444288	 Bytes: 5
  %loadMem_444288 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444288 = call %struct.Memory* @routine_jmpq_.L_4442b2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444288, i64 42, i64 5)
  store %struct.Memory* %call_444288, %struct.Memory** %MEMORY

  br label %block_.L_4442b2

  ; Code: .L_44428d:	 RIP: 44428d	 Bytes: 0
block_.L_44428d:

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 44428d	 Bytes: 4
  %loadMem_44428d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44428d = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44428d)
  store %struct.Memory* %call_44428d, %struct.Memory** %MEMORY

  ; Code: movl $0x4568a6, %eax	 RIP: 444291	 Bytes: 5
  %loadMem_444291 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444291 = call %struct.Memory* @routine_movl__0x4568a6___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444291)
  store %struct.Memory* %call_444291, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 444296	 Bytes: 2
  %loadMem_444296 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444296 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444296)
  store %struct.Memory* %call_444296, %struct.Memory** %MEMORY

  ; Code: callq .strcmp_plt	 RIP: 444298	 Bytes: 5
  %loadMem1_444298 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_444298 = call %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_444298, i64 -273720, i64 5, i64 5)
  store %struct.Memory* %call1_444298, %struct.Memory** %MEMORY

  %loadMem2_444298 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_444298 = load i64, i64* %3
  %call2_444298 = call %struct.Memory* @ext_strcmp(%struct.State* %0, i64  %loadPC_444298, %struct.Memory* %loadMem2_444298)
  store %struct.Memory* %call2_444298, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 44429d	 Bytes: 3
  %loadMem_44429d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44429d = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44429d)
  store %struct.Memory* %call_44429d, %struct.Memory** %MEMORY

  ; Code: jne .L_4442ad	 RIP: 4442a0	 Bytes: 6
  %loadMem_4442a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4442a0 = call %struct.Memory* @routine_jne_.L_4442ad(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4442a0, i8* %BRANCH_TAKEN, i64 13, i64 6, i64 6)
  store %struct.Memory* %call_4442a0, %struct.Memory** %MEMORY

  %loadBr_4442a0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4442a0 = icmp eq i8 %loadBr_4442a0, 1
  br i1 %cmpBr_4442a0, label %block_.L_4442ad, label %block_4442a6

block_4442a6:
  ; Code: movl $0x6b, -0x1c(%rbp)	 RIP: 4442a6	 Bytes: 7
  %loadMem_4442a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4442a6 = call %struct.Memory* @routine_movl__0x6b__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4442a6)
  store %struct.Memory* %call_4442a6, %struct.Memory** %MEMORY

  ; Code: .L_4442ad:	 RIP: 4442ad	 Bytes: 0
  br label %block_.L_4442ad
block_.L_4442ad:

  ; Code: jmpq .L_4442b2	 RIP: 4442ad	 Bytes: 5
  %loadMem_4442ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4442ad = call %struct.Memory* @routine_jmpq_.L_4442b2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4442ad, i64 5, i64 5)
  store %struct.Memory* %call_4442ad, %struct.Memory** %MEMORY

  br label %block_.L_4442b2

  ; Code: .L_4442b2:	 RIP: 4442b2	 Bytes: 0
block_.L_4442b2:

  ; Code: jmpq .L_4442b7	 RIP: 4442b2	 Bytes: 5
  %loadMem_4442b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4442b2 = call %struct.Memory* @routine_jmpq_.L_4442b7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4442b2, i64 5, i64 5)
  store %struct.Memory* %call_4442b2, %struct.Memory** %MEMORY

  br label %block_.L_4442b7

  ; Code: .L_4442b7:	 RIP: 4442b7	 Bytes: 0
block_.L_4442b7:

  ; Code: jmpq .L_4442bc	 RIP: 4442b7	 Bytes: 5
  %loadMem_4442b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4442b7 = call %struct.Memory* @routine_jmpq_.L_4442bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4442b7, i64 5, i64 5)
  store %struct.Memory* %call_4442b7, %struct.Memory** %MEMORY

  br label %block_.L_4442bc

  ; Code: .L_4442bc:	 RIP: 4442bc	 Bytes: 0
block_.L_4442bc:

  ; Code: jmpq .L_4442c1	 RIP: 4442bc	 Bytes: 5
  %loadMem_4442bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4442bc = call %struct.Memory* @routine_jmpq_.L_4442c1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4442bc, i64 5, i64 5)
  store %struct.Memory* %call_4442bc, %struct.Memory** %MEMORY

  br label %block_.L_4442c1

  ; Code: .L_4442c1:	 RIP: 4442c1	 Bytes: 0
block_.L_4442c1:

  ; Code: jmpq .L_4442c6	 RIP: 4442c1	 Bytes: 5
  %loadMem_4442c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4442c1 = call %struct.Memory* @routine_jmpq_.L_4442c6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4442c1, i64 5, i64 5)
  store %struct.Memory* %call_4442c1, %struct.Memory** %MEMORY

  br label %block_.L_4442c6

  ; Code: .L_4442c6:	 RIP: 4442c6	 Bytes: 0
block_.L_4442c6:

  ; Code: jmpq .L_4442cb	 RIP: 4442c6	 Bytes: 5
  %loadMem_4442c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4442c6 = call %struct.Memory* @routine_jmpq_.L_4442cb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4442c6, i64 5, i64 5)
  store %struct.Memory* %call_4442c6, %struct.Memory** %MEMORY

  br label %block_.L_4442cb

  ; Code: .L_4442cb:	 RIP: 4442cb	 Bytes: 0
block_.L_4442cb:

  ; Code: jmpq .L_4442d0	 RIP: 4442cb	 Bytes: 5
  %loadMem_4442cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4442cb = call %struct.Memory* @routine_jmpq_.L_4442d0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4442cb, i64 5, i64 5)
  store %struct.Memory* %call_4442cb, %struct.Memory** %MEMORY

  br label %block_.L_4442d0

  ; Code: .L_4442d0:	 RIP: 4442d0	 Bytes: 0
block_.L_4442d0:

  ; Code: jmpq .L_4442d5	 RIP: 4442d0	 Bytes: 5
  %loadMem_4442d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4442d0 = call %struct.Memory* @routine_jmpq_.L_4442d5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4442d0, i64 5, i64 5)
  store %struct.Memory* %call_4442d0, %struct.Memory** %MEMORY

  br label %block_.L_4442d5

  ; Code: .L_4442d5:	 RIP: 4442d5	 Bytes: 0
block_.L_4442d5:

  ; Code: jmpq .L_4442da	 RIP: 4442d5	 Bytes: 5
  %loadMem_4442d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4442d5 = call %struct.Memory* @routine_jmpq_.L_4442da(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4442d5, i64 5, i64 5)
  store %struct.Memory* %call_4442d5, %struct.Memory** %MEMORY

  br label %block_.L_4442da

  ; Code: .L_4442da:	 RIP: 4442da	 Bytes: 0
block_.L_4442da:

  ; Code: jmpq .L_4442df	 RIP: 4442da	 Bytes: 5
  %loadMem_4442da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4442da = call %struct.Memory* @routine_jmpq_.L_4442df(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4442da, i64 5, i64 5)
  store %struct.Memory* %call_4442da, %struct.Memory** %MEMORY

  br label %block_.L_4442df

  ; Code: .L_4442df:	 RIP: 4442df	 Bytes: 0
block_.L_4442df:

  ; Code: jmpq .L_4442e4	 RIP: 4442df	 Bytes: 5
  %loadMem_4442df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4442df = call %struct.Memory* @routine_jmpq_.L_4442e4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4442df, i64 5, i64 5)
  store %struct.Memory* %call_4442df, %struct.Memory** %MEMORY

  br label %block_.L_4442e4

  ; Code: .L_4442e4:	 RIP: 4442e4	 Bytes: 0
block_.L_4442e4:

  ; Code: jmpq .L_4442e9	 RIP: 4442e4	 Bytes: 5
  %loadMem_4442e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4442e4 = call %struct.Memory* @routine_jmpq_.L_4442e9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4442e4, i64 5, i64 5)
  store %struct.Memory* %call_4442e4, %struct.Memory** %MEMORY

  br label %block_.L_4442e9

  ; Code: .L_4442e9:	 RIP: 4442e9	 Bytes: 0
block_.L_4442e9:

  ; Code: jmpq .L_4442ee	 RIP: 4442e9	 Bytes: 5
  %loadMem_4442e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4442e9 = call %struct.Memory* @routine_jmpq_.L_4442ee(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4442e9, i64 5, i64 5)
  store %struct.Memory* %call_4442e9, %struct.Memory** %MEMORY

  br label %block_.L_4442ee

  ; Code: .L_4442ee:	 RIP: 4442ee	 Bytes: 0
block_.L_4442ee:

  ; Code: jmpq .L_4442f3	 RIP: 4442ee	 Bytes: 5
  %loadMem_4442ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4442ee = call %struct.Memory* @routine_jmpq_.L_4442f3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4442ee, i64 5, i64 5)
  store %struct.Memory* %call_4442ee, %struct.Memory** %MEMORY

  br label %block_.L_4442f3

  ; Code: .L_4442f3:	 RIP: 4442f3	 Bytes: 0
block_.L_4442f3:

  ; Code: jmpq .L_4442f8	 RIP: 4442f3	 Bytes: 5
  %loadMem_4442f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4442f3 = call %struct.Memory* @routine_jmpq_.L_4442f8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4442f3, i64 5, i64 5)
  store %struct.Memory* %call_4442f3, %struct.Memory** %MEMORY

  br label %block_.L_4442f8

  ; Code: .L_4442f8:	 RIP: 4442f8	 Bytes: 0
block_.L_4442f8:

  ; Code: jmpq .L_4442fd	 RIP: 4442f8	 Bytes: 5
  %loadMem_4442f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4442f8 = call %struct.Memory* @routine_jmpq_.L_4442fd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4442f8, i64 5, i64 5)
  store %struct.Memory* %call_4442f8, %struct.Memory** %MEMORY

  br label %block_.L_4442fd

  ; Code: .L_4442fd:	 RIP: 4442fd	 Bytes: 0
block_.L_4442fd:

  ; Code: jmpq .L_444302	 RIP: 4442fd	 Bytes: 5
  %loadMem_4442fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4442fd = call %struct.Memory* @routine_jmpq_.L_444302(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4442fd, i64 5, i64 5)
  store %struct.Memory* %call_4442fd, %struct.Memory** %MEMORY

  br label %block_.L_444302

  ; Code: .L_444302:	 RIP: 444302	 Bytes: 0
block_.L_444302:

  ; Code: jmpq .L_444307	 RIP: 444302	 Bytes: 5
  %loadMem_444302 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444302 = call %struct.Memory* @routine_jmpq_.L_444307(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444302, i64 5, i64 5)
  store %struct.Memory* %call_444302, %struct.Memory** %MEMORY

  br label %block_.L_444307

  ; Code: .L_444307:	 RIP: 444307	 Bytes: 0
block_.L_444307:

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 444307	 Bytes: 4
  %loadMem_444307 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444307 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444307)
  store %struct.Memory* %call_444307, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 44430b	 Bytes: 5
  %loadMem1_44430b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44430b = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44430b, i64 -274315, i64 5, i64 5)
  store %struct.Memory* %call1_44430b, %struct.Memory** %MEMORY

  %loadMem2_44430b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44430b = load i64, i64* %3
  %call2_44430b = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_44430b, %struct.Memory* %loadMem2_44430b)
  store %struct.Memory* %call2_44430b, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 444310	 Bytes: 3
  %loadMem_444310 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444310 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444310)
  store %struct.Memory* %call_444310, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 444313	 Bytes: 3
  %loadMem_444313 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444313 = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444313)
  store %struct.Memory* %call_444313, %struct.Memory** %MEMORY

  ; Code: .L_444316:	 RIP: 444316	 Bytes: 0
  br label %block_.L_444316
block_.L_444316:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 444316	 Bytes: 3
  %loadMem_444316 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444316 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444316)
  store %struct.Memory* %call_444316, %struct.Memory** %MEMORY

  ; Code: addq $0x20, %rsp	 RIP: 444319	 Bytes: 4
  %loadMem_444319 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_444319 = call %struct.Memory* @routine_addq__0x20___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_444319)
  store %struct.Memory* %call_444319, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 44431d	 Bytes: 1
  %loadMem_44431d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44431d = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44431d)
  store %struct.Memory* %call_44431d, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 44431e	 Bytes: 1
  %loadMem_44431e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44431e = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44431e)
  store %struct.Memory* %call_44431e, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_44431e
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
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

define %struct.Memory* @routine_cmpq__0x0__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 16
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
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

define %struct.Memory* @routine_jne_.L_443fda(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 4
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_444316(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0xffffffff___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4294967295)
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_callq_.sre_strdup(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__rax__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.s2upper(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_movl__0x45a56d___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x45a56d_type* @G__0x45a56d to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_callq_.strcmp_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_444018(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x7__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 7)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_444307(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x45a573___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x45a573_type* @G__0x45a573 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
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






define %struct.Memory* @routine_jne_.L_44403d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x2__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_444302(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x45a57b___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x45a57b_type* @G__0x45a57b to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_jne_.L_444062(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x4__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_4442fd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x45a580___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x45a580_type* @G__0x45a580 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_jne_.L_444087(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x5__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 5)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_4442f8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x45a584___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x45a584_type* @G__0x45a584 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_jne_.L_4440ac(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x10__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 16)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_4442f3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x45a599___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x45a599_type* @G__0x45a599 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_jne_.L_4440d1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0xd__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 13)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_4442ee(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x45a58c___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x45a58c_type* @G__0x45a58c to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_jne_.L_4440f6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x1__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_4442e9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x45a58f___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x45a58f_type* @G__0x45a58f to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_jne_.L_44411b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x6__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 6)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_4442e4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x45a597___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x45a597_type* @G__0x45a597 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_jne_.L_444140(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x9__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 9)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_4442df(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x45a59d___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x45a59d_type* @G__0x45a59d to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_jne_.L_444165(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x8__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 8)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_4442da(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x45a5a3___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x45a5a3_type* @G__0x45a5a3 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_jne_.L_44418a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0xc__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 12)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_4442d5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x45a5a7___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x45a5a7_type* @G__0x45a5a7 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_jne_.L_4441af(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0xe__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 14)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_4442d0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x45a5ad___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x45a5ad_type* @G__0x45a5ad to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_jne_.L_4441d4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x65__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 101)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_4442cb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x45a5b7___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x45a5b7_type* @G__0x45a5b7 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_jne_.L_4441f9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x66__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 102)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_4442c6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x45a5bd___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x45a5bd_type* @G__0x45a5bd to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_jne_.L_44421e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x67__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 103)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_4442c1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x455d2b___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x455d2b_type* @G__0x455d2b to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_jne_.L_444243(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x68__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 104)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_4442bc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x45a5c1___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x45a5c1_type* @G__0x45a5c1 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_jne_.L_444268(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x69__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 105)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_4442b7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x45a5c5___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x45a5c5_type* @G__0x45a5c5 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_jne_.L_44428d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x6a__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 106)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_4442b2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x4568a6___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x4568a6_type* @G__0x4568a6 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_jne_.L_4442ad(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x6b__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 107)
  ret %struct.Memory* %13
}








































define %struct.Memory* @routine_callq_.free_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
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

