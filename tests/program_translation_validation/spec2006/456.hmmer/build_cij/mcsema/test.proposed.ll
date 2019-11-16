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

declare %struct.Memory* @sub_451f40.FSet(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals


define %struct.Memory* @build_cij(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .build_cij:	 RIP: 42c250	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 42c250	 Bytes: 1
  %loadMem_42c250 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c250 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c250)
  store %struct.Memory* %call_42c250, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 42c251	 Bytes: 3
  %loadMem_42c251 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c251 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c251)
  store %struct.Memory* %call_42c251, %struct.Memory** %MEMORY

  ; Code: subq $0x40, %rsp	 RIP: 42c254	 Bytes: 4
  %loadMem_42c254 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c254 = call %struct.Memory* @routine_subq__0x40___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c254)
  store %struct.Memory* %call_42c254, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rbp), %rax	 RIP: 42c258	 Bytes: 4
  %loadMem_42c258 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c258 = call %struct.Memory* @routine_movq_0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c258)
  store %struct.Memory* %call_42c258, %struct.Memory** %MEMORY

  ; Code: movl $0x8, %r10d	 RIP: 42c25c	 Bytes: 6
  %loadMem_42c25c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c25c = call %struct.Memory* @routine_movl__0x8___r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c25c)
  store %struct.Memory* %call_42c25c, %struct.Memory** %MEMORY

  ; Code: xorps %xmm0, %xmm0	 RIP: 42c262	 Bytes: 3
  %loadMem_42c262 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c262 = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c262)
  store %struct.Memory* %call_42c262, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x10(%rbp)	 RIP: 42c265	 Bytes: 4
  %loadMem_42c265 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c265 = call %struct.Memory* @routine_movq__rdi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c265)
  store %struct.Memory* %call_42c265, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x14(%rbp)	 RIP: 42c269	 Bytes: 3
  %loadMem_42c269 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c269 = call %struct.Memory* @routine_movl__esi__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c269)
  store %struct.Memory* %call_42c269, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x20(%rbp)	 RIP: 42c26c	 Bytes: 4
  %loadMem_42c26c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c26c = call %struct.Memory* @routine_movq__rdx__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c26c)
  store %struct.Memory* %call_42c26c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x24(%rbp)	 RIP: 42c270	 Bytes: 3
  %loadMem_42c270 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c270 = call %struct.Memory* @routine_movl__ecx__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c270)
  store %struct.Memory* %call_42c270, %struct.Memory** %MEMORY

  ; Code: movl %r8d, -0x28(%rbp)	 RIP: 42c273	 Bytes: 4
  %loadMem_42c273 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c273 = call %struct.Memory* @routine_movl__r8d__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c273)
  store %struct.Memory* %call_42c273, %struct.Memory** %MEMORY

  ; Code: movq %r9, -0x30(%rbp)	 RIP: 42c277	 Bytes: 4
  %loadMem_42c277 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c277 = call %struct.Memory* @routine_movq__r9__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c277)
  store %struct.Memory* %call_42c277, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x38(%rbp)	 RIP: 42c27b	 Bytes: 4
  %loadMem_42c27b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c27b = call %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c27b)
  store %struct.Memory* %call_42c27b, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 42c27f	 Bytes: 3
  %loadMem_42c27f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c27f = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c27f)
  store %struct.Memory* %call_42c27f, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %ecx	 RIP: 42c282	 Bytes: 3
  %loadMem_42c282 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c282 = call %struct.Memory* @routine_addl__0xffffffff___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c282)
  store %struct.Memory* %call_42c282, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x24(%rbp)	 RIP: 42c285	 Bytes: 3
  %loadMem_42c285 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c285 = call %struct.Memory* @routine_movl__ecx__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c285)
  store %struct.Memory* %call_42c285, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 42c288	 Bytes: 3
  %loadMem_42c288 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c288 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c288)
  store %struct.Memory* %call_42c288, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %ecx	 RIP: 42c28b	 Bytes: 3
  %loadMem_42c28b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c28b = call %struct.Memory* @routine_addl__0xffffffff___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c28b)
  store %struct.Memory* %call_42c28b, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x28(%rbp)	 RIP: 42c28e	 Bytes: 3
  %loadMem_42c28e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c28e = call %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c28e)
  store %struct.Memory* %call_42c28e, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdi	 RIP: 42c291	 Bytes: 4
  %loadMem_42c291 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c291 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c291)
  store %struct.Memory* %call_42c291, %struct.Memory** %MEMORY

  ; Code: movl %r10d, %esi	 RIP: 42c295	 Bytes: 3
  %loadMem_42c295 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c295 = call %struct.Memory* @routine_movl__r10d___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c295)
  store %struct.Memory* %call_42c295, %struct.Memory** %MEMORY

  ; Code: callq .FSet	 RIP: 42c298	 Bytes: 5
  %loadMem1_42c298 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42c298 = call %struct.Memory* @routine_callq_.FSet(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42c298, i64 154792, i64 5, i64 5)
  store %struct.Memory* %call1_42c298, %struct.Memory** %MEMORY

  %loadMem2_42c298 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42c298 = load i64, i64* %3
  %call2_42c298 = call %struct.Memory* @sub_451f40.FSet(%struct.State* %0, i64  %loadPC_42c298, %struct.Memory* %loadMem2_42c298)
  store %struct.Memory* %call2_42c298, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x3c(%rbp)	 RIP: 42c29d	 Bytes: 7
  %loadMem_42c29d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c29d = call %struct.Memory* @routine_movl__0x0__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c29d)
  store %struct.Memory* %call_42c29d, %struct.Memory** %MEMORY

  ; Code: .L_42c2a4:	 RIP: 42c2a4	 Bytes: 0
  br label %block_.L_42c2a4
block_.L_42c2a4:

  ; Code: movl -0x3c(%rbp), %eax	 RIP: 42c2a4	 Bytes: 3
  %loadMem_42c2a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c2a4 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c2a4)
  store %struct.Memory* %call_42c2a4, %struct.Memory** %MEMORY

  ; Code: cmpl -0x14(%rbp), %eax	 RIP: 42c2a7	 Bytes: 3
  %loadMem_42c2a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c2a7 = call %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c2a7)
  store %struct.Memory* %call_42c2a7, %struct.Memory** %MEMORY

  ; Code: jge .L_42c6fb	 RIP: 42c2aa	 Bytes: 6
  %loadMem_42c2aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c2aa = call %struct.Memory* @routine_jge_.L_42c6fb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c2aa, i8* %BRANCH_TAKEN, i64 1105, i64 6, i64 6)
  store %struct.Memory* %call_42c2aa, %struct.Memory** %MEMORY

  %loadBr_42c2aa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c2aa = icmp eq i8 %loadBr_42c2aa, 1
  br i1 %cmpBr_42c2aa, label %block_.L_42c6fb, label %block_42c2b0

block_42c2b0:
  ; Code: movq -0x20(%rbp), %rax	 RIP: 42c2b0	 Bytes: 4
  %loadMem_42c2b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c2b0 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c2b0)
  store %struct.Memory* %call_42c2b0, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 42c2b4	 Bytes: 4
  %loadMem_42c2b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c2b4 = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c2b4)
  store %struct.Memory* %call_42c2b4, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax,%rcx,4)	 RIP: 42c2b8	 Bytes: 4
  %loadMem_42c2b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c2b8 = call %struct.Memory* @routine_cmpl__0x0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c2b8)
  store %struct.Memory* %call_42c2b8, %struct.Memory** %MEMORY

  ; Code: jle .L_42c464	 RIP: 42c2bc	 Bytes: 6
  %loadMem_42c2bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c2bc = call %struct.Memory* @routine_jle_.L_42c464(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c2bc, i8* %BRANCH_TAKEN, i64 424, i64 6, i64 6)
  store %struct.Memory* %call_42c2bc, %struct.Memory** %MEMORY

  %loadBr_42c2bc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c2bc = icmp eq i8 %loadBr_42c2bc, 1
  br i1 %cmpBr_42c2bc, label %block_.L_42c464, label %block_42c2c2

block_42c2c2:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 42c2c2	 Bytes: 4
  %loadMem_42c2c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c2c2 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c2c2)
  store %struct.Memory* %call_42c2c2, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 42c2c6	 Bytes: 4
  %loadMem_42c2c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c2c6 = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c2c6)
  store %struct.Memory* %call_42c2c6, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42c2ca	 Bytes: 4
  %loadMem_42c2ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c2ca = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c2ca)
  store %struct.Memory* %call_42c2ca, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 42c2ce	 Bytes: 4
  %loadMem_42c2ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c2ce = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c2ce)
  store %struct.Memory* %call_42c2ce, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 42c2d2	 Bytes: 4
  %loadMem_42c2d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c2d2 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c2d2)
  store %struct.Memory* %call_42c2d2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x20, %edx	 RIP: 42c2d6	 Bytes: 3
  %loadMem_42c2d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c2d6 = call %struct.Memory* @routine_cmpl__0x20___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c2d6)
  store %struct.Memory* %call_42c2d6, %struct.Memory** %MEMORY

  ; Code: je .L_42c353	 RIP: 42c2d9	 Bytes: 6
  %loadMem_42c2d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c2d9 = call %struct.Memory* @routine_je_.L_42c353(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c2d9, i8* %BRANCH_TAKEN, i64 122, i64 6, i64 6)
  store %struct.Memory* %call_42c2d9, %struct.Memory** %MEMORY

  %loadBr_42c2d9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c2d9 = icmp eq i8 %loadBr_42c2d9, 1
  br i1 %cmpBr_42c2d9, label %block_.L_42c353, label %block_42c2df

block_42c2df:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 42c2df	 Bytes: 4
  %loadMem_42c2df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c2df = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c2df)
  store %struct.Memory* %call_42c2df, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 42c2e3	 Bytes: 4
  %loadMem_42c2e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c2e3 = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c2e3)
  store %struct.Memory* %call_42c2e3, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42c2e7	 Bytes: 4
  %loadMem_42c2e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c2e7 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c2e7)
  store %struct.Memory* %call_42c2e7, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 42c2eb	 Bytes: 4
  %loadMem_42c2eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c2eb = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c2eb)
  store %struct.Memory* %call_42c2eb, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 42c2ef	 Bytes: 4
  %loadMem_42c2ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c2ef = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c2ef)
  store %struct.Memory* %call_42c2ef, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2e, %edx	 RIP: 42c2f3	 Bytes: 3
  %loadMem_42c2f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c2f3 = call %struct.Memory* @routine_cmpl__0x2e___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c2f3)
  store %struct.Memory* %call_42c2f3, %struct.Memory** %MEMORY

  ; Code: je .L_42c353	 RIP: 42c2f6	 Bytes: 6
  %loadMem_42c2f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c2f6 = call %struct.Memory* @routine_je_.L_42c353(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c2f6, i8* %BRANCH_TAKEN, i64 93, i64 6, i64 6)
  store %struct.Memory* %call_42c2f6, %struct.Memory** %MEMORY

  %loadBr_42c2f6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c2f6 = icmp eq i8 %loadBr_42c2f6, 1
  br i1 %cmpBr_42c2f6, label %block_.L_42c353, label %block_42c2fc

block_42c2fc:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 42c2fc	 Bytes: 4
  %loadMem_42c2fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c2fc = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c2fc)
  store %struct.Memory* %call_42c2fc, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 42c300	 Bytes: 4
  %loadMem_42c300 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c300 = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c300)
  store %struct.Memory* %call_42c300, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42c304	 Bytes: 4
  %loadMem_42c304 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c304 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c304)
  store %struct.Memory* %call_42c304, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 42c308	 Bytes: 4
  %loadMem_42c308 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c308 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c308)
  store %struct.Memory* %call_42c308, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 42c30c	 Bytes: 4
  %loadMem_42c30c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c30c = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c30c)
  store %struct.Memory* %call_42c30c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5f, %edx	 RIP: 42c310	 Bytes: 3
  %loadMem_42c310 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c310 = call %struct.Memory* @routine_cmpl__0x5f___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c310)
  store %struct.Memory* %call_42c310, %struct.Memory** %MEMORY

  ; Code: je .L_42c353	 RIP: 42c313	 Bytes: 6
  %loadMem_42c313 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c313 = call %struct.Memory* @routine_je_.L_42c353(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c313, i8* %BRANCH_TAKEN, i64 64, i64 6, i64 6)
  store %struct.Memory* %call_42c313, %struct.Memory** %MEMORY

  %loadBr_42c313 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c313 = icmp eq i8 %loadBr_42c313, 1
  br i1 %cmpBr_42c313, label %block_.L_42c353, label %block_42c319

block_42c319:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 42c319	 Bytes: 4
  %loadMem_42c319 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c319 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c319)
  store %struct.Memory* %call_42c319, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 42c31d	 Bytes: 4
  %loadMem_42c31d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c31d = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c31d)
  store %struct.Memory* %call_42c31d, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42c321	 Bytes: 4
  %loadMem_42c321 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c321 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c321)
  store %struct.Memory* %call_42c321, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 42c325	 Bytes: 4
  %loadMem_42c325 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c325 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c325)
  store %struct.Memory* %call_42c325, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 42c329	 Bytes: 4
  %loadMem_42c329 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c329 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c329)
  store %struct.Memory* %call_42c329, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2d, %edx	 RIP: 42c32d	 Bytes: 3
  %loadMem_42c32d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c32d = call %struct.Memory* @routine_cmpl__0x2d___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c32d)
  store %struct.Memory* %call_42c32d, %struct.Memory** %MEMORY

  ; Code: je .L_42c353	 RIP: 42c330	 Bytes: 6
  %loadMem_42c330 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c330 = call %struct.Memory* @routine_je_.L_42c353(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c330, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_42c330, %struct.Memory** %MEMORY

  %loadBr_42c330 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c330 = icmp eq i8 %loadBr_42c330, 1
  br i1 %cmpBr_42c330, label %block_.L_42c353, label %block_42c336

block_42c336:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 42c336	 Bytes: 4
  %loadMem_42c336 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c336 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c336)
  store %struct.Memory* %call_42c336, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 42c33a	 Bytes: 4
  %loadMem_42c33a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c33a = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c33a)
  store %struct.Memory* %call_42c33a, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42c33e	 Bytes: 4
  %loadMem_42c33e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c33e = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c33e)
  store %struct.Memory* %call_42c33e, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 42c342	 Bytes: 4
  %loadMem_42c342 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c342 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c342)
  store %struct.Memory* %call_42c342, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 42c346	 Bytes: 4
  %loadMem_42c346 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c346 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c346)
  store %struct.Memory* %call_42c346, %struct.Memory** %MEMORY

  ; Code: cmpl $0x7e, %edx	 RIP: 42c34a	 Bytes: 3
  %loadMem_42c34a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c34a = call %struct.Memory* @routine_cmpl__0x7e___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c34a)
  store %struct.Memory* %call_42c34a, %struct.Memory** %MEMORY

  ; Code: jne .L_42c35f	 RIP: 42c34d	 Bytes: 6
  %loadMem_42c34d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c34d = call %struct.Memory* @routine_jne_.L_42c35f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c34d, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_42c34d, %struct.Memory** %MEMORY

  %loadBr_42c34d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c34d = icmp eq i8 %loadBr_42c34d, 1
  br i1 %cmpBr_42c34d, label %block_.L_42c35f, label %block_.L_42c353

  ; Code: .L_42c353:	 RIP: 42c353	 Bytes: 0
block_.L_42c353:

  ; Code: movl $0xffffffff, -0x4(%rbp)	 RIP: 42c353	 Bytes: 7
  %loadMem_42c353 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c353 = call %struct.Memory* @routine_movl__0xffffffff__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c353)
  store %struct.Memory* %call_42c353, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42c702	 RIP: 42c35a	 Bytes: 5
  %loadMem_42c35a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c35a = call %struct.Memory* @routine_jmpq_.L_42c702(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c35a, i64 936, i64 5)
  store %struct.Memory* %call_42c35a, %struct.Memory** %MEMORY

  br label %block_.L_42c702

  ; Code: .L_42c35f:	 RIP: 42c35f	 Bytes: 0
block_.L_42c35f:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 42c35f	 Bytes: 4
  %loadMem_42c35f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c35f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c35f)
  store %struct.Memory* %call_42c35f, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 42c363	 Bytes: 4
  %loadMem_42c363 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c363 = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c363)
  store %struct.Memory* %call_42c363, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42c367	 Bytes: 4
  %loadMem_42c367 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c367 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c367)
  store %struct.Memory* %call_42c367, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 42c36b	 Bytes: 4
  %loadMem_42c36b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c36b = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c36b)
  store %struct.Memory* %call_42c36b, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 42c36f	 Bytes: 4
  %loadMem_42c36f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c36f = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c36f)
  store %struct.Memory* %call_42c36f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x20, %edx	 RIP: 42c373	 Bytes: 3
  %loadMem_42c373 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c373 = call %struct.Memory* @routine_cmpl__0x20___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c373)
  store %struct.Memory* %call_42c373, %struct.Memory** %MEMORY

  ; Code: je .L_42c3f0	 RIP: 42c376	 Bytes: 6
  %loadMem_42c376 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c376 = call %struct.Memory* @routine_je_.L_42c3f0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c376, i8* %BRANCH_TAKEN, i64 122, i64 6, i64 6)
  store %struct.Memory* %call_42c376, %struct.Memory** %MEMORY

  %loadBr_42c376 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c376 = icmp eq i8 %loadBr_42c376, 1
  br i1 %cmpBr_42c376, label %block_.L_42c3f0, label %block_42c37c

block_42c37c:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 42c37c	 Bytes: 4
  %loadMem_42c37c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c37c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c37c)
  store %struct.Memory* %call_42c37c, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 42c380	 Bytes: 4
  %loadMem_42c380 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c380 = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c380)
  store %struct.Memory* %call_42c380, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42c384	 Bytes: 4
  %loadMem_42c384 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c384 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c384)
  store %struct.Memory* %call_42c384, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 42c388	 Bytes: 4
  %loadMem_42c388 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c388 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c388)
  store %struct.Memory* %call_42c388, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 42c38c	 Bytes: 4
  %loadMem_42c38c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c38c = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c38c)
  store %struct.Memory* %call_42c38c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2e, %edx	 RIP: 42c390	 Bytes: 3
  %loadMem_42c390 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c390 = call %struct.Memory* @routine_cmpl__0x2e___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c390)
  store %struct.Memory* %call_42c390, %struct.Memory** %MEMORY

  ; Code: je .L_42c3f0	 RIP: 42c393	 Bytes: 6
  %loadMem_42c393 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c393 = call %struct.Memory* @routine_je_.L_42c3f0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c393, i8* %BRANCH_TAKEN, i64 93, i64 6, i64 6)
  store %struct.Memory* %call_42c393, %struct.Memory** %MEMORY

  %loadBr_42c393 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c393 = icmp eq i8 %loadBr_42c393, 1
  br i1 %cmpBr_42c393, label %block_.L_42c3f0, label %block_42c399

block_42c399:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 42c399	 Bytes: 4
  %loadMem_42c399 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c399 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c399)
  store %struct.Memory* %call_42c399, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 42c39d	 Bytes: 4
  %loadMem_42c39d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c39d = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c39d)
  store %struct.Memory* %call_42c39d, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42c3a1	 Bytes: 4
  %loadMem_42c3a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c3a1 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c3a1)
  store %struct.Memory* %call_42c3a1, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 42c3a5	 Bytes: 4
  %loadMem_42c3a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c3a5 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c3a5)
  store %struct.Memory* %call_42c3a5, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 42c3a9	 Bytes: 4
  %loadMem_42c3a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c3a9 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c3a9)
  store %struct.Memory* %call_42c3a9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5f, %edx	 RIP: 42c3ad	 Bytes: 3
  %loadMem_42c3ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c3ad = call %struct.Memory* @routine_cmpl__0x5f___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c3ad)
  store %struct.Memory* %call_42c3ad, %struct.Memory** %MEMORY

  ; Code: je .L_42c3f0	 RIP: 42c3b0	 Bytes: 6
  %loadMem_42c3b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c3b0 = call %struct.Memory* @routine_je_.L_42c3f0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c3b0, i8* %BRANCH_TAKEN, i64 64, i64 6, i64 6)
  store %struct.Memory* %call_42c3b0, %struct.Memory** %MEMORY

  %loadBr_42c3b0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c3b0 = icmp eq i8 %loadBr_42c3b0, 1
  br i1 %cmpBr_42c3b0, label %block_.L_42c3f0, label %block_42c3b6

block_42c3b6:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 42c3b6	 Bytes: 4
  %loadMem_42c3b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c3b6 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c3b6)
  store %struct.Memory* %call_42c3b6, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 42c3ba	 Bytes: 4
  %loadMem_42c3ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c3ba = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c3ba)
  store %struct.Memory* %call_42c3ba, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42c3be	 Bytes: 4
  %loadMem_42c3be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c3be = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c3be)
  store %struct.Memory* %call_42c3be, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 42c3c2	 Bytes: 4
  %loadMem_42c3c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c3c2 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c3c2)
  store %struct.Memory* %call_42c3c2, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 42c3c6	 Bytes: 4
  %loadMem_42c3c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c3c6 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c3c6)
  store %struct.Memory* %call_42c3c6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2d, %edx	 RIP: 42c3ca	 Bytes: 3
  %loadMem_42c3ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c3ca = call %struct.Memory* @routine_cmpl__0x2d___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c3ca)
  store %struct.Memory* %call_42c3ca, %struct.Memory** %MEMORY

  ; Code: je .L_42c3f0	 RIP: 42c3cd	 Bytes: 6
  %loadMem_42c3cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c3cd = call %struct.Memory* @routine_je_.L_42c3f0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c3cd, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_42c3cd, %struct.Memory** %MEMORY

  %loadBr_42c3cd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c3cd = icmp eq i8 %loadBr_42c3cd, 1
  br i1 %cmpBr_42c3cd, label %block_.L_42c3f0, label %block_42c3d3

block_42c3d3:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 42c3d3	 Bytes: 4
  %loadMem_42c3d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c3d3 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c3d3)
  store %struct.Memory* %call_42c3d3, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 42c3d7	 Bytes: 4
  %loadMem_42c3d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c3d7 = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c3d7)
  store %struct.Memory* %call_42c3d7, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42c3db	 Bytes: 4
  %loadMem_42c3db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c3db = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c3db)
  store %struct.Memory* %call_42c3db, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 42c3df	 Bytes: 4
  %loadMem_42c3df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c3df = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c3df)
  store %struct.Memory* %call_42c3df, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 42c3e3	 Bytes: 4
  %loadMem_42c3e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c3e3 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c3e3)
  store %struct.Memory* %call_42c3e3, %struct.Memory** %MEMORY

  ; Code: cmpl $0x7e, %edx	 RIP: 42c3e7	 Bytes: 3
  %loadMem_42c3e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c3e7 = call %struct.Memory* @routine_cmpl__0x7e___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c3e7)
  store %struct.Memory* %call_42c3e7, %struct.Memory** %MEMORY

  ; Code: jne .L_42c3fc	 RIP: 42c3ea	 Bytes: 6
  %loadMem_42c3ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c3ea = call %struct.Memory* @routine_jne_.L_42c3fc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c3ea, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_42c3ea, %struct.Memory** %MEMORY

  %loadBr_42c3ea = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c3ea = icmp eq i8 %loadBr_42c3ea, 1
  br i1 %cmpBr_42c3ea, label %block_.L_42c3fc, label %block_.L_42c3f0

  ; Code: .L_42c3f0:	 RIP: 42c3f0	 Bytes: 0
block_.L_42c3f0:

  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 42c3f0	 Bytes: 7
  %loadMem_42c3f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c3f0 = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c3f0)
  store %struct.Memory* %call_42c3f0, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42c702	 RIP: 42c3f7	 Bytes: 5
  %loadMem_42c3f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c3f7 = call %struct.Memory* @routine_jmpq_.L_42c702(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c3f7, i64 779, i64 5)
  store %struct.Memory* %call_42c3f7, %struct.Memory** %MEMORY

  br label %block_.L_42c702

  ; Code: .L_42c3fc:	 RIP: 42c3fc	 Bytes: 0
block_.L_42c3fc:

  ; Code: movq -0x30(%rbp), %rax	 RIP: 42c3fc	 Bytes: 4
  %loadMem_42c3fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c3fc = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c3fc)
  store %struct.Memory* %call_42c3fc, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 42c400	 Bytes: 4
  %loadMem_42c400 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c400 = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c400)
  store %struct.Memory* %call_42c400, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm0	 RIP: 42c404	 Bytes: 5
  %loadMem_42c404 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c404 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c404)
  store %struct.Memory* %call_42c404, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 42c409	 Bytes: 4
  %loadMem_42c409 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c409 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c409)
  store %struct.Memory* %call_42c409, %struct.Memory** %MEMORY

  ; Code: addss 0x4(%rax), %xmm0	 RIP: 42c40d	 Bytes: 5
  %loadMem_42c40d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c40d = call %struct.Memory* @routine_addss_0x4__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c40d)
  store %struct.Memory* %call_42c40d, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x4(%rax)	 RIP: 42c412	 Bytes: 5
  %loadMem_42c412 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c412 = call %struct.Memory* @routine_movss__xmm0__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c412)
  store %struct.Memory* %call_42c412, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 42c417	 Bytes: 4
  %loadMem_42c417 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c417 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c417)
  store %struct.Memory* %call_42c417, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 42c41b	 Bytes: 4
  %loadMem_42c41b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c41b = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c41b)
  store %struct.Memory* %call_42c41b, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 42c41f	 Bytes: 3
  %loadMem_42c41f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c41f = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c41f)
  store %struct.Memory* %call_42c41f, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 42c422	 Bytes: 3
  %loadMem_42c422 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c422 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c422)
  store %struct.Memory* %call_42c422, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl %edx, %xmm0	 RIP: 42c425	 Bytes: 4
  %loadMem_42c425 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c425 = call %struct.Memory* @routine_cvtsi2ssl__edx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c425)
  store %struct.Memory* %call_42c425, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 42c429	 Bytes: 4
  %loadMem_42c429 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c429 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c429)
  store %struct.Memory* %call_42c429, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 42c42d	 Bytes: 4
  %loadMem_42c42d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c42d = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c42d)
  store %struct.Memory* %call_42c42d, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm0	 RIP: 42c431	 Bytes: 5
  %loadMem_42c431 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c431 = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c431)
  store %struct.Memory* %call_42c431, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 42c436	 Bytes: 4
  %loadMem_42c436 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c436 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c436)
  store %struct.Memory* %call_42c436, %struct.Memory** %MEMORY

  ; Code: addss 0x10(%rax), %xmm0	 RIP: 42c43a	 Bytes: 5
  %loadMem_42c43a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c43a = call %struct.Memory* @routine_addss_0x10__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c43a)
  store %struct.Memory* %call_42c43a, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x10(%rax)	 RIP: 42c43f	 Bytes: 5
  %loadMem_42c43f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c43f = call %struct.Memory* @routine_movss__xmm0__0x10__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c43f)
  store %struct.Memory* %call_42c43f, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 42c444	 Bytes: 4
  %loadMem_42c444 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c444 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c444)
  store %struct.Memory* %call_42c444, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 42c448	 Bytes: 4
  %loadMem_42c448 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c448 = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c448)
  store %struct.Memory* %call_42c448, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm0	 RIP: 42c44c	 Bytes: 5
  %loadMem_42c44c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c44c = call %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c44c)
  store %struct.Memory* %call_42c44c, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 42c451	 Bytes: 4
  %loadMem_42c451 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c451 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c451)
  store %struct.Memory* %call_42c451, %struct.Memory** %MEMORY

  ; Code: addss 0xc(%rax), %xmm0	 RIP: 42c455	 Bytes: 5
  %loadMem_42c455 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c455 = call %struct.Memory* @routine_addss_0xc__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c455)
  store %struct.Memory* %call_42c455, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0xc(%rax)	 RIP: 42c45a	 Bytes: 5
  %loadMem_42c45a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c45a = call %struct.Memory* @routine_movss__xmm0__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c45a)
  store %struct.Memory* %call_42c45a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42c6e8	 RIP: 42c45f	 Bytes: 5
  %loadMem_42c45f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c45f = call %struct.Memory* @routine_jmpq_.L_42c6e8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c45f, i64 649, i64 5)
  store %struct.Memory* %call_42c45f, %struct.Memory** %MEMORY

  br label %block_.L_42c6e8

  ; Code: .L_42c464:	 RIP: 42c464	 Bytes: 0
block_.L_42c464:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 42c464	 Bytes: 4
  %loadMem_42c464 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c464 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c464)
  store %struct.Memory* %call_42c464, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 42c468	 Bytes: 4
  %loadMem_42c468 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c468 = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c468)
  store %struct.Memory* %call_42c468, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42c46c	 Bytes: 4
  %loadMem_42c46c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c46c = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c46c)
  store %struct.Memory* %call_42c46c, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 42c470	 Bytes: 4
  %loadMem_42c470 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c470 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c470)
  store %struct.Memory* %call_42c470, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 42c474	 Bytes: 4
  %loadMem_42c474 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c474 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c474)
  store %struct.Memory* %call_42c474, %struct.Memory** %MEMORY

  ; Code: cmpl $0x20, %edx	 RIP: 42c478	 Bytes: 3
  %loadMem_42c478 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c478 = call %struct.Memory* @routine_cmpl__0x20___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c478)
  store %struct.Memory* %call_42c478, %struct.Memory** %MEMORY

  ; Code: je .L_42c5eb	 RIP: 42c47b	 Bytes: 6
  %loadMem_42c47b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c47b = call %struct.Memory* @routine_je_.L_42c5eb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c47b, i8* %BRANCH_TAKEN, i64 368, i64 6, i64 6)
  store %struct.Memory* %call_42c47b, %struct.Memory** %MEMORY

  %loadBr_42c47b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c47b = icmp eq i8 %loadBr_42c47b, 1
  br i1 %cmpBr_42c47b, label %block_.L_42c5eb, label %block_42c481

block_42c481:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 42c481	 Bytes: 4
  %loadMem_42c481 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c481 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c481)
  store %struct.Memory* %call_42c481, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 42c485	 Bytes: 4
  %loadMem_42c485 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c485 = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c485)
  store %struct.Memory* %call_42c485, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42c489	 Bytes: 4
  %loadMem_42c489 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c489 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c489)
  store %struct.Memory* %call_42c489, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 42c48d	 Bytes: 4
  %loadMem_42c48d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c48d = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c48d)
  store %struct.Memory* %call_42c48d, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 42c491	 Bytes: 4
  %loadMem_42c491 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c491 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c491)
  store %struct.Memory* %call_42c491, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2e, %edx	 RIP: 42c495	 Bytes: 3
  %loadMem_42c495 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c495 = call %struct.Memory* @routine_cmpl__0x2e___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c495)
  store %struct.Memory* %call_42c495, %struct.Memory** %MEMORY

  ; Code: je .L_42c5eb	 RIP: 42c498	 Bytes: 6
  %loadMem_42c498 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c498 = call %struct.Memory* @routine_je_.L_42c5eb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c498, i8* %BRANCH_TAKEN, i64 339, i64 6, i64 6)
  store %struct.Memory* %call_42c498, %struct.Memory** %MEMORY

  %loadBr_42c498 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c498 = icmp eq i8 %loadBr_42c498, 1
  br i1 %cmpBr_42c498, label %block_.L_42c5eb, label %block_42c49e

block_42c49e:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 42c49e	 Bytes: 4
  %loadMem_42c49e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c49e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c49e)
  store %struct.Memory* %call_42c49e, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 42c4a2	 Bytes: 4
  %loadMem_42c4a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c4a2 = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c4a2)
  store %struct.Memory* %call_42c4a2, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42c4a6	 Bytes: 4
  %loadMem_42c4a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c4a6 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c4a6)
  store %struct.Memory* %call_42c4a6, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 42c4aa	 Bytes: 4
  %loadMem_42c4aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c4aa = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c4aa)
  store %struct.Memory* %call_42c4aa, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 42c4ae	 Bytes: 4
  %loadMem_42c4ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c4ae = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c4ae)
  store %struct.Memory* %call_42c4ae, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5f, %edx	 RIP: 42c4b2	 Bytes: 3
  %loadMem_42c4b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c4b2 = call %struct.Memory* @routine_cmpl__0x5f___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c4b2)
  store %struct.Memory* %call_42c4b2, %struct.Memory** %MEMORY

  ; Code: je .L_42c5eb	 RIP: 42c4b5	 Bytes: 6
  %loadMem_42c4b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c4b5 = call %struct.Memory* @routine_je_.L_42c5eb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c4b5, i8* %BRANCH_TAKEN, i64 310, i64 6, i64 6)
  store %struct.Memory* %call_42c4b5, %struct.Memory** %MEMORY

  %loadBr_42c4b5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c4b5 = icmp eq i8 %loadBr_42c4b5, 1
  br i1 %cmpBr_42c4b5, label %block_.L_42c5eb, label %block_42c4bb

block_42c4bb:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 42c4bb	 Bytes: 4
  %loadMem_42c4bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c4bb = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c4bb)
  store %struct.Memory* %call_42c4bb, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 42c4bf	 Bytes: 4
  %loadMem_42c4bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c4bf = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c4bf)
  store %struct.Memory* %call_42c4bf, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42c4c3	 Bytes: 4
  %loadMem_42c4c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c4c3 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c4c3)
  store %struct.Memory* %call_42c4c3, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 42c4c7	 Bytes: 4
  %loadMem_42c4c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c4c7 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c4c7)
  store %struct.Memory* %call_42c4c7, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 42c4cb	 Bytes: 4
  %loadMem_42c4cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c4cb = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c4cb)
  store %struct.Memory* %call_42c4cb, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2d, %edx	 RIP: 42c4cf	 Bytes: 3
  %loadMem_42c4cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c4cf = call %struct.Memory* @routine_cmpl__0x2d___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c4cf)
  store %struct.Memory* %call_42c4cf, %struct.Memory** %MEMORY

  ; Code: je .L_42c5eb	 RIP: 42c4d2	 Bytes: 6
  %loadMem_42c4d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c4d2 = call %struct.Memory* @routine_je_.L_42c5eb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c4d2, i8* %BRANCH_TAKEN, i64 281, i64 6, i64 6)
  store %struct.Memory* %call_42c4d2, %struct.Memory** %MEMORY

  %loadBr_42c4d2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c4d2 = icmp eq i8 %loadBr_42c4d2, 1
  br i1 %cmpBr_42c4d2, label %block_.L_42c5eb, label %block_42c4d8

block_42c4d8:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 42c4d8	 Bytes: 4
  %loadMem_42c4d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c4d8 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c4d8)
  store %struct.Memory* %call_42c4d8, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 42c4dc	 Bytes: 4
  %loadMem_42c4dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c4dc = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c4dc)
  store %struct.Memory* %call_42c4dc, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42c4e0	 Bytes: 4
  %loadMem_42c4e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c4e0 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c4e0)
  store %struct.Memory* %call_42c4e0, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 42c4e4	 Bytes: 4
  %loadMem_42c4e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c4e4 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c4e4)
  store %struct.Memory* %call_42c4e4, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 42c4e8	 Bytes: 4
  %loadMem_42c4e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c4e8 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c4e8)
  store %struct.Memory* %call_42c4e8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x7e, %edx	 RIP: 42c4ec	 Bytes: 3
  %loadMem_42c4ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c4ec = call %struct.Memory* @routine_cmpl__0x7e___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c4ec)
  store %struct.Memory* %call_42c4ec, %struct.Memory** %MEMORY

  ; Code: je .L_42c5eb	 RIP: 42c4ef	 Bytes: 6
  %loadMem_42c4ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c4ef = call %struct.Memory* @routine_je_.L_42c5eb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c4ef, i8* %BRANCH_TAKEN, i64 252, i64 6, i64 6)
  store %struct.Memory* %call_42c4ef, %struct.Memory** %MEMORY

  %loadBr_42c4ef = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c4ef = icmp eq i8 %loadBr_42c4ef, 1
  br i1 %cmpBr_42c4ef, label %block_.L_42c5eb, label %block_42c4f5

block_42c4f5:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 42c4f5	 Bytes: 4
  %loadMem_42c4f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c4f5 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c4f5)
  store %struct.Memory* %call_42c4f5, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 42c4f9	 Bytes: 4
  %loadMem_42c4f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c4f9 = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c4f9)
  store %struct.Memory* %call_42c4f9, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42c4fd	 Bytes: 4
  %loadMem_42c4fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c4fd = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c4fd)
  store %struct.Memory* %call_42c4fd, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 42c501	 Bytes: 4
  %loadMem_42c501 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c501 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c501)
  store %struct.Memory* %call_42c501, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 42c505	 Bytes: 4
  %loadMem_42c505 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c505 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c505)
  store %struct.Memory* %call_42c505, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5f, %edx	 RIP: 42c509	 Bytes: 3
  %loadMem_42c509 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c509 = call %struct.Memory* @routine_cmpl__0x5f___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c509)
  store %struct.Memory* %call_42c509, %struct.Memory** %MEMORY

  ; Code: jne .L_42c517	 RIP: 42c50c	 Bytes: 6
  %loadMem_42c50c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c50c = call %struct.Memory* @routine_jne_.L_42c517(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c50c, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_42c50c, %struct.Memory** %MEMORY

  %loadBr_42c50c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c50c = icmp eq i8 %loadBr_42c50c, 1
  br i1 %cmpBr_42c50c, label %block_.L_42c517, label %block_42c512

block_42c512:
  ; Code: jmpq .L_42c5e6	 RIP: 42c512	 Bytes: 5
  %loadMem_42c512 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c512 = call %struct.Memory* @routine_jmpq_.L_42c5e6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c512, i64 212, i64 5)
  store %struct.Memory* %call_42c512, %struct.Memory** %MEMORY

  br label %block_.L_42c5e6

  ; Code: .L_42c517:	 RIP: 42c517	 Bytes: 0
block_.L_42c517:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 42c517	 Bytes: 4
  %loadMem_42c517 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c517 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c517)
  store %struct.Memory* %call_42c517, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 42c51b	 Bytes: 4
  %loadMem_42c51b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c51b = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c51b)
  store %struct.Memory* %call_42c51b, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42c51f	 Bytes: 4
  %loadMem_42c51f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c51f = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c51f)
  store %struct.Memory* %call_42c51f, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 42c523	 Bytes: 4
  %loadMem_42c523 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c523 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c523)
  store %struct.Memory* %call_42c523, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 42c527	 Bytes: 4
  %loadMem_42c527 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c527 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c527)
  store %struct.Memory* %call_42c527, %struct.Memory** %MEMORY

  ; Code: cmpl $0x20, %edx	 RIP: 42c52b	 Bytes: 3
  %loadMem_42c52b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c52b = call %struct.Memory* @routine_cmpl__0x20___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c52b)
  store %struct.Memory* %call_42c52b, %struct.Memory** %MEMORY

  ; Code: je .L_42c5a8	 RIP: 42c52e	 Bytes: 6
  %loadMem_42c52e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c52e = call %struct.Memory* @routine_je_.L_42c5a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c52e, i8* %BRANCH_TAKEN, i64 122, i64 6, i64 6)
  store %struct.Memory* %call_42c52e, %struct.Memory** %MEMORY

  %loadBr_42c52e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c52e = icmp eq i8 %loadBr_42c52e, 1
  br i1 %cmpBr_42c52e, label %block_.L_42c5a8, label %block_42c534

block_42c534:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 42c534	 Bytes: 4
  %loadMem_42c534 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c534 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c534)
  store %struct.Memory* %call_42c534, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 42c538	 Bytes: 4
  %loadMem_42c538 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c538 = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c538)
  store %struct.Memory* %call_42c538, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42c53c	 Bytes: 4
  %loadMem_42c53c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c53c = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c53c)
  store %struct.Memory* %call_42c53c, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 42c540	 Bytes: 4
  %loadMem_42c540 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c540 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c540)
  store %struct.Memory* %call_42c540, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 42c544	 Bytes: 4
  %loadMem_42c544 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c544 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c544)
  store %struct.Memory* %call_42c544, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2e, %edx	 RIP: 42c548	 Bytes: 3
  %loadMem_42c548 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c548 = call %struct.Memory* @routine_cmpl__0x2e___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c548)
  store %struct.Memory* %call_42c548, %struct.Memory** %MEMORY

  ; Code: je .L_42c5a8	 RIP: 42c54b	 Bytes: 6
  %loadMem_42c54b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c54b = call %struct.Memory* @routine_je_.L_42c5a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c54b, i8* %BRANCH_TAKEN, i64 93, i64 6, i64 6)
  store %struct.Memory* %call_42c54b, %struct.Memory** %MEMORY

  %loadBr_42c54b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c54b = icmp eq i8 %loadBr_42c54b, 1
  br i1 %cmpBr_42c54b, label %block_.L_42c5a8, label %block_42c551

block_42c551:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 42c551	 Bytes: 4
  %loadMem_42c551 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c551 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c551)
  store %struct.Memory* %call_42c551, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 42c555	 Bytes: 4
  %loadMem_42c555 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c555 = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c555)
  store %struct.Memory* %call_42c555, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42c559	 Bytes: 4
  %loadMem_42c559 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c559 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c559)
  store %struct.Memory* %call_42c559, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 42c55d	 Bytes: 4
  %loadMem_42c55d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c55d = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c55d)
  store %struct.Memory* %call_42c55d, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 42c561	 Bytes: 4
  %loadMem_42c561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c561 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c561)
  store %struct.Memory* %call_42c561, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5f, %edx	 RIP: 42c565	 Bytes: 3
  %loadMem_42c565 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c565 = call %struct.Memory* @routine_cmpl__0x5f___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c565)
  store %struct.Memory* %call_42c565, %struct.Memory** %MEMORY

  ; Code: je .L_42c5a8	 RIP: 42c568	 Bytes: 6
  %loadMem_42c568 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c568 = call %struct.Memory* @routine_je_.L_42c5a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c568, i8* %BRANCH_TAKEN, i64 64, i64 6, i64 6)
  store %struct.Memory* %call_42c568, %struct.Memory** %MEMORY

  %loadBr_42c568 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c568 = icmp eq i8 %loadBr_42c568, 1
  br i1 %cmpBr_42c568, label %block_.L_42c5a8, label %block_42c56e

block_42c56e:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 42c56e	 Bytes: 4
  %loadMem_42c56e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c56e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c56e)
  store %struct.Memory* %call_42c56e, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 42c572	 Bytes: 4
  %loadMem_42c572 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c572 = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c572)
  store %struct.Memory* %call_42c572, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42c576	 Bytes: 4
  %loadMem_42c576 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c576 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c576)
  store %struct.Memory* %call_42c576, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 42c57a	 Bytes: 4
  %loadMem_42c57a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c57a = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c57a)
  store %struct.Memory* %call_42c57a, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 42c57e	 Bytes: 4
  %loadMem_42c57e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c57e = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c57e)
  store %struct.Memory* %call_42c57e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2d, %edx	 RIP: 42c582	 Bytes: 3
  %loadMem_42c582 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c582 = call %struct.Memory* @routine_cmpl__0x2d___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c582)
  store %struct.Memory* %call_42c582, %struct.Memory** %MEMORY

  ; Code: je .L_42c5a8	 RIP: 42c585	 Bytes: 6
  %loadMem_42c585 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c585 = call %struct.Memory* @routine_je_.L_42c5a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c585, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_42c585, %struct.Memory** %MEMORY

  %loadBr_42c585 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c585 = icmp eq i8 %loadBr_42c585, 1
  br i1 %cmpBr_42c585, label %block_.L_42c5a8, label %block_42c58b

block_42c58b:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 42c58b	 Bytes: 4
  %loadMem_42c58b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c58b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c58b)
  store %struct.Memory* %call_42c58b, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 42c58f	 Bytes: 4
  %loadMem_42c58f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c58f = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c58f)
  store %struct.Memory* %call_42c58f, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42c593	 Bytes: 4
  %loadMem_42c593 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c593 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c593)
  store %struct.Memory* %call_42c593, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 42c597	 Bytes: 4
  %loadMem_42c597 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c597 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c597)
  store %struct.Memory* %call_42c597, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 42c59b	 Bytes: 4
  %loadMem_42c59b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c59b = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c59b)
  store %struct.Memory* %call_42c59b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x7e, %edx	 RIP: 42c59f	 Bytes: 3
  %loadMem_42c59f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c59f = call %struct.Memory* @routine_cmpl__0x7e___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c59f)
  store %struct.Memory* %call_42c59f, %struct.Memory** %MEMORY

  ; Code: jne .L_42c5c8	 RIP: 42c5a2	 Bytes: 6
  %loadMem_42c5a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c5a2 = call %struct.Memory* @routine_jne_.L_42c5c8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c5a2, i8* %BRANCH_TAKEN, i64 38, i64 6, i64 6)
  store %struct.Memory* %call_42c5a2, %struct.Memory** %MEMORY

  %loadBr_42c5a2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c5a2 = icmp eq i8 %loadBr_42c5a2, 1
  br i1 %cmpBr_42c5a2, label %block_.L_42c5c8, label %block_.L_42c5a8

  ; Code: .L_42c5a8:	 RIP: 42c5a8	 Bytes: 0
block_.L_42c5a8:

  ; Code: movq -0x30(%rbp), %rax	 RIP: 42c5a8	 Bytes: 4
  %loadMem_42c5a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c5a8 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c5a8)
  store %struct.Memory* %call_42c5a8, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 42c5ac	 Bytes: 4
  %loadMem_42c5ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c5ac = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c5ac)
  store %struct.Memory* %call_42c5ac, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm0	 RIP: 42c5b0	 Bytes: 5
  %loadMem_42c5b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c5b0 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c5b0)
  store %struct.Memory* %call_42c5b0, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 42c5b5	 Bytes: 4
  %loadMem_42c5b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c5b5 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c5b5)
  store %struct.Memory* %call_42c5b5, %struct.Memory** %MEMORY

  ; Code: addss 0x8(%rax), %xmm0	 RIP: 42c5b9	 Bytes: 5
  %loadMem_42c5b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c5b9 = call %struct.Memory* @routine_addss_0x8__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c5b9)
  store %struct.Memory* %call_42c5b9, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x8(%rax)	 RIP: 42c5be	 Bytes: 5
  %loadMem_42c5be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c5be = call %struct.Memory* @routine_movss__xmm0__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c5be)
  store %struct.Memory* %call_42c5be, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42c5e1	 RIP: 42c5c3	 Bytes: 5
  %loadMem_42c5c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c5c3 = call %struct.Memory* @routine_jmpq_.L_42c5e1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c5c3, i64 30, i64 5)
  store %struct.Memory* %call_42c5c3, %struct.Memory** %MEMORY

  br label %block_.L_42c5e1

  ; Code: .L_42c5c8:	 RIP: 42c5c8	 Bytes: 0
block_.L_42c5c8:

  ; Code: movq -0x30(%rbp), %rax	 RIP: 42c5c8	 Bytes: 4
  %loadMem_42c5c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c5c8 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c5c8)
  store %struct.Memory* %call_42c5c8, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 42c5cc	 Bytes: 4
  %loadMem_42c5cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c5cc = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c5cc)
  store %struct.Memory* %call_42c5cc, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm0	 RIP: 42c5d0	 Bytes: 5
  %loadMem_42c5d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c5d0 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c5d0)
  store %struct.Memory* %call_42c5d0, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 42c5d5	 Bytes: 4
  %loadMem_42c5d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c5d5 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c5d5)
  store %struct.Memory* %call_42c5d5, %struct.Memory** %MEMORY

  ; Code: addss (%rax), %xmm0	 RIP: 42c5d9	 Bytes: 4
  %loadMem_42c5d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c5d9 = call %struct.Memory* @routine_addss___rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c5d9)
  store %struct.Memory* %call_42c5d9, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, (%rax)	 RIP: 42c5dd	 Bytes: 4
  %loadMem_42c5dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c5dd = call %struct.Memory* @routine_movss__xmm0____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c5dd)
  store %struct.Memory* %call_42c5dd, %struct.Memory** %MEMORY

  ; Code: .L_42c5e1:	 RIP: 42c5e1	 Bytes: 0
  br label %block_.L_42c5e1
block_.L_42c5e1:

  ; Code: jmpq .L_42c5e6	 RIP: 42c5e1	 Bytes: 5
  %loadMem_42c5e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c5e1 = call %struct.Memory* @routine_jmpq_.L_42c5e6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c5e1, i64 5, i64 5)
  store %struct.Memory* %call_42c5e1, %struct.Memory** %MEMORY

  br label %block_.L_42c5e6

  ; Code: .L_42c5e6:	 RIP: 42c5e6	 Bytes: 0
block_.L_42c5e6:

  ; Code: jmpq .L_42c6e3	 RIP: 42c5e6	 Bytes: 5
  %loadMem_42c5e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c5e6 = call %struct.Memory* @routine_jmpq_.L_42c6e3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c5e6, i64 253, i64 5)
  store %struct.Memory* %call_42c5e6, %struct.Memory** %MEMORY

  br label %block_.L_42c6e3

  ; Code: .L_42c5eb:	 RIP: 42c5eb	 Bytes: 0
block_.L_42c5eb:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 42c5eb	 Bytes: 4
  %loadMem_42c5eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c5eb = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c5eb)
  store %struct.Memory* %call_42c5eb, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 42c5ef	 Bytes: 4
  %loadMem_42c5ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c5ef = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c5ef)
  store %struct.Memory* %call_42c5ef, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42c5f3	 Bytes: 4
  %loadMem_42c5f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c5f3 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c5f3)
  store %struct.Memory* %call_42c5f3, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 42c5f7	 Bytes: 4
  %loadMem_42c5f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c5f7 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c5f7)
  store %struct.Memory* %call_42c5f7, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 42c5fb	 Bytes: 4
  %loadMem_42c5fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c5fb = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c5fb)
  store %struct.Memory* %call_42c5fb, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5f, %edx	 RIP: 42c5ff	 Bytes: 3
  %loadMem_42c5ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c5ff = call %struct.Memory* @routine_cmpl__0x5f___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c5ff)
  store %struct.Memory* %call_42c5ff, %struct.Memory** %MEMORY

  ; Code: jne .L_42c60d	 RIP: 42c602	 Bytes: 6
  %loadMem_42c602 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c602 = call %struct.Memory* @routine_jne_.L_42c60d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c602, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_42c602, %struct.Memory** %MEMORY

  %loadBr_42c602 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c602 = icmp eq i8 %loadBr_42c602, 1
  br i1 %cmpBr_42c602, label %block_.L_42c60d, label %block_42c608

block_42c608:
  ; Code: jmpq .L_42c6ed	 RIP: 42c608	 Bytes: 5
  %loadMem_42c608 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c608 = call %struct.Memory* @routine_jmpq_.L_42c6ed(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c608, i64 229, i64 5)
  store %struct.Memory* %call_42c608, %struct.Memory** %MEMORY

  br label %block_.L_42c6ed

  ; Code: .L_42c60d:	 RIP: 42c60d	 Bytes: 0
block_.L_42c60d:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 42c60d	 Bytes: 4
  %loadMem_42c60d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c60d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c60d)
  store %struct.Memory* %call_42c60d, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 42c611	 Bytes: 4
  %loadMem_42c611 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c611 = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c611)
  store %struct.Memory* %call_42c611, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42c615	 Bytes: 4
  %loadMem_42c615 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c615 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c615)
  store %struct.Memory* %call_42c615, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 42c619	 Bytes: 4
  %loadMem_42c619 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c619 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c619)
  store %struct.Memory* %call_42c619, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 42c61d	 Bytes: 4
  %loadMem_42c61d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c61d = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c61d)
  store %struct.Memory* %call_42c61d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x20, %edx	 RIP: 42c621	 Bytes: 3
  %loadMem_42c621 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c621 = call %struct.Memory* @routine_cmpl__0x20___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c621)
  store %struct.Memory* %call_42c621, %struct.Memory** %MEMORY

  ; Code: je .L_42c69e	 RIP: 42c624	 Bytes: 6
  %loadMem_42c624 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c624 = call %struct.Memory* @routine_je_.L_42c69e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c624, i8* %BRANCH_TAKEN, i64 122, i64 6, i64 6)
  store %struct.Memory* %call_42c624, %struct.Memory** %MEMORY

  %loadBr_42c624 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c624 = icmp eq i8 %loadBr_42c624, 1
  br i1 %cmpBr_42c624, label %block_.L_42c69e, label %block_42c62a

block_42c62a:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 42c62a	 Bytes: 4
  %loadMem_42c62a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c62a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c62a)
  store %struct.Memory* %call_42c62a, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 42c62e	 Bytes: 4
  %loadMem_42c62e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c62e = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c62e)
  store %struct.Memory* %call_42c62e, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42c632	 Bytes: 4
  %loadMem_42c632 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c632 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c632)
  store %struct.Memory* %call_42c632, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 42c636	 Bytes: 4
  %loadMem_42c636 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c636 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c636)
  store %struct.Memory* %call_42c636, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 42c63a	 Bytes: 4
  %loadMem_42c63a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c63a = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c63a)
  store %struct.Memory* %call_42c63a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2e, %edx	 RIP: 42c63e	 Bytes: 3
  %loadMem_42c63e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c63e = call %struct.Memory* @routine_cmpl__0x2e___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c63e)
  store %struct.Memory* %call_42c63e, %struct.Memory** %MEMORY

  ; Code: je .L_42c69e	 RIP: 42c641	 Bytes: 6
  %loadMem_42c641 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c641 = call %struct.Memory* @routine_je_.L_42c69e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c641, i8* %BRANCH_TAKEN, i64 93, i64 6, i64 6)
  store %struct.Memory* %call_42c641, %struct.Memory** %MEMORY

  %loadBr_42c641 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c641 = icmp eq i8 %loadBr_42c641, 1
  br i1 %cmpBr_42c641, label %block_.L_42c69e, label %block_42c647

block_42c647:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 42c647	 Bytes: 4
  %loadMem_42c647 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c647 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c647)
  store %struct.Memory* %call_42c647, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 42c64b	 Bytes: 4
  %loadMem_42c64b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c64b = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c64b)
  store %struct.Memory* %call_42c64b, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42c64f	 Bytes: 4
  %loadMem_42c64f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c64f = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c64f)
  store %struct.Memory* %call_42c64f, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 42c653	 Bytes: 4
  %loadMem_42c653 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c653 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c653)
  store %struct.Memory* %call_42c653, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 42c657	 Bytes: 4
  %loadMem_42c657 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c657 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c657)
  store %struct.Memory* %call_42c657, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5f, %edx	 RIP: 42c65b	 Bytes: 3
  %loadMem_42c65b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c65b = call %struct.Memory* @routine_cmpl__0x5f___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c65b)
  store %struct.Memory* %call_42c65b, %struct.Memory** %MEMORY

  ; Code: je .L_42c69e	 RIP: 42c65e	 Bytes: 6
  %loadMem_42c65e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c65e = call %struct.Memory* @routine_je_.L_42c69e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c65e, i8* %BRANCH_TAKEN, i64 64, i64 6, i64 6)
  store %struct.Memory* %call_42c65e, %struct.Memory** %MEMORY

  %loadBr_42c65e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c65e = icmp eq i8 %loadBr_42c65e, 1
  br i1 %cmpBr_42c65e, label %block_.L_42c69e, label %block_42c664

block_42c664:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 42c664	 Bytes: 4
  %loadMem_42c664 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c664 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c664)
  store %struct.Memory* %call_42c664, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 42c668	 Bytes: 4
  %loadMem_42c668 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c668 = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c668)
  store %struct.Memory* %call_42c668, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42c66c	 Bytes: 4
  %loadMem_42c66c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c66c = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c66c)
  store %struct.Memory* %call_42c66c, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 42c670	 Bytes: 4
  %loadMem_42c670 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c670 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c670)
  store %struct.Memory* %call_42c670, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 42c674	 Bytes: 4
  %loadMem_42c674 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c674 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c674)
  store %struct.Memory* %call_42c674, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2d, %edx	 RIP: 42c678	 Bytes: 3
  %loadMem_42c678 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c678 = call %struct.Memory* @routine_cmpl__0x2d___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c678)
  store %struct.Memory* %call_42c678, %struct.Memory** %MEMORY

  ; Code: je .L_42c69e	 RIP: 42c67b	 Bytes: 6
  %loadMem_42c67b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c67b = call %struct.Memory* @routine_je_.L_42c69e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c67b, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_42c67b, %struct.Memory** %MEMORY

  %loadBr_42c67b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c67b = icmp eq i8 %loadBr_42c67b, 1
  br i1 %cmpBr_42c67b, label %block_.L_42c69e, label %block_42c681

block_42c681:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 42c681	 Bytes: 4
  %loadMem_42c681 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c681 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c681)
  store %struct.Memory* %call_42c681, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 42c685	 Bytes: 4
  %loadMem_42c685 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c685 = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c685)
  store %struct.Memory* %call_42c685, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42c689	 Bytes: 4
  %loadMem_42c689 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c689 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c689)
  store %struct.Memory* %call_42c689, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 42c68d	 Bytes: 4
  %loadMem_42c68d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c68d = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c68d)
  store %struct.Memory* %call_42c68d, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 42c691	 Bytes: 4
  %loadMem_42c691 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c691 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c691)
  store %struct.Memory* %call_42c691, %struct.Memory** %MEMORY

  ; Code: cmpl $0x7e, %edx	 RIP: 42c695	 Bytes: 3
  %loadMem_42c695 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c695 = call %struct.Memory* @routine_cmpl__0x7e___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c695)
  store %struct.Memory* %call_42c695, %struct.Memory** %MEMORY

  ; Code: jne .L_42c6be	 RIP: 42c698	 Bytes: 6
  %loadMem_42c698 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c698 = call %struct.Memory* @routine_jne_.L_42c6be(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c698, i8* %BRANCH_TAKEN, i64 38, i64 6, i64 6)
  store %struct.Memory* %call_42c698, %struct.Memory** %MEMORY

  %loadBr_42c698 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c698 = icmp eq i8 %loadBr_42c698, 1
  br i1 %cmpBr_42c698, label %block_.L_42c6be, label %block_.L_42c69e

  ; Code: .L_42c69e:	 RIP: 42c69e	 Bytes: 0
block_.L_42c69e:

  ; Code: movq -0x30(%rbp), %rax	 RIP: 42c69e	 Bytes: 4
  %loadMem_42c69e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c69e = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c69e)
  store %struct.Memory* %call_42c69e, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 42c6a2	 Bytes: 4
  %loadMem_42c6a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c6a2 = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c6a2)
  store %struct.Memory* %call_42c6a2, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm0	 RIP: 42c6a6	 Bytes: 5
  %loadMem_42c6a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c6a6 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c6a6)
  store %struct.Memory* %call_42c6a6, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 42c6ab	 Bytes: 4
  %loadMem_42c6ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c6ab = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c6ab)
  store %struct.Memory* %call_42c6ab, %struct.Memory** %MEMORY

  ; Code: addss 0x18(%rax), %xmm0	 RIP: 42c6af	 Bytes: 5
  %loadMem_42c6af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c6af = call %struct.Memory* @routine_addss_0x18__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c6af)
  store %struct.Memory* %call_42c6af, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x18(%rax)	 RIP: 42c6b4	 Bytes: 5
  %loadMem_42c6b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c6b4 = call %struct.Memory* @routine_movss__xmm0__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c6b4)
  store %struct.Memory* %call_42c6b4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42c6d9	 RIP: 42c6b9	 Bytes: 5
  %loadMem_42c6b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c6b9 = call %struct.Memory* @routine_jmpq_.L_42c6d9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c6b9, i64 32, i64 5)
  store %struct.Memory* %call_42c6b9, %struct.Memory** %MEMORY

  br label %block_.L_42c6d9

  ; Code: .L_42c6be:	 RIP: 42c6be	 Bytes: 0
block_.L_42c6be:

  ; Code: movq -0x30(%rbp), %rax	 RIP: 42c6be	 Bytes: 4
  %loadMem_42c6be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c6be = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c6be)
  store %struct.Memory* %call_42c6be, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 42c6c2	 Bytes: 4
  %loadMem_42c6c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c6c2 = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c6c2)
  store %struct.Memory* %call_42c6c2, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm0	 RIP: 42c6c6	 Bytes: 5
  %loadMem_42c6c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c6c6 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c6c6)
  store %struct.Memory* %call_42c6c6, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 42c6cb	 Bytes: 4
  %loadMem_42c6cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c6cb = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c6cb)
  store %struct.Memory* %call_42c6cb, %struct.Memory** %MEMORY

  ; Code: addss 0x14(%rax), %xmm0	 RIP: 42c6cf	 Bytes: 5
  %loadMem_42c6cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c6cf = call %struct.Memory* @routine_addss_0x14__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c6cf)
  store %struct.Memory* %call_42c6cf, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x14(%rax)	 RIP: 42c6d4	 Bytes: 5
  %loadMem_42c6d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c6d4 = call %struct.Memory* @routine_movss__xmm0__0x14__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c6d4)
  store %struct.Memory* %call_42c6d4, %struct.Memory** %MEMORY

  ; Code: .L_42c6d9:	 RIP: 42c6d9	 Bytes: 0
  br label %block_.L_42c6d9
block_.L_42c6d9:

  ; Code: jmpq .L_42c6de	 RIP: 42c6d9	 Bytes: 5
  %loadMem_42c6d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c6d9 = call %struct.Memory* @routine_jmpq_.L_42c6de(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c6d9, i64 5, i64 5)
  store %struct.Memory* %call_42c6d9, %struct.Memory** %MEMORY

  br label %block_.L_42c6de

  ; Code: .L_42c6de:	 RIP: 42c6de	 Bytes: 0
block_.L_42c6de:

  ; Code: jmpq .L_42c6e3	 RIP: 42c6de	 Bytes: 5
  %loadMem_42c6de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c6de = call %struct.Memory* @routine_jmpq_.L_42c6e3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c6de, i64 5, i64 5)
  store %struct.Memory* %call_42c6de, %struct.Memory** %MEMORY

  br label %block_.L_42c6e3

  ; Code: .L_42c6e3:	 RIP: 42c6e3	 Bytes: 0
block_.L_42c6e3:

  ; Code: jmpq .L_42c6e8	 RIP: 42c6e3	 Bytes: 5
  %loadMem_42c6e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c6e3 = call %struct.Memory* @routine_jmpq_.L_42c6e8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c6e3, i64 5, i64 5)
  store %struct.Memory* %call_42c6e3, %struct.Memory** %MEMORY

  br label %block_.L_42c6e8

  ; Code: .L_42c6e8:	 RIP: 42c6e8	 Bytes: 0
block_.L_42c6e8:

  ; Code: jmpq .L_42c6ed	 RIP: 42c6e8	 Bytes: 5
  %loadMem_42c6e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c6e8 = call %struct.Memory* @routine_jmpq_.L_42c6ed(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c6e8, i64 5, i64 5)
  store %struct.Memory* %call_42c6e8, %struct.Memory** %MEMORY

  br label %block_.L_42c6ed

  ; Code: .L_42c6ed:	 RIP: 42c6ed	 Bytes: 0
block_.L_42c6ed:

  ; Code: movl -0x3c(%rbp), %eax	 RIP: 42c6ed	 Bytes: 3
  %loadMem_42c6ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c6ed = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c6ed)
  store %struct.Memory* %call_42c6ed, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42c6f0	 Bytes: 3
  %loadMem_42c6f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c6f0 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c6f0)
  store %struct.Memory* %call_42c6f0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3c(%rbp)	 RIP: 42c6f3	 Bytes: 3
  %loadMem_42c6f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c6f3 = call %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c6f3)
  store %struct.Memory* %call_42c6f3, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42c2a4	 RIP: 42c6f6	 Bytes: 5
  %loadMem_42c6f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c6f6 = call %struct.Memory* @routine_jmpq_.L_42c2a4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c6f6, i64 -1106, i64 5)
  store %struct.Memory* %call_42c6f6, %struct.Memory** %MEMORY

  br label %block_.L_42c2a4

  ; Code: .L_42c6fb:	 RIP: 42c6fb	 Bytes: 0
block_.L_42c6fb:

  ; Code: movl $0x1, -0x4(%rbp)	 RIP: 42c6fb	 Bytes: 7
  %loadMem_42c6fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c6fb = call %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c6fb)
  store %struct.Memory* %call_42c6fb, %struct.Memory** %MEMORY

  ; Code: .L_42c702:	 RIP: 42c702	 Bytes: 0
  br label %block_.L_42c702
block_.L_42c702:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 42c702	 Bytes: 3
  %loadMem_42c702 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c702 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c702)
  store %struct.Memory* %call_42c702, %struct.Memory** %MEMORY

  ; Code: addq $0x40, %rsp	 RIP: 42c705	 Bytes: 4
  %loadMem_42c705 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c705 = call %struct.Memory* @routine_addq__0x40___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c705)
  store %struct.Memory* %call_42c705, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 42c709	 Bytes: 1
  %loadMem_42c709 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c709 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c709)
  store %struct.Memory* %call_42c709, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 42c70a	 Bytes: 1
  %loadMem_42c70a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c70a = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c70a)
  store %struct.Memory* %call_42c70a, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_42c70a
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

define %struct.Memory* @routine_subq__0x40___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 64)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq_0x10__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x8___r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R10D to i64*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 8)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4PXORI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = bitcast i8* %3 to i64*
  %7 = load i64, i64* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = bitcast i8* %4 to i64*
  %12 = load i64, i64* %11, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 8
  %14 = bitcast i8* %13 to i64*
  %15 = load i64, i64* %14, align 1
  %16 = xor i64 %12, %7
  %17 = xor i64 %15, %10
  %18 = trunc i64 %16 to i32
  %19 = lshr i64 %16, 32
  %20 = trunc i64 %19 to i32
  %21 = bitcast i8* %2 to i32*
  store i32 %18, i32* %21, align 1
  %22 = getelementptr inbounds i8, i8* %2, i64 4
  %23 = bitcast i8* %22 to i32*
  store i32 %20, i32* %23, align 1
  %24 = trunc i64 %17 to i32
  %25 = getelementptr inbounds i8, i8* %2, i64 8
  %26 = bitcast i8* %25 to i32*
  store i32 %24, i32* %26, align 1
  %27 = lshr i64 %17, 32
  %28 = trunc i64 %27 to i32
  %29 = getelementptr inbounds i8, i8* %2, i64 12
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4PXORI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__esi__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq__rdx__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movl__r8d__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq__r9__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %R9
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = load i64, i64* %RAX
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

define %struct.Memory* @routine_addl__0xffffffff___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 -1)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__r10d___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R10D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
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

define %struct.Memory* @routine_callq_.FSet(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x0__MINUS0x3c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 60
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 60
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

define %struct.Memory* @routine_jge_.L_42c6fb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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

define %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_jle_.L_42c464(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_je_.L_42c353(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_42c35f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0xffffffff__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -1)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_42c702(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_je_.L_42c3f0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
























































define %struct.Memory* @routine_jne_.L_42c3fc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to float*
  %6 = load float, float* %5
  %7 = bitcast i8* %2 to float*
  store float %6, float* %7, align 1
  %8 = getelementptr inbounds i8, i8* %2, i64 4
  %9 = bitcast i8* %8 to float*
  store float 0.000000e+00, float* %9, align 1
  %10 = getelementptr inbounds i8, i8* %2, i64 8
  %11 = bitcast i8* %10 to float*
  store float 0.000000e+00, float* %11, align 1
  %12 = getelementptr inbounds i8, i8* %2, i64 12
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %14, i64 %18)
  ret %struct.Memory* %21
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i64) #0 {
  %6 = bitcast i8* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = inttoptr i64 %4 to float*
  %12 = load float, float* %11
  %13 = extractelement <2 x float> %7, i32 0
  %14 = fadd float %13, %12
  %15 = bitcast i8* %2 to float*
  store float %14, float* %15, align 1
  %16 = bitcast <2 x float> %7 to <2 x i32>
  %17 = extractelement <2 x i32> %16, i32 1
  %18 = getelementptr inbounds i8, i8* %2, i64 4
  %19 = bitcast i8* %18 to i32*
  store i32 %17, i32* %19, align 1
  %20 = extractelement <2 x i32> %10, i32 0
  %21 = getelementptr inbounds i8, i8* %2, i64 8
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %10, i32 1
  %24 = getelementptr inbounds i8, i8* %2, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_addss_0x4__rax____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 4
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i8* nocapture readonly) #7 {
  %5 = bitcast i8* %3 to <2 x float>*
  %6 = load <2 x float>, <2 x float>* %5, align 1
  %7 = extractelement <2 x float> %6, i32 0
  %8 = inttoptr i64 %2 to float*
  store float %7, float* %8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movss__xmm0__0x4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RAX
  %12 = add i64 %11, 4
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SSI2RnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = bitcast i8* %2 to <2 x i32>*
  %6 = load <2 x i32>, <2 x i32>* %5, align 1
  %7 = getelementptr inbounds i8, i8* %2, i64 8
  %8 = bitcast i8* %7 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = trunc i64 %3 to i32
  %11 = sitofp i32 %10 to float
  %12 = bitcast i8* %2 to float*
  store float %11, float* %12, align 1
  %13 = extractelement <2 x i32> %6, i32 1
  %14 = getelementptr inbounds i8, i8* %2, i64 4
  %15 = bitcast i8* %14 to i32*
  store i32 %13, i32* %15, align 1
  %16 = extractelement <2 x i32> %9, i32 0
  %17 = bitcast i8* %7 to i32*
  store i32 %16, i32* %17, align 1
  %18 = extractelement <2 x i32> %9, i32 1
  %19 = getelementptr inbounds i8, i8* %2, i64 12
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvtsi2ssl__edx___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SSI2RnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}





define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSSI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i64) #0 {
  %6 = bitcast i8* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = inttoptr i64 %4 to float*
  %12 = load float, float* %11
  %13 = extractelement <2 x float> %7, i32 0
  %14 = fmul float %13, %12
  %15 = bitcast i8* %2 to float*
  store float %14, float* %15, align 1
  %16 = bitcast <2 x float> %7 to <2 x i32>
  %17 = extractelement <2 x i32> %16, i32 1
  %18 = getelementptr inbounds i8, i8* %2, i64 4
  %19 = bitcast i8* %18 to i32*
  store i32 %17, i32* %19, align 1
  %20 = extractelement <2 x i32> %10, i32 0
  %21 = getelementptr inbounds i8, i8* %2, i64 8
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %10, i32 1
  %24 = getelementptr inbounds i8, i8* %2, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_mulss___rax__rcx_4____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSSI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %14, i8* %15, i64 %19)
  ret %struct.Memory* %22
}




define %struct.Memory* @routine_addss_0x10__rax____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 16
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movss__xmm0__0x10__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RAX
  %12 = add i64 %11, 16
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_addss_0xc__rax____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movss__xmm0__0xc__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RAX
  %12 = add i64 %11, 12
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jmpq_.L_42c6e8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_je_.L_42c5eb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






































































define %struct.Memory* @routine_jne_.L_42c517(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jmpq_.L_42c5e6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_je_.L_42c5a8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
























































define %struct.Memory* @routine_jne_.L_42c5c8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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










define %struct.Memory* @routine_addss_0x8__rax____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movss__xmm0__0x8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RAX
  %12 = add i64 %11, 8
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jmpq_.L_42c5e1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_addss___rax____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RAX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss__xmm0____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RAX
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i8* %12)
  ret %struct.Memory* %15
}




define %struct.Memory* @routine_jmpq_.L_42c6e3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_jne_.L_42c60d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jmpq_.L_42c6ed(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_je_.L_42c69e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
























































define %struct.Memory* @routine_jne_.L_42c6be(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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










define %struct.Memory* @routine_addss_0x18__rax____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 24
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movss__xmm0__0x18__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RAX
  %12 = add i64 %11, 24
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jmpq_.L_42c6d9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_addss_0x14__rax____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 20
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movss__xmm0__0x14__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RAX
  %12 = add i64 %11, 20
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jmpq_.L_42c6de(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_42c2a4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_addq__0x40___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 64)
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

