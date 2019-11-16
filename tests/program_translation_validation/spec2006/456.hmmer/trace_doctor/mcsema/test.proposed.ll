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


define %struct.Memory* @trace_doctor(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .trace_doctor:	 RIP: 42a6c0	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 42a6c0	 Bytes: 1
  %loadMem_42a6c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a6c0 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a6c0)
  store %struct.Memory* %call_42a6c0, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 42a6c1	 Bytes: 3
  %loadMem_42a6c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a6c1 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a6c1)
  store %struct.Memory* %call_42a6c1, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x8(%rbp)	 RIP: 42a6c4	 Bytes: 4
  %loadMem_42a6c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a6c4 = call %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a6c4)
  store %struct.Memory* %call_42a6c4, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0xc(%rbp)	 RIP: 42a6c8	 Bytes: 3
  %loadMem_42a6c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a6c8 = call %struct.Memory* @routine_movl__esi__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a6c8)
  store %struct.Memory* %call_42a6c8, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x18(%rbp)	 RIP: 42a6cb	 Bytes: 4
  %loadMem_42a6cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a6cb = call %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a6cb)
  store %struct.Memory* %call_42a6cb, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x20(%rbp)	 RIP: 42a6cf	 Bytes: 4
  %loadMem_42a6cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a6cf = call %struct.Memory* @routine_movq__rcx__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a6cf)
  store %struct.Memory* %call_42a6cf, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x30(%rbp)	 RIP: 42a6d3	 Bytes: 7
  %loadMem_42a6d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a6d3 = call %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a6d3)
  store %struct.Memory* %call_42a6d3, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x2c(%rbp)	 RIP: 42a6da	 Bytes: 7
  %loadMem_42a6da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a6da = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a6da)
  store %struct.Memory* %call_42a6da, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x28(%rbp)	 RIP: 42a6e1	 Bytes: 7
  %loadMem_42a6e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a6e1 = call %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a6e1)
  store %struct.Memory* %call_42a6e1, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x24(%rbp)	 RIP: 42a6e8	 Bytes: 7
  %loadMem_42a6e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a6e8 = call %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a6e8)
  store %struct.Memory* %call_42a6e8, %struct.Memory** %MEMORY

  ; Code: .L_42a6ef:	 RIP: 42a6ef	 Bytes: 0
  br label %block_.L_42a6ef
block_.L_42a6ef:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 42a6ef	 Bytes: 3
  %loadMem_42a6ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a6ef = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a6ef)
  store %struct.Memory* %call_42a6ef, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42a6f2	 Bytes: 4
  %loadMem_42a6f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a6f2 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a6f2)
  store %struct.Memory* %call_42a6f2, %struct.Memory** %MEMORY

  ; Code: cmpl (%rcx), %eax	 RIP: 42a6f6	 Bytes: 2
  %loadMem_42a6f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a6f6 = call %struct.Memory* @routine_cmpl___rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a6f6)
  store %struct.Memory* %call_42a6f6, %struct.Memory** %MEMORY

  ; Code: jge .L_42ac7a	 RIP: 42a6f8	 Bytes: 6
  %loadMem_42a6f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a6f8 = call %struct.Memory* @routine_jge_.L_42ac7a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a6f8, i8* %BRANCH_TAKEN, i64 1410, i64 6, i64 6)
  store %struct.Memory* %call_42a6f8, %struct.Memory** %MEMORY

  %loadBr_42a6f8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a6f8 = icmp eq i8 %loadBr_42a6f8, 1
  br i1 %cmpBr_42a6f8, label %block_.L_42ac7a, label %block_42a6fe

block_42a6fe:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42a6fe	 Bytes: 4
  %loadMem_42a6fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a6fe = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a6fe)
  store %struct.Memory* %call_42a6fe, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 42a702	 Bytes: 4
  %loadMem_42a702 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a702 = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a702)
  store %struct.Memory* %call_42a702, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 42a706	 Bytes: 4
  %loadMem_42a706 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a706 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a706)
  store %struct.Memory* %call_42a706, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 42a70a	 Bytes: 4
  %loadMem_42a70a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a70a = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a70a)
  store %struct.Memory* %call_42a70a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, %edx	 RIP: 42a70e	 Bytes: 3
  %loadMem_42a70e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a70e = call %struct.Memory* @routine_cmpl__0x2___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a70e)
  store %struct.Memory* %call_42a70e, %struct.Memory** %MEMORY

  ; Code: jne .L_42a7a6	 RIP: 42a711	 Bytes: 6
  %loadMem_42a711 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a711 = call %struct.Memory* @routine_jne_.L_42a7a6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a711, i8* %BRANCH_TAKEN, i64 149, i64 6, i64 6)
  store %struct.Memory* %call_42a711, %struct.Memory** %MEMORY

  %loadBr_42a711 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a711 = icmp eq i8 %loadBr_42a711, 1
  br i1 %cmpBr_42a711, label %block_.L_42a7a6, label %block_42a717

block_42a717:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42a717	 Bytes: 4
  %loadMem_42a717 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a717 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a717)
  store %struct.Memory* %call_42a717, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 42a71b	 Bytes: 4
  %loadMem_42a71b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a71b = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a71b)
  store %struct.Memory* %call_42a71b, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 42a71f	 Bytes: 3
  %loadMem_42a71f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a71f = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a71f)
  store %struct.Memory* %call_42a71f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 42a722	 Bytes: 3
  %loadMem_42a722 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a722 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a722)
  store %struct.Memory* %call_42a722, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 42a725	 Bytes: 3
  %loadMem_42a725 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a725 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a725)
  store %struct.Memory* %call_42a725, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rdx,1), %ecx	 RIP: 42a728	 Bytes: 4
  %loadMem_42a728 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a728 = call %struct.Memory* @routine_movsbl___rax__rdx_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a728)
  store %struct.Memory* %call_42a728, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %ecx	 RIP: 42a72c	 Bytes: 3
  %loadMem_42a72c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a72c = call %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a72c)
  store %struct.Memory* %call_42a72c, %struct.Memory** %MEMORY

  ; Code: jne .L_42a7a6	 RIP: 42a72f	 Bytes: 6
  %loadMem_42a72f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a72f = call %struct.Memory* @routine_jne_.L_42a7a6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a72f, i8* %BRANCH_TAKEN, i64 119, i64 6, i64 6)
  store %struct.Memory* %call_42a72f, %struct.Memory** %MEMORY

  %loadBr_42a72f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a72f = icmp eq i8 %loadBr_42a72f, 1
  br i1 %cmpBr_42a72f, label %block_.L_42a7a6, label %block_42a735

block_42a735:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42a735	 Bytes: 4
  %loadMem_42a735 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a735 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a735)
  store %struct.Memory* %call_42a735, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 42a739	 Bytes: 4
  %loadMem_42a739 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a739 = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a739)
  store %struct.Memory* %call_42a739, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 42a73d	 Bytes: 4
  %loadMem_42a73d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a73d = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a73d)
  store %struct.Memory* %call_42a73d, %struct.Memory** %MEMORY

  ; Code: movb $0x1, (%rax,%rcx,1)	 RIP: 42a741	 Bytes: 4
  %loadMem_42a741 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a741 = call %struct.Memory* @routine_movb__0x1____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a741)
  store %struct.Memory* %call_42a741, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42a745	 Bytes: 4
  %loadMem_42a745 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a745 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a745)
  store %struct.Memory* %call_42a745, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 42a749	 Bytes: 4
  %loadMem_42a749 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a749 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a749)
  store %struct.Memory* %call_42a749, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 42a74d	 Bytes: 4
  %loadMem_42a74d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a74d = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a74d)
  store %struct.Memory* %call_42a74d, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 42a751	 Bytes: 3
  %loadMem_42a751 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a751 = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a751)
  store %struct.Memory* %call_42a751, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42a754	 Bytes: 4
  %loadMem_42a754 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a754 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a754)
  store %struct.Memory* %call_42a754, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 42a758	 Bytes: 4
  %loadMem_42a758 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a758 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a758)
  store %struct.Memory* %call_42a758, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 42a75c	 Bytes: 4
  %loadMem_42a75c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a75c = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a75c)
  store %struct.Memory* %call_42a75c, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax,%rcx,4)	 RIP: 42a760	 Bytes: 3
  %loadMem_42a760 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a760 = call %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a760)
  store %struct.Memory* %call_42a760, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42a763	 Bytes: 4
  %loadMem_42a763 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a763 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a763)
  store %struct.Memory* %call_42a763, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax), %rax	 RIP: 42a767	 Bytes: 4
  %loadMem_42a767 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a767 = call %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a767)
  store %struct.Memory* %call_42a767, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %edx	 RIP: 42a76b	 Bytes: 3
  %loadMem_42a76b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a76b = call %struct.Memory* @routine_movl_MINUS0x24__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a76b)
  store %struct.Memory* %call_42a76b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 42a76e	 Bytes: 3
  %loadMem_42a76e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a76e = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a76e)
  store %struct.Memory* %call_42a76e, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 42a771	 Bytes: 3
  %loadMem_42a771 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a771 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a771)
  store %struct.Memory* %call_42a771, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 42a774	 Bytes: 3
  %loadMem_42a774 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a774 = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a774)
  store %struct.Memory* %call_42a774, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42a777	 Bytes: 4
  %loadMem_42a777 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a777 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a777)
  store %struct.Memory* %call_42a777, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax), %rax	 RIP: 42a77b	 Bytes: 4
  %loadMem_42a77b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a77b = call %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a77b)
  store %struct.Memory* %call_42a77b, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 42a77f	 Bytes: 4
  %loadMem_42a77f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a77f = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a77f)
  store %struct.Memory* %call_42a77f, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax,%rcx,4)	 RIP: 42a783	 Bytes: 3
  %loadMem_42a783 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a783 = call %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a783)
  store %struct.Memory* %call_42a783, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %edx	 RIP: 42a786	 Bytes: 3
  %loadMem_42a786 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a786 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a786)
  store %struct.Memory* %call_42a786, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %edx	 RIP: 42a789	 Bytes: 3
  %loadMem_42a789 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a789 = call %struct.Memory* @routine_addl__0x2___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a789)
  store %struct.Memory* %call_42a789, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x24(%rbp)	 RIP: 42a78c	 Bytes: 3
  %loadMem_42a78c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a78c = call %struct.Memory* @routine_movl__edx__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a78c)
  store %struct.Memory* %call_42a78c, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %edx	 RIP: 42a78f	 Bytes: 3
  %loadMem_42a78f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a78f = call %struct.Memory* @routine_movl_MINUS0x28__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a78f)
  store %struct.Memory* %call_42a78f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 42a792	 Bytes: 3
  %loadMem_42a792 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a792 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a792)
  store %struct.Memory* %call_42a792, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x28(%rbp)	 RIP: 42a795	 Bytes: 3
  %loadMem_42a795 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a795 = call %struct.Memory* @routine_movl__edx__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a795)
  store %struct.Memory* %call_42a795, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 42a798	 Bytes: 3
  %loadMem_42a798 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a798 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a798)
  store %struct.Memory* %call_42a798, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 42a79b	 Bytes: 3
  %loadMem_42a79b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a79b = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a79b)
  store %struct.Memory* %call_42a79b, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x2c(%rbp)	 RIP: 42a79e	 Bytes: 3
  %loadMem_42a79e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a79e = call %struct.Memory* @routine_movl__edx__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a79e)
  store %struct.Memory* %call_42a79e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42ac75	 RIP: 42a7a1	 Bytes: 5
  %loadMem_42a7a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a7a1 = call %struct.Memory* @routine_jmpq_.L_42ac75(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a7a1, i64 1236, i64 5)
  store %struct.Memory* %call_42a7a1, %struct.Memory** %MEMORY

  br label %block_.L_42ac75

  ; Code: .L_42a7a6:	 RIP: 42a7a6	 Bytes: 0
block_.L_42a7a6:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42a7a6	 Bytes: 4
  %loadMem_42a7a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a7a6 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a7a6)
  store %struct.Memory* %call_42a7a6, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 42a7aa	 Bytes: 4
  %loadMem_42a7aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a7aa = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a7aa)
  store %struct.Memory* %call_42a7aa, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 42a7ae	 Bytes: 4
  %loadMem_42a7ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a7ae = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a7ae)
  store %struct.Memory* %call_42a7ae, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 42a7b2	 Bytes: 4
  %loadMem_42a7b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a7b2 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a7b2)
  store %struct.Memory* %call_42a7b2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %edx	 RIP: 42a7b6	 Bytes: 3
  %loadMem_42a7b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a7b6 = call %struct.Memory* @routine_cmpl__0x3___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a7b6)
  store %struct.Memory* %call_42a7b6, %struct.Memory** %MEMORY

  ; Code: jne .L_42a84e	 RIP: 42a7b9	 Bytes: 6
  %loadMem_42a7b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a7b9 = call %struct.Memory* @routine_jne_.L_42a84e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a7b9, i8* %BRANCH_TAKEN, i64 149, i64 6, i64 6)
  store %struct.Memory* %call_42a7b9, %struct.Memory** %MEMORY

  %loadBr_42a7b9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a7b9 = icmp eq i8 %loadBr_42a7b9, 1
  br i1 %cmpBr_42a7b9, label %block_.L_42a84e, label %block_42a7bf

block_42a7bf:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42a7bf	 Bytes: 4
  %loadMem_42a7bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a7bf = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a7bf)
  store %struct.Memory* %call_42a7bf, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 42a7c3	 Bytes: 4
  %loadMem_42a7c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a7c3 = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a7c3)
  store %struct.Memory* %call_42a7c3, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 42a7c7	 Bytes: 3
  %loadMem_42a7c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a7c7 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a7c7)
  store %struct.Memory* %call_42a7c7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 42a7ca	 Bytes: 3
  %loadMem_42a7ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a7ca = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a7ca)
  store %struct.Memory* %call_42a7ca, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 42a7cd	 Bytes: 3
  %loadMem_42a7cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a7cd = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a7cd)
  store %struct.Memory* %call_42a7cd, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rdx,1), %ecx	 RIP: 42a7d0	 Bytes: 4
  %loadMem_42a7d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a7d0 = call %struct.Memory* @routine_movsbl___rax__rdx_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a7d0)
  store %struct.Memory* %call_42a7d0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, %ecx	 RIP: 42a7d4	 Bytes: 3
  %loadMem_42a7d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a7d4 = call %struct.Memory* @routine_cmpl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a7d4)
  store %struct.Memory* %call_42a7d4, %struct.Memory** %MEMORY

  ; Code: jne .L_42a84e	 RIP: 42a7d7	 Bytes: 6
  %loadMem_42a7d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a7d7 = call %struct.Memory* @routine_jne_.L_42a84e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a7d7, i8* %BRANCH_TAKEN, i64 119, i64 6, i64 6)
  store %struct.Memory* %call_42a7d7, %struct.Memory** %MEMORY

  %loadBr_42a7d7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a7d7 = icmp eq i8 %loadBr_42a7d7, 1
  br i1 %cmpBr_42a7d7, label %block_.L_42a84e, label %block_42a7dd

block_42a7dd:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42a7dd	 Bytes: 4
  %loadMem_42a7dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a7dd = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a7dd)
  store %struct.Memory* %call_42a7dd, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 42a7e1	 Bytes: 4
  %loadMem_42a7e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a7e1 = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a7e1)
  store %struct.Memory* %call_42a7e1, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 42a7e5	 Bytes: 4
  %loadMem_42a7e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a7e5 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a7e5)
  store %struct.Memory* %call_42a7e5, %struct.Memory** %MEMORY

  ; Code: movb $0x1, (%rax,%rcx,1)	 RIP: 42a7e9	 Bytes: 4
  %loadMem_42a7e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a7e9 = call %struct.Memory* @routine_movb__0x1____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a7e9)
  store %struct.Memory* %call_42a7e9, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42a7ed	 Bytes: 4
  %loadMem_42a7ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a7ed = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a7ed)
  store %struct.Memory* %call_42a7ed, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 42a7f1	 Bytes: 4
  %loadMem_42a7f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a7f1 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a7f1)
  store %struct.Memory* %call_42a7f1, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %edx	 RIP: 42a7f5	 Bytes: 3
  %loadMem_42a7f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a7f5 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a7f5)
  store %struct.Memory* %call_42a7f5, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 42a7f8	 Bytes: 3
  %loadMem_42a7f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a7f8 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a7f8)
  store %struct.Memory* %call_42a7f8, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 42a7fb	 Bytes: 3
  %loadMem_42a7fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a7fb = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a7fb)
  store %struct.Memory* %call_42a7fb, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 42a7fe	 Bytes: 3
  %loadMem_42a7fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a7fe = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a7fe)
  store %struct.Memory* %call_42a7fe, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42a801	 Bytes: 4
  %loadMem_42a801 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a801 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a801)
  store %struct.Memory* %call_42a801, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 42a805	 Bytes: 4
  %loadMem_42a805 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a805 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a805)
  store %struct.Memory* %call_42a805, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 42a809	 Bytes: 4
  %loadMem_42a809 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a809 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a809)
  store %struct.Memory* %call_42a809, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax,%rcx,4)	 RIP: 42a80d	 Bytes: 3
  %loadMem_42a80d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a80d = call %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a80d)
  store %struct.Memory* %call_42a80d, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42a810	 Bytes: 4
  %loadMem_42a810 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a810 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a810)
  store %struct.Memory* %call_42a810, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax), %rax	 RIP: 42a814	 Bytes: 4
  %loadMem_42a814 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a814 = call %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a814)
  store %struct.Memory* %call_42a814, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 42a818	 Bytes: 4
  %loadMem_42a818 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a818 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a818)
  store %struct.Memory* %call_42a818, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 42a81c	 Bytes: 3
  %loadMem_42a81c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a81c = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a81c)
  store %struct.Memory* %call_42a81c, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42a81f	 Bytes: 4
  %loadMem_42a81f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a81f = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a81f)
  store %struct.Memory* %call_42a81f, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax), %rax	 RIP: 42a823	 Bytes: 4
  %loadMem_42a823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a823 = call %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a823)
  store %struct.Memory* %call_42a823, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 42a827	 Bytes: 4
  %loadMem_42a827 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a827 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a827)
  store %struct.Memory* %call_42a827, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax,%rcx,4)	 RIP: 42a82b	 Bytes: 3
  %loadMem_42a82b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a82b = call %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a82b)
  store %struct.Memory* %call_42a82b, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %edx	 RIP: 42a82e	 Bytes: 3
  %loadMem_42a82e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a82e = call %struct.Memory* @routine_movl_MINUS0x24__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a82e)
  store %struct.Memory* %call_42a82e, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %edx	 RIP: 42a831	 Bytes: 3
  %loadMem_42a831 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a831 = call %struct.Memory* @routine_addl__0x2___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a831)
  store %struct.Memory* %call_42a831, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x24(%rbp)	 RIP: 42a834	 Bytes: 3
  %loadMem_42a834 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a834 = call %struct.Memory* @routine_movl__edx__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a834)
  store %struct.Memory* %call_42a834, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %edx	 RIP: 42a837	 Bytes: 3
  %loadMem_42a837 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a837 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a837)
  store %struct.Memory* %call_42a837, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 42a83a	 Bytes: 3
  %loadMem_42a83a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a83a = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a83a)
  store %struct.Memory* %call_42a83a, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x28(%rbp)	 RIP: 42a83d	 Bytes: 3
  %loadMem_42a83d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a83d = call %struct.Memory* @routine_movl__edx__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a83d)
  store %struct.Memory* %call_42a83d, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edx	 RIP: 42a840	 Bytes: 3
  %loadMem_42a840 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a840 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a840)
  store %struct.Memory* %call_42a840, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 42a843	 Bytes: 3
  %loadMem_42a843 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a843 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a843)
  store %struct.Memory* %call_42a843, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x30(%rbp)	 RIP: 42a846	 Bytes: 3
  %loadMem_42a846 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a846 = call %struct.Memory* @routine_movl__edx__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a846)
  store %struct.Memory* %call_42a846, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42ac70	 RIP: 42a849	 Bytes: 5
  %loadMem_42a849 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a849 = call %struct.Memory* @routine_jmpq_.L_42ac70(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a849, i64 1063, i64 5)
  store %struct.Memory* %call_42a849, %struct.Memory** %MEMORY

  br label %block_.L_42ac70

  ; Code: .L_42a84e:	 RIP: 42a84e	 Bytes: 0
block_.L_42a84e:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42a84e	 Bytes: 4
  %loadMem_42a84e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a84e = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a84e)
  store %struct.Memory* %call_42a84e, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 42a852	 Bytes: 4
  %loadMem_42a852 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a852 = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a852)
  store %struct.Memory* %call_42a852, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 42a856	 Bytes: 4
  %loadMem_42a856 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a856 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a856)
  store %struct.Memory* %call_42a856, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 42a85a	 Bytes: 4
  %loadMem_42a85a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a85a = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a85a)
  store %struct.Memory* %call_42a85a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %edx	 RIP: 42a85e	 Bytes: 3
  %loadMem_42a85e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a85e = call %struct.Memory* @routine_cmpl__0x3___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a85e)
  store %struct.Memory* %call_42a85e, %struct.Memory** %MEMORY

  ; Code: jne .L_42a8e8	 RIP: 42a861	 Bytes: 6
  %loadMem_42a861 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a861 = call %struct.Memory* @routine_jne_.L_42a8e8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a861, i8* %BRANCH_TAKEN, i64 135, i64 6, i64 6)
  store %struct.Memory* %call_42a861, %struct.Memory** %MEMORY

  %loadBr_42a861 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a861 = icmp eq i8 %loadBr_42a861, 1
  br i1 %cmpBr_42a861, label %block_.L_42a8e8, label %block_42a867

block_42a867:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42a867	 Bytes: 4
  %loadMem_42a867 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a867 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a867)
  store %struct.Memory* %call_42a867, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 42a86b	 Bytes: 4
  %loadMem_42a86b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a86b = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a86b)
  store %struct.Memory* %call_42a86b, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 42a86f	 Bytes: 3
  %loadMem_42a86f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a86f = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a86f)
  store %struct.Memory* %call_42a86f, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 42a872	 Bytes: 3
  %loadMem_42a872 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a872 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a872)
  store %struct.Memory* %call_42a872, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 42a875	 Bytes: 3
  %loadMem_42a875 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a875 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a875)
  store %struct.Memory* %call_42a875, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rdx,1), %ecx	 RIP: 42a878	 Bytes: 4
  %loadMem_42a878 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a878 = call %struct.Memory* @routine_movsbl___rax__rdx_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a878)
  store %struct.Memory* %call_42a878, %struct.Memory** %MEMORY

  ; Code: cmpl $0x6, %ecx	 RIP: 42a87c	 Bytes: 3
  %loadMem_42a87c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a87c = call %struct.Memory* @routine_cmpl__0x6___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a87c)
  store %struct.Memory* %call_42a87c, %struct.Memory** %MEMORY

  ; Code: jne .L_42a8e8	 RIP: 42a87f	 Bytes: 6
  %loadMem_42a87f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a87f = call %struct.Memory* @routine_jne_.L_42a8e8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a87f, i8* %BRANCH_TAKEN, i64 105, i64 6, i64 6)
  store %struct.Memory* %call_42a87f, %struct.Memory** %MEMORY

  %loadBr_42a87f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a87f = icmp eq i8 %loadBr_42a87f, 1
  br i1 %cmpBr_42a87f, label %block_.L_42a8e8, label %block_42a885

block_42a885:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42a885	 Bytes: 4
  %loadMem_42a885 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a885 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a885)
  store %struct.Memory* %call_42a885, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 42a889	 Bytes: 4
  %loadMem_42a889 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a889 = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a889)
  store %struct.Memory* %call_42a889, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 42a88d	 Bytes: 4
  %loadMem_42a88d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a88d = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a88d)
  store %struct.Memory* %call_42a88d, %struct.Memory** %MEMORY

  ; Code: movb $0x1, (%rax,%rcx,1)	 RIP: 42a891	 Bytes: 4
  %loadMem_42a891 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a891 = call %struct.Memory* @routine_movb__0x1____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a891)
  store %struct.Memory* %call_42a891, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42a895	 Bytes: 4
  %loadMem_42a895 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a895 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a895)
  store %struct.Memory* %call_42a895, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 42a899	 Bytes: 4
  %loadMem_42a899 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a899 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a899)
  store %struct.Memory* %call_42a899, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 42a89d	 Bytes: 4
  %loadMem_42a89d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a89d = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a89d)
  store %struct.Memory* %call_42a89d, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 42a8a1	 Bytes: 3
  %loadMem_42a8a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a8a1 = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a8a1)
  store %struct.Memory* %call_42a8a1, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42a8a4	 Bytes: 4
  %loadMem_42a8a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a8a4 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a8a4)
  store %struct.Memory* %call_42a8a4, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 42a8a8	 Bytes: 4
  %loadMem_42a8a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a8a8 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a8a8)
  store %struct.Memory* %call_42a8a8, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 42a8ac	 Bytes: 4
  %loadMem_42a8ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a8ac = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a8ac)
  store %struct.Memory* %call_42a8ac, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax,%rcx,4)	 RIP: 42a8b0	 Bytes: 3
  %loadMem_42a8b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a8b0 = call %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a8b0)
  store %struct.Memory* %call_42a8b0, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42a8b3	 Bytes: 4
  %loadMem_42a8b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a8b3 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a8b3)
  store %struct.Memory* %call_42a8b3, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax), %rax	 RIP: 42a8b7	 Bytes: 4
  %loadMem_42a8b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a8b7 = call %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a8b7)
  store %struct.Memory* %call_42a8b7, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 42a8bb	 Bytes: 4
  %loadMem_42a8bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a8bb = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a8bb)
  store %struct.Memory* %call_42a8bb, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 42a8bf	 Bytes: 3
  %loadMem_42a8bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a8bf = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a8bf)
  store %struct.Memory* %call_42a8bf, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42a8c2	 Bytes: 4
  %loadMem_42a8c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a8c2 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a8c2)
  store %struct.Memory* %call_42a8c2, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax), %rax	 RIP: 42a8c6	 Bytes: 4
  %loadMem_42a8c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a8c6 = call %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a8c6)
  store %struct.Memory* %call_42a8c6, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 42a8ca	 Bytes: 4
  %loadMem_42a8ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a8ca = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a8ca)
  store %struct.Memory* %call_42a8ca, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax,%rcx,4)	 RIP: 42a8ce	 Bytes: 3
  %loadMem_42a8ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a8ce = call %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a8ce)
  store %struct.Memory* %call_42a8ce, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %edx	 RIP: 42a8d1	 Bytes: 3
  %loadMem_42a8d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a8d1 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a8d1)
  store %struct.Memory* %call_42a8d1, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 42a8d4	 Bytes: 3
  %loadMem_42a8d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a8d4 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a8d4)
  store %struct.Memory* %call_42a8d4, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x24(%rbp)	 RIP: 42a8d7	 Bytes: 3
  %loadMem_42a8d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a8d7 = call %struct.Memory* @routine_movl__edx__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a8d7)
  store %struct.Memory* %call_42a8d7, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %edx	 RIP: 42a8da	 Bytes: 3
  %loadMem_42a8da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a8da = call %struct.Memory* @routine_movl_MINUS0x28__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a8da)
  store %struct.Memory* %call_42a8da, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 42a8dd	 Bytes: 3
  %loadMem_42a8dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a8dd = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a8dd)
  store %struct.Memory* %call_42a8dd, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x28(%rbp)	 RIP: 42a8e0	 Bytes: 3
  %loadMem_42a8e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a8e0 = call %struct.Memory* @routine_movl__edx__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a8e0)
  store %struct.Memory* %call_42a8e0, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42ac6b	 RIP: 42a8e3	 Bytes: 5
  %loadMem_42a8e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a8e3 = call %struct.Memory* @routine_jmpq_.L_42ac6b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a8e3, i64 904, i64 5)
  store %struct.Memory* %call_42a8e3, %struct.Memory** %MEMORY

  br label %block_.L_42ac6b

  ; Code: .L_42a8e8:	 RIP: 42a8e8	 Bytes: 0
block_.L_42a8e8:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42a8e8	 Bytes: 4
  %loadMem_42a8e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a8e8 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a8e8)
  store %struct.Memory* %call_42a8e8, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 42a8ec	 Bytes: 4
  %loadMem_42a8ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a8ec = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a8ec)
  store %struct.Memory* %call_42a8ec, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 42a8f0	 Bytes: 4
  %loadMem_42a8f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a8f0 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a8f0)
  store %struct.Memory* %call_42a8f0, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 42a8f4	 Bytes: 4
  %loadMem_42a8f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a8f4 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a8f4)
  store %struct.Memory* %call_42a8f4, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %edx	 RIP: 42a8f8	 Bytes: 3
  %loadMem_42a8f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a8f8 = call %struct.Memory* @routine_cmpl__0x3___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a8f8)
  store %struct.Memory* %call_42a8f8, %struct.Memory** %MEMORY

  ; Code: jne .L_42a985	 RIP: 42a8fb	 Bytes: 6
  %loadMem_42a8fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a8fb = call %struct.Memory* @routine_jne_.L_42a985(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a8fb, i8* %BRANCH_TAKEN, i64 138, i64 6, i64 6)
  store %struct.Memory* %call_42a8fb, %struct.Memory** %MEMORY

  %loadBr_42a8fb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a8fb = icmp eq i8 %loadBr_42a8fb, 1
  br i1 %cmpBr_42a8fb, label %block_.L_42a985, label %block_42a901

block_42a901:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42a901	 Bytes: 4
  %loadMem_42a901 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a901 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a901)
  store %struct.Memory* %call_42a901, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 42a905	 Bytes: 4
  %loadMem_42a905 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a905 = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a905)
  store %struct.Memory* %call_42a905, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 42a909	 Bytes: 3
  %loadMem_42a909 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a909 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a909)
  store %struct.Memory* %call_42a909, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 42a90c	 Bytes: 3
  %loadMem_42a90c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a90c = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a90c)
  store %struct.Memory* %call_42a90c, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 42a90f	 Bytes: 3
  %loadMem_42a90f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a90f = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a90f)
  store %struct.Memory* %call_42a90f, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rdx,1), %ecx	 RIP: 42a912	 Bytes: 4
  %loadMem_42a912 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a912 = call %struct.Memory* @routine_movsbl___rax__rdx_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a912)
  store %struct.Memory* %call_42a912, %struct.Memory** %MEMORY

  ; Code: cmpl $0x7, %ecx	 RIP: 42a916	 Bytes: 3
  %loadMem_42a916 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a916 = call %struct.Memory* @routine_cmpl__0x7___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a916)
  store %struct.Memory* %call_42a916, %struct.Memory** %MEMORY

  ; Code: jne .L_42a985	 RIP: 42a919	 Bytes: 6
  %loadMem_42a919 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a919 = call %struct.Memory* @routine_jne_.L_42a985(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a919, i8* %BRANCH_TAKEN, i64 108, i64 6, i64 6)
  store %struct.Memory* %call_42a919, %struct.Memory** %MEMORY

  %loadBr_42a919 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a919 = icmp eq i8 %loadBr_42a919, 1
  br i1 %cmpBr_42a919, label %block_.L_42a985, label %block_42a91f

block_42a91f:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42a91f	 Bytes: 4
  %loadMem_42a91f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a91f = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a91f)
  store %struct.Memory* %call_42a91f, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 42a923	 Bytes: 4
  %loadMem_42a923 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a923 = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a923)
  store %struct.Memory* %call_42a923, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 42a927	 Bytes: 4
  %loadMem_42a927 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a927 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a927)
  store %struct.Memory* %call_42a927, %struct.Memory** %MEMORY

  ; Code: movb $0x1, (%rax,%rcx,1)	 RIP: 42a92b	 Bytes: 4
  %loadMem_42a92b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a92b = call %struct.Memory* @routine_movb__0x1____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a92b)
  store %struct.Memory* %call_42a92b, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42a92f	 Bytes: 4
  %loadMem_42a92f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a92f = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a92f)
  store %struct.Memory* %call_42a92f, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 42a933	 Bytes: 4
  %loadMem_42a933 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a933 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a933)
  store %struct.Memory* %call_42a933, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 42a937	 Bytes: 4
  %loadMem_42a937 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a937 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a937)
  store %struct.Memory* %call_42a937, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 42a93b	 Bytes: 3
  %loadMem_42a93b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a93b = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a93b)
  store %struct.Memory* %call_42a93b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 42a93e	 Bytes: 3
  %loadMem_42a93e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a93e = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a93e)
  store %struct.Memory* %call_42a93e, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42a941	 Bytes: 4
  %loadMem_42a941 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a941 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a941)
  store %struct.Memory* %call_42a941, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 42a945	 Bytes: 4
  %loadMem_42a945 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a945 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a945)
  store %struct.Memory* %call_42a945, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 42a949	 Bytes: 4
  %loadMem_42a949 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a949 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a949)
  store %struct.Memory* %call_42a949, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax,%rcx,4)	 RIP: 42a94d	 Bytes: 3
  %loadMem_42a94d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a94d = call %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a94d)
  store %struct.Memory* %call_42a94d, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42a950	 Bytes: 4
  %loadMem_42a950 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a950 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a950)
  store %struct.Memory* %call_42a950, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax), %rax	 RIP: 42a954	 Bytes: 4
  %loadMem_42a954 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a954 = call %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a954)
  store %struct.Memory* %call_42a954, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 42a958	 Bytes: 4
  %loadMem_42a958 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a958 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a958)
  store %struct.Memory* %call_42a958, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 42a95c	 Bytes: 3
  %loadMem_42a95c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a95c = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a95c)
  store %struct.Memory* %call_42a95c, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42a95f	 Bytes: 4
  %loadMem_42a95f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a95f = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a95f)
  store %struct.Memory* %call_42a95f, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax), %rax	 RIP: 42a963	 Bytes: 4
  %loadMem_42a963 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a963 = call %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a963)
  store %struct.Memory* %call_42a963, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 42a967	 Bytes: 4
  %loadMem_42a967 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a967 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a967)
  store %struct.Memory* %call_42a967, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax,%rcx,4)	 RIP: 42a96b	 Bytes: 3
  %loadMem_42a96b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a96b = call %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a96b)
  store %struct.Memory* %call_42a96b, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %edx	 RIP: 42a96e	 Bytes: 3
  %loadMem_42a96e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a96e = call %struct.Memory* @routine_movl_MINUS0x24__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a96e)
  store %struct.Memory* %call_42a96e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 42a971	 Bytes: 3
  %loadMem_42a971 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a971 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a971)
  store %struct.Memory* %call_42a971, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x24(%rbp)	 RIP: 42a974	 Bytes: 3
  %loadMem_42a974 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a974 = call %struct.Memory* @routine_movl__edx__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a974)
  store %struct.Memory* %call_42a974, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %edx	 RIP: 42a977	 Bytes: 3
  %loadMem_42a977 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a977 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a977)
  store %struct.Memory* %call_42a977, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 42a97a	 Bytes: 3
  %loadMem_42a97a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a97a = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a97a)
  store %struct.Memory* %call_42a97a, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x28(%rbp)	 RIP: 42a97d	 Bytes: 3
  %loadMem_42a97d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a97d = call %struct.Memory* @routine_movl__edx__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a97d)
  store %struct.Memory* %call_42a97d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42ac66	 RIP: 42a980	 Bytes: 5
  %loadMem_42a980 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a980 = call %struct.Memory* @routine_jmpq_.L_42ac66(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a980, i64 742, i64 5)
  store %struct.Memory* %call_42a980, %struct.Memory** %MEMORY

  br label %block_.L_42ac66

  ; Code: .L_42a985:	 RIP: 42a985	 Bytes: 0
block_.L_42a985:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42a985	 Bytes: 4
  %loadMem_42a985 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a985 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a985)
  store %struct.Memory* %call_42a985, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 42a989	 Bytes: 4
  %loadMem_42a989 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a989 = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a989)
  store %struct.Memory* %call_42a989, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 42a98d	 Bytes: 4
  %loadMem_42a98d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a98d = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a98d)
  store %struct.Memory* %call_42a98d, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 42a991	 Bytes: 4
  %loadMem_42a991 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a991 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a991)
  store %struct.Memory* %call_42a991, %struct.Memory** %MEMORY

  ; Code: cmpl $0x6, %edx	 RIP: 42a995	 Bytes: 3
  %loadMem_42a995 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a995 = call %struct.Memory* @routine_cmpl__0x6___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a995)
  store %struct.Memory* %call_42a995, %struct.Memory** %MEMORY

  ; Code: jne .L_42aa97	 RIP: 42a998	 Bytes: 6
  %loadMem_42a998 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a998 = call %struct.Memory* @routine_jne_.L_42aa97(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a998, i8* %BRANCH_TAKEN, i64 255, i64 6, i64 6)
  store %struct.Memory* %call_42a998, %struct.Memory** %MEMORY

  %loadBr_42a998 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a998 = icmp eq i8 %loadBr_42a998, 1
  br i1 %cmpBr_42a998, label %block_.L_42aa97, label %block_42a99e

block_42a99e:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42a99e	 Bytes: 4
  %loadMem_42a99e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a99e = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a99e)
  store %struct.Memory* %call_42a99e, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 42a9a2	 Bytes: 4
  %loadMem_42a9a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a9a2 = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a9a2)
  store %struct.Memory* %call_42a9a2, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 42a9a6	 Bytes: 3
  %loadMem_42a9a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a9a6 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a9a6)
  store %struct.Memory* %call_42a9a6, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 42a9a9	 Bytes: 3
  %loadMem_42a9a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a9a9 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a9a9)
  store %struct.Memory* %call_42a9a9, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 42a9ac	 Bytes: 3
  %loadMem_42a9ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a9ac = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a9ac)
  store %struct.Memory* %call_42a9ac, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rdx,1), %ecx	 RIP: 42a9af	 Bytes: 4
  %loadMem_42a9af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a9af = call %struct.Memory* @routine_movsbl___rax__rdx_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a9af)
  store %struct.Memory* %call_42a9af, %struct.Memory** %MEMORY

  ; Code: cmpl $0x7, %ecx	 RIP: 42a9b3	 Bytes: 3
  %loadMem_42a9b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a9b3 = call %struct.Memory* @routine_cmpl__0x7___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a9b3)
  store %struct.Memory* %call_42a9b3, %struct.Memory** %MEMORY

  ; Code: jne .L_42aa97	 RIP: 42a9b6	 Bytes: 6
  %loadMem_42a9b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a9b6 = call %struct.Memory* @routine_jne_.L_42aa97(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a9b6, i8* %BRANCH_TAKEN, i64 225, i64 6, i64 6)
  store %struct.Memory* %call_42a9b6, %struct.Memory** %MEMORY

  %loadBr_42a9b6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a9b6 = icmp eq i8 %loadBr_42a9b6, 1
  br i1 %cmpBr_42a9b6, label %block_.L_42aa97, label %block_42a9bc

block_42a9bc:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42a9bc	 Bytes: 4
  %loadMem_42a9bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a9bc = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a9bc)
  store %struct.Memory* %call_42a9bc, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 42a9c0	 Bytes: 4
  %loadMem_42a9c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a9c0 = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a9c0)
  store %struct.Memory* %call_42a9c0, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 42a9c4	 Bytes: 3
  %loadMem_42a9c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a9c4 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a9c4)
  store %struct.Memory* %call_42a9c4, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 42a9c7	 Bytes: 3
  %loadMem_42a9c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a9c7 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a9c7)
  store %struct.Memory* %call_42a9c7, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 42a9ca	 Bytes: 3
  %loadMem_42a9ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a9ca = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a9ca)
  store %struct.Memory* %call_42a9ca, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rdx,1), %ecx	 RIP: 42a9cd	 Bytes: 4
  %loadMem_42a9cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a9cd = call %struct.Memory* @routine_movsbl___rax__rdx_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a9cd)
  store %struct.Memory* %call_42a9cd, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5, %ecx	 RIP: 42a9d1	 Bytes: 3
  %loadMem_42a9d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a9d1 = call %struct.Memory* @routine_cmpl__0x5___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a9d1)
  store %struct.Memory* %call_42a9d1, %struct.Memory** %MEMORY

  ; Code: jne .L_42aa97	 RIP: 42a9d4	 Bytes: 6
  %loadMem_42a9d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a9d4 = call %struct.Memory* @routine_jne_.L_42aa97(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a9d4, i8* %BRANCH_TAKEN, i64 195, i64 6, i64 6)
  store %struct.Memory* %call_42a9d4, %struct.Memory** %MEMORY

  %loadBr_42a9d4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a9d4 = icmp eq i8 %loadBr_42a9d4, 1
  br i1 %cmpBr_42a9d4, label %block_.L_42aa97, label %block_42a9da

block_42a9da:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42a9da	 Bytes: 4
  %loadMem_42a9da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a9da = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a9da)
  store %struct.Memory* %call_42a9da, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax), %rax	 RIP: 42a9de	 Bytes: 4
  %loadMem_42a9de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a9de = call %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a9de)
  store %struct.Memory* %call_42a9de, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 42a9e2	 Bytes: 3
  %loadMem_42a9e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a9e2 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a9e2)
  store %struct.Memory* %call_42a9e2, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 42a9e5	 Bytes: 3
  %loadMem_42a9e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a9e5 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a9e5)
  store %struct.Memory* %call_42a9e5, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 42a9e8	 Bytes: 3
  %loadMem_42a9e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a9e8 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a9e8)
  store %struct.Memory* %call_42a9e8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax,%rdx,4)	 RIP: 42a9eb	 Bytes: 4
  %loadMem_42a9eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a9eb = call %struct.Memory* @routine_cmpl__0x0____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a9eb)
  store %struct.Memory* %call_42a9eb, %struct.Memory** %MEMORY

  ; Code: jle .L_42aa97	 RIP: 42a9ef	 Bytes: 6
  %loadMem_42a9ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a9ef = call %struct.Memory* @routine_jle_.L_42aa97(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a9ef, i8* %BRANCH_TAKEN, i64 168, i64 6, i64 6)
  store %struct.Memory* %call_42a9ef, %struct.Memory** %MEMORY

  %loadBr_42a9ef = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a9ef = icmp eq i8 %loadBr_42a9ef, 1
  br i1 %cmpBr_42a9ef, label %block_.L_42aa97, label %block_42a9f5

block_42a9f5:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42a9f5	 Bytes: 4
  %loadMem_42a9f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a9f5 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a9f5)
  store %struct.Memory* %call_42a9f5, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 42a9f9	 Bytes: 4
  %loadMem_42a9f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a9f9 = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a9f9)
  store %struct.Memory* %call_42a9f9, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 42a9fd	 Bytes: 4
  %loadMem_42a9fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a9fd = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a9fd)
  store %struct.Memory* %call_42a9fd, %struct.Memory** %MEMORY

  ; Code: movb $0x1, (%rax,%rcx,1)	 RIP: 42aa01	 Bytes: 4
  %loadMem_42aa01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa01 = call %struct.Memory* @routine_movb__0x1____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa01)
  store %struct.Memory* %call_42aa01, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42aa05	 Bytes: 4
  %loadMem_42aa05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa05 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa05)
  store %struct.Memory* %call_42aa05, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 42aa09	 Bytes: 4
  %loadMem_42aa09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa09 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa09)
  store %struct.Memory* %call_42aa09, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 42aa0d	 Bytes: 4
  %loadMem_42aa0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa0d = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa0d)
  store %struct.Memory* %call_42aa0d, %struct.Memory** %MEMORY

  ; Code: movl $0x1, (%rax,%rcx,4)	 RIP: 42aa11	 Bytes: 7
  %loadMem_42aa11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa11 = call %struct.Memory* @routine_movl__0x1____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa11)
  store %struct.Memory* %call_42aa11, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42aa18	 Bytes: 4
  %loadMem_42aa18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa18 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa18)
  store %struct.Memory* %call_42aa18, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax), %rax	 RIP: 42aa1c	 Bytes: 4
  %loadMem_42aa1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa1c = call %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa1c)
  store %struct.Memory* %call_42aa1c, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %edx	 RIP: 42aa20	 Bytes: 3
  %loadMem_42aa20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa20 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa20)
  store %struct.Memory* %call_42aa20, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 42aa23	 Bytes: 3
  %loadMem_42aa23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa23 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa23)
  store %struct.Memory* %call_42aa23, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 42aa26	 Bytes: 3
  %loadMem_42aa26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa26 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa26)
  store %struct.Memory* %call_42aa26, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 42aa29	 Bytes: 3
  %loadMem_42aa29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa29 = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa29)
  store %struct.Memory* %call_42aa29, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42aa2c	 Bytes: 4
  %loadMem_42aa2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa2c = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa2c)
  store %struct.Memory* %call_42aa2c, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax), %rax	 RIP: 42aa30	 Bytes: 4
  %loadMem_42aa30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa30 = call %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa30)
  store %struct.Memory* %call_42aa30, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 42aa34	 Bytes: 4
  %loadMem_42aa34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa34 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa34)
  store %struct.Memory* %call_42aa34, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax,%rcx,4)	 RIP: 42aa38	 Bytes: 3
  %loadMem_42aa38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa38 = call %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa38)
  store %struct.Memory* %call_42aa38, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42aa3b	 Bytes: 4
  %loadMem_42aa3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa3b = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa3b)
  store %struct.Memory* %call_42aa3b, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 42aa3f	 Bytes: 4
  %loadMem_42aa3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa3f = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa3f)
  store %struct.Memory* %call_42aa3f, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %edx	 RIP: 42aa43	 Bytes: 3
  %loadMem_42aa43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa43 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa43)
  store %struct.Memory* %call_42aa43, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 42aa46	 Bytes: 3
  %loadMem_42aa46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa46 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa46)
  store %struct.Memory* %call_42aa46, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 42aa49	 Bytes: 3
  %loadMem_42aa49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa49 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa49)
  store %struct.Memory* %call_42aa49, %struct.Memory** %MEMORY

  ; Code: movb $0x6, (%rax,%rcx,1)	 RIP: 42aa4c	 Bytes: 4
  %loadMem_42aa4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa4c = call %struct.Memory* @routine_movb__0x6____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa4c)
  store %struct.Memory* %call_42aa4c, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42aa50	 Bytes: 4
  %loadMem_42aa50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa50 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa50)
  store %struct.Memory* %call_42aa50, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 42aa54	 Bytes: 4
  %loadMem_42aa54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa54 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa54)
  store %struct.Memory* %call_42aa54, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %edx	 RIP: 42aa58	 Bytes: 3
  %loadMem_42aa58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa58 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa58)
  store %struct.Memory* %call_42aa58, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 42aa5b	 Bytes: 3
  %loadMem_42aa5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa5b = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa5b)
  store %struct.Memory* %call_42aa5b, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 42aa5e	 Bytes: 3
  %loadMem_42aa5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa5e = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa5e)
  store %struct.Memory* %call_42aa5e, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rax,%rcx,4)	 RIP: 42aa61	 Bytes: 7
  %loadMem_42aa61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa61 = call %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa61)
  store %struct.Memory* %call_42aa61, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42aa68	 Bytes: 4
  %loadMem_42aa68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa68 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa68)
  store %struct.Memory* %call_42aa68, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax), %rax	 RIP: 42aa6c	 Bytes: 4
  %loadMem_42aa6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa6c = call %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa6c)
  store %struct.Memory* %call_42aa6c, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %edx	 RIP: 42aa70	 Bytes: 3
  %loadMem_42aa70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa70 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa70)
  store %struct.Memory* %call_42aa70, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 42aa73	 Bytes: 3
  %loadMem_42aa73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa73 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa73)
  store %struct.Memory* %call_42aa73, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 42aa76	 Bytes: 3
  %loadMem_42aa76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa76 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa76)
  store %struct.Memory* %call_42aa76, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rax,%rcx,4)	 RIP: 42aa79	 Bytes: 7
  %loadMem_42aa79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa79 = call %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa79)
  store %struct.Memory* %call_42aa79, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %edx	 RIP: 42aa80	 Bytes: 3
  %loadMem_42aa80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa80 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa80)
  store %struct.Memory* %call_42aa80, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 42aa83	 Bytes: 3
  %loadMem_42aa83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa83 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa83)
  store %struct.Memory* %call_42aa83, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x24(%rbp)	 RIP: 42aa86	 Bytes: 3
  %loadMem_42aa86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa86 = call %struct.Memory* @routine_movl__edx__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa86)
  store %struct.Memory* %call_42aa86, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %edx	 RIP: 42aa89	 Bytes: 3
  %loadMem_42aa89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa89 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa89)
  store %struct.Memory* %call_42aa89, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 42aa8c	 Bytes: 3
  %loadMem_42aa8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa8c = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa8c)
  store %struct.Memory* %call_42aa8c, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x28(%rbp)	 RIP: 42aa8f	 Bytes: 3
  %loadMem_42aa8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa8f = call %struct.Memory* @routine_movl__edx__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa8f)
  store %struct.Memory* %call_42aa8f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42ac61	 RIP: 42aa92	 Bytes: 5
  %loadMem_42aa92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa92 = call %struct.Memory* @routine_jmpq_.L_42ac61(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa92, i64 463, i64 5)
  store %struct.Memory* %call_42aa92, %struct.Memory** %MEMORY

  br label %block_.L_42ac61

  ; Code: .L_42aa97:	 RIP: 42aa97	 Bytes: 0
block_.L_42aa97:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42aa97	 Bytes: 4
  %loadMem_42aa97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa97 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa97)
  store %struct.Memory* %call_42aa97, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 42aa9b	 Bytes: 4
  %loadMem_42aa9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa9b = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa9b)
  store %struct.Memory* %call_42aa9b, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 42aa9f	 Bytes: 4
  %loadMem_42aa9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa9f = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa9f)
  store %struct.Memory* %call_42aa9f, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 42aaa3	 Bytes: 4
  %loadMem_42aaa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aaa3 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aaa3)
  store %struct.Memory* %call_42aaa3, %struct.Memory** %MEMORY

  ; Code: cmpl $0x7, %edx	 RIP: 42aaa7	 Bytes: 3
  %loadMem_42aaa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aaa7 = call %struct.Memory* @routine_cmpl__0x7___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aaa7)
  store %struct.Memory* %call_42aaa7, %struct.Memory** %MEMORY

  ; Code: jne .L_42abf0	 RIP: 42aaaa	 Bytes: 6
  %loadMem_42aaaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aaaa = call %struct.Memory* @routine_jne_.L_42abf0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aaaa, i8* %BRANCH_TAKEN, i64 326, i64 6, i64 6)
  store %struct.Memory* %call_42aaaa, %struct.Memory** %MEMORY

  %loadBr_42aaaa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42aaaa = icmp eq i8 %loadBr_42aaaa, 1
  br i1 %cmpBr_42aaaa, label %block_.L_42abf0, label %block_42aab0

block_42aab0:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42aab0	 Bytes: 4
  %loadMem_42aab0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aab0 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aab0)
  store %struct.Memory* %call_42aab0, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 42aab4	 Bytes: 4
  %loadMem_42aab4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aab4 = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aab4)
  store %struct.Memory* %call_42aab4, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 42aab8	 Bytes: 3
  %loadMem_42aab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aab8 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aab8)
  store %struct.Memory* %call_42aab8, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 42aabb	 Bytes: 3
  %loadMem_42aabb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aabb = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aabb)
  store %struct.Memory* %call_42aabb, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 42aabe	 Bytes: 3
  %loadMem_42aabe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aabe = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aabe)
  store %struct.Memory* %call_42aabe, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rdx,1), %ecx	 RIP: 42aac1	 Bytes: 4
  %loadMem_42aac1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aac1 = call %struct.Memory* @routine_movsbl___rax__rdx_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aac1)
  store %struct.Memory* %call_42aac1, %struct.Memory** %MEMORY

  ; Code: cmpl $0x6, %ecx	 RIP: 42aac5	 Bytes: 3
  %loadMem_42aac5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aac5 = call %struct.Memory* @routine_cmpl__0x6___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aac5)
  store %struct.Memory* %call_42aac5, %struct.Memory** %MEMORY

  ; Code: jne .L_42abf0	 RIP: 42aac8	 Bytes: 6
  %loadMem_42aac8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aac8 = call %struct.Memory* @routine_jne_.L_42abf0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aac8, i8* %BRANCH_TAKEN, i64 296, i64 6, i64 6)
  store %struct.Memory* %call_42aac8, %struct.Memory** %MEMORY

  %loadBr_42aac8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42aac8 = icmp eq i8 %loadBr_42aac8, 1
  br i1 %cmpBr_42aac8, label %block_.L_42abf0, label %block_42aace

block_42aace:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42aace	 Bytes: 4
  %loadMem_42aace = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aace = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aace)
  store %struct.Memory* %call_42aace, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 42aad2	 Bytes: 4
  %loadMem_42aad2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aad2 = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aad2)
  store %struct.Memory* %call_42aad2, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 42aad6	 Bytes: 3
  %loadMem_42aad6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aad6 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aad6)
  store %struct.Memory* %call_42aad6, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 42aad9	 Bytes: 3
  %loadMem_42aad9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aad9 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aad9)
  store %struct.Memory* %call_42aad9, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 42aadc	 Bytes: 3
  %loadMem_42aadc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aadc = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aadc)
  store %struct.Memory* %call_42aadc, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rdx,1), %ecx	 RIP: 42aadf	 Bytes: 4
  %loadMem_42aadf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aadf = call %struct.Memory* @routine_movsbl___rax__rdx_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aadf)
  store %struct.Memory* %call_42aadf, %struct.Memory** %MEMORY

  ; Code: cmpl $0x8, %ecx	 RIP: 42aae3	 Bytes: 3
  %loadMem_42aae3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aae3 = call %struct.Memory* @routine_cmpl__0x8___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aae3)
  store %struct.Memory* %call_42aae3, %struct.Memory** %MEMORY

  ; Code: jne .L_42abf0	 RIP: 42aae6	 Bytes: 6
  %loadMem_42aae6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aae6 = call %struct.Memory* @routine_jne_.L_42abf0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aae6, i8* %BRANCH_TAKEN, i64 266, i64 6, i64 6)
  store %struct.Memory* %call_42aae6, %struct.Memory** %MEMORY

  %loadBr_42aae6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42aae6 = icmp eq i8 %loadBr_42aae6, 1
  br i1 %cmpBr_42aae6, label %block_.L_42abf0, label %block_42aaec

block_42aaec:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42aaec	 Bytes: 4
  %loadMem_42aaec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aaec = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aaec)
  store %struct.Memory* %call_42aaec, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 42aaf0	 Bytes: 4
  %loadMem_42aaf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aaf0 = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aaf0)
  store %struct.Memory* %call_42aaf0, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 42aaf4	 Bytes: 3
  %loadMem_42aaf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aaf4 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aaf4)
  store %struct.Memory* %call_42aaf4, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %ecx	 RIP: 42aaf7	 Bytes: 3
  %loadMem_42aaf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aaf7 = call %struct.Memory* @routine_addl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aaf7)
  store %struct.Memory* %call_42aaf7, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 42aafa	 Bytes: 3
  %loadMem_42aafa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aafa = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aafa)
  store %struct.Memory* %call_42aafa, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rdx,1), %ecx	 RIP: 42aafd	 Bytes: 4
  %loadMem_42aafd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aafd = call %struct.Memory* @routine_movsbl___rax__rdx_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aafd)
  store %struct.Memory* %call_42aafd, %struct.Memory** %MEMORY

  ; Code: cmpl $0x8, %ecx	 RIP: 42ab01	 Bytes: 3
  %loadMem_42ab01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab01 = call %struct.Memory* @routine_cmpl__0x8___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab01)
  store %struct.Memory* %call_42ab01, %struct.Memory** %MEMORY

  ; Code: jne .L_42abf0	 RIP: 42ab04	 Bytes: 6
  %loadMem_42ab04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab04 = call %struct.Memory* @routine_jne_.L_42abf0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab04, i8* %BRANCH_TAKEN, i64 236, i64 6, i64 6)
  store %struct.Memory* %call_42ab04, %struct.Memory** %MEMORY

  %loadBr_42ab04 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42ab04 = icmp eq i8 %loadBr_42ab04, 1
  br i1 %cmpBr_42ab04, label %block_.L_42abf0, label %block_42ab0a

block_42ab0a:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42ab0a	 Bytes: 4
  %loadMem_42ab0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab0a = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab0a)
  store %struct.Memory* %call_42ab0a, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 42ab0e	 Bytes: 4
  %loadMem_42ab0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab0e = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab0e)
  store %struct.Memory* %call_42ab0e, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 42ab12	 Bytes: 4
  %loadMem_42ab12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab12 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab12)
  store %struct.Memory* %call_42ab12, %struct.Memory** %MEMORY

  ; Code: movb $0x1, (%rax,%rcx,1)	 RIP: 42ab16	 Bytes: 4
  %loadMem_42ab16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab16 = call %struct.Memory* @routine_movb__0x1____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab16)
  store %struct.Memory* %call_42ab16, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %edx	 RIP: 42ab1a	 Bytes: 3
  %loadMem_42ab1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab1a = call %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab1a)
  store %struct.Memory* %call_42ab1a, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42ab1d	 Bytes: 4
  %loadMem_42ab1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab1d = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab1d)
  store %struct.Memory* %call_42ab1d, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 42ab21	 Bytes: 4
  %loadMem_42ab21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab21 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab21)
  store %struct.Memory* %call_42ab21, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 42ab25	 Bytes: 4
  %loadMem_42ab25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab25 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab25)
  store %struct.Memory* %call_42ab25, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax,%rcx,4)	 RIP: 42ab29	 Bytes: 3
  %loadMem_42ab29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab29 = call %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab29)
  store %struct.Memory* %call_42ab29, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42ab2c	 Bytes: 4
  %loadMem_42ab2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab2c = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab2c)
  store %struct.Memory* %call_42ab2c, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax), %rax	 RIP: 42ab30	 Bytes: 4
  %loadMem_42ab30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab30 = call %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab30)
  store %struct.Memory* %call_42ab30, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %edx	 RIP: 42ab34	 Bytes: 3
  %loadMem_42ab34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab34 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab34)
  store %struct.Memory* %call_42ab34, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %edx	 RIP: 42ab37	 Bytes: 3
  %loadMem_42ab37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab37 = call %struct.Memory* @routine_addl__0x2___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab37)
  store %struct.Memory* %call_42ab37, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 42ab3a	 Bytes: 3
  %loadMem_42ab3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab3a = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab3a)
  store %struct.Memory* %call_42ab3a, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 42ab3d	 Bytes: 3
  %loadMem_42ab3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab3d = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab3d)
  store %struct.Memory* %call_42ab3d, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42ab40	 Bytes: 4
  %loadMem_42ab40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab40 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab40)
  store %struct.Memory* %call_42ab40, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax), %rax	 RIP: 42ab44	 Bytes: 4
  %loadMem_42ab44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab44 = call %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab44)
  store %struct.Memory* %call_42ab44, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 42ab48	 Bytes: 4
  %loadMem_42ab48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab48 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab48)
  store %struct.Memory* %call_42ab48, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax,%rcx,4)	 RIP: 42ab4c	 Bytes: 3
  %loadMem_42ab4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab4c = call %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab4c)
  store %struct.Memory* %call_42ab4c, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42ab4f	 Bytes: 4
  %loadMem_42ab4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab4f = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab4f)
  store %struct.Memory* %call_42ab4f, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 42ab53	 Bytes: 4
  %loadMem_42ab53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab53 = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab53)
  store %struct.Memory* %call_42ab53, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %edx	 RIP: 42ab57	 Bytes: 3
  %loadMem_42ab57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab57 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab57)
  store %struct.Memory* %call_42ab57, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 42ab5a	 Bytes: 3
  %loadMem_42ab5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab5a = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab5a)
  store %struct.Memory* %call_42ab5a, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 42ab5d	 Bytes: 3
  %loadMem_42ab5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab5d = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab5d)
  store %struct.Memory* %call_42ab5d, %struct.Memory** %MEMORY

  ; Code: movb $0x7, (%rax,%rcx,1)	 RIP: 42ab60	 Bytes: 4
  %loadMem_42ab60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab60 = call %struct.Memory* @routine_movb__0x7____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab60)
  store %struct.Memory* %call_42ab60, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42ab64	 Bytes: 4
  %loadMem_42ab64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab64 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab64)
  store %struct.Memory* %call_42ab64, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 42ab68	 Bytes: 4
  %loadMem_42ab68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab68 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab68)
  store %struct.Memory* %call_42ab68, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %edx	 RIP: 42ab6c	 Bytes: 3
  %loadMem_42ab6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab6c = call %struct.Memory* @routine_movl_MINUS0x28__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab6c)
  store %struct.Memory* %call_42ab6c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 42ab6f	 Bytes: 3
  %loadMem_42ab6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab6f = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab6f)
  store %struct.Memory* %call_42ab6f, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 42ab72	 Bytes: 3
  %loadMem_42ab72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab72 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab72)
  store %struct.Memory* %call_42ab72, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rax,%rcx,4)	 RIP: 42ab75	 Bytes: 7
  %loadMem_42ab75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab75 = call %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab75)
  store %struct.Memory* %call_42ab75, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42ab7c	 Bytes: 4
  %loadMem_42ab7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab7c = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab7c)
  store %struct.Memory* %call_42ab7c, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax), %rax	 RIP: 42ab80	 Bytes: 4
  %loadMem_42ab80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab80 = call %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab80)
  store %struct.Memory* %call_42ab80, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %edx	 RIP: 42ab84	 Bytes: 3
  %loadMem_42ab84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab84 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab84)
  store %struct.Memory* %call_42ab84, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 42ab87	 Bytes: 3
  %loadMem_42ab87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab87 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab87)
  store %struct.Memory* %call_42ab87, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 42ab8a	 Bytes: 3
  %loadMem_42ab8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab8a = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab8a)
  store %struct.Memory* %call_42ab8a, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rax,%rcx,4)	 RIP: 42ab8d	 Bytes: 7
  %loadMem_42ab8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab8d = call %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab8d)
  store %struct.Memory* %call_42ab8d, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42ab94	 Bytes: 4
  %loadMem_42ab94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab94 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab94)
  store %struct.Memory* %call_42ab94, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 42ab98	 Bytes: 4
  %loadMem_42ab98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab98 = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab98)
  store %struct.Memory* %call_42ab98, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %edx	 RIP: 42ab9c	 Bytes: 3
  %loadMem_42ab9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab9c = call %struct.Memory* @routine_movl_MINUS0x28__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab9c)
  store %struct.Memory* %call_42ab9c, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %edx	 RIP: 42ab9f	 Bytes: 3
  %loadMem_42ab9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab9f = call %struct.Memory* @routine_addl__0x2___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab9f)
  store %struct.Memory* %call_42ab9f, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 42aba2	 Bytes: 3
  %loadMem_42aba2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aba2 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aba2)
  store %struct.Memory* %call_42aba2, %struct.Memory** %MEMORY

  ; Code: movb $0x8, (%rax,%rcx,1)	 RIP: 42aba5	 Bytes: 4
  %loadMem_42aba5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aba5 = call %struct.Memory* @routine_movb__0x8____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aba5)
  store %struct.Memory* %call_42aba5, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42aba9	 Bytes: 4
  %loadMem_42aba9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aba9 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aba9)
  store %struct.Memory* %call_42aba9, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 42abad	 Bytes: 4
  %loadMem_42abad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42abad = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42abad)
  store %struct.Memory* %call_42abad, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %edx	 RIP: 42abb1	 Bytes: 3
  %loadMem_42abb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42abb1 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42abb1)
  store %struct.Memory* %call_42abb1, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %edx	 RIP: 42abb4	 Bytes: 3
  %loadMem_42abb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42abb4 = call %struct.Memory* @routine_addl__0x2___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42abb4)
  store %struct.Memory* %call_42abb4, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 42abb7	 Bytes: 3
  %loadMem_42abb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42abb7 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42abb7)
  store %struct.Memory* %call_42abb7, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rax,%rcx,4)	 RIP: 42abba	 Bytes: 7
  %loadMem_42abba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42abba = call %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42abba)
  store %struct.Memory* %call_42abba, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42abc1	 Bytes: 4
  %loadMem_42abc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42abc1 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42abc1)
  store %struct.Memory* %call_42abc1, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax), %rax	 RIP: 42abc5	 Bytes: 4
  %loadMem_42abc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42abc5 = call %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42abc5)
  store %struct.Memory* %call_42abc5, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %edx	 RIP: 42abc9	 Bytes: 3
  %loadMem_42abc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42abc9 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42abc9)
  store %struct.Memory* %call_42abc9, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %edx	 RIP: 42abcc	 Bytes: 3
  %loadMem_42abcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42abcc = call %struct.Memory* @routine_addl__0x2___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42abcc)
  store %struct.Memory* %call_42abcc, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 42abcf	 Bytes: 3
  %loadMem_42abcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42abcf = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42abcf)
  store %struct.Memory* %call_42abcf, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rax,%rcx,4)	 RIP: 42abd2	 Bytes: 7
  %loadMem_42abd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42abd2 = call %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42abd2)
  store %struct.Memory* %call_42abd2, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %edx	 RIP: 42abd9	 Bytes: 3
  %loadMem_42abd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42abd9 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42abd9)
  store %struct.Memory* %call_42abd9, %struct.Memory** %MEMORY

  ; Code: addl $0x3, %edx	 RIP: 42abdc	 Bytes: 3
  %loadMem_42abdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42abdc = call %struct.Memory* @routine_addl__0x3___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42abdc)
  store %struct.Memory* %call_42abdc, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x24(%rbp)	 RIP: 42abdf	 Bytes: 3
  %loadMem_42abdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42abdf = call %struct.Memory* @routine_movl__edx__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42abdf)
  store %struct.Memory* %call_42abdf, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %edx	 RIP: 42abe2	 Bytes: 3
  %loadMem_42abe2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42abe2 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42abe2)
  store %struct.Memory* %call_42abe2, %struct.Memory** %MEMORY

  ; Code: addl $0x3, %edx	 RIP: 42abe5	 Bytes: 3
  %loadMem_42abe5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42abe5 = call %struct.Memory* @routine_addl__0x3___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42abe5)
  store %struct.Memory* %call_42abe5, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x28(%rbp)	 RIP: 42abe8	 Bytes: 3
  %loadMem_42abe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42abe8 = call %struct.Memory* @routine_movl__edx__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42abe8)
  store %struct.Memory* %call_42abe8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42ac5c	 RIP: 42abeb	 Bytes: 5
  %loadMem_42abeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42abeb = call %struct.Memory* @routine_jmpq_.L_42ac5c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42abeb, i64 113, i64 5)
  store %struct.Memory* %call_42abeb, %struct.Memory** %MEMORY

  br label %block_.L_42ac5c

  ; Code: .L_42abf0:	 RIP: 42abf0	 Bytes: 0
block_.L_42abf0:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42abf0	 Bytes: 4
  %loadMem_42abf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42abf0 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42abf0)
  store %struct.Memory* %call_42abf0, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 42abf4	 Bytes: 4
  %loadMem_42abf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42abf4 = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42abf4)
  store %struct.Memory* %call_42abf4, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 42abf8	 Bytes: 4
  %loadMem_42abf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42abf8 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42abf8)
  store %struct.Memory* %call_42abf8, %struct.Memory** %MEMORY

  ; Code: movb (%rax,%rcx,1), %dl	 RIP: 42abfc	 Bytes: 3
  %loadMem_42abfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42abfc = call %struct.Memory* @routine_movb___rax__rcx_1____dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42abfc)
  store %struct.Memory* %call_42abfc, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42abff	 Bytes: 4
  %loadMem_42abff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42abff = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42abff)
  store %struct.Memory* %call_42abff, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 42ac03	 Bytes: 4
  %loadMem_42ac03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac03 = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac03)
  store %struct.Memory* %call_42ac03, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 42ac07	 Bytes: 4
  %loadMem_42ac07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac07 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac07)
  store %struct.Memory* %call_42ac07, %struct.Memory** %MEMORY

  ; Code: movb %dl, (%rax,%rcx,1)	 RIP: 42ac0b	 Bytes: 3
  %loadMem_42ac0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac0b = call %struct.Memory* @routine_movb__dl____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac0b)
  store %struct.Memory* %call_42ac0b, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42ac0e	 Bytes: 4
  %loadMem_42ac0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac0e = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac0e)
  store %struct.Memory* %call_42ac0e, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 42ac12	 Bytes: 4
  %loadMem_42ac12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac12 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac12)
  store %struct.Memory* %call_42ac12, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 42ac16	 Bytes: 4
  %loadMem_42ac16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac16 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac16)
  store %struct.Memory* %call_42ac16, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %esi	 RIP: 42ac1a	 Bytes: 3
  %loadMem_42ac1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac1a = call %struct.Memory* @routine_movl___rax__rcx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac1a)
  store %struct.Memory* %call_42ac1a, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42ac1d	 Bytes: 4
  %loadMem_42ac1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac1d = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac1d)
  store %struct.Memory* %call_42ac1d, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 42ac21	 Bytes: 4
  %loadMem_42ac21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac21 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac21)
  store %struct.Memory* %call_42ac21, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 42ac25	 Bytes: 4
  %loadMem_42ac25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac25 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac25)
  store %struct.Memory* %call_42ac25, %struct.Memory** %MEMORY

  ; Code: movl %esi, (%rax,%rcx,4)	 RIP: 42ac29	 Bytes: 3
  %loadMem_42ac29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac29 = call %struct.Memory* @routine_movl__esi____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac29)
  store %struct.Memory* %call_42ac29, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42ac2c	 Bytes: 4
  %loadMem_42ac2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac2c = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac2c)
  store %struct.Memory* %call_42ac2c, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax), %rax	 RIP: 42ac30	 Bytes: 4
  %loadMem_42ac30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac30 = call %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac30)
  store %struct.Memory* %call_42ac30, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 42ac34	 Bytes: 4
  %loadMem_42ac34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac34 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac34)
  store %struct.Memory* %call_42ac34, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %esi	 RIP: 42ac38	 Bytes: 3
  %loadMem_42ac38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac38 = call %struct.Memory* @routine_movl___rax__rcx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac38)
  store %struct.Memory* %call_42ac38, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42ac3b	 Bytes: 4
  %loadMem_42ac3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac3b = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac3b)
  store %struct.Memory* %call_42ac3b, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax), %rax	 RIP: 42ac3f	 Bytes: 4
  %loadMem_42ac3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac3f = call %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac3f)
  store %struct.Memory* %call_42ac3f, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 42ac43	 Bytes: 4
  %loadMem_42ac43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac43 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac43)
  store %struct.Memory* %call_42ac43, %struct.Memory** %MEMORY

  ; Code: movl %esi, (%rax,%rcx,4)	 RIP: 42ac47	 Bytes: 3
  %loadMem_42ac47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac47 = call %struct.Memory* @routine_movl__esi____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac47)
  store %struct.Memory* %call_42ac47, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %esi	 RIP: 42ac4a	 Bytes: 3
  %loadMem_42ac4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac4a = call %struct.Memory* @routine_movl_MINUS0x24__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac4a)
  store %struct.Memory* %call_42ac4a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 42ac4d	 Bytes: 3
  %loadMem_42ac4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac4d = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac4d)
  store %struct.Memory* %call_42ac4d, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x24(%rbp)	 RIP: 42ac50	 Bytes: 3
  %loadMem_42ac50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac50 = call %struct.Memory* @routine_movl__esi__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac50)
  store %struct.Memory* %call_42ac50, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %esi	 RIP: 42ac53	 Bytes: 3
  %loadMem_42ac53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac53 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac53)
  store %struct.Memory* %call_42ac53, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 42ac56	 Bytes: 3
  %loadMem_42ac56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac56 = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac56)
  store %struct.Memory* %call_42ac56, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x28(%rbp)	 RIP: 42ac59	 Bytes: 3
  %loadMem_42ac59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac59 = call %struct.Memory* @routine_movl__esi__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac59)
  store %struct.Memory* %call_42ac59, %struct.Memory** %MEMORY

  ; Code: .L_42ac5c:	 RIP: 42ac5c	 Bytes: 0
  br label %block_.L_42ac5c
block_.L_42ac5c:

  ; Code: jmpq .L_42ac61	 RIP: 42ac5c	 Bytes: 5
  %loadMem_42ac5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac5c = call %struct.Memory* @routine_jmpq_.L_42ac61(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac5c, i64 5, i64 5)
  store %struct.Memory* %call_42ac5c, %struct.Memory** %MEMORY

  br label %block_.L_42ac61

  ; Code: .L_42ac61:	 RIP: 42ac61	 Bytes: 0
block_.L_42ac61:

  ; Code: jmpq .L_42ac66	 RIP: 42ac61	 Bytes: 5
  %loadMem_42ac61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac61 = call %struct.Memory* @routine_jmpq_.L_42ac66(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac61, i64 5, i64 5)
  store %struct.Memory* %call_42ac61, %struct.Memory** %MEMORY

  br label %block_.L_42ac66

  ; Code: .L_42ac66:	 RIP: 42ac66	 Bytes: 0
block_.L_42ac66:

  ; Code: jmpq .L_42ac6b	 RIP: 42ac66	 Bytes: 5
  %loadMem_42ac66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac66 = call %struct.Memory* @routine_jmpq_.L_42ac6b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac66, i64 5, i64 5)
  store %struct.Memory* %call_42ac66, %struct.Memory** %MEMORY

  br label %block_.L_42ac6b

  ; Code: .L_42ac6b:	 RIP: 42ac6b	 Bytes: 0
block_.L_42ac6b:

  ; Code: jmpq .L_42ac70	 RIP: 42ac6b	 Bytes: 5
  %loadMem_42ac6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac6b = call %struct.Memory* @routine_jmpq_.L_42ac70(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac6b, i64 5, i64 5)
  store %struct.Memory* %call_42ac6b, %struct.Memory** %MEMORY

  br label %block_.L_42ac70

  ; Code: .L_42ac70:	 RIP: 42ac70	 Bytes: 0
block_.L_42ac70:

  ; Code: jmpq .L_42ac75	 RIP: 42ac70	 Bytes: 5
  %loadMem_42ac70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac70 = call %struct.Memory* @routine_jmpq_.L_42ac75(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac70, i64 5, i64 5)
  store %struct.Memory* %call_42ac70, %struct.Memory** %MEMORY

  br label %block_.L_42ac75

  ; Code: .L_42ac75:	 RIP: 42ac75	 Bytes: 0
block_.L_42ac75:

  ; Code: jmpq .L_42a6ef	 RIP: 42ac75	 Bytes: 5
  %loadMem_42ac75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac75 = call %struct.Memory* @routine_jmpq_.L_42a6ef(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac75, i64 -1414, i64 5)
  store %struct.Memory* %call_42ac75, %struct.Memory** %MEMORY

  br label %block_.L_42a6ef

  ; Code: .L_42ac7a:	 RIP: 42ac7a	 Bytes: 0
block_.L_42ac7a:

  ; Code: movl -0x28(%rbp), %eax	 RIP: 42ac7a	 Bytes: 3
  %loadMem_42ac7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac7a = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac7a)
  store %struct.Memory* %call_42ac7a, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42ac7d	 Bytes: 4
  %loadMem_42ac7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac7d = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac7d)
  store %struct.Memory* %call_42ac7d, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 42ac81	 Bytes: 2
  %loadMem_42ac81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac81 = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac81)
  store %struct.Memory* %call_42ac81, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, -0x18(%rbp)	 RIP: 42ac83	 Bytes: 5
  %loadMem_42ac83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac83 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac83)
  store %struct.Memory* %call_42ac83, %struct.Memory** %MEMORY

  ; Code: je .L_42ac97	 RIP: 42ac88	 Bytes: 6
  %loadMem_42ac88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac88 = call %struct.Memory* @routine_je_.L_42ac97(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac88, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_42ac88, %struct.Memory** %MEMORY

  %loadBr_42ac88 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42ac88 = icmp eq i8 %loadBr_42ac88, 1
  br i1 %cmpBr_42ac88, label %block_.L_42ac97, label %block_42ac8e

block_42ac8e:
  ; Code: movl -0x2c(%rbp), %eax	 RIP: 42ac8e	 Bytes: 3
  %loadMem_42ac8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac8e = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac8e)
  store %struct.Memory* %call_42ac8e, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 42ac91	 Bytes: 4
  %loadMem_42ac91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac91 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac91)
  store %struct.Memory* %call_42ac91, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 42ac95	 Bytes: 2
  %loadMem_42ac95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac95 = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac95)
  store %struct.Memory* %call_42ac95, %struct.Memory** %MEMORY

  ; Code: .L_42ac97:	 RIP: 42ac97	 Bytes: 0
  br label %block_.L_42ac97
block_.L_42ac97:

  ; Code: cmpq $0x0, -0x20(%rbp)	 RIP: 42ac97	 Bytes: 5
  %loadMem_42ac97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac97 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac97)
  store %struct.Memory* %call_42ac97, %struct.Memory** %MEMORY

  ; Code: je .L_42acab	 RIP: 42ac9c	 Bytes: 6
  %loadMem_42ac9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac9c = call %struct.Memory* @routine_je_.L_42acab(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac9c, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_42ac9c, %struct.Memory** %MEMORY

  %loadBr_42ac9c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42ac9c = icmp eq i8 %loadBr_42ac9c, 1
  br i1 %cmpBr_42ac9c, label %block_.L_42acab, label %block_42aca2

block_42aca2:
  ; Code: movl -0x30(%rbp), %eax	 RIP: 42aca2	 Bytes: 3
  %loadMem_42aca2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aca2 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aca2)
  store %struct.Memory* %call_42aca2, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 42aca5	 Bytes: 4
  %loadMem_42aca5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aca5 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aca5)
  store %struct.Memory* %call_42aca5, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 42aca9	 Bytes: 2
  %loadMem_42aca9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aca9 = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aca9)
  store %struct.Memory* %call_42aca9, %struct.Memory** %MEMORY

  ; Code: .L_42acab:	 RIP: 42acab	 Bytes: 0
  br label %block_.L_42acab
block_.L_42acab:

  ; Code: popq %rbp	 RIP: 42acab	 Bytes: 1
  %loadMem_42acab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42acab = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42acab)
  store %struct.Memory* %call_42acab, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 42acac	 Bytes: 1
  %loadMem_42acac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42acac = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42acac)
  store %struct.Memory* %call_42acac, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_42acac
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 48
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 44
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 40
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 36
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

define %struct.Memory* @routine_cmpl___rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_jge_.L_42ac7a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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

define %struct.Memory* @routine_cmpl__0x2___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_jne_.L_42a7a6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__0x1____rax__rcx_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 1)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movl_MINUS0x24__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 36
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














define %struct.Memory* @routine_addl__0x2___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 2)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__edx__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 36
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x28__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__edx__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__edx__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %EDX
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

define %struct.Memory* @routine_jmpq_.L_42ac75(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_cmpl__0x3___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_42a84e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




























































define %struct.Memory* @routine_movl_MINUS0x30__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__edx__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_42ac70(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_jne_.L_42a8e8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






define %struct.Memory* @routine_cmpl__0x6___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 6)
  ret %struct.Memory* %13
}
























































define %struct.Memory* @routine_jmpq_.L_42ac6b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_jne_.L_42a985(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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














define %struct.Memory* @routine_cmpl__0x7___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 7)
  ret %struct.Memory* %13
}


























































define %struct.Memory* @routine_jmpq_.L_42ac66(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_cmpl__0x6___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 6)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_42aa97(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






























define %struct.Memory* @routine_cmpl__0x5___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 5)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_cmpl__0x0____rax__rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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

define %struct.Memory* @routine_jle_.L_42aa97(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
















define %struct.Memory* @routine_movl__0x1____rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 1)
  ret %struct.Memory* %18
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
























define %struct.Memory* @routine_movb__0x6____rax__rcx_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 6)
  ret %struct.Memory* %17
}












define %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 0)
  ret %struct.Memory* %18
}


























define %struct.Memory* @routine_jmpq_.L_42ac61(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_cmpl__0x7___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 7)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_42abf0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






























define %struct.Memory* @routine_cmpl__0x8___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 8)
  ret %struct.Memory* %13
}










define %struct.Memory* @routine_addl__0x2___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 2)
  ret %struct.Memory* %12
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








































define %struct.Memory* @routine_movb__0x7____rax__rcx_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 7)
  ret %struct.Memory* %17
}




































define %struct.Memory* @routine_movb__0x8____rax__rcx_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 8)
  ret %struct.Memory* %17
}




























define %struct.Memory* @routine_addl__0x3___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 3)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_jmpq_.L_42ac5c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_movl__esi____rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RCX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %ESI
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}


















define %struct.Memory* @routine_movl_MINUS0x24__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl__esi__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 36
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x28__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__esi__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}












define %struct.Memory* @routine_jmpq_.L_42a6ef(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpq__0x0__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_je_.L_42ac97(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_je_.L_42acab(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

