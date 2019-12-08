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


define %struct.Memory* @kernel_fdtd_apml_StrictFP(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .kernel_fdtd_apml_StrictFP:	 RIP: 401f10	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 401f10	 Bytes: 1
  %loadMem_401f10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f10 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f10)
  store %struct.Memory* %call_401f10, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 401f11	 Bytes: 3
  %loadMem_401f11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f11 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f11)
  store %struct.Memory* %call_401f11, %struct.Memory** %MEMORY

  ; Code: pushq %r15	 RIP: 401f14	 Bytes: 2
  %loadMem_401f14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f14 = call %struct.Memory* @routine_pushq__r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f14)
  store %struct.Memory* %call_401f14, %struct.Memory** %MEMORY

  ; Code: pushq %r14	 RIP: 401f16	 Bytes: 2
  %loadMem_401f16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f16 = call %struct.Memory* @routine_pushq__r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f16)
  store %struct.Memory* %call_401f16, %struct.Memory** %MEMORY

  ; Code: pushq %r13	 RIP: 401f18	 Bytes: 2
  %loadMem_401f18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f18 = call %struct.Memory* @routine_pushq__r13(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f18)
  store %struct.Memory* %call_401f18, %struct.Memory** %MEMORY

  ; Code: pushq %r12	 RIP: 401f1a	 Bytes: 2
  %loadMem_401f1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f1a = call %struct.Memory* @routine_pushq__r12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f1a)
  store %struct.Memory* %call_401f1a, %struct.Memory** %MEMORY

  ; Code: pushq %rbx	 RIP: 401f1c	 Bytes: 1
  %loadMem_401f1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f1c = call %struct.Memory* @routine_pushq__rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f1c)
  store %struct.Memory* %call_401f1c, %struct.Memory** %MEMORY

  ; Code: subq $0x20, %rsp	 RIP: 401f1d	 Bytes: 4
  %loadMem_401f1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f1d = call %struct.Memory* @routine_subq__0x20___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f1d)
  store %struct.Memory* %call_401f1d, %struct.Memory** %MEMORY

  ; Code: movq 0x60(%rbp), %rax	 RIP: 401f21	 Bytes: 4
  %loadMem_401f21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f21 = call %struct.Memory* @routine_movq_0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f21)
  store %struct.Memory* %call_401f21, %struct.Memory** %MEMORY

  ; Code: movq 0x58(%rbp), %r10	 RIP: 401f25	 Bytes: 4
  %loadMem_401f25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f25 = call %struct.Memory* @routine_movq_0x58__rbp____r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f25)
  store %struct.Memory* %call_401f25, %struct.Memory** %MEMORY

  ; Code: movq 0x50(%rbp), %r11	 RIP: 401f29	 Bytes: 4
  %loadMem_401f29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f29 = call %struct.Memory* @routine_movq_0x50__rbp____r11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f29)
  store %struct.Memory* %call_401f29, %struct.Memory** %MEMORY

  ; Code: movq 0x48(%rbp), %rbx	 RIP: 401f2d	 Bytes: 4
  %loadMem_401f2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f2d = call %struct.Memory* @routine_movq_0x48__rbp____rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f2d)
  store %struct.Memory* %call_401f2d, %struct.Memory** %MEMORY

  ; Code: movq 0x40(%rbp), %r14	 RIP: 401f31	 Bytes: 4
  %loadMem_401f31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f31 = call %struct.Memory* @routine_movq_0x40__rbp____r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f31)
  store %struct.Memory* %call_401f31, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rbp), %r15	 RIP: 401f35	 Bytes: 4
  %loadMem_401f35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f35 = call %struct.Memory* @routine_movq_0x38__rbp____r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f35)
  store %struct.Memory* %call_401f35, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rbp), %r12	 RIP: 401f39	 Bytes: 4
  %loadMem_401f39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f39 = call %struct.Memory* @routine_movq_0x30__rbp____r12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f39)
  store %struct.Memory* %call_401f39, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rbp), %r13	 RIP: 401f3d	 Bytes: 4
  %loadMem_401f3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f3d = call %struct.Memory* @routine_movq_0x28__rbp____r13(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f3d)
  store %struct.Memory* %call_401f3d, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x78(%rbp)	 RIP: 401f41	 Bytes: 4
  %loadMem_401f41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f41 = call %struct.Memory* @routine_movq__rax__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f41)
  store %struct.Memory* %call_401f41, %struct.Memory** %MEMORY

  ; Code: movq 0x20(%rbp), %rax	 RIP: 401f45	 Bytes: 4
  %loadMem_401f45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f45 = call %struct.Memory* @routine_movq_0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f45)
  store %struct.Memory* %call_401f45, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x80(%rbp)	 RIP: 401f49	 Bytes: 4
  %loadMem_401f49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f49 = call %struct.Memory* @routine_movq__rax__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f49)
  store %struct.Memory* %call_401f49, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rbp), %rax	 RIP: 401f4d	 Bytes: 4
  %loadMem_401f4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f4d = call %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f4d)
  store %struct.Memory* %call_401f4d, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x88(%rbp)	 RIP: 401f51	 Bytes: 7
  %loadMem_401f51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f51 = call %struct.Memory* @routine_movq__rax__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f51)
  store %struct.Memory* %call_401f51, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rbp), %rax	 RIP: 401f58	 Bytes: 4
  %loadMem_401f58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f58 = call %struct.Memory* @routine_movq_0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f58)
  store %struct.Memory* %call_401f58, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x2c(%rbp)	 RIP: 401f5c	 Bytes: 3
  %loadMem_401f5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f5c = call %struct.Memory* @routine_movl__edi__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f5c)
  store %struct.Memory* %call_401f5c, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x30(%rbp)	 RIP: 401f5f	 Bytes: 3
  %loadMem_401f5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f5f = call %struct.Memory* @routine_movl__esi__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f5f)
  store %struct.Memory* %call_401f5f, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x34(%rbp)	 RIP: 401f62	 Bytes: 3
  %loadMem_401f62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f62 = call %struct.Memory* @routine_movl__edx__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f62)
  store %struct.Memory* %call_401f62, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x40(%rbp)	 RIP: 401f65	 Bytes: 5
  %loadMem_401f65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f65 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f65)
  store %struct.Memory* %call_401f65, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x48(%rbp)	 RIP: 401f6a	 Bytes: 5
  %loadMem_401f6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f6a = call %struct.Memory* @routine_movsd__xmm1__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f6a)
  store %struct.Memory* %call_401f6a, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x50(%rbp)	 RIP: 401f6f	 Bytes: 4
  %loadMem_401f6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f6f = call %struct.Memory* @routine_movq__rcx__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f6f)
  store %struct.Memory* %call_401f6f, %struct.Memory** %MEMORY

  ; Code: movq %r8, -0x58(%rbp)	 RIP: 401f73	 Bytes: 4
  %loadMem_401f73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f73 = call %struct.Memory* @routine_movq__r8__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f73)
  store %struct.Memory* %call_401f73, %struct.Memory** %MEMORY

  ; Code: movq %r9, -0x60(%rbp)	 RIP: 401f77	 Bytes: 4
  %loadMem_401f77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f77 = call %struct.Memory* @routine_movq__r9__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f77)
  store %struct.Memory* %call_401f77, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x64(%rbp)	 RIP: 401f7b	 Bytes: 7
  %loadMem_401f7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f7b = call %struct.Memory* @routine_movl__0x0__MINUS0x64__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f7b)
  store %struct.Memory* %call_401f7b, %struct.Memory** %MEMORY

  ; Code: movq %r13, -0x90(%rbp)	 RIP: 401f82	 Bytes: 7
  %loadMem_401f82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f82 = call %struct.Memory* @routine_movq__r13__MINUS0x90__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f82)
  store %struct.Memory* %call_401f82, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x98(%rbp)	 RIP: 401f89	 Bytes: 7
  %loadMem_401f89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f89 = call %struct.Memory* @routine_movq__rax__MINUS0x98__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f89)
  store %struct.Memory* %call_401f89, %struct.Memory** %MEMORY

  ; Code: movq %r10, -0xa0(%rbp)	 RIP: 401f90	 Bytes: 7
  %loadMem_401f90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f90 = call %struct.Memory* @routine_movq__r10__MINUS0xa0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f90)
  store %struct.Memory* %call_401f90, %struct.Memory** %MEMORY

  ; Code: movq %r11, -0xa8(%rbp)	 RIP: 401f97	 Bytes: 7
  %loadMem_401f97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f97 = call %struct.Memory* @routine_movq__r11__MINUS0xa8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f97)
  store %struct.Memory* %call_401f97, %struct.Memory** %MEMORY

  ; Code: movq %rbx, -0xb0(%rbp)	 RIP: 401f9e	 Bytes: 7
  %loadMem_401f9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f9e = call %struct.Memory* @routine_movq__rbx__MINUS0xb0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f9e)
  store %struct.Memory* %call_401f9e, %struct.Memory** %MEMORY

  ; Code: movq %r14, -0xb8(%rbp)	 RIP: 401fa5	 Bytes: 7
  %loadMem_401fa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fa5 = call %struct.Memory* @routine_movq__r14__MINUS0xb8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fa5)
  store %struct.Memory* %call_401fa5, %struct.Memory** %MEMORY

  ; Code: movq %r15, -0xc0(%rbp)	 RIP: 401fac	 Bytes: 7
  %loadMem_401fac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fac = call %struct.Memory* @routine_movq__r15__MINUS0xc0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fac)
  store %struct.Memory* %call_401fac, %struct.Memory** %MEMORY

  ; Code: movq %r12, -0xc8(%rbp)	 RIP: 401fb3	 Bytes: 7
  %loadMem_401fb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fb3 = call %struct.Memory* @routine_movq__r12__MINUS0xc8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fb3)
  store %struct.Memory* %call_401fb3, %struct.Memory** %MEMORY

  ; Code: .L_401fba:	 RIP: 401fba	 Bytes: 0
  br label %block_.L_401fba
block_.L_401fba:

  ; Code: movl -0x64(%rbp), %eax	 RIP: 401fba	 Bytes: 3
  %loadMem_401fba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fba = call %struct.Memory* @routine_movl_MINUS0x64__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fba)
  store %struct.Memory* %call_401fba, %struct.Memory** %MEMORY

  ; Code: cmpl -0x2c(%rbp), %eax	 RIP: 401fbd	 Bytes: 3
  %loadMem_401fbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fbd = call %struct.Memory* @routine_cmpl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fbd)
  store %struct.Memory* %call_401fbd, %struct.Memory** %MEMORY

  ; Code: jge .L_402a38	 RIP: 401fc0	 Bytes: 6
  %loadMem_401fc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fc0 = call %struct.Memory* @routine_jge_.L_402a38(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fc0, i8* %BRANCH_TAKEN, i64 2680, i64 6, i64 6)
  store %struct.Memory* %call_401fc0, %struct.Memory** %MEMORY

  %loadBr_401fc0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401fc0 = icmp eq i8 %loadBr_401fc0, 1
  br i1 %cmpBr_401fc0, label %block_.L_402a38, label %block_401fc6

block_401fc6:
  ; Code: movl $0x0, -0x68(%rbp)	 RIP: 401fc6	 Bytes: 7
  %loadMem_401fc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fc6 = call %struct.Memory* @routine_movl__0x0__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fc6)
  store %struct.Memory* %call_401fc6, %struct.Memory** %MEMORY

  ; Code: .L_401fcd:	 RIP: 401fcd	 Bytes: 0
  br label %block_.L_401fcd
block_.L_401fcd:

  ; Code: movl -0x68(%rbp), %eax	 RIP: 401fcd	 Bytes: 3
  %loadMem_401fcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fcd = call %struct.Memory* @routine_movl_MINUS0x68__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fcd)
  store %struct.Memory* %call_401fcd, %struct.Memory** %MEMORY

  ; Code: cmpl -0x34(%rbp), %eax	 RIP: 401fd0	 Bytes: 3
  %loadMem_401fd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fd0 = call %struct.Memory* @routine_cmpl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fd0)
  store %struct.Memory* %call_401fd0, %struct.Memory** %MEMORY

  ; Code: jge .L_402a25	 RIP: 401fd3	 Bytes: 6
  %loadMem_401fd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fd3 = call %struct.Memory* @routine_jge_.L_402a25(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fd3, i8* %BRANCH_TAKEN, i64 2642, i64 6, i64 6)
  store %struct.Memory* %call_401fd3, %struct.Memory** %MEMORY

  %loadBr_401fd3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401fd3 = icmp eq i8 %loadBr_401fd3, 1
  br i1 %cmpBr_401fd3, label %block_.L_402a25, label %block_401fd9

block_401fd9:
  ; Code: movl $0x0, -0x6c(%rbp)	 RIP: 401fd9	 Bytes: 7
  %loadMem_401fd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fd9 = call %struct.Memory* @routine_movl__0x0__MINUS0x6c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fd9)
  store %struct.Memory* %call_401fd9, %struct.Memory** %MEMORY

  ; Code: .L_401fe0:	 RIP: 401fe0	 Bytes: 0
  br label %block_.L_401fe0
block_.L_401fe0:

  ; Code: movl -0x6c(%rbp), %eax	 RIP: 401fe0	 Bytes: 3
  %loadMem_401fe0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fe0 = call %struct.Memory* @routine_movl_MINUS0x6c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fe0)
  store %struct.Memory* %call_401fe0, %struct.Memory** %MEMORY

  ; Code: cmpl -0x30(%rbp), %eax	 RIP: 401fe3	 Bytes: 3
  %loadMem_401fe3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fe3 = call %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fe3)
  store %struct.Memory* %call_401fe3, %struct.Memory** %MEMORY

  ; Code: jge .L_40228c	 RIP: 401fe6	 Bytes: 6
  %loadMem_401fe6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fe6 = call %struct.Memory* @routine_jge_.L_40228c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fe6, i8* %BRANCH_TAKEN, i64 678, i64 6, i64 6)
  store %struct.Memory* %call_401fe6, %struct.Memory** %MEMORY

  %loadBr_401fe6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401fe6 = icmp eq i8 %loadBr_401fe6, 1
  br i1 %cmpBr_401fe6, label %block_.L_40228c, label %block_401fec

block_401fec:
  ; Code: movq 0x20(%rbp), %rax	 RIP: 401fec	 Bytes: 4
  %loadMem_401fec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fec = call %struct.Memory* @routine_movq_0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fec)
  store %struct.Memory* %call_401fec, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 401ff0	 Bytes: 4
  %loadMem_401ff0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ff0 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ff0)
  store %struct.Memory* %call_401ff0, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 401ff4	 Bytes: 7
  %loadMem_401ff4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ff4 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ff4)
  store %struct.Memory* %call_401ff4, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401ffb	 Bytes: 3
  %loadMem_401ffb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ffb = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ffb)
  store %struct.Memory* %call_401ffb, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 401ffe	 Bytes: 4
  %loadMem_401ffe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ffe = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ffe)
  store %struct.Memory* %call_401ffe, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402002	 Bytes: 7
  %loadMem_402002 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402002 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402002)
  store %struct.Memory* %call_402002, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402009	 Bytes: 3
  %loadMem_402009 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402009 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402009)
  store %struct.Memory* %call_402009, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rcx	 RIP: 40200c	 Bytes: 4
  %loadMem_40200c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40200c = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40200c)
  store %struct.Memory* %call_40200c, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 402010	 Bytes: 5
  %loadMem_402010 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402010 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402010)
  store %struct.Memory* %call_402010, %struct.Memory** %MEMORY

  ; Code: movq 0x20(%rbp), %rax	 RIP: 402015	 Bytes: 4
  %loadMem_402015 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402015 = call %struct.Memory* @routine_movq_0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402015)
  store %struct.Memory* %call_402015, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 402019	 Bytes: 4
  %loadMem_402019 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402019 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402019)
  store %struct.Memory* %call_402019, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 40201d	 Bytes: 7
  %loadMem_40201d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40201d = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40201d)
  store %struct.Memory* %call_40201d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402024	 Bytes: 3
  %loadMem_402024 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402024 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402024)
  store %struct.Memory* %call_402024, %struct.Memory** %MEMORY

  ; Code: movl -0x68(%rbp), %edx	 RIP: 402027	 Bytes: 3
  %loadMem_402027 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402027 = call %struct.Memory* @routine_movl_MINUS0x68__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402027)
  store %struct.Memory* %call_402027, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 40202a	 Bytes: 3
  %loadMem_40202a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40202a = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40202a)
  store %struct.Memory* %call_40202a, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40202d	 Bytes: 3
  %loadMem_40202d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40202d = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40202d)
  store %struct.Memory* %call_40202d, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402030	 Bytes: 7
  %loadMem_402030 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402030 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402030)
  store %struct.Memory* %call_402030, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402037	 Bytes: 3
  %loadMem_402037 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402037 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402037)
  store %struct.Memory* %call_402037, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rcx	 RIP: 40203a	 Bytes: 4
  %loadMem_40203a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40203a = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40203a)
  store %struct.Memory* %call_40203a, %struct.Memory** %MEMORY

  ; Code: subsd (%rax,%rcx,8), %xmm0	 RIP: 40203e	 Bytes: 5
  %loadMem_40203e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40203e = call %struct.Memory* @routine_subsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40203e)
  store %struct.Memory* %call_40203e, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rbp), %rax	 RIP: 402043	 Bytes: 4
  %loadMem_402043 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402043 = call %struct.Memory* @routine_movq_0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402043)
  store %struct.Memory* %call_402043, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 402047	 Bytes: 4
  %loadMem_402047 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402047 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402047)
  store %struct.Memory* %call_402047, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 40204b	 Bytes: 7
  %loadMem_40204b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40204b = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40204b)
  store %struct.Memory* %call_40204b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402052	 Bytes: 3
  %loadMem_402052 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402052 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402052)
  store %struct.Memory* %call_402052, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 402055	 Bytes: 4
  %loadMem_402055 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402055 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402055)
  store %struct.Memory* %call_402055, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402059	 Bytes: 7
  %loadMem_402059 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402059 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402059)
  store %struct.Memory* %call_402059, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402060	 Bytes: 3
  %loadMem_402060 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402060 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402060)
  store %struct.Memory* %call_402060, %struct.Memory** %MEMORY

  ; Code: movl -0x6c(%rbp), %edx	 RIP: 402063	 Bytes: 3
  %loadMem_402063 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402063 = call %struct.Memory* @routine_movl_MINUS0x6c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402063)
  store %struct.Memory* %call_402063, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 402066	 Bytes: 3
  %loadMem_402066 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402066 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402066)
  store %struct.Memory* %call_402066, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 402069	 Bytes: 3
  %loadMem_402069 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402069 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402069)
  store %struct.Memory* %call_402069, %struct.Memory** %MEMORY

  ; Code: addsd (%rax,%rcx,8), %xmm0	 RIP: 40206c	 Bytes: 5
  %loadMem_40206c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40206c = call %struct.Memory* @routine_addsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40206c)
  store %struct.Memory* %call_40206c, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rbp), %rax	 RIP: 402071	 Bytes: 4
  %loadMem_402071 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402071 = call %struct.Memory* @routine_movq_0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402071)
  store %struct.Memory* %call_402071, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 402075	 Bytes: 4
  %loadMem_402075 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402075 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402075)
  store %struct.Memory* %call_402075, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 402079	 Bytes: 7
  %loadMem_402079 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402079 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402079)
  store %struct.Memory* %call_402079, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402080	 Bytes: 3
  %loadMem_402080 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402080 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402080)
  store %struct.Memory* %call_402080, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 402083	 Bytes: 4
  %loadMem_402083 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402083 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402083)
  store %struct.Memory* %call_402083, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402087	 Bytes: 7
  %loadMem_402087 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402087 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402087)
  store %struct.Memory* %call_402087, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40208e	 Bytes: 3
  %loadMem_40208e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40208e = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40208e)
  store %struct.Memory* %call_40208e, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rcx	 RIP: 402091	 Bytes: 4
  %loadMem_402091 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402091 = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402091)
  store %struct.Memory* %call_402091, %struct.Memory** %MEMORY

  ; Code: subsd (%rax,%rcx,8), %xmm0	 RIP: 402095	 Bytes: 5
  %loadMem_402095 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402095 = call %struct.Memory* @routine_subsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402095)
  store %struct.Memory* %call_402095, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rax	 RIP: 40209a	 Bytes: 4
  %loadMem_40209a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40209a = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40209a)
  store %struct.Memory* %call_40209a, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 40209e	 Bytes: 4
  %loadMem_40209e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40209e = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40209e)
  store %struct.Memory* %call_40209e, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4020a2	 Bytes: 7
  %loadMem_4020a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020a2 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020a2)
  store %struct.Memory* %call_4020a2, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4020a9	 Bytes: 3
  %loadMem_4020a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020a9 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020a9)
  store %struct.Memory* %call_4020a9, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 4020ac	 Bytes: 4
  %loadMem_4020ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020ac = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020ac)
  store %struct.Memory* %call_4020ac, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 4020b0	 Bytes: 5
  %loadMem_4020b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020b0 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020b0)
  store %struct.Memory* %call_4020b0, %struct.Memory** %MEMORY

  ; Code: movq 0x58(%rbp), %rax	 RIP: 4020b5	 Bytes: 4
  %loadMem_4020b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020b5 = call %struct.Memory* @routine_movq_0x58__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020b5)
  store %struct.Memory* %call_4020b5, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 4020b9	 Bytes: 4
  %loadMem_4020b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020b9 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020b9)
  store %struct.Memory* %call_4020b9, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 4020bd	 Bytes: 5
  %loadMem_4020bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020bd = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020bd)
  store %struct.Memory* %call_4020bd, %struct.Memory** %MEMORY

  ; Code: movq 0x60(%rbp), %rax	 RIP: 4020c2	 Bytes: 4
  %loadMem_4020c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020c2 = call %struct.Memory* @routine_movq_0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020c2)
  store %struct.Memory* %call_4020c2, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 4020c6	 Bytes: 4
  %loadMem_4020c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020c6 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020c6)
  store %struct.Memory* %call_4020c6, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm0	 RIP: 4020ca	 Bytes: 5
  %loadMem_4020ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020ca = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020ca)
  store %struct.Memory* %call_4020ca, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rbp), %rax	 RIP: 4020cf	 Bytes: 4
  %loadMem_4020cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020cf = call %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020cf)
  store %struct.Memory* %call_4020cf, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 4020d3	 Bytes: 4
  %loadMem_4020d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020d3 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020d3)
  store %struct.Memory* %call_4020d3, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 4020d7	 Bytes: 7
  %loadMem_4020d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020d7 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020d7)
  store %struct.Memory* %call_4020d7, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4020de	 Bytes: 3
  %loadMem_4020de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020de = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020de)
  store %struct.Memory* %call_4020de, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 4020e1	 Bytes: 4
  %loadMem_4020e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020e1 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020e1)
  store %struct.Memory* %call_4020e1, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4020e5	 Bytes: 7
  %loadMem_4020e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020e5 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020e5)
  store %struct.Memory* %call_4020e5, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4020ec	 Bytes: 3
  %loadMem_4020ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020ec = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020ec)
  store %struct.Memory* %call_4020ec, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rcx	 RIP: 4020ef	 Bytes: 4
  %loadMem_4020ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020ef = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020ef)
  store %struct.Memory* %call_4020ef, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm0	 RIP: 4020f3	 Bytes: 5
  %loadMem_4020f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020f3 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020f3)
  store %struct.Memory* %call_4020f3, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm1	 RIP: 4020f8	 Bytes: 5
  %loadMem_4020f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020f8 = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020f8)
  store %struct.Memory* %call_4020f8, %struct.Memory** %MEMORY

  ; Code: movq 0x60(%rbp), %rax	 RIP: 4020fd	 Bytes: 4
  %loadMem_4020fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020fd = call %struct.Memory* @routine_movq_0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020fd)
  store %struct.Memory* %call_4020fd, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 402101	 Bytes: 4
  %loadMem_402101 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402101 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402101)
  store %struct.Memory* %call_402101, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 402105	 Bytes: 5
  %loadMem_402105 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402105 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402105)
  store %struct.Memory* %call_402105, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rax	 RIP: 40210a	 Bytes: 4
  %loadMem_40210a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40210a = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40210a)
  store %struct.Memory* %call_40210a, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 40210e	 Bytes: 4
  %loadMem_40210e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40210e = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40210e)
  store %struct.Memory* %call_40210e, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402112	 Bytes: 7
  %loadMem_402112 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402112 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402112)
  store %struct.Memory* %call_402112, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402119	 Bytes: 3
  %loadMem_402119 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402119 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402119)
  store %struct.Memory* %call_402119, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 40211c	 Bytes: 4
  %loadMem_40211c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40211c = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40211c)
  store %struct.Memory* %call_40211c, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 402120	 Bytes: 5
  %loadMem_402120 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402120 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402120)
  store %struct.Memory* %call_402120, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 402125	 Bytes: 4
  %loadMem_402125 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402125 = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402125)
  store %struct.Memory* %call_402125, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rbp), %rax	 RIP: 402129	 Bytes: 4
  %loadMem_402129 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402129 = call %struct.Memory* @routine_movq_0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402129)
  store %struct.Memory* %call_402129, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 40212d	 Bytes: 4
  %loadMem_40212d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40212d = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40212d)
  store %struct.Memory* %call_40212d, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402131	 Bytes: 7
  %loadMem_402131 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402131 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402131)
  store %struct.Memory* %call_402131, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402138	 Bytes: 3
  %loadMem_402138 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402138 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402138)
  store %struct.Memory* %call_402138, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 40213b	 Bytes: 4
  %loadMem_40213b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40213b = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40213b)
  store %struct.Memory* %call_40213b, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 40213f	 Bytes: 5
  %loadMem_40213f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40213f = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40213f)
  store %struct.Memory* %call_40213f, %struct.Memory** %MEMORY

  ; Code: movq 0x48(%rbp), %rax	 RIP: 402144	 Bytes: 4
  %loadMem_402144 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402144 = call %struct.Memory* @routine_movq_0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402144)
  store %struct.Memory* %call_402144, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rcx	 RIP: 402148	 Bytes: 4
  %loadMem_402148 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402148 = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402148)
  store %struct.Memory* %call_402148, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 40214c	 Bytes: 5
  %loadMem_40214c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40214c = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40214c)
  store %struct.Memory* %call_40214c, %struct.Memory** %MEMORY

  ; Code: movq 0x50(%rbp), %rax	 RIP: 402151	 Bytes: 4
  %loadMem_402151 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402151 = call %struct.Memory* @routine_movq_0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402151)
  store %struct.Memory* %call_402151, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rcx	 RIP: 402155	 Bytes: 4
  %loadMem_402155 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402155 = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402155)
  store %struct.Memory* %call_402155, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm0	 RIP: 402159	 Bytes: 5
  %loadMem_402159 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402159 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402159)
  store %struct.Memory* %call_402159, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rbp), %rax	 RIP: 40215e	 Bytes: 4
  %loadMem_40215e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40215e = call %struct.Memory* @routine_movq_0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40215e)
  store %struct.Memory* %call_40215e, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 402162	 Bytes: 4
  %loadMem_402162 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402162 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402162)
  store %struct.Memory* %call_402162, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 402166	 Bytes: 7
  %loadMem_402166 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402166 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402166)
  store %struct.Memory* %call_402166, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40216d	 Bytes: 3
  %loadMem_40216d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40216d = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40216d)
  store %struct.Memory* %call_40216d, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 402170	 Bytes: 4
  %loadMem_402170 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402170 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402170)
  store %struct.Memory* %call_402170, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402174	 Bytes: 7
  %loadMem_402174 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402174 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402174)
  store %struct.Memory* %call_402174, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40217b	 Bytes: 3
  %loadMem_40217b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40217b = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40217b)
  store %struct.Memory* %call_40217b, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rcx	 RIP: 40217e	 Bytes: 4
  %loadMem_40217e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40217e = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40217e)
  store %struct.Memory* %call_40217e, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm0	 RIP: 402182	 Bytes: 5
  %loadMem_402182 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402182 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402182)
  store %struct.Memory* %call_402182, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm1	 RIP: 402187	 Bytes: 5
  %loadMem_402187 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402187 = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402187)
  store %struct.Memory* %call_402187, %struct.Memory** %MEMORY

  ; Code: movq 0x40(%rbp), %rax	 RIP: 40218c	 Bytes: 4
  %loadMem_40218c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40218c = call %struct.Memory* @routine_movq_0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40218c)
  store %struct.Memory* %call_40218c, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 402190	 Bytes: 4
  %loadMem_402190 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402190 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402190)
  store %struct.Memory* %call_402190, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 402194	 Bytes: 5
  %loadMem_402194 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402194 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402194)
  store %struct.Memory* %call_402194, %struct.Memory** %MEMORY

  ; Code: movq 0x50(%rbp), %rax	 RIP: 402199	 Bytes: 4
  %loadMem_402199 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402199 = call %struct.Memory* @routine_movq_0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402199)
  store %struct.Memory* %call_402199, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rcx	 RIP: 40219d	 Bytes: 4
  %loadMem_40219d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40219d = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40219d)
  store %struct.Memory* %call_40219d, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 4021a1	 Bytes: 5
  %loadMem_4021a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021a1 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021a1)
  store %struct.Memory* %call_4021a1, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rbp), %rax	 RIP: 4021a6	 Bytes: 4
  %loadMem_4021a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021a6 = call %struct.Memory* @routine_movq_0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021a6)
  store %struct.Memory* %call_4021a6, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 4021aa	 Bytes: 4
  %loadMem_4021aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021aa = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021aa)
  store %struct.Memory* %call_4021aa, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4021ae	 Bytes: 7
  %loadMem_4021ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021ae = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021ae)
  store %struct.Memory* %call_4021ae, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4021b5	 Bytes: 3
  %loadMem_4021b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021b5 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021b5)
  store %struct.Memory* %call_4021b5, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 4021b8	 Bytes: 4
  %loadMem_4021b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021b8 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021b8)
  store %struct.Memory* %call_4021b8, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 4021bc	 Bytes: 5
  %loadMem_4021bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021bc = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021bc)
  store %struct.Memory* %call_4021bc, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 4021c1	 Bytes: 4
  %loadMem_4021c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021c1 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021c1)
  store %struct.Memory* %call_4021c1, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm1	 RIP: 4021c5	 Bytes: 5
  %loadMem_4021c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021c5 = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021c5)
  store %struct.Memory* %call_4021c5, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rbp), %rax	 RIP: 4021ca	 Bytes: 4
  %loadMem_4021ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021ca = call %struct.Memory* @routine_movq_0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021ca)
  store %struct.Memory* %call_4021ca, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 4021ce	 Bytes: 4
  %loadMem_4021ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021ce = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021ce)
  store %struct.Memory* %call_4021ce, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 4021d2	 Bytes: 5
  %loadMem_4021d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021d2 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021d2)
  store %struct.Memory* %call_4021d2, %struct.Memory** %MEMORY

  ; Code: movq 0x50(%rbp), %rax	 RIP: 4021d7	 Bytes: 4
  %loadMem_4021d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021d7 = call %struct.Memory* @routine_movq_0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021d7)
  store %struct.Memory* %call_4021d7, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rcx	 RIP: 4021db	 Bytes: 4
  %loadMem_4021db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021db = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021db)
  store %struct.Memory* %call_4021db, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 4021df	 Bytes: 5
  %loadMem_4021df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021df = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021df)
  store %struct.Memory* %call_4021df, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rbp), %rax	 RIP: 4021e4	 Bytes: 4
  %loadMem_4021e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021e4 = call %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021e4)
  store %struct.Memory* %call_4021e4, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 4021e8	 Bytes: 4
  %loadMem_4021e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021e8 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021e8)
  store %struct.Memory* %call_4021e8, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 4021ec	 Bytes: 7
  %loadMem_4021ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021ec = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021ec)
  store %struct.Memory* %call_4021ec, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4021f3	 Bytes: 3
  %loadMem_4021f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021f3 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021f3)
  store %struct.Memory* %call_4021f3, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 4021f6	 Bytes: 4
  %loadMem_4021f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021f6 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021f6)
  store %struct.Memory* %call_4021f6, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4021fa	 Bytes: 7
  %loadMem_4021fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021fa = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021fa)
  store %struct.Memory* %call_4021fa, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402201	 Bytes: 3
  %loadMem_402201 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402201 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402201)
  store %struct.Memory* %call_402201, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rcx	 RIP: 402204	 Bytes: 4
  %loadMem_402204 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402204 = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402204)
  store %struct.Memory* %call_402204, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 402208	 Bytes: 5
  %loadMem_402208 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402208 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402208)
  store %struct.Memory* %call_402208, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 40220d	 Bytes: 4
  %loadMem_40220d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40220d = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40220d)
  store %struct.Memory* %call_40220d, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rbp), %rax	 RIP: 402211	 Bytes: 4
  %loadMem_402211 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402211 = call %struct.Memory* @routine_movq_0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402211)
  store %struct.Memory* %call_402211, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 402215	 Bytes: 4
  %loadMem_402215 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402215 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402215)
  store %struct.Memory* %call_402215, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 402219	 Bytes: 7
  %loadMem_402219 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402219 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402219)
  store %struct.Memory* %call_402219, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402220	 Bytes: 3
  %loadMem_402220 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402220 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402220)
  store %struct.Memory* %call_402220, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 402223	 Bytes: 4
  %loadMem_402223 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402223 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402223)
  store %struct.Memory* %call_402223, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402227	 Bytes: 7
  %loadMem_402227 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402227 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402227)
  store %struct.Memory* %call_402227, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40222e	 Bytes: 3
  %loadMem_40222e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40222e = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40222e)
  store %struct.Memory* %call_40222e, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rcx	 RIP: 402231	 Bytes: 4
  %loadMem_402231 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402231 = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402231)
  store %struct.Memory* %call_402231, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 402235	 Bytes: 5
  %loadMem_402235 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402235 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402235)
  store %struct.Memory* %call_402235, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rbp), %rax	 RIP: 40223a	 Bytes: 4
  %loadMem_40223a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40223a = call %struct.Memory* @routine_movq_0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40223a)
  store %struct.Memory* %call_40223a, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 40223e	 Bytes: 4
  %loadMem_40223e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40223e = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40223e)
  store %struct.Memory* %call_40223e, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402242	 Bytes: 7
  %loadMem_402242 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402242 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402242)
  store %struct.Memory* %call_402242, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402249	 Bytes: 3
  %loadMem_402249 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402249 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402249)
  store %struct.Memory* %call_402249, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 40224c	 Bytes: 4
  %loadMem_40224c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40224c = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40224c)
  store %struct.Memory* %call_40224c, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 402250	 Bytes: 5
  %loadMem_402250 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402250 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402250)
  store %struct.Memory* %call_402250, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rbp), %rax	 RIP: 402255	 Bytes: 4
  %loadMem_402255 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402255 = call %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402255)
  store %struct.Memory* %call_402255, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 402259	 Bytes: 4
  %loadMem_402259 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402259 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402259)
  store %struct.Memory* %call_402259, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 40225d	 Bytes: 7
  %loadMem_40225d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40225d = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40225d)
  store %struct.Memory* %call_40225d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402264	 Bytes: 3
  %loadMem_402264 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402264 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402264)
  store %struct.Memory* %call_402264, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 402267	 Bytes: 4
  %loadMem_402267 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402267 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402267)
  store %struct.Memory* %call_402267, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 40226b	 Bytes: 7
  %loadMem_40226b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40226b = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40226b)
  store %struct.Memory* %call_40226b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402272	 Bytes: 3
  %loadMem_402272 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402272 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402272)
  store %struct.Memory* %call_402272, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rcx	 RIP: 402275	 Bytes: 4
  %loadMem_402275 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402275 = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402275)
  store %struct.Memory* %call_402275, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 402279	 Bytes: 5
  %loadMem_402279 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402279 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402279)
  store %struct.Memory* %call_402279, %struct.Memory** %MEMORY

  ; Code: movl -0x6c(%rbp), %eax	 RIP: 40227e	 Bytes: 3
  %loadMem_40227e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40227e = call %struct.Memory* @routine_movl_MINUS0x6c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40227e)
  store %struct.Memory* %call_40227e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 402281	 Bytes: 3
  %loadMem_402281 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402281 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402281)
  store %struct.Memory* %call_402281, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6c(%rbp)	 RIP: 402284	 Bytes: 3
  %loadMem_402284 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402284 = call %struct.Memory* @routine_movl__eax__MINUS0x6c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402284)
  store %struct.Memory* %call_402284, %struct.Memory** %MEMORY

  ; Code: jmpq .L_401fe0	 RIP: 402287	 Bytes: 5
  %loadMem_402287 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402287 = call %struct.Memory* @routine_jmpq_.L_401fe0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402287, i64 -679, i64 5)
  store %struct.Memory* %call_402287, %struct.Memory** %MEMORY

  br label %block_.L_401fe0

  ; Code: .L_40228c:	 RIP: 40228c	 Bytes: 0
block_.L_40228c:

  ; Code: movq 0x20(%rbp), %rax	 RIP: 40228c	 Bytes: 4
  %loadMem_40228c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40228c = call %struct.Memory* @routine_movq_0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40228c)
  store %struct.Memory* %call_40228c, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 402290	 Bytes: 4
  %loadMem_402290 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402290 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402290)
  store %struct.Memory* %call_402290, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 402294	 Bytes: 7
  %loadMem_402294 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402294 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402294)
  store %struct.Memory* %call_402294, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40229b	 Bytes: 3
  %loadMem_40229b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40229b = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40229b)
  store %struct.Memory* %call_40229b, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 40229e	 Bytes: 4
  %loadMem_40229e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40229e = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40229e)
  store %struct.Memory* %call_40229e, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4022a2	 Bytes: 7
  %loadMem_4022a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022a2 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022a2)
  store %struct.Memory* %call_4022a2, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4022a9	 Bytes: 3
  %loadMem_4022a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022a9 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022a9)
  store %struct.Memory* %call_4022a9, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 4022ac	 Bytes: 4
  %loadMem_4022ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022ac = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022ac)
  store %struct.Memory* %call_4022ac, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 4022b0	 Bytes: 5
  %loadMem_4022b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022b0 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022b0)
  store %struct.Memory* %call_4022b0, %struct.Memory** %MEMORY

  ; Code: movq 0x20(%rbp), %rax	 RIP: 4022b5	 Bytes: 4
  %loadMem_4022b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022b5 = call %struct.Memory* @routine_movq_0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022b5)
  store %struct.Memory* %call_4022b5, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 4022b9	 Bytes: 4
  %loadMem_4022b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022b9 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022b9)
  store %struct.Memory* %call_4022b9, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 4022bd	 Bytes: 7
  %loadMem_4022bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022bd = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022bd)
  store %struct.Memory* %call_4022bd, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4022c4	 Bytes: 3
  %loadMem_4022c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022c4 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022c4)
  store %struct.Memory* %call_4022c4, %struct.Memory** %MEMORY

  ; Code: movl -0x68(%rbp), %edx	 RIP: 4022c7	 Bytes: 3
  %loadMem_4022c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022c7 = call %struct.Memory* @routine_movl_MINUS0x68__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022c7)
  store %struct.Memory* %call_4022c7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 4022ca	 Bytes: 3
  %loadMem_4022ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022ca = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022ca)
  store %struct.Memory* %call_4022ca, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4022cd	 Bytes: 3
  %loadMem_4022cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022cd = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022cd)
  store %struct.Memory* %call_4022cd, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4022d0	 Bytes: 7
  %loadMem_4022d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022d0 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022d0)
  store %struct.Memory* %call_4022d0, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4022d7	 Bytes: 3
  %loadMem_4022d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022d7 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022d7)
  store %struct.Memory* %call_4022d7, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 4022da	 Bytes: 4
  %loadMem_4022da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022da = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022da)
  store %struct.Memory* %call_4022da, %struct.Memory** %MEMORY

  ; Code: subsd (%rax,%rcx,8), %xmm0	 RIP: 4022de	 Bytes: 5
  %loadMem_4022de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022de = call %struct.Memory* @routine_subsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022de)
  store %struct.Memory* %call_4022de, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rax	 RIP: 4022e3	 Bytes: 4
  %loadMem_4022e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022e3 = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022e3)
  store %struct.Memory* %call_4022e3, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 4022e7	 Bytes: 4
  %loadMem_4022e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022e7 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022e7)
  store %struct.Memory* %call_4022e7, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4022eb	 Bytes: 7
  %loadMem_4022eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022eb = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022eb)
  store %struct.Memory* %call_4022eb, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4022f2	 Bytes: 3
  %loadMem_4022f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022f2 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022f2)
  store %struct.Memory* %call_4022f2, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 4022f5	 Bytes: 4
  %loadMem_4022f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022f5 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022f5)
  store %struct.Memory* %call_4022f5, %struct.Memory** %MEMORY

  ; Code: addsd (%rax,%rcx,8), %xmm0	 RIP: 4022f9	 Bytes: 5
  %loadMem_4022f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022f9 = call %struct.Memory* @routine_addsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022f9)
  store %struct.Memory* %call_4022f9, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rbp), %rax	 RIP: 4022fe	 Bytes: 4
  %loadMem_4022fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022fe = call %struct.Memory* @routine_movq_0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022fe)
  store %struct.Memory* %call_4022fe, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 402302	 Bytes: 4
  %loadMem_402302 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402302 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402302)
  store %struct.Memory* %call_402302, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 402306	 Bytes: 7
  %loadMem_402306 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402306 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402306)
  store %struct.Memory* %call_402306, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40230d	 Bytes: 3
  %loadMem_40230d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40230d = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40230d)
  store %struct.Memory* %call_40230d, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 402310	 Bytes: 4
  %loadMem_402310 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402310 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402310)
  store %struct.Memory* %call_402310, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402314	 Bytes: 7
  %loadMem_402314 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402314 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402314)
  store %struct.Memory* %call_402314, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40231b	 Bytes: 3
  %loadMem_40231b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40231b = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40231b)
  store %struct.Memory* %call_40231b, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 40231e	 Bytes: 4
  %loadMem_40231e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40231e = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40231e)
  store %struct.Memory* %call_40231e, %struct.Memory** %MEMORY

  ; Code: subsd (%rax,%rcx,8), %xmm0	 RIP: 402322	 Bytes: 5
  %loadMem_402322 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402322 = call %struct.Memory* @routine_subsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402322)
  store %struct.Memory* %call_402322, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rax	 RIP: 402327	 Bytes: 4
  %loadMem_402327 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402327 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402327)
  store %struct.Memory* %call_402327, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 40232b	 Bytes: 4
  %loadMem_40232b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40232b = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40232b)
  store %struct.Memory* %call_40232b, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 40232f	 Bytes: 7
  %loadMem_40232f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40232f = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40232f)
  store %struct.Memory* %call_40232f, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402336	 Bytes: 3
  %loadMem_402336 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402336 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402336)
  store %struct.Memory* %call_402336, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 402339	 Bytes: 4
  %loadMem_402339 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402339 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402339)
  store %struct.Memory* %call_402339, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 40233d	 Bytes: 5
  %loadMem_40233d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40233d = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40233d)
  store %struct.Memory* %call_40233d, %struct.Memory** %MEMORY

  ; Code: movq 0x58(%rbp), %rax	 RIP: 402342	 Bytes: 4
  %loadMem_402342 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402342 = call %struct.Memory* @routine_movq_0x58__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402342)
  store %struct.Memory* %call_402342, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 402346	 Bytes: 4
  %loadMem_402346 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402346 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402346)
  store %struct.Memory* %call_402346, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 40234a	 Bytes: 5
  %loadMem_40234a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40234a = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40234a)
  store %struct.Memory* %call_40234a, %struct.Memory** %MEMORY

  ; Code: movq 0x60(%rbp), %rax	 RIP: 40234f	 Bytes: 4
  %loadMem_40234f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40234f = call %struct.Memory* @routine_movq_0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40234f)
  store %struct.Memory* %call_40234f, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 402353	 Bytes: 4
  %loadMem_402353 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402353 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402353)
  store %struct.Memory* %call_402353, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm0	 RIP: 402357	 Bytes: 5
  %loadMem_402357 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402357 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402357)
  store %struct.Memory* %call_402357, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rbp), %rax	 RIP: 40235c	 Bytes: 4
  %loadMem_40235c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40235c = call %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40235c)
  store %struct.Memory* %call_40235c, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 402360	 Bytes: 4
  %loadMem_402360 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402360 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402360)
  store %struct.Memory* %call_402360, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 402364	 Bytes: 7
  %loadMem_402364 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402364 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402364)
  store %struct.Memory* %call_402364, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40236b	 Bytes: 3
  %loadMem_40236b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40236b = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40236b)
  store %struct.Memory* %call_40236b, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 40236e	 Bytes: 4
  %loadMem_40236e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40236e = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40236e)
  store %struct.Memory* %call_40236e, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402372	 Bytes: 7
  %loadMem_402372 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402372 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402372)
  store %struct.Memory* %call_402372, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402379	 Bytes: 3
  %loadMem_402379 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402379 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402379)
  store %struct.Memory* %call_402379, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 40237c	 Bytes: 4
  %loadMem_40237c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40237c = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40237c)
  store %struct.Memory* %call_40237c, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm0	 RIP: 402380	 Bytes: 5
  %loadMem_402380 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402380 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402380)
  store %struct.Memory* %call_402380, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm1	 RIP: 402385	 Bytes: 5
  %loadMem_402385 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402385 = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402385)
  store %struct.Memory* %call_402385, %struct.Memory** %MEMORY

  ; Code: movq 0x60(%rbp), %rax	 RIP: 40238a	 Bytes: 4
  %loadMem_40238a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40238a = call %struct.Memory* @routine_movq_0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40238a)
  store %struct.Memory* %call_40238a, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 40238e	 Bytes: 4
  %loadMem_40238e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40238e = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40238e)
  store %struct.Memory* %call_40238e, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 402392	 Bytes: 5
  %loadMem_402392 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402392 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402392)
  store %struct.Memory* %call_402392, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rax	 RIP: 402397	 Bytes: 4
  %loadMem_402397 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402397 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402397)
  store %struct.Memory* %call_402397, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 40239b	 Bytes: 4
  %loadMem_40239b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40239b = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40239b)
  store %struct.Memory* %call_40239b, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 40239f	 Bytes: 7
  %loadMem_40239f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40239f = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40239f)
  store %struct.Memory* %call_40239f, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4023a6	 Bytes: 3
  %loadMem_4023a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023a6 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023a6)
  store %struct.Memory* %call_4023a6, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 4023a9	 Bytes: 4
  %loadMem_4023a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023a9 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023a9)
  store %struct.Memory* %call_4023a9, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 4023ad	 Bytes: 5
  %loadMem_4023ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023ad = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023ad)
  store %struct.Memory* %call_4023ad, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 4023b2	 Bytes: 4
  %loadMem_4023b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023b2 = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023b2)
  store %struct.Memory* %call_4023b2, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rbp), %rax	 RIP: 4023b6	 Bytes: 4
  %loadMem_4023b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023b6 = call %struct.Memory* @routine_movq_0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023b6)
  store %struct.Memory* %call_4023b6, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 4023ba	 Bytes: 4
  %loadMem_4023ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023ba = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023ba)
  store %struct.Memory* %call_4023ba, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4023be	 Bytes: 7
  %loadMem_4023be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023be = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023be)
  store %struct.Memory* %call_4023be, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4023c5	 Bytes: 3
  %loadMem_4023c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023c5 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023c5)
  store %struct.Memory* %call_4023c5, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 4023c8	 Bytes: 4
  %loadMem_4023c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023c8 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023c8)
  store %struct.Memory* %call_4023c8, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 4023cc	 Bytes: 5
  %loadMem_4023cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023cc = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023cc)
  store %struct.Memory* %call_4023cc, %struct.Memory** %MEMORY

  ; Code: movq 0x48(%rbp), %rax	 RIP: 4023d1	 Bytes: 4
  %loadMem_4023d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023d1 = call %struct.Memory* @routine_movq_0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023d1)
  store %struct.Memory* %call_4023d1, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 4023d5	 Bytes: 4
  %loadMem_4023d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023d5 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023d5)
  store %struct.Memory* %call_4023d5, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 4023d9	 Bytes: 5
  %loadMem_4023d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023d9 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023d9)
  store %struct.Memory* %call_4023d9, %struct.Memory** %MEMORY

  ; Code: movq 0x50(%rbp), %rax	 RIP: 4023de	 Bytes: 4
  %loadMem_4023de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023de = call %struct.Memory* @routine_movq_0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023de)
  store %struct.Memory* %call_4023de, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 4023e2	 Bytes: 4
  %loadMem_4023e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023e2 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023e2)
  store %struct.Memory* %call_4023e2, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm0	 RIP: 4023e6	 Bytes: 5
  %loadMem_4023e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023e6 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023e6)
  store %struct.Memory* %call_4023e6, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rbp), %rax	 RIP: 4023eb	 Bytes: 4
  %loadMem_4023eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023eb = call %struct.Memory* @routine_movq_0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023eb)
  store %struct.Memory* %call_4023eb, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 4023ef	 Bytes: 4
  %loadMem_4023ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023ef = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023ef)
  store %struct.Memory* %call_4023ef, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 4023f3	 Bytes: 7
  %loadMem_4023f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023f3 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023f3)
  store %struct.Memory* %call_4023f3, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4023fa	 Bytes: 3
  %loadMem_4023fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023fa = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023fa)
  store %struct.Memory* %call_4023fa, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 4023fd	 Bytes: 4
  %loadMem_4023fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023fd = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023fd)
  store %struct.Memory* %call_4023fd, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402401	 Bytes: 7
  %loadMem_402401 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402401 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402401)
  store %struct.Memory* %call_402401, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402408	 Bytes: 3
  %loadMem_402408 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402408 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402408)
  store %struct.Memory* %call_402408, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 40240b	 Bytes: 4
  %loadMem_40240b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40240b = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40240b)
  store %struct.Memory* %call_40240b, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm0	 RIP: 40240f	 Bytes: 5
  %loadMem_40240f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40240f = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40240f)
  store %struct.Memory* %call_40240f, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm1	 RIP: 402414	 Bytes: 5
  %loadMem_402414 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402414 = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402414)
  store %struct.Memory* %call_402414, %struct.Memory** %MEMORY

  ; Code: movq 0x40(%rbp), %rax	 RIP: 402419	 Bytes: 4
  %loadMem_402419 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402419 = call %struct.Memory* @routine_movq_0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402419)
  store %struct.Memory* %call_402419, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 40241d	 Bytes: 4
  %loadMem_40241d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40241d = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40241d)
  store %struct.Memory* %call_40241d, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 402421	 Bytes: 5
  %loadMem_402421 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402421 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402421)
  store %struct.Memory* %call_402421, %struct.Memory** %MEMORY

  ; Code: movq 0x50(%rbp), %rax	 RIP: 402426	 Bytes: 4
  %loadMem_402426 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402426 = call %struct.Memory* @routine_movq_0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402426)
  store %struct.Memory* %call_402426, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 40242a	 Bytes: 4
  %loadMem_40242a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40242a = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40242a)
  store %struct.Memory* %call_40242a, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 40242e	 Bytes: 5
  %loadMem_40242e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40242e = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40242e)
  store %struct.Memory* %call_40242e, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rbp), %rax	 RIP: 402433	 Bytes: 4
  %loadMem_402433 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402433 = call %struct.Memory* @routine_movq_0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402433)
  store %struct.Memory* %call_402433, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 402437	 Bytes: 4
  %loadMem_402437 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402437 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402437)
  store %struct.Memory* %call_402437, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 40243b	 Bytes: 7
  %loadMem_40243b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40243b = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40243b)
  store %struct.Memory* %call_40243b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402442	 Bytes: 3
  %loadMem_402442 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402442 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402442)
  store %struct.Memory* %call_402442, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 402445	 Bytes: 4
  %loadMem_402445 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402445 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402445)
  store %struct.Memory* %call_402445, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 402449	 Bytes: 5
  %loadMem_402449 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402449 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402449)
  store %struct.Memory* %call_402449, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 40244e	 Bytes: 4
  %loadMem_40244e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40244e = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40244e)
  store %struct.Memory* %call_40244e, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm1	 RIP: 402452	 Bytes: 5
  %loadMem_402452 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402452 = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402452)
  store %struct.Memory* %call_402452, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rbp), %rax	 RIP: 402457	 Bytes: 4
  %loadMem_402457 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402457 = call %struct.Memory* @routine_movq_0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402457)
  store %struct.Memory* %call_402457, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 40245b	 Bytes: 4
  %loadMem_40245b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40245b = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40245b)
  store %struct.Memory* %call_40245b, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 40245f	 Bytes: 5
  %loadMem_40245f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40245f = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40245f)
  store %struct.Memory* %call_40245f, %struct.Memory** %MEMORY

  ; Code: movq 0x50(%rbp), %rax	 RIP: 402464	 Bytes: 4
  %loadMem_402464 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402464 = call %struct.Memory* @routine_movq_0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402464)
  store %struct.Memory* %call_402464, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 402468	 Bytes: 4
  %loadMem_402468 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402468 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402468)
  store %struct.Memory* %call_402468, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 40246c	 Bytes: 5
  %loadMem_40246c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40246c = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40246c)
  store %struct.Memory* %call_40246c, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rbp), %rax	 RIP: 402471	 Bytes: 4
  %loadMem_402471 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402471 = call %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402471)
  store %struct.Memory* %call_402471, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 402475	 Bytes: 4
  %loadMem_402475 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402475 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402475)
  store %struct.Memory* %call_402475, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 402479	 Bytes: 7
  %loadMem_402479 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402479 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402479)
  store %struct.Memory* %call_402479, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402480	 Bytes: 3
  %loadMem_402480 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402480 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402480)
  store %struct.Memory* %call_402480, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 402483	 Bytes: 4
  %loadMem_402483 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402483 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402483)
  store %struct.Memory* %call_402483, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402487	 Bytes: 7
  %loadMem_402487 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402487 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402487)
  store %struct.Memory* %call_402487, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40248e	 Bytes: 3
  %loadMem_40248e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40248e = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40248e)
  store %struct.Memory* %call_40248e, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 402491	 Bytes: 4
  %loadMem_402491 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402491 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402491)
  store %struct.Memory* %call_402491, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 402495	 Bytes: 5
  %loadMem_402495 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402495 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402495)
  store %struct.Memory* %call_402495, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 40249a	 Bytes: 4
  %loadMem_40249a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40249a = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40249a)
  store %struct.Memory* %call_40249a, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rbp), %rax	 RIP: 40249e	 Bytes: 4
  %loadMem_40249e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40249e = call %struct.Memory* @routine_movq_0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40249e)
  store %struct.Memory* %call_40249e, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 4024a2	 Bytes: 4
  %loadMem_4024a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024a2 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024a2)
  store %struct.Memory* %call_4024a2, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 4024a6	 Bytes: 7
  %loadMem_4024a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024a6 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024a6)
  store %struct.Memory* %call_4024a6, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4024ad	 Bytes: 3
  %loadMem_4024ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024ad = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024ad)
  store %struct.Memory* %call_4024ad, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 4024b0	 Bytes: 4
  %loadMem_4024b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024b0 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024b0)
  store %struct.Memory* %call_4024b0, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4024b4	 Bytes: 7
  %loadMem_4024b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024b4 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024b4)
  store %struct.Memory* %call_4024b4, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4024bb	 Bytes: 3
  %loadMem_4024bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024bb = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024bb)
  store %struct.Memory* %call_4024bb, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 4024be	 Bytes: 4
  %loadMem_4024be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024be = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024be)
  store %struct.Memory* %call_4024be, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 4024c2	 Bytes: 5
  %loadMem_4024c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024c2 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024c2)
  store %struct.Memory* %call_4024c2, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rbp), %rax	 RIP: 4024c7	 Bytes: 4
  %loadMem_4024c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024c7 = call %struct.Memory* @routine_movq_0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024c7)
  store %struct.Memory* %call_4024c7, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 4024cb	 Bytes: 4
  %loadMem_4024cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024cb = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024cb)
  store %struct.Memory* %call_4024cb, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4024cf	 Bytes: 7
  %loadMem_4024cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024cf = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024cf)
  store %struct.Memory* %call_4024cf, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4024d6	 Bytes: 3
  %loadMem_4024d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024d6 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024d6)
  store %struct.Memory* %call_4024d6, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 4024d9	 Bytes: 4
  %loadMem_4024d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024d9 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024d9)
  store %struct.Memory* %call_4024d9, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 4024dd	 Bytes: 5
  %loadMem_4024dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024dd = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024dd)
  store %struct.Memory* %call_4024dd, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rbp), %rax	 RIP: 4024e2	 Bytes: 4
  %loadMem_4024e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024e2 = call %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024e2)
  store %struct.Memory* %call_4024e2, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 4024e6	 Bytes: 4
  %loadMem_4024e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024e6 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024e6)
  store %struct.Memory* %call_4024e6, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 4024ea	 Bytes: 7
  %loadMem_4024ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024ea = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024ea)
  store %struct.Memory* %call_4024ea, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4024f1	 Bytes: 3
  %loadMem_4024f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024f1 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024f1)
  store %struct.Memory* %call_4024f1, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 4024f4	 Bytes: 4
  %loadMem_4024f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024f4 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024f4)
  store %struct.Memory* %call_4024f4, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4024f8	 Bytes: 7
  %loadMem_4024f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024f8 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024f8)
  store %struct.Memory* %call_4024f8, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4024ff	 Bytes: 3
  %loadMem_4024ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024ff = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024ff)
  store %struct.Memory* %call_4024ff, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 402502	 Bytes: 4
  %loadMem_402502 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402502 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402502)
  store %struct.Memory* %call_402502, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 402506	 Bytes: 5
  %loadMem_402506 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402506 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402506)
  store %struct.Memory* %call_402506, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x6c(%rbp)	 RIP: 40250b	 Bytes: 7
  %loadMem_40250b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40250b = call %struct.Memory* @routine_movl__0x0__MINUS0x6c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40250b)
  store %struct.Memory* %call_40250b, %struct.Memory** %MEMORY

  ; Code: .L_402512:	 RIP: 402512	 Bytes: 0
  br label %block_.L_402512
block_.L_402512:

  ; Code: movl -0x6c(%rbp), %eax	 RIP: 402512	 Bytes: 3
  %loadMem_402512 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402512 = call %struct.Memory* @routine_movl_MINUS0x6c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402512)
  store %struct.Memory* %call_402512, %struct.Memory** %MEMORY

  ; Code: cmpl -0x30(%rbp), %eax	 RIP: 402515	 Bytes: 3
  %loadMem_402515 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402515 = call %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402515)
  store %struct.Memory* %call_402515, %struct.Memory** %MEMORY

  ; Code: jge .L_4027ab	 RIP: 402518	 Bytes: 6
  %loadMem_402518 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402518 = call %struct.Memory* @routine_jge_.L_4027ab(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402518, i8* %BRANCH_TAKEN, i64 659, i64 6, i64 6)
  store %struct.Memory* %call_402518, %struct.Memory** %MEMORY

  %loadBr_402518 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_402518 = icmp eq i8 %loadBr_402518, 1
  br i1 %cmpBr_402518, label %block_.L_4027ab, label %block_40251e

block_40251e:
  ; Code: movq 0x20(%rbp), %rax	 RIP: 40251e	 Bytes: 4
  %loadMem_40251e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40251e = call %struct.Memory* @routine_movq_0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40251e)
  store %struct.Memory* %call_40251e, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 402522	 Bytes: 4
  %loadMem_402522 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402522 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402522)
  store %struct.Memory* %call_402522, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 402526	 Bytes: 7
  %loadMem_402526 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402526 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402526)
  store %struct.Memory* %call_402526, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40252d	 Bytes: 3
  %loadMem_40252d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40252d = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40252d)
  store %struct.Memory* %call_40252d, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 402530	 Bytes: 4
  %loadMem_402530 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402530 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402530)
  store %struct.Memory* %call_402530, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402534	 Bytes: 7
  %loadMem_402534 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402534 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402534)
  store %struct.Memory* %call_402534, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40253b	 Bytes: 3
  %loadMem_40253b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40253b = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40253b)
  store %struct.Memory* %call_40253b, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rcx	 RIP: 40253e	 Bytes: 4
  %loadMem_40253e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40253e = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40253e)
  store %struct.Memory* %call_40253e, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 402542	 Bytes: 5
  %loadMem_402542 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402542 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402542)
  store %struct.Memory* %call_402542, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rax	 RIP: 402547	 Bytes: 4
  %loadMem_402547 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402547 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402547)
  store %struct.Memory* %call_402547, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 40254b	 Bytes: 4
  %loadMem_40254b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40254b = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40254b)
  store %struct.Memory* %call_40254b, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 40254f	 Bytes: 7
  %loadMem_40254f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40254f = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40254f)
  store %struct.Memory* %call_40254f, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402556	 Bytes: 3
  %loadMem_402556 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402556 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402556)
  store %struct.Memory* %call_402556, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rcx	 RIP: 402559	 Bytes: 4
  %loadMem_402559 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402559 = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402559)
  store %struct.Memory* %call_402559, %struct.Memory** %MEMORY

  ; Code: subsd (%rax,%rcx,8), %xmm0	 RIP: 40255d	 Bytes: 5
  %loadMem_40255d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40255d = call %struct.Memory* @routine_subsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40255d)
  store %struct.Memory* %call_40255d, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rbp), %rax	 RIP: 402562	 Bytes: 4
  %loadMem_402562 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402562 = call %struct.Memory* @routine_movq_0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402562)
  store %struct.Memory* %call_402562, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 402566	 Bytes: 4
  %loadMem_402566 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402566 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402566)
  store %struct.Memory* %call_402566, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 40256a	 Bytes: 7
  %loadMem_40256a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40256a = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40256a)
  store %struct.Memory* %call_40256a, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402571	 Bytes: 3
  %loadMem_402571 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402571 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402571)
  store %struct.Memory* %call_402571, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 402574	 Bytes: 4
  %loadMem_402574 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402574 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402574)
  store %struct.Memory* %call_402574, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402578	 Bytes: 7
  %loadMem_402578 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402578 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402578)
  store %struct.Memory* %call_402578, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40257f	 Bytes: 3
  %loadMem_40257f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40257f = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40257f)
  store %struct.Memory* %call_40257f, %struct.Memory** %MEMORY

  ; Code: movl -0x6c(%rbp), %edx	 RIP: 402582	 Bytes: 3
  %loadMem_402582 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402582 = call %struct.Memory* @routine_movl_MINUS0x6c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402582)
  store %struct.Memory* %call_402582, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 402585	 Bytes: 3
  %loadMem_402585 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402585 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402585)
  store %struct.Memory* %call_402585, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 402588	 Bytes: 3
  %loadMem_402588 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402588 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402588)
  store %struct.Memory* %call_402588, %struct.Memory** %MEMORY

  ; Code: addsd (%rax,%rcx,8), %xmm0	 RIP: 40258b	 Bytes: 5
  %loadMem_40258b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40258b = call %struct.Memory* @routine_addsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40258b)
  store %struct.Memory* %call_40258b, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rbp), %rax	 RIP: 402590	 Bytes: 4
  %loadMem_402590 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402590 = call %struct.Memory* @routine_movq_0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402590)
  store %struct.Memory* %call_402590, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 402594	 Bytes: 4
  %loadMem_402594 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402594 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402594)
  store %struct.Memory* %call_402594, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 402598	 Bytes: 7
  %loadMem_402598 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402598 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402598)
  store %struct.Memory* %call_402598, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40259f	 Bytes: 3
  %loadMem_40259f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40259f = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40259f)
  store %struct.Memory* %call_40259f, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 4025a2	 Bytes: 4
  %loadMem_4025a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025a2 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025a2)
  store %struct.Memory* %call_4025a2, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4025a6	 Bytes: 7
  %loadMem_4025a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025a6 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025a6)
  store %struct.Memory* %call_4025a6, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4025ad	 Bytes: 3
  %loadMem_4025ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025ad = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025ad)
  store %struct.Memory* %call_4025ad, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rcx	 RIP: 4025b0	 Bytes: 4
  %loadMem_4025b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025b0 = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025b0)
  store %struct.Memory* %call_4025b0, %struct.Memory** %MEMORY

  ; Code: subsd (%rax,%rcx,8), %xmm0	 RIP: 4025b4	 Bytes: 5
  %loadMem_4025b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025b4 = call %struct.Memory* @routine_subsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025b4)
  store %struct.Memory* %call_4025b4, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rax	 RIP: 4025b9	 Bytes: 4
  %loadMem_4025b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025b9 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025b9)
  store %struct.Memory* %call_4025b9, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 4025bd	 Bytes: 4
  %loadMem_4025bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025bd = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025bd)
  store %struct.Memory* %call_4025bd, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4025c1	 Bytes: 7
  %loadMem_4025c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025c1 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025c1)
  store %struct.Memory* %call_4025c1, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4025c8	 Bytes: 3
  %loadMem_4025c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025c8 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025c8)
  store %struct.Memory* %call_4025c8, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 4025cb	 Bytes: 4
  %loadMem_4025cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025cb = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025cb)
  store %struct.Memory* %call_4025cb, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 4025cf	 Bytes: 5
  %loadMem_4025cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025cf = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025cf)
  store %struct.Memory* %call_4025cf, %struct.Memory** %MEMORY

  ; Code: movq 0x58(%rbp), %rax	 RIP: 4025d4	 Bytes: 4
  %loadMem_4025d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025d4 = call %struct.Memory* @routine_movq_0x58__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025d4)
  store %struct.Memory* %call_4025d4, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 4025d8	 Bytes: 4
  %loadMem_4025d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025d8 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025d8)
  store %struct.Memory* %call_4025d8, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 4025dc	 Bytes: 5
  %loadMem_4025dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025dc = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025dc)
  store %struct.Memory* %call_4025dc, %struct.Memory** %MEMORY

  ; Code: movq 0x60(%rbp), %rax	 RIP: 4025e1	 Bytes: 4
  %loadMem_4025e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025e1 = call %struct.Memory* @routine_movq_0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025e1)
  store %struct.Memory* %call_4025e1, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 4025e5	 Bytes: 4
  %loadMem_4025e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025e5 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025e5)
  store %struct.Memory* %call_4025e5, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm0	 RIP: 4025e9	 Bytes: 5
  %loadMem_4025e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025e9 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025e9)
  store %struct.Memory* %call_4025e9, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rbp), %rax	 RIP: 4025ee	 Bytes: 4
  %loadMem_4025ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025ee = call %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025ee)
  store %struct.Memory* %call_4025ee, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 4025f2	 Bytes: 4
  %loadMem_4025f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025f2 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025f2)
  store %struct.Memory* %call_4025f2, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 4025f6	 Bytes: 7
  %loadMem_4025f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025f6 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025f6)
  store %struct.Memory* %call_4025f6, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4025fd	 Bytes: 3
  %loadMem_4025fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025fd = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025fd)
  store %struct.Memory* %call_4025fd, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 402600	 Bytes: 4
  %loadMem_402600 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402600 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402600)
  store %struct.Memory* %call_402600, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402604	 Bytes: 7
  %loadMem_402604 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402604 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402604)
  store %struct.Memory* %call_402604, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40260b	 Bytes: 3
  %loadMem_40260b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40260b = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40260b)
  store %struct.Memory* %call_40260b, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rcx	 RIP: 40260e	 Bytes: 4
  %loadMem_40260e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40260e = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40260e)
  store %struct.Memory* %call_40260e, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm0	 RIP: 402612	 Bytes: 5
  %loadMem_402612 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402612 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402612)
  store %struct.Memory* %call_402612, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm1	 RIP: 402617	 Bytes: 5
  %loadMem_402617 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402617 = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402617)
  store %struct.Memory* %call_402617, %struct.Memory** %MEMORY

  ; Code: movq 0x60(%rbp), %rax	 RIP: 40261c	 Bytes: 4
  %loadMem_40261c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40261c = call %struct.Memory* @routine_movq_0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40261c)
  store %struct.Memory* %call_40261c, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 402620	 Bytes: 4
  %loadMem_402620 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402620 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402620)
  store %struct.Memory* %call_402620, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 402624	 Bytes: 5
  %loadMem_402624 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402624 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402624)
  store %struct.Memory* %call_402624, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rax	 RIP: 402629	 Bytes: 4
  %loadMem_402629 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402629 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402629)
  store %struct.Memory* %call_402629, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 40262d	 Bytes: 4
  %loadMem_40262d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40262d = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40262d)
  store %struct.Memory* %call_40262d, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402631	 Bytes: 7
  %loadMem_402631 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402631 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402631)
  store %struct.Memory* %call_402631, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402638	 Bytes: 3
  %loadMem_402638 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402638 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402638)
  store %struct.Memory* %call_402638, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 40263b	 Bytes: 4
  %loadMem_40263b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40263b = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40263b)
  store %struct.Memory* %call_40263b, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 40263f	 Bytes: 5
  %loadMem_40263f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40263f = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40263f)
  store %struct.Memory* %call_40263f, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 402644	 Bytes: 4
  %loadMem_402644 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402644 = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402644)
  store %struct.Memory* %call_402644, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rbp), %rax	 RIP: 402648	 Bytes: 4
  %loadMem_402648 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402648 = call %struct.Memory* @routine_movq_0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402648)
  store %struct.Memory* %call_402648, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 40264c	 Bytes: 4
  %loadMem_40264c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40264c = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40264c)
  store %struct.Memory* %call_40264c, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402650	 Bytes: 7
  %loadMem_402650 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402650 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402650)
  store %struct.Memory* %call_402650, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402657	 Bytes: 3
  %loadMem_402657 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402657 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402657)
  store %struct.Memory* %call_402657, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 40265a	 Bytes: 4
  %loadMem_40265a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40265a = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40265a)
  store %struct.Memory* %call_40265a, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 40265e	 Bytes: 5
  %loadMem_40265e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40265e = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40265e)
  store %struct.Memory* %call_40265e, %struct.Memory** %MEMORY

  ; Code: movq 0x48(%rbp), %rax	 RIP: 402663	 Bytes: 4
  %loadMem_402663 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402663 = call %struct.Memory* @routine_movq_0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402663)
  store %struct.Memory* %call_402663, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rcx	 RIP: 402667	 Bytes: 4
  %loadMem_402667 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402667 = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402667)
  store %struct.Memory* %call_402667, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 40266b	 Bytes: 5
  %loadMem_40266b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40266b = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40266b)
  store %struct.Memory* %call_40266b, %struct.Memory** %MEMORY

  ; Code: movq 0x50(%rbp), %rax	 RIP: 402670	 Bytes: 4
  %loadMem_402670 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402670 = call %struct.Memory* @routine_movq_0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402670)
  store %struct.Memory* %call_402670, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rcx	 RIP: 402674	 Bytes: 4
  %loadMem_402674 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402674 = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402674)
  store %struct.Memory* %call_402674, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm0	 RIP: 402678	 Bytes: 5
  %loadMem_402678 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402678 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402678)
  store %struct.Memory* %call_402678, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rbp), %rax	 RIP: 40267d	 Bytes: 4
  %loadMem_40267d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40267d = call %struct.Memory* @routine_movq_0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40267d)
  store %struct.Memory* %call_40267d, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 402681	 Bytes: 4
  %loadMem_402681 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402681 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402681)
  store %struct.Memory* %call_402681, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 402685	 Bytes: 7
  %loadMem_402685 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402685 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402685)
  store %struct.Memory* %call_402685, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40268c	 Bytes: 3
  %loadMem_40268c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40268c = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40268c)
  store %struct.Memory* %call_40268c, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 40268f	 Bytes: 4
  %loadMem_40268f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40268f = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40268f)
  store %struct.Memory* %call_40268f, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402693	 Bytes: 7
  %loadMem_402693 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402693 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402693)
  store %struct.Memory* %call_402693, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40269a	 Bytes: 3
  %loadMem_40269a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40269a = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40269a)
  store %struct.Memory* %call_40269a, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rcx	 RIP: 40269d	 Bytes: 4
  %loadMem_40269d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40269d = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40269d)
  store %struct.Memory* %call_40269d, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm0	 RIP: 4026a1	 Bytes: 5
  %loadMem_4026a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026a1 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026a1)
  store %struct.Memory* %call_4026a1, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm1	 RIP: 4026a6	 Bytes: 5
  %loadMem_4026a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026a6 = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026a6)
  store %struct.Memory* %call_4026a6, %struct.Memory** %MEMORY

  ; Code: movq 0x40(%rbp), %rax	 RIP: 4026ab	 Bytes: 4
  %loadMem_4026ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026ab = call %struct.Memory* @routine_movq_0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026ab)
  store %struct.Memory* %call_4026ab, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 4026af	 Bytes: 4
  %loadMem_4026af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026af = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026af)
  store %struct.Memory* %call_4026af, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 4026b3	 Bytes: 5
  %loadMem_4026b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026b3 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026b3)
  store %struct.Memory* %call_4026b3, %struct.Memory** %MEMORY

  ; Code: movq 0x50(%rbp), %rax	 RIP: 4026b8	 Bytes: 4
  %loadMem_4026b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026b8 = call %struct.Memory* @routine_movq_0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026b8)
  store %struct.Memory* %call_4026b8, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rcx	 RIP: 4026bc	 Bytes: 4
  %loadMem_4026bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026bc = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026bc)
  store %struct.Memory* %call_4026bc, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 4026c0	 Bytes: 5
  %loadMem_4026c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026c0 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026c0)
  store %struct.Memory* %call_4026c0, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rbp), %rax	 RIP: 4026c5	 Bytes: 4
  %loadMem_4026c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026c5 = call %struct.Memory* @routine_movq_0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026c5)
  store %struct.Memory* %call_4026c5, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 4026c9	 Bytes: 4
  %loadMem_4026c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026c9 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026c9)
  store %struct.Memory* %call_4026c9, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4026cd	 Bytes: 7
  %loadMem_4026cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026cd = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026cd)
  store %struct.Memory* %call_4026cd, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4026d4	 Bytes: 3
  %loadMem_4026d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026d4 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026d4)
  store %struct.Memory* %call_4026d4, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 4026d7	 Bytes: 4
  %loadMem_4026d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026d7 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026d7)
  store %struct.Memory* %call_4026d7, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 4026db	 Bytes: 5
  %loadMem_4026db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026db = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026db)
  store %struct.Memory* %call_4026db, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 4026e0	 Bytes: 4
  %loadMem_4026e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026e0 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026e0)
  store %struct.Memory* %call_4026e0, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm1	 RIP: 4026e4	 Bytes: 5
  %loadMem_4026e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026e4 = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026e4)
  store %struct.Memory* %call_4026e4, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rbp), %rax	 RIP: 4026e9	 Bytes: 4
  %loadMem_4026e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026e9 = call %struct.Memory* @routine_movq_0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026e9)
  store %struct.Memory* %call_4026e9, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 4026ed	 Bytes: 4
  %loadMem_4026ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026ed = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026ed)
  store %struct.Memory* %call_4026ed, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 4026f1	 Bytes: 5
  %loadMem_4026f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026f1 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026f1)
  store %struct.Memory* %call_4026f1, %struct.Memory** %MEMORY

  ; Code: movq 0x50(%rbp), %rax	 RIP: 4026f6	 Bytes: 4
  %loadMem_4026f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026f6 = call %struct.Memory* @routine_movq_0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026f6)
  store %struct.Memory* %call_4026f6, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rcx	 RIP: 4026fa	 Bytes: 4
  %loadMem_4026fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026fa = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026fa)
  store %struct.Memory* %call_4026fa, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 4026fe	 Bytes: 5
  %loadMem_4026fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026fe = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026fe)
  store %struct.Memory* %call_4026fe, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rbp), %rax	 RIP: 402703	 Bytes: 4
  %loadMem_402703 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402703 = call %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402703)
  store %struct.Memory* %call_402703, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 402707	 Bytes: 4
  %loadMem_402707 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402707 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402707)
  store %struct.Memory* %call_402707, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 40270b	 Bytes: 7
  %loadMem_40270b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40270b = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40270b)
  store %struct.Memory* %call_40270b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402712	 Bytes: 3
  %loadMem_402712 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402712 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402712)
  store %struct.Memory* %call_402712, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 402715	 Bytes: 4
  %loadMem_402715 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402715 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402715)
  store %struct.Memory* %call_402715, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402719	 Bytes: 7
  %loadMem_402719 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402719 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402719)
  store %struct.Memory* %call_402719, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402720	 Bytes: 3
  %loadMem_402720 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402720 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402720)
  store %struct.Memory* %call_402720, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rcx	 RIP: 402723	 Bytes: 4
  %loadMem_402723 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402723 = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402723)
  store %struct.Memory* %call_402723, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 402727	 Bytes: 5
  %loadMem_402727 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402727 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402727)
  store %struct.Memory* %call_402727, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 40272c	 Bytes: 4
  %loadMem_40272c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40272c = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40272c)
  store %struct.Memory* %call_40272c, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rbp), %rax	 RIP: 402730	 Bytes: 4
  %loadMem_402730 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402730 = call %struct.Memory* @routine_movq_0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402730)
  store %struct.Memory* %call_402730, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 402734	 Bytes: 4
  %loadMem_402734 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402734 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402734)
  store %struct.Memory* %call_402734, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 402738	 Bytes: 7
  %loadMem_402738 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402738 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402738)
  store %struct.Memory* %call_402738, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40273f	 Bytes: 3
  %loadMem_40273f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40273f = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40273f)
  store %struct.Memory* %call_40273f, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 402742	 Bytes: 4
  %loadMem_402742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402742 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402742)
  store %struct.Memory* %call_402742, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402746	 Bytes: 7
  %loadMem_402746 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402746 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402746)
  store %struct.Memory* %call_402746, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40274d	 Bytes: 3
  %loadMem_40274d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40274d = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40274d)
  store %struct.Memory* %call_40274d, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rcx	 RIP: 402750	 Bytes: 4
  %loadMem_402750 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402750 = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402750)
  store %struct.Memory* %call_402750, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 402754	 Bytes: 5
  %loadMem_402754 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402754 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402754)
  store %struct.Memory* %call_402754, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rbp), %rax	 RIP: 402759	 Bytes: 4
  %loadMem_402759 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402759 = call %struct.Memory* @routine_movq_0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402759)
  store %struct.Memory* %call_402759, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 40275d	 Bytes: 4
  %loadMem_40275d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40275d = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40275d)
  store %struct.Memory* %call_40275d, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402761	 Bytes: 7
  %loadMem_402761 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402761 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402761)
  store %struct.Memory* %call_402761, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402768	 Bytes: 3
  %loadMem_402768 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402768 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402768)
  store %struct.Memory* %call_402768, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 40276b	 Bytes: 4
  %loadMem_40276b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40276b = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40276b)
  store %struct.Memory* %call_40276b, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 40276f	 Bytes: 5
  %loadMem_40276f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40276f = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40276f)
  store %struct.Memory* %call_40276f, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rbp), %rax	 RIP: 402774	 Bytes: 4
  %loadMem_402774 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402774 = call %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402774)
  store %struct.Memory* %call_402774, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 402778	 Bytes: 4
  %loadMem_402778 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402778 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402778)
  store %struct.Memory* %call_402778, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 40277c	 Bytes: 7
  %loadMem_40277c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40277c = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40277c)
  store %struct.Memory* %call_40277c, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402783	 Bytes: 3
  %loadMem_402783 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402783 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402783)
  store %struct.Memory* %call_402783, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 402786	 Bytes: 4
  %loadMem_402786 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402786 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402786)
  store %struct.Memory* %call_402786, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 40278a	 Bytes: 7
  %loadMem_40278a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40278a = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40278a)
  store %struct.Memory* %call_40278a, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402791	 Bytes: 3
  %loadMem_402791 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402791 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402791)
  store %struct.Memory* %call_402791, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rcx	 RIP: 402794	 Bytes: 4
  %loadMem_402794 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402794 = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402794)
  store %struct.Memory* %call_402794, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 402798	 Bytes: 5
  %loadMem_402798 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402798 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402798)
  store %struct.Memory* %call_402798, %struct.Memory** %MEMORY

  ; Code: movl -0x6c(%rbp), %eax	 RIP: 40279d	 Bytes: 3
  %loadMem_40279d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40279d = call %struct.Memory* @routine_movl_MINUS0x6c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40279d)
  store %struct.Memory* %call_40279d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4027a0	 Bytes: 3
  %loadMem_4027a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027a0 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027a0)
  store %struct.Memory* %call_4027a0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6c(%rbp)	 RIP: 4027a3	 Bytes: 3
  %loadMem_4027a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027a3 = call %struct.Memory* @routine_movl__eax__MINUS0x6c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027a3)
  store %struct.Memory* %call_4027a3, %struct.Memory** %MEMORY

  ; Code: jmpq .L_402512	 RIP: 4027a6	 Bytes: 5
  %loadMem_4027a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027a6 = call %struct.Memory* @routine_jmpq_.L_402512(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027a6, i64 -660, i64 5)
  store %struct.Memory* %call_4027a6, %struct.Memory** %MEMORY

  br label %block_.L_402512

  ; Code: .L_4027ab:	 RIP: 4027ab	 Bytes: 0
block_.L_4027ab:

  ; Code: movq 0x20(%rbp), %rax	 RIP: 4027ab	 Bytes: 4
  %loadMem_4027ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027ab = call %struct.Memory* @routine_movq_0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027ab)
  store %struct.Memory* %call_4027ab, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 4027af	 Bytes: 4
  %loadMem_4027af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027af = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027af)
  store %struct.Memory* %call_4027af, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 4027b3	 Bytes: 7
  %loadMem_4027b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027b3 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027b3)
  store %struct.Memory* %call_4027b3, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4027ba	 Bytes: 3
  %loadMem_4027ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027ba = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027ba)
  store %struct.Memory* %call_4027ba, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 4027bd	 Bytes: 4
  %loadMem_4027bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027bd = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027bd)
  store %struct.Memory* %call_4027bd, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4027c1	 Bytes: 7
  %loadMem_4027c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027c1 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027c1)
  store %struct.Memory* %call_4027c1, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4027c8	 Bytes: 3
  %loadMem_4027c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027c8 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027c8)
  store %struct.Memory* %call_4027c8, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 4027cb	 Bytes: 4
  %loadMem_4027cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027cb = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027cb)
  store %struct.Memory* %call_4027cb, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 4027cf	 Bytes: 5
  %loadMem_4027cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027cf = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027cf)
  store %struct.Memory* %call_4027cf, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rax	 RIP: 4027d4	 Bytes: 4
  %loadMem_4027d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027d4 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027d4)
  store %struct.Memory* %call_4027d4, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 4027d8	 Bytes: 4
  %loadMem_4027d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027d8 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027d8)
  store %struct.Memory* %call_4027d8, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4027dc	 Bytes: 7
  %loadMem_4027dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027dc = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027dc)
  store %struct.Memory* %call_4027dc, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4027e3	 Bytes: 3
  %loadMem_4027e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027e3 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027e3)
  store %struct.Memory* %call_4027e3, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 4027e6	 Bytes: 4
  %loadMem_4027e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027e6 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027e6)
  store %struct.Memory* %call_4027e6, %struct.Memory** %MEMORY

  ; Code: subsd (%rax,%rcx,8), %xmm0	 RIP: 4027ea	 Bytes: 5
  %loadMem_4027ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027ea = call %struct.Memory* @routine_subsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027ea)
  store %struct.Memory* %call_4027ea, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rax	 RIP: 4027ef	 Bytes: 4
  %loadMem_4027ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027ef = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027ef)
  store %struct.Memory* %call_4027ef, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 4027f3	 Bytes: 4
  %loadMem_4027f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027f3 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027f3)
  store %struct.Memory* %call_4027f3, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4027f7	 Bytes: 7
  %loadMem_4027f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027f7 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027f7)
  store %struct.Memory* %call_4027f7, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4027fe	 Bytes: 3
  %loadMem_4027fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027fe = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027fe)
  store %struct.Memory* %call_4027fe, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 402801	 Bytes: 4
  %loadMem_402801 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402801 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402801)
  store %struct.Memory* %call_402801, %struct.Memory** %MEMORY

  ; Code: addsd (%rax,%rcx,8), %xmm0	 RIP: 402805	 Bytes: 5
  %loadMem_402805 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402805 = call %struct.Memory* @routine_addsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402805)
  store %struct.Memory* %call_402805, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rbp), %rax	 RIP: 40280a	 Bytes: 4
  %loadMem_40280a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40280a = call %struct.Memory* @routine_movq_0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40280a)
  store %struct.Memory* %call_40280a, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 40280e	 Bytes: 4
  %loadMem_40280e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40280e = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40280e)
  store %struct.Memory* %call_40280e, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 402812	 Bytes: 7
  %loadMem_402812 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402812 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402812)
  store %struct.Memory* %call_402812, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402819	 Bytes: 3
  %loadMem_402819 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402819 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402819)
  store %struct.Memory* %call_402819, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 40281c	 Bytes: 4
  %loadMem_40281c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40281c = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40281c)
  store %struct.Memory* %call_40281c, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402820	 Bytes: 7
  %loadMem_402820 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402820 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402820)
  store %struct.Memory* %call_402820, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402827	 Bytes: 3
  %loadMem_402827 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402827 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402827)
  store %struct.Memory* %call_402827, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 40282a	 Bytes: 4
  %loadMem_40282a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40282a = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40282a)
  store %struct.Memory* %call_40282a, %struct.Memory** %MEMORY

  ; Code: subsd (%rax,%rcx,8), %xmm0	 RIP: 40282e	 Bytes: 5
  %loadMem_40282e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40282e = call %struct.Memory* @routine_subsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40282e)
  store %struct.Memory* %call_40282e, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rax	 RIP: 402833	 Bytes: 4
  %loadMem_402833 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402833 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402833)
  store %struct.Memory* %call_402833, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 402837	 Bytes: 4
  %loadMem_402837 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402837 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402837)
  store %struct.Memory* %call_402837, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 40283b	 Bytes: 7
  %loadMem_40283b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40283b = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40283b)
  store %struct.Memory* %call_40283b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402842	 Bytes: 3
  %loadMem_402842 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402842 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402842)
  store %struct.Memory* %call_402842, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 402845	 Bytes: 4
  %loadMem_402845 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402845 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402845)
  store %struct.Memory* %call_402845, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 402849	 Bytes: 5
  %loadMem_402849 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402849 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402849)
  store %struct.Memory* %call_402849, %struct.Memory** %MEMORY

  ; Code: movq 0x58(%rbp), %rax	 RIP: 40284e	 Bytes: 4
  %loadMem_40284e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40284e = call %struct.Memory* @routine_movq_0x58__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40284e)
  store %struct.Memory* %call_40284e, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 402852	 Bytes: 4
  %loadMem_402852 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402852 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402852)
  store %struct.Memory* %call_402852, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 402856	 Bytes: 5
  %loadMem_402856 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402856 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402856)
  store %struct.Memory* %call_402856, %struct.Memory** %MEMORY

  ; Code: movq 0x60(%rbp), %rax	 RIP: 40285b	 Bytes: 4
  %loadMem_40285b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40285b = call %struct.Memory* @routine_movq_0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40285b)
  store %struct.Memory* %call_40285b, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 40285f	 Bytes: 4
  %loadMem_40285f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40285f = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40285f)
  store %struct.Memory* %call_40285f, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm0	 RIP: 402863	 Bytes: 5
  %loadMem_402863 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402863 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402863)
  store %struct.Memory* %call_402863, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rbp), %rax	 RIP: 402868	 Bytes: 4
  %loadMem_402868 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402868 = call %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402868)
  store %struct.Memory* %call_402868, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 40286c	 Bytes: 4
  %loadMem_40286c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40286c = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40286c)
  store %struct.Memory* %call_40286c, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 402870	 Bytes: 7
  %loadMem_402870 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402870 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402870)
  store %struct.Memory* %call_402870, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402877	 Bytes: 3
  %loadMem_402877 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402877 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402877)
  store %struct.Memory* %call_402877, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 40287a	 Bytes: 4
  %loadMem_40287a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40287a = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40287a)
  store %struct.Memory* %call_40287a, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 40287e	 Bytes: 7
  %loadMem_40287e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40287e = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40287e)
  store %struct.Memory* %call_40287e, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402885	 Bytes: 3
  %loadMem_402885 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402885 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402885)
  store %struct.Memory* %call_402885, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 402888	 Bytes: 4
  %loadMem_402888 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402888 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402888)
  store %struct.Memory* %call_402888, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm0	 RIP: 40288c	 Bytes: 5
  %loadMem_40288c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40288c = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40288c)
  store %struct.Memory* %call_40288c, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm1	 RIP: 402891	 Bytes: 5
  %loadMem_402891 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402891 = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402891)
  store %struct.Memory* %call_402891, %struct.Memory** %MEMORY

  ; Code: movq 0x60(%rbp), %rax	 RIP: 402896	 Bytes: 4
  %loadMem_402896 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402896 = call %struct.Memory* @routine_movq_0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402896)
  store %struct.Memory* %call_402896, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 40289a	 Bytes: 4
  %loadMem_40289a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40289a = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40289a)
  store %struct.Memory* %call_40289a, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 40289e	 Bytes: 5
  %loadMem_40289e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40289e = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40289e)
  store %struct.Memory* %call_40289e, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rax	 RIP: 4028a3	 Bytes: 4
  %loadMem_4028a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028a3 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028a3)
  store %struct.Memory* %call_4028a3, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 4028a7	 Bytes: 4
  %loadMem_4028a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028a7 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028a7)
  store %struct.Memory* %call_4028a7, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4028ab	 Bytes: 7
  %loadMem_4028ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028ab = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028ab)
  store %struct.Memory* %call_4028ab, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4028b2	 Bytes: 3
  %loadMem_4028b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028b2 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028b2)
  store %struct.Memory* %call_4028b2, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 4028b5	 Bytes: 4
  %loadMem_4028b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028b5 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028b5)
  store %struct.Memory* %call_4028b5, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 4028b9	 Bytes: 5
  %loadMem_4028b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028b9 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028b9)
  store %struct.Memory* %call_4028b9, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 4028be	 Bytes: 4
  %loadMem_4028be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028be = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028be)
  store %struct.Memory* %call_4028be, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rbp), %rax	 RIP: 4028c2	 Bytes: 4
  %loadMem_4028c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028c2 = call %struct.Memory* @routine_movq_0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028c2)
  store %struct.Memory* %call_4028c2, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 4028c6	 Bytes: 4
  %loadMem_4028c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028c6 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028c6)
  store %struct.Memory* %call_4028c6, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4028ca	 Bytes: 7
  %loadMem_4028ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028ca = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028ca)
  store %struct.Memory* %call_4028ca, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4028d1	 Bytes: 3
  %loadMem_4028d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028d1 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028d1)
  store %struct.Memory* %call_4028d1, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 4028d4	 Bytes: 4
  %loadMem_4028d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028d4 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028d4)
  store %struct.Memory* %call_4028d4, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 4028d8	 Bytes: 5
  %loadMem_4028d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028d8 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028d8)
  store %struct.Memory* %call_4028d8, %struct.Memory** %MEMORY

  ; Code: movq 0x48(%rbp), %rax	 RIP: 4028dd	 Bytes: 4
  %loadMem_4028dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028dd = call %struct.Memory* @routine_movq_0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028dd)
  store %struct.Memory* %call_4028dd, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 4028e1	 Bytes: 4
  %loadMem_4028e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028e1 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028e1)
  store %struct.Memory* %call_4028e1, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 4028e5	 Bytes: 5
  %loadMem_4028e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028e5 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028e5)
  store %struct.Memory* %call_4028e5, %struct.Memory** %MEMORY

  ; Code: movq 0x50(%rbp), %rax	 RIP: 4028ea	 Bytes: 4
  %loadMem_4028ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028ea = call %struct.Memory* @routine_movq_0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028ea)
  store %struct.Memory* %call_4028ea, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 4028ee	 Bytes: 4
  %loadMem_4028ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028ee = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028ee)
  store %struct.Memory* %call_4028ee, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm0	 RIP: 4028f2	 Bytes: 5
  %loadMem_4028f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028f2 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028f2)
  store %struct.Memory* %call_4028f2, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rbp), %rax	 RIP: 4028f7	 Bytes: 4
  %loadMem_4028f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028f7 = call %struct.Memory* @routine_movq_0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028f7)
  store %struct.Memory* %call_4028f7, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 4028fb	 Bytes: 4
  %loadMem_4028fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028fb = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028fb)
  store %struct.Memory* %call_4028fb, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 4028ff	 Bytes: 7
  %loadMem_4028ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028ff = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028ff)
  store %struct.Memory* %call_4028ff, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402906	 Bytes: 3
  %loadMem_402906 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402906 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402906)
  store %struct.Memory* %call_402906, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 402909	 Bytes: 4
  %loadMem_402909 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402909 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402909)
  store %struct.Memory* %call_402909, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 40290d	 Bytes: 7
  %loadMem_40290d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40290d = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40290d)
  store %struct.Memory* %call_40290d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402914	 Bytes: 3
  %loadMem_402914 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402914 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402914)
  store %struct.Memory* %call_402914, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 402917	 Bytes: 4
  %loadMem_402917 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402917 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402917)
  store %struct.Memory* %call_402917, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm0	 RIP: 40291b	 Bytes: 5
  %loadMem_40291b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40291b = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40291b)
  store %struct.Memory* %call_40291b, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm1	 RIP: 402920	 Bytes: 5
  %loadMem_402920 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402920 = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402920)
  store %struct.Memory* %call_402920, %struct.Memory** %MEMORY

  ; Code: movq 0x40(%rbp), %rax	 RIP: 402925	 Bytes: 4
  %loadMem_402925 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402925 = call %struct.Memory* @routine_movq_0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402925)
  store %struct.Memory* %call_402925, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 402929	 Bytes: 4
  %loadMem_402929 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402929 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402929)
  store %struct.Memory* %call_402929, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 40292d	 Bytes: 5
  %loadMem_40292d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40292d = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40292d)
  store %struct.Memory* %call_40292d, %struct.Memory** %MEMORY

  ; Code: movq 0x50(%rbp), %rax	 RIP: 402932	 Bytes: 4
  %loadMem_402932 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402932 = call %struct.Memory* @routine_movq_0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402932)
  store %struct.Memory* %call_402932, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 402936	 Bytes: 4
  %loadMem_402936 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402936 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402936)
  store %struct.Memory* %call_402936, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 40293a	 Bytes: 5
  %loadMem_40293a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40293a = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40293a)
  store %struct.Memory* %call_40293a, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rbp), %rax	 RIP: 40293f	 Bytes: 4
  %loadMem_40293f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40293f = call %struct.Memory* @routine_movq_0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40293f)
  store %struct.Memory* %call_40293f, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 402943	 Bytes: 4
  %loadMem_402943 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402943 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402943)
  store %struct.Memory* %call_402943, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402947	 Bytes: 7
  %loadMem_402947 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402947 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402947)
  store %struct.Memory* %call_402947, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40294e	 Bytes: 3
  %loadMem_40294e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40294e = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40294e)
  store %struct.Memory* %call_40294e, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 402951	 Bytes: 4
  %loadMem_402951 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402951 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402951)
  store %struct.Memory* %call_402951, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 402955	 Bytes: 5
  %loadMem_402955 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402955 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402955)
  store %struct.Memory* %call_402955, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 40295a	 Bytes: 4
  %loadMem_40295a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40295a = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40295a)
  store %struct.Memory* %call_40295a, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm1	 RIP: 40295e	 Bytes: 5
  %loadMem_40295e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40295e = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40295e)
  store %struct.Memory* %call_40295e, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rbp), %rax	 RIP: 402963	 Bytes: 4
  %loadMem_402963 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402963 = call %struct.Memory* @routine_movq_0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402963)
  store %struct.Memory* %call_402963, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 402967	 Bytes: 4
  %loadMem_402967 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402967 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402967)
  store %struct.Memory* %call_402967, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 40296b	 Bytes: 5
  %loadMem_40296b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40296b = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40296b)
  store %struct.Memory* %call_40296b, %struct.Memory** %MEMORY

  ; Code: movq 0x50(%rbp), %rax	 RIP: 402970	 Bytes: 4
  %loadMem_402970 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402970 = call %struct.Memory* @routine_movq_0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402970)
  store %struct.Memory* %call_402970, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 402974	 Bytes: 4
  %loadMem_402974 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402974 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402974)
  store %struct.Memory* %call_402974, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 402978	 Bytes: 5
  %loadMem_402978 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402978 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402978)
  store %struct.Memory* %call_402978, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rbp), %rax	 RIP: 40297d	 Bytes: 4
  %loadMem_40297d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40297d = call %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40297d)
  store %struct.Memory* %call_40297d, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 402981	 Bytes: 4
  %loadMem_402981 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402981 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402981)
  store %struct.Memory* %call_402981, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 402985	 Bytes: 7
  %loadMem_402985 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402985 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402985)
  store %struct.Memory* %call_402985, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40298c	 Bytes: 3
  %loadMem_40298c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40298c = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40298c)
  store %struct.Memory* %call_40298c, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 40298f	 Bytes: 4
  %loadMem_40298f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40298f = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40298f)
  store %struct.Memory* %call_40298f, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402993	 Bytes: 7
  %loadMem_402993 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402993 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402993)
  store %struct.Memory* %call_402993, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40299a	 Bytes: 3
  %loadMem_40299a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40299a = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40299a)
  store %struct.Memory* %call_40299a, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 40299d	 Bytes: 4
  %loadMem_40299d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40299d = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40299d)
  store %struct.Memory* %call_40299d, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 4029a1	 Bytes: 5
  %loadMem_4029a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029a1 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029a1)
  store %struct.Memory* %call_4029a1, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 4029a6	 Bytes: 4
  %loadMem_4029a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029a6 = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029a6)
  store %struct.Memory* %call_4029a6, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rbp), %rax	 RIP: 4029aa	 Bytes: 4
  %loadMem_4029aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029aa = call %struct.Memory* @routine_movq_0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029aa)
  store %struct.Memory* %call_4029aa, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 4029ae	 Bytes: 4
  %loadMem_4029ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029ae = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029ae)
  store %struct.Memory* %call_4029ae, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 4029b2	 Bytes: 7
  %loadMem_4029b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029b2 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029b2)
  store %struct.Memory* %call_4029b2, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4029b9	 Bytes: 3
  %loadMem_4029b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029b9 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029b9)
  store %struct.Memory* %call_4029b9, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 4029bc	 Bytes: 4
  %loadMem_4029bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029bc = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029bc)
  store %struct.Memory* %call_4029bc, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4029c0	 Bytes: 7
  %loadMem_4029c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029c0 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029c0)
  store %struct.Memory* %call_4029c0, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4029c7	 Bytes: 3
  %loadMem_4029c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029c7 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029c7)
  store %struct.Memory* %call_4029c7, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 4029ca	 Bytes: 4
  %loadMem_4029ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029ca = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029ca)
  store %struct.Memory* %call_4029ca, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 4029ce	 Bytes: 5
  %loadMem_4029ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029ce = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029ce)
  store %struct.Memory* %call_4029ce, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rbp), %rax	 RIP: 4029d3	 Bytes: 4
  %loadMem_4029d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029d3 = call %struct.Memory* @routine_movq_0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029d3)
  store %struct.Memory* %call_4029d3, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 4029d7	 Bytes: 4
  %loadMem_4029d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029d7 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029d7)
  store %struct.Memory* %call_4029d7, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4029db	 Bytes: 7
  %loadMem_4029db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029db = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029db)
  store %struct.Memory* %call_4029db, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4029e2	 Bytes: 3
  %loadMem_4029e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029e2 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029e2)
  store %struct.Memory* %call_4029e2, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 4029e5	 Bytes: 4
  %loadMem_4029e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029e5 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029e5)
  store %struct.Memory* %call_4029e5, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 4029e9	 Bytes: 5
  %loadMem_4029e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029e9 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029e9)
  store %struct.Memory* %call_4029e9, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rbp), %rax	 RIP: 4029ee	 Bytes: 4
  %loadMem_4029ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029ee = call %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029ee)
  store %struct.Memory* %call_4029ee, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 4029f2	 Bytes: 4
  %loadMem_4029f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029f2 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029f2)
  store %struct.Memory* %call_4029f2, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 4029f6	 Bytes: 7
  %loadMem_4029f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029f6 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029f6)
  store %struct.Memory* %call_4029f6, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4029fd	 Bytes: 3
  %loadMem_4029fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029fd = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029fd)
  store %struct.Memory* %call_4029fd, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 402a00	 Bytes: 4
  %loadMem_402a00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a00 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a00)
  store %struct.Memory* %call_402a00, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402a04	 Bytes: 7
  %loadMem_402a04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a04 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a04)
  store %struct.Memory* %call_402a04, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402a0b	 Bytes: 3
  %loadMem_402a0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a0b = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a0b)
  store %struct.Memory* %call_402a0b, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 402a0e	 Bytes: 4
  %loadMem_402a0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a0e = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a0e)
  store %struct.Memory* %call_402a0e, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 402a12	 Bytes: 5
  %loadMem_402a12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a12 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a12)
  store %struct.Memory* %call_402a12, %struct.Memory** %MEMORY

  ; Code: movl -0x68(%rbp), %eax	 RIP: 402a17	 Bytes: 3
  %loadMem_402a17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a17 = call %struct.Memory* @routine_movl_MINUS0x68__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a17)
  store %struct.Memory* %call_402a17, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 402a1a	 Bytes: 3
  %loadMem_402a1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a1a = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a1a)
  store %struct.Memory* %call_402a1a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x68(%rbp)	 RIP: 402a1d	 Bytes: 3
  %loadMem_402a1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a1d = call %struct.Memory* @routine_movl__eax__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a1d)
  store %struct.Memory* %call_402a1d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_401fcd	 RIP: 402a20	 Bytes: 5
  %loadMem_402a20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a20 = call %struct.Memory* @routine_jmpq_.L_401fcd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a20, i64 -2643, i64 5)
  store %struct.Memory* %call_402a20, %struct.Memory** %MEMORY

  br label %block_.L_401fcd

  ; Code: .L_402a25:	 RIP: 402a25	 Bytes: 0
block_.L_402a25:

  ; Code: jmpq .L_402a2a	 RIP: 402a25	 Bytes: 5
  %loadMem_402a25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a25 = call %struct.Memory* @routine_jmpq_.L_402a2a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a25, i64 5, i64 5)
  store %struct.Memory* %call_402a25, %struct.Memory** %MEMORY

  br label %block_.L_402a2a

  ; Code: .L_402a2a:	 RIP: 402a2a	 Bytes: 0
block_.L_402a2a:

  ; Code: movl -0x64(%rbp), %eax	 RIP: 402a2a	 Bytes: 3
  %loadMem_402a2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a2a = call %struct.Memory* @routine_movl_MINUS0x64__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a2a)
  store %struct.Memory* %call_402a2a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 402a2d	 Bytes: 3
  %loadMem_402a2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a2d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a2d)
  store %struct.Memory* %call_402a2d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x64(%rbp)	 RIP: 402a30	 Bytes: 3
  %loadMem_402a30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a30 = call %struct.Memory* @routine_movl__eax__MINUS0x64__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a30)
  store %struct.Memory* %call_402a30, %struct.Memory** %MEMORY

  ; Code: jmpq .L_401fba	 RIP: 402a33	 Bytes: 5
  %loadMem_402a33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a33 = call %struct.Memory* @routine_jmpq_.L_401fba(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a33, i64 -2681, i64 5)
  store %struct.Memory* %call_402a33, %struct.Memory** %MEMORY

  br label %block_.L_401fba

  ; Code: .L_402a38:	 RIP: 402a38	 Bytes: 0
block_.L_402a38:

  ; Code: addq $0x20, %rsp	 RIP: 402a38	 Bytes: 4
  %loadMem_402a38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a38 = call %struct.Memory* @routine_addq__0x20___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a38)
  store %struct.Memory* %call_402a38, %struct.Memory** %MEMORY

  ; Code: popq %rbx	 RIP: 402a3c	 Bytes: 1
  %loadMem_402a3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a3c = call %struct.Memory* @routine_popq__rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a3c)
  store %struct.Memory* %call_402a3c, %struct.Memory** %MEMORY

  ; Code: popq %r12	 RIP: 402a3d	 Bytes: 2
  %loadMem_402a3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a3d = call %struct.Memory* @routine_popq__r12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a3d)
  store %struct.Memory* %call_402a3d, %struct.Memory** %MEMORY

  ; Code: popq %r13	 RIP: 402a3f	 Bytes: 2
  %loadMem_402a3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a3f = call %struct.Memory* @routine_popq__r13(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a3f)
  store %struct.Memory* %call_402a3f, %struct.Memory** %MEMORY

  ; Code: popq %r14	 RIP: 402a41	 Bytes: 2
  %loadMem_402a41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a41 = call %struct.Memory* @routine_popq__r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a41)
  store %struct.Memory* %call_402a41, %struct.Memory** %MEMORY

  ; Code: popq %r15	 RIP: 402a43	 Bytes: 2
  %loadMem_402a43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a43 = call %struct.Memory* @routine_popq__r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a43)
  store %struct.Memory* %call_402a43, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 402a45	 Bytes: 1
  %loadMem_402a45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a45 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a45)
  store %struct.Memory* %call_402a45, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 402a46	 Bytes: 1
  %loadMem_402a46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a46 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a46)
  store %struct.Memory* %call_402a46, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_402a46
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

define %struct.Memory* @routine_jge_.L_402a38(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jge_.L_402a25(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jge_.L_40228c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_401fe0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




























































































































































































































































define %struct.Memory* @routine_jge_.L_4027ab(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


















































































































































































































































































define %struct.Memory* @routine_jmpq_.L_402512(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_401fcd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_402a2a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_401fba(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

