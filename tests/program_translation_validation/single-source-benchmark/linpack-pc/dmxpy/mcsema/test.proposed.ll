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


define %struct.Memory* @dmxpy(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .dmxpy:	 RIP: 402010	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 402010	 Bytes: 1
  %loadMem_402010 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402010 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402010)
  store %struct.Memory* %call_402010, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 402011	 Bytes: 3
  %loadMem_402011 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402011 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402011)
  store %struct.Memory* %call_402011, %struct.Memory** %MEMORY

  ; Code: movl $0x2, %eax	 RIP: 402014	 Bytes: 5
  %loadMem_402014 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402014 = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402014)
  store %struct.Memory* %call_402014, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x4(%rbp)	 RIP: 402019	 Bytes: 3
  %loadMem_402019 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402019 = call %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402019)
  store %struct.Memory* %call_402019, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x10(%rbp)	 RIP: 40201c	 Bytes: 4
  %loadMem_40201c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40201c = call %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40201c)
  store %struct.Memory* %call_40201c, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x14(%rbp)	 RIP: 402020	 Bytes: 3
  %loadMem_402020 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402020 = call %struct.Memory* @routine_movl__edx__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402020)
  store %struct.Memory* %call_402020, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x18(%rbp)	 RIP: 402023	 Bytes: 3
  %loadMem_402023 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402023 = call %struct.Memory* @routine_movl__ecx__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402023)
  store %struct.Memory* %call_402023, %struct.Memory** %MEMORY

  ; Code: movq %r8, -0x20(%rbp)	 RIP: 402026	 Bytes: 4
  %loadMem_402026 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402026 = call %struct.Memory* @routine_movq__r8__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402026)
  store %struct.Memory* %call_402026, %struct.Memory** %MEMORY

  ; Code: movq %r9, -0x28(%rbp)	 RIP: 40202a	 Bytes: 4
  %loadMem_40202a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40202a = call %struct.Memory* @routine_movq__r9__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40202a)
  store %struct.Memory* %call_40202a, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 40202e	 Bytes: 3
  %loadMem_40202e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40202e = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40202e)
  store %struct.Memory* %call_40202e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x38(%rbp)	 RIP: 402031	 Bytes: 3
  %loadMem_402031 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402031 = call %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402031)
  store %struct.Memory* %call_402031, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 402034	 Bytes: 2
  %loadMem_402034 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402034 = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402034)
  store %struct.Memory* %call_402034, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 402036	 Bytes: 1
  %loadMem_402036 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402036 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402036)
  store %struct.Memory* %call_402036, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %ecx	 RIP: 402037	 Bytes: 3
  %loadMem_402037 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402037 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402037)
  store %struct.Memory* %call_402037, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 40203a	 Bytes: 2
  %loadMem_40203a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40203a = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40203a)
  store %struct.Memory* %call_40203a, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x2c(%rbp)	 RIP: 40203c	 Bytes: 3
  %loadMem_40203c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40203c = call %struct.Memory* @routine_movl__edx__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40203c)
  store %struct.Memory* %call_40203c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, -0x2c(%rbp)	 RIP: 40203f	 Bytes: 4
  %loadMem_40203f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40203f = call %struct.Memory* @routine_cmpl__0x1__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40203f)
  store %struct.Memory* %call_40203f, %struct.Memory** %MEMORY

  ; Code: jl .L_4020b9	 RIP: 402043	 Bytes: 6
  %loadMem_402043 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402043 = call %struct.Memory* @routine_jl_.L_4020b9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402043, i8* %BRANCH_TAKEN, i64 118, i64 6, i64 6)
  store %struct.Memory* %call_402043, %struct.Memory** %MEMORY

  %loadBr_402043 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_402043 = icmp eq i8 %loadBr_402043, 1
  br i1 %cmpBr_402043, label %block_.L_4020b9, label %block_402049

block_402049:
  ; Code: movl -0x2c(%rbp), %eax	 RIP: 402049	 Bytes: 3
  %loadMem_402049 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402049 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402049)
  store %struct.Memory* %call_402049, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 40204c	 Bytes: 3
  %loadMem_40204c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40204c = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40204c)
  store %struct.Memory* %call_40204c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 40204f	 Bytes: 3
  %loadMem_40204f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40204f = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40204f)
  store %struct.Memory* %call_40204f, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x30(%rbp)	 RIP: 402052	 Bytes: 7
  %loadMem_402052 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402052 = call %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402052)
  store %struct.Memory* %call_402052, %struct.Memory** %MEMORY

  ; Code: .L_402059:	 RIP: 402059	 Bytes: 0
  br label %block_.L_402059
block_.L_402059:

  ; Code: movl -0x30(%rbp), %eax	 RIP: 402059	 Bytes: 3
  %loadMem_402059 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402059 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402059)
  store %struct.Memory* %call_402059, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4(%rbp), %eax	 RIP: 40205c	 Bytes: 3
  %loadMem_40205c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40205c = call %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40205c)
  store %struct.Memory* %call_40205c, %struct.Memory** %MEMORY

  ; Code: jge .L_4020b4	 RIP: 40205f	 Bytes: 6
  %loadMem_40205f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40205f = call %struct.Memory* @routine_jge_.L_4020b4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40205f, i8* %BRANCH_TAKEN, i64 85, i64 6, i64 6)
  store %struct.Memory* %call_40205f, %struct.Memory** %MEMORY

  %loadBr_40205f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40205f = icmp eq i8 %loadBr_40205f, 1
  br i1 %cmpBr_40205f, label %block_.L_4020b4, label %block_402065

block_402065:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 402065	 Bytes: 4
  %loadMem_402065 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402065 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402065)
  store %struct.Memory* %call_402065, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 402069	 Bytes: 4
  %loadMem_402069 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402069 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402069)
  store %struct.Memory* %call_402069, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm0	 RIP: 40206d	 Bytes: 5
  %loadMem_40206d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40206d = call %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40206d)
  store %struct.Memory* %call_40206d, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 402072	 Bytes: 4
  %loadMem_402072 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402072 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402072)
  store %struct.Memory* %call_402072, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 402076	 Bytes: 4
  %loadMem_402076 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402076 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402076)
  store %struct.Memory* %call_402076, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 40207a	 Bytes: 5
  %loadMem_40207a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40207a = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40207a)
  store %struct.Memory* %call_40207a, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 40207f	 Bytes: 4
  %loadMem_40207f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40207f = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40207f)
  store %struct.Memory* %call_40207f, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 402083	 Bytes: 3
  %loadMem_402083 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402083 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402083)
  store %struct.Memory* %call_402083, %struct.Memory** %MEMORY

  ; Code: imull -0x2c(%rbp), %edx	 RIP: 402086	 Bytes: 4
  %loadMem_402086 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402086 = call %struct.Memory* @routine_imull_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402086)
  store %struct.Memory* %call_402086, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 40208a	 Bytes: 3
  %loadMem_40208a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40208a = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40208a)
  store %struct.Memory* %call_40208a, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40208d	 Bytes: 3
  %loadMem_40208d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40208d = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40208d)
  store %struct.Memory* %call_40208d, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 402090	 Bytes: 5
  %loadMem_402090 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402090 = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402090)
  store %struct.Memory* %call_402090, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 402095	 Bytes: 4
  %loadMem_402095 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402095 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402095)
  store %struct.Memory* %call_402095, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 402099	 Bytes: 4
  %loadMem_402099 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402099 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402099)
  store %struct.Memory* %call_402099, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 40209d	 Bytes: 4
  %loadMem_40209d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40209d = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40209d)
  store %struct.Memory* %call_40209d, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, (%rax,%rcx,4)	 RIP: 4020a1	 Bytes: 5
  %loadMem_4020a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020a1 = call %struct.Memory* @routine_movss__xmm0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020a1)
  store %struct.Memory* %call_4020a1, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %eax	 RIP: 4020a6	 Bytes: 3
  %loadMem_4020a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020a6 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020a6)
  store %struct.Memory* %call_4020a6, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4020a9	 Bytes: 3
  %loadMem_4020a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020a9 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020a9)
  store %struct.Memory* %call_4020a9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x30(%rbp)	 RIP: 4020ac	 Bytes: 3
  %loadMem_4020ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020ac = call %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020ac)
  store %struct.Memory* %call_4020ac, %struct.Memory** %MEMORY

  ; Code: jmpq .L_402059	 RIP: 4020af	 Bytes: 5
  %loadMem_4020af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020af = call %struct.Memory* @routine_jmpq_.L_402059(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020af, i64 -86, i64 5)
  store %struct.Memory* %call_4020af, %struct.Memory** %MEMORY

  br label %block_.L_402059

  ; Code: .L_4020b4:	 RIP: 4020b4	 Bytes: 0
block_.L_4020b4:

  ; Code: jmpq .L_4020b9	 RIP: 4020b4	 Bytes: 5
  %loadMem_4020b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020b4 = call %struct.Memory* @routine_jmpq_.L_4020b9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020b4, i64 5, i64 5)
  store %struct.Memory* %call_4020b4, %struct.Memory** %MEMORY

  br label %block_.L_4020b9

  ; Code: .L_4020b9:	 RIP: 4020b9	 Bytes: 0
block_.L_4020b9:

  ; Code: movl $0x4, %eax	 RIP: 4020b9	 Bytes: 5
  %loadMem_4020b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020b9 = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020b9)
  store %struct.Memory* %call_4020b9, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 4020be	 Bytes: 3
  %loadMem_4020be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020be = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020be)
  store %struct.Memory* %call_4020be, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3c(%rbp)	 RIP: 4020c1	 Bytes: 3
  %loadMem_4020c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020c1 = call %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020c1)
  store %struct.Memory* %call_4020c1, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 4020c4	 Bytes: 2
  %loadMem_4020c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020c4 = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020c4)
  store %struct.Memory* %call_4020c4, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 4020c6	 Bytes: 1
  %loadMem_4020c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020c6 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020c6)
  store %struct.Memory* %call_4020c6, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %ecx	 RIP: 4020c7	 Bytes: 3
  %loadMem_4020c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020c7 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020c7)
  store %struct.Memory* %call_4020c7, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 4020ca	 Bytes: 2
  %loadMem_4020ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020ca = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020ca)
  store %struct.Memory* %call_4020ca, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x2c(%rbp)	 RIP: 4020cc	 Bytes: 3
  %loadMem_4020cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020cc = call %struct.Memory* @routine_movl__edx__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020cc)
  store %struct.Memory* %call_4020cc, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, -0x2c(%rbp)	 RIP: 4020cf	 Bytes: 4
  %loadMem_4020cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020cf = call %struct.Memory* @routine_cmpl__0x2__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020cf)
  store %struct.Memory* %call_4020cf, %struct.Memory** %MEMORY

  ; Code: jl .L_40217a	 RIP: 4020d3	 Bytes: 6
  %loadMem_4020d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020d3 = call %struct.Memory* @routine_jl_.L_40217a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020d3, i8* %BRANCH_TAKEN, i64 167, i64 6, i64 6)
  store %struct.Memory* %call_4020d3, %struct.Memory** %MEMORY

  %loadBr_4020d3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4020d3 = icmp eq i8 %loadBr_4020d3, 1
  br i1 %cmpBr_4020d3, label %block_.L_40217a, label %block_4020d9

block_4020d9:
  ; Code: movl -0x2c(%rbp), %eax	 RIP: 4020d9	 Bytes: 3
  %loadMem_4020d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020d9 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020d9)
  store %struct.Memory* %call_4020d9, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 4020dc	 Bytes: 3
  %loadMem_4020dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020dc = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020dc)
  store %struct.Memory* %call_4020dc, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 4020df	 Bytes: 3
  %loadMem_4020df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020df = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020df)
  store %struct.Memory* %call_4020df, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x30(%rbp)	 RIP: 4020e2	 Bytes: 7
  %loadMem_4020e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020e2 = call %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020e2)
  store %struct.Memory* %call_4020e2, %struct.Memory** %MEMORY

  ; Code: .L_4020e9:	 RIP: 4020e9	 Bytes: 0
  br label %block_.L_4020e9
block_.L_4020e9:

  ; Code: movl -0x30(%rbp), %eax	 RIP: 4020e9	 Bytes: 3
  %loadMem_4020e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020e9 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020e9)
  store %struct.Memory* %call_4020e9, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4(%rbp), %eax	 RIP: 4020ec	 Bytes: 3
  %loadMem_4020ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020ec = call %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020ec)
  store %struct.Memory* %call_4020ec, %struct.Memory** %MEMORY

  ; Code: jge .L_402175	 RIP: 4020ef	 Bytes: 6
  %loadMem_4020ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020ef = call %struct.Memory* @routine_jge_.L_402175(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020ef, i8* %BRANCH_TAKEN, i64 134, i64 6, i64 6)
  store %struct.Memory* %call_4020ef, %struct.Memory** %MEMORY

  %loadBr_4020ef = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4020ef = icmp eq i8 %loadBr_4020ef, 1
  br i1 %cmpBr_4020ef, label %block_.L_402175, label %block_4020f5

block_4020f5:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 4020f5	 Bytes: 4
  %loadMem_4020f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020f5 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020f5)
  store %struct.Memory* %call_4020f5, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 4020f9	 Bytes: 4
  %loadMem_4020f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020f9 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020f9)
  store %struct.Memory* %call_4020f9, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm0	 RIP: 4020fd	 Bytes: 5
  %loadMem_4020fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020fd = call %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020fd)
  store %struct.Memory* %call_4020fd, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 402102	 Bytes: 4
  %loadMem_402102 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402102 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402102)
  store %struct.Memory* %call_402102, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 402106	 Bytes: 3
  %loadMem_402106 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402106 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402106)
  store %struct.Memory* %call_402106, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 402109	 Bytes: 3
  %loadMem_402109 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402109 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402109)
  store %struct.Memory* %call_402109, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40210c	 Bytes: 3
  %loadMem_40210c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40210c = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40210c)
  store %struct.Memory* %call_40210c, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 40210f	 Bytes: 5
  %loadMem_40210f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40210f = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40210f)
  store %struct.Memory* %call_40210f, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 402114	 Bytes: 4
  %loadMem_402114 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402114 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402114)
  store %struct.Memory* %call_402114, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 402118	 Bytes: 3
  %loadMem_402118 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402118 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402118)
  store %struct.Memory* %call_402118, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 40211b	 Bytes: 3
  %loadMem_40211b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40211b = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40211b)
  store %struct.Memory* %call_40211b, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 40211e	 Bytes: 3
  %loadMem_40211e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40211e = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40211e)
  store %struct.Memory* %call_40211e, %struct.Memory** %MEMORY

  ; Code: imull %esi, %edx	 RIP: 402121	 Bytes: 3
  %loadMem_402121 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402121 = call %struct.Memory* @routine_imull__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402121)
  store %struct.Memory* %call_402121, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 402124	 Bytes: 3
  %loadMem_402124 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402124 = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402124)
  store %struct.Memory* %call_402124, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 402127	 Bytes: 3
  %loadMem_402127 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402127 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402127)
  store %struct.Memory* %call_402127, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 40212a	 Bytes: 5
  %loadMem_40212a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40212a = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40212a)
  store %struct.Memory* %call_40212a, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 40212f	 Bytes: 4
  %loadMem_40212f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40212f = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40212f)
  store %struct.Memory* %call_40212f, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 402133	 Bytes: 4
  %loadMem_402133 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402133 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402133)
  store %struct.Memory* %call_402133, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 402137	 Bytes: 4
  %loadMem_402137 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402137 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402137)
  store %struct.Memory* %call_402137, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 40213b	 Bytes: 5
  %loadMem_40213b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40213b = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40213b)
  store %struct.Memory* %call_40213b, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 402140	 Bytes: 4
  %loadMem_402140 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402140 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402140)
  store %struct.Memory* %call_402140, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 402144	 Bytes: 3
  %loadMem_402144 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402144 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402144)
  store %struct.Memory* %call_402144, %struct.Memory** %MEMORY

  ; Code: imull -0x2c(%rbp), %edx	 RIP: 402147	 Bytes: 4
  %loadMem_402147 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402147 = call %struct.Memory* @routine_imull_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402147)
  store %struct.Memory* %call_402147, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 40214b	 Bytes: 3
  %loadMem_40214b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40214b = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40214b)
  store %struct.Memory* %call_40214b, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40214e	 Bytes: 3
  %loadMem_40214e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40214e = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40214e)
  store %struct.Memory* %call_40214e, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 402151	 Bytes: 5
  %loadMem_402151 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402151 = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402151)
  store %struct.Memory* %call_402151, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 402156	 Bytes: 4
  %loadMem_402156 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402156 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402156)
  store %struct.Memory* %call_402156, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 40215a	 Bytes: 4
  %loadMem_40215a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40215a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40215a)
  store %struct.Memory* %call_40215a, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 40215e	 Bytes: 4
  %loadMem_40215e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40215e = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40215e)
  store %struct.Memory* %call_40215e, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, (%rax,%rcx,4)	 RIP: 402162	 Bytes: 5
  %loadMem_402162 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402162 = call %struct.Memory* @routine_movss__xmm0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402162)
  store %struct.Memory* %call_402162, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %eax	 RIP: 402167	 Bytes: 3
  %loadMem_402167 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402167 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402167)
  store %struct.Memory* %call_402167, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40216a	 Bytes: 3
  %loadMem_40216a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40216a = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40216a)
  store %struct.Memory* %call_40216a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x30(%rbp)	 RIP: 40216d	 Bytes: 3
  %loadMem_40216d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40216d = call %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40216d)
  store %struct.Memory* %call_40216d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4020e9	 RIP: 402170	 Bytes: 5
  %loadMem_402170 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402170 = call %struct.Memory* @routine_jmpq_.L_4020e9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402170, i64 -135, i64 5)
  store %struct.Memory* %call_402170, %struct.Memory** %MEMORY

  br label %block_.L_4020e9

  ; Code: .L_402175:	 RIP: 402175	 Bytes: 0
block_.L_402175:

  ; Code: jmpq .L_40217a	 RIP: 402175	 Bytes: 5
  %loadMem_402175 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402175 = call %struct.Memory* @routine_jmpq_.L_40217a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402175, i64 5, i64 5)
  store %struct.Memory* %call_402175, %struct.Memory** %MEMORY

  br label %block_.L_40217a

  ; Code: .L_40217a:	 RIP: 40217a	 Bytes: 0
block_.L_40217a:

  ; Code: movl $0x8, %eax	 RIP: 40217a	 Bytes: 5
  %loadMem_40217a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40217a = call %struct.Memory* @routine_movl__0x8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40217a)
  store %struct.Memory* %call_40217a, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 40217f	 Bytes: 3
  %loadMem_40217f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40217f = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40217f)
  store %struct.Memory* %call_40217f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x40(%rbp)	 RIP: 402182	 Bytes: 3
  %loadMem_402182 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402182 = call %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402182)
  store %struct.Memory* %call_402182, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 402185	 Bytes: 2
  %loadMem_402185 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402185 = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402185)
  store %struct.Memory* %call_402185, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 402187	 Bytes: 1
  %loadMem_402187 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402187 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402187)
  store %struct.Memory* %call_402187, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %ecx	 RIP: 402188	 Bytes: 3
  %loadMem_402188 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402188 = call %struct.Memory* @routine_movl_MINUS0x40__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402188)
  store %struct.Memory* %call_402188, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 40218b	 Bytes: 2
  %loadMem_40218b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40218b = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40218b)
  store %struct.Memory* %call_40218b, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x2c(%rbp)	 RIP: 40218d	 Bytes: 3
  %loadMem_40218d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40218d = call %struct.Memory* @routine_movl__edx__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40218d)
  store %struct.Memory* %call_40218d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x4, -0x2c(%rbp)	 RIP: 402190	 Bytes: 4
  %loadMem_402190 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402190 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402190)
  store %struct.Memory* %call_402190, %struct.Memory** %MEMORY

  ; Code: jl .L_40229d	 RIP: 402194	 Bytes: 6
  %loadMem_402194 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402194 = call %struct.Memory* @routine_jl_.L_40229d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402194, i8* %BRANCH_TAKEN, i64 265, i64 6, i64 6)
  store %struct.Memory* %call_402194, %struct.Memory** %MEMORY

  %loadBr_402194 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_402194 = icmp eq i8 %loadBr_402194, 1
  br i1 %cmpBr_402194, label %block_.L_40229d, label %block_40219a

block_40219a:
  ; Code: movl -0x2c(%rbp), %eax	 RIP: 40219a	 Bytes: 3
  %loadMem_40219a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40219a = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40219a)
  store %struct.Memory* %call_40219a, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 40219d	 Bytes: 3
  %loadMem_40219d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40219d = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40219d)
  store %struct.Memory* %call_40219d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 4021a0	 Bytes: 3
  %loadMem_4021a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021a0 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021a0)
  store %struct.Memory* %call_4021a0, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x30(%rbp)	 RIP: 4021a3	 Bytes: 7
  %loadMem_4021a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021a3 = call %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021a3)
  store %struct.Memory* %call_4021a3, %struct.Memory** %MEMORY

  ; Code: .L_4021aa:	 RIP: 4021aa	 Bytes: 0
  br label %block_.L_4021aa
block_.L_4021aa:

  ; Code: movl -0x30(%rbp), %eax	 RIP: 4021aa	 Bytes: 3
  %loadMem_4021aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021aa = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021aa)
  store %struct.Memory* %call_4021aa, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4(%rbp), %eax	 RIP: 4021ad	 Bytes: 3
  %loadMem_4021ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021ad = call %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021ad)
  store %struct.Memory* %call_4021ad, %struct.Memory** %MEMORY

  ; Code: jge .L_402298	 RIP: 4021b0	 Bytes: 6
  %loadMem_4021b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021b0 = call %struct.Memory* @routine_jge_.L_402298(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021b0, i8* %BRANCH_TAKEN, i64 232, i64 6, i64 6)
  store %struct.Memory* %call_4021b0, %struct.Memory** %MEMORY

  %loadBr_4021b0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4021b0 = icmp eq i8 %loadBr_4021b0, 1
  br i1 %cmpBr_4021b0, label %block_.L_402298, label %block_4021b6

block_4021b6:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 4021b6	 Bytes: 4
  %loadMem_4021b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021b6 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021b6)
  store %struct.Memory* %call_4021b6, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 4021ba	 Bytes: 4
  %loadMem_4021ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021ba = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021ba)
  store %struct.Memory* %call_4021ba, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm0	 RIP: 4021be	 Bytes: 5
  %loadMem_4021be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021be = call %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021be)
  store %struct.Memory* %call_4021be, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 4021c3	 Bytes: 4
  %loadMem_4021c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021c3 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021c3)
  store %struct.Memory* %call_4021c3, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 4021c7	 Bytes: 3
  %loadMem_4021c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021c7 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021c7)
  store %struct.Memory* %call_4021c7, %struct.Memory** %MEMORY

  ; Code: subl $0x3, %edx	 RIP: 4021ca	 Bytes: 3
  %loadMem_4021ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021ca = call %struct.Memory* @routine_subl__0x3___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021ca)
  store %struct.Memory* %call_4021ca, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4021cd	 Bytes: 3
  %loadMem_4021cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021cd = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021cd)
  store %struct.Memory* %call_4021cd, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 4021d0	 Bytes: 5
  %loadMem_4021d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021d0 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021d0)
  store %struct.Memory* %call_4021d0, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 4021d5	 Bytes: 4
  %loadMem_4021d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021d5 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021d5)
  store %struct.Memory* %call_4021d5, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 4021d9	 Bytes: 3
  %loadMem_4021d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021d9 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021d9)
  store %struct.Memory* %call_4021d9, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4021dc	 Bytes: 3
  %loadMem_4021dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021dc = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021dc)
  store %struct.Memory* %call_4021dc, %struct.Memory** %MEMORY

  ; Code: subl $0x3, %esi	 RIP: 4021df	 Bytes: 3
  %loadMem_4021df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021df = call %struct.Memory* @routine_subl__0x3___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021df)
  store %struct.Memory* %call_4021df, %struct.Memory** %MEMORY

  ; Code: imull %esi, %edx	 RIP: 4021e2	 Bytes: 3
  %loadMem_4021e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021e2 = call %struct.Memory* @routine_imull__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021e2)
  store %struct.Memory* %call_4021e2, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 4021e5	 Bytes: 3
  %loadMem_4021e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021e5 = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021e5)
  store %struct.Memory* %call_4021e5, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4021e8	 Bytes: 3
  %loadMem_4021e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021e8 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021e8)
  store %struct.Memory* %call_4021e8, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 4021eb	 Bytes: 5
  %loadMem_4021eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021eb = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021eb)
  store %struct.Memory* %call_4021eb, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 4021f0	 Bytes: 4
  %loadMem_4021f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021f0 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021f0)
  store %struct.Memory* %call_4021f0, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 4021f4	 Bytes: 4
  %loadMem_4021f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021f4 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021f4)
  store %struct.Memory* %call_4021f4, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 4021f8	 Bytes: 3
  %loadMem_4021f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021f8 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021f8)
  store %struct.Memory* %call_4021f8, %struct.Memory** %MEMORY

  ; Code: subl $0x2, %edx	 RIP: 4021fb	 Bytes: 3
  %loadMem_4021fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021fb = call %struct.Memory* @routine_subl__0x2___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021fb)
  store %struct.Memory* %call_4021fb, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4021fe	 Bytes: 3
  %loadMem_4021fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021fe = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021fe)
  store %struct.Memory* %call_4021fe, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 402201	 Bytes: 5
  %loadMem_402201 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402201 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402201)
  store %struct.Memory* %call_402201, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 402206	 Bytes: 4
  %loadMem_402206 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402206 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402206)
  store %struct.Memory* %call_402206, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 40220a	 Bytes: 3
  %loadMem_40220a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40220a = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40220a)
  store %struct.Memory* %call_40220a, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 40220d	 Bytes: 3
  %loadMem_40220d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40220d = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40220d)
  store %struct.Memory* %call_40220d, %struct.Memory** %MEMORY

  ; Code: subl $0x2, %esi	 RIP: 402210	 Bytes: 3
  %loadMem_402210 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402210 = call %struct.Memory* @routine_subl__0x2___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402210)
  store %struct.Memory* %call_402210, %struct.Memory** %MEMORY

  ; Code: imull %esi, %edx	 RIP: 402213	 Bytes: 3
  %loadMem_402213 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402213 = call %struct.Memory* @routine_imull__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402213)
  store %struct.Memory* %call_402213, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 402216	 Bytes: 3
  %loadMem_402216 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402216 = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402216)
  store %struct.Memory* %call_402216, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 402219	 Bytes: 3
  %loadMem_402219 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402219 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402219)
  store %struct.Memory* %call_402219, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 40221c	 Bytes: 5
  %loadMem_40221c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40221c = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40221c)
  store %struct.Memory* %call_40221c, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 402221	 Bytes: 4
  %loadMem_402221 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402221 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402221)
  store %struct.Memory* %call_402221, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 402225	 Bytes: 4
  %loadMem_402225 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402225 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402225)
  store %struct.Memory* %call_402225, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 402229	 Bytes: 3
  %loadMem_402229 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402229 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402229)
  store %struct.Memory* %call_402229, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 40222c	 Bytes: 3
  %loadMem_40222c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40222c = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40222c)
  store %struct.Memory* %call_40222c, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40222f	 Bytes: 3
  %loadMem_40222f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40222f = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40222f)
  store %struct.Memory* %call_40222f, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 402232	 Bytes: 5
  %loadMem_402232 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402232 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402232)
  store %struct.Memory* %call_402232, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 402237	 Bytes: 4
  %loadMem_402237 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402237 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402237)
  store %struct.Memory* %call_402237, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 40223b	 Bytes: 3
  %loadMem_40223b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40223b = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40223b)
  store %struct.Memory* %call_40223b, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 40223e	 Bytes: 3
  %loadMem_40223e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40223e = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40223e)
  store %struct.Memory* %call_40223e, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 402241	 Bytes: 3
  %loadMem_402241 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402241 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402241)
  store %struct.Memory* %call_402241, %struct.Memory** %MEMORY

  ; Code: imull %esi, %edx	 RIP: 402244	 Bytes: 3
  %loadMem_402244 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402244 = call %struct.Memory* @routine_imull__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402244)
  store %struct.Memory* %call_402244, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 402247	 Bytes: 3
  %loadMem_402247 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402247 = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402247)
  store %struct.Memory* %call_402247, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40224a	 Bytes: 3
  %loadMem_40224a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40224a = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40224a)
  store %struct.Memory* %call_40224a, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 40224d	 Bytes: 5
  %loadMem_40224d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40224d = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40224d)
  store %struct.Memory* %call_40224d, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 402252	 Bytes: 4
  %loadMem_402252 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402252 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402252)
  store %struct.Memory* %call_402252, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 402256	 Bytes: 4
  %loadMem_402256 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402256 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402256)
  store %struct.Memory* %call_402256, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 40225a	 Bytes: 4
  %loadMem_40225a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40225a = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40225a)
  store %struct.Memory* %call_40225a, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 40225e	 Bytes: 5
  %loadMem_40225e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40225e = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40225e)
  store %struct.Memory* %call_40225e, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 402263	 Bytes: 4
  %loadMem_402263 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402263 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402263)
  store %struct.Memory* %call_402263, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 402267	 Bytes: 3
  %loadMem_402267 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402267 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402267)
  store %struct.Memory* %call_402267, %struct.Memory** %MEMORY

  ; Code: imull -0x2c(%rbp), %edx	 RIP: 40226a	 Bytes: 4
  %loadMem_40226a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40226a = call %struct.Memory* @routine_imull_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40226a)
  store %struct.Memory* %call_40226a, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 40226e	 Bytes: 3
  %loadMem_40226e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40226e = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40226e)
  store %struct.Memory* %call_40226e, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 402271	 Bytes: 3
  %loadMem_402271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402271 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402271)
  store %struct.Memory* %call_402271, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 402274	 Bytes: 5
  %loadMem_402274 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402274 = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402274)
  store %struct.Memory* %call_402274, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 402279	 Bytes: 4
  %loadMem_402279 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402279 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402279)
  store %struct.Memory* %call_402279, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 40227d	 Bytes: 4
  %loadMem_40227d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40227d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40227d)
  store %struct.Memory* %call_40227d, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 402281	 Bytes: 4
  %loadMem_402281 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402281 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402281)
  store %struct.Memory* %call_402281, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, (%rax,%rcx,4)	 RIP: 402285	 Bytes: 5
  %loadMem_402285 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402285 = call %struct.Memory* @routine_movss__xmm0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402285)
  store %struct.Memory* %call_402285, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %eax	 RIP: 40228a	 Bytes: 3
  %loadMem_40228a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40228a = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40228a)
  store %struct.Memory* %call_40228a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40228d	 Bytes: 3
  %loadMem_40228d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40228d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40228d)
  store %struct.Memory* %call_40228d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x30(%rbp)	 RIP: 402290	 Bytes: 3
  %loadMem_402290 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402290 = call %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402290)
  store %struct.Memory* %call_402290, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4021aa	 RIP: 402293	 Bytes: 5
  %loadMem_402293 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402293 = call %struct.Memory* @routine_jmpq_.L_4021aa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402293, i64 -233, i64 5)
  store %struct.Memory* %call_402293, %struct.Memory** %MEMORY

  br label %block_.L_4021aa

  ; Code: .L_402298:	 RIP: 402298	 Bytes: 0
block_.L_402298:

  ; Code: jmpq .L_40229d	 RIP: 402298	 Bytes: 5
  %loadMem_402298 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402298 = call %struct.Memory* @routine_jmpq_.L_40229d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402298, i64 5, i64 5)
  store %struct.Memory* %call_402298, %struct.Memory** %MEMORY

  br label %block_.L_40229d

  ; Code: .L_40229d:	 RIP: 40229d	 Bytes: 0
block_.L_40229d:

  ; Code: movl $0x10, %eax	 RIP: 40229d	 Bytes: 5
  %loadMem_40229d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40229d = call %struct.Memory* @routine_movl__0x10___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40229d)
  store %struct.Memory* %call_40229d, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 4022a2	 Bytes: 3
  %loadMem_4022a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022a2 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022a2)
  store %struct.Memory* %call_4022a2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x44(%rbp)	 RIP: 4022a5	 Bytes: 3
  %loadMem_4022a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022a5 = call %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022a5)
  store %struct.Memory* %call_4022a5, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 4022a8	 Bytes: 2
  %loadMem_4022a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022a8 = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022a8)
  store %struct.Memory* %call_4022a8, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 4022aa	 Bytes: 1
  %loadMem_4022aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022aa = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022aa)
  store %struct.Memory* %call_4022aa, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %ecx	 RIP: 4022ab	 Bytes: 3
  %loadMem_4022ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022ab = call %struct.Memory* @routine_movl_MINUS0x44__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022ab)
  store %struct.Memory* %call_4022ab, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 4022ae	 Bytes: 2
  %loadMem_4022ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022ae = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022ae)
  store %struct.Memory* %call_4022ae, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x2c(%rbp)	 RIP: 4022b0	 Bytes: 3
  %loadMem_4022b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022b0 = call %struct.Memory* @routine_movl__edx__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022b0)
  store %struct.Memory* %call_4022b0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x8, -0x2c(%rbp)	 RIP: 4022b3	 Bytes: 4
  %loadMem_4022b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022b3 = call %struct.Memory* @routine_cmpl__0x8__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022b3)
  store %struct.Memory* %call_4022b3, %struct.Memory** %MEMORY

  ; Code: jl .L_402484	 RIP: 4022b7	 Bytes: 6
  %loadMem_4022b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022b7 = call %struct.Memory* @routine_jl_.L_402484(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022b7, i8* %BRANCH_TAKEN, i64 461, i64 6, i64 6)
  store %struct.Memory* %call_4022b7, %struct.Memory** %MEMORY

  %loadBr_4022b7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4022b7 = icmp eq i8 %loadBr_4022b7, 1
  br i1 %cmpBr_4022b7, label %block_.L_402484, label %block_4022bd

block_4022bd:
  ; Code: movl -0x2c(%rbp), %eax	 RIP: 4022bd	 Bytes: 3
  %loadMem_4022bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022bd = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022bd)
  store %struct.Memory* %call_4022bd, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 4022c0	 Bytes: 3
  %loadMem_4022c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022c0 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022c0)
  store %struct.Memory* %call_4022c0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 4022c3	 Bytes: 3
  %loadMem_4022c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022c3 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022c3)
  store %struct.Memory* %call_4022c3, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x30(%rbp)	 RIP: 4022c6	 Bytes: 7
  %loadMem_4022c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022c6 = call %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022c6)
  store %struct.Memory* %call_4022c6, %struct.Memory** %MEMORY

  ; Code: .L_4022cd:	 RIP: 4022cd	 Bytes: 0
  br label %block_.L_4022cd
block_.L_4022cd:

  ; Code: movl -0x30(%rbp), %eax	 RIP: 4022cd	 Bytes: 3
  %loadMem_4022cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022cd = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022cd)
  store %struct.Memory* %call_4022cd, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4(%rbp), %eax	 RIP: 4022d0	 Bytes: 3
  %loadMem_4022d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022d0 = call %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022d0)
  store %struct.Memory* %call_4022d0, %struct.Memory** %MEMORY

  ; Code: jge .L_40247f	 RIP: 4022d3	 Bytes: 6
  %loadMem_4022d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022d3 = call %struct.Memory* @routine_jge_.L_40247f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022d3, i8* %BRANCH_TAKEN, i64 428, i64 6, i64 6)
  store %struct.Memory* %call_4022d3, %struct.Memory** %MEMORY

  %loadBr_4022d3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4022d3 = icmp eq i8 %loadBr_4022d3, 1
  br i1 %cmpBr_4022d3, label %block_.L_40247f, label %block_4022d9

block_4022d9:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 4022d9	 Bytes: 4
  %loadMem_4022d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022d9 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022d9)
  store %struct.Memory* %call_4022d9, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 4022dd	 Bytes: 4
  %loadMem_4022dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022dd = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022dd)
  store %struct.Memory* %call_4022dd, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm0	 RIP: 4022e1	 Bytes: 5
  %loadMem_4022e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022e1 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022e1)
  store %struct.Memory* %call_4022e1, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 4022e6	 Bytes: 4
  %loadMem_4022e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022e6 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022e6)
  store %struct.Memory* %call_4022e6, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 4022ea	 Bytes: 3
  %loadMem_4022ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022ea = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022ea)
  store %struct.Memory* %call_4022ea, %struct.Memory** %MEMORY

  ; Code: subl $0x7, %edx	 RIP: 4022ed	 Bytes: 3
  %loadMem_4022ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022ed = call %struct.Memory* @routine_subl__0x7___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022ed)
  store %struct.Memory* %call_4022ed, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4022f0	 Bytes: 3
  %loadMem_4022f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022f0 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022f0)
  store %struct.Memory* %call_4022f0, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 4022f3	 Bytes: 5
  %loadMem_4022f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022f3 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022f3)
  store %struct.Memory* %call_4022f3, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 4022f8	 Bytes: 4
  %loadMem_4022f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022f8 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022f8)
  store %struct.Memory* %call_4022f8, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 4022fc	 Bytes: 3
  %loadMem_4022fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022fc = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022fc)
  store %struct.Memory* %call_4022fc, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4022ff	 Bytes: 3
  %loadMem_4022ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022ff = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022ff)
  store %struct.Memory* %call_4022ff, %struct.Memory** %MEMORY

  ; Code: subl $0x7, %esi	 RIP: 402302	 Bytes: 3
  %loadMem_402302 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402302 = call %struct.Memory* @routine_subl__0x7___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402302)
  store %struct.Memory* %call_402302, %struct.Memory** %MEMORY

  ; Code: imull %esi, %edx	 RIP: 402305	 Bytes: 3
  %loadMem_402305 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402305 = call %struct.Memory* @routine_imull__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402305)
  store %struct.Memory* %call_402305, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 402308	 Bytes: 3
  %loadMem_402308 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402308 = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402308)
  store %struct.Memory* %call_402308, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40230b	 Bytes: 3
  %loadMem_40230b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40230b = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40230b)
  store %struct.Memory* %call_40230b, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 40230e	 Bytes: 5
  %loadMem_40230e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40230e = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40230e)
  store %struct.Memory* %call_40230e, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 402313	 Bytes: 4
  %loadMem_402313 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402313 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402313)
  store %struct.Memory* %call_402313, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 402317	 Bytes: 4
  %loadMem_402317 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402317 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402317)
  store %struct.Memory* %call_402317, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 40231b	 Bytes: 3
  %loadMem_40231b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40231b = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40231b)
  store %struct.Memory* %call_40231b, %struct.Memory** %MEMORY

  ; Code: subl $0x6, %edx	 RIP: 40231e	 Bytes: 3
  %loadMem_40231e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40231e = call %struct.Memory* @routine_subl__0x6___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40231e)
  store %struct.Memory* %call_40231e, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 402321	 Bytes: 3
  %loadMem_402321 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402321 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402321)
  store %struct.Memory* %call_402321, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 402324	 Bytes: 5
  %loadMem_402324 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402324 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402324)
  store %struct.Memory* %call_402324, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 402329	 Bytes: 4
  %loadMem_402329 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402329 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402329)
  store %struct.Memory* %call_402329, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 40232d	 Bytes: 3
  %loadMem_40232d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40232d = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40232d)
  store %struct.Memory* %call_40232d, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 402330	 Bytes: 3
  %loadMem_402330 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402330 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402330)
  store %struct.Memory* %call_402330, %struct.Memory** %MEMORY

  ; Code: subl $0x6, %esi	 RIP: 402333	 Bytes: 3
  %loadMem_402333 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402333 = call %struct.Memory* @routine_subl__0x6___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402333)
  store %struct.Memory* %call_402333, %struct.Memory** %MEMORY

  ; Code: imull %esi, %edx	 RIP: 402336	 Bytes: 3
  %loadMem_402336 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402336 = call %struct.Memory* @routine_imull__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402336)
  store %struct.Memory* %call_402336, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 402339	 Bytes: 3
  %loadMem_402339 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402339 = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402339)
  store %struct.Memory* %call_402339, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40233c	 Bytes: 3
  %loadMem_40233c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40233c = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40233c)
  store %struct.Memory* %call_40233c, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 40233f	 Bytes: 5
  %loadMem_40233f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40233f = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40233f)
  store %struct.Memory* %call_40233f, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 402344	 Bytes: 4
  %loadMem_402344 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402344 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402344)
  store %struct.Memory* %call_402344, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 402348	 Bytes: 4
  %loadMem_402348 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402348 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402348)
  store %struct.Memory* %call_402348, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 40234c	 Bytes: 3
  %loadMem_40234c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40234c = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40234c)
  store %struct.Memory* %call_40234c, %struct.Memory** %MEMORY

  ; Code: subl $0x5, %edx	 RIP: 40234f	 Bytes: 3
  %loadMem_40234f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40234f = call %struct.Memory* @routine_subl__0x5___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40234f)
  store %struct.Memory* %call_40234f, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 402352	 Bytes: 3
  %loadMem_402352 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402352 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402352)
  store %struct.Memory* %call_402352, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 402355	 Bytes: 5
  %loadMem_402355 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402355 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402355)
  store %struct.Memory* %call_402355, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 40235a	 Bytes: 4
  %loadMem_40235a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40235a = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40235a)
  store %struct.Memory* %call_40235a, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 40235e	 Bytes: 3
  %loadMem_40235e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40235e = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40235e)
  store %struct.Memory* %call_40235e, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 402361	 Bytes: 3
  %loadMem_402361 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402361 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402361)
  store %struct.Memory* %call_402361, %struct.Memory** %MEMORY

  ; Code: subl $0x5, %esi	 RIP: 402364	 Bytes: 3
  %loadMem_402364 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402364 = call %struct.Memory* @routine_subl__0x5___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402364)
  store %struct.Memory* %call_402364, %struct.Memory** %MEMORY

  ; Code: imull %esi, %edx	 RIP: 402367	 Bytes: 3
  %loadMem_402367 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402367 = call %struct.Memory* @routine_imull__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402367)
  store %struct.Memory* %call_402367, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 40236a	 Bytes: 3
  %loadMem_40236a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40236a = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40236a)
  store %struct.Memory* %call_40236a, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40236d	 Bytes: 3
  %loadMem_40236d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40236d = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40236d)
  store %struct.Memory* %call_40236d, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 402370	 Bytes: 5
  %loadMem_402370 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402370 = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402370)
  store %struct.Memory* %call_402370, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 402375	 Bytes: 4
  %loadMem_402375 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402375 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402375)
  store %struct.Memory* %call_402375, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 402379	 Bytes: 4
  %loadMem_402379 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402379 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402379)
  store %struct.Memory* %call_402379, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 40237d	 Bytes: 3
  %loadMem_40237d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40237d = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40237d)
  store %struct.Memory* %call_40237d, %struct.Memory** %MEMORY

  ; Code: subl $0x4, %edx	 RIP: 402380	 Bytes: 3
  %loadMem_402380 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402380 = call %struct.Memory* @routine_subl__0x4___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402380)
  store %struct.Memory* %call_402380, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 402383	 Bytes: 3
  %loadMem_402383 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402383 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402383)
  store %struct.Memory* %call_402383, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 402386	 Bytes: 5
  %loadMem_402386 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402386 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402386)
  store %struct.Memory* %call_402386, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 40238b	 Bytes: 4
  %loadMem_40238b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40238b = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40238b)
  store %struct.Memory* %call_40238b, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 40238f	 Bytes: 3
  %loadMem_40238f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40238f = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40238f)
  store %struct.Memory* %call_40238f, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 402392	 Bytes: 3
  %loadMem_402392 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402392 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402392)
  store %struct.Memory* %call_402392, %struct.Memory** %MEMORY

  ; Code: subl $0x4, %esi	 RIP: 402395	 Bytes: 3
  %loadMem_402395 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402395 = call %struct.Memory* @routine_subl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402395)
  store %struct.Memory* %call_402395, %struct.Memory** %MEMORY

  ; Code: imull %esi, %edx	 RIP: 402398	 Bytes: 3
  %loadMem_402398 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402398 = call %struct.Memory* @routine_imull__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402398)
  store %struct.Memory* %call_402398, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 40239b	 Bytes: 3
  %loadMem_40239b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40239b = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40239b)
  store %struct.Memory* %call_40239b, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40239e	 Bytes: 3
  %loadMem_40239e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40239e = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40239e)
  store %struct.Memory* %call_40239e, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 4023a1	 Bytes: 5
  %loadMem_4023a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023a1 = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023a1)
  store %struct.Memory* %call_4023a1, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 4023a6	 Bytes: 4
  %loadMem_4023a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023a6 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023a6)
  store %struct.Memory* %call_4023a6, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 4023aa	 Bytes: 4
  %loadMem_4023aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023aa = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023aa)
  store %struct.Memory* %call_4023aa, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 4023ae	 Bytes: 3
  %loadMem_4023ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023ae = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023ae)
  store %struct.Memory* %call_4023ae, %struct.Memory** %MEMORY

  ; Code: subl $0x3, %edx	 RIP: 4023b1	 Bytes: 3
  %loadMem_4023b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023b1 = call %struct.Memory* @routine_subl__0x3___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023b1)
  store %struct.Memory* %call_4023b1, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4023b4	 Bytes: 3
  %loadMem_4023b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023b4 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023b4)
  store %struct.Memory* %call_4023b4, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 4023b7	 Bytes: 5
  %loadMem_4023b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023b7 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023b7)
  store %struct.Memory* %call_4023b7, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 4023bc	 Bytes: 4
  %loadMem_4023bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023bc = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023bc)
  store %struct.Memory* %call_4023bc, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 4023c0	 Bytes: 3
  %loadMem_4023c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023c0 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023c0)
  store %struct.Memory* %call_4023c0, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4023c3	 Bytes: 3
  %loadMem_4023c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023c3 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023c3)
  store %struct.Memory* %call_4023c3, %struct.Memory** %MEMORY

  ; Code: subl $0x3, %esi	 RIP: 4023c6	 Bytes: 3
  %loadMem_4023c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023c6 = call %struct.Memory* @routine_subl__0x3___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023c6)
  store %struct.Memory* %call_4023c6, %struct.Memory** %MEMORY

  ; Code: imull %esi, %edx	 RIP: 4023c9	 Bytes: 3
  %loadMem_4023c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023c9 = call %struct.Memory* @routine_imull__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023c9)
  store %struct.Memory* %call_4023c9, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 4023cc	 Bytes: 3
  %loadMem_4023cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023cc = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023cc)
  store %struct.Memory* %call_4023cc, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4023cf	 Bytes: 3
  %loadMem_4023cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023cf = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023cf)
  store %struct.Memory* %call_4023cf, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 4023d2	 Bytes: 5
  %loadMem_4023d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023d2 = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023d2)
  store %struct.Memory* %call_4023d2, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 4023d7	 Bytes: 4
  %loadMem_4023d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023d7 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023d7)
  store %struct.Memory* %call_4023d7, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 4023db	 Bytes: 4
  %loadMem_4023db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023db = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023db)
  store %struct.Memory* %call_4023db, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 4023df	 Bytes: 3
  %loadMem_4023df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023df = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023df)
  store %struct.Memory* %call_4023df, %struct.Memory** %MEMORY

  ; Code: subl $0x2, %edx	 RIP: 4023e2	 Bytes: 3
  %loadMem_4023e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023e2 = call %struct.Memory* @routine_subl__0x2___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023e2)
  store %struct.Memory* %call_4023e2, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4023e5	 Bytes: 3
  %loadMem_4023e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023e5 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023e5)
  store %struct.Memory* %call_4023e5, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 4023e8	 Bytes: 5
  %loadMem_4023e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023e8 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023e8)
  store %struct.Memory* %call_4023e8, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 4023ed	 Bytes: 4
  %loadMem_4023ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023ed = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023ed)
  store %struct.Memory* %call_4023ed, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 4023f1	 Bytes: 3
  %loadMem_4023f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023f1 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023f1)
  store %struct.Memory* %call_4023f1, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4023f4	 Bytes: 3
  %loadMem_4023f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023f4 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023f4)
  store %struct.Memory* %call_4023f4, %struct.Memory** %MEMORY

  ; Code: subl $0x2, %esi	 RIP: 4023f7	 Bytes: 3
  %loadMem_4023f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023f7 = call %struct.Memory* @routine_subl__0x2___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023f7)
  store %struct.Memory* %call_4023f7, %struct.Memory** %MEMORY

  ; Code: imull %esi, %edx	 RIP: 4023fa	 Bytes: 3
  %loadMem_4023fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023fa = call %struct.Memory* @routine_imull__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023fa)
  store %struct.Memory* %call_4023fa, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 4023fd	 Bytes: 3
  %loadMem_4023fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023fd = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023fd)
  store %struct.Memory* %call_4023fd, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 402400	 Bytes: 3
  %loadMem_402400 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402400 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402400)
  store %struct.Memory* %call_402400, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 402403	 Bytes: 5
  %loadMem_402403 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402403 = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402403)
  store %struct.Memory* %call_402403, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 402408	 Bytes: 4
  %loadMem_402408 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402408 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402408)
  store %struct.Memory* %call_402408, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 40240c	 Bytes: 4
  %loadMem_40240c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40240c = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40240c)
  store %struct.Memory* %call_40240c, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 402410	 Bytes: 3
  %loadMem_402410 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402410 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402410)
  store %struct.Memory* %call_402410, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 402413	 Bytes: 3
  %loadMem_402413 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402413 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402413)
  store %struct.Memory* %call_402413, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 402416	 Bytes: 3
  %loadMem_402416 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402416 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402416)
  store %struct.Memory* %call_402416, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 402419	 Bytes: 5
  %loadMem_402419 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402419 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402419)
  store %struct.Memory* %call_402419, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 40241e	 Bytes: 4
  %loadMem_40241e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40241e = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40241e)
  store %struct.Memory* %call_40241e, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 402422	 Bytes: 3
  %loadMem_402422 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402422 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402422)
  store %struct.Memory* %call_402422, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 402425	 Bytes: 3
  %loadMem_402425 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402425 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402425)
  store %struct.Memory* %call_402425, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 402428	 Bytes: 3
  %loadMem_402428 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402428 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402428)
  store %struct.Memory* %call_402428, %struct.Memory** %MEMORY

  ; Code: imull %esi, %edx	 RIP: 40242b	 Bytes: 3
  %loadMem_40242b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40242b = call %struct.Memory* @routine_imull__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40242b)
  store %struct.Memory* %call_40242b, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 40242e	 Bytes: 3
  %loadMem_40242e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40242e = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40242e)
  store %struct.Memory* %call_40242e, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 402431	 Bytes: 3
  %loadMem_402431 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402431 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402431)
  store %struct.Memory* %call_402431, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 402434	 Bytes: 5
  %loadMem_402434 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402434 = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402434)
  store %struct.Memory* %call_402434, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 402439	 Bytes: 4
  %loadMem_402439 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402439 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402439)
  store %struct.Memory* %call_402439, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 40243d	 Bytes: 4
  %loadMem_40243d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40243d = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40243d)
  store %struct.Memory* %call_40243d, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 402441	 Bytes: 4
  %loadMem_402441 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402441 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402441)
  store %struct.Memory* %call_402441, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 402445	 Bytes: 5
  %loadMem_402445 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402445 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402445)
  store %struct.Memory* %call_402445, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 40244a	 Bytes: 4
  %loadMem_40244a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40244a = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40244a)
  store %struct.Memory* %call_40244a, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 40244e	 Bytes: 3
  %loadMem_40244e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40244e = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40244e)
  store %struct.Memory* %call_40244e, %struct.Memory** %MEMORY

  ; Code: imull -0x2c(%rbp), %edx	 RIP: 402451	 Bytes: 4
  %loadMem_402451 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402451 = call %struct.Memory* @routine_imull_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402451)
  store %struct.Memory* %call_402451, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 402455	 Bytes: 3
  %loadMem_402455 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402455 = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402455)
  store %struct.Memory* %call_402455, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 402458	 Bytes: 3
  %loadMem_402458 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402458 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402458)
  store %struct.Memory* %call_402458, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 40245b	 Bytes: 5
  %loadMem_40245b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40245b = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40245b)
  store %struct.Memory* %call_40245b, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 402460	 Bytes: 4
  %loadMem_402460 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402460 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402460)
  store %struct.Memory* %call_402460, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 402464	 Bytes: 4
  %loadMem_402464 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402464 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402464)
  store %struct.Memory* %call_402464, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 402468	 Bytes: 4
  %loadMem_402468 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402468 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402468)
  store %struct.Memory* %call_402468, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, (%rax,%rcx,4)	 RIP: 40246c	 Bytes: 5
  %loadMem_40246c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40246c = call %struct.Memory* @routine_movss__xmm0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40246c)
  store %struct.Memory* %call_40246c, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %eax	 RIP: 402471	 Bytes: 3
  %loadMem_402471 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402471 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402471)
  store %struct.Memory* %call_402471, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 402474	 Bytes: 3
  %loadMem_402474 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402474 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402474)
  store %struct.Memory* %call_402474, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x30(%rbp)	 RIP: 402477	 Bytes: 3
  %loadMem_402477 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402477 = call %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402477)
  store %struct.Memory* %call_402477, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4022cd	 RIP: 40247a	 Bytes: 5
  %loadMem_40247a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40247a = call %struct.Memory* @routine_jmpq_.L_4022cd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40247a, i64 -429, i64 5)
  store %struct.Memory* %call_40247a, %struct.Memory** %MEMORY

  br label %block_.L_4022cd

  ; Code: .L_40247f:	 RIP: 40247f	 Bytes: 0
block_.L_40247f:

  ; Code: jmpq .L_402484	 RIP: 40247f	 Bytes: 5
  %loadMem_40247f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40247f = call %struct.Memory* @routine_jmpq_.L_402484(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40247f, i64 5, i64 5)
  store %struct.Memory* %call_40247f, %struct.Memory** %MEMORY

  br label %block_.L_402484

  ; Code: .L_402484:	 RIP: 402484	 Bytes: 0
block_.L_402484:

  ; Code: movl $0x10, %eax	 RIP: 402484	 Bytes: 5
  %loadMem_402484 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402484 = call %struct.Memory* @routine_movl__0x10___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402484)
  store %struct.Memory* %call_402484, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 402489	 Bytes: 3
  %loadMem_402489 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402489 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402489)
  store %struct.Memory* %call_402489, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x48(%rbp)	 RIP: 40248c	 Bytes: 3
  %loadMem_40248c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40248c = call %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40248c)
  store %struct.Memory* %call_40248c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 40248f	 Bytes: 2
  %loadMem_40248f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40248f = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40248f)
  store %struct.Memory* %call_40248f, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 402491	 Bytes: 1
  %loadMem_402491 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402491 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402491)
  store %struct.Memory* %call_402491, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %ecx	 RIP: 402492	 Bytes: 3
  %loadMem_402492 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402492 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402492)
  store %struct.Memory* %call_402492, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 402495	 Bytes: 2
  %loadMem_402495 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402495 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402495)
  store %struct.Memory* %call_402495, %struct.Memory** %MEMORY

  ; Code: addl $0x10, %edx	 RIP: 402497	 Bytes: 3
  %loadMem_402497 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402497 = call %struct.Memory* @routine_addl__0x10___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402497)
  store %struct.Memory* %call_402497, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x34(%rbp)	 RIP: 40249a	 Bytes: 3
  %loadMem_40249a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40249a = call %struct.Memory* @routine_movl__edx__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40249a)
  store %struct.Memory* %call_40249a, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %edx	 RIP: 40249d	 Bytes: 3
  %loadMem_40249d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40249d = call %struct.Memory* @routine_movl_MINUS0x34__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40249d)
  store %struct.Memory* %call_40249d, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 4024a0	 Bytes: 3
  %loadMem_4024a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024a0 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024a0)
  store %struct.Memory* %call_4024a0, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x2c(%rbp)	 RIP: 4024a3	 Bytes: 3
  %loadMem_4024a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024a3 = call %struct.Memory* @routine_movl__edx__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024a3)
  store %struct.Memory* %call_4024a3, %struct.Memory** %MEMORY

  ; Code: .L_4024a6:	 RIP: 4024a6	 Bytes: 0
  br label %block_.L_4024a6
block_.L_4024a6:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 4024a6	 Bytes: 3
  %loadMem_4024a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024a6 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024a6)
  store %struct.Memory* %call_4024a6, %struct.Memory** %MEMORY

  ; Code: cmpl -0x14(%rbp), %eax	 RIP: 4024a9	 Bytes: 3
  %loadMem_4024a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024a9 = call %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024a9)
  store %struct.Memory* %call_4024a9, %struct.Memory** %MEMORY

  ; Code: jge .L_402806	 RIP: 4024ac	 Bytes: 6
  %loadMem_4024ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024ac = call %struct.Memory* @routine_jge_.L_402806(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024ac, i8* %BRANCH_TAKEN, i64 858, i64 6, i64 6)
  store %struct.Memory* %call_4024ac, %struct.Memory** %MEMORY

  %loadBr_4024ac = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4024ac = icmp eq i8 %loadBr_4024ac, 1
  br i1 %cmpBr_4024ac, label %block_.L_402806, label %block_4024b2

block_4024b2:
  ; Code: movl $0x0, -0x30(%rbp)	 RIP: 4024b2	 Bytes: 7
  %loadMem_4024b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024b2 = call %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024b2)
  store %struct.Memory* %call_4024b2, %struct.Memory** %MEMORY

  ; Code: .L_4024b9:	 RIP: 4024b9	 Bytes: 0
  br label %block_.L_4024b9
block_.L_4024b9:

  ; Code: movl -0x30(%rbp), %eax	 RIP: 4024b9	 Bytes: 3
  %loadMem_4024b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024b9 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024b9)
  store %struct.Memory* %call_4024b9, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4(%rbp), %eax	 RIP: 4024bc	 Bytes: 3
  %loadMem_4024bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024bc = call %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024bc)
  store %struct.Memory* %call_4024bc, %struct.Memory** %MEMORY

  ; Code: jge .L_4027f3	 RIP: 4024bf	 Bytes: 6
  %loadMem_4024bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024bf = call %struct.Memory* @routine_jge_.L_4027f3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024bf, i8* %BRANCH_TAKEN, i64 820, i64 6, i64 6)
  store %struct.Memory* %call_4024bf, %struct.Memory** %MEMORY

  %loadBr_4024bf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4024bf = icmp eq i8 %loadBr_4024bf, 1
  br i1 %cmpBr_4024bf, label %block_.L_4027f3, label %block_4024c5

block_4024c5:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 4024c5	 Bytes: 4
  %loadMem_4024c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024c5 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024c5)
  store %struct.Memory* %call_4024c5, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 4024c9	 Bytes: 4
  %loadMem_4024c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024c9 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024c9)
  store %struct.Memory* %call_4024c9, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm0	 RIP: 4024cd	 Bytes: 5
  %loadMem_4024cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024cd = call %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024cd)
  store %struct.Memory* %call_4024cd, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 4024d2	 Bytes: 4
  %loadMem_4024d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024d2 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024d2)
  store %struct.Memory* %call_4024d2, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 4024d6	 Bytes: 3
  %loadMem_4024d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024d6 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024d6)
  store %struct.Memory* %call_4024d6, %struct.Memory** %MEMORY

  ; Code: subl $0xf, %edx	 RIP: 4024d9	 Bytes: 3
  %loadMem_4024d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024d9 = call %struct.Memory* @routine_subl__0xf___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024d9)
  store %struct.Memory* %call_4024d9, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4024dc	 Bytes: 3
  %loadMem_4024dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024dc = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024dc)
  store %struct.Memory* %call_4024dc, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 4024df	 Bytes: 5
  %loadMem_4024df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024df = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024df)
  store %struct.Memory* %call_4024df, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 4024e4	 Bytes: 4
  %loadMem_4024e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024e4 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024e4)
  store %struct.Memory* %call_4024e4, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 4024e8	 Bytes: 3
  %loadMem_4024e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024e8 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024e8)
  store %struct.Memory* %call_4024e8, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4024eb	 Bytes: 3
  %loadMem_4024eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024eb = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024eb)
  store %struct.Memory* %call_4024eb, %struct.Memory** %MEMORY

  ; Code: subl $0xf, %esi	 RIP: 4024ee	 Bytes: 3
  %loadMem_4024ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024ee = call %struct.Memory* @routine_subl__0xf___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024ee)
  store %struct.Memory* %call_4024ee, %struct.Memory** %MEMORY

  ; Code: imull %esi, %edx	 RIP: 4024f1	 Bytes: 3
  %loadMem_4024f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024f1 = call %struct.Memory* @routine_imull__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024f1)
  store %struct.Memory* %call_4024f1, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 4024f4	 Bytes: 3
  %loadMem_4024f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024f4 = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024f4)
  store %struct.Memory* %call_4024f4, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4024f7	 Bytes: 3
  %loadMem_4024f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024f7 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024f7)
  store %struct.Memory* %call_4024f7, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 4024fa	 Bytes: 5
  %loadMem_4024fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024fa = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024fa)
  store %struct.Memory* %call_4024fa, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 4024ff	 Bytes: 4
  %loadMem_4024ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024ff = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024ff)
  store %struct.Memory* %call_4024ff, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 402503	 Bytes: 4
  %loadMem_402503 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402503 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402503)
  store %struct.Memory* %call_402503, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 402507	 Bytes: 3
  %loadMem_402507 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402507 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402507)
  store %struct.Memory* %call_402507, %struct.Memory** %MEMORY

  ; Code: subl $0xe, %edx	 RIP: 40250a	 Bytes: 3
  %loadMem_40250a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40250a = call %struct.Memory* @routine_subl__0xe___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40250a)
  store %struct.Memory* %call_40250a, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40250d	 Bytes: 3
  %loadMem_40250d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40250d = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40250d)
  store %struct.Memory* %call_40250d, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 402510	 Bytes: 5
  %loadMem_402510 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402510 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402510)
  store %struct.Memory* %call_402510, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 402515	 Bytes: 4
  %loadMem_402515 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402515 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402515)
  store %struct.Memory* %call_402515, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 402519	 Bytes: 3
  %loadMem_402519 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402519 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402519)
  store %struct.Memory* %call_402519, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 40251c	 Bytes: 3
  %loadMem_40251c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40251c = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40251c)
  store %struct.Memory* %call_40251c, %struct.Memory** %MEMORY

  ; Code: subl $0xe, %esi	 RIP: 40251f	 Bytes: 3
  %loadMem_40251f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40251f = call %struct.Memory* @routine_subl__0xe___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40251f)
  store %struct.Memory* %call_40251f, %struct.Memory** %MEMORY

  ; Code: imull %esi, %edx	 RIP: 402522	 Bytes: 3
  %loadMem_402522 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402522 = call %struct.Memory* @routine_imull__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402522)
  store %struct.Memory* %call_402522, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 402525	 Bytes: 3
  %loadMem_402525 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402525 = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402525)
  store %struct.Memory* %call_402525, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 402528	 Bytes: 3
  %loadMem_402528 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402528 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402528)
  store %struct.Memory* %call_402528, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 40252b	 Bytes: 5
  %loadMem_40252b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40252b = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40252b)
  store %struct.Memory* %call_40252b, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 402530	 Bytes: 4
  %loadMem_402530 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402530 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402530)
  store %struct.Memory* %call_402530, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 402534	 Bytes: 4
  %loadMem_402534 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402534 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402534)
  store %struct.Memory* %call_402534, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 402538	 Bytes: 3
  %loadMem_402538 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402538 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402538)
  store %struct.Memory* %call_402538, %struct.Memory** %MEMORY

  ; Code: subl $0xd, %edx	 RIP: 40253b	 Bytes: 3
  %loadMem_40253b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40253b = call %struct.Memory* @routine_subl__0xd___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40253b)
  store %struct.Memory* %call_40253b, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40253e	 Bytes: 3
  %loadMem_40253e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40253e = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40253e)
  store %struct.Memory* %call_40253e, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 402541	 Bytes: 5
  %loadMem_402541 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402541 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402541)
  store %struct.Memory* %call_402541, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 402546	 Bytes: 4
  %loadMem_402546 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402546 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402546)
  store %struct.Memory* %call_402546, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 40254a	 Bytes: 3
  %loadMem_40254a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40254a = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40254a)
  store %struct.Memory* %call_40254a, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 40254d	 Bytes: 3
  %loadMem_40254d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40254d = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40254d)
  store %struct.Memory* %call_40254d, %struct.Memory** %MEMORY

  ; Code: subl $0xd, %esi	 RIP: 402550	 Bytes: 3
  %loadMem_402550 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402550 = call %struct.Memory* @routine_subl__0xd___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402550)
  store %struct.Memory* %call_402550, %struct.Memory** %MEMORY

  ; Code: imull %esi, %edx	 RIP: 402553	 Bytes: 3
  %loadMem_402553 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402553 = call %struct.Memory* @routine_imull__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402553)
  store %struct.Memory* %call_402553, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 402556	 Bytes: 3
  %loadMem_402556 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402556 = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402556)
  store %struct.Memory* %call_402556, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 402559	 Bytes: 3
  %loadMem_402559 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402559 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402559)
  store %struct.Memory* %call_402559, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 40255c	 Bytes: 5
  %loadMem_40255c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40255c = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40255c)
  store %struct.Memory* %call_40255c, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 402561	 Bytes: 4
  %loadMem_402561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402561 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402561)
  store %struct.Memory* %call_402561, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 402565	 Bytes: 4
  %loadMem_402565 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402565 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402565)
  store %struct.Memory* %call_402565, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 402569	 Bytes: 3
  %loadMem_402569 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402569 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402569)
  store %struct.Memory* %call_402569, %struct.Memory** %MEMORY

  ; Code: subl $0xc, %edx	 RIP: 40256c	 Bytes: 3
  %loadMem_40256c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40256c = call %struct.Memory* @routine_subl__0xc___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40256c)
  store %struct.Memory* %call_40256c, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40256f	 Bytes: 3
  %loadMem_40256f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40256f = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40256f)
  store %struct.Memory* %call_40256f, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 402572	 Bytes: 5
  %loadMem_402572 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402572 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402572)
  store %struct.Memory* %call_402572, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 402577	 Bytes: 4
  %loadMem_402577 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402577 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402577)
  store %struct.Memory* %call_402577, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 40257b	 Bytes: 3
  %loadMem_40257b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40257b = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40257b)
  store %struct.Memory* %call_40257b, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 40257e	 Bytes: 3
  %loadMem_40257e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40257e = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40257e)
  store %struct.Memory* %call_40257e, %struct.Memory** %MEMORY

  ; Code: subl $0xc, %esi	 RIP: 402581	 Bytes: 3
  %loadMem_402581 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402581 = call %struct.Memory* @routine_subl__0xc___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402581)
  store %struct.Memory* %call_402581, %struct.Memory** %MEMORY

  ; Code: imull %esi, %edx	 RIP: 402584	 Bytes: 3
  %loadMem_402584 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402584 = call %struct.Memory* @routine_imull__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402584)
  store %struct.Memory* %call_402584, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 402587	 Bytes: 3
  %loadMem_402587 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402587 = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402587)
  store %struct.Memory* %call_402587, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40258a	 Bytes: 3
  %loadMem_40258a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40258a = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40258a)
  store %struct.Memory* %call_40258a, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 40258d	 Bytes: 5
  %loadMem_40258d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40258d = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40258d)
  store %struct.Memory* %call_40258d, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 402592	 Bytes: 4
  %loadMem_402592 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402592 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402592)
  store %struct.Memory* %call_402592, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 402596	 Bytes: 4
  %loadMem_402596 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402596 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402596)
  store %struct.Memory* %call_402596, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 40259a	 Bytes: 3
  %loadMem_40259a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40259a = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40259a)
  store %struct.Memory* %call_40259a, %struct.Memory** %MEMORY

  ; Code: subl $0xb, %edx	 RIP: 40259d	 Bytes: 3
  %loadMem_40259d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40259d = call %struct.Memory* @routine_subl__0xb___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40259d)
  store %struct.Memory* %call_40259d, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4025a0	 Bytes: 3
  %loadMem_4025a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025a0 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025a0)
  store %struct.Memory* %call_4025a0, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 4025a3	 Bytes: 5
  %loadMem_4025a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025a3 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025a3)
  store %struct.Memory* %call_4025a3, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 4025a8	 Bytes: 4
  %loadMem_4025a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025a8 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025a8)
  store %struct.Memory* %call_4025a8, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 4025ac	 Bytes: 3
  %loadMem_4025ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025ac = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025ac)
  store %struct.Memory* %call_4025ac, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4025af	 Bytes: 3
  %loadMem_4025af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025af = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025af)
  store %struct.Memory* %call_4025af, %struct.Memory** %MEMORY

  ; Code: subl $0xb, %esi	 RIP: 4025b2	 Bytes: 3
  %loadMem_4025b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025b2 = call %struct.Memory* @routine_subl__0xb___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025b2)
  store %struct.Memory* %call_4025b2, %struct.Memory** %MEMORY

  ; Code: imull %esi, %edx	 RIP: 4025b5	 Bytes: 3
  %loadMem_4025b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025b5 = call %struct.Memory* @routine_imull__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025b5)
  store %struct.Memory* %call_4025b5, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 4025b8	 Bytes: 3
  %loadMem_4025b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025b8 = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025b8)
  store %struct.Memory* %call_4025b8, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4025bb	 Bytes: 3
  %loadMem_4025bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025bb = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025bb)
  store %struct.Memory* %call_4025bb, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 4025be	 Bytes: 5
  %loadMem_4025be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025be = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025be)
  store %struct.Memory* %call_4025be, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 4025c3	 Bytes: 4
  %loadMem_4025c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025c3 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025c3)
  store %struct.Memory* %call_4025c3, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 4025c7	 Bytes: 4
  %loadMem_4025c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025c7 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025c7)
  store %struct.Memory* %call_4025c7, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 4025cb	 Bytes: 3
  %loadMem_4025cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025cb = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025cb)
  store %struct.Memory* %call_4025cb, %struct.Memory** %MEMORY

  ; Code: subl $0xa, %edx	 RIP: 4025ce	 Bytes: 3
  %loadMem_4025ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025ce = call %struct.Memory* @routine_subl__0xa___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025ce)
  store %struct.Memory* %call_4025ce, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4025d1	 Bytes: 3
  %loadMem_4025d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025d1 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025d1)
  store %struct.Memory* %call_4025d1, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 4025d4	 Bytes: 5
  %loadMem_4025d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025d4 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025d4)
  store %struct.Memory* %call_4025d4, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 4025d9	 Bytes: 4
  %loadMem_4025d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025d9 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025d9)
  store %struct.Memory* %call_4025d9, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 4025dd	 Bytes: 3
  %loadMem_4025dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025dd = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025dd)
  store %struct.Memory* %call_4025dd, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4025e0	 Bytes: 3
  %loadMem_4025e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025e0 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025e0)
  store %struct.Memory* %call_4025e0, %struct.Memory** %MEMORY

  ; Code: subl $0xa, %esi	 RIP: 4025e3	 Bytes: 3
  %loadMem_4025e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025e3 = call %struct.Memory* @routine_subl__0xa___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025e3)
  store %struct.Memory* %call_4025e3, %struct.Memory** %MEMORY

  ; Code: imull %esi, %edx	 RIP: 4025e6	 Bytes: 3
  %loadMem_4025e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025e6 = call %struct.Memory* @routine_imull__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025e6)
  store %struct.Memory* %call_4025e6, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 4025e9	 Bytes: 3
  %loadMem_4025e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025e9 = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025e9)
  store %struct.Memory* %call_4025e9, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4025ec	 Bytes: 3
  %loadMem_4025ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025ec = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025ec)
  store %struct.Memory* %call_4025ec, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 4025ef	 Bytes: 5
  %loadMem_4025ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025ef = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025ef)
  store %struct.Memory* %call_4025ef, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 4025f4	 Bytes: 4
  %loadMem_4025f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025f4 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025f4)
  store %struct.Memory* %call_4025f4, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 4025f8	 Bytes: 4
  %loadMem_4025f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025f8 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025f8)
  store %struct.Memory* %call_4025f8, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 4025fc	 Bytes: 3
  %loadMem_4025fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025fc = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025fc)
  store %struct.Memory* %call_4025fc, %struct.Memory** %MEMORY

  ; Code: subl $0x9, %edx	 RIP: 4025ff	 Bytes: 3
  %loadMem_4025ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025ff = call %struct.Memory* @routine_subl__0x9___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025ff)
  store %struct.Memory* %call_4025ff, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 402602	 Bytes: 3
  %loadMem_402602 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402602 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402602)
  store %struct.Memory* %call_402602, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 402605	 Bytes: 5
  %loadMem_402605 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402605 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402605)
  store %struct.Memory* %call_402605, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 40260a	 Bytes: 4
  %loadMem_40260a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40260a = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40260a)
  store %struct.Memory* %call_40260a, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 40260e	 Bytes: 3
  %loadMem_40260e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40260e = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40260e)
  store %struct.Memory* %call_40260e, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 402611	 Bytes: 3
  %loadMem_402611 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402611 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402611)
  store %struct.Memory* %call_402611, %struct.Memory** %MEMORY

  ; Code: subl $0x9, %esi	 RIP: 402614	 Bytes: 3
  %loadMem_402614 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402614 = call %struct.Memory* @routine_subl__0x9___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402614)
  store %struct.Memory* %call_402614, %struct.Memory** %MEMORY

  ; Code: imull %esi, %edx	 RIP: 402617	 Bytes: 3
  %loadMem_402617 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402617 = call %struct.Memory* @routine_imull__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402617)
  store %struct.Memory* %call_402617, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 40261a	 Bytes: 3
  %loadMem_40261a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40261a = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40261a)
  store %struct.Memory* %call_40261a, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40261d	 Bytes: 3
  %loadMem_40261d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40261d = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40261d)
  store %struct.Memory* %call_40261d, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 402620	 Bytes: 5
  %loadMem_402620 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402620 = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402620)
  store %struct.Memory* %call_402620, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 402625	 Bytes: 4
  %loadMem_402625 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402625 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402625)
  store %struct.Memory* %call_402625, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 402629	 Bytes: 4
  %loadMem_402629 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402629 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402629)
  store %struct.Memory* %call_402629, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 40262d	 Bytes: 3
  %loadMem_40262d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40262d = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40262d)
  store %struct.Memory* %call_40262d, %struct.Memory** %MEMORY

  ; Code: subl $0x8, %edx	 RIP: 402630	 Bytes: 3
  %loadMem_402630 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402630 = call %struct.Memory* @routine_subl__0x8___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402630)
  store %struct.Memory* %call_402630, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 402633	 Bytes: 3
  %loadMem_402633 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402633 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402633)
  store %struct.Memory* %call_402633, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 402636	 Bytes: 5
  %loadMem_402636 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402636 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402636)
  store %struct.Memory* %call_402636, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 40263b	 Bytes: 4
  %loadMem_40263b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40263b = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40263b)
  store %struct.Memory* %call_40263b, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 40263f	 Bytes: 3
  %loadMem_40263f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40263f = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40263f)
  store %struct.Memory* %call_40263f, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 402642	 Bytes: 3
  %loadMem_402642 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402642 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402642)
  store %struct.Memory* %call_402642, %struct.Memory** %MEMORY

  ; Code: subl $0x8, %esi	 RIP: 402645	 Bytes: 3
  %loadMem_402645 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402645 = call %struct.Memory* @routine_subl__0x8___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402645)
  store %struct.Memory* %call_402645, %struct.Memory** %MEMORY

  ; Code: imull %esi, %edx	 RIP: 402648	 Bytes: 3
  %loadMem_402648 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402648 = call %struct.Memory* @routine_imull__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402648)
  store %struct.Memory* %call_402648, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 40264b	 Bytes: 3
  %loadMem_40264b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40264b = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40264b)
  store %struct.Memory* %call_40264b, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40264e	 Bytes: 3
  %loadMem_40264e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40264e = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40264e)
  store %struct.Memory* %call_40264e, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 402651	 Bytes: 5
  %loadMem_402651 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402651 = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402651)
  store %struct.Memory* %call_402651, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 402656	 Bytes: 4
  %loadMem_402656 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402656 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402656)
  store %struct.Memory* %call_402656, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 40265a	 Bytes: 4
  %loadMem_40265a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40265a = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40265a)
  store %struct.Memory* %call_40265a, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 40265e	 Bytes: 3
  %loadMem_40265e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40265e = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40265e)
  store %struct.Memory* %call_40265e, %struct.Memory** %MEMORY

  ; Code: subl $0x7, %edx	 RIP: 402661	 Bytes: 3
  %loadMem_402661 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402661 = call %struct.Memory* @routine_subl__0x7___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402661)
  store %struct.Memory* %call_402661, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 402664	 Bytes: 3
  %loadMem_402664 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402664 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402664)
  store %struct.Memory* %call_402664, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 402667	 Bytes: 5
  %loadMem_402667 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402667 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402667)
  store %struct.Memory* %call_402667, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 40266c	 Bytes: 4
  %loadMem_40266c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40266c = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40266c)
  store %struct.Memory* %call_40266c, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 402670	 Bytes: 3
  %loadMem_402670 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402670 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402670)
  store %struct.Memory* %call_402670, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 402673	 Bytes: 3
  %loadMem_402673 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402673 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402673)
  store %struct.Memory* %call_402673, %struct.Memory** %MEMORY

  ; Code: subl $0x7, %esi	 RIP: 402676	 Bytes: 3
  %loadMem_402676 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402676 = call %struct.Memory* @routine_subl__0x7___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402676)
  store %struct.Memory* %call_402676, %struct.Memory** %MEMORY

  ; Code: imull %esi, %edx	 RIP: 402679	 Bytes: 3
  %loadMem_402679 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402679 = call %struct.Memory* @routine_imull__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402679)
  store %struct.Memory* %call_402679, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 40267c	 Bytes: 3
  %loadMem_40267c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40267c = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40267c)
  store %struct.Memory* %call_40267c, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40267f	 Bytes: 3
  %loadMem_40267f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40267f = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40267f)
  store %struct.Memory* %call_40267f, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 402682	 Bytes: 5
  %loadMem_402682 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402682 = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402682)
  store %struct.Memory* %call_402682, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 402687	 Bytes: 4
  %loadMem_402687 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402687 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402687)
  store %struct.Memory* %call_402687, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 40268b	 Bytes: 4
  %loadMem_40268b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40268b = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40268b)
  store %struct.Memory* %call_40268b, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 40268f	 Bytes: 3
  %loadMem_40268f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40268f = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40268f)
  store %struct.Memory* %call_40268f, %struct.Memory** %MEMORY

  ; Code: subl $0x6, %edx	 RIP: 402692	 Bytes: 3
  %loadMem_402692 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402692 = call %struct.Memory* @routine_subl__0x6___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402692)
  store %struct.Memory* %call_402692, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 402695	 Bytes: 3
  %loadMem_402695 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402695 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402695)
  store %struct.Memory* %call_402695, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 402698	 Bytes: 5
  %loadMem_402698 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402698 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402698)
  store %struct.Memory* %call_402698, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 40269d	 Bytes: 4
  %loadMem_40269d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40269d = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40269d)
  store %struct.Memory* %call_40269d, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 4026a1	 Bytes: 3
  %loadMem_4026a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026a1 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026a1)
  store %struct.Memory* %call_4026a1, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4026a4	 Bytes: 3
  %loadMem_4026a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026a4 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026a4)
  store %struct.Memory* %call_4026a4, %struct.Memory** %MEMORY

  ; Code: subl $0x6, %esi	 RIP: 4026a7	 Bytes: 3
  %loadMem_4026a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026a7 = call %struct.Memory* @routine_subl__0x6___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026a7)
  store %struct.Memory* %call_4026a7, %struct.Memory** %MEMORY

  ; Code: imull %esi, %edx	 RIP: 4026aa	 Bytes: 3
  %loadMem_4026aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026aa = call %struct.Memory* @routine_imull__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026aa)
  store %struct.Memory* %call_4026aa, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 4026ad	 Bytes: 3
  %loadMem_4026ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026ad = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026ad)
  store %struct.Memory* %call_4026ad, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4026b0	 Bytes: 3
  %loadMem_4026b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026b0 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026b0)
  store %struct.Memory* %call_4026b0, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 4026b3	 Bytes: 5
  %loadMem_4026b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026b3 = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026b3)
  store %struct.Memory* %call_4026b3, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 4026b8	 Bytes: 4
  %loadMem_4026b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026b8 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026b8)
  store %struct.Memory* %call_4026b8, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 4026bc	 Bytes: 4
  %loadMem_4026bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026bc = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026bc)
  store %struct.Memory* %call_4026bc, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 4026c0	 Bytes: 3
  %loadMem_4026c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026c0 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026c0)
  store %struct.Memory* %call_4026c0, %struct.Memory** %MEMORY

  ; Code: subl $0x5, %edx	 RIP: 4026c3	 Bytes: 3
  %loadMem_4026c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026c3 = call %struct.Memory* @routine_subl__0x5___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026c3)
  store %struct.Memory* %call_4026c3, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4026c6	 Bytes: 3
  %loadMem_4026c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026c6 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026c6)
  store %struct.Memory* %call_4026c6, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 4026c9	 Bytes: 5
  %loadMem_4026c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026c9 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026c9)
  store %struct.Memory* %call_4026c9, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 4026ce	 Bytes: 4
  %loadMem_4026ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026ce = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026ce)
  store %struct.Memory* %call_4026ce, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 4026d2	 Bytes: 3
  %loadMem_4026d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026d2 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026d2)
  store %struct.Memory* %call_4026d2, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4026d5	 Bytes: 3
  %loadMem_4026d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026d5 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026d5)
  store %struct.Memory* %call_4026d5, %struct.Memory** %MEMORY

  ; Code: subl $0x5, %esi	 RIP: 4026d8	 Bytes: 3
  %loadMem_4026d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026d8 = call %struct.Memory* @routine_subl__0x5___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026d8)
  store %struct.Memory* %call_4026d8, %struct.Memory** %MEMORY

  ; Code: imull %esi, %edx	 RIP: 4026db	 Bytes: 3
  %loadMem_4026db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026db = call %struct.Memory* @routine_imull__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026db)
  store %struct.Memory* %call_4026db, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 4026de	 Bytes: 3
  %loadMem_4026de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026de = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026de)
  store %struct.Memory* %call_4026de, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4026e1	 Bytes: 3
  %loadMem_4026e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026e1 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026e1)
  store %struct.Memory* %call_4026e1, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 4026e4	 Bytes: 5
  %loadMem_4026e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026e4 = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026e4)
  store %struct.Memory* %call_4026e4, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 4026e9	 Bytes: 4
  %loadMem_4026e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026e9 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026e9)
  store %struct.Memory* %call_4026e9, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 4026ed	 Bytes: 4
  %loadMem_4026ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026ed = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026ed)
  store %struct.Memory* %call_4026ed, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 4026f1	 Bytes: 3
  %loadMem_4026f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026f1 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026f1)
  store %struct.Memory* %call_4026f1, %struct.Memory** %MEMORY

  ; Code: subl $0x4, %edx	 RIP: 4026f4	 Bytes: 3
  %loadMem_4026f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026f4 = call %struct.Memory* @routine_subl__0x4___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026f4)
  store %struct.Memory* %call_4026f4, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4026f7	 Bytes: 3
  %loadMem_4026f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026f7 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026f7)
  store %struct.Memory* %call_4026f7, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 4026fa	 Bytes: 5
  %loadMem_4026fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026fa = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026fa)
  store %struct.Memory* %call_4026fa, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 4026ff	 Bytes: 4
  %loadMem_4026ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026ff = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026ff)
  store %struct.Memory* %call_4026ff, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 402703	 Bytes: 3
  %loadMem_402703 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402703 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402703)
  store %struct.Memory* %call_402703, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 402706	 Bytes: 3
  %loadMem_402706 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402706 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402706)
  store %struct.Memory* %call_402706, %struct.Memory** %MEMORY

  ; Code: subl $0x4, %esi	 RIP: 402709	 Bytes: 3
  %loadMem_402709 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402709 = call %struct.Memory* @routine_subl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402709)
  store %struct.Memory* %call_402709, %struct.Memory** %MEMORY

  ; Code: imull %esi, %edx	 RIP: 40270c	 Bytes: 3
  %loadMem_40270c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40270c = call %struct.Memory* @routine_imull__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40270c)
  store %struct.Memory* %call_40270c, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 40270f	 Bytes: 3
  %loadMem_40270f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40270f = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40270f)
  store %struct.Memory* %call_40270f, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 402712	 Bytes: 3
  %loadMem_402712 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402712 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402712)
  store %struct.Memory* %call_402712, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 402715	 Bytes: 5
  %loadMem_402715 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402715 = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402715)
  store %struct.Memory* %call_402715, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 40271a	 Bytes: 4
  %loadMem_40271a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40271a = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40271a)
  store %struct.Memory* %call_40271a, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 40271e	 Bytes: 4
  %loadMem_40271e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40271e = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40271e)
  store %struct.Memory* %call_40271e, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 402722	 Bytes: 3
  %loadMem_402722 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402722 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402722)
  store %struct.Memory* %call_402722, %struct.Memory** %MEMORY

  ; Code: subl $0x3, %edx	 RIP: 402725	 Bytes: 3
  %loadMem_402725 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402725 = call %struct.Memory* @routine_subl__0x3___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402725)
  store %struct.Memory* %call_402725, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 402728	 Bytes: 3
  %loadMem_402728 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402728 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402728)
  store %struct.Memory* %call_402728, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 40272b	 Bytes: 5
  %loadMem_40272b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40272b = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40272b)
  store %struct.Memory* %call_40272b, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 402730	 Bytes: 4
  %loadMem_402730 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402730 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402730)
  store %struct.Memory* %call_402730, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 402734	 Bytes: 3
  %loadMem_402734 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402734 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402734)
  store %struct.Memory* %call_402734, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 402737	 Bytes: 3
  %loadMem_402737 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402737 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402737)
  store %struct.Memory* %call_402737, %struct.Memory** %MEMORY

  ; Code: subl $0x3, %esi	 RIP: 40273a	 Bytes: 3
  %loadMem_40273a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40273a = call %struct.Memory* @routine_subl__0x3___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40273a)
  store %struct.Memory* %call_40273a, %struct.Memory** %MEMORY

  ; Code: imull %esi, %edx	 RIP: 40273d	 Bytes: 3
  %loadMem_40273d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40273d = call %struct.Memory* @routine_imull__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40273d)
  store %struct.Memory* %call_40273d, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 402740	 Bytes: 3
  %loadMem_402740 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402740 = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402740)
  store %struct.Memory* %call_402740, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 402743	 Bytes: 3
  %loadMem_402743 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402743 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402743)
  store %struct.Memory* %call_402743, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 402746	 Bytes: 5
  %loadMem_402746 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402746 = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402746)
  store %struct.Memory* %call_402746, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 40274b	 Bytes: 4
  %loadMem_40274b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40274b = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40274b)
  store %struct.Memory* %call_40274b, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 40274f	 Bytes: 4
  %loadMem_40274f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40274f = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40274f)
  store %struct.Memory* %call_40274f, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 402753	 Bytes: 3
  %loadMem_402753 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402753 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402753)
  store %struct.Memory* %call_402753, %struct.Memory** %MEMORY

  ; Code: subl $0x2, %edx	 RIP: 402756	 Bytes: 3
  %loadMem_402756 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402756 = call %struct.Memory* @routine_subl__0x2___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402756)
  store %struct.Memory* %call_402756, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 402759	 Bytes: 3
  %loadMem_402759 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402759 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402759)
  store %struct.Memory* %call_402759, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 40275c	 Bytes: 5
  %loadMem_40275c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40275c = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40275c)
  store %struct.Memory* %call_40275c, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 402761	 Bytes: 4
  %loadMem_402761 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402761 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402761)
  store %struct.Memory* %call_402761, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 402765	 Bytes: 3
  %loadMem_402765 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402765 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402765)
  store %struct.Memory* %call_402765, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 402768	 Bytes: 3
  %loadMem_402768 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402768 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402768)
  store %struct.Memory* %call_402768, %struct.Memory** %MEMORY

  ; Code: subl $0x2, %esi	 RIP: 40276b	 Bytes: 3
  %loadMem_40276b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40276b = call %struct.Memory* @routine_subl__0x2___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40276b)
  store %struct.Memory* %call_40276b, %struct.Memory** %MEMORY

  ; Code: imull %esi, %edx	 RIP: 40276e	 Bytes: 3
  %loadMem_40276e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40276e = call %struct.Memory* @routine_imull__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40276e)
  store %struct.Memory* %call_40276e, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 402771	 Bytes: 3
  %loadMem_402771 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402771 = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402771)
  store %struct.Memory* %call_402771, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 402774	 Bytes: 3
  %loadMem_402774 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402774 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402774)
  store %struct.Memory* %call_402774, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 402777	 Bytes: 5
  %loadMem_402777 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402777 = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402777)
  store %struct.Memory* %call_402777, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 40277c	 Bytes: 4
  %loadMem_40277c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40277c = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40277c)
  store %struct.Memory* %call_40277c, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 402780	 Bytes: 4
  %loadMem_402780 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402780 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402780)
  store %struct.Memory* %call_402780, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 402784	 Bytes: 3
  %loadMem_402784 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402784 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402784)
  store %struct.Memory* %call_402784, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 402787	 Bytes: 3
  %loadMem_402787 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402787 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402787)
  store %struct.Memory* %call_402787, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40278a	 Bytes: 3
  %loadMem_40278a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40278a = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40278a)
  store %struct.Memory* %call_40278a, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 40278d	 Bytes: 5
  %loadMem_40278d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40278d = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40278d)
  store %struct.Memory* %call_40278d, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 402792	 Bytes: 4
  %loadMem_402792 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402792 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402792)
  store %struct.Memory* %call_402792, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 402796	 Bytes: 3
  %loadMem_402796 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402796 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402796)
  store %struct.Memory* %call_402796, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 402799	 Bytes: 3
  %loadMem_402799 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402799 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402799)
  store %struct.Memory* %call_402799, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 40279c	 Bytes: 3
  %loadMem_40279c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40279c = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40279c)
  store %struct.Memory* %call_40279c, %struct.Memory** %MEMORY

  ; Code: imull %esi, %edx	 RIP: 40279f	 Bytes: 3
  %loadMem_40279f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40279f = call %struct.Memory* @routine_imull__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40279f)
  store %struct.Memory* %call_40279f, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 4027a2	 Bytes: 3
  %loadMem_4027a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027a2 = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027a2)
  store %struct.Memory* %call_4027a2, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4027a5	 Bytes: 3
  %loadMem_4027a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027a5 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027a5)
  store %struct.Memory* %call_4027a5, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 4027a8	 Bytes: 5
  %loadMem_4027a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027a8 = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027a8)
  store %struct.Memory* %call_4027a8, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 4027ad	 Bytes: 4
  %loadMem_4027ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027ad = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027ad)
  store %struct.Memory* %call_4027ad, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 4027b1	 Bytes: 4
  %loadMem_4027b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027b1 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027b1)
  store %struct.Memory* %call_4027b1, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 4027b5	 Bytes: 4
  %loadMem_4027b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027b5 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027b5)
  store %struct.Memory* %call_4027b5, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 4027b9	 Bytes: 5
  %loadMem_4027b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027b9 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027b9)
  store %struct.Memory* %call_4027b9, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 4027be	 Bytes: 4
  %loadMem_4027be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027be = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027be)
  store %struct.Memory* %call_4027be, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 4027c2	 Bytes: 3
  %loadMem_4027c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027c2 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027c2)
  store %struct.Memory* %call_4027c2, %struct.Memory** %MEMORY

  ; Code: imull -0x2c(%rbp), %edx	 RIP: 4027c5	 Bytes: 4
  %loadMem_4027c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027c5 = call %struct.Memory* @routine_imull_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027c5)
  store %struct.Memory* %call_4027c5, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 4027c9	 Bytes: 3
  %loadMem_4027c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027c9 = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027c9)
  store %struct.Memory* %call_4027c9, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4027cc	 Bytes: 3
  %loadMem_4027cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027cc = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027cc)
  store %struct.Memory* %call_4027cc, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 4027cf	 Bytes: 5
  %loadMem_4027cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027cf = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027cf)
  store %struct.Memory* %call_4027cf, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 4027d4	 Bytes: 4
  %loadMem_4027d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027d4 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027d4)
  store %struct.Memory* %call_4027d4, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4027d8	 Bytes: 4
  %loadMem_4027d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027d8 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027d8)
  store %struct.Memory* %call_4027d8, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 4027dc	 Bytes: 4
  %loadMem_4027dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027dc = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027dc)
  store %struct.Memory* %call_4027dc, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, (%rax,%rcx,4)	 RIP: 4027e0	 Bytes: 5
  %loadMem_4027e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027e0 = call %struct.Memory* @routine_movss__xmm0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027e0)
  store %struct.Memory* %call_4027e0, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %eax	 RIP: 4027e5	 Bytes: 3
  %loadMem_4027e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027e5 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027e5)
  store %struct.Memory* %call_4027e5, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4027e8	 Bytes: 3
  %loadMem_4027e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027e8 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027e8)
  store %struct.Memory* %call_4027e8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x30(%rbp)	 RIP: 4027eb	 Bytes: 3
  %loadMem_4027eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027eb = call %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027eb)
  store %struct.Memory* %call_4027eb, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4024b9	 RIP: 4027ee	 Bytes: 5
  %loadMem_4027ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027ee = call %struct.Memory* @routine_jmpq_.L_4024b9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027ee, i64 -821, i64 5)
  store %struct.Memory* %call_4027ee, %struct.Memory** %MEMORY

  br label %block_.L_4024b9

  ; Code: .L_4027f3:	 RIP: 4027f3	 Bytes: 0
block_.L_4027f3:

  ; Code: jmpq .L_4027f8	 RIP: 4027f3	 Bytes: 5
  %loadMem_4027f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027f3 = call %struct.Memory* @routine_jmpq_.L_4027f8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027f3, i64 5, i64 5)
  store %struct.Memory* %call_4027f3, %struct.Memory** %MEMORY

  br label %block_.L_4027f8

  ; Code: .L_4027f8:	 RIP: 4027f8	 Bytes: 0
block_.L_4027f8:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 4027f8	 Bytes: 3
  %loadMem_4027f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027f8 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027f8)
  store %struct.Memory* %call_4027f8, %struct.Memory** %MEMORY

  ; Code: addl $0x10, %eax	 RIP: 4027fb	 Bytes: 3
  %loadMem_4027fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027fb = call %struct.Memory* @routine_addl__0x10___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027fb)
  store %struct.Memory* %call_4027fb, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 4027fe	 Bytes: 3
  %loadMem_4027fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027fe = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027fe)
  store %struct.Memory* %call_4027fe, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4024a6	 RIP: 402801	 Bytes: 5
  %loadMem_402801 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402801 = call %struct.Memory* @routine_jmpq_.L_4024a6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402801, i64 -859, i64 5)
  store %struct.Memory* %call_402801, %struct.Memory** %MEMORY

  br label %block_.L_4024a6

  ; Code: .L_402806:	 RIP: 402806	 Bytes: 0
block_.L_402806:

  ; Code: popq %rbp	 RIP: 402806	 Bytes: 1
  %loadMem_402806 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402806 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402806)
  store %struct.Memory* %call_402806, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 402807	 Bytes: 1
  %loadMem_402807 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402807 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402807)
  store %struct.Memory* %call_402807, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_402807
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x2___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 2)
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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


define %struct.Memory* @routine_movl__edx__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__ecx__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %13 = sub i64 %12, 24
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq__r8__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %R8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r9__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %R9
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

define %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 56
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__ecx___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L7CDQ_EAXEP6MemoryR5State(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376)) #2 {
  %3 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 1, i32 0
  %5 = bitcast %union.anon* %4 to i32*
  %6 = load i32, i32* %5, align 8
  %7 = sext i32 %6 to i64
  %8 = lshr i64 %7, 32
  store i64 %8, i64* %3, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cltd(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 1
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L7CDQ_EAXEP6MemoryR5State(%struct.Memory* %2, %struct.State* %0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl_MINUS0x38__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_(%struct.Memory*, %struct.State* dereferenceable(3376), i64) #0 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 1, i32 0
  %5 = bitcast %union.anon* %4 to i32*
  %6 = load i32, i32* %5, align 8
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 7, i32 0
  %9 = bitcast %union.anon* %8 to i32*
  %10 = load i32, i32* %9, align 8
  %11 = zext i32 %10 to i64
  %12 = shl i64 %2, 32
  %13 = ashr exact i64 %12, 32
  %14 = shl  i64 %11, 32
  %15 = or i64 %14, %7
  %16 = sdiv i64 %15, %13
  %17 = shl i64 %16, 32
  %18 = ashr exact i64 %17, 32
  %19 = icmp eq i64 %16, %18
  br i1 %19, label %24, label %20

; <label>:20:                                     ; preds = %3
  %21 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %1, i64 %22, %struct.Memory* %0) #21
  br label %36

; <label>:24:                                     ; preds = %3
  %25 = srem i64 %15, %13
  %26 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %27 = and i64 %16, 4294967295
  store i64 %27, i64* %26, align 8
  %28 = getelementptr inbounds %union.anon, %union.anon* %8, i64 0, i32 0
  %29 = and i64 %25, 4294967295
  store i64 %29, i64* %28, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
  br label %36

; <label>:36:                                     ; preds = %24, %20
  %37 = phi %struct.Memory* [ %23, %20 ], [ %0, %24 ]
  ret %struct.Memory* %37
}

define %struct.Memory* @routine_idivl__ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %12 = add i64 %11, 2
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__edx__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %EDX
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

define %struct.Memory* @routine_cmpl__0x1__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 44
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

define %struct.Memory* @routine_jl_.L_4020b9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JLEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
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

define %struct.Memory* @routine_subl__0x1___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %EAX
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

define %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 48
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
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

define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 4
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

define %struct.Memory* @routine_jge_.L_4020b4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %14, i64 %18)
  ret %struct.Memory* %21
}


define %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = inttoptr i64 %4 to i32*
  %7 = load i32, i32* %6
  %8 = shl i64 %3, 32
  %9 = ashr exact i64 %8, 32
  %10 = sext i32 %7 to i64
  %11 = mul  i64 %10, %9
  %12 = trunc i64 %11 to i32
  %13 = and i64 %11, 4294967295
  store i64 %13, i64* %2, align 8
  %14 = shl i64 %11, 32
  %15 = ashr exact i64 %14, 32
  %16 = icmp ne i64 %15, %11
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %12, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19) #22
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 0, i8* %26, align 1
  %27 = lshr i32 %12, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %17, i8* %30, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_imull_MINUS0x2c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 44
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 48
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSSI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %14, i8* %15, i64 %19)
  ret %struct.Memory* %22
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSSI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = bitcast i8* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = bitcast i8* %4 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %7, i32 0
  %14 = extractelement <2 x float> %12, i32 0
  %15 = fadd float %13, %14
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

define %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSSI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}





define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i8* nocapture readonly) #7 {
  %5 = bitcast i8* %3 to <2 x float>*
  %6 = load <2 x float>, <2 x float>* %5, align 1
  %7 = extractelement <2 x float> %6, i32 0
  %8 = inttoptr i64 %2 to float*
  store float %7, float* %8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movss__xmm0____rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = mul i64 %15, 4
  %17 = add i64 %16, %14
  %18 = bitcast %union.vec128_t* %XMM0 to i8*
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %17, i8* %18)
  ret %struct.Memory* %21
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


define %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
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

define %struct.Memory* @routine_jmpq_.L_402059(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_4020b9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__0x4___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 4)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 60
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl_MINUS0x3c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_cmpl__0x2__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 44
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jl_.L_40217a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JLEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}














define %struct.Memory* @routine_jge_.L_402175(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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










define %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_subl__0x1___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 1)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_subl__0x1___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = shl i64 %3, 32
  %7 = ashr exact i64 %6, 32
  %8 = shl i64 %4, 32
  %9 = ashr exact i64 %8, 32
  %10 = mul  i64 %9, %7
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967295
  store i64 %12, i64* %2, align 8
  %13 = shl i64 %10, 32
  %14 = ashr exact i64 %13, 32
  %15 = icmp ne i64 %14, %10
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18) #22
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 0, i8* %25, align 1
  %26 = lshr i32 %11, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %16, i8* %29, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_imull__esi___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = load i32, i32* %ESI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}










































define %struct.Memory* @routine_jmpq_.L_4020e9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_40217a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__0x8___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 8)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 64
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl_MINUS0x40__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_cmpl__0x4__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 44
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jl_.L_40229d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JLEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}














define %struct.Memory* @routine_jge_.L_402298(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












define %struct.Memory* @routine_subl__0x3___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 3)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_subl__0x3___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 3)
  ret %struct.Memory* %12
}
















define %struct.Memory* @routine_subl__0x2___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 2)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_subl__0x2___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 2)
  ret %struct.Memory* %12
}








































































define %struct.Memory* @routine_jmpq_.L_4021aa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_40229d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__0x10___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 16)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 68
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl_MINUS0x44__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_cmpl__0x8__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 44
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 8)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jl_.L_402484(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JLEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}














define %struct.Memory* @routine_jge_.L_40247f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












define %struct.Memory* @routine_subl__0x7___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 7)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_subl__0x7___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 7)
  ret %struct.Memory* %12
}
















define %struct.Memory* @routine_subl__0x6___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 6)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_subl__0x6___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 6)
  ret %struct.Memory* %12
}
















define %struct.Memory* @routine_subl__0x5___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 5)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_subl__0x5___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 5)
  ret %struct.Memory* %12
}
















define %struct.Memory* @routine_subl__0x4___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 4)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_subl__0x4___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 4)
  ret %struct.Memory* %12
}
































































































































define %struct.Memory* @routine_jmpq_.L_4022cd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_402484(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 72
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl_MINUS0x48__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addl__0x10___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 16)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_movl_MINUS0x34__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 20
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_402806(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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








define %struct.Memory* @routine_jge_.L_4027f3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












define %struct.Memory* @routine_subl__0xf___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 15)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_subl__0xf___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 15)
  ret %struct.Memory* %12
}
















define %struct.Memory* @routine_subl__0xe___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 14)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_subl__0xe___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 14)
  ret %struct.Memory* %12
}
















define %struct.Memory* @routine_subl__0xd___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 13)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_subl__0xd___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 13)
  ret %struct.Memory* %12
}
















define %struct.Memory* @routine_subl__0xc___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 12)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_subl__0xc___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 12)
  ret %struct.Memory* %12
}
















define %struct.Memory* @routine_subl__0xb___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 11)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_subl__0xb___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 11)
  ret %struct.Memory* %12
}
















define %struct.Memory* @routine_subl__0xa___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 10)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_subl__0xa___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 10)
  ret %struct.Memory* %12
}
















define %struct.Memory* @routine_subl__0x9___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 9)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_subl__0x9___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 9)
  ret %struct.Memory* %12
}
















define %struct.Memory* @routine_subl__0x8___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 8)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_subl__0x8___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 8)
  ret %struct.Memory* %12
}
















































































































































































































































define %struct.Memory* @routine_jmpq_.L_4024b9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_4027f8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_addl__0x10___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 16)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_jmpq_.L_4024a6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

