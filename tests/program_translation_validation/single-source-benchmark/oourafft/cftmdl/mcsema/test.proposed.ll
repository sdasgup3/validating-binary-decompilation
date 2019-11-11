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
%seg_400514__fini_type = type <{ [9 x i8] }>
%seg_400520__rodata_type = type <{ [4 x i8] }>
%seg_400524__eh_frame_hdr_type = type <{ [52 x i8] }>
%seg_400558__eh_frame_type = type <{ [208 x i8] }>
@seg_400514__fini = internal constant %seg_400514__fini_type <{ [9 x i8] c"H\83\EC\08H\83\C4\08\C3" }>
@seg_400520__rodata = internal constant %seg_400520__rodata_type <{ [4 x i8] c"\01\00\02\00" }>
@seg_400524__eh_frame_hdr = internal constant %seg_400524__eh_frame_hdr_type <{ [52 x i8] c"\01\1B\03;0\00\00\00\05\00\00\00|\FE\FF\FFL\00\00\00\AC\FE\FF\FFx\00\00\00d\FF\FF\FF\8C\00\00\00|\FF\FF\FF\A4\00\00\00\EC\FF\FF\FF\EC\00\00\00" }>
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\09\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>

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
%G_0x496__rip__type = type <{ [8 x i8] }>
@G_0x496__rip_= global %G_0x496__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x849__rip__type = type <{ [8 x i8] }>
@G_0x849__rip_= global %G_0x849__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @cftmdl(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .cftmdl:	 RIP: 403330	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 403330	 Bytes: 1
  %loadMem_403330 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403330 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403330)
  store %struct.Memory* %call_403330, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 403331	 Bytes: 3
  %loadMem_403331 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403331 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403331)
  store %struct.Memory* %call_403331, %struct.Memory** %MEMORY

  ; Code: subq $0x30, %rsp	 RIP: 403334	 Bytes: 4
  %loadMem_403334 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403334 = call %struct.Memory* @routine_subq__0x30___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403334)
  store %struct.Memory* %call_403334, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x4(%rbp)	 RIP: 403338	 Bytes: 3
  %loadMem_403338 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403338 = call %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403338)
  store %struct.Memory* %call_403338, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x8(%rbp)	 RIP: 40333b	 Bytes: 3
  %loadMem_40333b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40333b = call %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40333b)
  store %struct.Memory* %call_40333b, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x10(%rbp)	 RIP: 40333e	 Bytes: 4
  %loadMem_40333e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40333e = call %struct.Memory* @routine_movq__rdx__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40333e)
  store %struct.Memory* %call_40333e, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x18(%rbp)	 RIP: 403342	 Bytes: 4
  %loadMem_403342 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403342 = call %struct.Memory* @routine_movq__rcx__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403342)
  store %struct.Memory* %call_403342, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %esi	 RIP: 403346	 Bytes: 3
  %loadMem_403346 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403346 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403346)
  store %struct.Memory* %call_403346, %struct.Memory** %MEMORY

  ; Code: shll $0x2, %esi	 RIP: 403349	 Bytes: 3
  %loadMem_403349 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403349 = call %struct.Memory* @routine_shll__0x2___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403349)
  store %struct.Memory* %call_403349, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x38(%rbp)	 RIP: 40334c	 Bytes: 3
  %loadMem_40334c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40334c = call %struct.Memory* @routine_movl__esi__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40334c)
  store %struct.Memory* %call_40334c, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 40334f	 Bytes: 7
  %loadMem_40334f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40334f = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40334f)
  store %struct.Memory* %call_40334f, %struct.Memory** %MEMORY

  ; Code: .L_403356:	 RIP: 403356	 Bytes: 0
  br label %block_.L_403356
block_.L_403356:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 403356	 Bytes: 3
  %loadMem_403356 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403356 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403356)
  store %struct.Memory* %call_403356, %struct.Memory** %MEMORY

  ; Code: cmpl -0x8(%rbp), %eax	 RIP: 403359	 Bytes: 3
  %loadMem_403359 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403359 = call %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403359)
  store %struct.Memory* %call_403359, %struct.Memory** %MEMORY

  ; Code: jge .L_4035ad	 RIP: 40335c	 Bytes: 6
  %loadMem_40335c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40335c = call %struct.Memory* @routine_jge_.L_4035ad(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40335c, i8* %BRANCH_TAKEN, i64 593, i64 6, i64 6)
  store %struct.Memory* %call_40335c, %struct.Memory** %MEMORY

  %loadBr_40335c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40335c = icmp eq i8 %loadBr_40335c, 1
  br i1 %cmpBr_40335c, label %block_.L_4035ad, label %block_403362

block_403362:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 403362	 Bytes: 3
  %loadMem_403362 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403362 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403362)
  store %struct.Memory* %call_403362, %struct.Memory** %MEMORY

  ; Code: addl -0x8(%rbp), %eax	 RIP: 403365	 Bytes: 3
  %loadMem_403365 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403365 = call %struct.Memory* @routine_addl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403365)
  store %struct.Memory* %call_403365, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 403368	 Bytes: 3
  %loadMem_403368 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403368 = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403368)
  store %struct.Memory* %call_403368, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 40336b	 Bytes: 3
  %loadMem_40336b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40336b = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40336b)
  store %struct.Memory* %call_40336b, %struct.Memory** %MEMORY

  ; Code: addl -0x8(%rbp), %eax	 RIP: 40336e	 Bytes: 3
  %loadMem_40336e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40336e = call %struct.Memory* @routine_addl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40336e)
  store %struct.Memory* %call_40336e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 403371	 Bytes: 3
  %loadMem_403371 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403371 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403371)
  store %struct.Memory* %call_403371, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 403374	 Bytes: 3
  %loadMem_403374 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403374 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403374)
  store %struct.Memory* %call_403374, %struct.Memory** %MEMORY

  ; Code: addl -0x8(%rbp), %eax	 RIP: 403377	 Bytes: 3
  %loadMem_403377 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403377 = call %struct.Memory* @routine_addl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403377)
  store %struct.Memory* %call_403377, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 40337a	 Bytes: 3
  %loadMem_40337a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40337a = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40337a)
  store %struct.Memory* %call_40337a, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40337d	 Bytes: 4
  %loadMem_40337d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40337d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40337d)
  store %struct.Memory* %call_40337d, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 403381	 Bytes: 4
  %loadMem_403381 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403381 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403381)
  store %struct.Memory* %call_403381, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 403385	 Bytes: 5
  %loadMem_403385 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403385 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403385)
  store %struct.Memory* %call_403385, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40338a	 Bytes: 4
  %loadMem_40338a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40338a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40338a)
  store %struct.Memory* %call_40338a, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 40338e	 Bytes: 4
  %loadMem_40338e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40338e = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40338e)
  store %struct.Memory* %call_40338e, %struct.Memory** %MEMORY

  ; Code: addsd (%rcx,%rdx,8), %xmm0	 RIP: 403392	 Bytes: 5
  %loadMem_403392 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403392 = call %struct.Memory* @routine_addsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403392)
  store %struct.Memory* %call_403392, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x78(%rbp)	 RIP: 403397	 Bytes: 5
  %loadMem_403397 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403397 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403397)
  store %struct.Memory* %call_403397, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40339c	 Bytes: 4
  %loadMem_40339c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40339c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40339c)
  store %struct.Memory* %call_40339c, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4033a0	 Bytes: 3
  %loadMem_4033a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033a0 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033a0)
  store %struct.Memory* %call_4033a0, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4033a3	 Bytes: 3
  %loadMem_4033a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033a3 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033a3)
  store %struct.Memory* %call_4033a3, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4033a6	 Bytes: 3
  %loadMem_4033a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033a6 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033a6)
  store %struct.Memory* %call_4033a6, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 4033a9	 Bytes: 5
  %loadMem_4033a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033a9 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033a9)
  store %struct.Memory* %call_4033a9, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4033ae	 Bytes: 4
  %loadMem_4033ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033ae = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033ae)
  store %struct.Memory* %call_4033ae, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 4033b2	 Bytes: 3
  %loadMem_4033b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033b2 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033b2)
  store %struct.Memory* %call_4033b2, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4033b5	 Bytes: 3
  %loadMem_4033b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033b5 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033b5)
  store %struct.Memory* %call_4033b5, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4033b8	 Bytes: 3
  %loadMem_4033b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033b8 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033b8)
  store %struct.Memory* %call_4033b8, %struct.Memory** %MEMORY

  ; Code: addsd (%rcx,%rdx,8), %xmm0	 RIP: 4033bb	 Bytes: 5
  %loadMem_4033bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033bb = call %struct.Memory* @routine_addsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033bb)
  store %struct.Memory* %call_4033bb, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x80(%rbp)	 RIP: 4033c0	 Bytes: 5
  %loadMem_4033c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033c0 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033c0)
  store %struct.Memory* %call_4033c0, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4033c5	 Bytes: 4
  %loadMem_4033c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033c5 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033c5)
  store %struct.Memory* %call_4033c5, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 4033c9	 Bytes: 4
  %loadMem_4033c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033c9 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033c9)
  store %struct.Memory* %call_4033c9, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 4033cd	 Bytes: 5
  %loadMem_4033cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033cd = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033cd)
  store %struct.Memory* %call_4033cd, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4033d2	 Bytes: 4
  %loadMem_4033d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033d2 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033d2)
  store %struct.Memory* %call_4033d2, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 4033d6	 Bytes: 4
  %loadMem_4033d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033d6 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033d6)
  store %struct.Memory* %call_4033d6, %struct.Memory** %MEMORY

  ; Code: subsd (%rcx,%rdx,8), %xmm0	 RIP: 4033da	 Bytes: 5
  %loadMem_4033da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033da = call %struct.Memory* @routine_subsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033da)
  store %struct.Memory* %call_4033da, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x88(%rbp)	 RIP: 4033df	 Bytes: 8
  %loadMem_4033df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033df = call %struct.Memory* @routine_movsd__xmm0__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033df)
  store %struct.Memory* %call_4033df, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4033e7	 Bytes: 4
  %loadMem_4033e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033e7 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033e7)
  store %struct.Memory* %call_4033e7, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4033eb	 Bytes: 3
  %loadMem_4033eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033eb = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033eb)
  store %struct.Memory* %call_4033eb, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4033ee	 Bytes: 3
  %loadMem_4033ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033ee = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033ee)
  store %struct.Memory* %call_4033ee, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4033f1	 Bytes: 3
  %loadMem_4033f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033f1 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033f1)
  store %struct.Memory* %call_4033f1, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 4033f4	 Bytes: 5
  %loadMem_4033f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033f4 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033f4)
  store %struct.Memory* %call_4033f4, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4033f9	 Bytes: 4
  %loadMem_4033f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033f9 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033f9)
  store %struct.Memory* %call_4033f9, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 4033fd	 Bytes: 3
  %loadMem_4033fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033fd = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033fd)
  store %struct.Memory* %call_4033fd, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 403400	 Bytes: 3
  %loadMem_403400 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403400 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403400)
  store %struct.Memory* %call_403400, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403403	 Bytes: 3
  %loadMem_403403 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403403 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403403)
  store %struct.Memory* %call_403403, %struct.Memory** %MEMORY

  ; Code: subsd (%rcx,%rdx,8), %xmm0	 RIP: 403406	 Bytes: 5
  %loadMem_403406 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403406 = call %struct.Memory* @routine_subsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403406)
  store %struct.Memory* %call_403406, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x90(%rbp)	 RIP: 40340b	 Bytes: 8
  %loadMem_40340b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40340b = call %struct.Memory* @routine_movsd__xmm0__MINUS0x90__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40340b)
  store %struct.Memory* %call_40340b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403413	 Bytes: 4
  %loadMem_403413 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403413 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403413)
  store %struct.Memory* %call_403413, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 403417	 Bytes: 4
  %loadMem_403417 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403417 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403417)
  store %struct.Memory* %call_403417, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 40341b	 Bytes: 5
  %loadMem_40341b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40341b = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40341b)
  store %struct.Memory* %call_40341b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403420	 Bytes: 4
  %loadMem_403420 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403420 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403420)
  store %struct.Memory* %call_403420, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 403424	 Bytes: 4
  %loadMem_403424 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403424 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403424)
  store %struct.Memory* %call_403424, %struct.Memory** %MEMORY

  ; Code: addsd (%rcx,%rdx,8), %xmm0	 RIP: 403428	 Bytes: 5
  %loadMem_403428 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403428 = call %struct.Memory* @routine_addsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403428)
  store %struct.Memory* %call_403428, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x98(%rbp)	 RIP: 40342d	 Bytes: 8
  %loadMem_40342d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40342d = call %struct.Memory* @routine_movsd__xmm0__MINUS0x98__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40342d)
  store %struct.Memory* %call_40342d, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403435	 Bytes: 4
  %loadMem_403435 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403435 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403435)
  store %struct.Memory* %call_403435, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 403439	 Bytes: 3
  %loadMem_403439 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403439 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403439)
  store %struct.Memory* %call_403439, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40343c	 Bytes: 3
  %loadMem_40343c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40343c = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40343c)
  store %struct.Memory* %call_40343c, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 40343f	 Bytes: 3
  %loadMem_40343f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40343f = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40343f)
  store %struct.Memory* %call_40343f, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 403442	 Bytes: 5
  %loadMem_403442 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403442 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403442)
  store %struct.Memory* %call_403442, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403447	 Bytes: 4
  %loadMem_403447 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403447 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403447)
  store %struct.Memory* %call_403447, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 40344b	 Bytes: 3
  %loadMem_40344b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40344b = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40344b)
  store %struct.Memory* %call_40344b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40344e	 Bytes: 3
  %loadMem_40344e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40344e = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40344e)
  store %struct.Memory* %call_40344e, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403451	 Bytes: 3
  %loadMem_403451 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403451 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403451)
  store %struct.Memory* %call_403451, %struct.Memory** %MEMORY

  ; Code: addsd (%rcx,%rdx,8), %xmm0	 RIP: 403454	 Bytes: 5
  %loadMem_403454 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403454 = call %struct.Memory* @routine_addsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403454)
  store %struct.Memory* %call_403454, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0xa0(%rbp)	 RIP: 403459	 Bytes: 8
  %loadMem_403459 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403459 = call %struct.Memory* @routine_movsd__xmm0__MINUS0xa0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403459)
  store %struct.Memory* %call_403459, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403461	 Bytes: 4
  %loadMem_403461 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403461 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403461)
  store %struct.Memory* %call_403461, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 403465	 Bytes: 4
  %loadMem_403465 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403465 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403465)
  store %struct.Memory* %call_403465, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 403469	 Bytes: 5
  %loadMem_403469 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403469 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403469)
  store %struct.Memory* %call_403469, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40346e	 Bytes: 4
  %loadMem_40346e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40346e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40346e)
  store %struct.Memory* %call_40346e, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 403472	 Bytes: 4
  %loadMem_403472 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403472 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403472)
  store %struct.Memory* %call_403472, %struct.Memory** %MEMORY

  ; Code: subsd (%rcx,%rdx,8), %xmm0	 RIP: 403476	 Bytes: 5
  %loadMem_403476 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403476 = call %struct.Memory* @routine_subsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403476)
  store %struct.Memory* %call_403476, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0xa8(%rbp)	 RIP: 40347b	 Bytes: 8
  %loadMem_40347b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40347b = call %struct.Memory* @routine_movsd__xmm0__MINUS0xa8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40347b)
  store %struct.Memory* %call_40347b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403483	 Bytes: 4
  %loadMem_403483 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403483 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403483)
  store %struct.Memory* %call_403483, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 403487	 Bytes: 3
  %loadMem_403487 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403487 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403487)
  store %struct.Memory* %call_403487, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40348a	 Bytes: 3
  %loadMem_40348a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40348a = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40348a)
  store %struct.Memory* %call_40348a, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 40348d	 Bytes: 3
  %loadMem_40348d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40348d = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40348d)
  store %struct.Memory* %call_40348d, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 403490	 Bytes: 5
  %loadMem_403490 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403490 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403490)
  store %struct.Memory* %call_403490, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403495	 Bytes: 4
  %loadMem_403495 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403495 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403495)
  store %struct.Memory* %call_403495, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 403499	 Bytes: 3
  %loadMem_403499 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403499 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403499)
  store %struct.Memory* %call_403499, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40349c	 Bytes: 3
  %loadMem_40349c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40349c = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40349c)
  store %struct.Memory* %call_40349c, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 40349f	 Bytes: 3
  %loadMem_40349f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40349f = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40349f)
  store %struct.Memory* %call_40349f, %struct.Memory** %MEMORY

  ; Code: subsd (%rcx,%rdx,8), %xmm0	 RIP: 4034a2	 Bytes: 5
  %loadMem_4034a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034a2 = call %struct.Memory* @routine_subsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034a2)
  store %struct.Memory* %call_4034a2, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0xb0(%rbp)	 RIP: 4034a7	 Bytes: 8
  %loadMem_4034a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034a7 = call %struct.Memory* @routine_movsd__xmm0__MINUS0xb0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034a7)
  store %struct.Memory* %call_4034a7, %struct.Memory** %MEMORY

  ; Code: movsd -0x78(%rbp), %xmm0	 RIP: 4034af	 Bytes: 5
  %loadMem_4034af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034af = call %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034af)
  store %struct.Memory* %call_4034af, %struct.Memory** %MEMORY

  ; Code: addsd -0x98(%rbp), %xmm0	 RIP: 4034b4	 Bytes: 8
  %loadMem_4034b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034b4 = call %struct.Memory* @routine_addsd_MINUS0x98__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034b4)
  store %struct.Memory* %call_4034b4, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4034bc	 Bytes: 4
  %loadMem_4034bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034bc = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034bc)
  store %struct.Memory* %call_4034bc, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 4034c0	 Bytes: 4
  %loadMem_4034c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034c0 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034c0)
  store %struct.Memory* %call_4034c0, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 4034c4	 Bytes: 5
  %loadMem_4034c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034c4 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034c4)
  store %struct.Memory* %call_4034c4, %struct.Memory** %MEMORY

  ; Code: movsd -0x80(%rbp), %xmm0	 RIP: 4034c9	 Bytes: 5
  %loadMem_4034c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034c9 = call %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034c9)
  store %struct.Memory* %call_4034c9, %struct.Memory** %MEMORY

  ; Code: addsd -0xa0(%rbp), %xmm0	 RIP: 4034ce	 Bytes: 8
  %loadMem_4034ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034ce = call %struct.Memory* @routine_addsd_MINUS0xa0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034ce)
  store %struct.Memory* %call_4034ce, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4034d6	 Bytes: 4
  %loadMem_4034d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034d6 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034d6)
  store %struct.Memory* %call_4034d6, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4034da	 Bytes: 3
  %loadMem_4034da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034da = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034da)
  store %struct.Memory* %call_4034da, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4034dd	 Bytes: 3
  %loadMem_4034dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034dd = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034dd)
  store %struct.Memory* %call_4034dd, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4034e0	 Bytes: 3
  %loadMem_4034e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034e0 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034e0)
  store %struct.Memory* %call_4034e0, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 4034e3	 Bytes: 5
  %loadMem_4034e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034e3 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034e3)
  store %struct.Memory* %call_4034e3, %struct.Memory** %MEMORY

  ; Code: movsd -0x78(%rbp), %xmm0	 RIP: 4034e8	 Bytes: 5
  %loadMem_4034e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034e8 = call %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034e8)
  store %struct.Memory* %call_4034e8, %struct.Memory** %MEMORY

  ; Code: subsd -0x98(%rbp), %xmm0	 RIP: 4034ed	 Bytes: 8
  %loadMem_4034ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034ed = call %struct.Memory* @routine_subsd_MINUS0x98__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034ed)
  store %struct.Memory* %call_4034ed, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4034f5	 Bytes: 4
  %loadMem_4034f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034f5 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034f5)
  store %struct.Memory* %call_4034f5, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 4034f9	 Bytes: 4
  %loadMem_4034f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034f9 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034f9)
  store %struct.Memory* %call_4034f9, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 4034fd	 Bytes: 5
  %loadMem_4034fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034fd = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034fd)
  store %struct.Memory* %call_4034fd, %struct.Memory** %MEMORY

  ; Code: movsd -0x80(%rbp), %xmm0	 RIP: 403502	 Bytes: 5
  %loadMem_403502 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403502 = call %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403502)
  store %struct.Memory* %call_403502, %struct.Memory** %MEMORY

  ; Code: subsd -0xa0(%rbp), %xmm0	 RIP: 403507	 Bytes: 8
  %loadMem_403507 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403507 = call %struct.Memory* @routine_subsd_MINUS0xa0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403507)
  store %struct.Memory* %call_403507, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40350f	 Bytes: 4
  %loadMem_40350f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40350f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40350f)
  store %struct.Memory* %call_40350f, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 403513	 Bytes: 3
  %loadMem_403513 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403513 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403513)
  store %struct.Memory* %call_403513, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 403516	 Bytes: 3
  %loadMem_403516 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403516 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403516)
  store %struct.Memory* %call_403516, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403519	 Bytes: 3
  %loadMem_403519 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403519 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403519)
  store %struct.Memory* %call_403519, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 40351c	 Bytes: 5
  %loadMem_40351c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40351c = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40351c)
  store %struct.Memory* %call_40351c, %struct.Memory** %MEMORY

  ; Code: movsd -0x88(%rbp), %xmm0	 RIP: 403521	 Bytes: 8
  %loadMem_403521 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403521 = call %struct.Memory* @routine_movsd_MINUS0x88__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403521)
  store %struct.Memory* %call_403521, %struct.Memory** %MEMORY

  ; Code: subsd -0xb0(%rbp), %xmm0	 RIP: 403529	 Bytes: 8
  %loadMem_403529 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403529 = call %struct.Memory* @routine_subsd_MINUS0xb0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403529)
  store %struct.Memory* %call_403529, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403531	 Bytes: 4
  %loadMem_403531 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403531 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403531)
  store %struct.Memory* %call_403531, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 403535	 Bytes: 4
  %loadMem_403535 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403535 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403535)
  store %struct.Memory* %call_403535, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 403539	 Bytes: 5
  %loadMem_403539 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403539 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403539)
  store %struct.Memory* %call_403539, %struct.Memory** %MEMORY

  ; Code: movsd -0x90(%rbp), %xmm0	 RIP: 40353e	 Bytes: 8
  %loadMem_40353e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40353e = call %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40353e)
  store %struct.Memory* %call_40353e, %struct.Memory** %MEMORY

  ; Code: addsd -0xa8(%rbp), %xmm0	 RIP: 403546	 Bytes: 8
  %loadMem_403546 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403546 = call %struct.Memory* @routine_addsd_MINUS0xa8__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403546)
  store %struct.Memory* %call_403546, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40354e	 Bytes: 4
  %loadMem_40354e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40354e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40354e)
  store %struct.Memory* %call_40354e, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 403552	 Bytes: 3
  %loadMem_403552 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403552 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403552)
  store %struct.Memory* %call_403552, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 403555	 Bytes: 3
  %loadMem_403555 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403555 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403555)
  store %struct.Memory* %call_403555, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403558	 Bytes: 3
  %loadMem_403558 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403558 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403558)
  store %struct.Memory* %call_403558, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 40355b	 Bytes: 5
  %loadMem_40355b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40355b = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40355b)
  store %struct.Memory* %call_40355b, %struct.Memory** %MEMORY

  ; Code: movsd -0x88(%rbp), %xmm0	 RIP: 403560	 Bytes: 8
  %loadMem_403560 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403560 = call %struct.Memory* @routine_movsd_MINUS0x88__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403560)
  store %struct.Memory* %call_403560, %struct.Memory** %MEMORY

  ; Code: addsd -0xb0(%rbp), %xmm0	 RIP: 403568	 Bytes: 8
  %loadMem_403568 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403568 = call %struct.Memory* @routine_addsd_MINUS0xb0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403568)
  store %struct.Memory* %call_403568, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403570	 Bytes: 4
  %loadMem_403570 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403570 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403570)
  store %struct.Memory* %call_403570, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 403574	 Bytes: 4
  %loadMem_403574 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403574 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403574)
  store %struct.Memory* %call_403574, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 403578	 Bytes: 5
  %loadMem_403578 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403578 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403578)
  store %struct.Memory* %call_403578, %struct.Memory** %MEMORY

  ; Code: movsd -0x90(%rbp), %xmm0	 RIP: 40357d	 Bytes: 8
  %loadMem_40357d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40357d = call %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40357d)
  store %struct.Memory* %call_40357d, %struct.Memory** %MEMORY

  ; Code: subsd -0xa8(%rbp), %xmm0	 RIP: 403585	 Bytes: 8
  %loadMem_403585 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403585 = call %struct.Memory* @routine_subsd_MINUS0xa8__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403585)
  store %struct.Memory* %call_403585, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40358d	 Bytes: 4
  %loadMem_40358d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40358d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40358d)
  store %struct.Memory* %call_40358d, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 403591	 Bytes: 3
  %loadMem_403591 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403591 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403591)
  store %struct.Memory* %call_403591, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 403594	 Bytes: 3
  %loadMem_403594 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403594 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403594)
  store %struct.Memory* %call_403594, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403597	 Bytes: 3
  %loadMem_403597 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403597 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403597)
  store %struct.Memory* %call_403597, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 40359a	 Bytes: 5
  %loadMem_40359a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40359a = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40359a)
  store %struct.Memory* %call_40359a, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 40359f	 Bytes: 3
  %loadMem_40359f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40359f = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40359f)
  store %struct.Memory* %call_40359f, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %eax	 RIP: 4035a2	 Bytes: 3
  %loadMem_4035a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035a2 = call %struct.Memory* @routine_addl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035a2)
  store %struct.Memory* %call_4035a2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 4035a5	 Bytes: 3
  %loadMem_4035a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035a5 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035a5)
  store %struct.Memory* %call_4035a5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_403356	 RIP: 4035a8	 Bytes: 5
  %loadMem_4035a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035a8 = call %struct.Memory* @routine_jmpq_.L_403356(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035a8, i64 -594, i64 5)
  store %struct.Memory* %call_4035a8, %struct.Memory** %MEMORY

  br label %block_.L_403356

  ; Code: .L_4035ad:	 RIP: 4035ad	 Bytes: 0
block_.L_4035ad:

  ; Code: movq -0x18(%rbp), %rax	 RIP: 4035ad	 Bytes: 4
  %loadMem_4035ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035ad = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035ad)
  store %struct.Memory* %call_4035ad, %struct.Memory** %MEMORY

  ; Code: movsd 0x10(%rax), %xmm0	 RIP: 4035b1	 Bytes: 5
  %loadMem_4035b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035b1 = call %struct.Memory* @routine_movsd_0x10__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035b1)
  store %struct.Memory* %call_4035b1, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x48(%rbp)	 RIP: 4035b6	 Bytes: 5
  %loadMem_4035b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035b6 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035b6)
  store %struct.Memory* %call_4035b6, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %ecx	 RIP: 4035bb	 Bytes: 3
  %loadMem_4035bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035bb = call %struct.Memory* @routine_movl_MINUS0x38__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035bb)
  store %struct.Memory* %call_4035bb, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x1c(%rbp)	 RIP: 4035be	 Bytes: 3
  %loadMem_4035be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035be = call %struct.Memory* @routine_movl__ecx__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035be)
  store %struct.Memory* %call_4035be, %struct.Memory** %MEMORY

  ; Code: .L_4035c1:	 RIP: 4035c1	 Bytes: 0
  br label %block_.L_4035c1
block_.L_4035c1:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4035c1	 Bytes: 3
  %loadMem_4035c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035c1 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035c1)
  store %struct.Memory* %call_4035c1, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 4035c4	 Bytes: 3
  %loadMem_4035c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035c4 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035c4)
  store %struct.Memory* %call_4035c4, %struct.Memory** %MEMORY

  ; Code: addl -0x38(%rbp), %ecx	 RIP: 4035c7	 Bytes: 3
  %loadMem_4035c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035c7 = call %struct.Memory* @routine_addl_MINUS0x38__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035c7)
  store %struct.Memory* %call_4035c7, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 4035ca	 Bytes: 2
  %loadMem_4035ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035ca = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035ca)
  store %struct.Memory* %call_4035ca, %struct.Memory** %MEMORY

  ; Code: jge .L_40387d	 RIP: 4035cc	 Bytes: 6
  %loadMem_4035cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035cc = call %struct.Memory* @routine_jge_.L_40387d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035cc, i8* %BRANCH_TAKEN, i64 689, i64 6, i64 6)
  store %struct.Memory* %call_4035cc, %struct.Memory** %MEMORY

  %loadBr_4035cc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4035cc = icmp eq i8 %loadBr_4035cc, 1
  br i1 %cmpBr_4035cc, label %block_.L_40387d, label %block_4035d2

block_4035d2:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4035d2	 Bytes: 3
  %loadMem_4035d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035d2 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035d2)
  store %struct.Memory* %call_4035d2, %struct.Memory** %MEMORY

  ; Code: addl -0x8(%rbp), %eax	 RIP: 4035d5	 Bytes: 3
  %loadMem_4035d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035d5 = call %struct.Memory* @routine_addl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035d5)
  store %struct.Memory* %call_4035d5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 4035d8	 Bytes: 3
  %loadMem_4035d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035d8 = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035d8)
  store %struct.Memory* %call_4035d8, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 4035db	 Bytes: 3
  %loadMem_4035db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035db = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035db)
  store %struct.Memory* %call_4035db, %struct.Memory** %MEMORY

  ; Code: addl -0x8(%rbp), %eax	 RIP: 4035de	 Bytes: 3
  %loadMem_4035de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035de = call %struct.Memory* @routine_addl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035de)
  store %struct.Memory* %call_4035de, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 4035e1	 Bytes: 3
  %loadMem_4035e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035e1 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035e1)
  store %struct.Memory* %call_4035e1, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 4035e4	 Bytes: 3
  %loadMem_4035e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035e4 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035e4)
  store %struct.Memory* %call_4035e4, %struct.Memory** %MEMORY

  ; Code: addl -0x8(%rbp), %eax	 RIP: 4035e7	 Bytes: 3
  %loadMem_4035e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035e7 = call %struct.Memory* @routine_addl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035e7)
  store %struct.Memory* %call_4035e7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 4035ea	 Bytes: 3
  %loadMem_4035ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035ea = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035ea)
  store %struct.Memory* %call_4035ea, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4035ed	 Bytes: 4
  %loadMem_4035ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035ed = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035ed)
  store %struct.Memory* %call_4035ed, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 4035f1	 Bytes: 4
  %loadMem_4035f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035f1 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035f1)
  store %struct.Memory* %call_4035f1, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 4035f5	 Bytes: 5
  %loadMem_4035f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035f5 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035f5)
  store %struct.Memory* %call_4035f5, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4035fa	 Bytes: 4
  %loadMem_4035fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035fa = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035fa)
  store %struct.Memory* %call_4035fa, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 4035fe	 Bytes: 4
  %loadMem_4035fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035fe = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035fe)
  store %struct.Memory* %call_4035fe, %struct.Memory** %MEMORY

  ; Code: addsd (%rcx,%rdx,8), %xmm0	 RIP: 403602	 Bytes: 5
  %loadMem_403602 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403602 = call %struct.Memory* @routine_addsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403602)
  store %struct.Memory* %call_403602, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x78(%rbp)	 RIP: 403607	 Bytes: 5
  %loadMem_403607 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403607 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403607)
  store %struct.Memory* %call_403607, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40360c	 Bytes: 4
  %loadMem_40360c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40360c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40360c)
  store %struct.Memory* %call_40360c, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 403610	 Bytes: 3
  %loadMem_403610 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403610 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403610)
  store %struct.Memory* %call_403610, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 403613	 Bytes: 3
  %loadMem_403613 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403613 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403613)
  store %struct.Memory* %call_403613, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403616	 Bytes: 3
  %loadMem_403616 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403616 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403616)
  store %struct.Memory* %call_403616, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 403619	 Bytes: 5
  %loadMem_403619 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403619 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403619)
  store %struct.Memory* %call_403619, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40361e	 Bytes: 4
  %loadMem_40361e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40361e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40361e)
  store %struct.Memory* %call_40361e, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 403622	 Bytes: 3
  %loadMem_403622 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403622 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403622)
  store %struct.Memory* %call_403622, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 403625	 Bytes: 3
  %loadMem_403625 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403625 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403625)
  store %struct.Memory* %call_403625, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403628	 Bytes: 3
  %loadMem_403628 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403628 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403628)
  store %struct.Memory* %call_403628, %struct.Memory** %MEMORY

  ; Code: addsd (%rcx,%rdx,8), %xmm0	 RIP: 40362b	 Bytes: 5
  %loadMem_40362b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40362b = call %struct.Memory* @routine_addsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40362b)
  store %struct.Memory* %call_40362b, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x80(%rbp)	 RIP: 403630	 Bytes: 5
  %loadMem_403630 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403630 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403630)
  store %struct.Memory* %call_403630, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403635	 Bytes: 4
  %loadMem_403635 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403635 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403635)
  store %struct.Memory* %call_403635, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 403639	 Bytes: 4
  %loadMem_403639 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403639 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403639)
  store %struct.Memory* %call_403639, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 40363d	 Bytes: 5
  %loadMem_40363d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40363d = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40363d)
  store %struct.Memory* %call_40363d, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403642	 Bytes: 4
  %loadMem_403642 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403642 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403642)
  store %struct.Memory* %call_403642, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 403646	 Bytes: 4
  %loadMem_403646 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403646 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403646)
  store %struct.Memory* %call_403646, %struct.Memory** %MEMORY

  ; Code: subsd (%rcx,%rdx,8), %xmm0	 RIP: 40364a	 Bytes: 5
  %loadMem_40364a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40364a = call %struct.Memory* @routine_subsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40364a)
  store %struct.Memory* %call_40364a, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x88(%rbp)	 RIP: 40364f	 Bytes: 8
  %loadMem_40364f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40364f = call %struct.Memory* @routine_movsd__xmm0__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40364f)
  store %struct.Memory* %call_40364f, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403657	 Bytes: 4
  %loadMem_403657 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403657 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403657)
  store %struct.Memory* %call_403657, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 40365b	 Bytes: 3
  %loadMem_40365b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40365b = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40365b)
  store %struct.Memory* %call_40365b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40365e	 Bytes: 3
  %loadMem_40365e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40365e = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40365e)
  store %struct.Memory* %call_40365e, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403661	 Bytes: 3
  %loadMem_403661 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403661 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403661)
  store %struct.Memory* %call_403661, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 403664	 Bytes: 5
  %loadMem_403664 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403664 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403664)
  store %struct.Memory* %call_403664, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403669	 Bytes: 4
  %loadMem_403669 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403669 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403669)
  store %struct.Memory* %call_403669, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 40366d	 Bytes: 3
  %loadMem_40366d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40366d = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40366d)
  store %struct.Memory* %call_40366d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 403670	 Bytes: 3
  %loadMem_403670 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403670 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403670)
  store %struct.Memory* %call_403670, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403673	 Bytes: 3
  %loadMem_403673 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403673 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403673)
  store %struct.Memory* %call_403673, %struct.Memory** %MEMORY

  ; Code: subsd (%rcx,%rdx,8), %xmm0	 RIP: 403676	 Bytes: 5
  %loadMem_403676 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403676 = call %struct.Memory* @routine_subsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403676)
  store %struct.Memory* %call_403676, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x90(%rbp)	 RIP: 40367b	 Bytes: 8
  %loadMem_40367b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40367b = call %struct.Memory* @routine_movsd__xmm0__MINUS0x90__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40367b)
  store %struct.Memory* %call_40367b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403683	 Bytes: 4
  %loadMem_403683 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403683 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403683)
  store %struct.Memory* %call_403683, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 403687	 Bytes: 4
  %loadMem_403687 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403687 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403687)
  store %struct.Memory* %call_403687, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 40368b	 Bytes: 5
  %loadMem_40368b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40368b = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40368b)
  store %struct.Memory* %call_40368b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403690	 Bytes: 4
  %loadMem_403690 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403690 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403690)
  store %struct.Memory* %call_403690, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 403694	 Bytes: 4
  %loadMem_403694 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403694 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403694)
  store %struct.Memory* %call_403694, %struct.Memory** %MEMORY

  ; Code: addsd (%rcx,%rdx,8), %xmm0	 RIP: 403698	 Bytes: 5
  %loadMem_403698 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403698 = call %struct.Memory* @routine_addsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403698)
  store %struct.Memory* %call_403698, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x98(%rbp)	 RIP: 40369d	 Bytes: 8
  %loadMem_40369d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40369d = call %struct.Memory* @routine_movsd__xmm0__MINUS0x98__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40369d)
  store %struct.Memory* %call_40369d, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4036a5	 Bytes: 4
  %loadMem_4036a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036a5 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036a5)
  store %struct.Memory* %call_4036a5, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 4036a9	 Bytes: 3
  %loadMem_4036a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036a9 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036a9)
  store %struct.Memory* %call_4036a9, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4036ac	 Bytes: 3
  %loadMem_4036ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036ac = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036ac)
  store %struct.Memory* %call_4036ac, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4036af	 Bytes: 3
  %loadMem_4036af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036af = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036af)
  store %struct.Memory* %call_4036af, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 4036b2	 Bytes: 5
  %loadMem_4036b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036b2 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036b2)
  store %struct.Memory* %call_4036b2, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4036b7	 Bytes: 4
  %loadMem_4036b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036b7 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036b7)
  store %struct.Memory* %call_4036b7, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 4036bb	 Bytes: 3
  %loadMem_4036bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036bb = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036bb)
  store %struct.Memory* %call_4036bb, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4036be	 Bytes: 3
  %loadMem_4036be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036be = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036be)
  store %struct.Memory* %call_4036be, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4036c1	 Bytes: 3
  %loadMem_4036c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036c1 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036c1)
  store %struct.Memory* %call_4036c1, %struct.Memory** %MEMORY

  ; Code: addsd (%rcx,%rdx,8), %xmm0	 RIP: 4036c4	 Bytes: 5
  %loadMem_4036c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036c4 = call %struct.Memory* @routine_addsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036c4)
  store %struct.Memory* %call_4036c4, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0xa0(%rbp)	 RIP: 4036c9	 Bytes: 8
  %loadMem_4036c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036c9 = call %struct.Memory* @routine_movsd__xmm0__MINUS0xa0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036c9)
  store %struct.Memory* %call_4036c9, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4036d1	 Bytes: 4
  %loadMem_4036d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036d1 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036d1)
  store %struct.Memory* %call_4036d1, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 4036d5	 Bytes: 4
  %loadMem_4036d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036d5 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036d5)
  store %struct.Memory* %call_4036d5, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 4036d9	 Bytes: 5
  %loadMem_4036d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036d9 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036d9)
  store %struct.Memory* %call_4036d9, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4036de	 Bytes: 4
  %loadMem_4036de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036de = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036de)
  store %struct.Memory* %call_4036de, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 4036e2	 Bytes: 4
  %loadMem_4036e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036e2 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036e2)
  store %struct.Memory* %call_4036e2, %struct.Memory** %MEMORY

  ; Code: subsd (%rcx,%rdx,8), %xmm0	 RIP: 4036e6	 Bytes: 5
  %loadMem_4036e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036e6 = call %struct.Memory* @routine_subsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036e6)
  store %struct.Memory* %call_4036e6, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0xa8(%rbp)	 RIP: 4036eb	 Bytes: 8
  %loadMem_4036eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036eb = call %struct.Memory* @routine_movsd__xmm0__MINUS0xa8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036eb)
  store %struct.Memory* %call_4036eb, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4036f3	 Bytes: 4
  %loadMem_4036f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036f3 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036f3)
  store %struct.Memory* %call_4036f3, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 4036f7	 Bytes: 3
  %loadMem_4036f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036f7 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036f7)
  store %struct.Memory* %call_4036f7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4036fa	 Bytes: 3
  %loadMem_4036fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036fa = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036fa)
  store %struct.Memory* %call_4036fa, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4036fd	 Bytes: 3
  %loadMem_4036fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036fd = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036fd)
  store %struct.Memory* %call_4036fd, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 403700	 Bytes: 5
  %loadMem_403700 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403700 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403700)
  store %struct.Memory* %call_403700, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403705	 Bytes: 4
  %loadMem_403705 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403705 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403705)
  store %struct.Memory* %call_403705, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 403709	 Bytes: 3
  %loadMem_403709 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403709 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403709)
  store %struct.Memory* %call_403709, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40370c	 Bytes: 3
  %loadMem_40370c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40370c = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40370c)
  store %struct.Memory* %call_40370c, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 40370f	 Bytes: 3
  %loadMem_40370f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40370f = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40370f)
  store %struct.Memory* %call_40370f, %struct.Memory** %MEMORY

  ; Code: subsd (%rcx,%rdx,8), %xmm0	 RIP: 403712	 Bytes: 5
  %loadMem_403712 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403712 = call %struct.Memory* @routine_subsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403712)
  store %struct.Memory* %call_403712, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0xb0(%rbp)	 RIP: 403717	 Bytes: 8
  %loadMem_403717 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403717 = call %struct.Memory* @routine_movsd__xmm0__MINUS0xb0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403717)
  store %struct.Memory* %call_403717, %struct.Memory** %MEMORY

  ; Code: movsd -0x78(%rbp), %xmm0	 RIP: 40371f	 Bytes: 5
  %loadMem_40371f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40371f = call %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40371f)
  store %struct.Memory* %call_40371f, %struct.Memory** %MEMORY

  ; Code: addsd -0x98(%rbp), %xmm0	 RIP: 403724	 Bytes: 8
  %loadMem_403724 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403724 = call %struct.Memory* @routine_addsd_MINUS0x98__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403724)
  store %struct.Memory* %call_403724, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40372c	 Bytes: 4
  %loadMem_40372c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40372c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40372c)
  store %struct.Memory* %call_40372c, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 403730	 Bytes: 4
  %loadMem_403730 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403730 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403730)
  store %struct.Memory* %call_403730, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 403734	 Bytes: 5
  %loadMem_403734 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403734 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403734)
  store %struct.Memory* %call_403734, %struct.Memory** %MEMORY

  ; Code: movsd -0x80(%rbp), %xmm0	 RIP: 403739	 Bytes: 5
  %loadMem_403739 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403739 = call %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403739)
  store %struct.Memory* %call_403739, %struct.Memory** %MEMORY

  ; Code: addsd -0xa0(%rbp), %xmm0	 RIP: 40373e	 Bytes: 8
  %loadMem_40373e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40373e = call %struct.Memory* @routine_addsd_MINUS0xa0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40373e)
  store %struct.Memory* %call_40373e, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403746	 Bytes: 4
  %loadMem_403746 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403746 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403746)
  store %struct.Memory* %call_403746, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 40374a	 Bytes: 3
  %loadMem_40374a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40374a = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40374a)
  store %struct.Memory* %call_40374a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40374d	 Bytes: 3
  %loadMem_40374d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40374d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40374d)
  store %struct.Memory* %call_40374d, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403750	 Bytes: 3
  %loadMem_403750 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403750 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403750)
  store %struct.Memory* %call_403750, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 403753	 Bytes: 5
  %loadMem_403753 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403753 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403753)
  store %struct.Memory* %call_403753, %struct.Memory** %MEMORY

  ; Code: movsd -0xa0(%rbp), %xmm0	 RIP: 403758	 Bytes: 8
  %loadMem_403758 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403758 = call %struct.Memory* @routine_movsd_MINUS0xa0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403758)
  store %struct.Memory* %call_403758, %struct.Memory** %MEMORY

  ; Code: subsd -0x80(%rbp), %xmm0	 RIP: 403760	 Bytes: 5
  %loadMem_403760 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403760 = call %struct.Memory* @routine_subsd_MINUS0x80__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403760)
  store %struct.Memory* %call_403760, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403765	 Bytes: 4
  %loadMem_403765 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403765 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403765)
  store %struct.Memory* %call_403765, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 403769	 Bytes: 4
  %loadMem_403769 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403769 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403769)
  store %struct.Memory* %call_403769, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 40376d	 Bytes: 5
  %loadMem_40376d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40376d = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40376d)
  store %struct.Memory* %call_40376d, %struct.Memory** %MEMORY

  ; Code: movsd -0x78(%rbp), %xmm0	 RIP: 403772	 Bytes: 5
  %loadMem_403772 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403772 = call %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403772)
  store %struct.Memory* %call_403772, %struct.Memory** %MEMORY

  ; Code: subsd -0x98(%rbp), %xmm0	 RIP: 403777	 Bytes: 8
  %loadMem_403777 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403777 = call %struct.Memory* @routine_subsd_MINUS0x98__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403777)
  store %struct.Memory* %call_403777, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40377f	 Bytes: 4
  %loadMem_40377f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40377f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40377f)
  store %struct.Memory* %call_40377f, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 403783	 Bytes: 3
  %loadMem_403783 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403783 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403783)
  store %struct.Memory* %call_403783, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 403786	 Bytes: 3
  %loadMem_403786 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403786 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403786)
  store %struct.Memory* %call_403786, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403789	 Bytes: 3
  %loadMem_403789 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403789 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403789)
  store %struct.Memory* %call_403789, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 40378c	 Bytes: 5
  %loadMem_40378c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40378c = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40378c)
  store %struct.Memory* %call_40378c, %struct.Memory** %MEMORY

  ; Code: movsd -0x88(%rbp), %xmm0	 RIP: 403791	 Bytes: 8
  %loadMem_403791 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403791 = call %struct.Memory* @routine_movsd_MINUS0x88__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403791)
  store %struct.Memory* %call_403791, %struct.Memory** %MEMORY

  ; Code: subsd -0xb0(%rbp), %xmm0	 RIP: 403799	 Bytes: 8
  %loadMem_403799 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403799 = call %struct.Memory* @routine_subsd_MINUS0xb0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403799)
  store %struct.Memory* %call_403799, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x78(%rbp)	 RIP: 4037a1	 Bytes: 5
  %loadMem_4037a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037a1 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037a1)
  store %struct.Memory* %call_4037a1, %struct.Memory** %MEMORY

  ; Code: movsd -0x90(%rbp), %xmm0	 RIP: 4037a6	 Bytes: 8
  %loadMem_4037a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037a6 = call %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037a6)
  store %struct.Memory* %call_4037a6, %struct.Memory** %MEMORY

  ; Code: addsd -0xa8(%rbp), %xmm0	 RIP: 4037ae	 Bytes: 8
  %loadMem_4037ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037ae = call %struct.Memory* @routine_addsd_MINUS0xa8__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037ae)
  store %struct.Memory* %call_4037ae, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x80(%rbp)	 RIP: 4037b6	 Bytes: 5
  %loadMem_4037b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037b6 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037b6)
  store %struct.Memory* %call_4037b6, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm0	 RIP: 4037bb	 Bytes: 5
  %loadMem_4037bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037bb = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037bb)
  store %struct.Memory* %call_4037bb, %struct.Memory** %MEMORY

  ; Code: movsd -0x78(%rbp), %xmm1	 RIP: 4037c0	 Bytes: 5
  %loadMem_4037c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037c0 = call %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037c0)
  store %struct.Memory* %call_4037c0, %struct.Memory** %MEMORY

  ; Code: subsd -0x80(%rbp), %xmm1	 RIP: 4037c5	 Bytes: 5
  %loadMem_4037c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037c5 = call %struct.Memory* @routine_subsd_MINUS0x80__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037c5)
  store %struct.Memory* %call_4037c5, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 4037ca	 Bytes: 4
  %loadMem_4037ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037ca = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037ca)
  store %struct.Memory* %call_4037ca, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4037ce	 Bytes: 4
  %loadMem_4037ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037ce = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037ce)
  store %struct.Memory* %call_4037ce, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 4037d2	 Bytes: 4
  %loadMem_4037d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037d2 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037d2)
  store %struct.Memory* %call_4037d2, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 4037d6	 Bytes: 5
  %loadMem_4037d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037d6 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037d6)
  store %struct.Memory* %call_4037d6, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm0	 RIP: 4037db	 Bytes: 5
  %loadMem_4037db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037db = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037db)
  store %struct.Memory* %call_4037db, %struct.Memory** %MEMORY

  ; Code: movsd -0x78(%rbp), %xmm1	 RIP: 4037e0	 Bytes: 5
  %loadMem_4037e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037e0 = call %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037e0)
  store %struct.Memory* %call_4037e0, %struct.Memory** %MEMORY

  ; Code: addsd -0x80(%rbp), %xmm1	 RIP: 4037e5	 Bytes: 5
  %loadMem_4037e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037e5 = call %struct.Memory* @routine_addsd_MINUS0x80__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037e5)
  store %struct.Memory* %call_4037e5, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 4037ea	 Bytes: 4
  %loadMem_4037ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037ea = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037ea)
  store %struct.Memory* %call_4037ea, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4037ee	 Bytes: 4
  %loadMem_4037ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037ee = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037ee)
  store %struct.Memory* %call_4037ee, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 4037f2	 Bytes: 3
  %loadMem_4037f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037f2 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037f2)
  store %struct.Memory* %call_4037f2, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4037f5	 Bytes: 3
  %loadMem_4037f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037f5 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037f5)
  store %struct.Memory* %call_4037f5, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4037f8	 Bytes: 3
  %loadMem_4037f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037f8 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037f8)
  store %struct.Memory* %call_4037f8, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 4037fb	 Bytes: 5
  %loadMem_4037fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037fb = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037fb)
  store %struct.Memory* %call_4037fb, %struct.Memory** %MEMORY

  ; Code: movsd -0xb0(%rbp), %xmm0	 RIP: 403800	 Bytes: 8
  %loadMem_403800 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403800 = call %struct.Memory* @routine_movsd_MINUS0xb0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403800)
  store %struct.Memory* %call_403800, %struct.Memory** %MEMORY

  ; Code: addsd -0x88(%rbp), %xmm0	 RIP: 403808	 Bytes: 8
  %loadMem_403808 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403808 = call %struct.Memory* @routine_addsd_MINUS0x88__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403808)
  store %struct.Memory* %call_403808, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x78(%rbp)	 RIP: 403810	 Bytes: 5
  %loadMem_403810 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403810 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403810)
  store %struct.Memory* %call_403810, %struct.Memory** %MEMORY

  ; Code: movsd -0xa8(%rbp), %xmm0	 RIP: 403815	 Bytes: 8
  %loadMem_403815 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403815 = call %struct.Memory* @routine_movsd_MINUS0xa8__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403815)
  store %struct.Memory* %call_403815, %struct.Memory** %MEMORY

  ; Code: subsd -0x90(%rbp), %xmm0	 RIP: 40381d	 Bytes: 8
  %loadMem_40381d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40381d = call %struct.Memory* @routine_subsd_MINUS0x90__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40381d)
  store %struct.Memory* %call_40381d, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x80(%rbp)	 RIP: 403825	 Bytes: 5
  %loadMem_403825 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403825 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403825)
  store %struct.Memory* %call_403825, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm0	 RIP: 40382a	 Bytes: 5
  %loadMem_40382a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40382a = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40382a)
  store %struct.Memory* %call_40382a, %struct.Memory** %MEMORY

  ; Code: movsd -0x80(%rbp), %xmm1	 RIP: 40382f	 Bytes: 5
  %loadMem_40382f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40382f = call %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40382f)
  store %struct.Memory* %call_40382f, %struct.Memory** %MEMORY

  ; Code: subsd -0x78(%rbp), %xmm1	 RIP: 403834	 Bytes: 5
  %loadMem_403834 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403834 = call %struct.Memory* @routine_subsd_MINUS0x78__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403834)
  store %struct.Memory* %call_403834, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 403839	 Bytes: 4
  %loadMem_403839 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403839 = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403839)
  store %struct.Memory* %call_403839, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40383d	 Bytes: 4
  %loadMem_40383d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40383d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40383d)
  store %struct.Memory* %call_40383d, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 403841	 Bytes: 4
  %loadMem_403841 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403841 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403841)
  store %struct.Memory* %call_403841, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 403845	 Bytes: 5
  %loadMem_403845 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403845 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403845)
  store %struct.Memory* %call_403845, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm0	 RIP: 40384a	 Bytes: 5
  %loadMem_40384a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40384a = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40384a)
  store %struct.Memory* %call_40384a, %struct.Memory** %MEMORY

  ; Code: movsd -0x80(%rbp), %xmm1	 RIP: 40384f	 Bytes: 5
  %loadMem_40384f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40384f = call %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40384f)
  store %struct.Memory* %call_40384f, %struct.Memory** %MEMORY

  ; Code: addsd -0x78(%rbp), %xmm1	 RIP: 403854	 Bytes: 5
  %loadMem_403854 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403854 = call %struct.Memory* @routine_addsd_MINUS0x78__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403854)
  store %struct.Memory* %call_403854, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 403859	 Bytes: 4
  %loadMem_403859 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403859 = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403859)
  store %struct.Memory* %call_403859, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40385d	 Bytes: 4
  %loadMem_40385d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40385d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40385d)
  store %struct.Memory* %call_40385d, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 403861	 Bytes: 3
  %loadMem_403861 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403861 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403861)
  store %struct.Memory* %call_403861, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 403864	 Bytes: 3
  %loadMem_403864 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403864 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403864)
  store %struct.Memory* %call_403864, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403867	 Bytes: 3
  %loadMem_403867 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403867 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403867)
  store %struct.Memory* %call_403867, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 40386a	 Bytes: 5
  %loadMem_40386a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40386a = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40386a)
  store %struct.Memory* %call_40386a, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 40386f	 Bytes: 3
  %loadMem_40386f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40386f = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40386f)
  store %struct.Memory* %call_40386f, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %eax	 RIP: 403872	 Bytes: 3
  %loadMem_403872 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403872 = call %struct.Memory* @routine_addl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403872)
  store %struct.Memory* %call_403872, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 403875	 Bytes: 3
  %loadMem_403875 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403875 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403875)
  store %struct.Memory* %call_403875, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4035c1	 RIP: 403878	 Bytes: 5
  %loadMem_403878 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403878 = call %struct.Memory* @routine_jmpq_.L_4035c1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403878, i64 -695, i64 5)
  store %struct.Memory* %call_403878, %struct.Memory** %MEMORY

  br label %block_.L_4035c1

  ; Code: .L_40387d:	 RIP: 40387d	 Bytes: 0
block_.L_40387d:

  ; Code: movl $0x0, -0x30(%rbp)	 RIP: 40387d	 Bytes: 7
  %loadMem_40387d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40387d = call %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40387d)
  store %struct.Memory* %call_40387d, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %eax	 RIP: 403884	 Bytes: 3
  %loadMem_403884 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403884 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403884)
  store %struct.Memory* %call_403884, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 403887	 Bytes: 3
  %loadMem_403887 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403887 = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403887)
  store %struct.Memory* %call_403887, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3c(%rbp)	 RIP: 40388a	 Bytes: 3
  %loadMem_40388a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40388a = call %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40388a)
  store %struct.Memory* %call_40388a, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %eax	 RIP: 40388d	 Bytes: 3
  %loadMem_40388d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40388d = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40388d)
  store %struct.Memory* %call_40388d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 403890	 Bytes: 3
  %loadMem_403890 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403890 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403890)
  store %struct.Memory* %call_403890, %struct.Memory** %MEMORY

  ; Code: .L_403893:	 RIP: 403893	 Bytes: 0
  br label %block_.L_403893
block_.L_403893:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 403893	 Bytes: 3
  %loadMem_403893 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403893 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403893)
  store %struct.Memory* %call_403893, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4(%rbp), %eax	 RIP: 403896	 Bytes: 3
  %loadMem_403896 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403896 = call %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403896)
  store %struct.Memory* %call_403896, %struct.Memory** %MEMORY

  ; Code: jge .L_40400e	 RIP: 403899	 Bytes: 6
  %loadMem_403899 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403899 = call %struct.Memory* @routine_jge_.L_40400e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403899, i8* %BRANCH_TAKEN, i64 1909, i64 6, i64 6)
  store %struct.Memory* %call_403899, %struct.Memory** %MEMORY

  %loadBr_403899 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_403899 = icmp eq i8 %loadBr_403899, 1
  br i1 %cmpBr_403899, label %block_.L_40400e, label %block_40389f

block_40389f:
  ; Code: movsd 0x849(%rip), %xmm0	 RIP: 40389f	 Bytes: 8
  %loadMem_40389f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40389f = call %struct.Memory* @routine_movsd_0x849__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40389f)
  store %struct.Memory* %call_40389f, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %eax	 RIP: 4038a7	 Bytes: 3
  %loadMem_4038a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038a7 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038a7)
  store %struct.Memory* %call_4038a7, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %eax	 RIP: 4038aa	 Bytes: 3
  %loadMem_4038aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038aa = call %struct.Memory* @routine_addl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038aa)
  store %struct.Memory* %call_4038aa, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x30(%rbp)	 RIP: 4038ad	 Bytes: 3
  %loadMem_4038ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038ad = call %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038ad)
  store %struct.Memory* %call_4038ad, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %eax	 RIP: 4038b0	 Bytes: 3
  %loadMem_4038b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038b0 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038b0)
  store %struct.Memory* %call_4038b0, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 4038b3	 Bytes: 3
  %loadMem_4038b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038b3 = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038b3)
  store %struct.Memory* %call_4038b3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x34(%rbp)	 RIP: 4038b6	 Bytes: 3
  %loadMem_4038b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038b6 = call %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038b6)
  store %struct.Memory* %call_4038b6, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4038b9	 Bytes: 4
  %loadMem_4038b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038b9 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038b9)
  store %struct.Memory* %call_4038b9, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rdx	 RIP: 4038bd	 Bytes: 4
  %loadMem_4038bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038bd = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038bd)
  store %struct.Memory* %call_4038bd, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm1	 RIP: 4038c1	 Bytes: 5
  %loadMem_4038c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038c1 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038c1)
  store %struct.Memory* %call_4038c1, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x58(%rbp)	 RIP: 4038c6	 Bytes: 5
  %loadMem_4038c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038c6 = call %struct.Memory* @routine_movsd__xmm1__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038c6)
  store %struct.Memory* %call_4038c6, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4038cb	 Bytes: 4
  %loadMem_4038cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038cb = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038cb)
  store %struct.Memory* %call_4038cb, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %eax	 RIP: 4038cf	 Bytes: 3
  %loadMem_4038cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038cf = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038cf)
  store %struct.Memory* %call_4038cf, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4038d2	 Bytes: 3
  %loadMem_4038d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038d2 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038d2)
  store %struct.Memory* %call_4038d2, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4038d5	 Bytes: 3
  %loadMem_4038d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038d5 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038d5)
  store %struct.Memory* %call_4038d5, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm1	 RIP: 4038d8	 Bytes: 5
  %loadMem_4038d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038d8 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038d8)
  store %struct.Memory* %call_4038d8, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x60(%rbp)	 RIP: 4038dd	 Bytes: 5
  %loadMem_4038dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038dd = call %struct.Memory* @routine_movsd__xmm1__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038dd)
  store %struct.Memory* %call_4038dd, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4038e2	 Bytes: 4
  %loadMem_4038e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038e2 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038e2)
  store %struct.Memory* %call_4038e2, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rdx	 RIP: 4038e6	 Bytes: 4
  %loadMem_4038e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038e6 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038e6)
  store %struct.Memory* %call_4038e6, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm1	 RIP: 4038ea	 Bytes: 5
  %loadMem_4038ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038ea = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038ea)
  store %struct.Memory* %call_4038ea, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x48(%rbp)	 RIP: 4038ef	 Bytes: 5
  %loadMem_4038ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038ef = call %struct.Memory* @routine_movsd__xmm1__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038ef)
  store %struct.Memory* %call_4038ef, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4038f4	 Bytes: 4
  %loadMem_4038f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038f4 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038f4)
  store %struct.Memory* %call_4038f4, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %eax	 RIP: 4038f8	 Bytes: 3
  %loadMem_4038f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038f8 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038f8)
  store %struct.Memory* %call_4038f8, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4038fb	 Bytes: 3
  %loadMem_4038fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038fb = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038fb)
  store %struct.Memory* %call_4038fb, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4038fe	 Bytes: 3
  %loadMem_4038fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038fe = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038fe)
  store %struct.Memory* %call_4038fe, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm1	 RIP: 403901	 Bytes: 5
  %loadMem_403901 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403901 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403901)
  store %struct.Memory* %call_403901, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x50(%rbp)	 RIP: 403906	 Bytes: 5
  %loadMem_403906 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403906 = call %struct.Memory* @routine_movsd__xmm1__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403906)
  store %struct.Memory* %call_403906, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm1	 RIP: 40390b	 Bytes: 5
  %loadMem_40390b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40390b = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40390b)
  store %struct.Memory* %call_40390b, %struct.Memory** %MEMORY

  ; Code: movaps %xmm0, %xmm2	 RIP: 403910	 Bytes: 3
  %loadMem_403910 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403910 = call %struct.Memory* @routine_movaps__xmm0___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403910)
  store %struct.Memory* %call_403910, %struct.Memory** %MEMORY

  ; Code: mulsd -0x60(%rbp), %xmm2	 RIP: 403913	 Bytes: 5
  %loadMem_403913 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403913 = call %struct.Memory* @routine_mulsd_MINUS0x60__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403913)
  store %struct.Memory* %call_403913, %struct.Memory** %MEMORY

  ; Code: mulsd -0x50(%rbp), %xmm2	 RIP: 403918	 Bytes: 5
  %loadMem_403918 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403918 = call %struct.Memory* @routine_mulsd_MINUS0x50__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403918)
  store %struct.Memory* %call_403918, %struct.Memory** %MEMORY

  ; Code: subsd %xmm2, %xmm1	 RIP: 40391d	 Bytes: 4
  %loadMem_40391d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40391d = call %struct.Memory* @routine_subsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40391d)
  store %struct.Memory* %call_40391d, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x68(%rbp)	 RIP: 403921	 Bytes: 5
  %loadMem_403921 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403921 = call %struct.Memory* @routine_movsd__xmm1__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403921)
  store %struct.Memory* %call_403921, %struct.Memory** %MEMORY

  ; Code: mulsd -0x60(%rbp), %xmm0	 RIP: 403926	 Bytes: 5
  %loadMem_403926 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403926 = call %struct.Memory* @routine_mulsd_MINUS0x60__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403926)
  store %struct.Memory* %call_403926, %struct.Memory** %MEMORY

  ; Code: mulsd -0x48(%rbp), %xmm0	 RIP: 40392b	 Bytes: 5
  %loadMem_40392b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40392b = call %struct.Memory* @routine_mulsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40392b)
  store %struct.Memory* %call_40392b, %struct.Memory** %MEMORY

  ; Code: subsd -0x50(%rbp), %xmm0	 RIP: 403930	 Bytes: 5
  %loadMem_403930 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403930 = call %struct.Memory* @routine_subsd_MINUS0x50__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403930)
  store %struct.Memory* %call_403930, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x70(%rbp)	 RIP: 403935	 Bytes: 5
  %loadMem_403935 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403935 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403935)
  store %struct.Memory* %call_403935, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 40393a	 Bytes: 3
  %loadMem_40393a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40393a = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40393a)
  store %struct.Memory* %call_40393a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 40393d	 Bytes: 3
  %loadMem_40393d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40393d = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40393d)
  store %struct.Memory* %call_40393d, %struct.Memory** %MEMORY

  ; Code: .L_403940:	 RIP: 403940	 Bytes: 0
  br label %block_.L_403940
block_.L_403940:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 403940	 Bytes: 3
  %loadMem_403940 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403940 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403940)
  store %struct.Memory* %call_403940, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 403943	 Bytes: 3
  %loadMem_403943 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403943 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403943)
  store %struct.Memory* %call_403943, %struct.Memory** %MEMORY

  ; Code: addl -0x2c(%rbp), %ecx	 RIP: 403946	 Bytes: 3
  %loadMem_403946 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403946 = call %struct.Memory* @routine_addl_MINUS0x2c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403946)
  store %struct.Memory* %call_403946, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 403949	 Bytes: 2
  %loadMem_403949 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403949 = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403949)
  store %struct.Memory* %call_403949, %struct.Memory** %MEMORY

  ; Code: jge .L_403c52	 RIP: 40394b	 Bytes: 6
  %loadMem_40394b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40394b = call %struct.Memory* @routine_jge_.L_403c52(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40394b, i8* %BRANCH_TAKEN, i64 775, i64 6, i64 6)
  store %struct.Memory* %call_40394b, %struct.Memory** %MEMORY

  %loadBr_40394b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40394b = icmp eq i8 %loadBr_40394b, 1
  br i1 %cmpBr_40394b, label %block_.L_403c52, label %block_403951

block_403951:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 403951	 Bytes: 3
  %loadMem_403951 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403951 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403951)
  store %struct.Memory* %call_403951, %struct.Memory** %MEMORY

  ; Code: addl -0x8(%rbp), %eax	 RIP: 403954	 Bytes: 3
  %loadMem_403954 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403954 = call %struct.Memory* @routine_addl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403954)
  store %struct.Memory* %call_403954, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 403957	 Bytes: 3
  %loadMem_403957 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403957 = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403957)
  store %struct.Memory* %call_403957, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 40395a	 Bytes: 3
  %loadMem_40395a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40395a = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40395a)
  store %struct.Memory* %call_40395a, %struct.Memory** %MEMORY

  ; Code: addl -0x8(%rbp), %eax	 RIP: 40395d	 Bytes: 3
  %loadMem_40395d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40395d = call %struct.Memory* @routine_addl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40395d)
  store %struct.Memory* %call_40395d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 403960	 Bytes: 3
  %loadMem_403960 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403960 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403960)
  store %struct.Memory* %call_403960, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 403963	 Bytes: 3
  %loadMem_403963 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403963 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403963)
  store %struct.Memory* %call_403963, %struct.Memory** %MEMORY

  ; Code: addl -0x8(%rbp), %eax	 RIP: 403966	 Bytes: 3
  %loadMem_403966 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403966 = call %struct.Memory* @routine_addl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403966)
  store %struct.Memory* %call_403966, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 403969	 Bytes: 3
  %loadMem_403969 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403969 = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403969)
  store %struct.Memory* %call_403969, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40396c	 Bytes: 4
  %loadMem_40396c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40396c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40396c)
  store %struct.Memory* %call_40396c, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 403970	 Bytes: 4
  %loadMem_403970 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403970 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403970)
  store %struct.Memory* %call_403970, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 403974	 Bytes: 5
  %loadMem_403974 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403974 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403974)
  store %struct.Memory* %call_403974, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403979	 Bytes: 4
  %loadMem_403979 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403979 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403979)
  store %struct.Memory* %call_403979, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 40397d	 Bytes: 4
  %loadMem_40397d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40397d = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40397d)
  store %struct.Memory* %call_40397d, %struct.Memory** %MEMORY

  ; Code: addsd (%rcx,%rdx,8), %xmm0	 RIP: 403981	 Bytes: 5
  %loadMem_403981 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403981 = call %struct.Memory* @routine_addsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403981)
  store %struct.Memory* %call_403981, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x78(%rbp)	 RIP: 403986	 Bytes: 5
  %loadMem_403986 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403986 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403986)
  store %struct.Memory* %call_403986, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40398b	 Bytes: 4
  %loadMem_40398b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40398b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40398b)
  store %struct.Memory* %call_40398b, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 40398f	 Bytes: 3
  %loadMem_40398f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40398f = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40398f)
  store %struct.Memory* %call_40398f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 403992	 Bytes: 3
  %loadMem_403992 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403992 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403992)
  store %struct.Memory* %call_403992, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403995	 Bytes: 3
  %loadMem_403995 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403995 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403995)
  store %struct.Memory* %call_403995, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 403998	 Bytes: 5
  %loadMem_403998 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403998 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403998)
  store %struct.Memory* %call_403998, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40399d	 Bytes: 4
  %loadMem_40399d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40399d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40399d)
  store %struct.Memory* %call_40399d, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 4039a1	 Bytes: 3
  %loadMem_4039a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039a1 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039a1)
  store %struct.Memory* %call_4039a1, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4039a4	 Bytes: 3
  %loadMem_4039a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039a4 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039a4)
  store %struct.Memory* %call_4039a4, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4039a7	 Bytes: 3
  %loadMem_4039a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039a7 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039a7)
  store %struct.Memory* %call_4039a7, %struct.Memory** %MEMORY

  ; Code: addsd (%rcx,%rdx,8), %xmm0	 RIP: 4039aa	 Bytes: 5
  %loadMem_4039aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039aa = call %struct.Memory* @routine_addsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039aa)
  store %struct.Memory* %call_4039aa, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x80(%rbp)	 RIP: 4039af	 Bytes: 5
  %loadMem_4039af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039af = call %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039af)
  store %struct.Memory* %call_4039af, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4039b4	 Bytes: 4
  %loadMem_4039b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039b4 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039b4)
  store %struct.Memory* %call_4039b4, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 4039b8	 Bytes: 4
  %loadMem_4039b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039b8 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039b8)
  store %struct.Memory* %call_4039b8, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 4039bc	 Bytes: 5
  %loadMem_4039bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039bc = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039bc)
  store %struct.Memory* %call_4039bc, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4039c1	 Bytes: 4
  %loadMem_4039c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039c1 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039c1)
  store %struct.Memory* %call_4039c1, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 4039c5	 Bytes: 4
  %loadMem_4039c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039c5 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039c5)
  store %struct.Memory* %call_4039c5, %struct.Memory** %MEMORY

  ; Code: subsd (%rcx,%rdx,8), %xmm0	 RIP: 4039c9	 Bytes: 5
  %loadMem_4039c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039c9 = call %struct.Memory* @routine_subsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039c9)
  store %struct.Memory* %call_4039c9, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x88(%rbp)	 RIP: 4039ce	 Bytes: 8
  %loadMem_4039ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039ce = call %struct.Memory* @routine_movsd__xmm0__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039ce)
  store %struct.Memory* %call_4039ce, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4039d6	 Bytes: 4
  %loadMem_4039d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039d6 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039d6)
  store %struct.Memory* %call_4039d6, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4039da	 Bytes: 3
  %loadMem_4039da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039da = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039da)
  store %struct.Memory* %call_4039da, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4039dd	 Bytes: 3
  %loadMem_4039dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039dd = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039dd)
  store %struct.Memory* %call_4039dd, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4039e0	 Bytes: 3
  %loadMem_4039e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039e0 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039e0)
  store %struct.Memory* %call_4039e0, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 4039e3	 Bytes: 5
  %loadMem_4039e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039e3 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039e3)
  store %struct.Memory* %call_4039e3, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4039e8	 Bytes: 4
  %loadMem_4039e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039e8 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039e8)
  store %struct.Memory* %call_4039e8, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 4039ec	 Bytes: 3
  %loadMem_4039ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039ec = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039ec)
  store %struct.Memory* %call_4039ec, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4039ef	 Bytes: 3
  %loadMem_4039ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039ef = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039ef)
  store %struct.Memory* %call_4039ef, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4039f2	 Bytes: 3
  %loadMem_4039f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039f2 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039f2)
  store %struct.Memory* %call_4039f2, %struct.Memory** %MEMORY

  ; Code: subsd (%rcx,%rdx,8), %xmm0	 RIP: 4039f5	 Bytes: 5
  %loadMem_4039f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039f5 = call %struct.Memory* @routine_subsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039f5)
  store %struct.Memory* %call_4039f5, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x90(%rbp)	 RIP: 4039fa	 Bytes: 8
  %loadMem_4039fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039fa = call %struct.Memory* @routine_movsd__xmm0__MINUS0x90__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039fa)
  store %struct.Memory* %call_4039fa, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403a02	 Bytes: 4
  %loadMem_403a02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a02 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a02)
  store %struct.Memory* %call_403a02, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 403a06	 Bytes: 4
  %loadMem_403a06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a06 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a06)
  store %struct.Memory* %call_403a06, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 403a0a	 Bytes: 5
  %loadMem_403a0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a0a = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a0a)
  store %struct.Memory* %call_403a0a, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403a0f	 Bytes: 4
  %loadMem_403a0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a0f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a0f)
  store %struct.Memory* %call_403a0f, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 403a13	 Bytes: 4
  %loadMem_403a13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a13 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a13)
  store %struct.Memory* %call_403a13, %struct.Memory** %MEMORY

  ; Code: addsd (%rcx,%rdx,8), %xmm0	 RIP: 403a17	 Bytes: 5
  %loadMem_403a17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a17 = call %struct.Memory* @routine_addsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a17)
  store %struct.Memory* %call_403a17, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x98(%rbp)	 RIP: 403a1c	 Bytes: 8
  %loadMem_403a1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a1c = call %struct.Memory* @routine_movsd__xmm0__MINUS0x98__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a1c)
  store %struct.Memory* %call_403a1c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403a24	 Bytes: 4
  %loadMem_403a24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a24 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a24)
  store %struct.Memory* %call_403a24, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 403a28	 Bytes: 3
  %loadMem_403a28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a28 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a28)
  store %struct.Memory* %call_403a28, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 403a2b	 Bytes: 3
  %loadMem_403a2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a2b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a2b)
  store %struct.Memory* %call_403a2b, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403a2e	 Bytes: 3
  %loadMem_403a2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a2e = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a2e)
  store %struct.Memory* %call_403a2e, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 403a31	 Bytes: 5
  %loadMem_403a31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a31 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a31)
  store %struct.Memory* %call_403a31, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403a36	 Bytes: 4
  %loadMem_403a36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a36 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a36)
  store %struct.Memory* %call_403a36, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 403a3a	 Bytes: 3
  %loadMem_403a3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a3a = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a3a)
  store %struct.Memory* %call_403a3a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 403a3d	 Bytes: 3
  %loadMem_403a3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a3d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a3d)
  store %struct.Memory* %call_403a3d, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403a40	 Bytes: 3
  %loadMem_403a40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a40 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a40)
  store %struct.Memory* %call_403a40, %struct.Memory** %MEMORY

  ; Code: addsd (%rcx,%rdx,8), %xmm0	 RIP: 403a43	 Bytes: 5
  %loadMem_403a43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a43 = call %struct.Memory* @routine_addsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a43)
  store %struct.Memory* %call_403a43, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0xa0(%rbp)	 RIP: 403a48	 Bytes: 8
  %loadMem_403a48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a48 = call %struct.Memory* @routine_movsd__xmm0__MINUS0xa0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a48)
  store %struct.Memory* %call_403a48, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403a50	 Bytes: 4
  %loadMem_403a50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a50 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a50)
  store %struct.Memory* %call_403a50, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 403a54	 Bytes: 4
  %loadMem_403a54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a54 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a54)
  store %struct.Memory* %call_403a54, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 403a58	 Bytes: 5
  %loadMem_403a58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a58 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a58)
  store %struct.Memory* %call_403a58, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403a5d	 Bytes: 4
  %loadMem_403a5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a5d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a5d)
  store %struct.Memory* %call_403a5d, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 403a61	 Bytes: 4
  %loadMem_403a61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a61 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a61)
  store %struct.Memory* %call_403a61, %struct.Memory** %MEMORY

  ; Code: subsd (%rcx,%rdx,8), %xmm0	 RIP: 403a65	 Bytes: 5
  %loadMem_403a65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a65 = call %struct.Memory* @routine_subsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a65)
  store %struct.Memory* %call_403a65, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0xa8(%rbp)	 RIP: 403a6a	 Bytes: 8
  %loadMem_403a6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a6a = call %struct.Memory* @routine_movsd__xmm0__MINUS0xa8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a6a)
  store %struct.Memory* %call_403a6a, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403a72	 Bytes: 4
  %loadMem_403a72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a72 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a72)
  store %struct.Memory* %call_403a72, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 403a76	 Bytes: 3
  %loadMem_403a76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a76 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a76)
  store %struct.Memory* %call_403a76, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 403a79	 Bytes: 3
  %loadMem_403a79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a79 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a79)
  store %struct.Memory* %call_403a79, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403a7c	 Bytes: 3
  %loadMem_403a7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a7c = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a7c)
  store %struct.Memory* %call_403a7c, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 403a7f	 Bytes: 5
  %loadMem_403a7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a7f = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a7f)
  store %struct.Memory* %call_403a7f, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403a84	 Bytes: 4
  %loadMem_403a84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a84 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a84)
  store %struct.Memory* %call_403a84, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 403a88	 Bytes: 3
  %loadMem_403a88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a88 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a88)
  store %struct.Memory* %call_403a88, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 403a8b	 Bytes: 3
  %loadMem_403a8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a8b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a8b)
  store %struct.Memory* %call_403a8b, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403a8e	 Bytes: 3
  %loadMem_403a8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a8e = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a8e)
  store %struct.Memory* %call_403a8e, %struct.Memory** %MEMORY

  ; Code: subsd (%rcx,%rdx,8), %xmm0	 RIP: 403a91	 Bytes: 5
  %loadMem_403a91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a91 = call %struct.Memory* @routine_subsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a91)
  store %struct.Memory* %call_403a91, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0xb0(%rbp)	 RIP: 403a96	 Bytes: 8
  %loadMem_403a96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a96 = call %struct.Memory* @routine_movsd__xmm0__MINUS0xb0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a96)
  store %struct.Memory* %call_403a96, %struct.Memory** %MEMORY

  ; Code: movsd -0x78(%rbp), %xmm0	 RIP: 403a9e	 Bytes: 5
  %loadMem_403a9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a9e = call %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a9e)
  store %struct.Memory* %call_403a9e, %struct.Memory** %MEMORY

  ; Code: addsd -0x98(%rbp), %xmm0	 RIP: 403aa3	 Bytes: 8
  %loadMem_403aa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403aa3 = call %struct.Memory* @routine_addsd_MINUS0x98__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403aa3)
  store %struct.Memory* %call_403aa3, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403aab	 Bytes: 4
  %loadMem_403aab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403aab = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403aab)
  store %struct.Memory* %call_403aab, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 403aaf	 Bytes: 4
  %loadMem_403aaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403aaf = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403aaf)
  store %struct.Memory* %call_403aaf, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 403ab3	 Bytes: 5
  %loadMem_403ab3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ab3 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ab3)
  store %struct.Memory* %call_403ab3, %struct.Memory** %MEMORY

  ; Code: movsd -0x80(%rbp), %xmm0	 RIP: 403ab8	 Bytes: 5
  %loadMem_403ab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ab8 = call %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ab8)
  store %struct.Memory* %call_403ab8, %struct.Memory** %MEMORY

  ; Code: addsd -0xa0(%rbp), %xmm0	 RIP: 403abd	 Bytes: 8
  %loadMem_403abd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403abd = call %struct.Memory* @routine_addsd_MINUS0xa0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403abd)
  store %struct.Memory* %call_403abd, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403ac5	 Bytes: 4
  %loadMem_403ac5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ac5 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ac5)
  store %struct.Memory* %call_403ac5, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 403ac9	 Bytes: 3
  %loadMem_403ac9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ac9 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ac9)
  store %struct.Memory* %call_403ac9, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 403acc	 Bytes: 3
  %loadMem_403acc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403acc = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403acc)
  store %struct.Memory* %call_403acc, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403acf	 Bytes: 3
  %loadMem_403acf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403acf = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403acf)
  store %struct.Memory* %call_403acf, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 403ad2	 Bytes: 5
  %loadMem_403ad2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ad2 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ad2)
  store %struct.Memory* %call_403ad2, %struct.Memory** %MEMORY

  ; Code: movsd -0x98(%rbp), %xmm0	 RIP: 403ad7	 Bytes: 8
  %loadMem_403ad7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ad7 = call %struct.Memory* @routine_movsd_MINUS0x98__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ad7)
  store %struct.Memory* %call_403ad7, %struct.Memory** %MEMORY

  ; Code: movsd -0x78(%rbp), %xmm1	 RIP: 403adf	 Bytes: 5
  %loadMem_403adf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403adf = call %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403adf)
  store %struct.Memory* %call_403adf, %struct.Memory** %MEMORY

  ; Code: subsd %xmm0, %xmm1	 RIP: 403ae4	 Bytes: 4
  %loadMem_403ae4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ae4 = call %struct.Memory* @routine_subsd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ae4)
  store %struct.Memory* %call_403ae4, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x78(%rbp)	 RIP: 403ae8	 Bytes: 5
  %loadMem_403ae8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ae8 = call %struct.Memory* @routine_movsd__xmm1__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ae8)
  store %struct.Memory* %call_403ae8, %struct.Memory** %MEMORY

  ; Code: movsd -0xa0(%rbp), %xmm0	 RIP: 403aed	 Bytes: 8
  %loadMem_403aed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403aed = call %struct.Memory* @routine_movsd_MINUS0xa0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403aed)
  store %struct.Memory* %call_403aed, %struct.Memory** %MEMORY

  ; Code: movsd -0x80(%rbp), %xmm1	 RIP: 403af5	 Bytes: 5
  %loadMem_403af5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403af5 = call %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403af5)
  store %struct.Memory* %call_403af5, %struct.Memory** %MEMORY

  ; Code: subsd %xmm0, %xmm1	 RIP: 403afa	 Bytes: 4
  %loadMem_403afa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403afa = call %struct.Memory* @routine_subsd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403afa)
  store %struct.Memory* %call_403afa, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x80(%rbp)	 RIP: 403afe	 Bytes: 5
  %loadMem_403afe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403afe = call %struct.Memory* @routine_movsd__xmm1__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403afe)
  store %struct.Memory* %call_403afe, %struct.Memory** %MEMORY

  ; Code: movsd -0x58(%rbp), %xmm0	 RIP: 403b03	 Bytes: 5
  %loadMem_403b03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b03 = call %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b03)
  store %struct.Memory* %call_403b03, %struct.Memory** %MEMORY

  ; Code: mulsd -0x78(%rbp), %xmm0	 RIP: 403b08	 Bytes: 5
  %loadMem_403b08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b08 = call %struct.Memory* @routine_mulsd_MINUS0x78__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b08)
  store %struct.Memory* %call_403b08, %struct.Memory** %MEMORY

  ; Code: movsd -0x60(%rbp), %xmm1	 RIP: 403b0d	 Bytes: 5
  %loadMem_403b0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b0d = call %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b0d)
  store %struct.Memory* %call_403b0d, %struct.Memory** %MEMORY

  ; Code: mulsd -0x80(%rbp), %xmm1	 RIP: 403b12	 Bytes: 5
  %loadMem_403b12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b12 = call %struct.Memory* @routine_mulsd_MINUS0x80__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b12)
  store %struct.Memory* %call_403b12, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 403b17	 Bytes: 4
  %loadMem_403b17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b17 = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b17)
  store %struct.Memory* %call_403b17, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403b1b	 Bytes: 4
  %loadMem_403b1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b1b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b1b)
  store %struct.Memory* %call_403b1b, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 403b1f	 Bytes: 4
  %loadMem_403b1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b1f = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b1f)
  store %struct.Memory* %call_403b1f, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 403b23	 Bytes: 5
  %loadMem_403b23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b23 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b23)
  store %struct.Memory* %call_403b23, %struct.Memory** %MEMORY

  ; Code: movsd -0x58(%rbp), %xmm0	 RIP: 403b28	 Bytes: 5
  %loadMem_403b28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b28 = call %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b28)
  store %struct.Memory* %call_403b28, %struct.Memory** %MEMORY

  ; Code: mulsd -0x80(%rbp), %xmm0	 RIP: 403b2d	 Bytes: 5
  %loadMem_403b2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b2d = call %struct.Memory* @routine_mulsd_MINUS0x80__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b2d)
  store %struct.Memory* %call_403b2d, %struct.Memory** %MEMORY

  ; Code: movsd -0x60(%rbp), %xmm1	 RIP: 403b32	 Bytes: 5
  %loadMem_403b32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b32 = call %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b32)
  store %struct.Memory* %call_403b32, %struct.Memory** %MEMORY

  ; Code: mulsd -0x78(%rbp), %xmm1	 RIP: 403b37	 Bytes: 5
  %loadMem_403b37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b37 = call %struct.Memory* @routine_mulsd_MINUS0x78__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b37)
  store %struct.Memory* %call_403b37, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 403b3c	 Bytes: 4
  %loadMem_403b3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b3c = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b3c)
  store %struct.Memory* %call_403b3c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403b40	 Bytes: 4
  %loadMem_403b40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b40 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b40)
  store %struct.Memory* %call_403b40, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 403b44	 Bytes: 3
  %loadMem_403b44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b44 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b44)
  store %struct.Memory* %call_403b44, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 403b47	 Bytes: 3
  %loadMem_403b47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b47 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b47)
  store %struct.Memory* %call_403b47, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403b4a	 Bytes: 3
  %loadMem_403b4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b4a = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b4a)
  store %struct.Memory* %call_403b4a, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 403b4d	 Bytes: 5
  %loadMem_403b4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b4d = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b4d)
  store %struct.Memory* %call_403b4d, %struct.Memory** %MEMORY

  ; Code: movsd -0x88(%rbp), %xmm0	 RIP: 403b52	 Bytes: 8
  %loadMem_403b52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b52 = call %struct.Memory* @routine_movsd_MINUS0x88__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b52)
  store %struct.Memory* %call_403b52, %struct.Memory** %MEMORY

  ; Code: subsd -0xb0(%rbp), %xmm0	 RIP: 403b5a	 Bytes: 8
  %loadMem_403b5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b5a = call %struct.Memory* @routine_subsd_MINUS0xb0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b5a)
  store %struct.Memory* %call_403b5a, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x78(%rbp)	 RIP: 403b62	 Bytes: 5
  %loadMem_403b62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b62 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b62)
  store %struct.Memory* %call_403b62, %struct.Memory** %MEMORY

  ; Code: movsd -0x90(%rbp), %xmm0	 RIP: 403b67	 Bytes: 8
  %loadMem_403b67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b67 = call %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b67)
  store %struct.Memory* %call_403b67, %struct.Memory** %MEMORY

  ; Code: addsd -0xa8(%rbp), %xmm0	 RIP: 403b6f	 Bytes: 8
  %loadMem_403b6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b6f = call %struct.Memory* @routine_addsd_MINUS0xa8__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b6f)
  store %struct.Memory* %call_403b6f, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x80(%rbp)	 RIP: 403b77	 Bytes: 5
  %loadMem_403b77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b77 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b77)
  store %struct.Memory* %call_403b77, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm0	 RIP: 403b7c	 Bytes: 5
  %loadMem_403b7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b7c = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b7c)
  store %struct.Memory* %call_403b7c, %struct.Memory** %MEMORY

  ; Code: mulsd -0x78(%rbp), %xmm0	 RIP: 403b81	 Bytes: 5
  %loadMem_403b81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b81 = call %struct.Memory* @routine_mulsd_MINUS0x78__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b81)
  store %struct.Memory* %call_403b81, %struct.Memory** %MEMORY

  ; Code: movsd -0x50(%rbp), %xmm1	 RIP: 403b86	 Bytes: 5
  %loadMem_403b86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b86 = call %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b86)
  store %struct.Memory* %call_403b86, %struct.Memory** %MEMORY

  ; Code: mulsd -0x80(%rbp), %xmm1	 RIP: 403b8b	 Bytes: 5
  %loadMem_403b8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b8b = call %struct.Memory* @routine_mulsd_MINUS0x80__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b8b)
  store %struct.Memory* %call_403b8b, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 403b90	 Bytes: 4
  %loadMem_403b90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b90 = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b90)
  store %struct.Memory* %call_403b90, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403b94	 Bytes: 4
  %loadMem_403b94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b94 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b94)
  store %struct.Memory* %call_403b94, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 403b98	 Bytes: 4
  %loadMem_403b98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b98 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b98)
  store %struct.Memory* %call_403b98, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 403b9c	 Bytes: 5
  %loadMem_403b9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b9c = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b9c)
  store %struct.Memory* %call_403b9c, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm0	 RIP: 403ba1	 Bytes: 5
  %loadMem_403ba1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ba1 = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ba1)
  store %struct.Memory* %call_403ba1, %struct.Memory** %MEMORY

  ; Code: mulsd -0x80(%rbp), %xmm0	 RIP: 403ba6	 Bytes: 5
  %loadMem_403ba6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ba6 = call %struct.Memory* @routine_mulsd_MINUS0x80__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ba6)
  store %struct.Memory* %call_403ba6, %struct.Memory** %MEMORY

  ; Code: movsd -0x50(%rbp), %xmm1	 RIP: 403bab	 Bytes: 5
  %loadMem_403bab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403bab = call %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403bab)
  store %struct.Memory* %call_403bab, %struct.Memory** %MEMORY

  ; Code: mulsd -0x78(%rbp), %xmm1	 RIP: 403bb0	 Bytes: 5
  %loadMem_403bb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403bb0 = call %struct.Memory* @routine_mulsd_MINUS0x78__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403bb0)
  store %struct.Memory* %call_403bb0, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 403bb5	 Bytes: 4
  %loadMem_403bb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403bb5 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403bb5)
  store %struct.Memory* %call_403bb5, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403bb9	 Bytes: 4
  %loadMem_403bb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403bb9 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403bb9)
  store %struct.Memory* %call_403bb9, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 403bbd	 Bytes: 3
  %loadMem_403bbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403bbd = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403bbd)
  store %struct.Memory* %call_403bbd, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 403bc0	 Bytes: 3
  %loadMem_403bc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403bc0 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403bc0)
  store %struct.Memory* %call_403bc0, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403bc3	 Bytes: 3
  %loadMem_403bc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403bc3 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403bc3)
  store %struct.Memory* %call_403bc3, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 403bc6	 Bytes: 5
  %loadMem_403bc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403bc6 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403bc6)
  store %struct.Memory* %call_403bc6, %struct.Memory** %MEMORY

  ; Code: movsd -0x88(%rbp), %xmm0	 RIP: 403bcb	 Bytes: 8
  %loadMem_403bcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403bcb = call %struct.Memory* @routine_movsd_MINUS0x88__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403bcb)
  store %struct.Memory* %call_403bcb, %struct.Memory** %MEMORY

  ; Code: addsd -0xb0(%rbp), %xmm0	 RIP: 403bd3	 Bytes: 8
  %loadMem_403bd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403bd3 = call %struct.Memory* @routine_addsd_MINUS0xb0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403bd3)
  store %struct.Memory* %call_403bd3, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x78(%rbp)	 RIP: 403bdb	 Bytes: 5
  %loadMem_403bdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403bdb = call %struct.Memory* @routine_movsd__xmm0__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403bdb)
  store %struct.Memory* %call_403bdb, %struct.Memory** %MEMORY

  ; Code: movsd -0x90(%rbp), %xmm0	 RIP: 403be0	 Bytes: 8
  %loadMem_403be0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403be0 = call %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403be0)
  store %struct.Memory* %call_403be0, %struct.Memory** %MEMORY

  ; Code: subsd -0xa8(%rbp), %xmm0	 RIP: 403be8	 Bytes: 8
  %loadMem_403be8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403be8 = call %struct.Memory* @routine_subsd_MINUS0xa8__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403be8)
  store %struct.Memory* %call_403be8, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x80(%rbp)	 RIP: 403bf0	 Bytes: 5
  %loadMem_403bf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403bf0 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403bf0)
  store %struct.Memory* %call_403bf0, %struct.Memory** %MEMORY

  ; Code: movsd -0x68(%rbp), %xmm0	 RIP: 403bf5	 Bytes: 5
  %loadMem_403bf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403bf5 = call %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403bf5)
  store %struct.Memory* %call_403bf5, %struct.Memory** %MEMORY

  ; Code: mulsd -0x78(%rbp), %xmm0	 RIP: 403bfa	 Bytes: 5
  %loadMem_403bfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403bfa = call %struct.Memory* @routine_mulsd_MINUS0x78__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403bfa)
  store %struct.Memory* %call_403bfa, %struct.Memory** %MEMORY

  ; Code: movsd -0x70(%rbp), %xmm1	 RIP: 403bff	 Bytes: 5
  %loadMem_403bff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403bff = call %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403bff)
  store %struct.Memory* %call_403bff, %struct.Memory** %MEMORY

  ; Code: mulsd -0x80(%rbp), %xmm1	 RIP: 403c04	 Bytes: 5
  %loadMem_403c04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c04 = call %struct.Memory* @routine_mulsd_MINUS0x80__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c04)
  store %struct.Memory* %call_403c04, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 403c09	 Bytes: 4
  %loadMem_403c09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c09 = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c09)
  store %struct.Memory* %call_403c09, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403c0d	 Bytes: 4
  %loadMem_403c0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c0d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c0d)
  store %struct.Memory* %call_403c0d, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 403c11	 Bytes: 4
  %loadMem_403c11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c11 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c11)
  store %struct.Memory* %call_403c11, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 403c15	 Bytes: 5
  %loadMem_403c15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c15 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c15)
  store %struct.Memory* %call_403c15, %struct.Memory** %MEMORY

  ; Code: movsd -0x68(%rbp), %xmm0	 RIP: 403c1a	 Bytes: 5
  %loadMem_403c1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c1a = call %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c1a)
  store %struct.Memory* %call_403c1a, %struct.Memory** %MEMORY

  ; Code: mulsd -0x80(%rbp), %xmm0	 RIP: 403c1f	 Bytes: 5
  %loadMem_403c1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c1f = call %struct.Memory* @routine_mulsd_MINUS0x80__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c1f)
  store %struct.Memory* %call_403c1f, %struct.Memory** %MEMORY

  ; Code: movsd -0x70(%rbp), %xmm1	 RIP: 403c24	 Bytes: 5
  %loadMem_403c24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c24 = call %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c24)
  store %struct.Memory* %call_403c24, %struct.Memory** %MEMORY

  ; Code: mulsd -0x78(%rbp), %xmm1	 RIP: 403c29	 Bytes: 5
  %loadMem_403c29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c29 = call %struct.Memory* @routine_mulsd_MINUS0x78__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c29)
  store %struct.Memory* %call_403c29, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 403c2e	 Bytes: 4
  %loadMem_403c2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c2e = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c2e)
  store %struct.Memory* %call_403c2e, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403c32	 Bytes: 4
  %loadMem_403c32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c32 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c32)
  store %struct.Memory* %call_403c32, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 403c36	 Bytes: 3
  %loadMem_403c36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c36 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c36)
  store %struct.Memory* %call_403c36, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 403c39	 Bytes: 3
  %loadMem_403c39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c39 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c39)
  store %struct.Memory* %call_403c39, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403c3c	 Bytes: 3
  %loadMem_403c3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c3c = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c3c)
  store %struct.Memory* %call_403c3c, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 403c3f	 Bytes: 5
  %loadMem_403c3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c3f = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c3f)
  store %struct.Memory* %call_403c3f, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 403c44	 Bytes: 3
  %loadMem_403c44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c44 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c44)
  store %struct.Memory* %call_403c44, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %eax	 RIP: 403c47	 Bytes: 3
  %loadMem_403c47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c47 = call %struct.Memory* @routine_addl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c47)
  store %struct.Memory* %call_403c47, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 403c4a	 Bytes: 3
  %loadMem_403c4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c4a = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c4a)
  store %struct.Memory* %call_403c4a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_403940	 RIP: 403c4d	 Bytes: 5
  %loadMem_403c4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c4d = call %struct.Memory* @routine_jmpq_.L_403940(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c4d, i64 -781, i64 5)
  store %struct.Memory* %call_403c4d, %struct.Memory** %MEMORY

  br label %block_.L_403940

  ; Code: .L_403c52:	 RIP: 403c52	 Bytes: 0
block_.L_403c52:

  ; Code: movsd 0x496(%rip), %xmm0	 RIP: 403c52	 Bytes: 8
  %loadMem_403c52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c52 = call %struct.Memory* @routine_movsd_0x496__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c52)
  store %struct.Memory* %call_403c52, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 403c5a	 Bytes: 4
  %loadMem_403c5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c5a = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c5a)
  store %struct.Memory* %call_403c5a, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 403c5e	 Bytes: 3
  %loadMem_403c5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c5e = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c5e)
  store %struct.Memory* %call_403c5e, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %ecx	 RIP: 403c61	 Bytes: 3
  %loadMem_403c61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c61 = call %struct.Memory* @routine_addl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c61)
  store %struct.Memory* %call_403c61, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 403c64	 Bytes: 3
  %loadMem_403c64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c64 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c64)
  store %struct.Memory* %call_403c64, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rdx,8), %xmm1	 RIP: 403c67	 Bytes: 5
  %loadMem_403c67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c67 = call %struct.Memory* @routine_movsd___rax__rdx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c67)
  store %struct.Memory* %call_403c67, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x48(%rbp)	 RIP: 403c6c	 Bytes: 5
  %loadMem_403c6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c6c = call %struct.Memory* @routine_movsd__xmm1__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c6c)
  store %struct.Memory* %call_403c6c, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 403c71	 Bytes: 4
  %loadMem_403c71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c71 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c71)
  store %struct.Memory* %call_403c71, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 403c75	 Bytes: 3
  %loadMem_403c75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c75 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c75)
  store %struct.Memory* %call_403c75, %struct.Memory** %MEMORY

  ; Code: addl $0x3, %ecx	 RIP: 403c78	 Bytes: 3
  %loadMem_403c78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c78 = call %struct.Memory* @routine_addl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c78)
  store %struct.Memory* %call_403c78, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 403c7b	 Bytes: 3
  %loadMem_403c7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c7b = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c7b)
  store %struct.Memory* %call_403c7b, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rdx,8), %xmm1	 RIP: 403c7e	 Bytes: 5
  %loadMem_403c7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c7e = call %struct.Memory* @routine_movsd___rax__rdx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c7e)
  store %struct.Memory* %call_403c7e, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x50(%rbp)	 RIP: 403c83	 Bytes: 5
  %loadMem_403c83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c83 = call %struct.Memory* @routine_movsd__xmm1__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c83)
  store %struct.Memory* %call_403c83, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm1	 RIP: 403c88	 Bytes: 5
  %loadMem_403c88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c88 = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c88)
  store %struct.Memory* %call_403c88, %struct.Memory** %MEMORY

  ; Code: movaps %xmm0, %xmm2	 RIP: 403c8d	 Bytes: 3
  %loadMem_403c8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c8d = call %struct.Memory* @routine_movaps__xmm0___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c8d)
  store %struct.Memory* %call_403c8d, %struct.Memory** %MEMORY

  ; Code: mulsd -0x58(%rbp), %xmm2	 RIP: 403c90	 Bytes: 5
  %loadMem_403c90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c90 = call %struct.Memory* @routine_mulsd_MINUS0x58__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c90)
  store %struct.Memory* %call_403c90, %struct.Memory** %MEMORY

  ; Code: mulsd -0x50(%rbp), %xmm2	 RIP: 403c95	 Bytes: 5
  %loadMem_403c95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c95 = call %struct.Memory* @routine_mulsd_MINUS0x50__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c95)
  store %struct.Memory* %call_403c95, %struct.Memory** %MEMORY

  ; Code: subsd %xmm2, %xmm1	 RIP: 403c9a	 Bytes: 4
  %loadMem_403c9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c9a = call %struct.Memory* @routine_subsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c9a)
  store %struct.Memory* %call_403c9a, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x68(%rbp)	 RIP: 403c9e	 Bytes: 5
  %loadMem_403c9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c9e = call %struct.Memory* @routine_movsd__xmm1__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c9e)
  store %struct.Memory* %call_403c9e, %struct.Memory** %MEMORY

  ; Code: mulsd -0x58(%rbp), %xmm0	 RIP: 403ca3	 Bytes: 5
  %loadMem_403ca3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ca3 = call %struct.Memory* @routine_mulsd_MINUS0x58__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ca3)
  store %struct.Memory* %call_403ca3, %struct.Memory** %MEMORY

  ; Code: mulsd -0x48(%rbp), %xmm0	 RIP: 403ca8	 Bytes: 5
  %loadMem_403ca8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ca8 = call %struct.Memory* @routine_mulsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ca8)
  store %struct.Memory* %call_403ca8, %struct.Memory** %MEMORY

  ; Code: subsd -0x50(%rbp), %xmm0	 RIP: 403cad	 Bytes: 5
  %loadMem_403cad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cad = call %struct.Memory* @routine_subsd_MINUS0x50__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cad)
  store %struct.Memory* %call_403cad, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x70(%rbp)	 RIP: 403cb2	 Bytes: 5
  %loadMem_403cb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cb2 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cb2)
  store %struct.Memory* %call_403cb2, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %ecx	 RIP: 403cb7	 Bytes: 3
  %loadMem_403cb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cb7 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cb7)
  store %struct.Memory* %call_403cb7, %struct.Memory** %MEMORY

  ; Code: addl -0x38(%rbp), %ecx	 RIP: 403cba	 Bytes: 3
  %loadMem_403cba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cba = call %struct.Memory* @routine_addl_MINUS0x38__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cba)
  store %struct.Memory* %call_403cba, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x1c(%rbp)	 RIP: 403cbd	 Bytes: 3
  %loadMem_403cbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cbd = call %struct.Memory* @routine_movl__ecx__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cbd)
  store %struct.Memory* %call_403cbd, %struct.Memory** %MEMORY

  ; Code: .L_403cc0:	 RIP: 403cc0	 Bytes: 0
  br label %block_.L_403cc0
block_.L_403cc0:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 403cc0	 Bytes: 3
  %loadMem_403cc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cc0 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cc0)
  store %struct.Memory* %call_403cc0, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 403cc3	 Bytes: 3
  %loadMem_403cc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cc3 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cc3)
  store %struct.Memory* %call_403cc3, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 403cc6	 Bytes: 3
  %loadMem_403cc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cc6 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cc6)
  store %struct.Memory* %call_403cc6, %struct.Memory** %MEMORY

  ; Code: addl -0x38(%rbp), %edx	 RIP: 403cc9	 Bytes: 3
  %loadMem_403cc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cc9 = call %struct.Memory* @routine_addl_MINUS0x38__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cc9)
  store %struct.Memory* %call_403cc9, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 403ccc	 Bytes: 2
  %loadMem_403ccc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ccc = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ccc)
  store %struct.Memory* %call_403ccc, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 403cce	 Bytes: 2
  %loadMem_403cce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cce = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cce)
  store %struct.Memory* %call_403cce, %struct.Memory** %MEMORY

  ; Code: jge .L_403ffb	 RIP: 403cd0	 Bytes: 6
  %loadMem_403cd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cd0 = call %struct.Memory* @routine_jge_.L_403ffb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cd0, i8* %BRANCH_TAKEN, i64 811, i64 6, i64 6)
  store %struct.Memory* %call_403cd0, %struct.Memory** %MEMORY

  %loadBr_403cd0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_403cd0 = icmp eq i8 %loadBr_403cd0, 1
  br i1 %cmpBr_403cd0, label %block_.L_403ffb, label %block_403cd6

block_403cd6:
  ; Code: movq $0x8000000000000000, %rax	 RIP: 403cd6	 Bytes: 10
  %loadMem_403cd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cd6 = call %struct.Memory* @routine_movq__0x8000000000000000___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cd6)
  store %struct.Memory* %call_403cd6, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 403ce0	 Bytes: 3
  %loadMem_403ce0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ce0 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ce0)
  store %struct.Memory* %call_403ce0, %struct.Memory** %MEMORY

  ; Code: addl -0x8(%rbp), %ecx	 RIP: 403ce3	 Bytes: 3
  %loadMem_403ce3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ce3 = call %struct.Memory* @routine_addl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ce3)
  store %struct.Memory* %call_403ce3, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x20(%rbp)	 RIP: 403ce6	 Bytes: 3
  %loadMem_403ce6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ce6 = call %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ce6)
  store %struct.Memory* %call_403ce6, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %ecx	 RIP: 403ce9	 Bytes: 3
  %loadMem_403ce9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ce9 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ce9)
  store %struct.Memory* %call_403ce9, %struct.Memory** %MEMORY

  ; Code: addl -0x8(%rbp), %ecx	 RIP: 403cec	 Bytes: 3
  %loadMem_403cec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cec = call %struct.Memory* @routine_addl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cec)
  store %struct.Memory* %call_403cec, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x24(%rbp)	 RIP: 403cef	 Bytes: 3
  %loadMem_403cef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cef = call %struct.Memory* @routine_movl__ecx__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cef)
  store %struct.Memory* %call_403cef, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 403cf2	 Bytes: 3
  %loadMem_403cf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cf2 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cf2)
  store %struct.Memory* %call_403cf2, %struct.Memory** %MEMORY

  ; Code: addl -0x8(%rbp), %ecx	 RIP: 403cf5	 Bytes: 3
  %loadMem_403cf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cf5 = call %struct.Memory* @routine_addl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cf5)
  store %struct.Memory* %call_403cf5, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x28(%rbp)	 RIP: 403cf8	 Bytes: 3
  %loadMem_403cf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cf8 = call %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cf8)
  store %struct.Memory* %call_403cf8, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403cfb	 Bytes: 4
  %loadMem_403cfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cfb = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cfb)
  store %struct.Memory* %call_403cfb, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rsi	 RIP: 403cff	 Bytes: 4
  %loadMem_403cff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cff = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cff)
  store %struct.Memory* %call_403cff, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 403d03	 Bytes: 5
  %loadMem_403d03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d03 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d03)
  store %struct.Memory* %call_403d03, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403d08	 Bytes: 4
  %loadMem_403d08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d08 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d08)
  store %struct.Memory* %call_403d08, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rsi	 RIP: 403d0c	 Bytes: 4
  %loadMem_403d0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d0c = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d0c)
  store %struct.Memory* %call_403d0c, %struct.Memory** %MEMORY

  ; Code: addsd (%rdx,%rsi,8), %xmm0	 RIP: 403d10	 Bytes: 5
  %loadMem_403d10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d10 = call %struct.Memory* @routine_addsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d10)
  store %struct.Memory* %call_403d10, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x78(%rbp)	 RIP: 403d15	 Bytes: 5
  %loadMem_403d15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d15 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d15)
  store %struct.Memory* %call_403d15, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403d1a	 Bytes: 4
  %loadMem_403d1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d1a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d1a)
  store %struct.Memory* %call_403d1a, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 403d1e	 Bytes: 3
  %loadMem_403d1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d1e = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d1e)
  store %struct.Memory* %call_403d1e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 403d21	 Bytes: 3
  %loadMem_403d21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d21 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d21)
  store %struct.Memory* %call_403d21, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 403d24	 Bytes: 3
  %loadMem_403d24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d24 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d24)
  store %struct.Memory* %call_403d24, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 403d27	 Bytes: 5
  %loadMem_403d27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d27 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d27)
  store %struct.Memory* %call_403d27, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403d2c	 Bytes: 4
  %loadMem_403d2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d2c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d2c)
  store %struct.Memory* %call_403d2c, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %ecx	 RIP: 403d30	 Bytes: 3
  %loadMem_403d30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d30 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d30)
  store %struct.Memory* %call_403d30, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 403d33	 Bytes: 3
  %loadMem_403d33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d33 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d33)
  store %struct.Memory* %call_403d33, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 403d36	 Bytes: 3
  %loadMem_403d36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d36 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d36)
  store %struct.Memory* %call_403d36, %struct.Memory** %MEMORY

  ; Code: addsd (%rdx,%rsi,8), %xmm0	 RIP: 403d39	 Bytes: 5
  %loadMem_403d39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d39 = call %struct.Memory* @routine_addsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d39)
  store %struct.Memory* %call_403d39, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x80(%rbp)	 RIP: 403d3e	 Bytes: 5
  %loadMem_403d3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d3e = call %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d3e)
  store %struct.Memory* %call_403d3e, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403d43	 Bytes: 4
  %loadMem_403d43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d43 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d43)
  store %struct.Memory* %call_403d43, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rsi	 RIP: 403d47	 Bytes: 4
  %loadMem_403d47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d47 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d47)
  store %struct.Memory* %call_403d47, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 403d4b	 Bytes: 5
  %loadMem_403d4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d4b = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d4b)
  store %struct.Memory* %call_403d4b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403d50	 Bytes: 4
  %loadMem_403d50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d50 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d50)
  store %struct.Memory* %call_403d50, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rsi	 RIP: 403d54	 Bytes: 4
  %loadMem_403d54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d54 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d54)
  store %struct.Memory* %call_403d54, %struct.Memory** %MEMORY

  ; Code: subsd (%rdx,%rsi,8), %xmm0	 RIP: 403d58	 Bytes: 5
  %loadMem_403d58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d58 = call %struct.Memory* @routine_subsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d58)
  store %struct.Memory* %call_403d58, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x88(%rbp)	 RIP: 403d5d	 Bytes: 8
  %loadMem_403d5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d5d = call %struct.Memory* @routine_movsd__xmm0__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d5d)
  store %struct.Memory* %call_403d5d, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403d65	 Bytes: 4
  %loadMem_403d65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d65 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d65)
  store %struct.Memory* %call_403d65, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 403d69	 Bytes: 3
  %loadMem_403d69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d69 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d69)
  store %struct.Memory* %call_403d69, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 403d6c	 Bytes: 3
  %loadMem_403d6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d6c = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d6c)
  store %struct.Memory* %call_403d6c, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 403d6f	 Bytes: 3
  %loadMem_403d6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d6f = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d6f)
  store %struct.Memory* %call_403d6f, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 403d72	 Bytes: 5
  %loadMem_403d72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d72 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d72)
  store %struct.Memory* %call_403d72, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403d77	 Bytes: 4
  %loadMem_403d77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d77 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d77)
  store %struct.Memory* %call_403d77, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %ecx	 RIP: 403d7b	 Bytes: 3
  %loadMem_403d7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d7b = call %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d7b)
  store %struct.Memory* %call_403d7b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 403d7e	 Bytes: 3
  %loadMem_403d7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d7e = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d7e)
  store %struct.Memory* %call_403d7e, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 403d81	 Bytes: 3
  %loadMem_403d81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d81 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d81)
  store %struct.Memory* %call_403d81, %struct.Memory** %MEMORY

  ; Code: subsd (%rdx,%rsi,8), %xmm0	 RIP: 403d84	 Bytes: 5
  %loadMem_403d84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d84 = call %struct.Memory* @routine_subsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d84)
  store %struct.Memory* %call_403d84, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x90(%rbp)	 RIP: 403d89	 Bytes: 8
  %loadMem_403d89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d89 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x90__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d89)
  store %struct.Memory* %call_403d89, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403d91	 Bytes: 4
  %loadMem_403d91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d91 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d91)
  store %struct.Memory* %call_403d91, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rsi	 RIP: 403d95	 Bytes: 4
  %loadMem_403d95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d95 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d95)
  store %struct.Memory* %call_403d95, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 403d99	 Bytes: 5
  %loadMem_403d99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d99 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d99)
  store %struct.Memory* %call_403d99, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403d9e	 Bytes: 4
  %loadMem_403d9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d9e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d9e)
  store %struct.Memory* %call_403d9e, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rsi	 RIP: 403da2	 Bytes: 4
  %loadMem_403da2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403da2 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403da2)
  store %struct.Memory* %call_403da2, %struct.Memory** %MEMORY

  ; Code: addsd (%rdx,%rsi,8), %xmm0	 RIP: 403da6	 Bytes: 5
  %loadMem_403da6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403da6 = call %struct.Memory* @routine_addsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403da6)
  store %struct.Memory* %call_403da6, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x98(%rbp)	 RIP: 403dab	 Bytes: 8
  %loadMem_403dab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403dab = call %struct.Memory* @routine_movsd__xmm0__MINUS0x98__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403dab)
  store %struct.Memory* %call_403dab, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403db3	 Bytes: 4
  %loadMem_403db3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403db3 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403db3)
  store %struct.Memory* %call_403db3, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 403db7	 Bytes: 3
  %loadMem_403db7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403db7 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403db7)
  store %struct.Memory* %call_403db7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 403dba	 Bytes: 3
  %loadMem_403dba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403dba = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403dba)
  store %struct.Memory* %call_403dba, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 403dbd	 Bytes: 3
  %loadMem_403dbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403dbd = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403dbd)
  store %struct.Memory* %call_403dbd, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 403dc0	 Bytes: 5
  %loadMem_403dc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403dc0 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403dc0)
  store %struct.Memory* %call_403dc0, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403dc5	 Bytes: 4
  %loadMem_403dc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403dc5 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403dc5)
  store %struct.Memory* %call_403dc5, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 403dc9	 Bytes: 3
  %loadMem_403dc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403dc9 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403dc9)
  store %struct.Memory* %call_403dc9, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 403dcc	 Bytes: 3
  %loadMem_403dcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403dcc = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403dcc)
  store %struct.Memory* %call_403dcc, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 403dcf	 Bytes: 3
  %loadMem_403dcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403dcf = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403dcf)
  store %struct.Memory* %call_403dcf, %struct.Memory** %MEMORY

  ; Code: addsd (%rdx,%rsi,8), %xmm0	 RIP: 403dd2	 Bytes: 5
  %loadMem_403dd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403dd2 = call %struct.Memory* @routine_addsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403dd2)
  store %struct.Memory* %call_403dd2, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0xa0(%rbp)	 RIP: 403dd7	 Bytes: 8
  %loadMem_403dd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403dd7 = call %struct.Memory* @routine_movsd__xmm0__MINUS0xa0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403dd7)
  store %struct.Memory* %call_403dd7, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403ddf	 Bytes: 4
  %loadMem_403ddf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ddf = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ddf)
  store %struct.Memory* %call_403ddf, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rsi	 RIP: 403de3	 Bytes: 4
  %loadMem_403de3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403de3 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403de3)
  store %struct.Memory* %call_403de3, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 403de7	 Bytes: 5
  %loadMem_403de7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403de7 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403de7)
  store %struct.Memory* %call_403de7, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403dec	 Bytes: 4
  %loadMem_403dec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403dec = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403dec)
  store %struct.Memory* %call_403dec, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rsi	 RIP: 403df0	 Bytes: 4
  %loadMem_403df0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403df0 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403df0)
  store %struct.Memory* %call_403df0, %struct.Memory** %MEMORY

  ; Code: subsd (%rdx,%rsi,8), %xmm0	 RIP: 403df4	 Bytes: 5
  %loadMem_403df4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403df4 = call %struct.Memory* @routine_subsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403df4)
  store %struct.Memory* %call_403df4, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0xa8(%rbp)	 RIP: 403df9	 Bytes: 8
  %loadMem_403df9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403df9 = call %struct.Memory* @routine_movsd__xmm0__MINUS0xa8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403df9)
  store %struct.Memory* %call_403df9, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403e01	 Bytes: 4
  %loadMem_403e01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e01 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e01)
  store %struct.Memory* %call_403e01, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 403e05	 Bytes: 3
  %loadMem_403e05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e05 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e05)
  store %struct.Memory* %call_403e05, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 403e08	 Bytes: 3
  %loadMem_403e08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e08 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e08)
  store %struct.Memory* %call_403e08, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 403e0b	 Bytes: 3
  %loadMem_403e0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e0b = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e0b)
  store %struct.Memory* %call_403e0b, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 403e0e	 Bytes: 5
  %loadMem_403e0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e0e = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e0e)
  store %struct.Memory* %call_403e0e, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403e13	 Bytes: 4
  %loadMem_403e13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e13 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e13)
  store %struct.Memory* %call_403e13, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 403e17	 Bytes: 3
  %loadMem_403e17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e17 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e17)
  store %struct.Memory* %call_403e17, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 403e1a	 Bytes: 3
  %loadMem_403e1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e1a = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e1a)
  store %struct.Memory* %call_403e1a, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 403e1d	 Bytes: 3
  %loadMem_403e1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e1d = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e1d)
  store %struct.Memory* %call_403e1d, %struct.Memory** %MEMORY

  ; Code: subsd (%rdx,%rsi,8), %xmm0	 RIP: 403e20	 Bytes: 5
  %loadMem_403e20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e20 = call %struct.Memory* @routine_subsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e20)
  store %struct.Memory* %call_403e20, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0xb0(%rbp)	 RIP: 403e25	 Bytes: 8
  %loadMem_403e25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e25 = call %struct.Memory* @routine_movsd__xmm0__MINUS0xb0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e25)
  store %struct.Memory* %call_403e25, %struct.Memory** %MEMORY

  ; Code: movsd -0x78(%rbp), %xmm0	 RIP: 403e2d	 Bytes: 5
  %loadMem_403e2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e2d = call %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e2d)
  store %struct.Memory* %call_403e2d, %struct.Memory** %MEMORY

  ; Code: addsd -0x98(%rbp), %xmm0	 RIP: 403e32	 Bytes: 8
  %loadMem_403e32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e32 = call %struct.Memory* @routine_addsd_MINUS0x98__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e32)
  store %struct.Memory* %call_403e32, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403e3a	 Bytes: 4
  %loadMem_403e3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e3a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e3a)
  store %struct.Memory* %call_403e3a, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rsi	 RIP: 403e3e	 Bytes: 4
  %loadMem_403e3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e3e = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e3e)
  store %struct.Memory* %call_403e3e, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rdx,%rsi,8)	 RIP: 403e42	 Bytes: 5
  %loadMem_403e42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e42 = call %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e42)
  store %struct.Memory* %call_403e42, %struct.Memory** %MEMORY

  ; Code: movsd -0x80(%rbp), %xmm0	 RIP: 403e47	 Bytes: 5
  %loadMem_403e47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e47 = call %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e47)
  store %struct.Memory* %call_403e47, %struct.Memory** %MEMORY

  ; Code: addsd -0xa0(%rbp), %xmm0	 RIP: 403e4c	 Bytes: 8
  %loadMem_403e4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e4c = call %struct.Memory* @routine_addsd_MINUS0xa0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e4c)
  store %struct.Memory* %call_403e4c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403e54	 Bytes: 4
  %loadMem_403e54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e54 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e54)
  store %struct.Memory* %call_403e54, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 403e58	 Bytes: 3
  %loadMem_403e58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e58 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e58)
  store %struct.Memory* %call_403e58, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 403e5b	 Bytes: 3
  %loadMem_403e5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e5b = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e5b)
  store %struct.Memory* %call_403e5b, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 403e5e	 Bytes: 3
  %loadMem_403e5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e5e = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e5e)
  store %struct.Memory* %call_403e5e, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rdx,%rsi,8)	 RIP: 403e61	 Bytes: 5
  %loadMem_403e61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e61 = call %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e61)
  store %struct.Memory* %call_403e61, %struct.Memory** %MEMORY

  ; Code: movsd -0x98(%rbp), %xmm0	 RIP: 403e66	 Bytes: 8
  %loadMem_403e66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e66 = call %struct.Memory* @routine_movsd_MINUS0x98__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e66)
  store %struct.Memory* %call_403e66, %struct.Memory** %MEMORY

  ; Code: movsd -0x78(%rbp), %xmm1	 RIP: 403e6e	 Bytes: 5
  %loadMem_403e6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e6e = call %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e6e)
  store %struct.Memory* %call_403e6e, %struct.Memory** %MEMORY

  ; Code: subsd %xmm0, %xmm1	 RIP: 403e73	 Bytes: 4
  %loadMem_403e73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e73 = call %struct.Memory* @routine_subsd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e73)
  store %struct.Memory* %call_403e73, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x78(%rbp)	 RIP: 403e77	 Bytes: 5
  %loadMem_403e77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e77 = call %struct.Memory* @routine_movsd__xmm1__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e77)
  store %struct.Memory* %call_403e77, %struct.Memory** %MEMORY

  ; Code: movsd -0xa0(%rbp), %xmm0	 RIP: 403e7c	 Bytes: 8
  %loadMem_403e7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e7c = call %struct.Memory* @routine_movsd_MINUS0xa0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e7c)
  store %struct.Memory* %call_403e7c, %struct.Memory** %MEMORY

  ; Code: movsd -0x80(%rbp), %xmm1	 RIP: 403e84	 Bytes: 5
  %loadMem_403e84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e84 = call %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e84)
  store %struct.Memory* %call_403e84, %struct.Memory** %MEMORY

  ; Code: subsd %xmm0, %xmm1	 RIP: 403e89	 Bytes: 4
  %loadMem_403e89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e89 = call %struct.Memory* @routine_subsd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e89)
  store %struct.Memory* %call_403e89, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x80(%rbp)	 RIP: 403e8d	 Bytes: 5
  %loadMem_403e8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e8d = call %struct.Memory* @routine_movsd__xmm1__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e8d)
  store %struct.Memory* %call_403e8d, %struct.Memory** %MEMORY

  ; Code: movsd -0x60(%rbp), %xmm0	 RIP: 403e92	 Bytes: 5
  %loadMem_403e92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e92 = call %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e92)
  store %struct.Memory* %call_403e92, %struct.Memory** %MEMORY

  ; Code: movq %xmm0, %rdx	 RIP: 403e97	 Bytes: 5
  %loadMem_403e97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e97 = call %struct.Memory* @routine_movq__xmm0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e97)
  store %struct.Memory* %call_403e97, %struct.Memory** %MEMORY

  ; Code: xorq %rax, %rdx	 RIP: 403e9c	 Bytes: 3
  %loadMem_403e9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e9c = call %struct.Memory* @routine_xorq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e9c)
  store %struct.Memory* %call_403e9c, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %xmm0	 RIP: 403e9f	 Bytes: 5
  %loadMem_403e9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e9f = call %struct.Memory* @routine_movq__rdx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e9f)
  store %struct.Memory* %call_403e9f, %struct.Memory** %MEMORY

  ; Code: mulsd -0x78(%rbp), %xmm0	 RIP: 403ea4	 Bytes: 5
  %loadMem_403ea4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ea4 = call %struct.Memory* @routine_mulsd_MINUS0x78__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ea4)
  store %struct.Memory* %call_403ea4, %struct.Memory** %MEMORY

  ; Code: movsd -0x58(%rbp), %xmm1	 RIP: 403ea9	 Bytes: 5
  %loadMem_403ea9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ea9 = call %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ea9)
  store %struct.Memory* %call_403ea9, %struct.Memory** %MEMORY

  ; Code: mulsd -0x80(%rbp), %xmm1	 RIP: 403eae	 Bytes: 5
  %loadMem_403eae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403eae = call %struct.Memory* @routine_mulsd_MINUS0x80__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403eae)
  store %struct.Memory* %call_403eae, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 403eb3	 Bytes: 4
  %loadMem_403eb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403eb3 = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403eb3)
  store %struct.Memory* %call_403eb3, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403eb7	 Bytes: 4
  %loadMem_403eb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403eb7 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403eb7)
  store %struct.Memory* %call_403eb7, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rsi	 RIP: 403ebb	 Bytes: 4
  %loadMem_403ebb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ebb = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ebb)
  store %struct.Memory* %call_403ebb, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rdx,%rsi,8)	 RIP: 403ebf	 Bytes: 5
  %loadMem_403ebf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ebf = call %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ebf)
  store %struct.Memory* %call_403ebf, %struct.Memory** %MEMORY

  ; Code: movsd -0x60(%rbp), %xmm0	 RIP: 403ec4	 Bytes: 5
  %loadMem_403ec4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ec4 = call %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ec4)
  store %struct.Memory* %call_403ec4, %struct.Memory** %MEMORY

  ; Code: movq %xmm0, %rdx	 RIP: 403ec9	 Bytes: 5
  %loadMem_403ec9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ec9 = call %struct.Memory* @routine_movq__xmm0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ec9)
  store %struct.Memory* %call_403ec9, %struct.Memory** %MEMORY

  ; Code: xorq %rax, %rdx	 RIP: 403ece	 Bytes: 3
  %loadMem_403ece = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ece = call %struct.Memory* @routine_xorq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ece)
  store %struct.Memory* %call_403ece, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %xmm0	 RIP: 403ed1	 Bytes: 5
  %loadMem_403ed1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ed1 = call %struct.Memory* @routine_movq__rdx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ed1)
  store %struct.Memory* %call_403ed1, %struct.Memory** %MEMORY

  ; Code: mulsd -0x80(%rbp), %xmm0	 RIP: 403ed6	 Bytes: 5
  %loadMem_403ed6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ed6 = call %struct.Memory* @routine_mulsd_MINUS0x80__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ed6)
  store %struct.Memory* %call_403ed6, %struct.Memory** %MEMORY

  ; Code: movsd -0x58(%rbp), %xmm1	 RIP: 403edb	 Bytes: 5
  %loadMem_403edb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403edb = call %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403edb)
  store %struct.Memory* %call_403edb, %struct.Memory** %MEMORY

  ; Code: mulsd -0x78(%rbp), %xmm1	 RIP: 403ee0	 Bytes: 5
  %loadMem_403ee0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ee0 = call %struct.Memory* @routine_mulsd_MINUS0x78__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ee0)
  store %struct.Memory* %call_403ee0, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 403ee5	 Bytes: 4
  %loadMem_403ee5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ee5 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ee5)
  store %struct.Memory* %call_403ee5, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 403ee9	 Bytes: 4
  %loadMem_403ee9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ee9 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ee9)
  store %struct.Memory* %call_403ee9, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 403eed	 Bytes: 3
  %loadMem_403eed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403eed = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403eed)
  store %struct.Memory* %call_403eed, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 403ef0	 Bytes: 3
  %loadMem_403ef0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ef0 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ef0)
  store %struct.Memory* %call_403ef0, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 403ef3	 Bytes: 3
  %loadMem_403ef3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ef3 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ef3)
  store %struct.Memory* %call_403ef3, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rdx,8)	 RIP: 403ef6	 Bytes: 5
  %loadMem_403ef6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ef6 = call %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ef6)
  store %struct.Memory* %call_403ef6, %struct.Memory** %MEMORY

  ; Code: movsd -0x88(%rbp), %xmm0	 RIP: 403efb	 Bytes: 8
  %loadMem_403efb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403efb = call %struct.Memory* @routine_movsd_MINUS0x88__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403efb)
  store %struct.Memory* %call_403efb, %struct.Memory** %MEMORY

  ; Code: subsd -0xb0(%rbp), %xmm0	 RIP: 403f03	 Bytes: 8
  %loadMem_403f03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f03 = call %struct.Memory* @routine_subsd_MINUS0xb0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f03)
  store %struct.Memory* %call_403f03, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x78(%rbp)	 RIP: 403f0b	 Bytes: 5
  %loadMem_403f0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f0b = call %struct.Memory* @routine_movsd__xmm0__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f0b)
  store %struct.Memory* %call_403f0b, %struct.Memory** %MEMORY

  ; Code: movsd -0x90(%rbp), %xmm0	 RIP: 403f10	 Bytes: 8
  %loadMem_403f10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f10 = call %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f10)
  store %struct.Memory* %call_403f10, %struct.Memory** %MEMORY

  ; Code: addsd -0xa8(%rbp), %xmm0	 RIP: 403f18	 Bytes: 8
  %loadMem_403f18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f18 = call %struct.Memory* @routine_addsd_MINUS0xa8__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f18)
  store %struct.Memory* %call_403f18, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x80(%rbp)	 RIP: 403f20	 Bytes: 5
  %loadMem_403f20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f20 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f20)
  store %struct.Memory* %call_403f20, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm0	 RIP: 403f25	 Bytes: 5
  %loadMem_403f25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f25 = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f25)
  store %struct.Memory* %call_403f25, %struct.Memory** %MEMORY

  ; Code: mulsd -0x78(%rbp), %xmm0	 RIP: 403f2a	 Bytes: 5
  %loadMem_403f2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f2a = call %struct.Memory* @routine_mulsd_MINUS0x78__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f2a)
  store %struct.Memory* %call_403f2a, %struct.Memory** %MEMORY

  ; Code: movsd -0x50(%rbp), %xmm1	 RIP: 403f2f	 Bytes: 5
  %loadMem_403f2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f2f = call %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f2f)
  store %struct.Memory* %call_403f2f, %struct.Memory** %MEMORY

  ; Code: mulsd -0x80(%rbp), %xmm1	 RIP: 403f34	 Bytes: 5
  %loadMem_403f34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f34 = call %struct.Memory* @routine_mulsd_MINUS0x80__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f34)
  store %struct.Memory* %call_403f34, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 403f39	 Bytes: 4
  %loadMem_403f39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f39 = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f39)
  store %struct.Memory* %call_403f39, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 403f3d	 Bytes: 4
  %loadMem_403f3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f3d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f3d)
  store %struct.Memory* %call_403f3d, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 403f41	 Bytes: 4
  %loadMem_403f41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f41 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f41)
  store %struct.Memory* %call_403f41, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rdx,8)	 RIP: 403f45	 Bytes: 5
  %loadMem_403f45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f45 = call %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f45)
  store %struct.Memory* %call_403f45, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm0	 RIP: 403f4a	 Bytes: 5
  %loadMem_403f4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f4a = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f4a)
  store %struct.Memory* %call_403f4a, %struct.Memory** %MEMORY

  ; Code: mulsd -0x80(%rbp), %xmm0	 RIP: 403f4f	 Bytes: 5
  %loadMem_403f4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f4f = call %struct.Memory* @routine_mulsd_MINUS0x80__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f4f)
  store %struct.Memory* %call_403f4f, %struct.Memory** %MEMORY

  ; Code: movsd -0x50(%rbp), %xmm1	 RIP: 403f54	 Bytes: 5
  %loadMem_403f54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f54 = call %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f54)
  store %struct.Memory* %call_403f54, %struct.Memory** %MEMORY

  ; Code: mulsd -0x78(%rbp), %xmm1	 RIP: 403f59	 Bytes: 5
  %loadMem_403f59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f59 = call %struct.Memory* @routine_mulsd_MINUS0x78__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f59)
  store %struct.Memory* %call_403f59, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 403f5e	 Bytes: 4
  %loadMem_403f5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f5e = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f5e)
  store %struct.Memory* %call_403f5e, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 403f62	 Bytes: 4
  %loadMem_403f62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f62 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f62)
  store %struct.Memory* %call_403f62, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %ecx	 RIP: 403f66	 Bytes: 3
  %loadMem_403f66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f66 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f66)
  store %struct.Memory* %call_403f66, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 403f69	 Bytes: 3
  %loadMem_403f69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f69 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f69)
  store %struct.Memory* %call_403f69, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 403f6c	 Bytes: 3
  %loadMem_403f6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f6c = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f6c)
  store %struct.Memory* %call_403f6c, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rdx,8)	 RIP: 403f6f	 Bytes: 5
  %loadMem_403f6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f6f = call %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f6f)
  store %struct.Memory* %call_403f6f, %struct.Memory** %MEMORY

  ; Code: movsd -0x88(%rbp), %xmm0	 RIP: 403f74	 Bytes: 8
  %loadMem_403f74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f74 = call %struct.Memory* @routine_movsd_MINUS0x88__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f74)
  store %struct.Memory* %call_403f74, %struct.Memory** %MEMORY

  ; Code: addsd -0xb0(%rbp), %xmm0	 RIP: 403f7c	 Bytes: 8
  %loadMem_403f7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f7c = call %struct.Memory* @routine_addsd_MINUS0xb0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f7c)
  store %struct.Memory* %call_403f7c, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x78(%rbp)	 RIP: 403f84	 Bytes: 5
  %loadMem_403f84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f84 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f84)
  store %struct.Memory* %call_403f84, %struct.Memory** %MEMORY

  ; Code: movsd -0x90(%rbp), %xmm0	 RIP: 403f89	 Bytes: 8
  %loadMem_403f89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f89 = call %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f89)
  store %struct.Memory* %call_403f89, %struct.Memory** %MEMORY

  ; Code: subsd -0xa8(%rbp), %xmm0	 RIP: 403f91	 Bytes: 8
  %loadMem_403f91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f91 = call %struct.Memory* @routine_subsd_MINUS0xa8__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f91)
  store %struct.Memory* %call_403f91, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x80(%rbp)	 RIP: 403f99	 Bytes: 5
  %loadMem_403f99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f99 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f99)
  store %struct.Memory* %call_403f99, %struct.Memory** %MEMORY

  ; Code: movsd -0x68(%rbp), %xmm0	 RIP: 403f9e	 Bytes: 5
  %loadMem_403f9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f9e = call %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f9e)
  store %struct.Memory* %call_403f9e, %struct.Memory** %MEMORY

  ; Code: mulsd -0x78(%rbp), %xmm0	 RIP: 403fa3	 Bytes: 5
  %loadMem_403fa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fa3 = call %struct.Memory* @routine_mulsd_MINUS0x78__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fa3)
  store %struct.Memory* %call_403fa3, %struct.Memory** %MEMORY

  ; Code: movsd -0x70(%rbp), %xmm1	 RIP: 403fa8	 Bytes: 5
  %loadMem_403fa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fa8 = call %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fa8)
  store %struct.Memory* %call_403fa8, %struct.Memory** %MEMORY

  ; Code: mulsd -0x80(%rbp), %xmm1	 RIP: 403fad	 Bytes: 5
  %loadMem_403fad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fad = call %struct.Memory* @routine_mulsd_MINUS0x80__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fad)
  store %struct.Memory* %call_403fad, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 403fb2	 Bytes: 4
  %loadMem_403fb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fb2 = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fb2)
  store %struct.Memory* %call_403fb2, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 403fb6	 Bytes: 4
  %loadMem_403fb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fb6 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fb6)
  store %struct.Memory* %call_403fb6, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 403fba	 Bytes: 4
  %loadMem_403fba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fba = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fba)
  store %struct.Memory* %call_403fba, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rdx,8)	 RIP: 403fbe	 Bytes: 5
  %loadMem_403fbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fbe = call %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fbe)
  store %struct.Memory* %call_403fbe, %struct.Memory** %MEMORY

  ; Code: movsd -0x68(%rbp), %xmm0	 RIP: 403fc3	 Bytes: 5
  %loadMem_403fc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fc3 = call %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fc3)
  store %struct.Memory* %call_403fc3, %struct.Memory** %MEMORY

  ; Code: mulsd -0x80(%rbp), %xmm0	 RIP: 403fc8	 Bytes: 5
  %loadMem_403fc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fc8 = call %struct.Memory* @routine_mulsd_MINUS0x80__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fc8)
  store %struct.Memory* %call_403fc8, %struct.Memory** %MEMORY

  ; Code: movsd -0x70(%rbp), %xmm1	 RIP: 403fcd	 Bytes: 5
  %loadMem_403fcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fcd = call %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fcd)
  store %struct.Memory* %call_403fcd, %struct.Memory** %MEMORY

  ; Code: mulsd -0x78(%rbp), %xmm1	 RIP: 403fd2	 Bytes: 5
  %loadMem_403fd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fd2 = call %struct.Memory* @routine_mulsd_MINUS0x78__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fd2)
  store %struct.Memory* %call_403fd2, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 403fd7	 Bytes: 4
  %loadMem_403fd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fd7 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fd7)
  store %struct.Memory* %call_403fd7, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 403fdb	 Bytes: 4
  %loadMem_403fdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fdb = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fdb)
  store %struct.Memory* %call_403fdb, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 403fdf	 Bytes: 3
  %loadMem_403fdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fdf = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fdf)
  store %struct.Memory* %call_403fdf, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 403fe2	 Bytes: 3
  %loadMem_403fe2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fe2 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fe2)
  store %struct.Memory* %call_403fe2, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 403fe5	 Bytes: 3
  %loadMem_403fe5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fe5 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fe5)
  store %struct.Memory* %call_403fe5, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rdx,8)	 RIP: 403fe8	 Bytes: 5
  %loadMem_403fe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fe8 = call %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fe8)
  store %struct.Memory* %call_403fe8, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 403fed	 Bytes: 3
  %loadMem_403fed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fed = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fed)
  store %struct.Memory* %call_403fed, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %eax	 RIP: 403ff0	 Bytes: 3
  %loadMem_403ff0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ff0 = call %struct.Memory* @routine_addl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ff0)
  store %struct.Memory* %call_403ff0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 403ff3	 Bytes: 3
  %loadMem_403ff3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ff3 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ff3)
  store %struct.Memory* %call_403ff3, %struct.Memory** %MEMORY

  ; Code: jmpq .L_403cc0	 RIP: 403ff6	 Bytes: 5
  %loadMem_403ff6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ff6 = call %struct.Memory* @routine_jmpq_.L_403cc0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ff6, i64 -822, i64 5)
  store %struct.Memory* %call_403ff6, %struct.Memory** %MEMORY

  br label %block_.L_403cc0

  ; Code: .L_403ffb:	 RIP: 403ffb	 Bytes: 0
block_.L_403ffb:

  ; Code: jmpq .L_404000	 RIP: 403ffb	 Bytes: 5
  %loadMem_403ffb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ffb = call %struct.Memory* @routine_jmpq_.L_404000(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ffb, i64 5, i64 5)
  store %struct.Memory* %call_403ffb, %struct.Memory** %MEMORY

  br label %block_.L_404000

  ; Code: .L_404000:	 RIP: 404000	 Bytes: 0
block_.L_404000:

  ; Code: movl -0x3c(%rbp), %eax	 RIP: 404000	 Bytes: 3
  %loadMem_404000 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_404000 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_404000)
  store %struct.Memory* %call_404000, %struct.Memory** %MEMORY

  ; Code: addl -0x2c(%rbp), %eax	 RIP: 404003	 Bytes: 3
  %loadMem_404003 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_404003 = call %struct.Memory* @routine_addl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_404003)
  store %struct.Memory* %call_404003, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 404006	 Bytes: 3
  %loadMem_404006 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_404006 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_404006)
  store %struct.Memory* %call_404006, %struct.Memory** %MEMORY

  ; Code: jmpq .L_403893	 RIP: 404009	 Bytes: 5
  %loadMem_404009 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_404009 = call %struct.Memory* @routine_jmpq_.L_403893(%struct.State* %0, i64  0, %struct.Memory* %loadMem_404009, i64 -1910, i64 5)
  store %struct.Memory* %call_404009, %struct.Memory** %MEMORY

  br label %block_.L_403893

  ; Code: .L_40400e:	 RIP: 40400e	 Bytes: 0
block_.L_40400e:

  ; Code: addq $0x30, %rsp	 RIP: 40400e	 Bytes: 4
  %loadMem_40400e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40400e = call %struct.Memory* @routine_addq__0x30___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40400e)
  store %struct.Memory* %call_40400e, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 404012	 Bytes: 1
  %loadMem_404012 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_404012 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_404012)
  store %struct.Memory* %call_404012, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 404013	 Bytes: 1
  %loadMem_404013 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_404013 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_404013)
  store %struct.Memory* %call_404013, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_404013
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

define %struct.Memory* @routine_subq__0x30___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 48)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 8
  %14 = load i32, i32* %ESI
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

define %struct.Memory* @routine_movq__rdx__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rcx__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl__esi__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 56
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

define %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 8
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

define %struct.Memory* @routine_jge_.L_4035ad(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addl_MINUS0x8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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




define %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 36
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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




define %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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

define %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %14, i64 %18)
  ret %struct.Memory* %21
}




define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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

define %struct.Memory* @routine_addsd___rcx__rdx_8____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %RDX
  %18 = mul i64 %17, 8
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %14, i8* %15, i64 %19)
  ret %struct.Memory* %22
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i8* nocapture readonly) #7 {
  %5 = bitcast i8* %3 to double*
  %6 = load double, double* %5, align 1
  %7 = inttoptr i64 %2 to double*
  store double %6, double* %7
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x78__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 120
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq__eax___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}














define %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 128
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
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

define %struct.Memory* @routine_subsd___rcx__rdx_8____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %RDX
  %18 = mul i64 %17, 8
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %14, i8* %15, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movsd__xmm0__MINUS0x88__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 136
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}






















define %struct.Memory* @routine_movsd__xmm0__MINUS0x90__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 144
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movsd__xmm0__MINUS0x98__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 152
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
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








define %struct.Memory* @routine_movsd__xmm0__MINUS0xa0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 160
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}














define %struct.Memory* @routine_movsd__xmm0__MINUS0xa8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 168
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}






















define %struct.Memory* @routine_movsd__xmm0__MINUS0xb0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 176
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addsd_MINUS0x98__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 152
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %RDX
  %16 = mul i64 %15, 8
  %17 = add i64 %16, %14
  %18 = bitcast %union.vec128_t* %XMM0 to i8*
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %17, i8* %18)
  ret %struct.Memory* %21
}


define %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addsd_MINUS0xa0__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 160
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}














define %struct.Memory* @routine_subsd_MINUS0x98__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 152
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}










define %struct.Memory* @routine_subsd_MINUS0xa0__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 160
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}












define %struct.Memory* @routine_movsd_MINUS0x88__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_subsd_MINUS0xb0__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 176
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addsd_MINUS0xa8__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 168
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}














define %struct.Memory* @routine_addsd_MINUS0xb0__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 176
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}










define %struct.Memory* @routine_subsd_MINUS0xa8__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 168
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}














define %struct.Memory* @routine_addl__0x2___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 2)
  ret %struct.Memory* %12
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_403356(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movsd_0x10__rax____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 72
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x38__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 28
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x38__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 56
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 {
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

define %struct.Memory* @routine_cmpl__ecx___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %ECX = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_40387d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




























































































































































































define %struct.Memory* @routine_movsd_MINUS0xa0__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 160
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_subsd_MINUS0x80__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 128
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}


































define %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_subsd_MINUS0x80__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 128
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = bitcast i8* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = bitcast i8* %4 to double*
  %12 = load double, double* %11, align 1
  %13 = fmul double %7, %12
  %14 = bitcast i8* %2 to double*
  store double %13, double* %14, align 1
  %15 = getelementptr inbounds i8, i8* %2, i64 8
  %16 = bitcast i8* %15 to i64*
  store i64 %10, i64* %16, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}












define %struct.Memory* @routine_addsd_MINUS0x80__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 128
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}














define %struct.Memory* @routine_movsd_MINUS0xb0__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 176
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addsd_MINUS0x88__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 136
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movsd_MINUS0xa8__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_subsd_MINUS0x90__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 144
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_subsd_MINUS0x78__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 120
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}














define %struct.Memory* @routine_addsd_MINUS0x78__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 120
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}




















define %struct.Memory* @routine_jmpq_.L_4035c1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_shll__0x1___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 1)
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


define %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 4
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_40400e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movsd_0x849__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x849__rip__type* @G_0x849__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
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




define %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 52
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd___rcx__rdx_8____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %14, i64 %18)
  ret %struct.Memory* %21
}


define %struct.Memory* @routine_movsd__xmm1__MINUS0x58__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 88
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_movsd__xmm1__MINUS0x60__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 96
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movsd__xmm1__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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




define %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movsd__xmm1__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 80
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L6MOVxPSI3VnWI8vec128_tE2VnIS2_EEEP6MemoryS7_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly) #0 {
  %5 = bitcast i8* %3 to <2 x i32>*
  %6 = load <2 x i32>, <2 x i32>* %5, align 1
  %7 = getelementptr inbounds i8, i8* %3, i64 8
  %8 = bitcast i8* %7 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = extractelement <2 x i32> %6, i32 0
  %11 = bitcast i8* %2 to i32*
  store i32 %10, i32* %11, align 1
  %12 = extractelement <2 x i32> %6, i32 1
  %13 = getelementptr inbounds i8, i8* %2, i64 4
  %14 = bitcast i8* %13 to i32*
  store i32 %12, i32* %14, align 1
  %15 = extractelement <2 x i32> %9, i32 0
  %16 = getelementptr inbounds i8, i8* %2, i64 8
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %9, i32 1
  %19 = getelementptr inbounds i8, i8* %2, i64 12
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movaps__xmm0___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6MOVxPSI3VnWI8vec128_tE2VnIS2_EEEP6MemoryS7_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
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

define %struct.Memory* @routine_mulsd_MINUS0x60__rbp____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 96
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_mulsd_MINUS0x50__rbp____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 80
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_subsd__xmm2___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM2 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movsd__xmm1__MINUS0x68__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 104
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_mulsd_MINUS0x60__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 96
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_mulsd_MINUS0x48__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 72
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_subsd_MINUS0x50__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 80
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movsd__xmm0__MINUS0x70__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 112
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_addl_MINUS0x2c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 44
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jge_.L_403c52(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




























































































































































































define %struct.Memory* @routine_movsd_MINUS0x98__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_subsd__xmm0___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movsd__xmm1__MINUS0x78__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 120
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movsd__xmm1__MINUS0x80__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 128
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_mulsd_MINUS0x78__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 120
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_mulsd_MINUS0x80__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 128
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}










define %struct.Memory* @routine_mulsd_MINUS0x80__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 128
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_mulsd_MINUS0x78__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 120
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}




























define %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}












































define %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}






































define %struct.Memory* @routine_jmpq_.L_403940(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movsd_0x496__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x496__rip__type* @G_0x496__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movsd___rax__rdx_8____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %14, i64 %18)
  ret %struct.Memory* %21
}








define %struct.Memory* @routine_addl__0x3___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 3)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_mulsd_MINUS0x58__rbp____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 88
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_mulsd_MINUS0x58__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 88
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_movl_MINUS0x2c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_addl_MINUS0x38__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 56
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_addl__edx___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RCX
  %13 = load i32, i32* %EDX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jge_.L_403ffb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x8000000000000000___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 -9223372036854775808)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x8__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 32
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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


define %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %14, i64 %18)
  ret %struct.Memory* %21
}




define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addsd___rdx__rsi_8____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %16 = load i64, i64* %RDX
  %17 = load i64, i64* %RSI
  %18 = mul i64 %17, 8
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %14, i8* %15, i64 %19)
  ret %struct.Memory* %22
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


define %struct.Memory* @routine_movslq__ecx___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


























define %struct.Memory* @routine_subsd___rdx__rsi_8____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %16 = load i64, i64* %RDX
  %17 = load i64, i64* %RSI
  %18 = mul i64 %17, 8
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %14, i8* %15, i64 %19)
  ret %struct.Memory* %22
}




























define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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






















































define %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %RSI
  %16 = mul i64 %15, 8
  %17 = add i64 %16, %14
  %18 = bitcast %union.vec128_t* %XMM0 to i8*
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %17, i8* %18)
  ret %struct.Memory* %21
}
































define %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4MOVQI4RVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i8* nocapture readonly) #0 {
  %5 = bitcast i8* %3 to i64*
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__xmm0___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 5
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4MOVQI4RVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i8* %11)
  ret %struct.Memory* %14
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = xor i64 %4, %3
  store i64 %6, i64* %2, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = trunc i64 %6 to i32
  %9 = and i32 %8, 255
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9) #22
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = icmp eq i64 %6, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i64 %6, 63
  %19 = trunc i64 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %22, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_xorq__rax___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4MOVQI3VnWI8vec128_tE3RVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = bitcast i8* %2 to i64*
  store i64 %3, i64* %5, align 1
  %6 = getelementptr inbounds i8, i8* %2, i64 8
  %7 = bitcast i8* %6 to i64*
  store i64 0, i64* %7, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rdx___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 5
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4MOVQI3VnWI8vec128_tE3RVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %12)
  ret %struct.Memory* %15
}




define %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
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








define %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %RDX
  %16 = mul i64 %15, 8
  %17 = add i64 %16, %14
  %18 = bitcast %union.vec128_t* %XMM0 to i8*
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %17, i8* %18)
  ret %struct.Memory* %21
}








































































































define %struct.Memory* @routine_jmpq_.L_403cc0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_404000(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_addl_MINUS0x2c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 44
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jmpq_.L_403893(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0x30___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 48)
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

