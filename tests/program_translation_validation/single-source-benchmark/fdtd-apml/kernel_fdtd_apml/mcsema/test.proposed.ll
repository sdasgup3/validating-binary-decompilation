; ModuleID = 'test.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"
%union.anon = type { i64 }
%seg_400370__init_type = type <{ [23 x i8] }>
%seg_400390__text_type = type <{ [354 x i8] }>
%seg_4004f4__fini_type = type <{ [9 x i8] }>
%seg_400500__rodata_type = type <{ [4 x i8] }>
%seg_400504__eh_frame_hdr_type = type <{ [52 x i8] }>
%seg_400538__eh_frame_type = type <{ [208 x i8] }>
%seg_600e50__init_array_type = type <{ i64, i64 }>
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
@seg_400370__init = internal constant %seg_400370__init_type <{ [23 x i8] c"H\83\EC\08H\8B\05}\0C \00H\85\C0t\02\FF\D0H\83\C4\08\C3" }>
@seg_400390__text = internal constant %seg_400390__text_type <{ [354 x i8] c"1\EDI\89\D1^H\89\E2H\83\E4\F0PTI\C7\C0\F0\04@\00H\C7\C1\80\04@\00H\C7\C7x\04@\00\FF\156\0C \00\F4\0F\1FD\00\00\F3\C3f.\0F\1F\84\00\00\00\00\00\0F\1F@\00U\B8(\10`\00H=(\10`\00H\89\E5t\17\B8\00\00\00\00H\85\C0t\0D]\BF(\10`\00\FF\E0\0F\1FD\00\00]\C3f\0F\1FD\00\00\BE(\10`\00UH\81\EE(\10`\00H\89\E5H\C1\FE\03H\89\F0H\C1\E8?H\01\C6H\D1\FEt\15\B8\00\00\00\00H\85\C0t\0B]\BF(\10`\00\FF\E0\0F\1F\00]\C3f\0F\1FD\00\00\80=\E1\0B \00\00u\17UH\89\E5\E8~\FF\FF\FF\C6\05\CF\0B \00\01]\C3\0F\1FD\00\00\F3\C3\0F\1F@\00f.\0F\1F\84\00\00\00\00\00UH\89\E5]\EB\89\90U\C3f\0F\1FD\00\00AWAVI\89\D7AUATL\8D%\BE\09 \00UH\8D-\BE\09 \00SA\89\FDI\89\F6L)\E5H\83\EC\08H\C1\FD\03\E8\BF\FE\FF\FFH\85\EDt 1\DB\0F\1F\84\00\00\00\00\00L\89\FAL\89\F6D\89\EFA\FF\14\DCH\83\C3\01H9\DDu\EAH\83\C4\08[]A\5CA]A^A_\C3\90f.\0F\1F\84\00\00\00\00\00\F3\C3" }>
@seg_4004f4__fini = internal constant %seg_4004f4__fini_type <{ [9 x i8] c"H\83\EC\08H\83\C4\08\C3" }>
@seg_400500__rodata = internal constant %seg_400500__rodata_type <{ [4 x i8] c"\01\00\02\00" }>
@seg_400504__eh_frame_hdr = internal constant %seg_400504__eh_frame_hdr_type <{ [52 x i8] c"\01\1B\03;0\00\00\00\05\00\00\00\8C\FE\FF\FFL\00\00\00\BC\FE\FF\FFx\00\00\00t\FF\FF\FF\8C\00\00\00|\FF\FF\FF\A4\00\00\00\EC\FF\FF\FF\EC\00\00\00" }>
@seg_400538__eh_frame = internal constant %seg_400538__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\008\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00<\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\E0\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
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


define %struct.Memory* @kernel_fdtd_apml(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .kernel_fdtd_apml:	 RIP: 4013d0	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 4013d0	 Bytes: 1
  %loadMem_4013d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013d0 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013d0)
  store %struct.Memory* %call_4013d0, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 4013d1	 Bytes: 3
  %loadMem_4013d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013d1 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013d1)
  store %struct.Memory* %call_4013d1, %struct.Memory** %MEMORY

  ; Code: pushq %r15	 RIP: 4013d4	 Bytes: 2
  %loadMem_4013d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013d4 = call %struct.Memory* @routine_pushq__r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013d4)
  store %struct.Memory* %call_4013d4, %struct.Memory** %MEMORY

  ; Code: pushq %r14	 RIP: 4013d6	 Bytes: 2
  %loadMem_4013d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013d6 = call %struct.Memory* @routine_pushq__r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013d6)
  store %struct.Memory* %call_4013d6, %struct.Memory** %MEMORY

  ; Code: pushq %r13	 RIP: 4013d8	 Bytes: 2
  %loadMem_4013d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013d8 = call %struct.Memory* @routine_pushq__r13(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013d8)
  store %struct.Memory* %call_4013d8, %struct.Memory** %MEMORY

  ; Code: pushq %r12	 RIP: 4013da	 Bytes: 2
  %loadMem_4013da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013da = call %struct.Memory* @routine_pushq__r12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013da)
  store %struct.Memory* %call_4013da, %struct.Memory** %MEMORY

  ; Code: pushq %rbx	 RIP: 4013dc	 Bytes: 1
  %loadMem_4013dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013dc = call %struct.Memory* @routine_pushq__rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013dc)
  store %struct.Memory* %call_4013dc, %struct.Memory** %MEMORY

  ; Code: subq $0x20, %rsp	 RIP: 4013dd	 Bytes: 4
  %loadMem_4013dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013dd = call %struct.Memory* @routine_subq__0x20___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013dd)
  store %struct.Memory* %call_4013dd, %struct.Memory** %MEMORY

  ; Code: movq 0x60(%rbp), %rax	 RIP: 4013e1	 Bytes: 4
  %loadMem_4013e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013e1 = call %struct.Memory* @routine_movq_0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013e1)
  store %struct.Memory* %call_4013e1, %struct.Memory** %MEMORY

  ; Code: movq 0x58(%rbp), %r10	 RIP: 4013e5	 Bytes: 4
  %loadMem_4013e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013e5 = call %struct.Memory* @routine_movq_0x58__rbp____r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013e5)
  store %struct.Memory* %call_4013e5, %struct.Memory** %MEMORY

  ; Code: movq 0x50(%rbp), %r11	 RIP: 4013e9	 Bytes: 4
  %loadMem_4013e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013e9 = call %struct.Memory* @routine_movq_0x50__rbp____r11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013e9)
  store %struct.Memory* %call_4013e9, %struct.Memory** %MEMORY

  ; Code: movq 0x48(%rbp), %rbx	 RIP: 4013ed	 Bytes: 4
  %loadMem_4013ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013ed = call %struct.Memory* @routine_movq_0x48__rbp____rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013ed)
  store %struct.Memory* %call_4013ed, %struct.Memory** %MEMORY

  ; Code: movq 0x40(%rbp), %r14	 RIP: 4013f1	 Bytes: 4
  %loadMem_4013f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013f1 = call %struct.Memory* @routine_movq_0x40__rbp____r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013f1)
  store %struct.Memory* %call_4013f1, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rbp), %r15	 RIP: 4013f5	 Bytes: 4
  %loadMem_4013f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013f5 = call %struct.Memory* @routine_movq_0x38__rbp____r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013f5)
  store %struct.Memory* %call_4013f5, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rbp), %r12	 RIP: 4013f9	 Bytes: 4
  %loadMem_4013f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013f9 = call %struct.Memory* @routine_movq_0x30__rbp____r12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013f9)
  store %struct.Memory* %call_4013f9, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rbp), %r13	 RIP: 4013fd	 Bytes: 4
  %loadMem_4013fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013fd = call %struct.Memory* @routine_movq_0x28__rbp____r13(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013fd)
  store %struct.Memory* %call_4013fd, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x78(%rbp)	 RIP: 401401	 Bytes: 4
  %loadMem_401401 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401401 = call %struct.Memory* @routine_movq__rax__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401401)
  store %struct.Memory* %call_401401, %struct.Memory** %MEMORY

  ; Code: movq 0x20(%rbp), %rax	 RIP: 401405	 Bytes: 4
  %loadMem_401405 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401405 = call %struct.Memory* @routine_movq_0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401405)
  store %struct.Memory* %call_401405, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x80(%rbp)	 RIP: 401409	 Bytes: 4
  %loadMem_401409 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401409 = call %struct.Memory* @routine_movq__rax__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401409)
  store %struct.Memory* %call_401409, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rbp), %rax	 RIP: 40140d	 Bytes: 4
  %loadMem_40140d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40140d = call %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40140d)
  store %struct.Memory* %call_40140d, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x88(%rbp)	 RIP: 401411	 Bytes: 7
  %loadMem_401411 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401411 = call %struct.Memory* @routine_movq__rax__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401411)
  store %struct.Memory* %call_401411, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rbp), %rax	 RIP: 401418	 Bytes: 4
  %loadMem_401418 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401418 = call %struct.Memory* @routine_movq_0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401418)
  store %struct.Memory* %call_401418, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x2c(%rbp)	 RIP: 40141c	 Bytes: 3
  %loadMem_40141c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40141c = call %struct.Memory* @routine_movl__edi__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40141c)
  store %struct.Memory* %call_40141c, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x30(%rbp)	 RIP: 40141f	 Bytes: 3
  %loadMem_40141f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40141f = call %struct.Memory* @routine_movl__esi__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40141f)
  store %struct.Memory* %call_40141f, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x34(%rbp)	 RIP: 401422	 Bytes: 3
  %loadMem_401422 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401422 = call %struct.Memory* @routine_movl__edx__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401422)
  store %struct.Memory* %call_401422, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x40(%rbp)	 RIP: 401425	 Bytes: 5
  %loadMem_401425 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401425 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401425)
  store %struct.Memory* %call_401425, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x48(%rbp)	 RIP: 40142a	 Bytes: 5
  %loadMem_40142a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40142a = call %struct.Memory* @routine_movsd__xmm1__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40142a)
  store %struct.Memory* %call_40142a, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x50(%rbp)	 RIP: 40142f	 Bytes: 4
  %loadMem_40142f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40142f = call %struct.Memory* @routine_movq__rcx__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40142f)
  store %struct.Memory* %call_40142f, %struct.Memory** %MEMORY

  ; Code: movq %r8, -0x58(%rbp)	 RIP: 401433	 Bytes: 4
  %loadMem_401433 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401433 = call %struct.Memory* @routine_movq__r8__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401433)
  store %struct.Memory* %call_401433, %struct.Memory** %MEMORY

  ; Code: movq %r9, -0x60(%rbp)	 RIP: 401437	 Bytes: 4
  %loadMem_401437 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401437 = call %struct.Memory* @routine_movq__r9__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401437)
  store %struct.Memory* %call_401437, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x64(%rbp)	 RIP: 40143b	 Bytes: 7
  %loadMem_40143b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40143b = call %struct.Memory* @routine_movl__0x0__MINUS0x64__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40143b)
  store %struct.Memory* %call_40143b, %struct.Memory** %MEMORY

  ; Code: movq %r13, -0x90(%rbp)	 RIP: 401442	 Bytes: 7
  %loadMem_401442 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401442 = call %struct.Memory* @routine_movq__r13__MINUS0x90__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401442)
  store %struct.Memory* %call_401442, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x98(%rbp)	 RIP: 401449	 Bytes: 7
  %loadMem_401449 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401449 = call %struct.Memory* @routine_movq__rax__MINUS0x98__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401449)
  store %struct.Memory* %call_401449, %struct.Memory** %MEMORY

  ; Code: movq %r10, -0xa0(%rbp)	 RIP: 401450	 Bytes: 7
  %loadMem_401450 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401450 = call %struct.Memory* @routine_movq__r10__MINUS0xa0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401450)
  store %struct.Memory* %call_401450, %struct.Memory** %MEMORY

  ; Code: movq %r11, -0xa8(%rbp)	 RIP: 401457	 Bytes: 7
  %loadMem_401457 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401457 = call %struct.Memory* @routine_movq__r11__MINUS0xa8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401457)
  store %struct.Memory* %call_401457, %struct.Memory** %MEMORY

  ; Code: movq %rbx, -0xb0(%rbp)	 RIP: 40145e	 Bytes: 7
  %loadMem_40145e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40145e = call %struct.Memory* @routine_movq__rbx__MINUS0xb0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40145e)
  store %struct.Memory* %call_40145e, %struct.Memory** %MEMORY

  ; Code: movq %r14, -0xb8(%rbp)	 RIP: 401465	 Bytes: 7
  %loadMem_401465 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401465 = call %struct.Memory* @routine_movq__r14__MINUS0xb8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401465)
  store %struct.Memory* %call_401465, %struct.Memory** %MEMORY

  ; Code: movq %r15, -0xc0(%rbp)	 RIP: 40146c	 Bytes: 7
  %loadMem_40146c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40146c = call %struct.Memory* @routine_movq__r15__MINUS0xc0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40146c)
  store %struct.Memory* %call_40146c, %struct.Memory** %MEMORY

  ; Code: movq %r12, -0xc8(%rbp)	 RIP: 401473	 Bytes: 7
  %loadMem_401473 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401473 = call %struct.Memory* @routine_movq__r12__MINUS0xc8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401473)
  store %struct.Memory* %call_401473, %struct.Memory** %MEMORY

  ; Code: .L_40147a:	 RIP: 40147a	 Bytes: 0
  br label %block_.L_40147a
block_.L_40147a:

  ; Code: movl -0x64(%rbp), %eax	 RIP: 40147a	 Bytes: 3
  %loadMem_40147a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40147a = call %struct.Memory* @routine_movl_MINUS0x64__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40147a)
  store %struct.Memory* %call_40147a, %struct.Memory** %MEMORY

  ; Code: cmpl -0x2c(%rbp), %eax	 RIP: 40147d	 Bytes: 3
  %loadMem_40147d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40147d = call %struct.Memory* @routine_cmpl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40147d)
  store %struct.Memory* %call_40147d, %struct.Memory** %MEMORY

  ; Code: jge .L_401ef8	 RIP: 401480	 Bytes: 6
  %loadMem_401480 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401480 = call %struct.Memory* @routine_jge_.L_401ef8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401480, i8* %BRANCH_TAKEN, i64 2680, i64 6, i64 6)
  store %struct.Memory* %call_401480, %struct.Memory** %MEMORY

  %loadBr_401480 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401480 = icmp eq i8 %loadBr_401480, 1
  br i1 %cmpBr_401480, label %block_.L_401ef8, label %block_401486

block_401486:
  ; Code: movl $0x0, -0x68(%rbp)	 RIP: 401486	 Bytes: 7
  %loadMem_401486 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401486 = call %struct.Memory* @routine_movl__0x0__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401486)
  store %struct.Memory* %call_401486, %struct.Memory** %MEMORY

  ; Code: .L_40148d:	 RIP: 40148d	 Bytes: 0
  br label %block_.L_40148d
block_.L_40148d:

  ; Code: movl -0x68(%rbp), %eax	 RIP: 40148d	 Bytes: 3
  %loadMem_40148d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40148d = call %struct.Memory* @routine_movl_MINUS0x68__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40148d)
  store %struct.Memory* %call_40148d, %struct.Memory** %MEMORY

  ; Code: cmpl -0x34(%rbp), %eax	 RIP: 401490	 Bytes: 3
  %loadMem_401490 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401490 = call %struct.Memory* @routine_cmpl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401490)
  store %struct.Memory* %call_401490, %struct.Memory** %MEMORY

  ; Code: jge .L_401ee5	 RIP: 401493	 Bytes: 6
  %loadMem_401493 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401493 = call %struct.Memory* @routine_jge_.L_401ee5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401493, i8* %BRANCH_TAKEN, i64 2642, i64 6, i64 6)
  store %struct.Memory* %call_401493, %struct.Memory** %MEMORY

  %loadBr_401493 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401493 = icmp eq i8 %loadBr_401493, 1
  br i1 %cmpBr_401493, label %block_.L_401ee5, label %block_401499

block_401499:
  ; Code: movl $0x0, -0x6c(%rbp)	 RIP: 401499	 Bytes: 7
  %loadMem_401499 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401499 = call %struct.Memory* @routine_movl__0x0__MINUS0x6c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401499)
  store %struct.Memory* %call_401499, %struct.Memory** %MEMORY

  ; Code: .L_4014a0:	 RIP: 4014a0	 Bytes: 0
  br label %block_.L_4014a0
block_.L_4014a0:

  ; Code: movl -0x6c(%rbp), %eax	 RIP: 4014a0	 Bytes: 3
  %loadMem_4014a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014a0 = call %struct.Memory* @routine_movl_MINUS0x6c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014a0)
  store %struct.Memory* %call_4014a0, %struct.Memory** %MEMORY

  ; Code: cmpl -0x30(%rbp), %eax	 RIP: 4014a3	 Bytes: 3
  %loadMem_4014a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014a3 = call %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014a3)
  store %struct.Memory* %call_4014a3, %struct.Memory** %MEMORY

  ; Code: jge .L_40174c	 RIP: 4014a6	 Bytes: 6
  %loadMem_4014a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014a6 = call %struct.Memory* @routine_jge_.L_40174c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014a6, i8* %BRANCH_TAKEN, i64 678, i64 6, i64 6)
  store %struct.Memory* %call_4014a6, %struct.Memory** %MEMORY

  %loadBr_4014a6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4014a6 = icmp eq i8 %loadBr_4014a6, 1
  br i1 %cmpBr_4014a6, label %block_.L_40174c, label %block_4014ac

block_4014ac:
  ; Code: movq 0x20(%rbp), %rax	 RIP: 4014ac	 Bytes: 4
  %loadMem_4014ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014ac = call %struct.Memory* @routine_movq_0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014ac)
  store %struct.Memory* %call_4014ac, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 4014b0	 Bytes: 4
  %loadMem_4014b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014b0 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014b0)
  store %struct.Memory* %call_4014b0, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 4014b4	 Bytes: 7
  %loadMem_4014b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014b4 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014b4)
  store %struct.Memory* %call_4014b4, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4014bb	 Bytes: 3
  %loadMem_4014bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014bb = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014bb)
  store %struct.Memory* %call_4014bb, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 4014be	 Bytes: 4
  %loadMem_4014be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014be = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014be)
  store %struct.Memory* %call_4014be, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4014c2	 Bytes: 7
  %loadMem_4014c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014c2 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014c2)
  store %struct.Memory* %call_4014c2, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4014c9	 Bytes: 3
  %loadMem_4014c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014c9 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014c9)
  store %struct.Memory* %call_4014c9, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rcx	 RIP: 4014cc	 Bytes: 4
  %loadMem_4014cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014cc = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014cc)
  store %struct.Memory* %call_4014cc, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 4014d0	 Bytes: 5
  %loadMem_4014d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014d0 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014d0)
  store %struct.Memory* %call_4014d0, %struct.Memory** %MEMORY

  ; Code: movq 0x20(%rbp), %rax	 RIP: 4014d5	 Bytes: 4
  %loadMem_4014d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014d5 = call %struct.Memory* @routine_movq_0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014d5)
  store %struct.Memory* %call_4014d5, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 4014d9	 Bytes: 4
  %loadMem_4014d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014d9 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014d9)
  store %struct.Memory* %call_4014d9, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 4014dd	 Bytes: 7
  %loadMem_4014dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014dd = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014dd)
  store %struct.Memory* %call_4014dd, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4014e4	 Bytes: 3
  %loadMem_4014e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014e4 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014e4)
  store %struct.Memory* %call_4014e4, %struct.Memory** %MEMORY

  ; Code: movl -0x68(%rbp), %edx	 RIP: 4014e7	 Bytes: 3
  %loadMem_4014e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014e7 = call %struct.Memory* @routine_movl_MINUS0x68__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014e7)
  store %struct.Memory* %call_4014e7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 4014ea	 Bytes: 3
  %loadMem_4014ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014ea = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014ea)
  store %struct.Memory* %call_4014ea, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4014ed	 Bytes: 3
  %loadMem_4014ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014ed = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014ed)
  store %struct.Memory* %call_4014ed, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4014f0	 Bytes: 7
  %loadMem_4014f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014f0 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014f0)
  store %struct.Memory* %call_4014f0, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4014f7	 Bytes: 3
  %loadMem_4014f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014f7 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014f7)
  store %struct.Memory* %call_4014f7, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rcx	 RIP: 4014fa	 Bytes: 4
  %loadMem_4014fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014fa = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014fa)
  store %struct.Memory* %call_4014fa, %struct.Memory** %MEMORY

  ; Code: subsd (%rax,%rcx,8), %xmm0	 RIP: 4014fe	 Bytes: 5
  %loadMem_4014fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014fe = call %struct.Memory* @routine_subsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014fe)
  store %struct.Memory* %call_4014fe, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rbp), %rax	 RIP: 401503	 Bytes: 4
  %loadMem_401503 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401503 = call %struct.Memory* @routine_movq_0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401503)
  store %struct.Memory* %call_401503, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 401507	 Bytes: 4
  %loadMem_401507 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401507 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401507)
  store %struct.Memory* %call_401507, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 40150b	 Bytes: 7
  %loadMem_40150b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40150b = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40150b)
  store %struct.Memory* %call_40150b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401512	 Bytes: 3
  %loadMem_401512 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401512 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401512)
  store %struct.Memory* %call_401512, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 401515	 Bytes: 4
  %loadMem_401515 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401515 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401515)
  store %struct.Memory* %call_401515, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401519	 Bytes: 7
  %loadMem_401519 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401519 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401519)
  store %struct.Memory* %call_401519, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401520	 Bytes: 3
  %loadMem_401520 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401520 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401520)
  store %struct.Memory* %call_401520, %struct.Memory** %MEMORY

  ; Code: movl -0x6c(%rbp), %edx	 RIP: 401523	 Bytes: 3
  %loadMem_401523 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401523 = call %struct.Memory* @routine_movl_MINUS0x6c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401523)
  store %struct.Memory* %call_401523, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 401526	 Bytes: 3
  %loadMem_401526 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401526 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401526)
  store %struct.Memory* %call_401526, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 401529	 Bytes: 3
  %loadMem_401529 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401529 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401529)
  store %struct.Memory* %call_401529, %struct.Memory** %MEMORY

  ; Code: addsd (%rax,%rcx,8), %xmm0	 RIP: 40152c	 Bytes: 5
  %loadMem_40152c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40152c = call %struct.Memory* @routine_addsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40152c)
  store %struct.Memory* %call_40152c, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rbp), %rax	 RIP: 401531	 Bytes: 4
  %loadMem_401531 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401531 = call %struct.Memory* @routine_movq_0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401531)
  store %struct.Memory* %call_401531, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 401535	 Bytes: 4
  %loadMem_401535 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401535 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401535)
  store %struct.Memory* %call_401535, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 401539	 Bytes: 7
  %loadMem_401539 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401539 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401539)
  store %struct.Memory* %call_401539, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401540	 Bytes: 3
  %loadMem_401540 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401540 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401540)
  store %struct.Memory* %call_401540, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 401543	 Bytes: 4
  %loadMem_401543 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401543 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401543)
  store %struct.Memory* %call_401543, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401547	 Bytes: 7
  %loadMem_401547 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401547 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401547)
  store %struct.Memory* %call_401547, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40154e	 Bytes: 3
  %loadMem_40154e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40154e = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40154e)
  store %struct.Memory* %call_40154e, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rcx	 RIP: 401551	 Bytes: 4
  %loadMem_401551 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401551 = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401551)
  store %struct.Memory* %call_401551, %struct.Memory** %MEMORY

  ; Code: subsd (%rax,%rcx,8), %xmm0	 RIP: 401555	 Bytes: 5
  %loadMem_401555 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401555 = call %struct.Memory* @routine_subsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401555)
  store %struct.Memory* %call_401555, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rax	 RIP: 40155a	 Bytes: 4
  %loadMem_40155a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40155a = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40155a)
  store %struct.Memory* %call_40155a, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 40155e	 Bytes: 4
  %loadMem_40155e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40155e = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40155e)
  store %struct.Memory* %call_40155e, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401562	 Bytes: 7
  %loadMem_401562 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401562 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401562)
  store %struct.Memory* %call_401562, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401569	 Bytes: 3
  %loadMem_401569 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401569 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401569)
  store %struct.Memory* %call_401569, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 40156c	 Bytes: 4
  %loadMem_40156c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40156c = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40156c)
  store %struct.Memory* %call_40156c, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 401570	 Bytes: 5
  %loadMem_401570 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401570 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401570)
  store %struct.Memory* %call_401570, %struct.Memory** %MEMORY

  ; Code: movq 0x58(%rbp), %rax	 RIP: 401575	 Bytes: 4
  %loadMem_401575 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401575 = call %struct.Memory* @routine_movq_0x58__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401575)
  store %struct.Memory* %call_401575, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 401579	 Bytes: 4
  %loadMem_401579 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401579 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401579)
  store %struct.Memory* %call_401579, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 40157d	 Bytes: 5
  %loadMem_40157d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40157d = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40157d)
  store %struct.Memory* %call_40157d, %struct.Memory** %MEMORY

  ; Code: movq 0x60(%rbp), %rax	 RIP: 401582	 Bytes: 4
  %loadMem_401582 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401582 = call %struct.Memory* @routine_movq_0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401582)
  store %struct.Memory* %call_401582, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 401586	 Bytes: 4
  %loadMem_401586 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401586 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401586)
  store %struct.Memory* %call_401586, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm0	 RIP: 40158a	 Bytes: 5
  %loadMem_40158a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40158a = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40158a)
  store %struct.Memory* %call_40158a, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rbp), %rax	 RIP: 40158f	 Bytes: 4
  %loadMem_40158f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40158f = call %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40158f)
  store %struct.Memory* %call_40158f, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 401593	 Bytes: 4
  %loadMem_401593 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401593 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401593)
  store %struct.Memory* %call_401593, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 401597	 Bytes: 7
  %loadMem_401597 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401597 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401597)
  store %struct.Memory* %call_401597, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40159e	 Bytes: 3
  %loadMem_40159e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40159e = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40159e)
  store %struct.Memory* %call_40159e, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 4015a1	 Bytes: 4
  %loadMem_4015a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015a1 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015a1)
  store %struct.Memory* %call_4015a1, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4015a5	 Bytes: 7
  %loadMem_4015a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015a5 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015a5)
  store %struct.Memory* %call_4015a5, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4015ac	 Bytes: 3
  %loadMem_4015ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015ac = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015ac)
  store %struct.Memory* %call_4015ac, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rcx	 RIP: 4015af	 Bytes: 4
  %loadMem_4015af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015af = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015af)
  store %struct.Memory* %call_4015af, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm0	 RIP: 4015b3	 Bytes: 5
  %loadMem_4015b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015b3 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015b3)
  store %struct.Memory* %call_4015b3, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm1	 RIP: 4015b8	 Bytes: 5
  %loadMem_4015b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015b8 = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015b8)
  store %struct.Memory* %call_4015b8, %struct.Memory** %MEMORY

  ; Code: movq 0x60(%rbp), %rax	 RIP: 4015bd	 Bytes: 4
  %loadMem_4015bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015bd = call %struct.Memory* @routine_movq_0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015bd)
  store %struct.Memory* %call_4015bd, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 4015c1	 Bytes: 4
  %loadMem_4015c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015c1 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015c1)
  store %struct.Memory* %call_4015c1, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 4015c5	 Bytes: 5
  %loadMem_4015c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015c5 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015c5)
  store %struct.Memory* %call_4015c5, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rax	 RIP: 4015ca	 Bytes: 4
  %loadMem_4015ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015ca = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015ca)
  store %struct.Memory* %call_4015ca, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 4015ce	 Bytes: 4
  %loadMem_4015ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015ce = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015ce)
  store %struct.Memory* %call_4015ce, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4015d2	 Bytes: 7
  %loadMem_4015d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015d2 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015d2)
  store %struct.Memory* %call_4015d2, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4015d9	 Bytes: 3
  %loadMem_4015d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015d9 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015d9)
  store %struct.Memory* %call_4015d9, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 4015dc	 Bytes: 4
  %loadMem_4015dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015dc = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015dc)
  store %struct.Memory* %call_4015dc, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 4015e0	 Bytes: 5
  %loadMem_4015e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015e0 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015e0)
  store %struct.Memory* %call_4015e0, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 4015e5	 Bytes: 4
  %loadMem_4015e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015e5 = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015e5)
  store %struct.Memory* %call_4015e5, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rbp), %rax	 RIP: 4015e9	 Bytes: 4
  %loadMem_4015e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015e9 = call %struct.Memory* @routine_movq_0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015e9)
  store %struct.Memory* %call_4015e9, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 4015ed	 Bytes: 4
  %loadMem_4015ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015ed = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015ed)
  store %struct.Memory* %call_4015ed, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4015f1	 Bytes: 7
  %loadMem_4015f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015f1 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015f1)
  store %struct.Memory* %call_4015f1, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4015f8	 Bytes: 3
  %loadMem_4015f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015f8 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015f8)
  store %struct.Memory* %call_4015f8, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 4015fb	 Bytes: 4
  %loadMem_4015fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015fb = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015fb)
  store %struct.Memory* %call_4015fb, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 4015ff	 Bytes: 5
  %loadMem_4015ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015ff = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015ff)
  store %struct.Memory* %call_4015ff, %struct.Memory** %MEMORY

  ; Code: movq 0x48(%rbp), %rax	 RIP: 401604	 Bytes: 4
  %loadMem_401604 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401604 = call %struct.Memory* @routine_movq_0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401604)
  store %struct.Memory* %call_401604, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rcx	 RIP: 401608	 Bytes: 4
  %loadMem_401608 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401608 = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401608)
  store %struct.Memory* %call_401608, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 40160c	 Bytes: 5
  %loadMem_40160c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40160c = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40160c)
  store %struct.Memory* %call_40160c, %struct.Memory** %MEMORY

  ; Code: movq 0x50(%rbp), %rax	 RIP: 401611	 Bytes: 4
  %loadMem_401611 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401611 = call %struct.Memory* @routine_movq_0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401611)
  store %struct.Memory* %call_401611, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rcx	 RIP: 401615	 Bytes: 4
  %loadMem_401615 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401615 = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401615)
  store %struct.Memory* %call_401615, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm0	 RIP: 401619	 Bytes: 5
  %loadMem_401619 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401619 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401619)
  store %struct.Memory* %call_401619, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rbp), %rax	 RIP: 40161e	 Bytes: 4
  %loadMem_40161e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40161e = call %struct.Memory* @routine_movq_0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40161e)
  store %struct.Memory* %call_40161e, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 401622	 Bytes: 4
  %loadMem_401622 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401622 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401622)
  store %struct.Memory* %call_401622, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 401626	 Bytes: 7
  %loadMem_401626 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401626 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401626)
  store %struct.Memory* %call_401626, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40162d	 Bytes: 3
  %loadMem_40162d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40162d = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40162d)
  store %struct.Memory* %call_40162d, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 401630	 Bytes: 4
  %loadMem_401630 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401630 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401630)
  store %struct.Memory* %call_401630, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401634	 Bytes: 7
  %loadMem_401634 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401634 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401634)
  store %struct.Memory* %call_401634, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40163b	 Bytes: 3
  %loadMem_40163b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40163b = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40163b)
  store %struct.Memory* %call_40163b, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rcx	 RIP: 40163e	 Bytes: 4
  %loadMem_40163e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40163e = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40163e)
  store %struct.Memory* %call_40163e, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm0	 RIP: 401642	 Bytes: 5
  %loadMem_401642 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401642 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401642)
  store %struct.Memory* %call_401642, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm1	 RIP: 401647	 Bytes: 5
  %loadMem_401647 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401647 = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401647)
  store %struct.Memory* %call_401647, %struct.Memory** %MEMORY

  ; Code: movq 0x40(%rbp), %rax	 RIP: 40164c	 Bytes: 4
  %loadMem_40164c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40164c = call %struct.Memory* @routine_movq_0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40164c)
  store %struct.Memory* %call_40164c, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 401650	 Bytes: 4
  %loadMem_401650 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401650 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401650)
  store %struct.Memory* %call_401650, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 401654	 Bytes: 5
  %loadMem_401654 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401654 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401654)
  store %struct.Memory* %call_401654, %struct.Memory** %MEMORY

  ; Code: movq 0x50(%rbp), %rax	 RIP: 401659	 Bytes: 4
  %loadMem_401659 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401659 = call %struct.Memory* @routine_movq_0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401659)
  store %struct.Memory* %call_401659, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rcx	 RIP: 40165d	 Bytes: 4
  %loadMem_40165d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40165d = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40165d)
  store %struct.Memory* %call_40165d, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 401661	 Bytes: 5
  %loadMem_401661 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401661 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401661)
  store %struct.Memory* %call_401661, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rbp), %rax	 RIP: 401666	 Bytes: 4
  %loadMem_401666 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401666 = call %struct.Memory* @routine_movq_0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401666)
  store %struct.Memory* %call_401666, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 40166a	 Bytes: 4
  %loadMem_40166a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40166a = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40166a)
  store %struct.Memory* %call_40166a, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 40166e	 Bytes: 7
  %loadMem_40166e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40166e = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40166e)
  store %struct.Memory* %call_40166e, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401675	 Bytes: 3
  %loadMem_401675 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401675 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401675)
  store %struct.Memory* %call_401675, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 401678	 Bytes: 4
  %loadMem_401678 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401678 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401678)
  store %struct.Memory* %call_401678, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 40167c	 Bytes: 5
  %loadMem_40167c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40167c = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40167c)
  store %struct.Memory* %call_40167c, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 401681	 Bytes: 4
  %loadMem_401681 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401681 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401681)
  store %struct.Memory* %call_401681, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm1	 RIP: 401685	 Bytes: 5
  %loadMem_401685 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401685 = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401685)
  store %struct.Memory* %call_401685, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rbp), %rax	 RIP: 40168a	 Bytes: 4
  %loadMem_40168a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40168a = call %struct.Memory* @routine_movq_0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40168a)
  store %struct.Memory* %call_40168a, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 40168e	 Bytes: 4
  %loadMem_40168e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40168e = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40168e)
  store %struct.Memory* %call_40168e, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 401692	 Bytes: 5
  %loadMem_401692 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401692 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401692)
  store %struct.Memory* %call_401692, %struct.Memory** %MEMORY

  ; Code: movq 0x50(%rbp), %rax	 RIP: 401697	 Bytes: 4
  %loadMem_401697 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401697 = call %struct.Memory* @routine_movq_0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401697)
  store %struct.Memory* %call_401697, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rcx	 RIP: 40169b	 Bytes: 4
  %loadMem_40169b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40169b = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40169b)
  store %struct.Memory* %call_40169b, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 40169f	 Bytes: 5
  %loadMem_40169f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40169f = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40169f)
  store %struct.Memory* %call_40169f, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rbp), %rax	 RIP: 4016a4	 Bytes: 4
  %loadMem_4016a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016a4 = call %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016a4)
  store %struct.Memory* %call_4016a4, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 4016a8	 Bytes: 4
  %loadMem_4016a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016a8 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016a8)
  store %struct.Memory* %call_4016a8, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 4016ac	 Bytes: 7
  %loadMem_4016ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016ac = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016ac)
  store %struct.Memory* %call_4016ac, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4016b3	 Bytes: 3
  %loadMem_4016b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016b3 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016b3)
  store %struct.Memory* %call_4016b3, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 4016b6	 Bytes: 4
  %loadMem_4016b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016b6 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016b6)
  store %struct.Memory* %call_4016b6, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4016ba	 Bytes: 7
  %loadMem_4016ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016ba = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016ba)
  store %struct.Memory* %call_4016ba, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4016c1	 Bytes: 3
  %loadMem_4016c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016c1 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016c1)
  store %struct.Memory* %call_4016c1, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rcx	 RIP: 4016c4	 Bytes: 4
  %loadMem_4016c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016c4 = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016c4)
  store %struct.Memory* %call_4016c4, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 4016c8	 Bytes: 5
  %loadMem_4016c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016c8 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016c8)
  store %struct.Memory* %call_4016c8, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 4016cd	 Bytes: 4
  %loadMem_4016cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016cd = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016cd)
  store %struct.Memory* %call_4016cd, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rbp), %rax	 RIP: 4016d1	 Bytes: 4
  %loadMem_4016d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016d1 = call %struct.Memory* @routine_movq_0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016d1)
  store %struct.Memory* %call_4016d1, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 4016d5	 Bytes: 4
  %loadMem_4016d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016d5 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016d5)
  store %struct.Memory* %call_4016d5, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 4016d9	 Bytes: 7
  %loadMem_4016d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016d9 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016d9)
  store %struct.Memory* %call_4016d9, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4016e0	 Bytes: 3
  %loadMem_4016e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016e0 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016e0)
  store %struct.Memory* %call_4016e0, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 4016e3	 Bytes: 4
  %loadMem_4016e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016e3 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016e3)
  store %struct.Memory* %call_4016e3, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4016e7	 Bytes: 7
  %loadMem_4016e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016e7 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016e7)
  store %struct.Memory* %call_4016e7, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4016ee	 Bytes: 3
  %loadMem_4016ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016ee = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016ee)
  store %struct.Memory* %call_4016ee, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rcx	 RIP: 4016f1	 Bytes: 4
  %loadMem_4016f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016f1 = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016f1)
  store %struct.Memory* %call_4016f1, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 4016f5	 Bytes: 5
  %loadMem_4016f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016f5 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016f5)
  store %struct.Memory* %call_4016f5, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rbp), %rax	 RIP: 4016fa	 Bytes: 4
  %loadMem_4016fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016fa = call %struct.Memory* @routine_movq_0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016fa)
  store %struct.Memory* %call_4016fa, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 4016fe	 Bytes: 4
  %loadMem_4016fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016fe = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016fe)
  store %struct.Memory* %call_4016fe, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401702	 Bytes: 7
  %loadMem_401702 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401702 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401702)
  store %struct.Memory* %call_401702, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401709	 Bytes: 3
  %loadMem_401709 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401709 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401709)
  store %struct.Memory* %call_401709, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 40170c	 Bytes: 4
  %loadMem_40170c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40170c = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40170c)
  store %struct.Memory* %call_40170c, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 401710	 Bytes: 5
  %loadMem_401710 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401710 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401710)
  store %struct.Memory* %call_401710, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rbp), %rax	 RIP: 401715	 Bytes: 4
  %loadMem_401715 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401715 = call %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401715)
  store %struct.Memory* %call_401715, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 401719	 Bytes: 4
  %loadMem_401719 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401719 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401719)
  store %struct.Memory* %call_401719, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 40171d	 Bytes: 7
  %loadMem_40171d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40171d = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40171d)
  store %struct.Memory* %call_40171d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401724	 Bytes: 3
  %loadMem_401724 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401724 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401724)
  store %struct.Memory* %call_401724, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 401727	 Bytes: 4
  %loadMem_401727 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401727 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401727)
  store %struct.Memory* %call_401727, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 40172b	 Bytes: 7
  %loadMem_40172b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40172b = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40172b)
  store %struct.Memory* %call_40172b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401732	 Bytes: 3
  %loadMem_401732 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401732 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401732)
  store %struct.Memory* %call_401732, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rcx	 RIP: 401735	 Bytes: 4
  %loadMem_401735 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401735 = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401735)
  store %struct.Memory* %call_401735, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 401739	 Bytes: 5
  %loadMem_401739 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401739 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401739)
  store %struct.Memory* %call_401739, %struct.Memory** %MEMORY

  ; Code: movl -0x6c(%rbp), %eax	 RIP: 40173e	 Bytes: 3
  %loadMem_40173e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40173e = call %struct.Memory* @routine_movl_MINUS0x6c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40173e)
  store %struct.Memory* %call_40173e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401741	 Bytes: 3
  %loadMem_401741 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401741 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401741)
  store %struct.Memory* %call_401741, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6c(%rbp)	 RIP: 401744	 Bytes: 3
  %loadMem_401744 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401744 = call %struct.Memory* @routine_movl__eax__MINUS0x6c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401744)
  store %struct.Memory* %call_401744, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4014a0	 RIP: 401747	 Bytes: 5
  %loadMem_401747 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401747 = call %struct.Memory* @routine_jmpq_.L_4014a0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401747, i64 -679, i64 5)
  store %struct.Memory* %call_401747, %struct.Memory** %MEMORY

  br label %block_.L_4014a0

  ; Code: .L_40174c:	 RIP: 40174c	 Bytes: 0
block_.L_40174c:

  ; Code: movq 0x20(%rbp), %rax	 RIP: 40174c	 Bytes: 4
  %loadMem_40174c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40174c = call %struct.Memory* @routine_movq_0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40174c)
  store %struct.Memory* %call_40174c, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 401750	 Bytes: 4
  %loadMem_401750 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401750 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401750)
  store %struct.Memory* %call_401750, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 401754	 Bytes: 7
  %loadMem_401754 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401754 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401754)
  store %struct.Memory* %call_401754, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40175b	 Bytes: 3
  %loadMem_40175b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40175b = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40175b)
  store %struct.Memory* %call_40175b, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 40175e	 Bytes: 4
  %loadMem_40175e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40175e = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40175e)
  store %struct.Memory* %call_40175e, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401762	 Bytes: 7
  %loadMem_401762 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401762 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401762)
  store %struct.Memory* %call_401762, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401769	 Bytes: 3
  %loadMem_401769 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401769 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401769)
  store %struct.Memory* %call_401769, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 40176c	 Bytes: 4
  %loadMem_40176c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40176c = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40176c)
  store %struct.Memory* %call_40176c, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 401770	 Bytes: 5
  %loadMem_401770 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401770 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401770)
  store %struct.Memory* %call_401770, %struct.Memory** %MEMORY

  ; Code: movq 0x20(%rbp), %rax	 RIP: 401775	 Bytes: 4
  %loadMem_401775 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401775 = call %struct.Memory* @routine_movq_0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401775)
  store %struct.Memory* %call_401775, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 401779	 Bytes: 4
  %loadMem_401779 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401779 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401779)
  store %struct.Memory* %call_401779, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 40177d	 Bytes: 7
  %loadMem_40177d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40177d = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40177d)
  store %struct.Memory* %call_40177d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401784	 Bytes: 3
  %loadMem_401784 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401784 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401784)
  store %struct.Memory* %call_401784, %struct.Memory** %MEMORY

  ; Code: movl -0x68(%rbp), %edx	 RIP: 401787	 Bytes: 3
  %loadMem_401787 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401787 = call %struct.Memory* @routine_movl_MINUS0x68__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401787)
  store %struct.Memory* %call_401787, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 40178a	 Bytes: 3
  %loadMem_40178a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40178a = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40178a)
  store %struct.Memory* %call_40178a, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40178d	 Bytes: 3
  %loadMem_40178d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40178d = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40178d)
  store %struct.Memory* %call_40178d, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401790	 Bytes: 7
  %loadMem_401790 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401790 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401790)
  store %struct.Memory* %call_401790, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401797	 Bytes: 3
  %loadMem_401797 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401797 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401797)
  store %struct.Memory* %call_401797, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 40179a	 Bytes: 4
  %loadMem_40179a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40179a = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40179a)
  store %struct.Memory* %call_40179a, %struct.Memory** %MEMORY

  ; Code: subsd (%rax,%rcx,8), %xmm0	 RIP: 40179e	 Bytes: 5
  %loadMem_40179e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40179e = call %struct.Memory* @routine_subsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40179e)
  store %struct.Memory* %call_40179e, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rax	 RIP: 4017a3	 Bytes: 4
  %loadMem_4017a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017a3 = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017a3)
  store %struct.Memory* %call_4017a3, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 4017a7	 Bytes: 4
  %loadMem_4017a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017a7 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017a7)
  store %struct.Memory* %call_4017a7, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4017ab	 Bytes: 7
  %loadMem_4017ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017ab = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017ab)
  store %struct.Memory* %call_4017ab, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4017b2	 Bytes: 3
  %loadMem_4017b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017b2 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017b2)
  store %struct.Memory* %call_4017b2, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 4017b5	 Bytes: 4
  %loadMem_4017b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017b5 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017b5)
  store %struct.Memory* %call_4017b5, %struct.Memory** %MEMORY

  ; Code: addsd (%rax,%rcx,8), %xmm0	 RIP: 4017b9	 Bytes: 5
  %loadMem_4017b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017b9 = call %struct.Memory* @routine_addsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017b9)
  store %struct.Memory* %call_4017b9, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rbp), %rax	 RIP: 4017be	 Bytes: 4
  %loadMem_4017be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017be = call %struct.Memory* @routine_movq_0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017be)
  store %struct.Memory* %call_4017be, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 4017c2	 Bytes: 4
  %loadMem_4017c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017c2 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017c2)
  store %struct.Memory* %call_4017c2, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 4017c6	 Bytes: 7
  %loadMem_4017c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017c6 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017c6)
  store %struct.Memory* %call_4017c6, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4017cd	 Bytes: 3
  %loadMem_4017cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017cd = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017cd)
  store %struct.Memory* %call_4017cd, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 4017d0	 Bytes: 4
  %loadMem_4017d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017d0 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017d0)
  store %struct.Memory* %call_4017d0, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4017d4	 Bytes: 7
  %loadMem_4017d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017d4 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017d4)
  store %struct.Memory* %call_4017d4, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4017db	 Bytes: 3
  %loadMem_4017db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017db = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017db)
  store %struct.Memory* %call_4017db, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 4017de	 Bytes: 4
  %loadMem_4017de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017de = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017de)
  store %struct.Memory* %call_4017de, %struct.Memory** %MEMORY

  ; Code: subsd (%rax,%rcx,8), %xmm0	 RIP: 4017e2	 Bytes: 5
  %loadMem_4017e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017e2 = call %struct.Memory* @routine_subsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017e2)
  store %struct.Memory* %call_4017e2, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rax	 RIP: 4017e7	 Bytes: 4
  %loadMem_4017e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017e7 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017e7)
  store %struct.Memory* %call_4017e7, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 4017eb	 Bytes: 4
  %loadMem_4017eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017eb = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017eb)
  store %struct.Memory* %call_4017eb, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4017ef	 Bytes: 7
  %loadMem_4017ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017ef = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017ef)
  store %struct.Memory* %call_4017ef, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4017f6	 Bytes: 3
  %loadMem_4017f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017f6 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017f6)
  store %struct.Memory* %call_4017f6, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 4017f9	 Bytes: 4
  %loadMem_4017f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017f9 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017f9)
  store %struct.Memory* %call_4017f9, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 4017fd	 Bytes: 5
  %loadMem_4017fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017fd = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017fd)
  store %struct.Memory* %call_4017fd, %struct.Memory** %MEMORY

  ; Code: movq 0x58(%rbp), %rax	 RIP: 401802	 Bytes: 4
  %loadMem_401802 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401802 = call %struct.Memory* @routine_movq_0x58__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401802)
  store %struct.Memory* %call_401802, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 401806	 Bytes: 4
  %loadMem_401806 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401806 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401806)
  store %struct.Memory* %call_401806, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 40180a	 Bytes: 5
  %loadMem_40180a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40180a = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40180a)
  store %struct.Memory* %call_40180a, %struct.Memory** %MEMORY

  ; Code: movq 0x60(%rbp), %rax	 RIP: 40180f	 Bytes: 4
  %loadMem_40180f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40180f = call %struct.Memory* @routine_movq_0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40180f)
  store %struct.Memory* %call_40180f, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 401813	 Bytes: 4
  %loadMem_401813 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401813 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401813)
  store %struct.Memory* %call_401813, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm0	 RIP: 401817	 Bytes: 5
  %loadMem_401817 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401817 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401817)
  store %struct.Memory* %call_401817, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rbp), %rax	 RIP: 40181c	 Bytes: 4
  %loadMem_40181c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40181c = call %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40181c)
  store %struct.Memory* %call_40181c, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 401820	 Bytes: 4
  %loadMem_401820 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401820 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401820)
  store %struct.Memory* %call_401820, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 401824	 Bytes: 7
  %loadMem_401824 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401824 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401824)
  store %struct.Memory* %call_401824, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40182b	 Bytes: 3
  %loadMem_40182b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40182b = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40182b)
  store %struct.Memory* %call_40182b, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 40182e	 Bytes: 4
  %loadMem_40182e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40182e = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40182e)
  store %struct.Memory* %call_40182e, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401832	 Bytes: 7
  %loadMem_401832 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401832 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401832)
  store %struct.Memory* %call_401832, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401839	 Bytes: 3
  %loadMem_401839 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401839 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401839)
  store %struct.Memory* %call_401839, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 40183c	 Bytes: 4
  %loadMem_40183c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40183c = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40183c)
  store %struct.Memory* %call_40183c, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm0	 RIP: 401840	 Bytes: 5
  %loadMem_401840 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401840 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401840)
  store %struct.Memory* %call_401840, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm1	 RIP: 401845	 Bytes: 5
  %loadMem_401845 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401845 = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401845)
  store %struct.Memory* %call_401845, %struct.Memory** %MEMORY

  ; Code: movq 0x60(%rbp), %rax	 RIP: 40184a	 Bytes: 4
  %loadMem_40184a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40184a = call %struct.Memory* @routine_movq_0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40184a)
  store %struct.Memory* %call_40184a, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 40184e	 Bytes: 4
  %loadMem_40184e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40184e = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40184e)
  store %struct.Memory* %call_40184e, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 401852	 Bytes: 5
  %loadMem_401852 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401852 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401852)
  store %struct.Memory* %call_401852, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rax	 RIP: 401857	 Bytes: 4
  %loadMem_401857 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401857 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401857)
  store %struct.Memory* %call_401857, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 40185b	 Bytes: 4
  %loadMem_40185b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40185b = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40185b)
  store %struct.Memory* %call_40185b, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 40185f	 Bytes: 7
  %loadMem_40185f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40185f = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40185f)
  store %struct.Memory* %call_40185f, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401866	 Bytes: 3
  %loadMem_401866 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401866 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401866)
  store %struct.Memory* %call_401866, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 401869	 Bytes: 4
  %loadMem_401869 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401869 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401869)
  store %struct.Memory* %call_401869, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 40186d	 Bytes: 5
  %loadMem_40186d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40186d = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40186d)
  store %struct.Memory* %call_40186d, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 401872	 Bytes: 4
  %loadMem_401872 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401872 = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401872)
  store %struct.Memory* %call_401872, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rbp), %rax	 RIP: 401876	 Bytes: 4
  %loadMem_401876 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401876 = call %struct.Memory* @routine_movq_0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401876)
  store %struct.Memory* %call_401876, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 40187a	 Bytes: 4
  %loadMem_40187a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40187a = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40187a)
  store %struct.Memory* %call_40187a, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 40187e	 Bytes: 7
  %loadMem_40187e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40187e = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40187e)
  store %struct.Memory* %call_40187e, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401885	 Bytes: 3
  %loadMem_401885 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401885 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401885)
  store %struct.Memory* %call_401885, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 401888	 Bytes: 4
  %loadMem_401888 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401888 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401888)
  store %struct.Memory* %call_401888, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 40188c	 Bytes: 5
  %loadMem_40188c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40188c = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40188c)
  store %struct.Memory* %call_40188c, %struct.Memory** %MEMORY

  ; Code: movq 0x48(%rbp), %rax	 RIP: 401891	 Bytes: 4
  %loadMem_401891 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401891 = call %struct.Memory* @routine_movq_0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401891)
  store %struct.Memory* %call_401891, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 401895	 Bytes: 4
  %loadMem_401895 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401895 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401895)
  store %struct.Memory* %call_401895, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 401899	 Bytes: 5
  %loadMem_401899 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401899 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401899)
  store %struct.Memory* %call_401899, %struct.Memory** %MEMORY

  ; Code: movq 0x50(%rbp), %rax	 RIP: 40189e	 Bytes: 4
  %loadMem_40189e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40189e = call %struct.Memory* @routine_movq_0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40189e)
  store %struct.Memory* %call_40189e, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 4018a2	 Bytes: 4
  %loadMem_4018a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018a2 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018a2)
  store %struct.Memory* %call_4018a2, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm0	 RIP: 4018a6	 Bytes: 5
  %loadMem_4018a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018a6 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018a6)
  store %struct.Memory* %call_4018a6, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rbp), %rax	 RIP: 4018ab	 Bytes: 4
  %loadMem_4018ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018ab = call %struct.Memory* @routine_movq_0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018ab)
  store %struct.Memory* %call_4018ab, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 4018af	 Bytes: 4
  %loadMem_4018af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018af = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018af)
  store %struct.Memory* %call_4018af, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 4018b3	 Bytes: 7
  %loadMem_4018b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018b3 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018b3)
  store %struct.Memory* %call_4018b3, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4018ba	 Bytes: 3
  %loadMem_4018ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018ba = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018ba)
  store %struct.Memory* %call_4018ba, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 4018bd	 Bytes: 4
  %loadMem_4018bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018bd = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018bd)
  store %struct.Memory* %call_4018bd, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4018c1	 Bytes: 7
  %loadMem_4018c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018c1 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018c1)
  store %struct.Memory* %call_4018c1, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4018c8	 Bytes: 3
  %loadMem_4018c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018c8 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018c8)
  store %struct.Memory* %call_4018c8, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 4018cb	 Bytes: 4
  %loadMem_4018cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018cb = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018cb)
  store %struct.Memory* %call_4018cb, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm0	 RIP: 4018cf	 Bytes: 5
  %loadMem_4018cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018cf = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018cf)
  store %struct.Memory* %call_4018cf, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm1	 RIP: 4018d4	 Bytes: 5
  %loadMem_4018d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018d4 = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018d4)
  store %struct.Memory* %call_4018d4, %struct.Memory** %MEMORY

  ; Code: movq 0x40(%rbp), %rax	 RIP: 4018d9	 Bytes: 4
  %loadMem_4018d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018d9 = call %struct.Memory* @routine_movq_0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018d9)
  store %struct.Memory* %call_4018d9, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 4018dd	 Bytes: 4
  %loadMem_4018dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018dd = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018dd)
  store %struct.Memory* %call_4018dd, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 4018e1	 Bytes: 5
  %loadMem_4018e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018e1 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018e1)
  store %struct.Memory* %call_4018e1, %struct.Memory** %MEMORY

  ; Code: movq 0x50(%rbp), %rax	 RIP: 4018e6	 Bytes: 4
  %loadMem_4018e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018e6 = call %struct.Memory* @routine_movq_0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018e6)
  store %struct.Memory* %call_4018e6, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 4018ea	 Bytes: 4
  %loadMem_4018ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018ea = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018ea)
  store %struct.Memory* %call_4018ea, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 4018ee	 Bytes: 5
  %loadMem_4018ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018ee = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018ee)
  store %struct.Memory* %call_4018ee, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rbp), %rax	 RIP: 4018f3	 Bytes: 4
  %loadMem_4018f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018f3 = call %struct.Memory* @routine_movq_0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018f3)
  store %struct.Memory* %call_4018f3, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 4018f7	 Bytes: 4
  %loadMem_4018f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018f7 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018f7)
  store %struct.Memory* %call_4018f7, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4018fb	 Bytes: 7
  %loadMem_4018fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018fb = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018fb)
  store %struct.Memory* %call_4018fb, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401902	 Bytes: 3
  %loadMem_401902 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401902 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401902)
  store %struct.Memory* %call_401902, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 401905	 Bytes: 4
  %loadMem_401905 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401905 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401905)
  store %struct.Memory* %call_401905, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 401909	 Bytes: 5
  %loadMem_401909 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401909 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401909)
  store %struct.Memory* %call_401909, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 40190e	 Bytes: 4
  %loadMem_40190e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40190e = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40190e)
  store %struct.Memory* %call_40190e, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm1	 RIP: 401912	 Bytes: 5
  %loadMem_401912 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401912 = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401912)
  store %struct.Memory* %call_401912, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rbp), %rax	 RIP: 401917	 Bytes: 4
  %loadMem_401917 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401917 = call %struct.Memory* @routine_movq_0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401917)
  store %struct.Memory* %call_401917, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 40191b	 Bytes: 4
  %loadMem_40191b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40191b = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40191b)
  store %struct.Memory* %call_40191b, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 40191f	 Bytes: 5
  %loadMem_40191f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40191f = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40191f)
  store %struct.Memory* %call_40191f, %struct.Memory** %MEMORY

  ; Code: movq 0x50(%rbp), %rax	 RIP: 401924	 Bytes: 4
  %loadMem_401924 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401924 = call %struct.Memory* @routine_movq_0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401924)
  store %struct.Memory* %call_401924, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 401928	 Bytes: 4
  %loadMem_401928 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401928 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401928)
  store %struct.Memory* %call_401928, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 40192c	 Bytes: 5
  %loadMem_40192c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40192c = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40192c)
  store %struct.Memory* %call_40192c, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rbp), %rax	 RIP: 401931	 Bytes: 4
  %loadMem_401931 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401931 = call %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401931)
  store %struct.Memory* %call_401931, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 401935	 Bytes: 4
  %loadMem_401935 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401935 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401935)
  store %struct.Memory* %call_401935, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 401939	 Bytes: 7
  %loadMem_401939 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401939 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401939)
  store %struct.Memory* %call_401939, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401940	 Bytes: 3
  %loadMem_401940 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401940 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401940)
  store %struct.Memory* %call_401940, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 401943	 Bytes: 4
  %loadMem_401943 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401943 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401943)
  store %struct.Memory* %call_401943, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401947	 Bytes: 7
  %loadMem_401947 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401947 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401947)
  store %struct.Memory* %call_401947, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40194e	 Bytes: 3
  %loadMem_40194e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40194e = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40194e)
  store %struct.Memory* %call_40194e, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 401951	 Bytes: 4
  %loadMem_401951 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401951 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401951)
  store %struct.Memory* %call_401951, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 401955	 Bytes: 5
  %loadMem_401955 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401955 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401955)
  store %struct.Memory* %call_401955, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 40195a	 Bytes: 4
  %loadMem_40195a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40195a = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40195a)
  store %struct.Memory* %call_40195a, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rbp), %rax	 RIP: 40195e	 Bytes: 4
  %loadMem_40195e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40195e = call %struct.Memory* @routine_movq_0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40195e)
  store %struct.Memory* %call_40195e, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 401962	 Bytes: 4
  %loadMem_401962 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401962 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401962)
  store %struct.Memory* %call_401962, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 401966	 Bytes: 7
  %loadMem_401966 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401966 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401966)
  store %struct.Memory* %call_401966, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40196d	 Bytes: 3
  %loadMem_40196d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40196d = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40196d)
  store %struct.Memory* %call_40196d, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 401970	 Bytes: 4
  %loadMem_401970 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401970 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401970)
  store %struct.Memory* %call_401970, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401974	 Bytes: 7
  %loadMem_401974 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401974 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401974)
  store %struct.Memory* %call_401974, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40197b	 Bytes: 3
  %loadMem_40197b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40197b = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40197b)
  store %struct.Memory* %call_40197b, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 40197e	 Bytes: 4
  %loadMem_40197e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40197e = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40197e)
  store %struct.Memory* %call_40197e, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 401982	 Bytes: 5
  %loadMem_401982 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401982 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401982)
  store %struct.Memory* %call_401982, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rbp), %rax	 RIP: 401987	 Bytes: 4
  %loadMem_401987 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401987 = call %struct.Memory* @routine_movq_0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401987)
  store %struct.Memory* %call_401987, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 40198b	 Bytes: 4
  %loadMem_40198b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40198b = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40198b)
  store %struct.Memory* %call_40198b, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 40198f	 Bytes: 7
  %loadMem_40198f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40198f = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40198f)
  store %struct.Memory* %call_40198f, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401996	 Bytes: 3
  %loadMem_401996 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401996 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401996)
  store %struct.Memory* %call_401996, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 401999	 Bytes: 4
  %loadMem_401999 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401999 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401999)
  store %struct.Memory* %call_401999, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 40199d	 Bytes: 5
  %loadMem_40199d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40199d = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40199d)
  store %struct.Memory* %call_40199d, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rbp), %rax	 RIP: 4019a2	 Bytes: 4
  %loadMem_4019a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019a2 = call %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019a2)
  store %struct.Memory* %call_4019a2, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 4019a6	 Bytes: 4
  %loadMem_4019a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019a6 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019a6)
  store %struct.Memory* %call_4019a6, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 4019aa	 Bytes: 7
  %loadMem_4019aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019aa = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019aa)
  store %struct.Memory* %call_4019aa, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4019b1	 Bytes: 3
  %loadMem_4019b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019b1 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019b1)
  store %struct.Memory* %call_4019b1, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 4019b4	 Bytes: 4
  %loadMem_4019b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019b4 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019b4)
  store %struct.Memory* %call_4019b4, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4019b8	 Bytes: 7
  %loadMem_4019b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019b8 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019b8)
  store %struct.Memory* %call_4019b8, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4019bf	 Bytes: 3
  %loadMem_4019bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019bf = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019bf)
  store %struct.Memory* %call_4019bf, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 4019c2	 Bytes: 4
  %loadMem_4019c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019c2 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019c2)
  store %struct.Memory* %call_4019c2, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 4019c6	 Bytes: 5
  %loadMem_4019c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019c6 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019c6)
  store %struct.Memory* %call_4019c6, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x6c(%rbp)	 RIP: 4019cb	 Bytes: 7
  %loadMem_4019cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019cb = call %struct.Memory* @routine_movl__0x0__MINUS0x6c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019cb)
  store %struct.Memory* %call_4019cb, %struct.Memory** %MEMORY

  ; Code: .L_4019d2:	 RIP: 4019d2	 Bytes: 0
  br label %block_.L_4019d2
block_.L_4019d2:

  ; Code: movl -0x6c(%rbp), %eax	 RIP: 4019d2	 Bytes: 3
  %loadMem_4019d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019d2 = call %struct.Memory* @routine_movl_MINUS0x6c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019d2)
  store %struct.Memory* %call_4019d2, %struct.Memory** %MEMORY

  ; Code: cmpl -0x30(%rbp), %eax	 RIP: 4019d5	 Bytes: 3
  %loadMem_4019d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019d5 = call %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019d5)
  store %struct.Memory* %call_4019d5, %struct.Memory** %MEMORY

  ; Code: jge .L_401c6b	 RIP: 4019d8	 Bytes: 6
  %loadMem_4019d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019d8 = call %struct.Memory* @routine_jge_.L_401c6b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019d8, i8* %BRANCH_TAKEN, i64 659, i64 6, i64 6)
  store %struct.Memory* %call_4019d8, %struct.Memory** %MEMORY

  %loadBr_4019d8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4019d8 = icmp eq i8 %loadBr_4019d8, 1
  br i1 %cmpBr_4019d8, label %block_.L_401c6b, label %block_4019de

block_4019de:
  ; Code: movq 0x20(%rbp), %rax	 RIP: 4019de	 Bytes: 4
  %loadMem_4019de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019de = call %struct.Memory* @routine_movq_0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019de)
  store %struct.Memory* %call_4019de, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 4019e2	 Bytes: 4
  %loadMem_4019e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019e2 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019e2)
  store %struct.Memory* %call_4019e2, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 4019e6	 Bytes: 7
  %loadMem_4019e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019e6 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019e6)
  store %struct.Memory* %call_4019e6, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4019ed	 Bytes: 3
  %loadMem_4019ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019ed = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019ed)
  store %struct.Memory* %call_4019ed, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 4019f0	 Bytes: 4
  %loadMem_4019f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019f0 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019f0)
  store %struct.Memory* %call_4019f0, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4019f4	 Bytes: 7
  %loadMem_4019f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019f4 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019f4)
  store %struct.Memory* %call_4019f4, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4019fb	 Bytes: 3
  %loadMem_4019fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019fb = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019fb)
  store %struct.Memory* %call_4019fb, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rcx	 RIP: 4019fe	 Bytes: 4
  %loadMem_4019fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019fe = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019fe)
  store %struct.Memory* %call_4019fe, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 401a02	 Bytes: 5
  %loadMem_401a02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a02 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a02)
  store %struct.Memory* %call_401a02, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rax	 RIP: 401a07	 Bytes: 4
  %loadMem_401a07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a07 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a07)
  store %struct.Memory* %call_401a07, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 401a0b	 Bytes: 4
  %loadMem_401a0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a0b = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a0b)
  store %struct.Memory* %call_401a0b, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401a0f	 Bytes: 7
  %loadMem_401a0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a0f = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a0f)
  store %struct.Memory* %call_401a0f, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401a16	 Bytes: 3
  %loadMem_401a16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a16 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a16)
  store %struct.Memory* %call_401a16, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rcx	 RIP: 401a19	 Bytes: 4
  %loadMem_401a19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a19 = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a19)
  store %struct.Memory* %call_401a19, %struct.Memory** %MEMORY

  ; Code: subsd (%rax,%rcx,8), %xmm0	 RIP: 401a1d	 Bytes: 5
  %loadMem_401a1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a1d = call %struct.Memory* @routine_subsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a1d)
  store %struct.Memory* %call_401a1d, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rbp), %rax	 RIP: 401a22	 Bytes: 4
  %loadMem_401a22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a22 = call %struct.Memory* @routine_movq_0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a22)
  store %struct.Memory* %call_401a22, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 401a26	 Bytes: 4
  %loadMem_401a26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a26 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a26)
  store %struct.Memory* %call_401a26, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 401a2a	 Bytes: 7
  %loadMem_401a2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a2a = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a2a)
  store %struct.Memory* %call_401a2a, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401a31	 Bytes: 3
  %loadMem_401a31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a31 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a31)
  store %struct.Memory* %call_401a31, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 401a34	 Bytes: 4
  %loadMem_401a34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a34 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a34)
  store %struct.Memory* %call_401a34, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401a38	 Bytes: 7
  %loadMem_401a38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a38 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a38)
  store %struct.Memory* %call_401a38, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401a3f	 Bytes: 3
  %loadMem_401a3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a3f = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a3f)
  store %struct.Memory* %call_401a3f, %struct.Memory** %MEMORY

  ; Code: movl -0x6c(%rbp), %edx	 RIP: 401a42	 Bytes: 3
  %loadMem_401a42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a42 = call %struct.Memory* @routine_movl_MINUS0x6c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a42)
  store %struct.Memory* %call_401a42, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 401a45	 Bytes: 3
  %loadMem_401a45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a45 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a45)
  store %struct.Memory* %call_401a45, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 401a48	 Bytes: 3
  %loadMem_401a48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a48 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a48)
  store %struct.Memory* %call_401a48, %struct.Memory** %MEMORY

  ; Code: addsd (%rax,%rcx,8), %xmm0	 RIP: 401a4b	 Bytes: 5
  %loadMem_401a4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a4b = call %struct.Memory* @routine_addsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a4b)
  store %struct.Memory* %call_401a4b, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rbp), %rax	 RIP: 401a50	 Bytes: 4
  %loadMem_401a50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a50 = call %struct.Memory* @routine_movq_0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a50)
  store %struct.Memory* %call_401a50, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 401a54	 Bytes: 4
  %loadMem_401a54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a54 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a54)
  store %struct.Memory* %call_401a54, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 401a58	 Bytes: 7
  %loadMem_401a58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a58 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a58)
  store %struct.Memory* %call_401a58, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401a5f	 Bytes: 3
  %loadMem_401a5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a5f = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a5f)
  store %struct.Memory* %call_401a5f, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 401a62	 Bytes: 4
  %loadMem_401a62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a62 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a62)
  store %struct.Memory* %call_401a62, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401a66	 Bytes: 7
  %loadMem_401a66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a66 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a66)
  store %struct.Memory* %call_401a66, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401a6d	 Bytes: 3
  %loadMem_401a6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a6d = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a6d)
  store %struct.Memory* %call_401a6d, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rcx	 RIP: 401a70	 Bytes: 4
  %loadMem_401a70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a70 = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a70)
  store %struct.Memory* %call_401a70, %struct.Memory** %MEMORY

  ; Code: subsd (%rax,%rcx,8), %xmm0	 RIP: 401a74	 Bytes: 5
  %loadMem_401a74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a74 = call %struct.Memory* @routine_subsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a74)
  store %struct.Memory* %call_401a74, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rax	 RIP: 401a79	 Bytes: 4
  %loadMem_401a79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a79 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a79)
  store %struct.Memory* %call_401a79, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 401a7d	 Bytes: 4
  %loadMem_401a7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a7d = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a7d)
  store %struct.Memory* %call_401a7d, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401a81	 Bytes: 7
  %loadMem_401a81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a81 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a81)
  store %struct.Memory* %call_401a81, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401a88	 Bytes: 3
  %loadMem_401a88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a88 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a88)
  store %struct.Memory* %call_401a88, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 401a8b	 Bytes: 4
  %loadMem_401a8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a8b = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a8b)
  store %struct.Memory* %call_401a8b, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 401a8f	 Bytes: 5
  %loadMem_401a8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a8f = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a8f)
  store %struct.Memory* %call_401a8f, %struct.Memory** %MEMORY

  ; Code: movq 0x58(%rbp), %rax	 RIP: 401a94	 Bytes: 4
  %loadMem_401a94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a94 = call %struct.Memory* @routine_movq_0x58__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a94)
  store %struct.Memory* %call_401a94, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 401a98	 Bytes: 4
  %loadMem_401a98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a98 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a98)
  store %struct.Memory* %call_401a98, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 401a9c	 Bytes: 5
  %loadMem_401a9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a9c = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a9c)
  store %struct.Memory* %call_401a9c, %struct.Memory** %MEMORY

  ; Code: movq 0x60(%rbp), %rax	 RIP: 401aa1	 Bytes: 4
  %loadMem_401aa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401aa1 = call %struct.Memory* @routine_movq_0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401aa1)
  store %struct.Memory* %call_401aa1, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 401aa5	 Bytes: 4
  %loadMem_401aa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401aa5 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401aa5)
  store %struct.Memory* %call_401aa5, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm0	 RIP: 401aa9	 Bytes: 5
  %loadMem_401aa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401aa9 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401aa9)
  store %struct.Memory* %call_401aa9, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rbp), %rax	 RIP: 401aae	 Bytes: 4
  %loadMem_401aae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401aae = call %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401aae)
  store %struct.Memory* %call_401aae, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 401ab2	 Bytes: 4
  %loadMem_401ab2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ab2 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ab2)
  store %struct.Memory* %call_401ab2, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 401ab6	 Bytes: 7
  %loadMem_401ab6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ab6 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ab6)
  store %struct.Memory* %call_401ab6, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401abd	 Bytes: 3
  %loadMem_401abd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401abd = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401abd)
  store %struct.Memory* %call_401abd, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 401ac0	 Bytes: 4
  %loadMem_401ac0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ac0 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ac0)
  store %struct.Memory* %call_401ac0, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401ac4	 Bytes: 7
  %loadMem_401ac4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ac4 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ac4)
  store %struct.Memory* %call_401ac4, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401acb	 Bytes: 3
  %loadMem_401acb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401acb = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401acb)
  store %struct.Memory* %call_401acb, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rcx	 RIP: 401ace	 Bytes: 4
  %loadMem_401ace = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ace = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ace)
  store %struct.Memory* %call_401ace, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm0	 RIP: 401ad2	 Bytes: 5
  %loadMem_401ad2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ad2 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ad2)
  store %struct.Memory* %call_401ad2, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm1	 RIP: 401ad7	 Bytes: 5
  %loadMem_401ad7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ad7 = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ad7)
  store %struct.Memory* %call_401ad7, %struct.Memory** %MEMORY

  ; Code: movq 0x60(%rbp), %rax	 RIP: 401adc	 Bytes: 4
  %loadMem_401adc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401adc = call %struct.Memory* @routine_movq_0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401adc)
  store %struct.Memory* %call_401adc, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 401ae0	 Bytes: 4
  %loadMem_401ae0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ae0 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ae0)
  store %struct.Memory* %call_401ae0, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 401ae4	 Bytes: 5
  %loadMem_401ae4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ae4 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ae4)
  store %struct.Memory* %call_401ae4, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rax	 RIP: 401ae9	 Bytes: 4
  %loadMem_401ae9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ae9 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ae9)
  store %struct.Memory* %call_401ae9, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 401aed	 Bytes: 4
  %loadMem_401aed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401aed = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401aed)
  store %struct.Memory* %call_401aed, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401af1	 Bytes: 7
  %loadMem_401af1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401af1 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401af1)
  store %struct.Memory* %call_401af1, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401af8	 Bytes: 3
  %loadMem_401af8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401af8 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401af8)
  store %struct.Memory* %call_401af8, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 401afb	 Bytes: 4
  %loadMem_401afb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401afb = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401afb)
  store %struct.Memory* %call_401afb, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 401aff	 Bytes: 5
  %loadMem_401aff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401aff = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401aff)
  store %struct.Memory* %call_401aff, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 401b04	 Bytes: 4
  %loadMem_401b04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b04 = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b04)
  store %struct.Memory* %call_401b04, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rbp), %rax	 RIP: 401b08	 Bytes: 4
  %loadMem_401b08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b08 = call %struct.Memory* @routine_movq_0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b08)
  store %struct.Memory* %call_401b08, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 401b0c	 Bytes: 4
  %loadMem_401b0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b0c = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b0c)
  store %struct.Memory* %call_401b0c, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401b10	 Bytes: 7
  %loadMem_401b10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b10 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b10)
  store %struct.Memory* %call_401b10, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401b17	 Bytes: 3
  %loadMem_401b17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b17 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b17)
  store %struct.Memory* %call_401b17, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 401b1a	 Bytes: 4
  %loadMem_401b1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b1a = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b1a)
  store %struct.Memory* %call_401b1a, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 401b1e	 Bytes: 5
  %loadMem_401b1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b1e = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b1e)
  store %struct.Memory* %call_401b1e, %struct.Memory** %MEMORY

  ; Code: movq 0x48(%rbp), %rax	 RIP: 401b23	 Bytes: 4
  %loadMem_401b23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b23 = call %struct.Memory* @routine_movq_0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b23)
  store %struct.Memory* %call_401b23, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rcx	 RIP: 401b27	 Bytes: 4
  %loadMem_401b27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b27 = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b27)
  store %struct.Memory* %call_401b27, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 401b2b	 Bytes: 5
  %loadMem_401b2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b2b = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b2b)
  store %struct.Memory* %call_401b2b, %struct.Memory** %MEMORY

  ; Code: movq 0x50(%rbp), %rax	 RIP: 401b30	 Bytes: 4
  %loadMem_401b30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b30 = call %struct.Memory* @routine_movq_0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b30)
  store %struct.Memory* %call_401b30, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rcx	 RIP: 401b34	 Bytes: 4
  %loadMem_401b34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b34 = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b34)
  store %struct.Memory* %call_401b34, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm0	 RIP: 401b38	 Bytes: 5
  %loadMem_401b38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b38 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b38)
  store %struct.Memory* %call_401b38, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rbp), %rax	 RIP: 401b3d	 Bytes: 4
  %loadMem_401b3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b3d = call %struct.Memory* @routine_movq_0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b3d)
  store %struct.Memory* %call_401b3d, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 401b41	 Bytes: 4
  %loadMem_401b41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b41 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b41)
  store %struct.Memory* %call_401b41, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 401b45	 Bytes: 7
  %loadMem_401b45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b45 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b45)
  store %struct.Memory* %call_401b45, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401b4c	 Bytes: 3
  %loadMem_401b4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b4c = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b4c)
  store %struct.Memory* %call_401b4c, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 401b4f	 Bytes: 4
  %loadMem_401b4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b4f = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b4f)
  store %struct.Memory* %call_401b4f, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401b53	 Bytes: 7
  %loadMem_401b53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b53 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b53)
  store %struct.Memory* %call_401b53, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401b5a	 Bytes: 3
  %loadMem_401b5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b5a = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b5a)
  store %struct.Memory* %call_401b5a, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rcx	 RIP: 401b5d	 Bytes: 4
  %loadMem_401b5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b5d = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b5d)
  store %struct.Memory* %call_401b5d, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm0	 RIP: 401b61	 Bytes: 5
  %loadMem_401b61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b61 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b61)
  store %struct.Memory* %call_401b61, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm1	 RIP: 401b66	 Bytes: 5
  %loadMem_401b66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b66 = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b66)
  store %struct.Memory* %call_401b66, %struct.Memory** %MEMORY

  ; Code: movq 0x40(%rbp), %rax	 RIP: 401b6b	 Bytes: 4
  %loadMem_401b6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b6b = call %struct.Memory* @routine_movq_0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b6b)
  store %struct.Memory* %call_401b6b, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 401b6f	 Bytes: 4
  %loadMem_401b6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b6f = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b6f)
  store %struct.Memory* %call_401b6f, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 401b73	 Bytes: 5
  %loadMem_401b73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b73 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b73)
  store %struct.Memory* %call_401b73, %struct.Memory** %MEMORY

  ; Code: movq 0x50(%rbp), %rax	 RIP: 401b78	 Bytes: 4
  %loadMem_401b78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b78 = call %struct.Memory* @routine_movq_0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b78)
  store %struct.Memory* %call_401b78, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rcx	 RIP: 401b7c	 Bytes: 4
  %loadMem_401b7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b7c = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b7c)
  store %struct.Memory* %call_401b7c, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 401b80	 Bytes: 5
  %loadMem_401b80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b80 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b80)
  store %struct.Memory* %call_401b80, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rbp), %rax	 RIP: 401b85	 Bytes: 4
  %loadMem_401b85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b85 = call %struct.Memory* @routine_movq_0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b85)
  store %struct.Memory* %call_401b85, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 401b89	 Bytes: 4
  %loadMem_401b89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b89 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b89)
  store %struct.Memory* %call_401b89, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401b8d	 Bytes: 7
  %loadMem_401b8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b8d = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b8d)
  store %struct.Memory* %call_401b8d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401b94	 Bytes: 3
  %loadMem_401b94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b94 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b94)
  store %struct.Memory* %call_401b94, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 401b97	 Bytes: 4
  %loadMem_401b97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b97 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b97)
  store %struct.Memory* %call_401b97, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 401b9b	 Bytes: 5
  %loadMem_401b9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b9b = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b9b)
  store %struct.Memory* %call_401b9b, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 401ba0	 Bytes: 4
  %loadMem_401ba0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ba0 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ba0)
  store %struct.Memory* %call_401ba0, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm1	 RIP: 401ba4	 Bytes: 5
  %loadMem_401ba4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ba4 = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ba4)
  store %struct.Memory* %call_401ba4, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rbp), %rax	 RIP: 401ba9	 Bytes: 4
  %loadMem_401ba9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ba9 = call %struct.Memory* @routine_movq_0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ba9)
  store %struct.Memory* %call_401ba9, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 401bad	 Bytes: 4
  %loadMem_401bad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bad = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bad)
  store %struct.Memory* %call_401bad, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 401bb1	 Bytes: 5
  %loadMem_401bb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bb1 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bb1)
  store %struct.Memory* %call_401bb1, %struct.Memory** %MEMORY

  ; Code: movq 0x50(%rbp), %rax	 RIP: 401bb6	 Bytes: 4
  %loadMem_401bb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bb6 = call %struct.Memory* @routine_movq_0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bb6)
  store %struct.Memory* %call_401bb6, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rcx	 RIP: 401bba	 Bytes: 4
  %loadMem_401bba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bba = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bba)
  store %struct.Memory* %call_401bba, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 401bbe	 Bytes: 5
  %loadMem_401bbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bbe = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bbe)
  store %struct.Memory* %call_401bbe, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rbp), %rax	 RIP: 401bc3	 Bytes: 4
  %loadMem_401bc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bc3 = call %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bc3)
  store %struct.Memory* %call_401bc3, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 401bc7	 Bytes: 4
  %loadMem_401bc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bc7 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bc7)
  store %struct.Memory* %call_401bc7, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 401bcb	 Bytes: 7
  %loadMem_401bcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bcb = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bcb)
  store %struct.Memory* %call_401bcb, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401bd2	 Bytes: 3
  %loadMem_401bd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bd2 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bd2)
  store %struct.Memory* %call_401bd2, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 401bd5	 Bytes: 4
  %loadMem_401bd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bd5 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bd5)
  store %struct.Memory* %call_401bd5, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401bd9	 Bytes: 7
  %loadMem_401bd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bd9 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bd9)
  store %struct.Memory* %call_401bd9, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401be0	 Bytes: 3
  %loadMem_401be0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401be0 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401be0)
  store %struct.Memory* %call_401be0, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rcx	 RIP: 401be3	 Bytes: 4
  %loadMem_401be3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401be3 = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401be3)
  store %struct.Memory* %call_401be3, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 401be7	 Bytes: 5
  %loadMem_401be7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401be7 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401be7)
  store %struct.Memory* %call_401be7, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 401bec	 Bytes: 4
  %loadMem_401bec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bec = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bec)
  store %struct.Memory* %call_401bec, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rbp), %rax	 RIP: 401bf0	 Bytes: 4
  %loadMem_401bf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bf0 = call %struct.Memory* @routine_movq_0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bf0)
  store %struct.Memory* %call_401bf0, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 401bf4	 Bytes: 4
  %loadMem_401bf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bf4 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bf4)
  store %struct.Memory* %call_401bf4, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 401bf8	 Bytes: 7
  %loadMem_401bf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bf8 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bf8)
  store %struct.Memory* %call_401bf8, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401bff	 Bytes: 3
  %loadMem_401bff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bff = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bff)
  store %struct.Memory* %call_401bff, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 401c02	 Bytes: 4
  %loadMem_401c02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c02 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c02)
  store %struct.Memory* %call_401c02, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401c06	 Bytes: 7
  %loadMem_401c06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c06 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c06)
  store %struct.Memory* %call_401c06, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401c0d	 Bytes: 3
  %loadMem_401c0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c0d = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c0d)
  store %struct.Memory* %call_401c0d, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rcx	 RIP: 401c10	 Bytes: 4
  %loadMem_401c10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c10 = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c10)
  store %struct.Memory* %call_401c10, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 401c14	 Bytes: 5
  %loadMem_401c14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c14 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c14)
  store %struct.Memory* %call_401c14, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rbp), %rax	 RIP: 401c19	 Bytes: 4
  %loadMem_401c19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c19 = call %struct.Memory* @routine_movq_0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c19)
  store %struct.Memory* %call_401c19, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 401c1d	 Bytes: 4
  %loadMem_401c1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c1d = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c1d)
  store %struct.Memory* %call_401c1d, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401c21	 Bytes: 7
  %loadMem_401c21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c21 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c21)
  store %struct.Memory* %call_401c21, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401c28	 Bytes: 3
  %loadMem_401c28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c28 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c28)
  store %struct.Memory* %call_401c28, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 401c2b	 Bytes: 4
  %loadMem_401c2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c2b = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c2b)
  store %struct.Memory* %call_401c2b, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 401c2f	 Bytes: 5
  %loadMem_401c2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c2f = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c2f)
  store %struct.Memory* %call_401c2f, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rbp), %rax	 RIP: 401c34	 Bytes: 4
  %loadMem_401c34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c34 = call %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c34)
  store %struct.Memory* %call_401c34, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 401c38	 Bytes: 4
  %loadMem_401c38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c38 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c38)
  store %struct.Memory* %call_401c38, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 401c3c	 Bytes: 7
  %loadMem_401c3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c3c = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c3c)
  store %struct.Memory* %call_401c3c, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401c43	 Bytes: 3
  %loadMem_401c43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c43 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c43)
  store %struct.Memory* %call_401c43, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 401c46	 Bytes: 4
  %loadMem_401c46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c46 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c46)
  store %struct.Memory* %call_401c46, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401c4a	 Bytes: 7
  %loadMem_401c4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c4a = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c4a)
  store %struct.Memory* %call_401c4a, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401c51	 Bytes: 3
  %loadMem_401c51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c51 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c51)
  store %struct.Memory* %call_401c51, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rcx	 RIP: 401c54	 Bytes: 4
  %loadMem_401c54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c54 = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c54)
  store %struct.Memory* %call_401c54, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 401c58	 Bytes: 5
  %loadMem_401c58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c58 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c58)
  store %struct.Memory* %call_401c58, %struct.Memory** %MEMORY

  ; Code: movl -0x6c(%rbp), %eax	 RIP: 401c5d	 Bytes: 3
  %loadMem_401c5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c5d = call %struct.Memory* @routine_movl_MINUS0x6c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c5d)
  store %struct.Memory* %call_401c5d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401c60	 Bytes: 3
  %loadMem_401c60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c60 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c60)
  store %struct.Memory* %call_401c60, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6c(%rbp)	 RIP: 401c63	 Bytes: 3
  %loadMem_401c63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c63 = call %struct.Memory* @routine_movl__eax__MINUS0x6c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c63)
  store %struct.Memory* %call_401c63, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4019d2	 RIP: 401c66	 Bytes: 5
  %loadMem_401c66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c66 = call %struct.Memory* @routine_jmpq_.L_4019d2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c66, i64 -660, i64 5)
  store %struct.Memory* %call_401c66, %struct.Memory** %MEMORY

  br label %block_.L_4019d2

  ; Code: .L_401c6b:	 RIP: 401c6b	 Bytes: 0
block_.L_401c6b:

  ; Code: movq 0x20(%rbp), %rax	 RIP: 401c6b	 Bytes: 4
  %loadMem_401c6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c6b = call %struct.Memory* @routine_movq_0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c6b)
  store %struct.Memory* %call_401c6b, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 401c6f	 Bytes: 4
  %loadMem_401c6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c6f = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c6f)
  store %struct.Memory* %call_401c6f, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 401c73	 Bytes: 7
  %loadMem_401c73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c73 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c73)
  store %struct.Memory* %call_401c73, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401c7a	 Bytes: 3
  %loadMem_401c7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c7a = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c7a)
  store %struct.Memory* %call_401c7a, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 401c7d	 Bytes: 4
  %loadMem_401c7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c7d = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c7d)
  store %struct.Memory* %call_401c7d, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401c81	 Bytes: 7
  %loadMem_401c81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c81 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c81)
  store %struct.Memory* %call_401c81, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401c88	 Bytes: 3
  %loadMem_401c88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c88 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c88)
  store %struct.Memory* %call_401c88, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 401c8b	 Bytes: 4
  %loadMem_401c8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c8b = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c8b)
  store %struct.Memory* %call_401c8b, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 401c8f	 Bytes: 5
  %loadMem_401c8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c8f = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c8f)
  store %struct.Memory* %call_401c8f, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rax	 RIP: 401c94	 Bytes: 4
  %loadMem_401c94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c94 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c94)
  store %struct.Memory* %call_401c94, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 401c98	 Bytes: 4
  %loadMem_401c98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c98 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c98)
  store %struct.Memory* %call_401c98, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401c9c	 Bytes: 7
  %loadMem_401c9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c9c = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c9c)
  store %struct.Memory* %call_401c9c, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401ca3	 Bytes: 3
  %loadMem_401ca3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ca3 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ca3)
  store %struct.Memory* %call_401ca3, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 401ca6	 Bytes: 4
  %loadMem_401ca6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ca6 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ca6)
  store %struct.Memory* %call_401ca6, %struct.Memory** %MEMORY

  ; Code: subsd (%rax,%rcx,8), %xmm0	 RIP: 401caa	 Bytes: 5
  %loadMem_401caa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401caa = call %struct.Memory* @routine_subsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401caa)
  store %struct.Memory* %call_401caa, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rax	 RIP: 401caf	 Bytes: 4
  %loadMem_401caf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401caf = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401caf)
  store %struct.Memory* %call_401caf, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 401cb3	 Bytes: 4
  %loadMem_401cb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cb3 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cb3)
  store %struct.Memory* %call_401cb3, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401cb7	 Bytes: 7
  %loadMem_401cb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cb7 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cb7)
  store %struct.Memory* %call_401cb7, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401cbe	 Bytes: 3
  %loadMem_401cbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cbe = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cbe)
  store %struct.Memory* %call_401cbe, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 401cc1	 Bytes: 4
  %loadMem_401cc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cc1 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cc1)
  store %struct.Memory* %call_401cc1, %struct.Memory** %MEMORY

  ; Code: addsd (%rax,%rcx,8), %xmm0	 RIP: 401cc5	 Bytes: 5
  %loadMem_401cc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cc5 = call %struct.Memory* @routine_addsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cc5)
  store %struct.Memory* %call_401cc5, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rbp), %rax	 RIP: 401cca	 Bytes: 4
  %loadMem_401cca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cca = call %struct.Memory* @routine_movq_0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cca)
  store %struct.Memory* %call_401cca, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 401cce	 Bytes: 4
  %loadMem_401cce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cce = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cce)
  store %struct.Memory* %call_401cce, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 401cd2	 Bytes: 7
  %loadMem_401cd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cd2 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cd2)
  store %struct.Memory* %call_401cd2, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401cd9	 Bytes: 3
  %loadMem_401cd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cd9 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cd9)
  store %struct.Memory* %call_401cd9, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 401cdc	 Bytes: 4
  %loadMem_401cdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cdc = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cdc)
  store %struct.Memory* %call_401cdc, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401ce0	 Bytes: 7
  %loadMem_401ce0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ce0 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ce0)
  store %struct.Memory* %call_401ce0, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401ce7	 Bytes: 3
  %loadMem_401ce7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ce7 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ce7)
  store %struct.Memory* %call_401ce7, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 401cea	 Bytes: 4
  %loadMem_401cea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cea = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cea)
  store %struct.Memory* %call_401cea, %struct.Memory** %MEMORY

  ; Code: subsd (%rax,%rcx,8), %xmm0	 RIP: 401cee	 Bytes: 5
  %loadMem_401cee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cee = call %struct.Memory* @routine_subsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cee)
  store %struct.Memory* %call_401cee, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rax	 RIP: 401cf3	 Bytes: 4
  %loadMem_401cf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cf3 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cf3)
  store %struct.Memory* %call_401cf3, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 401cf7	 Bytes: 4
  %loadMem_401cf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cf7 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cf7)
  store %struct.Memory* %call_401cf7, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401cfb	 Bytes: 7
  %loadMem_401cfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cfb = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cfb)
  store %struct.Memory* %call_401cfb, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401d02	 Bytes: 3
  %loadMem_401d02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d02 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d02)
  store %struct.Memory* %call_401d02, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 401d05	 Bytes: 4
  %loadMem_401d05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d05 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d05)
  store %struct.Memory* %call_401d05, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 401d09	 Bytes: 5
  %loadMem_401d09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d09 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d09)
  store %struct.Memory* %call_401d09, %struct.Memory** %MEMORY

  ; Code: movq 0x58(%rbp), %rax	 RIP: 401d0e	 Bytes: 4
  %loadMem_401d0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d0e = call %struct.Memory* @routine_movq_0x58__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d0e)
  store %struct.Memory* %call_401d0e, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 401d12	 Bytes: 4
  %loadMem_401d12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d12 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d12)
  store %struct.Memory* %call_401d12, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 401d16	 Bytes: 5
  %loadMem_401d16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d16 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d16)
  store %struct.Memory* %call_401d16, %struct.Memory** %MEMORY

  ; Code: movq 0x60(%rbp), %rax	 RIP: 401d1b	 Bytes: 4
  %loadMem_401d1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d1b = call %struct.Memory* @routine_movq_0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d1b)
  store %struct.Memory* %call_401d1b, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 401d1f	 Bytes: 4
  %loadMem_401d1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d1f = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d1f)
  store %struct.Memory* %call_401d1f, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm0	 RIP: 401d23	 Bytes: 5
  %loadMem_401d23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d23 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d23)
  store %struct.Memory* %call_401d23, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rbp), %rax	 RIP: 401d28	 Bytes: 4
  %loadMem_401d28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d28 = call %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d28)
  store %struct.Memory* %call_401d28, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 401d2c	 Bytes: 4
  %loadMem_401d2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d2c = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d2c)
  store %struct.Memory* %call_401d2c, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 401d30	 Bytes: 7
  %loadMem_401d30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d30 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d30)
  store %struct.Memory* %call_401d30, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401d37	 Bytes: 3
  %loadMem_401d37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d37 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d37)
  store %struct.Memory* %call_401d37, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 401d3a	 Bytes: 4
  %loadMem_401d3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d3a = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d3a)
  store %struct.Memory* %call_401d3a, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401d3e	 Bytes: 7
  %loadMem_401d3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d3e = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d3e)
  store %struct.Memory* %call_401d3e, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401d45	 Bytes: 3
  %loadMem_401d45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d45 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d45)
  store %struct.Memory* %call_401d45, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 401d48	 Bytes: 4
  %loadMem_401d48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d48 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d48)
  store %struct.Memory* %call_401d48, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm0	 RIP: 401d4c	 Bytes: 5
  %loadMem_401d4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d4c = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d4c)
  store %struct.Memory* %call_401d4c, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm1	 RIP: 401d51	 Bytes: 5
  %loadMem_401d51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d51 = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d51)
  store %struct.Memory* %call_401d51, %struct.Memory** %MEMORY

  ; Code: movq 0x60(%rbp), %rax	 RIP: 401d56	 Bytes: 4
  %loadMem_401d56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d56 = call %struct.Memory* @routine_movq_0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d56)
  store %struct.Memory* %call_401d56, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 401d5a	 Bytes: 4
  %loadMem_401d5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d5a = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d5a)
  store %struct.Memory* %call_401d5a, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 401d5e	 Bytes: 5
  %loadMem_401d5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d5e = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d5e)
  store %struct.Memory* %call_401d5e, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rax	 RIP: 401d63	 Bytes: 4
  %loadMem_401d63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d63 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d63)
  store %struct.Memory* %call_401d63, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 401d67	 Bytes: 4
  %loadMem_401d67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d67 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d67)
  store %struct.Memory* %call_401d67, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401d6b	 Bytes: 7
  %loadMem_401d6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d6b = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d6b)
  store %struct.Memory* %call_401d6b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401d72	 Bytes: 3
  %loadMem_401d72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d72 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d72)
  store %struct.Memory* %call_401d72, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 401d75	 Bytes: 4
  %loadMem_401d75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d75 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d75)
  store %struct.Memory* %call_401d75, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 401d79	 Bytes: 5
  %loadMem_401d79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d79 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d79)
  store %struct.Memory* %call_401d79, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 401d7e	 Bytes: 4
  %loadMem_401d7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d7e = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d7e)
  store %struct.Memory* %call_401d7e, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rbp), %rax	 RIP: 401d82	 Bytes: 4
  %loadMem_401d82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d82 = call %struct.Memory* @routine_movq_0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d82)
  store %struct.Memory* %call_401d82, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 401d86	 Bytes: 4
  %loadMem_401d86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d86 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d86)
  store %struct.Memory* %call_401d86, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401d8a	 Bytes: 7
  %loadMem_401d8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d8a = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d8a)
  store %struct.Memory* %call_401d8a, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401d91	 Bytes: 3
  %loadMem_401d91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d91 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d91)
  store %struct.Memory* %call_401d91, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 401d94	 Bytes: 4
  %loadMem_401d94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d94 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d94)
  store %struct.Memory* %call_401d94, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 401d98	 Bytes: 5
  %loadMem_401d98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d98 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d98)
  store %struct.Memory* %call_401d98, %struct.Memory** %MEMORY

  ; Code: movq 0x48(%rbp), %rax	 RIP: 401d9d	 Bytes: 4
  %loadMem_401d9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d9d = call %struct.Memory* @routine_movq_0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d9d)
  store %struct.Memory* %call_401d9d, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 401da1	 Bytes: 4
  %loadMem_401da1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401da1 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401da1)
  store %struct.Memory* %call_401da1, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 401da5	 Bytes: 5
  %loadMem_401da5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401da5 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401da5)
  store %struct.Memory* %call_401da5, %struct.Memory** %MEMORY

  ; Code: movq 0x50(%rbp), %rax	 RIP: 401daa	 Bytes: 4
  %loadMem_401daa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401daa = call %struct.Memory* @routine_movq_0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401daa)
  store %struct.Memory* %call_401daa, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 401dae	 Bytes: 4
  %loadMem_401dae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dae = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dae)
  store %struct.Memory* %call_401dae, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm0	 RIP: 401db2	 Bytes: 5
  %loadMem_401db2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401db2 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401db2)
  store %struct.Memory* %call_401db2, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rbp), %rax	 RIP: 401db7	 Bytes: 4
  %loadMem_401db7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401db7 = call %struct.Memory* @routine_movq_0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401db7)
  store %struct.Memory* %call_401db7, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 401dbb	 Bytes: 4
  %loadMem_401dbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dbb = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dbb)
  store %struct.Memory* %call_401dbb, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 401dbf	 Bytes: 7
  %loadMem_401dbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dbf = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dbf)
  store %struct.Memory* %call_401dbf, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401dc6	 Bytes: 3
  %loadMem_401dc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dc6 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dc6)
  store %struct.Memory* %call_401dc6, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 401dc9	 Bytes: 4
  %loadMem_401dc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dc9 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dc9)
  store %struct.Memory* %call_401dc9, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401dcd	 Bytes: 7
  %loadMem_401dcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dcd = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dcd)
  store %struct.Memory* %call_401dcd, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401dd4	 Bytes: 3
  %loadMem_401dd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dd4 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dd4)
  store %struct.Memory* %call_401dd4, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 401dd7	 Bytes: 4
  %loadMem_401dd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dd7 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dd7)
  store %struct.Memory* %call_401dd7, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm0	 RIP: 401ddb	 Bytes: 5
  %loadMem_401ddb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ddb = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ddb)
  store %struct.Memory* %call_401ddb, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm1	 RIP: 401de0	 Bytes: 5
  %loadMem_401de0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401de0 = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401de0)
  store %struct.Memory* %call_401de0, %struct.Memory** %MEMORY

  ; Code: movq 0x40(%rbp), %rax	 RIP: 401de5	 Bytes: 4
  %loadMem_401de5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401de5 = call %struct.Memory* @routine_movq_0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401de5)
  store %struct.Memory* %call_401de5, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 401de9	 Bytes: 4
  %loadMem_401de9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401de9 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401de9)
  store %struct.Memory* %call_401de9, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 401ded	 Bytes: 5
  %loadMem_401ded = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ded = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ded)
  store %struct.Memory* %call_401ded, %struct.Memory** %MEMORY

  ; Code: movq 0x50(%rbp), %rax	 RIP: 401df2	 Bytes: 4
  %loadMem_401df2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401df2 = call %struct.Memory* @routine_movq_0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401df2)
  store %struct.Memory* %call_401df2, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 401df6	 Bytes: 4
  %loadMem_401df6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401df6 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401df6)
  store %struct.Memory* %call_401df6, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 401dfa	 Bytes: 5
  %loadMem_401dfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dfa = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dfa)
  store %struct.Memory* %call_401dfa, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rbp), %rax	 RIP: 401dff	 Bytes: 4
  %loadMem_401dff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dff = call %struct.Memory* @routine_movq_0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dff)
  store %struct.Memory* %call_401dff, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 401e03	 Bytes: 4
  %loadMem_401e03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e03 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e03)
  store %struct.Memory* %call_401e03, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401e07	 Bytes: 7
  %loadMem_401e07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e07 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e07)
  store %struct.Memory* %call_401e07, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401e0e	 Bytes: 3
  %loadMem_401e0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e0e = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e0e)
  store %struct.Memory* %call_401e0e, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 401e11	 Bytes: 4
  %loadMem_401e11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e11 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e11)
  store %struct.Memory* %call_401e11, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 401e15	 Bytes: 5
  %loadMem_401e15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e15 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e15)
  store %struct.Memory* %call_401e15, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 401e1a	 Bytes: 4
  %loadMem_401e1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e1a = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e1a)
  store %struct.Memory* %call_401e1a, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm1	 RIP: 401e1e	 Bytes: 5
  %loadMem_401e1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e1e = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e1e)
  store %struct.Memory* %call_401e1e, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rbp), %rax	 RIP: 401e23	 Bytes: 4
  %loadMem_401e23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e23 = call %struct.Memory* @routine_movq_0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e23)
  store %struct.Memory* %call_401e23, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 401e27	 Bytes: 4
  %loadMem_401e27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e27 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e27)
  store %struct.Memory* %call_401e27, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 401e2b	 Bytes: 5
  %loadMem_401e2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e2b = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e2b)
  store %struct.Memory* %call_401e2b, %struct.Memory** %MEMORY

  ; Code: movq 0x50(%rbp), %rax	 RIP: 401e30	 Bytes: 4
  %loadMem_401e30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e30 = call %struct.Memory* @routine_movq_0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e30)
  store %struct.Memory* %call_401e30, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 401e34	 Bytes: 4
  %loadMem_401e34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e34 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e34)
  store %struct.Memory* %call_401e34, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 401e38	 Bytes: 5
  %loadMem_401e38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e38 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e38)
  store %struct.Memory* %call_401e38, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rbp), %rax	 RIP: 401e3d	 Bytes: 4
  %loadMem_401e3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e3d = call %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e3d)
  store %struct.Memory* %call_401e3d, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 401e41	 Bytes: 4
  %loadMem_401e41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e41 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e41)
  store %struct.Memory* %call_401e41, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 401e45	 Bytes: 7
  %loadMem_401e45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e45 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e45)
  store %struct.Memory* %call_401e45, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401e4c	 Bytes: 3
  %loadMem_401e4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e4c = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e4c)
  store %struct.Memory* %call_401e4c, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 401e4f	 Bytes: 4
  %loadMem_401e4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e4f = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e4f)
  store %struct.Memory* %call_401e4f, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401e53	 Bytes: 7
  %loadMem_401e53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e53 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e53)
  store %struct.Memory* %call_401e53, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401e5a	 Bytes: 3
  %loadMem_401e5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e5a = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e5a)
  store %struct.Memory* %call_401e5a, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 401e5d	 Bytes: 4
  %loadMem_401e5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e5d = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e5d)
  store %struct.Memory* %call_401e5d, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 401e61	 Bytes: 5
  %loadMem_401e61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e61 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e61)
  store %struct.Memory* %call_401e61, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 401e66	 Bytes: 4
  %loadMem_401e66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e66 = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e66)
  store %struct.Memory* %call_401e66, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rbp), %rax	 RIP: 401e6a	 Bytes: 4
  %loadMem_401e6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e6a = call %struct.Memory* @routine_movq_0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e6a)
  store %struct.Memory* %call_401e6a, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 401e6e	 Bytes: 4
  %loadMem_401e6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e6e = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e6e)
  store %struct.Memory* %call_401e6e, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 401e72	 Bytes: 7
  %loadMem_401e72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e72 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e72)
  store %struct.Memory* %call_401e72, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401e79	 Bytes: 3
  %loadMem_401e79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e79 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e79)
  store %struct.Memory* %call_401e79, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 401e7c	 Bytes: 4
  %loadMem_401e7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e7c = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e7c)
  store %struct.Memory* %call_401e7c, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401e80	 Bytes: 7
  %loadMem_401e80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e80 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e80)
  store %struct.Memory* %call_401e80, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401e87	 Bytes: 3
  %loadMem_401e87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e87 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e87)
  store %struct.Memory* %call_401e87, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 401e8a	 Bytes: 4
  %loadMem_401e8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e8a = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e8a)
  store %struct.Memory* %call_401e8a, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 401e8e	 Bytes: 5
  %loadMem_401e8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e8e = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e8e)
  store %struct.Memory* %call_401e8e, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rbp), %rax	 RIP: 401e93	 Bytes: 4
  %loadMem_401e93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e93 = call %struct.Memory* @routine_movq_0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e93)
  store %struct.Memory* %call_401e93, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 401e97	 Bytes: 4
  %loadMem_401e97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e97 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e97)
  store %struct.Memory* %call_401e97, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401e9b	 Bytes: 7
  %loadMem_401e9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e9b = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e9b)
  store %struct.Memory* %call_401e9b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401ea2	 Bytes: 3
  %loadMem_401ea2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ea2 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ea2)
  store %struct.Memory* %call_401ea2, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 401ea5	 Bytes: 4
  %loadMem_401ea5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ea5 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ea5)
  store %struct.Memory* %call_401ea5, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 401ea9	 Bytes: 5
  %loadMem_401ea9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ea9 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ea9)
  store %struct.Memory* %call_401ea9, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rbp), %rax	 RIP: 401eae	 Bytes: 4
  %loadMem_401eae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401eae = call %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401eae)
  store %struct.Memory* %call_401eae, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 401eb2	 Bytes: 4
  %loadMem_401eb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401eb2 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401eb2)
  store %struct.Memory* %call_401eb2, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 401eb6	 Bytes: 7
  %loadMem_401eb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401eb6 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401eb6)
  store %struct.Memory* %call_401eb6, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401ebd	 Bytes: 3
  %loadMem_401ebd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ebd = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ebd)
  store %struct.Memory* %call_401ebd, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 401ec0	 Bytes: 4
  %loadMem_401ec0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ec0 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ec0)
  store %struct.Memory* %call_401ec0, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401ec4	 Bytes: 7
  %loadMem_401ec4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ec4 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ec4)
  store %struct.Memory* %call_401ec4, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401ecb	 Bytes: 3
  %loadMem_401ecb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ecb = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ecb)
  store %struct.Memory* %call_401ecb, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 401ece	 Bytes: 4
  %loadMem_401ece = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ece = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ece)
  store %struct.Memory* %call_401ece, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 401ed2	 Bytes: 5
  %loadMem_401ed2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ed2 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ed2)
  store %struct.Memory* %call_401ed2, %struct.Memory** %MEMORY

  ; Code: movl -0x68(%rbp), %eax	 RIP: 401ed7	 Bytes: 3
  %loadMem_401ed7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ed7 = call %struct.Memory* @routine_movl_MINUS0x68__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ed7)
  store %struct.Memory* %call_401ed7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401eda	 Bytes: 3
  %loadMem_401eda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401eda = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401eda)
  store %struct.Memory* %call_401eda, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x68(%rbp)	 RIP: 401edd	 Bytes: 3
  %loadMem_401edd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401edd = call %struct.Memory* @routine_movl__eax__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401edd)
  store %struct.Memory* %call_401edd, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40148d	 RIP: 401ee0	 Bytes: 5
  %loadMem_401ee0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ee0 = call %struct.Memory* @routine_jmpq_.L_40148d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ee0, i64 -2643, i64 5)
  store %struct.Memory* %call_401ee0, %struct.Memory** %MEMORY

  br label %block_.L_40148d

  ; Code: .L_401ee5:	 RIP: 401ee5	 Bytes: 0
block_.L_401ee5:

  ; Code: jmpq .L_401eea	 RIP: 401ee5	 Bytes: 5
  %loadMem_401ee5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ee5 = call %struct.Memory* @routine_jmpq_.L_401eea(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ee5, i64 5, i64 5)
  store %struct.Memory* %call_401ee5, %struct.Memory** %MEMORY

  br label %block_.L_401eea

  ; Code: .L_401eea:	 RIP: 401eea	 Bytes: 0
block_.L_401eea:

  ; Code: movl -0x64(%rbp), %eax	 RIP: 401eea	 Bytes: 3
  %loadMem_401eea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401eea = call %struct.Memory* @routine_movl_MINUS0x64__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401eea)
  store %struct.Memory* %call_401eea, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401eed	 Bytes: 3
  %loadMem_401eed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401eed = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401eed)
  store %struct.Memory* %call_401eed, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x64(%rbp)	 RIP: 401ef0	 Bytes: 3
  %loadMem_401ef0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ef0 = call %struct.Memory* @routine_movl__eax__MINUS0x64__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ef0)
  store %struct.Memory* %call_401ef0, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40147a	 RIP: 401ef3	 Bytes: 5
  %loadMem_401ef3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ef3 = call %struct.Memory* @routine_jmpq_.L_40147a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ef3, i64 -2681, i64 5)
  store %struct.Memory* %call_401ef3, %struct.Memory** %MEMORY

  br label %block_.L_40147a

  ; Code: .L_401ef8:	 RIP: 401ef8	 Bytes: 0
block_.L_401ef8:

  ; Code: addq $0x20, %rsp	 RIP: 401ef8	 Bytes: 4
  %loadMem_401ef8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ef8 = call %struct.Memory* @routine_addq__0x20___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ef8)
  store %struct.Memory* %call_401ef8, %struct.Memory** %MEMORY

  ; Code: popq %rbx	 RIP: 401efc	 Bytes: 1
  %loadMem_401efc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401efc = call %struct.Memory* @routine_popq__rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401efc)
  store %struct.Memory* %call_401efc, %struct.Memory** %MEMORY

  ; Code: popq %r12	 RIP: 401efd	 Bytes: 2
  %loadMem_401efd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401efd = call %struct.Memory* @routine_popq__r12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401efd)
  store %struct.Memory* %call_401efd, %struct.Memory** %MEMORY

  ; Code: popq %r13	 RIP: 401eff	 Bytes: 2
  %loadMem_401eff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401eff = call %struct.Memory* @routine_popq__r13(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401eff)
  store %struct.Memory* %call_401eff, %struct.Memory** %MEMORY

  ; Code: popq %r14	 RIP: 401f01	 Bytes: 2
  %loadMem_401f01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f01 = call %struct.Memory* @routine_popq__r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f01)
  store %struct.Memory* %call_401f01, %struct.Memory** %MEMORY

  ; Code: popq %r15	 RIP: 401f03	 Bytes: 2
  %loadMem_401f03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f03 = call %struct.Memory* @routine_popq__r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f03)
  store %struct.Memory* %call_401f03, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 401f05	 Bytes: 1
  %loadMem_401f05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f05 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f05)
  store %struct.Memory* %call_401f05, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 401f06	 Bytes: 1
  %loadMem_401f06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f06 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f06)
  store %struct.Memory* %call_401f06, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_401f06
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
block_400478:
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
block_400478:
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


define %struct.Memory* @routine_pushq__r15(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 31
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R15 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R15
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4PUSHI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_pushq__r14(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 29
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R14 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R14
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4PUSHI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_pushq__r13(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 27
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R13 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R13
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4PUSHI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_pushq__r12(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 25
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R12 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R12
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4PUSHI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_pushq__rbx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RBX
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 1
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4PUSHI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %9)
  ret %struct.Memory* %12
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
block_400478:
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq_0x60__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %13 = add i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x58__rbp____r10(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %13 = add i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R10, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x50__rbp____r11(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 23
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R11 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = add i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x48__rbp____rbx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = add i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RBX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x40__rbp____r14(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 29
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R14 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = add i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R14, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x38__rbp____r15(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 31
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R15 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = add i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R15, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x30__rbp____r12(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 25
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R12 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = add i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x28__rbp____r13(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 27
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R13 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = add i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R13, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rax__MINUS0x78__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_0x20__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %13 = add i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax__MINUS0x80__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %13 = add i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax__MINUS0x88__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_0x10__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__edi__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDI = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__esi__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %13 = sub i64 %12, 48
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__edx__MINUS0x34__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %13 = sub i64 %12, 52
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i8* nocapture readonly) #7 {
  %5 = bitcast i8* %3 to double*
  %6 = load double, double* %5, align 1
  %7 = inttoptr i64 %2 to double*
  store double %6, double* %7
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %12 = sub i64 %11, 64
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd__xmm1__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 72
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rcx__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r8__MINUS0x58__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %R8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r9__MINUS0x60__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %R9
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

define %struct.Memory* @routine_movl__0x0__MINUS0x64__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RBP
  %10 = sub i64 %9, 100
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq__r13__MINUS0x90__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 27
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R13 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 144
  %14 = load i64, i64* %R13
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rax__MINUS0x98__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %13 = sub i64 %12, 152
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r10__MINUS0xa0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %13 = sub i64 %12, 160
  %14 = load i64, i64* %R10
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r11__MINUS0xa8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 23
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R11 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 168
  %14 = load i64, i64* %R11
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rbx__MINUS0xb0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 176
  %14 = load i64, i64* %RBX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r14__MINUS0xb8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 29
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R14 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 184
  %14 = load i64, i64* %R14
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r15__MINUS0xc0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 31
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R15 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 192
  %14 = load i64, i64* %R15
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r12__MINUS0xc8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 25
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R12 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 200
  %14 = load i64, i64* %R12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
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

define %struct.Memory* @routine_movl_MINUS0x64__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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

define %struct.Memory* @routine_cmpl_MINUS0x2c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %15 = sub i64 %14, 44
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

define %struct.Memory* @routine_jge_.L_401ef8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
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


define %struct.Memory* @routine_movl__0x0__MINUS0x68__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RBP
  %10 = sub i64 %9, 104
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x68__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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


define %struct.Memory* @routine_cmpl_MINUS0x34__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %15 = sub i64 %14, 52
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_401ee5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
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


define %struct.Memory* @routine_movl__0x0__MINUS0x6c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RBP
  %10 = sub i64 %9, 108
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x6c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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


define %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %15 = sub i64 %14, 48
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_40174c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
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



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %13 = sub i64 %12, 100
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = sext i64 %4 to i128
  %9 = and i128 %8, -18446744073709551616
  %10 = zext i64 %3 to i128
  %11 = or i128 %7, %10
  %12 = zext i64 %4 to i128
  %13 = or i128 %9, %12
  %14 = mul  i128 %13, %11
  %15 = trunc i128 %14 to i64
  store i64 %15, i64* %2, align 8
  %16 = sext i64 %15 to i128
  %17 = icmp ne i128 %16, %14
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = trunc i128 %14 to i32
  %21 = and i32 %20, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21) #22
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 0, i8* %28, align 1
  %29 = lshr i64 %15, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %18, i8* %32, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 33800)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
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

define %struct.Memory* @routine_addq__rcx___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 520)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %13 = sub i64 %12, 108
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to double*
  %6 = load double, double* %5
  %7 = bitcast i8* %2 to double*
  store double %6, double* %7, align 1
  %8 = getelementptr inbounds i8, i8* %2, i64 8
  %9 = bitcast i8* %8 to double*
  store double 0.000000e+00, double* %9, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %14, i64 %18)
  ret %struct.Memory* %21
}










define %struct.Memory* @routine_movl_MINUS0x68__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %13 = sub i64 %12, 104
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

define %struct.Memory* @routine_addl__0x1___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq__edx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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







define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i64) #0 {
  %6 = bitcast i8* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to double*
  %12 = load double, double* %11
  %13 = fsub double %7, %12
  %14 = bitcast i8* %2 to double*
  store double %13, double* %14, align 1
  %15 = getelementptr inbounds i8, i8* %2, i64 8
  %16 = bitcast i8* %15 to i64*
  store i64 %10, i64* %16, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_subsd___rax__rcx_8____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %18 = mul i64 %17, 8
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %14, i8* %15, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movq_0x28__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %13 = add i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}














define %struct.Memory* @routine_movl_MINUS0x6c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %13 = sub i64 %12, 108
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}





define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i64) #0 {
  %6 = bitcast i8* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to double*
  %12 = load double, double* %11
  %13 = fadd double %7, %12
  %14 = bitcast i8* %2 to double*
  store double %13, double* %14, align 1
  %15 = getelementptr inbounds i8, i8* %2, i64 8
  %16 = bitcast i8* %15 to i64*
  store i64 %10, i64* %16, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_addsd___rax__rcx_8____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %18 = mul i64 %17, 8
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %14, i8* %15, i64 %19)
  ret %struct.Memory* %22
}




















define %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %RCX
  %16 = mul i64 %15, 8
  %17 = add i64 %16, %14
  %18 = bitcast %union.vec128_t* %XMM0 to i8*
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %17, i8* %18)
  ret %struct.Memory* %21
}


define %struct.Memory* @routine_movq_0x58__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %13 = add i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}









define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i64) #0 {
  %6 = bitcast i8* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to double*
  %12 = load double, double* %11
  %13 = fdiv double %7, %12
  %14 = bitcast i8* %2 to double*
  store double %13, double* %14, align 1
  %15 = getelementptr inbounds i8, i8* %2, i64 8
  %16 = bitcast i8* %15 to i64*
  store i64 %10, i64* %16, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_divsd___rax__rcx_8____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %18 = mul i64 %17, 8
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %14, i8* %15, i64 %19)
  ret %struct.Memory* %22
}

















define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i64) #0 {
  %6 = bitcast i8* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to double*
  %12 = load double, double* %11
  %13 = fmul double %7, %12
  %14 = bitcast i8* %2 to double*
  store double %13, double* %14, align 1
  %15 = getelementptr inbounds i8, i8* %2, i64 8
  %16 = bitcast i8* %15 to i64*
  store i64 %10, i64* %16, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %18 = mul i64 %17, 8
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %14, i8* %15, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 8
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %14, i8* %15, i64 %19)
  ret %struct.Memory* %22
}












define %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 8
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %14, i8* %15, i64 %19)
  ret %struct.Memory* %22
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = bitcast i8* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = bitcast i8* %4 to double*
  %12 = load double, double* %11, align 1
  %13 = fsub double %7, %12
  %14 = bitcast i8* %2 to double*
  store double %13, double* %14, align 1
  %15 = getelementptr inbounds i8, i8* %2, i64 8
  %16 = bitcast i8* %15 to i64*
  store i64 %10, i64* %16, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}














define %struct.Memory* @routine_movq_0x48__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %13 = add i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movq_0x50__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %13 = add i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movq_0x30__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %13 = add i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


















define %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x40__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %13 = add i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}























define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = bitcast i8* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = bitcast i8* %4 to double*
  %12 = load double, double* %11, align 1
  %13 = fadd double %7, %12
  %14 = bitcast i8* %2 to double*
  store double %13, double* %14, align 1
  %15 = getelementptr inbounds i8, i8* %2, i64 8
  %16 = bitcast i8* %15 to i64*
  store i64 %10, i64* %16, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}




define %struct.Memory* @routine_movq_0x38__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %13 = add i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


















































































define %struct.Memory* @routine_addl__0x1___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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


define %struct.Memory* @routine_movl__eax__MINUS0x6c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_4014a0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400478:
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
















define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


























define %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




























































































































































































































































define %struct.Memory* @routine_jge_.L_401c6b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
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










define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


















































































































































































































































































define %struct.Memory* @routine_jmpq_.L_4019d2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400478:
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


























































































































































































































































































define %struct.Memory* @routine_movl__eax__MINUS0x68__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %13 = sub i64 %12, 104
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_40148d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400478:
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


define %struct.Memory* @routine_jmpq_.L_401eea(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400478:
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






define %struct.Memory* @routine_movl__eax__MINUS0x64__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %13 = sub i64 %12, 100
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_40147a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400478:
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
block_400478:
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

define %struct.Memory* @routine_popq__rbx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 1
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3POPI3RnWImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64* %RBX)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_popq__r12(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 25
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R12 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 2
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3POPI3RnWImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64* %R12)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_popq__r13(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 27
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R13 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 2
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3POPI3RnWImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64* %R13)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_popq__r14(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 29
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R14 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 2
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3POPI3RnWImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64* %R14)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_popq__r15(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 31
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R15 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 2
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3POPI3RnWImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64* %R15)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_popq__rbp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
block_400478:
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

